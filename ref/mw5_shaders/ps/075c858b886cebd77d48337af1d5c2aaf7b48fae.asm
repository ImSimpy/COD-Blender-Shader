;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TEXCOORD                 1     z         1     NONE   float     z 
; TEXCOORD                 3      w        1     NONE   float      w
; TANGENT                  0   xyz         2     NONE   float   xy  
; COLOR                    0   xyzw        3     NONE   float   xyzw
; COLOR_SATURATION         0   x           4     NONE   float   x   
; INDEX                    0    y          4     NONE    uint    y  
; TEXCOORD                 2     z         4     NONE   float     z 
; TEXCOORD                 4   xyzw        5     NONE   float   xyz 
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
; SV_Target                2   xyzw        2   TARGET   float   xyzw
;
; shader hash: f59c1b57a2ca49f70e98a99b8a077c39
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
; TANGENT                  0                 linear       
; COLOR                    0        nointerpolation       
; COLOR_SATURATION         0        nointerpolation       
; INDEX                    0        nointerpolation       
; TEXCOORD                 4        nointerpolation       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Target                2                              
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32          2d      T1     t65,space2     1
;                                   texture     u32          2d      T2     t64,space2     1
;                                   texture    byte         r/o      T3     t38,space1     1
;                                   texture    byte         r/o      T4     t39,space1     1
;                                   texture    byte         r/o      T5     t40,space1     1
;                                   texture    byte         r/o      T6             t0     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 12, 15, 16, 17, 20, 21, 22 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 13, 15, 16, 17, 20, 21, 22 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 14, 15, 16, 17, 20, 21, 22 }
;   output 3 depends on inputs: { 4, 5, 6, 7, 15, 17, 18 }
;   output 4 depends on inputs: { 4, 5, 8, 9, 17 }
;   output 5 depends on inputs: { 4, 5, 8, 9, 17 }
;   output 6 depends on inputs: { 4, 5, 17 }
;   output 7 depends on inputs: { 4, 5, 7, 15, 17 }
;   output 8 depends on inputs: { 4, 5, 15, 17 }
;   output 9 depends on inputs: { 4, 5, 17 }
;   output 10 depends on inputs: { 0, 1, 4, 5, 12, 13, 14, 15, 16, 17, 20, 21, 22 }
;   output 11 depends on inputs: { 4, 5, 6, 7, 15, 17, 18 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
%GfxTerrainDecalDrawArgsData = type { i32, i32, i32, i32, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = mul i32 %16, 116
  %29 = add i32 %28, 24
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = add i32 %28, 48
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = add i32 %28, 56
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = add i32 %28, 64
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = add i32 %28, 68
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = add i32 %28, 80
  %46 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = add i32 %28, 84
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = add i32 %28, 92
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = add i32 %38, 0
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %55, %dx.types.Handle %7, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = and i32 %53, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %128, label %60, !dx.controlflow.hints !48

; <label>:60                                      ; preds = %0
  %61 = add i32 %28, 52
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = add i32 %63, 0
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %65, %dx.types.Handle %7, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = extractvalue %dx.types.ResRet.f32 %66, 3
  %71 = and i32 %32, 255
  %72 = uitofp i32 %71 to float
  %73 = lshr i32 %32, 8
  %74 = and i32 %73, 255
  %75 = uitofp i32 %74 to float
  %76 = lshr i32 %32, 16
  %77 = and i32 %76, 255
  %78 = uitofp i32 %77 to float
  %79 = fmul fast float %78, 0x3F70101000000000
  %80 = fmul fast float %67, %72
  %81 = fadd fast float %80, %75
  %82 = fmul fast float %81, 0x3F70101000000000
  %83 = fadd fast float %68, -5.000000e-01
  %84 = fadd fast float %70, -5.000000e-01
  %85 = fmul fast float %83, %79
  %86 = fmul fast float %84, %79
  %87 = fadd fast float %85, 5.000000e-01
  %88 = fadd fast float %86, 5.000000e-01
  %89 = fmul fast float %87, 2.000000e+00
  %90 = fadd fast float %89, -1.000000e+00
  %91 = fmul fast float %88, 2.000000e+00
  %92 = fadd fast float %91, -1.000000e+00
  %93 = fadd fast float %90, %92
  %94 = fmul fast float %93, 5.000000e-01
  %95 = fsub fast float %90, %92
  %96 = fmul fast float %95, 5.000000e-01
  %97 = call float @dx.op.unary.f32(i32 6, float %94)  ; FAbs(value)
  %98 = fsub fast float 1.000000e+00, %97
  %99 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %100 = fsub fast float %98, %99
  %101 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %100, float %94, float %96, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = call float @dx.op.unary.f32(i32 25, float %101)  ; Rsqrt(value)
  %103 = fmul fast float %94, %102
  %104 = fmul fast float %96, %102
  %105 = fmul fast float %102, %100
  %106 = call float @dx.op.dot3.f32(i32 55, float %22, float %23, float 0.000000e+00, float %22, float %23, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = call float @dx.op.unary.f32(i32 25, float %106)  ; Rsqrt(value)
  %108 = fmul fast float %107, %22
  %109 = fmul fast float %107, %23
  %110 = fsub fast float -0.000000e+00, %108
  %111 = fmul fast float %103, %108
  %112 = call float @dx.op.tertiary.f32(i32 46, float %104, float %109, float %111)  ; FMad(a,b,c)
  %113 = fmul fast float %103, %109
  %114 = call float @dx.op.tertiary.f32(i32 46, float %104, float %110, float %113)  ; FMad(a,b,c)
  %115 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %116 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %117 = fadd fast float %115, %105
  %118 = fadd fast float %117, %116
  %119 = fdiv fast float 1.000000e+00, %118
  %120 = fadd fast float %114, %112
  %121 = fsub fast float %112, %114
  %122 = fmul fast float %120, 5.000000e-01
  %123 = fmul fast float %122, %119
  %124 = fadd fast float %123, 5.000000e-01
  %125 = fmul fast float %121, 5.000000e-01
  %126 = fmul fast float %125, %119
  %127 = fadd fast float %126, 5.000000e-01
  br label %128

; <label>:128                                     ; preds = %60, %0
  %129 = phi float [ %124, %60 ], [ 0.000000e+00, %0 ]
  %130 = phi float [ %127, %60 ], [ 0.000000e+00, %0 ]
  %131 = phi float [ %69, %60 ], [ 0.000000e+00, %0 ]
  %132 = phi float [ %82, %60 ], [ 0x3FD6666660000000, %0 ]
  %133 = phi float [ %57, %60 ], [ 0.000000e+00, %0 ]
  %134 = fcmp fast oeq float %21, 0.000000e+00
  br i1 %134, label %534, label %135, !dx.controlflow.hints !49

; <label>:135                                     ; preds = %128
  %136 = add i32 %35, 0
  %137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %138 = add i32 %41, 0
  %139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %137, %dx.types.Handle %7, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = extractvalue %dx.types.ResRet.f32 %140, 1
  %143 = extractvalue %dx.types.ResRet.f32 %140, 2
  %144 = extractvalue %dx.types.ResRet.f32 %140, 3
  %145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %139, %dx.types.Handle %7, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = fcmp fast olt float %17, 1.000000e+00
  br i1 %149, label %150, label %162, !dx.controlflow.hints !50

; <label>:150                                     ; preds = %135
  %151 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = fmul fast float %151, 2.500000e+00
  %153 = fsub fast float %141, %152
  %154 = fsub fast float %142, %152
  %155 = fsub fast float %143, %152
  %156 = fmul fast float %153, %17
  %157 = fmul fast float %154, %17
  %158 = fmul fast float %155, %17
  %159 = fadd fast float %156, %152
  %160 = fadd fast float %157, %152
  %161 = fadd fast float %158, %152
  br label %162

; <label>:162                                     ; preds = %150, %135
  %163 = phi float [ %159, %150 ], [ %141, %135 ]
  %164 = phi float [ %160, %150 ], [ %142, %135 ]
  %165 = phi float [ %161, %150 ], [ %143, %135 ]
  %166 = and i32 %53, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %387, label %168, !dx.controlflow.hints !51

; <label>:168                                     ; preds = %162
  %169 = fptoui float %26 to i32
  %170 = fptoui float %27 to i32
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 0
  %173 = urem i32 %169, %172
  %174 = uitofp i32 %172 to float
  %175 = fdiv fast float %15, %174
  %176 = uitofp i32 %173 to float
  %177 = uitofp i32 %170 to float
  %178 = fmul fast float %176, %175
  %179 = fmul fast float %175, %177
  %180 = fadd fast float %178, %13
  %181 = fadd fast float %179, %14
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 0
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = extractvalue %dx.types.CBufRet.i32 %171, 2
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %187, %180
  %191 = fmul fast float %187, %181
  %192 = fptoui float %189 to i32
  %193 = uitofp i32 %183 to float
  %194 = fptosi float %193 to i32
  %195 = fmul fast float %190, 0x3F3A027520000000
  %196 = fmul fast float %191, 0x3F3A027520000000
  %197 = add nsw i32 %194, -1
  %198 = fptosi float %196 to i32
  %199 = call i32 @dx.op.binary.i32(i32 37, i32 %198, i32 0)  ; IMax(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %199, i32 %197)  ; IMin(a,b)
  %201 = fptosi float %195 to i32
  %202 = call i32 @dx.op.binary.i32(i32 37, i32 %201, i32 0)  ; IMax(a,b)
  %203 = call i32 @dx.op.binary.i32(i32 38, i32 %202, i32 %197)  ; IMin(a,b)
  %204 = mul nsw i32 %200, %194
  %205 = add nsw i32 %203, %204
  %206 = sdiv i32 %205, 4
  %207 = shl nsw i32 %206, 2
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = srem i32 %205, 4
  %211 = shl nsw i32 %210, 3
  %212 = and i32 %211, 24
  %213 = lshr i32 %209, %212
  %214 = and i32 %213, 255
  %215 = mul nuw nsw i32 %214, 12
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = fsub fast float %190, %217
  %221 = fsub fast float %191, %218
  %222 = fdiv fast float %220, %219
  %223 = fdiv fast float %221, %219
  %224 = fmul fast float %187, 2.500000e+01
  %225 = extractvalue %dx.types.CBufRet.i32 %171, 1
  %226 = uitofp i32 %225 to float
  %227 = extractvalue %dx.types.CBufRet.i32 %182, 1
  %228 = mul i32 %172, %227
  %229 = uitofp i32 %228 to float
  %230 = uitofp i32 %192 to float
  %231 = shl nuw nsw i32 %214, 3
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = extractvalue %dx.types.ResRet.i32 %232, 1
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %243

; <label>:238                                     ; preds = %168
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = extractvalue %dx.types.ResRet.i32 %239, 1
  %242 = lshr i32 %241, 16
  br label %243

; <label>:243                                     ; preds = %238, %168
  %244 = phi i32 [ 0, %238 ], [ %214, %168 ]
  %245 = phi i32 [ %240, %238 ], [ %233, %168 ]
  %246 = phi i32 [ %241, %238 ], [ %234, %168 ]
  %247 = phi i32 [ %242, %238 ], [ %235, %168 ]
  %248 = and i32 %246, 65535
  %249 = lshr i32 %245, 16
  %250 = and i32 %245, 65535
  %251 = lshr i32 %247, 1
  %252 = uitofp i32 %251 to float
  %253 = icmp eq i32 %244, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %255 = bitcast float %254 to i32
  %256 = fdiv fast float %190, %187
  %257 = fdiv fast float %191, %187
  %258 = fptoui float %230 to i32
  %259 = fmul fast float %256, %224
  %260 = fmul fast float %257, %224
  %261 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %262 = and i32 %261, 2
  %263 = icmp ne i32 %262, 0
  %264 = select i1 %263, float 5.000000e-01, float 1.000000e+00
  %265 = call float @dx.op.unary.f32(i32 83, float %259)  ; DerivCoarseX(value)
  %266 = call float @dx.op.unary.f32(i32 83, float %260)  ; DerivCoarseX(value)
  %267 = fmul fast float %264, %265
  %268 = fmul fast float %264, %266
  %269 = call float @dx.op.unary.f32(i32 84, float %259)  ; DerivCoarseY(value)
  %270 = call float @dx.op.unary.f32(i32 84, float %260)  ; DerivCoarseY(value)
  %271 = fmul fast float %264, %269
  %272 = fmul fast float %270, %264
  %273 = call float @dx.op.dot2.f32(i32 54, float %267, float %268, float %267, float %268)  ; Dot2(ax,ay,bx,by)
  %274 = call float @dx.op.dot2.f32(i32 54, float %271, float %272, float %271, float %272)  ; Dot2(ax,ay,bx,by)
  %275 = call float @dx.op.binary.f32(i32 35, float %273, float %274)  ; FMax(a,b)
  %276 = call float @dx.op.unary.f32(i32 23, float %275)  ; Log(value)
  %277 = fmul fast float %276, 5.000000e-01
  %278 = call float @dx.op.binary.f32(i32 36, float %273, float %274)  ; FMin(a,b)
  %279 = call float @dx.op.unary.f32(i32 23, float %278)  ; Log(value)
  %280 = uitofp i32 %258 to float
  %281 = fsub fast float %276, %279
  %282 = fmul fast float %281, 5.000000e-01
  %283 = call float @dx.op.binary.f32(i32 36, float %282, float %280)  ; FMin(a,b)
  %284 = fmul fast float %283, %185
  %285 = fsub fast float %277, %284
  %286 = call float @dx.op.binary.f32(i32 35, float %285, float 0.000000e+00)  ; FMax(a,b)
  %287 = call float @dx.op.binary.f32(i32 36, float %286, float 2.400000e+01)  ; FMin(a,b)
  %288 = fadd fast float %287, 7.000000e+00
  %289 = select i1 %253, float %256, float %222
  %290 = select i1 %253, float %257, float %223
  %291 = call float @dx.op.unary.f32(i32 27, float %288)  ; Round_ni(value)
  %292 = fptosi float %291 to i32
  %293 = sub nsw i32 8, %248
  %294 = select i1 %253, i32 %255, i32 %293
  %295 = sub nsw i32 %292, %294
  %296 = call i32 @dx.op.binary.i32(i32 37, i32 %295, i32 0)  ; IMax(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 38, i32 %296, i32 %248)  ; IMin(a,b)
  %298 = fptoui float %252 to i32
  %299 = and i32 %297, 31
  %300 = lshr i32 %298, %299
  %301 = add i32 %300, -1
  %302 = uitofp i32 %301 to float
  %303 = uitofp i32 %300 to float
  %304 = fmul fast float %303, %289
  %305 = fmul fast float %303, %290
  %306 = call float @dx.op.unary.f32(i32 27, float %304)  ; Round_ni(value)
  %307 = call float @dx.op.unary.f32(i32 27, float %305)  ; Round_ni(value)
  %308 = call float @dx.op.binary.f32(i32 35, float %306, float 0.000000e+00)  ; FMax(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float %307, float 0.000000e+00)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 36, float %308, float %302)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %309, float %302)  ; FMin(a,b)
  %312 = fptoui float %310 to i32
  %313 = fptoui float %311 to i32
  %314 = lshr i32 %250, %299
  %315 = lshr i32 %249, %299
  %316 = add i32 %312, %314
  %317 = add i32 %313, %315
  %318 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 %297, i32 %316, i32 %317, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = lshr i32 %319, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = lshr i32 %319, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fptoui float %327 to i32
  %329 = lshr i32 %319, 24
  %330 = uitofp i32 %329 to float
  %331 = fadd fast float %330, 1.000000e+00
  %332 = fptoui float %331 to i32
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, %289
  %335 = fmul fast float %333, %290
  %336 = add i32 %332, -1
  %337 = uitofp i32 %336 to float
  %338 = call float @dx.op.unary.f32(i32 27, float %334)  ; Round_ni(value)
  %339 = call float @dx.op.unary.f32(i32 27, float %335)  ; Round_ni(value)
  %340 = call float @dx.op.binary.f32(i32 35, float %338, float 0.000000e+00)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %339, float 0.000000e+00)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %340, float %337)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %337)  ; FMin(a,b)
  %344 = fsub fast float %334, %342
  %345 = fsub fast float %335, %343
  %346 = fadd fast float %226, 8.000000e+00
  %347 = fmul fast float %321, %346
  %348 = fmul fast float %324, %346
  %349 = fmul fast float %344, %226
  %350 = fmul fast float %345, %226
  %351 = fadd fast float %347, 4.500000e+00
  %352 = fadd fast float %351, %349
  %353 = fadd fast float %348, 4.500000e+00
  %354 = fadd fast float %353, %350
  %355 = fdiv fast float %352, %229
  %356 = fdiv fast float %354, %229
  %357 = uitofp i32 %328 to float
  %358 = fsub fast float %288, %357
  %359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float %358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = call float @dx.op.unary.f32(i32 24, float %18)  ; Sqrt(value)
  %364 = call float @dx.op.unary.f32(i32 24, float %19)  ; Sqrt(value)
  %365 = call float @dx.op.unary.f32(i32 24, float %20)  ; Sqrt(value)
  %366 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %367 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %368 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %369 = fmul fast float %363, 2.000000e+00
  %370 = fsub fast float 1.000000e+00, %369
  %371 = fmul fast float %366, %370
  %372 = fadd fast float %371, %369
  %373 = fmul fast float %372, %366
  %374 = fmul fast float %364, 2.000000e+00
  %375 = fsub fast float 1.000000e+00, %374
  %376 = fmul fast float %367, %375
  %377 = fadd fast float %376, %374
  %378 = fmul fast float %377, %367
  %379 = fmul fast float %365, 2.000000e+00
  %380 = fsub fast float 1.000000e+00, %379
  %381 = fmul fast float %368, %380
  %382 = fadd fast float %381, %379
  %383 = fmul fast float %382, %368
  %384 = fmul fast float %373, %373
  %385 = fmul fast float %378, %378
  %386 = fmul fast float %383, %383
  br label %387

