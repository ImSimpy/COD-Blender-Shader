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
; shader hash: 67a74c37f68ed14b3228d19ec3d9601c
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
  %167 = bitcast i32 %166 to float
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %67
  %172 = fmul fast float %170, %68
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = and i32 %185, 3
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %185, 4
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %202

; <label>:191                                     ; preds = %0
  %192 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %193 = fmul fast float %192, %68
  %194 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %195 = fmul fast float %194, %67
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %195, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = fcmp fast olt float %198, %200
  br label %205

; <label>:202                                     ; preds = %0
  %203 = icmp eq i32 %188, 0
  %204 = and i1 %187, %203
  br label %205

; <label>:205                                     ; preds = %202, %191
  %206 = phi i1 [ %201, %191 ], [ %204, %202 ]
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %67, 2.560000e+02
  %211 = frem fast float %68, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fadd fast float %215, %209
  %217 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %218 = add i32 %22, 156
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = add i32 %22, 216
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %232, 8
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %232, 16
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = add i32 %22, 36
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %22, 288
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = add i32 %22, 172
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %22, 232
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %22, 52
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %22, 304
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %22, 188
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = shl i32 %304, 4
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %304, 7
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %304, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %22, 248
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %22, 68
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %22, 320
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %339, 0x3F50624DE0000000
  %343 = fmul fast float %341, 0x3F50624DE0000000
  %344 = add i32 %22, 204
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = shl i32 %346, 4
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %346, 7
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %346, 22
  %354 = shl nuw nsw i32 %353, 5
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %22, 264
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = lshr i32 %358, 8
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %358, 16
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = add i32 %22, 84
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %22, 336
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = fmul fast float %381, 0x3F50624DE0000000
  %385 = fmul fast float %383, 0x3F50624DE0000000
  %386 = add i32 %22, 348
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 32
  %390 = icmp eq i32 %389, 0
  %391 = and i32 %388, 64
  %392 = icmp eq i32 %391, 0
  %393 = and i32 %388, 128
  %394 = icmp eq i32 %393, 0
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 2
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %412, label %399

; <label>:399                                     ; preds = %205
  %400 = add i32 %22, 488
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %402, 0
  %404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %404, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = fmul fast float %406, %57
  %410 = fmul fast float %407, %58
  %411 = fmul fast float %408, %59
  br label %412

; <label>:412                                     ; preds = %399, %205
  %413 = phi float [ %59, %205 ], [ %411, %399 ]
  %414 = phi float [ %58, %205 ], [ %410, %399 ]
  %415 = phi float [ %57, %205 ], [ %409, %399 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %439, label %420

; <label>:420                                     ; preds = %412
  %421 = add i32 %22, 44
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 1
  %425 = icmp ne i32 %424, 0
  %426 = select i1 %425, float %415, float 1.000000e+00
  %427 = add i32 %22, 60
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 1
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %414, float 1.000000e+00
  %433 = add i32 %22, 76
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %413, float 1.000000e+00
  br label %439

; <label>:439                                     ; preds = %420, %412
  %440 = phi float [ %413, %412 ], [ %438, %420 ]
  %441 = phi float [ %414, %412 ], [ %432, %420 ]
  %442 = phi float [ %415, %412 ], [ %426, %420 ]
  %443 = lshr i32 %417, 20
  %444 = and i32 %443, 3
  %445 = add nuw nsw i32 %444, 1
  %446 = add i32 %22, 24
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %22, 28
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = or i32 %451, %448
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %912, label %454

; <label>:454                                     ; preds = %439
  %455 = and i32 %448, 262144
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %28, float 1.000000e+00
  %458 = select i1 %456, float %29, float 0.000000e+00
  %459 = select i1 %456, float %30, float 0.000000e+00
  %460 = select i1 %456, float %31, float 1.000000e+00
  %461 = select i1 %456, float %32, float %55
  %462 = select i1 %456, float %33, float %56
  %463 = add i32 %22, 284
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = lshr i32 %465, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = fmul fast float %467, 0x3F50624DE0000000
  %469 = add i32 %22, 88
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = and i32 %472, 255
  %474 = lshr i32 %471, 24
  %475 = add i32 %22, 292
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 65535
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %477, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = add i32 %22, 32
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 22
  %486 = shl nuw nsw i32 %485, 5
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = shl i32 %484, 4
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %484, 7
  %492 = and i32 %491, 32752
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %496 = fmul fast float %495, 1.000000e+03
  %497 = fmul fast float %258, %496
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = fadd fast float %498, %248
  %500 = fmul fast float %259, %496
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = fadd fast float %501, %250
  %503 = fmul fast float %468, %496
  %504 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %505 = fmul fast float %504, 0x401921FB60000000
  %506 = fadd fast float %505, %487
  %507 = call float @dx.op.unary.f32(i32 13, float %506)  ; Sin(value)
  %508 = call float @dx.op.unary.f32(i32 12, float %506)  ; Cos(value)
  %509 = fsub fast float -0.000000e+00, %507
  %510 = fadd fast float %461, -5.000000e-01
  %511 = fadd fast float %462, -5.000000e-01
  %512 = fmul fast float %479, %510
  %513 = fmul fast float %481, %511
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fadd fast float %513, 5.000000e-01
  %516 = fmul fast float %490, %514
  %517 = fmul fast float %493, %515
  %518 = fmul fast float %508, %516
  %519 = call float @dx.op.tertiary.f32(i32 46, float %509, float %517, float %518)  ; FMad(a,b,c)
  %520 = fmul fast float %507, %516
  %521 = call float @dx.op.tertiary.f32(i32 46, float %508, float %517, float %520)  ; FMad(a,b,c)
  %522 = fadd fast float %499, %519
  %523 = fadd fast float %502, %521
  %524 = icmp ugt i32 %473, 1
  %525 = icmp ugt i32 %471, 33554431
  %526 = or i1 %525, %524
  br i1 %526, label %527, label %552

; <label>:527                                     ; preds = %454
  %528 = add i32 %22, 228
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = fmul fast float %495, %532
  %534 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %535 = mul nuw nsw i32 %473, %474
  %536 = uitofp i32 %535 to float
  %537 = fmul fast float %534, %536
  %538 = call float @dx.op.unary.f32(i32 27, float %537)  ; Round_ni(value)
  %539 = fptoui float %538 to i32
  %540 = urem i32 %539, %473
  %541 = udiv i32 %539, %474
  %542 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %543 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %544 = uitofp i32 %540 to float
  %545 = uitofp i32 %541 to float
  %546 = fadd fast float %542, %544
  %547 = fadd fast float %543, %545
  %548 = uitofp i32 %473 to float
  %549 = uitofp i32 %474 to float
  %550 = fdiv fast float %546, %548
  %551 = fdiv fast float %547, %549
  br label %552

; <label>:552                                     ; preds = %527, %454
  %553 = phi float [ %550, %527 ], [ %522, %454 ]
  %554 = phi float [ %551, %527 ], [ %523, %454 ]
  %555 = and i32 %448, 16
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %753, label %557

; <label>:557                                     ; preds = %552
  %558 = add i32 %22, 376
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = add i32 %560, 0
  %562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %562, %dx.types.Handle %63, float %553, float %554, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = extractvalue %dx.types.ResRet.f32 %563, 3
  %568 = and i32 %471, 255
  %569 = uitofp i32 %568 to float
  %570 = lshr i32 %471, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %567, %569
  %574 = fadd fast float %573, %572
  %575 = fmul fast float %574, 0x3F70101000000000
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 512
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %588, label %580

; <label>:580                                     ; preds = %557
  %581 = add i32 %22, 456
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = add i32 %583, 0
  %585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %585, %dx.types.Handle %64, float %553, float %554, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  br label %588

; <label>:588                                     ; preds = %580, %557
  %589 = phi float [ %587, %580 ], [ 1.000000e+00, %557 ]
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 33554432
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %700, label %594

; <label>:594                                     ; preds = %588
  %595 = add i32 %22, 224
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %597, 16
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = add i32 %22, 228
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %604, 65535
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = lshr i32 %608, 24
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = and i32 %608, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %608, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %608, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = add i32 %22, 220
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = lshr i32 %625, 24
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = and i32 %625, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %625, 8
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = lshr i32 %625, 16
  %637 = and i32 %636, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = bitcast float %564 to i32
  %641 = ashr i32 %640, 1
  %642 = sub nsw i32 1597463174, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %564, 5.000000e-01
  %645 = fmul fast float %643, %643
  %646 = fmul fast float %645, %644
  %647 = fsub fast float 1.500000e+00, %646
  %648 = fmul fast float %643, %564
  %649 = fmul fast float %648, %647
  %650 = bitcast float %565 to i32
  %651 = ashr i32 %650, 1
  %652 = sub nsw i32 1597463174, %651
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %565, 5.000000e-01
  %655 = fmul fast float %653, %653
  %656 = fmul fast float %655, %654
  %657 = fsub fast float 1.500000e+00, %656
  %658 = fmul fast float %653, %565
  %659 = fmul fast float %658, %657
  %660 = bitcast float %566 to i32
  %661 = ashr i32 %660, 1
  %662 = sub nsw i32 1597463174, %661
  %663 = bitcast i32 %662 to float
  %664 = fmul fast float %566, 5.000000e-01
  %665 = fmul fast float %663, %663
  %666 = fmul fast float %665, %664
  %667 = fsub fast float 1.500000e+00, %666
  %668 = fmul fast float %663, %566
  %669 = fmul fast float %668, %667
  %670 = fsub fast float %649, %631
  %671 = fsub fast float %659, %635
  %672 = fsub fast float %669, %639
  %673 = fmul fast float %670, %599
  %674 = fmul fast float %671, %601
  %675 = fmul fast float %672, %606
  %676 = fadd fast float %673, %614
  %677 = fadd fast float %674, %618
  %678 = fadd fast float %675, %622
  %679 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %680 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %682 = fmul fast float %679, %679
  %683 = fmul fast float %680, %680
  %684 = fmul fast float %681, %681
  %685 = fsub fast float %682, %564
  %686 = fsub fast float %683, %565
  %687 = fsub fast float %684, %566
  %688 = fmul fast float %685, %589
  %689 = fmul fast float %686, %589
  %690 = fmul fast float %687, %589
  %691 = fadd fast float %688, %564
  %692 = fadd fast float %689, %565
  %693 = fadd fast float %690, %566
  %694 = fadd fast float %611, %575
  %695 = fsub fast float %694, %628
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = fsub fast float %696, %575
  %698 = fmul fast float %697, %589
  %699 = fadd fast float %698, %575
  br label %753

; <label>:700                                     ; preds = %588
  %701 = and i32 %591, 134217728
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %737, label %703

; <label>:703                                     ; preds = %700
  %704 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %705 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %706 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %707 = fadd fast float %704, -5.000000e-01
  %708 = fadd fast float %705, -5.000000e-01
  %709 = fadd fast float %706, -5.000000e-01
  %710 = fmul fast float %707, %589
  %711 = fmul fast float %708, %589
  %712 = fmul fast float %709, %589
  %713 = fadd fast float %710, 5.000000e-01
  %714 = fadd fast float %711, 5.000000e-01
  %715 = fadd fast float %712, 5.000000e-01
  %716 = call float @dx.op.unary.f32(i32 24, float %564)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %565)  ; Sqrt(value)
  %718 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %719 = fmul fast float %713, 2.000000e+00
  %720 = fsub fast float 1.000000e+00, %719
  %721 = fmul fast float %720, %716
  %722 = fadd fast float %721, %719
  %723 = fmul fast float %722, %716
  %724 = fmul fast float %714, 2.000000e+00
  %725 = fsub fast float 1.000000e+00, %724
  %726 = fmul fast float %725, %717
  %727 = fadd fast float %726, %724
  %728 = fmul fast float %727, %717
  %729 = fmul fast float %715, 2.000000e+00
  %730 = fsub fast float 1.000000e+00, %729
  %731 = fmul fast float %730, %718
  %732 = fadd fast float %731, %729
  %733 = fmul fast float %732, %718
  %734 = fmul fast float %723, %723
  %735 = fmul fast float %728, %728
  %736 = fmul fast float %733, %733
  br label %753

; <label>:737                                     ; preds = %700
  %738 = fmul fast float %235, %235
  %739 = fmul fast float %239, %239
  %740 = fmul fast float %243, %243
  %741 = fadd fast float %738, -1.000000e+00
  %742 = fadd fast float %739, -1.000000e+00
  %743 = fadd fast float %740, -1.000000e+00
  %744 = fmul fast float %589, %741
  %745 = fmul fast float %589, %742
  %746 = fmul fast float %589, %743
  %747 = fadd fast float %744, 1.000000e+00
  %748 = fadd fast float %745, 1.000000e+00
  %749 = fadd fast float %746, 1.000000e+00
  %750 = fmul fast float %747, %564
  %751 = fmul fast float %748, %565
  %752 = fmul fast float %749, %566
  br label %753

; <label>:753                                     ; preds = %737, %703, %594, %552
  %754 = phi float [ %699, %594 ], [ %575, %703 ], [ %575, %737 ], [ 0x3FA23C0BE0000000, %552 ]
  %755 = phi float [ %691, %594 ], [ %734, %703 ], [ %750, %737 ], [ 1.000000e+00, %552 ]
  %756 = phi float [ %692, %594 ], [ %735, %703 ], [ %751, %737 ], [ 1.000000e+00, %552 ]
  %757 = phi float [ %693, %594 ], [ %736, %703 ], [ %752, %737 ], [ 1.000000e+00, %552 ]
  %758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.i32 %758, 1
  %760 = and i32 %759, 1
  %761 = icmp ne i32 %760, 0
  %762 = add i32 %22, 356
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 32
  %766 = icmp ne i32 %765, 0
  %767 = and i1 %761, %766
  %768 = select i1 %767, float 1.000000e+00, float %755
  %769 = select i1 %767, float 0x3FD3333340000000, float %756
  %770 = select i1 %767, float 0x3FD3333340000000, float %757
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 32
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %847, label %775

