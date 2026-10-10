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
; shader hash: b35cfad7e0d69c5993d702e9aff1390f
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
;                                   texture     f32          2d     T15             t0     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %57
  %65 = fmul fast float %63, %58
  %66 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = bitcast float %66 to i32
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 1597250115, %68
  %70 = bitcast i32 %69 to float
  %71 = fmul fast float %70, %49
  %72 = fmul fast float %70, %50
  %73 = fmul fast float %70, %51
  %74 = fmul fast float %50, %47
  %75 = fmul fast float %51, %46
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %51, %45
  %78 = fmul fast float %49, %47
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %49, %46
  %81 = fmul fast float %50, %45
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %76, %48
  %84 = fmul fast float %79, %48
  %85 = fmul fast float %82, %48
  %86 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float %38, float %39, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = bitcast float %86 to i32
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 1597250115, %88
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %90, %38
  %92 = fmul fast float %90, %39
  %93 = fmul fast float %90, %40
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fcmp fast une float %95, 0.000000e+00
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %64, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %65, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = select i1 %96, float %107, float %111
  %115 = select i1 %96, float %108, float %112
  %116 = select i1 %96, float %109, float %113
  %117 = fmul fast float %114, %104
  %118 = fmul fast float %115, %104
  %119 = fmul fast float %116, %104
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %96, float %121, float %125
  %129 = select i1 %96, float %122, float %126
  %130 = select i1 %96, float %123, float %127
  %131 = fmul fast float %128, %105
  %132 = fmul fast float %129, %105
  %133 = fmul fast float %130, %105
  %134 = fadd fast float %131, %117
  %135 = fadd fast float %132, %118
  %136 = fadd fast float %133, %119
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = select i1 %96, float %138, float %142
  %146 = select i1 %96, float %139, float %143
  %147 = select i1 %96, float %140, float %144
  %148 = fadd fast float %134, %145
  %149 = fadd fast float %135, %146
  %150 = fadd fast float %136, %147
  %151 = fmul fast float %148, %59
  %152 = fmul fast float %149, %59
  %153 = fmul fast float %150, %59
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %155, %64
  %158 = fmul fast float %156, %65
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = and i32 %160, 114688
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float %157, float 0.000000e+00
  %164 = select i1 %162, float %158, float 0.000000e+00
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fmul fast float %166, 2.550000e+02
  %168 = fptoui float %167 to i32
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp ne i32 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %188

; <label>:177                                     ; preds = %0
  %178 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %179 = fmul fast float %178, %65
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fmul fast float %180, %64
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %181, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fcmp fast olt float %184, %186
  br label %191

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %174, 0
  %190 = and i1 %173, %189
  br label %191

; <label>:191                                     ; preds = %188, %177
  %192 = phi i1 [ %187, %177 ], [ %190, %188 ]
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = fmul fast float %194, 0x3FE3C6EF40000000
  %196 = frem fast float %64, 2.560000e+02
  %197 = frem fast float %65, 2.560000e+02
  %198 = fptoui float %196 to i32
  %199 = fptoui float %197 to i32
  %200 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %198, i32 %199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fadd fast float %201, %195
  %203 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  %204 = add i32 %20, 216
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 255
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F70101020000000
  %210 = lshr i32 %206, 8
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %206, 16
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = add i32 %20, 36
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %220, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = add i32 %20, 288
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %227, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = fmul fast float %229, 0x3F50624DE0000000
  %233 = fmul fast float %231, 0x3F50624DE0000000
  %234 = add i32 %20, 232
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = add i32 %20, 52
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %20, 304
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = add i32 %20, 248
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %20, 68
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %20, 320
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %20, 264
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %20, 84
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %20, 336
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %20, 348
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 32
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %326, 64
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %326, 128
  %332 = icmp eq i32 %331, 0
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 2
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %350, label %337

; <label>:337                                     ; preds = %191
  %338 = add i32 %20, 488
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = add i32 %340, 0
  %342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %342, %dx.types.Handle %61, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = fmul fast float %344, %54
  %348 = fmul fast float %345, %55
  %349 = fmul fast float %346, %56
  br label %350

; <label>:350                                     ; preds = %337, %191
  %351 = phi float [ %56, %191 ], [ %349, %337 ]
  %352 = phi float [ %55, %191 ], [ %348, %337 ]
  %353 = phi float [ %54, %191 ], [ %347, %337 ]
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 2
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %377, label %358

; <label>:358                                     ; preds = %350
  %359 = add i32 %20, 44
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, float %353, float 1.000000e+00
  %365 = add i32 %20, 60
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 1
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %369, float %352, float 1.000000e+00
  %371 = add i32 %20, 76
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %351, float 1.000000e+00
  br label %377

; <label>:377                                     ; preds = %358, %350
  %378 = phi float [ %351, %350 ], [ %376, %358 ]
  %379 = phi float [ %352, %350 ], [ %370, %358 ]
  %380 = phi float [ %353, %350 ], [ %364, %358 ]
  %381 = lshr i32 %355, 20
  %382 = and i32 %381, 3
  %383 = add nuw nsw i32 %382, 1
  %384 = add i32 %20, 24
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %20, 28
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = or i32 %389, %386
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %803, label %392