; <label>:387                                     ; preds = %243, %162
  %388 = phi float [ %384, %243 ], [ %18, %162 ]
  %389 = phi float [ %385, %243 ], [ %19, %162 ]
  %390 = phi float [ %386, %243 ], [ %20, %162 ]
  %391 = and i32 %53, 1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %418, label %393, !dx.controlflow.hints !52

; <label>:393                                     ; preds = %387
  %394 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %395 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %396 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %397 = call float @dx.op.unary.f32(i32 24, float %163)  ; Sqrt(value)
  %398 = call float @dx.op.unary.f32(i32 24, float %164)  ; Sqrt(value)
  %399 = call float @dx.op.unary.f32(i32 24, float %165)  ; Sqrt(value)
  %400 = fmul fast float %394, 2.000000e+00
  %401 = fsub fast float 1.000000e+00, %400
  %402 = fmul fast float %397, %401
  %403 = fadd fast float %402, %400
  %404 = fmul fast float %403, %397
  %405 = fmul fast float %395, 2.000000e+00
  %406 = fsub fast float 1.000000e+00, %405
  %407 = fmul fast float %398, %406
  %408 = fadd fast float %407, %405
  %409 = fmul fast float %408, %398
  %410 = fmul fast float %396, 2.000000e+00
  %411 = fsub fast float 1.000000e+00, %410
  %412 = fmul fast float %399, %411
  %413 = fadd fast float %412, %410
  %414 = fmul fast float %413, %399
  %415 = fmul fast float %404, %404
  %416 = fmul fast float %409, %409
  %417 = fmul fast float %414, %414
  br label %422

