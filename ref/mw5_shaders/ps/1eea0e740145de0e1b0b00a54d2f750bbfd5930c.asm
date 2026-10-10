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
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: f0eb7a9e85096b8c0fc32cf7a0b5a810
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
; ENTITY_IDS               0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t57,space2     1
;                                   texture    byte         r/o     T14     t69,space1     1
;                                   texture     f32          2d     T15     t34,space2     1
;                                   texture    byte         r/o     T16     t68,space1     1
;                                   texture     f32          2d     T17      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %60
  %68 = fmul fast float %66, %61
  %69 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %73, %52
  %75 = fmul fast float %73, %53
  %76 = fmul fast float %73, %54
  %77 = fmul fast float %53, %50
  %78 = fmul fast float %54, %49
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %54, %48
  %81 = fmul fast float %52, %50
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %52, %49
  %84 = fmul fast float %53, %48
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %51
  %87 = fmul fast float %82, %51
  %88 = fmul fast float %85, %51
  %89 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %41
  %95 = fmul fast float %93, %42
  %96 = fmul fast float %93, %43
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fcmp fast une float %98, 0.000000e+00
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %67, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %68, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = select i1 %99, float %110, float %114
  %118 = select i1 %99, float %111, float %115
  %119 = select i1 %99, float %112, float %116
  %120 = fmul fast float %117, %107
  %121 = fmul fast float %118, %107
  %122 = fmul fast float %119, %107
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = select i1 %99, float %124, float %128
  %132 = select i1 %99, float %125, float %129
  %133 = select i1 %99, float %126, float %130
  %134 = fmul fast float %131, %108
  %135 = fmul fast float %132, %108
  %136 = fmul fast float %133, %108
  %137 = fadd fast float %134, %120
  %138 = fadd fast float %135, %121
  %139 = fadd fast float %136, %122
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = select i1 %99, float %141, float %145
  %149 = select i1 %99, float %142, float %146
  %150 = select i1 %99, float %143, float %147
  %151 = fadd fast float %137, %148
  %152 = fadd fast float %138, %149
  %153 = fadd fast float %139, %150
  %154 = fmul fast float %151, %62
  %155 = fmul fast float %152, %62
  %156 = fmul fast float %153, %62
  %157 = shl i32 %23, 5
  %158 = add i32 %157, 4194304
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = extractvalue %dx.types.ResRet.i32 %159, 1
  %162 = extractvalue %dx.types.ResRet.i32 %159, 2
  %163 = extractvalue %dx.types.ResRet.i32 %159, 3
  %164 = add i32 %157, 4194320
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %173 = fmul fast float %171, %67
  %174 = fmul fast float %172, %68
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = and i32 %176, 114688
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float %173, float 0.000000e+00
  %180 = select i1 %178, float %174, float 0.000000e+00
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = fmul fast float %182, 2.550000e+02
  %184 = fptoui float %183 to i32
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 3
  %188 = and i32 %187, 3
  %189 = icmp ne i32 %188, 0
  %190 = and i32 %187, 4
  %191 = icmp ne i32 %190, 0
  %192 = and i1 %189, %191
  br i1 %192, label %193, label %204

; <label>:193                                     ; preds = %0
  %194 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %195 = fmul fast float %194, %68
  %196 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %197 = fmul fast float %196, %67
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %197, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fcmp fast olt float %200, %202
  br label %207

; <label>:204                                     ; preds = %0
  %205 = icmp eq i32 %190, 0
  %206 = and i1 %189, %205
  br label %207

; <label>:207                                     ; preds = %204, %193
  %208 = phi i1 [ %203, %193 ], [ %206, %204 ]
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %67, 2.560000e+02
  %213 = frem fast float %68, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, %211
  %219 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %220 = add i32 %22, 156
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = shl i32 %222, 4
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %222, 7
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %222, 22
  %230 = shl nuw nsw i32 %229, 5
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %22, 216
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %234, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = lshr i32 %234, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = add i32 %22, 36
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %22, 288
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = fmul fast float %257, 0x3F50624DE0000000
  %261 = fmul fast float %259, 0x3F50624DE0000000
  %262 = add i32 %22, 172
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %22, 232
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %22, 52
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %22, 304
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %22, 188
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %22, 248
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %22, 68
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %22, 320
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %22, 204
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %22, 264
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %22, 84
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %22, 336
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %22, 348
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 32
  %392 = icmp eq i32 %391, 0
  %393 = and i32 %390, 64
  %394 = icmp eq i32 %393, 0
  %395 = and i32 %390, 128
  %396 = icmp eq i32 %395, 0
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %414, label %401

; <label>:401                                     ; preds = %207
  %402 = add i32 %22, 492
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = fmul fast float %408, %57
  %412 = fmul fast float %409, %58
  %413 = fmul fast float %410, %59
  br label %414

; <label>:414                                     ; preds = %401, %207
  %415 = phi float [ %59, %207 ], [ %413, %401 ]
  %416 = phi float [ %58, %207 ], [ %412, %401 ]
  %417 = phi float [ %57, %207 ], [ %411, %401 ]
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 2
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %441, label %422

; <label>:422                                     ; preds = %414
  %423 = add i32 %22, 44
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %417, float 1.000000e+00
  %429 = add i32 %22, 60
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %416, float 1.000000e+00
  %435 = add i32 %22, 76
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %415, float 1.000000e+00
  br label %441

; <label>:441                                     ; preds = %422, %414
  %442 = phi float [ %415, %414 ], [ %440, %422 ]
  %443 = phi float [ %416, %414 ], [ %434, %422 ]
  %444 = phi float [ %417, %414 ], [ %428, %422 ]
  %445 = lshr i32 %419, 20
  %446 = and i32 %445, 3
  %447 = add nuw nsw i32 %446, 1
  %448 = add i32 %22, 24
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %22, 28
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = or i32 %453, %450
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %914, label %456

; <label>:456                                     ; preds = %441
  %457 = and i32 %450, 262144
  %458 = icmp ne i32 %457, 0
  %459 = select i1 %458, float %28, float 1.000000e+00
  %460 = select i1 %458, float %29, float 0.000000e+00
  %461 = select i1 %458, float %30, float 0.000000e+00
  %462 = select i1 %458, float %31, float 1.000000e+00
  %463 = select i1 %458, float %32, float %55
  %464 = select i1 %458, float %33, float %56
  %465 = add i32 %22, 284
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = fmul fast float %469, 0x3F50624DE0000000
  %471 = add i32 %22, 88
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 16
  %475 = and i32 %474, 255
  %476 = lshr i32 %473, 24
  %477 = add i32 %22, 292
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %479, 16
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = add i32 %22, 32
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 22
  %488 = shl nuw nsw i32 %487, 5
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = shl i32 %486, 4
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %486, 7
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %498 = fmul fast float %497, 1.000000e+03
  %499 = fmul fast float %260, %498
  %500 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %501 = fadd fast float %500, %250
  %502 = fmul fast float %261, %498
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = fadd fast float %503, %252
  %505 = fmul fast float %470, %498
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = fmul fast float %506, 0x401921FB60000000
  %508 = fadd fast float %507, %489
  %509 = call float @dx.op.unary.f32(i32 13, float %508)  ; Sin(value)
  %510 = call float @dx.op.unary.f32(i32 12, float %508)  ; Cos(value)
  %511 = fsub fast float -0.000000e+00, %509
  %512 = fadd fast float %463, -5.000000e-01
  %513 = fadd fast float %464, -5.000000e-01
  %514 = fmul fast float %481, %512
  %515 = fmul fast float %483, %513
  %516 = fadd fast float %514, 5.000000e-01
  %517 = fadd fast float %515, 5.000000e-01
  %518 = fmul fast float %492, %516
  %519 = fmul fast float %495, %517
  %520 = fmul fast float %510, %518
  %521 = call float @dx.op.tertiary.f32(i32 46, float %511, float %519, float %520)  ; FMad(a,b,c)
  %522 = fmul fast float %509, %518
  %523 = call float @dx.op.tertiary.f32(i32 46, float %510, float %519, float %522)  ; FMad(a,b,c)
  %524 = fadd fast float %501, %521
  %525 = fadd fast float %504, %523
  %526 = icmp ugt i32 %475, 1
  %527 = icmp ugt i32 %473, 33554431
  %528 = or i1 %527, %526
  br i1 %528, label %529, label %554

; <label>:529                                     ; preds = %456
  %530 = add i32 %22, 228
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 16
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = fmul fast float %497, %534
  %536 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %537 = mul nuw nsw i32 %475, %476
  %538 = uitofp i32 %537 to float
  %539 = fmul fast float %536, %538
  %540 = call float @dx.op.unary.f32(i32 27, float %539)  ; Round_ni(value)
  %541 = fptoui float %540 to i32
  %542 = urem i32 %541, %475
  %543 = udiv i32 %541, %476
  %544 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %545 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %546 = uitofp i32 %542 to float
  %547 = uitofp i32 %543 to float
  %548 = fadd fast float %544, %546
  %549 = fadd fast float %545, %547
  %550 = uitofp i32 %475 to float
  %551 = uitofp i32 %476 to float
  %552 = fdiv fast float %548, %550
  %553 = fdiv fast float %549, %551
  br label %554

; <label>:554                                     ; preds = %529, %456
  %555 = phi float [ %552, %529 ], [ %524, %456 ]
  %556 = phi float [ %553, %529 ], [ %525, %456 ]
  %557 = and i32 %450, 16
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %755, label %559

; <label>:559                                     ; preds = %554
  %560 = add i32 %22, 376
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %564, %dx.types.Handle %63, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = extractvalue %dx.types.ResRet.f32 %565, 3
  %570 = and i32 %473, 255
  %571 = uitofp i32 %570 to float
  %572 = lshr i32 %473, 8
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %569, %571
  %576 = fadd fast float %575, %574
  %577 = fmul fast float %576, 0x3F70101000000000
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 512
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %590, label %582

; <label>:582                                     ; preds = %559
  %583 = add i32 %22, 460
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add i32 %585, 0
  %587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %587, %dx.types.Handle %64, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  br label %590

; <label>:590                                     ; preds = %582, %559
  %591 = phi float [ %589, %582 ], [ 1.000000e+00, %559 ]
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 33554432
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %702, label %596

; <label>:596                                     ; preds = %590
  %597 = add i32 %22, 224
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %599, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = add i32 %22, 228
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = lshr i32 %610, 24
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = and i32 %610, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = lshr i32 %610, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = lshr i32 %610, 16
  %622 = and i32 %621, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = add i32 %22, 220
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = lshr i32 %627, 24
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = and i32 %627, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = lshr i32 %627, 8
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %627, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = bitcast float %566 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %566, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %566
  %651 = fmul fast float %650, %649
  %652 = bitcast float %567 to i32
  %653 = ashr i32 %652, 1
  %654 = sub nsw i32 1597463174, %653
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %567, 5.000000e-01
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %657, %656
  %659 = fsub fast float 1.500000e+00, %658
  %660 = fmul fast float %655, %567
  %661 = fmul fast float %660, %659
  %662 = bitcast float %568 to i32
  %663 = ashr i32 %662, 1
  %664 = sub nsw i32 1597463174, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %568, 5.000000e-01
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %667, %666
  %669 = fsub fast float 1.500000e+00, %668
  %670 = fmul fast float %665, %568
  %671 = fmul fast float %670, %669
  %672 = fsub fast float %651, %633
  %673 = fsub fast float %661, %637
  %674 = fsub fast float %671, %641
  %675 = fmul fast float %672, %601
  %676 = fmul fast float %673, %603
  %677 = fmul fast float %674, %608
  %678 = fadd fast float %675, %616
  %679 = fadd fast float %676, %620
  %680 = fadd fast float %677, %624
  %681 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %682 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %683 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %684 = fmul fast float %681, %681
  %685 = fmul fast float %682, %682
  %686 = fmul fast float %683, %683
  %687 = fsub fast float %684, %566
  %688 = fsub fast float %685, %567
  %689 = fsub fast float %686, %568
  %690 = fmul fast float %687, %591
  %691 = fmul fast float %688, %591
  %692 = fmul fast float %689, %591
  %693 = fadd fast float %690, %566
  %694 = fadd fast float %691, %567
  %695 = fadd fast float %692, %568
  %696 = fadd fast float %613, %577
  %697 = fsub fast float %696, %630
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %699 = fsub fast float %698, %577
  %700 = fmul fast float %699, %591
  %701 = fadd fast float %700, %577
  br label %755

; <label>:702                                     ; preds = %590
  %703 = and i32 %593, 134217728
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %739, label %705

; <label>:705                                     ; preds = %702
  %706 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %707 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %709 = fadd fast float %706, -5.000000e-01
  %710 = fadd fast float %707, -5.000000e-01
  %711 = fadd fast float %708, -5.000000e-01
  %712 = fmul fast float %709, %591
  %713 = fmul fast float %710, %591
  %714 = fmul fast float %711, %591
  %715 = fadd fast float %712, 5.000000e-01
  %716 = fadd fast float %713, 5.000000e-01
  %717 = fadd fast float %714, 5.000000e-01
  %718 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %719 = call float @dx.op.unary.f32(i32 24, float %567)  ; Sqrt(value)
  %720 = call float @dx.op.unary.f32(i32 24, float %568)  ; Sqrt(value)
  %721 = fmul fast float %715, 2.000000e+00
  %722 = fsub fast float 1.000000e+00, %721
  %723 = fmul fast float %722, %718
  %724 = fadd fast float %723, %721
  %725 = fmul fast float %724, %718
  %726 = fmul fast float %716, 2.000000e+00
  %727 = fsub fast float 1.000000e+00, %726
  %728 = fmul fast float %727, %719
  %729 = fadd fast float %728, %726
  %730 = fmul fast float %729, %719
  %731 = fmul fast float %717, 2.000000e+00
  %732 = fsub fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %720
  %734 = fadd fast float %733, %731
  %735 = fmul fast float %734, %720
  %736 = fmul fast float %725, %725
  %737 = fmul fast float %730, %730
  %738 = fmul fast float %735, %735
  br label %755

; <label>:739                                     ; preds = %702
  %740 = fmul fast float %237, %237
  %741 = fmul fast float %241, %241
  %742 = fmul fast float %245, %245
  %743 = fadd fast float %740, -1.000000e+00
  %744 = fadd fast float %741, -1.000000e+00
  %745 = fadd fast float %742, -1.000000e+00
  %746 = fmul fast float %591, %743
  %747 = fmul fast float %591, %744
  %748 = fmul fast float %591, %745
  %749 = fadd fast float %746, 1.000000e+00
  %750 = fadd fast float %747, 1.000000e+00
  %751 = fadd fast float %748, 1.000000e+00
  %752 = fmul fast float %749, %566
  %753 = fmul fast float %750, %567
  %754 = fmul fast float %751, %568
  br label %755

; <label>:755                                     ; preds = %739, %705, %596, %554
  %756 = phi float [ %701, %596 ], [ %577, %705 ], [ %577, %739 ], [ 0x3FA23C0BE0000000, %554 ]
  %757 = phi float [ %693, %596 ], [ %736, %705 ], [ %752, %739 ], [ 1.000000e+00, %554 ]
  %758 = phi float [ %694, %596 ], [ %737, %705 ], [ %753, %739 ], [ 1.000000e+00, %554 ]
  %759 = phi float [ %695, %596 ], [ %738, %705 ], [ %754, %739 ], [ 1.000000e+00, %554 ]
  %760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.i32 %760, 1
  %762 = and i32 %761, 1
  %763 = icmp ne i32 %762, 0
  %764 = add i32 %22, 356
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 32
  %768 = icmp ne i32 %767, 0
  %769 = and i1 %763, %768
  %770 = select i1 %769, float 1.000000e+00, float %757
  %771 = select i1 %769, float 0x3FD3333340000000, float %758
  %772 = select i1 %769, float 0x3FD3333340000000, float %759
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 32
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %849, label %777

; <label>:777                                     ; preds = %755
  %778 = add i32 %22, 92
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %22, 392
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %783, 0
  %785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %785, %dx.types.Handle %63, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = and i32 %780, 255
  %792 = uitofp i32 %791 to float
  %793 = lshr i32 %780, 8
  %794 = and i32 %793, 255
  %795 = uitofp i32 %794 to float
  %796 = lshr i32 %780, 16
  %797 = and i32 %796, 255
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3F70101000000000
  %800 = fmul fast float %787, %792
  %801 = fadd fast float %800, %795
  %802 = fmul fast float %801, 0x3F70101000000000
  %803 = fadd fast float %788, -5.000000e-01
  %804 = fadd fast float %790, -5.000000e-01
  %805 = fmul fast float %803, %799
  %806 = fmul fast float %804, %799
  %807 = fadd fast float %805, 5.000000e-01
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fmul fast float %807, 2.000000e+00
  %810 = fadd fast float %809, -1.000000e+00
  %811 = fmul fast float %808, 2.000000e+00
  %812 = fadd fast float %811, -1.000000e+00
  %813 = fadd fast float %810, %812
  %814 = fmul fast float %813, 5.000000e-01
  %815 = fsub fast float %810, %812
  %816 = fmul fast float %815, 5.000000e-01
  %817 = call float @dx.op.unary.f32(i32 6, float %814)  ; FAbs(value)
  %818 = fsub fast float 1.000000e+00, %817
  %819 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %820 = fsub fast float %818, %819
  %821 = call float @dx.op.dot3.f32(i32 55, float %814, float %816, float %820, float %814, float %816, float %820)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.unary.f32(i32 25, float %821)  ; Rsqrt(value)
  %823 = fmul fast float %814, %822
  %824 = fmul fast float %816, %822
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 67108864
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %845, label %829

; <label>:829                                     ; preds = %777
  %830 = add i32 %22, 280
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 65535
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %832, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = fsub fast float %802, %840
  %842 = fmul fast float %841, %834
  %843 = fadd fast float %842, %838
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  br label %845

; <label>:845                                     ; preds = %829, %777
  %846 = phi float [ %844, %829 ], [ %802, %777 ]
  %847 = call float @dx.op.dot2.f32(i32 54, float %823, float %824, float %459, float %460)  ; Dot2(ax,ay,bx,by)
  %848 = call float @dx.op.dot2.f32(i32 54, float %823, float %824, float %461, float %462)  ; Dot2(ax,ay,bx,by)
  br label %849

; <label>:849                                     ; preds = %845, %755
  %850 = phi float [ %846, %845 ], [ 0x3FD6666660000000, %755 ]
  %851 = phi float [ %847, %845 ], [ 0.000000e+00, %755 ]
  %852 = phi float [ %848, %845 ], [ 0.000000e+00, %755 ]
  %853 = phi float [ %789, %845 ], [ 1.000000e+00, %755 ]
  %854 = add i32 %22, 160
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = lshr i32 %856, 22
  %858 = shl nuw nsw i32 %857, 5
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 64
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %897, label %864

; <label>:864                                     ; preds = %849
  %865 = add i32 %22, 408
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = add i32 %867, 0
  %869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 131072
  %873 = icmp eq i32 %872, 0
  %874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %869, %dx.types.Handle %63, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = fmul fast float %875, %225
  %879 = fmul fast float %876, %228
  %880 = fmul fast float %877, %231
  br i1 %873, label %887, label %881

; <label>:881                                     ; preds = %864
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = fmul fast float %883, %878
  %885 = fmul fast float %883, %879
  %886 = fmul fast float %883, %880
  br label %887

; <label>:887                                     ; preds = %881, %864
  %888 = phi float [ %884, %881 ], [ %878, %864 ]
  %889 = phi float [ %885, %881 ], [ %879, %864 ]
  %890 = phi float [ %886, %881 ], [ %880, %864 ]
  %891 = fmul fast float %888, %859
  %892 = select i1 %208, float %891, float %888
  %893 = call float @dx.op.dot3.f32(i32 55, float %892, float %889, float %890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = select i1 %208, float 0.000000e+00, float %888
  %895 = select i1 %208, float %893, float %889
  %896 = select i1 %208, float 0.000000e+00, float %890
  br label %897

; <label>:897                                     ; preds = %887, %849
  %898 = phi float [ %894, %887 ], [ 0.000000e+00, %849 ]
  %899 = phi float [ %895, %887 ], [ 0.000000e+00, %849 ]
  %900 = phi float [ %896, %887 ], [ 0.000000e+00, %849 ]
  %901 = add i32 %22, 96
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = lshr i32 %903, 8
  %907 = and i32 %906, 255
  %908 = uitofp i32 %907 to float
  %909 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = fmul fast float %908, %909
  %911 = fadd fast float %910, %905
  %912 = fmul fast float %911, 0x3F70101020000000
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  br label %914

; <label>:914                                     ; preds = %897, %441
  %915 = phi float [ 0.000000e+00, %441 ], [ %851, %897 ]
  %916 = phi float [ 0.000000e+00, %441 ], [ %852, %897 ]
  %917 = phi float [ 0.000000e+00, %441 ], [ %898, %897 ]
  %918 = phi float [ 0.000000e+00, %441 ], [ %899, %897 ]
  %919 = phi float [ 0.000000e+00, %441 ], [ %900, %897 ]
  %920 = phi float [ 0.000000e+00, %441 ], [ %770, %897 ]
  %921 = phi float [ 0.000000e+00, %441 ], [ %771, %897 ]
  %922 = phi float [ 0.000000e+00, %441 ], [ %772, %897 ]
  %923 = phi float [ 0.000000e+00, %441 ], [ %756, %897 ]
  %924 = phi float [ 0.000000e+00, %441 ], [ 1.000000e+00, %897 ]
  %925 = phi float [ 0.000000e+00, %441 ], [ %850, %897 ]
  %926 = phi float [ 0.000000e+00, %441 ], [ %853, %897 ]
  %927 = phi float [ 0.000000e+00, %441 ], [ %913, %897 ]
  br i1 %392, label %1654, label %928

; <label>:928                                     ; preds = %914
  %929 = icmp ult i32 %447, 2
  %930 = add i32 %22, 40
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = add i32 %22, 44
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = or i32 %935, %932
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1654, label %938

; <label>:938                                     ; preds = %928
  %939 = and i32 %932, 262144
  %940 = icmp ne i32 %939, 0
  %941 = select i1 %940, float %28, float 1.000000e+00
  %942 = select i1 %940, float %29, float 0.000000e+00
  %943 = select i1 %940, float %30, float 0.000000e+00
  %944 = select i1 %940, float %31, float 1.000000e+00
  %945 = select i1 %940, float %32, float %55
  %946 = select i1 %940, float %33, float %56
  %947 = add i32 %22, 300
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = fmul fast float %951, 0x3F50624DE0000000
  %953 = add i32 %22, 104
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 16
  %957 = and i32 %956, 255
  %958 = lshr i32 %955, 24
  %959 = add i32 %22, 308
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 65535
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = lshr i32 %961, 16
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = add i32 %22, 48
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 22
  %970 = shl nuw nsw i32 %969, 5
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = shl i32 %968, 4
  %973 = and i32 %972, 32752
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %968, 7
  %976 = and i32 %975, 32752
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %980 = fmul fast float %979, 1.000000e+03
  %981 = fmul fast float %302, %980
  %982 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %983 = fadd fast float %982, %292
  %984 = fmul fast float %303, %980
  %985 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %986 = fadd fast float %985, %294
  %987 = fmul fast float %952, %980
  %988 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %989 = fmul fast float %988, 0x401921FB60000000
  %990 = fadd fast float %989, %971
  %991 = call float @dx.op.unary.f32(i32 13, float %990)  ; Sin(value)
  %992 = call float @dx.op.unary.f32(i32 12, float %990)  ; Cos(value)
  %993 = fsub fast float -0.000000e+00, %991
  %994 = fadd fast float %945, -5.000000e-01
  %995 = fadd fast float %946, -5.000000e-01
  %996 = fmul fast float %963, %994
  %997 = fmul fast float %965, %995
  %998 = fadd fast float %996, 5.000000e-01
  %999 = fadd fast float %997, 5.000000e-01
  %1000 = fmul fast float %974, %998
  %1001 = fmul fast float %977, %999
  %1002 = fmul fast float %992, %1000
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %993, float %1001, float %1002)  ; FMad(a,b,c)
  %1004 = fmul fast float %991, %1000
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %992, float %1001, float %1004)  ; FMad(a,b,c)
  %1006 = fadd fast float %983, %1003
  %1007 = fadd fast float %986, %1005
  %1008 = icmp ugt i32 %957, 1
  %1009 = icmp ugt i32 %955, 33554431
  %1010 = or i1 %1009, %1008
  br i1 %1010, label %1011, label %1036

; <label>:1011                                    ; preds = %938
  %1012 = add i32 %22, 244
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = lshr i32 %1014, 16
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = fmul fast float %979, %1016
  %1018 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1019 = mul nuw nsw i32 %957, %958
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1018, %1020
  %1022 = call float @dx.op.unary.f32(i32 27, float %1021)  ; Round_ni(value)
  %1023 = fptoui float %1022 to i32
  %1024 = urem i32 %1023, %957
  %1025 = udiv i32 %1023, %958
  %1026 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1027 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1028 = uitofp i32 %1024 to float
  %1029 = uitofp i32 %1025 to float
  %1030 = fadd fast float %1026, %1028
  %1031 = fadd fast float %1027, %1029
  %1032 = uitofp i32 %957 to float
  %1033 = uitofp i32 %958 to float
  %1034 = fdiv fast float %1030, %1032
  %1035 = fdiv fast float %1031, %1033
  br label %1036

; <label>:1036                                    ; preds = %1011, %938
  %1037 = phi float [ %1034, %1011 ], [ %1006, %938 ]
  %1038 = phi float [ %1035, %1011 ], [ %1007, %938 ]
  %1039 = and i32 %932, 256
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1087, label %1041

