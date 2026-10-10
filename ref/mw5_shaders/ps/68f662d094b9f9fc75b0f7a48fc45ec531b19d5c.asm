;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d2d0da036ff2dccb3dd78e0fd5638050
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
; COLOR                    0                 linear       
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
;   [240 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [96 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture    byte         r/o      T1     t15,space1     1
;                                   texture     f32          2d      T2     t76,space2     1
;                                   texture     f32          3d      T3     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 3 depends on inputs: { 7, 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 1
  %21 = fsub fast float %16, %19
  %22 = fsub fast float %17, %20
  %23 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %18, 3
  %25 = fmul fast float %21, %23
  %26 = fmul fast float %22, %24
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = fmul fast float %25, %28
  %31 = fmul fast float %26, %29
  %32 = fptoui float %30 to i32
  %33 = fptoui float %31 to i32
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %36 = shl i32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.i32 %34, 3
  %38 = add i32 %36, %37
  %39 = lshr i32 %33, 2
  %40 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %41 = mul i32 %39, %40
  %42 = lshr i32 %32, 3
  %43 = add i32 %38, %42
  %44 = add i32 %43, %41
  %45 = shl i32 %44, 2
  %46 = shl i32 %33, 3
  %47 = and i32 %46, 24
  %48 = and i32 %32, 7
  %49 = or i32 %47, %48
  %50 = shl i32 1, %49
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56, !dx.controlflow.hints !31

; <label>:55                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %56

; <label>:56                                      ; preds = %55, %0
  %57 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 3
  %59 = fmul fast float %58, 2.000000e+00
  %60 = fadd fast float %59, -1.000000e+00
  %61 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %62 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %63 = fmul fast float %61, %61
  %64 = fmul fast float %62, %62
  %65 = fadd fast float %64, %63
  %66 = call float @dx.op.unary.f32(i32 24, float %65)  ; Sqrt(value)
  %67 = fmul fast float %66, 2.000000e+00
  %68 = fadd fast float %66, %60
  %69 = fdiv fast float %68, %67
  %70 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %71 = fmul fast float %70, 2.000000e+00
  %72 = fsub fast float 3.000000e+00, %71
  %73 = fmul fast float %70, %70
  %74 = fmul fast float %73, %72
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = fcmp fast une float %85, %86
  br i1 %87, label %88, label %105

; <label>:88                                      ; preds = %56
  %89 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %90 = fadd fast float %89, %10
  %91 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %92 = fadd fast float %91, %11
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %90, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 3
  %95 = fmul fast float %94, 2.000000e+00
  %96 = fadd fast float %95, -1.000000e+00
  %97 = fsub fast float %86, %85
  %98 = fsub fast float %96, %85
  %99 = fdiv fast float %98, %97
  %100 = call float @dx.op.unary.f32(i32 7, float %99)  ; Saturate(value)
  %101 = fmul fast float %100, 2.000000e+00
  %102 = fsub fast float 3.000000e+00, %101
  %103 = fmul fast float %100, %100
  %104 = fmul fast float %103, %102
  br label %105

; <label>:105                                     ; preds = %88, %56
  %106 = phi float [ %104, %88 ], [ 0.000000e+00, %56 ]
  %107 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %109 = fcmp fast une float %107, %108
  br i1 %109, label %110, label %119

; <label>:110                                     ; preds = %105
  %111 = fsub fast float %108, %107
  %112 = fsub fast float %60, %107
  %113 = fdiv fast float %112, %111
  %114 = call float @dx.op.unary.f32(i32 7, float %113)  ; Saturate(value)
  %115 = fmul fast float %114, 2.000000e+00
  %116 = fsub fast float 3.000000e+00, %115
  %117 = fmul fast float %114, %114
  %118 = fmul fast float %117, %116
  br label %119

; <label>:119                                     ; preds = %110, %105
  %120 = phi float [ %118, %110 ], [ 0.000000e+00, %105 ]
  %121 = fsub fast float %80, %76
  %122 = fsub fast float %81, %77
  %123 = fsub fast float %82, %78
  %124 = fmul fast float %120, %121
  %125 = fmul fast float %120, %122
  %126 = fmul fast float %120, %123
  %127 = fadd fast float %124, %76
  %128 = fadd fast float %125, %77
  %129 = fadd fast float %126, %78
  %130 = fsub fast float %12, %127
  %131 = fsub fast float %13, %128
  %132 = fsub fast float %14, %129
  %133 = fmul fast float %130, %74
  %134 = fmul fast float %131, %74
  %135 = fmul fast float %132, %74
  %136 = fadd fast float %133, %127
  %137 = fadd fast float %134, %128
  %138 = fadd fast float %135, %129
  %139 = fsub fast float %120, %106
  %140 = fmul fast float %139, %120
  %141 = fadd fast float %140, %106
  %142 = fsub fast float %74, %141
  %143 = fmul fast float %142, %74
  %144 = fadd fast float %143, %141
  %145 = fmul fast float %144, %15
  %146 = fcmp fast ole float %136, 0x3FA4B5DCC0000000
  %147 = fmul fast float %136, 0x3FB3D07220000000
  %148 = fadd fast float %136, 0x3FAC28F5C0000000
  %149 = fmul fast float %148, 0x3FEE54EDE0000000
  %150 = call float @dx.op.unary.f32(i32 23, float %149)  ; Log(value)
  %151 = fmul fast float %150, 0x4003333340000000
  %152 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %153 = select i1 %146, float %147, float %152
  %154 = fcmp fast ole float %137, 0x3FA4B5DCC0000000
  %155 = fmul fast float %137, 0x3FB3D07220000000
  %156 = fadd fast float %137, 0x3FAC28F5C0000000
  %157 = fmul fast float %156, 0x3FEE54EDE0000000
  %158 = call float @dx.op.unary.f32(i32 23, float %157)  ; Log(value)
  %159 = fmul fast float %158, 0x4003333340000000
  %160 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %161 = select i1 %154, float %155, float %160
  %162 = fcmp fast ole float %138, 0x3FA4B5DCC0000000
  %163 = fmul fast float %138, 0x3FB3D07220000000
  %164 = fadd fast float %138, 0x3FAC28F5C0000000
  %165 = fmul fast float %164, 0x3FEE54EDE0000000
  %166 = call float @dx.op.unary.f32(i32 23, float %165)  ; Log(value)
  %167 = fmul fast float %166, 0x4003333340000000
  %168 = call float @dx.op.unary.f32(i32 21, float %167)  ; Exp(value)
  %169 = select i1 %162, float %163, float %168
  %170 = call float @dx.op.binary.f32(i32 35, float %145, float 0.000000e+00)  ; FMax(a,b)
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = bitcast float %172 to i32
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  %176 = and i32 %173, 4
  %177 = icmp eq i32 %176, 0
  br i1 %175, label %251, label %178, !dx.controlflow.hints !32

; <label>:178                                     ; preds = %119
  %179 = and i32 %173, 2
  %180 = icmp eq i32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %184 = fmul fast float %181, %153
  %185 = fmul fast float %182, %161
  %186 = fmul fast float %183, %169
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = fmul fast float %188, %184
  %190 = fmul fast float %188, %185
  %191 = fmul fast float %188, %186
  br i1 %180, label %251, label %192, !dx.controlflow.hints !33

; <label>:192                                     ; preds = %178
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %204 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %209 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = fmul fast float %199, %194
  %211 = fmul fast float %204, %194
  %212 = fmul fast float %209, %194
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fmul fast float %210, %214
  %216 = fmul fast float %211, %214
  %217 = fmul fast float %212, %214
  %218 = fadd fast float %215, 9.765625e-04
  %219 = fadd fast float %216, 9.765625e-04
  %220 = fadd fast float %217, 9.765625e-04
  %221 = call float @dx.op.unary.f32(i32 23, float %218)  ; Log(value)
  %222 = call float @dx.op.unary.f32(i32 23, float %219)  ; Log(value)
  %223 = call float @dx.op.unary.f32(i32 23, float %220)  ; Log(value)
  %224 = fadd fast float %221, 1.000000e+01
  %225 = fadd fast float %222, 1.000000e+01
  %226 = fadd fast float %223, 1.000000e+01
  %227 = fmul fast float %224, 0x3FA99999A0000000
  %228 = fmul fast float %225, 0x3FA99999A0000000
  %229 = fmul fast float %226, 0x3FA99999A0000000
  %230 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %231 = call float @dx.op.unary.f32(i32 7, float %228)  ; Saturate(value)
  %232 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = fmul fast float %234, %230
  %238 = fmul fast float %235, %231
  %239 = fmul fast float %236, %232
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fadd fast float %237, %241
  %245 = fadd fast float %238, %242
  %246 = fadd fast float %239, %243
  %247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %244, float %245, float %246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  br label %251

; <label>:251                                     ; preds = %192, %178, %119
  %252 = phi float [ %248, %192 ], [ %153, %119 ], [ %189, %178 ]
  %253 = phi float [ %249, %192 ], [ %161, %119 ], [ %190, %178 ]
  %254 = phi float [ %250, %192 ], [ %169, %119 ], [ %191, %178 ]
  %255 = fcmp fast oeq float %170, 0.000000e+00
  br i1 %255, label %256, label %257, !dx.controlflow.hints !34

; <label>:256                                     ; preds = %251
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %257

; <label>:257                                     ; preds = %256, %251
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  br i1 %177, label %258, label %565, !dx.controlflow.hints !35

; <label>:258                                     ; preds = %257
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = bitcast float %260 to i32
  %262 = and i32 %261, 128
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %278, label %264

; <label>:264                                     ; preds = %258
  %265 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %266 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %267 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %268 = fmul fast float %265, 9.687500e-01
  %269 = fmul fast float %266, 9.687500e-01
  %270 = fmul fast float %267, 9.687500e-01
  %271 = fadd fast float %268, 1.562500e-02
  %272 = fadd fast float %269, 1.562500e-02
  %273 = fadd fast float %270, 1.562500e-02
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %271, float %272, float %273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  br label %565

; <label>:278                                     ; preds = %258
  %279 = and i32 %261, 127
  switch i32 %279, label %565 [
    i32 1, label %280
    i32 2, label %280
    i32 0, label %280
    i32 3, label %310
    i32 4, label %431
  ]

; <label>:280                                     ; preds = %278, %278, %278
  %281 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %282 = call float @dx.op.unary.f32(i32 7, float %253)  ; Saturate(value)
  %283 = call float @dx.op.unary.f32(i32 7, float %254)  ; Saturate(value)
  %284 = call float @dx.op.unary.f32(i32 23, float %281)  ; Log(value)
  %285 = call float @dx.op.unary.f32(i32 23, float %282)  ; Log(value)
  %286 = call float @dx.op.unary.f32(i32 23, float %283)  ; Log(value)
  %287 = fmul fast float %284, 0x3FDAAAAAA0000000
  %288 = fmul fast float %285, 0x3FDAAAAAA0000000
  %289 = fmul fast float %286, 0x3FDAAAAAA0000000
  %290 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %291 = call float @dx.op.unary.f32(i32 21, float %288)  ; Exp(value)
  %292 = call float @dx.op.unary.f32(i32 21, float %289)  ; Exp(value)
  %293 = fmul fast float %290, 0x3FF0E147A0000000
  %294 = fmul fast float %291, 0x3FF0E147A0000000
  %295 = fmul fast float %292, 0x3FF0E147A0000000
  %296 = fadd fast float %293, 0xBFAC28F5C0000000
  %297 = fadd fast float %294, 0xBFAC28F5C0000000
  %298 = fadd fast float %295, 0xBFAC28F5C0000000
  %299 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %300 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %301 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %302 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %304 = fmul fast float %302, %299
  %305 = fmul fast float %302, %300
  %306 = fmul fast float %302, %301
  %307 = fadd fast float %304, %303
  %308 = fadd fast float %305, %303
  %309 = fadd fast float %306, %303
  br label %565

; <label>:310                                     ; preds = %278
  %311 = fmul fast float %252, 0x4163D57C00000000
  %312 = fmul fast float %253, 0x4163D57C00000000
  %313 = fmul fast float %254, 0x4163D57C00000000
  %314 = fadd fast float %311, 9.999980e+05
  %315 = fadd fast float %312, 9.999980e+05
  %316 = fadd fast float %313, 9.999980e+05
  %317 = fmul fast float %314, %252
  %318 = fmul fast float %315, %253
  %319 = fmul fast float %316, %254
  %320 = fadd fast float %317, 0xC0AFE17A60000000
  %321 = fadd fast float %318, 0xC0AFE17A60000000
  %322 = fadd fast float %319, 0xC0AFE17A60000000
  %323 = fmul fast float %320, %252
  %324 = fmul fast float %321, %253
  %325 = fmul fast float %322, %254
  %326 = fmul fast float %252, 0x40F753C340000000
  %327 = fmul fast float %253, 0x40F753C340000000
  %328 = fmul fast float %254, 0x40F753C340000000
  %329 = fsub fast float 9.999990e+06, %326
  %330 = fsub fast float 9.999990e+06, %327
  %331 = fsub fast float 9.999990e+06, %328
  %332 = fmul fast float %329, %252
  %333 = fmul fast float %330, %253
  %334 = fmul fast float %331, %254
  %335 = fadd fast float %332, 0x4136D1DD80000000
  %336 = fadd fast float %333, 0x4136D1DD80000000
  %337 = fadd fast float %334, 0x4136D1DD80000000
  %338 = fmul fast float %335, %252
  %339 = fmul fast float %336, %253
  %340 = fmul fast float %337, %254
  %341 = fadd fast float %338, 1.000000e+00
  %342 = fadd fast float %339, 1.000000e+00
  %343 = fadd fast float %340, 1.000000e+00
  %344 = fdiv fast float %323, %341
  %345 = fdiv fast float %324, %342
  %346 = fdiv fast float %325, %343
  %347 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %348 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %349 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %350 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %351 = fmul fast float %347, 0x3FE413A920000000
  %352 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %348, float %351)  ; FMad(a,b,c)
  %353 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %349, float %352)  ; FMad(a,b,c)
  %354 = fmul fast float %347, 0x3FB1B089A0000000
  %355 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %348, float %354)  ; FMad(a,b,c)
  %356 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %349, float %355)  ; FMad(a,b,c)
  %357 = fmul fast float %347, 0x3F90CB2960000000
  %358 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %348, float %357)  ; FMad(a,b,c)
  %359 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %349, float %358)  ; FMad(a,b,c)
  %360 = fmul fast float %353, %350
  %361 = fmul fast float %356, %350
  %362 = fmul fast float %359, %350
  %363 = fmul fast float %360, 0x3F847AE140000000
  %364 = fmul fast float %361, 0x3F847AE140000000
  %365 = fmul fast float %362, 0x3F847AE140000000
  %366 = fmul fast float %360, 0x40B4D2F520000000
  %367 = fmul fast float %361, 0x40B4D2F520000000
  %368 = fmul fast float %362, 0x40B4D2F520000000
  %369 = fadd fast float %366, 0x41869ECF20000000
  %370 = fadd fast float %367, 0x41869ECF20000000
  %371 = fadd fast float %368, 0x41869ECF20000000
  %372 = fmul fast float %369, %363
  %373 = fmul fast float %370, %364
  %374 = fmul fast float %371, %365
  %375 = fadd fast float %372, 0x417BB79C60000000
  %376 = fadd fast float %373, 0x417BB79C60000000
  %377 = fadd fast float %374, 0x417BB79C60000000
  %378 = fmul fast float %375, %363
  %379 = fmul fast float %376, %364
  %380 = fmul fast float %377, %365
  %381 = fadd fast float %378, 0x41218DE180000000
  %382 = fadd fast float %379, 0x41218DE180000000
  %383 = fadd fast float %380, 0x41218DE180000000
  %384 = fmul fast float %381, %363
  %385 = fmul fast float %382, %364
  %386 = fmul fast float %383, %365
  %387 = fadd fast float %384, 0x4077F174E0000000
  %388 = fadd fast float %385, 0x4077F174E0000000
  %389 = fadd fast float %386, 0x4077F174E0000000
  %390 = fmul fast float %387, %363
  %391 = fmul fast float %388, %364
  %392 = fmul fast float %389, %365
  %393 = fadd fast float %390, 0x3F3FF79B80000000
  %394 = fadd fast float %391, 0x3F3FF79B80000000
  %395 = fadd fast float %392, 0x3F3FF79B80000000
  %396 = fmul fast float %360, 0x412442D320000000
  %397 = fmul fast float %361, 0x412442D320000000
  %398 = fmul fast float %362, 0x412442D320000000
  %399 = fadd fast float %396, 0x419385D5C0000000
  %400 = fadd fast float %397, 0x419385D5C0000000
  %401 = fadd fast float %398, 0x419385D5C0000000
  %402 = fmul fast float %399, %363
  %403 = fmul fast float %400, %364
  %404 = fmul fast float %401, %365
  %405 = fadd fast float %402, 4.182885e+06
  %406 = fadd fast float %403, 4.182885e+06
  %407 = fadd fast float %404, 4.182885e+06
  %408 = fmul fast float %405, %363
  %409 = fmul fast float %406, %364
  %410 = fmul fast float %407, %365
  %411 = fadd fast float %408, 0x40C4D633C0000000
  %412 = fadd fast float %409, 0x40C4D633C0000000
  %413 = fadd fast float %410, 0x40C4D633C0000000
  %414 = fmul fast float %411, %363
  %415 = fmul fast float %412, %364
  %416 = fmul fast float %413, %365
  %417 = fadd fast float %414, 1.000000e+00
  %418 = fadd fast float %415, 1.000000e+00
  %419 = fadd fast float %416, 1.000000e+00
  %420 = fdiv fast float %393, %417
  %421 = fdiv fast float %394, %418
  %422 = fdiv fast float %395, %419
  %423 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %424 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %425 = fmul fast float %423, %420
  %426 = fmul fast float %423, %421
  %427 = fmul fast float %423, %422
  %428 = fadd fast float %425, %424
  %429 = fadd fast float %426, %424
  %430 = fadd fast float %427, %424
  br label %565