; <label>:418                                     ; preds = %387
  %419 = fmul fast float %388, %163
  %420 = fmul fast float %389, %164
  %421 = fmul fast float %390, %165
  br label %422

; <label>:422                                     ; preds = %418, %393
  %423 = phi float [ %415, %393 ], [ %419, %418 ]
  %424 = phi float [ %416, %393 ], [ %420, %418 ]
  %425 = phi float [ %417, %393 ], [ %421, %418 ]
  %426 = fmul fast float %57, %21
  %427 = and i32 %31, 255
  %428 = uitofp i32 %427 to float
  %429 = lshr i32 %31, 8
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %144, %428
  %433 = fadd fast float %432, %431
  %434 = fmul fast float %433, 0x3F70101000000000
  %435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.i32 %435, 2
  %437 = icmp eq i32 %436, 2
  br i1 %437, label %438, label %472, !dx.controlflow.hints !53

; <label>:438                                     ; preds = %422
  %439 = call float @dx.op.binary.f32(i32 36, float %423, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %424, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %425, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %442 = fsub fast float 1.000000e+00, %439
  %443 = fsub fast float 1.000000e+00, %440
  %444 = fsub fast float 1.000000e+00, %441
  %445 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %446 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  %447 = call float @dx.op.unary.f32(i32 23, float %444)  ; Log(value)
  %448 = call float @dx.op.binary.f32(i32 36, float %146, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float %147, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %450 = call float @dx.op.binary.f32(i32 36, float %148, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %451 = fsub fast float 1.000000e+00, %448
  %452 = fsub fast float 1.000000e+00, %449
  %453 = fsub fast float 1.000000e+00, %450
  %454 = call float @dx.op.unary.f32(i32 23, float %451)  ; Log(value)
  %455 = call float @dx.op.unary.f32(i32 23, float %452)  ; Log(value)
  %456 = call float @dx.op.unary.f32(i32 23, float %453)  ; Log(value)
  %457 = fsub fast float -0.000000e+00, %445
  %458 = fsub fast float %457, %454
  %459 = fsub fast float -0.000000e+00, %446
  %460 = fsub fast float %459, %455
  %461 = fsub fast float -0.000000e+00, %447
  %462 = fsub fast float %461, %456
  %463 = fsub fast float -0.000000e+00, %458
  %464 = fsub fast float -0.000000e+00, %460
  %465 = fsub fast float -0.000000e+00, %462
  %466 = call float @dx.op.unary.f32(i32 21, float %463)  ; Exp(value)
  %467 = call float @dx.op.unary.f32(i32 21, float %464)  ; Exp(value)
  %468 = call float @dx.op.unary.f32(i32 21, float %465)  ; Exp(value)
  %469 = fsub fast float 1.000000e+00, %466
  %470 = fsub fast float 1.000000e+00, %467
  %471 = fsub fast float 1.000000e+00, %468
  br label %472

; <label>:472                                     ; preds = %438, %422
  %473 = phi float [ %469, %438 ], [ %423, %422 ]
  %474 = phi float [ %470, %438 ], [ %424, %422 ]
  %475 = phi float [ %471, %438 ], [ %425, %422 ]
  %476 = fcmp fast ole float %473, 0x3F69A5C380000000
  %477 = fcmp fast ole float %474, 0x3F69A5C380000000
  %478 = fcmp fast ole float %475, 0x3F69A5C380000000
  %479 = fmul fast float %473, 0x4029D70A40000000
  %480 = fmul fast float %474, 0x4029D70A40000000
  %481 = fmul fast float %475, 0x4029D70A40000000
  %482 = call float @dx.op.unary.f32(i32 23, float %473)  ; Log(value)
  %483 = call float @dx.op.unary.f32(i32 23, float %474)  ; Log(value)
  %484 = call float @dx.op.unary.f32(i32 23, float %475)  ; Log(value)
  %485 = fmul fast float %482, 0x3FDAAAAAA0000000
  %486 = fmul fast float %483, 0x3FDAAAAAA0000000
  %487 = fmul fast float %484, 0x3FDAAAAAA0000000
  %488 = call float @dx.op.unary.f32(i32 21, float %485)  ; Exp(value)
  %489 = call float @dx.op.unary.f32(i32 21, float %486)  ; Exp(value)
  %490 = call float @dx.op.unary.f32(i32 21, float %487)  ; Exp(value)
  %491 = fmul fast float %488, 0x3FF0E147A0000000
  %492 = fmul fast float %489, 0x3FF0E147A0000000
  %493 = fmul fast float %490, 0x3FF0E147A0000000
  %494 = fadd fast float %491, 0xBFAC28F5C0000000
  %495 = fadd fast float %492, 0xBFAC28F5C0000000
  %496 = fadd fast float %493, 0xBFAC28F5C0000000
  %497 = select i1 %476, float %479, float %494
  %498 = select i1 %477, float %480, float %495
  %499 = select i1 %478, float %481, float %496
  %500 = fcmp fast une float %11, 0.000000e+00
  br i1 %500, label %501, label %517

; <label>:501                                     ; preds = %472
  %502 = fdiv fast float %12, %11
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fcmp fast olt float %11, 0.000000e+00
  br i1 %504, label %505, label %510

; <label>:505                                     ; preds = %501
  %506 = fsub fast float 1.000000e+00, %12
  %507 = fsub fast float -0.000000e+00, %11
  %508 = fdiv fast float %506, %507
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  br label %510

; <label>:510                                     ; preds = %505, %501
  %511 = phi float [ %509, %505 ], [ %503, %501 ]
  %512 = fmul fast float %511, 2.000000e+00
  %513 = fsub fast float 3.000000e+00, %512
  %514 = fmul fast float %511, %511
  %515 = fmul fast float %514, %426
  %516 = fmul fast float %515, %513
  br label %517

; <label>:517                                     ; preds = %510, %472
  %518 = phi float [ %516, %510 ], [ %426, %472 ]
  %519 = fmul fast float %10, %10
  %520 = fmul fast float %518, %519
  %521 = fmul fast float %133, %519
  switch i32 %436, label %534 [
    i32 3, label %529
    i32 2, label %522
  ], !dx.controlflow.hints !54

; <label>:522                                     ; preds = %517
  %523 = fcmp fast une float %44, 0.000000e+00
  %524 = call float @dx.op.unary.f32(i32 23, float %44)  ; Log(value)
  %525 = fadd fast float %524, 1.600000e+01
  %526 = fmul fast float %525, 3.125000e-02
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = select i1 %523, float %527, float 0.000000e+00
  br label %534

; <label>:529                                     ; preds = %517
  %530 = call float @dx.op.dot3.f32(i32 55, float %473, float %474, float %475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = fmul fast float %530, %50
  %532 = fadd fast float %531, %47
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  br label %534

; <label>:534                                     ; preds = %529, %522, %517, %128
  %535 = phi float [ %434, %529 ], [ %434, %522 ], [ 0.000000e+00, %128 ], [ %434, %517 ]
  %536 = phi float [ %132, %529 ], [ %132, %522 ], [ 0.000000e+00, %128 ], [ %132, %517 ]
  %537 = phi float [ %533, %529 ], [ %528, %522 ], [ 0.000000e+00, %128 ], [ 0.000000e+00, %517 ]
  %538 = phi float [ %520, %529 ], [ %520, %522 ], [ 0.000000e+00, %128 ], [ %520, %517 ]
  %539 = phi float [ %521, %529 ], [ %521, %522 ], [ %133, %128 ], [ %521, %517 ]
  %540 = phi float [ %497, %529 ], [ %497, %522 ], [ 0.000000e+00, %128 ], [ %497, %517 ]
  %541 = phi float [ %498, %529 ], [ %498, %522 ], [ 0.000000e+00, %128 ], [ %498, %517 ]
  %542 = phi float [ %499, %529 ], [ %499, %522 ], [ 0.000000e+00, %128 ], [ %499, %517 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %540)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %541)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %542)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %538)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %129)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %131)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %539)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %535)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %537)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %538)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!20}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !15, !18}
