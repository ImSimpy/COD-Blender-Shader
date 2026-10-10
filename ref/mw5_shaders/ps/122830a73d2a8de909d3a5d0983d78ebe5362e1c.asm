;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cacdc21d3c0e82f2812b02598235dea3
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
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
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t18,space1     1
;                                   texture    byte         r/o      T7     t19,space1     1
;                                   texture    byte         r/o      T8     t20,space1     1
;                                   texture    byte         r/o      T9     t21,space1     1
;                                   texture     f32          2d     T10     t37,space2     1
;                                   texture     f32          2d     T11     t58,space2     1
;                                   texture     f32          2d     T12     t57,space2     1
;                                   texture    byte         r/o     T13     t69,space1     1
;                                   texture     f32          2d     T14     t34,space2     1
;                                   texture    byte         r/o     T15     t68,space1     1
;                                   texture     f32          2d     T16      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = fmul fast float %64, %58
  %66 = fmul fast float %64, %59
  %67 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %68 = bitcast float %67 to i32
  %69 = ashr i32 %68, 1
  %70 = sub nsw i32 1597250115, %69
  %71 = bitcast i32 %70 to float
  %72 = fmul fast float %71, %50
  %73 = fmul fast float %71, %51
  %74 = fmul fast float %71, %52
  %75 = fmul fast float %51, %48
  %76 = fmul fast float %52, %47
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %52, %46
  %79 = fmul fast float %50, %48
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %50, %47
  %82 = fmul fast float %51, %46
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %77, %49
  %85 = fmul fast float %80, %49
  %86 = fmul fast float %83, %49
  %87 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %88 = bitcast float %87 to i32
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 1597250115, %89
  %91 = bitcast i32 %90 to float
  %92 = fmul fast float %91, %39
  %93 = fmul fast float %91, %40
  %94 = fmul fast float %91, %41
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast une float %96, 0.000000e+00
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %65, 2.000000e+00
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %66, 2.000000e+00
  %104 = fmul fast float %103, %100
  %105 = fsub fast float 1.000000e+00, %102
  %106 = fsub fast float 1.000000e+00, %104
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = select i1 %97, float %108, float %112
  %116 = select i1 %97, float %109, float %113
  %117 = select i1 %97, float %110, float %114
  %118 = fmul fast float %115, %105
  %119 = fmul fast float %116, %105
  %120 = fmul fast float %117, %105
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = select i1 %97, float %122, float %126
  %130 = select i1 %97, float %123, float %127
  %131 = select i1 %97, float %124, float %128
  %132 = fmul fast float %129, %106
  %133 = fmul fast float %130, %106
  %134 = fmul fast float %131, %106
  %135 = fadd fast float %132, %118
  %136 = fadd fast float %133, %119
  %137 = fadd fast float %134, %120
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = select i1 %97, float %139, float %143
  %147 = select i1 %97, float %140, float %144
  %148 = select i1 %97, float %141, float %145
  %149 = fadd fast float %135, %146
  %150 = fadd fast float %136, %147
  %151 = fadd fast float %137, %148
  %152 = fmul fast float %149, %60
  %153 = fmul fast float %150, %60
  %154 = fmul fast float %151, %60
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %158 = fmul fast float %156, %65
  %159 = fmul fast float %157, %66
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %161, 114688
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, float %158, float 0.000000e+00
  %165 = select i1 %163, float %159, float 0.000000e+00
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fmul fast float %167, 2.550000e+02
  %169 = fptoui float %168 to i32
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 3
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %172, 4
  %176 = icmp ne i32 %175, 0
  %177 = and i1 %174, %176
  br i1 %177, label %178, label %189

; <label>:178                                     ; preds = %0
  %179 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %180 = fmul fast float %179, %66
  %181 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %182 = fmul fast float %181, %65
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %182, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fsub fast float 1.000000e+00, %184
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = fcmp fast olt float %185, %187
  br label %192

; <label>:189                                     ; preds = %0
  %190 = icmp eq i32 %175, 0
  %191 = and i1 %174, %190
  br label %192

; <label>:192                                     ; preds = %189, %178
  %193 = phi i1 [ %188, %178 ], [ %191, %189 ]
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = fmul fast float %195, 0x3FE3C6EF40000000
  %197 = frem fast float %65, 2.560000e+02
  %198 = frem fast float %66, 2.560000e+02
  %199 = fptoui float %197 to i32
  %200 = fptoui float %198 to i32
  %201 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fadd fast float %202, %196
  %204 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %205 = add i32 %21, 156
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = shl i32 %207, 4
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %207, 7
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 22
  %215 = shl nuw nsw i32 %214, 5
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = add i32 %21, 216
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %219, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %219, 16
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = add i32 %21, 36
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %21, 288
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %240, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = fmul fast float %242, 0x3F50624DE0000000
  %246 = fmul fast float %244, 0x3F50624DE0000000
  %247 = add i32 %21, 172
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %249, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %249, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %21, 232
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %261, 8
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %261, 16
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = add i32 %21, 52
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %21, 304
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = fmul fast float %284, 0x3F50624DE0000000
  %288 = fmul fast float %286, 0x3F50624DE0000000
  %289 = add i32 %21, 188
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %291, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %291, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %21, 248
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %21, 68
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %21, 320
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = add i32 %21, 204
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = shl i32 %333, 4
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %333, 7
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %333, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = add i32 %21, 264
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %345, 8
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = lshr i32 %345, 16
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = add i32 %21, 84
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = add i32 %21, 336
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %366, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = fmul fast float %368, 0x3F50624DE0000000
  %372 = fmul fast float %370, 0x3F50624DE0000000
  %373 = add i32 %21, 348
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 32
  %377 = icmp eq i32 %376, 0
  %378 = and i32 %375, 64
  %379 = icmp eq i32 %378, 0
  %380 = and i32 %375, 128
  %381 = icmp eq i32 %380, 0
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 2
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %399, label %386

; <label>:386                                     ; preds = %192
  %387 = add i32 %21, 488
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, 0
  %391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %391, %dx.types.Handle %62, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = fmul fast float %393, %55
  %397 = fmul fast float %394, %56
  %398 = fmul fast float %395, %57
  br label %399

; <label>:399                                     ; preds = %386, %192
  %400 = phi float [ %57, %192 ], [ %398, %386 ]
  %401 = phi float [ %56, %192 ], [ %397, %386 ]
  %402 = phi float [ %55, %192 ], [ %396, %386 ]
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 2
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %426, label %407

; <label>:407                                     ; preds = %399
  %408 = add i32 %21, 44
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %402, float 1.000000e+00
  %414 = add i32 %21, 60
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %401, float 1.000000e+00
  %420 = add i32 %21, 76
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 1
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %400, float 1.000000e+00
  br label %426

; <label>:426                                     ; preds = %407, %399
  %427 = phi float [ %400, %399 ], [ %425, %407 ]
  %428 = phi float [ %401, %399 ], [ %419, %407 ]
  %429 = phi float [ %402, %399 ], [ %413, %407 ]
  %430 = lshr i32 %404, 20
  %431 = and i32 %430, 3
  %432 = add nuw nsw i32 %431, 1
  %433 = add i32 %21, 24
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %21, 28
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = or i32 %438, %435
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %899, label %441

; <label>:441                                     ; preds = %426
  %442 = and i32 %435, 262144
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %26, float 1.000000e+00
  %445 = select i1 %443, float %27, float 0.000000e+00
  %446 = select i1 %443, float %28, float 0.000000e+00
  %447 = select i1 %443, float %29, float 1.000000e+00
  %448 = select i1 %443, float %30, float %53
  %449 = select i1 %443, float %31, float %54
  %450 = add i32 %21, 284
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 16
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = fmul fast float %454, 0x3F50624DE0000000
  %456 = add i32 %21, 88
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = lshr i32 %458, 16
  %460 = and i32 %459, 255
  %461 = lshr i32 %458, 24
  %462 = add i32 %21, 292
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %464, 16
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = add i32 %21, 32
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 22
  %473 = shl nuw nsw i32 %472, 5
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = shl i32 %471, 4
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %471, 7
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %483 = fmul fast float %482, 1.000000e+03
  %484 = fmul fast float %245, %483
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fadd fast float %485, %235
  %487 = fmul fast float %246, %483
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fadd fast float %488, %237
  %490 = fmul fast float %455, %483
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fmul fast float %491, 0x401921FB60000000
  %493 = fadd fast float %492, %474
  %494 = call float @dx.op.unary.f32(i32 13, float %493)  ; Sin(value)
  %495 = call float @dx.op.unary.f32(i32 12, float %493)  ; Cos(value)
  %496 = fsub fast float -0.000000e+00, %494
  %497 = fadd fast float %448, -5.000000e-01
  %498 = fadd fast float %449, -5.000000e-01
  %499 = fmul fast float %466, %497
  %500 = fmul fast float %468, %498
  %501 = fadd fast float %499, 5.000000e-01
  %502 = fadd fast float %500, 5.000000e-01
  %503 = fmul fast float %477, %501
  %504 = fmul fast float %480, %502
  %505 = fmul fast float %495, %503
  %506 = call float @dx.op.tertiary.f32(i32 46, float %496, float %504, float %505)  ; FMad(a,b,c)
  %507 = fmul fast float %494, %503
  %508 = call float @dx.op.tertiary.f32(i32 46, float %495, float %504, float %507)  ; FMad(a,b,c)
  %509 = fadd fast float %486, %506
  %510 = fadd fast float %489, %508
  %511 = icmp ugt i32 %460, 1
  %512 = icmp ugt i32 %458, 33554431
  %513 = or i1 %512, %511
  br i1 %513, label %514, label %539

; <label>:514                                     ; preds = %441
  %515 = add i32 %21, 228
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = fmul fast float %482, %519
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = mul nuw nsw i32 %460, %461
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %521, %523
  %525 = call float @dx.op.unary.f32(i32 27, float %524)  ; Round_ni(value)
  %526 = fptoui float %525 to i32
  %527 = urem i32 %526, %460
  %528 = udiv i32 %526, %461
  %529 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %530 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %531 = uitofp i32 %527 to float
  %532 = uitofp i32 %528 to float
  %533 = fadd fast float %529, %531
  %534 = fadd fast float %530, %532
  %535 = uitofp i32 %460 to float
  %536 = uitofp i32 %461 to float
  %537 = fdiv fast float %533, %535
  %538 = fdiv fast float %534, %536
  br label %539

; <label>:539                                     ; preds = %514, %441
  %540 = phi float [ %537, %514 ], [ %509, %441 ]
  %541 = phi float [ %538, %514 ], [ %510, %441 ]
  %542 = and i32 %435, 16
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %740, label %544

; <label>:544                                     ; preds = %539
  %545 = add i32 %21, 376
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = add i32 %547, 0
  %549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %549, %dx.types.Handle %61, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = and i32 %458, 255
  %556 = uitofp i32 %555 to float
  %557 = lshr i32 %458, 8
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %554, %556
  %561 = fadd fast float %560, %559
  %562 = fmul fast float %561, 0x3F70101000000000
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 512
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %575, label %567

; <label>:567                                     ; preds = %544
  %568 = add i32 %21, 456
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %62, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  br label %575

; <label>:575                                     ; preds = %567, %544
  %576 = phi float [ %574, %567 ], [ 1.000000e+00, %544 ]
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 33554432
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %687, label %581

; <label>:581                                     ; preds = %575
  %582 = add i32 %21, 224
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %584, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = add i32 %21, 228
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 65535
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 24
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = and i32 %595, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %595, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %595, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = add i32 %21, 220
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = lshr i32 %612, 24
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = and i32 %612, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %612, 8
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = lshr i32 %612, 16
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = bitcast float %551 to i32
  %628 = ashr i32 %627, 1
  %629 = sub nsw i32 1597463174, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %551, 5.000000e-01
  %632 = fmul fast float %630, %630
  %633 = fmul fast float %632, %631
  %634 = fsub fast float 1.500000e+00, %633
  %635 = fmul fast float %630, %551
  %636 = fmul fast float %635, %634
  %637 = bitcast float %552 to i32
  %638 = ashr i32 %637, 1
  %639 = sub nsw i32 1597463174, %638
  %640 = bitcast i32 %639 to float
  %641 = fmul fast float %552, 5.000000e-01
  %642 = fmul fast float %640, %640
  %643 = fmul fast float %642, %641
  %644 = fsub fast float 1.500000e+00, %643
  %645 = fmul fast float %640, %552
  %646 = fmul fast float %645, %644
  %647 = bitcast float %553 to i32
  %648 = ashr i32 %647, 1
  %649 = sub nsw i32 1597463174, %648
  %650 = bitcast i32 %649 to float
  %651 = fmul fast float %553, 5.000000e-01
  %652 = fmul fast float %650, %650
  %653 = fmul fast float %652, %651
  %654 = fsub fast float 1.500000e+00, %653
  %655 = fmul fast float %650, %553
  %656 = fmul fast float %655, %654
  %657 = fsub fast float %636, %618
  %658 = fsub fast float %646, %622
  %659 = fsub fast float %656, %626
  %660 = fmul fast float %657, %586
  %661 = fmul fast float %658, %588
  %662 = fmul fast float %659, %593
  %663 = fadd fast float %660, %601
  %664 = fadd fast float %661, %605
  %665 = fadd fast float %662, %609
  %666 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %667 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %668 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %669 = fmul fast float %666, %666
  %670 = fmul fast float %667, %667
  %671 = fmul fast float %668, %668
  %672 = fsub fast float %669, %551
  %673 = fsub fast float %670, %552
  %674 = fsub fast float %671, %553
  %675 = fmul fast float %672, %576
  %676 = fmul fast float %673, %576
  %677 = fmul fast float %674, %576
  %678 = fadd fast float %675, %551
  %679 = fadd fast float %676, %552
  %680 = fadd fast float %677, %553
  %681 = fadd fast float %598, %562
  %682 = fsub fast float %681, %615
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = fsub fast float %683, %562
  %685 = fmul fast float %684, %576
  %686 = fadd fast float %685, %562
  br label %740

; <label>:687                                     ; preds = %575
  %688 = and i32 %578, 134217728
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %724, label %690

; <label>:690                                     ; preds = %687
  %691 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %692 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %694 = fadd fast float %691, -5.000000e-01
  %695 = fadd fast float %692, -5.000000e-01
  %696 = fadd fast float %693, -5.000000e-01
  %697 = fmul fast float %694, %576
  %698 = fmul fast float %695, %576
  %699 = fmul fast float %696, %576
  %700 = fadd fast float %697, 5.000000e-01
  %701 = fadd fast float %698, 5.000000e-01
  %702 = fadd fast float %699, 5.000000e-01
  %703 = call float @dx.op.unary.f32(i32 24, float %551)  ; Sqrt(value)
  %704 = call float @dx.op.unary.f32(i32 24, float %552)  ; Sqrt(value)
  %705 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %706 = fmul fast float %700, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %703
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %703
  %711 = fmul fast float %701, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %704
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %704
  %716 = fmul fast float %702, 2.000000e+00
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, %716
  %720 = fmul fast float %719, %705
  %721 = fmul fast float %710, %710
  %722 = fmul fast float %715, %715
  %723 = fmul fast float %720, %720
  br label %740

; <label>:724                                     ; preds = %687
  %725 = fmul fast float %222, %222
  %726 = fmul fast float %226, %226
  %727 = fmul fast float %230, %230
  %728 = fadd fast float %725, -1.000000e+00
  %729 = fadd fast float %726, -1.000000e+00
  %730 = fadd fast float %727, -1.000000e+00
  %731 = fmul fast float %576, %728
  %732 = fmul fast float %576, %729
  %733 = fmul fast float %576, %730
  %734 = fadd fast float %731, 1.000000e+00
  %735 = fadd fast float %732, 1.000000e+00
  %736 = fadd fast float %733, 1.000000e+00
  %737 = fmul fast float %734, %551
  %738 = fmul fast float %735, %552
  %739 = fmul fast float %736, %553
  br label %740

; <label>:740                                     ; preds = %724, %690, %581, %539
  %741 = phi float [ %686, %581 ], [ %562, %690 ], [ %562, %724 ], [ 0x3FA23C0BE0000000, %539 ]
  %742 = phi float [ %678, %581 ], [ %721, %690 ], [ %737, %724 ], [ 1.000000e+00, %539 ]
  %743 = phi float [ %679, %581 ], [ %722, %690 ], [ %738, %724 ], [ 1.000000e+00, %539 ]
  %744 = phi float [ %680, %581 ], [ %723, %690 ], [ %739, %724 ], [ 1.000000e+00, %539 ]
  %745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.i32 %745, 1
  %747 = and i32 %746, 1
  %748 = icmp ne i32 %747, 0
  %749 = add i32 %21, 356
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 32
  %753 = icmp ne i32 %752, 0
  %754 = and i1 %748, %753
  %755 = select i1 %754, float 1.000000e+00, float %742
  %756 = select i1 %754, float 0x3FD3333340000000, float %743
  %757 = select i1 %754, float 0x3FD3333340000000, float %744
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 32
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %834, label %762

; <label>:762                                     ; preds = %740
  %763 = add i32 %21, 92
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %21, 392
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %61, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %765, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101000000000
  %785 = fmul fast float %772, %777
  %786 = fadd fast float %785, %780
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = fadd fast float %773, -5.000000e-01
  %789 = fadd fast float %775, -5.000000e-01
  %790 = fmul fast float %788, %784
  %791 = fmul fast float %789, %784
  %792 = fadd fast float %790, 5.000000e-01
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fmul fast float %792, 2.000000e+00
  %795 = fadd fast float %794, -1.000000e+00
  %796 = fmul fast float %793, 2.000000e+00
  %797 = fadd fast float %796, -1.000000e+00
  %798 = fadd fast float %795, %797
  %799 = fmul fast float %798, 5.000000e-01
  %800 = fsub fast float %795, %797
  %801 = fmul fast float %800, 5.000000e-01
  %802 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %803 = fsub fast float 1.000000e+00, %802
  %804 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %805 = fsub fast float %803, %804
  %806 = call float @dx.op.dot3.f32(i32 55, float %799, float %801, float %805, float %799, float %801, float %805)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.unary.f32(i32 25, float %806)  ; Rsqrt(value)
  %808 = fmul fast float %799, %807
  %809 = fmul fast float %801, %807
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 67108864
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %830, label %814

; <label>:814                                     ; preds = %762
  %815 = add i32 %21, 280
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = lshr i32 %817, 16
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = fsub fast float %787, %825
  %827 = fmul fast float %826, %819
  %828 = fadd fast float %827, %823
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  br label %830

; <label>:830                                     ; preds = %814, %762
  %831 = phi float [ %829, %814 ], [ %787, %762 ]
  %832 = call float @dx.op.dot2.f32(i32 54, float %808, float %809, float %444, float %445)  ; Dot2(ax,ay,bx,by)
  %833 = call float @dx.op.dot2.f32(i32 54, float %808, float %809, float %446, float %447)  ; Dot2(ax,ay,bx,by)
  br label %834

; <label>:834                                     ; preds = %830, %740
  %835 = phi float [ %831, %830 ], [ 0x3FD6666660000000, %740 ]
  %836 = phi float [ %832, %830 ], [ 0.000000e+00, %740 ]
  %837 = phi float [ %833, %830 ], [ 0.000000e+00, %740 ]
  %838 = phi float [ %774, %830 ], [ 1.000000e+00, %740 ]
  %839 = add i32 %21, 160
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 22
  %843 = shl nuw nsw i32 %842, 5
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 64
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %882, label %849

; <label>:849                                     ; preds = %834
  %850 = add i32 %21, 408
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = add i32 %852, 0
  %854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 131072
  %858 = icmp eq i32 %857, 0
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %854, %dx.types.Handle %61, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = fmul fast float %860, %210
  %864 = fmul fast float %861, %213
  %865 = fmul fast float %862, %216
  br i1 %858, label %872, label %866

; <label>:866                                     ; preds = %849
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = fmul fast float %868, %863
  %870 = fmul fast float %868, %864
  %871 = fmul fast float %868, %865
  br label %872

