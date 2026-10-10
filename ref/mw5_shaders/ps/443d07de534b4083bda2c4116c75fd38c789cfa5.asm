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
; shader hash: 1bce5fd762713c36c678fdc3e91bd9c0
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
  %387 = add i32 %21, 492
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
  %568 = add i32 %21, 460
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
  %1128 = add i32 %21, 464
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
  %1867 = add i32 %21, 468
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
  %2606 = add i32 %21, 472
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
  %3133 = extractvalue %dx.types.ResRet.i32 %3131, 1
  %3134 = bitcast i32 %3132 to float
  %3135 = bitcast i32 %3133 to float
  %3136 = fcmp fast oge float %3134, 0.000000e+00
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 0
  %3139 = select i1 %3136, float %3134, float %3138
  %3140 = add i32 %21, 456
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %3142, 0
  %3144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3144, %dx.types.Handle %62, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  %3147 = fmul fast float %3146, %3135
  %3148 = fadd fast float %3147, %3139
  %3149 = call float @dx.op.dot2.f32(i32 54, float %3118, float %3119, float %3118, float %3119)  ; Dot2(ax,ay,bx,by)
  %3150 = fmul fast float %3149, 0x3FE3333340000000
  %3151 = fsub fast float 1.000000e+00, %3150
  %3152 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3151, float %3118, float %3119, float %3151)  ; Dot3(ax,ay,az,bx,by,bz)
  %3153 = call float @dx.op.unary.f32(i32 25, float %3152)  ; Rsqrt(value)
  %3154 = fmul fast float %3153, %3118
  %3155 = fmul fast float %3153, %3119
  %3156 = fmul fast float %3151, %3153
  %3157 = fmul fast float %3156, %72
  %3158 = fmul fast float %3156, %73
  %3159 = fmul fast float %3156, %74
  %3160 = fmul fast float %3154, %46
  %3161 = fmul fast float %3154, %47
  %3162 = fmul fast float %3154, %48
  %3163 = fadd fast float %3157, %3160
  %3164 = fadd fast float %3158, %3161
  %3165 = fadd fast float %3159, %3162
  %3166 = fmul fast float %84, %3155
  %3167 = fmul fast float %85, %3155
  %3168 = fmul fast float %86, %3155
  %3169 = fadd fast float %3163, %3166
  %3170 = fadd fast float %3164, %3167
  %3171 = fadd fast float %3165, %3168
  %3172 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3170, float %3171, float %3169, float %3170, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3173 = call float @dx.op.unary.f32(i32 25, float %3172)  ; Rsqrt(value)
  %3174 = fmul fast float %3169, %3173
  %3175 = fmul fast float %3170, %3173
  %3176 = fmul fast float %3171, %3173
  %3177 = icmp eq i32 %22, 65535
  br i1 %3177, label %3692, label %3178

; <label>:3178                                    ; preds = %3117
  %3179 = call float @dx.op.unary.f32(i32 83, float %23)  ; DerivCoarseX(value)
  %3180 = call float @dx.op.unary.f32(i32 83, float %24)  ; DerivCoarseX(value)
  %3181 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %3182 = call float @dx.op.unary.f32(i32 84, float %23)  ; DerivCoarseY(value)
  %3183 = call float @dx.op.unary.f32(i32 84, float %24)  ; DerivCoarseY(value)
  %3184 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %3185 = fadd fast float %3179, %23
  %3186 = fadd fast float %3180, %24
  %3187 = fadd fast float %3181, %25
  %3188 = fadd fast float %3182, %23
  %3189 = fadd fast float %3183, %24
  %3190 = fadd fast float %3184, %25
  %3191 = mul i32 %22, 48
  %3192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.ResRet.f32 %3192, 1
  %3195 = extractvalue %dx.types.ResRet.f32 %3192, 2
  %3196 = add i32 %3191, 16
  %3197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.ResRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.ResRet.f32 %3197, 2
  %3201 = add i32 %3191, 32
  %3202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.ResRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.ResRet.f32 %3202, 2
  %3206 = extractvalue %dx.types.ResRet.f32 %3202, 3
  %3207 = bitcast float %3206 to i32
  %3208 = fmul fast float %3193, %23
  %3209 = fmul fast float %3194, %24
  %3210 = fmul fast float %3195, %25
  %3211 = fsub fast float %3208, %3198
  %3212 = fsub fast float %3209, %3199
  %3213 = fsub fast float %3210, %3200
  %3214 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3215 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3216 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3217 = fmul fast float %3214, %3203
  %3218 = fmul fast float %3215, %3204
  %3219 = fmul fast float %3216, %3205
  %3220 = fadd fast float %3203, -1.000000e+00
  %3221 = fadd fast float %3204, -1.000000e+00
  %3222 = fadd fast float %3205, -1.000000e+00
  %3223 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3224 = call float @dx.op.unary.f32(i32 27, float %3218)  ; Round_ni(value)
  %3225 = call float @dx.op.unary.f32(i32 27, float %3219)  ; Round_ni(value)
  %3226 = call float @dx.op.binary.f32(i32 36, float %3223, float %3220)  ; FMin(a,b)
  %3227 = call float @dx.op.binary.f32(i32 36, float %3224, float %3221)  ; FMin(a,b)
  %3228 = call float @dx.op.binary.f32(i32 36, float %3225, float %3222)  ; FMin(a,b)
  %3229 = fmul fast float %3228, %3204
  %3230 = fadd fast float %3229, %3227
  %3231 = fmul fast float %3230, %3203
  %3232 = fadd fast float %3231, %3226
  %3233 = fptosi float %3232 to i32
  %3234 = add nsw i32 %3233, %3207
  %3235 = shl nsw i32 %3234, 2
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = lshr i32 %3237, 16
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3661, label %3240

; <label>:3240                                    ; preds = %3178
  br label %3241

; <label>:3241                                    ; preds = %3362, %3240
  %3242 = phi i32 [ %3264, %3362 ], [ %3238, %3240 ]
  %3243 = phi float [ %3363, %3362 ], [ 0.000000e+00, %3240 ]
  %3244 = phi float [ %3364, %3362 ], [ %3148, %3240 ]
  %3245 = phi float [ %3365, %3362 ], [ %3129, %3240 ]
  %3246 = phi float [ %3366, %3362 ], [ 0.000000e+00, %3240 ]
  %3247 = phi float [ %3367, %3362 ], [ 0.000000e+00, %3240 ]
  %3248 = phi float [ %3368, %3362 ], [ %3123, %3240 ]
  %3249 = phi float [ %3369, %3362 ], [ %3124, %3240 ]
  %3250 = phi float [ %3370, %3362 ], [ %3125, %3240 ]
  %3251 = phi float [ %3371, %3362 ], [ %3174, %3240 ]
  %3252 = phi float [ %3372, %3362 ], [ %3175, %3240 ]
  %3253 = phi float [ %3373, %3362 ], [ %3176, %3240 ]
  %3254 = phi float [ %3374, %3362 ], [ %3128, %3240 ]
  %3255 = phi float [ %3375, %3362 ], [ %3127, %3240 ]
  %3256 = phi float [ %3376, %3362 ], [ 0.000000e+00, %3240 ]
  %3257 = phi float [ %3377, %3362 ], [ %3126, %3240 ]
  %3258 = phi float [ %3378, %3362 ], [ %3120, %3240 ]
  %3259 = phi float [ %3379, %3362 ], [ %3121, %3240 ]
  %3260 = phi float [ %3380, %3362 ], [ %3122, %3240 ]
  %3261 = shl nuw nsw i32 %3242, 2
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = lshr i32 %3263, 16
  %3265 = shl i32 %3263, 8
  %3266 = and i32 %3265, 16776960
  %3267 = or i32 %3266, 48
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = or i32 %3266, 64
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = extractvalue %dx.types.ResRet.i32 %3273, 1
  %3276 = or i32 %3266, 80
  %3277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 2
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 3
  %3280 = or i32 %3266, 96
  %3281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = extractvalue %dx.types.ResRet.f32 %3281, 1
  %3284 = extractvalue %dx.types.ResRet.f32 %3281, 2
  %3285 = extractvalue %dx.types.ResRet.f32 %3281, 3
  %3286 = or i32 %3266, 112
  %3287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 2
  %3289 = or i32 %3266, 128
  %3290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.ResRet.f32 %3290, 1
  %3293 = extractvalue %dx.types.ResRet.f32 %3290, 2
  %3294 = extractvalue %dx.types.ResRet.f32 %3290, 3
  %3295 = or i32 %3266, 144
  %3296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.ResRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.ResRet.f32 %3296, 2
  %3300 = extractvalue %dx.types.ResRet.f32 %3296, 3
  %3301 = or i32 %3266, 160
  %3302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.f32 %3302, 1
  %3305 = extractvalue %dx.types.ResRet.f32 %3302, 2
  %3306 = extractvalue %dx.types.ResRet.f32 %3302, 3
  %3307 = or i32 %3266, 192
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = or i32 %3266, 208
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = or i32 %3266, 248
  %3314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.f32 %3314, 1
  %3317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = extractvalue %dx.types.ResRet.f32 %3317, 3
  %3322 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3323 = or i32 %3266, 16
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3329 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3330 = or i32 %3266, 32
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %23, float %24, float %25, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3337 = call float @dx.op.unary.f32(i32 27, float %3322)  ; Round_ni(value)
  %3338 = call float @dx.op.unary.f32(i32 6, float %3337)  ; FAbs(value)
  %3339 = call float @dx.op.unary.f32(i32 27, float %3329)  ; Round_ni(value)
  %3340 = call float @dx.op.unary.f32(i32 6, float %3339)  ; FAbs(value)
  %3341 = call float @dx.op.unary.f32(i32 6, float %3336)  ; FAbs(value)
  %3342 = call float @dx.op.unary.f32(i32 27, float %3341)  ; Round_ni(value)
  %3343 = fadd fast float %3340, %3338
  %3344 = fadd fast float %3343, %3342
  %3345 = fcmp fast oeq float %3344, 0.000000e+00
  %3346 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %3185, float %3186, float %3187, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3347 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3185, float %3186, float %3187, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3348 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %3188, float %3189, float %3190, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3349 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3188, float %3189, float %3190, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3350 = fsub fast float %3346, %3322
  %3351 = fsub fast float %3348, %3322
  %3352 = fsub fast float %3347, %3329
  %3353 = fsub fast float %3349, %3329
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3269, float %3270, float %3271, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 2
  %3357 = fadd fast float %3356, %3354
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3360 = fcmp fast ogt float %3358, %3359
  %3361 = and i1 %3345, %3360
  br i1 %3361, label %3382, label %3362

; <label>:3362                                    ; preds = %3647, %3465, %3382, %3241
  %3363 = phi float [ %3243, %3382 ], [ %3468, %3465 ], [ %3468, %3647 ], [ %3243, %3241 ]
  %3364 = phi float [ %3244, %3382 ], [ %3244, %3465 ], [ %3622, %3647 ], [ %3244, %3241 ]
  %3365 = phi float [ %3245, %3382 ], [ %3245, %3465 ], [ %3620, %3647 ], [ %3245, %3241 ]
  %3366 = phi float [ %3246, %3382 ], [ %3246, %3465 ], [ %3592, %3647 ], [ %3246, %3241 ]
  %3367 = phi float [ %3247, %3382 ], [ %3247, %3465 ], [ %3590, %3647 ], [ %3247, %3241 ]
  %3368 = phi float [ %3248, %3382 ], [ %3248, %3465 ], [ %3657, %3647 ], [ %3248, %3241 ]
  %3369 = phi float [ %3249, %3382 ], [ %3249, %3465 ], [ %3658, %3647 ], [ %3249, %3241 ]
  %3370 = phi float [ %3250, %3382 ], [ %3250, %3465 ], [ %3659, %3647 ], [ %3250, %3241 ]
  %3371 = phi float [ %3251, %3382 ], [ %3251, %3465 ], [ %3571, %3647 ], [ %3251, %3241 ]
  %3372 = phi float [ %3252, %3382 ], [ %3252, %3465 ], [ %3572, %3647 ], [ %3252, %3241 ]
  %3373 = phi float [ %3253, %3382 ], [ %3253, %3465 ], [ %3573, %3647 ], [ %3253, %3241 ]
  %3374 = phi float [ %3254, %3382 ], [ %3254, %3465 ], [ %3600, %3647 ], [ %3254, %3241 ]
  %3375 = phi float [ %3255, %3382 ], [ %3255, %3465 ], [ %3597, %3647 ], [ %3255, %3241 ]
  %3376 = phi float [ %3256, %3382 ], [ %3256, %3465 ], [ %3594, %3647 ], [ %3256, %3241 ]
  %3377 = phi float [ %3257, %3382 ], [ %3257, %3465 ], [ %3588, %3647 ], [ %3257, %3241 ]
  %3378 = phi float [ %3258, %3382 ], [ %3258, %3465 ], [ %3583, %3647 ], [ %3258, %3241 ]
  %3379 = phi float [ %3259, %3382 ], [ %3259, %3465 ], [ %3584, %3647 ], [ %3259, %3241 ]
  %3380 = phi float [ %3260, %3382 ], [ %3260, %3465 ], [ %3585, %3647 ], [ %3260, %3241 ]
  %3381 = icmp eq i32 %3264, 0
  br i1 %3381, label %3660, label %3241