; <label>:1041                                    ; preds = %1036
  %1042 = add i32 %22, 444
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1046, %dx.types.Handle %64, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = add i32 %22, 116
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = shl i32 %1051, 4
  %1053 = and i32 %1052, 32752
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1051, 7
  %1056 = and i32 %1055, 32752
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float 1.000000e+00, %444
  %1059 = call float @dx.op.binary.f32(i32 35, float %1058, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1060 = bitcast float %444 to i32
  %1061 = sitofp i32 %1060 to float
  %1062 = fadd fast float %1061, 0xC1CFBF8940000000
  %1063 = fmul fast float %1057, %1062
  %1064 = fadd fast float %1063, 0x41CFBF8940000000
  %1065 = fptosi float %1064 to i32
  %1066 = bitcast i32 %1065 to float
  %1067 = bitcast float %1059 to i32
  %1068 = sitofp i32 %1067 to float
  %1069 = fadd fast float %1068, 0xC1CFBF8940000000
  %1070 = fmul fast float %1069, %1057
  %1071 = fadd fast float %1070, 0x41CFBF8940000000
  %1072 = fptosi float %1071 to i32
  %1073 = bitcast i32 %1072 to float
  %1074 = fmul fast float %1066, %1054
  %1075 = fmul fast float %1073, %1054
  %1076 = fsub fast float %1059, %1074
  %1077 = fadd fast float %1075, %1059
  %1078 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1079 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1080 = fsub fast float %1048, %1078
  %1081 = fsub fast float %1079, %1078
  %1082 = bitcast float %1081 to i32
  %1083 = sub nsw i32 2129859010, %1082
  %1084 = bitcast i32 %1083 to float
  %1085 = fmul fast float %1084, %1080
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  br label %1087

; <label>:1087                                    ; preds = %1041, %1036
  %1088 = phi float [ %1086, %1041 ], [ %444, %1036 ]
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 128
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1109, label %1093

; <label>:1093                                    ; preds = %1087
  %1094 = add i32 %22, 428
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %1096, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1098, %dx.types.Handle %64, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 524288
  %1104 = icmp ne i32 %1103, 0
  %1105 = fcmp fast ogt float %1100, 0x3FE0101020000000
  %1106 = select i1 %1105, float 1.000000e+00, float 0.000000e+00
  %1107 = select i1 %1104, float %1106, float %1100
  %1108 = fmul fast float %1107, %1088
  br label %1109

; <label>:1109                                    ; preds = %1093, %1087
  %1110 = phi float [ %1108, %1093 ], [ %1088, %1087 ]
  %1111 = fcmp fast ult float %1110, 0x3F70101020000000
  br i1 %1111, label %1654, label %1112

; <label>:1112                                    ; preds = %1109
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 16
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1315, label %1117

; <label>:1117                                    ; preds = %1112
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %22, 380
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %63, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1130 = and i32 %1119, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1119, 8
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1129, %1131
  %1136 = fadd fast float %1135, %1134
  %1137 = fmul fast float %1136, 0x3F70101000000000
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 512
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1150, label %1142

; <label>:1142                                    ; preds = %1117
  %1143 = add i32 %22, 464
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %1145, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1147, %dx.types.Handle %64, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  br label %1150

; <label>:1150                                    ; preds = %1142, %1117
  %1151 = phi float [ %1149, %1142 ], [ 1.000000e+00, %1117 ]
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 33554432
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1262, label %1156

; <label>:1156                                    ; preds = %1150
  %1157 = add i32 %22, 240
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 65535
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = lshr i32 %1159, 16
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = add i32 %22, 244
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = lshr i32 %1170, 24
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F70101020000000
  %1174 = and i32 %1170, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = lshr i32 %1170, 8
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = lshr i32 %1170, 16
  %1182 = and i32 %1181, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F70101020000000
  %1185 = add i32 %22, 236
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 24
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F70101020000000
  %1191 = and i32 %1187, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = lshr i32 %1187, 8
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F70101020000000
  %1198 = lshr i32 %1187, 16
  %1199 = and i32 %1198, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F70101020000000
  %1202 = bitcast float %1126 to i32
  %1203 = ashr i32 %1202, 1
  %1204 = sub nsw i32 1597463174, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1126, 5.000000e-01
  %1207 = fmul fast float %1205, %1205
  %1208 = fmul fast float %1207, %1206
  %1209 = fsub fast float 1.500000e+00, %1208
  %1210 = fmul fast float %1205, %1126
  %1211 = fmul fast float %1210, %1209
  %1212 = bitcast float %1127 to i32
  %1213 = ashr i32 %1212, 1
  %1214 = sub nsw i32 1597463174, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1127, 5.000000e-01
  %1217 = fmul fast float %1215, %1215
  %1218 = fmul fast float %1217, %1216
  %1219 = fsub fast float 1.500000e+00, %1218
  %1220 = fmul fast float %1215, %1127
  %1221 = fmul fast float %1220, %1219
  %1222 = bitcast float %1128 to i32
  %1223 = ashr i32 %1222, 1
  %1224 = sub nsw i32 1597463174, %1223
  %1225 = bitcast i32 %1224 to float
  %1226 = fmul fast float %1128, 5.000000e-01
  %1227 = fmul fast float %1225, %1225
  %1228 = fmul fast float %1227, %1226
  %1229 = fsub fast float 1.500000e+00, %1228
  %1230 = fmul fast float %1225, %1128
  %1231 = fmul fast float %1230, %1229
  %1232 = fsub fast float %1211, %1193
  %1233 = fsub fast float %1221, %1197
  %1234 = fsub fast float %1231, %1201
  %1235 = fmul fast float %1232, %1161
  %1236 = fmul fast float %1233, %1163
  %1237 = fmul fast float %1234, %1168
  %1238 = fadd fast float %1235, %1176
  %1239 = fadd fast float %1236, %1180
  %1240 = fadd fast float %1237, %1184
  %1241 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1242, %1242
  %1246 = fmul fast float %1243, %1243
  %1247 = fsub fast float %1244, %1126
  %1248 = fsub fast float %1245, %1127
  %1249 = fsub fast float %1246, %1128
  %1250 = fmul fast float %1247, %1151
  %1251 = fmul fast float %1248, %1151
  %1252 = fmul fast float %1249, %1151
  %1253 = fadd fast float %1250, %1126
  %1254 = fadd fast float %1251, %1127
  %1255 = fadd fast float %1252, %1128
  %1256 = fadd fast float %1173, %1137
  %1257 = fsub fast float %1256, %1190
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = fsub fast float %1258, %1137
  %1260 = fmul fast float %1259, %1151
  %1261 = fadd fast float %1260, %1137
  br label %1315

; <label>:1262                                    ; preds = %1150
  %1263 = and i32 %1153, 134217728
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1299, label %1265

; <label>:1265                                    ; preds = %1262
  %1266 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %1267 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %1268 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1269 = fadd fast float %1266, -5.000000e-01
  %1270 = fadd fast float %1267, -5.000000e-01
  %1271 = fadd fast float %1268, -5.000000e-01
  %1272 = fmul fast float %1269, %1151
  %1273 = fmul fast float %1270, %1151
  %1274 = fmul fast float %1271, %1151
  %1275 = fadd fast float %1272, 5.000000e-01
  %1276 = fadd fast float %1273, 5.000000e-01
  %1277 = fadd fast float %1274, 5.000000e-01
  %1278 = call float @dx.op.unary.f32(i32 24, float %1126)  ; Sqrt(value)
  %1279 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1280 = call float @dx.op.unary.f32(i32 24, float %1128)  ; Sqrt(value)
  %1281 = fmul fast float %1275, 2.000000e+00
  %1282 = fsub fast float 1.000000e+00, %1281
  %1283 = fmul fast float %1282, %1278
  %1284 = fadd fast float %1283, %1281
  %1285 = fmul fast float %1284, %1278
  %1286 = fmul fast float %1276, 2.000000e+00
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1287, %1279
  %1289 = fadd fast float %1288, %1286
  %1290 = fmul fast float %1289, %1279
  %1291 = fmul fast float %1277, 2.000000e+00
  %1292 = fsub fast float 1.000000e+00, %1291
  %1293 = fmul fast float %1292, %1280
  %1294 = fadd fast float %1293, %1291
  %1295 = fmul fast float %1294, %1280
  %1296 = fmul fast float %1285, %1285
  %1297 = fmul fast float %1290, %1290
  %1298 = fmul fast float %1295, %1295
  br label %1315

; <label>:1299                                    ; preds = %1262
  %1300 = fmul fast float %279, %279
  %1301 = fmul fast float %283, %283
  %1302 = fmul fast float %287, %287
  %1303 = fadd fast float %1300, -1.000000e+00
  %1304 = fadd fast float %1301, -1.000000e+00
  %1305 = fadd fast float %1302, -1.000000e+00
  %1306 = fmul fast float %1151, %1303
  %1307 = fmul fast float %1151, %1304
  %1308 = fmul fast float %1151, %1305
  %1309 = fadd fast float %1306, 1.000000e+00
  %1310 = fadd fast float %1307, 1.000000e+00
  %1311 = fadd fast float %1308, 1.000000e+00
  %1312 = fmul fast float %1309, %1126
  %1313 = fmul fast float %1310, %1127
  %1314 = fmul fast float %1311, %1128
  br label %1315

; <label>:1315                                    ; preds = %1299, %1265, %1156, %1112
  %1316 = phi float [ %1261, %1156 ], [ %1137, %1265 ], [ %1137, %1299 ], [ 0x3FA23C0BE0000000, %1112 ]
  %1317 = phi float [ %1253, %1156 ], [ %1296, %1265 ], [ %1312, %1299 ], [ 1.000000e+00, %1112 ]
  %1318 = phi float [ %1254, %1156 ], [ %1297, %1265 ], [ %1313, %1299 ], [ 1.000000e+00, %1112 ]
  %1319 = phi float [ %1255, %1156 ], [ %1298, %1265 ], [ %1314, %1299 ], [ 1.000000e+00, %1112 ]
  %1320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.i32 %1320, 1
  %1322 = and i32 %1321, 1
  %1323 = icmp ne i32 %1322, 0
  %1324 = add i32 %22, 356
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 32
  %1328 = icmp ne i32 %1327, 0
  %1329 = and i1 %1323, %1328
  %1330 = select i1 %1329, float 1.000000e+00, float %1317
  %1331 = select i1 %1329, float 0x3FD3333340000000, float %1318
  %1332 = select i1 %1329, float 0x3FD3333340000000, float %1319
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 32
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1409, label %1337

; <label>:1337                                    ; preds = %1315
  %1338 = add i32 %22, 108
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %22, 396
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %1343, 0
  %1345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1345, %dx.types.Handle %63, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = extractvalue %dx.types.ResRet.f32 %1346, 3
  %1351 = and i32 %1340, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = lshr i32 %1340, 8
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1340, 16
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1358, 0x3F70101000000000
  %1360 = fmul fast float %1347, %1352
  %1361 = fadd fast float %1360, %1355
  %1362 = fmul fast float %1361, 0x3F70101000000000
  %1363 = fadd fast float %1348, -5.000000e-01
  %1364 = fadd fast float %1350, -5.000000e-01
  %1365 = fmul fast float %1363, %1359
  %1366 = fmul fast float %1364, %1359
  %1367 = fadd fast float %1365, 5.000000e-01
  %1368 = fadd fast float %1366, 5.000000e-01
  %1369 = fmul fast float %1367, 2.000000e+00
  %1370 = fadd fast float %1369, -1.000000e+00
  %1371 = fmul fast float %1368, 2.000000e+00
  %1372 = fadd fast float %1371, -1.000000e+00
  %1373 = fadd fast float %1370, %1372
  %1374 = fmul fast float %1373, 5.000000e-01
  %1375 = fsub fast float %1370, %1372
  %1376 = fmul fast float %1375, 5.000000e-01
  %1377 = call float @dx.op.unary.f32(i32 6, float %1374)  ; FAbs(value)
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = call float @dx.op.unary.f32(i32 6, float %1376)  ; FAbs(value)
  %1380 = fsub fast float %1378, %1379
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1374, float %1376, float %1380, float %1374, float %1376, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = call float @dx.op.unary.f32(i32 25, float %1381)  ; Rsqrt(value)
  %1383 = fmul fast float %1374, %1382
  %1384 = fmul fast float %1376, %1382
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 67108864
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1405, label %1389

; <label>:1389                                    ; preds = %1337
  %1390 = add i32 %22, 296
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 65535
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 65535
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1392, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = fsub fast float %1362, %1400
  %1402 = fmul fast float %1401, %1394
  %1403 = fadd fast float %1402, %1398
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  br label %1405

; <label>:1405                                    ; preds = %1389, %1337
  %1406 = phi float [ %1404, %1389 ], [ %1362, %1337 ]
  %1407 = call float @dx.op.dot2.f32(i32 54, float %1383, float %1384, float %941, float %942)  ; Dot2(ax,ay,bx,by)
  %1408 = call float @dx.op.dot2.f32(i32 54, float %1383, float %1384, float %943, float %944)  ; Dot2(ax,ay,bx,by)
  br label %1409

; <label>:1409                                    ; preds = %1405, %1315
  %1410 = phi float [ %1406, %1405 ], [ 0x3FD6666660000000, %1315 ]
  %1411 = phi float [ %1407, %1405 ], [ 0.000000e+00, %1315 ]
  %1412 = phi float [ %1408, %1405 ], [ 0.000000e+00, %1315 ]
  %1413 = phi float [ %1349, %1405 ], [ 1.000000e+00, %1315 ]
  %1414 = add i32 %22, 176
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = lshr i32 %1416, 22
  %1418 = shl nuw nsw i32 %1417, 5
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 64
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1457, label %1424

; <label>:1424                                    ; preds = %1409
  %1425 = add i32 %22, 412
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 131072
  %1433 = icmp eq i32 %1432, 0
  %1434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %63, float %1037, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = fmul fast float %1435, %267
  %1439 = fmul fast float %1436, %270
  %1440 = fmul fast float %1437, %273
  br i1 %1433, label %1447, label %1441

; <label>:1441                                    ; preds = %1424
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = fmul fast float %1443, %1438
  %1445 = fmul fast float %1443, %1439
  %1446 = fmul fast float %1443, %1440
  br label %1447

; <label>:1447                                    ; preds = %1441, %1424
  %1448 = phi float [ %1444, %1441 ], [ %1438, %1424 ]
  %1449 = phi float [ %1445, %1441 ], [ %1439, %1424 ]
  %1450 = phi float [ %1446, %1441 ], [ %1440, %1424 ]
  %1451 = fmul fast float %1448, %1419
  %1452 = select i1 %208, float %1451, float %1448
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1449, float %1450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = select i1 %208, float 0.000000e+00, float %1448
  %1455 = select i1 %208, float %1453, float %1449
  %1456 = select i1 %208, float 0.000000e+00, float %1450
  br label %1457

; <label>:1457                                    ; preds = %1447, %1409
  %1458 = phi float [ %1454, %1447 ], [ 0.000000e+00, %1409 ]
  %1459 = phi float [ %1455, %1447 ], [ 0.000000e+00, %1409 ]
  %1460 = phi float [ %1456, %1447 ], [ 0.000000e+00, %1409 ]
  %1461 = add i32 %22, 112
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = lshr i32 %1463, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1331, float %1332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = fmul fast float %1468, %1469
  %1471 = fadd fast float %1470, %1465
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br i1 %929, label %1474, label %1482

; <label>:1474                                    ; preds = %1457
  %1475 = fsub fast float 1.000000e+00, %1110
  %1476 = fmul fast float %1475, %920
  %1477 = fmul fast float %1475, %921
  %1478 = fmul fast float %1475, %922
  %1479 = fmul fast float %1475, %917
  %1480 = fmul fast float %1475, %918
  %1481 = fmul fast float %1475, %919
  br label %1482

; <label>:1482                                    ; preds = %1474, %1457
  %1483 = phi float [ %1479, %1474 ], [ %917, %1457 ]
  %1484 = phi float [ %1480, %1474 ], [ %918, %1457 ]
  %1485 = phi float [ %1481, %1474 ], [ %919, %1457 ]
  %1486 = phi float [ %1476, %1474 ], [ %920, %1457 ]
  %1487 = phi float [ %1477, %1474 ], [ %921, %1457 ]
  %1488 = phi float [ %1478, %1474 ], [ %922, %1457 ]
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 3
  %1492 = icmp eq i32 %1491, 3
  br i1 %1492, label %1571, label %1493

; <label>:1493                                    ; preds = %1482
  %1494 = and i32 %1490, 16
  %1495 = icmp ne i32 %1494, 0
  %1496 = select i1 %1495, float %1110, float 0.000000e+00
  %1497 = icmp eq i32 %1491, 0
  br i1 %1497, label %1498, label %1526

; <label>:1498                                    ; preds = %1493
  %1499 = and i32 %1490, 64
  %1500 = icmp ne i32 %1499, 0
  %1501 = select i1 %1500, float %1110, float 0.000000e+00
  %1502 = fsub fast float %1330, %1486
  %1503 = fsub fast float %1331, %1487
  %1504 = fsub fast float %1332, %1488
  %1505 = fmul fast float %1496, %1502
  %1506 = fmul fast float %1496, %1503
  %1507 = fmul fast float %1496, %1504
  %1508 = fadd fast float %1505, %1486
  %1509 = fadd fast float %1506, %1487
  %1510 = fadd fast float %1507, %1488
  %1511 = fsub fast float %1316, %923
  %1512 = fmul fast float %1496, %1511
  %1513 = fadd fast float %1512, %923
  %1514 = fsub fast float %1458, %1483
  %1515 = fsub fast float %1459, %1484
  %1516 = fsub fast float %1460, %1485
  %1517 = fmul fast float %1501, %1514
  %1518 = fmul fast float %1501, %1515
  %1519 = fmul fast float %1501, %1516
  %1520 = fadd fast float %1517, %1483
  %1521 = fadd fast float %1518, %1484
  %1522 = fadd fast float %1519, %1485
  %1523 = fsub fast float %1473, %927
  %1524 = fmul fast float %1496, %1523
  %1525 = fadd fast float %1524, %927
  br label %1571

; <label>:1526                                    ; preds = %1493
  %1527 = icmp eq i32 %1491, 1
  br i1 %1527, label %1528, label %1541

; <label>:1528                                    ; preds = %1526
  %1529 = fadd fast float %1330, -1.000000e+00
  %1530 = fadd fast float %1331, -1.000000e+00
  %1531 = fadd fast float %1332, -1.000000e+00
  %1532 = fmul fast float %1496, %1529
  %1533 = fmul fast float %1496, %1530
  %1534 = fmul fast float %1496, %1531
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fadd fast float %1533, 1.000000e+00
  %1537 = fadd fast float %1534, 1.000000e+00
  %1538 = fmul fast float %1535, %1486
  %1539 = fmul fast float %1536, %1487
  %1540 = fmul fast float %1537, %1488
  br label %1571

; <label>:1541                                    ; preds = %1526
  %1542 = icmp eq i32 %1491, 2
  br i1 %1542, label %1543, label %1571

; <label>:1543                                    ; preds = %1541
  %1544 = call float @dx.op.unary.f32(i32 24, float %1330)  ; Sqrt(value)
  %1545 = call float @dx.op.unary.f32(i32 24, float %1331)  ; Sqrt(value)
  %1546 = call float @dx.op.unary.f32(i32 24, float %1332)  ; Sqrt(value)
  %1547 = fadd fast float %1544, -5.000000e-01
  %1548 = fadd fast float %1545, -5.000000e-01
  %1549 = fadd fast float %1546, -5.000000e-01
  %1550 = fmul fast float %1547, %1496
  %1551 = fmul fast float %1548, %1496
  %1552 = fmul fast float %1549, %1496
  %1553 = fadd fast float %1550, 5.000000e-01
  %1554 = fadd fast float %1551, 5.000000e-01
  %1555 = fadd fast float %1552, 5.000000e-01
  %1556 = fmul fast float %1553, 2.000000e+00
  %1557 = fsub fast float 1.000000e+00, %1556
  %1558 = fmul fast float %1557, %1486
  %1559 = fadd fast float %1558, %1556
  %1560 = fmul fast float %1559, %1486
  %1561 = fmul fast float %1554, 2.000000e+00
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = fmul fast float %1562, %1487
  %1564 = fadd fast float %1563, %1561
  %1565 = fmul fast float %1564, %1487
  %1566 = fmul fast float %1555, 2.000000e+00
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = fmul fast float %1567, %1488
  %1569 = fadd fast float %1568, %1566
  %1570 = fmul fast float %1569, %1488
  br label %1571

; <label>:1571                                    ; preds = %1543, %1541, %1528, %1498, %1482
  %1572 = phi float [ %1483, %1482 ], [ %1483, %1543 ], [ %1483, %1541 ], [ %1483, %1528 ], [ %1520, %1498 ]
  %1573 = phi float [ %1484, %1482 ], [ %1484, %1543 ], [ %1484, %1541 ], [ %1484, %1528 ], [ %1521, %1498 ]
  %1574 = phi float [ %1485, %1482 ], [ %1485, %1543 ], [ %1485, %1541 ], [ %1485, %1528 ], [ %1522, %1498 ]
  %1575 = phi float [ %1486, %1482 ], [ %1560, %1543 ], [ %1486, %1541 ], [ %1538, %1528 ], [ %1508, %1498 ]
  %1576 = phi float [ %1487, %1482 ], [ %1565, %1543 ], [ %1487, %1541 ], [ %1539, %1528 ], [ %1509, %1498 ]
  %1577 = phi float [ %1488, %1482 ], [ %1570, %1543 ], [ %1488, %1541 ], [ %1540, %1528 ], [ %1510, %1498 ]
  %1578 = phi float [ %923, %1482 ], [ %923, %1543 ], [ %923, %1541 ], [ %923, %1528 ], [ %1513, %1498 ]
  %1579 = phi float [ %927, %1482 ], [ %927, %1543 ], [ %927, %1541 ], [ %927, %1528 ], [ %1525, %1498 ]
  %1580 = and i32 %1490, 12
  %1581 = icmp eq i32 %1580, 12
  br i1 %1581, label %1654, label %1582

; <label>:1582                                    ; preds = %1571
  %1583 = and i32 %1490, 2097184
  %1584 = icmp eq i32 %1583, 2097184
  %1585 = select i1 %1584, float %1110, float 0.000000e+00
  %1586 = and i32 %1490, 4194336
  %1587 = icmp eq i32 %1586, 4194336
  %1588 = select i1 %1587, float %1110, float 0.000000e+00
  %1589 = and i32 %1490, 8388640
  %1590 = icmp eq i32 %1589, 8388640
  %1591 = select i1 %1590, float %1110, float 0.000000e+00
  %1592 = icmp eq i32 %1580, 0
  br i1 %1592, label %1593, label %1606

; <label>:1593                                    ; preds = %1582
  %1594 = fsub fast float %1411, %915
  %1595 = fsub fast float %1412, %916
  %1596 = fmul fast float %1585, %1594
  %1597 = fmul fast float %1585, %1595
  %1598 = fadd fast float %1596, %915
  %1599 = fadd fast float %1597, %916
  %1600 = fsub fast float %1413, %926
  %1601 = fmul fast float %1588, %1600
  %1602 = fadd fast float %1601, %926
  %1603 = fsub fast float %1410, %925
  %1604 = fmul fast float %1591, %1603
  %1605 = fadd fast float %1604, %925
  br label %1654

; <label>:1606                                    ; preds = %1582
  %1607 = icmp eq i32 %1580, 4
  br i1 %1607, label %1608, label %1640

; <label>:1608                                    ; preds = %1606
  %1609 = fmul fast float %1585, %1411
  %1610 = fmul fast float %1585, %1412
  %1611 = fadd fast float %1609, %915
  %1612 = fadd fast float %1610, %916
  %1613 = call float @dx.op.binary.f32(i32 36, float %926, float %1413)  ; FMin(a,b)
  %1614 = fsub fast float %1613, %926
  %1615 = fmul fast float %1614, %1588
  %1616 = fadd fast float %1615, %926
  %1617 = fadd fast float %1410, %925
  %1618 = fmul fast float %1617, 0x3FF337FAE0000000
  %1619 = fmul fast float %925, %925
  %1620 = fmul fast float %1410, %1410
  %1621 = fadd fast float %1620, %1619
  %1622 = fmul fast float %1621, 0x3FE5152B00000000
  %1623 = fmul fast float %925, 0xBFCC1F85E0000000
  %1624 = fmul fast float %1623, %1410
  %1625 = fadd fast float %1624, 0xBFE1363700000000
  %1626 = fadd fast float %1625, %1618
  %1627 = fsub fast float %1626, %1622
  %1628 = fmul fast float %1617, 0x3FBA6F0D00000000
  %1629 = fmul fast float %1621, 0x3FD0432880000000
  %1630 = fmul fast float %925, 0xBFEF110800000000
  %1631 = fmul fast float %1630, %1410
  %1632 = fadd fast float %1631, 1.000000e+00
  %1633 = fsub fast float %1632, %1628
  %1634 = fadd fast float %1633, %1629
  %1635 = fdiv fast float %1627, %1634
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fsub fast float %1636, %925
  %1638 = fmul fast float %1637, %1591
  %1639 = fadd fast float %1638, %925
  br label %1654

; <label>:1640                                    ; preds = %1606
  %1641 = icmp eq i32 %1580, 8
  br i1 %1641, label %1642, label %1654

; <label>:1642                                    ; preds = %1640
  %1643 = fmul fast float %1585, %1411
  %1644 = fmul fast float %1585, %1412
  %1645 = fadd fast float %1643, %915
  %1646 = fadd fast float %1644, %916
  %1647 = call float @dx.op.binary.f32(i32 36, float %926, float %1413)  ; FMin(a,b)
  %1648 = fsub fast float %1647, %926
  %1649 = fmul fast float %1648, %1588
  %1650 = fadd fast float %1649, %926
  %1651 = fsub fast float %1410, %925
  %1652 = fmul fast float %1591, %1651
  %1653 = fadd fast float %1652, %925
  br label %1654

; <label>:1654                                    ; preds = %1642, %1640, %1608, %1593, %1571, %1109, %928, %914
  %1655 = phi float [ %915, %1571 ], [ %915, %1109 ], [ %915, %914 ], [ %1645, %1642 ], [ %915, %1640 ], [ %1611, %1608 ], [ %1598, %1593 ], [ %915, %928 ]
  %1656 = phi float [ %916, %1571 ], [ %916, %1109 ], [ %916, %914 ], [ %1646, %1642 ], [ %916, %1640 ], [ %1612, %1608 ], [ %1599, %1593 ], [ %916, %928 ]
  %1657 = phi float [ %1572, %1571 ], [ %917, %1109 ], [ %917, %914 ], [ %1572, %1642 ], [ %1572, %1640 ], [ %1572, %1608 ], [ %1572, %1593 ], [ %917, %928 ]
  %1658 = phi float [ %1573, %1571 ], [ %918, %1109 ], [ %918, %914 ], [ %1573, %1642 ], [ %1573, %1640 ], [ %1573, %1608 ], [ %1573, %1593 ], [ %918, %928 ]
  %1659 = phi float [ %1574, %1571 ], [ %919, %1109 ], [ %919, %914 ], [ %1574, %1642 ], [ %1574, %1640 ], [ %1574, %1608 ], [ %1574, %1593 ], [ %919, %928 ]
  %1660 = phi float [ %1575, %1571 ], [ %920, %1109 ], [ %920, %914 ], [ %1575, %1642 ], [ %1575, %1640 ], [ %1575, %1608 ], [ %1575, %1593 ], [ %920, %928 ]
  %1661 = phi float [ %1576, %1571 ], [ %921, %1109 ], [ %921, %914 ], [ %1576, %1642 ], [ %1576, %1640 ], [ %1576, %1608 ], [ %1576, %1593 ], [ %921, %928 ]
  %1662 = phi float [ %1577, %1571 ], [ %922, %1109 ], [ %922, %914 ], [ %1577, %1642 ], [ %1577, %1640 ], [ %1577, %1608 ], [ %1577, %1593 ], [ %922, %928 ]
  %1663 = phi float [ %1578, %1571 ], [ %923, %1109 ], [ %923, %914 ], [ %1578, %1642 ], [ %1578, %1640 ], [ %1578, %1608 ], [ %1578, %1593 ], [ %923, %928 ]
  %1664 = phi float [ %925, %1571 ], [ %925, %1109 ], [ %925, %914 ], [ %1653, %1642 ], [ %925, %1640 ], [ %1639, %1608 ], [ %1605, %1593 ], [ %925, %928 ]
  %1665 = phi float [ %926, %1571 ], [ %926, %1109 ], [ %926, %914 ], [ %1650, %1642 ], [ %926, %1640 ], [ %1616, %1608 ], [ %1602, %1593 ], [ %926, %928 ]
  %1666 = phi float [ %1579, %1571 ], [ %927, %1109 ], [ %927, %914 ], [ %1579, %1642 ], [ %1579, %1640 ], [ %1579, %1608 ], [ %1579, %1593 ], [ %927, %928 ]
  br i1 %394, label %2393, label %1667

; <label>:1667                                    ; preds = %1654
  %1668 = icmp ult i32 %447, 3
  %1669 = add i32 %22, 56
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = add i32 %22, 60
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = or i32 %1674, %1671
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %2393, label %1677

; <label>:1677                                    ; preds = %1667
  %1678 = and i32 %1671, 262144
  %1679 = icmp ne i32 %1678, 0
  %1680 = select i1 %1679, float %28, float 1.000000e+00
  %1681 = select i1 %1679, float %29, float 0.000000e+00
  %1682 = select i1 %1679, float %30, float 0.000000e+00
  %1683 = select i1 %1679, float %31, float 1.000000e+00
  %1684 = select i1 %1679, float %32, float %55
  %1685 = select i1 %1679, float %33, float %56
  %1686 = add i32 %22, 316
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = lshr i32 %1688, 16
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = fmul fast float %1690, 0x3F50624DE0000000
  %1692 = add i32 %22, 120
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = lshr i32 %1694, 16
  %1696 = and i32 %1695, 255
  %1697 = lshr i32 %1694, 24
  %1698 = add i32 %22, 324
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = and i32 %1700, 65535
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = lshr i32 %1700, 16
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = add i32 %22, 64
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = lshr i32 %1707, 22
  %1709 = shl nuw nsw i32 %1708, 5
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = shl i32 %1707, 4
  %1712 = and i32 %1711, 32752
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = lshr i32 %1707, 7
  %1715 = and i32 %1714, 32752
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1719 = fmul fast float %1718, 1.000000e+03
  %1720 = fmul fast float %344, %1719
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fadd fast float %1721, %334
  %1723 = fmul fast float %345, %1719
  %1724 = call float @dx.op.unary.f32(i32 22, float %1723)  ; Frc(value)
  %1725 = fadd fast float %1724, %336
  %1726 = fmul fast float %1691, %1719
  %1727 = call float @dx.op.unary.f32(i32 22, float %1726)  ; Frc(value)
  %1728 = fmul fast float %1727, 0x401921FB60000000
  %1729 = fadd fast float %1728, %1710
  %1730 = call float @dx.op.unary.f32(i32 13, float %1729)  ; Sin(value)
  %1731 = call float @dx.op.unary.f32(i32 12, float %1729)  ; Cos(value)
  %1732 = fsub fast float -0.000000e+00, %1730
  %1733 = fadd fast float %1684, -5.000000e-01
  %1734 = fadd fast float %1685, -5.000000e-01
  %1735 = fmul fast float %1702, %1733
  %1736 = fmul fast float %1704, %1734
  %1737 = fadd fast float %1735, 5.000000e-01
  %1738 = fadd fast float %1736, 5.000000e-01
  %1739 = fmul fast float %1713, %1737
  %1740 = fmul fast float %1716, %1738
  %1741 = fmul fast float %1731, %1739
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1740, float %1741)  ; FMad(a,b,c)
  %1743 = fmul fast float %1730, %1739
  %1744 = call float @dx.op.tertiary.f32(i32 46, float %1731, float %1740, float %1743)  ; FMad(a,b,c)
  %1745 = fadd fast float %1722, %1742
  %1746 = fadd fast float %1725, %1744
  %1747 = icmp ugt i32 %1696, 1
  %1748 = icmp ugt i32 %1694, 33554431
  %1749 = or i1 %1748, %1747
  br i1 %1749, label %1750, label %1775