; <label>:872                                     ; preds = %866, %849
  %873 = phi float [ %869, %866 ], [ %863, %849 ]
  %874 = phi float [ %870, %866 ], [ %864, %849 ]
  %875 = phi float [ %871, %866 ], [ %865, %849 ]
  %876 = fmul fast float %873, %844
  %877 = select i1 %193, float %876, float %873
  %878 = call float @dx.op.dot3.f32(i32 55, float %877, float %874, float %875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = select i1 %193, float 0.000000e+00, float %873
  %880 = select i1 %193, float %878, float %874
  %881 = select i1 %193, float 0.000000e+00, float %875
  br label %882

; <label>:882                                     ; preds = %872, %834
  %883 = phi float [ %879, %872 ], [ 0.000000e+00, %834 ]
  %884 = phi float [ %880, %872 ], [ 0.000000e+00, %834 ]
  %885 = phi float [ %881, %872 ], [ 0.000000e+00, %834 ]
  %886 = add i32 %21, 96
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %888, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = fmul fast float %893, %894
  %896 = fadd fast float %895, %890
  %897 = fmul fast float %896, 0x3F70101020000000
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  br label %899

; <label>:899                                     ; preds = %882, %426
  %900 = phi float [ 0.000000e+00, %426 ], [ %836, %882 ]
  %901 = phi float [ 0.000000e+00, %426 ], [ %837, %882 ]
  %902 = phi float [ 0.000000e+00, %426 ], [ %755, %882 ]
  %903 = phi float [ 0.000000e+00, %426 ], [ %756, %882 ]
  %904 = phi float [ 0.000000e+00, %426 ], [ %757, %882 ]
  %905 = phi float [ 0.000000e+00, %426 ], [ %883, %882 ]
  %906 = phi float [ 0.000000e+00, %426 ], [ %884, %882 ]
  %907 = phi float [ 0.000000e+00, %426 ], [ %885, %882 ]
  %908 = phi float [ 0.000000e+00, %426 ], [ %741, %882 ]
  %909 = phi float [ 0.000000e+00, %426 ], [ 1.000000e+00, %882 ]
  %910 = phi float [ 0.000000e+00, %426 ], [ %835, %882 ]
  %911 = phi float [ 0.000000e+00, %426 ], [ %838, %882 ]
  %912 = phi float [ 0.000000e+00, %426 ], [ %898, %882 ]
  br i1 %377, label %1639, label %913

; <label>:913                                     ; preds = %899
  %914 = icmp ult i32 %432, 2
  %915 = add i32 %21, 40
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %21, 44
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = or i32 %920, %917
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %1639, label %923

; <label>:923                                     ; preds = %913
  %924 = and i32 %917, 262144
  %925 = icmp ne i32 %924, 0
  %926 = select i1 %925, float %26, float 1.000000e+00
  %927 = select i1 %925, float %27, float 0.000000e+00
  %928 = select i1 %925, float %28, float 0.000000e+00
  %929 = select i1 %925, float %29, float 1.000000e+00
  %930 = select i1 %925, float %30, float %53
  %931 = select i1 %925, float %31, float %54
  %932 = add i32 %21, 300
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 16
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = fmul fast float %936, 0x3F50624DE0000000
  %938 = add i32 %21, 104
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 16
  %942 = and i32 %941, 255
  %943 = lshr i32 %940, 24
  %944 = add i32 %21, 308
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %946, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = add i32 %21, 48
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 22
  %955 = shl nuw nsw i32 %954, 5
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = shl i32 %953, 4
  %958 = and i32 %957, 32752
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = lshr i32 %953, 7
  %961 = and i32 %960, 32752
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %965 = fmul fast float %964, 1.000000e+03
  %966 = fmul fast float %287, %965
  %967 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %968 = fadd fast float %967, %277
  %969 = fmul fast float %288, %965
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fadd fast float %970, %279
  %972 = fmul fast float %937, %965
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = fmul fast float %973, 0x401921FB60000000
  %975 = fadd fast float %974, %956
  %976 = call float @dx.op.unary.f32(i32 13, float %975)  ; Sin(value)
  %977 = call float @dx.op.unary.f32(i32 12, float %975)  ; Cos(value)
  %978 = fsub fast float -0.000000e+00, %976
  %979 = fadd fast float %930, -5.000000e-01
  %980 = fadd fast float %931, -5.000000e-01
  %981 = fmul fast float %948, %979
  %982 = fmul fast float %950, %980
  %983 = fadd fast float %981, 5.000000e-01
  %984 = fadd fast float %982, 5.000000e-01
  %985 = fmul fast float %959, %983
  %986 = fmul fast float %962, %984
  %987 = fmul fast float %977, %985
  %988 = call float @dx.op.tertiary.f32(i32 46, float %978, float %986, float %987)  ; FMad(a,b,c)
  %989 = fmul fast float %976, %985
  %990 = call float @dx.op.tertiary.f32(i32 46, float %977, float %986, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %968, %988
  %992 = fadd fast float %971, %990
  %993 = icmp ugt i32 %942, 1
  %994 = icmp ugt i32 %940, 33554431
  %995 = or i1 %994, %993
  br i1 %995, label %996, label %1021

; <label>:996                                     ; preds = %923
  %997 = add i32 %21, 244
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = lshr i32 %999, 16
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = fmul fast float %964, %1001
  %1003 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1004 = mul nuw nsw i32 %942, %943
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1003, %1005
  %1007 = call float @dx.op.unary.f32(i32 27, float %1006)  ; Round_ni(value)
  %1008 = fptoui float %1007 to i32
  %1009 = urem i32 %1008, %942
  %1010 = udiv i32 %1008, %943
  %1011 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %1012 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %1013 = uitofp i32 %1009 to float
  %1014 = uitofp i32 %1010 to float
  %1015 = fadd fast float %1011, %1013
  %1016 = fadd fast float %1012, %1014
  %1017 = uitofp i32 %942 to float
  %1018 = uitofp i32 %943 to float
  %1019 = fdiv fast float %1015, %1017
  %1020 = fdiv fast float %1016, %1018
  br label %1021

; <label>:1021                                    ; preds = %996, %923
  %1022 = phi float [ %1019, %996 ], [ %991, %923 ]
  %1023 = phi float [ %1020, %996 ], [ %992, %923 ]
  %1024 = and i32 %917, 256
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1072, label %1026

; <label>:1026                                    ; preds = %1021
  %1027 = add i32 %21, 444
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = add i32 %1029, 0
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1031, %dx.types.Handle %62, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = add i32 %21, 116
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = shl i32 %1036, 4
  %1038 = and i32 %1037, 32752
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = lshr i32 %1036, 7
  %1041 = and i32 %1040, 32752
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = fsub fast float 1.000000e+00, %429
  %1044 = call float @dx.op.binary.f32(i32 35, float %1043, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1045 = bitcast float %429 to i32
  %1046 = sitofp i32 %1045 to float
  %1047 = fadd fast float %1046, 0xC1CFBF8940000000
  %1048 = fmul fast float %1042, %1047
  %1049 = fadd fast float %1048, 0x41CFBF8940000000
  %1050 = fptosi float %1049 to i32
  %1051 = bitcast i32 %1050 to float
  %1052 = bitcast float %1044 to i32
  %1053 = sitofp i32 %1052 to float
  %1054 = fadd fast float %1053, 0xC1CFBF8940000000
  %1055 = fmul fast float %1054, %1042
  %1056 = fadd fast float %1055, 0x41CFBF8940000000
  %1057 = fptosi float %1056 to i32
  %1058 = bitcast i32 %1057 to float
  %1059 = fmul fast float %1051, %1039
  %1060 = fmul fast float %1058, %1039
  %1061 = fsub fast float %1044, %1059
  %1062 = fadd fast float %1060, %1044
  %1063 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1064 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1065 = fsub fast float %1033, %1063
  %1066 = fsub fast float %1064, %1063
  %1067 = bitcast float %1066 to i32
  %1068 = sub nsw i32 2129859010, %1067
  %1069 = bitcast i32 %1068 to float
  %1070 = fmul fast float %1069, %1065
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  br label %1072

; <label>:1072                                    ; preds = %1026, %1021
  %1073 = phi float [ %1071, %1026 ], [ %429, %1021 ]
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 128
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1094, label %1078

; <label>:1078                                    ; preds = %1072
  %1079 = add i32 %21, 428
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1083, %dx.types.Handle %62, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 524288
  %1089 = icmp ne i32 %1088, 0
  %1090 = fcmp fast ogt float %1085, 0x3FE0101020000000
  %1091 = select i1 %1090, float 1.000000e+00, float 0.000000e+00
  %1092 = select i1 %1089, float %1091, float %1085
  %1093 = fmul fast float %1092, %1073
  br label %1094

; <label>:1094                                    ; preds = %1078, %1072
  %1095 = phi float [ %1093, %1078 ], [ %1073, %1072 ]
  %1096 = fcmp fast ult float %1095, 0x3F70101020000000
  br i1 %1096, label %1639, label %1097

; <label>:1097                                    ; preds = %1094
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 16
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1300, label %1102

; <label>:1102                                    ; preds = %1097
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %21, 380
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %61, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1115 = and i32 %1104, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = lshr i32 %1104, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1114, %1116
  %1121 = fadd fast float %1120, %1119
  %1122 = fmul fast float %1121, 0x3F70101000000000
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 512
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1135, label %1127

; <label>:1127                                    ; preds = %1102
  %1128 = add i32 %21, 460
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = add i32 %1130, 0
  %1132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1132, %dx.types.Handle %62, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  br label %1135

; <label>:1135                                    ; preds = %1127, %1102
  %1136 = phi float [ %1134, %1127 ], [ 1.000000e+00, %1102 ]
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 33554432
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1247, label %1141

; <label>:1141                                    ; preds = %1135
  %1142 = add i32 %21, 240
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 65535
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = lshr i32 %1144, 16
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = add i32 %21, 244
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 24
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = and i32 %1155, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = lshr i32 %1155, 8
  %1163 = and i32 %1162, 255
  %1164 = uitofp i32 %1163 to float
  %1165 = fmul fast float %1164, 0x3F70101020000000
  %1166 = lshr i32 %1155, 16
  %1167 = and i32 %1166, 255
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F70101020000000
  %1170 = add i32 %21, 236
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 24
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3F70101020000000
  %1176 = and i32 %1172, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = lshr i32 %1172, 8
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = lshr i32 %1172, 16
  %1184 = and i32 %1183, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F70101020000000
  %1187 = bitcast float %1111 to i32
  %1188 = ashr i32 %1187, 1
  %1189 = sub nsw i32 1597463174, %1188
  %1190 = bitcast i32 %1189 to float
  %1191 = fmul fast float %1111, 5.000000e-01
  %1192 = fmul fast float %1190, %1190
  %1193 = fmul fast float %1192, %1191
  %1194 = fsub fast float 1.500000e+00, %1193
  %1195 = fmul fast float %1190, %1111
  %1196 = fmul fast float %1195, %1194
  %1197 = bitcast float %1112 to i32
  %1198 = ashr i32 %1197, 1
  %1199 = sub nsw i32 1597463174, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1112, 5.000000e-01
  %1202 = fmul fast float %1200, %1200
  %1203 = fmul fast float %1202, %1201
  %1204 = fsub fast float 1.500000e+00, %1203
  %1205 = fmul fast float %1200, %1112
  %1206 = fmul fast float %1205, %1204
  %1207 = bitcast float %1113 to i32
  %1208 = ashr i32 %1207, 1
  %1209 = sub nsw i32 1597463174, %1208
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1113, 5.000000e-01
  %1212 = fmul fast float %1210, %1210
  %1213 = fmul fast float %1212, %1211
  %1214 = fsub fast float 1.500000e+00, %1213
  %1215 = fmul fast float %1210, %1113
  %1216 = fmul fast float %1215, %1214
  %1217 = fsub fast float %1196, %1178
  %1218 = fsub fast float %1206, %1182
  %1219 = fsub fast float %1216, %1186
  %1220 = fmul fast float %1217, %1146
  %1221 = fmul fast float %1218, %1148
  %1222 = fmul fast float %1219, %1153
  %1223 = fadd fast float %1220, %1161
  %1224 = fadd fast float %1221, %1165
  %1225 = fadd fast float %1222, %1169
  %1226 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1227 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1228 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1229 = fmul fast float %1226, %1226
  %1230 = fmul fast float %1227, %1227
  %1231 = fmul fast float %1228, %1228
  %1232 = fsub fast float %1229, %1111
  %1233 = fsub fast float %1230, %1112
  %1234 = fsub fast float %1231, %1113
  %1235 = fmul fast float %1232, %1136
  %1236 = fmul fast float %1233, %1136
  %1237 = fmul fast float %1234, %1136
  %1238 = fadd fast float %1235, %1111
  %1239 = fadd fast float %1236, %1112
  %1240 = fadd fast float %1237, %1113
  %1241 = fadd fast float %1158, %1122
  %1242 = fsub fast float %1241, %1175
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fsub fast float %1243, %1122
  %1245 = fmul fast float %1244, %1136
  %1246 = fadd fast float %1245, %1122
  br label %1300

; <label>:1247                                    ; preds = %1135
  %1248 = and i32 %1138, 134217728
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1284, label %1250

; <label>:1250                                    ; preds = %1247
  %1251 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1252 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1253 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %1254 = fadd fast float %1251, -5.000000e-01
  %1255 = fadd fast float %1252, -5.000000e-01
  %1256 = fadd fast float %1253, -5.000000e-01
  %1257 = fmul fast float %1254, %1136
  %1258 = fmul fast float %1255, %1136
  %1259 = fmul fast float %1256, %1136
  %1260 = fadd fast float %1257, 5.000000e-01
  %1261 = fadd fast float %1258, 5.000000e-01
  %1262 = fadd fast float %1259, 5.000000e-01
  %1263 = call float @dx.op.unary.f32(i32 24, float %1111)  ; Sqrt(value)
  %1264 = call float @dx.op.unary.f32(i32 24, float %1112)  ; Sqrt(value)
  %1265 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1266 = fmul fast float %1260, 2.000000e+00
  %1267 = fsub fast float 1.000000e+00, %1266
  %1268 = fmul fast float %1267, %1263
  %1269 = fadd fast float %1268, %1266
  %1270 = fmul fast float %1269, %1263
  %1271 = fmul fast float %1261, 2.000000e+00
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = fmul fast float %1272, %1264
  %1274 = fadd fast float %1273, %1271
  %1275 = fmul fast float %1274, %1264
  %1276 = fmul fast float %1262, 2.000000e+00
  %1277 = fsub fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1277, %1265
  %1279 = fadd fast float %1278, %1276
  %1280 = fmul fast float %1279, %1265
  %1281 = fmul fast float %1270, %1270
  %1282 = fmul fast float %1275, %1275
  %1283 = fmul fast float %1280, %1280
  br label %1300

; <label>:1284                                    ; preds = %1247
  %1285 = fmul fast float %264, %264
  %1286 = fmul fast float %268, %268
  %1287 = fmul fast float %272, %272
  %1288 = fadd fast float %1285, -1.000000e+00
  %1289 = fadd fast float %1286, -1.000000e+00
  %1290 = fadd fast float %1287, -1.000000e+00
  %1291 = fmul fast float %1136, %1288
  %1292 = fmul fast float %1136, %1289
  %1293 = fmul fast float %1136, %1290
  %1294 = fadd fast float %1291, 1.000000e+00
  %1295 = fadd fast float %1292, 1.000000e+00
  %1296 = fadd fast float %1293, 1.000000e+00
  %1297 = fmul fast float %1294, %1111
  %1298 = fmul fast float %1295, %1112
  %1299 = fmul fast float %1296, %1113
  br label %1300

; <label>:1300                                    ; preds = %1284, %1250, %1141, %1097
  %1301 = phi float [ %1246, %1141 ], [ %1122, %1250 ], [ %1122, %1284 ], [ 0x3FA23C0BE0000000, %1097 ]
  %1302 = phi float [ %1238, %1141 ], [ %1281, %1250 ], [ %1297, %1284 ], [ 1.000000e+00, %1097 ]
  %1303 = phi float [ %1239, %1141 ], [ %1282, %1250 ], [ %1298, %1284 ], [ 1.000000e+00, %1097 ]
  %1304 = phi float [ %1240, %1141 ], [ %1283, %1250 ], [ %1299, %1284 ], [ 1.000000e+00, %1097 ]
  %1305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.i32 %1305, 1
  %1307 = and i32 %1306, 1
  %1308 = icmp ne i32 %1307, 0
  %1309 = add i32 %21, 356
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 32
  %1313 = icmp ne i32 %1312, 0
  %1314 = and i1 %1308, %1313
  %1315 = select i1 %1314, float 1.000000e+00, float %1302
  %1316 = select i1 %1314, float 0x3FD3333340000000, float %1303
  %1317 = select i1 %1314, float 0x3FD3333340000000, float %1304
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 32
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1394, label %1322

; <label>:1322                                    ; preds = %1300
  %1323 = add i32 %21, 108
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %21, 396
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %1328, 0
  %1330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1330, %dx.types.Handle %61, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.ResRet.f32 %1331, 3
  %1336 = and i32 %1325, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = lshr i32 %1325, 8
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1325, 16
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1343, 0x3F70101000000000
  %1345 = fmul fast float %1332, %1337
  %1346 = fadd fast float %1345, %1340
  %1347 = fmul fast float %1346, 0x3F70101000000000
  %1348 = fadd fast float %1333, -5.000000e-01
  %1349 = fadd fast float %1335, -5.000000e-01
  %1350 = fmul fast float %1348, %1344
  %1351 = fmul fast float %1349, %1344
  %1352 = fadd fast float %1350, 5.000000e-01
  %1353 = fadd fast float %1351, 5.000000e-01
  %1354 = fmul fast float %1352, 2.000000e+00
  %1355 = fadd fast float %1354, -1.000000e+00
  %1356 = fmul fast float %1353, 2.000000e+00
  %1357 = fadd fast float %1356, -1.000000e+00
  %1358 = fadd fast float %1355, %1357
  %1359 = fmul fast float %1358, 5.000000e-01
  %1360 = fsub fast float %1355, %1357
  %1361 = fmul fast float %1360, 5.000000e-01
  %1362 = call float @dx.op.unary.f32(i32 6, float %1359)  ; FAbs(value)
  %1363 = fsub fast float 1.000000e+00, %1362
  %1364 = call float @dx.op.unary.f32(i32 6, float %1361)  ; FAbs(value)
  %1365 = fsub fast float %1363, %1364
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1359, float %1361, float %1365, float %1359, float %1361, float %1365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.unary.f32(i32 25, float %1366)  ; Rsqrt(value)
  %1368 = fmul fast float %1359, %1367
  %1369 = fmul fast float %1361, %1367
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 67108864
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1390, label %1374

; <label>:1374                                    ; preds = %1322
  %1375 = add i32 %21, 296
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 65535
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 65535
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1377, 16
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = fsub fast float %1347, %1385
  %1387 = fmul fast float %1386, %1379
  %1388 = fadd fast float %1387, %1383
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  br label %1390

; <label>:1390                                    ; preds = %1374, %1322
  %1391 = phi float [ %1389, %1374 ], [ %1347, %1322 ]
  %1392 = call float @dx.op.dot2.f32(i32 54, float %1368, float %1369, float %926, float %927)  ; Dot2(ax,ay,bx,by)
  %1393 = call float @dx.op.dot2.f32(i32 54, float %1368, float %1369, float %928, float %929)  ; Dot2(ax,ay,bx,by)
  br label %1394

; <label>:1394                                    ; preds = %1390, %1300
  %1395 = phi float [ %1391, %1390 ], [ 0x3FD6666660000000, %1300 ]
  %1396 = phi float [ %1392, %1390 ], [ 0.000000e+00, %1300 ]
  %1397 = phi float [ %1393, %1390 ], [ 0.000000e+00, %1300 ]
  %1398 = phi float [ %1334, %1390 ], [ 1.000000e+00, %1300 ]
  %1399 = add i32 %21, 176
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = lshr i32 %1401, 22
  %1403 = shl nuw nsw i32 %1402, 5
  %1404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1403)  ; LegacyF16ToF32(value)
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 64
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1442, label %1409

; <label>:1409                                    ; preds = %1394
  %1410 = add i32 %21, 412
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 131072
  %1418 = icmp eq i32 %1417, 0
  %1419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %61, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = fmul fast float %1420, %252
  %1424 = fmul fast float %1421, %255
  %1425 = fmul fast float %1422, %258
  br i1 %1418, label %1432, label %1426

; <label>:1426                                    ; preds = %1409
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = fmul fast float %1428, %1423
  %1430 = fmul fast float %1428, %1424
  %1431 = fmul fast float %1428, %1425
  br label %1432

; <label>:1432                                    ; preds = %1426, %1409
  %1433 = phi float [ %1429, %1426 ], [ %1423, %1409 ]
  %1434 = phi float [ %1430, %1426 ], [ %1424, %1409 ]
  %1435 = phi float [ %1431, %1426 ], [ %1425, %1409 ]
  %1436 = fmul fast float %1433, %1404
  %1437 = select i1 %193, float %1436, float %1433
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1434, float %1435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = select i1 %193, float 0.000000e+00, float %1433
  %1440 = select i1 %193, float %1438, float %1434
  %1441 = select i1 %193, float 0.000000e+00, float %1435
  br label %1442

; <label>:1442                                    ; preds = %1432, %1394
  %1443 = phi float [ %1439, %1432 ], [ 0.000000e+00, %1394 ]
  %1444 = phi float [ %1440, %1432 ], [ 0.000000e+00, %1394 ]
  %1445 = phi float [ %1441, %1432 ], [ 0.000000e+00, %1394 ]
  %1446 = add i32 %21, 112
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1448, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1315, float %1316, float %1317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = fmul fast float %1453, %1454
  %1456 = fadd fast float %1455, %1450
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  br i1 %914, label %1459, label %1467

; <label>:1459                                    ; preds = %1442
  %1460 = fsub fast float 1.000000e+00, %1095
  %1461 = fmul fast float %1460, %902
  %1462 = fmul fast float %1460, %903
  %1463 = fmul fast float %1460, %904
  %1464 = fmul fast float %1460, %905
  %1465 = fmul fast float %1460, %906
  %1466 = fmul fast float %1460, %907
  br label %1467

; <label>:1467                                    ; preds = %1459, %1442
  %1468 = phi float [ %1461, %1459 ], [ %902, %1442 ]
  %1469 = phi float [ %1462, %1459 ], [ %903, %1442 ]
  %1470 = phi float [ %1463, %1459 ], [ %904, %1442 ]
  %1471 = phi float [ %1464, %1459 ], [ %905, %1442 ]
  %1472 = phi float [ %1465, %1459 ], [ %906, %1442 ]
  %1473 = phi float [ %1466, %1459 ], [ %907, %1442 ]
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 3
  %1477 = icmp eq i32 %1476, 3
  br i1 %1477, label %1556, label %1478

; <label>:1478                                    ; preds = %1467
  %1479 = and i32 %1475, 16
  %1480 = icmp ne i32 %1479, 0
  %1481 = select i1 %1480, float %1095, float 0.000000e+00
  %1482 = icmp eq i32 %1476, 0
  br i1 %1482, label %1483, label %1511

; <label>:1483                                    ; preds = %1478
  %1484 = and i32 %1475, 64
  %1485 = icmp ne i32 %1484, 0
  %1486 = select i1 %1485, float %1095, float 0.000000e+00
  %1487 = fsub fast float %1315, %1468
  %1488 = fsub fast float %1316, %1469
  %1489 = fsub fast float %1317, %1470
  %1490 = fmul fast float %1481, %1487
  %1491 = fmul fast float %1481, %1488
  %1492 = fmul fast float %1481, %1489
  %1493 = fadd fast float %1490, %1468
  %1494 = fadd fast float %1491, %1469
  %1495 = fadd fast float %1492, %1470
  %1496 = fsub fast float %1301, %908
  %1497 = fmul fast float %1481, %1496
  %1498 = fadd fast float %1497, %908
  %1499 = fsub fast float %1443, %1471
  %1500 = fsub fast float %1444, %1472
  %1501 = fsub fast float %1445, %1473
  %1502 = fmul fast float %1486, %1499
  %1503 = fmul fast float %1486, %1500
  %1504 = fmul fast float %1486, %1501
  %1505 = fadd fast float %1502, %1471
  %1506 = fadd fast float %1503, %1472
  %1507 = fadd fast float %1504, %1473
  %1508 = fsub fast float %1458, %912
  %1509 = fmul fast float %1481, %1508
  %1510 = fadd fast float %1509, %912
  br label %1556

; <label>:1511                                    ; preds = %1478
  %1512 = icmp eq i32 %1476, 1
  br i1 %1512, label %1513, label %1526

; <label>:1513                                    ; preds = %1511
  %1514 = fadd fast float %1315, -1.000000e+00
  %1515 = fadd fast float %1316, -1.000000e+00
  %1516 = fadd fast float %1317, -1.000000e+00
  %1517 = fmul fast float %1481, %1514
  %1518 = fmul fast float %1481, %1515
  %1519 = fmul fast float %1481, %1516
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fadd fast float %1518, 1.000000e+00
  %1522 = fadd fast float %1519, 1.000000e+00
  %1523 = fmul fast float %1520, %1468
  %1524 = fmul fast float %1521, %1469
  %1525 = fmul fast float %1522, %1470
  br label %1556

; <label>:1526                                    ; preds = %1511
  %1527 = icmp eq i32 %1476, 2
  br i1 %1527, label %1528, label %1556

; <label>:1528                                    ; preds = %1526
  %1529 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1530 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1531 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  %1532 = fadd fast float %1529, -5.000000e-01
  %1533 = fadd fast float %1530, -5.000000e-01
  %1534 = fadd fast float %1531, -5.000000e-01
  %1535 = fmul fast float %1532, %1481
  %1536 = fmul fast float %1533, %1481
  %1537 = fmul fast float %1534, %1481
  %1538 = fadd fast float %1535, 5.000000e-01
  %1539 = fadd fast float %1536, 5.000000e-01
  %1540 = fadd fast float %1537, 5.000000e-01
  %1541 = fmul fast float %1538, 2.000000e+00
  %1542 = fsub fast float 1.000000e+00, %1541
  %1543 = fmul fast float %1542, %1468
  %1544 = fadd fast float %1543, %1541
  %1545 = fmul fast float %1544, %1468
  %1546 = fmul fast float %1539, 2.000000e+00
  %1547 = fsub fast float 1.000000e+00, %1546
  %1548 = fmul fast float %1547, %1469
  %1549 = fadd fast float %1548, %1546
  %1550 = fmul fast float %1549, %1469
  %1551 = fmul fast float %1540, 2.000000e+00
  %1552 = fsub fast float 1.000000e+00, %1551
  %1553 = fmul fast float %1552, %1470
  %1554 = fadd fast float %1553, %1551
  %1555 = fmul fast float %1554, %1470
  br label %1556

; <label>:1556                                    ; preds = %1528, %1526, %1513, %1483, %1467
  %1557 = phi float [ %1468, %1467 ], [ %1545, %1528 ], [ %1468, %1526 ], [ %1523, %1513 ], [ %1493, %1483 ]
  %1558 = phi float [ %1469, %1467 ], [ %1550, %1528 ], [ %1469, %1526 ], [ %1524, %1513 ], [ %1494, %1483 ]
  %1559 = phi float [ %1470, %1467 ], [ %1555, %1528 ], [ %1470, %1526 ], [ %1525, %1513 ], [ %1495, %1483 ]
  %1560 = phi float [ %1471, %1467 ], [ %1471, %1528 ], [ %1471, %1526 ], [ %1471, %1513 ], [ %1505, %1483 ]
  %1561 = phi float [ %1472, %1467 ], [ %1472, %1528 ], [ %1472, %1526 ], [ %1472, %1513 ], [ %1506, %1483 ]
  %1562 = phi float [ %1473, %1467 ], [ %1473, %1528 ], [ %1473, %1526 ], [ %1473, %1513 ], [ %1507, %1483 ]
  %1563 = phi float [ %908, %1467 ], [ %908, %1528 ], [ %908, %1526 ], [ %908, %1513 ], [ %1498, %1483 ]
  %1564 = phi float [ %912, %1467 ], [ %912, %1528 ], [ %912, %1526 ], [ %912, %1513 ], [ %1510, %1483 ]
  %1565 = and i32 %1475, 12
  %1566 = icmp eq i32 %1565, 12
  br i1 %1566, label %1639, label %1567

; <label>:1567                                    ; preds = %1556
  %1568 = and i32 %1475, 2097184
  %1569 = icmp eq i32 %1568, 2097184
  %1570 = select i1 %1569, float %1095, float 0.000000e+00
  %1571 = and i32 %1475, 4194336
  %1572 = icmp eq i32 %1571, 4194336
  %1573 = select i1 %1572, float %1095, float 0.000000e+00
  %1574 = and i32 %1475, 8388640
  %1575 = icmp eq i32 %1574, 8388640
  %1576 = select i1 %1575, float %1095, float 0.000000e+00
  %1577 = icmp eq i32 %1565, 0
  br i1 %1577, label %1578, label %1591

; <label>:1578                                    ; preds = %1567
  %1579 = fsub fast float %1396, %900
  %1580 = fsub fast float %1397, %901
  %1581 = fmul fast float %1570, %1579
  %1582 = fmul fast float %1570, %1580
  %1583 = fadd fast float %1581, %900
  %1584 = fadd fast float %1582, %901
  %1585 = fsub fast float %1398, %911
  %1586 = fmul fast float %1573, %1585
  %1587 = fadd fast float %1586, %911
  %1588 = fsub fast float %1395, %910
  %1589 = fmul fast float %1576, %1588
  %1590 = fadd fast float %1589, %910
  br label %1639

; <label>:1591                                    ; preds = %1567
  %1592 = icmp eq i32 %1565, 4
  br i1 %1592, label %1593, label %1625

; <label>:1593                                    ; preds = %1591
  %1594 = fmul fast float %1570, %1396
  %1595 = fmul fast float %1570, %1397
  %1596 = fadd fast float %1594, %900
  %1597 = fadd fast float %1595, %901
  %1598 = call float @dx.op.binary.f32(i32 36, float %911, float %1398)  ; FMin(a,b)
  %1599 = fsub fast float %1598, %911
  %1600 = fmul fast float %1599, %1573
  %1601 = fadd fast float %1600, %911
  %1602 = fadd fast float %1395, %910
  %1603 = fmul fast float %1602, 0x3FF337FAE0000000
  %1604 = fmul fast float %910, %910
  %1605 = fmul fast float %1395, %1395
  %1606 = fadd fast float %1605, %1604
  %1607 = fmul fast float %1606, 0x3FE5152B00000000
  %1608 = fmul fast float %910, 0xBFCC1F85E0000000
  %1609 = fmul fast float %1608, %1395
  %1610 = fadd fast float %1609, 0xBFE1363700000000
  %1611 = fadd fast float %1610, %1603
  %1612 = fsub fast float %1611, %1607
  %1613 = fmul fast float %1602, 0x3FBA6F0D00000000
  %1614 = fmul fast float %1606, 0x3FD0432880000000
  %1615 = fmul fast float %910, 0xBFEF110800000000
  %1616 = fmul fast float %1615, %1395
  %1617 = fadd fast float %1616, 1.000000e+00
  %1618 = fsub fast float %1617, %1613
  %1619 = fadd fast float %1618, %1614
  %1620 = fdiv fast float %1612, %1619
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fsub fast float %1621, %910
  %1623 = fmul fast float %1622, %1576
  %1624 = fadd fast float %1623, %910
  br label %1639

; <label>:1625                                    ; preds = %1591
  %1626 = icmp eq i32 %1565, 8
  br i1 %1626, label %1627, label %1639

; <label>:1627                                    ; preds = %1625
  %1628 = fmul fast float %1570, %1396
  %1629 = fmul fast float %1570, %1397
  %1630 = fadd fast float %1628, %900
  %1631 = fadd fast float %1629, %901
  %1632 = call float @dx.op.binary.f32(i32 36, float %911, float %1398)  ; FMin(a,b)
  %1633 = fsub fast float %1632, %911
  %1634 = fmul fast float %1633, %1573
  %1635 = fadd fast float %1634, %911
  %1636 = fsub fast float %1395, %910
  %1637 = fmul fast float %1576, %1636
  %1638 = fadd fast float %1637, %910
  br label %1639

; <label>:1639                                    ; preds = %1627, %1625, %1593, %1578, %1556, %1094, %913, %899
  %1640 = phi float [ %900, %1556 ], [ %900, %1094 ], [ %900, %899 ], [ %1630, %1627 ], [ %900, %1625 ], [ %1596, %1593 ], [ %1583, %1578 ], [ %900, %913 ]
  %1641 = phi float [ %901, %1556 ], [ %901, %1094 ], [ %901, %899 ], [ %1631, %1627 ], [ %901, %1625 ], [ %1597, %1593 ], [ %1584, %1578 ], [ %901, %913 ]
  %1642 = phi float [ %1557, %1556 ], [ %902, %1094 ], [ %902, %899 ], [ %1557, %1627 ], [ %1557, %1625 ], [ %1557, %1593 ], [ %1557, %1578 ], [ %902, %913 ]
  %1643 = phi float [ %1558, %1556 ], [ %903, %1094 ], [ %903, %899 ], [ %1558, %1627 ], [ %1558, %1625 ], [ %1558, %1593 ], [ %1558, %1578 ], [ %903, %913 ]
  %1644 = phi float [ %1559, %1556 ], [ %904, %1094 ], [ %904, %899 ], [ %1559, %1627 ], [ %1559, %1625 ], [ %1559, %1593 ], [ %1559, %1578 ], [ %904, %913 ]
  %1645 = phi float [ %1560, %1556 ], [ %905, %1094 ], [ %905, %899 ], [ %1560, %1627 ], [ %1560, %1625 ], [ %1560, %1593 ], [ %1560, %1578 ], [ %905, %913 ]
  %1646 = phi float [ %1561, %1556 ], [ %906, %1094 ], [ %906, %899 ], [ %1561, %1627 ], [ %1561, %1625 ], [ %1561, %1593 ], [ %1561, %1578 ], [ %906, %913 ]
  %1647 = phi float [ %1562, %1556 ], [ %907, %1094 ], [ %907, %899 ], [ %1562, %1627 ], [ %1562, %1625 ], [ %1562, %1593 ], [ %1562, %1578 ], [ %907, %913 ]
  %1648 = phi float [ %1563, %1556 ], [ %908, %1094 ], [ %908, %899 ], [ %1563, %1627 ], [ %1563, %1625 ], [ %1563, %1593 ], [ %1563, %1578 ], [ %908, %913 ]
  %1649 = phi float [ %910, %1556 ], [ %910, %1094 ], [ %910, %899 ], [ %1638, %1627 ], [ %910, %1625 ], [ %1624, %1593 ], [ %1590, %1578 ], [ %910, %913 ]
  %1650 = phi float [ %911, %1556 ], [ %911, %1094 ], [ %911, %899 ], [ %1635, %1627 ], [ %911, %1625 ], [ %1601, %1593 ], [ %1587, %1578 ], [ %911, %913 ]
  %1651 = phi float [ %1564, %1556 ], [ %912, %1094 ], [ %912, %899 ], [ %1564, %1627 ], [ %1564, %1625 ], [ %1564, %1593 ], [ %1564, %1578 ], [ %912, %913 ]
  br i1 %379, label %2378, label %1652

; <label>:1652                                    ; preds = %1639
  %1653 = icmp ult i32 %432, 3
  %1654 = add i32 %21, 56
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = add i32 %21, 60
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = or i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %2378, label %1662

; <label>:1662                                    ; preds = %1652
  %1663 = and i32 %1656, 262144
  %1664 = icmp ne i32 %1663, 0
  %1665 = select i1 %1664, float %26, float 1.000000e+00
  %1666 = select i1 %1664, float %27, float 0.000000e+00
  %1667 = select i1 %1664, float %28, float 0.000000e+00
  %1668 = select i1 %1664, float %29, float 1.000000e+00
  %1669 = select i1 %1664, float %30, float %53
  %1670 = select i1 %1664, float %31, float %54
  %1671 = add i32 %21, 316
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = lshr i32 %1673, 16
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = fmul fast float %1675, 0x3F50624DE0000000
  %1677 = add i32 %21, 120
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = lshr i32 %1679, 16
  %1681 = and i32 %1680, 255
  %1682 = lshr i32 %1679, 24
  %1683 = add i32 %21, 324
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = and i32 %1685, 65535
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = lshr i32 %1685, 16
  %1689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1688)  ; LegacyF16ToF32(value)
  %1690 = add i32 %21, 64
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = lshr i32 %1692, 22
  %1694 = shl nuw nsw i32 %1693, 5
  %1695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1694)  ; LegacyF16ToF32(value)
  %1696 = shl i32 %1692, 4
  %1697 = and i32 %1696, 32752
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = lshr i32 %1692, 7
  %1700 = and i32 %1699, 32752
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1704 = fmul fast float %1703, 1.000000e+03
  %1705 = fmul fast float %329, %1704
  %1706 = call float @dx.op.unary.f32(i32 22, float %1705)  ; Frc(value)
  %1707 = fadd fast float %1706, %319
  %1708 = fmul fast float %330, %1704
  %1709 = call float @dx.op.unary.f32(i32 22, float %1708)  ; Frc(value)
  %1710 = fadd fast float %1709, %321
  %1711 = fmul fast float %1676, %1704
  %1712 = call float @dx.op.unary.f32(i32 22, float %1711)  ; Frc(value)
  %1713 = fmul fast float %1712, 0x401921FB60000000
  %1714 = fadd fast float %1713, %1695
  %1715 = call float @dx.op.unary.f32(i32 13, float %1714)  ; Sin(value)
  %1716 = call float @dx.op.unary.f32(i32 12, float %1714)  ; Cos(value)
  %1717 = fsub fast float -0.000000e+00, %1715
  %1718 = fadd fast float %1669, -5.000000e-01
  %1719 = fadd fast float %1670, -5.000000e-01
  %1720 = fmul fast float %1687, %1718
  %1721 = fmul fast float %1689, %1719
  %1722 = fadd fast float %1720, 5.000000e-01
  %1723 = fadd fast float %1721, 5.000000e-01
  %1724 = fmul fast float %1698, %1722
  %1725 = fmul fast float %1701, %1723
  %1726 = fmul fast float %1716, %1724
  %1727 = call float @dx.op.tertiary.f32(i32 46, float %1717, float %1725, float %1726)  ; FMad(a,b,c)
  %1728 = fmul fast float %1715, %1724
  %1729 = call float @dx.op.tertiary.f32(i32 46, float %1716, float %1725, float %1728)  ; FMad(a,b,c)
  %1730 = fadd fast float %1707, %1727
  %1731 = fadd fast float %1710, %1729
  %1732 = icmp ugt i32 %1681, 1
  %1733 = icmp ugt i32 %1679, 33554431
  %1734 = or i1 %1733, %1732
  br i1 %1734, label %1735, label %1760

