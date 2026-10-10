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
; shader hash: 5b083b9f10e48adff1fd9c734d26dc0b
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
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = extractvalue %dx.types.ResRet.f32 %18, 1
  %21 = extractvalue %dx.types.ResRet.f32 %18, 2
  %22 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = call float @dx.op.binary.f32(i32 35, float %23, float 0.000000e+00)  ; FMax(a,b)
  %26 = call float @dx.op.binary.f32(i32 35, float %24, float 0.000000e+00)  ; FMax(a,b)
  %27 = call float @dx.op.binary.f32(i32 36, float %25, float 3.225500e+04)  ; FMin(a,b)
  %28 = call float @dx.op.binary.f32(i32 36, float %26, float 3.225500e+04)  ; FMin(a,b)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fsub fast float %34, %16
  %37 = fsub fast float %35, %17
  %38 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %39 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %40 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %42 = fsub fast float %38, %40
  %43 = fsub fast float %39, %41
  %44 = fcmp fast ogt float %42, 0.000000e+00
  %45 = fcmp fast ogt float %43, 0.000000e+00
  %46 = or i1 %44, %45
  %47 = or i1 %32, %46
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fcmp fast oge float %20, %49
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 3
  %53 = and i32 %52, 3
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %52, 4
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %54, %56
  %58 = and i1 %50, %57
  br i1 %57, label %59, label %96

; <label>:59                                      ; preds = %0
  br i1 %47, label %60, label %70, !dx.controlflow.hints !37

; <label>:60                                      ; preds = %59
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %63 = fmul fast float %62, %19
  %64 = fmul fast float %62, %20
  %65 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %66 = fmul fast float %65, %27
  %67 = fmul fast float %65, %28
  %68 = fadd fast float %66, %63
  %69 = fadd fast float %67, %64
  br label %70

; <label>:70                                      ; preds = %60, %59
  %71 = phi float [ %68, %60 ], [ %19, %59 ]
  %72 = phi float [ %69, %60 ], [ %20, %59 ]
  br i1 %58, label %73, label %96

; <label>:73                                      ; preds = %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %76 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %84 = fsub fast float %78, %81
  %85 = fsub fast float %79, %82
  %86 = fsub fast float %80, %83
  %87 = fmul fast float %84, %76
  %88 = fmul fast float %85, %76
  %89 = fmul fast float %86, %76
  %90 = fadd fast float %87, %81
  %91 = fadd fast float %88, %82
  %92 = fadd fast float %89, %83
  %93 = fmul fast float %90, %75
  %94 = fmul fast float %91, %75
  %95 = fmul fast float %92, %75
  br label %96

; <label>:96                                      ; preds = %73, %70, %0
  %97 = phi float [ %93, %73 ], [ %19, %0 ], [ %71, %70 ]
  %98 = phi float [ %94, %73 ], [ %20, %0 ], [ %71, %70 ]
  %99 = phi float [ %95, %73 ], [ %21, %0 ], [ %71, %70 ]
  br i1 %58, label %100, label %288

; <label>:100                                     ; preds = %96
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = bitcast float %102 to i32
  %104 = icmp eq i32 %103, 3
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = fsub fast float 1.000000e+00, %106
  br i1 %104, label %108, label %184