; <label>:775                                     ; preds = %753
  %776 = add i32 %22, 92
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %22, 392
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = add i32 %781, 0
  %783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %783, %dx.types.Handle %63, float %553, float %554, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = extractvalue %dx.types.ResRet.f32 %784, 3
  %789 = and i32 %778, 255
  %790 = uitofp i32 %789 to float
  %791 = lshr i32 %778, 8
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = lshr i32 %778, 16
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101000000000
  %798 = fmul fast float %785, %790
  %799 = fadd fast float %798, %793
  %800 = fmul fast float %799, 0x3F70101000000000
  %801 = fadd fast float %786, -5.000000e-01
  %802 = fadd fast float %788, -5.000000e-01
  %803 = fmul fast float %801, %797
  %804 = fmul fast float %802, %797
  %805 = fadd fast float %803, 5.000000e-01
  %806 = fadd fast float %804, 5.000000e-01
  %807 = fmul fast float %805, 2.000000e+00
  %808 = fadd fast float %807, -1.000000e+00
  %809 = fmul fast float %806, 2.000000e+00
  %810 = fadd fast float %809, -1.000000e+00
  %811 = fadd fast float %808, %810
  %812 = fmul fast float %811, 5.000000e-01
  %813 = fsub fast float %808, %810
  %814 = fmul fast float %813, 5.000000e-01
  %815 = call float @dx.op.unary.f32(i32 6, float %812)  ; FAbs(value)
  %816 = fsub fast float 1.000000e+00, %815
  %817 = call float @dx.op.unary.f32(i32 6, float %814)  ; FAbs(value)
  %818 = fsub fast float %816, %817
  %819 = call float @dx.op.dot3.f32(i32 55, float %812, float %814, float %818, float %812, float %814, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = call float @dx.op.unary.f32(i32 25, float %819)  ; Rsqrt(value)
  %821 = fmul fast float %812, %820
  %822 = fmul fast float %814, %820
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 67108864
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %843, label %827

; <label>:827                                     ; preds = %775
  %828 = add i32 %22, 280
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 65535
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 65535
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %830, 16
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = fsub fast float %800, %838
  %840 = fmul fast float %839, %832
  %841 = fadd fast float %840, %836
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  br label %843

; <label>:843                                     ; preds = %827, %775
  %844 = phi float [ %842, %827 ], [ %800, %775 ]
  %845 = call float @dx.op.dot2.f32(i32 54, float %821, float %822, float %457, float %458)  ; Dot2(ax,ay,bx,by)
  %846 = call float @dx.op.dot2.f32(i32 54, float %821, float %822, float %459, float %460)  ; Dot2(ax,ay,bx,by)
  br label %847

; <label>:847                                     ; preds = %843, %753
  %848 = phi float [ %844, %843 ], [ 0x3FD6666660000000, %753 ]
  %849 = phi float [ %845, %843 ], [ 0.000000e+00, %753 ]
  %850 = phi float [ %846, %843 ], [ 0.000000e+00, %753 ]
  %851 = phi float [ %787, %843 ], [ 1.000000e+00, %753 ]
  %852 = add i32 %22, 160
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 22
  %856 = shl nuw nsw i32 %855, 5
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 64
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %895, label %862

; <label>:862                                     ; preds = %847
  %863 = add i32 %22, 408
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 131072
  %871 = icmp eq i32 %870, 0
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %63, float %553, float %554, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = fmul fast float %873, %223
  %877 = fmul fast float %874, %226
  %878 = fmul fast float %875, %229
  br i1 %871, label %885, label %879

; <label>:879                                     ; preds = %862
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = fmul fast float %881, %876
  %883 = fmul fast float %881, %877
  %884 = fmul fast float %881, %878
  br label %885

; <label>:885                                     ; preds = %879, %862
  %886 = phi float [ %882, %879 ], [ %876, %862 ]
  %887 = phi float [ %883, %879 ], [ %877, %862 ]
  %888 = phi float [ %884, %879 ], [ %878, %862 ]
  %889 = fmul fast float %886, %857
  %890 = select i1 %206, float %889, float %886
  %891 = call float @dx.op.dot3.f32(i32 55, float %890, float %887, float %888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = select i1 %206, float 0.000000e+00, float %886
  %893 = select i1 %206, float %891, float %887
  %894 = select i1 %206, float 0.000000e+00, float %888
  br label %895

; <label>:895                                     ; preds = %885, %847
  %896 = phi float [ %892, %885 ], [ 0.000000e+00, %847 ]
  %897 = phi float [ %893, %885 ], [ 0.000000e+00, %847 ]
  %898 = phi float [ %894, %885 ], [ 0.000000e+00, %847 ]
  %899 = add i32 %22, 96
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = lshr i32 %901, 8
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = call float @dx.op.dot3.f32(i32 55, float %768, float %769, float %770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = fmul fast float %906, %907
  %909 = fadd fast float %908, %903
  %910 = fmul fast float %909, 0x3F70101020000000
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  br label %912

; <label>:912                                     ; preds = %895, %439
  %913 = phi float [ 0.000000e+00, %439 ], [ %849, %895 ]
  %914 = phi float [ 0.000000e+00, %439 ], [ %850, %895 ]
  %915 = phi float [ 0.000000e+00, %439 ], [ %896, %895 ]
  %916 = phi float [ 0.000000e+00, %439 ], [ %897, %895 ]
  %917 = phi float [ 0.000000e+00, %439 ], [ %898, %895 ]
  %918 = phi float [ 0.000000e+00, %439 ], [ %768, %895 ]
  %919 = phi float [ 0.000000e+00, %439 ], [ %769, %895 ]
  %920 = phi float [ 0.000000e+00, %439 ], [ %770, %895 ]
  %921 = phi float [ 0.000000e+00, %439 ], [ %754, %895 ]
  %922 = phi float [ 0.000000e+00, %439 ], [ 1.000000e+00, %895 ]
  %923 = phi float [ 0.000000e+00, %439 ], [ %848, %895 ]
  %924 = phi float [ 0.000000e+00, %439 ], [ %851, %895 ]
  %925 = phi float [ 0.000000e+00, %439 ], [ %911, %895 ]
  br i1 %390, label %1652, label %926

; <label>:926                                     ; preds = %912
  %927 = icmp ult i32 %445, 2
  %928 = add i32 %22, 40
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = add i32 %22, 44
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = or i32 %933, %930
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1652, label %936

; <label>:936                                     ; preds = %926
  %937 = and i32 %930, 262144
  %938 = icmp ne i32 %937, 0
  %939 = select i1 %938, float %28, float 1.000000e+00
  %940 = select i1 %938, float %29, float 0.000000e+00
  %941 = select i1 %938, float %30, float 0.000000e+00
  %942 = select i1 %938, float %31, float 1.000000e+00
  %943 = select i1 %938, float %32, float %55
  %944 = select i1 %938, float %33, float %56
  %945 = add i32 %22, 300
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 16
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = fmul fast float %949, 0x3F50624DE0000000
  %951 = add i32 %22, 104
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 16
  %955 = and i32 %954, 255
  %956 = lshr i32 %953, 24
  %957 = add i32 %22, 308
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 65535
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = lshr i32 %959, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = add i32 %22, 48
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 22
  %968 = shl nuw nsw i32 %967, 5
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = shl i32 %966, 4
  %971 = and i32 %970, 32752
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %966, 7
  %974 = and i32 %973, 32752
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %978 = fmul fast float %977, 1.000000e+03
  %979 = fmul fast float %300, %978
  %980 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %981 = fadd fast float %980, %290
  %982 = fmul fast float %301, %978
  %983 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %984 = fadd fast float %983, %292
  %985 = fmul fast float %950, %978
  %986 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %987 = fmul fast float %986, 0x401921FB60000000
  %988 = fadd fast float %987, %969
  %989 = call float @dx.op.unary.f32(i32 13, float %988)  ; Sin(value)
  %990 = call float @dx.op.unary.f32(i32 12, float %988)  ; Cos(value)
  %991 = fsub fast float -0.000000e+00, %989
  %992 = fadd fast float %943, -5.000000e-01
  %993 = fadd fast float %944, -5.000000e-01
  %994 = fmul fast float %961, %992
  %995 = fmul fast float %963, %993
  %996 = fadd fast float %994, 5.000000e-01
  %997 = fadd fast float %995, 5.000000e-01
  %998 = fmul fast float %972, %996
  %999 = fmul fast float %975, %997
  %1000 = fmul fast float %990, %998
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %991, float %999, float %1000)  ; FMad(a,b,c)
  %1002 = fmul fast float %989, %998
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %990, float %999, float %1002)  ; FMad(a,b,c)
  %1004 = fadd fast float %981, %1001
  %1005 = fadd fast float %984, %1003
  %1006 = icmp ugt i32 %955, 1
  %1007 = icmp ugt i32 %953, 33554431
  %1008 = or i1 %1007, %1006
  br i1 %1008, label %1009, label %1034

; <label>:1009                                    ; preds = %936
  %1010 = add i32 %22, 244
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = fmul fast float %977, %1014
  %1016 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1017 = mul nuw nsw i32 %955, %956
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1016, %1018
  %1020 = call float @dx.op.unary.f32(i32 27, float %1019)  ; Round_ni(value)
  %1021 = fptoui float %1020 to i32
  %1022 = urem i32 %1021, %955
  %1023 = udiv i32 %1021, %956
  %1024 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1025 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1026 = uitofp i32 %1022 to float
  %1027 = uitofp i32 %1023 to float
  %1028 = fadd fast float %1024, %1026
  %1029 = fadd fast float %1025, %1027
  %1030 = uitofp i32 %955 to float
  %1031 = uitofp i32 %956 to float
  %1032 = fdiv fast float %1028, %1030
  %1033 = fdiv fast float %1029, %1031
  br label %1034

; <label>:1034                                    ; preds = %1009, %936
  %1035 = phi float [ %1032, %1009 ], [ %1004, %936 ]
  %1036 = phi float [ %1033, %1009 ], [ %1005, %936 ]
  %1037 = and i32 %930, 256
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1085, label %1039

; <label>:1039                                    ; preds = %1034
  %1040 = add i32 %22, 444
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = add i32 %1042, 0
  %1044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1044, %dx.types.Handle %64, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = add i32 %22, 116
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = shl i32 %1049, 4
  %1051 = and i32 %1050, 32752
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = lshr i32 %1049, 7
  %1054 = and i32 %1053, 32752
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = fsub fast float 1.000000e+00, %442
  %1057 = call float @dx.op.binary.f32(i32 35, float %1056, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1058 = bitcast float %442 to i32
  %1059 = sitofp i32 %1058 to float
  %1060 = fadd fast float %1059, 0xC1CFBF8940000000
  %1061 = fmul fast float %1055, %1060
  %1062 = fadd fast float %1061, 0x41CFBF8940000000
  %1063 = fptosi float %1062 to i32
  %1064 = bitcast i32 %1063 to float
  %1065 = bitcast float %1057 to i32
  %1066 = sitofp i32 %1065 to float
  %1067 = fadd fast float %1066, 0xC1CFBF8940000000
  %1068 = fmul fast float %1067, %1055
  %1069 = fadd fast float %1068, 0x41CFBF8940000000
  %1070 = fptosi float %1069 to i32
  %1071 = bitcast i32 %1070 to float
  %1072 = fmul fast float %1064, %1052
  %1073 = fmul fast float %1071, %1052
  %1074 = fsub fast float %1057, %1072
  %1075 = fadd fast float %1073, %1057
  %1076 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1077 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1078 = fsub fast float %1046, %1076
  %1079 = fsub fast float %1077, %1076
  %1080 = bitcast float %1079 to i32
  %1081 = sub nsw i32 2129859010, %1080
  %1082 = bitcast i32 %1081 to float
  %1083 = fmul fast float %1082, %1078
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  br label %1085

; <label>:1085                                    ; preds = %1039, %1034
  %1086 = phi float [ %1084, %1039 ], [ %442, %1034 ]
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 128
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1107, label %1091

; <label>:1091                                    ; preds = %1085
  %1092 = add i32 %22, 428
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1096, %dx.types.Handle %64, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 524288
  %1102 = icmp ne i32 %1101, 0
  %1103 = fcmp fast ogt float %1098, 0x3FE0101020000000
  %1104 = select i1 %1103, float 1.000000e+00, float 0.000000e+00
  %1105 = select i1 %1102, float %1104, float %1098
  %1106 = fmul fast float %1105, %1086
  br label %1107

; <label>:1107                                    ; preds = %1091, %1085
  %1108 = phi float [ %1106, %1091 ], [ %1086, %1085 ]
  %1109 = fcmp fast ult float %1108, 0x3F70101020000000
  br i1 %1109, label %1652, label %1110

; <label>:1110                                    ; preds = %1107
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 16
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1313, label %1115

; <label>:1115                                    ; preds = %1110
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %22, 380
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1122, %dx.types.Handle %63, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = and i32 %1117, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = lshr i32 %1117, 8
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1127, %1129
  %1134 = fadd fast float %1133, %1132
  %1135 = fmul fast float %1134, 0x3F70101000000000
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 512
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1148, label %1140

; <label>:1140                                    ; preds = %1115
  %1141 = add i32 %22, 460
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %64, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  br label %1148

; <label>:1148                                    ; preds = %1140, %1115
  %1149 = phi float [ %1147, %1140 ], [ 1.000000e+00, %1115 ]
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 33554432
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1260, label %1154

; <label>:1154                                    ; preds = %1148
  %1155 = add i32 %22, 240
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 65535
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = lshr i32 %1157, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = add i32 %22, 244
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 65535
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = lshr i32 %1168, 24
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1170, 0x3F70101020000000
  %1172 = and i32 %1168, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F70101020000000
  %1175 = lshr i32 %1168, 8
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = lshr i32 %1168, 16
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = add i32 %22, 236
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 24
  %1187 = uitofp i32 %1186 to float
  %1188 = fmul fast float %1187, 0x3F70101020000000
  %1189 = and i32 %1185, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = lshr i32 %1185, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F70101020000000
  %1196 = lshr i32 %1185, 16
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F70101020000000
  %1200 = bitcast float %1124 to i32
  %1201 = ashr i32 %1200, 1
  %1202 = sub nsw i32 1597463174, %1201
  %1203 = bitcast i32 %1202 to float
  %1204 = fmul fast float %1124, 5.000000e-01
  %1205 = fmul fast float %1203, %1203
  %1206 = fmul fast float %1205, %1204
  %1207 = fsub fast float 1.500000e+00, %1206
  %1208 = fmul fast float %1203, %1124
  %1209 = fmul fast float %1208, %1207
  %1210 = bitcast float %1125 to i32
  %1211 = ashr i32 %1210, 1
  %1212 = sub nsw i32 1597463174, %1211
  %1213 = bitcast i32 %1212 to float
  %1214 = fmul fast float %1125, 5.000000e-01
  %1215 = fmul fast float %1213, %1213
  %1216 = fmul fast float %1215, %1214
  %1217 = fsub fast float 1.500000e+00, %1216
  %1218 = fmul fast float %1213, %1125
  %1219 = fmul fast float %1218, %1217
  %1220 = bitcast float %1126 to i32
  %1221 = ashr i32 %1220, 1
  %1222 = sub nsw i32 1597463174, %1221
  %1223 = bitcast i32 %1222 to float
  %1224 = fmul fast float %1126, 5.000000e-01
  %1225 = fmul fast float %1223, %1223
  %1226 = fmul fast float %1225, %1224
  %1227 = fsub fast float 1.500000e+00, %1226
  %1228 = fmul fast float %1223, %1126
  %1229 = fmul fast float %1228, %1227
  %1230 = fsub fast float %1209, %1191
  %1231 = fsub fast float %1219, %1195
  %1232 = fsub fast float %1229, %1199
  %1233 = fmul fast float %1230, %1159
  %1234 = fmul fast float %1231, %1161
  %1235 = fmul fast float %1232, %1166
  %1236 = fadd fast float %1233, %1174
  %1237 = fadd fast float %1234, %1178
  %1238 = fadd fast float %1235, %1182
  %1239 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1240 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1241 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1240, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fsub fast float %1242, %1124
  %1246 = fsub fast float %1243, %1125
  %1247 = fsub fast float %1244, %1126
  %1248 = fmul fast float %1245, %1149
  %1249 = fmul fast float %1246, %1149
  %1250 = fmul fast float %1247, %1149
  %1251 = fadd fast float %1248, %1124
  %1252 = fadd fast float %1249, %1125
  %1253 = fadd fast float %1250, %1126
  %1254 = fadd fast float %1171, %1135
  %1255 = fsub fast float %1254, %1188
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fsub fast float %1256, %1135
  %1258 = fmul fast float %1257, %1149
  %1259 = fadd fast float %1258, %1135
  br label %1313

; <label>:1260                                    ; preds = %1148
  %1261 = and i32 %1151, 134217728
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1297, label %1263

; <label>:1263                                    ; preds = %1260
  %1264 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1265 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1266 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1267 = fadd fast float %1264, -5.000000e-01
  %1268 = fadd fast float %1265, -5.000000e-01
  %1269 = fadd fast float %1266, -5.000000e-01
  %1270 = fmul fast float %1267, %1149
  %1271 = fmul fast float %1268, %1149
  %1272 = fmul fast float %1269, %1149
  %1273 = fadd fast float %1270, 5.000000e-01
  %1274 = fadd fast float %1271, 5.000000e-01
  %1275 = fadd fast float %1272, 5.000000e-01
  %1276 = call float @dx.op.unary.f32(i32 24, float %1124)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  %1278 = call float @dx.op.unary.f32(i32 24, float %1126)  ; Sqrt(value)
  %1279 = fmul fast float %1273, 2.000000e+00
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1280, %1276
  %1282 = fadd fast float %1281, %1279
  %1283 = fmul fast float %1282, %1276
  %1284 = fmul fast float %1274, 2.000000e+00
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = fmul fast float %1285, %1277
  %1287 = fadd fast float %1286, %1284
  %1288 = fmul fast float %1287, %1277
  %1289 = fmul fast float %1275, 2.000000e+00
  %1290 = fsub fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1290, %1278
  %1292 = fadd fast float %1291, %1289
  %1293 = fmul fast float %1292, %1278
  %1294 = fmul fast float %1283, %1283
  %1295 = fmul fast float %1288, %1288
  %1296 = fmul fast float %1293, %1293
  br label %1313

; <label>:1297                                    ; preds = %1260
  %1298 = fmul fast float %277, %277
  %1299 = fmul fast float %281, %281
  %1300 = fmul fast float %285, %285
  %1301 = fadd fast float %1298, -1.000000e+00
  %1302 = fadd fast float %1299, -1.000000e+00
  %1303 = fadd fast float %1300, -1.000000e+00
  %1304 = fmul fast float %1149, %1301
  %1305 = fmul fast float %1149, %1302
  %1306 = fmul fast float %1149, %1303
  %1307 = fadd fast float %1304, 1.000000e+00
  %1308 = fadd fast float %1305, 1.000000e+00
  %1309 = fadd fast float %1306, 1.000000e+00
  %1310 = fmul fast float %1307, %1124
  %1311 = fmul fast float %1308, %1125
  %1312 = fmul fast float %1309, %1126
  br label %1313

; <label>:1313                                    ; preds = %1297, %1263, %1154, %1110
  %1314 = phi float [ %1259, %1154 ], [ %1135, %1263 ], [ %1135, %1297 ], [ 0x3FA23C0BE0000000, %1110 ]
  %1315 = phi float [ %1251, %1154 ], [ %1294, %1263 ], [ %1310, %1297 ], [ 1.000000e+00, %1110 ]
  %1316 = phi float [ %1252, %1154 ], [ %1295, %1263 ], [ %1311, %1297 ], [ 1.000000e+00, %1110 ]
  %1317 = phi float [ %1253, %1154 ], [ %1296, %1263 ], [ %1312, %1297 ], [ 1.000000e+00, %1110 ]
  %1318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.i32 %1318, 1
  %1320 = and i32 %1319, 1
  %1321 = icmp ne i32 %1320, 0
  %1322 = add i32 %22, 356
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 32
  %1326 = icmp ne i32 %1325, 0
  %1327 = and i1 %1321, %1326
  %1328 = select i1 %1327, float 1.000000e+00, float %1315
  %1329 = select i1 %1327, float 0x3FD3333340000000, float %1316
  %1330 = select i1 %1327, float 0x3FD3333340000000, float %1317
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %1332, 32
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1407, label %1335

; <label>:1335                                    ; preds = %1313
  %1336 = add i32 %22, 108
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %22, 396
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %1341, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1343, %dx.types.Handle %63, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.ResRet.f32 %1344, 3
  %1349 = and i32 %1338, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = lshr i32 %1338, 8
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = lshr i32 %1338, 16
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1356, 0x3F70101000000000
  %1358 = fmul fast float %1345, %1350
  %1359 = fadd fast float %1358, %1353
  %1360 = fmul fast float %1359, 0x3F70101000000000
  %1361 = fadd fast float %1346, -5.000000e-01
  %1362 = fadd fast float %1348, -5.000000e-01
  %1363 = fmul fast float %1361, %1357
  %1364 = fmul fast float %1362, %1357
  %1365 = fadd fast float %1363, 5.000000e-01
  %1366 = fadd fast float %1364, 5.000000e-01
  %1367 = fmul fast float %1365, 2.000000e+00
  %1368 = fadd fast float %1367, -1.000000e+00
  %1369 = fmul fast float %1366, 2.000000e+00
  %1370 = fadd fast float %1369, -1.000000e+00
  %1371 = fadd fast float %1368, %1370
  %1372 = fmul fast float %1371, 5.000000e-01
  %1373 = fsub fast float %1368, %1370
  %1374 = fmul fast float %1373, 5.000000e-01
  %1375 = call float @dx.op.unary.f32(i32 6, float %1372)  ; FAbs(value)
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = call float @dx.op.unary.f32(i32 6, float %1374)  ; FAbs(value)
  %1378 = fsub fast float %1376, %1377
  %1379 = call float @dx.op.dot3.f32(i32 55, float %1372, float %1374, float %1378, float %1372, float %1374, float %1378)  ; Dot3(ax,ay,az,bx,by,bz)
  %1380 = call float @dx.op.unary.f32(i32 25, float %1379)  ; Rsqrt(value)
  %1381 = fmul fast float %1372, %1380
  %1382 = fmul fast float %1374, %1380
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 67108864
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1403, label %1387

; <label>:1387                                    ; preds = %1335
  %1388 = add i32 %22, 296
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 65535
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = lshr i32 %1390, 16
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = fsub fast float %1360, %1398
  %1400 = fmul fast float %1399, %1392
  %1401 = fadd fast float %1400, %1396
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  br label %1403

; <label>:1403                                    ; preds = %1387, %1335
  %1404 = phi float [ %1402, %1387 ], [ %1360, %1335 ]
  %1405 = call float @dx.op.dot2.f32(i32 54, float %1381, float %1382, float %939, float %940)  ; Dot2(ax,ay,bx,by)
  %1406 = call float @dx.op.dot2.f32(i32 54, float %1381, float %1382, float %941, float %942)  ; Dot2(ax,ay,bx,by)
  br label %1407

; <label>:1407                                    ; preds = %1403, %1313
  %1408 = phi float [ %1404, %1403 ], [ 0x3FD6666660000000, %1313 ]
  %1409 = phi float [ %1405, %1403 ], [ 0.000000e+00, %1313 ]
  %1410 = phi float [ %1406, %1403 ], [ 0.000000e+00, %1313 ]
  %1411 = phi float [ %1347, %1403 ], [ 1.000000e+00, %1313 ]
  %1412 = add i32 %22, 176
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = lshr i32 %1414, 22
  %1416 = shl nuw nsw i32 %1415, 5
  %1417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1416)  ; LegacyF16ToF32(value)
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 64
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1455, label %1422

; <label>:1422                                    ; preds = %1407
  %1423 = add i32 %22, 412
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1425, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 131072
  %1431 = icmp eq i32 %1430, 0
  %1432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1427, %dx.types.Handle %63, float %1035, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = fmul fast float %1433, %265
  %1437 = fmul fast float %1434, %268
  %1438 = fmul fast float %1435, %271
  br i1 %1431, label %1445, label %1439

; <label>:1439                                    ; preds = %1422
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = fmul fast float %1441, %1436
  %1443 = fmul fast float %1441, %1437
  %1444 = fmul fast float %1441, %1438
  br label %1445

; <label>:1445                                    ; preds = %1439, %1422
  %1446 = phi float [ %1442, %1439 ], [ %1436, %1422 ]
  %1447 = phi float [ %1443, %1439 ], [ %1437, %1422 ]
  %1448 = phi float [ %1444, %1439 ], [ %1438, %1422 ]
  %1449 = fmul fast float %1446, %1417
  %1450 = select i1 %206, float %1449, float %1446
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1447, float %1448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = select i1 %206, float 0.000000e+00, float %1446
  %1453 = select i1 %206, float %1451, float %1447
  %1454 = select i1 %206, float 0.000000e+00, float %1448
  br label %1455

; <label>:1455                                    ; preds = %1445, %1407
  %1456 = phi float [ %1452, %1445 ], [ 0.000000e+00, %1407 ]
  %1457 = phi float [ %1453, %1445 ], [ 0.000000e+00, %1407 ]
  %1458 = phi float [ %1454, %1445 ], [ 0.000000e+00, %1407 ]
  %1459 = add i32 %22, 112
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = lshr i32 %1461, 8
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1329, float %1330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = fmul fast float %1466, %1467
  %1469 = fadd fast float %1468, %1463
  %1470 = fmul fast float %1469, 0x3F70101020000000
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  br i1 %927, label %1472, label %1480

; <label>:1472                                    ; preds = %1455
  %1473 = fsub fast float 1.000000e+00, %1108
  %1474 = fmul fast float %1473, %918
  %1475 = fmul fast float %1473, %919
  %1476 = fmul fast float %1473, %920
  %1477 = fmul fast float %1473, %915
  %1478 = fmul fast float %1473, %916
  %1479 = fmul fast float %1473, %917
  br label %1480

; <label>:1480                                    ; preds = %1472, %1455
  %1481 = phi float [ %1477, %1472 ], [ %915, %1455 ]
  %1482 = phi float [ %1478, %1472 ], [ %916, %1455 ]
  %1483 = phi float [ %1479, %1472 ], [ %917, %1455 ]
  %1484 = phi float [ %1474, %1472 ], [ %918, %1455 ]
  %1485 = phi float [ %1475, %1472 ], [ %919, %1455 ]
  %1486 = phi float [ %1476, %1472 ], [ %920, %1455 ]
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 3
  %1490 = icmp eq i32 %1489, 3
  br i1 %1490, label %1569, label %1491

; <label>:1491                                    ; preds = %1480
  %1492 = and i32 %1488, 16
  %1493 = icmp ne i32 %1492, 0
  %1494 = select i1 %1493, float %1108, float 0.000000e+00
  %1495 = icmp eq i32 %1489, 0
  br i1 %1495, label %1496, label %1524

; <label>:1496                                    ; preds = %1491
  %1497 = and i32 %1488, 64
  %1498 = icmp ne i32 %1497, 0
  %1499 = select i1 %1498, float %1108, float 0.000000e+00
  %1500 = fsub fast float %1328, %1484
  %1501 = fsub fast float %1329, %1485
  %1502 = fsub fast float %1330, %1486
  %1503 = fmul fast float %1494, %1500
  %1504 = fmul fast float %1494, %1501
  %1505 = fmul fast float %1494, %1502
  %1506 = fadd fast float %1503, %1484
  %1507 = fadd fast float %1504, %1485
  %1508 = fadd fast float %1505, %1486
  %1509 = fsub fast float %1314, %921
  %1510 = fmul fast float %1494, %1509
  %1511 = fadd fast float %1510, %921
  %1512 = fsub fast float %1456, %1481
  %1513 = fsub fast float %1457, %1482
  %1514 = fsub fast float %1458, %1483
  %1515 = fmul fast float %1499, %1512
  %1516 = fmul fast float %1499, %1513
  %1517 = fmul fast float %1499, %1514
  %1518 = fadd fast float %1515, %1481
  %1519 = fadd fast float %1516, %1482
  %1520 = fadd fast float %1517, %1483
  %1521 = fsub fast float %1471, %925
  %1522 = fmul fast float %1494, %1521
  %1523 = fadd fast float %1522, %925
  br label %1569

; <label>:1524                                    ; preds = %1491
  %1525 = icmp eq i32 %1489, 1
  br i1 %1525, label %1526, label %1539

; <label>:1526                                    ; preds = %1524
  %1527 = fadd fast float %1328, -1.000000e+00
  %1528 = fadd fast float %1329, -1.000000e+00
  %1529 = fadd fast float %1330, -1.000000e+00
  %1530 = fmul fast float %1494, %1527
  %1531 = fmul fast float %1494, %1528
  %1532 = fmul fast float %1494, %1529
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fmul fast float %1533, %1484
  %1537 = fmul fast float %1534, %1485
  %1538 = fmul fast float %1535, %1486
  br label %1569

; <label>:1539                                    ; preds = %1524
  %1540 = icmp eq i32 %1489, 2
  br i1 %1540, label %1541, label %1569

; <label>:1541                                    ; preds = %1539
  %1542 = call float @dx.op.unary.f32(i32 24, float %1328)  ; Sqrt(value)
  %1543 = call float @dx.op.unary.f32(i32 24, float %1329)  ; Sqrt(value)
  %1544 = call float @dx.op.unary.f32(i32 24, float %1330)  ; Sqrt(value)
  %1545 = fadd fast float %1542, -5.000000e-01
  %1546 = fadd fast float %1543, -5.000000e-01
  %1547 = fadd fast float %1544, -5.000000e-01
  %1548 = fmul fast float %1545, %1494
  %1549 = fmul fast float %1546, %1494
  %1550 = fmul fast float %1547, %1494
  %1551 = fadd fast float %1548, 5.000000e-01
  %1552 = fadd fast float %1549, 5.000000e-01
  %1553 = fadd fast float %1550, 5.000000e-01
  %1554 = fmul fast float %1551, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1484
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1484
  %1559 = fmul fast float %1552, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1485
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1485
  %1564 = fmul fast float %1553, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1486
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1486
  br label %1569

; <label>:1569                                    ; preds = %1541, %1539, %1526, %1496, %1480
  %1570 = phi float [ %1481, %1480 ], [ %1481, %1541 ], [ %1481, %1539 ], [ %1481, %1526 ], [ %1518, %1496 ]
  %1571 = phi float [ %1482, %1480 ], [ %1482, %1541 ], [ %1482, %1539 ], [ %1482, %1526 ], [ %1519, %1496 ]
  %1572 = phi float [ %1483, %1480 ], [ %1483, %1541 ], [ %1483, %1539 ], [ %1483, %1526 ], [ %1520, %1496 ]
  %1573 = phi float [ %1484, %1480 ], [ %1558, %1541 ], [ %1484, %1539 ], [ %1536, %1526 ], [ %1506, %1496 ]
  %1574 = phi float [ %1485, %1480 ], [ %1563, %1541 ], [ %1485, %1539 ], [ %1537, %1526 ], [ %1507, %1496 ]
  %1575 = phi float [ %1486, %1480 ], [ %1568, %1541 ], [ %1486, %1539 ], [ %1538, %1526 ], [ %1508, %1496 ]
  %1576 = phi float [ %921, %1480 ], [ %921, %1541 ], [ %921, %1539 ], [ %921, %1526 ], [ %1511, %1496 ]
  %1577 = phi float [ %925, %1480 ], [ %925, %1541 ], [ %925, %1539 ], [ %925, %1526 ], [ %1523, %1496 ]
  %1578 = and i32 %1488, 12
  %1579 = icmp eq i32 %1578, 12
  br i1 %1579, label %1652, label %1580

; <label>:1580                                    ; preds = %1569
  %1581 = and i32 %1488, 2097184
  %1582 = icmp eq i32 %1581, 2097184
  %1583 = select i1 %1582, float %1108, float 0.000000e+00
  %1584 = and i32 %1488, 4194336
  %1585 = icmp eq i32 %1584, 4194336
  %1586 = select i1 %1585, float %1108, float 0.000000e+00
  %1587 = and i32 %1488, 8388640
  %1588 = icmp eq i32 %1587, 8388640
  %1589 = select i1 %1588, float %1108, float 0.000000e+00
  %1590 = icmp eq i32 %1578, 0
  br i1 %1590, label %1591, label %1604

; <label>:1591                                    ; preds = %1580
  %1592 = fsub fast float %1409, %913
  %1593 = fsub fast float %1410, %914
  %1594 = fmul fast float %1583, %1592
  %1595 = fmul fast float %1583, %1593
  %1596 = fadd fast float %1594, %913
  %1597 = fadd fast float %1595, %914
  %1598 = fsub fast float %1411, %924
  %1599 = fmul fast float %1586, %1598
  %1600 = fadd fast float %1599, %924
  %1601 = fsub fast float %1408, %923
  %1602 = fmul fast float %1589, %1601
  %1603 = fadd fast float %1602, %923
  br label %1652

; <label>:1604                                    ; preds = %1580
  %1605 = icmp eq i32 %1578, 4
  br i1 %1605, label %1606, label %1638

; <label>:1606                                    ; preds = %1604
  %1607 = fmul fast float %1583, %1409
  %1608 = fmul fast float %1583, %1410
  %1609 = fadd fast float %1607, %913
  %1610 = fadd fast float %1608, %914
  %1611 = call float @dx.op.binary.f32(i32 36, float %924, float %1411)  ; FMin(a,b)
  %1612 = fsub fast float %1611, %924
  %1613 = fmul fast float %1612, %1586
  %1614 = fadd fast float %1613, %924
  %1615 = fadd fast float %1408, %923
  %1616 = fmul fast float %1615, 0x3FF337FAE0000000
  %1617 = fmul fast float %923, %923
  %1618 = fmul fast float %1408, %1408
  %1619 = fadd fast float %1618, %1617
  %1620 = fmul fast float %1619, 0x3FE5152B00000000
  %1621 = fmul fast float %923, 0xBFCC1F85E0000000
  %1622 = fmul fast float %1621, %1408
  %1623 = fadd fast float %1622, 0xBFE1363700000000
  %1624 = fadd fast float %1623, %1616
  %1625 = fsub fast float %1624, %1620
  %1626 = fmul fast float %1615, 0x3FBA6F0D00000000
  %1627 = fmul fast float %1619, 0x3FD0432880000000
  %1628 = fmul fast float %923, 0xBFEF110800000000
  %1629 = fmul fast float %1628, %1408
  %1630 = fadd fast float %1629, 1.000000e+00
  %1631 = fsub fast float %1630, %1626
  %1632 = fadd fast float %1631, %1627
  %1633 = fdiv fast float %1625, %1632
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fsub fast float %1634, %923
  %1636 = fmul fast float %1635, %1589
  %1637 = fadd fast float %1636, %923
  br label %1652

; <label>:1638                                    ; preds = %1604
  %1639 = icmp eq i32 %1578, 8
  br i1 %1639, label %1640, label %1652

; <label>:1640                                    ; preds = %1638
  %1641 = fmul fast float %1583, %1409
  %1642 = fmul fast float %1583, %1410
  %1643 = fadd fast float %1641, %913
  %1644 = fadd fast float %1642, %914
  %1645 = call float @dx.op.binary.f32(i32 36, float %924, float %1411)  ; FMin(a,b)
  %1646 = fsub fast float %1645, %924
  %1647 = fmul fast float %1646, %1586
  %1648 = fadd fast float %1647, %924
  %1649 = fsub fast float %1408, %923
  %1650 = fmul fast float %1589, %1649
  %1651 = fadd fast float %1650, %923
  br label %1652

; <label>:1652                                    ; preds = %1640, %1638, %1606, %1591, %1569, %1107, %926, %912
  %1653 = phi float [ %913, %1569 ], [ %913, %1107 ], [ %913, %912 ], [ %1643, %1640 ], [ %913, %1638 ], [ %1609, %1606 ], [ %1596, %1591 ], [ %913, %926 ]
  %1654 = phi float [ %914, %1569 ], [ %914, %1107 ], [ %914, %912 ], [ %1644, %1640 ], [ %914, %1638 ], [ %1610, %1606 ], [ %1597, %1591 ], [ %914, %926 ]
  %1655 = phi float [ %1570, %1569 ], [ %915, %1107 ], [ %915, %912 ], [ %1570, %1640 ], [ %1570, %1638 ], [ %1570, %1606 ], [ %1570, %1591 ], [ %915, %926 ]
  %1656 = phi float [ %1571, %1569 ], [ %916, %1107 ], [ %916, %912 ], [ %1571, %1640 ], [ %1571, %1638 ], [ %1571, %1606 ], [ %1571, %1591 ], [ %916, %926 ]
  %1657 = phi float [ %1572, %1569 ], [ %917, %1107 ], [ %917, %912 ], [ %1572, %1640 ], [ %1572, %1638 ], [ %1572, %1606 ], [ %1572, %1591 ], [ %917, %926 ]
  %1658 = phi float [ %1573, %1569 ], [ %918, %1107 ], [ %918, %912 ], [ %1573, %1640 ], [ %1573, %1638 ], [ %1573, %1606 ], [ %1573, %1591 ], [ %918, %926 ]
  %1659 = phi float [ %1574, %1569 ], [ %919, %1107 ], [ %919, %912 ], [ %1574, %1640 ], [ %1574, %1638 ], [ %1574, %1606 ], [ %1574, %1591 ], [ %919, %926 ]
  %1660 = phi float [ %1575, %1569 ], [ %920, %1107 ], [ %920, %912 ], [ %1575, %1640 ], [ %1575, %1638 ], [ %1575, %1606 ], [ %1575, %1591 ], [ %920, %926 ]
  %1661 = phi float [ %1576, %1569 ], [ %921, %1107 ], [ %921, %912 ], [ %1576, %1640 ], [ %1576, %1638 ], [ %1576, %1606 ], [ %1576, %1591 ], [ %921, %926 ]
  %1662 = phi float [ %923, %1569 ], [ %923, %1107 ], [ %923, %912 ], [ %1651, %1640 ], [ %923, %1638 ], [ %1637, %1606 ], [ %1603, %1591 ], [ %923, %926 ]
  %1663 = phi float [ %924, %1569 ], [ %924, %1107 ], [ %924, %912 ], [ %1648, %1640 ], [ %924, %1638 ], [ %1614, %1606 ], [ %1600, %1591 ], [ %924, %926 ]
  %1664 = phi float [ %1577, %1569 ], [ %925, %1107 ], [ %925, %912 ], [ %1577, %1640 ], [ %1577, %1638 ], [ %1577, %1606 ], [ %1577, %1591 ], [ %925, %926 ]
  br i1 %392, label %2391, label %1665

; <label>:1665                                    ; preds = %1652
  %1666 = icmp ult i32 %445, 3
  %1667 = add i32 %22, 56
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %22, 60
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = or i32 %1672, %1669
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %2391, label %1675

; <label>:1675                                    ; preds = %1665
  %1676 = and i32 %1669, 262144
  %1677 = icmp ne i32 %1676, 0
  %1678 = select i1 %1677, float %28, float 1.000000e+00
  %1679 = select i1 %1677, float %29, float 0.000000e+00
  %1680 = select i1 %1677, float %30, float 0.000000e+00
  %1681 = select i1 %1677, float %31, float 1.000000e+00
  %1682 = select i1 %1677, float %32, float %55
  %1683 = select i1 %1677, float %33, float %56
  %1684 = add i32 %22, 316
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = lshr i32 %1686, 16
  %1688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1687)  ; LegacyF16ToF32(value)
  %1689 = fmul fast float %1688, 0x3F50624DE0000000
  %1690 = add i32 %22, 120
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = lshr i32 %1692, 16
  %1694 = and i32 %1693, 255
  %1695 = lshr i32 %1692, 24
  %1696 = add i32 %22, 324
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = and i32 %1698, 65535
  %1700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1699)  ; LegacyF16ToF32(value)
  %1701 = lshr i32 %1698, 16
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = add i32 %22, 64
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = lshr i32 %1705, 22
  %1707 = shl nuw nsw i32 %1706, 5
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = shl i32 %1705, 4
  %1710 = and i32 %1709, 32752
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = lshr i32 %1705, 7
  %1713 = and i32 %1712, 32752
  %1714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1713)  ; LegacyF16ToF32(value)
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1717 = fmul fast float %1716, 1.000000e+03
  %1718 = fmul fast float %342, %1717
  %1719 = call float @dx.op.unary.f32(i32 22, float %1718)  ; Frc(value)
  %1720 = fadd fast float %1719, %332
  %1721 = fmul fast float %343, %1717
  %1722 = call float @dx.op.unary.f32(i32 22, float %1721)  ; Frc(value)
  %1723 = fadd fast float %1722, %334
  %1724 = fmul fast float %1689, %1717
  %1725 = call float @dx.op.unary.f32(i32 22, float %1724)  ; Frc(value)
  %1726 = fmul fast float %1725, 0x401921FB60000000
  %1727 = fadd fast float %1726, %1708
  %1728 = call float @dx.op.unary.f32(i32 13, float %1727)  ; Sin(value)
  %1729 = call float @dx.op.unary.f32(i32 12, float %1727)  ; Cos(value)
  %1730 = fsub fast float -0.000000e+00, %1728
  %1731 = fadd fast float %1682, -5.000000e-01
  %1732 = fadd fast float %1683, -5.000000e-01
  %1733 = fmul fast float %1700, %1731
  %1734 = fmul fast float %1702, %1732
  %1735 = fadd fast float %1733, 5.000000e-01
  %1736 = fadd fast float %1734, 5.000000e-01
  %1737 = fmul fast float %1711, %1735
  %1738 = fmul fast float %1714, %1736
  %1739 = fmul fast float %1729, %1737
  %1740 = call float @dx.op.tertiary.f32(i32 46, float %1730, float %1738, float %1739)  ; FMad(a,b,c)
  %1741 = fmul fast float %1728, %1737
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %1729, float %1738, float %1741)  ; FMad(a,b,c)
  %1743 = fadd fast float %1720, %1740
  %1744 = fadd fast float %1723, %1742
  %1745 = icmp ugt i32 %1694, 1
  %1746 = icmp ugt i32 %1692, 33554431
  %1747 = or i1 %1746, %1745
  br i1 %1747, label %1748, label %1773

