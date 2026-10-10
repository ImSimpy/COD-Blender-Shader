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
;
; shader hash: 94212da5ce213a385f9842b115886250
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
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t73,space2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture    byte         r/o      T6     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = extractvalue %dx.types.ResRet.f32 %15, 1
  %18 = extractvalue %dx.types.ResRet.f32 %15, 2
  %19 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = call float @dx.op.binary.f32(i32 35, float %20, float 0.000000e+00)  ; FMax(a,b)
  %23 = call float @dx.op.binary.f32(i32 35, float %21, float 0.000000e+00)  ; FMax(a,b)
  %24 = call float @dx.op.binary.f32(i32 36, float %22, float 3.225500e+04)  ; FMin(a,b)
  %25 = call float @dx.op.binary.f32(i32 36, float %23, float 3.225500e+04)  ; FMin(a,b)
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = fcmp fast oge float %17, %28
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 3
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  %34 = and i32 %31, 4
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %33, %35
  %37 = and i1 %29, %36
  br i1 %36, label %38, label %87

; <label>:38                                      ; preds = %0
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = fsub fast float %43, %44
  %46 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %47 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %48 = fsub fast float %46, %47
  %49 = fcmp fast ogt float %48, 0.000000e+00
  %50 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = fsub fast float %50, %51
  %53 = call float @dx.op.unary.f32(i32 6, float %52)  ; FAbs(value)
  %54 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %55 = fsub fast float %53, %54
  %56 = fcmp fast ogt float %55, 0.000000e+00
  %57 = or i1 %49, %56
  %58 = or i1 %42, %57
  br i1 %58, label %59, label %69, !dx.controlflow.hints !33

; <label>:59                                      ; preds = %38
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %62 = fmul fast float %61, %16
  %63 = fmul fast float %61, %17
  %64 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %65 = fmul fast float %64, %24
  %66 = fmul fast float %64, %25
  %67 = fadd fast float %65, %62
  %68 = fadd fast float %66, %63
  br label %69

; <label>:69                                      ; preds = %59, %38
  %70 = phi float [ %67, %59 ], [ %16, %38 ]
  %71 = phi float [ %68, %59 ], [ %17, %38 ]
  br i1 %37, label %72, label %87

; <label>:72                                      ; preds = %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %71, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = extractvalue %dx.types.ResRet.f32 %75, 1
  %78 = extractvalue %dx.types.ResRet.f32 %75, 2
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %81 = fcmp fast ogt float %80, 1.500000e+00
  %82 = select i1 %81, float %76, float %77
  %83 = select i1 %81, float %76, float %78
  %84 = fmul fast float %76, %74
  %85 = fmul fast float %82, %74
  %86 = fmul fast float %83, %74
  br label %87

; <label>:87                                      ; preds = %72, %69, %0
  %88 = phi float [ %84, %72 ], [ %16, %0 ], [ %70, %69 ]
  %89 = phi float [ %85, %72 ], [ %17, %0 ], [ %70, %69 ]
  %90 = phi float [ %86, %72 ], [ %18, %0 ], [ %70, %69 ]
  br i1 %37, label %91, label %123

; <label>:91                                      ; preds = %87
  %92 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %93 = fmul fast float %92, 0x3FDAAAAAA0000000
  %94 = call float @dx.op.unary.f32(i32 21, float %93)  ; Exp(value)
  %95 = fsub fast float 1.000000e+00, %94
  %96 = call float @dx.op.unary.f32(i32 23, float %95)  ; Log(value)
  %97 = fmul fast float %96, 0x4003333340000000
  %98 = call float @dx.op.unary.f32(i32 21, float %97)  ; Exp(value)
  %99 = fdiv fast float %94, %95
  %100 = fadd fast float %99, %88
  %101 = fadd fast float %99, %89
  %102 = fadd fast float %99, %90
  %103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %100)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %101)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %102)  ; FMax(a,b)
  %106 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %107 = call float @dx.op.unary.f32(i32 23, float %104)  ; Log(value)
  %108 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %109 = fmul fast float %106, 0x4003333340000000
  %110 = fmul fast float %107, 0x4003333340000000
  %111 = fmul fast float %108, 0x4003333340000000
  %112 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %113 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %114 = call float @dx.op.unary.f32(i32 21, float %111)  ; Exp(value)
  %115 = fmul fast float %112, %98
  %116 = fmul fast float %113, %98
  %117 = fmul fast float %114, %98
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %120 = fmul fast float %115, %119
  %121 = fmul fast float %116, %119
  %122 = fmul fast float %117, %119
  br label %212

