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
; shader hash: c08dd8c24413833706492aada39ba301
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
;   [160 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture    byte         r/o      T6     t15,space1     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %28 = fsub fast float %26, %15
  %29 = fsub fast float %27, %16
  %30 = call float @dx.op.unary.f32(i32 6, float %28)  ; FAbs(value)
  %31 = call float @dx.op.unary.f32(i32 6, float %29)  ; FAbs(value)
  %32 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %34 = fsub fast float %30, %32
  %35 = fsub fast float %31, %33
  %36 = fcmp fast ogt float %34, 0.000000e+00
  %37 = fcmp fast ogt float %35, 0.000000e+00
  %38 = or i1 %36, %37
  %39 = or i1 %24, %38
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %48 = fsub fast float %47, %43
  %49 = fcmp fast ogt float %48, 0.000000e+00
  %50 = fcmp fast olt float %48, 0.000000e+00
  %51 = zext i1 %49 to i32
  %52 = zext i1 %50 to i32
  %53 = sub nsw i32 %51, %52
  %54 = sitofp i32 %53 to float
  %55 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %56 = fsub fast float %55, %45
  %57 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %58 = fmul fast float %54, %57
  %59 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %60 = fsub fast float %47, %58
  %61 = fmul fast float %60, 0xBFF7154760000000
  %62 = call float @dx.op.unary.f32(i32 21, float %61)  ; Exp(value)
  %63 = fmul fast float %62, %59
  %64 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %65 = fadd fast float %63, -1.000000e+00
  %66 = fmul fast float %64, %65
  %67 = fadd fast float %66, 1.000000e+00
  %68 = fmul fast float %67, %18
  %69 = fmul fast float %67, %19
  %70 = fmul fast float %67, %20
  br i1 %39, label %71, label %93, !dx.controlflow.hints !36

; <label>:71                                      ; preds = %0
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = extractvalue %dx.types.ResRet.f32 %72, 1
  %75 = extractvalue %dx.types.ResRet.f32 %72, 2
  %76 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 36, float %76, float 3.225500e+04)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %77, float 3.225500e+04)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %78, float 3.225500e+04)  ; FMin(a,b)
  %82 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %83 = fmul fast float %82, %68
  %84 = fmul fast float %82, %69
  %85 = fmul fast float %82, %70
  %86 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %87 = fmul fast float %86, %79
  %88 = fmul fast float %86, %80
  %89 = fmul fast float %86, %81
  %90 = fadd fast float %87, %83
  %91 = fadd fast float %88, %84
  %92 = fadd fast float %89, %85
  br label %93

; <label>:93                                      ; preds = %71, %0
  %94 = phi float [ %90, %71 ], [ %68, %0 ]
  %95 = phi float [ %91, %71 ], [ %69, %0 ]
  %96 = phi float [ %92, %71 ], [ %70, %0 ]
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = fcmp fast ugt float %98, 0.000000e+00
  br i1 %105, label %106, label %156

; <label>:106                                     ; preds = %93
  %107 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %108 = fcmp fast ogt float %107, 0.000000e+00
  %109 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %113 = fadd fast float %13, -5.000000e-01
  %114 = fadd fast float %14, -5.000000e-01
  %115 = fmul fast float %112, %113
  %116 = fmul fast float %111, %114
  %117 = fadd fast float %115, %110
  %118 = fadd fast float %116, %109
  br i1 %108, label %119, label %126

; <label>:119                                     ; preds = %106
  %120 = fmul fast float %117, 5.000000e-01
  %121 = fmul fast float %118, 5.000000e-01
  %122 = fadd fast float %120, 5.000000e-01
  %123 = fadd fast float %121, 5.000000e-01
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %122, float %123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  br label %139

; <label>:126                                     ; preds = %106
  %127 = fsub fast float -0.000000e+00, %100
  %128 = fsub fast float -0.000000e+00, %101
  %129 = call float @dx.op.binary.f32(i32 35, float %117, float %127)  ; FMax(a,b)
  %130 = call float @dx.op.binary.f32(i32 35, float %118, float %128)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 36, float %129, float %100)  ; FMin(a,b)
  %132 = call float @dx.op.binary.f32(i32 36, float %130, float %101)  ; FMin(a,b)
  %133 = fsub fast float %117, %131
  %134 = fsub fast float %118, %132
  %135 = fmul fast float %133, %133
  %136 = fmul fast float %134, %134
  %137 = fadd fast float %136, %135
  %138 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  br label %139