; <label>:3382                                    ; preds = %3241
  %3383 = extractvalue %dx.types.ResRet.f32 %3268, 3
  %3384 = extractvalue %dx.types.ResRet.f32 %3287, 3
  %3385 = extractvalue %dx.types.ResRet.f32 %3287, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3287, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3389 = extractvalue %dx.types.ResRet.i32 %3273, 3
  %3390 = extractvalue %dx.types.ResRet.i32 %3273, 2
  %3391 = bitcast float %3383 to i32
  %3392 = add i32 %3389, 0
  %3393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3393, %dx.types.Handle %3394, float %3322, float %3329, float undef, float undef, i32 0, i32 0, i32 undef, float %3350, float %3352, float undef, float %3351, float %3353, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = fmul fast float %3396, %3388
  %3398 = fadd fast float %3397, %3387
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = fmul fast float %3322, %3282
  %3401 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3329, float %3400)  ; FMad(a,b,c)
  %3402 = fadd fast float %3401, %3386
  %3403 = fmul fast float %3322, %3284
  %3404 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3329, float %3403)  ; FMad(a,b,c)
  %3405 = fadd fast float %3404, %3385
  %3406 = fmul fast float %3350, %3282
  %3407 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3352, float %3406)  ; FMad(a,b,c)
  %3408 = fmul fast float %3350, %3284
  %3409 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3352, float %3408)  ; FMad(a,b,c)
  %3410 = fmul fast float %3351, %3282
  %3411 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3353, float %3410)  ; FMad(a,b,c)
  %3412 = fmul fast float %3351, %3284
  %3413 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3353, float %3412)  ; FMad(a,b,c)
  %3414 = add i32 %3390, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3415, %dx.types.Handle %3394, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = and i32 %3391, 1024
  %3419 = icmp ne i32 %3418, 0
  %3420 = fcmp fast ogt float %3417, 0x3FE0101020000000
  %3421 = uitofp i1 %3420 to float
  %3422 = select i1 %3419, float %3421, float %3417
  %3423 = and i32 %3391, 8192
  %3424 = icmp ne i32 %3423, 0
  %3425 = select i1 %3424, float %3384, float 1.000000e+00
  %3426 = fmul fast float %3322, 2.000000e+00
  %3427 = fadd fast float %3426, -1.000000e+00
  %3428 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3429 = fmul fast float %3428, %3315
  %3430 = fsub fast float %3429, %3315
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fmul fast float %3329, 2.000000e+00
  %3433 = fadd fast float %3432, -1.000000e+00
  %3434 = call float @dx.op.unary.f32(i32 6, float %3433)  ; FAbs(value)
  %3435 = fmul fast float %3434, %3316
  %3436 = fsub fast float %3435, %3316
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fmul fast float %3341, %3278
  %3439 = fsub fast float %3438, %3278
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = fmul fast float %3399, %3425
  %3442 = fmul fast float %3441, %3396
  %3443 = fmul fast float %3442, %3431
  %3444 = fmul fast float %3443, %3422
  %3445 = fmul fast float %3444, %3437
  %3446 = fmul fast float %3445, %3440
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 1
  %3449 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3450 = fsub fast float %3358, %3449
  %3451 = fmul fast float %3450, %3448
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fmul fast float %3446, %3279
  %3454 = fadd fast float %3446, %3279
  %3455 = fmul fast float %3454, %3288
  %3456 = fsub fast float %3455, %3288
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = and i32 %3391, 128
  %3459 = icmp ne i32 %3458, 0
  %3460 = select i1 %3459, float %3457, float %3453
  %3461 = fmul fast float %3460, %3452
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = fcmp fast ugt float %3461, %3463
  br i1 %3464, label %3465, label %3362

; <label>:3465                                    ; preds = %3382
  %3466 = select i1 %3424, float %3461, float 0.000000e+00
  %3467 = fadd fast float %3466, %3243
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  br i1 %3424, label %3362, label %3469

; <label>:3469                                    ; preds = %3465
  %3470 = and i32 %3391, 4
  %3471 = and i32 %3391, 8
  %3472 = add i32 %3274, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3473, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3480 = bitcast float %3300 to i32
  %3481 = and i32 %3480, 255
  %3482 = uitofp i32 %3481 to float
  %3483 = lshr i32 %3480, 8
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3479, %3482
  %3487 = fadd fast float %3486, %3485
  %3488 = fmul fast float %3487, 0x3F70101000000000
  %3489 = add i32 %3275, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3489, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3490, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = bitcast float %3294 to i32
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = lshr i32 %3496, 8
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = lshr i32 %3496, 16
  %3503 = and i32 %3502, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = fmul fast float %3504, 0x3F70101000000000
  %3506 = fmul fast float %3492, %3498
  %3507 = fadd fast float %3506, %3501
  %3508 = fmul fast float %3507, 0x3F70101000000000
  %3509 = fadd fast float %3493, -5.000000e-01
  %3510 = fadd fast float %3495, -5.000000e-01
  %3511 = fmul fast float %3509, %3505
  %3512 = fmul fast float %3510, %3505
  %3513 = fadd fast float %3511, 5.000000e-01
  %3514 = fadd fast float %3512, 5.000000e-01
  %3515 = fmul fast float %3476, %3303
  %3516 = fmul fast float %3477, %3304
  %3517 = fmul fast float %3478, %3305
  %3518 = fmul fast float %3513, 2.000000e+00
  %3519 = fadd fast float %3518, -1.000000e+00
  %3520 = fmul fast float %3514, 2.000000e+00
  %3521 = fadd fast float %3520, -1.000000e+00
  %3522 = fadd fast float %3519, %3521
  %3523 = fmul fast float %3522, 5.000000e-01
  %3524 = fsub fast float %3519, %3521
  %3525 = fmul fast float %3524, 5.000000e-01
  %3526 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = call float @dx.op.unary.f32(i32 6, float %3525)  ; FAbs(value)
  %3529 = fsub fast float %3527, %3528
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3525, float %3529, float %3523, float %3525, float %3529)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = call float @dx.op.unary.f32(i32 25, float %3530)  ; Rsqrt(value)
  %3532 = fmul fast float %3523, %3531
  %3533 = fmul fast float %3525, %3531
  %3534 = fmul fast float %3531, %3529
  %3535 = fmul fast float %3534, %3269
  %3536 = fmul fast float %3534, %3270
  %3537 = fmul fast float %3534, %3271
  %3538 = fmul fast float %3532, %3291
  %3539 = fmul fast float %3532, %3292
  %3540 = fmul fast float %3532, %3293
  %3541 = fadd fast float %3538, %3535
  %3542 = fadd fast float %3539, %3536
  %3543 = fadd fast float %3540, %3537
  %3544 = fmul fast float %3533, %3297
  %3545 = fmul fast float %3533, %3298
  %3546 = fmul fast float %3533, %3299
  %3547 = fadd fast float %3541, %3544
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = call float @dx.op.dot3.f32(i32 55, float %3547, float %3548, float %3549, float %3547, float %3548, float %3549)  ; Dot3(ax,ay,az,bx,by,bz)
  %3551 = call float @dx.op.unary.f32(i32 25, float %3550)  ; Rsqrt(value)
  %3552 = fmul fast float %3547, %3551
  %3553 = fmul fast float %3548, %3551
  %3554 = fmul fast float %3549, %3551
  %3555 = icmp ne i32 %3471, 0
  %3556 = select i1 %3555, float 1.000000e+00, float 0.000000e+00
  %3557 = fmul fast float %3461, %3556
  %3558 = and i32 %3391, 1
  %3559 = icmp eq i32 %3558, 0
  br i1 %3559, label %3560, label %3564

; <label>:3560                                    ; preds = %3469
  %3561 = fsub fast float %3552, %3251
  %3562 = fsub fast float %3553, %3252
  %3563 = fsub fast float %3554, %3253
  br label %3564

; <label>:3564                                    ; preds = %3560, %3469
  %3565 = phi float [ %3561, %3560 ], [ %3552, %3469 ]
  %3566 = phi float [ %3562, %3560 ], [ %3553, %3469 ]
  %3567 = phi float [ %3563, %3560 ], [ %3554, %3469 ]
  %3568 = fmul float %3567, %3557
  %3569 = fmul float %3566, %3557
  %3570 = fmul float %3565, %3557
  %3571 = fadd fast float %3570, %3251
  %3572 = fadd fast float %3569, %3252
  %3573 = fadd fast float %3568, %3253
  %3574 = icmp ne i32 %3470, 0
  %3575 = select i1 %3574, float 1.000000e+00, float 0.000000e+00
  %3576 = fmul fast float %3461, %3575
  %3577 = fsub fast float %3515, %3258
  %3578 = fsub fast float %3516, %3259
  %3579 = fsub fast float %3517, %3260
  %3580 = fmul fast float %3577, %3576
  %3581 = fmul fast float %3578, %3576
  %3582 = fmul fast float %3579, %3576
  %3583 = fadd fast float %3580, %3258
  %3584 = fadd fast float %3581, %3259
  %3585 = fadd fast float %3582, %3260
  %3586 = fsub fast float %3488, %3257
  %3587 = fmul fast float %3586, %3576
  %3588 = fadd fast float %3587, %3257
  %3589 = fmul fast float %3576, %3247
  %3590 = fsub fast float %3247, %3589
  %3591 = fmul fast float %3576, %3246
  %3592 = fsub fast float %3246, %3591
  %3593 = fadd fast float %3461, %3256
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fsub fast float %3508, %3255
  %3596 = fmul fast float %3595, %3557
  %3597 = fadd fast float %3596, %3255
  %3598 = fsub fast float %3494, %3254
  %3599 = fmul fast float %3598, %3557
  %3600 = fadd fast float %3599, %3254
  %3601 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3516, float %3517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3605 = fmul fast float %3604, %3601
  %3606 = fadd fast float %3605, %3603
  %3607 = call float @dx.op.unary.f32(i32 7, float %3606)  ; Saturate(value)
  %3608 = bitcast float %3306 to i32
  %3609 = and i32 %3608, 65535
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = lshr i32 %3608, 16
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = fcmp fast oge float %3610, 0.000000e+00
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = select i1 %3613, float %3610, float %3615
  %3617 = fadd fast float %3616, %3612
  %3618 = fsub fast float %3607, %3245
  %3619 = fmul fast float %3618, %3461
  %3620 = fadd fast float %3619, %3245
  %3621 = fmul fast float %3617, %3461
  %3622 = call float @dx.op.binary.f32(i32 35, float %3244, float %3621)  ; FMax(a,b)
  %3623 = and i32 %3391, 16
  %3624 = icmp eq i32 %3623, 0
  br i1 %3624, label %3647, label %3625

; <label>:3625                                    ; preds = %3564
  %3626 = bitcast float %3312 to i32
  %3627 = add i32 %3309, 0
  %3628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3627, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3628, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = and i32 %3626, 65535
  %3634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3633)  ; LegacyF16ToF32(value)
  %3635 = fmul fast float %3630, %3303
  %3636 = fmul fast float %3631, %3304
  %3637 = fmul fast float %3632, %3305
  %3638 = and i32 %3391, 16384
  %3639 = icmp ne i32 %3638, 0
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = select i1 %3639, float %3641, float 1.000000e+00
  %3643 = fmul fast float %3642, %3634
  %3644 = fmul fast float %3635, %3643
  %3645 = fmul fast float %3636, %3643
  %3646 = fmul fast float %3637, %3643
  br label %3647

; <label>:3647                                    ; preds = %3625, %3564
  %3648 = phi float [ %3644, %3625 ], [ 0.000000e+00, %3564 ]
  %3649 = phi float [ %3645, %3625 ], [ 0.000000e+00, %3564 ]
  %3650 = phi float [ %3646, %3625 ], [ 0.000000e+00, %3564 ]
  %3651 = fsub fast float %3648, %3248
  %3652 = fsub fast float %3649, %3249
  %3653 = fsub fast float %3650, %3250
  %3654 = fmul fast float %3651, %3461
  %3655 = fmul fast float %3652, %3461
  %3656 = fmul fast float %3653, %3461
  %3657 = fadd fast float %3654, %3248
  %3658 = fadd fast float %3655, %3249
  %3659 = fadd fast float %3656, %3250
  br label %3362

