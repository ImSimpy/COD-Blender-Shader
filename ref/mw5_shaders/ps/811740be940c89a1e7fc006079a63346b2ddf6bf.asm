;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float   xyzw
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xyzw        3     NONE   float   xyzw
; TEXCOORD                 3   xyz         4     NONE   float       
; TEXCOORD                 4   xyzw        5     NONE   float   xy  
; QUAD_POSITION            0   xyzw        6     NONE   float      w
; COLOR                    3   xyz         7     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0ee32e1d67a3dc843b260a681f58bd5f
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
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2             t0     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 27, 28, 30 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 27, 28, 30 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 27, 28, 30 }
;   output 3 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 27, 28, 30 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = fadd fast float %15, 1.000000e+00
  %21 = fsub fast float 1.000000e+00, %16
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = fmul fast float %20, %23
  %31 = fmul fast float %30, %26
  %32 = fmul fast float %31, %28
  %33 = fmul fast float %21, %24
  %34 = fmul fast float %33, %26
  %35 = fmul fast float %34, %29
  %36 = fsub fast float 1.000000e+00, %32
  %37 = fsub fast float 1.000000e+00, %35
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = fmul fast float %36, %39
  %42 = fmul fast float %36, %40
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fmul fast float %37, %44
  %47 = fmul fast float %37, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = fadd fast float %46, %49
  %52 = fadd fast float %51, %41
  %53 = fadd fast float %47, %50
  %54 = fadd fast float %53, %42
  %55 = fmul fast float %52, %18
  %56 = fmul fast float %54, %18
  %57 = mul i32 %5, 208
  %58 = add i32 %57, 188
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = add i32 %6, 104
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = bitcast i32 %63 to float
  %65 = add i32 %6, 88
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = extractvalue %dx.types.ResRet.i32 %66, 1
  %69 = extractvalue %dx.types.ResRet.i32 %66, 2
  %70 = extractvalue %dx.types.ResRet.i32 %66, 3
  %71 = bitcast i32 %67 to float
  %72 = bitcast i32 %68 to float
  %73 = bitcast i32 %69 to float
  %74 = bitcast i32 %70 to float
  %75 = add i32 %6, 128
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = add i32 %77, 0
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = fmul fast float %73, %10
  %81 = fmul fast float %74, %11
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %84 = fmul fast float %83, %71
  %85 = fmul fast float %83, %72
  %86 = fadd fast float %84, %80
  %87 = fadd fast float %85, %81
  %88 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %79, %dx.types.Handle %19, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = fmul fast float %89, 2.000000e+00
  %92 = fmul fast float %90, 2.000000e+00
  %93 = fadd fast float %91, -1.000000e+00
  %94 = fadd fast float %92, -1.000000e+00
  %95 = fmul fast float %93, %64
  %96 = fmul fast float %94, %64
  %97 = fadd fast float %95, %10
  %98 = fadd fast float %96, %11
  %99 = and i32 %60, 16
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, float 1.000000e+00, float %14
  %102 = add i32 %6, 124
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.i32 %103, 0
  %105 = add i32 %104, 0
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %106, %dx.types.Handle %19, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float %108, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fmul fast float %110, %101
  %112 = icmp eq i32 %99, 0
  br i1 %112, label %132, label %113, !dx.controlflow.hints !38

; <label>:113                                     ; preds = %0
  %114 = add i32 %57, 64
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fadd fast float %116, 1.000000e+00
  %118 = fmul fast float %117, %14
  %119 = fsub fast float %118, %116
  %120 = fsub fast float %117, %119
  %121 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %122 = fsub fast float 1.000000e+00, %118
  %123 = call float @dx.op.unary.f32(i32 7, float %122)  ; Saturate(value)
  %124 = fsub fast float %121, %123
  %125 = fsub fast float %111, %123
  %126 = fdiv fast float %125, %124
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = fmul fast float %127, 2.000000e+00
  %129 = fsub fast float 3.000000e+00, %128
  %130 = fmul fast float %127, %127
  %131 = fmul fast float %130, %129
  br label %132

; <label>:132                                     ; preds = %113, %0
  %133 = phi float [ %131, %113 ], [ %111, %0 ]
  %134 = and i32 %60, 1024
  %135 = icmp eq i32 %134, 0
  %136 = add i32 %6, 132
  br i1 %135, label %169, label %137, !dx.controlflow.hints !39

; <label>:137                                     ; preds = %132
  %138 = add i32 %57, 48
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = fadd fast float %12, -5.000000e-01
  %143 = fmul fast float %142, 2.000000e+00
  %144 = fmul fast float %8, %143
  %145 = fmul fast float %9, %143
  %146 = fmul fast float %144, %141
  %147 = fmul fast float %145, %141
  %148 = call float @dx.op.dot2.f32(i32 54, float %8, float %9, float %8, float %9)  ; Dot2(ax,ay,bx,by)
  %149 = call float @dx.op.unary.f32(i32 25, float %148)  ; Rsqrt(value)
  %150 = fmul fast float %146, %149
  %151 = fmul fast float %147, %149
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = fsub fast float %55, %146
  %156 = fadd fast float %155, %153
  %157 = fadd fast float %156, %150
  %158 = fsub fast float %56, %147
  %159 = fadd fast float %158, %154
  %160 = fadd fast float %159, %151
  %161 = fmul fast float %157, %140
  %162 = fmul fast float %160, %140
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = add i32 %164, 0
  %166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %166, %dx.types.Handle %19, float %162, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  br label %176