; <label>:139                                     ; preds = %126, %119
  %140 = phi float [ %125, %119 ], [ %138, %126 ]
  %141 = fmul fast float %140, %103
  %142 = fadd fast float %141, %104
  %143 = call float @dx.op.unary.f32(i32 7, float %142)  ; Saturate(value)
  %144 = fmul fast float %143, %143
  %145 = fmul fast float %143, 2.000000e+00
  %146 = fsub fast float 3.000000e+00, %145
  %147 = fmul fast float %144, %146
  %148 = fsub fast float %147, %143
  %149 = fmul fast float %148, 0x3FE3333340000000
  %150 = fadd fast float %149, %143
  %151 = fmul fast float %150, %98
  %152 = fsub fast float 1.000000e+00, %151
  %153 = fmul fast float %152, %94
  %154 = fmul fast float %152, %95
  %155 = fmul fast float %152, %96
  br label %156

; <label>:156                                     ; preds = %139, %93
  %157 = phi float [ %153, %139 ], [ %94, %93 ]
  %158 = phi float [ %154, %139 ], [ %95, %93 ]
  %159 = phi float [ %155, %139 ], [ %96, %93 ]
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = fmul fast float %164, %41
  %176 = fmul fast float %169, %41
  %177 = fmul fast float %174, %41
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = fmul fast float %175, %179
  %181 = fmul fast float %176, %179
  %182 = fmul fast float %177, %179
  %183 = fmul fast float %180, 0x3FE413A920000000
  %184 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %181, float %183)  ; FMad(a,b,c)
  %185 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %182, float %184)  ; FMad(a,b,c)
  %186 = fmul fast float %180, 0x3FB1B089A0000000
  %187 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %181, float %186)  ; FMad(a,b,c)
  %188 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %182, float %187)  ; FMad(a,b,c)
  %189 = fmul fast float %180, 0x3F90CB2960000000
  %190 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %181, float %189)  ; FMad(a,b,c)
  %191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %182, float %190)  ; FMad(a,b,c)
  %192 = fmul fast float %185, 0x3F847AE140000000
  %193 = fmul fast float %188, 0x3F847AE140000000
  %194 = fmul fast float %191, 0x3F847AE140000000
  %195 = fcmp fast olt float %192, 0x3FDD7DBF40000000
  %196 = fmul fast float %185, 0x3F847AE120000000
  %197 = fadd fast float %196, 0xBFDD7DBF40000000
  %198 = fmul fast float %185, 0x3F92EEB5C0000000
  %199 = fadd fast float %198, 0xBFEB434340000000
  %200 = fmul fast float %199, %199
  %201 = fadd fast float %200, 1.000000e+00
  %202 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %203 = fmul fast float %202, 5.000000e-01
  %204 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %205 = fdiv fast float %197, %204
  %206 = fadd fast float %205, 0x3FDD7DBF40000000
  %207 = select i1 %195, float %192, float %206
  %208 = fcmp fast olt float %193, 0x3FDD7DBF40000000
  %209 = fmul fast float %188, 0x3F847AE120000000
  %210 = fadd fast float %209, 0xBFDD7DBF40000000
  %211 = fmul fast float %188, 0x3F92EEB5C0000000
  %212 = fadd fast float %211, 0xBFEB434340000000
  %213 = fmul fast float %212, %212
  %214 = fadd fast float %213, 1.000000e+00
  %215 = call float @dx.op.unary.f32(i32 23, float %214)  ; Log(value)
  %216 = fmul fast float %215, 5.000000e-01
  %217 = call float @dx.op.unary.f32(i32 21, float %216)  ; Exp(value)
  %218 = fdiv fast float %210, %217
  %219 = fadd fast float %218, 0x3FDD7DBF40000000
  %220 = select i1 %208, float %193, float %219
  %221 = fcmp fast olt float %194, 0x3FDD7DBF40000000
  %222 = fmul fast float %191, 0x3F847AE120000000
  %223 = fadd fast float %222, 0xBFDD7DBF40000000
  %224 = fmul fast float %191, 0x3F92EEB5C0000000
  %225 = fadd fast float %224, 0xBFEB434340000000
  %226 = fmul fast float %225, %225
  %227 = fadd fast float %226, 1.000000e+00
  %228 = call float @dx.op.unary.f32(i32 23, float %227)  ; Log(value)
  %229 = fmul fast float %228, 5.000000e-01
  %230 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %231 = fdiv fast float %223, %230
  %232 = fadd fast float %231, 0x3FDD7DBF40000000
  %233 = select i1 %221, float %194, float %232
  %234 = call float @dx.op.unary.f32(i32 23, float %207)  ; Log(value)
  %235 = call float @dx.op.unary.f32(i32 23, float %220)  ; Log(value)
  %236 = call float @dx.op.unary.f32(i32 23, float %233)  ; Log(value)
  %237 = fmul fast float %234, 0x3FC4640000000000
  %238 = fmul fast float %235, 0x3FC4640000000000
  %239 = fmul fast float %236, 0x3FC4640000000000
  %240 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %241 = call float @dx.op.unary.f32(i32 21, float %238)  ; Exp(value)
  %242 = call float @dx.op.unary.f32(i32 21, float %239)  ; Exp(value)
  %243 = fmul fast float %240, 0x40007674E0000000
  %244 = fmul fast float %241, 0x40007674E0000000
  %245 = fmul fast float %242, 0x40007674E0000000
  %246 = fadd fast float %243, 0xBFB9EDBF80000000
  %247 = fadd fast float %244, 0xBFB9EDBF80000000
  %248 = fadd fast float %245, 0xBFB9EDBF80000000
  %249 = fmul fast float %246, %240
  %250 = fmul fast float %247, %241
  %251 = fmul fast float %248, %242
  %252 = fadd fast float %249, 0x3F50DA3820000000
  %253 = fadd fast float %250, 0x3F50DA3820000000
  %254 = fadd fast float %251, 0x3F50DA3820000000
  %255 = fmul fast float %252, %240
  %256 = fmul fast float %253, %241
  %257 = fmul fast float %254, %242
  %258 = fadd fast float %255, 0x3E636EE7C0000000
  %259 = fadd fast float %256, 0x3E636EE7C0000000
  %260 = fadd fast float %257, 0x3E636EE7C0000000
  %261 = fadd fast float %240, 0x3FE8B9B460000000
  %262 = fadd fast float %241, 0x3FE8B9B460000000
  %263 = fadd fast float %242, 0x3FE8B9B460000000
  %264 = fmul fast float %261, %240
  %265 = fmul fast float %262, %241
  %266 = fmul fast float %263, %242
  %267 = fadd fast float %264, 0x3FC14EB140000000
  %268 = fadd fast float %265, 0x3FC14EB140000000
  %269 = fadd fast float %266, 0x3FC14EB140000000
  %270 = fmul fast float %267, %240
  %271 = fmul fast float %268, %241
  %272 = fmul fast float %269, %242
  %273 = fadd fast float %270, 0x3FA95B4680000000
  %274 = fadd fast float %271, 0x3FA95B4680000000
  %275 = fadd fast float %272, 0x3FA95B4680000000
  %276 = fdiv fast float %258, %273
  %277 = fdiv fast float %259, %274
  %278 = fdiv fast float %260, %275
  %279 = fmul fast float %276, 9.843750e-01
  %280 = fmul fast float %277, 9.843750e-01
  %281 = fmul fast float %278, 9.843750e-01
  %282 = fadd fast float %279, 7.812500e-03
  %283 = fadd fast float %280, 7.812500e-03
  %284 = fadd fast float %281, 7.812500e-03
  %285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %282, float %283, float %284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = fcmp fast ogt float %290, 0.000000e+00
  br i1 %291, label %292, label %332