; <label>:392                                     ; preds = %377
  %393 = and i32 %386, 262144
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %394, float %25, float 1.000000e+00
  %396 = select i1 %394, float %26, float 0.000000e+00
  %397 = select i1 %394, float %27, float 0.000000e+00
  %398 = select i1 %394, float %28, float 1.000000e+00
  %399 = select i1 %394, float %29, float %52
  %400 = select i1 %394, float %30, float %53
  %401 = add i32 %20, 284
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = lshr i32 %403, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = fmul fast float %405, 0x3F50624DE0000000
  %407 = add i32 %20, 88
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = lshr i32 %409, 16
  %411 = and i32 %410, 255
  %412 = lshr i32 %409, 24
  %413 = add i32 %20, 292
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = add i32 %20, 32
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = lshr i32 %422, 22
  %424 = shl nuw nsw i32 %423, 5
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = shl i32 %422, 4
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %422, 7
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %434 = fmul fast float %433, 1.000000e+03
  %435 = fmul fast float %232, %434
  %436 = call float @dx.op.unary.f32(i32 22, float %435)  ; Frc(value)
  %437 = fadd fast float %436, %222
  %438 = fmul fast float %233, %434
  %439 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %440 = fadd fast float %439, %224
  %441 = fmul fast float %406, %434
  %442 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %443 = fmul fast float %442, 0x401921FB60000000
  %444 = fadd fast float %443, %425
  %445 = call float @dx.op.unary.f32(i32 13, float %444)  ; Sin(value)
  %446 = call float @dx.op.unary.f32(i32 12, float %444)  ; Cos(value)
  %447 = fsub fast float -0.000000e+00, %445
  %448 = fadd fast float %399, -5.000000e-01
  %449 = fadd fast float %400, -5.000000e-01
  %450 = fmul fast float %417, %448
  %451 = fmul fast float %419, %449
  %452 = fadd fast float %450, 5.000000e-01
  %453 = fadd fast float %451, 5.000000e-01
  %454 = fmul fast float %428, %452
  %455 = fmul fast float %431, %453
  %456 = fmul fast float %446, %454
  %457 = call float @dx.op.tertiary.f32(i32 46, float %447, float %455, float %456)  ; FMad(a,b,c)
  %458 = fmul fast float %445, %454
  %459 = call float @dx.op.tertiary.f32(i32 46, float %446, float %455, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %437, %457
  %461 = fadd fast float %440, %459
  %462 = icmp ugt i32 %411, 1
  %463 = icmp ugt i32 %409, 33554431
  %464 = or i1 %463, %462
  br i1 %464, label %465, label %490

; <label>:465                                     ; preds = %392
  %466 = add i32 %20, 228
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = fmul fast float %433, %470
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = mul nuw nsw i32 %411, %412
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %472, %474
  %476 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %477 = fptoui float %476 to i32
  %478 = urem i32 %477, %411
  %479 = udiv i32 %477, %412
  %480 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %481 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %482 = uitofp i32 %478 to float
  %483 = uitofp i32 %479 to float
  %484 = fadd fast float %480, %482
  %485 = fadd fast float %481, %483
  %486 = uitofp i32 %411 to float
  %487 = uitofp i32 %412 to float
  %488 = fdiv fast float %484, %486
  %489 = fdiv fast float %485, %487
  br label %490

; <label>:490                                     ; preds = %465, %392
  %491 = phi float [ %488, %465 ], [ %460, %392 ]
  %492 = phi float [ %489, %465 ], [ %461, %392 ]
  %493 = and i32 %386, 16
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %691, label %495

; <label>:495                                     ; preds = %490
  %496 = add i32 %20, 376
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = add i32 %498, 0
  %500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %500, %dx.types.Handle %60, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = and i32 %409, 255
  %507 = uitofp i32 %506 to float
  %508 = lshr i32 %409, 8
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %505, %507
  %512 = fadd fast float %511, %510
  %513 = fmul fast float %512, 0x3F70101000000000
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 512
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %526, label %518

; <label>:518                                     ; preds = %495
  %519 = add i32 %20, 456
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = add i32 %521, 0
  %523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %523, %dx.types.Handle %61, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  br label %526

; <label>:526                                     ; preds = %518, %495
  %527 = phi float [ %525, %518 ], [ 1.000000e+00, %495 ]
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 33554432
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %638, label %532

; <label>:532                                     ; preds = %526
  %533 = add i32 %20, 224
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 65535
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %535, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = add i32 %20, 228
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 65535
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 24
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = and i32 %546, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = lshr i32 %546, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %555, 0x3F70101020000000
  %557 = lshr i32 %546, 16
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = add i32 %20, 220
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 24
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = and i32 %563, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %563, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %563, 16
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = bitcast float %502 to i32
  %579 = ashr i32 %578, 1
  %580 = sub nsw i32 1597463174, %579
  %581 = bitcast i32 %580 to float
  %582 = fmul fast float %502, 5.000000e-01
  %583 = fmul fast float %581, %581
  %584 = fmul fast float %583, %582
  %585 = fsub fast float 1.500000e+00, %584
  %586 = fmul fast float %581, %502
  %587 = fmul fast float %586, %585
  %588 = bitcast float %503 to i32
  %589 = ashr i32 %588, 1
  %590 = sub nsw i32 1597463174, %589
  %591 = bitcast i32 %590 to float
  %592 = fmul fast float %503, 5.000000e-01
  %593 = fmul fast float %591, %591
  %594 = fmul fast float %593, %592
  %595 = fsub fast float 1.500000e+00, %594
  %596 = fmul fast float %591, %503
  %597 = fmul fast float %596, %595
  %598 = bitcast float %504 to i32
  %599 = ashr i32 %598, 1
  %600 = sub nsw i32 1597463174, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %504, 5.000000e-01
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %603, %602
  %605 = fsub fast float 1.500000e+00, %604
  %606 = fmul fast float %601, %504
  %607 = fmul fast float %606, %605
  %608 = fsub fast float %587, %569
  %609 = fsub fast float %597, %573
  %610 = fsub fast float %607, %577
  %611 = fmul fast float %608, %537
  %612 = fmul fast float %609, %539
  %613 = fmul fast float %610, %544
  %614 = fadd fast float %611, %552
  %615 = fadd fast float %612, %556
  %616 = fadd fast float %613, %560
  %617 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %618 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %619 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %620 = fmul fast float %617, %617
  %621 = fmul fast float %618, %618
  %622 = fmul fast float %619, %619
  %623 = fsub fast float %620, %502
  %624 = fsub fast float %621, %503
  %625 = fsub fast float %622, %504
  %626 = fmul fast float %623, %527
  %627 = fmul fast float %624, %527
  %628 = fmul fast float %625, %527
  %629 = fadd fast float %626, %502
  %630 = fadd fast float %627, %503
  %631 = fadd fast float %628, %504
  %632 = fadd fast float %549, %513
  %633 = fsub fast float %632, %566
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fsub fast float %634, %513
  %636 = fmul fast float %635, %527
  %637 = fadd fast float %636, %513
  br label %691

; <label>:638                                     ; preds = %526
  %639 = and i32 %529, 134217728
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %675, label %641

; <label>:641                                     ; preds = %638
  %642 = call float @dx.op.unary.f32(i32 24, float %209)  ; Sqrt(value)
  %643 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %644 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %645 = fadd fast float %642, -5.000000e-01
  %646 = fadd fast float %643, -5.000000e-01
  %647 = fadd fast float %644, -5.000000e-01
  %648 = fmul fast float %645, %527
  %649 = fmul fast float %646, %527
  %650 = fmul fast float %647, %527
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fadd fast float %650, 5.000000e-01
  %654 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %655 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %657 = fmul fast float %651, 2.000000e+00
  %658 = fsub fast float 1.000000e+00, %657
  %659 = fmul fast float %658, %654
  %660 = fadd fast float %659, %657
  %661 = fmul fast float %660, %654
  %662 = fmul fast float %652, 2.000000e+00
  %663 = fsub fast float 1.000000e+00, %662
  %664 = fmul fast float %663, %655
  %665 = fadd fast float %664, %662
  %666 = fmul fast float %665, %655
  %667 = fmul fast float %653, 2.000000e+00
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %656
  %670 = fadd fast float %669, %667
  %671 = fmul fast float %670, %656
  %672 = fmul fast float %661, %661
  %673 = fmul fast float %666, %666
  %674 = fmul fast float %671, %671
  br label %691

; <label>:675                                     ; preds = %638
  %676 = fmul fast float %209, %209
  %677 = fmul fast float %213, %213
  %678 = fmul fast float %217, %217
  %679 = fadd fast float %676, -1.000000e+00
  %680 = fadd fast float %677, -1.000000e+00
  %681 = fadd fast float %678, -1.000000e+00
  %682 = fmul fast float %527, %679
  %683 = fmul fast float %527, %680
  %684 = fmul fast float %527, %681
  %685 = fadd fast float %682, 1.000000e+00
  %686 = fadd fast float %683, 1.000000e+00
  %687 = fadd fast float %684, 1.000000e+00
  %688 = fmul fast float %685, %502
  %689 = fmul fast float %686, %503
  %690 = fmul fast float %687, %504
  br label %691

; <label>:691                                     ; preds = %675, %641, %532, %490
  %692 = phi float [ %637, %532 ], [ %513, %641 ], [ %513, %675 ], [ 0x3FA23C0BE0000000, %490 ]
  %693 = phi float [ %629, %532 ], [ %672, %641 ], [ %688, %675 ], [ 1.000000e+00, %490 ]
  %694 = phi float [ %630, %532 ], [ %673, %641 ], [ %689, %675 ], [ 1.000000e+00, %490 ]
  %695 = phi float [ %631, %532 ], [ %674, %641 ], [ %690, %675 ], [ 1.000000e+00, %490 ]
  %696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.i32 %696, 1
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = add i32 %20, 356
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 32
  %704 = icmp ne i32 %703, 0
  %705 = and i1 %699, %704
  %706 = select i1 %705, float 1.000000e+00, float %693
  %707 = select i1 %705, float 0x3FD3333340000000, float %694
  %708 = select i1 %705, float 0x3FD3333340000000, float %695
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 32
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %785, label %713

; <label>:713                                     ; preds = %691
  %714 = add i32 %20, 92
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %20, 392
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %60, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = extractvalue %dx.types.ResRet.f32 %722, 2
  %726 = extractvalue %dx.types.ResRet.f32 %722, 3
  %727 = and i32 %716, 255
  %728 = uitofp i32 %727 to float
  %729 = lshr i32 %716, 8
  %730 = and i32 %729, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %716, 16
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101000000000
  %736 = fmul fast float %723, %728
  %737 = fadd fast float %736, %731
  %738 = fmul fast float %737, 0x3F70101000000000
  %739 = fadd fast float %724, -5.000000e-01
  %740 = fadd fast float %726, -5.000000e-01
  %741 = fmul fast float %739, %735
  %742 = fmul fast float %740, %735
  %743 = fadd fast float %741, 5.000000e-01
  %744 = fadd fast float %742, 5.000000e-01
  %745 = fmul fast float %743, 2.000000e+00
  %746 = fadd fast float %745, -1.000000e+00
  %747 = fmul fast float %744, 2.000000e+00
  %748 = fadd fast float %747, -1.000000e+00
  %749 = fadd fast float %746, %748
  %750 = fmul fast float %749, 5.000000e-01
  %751 = fsub fast float %746, %748
  %752 = fmul fast float %751, 5.000000e-01
  %753 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %754 = fsub fast float 1.000000e+00, %753
  %755 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %756 = fsub fast float %754, %755
  %757 = call float @dx.op.dot3.f32(i32 55, float %750, float %752, float %756, float %750, float %752, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.unary.f32(i32 25, float %757)  ; Rsqrt(value)
  %759 = fmul fast float %750, %758
  %760 = fmul fast float %752, %758
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 67108864
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %781, label %765

; <label>:765                                     ; preds = %713
  %766 = add i32 %20, 280
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 65535
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %768, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = fsub fast float %738, %776
  %778 = fmul fast float %777, %770
  %779 = fadd fast float %778, %774
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  br label %781

; <label>:781                                     ; preds = %765, %713
  %782 = phi float [ %780, %765 ], [ %738, %713 ]
  %783 = call float @dx.op.dot2.f32(i32 54, float %759, float %760, float %395, float %396)  ; Dot2(ax,ay,bx,by)
  %784 = call float @dx.op.dot2.f32(i32 54, float %759, float %760, float %397, float %398)  ; Dot2(ax,ay,bx,by)
  br label %785

; <label>:785                                     ; preds = %781, %691
  %786 = phi float [ %782, %781 ], [ 0x3FD6666660000000, %691 ]
  %787 = phi float [ %783, %781 ], [ 0.000000e+00, %691 ]
  %788 = phi float [ %784, %781 ], [ 0.000000e+00, %691 ]
  %789 = phi float [ %725, %781 ], [ 1.000000e+00, %691 ]
  %790 = add i32 %20, 96
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = lshr i32 %792, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = call float @dx.op.dot3.f32(i32 55, float %706, float %707, float %708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = fmul fast float %797, %798
  %800 = fadd fast float %799, %794
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  br label %803

; <label>:803                                     ; preds = %785, %377
  %804 = phi float [ 0.000000e+00, %377 ], [ %787, %785 ]
  %805 = phi float [ 0.000000e+00, %377 ], [ %788, %785 ]
  %806 = phi float [ 0.000000e+00, %377 ], [ %706, %785 ]
  %807 = phi float [ 0.000000e+00, %377 ], [ %707, %785 ]
  %808 = phi float [ 0.000000e+00, %377 ], [ %708, %785 ]
  %809 = phi float [ 0.000000e+00, %377 ], [ %692, %785 ]
  %810 = phi float [ 0.000000e+00, %377 ], [ 1.000000e+00, %785 ]
  %811 = phi float [ 0.000000e+00, %377 ], [ %786, %785 ]
  %812 = phi float [ 0.000000e+00, %377 ], [ %789, %785 ]
  %813 = phi float [ 0.000000e+00, %377 ], [ %802, %785 ]
  br i1 %328, label %1472, label %814

; <label>:814                                     ; preds = %803
  %815 = icmp ult i32 %383, 2
  %816 = add i32 %20, 40
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %20, 44
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = or i32 %821, %818
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %1472, label %824

; <label>:824                                     ; preds = %814
  %825 = and i32 %818, 262144
  %826 = icmp ne i32 %825, 0
  %827 = select i1 %826, float %25, float 1.000000e+00
  %828 = select i1 %826, float %26, float 0.000000e+00
  %829 = select i1 %826, float %27, float 0.000000e+00
  %830 = select i1 %826, float %28, float 1.000000e+00
  %831 = select i1 %826, float %29, float %52
  %832 = select i1 %826, float %30, float %53
  %833 = add i32 %20, 300
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 16
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fmul fast float %837, 0x3F50624DE0000000
  %839 = add i32 %20, 104
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = lshr i32 %841, 24
  %845 = add i32 %20, 308
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 65535
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = lshr i32 %847, 16
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = add i32 %20, 48
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 22
  %856 = shl nuw nsw i32 %855, 5
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = shl i32 %854, 4
  %859 = and i32 %858, 32752
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = lshr i32 %854, 7
  %862 = and i32 %861, 32752
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 3
  %866 = fmul fast float %865, 1.000000e+03
  %867 = fmul fast float %262, %866
  %868 = call float @dx.op.unary.f32(i32 22, float %867)  ; Frc(value)
  %869 = fadd fast float %868, %252
  %870 = fmul fast float %263, %866
  %871 = call float @dx.op.unary.f32(i32 22, float %870)  ; Frc(value)
  %872 = fadd fast float %871, %254
  %873 = fmul fast float %838, %866
  %874 = call float @dx.op.unary.f32(i32 22, float %873)  ; Frc(value)
  %875 = fmul fast float %874, 0x401921FB60000000
  %876 = fadd fast float %875, %857
  %877 = call float @dx.op.unary.f32(i32 13, float %876)  ; Sin(value)
  %878 = call float @dx.op.unary.f32(i32 12, float %876)  ; Cos(value)
  %879 = fsub fast float -0.000000e+00, %877
  %880 = fadd fast float %831, -5.000000e-01
  %881 = fadd fast float %832, -5.000000e-01
  %882 = fmul fast float %849, %880
  %883 = fmul fast float %851, %881
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fmul fast float %860, %884
  %887 = fmul fast float %863, %885
  %888 = fmul fast float %878, %886
  %889 = call float @dx.op.tertiary.f32(i32 46, float %879, float %887, float %888)  ; FMad(a,b,c)
  %890 = fmul fast float %877, %886
  %891 = call float @dx.op.tertiary.f32(i32 46, float %878, float %887, float %890)  ; FMad(a,b,c)
  %892 = fadd fast float %869, %889
  %893 = fadd fast float %872, %891
  %894 = icmp ugt i32 %843, 1
  %895 = icmp ugt i32 %841, 33554431
  %896 = or i1 %895, %894
  br i1 %896, label %897, label %922

; <label>:897                                     ; preds = %824
  %898 = add i32 %20, 244
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 16
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = fmul fast float %865, %902
  %904 = call float @dx.op.unary.f32(i32 22, float %903)  ; Frc(value)
  %905 = mul nuw nsw i32 %843, %844
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %904, %906
  %908 = call float @dx.op.unary.f32(i32 27, float %907)  ; Round_ni(value)
  %909 = fptoui float %908 to i32
  %910 = urem i32 %909, %843
  %911 = udiv i32 %909, %844
  %912 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %913 = call float @dx.op.unary.f32(i32 22, float %893)  ; Frc(value)
  %914 = uitofp i32 %910 to float
  %915 = uitofp i32 %911 to float
  %916 = fadd fast float %912, %914
  %917 = fadd fast float %913, %915
  %918 = uitofp i32 %843 to float
  %919 = uitofp i32 %844 to float
  %920 = fdiv fast float %916, %918
  %921 = fdiv fast float %917, %919
  br label %922

; <label>:922                                     ; preds = %897, %824
  %923 = phi float [ %920, %897 ], [ %892, %824 ]
  %924 = phi float [ %921, %897 ], [ %893, %824 ]
  %925 = and i32 %818, 256
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %973, label %927

; <label>:927                                     ; preds = %922
  %928 = add i32 %20, 444
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = add i32 %930, 0
  %932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %932, %dx.types.Handle %61, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = add i32 %20, 116
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = shl i32 %937, 4
  %939 = and i32 %938, 32752
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %937, 7
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fsub fast float 1.000000e+00, %380
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %946 = bitcast float %380 to i32
  %947 = sitofp i32 %946 to float
  %948 = fadd fast float %947, 0xC1CFBF8940000000
  %949 = fmul fast float %943, %948
  %950 = fadd fast float %949, 0x41CFBF8940000000
  %951 = fptosi float %950 to i32
  %952 = bitcast i32 %951 to float
  %953 = bitcast float %945 to i32
  %954 = sitofp i32 %953 to float
  %955 = fadd fast float %954, 0xC1CFBF8940000000
  %956 = fmul fast float %955, %943
  %957 = fadd fast float %956, 0x41CFBF8940000000
  %958 = fptosi float %957 to i32
  %959 = bitcast i32 %958 to float
  %960 = fmul fast float %952, %940
  %961 = fmul fast float %959, %940
  %962 = fsub fast float %945, %960
  %963 = fadd fast float %961, %945
  %964 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %965 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %966 = fsub fast float %934, %964
  %967 = fsub fast float %965, %964
  %968 = bitcast float %967 to i32
  %969 = sub nsw i32 2129859010, %968
  %970 = bitcast i32 %969 to float
  %971 = fmul fast float %970, %966
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  br label %973

; <label>:973                                     ; preds = %927, %922
  %974 = phi float [ %972, %927 ], [ %380, %922 ]
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 128
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %995, label %979

; <label>:979                                     ; preds = %973
  %980 = add i32 %20, 428
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %982, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %984, %dx.types.Handle %61, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = and i32 %988, 524288
  %990 = icmp ne i32 %989, 0
  %991 = fcmp fast ogt float %986, 0x3FE0101020000000
  %992 = select i1 %991, float 1.000000e+00, float 0.000000e+00
  %993 = select i1 %990, float %992, float %986
  %994 = fmul fast float %993, %974
  br label %995

; <label>:995                                     ; preds = %979, %973
  %996 = phi float [ %994, %979 ], [ %974, %973 ]
  %997 = fcmp fast ult float %996, 0x3F70101020000000
  br i1 %997, label %1472, label %998

; <label>:998                                     ; preds = %995
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 16
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1201, label %1003

; <label>:1003                                    ; preds = %998
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %20, 380
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = add i32 %1008, 0
  %1010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1010, %dx.types.Handle %60, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = and i32 %1005, 255
  %1017 = uitofp i32 %1016 to float
  %1018 = lshr i32 %1005, 8
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1015, %1017
  %1022 = fadd fast float %1021, %1020
  %1023 = fmul fast float %1022, 0x3F70101000000000
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 512
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1036, label %1028

; <label>:1028                                    ; preds = %1003
  %1029 = add i32 %20, 460
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = add i32 %1031, 0
  %1033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1033, %dx.types.Handle %61, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  br label %1036

; <label>:1036                                    ; preds = %1028, %1003
  %1037 = phi float [ %1035, %1028 ], [ 1.000000e+00, %1003 ]
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 33554432
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1148, label %1042

; <label>:1042                                    ; preds = %1036
  %1043 = add i32 %20, 240
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1045, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = add i32 %20, 244
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 65535
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = lshr i32 %1056, 24
  %1058 = uitofp i32 %1057 to float
  %1059 = fmul fast float %1058, 0x3F70101020000000
  %1060 = and i32 %1056, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F70101020000000
  %1063 = lshr i32 %1056, 8
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = lshr i32 %1056, 16
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1069, 0x3F70101020000000
  %1071 = add i32 %20, 236
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 24
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1075, 0x3F70101020000000
  %1077 = and i32 %1073, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = lshr i32 %1073, 8
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = fmul fast float %1082, 0x3F70101020000000
  %1084 = lshr i32 %1073, 16
  %1085 = and i32 %1084, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = fmul fast float %1086, 0x3F70101020000000
  %1088 = bitcast float %1012 to i32
  %1089 = ashr i32 %1088, 1
  %1090 = sub nsw i32 1597463174, %1089
  %1091 = bitcast i32 %1090 to float
  %1092 = fmul fast float %1012, 5.000000e-01
  %1093 = fmul fast float %1091, %1091
  %1094 = fmul fast float %1093, %1092
  %1095 = fsub fast float 1.500000e+00, %1094
  %1096 = fmul fast float %1091, %1012
  %1097 = fmul fast float %1096, %1095
  %1098 = bitcast float %1013 to i32
  %1099 = ashr i32 %1098, 1
  %1100 = sub nsw i32 1597463174, %1099
  %1101 = bitcast i32 %1100 to float
  %1102 = fmul fast float %1013, 5.000000e-01
  %1103 = fmul fast float %1101, %1101
  %1104 = fmul fast float %1103, %1102
  %1105 = fsub fast float 1.500000e+00, %1104
  %1106 = fmul fast float %1101, %1013
  %1107 = fmul fast float %1106, %1105
  %1108 = bitcast float %1014 to i32
  %1109 = ashr i32 %1108, 1
  %1110 = sub nsw i32 1597463174, %1109
  %1111 = bitcast i32 %1110 to float
  %1112 = fmul fast float %1014, 5.000000e-01
  %1113 = fmul fast float %1111, %1111
  %1114 = fmul fast float %1113, %1112
  %1115 = fsub fast float 1.500000e+00, %1114
  %1116 = fmul fast float %1111, %1014
  %1117 = fmul fast float %1116, %1115
  %1118 = fsub fast float %1097, %1079
  %1119 = fsub fast float %1107, %1083
  %1120 = fsub fast float %1117, %1087
  %1121 = fmul fast float %1118, %1047
  %1122 = fmul fast float %1119, %1049
  %1123 = fmul fast float %1120, %1054
  %1124 = fadd fast float %1121, %1062
  %1125 = fadd fast float %1122, %1066
  %1126 = fadd fast float %1123, %1070
  %1127 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1128 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1129 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1130 = fmul fast float %1127, %1127
  %1131 = fmul fast float %1128, %1128
  %1132 = fmul fast float %1129, %1129
  %1133 = fsub fast float %1130, %1012
  %1134 = fsub fast float %1131, %1013
  %1135 = fsub fast float %1132, %1014
  %1136 = fmul fast float %1133, %1037
  %1137 = fmul fast float %1134, %1037
  %1138 = fmul fast float %1135, %1037
  %1139 = fadd fast float %1136, %1012
  %1140 = fadd fast float %1137, %1013
  %1141 = fadd fast float %1138, %1014
  %1142 = fadd fast float %1059, %1023
  %1143 = fsub fast float %1142, %1076
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1145 = fsub fast float %1144, %1023
  %1146 = fmul fast float %1145, %1037
  %1147 = fadd fast float %1146, %1023
  br label %1201

; <label>:1148                                    ; preds = %1036
  %1149 = and i32 %1039, 134217728
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1185, label %1151

; <label>:1151                                    ; preds = %1148
  %1152 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1153 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1154 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1155 = fadd fast float %1152, -5.000000e-01
  %1156 = fadd fast float %1153, -5.000000e-01
  %1157 = fadd fast float %1154, -5.000000e-01
  %1158 = fmul fast float %1155, %1037
  %1159 = fmul fast float %1156, %1037
  %1160 = fmul fast float %1157, %1037
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = fadd fast float %1159, 5.000000e-01
  %1163 = fadd fast float %1160, 5.000000e-01
  %1164 = call float @dx.op.unary.f32(i32 24, float %1012)  ; Sqrt(value)
  %1165 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1166 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1167 = fmul fast float %1161, 2.000000e+00
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fmul fast float %1168, %1164
  %1170 = fadd fast float %1169, %1167
  %1171 = fmul fast float %1170, %1164
  %1172 = fmul fast float %1162, 2.000000e+00
  %1173 = fsub fast float 1.000000e+00, %1172
  %1174 = fmul fast float %1173, %1165
  %1175 = fadd fast float %1174, %1172
  %1176 = fmul fast float %1175, %1165
  %1177 = fmul fast float %1163, 2.000000e+00
  %1178 = fsub fast float 1.000000e+00, %1177
  %1179 = fmul fast float %1178, %1166
  %1180 = fadd fast float %1179, %1177
  %1181 = fmul fast float %1180, %1166
  %1182 = fmul fast float %1171, %1171
  %1183 = fmul fast float %1176, %1176
  %1184 = fmul fast float %1181, %1181
  br label %1201

; <label>:1185                                    ; preds = %1148
  %1186 = fmul fast float %239, %239
  %1187 = fmul fast float %243, %243
  %1188 = fmul fast float %247, %247
  %1189 = fadd fast float %1186, -1.000000e+00
  %1190 = fadd fast float %1187, -1.000000e+00
  %1191 = fadd fast float %1188, -1.000000e+00
  %1192 = fmul fast float %1037, %1189
  %1193 = fmul fast float %1037, %1190
  %1194 = fmul fast float %1037, %1191
  %1195 = fadd fast float %1192, 1.000000e+00
  %1196 = fadd fast float %1193, 1.000000e+00
  %1197 = fadd fast float %1194, 1.000000e+00
  %1198 = fmul fast float %1195, %1012
  %1199 = fmul fast float %1196, %1013
  %1200 = fmul fast float %1197, %1014
  br label %1201

; <label>:1201                                    ; preds = %1185, %1151, %1042, %998
  %1202 = phi float [ %1147, %1042 ], [ %1023, %1151 ], [ %1023, %1185 ], [ 0x3FA23C0BE0000000, %998 ]
  %1203 = phi float [ %1139, %1042 ], [ %1182, %1151 ], [ %1198, %1185 ], [ 1.000000e+00, %998 ]
  %1204 = phi float [ %1140, %1042 ], [ %1183, %1151 ], [ %1199, %1185 ], [ 1.000000e+00, %998 ]
  %1205 = phi float [ %1141, %1042 ], [ %1184, %1151 ], [ %1200, %1185 ], [ 1.000000e+00, %998 ]
  %1206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.i32 %1206, 1
  %1208 = and i32 %1207, 1
  %1209 = icmp ne i32 %1208, 0
  %1210 = add i32 %20, 356
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 32
  %1214 = icmp ne i32 %1213, 0
  %1215 = and i1 %1209, %1214
  %1216 = select i1 %1215, float 1.000000e+00, float %1203
  %1217 = select i1 %1215, float 0x3FD3333340000000, float %1204
  %1218 = select i1 %1215, float 0x3FD3333340000000, float %1205
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 32
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1295, label %1223

; <label>:1223                                    ; preds = %1201
  %1224 = add i32 %20, 108
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %20, 396
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %1229, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1231, %dx.types.Handle %60, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = and i32 %1226, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = lshr i32 %1226, 8
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1226, 16
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101000000000
  %1246 = fmul fast float %1233, %1238
  %1247 = fadd fast float %1246, %1241
  %1248 = fmul fast float %1247, 0x3F70101000000000
  %1249 = fadd fast float %1234, -5.000000e-01
  %1250 = fadd fast float %1236, -5.000000e-01
  %1251 = fmul fast float %1249, %1245
  %1252 = fmul fast float %1250, %1245
  %1253 = fadd fast float %1251, 5.000000e-01
  %1254 = fadd fast float %1252, 5.000000e-01
  %1255 = fmul fast float %1253, 2.000000e+00
  %1256 = fadd fast float %1255, -1.000000e+00
  %1257 = fmul fast float %1254, 2.000000e+00
  %1258 = fadd fast float %1257, -1.000000e+00
  %1259 = fadd fast float %1256, %1258
  %1260 = fmul fast float %1259, 5.000000e-01
  %1261 = fsub fast float %1256, %1258
  %1262 = fmul fast float %1261, 5.000000e-01
  %1263 = call float @dx.op.unary.f32(i32 6, float %1260)  ; FAbs(value)
  %1264 = fsub fast float 1.000000e+00, %1263
  %1265 = call float @dx.op.unary.f32(i32 6, float %1262)  ; FAbs(value)
  %1266 = fsub fast float %1264, %1265
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1260, float %1262, float %1266, float %1260, float %1262, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call float @dx.op.unary.f32(i32 25, float %1267)  ; Rsqrt(value)
  %1269 = fmul fast float %1260, %1268
  %1270 = fmul fast float %1262, %1268
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = and i32 %1272, 67108864
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1291, label %1275

; <label>:1275                                    ; preds = %1223
  %1276 = add i32 %20, 296
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1278, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = fsub fast float %1248, %1286
  %1288 = fmul fast float %1287, %1280
  %1289 = fadd fast float %1288, %1284
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  br label %1291

; <label>:1291                                    ; preds = %1275, %1223
  %1292 = phi float [ %1290, %1275 ], [ %1248, %1223 ]
  %1293 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1270, float %827, float %828)  ; Dot2(ax,ay,bx,by)
  %1294 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1270, float %829, float %830)  ; Dot2(ax,ay,bx,by)
  br label %1295

; <label>:1295                                    ; preds = %1291, %1201
  %1296 = phi float [ %1292, %1291 ], [ 0x3FD6666660000000, %1201 ]
  %1297 = phi float [ %1293, %1291 ], [ 0.000000e+00, %1201 ]
  %1298 = phi float [ %1294, %1291 ], [ 0.000000e+00, %1201 ]
  %1299 = phi float [ %1235, %1291 ], [ 1.000000e+00, %1201 ]
  %1300 = add i32 %20, 112
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = lshr i32 %1302, 8
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = call float @dx.op.dot3.f32(i32 55, float %1216, float %1217, float %1218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1309 = fmul fast float %1307, %1308
  %1310 = fadd fast float %1309, %1304
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  br i1 %815, label %1313, label %1318

; <label>:1313                                    ; preds = %1295
  %1314 = fsub fast float 1.000000e+00, %996
  %1315 = fmul fast float %1314, %806
  %1316 = fmul fast float %1314, %807
  %1317 = fmul fast float %1314, %808
  br label %1318

; <label>:1318                                    ; preds = %1313, %1295
  %1319 = phi float [ %1315, %1313 ], [ %806, %1295 ]
  %1320 = phi float [ %1316, %1313 ], [ %807, %1295 ]
  %1321 = phi float [ %1317, %1313 ], [ %808, %1295 ]
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 3
  %1325 = icmp eq i32 %1324, 3
  br i1 %1325, label %1392, label %1326

; <label>:1326                                    ; preds = %1318
  %1327 = and i32 %1323, 16
  %1328 = icmp ne i32 %1327, 0
  %1329 = select i1 %1328, float %996, float 0.000000e+00
  %1330 = icmp eq i32 %1324, 0
  br i1 %1330, label %1331, label %1347

; <label>:1331                                    ; preds = %1326
  %1332 = fsub fast float %1216, %1319
  %1333 = fsub fast float %1217, %1320
  %1334 = fsub fast float %1218, %1321
  %1335 = fmul fast float %1329, %1332
  %1336 = fmul fast float %1329, %1333
  %1337 = fmul fast float %1329, %1334
  %1338 = fadd fast float %1335, %1319
  %1339 = fadd fast float %1336, %1320
  %1340 = fadd fast float %1337, %1321
  %1341 = fsub fast float %1202, %809
  %1342 = fmul fast float %1329, %1341
  %1343 = fadd fast float %1342, %809
  %1344 = fsub fast float %1312, %813
  %1345 = fmul fast float %1329, %1344
  %1346 = fadd fast float %1345, %813
  br label %1392

; <label>:1347                                    ; preds = %1326
  %1348 = icmp eq i32 %1324, 1
  br i1 %1348, label %1349, label %1362

; <label>:1349                                    ; preds = %1347
  %1350 = fadd fast float %1216, -1.000000e+00
  %1351 = fadd fast float %1217, -1.000000e+00
  %1352 = fadd fast float %1218, -1.000000e+00
  %1353 = fmul fast float %1329, %1350
  %1354 = fmul fast float %1329, %1351
  %1355 = fmul fast float %1329, %1352
  %1356 = fadd fast float %1353, 1.000000e+00
  %1357 = fadd fast float %1354, 1.000000e+00
  %1358 = fadd fast float %1355, 1.000000e+00
  %1359 = fmul fast float %1356, %1319
  %1360 = fmul fast float %1357, %1320
  %1361 = fmul fast float %1358, %1321
  br label %1392

; <label>:1362                                    ; preds = %1347
  %1363 = icmp eq i32 %1324, 2
  br i1 %1363, label %1364, label %1392

; <label>:1364                                    ; preds = %1362
  %1365 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1366 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1367 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1368 = fadd fast float %1365, -5.000000e-01
  %1369 = fadd fast float %1366, -5.000000e-01
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fmul fast float %1368, %1329
  %1372 = fmul fast float %1369, %1329
  %1373 = fmul fast float %1370, %1329
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = fmul fast float %1374, 2.000000e+00
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1319
  %1380 = fadd fast float %1379, %1377
  %1381 = fmul fast float %1380, %1319
  %1382 = fmul fast float %1375, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1320
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1320
  %1387 = fmul fast float %1376, 2.000000e+00
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1388, %1321
  %1390 = fadd fast float %1389, %1387
  %1391 = fmul fast float %1390, %1321
  br label %1392

; <label>:1392                                    ; preds = %1364, %1362, %1349, %1331, %1318
  %1393 = phi float [ %1319, %1318 ], [ %1381, %1364 ], [ %1319, %1362 ], [ %1359, %1349 ], [ %1338, %1331 ]
  %1394 = phi float [ %1320, %1318 ], [ %1386, %1364 ], [ %1320, %1362 ], [ %1360, %1349 ], [ %1339, %1331 ]
  %1395 = phi float [ %1321, %1318 ], [ %1391, %1364 ], [ %1321, %1362 ], [ %1361, %1349 ], [ %1340, %1331 ]
  %1396 = phi float [ %809, %1318 ], [ %809, %1364 ], [ %809, %1362 ], [ %809, %1349 ], [ %1343, %1331 ]
  %1397 = phi float [ %813, %1318 ], [ %813, %1364 ], [ %813, %1362 ], [ %813, %1349 ], [ %1346, %1331 ]
  %1398 = and i32 %1323, 12
  %1399 = icmp eq i32 %1398, 12
  br i1 %1399, label %1472, label %1400

; <label>:1400                                    ; preds = %1392
  %1401 = and i32 %1323, 2097184
  %1402 = icmp eq i32 %1401, 2097184
  %1403 = select i1 %1402, float %996, float 0.000000e+00
  %1404 = and i32 %1323, 4194336
  %1405 = icmp eq i32 %1404, 4194336
  %1406 = select i1 %1405, float %996, float 0.000000e+00
  %1407 = and i32 %1323, 8388640
  %1408 = icmp eq i32 %1407, 8388640
  %1409 = select i1 %1408, float %996, float 0.000000e+00
  %1410 = icmp eq i32 %1398, 0
  br i1 %1410, label %1411, label %1424

; <label>:1411                                    ; preds = %1400
  %1412 = fsub fast float %1297, %804
  %1413 = fsub fast float %1298, %805
  %1414 = fmul fast float %1403, %1412
  %1415 = fmul fast float %1403, %1413
  %1416 = fadd fast float %1414, %804
  %1417 = fadd fast float %1415, %805
  %1418 = fsub fast float %1299, %812
  %1419 = fmul fast float %1406, %1418
  %1420 = fadd fast float %1419, %812
  %1421 = fsub fast float %1296, %811
  %1422 = fmul fast float %1409, %1421
  %1423 = fadd fast float %1422, %811
  br label %1472

; <label>:1424                                    ; preds = %1400
  %1425 = icmp eq i32 %1398, 4
  br i1 %1425, label %1426, label %1458

; <label>:1426                                    ; preds = %1424
  %1427 = fmul fast float %1403, %1297
  %1428 = fmul fast float %1403, %1298
  %1429 = fadd fast float %1427, %804
  %1430 = fadd fast float %1428, %805
  %1431 = call float @dx.op.binary.f32(i32 36, float %812, float %1299)  ; FMin(a,b)
  %1432 = fsub fast float %1431, %812
  %1433 = fmul fast float %1432, %1406
  %1434 = fadd fast float %1433, %812
  %1435 = fadd fast float %1296, %811
  %1436 = fmul fast float %1435, 0x3FF337FAE0000000
  %1437 = fmul fast float %811, %811
  %1438 = fmul fast float %1296, %1296
  %1439 = fadd fast float %1438, %1437
  %1440 = fmul fast float %1439, 0x3FE5152B00000000
  %1441 = fmul fast float %811, 0xBFCC1F85E0000000
  %1442 = fmul fast float %1441, %1296
  %1443 = fadd fast float %1442, 0xBFE1363700000000
  %1444 = fadd fast float %1443, %1436
  %1445 = fsub fast float %1444, %1440
  %1446 = fmul fast float %1435, 0x3FBA6F0D00000000
  %1447 = fmul fast float %1439, 0x3FD0432880000000
  %1448 = fmul fast float %811, 0xBFEF110800000000
  %1449 = fmul fast float %1448, %1296
  %1450 = fadd fast float %1449, 1.000000e+00
  %1451 = fsub fast float %1450, %1446
  %1452 = fadd fast float %1451, %1447
  %1453 = fdiv fast float %1445, %1452
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = fsub fast float %1454, %811
  %1456 = fmul fast float %1455, %1409
  %1457 = fadd fast float %1456, %811
  br label %1472

; <label>:1458                                    ; preds = %1424
  %1459 = icmp eq i32 %1398, 8
  br i1 %1459, label %1460, label %1472

; <label>:1460                                    ; preds = %1458
  %1461 = fmul fast float %1403, %1297
  %1462 = fmul fast float %1403, %1298
  %1463 = fadd fast float %1461, %804
  %1464 = fadd fast float %1462, %805
  %1465 = call float @dx.op.binary.f32(i32 36, float %812, float %1299)  ; FMin(a,b)
  %1466 = fsub fast float %1465, %812
  %1467 = fmul fast float %1466, %1406
  %1468 = fadd fast float %1467, %812
  %1469 = fsub fast float %1296, %811
  %1470 = fmul fast float %1409, %1469
  %1471 = fadd fast float %1470, %811
  br label %1472

; <label>:1472                                    ; preds = %1460, %1458, %1426, %1411, %1392, %995, %814, %803
  %1473 = phi float [ %804, %1392 ], [ %804, %995 ], [ %804, %803 ], [ %1463, %1460 ], [ %804, %1458 ], [ %1429, %1426 ], [ %1416, %1411 ], [ %804, %814 ]
  %1474 = phi float [ %805, %1392 ], [ %805, %995 ], [ %805, %803 ], [ %1464, %1460 ], [ %805, %1458 ], [ %1430, %1426 ], [ %1417, %1411 ], [ %805, %814 ]
  %1475 = phi float [ %1393, %1392 ], [ %806, %995 ], [ %806, %803 ], [ %1393, %1460 ], [ %1393, %1458 ], [ %1393, %1426 ], [ %1393, %1411 ], [ %806, %814 ]
  %1476 = phi float [ %1394, %1392 ], [ %807, %995 ], [ %807, %803 ], [ %1394, %1460 ], [ %1394, %1458 ], [ %1394, %1426 ], [ %1394, %1411 ], [ %807, %814 ]
  %1477 = phi float [ %1395, %1392 ], [ %808, %995 ], [ %808, %803 ], [ %1395, %1460 ], [ %1395, %1458 ], [ %1395, %1426 ], [ %1395, %1411 ], [ %808, %814 ]
  %1478 = phi float [ %1396, %1392 ], [ %809, %995 ], [ %809, %803 ], [ %1396, %1460 ], [ %1396, %1458 ], [ %1396, %1426 ], [ %1396, %1411 ], [ %809, %814 ]
  %1479 = phi float [ %811, %1392 ], [ %811, %995 ], [ %811, %803 ], [ %1471, %1460 ], [ %811, %1458 ], [ %1457, %1426 ], [ %1423, %1411 ], [ %811, %814 ]
  %1480 = phi float [ %812, %1392 ], [ %812, %995 ], [ %812, %803 ], [ %1468, %1460 ], [ %812, %1458 ], [ %1434, %1426 ], [ %1420, %1411 ], [ %812, %814 ]
  %1481 = phi float [ %1397, %1392 ], [ %813, %995 ], [ %813, %803 ], [ %1397, %1460 ], [ %1397, %1458 ], [ %1397, %1426 ], [ %1397, %1411 ], [ %813, %814 ]
  br i1 %330, label %2140, label %1482

; <label>:1482                                    ; preds = %1472
  %1483 = icmp ult i32 %383, 3
  %1484 = add i32 %20, 56
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %20, 60
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = or i32 %1489, %1486
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %2140, label %1492

; <label>:1492                                    ; preds = %1482
  %1493 = and i32 %1486, 262144
  %1494 = icmp ne i32 %1493, 0
  %1495 = select i1 %1494, float %25, float 1.000000e+00
  %1496 = select i1 %1494, float %26, float 0.000000e+00
  %1497 = select i1 %1494, float %27, float 0.000000e+00
  %1498 = select i1 %1494, float %28, float 1.000000e+00
  %1499 = select i1 %1494, float %29, float %52
  %1500 = select i1 %1494, float %30, float %53
  %1501 = add i32 %20, 316
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = lshr i32 %1503, 16
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = fmul fast float %1505, 0x3F50624DE0000000
  %1507 = add i32 %20, 120
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = lshr i32 %1509, 16
  %1511 = and i32 %1510, 255
  %1512 = lshr i32 %1509, 24
  %1513 = add i32 %20, 324
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = lshr i32 %1515, 16
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = add i32 %20, 64
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = lshr i32 %1522, 22
  %1524 = shl nuw nsw i32 %1523, 5
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = shl i32 %1522, 4
  %1527 = and i32 %1526, 32752
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = lshr i32 %1522, 7
  %1530 = and i32 %1529, 32752
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 3
  %1534 = fmul fast float %1533, 1.000000e+03
  %1535 = fmul fast float %292, %1534
  %1536 = call float @dx.op.unary.f32(i32 22, float %1535)  ; Frc(value)
  %1537 = fadd fast float %1536, %282
  %1538 = fmul fast float %293, %1534
  %1539 = call float @dx.op.unary.f32(i32 22, float %1538)  ; Frc(value)
  %1540 = fadd fast float %1539, %284
  %1541 = fmul fast float %1506, %1534
  %1542 = call float @dx.op.unary.f32(i32 22, float %1541)  ; Frc(value)
  %1543 = fmul fast float %1542, 0x401921FB60000000
  %1544 = fadd fast float %1543, %1525
  %1545 = call float @dx.op.unary.f32(i32 13, float %1544)  ; Sin(value)
  %1546 = call float @dx.op.unary.f32(i32 12, float %1544)  ; Cos(value)
  %1547 = fsub fast float -0.000000e+00, %1545
  %1548 = fadd fast float %1499, -5.000000e-01
  %1549 = fadd fast float %1500, -5.000000e-01
  %1550 = fmul fast float %1517, %1548
  %1551 = fmul fast float %1519, %1549
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fadd fast float %1551, 5.000000e-01
  %1554 = fmul fast float %1528, %1552
  %1555 = fmul fast float %1531, %1553
  %1556 = fmul fast float %1546, %1554
  %1557 = call float @dx.op.tertiary.f32(i32 46, float %1547, float %1555, float %1556)  ; FMad(a,b,c)
  %1558 = fmul fast float %1545, %1554
  %1559 = call float @dx.op.tertiary.f32(i32 46, float %1546, float %1555, float %1558)  ; FMad(a,b,c)
  %1560 = fadd fast float %1537, %1557
  %1561 = fadd fast float %1540, %1559
  %1562 = icmp ugt i32 %1511, 1
  %1563 = icmp ugt i32 %1509, 33554431
  %1564 = or i1 %1563, %1562
  br i1 %1564, label %1565, label %1590

; <label>:1565                                    ; preds = %1492
  %1566 = add i32 %20, 260
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = lshr i32 %1568, 16
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = fmul fast float %1533, %1570
  %1572 = call float @dx.op.unary.f32(i32 22, float %1571)  ; Frc(value)
  %1573 = mul nuw nsw i32 %1511, %1512
  %1574 = uitofp i32 %1573 to float
  %1575 = fmul fast float %1572, %1574
  %1576 = call float @dx.op.unary.f32(i32 27, float %1575)  ; Round_ni(value)
  %1577 = fptoui float %1576 to i32
  %1578 = urem i32 %1577, %1511
  %1579 = udiv i32 %1577, %1512
  %1580 = call float @dx.op.unary.f32(i32 22, float %1560)  ; Frc(value)
  %1581 = call float @dx.op.unary.f32(i32 22, float %1561)  ; Frc(value)
  %1582 = uitofp i32 %1578 to float
  %1583 = uitofp i32 %1579 to float
  %1584 = fadd fast float %1580, %1582
  %1585 = fadd fast float %1581, %1583
  %1586 = uitofp i32 %1511 to float
  %1587 = uitofp i32 %1512 to float
  %1588 = fdiv fast float %1584, %1586
  %1589 = fdiv fast float %1585, %1587
  br label %1590

; <label>:1590                                    ; preds = %1565, %1492
  %1591 = phi float [ %1588, %1565 ], [ %1560, %1492 ]
  %1592 = phi float [ %1589, %1565 ], [ %1561, %1492 ]
  %1593 = and i32 %1486, 256
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1641, label %1595

; <label>:1595                                    ; preds = %1590
  %1596 = add i32 %20, 448
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = add i32 %1598, 0
  %1600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1600, %dx.types.Handle %61, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = add i32 %20, 132
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = shl i32 %1605, 4
  %1607 = and i32 %1606, 32752
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = lshr i32 %1605, 7
  %1610 = and i32 %1609, 32752
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = fsub fast float 1.000000e+00, %379
  %1613 = call float @dx.op.binary.f32(i32 35, float %1612, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1614 = bitcast float %379 to i32
  %1615 = sitofp i32 %1614 to float
  %1616 = fadd fast float %1615, 0xC1CFBF8940000000
  %1617 = fmul fast float %1611, %1616
  %1618 = fadd fast float %1617, 0x41CFBF8940000000
  %1619 = fptosi float %1618 to i32
  %1620 = bitcast i32 %1619 to float
  %1621 = bitcast float %1613 to i32
  %1622 = sitofp i32 %1621 to float
  %1623 = fadd fast float %1622, 0xC1CFBF8940000000
  %1624 = fmul fast float %1623, %1611
  %1625 = fadd fast float %1624, 0x41CFBF8940000000
  %1626 = fptosi float %1625 to i32
  %1627 = bitcast i32 %1626 to float
  %1628 = fmul fast float %1620, %1608
  %1629 = fmul fast float %1627, %1608
  %1630 = fsub fast float %1613, %1628
  %1631 = fadd fast float %1629, %1613
  %1632 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1634 = fsub fast float %1602, %1632
  %1635 = fsub fast float %1633, %1632
  %1636 = bitcast float %1635 to i32
  %1637 = sub nsw i32 2129859010, %1636
  %1638 = bitcast i32 %1637 to float
  %1639 = fmul fast float %1638, %1634
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  br label %1641

; <label>:1641                                    ; preds = %1595, %1590
  %1642 = phi float [ %1640, %1595 ], [ %379, %1590 ]
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 128
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1663, label %1647

; <label>:1647                                    ; preds = %1641
  %1648 = add i32 %20, 432
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = add i32 %1650, 0
  %1652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1652, %dx.types.Handle %61, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = and i32 %1656, 524288
  %1658 = icmp ne i32 %1657, 0
  %1659 = fcmp fast ogt float %1654, 0x3FE0101020000000
  %1660 = select i1 %1659, float 1.000000e+00, float 0.000000e+00
  %1661 = select i1 %1658, float %1660, float %1654
  %1662 = fmul fast float %1661, %1642
  br label %1663

; <label>:1663                                    ; preds = %1647, %1641
  %1664 = phi float [ %1662, %1647 ], [ %1642, %1641 ]
  %1665 = fcmp fast ult float %1664, 0x3F70101020000000
  br i1 %1665, label %2140, label %1666

; <label>:1666                                    ; preds = %1663
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 16
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %1869, label %1671

; <label>:1671                                    ; preds = %1666
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = add i32 %20, 384
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = add i32 %1676, 0
  %1678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1678, %dx.types.Handle %60, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = extractvalue %dx.types.ResRet.f32 %1679, 3
  %1684 = and i32 %1673, 255
  %1685 = uitofp i32 %1684 to float
  %1686 = lshr i32 %1673, 8
  %1687 = and i32 %1686, 255
  %1688 = uitofp i32 %1687 to float
  %1689 = fmul fast float %1683, %1685
  %1690 = fadd fast float %1689, %1688
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, 512
  %1695 = icmp eq i32 %1694, 0
  br i1 %1695, label %1704, label %1696

; <label>:1696                                    ; preds = %1671
  %1697 = add i32 %20, 464
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = add i32 %1699, 0
  %1701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1700, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1701, %dx.types.Handle %61, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  br label %1704

; <label>:1704                                    ; preds = %1696, %1671
  %1705 = phi float [ %1703, %1696 ], [ 1.000000e+00, %1671 ]
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 33554432
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1816, label %1710

; <label>:1710                                    ; preds = %1704
  %1711 = add i32 %20, 256
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = lshr i32 %1713, 16
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = add i32 %20, 260
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 65535
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = lshr i32 %1724, 24
  %1726 = uitofp i32 %1725 to float
  %1727 = fmul fast float %1726, 0x3F70101020000000
  %1728 = and i32 %1724, 255
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 0x3F70101020000000
  %1731 = lshr i32 %1724, 8
  %1732 = and i32 %1731, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = fmul fast float %1733, 0x3F70101020000000
  %1735 = lshr i32 %1724, 16
  %1736 = and i32 %1735, 255
  %1737 = uitofp i32 %1736 to float
  %1738 = fmul fast float %1737, 0x3F70101020000000
  %1739 = add i32 %20, 252
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 24
  %1743 = uitofp i32 %1742 to float
  %1744 = fmul fast float %1743, 0x3F70101020000000
  %1745 = and i32 %1741, 255
  %1746 = uitofp i32 %1745 to float
  %1747 = fmul fast float %1746, 0x3F70101020000000
  %1748 = lshr i32 %1741, 8
  %1749 = and i32 %1748, 255
  %1750 = uitofp i32 %1749 to float
  %1751 = fmul fast float %1750, 0x3F70101020000000
  %1752 = lshr i32 %1741, 16
  %1753 = and i32 %1752, 255
  %1754 = uitofp i32 %1753 to float
  %1755 = fmul fast float %1754, 0x3F70101020000000
  %1756 = bitcast float %1680 to i32
  %1757 = ashr i32 %1756, 1
  %1758 = sub nsw i32 1597463174, %1757
  %1759 = bitcast i32 %1758 to float
  %1760 = fmul fast float %1680, 5.000000e-01
  %1761 = fmul fast float %1759, %1759
  %1762 = fmul fast float %1761, %1760
  %1763 = fsub fast float 1.500000e+00, %1762
  %1764 = fmul fast float %1759, %1680
  %1765 = fmul fast float %1764, %1763
  %1766 = bitcast float %1681 to i32
  %1767 = ashr i32 %1766, 1
  %1768 = sub nsw i32 1597463174, %1767
  %1769 = bitcast i32 %1768 to float
  %1770 = fmul fast float %1681, 5.000000e-01
  %1771 = fmul fast float %1769, %1769
  %1772 = fmul fast float %1771, %1770
  %1773 = fsub fast float 1.500000e+00, %1772
  %1774 = fmul fast float %1769, %1681
  %1775 = fmul fast float %1774, %1773
  %1776 = bitcast float %1682 to i32
  %1777 = ashr i32 %1776, 1
  %1778 = sub nsw i32 1597463174, %1777
  %1779 = bitcast i32 %1778 to float
  %1780 = fmul fast float %1682, 5.000000e-01
  %1781 = fmul fast float %1779, %1779
  %1782 = fmul fast float %1781, %1780
  %1783 = fsub fast float 1.500000e+00, %1782
  %1784 = fmul fast float %1779, %1682
  %1785 = fmul fast float %1784, %1783
  %1786 = fsub fast float %1765, %1747
  %1787 = fsub fast float %1775, %1751
  %1788 = fsub fast float %1785, %1755
  %1789 = fmul fast float %1786, %1715
  %1790 = fmul fast float %1787, %1717
  %1791 = fmul fast float %1788, %1722
  %1792 = fadd fast float %1789, %1730
  %1793 = fadd fast float %1790, %1734
  %1794 = fadd fast float %1791, %1738
  %1795 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1796 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1797 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1798 = fmul fast float %1795, %1795
  %1799 = fmul fast float %1796, %1796
  %1800 = fmul fast float %1797, %1797
  %1801 = fsub fast float %1798, %1680
  %1802 = fsub fast float %1799, %1681
  %1803 = fsub fast float %1800, %1682
  %1804 = fmul fast float %1801, %1705
  %1805 = fmul fast float %1802, %1705
  %1806 = fmul fast float %1803, %1705
  %1807 = fadd fast float %1804, %1680
  %1808 = fadd fast float %1805, %1681
  %1809 = fadd fast float %1806, %1682
  %1810 = fadd fast float %1727, %1691
  %1811 = fsub fast float %1810, %1744
  %1812 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1813 = fsub fast float %1812, %1691
  %1814 = fmul fast float %1813, %1705
  %1815 = fadd fast float %1814, %1691
  br label %1869

; <label>:1816                                    ; preds = %1704
  %1817 = and i32 %1707, 134217728
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1853, label %1819

; <label>:1819                                    ; preds = %1816
  %1820 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %1821 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1822 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1823 = fadd fast float %1820, -5.000000e-01
  %1824 = fadd fast float %1821, -5.000000e-01
  %1825 = fadd fast float %1822, -5.000000e-01
  %1826 = fmul fast float %1823, %1705
  %1827 = fmul fast float %1824, %1705
  %1828 = fmul fast float %1825, %1705
  %1829 = fadd fast float %1826, 5.000000e-01
  %1830 = fadd fast float %1827, 5.000000e-01
  %1831 = fadd fast float %1828, 5.000000e-01
  %1832 = call float @dx.op.unary.f32(i32 24, float %1680)  ; Sqrt(value)
  %1833 = call float @dx.op.unary.f32(i32 24, float %1681)  ; Sqrt(value)
  %1834 = call float @dx.op.unary.f32(i32 24, float %1682)  ; Sqrt(value)
  %1835 = fmul fast float %1829, 2.000000e+00
  %1836 = fsub fast float 1.000000e+00, %1835
  %1837 = fmul fast float %1836, %1832
  %1838 = fadd fast float %1837, %1835
  %1839 = fmul fast float %1838, %1832
  %1840 = fmul fast float %1830, 2.000000e+00
  %1841 = fsub fast float 1.000000e+00, %1840
  %1842 = fmul fast float %1841, %1833
  %1843 = fadd fast float %1842, %1840
  %1844 = fmul fast float %1843, %1833
  %1845 = fmul fast float %1831, 2.000000e+00
  %1846 = fsub fast float 1.000000e+00, %1845
  %1847 = fmul fast float %1846, %1834
  %1848 = fadd fast float %1847, %1845
  %1849 = fmul fast float %1848, %1834
  %1850 = fmul fast float %1839, %1839
  %1851 = fmul fast float %1844, %1844
  %1852 = fmul fast float %1849, %1849
  br label %1869

; <label>:1853                                    ; preds = %1816
  %1854 = fmul fast float %269, %269
  %1855 = fmul fast float %273, %273
  %1856 = fmul fast float %277, %277
  %1857 = fadd fast float %1854, -1.000000e+00
  %1858 = fadd fast float %1855, -1.000000e+00
  %1859 = fadd fast float %1856, -1.000000e+00
  %1860 = fmul fast float %1705, %1857
  %1861 = fmul fast float %1705, %1858
  %1862 = fmul fast float %1705, %1859
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fmul fast float %1863, %1680
  %1867 = fmul fast float %1864, %1681
  %1868 = fmul fast float %1865, %1682
  br label %1869

; <label>:1869                                    ; preds = %1853, %1819, %1710, %1666
  %1870 = phi float [ %1815, %1710 ], [ %1691, %1819 ], [ %1691, %1853 ], [ 0x3FA23C0BE0000000, %1666 ]
  %1871 = phi float [ %1807, %1710 ], [ %1850, %1819 ], [ %1866, %1853 ], [ 1.000000e+00, %1666 ]
  %1872 = phi float [ %1808, %1710 ], [ %1851, %1819 ], [ %1867, %1853 ], [ 1.000000e+00, %1666 ]
  %1873 = phi float [ %1809, %1710 ], [ %1852, %1819 ], [ %1868, %1853 ], [ 1.000000e+00, %1666 ]
  %1874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.i32 %1874, 1
  %1876 = and i32 %1875, 1
  %1877 = icmp ne i32 %1876, 0
  %1878 = add i32 %20, 356
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 32
  %1882 = icmp ne i32 %1881, 0
  %1883 = and i1 %1877, %1882
  %1884 = select i1 %1883, float 1.000000e+00, float %1871
  %1885 = select i1 %1883, float 0x3FD3333340000000, float %1872
  %1886 = select i1 %1883, float 0x3FD3333340000000, float %1873
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %1888, 32
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1963, label %1891

; <label>:1891                                    ; preds = %1869
  %1892 = add i32 %20, 124
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %20, 400
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = add i32 %1897, 0
  %1899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1899, %dx.types.Handle %60, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.ResRet.f32 %1900, 3
  %1905 = and i32 %1894, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = lshr i32 %1894, 8
  %1908 = and i32 %1907, 255
  %1909 = uitofp i32 %1908 to float
  %1910 = lshr i32 %1894, 16
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101000000000
  %1914 = fmul fast float %1901, %1906
  %1915 = fadd fast float %1914, %1909
  %1916 = fmul fast float %1915, 0x3F70101000000000
  %1917 = fadd fast float %1902, -5.000000e-01
  %1918 = fadd fast float %1904, -5.000000e-01
  %1919 = fmul fast float %1917, %1913
  %1920 = fmul fast float %1918, %1913
  %1921 = fadd fast float %1919, 5.000000e-01
  %1922 = fadd fast float %1920, 5.000000e-01
  %1923 = fmul fast float %1921, 2.000000e+00
  %1924 = fadd fast float %1923, -1.000000e+00
  %1925 = fmul fast float %1922, 2.000000e+00
  %1926 = fadd fast float %1925, -1.000000e+00
  %1927 = fadd fast float %1924, %1926
  %1928 = fmul fast float %1927, 5.000000e-01
  %1929 = fsub fast float %1924, %1926
  %1930 = fmul fast float %1929, 5.000000e-01
  %1931 = call float @dx.op.unary.f32(i32 6, float %1928)  ; FAbs(value)
  %1932 = fsub fast float 1.000000e+00, %1931
  %1933 = call float @dx.op.unary.f32(i32 6, float %1930)  ; FAbs(value)
  %1934 = fsub fast float %1932, %1933
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1928, float %1930, float %1934, float %1928, float %1930, float %1934)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = call float @dx.op.unary.f32(i32 25, float %1935)  ; Rsqrt(value)
  %1937 = fmul fast float %1928, %1936
  %1938 = fmul fast float %1930, %1936
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = and i32 %1940, 67108864
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1959, label %1943

; <label>:1943                                    ; preds = %1891
  %1944 = add i32 %20, 312
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 65535
  %1948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1947)  ; LegacyF16ToF32(value)
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 65535
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = lshr i32 %1946, 16
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = fsub fast float %1916, %1954
  %1956 = fmul fast float %1955, %1948
  %1957 = fadd fast float %1956, %1952
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  br label %1959

; <label>:1959                                    ; preds = %1943, %1891
  %1960 = phi float [ %1958, %1943 ], [ %1916, %1891 ]
  %1961 = call float @dx.op.dot2.f32(i32 54, float %1937, float %1938, float %1495, float %1496)  ; Dot2(ax,ay,bx,by)
  %1962 = call float @dx.op.dot2.f32(i32 54, float %1937, float %1938, float %1497, float %1498)  ; Dot2(ax,ay,bx,by)
  br label %1963

; <label>:1963                                    ; preds = %1959, %1869
  %1964 = phi float [ %1960, %1959 ], [ 0x3FD6666660000000, %1869 ]
  %1965 = phi float [ %1961, %1959 ], [ 0.000000e+00, %1869 ]
  %1966 = phi float [ %1962, %1959 ], [ 0.000000e+00, %1869 ]
  %1967 = phi float [ %1903, %1959 ], [ 1.000000e+00, %1869 ]
  %1968 = add i32 %20, 128
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 255
  %1972 = uitofp i32 %1971 to float
  %1973 = lshr i32 %1970, 8
  %1974 = and i32 %1973, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = fmul fast float %1975, %1976
  %1978 = fadd fast float %1977, %1972
  %1979 = fmul fast float %1978, 0x3F70101020000000
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  br i1 %1483, label %1981, label %1986

; <label>:1981                                    ; preds = %1963
  %1982 = fsub fast float 1.000000e+00, %1664
  %1983 = fmul fast float %1982, %1475
  %1984 = fmul fast float %1982, %1476
  %1985 = fmul fast float %1982, %1477
  br label %1986

; <label>:1986                                    ; preds = %1981, %1963
  %1987 = phi float [ %1983, %1981 ], [ %1475, %1963 ]
  %1988 = phi float [ %1984, %1981 ], [ %1476, %1963 ]
  %1989 = phi float [ %1985, %1981 ], [ %1477, %1963 ]
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 3
  %1993 = icmp eq i32 %1992, 3
  br i1 %1993, label %2060, label %1994

; <label>:1994                                    ; preds = %1986
  %1995 = and i32 %1991, 16
  %1996 = icmp ne i32 %1995, 0
  %1997 = select i1 %1996, float %1664, float 0.000000e+00
  %1998 = icmp eq i32 %1992, 0
  br i1 %1998, label %1999, label %2015

; <label>:1999                                    ; preds = %1994
  %2000 = fsub fast float %1884, %1987
  %2001 = fsub fast float %1885, %1988
  %2002 = fsub fast float %1886, %1989
  %2003 = fmul fast float %1997, %2000
  %2004 = fmul fast float %1997, %2001
  %2005 = fmul fast float %1997, %2002
  %2006 = fadd fast float %2003, %1987
  %2007 = fadd fast float %2004, %1988
  %2008 = fadd fast float %2005, %1989
  %2009 = fsub fast float %1870, %1478
  %2010 = fmul fast float %1997, %2009
  %2011 = fadd fast float %2010, %1478
  %2012 = fsub fast float %1980, %1481
  %2013 = fmul fast float %1997, %2012
  %2014 = fadd fast float %2013, %1481
  br label %2060

; <label>:2015                                    ; preds = %1994
  %2016 = icmp eq i32 %1992, 1
  br i1 %2016, label %2017, label %2030

; <label>:2017                                    ; preds = %2015
  %2018 = fadd fast float %1884, -1.000000e+00
  %2019 = fadd fast float %1885, -1.000000e+00
  %2020 = fadd fast float %1886, -1.000000e+00
  %2021 = fmul fast float %1997, %2018
  %2022 = fmul fast float %1997, %2019
  %2023 = fmul fast float %1997, %2020
  %2024 = fadd fast float %2021, 1.000000e+00
  %2025 = fadd fast float %2022, 1.000000e+00
  %2026 = fadd fast float %2023, 1.000000e+00
  %2027 = fmul fast float %2024, %1987
  %2028 = fmul fast float %2025, %1988
  %2029 = fmul fast float %2026, %1989
  br label %2060

; <label>:2030                                    ; preds = %2015
  %2031 = icmp eq i32 %1992, 2
  br i1 %2031, label %2032, label %2060

; <label>:2032                                    ; preds = %2030
  %2033 = call float @dx.op.unary.f32(i32 24, float %1884)  ; Sqrt(value)
  %2034 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %2035 = call float @dx.op.unary.f32(i32 24, float %1886)  ; Sqrt(value)
  %2036 = fadd fast float %2033, -5.000000e-01
  %2037 = fadd fast float %2034, -5.000000e-01
  %2038 = fadd fast float %2035, -5.000000e-01
  %2039 = fmul fast float %2036, %1997
  %2040 = fmul fast float %2037, %1997
  %2041 = fmul fast float %2038, %1997
  %2042 = fadd fast float %2039, 5.000000e-01
  %2043 = fadd fast float %2040, 5.000000e-01
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fmul fast float %2042, 2.000000e+00
  %2046 = fsub fast float 1.000000e+00, %2045
  %2047 = fmul fast float %2046, %1987
  %2048 = fadd fast float %2047, %2045
  %2049 = fmul fast float %2048, %1987
  %2050 = fmul fast float %2043, 2.000000e+00
  %2051 = fsub fast float 1.000000e+00, %2050
  %2052 = fmul fast float %2051, %1988
  %2053 = fadd fast float %2052, %2050
  %2054 = fmul fast float %2053, %1988
  %2055 = fmul fast float %2044, 2.000000e+00
  %2056 = fsub fast float 1.000000e+00, %2055
  %2057 = fmul fast float %2056, %1989
  %2058 = fadd fast float %2057, %2055
  %2059 = fmul fast float %2058, %1989
  br label %2060

; <label>:2060                                    ; preds = %2032, %2030, %2017, %1999, %1986
  %2061 = phi float [ %1987, %1986 ], [ %2049, %2032 ], [ %1987, %2030 ], [ %2027, %2017 ], [ %2006, %1999 ]
  %2062 = phi float [ %1988, %1986 ], [ %2054, %2032 ], [ %1988, %2030 ], [ %2028, %2017 ], [ %2007, %1999 ]
  %2063 = phi float [ %1989, %1986 ], [ %2059, %2032 ], [ %1989, %2030 ], [ %2029, %2017 ], [ %2008, %1999 ]
  %2064 = phi float [ %1478, %1986 ], [ %1478, %2032 ], [ %1478, %2030 ], [ %1478, %2017 ], [ %2011, %1999 ]
  %2065 = phi float [ %1481, %1986 ], [ %1481, %2032 ], [ %1481, %2030 ], [ %1481, %2017 ], [ %2014, %1999 ]
  %2066 = and i32 %1991, 12
  %2067 = icmp eq i32 %2066, 12
  br i1 %2067, label %2140, label %2068

; <label>:2068                                    ; preds = %2060
  %2069 = and i32 %1991, 2097184
  %2070 = icmp eq i32 %2069, 2097184
  %2071 = select i1 %2070, float %1664, float 0.000000e+00
  %2072 = and i32 %1991, 4194336
  %2073 = icmp eq i32 %2072, 4194336
  %2074 = select i1 %2073, float %1664, float 0.000000e+00
  %2075 = and i32 %1991, 8388640
  %2076 = icmp eq i32 %2075, 8388640
  %2077 = select i1 %2076, float %1664, float 0.000000e+00
  %2078 = icmp eq i32 %2066, 0
  br i1 %2078, label %2079, label %2092

; <label>:2079                                    ; preds = %2068
  %2080 = fsub fast float %1965, %1473
  %2081 = fsub fast float %1966, %1474
  %2082 = fmul fast float %2071, %2080
  %2083 = fmul fast float %2071, %2081
  %2084 = fadd fast float %2082, %1473
  %2085 = fadd fast float %2083, %1474
  %2086 = fsub fast float %1967, %1480
  %2087 = fmul fast float %2074, %2086
  %2088 = fadd fast float %2087, %1480
  %2089 = fsub fast float %1964, %1479
  %2090 = fmul fast float %2077, %2089
  %2091 = fadd fast float %2090, %1479
  br label %2140

; <label>:2092                                    ; preds = %2068
  %2093 = icmp eq i32 %2066, 4
  br i1 %2093, label %2094, label %2126

; <label>:2094                                    ; preds = %2092
  %2095 = fmul fast float %2071, %1965
  %2096 = fmul fast float %2071, %1966
  %2097 = fadd fast float %2095, %1473
  %2098 = fadd fast float %2096, %1474
  %2099 = call float @dx.op.binary.f32(i32 36, float %1480, float %1967)  ; FMin(a,b)
  %2100 = fsub fast float %2099, %1480
  %2101 = fmul fast float %2100, %2074
  %2102 = fadd fast float %2101, %1480
  %2103 = fadd fast float %1964, %1479
  %2104 = fmul fast float %2103, 0x3FF337FAE0000000
  %2105 = fmul fast float %1479, %1479
  %2106 = fmul fast float %1964, %1964
  %2107 = fadd fast float %2106, %2105
  %2108 = fmul fast float %2107, 0x3FE5152B00000000
  %2109 = fmul fast float %1479, 0xBFCC1F85E0000000
  %2110 = fmul fast float %2109, %1964
  %2111 = fadd fast float %2110, 0xBFE1363700000000
  %2112 = fadd fast float %2111, %2104
  %2113 = fsub fast float %2112, %2108
  %2114 = fmul fast float %2103, 0x3FBA6F0D00000000
  %2115 = fmul fast float %2107, 0x3FD0432880000000
  %2116 = fmul fast float %1479, 0xBFEF110800000000
  %2117 = fmul fast float %2116, %1964
  %2118 = fadd fast float %2117, 1.000000e+00
  %2119 = fsub fast float %2118, %2114
  %2120 = fadd fast float %2119, %2115
  %2121 = fdiv fast float %2113, %2120
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fsub fast float %2122, %1479
  %2124 = fmul fast float %2123, %2077
  %2125 = fadd fast float %2124, %1479
  br label %2140

; <label>:2126                                    ; preds = %2092
  %2127 = icmp eq i32 %2066, 8
  br i1 %2127, label %2128, label %2140

; <label>:2128                                    ; preds = %2126
  %2129 = fmul fast float %2071, %1965
  %2130 = fmul fast float %2071, %1966
  %2131 = fadd fast float %2129, %1473
  %2132 = fadd fast float %2130, %1474
  %2133 = call float @dx.op.binary.f32(i32 36, float %1480, float %1967)  ; FMin(a,b)
  %2134 = fsub fast float %2133, %1480
  %2135 = fmul fast float %2134, %2074
  %2136 = fadd fast float %2135, %1480
  %2137 = fsub fast float %1964, %1479
  %2138 = fmul fast float %2077, %2137
  %2139 = fadd fast float %2138, %1479
  br label %2140

; <label>:2140                                    ; preds = %2128, %2126, %2094, %2079, %2060, %1663, %1482, %1472
  %2141 = phi float [ %1473, %2060 ], [ %1473, %1663 ], [ %1473, %1472 ], [ %2131, %2128 ], [ %1473, %2126 ], [ %2097, %2094 ], [ %2084, %2079 ], [ %1473, %1482 ]
  %2142 = phi float [ %1474, %2060 ], [ %1474, %1663 ], [ %1474, %1472 ], [ %2132, %2128 ], [ %1474, %2126 ], [ %2098, %2094 ], [ %2085, %2079 ], [ %1474, %1482 ]
  %2143 = phi float [ %2061, %2060 ], [ %1475, %1663 ], [ %1475, %1472 ], [ %2061, %2128 ], [ %2061, %2126 ], [ %2061, %2094 ], [ %2061, %2079 ], [ %1475, %1482 ]
  %2144 = phi float [ %2062, %2060 ], [ %1476, %1663 ], [ %1476, %1472 ], [ %2062, %2128 ], [ %2062, %2126 ], [ %2062, %2094 ], [ %2062, %2079 ], [ %1476, %1482 ]
  %2145 = phi float [ %2063, %2060 ], [ %1477, %1663 ], [ %1477, %1472 ], [ %2063, %2128 ], [ %2063, %2126 ], [ %2063, %2094 ], [ %2063, %2079 ], [ %1477, %1482 ]
  %2146 = phi float [ %2064, %2060 ], [ %1478, %1663 ], [ %1478, %1472 ], [ %2064, %2128 ], [ %2064, %2126 ], [ %2064, %2094 ], [ %2064, %2079 ], [ %1478, %1482 ]
  %2147 = phi float [ %1479, %2060 ], [ %1479, %1663 ], [ %1479, %1472 ], [ %2139, %2128 ], [ %1479, %2126 ], [ %2125, %2094 ], [ %2091, %2079 ], [ %1479, %1482 ]
  %2148 = phi float [ %1480, %2060 ], [ %1480, %1663 ], [ %1480, %1472 ], [ %2136, %2128 ], [ %1480, %2126 ], [ %2102, %2094 ], [ %2088, %2079 ], [ %1480, %1482 ]
  %2149 = phi float [ %2065, %2060 ], [ %1481, %1663 ], [ %1481, %1472 ], [ %2065, %2128 ], [ %2065, %2126 ], [ %2065, %2094 ], [ %2065, %2079 ], [ %1481, %1482 ]
  br i1 %332, label %2808, label %2150

; <label>:2150                                    ; preds = %2140
  %2151 = icmp ult i32 %383, 4
  %2152 = add i32 %20, 72
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %20, 76
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = or i32 %2157, %2154
  %2159 = icmp eq i32 %2158, 0
  br i1 %2159, label %2808, label %2160

; <label>:2160                                    ; preds = %2150
  %2161 = and i32 %2154, 262144
  %2162 = icmp ne i32 %2161, 0
  %2163 = select i1 %2162, float %25, float 1.000000e+00
  %2164 = select i1 %2162, float %26, float 0.000000e+00
  %2165 = select i1 %2162, float %27, float 0.000000e+00
  %2166 = select i1 %2162, float %28, float 1.000000e+00
  %2167 = select i1 %2162, float %29, float %52
  %2168 = select i1 %2162, float %30, float %53
  %2169 = add i32 %20, 332
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = lshr i32 %2171, 16
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = fmul fast float %2173, 0x3F50624DE0000000
  %2175 = add i32 %20, 136
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = lshr i32 %2177, 16
  %2179 = and i32 %2178, 255
  %2180 = lshr i32 %2177, 24
  %2181 = add i32 %20, 340
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 65535
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = lshr i32 %2183, 16
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = add i32 %20, 80
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = lshr i32 %2190, 22
  %2192 = shl nuw nsw i32 %2191, 5
  %2193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2192)  ; LegacyF16ToF32(value)
  %2194 = shl i32 %2190, 4
  %2195 = and i32 %2194, 32752
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = lshr i32 %2190, 7
  %2198 = and i32 %2197, 32752
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2202 = fmul fast float %2201, 1.000000e+03
  %2203 = fmul fast float %322, %2202
  %2204 = call float @dx.op.unary.f32(i32 22, float %2203)  ; Frc(value)
  %2205 = fadd fast float %2204, %312
  %2206 = fmul fast float %323, %2202
  %2207 = call float @dx.op.unary.f32(i32 22, float %2206)  ; Frc(value)
  %2208 = fadd fast float %2207, %314
  %2209 = fmul fast float %2174, %2202
  %2210 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2211 = fmul fast float %2210, 0x401921FB60000000
  %2212 = fadd fast float %2211, %2193
  %2213 = call float @dx.op.unary.f32(i32 13, float %2212)  ; Sin(value)
  %2214 = call float @dx.op.unary.f32(i32 12, float %2212)  ; Cos(value)
  %2215 = fsub fast float -0.000000e+00, %2213
  %2216 = fadd fast float %2167, -5.000000e-01
  %2217 = fadd fast float %2168, -5.000000e-01
  %2218 = fmul fast float %2185, %2216
  %2219 = fmul fast float %2187, %2217
  %2220 = fadd fast float %2218, 5.000000e-01
  %2221 = fadd fast float %2219, 5.000000e-01
  %2222 = fmul fast float %2196, %2220
  %2223 = fmul fast float %2199, %2221
  %2224 = fmul fast float %2214, %2222
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2215, float %2223, float %2224)  ; FMad(a,b,c)
  %2226 = fmul fast float %2213, %2222
  %2227 = call float @dx.op.tertiary.f32(i32 46, float %2214, float %2223, float %2226)  ; FMad(a,b,c)
  %2228 = fadd fast float %2205, %2225
  %2229 = fadd fast float %2208, %2227
  %2230 = icmp ugt i32 %2179, 1
  %2231 = icmp ugt i32 %2177, 33554431
  %2232 = or i1 %2231, %2230
  br i1 %2232, label %2233, label %2258