; <label>:3660                                    ; preds = %3362
  br label %3661

; <label>:3661                                    ; preds = %3660, %3178
  %3662 = phi float [ 0.000000e+00, %3178 ], [ %3363, %3660 ]
  %3663 = phi float [ %3148, %3178 ], [ %3364, %3660 ]
  %3664 = phi float [ %3129, %3178 ], [ %3365, %3660 ]
  %3665 = phi float [ 0.000000e+00, %3178 ], [ %3366, %3660 ]
  %3666 = phi float [ 0.000000e+00, %3178 ], [ %3367, %3660 ]
  %3667 = phi float [ %3123, %3178 ], [ %3368, %3660 ]
  %3668 = phi float [ %3124, %3178 ], [ %3369, %3660 ]
  %3669 = phi float [ %3125, %3178 ], [ %3370, %3660 ]
  %3670 = phi float [ %3174, %3178 ], [ %3371, %3660 ]
  %3671 = phi float [ %3175, %3178 ], [ %3372, %3660 ]
  %3672 = phi float [ %3176, %3178 ], [ %3373, %3660 ]
  %3673 = phi float [ %3128, %3178 ], [ %3374, %3660 ]
  %3674 = phi float [ %3127, %3178 ], [ %3375, %3660 ]
  %3675 = phi float [ 0.000000e+00, %3178 ], [ %3376, %3660 ]
  %3676 = phi float [ %3126, %3178 ], [ %3377, %3660 ]
  %3677 = phi float [ %3120, %3178 ], [ %3378, %3660 ]
  %3678 = phi float [ %3121, %3178 ], [ %3379, %3660 ]
  %3679 = phi float [ %3122, %3178 ], [ %3380, %3660 ]
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3670, float %3671, float %3672, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.unary.f32(i32 25, float %3680)  ; Rsqrt(value)
  %3682 = fmul fast float %3681, %3670
  %3683 = fmul fast float %3681, %3671
  %3684 = fmul fast float %3681, %3672
  %3685 = fadd fast float %3675, %909
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3682, float %3683, float %3684, float %3682, float %3683, float %3684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = call float @dx.op.unary.f32(i32 25, float %3687)  ; Rsqrt(value)
  %3689 = fmul fast float %3688, %3682
  %3690 = fmul fast float %3688, %3683
  %3691 = fmul fast float %3688, %3684
  br label %3692

; <label>:3692                                    ; preds = %3661, %3117
  %3693 = phi float [ %3689, %3661 ], [ %3174, %3117 ]
  %3694 = phi float [ %3690, %3661 ], [ %3175, %3117 ]
  %3695 = phi float [ %3691, %3661 ], [ %3176, %3117 ]
  %3696 = phi float [ %3677, %3661 ], [ %3120, %3117 ]
  %3697 = phi float [ %3678, %3661 ], [ %3121, %3117 ]
  %3698 = phi float [ %3679, %3661 ], [ %3122, %3117 ]
  %3699 = phi float [ %3667, %3661 ], [ %3123, %3117 ]
  %3700 = phi float [ %3668, %3661 ], [ %3124, %3117 ]
  %3701 = phi float [ %3669, %3661 ], [ %3125, %3117 ]
  %3702 = phi float [ %3676, %3661 ], [ %3126, %3117 ]
  %3703 = phi float [ %3686, %3661 ], [ %909, %3117 ]
  %3704 = phi float [ %3674, %3661 ], [ %3127, %3117 ]
  %3705 = phi float [ %3673, %3661 ], [ %3128, %3117 ]
  %3706 = phi float [ %3666, %3661 ], [ 0.000000e+00, %3117 ]
  %3707 = phi float [ %3665, %3661 ], [ 0.000000e+00, %3117 ]
  %3708 = phi float [ %3662, %3661 ], [ 0.000000e+00, %3117 ]
  %3709 = phi float [ %3663, %3661 ], [ %3148, %3117 ]
  %3710 = phi float [ %3664, %3661 ], [ %3129, %3117 ]
  %3711 = fadd fast float %3702, 0xBFB99999A0000000
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = fmul fast float %3712, 0x3FF1C71C80000000
  %3714 = call float @dx.op.binary.f32(i32 36, float %3702, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3715 = fsub fast float 1.000000e+00, %3713
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = fmul fast float %3716, %3696
  %3718 = fmul fast float %3716, %3697
  %3719 = fmul fast float %3716, %3698
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = fmul fast float %3713, %3696
  %3724 = fmul fast float %3713, %3697
  %3725 = fmul fast float %3713, %3698
  %3726 = fadd fast float %3723, %3714
  %3727 = fadd fast float %3724, %3714
  %3728 = fadd fast float %3725, %3714
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.i32 %3733, 3
  %3735 = and i32 %3734, 8
  %3736 = icmp ne i32 %3735, 0
  %3737 = call float @dx.op.binary.f32(i32 35, float %3720, float %3696)  ; FMax(a,b)
  %3738 = call float @dx.op.binary.f32(i32 35, float %3721, float %3696)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 35, float %3722, float %3696)  ; FMax(a,b)
  %3740 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3721, float %3722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3741 = select i1 %193, float %3696, float %3720
  %3742 = select i1 %193, float %3740, float %3721
  %3743 = select i1 %193, float 1.000000e+00, float %3722
  %3744 = select i1 %3736, float %3737, float %3741
  %3745 = select i1 %3736, float %3738, float %3742
  %3746 = select i1 %3736, float %3739, float %3743
  %3747 = and i32 %169, 3
  %3748 = select i1 %163, i32 %3747, i32 0
  %3749 = icmp eq i32 %3748, 1
  br i1 %3749, label %3750, label %3826

; <label>:3750                                    ; preds = %3692
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = fadd fast float %3752, %152
  %3755 = fadd fast float %3753, %153
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3759 = fsub fast float %3754, %3757
  %3760 = fsub fast float %3755, %3758
  %3761 = fmul fast float %3759, %3759
  %3762 = fmul fast float %3760, %3760
  %3763 = fadd fast float %3761, %3762
  %3764 = call float @dx.op.unary.f32(i32 24, float %3763)  ; Sqrt(value)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3766 = fcmp fast olt float %3764, %3765
  br i1 %3766, label %3767, label %3820

; <label>:3767                                    ; preds = %3750
  %3768 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3769 = fadd fast float %3768, %154
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 0
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.CBufRet.f32 %3770, 1
  %3777 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3779 = extractvalue %dx.types.CBufRet.f32 %3770, 3
  %3780 = extractvalue %dx.types.CBufRet.f32 %3772, 3
  %3781 = extractvalue %dx.types.CBufRet.f32 %3774, 3
  %3782 = fadd fast float %3779, %3754
  %3783 = fadd fast float %3780, %3755
  %3784 = fadd fast float %3769, %3781
  %3785 = fmul fast float %3782, %3771
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3783, float %3773, float %3785)  ; FMad(a,b,c)
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3775, float %3786)  ; FMad(a,b,c)
  %3788 = fmul fast float %3782, %3776
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3783, float %3777, float %3788)  ; FMad(a,b,c)
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3778, float %3789)  ; FMad(a,b,c)
  %3791 = fsub fast float %3787, %3779
  %3792 = fsub fast float %3790, %3780
  %3793 = fsub fast float %3791, %3757
  %3794 = fadd fast float %3793, %3765
  %3795 = fsub fast float %3792, %3758
  %3796 = fadd fast float %3795, %3765
  %3797 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3798 = fmul fast float %3794, %3797
  %3799 = fmul fast float %3796, %3797
  %3800 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3802 = fsub fast float 1.000000e+00, %3800
  %3803 = fsub fast float 1.000000e+00, %3801
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %3802, float %3803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = fcmp fast ugt float %3805, 0.000000e+00
  br i1 %3806, label %3807, label %3820

; <label>:3807                                    ; preds = %3767
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 2
  %3810 = fmul fast float %3809, %3805
  %3811 = extractvalue %dx.types.CBufRet.f32 %3808, 3
  %3812 = fadd fast float %3811, %3810
  %3813 = extractvalue %dx.types.CBufRet.f32 %3774, 2
  %3814 = fadd fast float %3812, %3781
  %3815 = fmul fast float %3787, %3775
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3778, float %3815)  ; FMad(a,b,c)
  %3817 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3813, float %3816)  ; FMad(a,b,c)
  %3818 = fsub fast float %3817, %3781
  %3819 = fsub fast float %3818, %3768
  br label %3820

; <label>:3820                                    ; preds = %3807, %3767, %3750
  %3821 = phi i1 [ true, %3807 ], [ false, %3767 ], [ false, %3750 ]
  %3822 = phi float [ %3819, %3807 ], [ -1.310720e+05, %3767 ], [ -1.310720e+05, %3750 ]
  %3823 = fsub fast float %3822, %154
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = select i1 %3821, float %3824, float 1.000000e+00
  br label %3826

; <label>:3826                                    ; preds = %3820, %3692
  %3827 = phi float [ %3825, %3820 ], [ 0.000000e+00, %3692 ]
  %3828 = icmp eq i32 %3748, 3
  %3829 = select i1 %3828, float 1.000000e+00, float %3827
  %3830 = call float @dx.op.binary.f32(i32 35, float %3708, float %3829)  ; FMax(a,b)
  %3831 = fcmp fast olt float %3829, 1.000000e+00
  %3832 = fcmp uge float %36, 0.000000e+00
  %3833 = and i1 %3832, %3831
  br i1 %3833, label %3834, label %3844

; <label>:3834                                    ; preds = %3826
  %3835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %36, float %37, float %38, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = fadd fast float %3836, %3830
  %3840 = fcmp ule float %35, 0.000000e+00
  %3841 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = select i1 %3840, float %3841, float 1.000000e+00
  %3843 = fmul fast float %3842, %3838
  br label %3844

; <label>:3844                                    ; preds = %3834, %3826
  %3845 = phi float [ %3839, %3834 ], [ %3830, %3826 ]
  %3846 = phi float [ %3837, %3834 ], [ 0.000000e+00, %3826 ]
  %3847 = phi float [ %3843, %3834 ], [ 0.000000e+00, %3826 ]
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3851 = fcmp fast une float %3849, 0.000000e+00
  %3852 = fcmp fast une float %3850, 0.000000e+00
  %3853 = or i1 %3851, %3852
  br i1 %3853, label %3854, label %4413

; <label>:3854                                    ; preds = %3844
  br i1 %3851, label %3855, label %4128