; <label>:108                                     ; preds = %100
  %109 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %110 = fmul fast float %109, 0x3FDAAAAAA0000000
  %111 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %112 = fsub fast float 1.000000e+00, %111
  %113 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %114 = fmul fast float %113, 0x4003333340000000
  %115 = call float @dx.op.unary.f32(i32 21, float %114)  ; Exp(value)
  %116 = fdiv fast float %111, %112
  %117 = fadd fast float %116, %97
  %118 = fadd fast float %116, %98
  %119 = fadd fast float %116, %99
  %120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %117)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %118)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %119)  ; FMax(a,b)
  %123 = call float @dx.op.unary.f32(i32 23, float %120)  ; Log(value)
  %124 = call float @dx.op.unary.f32(i32 23, float %121)  ; Log(value)
  %125 = call float @dx.op.unary.f32(i32 23, float %122)  ; Log(value)
  %126 = fmul fast float %123, 0x4003333340000000
  %127 = fmul fast float %124, 0x4003333340000000
  %128 = fmul fast float %125, 0x4003333340000000
  %129 = call float @dx.op.unary.f32(i32 21, float %126)  ; Exp(value)
  %130 = call float @dx.op.unary.f32(i32 21, float %127)  ; Exp(value)
  %131 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %132 = fmul fast float %129, %115
  %133 = fmul fast float %130, %115
  %134 = fmul fast float %131, %115
  %135 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %136 = fmul fast float %132, %135
  %137 = fmul fast float %133, %135
  %138 = fmul fast float %134, %135
  %139 = fmul fast float %136, 0x3FE413A920000000
  %140 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %137, float %139)  ; FMad(a,b,c)
  %141 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %138, float %140)  ; FMad(a,b,c)
  %142 = fmul fast float %136, 0x3FB1B089A0000000
  %143 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %137, float %142)  ; FMad(a,b,c)
  %144 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %138, float %143)  ; FMad(a,b,c)
  %145 = fmul fast float %136, 0x3F90CB2960000000
  %146 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %137, float %145)  ; FMad(a,b,c)
  %147 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %138, float %146)  ; FMad(a,b,c)
  %148 = fmul fast float %141, 0x3F1A36E2E0000000
  %149 = fmul fast float %144, 0x3F1A36E2E0000000
  %150 = fmul fast float %147, 0x3F1A36E2E0000000
  %151 = call float @dx.op.unary.f32(i32 23, float %148)  ; Log(value)
  %152 = call float @dx.op.unary.f32(i32 23, float %149)  ; Log(value)
  %153 = call float @dx.op.unary.f32(i32 23, float %150)  ; Log(value)
  %154 = fmul fast float %151, 0x3FC4640000000000
  %155 = fmul fast float %152, 0x3FC4640000000000
  %156 = fmul fast float %153, 0x3FC4640000000000
  %157 = call float @dx.op.unary.f32(i32 21, float %154)  ; Exp(value)
  %158 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %159 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %160 = fmul fast float %157, 0x4032DA0000000000
  %161 = fmul fast float %158, 0x4032DA0000000000
  %162 = fmul fast float %159, 0x4032DA0000000000
  %163 = fadd fast float %160, 8.359375e-01
  %164 = fadd fast float %161, 8.359375e-01
  %165 = fadd fast float %162, 8.359375e-01
  %166 = fmul fast float %157, 1.868750e+01
  %167 = fmul fast float %158, 1.868750e+01
  %168 = fmul fast float %159, 1.868750e+01
  %169 = fadd fast float %166, 1.000000e+00
  %170 = fadd fast float %167, 1.000000e+00
  %171 = fadd fast float %168, 1.000000e+00
  %172 = fdiv fast float %163, %169
  %173 = fdiv fast float %164, %170
  %174 = fdiv fast float %165, %171
  %175 = call float @dx.op.unary.f32(i32 23, float %172)  ; Log(value)
  %176 = call float @dx.op.unary.f32(i32 23, float %173)  ; Log(value)
  %177 = call float @dx.op.unary.f32(i32 23, float %174)  ; Log(value)
  %178 = fmul fast float %175, 7.884375e+01
  %179 = fmul fast float %176, 7.884375e+01
  %180 = fmul fast float %177, 7.884375e+01
  %181 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %182 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %183 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  br label %275

; <label>:184                                     ; preds = %100
  %185 = icmp eq i32 %103, 4
  br i1 %185, label %186, label %275