; <label>:2233                                    ; preds = %2160
  %2234 = add i32 %20, 276
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = lshr i32 %2236, 16
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = fmul fast float %2201, %2238
  %2240 = call float @dx.op.unary.f32(i32 22, float %2239)  ; Frc(value)
  %2241 = mul nuw nsw i32 %2179, %2180
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2240, %2242
  %2244 = call float @dx.op.unary.f32(i32 27, float %2243)  ; Round_ni(value)
  %2245 = fptoui float %2244 to i32
  %2246 = urem i32 %2245, %2179
  %2247 = udiv i32 %2245, %2180
  %2248 = call float @dx.op.unary.f32(i32 22, float %2228)  ; Frc(value)
  %2249 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2250 = uitofp i32 %2246 to float
  %2251 = uitofp i32 %2247 to float
  %2252 = fadd fast float %2248, %2250
  %2253 = fadd fast float %2249, %2251
  %2254 = uitofp i32 %2179 to float
  %2255 = uitofp i32 %2180 to float
  %2256 = fdiv fast float %2252, %2254
  %2257 = fdiv fast float %2253, %2255
  br label %2258

; <label>:2258                                    ; preds = %2233, %2160
  %2259 = phi float [ %2256, %2233 ], [ %2228, %2160 ]
  %2260 = phi float [ %2257, %2233 ], [ %2229, %2160 ]
  %2261 = and i32 %2154, 256
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2309, label %2263