; <label>:1748                                    ; preds = %1675
  %1749 = add i32 %22, 260
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = lshr i32 %1751, 16
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = fmul fast float %1716, %1753
  %1755 = call float @dx.op.unary.f32(i32 22, float %1754)  ; Frc(value)
  %1756 = mul nuw nsw i32 %1694, %1695
  %1757 = uitofp i32 %1756 to float
  %1758 = fmul fast float %1755, %1757
  %1759 = call float @dx.op.unary.f32(i32 27, float %1758)  ; Round_ni(value)
  %1760 = fptoui float %1759 to i32
  %1761 = urem i32 %1760, %1694
  %1762 = udiv i32 %1760, %1695
  %1763 = call float @dx.op.unary.f32(i32 22, float %1743)  ; Frc(value)
  %1764 = call float @dx.op.unary.f32(i32 22, float %1744)  ; Frc(value)
  %1765 = uitofp i32 %1761 to float
  %1766 = uitofp i32 %1762 to float
  %1767 = fadd fast float %1763, %1765
  %1768 = fadd fast float %1764, %1766
  %1769 = uitofp i32 %1694 to float
  %1770 = uitofp i32 %1695 to float
  %1771 = fdiv fast float %1767, %1769
  %1772 = fdiv fast float %1768, %1770
  br label %1773

; <label>:1773                                    ; preds = %1748, %1675
  %1774 = phi float [ %1771, %1748 ], [ %1743, %1675 ]
  %1775 = phi float [ %1772, %1748 ], [ %1744, %1675 ]
  %1776 = and i32 %1669, 256
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1824, label %1778

; <label>:1778                                    ; preds = %1773
  %1779 = add i32 %22, 448
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %1781, 0
  %1783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1783, %dx.types.Handle %64, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = add i32 %22, 132
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = shl i32 %1788, 4
  %1790 = and i32 %1789, 32752
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = lshr i32 %1788, 7
  %1793 = and i32 %1792, 32752
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = fsub fast float 1.000000e+00, %441
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1797 = bitcast float %441 to i32
  %1798 = sitofp i32 %1797 to float
  %1799 = fadd fast float %1798, 0xC1CFBF8940000000
  %1800 = fmul fast float %1794, %1799
  %1801 = fadd fast float %1800, 0x41CFBF8940000000
  %1802 = fptosi float %1801 to i32
  %1803 = bitcast i32 %1802 to float
  %1804 = bitcast float %1796 to i32
  %1805 = sitofp i32 %1804 to float
  %1806 = fadd fast float %1805, 0xC1CFBF8940000000
  %1807 = fmul fast float %1806, %1794
  %1808 = fadd fast float %1807, 0x41CFBF8940000000
  %1809 = fptosi float %1808 to i32
  %1810 = bitcast i32 %1809 to float
  %1811 = fmul fast float %1803, %1791
  %1812 = fmul fast float %1810, %1791
  %1813 = fsub fast float %1796, %1811
  %1814 = fadd fast float %1812, %1796
  %1815 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1816 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1817 = fsub fast float %1785, %1815
  %1818 = fsub fast float %1816, %1815
  %1819 = bitcast float %1818 to i32
  %1820 = sub nsw i32 2129859010, %1819
  %1821 = bitcast i32 %1820 to float
  %1822 = fmul fast float %1821, %1817
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  br label %1824

; <label>:1824                                    ; preds = %1778, %1773
  %1825 = phi float [ %1823, %1778 ], [ %441, %1773 ]
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 128
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1846, label %1830

; <label>:1830                                    ; preds = %1824
  %1831 = add i32 %22, 432
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = add i32 %1833, 0
  %1835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1835, %dx.types.Handle %64, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1837 = extractvalue %dx.types.ResRet.f32 %1836, 0
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 524288
  %1841 = icmp ne i32 %1840, 0
  %1842 = fcmp fast ogt float %1837, 0x3FE0101020000000
  %1843 = select i1 %1842, float 1.000000e+00, float 0.000000e+00
  %1844 = select i1 %1841, float %1843, float %1837
  %1845 = fmul fast float %1844, %1825
  br label %1846

; <label>:1846                                    ; preds = %1830, %1824
  %1847 = phi float [ %1845, %1830 ], [ %1825, %1824 ]
  %1848 = fcmp fast ult float %1847, 0x3F70101020000000
  br i1 %1848, label %2391, label %1849

; <label>:1849                                    ; preds = %1846
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = and i32 %1851, 16
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %2052, label %1854

; <label>:1854                                    ; preds = %1849
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = add i32 %22, 384
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = add i32 %1859, 0
  %1861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1861, %dx.types.Handle %63, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = extractvalue %dx.types.ResRet.f32 %1862, 3
  %1867 = and i32 %1856, 255
  %1868 = uitofp i32 %1867 to float
  %1869 = lshr i32 %1856, 8
  %1870 = and i32 %1869, 255
  %1871 = uitofp i32 %1870 to float
  %1872 = fmul fast float %1866, %1868
  %1873 = fadd fast float %1872, %1871
  %1874 = fmul fast float %1873, 0x3F70101000000000
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = and i32 %1876, 512
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %1887, label %1879

; <label>:1879                                    ; preds = %1854
  %1880 = add i32 %22, 464
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = add i32 %1882, 0
  %1884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1884, %dx.types.Handle %64, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  br label %1887

; <label>:1887                                    ; preds = %1879, %1854
  %1888 = phi float [ %1886, %1879 ], [ 1.000000e+00, %1854 ]
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 33554432
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %1999, label %1893

; <label>:1893                                    ; preds = %1887
  %1894 = add i32 %22, 256
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 65535
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = lshr i32 %1896, 16
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = add i32 %22, 260
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 65535
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = lshr i32 %1907, 24
  %1909 = uitofp i32 %1908 to float
  %1910 = fmul fast float %1909, 0x3F70101020000000
  %1911 = and i32 %1907, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1907, 8
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1907, 16
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = add i32 %22, 252
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = lshr i32 %1924, 24
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1926, 0x3F70101020000000
  %1928 = and i32 %1924, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = lshr i32 %1924, 8
  %1932 = and i32 %1931, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = fmul fast float %1933, 0x3F70101020000000
  %1935 = lshr i32 %1924, 16
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1937, 0x3F70101020000000
  %1939 = bitcast float %1863 to i32
  %1940 = ashr i32 %1939, 1
  %1941 = sub nsw i32 1597463174, %1940
  %1942 = bitcast i32 %1941 to float
  %1943 = fmul fast float %1863, 5.000000e-01
  %1944 = fmul fast float %1942, %1942
  %1945 = fmul fast float %1944, %1943
  %1946 = fsub fast float 1.500000e+00, %1945
  %1947 = fmul fast float %1942, %1863
  %1948 = fmul fast float %1947, %1946
  %1949 = bitcast float %1864 to i32
  %1950 = ashr i32 %1949, 1
  %1951 = sub nsw i32 1597463174, %1950
  %1952 = bitcast i32 %1951 to float
  %1953 = fmul fast float %1864, 5.000000e-01
  %1954 = fmul fast float %1952, %1952
  %1955 = fmul fast float %1954, %1953
  %1956 = fsub fast float 1.500000e+00, %1955
  %1957 = fmul fast float %1952, %1864
  %1958 = fmul fast float %1957, %1956
  %1959 = bitcast float %1865 to i32
  %1960 = ashr i32 %1959, 1
  %1961 = sub nsw i32 1597463174, %1960
  %1962 = bitcast i32 %1961 to float
  %1963 = fmul fast float %1865, 5.000000e-01
  %1964 = fmul fast float %1962, %1962
  %1965 = fmul fast float %1964, %1963
  %1966 = fsub fast float 1.500000e+00, %1965
  %1967 = fmul fast float %1962, %1865
  %1968 = fmul fast float %1967, %1966
  %1969 = fsub fast float %1948, %1930
  %1970 = fsub fast float %1958, %1934
  %1971 = fsub fast float %1968, %1938
  %1972 = fmul fast float %1969, %1898
  %1973 = fmul fast float %1970, %1900
  %1974 = fmul fast float %1971, %1905
  %1975 = fadd fast float %1972, %1913
  %1976 = fadd fast float %1973, %1917
  %1977 = fadd fast float %1974, %1921
  %1978 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = fmul fast float %1978, %1978
  %1982 = fmul fast float %1979, %1979
  %1983 = fmul fast float %1980, %1980
  %1984 = fsub fast float %1981, %1863
  %1985 = fsub fast float %1982, %1864
  %1986 = fsub fast float %1983, %1865
  %1987 = fmul fast float %1984, %1888
  %1988 = fmul fast float %1985, %1888
  %1989 = fmul fast float %1986, %1888
  %1990 = fadd fast float %1987, %1863
  %1991 = fadd fast float %1988, %1864
  %1992 = fadd fast float %1989, %1865
  %1993 = fadd fast float %1910, %1874
  %1994 = fsub fast float %1993, %1927
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = fsub fast float %1995, %1874
  %1997 = fmul fast float %1996, %1888
  %1998 = fadd fast float %1997, %1874
  br label %2052

; <label>:1999                                    ; preds = %1887
  %2000 = and i32 %1890, 134217728
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2036, label %2002

; <label>:2002                                    ; preds = %1999
  %2003 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2004 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2005 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %2006 = fadd fast float %2003, -5.000000e-01
  %2007 = fadd fast float %2004, -5.000000e-01
  %2008 = fadd fast float %2005, -5.000000e-01
  %2009 = fmul fast float %2006, %1888
  %2010 = fmul fast float %2007, %1888
  %2011 = fmul fast float %2008, %1888
  %2012 = fadd fast float %2009, 5.000000e-01
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = call float @dx.op.unary.f32(i32 24, float %1863)  ; Sqrt(value)
  %2016 = call float @dx.op.unary.f32(i32 24, float %1864)  ; Sqrt(value)
  %2017 = call float @dx.op.unary.f32(i32 24, float %1865)  ; Sqrt(value)
  %2018 = fmul fast float %2012, 2.000000e+00
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %2019, %2015
  %2021 = fadd fast float %2020, %2018
  %2022 = fmul fast float %2021, %2015
  %2023 = fmul fast float %2013, 2.000000e+00
  %2024 = fsub fast float 1.000000e+00, %2023
  %2025 = fmul fast float %2024, %2016
  %2026 = fadd fast float %2025, %2023
  %2027 = fmul fast float %2026, %2016
  %2028 = fmul fast float %2014, 2.000000e+00
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2029, %2017
  %2031 = fadd fast float %2030, %2028
  %2032 = fmul fast float %2031, %2017
  %2033 = fmul fast float %2022, %2022
  %2034 = fmul fast float %2027, %2027
  %2035 = fmul fast float %2032, %2032
  br label %2052

; <label>:2036                                    ; preds = %1999
  %2037 = fmul fast float %319, %319
  %2038 = fmul fast float %323, %323
  %2039 = fmul fast float %327, %327
  %2040 = fadd fast float %2037, -1.000000e+00
  %2041 = fadd fast float %2038, -1.000000e+00
  %2042 = fadd fast float %2039, -1.000000e+00
  %2043 = fmul fast float %1888, %2040
  %2044 = fmul fast float %1888, %2041
  %2045 = fmul fast float %1888, %2042
  %2046 = fadd fast float %2043, 1.000000e+00
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fmul fast float %2046, %1863
  %2050 = fmul fast float %2047, %1864
  %2051 = fmul fast float %2048, %1865
  br label %2052

; <label>:2052                                    ; preds = %2036, %2002, %1893, %1849
  %2053 = phi float [ %1998, %1893 ], [ %1874, %2002 ], [ %1874, %2036 ], [ 0x3FA23C0BE0000000, %1849 ]
  %2054 = phi float [ %1990, %1893 ], [ %2033, %2002 ], [ %2049, %2036 ], [ 1.000000e+00, %1849 ]
  %2055 = phi float [ %1991, %1893 ], [ %2034, %2002 ], [ %2050, %2036 ], [ 1.000000e+00, %1849 ]
  %2056 = phi float [ %1992, %1893 ], [ %2035, %2002 ], [ %2051, %2036 ], [ 1.000000e+00, %1849 ]
  %2057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.i32 %2057, 1
  %2059 = and i32 %2058, 1
  %2060 = icmp ne i32 %2059, 0
  %2061 = add i32 %22, 356
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 32
  %2065 = icmp ne i32 %2064, 0
  %2066 = and i1 %2060, %2065
  %2067 = select i1 %2066, float 1.000000e+00, float %2054
  %2068 = select i1 %2066, float 0x3FD3333340000000, float %2055
  %2069 = select i1 %2066, float 0x3FD3333340000000, float %2056
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 32
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2146, label %2074

; <label>:2074                                    ; preds = %2052
  %2075 = add i32 %22, 124
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %22, 400
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2082, %dx.types.Handle %63, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = extractvalue %dx.types.ResRet.f32 %2083, 3
  %2088 = and i32 %2077, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = lshr i32 %2077, 8
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = lshr i32 %2077, 16
  %2094 = and i32 %2093, 255
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2095, 0x3F70101000000000
  %2097 = fmul fast float %2084, %2089
  %2098 = fadd fast float %2097, %2092
  %2099 = fmul fast float %2098, 0x3F70101000000000
  %2100 = fadd fast float %2085, -5.000000e-01
  %2101 = fadd fast float %2087, -5.000000e-01
  %2102 = fmul fast float %2100, %2096
  %2103 = fmul fast float %2101, %2096
  %2104 = fadd fast float %2102, 5.000000e-01
  %2105 = fadd fast float %2103, 5.000000e-01
  %2106 = fmul fast float %2104, 2.000000e+00
  %2107 = fadd fast float %2106, -1.000000e+00
  %2108 = fmul fast float %2105, 2.000000e+00
  %2109 = fadd fast float %2108, -1.000000e+00
  %2110 = fadd fast float %2107, %2109
  %2111 = fmul fast float %2110, 5.000000e-01
  %2112 = fsub fast float %2107, %2109
  %2113 = fmul fast float %2112, 5.000000e-01
  %2114 = call float @dx.op.unary.f32(i32 6, float %2111)  ; FAbs(value)
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2117 = fsub fast float %2115, %2116
  %2118 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2113, float %2117, float %2111, float %2113, float %2117)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = call float @dx.op.unary.f32(i32 25, float %2118)  ; Rsqrt(value)
  %2120 = fmul fast float %2111, %2119
  %2121 = fmul fast float %2113, %2119
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 67108864
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2142, label %2126

; <label>:2126                                    ; preds = %2074
  %2127 = add i32 %22, 312
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 65535
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 65535
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = lshr i32 %2129, 16
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = fsub fast float %2099, %2137
  %2139 = fmul fast float %2138, %2131
  %2140 = fadd fast float %2139, %2135
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  br label %2142

; <label>:2142                                    ; preds = %2126, %2074
  %2143 = phi float [ %2141, %2126 ], [ %2099, %2074 ]
  %2144 = call float @dx.op.dot2.f32(i32 54, float %2120, float %2121, float %1678, float %1679)  ; Dot2(ax,ay,bx,by)
  %2145 = call float @dx.op.dot2.f32(i32 54, float %2120, float %2121, float %1680, float %1681)  ; Dot2(ax,ay,bx,by)
  br label %2146

; <label>:2146                                    ; preds = %2142, %2052
  %2147 = phi float [ %2143, %2142 ], [ 0x3FD6666660000000, %2052 ]
  %2148 = phi float [ %2144, %2142 ], [ 0.000000e+00, %2052 ]
  %2149 = phi float [ %2145, %2142 ], [ 0.000000e+00, %2052 ]
  %2150 = phi float [ %2086, %2142 ], [ 1.000000e+00, %2052 ]
  %2151 = add i32 %22, 192
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = lshr i32 %2153, 22
  %2155 = shl nuw nsw i32 %2154, 5
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 64
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2194, label %2161

; <label>:2161                                    ; preds = %2146
  %2162 = add i32 %22, 416
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 131072
  %2170 = icmp eq i32 %2169, 0
  %2171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %63, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2172 = extractvalue %dx.types.ResRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.ResRet.f32 %2171, 1
  %2174 = extractvalue %dx.types.ResRet.f32 %2171, 2
  %2175 = fmul fast float %2172, %307
  %2176 = fmul fast float %2173, %310
  %2177 = fmul fast float %2174, %313
  br i1 %2170, label %2184, label %2178

; <label>:2178                                    ; preds = %2161
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = fmul fast float %2180, %2175
  %2182 = fmul fast float %2180, %2176
  %2183 = fmul fast float %2180, %2177
  br label %2184

; <label>:2184                                    ; preds = %2178, %2161
  %2185 = phi float [ %2181, %2178 ], [ %2175, %2161 ]
  %2186 = phi float [ %2182, %2178 ], [ %2176, %2161 ]
  %2187 = phi float [ %2183, %2178 ], [ %2177, %2161 ]
  %2188 = fmul fast float %2185, %2156
  %2189 = select i1 %206, float %2188, float %2185
  %2190 = call float @dx.op.dot3.f32(i32 55, float %2189, float %2186, float %2187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = select i1 %206, float 0.000000e+00, float %2185
  %2192 = select i1 %206, float %2190, float %2186
  %2193 = select i1 %206, float 0.000000e+00, float %2187
  br label %2194

; <label>:2194                                    ; preds = %2184, %2146
  %2195 = phi float [ %2191, %2184 ], [ 0.000000e+00, %2146 ]
  %2196 = phi float [ %2192, %2184 ], [ 0.000000e+00, %2146 ]
  %2197 = phi float [ %2193, %2184 ], [ 0.000000e+00, %2146 ]
  %2198 = add i32 %22, 128
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = lshr i32 %2200, 8
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = call float @dx.op.dot3.f32(i32 55, float %2067, float %2068, float %2069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2207 = fmul fast float %2205, %2206
  %2208 = fadd fast float %2207, %2202
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  br i1 %1666, label %2211, label %2219

; <label>:2211                                    ; preds = %2194
  %2212 = fsub fast float 1.000000e+00, %1847
  %2213 = fmul fast float %2212, %1658
  %2214 = fmul fast float %2212, %1659
  %2215 = fmul fast float %2212, %1660
  %2216 = fmul fast float %2212, %1655
  %2217 = fmul fast float %2212, %1656
  %2218 = fmul fast float %2212, %1657
  br label %2219

; <label>:2219                                    ; preds = %2211, %2194
  %2220 = phi float [ %2216, %2211 ], [ %1655, %2194 ]
  %2221 = phi float [ %2217, %2211 ], [ %1656, %2194 ]
  %2222 = phi float [ %2218, %2211 ], [ %1657, %2194 ]
  %2223 = phi float [ %2213, %2211 ], [ %1658, %2194 ]
  %2224 = phi float [ %2214, %2211 ], [ %1659, %2194 ]
  %2225 = phi float [ %2215, %2211 ], [ %1660, %2194 ]
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 3
  %2229 = icmp eq i32 %2228, 3
  br i1 %2229, label %2308, label %2230

; <label>:2230                                    ; preds = %2219
  %2231 = and i32 %2227, 16
  %2232 = icmp ne i32 %2231, 0
  %2233 = select i1 %2232, float %1847, float 0.000000e+00
  %2234 = icmp eq i32 %2228, 0
  br i1 %2234, label %2235, label %2263

; <label>:2235                                    ; preds = %2230
  %2236 = and i32 %2227, 64
  %2237 = icmp ne i32 %2236, 0
  %2238 = select i1 %2237, float %1847, float 0.000000e+00
  %2239 = fsub fast float %2067, %2223
  %2240 = fsub fast float %2068, %2224
  %2241 = fsub fast float %2069, %2225
  %2242 = fmul fast float %2233, %2239
  %2243 = fmul fast float %2233, %2240
  %2244 = fmul fast float %2233, %2241
  %2245 = fadd fast float %2242, %2223
  %2246 = fadd fast float %2243, %2224
  %2247 = fadd fast float %2244, %2225
  %2248 = fsub fast float %2053, %1661
  %2249 = fmul fast float %2233, %2248
  %2250 = fadd fast float %2249, %1661
  %2251 = fsub fast float %2195, %2220
  %2252 = fsub fast float %2196, %2221
  %2253 = fsub fast float %2197, %2222
  %2254 = fmul fast float %2238, %2251
  %2255 = fmul fast float %2238, %2252
  %2256 = fmul fast float %2238, %2253
  %2257 = fadd fast float %2254, %2220
  %2258 = fadd fast float %2255, %2221
  %2259 = fadd fast float %2256, %2222
  %2260 = fsub fast float %2210, %1664
  %2261 = fmul fast float %2233, %2260
  %2262 = fadd fast float %2261, %1664
  br label %2308

; <label>:2263                                    ; preds = %2230
  %2264 = icmp eq i32 %2228, 1
  br i1 %2264, label %2265, label %2278

; <label>:2265                                    ; preds = %2263
  %2266 = fadd fast float %2067, -1.000000e+00
  %2267 = fadd fast float %2068, -1.000000e+00
  %2268 = fadd fast float %2069, -1.000000e+00
  %2269 = fmul fast float %2233, %2266
  %2270 = fmul fast float %2233, %2267
  %2271 = fmul fast float %2233, %2268
  %2272 = fadd fast float %2269, 1.000000e+00
  %2273 = fadd fast float %2270, 1.000000e+00
  %2274 = fadd fast float %2271, 1.000000e+00
  %2275 = fmul fast float %2272, %2223
  %2276 = fmul fast float %2273, %2224
  %2277 = fmul fast float %2274, %2225
  br label %2308

; <label>:2278                                    ; preds = %2263
  %2279 = icmp eq i32 %2228, 2
  br i1 %2279, label %2280, label %2308

; <label>:2280                                    ; preds = %2278
  %2281 = call float @dx.op.unary.f32(i32 24, float %2067)  ; Sqrt(value)
  %2282 = call float @dx.op.unary.f32(i32 24, float %2068)  ; Sqrt(value)
  %2283 = call float @dx.op.unary.f32(i32 24, float %2069)  ; Sqrt(value)
  %2284 = fadd fast float %2281, -5.000000e-01
  %2285 = fadd fast float %2282, -5.000000e-01
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fmul fast float %2284, %2233
  %2288 = fmul fast float %2285, %2233
  %2289 = fmul fast float %2286, %2233
  %2290 = fadd fast float %2287, 5.000000e-01
  %2291 = fadd fast float %2288, 5.000000e-01
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = fmul fast float %2290, 2.000000e+00
  %2294 = fsub fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2294, %2223
  %2296 = fadd fast float %2295, %2293
  %2297 = fmul fast float %2296, %2223
  %2298 = fmul fast float %2291, 2.000000e+00
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %2299, %2224
  %2301 = fadd fast float %2300, %2298
  %2302 = fmul fast float %2301, %2224
  %2303 = fmul fast float %2292, 2.000000e+00
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2304, %2225
  %2306 = fadd fast float %2305, %2303
  %2307 = fmul fast float %2306, %2225
  br label %2308

; <label>:2308                                    ; preds = %2280, %2278, %2265, %2235, %2219
  %2309 = phi float [ %2220, %2219 ], [ %2220, %2280 ], [ %2220, %2278 ], [ %2220, %2265 ], [ %2257, %2235 ]
  %2310 = phi float [ %2221, %2219 ], [ %2221, %2280 ], [ %2221, %2278 ], [ %2221, %2265 ], [ %2258, %2235 ]
  %2311 = phi float [ %2222, %2219 ], [ %2222, %2280 ], [ %2222, %2278 ], [ %2222, %2265 ], [ %2259, %2235 ]
  %2312 = phi float [ %2223, %2219 ], [ %2297, %2280 ], [ %2223, %2278 ], [ %2275, %2265 ], [ %2245, %2235 ]
  %2313 = phi float [ %2224, %2219 ], [ %2302, %2280 ], [ %2224, %2278 ], [ %2276, %2265 ], [ %2246, %2235 ]
  %2314 = phi float [ %2225, %2219 ], [ %2307, %2280 ], [ %2225, %2278 ], [ %2277, %2265 ], [ %2247, %2235 ]
  %2315 = phi float [ %1661, %2219 ], [ %1661, %2280 ], [ %1661, %2278 ], [ %1661, %2265 ], [ %2250, %2235 ]
  %2316 = phi float [ %1664, %2219 ], [ %1664, %2280 ], [ %1664, %2278 ], [ %1664, %2265 ], [ %2262, %2235 ]
  %2317 = and i32 %2227, 12
  %2318 = icmp eq i32 %2317, 12
  br i1 %2318, label %2391, label %2319

; <label>:2319                                    ; preds = %2308
  %2320 = and i32 %2227, 2097184
  %2321 = icmp eq i32 %2320, 2097184
  %2322 = select i1 %2321, float %1847, float 0.000000e+00
  %2323 = and i32 %2227, 4194336
  %2324 = icmp eq i32 %2323, 4194336
  %2325 = select i1 %2324, float %1847, float 0.000000e+00
  %2326 = and i32 %2227, 8388640
  %2327 = icmp eq i32 %2326, 8388640
  %2328 = select i1 %2327, float %1847, float 0.000000e+00
  %2329 = icmp eq i32 %2317, 0
  br i1 %2329, label %2330, label %2343

; <label>:2330                                    ; preds = %2319
  %2331 = fsub fast float %2148, %1653
  %2332 = fsub fast float %2149, %1654
  %2333 = fmul fast float %2322, %2331
  %2334 = fmul fast float %2322, %2332
  %2335 = fadd fast float %2333, %1653
  %2336 = fadd fast float %2334, %1654
  %2337 = fsub fast float %2150, %1663
  %2338 = fmul fast float %2325, %2337
  %2339 = fadd fast float %2338, %1663
  %2340 = fsub fast float %2147, %1662
  %2341 = fmul fast float %2328, %2340
  %2342 = fadd fast float %2341, %1662
  br label %2391

; <label>:2343                                    ; preds = %2319
  %2344 = icmp eq i32 %2317, 4
  br i1 %2344, label %2345, label %2377

; <label>:2345                                    ; preds = %2343
  %2346 = fmul fast float %2322, %2148
  %2347 = fmul fast float %2322, %2149
  %2348 = fadd fast float %2346, %1653
  %2349 = fadd fast float %2347, %1654
  %2350 = call float @dx.op.binary.f32(i32 36, float %1663, float %2150)  ; FMin(a,b)
  %2351 = fsub fast float %2350, %1663
  %2352 = fmul fast float %2351, %2325
  %2353 = fadd fast float %2352, %1663
  %2354 = fadd fast float %2147, %1662
  %2355 = fmul fast float %2354, 0x3FF337FAE0000000
  %2356 = fmul fast float %1662, %1662
  %2357 = fmul fast float %2147, %2147
  %2358 = fadd fast float %2357, %2356
  %2359 = fmul fast float %2358, 0x3FE5152B00000000
  %2360 = fmul fast float %1662, 0xBFCC1F85E0000000
  %2361 = fmul fast float %2360, %2147
  %2362 = fadd fast float %2361, 0xBFE1363700000000
  %2363 = fadd fast float %2362, %2355
  %2364 = fsub fast float %2363, %2359
  %2365 = fmul fast float %2354, 0x3FBA6F0D00000000
  %2366 = fmul fast float %2358, 0x3FD0432880000000
  %2367 = fmul fast float %1662, 0xBFEF110800000000
  %2368 = fmul fast float %2367, %2147
  %2369 = fadd fast float %2368, 1.000000e+00
  %2370 = fsub fast float %2369, %2365
  %2371 = fadd fast float %2370, %2366
  %2372 = fdiv fast float %2364, %2371
  %2373 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  %2374 = fsub fast float %2373, %1662
  %2375 = fmul fast float %2374, %2328
  %2376 = fadd fast float %2375, %1662
  br label %2391

; <label>:2377                                    ; preds = %2343
  %2378 = icmp eq i32 %2317, 8
  br i1 %2378, label %2379, label %2391

; <label>:2379                                    ; preds = %2377
  %2380 = fmul fast float %2322, %2148
  %2381 = fmul fast float %2322, %2149
  %2382 = fadd fast float %2380, %1653
  %2383 = fadd fast float %2381, %1654
  %2384 = call float @dx.op.binary.f32(i32 36, float %1663, float %2150)  ; FMin(a,b)
  %2385 = fsub fast float %2384, %1663
  %2386 = fmul fast float %2385, %2325
  %2387 = fadd fast float %2386, %1663
  %2388 = fsub fast float %2147, %1662
  %2389 = fmul fast float %2328, %2388
  %2390 = fadd fast float %2389, %1662
  br label %2391

; <label>:2391                                    ; preds = %2379, %2377, %2345, %2330, %2308, %1846, %1665, %1652
  %2392 = phi float [ %1653, %2308 ], [ %1653, %1846 ], [ %1653, %1652 ], [ %2382, %2379 ], [ %1653, %2377 ], [ %2348, %2345 ], [ %2335, %2330 ], [ %1653, %1665 ]
  %2393 = phi float [ %1654, %2308 ], [ %1654, %1846 ], [ %1654, %1652 ], [ %2383, %2379 ], [ %1654, %2377 ], [ %2349, %2345 ], [ %2336, %2330 ], [ %1654, %1665 ]
  %2394 = phi float [ %2309, %2308 ], [ %1655, %1846 ], [ %1655, %1652 ], [ %2309, %2379 ], [ %2309, %2377 ], [ %2309, %2345 ], [ %2309, %2330 ], [ %1655, %1665 ]
  %2395 = phi float [ %2310, %2308 ], [ %1656, %1846 ], [ %1656, %1652 ], [ %2310, %2379 ], [ %2310, %2377 ], [ %2310, %2345 ], [ %2310, %2330 ], [ %1656, %1665 ]
  %2396 = phi float [ %2311, %2308 ], [ %1657, %1846 ], [ %1657, %1652 ], [ %2311, %2379 ], [ %2311, %2377 ], [ %2311, %2345 ], [ %2311, %2330 ], [ %1657, %1665 ]
  %2397 = phi float [ %2312, %2308 ], [ %1658, %1846 ], [ %1658, %1652 ], [ %2312, %2379 ], [ %2312, %2377 ], [ %2312, %2345 ], [ %2312, %2330 ], [ %1658, %1665 ]
  %2398 = phi float [ %2313, %2308 ], [ %1659, %1846 ], [ %1659, %1652 ], [ %2313, %2379 ], [ %2313, %2377 ], [ %2313, %2345 ], [ %2313, %2330 ], [ %1659, %1665 ]
  %2399 = phi float [ %2314, %2308 ], [ %1660, %1846 ], [ %1660, %1652 ], [ %2314, %2379 ], [ %2314, %2377 ], [ %2314, %2345 ], [ %2314, %2330 ], [ %1660, %1665 ]
  %2400 = phi float [ %2315, %2308 ], [ %1661, %1846 ], [ %1661, %1652 ], [ %2315, %2379 ], [ %2315, %2377 ], [ %2315, %2345 ], [ %2315, %2330 ], [ %1661, %1665 ]
  %2401 = phi float [ %1662, %2308 ], [ %1662, %1846 ], [ %1662, %1652 ], [ %2390, %2379 ], [ %1662, %2377 ], [ %2376, %2345 ], [ %2342, %2330 ], [ %1662, %1665 ]
  %2402 = phi float [ %1663, %2308 ], [ %1663, %1846 ], [ %1663, %1652 ], [ %2387, %2379 ], [ %1663, %2377 ], [ %2353, %2345 ], [ %2339, %2330 ], [ %1663, %1665 ]
  %2403 = phi float [ %2316, %2308 ], [ %1664, %1846 ], [ %1664, %1652 ], [ %2316, %2379 ], [ %2316, %2377 ], [ %2316, %2345 ], [ %2316, %2330 ], [ %1664, %1665 ]
  br i1 %394, label %3130, label %2404

; <label>:2404                                    ; preds = %2391
  %2405 = icmp ult i32 %445, 4
  %2406 = add i32 %22, 72
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %22, 76
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = or i32 %2411, %2408
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %3130, label %2414

; <label>:2414                                    ; preds = %2404
  %2415 = and i32 %2408, 262144
  %2416 = icmp ne i32 %2415, 0
  %2417 = select i1 %2416, float %28, float 1.000000e+00
  %2418 = select i1 %2416, float %29, float 0.000000e+00
  %2419 = select i1 %2416, float %30, float 0.000000e+00
  %2420 = select i1 %2416, float %31, float 1.000000e+00
  %2421 = select i1 %2416, float %32, float %55
  %2422 = select i1 %2416, float %33, float %56
  %2423 = add i32 %22, 332
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = lshr i32 %2425, 16
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = fmul fast float %2427, 0x3F50624DE0000000
  %2429 = add i32 %22, 136
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = lshr i32 %2431, 16
  %2433 = and i32 %2432, 255
  %2434 = lshr i32 %2431, 24
  %2435 = add i32 %22, 340
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 65535
  %2439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2438)  ; LegacyF16ToF32(value)
  %2440 = lshr i32 %2437, 16
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = add i32 %22, 80
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = lshr i32 %2444, 22
  %2446 = shl nuw nsw i32 %2445, 5
  %2447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2446)  ; LegacyF16ToF32(value)
  %2448 = shl i32 %2444, 4
  %2449 = and i32 %2448, 32752
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = lshr i32 %2444, 7
  %2452 = and i32 %2451, 32752
  %2453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2452)  ; LegacyF16ToF32(value)
  %2454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.f32 %2454, 3
  %2456 = fmul fast float %2455, 1.000000e+03
  %2457 = fmul fast float %384, %2456
  %2458 = call float @dx.op.unary.f32(i32 22, float %2457)  ; Frc(value)
  %2459 = fadd fast float %2458, %374
  %2460 = fmul fast float %385, %2456
  %2461 = call float @dx.op.unary.f32(i32 22, float %2460)  ; Frc(value)
  %2462 = fadd fast float %2461, %376
  %2463 = fmul fast float %2428, %2456
  %2464 = call float @dx.op.unary.f32(i32 22, float %2463)  ; Frc(value)
  %2465 = fmul fast float %2464, 0x401921FB60000000
  %2466 = fadd fast float %2465, %2447
  %2467 = call float @dx.op.unary.f32(i32 13, float %2466)  ; Sin(value)
  %2468 = call float @dx.op.unary.f32(i32 12, float %2466)  ; Cos(value)
  %2469 = fsub fast float -0.000000e+00, %2467
  %2470 = fadd fast float %2421, -5.000000e-01
  %2471 = fadd fast float %2422, -5.000000e-01
  %2472 = fmul fast float %2439, %2470
  %2473 = fmul fast float %2441, %2471
  %2474 = fadd fast float %2472, 5.000000e-01
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fmul fast float %2450, %2474
  %2477 = fmul fast float %2453, %2475
  %2478 = fmul fast float %2468, %2476
  %2479 = call float @dx.op.tertiary.f32(i32 46, float %2469, float %2477, float %2478)  ; FMad(a,b,c)
  %2480 = fmul fast float %2467, %2476
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2468, float %2477, float %2480)  ; FMad(a,b,c)
  %2482 = fadd fast float %2459, %2479
  %2483 = fadd fast float %2462, %2481
  %2484 = icmp ugt i32 %2433, 1
  %2485 = icmp ugt i32 %2431, 33554431
  %2486 = or i1 %2485, %2484
  br i1 %2486, label %2487, label %2512