; <label>:1735                                    ; preds = %1662
  %1736 = add i32 %21, 260
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = lshr i32 %1738, 16
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = fmul fast float %1703, %1740
  %1742 = call float @dx.op.unary.f32(i32 22, float %1741)  ; Frc(value)
  %1743 = mul nuw nsw i32 %1681, %1682
  %1744 = uitofp i32 %1743 to float
  %1745 = fmul fast float %1742, %1744
  %1746 = call float @dx.op.unary.f32(i32 27, float %1745)  ; Round_ni(value)
  %1747 = fptoui float %1746 to i32
  %1748 = urem i32 %1747, %1681
  %1749 = udiv i32 %1747, %1682
  %1750 = call float @dx.op.unary.f32(i32 22, float %1730)  ; Frc(value)
  %1751 = call float @dx.op.unary.f32(i32 22, float %1731)  ; Frc(value)
  %1752 = uitofp i32 %1748 to float
  %1753 = uitofp i32 %1749 to float
  %1754 = fadd fast float %1750, %1752
  %1755 = fadd fast float %1751, %1753
  %1756 = uitofp i32 %1681 to float
  %1757 = uitofp i32 %1682 to float
  %1758 = fdiv fast float %1754, %1756
  %1759 = fdiv fast float %1755, %1757
  br label %1760

; <label>:1760                                    ; preds = %1735, %1662
  %1761 = phi float [ %1758, %1735 ], [ %1730, %1662 ]
  %1762 = phi float [ %1759, %1735 ], [ %1731, %1662 ]
  %1763 = and i32 %1656, 256
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1811, label %1765

; <label>:1765                                    ; preds = %1760
  %1766 = add i32 %21, 448
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %1768, 0
  %1770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1770, %dx.types.Handle %62, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = add i32 %21, 132
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = shl i32 %1775, 4
  %1777 = and i32 %1776, 32752
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = lshr i32 %1775, 7
  %1780 = and i32 %1779, 32752
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = fsub fast float 1.000000e+00, %428
  %1783 = call float @dx.op.binary.f32(i32 35, float %1782, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1784 = bitcast float %428 to i32
  %1785 = sitofp i32 %1784 to float
  %1786 = fadd fast float %1785, 0xC1CFBF8940000000
  %1787 = fmul fast float %1781, %1786
  %1788 = fadd fast float %1787, 0x41CFBF8940000000
  %1789 = fptosi float %1788 to i32
  %1790 = bitcast i32 %1789 to float
  %1791 = bitcast float %1783 to i32
  %1792 = sitofp i32 %1791 to float
  %1793 = fadd fast float %1792, 0xC1CFBF8940000000
  %1794 = fmul fast float %1793, %1781
  %1795 = fadd fast float %1794, 0x41CFBF8940000000
  %1796 = fptosi float %1795 to i32
  %1797 = bitcast i32 %1796 to float
  %1798 = fmul fast float %1790, %1778
  %1799 = fmul fast float %1797, %1778
  %1800 = fsub fast float %1783, %1798
  %1801 = fadd fast float %1799, %1783
  %1802 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1803 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1804 = fsub fast float %1772, %1802
  %1805 = fsub fast float %1803, %1802
  %1806 = bitcast float %1805 to i32
  %1807 = sub nsw i32 2129859010, %1806
  %1808 = bitcast i32 %1807 to float
  %1809 = fmul fast float %1808, %1804
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  br label %1811

; <label>:1811                                    ; preds = %1765, %1760
  %1812 = phi float [ %1810, %1765 ], [ %428, %1760 ]
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 128
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1833, label %1817

; <label>:1817                                    ; preds = %1811
  %1818 = add i32 %21, 432
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %1820, 0
  %1822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1822, %dx.types.Handle %62, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 524288
  %1828 = icmp ne i32 %1827, 0
  %1829 = fcmp fast ogt float %1824, 0x3FE0101020000000
  %1830 = select i1 %1829, float 1.000000e+00, float 0.000000e+00
  %1831 = select i1 %1828, float %1830, float %1824
  %1832 = fmul fast float %1831, %1812
  br label %1833

; <label>:1833                                    ; preds = %1817, %1811
  %1834 = phi float [ %1832, %1817 ], [ %1812, %1811 ]
  %1835 = fcmp fast ult float %1834, 0x3F70101020000000
  br i1 %1835, label %2378, label %1836

; <label>:1836                                    ; preds = %1833
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 16
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %2039, label %1841

; <label>:1841                                    ; preds = %1836
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = add i32 %21, 384
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = add i32 %1846, 0
  %1848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1848, %dx.types.Handle %61, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = extractvalue %dx.types.ResRet.f32 %1849, 3
  %1854 = and i32 %1843, 255
  %1855 = uitofp i32 %1854 to float
  %1856 = lshr i32 %1843, 8
  %1857 = and i32 %1856, 255
  %1858 = uitofp i32 %1857 to float
  %1859 = fmul fast float %1853, %1855
  %1860 = fadd fast float %1859, %1858
  %1861 = fmul fast float %1860, 0x3F70101000000000
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 512
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1874, label %1866

; <label>:1866                                    ; preds = %1841
  %1867 = add i32 %21, 464
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %62, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  br label %1874

; <label>:1874                                    ; preds = %1866, %1841
  %1875 = phi float [ %1873, %1866 ], [ 1.000000e+00, %1841 ]
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %1877, 33554432
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1986, label %1880

; <label>:1880                                    ; preds = %1874
  %1881 = add i32 %21, 256
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 65535
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = lshr i32 %1883, 16
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = add i32 %21, 260
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 65535
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 24
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = and i32 %1894, 255
  %1899 = uitofp i32 %1898 to float
  %1900 = fmul fast float %1899, 0x3F70101020000000
  %1901 = lshr i32 %1894, 8
  %1902 = and i32 %1901, 255
  %1903 = uitofp i32 %1902 to float
  %1904 = fmul fast float %1903, 0x3F70101020000000
  %1905 = lshr i32 %1894, 16
  %1906 = and i32 %1905, 255
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = add i32 %21, 252
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = lshr i32 %1911, 24
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = and i32 %1911, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1911, 8
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = lshr i32 %1911, 16
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1924, 0x3F70101020000000
  %1926 = bitcast float %1850 to i32
  %1927 = ashr i32 %1926, 1
  %1928 = sub nsw i32 1597463174, %1927
  %1929 = bitcast i32 %1928 to float
  %1930 = fmul fast float %1850, 5.000000e-01
  %1931 = fmul fast float %1929, %1929
  %1932 = fmul fast float %1931, %1930
  %1933 = fsub fast float 1.500000e+00, %1932
  %1934 = fmul fast float %1929, %1850
  %1935 = fmul fast float %1934, %1933
  %1936 = bitcast float %1851 to i32
  %1937 = ashr i32 %1936, 1
  %1938 = sub nsw i32 1597463174, %1937
  %1939 = bitcast i32 %1938 to float
  %1940 = fmul fast float %1851, 5.000000e-01
  %1941 = fmul fast float %1939, %1939
  %1942 = fmul fast float %1941, %1940
  %1943 = fsub fast float 1.500000e+00, %1942
  %1944 = fmul fast float %1939, %1851
  %1945 = fmul fast float %1944, %1943
  %1946 = bitcast float %1852 to i32
  %1947 = ashr i32 %1946, 1
  %1948 = sub nsw i32 1597463174, %1947
  %1949 = bitcast i32 %1948 to float
  %1950 = fmul fast float %1852, 5.000000e-01
  %1951 = fmul fast float %1949, %1949
  %1952 = fmul fast float %1951, %1950
  %1953 = fsub fast float 1.500000e+00, %1952
  %1954 = fmul fast float %1949, %1852
  %1955 = fmul fast float %1954, %1953
  %1956 = fsub fast float %1935, %1917
  %1957 = fsub fast float %1945, %1921
  %1958 = fsub fast float %1955, %1925
  %1959 = fmul fast float %1956, %1885
  %1960 = fmul fast float %1957, %1887
  %1961 = fmul fast float %1958, %1892
  %1962 = fadd fast float %1959, %1900
  %1963 = fadd fast float %1960, %1904
  %1964 = fadd fast float %1961, %1908
  %1965 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1966 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1968 = fmul fast float %1965, %1965
  %1969 = fmul fast float %1966, %1966
  %1970 = fmul fast float %1967, %1967
  %1971 = fsub fast float %1968, %1850
  %1972 = fsub fast float %1969, %1851
  %1973 = fsub fast float %1970, %1852
  %1974 = fmul fast float %1971, %1875
  %1975 = fmul fast float %1972, %1875
  %1976 = fmul fast float %1973, %1875
  %1977 = fadd fast float %1974, %1850
  %1978 = fadd fast float %1975, %1851
  %1979 = fadd fast float %1976, %1852
  %1980 = fadd fast float %1897, %1861
  %1981 = fsub fast float %1980, %1914
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fsub fast float %1982, %1861
  %1984 = fmul fast float %1983, %1875
  %1985 = fadd fast float %1984, %1861
  br label %2039

; <label>:1986                                    ; preds = %1874
  %1987 = and i32 %1877, 134217728
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2023, label %1989

; <label>:1989                                    ; preds = %1986
  %1990 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1991 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1992 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %1993 = fadd fast float %1990, -5.000000e-01
  %1994 = fadd fast float %1991, -5.000000e-01
  %1995 = fadd fast float %1992, -5.000000e-01
  %1996 = fmul fast float %1993, %1875
  %1997 = fmul fast float %1994, %1875
  %1998 = fmul fast float %1995, %1875
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fadd fast float %1997, 5.000000e-01
  %2001 = fadd fast float %1998, 5.000000e-01
  %2002 = call float @dx.op.unary.f32(i32 24, float %1850)  ; Sqrt(value)
  %2003 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %2004 = call float @dx.op.unary.f32(i32 24, float %1852)  ; Sqrt(value)
  %2005 = fmul fast float %1999, 2.000000e+00
  %2006 = fsub fast float 1.000000e+00, %2005
  %2007 = fmul fast float %2006, %2002
  %2008 = fadd fast float %2007, %2005
  %2009 = fmul fast float %2008, %2002
  %2010 = fmul fast float %2000, 2.000000e+00
  %2011 = fsub fast float 1.000000e+00, %2010
  %2012 = fmul fast float %2011, %2003
  %2013 = fadd fast float %2012, %2010
  %2014 = fmul fast float %2013, %2003
  %2015 = fmul fast float %2001, 2.000000e+00
  %2016 = fsub fast float 1.000000e+00, %2015
  %2017 = fmul fast float %2016, %2004
  %2018 = fadd fast float %2017, %2015
  %2019 = fmul fast float %2018, %2004
  %2020 = fmul fast float %2009, %2009
  %2021 = fmul fast float %2014, %2014
  %2022 = fmul fast float %2019, %2019
  br label %2039

; <label>:2023                                    ; preds = %1986
  %2024 = fmul fast float %306, %306
  %2025 = fmul fast float %310, %310
  %2026 = fmul fast float %314, %314
  %2027 = fadd fast float %2024, -1.000000e+00
  %2028 = fadd fast float %2025, -1.000000e+00
  %2029 = fadd fast float %2026, -1.000000e+00
  %2030 = fmul fast float %1875, %2027
  %2031 = fmul fast float %1875, %2028
  %2032 = fmul fast float %1875, %2029
  %2033 = fadd fast float %2030, 1.000000e+00
  %2034 = fadd fast float %2031, 1.000000e+00
  %2035 = fadd fast float %2032, 1.000000e+00
  %2036 = fmul fast float %2033, %1850
  %2037 = fmul fast float %2034, %1851
  %2038 = fmul fast float %2035, %1852
  br label %2039

; <label>:2039                                    ; preds = %2023, %1989, %1880, %1836
  %2040 = phi float [ %1985, %1880 ], [ %1861, %1989 ], [ %1861, %2023 ], [ 0x3FA23C0BE0000000, %1836 ]
  %2041 = phi float [ %1977, %1880 ], [ %2020, %1989 ], [ %2036, %2023 ], [ 1.000000e+00, %1836 ]
  %2042 = phi float [ %1978, %1880 ], [ %2021, %1989 ], [ %2037, %2023 ], [ 1.000000e+00, %1836 ]
  %2043 = phi float [ %1979, %1880 ], [ %2022, %1989 ], [ %2038, %2023 ], [ 1.000000e+00, %1836 ]
  %2044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.i32 %2044, 1
  %2046 = and i32 %2045, 1
  %2047 = icmp ne i32 %2046, 0
  %2048 = add i32 %21, 356
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = and i32 %2050, 32
  %2052 = icmp ne i32 %2051, 0
  %2053 = and i1 %2047, %2052
  %2054 = select i1 %2053, float 1.000000e+00, float %2041
  %2055 = select i1 %2053, float 0x3FD3333340000000, float %2042
  %2056 = select i1 %2053, float 0x3FD3333340000000, float %2043
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 32
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2133, label %2061

; <label>:2061                                    ; preds = %2039
  %2062 = add i32 %21, 124
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %21, 400
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %2067, 0
  %2069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2069, %dx.types.Handle %61, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = extractvalue %dx.types.ResRet.f32 %2070, 3
  %2075 = and i32 %2064, 255
  %2076 = uitofp i32 %2075 to float
  %2077 = lshr i32 %2064, 8
  %2078 = and i32 %2077, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = lshr i32 %2064, 16
  %2081 = and i32 %2080, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101000000000
  %2084 = fmul fast float %2071, %2076
  %2085 = fadd fast float %2084, %2079
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = fadd fast float %2072, -5.000000e-01
  %2088 = fadd fast float %2074, -5.000000e-01
  %2089 = fmul fast float %2087, %2083
  %2090 = fmul fast float %2088, %2083
  %2091 = fadd fast float %2089, 5.000000e-01
  %2092 = fadd fast float %2090, 5.000000e-01
  %2093 = fmul fast float %2091, 2.000000e+00
  %2094 = fadd fast float %2093, -1.000000e+00
  %2095 = fmul fast float %2092, 2.000000e+00
  %2096 = fadd fast float %2095, -1.000000e+00
  %2097 = fadd fast float %2094, %2096
  %2098 = fmul fast float %2097, 5.000000e-01
  %2099 = fsub fast float %2094, %2096
  %2100 = fmul fast float %2099, 5.000000e-01
  %2101 = call float @dx.op.unary.f32(i32 6, float %2098)  ; FAbs(value)
  %2102 = fsub fast float 1.000000e+00, %2101
  %2103 = call float @dx.op.unary.f32(i32 6, float %2100)  ; FAbs(value)
  %2104 = fsub fast float %2102, %2103
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2098, float %2100, float %2104, float %2098, float %2100, float %2104)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.unary.f32(i32 25, float %2105)  ; Rsqrt(value)
  %2107 = fmul fast float %2098, %2106
  %2108 = fmul fast float %2100, %2106
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 67108864
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2129, label %2113

; <label>:2113                                    ; preds = %2061
  %2114 = add i32 %21, 312
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = and i32 %2116, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = and i32 %2120, 65535
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = lshr i32 %2116, 16
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = fsub fast float %2086, %2124
  %2126 = fmul fast float %2125, %2118
  %2127 = fadd fast float %2126, %2122
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  br label %2129

; <label>:2129                                    ; preds = %2113, %2061
  %2130 = phi float [ %2128, %2113 ], [ %2086, %2061 ]
  %2131 = call float @dx.op.dot2.f32(i32 54, float %2107, float %2108, float %1665, float %1666)  ; Dot2(ax,ay,bx,by)
  %2132 = call float @dx.op.dot2.f32(i32 54, float %2107, float %2108, float %1667, float %1668)  ; Dot2(ax,ay,bx,by)
  br label %2133

; <label>:2133                                    ; preds = %2129, %2039
  %2134 = phi float [ %2130, %2129 ], [ 0x3FD6666660000000, %2039 ]
  %2135 = phi float [ %2131, %2129 ], [ 0.000000e+00, %2039 ]
  %2136 = phi float [ %2132, %2129 ], [ 0.000000e+00, %2039 ]
  %2137 = phi float [ %2073, %2129 ], [ 1.000000e+00, %2039 ]
  %2138 = add i32 %21, 192
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = lshr i32 %2140, 22
  %2142 = shl nuw nsw i32 %2141, 5
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 64
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2181, label %2148

; <label>:2148                                    ; preds = %2133
  %2149 = add i32 %21, 416
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 131072
  %2157 = icmp eq i32 %2156, 0
  %2158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2153, %dx.types.Handle %61, float %1761, float %1762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = fmul fast float %2159, %294
  %2163 = fmul fast float %2160, %297
  %2164 = fmul fast float %2161, %300
  br i1 %2157, label %2171, label %2165

; <label>:2165                                    ; preds = %2148
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = fmul fast float %2167, %2162
  %2169 = fmul fast float %2167, %2163
  %2170 = fmul fast float %2167, %2164
  br label %2171

; <label>:2171                                    ; preds = %2165, %2148
  %2172 = phi float [ %2168, %2165 ], [ %2162, %2148 ]
  %2173 = phi float [ %2169, %2165 ], [ %2163, %2148 ]
  %2174 = phi float [ %2170, %2165 ], [ %2164, %2148 ]
  %2175 = fmul fast float %2172, %2143
  %2176 = select i1 %193, float %2175, float %2172
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2173, float %2174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = select i1 %193, float 0.000000e+00, float %2172
  %2179 = select i1 %193, float %2177, float %2173
  %2180 = select i1 %193, float 0.000000e+00, float %2174
  br label %2181

; <label>:2181                                    ; preds = %2171, %2133
  %2182 = phi float [ %2178, %2171 ], [ 0.000000e+00, %2133 ]
  %2183 = phi float [ %2179, %2171 ], [ 0.000000e+00, %2133 ]
  %2184 = phi float [ %2180, %2171 ], [ 0.000000e+00, %2133 ]
  %2185 = add i32 %21, 128
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2187, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = call float @dx.op.dot3.f32(i32 55, float %2054, float %2055, float %2056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2194 = fmul fast float %2192, %2193
  %2195 = fadd fast float %2194, %2189
  %2196 = fmul fast float %2195, 0x3F70101020000000
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  br i1 %1653, label %2198, label %2206

; <label>:2198                                    ; preds = %2181
  %2199 = fsub fast float 1.000000e+00, %1834
  %2200 = fmul fast float %2199, %1642
  %2201 = fmul fast float %2199, %1643
  %2202 = fmul fast float %2199, %1644
  %2203 = fmul fast float %2199, %1645
  %2204 = fmul fast float %2199, %1646
  %2205 = fmul fast float %2199, %1647
  br label %2206

; <label>:2206                                    ; preds = %2198, %2181
  %2207 = phi float [ %2200, %2198 ], [ %1642, %2181 ]
  %2208 = phi float [ %2201, %2198 ], [ %1643, %2181 ]
  %2209 = phi float [ %2202, %2198 ], [ %1644, %2181 ]
  %2210 = phi float [ %2203, %2198 ], [ %1645, %2181 ]
  %2211 = phi float [ %2204, %2198 ], [ %1646, %2181 ]
  %2212 = phi float [ %2205, %2198 ], [ %1647, %2181 ]
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 3
  %2216 = icmp eq i32 %2215, 3
  br i1 %2216, label %2295, label %2217

; <label>:2217                                    ; preds = %2206
  %2218 = and i32 %2214, 16
  %2219 = icmp ne i32 %2218, 0
  %2220 = select i1 %2219, float %1834, float 0.000000e+00
  %2221 = icmp eq i32 %2215, 0
  br i1 %2221, label %2222, label %2250

; <label>:2222                                    ; preds = %2217
  %2223 = and i32 %2214, 64
  %2224 = icmp ne i32 %2223, 0
  %2225 = select i1 %2224, float %1834, float 0.000000e+00
  %2226 = fsub fast float %2054, %2207
  %2227 = fsub fast float %2055, %2208
  %2228 = fsub fast float %2056, %2209
  %2229 = fmul fast float %2220, %2226
  %2230 = fmul fast float %2220, %2227
  %2231 = fmul fast float %2220, %2228
  %2232 = fadd fast float %2229, %2207
  %2233 = fadd fast float %2230, %2208
  %2234 = fadd fast float %2231, %2209
  %2235 = fsub fast float %2040, %1648
  %2236 = fmul fast float %2220, %2235
  %2237 = fadd fast float %2236, %1648
  %2238 = fsub fast float %2182, %2210
  %2239 = fsub fast float %2183, %2211
  %2240 = fsub fast float %2184, %2212
  %2241 = fmul fast float %2225, %2238
  %2242 = fmul fast float %2225, %2239
  %2243 = fmul fast float %2225, %2240
  %2244 = fadd fast float %2241, %2210
  %2245 = fadd fast float %2242, %2211
  %2246 = fadd fast float %2243, %2212
  %2247 = fsub fast float %2197, %1651
  %2248 = fmul fast float %2220, %2247
  %2249 = fadd fast float %2248, %1651
  br label %2295

; <label>:2250                                    ; preds = %2217
  %2251 = icmp eq i32 %2215, 1
  br i1 %2251, label %2252, label %2265

; <label>:2252                                    ; preds = %2250
  %2253 = fadd fast float %2054, -1.000000e+00
  %2254 = fadd fast float %2055, -1.000000e+00
  %2255 = fadd fast float %2056, -1.000000e+00
  %2256 = fmul fast float %2220, %2253
  %2257 = fmul fast float %2220, %2254
  %2258 = fmul fast float %2220, %2255
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fadd fast float %2258, 1.000000e+00
  %2262 = fmul fast float %2259, %2207
  %2263 = fmul fast float %2260, %2208
  %2264 = fmul fast float %2261, %2209
  br label %2295

; <label>:2265                                    ; preds = %2250
  %2266 = icmp eq i32 %2215, 2
  br i1 %2266, label %2267, label %2295

; <label>:2267                                    ; preds = %2265
  %2268 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2269 = call float @dx.op.unary.f32(i32 24, float %2055)  ; Sqrt(value)
  %2270 = call float @dx.op.unary.f32(i32 24, float %2056)  ; Sqrt(value)
  %2271 = fadd fast float %2268, -5.000000e-01
  %2272 = fadd fast float %2269, -5.000000e-01
  %2273 = fadd fast float %2270, -5.000000e-01
  %2274 = fmul fast float %2271, %2220
  %2275 = fmul fast float %2272, %2220
  %2276 = fmul fast float %2273, %2220
  %2277 = fadd fast float %2274, 5.000000e-01
  %2278 = fadd fast float %2275, 5.000000e-01
  %2279 = fadd fast float %2276, 5.000000e-01
  %2280 = fmul fast float %2277, 2.000000e+00
  %2281 = fsub fast float 1.000000e+00, %2280
  %2282 = fmul fast float %2281, %2207
  %2283 = fadd fast float %2282, %2280
  %2284 = fmul fast float %2283, %2207
  %2285 = fmul fast float %2278, 2.000000e+00
  %2286 = fsub fast float 1.000000e+00, %2285
  %2287 = fmul fast float %2286, %2208
  %2288 = fadd fast float %2287, %2285
  %2289 = fmul fast float %2288, %2208
  %2290 = fmul fast float %2279, 2.000000e+00
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = fmul fast float %2291, %2209
  %2293 = fadd fast float %2292, %2290
  %2294 = fmul fast float %2293, %2209
  br label %2295

; <label>:2295                                    ; preds = %2267, %2265, %2252, %2222, %2206
  %2296 = phi float [ %2207, %2206 ], [ %2284, %2267 ], [ %2207, %2265 ], [ %2262, %2252 ], [ %2232, %2222 ]
  %2297 = phi float [ %2208, %2206 ], [ %2289, %2267 ], [ %2208, %2265 ], [ %2263, %2252 ], [ %2233, %2222 ]
  %2298 = phi float [ %2209, %2206 ], [ %2294, %2267 ], [ %2209, %2265 ], [ %2264, %2252 ], [ %2234, %2222 ]
  %2299 = phi float [ %2210, %2206 ], [ %2210, %2267 ], [ %2210, %2265 ], [ %2210, %2252 ], [ %2244, %2222 ]
  %2300 = phi float [ %2211, %2206 ], [ %2211, %2267 ], [ %2211, %2265 ], [ %2211, %2252 ], [ %2245, %2222 ]
  %2301 = phi float [ %2212, %2206 ], [ %2212, %2267 ], [ %2212, %2265 ], [ %2212, %2252 ], [ %2246, %2222 ]
  %2302 = phi float [ %1648, %2206 ], [ %1648, %2267 ], [ %1648, %2265 ], [ %1648, %2252 ], [ %2237, %2222 ]
  %2303 = phi float [ %1651, %2206 ], [ %1651, %2267 ], [ %1651, %2265 ], [ %1651, %2252 ], [ %2249, %2222 ]
  %2304 = and i32 %2214, 12
  %2305 = icmp eq i32 %2304, 12
  br i1 %2305, label %2378, label %2306

; <label>:2306                                    ; preds = %2295
  %2307 = and i32 %2214, 2097184
  %2308 = icmp eq i32 %2307, 2097184
  %2309 = select i1 %2308, float %1834, float 0.000000e+00
  %2310 = and i32 %2214, 4194336
  %2311 = icmp eq i32 %2310, 4194336
  %2312 = select i1 %2311, float %1834, float 0.000000e+00
  %2313 = and i32 %2214, 8388640
  %2314 = icmp eq i32 %2313, 8388640
  %2315 = select i1 %2314, float %1834, float 0.000000e+00
  %2316 = icmp eq i32 %2304, 0
  br i1 %2316, label %2317, label %2330

; <label>:2317                                    ; preds = %2306
  %2318 = fsub fast float %2135, %1640
  %2319 = fsub fast float %2136, %1641
  %2320 = fmul fast float %2309, %2318
  %2321 = fmul fast float %2309, %2319
  %2322 = fadd fast float %2320, %1640
  %2323 = fadd fast float %2321, %1641
  %2324 = fsub fast float %2137, %1650
  %2325 = fmul fast float %2312, %2324
  %2326 = fadd fast float %2325, %1650
  %2327 = fsub fast float %2134, %1649
  %2328 = fmul fast float %2315, %2327
  %2329 = fadd fast float %2328, %1649
  br label %2378

; <label>:2330                                    ; preds = %2306
  %2331 = icmp eq i32 %2304, 4
  br i1 %2331, label %2332, label %2364

; <label>:2332                                    ; preds = %2330
  %2333 = fmul fast float %2309, %2135
  %2334 = fmul fast float %2309, %2136
  %2335 = fadd fast float %2333, %1640
  %2336 = fadd fast float %2334, %1641
  %2337 = call float @dx.op.binary.f32(i32 36, float %1650, float %2137)  ; FMin(a,b)
  %2338 = fsub fast float %2337, %1650
  %2339 = fmul fast float %2338, %2312
  %2340 = fadd fast float %2339, %1650
  %2341 = fadd fast float %2134, %1649
  %2342 = fmul fast float %2341, 0x3FF337FAE0000000
  %2343 = fmul fast float %1649, %1649
  %2344 = fmul fast float %2134, %2134
  %2345 = fadd fast float %2344, %2343
  %2346 = fmul fast float %2345, 0x3FE5152B00000000
  %2347 = fmul fast float %1649, 0xBFCC1F85E0000000
  %2348 = fmul fast float %2347, %2134
  %2349 = fadd fast float %2348, 0xBFE1363700000000
  %2350 = fadd fast float %2349, %2342
  %2351 = fsub fast float %2350, %2346
  %2352 = fmul fast float %2341, 0x3FBA6F0D00000000
  %2353 = fmul fast float %2345, 0x3FD0432880000000
  %2354 = fmul fast float %1649, 0xBFEF110800000000
  %2355 = fmul fast float %2354, %2134
  %2356 = fadd fast float %2355, 1.000000e+00
  %2357 = fsub fast float %2356, %2352
  %2358 = fadd fast float %2357, %2353
  %2359 = fdiv fast float %2351, %2358
  %2360 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2361 = fsub fast float %2360, %1649
  %2362 = fmul fast float %2361, %2315
  %2363 = fadd fast float %2362, %1649
  br label %2378

; <label>:2364                                    ; preds = %2330
  %2365 = icmp eq i32 %2304, 8
  br i1 %2365, label %2366, label %2378

; <label>:2366                                    ; preds = %2364
  %2367 = fmul fast float %2309, %2135
  %2368 = fmul fast float %2309, %2136
  %2369 = fadd fast float %2367, %1640
  %2370 = fadd fast float %2368, %1641
  %2371 = call float @dx.op.binary.f32(i32 36, float %1650, float %2137)  ; FMin(a,b)
  %2372 = fsub fast float %2371, %1650
  %2373 = fmul fast float %2372, %2312
  %2374 = fadd fast float %2373, %1650
  %2375 = fsub fast float %2134, %1649
  %2376 = fmul fast float %2315, %2375
  %2377 = fadd fast float %2376, %1649
  br label %2378

; <label>:2378                                    ; preds = %2366, %2364, %2332, %2317, %2295, %1833, %1652, %1639
  %2379 = phi float [ %1640, %2295 ], [ %1640, %1833 ], [ %1640, %1639 ], [ %2369, %2366 ], [ %1640, %2364 ], [ %2335, %2332 ], [ %2322, %2317 ], [ %1640, %1652 ]
  %2380 = phi float [ %1641, %2295 ], [ %1641, %1833 ], [ %1641, %1639 ], [ %2370, %2366 ], [ %1641, %2364 ], [ %2336, %2332 ], [ %2323, %2317 ], [ %1641, %1652 ]
  %2381 = phi float [ %2296, %2295 ], [ %1642, %1833 ], [ %1642, %1639 ], [ %2296, %2366 ], [ %2296, %2364 ], [ %2296, %2332 ], [ %2296, %2317 ], [ %1642, %1652 ]
  %2382 = phi float [ %2297, %2295 ], [ %1643, %1833 ], [ %1643, %1639 ], [ %2297, %2366 ], [ %2297, %2364 ], [ %2297, %2332 ], [ %2297, %2317 ], [ %1643, %1652 ]
  %2383 = phi float [ %2298, %2295 ], [ %1644, %1833 ], [ %1644, %1639 ], [ %2298, %2366 ], [ %2298, %2364 ], [ %2298, %2332 ], [ %2298, %2317 ], [ %1644, %1652 ]
  %2384 = phi float [ %2299, %2295 ], [ %1645, %1833 ], [ %1645, %1639 ], [ %2299, %2366 ], [ %2299, %2364 ], [ %2299, %2332 ], [ %2299, %2317 ], [ %1645, %1652 ]
  %2385 = phi float [ %2300, %2295 ], [ %1646, %1833 ], [ %1646, %1639 ], [ %2300, %2366 ], [ %2300, %2364 ], [ %2300, %2332 ], [ %2300, %2317 ], [ %1646, %1652 ]
  %2386 = phi float [ %2301, %2295 ], [ %1647, %1833 ], [ %1647, %1639 ], [ %2301, %2366 ], [ %2301, %2364 ], [ %2301, %2332 ], [ %2301, %2317 ], [ %1647, %1652 ]
  %2387 = phi float [ %2302, %2295 ], [ %1648, %1833 ], [ %1648, %1639 ], [ %2302, %2366 ], [ %2302, %2364 ], [ %2302, %2332 ], [ %2302, %2317 ], [ %1648, %1652 ]
  %2388 = phi float [ %1649, %2295 ], [ %1649, %1833 ], [ %1649, %1639 ], [ %2377, %2366 ], [ %1649, %2364 ], [ %2363, %2332 ], [ %2329, %2317 ], [ %1649, %1652 ]
  %2389 = phi float [ %1650, %2295 ], [ %1650, %1833 ], [ %1650, %1639 ], [ %2374, %2366 ], [ %1650, %2364 ], [ %2340, %2332 ], [ %2326, %2317 ], [ %1650, %1652 ]
  %2390 = phi float [ %2303, %2295 ], [ %1651, %1833 ], [ %1651, %1639 ], [ %2303, %2366 ], [ %2303, %2364 ], [ %2303, %2332 ], [ %2303, %2317 ], [ %1651, %1652 ]
  br i1 %381, label %3117, label %2391

; <label>:2391                                    ; preds = %2378
  %2392 = icmp ult i32 %432, 4
  %2393 = add i32 %21, 72
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = add i32 %21, 76
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = or i32 %2398, %2395
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %3117, label %2401

; <label>:2401                                    ; preds = %2391
  %2402 = and i32 %2395, 262144
  %2403 = icmp ne i32 %2402, 0
  %2404 = select i1 %2403, float %26, float 1.000000e+00
  %2405 = select i1 %2403, float %27, float 0.000000e+00
  %2406 = select i1 %2403, float %28, float 0.000000e+00
  %2407 = select i1 %2403, float %29, float 1.000000e+00
  %2408 = select i1 %2403, float %30, float %53
  %2409 = select i1 %2403, float %31, float %54
  %2410 = add i32 %21, 332
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = lshr i32 %2412, 16
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = fmul fast float %2414, 0x3F50624DE0000000
  %2416 = add i32 %21, 136
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = lshr i32 %2418, 16
  %2420 = and i32 %2419, 255
  %2421 = lshr i32 %2418, 24
  %2422 = add i32 %21, 340
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 65535
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = lshr i32 %2424, 16
  %2428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2427)  ; LegacyF16ToF32(value)
  %2429 = add i32 %21, 80
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = lshr i32 %2431, 22
  %2433 = shl nuw nsw i32 %2432, 5
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = shl i32 %2431, 4
  %2436 = and i32 %2435, 32752
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = lshr i32 %2431, 7
  %2439 = and i32 %2438, 32752
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 3
  %2443 = fmul fast float %2442, 1.000000e+03
  %2444 = fmul fast float %371, %2443
  %2445 = call float @dx.op.unary.f32(i32 22, float %2444)  ; Frc(value)
  %2446 = fadd fast float %2445, %361
  %2447 = fmul fast float %372, %2443
  %2448 = call float @dx.op.unary.f32(i32 22, float %2447)  ; Frc(value)
  %2449 = fadd fast float %2448, %363
  %2450 = fmul fast float %2415, %2443
  %2451 = call float @dx.op.unary.f32(i32 22, float %2450)  ; Frc(value)
  %2452 = fmul fast float %2451, 0x401921FB60000000
  %2453 = fadd fast float %2452, %2434
  %2454 = call float @dx.op.unary.f32(i32 13, float %2453)  ; Sin(value)
  %2455 = call float @dx.op.unary.f32(i32 12, float %2453)  ; Cos(value)
  %2456 = fsub fast float -0.000000e+00, %2454
  %2457 = fadd fast float %2408, -5.000000e-01
  %2458 = fadd fast float %2409, -5.000000e-01
  %2459 = fmul fast float %2426, %2457
  %2460 = fmul fast float %2428, %2458
  %2461 = fadd fast float %2459, 5.000000e-01
  %2462 = fadd fast float %2460, 5.000000e-01
  %2463 = fmul fast float %2437, %2461
  %2464 = fmul fast float %2440, %2462
  %2465 = fmul fast float %2455, %2463
  %2466 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2464, float %2465)  ; FMad(a,b,c)
  %2467 = fmul fast float %2454, %2463
  %2468 = call float @dx.op.tertiary.f32(i32 46, float %2455, float %2464, float %2467)  ; FMad(a,b,c)
  %2469 = fadd fast float %2446, %2466
  %2470 = fadd fast float %2449, %2468
  %2471 = icmp ugt i32 %2420, 1
  %2472 = icmp ugt i32 %2418, 33554431
  %2473 = or i1 %2472, %2471
  br i1 %2473, label %2474, label %2499