; <label>:2263                                    ; preds = %2258
  %2264 = add i32 %20, 452
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %2266, 0
  %2268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2268, %dx.types.Handle %61, float %2259, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = add i32 %20, 148
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = shl i32 %2273, 4
  %2275 = and i32 %2274, 32752
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = lshr i32 %2273, 7
  %2278 = and i32 %2277, 32752
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = fsub fast float 1.000000e+00, %378
  %2281 = call float @dx.op.binary.f32(i32 35, float %2280, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2282 = bitcast float %378 to i32
  %2283 = sitofp i32 %2282 to float
  %2284 = fadd fast float %2283, 0xC1CFBF8940000000
  %2285 = fmul fast float %2279, %2284
  %2286 = fadd fast float %2285, 0x41CFBF8940000000
  %2287 = fptosi float %2286 to i32
  %2288 = bitcast i32 %2287 to float
  %2289 = bitcast float %2281 to i32
  %2290 = sitofp i32 %2289 to float
  %2291 = fadd fast float %2290, 0xC1CFBF8940000000
  %2292 = fmul fast float %2291, %2279
  %2293 = fadd fast float %2292, 0x41CFBF8940000000
  %2294 = fptosi float %2293 to i32
  %2295 = bitcast i32 %2294 to float
  %2296 = fmul fast float %2288, %2276
  %2297 = fmul fast float %2295, %2276
  %2298 = fsub fast float %2281, %2296
  %2299 = fadd fast float %2297, %2281
  %2300 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2301 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2302 = fsub fast float %2270, %2300
  %2303 = fsub fast float %2301, %2300
  %2304 = bitcast float %2303 to i32
  %2305 = sub nsw i32 2129859010, %2304
  %2306 = bitcast i32 %2305 to float
  %2307 = fmul fast float %2306, %2302
  %2308 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  br label %2309

; <label>:2309                                    ; preds = %2263, %2258
  %2310 = phi float [ %2308, %2263 ], [ %378, %2258 ]
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 128
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2331, label %2315

; <label>:2315                                    ; preds = %2309
  %2316 = add i32 %20, 436
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = add i32 %2318, 0
  %2320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2320, %dx.types.Handle %61, float %2259, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 524288
  %2326 = icmp ne i32 %2325, 0
  %2327 = fcmp fast ogt float %2322, 0x3FE0101020000000
  %2328 = select i1 %2327, float 1.000000e+00, float 0.000000e+00
  %2329 = select i1 %2326, float %2328, float %2322
  %2330 = fmul fast float %2329, %2310
  br label %2331

; <label>:2331                                    ; preds = %2315, %2309
  %2332 = phi float [ %2330, %2315 ], [ %2310, %2309 ]
  %2333 = fcmp fast ult float %2332, 0x3F70101020000000
  br i1 %2333, label %2808, label %2334

; <label>:2334                                    ; preds = %2331
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 16
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2537, label %2339

; <label>:2339                                    ; preds = %2334
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %20, 388
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2346, %dx.types.Handle %60, float %2259, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = extractvalue %dx.types.ResRet.f32 %2347, 3
  %2352 = and i32 %2341, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = lshr i32 %2341, 8
  %2355 = and i32 %2354, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = fmul fast float %2351, %2353
  %2358 = fadd fast float %2357, %2356
  %2359 = fmul fast float %2358, 0x3F70101000000000
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 512
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2372, label %2364

; <label>:2364                                    ; preds = %2339
  %2365 = add i32 %20, 468
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = add i32 %2367, 0
  %2369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2369, %dx.types.Handle %61, float %2259, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  br label %2372

; <label>:2372                                    ; preds = %2364, %2339
  %2373 = phi float [ %2371, %2364 ], [ 1.000000e+00, %2339 ]
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 33554432
  %2377 = icmp eq i32 %2376, 0
  br i1 %2377, label %2484, label %2378

; <label>:2378                                    ; preds = %2372
  %2379 = add i32 %20, 272
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 65535
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = lshr i32 %2381, 16
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = add i32 %20, 276
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 65535
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 24
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = and i32 %2392, 255
  %2397 = uitofp i32 %2396 to float
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = lshr i32 %2392, 8
  %2400 = and i32 %2399, 255
  %2401 = uitofp i32 %2400 to float
  %2402 = fmul fast float %2401, 0x3F70101020000000
  %2403 = lshr i32 %2392, 16
  %2404 = and i32 %2403, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = add i32 %20, 268
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = lshr i32 %2409, 24
  %2411 = uitofp i32 %2410 to float
  %2412 = fmul fast float %2411, 0x3F70101020000000
  %2413 = and i32 %2409, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = lshr i32 %2409, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = lshr i32 %2409, 16
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = bitcast float %2348 to i32
  %2425 = ashr i32 %2424, 1
  %2426 = sub nsw i32 1597463174, %2425
  %2427 = bitcast i32 %2426 to float
  %2428 = fmul fast float %2348, 5.000000e-01
  %2429 = fmul fast float %2427, %2427
  %2430 = fmul fast float %2429, %2428
  %2431 = fsub fast float 1.500000e+00, %2430
  %2432 = fmul fast float %2427, %2348
  %2433 = fmul fast float %2432, %2431
  %2434 = bitcast float %2349 to i32
  %2435 = ashr i32 %2434, 1
  %2436 = sub nsw i32 1597463174, %2435
  %2437 = bitcast i32 %2436 to float
  %2438 = fmul fast float %2349, 5.000000e-01
  %2439 = fmul fast float %2437, %2437
  %2440 = fmul fast float %2439, %2438
  %2441 = fsub fast float 1.500000e+00, %2440
  %2442 = fmul fast float %2437, %2349
  %2443 = fmul fast float %2442, %2441
  %2444 = bitcast float %2350 to i32
  %2445 = ashr i32 %2444, 1
  %2446 = sub nsw i32 1597463174, %2445
  %2447 = bitcast i32 %2446 to float
  %2448 = fmul fast float %2350, 5.000000e-01
  %2449 = fmul fast float %2447, %2447
  %2450 = fmul fast float %2449, %2448
  %2451 = fsub fast float 1.500000e+00, %2450
  %2452 = fmul fast float %2447, %2350
  %2453 = fmul fast float %2452, %2451
  %2454 = fsub fast float %2433, %2415
  %2455 = fsub fast float %2443, %2419
  %2456 = fsub fast float %2453, %2423
  %2457 = fmul fast float %2454, %2383
  %2458 = fmul fast float %2455, %2385
  %2459 = fmul fast float %2456, %2390
  %2460 = fadd fast float %2457, %2398
  %2461 = fadd fast float %2458, %2402
  %2462 = fadd fast float %2459, %2406
  %2463 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2464 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2466 = fmul fast float %2463, %2463
  %2467 = fmul fast float %2464, %2464
  %2468 = fmul fast float %2465, %2465
  %2469 = fsub fast float %2466, %2348
  %2470 = fsub fast float %2467, %2349
  %2471 = fsub fast float %2468, %2350
  %2472 = fmul fast float %2469, %2373
  %2473 = fmul fast float %2470, %2373
  %2474 = fmul fast float %2471, %2373
  %2475 = fadd fast float %2472, %2348
  %2476 = fadd fast float %2473, %2349
  %2477 = fadd fast float %2474, %2350
  %2478 = fadd fast float %2395, %2359
  %2479 = fsub fast float %2478, %2412
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fsub fast float %2480, %2359
  %2482 = fmul fast float %2481, %2373
  %2483 = fadd fast float %2482, %2359
  br label %2537

; <label>:2484                                    ; preds = %2372
  %2485 = and i32 %2375, 134217728
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %2521, label %2487

; <label>:2487                                    ; preds = %2484
  %2488 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2489 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2491 = fadd fast float %2488, -5.000000e-01
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fmul fast float %2491, %2373
  %2495 = fmul fast float %2492, %2373
  %2496 = fmul fast float %2493, %2373
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = call float @dx.op.unary.f32(i32 24, float %2348)  ; Sqrt(value)
  %2501 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2502 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2503 = fmul fast float %2497, 2.000000e+00
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2500
  %2506 = fadd fast float %2505, %2503
  %2507 = fmul fast float %2506, %2500
  %2508 = fmul fast float %2498, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2501
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2501
  %2513 = fmul fast float %2499, 2.000000e+00
  %2514 = fsub fast float 1.000000e+00, %2513
  %2515 = fmul fast float %2514, %2502
  %2516 = fadd fast float %2515, %2513
  %2517 = fmul fast float %2516, %2502
  %2518 = fmul fast float %2507, %2507
  %2519 = fmul fast float %2512, %2512
  %2520 = fmul fast float %2517, %2517
  br label %2537

; <label>:2521                                    ; preds = %2484
  %2522 = fmul fast float %299, %299
  %2523 = fmul fast float %303, %303
  %2524 = fmul fast float %307, %307
  %2525 = fadd fast float %2522, -1.000000e+00
  %2526 = fadd fast float %2523, -1.000000e+00
  %2527 = fadd fast float %2524, -1.000000e+00
  %2528 = fmul fast float %2373, %2525
  %2529 = fmul fast float %2373, %2526
  %2530 = fmul fast float %2373, %2527
  %2531 = fadd fast float %2528, 1.000000e+00
  %2532 = fadd fast float %2529, 1.000000e+00
  %2533 = fadd fast float %2530, 1.000000e+00
  %2534 = fmul fast float %2531, %2348
  %2535 = fmul fast float %2532, %2349
  %2536 = fmul fast float %2533, %2350
  br label %2537

; <label>:2537                                    ; preds = %2521, %2487, %2378, %2334
  %2538 = phi float [ %2483, %2378 ], [ %2359, %2487 ], [ %2359, %2521 ], [ 0x3FA23C0BE0000000, %2334 ]
  %2539 = phi float [ %2475, %2378 ], [ %2518, %2487 ], [ %2534, %2521 ], [ 1.000000e+00, %2334 ]
  %2540 = phi float [ %2476, %2378 ], [ %2519, %2487 ], [ %2535, %2521 ], [ 1.000000e+00, %2334 ]
  %2541 = phi float [ %2477, %2378 ], [ %2520, %2487 ], [ %2536, %2521 ], [ 1.000000e+00, %2334 ]
  %2542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.i32 %2542, 1
  %2544 = and i32 %2543, 1
  %2545 = icmp ne i32 %2544, 0
  %2546 = add i32 %20, 356
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 32
  %2550 = icmp ne i32 %2549, 0
  %2551 = and i1 %2545, %2550
  %2552 = select i1 %2551, float 1.000000e+00, float %2539
  %2553 = select i1 %2551, float 0x3FD3333340000000, float %2540
  %2554 = select i1 %2551, float 0x3FD3333340000000, float %2541
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 32
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2631, label %2559

; <label>:2559                                    ; preds = %2537
  %2560 = add i32 %20, 140
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %20, 404
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %60, float %2259, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.ResRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.ResRet.f32 %2568, 2
  %2572 = extractvalue %dx.types.ResRet.f32 %2568, 3
  %2573 = and i32 %2562, 255
  %2574 = uitofp i32 %2573 to float
  %2575 = lshr i32 %2562, 8
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = lshr i32 %2562, 16
  %2579 = and i32 %2578, 255
  %2580 = uitofp i32 %2579 to float
  %2581 = fmul fast float %2580, 0x3F70101000000000
  %2582 = fmul fast float %2569, %2574
  %2583 = fadd fast float %2582, %2577
  %2584 = fmul fast float %2583, 0x3F70101000000000
  %2585 = fadd fast float %2570, -5.000000e-01
  %2586 = fadd fast float %2572, -5.000000e-01
  %2587 = fmul fast float %2585, %2581
  %2588 = fmul fast float %2586, %2581
  %2589 = fadd fast float %2587, 5.000000e-01
  %2590 = fadd fast float %2588, 5.000000e-01
  %2591 = fmul fast float %2589, 2.000000e+00
  %2592 = fadd fast float %2591, -1.000000e+00
  %2593 = fmul fast float %2590, 2.000000e+00
  %2594 = fadd fast float %2593, -1.000000e+00
  %2595 = fadd fast float %2592, %2594
  %2596 = fmul fast float %2595, 5.000000e-01
  %2597 = fsub fast float %2592, %2594
  %2598 = fmul fast float %2597, 5.000000e-01
  %2599 = call float @dx.op.unary.f32(i32 6, float %2596)  ; FAbs(value)
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = call float @dx.op.unary.f32(i32 6, float %2598)  ; FAbs(value)
  %2602 = fsub fast float %2600, %2601
  %2603 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2598, float %2602, float %2596, float %2598, float %2602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2604 = call float @dx.op.unary.f32(i32 25, float %2603)  ; Rsqrt(value)
  %2605 = fmul fast float %2596, %2604
  %2606 = fmul fast float %2598, %2604
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 67108864
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2627, label %2611

; <label>:2611                                    ; preds = %2559
  %2612 = add i32 %20, 328
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 65535
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = and i32 %2618, 65535
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = lshr i32 %2614, 16
  %2622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2621)  ; LegacyF16ToF32(value)
  %2623 = fsub fast float %2584, %2622
  %2624 = fmul fast float %2623, %2616
  %2625 = fadd fast float %2624, %2620
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  br label %2627