; <label>:292                                     ; preds = %156
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = fmul fast float %294, %13
  %297 = fmul fast float %295, %14
  %298 = fptoui float %296 to i32
  %299 = fptoui float %297 to i32
  %300 = lshr i32 %298, 3
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 1
  %303 = shl i32 %302, 1
  %304 = lshr i32 %299, 5
  %305 = extractvalue %dx.types.CBufRet.i32 %301, 0
  %306 = mul i32 %304, %305
  %307 = lshr i32 %298, 6
  %308 = add i32 %307, %303
  %309 = add i32 %308, %306
  %310 = shl i32 %309, 2
  %311 = and i32 %299, 24
  %312 = and i32 %300, 7
  %313 = or i32 %312, %311
  %314 = shl i32 1, %313
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %314, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %332, label %319

; <label>:319                                     ; preds = %292
  %320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = extractvalue %dx.types.ResRet.f32 %320, 3
  %325 = fsub fast float 1.000000e+00, %324
  %326 = fmul fast float %325, %286
  %327 = fmul fast float %325, %287
  %328 = fmul fast float %325, %288
  %329 = fadd fast float %326, %321
  %330 = fadd fast float %327, %322
  %331 = fadd fast float %328, %323
  br label %332

; <label>:332                                     ; preds = %319, %292, %156
  %333 = phi float [ %329, %319 ], [ %286, %292 ], [ %286, %156 ]
  %334 = phi float [ %330, %319 ], [ %287, %292 ], [ %287, %156 ]
  %335 = phi float [ %331, %319 ], [ %288, %292 ], [ %288, %156 ]
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %335)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!21}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !18}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 160, null}
!17 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, !35}
!23 = !{!24, !29, null}
!24 = !{!25, !28}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, !27}
!26 = !{i32 0}
!27 = !{i32 3, i32 3}
!28 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 1, i8 0, !27}
!29 = !{!30, !32}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 1, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 1, i32 1, i8 0, !34}
!33 = !{i32 1}
!34 = !{i32 3, i32 1}
!35 = !{i32 0, i64 16}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}