; <label>:186                                     ; preds = %184
  %187 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %188 = fmul fast float %187, 0x3FDAAAAAA0000000
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fsub fast float 1.000000e+00, %189
  %191 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %192 = fmul fast float %191, 0x4003333340000000
  %193 = call float @dx.op.unary.f32(i32 21, float %192)  ; Exp(value)
  %194 = fdiv fast float %189, %190
  %195 = fadd fast float %194, %97
  %196 = fadd fast float %194, %98
  %197 = fadd fast float %194, %99
  %198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %196)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %197)  ; FMax(a,b)
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = fmul fast float %201, 0x4003333340000000
  %205 = fmul fast float %202, 0x4003333340000000
  %206 = fmul fast float %203, 0x4003333340000000
  %207 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %208 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %209 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %210 = fmul fast float %207, %193
  %211 = fmul fast float %208, %193
  %212 = fmul fast float %209, %193
  %213 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %214 = fmul fast float %210, %213
  %215 = fmul fast float %211, %213
  %216 = fmul fast float %212, %213
  %217 = fmul fast float %214, 0x3FEA519BC0000000
  %218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %215, float %217)  ; FMad(a,b,c)
  %219 = fmul fast float %214, 0x3FA0FED480000000
  %220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %215, float %219)  ; FMad(a,b,c)
  %221 = fmul fast float %214, 0x3F917E1C00000000
  %222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %215, float %221)  ; FMad(a,b,c)
  %223 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %216, float %222)  ; FMad(a,b,c)
  %224 = call float @dx.op.binary.f32(i32 35, float %214, float %215)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %224, float %216)  ; FMax(a,b)
  %226 = fadd fast float %225, -1.000000e+00
  %227 = fmul fast float %226, 2.500000e-01
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fsub fast float 1.000000e+00, %228
  %230 = fmul fast float %229, %218
  %231 = fmul fast float %229, %220
  %232 = fmul fast float %229, %223
  %233 = fmul fast float %228, %214
  %234 = fmul fast float %228, %215
  %235 = fmul fast float %228, %216
  %236 = fadd fast float %230, %233
  %237 = fadd fast float %231, %234
  %238 = fadd fast float %232, %235
  %239 = fmul fast float %236, 0x3F1A36E2E0000000
  %240 = fmul fast float %237, 0x3F1A36E2E0000000
  %241 = fmul fast float %238, 0x3F1A36E2E0000000
  %242 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %243 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
  %244 = call float @dx.op.unary.f32(i32 23, float %241)  ; Log(value)
  %245 = fmul fast float %242, 0x3FC4640000000000
  %246 = fmul fast float %243, 0x3FC4640000000000
  %247 = fmul fast float %244, 0x3FC4640000000000
  %248 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  %249 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %250 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %251 = fmul fast float %248, 0x4032DA0000000000
  %252 = fmul fast float %249, 0x4032DA0000000000
  %253 = fmul fast float %250, 0x4032DA0000000000
  %254 = fadd fast float %251, 8.359375e-01
  %255 = fadd fast float %252, 8.359375e-01
  %256 = fadd fast float %253, 8.359375e-01
  %257 = fmul fast float %248, 1.868750e+01
  %258 = fmul fast float %249, 1.868750e+01
  %259 = fmul fast float %250, 1.868750e+01
  %260 = fadd fast float %257, 1.000000e+00
  %261 = fadd fast float %258, 1.000000e+00
  %262 = fadd fast float %259, 1.000000e+00
  %263 = fdiv fast float %254, %260
  %264 = fdiv fast float %255, %261
  %265 = fdiv fast float %256, %262
  %266 = call float @dx.op.unary.f32(i32 23, float %263)  ; Log(value)
  %267 = call float @dx.op.unary.f32(i32 23, float %264)  ; Log(value)
  %268 = call float @dx.op.unary.f32(i32 23, float %265)  ; Log(value)
  %269 = fmul fast float %266, 7.884375e+01
  %270 = fmul fast float %267, 7.884375e+01
  %271 = fmul fast float %268, 7.884375e+01
  %272 = call float @dx.op.unary.f32(i32 21, float %269)  ; Exp(value)
  %273 = call float @dx.op.unary.f32(i32 21, float %270)  ; Exp(value)
  %274 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  br label %275

; <label>:275                                     ; preds = %186, %184, %108
  %276 = phi float [ %181, %108 ], [ %272, %186 ], [ %97, %184 ]
  %277 = phi float [ %182, %108 ], [ %273, %186 ], [ %98, %184 ]
  %278 = phi float [ %183, %108 ], [ %274, %186 ], [ %99, %184 ]
  %279 = fmul float %107, %278
  %280 = fmul float %107, %277
  %281 = fmul float %107, %276
  %282 = fadd float %279, %106
  %283 = fadd float %280, %106
  %284 = fadd float %281, %106
  %285 = fmul fast float %284, %21
  %286 = fmul fast float %283, %21
  %287 = fmul fast float %282, %21
  br label %462

; <label>:288                                     ; preds = %96
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %297 = fsub fast float %296, %292
  %298 = fcmp fast ogt float %297, 0.000000e+00
  %299 = fcmp fast olt float %297, 0.000000e+00
  %300 = zext i1 %298 to i32
  %301 = zext i1 %299 to i32
  %302 = sub nsw i32 %300, %301
  %303 = sitofp i32 %302 to float
  %304 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %305 = fsub fast float %304, %294
  %306 = call float @dx.op.binary.f32(i32 35, float %305, float 0.000000e+00)  ; FMax(a,b)
  %307 = fmul fast float %303, %306
  %308 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %309 = fsub fast float %296, %307
  %310 = fmul fast float %309, 0xBFF7154760000000
  %311 = call float @dx.op.unary.f32(i32 21, float %310)  ; Exp(value)
  %312 = fmul fast float %311, %308
  %313 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %314 = fadd fast float %312, -1.000000e+00
  %315 = fmul fast float %313, %314
  %316 = fadd fast float %315, 1.000000e+00
  %317 = fmul fast float %316, %97
  %318 = fmul fast float %316, %98
  %319 = fmul fast float %316, %99
  %320 = icmp eq i32 %53, 0
  %321 = icmp ne i32 %55, 0
  %322 = or i1 %320, %321
  %323 = and i1 %47, %322
  br i1 %323, label %324, label %339, !dx.controlflow.hints !38