; <label>:2627                                    ; preds = %2611, %2559
  %2628 = phi float [ %2626, %2611 ], [ %2584, %2559 ]
  %2629 = call float @dx.op.dot2.f32(i32 54, float %2605, float %2606, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  %2630 = call float @dx.op.dot2.f32(i32 54, float %2605, float %2606, float %2165, float %2166)  ; Dot2(ax,ay,bx,by)
  br label %2631

; <label>:2631                                    ; preds = %2627, %2537
  %2632 = phi float [ %2628, %2627 ], [ 0x3FD6666660000000, %2537 ]
  %2633 = phi float [ %2629, %2627 ], [ 0.000000e+00, %2537 ]
  %2634 = phi float [ %2630, %2627 ], [ 0.000000e+00, %2537 ]
  %2635 = phi float [ %2571, %2627 ], [ 1.000000e+00, %2537 ]
  %2636 = add i32 %20, 144
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = lshr i32 %2638, 8
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2552, float %2553, float %2554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = fmul fast float %2643, %2644
  %2646 = fadd fast float %2645, %2640
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  br i1 %2151, label %2649, label %2654

; <label>:2649                                    ; preds = %2631
  %2650 = fsub fast float 1.000000e+00, %2332
  %2651 = fmul fast float %2650, %2143
  %2652 = fmul fast float %2650, %2144
  %2653 = fmul fast float %2650, %2145
  br label %2654

; <label>:2654                                    ; preds = %2649, %2631
  %2655 = phi float [ %2651, %2649 ], [ %2143, %2631 ]
  %2656 = phi float [ %2652, %2649 ], [ %2144, %2631 ]
  %2657 = phi float [ %2653, %2649 ], [ %2145, %2631 ]
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 3
  %2661 = icmp eq i32 %2660, 3
  br i1 %2661, label %2728, label %2662

; <label>:2662                                    ; preds = %2654
  %2663 = and i32 %2659, 16
  %2664 = icmp ne i32 %2663, 0
  %2665 = select i1 %2664, float %2332, float 0.000000e+00
  %2666 = icmp eq i32 %2660, 0
  br i1 %2666, label %2667, label %2683

; <label>:2667                                    ; preds = %2662
  %2668 = fsub fast float %2552, %2655
  %2669 = fsub fast float %2553, %2656
  %2670 = fsub fast float %2554, %2657
  %2671 = fmul fast float %2665, %2668
  %2672 = fmul fast float %2665, %2669
  %2673 = fmul fast float %2665, %2670
  %2674 = fadd fast float %2671, %2655
  %2675 = fadd fast float %2672, %2656
  %2676 = fadd fast float %2673, %2657
  %2677 = fsub fast float %2538, %2146
  %2678 = fmul fast float %2665, %2677
  %2679 = fadd fast float %2678, %2146
  %2680 = fsub fast float %2648, %2149
  %2681 = fmul fast float %2665, %2680
  %2682 = fadd fast float %2681, %2149
  br label %2728

; <label>:2683                                    ; preds = %2662
  %2684 = icmp eq i32 %2660, 1
  br i1 %2684, label %2685, label %2698

; <label>:2685                                    ; preds = %2683
  %2686 = fadd fast float %2552, -1.000000e+00
  %2687 = fadd fast float %2553, -1.000000e+00
  %2688 = fadd fast float %2554, -1.000000e+00
  %2689 = fmul fast float %2665, %2686
  %2690 = fmul fast float %2665, %2687
  %2691 = fmul fast float %2665, %2688
  %2692 = fadd fast float %2689, 1.000000e+00
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fadd fast float %2691, 1.000000e+00
  %2695 = fmul fast float %2692, %2655
  %2696 = fmul fast float %2693, %2656
  %2697 = fmul fast float %2694, %2657
  br label %2728

; <label>:2698                                    ; preds = %2683
  %2699 = icmp eq i32 %2660, 2
  br i1 %2699, label %2700, label %2728

; <label>:2700                                    ; preds = %2698
  %2701 = call float @dx.op.unary.f32(i32 24, float %2552)  ; Sqrt(value)
  %2702 = call float @dx.op.unary.f32(i32 24, float %2553)  ; Sqrt(value)
  %2703 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2704 = fadd fast float %2701, -5.000000e-01
  %2705 = fadd fast float %2702, -5.000000e-01
  %2706 = fadd fast float %2703, -5.000000e-01
  %2707 = fmul fast float %2704, %2665
  %2708 = fmul fast float %2705, %2665
  %2709 = fmul fast float %2706, %2665
  %2710 = fadd fast float %2707, 5.000000e-01
  %2711 = fadd fast float %2708, 5.000000e-01
  %2712 = fadd fast float %2709, 5.000000e-01
  %2713 = fmul fast float %2710, 2.000000e+00
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fmul fast float %2714, %2655
  %2716 = fadd fast float %2715, %2713
  %2717 = fmul fast float %2716, %2655
  %2718 = fmul fast float %2711, 2.000000e+00
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = fmul fast float %2719, %2656
  %2721 = fadd fast float %2720, %2718
  %2722 = fmul fast float %2721, %2656
  %2723 = fmul fast float %2712, 2.000000e+00
  %2724 = fsub fast float 1.000000e+00, %2723
  %2725 = fmul fast float %2724, %2657
  %2726 = fadd fast float %2725, %2723
  %2727 = fmul fast float %2726, %2657
  br label %2728

; <label>:2728                                    ; preds = %2700, %2698, %2685, %2667, %2654
  %2729 = phi float [ %2655, %2654 ], [ %2717, %2700 ], [ %2655, %2698 ], [ %2695, %2685 ], [ %2674, %2667 ]
  %2730 = phi float [ %2656, %2654 ], [ %2722, %2700 ], [ %2656, %2698 ], [ %2696, %2685 ], [ %2675, %2667 ]
  %2731 = phi float [ %2657, %2654 ], [ %2727, %2700 ], [ %2657, %2698 ], [ %2697, %2685 ], [ %2676, %2667 ]
  %2732 = phi float [ %2146, %2654 ], [ %2146, %2700 ], [ %2146, %2698 ], [ %2146, %2685 ], [ %2679, %2667 ]
  %2733 = phi float [ %2149, %2654 ], [ %2149, %2700 ], [ %2149, %2698 ], [ %2149, %2685 ], [ %2682, %2667 ]
  %2734 = and i32 %2659, 12
  %2735 = icmp eq i32 %2734, 12
  br i1 %2735, label %2808, label %2736

; <label>:2736                                    ; preds = %2728
  %2737 = and i32 %2659, 2097184
  %2738 = icmp eq i32 %2737, 2097184
  %2739 = select i1 %2738, float %2332, float 0.000000e+00
  %2740 = and i32 %2659, 4194336
  %2741 = icmp eq i32 %2740, 4194336
  %2742 = select i1 %2741, float %2332, float 0.000000e+00
  %2743 = and i32 %2659, 8388640
  %2744 = icmp eq i32 %2743, 8388640
  %2745 = select i1 %2744, float %2332, float 0.000000e+00
  %2746 = icmp eq i32 %2734, 0
  br i1 %2746, label %2747, label %2760

; <label>:2747                                    ; preds = %2736
  %2748 = fsub fast float %2633, %2141
  %2749 = fsub fast float %2634, %2142
  %2750 = fmul fast float %2739, %2748
  %2751 = fmul fast float %2739, %2749
  %2752 = fadd fast float %2750, %2141
  %2753 = fadd fast float %2751, %2142
  %2754 = fsub fast float %2635, %2148
  %2755 = fmul fast float %2742, %2754
  %2756 = fadd fast float %2755, %2148
  %2757 = fsub fast float %2632, %2147
  %2758 = fmul fast float %2745, %2757
  %2759 = fadd fast float %2758, %2147
  br label %2808

; <label>:2760                                    ; preds = %2736
  %2761 = icmp eq i32 %2734, 4
  br i1 %2761, label %2762, label %2794

; <label>:2762                                    ; preds = %2760
  %2763 = fmul fast float %2739, %2633
  %2764 = fmul fast float %2739, %2634
  %2765 = fadd fast float %2763, %2141
  %2766 = fadd fast float %2764, %2142
  %2767 = call float @dx.op.binary.f32(i32 36, float %2148, float %2635)  ; FMin(a,b)
  %2768 = fsub fast float %2767, %2148
  %2769 = fmul fast float %2768, %2742
  %2770 = fadd fast float %2769, %2148
  %2771 = fadd fast float %2632, %2147
  %2772 = fmul fast float %2771, 0x3FF337FAE0000000
  %2773 = fmul fast float %2147, %2147
  %2774 = fmul fast float %2632, %2632
  %2775 = fadd fast float %2774, %2773
  %2776 = fmul fast float %2775, 0x3FE5152B00000000
  %2777 = fmul fast float %2147, 0xBFCC1F85E0000000
  %2778 = fmul fast float %2777, %2632
  %2779 = fadd fast float %2778, 0xBFE1363700000000
  %2780 = fadd fast float %2779, %2772
  %2781 = fsub fast float %2780, %2776
  %2782 = fmul fast float %2771, 0x3FBA6F0D00000000
  %2783 = fmul fast float %2775, 0x3FD0432880000000
  %2784 = fmul fast float %2147, 0xBFEF110800000000
  %2785 = fmul fast float %2784, %2632
  %2786 = fadd fast float %2785, 1.000000e+00
  %2787 = fsub fast float %2786, %2782
  %2788 = fadd fast float %2787, %2783
  %2789 = fdiv fast float %2781, %2788
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = fsub fast float %2790, %2147
  %2792 = fmul fast float %2791, %2745
  %2793 = fadd fast float %2792, %2147
  br label %2808

; <label>:2794                                    ; preds = %2760
  %2795 = icmp eq i32 %2734, 8
  br i1 %2795, label %2796, label %2808

; <label>:2796                                    ; preds = %2794
  %2797 = fmul fast float %2739, %2633
  %2798 = fmul fast float %2739, %2634
  %2799 = fadd fast float %2797, %2141
  %2800 = fadd fast float %2798, %2142
  %2801 = call float @dx.op.binary.f32(i32 36, float %2148, float %2635)  ; FMin(a,b)
  %2802 = fsub fast float %2801, %2148
  %2803 = fmul fast float %2802, %2742
  %2804 = fadd fast float %2803, %2148
  %2805 = fsub fast float %2632, %2147
  %2806 = fmul fast float %2745, %2805
  %2807 = fadd fast float %2806, %2147
  br label %2808

; <label>:2808                                    ; preds = %2796, %2794, %2762, %2747, %2728, %2331, %2150, %2140
  %2809 = phi float [ %2141, %2728 ], [ %2141, %2331 ], [ %2141, %2140 ], [ %2141, %2150 ], [ %2752, %2747 ], [ %2765, %2762 ], [ %2141, %2794 ], [ %2799, %2796 ]
  %2810 = phi float [ %2142, %2728 ], [ %2142, %2331 ], [ %2142, %2140 ], [ %2142, %2150 ], [ %2753, %2747 ], [ %2766, %2762 ], [ %2142, %2794 ], [ %2800, %2796 ]
  %2811 = phi float [ %2729, %2728 ], [ %2143, %2331 ], [ %2143, %2140 ], [ %2143, %2150 ], [ %2729, %2747 ], [ %2729, %2762 ], [ %2729, %2794 ], [ %2729, %2796 ]
  %2812 = phi float [ %2730, %2728 ], [ %2144, %2331 ], [ %2144, %2140 ], [ %2144, %2150 ], [ %2730, %2747 ], [ %2730, %2762 ], [ %2730, %2794 ], [ %2730, %2796 ]
  %2813 = phi float [ %2731, %2728 ], [ %2145, %2331 ], [ %2145, %2140 ], [ %2145, %2150 ], [ %2731, %2747 ], [ %2731, %2762 ], [ %2731, %2794 ], [ %2731, %2796 ]
  %2814 = phi float [ %2732, %2728 ], [ %2146, %2331 ], [ %2146, %2140 ], [ %2146, %2150 ], [ %2732, %2747 ], [ %2732, %2762 ], [ %2732, %2794 ], [ %2732, %2796 ]
  %2815 = phi float [ %2147, %2728 ], [ %2147, %2331 ], [ %2147, %2140 ], [ %2147, %2150 ], [ %2759, %2747 ], [ %2793, %2762 ], [ %2147, %2794 ], [ %2807, %2796 ]
  %2816 = phi float [ %2148, %2728 ], [ %2148, %2331 ], [ %2148, %2140 ], [ %2148, %2150 ], [ %2756, %2747 ], [ %2770, %2762 ], [ %2148, %2794 ], [ %2804, %2796 ]
  %2817 = phi float [ %2733, %2728 ], [ %2149, %2331 ], [ %2149, %2140 ], [ %2149, %2150 ], [ %2733, %2747 ], [ %2733, %2762 ], [ %2733, %2794 ], [ %2733, %2796 ]
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2822, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %2821, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2827 = add i32 %20, 360
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.i32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.i32 %2828, 2
  %2832 = bitcast i32 %2829 to float
  %2833 = bitcast i32 %2830 to float
  %2834 = bitcast i32 %2831 to float
  %2835 = fmul fast float %2832, %2824
  %2836 = fmul fast float %2833, %2825
  %2837 = fmul fast float %2834, %2826
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = fmul fast float %2835, %2839
  %2841 = fmul fast float %2836, %2839
  %2842 = fmul fast float %2837, %2839
  %2843 = call float @dx.op.dot2.f32(i32 54, float %2809, float %2810, float %2809, float %2810)  ; Dot2(ax,ay,bx,by)
  %2844 = fmul fast float %2843, 0x3FE3333340000000
  %2845 = fsub fast float 1.000000e+00, %2844
  %2846 = call float @dx.op.dot3.f32(i32 55, float %2809, float %2810, float %2845, float %2809, float %2810, float %2845)  ; Dot3(ax,ay,az,bx,by,bz)
  %2847 = call float @dx.op.unary.f32(i32 25, float %2846)  ; Rsqrt(value)
  %2848 = fmul fast float %2847, %2809
  %2849 = fmul fast float %2847, %2810
  %2850 = fmul fast float %2845, %2847
  %2851 = fmul fast float %2850, %71
  %2852 = fmul fast float %2850, %72
  %2853 = fmul fast float %2850, %73
  %2854 = fmul fast float %2848, %45
  %2855 = fmul fast float %2848, %46
  %2856 = fmul fast float %2848, %47
  %2857 = fadd fast float %2851, %2854
  %2858 = fadd fast float %2852, %2855
  %2859 = fadd fast float %2853, %2856
  %2860 = fmul fast float %83, %2849
  %2861 = fmul fast float %84, %2849
  %2862 = fmul fast float %85, %2849
  %2863 = fadd fast float %2857, %2860
  %2864 = fadd fast float %2858, %2861
  %2865 = fadd fast float %2859, %2862
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2863, float %2864, float %2865, float %2863, float %2864, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2863, %2867
  %2869 = fmul fast float %2864, %2867
  %2870 = fmul fast float %2865, %2867
  %2871 = icmp eq i32 %21, 65535
  br i1 %2871, label %3386, label %2872

; <label>:2872                                    ; preds = %2808
  %2873 = call float @dx.op.unary.f32(i32 83, float %22)  ; DerivCoarseX(value)
  %2874 = call float @dx.op.unary.f32(i32 83, float %23)  ; DerivCoarseX(value)
  %2875 = call float @dx.op.unary.f32(i32 83, float %24)  ; DerivCoarseX(value)
  %2876 = call float @dx.op.unary.f32(i32 84, float %22)  ; DerivCoarseY(value)
  %2877 = call float @dx.op.unary.f32(i32 84, float %23)  ; DerivCoarseY(value)
  %2878 = call float @dx.op.unary.f32(i32 84, float %24)  ; DerivCoarseY(value)
  %2879 = fadd fast float %2873, %22
  %2880 = fadd fast float %2874, %23
  %2881 = fadd fast float %2875, %24
  %2882 = fadd fast float %2876, %22
  %2883 = fadd fast float %2877, %23
  %2884 = fadd fast float %2878, %24
  %2885 = mul i32 %21, 48
  %2886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.ResRet.f32 %2886, 1
  %2889 = extractvalue %dx.types.ResRet.f32 %2886, 2
  %2890 = add i32 %2885, 16
  %2891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.ResRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.ResRet.f32 %2891, 2
  %2895 = add i32 %2885, 32
  %2896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.ResRet.f32 %2896, 2
  %2900 = extractvalue %dx.types.ResRet.f32 %2896, 3
  %2901 = bitcast float %2900 to i32
  %2902 = fmul fast float %2887, %22
  %2903 = fmul fast float %2888, %23
  %2904 = fmul fast float %2889, %24
  %2905 = fsub fast float %2902, %2892
  %2906 = fsub fast float %2903, %2893
  %2907 = fsub fast float %2904, %2894
  %2908 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2909 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2910 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2911 = fmul fast float %2908, %2897
  %2912 = fmul fast float %2909, %2898
  %2913 = fmul fast float %2910, %2899
  %2914 = fadd fast float %2897, -1.000000e+00
  %2915 = fadd fast float %2898, -1.000000e+00
  %2916 = fadd fast float %2899, -1.000000e+00
  %2917 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2918 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2919 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2920 = call float @dx.op.binary.f32(i32 36, float %2917, float %2914)  ; FMin(a,b)
  %2921 = call float @dx.op.binary.f32(i32 36, float %2918, float %2915)  ; FMin(a,b)
  %2922 = call float @dx.op.binary.f32(i32 36, float %2919, float %2916)  ; FMin(a,b)
  %2923 = fmul fast float %2922, %2898
  %2924 = fadd fast float %2923, %2921
  %2925 = fmul fast float %2924, %2897
  %2926 = fadd fast float %2925, %2920
  %2927 = fptosi float %2926 to i32
  %2928 = add nsw i32 %2927, %2901
  %2929 = shl nsw i32 %2928, 2
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = lshr i32 %2931, 16
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %3355, label %2934

; <label>:2934                                    ; preds = %2872
  br label %2935

; <label>:2935                                    ; preds = %3056, %2934
  %2936 = phi i32 [ %2958, %3056 ], [ %2932, %2934 ]
  %2937 = phi float [ %3057, %3056 ], [ 0.000000e+00, %2934 ]
  %2938 = phi float [ %3058, %3056 ], [ %2819, %2934 ]
  %2939 = phi float [ %3059, %3056 ], [ %2817, %2934 ]
  %2940 = phi float [ %3060, %3056 ], [ 0.000000e+00, %2934 ]
  %2941 = phi float [ %3061, %3056 ], [ 0.000000e+00, %2934 ]
  %2942 = phi float [ %3062, %3056 ], [ %2840, %2934 ]
  %2943 = phi float [ %3063, %3056 ], [ %2841, %2934 ]
  %2944 = phi float [ %3064, %3056 ], [ %2842, %2934 ]
  %2945 = phi float [ %3065, %3056 ], [ %2868, %2934 ]
  %2946 = phi float [ %3066, %3056 ], [ %2869, %2934 ]
  %2947 = phi float [ %3067, %3056 ], [ %2870, %2934 ]
  %2948 = phi float [ %3068, %3056 ], [ %2816, %2934 ]
  %2949 = phi float [ %3069, %3056 ], [ %2815, %2934 ]
  %2950 = phi float [ %3070, %3056 ], [ 0.000000e+00, %2934 ]
  %2951 = phi float [ %3071, %3056 ], [ %2814, %2934 ]
  %2952 = phi float [ %3072, %3056 ], [ %2811, %2934 ]
  %2953 = phi float [ %3073, %3056 ], [ %2812, %2934 ]
  %2954 = phi float [ %3074, %3056 ], [ %2813, %2934 ]
  %2955 = shl nuw nsw i32 %2936, 2
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = lshr i32 %2957, 16
  %2959 = shl i32 %2957, 8
  %2960 = and i32 %2959, 16776960
  %2961 = or i32 %2960, 48
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = or i32 %2960, 64
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.i32 %2967, 1
  %2970 = or i32 %2960, 80
  %2971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 2
  %2973 = extractvalue %dx.types.ResRet.f32 %2971, 3
  %2974 = or i32 %2960, 96
  %2975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = extractvalue %dx.types.ResRet.f32 %2975, 3
  %2980 = or i32 %2960, 112
  %2981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2983 = or i32 %2960, 128
  %2984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = extractvalue %dx.types.ResRet.f32 %2984, 3
  %2989 = or i32 %2960, 144
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = extractvalue %dx.types.ResRet.f32 %2990, 3
  %2995 = or i32 %2960, 160
  %2996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.f32 %2996, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2996, 2
  %3000 = extractvalue %dx.types.ResRet.f32 %2996, 3
  %3001 = or i32 %2960, 192
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = or i32 %2960, 208
  %3005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = or i32 %2960, 248
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.ResRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.ResRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.ResRet.f32 %3011, 3
  %3016 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %22, float %23, float %24, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3017 = or i32 %2960, 16
  %3018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.ResRet.f32 %3018, 1
  %3021 = extractvalue %dx.types.ResRet.f32 %3018, 2
  %3022 = extractvalue %dx.types.ResRet.f32 %3018, 3
  %3023 = call float @dx.op.dot4.f32(i32 56, float %3019, float %3020, float %3021, float %3022, float %22, float %23, float %24, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3024 = or i32 %2960, 32
  %3025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.ResRet.f32 %3025, 1
  %3028 = extractvalue %dx.types.ResRet.f32 %3025, 2
  %3029 = extractvalue %dx.types.ResRet.f32 %3025, 3
  %3030 = call float @dx.op.dot4.f32(i32 56, float %3026, float %3027, float %3028, float %3029, float %22, float %23, float %24, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3031 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3032 = call float @dx.op.unary.f32(i32 6, float %3031)  ; FAbs(value)
  %3033 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3034 = call float @dx.op.unary.f32(i32 6, float %3033)  ; FAbs(value)
  %3035 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3036 = call float @dx.op.unary.f32(i32 27, float %3035)  ; Round_ni(value)
  %3037 = fadd fast float %3034, %3032
  %3038 = fadd fast float %3037, %3036
  %3039 = fcmp fast oeq float %3038, 0.000000e+00
  %3040 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %2879, float %2880, float %2881, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3041 = call float @dx.op.dot4.f32(i32 56, float %3019, float %3020, float %3021, float %3022, float %2879, float %2880, float %2881, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3042 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %2882, float %2883, float %2884, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3043 = call float @dx.op.dot4.f32(i32 56, float %3019, float %3020, float %3021, float %3022, float %2882, float %2883, float %2884, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3044 = fsub fast float %3040, %3016
  %3045 = fsub fast float %3042, %3016
  %3046 = fsub fast float %3041, %3023
  %3047 = fsub fast float %3043, %3023
  %3048 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 2
  %3051 = fadd fast float %3050, %3048
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  %3054 = fcmp fast ogt float %3052, %3053
  %3055 = and i1 %3039, %3054
  br i1 %3055, label %3076, label %3056

; <label>:3056                                    ; preds = %3341, %3159, %3076, %2935
  %3057 = phi float [ %2937, %3076 ], [ %3162, %3159 ], [ %3162, %3341 ], [ %2937, %2935 ]
  %3058 = phi float [ %2938, %3076 ], [ %2938, %3159 ], [ %3316, %3341 ], [ %2938, %2935 ]
  %3059 = phi float [ %2939, %3076 ], [ %2939, %3159 ], [ %3314, %3341 ], [ %2939, %2935 ]
  %3060 = phi float [ %2940, %3076 ], [ %2940, %3159 ], [ %3286, %3341 ], [ %2940, %2935 ]
  %3061 = phi float [ %2941, %3076 ], [ %2941, %3159 ], [ %3284, %3341 ], [ %2941, %2935 ]
  %3062 = phi float [ %2942, %3076 ], [ %2942, %3159 ], [ %3351, %3341 ], [ %2942, %2935 ]
  %3063 = phi float [ %2943, %3076 ], [ %2943, %3159 ], [ %3352, %3341 ], [ %2943, %2935 ]
  %3064 = phi float [ %2944, %3076 ], [ %2944, %3159 ], [ %3353, %3341 ], [ %2944, %2935 ]
  %3065 = phi float [ %2945, %3076 ], [ %2945, %3159 ], [ %3265, %3341 ], [ %2945, %2935 ]
  %3066 = phi float [ %2946, %3076 ], [ %2946, %3159 ], [ %3266, %3341 ], [ %2946, %2935 ]
  %3067 = phi float [ %2947, %3076 ], [ %2947, %3159 ], [ %3267, %3341 ], [ %2947, %2935 ]
  %3068 = phi float [ %2948, %3076 ], [ %2948, %3159 ], [ %3294, %3341 ], [ %2948, %2935 ]
  %3069 = phi float [ %2949, %3076 ], [ %2949, %3159 ], [ %3291, %3341 ], [ %2949, %2935 ]
  %3070 = phi float [ %2950, %3076 ], [ %2950, %3159 ], [ %3288, %3341 ], [ %2950, %2935 ]
  %3071 = phi float [ %2951, %3076 ], [ %2951, %3159 ], [ %3282, %3341 ], [ %2951, %2935 ]
  %3072 = phi float [ %2952, %3076 ], [ %2952, %3159 ], [ %3277, %3341 ], [ %2952, %2935 ]
  %3073 = phi float [ %2953, %3076 ], [ %2953, %3159 ], [ %3278, %3341 ], [ %2953, %2935 ]
  %3074 = phi float [ %2954, %3076 ], [ %2954, %3159 ], [ %3279, %3341 ], [ %2954, %2935 ]
  %3075 = icmp eq i32 %2958, 0
  br i1 %3075, label %3354, label %2935

; <label>:3076                                    ; preds = %2935
  %3077 = extractvalue %dx.types.ResRet.f32 %2962, 3
  %3078 = extractvalue %dx.types.ResRet.f32 %2981, 3
  %3079 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %3080 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %3081 = extractvalue %dx.types.ResRet.f32 %2971, 1
  %3082 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %3083 = extractvalue %dx.types.ResRet.i32 %2967, 3
  %3084 = extractvalue %dx.types.ResRet.i32 %2967, 2
  %3085 = bitcast float %3077 to i32
  %3086 = add i32 %3083, 0
  %3087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3089 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3087, %dx.types.Handle %3088, float %3016, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float %3044, float %3046, float undef, float %3045, float %3047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = fmul fast float %3090, %3082
  %3092 = fadd fast float %3091, %3081
  %3093 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3094 = fmul fast float %3016, %2976
  %3095 = call float @dx.op.tertiary.f32(i32 46, float %2977, float %3023, float %3094)  ; FMad(a,b,c)
  %3096 = fadd fast float %3095, %3080
  %3097 = fmul fast float %3016, %2978
  %3098 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %3023, float %3097)  ; FMad(a,b,c)
  %3099 = fadd fast float %3098, %3079
  %3100 = fmul fast float %3044, %2976
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %2977, float %3046, float %3100)  ; FMad(a,b,c)
  %3102 = fmul fast float %3044, %2978
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %3046, float %3102)  ; FMad(a,b,c)
  %3104 = fmul fast float %3045, %2976
  %3105 = call float @dx.op.tertiary.f32(i32 46, float %2977, float %3047, float %3104)  ; FMad(a,b,c)
  %3106 = fmul fast float %3045, %2978
  %3107 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %3047, float %3106)  ; FMad(a,b,c)
  %3108 = add i32 %3084, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3109, %dx.types.Handle %3088, float %3096, float %3099, float undef, float undef, i32 0, i32 0, i32 undef, float %3101, float %3103, float undef, float %3105, float %3107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = and i32 %3085, 1024
  %3113 = icmp ne i32 %3112, 0
  %3114 = fcmp fast ogt float %3111, 0x3FE0101020000000
  %3115 = uitofp i1 %3114 to float
  %3116 = select i1 %3113, float %3115, float %3111
  %3117 = and i32 %3085, 8192
  %3118 = icmp ne i32 %3117, 0
  %3119 = select i1 %3118, float %3078, float 1.000000e+00
  %3120 = fmul fast float %3016, 2.000000e+00
  %3121 = fadd fast float %3120, -1.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 6, float %3121)  ; FAbs(value)
  %3123 = fmul fast float %3122, %3009
  %3124 = fsub fast float %3123, %3009
  %3125 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3126 = fmul fast float %3023, 2.000000e+00
  %3127 = fadd fast float %3126, -1.000000e+00
  %3128 = call float @dx.op.unary.f32(i32 6, float %3127)  ; FAbs(value)
  %3129 = fmul fast float %3128, %3010
  %3130 = fsub fast float %3129, %3010
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = fmul fast float %3035, %2972
  %3133 = fsub fast float %3132, %2972
  %3134 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  %3135 = fmul fast float %3093, %3119
  %3136 = fmul fast float %3135, %3090
  %3137 = fmul fast float %3136, %3125
  %3138 = fmul fast float %3137, %3116
  %3139 = fmul fast float %3138, %3131
  %3140 = fmul fast float %3139, %3134
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3144 = fsub fast float %3052, %3143
  %3145 = fmul fast float %3144, %3142
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3147 = fmul fast float %3140, %2973
  %3148 = fadd fast float %3140, %2973
  %3149 = fmul fast float %3148, %2982
  %3150 = fsub fast float %3149, %2982
  %3151 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3152 = and i32 %3085, 128
  %3153 = icmp ne i32 %3152, 0
  %3154 = select i1 %3153, float %3151, float %3147
  %3155 = fmul fast float %3154, %3146
  %3156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.f32 %3156, 0
  %3158 = fcmp fast ugt float %3155, %3157
  br i1 %3158, label %3159, label %3056