; <label>:1750                                    ; preds = %1677
  %1751 = add i32 %22, 260
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = lshr i32 %1753, 16
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = fmul fast float %1718, %1755
  %1757 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1758 = mul nuw nsw i32 %1696, %1697
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1757, %1759
  %1761 = call float @dx.op.unary.f32(i32 27, float %1760)  ; Round_ni(value)
  %1762 = fptoui float %1761 to i32
  %1763 = urem i32 %1762, %1696
  %1764 = udiv i32 %1762, %1697
  %1765 = call float @dx.op.unary.f32(i32 22, float %1745)  ; Frc(value)
  %1766 = call float @dx.op.unary.f32(i32 22, float %1746)  ; Frc(value)
  %1767 = uitofp i32 %1763 to float
  %1768 = uitofp i32 %1764 to float
  %1769 = fadd fast float %1765, %1767
  %1770 = fadd fast float %1766, %1768
  %1771 = uitofp i32 %1696 to float
  %1772 = uitofp i32 %1697 to float
  %1773 = fdiv fast float %1769, %1771
  %1774 = fdiv fast float %1770, %1772
  br label %1775

; <label>:1775                                    ; preds = %1750, %1677
  %1776 = phi float [ %1773, %1750 ], [ %1745, %1677 ]
  %1777 = phi float [ %1774, %1750 ], [ %1746, %1677 ]
  %1778 = and i32 %1671, 256
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1826, label %1780

; <label>:1780                                    ; preds = %1775
  %1781 = add i32 %22, 448
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = add i32 %1783, 0
  %1785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1785, %dx.types.Handle %64, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = add i32 %22, 132
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = shl i32 %1790, 4
  %1792 = and i32 %1791, 32752
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = lshr i32 %1790, 7
  %1795 = and i32 %1794, 32752
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = fsub fast float 1.000000e+00, %443
  %1798 = call float @dx.op.binary.f32(i32 35, float %1797, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1799 = bitcast float %443 to i32
  %1800 = sitofp i32 %1799 to float
  %1801 = fadd fast float %1800, 0xC1CFBF8940000000
  %1802 = fmul fast float %1796, %1801
  %1803 = fadd fast float %1802, 0x41CFBF8940000000
  %1804 = fptosi float %1803 to i32
  %1805 = bitcast i32 %1804 to float
  %1806 = bitcast float %1798 to i32
  %1807 = sitofp i32 %1806 to float
  %1808 = fadd fast float %1807, 0xC1CFBF8940000000
  %1809 = fmul fast float %1808, %1796
  %1810 = fadd fast float %1809, 0x41CFBF8940000000
  %1811 = fptosi float %1810 to i32
  %1812 = bitcast i32 %1811 to float
  %1813 = fmul fast float %1805, %1793
  %1814 = fmul fast float %1812, %1793
  %1815 = fsub fast float %1798, %1813
  %1816 = fadd fast float %1814, %1798
  %1817 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1818 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1819 = fsub fast float %1787, %1817
  %1820 = fsub fast float %1818, %1817
  %1821 = bitcast float %1820 to i32
  %1822 = sub nsw i32 2129859010, %1821
  %1823 = bitcast i32 %1822 to float
  %1824 = fmul fast float %1823, %1819
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  br label %1826

; <label>:1826                                    ; preds = %1780, %1775
  %1827 = phi float [ %1825, %1780 ], [ %443, %1775 ]
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 128
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1848, label %1832

; <label>:1832                                    ; preds = %1826
  %1833 = add i32 %22, 432
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = add i32 %1835, 0
  %1837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1837, %dx.types.Handle %64, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 524288
  %1843 = icmp ne i32 %1842, 0
  %1844 = fcmp fast ogt float %1839, 0x3FE0101020000000
  %1845 = select i1 %1844, float 1.000000e+00, float 0.000000e+00
  %1846 = select i1 %1843, float %1845, float %1839
  %1847 = fmul fast float %1846, %1827
  br label %1848

; <label>:1848                                    ; preds = %1832, %1826
  %1849 = phi float [ %1847, %1832 ], [ %1827, %1826 ]
  %1850 = fcmp fast ult float %1849, 0x3F70101020000000
  br i1 %1850, label %2393, label %1851

; <label>:1851                                    ; preds = %1848
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 16
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %2054, label %1856

; <label>:1856                                    ; preds = %1851
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = add i32 %22, 384
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %1861, 0
  %1863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1863, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = extractvalue %dx.types.ResRet.f32 %1864, 3
  %1869 = and i32 %1858, 255
  %1870 = uitofp i32 %1869 to float
  %1871 = lshr i32 %1858, 8
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = fmul fast float %1868, %1870
  %1875 = fadd fast float %1874, %1873
  %1876 = fmul fast float %1875, 0x3F70101000000000
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 512
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1889, label %1881

; <label>:1881                                    ; preds = %1856
  %1882 = add i32 %22, 468
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = add i32 %1884, 0
  %1886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1886, %dx.types.Handle %64, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  br label %1889

; <label>:1889                                    ; preds = %1881, %1856
  %1890 = phi float [ %1888, %1881 ], [ 1.000000e+00, %1856 ]
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 33554432
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %2001, label %1895

; <label>:1895                                    ; preds = %1889
  %1896 = add i32 %22, 256
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 65535
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = lshr i32 %1898, 16
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = add i32 %22, 260
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = lshr i32 %1909, 24
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = and i32 %1909, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = lshr i32 %1909, 8
  %1917 = and i32 %1916, 255
  %1918 = uitofp i32 %1917 to float
  %1919 = fmul fast float %1918, 0x3F70101020000000
  %1920 = lshr i32 %1909, 16
  %1921 = and i32 %1920, 255
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = add i32 %22, 252
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = lshr i32 %1926, 24
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1928, 0x3F70101020000000
  %1930 = and i32 %1926, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = lshr i32 %1926, 8
  %1934 = and i32 %1933, 255
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = lshr i32 %1926, 16
  %1938 = and i32 %1937, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = fmul fast float %1939, 0x3F70101020000000
  %1941 = bitcast float %1865 to i32
  %1942 = ashr i32 %1941, 1
  %1943 = sub nsw i32 1597463174, %1942
  %1944 = bitcast i32 %1943 to float
  %1945 = fmul fast float %1865, 5.000000e-01
  %1946 = fmul fast float %1944, %1944
  %1947 = fmul fast float %1946, %1945
  %1948 = fsub fast float 1.500000e+00, %1947
  %1949 = fmul fast float %1944, %1865
  %1950 = fmul fast float %1949, %1948
  %1951 = bitcast float %1866 to i32
  %1952 = ashr i32 %1951, 1
  %1953 = sub nsw i32 1597463174, %1952
  %1954 = bitcast i32 %1953 to float
  %1955 = fmul fast float %1866, 5.000000e-01
  %1956 = fmul fast float %1954, %1954
  %1957 = fmul fast float %1956, %1955
  %1958 = fsub fast float 1.500000e+00, %1957
  %1959 = fmul fast float %1954, %1866
  %1960 = fmul fast float %1959, %1958
  %1961 = bitcast float %1867 to i32
  %1962 = ashr i32 %1961, 1
  %1963 = sub nsw i32 1597463174, %1962
  %1964 = bitcast i32 %1963 to float
  %1965 = fmul fast float %1867, 5.000000e-01
  %1966 = fmul fast float %1964, %1964
  %1967 = fmul fast float %1966, %1965
  %1968 = fsub fast float 1.500000e+00, %1967
  %1969 = fmul fast float %1964, %1867
  %1970 = fmul fast float %1969, %1968
  %1971 = fsub fast float %1950, %1932
  %1972 = fsub fast float %1960, %1936
  %1973 = fsub fast float %1970, %1940
  %1974 = fmul fast float %1971, %1900
  %1975 = fmul fast float %1972, %1902
  %1976 = fmul fast float %1973, %1907
  %1977 = fadd fast float %1974, %1915
  %1978 = fadd fast float %1975, %1919
  %1979 = fadd fast float %1976, %1923
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1983 = fmul fast float %1980, %1980
  %1984 = fmul fast float %1981, %1981
  %1985 = fmul fast float %1982, %1982
  %1986 = fsub fast float %1983, %1865
  %1987 = fsub fast float %1984, %1866
  %1988 = fsub fast float %1985, %1867
  %1989 = fmul fast float %1986, %1890
  %1990 = fmul fast float %1987, %1890
  %1991 = fmul fast float %1988, %1890
  %1992 = fadd fast float %1989, %1865
  %1993 = fadd fast float %1990, %1866
  %1994 = fadd fast float %1991, %1867
  %1995 = fadd fast float %1912, %1876
  %1996 = fsub fast float %1995, %1929
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fsub fast float %1997, %1876
  %1999 = fmul fast float %1998, %1890
  %2000 = fadd fast float %1999, %1876
  br label %2054

; <label>:2001                                    ; preds = %1889
  %2002 = and i32 %1892, 134217728
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2038, label %2004

; <label>:2004                                    ; preds = %2001
  %2005 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %2006 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %2007 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2008 = fadd fast float %2005, -5.000000e-01
  %2009 = fadd fast float %2006, -5.000000e-01
  %2010 = fadd fast float %2007, -5.000000e-01
  %2011 = fmul fast float %2008, %1890
  %2012 = fmul fast float %2009, %1890
  %2013 = fmul fast float %2010, %1890
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = fadd fast float %2013, 5.000000e-01
  %2017 = call float @dx.op.unary.f32(i32 24, float %1865)  ; Sqrt(value)
  %2018 = call float @dx.op.unary.f32(i32 24, float %1866)  ; Sqrt(value)
  %2019 = call float @dx.op.unary.f32(i32 24, float %1867)  ; Sqrt(value)
  %2020 = fmul fast float %2014, 2.000000e+00
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = fmul fast float %2021, %2017
  %2023 = fadd fast float %2022, %2020
  %2024 = fmul fast float %2023, %2017
  %2025 = fmul fast float %2015, 2.000000e+00
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = fmul fast float %2026, %2018
  %2028 = fadd fast float %2027, %2025
  %2029 = fmul fast float %2028, %2018
  %2030 = fmul fast float %2016, 2.000000e+00
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = fmul fast float %2031, %2019
  %2033 = fadd fast float %2032, %2030
  %2034 = fmul fast float %2033, %2019
  %2035 = fmul fast float %2024, %2024
  %2036 = fmul fast float %2029, %2029
  %2037 = fmul fast float %2034, %2034
  br label %2054

; <label>:2038                                    ; preds = %2001
  %2039 = fmul fast float %321, %321
  %2040 = fmul fast float %325, %325
  %2041 = fmul fast float %329, %329
  %2042 = fadd fast float %2039, -1.000000e+00
  %2043 = fadd fast float %2040, -1.000000e+00
  %2044 = fadd fast float %2041, -1.000000e+00
  %2045 = fmul fast float %1890, %2042
  %2046 = fmul fast float %1890, %2043
  %2047 = fmul fast float %1890, %2044
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fmul fast float %2048, %1865
  %2052 = fmul fast float %2049, %1866
  %2053 = fmul fast float %2050, %1867
  br label %2054

; <label>:2054                                    ; preds = %2038, %2004, %1895, %1851
  %2055 = phi float [ %2000, %1895 ], [ %1876, %2004 ], [ %1876, %2038 ], [ 0x3FA23C0BE0000000, %1851 ]
  %2056 = phi float [ %1992, %1895 ], [ %2035, %2004 ], [ %2051, %2038 ], [ 1.000000e+00, %1851 ]
  %2057 = phi float [ %1993, %1895 ], [ %2036, %2004 ], [ %2052, %2038 ], [ 1.000000e+00, %1851 ]
  %2058 = phi float [ %1994, %1895 ], [ %2037, %2004 ], [ %2053, %2038 ], [ 1.000000e+00, %1851 ]
  %2059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.i32 %2059, 1
  %2061 = and i32 %2060, 1
  %2062 = icmp ne i32 %2061, 0
  %2063 = add i32 %22, 356
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 32
  %2067 = icmp ne i32 %2066, 0
  %2068 = and i1 %2062, %2067
  %2069 = select i1 %2068, float 1.000000e+00, float %2056
  %2070 = select i1 %2068, float 0x3FD3333340000000, float %2057
  %2071 = select i1 %2068, float 0x3FD3333340000000, float %2058
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 32
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2148, label %2076

; <label>:2076                                    ; preds = %2054
  %2077 = add i32 %22, 124
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = add i32 %22, 400
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = add i32 %2082, 0
  %2084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2084, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.ResRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.ResRet.f32 %2085, 2
  %2089 = extractvalue %dx.types.ResRet.f32 %2085, 3
  %2090 = and i32 %2079, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = lshr i32 %2079, 8
  %2093 = and i32 %2092, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = lshr i32 %2079, 16
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101000000000
  %2099 = fmul fast float %2086, %2091
  %2100 = fadd fast float %2099, %2094
  %2101 = fmul fast float %2100, 0x3F70101000000000
  %2102 = fadd fast float %2087, -5.000000e-01
  %2103 = fadd fast float %2089, -5.000000e-01
  %2104 = fmul fast float %2102, %2098
  %2105 = fmul fast float %2103, %2098
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fadd fast float %2105, 5.000000e-01
  %2108 = fmul fast float %2106, 2.000000e+00
  %2109 = fadd fast float %2108, -1.000000e+00
  %2110 = fmul fast float %2107, 2.000000e+00
  %2111 = fadd fast float %2110, -1.000000e+00
  %2112 = fadd fast float %2109, %2111
  %2113 = fmul fast float %2112, 5.000000e-01
  %2114 = fsub fast float %2109, %2111
  %2115 = fmul fast float %2114, 5.000000e-01
  %2116 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2117 = fsub fast float 1.000000e+00, %2116
  %2118 = call float @dx.op.unary.f32(i32 6, float %2115)  ; FAbs(value)
  %2119 = fsub fast float %2117, %2118
  %2120 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2115, float %2119, float %2113, float %2115, float %2119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2121 = call float @dx.op.unary.f32(i32 25, float %2120)  ; Rsqrt(value)
  %2122 = fmul fast float %2113, %2121
  %2123 = fmul fast float %2115, %2121
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %2125, 67108864
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2144, label %2128

; <label>:2128                                    ; preds = %2076
  %2129 = add i32 %22, 312
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 65535
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 65535
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = lshr i32 %2131, 16
  %2139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2138)  ; LegacyF16ToF32(value)
  %2140 = fsub fast float %2101, %2139
  %2141 = fmul fast float %2140, %2133
  %2142 = fadd fast float %2141, %2137
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  br label %2144

; <label>:2144                                    ; preds = %2128, %2076
  %2145 = phi float [ %2143, %2128 ], [ %2101, %2076 ]
  %2146 = call float @dx.op.dot2.f32(i32 54, float %2122, float %2123, float %1680, float %1681)  ; Dot2(ax,ay,bx,by)
  %2147 = call float @dx.op.dot2.f32(i32 54, float %2122, float %2123, float %1682, float %1683)  ; Dot2(ax,ay,bx,by)
  br label %2148

; <label>:2148                                    ; preds = %2144, %2054
  %2149 = phi float [ %2145, %2144 ], [ 0x3FD6666660000000, %2054 ]
  %2150 = phi float [ %2146, %2144 ], [ 0.000000e+00, %2054 ]
  %2151 = phi float [ %2147, %2144 ], [ 0.000000e+00, %2054 ]
  %2152 = phi float [ %2088, %2144 ], [ 1.000000e+00, %2054 ]
  %2153 = add i32 %22, 192
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 22
  %2157 = shl nuw nsw i32 %2156, 5
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 64
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2196, label %2163

; <label>:2163                                    ; preds = %2148
  %2164 = add i32 %22, 416
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %2166, 0
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 131072
  %2172 = icmp eq i32 %2171, 0
  %2173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2168, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.ResRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.ResRet.f32 %2173, 2
  %2177 = fmul fast float %2174, %309
  %2178 = fmul fast float %2175, %312
  %2179 = fmul fast float %2176, %315
  br i1 %2172, label %2186, label %2180

; <label>:2180                                    ; preds = %2163
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = fmul fast float %2182, %2177
  %2184 = fmul fast float %2182, %2178
  %2185 = fmul fast float %2182, %2179
  br label %2186

; <label>:2186                                    ; preds = %2180, %2163
  %2187 = phi float [ %2183, %2180 ], [ %2177, %2163 ]
  %2188 = phi float [ %2184, %2180 ], [ %2178, %2163 ]
  %2189 = phi float [ %2185, %2180 ], [ %2179, %2163 ]
  %2190 = fmul fast float %2187, %2158
  %2191 = select i1 %208, float %2190, float %2187
  %2192 = call float @dx.op.dot3.f32(i32 55, float %2191, float %2188, float %2189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2193 = select i1 %208, float 0.000000e+00, float %2187
  %2194 = select i1 %208, float %2192, float %2188
  %2195 = select i1 %208, float 0.000000e+00, float %2189
  br label %2196

; <label>:2196                                    ; preds = %2186, %2148
  %2197 = phi float [ %2193, %2186 ], [ 0.000000e+00, %2148 ]
  %2198 = phi float [ %2194, %2186 ], [ 0.000000e+00, %2148 ]
  %2199 = phi float [ %2195, %2186 ], [ 0.000000e+00, %2148 ]
  %2200 = add i32 %22, 128
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = lshr i32 %2202, 8
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = fmul fast float %2207, %2208
  %2210 = fadd fast float %2209, %2204
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  br i1 %1668, label %2213, label %2221

; <label>:2213                                    ; preds = %2196
  %2214 = fsub fast float 1.000000e+00, %1849
  %2215 = fmul fast float %2214, %1660
  %2216 = fmul fast float %2214, %1661
  %2217 = fmul fast float %2214, %1662
  %2218 = fmul fast float %2214, %1657
  %2219 = fmul fast float %2214, %1658
  %2220 = fmul fast float %2214, %1659
  br label %2221

; <label>:2221                                    ; preds = %2213, %2196
  %2222 = phi float [ %2218, %2213 ], [ %1657, %2196 ]
  %2223 = phi float [ %2219, %2213 ], [ %1658, %2196 ]
  %2224 = phi float [ %2220, %2213 ], [ %1659, %2196 ]
  %2225 = phi float [ %2215, %2213 ], [ %1660, %2196 ]
  %2226 = phi float [ %2216, %2213 ], [ %1661, %2196 ]
  %2227 = phi float [ %2217, %2213 ], [ %1662, %2196 ]
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 3
  %2231 = icmp eq i32 %2230, 3
  br i1 %2231, label %2310, label %2232

; <label>:2232                                    ; preds = %2221
  %2233 = and i32 %2229, 16
  %2234 = icmp ne i32 %2233, 0
  %2235 = select i1 %2234, float %1849, float 0.000000e+00
  %2236 = icmp eq i32 %2230, 0
  br i1 %2236, label %2237, label %2265

; <label>:2237                                    ; preds = %2232
  %2238 = and i32 %2229, 64
  %2239 = icmp ne i32 %2238, 0
  %2240 = select i1 %2239, float %1849, float 0.000000e+00
  %2241 = fsub fast float %2069, %2225
  %2242 = fsub fast float %2070, %2226
  %2243 = fsub fast float %2071, %2227
  %2244 = fmul fast float %2235, %2241
  %2245 = fmul fast float %2235, %2242
  %2246 = fmul fast float %2235, %2243
  %2247 = fadd fast float %2244, %2225
  %2248 = fadd fast float %2245, %2226
  %2249 = fadd fast float %2246, %2227
  %2250 = fsub fast float %2055, %1663
  %2251 = fmul fast float %2235, %2250
  %2252 = fadd fast float %2251, %1663
  %2253 = fsub fast float %2197, %2222
  %2254 = fsub fast float %2198, %2223
  %2255 = fsub fast float %2199, %2224
  %2256 = fmul fast float %2240, %2253
  %2257 = fmul fast float %2240, %2254
  %2258 = fmul fast float %2240, %2255
  %2259 = fadd fast float %2256, %2222
  %2260 = fadd fast float %2257, %2223
  %2261 = fadd fast float %2258, %2224
  %2262 = fsub fast float %2212, %1666
  %2263 = fmul fast float %2235, %2262
  %2264 = fadd fast float %2263, %1666
  br label %2310

; <label>:2265                                    ; preds = %2232
  %2266 = icmp eq i32 %2230, 1
  br i1 %2266, label %2267, label %2280

; <label>:2267                                    ; preds = %2265
  %2268 = fadd fast float %2069, -1.000000e+00
  %2269 = fadd fast float %2070, -1.000000e+00
  %2270 = fadd fast float %2071, -1.000000e+00
  %2271 = fmul fast float %2235, %2268
  %2272 = fmul fast float %2235, %2269
  %2273 = fmul fast float %2235, %2270
  %2274 = fadd fast float %2271, 1.000000e+00
  %2275 = fadd fast float %2272, 1.000000e+00
  %2276 = fadd fast float %2273, 1.000000e+00
  %2277 = fmul fast float %2274, %2225
  %2278 = fmul fast float %2275, %2226
  %2279 = fmul fast float %2276, %2227
  br label %2310

; <label>:2280                                    ; preds = %2265
  %2281 = icmp eq i32 %2230, 2
  br i1 %2281, label %2282, label %2310

; <label>:2282                                    ; preds = %2280
  %2283 = call float @dx.op.unary.f32(i32 24, float %2069)  ; Sqrt(value)
  %2284 = call float @dx.op.unary.f32(i32 24, float %2070)  ; Sqrt(value)
  %2285 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fadd fast float %2284, -5.000000e-01
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fmul fast float %2286, %2235
  %2290 = fmul fast float %2287, %2235
  %2291 = fmul fast float %2288, %2235
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = fadd fast float %2290, 5.000000e-01
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fmul fast float %2292, 2.000000e+00
  %2296 = fsub fast float 1.000000e+00, %2295
  %2297 = fmul fast float %2296, %2225
  %2298 = fadd fast float %2297, %2295
  %2299 = fmul fast float %2298, %2225
  %2300 = fmul fast float %2293, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2226
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2226
  %2305 = fmul fast float %2294, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2227
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2227
  br label %2310

; <label>:2310                                    ; preds = %2282, %2280, %2267, %2237, %2221
  %2311 = phi float [ %2222, %2221 ], [ %2222, %2282 ], [ %2222, %2280 ], [ %2222, %2267 ], [ %2259, %2237 ]
  %2312 = phi float [ %2223, %2221 ], [ %2223, %2282 ], [ %2223, %2280 ], [ %2223, %2267 ], [ %2260, %2237 ]
  %2313 = phi float [ %2224, %2221 ], [ %2224, %2282 ], [ %2224, %2280 ], [ %2224, %2267 ], [ %2261, %2237 ]
  %2314 = phi float [ %2225, %2221 ], [ %2299, %2282 ], [ %2225, %2280 ], [ %2277, %2267 ], [ %2247, %2237 ]
  %2315 = phi float [ %2226, %2221 ], [ %2304, %2282 ], [ %2226, %2280 ], [ %2278, %2267 ], [ %2248, %2237 ]
  %2316 = phi float [ %2227, %2221 ], [ %2309, %2282 ], [ %2227, %2280 ], [ %2279, %2267 ], [ %2249, %2237 ]
  %2317 = phi float [ %1663, %2221 ], [ %1663, %2282 ], [ %1663, %2280 ], [ %1663, %2267 ], [ %2252, %2237 ]
  %2318 = phi float [ %1666, %2221 ], [ %1666, %2282 ], [ %1666, %2280 ], [ %1666, %2267 ], [ %2264, %2237 ]
  %2319 = and i32 %2229, 12
  %2320 = icmp eq i32 %2319, 12
  br i1 %2320, label %2393, label %2321

; <label>:2321                                    ; preds = %2310
  %2322 = and i32 %2229, 2097184
  %2323 = icmp eq i32 %2322, 2097184
  %2324 = select i1 %2323, float %1849, float 0.000000e+00
  %2325 = and i32 %2229, 4194336
  %2326 = icmp eq i32 %2325, 4194336
  %2327 = select i1 %2326, float %1849, float 0.000000e+00
  %2328 = and i32 %2229, 8388640
  %2329 = icmp eq i32 %2328, 8388640
  %2330 = select i1 %2329, float %1849, float 0.000000e+00
  %2331 = icmp eq i32 %2319, 0
  br i1 %2331, label %2332, label %2345

; <label>:2332                                    ; preds = %2321
  %2333 = fsub fast float %2150, %1655
  %2334 = fsub fast float %2151, %1656
  %2335 = fmul fast float %2324, %2333
  %2336 = fmul fast float %2324, %2334
  %2337 = fadd fast float %2335, %1655
  %2338 = fadd fast float %2336, %1656
  %2339 = fsub fast float %2152, %1665
  %2340 = fmul fast float %2327, %2339
  %2341 = fadd fast float %2340, %1665
  %2342 = fsub fast float %2149, %1664
  %2343 = fmul fast float %2330, %2342
  %2344 = fadd fast float %2343, %1664
  br label %2393

; <label>:2345                                    ; preds = %2321
  %2346 = icmp eq i32 %2319, 4
  br i1 %2346, label %2347, label %2379

; <label>:2347                                    ; preds = %2345
  %2348 = fmul fast float %2324, %2150
  %2349 = fmul fast float %2324, %2151
  %2350 = fadd fast float %2348, %1655
  %2351 = fadd fast float %2349, %1656
  %2352 = call float @dx.op.binary.f32(i32 36, float %1665, float %2152)  ; FMin(a,b)
  %2353 = fsub fast float %2352, %1665
  %2354 = fmul fast float %2353, %2327
  %2355 = fadd fast float %2354, %1665
  %2356 = fadd fast float %2149, %1664
  %2357 = fmul fast float %2356, 0x3FF337FAE0000000
  %2358 = fmul fast float %1664, %1664
  %2359 = fmul fast float %2149, %2149
  %2360 = fadd fast float %2359, %2358
  %2361 = fmul fast float %2360, 0x3FE5152B00000000
  %2362 = fmul fast float %1664, 0xBFCC1F85E0000000
  %2363 = fmul fast float %2362, %2149
  %2364 = fadd fast float %2363, 0xBFE1363700000000
  %2365 = fadd fast float %2364, %2357
  %2366 = fsub fast float %2365, %2361
  %2367 = fmul fast float %2356, 0x3FBA6F0D00000000
  %2368 = fmul fast float %2360, 0x3FD0432880000000
  %2369 = fmul fast float %1664, 0xBFEF110800000000
  %2370 = fmul fast float %2369, %2149
  %2371 = fadd fast float %2370, 1.000000e+00
  %2372 = fsub fast float %2371, %2367
  %2373 = fadd fast float %2372, %2368
  %2374 = fdiv fast float %2366, %2373
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = fsub fast float %2375, %1664
  %2377 = fmul fast float %2376, %2330
  %2378 = fadd fast float %2377, %1664
  br label %2393

; <label>:2379                                    ; preds = %2345
  %2380 = icmp eq i32 %2319, 8
  br i1 %2380, label %2381, label %2393

; <label>:2381                                    ; preds = %2379
  %2382 = fmul fast float %2324, %2150
  %2383 = fmul fast float %2324, %2151
  %2384 = fadd fast float %2382, %1655
  %2385 = fadd fast float %2383, %1656
  %2386 = call float @dx.op.binary.f32(i32 36, float %1665, float %2152)  ; FMin(a,b)
  %2387 = fsub fast float %2386, %1665
  %2388 = fmul fast float %2387, %2327
  %2389 = fadd fast float %2388, %1665
  %2390 = fsub fast float %2149, %1664
  %2391 = fmul fast float %2330, %2390
  %2392 = fadd fast float %2391, %1664
  br label %2393

; <label>:2393                                    ; preds = %2381, %2379, %2347, %2332, %2310, %1848, %1667, %1654
  %2394 = phi float [ %1655, %2310 ], [ %1655, %1848 ], [ %1655, %1654 ], [ %2384, %2381 ], [ %1655, %2379 ], [ %2350, %2347 ], [ %2337, %2332 ], [ %1655, %1667 ]
  %2395 = phi float [ %1656, %2310 ], [ %1656, %1848 ], [ %1656, %1654 ], [ %2385, %2381 ], [ %1656, %2379 ], [ %2351, %2347 ], [ %2338, %2332 ], [ %1656, %1667 ]
  %2396 = phi float [ %2311, %2310 ], [ %1657, %1848 ], [ %1657, %1654 ], [ %2311, %2381 ], [ %2311, %2379 ], [ %2311, %2347 ], [ %2311, %2332 ], [ %1657, %1667 ]
  %2397 = phi float [ %2312, %2310 ], [ %1658, %1848 ], [ %1658, %1654 ], [ %2312, %2381 ], [ %2312, %2379 ], [ %2312, %2347 ], [ %2312, %2332 ], [ %1658, %1667 ]
  %2398 = phi float [ %2313, %2310 ], [ %1659, %1848 ], [ %1659, %1654 ], [ %2313, %2381 ], [ %2313, %2379 ], [ %2313, %2347 ], [ %2313, %2332 ], [ %1659, %1667 ]
  %2399 = phi float [ %2314, %2310 ], [ %1660, %1848 ], [ %1660, %1654 ], [ %2314, %2381 ], [ %2314, %2379 ], [ %2314, %2347 ], [ %2314, %2332 ], [ %1660, %1667 ]
  %2400 = phi float [ %2315, %2310 ], [ %1661, %1848 ], [ %1661, %1654 ], [ %2315, %2381 ], [ %2315, %2379 ], [ %2315, %2347 ], [ %2315, %2332 ], [ %1661, %1667 ]
  %2401 = phi float [ %2316, %2310 ], [ %1662, %1848 ], [ %1662, %1654 ], [ %2316, %2381 ], [ %2316, %2379 ], [ %2316, %2347 ], [ %2316, %2332 ], [ %1662, %1667 ]
  %2402 = phi float [ %2317, %2310 ], [ %1663, %1848 ], [ %1663, %1654 ], [ %2317, %2381 ], [ %2317, %2379 ], [ %2317, %2347 ], [ %2317, %2332 ], [ %1663, %1667 ]
  %2403 = phi float [ %1664, %2310 ], [ %1664, %1848 ], [ %1664, %1654 ], [ %2392, %2381 ], [ %1664, %2379 ], [ %2378, %2347 ], [ %2344, %2332 ], [ %1664, %1667 ]
  %2404 = phi float [ %1665, %2310 ], [ %1665, %1848 ], [ %1665, %1654 ], [ %2389, %2381 ], [ %1665, %2379 ], [ %2355, %2347 ], [ %2341, %2332 ], [ %1665, %1667 ]
  %2405 = phi float [ %2318, %2310 ], [ %1666, %1848 ], [ %1666, %1654 ], [ %2318, %2381 ], [ %2318, %2379 ], [ %2318, %2347 ], [ %2318, %2332 ], [ %1666, %1667 ]
  br i1 %396, label %3132, label %2406

; <label>:2406                                    ; preds = %2393
  %2407 = icmp ult i32 %447, 4
  %2408 = add i32 %22, 72
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %22, 76
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = or i32 %2413, %2410
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %3132, label %2416

; <label>:2416                                    ; preds = %2406
  %2417 = and i32 %2410, 262144
  %2418 = icmp ne i32 %2417, 0
  %2419 = select i1 %2418, float %28, float 1.000000e+00
  %2420 = select i1 %2418, float %29, float 0.000000e+00
  %2421 = select i1 %2418, float %30, float 0.000000e+00
  %2422 = select i1 %2418, float %31, float 1.000000e+00
  %2423 = select i1 %2418, float %32, float %55
  %2424 = select i1 %2418, float %33, float %56
  %2425 = add i32 %22, 332
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = lshr i32 %2427, 16
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = fmul fast float %2429, 0x3F50624DE0000000
  %2431 = add i32 %22, 136
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = lshr i32 %2433, 16
  %2435 = and i32 %2434, 255
  %2436 = lshr i32 %2433, 24
  %2437 = add i32 %22, 340
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 65535
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = lshr i32 %2439, 16
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = add i32 %22, 80
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = lshr i32 %2446, 22
  %2448 = shl nuw nsw i32 %2447, 5
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = shl i32 %2446, 4
  %2451 = and i32 %2450, 32752
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = lshr i32 %2446, 7
  %2454 = and i32 %2453, 32752
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 3
  %2458 = fmul fast float %2457, 1.000000e+03
  %2459 = fmul fast float %386, %2458
  %2460 = call float @dx.op.unary.f32(i32 22, float %2459)  ; Frc(value)
  %2461 = fadd fast float %2460, %376
  %2462 = fmul fast float %387, %2458
  %2463 = call float @dx.op.unary.f32(i32 22, float %2462)  ; Frc(value)
  %2464 = fadd fast float %2463, %378
  %2465 = fmul fast float %2430, %2458
  %2466 = call float @dx.op.unary.f32(i32 22, float %2465)  ; Frc(value)
  %2467 = fmul fast float %2466, 0x401921FB60000000
  %2468 = fadd fast float %2467, %2449
  %2469 = call float @dx.op.unary.f32(i32 13, float %2468)  ; Sin(value)
  %2470 = call float @dx.op.unary.f32(i32 12, float %2468)  ; Cos(value)
  %2471 = fsub fast float -0.000000e+00, %2469
  %2472 = fadd fast float %2423, -5.000000e-01
  %2473 = fadd fast float %2424, -5.000000e-01
  %2474 = fmul fast float %2441, %2472
  %2475 = fmul fast float %2443, %2473
  %2476 = fadd fast float %2474, 5.000000e-01
  %2477 = fadd fast float %2475, 5.000000e-01
  %2478 = fmul fast float %2452, %2476
  %2479 = fmul fast float %2455, %2477
  %2480 = fmul fast float %2470, %2478
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2479, float %2480)  ; FMad(a,b,c)
  %2482 = fmul fast float %2469, %2478
  %2483 = call float @dx.op.tertiary.f32(i32 46, float %2470, float %2479, float %2482)  ; FMad(a,b,c)
  %2484 = fadd fast float %2461, %2481
  %2485 = fadd fast float %2464, %2483
  %2486 = icmp ugt i32 %2435, 1
  %2487 = icmp ugt i32 %2433, 33554431
  %2488 = or i1 %2487, %2486
  br i1 %2488, label %2489, label %2514