; <label>:324                                     ; preds = %288
  %325 = extractvalue %dx.types.ResRet.f32 %22, 2
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float 0.000000e+00)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %326, float 3.225500e+04)  ; FMin(a,b)
  %328 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %329 = fmul fast float %328, %317
  %330 = fmul fast float %328, %318
  %331 = fmul fast float %328, %319
  %332 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %333 = fmul fast float %332, %27
  %334 = fmul fast float %332, %28
  %335 = fmul fast float %332, %327
  %336 = fadd fast float %333, %329
  %337 = fadd fast float %334, %330
  %338 = fadd fast float %335, %331
  br label %339

; <label>:339                                     ; preds = %324, %288
  %340 = phi float [ %336, %324 ], [ %317, %288 ]
  %341 = phi float [ %337, %324 ], [ %318, %288 ]
  %342 = phi float [ %338, %324 ], [ %319, %288 ]
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = fcmp fast ugt float %344, 0.000000e+00
  br i1 %351, label %352, label %402

; <label>:352                                     ; preds = %339
  %353 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %354 = fcmp fast ogt float %353, 0.000000e+00
  %355 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %359 = fadd fast float %14, -5.000000e-01
  %360 = fadd fast float %15, -5.000000e-01
  %361 = fmul fast float %358, %359
  %362 = fmul fast float %357, %360
  %363 = fadd fast float %361, %356
  %364 = fadd fast float %362, %355
  br i1 %354, label %365, label %372

; <label>:365                                     ; preds = %352
  %366 = fmul fast float %363, 5.000000e-01
  %367 = fmul fast float %364, 5.000000e-01
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fadd fast float %367, 5.000000e-01
  %370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %9, float %368, float %369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  br label %385

; <label>:372                                     ; preds = %352
  %373 = fsub fast float -0.000000e+00, %346
  %374 = fsub fast float -0.000000e+00, %347
  %375 = call float @dx.op.binary.f32(i32 35, float %363, float %373)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %364, float %374)  ; FMax(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %375, float %346)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float %376, float %347)  ; FMin(a,b)
  %379 = fsub fast float %363, %377
  %380 = fsub fast float %364, %378
  %381 = fmul fast float %379, %379
  %382 = fmul fast float %380, %380
  %383 = fadd fast float %382, %381
  %384 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  br label %385

; <label>:385                                     ; preds = %372, %365
  %386 = phi float [ %371, %365 ], [ %384, %372 ]
  %387 = fmul fast float %386, %349
  %388 = fadd fast float %387, %350
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %389, %389
  %391 = fmul fast float %389, 2.000000e+00
  %392 = fsub fast float 3.000000e+00, %391
  %393 = fmul fast float %390, %392
  %394 = fsub fast float %393, %389
  %395 = fmul fast float %394, 0x3FE3333340000000
  %396 = fadd fast float %395, %389
  %397 = fmul fast float %396, %344
  %398 = fsub fast float 1.000000e+00, %397
  %399 = fmul fast float %398, %340
  %400 = fmul fast float %398, %341
  %401 = fmul fast float %398, %342
  br label %402