; <label>:3159                                    ; preds = %3076
  %3160 = select i1 %3118, float %3155, float 0.000000e+00
  %3161 = fadd fast float %3160, %2937
  %3162 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  br i1 %3118, label %3056, label %3163

; <label>:3163                                    ; preds = %3159
  %3164 = and i32 %3085, 4
  %3165 = and i32 %3085, 8
  %3166 = add i32 %2968, 0
  %3167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3167, %dx.types.Handle %3168, float %3096, float %3099, float undef, float undef, i32 0, i32 0, i32 undef, float %3101, float %3103, float undef, float %3105, float %3107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.ResRet.f32 %3169, 3
  %3174 = bitcast float %2994 to i32
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = lshr i32 %3174, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3173, %3176
  %3181 = fadd fast float %3180, %3179
  %3182 = fmul fast float %3181, 0x3F70101000000000
  %3183 = add i32 %2969, 0
  %3184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3184, %dx.types.Handle %3168, float %3096, float %3099, float undef, float undef, i32 0, i32 0, i32 undef, float %3101, float %3103, float undef, float %3105, float %3107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  %3187 = extractvalue %dx.types.ResRet.f32 %3185, 1
  %3188 = extractvalue %dx.types.ResRet.f32 %3185, 2
  %3189 = extractvalue %dx.types.ResRet.f32 %3185, 3
  %3190 = bitcast float %2988 to i32
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = lshr i32 %3190, 8
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = lshr i32 %3190, 16
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101000000000
  %3200 = fmul fast float %3186, %3192
  %3201 = fadd fast float %3200, %3195
  %3202 = fmul fast float %3201, 0x3F70101000000000
  %3203 = fadd fast float %3187, -5.000000e-01
  %3204 = fadd fast float %3189, -5.000000e-01
  %3205 = fmul fast float %3203, %3199
  %3206 = fmul fast float %3204, %3199
  %3207 = fadd fast float %3205, 5.000000e-01
  %3208 = fadd fast float %3206, 5.000000e-01
  %3209 = fmul fast float %3170, %2997
  %3210 = fmul fast float %3171, %2998
  %3211 = fmul fast float %3172, %2999
  %3212 = fmul fast float %3207, 2.000000e+00
  %3213 = fadd fast float %3212, -1.000000e+00
  %3214 = fmul fast float %3208, 2.000000e+00
  %3215 = fadd fast float %3214, -1.000000e+00
  %3216 = fadd fast float %3213, %3215
  %3217 = fmul fast float %3216, 5.000000e-01
  %3218 = fsub fast float %3213, %3215
  %3219 = fmul fast float %3218, 5.000000e-01
  %3220 = call float @dx.op.unary.f32(i32 6, float %3217)  ; FAbs(value)
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = call float @dx.op.unary.f32(i32 6, float %3219)  ; FAbs(value)
  %3223 = fsub fast float %3221, %3222
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3219, float %3223, float %3217, float %3219, float %3223)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = call float @dx.op.unary.f32(i32 25, float %3224)  ; Rsqrt(value)
  %3226 = fmul fast float %3217, %3225
  %3227 = fmul fast float %3219, %3225
  %3228 = fmul fast float %3225, %3223
  %3229 = fmul fast float %3228, %2963
  %3230 = fmul fast float %3228, %2964
  %3231 = fmul fast float %3228, %2965
  %3232 = fmul fast float %3226, %2985
  %3233 = fmul fast float %3226, %2986
  %3234 = fmul fast float %3226, %2987
  %3235 = fadd fast float %3232, %3229
  %3236 = fadd fast float %3233, %3230
  %3237 = fadd fast float %3234, %3231
  %3238 = fmul fast float %3227, %2991
  %3239 = fmul fast float %3227, %2992
  %3240 = fmul fast float %3227, %2993
  %3241 = fadd fast float %3235, %3238
  %3242 = fadd fast float %3236, %3239
  %3243 = fadd fast float %3237, %3240
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3242, float %3243, float %3241, float %3242, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.unary.f32(i32 25, float %3244)  ; Rsqrt(value)
  %3246 = fmul fast float %3241, %3245
  %3247 = fmul fast float %3242, %3245
  %3248 = fmul fast float %3243, %3245
  %3249 = icmp ne i32 %3165, 0
  %3250 = select i1 %3249, float 1.000000e+00, float 0.000000e+00
  %3251 = fmul fast float %3155, %3250
  %3252 = and i32 %3085, 1
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3254, label %3258

; <label>:3254                                    ; preds = %3163
  %3255 = fsub fast float %3246, %2945
  %3256 = fsub fast float %3247, %2946
  %3257 = fsub fast float %3248, %2947
  br label %3258

; <label>:3258                                    ; preds = %3254, %3163
  %3259 = phi float [ %3255, %3254 ], [ %3246, %3163 ]
  %3260 = phi float [ %3256, %3254 ], [ %3247, %3163 ]
  %3261 = phi float [ %3257, %3254 ], [ %3248, %3163 ]
  %3262 = fmul float %3261, %3251
  %3263 = fmul float %3260, %3251
  %3264 = fmul float %3259, %3251
  %3265 = fadd fast float %3264, %2945
  %3266 = fadd fast float %3263, %2946
  %3267 = fadd fast float %3262, %2947
  %3268 = icmp ne i32 %3164, 0
  %3269 = select i1 %3268, float 1.000000e+00, float 0.000000e+00
  %3270 = fmul fast float %3155, %3269
  %3271 = fsub fast float %3209, %2952
  %3272 = fsub fast float %3210, %2953
  %3273 = fsub fast float %3211, %2954
  %3274 = fmul fast float %3271, %3270
  %3275 = fmul fast float %3272, %3270
  %3276 = fmul fast float %3273, %3270
  %3277 = fadd fast float %3274, %2952
  %3278 = fadd fast float %3275, %2953
  %3279 = fadd fast float %3276, %2954
  %3280 = fsub fast float %3182, %2951
  %3281 = fmul fast float %3280, %3270
  %3282 = fadd fast float %3281, %2951
  %3283 = fmul fast float %3270, %2941
  %3284 = fsub fast float %2941, %3283
  %3285 = fmul fast float %3270, %2940
  %3286 = fsub fast float %2940, %3285
  %3287 = fadd fast float %3155, %2950
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3289 = fsub fast float %3202, %2949
  %3290 = fmul fast float %3289, %3251
  %3291 = fadd fast float %3290, %2949
  %3292 = fsub fast float %3188, %2948
  %3293 = fmul fast float %3292, %3251
  %3294 = fadd fast float %3293, %2948
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3210, float %3211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = fmul fast float %3298, %3295
  %3300 = fadd fast float %3299, %3297
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3302 = bitcast float %3000 to i32
  %3303 = and i32 %3302, 65535
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = lshr i32 %3302, 16
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = fcmp fast oge float %3304, 0.000000e+00
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = select i1 %3307, float %3304, float %3309
  %3311 = fadd fast float %3310, %3306
  %3312 = fsub fast float %3301, %2939
  %3313 = fmul fast float %3312, %3155
  %3314 = fadd fast float %3313, %2939
  %3315 = fmul fast float %3311, %3155
  %3316 = call float @dx.op.binary.f32(i32 35, float %2938, float %3315)  ; FMax(a,b)
  %3317 = and i32 %3085, 16
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3341, label %3319

; <label>:3319                                    ; preds = %3258
  %3320 = bitcast float %3006 to i32
  %3321 = add i32 %3003, 0
  %3322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3323 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3322, %dx.types.Handle %3168, float %3096, float %3099, float undef, float undef, i32 0, i32 0, i32 undef, float %3101, float %3103, float undef, float %3105, float %3107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = and i32 %3320, 65535
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = fmul fast float %3324, %2997
  %3330 = fmul fast float %3325, %2998
  %3331 = fmul fast float %3326, %2999
  %3332 = and i32 %3085, 16384
  %3333 = icmp ne i32 %3332, 0
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = select i1 %3333, float %3335, float 1.000000e+00
  %3337 = fmul fast float %3336, %3328
  %3338 = fmul fast float %3329, %3337
  %3339 = fmul fast float %3330, %3337
  %3340 = fmul fast float %3331, %3337
  br label %3341

; <label>:3341                                    ; preds = %3319, %3258
  %3342 = phi float [ %3338, %3319 ], [ 0.000000e+00, %3258 ]
  %3343 = phi float [ %3339, %3319 ], [ 0.000000e+00, %3258 ]
  %3344 = phi float [ %3340, %3319 ], [ 0.000000e+00, %3258 ]
  %3345 = fsub fast float %3342, %2942
  %3346 = fsub fast float %3343, %2943
  %3347 = fsub fast float %3344, %2944
  %3348 = fmul fast float %3345, %3155
  %3349 = fmul fast float %3346, %3155
  %3350 = fmul fast float %3347, %3155
  %3351 = fadd fast float %3348, %2942
  %3352 = fadd fast float %3349, %2943
  %3353 = fadd fast float %3350, %2944
  br label %3056

; <label>:3354                                    ; preds = %3056
  br label %3355

; <label>:3355                                    ; preds = %3354, %2872
  %3356 = phi float [ 0.000000e+00, %2872 ], [ %3057, %3354 ]
  %3357 = phi float [ %2819, %2872 ], [ %3058, %3354 ]
  %3358 = phi float [ %2817, %2872 ], [ %3059, %3354 ]
  %3359 = phi float [ 0.000000e+00, %2872 ], [ %3060, %3354 ]
  %3360 = phi float [ 0.000000e+00, %2872 ], [ %3061, %3354 ]
  %3361 = phi float [ %2840, %2872 ], [ %3062, %3354 ]
  %3362 = phi float [ %2841, %2872 ], [ %3063, %3354 ]
  %3363 = phi float [ %2842, %2872 ], [ %3064, %3354 ]
  %3364 = phi float [ %2868, %2872 ], [ %3065, %3354 ]
  %3365 = phi float [ %2869, %2872 ], [ %3066, %3354 ]
  %3366 = phi float [ %2870, %2872 ], [ %3067, %3354 ]
  %3367 = phi float [ %2816, %2872 ], [ %3068, %3354 ]
  %3368 = phi float [ %2815, %2872 ], [ %3069, %3354 ]
  %3369 = phi float [ 0.000000e+00, %2872 ], [ %3070, %3354 ]
  %3370 = phi float [ %2814, %2872 ], [ %3071, %3354 ]
  %3371 = phi float [ %2811, %2872 ], [ %3072, %3354 ]
  %3372 = phi float [ %2812, %2872 ], [ %3073, %3354 ]
  %3373 = phi float [ %2813, %2872 ], [ %3074, %3354 ]
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3364, float %3365, float %3366, float %3364, float %3365, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = call float @dx.op.unary.f32(i32 25, float %3374)  ; Rsqrt(value)
  %3376 = fmul fast float %3375, %3364
  %3377 = fmul fast float %3375, %3365
  %3378 = fmul fast float %3375, %3366
  %3379 = fadd fast float %3369, %810
  %3380 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3381 = call float @dx.op.dot3.f32(i32 55, float %3376, float %3377, float %3378, float %3376, float %3377, float %3378)  ; Dot3(ax,ay,az,bx,by,bz)
  %3382 = call float @dx.op.unary.f32(i32 25, float %3381)  ; Rsqrt(value)
  %3383 = fmul fast float %3382, %3376
  %3384 = fmul fast float %3382, %3377
  %3385 = fmul fast float %3382, %3378
  br label %3386

; <label>:3386                                    ; preds = %3355, %2808
  %3387 = phi float [ %3383, %3355 ], [ %2868, %2808 ]
  %3388 = phi float [ %3384, %3355 ], [ %2869, %2808 ]
  %3389 = phi float [ %3385, %3355 ], [ %2870, %2808 ]
  %3390 = phi float [ %3371, %3355 ], [ %2811, %2808 ]
  %3391 = phi float [ %3372, %3355 ], [ %2812, %2808 ]
  %3392 = phi float [ %3373, %3355 ], [ %2813, %2808 ]
  %3393 = phi float [ %3361, %3355 ], [ %2840, %2808 ]
  %3394 = phi float [ %3362, %3355 ], [ %2841, %2808 ]
  %3395 = phi float [ %3363, %3355 ], [ %2842, %2808 ]
  %3396 = phi float [ %3370, %3355 ], [ %2814, %2808 ]
  %3397 = phi float [ %3380, %3355 ], [ %810, %2808 ]
  %3398 = phi float [ %3368, %3355 ], [ %2815, %2808 ]
  %3399 = phi float [ %3367, %3355 ], [ %2816, %2808 ]
  %3400 = phi float [ %3360, %3355 ], [ 0.000000e+00, %2808 ]
  %3401 = phi float [ %3359, %3355 ], [ 0.000000e+00, %2808 ]
  %3402 = phi float [ %3356, %3355 ], [ 0.000000e+00, %2808 ]
  %3403 = phi float [ %3357, %3355 ], [ %2819, %2808 ]
  %3404 = phi float [ %3358, %3355 ], [ %2817, %2808 ]
  %3405 = fadd fast float %3396, 0xBFB99999A0000000
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3407 = fmul fast float %3406, 0x3FF1C71C80000000
  %3408 = call float @dx.op.binary.f32(i32 36, float %3396, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3409 = fsub fast float 1.000000e+00, %3407
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3411 = fmul fast float %3410, %3390
  %3412 = fmul fast float %3410, %3391
  %3413 = fmul fast float %3410, %3392
  %3414 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3416 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3417 = fmul fast float %3407, %3390
  %3418 = fmul fast float %3407, %3391
  %3419 = fmul fast float %3407, %3392
  %3420 = fadd fast float %3417, %3408
  %3421 = fadd fast float %3418, %3408
  %3422 = fadd fast float %3419, %3408
  %3423 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3424 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3425 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3426 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.i32 %3427, 3
  %3429 = and i32 %3428, 8
  %3430 = icmp ne i32 %3429, 0
  %3431 = call float @dx.op.binary.f32(i32 35, float %3414, float %3390)  ; FMax(a,b)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3415, float %3390)  ; FMax(a,b)
  %3433 = call float @dx.op.binary.f32(i32 35, float %3416, float %3390)  ; FMax(a,b)
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = select i1 %192, float %3390, float %3414
  %3436 = select i1 %192, float %3434, float %3415
  %3437 = select i1 %192, float 1.000000e+00, float %3416
  %3438 = select i1 %3430, float %3431, float %3435
  %3439 = select i1 %3430, float %3432, float %3436
  %3440 = select i1 %3430, float %3433, float %3437
  %3441 = and i32 %168, 3
  %3442 = select i1 %162, i32 %3441, i32 0
  %3443 = icmp eq i32 %3442, 1
  br i1 %3443, label %3444, label %3520

; <label>:3444                                    ; preds = %3386
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3448 = fadd fast float %3446, %151
  %3449 = fadd fast float %3447, %152
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.CBufRet.f32 %3450, 1
  %3453 = fsub fast float %3448, %3451
  %3454 = fsub fast float %3449, %3452
  %3455 = fmul fast float %3453, %3453
  %3456 = fmul fast float %3454, %3454
  %3457 = fadd fast float %3455, %3456
  %3458 = call float @dx.op.unary.f32(i32 24, float %3457)  ; Sqrt(value)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3450, 2
  %3460 = fcmp fast olt float %3458, %3459
  br i1 %3460, label %3461, label %3514

; <label>:3461                                    ; preds = %3444
  %3462 = extractvalue %dx.types.CBufRet.f32 %3445, 2
  %3463 = fadd fast float %3462, %153
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 0
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3469 = extractvalue %dx.types.CBufRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.CBufRet.f32 %3464, 1
  %3471 = extractvalue %dx.types.CBufRet.f32 %3466, 1
  %3472 = extractvalue %dx.types.CBufRet.f32 %3468, 1
  %3473 = extractvalue %dx.types.CBufRet.f32 %3464, 3
  %3474 = extractvalue %dx.types.CBufRet.f32 %3466, 3
  %3475 = extractvalue %dx.types.CBufRet.f32 %3468, 3
  %3476 = fadd fast float %3473, %3448
  %3477 = fadd fast float %3474, %3449
  %3478 = fadd fast float %3463, %3475
  %3479 = fmul fast float %3476, %3465
  %3480 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3467, float %3479)  ; FMad(a,b,c)
  %3481 = call float @dx.op.tertiary.f32(i32 46, float %3478, float %3469, float %3480)  ; FMad(a,b,c)
  %3482 = fmul fast float %3476, %3470
  %3483 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3471, float %3482)  ; FMad(a,b,c)
  %3484 = call float @dx.op.tertiary.f32(i32 46, float %3478, float %3472, float %3483)  ; FMad(a,b,c)
  %3485 = fsub fast float %3481, %3473
  %3486 = fsub fast float %3484, %3474
  %3487 = fsub fast float %3485, %3451
  %3488 = fadd fast float %3487, %3459
  %3489 = fsub fast float %3486, %3452
  %3490 = fadd fast float %3489, %3459
  %3491 = extractvalue %dx.types.CBufRet.f32 %3450, 3
  %3492 = fmul fast float %3488, %3491
  %3493 = fmul fast float %3490, %3491
  %3494 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3495 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3496 = fsub fast float 1.000000e+00, %3494
  %3497 = fsub fast float 1.000000e+00, %3495
  %3498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = fcmp fast ugt float %3499, 0.000000e+00
  br i1 %3500, label %3501, label %3514

; <label>:3501                                    ; preds = %3461
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 2
  %3504 = fmul fast float %3503, %3499
  %3505 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3506 = fadd fast float %3505, %3504
  %3507 = extractvalue %dx.types.CBufRet.f32 %3468, 2
  %3508 = fadd fast float %3506, %3475
  %3509 = fmul fast float %3481, %3469
  %3510 = call float @dx.op.tertiary.f32(i32 46, float %3484, float %3472, float %3509)  ; FMad(a,b,c)
  %3511 = call float @dx.op.tertiary.f32(i32 46, float %3508, float %3507, float %3510)  ; FMad(a,b,c)
  %3512 = fsub fast float %3511, %3475
  %3513 = fsub fast float %3512, %3462
  br label %3514

; <label>:3514                                    ; preds = %3501, %3461, %3444
  %3515 = phi i1 [ true, %3501 ], [ false, %3461 ], [ false, %3444 ]
  %3516 = phi float [ %3513, %3501 ], [ -1.310720e+05, %3461 ], [ -1.310720e+05, %3444 ]
  %3517 = fsub fast float %3516, %153
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = select i1 %3515, float %3518, float 1.000000e+00
  br label %3520

; <label>:3520                                    ; preds = %3514, %3386
  %3521 = phi float [ %3519, %3514 ], [ 0.000000e+00, %3386 ]
  %3522 = icmp eq i32 %3442, 3
  %3523 = select i1 %3522, float 1.000000e+00, float %3521
  %3524 = call float @dx.op.binary.f32(i32 35, float %3402, float %3523)  ; FMax(a,b)
  %3525 = fcmp fast olt float %3523, 1.000000e+00
  %3526 = fcmp uge float %35, 0.000000e+00
  %3527 = and i1 %3526, %3525
  br i1 %3527, label %3528, label %3538

; <label>:3528                                    ; preds = %3520
  %3529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %35, float %36, float %37, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = fadd fast float %3530, %3524
  %3534 = fcmp ule float %34, 0.000000e+00
  %3535 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = select i1 %3534, float %3535, float 1.000000e+00
  %3537 = fmul fast float %3536, %3532
  br label %3538

; <label>:3538                                    ; preds = %3528, %3520
  %3539 = phi float [ %3533, %3528 ], [ %3524, %3520 ]
  %3540 = phi float [ %3531, %3528 ], [ 0.000000e+00, %3520 ]
  %3541 = phi float [ %3537, %3528 ], [ 0.000000e+00, %3520 ]
  %3542 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3545 = fcmp fast une float %3543, 0.000000e+00
  %3546 = fcmp fast une float %3544, 0.000000e+00
  %3547 = or i1 %3545, %3546
  br i1 %3547, label %3548, label %4107

; <label>:3548                                    ; preds = %3538
  br i1 %3545, label %3549, label %3822

; <label>:3549                                    ; preds = %3548
  %3550 = call float @dx.op.unary.f32(i32 23, float %3399)  ; Log(value)
  %3551 = fmul fast float %3550, 4.000000e+00
  %3552 = call float @dx.op.unary.f32(i32 21, float %3551)  ; Exp(value)
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = fmul fast float %3554, %22
  %3556 = fmul fast float %3554, %23
  %3557 = fmul fast float %3554, %24
  %3558 = call float @dx.op.unary.f32(i32 6, float %31)  ; FAbs(value)
  %3559 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %3560 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %3561 = call float @dx.op.unary.f32(i32 23, float %3558)  ; Log(value)
  %3562 = call float @dx.op.unary.f32(i32 23, float %3559)  ; Log(value)
  %3563 = call float @dx.op.unary.f32(i32 23, float %3560)  ; Log(value)
  %3564 = fmul fast float %3561, 4.000000e+00
  %3565 = fmul fast float %3562, 4.000000e+00
  %3566 = fmul fast float %3563, 4.000000e+00
  %3567 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3568 = call float @dx.op.unary.f32(i32 21, float %3565)  ; Exp(value)
  %3569 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3570 = fadd fast float %3568, %3567
  %3571 = fadd fast float %3570, %3569
  %3572 = fdiv fast float 1.000000e+00, %3571
  %3573 = fmul fast float %3572, %3567
  %3574 = fcmp fast ogt float %31, 0.000000e+00
  %3575 = fcmp fast ogt float %32, 0.000000e+00
  %3576 = fcmp fast ogt float %33, 0.000000e+00
  %3577 = fcmp fast olt float %31, 0.000000e+00
  %3578 = fcmp fast olt float %32, 0.000000e+00
  %3579 = fcmp fast olt float %33, 0.000000e+00
  %3580 = zext i1 %3574 to i32
  %3581 = zext i1 %3575 to i32
  %3582 = zext i1 %3576 to i32
  %3583 = zext i1 %3577 to i32
  %3584 = zext i1 %3578 to i32
  %3585 = zext i1 %3579 to i32
  %3586 = sub nsw i32 %3580, %3583
  %3587 = sub nsw i32 %3581, %3584
  %3588 = sub nsw i32 %3582, %3585
  %3589 = call float @dx.op.unary.f32(i32 83, float %3555)  ; DerivCoarseX(value)
  %3590 = call float @dx.op.unary.f32(i32 83, float %3556)  ; DerivCoarseX(value)
  %3591 = call float @dx.op.unary.f32(i32 83, float %3557)  ; DerivCoarseX(value)
  %3592 = call float @dx.op.unary.f32(i32 84, float %3555)  ; DerivCoarseY(value)
  %3593 = call float @dx.op.unary.f32(i32 84, float %3556)  ; DerivCoarseY(value)
  %3594 = call float @dx.op.unary.f32(i32 84, float %3557)  ; DerivCoarseY(value)
  %3595 = fcmp fast ole float %203, %3573
  %3596 = fmul fast float %3572, %3570
  %3597 = fcmp fast ole float %203, %3596
  %3598 = select i1 %3597, float %3557, float %3555
  %3599 = select i1 %3597, float %3555, float %3556
  %3600 = select i1 %3595, float %3556, float %3598
  %3601 = select i1 %3595, float %3557, float %3599
  %3602 = select i1 %3597, float %3591, float %3589
  %3603 = select i1 %3597, float %3589, float %3590
  %3604 = select i1 %3595, float %3590, float %3602
  %3605 = select i1 %3595, float %3591, float %3603
  %3606 = select i1 %3597, float %3594, float %3592
  %3607 = select i1 %3597, float %3592, float %3593
  %3608 = select i1 %3595, float %3593, float %3606
  %3609 = select i1 %3595, float %3594, float %3607
  %3610 = call float @dx.op.unary.f32(i32 27, float %3600)  ; Round_ni(value)
  %3611 = call float @dx.op.unary.f32(i32 27, float %3601)  ; Round_ni(value)
  %3612 = fptosi float %3610 to i32
  %3613 = fptosi float %3611 to i32
  %3614 = xor i32 %3613, %3612
  %3615 = sitofp i32 %3614 to float
  %3616 = fptosi float %3615 to i32
  %3617 = sitofp i32 %3616 to float
  %3618 = fmul fast float %3617, 0x3FE3C6EF40000000
  %3619 = frem fast float %3610, 2.560000e+02
  %3620 = frem fast float %3611, 2.560000e+02
  %3621 = fptoui float %3619 to i32
  %3622 = fptoui float %3620 to i32
  %3623 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3621, i32 %3622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = fadd fast float %3624, %3618
  %3628 = fadd fast float %3625, %3618
  %3629 = fadd fast float %3626, %3618
  %3630 = call float @dx.op.unary.f32(i32 22, float %3627)  ; Frc(value)
  %3631 = call float @dx.op.unary.f32(i32 22, float %3628)  ; Frc(value)
  %3632 = call float @dx.op.unary.f32(i32 22, float %3629)  ; Frc(value)
  %3633 = fmul fast float %3632, 0x401921FB60000000
  %3634 = call float @dx.op.unary.f32(i32 13, float %3633)  ; Sin(value)
  %3635 = call float @dx.op.unary.f32(i32 12, float %3633)  ; Cos(value)
  %3636 = fsub fast float -0.000000e+00, %3635
  %3637 = fmul fast float %3635, %3600
  %3638 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3601, float %3637)  ; FMad(a,b,c)
  %3639 = fmul fast float %3634, %3600
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %3636, float %3601, float %3639)  ; FMad(a,b,c)
  %3641 = fadd fast float %3638, %3630
  %3642 = fadd fast float %3640, %3631
  %3643 = extractvalue %dx.types.CBufRet.f32 %3553, 3
  %3644 = bitcast float %3643 to i32
  %3645 = icmp eq i32 %3644, 0
  br i1 %3645, label %3684, label %3646