; <label>:169                                     ; preds = %132
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = add i32 %171, 0
  %173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %173, %dx.types.Handle %19, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  br label %176

; <label>:176                                     ; preds = %169, %137
  %177 = phi float [ %168, %137 ], [ %175, %169 ]
  %178 = fmul fast float %177, %133
  %179 = fcmp fast ogt float %178, 0.000000e+00
  br i1 %179, label %181, label %180

; <label>:180                                     ; preds = %176
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %181

; <label>:181                                     ; preds = %180, %176
  %182 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %183 = fsub fast float 1.000000e+00, %182
  %184 = call float @dx.op.dot3.f32(i32 55, float %183, float %183, float %183, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = fmul fast float %7, 2.000000e+00
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %189 = fmul fast float %185, %188
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = fmul fast float %191, %189
  %193 = fadd fast float %192, -1.000000e+00
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fadd fast float %184, -1.000000e+00
  %196 = fmul fast float %195, 0x3FEFFF8000000000
  %197 = fmul fast float %196, %194
  %198 = fadd fast float %197, 1.000000e+00
  %199 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %200 = fmul fast float %199, 0xBFE62E4300000000
  %201 = fdiv fast float %200, %189
  %202 = fsub fast float %17, %189
  %203 = fmul fast float %201, 0x3FD45F3060000000
  %204 = fsub fast float 1.500000e+00, %202
  %205 = fmul fast float %204, 0x400921FB60000000
  %206 = call float @dx.op.unary.f32(i32 13, float %205)  ; Sin(value)
  %207 = fsub fast float 1.500000e+00, %17
  %208 = fmul fast float %207, 0x400921FB60000000
  %209 = call float @dx.op.unary.f32(i32 13, float %208)  ; Sin(value)
  %210 = fsub fast float %206, %209
  %211 = fmul fast float %203, %210
  %212 = fmul fast float %201, 0x3FC45F3060000000
  %213 = fmul fast float %204, 0x401921FB60000000
  %214 = call float @dx.op.unary.f32(i32 13, float %213)  ; Sin(value)
  %215 = fmul fast float %207, 0x401921FB60000000
  %216 = call float @dx.op.unary.f32(i32 13, float %215)  ; Sin(value)
  %217 = fsub fast float %214, %216
  %218 = fmul fast float %212, %217
  %219 = fmul fast float %201, 0x3FBB2995E0000000
  %220 = fmul fast float %204, 0x4022D97C80000000
  %221 = call float @dx.op.unary.f32(i32 13, float %220)  ; Sin(value)
  %222 = fmul fast float %207, 0x4022D97C80000000
  %223 = call float @dx.op.unary.f32(i32 13, float %222)  ; Sin(value)
  %224 = fsub fast float %221, %223
  %225 = fmul fast float %219, %224
  %226 = fmul fast float %201, 0x3FB45F3060000000
  %227 = fmul fast float %204, 0x402921FB60000000
  %228 = call float @dx.op.unary.f32(i32 13, float %227)  ; Sin(value)
  %229 = fmul fast float %207, 0x402921FB60000000
  %230 = call float @dx.op.unary.f32(i32 13, float %229)  ; Sin(value)
  %231 = fsub fast float %228, %230
  %232 = fmul fast float %226, %231
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %233 = call float @dx.op.binary.f32(i32 36, float %211, float 3.225500e+04)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 36, float %218, float 3.225500e+04)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 36, float %225, float 3.225500e+04)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 36, float %232, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %233)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %234)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %235)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %236)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !13}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[33 x i32] [i32 31, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !37}
!17 = !{!18, !35, null}
!18 = !{!19, !21, !23, !25, !26, !28, !31, !32, !34}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!20 = !{i32 0}
!21 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !22}
!22 = !{i32 3, i32 15}
!23 = !{i32 2, !"COLOR", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 2, i8 0, !24}
!24 = !{i32 3, i32 8}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 3, i8 0, !22}
!26 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 3, i32 4, i8 0, null}
!27 = !{i32 3}
!28 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 5, i8 0, !30}
!29 = !{i32 4}
!30 = !{i32 3, i32 3}
!31 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !20, i8 1, i32 1, i8 4, i32 6, i8 0, !24}
!32 = !{i32 7, !"COLOR", i8 5, i8 0, !27, i8 1, i32 1, i8 3, i32 7, i8 0, !33}
!33 = !{i32 3, i32 5}
!34 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !20, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!35 = !{!36}
!36 = !{i32 0, !"SV_Target", i8 9, i8 16, !20, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!37 = !{i32 0, i64 24}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}