; <label>:3855                                    ; preds = %3854
  %3856 = call float @dx.op.unary.f32(i32 23, float %3705)  ; Log(value)
  %3857 = fmul fast float %3856, 4.000000e+00
  %3858 = call float @dx.op.unary.f32(i32 21, float %3857)  ; Exp(value)
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 0
  %3861 = fmul fast float %3860, %23
  %3862 = fmul fast float %3860, %24
  %3863 = fmul fast float %3860, %25
  %3864 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %3865 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %3866 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %3867 = call float @dx.op.unary.f32(i32 23, float %3864)  ; Log(value)
  %3868 = call float @dx.op.unary.f32(i32 23, float %3865)  ; Log(value)
  %3869 = call float @dx.op.unary.f32(i32 23, float %3866)  ; Log(value)
  %3870 = fmul fast float %3867, 4.000000e+00
  %3871 = fmul fast float %3868, 4.000000e+00
  %3872 = fmul fast float %3869, 4.000000e+00
  %3873 = call float @dx.op.unary.f32(i32 21, float %3870)  ; Exp(value)
  %3874 = call float @dx.op.unary.f32(i32 21, float %3871)  ; Exp(value)
  %3875 = call float @dx.op.unary.f32(i32 21, float %3872)  ; Exp(value)
  %3876 = fadd fast float %3874, %3873
  %3877 = fadd fast float %3876, %3875
  %3878 = fdiv fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3878, %3873
  %3880 = fcmp fast ogt float %32, 0.000000e+00
  %3881 = fcmp fast ogt float %33, 0.000000e+00
  %3882 = fcmp fast ogt float %34, 0.000000e+00
  %3883 = fcmp fast olt float %32, 0.000000e+00
  %3884 = fcmp fast olt float %33, 0.000000e+00
  %3885 = fcmp fast olt float %34, 0.000000e+00
  %3886 = zext i1 %3880 to i32
  %3887 = zext i1 %3881 to i32
  %3888 = zext i1 %3882 to i32
  %3889 = zext i1 %3883 to i32
  %3890 = zext i1 %3884 to i32
  %3891 = zext i1 %3885 to i32
  %3892 = sub nsw i32 %3886, %3889
  %3893 = sub nsw i32 %3887, %3890
  %3894 = sub nsw i32 %3888, %3891
  %3895 = call float @dx.op.unary.f32(i32 83, float %3861)  ; DerivCoarseX(value)
  %3896 = call float @dx.op.unary.f32(i32 83, float %3862)  ; DerivCoarseX(value)
  %3897 = call float @dx.op.unary.f32(i32 83, float %3863)  ; DerivCoarseX(value)
  %3898 = call float @dx.op.unary.f32(i32 84, float %3861)  ; DerivCoarseY(value)
  %3899 = call float @dx.op.unary.f32(i32 84, float %3862)  ; DerivCoarseY(value)
  %3900 = call float @dx.op.unary.f32(i32 84, float %3863)  ; DerivCoarseY(value)
  %3901 = fcmp fast ole float %204, %3879
  %3902 = fmul fast float %3878, %3876
  %3903 = fcmp fast ole float %204, %3902
  %3904 = select i1 %3903, float %3863, float %3861
  %3905 = select i1 %3903, float %3861, float %3862
  %3906 = select i1 %3901, float %3862, float %3904
  %3907 = select i1 %3901, float %3863, float %3905
  %3908 = select i1 %3903, float %3897, float %3895
  %3909 = select i1 %3903, float %3895, float %3896
  %3910 = select i1 %3901, float %3896, float %3908
  %3911 = select i1 %3901, float %3897, float %3909
  %3912 = select i1 %3903, float %3900, float %3898
  %3913 = select i1 %3903, float %3898, float %3899
  %3914 = select i1 %3901, float %3899, float %3912
  %3915 = select i1 %3901, float %3900, float %3913
  %3916 = call float @dx.op.unary.f32(i32 27, float %3906)  ; Round_ni(value)
  %3917 = call float @dx.op.unary.f32(i32 27, float %3907)  ; Round_ni(value)
  %3918 = fptosi float %3916 to i32
  %3919 = fptosi float %3917 to i32
  %3920 = xor i32 %3919, %3918
  %3921 = sitofp i32 %3920 to float
  %3922 = fptosi float %3921 to i32
  %3923 = sitofp i32 %3922 to float
  %3924 = fmul fast float %3923, 0x3FE3C6EF40000000
  %3925 = frem fast float %3916, 2.560000e+02
  %3926 = frem fast float %3917, 2.560000e+02
  %3927 = fptoui float %3925 to i32
  %3928 = fptoui float %3926 to i32
  %3929 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %3927, i32 %3928, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = fadd fast float %3930, %3924
  %3934 = fadd fast float %3931, %3924
  %3935 = fadd fast float %3932, %3924
  %3936 = call float @dx.op.unary.f32(i32 22, float %3933)  ; Frc(value)
  %3937 = call float @dx.op.unary.f32(i32 22, float %3934)  ; Frc(value)
  %3938 = call float @dx.op.unary.f32(i32 22, float %3935)  ; Frc(value)
  %3939 = fmul fast float %3938, 0x401921FB60000000
  %3940 = call float @dx.op.unary.f32(i32 13, float %3939)  ; Sin(value)
  %3941 = call float @dx.op.unary.f32(i32 12, float %3939)  ; Cos(value)
  %3942 = fsub fast float -0.000000e+00, %3941
  %3943 = fmul fast float %3941, %3906
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3907, float %3943)  ; FMad(a,b,c)
  %3945 = fmul fast float %3940, %3906
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3907, float %3945)  ; FMad(a,b,c)
  %3947 = fadd fast float %3944, %3936
  %3948 = fadd fast float %3946, %3937
  %3949 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3950 = bitcast float %3949 to i32
  %3951 = icmp eq i32 %3950, 0
  br i1 %3951, label %3990, label %3952

; <label>:3952                                    ; preds = %3855
  %3953 = add i32 %3950, 0
  %3954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3954, %dx.types.Handle %62, float %3947, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3910, float %3911, float undef, float %3914, float %3915, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3959 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3960 = fsub fast float 1.000000e+00, %3849
  %3961 = call float @dx.op.binary.f32(i32 35, float %3960, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3962 = bitcast float %3849 to i32
  %3963 = sitofp i32 %3962 to float
  %3964 = fadd fast float %3963, 0xC1CFBF8940000000
  %3965 = fmul fast float %3959, %3964
  %3966 = fadd fast float %3965, 0x41CFBF8940000000
  %3967 = fptosi float %3966 to i32
  %3968 = bitcast i32 %3967 to float
  %3969 = bitcast float %3961 to i32
  %3970 = sitofp i32 %3969 to float
  %3971 = fadd fast float %3970, 0xC1CFBF8940000000
  %3972 = fmul fast float %3971, %3959
  %3973 = fadd fast float %3972, 0x41CFBF8940000000
  %3974 = fptosi float %3973 to i32
  %3975 = bitcast i32 %3974 to float
  %3976 = fmul fast float %3968, %3958
  %3977 = fmul fast float %3975, %3958
  %3978 = fsub fast float %3961, %3976
  %3979 = fadd fast float %3977, %3961
  %3980 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3981 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3982 = fsub fast float %3956, %3980
  %3983 = fsub fast float %3981, %3980
  %3984 = bitcast float %3983 to i32
  %3985 = sub nsw i32 2129859010, %3984
  %3986 = bitcast i32 %3985 to float
  %3987 = fmul fast float %3986, %3982
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = fcmp fast olt float %3988, 0x3F70101020000000
  br i1 %3989, label %4128, label %3990

; <label>:3990                                    ; preds = %3952, %3855
  %3991 = phi float [ %3988, %3952 ], [ %3849, %3855 ]
  %3992 = fmul fast float %3991, %3858
  %3993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.i32 %3993, 1
  %3995 = extractvalue %dx.types.CBufRet.i32 %3993, 0
  %3996 = add i32 %3995, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3997, %dx.types.Handle %61, float %3947, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3910, float %3911, float undef, float %3914, float %3915, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = and i32 %3994, 255
  %4004 = uitofp i32 %4003 to float
  %4005 = lshr i32 %3994, 8
  %4006 = and i32 %4005, 255
  %4007 = uitofp i32 %4006 to float
  %4008 = fmul fast float %4002, %4004
  %4009 = fadd fast float %4008, %4007
  %4010 = fmul fast float %4009, 0x3F70101000000000
  %4011 = fadd fast float %4010, 0xBFB99999A0000000
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, 0x3FF1C71C80000000
  %4014 = call float @dx.op.binary.f32(i32 36, float %4010, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4015 = fsub fast float 1.000000e+00, %4013
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %4016, %3999
  %4018 = fmul fast float %4016, %4000
  %4019 = fmul fast float %4016, %4001
  %4020 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4021 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4022 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4023 = fmul fast float %4013, %3999
  %4024 = fmul fast float %4013, %4000
  %4025 = fmul fast float %4013, %4001
  %4026 = fadd fast float %4023, %4014
  %4027 = fadd fast float %4024, %4014
  %4028 = fadd fast float %4025, %4014
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.i32 %4032, 3
  %4034 = extractvalue %dx.types.CBufRet.i32 %4032, 2
  %4035 = add i32 %4034, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4036, %dx.types.Handle %61, float %3947, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3910, float %3911, float undef, float %3914, float %3915, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = and i32 %4033, 255
  %4043 = uitofp i32 %4042 to float
  %4044 = lshr i32 %4033, 8
  %4045 = and i32 %4044, 255
  %4046 = uitofp i32 %4045 to float
  %4047 = lshr i32 %4033, 16
  %4048 = and i32 %4047, 255
  %4049 = uitofp i32 %4048 to float
  %4050 = fmul fast float %4049, 0x3F70101000000000
  %4051 = fmul fast float %4038, %4043
  %4052 = fadd fast float %4051, %4046
  %4053 = fmul fast float %4052, 0x3F70101000000000
  %4054 = fadd fast float %4039, -5.000000e-01
  %4055 = fadd fast float %4041, -5.000000e-01
  %4056 = fmul fast float %4054, %4050
  %4057 = fmul fast float %4055, %4050
  %4058 = fadd fast float %4056, 5.000000e-01
  %4059 = fadd fast float %4057, 5.000000e-01
  %4060 = fmul fast float %4058, 2.000000e+00
  %4061 = fadd fast float %4060, -1.000000e+00
  %4062 = fmul fast float %4059, 2.000000e+00
  %4063 = fadd fast float %4062, -1.000000e+00
  %4064 = fadd fast float %4061, %4063
  %4065 = fmul fast float %4064, 5.000000e-01
  %4066 = fsub fast float %4061, %4063
  %4067 = fmul fast float %4066, 5.000000e-01
  %4068 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4069 = fsub fast float 1.000000e+00, %4068
  %4070 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4071 = fsub fast float %4069, %4070
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4067, float %4071, float %4065, float %4067, float %4071)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call float @dx.op.unary.f32(i32 25, float %4072)  ; Rsqrt(value)
  %4074 = fmul fast float %4065, %4073
  %4075 = fmul fast float %4067, %4073
  %4076 = select i1 %3903, i32 %3893, i32 %3894
  %4077 = select i1 %3901, i32 %3892, i32 %4076
  %4078 = sitofp i32 %4077 to float
  %4079 = fmul fast float %4071, %4078
  %4080 = fmul fast float %4079, %4073
  %4081 = select i1 %3903, float %4080, float %4075
  %4082 = select i1 %3903, float %4075, float %4080
  %4083 = select i1 %3901, float %4080, float %4074
  %4084 = select i1 %3901, float %4075, float %4081
  %4085 = select i1 %3901, float %4074, float %4082
  %4086 = fsub fast float %4020, %3744
  %4087 = fsub fast float %4021, %3745
  %4088 = fsub fast float %4022, %3746
  %4089 = fmul fast float %4086, %3992
  %4090 = fmul fast float %4087, %3992
  %4091 = fmul fast float %4088, %3992
  %4092 = fadd fast float %4089, %3744
  %4093 = fadd fast float %4090, %3745
  %4094 = fadd fast float %4091, %3746
  %4095 = fsub fast float %4029, %3729
  %4096 = fsub fast float %4030, %3730
  %4097 = fsub fast float %4031, %3731
  %4098 = fmul fast float %4095, %3992
  %4099 = fmul fast float %4096, %3992
  %4100 = fmul fast float %4097, %3992
  %4101 = fadd fast float %4098, %3729
  %4102 = fadd fast float %4099, %3730
  %4103 = fadd fast float %4100, %3731
  %4104 = fadd fast float %4083, %3693
  %4105 = fadd fast float %4084, %3694
  %4106 = fadd fast float %4085, %3695
  %4107 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float %4104, float %4105, float %4106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4108 = call float @dx.op.unary.f32(i32 25, float %4107)  ; Rsqrt(value)
  %4109 = fmul fast float %4104, %4108
  %4110 = fmul fast float %4105, %4108
  %4111 = fmul fast float %4106, %4108
  %4112 = fsub fast float %4109, %3693
  %4113 = fsub fast float %4110, %3694
  %4114 = fsub fast float %4111, %3695
  %4115 = fmul fast float %4112, %3992
  %4116 = fmul fast float %4113, %3992
  %4117 = fmul fast float %4114, %3992
  %4118 = fadd fast float %4115, %3693
  %4119 = fadd fast float %4116, %3694
  %4120 = fadd fast float %4117, %3695
  %4121 = call float @dx.op.binary.f32(i32 36, float %3705, float %4040)  ; FMin(a,b)
  %4122 = fsub fast float %4121, %3705
  %4123 = fmul fast float %4122, %3992
  %4124 = fadd fast float %4123, %3705
  %4125 = fsub fast float %4053, %3732
  %4126 = fmul fast float %4125, %3992
  %4127 = fadd fast float %4126, %3732
  br label %4128

; <label>:4128                                    ; preds = %3990, %3952, %3854
  %4129 = phi float [ %4101, %3990 ], [ %3729, %3952 ], [ %3729, %3854 ]
  %4130 = phi float [ %4102, %3990 ], [ %3730, %3952 ], [ %3730, %3854 ]
  %4131 = phi float [ %4103, %3990 ], [ %3731, %3952 ], [ %3731, %3854 ]
  %4132 = phi float [ %4118, %3990 ], [ %3693, %3952 ], [ %3693, %3854 ]
  %4133 = phi float [ %4119, %3990 ], [ %3694, %3952 ], [ %3694, %3854 ]
  %4134 = phi float [ %4120, %3990 ], [ %3695, %3952 ], [ %3695, %3854 ]
  %4135 = phi float [ %4092, %3990 ], [ %3744, %3952 ], [ %3744, %3854 ]
  %4136 = phi float [ %4093, %3990 ], [ %3745, %3952 ], [ %3745, %3854 ]
  %4137 = phi float [ %4094, %3990 ], [ %3746, %3952 ], [ %3746, %3854 ]
  %4138 = phi float [ %4127, %3990 ], [ %3732, %3952 ], [ %3732, %3854 ]
  %4139 = phi float [ %4124, %3990 ], [ %3705, %3952 ], [ %3705, %3854 ]
  br i1 %3852, label %4140, label %4413

; <label>:4140                                    ; preds = %4128
  %4141 = call float @dx.op.unary.f32(i32 23, float %4139)  ; Log(value)
  %4142 = fmul fast float %4141, 4.000000e+00
  %4143 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = fmul fast float %4145, %23
  %4147 = fmul fast float %4145, %24
  %4148 = fmul fast float %4145, %25
  %4149 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %4150 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %4151 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %4152 = call float @dx.op.unary.f32(i32 23, float %4149)  ; Log(value)
  %4153 = call float @dx.op.unary.f32(i32 23, float %4150)  ; Log(value)
  %4154 = call float @dx.op.unary.f32(i32 23, float %4151)  ; Log(value)
  %4155 = fmul fast float %4152, 4.000000e+00
  %4156 = fmul fast float %4153, 4.000000e+00
  %4157 = fmul fast float %4154, 4.000000e+00
  %4158 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4159 = call float @dx.op.unary.f32(i32 21, float %4156)  ; Exp(value)
  %4160 = call float @dx.op.unary.f32(i32 21, float %4157)  ; Exp(value)
  %4161 = fadd fast float %4159, %4158
  %4162 = fadd fast float %4161, %4160
  %4163 = fdiv fast float 1.000000e+00, %4162
  %4164 = fmul fast float %4163, %4158
  %4165 = fcmp fast ogt float %32, 0.000000e+00
  %4166 = fcmp fast ogt float %33, 0.000000e+00
  %4167 = fcmp fast ogt float %34, 0.000000e+00
  %4168 = fcmp fast olt float %32, 0.000000e+00
  %4169 = fcmp fast olt float %33, 0.000000e+00
  %4170 = fcmp fast olt float %34, 0.000000e+00
  %4171 = zext i1 %4165 to i32
  %4172 = zext i1 %4166 to i32
  %4173 = zext i1 %4167 to i32
  %4174 = zext i1 %4168 to i32
  %4175 = zext i1 %4169 to i32
  %4176 = zext i1 %4170 to i32
  %4177 = sub nsw i32 %4171, %4174
  %4178 = sub nsw i32 %4172, %4175
  %4179 = sub nsw i32 %4173, %4176
  %4180 = call float @dx.op.unary.f32(i32 83, float %4146)  ; DerivCoarseX(value)
  %4181 = call float @dx.op.unary.f32(i32 83, float %4147)  ; DerivCoarseX(value)
  %4182 = call float @dx.op.unary.f32(i32 83, float %4148)  ; DerivCoarseX(value)
  %4183 = call float @dx.op.unary.f32(i32 84, float %4146)  ; DerivCoarseY(value)
  %4184 = call float @dx.op.unary.f32(i32 84, float %4147)  ; DerivCoarseY(value)
  %4185 = call float @dx.op.unary.f32(i32 84, float %4148)  ; DerivCoarseY(value)
  %4186 = fcmp fast ole float %204, %4164
  %4187 = fmul fast float %4163, %4161
  %4188 = fcmp fast ole float %204, %4187
  %4189 = select i1 %4188, float %4148, float %4146
  %4190 = select i1 %4188, float %4146, float %4147
  %4191 = select i1 %4186, float %4147, float %4189
  %4192 = select i1 %4186, float %4148, float %4190
  %4193 = select i1 %4188, float %4182, float %4180
  %4194 = select i1 %4188, float %4180, float %4181
  %4195 = select i1 %4186, float %4181, float %4193
  %4196 = select i1 %4186, float %4182, float %4194
  %4197 = select i1 %4188, float %4185, float %4183
  %4198 = select i1 %4188, float %4183, float %4184
  %4199 = select i1 %4186, float %4184, float %4197
  %4200 = select i1 %4186, float %4185, float %4198
  %4201 = call float @dx.op.unary.f32(i32 27, float %4191)  ; Round_ni(value)
  %4202 = call float @dx.op.unary.f32(i32 27, float %4192)  ; Round_ni(value)
  %4203 = fptosi float %4201 to i32
  %4204 = fptosi float %4202 to i32
  %4205 = xor i32 %4204, %4203
  %4206 = sitofp i32 %4205 to float
  %4207 = fptosi float %4206 to i32
  %4208 = sitofp i32 %4207 to float
  %4209 = fmul fast float %4208, 0x3FE3C6EF40000000
  %4210 = frem fast float %4201, 2.560000e+02
  %4211 = frem fast float %4202, 2.560000e+02
  %4212 = fptoui float %4210 to i32
  %4213 = fptoui float %4211 to i32
  %4214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %4212, i32 %4213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = fadd fast float %4215, %4209
  %4219 = fadd fast float %4216, %4209
  %4220 = fadd fast float %4217, %4209
  %4221 = call float @dx.op.unary.f32(i32 22, float %4218)  ; Frc(value)
  %4222 = call float @dx.op.unary.f32(i32 22, float %4219)  ; Frc(value)
  %4223 = call float @dx.op.unary.f32(i32 22, float %4220)  ; Frc(value)
  %4224 = fmul fast float %4223, 0x401921FB60000000
  %4225 = call float @dx.op.unary.f32(i32 13, float %4224)  ; Sin(value)
  %4226 = call float @dx.op.unary.f32(i32 12, float %4224)  ; Cos(value)
  %4227 = fsub fast float -0.000000e+00, %4226
  %4228 = fmul fast float %4226, %4191
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4192, float %4228)  ; FMad(a,b,c)
  %4230 = fmul fast float %4225, %4191
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4192, float %4230)  ; FMad(a,b,c)
  %4232 = fadd fast float %4229, %4221
  %4233 = fadd fast float %4231, %4222
  %4234 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4235 = bitcast float %4234 to i32
  %4236 = icmp eq i32 %4235, 0
  br i1 %4236, label %4275, label %4237