; <label>:123                                     ; preds = %87
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = fcmp fast ugt float %125, 0.000000e+00
  br i1 %132, label %133, label %183

; <label>:133                                     ; preds = %123
  %134 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %135 = fcmp fast ogt float %134, 0.000000e+00
  %136 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %140 = fadd fast float %13, -5.000000e-01
  %141 = fadd fast float %14, -5.000000e-01
  %142 = fmul fast float %139, %140
  %143 = fmul fast float %138, %141
  %144 = fadd fast float %142, %137
  %145 = fadd fast float %143, %136
  br i1 %135, label %146, label %153

; <label>:146                                     ; preds = %133
  %147 = fmul fast float %144, 5.000000e-01
  %148 = fmul fast float %145, 5.000000e-01
  %149 = fadd fast float %147, 5.000000e-01
  %150 = fadd fast float %148, 5.000000e-01
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  br label %166

; <label>:153                                     ; preds = %133
  %154 = fsub fast float -0.000000e+00, %127
  %155 = fsub fast float -0.000000e+00, %128
  %156 = call float @dx.op.binary.f32(i32 35, float %144, float %154)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %145, float %155)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 36, float %156, float %127)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %157, float %128)  ; FMin(a,b)
  %160 = fsub fast float %144, %158
  %161 = fsub fast float %145, %159
  %162 = fmul fast float %160, %160
  %163 = fmul fast float %161, %161
  %164 = fadd fast float %163, %162
  %165 = call float @dx.op.unary.f32(i32 24, float %164)  ; Sqrt(value)
  br label %166

; <label>:166                                     ; preds = %153, %146
  %167 = phi float [ %152, %146 ], [ %165, %153 ]
  %168 = fmul fast float %167, %130
  %169 = fadd fast float %168, %131
  %170 = call float @dx.op.unary.f32(i32 7, float %169)  ; Saturate(value)
  %171 = fmul fast float %170, %170
  %172 = fmul fast float %170, 2.000000e+00
  %173 = fsub fast float 3.000000e+00, %172
  %174 = fmul fast float %171, %173
  %175 = fsub fast float %174, %170
  %176 = fmul fast float %175, 0x3FE3333340000000
  %177 = fadd fast float %176, %170
  %178 = fmul fast float %177, %125
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fmul fast float %179, %88
  %181 = fmul fast float %179, %89
  %182 = fmul fast float %179, %90
  br label %183

; <label>:183                                     ; preds = %166, %123
  %184 = phi float [ %180, %166 ], [ %88, %123 ]
  %185 = phi float [ %181, %166 ], [ %89, %123 ]
  %186 = phi float [ %182, %166 ], [ %90, %123 ]
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fmul fast float %203, %191
  %205 = fmul fast float %203, %196
  %206 = fmul fast float %203, %201
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %204, %208
  %210 = fmul fast float %205, %208
  %211 = fmul fast float %206, %208
  br label %212