; <label>:2474                                    ; preds = %2401
  %2475 = add i32 %21, 276
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = lshr i32 %2477, 16
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = fmul fast float %2442, %2479
  %2481 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2482 = mul nuw nsw i32 %2420, %2421
  %2483 = uitofp i32 %2482 to float
  %2484 = fmul fast float %2481, %2483
  %2485 = call float @dx.op.unary.f32(i32 27, float %2484)  ; Round_ni(value)
  %2486 = fptoui float %2485 to i32
  %2487 = urem i32 %2486, %2420
  %2488 = udiv i32 %2486, %2421
  %2489 = call float @dx.op.unary.f32(i32 22, float %2469)  ; Frc(value)
  %2490 = call float @dx.op.unary.f32(i32 22, float %2470)  ; Frc(value)
  %2491 = uitofp i32 %2487 to float
  %2492 = uitofp i32 %2488 to float
  %2493 = fadd fast float %2489, %2491
  %2494 = fadd fast float %2490, %2492
  %2495 = uitofp i32 %2420 to float
  %2496 = uitofp i32 %2421 to float
  %2497 = fdiv fast float %2493, %2495
  %2498 = fdiv fast float %2494, %2496
  br label %2499

; <label>:2499                                    ; preds = %2474, %2401
  %2500 = phi float [ %2497, %2474 ], [ %2469, %2401 ]
  %2501 = phi float [ %2498, %2474 ], [ %2470, %2401 ]
  %2502 = and i32 %2395, 256
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2550, label %2504

; <label>:2504                                    ; preds = %2499
  %2505 = add i32 %21, 452
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = add i32 %2507, 0
  %2509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2509, %dx.types.Handle %62, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2511 = extractvalue %dx.types.ResRet.f32 %2510, 0
  %2512 = add i32 %21, 148
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = shl i32 %2514, 4
  %2516 = and i32 %2515, 32752
  %2517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2516)  ; LegacyF16ToF32(value)
  %2518 = lshr i32 %2514, 7
  %2519 = and i32 %2518, 32752
  %2520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2519)  ; LegacyF16ToF32(value)
  %2521 = fsub fast float 1.000000e+00, %427
  %2522 = call float @dx.op.binary.f32(i32 35, float %2521, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2523 = bitcast float %427 to i32
  %2524 = sitofp i32 %2523 to float
  %2525 = fadd fast float %2524, 0xC1CFBF8940000000
  %2526 = fmul fast float %2520, %2525
  %2527 = fadd fast float %2526, 0x41CFBF8940000000
  %2528 = fptosi float %2527 to i32
  %2529 = bitcast i32 %2528 to float
  %2530 = bitcast float %2522 to i32
  %2531 = sitofp i32 %2530 to float
  %2532 = fadd fast float %2531, 0xC1CFBF8940000000
  %2533 = fmul fast float %2532, %2520
  %2534 = fadd fast float %2533, 0x41CFBF8940000000
  %2535 = fptosi float %2534 to i32
  %2536 = bitcast i32 %2535 to float
  %2537 = fmul fast float %2529, %2517
  %2538 = fmul fast float %2536, %2517
  %2539 = fsub fast float %2522, %2537
  %2540 = fadd fast float %2538, %2522
  %2541 = call float @dx.op.unary.f32(i32 7, float %2539)  ; Saturate(value)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2543 = fsub fast float %2511, %2541
  %2544 = fsub fast float %2542, %2541
  %2545 = bitcast float %2544 to i32
  %2546 = sub nsw i32 2129859010, %2545
  %2547 = bitcast i32 %2546 to float
  %2548 = fmul fast float %2547, %2543
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  br label %2550

; <label>:2550                                    ; preds = %2504, %2499
  %2551 = phi float [ %2549, %2504 ], [ %427, %2499 ]
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 128
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %2572, label %2556

; <label>:2556                                    ; preds = %2550
  %2557 = add i32 %21, 436
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %2559, 0
  %2561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2561, %dx.types.Handle %62, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 524288
  %2567 = icmp ne i32 %2566, 0
  %2568 = fcmp fast ogt float %2563, 0x3FE0101020000000
  %2569 = select i1 %2568, float 1.000000e+00, float 0.000000e+00
  %2570 = select i1 %2567, float %2569, float %2563
  %2571 = fmul fast float %2570, %2551
  br label %2572

; <label>:2572                                    ; preds = %2556, %2550
  %2573 = phi float [ %2571, %2556 ], [ %2551, %2550 ]
  %2574 = fcmp fast ult float %2573, 0x3F70101020000000
  br i1 %2574, label %3117, label %2575

; <label>:2575                                    ; preds = %2572
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 16
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2778, label %2580

; <label>:2580                                    ; preds = %2575
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %21, 388
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %2585, 0
  %2587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2587, %dx.types.Handle %61, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2589 = extractvalue %dx.types.ResRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.ResRet.f32 %2588, 1
  %2591 = extractvalue %dx.types.ResRet.f32 %2588, 2
  %2592 = extractvalue %dx.types.ResRet.f32 %2588, 3
  %2593 = and i32 %2582, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = lshr i32 %2582, 8
  %2596 = and i32 %2595, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = fmul fast float %2592, %2594
  %2599 = fadd fast float %2598, %2597
  %2600 = fmul fast float %2599, 0x3F70101000000000
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 512
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2613, label %2605

; <label>:2605                                    ; preds = %2580
  %2606 = add i32 %21, 468
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = add i32 %2608, 0
  %2610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2610, %dx.types.Handle %62, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  br label %2613

; <label>:2613                                    ; preds = %2605, %2580
  %2614 = phi float [ %2612, %2605 ], [ 1.000000e+00, %2580 ]
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 33554432
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2725, label %2619

; <label>:2619                                    ; preds = %2613
  %2620 = add i32 %21, 272
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 65535
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = lshr i32 %2622, 16
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = add i32 %21, 276
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 65535
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 24
  %2635 = uitofp i32 %2634 to float
  %2636 = fmul fast float %2635, 0x3F70101020000000
  %2637 = and i32 %2633, 255
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 0x3F70101020000000
  %2640 = lshr i32 %2633, 8
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = lshr i32 %2633, 16
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = add i32 %21, 268
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = lshr i32 %2650, 24
  %2652 = uitofp i32 %2651 to float
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = and i32 %2650, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = lshr i32 %2650, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = lshr i32 %2650, 16
  %2662 = and i32 %2661, 255
  %2663 = uitofp i32 %2662 to float
  %2664 = fmul fast float %2663, 0x3F70101020000000
  %2665 = bitcast float %2589 to i32
  %2666 = ashr i32 %2665, 1
  %2667 = sub nsw i32 1597463174, %2666
  %2668 = bitcast i32 %2667 to float
  %2669 = fmul fast float %2589, 5.000000e-01
  %2670 = fmul fast float %2668, %2668
  %2671 = fmul fast float %2670, %2669
  %2672 = fsub fast float 1.500000e+00, %2671
  %2673 = fmul fast float %2668, %2589
  %2674 = fmul fast float %2673, %2672
  %2675 = bitcast float %2590 to i32
  %2676 = ashr i32 %2675, 1
  %2677 = sub nsw i32 1597463174, %2676
  %2678 = bitcast i32 %2677 to float
  %2679 = fmul fast float %2590, 5.000000e-01
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2680, %2679
  %2682 = fsub fast float 1.500000e+00, %2681
  %2683 = fmul fast float %2678, %2590
  %2684 = fmul fast float %2683, %2682
  %2685 = bitcast float %2591 to i32
  %2686 = ashr i32 %2685, 1
  %2687 = sub nsw i32 1597463174, %2686
  %2688 = bitcast i32 %2687 to float
  %2689 = fmul fast float %2591, 5.000000e-01
  %2690 = fmul fast float %2688, %2688
  %2691 = fmul fast float %2690, %2689
  %2692 = fsub fast float 1.500000e+00, %2691
  %2693 = fmul fast float %2688, %2591
  %2694 = fmul fast float %2693, %2692
  %2695 = fsub fast float %2674, %2656
  %2696 = fsub fast float %2684, %2660
  %2697 = fsub fast float %2694, %2664
  %2698 = fmul fast float %2695, %2624
  %2699 = fmul fast float %2696, %2626
  %2700 = fmul fast float %2697, %2631
  %2701 = fadd fast float %2698, %2639
  %2702 = fadd fast float %2699, %2643
  %2703 = fadd fast float %2700, %2647
  %2704 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2705 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2706 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2707 = fmul fast float %2704, %2704
  %2708 = fmul fast float %2705, %2705
  %2709 = fmul fast float %2706, %2706
  %2710 = fsub fast float %2707, %2589
  %2711 = fsub fast float %2708, %2590
  %2712 = fsub fast float %2709, %2591
  %2713 = fmul fast float %2710, %2614
  %2714 = fmul fast float %2711, %2614
  %2715 = fmul fast float %2712, %2614
  %2716 = fadd fast float %2713, %2589
  %2717 = fadd fast float %2714, %2590
  %2718 = fadd fast float %2715, %2591
  %2719 = fadd fast float %2636, %2600
  %2720 = fsub fast float %2719, %2653
  %2721 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2722 = fsub fast float %2721, %2600
  %2723 = fmul fast float %2722, %2614
  %2724 = fadd fast float %2723, %2600
  br label %2778

; <label>:2725                                    ; preds = %2613
  %2726 = and i32 %2616, 134217728
  %2727 = icmp eq i32 %2726, 0
  br i1 %2727, label %2762, label %2728

; <label>:2728                                    ; preds = %2725
  %2729 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2730 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2731 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fadd fast float %2731, -5.000000e-01
  %2735 = fmul fast float %2732, %2614
  %2736 = fmul fast float %2733, %2614
  %2737 = fmul fast float %2734, %2614
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = call float @dx.op.unary.f32(i32 24, float %2589)  ; Sqrt(value)
  %2742 = call float @dx.op.unary.f32(i32 24, float %2590)  ; Sqrt(value)
  %2743 = call float @dx.op.unary.f32(i32 24, float %2591)  ; Sqrt(value)
  %2744 = fmul fast float %2738, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2741
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2741
  %2749 = fmul fast float %2739, 2.000000e+00
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = fmul fast float %2750, %2742
  %2752 = fadd fast float %2751, %2749
  %2753 = fmul fast float %2752, %2742
  %2754 = fmul fast float %2740, 2.000000e+00
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2755, %2743
  %2757 = fadd fast float %2756, %2754
  %2758 = fmul fast float %2757, %2743
  %2759 = fmul fast float %2748, %2748
  %2760 = fmul fast float %2753, %2753
  %2761 = fmul fast float %2758, %2758
  br label %2778

; <label>:2762                                    ; preds = %2725
  %2763 = fmul fast float %348, %348
  %2764 = fmul fast float %352, %352
  %2765 = fmul fast float %356, %356
  %2766 = fadd fast float %2763, -1.000000e+00
  %2767 = fadd fast float %2764, -1.000000e+00
  %2768 = fadd fast float %2765, -1.000000e+00
  %2769 = fmul fast float %2614, %2766
  %2770 = fmul fast float %2614, %2767
  %2771 = fmul fast float %2614, %2768
  %2772 = fadd fast float %2769, 1.000000e+00
  %2773 = fadd fast float %2770, 1.000000e+00
  %2774 = fadd fast float %2771, 1.000000e+00
  %2775 = fmul fast float %2772, %2589
  %2776 = fmul fast float %2773, %2590
  %2777 = fmul fast float %2774, %2591
  br label %2778

; <label>:2778                                    ; preds = %2762, %2728, %2619, %2575
  %2779 = phi float [ %2724, %2619 ], [ %2600, %2728 ], [ %2600, %2762 ], [ 0x3FA23C0BE0000000, %2575 ]
  %2780 = phi float [ %2716, %2619 ], [ %2759, %2728 ], [ %2775, %2762 ], [ 1.000000e+00, %2575 ]
  %2781 = phi float [ %2717, %2619 ], [ %2760, %2728 ], [ %2776, %2762 ], [ 1.000000e+00, %2575 ]
  %2782 = phi float [ %2718, %2619 ], [ %2761, %2728 ], [ %2777, %2762 ], [ 1.000000e+00, %2575 ]
  %2783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.i32 %2783, 1
  %2785 = and i32 %2784, 1
  %2786 = icmp ne i32 %2785, 0
  %2787 = add i32 %21, 356
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 32
  %2791 = icmp ne i32 %2790, 0
  %2792 = and i1 %2786, %2791
  %2793 = select i1 %2792, float 1.000000e+00, float %2780
  %2794 = select i1 %2792, float 0x3FD3333340000000, float %2781
  %2795 = select i1 %2792, float 0x3FD3333340000000, float %2782
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 32
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2872, label %2800

; <label>:2800                                    ; preds = %2778
  %2801 = add i32 %21, 140
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %21, 404
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = add i32 %2806, 0
  %2808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2808, %dx.types.Handle %61, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.ResRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.ResRet.f32 %2809, 2
  %2813 = extractvalue %dx.types.ResRet.f32 %2809, 3
  %2814 = and i32 %2803, 255
  %2815 = uitofp i32 %2814 to float
  %2816 = lshr i32 %2803, 8
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = lshr i32 %2803, 16
  %2820 = and i32 %2819, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = fmul fast float %2821, 0x3F70101000000000
  %2823 = fmul fast float %2810, %2815
  %2824 = fadd fast float %2823, %2818
  %2825 = fmul fast float %2824, 0x3F70101000000000
  %2826 = fadd fast float %2811, -5.000000e-01
  %2827 = fadd fast float %2813, -5.000000e-01
  %2828 = fmul fast float %2826, %2822
  %2829 = fmul fast float %2827, %2822
  %2830 = fadd fast float %2828, 5.000000e-01
  %2831 = fadd fast float %2829, 5.000000e-01
  %2832 = fmul fast float %2830, 2.000000e+00
  %2833 = fadd fast float %2832, -1.000000e+00
  %2834 = fmul fast float %2831, 2.000000e+00
  %2835 = fadd fast float %2834, -1.000000e+00
  %2836 = fadd fast float %2833, %2835
  %2837 = fmul fast float %2836, 5.000000e-01
  %2838 = fsub fast float %2833, %2835
  %2839 = fmul fast float %2838, 5.000000e-01
  %2840 = call float @dx.op.unary.f32(i32 6, float %2837)  ; FAbs(value)
  %2841 = fsub fast float 1.000000e+00, %2840
  %2842 = call float @dx.op.unary.f32(i32 6, float %2839)  ; FAbs(value)
  %2843 = fsub fast float %2841, %2842
  %2844 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2839, float %2843, float %2837, float %2839, float %2843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2845 = call float @dx.op.unary.f32(i32 25, float %2844)  ; Rsqrt(value)
  %2846 = fmul fast float %2837, %2845
  %2847 = fmul fast float %2839, %2845
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = and i32 %2849, 67108864
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %2868, label %2852

; <label>:2852                                    ; preds = %2800
  %2853 = add i32 %21, 328
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 65535
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 65535
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2855, 16
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = fsub fast float %2825, %2863
  %2865 = fmul fast float %2864, %2857
  %2866 = fadd fast float %2865, %2861
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  br label %2868

; <label>:2868                                    ; preds = %2852, %2800
  %2869 = phi float [ %2867, %2852 ], [ %2825, %2800 ]
  %2870 = call float @dx.op.dot2.f32(i32 54, float %2846, float %2847, float %2404, float %2405)  ; Dot2(ax,ay,bx,by)
  %2871 = call float @dx.op.dot2.f32(i32 54, float %2846, float %2847, float %2406, float %2407)  ; Dot2(ax,ay,bx,by)
  br label %2872

; <label>:2872                                    ; preds = %2868, %2778
  %2873 = phi float [ %2869, %2868 ], [ 0x3FD6666660000000, %2778 ]
  %2874 = phi float [ %2870, %2868 ], [ 0.000000e+00, %2778 ]
  %2875 = phi float [ %2871, %2868 ], [ 0.000000e+00, %2778 ]
  %2876 = phi float [ %2812, %2868 ], [ 1.000000e+00, %2778 ]
  %2877 = add i32 %21, 208
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = lshr i32 %2879, 22
  %2881 = shl nuw nsw i32 %2880, 5
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 64
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2920, label %2887

; <label>:2887                                    ; preds = %2872
  %2888 = add i32 %21, 420
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = add i32 %2890, 0
  %2892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 131072
  %2896 = icmp eq i32 %2895, 0
  %2897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2892, %dx.types.Handle %61, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.ResRet.f32 %2897, 2
  %2901 = fmul fast float %2898, %336
  %2902 = fmul fast float %2899, %339
  %2903 = fmul fast float %2900, %342
  br i1 %2896, label %2910, label %2904

; <label>:2904                                    ; preds = %2887
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 0
  %2907 = fmul fast float %2906, %2901
  %2908 = fmul fast float %2906, %2902
  %2909 = fmul fast float %2906, %2903
  br label %2910

; <label>:2910                                    ; preds = %2904, %2887
  %2911 = phi float [ %2907, %2904 ], [ %2901, %2887 ]
  %2912 = phi float [ %2908, %2904 ], [ %2902, %2887 ]
  %2913 = phi float [ %2909, %2904 ], [ %2903, %2887 ]
  %2914 = fmul fast float %2911, %2882
  %2915 = select i1 %193, float %2914, float %2911
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2915, float %2912, float %2913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = select i1 %193, float 0.000000e+00, float %2911
  %2918 = select i1 %193, float %2916, float %2912
  %2919 = select i1 %193, float 0.000000e+00, float %2913
  br label %2920

; <label>:2920                                    ; preds = %2910, %2872
  %2921 = phi float [ %2917, %2910 ], [ 0.000000e+00, %2872 ]
  %2922 = phi float [ %2918, %2910 ], [ 0.000000e+00, %2872 ]
  %2923 = phi float [ %2919, %2910 ], [ 0.000000e+00, %2872 ]
  %2924 = add i32 %21, 144
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = lshr i32 %2926, 8
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = fmul fast float %2931, %2932
  %2934 = fadd fast float %2933, %2928
  %2935 = fmul fast float %2934, 0x3F70101020000000
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  br i1 %2392, label %2937, label %2945

; <label>:2937                                    ; preds = %2920
  %2938 = fsub fast float 1.000000e+00, %2573
  %2939 = fmul fast float %2938, %2381
  %2940 = fmul fast float %2938, %2382
  %2941 = fmul fast float %2938, %2383
  %2942 = fmul fast float %2938, %2384
  %2943 = fmul fast float %2938, %2385
  %2944 = fmul fast float %2938, %2386
  br label %2945

; <label>:2945                                    ; preds = %2937, %2920
  %2946 = phi float [ %2939, %2937 ], [ %2381, %2920 ]
  %2947 = phi float [ %2940, %2937 ], [ %2382, %2920 ]
  %2948 = phi float [ %2941, %2937 ], [ %2383, %2920 ]
  %2949 = phi float [ %2942, %2937 ], [ %2384, %2920 ]
  %2950 = phi float [ %2943, %2937 ], [ %2385, %2920 ]
  %2951 = phi float [ %2944, %2937 ], [ %2386, %2920 ]
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 3
  %2955 = icmp eq i32 %2954, 3
  br i1 %2955, label %3034, label %2956

; <label>:2956                                    ; preds = %2945
  %2957 = and i32 %2953, 16
  %2958 = icmp ne i32 %2957, 0
  %2959 = select i1 %2958, float %2573, float 0.000000e+00
  %2960 = icmp eq i32 %2954, 0
  br i1 %2960, label %2961, label %2989

; <label>:2961                                    ; preds = %2956
  %2962 = and i32 %2953, 64
  %2963 = icmp ne i32 %2962, 0
  %2964 = select i1 %2963, float %2573, float 0.000000e+00
  %2965 = fsub fast float %2793, %2946
  %2966 = fsub fast float %2794, %2947
  %2967 = fsub fast float %2795, %2948
  %2968 = fmul fast float %2959, %2965
  %2969 = fmul fast float %2959, %2966
  %2970 = fmul fast float %2959, %2967
  %2971 = fadd fast float %2968, %2946
  %2972 = fadd fast float %2969, %2947
  %2973 = fadd fast float %2970, %2948
  %2974 = fsub fast float %2779, %2387
  %2975 = fmul fast float %2959, %2974
  %2976 = fadd fast float %2975, %2387
  %2977 = fsub fast float %2921, %2949
  %2978 = fsub fast float %2922, %2950
  %2979 = fsub fast float %2923, %2951
  %2980 = fmul fast float %2964, %2977
  %2981 = fmul fast float %2964, %2978
  %2982 = fmul fast float %2964, %2979
  %2983 = fadd fast float %2980, %2949
  %2984 = fadd fast float %2981, %2950
  %2985 = fadd fast float %2982, %2951
  %2986 = fsub fast float %2936, %2390
  %2987 = fmul fast float %2959, %2986
  %2988 = fadd fast float %2987, %2390
  br label %3034

; <label>:2989                                    ; preds = %2956
  %2990 = icmp eq i32 %2954, 1
  br i1 %2990, label %2991, label %3004

; <label>:2991                                    ; preds = %2989
  %2992 = fadd fast float %2793, -1.000000e+00
  %2993 = fadd fast float %2794, -1.000000e+00
  %2994 = fadd fast float %2795, -1.000000e+00
  %2995 = fmul fast float %2959, %2992
  %2996 = fmul fast float %2959, %2993
  %2997 = fmul fast float %2959, %2994
  %2998 = fadd fast float %2995, 1.000000e+00
  %2999 = fadd fast float %2996, 1.000000e+00
  %3000 = fadd fast float %2997, 1.000000e+00
  %3001 = fmul fast float %2998, %2946
  %3002 = fmul fast float %2999, %2947
  %3003 = fmul fast float %3000, %2948
  br label %3034

; <label>:3004                                    ; preds = %2989
  %3005 = icmp eq i32 %2954, 2
  br i1 %3005, label %3006, label %3034

; <label>:3006                                    ; preds = %3004
  %3007 = call float @dx.op.unary.f32(i32 24, float %2793)  ; Sqrt(value)
  %3008 = call float @dx.op.unary.f32(i32 24, float %2794)  ; Sqrt(value)
  %3009 = call float @dx.op.unary.f32(i32 24, float %2795)  ; Sqrt(value)
  %3010 = fadd fast float %3007, -5.000000e-01
  %3011 = fadd fast float %3008, -5.000000e-01
  %3012 = fadd fast float %3009, -5.000000e-01
  %3013 = fmul fast float %3010, %2959
  %3014 = fmul fast float %3011, %2959
  %3015 = fmul fast float %3012, %2959
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fmul fast float %3016, 2.000000e+00
  %3020 = fsub fast float 1.000000e+00, %3019
  %3021 = fmul fast float %3020, %2946
  %3022 = fadd fast float %3021, %3019
  %3023 = fmul fast float %3022, %2946
  %3024 = fmul fast float %3017, 2.000000e+00
  %3025 = fsub fast float 1.000000e+00, %3024
  %3026 = fmul fast float %3025, %2947
  %3027 = fadd fast float %3026, %3024
  %3028 = fmul fast float %3027, %2947
  %3029 = fmul fast float %3018, 2.000000e+00
  %3030 = fsub fast float 1.000000e+00, %3029
  %3031 = fmul fast float %3030, %2948
  %3032 = fadd fast float %3031, %3029
  %3033 = fmul fast float %3032, %2948
  br label %3034

; <label>:3034                                    ; preds = %3006, %3004, %2991, %2961, %2945
  %3035 = phi float [ %2946, %2945 ], [ %3023, %3006 ], [ %2946, %3004 ], [ %3001, %2991 ], [ %2971, %2961 ]
  %3036 = phi float [ %2947, %2945 ], [ %3028, %3006 ], [ %2947, %3004 ], [ %3002, %2991 ], [ %2972, %2961 ]
  %3037 = phi float [ %2948, %2945 ], [ %3033, %3006 ], [ %2948, %3004 ], [ %3003, %2991 ], [ %2973, %2961 ]
  %3038 = phi float [ %2949, %2945 ], [ %2949, %3006 ], [ %2949, %3004 ], [ %2949, %2991 ], [ %2983, %2961 ]
  %3039 = phi float [ %2950, %2945 ], [ %2950, %3006 ], [ %2950, %3004 ], [ %2950, %2991 ], [ %2984, %2961 ]
  %3040 = phi float [ %2951, %2945 ], [ %2951, %3006 ], [ %2951, %3004 ], [ %2951, %2991 ], [ %2985, %2961 ]
  %3041 = phi float [ %2387, %2945 ], [ %2387, %3006 ], [ %2387, %3004 ], [ %2387, %2991 ], [ %2976, %2961 ]
  %3042 = phi float [ %2390, %2945 ], [ %2390, %3006 ], [ %2390, %3004 ], [ %2390, %2991 ], [ %2988, %2961 ]
  %3043 = and i32 %2953, 12
  %3044 = icmp eq i32 %3043, 12
  br i1 %3044, label %3117, label %3045

; <label>:3045                                    ; preds = %3034
  %3046 = and i32 %2953, 2097184
  %3047 = icmp eq i32 %3046, 2097184
  %3048 = select i1 %3047, float %2573, float 0.000000e+00
  %3049 = and i32 %2953, 4194336
  %3050 = icmp eq i32 %3049, 4194336
  %3051 = select i1 %3050, float %2573, float 0.000000e+00
  %3052 = and i32 %2953, 8388640
  %3053 = icmp eq i32 %3052, 8388640
  %3054 = select i1 %3053, float %2573, float 0.000000e+00
  %3055 = icmp eq i32 %3043, 0
  br i1 %3055, label %3056, label %3069

; <label>:3056                                    ; preds = %3045
  %3057 = fsub fast float %2874, %2379
  %3058 = fsub fast float %2875, %2380
  %3059 = fmul fast float %3048, %3057
  %3060 = fmul fast float %3048, %3058
  %3061 = fadd fast float %3059, %2379
  %3062 = fadd fast float %3060, %2380
  %3063 = fsub fast float %2876, %2389
  %3064 = fmul fast float %3051, %3063
  %3065 = fadd fast float %3064, %2389
  %3066 = fsub fast float %2873, %2388
  %3067 = fmul fast float %3054, %3066
  %3068 = fadd fast float %3067, %2388
  br label %3117

; <label>:3069                                    ; preds = %3045
  %3070 = icmp eq i32 %3043, 4
  br i1 %3070, label %3071, label %3103

; <label>:3071                                    ; preds = %3069
  %3072 = fmul fast float %3048, %2874
  %3073 = fmul fast float %3048, %2875
  %3074 = fadd fast float %3072, %2379
  %3075 = fadd fast float %3073, %2380
  %3076 = call float @dx.op.binary.f32(i32 36, float %2389, float %2876)  ; FMin(a,b)
  %3077 = fsub fast float %3076, %2389
  %3078 = fmul fast float %3077, %3051
  %3079 = fadd fast float %3078, %2389
  %3080 = fadd fast float %2873, %2388
  %3081 = fmul fast float %3080, 0x3FF337FAE0000000
  %3082 = fmul fast float %2388, %2388
  %3083 = fmul fast float %2873, %2873
  %3084 = fadd fast float %3083, %3082
  %3085 = fmul fast float %3084, 0x3FE5152B00000000
  %3086 = fmul fast float %2388, 0xBFCC1F85E0000000
  %3087 = fmul fast float %3086, %2873
  %3088 = fadd fast float %3087, 0xBFE1363700000000
  %3089 = fadd fast float %3088, %3081
  %3090 = fsub fast float %3089, %3085
  %3091 = fmul fast float %3080, 0x3FBA6F0D00000000
  %3092 = fmul fast float %3084, 0x3FD0432880000000
  %3093 = fmul fast float %2388, 0xBFEF110800000000
  %3094 = fmul fast float %3093, %2873
  %3095 = fadd fast float %3094, 1.000000e+00
  %3096 = fsub fast float %3095, %3091
  %3097 = fadd fast float %3096, %3092
  %3098 = fdiv fast float %3090, %3097
  %3099 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3100 = fsub fast float %3099, %2388
  %3101 = fmul fast float %3100, %3054
  %3102 = fadd fast float %3101, %2388
  br label %3117

; <label>:3103                                    ; preds = %3069
  %3104 = icmp eq i32 %3043, 8
  br i1 %3104, label %3105, label %3117

; <label>:3105                                    ; preds = %3103
  %3106 = fmul fast float %3048, %2874
  %3107 = fmul fast float %3048, %2875
  %3108 = fadd fast float %3106, %2379
  %3109 = fadd fast float %3107, %2380
  %3110 = call float @dx.op.binary.f32(i32 36, float %2389, float %2876)  ; FMin(a,b)
  %3111 = fsub fast float %3110, %2389
  %3112 = fmul fast float %3111, %3051
  %3113 = fadd fast float %3112, %2389
  %3114 = fsub fast float %2873, %2388
  %3115 = fmul fast float %3054, %3114
  %3116 = fadd fast float %3115, %2388
  br label %3117

; <label>:3117                                    ; preds = %3105, %3103, %3071, %3056, %3034, %2572, %2391, %2378
  %3118 = phi float [ %2379, %3034 ], [ %2379, %2572 ], [ %2379, %2378 ], [ %2379, %2391 ], [ %3061, %3056 ], [ %3074, %3071 ], [ %2379, %3103 ], [ %3108, %3105 ]
  %3119 = phi float [ %2380, %3034 ], [ %2380, %2572 ], [ %2380, %2378 ], [ %2380, %2391 ], [ %3062, %3056 ], [ %3075, %3071 ], [ %2380, %3103 ], [ %3109, %3105 ]
  %3120 = phi float [ %3035, %3034 ], [ %2381, %2572 ], [ %2381, %2378 ], [ %2381, %2391 ], [ %3035, %3056 ], [ %3035, %3071 ], [ %3035, %3103 ], [ %3035, %3105 ]
  %3121 = phi float [ %3036, %3034 ], [ %2382, %2572 ], [ %2382, %2378 ], [ %2382, %2391 ], [ %3036, %3056 ], [ %3036, %3071 ], [ %3036, %3103 ], [ %3036, %3105 ]
  %3122 = phi float [ %3037, %3034 ], [ %2383, %2572 ], [ %2383, %2378 ], [ %2383, %2391 ], [ %3037, %3056 ], [ %3037, %3071 ], [ %3037, %3103 ], [ %3037, %3105 ]
  %3123 = phi float [ %3038, %3034 ], [ %2384, %2572 ], [ %2384, %2378 ], [ %2384, %2391 ], [ %3038, %3056 ], [ %3038, %3071 ], [ %3038, %3103 ], [ %3038, %3105 ]
  %3124 = phi float [ %3039, %3034 ], [ %2385, %2572 ], [ %2385, %2378 ], [ %2385, %2391 ], [ %3039, %3056 ], [ %3039, %3071 ], [ %3039, %3103 ], [ %3039, %3105 ]
  %3125 = phi float [ %3040, %3034 ], [ %2386, %2572 ], [ %2386, %2378 ], [ %2386, %2391 ], [ %3040, %3056 ], [ %3040, %3071 ], [ %3040, %3103 ], [ %3040, %3105 ]
  %3126 = phi float [ %3041, %3034 ], [ %2387, %2572 ], [ %2387, %2378 ], [ %2387, %2391 ], [ %3041, %3056 ], [ %3041, %3071 ], [ %3041, %3103 ], [ %3041, %3105 ]
  %3127 = phi float [ %2388, %3034 ], [ %2388, %2572 ], [ %2388, %2378 ], [ %2388, %2391 ], [ %3068, %3056 ], [ %3102, %3071 ], [ %2388, %3103 ], [ %3116, %3105 ]
  %3128 = phi float [ %2389, %3034 ], [ %2389, %2572 ], [ %2389, %2378 ], [ %2389, %2391 ], [ %3065, %3056 ], [ %3079, %3071 ], [ %2389, %3103 ], [ %3113, %3105 ]
  %3129 = phi float [ %3042, %3034 ], [ %2390, %2572 ], [ %2390, %2378 ], [ %2390, %2391 ], [ %3042, %3056 ], [ %3042, %3071 ], [ %3042, %3103 ], [ %3042, %3105 ]
  %3130 = add i32 %21, 360
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = bitcast i32 %3132 to float
  %3134 = fcmp fast oge float %3133, 0.000000e+00
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = select i1 %3134, float %3133, float %3136
  %3138 = call float @dx.op.dot2.f32(i32 54, float %3118, float %3119, float %3118, float %3119)  ; Dot2(ax,ay,bx,by)
  %3139 = fmul fast float %3138, 0x3FE3333340000000
  %3140 = fsub fast float 1.000000e+00, %3139
  %3141 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3140, float %3118, float %3119, float %3140)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = call float @dx.op.unary.f32(i32 25, float %3141)  ; Rsqrt(value)
  %3143 = fmul fast float %3142, %3118
  %3144 = fmul fast float %3142, %3119
  %3145 = fmul fast float %3140, %3142
  %3146 = fmul fast float %3145, %72
  %3147 = fmul fast float %3145, %73
  %3148 = fmul fast float %3145, %74
  %3149 = fmul fast float %3143, %46
  %3150 = fmul fast float %3143, %47
  %3151 = fmul fast float %3143, %48
  %3152 = fadd fast float %3146, %3149
  %3153 = fadd fast float %3147, %3150
  %3154 = fadd fast float %3148, %3151
  %3155 = fmul fast float %84, %3144
  %3156 = fmul fast float %85, %3144
  %3157 = fmul fast float %86, %3144
  %3158 = fadd fast float %3152, %3155
  %3159 = fadd fast float %3153, %3156
  %3160 = fadd fast float %3154, %3157
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3158, float %3159, float %3160, float %3158, float %3159, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.unary.f32(i32 25, float %3161)  ; Rsqrt(value)
  %3163 = fmul fast float %3158, %3162
  %3164 = fmul fast float %3159, %3162
  %3165 = fmul fast float %3160, %3162
  %3166 = icmp eq i32 %22, 65535
  br i1 %3166, label %3681, label %3167