; <label>:4237                                    ; preds = %4140
  %4238 = add i32 %4235, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4239, %dx.types.Handle %62, float %4232, float %4233, float undef, float undef, i32 0, i32 0, i32 undef, float %4195, float %4196, float undef, float %4199, float %4200, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4245 = fsub fast float 1.000000e+00, %3850
  %4246 = call float @dx.op.binary.f32(i32 35, float %4245, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4247 = bitcast float %3850 to i32
  %4248 = sitofp i32 %4247 to float
  %4249 = fadd fast float %4248, 0xC1CFBF8940000000
  %4250 = fmul fast float %4244, %4249
  %4251 = fadd fast float %4250, 0x41CFBF8940000000
  %4252 = fptosi float %4251 to i32
  %4253 = bitcast i32 %4252 to float
  %4254 = bitcast float %4246 to i32
  %4255 = sitofp i32 %4254 to float
  %4256 = fadd fast float %4255, 0xC1CFBF8940000000
  %4257 = fmul fast float %4256, %4244
  %4258 = fadd fast float %4257, 0x41CFBF8940000000
  %4259 = fptosi float %4258 to i32
  %4260 = bitcast i32 %4259 to float
  %4261 = fmul fast float %4253, %4243
  %4262 = fmul fast float %4260, %4243
  %4263 = fsub fast float %4246, %4261
  %4264 = fadd fast float %4262, %4246
  %4265 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4267 = fsub fast float %4241, %4265
  %4268 = fsub fast float %4266, %4265
  %4269 = bitcast float %4268 to i32
  %4270 = sub nsw i32 2129859010, %4269
  %4271 = bitcast i32 %4270 to float
  %4272 = fmul fast float %4271, %4267
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fcmp fast olt float %4273, 0x3F70101020000000
  br i1 %4274, label %4413, label %4275

; <label>:4275                                    ; preds = %4237, %4140
  %4276 = phi float [ %4273, %4237 ], [ %3850, %4140 ]
  %4277 = fmul fast float %4276, %4143
  %4278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.i32 %4278, 1
  %4280 = extractvalue %dx.types.CBufRet.i32 %4278, 0
  %4281 = add i32 %4280, 0
  %4282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4283 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4282, %dx.types.Handle %61, float %4232, float %4233, float undef, float undef, i32 0, i32 0, i32 undef, float %4195, float %4196, float undef, float %4199, float %4200, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = extractvalue %dx.types.ResRet.f32 %4283, 1
  %4286 = extractvalue %dx.types.ResRet.f32 %4283, 2
  %4287 = extractvalue %dx.types.ResRet.f32 %4283, 3
  %4288 = and i32 %4279, 255
  %4289 = uitofp i32 %4288 to float
  %4290 = lshr i32 %4279, 8
  %4291 = and i32 %4290, 255
  %4292 = uitofp i32 %4291 to float
  %4293 = fmul fast float %4287, %4289
  %4294 = fadd fast float %4293, %4292
  %4295 = fmul fast float %4294, 0x3F70101000000000
  %4296 = fadd fast float %4295, 0xBFB99999A0000000
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4297, 0x3FF1C71C80000000
  %4299 = call float @dx.op.binary.f32(i32 36, float %4295, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4300 = fsub fast float 1.000000e+00, %4298
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = fmul fast float %4301, %4284
  %4303 = fmul fast float %4301, %4285
  %4304 = fmul fast float %4301, %4286
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4307 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4308 = fmul fast float %4298, %4284
  %4309 = fmul fast float %4298, %4285
  %4310 = fmul fast float %4298, %4286
  %4311 = fadd fast float %4308, %4299
  %4312 = fadd fast float %4309, %4299
  %4313 = fadd fast float %4310, %4299
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.i32 %4317, 3
  %4319 = extractvalue %dx.types.CBufRet.i32 %4317, 2
  %4320 = add i32 %4319, 0
  %4321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4322 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4321, %dx.types.Handle %61, float %4232, float %4233, float undef, float undef, i32 0, i32 0, i32 undef, float %4195, float %4196, float undef, float %4199, float %4200, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4323 = extractvalue %dx.types.ResRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.ResRet.f32 %4322, 1
  %4325 = extractvalue %dx.types.ResRet.f32 %4322, 2
  %4326 = extractvalue %dx.types.ResRet.f32 %4322, 3
  %4327 = and i32 %4318, 255
  %4328 = uitofp i32 %4327 to float
  %4329 = lshr i32 %4318, 8
  %4330 = and i32 %4329, 255
  %4331 = uitofp i32 %4330 to float
  %4332 = lshr i32 %4318, 16
  %4333 = and i32 %4332, 255
  %4334 = uitofp i32 %4333 to float
  %4335 = fmul fast float %4334, 0x3F70101000000000
  %4336 = fmul fast float %4323, %4328
  %4337 = fadd fast float %4336, %4331
  %4338 = fmul fast float %4337, 0x3F70101000000000
  %4339 = fadd fast float %4324, -5.000000e-01
  %4340 = fadd fast float %4326, -5.000000e-01
  %4341 = fmul fast float %4339, %4335
  %4342 = fmul fast float %4340, %4335
  %4343 = fadd fast float %4341, 5.000000e-01
  %4344 = fadd fast float %4342, 5.000000e-01
  %4345 = fmul fast float %4343, 2.000000e+00
  %4346 = fadd fast float %4345, -1.000000e+00
  %4347 = fmul fast float %4344, 2.000000e+00
  %4348 = fadd fast float %4347, -1.000000e+00
  %4349 = fadd fast float %4346, %4348
  %4350 = fmul fast float %4349, 5.000000e-01
  %4351 = fsub fast float %4346, %4348
  %4352 = fmul fast float %4351, 5.000000e-01
  %4353 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4354 = fsub fast float 1.000000e+00, %4353
  %4355 = call float @dx.op.unary.f32(i32 6, float %4352)  ; FAbs(value)
  %4356 = fsub fast float %4354, %4355
  %4357 = call float @dx.op.dot3.f32(i32 55, float %4350, float %4352, float %4356, float %4350, float %4352, float %4356)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = call float @dx.op.unary.f32(i32 25, float %4357)  ; Rsqrt(value)
  %4359 = fmul fast float %4350, %4358
  %4360 = fmul fast float %4352, %4358
  %4361 = select i1 %4188, i32 %4178, i32 %4179
  %4362 = select i1 %4186, i32 %4177, i32 %4361
  %4363 = sitofp i32 %4362 to float
  %4364 = fmul fast float %4356, %4363
  %4365 = fmul fast float %4364, %4358
  %4366 = select i1 %4188, float %4365, float %4360
  %4367 = select i1 %4188, float %4360, float %4365
  %4368 = select i1 %4186, float %4365, float %4359
  %4369 = select i1 %4186, float %4360, float %4366
  %4370 = select i1 %4186, float %4359, float %4367
  %4371 = fsub fast float %4305, %4135
  %4372 = fsub fast float %4306, %4136
  %4373 = fsub fast float %4307, %4137
  %4374 = fmul fast float %4371, %4277
  %4375 = fmul fast float %4372, %4277
  %4376 = fmul fast float %4373, %4277
  %4377 = fadd fast float %4374, %4135
  %4378 = fadd fast float %4375, %4136
  %4379 = fadd fast float %4376, %4137
  %4380 = fsub fast float %4314, %4129
  %4381 = fsub fast float %4315, %4130
  %4382 = fsub fast float %4316, %4131
  %4383 = fmul fast float %4380, %4277
  %4384 = fmul fast float %4381, %4277
  %4385 = fmul fast float %4382, %4277
  %4386 = fadd fast float %4383, %4129
  %4387 = fadd fast float %4384, %4130
  %4388 = fadd fast float %4385, %4131
  %4389 = fadd fast float %4368, %4132
  %4390 = fadd fast float %4369, %4133
  %4391 = fadd fast float %4370, %4134
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4389, %4393
  %4395 = fmul fast float %4390, %4393
  %4396 = fmul fast float %4391, %4393
  %4397 = fsub fast float %4394, %4132
  %4398 = fsub fast float %4395, %4133
  %4399 = fsub fast float %4396, %4134
  %4400 = fmul fast float %4397, %4277
  %4401 = fmul fast float %4398, %4277
  %4402 = fmul fast float %4399, %4277
  %4403 = fadd fast float %4400, %4132
  %4404 = fadd fast float %4401, %4133
  %4405 = fadd fast float %4402, %4134
  %4406 = call float @dx.op.binary.f32(i32 36, float %4139, float %4325)  ; FMin(a,b)
  %4407 = fsub fast float %4406, %4139
  %4408 = fmul fast float %4407, %4277
  %4409 = fadd fast float %4408, %4139
  %4410 = fsub fast float %4338, %4138
  %4411 = fmul fast float %4410, %4277
  %4412 = fadd fast float %4411, %4138
  br label %4413

; <label>:4413                                    ; preds = %4275, %4237, %4128, %3844
  %4414 = phi float [ %4386, %4275 ], [ %4129, %4237 ], [ %4129, %4128 ], [ %3729, %3844 ]
  %4415 = phi float [ %4387, %4275 ], [ %4130, %4237 ], [ %4130, %4128 ], [ %3730, %3844 ]
  %4416 = phi float [ %4388, %4275 ], [ %4131, %4237 ], [ %4131, %4128 ], [ %3731, %3844 ]
  %4417 = phi float [ %4403, %4275 ], [ %4132, %4237 ], [ %4132, %4128 ], [ %3693, %3844 ]
  %4418 = phi float [ %4404, %4275 ], [ %4133, %4237 ], [ %4133, %4128 ], [ %3694, %3844 ]
  %4419 = phi float [ %4405, %4275 ], [ %4134, %4237 ], [ %4134, %4128 ], [ %3695, %3844 ]
  %4420 = phi float [ %4377, %4275 ], [ %4135, %4237 ], [ %4135, %4128 ], [ %3744, %3844 ]
  %4421 = phi float [ %4378, %4275 ], [ %4136, %4237 ], [ %4136, %4128 ], [ %3745, %3844 ]
  %4422 = phi float [ %4379, %4275 ], [ %4137, %4237 ], [ %4137, %4128 ], [ %3746, %3844 ]
  %4423 = phi float [ %4412, %4275 ], [ %4138, %4237 ], [ %4138, %4128 ], [ %3732, %3844 ]
  %4424 = phi float [ %4409, %4275 ], [ %4139, %4237 ], [ %4139, %4128 ], [ %3705, %3844 ]
  %4425 = fcmp fast une float %3848, 0.000000e+00
  %4426 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 25, float %4426)  ; Rsqrt(value)
  br i1 %4425, label %4435, label %4428

; <label>:4428                                    ; preds = %4413
  %4429 = fmul fast float %4427, %152
  %4430 = fmul fast float %4427, %153
  %4431 = fmul fast float %4427, %154
  %4432 = fsub fast float -0.000000e+00, %4429
  %4433 = fsub fast float -0.000000e+00, %4430
  %4434 = fsub fast float -0.000000e+00, %4431
  br label %4602

; <label>:4435                                    ; preds = %4413
  %4436 = fmul fast float %152, %4427
  %4437 = fsub fast float -0.000000e+00, %4436
  %4438 = fmul fast float %153, %4427
  %4439 = fsub fast float -0.000000e+00, %4438
  %4440 = fmul fast float %154, %4427
  %4441 = fsub fast float -0.000000e+00, %4440
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4437, float %4439, float %4441, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = fmul fast float %3848, 2.500000e+00
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fmul fast float %3848, 0x4013FFFFE0000000
  %4446 = fadd fast float %4445, 0xBFFFFFFFE0000000
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fmul fast float %3848, 0x4004000020000000
  %4449 = fadd fast float %4448, 0xBFF8000040000000
  %4450 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4451 = fmul fast float %3711, 1.000000e+01
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4452, 2.000000e+00
  %4454 = fsub fast float 3.000000e+00, %4453
  %4455 = fmul fast float %4452, %4452
  %4456 = fmul fast float %4455, %4454
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = fsub fast float 0x3FE3333340000000, %4423
  %4459 = fmul fast float %4458, 0x400AAAAAA0000000
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4457, %4460
  %4462 = fmul fast float %4420, 0x3FEA2B8620000000
  %4463 = fmul fast float %4421, 0x3FEA2B8620000000
  %4464 = fmul fast float %4422, 0x3FEA2B8620000000
  %4465 = fadd fast float %4462, 0x3FC81DFBA0000000
  %4466 = fmul fast float %4465, %4420
  %4467 = fadd fast float %4466, 0x3F910E6020000000
  %4468 = fadd fast float %4463, 0x3FC81DFBA0000000
  %4469 = fmul fast float %4468, %4421
  %4470 = fadd fast float %4469, 0x3F910E6020000000
  %4471 = fadd fast float %4464, 0x3FC81DFBA0000000
  %4472 = fmul fast float %4471, %4422
  %4473 = fadd fast float %4472, 0x3F910E6020000000
  %4474 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4475 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4477 = fsub fast float %4474, %4420
  %4478 = fsub fast float %4475, %4421
  %4479 = fsub fast float %4476, %4422
  %4480 = fmul fast float %4477, %4444
  %4481 = fmul fast float %4480, %4461
  %4482 = fmul fast float %4478, %4444
  %4483 = fmul fast float %4482, %4461
  %4484 = fmul fast float %4479, %4444
  %4485 = fmul fast float %4484, %4461
  %4486 = fadd fast float %4481, %4420
  %4487 = fadd fast float %4483, %4421
  %4488 = fadd fast float %4485, %4422
  %4489 = fmul fast float %4424, %4424
  %4490 = fmul fast float %4489, %4489
  %4491 = fadd fast float %4447, 1.000000e+00
  %4492 = fsub fast float %4491, %4461
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fsub fast float 1.000000e+00, %4490
  %4497 = call float @dx.op.binary.f32(i32 36, float %4493, float %4496)  ; FMin(a,b)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4499 = call float @dx.op.binary.f32(i32 35, float %4497, float %4498)  ; FMax(a,b)
  %4500 = fadd fast float %4495, 0xBFE4CCCCC0000000
  %4501 = fmul fast float %4500, 0x4006DB6DA0000000
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = fmul fast float %4502, 2.000000e+00
  %4504 = fsub fast float 3.000000e+00, %4503
  %4505 = bitcast float %4414 to i32
  %4506 = ashr i32 %4505, 1
  %4507 = add nsw i32 %4506, 532487669
  %4508 = bitcast i32 %4507 to float
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = bitcast float %4509 to i32
  %4511 = sub nsw i32 2129859010, %4510
  %4512 = bitcast i32 %4511 to float
  %4513 = fmul fast float %4512, 2.000000e+00
  %4514 = bitcast float %4415 to i32
  %4515 = ashr i32 %4514, 1
  %4516 = add nsw i32 %4515, 532487669
  %4517 = bitcast i32 %4516 to float
  %4518 = fsub fast float 1.000000e+00, %4517
  %4519 = bitcast float %4518 to i32
  %4520 = sub nsw i32 2129859010, %4519
  %4521 = bitcast i32 %4520 to float
  %4522 = fmul fast float %4521, 2.000000e+00
  %4523 = bitcast float %4416 to i32
  %4524 = ashr i32 %4523, 1
  %4525 = add nsw i32 %4524, 532487669
  %4526 = bitcast i32 %4525 to float
  %4527 = fsub fast float 1.000000e+00, %4526
  %4528 = bitcast float %4527 to i32
  %4529 = sub nsw i32 2129859010, %4528
  %4530 = bitcast i32 %4529 to float
  %4531 = fmul fast float %4530, 2.000000e+00
  %4532 = fsub fast float 0x4002A9FBE0000000, %4513
  %4533 = fadd fast float %4513, 0x3FD54FDF00000000
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %4532
  %4538 = fmul fast float %4537, %4537
  %4539 = fsub fast float 0x4002A9FBE0000000, %4522
  %4540 = fadd fast float %4522, 0x3FD54FDF00000000
  %4541 = bitcast float %4540 to i32
  %4542 = sub nsw i32 2129859010, %4541
  %4543 = bitcast i32 %4542 to float
  %4544 = fmul fast float %4543, %4539
  %4545 = fmul fast float %4544, %4544
  %4546 = fsub fast float 0x4002A9FBE0000000, %4531
  %4547 = fadd fast float %4531, 0x3FD54FDF00000000
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, %4546
  %4552 = fmul fast float %4551, %4551
  %4553 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4538)  ; FMax(a,b)
  %4554 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4545)  ; FMax(a,b)
  %4555 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4552)  ; FMax(a,b)
  %4556 = fsub fast float 1.000000e+00, %4442
  %4557 = fadd fast float %4556, %4457
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = fsub fast float 1.000000e+00, %3829
  %4560 = fmul fast float %4499, %4559
  %4561 = fmul fast float %4502, %4502
  %4562 = fmul fast float %4561, %4560
  %4563 = fmul fast float %4562, %4504
  %4564 = fmul fast float %4559, 0xBFE99999A0000000
  %4565 = fmul fast float %4564, %4444
  %4566 = fmul fast float %4565, %4461
  %4567 = fadd fast float %4566, 1.000000e+00
  %4568 = fadd fast float %4423, -1.000000e+00
  %4569 = fmul fast float %4567, %4568
  %4570 = fadd fast float %4569, 1.000000e+00
  %4571 = fsub fast float %4553, %4414
  %4572 = fsub fast float %4554, %4415
  %4573 = fsub fast float %4555, %4416
  %4574 = fmul fast float %4563, %4571
  %4575 = fmul fast float %4563, %4572
  %4576 = fmul fast float %4563, %4573
  %4577 = fadd fast float %4574, %4414
  %4578 = fadd fast float %4575, %4415
  %4579 = fadd fast float %4576, %4416
  %4580 = fsub fast float %72, %4417
  %4581 = fsub fast float %73, %4418
  %4582 = fsub fast float %74, %4419
  %4583 = fmul fast float %4563, %4580
  %4584 = fmul fast float %4563, %4581
  %4585 = fmul fast float %4563, %4582
  %4586 = fadd fast float %4583, %4417
  %4587 = fadd fast float %4584, %4418
  %4588 = fadd fast float %4585, %4419
  %4589 = fmul fast float %4563, %4558
  %4590 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4591 = fsub fast float 1.000000e+00, %4590
  %4592 = fmul fast float %4589, %4591
  %4593 = fadd fast float %4592, %4590
  %4594 = fsub fast float 1.000000e+00, %4424
  %4595 = fmul fast float %4563, %4594
  %4596 = fadd fast float %4595, %4424
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = call float @dx.op.unary.f32(i32 25, float %4597)  ; Rsqrt(value)
  %4599 = fmul fast float %4586, %4598
  %4600 = fmul fast float %4587, %4598
  %4601 = fmul fast float %4588, %4598
  br label %4602