; <label>:2489                                    ; preds = %2416
  %2490 = add i32 %22, 276
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = lshr i32 %2492, 16
  %2494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2493)  ; LegacyF16ToF32(value)
  %2495 = fmul fast float %2457, %2494
  %2496 = call float @dx.op.unary.f32(i32 22, float %2495)  ; Frc(value)
  %2497 = mul nuw nsw i32 %2435, %2436
  %2498 = uitofp i32 %2497 to float
  %2499 = fmul fast float %2496, %2498
  %2500 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2501 = fptoui float %2500 to i32
  %2502 = urem i32 %2501, %2435
  %2503 = udiv i32 %2501, %2436
  %2504 = call float @dx.op.unary.f32(i32 22, float %2484)  ; Frc(value)
  %2505 = call float @dx.op.unary.f32(i32 22, float %2485)  ; Frc(value)
  %2506 = uitofp i32 %2502 to float
  %2507 = uitofp i32 %2503 to float
  %2508 = fadd fast float %2504, %2506
  %2509 = fadd fast float %2505, %2507
  %2510 = uitofp i32 %2435 to float
  %2511 = uitofp i32 %2436 to float
  %2512 = fdiv fast float %2508, %2510
  %2513 = fdiv fast float %2509, %2511
  br label %2514

; <label>:2514                                    ; preds = %2489, %2416
  %2515 = phi float [ %2512, %2489 ], [ %2484, %2416 ]
  %2516 = phi float [ %2513, %2489 ], [ %2485, %2416 ]
  %2517 = and i32 %2410, 256
  %2518 = icmp eq i32 %2517, 0
  br i1 %2518, label %2565, label %2519

; <label>:2519                                    ; preds = %2514
  %2520 = add i32 %22, 452
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %64, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = add i32 %22, 148
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = shl i32 %2529, 4
  %2531 = and i32 %2530, 32752
  %2532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2531)  ; LegacyF16ToF32(value)
  %2533 = lshr i32 %2529, 7
  %2534 = and i32 %2533, 32752
  %2535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2534)  ; LegacyF16ToF32(value)
  %2536 = fsub fast float 1.000000e+00, %442
  %2537 = call float @dx.op.binary.f32(i32 35, float %2536, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2538 = bitcast float %442 to i32
  %2539 = sitofp i32 %2538 to float
  %2540 = fadd fast float %2539, 0xC1CFBF8940000000
  %2541 = fmul fast float %2535, %2540
  %2542 = fadd fast float %2541, 0x41CFBF8940000000
  %2543 = fptosi float %2542 to i32
  %2544 = bitcast i32 %2543 to float
  %2545 = bitcast float %2537 to i32
  %2546 = sitofp i32 %2545 to float
  %2547 = fadd fast float %2546, 0xC1CFBF8940000000
  %2548 = fmul fast float %2547, %2535
  %2549 = fadd fast float %2548, 0x41CFBF8940000000
  %2550 = fptosi float %2549 to i32
  %2551 = bitcast i32 %2550 to float
  %2552 = fmul fast float %2544, %2532
  %2553 = fmul fast float %2551, %2532
  %2554 = fsub fast float %2537, %2552
  %2555 = fadd fast float %2553, %2537
  %2556 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2557 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2558 = fsub fast float %2526, %2556
  %2559 = fsub fast float %2557, %2556
  %2560 = bitcast float %2559 to i32
  %2561 = sub nsw i32 2129859010, %2560
  %2562 = bitcast i32 %2561 to float
  %2563 = fmul fast float %2562, %2558
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  br label %2565

; <label>:2565                                    ; preds = %2519, %2514
  %2566 = phi float [ %2564, %2519 ], [ %442, %2514 ]
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 128
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2587, label %2571

; <label>:2571                                    ; preds = %2565
  %2572 = add i32 %22, 436
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = add i32 %2574, 0
  %2576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2576, %dx.types.Handle %64, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2578 = extractvalue %dx.types.ResRet.f32 %2577, 0
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 524288
  %2582 = icmp ne i32 %2581, 0
  %2583 = fcmp fast ogt float %2578, 0x3FE0101020000000
  %2584 = select i1 %2583, float 1.000000e+00, float 0.000000e+00
  %2585 = select i1 %2582, float %2584, float %2578
  %2586 = fmul fast float %2585, %2566
  br label %2587

; <label>:2587                                    ; preds = %2571, %2565
  %2588 = phi float [ %2586, %2571 ], [ %2566, %2565 ]
  %2589 = fcmp fast ult float %2588, 0x3F70101020000000
  br i1 %2589, label %3132, label %2590

; <label>:2590                                    ; preds = %2587
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 16
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2793, label %2595

; <label>:2595                                    ; preds = %2590
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %22, 388
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = add i32 %2600, 0
  %2602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2602, %dx.types.Handle %63, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2604 = extractvalue %dx.types.ResRet.f32 %2603, 0
  %2605 = extractvalue %dx.types.ResRet.f32 %2603, 1
  %2606 = extractvalue %dx.types.ResRet.f32 %2603, 2
  %2607 = extractvalue %dx.types.ResRet.f32 %2603, 3
  %2608 = and i32 %2597, 255
  %2609 = uitofp i32 %2608 to float
  %2610 = lshr i32 %2597, 8
  %2611 = and i32 %2610, 255
  %2612 = uitofp i32 %2611 to float
  %2613 = fmul fast float %2607, %2609
  %2614 = fadd fast float %2613, %2612
  %2615 = fmul fast float %2614, 0x3F70101000000000
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 512
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2628, label %2620

; <label>:2620                                    ; preds = %2595
  %2621 = add i32 %22, 472
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = add i32 %2623, 0
  %2625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2625, %dx.types.Handle %64, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  br label %2628

; <label>:2628                                    ; preds = %2620, %2595
  %2629 = phi float [ %2627, %2620 ], [ 1.000000e+00, %2595 ]
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 33554432
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2740, label %2634

; <label>:2634                                    ; preds = %2628
  %2635 = add i32 %22, 272
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 65535
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2637, 16
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = add i32 %22, 276
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 65535
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = lshr i32 %2648, 24
  %2650 = uitofp i32 %2649 to float
  %2651 = fmul fast float %2650, 0x3F70101020000000
  %2652 = and i32 %2648, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101020000000
  %2655 = lshr i32 %2648, 8
  %2656 = and i32 %2655, 255
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = lshr i32 %2648, 16
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2661, 0x3F70101020000000
  %2663 = add i32 %22, 268
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = lshr i32 %2665, 24
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = and i32 %2665, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = lshr i32 %2665, 8
  %2673 = and i32 %2672, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = lshr i32 %2665, 16
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = bitcast float %2604 to i32
  %2681 = ashr i32 %2680, 1
  %2682 = sub nsw i32 1597463174, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = fmul fast float %2604, 5.000000e-01
  %2685 = fmul fast float %2683, %2683
  %2686 = fmul fast float %2685, %2684
  %2687 = fsub fast float 1.500000e+00, %2686
  %2688 = fmul fast float %2683, %2604
  %2689 = fmul fast float %2688, %2687
  %2690 = bitcast float %2605 to i32
  %2691 = ashr i32 %2690, 1
  %2692 = sub nsw i32 1597463174, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2605, 5.000000e-01
  %2695 = fmul fast float %2693, %2693
  %2696 = fmul fast float %2695, %2694
  %2697 = fsub fast float 1.500000e+00, %2696
  %2698 = fmul fast float %2693, %2605
  %2699 = fmul fast float %2698, %2697
  %2700 = bitcast float %2606 to i32
  %2701 = ashr i32 %2700, 1
  %2702 = sub nsw i32 1597463174, %2701
  %2703 = bitcast i32 %2702 to float
  %2704 = fmul fast float %2606, 5.000000e-01
  %2705 = fmul fast float %2703, %2703
  %2706 = fmul fast float %2705, %2704
  %2707 = fsub fast float 1.500000e+00, %2706
  %2708 = fmul fast float %2703, %2606
  %2709 = fmul fast float %2708, %2707
  %2710 = fsub fast float %2689, %2671
  %2711 = fsub fast float %2699, %2675
  %2712 = fsub fast float %2709, %2679
  %2713 = fmul fast float %2710, %2639
  %2714 = fmul fast float %2711, %2641
  %2715 = fmul fast float %2712, %2646
  %2716 = fadd fast float %2713, %2654
  %2717 = fadd fast float %2714, %2658
  %2718 = fadd fast float %2715, %2662
  %2719 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2720 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2721 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2722 = fmul fast float %2719, %2719
  %2723 = fmul fast float %2720, %2720
  %2724 = fmul fast float %2721, %2721
  %2725 = fsub fast float %2722, %2604
  %2726 = fsub fast float %2723, %2605
  %2727 = fsub fast float %2724, %2606
  %2728 = fmul fast float %2725, %2629
  %2729 = fmul fast float %2726, %2629
  %2730 = fmul fast float %2727, %2629
  %2731 = fadd fast float %2728, %2604
  %2732 = fadd fast float %2729, %2605
  %2733 = fadd fast float %2730, %2606
  %2734 = fadd fast float %2651, %2615
  %2735 = fsub fast float %2734, %2668
  %2736 = call float @dx.op.unary.f32(i32 7, float %2735)  ; Saturate(value)
  %2737 = fsub fast float %2736, %2615
  %2738 = fmul fast float %2737, %2629
  %2739 = fadd fast float %2738, %2615
  br label %2793

; <label>:2740                                    ; preds = %2628
  %2741 = and i32 %2631, 134217728
  %2742 = icmp eq i32 %2741, 0
  br i1 %2742, label %2777, label %2743

; <label>:2743                                    ; preds = %2740
  %2744 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2745 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2746 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2747 = fadd fast float %2744, -5.000000e-01
  %2748 = fadd fast float %2745, -5.000000e-01
  %2749 = fadd fast float %2746, -5.000000e-01
  %2750 = fmul fast float %2747, %2629
  %2751 = fmul fast float %2748, %2629
  %2752 = fmul fast float %2749, %2629
  %2753 = fadd fast float %2750, 5.000000e-01
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2757 = call float @dx.op.unary.f32(i32 24, float %2605)  ; Sqrt(value)
  %2758 = call float @dx.op.unary.f32(i32 24, float %2606)  ; Sqrt(value)
  %2759 = fmul fast float %2753, 2.000000e+00
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2760, %2756
  %2762 = fadd fast float %2761, %2759
  %2763 = fmul fast float %2762, %2756
  %2764 = fmul fast float %2754, 2.000000e+00
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2765, %2757
  %2767 = fadd fast float %2766, %2764
  %2768 = fmul fast float %2767, %2757
  %2769 = fmul fast float %2755, 2.000000e+00
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2770, %2758
  %2772 = fadd fast float %2771, %2769
  %2773 = fmul fast float %2772, %2758
  %2774 = fmul fast float %2763, %2763
  %2775 = fmul fast float %2768, %2768
  %2776 = fmul fast float %2773, %2773
  br label %2793

; <label>:2777                                    ; preds = %2740
  %2778 = fmul fast float %363, %363
  %2779 = fmul fast float %367, %367
  %2780 = fmul fast float %371, %371
  %2781 = fadd fast float %2778, -1.000000e+00
  %2782 = fadd fast float %2779, -1.000000e+00
  %2783 = fadd fast float %2780, -1.000000e+00
  %2784 = fmul fast float %2629, %2781
  %2785 = fmul fast float %2629, %2782
  %2786 = fmul fast float %2629, %2783
  %2787 = fadd fast float %2784, 1.000000e+00
  %2788 = fadd fast float %2785, 1.000000e+00
  %2789 = fadd fast float %2786, 1.000000e+00
  %2790 = fmul fast float %2787, %2604
  %2791 = fmul fast float %2788, %2605
  %2792 = fmul fast float %2789, %2606
  br label %2793

; <label>:2793                                    ; preds = %2777, %2743, %2634, %2590
  %2794 = phi float [ %2739, %2634 ], [ %2615, %2743 ], [ %2615, %2777 ], [ 0x3FA23C0BE0000000, %2590 ]
  %2795 = phi float [ %2731, %2634 ], [ %2774, %2743 ], [ %2790, %2777 ], [ 1.000000e+00, %2590 ]
  %2796 = phi float [ %2732, %2634 ], [ %2775, %2743 ], [ %2791, %2777 ], [ 1.000000e+00, %2590 ]
  %2797 = phi float [ %2733, %2634 ], [ %2776, %2743 ], [ %2792, %2777 ], [ 1.000000e+00, %2590 ]
  %2798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.i32 %2798, 1
  %2800 = and i32 %2799, 1
  %2801 = icmp ne i32 %2800, 0
  %2802 = add i32 %22, 356
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 32
  %2806 = icmp ne i32 %2805, 0
  %2807 = and i1 %2801, %2806
  %2808 = select i1 %2807, float 1.000000e+00, float %2795
  %2809 = select i1 %2807, float 0x3FD3333340000000, float %2796
  %2810 = select i1 %2807, float 0x3FD3333340000000, float %2797
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, 32
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2887, label %2815

; <label>:2815                                    ; preds = %2793
  %2816 = add i32 %22, 140
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %22, 404
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2823, %dx.types.Handle %63, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.ResRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.ResRet.f32 %2824, 2
  %2828 = extractvalue %dx.types.ResRet.f32 %2824, 3
  %2829 = and i32 %2818, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = lshr i32 %2818, 8
  %2832 = and i32 %2831, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = lshr i32 %2818, 16
  %2835 = and i32 %2834, 255
  %2836 = uitofp i32 %2835 to float
  %2837 = fmul fast float %2836, 0x3F70101000000000
  %2838 = fmul fast float %2825, %2830
  %2839 = fadd fast float %2838, %2833
  %2840 = fmul fast float %2839, 0x3F70101000000000
  %2841 = fadd fast float %2826, -5.000000e-01
  %2842 = fadd fast float %2828, -5.000000e-01
  %2843 = fmul fast float %2841, %2837
  %2844 = fmul fast float %2842, %2837
  %2845 = fadd fast float %2843, 5.000000e-01
  %2846 = fadd fast float %2844, 5.000000e-01
  %2847 = fmul fast float %2845, 2.000000e+00
  %2848 = fadd fast float %2847, -1.000000e+00
  %2849 = fmul fast float %2846, 2.000000e+00
  %2850 = fadd fast float %2849, -1.000000e+00
  %2851 = fadd fast float %2848, %2850
  %2852 = fmul fast float %2851, 5.000000e-01
  %2853 = fsub fast float %2848, %2850
  %2854 = fmul fast float %2853, 5.000000e-01
  %2855 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2856 = fsub fast float 1.000000e+00, %2855
  %2857 = call float @dx.op.unary.f32(i32 6, float %2854)  ; FAbs(value)
  %2858 = fsub fast float %2856, %2857
  %2859 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2854, float %2858, float %2852, float %2854, float %2858)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = call float @dx.op.unary.f32(i32 25, float %2859)  ; Rsqrt(value)
  %2861 = fmul fast float %2852, %2860
  %2862 = fmul fast float %2854, %2860
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 67108864
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2883, label %2867

; <label>:2867                                    ; preds = %2815
  %2868 = add i32 %22, 328
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 65535
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 65535
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = lshr i32 %2870, 16
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = fsub fast float %2840, %2878
  %2880 = fmul fast float %2879, %2872
  %2881 = fadd fast float %2880, %2876
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  br label %2883

; <label>:2883                                    ; preds = %2867, %2815
  %2884 = phi float [ %2882, %2867 ], [ %2840, %2815 ]
  %2885 = call float @dx.op.dot2.f32(i32 54, float %2861, float %2862, float %2419, float %2420)  ; Dot2(ax,ay,bx,by)
  %2886 = call float @dx.op.dot2.f32(i32 54, float %2861, float %2862, float %2421, float %2422)  ; Dot2(ax,ay,bx,by)
  br label %2887

; <label>:2887                                    ; preds = %2883, %2793
  %2888 = phi float [ %2884, %2883 ], [ 0x3FD6666660000000, %2793 ]
  %2889 = phi float [ %2885, %2883 ], [ 0.000000e+00, %2793 ]
  %2890 = phi float [ %2886, %2883 ], [ 0.000000e+00, %2793 ]
  %2891 = phi float [ %2827, %2883 ], [ 1.000000e+00, %2793 ]
  %2892 = add i32 %22, 208
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = lshr i32 %2894, 22
  %2896 = shl nuw nsw i32 %2895, 5
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 64
  %2901 = icmp eq i32 %2900, 0
  br i1 %2901, label %2935, label %2902

; <label>:2902                                    ; preds = %2887
  %2903 = add i32 %22, 420
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 131072
  %2911 = icmp eq i32 %2910, 0
  %2912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2907, %dx.types.Handle %63, float %2515, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2913 = extractvalue %dx.types.ResRet.f32 %2912, 0
  %2914 = extractvalue %dx.types.ResRet.f32 %2912, 1
  %2915 = extractvalue %dx.types.ResRet.f32 %2912, 2
  %2916 = fmul fast float %2913, %351
  %2917 = fmul fast float %2914, %354
  %2918 = fmul fast float %2915, %357
  br i1 %2911, label %2925, label %2919

; <label>:2919                                    ; preds = %2902
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  %2922 = fmul fast float %2921, %2916
  %2923 = fmul fast float %2921, %2917
  %2924 = fmul fast float %2921, %2918
  br label %2925

; <label>:2925                                    ; preds = %2919, %2902
  %2926 = phi float [ %2922, %2919 ], [ %2916, %2902 ]
  %2927 = phi float [ %2923, %2919 ], [ %2917, %2902 ]
  %2928 = phi float [ %2924, %2919 ], [ %2918, %2902 ]
  %2929 = fmul fast float %2926, %2897
  %2930 = select i1 %208, float %2929, float %2926
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2930, float %2927, float %2928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = select i1 %208, float 0.000000e+00, float %2926
  %2933 = select i1 %208, float %2931, float %2927
  %2934 = select i1 %208, float 0.000000e+00, float %2928
  br label %2935

; <label>:2935                                    ; preds = %2925, %2887
  %2936 = phi float [ %2932, %2925 ], [ 0.000000e+00, %2887 ]
  %2937 = phi float [ %2933, %2925 ], [ 0.000000e+00, %2887 ]
  %2938 = phi float [ %2934, %2925 ], [ 0.000000e+00, %2887 ]
  %2939 = add i32 %22, 144
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = lshr i32 %2941, 8
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2808, float %2809, float %2810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = fmul fast float %2946, %2947
  %2949 = fadd fast float %2948, %2943
  %2950 = fmul fast float %2949, 0x3F70101020000000
  %2951 = call float @dx.op.unary.f32(i32 7, float %2950)  ; Saturate(value)
  br i1 %2407, label %2952, label %2960

; <label>:2952                                    ; preds = %2935
  %2953 = fsub fast float 1.000000e+00, %2588
  %2954 = fmul fast float %2953, %2399
  %2955 = fmul fast float %2953, %2400
  %2956 = fmul fast float %2953, %2401
  %2957 = fmul fast float %2953, %2396
  %2958 = fmul fast float %2953, %2397
  %2959 = fmul fast float %2953, %2398
  br label %2960

; <label>:2960                                    ; preds = %2952, %2935
  %2961 = phi float [ %2957, %2952 ], [ %2396, %2935 ]
  %2962 = phi float [ %2958, %2952 ], [ %2397, %2935 ]
  %2963 = phi float [ %2959, %2952 ], [ %2398, %2935 ]
  %2964 = phi float [ %2954, %2952 ], [ %2399, %2935 ]
  %2965 = phi float [ %2955, %2952 ], [ %2400, %2935 ]
  %2966 = phi float [ %2956, %2952 ], [ %2401, %2935 ]
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 3
  %2970 = icmp eq i32 %2969, 3
  br i1 %2970, label %3049, label %2971

; <label>:2971                                    ; preds = %2960
  %2972 = and i32 %2968, 16
  %2973 = icmp ne i32 %2972, 0
  %2974 = select i1 %2973, float %2588, float 0.000000e+00
  %2975 = icmp eq i32 %2969, 0
  br i1 %2975, label %2976, label %3004

; <label>:2976                                    ; preds = %2971
  %2977 = and i32 %2968, 64
  %2978 = icmp ne i32 %2977, 0
  %2979 = select i1 %2978, float %2588, float 0.000000e+00
  %2980 = fsub fast float %2808, %2964
  %2981 = fsub fast float %2809, %2965
  %2982 = fsub fast float %2810, %2966
  %2983 = fmul fast float %2974, %2980
  %2984 = fmul fast float %2974, %2981
  %2985 = fmul fast float %2974, %2982
  %2986 = fadd fast float %2983, %2964
  %2987 = fadd fast float %2984, %2965
  %2988 = fadd fast float %2985, %2966
  %2989 = fsub fast float %2794, %2402
  %2990 = fmul fast float %2974, %2989
  %2991 = fadd fast float %2990, %2402
  %2992 = fsub fast float %2936, %2961
  %2993 = fsub fast float %2937, %2962
  %2994 = fsub fast float %2938, %2963
  %2995 = fmul fast float %2979, %2992
  %2996 = fmul fast float %2979, %2993
  %2997 = fmul fast float %2979, %2994
  %2998 = fadd fast float %2995, %2961
  %2999 = fadd fast float %2996, %2962
  %3000 = fadd fast float %2997, %2963
  %3001 = fsub fast float %2951, %2405
  %3002 = fmul fast float %2974, %3001
  %3003 = fadd fast float %3002, %2405
  br label %3049