; <label>:3167                                    ; preds = %3117
  %3168 = call float @dx.op.unary.f32(i32 83, float %23)  ; DerivCoarseX(value)
  %3169 = call float @dx.op.unary.f32(i32 83, float %24)  ; DerivCoarseX(value)
  %3170 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %3171 = call float @dx.op.unary.f32(i32 84, float %23)  ; DerivCoarseY(value)
  %3172 = call float @dx.op.unary.f32(i32 84, float %24)  ; DerivCoarseY(value)
  %3173 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %3174 = fadd fast float %3168, %23
  %3175 = fadd fast float %3169, %24
  %3176 = fadd fast float %3170, %25
  %3177 = fadd fast float %3171, %23
  %3178 = fadd fast float %3172, %24
  %3179 = fadd fast float %3173, %25
  %3180 = mul i32 %22, 48
  %3181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.ResRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.ResRet.f32 %3181, 2
  %3185 = add i32 %3180, 16
  %3186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = add i32 %3180, 32
  %3191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = extractvalue %dx.types.ResRet.f32 %3191, 3
  %3196 = bitcast float %3195 to i32
  %3197 = fmul fast float %3182, %23
  %3198 = fmul fast float %3183, %24
  %3199 = fmul fast float %3184, %25
  %3200 = fsub fast float %3197, %3187
  %3201 = fsub fast float %3198, %3188
  %3202 = fsub fast float %3199, %3189
  %3203 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3204 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3205 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3206 = fmul fast float %3203, %3192
  %3207 = fmul fast float %3204, %3193
  %3208 = fmul fast float %3205, %3194
  %3209 = fadd fast float %3192, -1.000000e+00
  %3210 = fadd fast float %3193, -1.000000e+00
  %3211 = fadd fast float %3194, -1.000000e+00
  %3212 = call float @dx.op.unary.f32(i32 27, float %3206)  ; Round_ni(value)
  %3213 = call float @dx.op.unary.f32(i32 27, float %3207)  ; Round_ni(value)
  %3214 = call float @dx.op.unary.f32(i32 27, float %3208)  ; Round_ni(value)
  %3215 = call float @dx.op.binary.f32(i32 36, float %3212, float %3209)  ; FMin(a,b)
  %3216 = call float @dx.op.binary.f32(i32 36, float %3213, float %3210)  ; FMin(a,b)
  %3217 = call float @dx.op.binary.f32(i32 36, float %3214, float %3211)  ; FMin(a,b)
  %3218 = fmul fast float %3217, %3193
  %3219 = fadd fast float %3218, %3216
  %3220 = fmul fast float %3219, %3192
  %3221 = fadd fast float %3220, %3215
  %3222 = fptosi float %3221 to i32
  %3223 = add nsw i32 %3222, %3196
  %3224 = shl nsw i32 %3223, 2
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = lshr i32 %3226, 16
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3650, label %3229

; <label>:3229                                    ; preds = %3167
  br label %3230