; <label>:4602                                    ; preds = %4435, %4428
  %4603 = phi float [ %4434, %4428 ], [ %4441, %4435 ]
  %4604 = phi float [ %4433, %4428 ], [ %4439, %4435 ]
  %4605 = phi float [ %4432, %4428 ], [ %4437, %4435 ]
  %4606 = phi float [ %4431, %4428 ], [ %4440, %4435 ]
  %4607 = phi float [ %4430, %4428 ], [ %4438, %4435 ]
  %4608 = phi float [ %4429, %4428 ], [ %4436, %4435 ]
  %4609 = phi float [ %4414, %4428 ], [ %4577, %4435 ]
  %4610 = phi float [ %4415, %4428 ], [ %4578, %4435 ]
  %4611 = phi float [ %4416, %4428 ], [ %4579, %4435 ]
  %4612 = phi float [ %4417, %4428 ], [ %4599, %4435 ]
  %4613 = phi float [ %4418, %4428 ], [ %4600, %4435 ]
  %4614 = phi float [ %4419, %4428 ], [ %4601, %4435 ]
  %4615 = phi float [ %4420, %4428 ], [ %4486, %4435 ]
  %4616 = phi float [ %4421, %4428 ], [ %4487, %4435 ]
  %4617 = phi float [ %4422, %4428 ], [ %4488, %4435 ]
  %4618 = phi float [ %4423, %4428 ], [ %4593, %4435 ]
  %4619 = phi float [ %4424, %4428 ], [ %4596, %4435 ]
  %4620 = select i1 %193, float 0.000000e+00, float %4611
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %4605, float %4604, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4607, float %4606, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fmul fast float %4623, 2.000000e+00
  %4625 = fmul fast float %4624, %4612
  %4626 = fmul fast float %4624, %4613
  %4627 = fmul fast float %4624, %4614
  %4628 = fsub fast float %4608, %4625
  %4629 = fsub fast float %4607, %4626
  %4630 = fsub fast float %4606, %4627
  %4631 = call float @dx.op.binary.f32(i32 36, float %4619, float 1.000000e+00)  ; FMin(a,b)
  %4632 = fsub fast float 1.000000e+00, %4619
  %4633 = bitcast float %4632 to i32
  %4634 = sub nsw i32 2129859010, %4633
  %4635 = bitcast i32 %4634 to float
  %4636 = fsub fast float 1.000000e+00, %42
  %4637 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4639 = fdiv fast float %4636, %4638
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = fmul fast float %4641, 5.000000e-01
  %4643 = fadd fast float %4642, 5.000000e-01
  %4644 = fmul fast float %4643, %42
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, %4639
  %4648 = fadd fast float %4644, %4647
  %4649 = fsub fast float 5.000000e-01, %4642
  %4650 = fmul fast float %4649, %4615
  %4651 = fmul fast float %4649, %4616
  %4652 = fmul fast float %4649, %4617
  %4653 = fadd fast float %4648, %4650
  %4654 = fadd fast float %4648, %4651
  %4655 = fadd fast float %4648, %4652
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = fmul fast float %4657, 5.000000e-01
  %4659 = fadd fast float %4658, 5.000000e-01
  %4660 = fmul fast float %4659, %42
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, %4639
  %4664 = fadd fast float %4660, %4663
  %4665 = fsub fast float 5.000000e-01, %4658
  %4666 = fmul fast float %4665, %4615
  %4667 = fmul fast float %4665, %4616
  %4668 = fmul fast float %4665, %4617
  %4669 = fadd fast float %4664, %4666
  %4670 = fadd fast float %4664, %4667
  %4671 = fadd fast float %4664, %4668
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 0
  %4674 = call float @dx.op.binary.f32(i32 36, float %4615, float %4673)  ; FMin(a,b)
  %4675 = fsub fast float 1.000000e+00, %4631
  %4676 = fmul fast float %4674, %4675
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = call float @dx.op.binary.f32(i32 36, float %4616, float %4673)  ; FMin(a,b)
  %4682 = fmul fast float %4681, %4675
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = call float @dx.op.binary.f32(i32 36, float %4617, float %4673)  ; FMin(a,b)
  %4688 = fmul fast float %4687, %4675
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4631, %43
  %4694 = fmul fast float %4693, %4653
  %4695 = fmul fast float %4694, %4680
  %4696 = fmul fast float %4631, %44
  %4697 = fmul fast float %4696, %4654
  %4698 = fmul fast float %4697, %4686
  %4699 = fmul fast float %4631, %45
  %4700 = fmul fast float %4699, %4655
  %4701 = fmul fast float %4700, %4692
  %4702 = call float @dx.op.binary.f32(i32 36, float %4609, float %4673)  ; FMin(a,b)
  %4703 = fmul fast float %4702, %4675
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = call float @dx.op.binary.f32(i32 36, float %4610, float %4673)  ; FMin(a,b)
  %4709 = fmul fast float %4708, %4675
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = call float @dx.op.binary.f32(i32 36, float %4620, float %4673)  ; FMin(a,b)
  %4715 = fmul fast float %4714, %4675
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4693, %4669
  %4721 = fmul fast float %4720, %4707
  %4722 = fmul fast float %4696, %4670
  %4723 = fmul fast float %4722, %4713
  %4724 = fmul fast float %4699, %4671
  %4725 = fmul fast float %4724, %4719
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4698, float %4701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = select i1 %193, float 0.000000e+00, float %4695
  %4728 = select i1 %193, float %4726, float %4698
  %4729 = select i1 %193, float 0.000000e+00, float %4701
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4723, float %4725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = select i1 %193, float 0.000000e+00, float %4721
  %4732 = select i1 %193, float %4730, float %4723
  %4733 = select i1 %193, float 0.000000e+00, float %4725
  %4734 = fmul fast float %4622, 9.843750e-01
  %4735 = fmul fast float %4618, 9.843750e-01
  %4736 = fadd fast float %4734, 7.812500e-03
  %4737 = fadd fast float %4735, 7.812500e-03
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %4736, float %4737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 3
  %4741 = fmul fast float %4739, %4609
  %4742 = fmul fast float %4739, %4610
  %4743 = fmul fast float %4739, %4620
  %4744 = fadd fast float %4741, %4740
  %4745 = fadd fast float %4742, %4740
  %4746 = fadd fast float %4743, %4740
  %4747 = fcmp fast ogt float %3706, 0.000000e+00
  br i1 %4747, label %4748, label %4774