; <label>:2487                                    ; preds = %2414
  %2488 = add i32 %22, 276
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = lshr i32 %2490, 16
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = fmul fast float %2455, %2492
  %2494 = call float @dx.op.unary.f32(i32 22, float %2493)  ; Frc(value)
  %2495 = mul nuw nsw i32 %2433, %2434
  %2496 = uitofp i32 %2495 to float
  %2497 = fmul fast float %2494, %2496
  %2498 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2499 = fptoui float %2498 to i32
  %2500 = urem i32 %2499, %2433
  %2501 = udiv i32 %2499, %2434
  %2502 = call float @dx.op.unary.f32(i32 22, float %2482)  ; Frc(value)
  %2503 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2504 = uitofp i32 %2500 to float
  %2505 = uitofp i32 %2501 to float
  %2506 = fadd fast float %2502, %2504
  %2507 = fadd fast float %2503, %2505
  %2508 = uitofp i32 %2433 to float
  %2509 = uitofp i32 %2434 to float
  %2510 = fdiv fast float %2506, %2508
  %2511 = fdiv fast float %2507, %2509
  br label %2512

; <label>:2512                                    ; preds = %2487, %2414
  %2513 = phi float [ %2510, %2487 ], [ %2482, %2414 ]
  %2514 = phi float [ %2511, %2487 ], [ %2483, %2414 ]
  %2515 = and i32 %2408, 256
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2563, label %2517

; <label>:2517                                    ; preds = %2512
  %2518 = add i32 %22, 452
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %64, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = add i32 %22, 148
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = shl i32 %2527, 4
  %2529 = and i32 %2528, 32752
  %2530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2529)  ; LegacyF16ToF32(value)
  %2531 = lshr i32 %2527, 7
  %2532 = and i32 %2531, 32752
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = fsub fast float 1.000000e+00, %440
  %2535 = call float @dx.op.binary.f32(i32 35, float %2534, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2536 = bitcast float %440 to i32
  %2537 = sitofp i32 %2536 to float
  %2538 = fadd fast float %2537, 0xC1CFBF8940000000
  %2539 = fmul fast float %2533, %2538
  %2540 = fadd fast float %2539, 0x41CFBF8940000000
  %2541 = fptosi float %2540 to i32
  %2542 = bitcast i32 %2541 to float
  %2543 = bitcast float %2535 to i32
  %2544 = sitofp i32 %2543 to float
  %2545 = fadd fast float %2544, 0xC1CFBF8940000000
  %2546 = fmul fast float %2545, %2533
  %2547 = fadd fast float %2546, 0x41CFBF8940000000
  %2548 = fptosi float %2547 to i32
  %2549 = bitcast i32 %2548 to float
  %2550 = fmul fast float %2542, %2530
  %2551 = fmul fast float %2549, %2530
  %2552 = fsub fast float %2535, %2550
  %2553 = fadd fast float %2551, %2535
  %2554 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2556 = fsub fast float %2524, %2554
  %2557 = fsub fast float %2555, %2554
  %2558 = bitcast float %2557 to i32
  %2559 = sub nsw i32 2129859010, %2558
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2560, %2556
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  br label %2563

; <label>:2563                                    ; preds = %2517, %2512
  %2564 = phi float [ %2562, %2517 ], [ %440, %2512 ]
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 128
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2585, label %2569

; <label>:2569                                    ; preds = %2563
  %2570 = add i32 %22, 436
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %64, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 524288
  %2580 = icmp ne i32 %2579, 0
  %2581 = fcmp fast ogt float %2576, 0x3FE0101020000000
  %2582 = select i1 %2581, float 1.000000e+00, float 0.000000e+00
  %2583 = select i1 %2580, float %2582, float %2576
  %2584 = fmul fast float %2583, %2564
  br label %2585

; <label>:2585                                    ; preds = %2569, %2563
  %2586 = phi float [ %2584, %2569 ], [ %2564, %2563 ]
  %2587 = fcmp fast ult float %2586, 0x3F70101020000000
  br i1 %2587, label %3130, label %2588

; <label>:2588                                    ; preds = %2585
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 16
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2791, label %2593

; <label>:2593                                    ; preds = %2588
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %22, 388
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2600, %dx.types.Handle %63, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.ResRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.ResRet.f32 %2601, 3
  %2606 = and i32 %2595, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = lshr i32 %2595, 8
  %2609 = and i32 %2608, 255
  %2610 = uitofp i32 %2609 to float
  %2611 = fmul fast float %2605, %2607
  %2612 = fadd fast float %2611, %2610
  %2613 = fmul fast float %2612, 0x3F70101000000000
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 512
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2626, label %2618

; <label>:2618                                    ; preds = %2593
  %2619 = add i32 %22, 468
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2623, %dx.types.Handle %64, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  br label %2626

; <label>:2626                                    ; preds = %2618, %2593
  %2627 = phi float [ %2625, %2618 ], [ 1.000000e+00, %2593 ]
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 33554432
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2738, label %2632

; <label>:2632                                    ; preds = %2626
  %2633 = add i32 %22, 272
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 65535
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = lshr i32 %2635, 16
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = add i32 %22, 276
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 65535
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = lshr i32 %2646, 24
  %2648 = uitofp i32 %2647 to float
  %2649 = fmul fast float %2648, 0x3F70101020000000
  %2650 = and i32 %2646, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2651, 0x3F70101020000000
  %2653 = lshr i32 %2646, 8
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = lshr i32 %2646, 16
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = add i32 %22, 268
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 24
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = and i32 %2663, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2663, 8
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = lshr i32 %2663, 16
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = bitcast float %2602 to i32
  %2679 = ashr i32 %2678, 1
  %2680 = sub nsw i32 1597463174, %2679
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2602, 5.000000e-01
  %2683 = fmul fast float %2681, %2681
  %2684 = fmul fast float %2683, %2682
  %2685 = fsub fast float 1.500000e+00, %2684
  %2686 = fmul fast float %2681, %2602
  %2687 = fmul fast float %2686, %2685
  %2688 = bitcast float %2603 to i32
  %2689 = ashr i32 %2688, 1
  %2690 = sub nsw i32 1597463174, %2689
  %2691 = bitcast i32 %2690 to float
  %2692 = fmul fast float %2603, 5.000000e-01
  %2693 = fmul fast float %2691, %2691
  %2694 = fmul fast float %2693, %2692
  %2695 = fsub fast float 1.500000e+00, %2694
  %2696 = fmul fast float %2691, %2603
  %2697 = fmul fast float %2696, %2695
  %2698 = bitcast float %2604 to i32
  %2699 = ashr i32 %2698, 1
  %2700 = sub nsw i32 1597463174, %2699
  %2701 = bitcast i32 %2700 to float
  %2702 = fmul fast float %2604, 5.000000e-01
  %2703 = fmul fast float %2701, %2701
  %2704 = fmul fast float %2703, %2702
  %2705 = fsub fast float 1.500000e+00, %2704
  %2706 = fmul fast float %2701, %2604
  %2707 = fmul fast float %2706, %2705
  %2708 = fsub fast float %2687, %2669
  %2709 = fsub fast float %2697, %2673
  %2710 = fsub fast float %2707, %2677
  %2711 = fmul fast float %2708, %2637
  %2712 = fmul fast float %2709, %2639
  %2713 = fmul fast float %2710, %2644
  %2714 = fadd fast float %2711, %2652
  %2715 = fadd fast float %2712, %2656
  %2716 = fadd fast float %2713, %2660
  %2717 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2718 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2719 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2720 = fmul fast float %2717, %2717
  %2721 = fmul fast float %2718, %2718
  %2722 = fmul fast float %2719, %2719
  %2723 = fsub fast float %2720, %2602
  %2724 = fsub fast float %2721, %2603
  %2725 = fsub fast float %2722, %2604
  %2726 = fmul fast float %2723, %2627
  %2727 = fmul fast float %2724, %2627
  %2728 = fmul fast float %2725, %2627
  %2729 = fadd fast float %2726, %2602
  %2730 = fadd fast float %2727, %2603
  %2731 = fadd fast float %2728, %2604
  %2732 = fadd fast float %2649, %2613
  %2733 = fsub fast float %2732, %2666
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = fsub fast float %2734, %2613
  %2736 = fmul fast float %2735, %2627
  %2737 = fadd fast float %2736, %2613
  br label %2791

; <label>:2738                                    ; preds = %2626
  %2739 = and i32 %2629, 134217728
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2775, label %2741

; <label>:2741                                    ; preds = %2738
  %2742 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2743 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2744 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2745 = fadd fast float %2742, -5.000000e-01
  %2746 = fadd fast float %2743, -5.000000e-01
  %2747 = fadd fast float %2744, -5.000000e-01
  %2748 = fmul fast float %2745, %2627
  %2749 = fmul fast float %2746, %2627
  %2750 = fmul fast float %2747, %2627
  %2751 = fadd fast float %2748, 5.000000e-01
  %2752 = fadd fast float %2749, 5.000000e-01
  %2753 = fadd fast float %2750, 5.000000e-01
  %2754 = call float @dx.op.unary.f32(i32 24, float %2602)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %2603)  ; Sqrt(value)
  %2756 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2757 = fmul fast float %2751, 2.000000e+00
  %2758 = fsub fast float 1.000000e+00, %2757
  %2759 = fmul fast float %2758, %2754
  %2760 = fadd fast float %2759, %2757
  %2761 = fmul fast float %2760, %2754
  %2762 = fmul fast float %2752, 2.000000e+00
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = fmul fast float %2763, %2755
  %2765 = fadd fast float %2764, %2762
  %2766 = fmul fast float %2765, %2755
  %2767 = fmul fast float %2753, 2.000000e+00
  %2768 = fsub fast float 1.000000e+00, %2767
  %2769 = fmul fast float %2768, %2756
  %2770 = fadd fast float %2769, %2767
  %2771 = fmul fast float %2770, %2756
  %2772 = fmul fast float %2761, %2761
  %2773 = fmul fast float %2766, %2766
  %2774 = fmul fast float %2771, %2771
  br label %2791

; <label>:2775                                    ; preds = %2738
  %2776 = fmul fast float %361, %361
  %2777 = fmul fast float %365, %365
  %2778 = fmul fast float %369, %369
  %2779 = fadd fast float %2776, -1.000000e+00
  %2780 = fadd fast float %2777, -1.000000e+00
  %2781 = fadd fast float %2778, -1.000000e+00
  %2782 = fmul fast float %2627, %2779
  %2783 = fmul fast float %2627, %2780
  %2784 = fmul fast float %2627, %2781
  %2785 = fadd fast float %2782, 1.000000e+00
  %2786 = fadd fast float %2783, 1.000000e+00
  %2787 = fadd fast float %2784, 1.000000e+00
  %2788 = fmul fast float %2785, %2602
  %2789 = fmul fast float %2786, %2603
  %2790 = fmul fast float %2787, %2604
  br label %2791

; <label>:2791                                    ; preds = %2775, %2741, %2632, %2588
  %2792 = phi float [ %2737, %2632 ], [ %2613, %2741 ], [ %2613, %2775 ], [ 0x3FA23C0BE0000000, %2588 ]
  %2793 = phi float [ %2729, %2632 ], [ %2772, %2741 ], [ %2788, %2775 ], [ 1.000000e+00, %2588 ]
  %2794 = phi float [ %2730, %2632 ], [ %2773, %2741 ], [ %2789, %2775 ], [ 1.000000e+00, %2588 ]
  %2795 = phi float [ %2731, %2632 ], [ %2774, %2741 ], [ %2790, %2775 ], [ 1.000000e+00, %2588 ]
  %2796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.i32 %2796, 1
  %2798 = and i32 %2797, 1
  %2799 = icmp ne i32 %2798, 0
  %2800 = add i32 %22, 356
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = and i32 %2802, 32
  %2804 = icmp ne i32 %2803, 0
  %2805 = and i1 %2799, %2804
  %2806 = select i1 %2805, float 1.000000e+00, float %2793
  %2807 = select i1 %2805, float 0x3FD3333340000000, float %2794
  %2808 = select i1 %2805, float 0x3FD3333340000000, float %2795
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 32
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2885, label %2813

; <label>:2813                                    ; preds = %2791
  %2814 = add i32 %22, 140
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %22, 404
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %2819, 0
  %2821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2821, %dx.types.Handle %63, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2822, 2
  %2826 = extractvalue %dx.types.ResRet.f32 %2822, 3
  %2827 = and i32 %2816, 255
  %2828 = uitofp i32 %2827 to float
  %2829 = lshr i32 %2816, 8
  %2830 = and i32 %2829, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = lshr i32 %2816, 16
  %2833 = and i32 %2832, 255
  %2834 = uitofp i32 %2833 to float
  %2835 = fmul fast float %2834, 0x3F70101000000000
  %2836 = fmul fast float %2823, %2828
  %2837 = fadd fast float %2836, %2831
  %2838 = fmul fast float %2837, 0x3F70101000000000
  %2839 = fadd fast float %2824, -5.000000e-01
  %2840 = fadd fast float %2826, -5.000000e-01
  %2841 = fmul fast float %2839, %2835
  %2842 = fmul fast float %2840, %2835
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = fadd fast float %2842, 5.000000e-01
  %2845 = fmul fast float %2843, 2.000000e+00
  %2846 = fadd fast float %2845, -1.000000e+00
  %2847 = fmul fast float %2844, 2.000000e+00
  %2848 = fadd fast float %2847, -1.000000e+00
  %2849 = fadd fast float %2846, %2848
  %2850 = fmul fast float %2849, 5.000000e-01
  %2851 = fsub fast float %2846, %2848
  %2852 = fmul fast float %2851, 5.000000e-01
  %2853 = call float @dx.op.unary.f32(i32 6, float %2850)  ; FAbs(value)
  %2854 = fsub fast float 1.000000e+00, %2853
  %2855 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2856 = fsub fast float %2854, %2855
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2852, float %2856, float %2850, float %2852, float %2856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = call float @dx.op.unary.f32(i32 25, float %2857)  ; Rsqrt(value)
  %2859 = fmul fast float %2850, %2858
  %2860 = fmul fast float %2852, %2858
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, 67108864
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2881, label %2865

; <label>:2865                                    ; preds = %2813
  %2866 = add i32 %22, 328
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 65535
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = and i32 %2872, 65535
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = lshr i32 %2868, 16
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = fsub fast float %2838, %2876
  %2878 = fmul fast float %2877, %2870
  %2879 = fadd fast float %2878, %2874
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  br label %2881

; <label>:2881                                    ; preds = %2865, %2813
  %2882 = phi float [ %2880, %2865 ], [ %2838, %2813 ]
  %2883 = call float @dx.op.dot2.f32(i32 54, float %2859, float %2860, float %2417, float %2418)  ; Dot2(ax,ay,bx,by)
  %2884 = call float @dx.op.dot2.f32(i32 54, float %2859, float %2860, float %2419, float %2420)  ; Dot2(ax,ay,bx,by)
  br label %2885

; <label>:2885                                    ; preds = %2881, %2791
  %2886 = phi float [ %2882, %2881 ], [ 0x3FD6666660000000, %2791 ]
  %2887 = phi float [ %2883, %2881 ], [ 0.000000e+00, %2791 ]
  %2888 = phi float [ %2884, %2881 ], [ 0.000000e+00, %2791 ]
  %2889 = phi float [ %2825, %2881 ], [ 1.000000e+00, %2791 ]
  %2890 = add i32 %22, 208
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = lshr i32 %2892, 22
  %2894 = shl nuw nsw i32 %2893, 5
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 64
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %2933, label %2900

; <label>:2900                                    ; preds = %2885
  %2901 = add i32 %22, 420
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = add i32 %2903, 0
  %2905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 131072
  %2909 = icmp eq i32 %2908, 0
  %2910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2905, %dx.types.Handle %63, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2911 = extractvalue %dx.types.ResRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.ResRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.ResRet.f32 %2910, 2
  %2914 = fmul fast float %2911, %349
  %2915 = fmul fast float %2912, %352
  %2916 = fmul fast float %2913, %355
  br i1 %2909, label %2923, label %2917

; <label>:2917                                    ; preds = %2900
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = fmul fast float %2919, %2914
  %2921 = fmul fast float %2919, %2915
  %2922 = fmul fast float %2919, %2916
  br label %2923

; <label>:2923                                    ; preds = %2917, %2900
  %2924 = phi float [ %2920, %2917 ], [ %2914, %2900 ]
  %2925 = phi float [ %2921, %2917 ], [ %2915, %2900 ]
  %2926 = phi float [ %2922, %2917 ], [ %2916, %2900 ]
  %2927 = fmul fast float %2924, %2895
  %2928 = select i1 %206, float %2927, float %2924
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2925, float %2926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = select i1 %206, float 0.000000e+00, float %2924
  %2931 = select i1 %206, float %2929, float %2925
  %2932 = select i1 %206, float 0.000000e+00, float %2926
  br label %2933

; <label>:2933                                    ; preds = %2923, %2885
  %2934 = phi float [ %2930, %2923 ], [ 0.000000e+00, %2885 ]
  %2935 = phi float [ %2931, %2923 ], [ 0.000000e+00, %2885 ]
  %2936 = phi float [ %2932, %2923 ], [ 0.000000e+00, %2885 ]
  %2937 = add i32 %22, 144
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = lshr i32 %2939, 8
  %2943 = and i32 %2942, 255
  %2944 = uitofp i32 %2943 to float
  %2945 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2807, float %2808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2946 = fmul fast float %2944, %2945
  %2947 = fadd fast float %2946, %2941
  %2948 = fmul fast float %2947, 0x3F70101020000000
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  br i1 %2405, label %2950, label %2958

; <label>:2950                                    ; preds = %2933
  %2951 = fsub fast float 1.000000e+00, %2586
  %2952 = fmul fast float %2951, %2397
  %2953 = fmul fast float %2951, %2398
  %2954 = fmul fast float %2951, %2399
  %2955 = fmul fast float %2951, %2394
  %2956 = fmul fast float %2951, %2395
  %2957 = fmul fast float %2951, %2396
  br label %2958

; <label>:2958                                    ; preds = %2950, %2933
  %2959 = phi float [ %2955, %2950 ], [ %2394, %2933 ]
  %2960 = phi float [ %2956, %2950 ], [ %2395, %2933 ]
  %2961 = phi float [ %2957, %2950 ], [ %2396, %2933 ]
  %2962 = phi float [ %2952, %2950 ], [ %2397, %2933 ]
  %2963 = phi float [ %2953, %2950 ], [ %2398, %2933 ]
  %2964 = phi float [ %2954, %2950 ], [ %2399, %2933 ]
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 3
  %2968 = icmp eq i32 %2967, 3
  br i1 %2968, label %3047, label %2969

; <label>:2969                                    ; preds = %2958
  %2970 = and i32 %2966, 16
  %2971 = icmp ne i32 %2970, 0
  %2972 = select i1 %2971, float %2586, float 0.000000e+00
  %2973 = icmp eq i32 %2967, 0
  br i1 %2973, label %2974, label %3002

; <label>:2974                                    ; preds = %2969
  %2975 = and i32 %2966, 64
  %2976 = icmp ne i32 %2975, 0
  %2977 = select i1 %2976, float %2586, float 0.000000e+00
  %2978 = fsub fast float %2806, %2962
  %2979 = fsub fast float %2807, %2963
  %2980 = fsub fast float %2808, %2964
  %2981 = fmul fast float %2972, %2978
  %2982 = fmul fast float %2972, %2979
  %2983 = fmul fast float %2972, %2980
  %2984 = fadd fast float %2981, %2962
  %2985 = fadd fast float %2982, %2963
  %2986 = fadd fast float %2983, %2964
  %2987 = fsub fast float %2792, %2400
  %2988 = fmul fast float %2972, %2987
  %2989 = fadd fast float %2988, %2400
  %2990 = fsub fast float %2934, %2959
  %2991 = fsub fast float %2935, %2960
  %2992 = fsub fast float %2936, %2961
  %2993 = fmul fast float %2977, %2990
  %2994 = fmul fast float %2977, %2991
  %2995 = fmul fast float %2977, %2992
  %2996 = fadd fast float %2993, %2959
  %2997 = fadd fast float %2994, %2960
  %2998 = fadd fast float %2995, %2961
  %2999 = fsub fast float %2949, %2403
  %3000 = fmul fast float %2972, %2999
  %3001 = fadd fast float %3000, %2403
  br label %3047

; <label>:3002                                    ; preds = %2969
  %3003 = icmp eq i32 %2967, 1
  br i1 %3003, label %3004, label %3017