; <label>:3230                                    ; preds = %3351, %3229
  %3231 = phi i32 [ %3253, %3351 ], [ %3227, %3229 ]
  %3232 = phi float [ %3352, %3351 ], [ 0.000000e+00, %3229 ]
  %3233 = phi float [ %3353, %3351 ], [ %3137, %3229 ]
  %3234 = phi float [ %3354, %3351 ], [ %3129, %3229 ]
  %3235 = phi float [ %3355, %3351 ], [ 0.000000e+00, %3229 ]
  %3236 = phi float [ %3356, %3351 ], [ 0.000000e+00, %3229 ]
  %3237 = phi float [ %3357, %3351 ], [ %3123, %3229 ]
  %3238 = phi float [ %3358, %3351 ], [ %3124, %3229 ]
  %3239 = phi float [ %3359, %3351 ], [ %3125, %3229 ]
  %3240 = phi float [ %3360, %3351 ], [ %3163, %3229 ]
  %3241 = phi float [ %3361, %3351 ], [ %3164, %3229 ]
  %3242 = phi float [ %3362, %3351 ], [ %3165, %3229 ]
  %3243 = phi float [ %3363, %3351 ], [ %3128, %3229 ]
  %3244 = phi float [ %3364, %3351 ], [ %3127, %3229 ]
  %3245 = phi float [ %3365, %3351 ], [ 0.000000e+00, %3229 ]
  %3246 = phi float [ %3366, %3351 ], [ %3126, %3229 ]
  %3247 = phi float [ %3367, %3351 ], [ %3120, %3229 ]
  %3248 = phi float [ %3368, %3351 ], [ %3121, %3229 ]
  %3249 = phi float [ %3369, %3351 ], [ %3122, %3229 ]
  %3250 = shl nuw nsw i32 %3231, 2
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = lshr i32 %3252, 16
  %3254 = shl i32 %3252, 8
  %3255 = and i32 %3254, 16776960
  %3256 = or i32 %3255, 48
  %3257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.ResRet.f32 %3257, 2
  %3261 = or i32 %3255, 64
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.i32 %3262, 1
  %3265 = or i32 %3255, 80
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 3
  %3269 = or i32 %3255, 96
  %3270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3274 = extractvalue %dx.types.ResRet.f32 %3270, 3
  %3275 = or i32 %3255, 112
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3278 = or i32 %3255, 128
  %3279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = extractvalue %dx.types.ResRet.f32 %3279, 3
  %3284 = or i32 %3255, 144
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3290 = or i32 %3255, 160
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3295 = extractvalue %dx.types.ResRet.f32 %3291, 3
  %3296 = or i32 %3255, 192
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = or i32 %3255, 208
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = or i32 %3255, 248
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3311 = call float @dx.op.dot4.f32(i32 56, float %3307, float %3308, float %3309, float %3310, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3312 = or i32 %3255, 16
  %3313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = extractvalue %dx.types.ResRet.f32 %3313, 2
  %3317 = extractvalue %dx.types.ResRet.f32 %3313, 3
  %3318 = call float @dx.op.dot4.f32(i32 56, float %3314, float %3315, float %3316, float %3317, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3319 = or i32 %3255, 32
  %3320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3324 = extractvalue %dx.types.ResRet.f32 %3320, 3
  %3325 = call float @dx.op.dot4.f32(i32 56, float %3321, float %3322, float %3323, float %3324, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3326 = call float @dx.op.unary.f32(i32 27, float %3311)  ; Round_ni(value)
  %3327 = call float @dx.op.unary.f32(i32 6, float %3326)  ; FAbs(value)
  %3328 = call float @dx.op.unary.f32(i32 27, float %3318)  ; Round_ni(value)
  %3329 = call float @dx.op.unary.f32(i32 6, float %3328)  ; FAbs(value)
  %3330 = call float @dx.op.unary.f32(i32 6, float %3325)  ; FAbs(value)
  %3331 = call float @dx.op.unary.f32(i32 27, float %3330)  ; Round_ni(value)
  %3332 = fadd fast float %3329, %3327
  %3333 = fadd fast float %3332, %3331
  %3334 = fcmp fast oeq float %3333, 0.000000e+00
  %3335 = call float @dx.op.dot4.f32(i32 56, float %3307, float %3308, float %3309, float %3310, float %3174, float %3175, float %3176, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3336 = call float @dx.op.dot4.f32(i32 56, float %3314, float %3315, float %3316, float %3317, float %3174, float %3175, float %3176, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3337 = call float @dx.op.dot4.f32(i32 56, float %3307, float %3308, float %3309, float %3310, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3338 = call float @dx.op.dot4.f32(i32 56, float %3314, float %3315, float %3316, float %3317, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3339 = fsub fast float %3335, %3311
  %3340 = fsub fast float %3337, %3311
  %3341 = fsub fast float %3336, %3318
  %3342 = fsub fast float %3338, %3318
  %3343 = call float @dx.op.dot3.f32(i32 55, float %3258, float %3259, float %3260, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 2
  %3346 = fadd fast float %3345, %3343
  %3347 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3349 = fcmp fast ogt float %3347, %3348
  %3350 = and i1 %3334, %3349
  br i1 %3350, label %3371, label %3351

; <label>:3351                                    ; preds = %3636, %3454, %3371, %3230
  %3352 = phi float [ %3232, %3371 ], [ %3457, %3454 ], [ %3457, %3636 ], [ %3232, %3230 ]
  %3353 = phi float [ %3233, %3371 ], [ %3233, %3454 ], [ %3611, %3636 ], [ %3233, %3230 ]
  %3354 = phi float [ %3234, %3371 ], [ %3234, %3454 ], [ %3609, %3636 ], [ %3234, %3230 ]
  %3355 = phi float [ %3235, %3371 ], [ %3235, %3454 ], [ %3581, %3636 ], [ %3235, %3230 ]
  %3356 = phi float [ %3236, %3371 ], [ %3236, %3454 ], [ %3579, %3636 ], [ %3236, %3230 ]
  %3357 = phi float [ %3237, %3371 ], [ %3237, %3454 ], [ %3646, %3636 ], [ %3237, %3230 ]
  %3358 = phi float [ %3238, %3371 ], [ %3238, %3454 ], [ %3647, %3636 ], [ %3238, %3230 ]
  %3359 = phi float [ %3239, %3371 ], [ %3239, %3454 ], [ %3648, %3636 ], [ %3239, %3230 ]
  %3360 = phi float [ %3240, %3371 ], [ %3240, %3454 ], [ %3560, %3636 ], [ %3240, %3230 ]
  %3361 = phi float [ %3241, %3371 ], [ %3241, %3454 ], [ %3561, %3636 ], [ %3241, %3230 ]
  %3362 = phi float [ %3242, %3371 ], [ %3242, %3454 ], [ %3562, %3636 ], [ %3242, %3230 ]
  %3363 = phi float [ %3243, %3371 ], [ %3243, %3454 ], [ %3589, %3636 ], [ %3243, %3230 ]
  %3364 = phi float [ %3244, %3371 ], [ %3244, %3454 ], [ %3586, %3636 ], [ %3244, %3230 ]
  %3365 = phi float [ %3245, %3371 ], [ %3245, %3454 ], [ %3583, %3636 ], [ %3245, %3230 ]
  %3366 = phi float [ %3246, %3371 ], [ %3246, %3454 ], [ %3577, %3636 ], [ %3246, %3230 ]
  %3367 = phi float [ %3247, %3371 ], [ %3247, %3454 ], [ %3572, %3636 ], [ %3247, %3230 ]
  %3368 = phi float [ %3248, %3371 ], [ %3248, %3454 ], [ %3573, %3636 ], [ %3248, %3230 ]
  %3369 = phi float [ %3249, %3371 ], [ %3249, %3454 ], [ %3574, %3636 ], [ %3249, %3230 ]
  %3370 = icmp eq i32 %3253, 0
  br i1 %3370, label %3649, label %3230

; <label>:3371                                    ; preds = %3230
  %3372 = extractvalue %dx.types.ResRet.f32 %3257, 3
  %3373 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3374 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3375 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3378 = extractvalue %dx.types.ResRet.i32 %3262, 3
  %3379 = extractvalue %dx.types.ResRet.i32 %3262, 2
  %3380 = bitcast float %3372 to i32
  %3381 = add i32 %3378, 0
  %3382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3381, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3384 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3382, %dx.types.Handle %3383, float %3311, float %3318, float undef, float undef, i32 0, i32 0, i32 undef, float %3339, float %3341, float undef, float %3340, float %3342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = fmul fast float %3385, %3377
  %3387 = fadd fast float %3386, %3376
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3389 = fmul fast float %3311, %3271
  %3390 = call float @dx.op.tertiary.f32(i32 46, float %3272, float %3318, float %3389)  ; FMad(a,b,c)
  %3391 = fadd fast float %3390, %3375
  %3392 = fmul fast float %3311, %3273
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3274, float %3318, float %3392)  ; FMad(a,b,c)
  %3394 = fadd fast float %3393, %3374
  %3395 = fmul fast float %3339, %3271
  %3396 = call float @dx.op.tertiary.f32(i32 46, float %3272, float %3341, float %3395)  ; FMad(a,b,c)
  %3397 = fmul fast float %3339, %3273
  %3398 = call float @dx.op.tertiary.f32(i32 46, float %3274, float %3341, float %3397)  ; FMad(a,b,c)
  %3399 = fmul fast float %3340, %3271
  %3400 = call float @dx.op.tertiary.f32(i32 46, float %3272, float %3342, float %3399)  ; FMad(a,b,c)
  %3401 = fmul fast float %3340, %3273
  %3402 = call float @dx.op.tertiary.f32(i32 46, float %3274, float %3342, float %3401)  ; FMad(a,b,c)
  %3403 = add i32 %3379, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3404, %dx.types.Handle %3383, float %3391, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3396, float %3398, float undef, float %3400, float %3402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = and i32 %3380, 1024
  %3408 = icmp ne i32 %3407, 0
  %3409 = fcmp fast ogt float %3406, 0x3FE0101020000000
  %3410 = uitofp i1 %3409 to float
  %3411 = select i1 %3408, float %3410, float %3406
  %3412 = and i32 %3380, 8192
  %3413 = icmp ne i32 %3412, 0
  %3414 = select i1 %3413, float %3373, float 1.000000e+00
  %3415 = fmul fast float %3311, 2.000000e+00
  %3416 = fadd fast float %3415, -1.000000e+00
  %3417 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3418 = fmul fast float %3417, %3304
  %3419 = fsub fast float %3418, %3304
  %3420 = call float @dx.op.unary.f32(i32 7, float %3419)  ; Saturate(value)
  %3421 = fmul fast float %3318, 2.000000e+00
  %3422 = fadd fast float %3421, -1.000000e+00
  %3423 = call float @dx.op.unary.f32(i32 6, float %3422)  ; FAbs(value)
  %3424 = fmul fast float %3423, %3305
  %3425 = fsub fast float %3424, %3305
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fmul fast float %3330, %3267
  %3428 = fsub fast float %3427, %3267
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = fmul fast float %3388, %3414
  %3431 = fmul fast float %3430, %3385
  %3432 = fmul fast float %3431, %3420
  %3433 = fmul fast float %3432, %3411
  %3434 = fmul fast float %3433, %3426
  %3435 = fmul fast float %3434, %3429
  %3436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.f32 %3436, 1
  %3438 = extractvalue %dx.types.CBufRet.f32 %3436, 0
  %3439 = fsub fast float %3347, %3438
  %3440 = fmul fast float %3439, %3437
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fmul fast float %3435, %3268
  %3443 = fadd fast float %3435, %3268
  %3444 = fmul fast float %3443, %3277
  %3445 = fsub fast float %3444, %3277
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3447 = and i32 %3380, 128
  %3448 = icmp ne i32 %3447, 0
  %3449 = select i1 %3448, float %3446, float %3442
  %3450 = fmul fast float %3449, %3441
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = fcmp fast ugt float %3450, %3452
  br i1 %3453, label %3454, label %3351

; <label>:3454                                    ; preds = %3371
  %3455 = select i1 %3413, float %3450, float 0.000000e+00
  %3456 = fadd fast float %3455, %3232
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  br i1 %3413, label %3351, label %3458

; <label>:3458                                    ; preds = %3454
  %3459 = and i32 %3380, 4
  %3460 = and i32 %3380, 8
  %3461 = add i32 %3263, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3461, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3462, %dx.types.Handle %3463, float %3391, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3396, float %3398, float undef, float %3400, float %3402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = bitcast float %3289 to i32
  %3470 = and i32 %3469, 255
  %3471 = uitofp i32 %3470 to float
  %3472 = lshr i32 %3469, 8
  %3473 = and i32 %3472, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = fmul fast float %3468, %3471
  %3476 = fadd fast float %3475, %3474
  %3477 = fmul fast float %3476, 0x3F70101000000000
  %3478 = add i32 %3264, 0
  %3479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3478, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3480 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3479, %dx.types.Handle %3463, float %3391, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3396, float %3398, float undef, float %3400, float %3402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3485 = bitcast float %3283 to i32
  %3486 = and i32 %3485, 255
  %3487 = uitofp i32 %3486 to float
  %3488 = lshr i32 %3485, 8
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3485, 16
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101000000000
  %3495 = fmul fast float %3481, %3487
  %3496 = fadd fast float %3495, %3490
  %3497 = fmul fast float %3496, 0x3F70101000000000
  %3498 = fadd fast float %3482, -5.000000e-01
  %3499 = fadd fast float %3484, -5.000000e-01
  %3500 = fmul fast float %3498, %3494
  %3501 = fmul fast float %3499, %3494
  %3502 = fadd fast float %3500, 5.000000e-01
  %3503 = fadd fast float %3501, 5.000000e-01
  %3504 = fmul fast float %3465, %3292
  %3505 = fmul fast float %3466, %3293
  %3506 = fmul fast float %3467, %3294
  %3507 = fmul fast float %3502, 2.000000e+00
  %3508 = fadd fast float %3507, -1.000000e+00
  %3509 = fmul fast float %3503, 2.000000e+00
  %3510 = fadd fast float %3509, -1.000000e+00
  %3511 = fadd fast float %3508, %3510
  %3512 = fmul fast float %3511, 5.000000e-01
  %3513 = fsub fast float %3508, %3510
  %3514 = fmul fast float %3513, 5.000000e-01
  %3515 = call float @dx.op.unary.f32(i32 6, float %3512)  ; FAbs(value)
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3518 = fsub fast float %3516, %3517
  %3519 = call float @dx.op.dot3.f32(i32 55, float %3512, float %3514, float %3518, float %3512, float %3514, float %3518)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = call float @dx.op.unary.f32(i32 25, float %3519)  ; Rsqrt(value)
  %3521 = fmul fast float %3512, %3520
  %3522 = fmul fast float %3514, %3520
  %3523 = fmul fast float %3520, %3518
  %3524 = fmul fast float %3523, %3258
  %3525 = fmul fast float %3523, %3259
  %3526 = fmul fast float %3523, %3260
  %3527 = fmul fast float %3521, %3280
  %3528 = fmul fast float %3521, %3281
  %3529 = fmul fast float %3521, %3282
  %3530 = fadd fast float %3527, %3524
  %3531 = fadd fast float %3528, %3525
  %3532 = fadd fast float %3529, %3526
  %3533 = fmul fast float %3522, %3286
  %3534 = fmul fast float %3522, %3287
  %3535 = fmul fast float %3522, %3288
  %3536 = fadd fast float %3530, %3533
  %3537 = fadd fast float %3531, %3534
  %3538 = fadd fast float %3532, %3535
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3537, float %3538, float %3536, float %3537, float %3538)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = call float @dx.op.unary.f32(i32 25, float %3539)  ; Rsqrt(value)
  %3541 = fmul fast float %3536, %3540
  %3542 = fmul fast float %3537, %3540
  %3543 = fmul fast float %3538, %3540
  %3544 = icmp ne i32 %3460, 0
  %3545 = select i1 %3544, float 1.000000e+00, float 0.000000e+00
  %3546 = fmul fast float %3450, %3545
  %3547 = and i32 %3380, 1
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3549, label %3553

; <label>:3549                                    ; preds = %3458
  %3550 = fsub fast float %3541, %3240
  %3551 = fsub fast float %3542, %3241
  %3552 = fsub fast float %3543, %3242
  br label %3553

; <label>:3553                                    ; preds = %3549, %3458
  %3554 = phi float [ %3550, %3549 ], [ %3541, %3458 ]
  %3555 = phi float [ %3551, %3549 ], [ %3542, %3458 ]
  %3556 = phi float [ %3552, %3549 ], [ %3543, %3458 ]
  %3557 = fmul float %3556, %3546
  %3558 = fmul float %3555, %3546
  %3559 = fmul float %3554, %3546
  %3560 = fadd fast float %3559, %3240
  %3561 = fadd fast float %3558, %3241
  %3562 = fadd fast float %3557, %3242
  %3563 = icmp ne i32 %3459, 0
  %3564 = select i1 %3563, float 1.000000e+00, float 0.000000e+00
  %3565 = fmul fast float %3450, %3564
  %3566 = fsub fast float %3504, %3247
  %3567 = fsub fast float %3505, %3248
  %3568 = fsub fast float %3506, %3249
  %3569 = fmul fast float %3566, %3565
  %3570 = fmul fast float %3567, %3565
  %3571 = fmul fast float %3568, %3565
  %3572 = fadd fast float %3569, %3247
  %3573 = fadd fast float %3570, %3248
  %3574 = fadd fast float %3571, %3249
  %3575 = fsub fast float %3477, %3246
  %3576 = fmul fast float %3575, %3565
  %3577 = fadd fast float %3576, %3246
  %3578 = fmul fast float %3565, %3236
  %3579 = fsub fast float %3236, %3578
  %3580 = fmul fast float %3565, %3235
  %3581 = fsub fast float %3235, %3580
  %3582 = fadd fast float %3450, %3245
  %3583 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3584 = fsub fast float %3497, %3244
  %3585 = fmul fast float %3584, %3546
  %3586 = fadd fast float %3585, %3244
  %3587 = fsub fast float %3483, %3243
  %3588 = fmul fast float %3587, %3546
  %3589 = fadd fast float %3588, %3243
  %3590 = call float @dx.op.dot3.f32(i32 55, float %3504, float %3505, float %3506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3594 = fmul fast float %3593, %3590
  %3595 = fadd fast float %3594, %3592
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = bitcast float %3295 to i32
  %3598 = and i32 %3597, 65535
  %3599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3598)  ; LegacyF16ToF32(value)
  %3600 = lshr i32 %3597, 16
  %3601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3600)  ; LegacyF16ToF32(value)
  %3602 = fcmp fast oge float %3599, 0.000000e+00
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = select i1 %3602, float %3599, float %3604
  %3606 = fadd fast float %3605, %3601
  %3607 = fsub fast float %3596, %3234
  %3608 = fmul fast float %3607, %3450
  %3609 = fadd fast float %3608, %3234
  %3610 = fmul fast float %3606, %3450
  %3611 = call float @dx.op.binary.f32(i32 35, float %3233, float %3610)  ; FMax(a,b)
  %3612 = and i32 %3380, 16
  %3613 = icmp eq i32 %3612, 0
  br i1 %3613, label %3636, label %3614

; <label>:3614                                    ; preds = %3553
  %3615 = bitcast float %3301 to i32
  %3616 = add i32 %3298, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3616, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3617, %dx.types.Handle %3463, float %3391, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3396, float %3398, float undef, float %3400, float %3402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = and i32 %3615, 65535
  %3623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3622)  ; LegacyF16ToF32(value)
  %3624 = fmul fast float %3619, %3292
  %3625 = fmul fast float %3620, %3293
  %3626 = fmul fast float %3621, %3294
  %3627 = and i32 %3380, 16384
  %3628 = icmp ne i32 %3627, 0
  %3629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.f32 %3629, 0
  %3631 = select i1 %3628, float %3630, float 1.000000e+00
  %3632 = fmul fast float %3631, %3623
  %3633 = fmul fast float %3624, %3632
  %3634 = fmul fast float %3625, %3632
  %3635 = fmul fast float %3626, %3632
  br label %3636

; <label>:3636                                    ; preds = %3614, %3553
  %3637 = phi float [ %3633, %3614 ], [ 0.000000e+00, %3553 ]
  %3638 = phi float [ %3634, %3614 ], [ 0.000000e+00, %3553 ]
  %3639 = phi float [ %3635, %3614 ], [ 0.000000e+00, %3553 ]
  %3640 = fsub fast float %3637, %3237
  %3641 = fsub fast float %3638, %3238
  %3642 = fsub fast float %3639, %3239
  %3643 = fmul fast float %3640, %3450
  %3644 = fmul fast float %3641, %3450
  %3645 = fmul fast float %3642, %3450
  %3646 = fadd fast float %3643, %3237
  %3647 = fadd fast float %3644, %3238
  %3648 = fadd fast float %3645, %3239
  br label %3351

; <label>:3649                                    ; preds = %3351
  br label %3650

; <label>:3650                                    ; preds = %3649, %3167
  %3651 = phi float [ 0.000000e+00, %3167 ], [ %3352, %3649 ]
  %3652 = phi float [ %3137, %3167 ], [ %3353, %3649 ]
  %3653 = phi float [ %3129, %3167 ], [ %3354, %3649 ]
  %3654 = phi float [ 0.000000e+00, %3167 ], [ %3355, %3649 ]
  %3655 = phi float [ 0.000000e+00, %3167 ], [ %3356, %3649 ]
  %3656 = phi float [ %3123, %3167 ], [ %3357, %3649 ]
  %3657 = phi float [ %3124, %3167 ], [ %3358, %3649 ]
  %3658 = phi float [ %3125, %3167 ], [ %3359, %3649 ]
  %3659 = phi float [ %3163, %3167 ], [ %3360, %3649 ]
  %3660 = phi float [ %3164, %3167 ], [ %3361, %3649 ]
  %3661 = phi float [ %3165, %3167 ], [ %3362, %3649 ]
  %3662 = phi float [ %3128, %3167 ], [ %3363, %3649 ]
  %3663 = phi float [ %3127, %3167 ], [ %3364, %3649 ]
  %3664 = phi float [ 0.000000e+00, %3167 ], [ %3365, %3649 ]
  %3665 = phi float [ %3126, %3167 ], [ %3366, %3649 ]
  %3666 = phi float [ %3120, %3167 ], [ %3367, %3649 ]
  %3667 = phi float [ %3121, %3167 ], [ %3368, %3649 ]
  %3668 = phi float [ %3122, %3167 ], [ %3369, %3649 ]
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3659, float %3660, float %3661, float %3659, float %3660, float %3661)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = call float @dx.op.unary.f32(i32 25, float %3669)  ; Rsqrt(value)
  %3671 = fmul fast float %3670, %3659
  %3672 = fmul fast float %3670, %3660
  %3673 = fmul fast float %3670, %3661
  %3674 = fadd fast float %3664, %909
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3671, float %3672, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 25, float %3676)  ; Rsqrt(value)
  %3678 = fmul fast float %3677, %3671
  %3679 = fmul fast float %3677, %3672
  %3680 = fmul fast float %3677, %3673
  br label %3681

; <label>:3681                                    ; preds = %3650, %3117
  %3682 = phi float [ %3678, %3650 ], [ %3163, %3117 ]
  %3683 = phi float [ %3679, %3650 ], [ %3164, %3117 ]
  %3684 = phi float [ %3680, %3650 ], [ %3165, %3117 ]
  %3685 = phi float [ %3666, %3650 ], [ %3120, %3117 ]
  %3686 = phi float [ %3667, %3650 ], [ %3121, %3117 ]
  %3687 = phi float [ %3668, %3650 ], [ %3122, %3117 ]
  %3688 = phi float [ %3656, %3650 ], [ %3123, %3117 ]
  %3689 = phi float [ %3657, %3650 ], [ %3124, %3117 ]
  %3690 = phi float [ %3658, %3650 ], [ %3125, %3117 ]
  %3691 = phi float [ %3665, %3650 ], [ %3126, %3117 ]
  %3692 = phi float [ %3675, %3650 ], [ %909, %3117 ]
  %3693 = phi float [ %3663, %3650 ], [ %3127, %3117 ]
  %3694 = phi float [ %3662, %3650 ], [ %3128, %3117 ]
  %3695 = phi float [ %3655, %3650 ], [ 0.000000e+00, %3117 ]
  %3696 = phi float [ %3654, %3650 ], [ 0.000000e+00, %3117 ]
  %3697 = phi float [ %3651, %3650 ], [ 0.000000e+00, %3117 ]
  %3698 = phi float [ %3652, %3650 ], [ %3137, %3117 ]
  %3699 = phi float [ %3653, %3650 ], [ %3129, %3117 ]
  %3700 = fadd fast float %3691, 0xBFB99999A0000000
  %3701 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3702 = fmul fast float %3701, 0x3FF1C71C80000000
  %3703 = call float @dx.op.binary.f32(i32 36, float %3691, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3704 = fsub fast float 1.000000e+00, %3702
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fmul fast float %3705, %3685
  %3707 = fmul fast float %3705, %3686
  %3708 = fmul fast float %3705, %3687
  %3709 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3710 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3711 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3712 = fmul fast float %3702, %3685
  %3713 = fmul fast float %3702, %3686
  %3714 = fmul fast float %3702, %3687
  %3715 = fadd fast float %3712, %3703
  %3716 = fadd fast float %3713, %3703
  %3717 = fadd fast float %3714, %3703
  %3718 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.i32 %3722, 3
  %3724 = and i32 %3723, 8
  %3725 = icmp ne i32 %3724, 0
  %3726 = call float @dx.op.binary.f32(i32 35, float %3709, float %3685)  ; FMax(a,b)
  %3727 = call float @dx.op.binary.f32(i32 35, float %3710, float %3685)  ; FMax(a,b)
  %3728 = call float @dx.op.binary.f32(i32 35, float %3711, float %3685)  ; FMax(a,b)
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3710, float %3711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = select i1 %193, float %3685, float %3709
  %3731 = select i1 %193, float %3729, float %3710
  %3732 = select i1 %193, float 1.000000e+00, float %3711
  %3733 = select i1 %3725, float %3726, float %3730
  %3734 = select i1 %3725, float %3727, float %3731
  %3735 = select i1 %3725, float %3728, float %3732
  %3736 = and i32 %169, 3
  %3737 = select i1 %163, i32 %3736, i32 0
  %3738 = icmp eq i32 %3737, 1
  br i1 %3738, label %3739, label %3815

; <label>:3739                                    ; preds = %3681
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.f32 %3740, 1
  %3743 = fadd fast float %3741, %152
  %3744 = fadd fast float %3742, %153
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3748 = fsub fast float %3743, %3746
  %3749 = fsub fast float %3744, %3747
  %3750 = fmul fast float %3748, %3748
  %3751 = fmul fast float %3749, %3749
  %3752 = fadd fast float %3750, %3751
  %3753 = call float @dx.op.unary.f32(i32 24, float %3752)  ; Sqrt(value)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3755 = fcmp fast olt float %3753, %3754
  br i1 %3755, label %3756, label %3809

; <label>:3756                                    ; preds = %3739
  %3757 = extractvalue %dx.types.CBufRet.f32 %3740, 2
  %3758 = fadd fast float %3757, %154
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3768 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3769 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3770 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3771 = fadd fast float %3768, %3743
  %3772 = fadd fast float %3769, %3744
  %3773 = fadd fast float %3758, %3770
  %3774 = fmul fast float %3771, %3760
  %3775 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3762, float %3774)  ; FMad(a,b,c)
  %3776 = call float @dx.op.tertiary.f32(i32 46, float %3773, float %3764, float %3775)  ; FMad(a,b,c)
  %3777 = fmul fast float %3771, %3765
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3766, float %3777)  ; FMad(a,b,c)
  %3779 = call float @dx.op.tertiary.f32(i32 46, float %3773, float %3767, float %3778)  ; FMad(a,b,c)
  %3780 = fsub fast float %3776, %3768
  %3781 = fsub fast float %3779, %3769
  %3782 = fsub fast float %3780, %3746
  %3783 = fadd fast float %3782, %3754
  %3784 = fsub fast float %3781, %3747
  %3785 = fadd fast float %3784, %3754
  %3786 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3787 = fmul fast float %3783, %3786
  %3788 = fmul fast float %3785, %3786
  %3789 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3791 = fsub fast float 1.000000e+00, %3789
  %3792 = fsub fast float 1.000000e+00, %3790
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %3791, float %3792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = fcmp fast ugt float %3794, 0.000000e+00
  br i1 %3795, label %3796, label %3809

; <label>:3796                                    ; preds = %3756
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 2
  %3799 = fmul fast float %3798, %3794
  %3800 = extractvalue %dx.types.CBufRet.f32 %3797, 3
  %3801 = fadd fast float %3800, %3799
  %3802 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3803 = fadd fast float %3801, %3770
  %3804 = fmul fast float %3776, %3764
  %3805 = call float @dx.op.tertiary.f32(i32 46, float %3779, float %3767, float %3804)  ; FMad(a,b,c)
  %3806 = call float @dx.op.tertiary.f32(i32 46, float %3803, float %3802, float %3805)  ; FMad(a,b,c)
  %3807 = fsub fast float %3806, %3770
  %3808 = fsub fast float %3807, %3757
  br label %3809

; <label>:3809                                    ; preds = %3796, %3756, %3739
  %3810 = phi i1 [ true, %3796 ], [ false, %3756 ], [ false, %3739 ]
  %3811 = phi float [ %3808, %3796 ], [ -1.310720e+05, %3756 ], [ -1.310720e+05, %3739 ]
  %3812 = fsub fast float %3811, %154
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = select i1 %3810, float %3813, float 1.000000e+00
  br label %3815

; <label>:3815                                    ; preds = %3809, %3681
  %3816 = phi float [ %3814, %3809 ], [ 0.000000e+00, %3681 ]
  %3817 = icmp eq i32 %3737, 3
  %3818 = select i1 %3817, float 1.000000e+00, float %3816
  %3819 = call float @dx.op.binary.f32(i32 35, float %3697, float %3818)  ; FMax(a,b)
  %3820 = fcmp fast olt float %3818, 1.000000e+00
  %3821 = fcmp uge float %36, 0.000000e+00
  %3822 = and i1 %3821, %3820
  br i1 %3822, label %3823, label %3833

; <label>:3823                                    ; preds = %3815
  %3824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %36, float %37, float %38, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = fadd fast float %3825, %3819
  %3829 = fcmp ule float %35, 0.000000e+00
  %3830 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = select i1 %3829, float %3830, float 1.000000e+00
  %3832 = fmul fast float %3831, %3827
  br label %3833

; <label>:3833                                    ; preds = %3823, %3815
  %3834 = phi float [ %3828, %3823 ], [ %3819, %3815 ]
  %3835 = phi float [ %3826, %3823 ], [ 0.000000e+00, %3815 ]
  %3836 = phi float [ %3832, %3823 ], [ 0.000000e+00, %3815 ]
  %3837 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3838 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3840 = fcmp fast une float %3838, 0.000000e+00
  %3841 = fcmp fast une float %3839, 0.000000e+00
  %3842 = or i1 %3840, %3841
  br i1 %3842, label %3843, label %4402

; <label>:3843                                    ; preds = %3833
  br i1 %3840, label %3844, label %4117

; <label>:3844                                    ; preds = %3843
  %3845 = call float @dx.op.unary.f32(i32 23, float %3694)  ; Log(value)
  %3846 = fmul fast float %3845, 4.000000e+00
  %3847 = call float @dx.op.unary.f32(i32 21, float %3846)  ; Exp(value)
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = fmul fast float %3849, %23
  %3851 = fmul fast float %3849, %24
  %3852 = fmul fast float %3849, %25
  %3853 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %3854 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %3855 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %3856 = call float @dx.op.unary.f32(i32 23, float %3853)  ; Log(value)
  %3857 = call float @dx.op.unary.f32(i32 23, float %3854)  ; Log(value)
  %3858 = call float @dx.op.unary.f32(i32 23, float %3855)  ; Log(value)
  %3859 = fmul fast float %3856, 4.000000e+00
  %3860 = fmul fast float %3857, 4.000000e+00
  %3861 = fmul fast float %3858, 4.000000e+00
  %3862 = call float @dx.op.unary.f32(i32 21, float %3859)  ; Exp(value)
  %3863 = call float @dx.op.unary.f32(i32 21, float %3860)  ; Exp(value)
  %3864 = call float @dx.op.unary.f32(i32 21, float %3861)  ; Exp(value)
  %3865 = fadd fast float %3863, %3862
  %3866 = fadd fast float %3865, %3864
  %3867 = fdiv fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3862
  %3869 = fcmp fast ogt float %32, 0.000000e+00
  %3870 = fcmp fast ogt float %33, 0.000000e+00
  %3871 = fcmp fast ogt float %34, 0.000000e+00
  %3872 = fcmp fast olt float %32, 0.000000e+00
  %3873 = fcmp fast olt float %33, 0.000000e+00
  %3874 = fcmp fast olt float %34, 0.000000e+00
  %3875 = zext i1 %3869 to i32
  %3876 = zext i1 %3870 to i32
  %3877 = zext i1 %3871 to i32
  %3878 = zext i1 %3872 to i32
  %3879 = zext i1 %3873 to i32
  %3880 = zext i1 %3874 to i32
  %3881 = sub nsw i32 %3875, %3878
  %3882 = sub nsw i32 %3876, %3879
  %3883 = sub nsw i32 %3877, %3880
  %3884 = call float @dx.op.unary.f32(i32 83, float %3850)  ; DerivCoarseX(value)
  %3885 = call float @dx.op.unary.f32(i32 83, float %3851)  ; DerivCoarseX(value)
  %3886 = call float @dx.op.unary.f32(i32 83, float %3852)  ; DerivCoarseX(value)
  %3887 = call float @dx.op.unary.f32(i32 84, float %3850)  ; DerivCoarseY(value)
  %3888 = call float @dx.op.unary.f32(i32 84, float %3851)  ; DerivCoarseY(value)
  %3889 = call float @dx.op.unary.f32(i32 84, float %3852)  ; DerivCoarseY(value)
  %3890 = fcmp fast ole float %204, %3868
  %3891 = fmul fast float %3867, %3865
  %3892 = fcmp fast ole float %204, %3891
  %3893 = select i1 %3892, float %3852, float %3850
  %3894 = select i1 %3892, float %3850, float %3851
  %3895 = select i1 %3890, float %3851, float %3893
  %3896 = select i1 %3890, float %3852, float %3894
  %3897 = select i1 %3892, float %3886, float %3884
  %3898 = select i1 %3892, float %3884, float %3885
  %3899 = select i1 %3890, float %3885, float %3897
  %3900 = select i1 %3890, float %3886, float %3898
  %3901 = select i1 %3892, float %3889, float %3887
  %3902 = select i1 %3892, float %3887, float %3888
  %3903 = select i1 %3890, float %3888, float %3901
  %3904 = select i1 %3890, float %3889, float %3902
  %3905 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3906 = call float @dx.op.unary.f32(i32 27, float %3896)  ; Round_ni(value)
  %3907 = fptosi float %3905 to i32
  %3908 = fptosi float %3906 to i32
  %3909 = xor i32 %3908, %3907
  %3910 = sitofp i32 %3909 to float
  %3911 = fptosi float %3910 to i32
  %3912 = sitofp i32 %3911 to float
  %3913 = fmul fast float %3912, 0x3FE3C6EF40000000
  %3914 = frem fast float %3905, 2.560000e+02
  %3915 = frem fast float %3906, 2.560000e+02
  %3916 = fptoui float %3914 to i32
  %3917 = fptoui float %3915 to i32
  %3918 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %3916, i32 %3917, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = fadd fast float %3919, %3913
  %3923 = fadd fast float %3920, %3913
  %3924 = fadd fast float %3921, %3913
  %3925 = call float @dx.op.unary.f32(i32 22, float %3922)  ; Frc(value)
  %3926 = call float @dx.op.unary.f32(i32 22, float %3923)  ; Frc(value)
  %3927 = call float @dx.op.unary.f32(i32 22, float %3924)  ; Frc(value)
  %3928 = fmul fast float %3927, 0x401921FB60000000
  %3929 = call float @dx.op.unary.f32(i32 13, float %3928)  ; Sin(value)
  %3930 = call float @dx.op.unary.f32(i32 12, float %3928)  ; Cos(value)
  %3931 = fsub fast float -0.000000e+00, %3930
  %3932 = fmul fast float %3930, %3895
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3896, float %3932)  ; FMad(a,b,c)
  %3934 = fmul fast float %3929, %3895
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3896, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3933, %3925
  %3937 = fadd fast float %3935, %3926
  %3938 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3939 = bitcast float %3938 to i32
  %3940 = icmp eq i32 %3939, 0
  br i1 %3940, label %3979, label %3941