; <label>:3646                                    ; preds = %3549
  %3647 = add i32 %3644, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3648, %dx.types.Handle %61, float %3641, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3605, float undef, float %3608, float %3609, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3653 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3654 = fsub fast float 1.000000e+00, %3543
  %3655 = call float @dx.op.binary.f32(i32 35, float %3654, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3656 = bitcast float %3543 to i32
  %3657 = sitofp i32 %3656 to float
  %3658 = fadd fast float %3657, 0xC1CFBF8940000000
  %3659 = fmul fast float %3653, %3658
  %3660 = fadd fast float %3659, 0x41CFBF8940000000
  %3661 = fptosi float %3660 to i32
  %3662 = bitcast i32 %3661 to float
  %3663 = bitcast float %3655 to i32
  %3664 = sitofp i32 %3663 to float
  %3665 = fadd fast float %3664, 0xC1CFBF8940000000
  %3666 = fmul fast float %3665, %3653
  %3667 = fadd fast float %3666, 0x41CFBF8940000000
  %3668 = fptosi float %3667 to i32
  %3669 = bitcast i32 %3668 to float
  %3670 = fmul fast float %3662, %3652
  %3671 = fmul fast float %3669, %3652
  %3672 = fsub fast float %3655, %3670
  %3673 = fadd fast float %3671, %3655
  %3674 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3676 = fsub fast float %3650, %3674
  %3677 = fsub fast float %3675, %3674
  %3678 = bitcast float %3677 to i32
  %3679 = sub nsw i32 2129859010, %3678
  %3680 = bitcast i32 %3679 to float
  %3681 = fmul fast float %3680, %3676
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fcmp fast olt float %3682, 0x3F70101020000000
  br i1 %3683, label %3822, label %3684

; <label>:3684                                    ; preds = %3646, %3549
  %3685 = phi float [ %3682, %3646 ], [ %3543, %3549 ]
  %3686 = fmul fast float %3685, %3552
  %3687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.i32 %3687, 1
  %3689 = extractvalue %dx.types.CBufRet.i32 %3687, 0
  %3690 = add i32 %3689, 0
  %3691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3691, %dx.types.Handle %60, float %3641, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3605, float undef, float %3608, float %3609, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3692, 1
  %3695 = extractvalue %dx.types.ResRet.f32 %3692, 2
  %3696 = extractvalue %dx.types.ResRet.f32 %3692, 3
  %3697 = and i32 %3688, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = lshr i32 %3688, 8
  %3700 = and i32 %3699, 255
  %3701 = uitofp i32 %3700 to float
  %3702 = fmul fast float %3696, %3698
  %3703 = fadd fast float %3702, %3701
  %3704 = fmul fast float %3703, 0x3F70101000000000
  %3705 = fadd fast float %3704, 0xBFB99999A0000000
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fmul fast float %3706, 0x3FF1C71C80000000
  %3708 = call float @dx.op.binary.f32(i32 36, float %3704, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3709 = fsub fast float 1.000000e+00, %3707
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3710, %3693
  %3712 = fmul fast float %3710, %3694
  %3713 = fmul fast float %3710, %3695
  %3714 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3715 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3716 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3717 = fmul fast float %3707, %3693
  %3718 = fmul fast float %3707, %3694
  %3719 = fmul fast float %3707, %3695
  %3720 = fadd fast float %3717, %3708
  %3721 = fadd fast float %3718, %3708
  %3722 = fadd fast float %3719, %3708
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.i32 %3726, 3
  %3728 = extractvalue %dx.types.CBufRet.i32 %3726, 2
  %3729 = add i32 %3728, 0
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3730, %dx.types.Handle %60, float %3641, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3605, float undef, float %3608, float %3609, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = and i32 %3727, 255
  %3737 = uitofp i32 %3736 to float
  %3738 = lshr i32 %3727, 8
  %3739 = and i32 %3738, 255
  %3740 = uitofp i32 %3739 to float
  %3741 = lshr i32 %3727, 16
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101000000000
  %3745 = fmul fast float %3732, %3737
  %3746 = fadd fast float %3745, %3740
  %3747 = fmul fast float %3746, 0x3F70101000000000
  %3748 = fadd fast float %3733, -5.000000e-01
  %3749 = fadd fast float %3735, -5.000000e-01
  %3750 = fmul fast float %3748, %3744
  %3751 = fmul fast float %3749, %3744
  %3752 = fadd fast float %3750, 5.000000e-01
  %3753 = fadd fast float %3751, 5.000000e-01
  %3754 = fmul fast float %3752, 2.000000e+00
  %3755 = fadd fast float %3754, -1.000000e+00
  %3756 = fmul fast float %3753, 2.000000e+00
  %3757 = fadd fast float %3756, -1.000000e+00
  %3758 = fadd fast float %3755, %3757
  %3759 = fmul fast float %3758, 5.000000e-01
  %3760 = fsub fast float %3755, %3757
  %3761 = fmul fast float %3760, 5.000000e-01
  %3762 = call float @dx.op.unary.f32(i32 6, float %3759)  ; FAbs(value)
  %3763 = fsub fast float 1.000000e+00, %3762
  %3764 = call float @dx.op.unary.f32(i32 6, float %3761)  ; FAbs(value)
  %3765 = fsub fast float %3763, %3764
  %3766 = call float @dx.op.dot3.f32(i32 55, float %3759, float %3761, float %3765, float %3759, float %3761, float %3765)  ; Dot3(ax,ay,az,bx,by,bz)
  %3767 = call float @dx.op.unary.f32(i32 25, float %3766)  ; Rsqrt(value)
  %3768 = fmul fast float %3759, %3767
  %3769 = fmul fast float %3761, %3767
  %3770 = select i1 %3597, i32 %3587, i32 %3588
  %3771 = select i1 %3595, i32 %3586, i32 %3770
  %3772 = sitofp i32 %3771 to float
  %3773 = fmul fast float %3765, %3772
  %3774 = fmul fast float %3773, %3767
  %3775 = select i1 %3597, float %3774, float %3769
  %3776 = select i1 %3597, float %3769, float %3774
  %3777 = select i1 %3595, float %3774, float %3768
  %3778 = select i1 %3595, float %3769, float %3775
  %3779 = select i1 %3595, float %3768, float %3776
  %3780 = fsub fast float %3714, %3438
  %3781 = fsub fast float %3715, %3439
  %3782 = fsub fast float %3716, %3440
  %3783 = fmul fast float %3780, %3686
  %3784 = fmul fast float %3781, %3686
  %3785 = fmul fast float %3782, %3686
  %3786 = fadd fast float %3783, %3438
  %3787 = fadd fast float %3784, %3439
  %3788 = fadd fast float %3785, %3440
  %3789 = fsub fast float %3723, %3423
  %3790 = fsub fast float %3724, %3424
  %3791 = fsub fast float %3725, %3425
  %3792 = fmul fast float %3789, %3686
  %3793 = fmul fast float %3790, %3686
  %3794 = fmul fast float %3791, %3686
  %3795 = fadd fast float %3792, %3423
  %3796 = fadd fast float %3793, %3424
  %3797 = fadd fast float %3794, %3425
  %3798 = fadd fast float %3777, %3387
  %3799 = fadd fast float %3778, %3388
  %3800 = fadd fast float %3779, %3389
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float %3798, float %3799, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.unary.f32(i32 25, float %3801)  ; Rsqrt(value)
  %3803 = fmul fast float %3798, %3802
  %3804 = fmul fast float %3799, %3802
  %3805 = fmul fast float %3800, %3802
  %3806 = fsub fast float %3803, %3387
  %3807 = fsub fast float %3804, %3388
  %3808 = fsub fast float %3805, %3389
  %3809 = fmul fast float %3806, %3686
  %3810 = fmul fast float %3807, %3686
  %3811 = fmul fast float %3808, %3686
  %3812 = fadd fast float %3809, %3387
  %3813 = fadd fast float %3810, %3388
  %3814 = fadd fast float %3811, %3389
  %3815 = call float @dx.op.binary.f32(i32 36, float %3399, float %3734)  ; FMin(a,b)
  %3816 = fsub fast float %3815, %3399
  %3817 = fmul fast float %3816, %3686
  %3818 = fadd fast float %3817, %3399
  %3819 = fsub fast float %3747, %3426
  %3820 = fmul fast float %3819, %3686
  %3821 = fadd fast float %3820, %3426
  br label %3822

; <label>:3822                                    ; preds = %3684, %3646, %3548
  %3823 = phi float [ %3786, %3684 ], [ %3438, %3646 ], [ %3438, %3548 ]
  %3824 = phi float [ %3787, %3684 ], [ %3439, %3646 ], [ %3439, %3548 ]
  %3825 = phi float [ %3788, %3684 ], [ %3440, %3646 ], [ %3440, %3548 ]
  %3826 = phi float [ %3795, %3684 ], [ %3423, %3646 ], [ %3423, %3548 ]
  %3827 = phi float [ %3796, %3684 ], [ %3424, %3646 ], [ %3424, %3548 ]
  %3828 = phi float [ %3797, %3684 ], [ %3425, %3646 ], [ %3425, %3548 ]
  %3829 = phi float [ %3812, %3684 ], [ %3387, %3646 ], [ %3387, %3548 ]
  %3830 = phi float [ %3813, %3684 ], [ %3388, %3646 ], [ %3388, %3548 ]
  %3831 = phi float [ %3814, %3684 ], [ %3389, %3646 ], [ %3389, %3548 ]
  %3832 = phi float [ %3821, %3684 ], [ %3426, %3646 ], [ %3426, %3548 ]
  %3833 = phi float [ %3818, %3684 ], [ %3399, %3646 ], [ %3399, %3548 ]
  br i1 %3546, label %3834, label %4107

; <label>:3834                                    ; preds = %3822
  %3835 = call float @dx.op.unary.f32(i32 23, float %3833)  ; Log(value)
  %3836 = fmul fast float %3835, 4.000000e+00
  %3837 = call float @dx.op.unary.f32(i32 21, float %3836)  ; Exp(value)
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 0
  %3840 = fmul fast float %3839, %22
  %3841 = fmul fast float %3839, %23
  %3842 = fmul fast float %3839, %24
  %3843 = call float @dx.op.unary.f32(i32 6, float %31)  ; FAbs(value)
  %3844 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %3845 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %3846 = call float @dx.op.unary.f32(i32 23, float %3843)  ; Log(value)
  %3847 = call float @dx.op.unary.f32(i32 23, float %3844)  ; Log(value)
  %3848 = call float @dx.op.unary.f32(i32 23, float %3845)  ; Log(value)
  %3849 = fmul fast float %3846, 4.000000e+00
  %3850 = fmul fast float %3847, 4.000000e+00
  %3851 = fmul fast float %3848, 4.000000e+00
  %3852 = call float @dx.op.unary.f32(i32 21, float %3849)  ; Exp(value)
  %3853 = call float @dx.op.unary.f32(i32 21, float %3850)  ; Exp(value)
  %3854 = call float @dx.op.unary.f32(i32 21, float %3851)  ; Exp(value)
  %3855 = fadd fast float %3853, %3852
  %3856 = fadd fast float %3855, %3854
  %3857 = fdiv fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3852
  %3859 = fcmp fast ogt float %31, 0.000000e+00
  %3860 = fcmp fast ogt float %32, 0.000000e+00
  %3861 = fcmp fast ogt float %33, 0.000000e+00
  %3862 = fcmp fast olt float %31, 0.000000e+00
  %3863 = fcmp fast olt float %32, 0.000000e+00
  %3864 = fcmp fast olt float %33, 0.000000e+00
  %3865 = zext i1 %3859 to i32
  %3866 = zext i1 %3860 to i32
  %3867 = zext i1 %3861 to i32
  %3868 = zext i1 %3862 to i32
  %3869 = zext i1 %3863 to i32
  %3870 = zext i1 %3864 to i32
  %3871 = sub nsw i32 %3865, %3868
  %3872 = sub nsw i32 %3866, %3869
  %3873 = sub nsw i32 %3867, %3870
  %3874 = call float @dx.op.unary.f32(i32 83, float %3840)  ; DerivCoarseX(value)
  %3875 = call float @dx.op.unary.f32(i32 83, float %3841)  ; DerivCoarseX(value)
  %3876 = call float @dx.op.unary.f32(i32 83, float %3842)  ; DerivCoarseX(value)
  %3877 = call float @dx.op.unary.f32(i32 84, float %3840)  ; DerivCoarseY(value)
  %3878 = call float @dx.op.unary.f32(i32 84, float %3841)  ; DerivCoarseY(value)
  %3879 = call float @dx.op.unary.f32(i32 84, float %3842)  ; DerivCoarseY(value)
  %3880 = fcmp fast ole float %203, %3858
  %3881 = fmul fast float %3857, %3855
  %3882 = fcmp fast ole float %203, %3881
  %3883 = select i1 %3882, float %3842, float %3840
  %3884 = select i1 %3882, float %3840, float %3841
  %3885 = select i1 %3880, float %3841, float %3883
  %3886 = select i1 %3880, float %3842, float %3884
  %3887 = select i1 %3882, float %3876, float %3874
  %3888 = select i1 %3882, float %3874, float %3875
  %3889 = select i1 %3880, float %3875, float %3887
  %3890 = select i1 %3880, float %3876, float %3888
  %3891 = select i1 %3882, float %3879, float %3877
  %3892 = select i1 %3882, float %3877, float %3878
  %3893 = select i1 %3880, float %3878, float %3891
  %3894 = select i1 %3880, float %3879, float %3892
  %3895 = call float @dx.op.unary.f32(i32 27, float %3885)  ; Round_ni(value)
  %3896 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3897 = fptosi float %3895 to i32
  %3898 = fptosi float %3896 to i32
  %3899 = xor i32 %3898, %3897
  %3900 = sitofp i32 %3899 to float
  %3901 = fptosi float %3900 to i32
  %3902 = sitofp i32 %3901 to float
  %3903 = fmul fast float %3902, 0x3FE3C6EF40000000
  %3904 = frem fast float %3895, 2.560000e+02
  %3905 = frem fast float %3896, 2.560000e+02
  %3906 = fptoui float %3904 to i32
  %3907 = fptoui float %3905 to i32
  %3908 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3906, i32 %3907, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = fadd fast float %3909, %3903
  %3913 = fadd fast float %3910, %3903
  %3914 = fadd fast float %3911, %3903
  %3915 = call float @dx.op.unary.f32(i32 22, float %3912)  ; Frc(value)
  %3916 = call float @dx.op.unary.f32(i32 22, float %3913)  ; Frc(value)
  %3917 = call float @dx.op.unary.f32(i32 22, float %3914)  ; Frc(value)
  %3918 = fmul fast float %3917, 0x401921FB60000000
  %3919 = call float @dx.op.unary.f32(i32 13, float %3918)  ; Sin(value)
  %3920 = call float @dx.op.unary.f32(i32 12, float %3918)  ; Cos(value)
  %3921 = fsub fast float -0.000000e+00, %3920
  %3922 = fmul fast float %3920, %3885
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3886, float %3922)  ; FMad(a,b,c)
  %3924 = fmul fast float %3919, %3885
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3886, float %3924)  ; FMad(a,b,c)
  %3926 = fadd fast float %3923, %3915
  %3927 = fadd fast float %3925, %3916
  %3928 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3929 = bitcast float %3928 to i32
  %3930 = icmp eq i32 %3929, 0
  br i1 %3930, label %3969, label %3931

; <label>:3931                                    ; preds = %3834
  %3932 = add i32 %3929, 0
  %3933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3933, %dx.types.Handle %61, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3939 = fsub fast float 1.000000e+00, %3544
  %3940 = call float @dx.op.binary.f32(i32 35, float %3939, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3941 = bitcast float %3544 to i32
  %3942 = sitofp i32 %3941 to float
  %3943 = fadd fast float %3942, 0xC1CFBF8940000000
  %3944 = fmul fast float %3938, %3943
  %3945 = fadd fast float %3944, 0x41CFBF8940000000
  %3946 = fptosi float %3945 to i32
  %3947 = bitcast i32 %3946 to float
  %3948 = bitcast float %3940 to i32
  %3949 = sitofp i32 %3948 to float
  %3950 = fadd fast float %3949, 0xC1CFBF8940000000
  %3951 = fmul fast float %3950, %3938
  %3952 = fadd fast float %3951, 0x41CFBF8940000000
  %3953 = fptosi float %3952 to i32
  %3954 = bitcast i32 %3953 to float
  %3955 = fmul fast float %3947, %3937
  %3956 = fmul fast float %3954, %3937
  %3957 = fsub fast float %3940, %3955
  %3958 = fadd fast float %3956, %3940
  %3959 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3961 = fsub fast float %3935, %3959
  %3962 = fsub fast float %3960, %3959
  %3963 = bitcast float %3962 to i32
  %3964 = sub nsw i32 2129859010, %3963
  %3965 = bitcast i32 %3964 to float
  %3966 = fmul fast float %3965, %3961
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fcmp fast olt float %3967, 0x3F70101020000000
  br i1 %3968, label %4107, label %3969

; <label>:3969                                    ; preds = %3931, %3834
  %3970 = phi float [ %3967, %3931 ], [ %3544, %3834 ]
  %3971 = fmul fast float %3970, %3837
  %3972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.i32 %3972, 1
  %3974 = extractvalue %dx.types.CBufRet.i32 %3972, 0
  %3975 = add i32 %3974, 0
  %3976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3976, %dx.types.Handle %60, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = extractvalue %dx.types.ResRet.f32 %3977, 3
  %3982 = and i32 %3973, 255
  %3983 = uitofp i32 %3982 to float
  %3984 = lshr i32 %3973, 8
  %3985 = and i32 %3984, 255
  %3986 = uitofp i32 %3985 to float
  %3987 = fmul fast float %3981, %3983
  %3988 = fadd fast float %3987, %3986
  %3989 = fmul fast float %3988, 0x3F70101000000000
  %3990 = fadd fast float %3989, 0xBFB99999A0000000
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3991, 0x3FF1C71C80000000
  %3993 = call float @dx.op.binary.f32(i32 36, float %3989, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3994 = fsub fast float 1.000000e+00, %3992
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3995, %3978
  %3997 = fmul fast float %3995, %3979
  %3998 = fmul fast float %3995, %3980
  %3999 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %4000 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4001 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4002 = fmul fast float %3992, %3978
  %4003 = fmul fast float %3992, %3979
  %4004 = fmul fast float %3992, %3980
  %4005 = fadd fast float %4002, %3993
  %4006 = fadd fast float %4003, %3993
  %4007 = fadd fast float %4004, %3993
  %4008 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4009 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4010 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.i32 %4011, 3
  %4013 = extractvalue %dx.types.CBufRet.i32 %4011, 2
  %4014 = add i32 %4013, 0
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4015, %dx.types.Handle %60, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = and i32 %4012, 255
  %4022 = uitofp i32 %4021 to float
  %4023 = lshr i32 %4012, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = lshr i32 %4012, 16
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101000000000
  %4030 = fmul fast float %4017, %4022
  %4031 = fadd fast float %4030, %4025
  %4032 = fmul fast float %4031, 0x3F70101000000000
  %4033 = fadd fast float %4018, -5.000000e-01
  %4034 = fadd fast float %4020, -5.000000e-01
  %4035 = fmul fast float %4033, %4029
  %4036 = fmul fast float %4034, %4029
  %4037 = fadd fast float %4035, 5.000000e-01
  %4038 = fadd fast float %4036, 5.000000e-01
  %4039 = fmul fast float %4037, 2.000000e+00
  %4040 = fadd fast float %4039, -1.000000e+00
  %4041 = fmul fast float %4038, 2.000000e+00
  %4042 = fadd fast float %4041, -1.000000e+00
  %4043 = fadd fast float %4040, %4042
  %4044 = fmul fast float %4043, 5.000000e-01
  %4045 = fsub fast float %4040, %4042
  %4046 = fmul fast float %4045, 5.000000e-01
  %4047 = call float @dx.op.unary.f32(i32 6, float %4044)  ; FAbs(value)
  %4048 = fsub fast float 1.000000e+00, %4047
  %4049 = call float @dx.op.unary.f32(i32 6, float %4046)  ; FAbs(value)
  %4050 = fsub fast float %4048, %4049
  %4051 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4046, float %4050, float %4044, float %4046, float %4050)  ; Dot3(ax,ay,az,bx,by,bz)
  %4052 = call float @dx.op.unary.f32(i32 25, float %4051)  ; Rsqrt(value)
  %4053 = fmul fast float %4044, %4052
  %4054 = fmul fast float %4046, %4052
  %4055 = select i1 %3882, i32 %3872, i32 %3873
  %4056 = select i1 %3880, i32 %3871, i32 %4055
  %4057 = sitofp i32 %4056 to float
  %4058 = fmul fast float %4050, %4057
  %4059 = fmul fast float %4058, %4052
  %4060 = select i1 %3882, float %4059, float %4054
  %4061 = select i1 %3882, float %4054, float %4059
  %4062 = select i1 %3880, float %4059, float %4053
  %4063 = select i1 %3880, float %4054, float %4060
  %4064 = select i1 %3880, float %4053, float %4061
  %4065 = fsub fast float %3999, %3823
  %4066 = fsub fast float %4000, %3824
  %4067 = fsub fast float %4001, %3825
  %4068 = fmul fast float %4065, %3971
  %4069 = fmul fast float %4066, %3971
  %4070 = fmul fast float %4067, %3971
  %4071 = fadd fast float %4068, %3823
  %4072 = fadd fast float %4069, %3824
  %4073 = fadd fast float %4070, %3825
  %4074 = fsub fast float %4008, %3826
  %4075 = fsub fast float %4009, %3827
  %4076 = fsub fast float %4010, %3828
  %4077 = fmul fast float %4074, %3971
  %4078 = fmul fast float %4075, %3971
  %4079 = fmul fast float %4076, %3971
  %4080 = fadd fast float %4077, %3826
  %4081 = fadd fast float %4078, %3827
  %4082 = fadd fast float %4079, %3828
  %4083 = fadd fast float %4062, %3829
  %4084 = fadd fast float %4063, %3830
  %4085 = fadd fast float %4064, %3831
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4083, float %4084, float %4085)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = call float @dx.op.unary.f32(i32 25, float %4086)  ; Rsqrt(value)
  %4088 = fmul fast float %4083, %4087
  %4089 = fmul fast float %4084, %4087
  %4090 = fmul fast float %4085, %4087
  %4091 = fsub fast float %4088, %3829
  %4092 = fsub fast float %4089, %3830
  %4093 = fsub fast float %4090, %3831
  %4094 = fmul fast float %4091, %3971
  %4095 = fmul fast float %4092, %3971
  %4096 = fmul fast float %4093, %3971
  %4097 = fadd fast float %4094, %3829
  %4098 = fadd fast float %4095, %3830
  %4099 = fadd fast float %4096, %3831
  %4100 = call float @dx.op.binary.f32(i32 36, float %3833, float %4019)  ; FMin(a,b)
  %4101 = fsub fast float %4100, %3833
  %4102 = fmul fast float %4101, %3971
  %4103 = fadd fast float %4102, %3833
  %4104 = fsub fast float %4032, %3832
  %4105 = fmul fast float %4104, %3971
  %4106 = fadd fast float %4105, %3832
  br label %4107

; <label>:4107                                    ; preds = %3969, %3931, %3822, %3538
  %4108 = phi float [ %4071, %3969 ], [ %3823, %3931 ], [ %3823, %3822 ], [ %3438, %3538 ]
  %4109 = phi float [ %4072, %3969 ], [ %3824, %3931 ], [ %3824, %3822 ], [ %3439, %3538 ]
  %4110 = phi float [ %4073, %3969 ], [ %3825, %3931 ], [ %3825, %3822 ], [ %3440, %3538 ]
  %4111 = phi float [ %4080, %3969 ], [ %3826, %3931 ], [ %3826, %3822 ], [ %3423, %3538 ]
  %4112 = phi float [ %4081, %3969 ], [ %3827, %3931 ], [ %3827, %3822 ], [ %3424, %3538 ]
  %4113 = phi float [ %4082, %3969 ], [ %3828, %3931 ], [ %3828, %3822 ], [ %3425, %3538 ]
  %4114 = phi float [ %4097, %3969 ], [ %3829, %3931 ], [ %3829, %3822 ], [ %3387, %3538 ]
  %4115 = phi float [ %4098, %3969 ], [ %3830, %3931 ], [ %3830, %3822 ], [ %3388, %3538 ]
  %4116 = phi float [ %4099, %3969 ], [ %3831, %3931 ], [ %3831, %3822 ], [ %3389, %3538 ]
  %4117 = phi float [ %4106, %3969 ], [ %3832, %3931 ], [ %3832, %3822 ], [ %3426, %3538 ]
  %4118 = phi float [ %4103, %3969 ], [ %3833, %3931 ], [ %3833, %3822 ], [ %3399, %3538 ]
  %4119 = fcmp fast une float %3542, 0.000000e+00
  %4120 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 25, float %4120)  ; Rsqrt(value)
  br i1 %4119, label %4129, label %4122

; <label>:4122                                    ; preds = %4107
  %4123 = fmul fast float %4121, %151
  %4124 = fmul fast float %4121, %152
  %4125 = fmul fast float %4121, %153
  %4126 = fsub fast float -0.000000e+00, %4123
  %4127 = fsub fast float -0.000000e+00, %4124
  %4128 = fsub fast float -0.000000e+00, %4125
  br label %4296