; <label>:3004                                    ; preds = %2971
  %3005 = icmp eq i32 %2969, 1
  br i1 %3005, label %3006, label %3019

; <label>:3006                                    ; preds = %3004
  %3007 = fadd fast float %2808, -1.000000e+00
  %3008 = fadd fast float %2809, -1.000000e+00
  %3009 = fadd fast float %2810, -1.000000e+00
  %3010 = fmul fast float %2974, %3007
  %3011 = fmul fast float %2974, %3008
  %3012 = fmul fast float %2974, %3009
  %3013 = fadd fast float %3010, 1.000000e+00
  %3014 = fadd fast float %3011, 1.000000e+00
  %3015 = fadd fast float %3012, 1.000000e+00
  %3016 = fmul fast float %3013, %2964
  %3017 = fmul fast float %3014, %2965
  %3018 = fmul fast float %3015, %2966
  br label %3049

; <label>:3019                                    ; preds = %3004
  %3020 = icmp eq i32 %2969, 2
  br i1 %3020, label %3021, label %3049

; <label>:3021                                    ; preds = %3019
  %3022 = call float @dx.op.unary.f32(i32 24, float %2808)  ; Sqrt(value)
  %3023 = call float @dx.op.unary.f32(i32 24, float %2809)  ; Sqrt(value)
  %3024 = call float @dx.op.unary.f32(i32 24, float %2810)  ; Sqrt(value)
  %3025 = fadd fast float %3022, -5.000000e-01
  %3026 = fadd fast float %3023, -5.000000e-01
  %3027 = fadd fast float %3024, -5.000000e-01
  %3028 = fmul fast float %3025, %2974
  %3029 = fmul fast float %3026, %2974
  %3030 = fmul fast float %3027, %2974
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = fadd fast float %3029, 5.000000e-01
  %3033 = fadd fast float %3030, 5.000000e-01
  %3034 = fmul fast float %3031, 2.000000e+00
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = fmul fast float %3035, %2964
  %3037 = fadd fast float %3036, %3034
  %3038 = fmul fast float %3037, %2964
  %3039 = fmul fast float %3032, 2.000000e+00
  %3040 = fsub fast float 1.000000e+00, %3039
  %3041 = fmul fast float %3040, %2965
  %3042 = fadd fast float %3041, %3039
  %3043 = fmul fast float %3042, %2965
  %3044 = fmul fast float %3033, 2.000000e+00
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = fmul fast float %3045, %2966
  %3047 = fadd fast float %3046, %3044
  %3048 = fmul fast float %3047, %2966
  br label %3049

; <label>:3049                                    ; preds = %3021, %3019, %3006, %2976, %2960
  %3050 = phi float [ %2961, %2960 ], [ %2961, %3021 ], [ %2961, %3019 ], [ %2961, %3006 ], [ %2998, %2976 ]
  %3051 = phi float [ %2962, %2960 ], [ %2962, %3021 ], [ %2962, %3019 ], [ %2962, %3006 ], [ %2999, %2976 ]
  %3052 = phi float [ %2963, %2960 ], [ %2963, %3021 ], [ %2963, %3019 ], [ %2963, %3006 ], [ %3000, %2976 ]
  %3053 = phi float [ %2964, %2960 ], [ %3038, %3021 ], [ %2964, %3019 ], [ %3016, %3006 ], [ %2986, %2976 ]
  %3054 = phi float [ %2965, %2960 ], [ %3043, %3021 ], [ %2965, %3019 ], [ %3017, %3006 ], [ %2987, %2976 ]
  %3055 = phi float [ %2966, %2960 ], [ %3048, %3021 ], [ %2966, %3019 ], [ %3018, %3006 ], [ %2988, %2976 ]
  %3056 = phi float [ %2402, %2960 ], [ %2402, %3021 ], [ %2402, %3019 ], [ %2402, %3006 ], [ %2991, %2976 ]
  %3057 = phi float [ %2405, %2960 ], [ %2405, %3021 ], [ %2405, %3019 ], [ %2405, %3006 ], [ %3003, %2976 ]
  %3058 = and i32 %2968, 12
  %3059 = icmp eq i32 %3058, 12
  br i1 %3059, label %3132, label %3060

; <label>:3060                                    ; preds = %3049
  %3061 = and i32 %2968, 2097184
  %3062 = icmp eq i32 %3061, 2097184
  %3063 = select i1 %3062, float %2588, float 0.000000e+00
  %3064 = and i32 %2968, 4194336
  %3065 = icmp eq i32 %3064, 4194336
  %3066 = select i1 %3065, float %2588, float 0.000000e+00
  %3067 = and i32 %2968, 8388640
  %3068 = icmp eq i32 %3067, 8388640
  %3069 = select i1 %3068, float %2588, float 0.000000e+00
  %3070 = icmp eq i32 %3058, 0
  br i1 %3070, label %3071, label %3084

; <label>:3071                                    ; preds = %3060
  %3072 = fsub fast float %2889, %2394
  %3073 = fsub fast float %2890, %2395
  %3074 = fmul fast float %3063, %3072
  %3075 = fmul fast float %3063, %3073
  %3076 = fadd fast float %3074, %2394
  %3077 = fadd fast float %3075, %2395
  %3078 = fsub fast float %2891, %2404
  %3079 = fmul fast float %3066, %3078
  %3080 = fadd fast float %3079, %2404
  %3081 = fsub fast float %2888, %2403
  %3082 = fmul fast float %3069, %3081
  %3083 = fadd fast float %3082, %2403
  br label %3132

; <label>:3084                                    ; preds = %3060
  %3085 = icmp eq i32 %3058, 4
  br i1 %3085, label %3086, label %3118

; <label>:3086                                    ; preds = %3084
  %3087 = fmul fast float %3063, %2889
  %3088 = fmul fast float %3063, %2890
  %3089 = fadd fast float %3087, %2394
  %3090 = fadd fast float %3088, %2395
  %3091 = call float @dx.op.binary.f32(i32 36, float %2404, float %2891)  ; FMin(a,b)
  %3092 = fsub fast float %3091, %2404
  %3093 = fmul fast float %3092, %3066
  %3094 = fadd fast float %3093, %2404
  %3095 = fadd fast float %2888, %2403
  %3096 = fmul fast float %3095, 0x3FF337FAE0000000
  %3097 = fmul fast float %2403, %2403
  %3098 = fmul fast float %2888, %2888
  %3099 = fadd fast float %3098, %3097
  %3100 = fmul fast float %3099, 0x3FE5152B00000000
  %3101 = fmul fast float %2403, 0xBFCC1F85E0000000
  %3102 = fmul fast float %3101, %2888
  %3103 = fadd fast float %3102, 0xBFE1363700000000
  %3104 = fadd fast float %3103, %3096
  %3105 = fsub fast float %3104, %3100
  %3106 = fmul fast float %3095, 0x3FBA6F0D00000000
  %3107 = fmul fast float %3099, 0x3FD0432880000000
  %3108 = fmul fast float %2403, 0xBFEF110800000000
  %3109 = fmul fast float %3108, %2888
  %3110 = fadd fast float %3109, 1.000000e+00
  %3111 = fsub fast float %3110, %3106
  %3112 = fadd fast float %3111, %3107
  %3113 = fdiv fast float %3105, %3112
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3115 = fsub fast float %3114, %2403
  %3116 = fmul fast float %3115, %3069
  %3117 = fadd fast float %3116, %2403
  br label %3132

; <label>:3118                                    ; preds = %3084
  %3119 = icmp eq i32 %3058, 8
  br i1 %3119, label %3120, label %3132

; <label>:3120                                    ; preds = %3118
  %3121 = fmul fast float %3063, %2889
  %3122 = fmul fast float %3063, %2890
  %3123 = fadd fast float %3121, %2394
  %3124 = fadd fast float %3122, %2395
  %3125 = call float @dx.op.binary.f32(i32 36, float %2404, float %2891)  ; FMin(a,b)
  %3126 = fsub fast float %3125, %2404
  %3127 = fmul fast float %3126, %3066
  %3128 = fadd fast float %3127, %2404
  %3129 = fsub fast float %2888, %2403
  %3130 = fmul fast float %3069, %3129
  %3131 = fadd fast float %3130, %2403
  br label %3132

; <label>:3132                                    ; preds = %3120, %3118, %3086, %3071, %3049, %2587, %2406, %2393
  %3133 = phi float [ %2394, %3049 ], [ %2394, %2587 ], [ %2394, %2393 ], [ %2394, %2406 ], [ %3076, %3071 ], [ %3089, %3086 ], [ %2394, %3118 ], [ %3123, %3120 ]
  %3134 = phi float [ %2395, %3049 ], [ %2395, %2587 ], [ %2395, %2393 ], [ %2395, %2406 ], [ %3077, %3071 ], [ %3090, %3086 ], [ %2395, %3118 ], [ %3124, %3120 ]
  %3135 = phi float [ %3050, %3049 ], [ %2396, %2587 ], [ %2396, %2393 ], [ %2396, %2406 ], [ %3050, %3071 ], [ %3050, %3086 ], [ %3050, %3118 ], [ %3050, %3120 ]
  %3136 = phi float [ %3051, %3049 ], [ %2397, %2587 ], [ %2397, %2393 ], [ %2397, %2406 ], [ %3051, %3071 ], [ %3051, %3086 ], [ %3051, %3118 ], [ %3051, %3120 ]
  %3137 = phi float [ %3052, %3049 ], [ %2398, %2587 ], [ %2398, %2393 ], [ %2398, %2406 ], [ %3052, %3071 ], [ %3052, %3086 ], [ %3052, %3118 ], [ %3052, %3120 ]
  %3138 = phi float [ %3053, %3049 ], [ %2399, %2587 ], [ %2399, %2393 ], [ %2399, %2406 ], [ %3053, %3071 ], [ %3053, %3086 ], [ %3053, %3118 ], [ %3053, %3120 ]
  %3139 = phi float [ %3054, %3049 ], [ %2400, %2587 ], [ %2400, %2393 ], [ %2400, %2406 ], [ %3054, %3071 ], [ %3054, %3086 ], [ %3054, %3118 ], [ %3054, %3120 ]
  %3140 = phi float [ %3055, %3049 ], [ %2401, %2587 ], [ %2401, %2393 ], [ %2401, %2406 ], [ %3055, %3071 ], [ %3055, %3086 ], [ %3055, %3118 ], [ %3055, %3120 ]
  %3141 = phi float [ %3056, %3049 ], [ %2402, %2587 ], [ %2402, %2393 ], [ %2402, %2406 ], [ %3056, %3071 ], [ %3056, %3086 ], [ %3056, %3118 ], [ %3056, %3120 ]
  %3142 = phi float [ %2403, %3049 ], [ %2403, %2587 ], [ %2403, %2393 ], [ %2403, %2406 ], [ %3083, %3071 ], [ %3117, %3086 ], [ %2403, %3118 ], [ %3131, %3120 ]
  %3143 = phi float [ %2404, %3049 ], [ %2404, %2587 ], [ %2404, %2393 ], [ %2404, %2406 ], [ %3080, %3071 ], [ %3094, %3086 ], [ %2404, %3118 ], [ %3128, %3120 ]
  %3144 = phi float [ %3057, %3049 ], [ %2405, %2587 ], [ %2405, %2393 ], [ %2405, %2406 ], [ %3057, %3071 ], [ %3057, %3086 ], [ %3057, %3118 ], [ %3057, %3120 ]
  %3145 = add i32 %22, 360
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.i32 %3146, 1
  %3149 = bitcast i32 %3147 to float
  %3150 = bitcast i32 %3148 to float
  %3151 = fcmp fast oge float %3149, 0.000000e+00
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = select i1 %3151, float %3149, float %3153
  %3155 = fadd fast float %3154, %168
  %3156 = fmul fast float %3150, %169
  %3157 = add i32 %22, 456
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = fmul fast float %3156, %3163
  %3165 = fadd fast float %3155, %3164
  %3166 = and i32 %160, 65535
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = lshr i32 %160, 16
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = and i32 %161, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = fmul fast float %3167, %3138
  %3173 = fmul fast float %3169, %3139
  %3174 = fmul fast float %3171, %3140
  %3175 = shl i32 %162, 4
  %3176 = and i32 %3175, 32752
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = lshr i32 %162, 7
  %3179 = and i32 %3178, 32752
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = lshr i32 %162, 22
  %3182 = shl nuw nsw i32 %3181, 5
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = and i32 %163, 65535
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = fmul fast float %3177, %3135
  %3187 = fmul fast float %3186, %3185
  %3188 = fmul fast float %3180, %3136
  %3189 = fmul fast float %3188, %3185
  %3190 = fmul fast float %3183, %3137
  %3191 = fmul fast float %3190, %3185
  %3192 = call float @dx.op.dot2.f32(i32 54, float %3133, float %3134, float %3133, float %3134)  ; Dot2(ax,ay,bx,by)
  %3193 = fmul fast float %3192, 0x3FE3333340000000
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3133, float %3134, float %3194, float %3133, float %3134, float %3194)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = call float @dx.op.unary.f32(i32 25, float %3195)  ; Rsqrt(value)
  %3197 = fmul fast float %3196, %3133
  %3198 = fmul fast float %3196, %3134
  %3199 = fmul fast float %3194, %3196
  %3200 = fmul fast float %3199, %74
  %3201 = fmul fast float %3199, %75
  %3202 = fmul fast float %3199, %76
  %3203 = fmul fast float %3197, %48
  %3204 = fmul fast float %3197, %49
  %3205 = fmul fast float %3197, %50
  %3206 = fadd fast float %3200, %3203
  %3207 = fadd fast float %3201, %3204
  %3208 = fadd fast float %3202, %3205
  %3209 = fmul fast float %86, %3198
  %3210 = fmul fast float %87, %3198
  %3211 = fmul fast float %88, %3198
  %3212 = fadd fast float %3206, %3209
  %3213 = fadd fast float %3207, %3210
  %3214 = fadd fast float %3208, %3211
  %3215 = call float @dx.op.dot3.f32(i32 55, float %3212, float %3213, float %3214, float %3212, float %3213, float %3214)  ; Dot3(ax,ay,az,bx,by,bz)
  %3216 = call float @dx.op.unary.f32(i32 25, float %3215)  ; Rsqrt(value)
  %3217 = fmul fast float %3212, %3216
  %3218 = fmul fast float %3213, %3216
  %3219 = fmul fast float %3214, %3216
  %3220 = icmp eq i32 %24, 65535
  br i1 %3220, label %3735, label %3221

; <label>:3221                                    ; preds = %3132
  %3222 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %3223 = call float @dx.op.unary.f32(i32 83, float %26)  ; DerivCoarseX(value)
  %3224 = call float @dx.op.unary.f32(i32 83, float %27)  ; DerivCoarseX(value)
  %3225 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %3226 = call float @dx.op.unary.f32(i32 84, float %26)  ; DerivCoarseY(value)
  %3227 = call float @dx.op.unary.f32(i32 84, float %27)  ; DerivCoarseY(value)
  %3228 = fadd fast float %3222, %25
  %3229 = fadd fast float %3223, %26
  %3230 = fadd fast float %3224, %27
  %3231 = fadd fast float %3225, %25
  %3232 = fadd fast float %3226, %26
  %3233 = fadd fast float %3227, %27
  %3234 = mul i32 %24, 48
  %3235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = add i32 %3234, 16
  %3240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = add i32 %3234, 32
  %3245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.ResRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.ResRet.f32 %3245, 2
  %3249 = extractvalue %dx.types.ResRet.f32 %3245, 3
  %3250 = bitcast float %3249 to i32
  %3251 = fmul fast float %3236, %25
  %3252 = fmul fast float %3237, %26
  %3253 = fmul fast float %3238, %27
  %3254 = fsub fast float %3251, %3241
  %3255 = fsub fast float %3252, %3242
  %3256 = fsub fast float %3253, %3243
  %3257 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3258 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3259 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3260 = fmul fast float %3257, %3246
  %3261 = fmul fast float %3258, %3247
  %3262 = fmul fast float %3259, %3248
  %3263 = fadd fast float %3246, -1.000000e+00
  %3264 = fadd fast float %3247, -1.000000e+00
  %3265 = fadd fast float %3248, -1.000000e+00
  %3266 = call float @dx.op.unary.f32(i32 27, float %3260)  ; Round_ni(value)
  %3267 = call float @dx.op.unary.f32(i32 27, float %3261)  ; Round_ni(value)
  %3268 = call float @dx.op.unary.f32(i32 27, float %3262)  ; Round_ni(value)
  %3269 = call float @dx.op.binary.f32(i32 36, float %3266, float %3263)  ; FMin(a,b)
  %3270 = call float @dx.op.binary.f32(i32 36, float %3267, float %3264)  ; FMin(a,b)
  %3271 = call float @dx.op.binary.f32(i32 36, float %3268, float %3265)  ; FMin(a,b)
  %3272 = fmul fast float %3271, %3247
  %3273 = fadd fast float %3272, %3270
  %3274 = fmul fast float %3273, %3246
  %3275 = fadd fast float %3274, %3269
  %3276 = fptosi float %3275 to i32
  %3277 = add nsw i32 %3276, %3250
  %3278 = shl nsw i32 %3277, 2
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = lshr i32 %3280, 16
  %3282 = icmp eq i32 %3281, 0
  br i1 %3282, label %3704, label %3283

; <label>:3283                                    ; preds = %3221
  br label %3284

; <label>:3284                                    ; preds = %3405, %3283
  %3285 = phi i32 [ %3307, %3405 ], [ %3281, %3283 ]
  %3286 = phi float [ %3406, %3405 ], [ 0.000000e+00, %3283 ]
  %3287 = phi float [ %3407, %3405 ], [ %3165, %3283 ]
  %3288 = phi float [ %3408, %3405 ], [ %3144, %3283 ]
  %3289 = phi float [ %3409, %3405 ], [ 0.000000e+00, %3283 ]
  %3290 = phi float [ %3410, %3405 ], [ 0.000000e+00, %3283 ]
  %3291 = phi float [ %3411, %3405 ], [ %3187, %3283 ]
  %3292 = phi float [ %3412, %3405 ], [ %3189, %3283 ]
  %3293 = phi float [ %3413, %3405 ], [ %3191, %3283 ]
  %3294 = phi float [ %3414, %3405 ], [ %3217, %3283 ]
  %3295 = phi float [ %3415, %3405 ], [ %3218, %3283 ]
  %3296 = phi float [ %3416, %3405 ], [ %3219, %3283 ]
  %3297 = phi float [ %3417, %3405 ], [ %3143, %3283 ]
  %3298 = phi float [ %3418, %3405 ], [ %3142, %3283 ]
  %3299 = phi float [ %3419, %3405 ], [ 0.000000e+00, %3283 ]
  %3300 = phi float [ %3420, %3405 ], [ %3141, %3283 ]
  %3301 = phi float [ %3421, %3405 ], [ %3172, %3283 ]
  %3302 = phi float [ %3422, %3405 ], [ %3173, %3283 ]
  %3303 = phi float [ %3423, %3405 ], [ %3174, %3283 ]
  %3304 = shl nuw nsw i32 %3285, 2
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = lshr i32 %3306, 16
  %3308 = shl i32 %3306, 8
  %3309 = and i32 %3308, 16776960
  %3310 = or i32 %3309, 48
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = or i32 %3309, 64
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.i32 %3316, 1
  %3319 = or i32 %3309, 80
  %3320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 3
  %3323 = or i32 %3309, 96
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3329 = or i32 %3309, 112
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3332 = or i32 %3309, 128
  %3333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3338 = or i32 %3309, 144
  %3339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = extractvalue %dx.types.ResRet.f32 %3339, 3
  %3344 = or i32 %3309, 160
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = extractvalue %dx.types.ResRet.f32 %3345, 3
  %3350 = or i32 %3309, 192
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = or i32 %3309, 208
  %3354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.f32 %3354, 0
  %3356 = or i32 %3309, 248
  %3357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = call float @dx.op.dot4.f32(i32 56, float %3361, float %3362, float %3363, float %3364, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3366 = or i32 %3309, 16
  %3367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 1
  %3370 = extractvalue %dx.types.ResRet.f32 %3367, 2
  %3371 = extractvalue %dx.types.ResRet.f32 %3367, 3
  %3372 = call float @dx.op.dot4.f32(i32 56, float %3368, float %3369, float %3370, float %3371, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3373 = or i32 %3309, 32
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.ResRet.f32 %3374, 3
  %3379 = call float @dx.op.dot4.f32(i32 56, float %3375, float %3376, float %3377, float %3378, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3380 = call float @dx.op.unary.f32(i32 27, float %3365)  ; Round_ni(value)
  %3381 = call float @dx.op.unary.f32(i32 6, float %3380)  ; FAbs(value)
  %3382 = call float @dx.op.unary.f32(i32 27, float %3372)  ; Round_ni(value)
  %3383 = call float @dx.op.unary.f32(i32 6, float %3382)  ; FAbs(value)
  %3384 = call float @dx.op.unary.f32(i32 6, float %3379)  ; FAbs(value)
  %3385 = call float @dx.op.unary.f32(i32 27, float %3384)  ; Round_ni(value)
  %3386 = fadd fast float %3383, %3381
  %3387 = fadd fast float %3386, %3385
  %3388 = fcmp fast oeq float %3387, 0.000000e+00
  %3389 = call float @dx.op.dot4.f32(i32 56, float %3361, float %3362, float %3363, float %3364, float %3228, float %3229, float %3230, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3390 = call float @dx.op.dot4.f32(i32 56, float %3368, float %3369, float %3370, float %3371, float %3228, float %3229, float %3230, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3391 = call float @dx.op.dot4.f32(i32 56, float %3361, float %3362, float %3363, float %3364, float %3231, float %3232, float %3233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3392 = call float @dx.op.dot4.f32(i32 56, float %3368, float %3369, float %3370, float %3371, float %3231, float %3232, float %3233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3393 = fsub fast float %3389, %3365
  %3394 = fsub fast float %3391, %3365
  %3395 = fsub fast float %3390, %3372
  %3396 = fsub fast float %3392, %3372
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3312, float %3313, float %3314, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.f32 %3398, 2
  %3400 = fadd fast float %3399, %3397
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3398, 0
  %3403 = fcmp fast ogt float %3401, %3402
  %3404 = and i1 %3388, %3403
  br i1 %3404, label %3425, label %3405

; <label>:3405                                    ; preds = %3690, %3508, %3425, %3284
  %3406 = phi float [ %3286, %3425 ], [ %3511, %3508 ], [ %3511, %3690 ], [ %3286, %3284 ]
  %3407 = phi float [ %3287, %3425 ], [ %3287, %3508 ], [ %3665, %3690 ], [ %3287, %3284 ]
  %3408 = phi float [ %3288, %3425 ], [ %3288, %3508 ], [ %3663, %3690 ], [ %3288, %3284 ]
  %3409 = phi float [ %3289, %3425 ], [ %3289, %3508 ], [ %3635, %3690 ], [ %3289, %3284 ]
  %3410 = phi float [ %3290, %3425 ], [ %3290, %3508 ], [ %3633, %3690 ], [ %3290, %3284 ]
  %3411 = phi float [ %3291, %3425 ], [ %3291, %3508 ], [ %3700, %3690 ], [ %3291, %3284 ]
  %3412 = phi float [ %3292, %3425 ], [ %3292, %3508 ], [ %3701, %3690 ], [ %3292, %3284 ]
  %3413 = phi float [ %3293, %3425 ], [ %3293, %3508 ], [ %3702, %3690 ], [ %3293, %3284 ]
  %3414 = phi float [ %3294, %3425 ], [ %3294, %3508 ], [ %3614, %3690 ], [ %3294, %3284 ]
  %3415 = phi float [ %3295, %3425 ], [ %3295, %3508 ], [ %3615, %3690 ], [ %3295, %3284 ]
  %3416 = phi float [ %3296, %3425 ], [ %3296, %3508 ], [ %3616, %3690 ], [ %3296, %3284 ]
  %3417 = phi float [ %3297, %3425 ], [ %3297, %3508 ], [ %3643, %3690 ], [ %3297, %3284 ]
  %3418 = phi float [ %3298, %3425 ], [ %3298, %3508 ], [ %3640, %3690 ], [ %3298, %3284 ]
  %3419 = phi float [ %3299, %3425 ], [ %3299, %3508 ], [ %3637, %3690 ], [ %3299, %3284 ]
  %3420 = phi float [ %3300, %3425 ], [ %3300, %3508 ], [ %3631, %3690 ], [ %3300, %3284 ]
  %3421 = phi float [ %3301, %3425 ], [ %3301, %3508 ], [ %3626, %3690 ], [ %3301, %3284 ]
  %3422 = phi float [ %3302, %3425 ], [ %3302, %3508 ], [ %3627, %3690 ], [ %3302, %3284 ]
  %3423 = phi float [ %3303, %3425 ], [ %3303, %3508 ], [ %3628, %3690 ], [ %3303, %3284 ]
  %3424 = icmp eq i32 %3307, 0
  br i1 %3424, label %3703, label %3284

; <label>:3425                                    ; preds = %3284
  %3426 = extractvalue %dx.types.ResRet.f32 %3311, 3
  %3427 = extractvalue %dx.types.ResRet.f32 %3330, 3
  %3428 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3430 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3431 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3432 = extractvalue %dx.types.ResRet.i32 %3316, 3
  %3433 = extractvalue %dx.types.ResRet.i32 %3316, 2
  %3434 = bitcast float %3426 to i32
  %3435 = add i32 %3432, 0
  %3436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3436, %dx.types.Handle %3437, float %3365, float %3372, float undef, float undef, i32 0, i32 0, i32 undef, float %3393, float %3395, float undef, float %3394, float %3396, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = fmul fast float %3439, %3431
  %3441 = fadd fast float %3440, %3430
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3443 = fmul fast float %3365, %3325
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3326, float %3372, float %3443)  ; FMad(a,b,c)
  %3445 = fadd fast float %3444, %3429
  %3446 = fmul fast float %3365, %3327
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3372, float %3446)  ; FMad(a,b,c)
  %3448 = fadd fast float %3447, %3428
  %3449 = fmul fast float %3393, %3325
  %3450 = call float @dx.op.tertiary.f32(i32 46, float %3326, float %3395, float %3449)  ; FMad(a,b,c)
  %3451 = fmul fast float %3393, %3327
  %3452 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3395, float %3451)  ; FMad(a,b,c)
  %3453 = fmul fast float %3394, %3325
  %3454 = call float @dx.op.tertiary.f32(i32 46, float %3326, float %3396, float %3453)  ; FMad(a,b,c)
  %3455 = fmul fast float %3394, %3327
  %3456 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3396, float %3455)  ; FMad(a,b,c)
  %3457 = add i32 %3433, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3457, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3458, %dx.types.Handle %3437, float %3445, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3450, float %3452, float undef, float %3454, float %3456, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = and i32 %3434, 1024
  %3462 = icmp ne i32 %3461, 0
  %3463 = fcmp fast ogt float %3460, 0x3FE0101020000000
  %3464 = uitofp i1 %3463 to float
  %3465 = select i1 %3462, float %3464, float %3460
  %3466 = and i32 %3434, 8192
  %3467 = icmp ne i32 %3466, 0
  %3468 = select i1 %3467, float %3427, float 1.000000e+00
  %3469 = fmul fast float %3365, 2.000000e+00
  %3470 = fadd fast float %3469, -1.000000e+00
  %3471 = call float @dx.op.unary.f32(i32 6, float %3470)  ; FAbs(value)
  %3472 = fmul fast float %3471, %3358
  %3473 = fsub fast float %3472, %3358
  %3474 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  %3475 = fmul fast float %3372, 2.000000e+00
  %3476 = fadd fast float %3475, -1.000000e+00
  %3477 = call float @dx.op.unary.f32(i32 6, float %3476)  ; FAbs(value)
  %3478 = fmul fast float %3477, %3359
  %3479 = fsub fast float %3478, %3359
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = fmul fast float %3384, %3321
  %3482 = fsub fast float %3481, %3321
  %3483 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3484 = fmul fast float %3442, %3468
  %3485 = fmul fast float %3484, %3439
  %3486 = fmul fast float %3485, %3474
  %3487 = fmul fast float %3486, %3465
  %3488 = fmul fast float %3487, %3480
  %3489 = fmul fast float %3488, %3483
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3493 = fsub fast float %3401, %3492
  %3494 = fmul fast float %3493, %3491
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = fmul fast float %3489, %3322
  %3497 = fadd fast float %3489, %3322
  %3498 = fmul fast float %3497, %3331
  %3499 = fsub fast float %3498, %3331
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = and i32 %3434, 128
  %3502 = icmp ne i32 %3501, 0
  %3503 = select i1 %3502, float %3500, float %3496
  %3504 = fmul fast float %3503, %3495
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = fcmp fast ugt float %3504, %3506
  br i1 %3507, label %3508, label %3405

; <label>:3508                                    ; preds = %3425
  %3509 = select i1 %3467, float %3504, float 0.000000e+00
  %3510 = fadd fast float %3509, %3286
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  br i1 %3467, label %3405, label %3512

; <label>:3512                                    ; preds = %3508
  %3513 = and i32 %3434, 4
  %3514 = and i32 %3434, 8
  %3515 = add i32 %3317, 0
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3515, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3516, %dx.types.Handle %3517, float %3445, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3450, float %3452, float undef, float %3454, float %3456, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3523 = bitcast float %3343 to i32
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = lshr i32 %3523, 8
  %3527 = and i32 %3526, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = fmul fast float %3522, %3525
  %3530 = fadd fast float %3529, %3528
  %3531 = fmul fast float %3530, 0x3F70101000000000
  %3532 = add i32 %3318, 0
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3532, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3533, %dx.types.Handle %3517, float %3445, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3450, float %3452, float undef, float %3454, float %3456, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = extractvalue %dx.types.ResRet.f32 %3534, 3
  %3539 = bitcast float %3337 to i32
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = lshr i32 %3539, 8
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = lshr i32 %3539, 16
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = fmul fast float %3547, 0x3F70101000000000
  %3549 = fmul fast float %3535, %3541
  %3550 = fadd fast float %3549, %3544
  %3551 = fmul fast float %3550, 0x3F70101000000000
  %3552 = fadd fast float %3536, -5.000000e-01
  %3553 = fadd fast float %3538, -5.000000e-01
  %3554 = fmul fast float %3552, %3548
  %3555 = fmul fast float %3553, %3548
  %3556 = fadd fast float %3554, 5.000000e-01
  %3557 = fadd fast float %3555, 5.000000e-01
  %3558 = fmul fast float %3519, %3346
  %3559 = fmul fast float %3520, %3347
  %3560 = fmul fast float %3521, %3348
  %3561 = fmul fast float %3556, 2.000000e+00
  %3562 = fadd fast float %3561, -1.000000e+00
  %3563 = fmul fast float %3557, 2.000000e+00
  %3564 = fadd fast float %3563, -1.000000e+00
  %3565 = fadd fast float %3562, %3564
  %3566 = fmul fast float %3565, 5.000000e-01
  %3567 = fsub fast float %3562, %3564
  %3568 = fmul fast float %3567, 5.000000e-01
  %3569 = call float @dx.op.unary.f32(i32 6, float %3566)  ; FAbs(value)
  %3570 = fsub fast float 1.000000e+00, %3569
  %3571 = call float @dx.op.unary.f32(i32 6, float %3568)  ; FAbs(value)
  %3572 = fsub fast float %3570, %3571
  %3573 = call float @dx.op.dot3.f32(i32 55, float %3566, float %3568, float %3572, float %3566, float %3568, float %3572)  ; Dot3(ax,ay,az,bx,by,bz)
  %3574 = call float @dx.op.unary.f32(i32 25, float %3573)  ; Rsqrt(value)
  %3575 = fmul fast float %3566, %3574
  %3576 = fmul fast float %3568, %3574
  %3577 = fmul fast float %3574, %3572
  %3578 = fmul fast float %3577, %3312
  %3579 = fmul fast float %3577, %3313
  %3580 = fmul fast float %3577, %3314
  %3581 = fmul fast float %3575, %3334
  %3582 = fmul fast float %3575, %3335
  %3583 = fmul fast float %3575, %3336
  %3584 = fadd fast float %3581, %3578
  %3585 = fadd fast float %3582, %3579
  %3586 = fadd fast float %3583, %3580
  %3587 = fmul fast float %3576, %3340
  %3588 = fmul fast float %3576, %3341
  %3589 = fmul fast float %3576, %3342
  %3590 = fadd fast float %3584, %3587
  %3591 = fadd fast float %3585, %3588
  %3592 = fadd fast float %3586, %3589
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3591, float %3592, float %3590, float %3591, float %3592)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = call float @dx.op.unary.f32(i32 25, float %3593)  ; Rsqrt(value)
  %3595 = fmul fast float %3590, %3594
  %3596 = fmul fast float %3591, %3594
  %3597 = fmul fast float %3592, %3594
  %3598 = icmp ne i32 %3514, 0
  %3599 = select i1 %3598, float 1.000000e+00, float 0.000000e+00
  %3600 = fmul fast float %3504, %3599
  %3601 = and i32 %3434, 1
  %3602 = icmp eq i32 %3601, 0
  br i1 %3602, label %3603, label %3607

; <label>:3603                                    ; preds = %3512
  %3604 = fsub fast float %3595, %3294
  %3605 = fsub fast float %3596, %3295
  %3606 = fsub fast float %3597, %3296
  br label %3607

; <label>:3607                                    ; preds = %3603, %3512
  %3608 = phi float [ %3604, %3603 ], [ %3595, %3512 ]
  %3609 = phi float [ %3605, %3603 ], [ %3596, %3512 ]
  %3610 = phi float [ %3606, %3603 ], [ %3597, %3512 ]
  %3611 = fmul float %3610, %3600
  %3612 = fmul float %3609, %3600
  %3613 = fmul float %3608, %3600
  %3614 = fadd fast float %3613, %3294
  %3615 = fadd fast float %3612, %3295
  %3616 = fadd fast float %3611, %3296
  %3617 = icmp ne i32 %3513, 0
  %3618 = select i1 %3617, float 1.000000e+00, float 0.000000e+00
  %3619 = fmul fast float %3504, %3618
  %3620 = fsub fast float %3558, %3301
  %3621 = fsub fast float %3559, %3302
  %3622 = fsub fast float %3560, %3303
  %3623 = fmul fast float %3620, %3619
  %3624 = fmul fast float %3621, %3619
  %3625 = fmul fast float %3622, %3619
  %3626 = fadd fast float %3623, %3301
  %3627 = fadd fast float %3624, %3302
  %3628 = fadd fast float %3625, %3303
  %3629 = fsub fast float %3531, %3300
  %3630 = fmul fast float %3629, %3619
  %3631 = fadd fast float %3630, %3300
  %3632 = fmul fast float %3619, %3290
  %3633 = fsub fast float %3290, %3632
  %3634 = fmul fast float %3619, %3289
  %3635 = fsub fast float %3289, %3634
  %3636 = fadd fast float %3504, %3299
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3638 = fsub fast float %3551, %3298
  %3639 = fmul fast float %3638, %3600
  %3640 = fadd fast float %3639, %3298
  %3641 = fsub fast float %3537, %3297
  %3642 = fmul fast float %3641, %3600
  %3643 = fadd fast float %3642, %3297
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.CBufRet.f32 %3645, 1
  %3648 = fmul fast float %3647, %3644
  %3649 = fadd fast float %3648, %3646
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = bitcast float %3349 to i32
  %3652 = and i32 %3651, 65535
  %3653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3652)  ; LegacyF16ToF32(value)
  %3654 = lshr i32 %3651, 16
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = fcmp fast oge float %3653, 0.000000e+00
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = select i1 %3656, float %3653, float %3658
  %3660 = fadd fast float %3659, %3655
  %3661 = fsub fast float %3650, %3288
  %3662 = fmul fast float %3661, %3504
  %3663 = fadd fast float %3662, %3288
  %3664 = fmul fast float %3660, %3504
  %3665 = call float @dx.op.binary.f32(i32 35, float %3287, float %3664)  ; FMax(a,b)
  %3666 = and i32 %3434, 16
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3690, label %3668

; <label>:3668                                    ; preds = %3607
  %3669 = bitcast float %3355 to i32
  %3670 = add i32 %3352, 0
  %3671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3670, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3671, %dx.types.Handle %3517, float %3445, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3450, float %3452, float undef, float %3454, float %3456, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = and i32 %3669, 65535
  %3677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3676)  ; LegacyF16ToF32(value)
  %3678 = fmul fast float %3673, %3346
  %3679 = fmul fast float %3674, %3347
  %3680 = fmul fast float %3675, %3348
  %3681 = and i32 %3434, 16384
  %3682 = icmp ne i32 %3681, 0
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = select i1 %3682, float %3684, float 1.000000e+00
  %3686 = fmul fast float %3685, %3677
  %3687 = fmul fast float %3678, %3686
  %3688 = fmul fast float %3679, %3686
  %3689 = fmul fast float %3680, %3686
  br label %3690