; <label>:3941                                    ; preds = %3844
  %3942 = add i32 %3939, 0
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3943, %dx.types.Handle %62, float %3936, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3899, float %3900, float undef, float %3903, float %3904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3946, 2
  %3949 = fsub fast float 1.000000e+00, %3838
  %3950 = call float @dx.op.binary.f32(i32 35, float %3949, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3951 = bitcast float %3838 to i32
  %3952 = sitofp i32 %3951 to float
  %3953 = fadd fast float %3952, 0xC1CFBF8940000000
  %3954 = fmul fast float %3948, %3953
  %3955 = fadd fast float %3954, 0x41CFBF8940000000
  %3956 = fptosi float %3955 to i32
  %3957 = bitcast i32 %3956 to float
  %3958 = bitcast float %3950 to i32
  %3959 = sitofp i32 %3958 to float
  %3960 = fadd fast float %3959, 0xC1CFBF8940000000
  %3961 = fmul fast float %3960, %3948
  %3962 = fadd fast float %3961, 0x41CFBF8940000000
  %3963 = fptosi float %3962 to i32
  %3964 = bitcast i32 %3963 to float
  %3965 = fmul fast float %3957, %3947
  %3966 = fmul fast float %3964, %3947
  %3967 = fsub fast float %3950, %3965
  %3968 = fadd fast float %3966, %3950
  %3969 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3970 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3971 = fsub fast float %3945, %3969
  %3972 = fsub fast float %3970, %3969
  %3973 = bitcast float %3972 to i32
  %3974 = sub nsw i32 2129859010, %3973
  %3975 = bitcast i32 %3974 to float
  %3976 = fmul fast float %3975, %3971
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fcmp fast olt float %3977, 0x3F70101020000000
  br i1 %3978, label %4117, label %3979

; <label>:3979                                    ; preds = %3941, %3844
  %3980 = phi float [ %3977, %3941 ], [ %3838, %3844 ]
  %3981 = fmul fast float %3980, %3847
  %3982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.i32 %3982, 1
  %3984 = extractvalue %dx.types.CBufRet.i32 %3982, 0
  %3985 = add i32 %3984, 0
  %3986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3986, %dx.types.Handle %61, float %3936, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3899, float %3900, float undef, float %3903, float %3904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = and i32 %3983, 255
  %3993 = uitofp i32 %3992 to float
  %3994 = lshr i32 %3983, 8
  %3995 = and i32 %3994, 255
  %3996 = uitofp i32 %3995 to float
  %3997 = fmul fast float %3991, %3993
  %3998 = fadd fast float %3997, %3996
  %3999 = fmul fast float %3998, 0x3F70101000000000
  %4000 = fadd fast float %3999, 0xBFB99999A0000000
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %4001, 0x3FF1C71C80000000
  %4003 = call float @dx.op.binary.f32(i32 36, float %3999, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4004 = fsub fast float 1.000000e+00, %4002
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fmul fast float %4005, %3988
  %4007 = fmul fast float %4005, %3989
  %4008 = fmul fast float %4005, %3990
  %4009 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4010 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4011 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4012 = fmul fast float %4002, %3988
  %4013 = fmul fast float %4002, %3989
  %4014 = fmul fast float %4002, %3990
  %4015 = fadd fast float %4012, %4003
  %4016 = fadd fast float %4013, %4003
  %4017 = fadd fast float %4014, %4003
  %4018 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4020 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.i32 %4021, 3
  %4023 = extractvalue %dx.types.CBufRet.i32 %4021, 2
  %4024 = add i32 %4023, 0
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4025, %dx.types.Handle %61, float %3936, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3899, float %3900, float undef, float %3903, float %3904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = and i32 %4022, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = lshr i32 %4022, 8
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = lshr i32 %4022, 16
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = fmul fast float %4027, %4032
  %4041 = fadd fast float %4040, %4035
  %4042 = fmul fast float %4041, 0x3F70101000000000
  %4043 = fadd fast float %4028, -5.000000e-01
  %4044 = fadd fast float %4030, -5.000000e-01
  %4045 = fmul fast float %4043, %4039
  %4046 = fmul fast float %4044, %4039
  %4047 = fadd fast float %4045, 5.000000e-01
  %4048 = fadd fast float %4046, 5.000000e-01
  %4049 = fmul fast float %4047, 2.000000e+00
  %4050 = fadd fast float %4049, -1.000000e+00
  %4051 = fmul fast float %4048, 2.000000e+00
  %4052 = fadd fast float %4051, -1.000000e+00
  %4053 = fadd fast float %4050, %4052
  %4054 = fmul fast float %4053, 5.000000e-01
  %4055 = fsub fast float %4050, %4052
  %4056 = fmul fast float %4055, 5.000000e-01
  %4057 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4058 = fsub fast float 1.000000e+00, %4057
  %4059 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4060 = fsub fast float %4058, %4059
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4056, float %4060, float %4054, float %4056, float %4060)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = call float @dx.op.unary.f32(i32 25, float %4061)  ; Rsqrt(value)
  %4063 = fmul fast float %4054, %4062
  %4064 = fmul fast float %4056, %4062
  %4065 = select i1 %3892, i32 %3882, i32 %3883
  %4066 = select i1 %3890, i32 %3881, i32 %4065
  %4067 = sitofp i32 %4066 to float
  %4068 = fmul fast float %4060, %4067
  %4069 = fmul fast float %4068, %4062
  %4070 = select i1 %3892, float %4069, float %4064
  %4071 = select i1 %3892, float %4064, float %4069
  %4072 = select i1 %3890, float %4069, float %4063
  %4073 = select i1 %3890, float %4064, float %4070
  %4074 = select i1 %3890, float %4063, float %4071
  %4075 = fsub fast float %4009, %3733
  %4076 = fsub fast float %4010, %3734
  %4077 = fsub fast float %4011, %3735
  %4078 = fmul fast float %4075, %3981
  %4079 = fmul fast float %4076, %3981
  %4080 = fmul fast float %4077, %3981
  %4081 = fadd fast float %4078, %3733
  %4082 = fadd fast float %4079, %3734
  %4083 = fadd fast float %4080, %3735
  %4084 = fsub fast float %4018, %3718
  %4085 = fsub fast float %4019, %3719
  %4086 = fsub fast float %4020, %3720
  %4087 = fmul fast float %4084, %3981
  %4088 = fmul fast float %4085, %3981
  %4089 = fmul fast float %4086, %3981
  %4090 = fadd fast float %4087, %3718
  %4091 = fadd fast float %4088, %3719
  %4092 = fadd fast float %4089, %3720
  %4093 = fadd fast float %4072, %3682
  %4094 = fadd fast float %4073, %3683
  %4095 = fadd fast float %4074, %3684
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float %4093, float %4094, float %4095)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.unary.f32(i32 25, float %4096)  ; Rsqrt(value)
  %4098 = fmul fast float %4093, %4097
  %4099 = fmul fast float %4094, %4097
  %4100 = fmul fast float %4095, %4097
  %4101 = fsub fast float %4098, %3682
  %4102 = fsub fast float %4099, %3683
  %4103 = fsub fast float %4100, %3684
  %4104 = fmul fast float %4101, %3981
  %4105 = fmul fast float %4102, %3981
  %4106 = fmul fast float %4103, %3981
  %4107 = fadd fast float %4104, %3682
  %4108 = fadd fast float %4105, %3683
  %4109 = fadd fast float %4106, %3684
  %4110 = call float @dx.op.binary.f32(i32 36, float %3694, float %4029)  ; FMin(a,b)
  %4111 = fsub fast float %4110, %3694
  %4112 = fmul fast float %4111, %3981
  %4113 = fadd fast float %4112, %3694
  %4114 = fsub fast float %4042, %3721
  %4115 = fmul fast float %4114, %3981
  %4116 = fadd fast float %4115, %3721
  br label %4117

; <label>:4117                                    ; preds = %3979, %3941, %3843
  %4118 = phi float [ %4090, %3979 ], [ %3718, %3941 ], [ %3718, %3843 ]
  %4119 = phi float [ %4091, %3979 ], [ %3719, %3941 ], [ %3719, %3843 ]
  %4120 = phi float [ %4092, %3979 ], [ %3720, %3941 ], [ %3720, %3843 ]
  %4121 = phi float [ %4107, %3979 ], [ %3682, %3941 ], [ %3682, %3843 ]
  %4122 = phi float [ %4108, %3979 ], [ %3683, %3941 ], [ %3683, %3843 ]
  %4123 = phi float [ %4109, %3979 ], [ %3684, %3941 ], [ %3684, %3843 ]
  %4124 = phi float [ %4081, %3979 ], [ %3733, %3941 ], [ %3733, %3843 ]
  %4125 = phi float [ %4082, %3979 ], [ %3734, %3941 ], [ %3734, %3843 ]
  %4126 = phi float [ %4083, %3979 ], [ %3735, %3941 ], [ %3735, %3843 ]
  %4127 = phi float [ %4116, %3979 ], [ %3721, %3941 ], [ %3721, %3843 ]
  %4128 = phi float [ %4113, %3979 ], [ %3694, %3941 ], [ %3694, %3843 ]
  br i1 %3841, label %4129, label %4402

; <label>:4129                                    ; preds = %4117
  %4130 = call float @dx.op.unary.f32(i32 23, float %4128)  ; Log(value)
  %4131 = fmul fast float %4130, 4.000000e+00
  %4132 = call float @dx.op.unary.f32(i32 21, float %4131)  ; Exp(value)
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = fmul fast float %4134, %23
  %4136 = fmul fast float %4134, %24
  %4137 = fmul fast float %4134, %25
  %4138 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %4139 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %4140 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %4141 = call float @dx.op.unary.f32(i32 23, float %4138)  ; Log(value)
  %4142 = call float @dx.op.unary.f32(i32 23, float %4139)  ; Log(value)
  %4143 = call float @dx.op.unary.f32(i32 23, float %4140)  ; Log(value)
  %4144 = fmul fast float %4141, 4.000000e+00
  %4145 = fmul fast float %4142, 4.000000e+00
  %4146 = fmul fast float %4143, 4.000000e+00
  %4147 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4150 = fadd fast float %4148, %4147
  %4151 = fadd fast float %4150, %4149
  %4152 = fdiv fast float 1.000000e+00, %4151
  %4153 = fmul fast float %4152, %4147
  %4154 = fcmp fast ogt float %32, 0.000000e+00
  %4155 = fcmp fast ogt float %33, 0.000000e+00
  %4156 = fcmp fast ogt float %34, 0.000000e+00
  %4157 = fcmp fast olt float %32, 0.000000e+00
  %4158 = fcmp fast olt float %33, 0.000000e+00
  %4159 = fcmp fast olt float %34, 0.000000e+00
  %4160 = zext i1 %4154 to i32
  %4161 = zext i1 %4155 to i32
  %4162 = zext i1 %4156 to i32
  %4163 = zext i1 %4157 to i32
  %4164 = zext i1 %4158 to i32
  %4165 = zext i1 %4159 to i32
  %4166 = sub nsw i32 %4160, %4163
  %4167 = sub nsw i32 %4161, %4164
  %4168 = sub nsw i32 %4162, %4165
  %4169 = call float @dx.op.unary.f32(i32 83, float %4135)  ; DerivCoarseX(value)
  %4170 = call float @dx.op.unary.f32(i32 83, float %4136)  ; DerivCoarseX(value)
  %4171 = call float @dx.op.unary.f32(i32 83, float %4137)  ; DerivCoarseX(value)
  %4172 = call float @dx.op.unary.f32(i32 84, float %4135)  ; DerivCoarseY(value)
  %4173 = call float @dx.op.unary.f32(i32 84, float %4136)  ; DerivCoarseY(value)
  %4174 = call float @dx.op.unary.f32(i32 84, float %4137)  ; DerivCoarseY(value)
  %4175 = fcmp fast ole float %204, %4153
  %4176 = fmul fast float %4152, %4150
  %4177 = fcmp fast ole float %204, %4176
  %4178 = select i1 %4177, float %4137, float %4135
  %4179 = select i1 %4177, float %4135, float %4136
  %4180 = select i1 %4175, float %4136, float %4178
  %4181 = select i1 %4175, float %4137, float %4179
  %4182 = select i1 %4177, float %4171, float %4169
  %4183 = select i1 %4177, float %4169, float %4170
  %4184 = select i1 %4175, float %4170, float %4182
  %4185 = select i1 %4175, float %4171, float %4183
  %4186 = select i1 %4177, float %4174, float %4172
  %4187 = select i1 %4177, float %4172, float %4173
  %4188 = select i1 %4175, float %4173, float %4186
  %4189 = select i1 %4175, float %4174, float %4187
  %4190 = call float @dx.op.unary.f32(i32 27, float %4180)  ; Round_ni(value)
  %4191 = call float @dx.op.unary.f32(i32 27, float %4181)  ; Round_ni(value)
  %4192 = fptosi float %4190 to i32
  %4193 = fptosi float %4191 to i32
  %4194 = xor i32 %4193, %4192
  %4195 = sitofp i32 %4194 to float
  %4196 = fptosi float %4195 to i32
  %4197 = sitofp i32 %4196 to float
  %4198 = fmul fast float %4197, 0x3FE3C6EF40000000
  %4199 = frem fast float %4190, 2.560000e+02
  %4200 = frem fast float %4191, 2.560000e+02
  %4201 = fptoui float %4199 to i32
  %4202 = fptoui float %4200 to i32
  %4203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %4201, i32 %4202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = fadd fast float %4204, %4198
  %4208 = fadd fast float %4205, %4198
  %4209 = fadd fast float %4206, %4198
  %4210 = call float @dx.op.unary.f32(i32 22, float %4207)  ; Frc(value)
  %4211 = call float @dx.op.unary.f32(i32 22, float %4208)  ; Frc(value)
  %4212 = call float @dx.op.unary.f32(i32 22, float %4209)  ; Frc(value)
  %4213 = fmul fast float %4212, 0x401921FB60000000
  %4214 = call float @dx.op.unary.f32(i32 13, float %4213)  ; Sin(value)
  %4215 = call float @dx.op.unary.f32(i32 12, float %4213)  ; Cos(value)
  %4216 = fsub fast float -0.000000e+00, %4215
  %4217 = fmul fast float %4215, %4180
  %4218 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4181, float %4217)  ; FMad(a,b,c)
  %4219 = fmul fast float %4214, %4180
  %4220 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4181, float %4219)  ; FMad(a,b,c)
  %4221 = fadd fast float %4218, %4210
  %4222 = fadd fast float %4220, %4211
  %4223 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4224 = bitcast float %4223 to i32
  %4225 = icmp eq i32 %4224, 0
  br i1 %4225, label %4264, label %4226

; <label>:4226                                    ; preds = %4129
  %4227 = add i32 %4224, 0
  %4228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4229 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4228, %dx.types.Handle %62, float %4221, float %4222, float undef, float undef, i32 0, i32 0, i32 undef, float %4184, float %4185, float undef, float %4188, float %4189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4233 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4234 = fsub fast float 1.000000e+00, %3839
  %4235 = call float @dx.op.binary.f32(i32 35, float %4234, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4236 = bitcast float %3839 to i32
  %4237 = sitofp i32 %4236 to float
  %4238 = fadd fast float %4237, 0xC1CFBF8940000000
  %4239 = fmul fast float %4233, %4238
  %4240 = fadd fast float %4239, 0x41CFBF8940000000
  %4241 = fptosi float %4240 to i32
  %4242 = bitcast i32 %4241 to float
  %4243 = bitcast float %4235 to i32
  %4244 = sitofp i32 %4243 to float
  %4245 = fadd fast float %4244, 0xC1CFBF8940000000
  %4246 = fmul fast float %4245, %4233
  %4247 = fadd fast float %4246, 0x41CFBF8940000000
  %4248 = fptosi float %4247 to i32
  %4249 = bitcast i32 %4248 to float
  %4250 = fmul fast float %4242, %4232
  %4251 = fmul fast float %4249, %4232
  %4252 = fsub fast float %4235, %4250
  %4253 = fadd fast float %4251, %4235
  %4254 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4256 = fsub fast float %4230, %4254
  %4257 = fsub fast float %4255, %4254
  %4258 = bitcast float %4257 to i32
  %4259 = sub nsw i32 2129859010, %4258
  %4260 = bitcast i32 %4259 to float
  %4261 = fmul fast float %4260, %4256
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fcmp fast olt float %4262, 0x3F70101020000000
  br i1 %4263, label %4402, label %4264

; <label>:4264                                    ; preds = %4226, %4129
  %4265 = phi float [ %4262, %4226 ], [ %3839, %4129 ]
  %4266 = fmul fast float %4265, %4132
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 1
  %4269 = extractvalue %dx.types.CBufRet.i32 %4267, 0
  %4270 = add i32 %4269, 0
  %4271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4271, %dx.types.Handle %61, float %4221, float %4222, float undef, float undef, i32 0, i32 0, i32 undef, float %4184, float %4185, float undef, float %4188, float %4189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.ResRet.f32 %4272, 1
  %4275 = extractvalue %dx.types.ResRet.f32 %4272, 2
  %4276 = extractvalue %dx.types.ResRet.f32 %4272, 3
  %4277 = and i32 %4268, 255
  %4278 = uitofp i32 %4277 to float
  %4279 = lshr i32 %4268, 8
  %4280 = and i32 %4279, 255
  %4281 = uitofp i32 %4280 to float
  %4282 = fmul fast float %4276, %4278
  %4283 = fadd fast float %4282, %4281
  %4284 = fmul fast float %4283, 0x3F70101000000000
  %4285 = fadd fast float %4284, 0xBFB99999A0000000
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4286, 0x3FF1C71C80000000
  %4288 = call float @dx.op.binary.f32(i32 36, float %4284, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4289 = fsub fast float 1.000000e+00, %4287
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fmul fast float %4290, %4273
  %4292 = fmul fast float %4290, %4274
  %4293 = fmul fast float %4290, %4275
  %4294 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = fmul fast float %4287, %4273
  %4298 = fmul fast float %4287, %4274
  %4299 = fmul fast float %4287, %4275
  %4300 = fadd fast float %4297, %4288
  %4301 = fadd fast float %4298, %4288
  %4302 = fadd fast float %4299, %4288
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.i32 %4306, 3
  %4308 = extractvalue %dx.types.CBufRet.i32 %4306, 2
  %4309 = add i32 %4308, 0
  %4310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4310, %dx.types.Handle %61, float %4221, float %4222, float undef, float undef, i32 0, i32 0, i32 undef, float %4184, float %4185, float undef, float %4188, float %4189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.f32 %4311, 2
  %4315 = extractvalue %dx.types.ResRet.f32 %4311, 3
  %4316 = and i32 %4307, 255
  %4317 = uitofp i32 %4316 to float
  %4318 = lshr i32 %4307, 8
  %4319 = and i32 %4318, 255
  %4320 = uitofp i32 %4319 to float
  %4321 = lshr i32 %4307, 16
  %4322 = and i32 %4321, 255
  %4323 = uitofp i32 %4322 to float
  %4324 = fmul fast float %4323, 0x3F70101000000000
  %4325 = fmul fast float %4312, %4317
  %4326 = fadd fast float %4325, %4320
  %4327 = fmul fast float %4326, 0x3F70101000000000
  %4328 = fadd fast float %4313, -5.000000e-01
  %4329 = fadd fast float %4315, -5.000000e-01
  %4330 = fmul fast float %4328, %4324
  %4331 = fmul fast float %4329, %4324
  %4332 = fadd fast float %4330, 5.000000e-01
  %4333 = fadd fast float %4331, 5.000000e-01
  %4334 = fmul fast float %4332, 2.000000e+00
  %4335 = fadd fast float %4334, -1.000000e+00
  %4336 = fmul fast float %4333, 2.000000e+00
  %4337 = fadd fast float %4336, -1.000000e+00
  %4338 = fadd fast float %4335, %4337
  %4339 = fmul fast float %4338, 5.000000e-01
  %4340 = fsub fast float %4335, %4337
  %4341 = fmul fast float %4340, 5.000000e-01
  %4342 = call float @dx.op.unary.f32(i32 6, float %4339)  ; FAbs(value)
  %4343 = fsub fast float 1.000000e+00, %4342
  %4344 = call float @dx.op.unary.f32(i32 6, float %4341)  ; FAbs(value)
  %4345 = fsub fast float %4343, %4344
  %4346 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4341, float %4345, float %4339, float %4341, float %4345)  ; Dot3(ax,ay,az,bx,by,bz)
  %4347 = call float @dx.op.unary.f32(i32 25, float %4346)  ; Rsqrt(value)
  %4348 = fmul fast float %4339, %4347
  %4349 = fmul fast float %4341, %4347
  %4350 = select i1 %4177, i32 %4167, i32 %4168
  %4351 = select i1 %4175, i32 %4166, i32 %4350
  %4352 = sitofp i32 %4351 to float
  %4353 = fmul fast float %4345, %4352
  %4354 = fmul fast float %4353, %4347
  %4355 = select i1 %4177, float %4354, float %4349
  %4356 = select i1 %4177, float %4349, float %4354
  %4357 = select i1 %4175, float %4354, float %4348
  %4358 = select i1 %4175, float %4349, float %4355
  %4359 = select i1 %4175, float %4348, float %4356
  %4360 = fsub fast float %4294, %4124
  %4361 = fsub fast float %4295, %4125
  %4362 = fsub fast float %4296, %4126
  %4363 = fmul fast float %4360, %4266
  %4364 = fmul fast float %4361, %4266
  %4365 = fmul fast float %4362, %4266
  %4366 = fadd fast float %4363, %4124
  %4367 = fadd fast float %4364, %4125
  %4368 = fadd fast float %4365, %4126
  %4369 = fsub fast float %4303, %4118
  %4370 = fsub fast float %4304, %4119
  %4371 = fsub fast float %4305, %4120
  %4372 = fmul fast float %4369, %4266
  %4373 = fmul fast float %4370, %4266
  %4374 = fmul fast float %4371, %4266
  %4375 = fadd fast float %4372, %4118
  %4376 = fadd fast float %4373, %4119
  %4377 = fadd fast float %4374, %4120
  %4378 = fadd fast float %4357, %4121
  %4379 = fadd fast float %4358, %4122
  %4380 = fadd fast float %4359, %4123
  %4381 = call float @dx.op.dot3.f32(i32 55, float %4378, float %4379, float %4380, float %4378, float %4379, float %4380)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = call float @dx.op.unary.f32(i32 25, float %4381)  ; Rsqrt(value)
  %4383 = fmul fast float %4378, %4382
  %4384 = fmul fast float %4379, %4382
  %4385 = fmul fast float %4380, %4382
  %4386 = fsub fast float %4383, %4121
  %4387 = fsub fast float %4384, %4122
  %4388 = fsub fast float %4385, %4123
  %4389 = fmul fast float %4386, %4266
  %4390 = fmul fast float %4387, %4266
  %4391 = fmul fast float %4388, %4266
  %4392 = fadd fast float %4389, %4121
  %4393 = fadd fast float %4390, %4122
  %4394 = fadd fast float %4391, %4123
  %4395 = call float @dx.op.binary.f32(i32 36, float %4128, float %4314)  ; FMin(a,b)
  %4396 = fsub fast float %4395, %4128
  %4397 = fmul fast float %4396, %4266
  %4398 = fadd fast float %4397, %4128
  %4399 = fsub fast float %4327, %4127
  %4400 = fmul fast float %4399, %4266
  %4401 = fadd fast float %4400, %4127
  br label %4402

; <label>:4402                                    ; preds = %4264, %4226, %4117, %3833
  %4403 = phi float [ %4375, %4264 ], [ %4118, %4226 ], [ %4118, %4117 ], [ %3718, %3833 ]
  %4404 = phi float [ %4376, %4264 ], [ %4119, %4226 ], [ %4119, %4117 ], [ %3719, %3833 ]
  %4405 = phi float [ %4377, %4264 ], [ %4120, %4226 ], [ %4120, %4117 ], [ %3720, %3833 ]
  %4406 = phi float [ %4392, %4264 ], [ %4121, %4226 ], [ %4121, %4117 ], [ %3682, %3833 ]
  %4407 = phi float [ %4393, %4264 ], [ %4122, %4226 ], [ %4122, %4117 ], [ %3683, %3833 ]
  %4408 = phi float [ %4394, %4264 ], [ %4123, %4226 ], [ %4123, %4117 ], [ %3684, %3833 ]
  %4409 = phi float [ %4366, %4264 ], [ %4124, %4226 ], [ %4124, %4117 ], [ %3733, %3833 ]
  %4410 = phi float [ %4367, %4264 ], [ %4125, %4226 ], [ %4125, %4117 ], [ %3734, %3833 ]
  %4411 = phi float [ %4368, %4264 ], [ %4126, %4226 ], [ %4126, %4117 ], [ %3735, %3833 ]
  %4412 = phi float [ %4401, %4264 ], [ %4127, %4226 ], [ %4127, %4117 ], [ %3721, %3833 ]
  %4413 = phi float [ %4398, %4264 ], [ %4128, %4226 ], [ %4128, %4117 ], [ %3694, %3833 ]
  %4414 = fcmp fast une float %3837, 0.000000e+00
  %4415 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = call float @dx.op.unary.f32(i32 25, float %4415)  ; Rsqrt(value)
  br i1 %4414, label %4424, label %4417

; <label>:4417                                    ; preds = %4402
  %4418 = fmul fast float %4416, %152
  %4419 = fmul fast float %4416, %153
  %4420 = fmul fast float %4416, %154
  %4421 = fsub fast float -0.000000e+00, %4418
  %4422 = fsub fast float -0.000000e+00, %4419
  %4423 = fsub fast float -0.000000e+00, %4420
  br label %4591

; <label>:4424                                    ; preds = %4402
  %4425 = fmul fast float %152, %4416
  %4426 = fsub fast float -0.000000e+00, %4425
  %4427 = fmul fast float %153, %4416
  %4428 = fsub fast float -0.000000e+00, %4427
  %4429 = fmul fast float %154, %4416
  %4430 = fsub fast float -0.000000e+00, %4429
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4426, float %4428, float %4430, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = fmul fast float %3837, 2.500000e+00
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %3837, 0x4013FFFFE0000000
  %4435 = fadd fast float %4434, 0xBFFFFFFFE0000000
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %3837, 0x4004000020000000
  %4438 = fadd fast float %4437, 0xBFF8000040000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %3700, 1.000000e+01
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4441, 2.000000e+00
  %4443 = fsub fast float 3.000000e+00, %4442
  %4444 = fmul fast float %4441, %4441
  %4445 = fmul fast float %4444, %4443
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = fsub fast float 0x3FE3333340000000, %4412
  %4448 = fmul fast float %4447, 0x400AAAAAA0000000
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4446, %4449
  %4451 = fmul fast float %4409, 0x3FEA2B8620000000
  %4452 = fmul fast float %4410, 0x3FEA2B8620000000
  %4453 = fmul fast float %4411, 0x3FEA2B8620000000
  %4454 = fadd fast float %4451, 0x3FC81DFBA0000000
  %4455 = fmul fast float %4454, %4409
  %4456 = fadd fast float %4455, 0x3F910E6020000000
  %4457 = fadd fast float %4452, 0x3FC81DFBA0000000
  %4458 = fmul fast float %4457, %4410
  %4459 = fadd fast float %4458, 0x3F910E6020000000
  %4460 = fadd fast float %4453, 0x3FC81DFBA0000000
  %4461 = fmul fast float %4460, %4411
  %4462 = fadd fast float %4461, 0x3F910E6020000000
  %4463 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4466 = fsub fast float %4463, %4409
  %4467 = fsub fast float %4464, %4410
  %4468 = fsub fast float %4465, %4411
  %4469 = fmul fast float %4466, %4433
  %4470 = fmul fast float %4469, %4450
  %4471 = fmul fast float %4467, %4433
  %4472 = fmul fast float %4471, %4450
  %4473 = fmul fast float %4468, %4433
  %4474 = fmul fast float %4473, %4450
  %4475 = fadd fast float %4470, %4409
  %4476 = fadd fast float %4472, %4410
  %4477 = fadd fast float %4474, %4411
  %4478 = fmul fast float %4413, %4413
  %4479 = fmul fast float %4478, %4478
  %4480 = fadd fast float %4436, 1.000000e+00
  %4481 = fsub fast float %4480, %4450
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fsub fast float 1.000000e+00, %4479
  %4486 = call float @dx.op.binary.f32(i32 36, float %4482, float %4485)  ; FMin(a,b)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4488 = call float @dx.op.binary.f32(i32 35, float %4486, float %4487)  ; FMax(a,b)
  %4489 = fadd fast float %4484, 0xBFE4CCCCC0000000
  %4490 = fmul fast float %4489, 0x4006DB6DA0000000
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fmul fast float %4491, 2.000000e+00
  %4493 = fsub fast float 3.000000e+00, %4492
  %4494 = bitcast float %4403 to i32
  %4495 = ashr i32 %4494, 1
  %4496 = add nsw i32 %4495, 532487669
  %4497 = bitcast i32 %4496 to float
  %4498 = fsub fast float 1.000000e+00, %4497
  %4499 = bitcast float %4498 to i32
  %4500 = sub nsw i32 2129859010, %4499
  %4501 = bitcast i32 %4500 to float
  %4502 = fmul fast float %4501, 2.000000e+00
  %4503 = bitcast float %4404 to i32
  %4504 = ashr i32 %4503, 1
  %4505 = add nsw i32 %4504, 532487669
  %4506 = bitcast i32 %4505 to float
  %4507 = fsub fast float 1.000000e+00, %4506
  %4508 = bitcast float %4507 to i32
  %4509 = sub nsw i32 2129859010, %4508
  %4510 = bitcast i32 %4509 to float
  %4511 = fmul fast float %4510, 2.000000e+00
  %4512 = bitcast float %4405 to i32
  %4513 = ashr i32 %4512, 1
  %4514 = add nsw i32 %4513, 532487669
  %4515 = bitcast i32 %4514 to float
  %4516 = fsub fast float 1.000000e+00, %4515
  %4517 = bitcast float %4516 to i32
  %4518 = sub nsw i32 2129859010, %4517
  %4519 = bitcast i32 %4518 to float
  %4520 = fmul fast float %4519, 2.000000e+00
  %4521 = fsub fast float 0x4002A9FBE0000000, %4502
  %4522 = fadd fast float %4502, 0x3FD54FDF00000000
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %4526, %4526
  %4528 = fsub fast float 0x4002A9FBE0000000, %4511
  %4529 = fadd fast float %4511, 0x3FD54FDF00000000
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, %4528
  %4534 = fmul fast float %4533, %4533
  %4535 = fsub fast float 0x4002A9FBE0000000, %4520
  %4536 = fadd fast float %4520, 0x3FD54FDF00000000
  %4537 = bitcast float %4536 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = fmul fast float %4539, %4535
  %4541 = fmul fast float %4540, %4540
  %4542 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4527)  ; FMax(a,b)
  %4543 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4534)  ; FMax(a,b)
  %4544 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4541)  ; FMax(a,b)
  %4545 = fsub fast float 1.000000e+00, %4431
  %4546 = fadd fast float %4545, %4446
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fsub fast float 1.000000e+00, %3818
  %4549 = fmul fast float %4488, %4548
  %4550 = fmul fast float %4491, %4491
  %4551 = fmul fast float %4550, %4549
  %4552 = fmul fast float %4551, %4493
  %4553 = fmul fast float %4548, 0xBFE99999A0000000
  %4554 = fmul fast float %4553, %4433
  %4555 = fmul fast float %4554, %4450
  %4556 = fadd fast float %4555, 1.000000e+00
  %4557 = fadd fast float %4412, -1.000000e+00
  %4558 = fmul fast float %4556, %4557
  %4559 = fadd fast float %4558, 1.000000e+00
  %4560 = fsub fast float %4542, %4403
  %4561 = fsub fast float %4543, %4404
  %4562 = fsub fast float %4544, %4405
  %4563 = fmul fast float %4552, %4560
  %4564 = fmul fast float %4552, %4561
  %4565 = fmul fast float %4552, %4562
  %4566 = fadd fast float %4563, %4403
  %4567 = fadd fast float %4564, %4404
  %4568 = fadd fast float %4565, %4405
  %4569 = fsub fast float %72, %4406
  %4570 = fsub fast float %73, %4407
  %4571 = fsub fast float %74, %4408
  %4572 = fmul fast float %4552, %4569
  %4573 = fmul fast float %4552, %4570
  %4574 = fmul fast float %4552, %4571
  %4575 = fadd fast float %4572, %4406
  %4576 = fadd fast float %4573, %4407
  %4577 = fadd fast float %4574, %4408
  %4578 = fmul fast float %4552, %4547
  %4579 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4580 = fsub fast float 1.000000e+00, %4579
  %4581 = fmul fast float %4578, %4580
  %4582 = fadd fast float %4581, %4579
  %4583 = fsub fast float 1.000000e+00, %4413
  %4584 = fmul fast float %4552, %4583
  %4585 = fadd fast float %4584, %4413
  %4586 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4577, float %4575, float %4576, float %4577)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = call float @dx.op.unary.f32(i32 25, float %4586)  ; Rsqrt(value)
  %4588 = fmul fast float %4575, %4587
  %4589 = fmul fast float %4576, %4587
  %4590 = fmul fast float %4577, %4587
  br label %4591