!5 = !{!6, !8, !9, !11, !12, !13, !14}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 65, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %GfxTerrainDecalDrawArgsData* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{[26 x i32] [i32 24, i32 12, i32 1031, i32 1031, i32 0, i32 0, i32 4095, i32 4095, i32 2056, i32 2184, i32 48, i32 48, i32 0, i32 0, i32 1025, i32 1026, i32 1028, i32 3471, i32 1031, i32 4095, i32 2056, i32 0, i32 1031, i32 1031, i32 1031, i32 0]}
!21 = !{void ()* @ps_main, !"ps_main", !22, !4, !47}
!22 = !{!23, !43, null}
!23 = !{!24, !27, !28, !29, !31, !33, !34, !37, !39, !41}
!24 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, !26}
!25 = !{i32 0}
!26 = !{i32 3, i32 3}
!27 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 1, i8 0, !26}
!28 = !{i32 2, !"TANGENT", i8 9, i8 0, !25, i8 2, i32 1, i8 3, i32 2, i8 0, !26}
!29 = !{i32 3, !"COLOR", i8 9, i8 0, !25, i8 1, i32 1, i8 4, i32 3, i8 0, !30}
!30 = !{i32 3, i32 15}
!31 = !{i32 4, !"COLOR_SATURATION", i8 9, i8 0, !25, i8 1, i32 1, i8 1, i32 4, i8 0, !32}
!32 = !{i32 3, i32 1}
!33 = !{i32 5, !"INDEX", i8 5, i8 0, !25, i8 1, i32 1, i8 1, i32 4, i8 1, !32}
!34 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !35, i8 1, i32 1, i8 4, i32 5, i8 0, !36}
!35 = !{i32 4}
!36 = !{i32 3, i32 7}
!37 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 1, i32 1, i8 2, !32}
!38 = !{i32 1}
!39 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !40, i8 1, i32 1, i8 1, i32 4, i8 2, !32}
!40 = !{i32 2}
!41 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 1, i32 1, i8 3, !32}
!42 = !{i32 3}
!43 = !{!44, !45, !46}
!44 = !{i32 0, !"SV_Target", i8 9, i8 16, !25, i8 0, i32 1, i8 4, i32 0, i8 0, !30}
!45 = !{i32 1, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 1, i8 0, !30}
!46 = !{i32 2, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 2, i8 0, !30}
!47 = !{i32 0, i64 16}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}