; <label>:3004                                    ; preds = %3002
  %3005 = fadd fast float %2806, -1.000000e+00
  %3006 = fadd fast float %2807, -1.000000e+00
  %3007 = fadd fast float %2808, -1.000000e+00
  %3008 = fmul fast float %2972, %3005
  %3009 = fmul fast float %2972, %3006
  %3010 = fmul fast float %2972, %3007
  %3011 = fadd fast float %3008, 1.000000e+00
  %3012 = fadd fast float %3009, 1.000000e+00
  %3013 = fadd fast float %3010, 1.000000e+00
  %3014 = fmul fast float %3011, %2962
  %3015 = fmul fast float %3012, %2963
  %3016 = fmul fast float %3013, %2964
  br label %3047

; <label>:3017                                    ; preds = %3002
  %3018 = icmp eq i32 %2967, 2
  br i1 %3018, label %3019, label %3047

; <label>:3019                                    ; preds = %3017
  %3020 = call float @dx.op.unary.f32(i32 24, float %2806)  ; Sqrt(value)
  %3021 = call float @dx.op.unary.f32(i32 24, float %2807)  ; Sqrt(value)
  %3022 = call float @dx.op.unary.f32(i32 24, float %2808)  ; Sqrt(value)
  %3023 = fadd fast float %3020, -5.000000e-01
  %3024 = fadd fast float %3021, -5.000000e-01
  %3025 = fadd fast float %3022, -5.000000e-01
  %3026 = fmul fast float %3023, %2972
  %3027 = fmul fast float %3024, %2972
  %3028 = fmul fast float %3025, %2972
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = fadd fast float %3027, 5.000000e-01
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = fmul fast float %3029, 2.000000e+00
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = fmul fast float %3033, %2962
  %3035 = fadd fast float %3034, %3032
  %3036 = fmul fast float %3035, %2962
  %3037 = fmul fast float %3030, 2.000000e+00
  %3038 = fsub fast float 1.000000e+00, %3037
  %3039 = fmul fast float %3038, %2963
  %3040 = fadd fast float %3039, %3037
  %3041 = fmul fast float %3040, %2963
  %3042 = fmul fast float %3031, 2.000000e+00
  %3043 = fsub fast float 1.000000e+00, %3042
  %3044 = fmul fast float %3043, %2964
  %3045 = fadd fast float %3044, %3042
  %3046 = fmul fast float %3045, %2964
  br label %3047

; <label>:3047                                    ; preds = %3019, %3017, %3004, %2974, %2958
  %3048 = phi float [ %2959, %2958 ], [ %2959, %3019 ], [ %2959, %3017 ], [ %2959, %3004 ], [ %2996, %2974 ]
  %3049 = phi float [ %2960, %2958 ], [ %2960, %3019 ], [ %2960, %3017 ], [ %2960, %3004 ], [ %2997, %2974 ]
  %3050 = phi float [ %2961, %2958 ], [ %2961, %3019 ], [ %2961, %3017 ], [ %2961, %3004 ], [ %2998, %2974 ]
  %3051 = phi float [ %2962, %2958 ], [ %3036, %3019 ], [ %2962, %3017 ], [ %3014, %3004 ], [ %2984, %2974 ]
  %3052 = phi float [ %2963, %2958 ], [ %3041, %3019 ], [ %2963, %3017 ], [ %3015, %3004 ], [ %2985, %2974 ]
  %3053 = phi float [ %2964, %2958 ], [ %3046, %3019 ], [ %2964, %3017 ], [ %3016, %3004 ], [ %2986, %2974 ]
  %3054 = phi float [ %2400, %2958 ], [ %2400, %3019 ], [ %2400, %3017 ], [ %2400, %3004 ], [ %2989, %2974 ]
  %3055 = phi float [ %2403, %2958 ], [ %2403, %3019 ], [ %2403, %3017 ], [ %2403, %3004 ], [ %3001, %2974 ]
  %3056 = and i32 %2966, 12
  %3057 = icmp eq i32 %3056, 12
  br i1 %3057, label %3130, label %3058

; <label>:3058                                    ; preds = %3047
  %3059 = and i32 %2966, 2097184
  %3060 = icmp eq i32 %3059, 2097184
  %3061 = select i1 %3060, float %2586, float 0.000000e+00
  %3062 = and i32 %2966, 4194336
  %3063 = icmp eq i32 %3062, 4194336
  %3064 = select i1 %3063, float %2586, float 0.000000e+00
  %3065 = and i32 %2966, 8388640
  %3066 = icmp eq i32 %3065, 8388640
  %3067 = select i1 %3066, float %2586, float 0.000000e+00
  %3068 = icmp eq i32 %3056, 0
  br i1 %3068, label %3069, label %3082

; <label>:3069                                    ; preds = %3058
  %3070 = fsub fast float %2887, %2392
  %3071 = fsub fast float %2888, %2393
  %3072 = fmul fast float %3061, %3070
  %3073 = fmul fast float %3061, %3071
  %3074 = fadd fast float %3072, %2392
  %3075 = fadd fast float %3073, %2393
  %3076 = fsub fast float %2889, %2402
  %3077 = fmul fast float %3064, %3076
  %3078 = fadd fast float %3077, %2402
  %3079 = fsub fast float %2886, %2401
  %3080 = fmul fast float %3067, %3079
  %3081 = fadd fast float %3080, %2401
  br label %3130

; <label>:3082                                    ; preds = %3058
  %3083 = icmp eq i32 %3056, 4
  br i1 %3083, label %3084, label %3116

; <label>:3084                                    ; preds = %3082
  %3085 = fmul fast float %3061, %2887
  %3086 = fmul fast float %3061, %2888
  %3087 = fadd fast float %3085, %2392
  %3088 = fadd fast float %3086, %2393
  %3089 = call float @dx.op.binary.f32(i32 36, float %2402, float %2889)  ; FMin(a,b)
  %3090 = fsub fast float %3089, %2402
  %3091 = fmul fast float %3090, %3064
  %3092 = fadd fast float %3091, %2402
  %3093 = fadd fast float %2886, %2401
  %3094 = fmul fast float %3093, 0x3FF337FAE0000000
  %3095 = fmul fast float %2401, %2401
  %3096 = fmul fast float %2886, %2886
  %3097 = fadd fast float %3096, %3095
  %3098 = fmul fast float %3097, 0x3FE5152B00000000
  %3099 = fmul fast float %2401, 0xBFCC1F85E0000000
  %3100 = fmul fast float %3099, %2886
  %3101 = fadd fast float %3100, 0xBFE1363700000000
  %3102 = fadd fast float %3101, %3094
  %3103 = fsub fast float %3102, %3098
  %3104 = fmul fast float %3093, 0x3FBA6F0D00000000
  %3105 = fmul fast float %3097, 0x3FD0432880000000
  %3106 = fmul fast float %2401, 0xBFEF110800000000
  %3107 = fmul fast float %3106, %2886
  %3108 = fadd fast float %3107, 1.000000e+00
  %3109 = fsub fast float %3108, %3104
  %3110 = fadd fast float %3109, %3105
  %3111 = fdiv fast float %3103, %3110
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3113 = fsub fast float %3112, %2401
  %3114 = fmul fast float %3113, %3067
  %3115 = fadd fast float %3114, %2401
  br label %3130

; <label>:3116                                    ; preds = %3082
  %3117 = icmp eq i32 %3056, 8
  br i1 %3117, label %3118, label %3130

; <label>:3118                                    ; preds = %3116
  %3119 = fmul fast float %3061, %2887
  %3120 = fmul fast float %3061, %2888
  %3121 = fadd fast float %3119, %2392
  %3122 = fadd fast float %3120, %2393
  %3123 = call float @dx.op.binary.f32(i32 36, float %2402, float %2889)  ; FMin(a,b)
  %3124 = fsub fast float %3123, %2402
  %3125 = fmul fast float %3124, %3064
  %3126 = fadd fast float %3125, %2402
  %3127 = fsub fast float %2886, %2401
  %3128 = fmul fast float %3067, %3127
  %3129 = fadd fast float %3128, %2401
  br label %3130

; <label>:3130                                    ; preds = %3118, %3116, %3084, %3069, %3047, %2585, %2404, %2391
  %3131 = phi float [ %2392, %3047 ], [ %2392, %2585 ], [ %2392, %2391 ], [ %2392, %2404 ], [ %3074, %3069 ], [ %3087, %3084 ], [ %2392, %3116 ], [ %3121, %3118 ]
  %3132 = phi float [ %2393, %3047 ], [ %2393, %2585 ], [ %2393, %2391 ], [ %2393, %2404 ], [ %3075, %3069 ], [ %3088, %3084 ], [ %2393, %3116 ], [ %3122, %3118 ]
  %3133 = phi float [ %3048, %3047 ], [ %2394, %2585 ], [ %2394, %2391 ], [ %2394, %2404 ], [ %3048, %3069 ], [ %3048, %3084 ], [ %3048, %3116 ], [ %3048, %3118 ]
  %3134 = phi float [ %3049, %3047 ], [ %2395, %2585 ], [ %2395, %2391 ], [ %2395, %2404 ], [ %3049, %3069 ], [ %3049, %3084 ], [ %3049, %3116 ], [ %3049, %3118 ]
  %3135 = phi float [ %3050, %3047 ], [ %2396, %2585 ], [ %2396, %2391 ], [ %2396, %2404 ], [ %3050, %3069 ], [ %3050, %3084 ], [ %3050, %3116 ], [ %3050, %3118 ]
  %3136 = phi float [ %3051, %3047 ], [ %2397, %2585 ], [ %2397, %2391 ], [ %2397, %2404 ], [ %3051, %3069 ], [ %3051, %3084 ], [ %3051, %3116 ], [ %3051, %3118 ]
  %3137 = phi float [ %3052, %3047 ], [ %2398, %2585 ], [ %2398, %2391 ], [ %2398, %2404 ], [ %3052, %3069 ], [ %3052, %3084 ], [ %3052, %3116 ], [ %3052, %3118 ]
  %3138 = phi float [ %3053, %3047 ], [ %2399, %2585 ], [ %2399, %2391 ], [ %2399, %2404 ], [ %3053, %3069 ], [ %3053, %3084 ], [ %3053, %3116 ], [ %3053, %3118 ]
  %3139 = phi float [ %3054, %3047 ], [ %2400, %2585 ], [ %2400, %2391 ], [ %2400, %2404 ], [ %3054, %3069 ], [ %3054, %3084 ], [ %3054, %3116 ], [ %3054, %3118 ]
  %3140 = phi float [ %2401, %3047 ], [ %2401, %2585 ], [ %2401, %2391 ], [ %2401, %2404 ], [ %3081, %3069 ], [ %3115, %3084 ], [ %2401, %3116 ], [ %3129, %3118 ]
  %3141 = phi float [ %2402, %3047 ], [ %2402, %2585 ], [ %2402, %2391 ], [ %2402, %2404 ], [ %3078, %3069 ], [ %3092, %3084 ], [ %2402, %3116 ], [ %3126, %3118 ]
  %3142 = phi float [ %3055, %3047 ], [ %2403, %2585 ], [ %2403, %2391 ], [ %2403, %2404 ], [ %3055, %3069 ], [ %3055, %3084 ], [ %3055, %3116 ], [ %3055, %3118 ]
  %3143 = add i32 %22, 360
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = bitcast i32 %3145 to float
  %3147 = fcmp fast oge float %3146, 0.000000e+00
  %3148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.f32 %3148, 0
  %3150 = select i1 %3147, float %3146, float %3149
  %3151 = fadd fast float %3150, %167
  %3152 = and i32 %160, 65535
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = lshr i32 %160, 16
  %3155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3154)  ; LegacyF16ToF32(value)
  %3156 = and i32 %161, 65535
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = fmul fast float %3153, %3136
  %3159 = fmul fast float %3155, %3137
  %3160 = fmul fast float %3157, %3138
  %3161 = shl i32 %162, 4
  %3162 = and i32 %3161, 32752
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %162, 7
  %3165 = and i32 %3164, 32752
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = lshr i32 %162, 22
  %3168 = shl nuw nsw i32 %3167, 5
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = and i32 %163, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = fmul fast float %3163, %3133
  %3173 = fmul fast float %3172, %3171
  %3174 = fmul fast float %3166, %3134
  %3175 = fmul fast float %3174, %3171
  %3176 = fmul fast float %3169, %3135
  %3177 = fmul fast float %3176, %3171
  %3178 = call float @dx.op.dot2.f32(i32 54, float %3131, float %3132, float %3131, float %3132)  ; Dot2(ax,ay,bx,by)
  %3179 = fmul fast float %3178, 0x3FE3333340000000
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3180, float %3131, float %3132, float %3180)  ; Dot3(ax,ay,az,bx,by,bz)
  %3182 = call float @dx.op.unary.f32(i32 25, float %3181)  ; Rsqrt(value)
  %3183 = fmul fast float %3182, %3131
  %3184 = fmul fast float %3182, %3132
  %3185 = fmul fast float %3180, %3182
  %3186 = fmul fast float %3185, %74
  %3187 = fmul fast float %3185, %75
  %3188 = fmul fast float %3185, %76
  %3189 = fmul fast float %3183, %48
  %3190 = fmul fast float %3183, %49
  %3191 = fmul fast float %3183, %50
  %3192 = fadd fast float %3186, %3189
  %3193 = fadd fast float %3187, %3190
  %3194 = fadd fast float %3188, %3191
  %3195 = fmul fast float %86, %3184
  %3196 = fmul fast float %87, %3184
  %3197 = fmul fast float %88, %3184
  %3198 = fadd fast float %3192, %3195
  %3199 = fadd fast float %3193, %3196
  %3200 = fadd fast float %3194, %3197
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3198, float %3199, float %3200, float %3198, float %3199, float %3200)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = call float @dx.op.unary.f32(i32 25, float %3201)  ; Rsqrt(value)
  %3203 = fmul fast float %3198, %3202
  %3204 = fmul fast float %3199, %3202
  %3205 = fmul fast float %3200, %3202
  %3206 = icmp eq i32 %24, 65535
  br i1 %3206, label %3721, label %3207

; <label>:3207                                    ; preds = %3130
  %3208 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %3209 = call float @dx.op.unary.f32(i32 83, float %26)  ; DerivCoarseX(value)
  %3210 = call float @dx.op.unary.f32(i32 83, float %27)  ; DerivCoarseX(value)
  %3211 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %3212 = call float @dx.op.unary.f32(i32 84, float %26)  ; DerivCoarseY(value)
  %3213 = call float @dx.op.unary.f32(i32 84, float %27)  ; DerivCoarseY(value)
  %3214 = fadd fast float %3208, %25
  %3215 = fadd fast float %3209, %26
  %3216 = fadd fast float %3210, %27
  %3217 = fadd fast float %3211, %25
  %3218 = fadd fast float %3212, %26
  %3219 = fadd fast float %3213, %27
  %3220 = mul i32 %24, 48
  %3221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  %3223 = extractvalue %dx.types.ResRet.f32 %3221, 1
  %3224 = extractvalue %dx.types.ResRet.f32 %3221, 2
  %3225 = add i32 %3220, 16
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = add i32 %3220, 32
  %3231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.ResRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.ResRet.f32 %3231, 2
  %3235 = extractvalue %dx.types.ResRet.f32 %3231, 3
  %3236 = bitcast float %3235 to i32
  %3237 = fmul fast float %3222, %25
  %3238 = fmul fast float %3223, %26
  %3239 = fmul fast float %3224, %27
  %3240 = fsub fast float %3237, %3227
  %3241 = fsub fast float %3238, %3228
  %3242 = fsub fast float %3239, %3229
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3246 = fmul fast float %3243, %3232
  %3247 = fmul fast float %3244, %3233
  %3248 = fmul fast float %3245, %3234
  %3249 = fadd fast float %3232, -1.000000e+00
  %3250 = fadd fast float %3233, -1.000000e+00
  %3251 = fadd fast float %3234, -1.000000e+00
  %3252 = call float @dx.op.unary.f32(i32 27, float %3246)  ; Round_ni(value)
  %3253 = call float @dx.op.unary.f32(i32 27, float %3247)  ; Round_ni(value)
  %3254 = call float @dx.op.unary.f32(i32 27, float %3248)  ; Round_ni(value)
  %3255 = call float @dx.op.binary.f32(i32 36, float %3252, float %3249)  ; FMin(a,b)
  %3256 = call float @dx.op.binary.f32(i32 36, float %3253, float %3250)  ; FMin(a,b)
  %3257 = call float @dx.op.binary.f32(i32 36, float %3254, float %3251)  ; FMin(a,b)
  %3258 = fmul fast float %3257, %3233
  %3259 = fadd fast float %3258, %3256
  %3260 = fmul fast float %3259, %3232
  %3261 = fadd fast float %3260, %3255
  %3262 = fptosi float %3261 to i32
  %3263 = add nsw i32 %3262, %3236
  %3264 = shl nsw i32 %3263, 2
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = lshr i32 %3266, 16
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3690, label %3269

; <label>:3269                                    ; preds = %3207
  br label %3270

; <label>:3270                                    ; preds = %3391, %3269
  %3271 = phi i32 [ %3293, %3391 ], [ %3267, %3269 ]
  %3272 = phi float [ %3392, %3391 ], [ 0.000000e+00, %3269 ]
  %3273 = phi float [ %3393, %3391 ], [ %3151, %3269 ]
  %3274 = phi float [ %3394, %3391 ], [ %3142, %3269 ]
  %3275 = phi float [ %3395, %3391 ], [ 0.000000e+00, %3269 ]
  %3276 = phi float [ %3396, %3391 ], [ 0.000000e+00, %3269 ]
  %3277 = phi float [ %3397, %3391 ], [ %3173, %3269 ]
  %3278 = phi float [ %3398, %3391 ], [ %3175, %3269 ]
  %3279 = phi float [ %3399, %3391 ], [ %3177, %3269 ]
  %3280 = phi float [ %3400, %3391 ], [ %3203, %3269 ]
  %3281 = phi float [ %3401, %3391 ], [ %3204, %3269 ]
  %3282 = phi float [ %3402, %3391 ], [ %3205, %3269 ]
  %3283 = phi float [ %3403, %3391 ], [ %3141, %3269 ]
  %3284 = phi float [ %3404, %3391 ], [ %3140, %3269 ]
  %3285 = phi float [ %3405, %3391 ], [ 0.000000e+00, %3269 ]
  %3286 = phi float [ %3406, %3391 ], [ %3139, %3269 ]
  %3287 = phi float [ %3407, %3391 ], [ %3158, %3269 ]
  %3288 = phi float [ %3408, %3391 ], [ %3159, %3269 ]
  %3289 = phi float [ %3409, %3391 ], [ %3160, %3269 ]
  %3290 = shl nuw nsw i32 %3271, 2
  %3291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.i32 %3291, 0
  %3293 = lshr i32 %3292, 16
  %3294 = shl i32 %3292, 8
  %3295 = and i32 %3294, 16776960
  %3296 = or i32 %3295, 48
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = or i32 %3295, 64
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.i32 %3302, 1
  %3305 = or i32 %3295, 80
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3309 = or i32 %3295, 96
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = or i32 %3295, 112
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3318 = or i32 %3295, 128
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = extractvalue %dx.types.ResRet.f32 %3319, 3
  %3324 = or i32 %3295, 144
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = or i32 %3295, 160
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = or i32 %3295, 192
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = or i32 %3295, 208
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = or i32 %3295, 248
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3351 = call float @dx.op.dot4.f32(i32 56, float %3347, float %3348, float %3349, float %3350, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3352 = or i32 %3295, 16
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3358 = call float @dx.op.dot4.f32(i32 56, float %3354, float %3355, float %3356, float %3357, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3359 = or i32 %3295, 32
  %3360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = call float @dx.op.dot4.f32(i32 56, float %3361, float %3362, float %3363, float %3364, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3366 = call float @dx.op.unary.f32(i32 27, float %3351)  ; Round_ni(value)
  %3367 = call float @dx.op.unary.f32(i32 6, float %3366)  ; FAbs(value)
  %3368 = call float @dx.op.unary.f32(i32 27, float %3358)  ; Round_ni(value)
  %3369 = call float @dx.op.unary.f32(i32 6, float %3368)  ; FAbs(value)
  %3370 = call float @dx.op.unary.f32(i32 6, float %3365)  ; FAbs(value)
  %3371 = call float @dx.op.unary.f32(i32 27, float %3370)  ; Round_ni(value)
  %3372 = fadd fast float %3369, %3367
  %3373 = fadd fast float %3372, %3371
  %3374 = fcmp fast oeq float %3373, 0.000000e+00
  %3375 = call float @dx.op.dot4.f32(i32 56, float %3347, float %3348, float %3349, float %3350, float %3214, float %3215, float %3216, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3376 = call float @dx.op.dot4.f32(i32 56, float %3354, float %3355, float %3356, float %3357, float %3214, float %3215, float %3216, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3377 = call float @dx.op.dot4.f32(i32 56, float %3347, float %3348, float %3349, float %3350, float %3217, float %3218, float %3219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3378 = call float @dx.op.dot4.f32(i32 56, float %3354, float %3355, float %3356, float %3357, float %3217, float %3218, float %3219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3379 = fsub fast float %3375, %3351
  %3380 = fsub fast float %3377, %3351
  %3381 = fsub fast float %3376, %3358
  %3382 = fsub fast float %3378, %3358
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3298, float %3299, float %3300, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 2
  %3386 = fadd fast float %3385, %3383
  %3387 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3384, 0
  %3389 = fcmp fast ogt float %3387, %3388
  %3390 = and i1 %3374, %3389
  br i1 %3390, label %3411, label %3391

; <label>:3391                                    ; preds = %3676, %3494, %3411, %3270
  %3392 = phi float [ %3272, %3411 ], [ %3497, %3494 ], [ %3497, %3676 ], [ %3272, %3270 ]
  %3393 = phi float [ %3273, %3411 ], [ %3273, %3494 ], [ %3651, %3676 ], [ %3273, %3270 ]
  %3394 = phi float [ %3274, %3411 ], [ %3274, %3494 ], [ %3649, %3676 ], [ %3274, %3270 ]
  %3395 = phi float [ %3275, %3411 ], [ %3275, %3494 ], [ %3621, %3676 ], [ %3275, %3270 ]
  %3396 = phi float [ %3276, %3411 ], [ %3276, %3494 ], [ %3619, %3676 ], [ %3276, %3270 ]
  %3397 = phi float [ %3277, %3411 ], [ %3277, %3494 ], [ %3686, %3676 ], [ %3277, %3270 ]
  %3398 = phi float [ %3278, %3411 ], [ %3278, %3494 ], [ %3687, %3676 ], [ %3278, %3270 ]
  %3399 = phi float [ %3279, %3411 ], [ %3279, %3494 ], [ %3688, %3676 ], [ %3279, %3270 ]
  %3400 = phi float [ %3280, %3411 ], [ %3280, %3494 ], [ %3600, %3676 ], [ %3280, %3270 ]
  %3401 = phi float [ %3281, %3411 ], [ %3281, %3494 ], [ %3601, %3676 ], [ %3281, %3270 ]
  %3402 = phi float [ %3282, %3411 ], [ %3282, %3494 ], [ %3602, %3676 ], [ %3282, %3270 ]
  %3403 = phi float [ %3283, %3411 ], [ %3283, %3494 ], [ %3629, %3676 ], [ %3283, %3270 ]
  %3404 = phi float [ %3284, %3411 ], [ %3284, %3494 ], [ %3626, %3676 ], [ %3284, %3270 ]
  %3405 = phi float [ %3285, %3411 ], [ %3285, %3494 ], [ %3623, %3676 ], [ %3285, %3270 ]
  %3406 = phi float [ %3286, %3411 ], [ %3286, %3494 ], [ %3617, %3676 ], [ %3286, %3270 ]
  %3407 = phi float [ %3287, %3411 ], [ %3287, %3494 ], [ %3612, %3676 ], [ %3287, %3270 ]
  %3408 = phi float [ %3288, %3411 ], [ %3288, %3494 ], [ %3613, %3676 ], [ %3288, %3270 ]
  %3409 = phi float [ %3289, %3411 ], [ %3289, %3494 ], [ %3614, %3676 ], [ %3289, %3270 ]
  %3410 = icmp eq i32 %3293, 0
  br i1 %3410, label %3689, label %3270

; <label>:3411                                    ; preds = %3270
  %3412 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3413 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3414 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3418 = extractvalue %dx.types.ResRet.i32 %3302, 3
  %3419 = extractvalue %dx.types.ResRet.i32 %3302, 2
  %3420 = bitcast float %3412 to i32
  %3421 = add i32 %3418, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3422, %dx.types.Handle %3423, float %3351, float %3358, float undef, float undef, i32 0, i32 0, i32 undef, float %3379, float %3381, float undef, float %3380, float %3382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = fmul fast float %3425, %3417
  %3427 = fadd fast float %3426, %3416
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3429 = fmul fast float %3351, %3311
  %3430 = call float @dx.op.tertiary.f32(i32 46, float %3312, float %3358, float %3429)  ; FMad(a,b,c)
  %3431 = fadd fast float %3430, %3415
  %3432 = fmul fast float %3351, %3313
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3358, float %3432)  ; FMad(a,b,c)
  %3434 = fadd fast float %3433, %3414
  %3435 = fmul fast float %3379, %3311
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3312, float %3381, float %3435)  ; FMad(a,b,c)
  %3437 = fmul fast float %3379, %3313
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3381, float %3437)  ; FMad(a,b,c)
  %3439 = fmul fast float %3380, %3311
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3312, float %3382, float %3439)  ; FMad(a,b,c)
  %3441 = fmul fast float %3380, %3313
  %3442 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3382, float %3441)  ; FMad(a,b,c)
  %3443 = add i32 %3419, 0
  %3444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3445 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3444, %dx.types.Handle %3423, float %3431, float %3434, float undef, float undef, i32 0, i32 0, i32 undef, float %3436, float %3438, float undef, float %3440, float %3442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = and i32 %3420, 1024
  %3448 = icmp ne i32 %3447, 0
  %3449 = fcmp fast ogt float %3446, 0x3FE0101020000000
  %3450 = uitofp i1 %3449 to float
  %3451 = select i1 %3448, float %3450, float %3446
  %3452 = and i32 %3420, 8192
  %3453 = icmp ne i32 %3452, 0
  %3454 = select i1 %3453, float %3413, float 1.000000e+00
  %3455 = fmul fast float %3351, 2.000000e+00
  %3456 = fadd fast float %3455, -1.000000e+00
  %3457 = call float @dx.op.unary.f32(i32 6, float %3456)  ; FAbs(value)
  %3458 = fmul fast float %3457, %3344
  %3459 = fsub fast float %3458, %3344
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fmul fast float %3358, 2.000000e+00
  %3462 = fadd fast float %3461, -1.000000e+00
  %3463 = call float @dx.op.unary.f32(i32 6, float %3462)  ; FAbs(value)
  %3464 = fmul fast float %3463, %3345
  %3465 = fsub fast float %3464, %3345
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = fmul fast float %3370, %3307
  %3468 = fsub fast float %3467, %3307
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3428, %3454
  %3471 = fmul fast float %3470, %3425
  %3472 = fmul fast float %3471, %3460
  %3473 = fmul fast float %3472, %3451
  %3474 = fmul fast float %3473, %3466
  %3475 = fmul fast float %3474, %3469
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3479 = fsub fast float %3387, %3478
  %3480 = fmul fast float %3479, %3477
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3482 = fmul fast float %3475, %3308
  %3483 = fadd fast float %3475, %3308
  %3484 = fmul fast float %3483, %3317
  %3485 = fsub fast float %3484, %3317
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = and i32 %3420, 128
  %3488 = icmp ne i32 %3487, 0
  %3489 = select i1 %3488, float %3486, float %3482
  %3490 = fmul fast float %3489, %3481
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3493 = fcmp fast ugt float %3490, %3492
  br i1 %3493, label %3494, label %3391

; <label>:3494                                    ; preds = %3411
  %3495 = select i1 %3453, float %3490, float 0.000000e+00
  %3496 = fadd fast float %3495, %3272
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  br i1 %3453, label %3391, label %3498

; <label>:3498                                    ; preds = %3494
  %3499 = and i32 %3420, 4
  %3500 = and i32 %3420, 8
  %3501 = add i32 %3303, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3501, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3502, %dx.types.Handle %3503, float %3431, float %3434, float undef, float undef, i32 0, i32 0, i32 undef, float %3436, float %3438, float undef, float %3440, float %3442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3509 = bitcast float %3329 to i32
  %3510 = and i32 %3509, 255
  %3511 = uitofp i32 %3510 to float
  %3512 = lshr i32 %3509, 8
  %3513 = and i32 %3512, 255
  %3514 = uitofp i32 %3513 to float
  %3515 = fmul fast float %3508, %3511
  %3516 = fadd fast float %3515, %3514
  %3517 = fmul fast float %3516, 0x3F70101000000000
  %3518 = add i32 %3304, 0
  %3519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3518, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3519, %dx.types.Handle %3503, float %3431, float %3434, float undef, float undef, i32 0, i32 0, i32 undef, float %3436, float %3438, float undef, float %3440, float %3442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = extractvalue %dx.types.ResRet.f32 %3520, 3
  %3525 = bitcast float %3323 to i32
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = lshr i32 %3525, 8
  %3529 = and i32 %3528, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = lshr i32 %3525, 16
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = fmul fast float %3533, 0x3F70101000000000
  %3535 = fmul fast float %3521, %3527
  %3536 = fadd fast float %3535, %3530
  %3537 = fmul fast float %3536, 0x3F70101000000000
  %3538 = fadd fast float %3522, -5.000000e-01
  %3539 = fadd fast float %3524, -5.000000e-01
  %3540 = fmul fast float %3538, %3534
  %3541 = fmul fast float %3539, %3534
  %3542 = fadd fast float %3540, 5.000000e-01
  %3543 = fadd fast float %3541, 5.000000e-01
  %3544 = fmul fast float %3505, %3332
  %3545 = fmul fast float %3506, %3333
  %3546 = fmul fast float %3507, %3334
  %3547 = fmul fast float %3542, 2.000000e+00
  %3548 = fadd fast float %3547, -1.000000e+00
  %3549 = fmul fast float %3543, 2.000000e+00
  %3550 = fadd fast float %3549, -1.000000e+00
  %3551 = fadd fast float %3548, %3550
  %3552 = fmul fast float %3551, 5.000000e-01
  %3553 = fsub fast float %3548, %3550
  %3554 = fmul fast float %3553, 5.000000e-01
  %3555 = call float @dx.op.unary.f32(i32 6, float %3552)  ; FAbs(value)
  %3556 = fsub fast float 1.000000e+00, %3555
  %3557 = call float @dx.op.unary.f32(i32 6, float %3554)  ; FAbs(value)
  %3558 = fsub fast float %3556, %3557
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3552, float %3554, float %3558, float %3552, float %3554, float %3558)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = call float @dx.op.unary.f32(i32 25, float %3559)  ; Rsqrt(value)
  %3561 = fmul fast float %3552, %3560
  %3562 = fmul fast float %3554, %3560
  %3563 = fmul fast float %3560, %3558
  %3564 = fmul fast float %3563, %3298
  %3565 = fmul fast float %3563, %3299
  %3566 = fmul fast float %3563, %3300
  %3567 = fmul fast float %3561, %3320
  %3568 = fmul fast float %3561, %3321
  %3569 = fmul fast float %3561, %3322
  %3570 = fadd fast float %3567, %3564
  %3571 = fadd fast float %3568, %3565
  %3572 = fadd fast float %3569, %3566
  %3573 = fmul fast float %3562, %3326
  %3574 = fmul fast float %3562, %3327
  %3575 = fmul fast float %3562, %3328
  %3576 = fadd fast float %3570, %3573
  %3577 = fadd fast float %3571, %3574
  %3578 = fadd fast float %3572, %3575
  %3579 = call float @dx.op.dot3.f32(i32 55, float %3576, float %3577, float %3578, float %3576, float %3577, float %3578)  ; Dot3(ax,ay,az,bx,by,bz)
  %3580 = call float @dx.op.unary.f32(i32 25, float %3579)  ; Rsqrt(value)
  %3581 = fmul fast float %3576, %3580
  %3582 = fmul fast float %3577, %3580
  %3583 = fmul fast float %3578, %3580
  %3584 = icmp ne i32 %3500, 0
  %3585 = select i1 %3584, float 1.000000e+00, float 0.000000e+00
  %3586 = fmul fast float %3490, %3585
  %3587 = and i32 %3420, 1
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3589, label %3593

; <label>:3589                                    ; preds = %3498
  %3590 = fsub fast float %3581, %3280
  %3591 = fsub fast float %3582, %3281
  %3592 = fsub fast float %3583, %3282
  br label %3593

; <label>:3593                                    ; preds = %3589, %3498
  %3594 = phi float [ %3590, %3589 ], [ %3581, %3498 ]
  %3595 = phi float [ %3591, %3589 ], [ %3582, %3498 ]
  %3596 = phi float [ %3592, %3589 ], [ %3583, %3498 ]
  %3597 = fmul float %3596, %3586
  %3598 = fmul float %3595, %3586
  %3599 = fmul float %3594, %3586
  %3600 = fadd fast float %3599, %3280
  %3601 = fadd fast float %3598, %3281
  %3602 = fadd fast float %3597, %3282
  %3603 = icmp ne i32 %3499, 0
  %3604 = select i1 %3603, float 1.000000e+00, float 0.000000e+00
  %3605 = fmul fast float %3490, %3604
  %3606 = fsub fast float %3544, %3287
  %3607 = fsub fast float %3545, %3288
  %3608 = fsub fast float %3546, %3289
  %3609 = fmul fast float %3606, %3605
  %3610 = fmul fast float %3607, %3605
  %3611 = fmul fast float %3608, %3605
  %3612 = fadd fast float %3609, %3287
  %3613 = fadd fast float %3610, %3288
  %3614 = fadd fast float %3611, %3289
  %3615 = fsub fast float %3517, %3286
  %3616 = fmul fast float %3615, %3605
  %3617 = fadd fast float %3616, %3286
  %3618 = fmul fast float %3605, %3276
  %3619 = fsub fast float %3276, %3618
  %3620 = fmul fast float %3605, %3275
  %3621 = fsub fast float %3275, %3620
  %3622 = fadd fast float %3490, %3285
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = fsub fast float %3537, %3284
  %3625 = fmul fast float %3624, %3586
  %3626 = fadd fast float %3625, %3284
  %3627 = fsub fast float %3523, %3283
  %3628 = fmul fast float %3627, %3586
  %3629 = fadd fast float %3628, %3283
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.CBufRet.f32 %3631, 1
  %3634 = fmul fast float %3633, %3630
  %3635 = fadd fast float %3634, %3632
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = bitcast float %3335 to i32
  %3638 = and i32 %3637, 65535
  %3639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3638)  ; LegacyF16ToF32(value)
  %3640 = lshr i32 %3637, 16
  %3641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3640)  ; LegacyF16ToF32(value)
  %3642 = fcmp fast oge float %3639, 0.000000e+00
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = select i1 %3642, float %3639, float %3644
  %3646 = fadd fast float %3645, %3641
  %3647 = fsub fast float %3636, %3274
  %3648 = fmul fast float %3647, %3490
  %3649 = fadd fast float %3648, %3274
  %3650 = fmul fast float %3646, %3490
  %3651 = call float @dx.op.binary.f32(i32 35, float %3273, float %3650)  ; FMax(a,b)
  %3652 = and i32 %3420, 16
  %3653 = icmp eq i32 %3652, 0
  br i1 %3653, label %3676, label %3654