; <label>:4748                                    ; preds = %4602
  %4749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3706, float %4622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4750 = extractvalue %dx.types.ResRet.f32 %4749, 0
  %4751 = extractvalue %dx.types.ResRet.f32 %4749, 1
  %4752 = extractvalue %dx.types.ResRet.f32 %4749, 2
  %4753 = fadd fast float %4750, -5.000000e-01
  %4754 = fadd fast float %4751, -5.000000e-01
  %4755 = fadd fast float %4752, -5.000000e-01
  %4756 = fsub fast float 1.000000e+00, %4609
  %4757 = fsub fast float 1.000000e+00, %4610
  %4758 = fsub fast float 1.000000e+00, %4620
  %4759 = fmul fast float %4609, 4.000000e+00
  %4760 = fmul fast float %4759, %4756
  %4761 = fmul fast float %4760, %4753
  %4762 = fmul fast float %4610, 4.000000e+00
  %4763 = fmul fast float %4762, %4757
  %4764 = fmul fast float %4763, %4754
  %4765 = fmul fast float %4620, 4.000000e+00
  %4766 = fmul fast float %4765, %4758
  %4767 = fmul fast float %4766, %4755
  %4768 = fadd fast float %4761, %4744
  %4769 = fadd fast float %4764, %4745
  %4770 = fadd fast float %4767, %4746
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  br label %4774

; <label>:4774                                    ; preds = %4748, %4602
  %4775 = phi float [ %4771, %4748 ], [ %4744, %4602 ]
  %4776 = phi float [ %4772, %4748 ], [ %4745, %4602 ]
  %4777 = phi float [ %4773, %4748 ], [ %4746, %4602 ]
  %4778 = call float @dx.op.binary.f32(i32 35, float %4776, float %4777)  ; FMax(a,b)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4775, float %4778)  ; FMax(a,b)
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = fmul fast float %4780, %4727
  %4782 = fmul fast float %4780, %4728
  %4783 = fmul fast float %4780, %4729
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = fcmp fast ogt float %4784, 0x3E7FF19E20000000
  %4786 = fdiv fast float 1.000000e+00, %4784
  %4787 = select i1 %4785, float %4786, float 0.000000e+00
  %4788 = fmul fast float %4787, %4615
  %4789 = fmul fast float %4787, %4616
  %4790 = fmul fast float %4787, %4617
  %4791 = fadd fast float %4788, -1.000000e+00
  %4792 = fadd fast float %4789, -1.000000e+00
  %4793 = fadd fast float %4790, -1.000000e+00
  %4794 = fmul fast float %4791, 5.000000e-01
  %4795 = fmul fast float %4792, 5.000000e-01
  %4796 = fmul fast float %4793, 5.000000e-01
  %4797 = fadd fast float %4794, 1.000000e+00
  %4798 = fadd fast float %4795, 1.000000e+00
  %4799 = fadd fast float %4796, 1.000000e+00
  %4800 = fmul fast float %4775, %4731
  %4801 = fmul fast float %4776, %4732
  %4802 = fmul fast float %4777, %4733
  %4803 = fsub fast float 1.000000e+00, %4622
  %4804 = bitcast float %4803 to i32
  %4805 = sitofp i32 %4804 to float
  %4806 = fmul fast float %4805, 5.000000e+00
  %4807 = fadd fast float %4806, 0xC1EFBF8940000000
  %4808 = fptosi float %4807 to i32
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4809, %3707
  %4811 = fmul fast float %4727, %4810
  %4812 = fmul fast float %4811, %4780
  %4813 = fmul fast float %4812, %4797
  %4814 = fmul fast float %4728, %4810
  %4815 = fmul fast float %4814, %4780
  %4816 = fmul fast float %4815, %4798
  %4817 = fmul fast float %4729, %4810
  %4818 = fmul fast float %4817, %4780
  %4819 = fmul fast float %4818, %4799
  %4820 = fmul fast float %4781, %3703
  %4821 = fmul fast float %4782, %3703
  %4822 = fmul fast float %4783, %3703
  %4823 = fadd fast float %4800, %3699
  %4824 = fadd fast float %4823, %4813
  %4825 = fmul fast float %4824, %3703
  %4826 = fadd fast float %4801, %3700
  %4827 = fadd fast float %4826, %4816
  %4828 = fmul fast float %4827, %3703
  %4829 = fadd fast float %4802, %3701
  %4830 = fadd fast float %4829, %4819
  %4831 = fmul fast float %4830, %3703
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4834 = fcmp fast oeq float %4833, 0.000000e+00
  br i1 %4834, label %5062, label %4835

; <label>:4835                                    ; preds = %4774
  %4836 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 0
  %4841 = extractvalue %dx.types.CBufRet.f32 %4839, 1
  %4842 = extractvalue %dx.types.CBufRet.f32 %4839, 2
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4846 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = select i1 %193, float %4844, float %4840
  %4848 = select i1 %193, float %4846, float %4841
  %4849 = select i1 %193, float %4845, float %4842
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4852 = fcmp fast une float %4851, 0.000000e+00
  br i1 %4852, label %4853, label %4870

; <label>:4853                                    ; preds = %4835
  %4854 = fptoui float %65 to i32
  %4855 = fptoui float %66 to i32
  %4856 = lshr i32 %4854, 4
  %4857 = lshr i32 %4855, 4
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 0
  %4860 = fptoui float %4859 to i32
  %4861 = add i32 %4860, 15
  %4862 = lshr i32 %4861, 4
  %4863 = mul i32 %4862, %4857
  %4864 = add i32 %4863, %4856
  %4865 = shl i32 %4864, 3
  %4866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.i32 %4866, 0
  %4868 = and i32 %4867, -268435456
  %4869 = icmp eq i32 %4868, -1342177280
  br i1 %4869, label %4880, label %4870

; <label>:4870                                    ; preds = %4853, %4835
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4874 = fmul fast float %4872, %65
  %4875 = fmul fast float %4873, %66
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.ResRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.ResRet.f32 %4876, 2
  br label %4880

; <label>:4880                                    ; preds = %4870, %4853
  %4881 = phi float [ %4877, %4870 ], [ 0.000000e+00, %4853 ]
  %4882 = phi float [ %4878, %4870 ], [ 0.000000e+00, %4853 ]
  %4883 = phi float [ %4879, %4870 ], [ 0.000000e+00, %4853 ]
  %4884 = call float @dx.op.binary.f32(i32 36, float %4882, float %4883)  ; FMin(a,b)
  %4885 = call float @dx.op.binary.f32(i32 36, float %4881, float %4884)  ; FMin(a,b)
  %4886 = fcmp fast ogt float %4885, 0.000000e+00
  br i1 %4886, label %4887, label %5062, !dx.controlflow.hints !61

