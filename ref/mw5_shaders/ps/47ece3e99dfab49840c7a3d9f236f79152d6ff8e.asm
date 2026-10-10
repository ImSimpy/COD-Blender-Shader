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
; shader hash: 52fbc029a1eea4b57b1717eabf760cb0
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2     t74,space2     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture     f32          2d      T6             t5     1
;                                   texture    byte         r/o      T7     t15,space1     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %39, label %71, label %94, !dx.controlflow.hints !36

; <label>:71                                      ; preds = %0
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = extractvalue %dx.types.ResRet.f32 %72, 1
  %75 = extractvalue %dx.types.ResRet.f32 %72, 2
  %76 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 36, float %76, float 3.225500e+04)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %77, float 3.225500e+04)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %78, float 3.225500e+04)  ; FMin(a,b)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %84 = fmul fast float %83, %68
  %85 = fmul fast float %83, %69
  %86 = fmul fast float %83, %70
  %87 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %88 = fmul fast float %87, %79
  %89 = fmul fast float %87, %80
  %90 = fmul fast float %87, %81
  %91 = fadd fast float %88, %84
  %92 = fadd fast float %89, %85
  %93 = fadd fast float %90, %86
  br label %94

; <label>:94                                      ; preds = %71, %0
  %95 = phi float [ %91, %71 ], [ %68, %0 ]
  %96 = phi float [ %92, %71 ], [ %69, %0 ]
  %97 = phi float [ %93, %71 ], [ %70, %0 ]
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = fcmp fast ugt float %99, 0.000000e+00
  br i1 %106, label %107, label %157

; <label>:107                                     ; preds = %94
  %108 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %109 = fcmp fast ogt float %108, 0.000000e+00
  %110 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %114 = fadd fast float %13, -5.000000e-01
  %115 = fadd fast float %14, -5.000000e-01
  %116 = fmul fast float %113, %114
  %117 = fmul fast float %112, %115
  %118 = fadd fast float %116, %111
  %119 = fadd fast float %117, %110
  br i1 %109, label %120, label %127

; <label>:120                                     ; preds = %107
  %121 = fmul fast float %118, 5.000000e-01
  %122 = fmul fast float %119, 5.000000e-01
  %123 = fadd fast float %121, 5.000000e-01
  %124 = fadd fast float %122, 5.000000e-01
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %9, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  br label %140

; <label>:127                                     ; preds = %107
  %128 = fsub fast float -0.000000e+00, %101
  %129 = fsub fast float -0.000000e+00, %102
  %130 = call float @dx.op.binary.f32(i32 35, float %118, float %128)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 35, float %119, float %129)  ; FMax(a,b)
  %132 = call float @dx.op.binary.f32(i32 36, float %130, float %101)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 36, float %131, float %102)  ; FMin(a,b)
  %134 = fsub fast float %118, %132
  %135 = fsub fast float %119, %133
  %136 = fmul fast float %134, %134
  %137 = fmul fast float %135, %135
  %138 = fadd fast float %137, %136
  %139 = call float @dx.op.unary.f32(i32 24, float %138)  ; Sqrt(value)
  br label %140

; <label>:140                                     ; preds = %127, %120
  %141 = phi float [ %126, %120 ], [ %139, %127 ]
  %142 = fmul fast float %141, %104
  %143 = fadd fast float %142, %105
  %144 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %145 = fmul fast float %144, %144
  %146 = fmul fast float %144, 2.000000e+00
  %147 = fsub fast float 3.000000e+00, %146
  %148 = fmul fast float %145, %147
  %149 = fsub fast float %148, %144
  %150 = fmul fast float %149, 0x3FE3333340000000
  %151 = fadd fast float %150, %144
  %152 = fmul fast float %151, %99
  %153 = fsub fast float 1.000000e+00, %152
  %154 = fmul fast float %153, %95
  %155 = fmul fast float %153, %96
  %156 = fmul fast float %153, %97
  br label %157