; <label>:3690                                    ; preds = %3668, %3607
  %3691 = phi float [ %3687, %3668 ], [ 0.000000e+00, %3607 ]
  %3692 = phi float [ %3688, %3668 ], [ 0.000000e+00, %3607 ]
  %3693 = phi float [ %3689, %3668 ], [ 0.000000e+00, %3607 ]
  %3694 = fsub fast float %3691, %3291
  %3695 = fsub fast float %3692, %3292
  %3696 = fsub fast float %3693, %3293
  %3697 = fmul fast float %3694, %3504
  %3698 = fmul fast float %3695, %3504
  %3699 = fmul fast float %3696, %3504
  %3700 = fadd fast float %3697, %3291
  %3701 = fadd fast float %3698, %3292
  %3702 = fadd fast float %3699, %3293
  br label %3405

; <label>:3703                                    ; preds = %3405
  br label %3704

; <label>:3704                                    ; preds = %3703, %3221
  %3705 = phi float [ 0.000000e+00, %3221 ], [ %3406, %3703 ]
  %3706 = phi float [ %3165, %3221 ], [ %3407, %3703 ]
  %3707 = phi float [ %3144, %3221 ], [ %3408, %3703 ]
  %3708 = phi float [ 0.000000e+00, %3221 ], [ %3409, %3703 ]
  %3709 = phi float [ 0.000000e+00, %3221 ], [ %3410, %3703 ]
  %3710 = phi float [ %3187, %3221 ], [ %3411, %3703 ]
  %3711 = phi float [ %3189, %3221 ], [ %3412, %3703 ]
  %3712 = phi float [ %3191, %3221 ], [ %3413, %3703 ]
  %3713 = phi float [ %3217, %3221 ], [ %3414, %3703 ]
  %3714 = phi float [ %3218, %3221 ], [ %3415, %3703 ]
  %3715 = phi float [ %3219, %3221 ], [ %3416, %3703 ]
  %3716 = phi float [ %3143, %3221 ], [ %3417, %3703 ]
  %3717 = phi float [ %3142, %3221 ], [ %3418, %3703 ]
  %3718 = phi float [ 0.000000e+00, %3221 ], [ %3419, %3703 ]
  %3719 = phi float [ %3141, %3221 ], [ %3420, %3703 ]
  %3720 = phi float [ %3172, %3221 ], [ %3421, %3703 ]
  %3721 = phi float [ %3173, %3221 ], [ %3422, %3703 ]
  %3722 = phi float [ %3174, %3221 ], [ %3423, %3703 ]
  %3723 = call float @dx.op.dot3.f32(i32 55, float %3713, float %3714, float %3715, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3724 = call float @dx.op.unary.f32(i32 25, float %3723)  ; Rsqrt(value)
  %3725 = fmul fast float %3724, %3713
  %3726 = fmul fast float %3724, %3714
  %3727 = fmul fast float %3724, %3715
  %3728 = fadd fast float %3718, %924
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3726, float %3727, float %3725, float %3726, float %3727)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call float @dx.op.unary.f32(i32 25, float %3730)  ; Rsqrt(value)
  %3732 = fmul fast float %3731, %3725
  %3733 = fmul fast float %3731, %3726
  %3734 = fmul fast float %3731, %3727
  br label %3735

; <label>:3735                                    ; preds = %3704, %3132
  %3736 = phi float [ %3732, %3704 ], [ %3217, %3132 ]
  %3737 = phi float [ %3733, %3704 ], [ %3218, %3132 ]
  %3738 = phi float [ %3734, %3704 ], [ %3219, %3132 ]
  %3739 = phi float [ %3720, %3704 ], [ %3172, %3132 ]
  %3740 = phi float [ %3721, %3704 ], [ %3173, %3132 ]
  %3741 = phi float [ %3722, %3704 ], [ %3174, %3132 ]
  %3742 = phi float [ %3710, %3704 ], [ %3187, %3132 ]
  %3743 = phi float [ %3711, %3704 ], [ %3189, %3132 ]
  %3744 = phi float [ %3712, %3704 ], [ %3191, %3132 ]
  %3745 = phi float [ %3719, %3704 ], [ %3141, %3132 ]
  %3746 = phi float [ %3729, %3704 ], [ %924, %3132 ]
  %3747 = phi float [ %3717, %3704 ], [ %3142, %3132 ]
  %3748 = phi float [ %3716, %3704 ], [ %3143, %3132 ]
  %3749 = phi float [ %3709, %3704 ], [ 0.000000e+00, %3132 ]
  %3750 = phi float [ %3708, %3704 ], [ 0.000000e+00, %3132 ]
  %3751 = phi float [ %3705, %3704 ], [ 0.000000e+00, %3132 ]
  %3752 = phi float [ %3706, %3704 ], [ %3165, %3132 ]
  %3753 = phi float [ %3707, %3704 ], [ %3144, %3132 ]
  %3754 = fadd fast float %3745, 0xBFB99999A0000000
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3755, 0x3FF1C71C80000000
  %3757 = call float @dx.op.binary.f32(i32 36, float %3745, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3758 = fsub fast float 1.000000e+00, %3756
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3759, %3739
  %3761 = fmul fast float %3759, %3740
  %3762 = fmul fast float %3759, %3741
  %3763 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3764 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3765 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3766 = fmul fast float %3756, %3739
  %3767 = fmul fast float %3756, %3740
  %3768 = fmul fast float %3756, %3741
  %3769 = fadd fast float %3766, %3757
  %3770 = fadd fast float %3767, %3757
  %3771 = fadd fast float %3768, %3757
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.i32 %3776, 3
  %3778 = and i32 %3777, 8
  %3779 = icmp ne i32 %3778, 0
  %3780 = call float @dx.op.binary.f32(i32 35, float %3763, float %3739)  ; FMax(a,b)
  %3781 = call float @dx.op.binary.f32(i32 35, float %3764, float %3739)  ; FMax(a,b)
  %3782 = call float @dx.op.binary.f32(i32 35, float %3765, float %3739)  ; FMax(a,b)
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3763, float %3764, float %3765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = select i1 %208, float %3739, float %3763
  %3785 = select i1 %208, float %3783, float %3764
  %3786 = select i1 %208, float 1.000000e+00, float %3765
  %3787 = select i1 %3779, float %3780, float %3784
  %3788 = select i1 %3779, float %3781, float %3785
  %3789 = select i1 %3779, float %3782, float %3786
  %3790 = and i32 %184, 3
  %3791 = select i1 %178, i32 %3790, i32 0
  %3792 = icmp eq i32 %3791, 1
  br i1 %3792, label %3793, label %3869

; <label>:3793                                    ; preds = %3735
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %3797 = fadd fast float %3795, %154
  %3798 = fadd fast float %3796, %155
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = fsub fast float %3797, %3800
  %3803 = fsub fast float %3798, %3801
  %3804 = fmul fast float %3802, %3802
  %3805 = fmul fast float %3803, %3803
  %3806 = fadd fast float %3804, %3805
  %3807 = call float @dx.op.unary.f32(i32 24, float %3806)  ; Sqrt(value)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3809 = fcmp fast olt float %3807, %3808
  br i1 %3809, label %3810, label %3863

; <label>:3810                                    ; preds = %3793
  %3811 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3812 = fadd fast float %3811, %156
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3820 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3821 = extractvalue %dx.types.CBufRet.f32 %3817, 1
  %3822 = extractvalue %dx.types.CBufRet.f32 %3813, 3
  %3823 = extractvalue %dx.types.CBufRet.f32 %3815, 3
  %3824 = extractvalue %dx.types.CBufRet.f32 %3817, 3
  %3825 = fadd fast float %3822, %3797
  %3826 = fadd fast float %3823, %3798
  %3827 = fadd fast float %3812, %3824
  %3828 = fmul fast float %3825, %3814
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3816, float %3828)  ; FMad(a,b,c)
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3818, float %3829)  ; FMad(a,b,c)
  %3831 = fmul fast float %3825, %3819
  %3832 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3820, float %3831)  ; FMad(a,b,c)
  %3833 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3821, float %3832)  ; FMad(a,b,c)
  %3834 = fsub fast float %3830, %3822
  %3835 = fsub fast float %3833, %3823
  %3836 = fsub fast float %3834, %3800
  %3837 = fadd fast float %3836, %3808
  %3838 = fsub fast float %3835, %3801
  %3839 = fadd fast float %3838, %3808
  %3840 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3841 = fmul fast float %3837, %3840
  %3842 = fmul fast float %3839, %3840
  %3843 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3844 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3845 = fsub fast float 1.000000e+00, %3843
  %3846 = fsub fast float 1.000000e+00, %3844
  %3847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %3845, float %3846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = fcmp fast ugt float %3848, 0.000000e+00
  br i1 %3849, label %3850, label %3863

; <label>:3850                                    ; preds = %3810
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3853 = fmul fast float %3852, %3848
  %3854 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3855 = fadd fast float %3854, %3853
  %3856 = extractvalue %dx.types.CBufRet.f32 %3817, 2
  %3857 = fadd fast float %3855, %3824
  %3858 = fmul fast float %3830, %3818
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3821, float %3858)  ; FMad(a,b,c)
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3856, float %3859)  ; FMad(a,b,c)
  %3861 = fsub fast float %3860, %3824
  %3862 = fsub fast float %3861, %3811
  br label %3863

; <label>:3863                                    ; preds = %3850, %3810, %3793
  %3864 = phi i1 [ true, %3850 ], [ false, %3810 ], [ false, %3793 ]
  %3865 = phi float [ %3862, %3850 ], [ -1.310720e+05, %3810 ], [ -1.310720e+05, %3793 ]
  %3866 = fsub fast float %3865, %156
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = select i1 %3864, float %3867, float 1.000000e+00
  br label %3869

; <label>:3869                                    ; preds = %3863, %3735
  %3870 = phi float [ %3868, %3863 ], [ 0.000000e+00, %3735 ]
  %3871 = icmp eq i32 %3791, 3
  %3872 = select i1 %3871, float 1.000000e+00, float %3870
  %3873 = call float @dx.op.binary.f32(i32 35, float %3751, float %3872)  ; FMax(a,b)
  %3874 = fcmp fast olt float %3872, 1.000000e+00
  %3875 = fcmp uge float %38, 0.000000e+00
  %3876 = and i1 %3875, %3874
  br i1 %3876, label %3877, label %3887

; <label>:3877                                    ; preds = %3869
  %3878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %38, float %39, float %40, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = fadd fast float %3879, %3873
  %3883 = fcmp ule float %37, 0.000000e+00
  %3884 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = select i1 %3883, float %3884, float 1.000000e+00
  %3886 = fmul fast float %3885, %3881
  br label %3887

; <label>:3887                                    ; preds = %3877, %3869
  %3888 = phi float [ %3882, %3877 ], [ %3873, %3869 ]
  %3889 = phi float [ %3880, %3877 ], [ 0.000000e+00, %3869 ]
  %3890 = phi float [ %3886, %3877 ], [ 0.000000e+00, %3869 ]
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = fcmp fast une float %3892, 0.000000e+00
  %3895 = fcmp fast une float %3893, 0.000000e+00
  %3896 = or i1 %3894, %3895
  br i1 %3896, label %3897, label %4456

; <label>:3897                                    ; preds = %3887
  br i1 %3894, label %3898, label %4171

; <label>:3898                                    ; preds = %3897
  %3899 = call float @dx.op.unary.f32(i32 23, float %3748)  ; Log(value)
  %3900 = fmul fast float %3899, 4.000000e+00
  %3901 = call float @dx.op.unary.f32(i32 21, float %3900)  ; Exp(value)
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = fmul fast float %3903, %25
  %3905 = fmul fast float %3903, %26
  %3906 = fmul fast float %3903, %27
  %3907 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %3908 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %3909 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %3910 = call float @dx.op.unary.f32(i32 23, float %3907)  ; Log(value)
  %3911 = call float @dx.op.unary.f32(i32 23, float %3908)  ; Log(value)
  %3912 = call float @dx.op.unary.f32(i32 23, float %3909)  ; Log(value)
  %3913 = fmul fast float %3910, 4.000000e+00
  %3914 = fmul fast float %3911, 4.000000e+00
  %3915 = fmul fast float %3912, 4.000000e+00
  %3916 = call float @dx.op.unary.f32(i32 21, float %3913)  ; Exp(value)
  %3917 = call float @dx.op.unary.f32(i32 21, float %3914)  ; Exp(value)
  %3918 = call float @dx.op.unary.f32(i32 21, float %3915)  ; Exp(value)
  %3919 = fadd fast float %3917, %3916
  %3920 = fadd fast float %3919, %3918
  %3921 = fdiv fast float 1.000000e+00, %3920
  %3922 = fmul fast float %3921, %3916
  %3923 = fcmp fast ogt float %34, 0.000000e+00
  %3924 = fcmp fast ogt float %35, 0.000000e+00
  %3925 = fcmp fast ogt float %36, 0.000000e+00
  %3926 = fcmp fast olt float %34, 0.000000e+00
  %3927 = fcmp fast olt float %35, 0.000000e+00
  %3928 = fcmp fast olt float %36, 0.000000e+00
  %3929 = zext i1 %3923 to i32
  %3930 = zext i1 %3924 to i32
  %3931 = zext i1 %3925 to i32
  %3932 = zext i1 %3926 to i32
  %3933 = zext i1 %3927 to i32
  %3934 = zext i1 %3928 to i32
  %3935 = sub nsw i32 %3929, %3932
  %3936 = sub nsw i32 %3930, %3933
  %3937 = sub nsw i32 %3931, %3934
  %3938 = call float @dx.op.unary.f32(i32 83, float %3904)  ; DerivCoarseX(value)
  %3939 = call float @dx.op.unary.f32(i32 83, float %3905)  ; DerivCoarseX(value)
  %3940 = call float @dx.op.unary.f32(i32 83, float %3906)  ; DerivCoarseX(value)
  %3941 = call float @dx.op.unary.f32(i32 84, float %3904)  ; DerivCoarseY(value)
  %3942 = call float @dx.op.unary.f32(i32 84, float %3905)  ; DerivCoarseY(value)
  %3943 = call float @dx.op.unary.f32(i32 84, float %3906)  ; DerivCoarseY(value)
  %3944 = fcmp fast ole float %219, %3922
  %3945 = fmul fast float %3921, %3919
  %3946 = fcmp fast ole float %219, %3945
  %3947 = select i1 %3946, float %3906, float %3904
  %3948 = select i1 %3946, float %3904, float %3905
  %3949 = select i1 %3944, float %3905, float %3947
  %3950 = select i1 %3944, float %3906, float %3948
  %3951 = select i1 %3946, float %3940, float %3938
  %3952 = select i1 %3946, float %3938, float %3939
  %3953 = select i1 %3944, float %3939, float %3951
  %3954 = select i1 %3944, float %3940, float %3952
  %3955 = select i1 %3946, float %3943, float %3941
  %3956 = select i1 %3946, float %3941, float %3942
  %3957 = select i1 %3944, float %3942, float %3955
  %3958 = select i1 %3944, float %3943, float %3956
  %3959 = call float @dx.op.unary.f32(i32 27, float %3949)  ; Round_ni(value)
  %3960 = call float @dx.op.unary.f32(i32 27, float %3950)  ; Round_ni(value)
  %3961 = fptosi float %3959 to i32
  %3962 = fptosi float %3960 to i32
  %3963 = xor i32 %3962, %3961
  %3964 = sitofp i32 %3963 to float
  %3965 = fptosi float %3964 to i32
  %3966 = sitofp i32 %3965 to float
  %3967 = fmul fast float %3966, 0x3FE3C6EF40000000
  %3968 = frem fast float %3959, 2.560000e+02
  %3969 = frem fast float %3960, 2.560000e+02
  %3970 = fptoui float %3968 to i32
  %3971 = fptoui float %3969 to i32
  %3972 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %3970, i32 %3971, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = fadd fast float %3973, %3967
  %3977 = fadd fast float %3974, %3967
  %3978 = fadd fast float %3975, %3967
  %3979 = call float @dx.op.unary.f32(i32 22, float %3976)  ; Frc(value)
  %3980 = call float @dx.op.unary.f32(i32 22, float %3977)  ; Frc(value)
  %3981 = call float @dx.op.unary.f32(i32 22, float %3978)  ; Frc(value)
  %3982 = fmul fast float %3981, 0x401921FB60000000
  %3983 = call float @dx.op.unary.f32(i32 13, float %3982)  ; Sin(value)
  %3984 = call float @dx.op.unary.f32(i32 12, float %3982)  ; Cos(value)
  %3985 = fsub fast float -0.000000e+00, %3984
  %3986 = fmul fast float %3984, %3949
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3950, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3983, %3949
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3985, float %3950, float %3988)  ; FMad(a,b,c)
  %3990 = fadd fast float %3987, %3979
  %3991 = fadd fast float %3989, %3980
  %3992 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3993 = bitcast float %3992 to i32
  %3994 = icmp eq i32 %3993, 0
  br i1 %3994, label %4033, label %3995

