;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float     z 
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xy          3     NONE   float   xy  
; TEXCOORD                 1   xyz         4     NONE   float   xyz 
; TEXCOORD                 2   xyzw        5     NONE   float       
; TEXCOORD                 3   xyz         6     NONE   float       
; QUAD_POSITION            0   xyzw        7     NONE   float      w
; COLOR                    3   xyz         8     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: e8067479358722a45a1050f1b10fc19d
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
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
;   [192 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture     f32          2d      T2     t12,space2     1
;                                   texture    byte         r/o      T3             t0     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 31, 32, 34 }
;   output 1 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 31, 32, 34 }
;   output 2 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 31, 32, 34 }
;   output 3 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 31, 32, 34 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = mul i32 %7, 208
  %19 = add i32 %18, 188
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %23, float 1.000000e+00, float %15
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %45, label %26, !dx.controlflow.hints !44

; <label>:26                                      ; preds = %0
  %27 = add i32 %18, 64
  %28 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = fadd fast float %29, 1.000000e+00
  %31 = fmul fast float %30, %15
  %32 = fsub fast float %31, %29
  %33 = fsub fast float %30, %32
  %34 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %35 = fsub fast float 1.000000e+00, %31
  %36 = call float @dx.op.unary.f32(i32 7, float %35)  ; Saturate(value)
  %37 = fsub fast float %34, %36
  %38 = fsub fast float %24, %36
  %39 = fdiv fast float %38, %37
  %40 = call float @dx.op.unary.f32(i32 7, float %39)  ; Saturate(value)
  %41 = fmul fast float %40, 2.000000e+00
  %42 = fsub fast float 3.000000e+00, %41
  %43 = fmul fast float %40, %40
  %44 = fmul fast float %43, %42
  br label %45

; <label>:45                                      ; preds = %26, %0
  %46 = phi float [ %44, %26 ], [ %24, %0 ]
  %47 = fcmp fast ogt float %46, 0.000000e+00
  br i1 %47, label %49, label %48

; <label>:48                                      ; preds = %45
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %49

; <label>:49                                      ; preds = %48, %45
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %52 = fsub fast float %10, %51
  %53 = fsub fast float %11, %51
  %54 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %4, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %12)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = fmul fast float %55, %46
  %57 = call float @dx.op.unary.f32(i32 7, float %56)  ; Saturate(value)
  %58 = add i32 %8, 40
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = and i32 %60, 255
  %62 = uitofp i32 %61 to float
  %63 = fmul fast float %62, 0x3F70101020000000
  %64 = fmul fast float %63, %63
  %65 = add i32 %8, 124
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = add i32 %67, 0
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %69, %dx.types.Handle %17, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fmul fast float %64, %71
  %73 = fadd fast float %72, -1.000000e+00
  %74 = fmul fast float %9, 2.000000e+00
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = fmul fast float %74, %77
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = fmul fast float %80, %78
  %82 = fadd fast float %81, -1.000000e+00
  %83 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %84 = fmul fast float %57, 0x3FEFFF8000000000
  %85 = fmul fast float %84, %73
  %86 = fmul fast float %85, %83
  %87 = fadd fast float %86, 1.000000e+00
  %88 = call float @dx.op.unary.f32(i32 23, float %87)  ; Log(value)
  %89 = fmul fast float %88, 0xBFE62E4300000000
  %90 = fdiv fast float %89, %78
  %91 = fsub fast float %16, %78
  %92 = fmul fast float %90, 0x3FD45F3060000000
  %93 = fsub fast float 1.500000e+00, %91
  %94 = fmul fast float %93, 0x400921FB60000000
  %95 = call float @dx.op.unary.f32(i32 13, float %94)  ; Sin(value)
  %96 = fsub fast float 1.500000e+00, %16
  %97 = fmul fast float %96, 0x400921FB60000000
  %98 = call float @dx.op.unary.f32(i32 13, float %97)  ; Sin(value)
  %99 = fsub fast float %95, %98
  %100 = fmul fast float %92, %99
  %101 = fmul fast float %90, 0x3FC45F3060000000
  %102 = fmul fast float %93, 0x401921FB60000000
  %103 = call float @dx.op.unary.f32(i32 13, float %102)  ; Sin(value)
  %104 = fmul fast float %96, 0x401921FB60000000
  %105 = call float @dx.op.unary.f32(i32 13, float %104)  ; Sin(value)
  %106 = fsub fast float %103, %105
  %107 = fmul fast float %101, %106
  %108 = fmul fast float %90, 0x3FBB2995E0000000
  %109 = fmul fast float %93, 0x4022D97C80000000
  %110 = call float @dx.op.unary.f32(i32 13, float %109)  ; Sin(value)
  %111 = fmul fast float %96, 0x4022D97C80000000
  %112 = call float @dx.op.unary.f32(i32 13, float %111)  ; Sin(value)
  %113 = fsub fast float %110, %112
  %114 = fmul fast float %108, %113
  %115 = fmul fast float %90, 0x3FB45F3060000000
  %116 = fmul fast float %93, 0x402921FB60000000
  %117 = call float @dx.op.unary.f32(i32 13, float %116)  ; Sin(value)
  %118 = fmul fast float %96, 0x402921FB60000000
  %119 = call float @dx.op.unary.f32(i32 13, float %118)  ; Sin(value)
  %120 = fsub fast float %117, %119
  %121 = fmul fast float %115, %120
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %122 = call float @dx.op.binary.f32(i32 36, float %100, float 3.225500e+04)  ; FMin(a,b)
  %123 = call float @dx.op.binary.f32(i32 36, float %107, float 3.225500e+04)  ; FMin(a,b)
  %124 = call float @dx.op.binary.f32(i32 36, float %114, float 3.225500e+04)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 36, float %121, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %123)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %124)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!17}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!14 = !{!15, !16}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!17 = !{[37 x i32] [i32 35, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15]}
!18 = !{void ()* @ps_main, !"ps_main", !19, !4, !43}
!19 = !{!20, !40, null}
!20 = !{!21, !23, !25, !27, !29, !32, !34, !36, !37, !39}
!21 = !{i32 0, !"SV_Position", i8 9, i8 3, !22, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!22 = !{i32 0}
!23 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 1, i8 0, !24}
!24 = !{i32 3, i32 4}
!25 = !{i32 2, !"COLOR", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 2, i8 0, !26}
!26 = !{i32 3, i32 8}
!27 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 2, i32 3, i8 0, !28}
!28 = !{i32 3, i32 3}
!29 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 3, i32 4, i8 0, !31}
!30 = !{i32 1}
!31 = !{i32 3, i32 7}
!32 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !33, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!33 = !{i32 2}
!34 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 3, i32 6, i8 0, null}
!35 = !{i32 3}
!36 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !22, i8 1, i32 1, i8 4, i32 7, i8 0, !26}
!37 = !{i32 8, !"COLOR", i8 5, i8 0, !35, i8 1, i32 1, i8 3, i32 8, i8 0, !38}
!38 = !{i32 3, i32 5}
!39 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !22, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!40 = !{!41}
!41 = !{i32 0, !"SV_Target", i8 9, i8 16, !22, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!42 = !{i32 3, i32 15}
!43 = !{i32 0, i64 24}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}