; <label>:212                                     ; preds = %183, %91
  %213 = phi float [ %120, %91 ], [ %209, %183 ]
  %214 = phi float [ %121, %91 ], [ %210, %183 ]
  %215 = phi float [ %122, %91 ], [ %211, %183 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = bitcast float %217 to i32
  %219 = icmp eq i32 %218, 4
  br i1 %219, label %220, label %243

; <label>:220                                     ; preds = %212
  %221 = fmul fast float %213, 0x3FEA519BC0000000
  %222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %214, float %221)  ; FMad(a,b,c)
  %223 = fmul fast float %213, 0x3FA0FED480000000
  %224 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %214, float %223)  ; FMad(a,b,c)
  %225 = fmul fast float %213, 0x3F917E1C00000000
  %226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %214, float %225)  ; FMad(a,b,c)
  %227 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %215, float %226)  ; FMad(a,b,c)
  %228 = call float @dx.op.binary.f32(i32 35, float %213, float %214)  ; FMax(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float %215)  ; FMax(a,b)
  %230 = fadd fast float %229, -1.000000e+00
  %231 = fmul fast float %230, 2.500000e-01
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = fsub fast float 1.000000e+00, %232
  %234 = fmul fast float %233, %222
  %235 = fmul fast float %233, %224
  %236 = fmul fast float %233, %227
  %237 = fmul fast float %232, %213
  %238 = fmul fast float %232, %214
  %239 = fmul fast float %232, %215
  %240 = fadd fast float %234, %237
  %241 = fadd fast float %235, %238
  %242 = fadd fast float %236, %239
  br label %253

; <label>:243                                     ; preds = %212
  %244 = fmul fast float %213, 0x3FE413A920000000
  %245 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %214, float %244)  ; FMad(a,b,c)
  %246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %215, float %245)  ; FMad(a,b,c)
  %247 = fmul fast float %213, 0x3FB1B089A0000000
  %248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %214, float %247)  ; FMad(a,b,c)
  %249 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %215, float %248)  ; FMad(a,b,c)
  %250 = fmul fast float %213, 0x3F90CB2960000000
  %251 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %214, float %250)  ; FMad(a,b,c)
  %252 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %215, float %251)  ; FMad(a,b,c)
  br label %253

; <label>:253                                     ; preds = %243, %220
  %254 = phi float [ %240, %220 ], [ %246, %243 ]
  %255 = phi float [ %241, %220 ], [ %249, %243 ]
  %256 = phi float [ %242, %220 ], [ %252, %243 ]
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast ogt float %258, 0.000000e+00
  br i1 %259, label %260, label %304

; <label>:260                                     ; preds = %253
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %264 = fmul fast float %262, %13
  %265 = fmul fast float %263, %14
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = lshr i32 %266, 3
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 1
  %271 = shl i32 %270, 1
  %272 = lshr i32 %267, 5
  %273 = extractvalue %dx.types.CBufRet.i32 %269, 0
  %274 = mul i32 %272, %273
  %275 = lshr i32 %266, 6
  %276 = add i32 %275, %271
  %277 = add i32 %276, %274
  %278 = shl i32 %277, 2
  %279 = and i32 %267, 24
  %280 = and i32 %268, 7
  %281 = or i32 %280, %279
  %282 = shl i32 1, %281
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %282, %284
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %304, label %287

; <label>:287                                     ; preds = %260
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fcmp fast oeq float %289, 0.000000e+00
  br i1 %290, label %291, label %304

; <label>:291                                     ; preds = %287
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = extractvalue %dx.types.ResRet.f32 %292, 3
  %297 = fsub fast float 1.000000e+00, %296
  %298 = fmul fast float %297, %254
  %299 = fmul fast float %297, %255
  %300 = fmul fast float %297, %256
  %301 = fadd fast float %298, %293
  %302 = fadd fast float %299, %294
  %303 = fadd fast float %300, %295
  br label %304

; <label>:304                                     ; preds = %291, %287, %260, %253
  %305 = phi float [ %301, %291 ], [ %254, %287 ], [ %254, %260 ], [ %254, %253 ]
  %306 = phi float [ %302, %291 ], [ %255, %287 ], [ %255, %260 ], [ %255, %253 ]
  %307 = phi float [ %303, %291 ], [ %256, %287 ], [ %256, %260 ], [ %256, %253 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %306)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %307)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!17 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{[8 x i32] [i32 6, i32 4, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, !32}
!23 = !{!24, !29, null}
!24 = !{!25, !28}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, !27}
!26 = !{i32 0}
!27 = !{i32 3, i32 3}
!28 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 1, i8 0, !27}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 0, i64 16}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