; <label>:3995                                    ; preds = %3898
  %3996 = add i32 %3993, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3997, %dx.types.Handle %64, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3954, float undef, float %3957, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %4000, 2
  %4003 = fsub fast float 1.000000e+00, %3892
  %4004 = call float @dx.op.binary.f32(i32 35, float %4003, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4005 = bitcast float %3892 to i32
  %4006 = sitofp i32 %4005 to float
  %4007 = fadd fast float %4006, 0xC1CFBF8940000000
  %4008 = fmul fast float %4002, %4007
  %4009 = fadd fast float %4008, 0x41CFBF8940000000
  %4010 = fptosi float %4009 to i32
  %4011 = bitcast i32 %4010 to float
  %4012 = bitcast float %4004 to i32
  %4013 = sitofp i32 %4012 to float
  %4014 = fadd fast float %4013, 0xC1CFBF8940000000
  %4015 = fmul fast float %4014, %4002
  %4016 = fadd fast float %4015, 0x41CFBF8940000000
  %4017 = fptosi float %4016 to i32
  %4018 = bitcast i32 %4017 to float
  %4019 = fmul fast float %4011, %4001
  %4020 = fmul fast float %4018, %4001
  %4021 = fsub fast float %4004, %4019
  %4022 = fadd fast float %4020, %4004
  %4023 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4024 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4025 = fsub fast float %3999, %4023
  %4026 = fsub fast float %4024, %4023
  %4027 = bitcast float %4026 to i32
  %4028 = sub nsw i32 2129859010, %4027
  %4029 = bitcast i32 %4028 to float
  %4030 = fmul fast float %4029, %4025
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = fcmp fast olt float %4031, 0x3F70101020000000
  br i1 %4032, label %4171, label %4033

; <label>:4033                                    ; preds = %3995, %3898
  %4034 = phi float [ %4031, %3995 ], [ %3892, %3898 ]
  %4035 = fmul fast float %4034, %3901
  %4036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.i32 %4036, 1
  %4038 = extractvalue %dx.types.CBufRet.i32 %4036, 0
  %4039 = add i32 %4038, 0
  %4040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4040, %dx.types.Handle %63, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3954, float undef, float %3957, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = and i32 %4037, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4037, 8
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = fmul fast float %4045, %4047
  %4052 = fadd fast float %4051, %4050
  %4053 = fmul fast float %4052, 0x3F70101000000000
  %4054 = fadd fast float %4053, 0xBFB99999A0000000
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %4055, 0x3FF1C71C80000000
  %4057 = call float @dx.op.binary.f32(i32 36, float %4053, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4058 = fsub fast float 1.000000e+00, %4056
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %4059, %4042
  %4061 = fmul fast float %4059, %4043
  %4062 = fmul fast float %4059, %4044
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4065 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4066 = fmul fast float %4056, %4042
  %4067 = fmul fast float %4056, %4043
  %4068 = fmul fast float %4056, %4044
  %4069 = fadd fast float %4066, %4057
  %4070 = fadd fast float %4067, %4057
  %4071 = fadd fast float %4068, %4057
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.i32 %4075, 3
  %4077 = extractvalue %dx.types.CBufRet.i32 %4075, 2
  %4078 = add i32 %4077, 0
  %4079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4080 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4079, %dx.types.Handle %63, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3954, float undef, float %3957, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4083 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4084 = extractvalue %dx.types.ResRet.f32 %4080, 3
  %4085 = and i32 %4076, 255
  %4086 = uitofp i32 %4085 to float
  %4087 = lshr i32 %4076, 8
  %4088 = and i32 %4087, 255
  %4089 = uitofp i32 %4088 to float
  %4090 = lshr i32 %4076, 16
  %4091 = and i32 %4090, 255
  %4092 = uitofp i32 %4091 to float
  %4093 = fmul fast float %4092, 0x3F70101000000000
  %4094 = fmul fast float %4081, %4086
  %4095 = fadd fast float %4094, %4089
  %4096 = fmul fast float %4095, 0x3F70101000000000
  %4097 = fadd fast float %4082, -5.000000e-01
  %4098 = fadd fast float %4084, -5.000000e-01
  %4099 = fmul fast float %4097, %4093
  %4100 = fmul fast float %4098, %4093
  %4101 = fadd fast float %4099, 5.000000e-01
  %4102 = fadd fast float %4100, 5.000000e-01
  %4103 = fmul fast float %4101, 2.000000e+00
  %4104 = fadd fast float %4103, -1.000000e+00
  %4105 = fmul fast float %4102, 2.000000e+00
  %4106 = fadd fast float %4105, -1.000000e+00
  %4107 = fadd fast float %4104, %4106
  %4108 = fmul fast float %4107, 5.000000e-01
  %4109 = fsub fast float %4104, %4106
  %4110 = fmul fast float %4109, 5.000000e-01
  %4111 = call float @dx.op.unary.f32(i32 6, float %4108)  ; FAbs(value)
  %4112 = fsub fast float 1.000000e+00, %4111
  %4113 = call float @dx.op.unary.f32(i32 6, float %4110)  ; FAbs(value)
  %4114 = fsub fast float %4112, %4113
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4110, float %4114, float %4108, float %4110, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = call float @dx.op.unary.f32(i32 25, float %4115)  ; Rsqrt(value)
  %4117 = fmul fast float %4108, %4116
  %4118 = fmul fast float %4110, %4116
  %4119 = select i1 %3946, i32 %3936, i32 %3937
  %4120 = select i1 %3944, i32 %3935, i32 %4119
  %4121 = sitofp i32 %4120 to float
  %4122 = fmul fast float %4114, %4121
  %4123 = fmul fast float %4122, %4116
  %4124 = select i1 %3946, float %4123, float %4118
  %4125 = select i1 %3946, float %4118, float %4123
  %4126 = select i1 %3944, float %4123, float %4117
  %4127 = select i1 %3944, float %4118, float %4124
  %4128 = select i1 %3944, float %4117, float %4125
  %4129 = fsub fast float %4063, %3787
  %4130 = fsub fast float %4064, %3788
  %4131 = fsub fast float %4065, %3789
  %4132 = fmul fast float %4129, %4035
  %4133 = fmul fast float %4130, %4035
  %4134 = fmul fast float %4131, %4035
  %4135 = fadd fast float %4132, %3787
  %4136 = fadd fast float %4133, %3788
  %4137 = fadd fast float %4134, %3789
  %4138 = fsub fast float %4072, %3772
  %4139 = fsub fast float %4073, %3773
  %4140 = fsub fast float %4074, %3774
  %4141 = fmul fast float %4138, %4035
  %4142 = fmul fast float %4139, %4035
  %4143 = fmul fast float %4140, %4035
  %4144 = fadd fast float %4141, %3772
  %4145 = fadd fast float %4142, %3773
  %4146 = fadd fast float %4143, %3774
  %4147 = fadd fast float %4126, %3736
  %4148 = fadd fast float %4127, %3737
  %4149 = fadd fast float %4128, %3738
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4147, float %4148, float %4149, float %4147, float %4148, float %4149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 25, float %4150)  ; Rsqrt(value)
  %4152 = fmul fast float %4147, %4151
  %4153 = fmul fast float %4148, %4151
  %4154 = fmul fast float %4149, %4151
  %4155 = fsub fast float %4152, %3736
  %4156 = fsub fast float %4153, %3737
  %4157 = fsub fast float %4154, %3738
  %4158 = fmul fast float %4155, %4035
  %4159 = fmul fast float %4156, %4035
  %4160 = fmul fast float %4157, %4035
  %4161 = fadd fast float %4158, %3736
  %4162 = fadd fast float %4159, %3737
  %4163 = fadd fast float %4160, %3738
  %4164 = call float @dx.op.binary.f32(i32 36, float %3748, float %4083)  ; FMin(a,b)
  %4165 = fsub fast float %4164, %3748
  %4166 = fmul fast float %4165, %4035
  %4167 = fadd fast float %4166, %3748
  %4168 = fsub fast float %4096, %3775
  %4169 = fmul fast float %4168, %4035
  %4170 = fadd fast float %4169, %3775
  br label %4171

; <label>:4171                                    ; preds = %4033, %3995, %3897
  %4172 = phi float [ %4144, %4033 ], [ %3772, %3995 ], [ %3772, %3897 ]
  %4173 = phi float [ %4145, %4033 ], [ %3773, %3995 ], [ %3773, %3897 ]
  %4174 = phi float [ %4146, %4033 ], [ %3774, %3995 ], [ %3774, %3897 ]
  %4175 = phi float [ %4161, %4033 ], [ %3736, %3995 ], [ %3736, %3897 ]
  %4176 = phi float [ %4162, %4033 ], [ %3737, %3995 ], [ %3737, %3897 ]
  %4177 = phi float [ %4163, %4033 ], [ %3738, %3995 ], [ %3738, %3897 ]
  %4178 = phi float [ %4135, %4033 ], [ %3787, %3995 ], [ %3787, %3897 ]
  %4179 = phi float [ %4136, %4033 ], [ %3788, %3995 ], [ %3788, %3897 ]
  %4180 = phi float [ %4137, %4033 ], [ %3789, %3995 ], [ %3789, %3897 ]
  %4181 = phi float [ %4170, %4033 ], [ %3775, %3995 ], [ %3775, %3897 ]
  %4182 = phi float [ %4167, %4033 ], [ %3748, %3995 ], [ %3748, %3897 ]
  br i1 %3895, label %4183, label %4456

; <label>:4183                                    ; preds = %4171
  %4184 = call float @dx.op.unary.f32(i32 23, float %4182)  ; Log(value)
  %4185 = fmul fast float %4184, 4.000000e+00
  %4186 = call float @dx.op.unary.f32(i32 21, float %4185)  ; Exp(value)
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = fmul fast float %4188, %25
  %4190 = fmul fast float %4188, %26
  %4191 = fmul fast float %4188, %27
  %4192 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %4193 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %4194 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %4195 = call float @dx.op.unary.f32(i32 23, float %4192)  ; Log(value)
  %4196 = call float @dx.op.unary.f32(i32 23, float %4193)  ; Log(value)
  %4197 = call float @dx.op.unary.f32(i32 23, float %4194)  ; Log(value)
  %4198 = fmul fast float %4195, 4.000000e+00
  %4199 = fmul fast float %4196, 4.000000e+00
  %4200 = fmul fast float %4197, 4.000000e+00
  %4201 = call float @dx.op.unary.f32(i32 21, float %4198)  ; Exp(value)
  %4202 = call float @dx.op.unary.f32(i32 21, float %4199)  ; Exp(value)
  %4203 = call float @dx.op.unary.f32(i32 21, float %4200)  ; Exp(value)
  %4204 = fadd fast float %4202, %4201
  %4205 = fadd fast float %4204, %4203
  %4206 = fdiv fast float 1.000000e+00, %4205
  %4207 = fmul fast float %4206, %4201
  %4208 = fcmp fast ogt float %34, 0.000000e+00
  %4209 = fcmp fast ogt float %35, 0.000000e+00
  %4210 = fcmp fast ogt float %36, 0.000000e+00
  %4211 = fcmp fast olt float %34, 0.000000e+00
  %4212 = fcmp fast olt float %35, 0.000000e+00
  %4213 = fcmp fast olt float %36, 0.000000e+00
  %4214 = zext i1 %4208 to i32
  %4215 = zext i1 %4209 to i32
  %4216 = zext i1 %4210 to i32
  %4217 = zext i1 %4211 to i32
  %4218 = zext i1 %4212 to i32
  %4219 = zext i1 %4213 to i32
  %4220 = sub nsw i32 %4214, %4217
  %4221 = sub nsw i32 %4215, %4218
  %4222 = sub nsw i32 %4216, %4219
  %4223 = call float @dx.op.unary.f32(i32 83, float %4189)  ; DerivCoarseX(value)
  %4224 = call float @dx.op.unary.f32(i32 83, float %4190)  ; DerivCoarseX(value)
  %4225 = call float @dx.op.unary.f32(i32 83, float %4191)  ; DerivCoarseX(value)
  %4226 = call float @dx.op.unary.f32(i32 84, float %4189)  ; DerivCoarseY(value)
  %4227 = call float @dx.op.unary.f32(i32 84, float %4190)  ; DerivCoarseY(value)
  %4228 = call float @dx.op.unary.f32(i32 84, float %4191)  ; DerivCoarseY(value)
  %4229 = fcmp fast ole float %219, %4207
  %4230 = fmul fast float %4206, %4204
  %4231 = fcmp fast ole float %219, %4230
  %4232 = select i1 %4231, float %4191, float %4189
  %4233 = select i1 %4231, float %4189, float %4190
  %4234 = select i1 %4229, float %4190, float %4232
  %4235 = select i1 %4229, float %4191, float %4233
  %4236 = select i1 %4231, float %4225, float %4223
  %4237 = select i1 %4231, float %4223, float %4224
  %4238 = select i1 %4229, float %4224, float %4236
  %4239 = select i1 %4229, float %4225, float %4237
  %4240 = select i1 %4231, float %4228, float %4226
  %4241 = select i1 %4231, float %4226, float %4227
  %4242 = select i1 %4229, float %4227, float %4240
  %4243 = select i1 %4229, float %4228, float %4241
  %4244 = call float @dx.op.unary.f32(i32 27, float %4234)  ; Round_ni(value)
  %4245 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4246 = fptosi float %4244 to i32
  %4247 = fptosi float %4245 to i32
  %4248 = xor i32 %4247, %4246
  %4249 = sitofp i32 %4248 to float
  %4250 = fptosi float %4249 to i32
  %4251 = sitofp i32 %4250 to float
  %4252 = fmul fast float %4251, 0x3FE3C6EF40000000
  %4253 = frem fast float %4244, 2.560000e+02
  %4254 = frem fast float %4245, 2.560000e+02
  %4255 = fptoui float %4253 to i32
  %4256 = fptoui float %4254 to i32
  %4257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %4255, i32 %4256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = fadd fast float %4258, %4252
  %4262 = fadd fast float %4259, %4252
  %4263 = fadd fast float %4260, %4252
  %4264 = call float @dx.op.unary.f32(i32 22, float %4261)  ; Frc(value)
  %4265 = call float @dx.op.unary.f32(i32 22, float %4262)  ; Frc(value)
  %4266 = call float @dx.op.unary.f32(i32 22, float %4263)  ; Frc(value)
  %4267 = fmul fast float %4266, 0x401921FB60000000
  %4268 = call float @dx.op.unary.f32(i32 13, float %4267)  ; Sin(value)
  %4269 = call float @dx.op.unary.f32(i32 12, float %4267)  ; Cos(value)
  %4270 = fsub fast float -0.000000e+00, %4269
  %4271 = fmul fast float %4269, %4234
  %4272 = call float @dx.op.tertiary.f32(i32 46, float %4268, float %4235, float %4271)  ; FMad(a,b,c)
  %4273 = fmul fast float %4268, %4234
  %4274 = call float @dx.op.tertiary.f32(i32 46, float %4270, float %4235, float %4273)  ; FMad(a,b,c)
  %4275 = fadd fast float %4272, %4264
  %4276 = fadd fast float %4274, %4265
  %4277 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4278 = bitcast float %4277 to i32
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4318, label %4280

; <label>:4280                                    ; preds = %4183
  %4281 = add i32 %4278, 0
  %4282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4283 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4282, %dx.types.Handle %64, float %4275, float %4276, float undef, float undef, i32 0, i32 0, i32 undef, float %4238, float %4239, float undef, float %4242, float %4243, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4288 = fsub fast float 1.000000e+00, %3893
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4290 = bitcast float %3893 to i32
  %4291 = sitofp i32 %4290 to float
  %4292 = fadd fast float %4291, 0xC1CFBF8940000000
  %4293 = fmul fast float %4287, %4292
  %4294 = fadd fast float %4293, 0x41CFBF8940000000
  %4295 = fptosi float %4294 to i32
  %4296 = bitcast i32 %4295 to float
  %4297 = bitcast float %4289 to i32
  %4298 = sitofp i32 %4297 to float
  %4299 = fadd fast float %4298, 0xC1CFBF8940000000
  %4300 = fmul fast float %4299, %4287
  %4301 = fadd fast float %4300, 0x41CFBF8940000000
  %4302 = fptosi float %4301 to i32
  %4303 = bitcast i32 %4302 to float
  %4304 = fmul fast float %4296, %4286
  %4305 = fmul fast float %4303, %4286
  %4306 = fsub fast float %4289, %4304
  %4307 = fadd fast float %4305, %4289
  %4308 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4310 = fsub fast float %4284, %4308
  %4311 = fsub fast float %4309, %4308
  %4312 = bitcast float %4311 to i32
  %4313 = sub nsw i32 2129859010, %4312
  %4314 = bitcast i32 %4313 to float
  %4315 = fmul fast float %4314, %4310
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = fcmp fast olt float %4316, 0x3F70101020000000
  br i1 %4317, label %4456, label %4318

; <label>:4318                                    ; preds = %4280, %4183
  %4319 = phi float [ %4316, %4280 ], [ %3893, %4183 ]
  %4320 = fmul fast float %4319, %4186
  %4321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.i32 %4321, 1
  %4323 = extractvalue %dx.types.CBufRet.i32 %4321, 0
  %4324 = add i32 %4323, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4325, %dx.types.Handle %63, float %4275, float %4276, float undef, float undef, i32 0, i32 0, i32 undef, float %4238, float %4239, float undef, float %4242, float %4243, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.ResRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.ResRet.f32 %4326, 2
  %4330 = extractvalue %dx.types.ResRet.f32 %4326, 3
  %4331 = and i32 %4322, 255
  %4332 = uitofp i32 %4331 to float
  %4333 = lshr i32 %4322, 8
  %4334 = and i32 %4333, 255
  %4335 = uitofp i32 %4334 to float
  %4336 = fmul fast float %4330, %4332
  %4337 = fadd fast float %4336, %4335
  %4338 = fmul fast float %4337, 0x3F70101000000000
  %4339 = fadd fast float %4338, 0xBFB99999A0000000
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4340, 0x3FF1C71C80000000
  %4342 = call float @dx.op.binary.f32(i32 36, float %4338, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4343 = fsub fast float 1.000000e+00, %4341
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4344, %4327
  %4346 = fmul fast float %4344, %4328
  %4347 = fmul fast float %4344, %4329
  %4348 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = fmul fast float %4341, %4327
  %4352 = fmul fast float %4341, %4328
  %4353 = fmul fast float %4341, %4329
  %4354 = fadd fast float %4351, %4342
  %4355 = fadd fast float %4352, %4342
  %4356 = fadd fast float %4353, %4342
  %4357 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.i32 %4360, 3
  %4362 = extractvalue %dx.types.CBufRet.i32 %4360, 2
  %4363 = add i32 %4362, 0
  %4364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4364, %dx.types.Handle %63, float %4275, float %4276, float undef, float undef, i32 0, i32 0, i32 undef, float %4238, float %4239, float undef, float %4242, float %4243, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = extractvalue %dx.types.ResRet.f32 %4365, 3
  %4370 = and i32 %4361, 255
  %4371 = uitofp i32 %4370 to float
  %4372 = lshr i32 %4361, 8
  %4373 = and i32 %4372, 255
  %4374 = uitofp i32 %4373 to float
  %4375 = lshr i32 %4361, 16
  %4376 = and i32 %4375, 255
  %4377 = uitofp i32 %4376 to float
  %4378 = fmul fast float %4377, 0x3F70101000000000
  %4379 = fmul fast float %4366, %4371
  %4380 = fadd fast float %4379, %4374
  %4381 = fmul fast float %4380, 0x3F70101000000000
  %4382 = fadd fast float %4367, -5.000000e-01
  %4383 = fadd fast float %4369, -5.000000e-01
  %4384 = fmul fast float %4382, %4378
  %4385 = fmul fast float %4383, %4378
  %4386 = fadd fast float %4384, 5.000000e-01
  %4387 = fadd fast float %4385, 5.000000e-01
  %4388 = fmul fast float %4386, 2.000000e+00
  %4389 = fadd fast float %4388, -1.000000e+00
  %4390 = fmul fast float %4387, 2.000000e+00
  %4391 = fadd fast float %4390, -1.000000e+00
  %4392 = fadd fast float %4389, %4391
  %4393 = fmul fast float %4392, 5.000000e-01
  %4394 = fsub fast float %4389, %4391
  %4395 = fmul fast float %4394, 5.000000e-01
  %4396 = call float @dx.op.unary.f32(i32 6, float %4393)  ; FAbs(value)
  %4397 = fsub fast float 1.000000e+00, %4396
  %4398 = call float @dx.op.unary.f32(i32 6, float %4395)  ; FAbs(value)
  %4399 = fsub fast float %4397, %4398
  %4400 = call float @dx.op.dot3.f32(i32 55, float %4393, float %4395, float %4399, float %4393, float %4395, float %4399)  ; Dot3(ax,ay,az,bx,by,bz)
  %4401 = call float @dx.op.unary.f32(i32 25, float %4400)  ; Rsqrt(value)
  %4402 = fmul fast float %4393, %4401
  %4403 = fmul fast float %4395, %4401
  %4404 = select i1 %4231, i32 %4221, i32 %4222
  %4405 = select i1 %4229, i32 %4220, i32 %4404
  %4406 = sitofp i32 %4405 to float
  %4407 = fmul fast float %4399, %4406
  %4408 = fmul fast float %4407, %4401
  %4409 = select i1 %4231, float %4408, float %4403
  %4410 = select i1 %4231, float %4403, float %4408
  %4411 = select i1 %4229, float %4408, float %4402
  %4412 = select i1 %4229, float %4403, float %4409
  %4413 = select i1 %4229, float %4402, float %4410
  %4414 = fsub fast float %4348, %4178
  %4415 = fsub fast float %4349, %4179
  %4416 = fsub fast float %4350, %4180
  %4417 = fmul fast float %4414, %4320
  %4418 = fmul fast float %4415, %4320
  %4419 = fmul fast float %4416, %4320
  %4420 = fadd fast float %4417, %4178
  %4421 = fadd fast float %4418, %4179
  %4422 = fadd fast float %4419, %4180
  %4423 = fsub fast float %4357, %4172
  %4424 = fsub fast float %4358, %4173
  %4425 = fsub fast float %4359, %4174
  %4426 = fmul fast float %4423, %4320
  %4427 = fmul fast float %4424, %4320
  %4428 = fmul fast float %4425, %4320
  %4429 = fadd fast float %4426, %4172
  %4430 = fadd fast float %4427, %4173
  %4431 = fadd fast float %4428, %4174
  %4432 = fadd fast float %4411, %4175
  %4433 = fadd fast float %4412, %4176
  %4434 = fadd fast float %4413, %4177
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 25, float %4435)  ; Rsqrt(value)
  %4437 = fmul fast float %4432, %4436
  %4438 = fmul fast float %4433, %4436
  %4439 = fmul fast float %4434, %4436
  %4440 = fsub fast float %4437, %4175
  %4441 = fsub fast float %4438, %4176
  %4442 = fsub fast float %4439, %4177
  %4443 = fmul fast float %4440, %4320
  %4444 = fmul fast float %4441, %4320
  %4445 = fmul fast float %4442, %4320
  %4446 = fadd fast float %4443, %4175
  %4447 = fadd fast float %4444, %4176
  %4448 = fadd fast float %4445, %4177
  %4449 = call float @dx.op.binary.f32(i32 36, float %4182, float %4368)  ; FMin(a,b)
  %4450 = fsub fast float %4449, %4182
  %4451 = fmul fast float %4450, %4320
  %4452 = fadd fast float %4451, %4182
  %4453 = fsub fast float %4381, %4181
  %4454 = fmul fast float %4453, %4320
  %4455 = fadd fast float %4454, %4181
  br label %4456

; <label>:4456                                    ; preds = %4318, %4280, %4171, %3887
  %4457 = phi float [ %4429, %4318 ], [ %4172, %4280 ], [ %4172, %4171 ], [ %3772, %3887 ]
  %4458 = phi float [ %4430, %4318 ], [ %4173, %4280 ], [ %4173, %4171 ], [ %3773, %3887 ]
  %4459 = phi float [ %4431, %4318 ], [ %4174, %4280 ], [ %4174, %4171 ], [ %3774, %3887 ]
  %4460 = phi float [ %4446, %4318 ], [ %4175, %4280 ], [ %4175, %4171 ], [ %3736, %3887 ]
  %4461 = phi float [ %4447, %4318 ], [ %4176, %4280 ], [ %4176, %4171 ], [ %3737, %3887 ]
  %4462 = phi float [ %4448, %4318 ], [ %4177, %4280 ], [ %4177, %4171 ], [ %3738, %3887 ]
  %4463 = phi float [ %4420, %4318 ], [ %4178, %4280 ], [ %4178, %4171 ], [ %3787, %3887 ]
  %4464 = phi float [ %4421, %4318 ], [ %4179, %4280 ], [ %4179, %4171 ], [ %3788, %3887 ]
  %4465 = phi float [ %4422, %4318 ], [ %4180, %4280 ], [ %4180, %4171 ], [ %3789, %3887 ]
  %4466 = phi float [ %4455, %4318 ], [ %4181, %4280 ], [ %4181, %4171 ], [ %3775, %3887 ]
  %4467 = phi float [ %4452, %4318 ], [ %4182, %4280 ], [ %4182, %4171 ], [ %3748, %3887 ]
  %4468 = fcmp fast une float %3891, 0.000000e+00
  %4469 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call float @dx.op.unary.f32(i32 25, float %4469)  ; Rsqrt(value)
  br i1 %4468, label %4478, label %4471

; <label>:4471                                    ; preds = %4456
  %4472 = fmul fast float %4470, %154
  %4473 = fmul fast float %4470, %155
  %4474 = fmul fast float %4470, %156
  %4475 = fsub fast float -0.000000e+00, %4472
  %4476 = fsub fast float -0.000000e+00, %4473
  %4477 = fsub fast float -0.000000e+00, %4474
  br label %4645

; <label>:4478                                    ; preds = %4456
  %4479 = fmul fast float %154, %4470
  %4480 = fsub fast float -0.000000e+00, %4479
  %4481 = fmul fast float %155, %4470
  %4482 = fsub fast float -0.000000e+00, %4481
  %4483 = fmul fast float %156, %4470
  %4484 = fsub fast float -0.000000e+00, %4483
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4480, float %4482, float %4484, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = fmul fast float %3891, 2.500000e+00
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %3891, 0x4013FFFFE0000000
  %4489 = fadd fast float %4488, 0xBFFFFFFFE0000000
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %3891, 0x4004000020000000
  %4492 = fadd fast float %4491, 0xBFF8000040000000
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fmul fast float %3754, 1.000000e+01
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fmul fast float %4495, 2.000000e+00
  %4497 = fsub fast float 3.000000e+00, %4496
  %4498 = fmul fast float %4495, %4495
  %4499 = fmul fast float %4498, %4497
  %4500 = fsub fast float 1.000000e+00, %4499
  %4501 = fsub fast float 0x3FE3333340000000, %4466
  %4502 = fmul fast float %4501, 0x400AAAAAA0000000
  %4503 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4504 = fmul fast float %4500, %4503
  %4505 = fmul fast float %4463, 0x3FEA2B8620000000
  %4506 = fmul fast float %4464, 0x3FEA2B8620000000
  %4507 = fmul fast float %4465, 0x3FEA2B8620000000
  %4508 = fadd fast float %4505, 0x3FC81DFBA0000000
  %4509 = fmul fast float %4508, %4463
  %4510 = fadd fast float %4509, 0x3F910E6020000000
  %4511 = fadd fast float %4506, 0x3FC81DFBA0000000
  %4512 = fmul fast float %4511, %4464
  %4513 = fadd fast float %4512, 0x3F910E6020000000
  %4514 = fadd fast float %4507, 0x3FC81DFBA0000000
  %4515 = fmul fast float %4514, %4465
  %4516 = fadd fast float %4515, 0x3F910E6020000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = fsub fast float %4517, %4463
  %4521 = fsub fast float %4518, %4464
  %4522 = fsub fast float %4519, %4465
  %4523 = fmul fast float %4520, %4487
  %4524 = fmul fast float %4523, %4504
  %4525 = fmul fast float %4521, %4487
  %4526 = fmul fast float %4525, %4504
  %4527 = fmul fast float %4522, %4487
  %4528 = fmul fast float %4527, %4504
  %4529 = fadd fast float %4524, %4463
  %4530 = fadd fast float %4526, %4464
  %4531 = fadd fast float %4528, %4465
  %4532 = fmul fast float %4467, %4467
  %4533 = fmul fast float %4532, %4532
  %4534 = fadd fast float %4490, 1.000000e+00
  %4535 = fsub fast float %4534, %4504
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = fsub fast float 1.000000e+00, %4533
  %4540 = call float @dx.op.binary.f32(i32 36, float %4536, float %4539)  ; FMin(a,b)
  %4541 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4542 = call float @dx.op.binary.f32(i32 35, float %4540, float %4541)  ; FMax(a,b)
  %4543 = fadd fast float %4538, 0xBFE4CCCCC0000000
  %4544 = fmul fast float %4543, 0x4006DB6DA0000000
  %4545 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4546 = fmul fast float %4545, 2.000000e+00
  %4547 = fsub fast float 3.000000e+00, %4546
  %4548 = bitcast float %4457 to i32
  %4549 = ashr i32 %4548, 1
  %4550 = add nsw i32 %4549, 532487669
  %4551 = bitcast i32 %4550 to float
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4555, 2.000000e+00
  %4557 = bitcast float %4458 to i32
  %4558 = ashr i32 %4557, 1
  %4559 = add nsw i32 %4558, 532487669
  %4560 = bitcast i32 %4559 to float
  %4561 = fsub fast float 1.000000e+00, %4560
  %4562 = bitcast float %4561 to i32
  %4563 = sub nsw i32 2129859010, %4562
  %4564 = bitcast i32 %4563 to float
  %4565 = fmul fast float %4564, 2.000000e+00
  %4566 = bitcast float %4459 to i32
  %4567 = ashr i32 %4566, 1
  %4568 = add nsw i32 %4567, 532487669
  %4569 = bitcast i32 %4568 to float
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, 2.000000e+00
  %4575 = fsub fast float 0x4002A9FBE0000000, %4556
  %4576 = fadd fast float %4556, 0x3FD54FDF00000000
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4579, %4575
  %4581 = fmul fast float %4580, %4580
  %4582 = fsub fast float 0x4002A9FBE0000000, %4565
  %4583 = fadd fast float %4565, 0x3FD54FDF00000000
  %4584 = bitcast float %4583 to i32
  %4585 = sub nsw i32 2129859010, %4584
  %4586 = bitcast i32 %4585 to float
  %4587 = fmul fast float %4586, %4582
  %4588 = fmul fast float %4587, %4587
  %4589 = fsub fast float 0x4002A9FBE0000000, %4574
  %4590 = fadd fast float %4574, 0x3FD54FDF00000000
  %4591 = bitcast float %4590 to i32
  %4592 = sub nsw i32 2129859010, %4591
  %4593 = bitcast i32 %4592 to float
  %4594 = fmul fast float %4593, %4589
  %4595 = fmul fast float %4594, %4594
  %4596 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4581)  ; FMax(a,b)
  %4597 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4588)  ; FMax(a,b)
  %4598 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4595)  ; FMax(a,b)
  %4599 = fsub fast float 1.000000e+00, %4485
  %4600 = fadd fast float %4599, %4500
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = fsub fast float 1.000000e+00, %3872
  %4603 = fmul fast float %4542, %4602
  %4604 = fmul fast float %4545, %4545
  %4605 = fmul fast float %4604, %4603
  %4606 = fmul fast float %4605, %4547
  %4607 = fmul fast float %4602, 0xBFE99999A0000000
  %4608 = fmul fast float %4607, %4487
  %4609 = fmul fast float %4608, %4504
  %4610 = fadd fast float %4609, 1.000000e+00
  %4611 = fadd fast float %4466, -1.000000e+00
  %4612 = fmul fast float %4610, %4611
  %4613 = fadd fast float %4612, 1.000000e+00
  %4614 = fsub fast float %4596, %4457
  %4615 = fsub fast float %4597, %4458
  %4616 = fsub fast float %4598, %4459
  %4617 = fmul fast float %4606, %4614
  %4618 = fmul fast float %4606, %4615
  %4619 = fmul fast float %4606, %4616
  %4620 = fadd fast float %4617, %4457
  %4621 = fadd fast float %4618, %4458
  %4622 = fadd fast float %4619, %4459
  %4623 = fsub fast float %74, %4460
  %4624 = fsub fast float %75, %4461
  %4625 = fsub fast float %76, %4462
  %4626 = fmul fast float %4606, %4623
  %4627 = fmul fast float %4606, %4624
  %4628 = fmul fast float %4606, %4625
  %4629 = fadd fast float %4626, %4460
  %4630 = fadd fast float %4627, %4461
  %4631 = fadd fast float %4628, %4462
  %4632 = fmul fast float %4606, %4601
  %4633 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = fmul fast float %4632, %4634
  %4636 = fadd fast float %4635, %4633
  %4637 = fsub fast float 1.000000e+00, %4467
  %4638 = fmul fast float %4606, %4637
  %4639 = fadd fast float %4638, %4467
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4630, float %4631, float %4629, float %4630, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4629, %4641
  %4643 = fmul fast float %4630, %4641
  %4644 = fmul fast float %4631, %4641
  br label %4645