; <label>:4129                                    ; preds = %4107
  %4130 = fmul fast float %151, %4121
  %4131 = fsub fast float -0.000000e+00, %4130
  %4132 = fmul fast float %152, %4121
  %4133 = fsub fast float -0.000000e+00, %4132
  %4134 = fmul fast float %153, %4121
  %4135 = fsub fast float -0.000000e+00, %4134
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4131, float %4133, float %4135, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = fmul fast float %3542, 2.500000e+00
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fmul fast float %3542, 0x4013FFFFE0000000
  %4140 = fadd fast float %4139, 0xBFFFFFFFE0000000
  %4141 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4142 = fmul fast float %3542, 0x4004000020000000
  %4143 = fadd fast float %4142, 0xBFF8000040000000
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4145 = fmul fast float %3405, 1.000000e+01
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4146, 2.000000e+00
  %4148 = fsub fast float 3.000000e+00, %4147
  %4149 = fmul fast float %4146, %4146
  %4150 = fmul fast float %4149, %4148
  %4151 = fsub fast float 1.000000e+00, %4150
  %4152 = fsub fast float 0x3FE3333340000000, %4117
  %4153 = fmul fast float %4152, 0x400AAAAAA0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4151, %4154
  %4156 = fmul fast float %4108, 0x3FEA2B8620000000
  %4157 = fmul fast float %4109, 0x3FEA2B8620000000
  %4158 = fmul fast float %4110, 0x3FEA2B8620000000
  %4159 = fadd fast float %4156, 0x3FC81DFBA0000000
  %4160 = fmul fast float %4159, %4108
  %4161 = fadd fast float %4160, 0x3F910E6020000000
  %4162 = fadd fast float %4157, 0x3FC81DFBA0000000
  %4163 = fmul fast float %4162, %4109
  %4164 = fadd fast float %4163, 0x3F910E6020000000
  %4165 = fadd fast float %4158, 0x3FC81DFBA0000000
  %4166 = fmul fast float %4165, %4110
  %4167 = fadd fast float %4166, 0x3F910E6020000000
  %4168 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = fsub fast float %4168, %4108
  %4172 = fsub fast float %4169, %4109
  %4173 = fsub fast float %4170, %4110
  %4174 = fmul fast float %4171, %4138
  %4175 = fmul fast float %4174, %4155
  %4176 = fmul fast float %4172, %4138
  %4177 = fmul fast float %4176, %4155
  %4178 = fmul fast float %4173, %4138
  %4179 = fmul fast float %4178, %4155
  %4180 = fadd fast float %4175, %4108
  %4181 = fadd fast float %4177, %4109
  %4182 = fadd fast float %4179, %4110
  %4183 = fmul fast float %4118, %4118
  %4184 = fmul fast float %4183, %4183
  %4185 = fadd fast float %4141, 1.000000e+00
  %4186 = fsub fast float %4185, %4155
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4190 = fsub fast float 1.000000e+00, %4184
  %4191 = call float @dx.op.binary.f32(i32 36, float %4187, float %4190)  ; FMin(a,b)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4193 = call float @dx.op.binary.f32(i32 35, float %4191, float %4192)  ; FMax(a,b)
  %4194 = fadd fast float %4189, 0xBFE4CCCCC0000000
  %4195 = fmul fast float %4194, 0x4006DB6DA0000000
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fmul fast float %4196, 2.000000e+00
  %4198 = fsub fast float 3.000000e+00, %4197
  %4199 = bitcast float %4111 to i32
  %4200 = ashr i32 %4199, 1
  %4201 = add nsw i32 %4200, 532487669
  %4202 = bitcast i32 %4201 to float
  %4203 = fsub fast float 1.000000e+00, %4202
  %4204 = bitcast float %4203 to i32
  %4205 = sub nsw i32 2129859010, %4204
  %4206 = bitcast i32 %4205 to float
  %4207 = fmul fast float %4206, 2.000000e+00
  %4208 = bitcast float %4112 to i32
  %4209 = ashr i32 %4208, 1
  %4210 = add nsw i32 %4209, 532487669
  %4211 = bitcast i32 %4210 to float
  %4212 = fsub fast float 1.000000e+00, %4211
  %4213 = bitcast float %4212 to i32
  %4214 = sub nsw i32 2129859010, %4213
  %4215 = bitcast i32 %4214 to float
  %4216 = fmul fast float %4215, 2.000000e+00
  %4217 = bitcast float %4113 to i32
  %4218 = ashr i32 %4217, 1
  %4219 = add nsw i32 %4218, 532487669
  %4220 = bitcast i32 %4219 to float
  %4221 = fsub fast float 1.000000e+00, %4220
  %4222 = bitcast float %4221 to i32
  %4223 = sub nsw i32 2129859010, %4222
  %4224 = bitcast i32 %4223 to float
  %4225 = fmul fast float %4224, 2.000000e+00
  %4226 = fsub fast float 0x4002A9FBE0000000, %4207
  %4227 = fadd fast float %4207, 0x3FD54FDF00000000
  %4228 = bitcast float %4227 to i32
  %4229 = sub nsw i32 2129859010, %4228
  %4230 = bitcast i32 %4229 to float
  %4231 = fmul fast float %4230, %4226
  %4232 = fmul fast float %4231, %4231
  %4233 = fsub fast float 0x4002A9FBE0000000, %4216
  %4234 = fadd fast float %4216, 0x3FD54FDF00000000
  %4235 = bitcast float %4234 to i32
  %4236 = sub nsw i32 2129859010, %4235
  %4237 = bitcast i32 %4236 to float
  %4238 = fmul fast float %4237, %4233
  %4239 = fmul fast float %4238, %4238
  %4240 = fsub fast float 0x4002A9FBE0000000, %4225
  %4241 = fadd fast float %4225, 0x3FD54FDF00000000
  %4242 = bitcast float %4241 to i32
  %4243 = sub nsw i32 2129859010, %4242
  %4244 = bitcast i32 %4243 to float
  %4245 = fmul fast float %4244, %4240
  %4246 = fmul fast float %4245, %4245
  %4247 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4232)  ; FMax(a,b)
  %4248 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4239)  ; FMax(a,b)
  %4249 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4246)  ; FMax(a,b)
  %4250 = fsub fast float 1.000000e+00, %4136
  %4251 = fadd fast float %4250, %4151
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fsub fast float 1.000000e+00, %3523
  %4254 = fmul fast float %4193, %4253
  %4255 = fmul fast float %4196, %4196
  %4256 = fmul fast float %4255, %4254
  %4257 = fmul fast float %4256, %4198
  %4258 = fmul fast float %4253, 0xBFE99999A0000000
  %4259 = fmul fast float %4258, %4138
  %4260 = fmul fast float %4259, %4155
  %4261 = fadd fast float %4260, 1.000000e+00
  %4262 = fadd fast float %4117, -1.000000e+00
  %4263 = fmul fast float %4261, %4262
  %4264 = fadd fast float %4263, 1.000000e+00
  %4265 = fsub fast float %4247, %4111
  %4266 = fsub fast float %4248, %4112
  %4267 = fsub fast float %4249, %4113
  %4268 = fmul fast float %4257, %4265
  %4269 = fmul fast float %4257, %4266
  %4270 = fmul fast float %4257, %4267
  %4271 = fadd fast float %4268, %4111
  %4272 = fadd fast float %4269, %4112
  %4273 = fadd fast float %4270, %4113
  %4274 = fsub fast float %71, %4114
  %4275 = fsub fast float %72, %4115
  %4276 = fsub fast float %73, %4116
  %4277 = fmul fast float %4257, %4274
  %4278 = fmul fast float %4257, %4275
  %4279 = fmul fast float %4257, %4276
  %4280 = fadd fast float %4277, %4114
  %4281 = fadd fast float %4278, %4115
  %4282 = fadd fast float %4279, %4116
  %4283 = fmul fast float %4257, %4252
  %4284 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4285 = fsub fast float 1.000000e+00, %4284
  %4286 = fmul fast float %4283, %4285
  %4287 = fadd fast float %4286, %4284
  %4288 = fsub fast float 1.000000e+00, %4118
  %4289 = fmul fast float %4257, %4288
  %4290 = fadd fast float %4289, %4118
  %4291 = call float @dx.op.dot3.f32(i32 55, float %4280, float %4281, float %4282, float %4280, float %4281, float %4282)  ; Dot3(ax,ay,az,bx,by,bz)
  %4292 = call float @dx.op.unary.f32(i32 25, float %4291)  ; Rsqrt(value)
  %4293 = fmul fast float %4280, %4292
  %4294 = fmul fast float %4281, %4292
  %4295 = fmul fast float %4282, %4292
  br label %4296

; <label>:4296                                    ; preds = %4129, %4122
  %4297 = phi float [ %4128, %4122 ], [ %4135, %4129 ]
  %4298 = phi float [ %4127, %4122 ], [ %4133, %4129 ]
  %4299 = phi float [ %4126, %4122 ], [ %4131, %4129 ]
  %4300 = phi float [ %4125, %4122 ], [ %4134, %4129 ]
  %4301 = phi float [ %4124, %4122 ], [ %4132, %4129 ]
  %4302 = phi float [ %4123, %4122 ], [ %4130, %4129 ]
  %4303 = phi float [ %4108, %4122 ], [ %4180, %4129 ]
  %4304 = phi float [ %4109, %4122 ], [ %4181, %4129 ]
  %4305 = phi float [ %4110, %4122 ], [ %4182, %4129 ]
  %4306 = phi float [ %4111, %4122 ], [ %4271, %4129 ]
  %4307 = phi float [ %4112, %4122 ], [ %4272, %4129 ]
  %4308 = phi float [ %4113, %4122 ], [ %4273, %4129 ]
  %4309 = phi float [ %4114, %4122 ], [ %4293, %4129 ]
  %4310 = phi float [ %4115, %4122 ], [ %4294, %4129 ]
  %4311 = phi float [ %4116, %4122 ], [ %4295, %4129 ]
  %4312 = phi float [ %4117, %4122 ], [ %4287, %4129 ]
  %4313 = phi float [ %4118, %4122 ], [ %4290, %4129 ]
  %4314 = select i1 %192, float 0.000000e+00, float %4308
  %4315 = call float @dx.op.dot3.f32(i32 55, float %4309, float %4310, float %4311, float %4299, float %4298, float %4297)  ; Dot3(ax,ay,az,bx,by,bz)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4302, float %4301, float %4300, float %4309, float %4310, float %4311)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = fmul fast float %4317, 2.000000e+00
  %4319 = fmul fast float %4318, %4309
  %4320 = fmul fast float %4318, %4310
  %4321 = fmul fast float %4318, %4311
  %4322 = fsub fast float %4302, %4319
  %4323 = fsub fast float %4301, %4320
  %4324 = fsub fast float %4300, %4321
  %4325 = call float @dx.op.binary.f32(i32 36, float %4313, float 1.000000e+00)  ; FMin(a,b)
  %4326 = fsub fast float 1.000000e+00, %41
  %4327 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = call float @dx.op.binary.f32(i32 35, float %4327, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4329 = fdiv fast float %4326, %4328
  %4330 = call float @dx.op.dot3.f32(i32 55, float %4309, float %4310, float %4311, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4331, 5.000000e-01
  %4333 = fadd fast float %4332, 5.000000e-01
  %4334 = fmul fast float %4333, %41
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4309, float %4310, float %4311, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4336, %4329
  %4338 = fadd fast float %4334, %4337
  %4339 = fsub fast float 5.000000e-01, %4332
  %4340 = fmul fast float %4339, %4303
  %4341 = fmul fast float %4339, %4304
  %4342 = fmul fast float %4339, %4305
  %4343 = fadd fast float %4338, %4340
  %4344 = fadd fast float %4338, %4341
  %4345 = fadd fast float %4338, %4342
  %4346 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4347, 5.000000e-01
  %4349 = fadd fast float %4348, 5.000000e-01
  %4350 = fmul fast float %4349, %41
  %4351 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = fmul fast float %4352, %4329
  %4354 = fadd fast float %4350, %4353
  %4355 = fsub fast float 5.000000e-01, %4348
  %4356 = fmul fast float %4355, %4303
  %4357 = fmul fast float %4355, %4304
  %4358 = fmul fast float %4355, %4305
  %4359 = fadd fast float %4354, %4356
  %4360 = fadd fast float %4354, %4357
  %4361 = fadd fast float %4354, %4358
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = call float @dx.op.binary.f32(i32 36, float %4303, float %4363)  ; FMin(a,b)
  %4365 = fsub fast float 1.000000e+00, %4325
  %4366 = fmul fast float %4364, %4365
  %4367 = fsub fast float 1.000000e+00, %4366
  %4368 = bitcast float %4367 to i32
  %4369 = sub nsw i32 2129859010, %4368
  %4370 = bitcast i32 %4369 to float
  %4371 = call float @dx.op.binary.f32(i32 36, float %4304, float %4363)  ; FMin(a,b)
  %4372 = fmul fast float %4371, %4365
  %4373 = fsub fast float 1.000000e+00, %4372
  %4374 = bitcast float %4373 to i32
  %4375 = sub nsw i32 2129859010, %4374
  %4376 = bitcast i32 %4375 to float
  %4377 = call float @dx.op.binary.f32(i32 36, float %4305, float %4363)  ; FMin(a,b)
  %4378 = fmul fast float %4377, %4365
  %4379 = fsub fast float 1.000000e+00, %4378
  %4380 = bitcast float %4379 to i32
  %4381 = sub nsw i32 2129859010, %4380
  %4382 = bitcast i32 %4381 to float
  %4383 = fmul fast float %4325, %42
  %4384 = fmul fast float %4383, %4343
  %4385 = fmul fast float %4384, %4370
  %4386 = fmul fast float %4325, %43
  %4387 = fmul fast float %4386, %4344
  %4388 = fmul fast float %4387, %4376
  %4389 = fmul fast float %4325, %44
  %4390 = fmul fast float %4389, %4345
  %4391 = fmul fast float %4390, %4382
  %4392 = call float @dx.op.binary.f32(i32 36, float %4306, float %4363)  ; FMin(a,b)
  %4393 = fmul fast float %4392, %4365
  %4394 = fsub fast float 1.000000e+00, %4393
  %4395 = bitcast float %4394 to i32
  %4396 = sub nsw i32 2129859010, %4395
  %4397 = bitcast i32 %4396 to float
  %4398 = call float @dx.op.binary.f32(i32 36, float %4307, float %4363)  ; FMin(a,b)
  %4399 = fmul fast float %4398, %4365
  %4400 = fsub fast float 1.000000e+00, %4399
  %4401 = bitcast float %4400 to i32
  %4402 = sub nsw i32 2129859010, %4401
  %4403 = bitcast i32 %4402 to float
  %4404 = call float @dx.op.binary.f32(i32 36, float %4314, float %4363)  ; FMin(a,b)
  %4405 = fmul fast float %4404, %4365
  %4406 = fsub fast float 1.000000e+00, %4405
  %4407 = bitcast float %4406 to i32
  %4408 = sub nsw i32 2129859010, %4407
  %4409 = bitcast i32 %4408 to float
  %4410 = fmul fast float %4383, %4359
  %4411 = fmul fast float %4410, %4397
  %4412 = fmul fast float %4386, %4360
  %4413 = fmul fast float %4412, %4403
  %4414 = fmul fast float %4389, %4361
  %4415 = fmul fast float %4414, %4409
  %4416 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4388, float %4391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = select i1 %192, float 0.000000e+00, float %4385
  %4418 = select i1 %192, float %4416, float %4388
  %4419 = select i1 %192, float 0.000000e+00, float %4391
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4413, float %4415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = select i1 %192, float 0.000000e+00, float %4411
  %4422 = select i1 %192, float %4420, float %4413
  %4423 = select i1 %192, float 0.000000e+00, float %4415
  %4424 = fmul fast float %4316, 9.843750e-01
  %4425 = fmul fast float %4312, 9.843750e-01
  %4426 = fadd fast float %4424, 7.812500e-03
  %4427 = fadd fast float %4425, 7.812500e-03
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %4426, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 3
  %4431 = fmul fast float %4429, %4306
  %4432 = fmul fast float %4429, %4307
  %4433 = fmul fast float %4429, %4314
  %4434 = fadd fast float %4431, %4430
  %4435 = fadd fast float %4432, %4430
  %4436 = fadd fast float %4433, %4430
  %4437 = fcmp fast ogt float %3400, 0.000000e+00
  br i1 %4437, label %4438, label %4464

; <label>:4438                                    ; preds = %4296
  %4439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %3400, float %4316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.ResRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.ResRet.f32 %4439, 2
  %4443 = fadd fast float %4440, -5.000000e-01
  %4444 = fadd fast float %4441, -5.000000e-01
  %4445 = fadd fast float %4442, -5.000000e-01
  %4446 = fsub fast float 1.000000e+00, %4306
  %4447 = fsub fast float 1.000000e+00, %4307
  %4448 = fsub fast float 1.000000e+00, %4314
  %4449 = fmul fast float %4306, 4.000000e+00
  %4450 = fmul fast float %4449, %4446
  %4451 = fmul fast float %4450, %4443
  %4452 = fmul fast float %4307, 4.000000e+00
  %4453 = fmul fast float %4452, %4447
  %4454 = fmul fast float %4453, %4444
  %4455 = fmul fast float %4314, 4.000000e+00
  %4456 = fmul fast float %4455, %4448
  %4457 = fmul fast float %4456, %4445
  %4458 = fadd fast float %4451, %4434
  %4459 = fadd fast float %4454, %4435
  %4460 = fadd fast float %4457, %4436
  %4461 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  br label %4464

; <label>:4464                                    ; preds = %4438, %4296
  %4465 = phi float [ %4461, %4438 ], [ %4434, %4296 ]
  %4466 = phi float [ %4462, %4438 ], [ %4435, %4296 ]
  %4467 = phi float [ %4463, %4438 ], [ %4436, %4296 ]
  %4468 = call float @dx.op.binary.f32(i32 35, float %4466, float %4467)  ; FMax(a,b)
  %4469 = call float @dx.op.binary.f32(i32 35, float %4465, float %4468)  ; FMax(a,b)
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4303, float %4304, float %4305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = fcmp fast ogt float %4471, 0x3E7FF19E20000000
  %4473 = fdiv fast float 1.000000e+00, %4471
  %4474 = select i1 %4472, float %4473, float 0.000000e+00
  %4475 = fmul fast float %4474, %4303
  %4476 = fmul fast float %4474, %4304
  %4477 = fmul fast float %4474, %4305
  %4478 = fadd fast float %4475, -1.000000e+00
  %4479 = fadd fast float %4476, -1.000000e+00
  %4480 = fadd fast float %4477, -1.000000e+00
  %4481 = fmul fast float %4478, 5.000000e-01
  %4482 = fmul fast float %4479, 5.000000e-01
  %4483 = fmul fast float %4480, 5.000000e-01
  %4484 = fadd fast float %4481, 1.000000e+00
  %4485 = fadd fast float %4482, 1.000000e+00
  %4486 = fadd fast float %4483, 1.000000e+00
  %4487 = fmul fast float %4465, %4421
  %4488 = fmul fast float %4466, %4422
  %4489 = fmul fast float %4467, %4423
  %4490 = fsub fast float 1.000000e+00, %4316
  %4491 = bitcast float %4490 to i32
  %4492 = sitofp i32 %4491 to float
  %4493 = fmul fast float %4492, 5.000000e+00
  %4494 = fadd fast float %4493, 0xC1EFBF8940000000
  %4495 = fptosi float %4494 to i32
  %4496 = bitcast i32 %4495 to float
  %4497 = fmul fast float %4496, %3401
  %4498 = fmul fast float %4417, %4497
  %4499 = fmul fast float %4498, %4470
  %4500 = fmul fast float %4499, %4484
  %4501 = fmul fast float %4418, %4497
  %4502 = fmul fast float %4501, %4470
  %4503 = fmul fast float %4502, %4485
  %4504 = fmul fast float %4419, %4497
  %4505 = fmul fast float %4504, %4470
  %4506 = fmul fast float %4505, %4486
  %4507 = fmul fast float %4419, %3397
  %4508 = fmul fast float %4507, %4470
  %4509 = fadd fast float %4487, %3393
  %4510 = fadd fast float %4509, %4500
  %4511 = fadd fast float %4488, %3394
  %4512 = fadd fast float %4511, %4503
  %4513 = fmul fast float %4512, %3397
  %4514 = fadd fast float %4489, %3395
  %4515 = fadd fast float %4514, %4506
  %4516 = fmul fast float %4515, %3397
  %4517 = call float @dx.op.unary.f32(i32 24, float %4303)  ; Sqrt(value)
  %4518 = call float @dx.op.unary.f32(i32 24, float %4304)  ; Sqrt(value)
  %4519 = call float @dx.op.unary.f32(i32 24, float %4305)  ; Sqrt(value)
  %4520 = fmul fast float %4417, %3397
  %4521 = fmul fast float %4520, %4470
  %4522 = fmul fast float %4521, %4517
  %4523 = fmul fast float %4418, %3397
  %4524 = fmul fast float %4523, %4470
  %4525 = fmul fast float %4524, %4518
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  br i1 %192, label %4528, label %4548

; <label>:4528                                    ; preds = %4464
  %4529 = fadd fast float %4508, %3403
  %4530 = fmul fast float %4529, %3404
  %4531 = fsub fast float 1.000000e+00, %3404
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4535 = fmul fast float %4534, %4532
  %4536 = fadd fast float %4535, %4530
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = fmul fast float %4538, %4490
  %4540 = fsub fast float %4536, %4539
  %4541 = fadd fast float %4525, %4522
  %4542 = fmul fast float %4527, %4541
  %4543 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4544 = fsub fast float %4540, %4543
  %4545 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4546 = fmul fast float %4544, %4545
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  br label %4564

; <label>:4548                                    ; preds = %4464
  %4549 = fmul fast float %4519, %4508
  %4550 = fmul fast float %4527, %4522
  %4551 = fmul fast float %4527, %4525
  %4552 = fmul fast float %4549, %4527
  %4553 = add i32 %20, 356
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = and i32 %4555, 32
  %4557 = icmp eq i32 %4556, 0
  br i1 %4557, label %4564, label %4558

; <label>:4558                                    ; preds = %4548
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = fmul fast float %4560, 0x3FE99999A0000000
  %4562 = fadd fast float %4560, %4550
  %4563 = fadd fast float %4561, %4552
  br label %4564

; <label>:4564                                    ; preds = %4558, %4548, %4528
  %4565 = phi float [ %4542, %4528 ], [ %4562, %4558 ], [ %4550, %4548 ]
  %4566 = phi float [ %4547, %4528 ], [ %4551, %4558 ], [ %4551, %4548 ]
  %4567 = phi float [ 1.000000e+00, %4528 ], [ %4563, %4558 ], [ %4552, %4548 ]
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = fmul fast float %4513, %4569
  %4571 = fmul fast float %4516, %4569
  %4572 = fadd fast float %4510, %4512
  %4573 = select i1 %192, float %4572, float %4510
  %4574 = fmul float %3397, %4573
  %4575 = fmul float %4574, %4569
  %4576 = select i1 %192, float 0.000000e+00, float %4570
  %4577 = select i1 %192, float 0.000000e+00, float %4571
  %4578 = fmul fast float %4565, %4517
  %4579 = fmul fast float %4566, %4518
  %4580 = fmul fast float %4567, %4519
  %4581 = fadd fast float %4575, %4578
  %4582 = fadd fast float %4576, %4579
  %4583 = fadd fast float %4577, %4580
  %4584 = select i1 %192, float %4566, float %4582
  %4585 = select i1 %192, float %4567, float %4583
  %4586 = call float @dx.op.binary.f32(i32 36, float %4581, float 3.225500e+04)  ; FMin(a,b)
  %4587 = call float @dx.op.binary.f32(i32 36, float %4584, float 3.225500e+04)  ; FMin(a,b)
  %4588 = call float @dx.op.binary.f32(i32 36, float %4585, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!31}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !23, !26}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
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
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!26 = !{!27, !28, !29, !30}
!27 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!32 = !{void ()* @ps_main, !"ps_main", !33, !4, !59}
!33 = !{!34, !57, null}
!34 = !{!35, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56}
!35 = !{i32 0, !"SV_Position", i8 9, i8 3, !36, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!36 = !{i32 0}
!37 = !{i32 3, i32 11}
!38 = !{i32 1, !"COLOR", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!39 = !{i32 3, i32 14}
!40 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 2, i8 0, !41}
!41 = !{i32 3, i32 3}
!42 = !{i32 3, !"NORMAL", i8 9, i8 0, !36, i8 2, i32 1, i8 3, i32 3, i8 0, !43}
!43 = !{i32 3, i32 7}
!44 = !{i32 4, !"TANGENT", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 4, i8 0, !45}
!45 = !{i32 3, i32 15}
!46 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !36, i8 2, i32 1, i8 3, i32 5, i8 0, !43}
!47 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 6, i8 0, !45}
!48 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 3, i32 7, i8 0, !43}
!49 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 8, i8 0, !45}
!50 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 9, i8 0, !41}
!51 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 10, i8 0, !45}
!52 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 11, i8 0, !43}
!53 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !36, i8 1, i32 1, i8 1, i32 12, i8 0, !54}
!54 = !{i32 3, i32 1}
!55 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !36, i8 1, i32 1, i8 4, i32 13, i8 0, !54}
!56 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !36, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 4, i32 0, i8 0, !45}
!59 = !{i32 0, i64 24}