; <label>:4591                                    ; preds = %4424, %4417
  %4592 = phi float [ %4423, %4417 ], [ %4430, %4424 ]
  %4593 = phi float [ %4422, %4417 ], [ %4428, %4424 ]
  %4594 = phi float [ %4421, %4417 ], [ %4426, %4424 ]
  %4595 = phi float [ %4420, %4417 ], [ %4429, %4424 ]
  %4596 = phi float [ %4419, %4417 ], [ %4427, %4424 ]
  %4597 = phi float [ %4418, %4417 ], [ %4425, %4424 ]
  %4598 = phi float [ %4403, %4417 ], [ %4566, %4424 ]
  %4599 = phi float [ %4404, %4417 ], [ %4567, %4424 ]
  %4600 = phi float [ %4405, %4417 ], [ %4568, %4424 ]
  %4601 = phi float [ %4406, %4417 ], [ %4588, %4424 ]
  %4602 = phi float [ %4407, %4417 ], [ %4589, %4424 ]
  %4603 = phi float [ %4408, %4417 ], [ %4590, %4424 ]
  %4604 = phi float [ %4409, %4417 ], [ %4475, %4424 ]
  %4605 = phi float [ %4410, %4417 ], [ %4476, %4424 ]
  %4606 = phi float [ %4411, %4417 ], [ %4477, %4424 ]
  %4607 = phi float [ %4412, %4417 ], [ %4582, %4424 ]
  %4608 = phi float [ %4413, %4417 ], [ %4585, %4424 ]
  %4609 = select i1 %193, float 0.000000e+00, float %4600
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4594, float %4593, float %4592)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4596, float %4595, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = fmul fast float %4612, 2.000000e+00
  %4614 = fmul fast float %4613, %4601
  %4615 = fmul fast float %4613, %4602
  %4616 = fmul fast float %4613, %4603
  %4617 = fsub fast float %4597, %4614
  %4618 = fsub fast float %4596, %4615
  %4619 = fsub fast float %4595, %4616
  %4620 = call float @dx.op.binary.f32(i32 36, float %4608, float 1.000000e+00)  ; FMin(a,b)
  %4621 = fsub fast float 1.000000e+00, %4608
  %4622 = bitcast float %4621 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fsub fast float 1.000000e+00, %42
  %4626 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.binary.f32(i32 35, float %4626, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4628 = fdiv fast float %4625, %4627
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4630, 5.000000e-01
  %4632 = fadd fast float %4631, 5.000000e-01
  %4633 = fmul fast float %4632, %42
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, %4628
  %4637 = fadd fast float %4633, %4636
  %4638 = fsub fast float 5.000000e-01, %4631
  %4639 = fmul fast float %4638, %4604
  %4640 = fmul fast float %4638, %4605
  %4641 = fmul fast float %4638, %4606
  %4642 = fadd fast float %4637, %4639
  %4643 = fadd fast float %4637, %4640
  %4644 = fadd fast float %4637, %4641
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, 5.000000e-01
  %4648 = fadd fast float %4647, 5.000000e-01
  %4649 = fmul fast float %4648, %42
  %4650 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, %4628
  %4653 = fadd fast float %4649, %4652
  %4654 = fsub fast float 5.000000e-01, %4647
  %4655 = fmul fast float %4654, %4604
  %4656 = fmul fast float %4654, %4605
  %4657 = fmul fast float %4654, %4606
  %4658 = fadd fast float %4653, %4655
  %4659 = fadd fast float %4653, %4656
  %4660 = fadd fast float %4653, %4657
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4663 = call float @dx.op.binary.f32(i32 36, float %4604, float %4662)  ; FMin(a,b)
  %4664 = fsub fast float 1.000000e+00, %4620
  %4665 = fmul fast float %4663, %4664
  %4666 = fsub fast float 1.000000e+00, %4665
  %4667 = bitcast float %4666 to i32
  %4668 = sub nsw i32 2129859010, %4667
  %4669 = bitcast i32 %4668 to float
  %4670 = call float @dx.op.binary.f32(i32 36, float %4605, float %4662)  ; FMin(a,b)
  %4671 = fmul fast float %4670, %4664
  %4672 = fsub fast float 1.000000e+00, %4671
  %4673 = bitcast float %4672 to i32
  %4674 = sub nsw i32 2129859010, %4673
  %4675 = bitcast i32 %4674 to float
  %4676 = call float @dx.op.binary.f32(i32 36, float %4606, float %4662)  ; FMin(a,b)
  %4677 = fmul fast float %4676, %4664
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4620, %43
  %4683 = fmul fast float %4682, %4642
  %4684 = fmul fast float %4683, %4669
  %4685 = fmul fast float %4620, %44
  %4686 = fmul fast float %4685, %4643
  %4687 = fmul fast float %4686, %4675
  %4688 = fmul fast float %4620, %45
  %4689 = fmul fast float %4688, %4644
  %4690 = fmul fast float %4689, %4681
  %4691 = call float @dx.op.binary.f32(i32 36, float %4598, float %4662)  ; FMin(a,b)
  %4692 = fmul fast float %4691, %4664
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = bitcast float %4693 to i32
  %4695 = sub nsw i32 2129859010, %4694
  %4696 = bitcast i32 %4695 to float
  %4697 = call float @dx.op.binary.f32(i32 36, float %4599, float %4662)  ; FMin(a,b)
  %4698 = fmul fast float %4697, %4664
  %4699 = fsub fast float 1.000000e+00, %4698
  %4700 = bitcast float %4699 to i32
  %4701 = sub nsw i32 2129859010, %4700
  %4702 = bitcast i32 %4701 to float
  %4703 = call float @dx.op.binary.f32(i32 36, float %4609, float %4662)  ; FMin(a,b)
  %4704 = fmul fast float %4703, %4664
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = bitcast float %4705 to i32
  %4707 = sub nsw i32 2129859010, %4706
  %4708 = bitcast i32 %4707 to float
  %4709 = fmul fast float %4682, %4658
  %4710 = fmul fast float %4709, %4696
  %4711 = fmul fast float %4685, %4659
  %4712 = fmul fast float %4711, %4702
  %4713 = fmul fast float %4688, %4660
  %4714 = fmul fast float %4713, %4708
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4687, float %4690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = select i1 %193, float 0.000000e+00, float %4684
  %4717 = select i1 %193, float %4715, float %4687
  %4718 = select i1 %193, float 0.000000e+00, float %4690
  %4719 = call float @dx.op.dot3.f32(i32 55, float %4710, float %4712, float %4714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = select i1 %193, float 0.000000e+00, float %4710
  %4721 = select i1 %193, float %4719, float %4712
  %4722 = select i1 %193, float 0.000000e+00, float %4714
  %4723 = fmul fast float %4611, 9.843750e-01
  %4724 = fmul fast float %4607, 9.843750e-01
  %4725 = fadd fast float %4723, 7.812500e-03
  %4726 = fadd fast float %4724, 7.812500e-03
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 2
  %4729 = extractvalue %dx.types.ResRet.f32 %4727, 3
  %4730 = fmul fast float %4728, %4598
  %4731 = fmul fast float %4728, %4599
  %4732 = fmul fast float %4728, %4609
  %4733 = fadd fast float %4730, %4729
  %4734 = fadd fast float %4731, %4729
  %4735 = fadd fast float %4732, %4729
  %4736 = fcmp fast ogt float %3695, 0.000000e+00
  br i1 %4736, label %4737, label %4763

; <label>:4737                                    ; preds = %4591
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3695, float %4611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fadd fast float %4740, -5.000000e-01
  %4744 = fadd fast float %4741, -5.000000e-01
  %4745 = fsub fast float 1.000000e+00, %4598
  %4746 = fsub fast float 1.000000e+00, %4599
  %4747 = fsub fast float 1.000000e+00, %4609
  %4748 = fmul fast float %4598, 4.000000e+00
  %4749 = fmul fast float %4748, %4745
  %4750 = fmul fast float %4749, %4742
  %4751 = fmul fast float %4599, 4.000000e+00
  %4752 = fmul fast float %4751, %4746
  %4753 = fmul fast float %4752, %4743
  %4754 = fmul fast float %4609, 4.000000e+00
  %4755 = fmul fast float %4754, %4747
  %4756 = fmul fast float %4755, %4744
  %4757 = fadd fast float %4750, %4733
  %4758 = fadd fast float %4753, %4734
  %4759 = fadd fast float %4756, %4735
  %4760 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4761 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  br label %4763

; <label>:4763                                    ; preds = %4737, %4591
  %4764 = phi float [ %4760, %4737 ], [ %4733, %4591 ]
  %4765 = phi float [ %4761, %4737 ], [ %4734, %4591 ]
  %4766 = phi float [ %4762, %4737 ], [ %4735, %4591 ]
  %4767 = call float @dx.op.binary.f32(i32 35, float %4765, float %4766)  ; FMax(a,b)
  %4768 = call float @dx.op.binary.f32(i32 35, float %4764, float %4767)  ; FMax(a,b)
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = fmul fast float %4769, %4716
  %4771 = fmul fast float %4769, %4717
  %4772 = fmul fast float %4769, %4718
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = fcmp fast ogt float %4773, 0x3E7FF19E20000000
  %4775 = fdiv fast float 1.000000e+00, %4773
  %4776 = select i1 %4774, float %4775, float 0.000000e+00
  %4777 = fmul fast float %4776, %4604
  %4778 = fmul fast float %4776, %4605
  %4779 = fmul fast float %4776, %4606
  %4780 = fadd fast float %4777, -1.000000e+00
  %4781 = fadd fast float %4778, -1.000000e+00
  %4782 = fadd fast float %4779, -1.000000e+00
  %4783 = fmul fast float %4780, 5.000000e-01
  %4784 = fmul fast float %4781, 5.000000e-01
  %4785 = fmul fast float %4782, 5.000000e-01
  %4786 = fadd fast float %4783, 1.000000e+00
  %4787 = fadd fast float %4784, 1.000000e+00
  %4788 = fadd fast float %4785, 1.000000e+00
  %4789 = fmul fast float %4764, %4720
  %4790 = fmul fast float %4765, %4721
  %4791 = fmul fast float %4766, %4722
  %4792 = fsub fast float 1.000000e+00, %4611
  %4793 = bitcast float %4792 to i32
  %4794 = sitofp i32 %4793 to float
  %4795 = fmul fast float %4794, 5.000000e+00
  %4796 = fadd fast float %4795, 0xC1EFBF8940000000
  %4797 = fptosi float %4796 to i32
  %4798 = bitcast i32 %4797 to float
  %4799 = fmul fast float %4798, %3696
  %4800 = fmul fast float %4716, %4799
  %4801 = fmul fast float %4800, %4769
  %4802 = fmul fast float %4801, %4786
  %4803 = fmul fast float %4717, %4799
  %4804 = fmul fast float %4803, %4769
  %4805 = fmul fast float %4804, %4787
  %4806 = fmul fast float %4718, %4799
  %4807 = fmul fast float %4806, %4769
  %4808 = fmul fast float %4807, %4788
  %4809 = fmul fast float %4770, %3692
  %4810 = fmul fast float %4771, %3692
  %4811 = fmul fast float %4772, %3692
  %4812 = fadd fast float %4789, %3688
  %4813 = fadd fast float %4812, %4802
  %4814 = fmul fast float %4813, %3692
  %4815 = fadd fast float %4790, %3689
  %4816 = fadd fast float %4815, %4805
  %4817 = fmul fast float %4816, %3692
  %4818 = fadd fast float %4791, %3690
  %4819 = fadd fast float %4818, %4808
  %4820 = fmul fast float %4819, %3692
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4823 = fcmp fast oeq float %4822, 0.000000e+00
  br i1 %4823, label %5051, label %4824

; <label>:4824                                    ; preds = %4763
  %4825 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4826 = extractvalue %dx.types.CBufRet.f32 %4821, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4821, 2
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4830, float %4831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = select i1 %193, float %4833, float %4829
  %4837 = select i1 %193, float %4835, float %4830
  %4838 = select i1 %193, float %4834, float %4831
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 1
  %4841 = fcmp fast une float %4840, 0.000000e+00
  br i1 %4841, label %4842, label %4859

; <label>:4842                                    ; preds = %4824
  %4843 = fptoui float %65 to i32
  %4844 = fptoui float %66 to i32
  %4845 = lshr i32 %4843, 4
  %4846 = lshr i32 %4844, 4
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = fptoui float %4848 to i32
  %4850 = add i32 %4849, 15
  %4851 = lshr i32 %4850, 4
  %4852 = mul i32 %4851, %4846
  %4853 = add i32 %4852, %4845
  %4854 = shl i32 %4853, 3
  %4855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4854, i32 undef)  ; BufferLoad(srv,index,wot)
  %4856 = extractvalue %dx.types.ResRet.i32 %4855, 0
  %4857 = and i32 %4856, -268435456
  %4858 = icmp eq i32 %4857, -1342177280
  br i1 %4858, label %4869, label %4859

; <label>:4859                                    ; preds = %4842, %4824
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4862 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4863 = fmul fast float %4861, %65
  %4864 = fmul fast float %4862, %66
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %4863, float %4864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.ResRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.ResRet.f32 %4865, 2
  br label %4869

; <label>:4869                                    ; preds = %4859, %4842
  %4870 = phi float [ %4866, %4859 ], [ 0.000000e+00, %4842 ]
  %4871 = phi float [ %4867, %4859 ], [ 0.000000e+00, %4842 ]
  %4872 = phi float [ %4868, %4859 ], [ 0.000000e+00, %4842 ]
  %4873 = call float @dx.op.binary.f32(i32 36, float %4871, float %4872)  ; FMin(a,b)
  %4874 = call float @dx.op.binary.f32(i32 36, float %4870, float %4873)  ; FMin(a,b)
  %4875 = fcmp fast ogt float %4874, 0.000000e+00
  br i1 %4875, label %4876, label %5051, !dx.controlflow.hints !61

; <label>:4876                                    ; preds = %4869
  %4877 = fmul fast float %4870, %4836
  %4878 = fmul fast float %4871, %4837
  %4879 = fmul fast float %4872, %4838
  %4880 = fsub fast float %4825, %4597
  %4881 = fsub fast float %4826, %4596
  %4882 = fsub fast float %4827, %4595
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4882, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = call float @dx.op.unary.f32(i32 25, float %4883)  ; Rsqrt(value)
  %4885 = fmul fast float %4884, %4880
  %4886 = fmul fast float %4884, %4881
  %4887 = fmul fast float %4884, %4882
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %4827, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4593, float %4592, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4891 = fmul fast float %4890, %4890
  %4892 = fmul fast float %4891, %4624
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4893, %4890
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = fmul fast float %4895, %4895
  %4897 = call float @dx.op.unary.f32(i32 6, float %4888)  ; FAbs(value)
  %4898 = fsub fast float 1.000000e+00, %4607
  %4899 = call float @dx.op.binary.f32(i32 35, float %4898, float 0x3F847AE140000000)  ; FMax(a,b)
  %4900 = fmul fast float %4899, %4899
  %4901 = fmul fast float %4900, %4900
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = fmul fast float %4611, %4611
  %4904 = fmul fast float %4903, %4902
  %4905 = fadd fast float %4904, %4901
  %4906 = bitcast float %4905 to i32
  %4907 = ashr i32 %4906, 1
  %4908 = add nsw i32 %4907, 532487669
  %4909 = bitcast i32 %4908 to float
  %4910 = fadd fast float %4909, %4611
  %4911 = fmul fast float %4901, %4896
  %4912 = fsub fast float 1.000000e+00, %4896
  %4913 = fadd fast float %4912, %4911
  %4914 = fmul fast float %4897, %4897
  %4915 = fmul fast float %4914, %4902
  %4916 = fadd fast float %4915, %4901
  %4917 = bitcast float %4916 to i32
  %4918 = ashr i32 %4917, 1
  %4919 = add nsw i32 %4918, 532487669
  %4920 = bitcast i32 %4919 to float
  %4921 = fadd fast float %4920, %4897
  %4922 = fmul fast float %4913, %4913
  %4923 = fmul fast float %4922, %4910
  %4924 = fmul fast float %4923, %4921
  %4925 = fdiv fast float 0x3FF0A00000000000, %4924
  %4926 = fmul fast float %4925, %4901
  %4927 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = bitcast float %4928 to i32
  %4930 = sitofp i32 %4929 to float
  %4931 = fmul fast float %4930, 5.000000e+00
  %4932 = fadd fast float %4931, 0xC1EFBF8940000000
  %4933 = fptosi float %4932 to i32
  %4934 = bitcast i32 %4933 to float
  %4935 = fsub fast float 1.000000e+00, %4598
  %4936 = fsub fast float 1.000000e+00, %4599
  %4937 = fsub fast float 1.000000e+00, %4609
  %4938 = fmul fast float %4934, %4935
  %4939 = fmul fast float %4934, %4936
  %4940 = fmul fast float %4934, %4937
  %4941 = fadd fast float %4938, %4598
  %4942 = fadd fast float %4939, %4599
  %4943 = fadd fast float %4940, %4609
  br i1 %4736, label %4944, label %4967

; <label>:4944                                    ; preds = %4876
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3695, float %4927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.ResRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.ResRet.f32 %4945, 2
  %4949 = fadd fast float %4946, -5.000000e-01
  %4950 = fadd fast float %4947, -5.000000e-01
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fmul fast float %4598, 4.000000e+00
  %4953 = fmul fast float %4952, %4935
  %4954 = fmul fast float %4953, %4949
  %4955 = fmul fast float %4599, 4.000000e+00
  %4956 = fmul fast float %4955, %4936
  %4957 = fmul fast float %4956, %4950
  %4958 = fmul fast float %4609, 4.000000e+00
  %4959 = fmul fast float %4958, %4937
  %4960 = fmul fast float %4959, %4951
  %4961 = fadd fast float %4954, %4941
  %4962 = fadd fast float %4957, %4942
  %4963 = fadd fast float %4960, %4943
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4965 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4966 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  br label %4967

; <label>:4967                                    ; preds = %4944, %4876
  %4968 = phi float [ %4964, %4944 ], [ %4941, %4876 ]
  %4969 = phi float [ %4965, %4944 ], [ %4942, %4876 ]
  %4970 = phi float [ %4966, %4944 ], [ %4943, %4876 ]
  %4971 = fmul fast float %4888, 9.843750e-01
  %4972 = fadd fast float %4971, 7.812500e-03
  %4973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %4972, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 3
  %4976 = fmul fast float %4974, %4598
  %4977 = fmul fast float %4974, %4599
  %4978 = fmul fast float %4974, %4609
  %4979 = fadd fast float %4976, %4975
  %4980 = fadd fast float %4977, %4975
  %4981 = fadd fast float %4978, %4975
  br i1 %4736, label %4982, label %5005

; <label>:4982                                    ; preds = %4967
  %4983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3695, float %4888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4984 = extractvalue %dx.types.ResRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.ResRet.f32 %4983, 1
  %4986 = extractvalue %dx.types.ResRet.f32 %4983, 2
  %4987 = fadd fast float %4984, -5.000000e-01
  %4988 = fadd fast float %4985, -5.000000e-01
  %4989 = fadd fast float %4986, -5.000000e-01
  %4990 = fmul fast float %4598, 4.000000e+00
  %4991 = fmul fast float %4990, %4935
  %4992 = fmul fast float %4991, %4987
  %4993 = fmul fast float %4599, 4.000000e+00
  %4994 = fmul fast float %4993, %4936
  %4995 = fmul fast float %4994, %4988
  %4996 = fmul fast float %4609, 4.000000e+00
  %4997 = fmul fast float %4996, %4937
  %4998 = fmul fast float %4997, %4989
  %4999 = fadd fast float %4992, %4979
  %5000 = fadd fast float %4995, %4980
  %5001 = fadd fast float %4998, %4981
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  br label %5005

; <label>:5005                                    ; preds = %4982, %4967
  %5006 = phi float [ %5002, %4982 ], [ %4979, %4967 ]
  %5007 = phi float [ %5003, %4982 ], [ %4980, %4967 ]
  %5008 = phi float [ %5004, %4982 ], [ %4981, %4967 ]
  %5009 = call float @dx.op.binary.f32(i32 35, float %5007, float %5008)  ; FMax(a,b)
  %5010 = call float @dx.op.binary.f32(i32 35, float %5006, float %5009)  ; FMax(a,b)
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = fmul fast float %4968, %4926
  %5013 = fmul fast float %4969, %4926
  %5014 = fmul fast float %4970, %4926
  %5015 = fsub fast float 1.000000e+00, %4889
  %5016 = bitcast float %5015 to i32
  %5017 = sitofp i32 %5016 to float
  %5018 = fmul fast float %5017, 5.000000e+00
  %5019 = fadd fast float %5018, 0xC1EFBF8940000000
  %5020 = fptosi float %5019 to i32
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %5021, %3696
  %5023 = fmul fast float %5011, %5022
  %5024 = fmul fast float %5023, %4786
  %5025 = fmul fast float %5023, %4787
  %5026 = fmul fast float %5023, %4788
  %5027 = fadd fast float %5024, %5012
  %5028 = fadd fast float %5025, %5013
  %5029 = fadd fast float %5026, %5014
  %5030 = fmul fast float %4894, %4877
  %5031 = fmul fast float %5030, %5011
  %5032 = fmul fast float %4894, %4878
  %5033 = fmul fast float %5032, %5011
  %5034 = fmul fast float %4894, %4879
  %5035 = fmul fast float %5034, %5011
  %5036 = fmul fast float %5030, %5027
  %5037 = fmul fast float %5032, %5028
  %5038 = fmul fast float %5034, %5029
  %5039 = fadd fast float %5031, %4770
  %5040 = fmul fast float %5039, %3692
  %5041 = fadd fast float %5033, %4771
  %5042 = fmul fast float %5041, %3692
  %5043 = fadd fast float %5035, %4772
  %5044 = fmul fast float %5043, %3692
  %5045 = fadd fast float %5036, %4813
  %5046 = fmul fast float %5045, %3692
  %5047 = fadd fast float %5037, %4816
  %5048 = fmul fast float %5047, %3692
  %5049 = fadd fast float %5038, %4819
  %5050 = fmul fast float %5049, %3692
  br label %5051

; <label>:5051                                    ; preds = %5005, %4869, %4763
  %5052 = phi float [ %4814, %4763 ], [ %4814, %4869 ], [ %5046, %5005 ]
  %5053 = phi float [ %4817, %4763 ], [ %4817, %4869 ], [ %5048, %5005 ]
  %5054 = phi float [ %4820, %4763 ], [ %4820, %4869 ], [ %5050, %5005 ]
  %5055 = phi float [ %4809, %4763 ], [ %4809, %4869 ], [ %5040, %5005 ]
  %5056 = phi float [ %4810, %4763 ], [ %4810, %4869 ], [ %5042, %5005 ]
  %5057 = phi float [ %4811, %4763 ], [ %4811, %4869 ], [ %5044, %5005 ]
  %5058 = call float @dx.op.unary.f32(i32 24, float %4604)  ; Sqrt(value)
  %5059 = call float @dx.op.unary.f32(i32 24, float %4605)  ; Sqrt(value)
  %5060 = call float @dx.op.unary.f32(i32 24, float %4606)  ; Sqrt(value)
  %5061 = fmul fast float %5058, %5055
  %5062 = fmul fast float %5059, %5056
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  br i1 %193, label %5065, label %5085

; <label>:5065                                    ; preds = %5051
  %5066 = fadd fast float %5057, %3698
  %5067 = fmul fast float %5066, %3699
  %5068 = fsub fast float 1.000000e+00, %3699
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 3
  %5072 = fmul fast float %5071, %5069
  %5073 = fadd fast float %5072, %5067
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = fmul fast float %5075, %4792
  %5077 = fsub fast float %5073, %5076
  %5078 = fadd fast float %5062, %5061
  %5079 = fmul fast float %5064, %5078
  %5080 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5081 = fsub fast float %5077, %5080
  %5082 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5083 = fmul fast float %5081, %5082
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  br label %5101

; <label>:5085                                    ; preds = %5051
  %5086 = fmul fast float %5060, %5057
  %5087 = fmul fast float %5064, %5061
  %5088 = fmul fast float %5064, %5062
  %5089 = fmul fast float %5086, %5064
  %5090 = add i32 %21, 356
  %5091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5090, i32 undef)  ; BufferLoad(srv,index,wot)
  %5092 = extractvalue %dx.types.ResRet.i32 %5091, 0
  %5093 = and i32 %5092, 32
  %5094 = icmp eq i32 %5093, 0
  br i1 %5094, label %5101, label %5095

; <label>:5095                                    ; preds = %5085
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 0
  %5098 = fmul fast float %5097, 0x3FE99999A0000000
  %5099 = fadd fast float %5097, %5087
  %5100 = fadd fast float %5098, %5089
  br label %5101

; <label>:5101                                    ; preds = %5095, %5085, %5065
  %5102 = phi float [ %5079, %5065 ], [ %5099, %5095 ], [ %5087, %5085 ]
  %5103 = phi float [ %5084, %5065 ], [ %5088, %5095 ], [ %5088, %5085 ]
  %5104 = phi float [ 1.000000e+00, %5065 ], [ %5100, %5095 ], [ %5089, %5085 ]
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = fmul fast float %5106, %5053
  %5108 = fmul fast float %5106, %5054
  %5109 = fadd fast float %5053, %5052
  %5110 = select i1 %193, float %5109, float %5052
  %5111 = fmul float %5110, %5106
  %5112 = select i1 %193, float 0.000000e+00, float %5107
  %5113 = select i1 %193, float 0.000000e+00, float %5108
  %5114 = fmul fast float %5102, %5058
  %5115 = fmul fast float %5103, %5059
  %5116 = fmul fast float %5104, %5060
  %5117 = fadd fast float %5111, %5114
  %5118 = fadd fast float %5112, %5115
  %5119 = fadd fast float %5113, %5116
  %5120 = select i1 %193, float %5103, float %5118
  %5121 = select i1 %193, float %5104, float %5119
  %5122 = call float @dx.op.binary.f32(i32 36, float %5117, float 3.225500e+04)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5120, float 3.225500e+04)  ; FMin(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5121, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5123)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5124)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !60}
!34 = !{!35, !58, null}
!35 = !{!36, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 11}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 14}
!41 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 3, i8 0, !44}
!44 = !{i32 3, i32 7}
!45 = !{i32 4, !"TANGENT", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!46 = !{i32 3, i32 15}
!47 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 5, i8 0, !44}
!48 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 6, i8 0, !46}
!49 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 7, i8 0, !44}
!50 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 8, i8 0, !46}
!51 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 9, i8 0, !42}
!52 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 10, i8 0, !46}
!53 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 11, i8 0, !44}
!54 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !37, i8 1, i32 1, i8 1, i32 12, i8 0, !55}
!55 = !{i32 3, i32 1}
!56 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !37, i8 1, i32 1, i8 4, i32 13, i8 0, !55}
!57 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !46}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}