; <label>:4645                                    ; preds = %4478, %4471
  %4646 = phi float [ %4477, %4471 ], [ %4484, %4478 ]
  %4647 = phi float [ %4476, %4471 ], [ %4482, %4478 ]
  %4648 = phi float [ %4475, %4471 ], [ %4480, %4478 ]
  %4649 = phi float [ %4474, %4471 ], [ %4483, %4478 ]
  %4650 = phi float [ %4473, %4471 ], [ %4481, %4478 ]
  %4651 = phi float [ %4472, %4471 ], [ %4479, %4478 ]
  %4652 = phi float [ %4457, %4471 ], [ %4620, %4478 ]
  %4653 = phi float [ %4458, %4471 ], [ %4621, %4478 ]
  %4654 = phi float [ %4459, %4471 ], [ %4622, %4478 ]
  %4655 = phi float [ %4460, %4471 ], [ %4642, %4478 ]
  %4656 = phi float [ %4461, %4471 ], [ %4643, %4478 ]
  %4657 = phi float [ %4462, %4471 ], [ %4644, %4478 ]
  %4658 = phi float [ %4463, %4471 ], [ %4529, %4478 ]
  %4659 = phi float [ %4464, %4471 ], [ %4530, %4478 ]
  %4660 = phi float [ %4465, %4471 ], [ %4531, %4478 ]
  %4661 = phi float [ %4466, %4471 ], [ %4636, %4478 ]
  %4662 = phi float [ %4467, %4471 ], [ %4639, %4478 ]
  %4663 = select i1 %208, float 0.000000e+00, float %4654
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float %4648, float %4647, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4650, float %4649, float %4655, float %4656, float %4657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = fmul fast float %4666, 2.000000e+00
  %4668 = fmul fast float %4667, %4655
  %4669 = fmul fast float %4667, %4656
  %4670 = fmul fast float %4667, %4657
  %4671 = fsub fast float %4651, %4668
  %4672 = fsub fast float %4650, %4669
  %4673 = fsub fast float %4649, %4670
  %4674 = call float @dx.op.binary.f32(i32 36, float %4662, float 1.000000e+00)  ; FMin(a,b)
  %4675 = fsub fast float 1.000000e+00, %4662
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fsub fast float 1.000000e+00, %44
  %4680 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.binary.f32(i32 35, float %4680, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4682 = fdiv fast float %4679, %4681
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, 5.000000e-01
  %4686 = fadd fast float %4685, 5.000000e-01
  %4687 = fmul fast float %4686, %44
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, %4682
  %4691 = fadd fast float %4687, %4690
  %4692 = fsub fast float 5.000000e-01, %4685
  %4693 = fmul fast float %4692, %4658
  %4694 = fmul fast float %4692, %4659
  %4695 = fmul fast float %4692, %4660
  %4696 = fadd fast float %4691, %4693
  %4697 = fadd fast float %4691, %4694
  %4698 = fadd fast float %4691, %4695
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4700, 5.000000e-01
  %4702 = fadd fast float %4701, 5.000000e-01
  %4703 = fmul fast float %4702, %44
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, %4682
  %4707 = fadd fast float %4703, %4706
  %4708 = fsub fast float 5.000000e-01, %4701
  %4709 = fmul fast float %4708, %4658
  %4710 = fmul fast float %4708, %4659
  %4711 = fmul fast float %4708, %4660
  %4712 = fadd fast float %4707, %4709
  %4713 = fadd fast float %4707, %4710
  %4714 = fadd fast float %4707, %4711
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = call float @dx.op.binary.f32(i32 36, float %4658, float %4716)  ; FMin(a,b)
  %4718 = fsub fast float 1.000000e+00, %4674
  %4719 = fmul fast float %4717, %4718
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = call float @dx.op.binary.f32(i32 36, float %4659, float %4716)  ; FMin(a,b)
  %4725 = fmul fast float %4724, %4718
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = bitcast float %4726 to i32
  %4728 = sub nsw i32 2129859010, %4727
  %4729 = bitcast i32 %4728 to float
  %4730 = call float @dx.op.binary.f32(i32 36, float %4660, float %4716)  ; FMin(a,b)
  %4731 = fmul fast float %4730, %4718
  %4732 = fsub fast float 1.000000e+00, %4731
  %4733 = bitcast float %4732 to i32
  %4734 = sub nsw i32 2129859010, %4733
  %4735 = bitcast i32 %4734 to float
  %4736 = fmul fast float %4674, %45
  %4737 = fmul fast float %4736, %4696
  %4738 = fmul fast float %4737, %4723
  %4739 = fmul fast float %4674, %46
  %4740 = fmul fast float %4739, %4697
  %4741 = fmul fast float %4740, %4729
  %4742 = fmul fast float %4674, %47
  %4743 = fmul fast float %4742, %4698
  %4744 = fmul fast float %4743, %4735
  %4745 = call float @dx.op.binary.f32(i32 36, float %4652, float %4716)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4718
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = call float @dx.op.binary.f32(i32 36, float %4653, float %4716)  ; FMin(a,b)
  %4752 = fmul fast float %4751, %4718
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = bitcast float %4753 to i32
  %4755 = sub nsw i32 2129859010, %4754
  %4756 = bitcast i32 %4755 to float
  %4757 = call float @dx.op.binary.f32(i32 36, float %4663, float %4716)  ; FMin(a,b)
  %4758 = fmul fast float %4757, %4718
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = bitcast i32 %4761 to float
  %4763 = fmul fast float %4736, %4712
  %4764 = fmul fast float %4763, %4750
  %4765 = fmul fast float %4739, %4713
  %4766 = fmul fast float %4765, %4756
  %4767 = fmul fast float %4742, %4714
  %4768 = fmul fast float %4767, %4762
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4741, float %4744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = select i1 %208, float 0.000000e+00, float %4738
  %4771 = select i1 %208, float %4769, float %4741
  %4772 = select i1 %208, float 0.000000e+00, float %4744
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4766, float %4768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = select i1 %208, float 0.000000e+00, float %4764
  %4775 = select i1 %208, float %4773, float %4766
  %4776 = select i1 %208, float 0.000000e+00, float %4768
  %4777 = fmul fast float %4665, 9.843750e-01
  %4778 = fmul fast float %4661, 9.843750e-01
  %4779 = fadd fast float %4777, 7.812500e-03
  %4780 = fadd fast float %4778, 7.812500e-03
  %4781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %4779, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 3
  %4784 = fmul fast float %4782, %4652
  %4785 = fmul fast float %4782, %4653
  %4786 = fmul fast float %4782, %4663
  %4787 = fadd fast float %4784, %4783
  %4788 = fadd fast float %4785, %4783
  %4789 = fadd fast float %4786, %4783
  %4790 = fcmp fast ogt float %3749, 0.000000e+00
  br i1 %4790, label %4791, label %4817

; <label>:4791                                    ; preds = %4645
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3749, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.ResRet.f32 %4792, 1
  %4795 = extractvalue %dx.types.ResRet.f32 %4792, 2
  %4796 = fadd fast float %4793, -5.000000e-01
  %4797 = fadd fast float %4794, -5.000000e-01
  %4798 = fadd fast float %4795, -5.000000e-01
  %4799 = fsub fast float 1.000000e+00, %4652
  %4800 = fsub fast float 1.000000e+00, %4653
  %4801 = fsub fast float 1.000000e+00, %4663
  %4802 = fmul fast float %4652, 4.000000e+00
  %4803 = fmul fast float %4802, %4799
  %4804 = fmul fast float %4803, %4796
  %4805 = fmul fast float %4653, 4.000000e+00
  %4806 = fmul fast float %4805, %4800
  %4807 = fmul fast float %4806, %4797
  %4808 = fmul fast float %4663, 4.000000e+00
  %4809 = fmul fast float %4808, %4801
  %4810 = fmul fast float %4809, %4798
  %4811 = fadd fast float %4804, %4787
  %4812 = fadd fast float %4807, %4788
  %4813 = fadd fast float %4810, %4789
  %4814 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  br label %4817

; <label>:4817                                    ; preds = %4791, %4645
  %4818 = phi float [ %4814, %4791 ], [ %4787, %4645 ]
  %4819 = phi float [ %4815, %4791 ], [ %4788, %4645 ]
  %4820 = phi float [ %4816, %4791 ], [ %4789, %4645 ]
  %4821 = call float @dx.op.binary.f32(i32 35, float %4819, float %4820)  ; FMax(a,b)
  %4822 = call float @dx.op.binary.f32(i32 35, float %4818, float %4821)  ; FMax(a,b)
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = fmul fast float %4823, %4770
  %4825 = fmul fast float %4823, %4771
  %4826 = fmul fast float %4823, %4772
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = fcmp fast ogt float %4827, 0x3E7FF19E20000000
  %4829 = fdiv fast float 1.000000e+00, %4827
  %4830 = select i1 %4828, float %4829, float 0.000000e+00
  %4831 = fmul fast float %4830, %4658
  %4832 = fmul fast float %4830, %4659
  %4833 = fmul fast float %4830, %4660
  %4834 = fadd fast float %4831, -1.000000e+00
  %4835 = fadd fast float %4832, -1.000000e+00
  %4836 = fadd fast float %4833, -1.000000e+00
  %4837 = fmul fast float %4834, 5.000000e-01
  %4838 = fmul fast float %4835, 5.000000e-01
  %4839 = fmul fast float %4836, 5.000000e-01
  %4840 = fadd fast float %4837, 1.000000e+00
  %4841 = fadd fast float %4838, 1.000000e+00
  %4842 = fadd fast float %4839, 1.000000e+00
  %4843 = fmul fast float %4818, %4774
  %4844 = fmul fast float %4819, %4775
  %4845 = fmul fast float %4820, %4776
  %4846 = fsub fast float 1.000000e+00, %4665
  %4847 = bitcast float %4846 to i32
  %4848 = sitofp i32 %4847 to float
  %4849 = fmul fast float %4848, 5.000000e+00
  %4850 = fadd fast float %4849, 0xC1EFBF8940000000
  %4851 = fptosi float %4850 to i32
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4852, %3750
  %4854 = fmul fast float %4770, %4853
  %4855 = fmul fast float %4854, %4823
  %4856 = fmul fast float %4855, %4840
  %4857 = fmul fast float %4771, %4853
  %4858 = fmul fast float %4857, %4823
  %4859 = fmul fast float %4858, %4841
  %4860 = fmul fast float %4772, %4853
  %4861 = fmul fast float %4860, %4823
  %4862 = fmul fast float %4861, %4842
  %4863 = fmul fast float %4824, %3746
  %4864 = fmul fast float %4825, %3746
  %4865 = fmul fast float %4826, %3746
  %4866 = fadd fast float %4843, %3742
  %4867 = fadd fast float %4866, %4856
  %4868 = fmul fast float %4867, %3746
  %4869 = fadd fast float %4844, %3743
  %4870 = fadd fast float %4869, %4859
  %4871 = fmul fast float %4870, %3746
  %4872 = fadd fast float %4845, %3744
  %4873 = fadd fast float %4872, %4862
  %4874 = fmul fast float %4873, %3746
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4877 = fcmp fast oeq float %4876, 0.000000e+00
  br i1 %4877, label %5105, label %4878

; <label>:4878                                    ; preds = %4817
  %4879 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4880 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4881 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4884, float %4885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = select i1 %208, float %4887, float %4883
  %4891 = select i1 %208, float %4889, float %4884
  %4892 = select i1 %208, float %4888, float %4885
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4895 = fcmp fast une float %4894, 0.000000e+00
  br i1 %4895, label %4896, label %4913

; <label>:4896                                    ; preds = %4878
  %4897 = fptoui float %67 to i32
  %4898 = fptoui float %68 to i32
  %4899 = lshr i32 %4897, 4
  %4900 = lshr i32 %4898, 4
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = fptoui float %4902 to i32
  %4904 = add i32 %4903, 15
  %4905 = lshr i32 %4904, 4
  %4906 = mul i32 %4905, %4900
  %4907 = add i32 %4906, %4899
  %4908 = shl i32 %4907, 3
  %4909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.i32 %4909, 0
  %4911 = and i32 %4910, -268435456
  %4912 = icmp eq i32 %4911, -1342177280
  br i1 %4912, label %4923, label %4913

; <label>:4913                                    ; preds = %4896, %4878
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4917 = fmul fast float %4915, %67
  %4918 = fmul fast float %4916, %68
  %4919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %19, float %4917, float %4918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4920 = extractvalue %dx.types.ResRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.ResRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.ResRet.f32 %4919, 2
  br label %4923

; <label>:4923                                    ; preds = %4913, %4896
  %4924 = phi float [ %4920, %4913 ], [ 0.000000e+00, %4896 ]
  %4925 = phi float [ %4921, %4913 ], [ 0.000000e+00, %4896 ]
  %4926 = phi float [ %4922, %4913 ], [ 0.000000e+00, %4896 ]
  %4927 = call float @dx.op.binary.f32(i32 36, float %4925, float %4926)  ; FMin(a,b)
  %4928 = call float @dx.op.binary.f32(i32 36, float %4924, float %4927)  ; FMin(a,b)
  %4929 = fcmp fast ogt float %4928, 0.000000e+00
  br i1 %4929, label %4930, label %5105, !dx.controlflow.hints !63

; <label>:4930                                    ; preds = %4923
  %4931 = fmul fast float %4924, %4890
  %4932 = fmul fast float %4925, %4891
  %4933 = fmul fast float %4926, %4892
  %4934 = fsub fast float %4879, %4651
  %4935 = fsub fast float %4880, %4650
  %4936 = fsub fast float %4881, %4649
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float %4934, float %4935, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 25, float %4937)  ; Rsqrt(value)
  %4939 = fmul fast float %4938, %4934
  %4940 = fmul fast float %4938, %4935
  %4941 = fmul fast float %4938, %4936
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4880, float %4881, float %4655, float %4656, float %4657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4647, float %4646, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4945 = fmul fast float %4944, %4944
  %4946 = fmul fast float %4945, %4678
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4947, %4944
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = fmul fast float %4949, %4949
  %4951 = call float @dx.op.unary.f32(i32 6, float %4942)  ; FAbs(value)
  %4952 = fsub fast float 1.000000e+00, %4661
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0x3F847AE140000000)  ; FMax(a,b)
  %4954 = fmul fast float %4953, %4953
  %4955 = fmul fast float %4954, %4954
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = fmul fast float %4665, %4665
  %4958 = fmul fast float %4957, %4956
  %4959 = fadd fast float %4958, %4955
  %4960 = bitcast float %4959 to i32
  %4961 = ashr i32 %4960, 1
  %4962 = add nsw i32 %4961, 532487669
  %4963 = bitcast i32 %4962 to float
  %4964 = fadd fast float %4963, %4665
  %4965 = fmul fast float %4955, %4950
  %4966 = fsub fast float 1.000000e+00, %4950
  %4967 = fadd fast float %4966, %4965
  %4968 = fmul fast float %4951, %4951
  %4969 = fmul fast float %4968, %4956
  %4970 = fadd fast float %4969, %4955
  %4971 = bitcast float %4970 to i32
  %4972 = ashr i32 %4971, 1
  %4973 = add nsw i32 %4972, 532487669
  %4974 = bitcast i32 %4973 to float
  %4975 = fadd fast float %4974, %4951
  %4976 = fmul fast float %4967, %4967
  %4977 = fmul fast float %4976, %4964
  %4978 = fmul fast float %4977, %4975
  %4979 = fdiv fast float 0x3FF0A00000000000, %4978
  %4980 = fmul fast float %4979, %4955
  %4981 = call float @dx.op.unary.f32(i32 6, float %4943)  ; FAbs(value)
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = bitcast float %4982 to i32
  %4984 = sitofp i32 %4983 to float
  %4985 = fmul fast float %4984, 5.000000e+00
  %4986 = fadd fast float %4985, 0xC1EFBF8940000000
  %4987 = fptosi float %4986 to i32
  %4988 = bitcast i32 %4987 to float
  %4989 = fsub fast float 1.000000e+00, %4652
  %4990 = fsub fast float 1.000000e+00, %4653
  %4991 = fsub fast float 1.000000e+00, %4663
  %4992 = fmul fast float %4988, %4989
  %4993 = fmul fast float %4988, %4990
  %4994 = fmul fast float %4988, %4991
  %4995 = fadd fast float %4992, %4652
  %4996 = fadd fast float %4993, %4653
  %4997 = fadd fast float %4994, %4663
  br i1 %4790, label %4998, label %5021

; <label>:4998                                    ; preds = %4930
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3749, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = fadd fast float %5000, -5.000000e-01
  %5004 = fadd fast float %5001, -5.000000e-01
  %5005 = fadd fast float %5002, -5.000000e-01
  %5006 = fmul fast float %4652, 4.000000e+00
  %5007 = fmul fast float %5006, %4989
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %4653, 4.000000e+00
  %5010 = fmul fast float %5009, %4990
  %5011 = fmul fast float %5010, %5004
  %5012 = fmul fast float %4663, 4.000000e+00
  %5013 = fmul fast float %5012, %4991
  %5014 = fmul fast float %5013, %5005
  %5015 = fadd fast float %5008, %4995
  %5016 = fadd fast float %5011, %4996
  %5017 = fadd fast float %5014, %4997
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5020 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  br label %5021

; <label>:5021                                    ; preds = %4998, %4930
  %5022 = phi float [ %5018, %4998 ], [ %4995, %4930 ]
  %5023 = phi float [ %5019, %4998 ], [ %4996, %4930 ]
  %5024 = phi float [ %5020, %4998 ], [ %4997, %4930 ]
  %5025 = fmul fast float %4942, 9.843750e-01
  %5026 = fadd fast float %5025, 7.812500e-03
  %5027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %5026, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 2
  %5029 = extractvalue %dx.types.ResRet.f32 %5027, 3
  %5030 = fmul fast float %5028, %4652
  %5031 = fmul fast float %5028, %4653
  %5032 = fmul fast float %5028, %4663
  %5033 = fadd fast float %5030, %5029
  %5034 = fadd fast float %5031, %5029
  %5035 = fadd fast float %5032, %5029
  br i1 %4790, label %5036, label %5059

; <label>:5036                                    ; preds = %5021
  %5037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3749, float %4942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5041 = fadd fast float %5038, -5.000000e-01
  %5042 = fadd fast float %5039, -5.000000e-01
  %5043 = fadd fast float %5040, -5.000000e-01
  %5044 = fmul fast float %4652, 4.000000e+00
  %5045 = fmul fast float %5044, %4989
  %5046 = fmul fast float %5045, %5041
  %5047 = fmul fast float %4653, 4.000000e+00
  %5048 = fmul fast float %5047, %4990
  %5049 = fmul fast float %5048, %5042
  %5050 = fmul fast float %4663, 4.000000e+00
  %5051 = fmul fast float %5050, %4991
  %5052 = fmul fast float %5051, %5043
  %5053 = fadd fast float %5046, %5033
  %5054 = fadd fast float %5049, %5034
  %5055 = fadd fast float %5052, %5035
  %5056 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  br label %5059

; <label>:5059                                    ; preds = %5036, %5021
  %5060 = phi float [ %5056, %5036 ], [ %5033, %5021 ]
  %5061 = phi float [ %5057, %5036 ], [ %5034, %5021 ]
  %5062 = phi float [ %5058, %5036 ], [ %5035, %5021 ]
  %5063 = call float @dx.op.binary.f32(i32 35, float %5061, float %5062)  ; FMax(a,b)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5060, float %5063)  ; FMax(a,b)
  %5065 = fsub fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5022, %4980
  %5067 = fmul fast float %5023, %4980
  %5068 = fmul fast float %5024, %4980
  %5069 = fsub fast float 1.000000e+00, %4943
  %5070 = bitcast float %5069 to i32
  %5071 = sitofp i32 %5070 to float
  %5072 = fmul fast float %5071, 5.000000e+00
  %5073 = fadd fast float %5072, 0xC1EFBF8940000000
  %5074 = fptosi float %5073 to i32
  %5075 = bitcast i32 %5074 to float
  %5076 = fmul fast float %5075, %3750
  %5077 = fmul fast float %5065, %5076
  %5078 = fmul fast float %5077, %4840
  %5079 = fmul fast float %5077, %4841
  %5080 = fmul fast float %5077, %4842
  %5081 = fadd fast float %5078, %5066
  %5082 = fadd fast float %5079, %5067
  %5083 = fadd fast float %5080, %5068
  %5084 = fmul fast float %4948, %4931
  %5085 = fmul fast float %5084, %5065
  %5086 = fmul fast float %4948, %4932
  %5087 = fmul fast float %5086, %5065
  %5088 = fmul fast float %4948, %4933
  %5089 = fmul fast float %5088, %5065
  %5090 = fmul fast float %5084, %5081
  %5091 = fmul fast float %5086, %5082
  %5092 = fmul fast float %5088, %5083
  %5093 = fadd fast float %5085, %4824
  %5094 = fmul fast float %5093, %3746
  %5095 = fadd fast float %5087, %4825
  %5096 = fmul fast float %5095, %3746
  %5097 = fadd fast float %5089, %4826
  %5098 = fmul fast float %5097, %3746
  %5099 = fadd fast float %5090, %4867
  %5100 = fmul fast float %5099, %3746
  %5101 = fadd fast float %5091, %4870
  %5102 = fmul fast float %5101, %3746
  %5103 = fadd fast float %5092, %4873
  %5104 = fmul fast float %5103, %3746
  br label %5105

; <label>:5105                                    ; preds = %5059, %4923, %4817
  %5106 = phi float [ %4868, %4817 ], [ %4868, %4923 ], [ %5100, %5059 ]
  %5107 = phi float [ %4871, %4817 ], [ %4871, %4923 ], [ %5102, %5059 ]
  %5108 = phi float [ %4874, %4817 ], [ %4874, %4923 ], [ %5104, %5059 ]
  %5109 = phi float [ %4863, %4817 ], [ %4863, %4923 ], [ %5094, %5059 ]
  %5110 = phi float [ %4864, %4817 ], [ %4864, %4923 ], [ %5096, %5059 ]
  %5111 = phi float [ %4865, %4817 ], [ %4865, %4923 ], [ %5098, %5059 ]
  %5112 = call float @dx.op.unary.f32(i32 24, float %4658)  ; Sqrt(value)
  %5113 = call float @dx.op.unary.f32(i32 24, float %4659)  ; Sqrt(value)
  %5114 = call float @dx.op.unary.f32(i32 24, float %4660)  ; Sqrt(value)
  %5115 = fmul fast float %5112, %5109
  %5116 = fmul fast float %5113, %5110
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  br i1 %208, label %5119, label %5139

; <label>:5119                                    ; preds = %5105
  %5120 = fadd fast float %5111, %3752
  %5121 = fmul fast float %5120, %3753
  %5122 = fsub fast float 1.000000e+00, %3753
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5126 = fmul fast float %5125, %5123
  %5127 = fadd fast float %5126, %5121
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = fmul fast float %5129, %4846
  %5131 = fsub fast float %5127, %5130
  %5132 = fadd fast float %5116, %5115
  %5133 = fmul fast float %5118, %5132
  %5134 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5135 = fsub fast float %5131, %5134
  %5136 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5137 = fmul fast float %5135, %5136
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  br label %5155

; <label>:5139                                    ; preds = %5105
  %5140 = fmul fast float %5114, %5111
  %5141 = fmul fast float %5118, %5115
  %5142 = fmul fast float %5118, %5116
  %5143 = fmul fast float %5140, %5118
  %5144 = add i32 %22, 356
  %5145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5144, i32 undef)  ; BufferLoad(srv,index,wot)
  %5146 = extractvalue %dx.types.ResRet.i32 %5145, 0
  %5147 = and i32 %5146, 32
  %5148 = icmp eq i32 %5147, 0
  br i1 %5148, label %5155, label %5149

; <label>:5149                                    ; preds = %5139
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = fmul fast float %5151, 0x3FE99999A0000000
  %5153 = fadd fast float %5151, %5141
  %5154 = fadd fast float %5152, %5143
  br label %5155

; <label>:5155                                    ; preds = %5149, %5139, %5119
  %5156 = phi float [ %5133, %5119 ], [ %5153, %5149 ], [ %5141, %5139 ]
  %5157 = phi float [ %5138, %5119 ], [ %5142, %5149 ], [ %5142, %5139 ]
  %5158 = phi float [ 1.000000e+00, %5119 ], [ %5154, %5149 ], [ %5143, %5139 ]
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = fmul fast float %5160, %5107
  %5162 = fmul fast float %5160, %5108
  %5163 = fadd fast float %5107, %5106
  %5164 = select i1 %208, float %5163, float %5106
  %5165 = fmul float %5164, %5160
  %5166 = select i1 %208, float 0.000000e+00, float %5161
  %5167 = select i1 %208, float 0.000000e+00, float %5162
  %5168 = fmul fast float %5156, %5112
  %5169 = fmul fast float %5157, %5113
  %5170 = fmul fast float %5158, %5114
  %5171 = fadd fast float %5165, %5168
  %5172 = fadd fast float %5166, %5169
  %5173 = fadd fast float %5167, %5170
  %5174 = select i1 %208, float %5157, float %5172
  %5175 = select i1 %208, float %5158, float %5173
  %5176 = call float @dx.op.binary.f32(i32 36, float %5171, float 3.225500e+04)  ; FMin(a,b)
  %5177 = call float @dx.op.binary.f32(i32 36, float %5174, float 3.225500e+04)  ; FMin(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5175, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5176)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5177)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5178)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !62}
!35 = !{!36, !60, null}
!36 = !{!37, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 11}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 14}
!42 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 3, i32 3, i8 0, !45}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TANGENT", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!47 = !{i32 3, i32 15}
!48 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 3, i32 5, i8 0, !45}
!49 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 6, i8 0, !47}
!50 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 3, i32 7, i8 0, !45}
!51 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 8, i8 0, !47}
!52 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 9, i8 0, !43}
!53 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 10, i8 0, !47}
!54 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 11, i8 0, !45}
!55 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !38, i8 1, i32 1, i8 1, i32 12, i8 0, !56}
!56 = !{i32 3, i32 1}
!57 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !38, i8 1, i32 1, i8 2, i32 12, i8 1, !56}
!58 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !38, i8 1, i32 1, i8 4, i32 13, i8 0, !56}
!59 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!60 = !{!61}
!61 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !47}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}