; <label>:3654                                    ; preds = %3593
  %3655 = bitcast float %3341 to i32
  %3656 = add i32 %3338, 0
  %3657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3658 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3657, %dx.types.Handle %3503, float %3431, float %3434, float undef, float undef, i32 0, i32 0, i32 undef, float %3436, float %3438, float undef, float %3440, float %3442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = and i32 %3655, 65535
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = fmul fast float %3659, %3332
  %3665 = fmul fast float %3660, %3333
  %3666 = fmul fast float %3661, %3334
  %3667 = and i32 %3420, 16384
  %3668 = icmp ne i32 %3667, 0
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = select i1 %3668, float %3670, float 1.000000e+00
  %3672 = fmul fast float %3671, %3663
  %3673 = fmul fast float %3664, %3672
  %3674 = fmul fast float %3665, %3672
  %3675 = fmul fast float %3666, %3672
  br label %3676

; <label>:3676                                    ; preds = %3654, %3593
  %3677 = phi float [ %3673, %3654 ], [ 0.000000e+00, %3593 ]
  %3678 = phi float [ %3674, %3654 ], [ 0.000000e+00, %3593 ]
  %3679 = phi float [ %3675, %3654 ], [ 0.000000e+00, %3593 ]
  %3680 = fsub fast float %3677, %3277
  %3681 = fsub fast float %3678, %3278
  %3682 = fsub fast float %3679, %3279
  %3683 = fmul fast float %3680, %3490
  %3684 = fmul fast float %3681, %3490
  %3685 = fmul fast float %3682, %3490
  %3686 = fadd fast float %3683, %3277
  %3687 = fadd fast float %3684, %3278
  %3688 = fadd fast float %3685, %3279
  br label %3391

; <label>:3689                                    ; preds = %3391
  br label %3690

; <label>:3690                                    ; preds = %3689, %3207
  %3691 = phi float [ 0.000000e+00, %3207 ], [ %3392, %3689 ]
  %3692 = phi float [ %3151, %3207 ], [ %3393, %3689 ]
  %3693 = phi float [ %3142, %3207 ], [ %3394, %3689 ]
  %3694 = phi float [ 0.000000e+00, %3207 ], [ %3395, %3689 ]
  %3695 = phi float [ 0.000000e+00, %3207 ], [ %3396, %3689 ]
  %3696 = phi float [ %3173, %3207 ], [ %3397, %3689 ]
  %3697 = phi float [ %3175, %3207 ], [ %3398, %3689 ]
  %3698 = phi float [ %3177, %3207 ], [ %3399, %3689 ]
  %3699 = phi float [ %3203, %3207 ], [ %3400, %3689 ]
  %3700 = phi float [ %3204, %3207 ], [ %3401, %3689 ]
  %3701 = phi float [ %3205, %3207 ], [ %3402, %3689 ]
  %3702 = phi float [ %3141, %3207 ], [ %3403, %3689 ]
  %3703 = phi float [ %3140, %3207 ], [ %3404, %3689 ]
  %3704 = phi float [ 0.000000e+00, %3207 ], [ %3405, %3689 ]
  %3705 = phi float [ %3139, %3207 ], [ %3406, %3689 ]
  %3706 = phi float [ %3158, %3207 ], [ %3407, %3689 ]
  %3707 = phi float [ %3159, %3207 ], [ %3408, %3689 ]
  %3708 = phi float [ %3160, %3207 ], [ %3409, %3689 ]
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float %3699, float %3700, float %3701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 25, float %3709)  ; Rsqrt(value)
  %3711 = fmul fast float %3710, %3699
  %3712 = fmul fast float %3710, %3700
  %3713 = fmul fast float %3710, %3701
  %3714 = fadd fast float %3704, %922
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = call float @dx.op.dot3.f32(i32 55, float %3711, float %3712, float %3713, float %3711, float %3712, float %3713)  ; Dot3(ax,ay,az,bx,by,bz)
  %3717 = call float @dx.op.unary.f32(i32 25, float %3716)  ; Rsqrt(value)
  %3718 = fmul fast float %3717, %3711
  %3719 = fmul fast float %3717, %3712
  %3720 = fmul fast float %3717, %3713
  br label %3721

; <label>:3721                                    ; preds = %3690, %3130
  %3722 = phi float [ %3706, %3690 ], [ %3158, %3130 ]
  %3723 = phi float [ %3707, %3690 ], [ %3159, %3130 ]
  %3724 = phi float [ %3708, %3690 ], [ %3160, %3130 ]
  %3725 = phi float [ %3696, %3690 ], [ %3173, %3130 ]
  %3726 = phi float [ %3697, %3690 ], [ %3175, %3130 ]
  %3727 = phi float [ %3698, %3690 ], [ %3177, %3130 ]
  %3728 = phi float [ %3718, %3690 ], [ %3203, %3130 ]
  %3729 = phi float [ %3719, %3690 ], [ %3204, %3130 ]
  %3730 = phi float [ %3720, %3690 ], [ %3205, %3130 ]
  %3731 = phi float [ %3705, %3690 ], [ %3139, %3130 ]
  %3732 = phi float [ %3715, %3690 ], [ %922, %3130 ]
  %3733 = phi float [ %3703, %3690 ], [ %3140, %3130 ]
  %3734 = phi float [ %3702, %3690 ], [ %3141, %3130 ]
  %3735 = phi float [ %3695, %3690 ], [ 0.000000e+00, %3130 ]
  %3736 = phi float [ %3694, %3690 ], [ 0.000000e+00, %3130 ]
  %3737 = phi float [ %3691, %3690 ], [ 0.000000e+00, %3130 ]
  %3738 = phi float [ %3692, %3690 ], [ %3151, %3130 ]
  %3739 = phi float [ %3693, %3690 ], [ %3142, %3130 ]
  %3740 = fadd fast float %3731, 0xBFB99999A0000000
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3742 = fmul fast float %3741, 0x3FF1C71C80000000
  %3743 = call float @dx.op.binary.f32(i32 36, float %3731, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3744 = fsub fast float 1.000000e+00, %3742
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fmul fast float %3745, %3722
  %3747 = fmul fast float %3745, %3723
  %3748 = fmul fast float %3745, %3724
  %3749 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3750 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3751 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3752 = fmul fast float %3742, %3722
  %3753 = fmul fast float %3742, %3723
  %3754 = fmul fast float %3742, %3724
  %3755 = fadd fast float %3752, %3743
  %3756 = fadd fast float %3753, %3743
  %3757 = fadd fast float %3754, %3743
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3761 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.i32 %3762, 3
  %3764 = and i32 %3763, 8
  %3765 = icmp ne i32 %3764, 0
  %3766 = call float @dx.op.binary.f32(i32 35, float %3749, float %3722)  ; FMax(a,b)
  %3767 = call float @dx.op.binary.f32(i32 35, float %3750, float %3722)  ; FMax(a,b)
  %3768 = call float @dx.op.binary.f32(i32 35, float %3751, float %3722)  ; FMax(a,b)
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = select i1 %206, float %3722, float %3749
  %3771 = select i1 %206, float %3769, float %3750
  %3772 = select i1 %206, float 1.000000e+00, float %3751
  %3773 = select i1 %3765, float %3766, float %3770
  %3774 = select i1 %3765, float %3767, float %3771
  %3775 = select i1 %3765, float %3768, float %3772
  %3776 = and i32 %182, 3
  %3777 = select i1 %176, i32 %3776, i32 0
  %3778 = icmp eq i32 %3777, 1
  br i1 %3778, label %3779, label %3855

; <label>:3779                                    ; preds = %3721
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3783 = fadd fast float %3781, %154
  %3784 = fadd fast float %3782, %155
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = fsub fast float %3783, %3786
  %3789 = fsub fast float %3784, %3787
  %3790 = fmul fast float %3788, %3788
  %3791 = fmul fast float %3789, %3789
  %3792 = fadd fast float %3790, %3791
  %3793 = call float @dx.op.unary.f32(i32 24, float %3792)  ; Sqrt(value)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3795 = fcmp fast olt float %3793, %3794
  br i1 %3795, label %3796, label %3849

; <label>:3796                                    ; preds = %3779
  %3797 = extractvalue %dx.types.CBufRet.f32 %3780, 2
  %3798 = fadd fast float %3797, %156
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3806 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3807 = extractvalue %dx.types.CBufRet.f32 %3803, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3809 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3810 = extractvalue %dx.types.CBufRet.f32 %3803, 3
  %3811 = fadd fast float %3808, %3783
  %3812 = fadd fast float %3809, %3784
  %3813 = fadd fast float %3798, %3810
  %3814 = fmul fast float %3811, %3800
  %3815 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3802, float %3814)  ; FMad(a,b,c)
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3804, float %3815)  ; FMad(a,b,c)
  %3817 = fmul fast float %3811, %3805
  %3818 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3806, float %3817)  ; FMad(a,b,c)
  %3819 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3807, float %3818)  ; FMad(a,b,c)
  %3820 = fsub fast float %3816, %3808
  %3821 = fsub fast float %3819, %3809
  %3822 = fsub fast float %3820, %3786
  %3823 = fadd fast float %3822, %3794
  %3824 = fsub fast float %3821, %3787
  %3825 = fadd fast float %3824, %3794
  %3826 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3827 = fmul fast float %3823, %3826
  %3828 = fmul fast float %3825, %3826
  %3829 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3831 = fsub fast float 1.000000e+00, %3829
  %3832 = fsub fast float 1.000000e+00, %3830
  %3833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %3831, float %3832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = fcmp fast ugt float %3834, 0.000000e+00
  br i1 %3835, label %3836, label %3849

; <label>:3836                                    ; preds = %3796
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3839 = fmul fast float %3838, %3834
  %3840 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3841 = fadd fast float %3840, %3839
  %3842 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3843 = fadd fast float %3841, %3810
  %3844 = fmul fast float %3816, %3804
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3819, float %3807, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3842, float %3845)  ; FMad(a,b,c)
  %3847 = fsub fast float %3846, %3810
  %3848 = fsub fast float %3847, %3797
  br label %3849

; <label>:3849                                    ; preds = %3836, %3796, %3779
  %3850 = phi i1 [ true, %3836 ], [ false, %3796 ], [ false, %3779 ]
  %3851 = phi float [ %3848, %3836 ], [ -1.310720e+05, %3796 ], [ -1.310720e+05, %3779 ]
  %3852 = fsub fast float %3851, %156
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = select i1 %3850, float %3853, float 1.000000e+00
  br label %3855

; <label>:3855                                    ; preds = %3849, %3721
  %3856 = phi float [ %3854, %3849 ], [ 0.000000e+00, %3721 ]
  %3857 = icmp eq i32 %3777, 3
  %3858 = select i1 %3857, float 1.000000e+00, float %3856
  %3859 = call float @dx.op.binary.f32(i32 35, float %3737, float %3858)  ; FMax(a,b)
  %3860 = fcmp fast olt float %3858, 1.000000e+00
  %3861 = fcmp uge float %38, 0.000000e+00
  %3862 = and i1 %3861, %3860
  br i1 %3862, label %3863, label %3873

; <label>:3863                                    ; preds = %3855
  %3864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %38, float %39, float %40, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = fadd fast float %3865, %3859
  %3869 = fcmp ule float %37, 0.000000e+00
  %3870 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = select i1 %3869, float %3870, float 1.000000e+00
  %3872 = fmul fast float %3871, %3867
  br label %3873

; <label>:3873                                    ; preds = %3863, %3855
  %3874 = phi float [ %3868, %3863 ], [ %3859, %3855 ]
  %3875 = phi float [ %3866, %3863 ], [ 0.000000e+00, %3855 ]
  %3876 = phi float [ %3872, %3863 ], [ 0.000000e+00, %3855 ]
  %3877 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3878 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = fcmp fast une float %3878, 0.000000e+00
  %3881 = fcmp fast une float %3879, 0.000000e+00
  %3882 = or i1 %3880, %3881
  br i1 %3882, label %3883, label %4442

; <label>:3883                                    ; preds = %3873
  br i1 %3880, label %3884, label %4157

; <label>:3884                                    ; preds = %3883
  %3885 = call float @dx.op.unary.f32(i32 23, float %3734)  ; Log(value)
  %3886 = fmul fast float %3885, 4.000000e+00
  %3887 = call float @dx.op.unary.f32(i32 21, float %3886)  ; Exp(value)
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = fmul fast float %3889, %25
  %3891 = fmul fast float %3889, %26
  %3892 = fmul fast float %3889, %27
  %3893 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 23, float %3893)  ; Log(value)
  %3897 = call float @dx.op.unary.f32(i32 23, float %3894)  ; Log(value)
  %3898 = call float @dx.op.unary.f32(i32 23, float %3895)  ; Log(value)
  %3899 = fmul fast float %3896, 4.000000e+00
  %3900 = fmul fast float %3897, 4.000000e+00
  %3901 = fmul fast float %3898, 4.000000e+00
  %3902 = call float @dx.op.unary.f32(i32 21, float %3899)  ; Exp(value)
  %3903 = call float @dx.op.unary.f32(i32 21, float %3900)  ; Exp(value)
  %3904 = call float @dx.op.unary.f32(i32 21, float %3901)  ; Exp(value)
  %3905 = fadd fast float %3903, %3902
  %3906 = fadd fast float %3905, %3904
  %3907 = fdiv fast float 1.000000e+00, %3906
  %3908 = fmul fast float %3907, %3902
  %3909 = fcmp fast ogt float %34, 0.000000e+00
  %3910 = fcmp fast ogt float %35, 0.000000e+00
  %3911 = fcmp fast ogt float %36, 0.000000e+00
  %3912 = fcmp fast olt float %34, 0.000000e+00
  %3913 = fcmp fast olt float %35, 0.000000e+00
  %3914 = fcmp fast olt float %36, 0.000000e+00
  %3915 = zext i1 %3909 to i32
  %3916 = zext i1 %3910 to i32
  %3917 = zext i1 %3911 to i32
  %3918 = zext i1 %3912 to i32
  %3919 = zext i1 %3913 to i32
  %3920 = zext i1 %3914 to i32
  %3921 = sub nsw i32 %3915, %3918
  %3922 = sub nsw i32 %3916, %3919
  %3923 = sub nsw i32 %3917, %3920
  %3924 = call float @dx.op.unary.f32(i32 83, float %3890)  ; DerivCoarseX(value)
  %3925 = call float @dx.op.unary.f32(i32 83, float %3891)  ; DerivCoarseX(value)
  %3926 = call float @dx.op.unary.f32(i32 83, float %3892)  ; DerivCoarseX(value)
  %3927 = call float @dx.op.unary.f32(i32 84, float %3890)  ; DerivCoarseY(value)
  %3928 = call float @dx.op.unary.f32(i32 84, float %3891)  ; DerivCoarseY(value)
  %3929 = call float @dx.op.unary.f32(i32 84, float %3892)  ; DerivCoarseY(value)
  %3930 = fcmp fast ole float %217, %3908
  %3931 = fmul fast float %3907, %3905
  %3932 = fcmp fast ole float %217, %3931
  %3933 = select i1 %3932, float %3892, float %3890
  %3934 = select i1 %3932, float %3890, float %3891
  %3935 = select i1 %3930, float %3891, float %3933
  %3936 = select i1 %3930, float %3892, float %3934
  %3937 = select i1 %3932, float %3926, float %3924
  %3938 = select i1 %3932, float %3924, float %3925
  %3939 = select i1 %3930, float %3925, float %3937
  %3940 = select i1 %3930, float %3926, float %3938
  %3941 = select i1 %3932, float %3929, float %3927
  %3942 = select i1 %3932, float %3927, float %3928
  %3943 = select i1 %3930, float %3928, float %3941
  %3944 = select i1 %3930, float %3929, float %3942
  %3945 = call float @dx.op.unary.f32(i32 27, float %3935)  ; Round_ni(value)
  %3946 = call float @dx.op.unary.f32(i32 27, float %3936)  ; Round_ni(value)
  %3947 = fptosi float %3945 to i32
  %3948 = fptosi float %3946 to i32
  %3949 = xor i32 %3948, %3947
  %3950 = sitofp i32 %3949 to float
  %3951 = fptosi float %3950 to i32
  %3952 = sitofp i32 %3951 to float
  %3953 = fmul fast float %3952, 0x3FE3C6EF40000000
  %3954 = frem fast float %3945, 2.560000e+02
  %3955 = frem fast float %3946, 2.560000e+02
  %3956 = fptoui float %3954 to i32
  %3957 = fptoui float %3955 to i32
  %3958 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %3956, i32 %3957, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = fadd fast float %3959, %3953
  %3963 = fadd fast float %3960, %3953
  %3964 = fadd fast float %3961, %3953
  %3965 = call float @dx.op.unary.f32(i32 22, float %3962)  ; Frc(value)
  %3966 = call float @dx.op.unary.f32(i32 22, float %3963)  ; Frc(value)
  %3967 = call float @dx.op.unary.f32(i32 22, float %3964)  ; Frc(value)
  %3968 = fmul fast float %3967, 0x401921FB60000000
  %3969 = call float @dx.op.unary.f32(i32 13, float %3968)  ; Sin(value)
  %3970 = call float @dx.op.unary.f32(i32 12, float %3968)  ; Cos(value)
  %3971 = fsub fast float -0.000000e+00, %3970
  %3972 = fmul fast float %3970, %3935
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3936, float %3972)  ; FMad(a,b,c)
  %3974 = fmul fast float %3969, %3935
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3936, float %3974)  ; FMad(a,b,c)
  %3976 = fadd fast float %3973, %3965
  %3977 = fadd fast float %3975, %3966
  %3978 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3979 = bitcast float %3978 to i32
  %3980 = icmp eq i32 %3979, 0
  br i1 %3980, label %4019, label %3981