; <label>:157                                     ; preds = %140, %94
  %158 = phi float [ %154, %140 ], [ %95, %94 ]
  %159 = phi float [ %155, %140 ], [ %96, %94 ]
  %160 = phi float [ %156, %140 ], [ %97, %94 ]
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %172, float %173, float %174)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = fmul fast float %165, %41
  %177 = fmul fast float %170, %41
  %178 = fmul fast float %175, %41
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fmul fast float %176, %180
  %182 = fmul fast float %177, %180
  %183 = fmul fast float %178, %180
  %184 = fadd fast float %181, 9.765625e-04
  %185 = fadd fast float %182, 9.765625e-04
  %186 = fadd fast float %183, 9.765625e-04
  %187 = call float @dx.op.unary.f32(i32 23, float %184)  ; Log(value)
  %188 = call float @dx.op.unary.f32(i32 23, float %185)  ; Log(value)
  %189 = call float @dx.op.unary.f32(i32 23, float %186)  ; Log(value)
  %190 = fadd fast float %187, 1.000000e+01
  %191 = fadd fast float %188, 1.000000e+01
  %192 = fadd fast float %189, 1.000000e+01
  %193 = fmul fast float %190, 0x3FA99999A0000000
  %194 = fmul fast float %191, 0x3FA99999A0000000
  %195 = fmul fast float %192, 0x3FA99999A0000000
  %196 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %197 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %198 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %203 = fmul fast float %200, %196
  %204 = fmul fast float %201, %197
  %205 = fmul fast float %202, %198
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %210 = fadd fast float %203, %207
  %211 = fadd fast float %204, %208
  %212 = fadd fast float %205, %209
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %210, float %211, float %212, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 1
  %216 = extractvalue %dx.types.ResRet.f32 %213, 2
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = fcmp fast ogt float %218, 0.000000e+00
  br i1 %219, label %220, label %264

; <label>:220                                     ; preds = %157
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = fmul fast float %222, %13
  %225 = fmul fast float %223, %14
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = lshr i32 %226, 3
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 1
  %231 = shl i32 %230, 1
  %232 = lshr i32 %227, 5
  %233 = extractvalue %dx.types.CBufRet.i32 %229, 0
  %234 = mul i32 %232, %233
  %235 = lshr i32 %226, 6
  %236 = add i32 %235, %231
  %237 = add i32 %236, %234
  %238 = shl i32 %237, 2
  %239 = and i32 %227, 24
  %240 = and i32 %228, 7
  %241 = or i32 %240, %239
  %242 = shl i32 1, %241
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %242, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %264, label %247

; <label>:247                                     ; preds = %220
  %248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = fcmp fast oeq float %249, 0.000000e+00
  br i1 %250, label %251, label %264

; <label>:251                                     ; preds = %247
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = extractvalue %dx.types.ResRet.f32 %252, 3
  %257 = fsub fast float 1.000000e+00, %256
  %258 = fmul fast float %257, %214
  %259 = fmul fast float %257, %215
  %260 = fmul fast float %257, %216
  %261 = fadd fast float %258, %253
  %262 = fadd fast float %259, %254
  %263 = fadd fast float %260, %255
  br label %264

; <label>:264                                     ; preds = %251, %247, %220, %157
  %265 = phi float [ %261, %251 ], [ %214, %247 ], [ %214, %220 ], [ %214, %157 ]
  %266 = phi float [ %262, %251 ], [ %215, %247 ], [ %215, %220 ], [ %215, %157 ]
  %267 = phi float [ %263, %251 ], [ %216, %247 ], [ %216, %220 ], [ %216, %157 ]
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %272 = call float @dx.op.dot3.f32(i32 55, float %265, float %266, float %267, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %265)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %266)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %267)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %272)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!4 = !{!5, null, !15, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17, !18}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!18 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!19 = !{!20}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
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