; <label>:431                                     ; preds = %278
  %432 = fmul fast float %252, 0x4163D57C00000000
  %433 = fmul fast float %253, 0x4163D57C00000000
  %434 = fmul fast float %254, 0x4163D57C00000000
  %435 = fadd fast float %432, 9.999980e+05
  %436 = fadd fast float %433, 9.999980e+05
  %437 = fadd fast float %434, 9.999980e+05
  %438 = fmul fast float %435, %252
  %439 = fmul fast float %436, %253
  %440 = fmul fast float %437, %254
  %441 = fadd fast float %438, 0xC0AFE17A60000000
  %442 = fadd fast float %439, 0xC0AFE17A60000000
  %443 = fadd fast float %440, 0xC0AFE17A60000000
  %444 = fmul fast float %441, %252
  %445 = fmul fast float %442, %253
  %446 = fmul fast float %443, %254
  %447 = fmul fast float %252, 0x40F753C340000000
  %448 = fmul fast float %253, 0x40F753C340000000
  %449 = fmul fast float %254, 0x40F753C340000000
  %450 = fsub fast float 9.999990e+06, %447
  %451 = fsub fast float 9.999990e+06, %448
  %452 = fsub fast float 9.999990e+06, %449
  %453 = fmul fast float %450, %252
  %454 = fmul fast float %451, %253
  %455 = fmul fast float %452, %254
  %456 = fadd fast float %453, 0x4136D1DD80000000
  %457 = fadd fast float %454, 0x4136D1DD80000000
  %458 = fadd fast float %455, 0x4136D1DD80000000
  %459 = fmul fast float %456, %252
  %460 = fmul fast float %457, %253
  %461 = fmul fast float %458, %254
  %462 = fadd fast float %459, 1.000000e+00
  %463 = fadd fast float %460, 1.000000e+00
  %464 = fadd fast float %461, 1.000000e+00
  %465 = fdiv fast float %444, %462
  %466 = fdiv fast float %445, %463
  %467 = fdiv fast float %446, %464
  %468 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %469 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %470 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %471 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %472 = fmul fast float %468, 0x3FEA519BC0000000
  %473 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %469, float %472)  ; FMad(a,b,c)
  %474 = fmul fast float %468, 0x3FA0FED480000000
  %475 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %469, float %474)  ; FMad(a,b,c)
  %476 = fmul fast float %468, 0x3F917E1C00000000
  %477 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %469, float %476)  ; FMad(a,b,c)
  %478 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %470, float %477)  ; FMad(a,b,c)
  %479 = call float @dx.op.binary.f32(i32 35, float %468, float %469)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %479, float %470)  ; FMax(a,b)
  %481 = fadd fast float %480, -1.000000e+00
  %482 = fmul fast float %481, 2.500000e-01
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = fsub fast float 1.000000e+00, %483
  %485 = fmul fast float %484, %473
  %486 = fmul fast float %484, %475
  %487 = fmul fast float %484, %478
  %488 = fmul fast float %483, %468
  %489 = fmul fast float %483, %469
  %490 = fmul fast float %483, %470
  %491 = fadd fast float %485, %488
  %492 = fadd fast float %486, %489
  %493 = fadd fast float %487, %490
  %494 = fmul fast float %491, %471
  %495 = fmul fast float %492, %471
  %496 = fmul fast float %493, %471
  %497 = fmul fast float %494, 0x3F847AE140000000
  %498 = fmul fast float %495, 0x3F847AE140000000
  %499 = fmul fast float %496, 0x3F847AE140000000
  %500 = fmul fast float %494, 0x40B4D2F520000000
  %501 = fmul fast float %495, 0x40B4D2F520000000
  %502 = fmul fast float %496, 0x40B4D2F520000000
  %503 = fadd fast float %500, 0x41869ECF20000000
  %504 = fadd fast float %501, 0x41869ECF20000000
  %505 = fadd fast float %502, 0x41869ECF20000000
  %506 = fmul fast float %503, %497
  %507 = fmul fast float %504, %498
  %508 = fmul fast float %505, %499
  %509 = fadd fast float %506, 0x417BB79C60000000
  %510 = fadd fast float %507, 0x417BB79C60000000
  %511 = fadd fast float %508, 0x417BB79C60000000
  %512 = fmul fast float %509, %497
  %513 = fmul fast float %510, %498
  %514 = fmul fast float %511, %499
  %515 = fadd fast float %512, 0x41218DE180000000
  %516 = fadd fast float %513, 0x41218DE180000000
  %517 = fadd fast float %514, 0x41218DE180000000
  %518 = fmul fast float %515, %497
  %519 = fmul fast float %516, %498
  %520 = fmul fast float %517, %499
  %521 = fadd fast float %518, 0x4077F174E0000000
  %522 = fadd fast float %519, 0x4077F174E0000000
  %523 = fadd fast float %520, 0x4077F174E0000000
  %524 = fmul fast float %521, %497
  %525 = fmul fast float %522, %498
  %526 = fmul fast float %523, %499
  %527 = fadd fast float %524, 0x3F3FF79B80000000
  %528 = fadd fast float %525, 0x3F3FF79B80000000
  %529 = fadd fast float %526, 0x3F3FF79B80000000
  %530 = fmul fast float %494, 0x412442D320000000
  %531 = fmul fast float %495, 0x412442D320000000
  %532 = fmul fast float %496, 0x412442D320000000
  %533 = fadd fast float %530, 0x419385D5C0000000
  %534 = fadd fast float %531, 0x419385D5C0000000
  %535 = fadd fast float %532, 0x419385D5C0000000
  %536 = fmul fast float %533, %497
  %537 = fmul fast float %534, %498
  %538 = fmul fast float %535, %499
  %539 = fadd fast float %536, 4.182885e+06
  %540 = fadd fast float %537, 4.182885e+06
  %541 = fadd fast float %538, 4.182885e+06
  %542 = fmul fast float %539, %497
  %543 = fmul fast float %540, %498
  %544 = fmul fast float %541, %499
  %545 = fadd fast float %542, 0x40C4D633C0000000
  %546 = fadd fast float %543, 0x40C4D633C0000000
  %547 = fadd fast float %544, 0x40C4D633C0000000
  %548 = fmul fast float %545, %497
  %549 = fmul fast float %546, %498
  %550 = fmul fast float %547, %499
  %551 = fadd fast float %548, 1.000000e+00
  %552 = fadd fast float %549, 1.000000e+00
  %553 = fadd fast float %550, 1.000000e+00
  %554 = fdiv fast float %527, %551
  %555 = fdiv fast float %528, %552
  %556 = fdiv fast float %529, %553
  %557 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %558 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %559 = fmul fast float %557, %554
  %560 = fmul fast float %557, %555
  %561 = fmul fast float %557, %556
  %562 = fadd fast float %559, %558
  %563 = fadd fast float %560, %558
  %564 = fadd fast float %561, %558
  br label %565