; <label>:3981                                    ; preds = %3884
  %3982 = add i32 %3979, 0
  %3983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3984 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3983, %dx.types.Handle %64, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3940, float undef, float %3943, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3989 = fsub fast float 1.000000e+00, %3878
  %3990 = call float @dx.op.binary.f32(i32 35, float %3989, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3991 = bitcast float %3878 to i32
  %3992 = sitofp i32 %3991 to float
  %3993 = fadd fast float %3992, 0xC1CFBF8940000000
  %3994 = fmul fast float %3988, %3993
  %3995 = fadd fast float %3994, 0x41CFBF8940000000
  %3996 = fptosi float %3995 to i32
  %3997 = bitcast i32 %3996 to float
  %3998 = bitcast float %3990 to i32
  %3999 = sitofp i32 %3998 to float
  %4000 = fadd fast float %3999, 0xC1CFBF8940000000
  %4001 = fmul fast float %4000, %3988
  %4002 = fadd fast float %4001, 0x41CFBF8940000000
  %4003 = fptosi float %4002 to i32
  %4004 = bitcast i32 %4003 to float
  %4005 = fmul fast float %3997, %3987
  %4006 = fmul fast float %4004, %3987
  %4007 = fsub fast float %3990, %4005
  %4008 = fadd fast float %4006, %3990
  %4009 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4010 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4011 = fsub fast float %3985, %4009
  %4012 = fsub fast float %4010, %4009
  %4013 = bitcast float %4012 to i32
  %4014 = sub nsw i32 2129859010, %4013
  %4015 = bitcast i32 %4014 to float
  %4016 = fmul fast float %4015, %4011
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fcmp fast olt float %4017, 0x3F70101020000000
  br i1 %4018, label %4157, label %4019

; <label>:4019                                    ; preds = %3981, %3884
  %4020 = phi float [ %4017, %3981 ], [ %3878, %3884 ]
  %4021 = fmul fast float %4020, %3887
  %4022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.i32 %4022, 1
  %4024 = extractvalue %dx.types.CBufRet.i32 %4022, 0
  %4025 = add i32 %4024, 0
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4026, %dx.types.Handle %63, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3940, float undef, float %3943, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.ResRet.f32 %4027, 2
  %4031 = extractvalue %dx.types.ResRet.f32 %4027, 3
  %4032 = and i32 %4023, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = lshr i32 %4023, 8
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = fmul fast float %4031, %4033
  %4038 = fadd fast float %4037, %4036
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = fadd fast float %4039, 0xBFB99999A0000000
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %4041, 0x3FF1C71C80000000
  %4043 = call float @dx.op.binary.f32(i32 36, float %4039, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4044 = fsub fast float 1.000000e+00, %4042
  %4045 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4046 = fmul fast float %4045, %4028
  %4047 = fmul fast float %4045, %4029
  %4048 = fmul fast float %4045, %4030
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = fmul fast float %4042, %4028
  %4053 = fmul fast float %4042, %4029
  %4054 = fmul fast float %4042, %4030
  %4055 = fadd fast float %4052, %4043
  %4056 = fadd fast float %4053, %4043
  %4057 = fadd fast float %4054, %4043
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.i32 %4061, 3
  %4063 = extractvalue %dx.types.CBufRet.i32 %4061, 2
  %4064 = add i32 %4063, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4065, %dx.types.Handle %63, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3940, float undef, float %3943, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.ResRet.f32 %4066, 1
  %4069 = extractvalue %dx.types.ResRet.f32 %4066, 2
  %4070 = extractvalue %dx.types.ResRet.f32 %4066, 3
  %4071 = and i32 %4062, 255
  %4072 = uitofp i32 %4071 to float
  %4073 = lshr i32 %4062, 8
  %4074 = and i32 %4073, 255
  %4075 = uitofp i32 %4074 to float
  %4076 = lshr i32 %4062, 16
  %4077 = and i32 %4076, 255
  %4078 = uitofp i32 %4077 to float
  %4079 = fmul fast float %4078, 0x3F70101000000000
  %4080 = fmul fast float %4067, %4072
  %4081 = fadd fast float %4080, %4075
  %4082 = fmul fast float %4081, 0x3F70101000000000
  %4083 = fadd fast float %4068, -5.000000e-01
  %4084 = fadd fast float %4070, -5.000000e-01
  %4085 = fmul fast float %4083, %4079
  %4086 = fmul fast float %4084, %4079
  %4087 = fadd fast float %4085, 5.000000e-01
  %4088 = fadd fast float %4086, 5.000000e-01
  %4089 = fmul fast float %4087, 2.000000e+00
  %4090 = fadd fast float %4089, -1.000000e+00
  %4091 = fmul fast float %4088, 2.000000e+00
  %4092 = fadd fast float %4091, -1.000000e+00
  %4093 = fadd fast float %4090, %4092
  %4094 = fmul fast float %4093, 5.000000e-01
  %4095 = fsub fast float %4090, %4092
  %4096 = fmul fast float %4095, 5.000000e-01
  %4097 = call float @dx.op.unary.f32(i32 6, float %4094)  ; FAbs(value)
  %4098 = fsub fast float 1.000000e+00, %4097
  %4099 = call float @dx.op.unary.f32(i32 6, float %4096)  ; FAbs(value)
  %4100 = fsub fast float %4098, %4099
  %4101 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4096, float %4100, float %4094, float %4096, float %4100)  ; Dot3(ax,ay,az,bx,by,bz)
  %4102 = call float @dx.op.unary.f32(i32 25, float %4101)  ; Rsqrt(value)
  %4103 = fmul fast float %4094, %4102
  %4104 = fmul fast float %4096, %4102
  %4105 = select i1 %3932, i32 %3922, i32 %3923
  %4106 = select i1 %3930, i32 %3921, i32 %4105
  %4107 = sitofp i32 %4106 to float
  %4108 = fmul fast float %4100, %4107
  %4109 = fmul fast float %4108, %4102
  %4110 = select i1 %3932, float %4109, float %4104
  %4111 = select i1 %3932, float %4104, float %4109
  %4112 = select i1 %3930, float %4109, float %4103
  %4113 = select i1 %3930, float %4104, float %4110
  %4114 = select i1 %3930, float %4103, float %4111
  %4115 = fsub fast float %4049, %3773
  %4116 = fsub fast float %4050, %3774
  %4117 = fsub fast float %4051, %3775
  %4118 = fmul fast float %4115, %4021
  %4119 = fmul fast float %4116, %4021
  %4120 = fmul fast float %4117, %4021
  %4121 = fadd fast float %4118, %3773
  %4122 = fadd fast float %4119, %3774
  %4123 = fadd fast float %4120, %3775
  %4124 = fsub fast float %4058, %3758
  %4125 = fsub fast float %4059, %3759
  %4126 = fsub fast float %4060, %3760
  %4127 = fmul fast float %4124, %4021
  %4128 = fmul fast float %4125, %4021
  %4129 = fmul fast float %4126, %4021
  %4130 = fadd fast float %4127, %3758
  %4131 = fadd fast float %4128, %3759
  %4132 = fadd fast float %4129, %3760
  %4133 = fadd fast float %4112, %3728
  %4134 = fadd fast float %4113, %3729
  %4135 = fadd fast float %4114, %3730
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4134, float %4135, float %4133, float %4134, float %4135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = call float @dx.op.unary.f32(i32 25, float %4136)  ; Rsqrt(value)
  %4138 = fmul fast float %4133, %4137
  %4139 = fmul fast float %4134, %4137
  %4140 = fmul fast float %4135, %4137
  %4141 = fsub fast float %4138, %3728
  %4142 = fsub fast float %4139, %3729
  %4143 = fsub fast float %4140, %3730
  %4144 = fmul fast float %4141, %4021
  %4145 = fmul fast float %4142, %4021
  %4146 = fmul fast float %4143, %4021
  %4147 = fadd fast float %4144, %3728
  %4148 = fadd fast float %4145, %3729
  %4149 = fadd fast float %4146, %3730
  %4150 = call float @dx.op.binary.f32(i32 36, float %3734, float %4069)  ; FMin(a,b)
  %4151 = fsub fast float %4150, %3734
  %4152 = fmul fast float %4151, %4021
  %4153 = fadd fast float %4152, %3734
  %4154 = fsub fast float %4082, %3761
  %4155 = fmul fast float %4154, %4021
  %4156 = fadd fast float %4155, %3761
  br label %4157

; <label>:4157                                    ; preds = %4019, %3981, %3883
  %4158 = phi float [ %4121, %4019 ], [ %3773, %3981 ], [ %3773, %3883 ]
  %4159 = phi float [ %4122, %4019 ], [ %3774, %3981 ], [ %3774, %3883 ]
  %4160 = phi float [ %4123, %4019 ], [ %3775, %3981 ], [ %3775, %3883 ]
  %4161 = phi float [ %4130, %4019 ], [ %3758, %3981 ], [ %3758, %3883 ]
  %4162 = phi float [ %4131, %4019 ], [ %3759, %3981 ], [ %3759, %3883 ]
  %4163 = phi float [ %4132, %4019 ], [ %3760, %3981 ], [ %3760, %3883 ]
  %4164 = phi float [ %4147, %4019 ], [ %3728, %3981 ], [ %3728, %3883 ]
  %4165 = phi float [ %4148, %4019 ], [ %3729, %3981 ], [ %3729, %3883 ]
  %4166 = phi float [ %4149, %4019 ], [ %3730, %3981 ], [ %3730, %3883 ]
  %4167 = phi float [ %4156, %4019 ], [ %3761, %3981 ], [ %3761, %3883 ]
  %4168 = phi float [ %4153, %4019 ], [ %3734, %3981 ], [ %3734, %3883 ]
  br i1 %3881, label %4169, label %4442

; <label>:4169                                    ; preds = %4157
  %4170 = call float @dx.op.unary.f32(i32 23, float %4168)  ; Log(value)
  %4171 = fmul fast float %4170, 4.000000e+00
  %4172 = call float @dx.op.unary.f32(i32 21, float %4171)  ; Exp(value)
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = fmul fast float %4174, %25
  %4176 = fmul fast float %4174, %26
  %4177 = fmul fast float %4174, %27
  %4178 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %4179 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %4180 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %4181 = call float @dx.op.unary.f32(i32 23, float %4178)  ; Log(value)
  %4182 = call float @dx.op.unary.f32(i32 23, float %4179)  ; Log(value)
  %4183 = call float @dx.op.unary.f32(i32 23, float %4180)  ; Log(value)
  %4184 = fmul fast float %4181, 4.000000e+00
  %4185 = fmul fast float %4182, 4.000000e+00
  %4186 = fmul fast float %4183, 4.000000e+00
  %4187 = call float @dx.op.unary.f32(i32 21, float %4184)  ; Exp(value)
  %4188 = call float @dx.op.unary.f32(i32 21, float %4185)  ; Exp(value)
  %4189 = call float @dx.op.unary.f32(i32 21, float %4186)  ; Exp(value)
  %4190 = fadd fast float %4188, %4187
  %4191 = fadd fast float %4190, %4189
  %4192 = fdiv fast float 1.000000e+00, %4191
  %4193 = fmul fast float %4192, %4187
  %4194 = fcmp fast ogt float %34, 0.000000e+00
  %4195 = fcmp fast ogt float %35, 0.000000e+00
  %4196 = fcmp fast ogt float %36, 0.000000e+00
  %4197 = fcmp fast olt float %34, 0.000000e+00
  %4198 = fcmp fast olt float %35, 0.000000e+00
  %4199 = fcmp fast olt float %36, 0.000000e+00
  %4200 = zext i1 %4194 to i32
  %4201 = zext i1 %4195 to i32
  %4202 = zext i1 %4196 to i32
  %4203 = zext i1 %4197 to i32
  %4204 = zext i1 %4198 to i32
  %4205 = zext i1 %4199 to i32
  %4206 = sub nsw i32 %4200, %4203
  %4207 = sub nsw i32 %4201, %4204
  %4208 = sub nsw i32 %4202, %4205
  %4209 = call float @dx.op.unary.f32(i32 83, float %4175)  ; DerivCoarseX(value)
  %4210 = call float @dx.op.unary.f32(i32 83, float %4176)  ; DerivCoarseX(value)
  %4211 = call float @dx.op.unary.f32(i32 83, float %4177)  ; DerivCoarseX(value)
  %4212 = call float @dx.op.unary.f32(i32 84, float %4175)  ; DerivCoarseY(value)
  %4213 = call float @dx.op.unary.f32(i32 84, float %4176)  ; DerivCoarseY(value)
  %4214 = call float @dx.op.unary.f32(i32 84, float %4177)  ; DerivCoarseY(value)
  %4215 = fcmp fast ole float %217, %4193
  %4216 = fmul fast float %4192, %4190
  %4217 = fcmp fast ole float %217, %4216
  %4218 = select i1 %4217, float %4177, float %4175
  %4219 = select i1 %4217, float %4175, float %4176
  %4220 = select i1 %4215, float %4176, float %4218
  %4221 = select i1 %4215, float %4177, float %4219
  %4222 = select i1 %4217, float %4211, float %4209
  %4223 = select i1 %4217, float %4209, float %4210
  %4224 = select i1 %4215, float %4210, float %4222
  %4225 = select i1 %4215, float %4211, float %4223
  %4226 = select i1 %4217, float %4214, float %4212
  %4227 = select i1 %4217, float %4212, float %4213
  %4228 = select i1 %4215, float %4213, float %4226
  %4229 = select i1 %4215, float %4214, float %4227
  %4230 = call float @dx.op.unary.f32(i32 27, float %4220)  ; Round_ni(value)
  %4231 = call float @dx.op.unary.f32(i32 27, float %4221)  ; Round_ni(value)
  %4232 = fptosi float %4230 to i32
  %4233 = fptosi float %4231 to i32
  %4234 = xor i32 %4233, %4232
  %4235 = sitofp i32 %4234 to float
  %4236 = fptosi float %4235 to i32
  %4237 = sitofp i32 %4236 to float
  %4238 = fmul fast float %4237, 0x3FE3C6EF40000000
  %4239 = frem fast float %4230, 2.560000e+02
  %4240 = frem fast float %4231, 2.560000e+02
  %4241 = fptoui float %4239 to i32
  %4242 = fptoui float %4240 to i32
  %4243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %4241, i32 %4242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.ResRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.ResRet.f32 %4243, 2
  %4247 = fadd fast float %4244, %4238
  %4248 = fadd fast float %4245, %4238
  %4249 = fadd fast float %4246, %4238
  %4250 = call float @dx.op.unary.f32(i32 22, float %4247)  ; Frc(value)
  %4251 = call float @dx.op.unary.f32(i32 22, float %4248)  ; Frc(value)
  %4252 = call float @dx.op.unary.f32(i32 22, float %4249)  ; Frc(value)
  %4253 = fmul fast float %4252, 0x401921FB60000000
  %4254 = call float @dx.op.unary.f32(i32 13, float %4253)  ; Sin(value)
  %4255 = call float @dx.op.unary.f32(i32 12, float %4253)  ; Cos(value)
  %4256 = fsub fast float -0.000000e+00, %4255
  %4257 = fmul fast float %4255, %4220
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4221, float %4257)  ; FMad(a,b,c)
  %4259 = fmul fast float %4254, %4220
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4221, float %4259)  ; FMad(a,b,c)
  %4261 = fadd fast float %4258, %4250
  %4262 = fadd fast float %4260, %4251
  %4263 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4264 = bitcast float %4263 to i32
  %4265 = icmp eq i32 %4264, 0
  br i1 %4265, label %4304, label %4266

; <label>:4266                                    ; preds = %4169
  %4267 = add i32 %4264, 0
  %4268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4268, %dx.types.Handle %64, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4224, float %4225, float undef, float %4228, float %4229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4274 = fsub fast float 1.000000e+00, %3879
  %4275 = call float @dx.op.binary.f32(i32 35, float %4274, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4276 = bitcast float %3879 to i32
  %4277 = sitofp i32 %4276 to float
  %4278 = fadd fast float %4277, 0xC1CFBF8940000000
  %4279 = fmul fast float %4273, %4278
  %4280 = fadd fast float %4279, 0x41CFBF8940000000
  %4281 = fptosi float %4280 to i32
  %4282 = bitcast i32 %4281 to float
  %4283 = bitcast float %4275 to i32
  %4284 = sitofp i32 %4283 to float
  %4285 = fadd fast float %4284, 0xC1CFBF8940000000
  %4286 = fmul fast float %4285, %4273
  %4287 = fadd fast float %4286, 0x41CFBF8940000000
  %4288 = fptosi float %4287 to i32
  %4289 = bitcast i32 %4288 to float
  %4290 = fmul fast float %4282, %4272
  %4291 = fmul fast float %4289, %4272
  %4292 = fsub fast float %4275, %4290
  %4293 = fadd fast float %4291, %4275
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = fsub fast float %4270, %4294
  %4297 = fsub fast float %4295, %4294
  %4298 = bitcast float %4297 to i32
  %4299 = sub nsw i32 2129859010, %4298
  %4300 = bitcast i32 %4299 to float
  %4301 = fmul fast float %4300, %4296
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = fcmp fast olt float %4302, 0x3F70101020000000
  br i1 %4303, label %4442, label %4304

; <label>:4304                                    ; preds = %4266, %4169
  %4305 = phi float [ %4302, %4266 ], [ %3879, %4169 ]
  %4306 = fmul fast float %4305, %4172
  %4307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.i32 %4307, 1
  %4309 = extractvalue %dx.types.CBufRet.i32 %4307, 0
  %4310 = add i32 %4309, 0
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4311, %dx.types.Handle %63, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4224, float %4225, float undef, float %4228, float %4229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4316 = extractvalue %dx.types.ResRet.f32 %4312, 3
  %4317 = and i32 %4308, 255
  %4318 = uitofp i32 %4317 to float
  %4319 = lshr i32 %4308, 8
  %4320 = and i32 %4319, 255
  %4321 = uitofp i32 %4320 to float
  %4322 = fmul fast float %4316, %4318
  %4323 = fadd fast float %4322, %4321
  %4324 = fmul fast float %4323, 0x3F70101000000000
  %4325 = fadd fast float %4324, 0xBFB99999A0000000
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4326, 0x3FF1C71C80000000
  %4328 = call float @dx.op.binary.f32(i32 36, float %4324, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4329 = fsub fast float 1.000000e+00, %4327
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = fmul fast float %4330, %4313
  %4332 = fmul fast float %4330, %4314
  %4333 = fmul fast float %4330, %4315
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = fmul fast float %4327, %4313
  %4338 = fmul fast float %4327, %4314
  %4339 = fmul fast float %4327, %4315
  %4340 = fadd fast float %4337, %4328
  %4341 = fadd fast float %4338, %4328
  %4342 = fadd fast float %4339, %4328
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.i32 %4346, 3
  %4348 = extractvalue %dx.types.CBufRet.i32 %4346, 2
  %4349 = add i32 %4348, 0
  %4350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4351 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4350, %dx.types.Handle %63, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4224, float %4225, float undef, float %4228, float %4229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.ResRet.f32 %4351, 1
  %4354 = extractvalue %dx.types.ResRet.f32 %4351, 2
  %4355 = extractvalue %dx.types.ResRet.f32 %4351, 3
  %4356 = and i32 %4347, 255
  %4357 = uitofp i32 %4356 to float
  %4358 = lshr i32 %4347, 8
  %4359 = and i32 %4358, 255
  %4360 = uitofp i32 %4359 to float
  %4361 = lshr i32 %4347, 16
  %4362 = and i32 %4361, 255
  %4363 = uitofp i32 %4362 to float
  %4364 = fmul fast float %4363, 0x3F70101000000000
  %4365 = fmul fast float %4352, %4357
  %4366 = fadd fast float %4365, %4360
  %4367 = fmul fast float %4366, 0x3F70101000000000
  %4368 = fadd fast float %4353, -5.000000e-01
  %4369 = fadd fast float %4355, -5.000000e-01
  %4370 = fmul fast float %4368, %4364
  %4371 = fmul fast float %4369, %4364
  %4372 = fadd fast float %4370, 5.000000e-01
  %4373 = fadd fast float %4371, 5.000000e-01
  %4374 = fmul fast float %4372, 2.000000e+00
  %4375 = fadd fast float %4374, -1.000000e+00
  %4376 = fmul fast float %4373, 2.000000e+00
  %4377 = fadd fast float %4376, -1.000000e+00
  %4378 = fadd fast float %4375, %4377
  %4379 = fmul fast float %4378, 5.000000e-01
  %4380 = fsub fast float %4375, %4377
  %4381 = fmul fast float %4380, 5.000000e-01
  %4382 = call float @dx.op.unary.f32(i32 6, float %4379)  ; FAbs(value)
  %4383 = fsub fast float 1.000000e+00, %4382
  %4384 = call float @dx.op.unary.f32(i32 6, float %4381)  ; FAbs(value)
  %4385 = fsub fast float %4383, %4384
  %4386 = call float @dx.op.dot3.f32(i32 55, float %4379, float %4381, float %4385, float %4379, float %4381, float %4385)  ; Dot3(ax,ay,az,bx,by,bz)
  %4387 = call float @dx.op.unary.f32(i32 25, float %4386)  ; Rsqrt(value)
  %4388 = fmul fast float %4379, %4387
  %4389 = fmul fast float %4381, %4387
  %4390 = select i1 %4217, i32 %4207, i32 %4208
  %4391 = select i1 %4215, i32 %4206, i32 %4390
  %4392 = sitofp i32 %4391 to float
  %4393 = fmul fast float %4385, %4392
  %4394 = fmul fast float %4393, %4387
  %4395 = select i1 %4217, float %4394, float %4389
  %4396 = select i1 %4217, float %4389, float %4394
  %4397 = select i1 %4215, float %4394, float %4388
  %4398 = select i1 %4215, float %4389, float %4395
  %4399 = select i1 %4215, float %4388, float %4396
  %4400 = fsub fast float %4334, %4158
  %4401 = fsub fast float %4335, %4159
  %4402 = fsub fast float %4336, %4160
  %4403 = fmul fast float %4400, %4306
  %4404 = fmul fast float %4401, %4306
  %4405 = fmul fast float %4402, %4306
  %4406 = fadd fast float %4403, %4158
  %4407 = fadd fast float %4404, %4159
  %4408 = fadd fast float %4405, %4160
  %4409 = fsub fast float %4343, %4161
  %4410 = fsub fast float %4344, %4162
  %4411 = fsub fast float %4345, %4163
  %4412 = fmul fast float %4409, %4306
  %4413 = fmul fast float %4410, %4306
  %4414 = fmul fast float %4411, %4306
  %4415 = fadd fast float %4412, %4161
  %4416 = fadd fast float %4413, %4162
  %4417 = fadd fast float %4414, %4163
  %4418 = fadd fast float %4397, %4164
  %4419 = fadd fast float %4398, %4165
  %4420 = fadd fast float %4399, %4166
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4419, float %4420, float %4418, float %4419, float %4420)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = call float @dx.op.unary.f32(i32 25, float %4421)  ; Rsqrt(value)
  %4423 = fmul fast float %4418, %4422
  %4424 = fmul fast float %4419, %4422
  %4425 = fmul fast float %4420, %4422
  %4426 = fsub fast float %4423, %4164
  %4427 = fsub fast float %4424, %4165
  %4428 = fsub fast float %4425, %4166
  %4429 = fmul fast float %4426, %4306
  %4430 = fmul fast float %4427, %4306
  %4431 = fmul fast float %4428, %4306
  %4432 = fadd fast float %4429, %4164
  %4433 = fadd fast float %4430, %4165
  %4434 = fadd fast float %4431, %4166
  %4435 = call float @dx.op.binary.f32(i32 36, float %4168, float %4354)  ; FMin(a,b)
  %4436 = fsub fast float %4435, %4168
  %4437 = fmul fast float %4436, %4306
  %4438 = fadd fast float %4437, %4168
  %4439 = fsub fast float %4367, %4167
  %4440 = fmul fast float %4439, %4306
  %4441 = fadd fast float %4440, %4167
  br label %4442

; <label>:4442                                    ; preds = %4304, %4266, %4157, %3873
  %4443 = phi float [ %4406, %4304 ], [ %4158, %4266 ], [ %4158, %4157 ], [ %3773, %3873 ]
  %4444 = phi float [ %4407, %4304 ], [ %4159, %4266 ], [ %4159, %4157 ], [ %3774, %3873 ]
  %4445 = phi float [ %4408, %4304 ], [ %4160, %4266 ], [ %4160, %4157 ], [ %3775, %3873 ]
  %4446 = phi float [ %4415, %4304 ], [ %4161, %4266 ], [ %4161, %4157 ], [ %3758, %3873 ]
  %4447 = phi float [ %4416, %4304 ], [ %4162, %4266 ], [ %4162, %4157 ], [ %3759, %3873 ]
  %4448 = phi float [ %4417, %4304 ], [ %4163, %4266 ], [ %4163, %4157 ], [ %3760, %3873 ]
  %4449 = phi float [ %4432, %4304 ], [ %4164, %4266 ], [ %4164, %4157 ], [ %3728, %3873 ]
  %4450 = phi float [ %4433, %4304 ], [ %4165, %4266 ], [ %4165, %4157 ], [ %3729, %3873 ]
  %4451 = phi float [ %4434, %4304 ], [ %4166, %4266 ], [ %4166, %4157 ], [ %3730, %3873 ]
  %4452 = phi float [ %4441, %4304 ], [ %4167, %4266 ], [ %4167, %4157 ], [ %3761, %3873 ]
  %4453 = phi float [ %4438, %4304 ], [ %4168, %4266 ], [ %4168, %4157 ], [ %3734, %3873 ]
  %4454 = fcmp fast une float %3877, 0.000000e+00
  %4455 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  br i1 %4454, label %4464, label %4457

; <label>:4457                                    ; preds = %4442
  %4458 = fmul fast float %4456, %154
  %4459 = fmul fast float %4456, %155
  %4460 = fmul fast float %4456, %156
  %4461 = fsub fast float -0.000000e+00, %4458
  %4462 = fsub fast float -0.000000e+00, %4459
  %4463 = fsub fast float -0.000000e+00, %4460
  br label %4631

; <label>:4464                                    ; preds = %4442
  %4465 = fmul fast float %154, %4456
  %4466 = fsub fast float -0.000000e+00, %4465
  %4467 = fmul fast float %155, %4456
  %4468 = fsub fast float -0.000000e+00, %4467
  %4469 = fmul fast float %156, %4456
  %4470 = fsub fast float -0.000000e+00, %4469
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4466, float %4468, float %4470, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = fmul fast float %3877, 2.500000e+00
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fmul fast float %3877, 0x4013FFFFE0000000
  %4475 = fadd fast float %4474, 0xBFFFFFFFE0000000
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %3877, 0x4004000020000000
  %4478 = fadd fast float %4477, 0xBFF8000040000000
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %3740, 1.000000e+01
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, 2.000000e+00
  %4483 = fsub fast float 3.000000e+00, %4482
  %4484 = fmul fast float %4481, %4481
  %4485 = fmul fast float %4484, %4483
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = fsub fast float 0x3FE3333340000000, %4452
  %4488 = fmul fast float %4487, 0x400AAAAAA0000000
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fmul fast float %4486, %4489
  %4491 = fmul fast float %4443, 0x3FEA2B8620000000
  %4492 = fmul fast float %4444, 0x3FEA2B8620000000
  %4493 = fmul fast float %4445, 0x3FEA2B8620000000
  %4494 = fadd fast float %4491, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4443
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = fadd fast float %4492, 0x3FC81DFBA0000000
  %4498 = fmul fast float %4497, %4444
  %4499 = fadd fast float %4498, 0x3F910E6020000000
  %4500 = fadd fast float %4493, 0x3FC81DFBA0000000
  %4501 = fmul fast float %4500, %4445
  %4502 = fadd fast float %4501, 0x3F910E6020000000
  %4503 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = fsub fast float %4503, %4443
  %4507 = fsub fast float %4504, %4444
  %4508 = fsub fast float %4505, %4445
  %4509 = fmul fast float %4506, %4473
  %4510 = fmul fast float %4509, %4490
  %4511 = fmul fast float %4507, %4473
  %4512 = fmul fast float %4511, %4490
  %4513 = fmul fast float %4508, %4473
  %4514 = fmul fast float %4513, %4490
  %4515 = fadd fast float %4510, %4443
  %4516 = fadd fast float %4512, %4444
  %4517 = fadd fast float %4514, %4445
  %4518 = fmul fast float %4453, %4453
  %4519 = fmul fast float %4518, %4518
  %4520 = fadd fast float %4476, 1.000000e+00
  %4521 = fsub fast float %4520, %4490
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fsub fast float 1.000000e+00, %4519
  %4526 = call float @dx.op.binary.f32(i32 36, float %4522, float %4525)  ; FMin(a,b)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4526, float %4527)  ; FMax(a,b)
  %4529 = fadd fast float %4524, 0xBFE4CCCCC0000000
  %4530 = fmul fast float %4529, 0x4006DB6DA0000000
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4531, 2.000000e+00
  %4533 = fsub fast float 3.000000e+00, %4532
  %4534 = bitcast float %4446 to i32
  %4535 = ashr i32 %4534, 1
  %4536 = add nsw i32 %4535, 532487669
  %4537 = bitcast i32 %4536 to float
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = bitcast float %4538 to i32
  %4540 = sub nsw i32 2129859010, %4539
  %4541 = bitcast i32 %4540 to float
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = bitcast float %4447 to i32
  %4544 = ashr i32 %4543, 1
  %4545 = add nsw i32 %4544, 532487669
  %4546 = bitcast i32 %4545 to float
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = bitcast float %4448 to i32
  %4553 = ashr i32 %4552, 1
  %4554 = add nsw i32 %4553, 532487669
  %4555 = bitcast i32 %4554 to float
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, 2.000000e+00
  %4561 = fsub fast float 0x4002A9FBE0000000, %4542
  %4562 = fadd fast float %4542, 0x3FD54FDF00000000
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, %4561
  %4567 = fmul fast float %4566, %4566
  %4568 = fsub fast float 0x4002A9FBE0000000, %4551
  %4569 = fadd fast float %4551, 0x3FD54FDF00000000
  %4570 = bitcast float %4569 to i32
  %4571 = sub nsw i32 2129859010, %4570
  %4572 = bitcast i32 %4571 to float
  %4573 = fmul fast float %4572, %4568
  %4574 = fmul fast float %4573, %4573
  %4575 = fsub fast float 0x4002A9FBE0000000, %4560
  %4576 = fadd fast float %4560, 0x3FD54FDF00000000
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4579, %4575
  %4581 = fmul fast float %4580, %4580
  %4582 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4567)  ; FMax(a,b)
  %4583 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4574)  ; FMax(a,b)
  %4584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4581)  ; FMax(a,b)
  %4585 = fsub fast float 1.000000e+00, %4471
  %4586 = fadd fast float %4585, %4486
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fsub fast float 1.000000e+00, %3858
  %4589 = fmul fast float %4528, %4588
  %4590 = fmul fast float %4531, %4531
  %4591 = fmul fast float %4590, %4589
  %4592 = fmul fast float %4591, %4533
  %4593 = fmul fast float %4588, 0xBFE99999A0000000
  %4594 = fmul fast float %4593, %4473
  %4595 = fmul fast float %4594, %4490
  %4596 = fadd fast float %4595, 1.000000e+00
  %4597 = fadd fast float %4452, -1.000000e+00
  %4598 = fmul fast float %4596, %4597
  %4599 = fadd fast float %4598, 1.000000e+00
  %4600 = fsub fast float %4582, %4446
  %4601 = fsub fast float %4583, %4447
  %4602 = fsub fast float %4584, %4448
  %4603 = fmul fast float %4592, %4600
  %4604 = fmul fast float %4592, %4601
  %4605 = fmul fast float %4592, %4602
  %4606 = fadd fast float %4603, %4446
  %4607 = fadd fast float %4604, %4447
  %4608 = fadd fast float %4605, %4448
  %4609 = fsub fast float %74, %4449
  %4610 = fsub fast float %75, %4450
  %4611 = fsub fast float %76, %4451
  %4612 = fmul fast float %4592, %4609
  %4613 = fmul fast float %4592, %4610
  %4614 = fmul fast float %4592, %4611
  %4615 = fadd fast float %4612, %4449
  %4616 = fadd fast float %4613, %4450
  %4617 = fadd fast float %4614, %4451
  %4618 = fmul fast float %4592, %4587
  %4619 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = fmul fast float %4618, %4620
  %4622 = fadd fast float %4621, %4619
  %4623 = fsub fast float 1.000000e+00, %4453
  %4624 = fmul fast float %4592, %4623
  %4625 = fadd fast float %4624, %4453
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4615, %4627
  %4629 = fmul fast float %4616, %4627
  %4630 = fmul fast float %4617, %4627
  br label %4631