; <label>:4887                                    ; preds = %4880
  %4888 = fmul fast float %4881, %4847
  %4889 = fmul fast float %4882, %4848
  %4890 = fmul fast float %4883, %4849
  %4891 = fsub fast float %4836, %4608
  %4892 = fsub fast float %4837, %4607
  %4893 = fsub fast float %4838, %4606
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4895, %4891
  %4897 = fmul fast float %4895, %4892
  %4898 = fmul fast float %4895, %4893
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4604, float %4603, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4902 = fmul fast float %4901, %4901
  %4903 = fmul fast float %4902, %4635
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4904, %4901
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4906, %4906
  %4908 = call float @dx.op.unary.f32(i32 6, float %4899)  ; FAbs(value)
  %4909 = fsub fast float 1.000000e+00, %4618
  %4910 = call float @dx.op.binary.f32(i32 35, float %4909, float 0x3F847AE140000000)  ; FMax(a,b)
  %4911 = fmul fast float %4910, %4910
  %4912 = fmul fast float %4911, %4911
  %4913 = fsub fast float 1.000000e+00, %4912
  %4914 = fmul fast float %4622, %4622
  %4915 = fmul fast float %4914, %4913
  %4916 = fadd fast float %4915, %4912
  %4917 = bitcast float %4916 to i32
  %4918 = ashr i32 %4917, 1
  %4919 = add nsw i32 %4918, 532487669
  %4920 = bitcast i32 %4919 to float
  %4921 = fadd fast float %4920, %4622
  %4922 = fmul fast float %4912, %4907
  %4923 = fsub fast float 1.000000e+00, %4907
  %4924 = fadd fast float %4923, %4922
  %4925 = fmul fast float %4908, %4908
  %4926 = fmul fast float %4925, %4913
  %4927 = fadd fast float %4926, %4912
  %4928 = bitcast float %4927 to i32
  %4929 = ashr i32 %4928, 1
  %4930 = add nsw i32 %4929, 532487669
  %4931 = bitcast i32 %4930 to float
  %4932 = fadd fast float %4931, %4908
  %4933 = fmul fast float %4924, %4924
  %4934 = fmul fast float %4933, %4921
  %4935 = fmul fast float %4934, %4932
  %4936 = fdiv fast float 0x3FF0A00000000000, %4935
  %4937 = fmul fast float %4936, %4912
  %4938 = call float @dx.op.unary.f32(i32 6, float %4900)  ; FAbs(value)
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = bitcast float %4939 to i32
  %4941 = sitofp i32 %4940 to float
  %4942 = fmul fast float %4941, 5.000000e+00
  %4943 = fadd fast float %4942, 0xC1EFBF8940000000
  %4944 = fptosi float %4943 to i32
  %4945 = bitcast i32 %4944 to float
  %4946 = fsub fast float 1.000000e+00, %4609
  %4947 = fsub fast float 1.000000e+00, %4610
  %4948 = fsub fast float 1.000000e+00, %4620
  %4949 = fmul fast float %4945, %4946
  %4950 = fmul fast float %4945, %4947
  %4951 = fmul fast float %4945, %4948
  %4952 = fadd fast float %4949, %4609
  %4953 = fadd fast float %4950, %4610
  %4954 = fadd fast float %4951, %4620
  br i1 %4747, label %4955, label %4978

; <label>:4955                                    ; preds = %4887
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3706, float %4938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = fadd fast float %4957, -5.000000e-01
  %4961 = fadd fast float %4958, -5.000000e-01
  %4962 = fadd fast float %4959, -5.000000e-01
  %4963 = fmul fast float %4609, 4.000000e+00
  %4964 = fmul fast float %4963, %4946
  %4965 = fmul fast float %4964, %4960
  %4966 = fmul fast float %4610, 4.000000e+00
  %4967 = fmul fast float %4966, %4947
  %4968 = fmul fast float %4967, %4961
  %4969 = fmul fast float %4620, 4.000000e+00
  %4970 = fmul fast float %4969, %4948
  %4971 = fmul fast float %4970, %4962
  %4972 = fadd fast float %4965, %4952
  %4973 = fadd fast float %4968, %4953
  %4974 = fadd fast float %4971, %4954
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4977 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  br label %4978

; <label>:4978                                    ; preds = %4955, %4887
  %4979 = phi float [ %4975, %4955 ], [ %4952, %4887 ]
  %4980 = phi float [ %4976, %4955 ], [ %4953, %4887 ]
  %4981 = phi float [ %4977, %4955 ], [ %4954, %4887 ]
  %4982 = fmul fast float %4899, 9.843750e-01
  %4983 = fadd fast float %4982, 7.812500e-03
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %4983, float %4737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 3
  %4987 = fmul fast float %4985, %4609
  %4988 = fmul fast float %4985, %4610
  %4989 = fmul fast float %4985, %4620
  %4990 = fadd fast float %4987, %4986
  %4991 = fadd fast float %4988, %4986
  %4992 = fadd fast float %4989, %4986
  br i1 %4747, label %4993, label %5016

; <label>:4993                                    ; preds = %4978
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3706, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.ResRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.ResRet.f32 %4994, 2
  %4998 = fadd fast float %4995, -5.000000e-01
  %4999 = fadd fast float %4996, -5.000000e-01
  %5000 = fadd fast float %4997, -5.000000e-01
  %5001 = fmul fast float %4609, 4.000000e+00
  %5002 = fmul fast float %5001, %4946
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %4610, 4.000000e+00
  %5005 = fmul fast float %5004, %4947
  %5006 = fmul fast float %5005, %4999
  %5007 = fmul fast float %4620, 4.000000e+00
  %5008 = fmul fast float %5007, %4948
  %5009 = fmul fast float %5008, %5000
  %5010 = fadd fast float %5003, %4990
  %5011 = fadd fast float %5006, %4991
  %5012 = fadd fast float %5009, %4992
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5015 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  br label %5016

; <label>:5016                                    ; preds = %4993, %4978
  %5017 = phi float [ %5013, %4993 ], [ %4990, %4978 ]
  %5018 = phi float [ %5014, %4993 ], [ %4991, %4978 ]
  %5019 = phi float [ %5015, %4993 ], [ %4992, %4978 ]
  %5020 = call float @dx.op.binary.f32(i32 35, float %5018, float %5019)  ; FMax(a,b)
  %5021 = call float @dx.op.binary.f32(i32 35, float %5017, float %5020)  ; FMax(a,b)
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = fmul fast float %4979, %4937
  %5024 = fmul fast float %4980, %4937
  %5025 = fmul fast float %4981, %4937
  %5026 = fsub fast float 1.000000e+00, %4900
  %5027 = bitcast float %5026 to i32
  %5028 = sitofp i32 %5027 to float
  %5029 = fmul fast float %5028, 5.000000e+00
  %5030 = fadd fast float %5029, 0xC1EFBF8940000000
  %5031 = fptosi float %5030 to i32
  %5032 = bitcast i32 %5031 to float
  %5033 = fmul fast float %5032, %3707
  %5034 = fmul fast float %5022, %5033
  %5035 = fmul fast float %5034, %4797
  %5036 = fmul fast float %5034, %4798
  %5037 = fmul fast float %5034, %4799
  %5038 = fadd fast float %5035, %5023
  %5039 = fadd fast float %5036, %5024
  %5040 = fadd fast float %5037, %5025
  %5041 = fmul fast float %4905, %4888
  %5042 = fmul fast float %5041, %5022
  %5043 = fmul fast float %4905, %4889
  %5044 = fmul fast float %5043, %5022
  %5045 = fmul fast float %4905, %4890
  %5046 = fmul fast float %5045, %5022
  %5047 = fmul fast float %5041, %5038
  %5048 = fmul fast float %5043, %5039
  %5049 = fmul fast float %5045, %5040
  %5050 = fadd fast float %5042, %4781
  %5051 = fmul fast float %5050, %3703
  %5052 = fadd fast float %5044, %4782
  %5053 = fmul fast float %5052, %3703
  %5054 = fadd fast float %5046, %4783
  %5055 = fmul fast float %5054, %3703
  %5056 = fadd fast float %5047, %4824
  %5057 = fmul fast float %5056, %3703
  %5058 = fadd fast float %5048, %4827
  %5059 = fmul fast float %5058, %3703
  %5060 = fadd fast float %5049, %4830
  %5061 = fmul fast float %5060, %3703
  br label %5062

; <label>:5062                                    ; preds = %5016, %4880, %4774
  %5063 = phi float [ %4825, %4774 ], [ %4825, %4880 ], [ %5057, %5016 ]
  %5064 = phi float [ %4828, %4774 ], [ %4828, %4880 ], [ %5059, %5016 ]
  %5065 = phi float [ %4831, %4774 ], [ %4831, %4880 ], [ %5061, %5016 ]
  %5066 = phi float [ %4820, %4774 ], [ %4820, %4880 ], [ %5051, %5016 ]
  %5067 = phi float [ %4821, %4774 ], [ %4821, %4880 ], [ %5053, %5016 ]
  %5068 = phi float [ %4822, %4774 ], [ %4822, %4880 ], [ %5055, %5016 ]
  %5069 = call float @dx.op.unary.f32(i32 24, float %4615)  ; Sqrt(value)
  %5070 = call float @dx.op.unary.f32(i32 24, float %4616)  ; Sqrt(value)
  %5071 = call float @dx.op.unary.f32(i32 24, float %4617)  ; Sqrt(value)
  %5072 = fmul fast float %5069, %5066
  %5073 = fmul fast float %5070, %5067
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  br i1 %193, label %5076, label %5096

; <label>:5076                                    ; preds = %5062
  %5077 = fadd fast float %5068, %3709
  %5078 = fmul fast float %5077, %3710
  %5079 = fsub fast float 1.000000e+00, %3710
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 3
  %5083 = fmul fast float %5082, %5080
  %5084 = fadd fast float %5083, %5078
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = fmul fast float %5086, %4803
  %5088 = fsub fast float %5084, %5087
  %5089 = fadd fast float %5073, %5072
  %5090 = fmul fast float %5075, %5089
  %5091 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5092 = fsub fast float %5088, %5091
  %5093 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5094 = fmul fast float %5092, %5093
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  br label %5112

; <label>:5096                                    ; preds = %5062
  %5097 = fmul fast float %5071, %5068
  %5098 = fmul fast float %5075, %5072
  %5099 = fmul fast float %5075, %5073
  %5100 = fmul fast float %5097, %5075
  %5101 = add i32 %21, 356
  %5102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.i32 %5102, 0
  %5104 = and i32 %5103, 32
  %5105 = icmp eq i32 %5104, 0
  br i1 %5105, label %5112, label %5106

; <label>:5106                                    ; preds = %5096
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = fmul fast float %5108, 0x3FE99999A0000000
  %5110 = fadd fast float %5108, %5098
  %5111 = fadd fast float %5109, %5100
  br label %5112

; <label>:5112                                    ; preds = %5106, %5096, %5076
  %5113 = phi float [ %5090, %5076 ], [ %5110, %5106 ], [ %5098, %5096 ]
  %5114 = phi float [ %5095, %5076 ], [ %5099, %5106 ], [ %5099, %5096 ]
  %5115 = phi float [ 1.000000e+00, %5076 ], [ %5111, %5106 ], [ %5100, %5096 ]
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = fmul fast float %5117, %5064
  %5119 = fmul fast float %5117, %5065
  %5120 = fadd fast float %5064, %5063
  %5121 = select i1 %193, float %5120, float %5063
  %5122 = fmul float %5121, %5117
  %5123 = select i1 %193, float 0.000000e+00, float %5118
  %5124 = select i1 %193, float 0.000000e+00, float %5119
  %5125 = fmul fast float %5113, %5069
  %5126 = fmul fast float %5114, %5070
  %5127 = fmul fast float %5115, %5071
  %5128 = fadd fast float %5122, %5125
  %5129 = fadd fast float %5123, %5126
  %5130 = fadd fast float %5124, %5127
  %5131 = select i1 %193, float %5114, float %5129
  %5132 = select i1 %193, float %5115, float %5130
  %5133 = call float @dx.op.binary.f32(i32 36, float %5128, float 3.225500e+04)  ; FMin(a,b)
  %5134 = call float @dx.op.binary.f32(i32 36, float %5131, float 3.225500e+04)  ; FMin(a,b)
  %5135 = call float @dx.op.binary.f32(i32 36, float %5132, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5133)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5134)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5135)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