; <label>:402                                     ; preds = %385, %339
  %403 = phi float [ %399, %385 ], [ %340, %339 ]
  %404 = phi float [ %400, %385 ], [ %341, %339 ]
  %405 = phi float [ %401, %385 ], [ %342, %339 ]
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %410 = call float @dx.op.dot3.f32(i32 55, float %403, float %404, float %405, float %407, float %408, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = call float @dx.op.dot3.f32(i32 55, float %403, float %404, float %405, float %412, float %413, float %414)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = call float @dx.op.dot3.f32(i32 55, float %403, float %404, float %405, float %417, float %418, float %419)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = fmul fast float %410, %290
  %422 = fmul fast float %415, %290
  %423 = fmul fast float %420, %290
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %426 = fmul fast float %421, %425
  %427 = fmul fast float %422, %425
  %428 = fmul fast float %423, %425
  %429 = fadd fast float %426, 9.765625e-04
  %430 = fadd fast float %427, 9.765625e-04
  %431 = fadd fast float %428, 9.765625e-04
  %432 = call float @dx.op.unary.f32(i32 23, float %429)  ; Log(value)
  %433 = call float @dx.op.unary.f32(i32 23, float %430)  ; Log(value)
  %434 = call float @dx.op.unary.f32(i32 23, float %431)  ; Log(value)
  %435 = fadd fast float %432, 1.000000e+01
  %436 = fadd fast float %433, 1.000000e+01
  %437 = fadd fast float %434, 1.000000e+01
  %438 = fmul fast float %435, 0x3FA99999A0000000
  %439 = fmul fast float %436, 0x3FA99999A0000000
  %440 = fmul fast float %437, 0x3FA99999A0000000
  %441 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %442 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %443 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = fmul fast float %445, %441
  %449 = fmul fast float %446, %442
  %450 = fmul fast float %447, %443
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = fadd fast float %448, %452
  %456 = fadd fast float %449, %453
  %457 = fadd fast float %450, %454
  %458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %455, float %456, float %457, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  br label %462

; <label>:462                                     ; preds = %402, %275
  %463 = phi float [ %285, %275 ], [ %459, %402 ]
  %464 = phi float [ %286, %275 ], [ %460, %402 ]
  %465 = phi float [ %287, %275 ], [ %461, %402 ]
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fcmp fast ogt float %467, 0.000000e+00
  br i1 %468, label %469, label %513

; <label>:469                                     ; preds = %462
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %473 = fmul fast float %471, %14
  %474 = fmul fast float %472, %15
  %475 = fptoui float %473 to i32
  %476 = fptoui float %474 to i32
  %477 = lshr i32 %475, 3
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 1
  %480 = shl i32 %479, 1
  %481 = lshr i32 %476, 5
  %482 = extractvalue %dx.types.CBufRet.i32 %478, 0
  %483 = mul i32 %481, %482
  %484 = lshr i32 %475, 6
  %485 = add i32 %484, %480
  %486 = add i32 %485, %483
  %487 = shl i32 %486, 2
  %488 = and i32 %476, 24
  %489 = and i32 %477, 7
  %490 = or i32 %489, %488
  %491 = shl i32 1, %490
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %491, %493
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %513, label %496

; <label>:496                                     ; preds = %469
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = fcmp fast oeq float %498, 0.000000e+00
  br i1 %499, label %500, label %513

; <label>:500                                     ; preds = %496
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = fsub fast float 1.000000e+00, %505
  %507 = fmul fast float %506, %463
  %508 = fmul fast float %506, %464
  %509 = fmul fast float %506, %465
  %510 = fadd fast float %507, %502
  %511 = fadd fast float %508, %503
  %512 = fadd fast float %509, %504
  br label %513

; <label>:513                                     ; preds = %500, %496, %469, %462
  %514 = phi float [ %510, %500 ], [ %463, %496 ], [ %463, %469 ], [ %463, %462 ]
  %515 = phi float [ %511, %500 ], [ %464, %496 ], [ %464, %469 ], [ %464, %462 ]
  %516 = phi float [ %512, %500 ], [ %465, %496 ], [ %465, %469 ], [ %465, %462 ]
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %520 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %521 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float %518, float %519, float %520)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %514)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %515)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %516)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %521)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!22}
!dx.entryPoints = !{!23}

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
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!23 = !{void ()* @ps_main, !"ps_main", !24, !4, !36}
!24 = !{!25, !30, null}
!25 = !{!26, !29}
!26 = !{i32 0, !"SV_Position", i8 9, i8 3, !27, i8 4, i32 1, i8 4, i32 0, i8 0, !28}
!27 = !{i32 0}
!28 = !{i32 3, i32 3}
!29 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 1, i8 0, !28}
!30 = !{!31, !33}
!31 = !{i32 0, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 0, i8 0, !32}
!32 = !{i32 3, i32 15}
!33 = !{i32 1, !"SV_Target", i8 9, i8 16, !34, i8 0, i32 1, i8 1, i32 1, i8 0, !35}
!34 = !{i32 1}
!35 = !{i32 3, i32 1}
!36 = !{i32 0, i64 16}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}