; <label>:4631                                    ; preds = %4464, %4457
  %4632 = phi float [ %4463, %4457 ], [ %4470, %4464 ]
  %4633 = phi float [ %4462, %4457 ], [ %4468, %4464 ]
  %4634 = phi float [ %4461, %4457 ], [ %4466, %4464 ]
  %4635 = phi float [ %4460, %4457 ], [ %4469, %4464 ]
  %4636 = phi float [ %4459, %4457 ], [ %4467, %4464 ]
  %4637 = phi float [ %4458, %4457 ], [ %4465, %4464 ]
  %4638 = phi float [ %4443, %4457 ], [ %4515, %4464 ]
  %4639 = phi float [ %4444, %4457 ], [ %4516, %4464 ]
  %4640 = phi float [ %4445, %4457 ], [ %4517, %4464 ]
  %4641 = phi float [ %4446, %4457 ], [ %4606, %4464 ]
  %4642 = phi float [ %4447, %4457 ], [ %4607, %4464 ]
  %4643 = phi float [ %4448, %4457 ], [ %4608, %4464 ]
  %4644 = phi float [ %4449, %4457 ], [ %4628, %4464 ]
  %4645 = phi float [ %4450, %4457 ], [ %4629, %4464 ]
  %4646 = phi float [ %4451, %4457 ], [ %4630, %4464 ]
  %4647 = phi float [ %4452, %4457 ], [ %4622, %4464 ]
  %4648 = phi float [ %4453, %4457 ], [ %4625, %4464 ]
  %4649 = select i1 %206, float 0.000000e+00, float %4643
  %4650 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4634, float %4633, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4636, float %4635, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = fmul fast float %4652, 2.000000e+00
  %4654 = fmul fast float %4653, %4644
  %4655 = fmul fast float %4653, %4645
  %4656 = fmul fast float %4653, %4646
  %4657 = fsub fast float %4637, %4654
  %4658 = fsub fast float %4636, %4655
  %4659 = fsub fast float %4635, %4656
  %4660 = call float @dx.op.binary.f32(i32 36, float %4648, float 1.000000e+00)  ; FMin(a,b)
  %4661 = fsub fast float 1.000000e+00, %4648
  %4662 = bitcast float %4661 to i32
  %4663 = sub nsw i32 2129859010, %4662
  %4664 = bitcast i32 %4663 to float
  %4665 = fsub fast float 1.000000e+00, %44
  %4666 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4666, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4668 = fdiv fast float %4665, %4667
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fmul fast float %4670, 5.000000e-01
  %4672 = fadd fast float %4671, 5.000000e-01
  %4673 = fmul fast float %4672, %44
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4675, %4668
  %4677 = fadd fast float %4673, %4676
  %4678 = fsub fast float 5.000000e-01, %4671
  %4679 = fmul fast float %4678, %4638
  %4680 = fmul fast float %4678, %4639
  %4681 = fmul fast float %4678, %4640
  %4682 = fadd fast float %4677, %4679
  %4683 = fadd fast float %4677, %4680
  %4684 = fadd fast float %4677, %4681
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4686, 5.000000e-01
  %4688 = fadd fast float %4687, 5.000000e-01
  %4689 = fmul fast float %4688, %44
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fmul fast float %4691, %4668
  %4693 = fadd fast float %4689, %4692
  %4694 = fsub fast float 5.000000e-01, %4687
  %4695 = fmul fast float %4694, %4638
  %4696 = fmul fast float %4694, %4639
  %4697 = fmul fast float %4694, %4640
  %4698 = fadd fast float %4693, %4695
  %4699 = fadd fast float %4693, %4696
  %4700 = fadd fast float %4693, %4697
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = call float @dx.op.binary.f32(i32 36, float %4638, float %4702)  ; FMin(a,b)
  %4704 = fsub fast float 1.000000e+00, %4660
  %4705 = fmul fast float %4703, %4704
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = bitcast float %4706 to i32
  %4708 = sub nsw i32 2129859010, %4707
  %4709 = bitcast i32 %4708 to float
  %4710 = call float @dx.op.binary.f32(i32 36, float %4639, float %4702)  ; FMin(a,b)
  %4711 = fmul fast float %4710, %4704
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = bitcast float %4712 to i32
  %4714 = sub nsw i32 2129859010, %4713
  %4715 = bitcast i32 %4714 to float
  %4716 = call float @dx.op.binary.f32(i32 36, float %4640, float %4702)  ; FMin(a,b)
  %4717 = fmul fast float %4716, %4704
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = fmul fast float %4660, %45
  %4723 = fmul fast float %4722, %4682
  %4724 = fmul fast float %4723, %4709
  %4725 = fmul fast float %4660, %46
  %4726 = fmul fast float %4725, %4683
  %4727 = fmul fast float %4726, %4715
  %4728 = fmul fast float %4660, %47
  %4729 = fmul fast float %4728, %4684
  %4730 = fmul fast float %4729, %4721
  %4731 = call float @dx.op.binary.f32(i32 36, float %4641, float %4702)  ; FMin(a,b)
  %4732 = fmul fast float %4731, %4704
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = bitcast float %4733 to i32
  %4735 = sub nsw i32 2129859010, %4734
  %4736 = bitcast i32 %4735 to float
  %4737 = call float @dx.op.binary.f32(i32 36, float %4642, float %4702)  ; FMin(a,b)
  %4738 = fmul fast float %4737, %4704
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = bitcast float %4739 to i32
  %4741 = sub nsw i32 2129859010, %4740
  %4742 = bitcast i32 %4741 to float
  %4743 = call float @dx.op.binary.f32(i32 36, float %4649, float %4702)  ; FMin(a,b)
  %4744 = fmul fast float %4743, %4704
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = bitcast float %4745 to i32
  %4747 = sub nsw i32 2129859010, %4746
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4722, %4698
  %4750 = fmul fast float %4749, %4736
  %4751 = fmul fast float %4725, %4699
  %4752 = fmul fast float %4751, %4742
  %4753 = fmul fast float %4728, %4700
  %4754 = fmul fast float %4753, %4748
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4727, float %4730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = select i1 %206, float 0.000000e+00, float %4724
  %4757 = select i1 %206, float %4755, float %4727
  %4758 = select i1 %206, float 0.000000e+00, float %4730
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4752, float %4754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = select i1 %206, float 0.000000e+00, float %4750
  %4761 = select i1 %206, float %4759, float %4752
  %4762 = select i1 %206, float 0.000000e+00, float %4754
  %4763 = fmul fast float %4651, 9.843750e-01
  %4764 = fmul fast float %4647, 9.843750e-01
  %4765 = fadd fast float %4763, 7.812500e-03
  %4766 = fadd fast float %4764, 7.812500e-03
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %4765, float %4766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4770 = fmul fast float %4768, %4641
  %4771 = fmul fast float %4768, %4642
  %4772 = fmul fast float %4768, %4649
  %4773 = fadd fast float %4770, %4769
  %4774 = fadd fast float %4771, %4769
  %4775 = fadd fast float %4772, %4769
  %4776 = fcmp fast ogt float %3735, 0.000000e+00
  br i1 %4776, label %4777, label %4803

; <label>:4777                                    ; preds = %4631
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3735, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.ResRet.f32 %4778, 2
  %4782 = fadd fast float %4779, -5.000000e-01
  %4783 = fadd fast float %4780, -5.000000e-01
  %4784 = fadd fast float %4781, -5.000000e-01
  %4785 = fsub fast float 1.000000e+00, %4641
  %4786 = fsub fast float 1.000000e+00, %4642
  %4787 = fsub fast float 1.000000e+00, %4649
  %4788 = fmul fast float %4641, 4.000000e+00
  %4789 = fmul fast float %4788, %4785
  %4790 = fmul fast float %4789, %4782
  %4791 = fmul fast float %4642, 4.000000e+00
  %4792 = fmul fast float %4791, %4786
  %4793 = fmul fast float %4792, %4783
  %4794 = fmul fast float %4649, 4.000000e+00
  %4795 = fmul fast float %4794, %4787
  %4796 = fmul fast float %4795, %4784
  %4797 = fadd fast float %4790, %4773
  %4798 = fadd fast float %4793, %4774
  %4799 = fadd fast float %4796, %4775
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  br label %4803

; <label>:4803                                    ; preds = %4777, %4631
  %4804 = phi float [ %4800, %4777 ], [ %4773, %4631 ]
  %4805 = phi float [ %4801, %4777 ], [ %4774, %4631 ]
  %4806 = phi float [ %4802, %4777 ], [ %4775, %4631 ]
  %4807 = call float @dx.op.binary.f32(i32 35, float %4805, float %4806)  ; FMax(a,b)
  %4808 = call float @dx.op.binary.f32(i32 35, float %4804, float %4807)  ; FMax(a,b)
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = fmul fast float %4809, %4756
  %4811 = fmul fast float %4809, %4757
  %4812 = fmul fast float %4809, %4758
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = fcmp fast ogt float %4813, 0x3E7FF19E20000000
  %4815 = fdiv fast float 1.000000e+00, %4813
  %4816 = select i1 %4814, float %4815, float 0.000000e+00
  %4817 = fmul fast float %4816, %4638
  %4818 = fmul fast float %4816, %4639
  %4819 = fmul fast float %4816, %4640
  %4820 = fadd fast float %4817, -1.000000e+00
  %4821 = fadd fast float %4818, -1.000000e+00
  %4822 = fadd fast float %4819, -1.000000e+00
  %4823 = fmul fast float %4820, 5.000000e-01
  %4824 = fmul fast float %4821, 5.000000e-01
  %4825 = fmul fast float %4822, 5.000000e-01
  %4826 = fadd fast float %4823, 1.000000e+00
  %4827 = fadd fast float %4824, 1.000000e+00
  %4828 = fadd fast float %4825, 1.000000e+00
  %4829 = fmul fast float %4804, %4760
  %4830 = fmul fast float %4805, %4761
  %4831 = fmul fast float %4806, %4762
  %4832 = fsub fast float 1.000000e+00, %4651
  %4833 = bitcast float %4832 to i32
  %4834 = sitofp i32 %4833 to float
  %4835 = fmul fast float %4834, 5.000000e+00
  %4836 = fadd fast float %4835, 0xC1EFBF8940000000
  %4837 = fptosi float %4836 to i32
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, %3736
  %4840 = fmul fast float %4756, %4839
  %4841 = fmul fast float %4840, %4809
  %4842 = fmul fast float %4841, %4826
  %4843 = fmul fast float %4757, %4839
  %4844 = fmul fast float %4843, %4809
  %4845 = fmul fast float %4844, %4827
  %4846 = fmul fast float %4758, %4839
  %4847 = fmul fast float %4846, %4809
  %4848 = fmul fast float %4847, %4828
  %4849 = fmul fast float %4810, %3732
  %4850 = fmul fast float %4811, %3732
  %4851 = fmul fast float %4812, %3732
  %4852 = fadd fast float %4829, %3725
  %4853 = fadd fast float %4852, %4842
  %4854 = fmul fast float %4853, %3732
  %4855 = fadd fast float %4830, %3726
  %4856 = fadd fast float %4855, %4845
  %4857 = fmul fast float %4856, %3732
  %4858 = fadd fast float %4831, %3727
  %4859 = fadd fast float %4858, %4848
  %4860 = fmul fast float %4859, %3732
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4863 = fcmp fast oeq float %4862, 0.000000e+00
  br i1 %4863, label %5091, label %4864

; <label>:4864                                    ; preds = %4803
  %4865 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4866 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4867 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = select i1 %206, float %4873, float %4869
  %4877 = select i1 %206, float %4875, float %4870
  %4878 = select i1 %206, float %4874, float %4871
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4881 = fcmp fast une float %4880, 0.000000e+00
  br i1 %4881, label %4882, label %4899

; <label>:4882                                    ; preds = %4864
  %4883 = fptoui float %67 to i32
  %4884 = fptoui float %68 to i32
  %4885 = lshr i32 %4883, 4
  %4886 = lshr i32 %4884, 4
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = fptoui float %4888 to i32
  %4890 = add i32 %4889, 15
  %4891 = lshr i32 %4890, 4
  %4892 = mul i32 %4891, %4886
  %4893 = add i32 %4892, %4885
  %4894 = shl i32 %4893, 3
  %4895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4894, i32 undef)  ; BufferLoad(srv,index,wot)
  %4896 = extractvalue %dx.types.ResRet.i32 %4895, 0
  %4897 = and i32 %4896, -268435456
  %4898 = icmp eq i32 %4897, -1342177280
  br i1 %4898, label %4909, label %4899

; <label>:4899                                    ; preds = %4882, %4864
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 2
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 3
  %4903 = fmul fast float %4901, %67
  %4904 = fmul fast float %4902, %68
  %4905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %19, float %4903, float %4904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.ResRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.ResRet.f32 %4905, 2
  br label %4909

; <label>:4909                                    ; preds = %4899, %4882
  %4910 = phi float [ %4906, %4899 ], [ 0.000000e+00, %4882 ]
  %4911 = phi float [ %4907, %4899 ], [ 0.000000e+00, %4882 ]
  %4912 = phi float [ %4908, %4899 ], [ 0.000000e+00, %4882 ]
  %4913 = call float @dx.op.binary.f32(i32 36, float %4911, float %4912)  ; FMin(a,b)
  %4914 = call float @dx.op.binary.f32(i32 36, float %4910, float %4913)  ; FMin(a,b)
  %4915 = fcmp fast ogt float %4914, 0.000000e+00
  br i1 %4915, label %4916, label %5091, !dx.controlflow.hints !63

; <label>:4916                                    ; preds = %4909
  %4917 = fmul fast float %4910, %4876
  %4918 = fmul fast float %4911, %4877
  %4919 = fmul fast float %4912, %4878
  %4920 = fsub fast float %4865, %4637
  %4921 = fsub fast float %4866, %4636
  %4922 = fsub fast float %4867, %4635
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = call float @dx.op.unary.f32(i32 25, float %4923)  ; Rsqrt(value)
  %4925 = fmul fast float %4924, %4920
  %4926 = fmul fast float %4924, %4921
  %4927 = fmul fast float %4924, %4922
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4633, float %4632, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4931 = fmul fast float %4930, %4930
  %4932 = fmul fast float %4931, %4664
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %4933, %4930
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fmul fast float %4935, %4935
  %4937 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4938 = fsub fast float 1.000000e+00, %4647
  %4939 = call float @dx.op.binary.f32(i32 35, float %4938, float 0x3F847AE140000000)  ; FMax(a,b)
  %4940 = fmul fast float %4939, %4939
  %4941 = fmul fast float %4940, %4940
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4651, %4651
  %4944 = fmul fast float %4943, %4942
  %4945 = fadd fast float %4944, %4941
  %4946 = bitcast float %4945 to i32
  %4947 = ashr i32 %4946, 1
  %4948 = add nsw i32 %4947, 532487669
  %4949 = bitcast i32 %4948 to float
  %4950 = fadd fast float %4949, %4651
  %4951 = fmul fast float %4941, %4936
  %4952 = fsub fast float 1.000000e+00, %4936
  %4953 = fadd fast float %4952, %4951
  %4954 = fmul fast float %4937, %4937
  %4955 = fmul fast float %4954, %4942
  %4956 = fadd fast float %4955, %4941
  %4957 = bitcast float %4956 to i32
  %4958 = ashr i32 %4957, 1
  %4959 = add nsw i32 %4958, 532487669
  %4960 = bitcast i32 %4959 to float
  %4961 = fadd fast float %4960, %4937
  %4962 = fmul fast float %4953, %4953
  %4963 = fmul fast float %4962, %4950
  %4964 = fmul fast float %4963, %4961
  %4965 = fdiv fast float 0x3FF0A00000000000, %4964
  %4966 = fmul fast float %4965, %4941
  %4967 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = bitcast float %4968 to i32
  %4970 = sitofp i32 %4969 to float
  %4971 = fmul fast float %4970, 5.000000e+00
  %4972 = fadd fast float %4971, 0xC1EFBF8940000000
  %4973 = fptosi float %4972 to i32
  %4974 = bitcast i32 %4973 to float
  %4975 = fsub fast float 1.000000e+00, %4641
  %4976 = fsub fast float 1.000000e+00, %4642
  %4977 = fsub fast float 1.000000e+00, %4649
  %4978 = fmul fast float %4974, %4975
  %4979 = fmul fast float %4974, %4976
  %4980 = fmul fast float %4974, %4977
  %4981 = fadd fast float %4978, %4641
  %4982 = fadd fast float %4979, %4642
  %4983 = fadd fast float %4980, %4649
  br i1 %4776, label %4984, label %5007

; <label>:4984                                    ; preds = %4916
  %4985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3735, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.ResRet.f32 %4985, 1
  %4988 = extractvalue %dx.types.ResRet.f32 %4985, 2
  %4989 = fadd fast float %4986, -5.000000e-01
  %4990 = fadd fast float %4987, -5.000000e-01
  %4991 = fadd fast float %4988, -5.000000e-01
  %4992 = fmul fast float %4641, 4.000000e+00
  %4993 = fmul fast float %4992, %4975
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4642, 4.000000e+00
  %4996 = fmul fast float %4995, %4976
  %4997 = fmul fast float %4996, %4990
  %4998 = fmul fast float %4649, 4.000000e+00
  %4999 = fmul fast float %4998, %4977
  %5000 = fmul fast float %4999, %4991
  %5001 = fadd fast float %4994, %4981
  %5002 = fadd fast float %4997, %4982
  %5003 = fadd fast float %5000, %4983
  %5004 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5005 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  br label %5007

; <label>:5007                                    ; preds = %4984, %4916
  %5008 = phi float [ %5004, %4984 ], [ %4981, %4916 ]
  %5009 = phi float [ %5005, %4984 ], [ %4982, %4916 ]
  %5010 = phi float [ %5006, %4984 ], [ %4983, %4916 ]
  %5011 = fmul fast float %4928, 9.843750e-01
  %5012 = fadd fast float %5011, 7.812500e-03
  %5013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %5012, float %4766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5014 = extractvalue %dx.types.ResRet.f32 %5013, 2
  %5015 = extractvalue %dx.types.ResRet.f32 %5013, 3
  %5016 = fmul fast float %5014, %4641
  %5017 = fmul fast float %5014, %4642
  %5018 = fmul fast float %5014, %4649
  %5019 = fadd fast float %5016, %5015
  %5020 = fadd fast float %5017, %5015
  %5021 = fadd fast float %5018, %5015
  br i1 %4776, label %5022, label %5045

; <label>:5022                                    ; preds = %5007
  %5023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %3735, float %4928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = fadd fast float %5024, -5.000000e-01
  %5028 = fadd fast float %5025, -5.000000e-01
  %5029 = fadd fast float %5026, -5.000000e-01
  %5030 = fmul fast float %4641, 4.000000e+00
  %5031 = fmul fast float %5030, %4975
  %5032 = fmul fast float %5031, %5027
  %5033 = fmul fast float %4642, 4.000000e+00
  %5034 = fmul fast float %5033, %4976
  %5035 = fmul fast float %5034, %5028
  %5036 = fmul fast float %4649, 4.000000e+00
  %5037 = fmul fast float %5036, %4977
  %5038 = fmul fast float %5037, %5029
  %5039 = fadd fast float %5032, %5019
  %5040 = fadd fast float %5035, %5020
  %5041 = fadd fast float %5038, %5021
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  br label %5045

; <label>:5045                                    ; preds = %5022, %5007
  %5046 = phi float [ %5042, %5022 ], [ %5019, %5007 ]
  %5047 = phi float [ %5043, %5022 ], [ %5020, %5007 ]
  %5048 = phi float [ %5044, %5022 ], [ %5021, %5007 ]
  %5049 = call float @dx.op.binary.f32(i32 35, float %5047, float %5048)  ; FMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 35, float %5046, float %5049)  ; FMax(a,b)
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = fmul fast float %5008, %4966
  %5053 = fmul fast float %5009, %4966
  %5054 = fmul fast float %5010, %4966
  %5055 = fsub fast float 1.000000e+00, %4929
  %5056 = bitcast float %5055 to i32
  %5057 = sitofp i32 %5056 to float
  %5058 = fmul fast float %5057, 5.000000e+00
  %5059 = fadd fast float %5058, 0xC1EFBF8940000000
  %5060 = fptosi float %5059 to i32
  %5061 = bitcast i32 %5060 to float
  %5062 = fmul fast float %5061, %3736
  %5063 = fmul fast float %5051, %5062
  %5064 = fmul fast float %5063, %4826
  %5065 = fmul fast float %5063, %4827
  %5066 = fmul fast float %5063, %4828
  %5067 = fadd fast float %5064, %5052
  %5068 = fadd fast float %5065, %5053
  %5069 = fadd fast float %5066, %5054
  %5070 = fmul fast float %4934, %4917
  %5071 = fmul fast float %5070, %5051
  %5072 = fmul fast float %4934, %4918
  %5073 = fmul fast float %5072, %5051
  %5074 = fmul fast float %4934, %4919
  %5075 = fmul fast float %5074, %5051
  %5076 = fmul fast float %5070, %5067
  %5077 = fmul fast float %5072, %5068
  %5078 = fmul fast float %5074, %5069
  %5079 = fadd fast float %5071, %4810
  %5080 = fmul fast float %5079, %3732
  %5081 = fadd fast float %5073, %4811
  %5082 = fmul fast float %5081, %3732
  %5083 = fadd fast float %5075, %4812
  %5084 = fmul fast float %5083, %3732
  %5085 = fadd fast float %5076, %4853
  %5086 = fmul fast float %5085, %3732
  %5087 = fadd fast float %5077, %4856
  %5088 = fmul fast float %5087, %3732
  %5089 = fadd fast float %5078, %4859
  %5090 = fmul fast float %5089, %3732
  br label %5091

; <label>:5091                                    ; preds = %5045, %4909, %4803
  %5092 = phi float [ %4854, %4803 ], [ %4854, %4909 ], [ %5086, %5045 ]
  %5093 = phi float [ %4857, %4803 ], [ %4857, %4909 ], [ %5088, %5045 ]
  %5094 = phi float [ %4860, %4803 ], [ %4860, %4909 ], [ %5090, %5045 ]
  %5095 = phi float [ %4849, %4803 ], [ %4849, %4909 ], [ %5080, %5045 ]
  %5096 = phi float [ %4850, %4803 ], [ %4850, %4909 ], [ %5082, %5045 ]
  %5097 = phi float [ %4851, %4803 ], [ %4851, %4909 ], [ %5084, %5045 ]
  %5098 = call float @dx.op.unary.f32(i32 24, float %4638)  ; Sqrt(value)
  %5099 = call float @dx.op.unary.f32(i32 24, float %4639)  ; Sqrt(value)
  %5100 = call float @dx.op.unary.f32(i32 24, float %4640)  ; Sqrt(value)
  %5101 = fmul fast float %5098, %5095
  %5102 = fmul fast float %5099, %5096
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 0
  br i1 %206, label %5105, label %5125

; <label>:5105                                    ; preds = %5091
  %5106 = fadd fast float %5097, %3738
  %5107 = fmul fast float %5106, %3739
  %5108 = fsub fast float 1.000000e+00, %3739
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5112 = fmul fast float %5111, %5109
  %5113 = fadd fast float %5112, %5107
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = fmul fast float %5115, %4832
  %5117 = fsub fast float %5113, %5116
  %5118 = fadd fast float %5102, %5101
  %5119 = fmul fast float %5104, %5118
  %5120 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5121 = fsub fast float %5117, %5120
  %5122 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5123 = fmul fast float %5121, %5122
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  br label %5141

; <label>:5125                                    ; preds = %5091
  %5126 = fmul fast float %5100, %5097
  %5127 = fmul fast float %5104, %5101
  %5128 = fmul fast float %5104, %5102
  %5129 = fmul fast float %5126, %5104
  %5130 = add i32 %22, 356
  %5131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5130, i32 undef)  ; BufferLoad(srv,index,wot)
  %5132 = extractvalue %dx.types.ResRet.i32 %5131, 0
  %5133 = and i32 %5132, 32
  %5134 = icmp eq i32 %5133, 0
  br i1 %5134, label %5141, label %5135

; <label>:5135                                    ; preds = %5125
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = fmul fast float %5137, 0x3FE99999A0000000
  %5139 = fadd fast float %5137, %5127
  %5140 = fadd fast float %5138, %5129
  br label %5141

; <label>:5141                                    ; preds = %5135, %5125, %5105
  %5142 = phi float [ %5119, %5105 ], [ %5139, %5135 ], [ %5127, %5125 ]
  %5143 = phi float [ %5124, %5105 ], [ %5128, %5135 ], [ %5128, %5125 ]
  %5144 = phi float [ 1.000000e+00, %5105 ], [ %5140, %5135 ], [ %5129, %5125 ]
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = fmul fast float %5146, %5093
  %5148 = fmul fast float %5146, %5094
  %5149 = fadd fast float %5093, %5092
  %5150 = select i1 %206, float %5149, float %5092
  %5151 = fmul float %5150, %5146
  %5152 = select i1 %206, float 0.000000e+00, float %5147
  %5153 = select i1 %206, float 0.000000e+00, float %5148
  %5154 = fmul fast float %5142, %5098
  %5155 = fmul fast float %5143, %5099
  %5156 = fmul fast float %5144, %5100
  %5157 = fadd fast float %5151, %5154
  %5158 = fadd fast float %5152, %5155
  %5159 = fadd fast float %5153, %5156
  %5160 = select i1 %206, float %5143, float %5158
  %5161 = select i1 %206, float %5144, float %5159
  %5162 = call float @dx.op.binary.f32(i32 36, float %5157, float 3.225500e+04)  ; FMin(a,b)
  %5163 = call float @dx.op.binary.f32(i32 36, float %5160, float 3.225500e+04)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 36, float %5161, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5162)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