; <label>:565                                     ; preds = %431, %310, %280, %278, %264, %257
  %566 = phi float [ %252, %257 ], [ %275, %264 ], [ %252, %278 ], [ %562, %431 ], [ %428, %310 ], [ %307, %280 ]
  %567 = phi float [ %253, %257 ], [ %276, %264 ], [ %253, %278 ], [ %563, %431 ], [ %429, %310 ], [ %308, %280 ]
  %568 = phi float [ %254, %257 ], [ %277, %264 ], [ %254, %278 ], [ %564, %431 ], [ %430, %310 ], [ %309, %280 ]
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %572 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %573 = fmul fast float %572, %571
  %574 = call float @dx.op.unary.f32(i32 21, float %573)  ; Exp(value)
  %575 = fmul fast float %574, %570
  %576 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %578 = fmul fast float %572, %577
  %579 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %580 = fmul fast float %579, %576
  %581 = fadd fast float %580, %575
  %582 = fmul fast float %581, %566
  %583 = fmul fast float %581, %567
  %584 = fmul fast float %581, %568
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %583)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %581)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!18}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !16}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 240, null}
!14 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 96, null}
!15 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15]}
!19 = !{void ()* @ps_main, !"ps_main", !20, !4, !30}
!20 = !{!21, !28, null}
!21 = !{!22, !25, !27}
!22 = !{i32 0, !"SV_Position", i8 9, i8 3, !23, i8 4, i32 1, i8 4, i32 0, i8 0, !24}
!23 = !{i32 0}
!24 = !{i32 3, i32 3}
!25 = !{i32 1, !"COLOR", i8 9, i8 0, !23, i8 2, i32 1, i8 4, i32 1, i8 0, !26}
!26 = !{i32 3, i32 15}
!27 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !23, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!28 = !{!29}
!29 = !{i32 0, !"SV_Target", i8 9, i8 16, !23, i8 0, i32 1, i8 4, i32 0, i8 0, !26}
!30 = !{i32 0, i64 16}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}

