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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; SV_IsFrontFace           0    y         13    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f2ef1f107276619c51c9b7994be78f70
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = icmp ne i32 %21, 0
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %65
  %73 = fmul fast float %71, %66
  %74 = select i1 %22, float 1.000000e+00, float -1.000000e+00
  %75 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = bitcast float %75 to i32
  %77 = ashr i32 %76, 1
  %78 = sub nsw i32 1597250115, %77
  %79 = bitcast i32 %78 to float
  %80 = fmul fast float %57, %74
  %81 = fmul fast float %80, %79
  %82 = fmul fast float %58, %74
  %83 = fmul fast float %82, %79
  %84 = fmul fast float %59, %74
  %85 = fmul fast float %84, %79
  %86 = fmul fast float %58, %55
  %87 = fmul fast float %59, %54
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %59, %53
  %90 = fmul fast float %57, %55
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %57, %54
  %93 = fmul fast float %58, %53
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %88, %56
  %96 = fmul fast float %91, %56
  %97 = fmul fast float %94, %56
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast une float %99, 0.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %72, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %73, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = select i1 %100, float %111, float %115
  %119 = select i1 %100, float %112, float %116
  %120 = select i1 %100, float %113, float %117
  %121 = fmul fast float %118, %108
  %122 = fmul fast float %119, %108
  %123 = fmul fast float %120, %108
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = select i1 %100, float %125, float %129
  %133 = select i1 %100, float %126, float %130
  %134 = select i1 %100, float %127, float %131
  %135 = fmul fast float %132, %109
  %136 = fmul fast float %133, %109
  %137 = fmul fast float %134, %109
  %138 = fadd fast float %135, %121
  %139 = fadd fast float %136, %122
  %140 = fadd fast float %137, %123
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = select i1 %100, float %142, float %146
  %150 = select i1 %100, float %143, float %147
  %151 = select i1 %100, float %144, float %148
  %152 = fadd fast float %138, %149
  %153 = fadd fast float %139, %150
  %154 = fadd fast float %140, %151
  %155 = fmul fast float %152, %67
  %156 = fmul fast float %153, %67
  %157 = fmul fast float %154, %67
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %159, %72
  %162 = fmul fast float %160, %73
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 114688
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float %161, float 0.000000e+00
  %168 = select i1 %166, float %162, float 0.000000e+00
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fmul fast float %170, 2.550000e+02
  %172 = fptoui float %171 to i32
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %175, 4
  %179 = icmp ne i32 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %0
  %182 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %183 = fmul fast float %182, %73
  %184 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %185 = fmul fast float %184, %72
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %185, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = fcmp fast olt float %188, %190
  br label %195

; <label>:192                                     ; preds = %0
  %193 = icmp eq i32 %178, 0
  %194 = and i1 %177, %193
  br label %195

; <label>:195                                     ; preds = %192, %181
  %196 = phi i1 [ %191, %181 ], [ %194, %192 ]
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = fmul fast float %198, 0x3FE3C6EF40000000
  %200 = frem fast float %72, 2.560000e+02
  %201 = frem fast float %73, 2.560000e+02
  %202 = fptoui float %200 to i32
  %203 = fptoui float %201 to i32
  %204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %202, i32 %203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fadd fast float %205, %199
  %207 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %208 = add i32 %23, 156
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = shl i32 %210, 4
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %210, 7
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %210, 22
  %218 = shl nuw nsw i32 %217, 5
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = add i32 %23, 216
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %222, 8
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %222, 16
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = add i32 %23, 36
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %23, 288
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = fmul fast float %245, 0x3F50624DE0000000
  %249 = fmul fast float %247, 0x3F50624DE0000000
  %250 = add i32 %23, 172
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = shl i32 %252, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %252, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %252, 22
  %260 = shl nuw nsw i32 %259, 5
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %23, 232
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %264, 8
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = lshr i32 %264, 16
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = add i32 %23, 52
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %23, 304
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = fmul fast float %287, 0x3F50624DE0000000
  %291 = fmul fast float %289, 0x3F50624DE0000000
  %292 = add i32 %23, 188
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = shl i32 %294, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %294, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 22
  %302 = shl nuw nsw i32 %301, 5
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %23, 248
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %306, 8
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %306, 16
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = add i32 %23, 68
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %23, 320
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %329, 0x3F50624DE0000000
  %333 = fmul fast float %331, 0x3F50624DE0000000
  %334 = add i32 %23, 204
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = shl i32 %336, 4
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %336, 7
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 22
  %344 = shl nuw nsw i32 %343, 5
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %23, 264
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %348, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %348, 16
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = add i32 %23, 84
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %23, 336
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fmul fast float %371, 0x3F50624DE0000000
  %375 = fmul fast float %373, 0x3F50624DE0000000
  %376 = add i32 %23, 348
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 32
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %378, 64
  %382 = icmp eq i32 %381, 0
  %383 = and i32 %378, 128
  %384 = icmp eq i32 %383, 0
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 2
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

; <label>:389                                     ; preds = %195
  %390 = add i32 %23, 472
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = add i32 %392, 0
  %394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %394, %dx.types.Handle %69, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = fmul fast float %396, %62
  %400 = fmul fast float %397, %63
  %401 = fmul fast float %398, %64
  br label %402

; <label>:402                                     ; preds = %389, %195
  %403 = phi float [ %64, %195 ], [ %401, %389 ]
  %404 = phi float [ %63, %195 ], [ %400, %389 ]
  %405 = phi float [ %62, %195 ], [ %399, %389 ]
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %429, label %410

; <label>:410                                     ; preds = %402
  %411 = add i32 %23, 44
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %405, float 1.000000e+00
  %417 = add i32 %23, 60
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %404, float 1.000000e+00
  %423 = add i32 %23, 76
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %403, float 1.000000e+00
  br label %429

; <label>:429                                     ; preds = %410, %402
  %430 = phi float [ %403, %402 ], [ %428, %410 ]
  %431 = phi float [ %404, %402 ], [ %422, %410 ]
  %432 = phi float [ %405, %402 ], [ %416, %410 ]
  %433 = lshr i32 %407, 20
  %434 = and i32 %433, 3
  %435 = add nuw nsw i32 %434, 1
  %436 = add i32 %23, 24
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %23, 28
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = or i32 %441, %438
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %902, label %444

; <label>:444                                     ; preds = %429
  %445 = and i32 %438, 262144
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %28, float 1.000000e+00
  %448 = select i1 %446, float %29, float 0.000000e+00
  %449 = select i1 %446, float %30, float 0.000000e+00
  %450 = select i1 %446, float %31, float 1.000000e+00
  %451 = select i1 %446, float %32, float %60
  %452 = select i1 %446, float %33, float %61
  %453 = add i32 %23, 284
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = fmul fast float %457, 0x3F50624DE0000000
  %459 = add i32 %23, 88
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = lshr i32 %461, 16
  %463 = and i32 %462, 255
  %464 = lshr i32 %461, 24
  %465 = add i32 %23, 292
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = add i32 %23, 32
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 22
  %476 = shl nuw nsw i32 %475, 5
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = shl i32 %474, 4
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %474, 7
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %486 = fmul fast float %485, 1.000000e+03
  %487 = fmul fast float %248, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fadd fast float %488, %238
  %490 = fmul fast float %249, %486
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fadd fast float %491, %240
  %493 = fmul fast float %458, %486
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fmul fast float %494, 0x401921FB60000000
  %496 = fadd fast float %495, %477
  %497 = call float @dx.op.unary.f32(i32 13, float %496)  ; Sin(value)
  %498 = call float @dx.op.unary.f32(i32 12, float %496)  ; Cos(value)
  %499 = fsub fast float -0.000000e+00, %497
  %500 = fadd fast float %451, -5.000000e-01
  %501 = fadd fast float %452, -5.000000e-01
  %502 = fmul fast float %469, %500
  %503 = fmul fast float %471, %501
  %504 = fadd fast float %502, 5.000000e-01
  %505 = fadd fast float %503, 5.000000e-01
  %506 = fmul fast float %480, %504
  %507 = fmul fast float %483, %505
  %508 = fmul fast float %498, %506
  %509 = call float @dx.op.tertiary.f32(i32 46, float %499, float %507, float %508)  ; FMad(a,b,c)
  %510 = fmul fast float %497, %506
  %511 = call float @dx.op.tertiary.f32(i32 46, float %498, float %507, float %510)  ; FMad(a,b,c)
  %512 = fadd fast float %489, %509
  %513 = fadd fast float %492, %511
  %514 = icmp ugt i32 %463, 1
  %515 = icmp ugt i32 %461, 33554431
  %516 = or i1 %515, %514
  br i1 %516, label %517, label %542

; <label>:517                                     ; preds = %444
  %518 = add i32 %23, 228
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = fmul fast float %485, %522
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = mul nuw nsw i32 %463, %464
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %524, %526
  %528 = call float @dx.op.unary.f32(i32 27, float %527)  ; Round_ni(value)
  %529 = fptoui float %528 to i32
  %530 = urem i32 %529, %463
  %531 = udiv i32 %529, %464
  %532 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %533 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %534 = uitofp i32 %530 to float
  %535 = uitofp i32 %531 to float
  %536 = fadd fast float %532, %534
  %537 = fadd fast float %533, %535
  %538 = uitofp i32 %463 to float
  %539 = uitofp i32 %464 to float
  %540 = fdiv fast float %536, %538
  %541 = fdiv fast float %537, %539
  br label %542

; <label>:542                                     ; preds = %517, %444
  %543 = phi float [ %540, %517 ], [ %512, %444 ]
  %544 = phi float [ %541, %517 ], [ %513, %444 ]
  %545 = and i32 %438, 16
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %743, label %547

; <label>:547                                     ; preds = %542
  %548 = add i32 %23, 360
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = add i32 %550, 0
  %552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %552, %dx.types.Handle %68, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = and i32 %461, 255
  %559 = uitofp i32 %558 to float
  %560 = lshr i32 %461, 8
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %557, %559
  %564 = fadd fast float %563, %562
  %565 = fmul fast float %564, 0x3F70101000000000
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 512
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %578, label %570

; <label>:570                                     ; preds = %547
  %571 = add i32 %23, 440
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add i32 %573, 0
  %575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %575, %dx.types.Handle %69, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  br label %578

; <label>:578                                     ; preds = %570, %547
  %579 = phi float [ %577, %570 ], [ 1.000000e+00, %547 ]
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 33554432
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %690, label %584

; <label>:584                                     ; preds = %578
  %585 = add i32 %23, 224
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %587, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = add i32 %23, 228
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %594, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = lshr i32 %598, 24
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = and i32 %598, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = lshr i32 %598, 8
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = lshr i32 %598, 16
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = add i32 %23, 220
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = lshr i32 %615, 24
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = and i32 %615, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = lshr i32 %615, 8
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %615, 16
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = bitcast float %554 to i32
  %631 = ashr i32 %630, 1
  %632 = sub nsw i32 1597463174, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %554, 5.000000e-01
  %635 = fmul fast float %633, %633
  %636 = fmul fast float %635, %634
  %637 = fsub fast float 1.500000e+00, %636
  %638 = fmul fast float %633, %554
  %639 = fmul fast float %638, %637
  %640 = bitcast float %555 to i32
  %641 = ashr i32 %640, 1
  %642 = sub nsw i32 1597463174, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %555, 5.000000e-01
  %645 = fmul fast float %643, %643
  %646 = fmul fast float %645, %644
  %647 = fsub fast float 1.500000e+00, %646
  %648 = fmul fast float %643, %555
  %649 = fmul fast float %648, %647
  %650 = bitcast float %556 to i32
  %651 = ashr i32 %650, 1
  %652 = sub nsw i32 1597463174, %651
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %556, 5.000000e-01
  %655 = fmul fast float %653, %653
  %656 = fmul fast float %655, %654
  %657 = fsub fast float 1.500000e+00, %656
  %658 = fmul fast float %653, %556
  %659 = fmul fast float %658, %657
  %660 = fsub fast float %639, %621
  %661 = fsub fast float %649, %625
  %662 = fsub fast float %659, %629
  %663 = fmul fast float %660, %589
  %664 = fmul fast float %661, %591
  %665 = fmul fast float %662, %596
  %666 = fadd fast float %663, %604
  %667 = fadd fast float %664, %608
  %668 = fadd fast float %665, %612
  %669 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %670 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %671 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %672 = fmul fast float %669, %669
  %673 = fmul fast float %670, %670
  %674 = fmul fast float %671, %671
  %675 = fsub fast float %672, %554
  %676 = fsub fast float %673, %555
  %677 = fsub fast float %674, %556
  %678 = fmul fast float %675, %579
  %679 = fmul fast float %676, %579
  %680 = fmul fast float %677, %579
  %681 = fadd fast float %678, %554
  %682 = fadd fast float %679, %555
  %683 = fadd fast float %680, %556
  %684 = fadd fast float %601, %565
  %685 = fsub fast float %684, %618
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = fsub fast float %686, %565
  %688 = fmul fast float %687, %579
  %689 = fadd fast float %688, %565
  br label %743

; <label>:690                                     ; preds = %578
  %691 = and i32 %581, 134217728
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %727, label %693

; <label>:693                                     ; preds = %690
  %694 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %697 = fadd fast float %694, -5.000000e-01
  %698 = fadd fast float %695, -5.000000e-01
  %699 = fadd fast float %696, -5.000000e-01
  %700 = fmul fast float %697, %579
  %701 = fmul fast float %698, %579
  %702 = fmul fast float %699, %579
  %703 = fadd fast float %700, 5.000000e-01
  %704 = fadd fast float %701, 5.000000e-01
  %705 = fadd fast float %702, 5.000000e-01
  %706 = call float @dx.op.unary.f32(i32 24, float %554)  ; Sqrt(value)
  %707 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %556)  ; Sqrt(value)
  %709 = fmul fast float %703, 2.000000e+00
  %710 = fsub fast float 1.000000e+00, %709
  %711 = fmul fast float %710, %706
  %712 = fadd fast float %711, %709
  %713 = fmul fast float %712, %706
  %714 = fmul fast float %704, 2.000000e+00
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %715, %707
  %717 = fadd fast float %716, %714
  %718 = fmul fast float %717, %707
  %719 = fmul fast float %705, 2.000000e+00
  %720 = fsub fast float 1.000000e+00, %719
  %721 = fmul fast float %720, %708
  %722 = fadd fast float %721, %719
  %723 = fmul fast float %722, %708
  %724 = fmul fast float %713, %713
  %725 = fmul fast float %718, %718
  %726 = fmul fast float %723, %723
  br label %743

; <label>:727                                     ; preds = %690
  %728 = fmul fast float %225, %225
  %729 = fmul fast float %229, %229
  %730 = fmul fast float %233, %233
  %731 = fadd fast float %728, -1.000000e+00
  %732 = fadd fast float %729, -1.000000e+00
  %733 = fadd fast float %730, -1.000000e+00
  %734 = fmul fast float %579, %731
  %735 = fmul fast float %579, %732
  %736 = fmul fast float %579, %733
  %737 = fadd fast float %734, 1.000000e+00
  %738 = fadd fast float %735, 1.000000e+00
  %739 = fadd fast float %736, 1.000000e+00
  %740 = fmul fast float %737, %554
  %741 = fmul fast float %738, %555
  %742 = fmul fast float %739, %556
  br label %743

; <label>:743                                     ; preds = %727, %693, %584, %542
  %744 = phi float [ %689, %584 ], [ %565, %693 ], [ %565, %727 ], [ 0x3FA23C0BE0000000, %542 ]
  %745 = phi float [ %681, %584 ], [ %724, %693 ], [ %740, %727 ], [ 1.000000e+00, %542 ]
  %746 = phi float [ %682, %584 ], [ %725, %693 ], [ %741, %727 ], [ 1.000000e+00, %542 ]
  %747 = phi float [ %683, %584 ], [ %726, %693 ], [ %742, %727 ], [ 1.000000e+00, %542 ]
  %748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.i32 %748, 1
  %750 = and i32 %749, 1
  %751 = icmp ne i32 %750, 0
  %752 = add i32 %23, 356
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp ne i32 %755, 0
  %757 = and i1 %751, %756
  %758 = select i1 %757, float 1.000000e+00, float %745
  %759 = select i1 %757, float 0x3FD3333340000000, float %746
  %760 = select i1 %757, float 0x3FD3333340000000, float %747
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 32
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %837, label %765

; <label>:765                                     ; preds = %743
  %766 = add i32 %23, 92
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %23, 376
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %771, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %773, %dx.types.Handle %68, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = and i32 %768, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %768, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %768, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = fmul fast float %775, %780
  %789 = fadd fast float %788, %783
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = fadd fast float %776, -5.000000e-01
  %792 = fadd fast float %778, -5.000000e-01
  %793 = fmul fast float %791, %787
  %794 = fmul fast float %792, %787
  %795 = fadd fast float %793, 5.000000e-01
  %796 = fadd fast float %794, 5.000000e-01
  %797 = fmul fast float %795, 2.000000e+00
  %798 = fadd fast float %797, -1.000000e+00
  %799 = fmul fast float %796, 2.000000e+00
  %800 = fadd fast float %799, -1.000000e+00
  %801 = fadd fast float %798, %800
  %802 = fmul fast float %801, 5.000000e-01
  %803 = fsub fast float %798, %800
  %804 = fmul fast float %803, 5.000000e-01
  %805 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %806 = fsub fast float 1.000000e+00, %805
  %807 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %808 = fsub fast float %806, %807
  %809 = call float @dx.op.dot3.f32(i32 55, float %802, float %804, float %808, float %802, float %804, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %802, %810
  %812 = fmul fast float %804, %810
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 67108864
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %833, label %817

; <label>:817                                     ; preds = %765
  %818 = add i32 %23, 280
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %820, 16
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = fsub fast float %790, %828
  %830 = fmul fast float %829, %822
  %831 = fadd fast float %830, %826
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  br label %833

; <label>:833                                     ; preds = %817, %765
  %834 = phi float [ %832, %817 ], [ %790, %765 ]
  %835 = call float @dx.op.dot2.f32(i32 54, float %811, float %812, float %447, float %448)  ; Dot2(ax,ay,bx,by)
  %836 = call float @dx.op.dot2.f32(i32 54, float %811, float %812, float %449, float %450)  ; Dot2(ax,ay,bx,by)
  br label %837

; <label>:837                                     ; preds = %833, %743
  %838 = phi float [ %834, %833 ], [ 0x3FD6666660000000, %743 ]
  %839 = phi float [ %835, %833 ], [ 0.000000e+00, %743 ]
  %840 = phi float [ %836, %833 ], [ 0.000000e+00, %743 ]
  %841 = phi float [ %777, %833 ], [ 1.000000e+00, %743 ]
  %842 = add i32 %23, 160
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 22
  %846 = shl nuw nsw i32 %845, 5
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 64
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %885, label %852

; <label>:852                                     ; preds = %837
  %853 = add i32 %23, 392
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %855, 0
  %857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 131072
  %861 = icmp eq i32 %860, 0
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %857, %dx.types.Handle %68, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = extractvalue %dx.types.ResRet.f32 %862, 1
  %865 = extractvalue %dx.types.ResRet.f32 %862, 2
  %866 = fmul fast float %863, %213
  %867 = fmul fast float %864, %216
  %868 = fmul fast float %865, %219
  br i1 %861, label %875, label %869

; <label>:869                                     ; preds = %852
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = fmul fast float %871, %866
  %873 = fmul fast float %871, %867
  %874 = fmul fast float %871, %868
  br label %875

; <label>:875                                     ; preds = %869, %852
  %876 = phi float [ %872, %869 ], [ %866, %852 ]
  %877 = phi float [ %873, %869 ], [ %867, %852 ]
  %878 = phi float [ %874, %869 ], [ %868, %852 ]
  %879 = fmul fast float %876, %847
  %880 = select i1 %196, float %879, float %876
  %881 = call float @dx.op.dot3.f32(i32 55, float %880, float %877, float %878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = select i1 %196, float 0.000000e+00, float %876
  %883 = select i1 %196, float %881, float %877
  %884 = select i1 %196, float 0.000000e+00, float %878
  br label %885

; <label>:885                                     ; preds = %875, %837
  %886 = phi float [ %882, %875 ], [ 0.000000e+00, %837 ]
  %887 = phi float [ %883, %875 ], [ 0.000000e+00, %837 ]
  %888 = phi float [ %884, %875 ], [ 0.000000e+00, %837 ]
  %889 = add i32 %23, 96
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = lshr i32 %891, 8
  %895 = and i32 %894, 255
  %896 = uitofp i32 %895 to float
  %897 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = fmul fast float %896, %897
  %899 = fadd fast float %898, %893
  %900 = fmul fast float %899, 0x3F70101020000000
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  br label %902

; <label>:902                                     ; preds = %885, %429
  %903 = phi float [ 0.000000e+00, %429 ], [ %839, %885 ]
  %904 = phi float [ 0.000000e+00, %429 ], [ %840, %885 ]
  %905 = phi float [ 0.000000e+00, %429 ], [ %758, %885 ]
  %906 = phi float [ 0.000000e+00, %429 ], [ %759, %885 ]
  %907 = phi float [ 0.000000e+00, %429 ], [ %760, %885 ]
  %908 = phi float [ 0.000000e+00, %429 ], [ %886, %885 ]
  %909 = phi float [ 0.000000e+00, %429 ], [ %887, %885 ]
  %910 = phi float [ 0.000000e+00, %429 ], [ %888, %885 ]
  %911 = phi float [ 0.000000e+00, %429 ], [ %744, %885 ]
  %912 = phi float [ 0.000000e+00, %429 ], [ 1.000000e+00, %885 ]
  %913 = phi float [ 0.000000e+00, %429 ], [ %838, %885 ]
  %914 = phi float [ 0.000000e+00, %429 ], [ %841, %885 ]
  %915 = phi float [ 0.000000e+00, %429 ], [ %901, %885 ]
  br i1 %380, label %1642, label %916

; <label>:916                                     ; preds = %902
  %917 = icmp ult i32 %435, 2
  %918 = add i32 %23, 40
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %23, 44
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = or i32 %923, %920
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %1642, label %926

; <label>:926                                     ; preds = %916
  %927 = and i32 %920, 262144
  %928 = icmp ne i32 %927, 0
  %929 = select i1 %928, float %28, float 1.000000e+00
  %930 = select i1 %928, float %29, float 0.000000e+00
  %931 = select i1 %928, float %30, float 0.000000e+00
  %932 = select i1 %928, float %31, float 1.000000e+00
  %933 = select i1 %928, float %32, float %60
  %934 = select i1 %928, float %33, float %61
  %935 = add i32 %23, 300
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = fmul fast float %939, 0x3F50624DE0000000
  %941 = add i32 %23, 104
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 16
  %945 = and i32 %944, 255
  %946 = lshr i32 %943, 24
  %947 = add i32 %23, 308
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 65535
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = lshr i32 %949, 16
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = add i32 %23, 48
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 22
  %958 = shl nuw nsw i32 %957, 5
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = shl i32 %956, 4
  %961 = and i32 %960, 32752
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = lshr i32 %956, 7
  %964 = and i32 %963, 32752
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %968 = fmul fast float %967, 1.000000e+03
  %969 = fmul fast float %290, %968
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fadd fast float %970, %280
  %972 = fmul fast float %291, %968
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = fadd fast float %973, %282
  %975 = fmul fast float %940, %968
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = fmul fast float %976, 0x401921FB60000000
  %978 = fadd fast float %977, %959
  %979 = call float @dx.op.unary.f32(i32 13, float %978)  ; Sin(value)
  %980 = call float @dx.op.unary.f32(i32 12, float %978)  ; Cos(value)
  %981 = fsub fast float -0.000000e+00, %979
  %982 = fadd fast float %933, -5.000000e-01
  %983 = fadd fast float %934, -5.000000e-01
  %984 = fmul fast float %951, %982
  %985 = fmul fast float %953, %983
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fmul fast float %962, %986
  %989 = fmul fast float %965, %987
  %990 = fmul fast float %980, %988
  %991 = call float @dx.op.tertiary.f32(i32 46, float %981, float %989, float %990)  ; FMad(a,b,c)
  %992 = fmul fast float %979, %988
  %993 = call float @dx.op.tertiary.f32(i32 46, float %980, float %989, float %992)  ; FMad(a,b,c)
  %994 = fadd fast float %971, %991
  %995 = fadd fast float %974, %993
  %996 = icmp ugt i32 %945, 1
  %997 = icmp ugt i32 %943, 33554431
  %998 = or i1 %997, %996
  br i1 %998, label %999, label %1024

; <label>:999                                     ; preds = %926
  %1000 = add i32 %23, 244
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %1002, 16
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = fmul fast float %967, %1004
  %1006 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1007 = mul nuw nsw i32 %945, %946
  %1008 = uitofp i32 %1007 to float
  %1009 = fmul fast float %1006, %1008
  %1010 = call float @dx.op.unary.f32(i32 27, float %1009)  ; Round_ni(value)
  %1011 = fptoui float %1010 to i32
  %1012 = urem i32 %1011, %945
  %1013 = udiv i32 %1011, %946
  %1014 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %1015 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %1016 = uitofp i32 %1012 to float
  %1017 = uitofp i32 %1013 to float
  %1018 = fadd fast float %1014, %1016
  %1019 = fadd fast float %1015, %1017
  %1020 = uitofp i32 %945 to float
  %1021 = uitofp i32 %946 to float
  %1022 = fdiv fast float %1018, %1020
  %1023 = fdiv fast float %1019, %1021
  br label %1024

; <label>:1024                                    ; preds = %999, %926
  %1025 = phi float [ %1022, %999 ], [ %994, %926 ]
  %1026 = phi float [ %1023, %999 ], [ %995, %926 ]
  %1027 = and i32 %920, 256
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1075, label %1029

; <label>:1029                                    ; preds = %1024
  %1030 = add i32 %23, 428
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %69, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = add i32 %23, 116
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = shl i32 %1039, 4
  %1041 = and i32 %1040, 32752
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1039, 7
  %1044 = and i32 %1043, 32752
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = fsub fast float 1.000000e+00, %432
  %1047 = call float @dx.op.binary.f32(i32 35, float %1046, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1048 = bitcast float %432 to i32
  %1049 = sitofp i32 %1048 to float
  %1050 = fadd fast float %1049, 0xC1CFBF8940000000
  %1051 = fmul fast float %1045, %1050
  %1052 = fadd fast float %1051, 0x41CFBF8940000000
  %1053 = fptosi float %1052 to i32
  %1054 = bitcast i32 %1053 to float
  %1055 = bitcast float %1047 to i32
  %1056 = sitofp i32 %1055 to float
  %1057 = fadd fast float %1056, 0xC1CFBF8940000000
  %1058 = fmul fast float %1057, %1045
  %1059 = fadd fast float %1058, 0x41CFBF8940000000
  %1060 = fptosi float %1059 to i32
  %1061 = bitcast i32 %1060 to float
  %1062 = fmul fast float %1054, %1042
  %1063 = fmul fast float %1061, %1042
  %1064 = fsub fast float %1047, %1062
  %1065 = fadd fast float %1063, %1047
  %1066 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1067 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1068 = fsub fast float %1036, %1066
  %1069 = fsub fast float %1067, %1066
  %1070 = bitcast float %1069 to i32
  %1071 = sub nsw i32 2129859010, %1070
  %1072 = bitcast i32 %1071 to float
  %1073 = fmul fast float %1072, %1068
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  br label %1075

; <label>:1075                                    ; preds = %1029, %1024
  %1076 = phi float [ %1074, %1029 ], [ %432, %1024 ]
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 128
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1097, label %1081

; <label>:1081                                    ; preds = %1075
  %1082 = add i32 %23, 412
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %69, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 524288
  %1092 = icmp ne i32 %1091, 0
  %1093 = fcmp fast ogt float %1088, 0x3FE0101020000000
  %1094 = select i1 %1093, float 1.000000e+00, float 0.000000e+00
  %1095 = select i1 %1092, float %1094, float %1088
  %1096 = fmul fast float %1095, %1076
  br label %1097

; <label>:1097                                    ; preds = %1081, %1075
  %1098 = phi float [ %1096, %1081 ], [ %1076, %1075 ]
  %1099 = fcmp fast ult float %1098, 0x3F70101020000000
  br i1 %1099, label %1642, label %1100

; <label>:1100                                    ; preds = %1097
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 16
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1303, label %1105

; <label>:1105                                    ; preds = %1100
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %23, 364
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1112, %dx.types.Handle %68, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1118 = and i32 %1107, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = lshr i32 %1107, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1117, %1119
  %1124 = fadd fast float %1123, %1122
  %1125 = fmul fast float %1124, 0x3F70101000000000
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 512
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1138, label %1130

; <label>:1130                                    ; preds = %1105
  %1131 = add i32 %23, 444
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %69, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  br label %1138

; <label>:1138                                    ; preds = %1130, %1105
  %1139 = phi float [ %1137, %1130 ], [ 1.000000e+00, %1105 ]
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 33554432
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1250, label %1144

; <label>:1144                                    ; preds = %1138
  %1145 = add i32 %23, 240
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 65535
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1147, 16
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = add i32 %23, 244
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 24
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = and i32 %1158, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = lshr i32 %1158, 8
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = lshr i32 %1158, 16
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101020000000
  %1173 = add i32 %23, 236
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 24
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = and i32 %1175, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F70101020000000
  %1182 = lshr i32 %1175, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = lshr i32 %1175, 16
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = bitcast float %1114 to i32
  %1191 = ashr i32 %1190, 1
  %1192 = sub nsw i32 1597463174, %1191
  %1193 = bitcast i32 %1192 to float
  %1194 = fmul fast float %1114, 5.000000e-01
  %1195 = fmul fast float %1193, %1193
  %1196 = fmul fast float %1195, %1194
  %1197 = fsub fast float 1.500000e+00, %1196
  %1198 = fmul fast float %1193, %1114
  %1199 = fmul fast float %1198, %1197
  %1200 = bitcast float %1115 to i32
  %1201 = ashr i32 %1200, 1
  %1202 = sub nsw i32 1597463174, %1201
  %1203 = bitcast i32 %1202 to float
  %1204 = fmul fast float %1115, 5.000000e-01
  %1205 = fmul fast float %1203, %1203
  %1206 = fmul fast float %1205, %1204
  %1207 = fsub fast float 1.500000e+00, %1206
  %1208 = fmul fast float %1203, %1115
  %1209 = fmul fast float %1208, %1207
  %1210 = bitcast float %1116 to i32
  %1211 = ashr i32 %1210, 1
  %1212 = sub nsw i32 1597463174, %1211
  %1213 = bitcast i32 %1212 to float
  %1214 = fmul fast float %1116, 5.000000e-01
  %1215 = fmul fast float %1213, %1213
  %1216 = fmul fast float %1215, %1214
  %1217 = fsub fast float 1.500000e+00, %1216
  %1218 = fmul fast float %1213, %1116
  %1219 = fmul fast float %1218, %1217
  %1220 = fsub fast float %1199, %1181
  %1221 = fsub fast float %1209, %1185
  %1222 = fsub fast float %1219, %1189
  %1223 = fmul fast float %1220, %1149
  %1224 = fmul fast float %1221, %1151
  %1225 = fmul fast float %1222, %1156
  %1226 = fadd fast float %1223, %1164
  %1227 = fadd fast float %1224, %1168
  %1228 = fadd fast float %1225, %1172
  %1229 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1232 = fmul fast float %1229, %1229
  %1233 = fmul fast float %1230, %1230
  %1234 = fmul fast float %1231, %1231
  %1235 = fsub fast float %1232, %1114
  %1236 = fsub fast float %1233, %1115
  %1237 = fsub fast float %1234, %1116
  %1238 = fmul fast float %1235, %1139
  %1239 = fmul fast float %1236, %1139
  %1240 = fmul fast float %1237, %1139
  %1241 = fadd fast float %1238, %1114
  %1242 = fadd fast float %1239, %1115
  %1243 = fadd fast float %1240, %1116
  %1244 = fadd fast float %1161, %1125
  %1245 = fsub fast float %1244, %1178
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fsub fast float %1246, %1125
  %1248 = fmul fast float %1247, %1139
  %1249 = fadd fast float %1248, %1125
  br label %1303

; <label>:1250                                    ; preds = %1138
  %1251 = and i32 %1141, 134217728
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1287, label %1253

; <label>:1253                                    ; preds = %1250
  %1254 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1255 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %1256 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %1257 = fadd fast float %1254, -5.000000e-01
  %1258 = fadd fast float %1255, -5.000000e-01
  %1259 = fadd fast float %1256, -5.000000e-01
  %1260 = fmul fast float %1257, %1139
  %1261 = fmul fast float %1258, %1139
  %1262 = fmul fast float %1259, %1139
  %1263 = fadd fast float %1260, 5.000000e-01
  %1264 = fadd fast float %1261, 5.000000e-01
  %1265 = fadd fast float %1262, 5.000000e-01
  %1266 = call float @dx.op.unary.f32(i32 24, float %1114)  ; Sqrt(value)
  %1267 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1268 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1269 = fmul fast float %1263, 2.000000e+00
  %1270 = fsub fast float 1.000000e+00, %1269
  %1271 = fmul fast float %1270, %1266
  %1272 = fadd fast float %1271, %1269
  %1273 = fmul fast float %1272, %1266
  %1274 = fmul fast float %1264, 2.000000e+00
  %1275 = fsub fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1275, %1267
  %1277 = fadd fast float %1276, %1274
  %1278 = fmul fast float %1277, %1267
  %1279 = fmul fast float %1265, 2.000000e+00
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1280, %1268
  %1282 = fadd fast float %1281, %1279
  %1283 = fmul fast float %1282, %1268
  %1284 = fmul fast float %1273, %1273
  %1285 = fmul fast float %1278, %1278
  %1286 = fmul fast float %1283, %1283
  br label %1303

; <label>:1287                                    ; preds = %1250
  %1288 = fmul fast float %267, %267
  %1289 = fmul fast float %271, %271
  %1290 = fmul fast float %275, %275
  %1291 = fadd fast float %1288, -1.000000e+00
  %1292 = fadd fast float %1289, -1.000000e+00
  %1293 = fadd fast float %1290, -1.000000e+00
  %1294 = fmul fast float %1139, %1291
  %1295 = fmul fast float %1139, %1292
  %1296 = fmul fast float %1139, %1293
  %1297 = fadd fast float %1294, 1.000000e+00
  %1298 = fadd fast float %1295, 1.000000e+00
  %1299 = fadd fast float %1296, 1.000000e+00
  %1300 = fmul fast float %1297, %1114
  %1301 = fmul fast float %1298, %1115
  %1302 = fmul fast float %1299, %1116
  br label %1303

; <label>:1303                                    ; preds = %1287, %1253, %1144, %1100
  %1304 = phi float [ %1249, %1144 ], [ %1125, %1253 ], [ %1125, %1287 ], [ 0x3FA23C0BE0000000, %1100 ]
  %1305 = phi float [ %1241, %1144 ], [ %1284, %1253 ], [ %1300, %1287 ], [ 1.000000e+00, %1100 ]
  %1306 = phi float [ %1242, %1144 ], [ %1285, %1253 ], [ %1301, %1287 ], [ 1.000000e+00, %1100 ]
  %1307 = phi float [ %1243, %1144 ], [ %1286, %1253 ], [ %1302, %1287 ], [ 1.000000e+00, %1100 ]
  %1308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.i32 %1308, 1
  %1310 = and i32 %1309, 1
  %1311 = icmp ne i32 %1310, 0
  %1312 = add i32 %23, 356
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 32
  %1316 = icmp ne i32 %1315, 0
  %1317 = and i1 %1311, %1316
  %1318 = select i1 %1317, float 1.000000e+00, float %1305
  %1319 = select i1 %1317, float 0x3FD3333340000000, float %1306
  %1320 = select i1 %1317, float 0x3FD3333340000000, float %1307
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 32
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1397, label %1325

; <label>:1325                                    ; preds = %1303
  %1326 = add i32 %23, 108
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %23, 380
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = add i32 %1331, 0
  %1333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1333, %dx.types.Handle %68, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1334, 3
  %1339 = and i32 %1328, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1328, 8
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = lshr i32 %1328, 16
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1346, 0x3F70101000000000
  %1348 = fmul fast float %1335, %1340
  %1349 = fadd fast float %1348, %1343
  %1350 = fmul fast float %1349, 0x3F70101000000000
  %1351 = fadd fast float %1336, -5.000000e-01
  %1352 = fadd fast float %1338, -5.000000e-01
  %1353 = fmul fast float %1351, %1347
  %1354 = fmul fast float %1352, %1347
  %1355 = fadd fast float %1353, 5.000000e-01
  %1356 = fadd fast float %1354, 5.000000e-01
  %1357 = fmul fast float %1355, 2.000000e+00
  %1358 = fadd fast float %1357, -1.000000e+00
  %1359 = fmul fast float %1356, 2.000000e+00
  %1360 = fadd fast float %1359, -1.000000e+00
  %1361 = fadd fast float %1358, %1360
  %1362 = fmul fast float %1361, 5.000000e-01
  %1363 = fsub fast float %1358, %1360
  %1364 = fmul fast float %1363, 5.000000e-01
  %1365 = call float @dx.op.unary.f32(i32 6, float %1362)  ; FAbs(value)
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1368 = fsub fast float %1366, %1367
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1364, float %1368, float %1362, float %1364, float %1368)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call float @dx.op.unary.f32(i32 25, float %1369)  ; Rsqrt(value)
  %1371 = fmul fast float %1362, %1370
  %1372 = fmul fast float %1364, %1370
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %1374, 67108864
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1393, label %1377

; <label>:1377                                    ; preds = %1325
  %1378 = add i32 %23, 296
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 65535
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 65535
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = lshr i32 %1380, 16
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = fsub fast float %1350, %1388
  %1390 = fmul fast float %1389, %1382
  %1391 = fadd fast float %1390, %1386
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  br label %1393

; <label>:1393                                    ; preds = %1377, %1325
  %1394 = phi float [ %1392, %1377 ], [ %1350, %1325 ]
  %1395 = call float @dx.op.dot2.f32(i32 54, float %1371, float %1372, float %929, float %930)  ; Dot2(ax,ay,bx,by)
  %1396 = call float @dx.op.dot2.f32(i32 54, float %1371, float %1372, float %931, float %932)  ; Dot2(ax,ay,bx,by)
  br label %1397

; <label>:1397                                    ; preds = %1393, %1303
  %1398 = phi float [ %1394, %1393 ], [ 0x3FD6666660000000, %1303 ]
  %1399 = phi float [ %1395, %1393 ], [ 0.000000e+00, %1303 ]
  %1400 = phi float [ %1396, %1393 ], [ 0.000000e+00, %1303 ]
  %1401 = phi float [ %1337, %1393 ], [ 1.000000e+00, %1303 ]
  %1402 = add i32 %23, 176
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 22
  %1406 = shl nuw nsw i32 %1405, 5
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 64
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1445, label %1412

; <label>:1412                                    ; preds = %1397
  %1413 = add i32 %23, 396
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 131072
  %1421 = icmp eq i32 %1420, 0
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %68, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.ResRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.ResRet.f32 %1422, 2
  %1426 = fmul fast float %1423, %255
  %1427 = fmul fast float %1424, %258
  %1428 = fmul fast float %1425, %261
  br i1 %1421, label %1435, label %1429

; <label>:1429                                    ; preds = %1412
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1431, %1426
  %1433 = fmul fast float %1431, %1427
  %1434 = fmul fast float %1431, %1428
  br label %1435

; <label>:1435                                    ; preds = %1429, %1412
  %1436 = phi float [ %1432, %1429 ], [ %1426, %1412 ]
  %1437 = phi float [ %1433, %1429 ], [ %1427, %1412 ]
  %1438 = phi float [ %1434, %1429 ], [ %1428, %1412 ]
  %1439 = fmul fast float %1436, %1407
  %1440 = select i1 %196, float %1439, float %1436
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1437, float %1438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = select i1 %196, float 0.000000e+00, float %1436
  %1443 = select i1 %196, float %1441, float %1437
  %1444 = select i1 %196, float 0.000000e+00, float %1438
  br label %1445

; <label>:1445                                    ; preds = %1435, %1397
  %1446 = phi float [ %1442, %1435 ], [ 0.000000e+00, %1397 ]
  %1447 = phi float [ %1443, %1435 ], [ 0.000000e+00, %1397 ]
  %1448 = phi float [ %1444, %1435 ], [ 0.000000e+00, %1397 ]
  %1449 = add i32 %23, 112
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = lshr i32 %1451, 8
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1319, float %1320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = fmul fast float %1456, %1457
  %1459 = fadd fast float %1458, %1453
  %1460 = fmul fast float %1459, 0x3F70101020000000
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br i1 %917, label %1462, label %1470

; <label>:1462                                    ; preds = %1445
  %1463 = fsub fast float 1.000000e+00, %1098
  %1464 = fmul fast float %1463, %905
  %1465 = fmul fast float %1463, %906
  %1466 = fmul fast float %1463, %907
  %1467 = fmul fast float %1463, %908
  %1468 = fmul fast float %1463, %909
  %1469 = fmul fast float %1463, %910
  br label %1470

; <label>:1470                                    ; preds = %1462, %1445
  %1471 = phi float [ %1464, %1462 ], [ %905, %1445 ]
  %1472 = phi float [ %1465, %1462 ], [ %906, %1445 ]
  %1473 = phi float [ %1466, %1462 ], [ %907, %1445 ]
  %1474 = phi float [ %1467, %1462 ], [ %908, %1445 ]
  %1475 = phi float [ %1468, %1462 ], [ %909, %1445 ]
  %1476 = phi float [ %1469, %1462 ], [ %910, %1445 ]
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 3
  %1480 = icmp eq i32 %1479, 3
  br i1 %1480, label %1559, label %1481

; <label>:1481                                    ; preds = %1470
  %1482 = and i32 %1478, 16
  %1483 = icmp ne i32 %1482, 0
  %1484 = select i1 %1483, float %1098, float 0.000000e+00
  %1485 = icmp eq i32 %1479, 0
  br i1 %1485, label %1486, label %1514

; <label>:1486                                    ; preds = %1481
  %1487 = and i32 %1478, 64
  %1488 = icmp ne i32 %1487, 0
  %1489 = select i1 %1488, float %1098, float 0.000000e+00
  %1490 = fsub fast float %1318, %1471
  %1491 = fsub fast float %1319, %1472
  %1492 = fsub fast float %1320, %1473
  %1493 = fmul fast float %1484, %1490
  %1494 = fmul fast float %1484, %1491
  %1495 = fmul fast float %1484, %1492
  %1496 = fadd fast float %1493, %1471
  %1497 = fadd fast float %1494, %1472
  %1498 = fadd fast float %1495, %1473
  %1499 = fsub fast float %1304, %911
  %1500 = fmul fast float %1484, %1499
  %1501 = fadd fast float %1500, %911
  %1502 = fsub fast float %1446, %1474
  %1503 = fsub fast float %1447, %1475
  %1504 = fsub fast float %1448, %1476
  %1505 = fmul fast float %1489, %1502
  %1506 = fmul fast float %1489, %1503
  %1507 = fmul fast float %1489, %1504
  %1508 = fadd fast float %1505, %1474
  %1509 = fadd fast float %1506, %1475
  %1510 = fadd fast float %1507, %1476
  %1511 = fsub fast float %1461, %915
  %1512 = fmul fast float %1484, %1511
  %1513 = fadd fast float %1512, %915
  br label %1559

; <label>:1514                                    ; preds = %1481
  %1515 = icmp eq i32 %1479, 1
  br i1 %1515, label %1516, label %1529

; <label>:1516                                    ; preds = %1514
  %1517 = fadd fast float %1318, -1.000000e+00
  %1518 = fadd fast float %1319, -1.000000e+00
  %1519 = fadd fast float %1320, -1.000000e+00
  %1520 = fmul fast float %1484, %1517
  %1521 = fmul fast float %1484, %1518
  %1522 = fmul fast float %1484, %1519
  %1523 = fadd fast float %1520, 1.000000e+00
  %1524 = fadd fast float %1521, 1.000000e+00
  %1525 = fadd fast float %1522, 1.000000e+00
  %1526 = fmul fast float %1523, %1471
  %1527 = fmul fast float %1524, %1472
  %1528 = fmul fast float %1525, %1473
  br label %1559

; <label>:1529                                    ; preds = %1514
  %1530 = icmp eq i32 %1479, 2
  br i1 %1530, label %1531, label %1559

; <label>:1531                                    ; preds = %1529
  %1532 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1533 = call float @dx.op.unary.f32(i32 24, float %1319)  ; Sqrt(value)
  %1534 = call float @dx.op.unary.f32(i32 24, float %1320)  ; Sqrt(value)
  %1535 = fadd fast float %1532, -5.000000e-01
  %1536 = fadd fast float %1533, -5.000000e-01
  %1537 = fadd fast float %1534, -5.000000e-01
  %1538 = fmul fast float %1535, %1484
  %1539 = fmul fast float %1536, %1484
  %1540 = fmul fast float %1537, %1484
  %1541 = fadd fast float %1538, 5.000000e-01
  %1542 = fadd fast float %1539, 5.000000e-01
  %1543 = fadd fast float %1540, 5.000000e-01
  %1544 = fmul fast float %1541, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1471
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1471
  %1549 = fmul fast float %1542, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1472
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1472
  %1554 = fmul fast float %1543, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1473
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1473
  br label %1559

; <label>:1559                                    ; preds = %1531, %1529, %1516, %1486, %1470
  %1560 = phi float [ %1471, %1470 ], [ %1548, %1531 ], [ %1471, %1529 ], [ %1526, %1516 ], [ %1496, %1486 ]
  %1561 = phi float [ %1472, %1470 ], [ %1553, %1531 ], [ %1472, %1529 ], [ %1527, %1516 ], [ %1497, %1486 ]
  %1562 = phi float [ %1473, %1470 ], [ %1558, %1531 ], [ %1473, %1529 ], [ %1528, %1516 ], [ %1498, %1486 ]
  %1563 = phi float [ %1474, %1470 ], [ %1474, %1531 ], [ %1474, %1529 ], [ %1474, %1516 ], [ %1508, %1486 ]
  %1564 = phi float [ %1475, %1470 ], [ %1475, %1531 ], [ %1475, %1529 ], [ %1475, %1516 ], [ %1509, %1486 ]
  %1565 = phi float [ %1476, %1470 ], [ %1476, %1531 ], [ %1476, %1529 ], [ %1476, %1516 ], [ %1510, %1486 ]
  %1566 = phi float [ %911, %1470 ], [ %911, %1531 ], [ %911, %1529 ], [ %911, %1516 ], [ %1501, %1486 ]
  %1567 = phi float [ %915, %1470 ], [ %915, %1531 ], [ %915, %1529 ], [ %915, %1516 ], [ %1513, %1486 ]
  %1568 = and i32 %1478, 12
  %1569 = icmp eq i32 %1568, 12
  br i1 %1569, label %1642, label %1570

; <label>:1570                                    ; preds = %1559
  %1571 = and i32 %1478, 2097184
  %1572 = icmp eq i32 %1571, 2097184
  %1573 = select i1 %1572, float %1098, float 0.000000e+00
  %1574 = and i32 %1478, 4194336
  %1575 = icmp eq i32 %1574, 4194336
  %1576 = select i1 %1575, float %1098, float 0.000000e+00
  %1577 = and i32 %1478, 8388640
  %1578 = icmp eq i32 %1577, 8388640
  %1579 = select i1 %1578, float %1098, float 0.000000e+00
  %1580 = icmp eq i32 %1568, 0
  br i1 %1580, label %1581, label %1594

; <label>:1581                                    ; preds = %1570
  %1582 = fsub fast float %1399, %903
  %1583 = fsub fast float %1400, %904
  %1584 = fmul fast float %1573, %1582
  %1585 = fmul fast float %1573, %1583
  %1586 = fadd fast float %1584, %903
  %1587 = fadd fast float %1585, %904
  %1588 = fsub fast float %1401, %914
  %1589 = fmul fast float %1576, %1588
  %1590 = fadd fast float %1589, %914
  %1591 = fsub fast float %1398, %913
  %1592 = fmul fast float %1579, %1591
  %1593 = fadd fast float %1592, %913
  br label %1642

; <label>:1594                                    ; preds = %1570
  %1595 = icmp eq i32 %1568, 4
  br i1 %1595, label %1596, label %1628

; <label>:1596                                    ; preds = %1594
  %1597 = fmul fast float %1573, %1399
  %1598 = fmul fast float %1573, %1400
  %1599 = fadd fast float %1597, %903
  %1600 = fadd fast float %1598, %904
  %1601 = call float @dx.op.binary.f32(i32 36, float %914, float %1401)  ; FMin(a,b)
  %1602 = fsub fast float %1601, %914
  %1603 = fmul fast float %1602, %1576
  %1604 = fadd fast float %1603, %914
  %1605 = fadd fast float %1398, %913
  %1606 = fmul fast float %1605, 0x3FF337FAE0000000
  %1607 = fmul fast float %913, %913
  %1608 = fmul fast float %1398, %1398
  %1609 = fadd fast float %1608, %1607
  %1610 = fmul fast float %1609, 0x3FE5152B00000000
  %1611 = fmul fast float %913, 0xBFCC1F85E0000000
  %1612 = fmul fast float %1611, %1398
  %1613 = fadd fast float %1612, 0xBFE1363700000000
  %1614 = fadd fast float %1613, %1606
  %1615 = fsub fast float %1614, %1610
  %1616 = fmul fast float %1605, 0x3FBA6F0D00000000
  %1617 = fmul fast float %1609, 0x3FD0432880000000
  %1618 = fmul fast float %913, 0xBFEF110800000000
  %1619 = fmul fast float %1618, %1398
  %1620 = fadd fast float %1619, 1.000000e+00
  %1621 = fsub fast float %1620, %1616
  %1622 = fadd fast float %1621, %1617
  %1623 = fdiv fast float %1615, %1622
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1625 = fsub fast float %1624, %913
  %1626 = fmul fast float %1625, %1579
  %1627 = fadd fast float %1626, %913
  br label %1642

; <label>:1628                                    ; preds = %1594
  %1629 = icmp eq i32 %1568, 8
  br i1 %1629, label %1630, label %1642

; <label>:1630                                    ; preds = %1628
  %1631 = fmul fast float %1573, %1399
  %1632 = fmul fast float %1573, %1400
  %1633 = fadd fast float %1631, %903
  %1634 = fadd fast float %1632, %904
  %1635 = call float @dx.op.binary.f32(i32 36, float %914, float %1401)  ; FMin(a,b)
  %1636 = fsub fast float %1635, %914
  %1637 = fmul fast float %1636, %1576
  %1638 = fadd fast float %1637, %914
  %1639 = fsub fast float %1398, %913
  %1640 = fmul fast float %1579, %1639
  %1641 = fadd fast float %1640, %913
  br label %1642

; <label>:1642                                    ; preds = %1630, %1628, %1596, %1581, %1559, %1097, %916, %902
  %1643 = phi float [ %903, %1559 ], [ %903, %1097 ], [ %903, %902 ], [ %1633, %1630 ], [ %903, %1628 ], [ %1599, %1596 ], [ %1586, %1581 ], [ %903, %916 ]
  %1644 = phi float [ %904, %1559 ], [ %904, %1097 ], [ %904, %902 ], [ %1634, %1630 ], [ %904, %1628 ], [ %1600, %1596 ], [ %1587, %1581 ], [ %904, %916 ]
  %1645 = phi float [ %1560, %1559 ], [ %905, %1097 ], [ %905, %902 ], [ %1560, %1630 ], [ %1560, %1628 ], [ %1560, %1596 ], [ %1560, %1581 ], [ %905, %916 ]
  %1646 = phi float [ %1561, %1559 ], [ %906, %1097 ], [ %906, %902 ], [ %1561, %1630 ], [ %1561, %1628 ], [ %1561, %1596 ], [ %1561, %1581 ], [ %906, %916 ]
  %1647 = phi float [ %1562, %1559 ], [ %907, %1097 ], [ %907, %902 ], [ %1562, %1630 ], [ %1562, %1628 ], [ %1562, %1596 ], [ %1562, %1581 ], [ %907, %916 ]
  %1648 = phi float [ %1563, %1559 ], [ %908, %1097 ], [ %908, %902 ], [ %1563, %1630 ], [ %1563, %1628 ], [ %1563, %1596 ], [ %1563, %1581 ], [ %908, %916 ]
  %1649 = phi float [ %1564, %1559 ], [ %909, %1097 ], [ %909, %902 ], [ %1564, %1630 ], [ %1564, %1628 ], [ %1564, %1596 ], [ %1564, %1581 ], [ %909, %916 ]
  %1650 = phi float [ %1565, %1559 ], [ %910, %1097 ], [ %910, %902 ], [ %1565, %1630 ], [ %1565, %1628 ], [ %1565, %1596 ], [ %1565, %1581 ], [ %910, %916 ]
  %1651 = phi float [ %1566, %1559 ], [ %911, %1097 ], [ %911, %902 ], [ %1566, %1630 ], [ %1566, %1628 ], [ %1566, %1596 ], [ %1566, %1581 ], [ %911, %916 ]
  %1652 = phi float [ %913, %1559 ], [ %913, %1097 ], [ %913, %902 ], [ %1641, %1630 ], [ %913, %1628 ], [ %1627, %1596 ], [ %1593, %1581 ], [ %913, %916 ]
  %1653 = phi float [ %914, %1559 ], [ %914, %1097 ], [ %914, %902 ], [ %1638, %1630 ], [ %914, %1628 ], [ %1604, %1596 ], [ %1590, %1581 ], [ %914, %916 ]
  %1654 = phi float [ %1567, %1559 ], [ %915, %1097 ], [ %915, %902 ], [ %1567, %1630 ], [ %1567, %1628 ], [ %1567, %1596 ], [ %1567, %1581 ], [ %915, %916 ]
  br i1 %382, label %2381, label %1655

; <label>:1655                                    ; preds = %1642
  %1656 = icmp ult i32 %435, 3
  %1657 = add i32 %23, 56
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = add i32 %23, 60
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = or i32 %1662, %1659
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %2381, label %1665

; <label>:1665                                    ; preds = %1655
  %1666 = and i32 %1659, 262144
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, float %28, float 1.000000e+00
  %1669 = select i1 %1667, float %29, float 0.000000e+00
  %1670 = select i1 %1667, float %30, float 0.000000e+00
  %1671 = select i1 %1667, float %31, float 1.000000e+00
  %1672 = select i1 %1667, float %32, float %60
  %1673 = select i1 %1667, float %33, float %61
  %1674 = add i32 %23, 316
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = lshr i32 %1676, 16
  %1678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1677)  ; LegacyF16ToF32(value)
  %1679 = fmul fast float %1678, 0x3F50624DE0000000
  %1680 = add i32 %23, 120
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = lshr i32 %1682, 16
  %1684 = and i32 %1683, 255
  %1685 = lshr i32 %1682, 24
  %1686 = add i32 %23, 324
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 65535
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = lshr i32 %1688, 16
  %1692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1691)  ; LegacyF16ToF32(value)
  %1693 = add i32 %23, 64
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = lshr i32 %1695, 22
  %1697 = shl nuw nsw i32 %1696, 5
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = shl i32 %1695, 4
  %1700 = and i32 %1699, 32752
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = lshr i32 %1695, 7
  %1703 = and i32 %1702, 32752
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1707 = fmul fast float %1706, 1.000000e+03
  %1708 = fmul fast float %332, %1707
  %1709 = call float @dx.op.unary.f32(i32 22, float %1708)  ; Frc(value)
  %1710 = fadd fast float %1709, %322
  %1711 = fmul fast float %333, %1707
  %1712 = call float @dx.op.unary.f32(i32 22, float %1711)  ; Frc(value)
  %1713 = fadd fast float %1712, %324
  %1714 = fmul fast float %1679, %1707
  %1715 = call float @dx.op.unary.f32(i32 22, float %1714)  ; Frc(value)
  %1716 = fmul fast float %1715, 0x401921FB60000000
  %1717 = fadd fast float %1716, %1698
  %1718 = call float @dx.op.unary.f32(i32 13, float %1717)  ; Sin(value)
  %1719 = call float @dx.op.unary.f32(i32 12, float %1717)  ; Cos(value)
  %1720 = fsub fast float -0.000000e+00, %1718
  %1721 = fadd fast float %1672, -5.000000e-01
  %1722 = fadd fast float %1673, -5.000000e-01
  %1723 = fmul fast float %1690, %1721
  %1724 = fmul fast float %1692, %1722
  %1725 = fadd fast float %1723, 5.000000e-01
  %1726 = fadd fast float %1724, 5.000000e-01
  %1727 = fmul fast float %1701, %1725
  %1728 = fmul fast float %1704, %1726
  %1729 = fmul fast float %1719, %1727
  %1730 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1728, float %1729)  ; FMad(a,b,c)
  %1731 = fmul fast float %1718, %1727
  %1732 = call float @dx.op.tertiary.f32(i32 46, float %1719, float %1728, float %1731)  ; FMad(a,b,c)
  %1733 = fadd fast float %1710, %1730
  %1734 = fadd fast float %1713, %1732
  %1735 = icmp ugt i32 %1684, 1
  %1736 = icmp ugt i32 %1682, 33554431
  %1737 = or i1 %1736, %1735
  br i1 %1737, label %1738, label %1763

; <label>:1738                                    ; preds = %1665
  %1739 = add i32 %23, 260
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 16
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = fmul fast float %1706, %1743
  %1745 = call float @dx.op.unary.f32(i32 22, float %1744)  ; Frc(value)
  %1746 = mul nuw nsw i32 %1684, %1685
  %1747 = uitofp i32 %1746 to float
  %1748 = fmul fast float %1745, %1747
  %1749 = call float @dx.op.unary.f32(i32 27, float %1748)  ; Round_ni(value)
  %1750 = fptoui float %1749 to i32
  %1751 = urem i32 %1750, %1684
  %1752 = udiv i32 %1750, %1685
  %1753 = call float @dx.op.unary.f32(i32 22, float %1733)  ; Frc(value)
  %1754 = call float @dx.op.unary.f32(i32 22, float %1734)  ; Frc(value)
  %1755 = uitofp i32 %1751 to float
  %1756 = uitofp i32 %1752 to float
  %1757 = fadd fast float %1753, %1755
  %1758 = fadd fast float %1754, %1756
  %1759 = uitofp i32 %1684 to float
  %1760 = uitofp i32 %1685 to float
  %1761 = fdiv fast float %1757, %1759
  %1762 = fdiv fast float %1758, %1760
  br label %1763

; <label>:1763                                    ; preds = %1738, %1665
  %1764 = phi float [ %1761, %1738 ], [ %1733, %1665 ]
  %1765 = phi float [ %1762, %1738 ], [ %1734, %1665 ]
  %1766 = and i32 %1659, 256
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1814, label %1768

; <label>:1768                                    ; preds = %1763
  %1769 = add i32 %23, 432
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %1771, 0
  %1773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1773, %dx.types.Handle %69, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = add i32 %23, 132
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = shl i32 %1778, 4
  %1780 = and i32 %1779, 32752
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1778, 7
  %1783 = and i32 %1782, 32752
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = fsub fast float 1.000000e+00, %431
  %1786 = call float @dx.op.binary.f32(i32 35, float %1785, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1787 = bitcast float %431 to i32
  %1788 = sitofp i32 %1787 to float
  %1789 = fadd fast float %1788, 0xC1CFBF8940000000
  %1790 = fmul fast float %1784, %1789
  %1791 = fadd fast float %1790, 0x41CFBF8940000000
  %1792 = fptosi float %1791 to i32
  %1793 = bitcast i32 %1792 to float
  %1794 = bitcast float %1786 to i32
  %1795 = sitofp i32 %1794 to float
  %1796 = fadd fast float %1795, 0xC1CFBF8940000000
  %1797 = fmul fast float %1796, %1784
  %1798 = fadd fast float %1797, 0x41CFBF8940000000
  %1799 = fptosi float %1798 to i32
  %1800 = bitcast i32 %1799 to float
  %1801 = fmul fast float %1793, %1781
  %1802 = fmul fast float %1800, %1781
  %1803 = fsub fast float %1786, %1801
  %1804 = fadd fast float %1802, %1786
  %1805 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1806 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1807 = fsub fast float %1775, %1805
  %1808 = fsub fast float %1806, %1805
  %1809 = bitcast float %1808 to i32
  %1810 = sub nsw i32 2129859010, %1809
  %1811 = bitcast i32 %1810 to float
  %1812 = fmul fast float %1811, %1807
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  br label %1814

; <label>:1814                                    ; preds = %1768, %1763
  %1815 = phi float [ %1813, %1768 ], [ %431, %1763 ]
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 128
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1836, label %1820

; <label>:1820                                    ; preds = %1814
  %1821 = add i32 %23, 416
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = add i32 %1823, 0
  %1825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1825, %dx.types.Handle %69, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 524288
  %1831 = icmp ne i32 %1830, 0
  %1832 = fcmp fast ogt float %1827, 0x3FE0101020000000
  %1833 = select i1 %1832, float 1.000000e+00, float 0.000000e+00
  %1834 = select i1 %1831, float %1833, float %1827
  %1835 = fmul fast float %1834, %1815
  br label %1836

; <label>:1836                                    ; preds = %1820, %1814
  %1837 = phi float [ %1835, %1820 ], [ %1815, %1814 ]
  %1838 = fcmp fast ult float %1837, 0x3F70101020000000
  br i1 %1838, label %2381, label %1839

; <label>:1839                                    ; preds = %1836
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 16
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %2042, label %1844

; <label>:1844                                    ; preds = %1839
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = add i32 %23, 368
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %1849, 0
  %1851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1851, %dx.types.Handle %68, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.ResRet.f32 %1852, 2
  %1856 = extractvalue %dx.types.ResRet.f32 %1852, 3
  %1857 = and i32 %1846, 255
  %1858 = uitofp i32 %1857 to float
  %1859 = lshr i32 %1846, 8
  %1860 = and i32 %1859, 255
  %1861 = uitofp i32 %1860 to float
  %1862 = fmul fast float %1856, %1858
  %1863 = fadd fast float %1862, %1861
  %1864 = fmul fast float %1863, 0x3F70101000000000
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 512
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1877, label %1869

; <label>:1869                                    ; preds = %1844
  %1870 = add i32 %23, 448
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1872, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1874, %dx.types.Handle %69, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  br label %1877

; <label>:1877                                    ; preds = %1869, %1844
  %1878 = phi float [ %1876, %1869 ], [ 1.000000e+00, %1844 ]
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 33554432
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1989, label %1883

; <label>:1883                                    ; preds = %1877
  %1884 = add i32 %23, 256
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 65535
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = lshr i32 %1886, 16
  %1890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1889)  ; LegacyF16ToF32(value)
  %1891 = add i32 %23, 260
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 65535
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = lshr i32 %1897, 24
  %1899 = uitofp i32 %1898 to float
  %1900 = fmul fast float %1899, 0x3F70101020000000
  %1901 = and i32 %1897, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = lshr i32 %1897, 8
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1897, 16
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = add i32 %23, 252
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 24
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = and i32 %1914, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = lshr i32 %1914, 8
  %1922 = and i32 %1921, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = lshr i32 %1914, 16
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = bitcast float %1853 to i32
  %1930 = ashr i32 %1929, 1
  %1931 = sub nsw i32 1597463174, %1930
  %1932 = bitcast i32 %1931 to float
  %1933 = fmul fast float %1853, 5.000000e-01
  %1934 = fmul fast float %1932, %1932
  %1935 = fmul fast float %1934, %1933
  %1936 = fsub fast float 1.500000e+00, %1935
  %1937 = fmul fast float %1932, %1853
  %1938 = fmul fast float %1937, %1936
  %1939 = bitcast float %1854 to i32
  %1940 = ashr i32 %1939, 1
  %1941 = sub nsw i32 1597463174, %1940
  %1942 = bitcast i32 %1941 to float
  %1943 = fmul fast float %1854, 5.000000e-01
  %1944 = fmul fast float %1942, %1942
  %1945 = fmul fast float %1944, %1943
  %1946 = fsub fast float 1.500000e+00, %1945
  %1947 = fmul fast float %1942, %1854
  %1948 = fmul fast float %1947, %1946
  %1949 = bitcast float %1855 to i32
  %1950 = ashr i32 %1949, 1
  %1951 = sub nsw i32 1597463174, %1950
  %1952 = bitcast i32 %1951 to float
  %1953 = fmul fast float %1855, 5.000000e-01
  %1954 = fmul fast float %1952, %1952
  %1955 = fmul fast float %1954, %1953
  %1956 = fsub fast float 1.500000e+00, %1955
  %1957 = fmul fast float %1952, %1855
  %1958 = fmul fast float %1957, %1956
  %1959 = fsub fast float %1938, %1920
  %1960 = fsub fast float %1948, %1924
  %1961 = fsub fast float %1958, %1928
  %1962 = fmul fast float %1959, %1888
  %1963 = fmul fast float %1960, %1890
  %1964 = fmul fast float %1961, %1895
  %1965 = fadd fast float %1962, %1903
  %1966 = fadd fast float %1963, %1907
  %1967 = fadd fast float %1964, %1911
  %1968 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1970 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1971 = fmul fast float %1968, %1968
  %1972 = fmul fast float %1969, %1969
  %1973 = fmul fast float %1970, %1970
  %1974 = fsub fast float %1971, %1853
  %1975 = fsub fast float %1972, %1854
  %1976 = fsub fast float %1973, %1855
  %1977 = fmul fast float %1974, %1878
  %1978 = fmul fast float %1975, %1878
  %1979 = fmul fast float %1976, %1878
  %1980 = fadd fast float %1977, %1853
  %1981 = fadd fast float %1978, %1854
  %1982 = fadd fast float %1979, %1855
  %1983 = fadd fast float %1900, %1864
  %1984 = fsub fast float %1983, %1917
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fsub fast float %1985, %1864
  %1987 = fmul fast float %1986, %1878
  %1988 = fadd fast float %1987, %1864
  br label %2042

; <label>:1989                                    ; preds = %1877
  %1990 = and i32 %1880, 134217728
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2026, label %1992

; <label>:1992                                    ; preds = %1989
  %1993 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %1994 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %1995 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %1996 = fadd fast float %1993, -5.000000e-01
  %1997 = fadd fast float %1994, -5.000000e-01
  %1998 = fadd fast float %1995, -5.000000e-01
  %1999 = fmul fast float %1996, %1878
  %2000 = fmul fast float %1997, %1878
  %2001 = fmul fast float %1998, %1878
  %2002 = fadd fast float %1999, 5.000000e-01
  %2003 = fadd fast float %2000, 5.000000e-01
  %2004 = fadd fast float %2001, 5.000000e-01
  %2005 = call float @dx.op.unary.f32(i32 24, float %1853)  ; Sqrt(value)
  %2006 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %2007 = call float @dx.op.unary.f32(i32 24, float %1855)  ; Sqrt(value)
  %2008 = fmul fast float %2002, 2.000000e+00
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = fmul fast float %2009, %2005
  %2011 = fadd fast float %2010, %2008
  %2012 = fmul fast float %2011, %2005
  %2013 = fmul fast float %2003, 2.000000e+00
  %2014 = fsub fast float 1.000000e+00, %2013
  %2015 = fmul fast float %2014, %2006
  %2016 = fadd fast float %2015, %2013
  %2017 = fmul fast float %2016, %2006
  %2018 = fmul fast float %2004, 2.000000e+00
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %2019, %2007
  %2021 = fadd fast float %2020, %2018
  %2022 = fmul fast float %2021, %2007
  %2023 = fmul fast float %2012, %2012
  %2024 = fmul fast float %2017, %2017
  %2025 = fmul fast float %2022, %2022
  br label %2042

; <label>:2026                                    ; preds = %1989
  %2027 = fmul fast float %309, %309
  %2028 = fmul fast float %313, %313
  %2029 = fmul fast float %317, %317
  %2030 = fadd fast float %2027, -1.000000e+00
  %2031 = fadd fast float %2028, -1.000000e+00
  %2032 = fadd fast float %2029, -1.000000e+00
  %2033 = fmul fast float %1878, %2030
  %2034 = fmul fast float %1878, %2031
  %2035 = fmul fast float %1878, %2032
  %2036 = fadd fast float %2033, 1.000000e+00
  %2037 = fadd fast float %2034, 1.000000e+00
  %2038 = fadd fast float %2035, 1.000000e+00
  %2039 = fmul fast float %2036, %1853
  %2040 = fmul fast float %2037, %1854
  %2041 = fmul fast float %2038, %1855
  br label %2042

; <label>:2042                                    ; preds = %2026, %1992, %1883, %1839
  %2043 = phi float [ %1988, %1883 ], [ %1864, %1992 ], [ %1864, %2026 ], [ 0x3FA23C0BE0000000, %1839 ]
  %2044 = phi float [ %1980, %1883 ], [ %2023, %1992 ], [ %2039, %2026 ], [ 1.000000e+00, %1839 ]
  %2045 = phi float [ %1981, %1883 ], [ %2024, %1992 ], [ %2040, %2026 ], [ 1.000000e+00, %1839 ]
  %2046 = phi float [ %1982, %1883 ], [ %2025, %1992 ], [ %2041, %2026 ], [ 1.000000e+00, %1839 ]
  %2047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.i32 %2047, 1
  %2049 = and i32 %2048, 1
  %2050 = icmp ne i32 %2049, 0
  %2051 = add i32 %23, 356
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 32
  %2055 = icmp ne i32 %2054, 0
  %2056 = and i1 %2050, %2055
  %2057 = select i1 %2056, float 1.000000e+00, float %2044
  %2058 = select i1 %2056, float 0x3FD3333340000000, float %2045
  %2059 = select i1 %2056, float 0x3FD3333340000000, float %2046
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 32
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2136, label %2064

; <label>:2064                                    ; preds = %2042
  %2065 = add i32 %23, 124
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %23, 384
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = add i32 %2070, 0
  %2072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2072, %dx.types.Handle %68, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = extractvalue %dx.types.ResRet.f32 %2073, 3
  %2078 = and i32 %2067, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = lshr i32 %2067, 8
  %2081 = and i32 %2080, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = lshr i32 %2067, 16
  %2084 = and i32 %2083, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = fmul fast float %2074, %2079
  %2088 = fadd fast float %2087, %2082
  %2089 = fmul fast float %2088, 0x3F70101000000000
  %2090 = fadd fast float %2075, -5.000000e-01
  %2091 = fadd fast float %2077, -5.000000e-01
  %2092 = fmul fast float %2090, %2086
  %2093 = fmul fast float %2091, %2086
  %2094 = fadd fast float %2092, 5.000000e-01
  %2095 = fadd fast float %2093, 5.000000e-01
  %2096 = fmul fast float %2094, 2.000000e+00
  %2097 = fadd fast float %2096, -1.000000e+00
  %2098 = fmul fast float %2095, 2.000000e+00
  %2099 = fadd fast float %2098, -1.000000e+00
  %2100 = fadd fast float %2097, %2099
  %2101 = fmul fast float %2100, 5.000000e-01
  %2102 = fsub fast float %2097, %2099
  %2103 = fmul fast float %2102, 5.000000e-01
  %2104 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = call float @dx.op.unary.f32(i32 6, float %2103)  ; FAbs(value)
  %2107 = fsub fast float %2105, %2106
  %2108 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2103, float %2107, float %2101, float %2103, float %2107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = call float @dx.op.unary.f32(i32 25, float %2108)  ; Rsqrt(value)
  %2110 = fmul fast float %2101, %2109
  %2111 = fmul fast float %2103, %2109
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 67108864
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %2132, label %2116

; <label>:2116                                    ; preds = %2064
  %2117 = add i32 %23, 312
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 65535
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 65535
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = lshr i32 %2119, 16
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = fsub fast float %2089, %2127
  %2129 = fmul fast float %2128, %2121
  %2130 = fadd fast float %2129, %2125
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  br label %2132

; <label>:2132                                    ; preds = %2116, %2064
  %2133 = phi float [ %2131, %2116 ], [ %2089, %2064 ]
  %2134 = call float @dx.op.dot2.f32(i32 54, float %2110, float %2111, float %1668, float %1669)  ; Dot2(ax,ay,bx,by)
  %2135 = call float @dx.op.dot2.f32(i32 54, float %2110, float %2111, float %1670, float %1671)  ; Dot2(ax,ay,bx,by)
  br label %2136

; <label>:2136                                    ; preds = %2132, %2042
  %2137 = phi float [ %2133, %2132 ], [ 0x3FD6666660000000, %2042 ]
  %2138 = phi float [ %2134, %2132 ], [ 0.000000e+00, %2042 ]
  %2139 = phi float [ %2135, %2132 ], [ 0.000000e+00, %2042 ]
  %2140 = phi float [ %2076, %2132 ], [ 1.000000e+00, %2042 ]
  %2141 = add i32 %23, 192
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = lshr i32 %2143, 22
  %2145 = shl nuw nsw i32 %2144, 5
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 64
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2184, label %2151

; <label>:2151                                    ; preds = %2136
  %2152 = add i32 %23, 400
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %2154, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 131072
  %2160 = icmp eq i32 %2159, 0
  %2161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2156, %dx.types.Handle %68, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2162 = extractvalue %dx.types.ResRet.f32 %2161, 0
  %2163 = extractvalue %dx.types.ResRet.f32 %2161, 1
  %2164 = extractvalue %dx.types.ResRet.f32 %2161, 2
  %2165 = fmul fast float %2162, %297
  %2166 = fmul fast float %2163, %300
  %2167 = fmul fast float %2164, %303
  br i1 %2160, label %2174, label %2168

; <label>:2168                                    ; preds = %2151
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = fmul fast float %2170, %2165
  %2172 = fmul fast float %2170, %2166
  %2173 = fmul fast float %2170, %2167
  br label %2174

; <label>:2174                                    ; preds = %2168, %2151
  %2175 = phi float [ %2171, %2168 ], [ %2165, %2151 ]
  %2176 = phi float [ %2172, %2168 ], [ %2166, %2151 ]
  %2177 = phi float [ %2173, %2168 ], [ %2167, %2151 ]
  %2178 = fmul fast float %2175, %2146
  %2179 = select i1 %196, float %2178, float %2175
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2179, float %2176, float %2177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = select i1 %196, float 0.000000e+00, float %2175
  %2182 = select i1 %196, float %2180, float %2176
  %2183 = select i1 %196, float 0.000000e+00, float %2177
  br label %2184

; <label>:2184                                    ; preds = %2174, %2136
  %2185 = phi float [ %2181, %2174 ], [ 0.000000e+00, %2136 ]
  %2186 = phi float [ %2182, %2174 ], [ 0.000000e+00, %2136 ]
  %2187 = phi float [ %2183, %2174 ], [ 0.000000e+00, %2136 ]
  %2188 = add i32 %23, 128
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = lshr i32 %2190, 8
  %2194 = and i32 %2193, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = call float @dx.op.dot3.f32(i32 55, float %2057, float %2058, float %2059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = fmul fast float %2195, %2196
  %2198 = fadd fast float %2197, %2192
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  br i1 %1656, label %2201, label %2209

; <label>:2201                                    ; preds = %2184
  %2202 = fsub fast float 1.000000e+00, %1837
  %2203 = fmul fast float %2202, %1645
  %2204 = fmul fast float %2202, %1646
  %2205 = fmul fast float %2202, %1647
  %2206 = fmul fast float %2202, %1648
  %2207 = fmul fast float %2202, %1649
  %2208 = fmul fast float %2202, %1650
  br label %2209

; <label>:2209                                    ; preds = %2201, %2184
  %2210 = phi float [ %2203, %2201 ], [ %1645, %2184 ]
  %2211 = phi float [ %2204, %2201 ], [ %1646, %2184 ]
  %2212 = phi float [ %2205, %2201 ], [ %1647, %2184 ]
  %2213 = phi float [ %2206, %2201 ], [ %1648, %2184 ]
  %2214 = phi float [ %2207, %2201 ], [ %1649, %2184 ]
  %2215 = phi float [ %2208, %2201 ], [ %1650, %2184 ]
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 3
  %2219 = icmp eq i32 %2218, 3
  br i1 %2219, label %2298, label %2220

; <label>:2220                                    ; preds = %2209
  %2221 = and i32 %2217, 16
  %2222 = icmp ne i32 %2221, 0
  %2223 = select i1 %2222, float %1837, float 0.000000e+00
  %2224 = icmp eq i32 %2218, 0
  br i1 %2224, label %2225, label %2253

; <label>:2225                                    ; preds = %2220
  %2226 = and i32 %2217, 64
  %2227 = icmp ne i32 %2226, 0
  %2228 = select i1 %2227, float %1837, float 0.000000e+00
  %2229 = fsub fast float %2057, %2210
  %2230 = fsub fast float %2058, %2211
  %2231 = fsub fast float %2059, %2212
  %2232 = fmul fast float %2223, %2229
  %2233 = fmul fast float %2223, %2230
  %2234 = fmul fast float %2223, %2231
  %2235 = fadd fast float %2232, %2210
  %2236 = fadd fast float %2233, %2211
  %2237 = fadd fast float %2234, %2212
  %2238 = fsub fast float %2043, %1651
  %2239 = fmul fast float %2223, %2238
  %2240 = fadd fast float %2239, %1651
  %2241 = fsub fast float %2185, %2213
  %2242 = fsub fast float %2186, %2214
  %2243 = fsub fast float %2187, %2215
  %2244 = fmul fast float %2228, %2241
  %2245 = fmul fast float %2228, %2242
  %2246 = fmul fast float %2228, %2243
  %2247 = fadd fast float %2244, %2213
  %2248 = fadd fast float %2245, %2214
  %2249 = fadd fast float %2246, %2215
  %2250 = fsub fast float %2200, %1654
  %2251 = fmul fast float %2223, %2250
  %2252 = fadd fast float %2251, %1654
  br label %2298

; <label>:2253                                    ; preds = %2220
  %2254 = icmp eq i32 %2218, 1
  br i1 %2254, label %2255, label %2268

; <label>:2255                                    ; preds = %2253
  %2256 = fadd fast float %2057, -1.000000e+00
  %2257 = fadd fast float %2058, -1.000000e+00
  %2258 = fadd fast float %2059, -1.000000e+00
  %2259 = fmul fast float %2223, %2256
  %2260 = fmul fast float %2223, %2257
  %2261 = fmul fast float %2223, %2258
  %2262 = fadd fast float %2259, 1.000000e+00
  %2263 = fadd fast float %2260, 1.000000e+00
  %2264 = fadd fast float %2261, 1.000000e+00
  %2265 = fmul fast float %2262, %2210
  %2266 = fmul fast float %2263, %2211
  %2267 = fmul fast float %2264, %2212
  br label %2298

; <label>:2268                                    ; preds = %2253
  %2269 = icmp eq i32 %2218, 2
  br i1 %2269, label %2270, label %2298

; <label>:2270                                    ; preds = %2268
  %2271 = call float @dx.op.unary.f32(i32 24, float %2057)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %2058)  ; Sqrt(value)
  %2273 = call float @dx.op.unary.f32(i32 24, float %2059)  ; Sqrt(value)
  %2274 = fadd fast float %2271, -5.000000e-01
  %2275 = fadd fast float %2272, -5.000000e-01
  %2276 = fadd fast float %2273, -5.000000e-01
  %2277 = fmul fast float %2274, %2223
  %2278 = fmul fast float %2275, %2223
  %2279 = fmul fast float %2276, %2223
  %2280 = fadd fast float %2277, 5.000000e-01
  %2281 = fadd fast float %2278, 5.000000e-01
  %2282 = fadd fast float %2279, 5.000000e-01
  %2283 = fmul fast float %2280, 2.000000e+00
  %2284 = fsub fast float 1.000000e+00, %2283
  %2285 = fmul fast float %2284, %2210
  %2286 = fadd fast float %2285, %2283
  %2287 = fmul fast float %2286, %2210
  %2288 = fmul fast float %2281, 2.000000e+00
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %2289, %2211
  %2291 = fadd fast float %2290, %2288
  %2292 = fmul fast float %2291, %2211
  %2293 = fmul fast float %2282, 2.000000e+00
  %2294 = fsub fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2294, %2212
  %2296 = fadd fast float %2295, %2293
  %2297 = fmul fast float %2296, %2212
  br label %2298

; <label>:2298                                    ; preds = %2270, %2268, %2255, %2225, %2209
  %2299 = phi float [ %2210, %2209 ], [ %2287, %2270 ], [ %2210, %2268 ], [ %2265, %2255 ], [ %2235, %2225 ]
  %2300 = phi float [ %2211, %2209 ], [ %2292, %2270 ], [ %2211, %2268 ], [ %2266, %2255 ], [ %2236, %2225 ]
  %2301 = phi float [ %2212, %2209 ], [ %2297, %2270 ], [ %2212, %2268 ], [ %2267, %2255 ], [ %2237, %2225 ]
  %2302 = phi float [ %2213, %2209 ], [ %2213, %2270 ], [ %2213, %2268 ], [ %2213, %2255 ], [ %2247, %2225 ]
  %2303 = phi float [ %2214, %2209 ], [ %2214, %2270 ], [ %2214, %2268 ], [ %2214, %2255 ], [ %2248, %2225 ]
  %2304 = phi float [ %2215, %2209 ], [ %2215, %2270 ], [ %2215, %2268 ], [ %2215, %2255 ], [ %2249, %2225 ]
  %2305 = phi float [ %1651, %2209 ], [ %1651, %2270 ], [ %1651, %2268 ], [ %1651, %2255 ], [ %2240, %2225 ]
  %2306 = phi float [ %1654, %2209 ], [ %1654, %2270 ], [ %1654, %2268 ], [ %1654, %2255 ], [ %2252, %2225 ]
  %2307 = and i32 %2217, 12
  %2308 = icmp eq i32 %2307, 12
  br i1 %2308, label %2381, label %2309

; <label>:2309                                    ; preds = %2298
  %2310 = and i32 %2217, 2097184
  %2311 = icmp eq i32 %2310, 2097184
  %2312 = select i1 %2311, float %1837, float 0.000000e+00
  %2313 = and i32 %2217, 4194336
  %2314 = icmp eq i32 %2313, 4194336
  %2315 = select i1 %2314, float %1837, float 0.000000e+00
  %2316 = and i32 %2217, 8388640
  %2317 = icmp eq i32 %2316, 8388640
  %2318 = select i1 %2317, float %1837, float 0.000000e+00
  %2319 = icmp eq i32 %2307, 0
  br i1 %2319, label %2320, label %2333

; <label>:2320                                    ; preds = %2309
  %2321 = fsub fast float %2138, %1643
  %2322 = fsub fast float %2139, %1644
  %2323 = fmul fast float %2312, %2321
  %2324 = fmul fast float %2312, %2322
  %2325 = fadd fast float %2323, %1643
  %2326 = fadd fast float %2324, %1644
  %2327 = fsub fast float %2140, %1653
  %2328 = fmul fast float %2315, %2327
  %2329 = fadd fast float %2328, %1653
  %2330 = fsub fast float %2137, %1652
  %2331 = fmul fast float %2318, %2330
  %2332 = fadd fast float %2331, %1652
  br label %2381

; <label>:2333                                    ; preds = %2309
  %2334 = icmp eq i32 %2307, 4
  br i1 %2334, label %2335, label %2367

; <label>:2335                                    ; preds = %2333
  %2336 = fmul fast float %2312, %2138
  %2337 = fmul fast float %2312, %2139
  %2338 = fadd fast float %2336, %1643
  %2339 = fadd fast float %2337, %1644
  %2340 = call float @dx.op.binary.f32(i32 36, float %1653, float %2140)  ; FMin(a,b)
  %2341 = fsub fast float %2340, %1653
  %2342 = fmul fast float %2341, %2315
  %2343 = fadd fast float %2342, %1653
  %2344 = fadd fast float %2137, %1652
  %2345 = fmul fast float %2344, 0x3FF337FAE0000000
  %2346 = fmul fast float %1652, %1652
  %2347 = fmul fast float %2137, %2137
  %2348 = fadd fast float %2347, %2346
  %2349 = fmul fast float %2348, 0x3FE5152B00000000
  %2350 = fmul fast float %1652, 0xBFCC1F85E0000000
  %2351 = fmul fast float %2350, %2137
  %2352 = fadd fast float %2351, 0xBFE1363700000000
  %2353 = fadd fast float %2352, %2345
  %2354 = fsub fast float %2353, %2349
  %2355 = fmul fast float %2344, 0x3FBA6F0D00000000
  %2356 = fmul fast float %2348, 0x3FD0432880000000
  %2357 = fmul fast float %1652, 0xBFEF110800000000
  %2358 = fmul fast float %2357, %2137
  %2359 = fadd fast float %2358, 1.000000e+00
  %2360 = fsub fast float %2359, %2355
  %2361 = fadd fast float %2360, %2356
  %2362 = fdiv fast float %2354, %2361
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2364 = fsub fast float %2363, %1652
  %2365 = fmul fast float %2364, %2318
  %2366 = fadd fast float %2365, %1652
  br label %2381

; <label>:2367                                    ; preds = %2333
  %2368 = icmp eq i32 %2307, 8
  br i1 %2368, label %2369, label %2381

; <label>:2369                                    ; preds = %2367
  %2370 = fmul fast float %2312, %2138
  %2371 = fmul fast float %2312, %2139
  %2372 = fadd fast float %2370, %1643
  %2373 = fadd fast float %2371, %1644
  %2374 = call float @dx.op.binary.f32(i32 36, float %1653, float %2140)  ; FMin(a,b)
  %2375 = fsub fast float %2374, %1653
  %2376 = fmul fast float %2375, %2315
  %2377 = fadd fast float %2376, %1653
  %2378 = fsub fast float %2137, %1652
  %2379 = fmul fast float %2318, %2378
  %2380 = fadd fast float %2379, %1652
  br label %2381

; <label>:2381                                    ; preds = %2369, %2367, %2335, %2320, %2298, %1836, %1655, %1642
  %2382 = phi float [ %1643, %2298 ], [ %1643, %1836 ], [ %1643, %1642 ], [ %2372, %2369 ], [ %1643, %2367 ], [ %2338, %2335 ], [ %2325, %2320 ], [ %1643, %1655 ]
  %2383 = phi float [ %1644, %2298 ], [ %1644, %1836 ], [ %1644, %1642 ], [ %2373, %2369 ], [ %1644, %2367 ], [ %2339, %2335 ], [ %2326, %2320 ], [ %1644, %1655 ]
  %2384 = phi float [ %2299, %2298 ], [ %1645, %1836 ], [ %1645, %1642 ], [ %2299, %2369 ], [ %2299, %2367 ], [ %2299, %2335 ], [ %2299, %2320 ], [ %1645, %1655 ]
  %2385 = phi float [ %2300, %2298 ], [ %1646, %1836 ], [ %1646, %1642 ], [ %2300, %2369 ], [ %2300, %2367 ], [ %2300, %2335 ], [ %2300, %2320 ], [ %1646, %1655 ]
  %2386 = phi float [ %2301, %2298 ], [ %1647, %1836 ], [ %1647, %1642 ], [ %2301, %2369 ], [ %2301, %2367 ], [ %2301, %2335 ], [ %2301, %2320 ], [ %1647, %1655 ]
  %2387 = phi float [ %2302, %2298 ], [ %1648, %1836 ], [ %1648, %1642 ], [ %2302, %2369 ], [ %2302, %2367 ], [ %2302, %2335 ], [ %2302, %2320 ], [ %1648, %1655 ]
  %2388 = phi float [ %2303, %2298 ], [ %1649, %1836 ], [ %1649, %1642 ], [ %2303, %2369 ], [ %2303, %2367 ], [ %2303, %2335 ], [ %2303, %2320 ], [ %1649, %1655 ]
  %2389 = phi float [ %2304, %2298 ], [ %1650, %1836 ], [ %1650, %1642 ], [ %2304, %2369 ], [ %2304, %2367 ], [ %2304, %2335 ], [ %2304, %2320 ], [ %1650, %1655 ]
  %2390 = phi float [ %2305, %2298 ], [ %1651, %1836 ], [ %1651, %1642 ], [ %2305, %2369 ], [ %2305, %2367 ], [ %2305, %2335 ], [ %2305, %2320 ], [ %1651, %1655 ]
  %2391 = phi float [ %1652, %2298 ], [ %1652, %1836 ], [ %1652, %1642 ], [ %2380, %2369 ], [ %1652, %2367 ], [ %2366, %2335 ], [ %2332, %2320 ], [ %1652, %1655 ]
  %2392 = phi float [ %1653, %2298 ], [ %1653, %1836 ], [ %1653, %1642 ], [ %2377, %2369 ], [ %1653, %2367 ], [ %2343, %2335 ], [ %2329, %2320 ], [ %1653, %1655 ]
  %2393 = phi float [ %2306, %2298 ], [ %1654, %1836 ], [ %1654, %1642 ], [ %2306, %2369 ], [ %2306, %2367 ], [ %2306, %2335 ], [ %2306, %2320 ], [ %1654, %1655 ]
  br i1 %384, label %3120, label %2394

; <label>:2394                                    ; preds = %2381
  %2395 = icmp ult i32 %435, 4
  %2396 = add i32 %23, 72
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %23, 76
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = or i32 %2401, %2398
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %3120, label %2404

; <label>:2404                                    ; preds = %2394
  %2405 = and i32 %2398, 262144
  %2406 = icmp ne i32 %2405, 0
  %2407 = select i1 %2406, float %28, float 1.000000e+00
  %2408 = select i1 %2406, float %29, float 0.000000e+00
  %2409 = select i1 %2406, float %30, float 0.000000e+00
  %2410 = select i1 %2406, float %31, float 1.000000e+00
  %2411 = select i1 %2406, float %32, float %60
  %2412 = select i1 %2406, float %33, float %61
  %2413 = add i32 %23, 332
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = lshr i32 %2415, 16
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = fmul fast float %2417, 0x3F50624DE0000000
  %2419 = add i32 %23, 136
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 16
  %2423 = and i32 %2422, 255
  %2424 = lshr i32 %2421, 24
  %2425 = add i32 %23, 340
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 65535
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2427, 16
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = add i32 %23, 80
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 22
  %2436 = shl nuw nsw i32 %2435, 5
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = shl i32 %2434, 4
  %2439 = and i32 %2438, 32752
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = lshr i32 %2434, 7
  %2442 = and i32 %2441, 32752
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 3
  %2446 = fmul fast float %2445, 1.000000e+03
  %2447 = fmul fast float %374, %2446
  %2448 = call float @dx.op.unary.f32(i32 22, float %2447)  ; Frc(value)
  %2449 = fadd fast float %2448, %364
  %2450 = fmul fast float %375, %2446
  %2451 = call float @dx.op.unary.f32(i32 22, float %2450)  ; Frc(value)
  %2452 = fadd fast float %2451, %366
  %2453 = fmul fast float %2418, %2446
  %2454 = call float @dx.op.unary.f32(i32 22, float %2453)  ; Frc(value)
  %2455 = fmul fast float %2454, 0x401921FB60000000
  %2456 = fadd fast float %2455, %2437
  %2457 = call float @dx.op.unary.f32(i32 13, float %2456)  ; Sin(value)
  %2458 = call float @dx.op.unary.f32(i32 12, float %2456)  ; Cos(value)
  %2459 = fsub fast float -0.000000e+00, %2457
  %2460 = fadd fast float %2411, -5.000000e-01
  %2461 = fadd fast float %2412, -5.000000e-01
  %2462 = fmul fast float %2429, %2460
  %2463 = fmul fast float %2431, %2461
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2440, %2464
  %2467 = fmul fast float %2443, %2465
  %2468 = fmul fast float %2458, %2466
  %2469 = call float @dx.op.tertiary.f32(i32 46, float %2459, float %2467, float %2468)  ; FMad(a,b,c)
  %2470 = fmul fast float %2457, %2466
  %2471 = call float @dx.op.tertiary.f32(i32 46, float %2458, float %2467, float %2470)  ; FMad(a,b,c)
  %2472 = fadd fast float %2449, %2469
  %2473 = fadd fast float %2452, %2471
  %2474 = icmp ugt i32 %2423, 1
  %2475 = icmp ugt i32 %2421, 33554431
  %2476 = or i1 %2475, %2474
  br i1 %2476, label %2477, label %2502

; <label>:2477                                    ; preds = %2404
  %2478 = add i32 %23, 276
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = lshr i32 %2480, 16
  %2482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2481)  ; LegacyF16ToF32(value)
  %2483 = fmul fast float %2445, %2482
  %2484 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2485 = mul nuw nsw i32 %2423, %2424
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2484, %2486
  %2488 = call float @dx.op.unary.f32(i32 27, float %2487)  ; Round_ni(value)
  %2489 = fptoui float %2488 to i32
  %2490 = urem i32 %2489, %2423
  %2491 = udiv i32 %2489, %2424
  %2492 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2493 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2494 = uitofp i32 %2490 to float
  %2495 = uitofp i32 %2491 to float
  %2496 = fadd fast float %2492, %2494
  %2497 = fadd fast float %2493, %2495
  %2498 = uitofp i32 %2423 to float
  %2499 = uitofp i32 %2424 to float
  %2500 = fdiv fast float %2496, %2498
  %2501 = fdiv fast float %2497, %2499
  br label %2502

; <label>:2502                                    ; preds = %2477, %2404
  %2503 = phi float [ %2500, %2477 ], [ %2472, %2404 ]
  %2504 = phi float [ %2501, %2477 ], [ %2473, %2404 ]
  %2505 = and i32 %2398, 256
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2553, label %2507

; <label>:2507                                    ; preds = %2502
  %2508 = add i32 %23, 436
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %2510, 0
  %2512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2512, %dx.types.Handle %69, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = add i32 %23, 148
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = shl i32 %2517, 4
  %2519 = and i32 %2518, 32752
  %2520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2519)  ; LegacyF16ToF32(value)
  %2521 = lshr i32 %2517, 7
  %2522 = and i32 %2521, 32752
  %2523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2522)  ; LegacyF16ToF32(value)
  %2524 = fsub fast float 1.000000e+00, %430
  %2525 = call float @dx.op.binary.f32(i32 35, float %2524, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2526 = bitcast float %430 to i32
  %2527 = sitofp i32 %2526 to float
  %2528 = fadd fast float %2527, 0xC1CFBF8940000000
  %2529 = fmul fast float %2523, %2528
  %2530 = fadd fast float %2529, 0x41CFBF8940000000
  %2531 = fptosi float %2530 to i32
  %2532 = bitcast i32 %2531 to float
  %2533 = bitcast float %2525 to i32
  %2534 = sitofp i32 %2533 to float
  %2535 = fadd fast float %2534, 0xC1CFBF8940000000
  %2536 = fmul fast float %2535, %2523
  %2537 = fadd fast float %2536, 0x41CFBF8940000000
  %2538 = fptosi float %2537 to i32
  %2539 = bitcast i32 %2538 to float
  %2540 = fmul fast float %2532, %2520
  %2541 = fmul fast float %2539, %2520
  %2542 = fsub fast float %2525, %2540
  %2543 = fadd fast float %2541, %2525
  %2544 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2545 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2546 = fsub fast float %2514, %2544
  %2547 = fsub fast float %2545, %2544
  %2548 = bitcast float %2547 to i32
  %2549 = sub nsw i32 2129859010, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2550, %2546
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  br label %2553

; <label>:2553                                    ; preds = %2507, %2502
  %2554 = phi float [ %2552, %2507 ], [ %430, %2502 ]
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 128
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2575, label %2559

; <label>:2559                                    ; preds = %2553
  %2560 = add i32 %23, 420
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2564, %dx.types.Handle %69, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 524288
  %2570 = icmp ne i32 %2569, 0
  %2571 = fcmp fast ogt float %2566, 0x3FE0101020000000
  %2572 = select i1 %2571, float 1.000000e+00, float 0.000000e+00
  %2573 = select i1 %2570, float %2572, float %2566
  %2574 = fmul fast float %2573, %2554
  br label %2575

; <label>:2575                                    ; preds = %2559, %2553
  %2576 = phi float [ %2574, %2559 ], [ %2554, %2553 ]
  %2577 = fcmp fast ult float %2576, 0x3F70101020000000
  br i1 %2577, label %3120, label %2578

; <label>:2578                                    ; preds = %2575
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 16
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2781, label %2583

; <label>:2583                                    ; preds = %2578
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %23, 372
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %68, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.ResRet.f32 %2591, 2
  %2595 = extractvalue %dx.types.ResRet.f32 %2591, 3
  %2596 = and i32 %2585, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = lshr i32 %2585, 8
  %2599 = and i32 %2598, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = fmul fast float %2595, %2597
  %2602 = fadd fast float %2601, %2600
  %2603 = fmul fast float %2602, 0x3F70101000000000
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 512
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2616, label %2608

; <label>:2608                                    ; preds = %2583
  %2609 = add i32 %23, 452
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %69, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  br label %2616

; <label>:2616                                    ; preds = %2608, %2583
  %2617 = phi float [ %2615, %2608 ], [ 1.000000e+00, %2583 ]
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 33554432
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2728, label %2622

; <label>:2622                                    ; preds = %2616
  %2623 = add i32 %23, 272
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2625, 16
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = add i32 %23, 276
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 65535
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = lshr i32 %2636, 24
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 0x3F70101020000000
  %2640 = and i32 %2636, 255
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2641, 0x3F70101020000000
  %2643 = lshr i32 %2636, 8
  %2644 = and i32 %2643, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = lshr i32 %2636, 16
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = add i32 %23, 268
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = lshr i32 %2653, 24
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = and i32 %2653, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = fmul fast float %2658, 0x3F70101020000000
  %2660 = lshr i32 %2653, 8
  %2661 = and i32 %2660, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2653, 16
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = bitcast float %2592 to i32
  %2669 = ashr i32 %2668, 1
  %2670 = sub nsw i32 1597463174, %2669
  %2671 = bitcast i32 %2670 to float
  %2672 = fmul fast float %2592, 5.000000e-01
  %2673 = fmul fast float %2671, %2671
  %2674 = fmul fast float %2673, %2672
  %2675 = fsub fast float 1.500000e+00, %2674
  %2676 = fmul fast float %2671, %2592
  %2677 = fmul fast float %2676, %2675
  %2678 = bitcast float %2593 to i32
  %2679 = ashr i32 %2678, 1
  %2680 = sub nsw i32 1597463174, %2679
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2593, 5.000000e-01
  %2683 = fmul fast float %2681, %2681
  %2684 = fmul fast float %2683, %2682
  %2685 = fsub fast float 1.500000e+00, %2684
  %2686 = fmul fast float %2681, %2593
  %2687 = fmul fast float %2686, %2685
  %2688 = bitcast float %2594 to i32
  %2689 = ashr i32 %2688, 1
  %2690 = sub nsw i32 1597463174, %2689
  %2691 = bitcast i32 %2690 to float
  %2692 = fmul fast float %2594, 5.000000e-01
  %2693 = fmul fast float %2691, %2691
  %2694 = fmul fast float %2693, %2692
  %2695 = fsub fast float 1.500000e+00, %2694
  %2696 = fmul fast float %2691, %2594
  %2697 = fmul fast float %2696, %2695
  %2698 = fsub fast float %2677, %2659
  %2699 = fsub fast float %2687, %2663
  %2700 = fsub fast float %2697, %2667
  %2701 = fmul fast float %2698, %2627
  %2702 = fmul fast float %2699, %2629
  %2703 = fmul fast float %2700, %2634
  %2704 = fadd fast float %2701, %2642
  %2705 = fadd fast float %2702, %2646
  %2706 = fadd fast float %2703, %2650
  %2707 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2708 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2709 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2710 = fmul fast float %2707, %2707
  %2711 = fmul fast float %2708, %2708
  %2712 = fmul fast float %2709, %2709
  %2713 = fsub fast float %2710, %2592
  %2714 = fsub fast float %2711, %2593
  %2715 = fsub fast float %2712, %2594
  %2716 = fmul fast float %2713, %2617
  %2717 = fmul fast float %2714, %2617
  %2718 = fmul fast float %2715, %2617
  %2719 = fadd fast float %2716, %2592
  %2720 = fadd fast float %2717, %2593
  %2721 = fadd fast float %2718, %2594
  %2722 = fadd fast float %2639, %2603
  %2723 = fsub fast float %2722, %2656
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = fsub fast float %2724, %2603
  %2726 = fmul fast float %2725, %2617
  %2727 = fadd fast float %2726, %2603
  br label %2781

; <label>:2728                                    ; preds = %2616
  %2729 = and i32 %2619, 134217728
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2765, label %2731

; <label>:2731                                    ; preds = %2728
  %2732 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %2733 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %2734 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fadd fast float %2733, -5.000000e-01
  %2737 = fadd fast float %2734, -5.000000e-01
  %2738 = fmul fast float %2735, %2617
  %2739 = fmul fast float %2736, %2617
  %2740 = fmul fast float %2737, %2617
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fadd fast float %2739, 5.000000e-01
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = call float @dx.op.unary.f32(i32 24, float %2592)  ; Sqrt(value)
  %2745 = call float @dx.op.unary.f32(i32 24, float %2593)  ; Sqrt(value)
  %2746 = call float @dx.op.unary.f32(i32 24, float %2594)  ; Sqrt(value)
  %2747 = fmul fast float %2741, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2744
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2744
  %2752 = fmul fast float %2742, 2.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2745
  %2755 = fadd fast float %2754, %2752
  %2756 = fmul fast float %2755, %2745
  %2757 = fmul fast float %2743, 2.000000e+00
  %2758 = fsub fast float 1.000000e+00, %2757
  %2759 = fmul fast float %2758, %2746
  %2760 = fadd fast float %2759, %2757
  %2761 = fmul fast float %2760, %2746
  %2762 = fmul fast float %2751, %2751
  %2763 = fmul fast float %2756, %2756
  %2764 = fmul fast float %2761, %2761
  br label %2781

; <label>:2765                                    ; preds = %2728
  %2766 = fmul fast float %351, %351
  %2767 = fmul fast float %355, %355
  %2768 = fmul fast float %359, %359
  %2769 = fadd fast float %2766, -1.000000e+00
  %2770 = fadd fast float %2767, -1.000000e+00
  %2771 = fadd fast float %2768, -1.000000e+00
  %2772 = fmul fast float %2617, %2769
  %2773 = fmul fast float %2617, %2770
  %2774 = fmul fast float %2617, %2771
  %2775 = fadd fast float %2772, 1.000000e+00
  %2776 = fadd fast float %2773, 1.000000e+00
  %2777 = fadd fast float %2774, 1.000000e+00
  %2778 = fmul fast float %2775, %2592
  %2779 = fmul fast float %2776, %2593
  %2780 = fmul fast float %2777, %2594
  br label %2781

; <label>:2781                                    ; preds = %2765, %2731, %2622, %2578
  %2782 = phi float [ %2727, %2622 ], [ %2603, %2731 ], [ %2603, %2765 ], [ 0x3FA23C0BE0000000, %2578 ]
  %2783 = phi float [ %2719, %2622 ], [ %2762, %2731 ], [ %2778, %2765 ], [ 1.000000e+00, %2578 ]
  %2784 = phi float [ %2720, %2622 ], [ %2763, %2731 ], [ %2779, %2765 ], [ 1.000000e+00, %2578 ]
  %2785 = phi float [ %2721, %2622 ], [ %2764, %2731 ], [ %2780, %2765 ], [ 1.000000e+00, %2578 ]
  %2786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.i32 %2786, 1
  %2788 = and i32 %2787, 1
  %2789 = icmp ne i32 %2788, 0
  %2790 = add i32 %23, 356
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = and i32 %2792, 32
  %2794 = icmp ne i32 %2793, 0
  %2795 = and i1 %2789, %2794
  %2796 = select i1 %2795, float 1.000000e+00, float %2783
  %2797 = select i1 %2795, float 0x3FD3333340000000, float %2784
  %2798 = select i1 %2795, float 0x3FD3333340000000, float %2785
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, 32
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2875, label %2803

; <label>:2803                                    ; preds = %2781
  %2804 = add i32 %23, 140
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = add i32 %23, 388
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %2809, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2811, %dx.types.Handle %68, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.ResRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.ResRet.f32 %2812, 2
  %2816 = extractvalue %dx.types.ResRet.f32 %2812, 3
  %2817 = and i32 %2806, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = lshr i32 %2806, 8
  %2820 = and i32 %2819, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = lshr i32 %2806, 16
  %2823 = and i32 %2822, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = fmul fast float %2824, 0x3F70101000000000
  %2826 = fmul fast float %2813, %2818
  %2827 = fadd fast float %2826, %2821
  %2828 = fmul fast float %2827, 0x3F70101000000000
  %2829 = fadd fast float %2814, -5.000000e-01
  %2830 = fadd fast float %2816, -5.000000e-01
  %2831 = fmul fast float %2829, %2825
  %2832 = fmul fast float %2830, %2825
  %2833 = fadd fast float %2831, 5.000000e-01
  %2834 = fadd fast float %2832, 5.000000e-01
  %2835 = fmul fast float %2833, 2.000000e+00
  %2836 = fadd fast float %2835, -1.000000e+00
  %2837 = fmul fast float %2834, 2.000000e+00
  %2838 = fadd fast float %2837, -1.000000e+00
  %2839 = fadd fast float %2836, %2838
  %2840 = fmul fast float %2839, 5.000000e-01
  %2841 = fsub fast float %2836, %2838
  %2842 = fmul fast float %2841, 5.000000e-01
  %2843 = call float @dx.op.unary.f32(i32 6, float %2840)  ; FAbs(value)
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2846 = fsub fast float %2844, %2845
  %2847 = call float @dx.op.dot3.f32(i32 55, float %2840, float %2842, float %2846, float %2840, float %2842, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2848 = call float @dx.op.unary.f32(i32 25, float %2847)  ; Rsqrt(value)
  %2849 = fmul fast float %2840, %2848
  %2850 = fmul fast float %2842, %2848
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 67108864
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2871, label %2855

; <label>:2855                                    ; preds = %2803
  %2856 = add i32 %23, 328
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 65535
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, 65535
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = lshr i32 %2858, 16
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = fsub fast float %2828, %2866
  %2868 = fmul fast float %2867, %2860
  %2869 = fadd fast float %2868, %2864
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  br label %2871

; <label>:2871                                    ; preds = %2855, %2803
  %2872 = phi float [ %2870, %2855 ], [ %2828, %2803 ]
  %2873 = call float @dx.op.dot2.f32(i32 54, float %2849, float %2850, float %2407, float %2408)  ; Dot2(ax,ay,bx,by)
  %2874 = call float @dx.op.dot2.f32(i32 54, float %2849, float %2850, float %2409, float %2410)  ; Dot2(ax,ay,bx,by)
  br label %2875

; <label>:2875                                    ; preds = %2871, %2781
  %2876 = phi float [ %2872, %2871 ], [ 0x3FD6666660000000, %2781 ]
  %2877 = phi float [ %2873, %2871 ], [ 0.000000e+00, %2781 ]
  %2878 = phi float [ %2874, %2871 ], [ 0.000000e+00, %2781 ]
  %2879 = phi float [ %2815, %2871 ], [ 1.000000e+00, %2781 ]
  %2880 = add i32 %23, 208
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 22
  %2884 = shl nuw nsw i32 %2883, 5
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 64
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2923, label %2890

; <label>:2890                                    ; preds = %2875
  %2891 = add i32 %23, 404
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 131072
  %2899 = icmp eq i32 %2898, 0
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %68, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = fmul fast float %2901, %339
  %2905 = fmul fast float %2902, %342
  %2906 = fmul fast float %2903, %345
  br i1 %2899, label %2913, label %2907

; <label>:2907                                    ; preds = %2890
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = fmul fast float %2909, %2904
  %2911 = fmul fast float %2909, %2905
  %2912 = fmul fast float %2909, %2906
  br label %2913

; <label>:2913                                    ; preds = %2907, %2890
  %2914 = phi float [ %2910, %2907 ], [ %2904, %2890 ]
  %2915 = phi float [ %2911, %2907 ], [ %2905, %2890 ]
  %2916 = phi float [ %2912, %2907 ], [ %2906, %2890 ]
  %2917 = fmul fast float %2914, %2885
  %2918 = select i1 %196, float %2917, float %2914
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2918, float %2915, float %2916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = select i1 %196, float 0.000000e+00, float %2914
  %2921 = select i1 %196, float %2919, float %2915
  %2922 = select i1 %196, float 0.000000e+00, float %2916
  br label %2923

; <label>:2923                                    ; preds = %2913, %2875
  %2924 = phi float [ %2920, %2913 ], [ 0.000000e+00, %2875 ]
  %2925 = phi float [ %2921, %2913 ], [ 0.000000e+00, %2875 ]
  %2926 = phi float [ %2922, %2913 ], [ 0.000000e+00, %2875 ]
  %2927 = add i32 %23, 144
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = lshr i32 %2929, 8
  %2933 = and i32 %2932, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2797, float %2798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = fmul fast float %2934, %2935
  %2937 = fadd fast float %2936, %2931
  %2938 = fmul fast float %2937, 0x3F70101020000000
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  br i1 %2395, label %2940, label %2948

; <label>:2940                                    ; preds = %2923
  %2941 = fsub fast float 1.000000e+00, %2576
  %2942 = fmul fast float %2941, %2384
  %2943 = fmul fast float %2941, %2385
  %2944 = fmul fast float %2941, %2386
  %2945 = fmul fast float %2941, %2387
  %2946 = fmul fast float %2941, %2388
  %2947 = fmul fast float %2941, %2389
  br label %2948

; <label>:2948                                    ; preds = %2940, %2923
  %2949 = phi float [ %2942, %2940 ], [ %2384, %2923 ]
  %2950 = phi float [ %2943, %2940 ], [ %2385, %2923 ]
  %2951 = phi float [ %2944, %2940 ], [ %2386, %2923 ]
  %2952 = phi float [ %2945, %2940 ], [ %2387, %2923 ]
  %2953 = phi float [ %2946, %2940 ], [ %2388, %2923 ]
  %2954 = phi float [ %2947, %2940 ], [ %2389, %2923 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 3
  %2958 = icmp eq i32 %2957, 3
  br i1 %2958, label %3037, label %2959

; <label>:2959                                    ; preds = %2948
  %2960 = and i32 %2956, 16
  %2961 = icmp ne i32 %2960, 0
  %2962 = select i1 %2961, float %2576, float 0.000000e+00
  %2963 = icmp eq i32 %2957, 0
  br i1 %2963, label %2964, label %2992

; <label>:2964                                    ; preds = %2959
  %2965 = and i32 %2956, 64
  %2966 = icmp ne i32 %2965, 0
  %2967 = select i1 %2966, float %2576, float 0.000000e+00
  %2968 = fsub fast float %2796, %2949
  %2969 = fsub fast float %2797, %2950
  %2970 = fsub fast float %2798, %2951
  %2971 = fmul fast float %2962, %2968
  %2972 = fmul fast float %2962, %2969
  %2973 = fmul fast float %2962, %2970
  %2974 = fadd fast float %2971, %2949
  %2975 = fadd fast float %2972, %2950
  %2976 = fadd fast float %2973, %2951
  %2977 = fsub fast float %2782, %2390
  %2978 = fmul fast float %2962, %2977
  %2979 = fadd fast float %2978, %2390
  %2980 = fsub fast float %2924, %2952
  %2981 = fsub fast float %2925, %2953
  %2982 = fsub fast float %2926, %2954
  %2983 = fmul fast float %2967, %2980
  %2984 = fmul fast float %2967, %2981
  %2985 = fmul fast float %2967, %2982
  %2986 = fadd fast float %2983, %2952
  %2987 = fadd fast float %2984, %2953
  %2988 = fadd fast float %2985, %2954
  %2989 = fsub fast float %2939, %2393
  %2990 = fmul fast float %2962, %2989
  %2991 = fadd fast float %2990, %2393
  br label %3037

; <label>:2992                                    ; preds = %2959
  %2993 = icmp eq i32 %2957, 1
  br i1 %2993, label %2994, label %3007

; <label>:2994                                    ; preds = %2992
  %2995 = fadd fast float %2796, -1.000000e+00
  %2996 = fadd fast float %2797, -1.000000e+00
  %2997 = fadd fast float %2798, -1.000000e+00
  %2998 = fmul fast float %2962, %2995
  %2999 = fmul fast float %2962, %2996
  %3000 = fmul fast float %2962, %2997
  %3001 = fadd fast float %2998, 1.000000e+00
  %3002 = fadd fast float %2999, 1.000000e+00
  %3003 = fadd fast float %3000, 1.000000e+00
  %3004 = fmul fast float %3001, %2949
  %3005 = fmul fast float %3002, %2950
  %3006 = fmul fast float %3003, %2951
  br label %3037

; <label>:3007                                    ; preds = %2992
  %3008 = icmp eq i32 %2957, 2
  br i1 %3008, label %3009, label %3037

; <label>:3009                                    ; preds = %3007
  %3010 = call float @dx.op.unary.f32(i32 24, float %2796)  ; Sqrt(value)
  %3011 = call float @dx.op.unary.f32(i32 24, float %2797)  ; Sqrt(value)
  %3012 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %3013 = fadd fast float %3010, -5.000000e-01
  %3014 = fadd fast float %3011, -5.000000e-01
  %3015 = fadd fast float %3012, -5.000000e-01
  %3016 = fmul fast float %3013, %2962
  %3017 = fmul fast float %3014, %2962
  %3018 = fmul fast float %3015, %2962
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fmul fast float %3019, 2.000000e+00
  %3023 = fsub fast float 1.000000e+00, %3022
  %3024 = fmul fast float %3023, %2949
  %3025 = fadd fast float %3024, %3022
  %3026 = fmul fast float %3025, %2949
  %3027 = fmul fast float %3020, 2.000000e+00
  %3028 = fsub fast float 1.000000e+00, %3027
  %3029 = fmul fast float %3028, %2950
  %3030 = fadd fast float %3029, %3027
  %3031 = fmul fast float %3030, %2950
  %3032 = fmul fast float %3021, 2.000000e+00
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = fmul fast float %3033, %2951
  %3035 = fadd fast float %3034, %3032
  %3036 = fmul fast float %3035, %2951
  br label %3037

; <label>:3037                                    ; preds = %3009, %3007, %2994, %2964, %2948
  %3038 = phi float [ %2949, %2948 ], [ %3026, %3009 ], [ %2949, %3007 ], [ %3004, %2994 ], [ %2974, %2964 ]
  %3039 = phi float [ %2950, %2948 ], [ %3031, %3009 ], [ %2950, %3007 ], [ %3005, %2994 ], [ %2975, %2964 ]
  %3040 = phi float [ %2951, %2948 ], [ %3036, %3009 ], [ %2951, %3007 ], [ %3006, %2994 ], [ %2976, %2964 ]
  %3041 = phi float [ %2952, %2948 ], [ %2952, %3009 ], [ %2952, %3007 ], [ %2952, %2994 ], [ %2986, %2964 ]
  %3042 = phi float [ %2953, %2948 ], [ %2953, %3009 ], [ %2953, %3007 ], [ %2953, %2994 ], [ %2987, %2964 ]
  %3043 = phi float [ %2954, %2948 ], [ %2954, %3009 ], [ %2954, %3007 ], [ %2954, %2994 ], [ %2988, %2964 ]
  %3044 = phi float [ %2390, %2948 ], [ %2390, %3009 ], [ %2390, %3007 ], [ %2390, %2994 ], [ %2979, %2964 ]
  %3045 = phi float [ %2393, %2948 ], [ %2393, %3009 ], [ %2393, %3007 ], [ %2393, %2994 ], [ %2991, %2964 ]
  %3046 = and i32 %2956, 12
  %3047 = icmp eq i32 %3046, 12
  br i1 %3047, label %3120, label %3048

; <label>:3048                                    ; preds = %3037
  %3049 = and i32 %2956, 2097184
  %3050 = icmp eq i32 %3049, 2097184
  %3051 = select i1 %3050, float %2576, float 0.000000e+00
  %3052 = and i32 %2956, 4194336
  %3053 = icmp eq i32 %3052, 4194336
  %3054 = select i1 %3053, float %2576, float 0.000000e+00
  %3055 = and i32 %2956, 8388640
  %3056 = icmp eq i32 %3055, 8388640
  %3057 = select i1 %3056, float %2576, float 0.000000e+00
  %3058 = icmp eq i32 %3046, 0
  br i1 %3058, label %3059, label %3072

; <label>:3059                                    ; preds = %3048
  %3060 = fsub fast float %2877, %2382
  %3061 = fsub fast float %2878, %2383
  %3062 = fmul fast float %3051, %3060
  %3063 = fmul fast float %3051, %3061
  %3064 = fadd fast float %3062, %2382
  %3065 = fadd fast float %3063, %2383
  %3066 = fsub fast float %2879, %2392
  %3067 = fmul fast float %3054, %3066
  %3068 = fadd fast float %3067, %2392
  %3069 = fsub fast float %2876, %2391
  %3070 = fmul fast float %3057, %3069
  %3071 = fadd fast float %3070, %2391
  br label %3120

; <label>:3072                                    ; preds = %3048
  %3073 = icmp eq i32 %3046, 4
  br i1 %3073, label %3074, label %3106

; <label>:3074                                    ; preds = %3072
  %3075 = fmul fast float %3051, %2877
  %3076 = fmul fast float %3051, %2878
  %3077 = fadd fast float %3075, %2382
  %3078 = fadd fast float %3076, %2383
  %3079 = call float @dx.op.binary.f32(i32 36, float %2392, float %2879)  ; FMin(a,b)
  %3080 = fsub fast float %3079, %2392
  %3081 = fmul fast float %3080, %3054
  %3082 = fadd fast float %3081, %2392
  %3083 = fadd fast float %2876, %2391
  %3084 = fmul fast float %3083, 0x3FF337FAE0000000
  %3085 = fmul fast float %2391, %2391
  %3086 = fmul fast float %2876, %2876
  %3087 = fadd fast float %3086, %3085
  %3088 = fmul fast float %3087, 0x3FE5152B00000000
  %3089 = fmul fast float %2391, 0xBFCC1F85E0000000
  %3090 = fmul fast float %3089, %2876
  %3091 = fadd fast float %3090, 0xBFE1363700000000
  %3092 = fadd fast float %3091, %3084
  %3093 = fsub fast float %3092, %3088
  %3094 = fmul fast float %3083, 0x3FBA6F0D00000000
  %3095 = fmul fast float %3087, 0x3FD0432880000000
  %3096 = fmul fast float %2391, 0xBFEF110800000000
  %3097 = fmul fast float %3096, %2876
  %3098 = fadd fast float %3097, 1.000000e+00
  %3099 = fsub fast float %3098, %3094
  %3100 = fadd fast float %3099, %3095
  %3101 = fdiv fast float %3093, %3100
  %3102 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3103 = fsub fast float %3102, %2391
  %3104 = fmul fast float %3103, %3057
  %3105 = fadd fast float %3104, %2391
  br label %3120

; <label>:3106                                    ; preds = %3072
  %3107 = icmp eq i32 %3046, 8
  br i1 %3107, label %3108, label %3120

; <label>:3108                                    ; preds = %3106
  %3109 = fmul fast float %3051, %2877
  %3110 = fmul fast float %3051, %2878
  %3111 = fadd fast float %3109, %2382
  %3112 = fadd fast float %3110, %2383
  %3113 = call float @dx.op.binary.f32(i32 36, float %2392, float %2879)  ; FMin(a,b)
  %3114 = fsub fast float %3113, %2392
  %3115 = fmul fast float %3114, %3054
  %3116 = fadd fast float %3115, %2392
  %3117 = fsub fast float %2876, %2391
  %3118 = fmul fast float %3057, %3117
  %3119 = fadd fast float %3118, %2391
  br label %3120

; <label>:3120                                    ; preds = %3108, %3106, %3074, %3059, %3037, %2575, %2394, %2381
  %3121 = phi float [ %2382, %3037 ], [ %2382, %2575 ], [ %2382, %2381 ], [ %2382, %2394 ], [ %3064, %3059 ], [ %3077, %3074 ], [ %2382, %3106 ], [ %3111, %3108 ]
  %3122 = phi float [ %2383, %3037 ], [ %2383, %2575 ], [ %2383, %2381 ], [ %2383, %2394 ], [ %3065, %3059 ], [ %3078, %3074 ], [ %2383, %3106 ], [ %3112, %3108 ]
  %3123 = phi float [ %3038, %3037 ], [ %2384, %2575 ], [ %2384, %2381 ], [ %2384, %2394 ], [ %3038, %3059 ], [ %3038, %3074 ], [ %3038, %3106 ], [ %3038, %3108 ]
  %3124 = phi float [ %3039, %3037 ], [ %2385, %2575 ], [ %2385, %2381 ], [ %2385, %2394 ], [ %3039, %3059 ], [ %3039, %3074 ], [ %3039, %3106 ], [ %3039, %3108 ]
  %3125 = phi float [ %3040, %3037 ], [ %2386, %2575 ], [ %2386, %2381 ], [ %2386, %2394 ], [ %3040, %3059 ], [ %3040, %3074 ], [ %3040, %3106 ], [ %3040, %3108 ]
  %3126 = phi float [ %3041, %3037 ], [ %2387, %2575 ], [ %2387, %2381 ], [ %2387, %2394 ], [ %3041, %3059 ], [ %3041, %3074 ], [ %3041, %3106 ], [ %3041, %3108 ]
  %3127 = phi float [ %3042, %3037 ], [ %2388, %2575 ], [ %2388, %2381 ], [ %2388, %2394 ], [ %3042, %3059 ], [ %3042, %3074 ], [ %3042, %3106 ], [ %3042, %3108 ]
  %3128 = phi float [ %3043, %3037 ], [ %2389, %2575 ], [ %2389, %2381 ], [ %2389, %2394 ], [ %3043, %3059 ], [ %3043, %3074 ], [ %3043, %3106 ], [ %3043, %3108 ]
  %3129 = phi float [ %3044, %3037 ], [ %2390, %2575 ], [ %2390, %2381 ], [ %2390, %2394 ], [ %3044, %3059 ], [ %3044, %3074 ], [ %3044, %3106 ], [ %3044, %3108 ]
  %3130 = phi float [ %2391, %3037 ], [ %2391, %2575 ], [ %2391, %2381 ], [ %2391, %2394 ], [ %3071, %3059 ], [ %3105, %3074 ], [ %2391, %3106 ], [ %3119, %3108 ]
  %3131 = phi float [ %2392, %3037 ], [ %2392, %2575 ], [ %2392, %2381 ], [ %2392, %2394 ], [ %3068, %3059 ], [ %3082, %3074 ], [ %2392, %3106 ], [ %3116, %3108 ]
  %3132 = phi float [ %3045, %3037 ], [ %2393, %2575 ], [ %2393, %2381 ], [ %2393, %2394 ], [ %3045, %3059 ], [ %3045, %3074 ], [ %3045, %3106 ], [ %3045, %3108 ]
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3135 = call float @dx.op.dot2.f32(i32 54, float %3121, float %3122, float %3121, float %3122)  ; Dot2(ax,ay,bx,by)
  %3136 = fmul fast float %3135, 0x3FE3333340000000
  %3137 = fsub fast float 1.000000e+00, %3136
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3121, float %3122, float %3137, float %3121, float %3122, float %3137)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.unary.f32(i32 25, float %3138)  ; Rsqrt(value)
  %3140 = fmul fast float %3139, %3121
  %3141 = fmul fast float %3139, %3122
  %3142 = fmul fast float %3137, %3139
  %3143 = fmul fast float %3142, %81
  %3144 = fmul fast float %3142, %83
  %3145 = fmul fast float %3142, %85
  %3146 = fmul fast float %3140, %53
  %3147 = fmul fast float %3140, %54
  %3148 = fmul fast float %3140, %55
  %3149 = fadd fast float %3143, %3146
  %3150 = fadd fast float %3144, %3147
  %3151 = fadd fast float %3145, %3148
  %3152 = fmul fast float %95, %3141
  %3153 = fmul fast float %96, %3141
  %3154 = fmul fast float %97, %3141
  %3155 = fadd fast float %3149, %3152
  %3156 = fadd fast float %3150, %3153
  %3157 = fadd fast float %3151, %3154
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %3155, float %3156, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3155, %3159
  %3161 = fmul fast float %3156, %3159
  %3162 = fmul fast float %3157, %3159
  %3163 = icmp eq i32 %24, 65535
  br i1 %3163, label %3678, label %3164

; <label>:3164                                    ; preds = %3120
  %3165 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %3166 = call float @dx.op.unary.f32(i32 83, float %26)  ; DerivCoarseX(value)
  %3167 = call float @dx.op.unary.f32(i32 83, float %27)  ; DerivCoarseX(value)
  %3168 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %3169 = call float @dx.op.unary.f32(i32 84, float %26)  ; DerivCoarseY(value)
  %3170 = call float @dx.op.unary.f32(i32 84, float %27)  ; DerivCoarseY(value)
  %3171 = fadd fast float %3165, %25
  %3172 = fadd fast float %3166, %26
  %3173 = fadd fast float %3167, %27
  %3174 = fadd fast float %3168, %25
  %3175 = fadd fast float %3169, %26
  %3176 = fadd fast float %3170, %27
  %3177 = mul i32 %24, 48
  %3178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = add i32 %3177, 16
  %3183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.ResRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.ResRet.f32 %3183, 2
  %3187 = add i32 %3177, 32
  %3188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.ResRet.f32 %3188, 2
  %3192 = extractvalue %dx.types.ResRet.f32 %3188, 3
  %3193 = bitcast float %3192 to i32
  %3194 = fmul fast float %3179, %25
  %3195 = fmul fast float %3180, %26
  %3196 = fmul fast float %3181, %27
  %3197 = fsub fast float %3194, %3184
  %3198 = fsub fast float %3195, %3185
  %3199 = fsub fast float %3196, %3186
  %3200 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3201 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3202 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  %3203 = fmul fast float %3200, %3189
  %3204 = fmul fast float %3201, %3190
  %3205 = fmul fast float %3202, %3191
  %3206 = fadd fast float %3189, -1.000000e+00
  %3207 = fadd fast float %3190, -1.000000e+00
  %3208 = fadd fast float %3191, -1.000000e+00
  %3209 = call float @dx.op.unary.f32(i32 27, float %3203)  ; Round_ni(value)
  %3210 = call float @dx.op.unary.f32(i32 27, float %3204)  ; Round_ni(value)
  %3211 = call float @dx.op.unary.f32(i32 27, float %3205)  ; Round_ni(value)
  %3212 = call float @dx.op.binary.f32(i32 36, float %3209, float %3206)  ; FMin(a,b)
  %3213 = call float @dx.op.binary.f32(i32 36, float %3210, float %3207)  ; FMin(a,b)
  %3214 = call float @dx.op.binary.f32(i32 36, float %3211, float %3208)  ; FMin(a,b)
  %3215 = fmul fast float %3214, %3190
  %3216 = fadd fast float %3215, %3213
  %3217 = fmul fast float %3216, %3189
  %3218 = fadd fast float %3217, %3212
  %3219 = fptosi float %3218 to i32
  %3220 = add nsw i32 %3219, %3193
  %3221 = shl nsw i32 %3220, 2
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 16
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3647, label %3226

; <label>:3226                                    ; preds = %3164
  br label %3227

; <label>:3227                                    ; preds = %3348, %3226
  %3228 = phi i32 [ %3250, %3348 ], [ %3224, %3226 ]
  %3229 = phi float [ %3349, %3348 ], [ 0.000000e+00, %3226 ]
  %3230 = phi float [ %3350, %3348 ], [ %3134, %3226 ]
  %3231 = phi float [ %3351, %3348 ], [ %3132, %3226 ]
  %3232 = phi float [ %3352, %3348 ], [ 0.000000e+00, %3226 ]
  %3233 = phi float [ %3353, %3348 ], [ 0.000000e+00, %3226 ]
  %3234 = phi float [ %3354, %3348 ], [ %3126, %3226 ]
  %3235 = phi float [ %3355, %3348 ], [ %3127, %3226 ]
  %3236 = phi float [ %3356, %3348 ], [ %3128, %3226 ]
  %3237 = phi float [ %3357, %3348 ], [ %3160, %3226 ]
  %3238 = phi float [ %3358, %3348 ], [ %3161, %3226 ]
  %3239 = phi float [ %3359, %3348 ], [ %3162, %3226 ]
  %3240 = phi float [ %3360, %3348 ], [ %3131, %3226 ]
  %3241 = phi float [ %3361, %3348 ], [ %3130, %3226 ]
  %3242 = phi float [ %3362, %3348 ], [ 0.000000e+00, %3226 ]
  %3243 = phi float [ %3363, %3348 ], [ %3129, %3226 ]
  %3244 = phi float [ %3364, %3348 ], [ %3123, %3226 ]
  %3245 = phi float [ %3365, %3348 ], [ %3124, %3226 ]
  %3246 = phi float [ %3366, %3348 ], [ %3125, %3226 ]
  %3247 = shl nuw nsw i32 %3228, 2
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = lshr i32 %3249, 16
  %3251 = shl i32 %3249, 8
  %3252 = and i32 %3251, 16776960
  %3253 = or i32 %3252, 48
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = or i32 %3252, 64
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.i32 %3259, 1
  %3262 = or i32 %3252, 80
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 2
  %3265 = extractvalue %dx.types.ResRet.f32 %3263, 3
  %3266 = or i32 %3252, 96
  %3267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3272 = or i32 %3252, 112
  %3273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 2
  %3275 = or i32 %3252, 128
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3280 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3281 = or i32 %3252, 144
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3287 = or i32 %3252, 160
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.ResRet.f32 %3288, 3
  %3293 = or i32 %3252, 192
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = or i32 %3252, 208
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = or i32 %3252, 248
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = extractvalue %dx.types.ResRet.f32 %3303, 3
  %3308 = call float @dx.op.dot4.f32(i32 56, float %3304, float %3305, float %3306, float %3307, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3309 = or i32 %3252, 16
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3316 = or i32 %3252, 32
  %3317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = extractvalue %dx.types.ResRet.f32 %3317, 3
  %3322 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %25, float %26, float %27, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3323 = call float @dx.op.unary.f32(i32 27, float %3308)  ; Round_ni(value)
  %3324 = call float @dx.op.unary.f32(i32 6, float %3323)  ; FAbs(value)
  %3325 = call float @dx.op.unary.f32(i32 27, float %3315)  ; Round_ni(value)
  %3326 = call float @dx.op.unary.f32(i32 6, float %3325)  ; FAbs(value)
  %3327 = call float @dx.op.unary.f32(i32 6, float %3322)  ; FAbs(value)
  %3328 = call float @dx.op.unary.f32(i32 27, float %3327)  ; Round_ni(value)
  %3329 = fadd fast float %3326, %3324
  %3330 = fadd fast float %3329, %3328
  %3331 = fcmp fast oeq float %3330, 0.000000e+00
  %3332 = call float @dx.op.dot4.f32(i32 56, float %3304, float %3305, float %3306, float %3307, float %3171, float %3172, float %3173, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3333 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %3171, float %3172, float %3173, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3334 = call float @dx.op.dot4.f32(i32 56, float %3304, float %3305, float %3306, float %3307, float %3174, float %3175, float %3176, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3335 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %3174, float %3175, float %3176, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3336 = fsub fast float %3332, %3308
  %3337 = fsub fast float %3334, %3308
  %3338 = fsub fast float %3333, %3315
  %3339 = fsub fast float %3335, %3315
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3256, float %3257, float %81, float %83, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3343 = fadd fast float %3342, %3340
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3346 = fcmp fast ogt float %3344, %3345
  %3347 = and i1 %3331, %3346
  br i1 %3347, label %3368, label %3348

; <label>:3348                                    ; preds = %3633, %3451, %3368, %3227
  %3349 = phi float [ %3229, %3368 ], [ %3454, %3451 ], [ %3454, %3633 ], [ %3229, %3227 ]
  %3350 = phi float [ %3230, %3368 ], [ %3230, %3451 ], [ %3608, %3633 ], [ %3230, %3227 ]
  %3351 = phi float [ %3231, %3368 ], [ %3231, %3451 ], [ %3606, %3633 ], [ %3231, %3227 ]
  %3352 = phi float [ %3232, %3368 ], [ %3232, %3451 ], [ %3578, %3633 ], [ %3232, %3227 ]
  %3353 = phi float [ %3233, %3368 ], [ %3233, %3451 ], [ %3576, %3633 ], [ %3233, %3227 ]
  %3354 = phi float [ %3234, %3368 ], [ %3234, %3451 ], [ %3643, %3633 ], [ %3234, %3227 ]
  %3355 = phi float [ %3235, %3368 ], [ %3235, %3451 ], [ %3644, %3633 ], [ %3235, %3227 ]
  %3356 = phi float [ %3236, %3368 ], [ %3236, %3451 ], [ %3645, %3633 ], [ %3236, %3227 ]
  %3357 = phi float [ %3237, %3368 ], [ %3237, %3451 ], [ %3557, %3633 ], [ %3237, %3227 ]
  %3358 = phi float [ %3238, %3368 ], [ %3238, %3451 ], [ %3558, %3633 ], [ %3238, %3227 ]
  %3359 = phi float [ %3239, %3368 ], [ %3239, %3451 ], [ %3559, %3633 ], [ %3239, %3227 ]
  %3360 = phi float [ %3240, %3368 ], [ %3240, %3451 ], [ %3586, %3633 ], [ %3240, %3227 ]
  %3361 = phi float [ %3241, %3368 ], [ %3241, %3451 ], [ %3583, %3633 ], [ %3241, %3227 ]
  %3362 = phi float [ %3242, %3368 ], [ %3242, %3451 ], [ %3580, %3633 ], [ %3242, %3227 ]
  %3363 = phi float [ %3243, %3368 ], [ %3243, %3451 ], [ %3574, %3633 ], [ %3243, %3227 ]
  %3364 = phi float [ %3244, %3368 ], [ %3244, %3451 ], [ %3569, %3633 ], [ %3244, %3227 ]
  %3365 = phi float [ %3245, %3368 ], [ %3245, %3451 ], [ %3570, %3633 ], [ %3245, %3227 ]
  %3366 = phi float [ %3246, %3368 ], [ %3246, %3451 ], [ %3571, %3633 ], [ %3246, %3227 ]
  %3367 = icmp eq i32 %3250, 0
  br i1 %3367, label %3646, label %3227

; <label>:3368                                    ; preds = %3227
  %3369 = extractvalue %dx.types.ResRet.f32 %3254, 3
  %3370 = extractvalue %dx.types.ResRet.f32 %3273, 3
  %3371 = extractvalue %dx.types.ResRet.f32 %3273, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3273, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3263, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3375 = extractvalue %dx.types.ResRet.i32 %3259, 3
  %3376 = extractvalue %dx.types.ResRet.i32 %3259, 2
  %3377 = bitcast float %3369 to i32
  %3378 = add i32 %3375, 0
  %3379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3381 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3379, %dx.types.Handle %3380, float %3308, float %3315, float undef, float undef, i32 0, i32 0, i32 undef, float %3336, float %3338, float undef, float %3337, float %3339, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = fmul fast float %3382, %3374
  %3384 = fadd fast float %3383, %3373
  %3385 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3386 = fmul fast float %3308, %3268
  %3387 = call float @dx.op.tertiary.f32(i32 46, float %3269, float %3315, float %3386)  ; FMad(a,b,c)
  %3388 = fadd fast float %3387, %3372
  %3389 = fmul fast float %3308, %3270
  %3390 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3315, float %3389)  ; FMad(a,b,c)
  %3391 = fadd fast float %3390, %3371
  %3392 = fmul fast float %3336, %3268
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3269, float %3338, float %3392)  ; FMad(a,b,c)
  %3394 = fmul fast float %3336, %3270
  %3395 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3338, float %3394)  ; FMad(a,b,c)
  %3396 = fmul fast float %3337, %3268
  %3397 = call float @dx.op.tertiary.f32(i32 46, float %3269, float %3339, float %3396)  ; FMad(a,b,c)
  %3398 = fmul fast float %3337, %3270
  %3399 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3339, float %3398)  ; FMad(a,b,c)
  %3400 = add i32 %3376, 0
  %3401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3400, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3401, %dx.types.Handle %3380, float %3388, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float %3393, float %3395, float undef, float %3397, float %3399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = and i32 %3377, 1024
  %3405 = icmp ne i32 %3404, 0
  %3406 = fcmp fast ogt float %3403, 0x3FE0101020000000
  %3407 = uitofp i1 %3406 to float
  %3408 = select i1 %3405, float %3407, float %3403
  %3409 = and i32 %3377, 8192
  %3410 = icmp ne i32 %3409, 0
  %3411 = select i1 %3410, float %3370, float 1.000000e+00
  %3412 = fmul fast float %3308, 2.000000e+00
  %3413 = fadd fast float %3412, -1.000000e+00
  %3414 = call float @dx.op.unary.f32(i32 6, float %3413)  ; FAbs(value)
  %3415 = fmul fast float %3414, %3301
  %3416 = fsub fast float %3415, %3301
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = fmul fast float %3315, 2.000000e+00
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3421 = fmul fast float %3420, %3302
  %3422 = fsub fast float %3421, %3302
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3424 = fmul fast float %3327, %3264
  %3425 = fsub fast float %3424, %3264
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fmul fast float %3385, %3411
  %3428 = fmul fast float %3427, %3382
  %3429 = fmul fast float %3428, %3417
  %3430 = fmul fast float %3429, %3408
  %3431 = fmul fast float %3430, %3423
  %3432 = fmul fast float %3431, %3426
  %3433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.f32 %3433, 1
  %3435 = extractvalue %dx.types.CBufRet.f32 %3433, 0
  %3436 = fsub fast float %3344, %3435
  %3437 = fmul fast float %3436, %3434
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fmul fast float %3432, %3265
  %3440 = fadd fast float %3432, %3265
  %3441 = fmul fast float %3440, %3274
  %3442 = fsub fast float %3441, %3274
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = and i32 %3377, 128
  %3445 = icmp ne i32 %3444, 0
  %3446 = select i1 %3445, float %3443, float %3439
  %3447 = fmul fast float %3446, %3438
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = fcmp fast ugt float %3447, %3449
  br i1 %3450, label %3451, label %3348

; <label>:3451                                    ; preds = %3368
  %3452 = select i1 %3410, float %3447, float 0.000000e+00
  %3453 = fadd fast float %3452, %3229
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  br i1 %3410, label %3348, label %3455

; <label>:3455                                    ; preds = %3451
  %3456 = and i32 %3377, 4
  %3457 = and i32 %3377, 8
  %3458 = add i32 %3260, 0
  %3459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3458, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3461 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3459, %dx.types.Handle %3460, float %3388, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float %3393, float %3395, float undef, float %3397, float %3399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = bitcast float %3286 to i32
  %3467 = and i32 %3466, 255
  %3468 = uitofp i32 %3467 to float
  %3469 = lshr i32 %3466, 8
  %3470 = and i32 %3469, 255
  %3471 = uitofp i32 %3470 to float
  %3472 = fmul fast float %3465, %3468
  %3473 = fadd fast float %3472, %3471
  %3474 = fmul fast float %3473, 0x3F70101000000000
  %3475 = add i32 %3261, 0
  %3476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3477 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3476, %dx.types.Handle %3460, float %3388, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float %3393, float %3395, float undef, float %3397, float %3399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3481 = extractvalue %dx.types.ResRet.f32 %3477, 3
  %3482 = bitcast float %3280 to i32
  %3483 = and i32 %3482, 255
  %3484 = uitofp i32 %3483 to float
  %3485 = lshr i32 %3482, 8
  %3486 = and i32 %3485, 255
  %3487 = uitofp i32 %3486 to float
  %3488 = lshr i32 %3482, 16
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = fmul fast float %3490, 0x3F70101000000000
  %3492 = fmul fast float %3478, %3484
  %3493 = fadd fast float %3492, %3487
  %3494 = fmul fast float %3493, 0x3F70101000000000
  %3495 = fadd fast float %3479, -5.000000e-01
  %3496 = fadd fast float %3481, -5.000000e-01
  %3497 = fmul fast float %3495, %3491
  %3498 = fmul fast float %3496, %3491
  %3499 = fadd fast float %3497, 5.000000e-01
  %3500 = fadd fast float %3498, 5.000000e-01
  %3501 = fmul fast float %3462, %3289
  %3502 = fmul fast float %3463, %3290
  %3503 = fmul fast float %3464, %3291
  %3504 = fmul fast float %3499, 2.000000e+00
  %3505 = fadd fast float %3504, -1.000000e+00
  %3506 = fmul fast float %3500, 2.000000e+00
  %3507 = fadd fast float %3506, -1.000000e+00
  %3508 = fadd fast float %3505, %3507
  %3509 = fmul fast float %3508, 5.000000e-01
  %3510 = fsub fast float %3505, %3507
  %3511 = fmul fast float %3510, 5.000000e-01
  %3512 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3515 = fsub fast float %3513, %3514
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3511, float %3515, float %3509, float %3511, float %3515)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = call float @dx.op.unary.f32(i32 25, float %3516)  ; Rsqrt(value)
  %3518 = fmul fast float %3509, %3517
  %3519 = fmul fast float %3511, %3517
  %3520 = fmul fast float %3517, %3515
  %3521 = fmul fast float %3520, %3255
  %3522 = fmul fast float %3520, %3256
  %3523 = fmul fast float %3520, %3257
  %3524 = fmul fast float %3518, %3277
  %3525 = fmul fast float %3518, %3278
  %3526 = fmul fast float %3518, %3279
  %3527 = fadd fast float %3524, %3521
  %3528 = fadd fast float %3525, %3522
  %3529 = fadd fast float %3526, %3523
  %3530 = fmul fast float %3519, %3283
  %3531 = fmul fast float %3519, %3284
  %3532 = fmul fast float %3519, %3285
  %3533 = fadd fast float %3527, %3530
  %3534 = fadd fast float %3528, %3531
  %3535 = fadd fast float %3529, %3532
  %3536 = call float @dx.op.dot3.f32(i32 55, float %3533, float %3534, float %3535, float %3533, float %3534, float %3535)  ; Dot3(ax,ay,az,bx,by,bz)
  %3537 = call float @dx.op.unary.f32(i32 25, float %3536)  ; Rsqrt(value)
  %3538 = fmul fast float %3533, %3537
  %3539 = fmul fast float %3534, %3537
  %3540 = fmul fast float %3535, %3537
  %3541 = icmp ne i32 %3457, 0
  %3542 = select i1 %3541, float 1.000000e+00, float 0.000000e+00
  %3543 = fmul fast float %3447, %3542
  %3544 = and i32 %3377, 1
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3546, label %3550

; <label>:3546                                    ; preds = %3455
  %3547 = fsub fast float %3538, %3237
  %3548 = fsub fast float %3539, %3238
  %3549 = fsub fast float %3540, %3239
  br label %3550

; <label>:3550                                    ; preds = %3546, %3455
  %3551 = phi float [ %3547, %3546 ], [ %3538, %3455 ]
  %3552 = phi float [ %3548, %3546 ], [ %3539, %3455 ]
  %3553 = phi float [ %3549, %3546 ], [ %3540, %3455 ]
  %3554 = fmul float %3553, %3543
  %3555 = fmul float %3552, %3543
  %3556 = fmul float %3551, %3543
  %3557 = fadd fast float %3556, %3237
  %3558 = fadd fast float %3555, %3238
  %3559 = fadd fast float %3554, %3239
  %3560 = icmp ne i32 %3456, 0
  %3561 = select i1 %3560, float 1.000000e+00, float 0.000000e+00
  %3562 = fmul fast float %3447, %3561
  %3563 = fsub fast float %3501, %3244
  %3564 = fsub fast float %3502, %3245
  %3565 = fsub fast float %3503, %3246
  %3566 = fmul fast float %3563, %3562
  %3567 = fmul fast float %3564, %3562
  %3568 = fmul fast float %3565, %3562
  %3569 = fadd fast float %3566, %3244
  %3570 = fadd fast float %3567, %3245
  %3571 = fadd fast float %3568, %3246
  %3572 = fsub fast float %3474, %3243
  %3573 = fmul fast float %3572, %3562
  %3574 = fadd fast float %3573, %3243
  %3575 = fmul fast float %3562, %3233
  %3576 = fsub fast float %3233, %3575
  %3577 = fmul fast float %3562, %3232
  %3578 = fsub fast float %3232, %3577
  %3579 = fadd fast float %3447, %3242
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3581 = fsub fast float %3494, %3241
  %3582 = fmul fast float %3581, %3543
  %3583 = fadd fast float %3582, %3241
  %3584 = fsub fast float %3480, %3240
  %3585 = fmul fast float %3584, %3543
  %3586 = fadd fast float %3585, %3240
  %3587 = call float @dx.op.dot3.f32(i32 55, float %3501, float %3502, float %3503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = fmul fast float %3590, %3587
  %3592 = fadd fast float %3591, %3589
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = bitcast float %3292 to i32
  %3595 = and i32 %3594, 65535
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = lshr i32 %3594, 16
  %3598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3597)  ; LegacyF16ToF32(value)
  %3599 = fcmp fast oge float %3596, 0.000000e+00
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = select i1 %3599, float %3596, float %3601
  %3603 = fadd fast float %3602, %3598
  %3604 = fsub fast float %3593, %3231
  %3605 = fmul fast float %3604, %3447
  %3606 = fadd fast float %3605, %3231
  %3607 = fmul fast float %3603, %3447
  %3608 = call float @dx.op.binary.f32(i32 35, float %3230, float %3607)  ; FMax(a,b)
  %3609 = and i32 %3377, 16
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3633, label %3611

; <label>:3611                                    ; preds = %3550
  %3612 = bitcast float %3298 to i32
  %3613 = add i32 %3295, 0
  %3614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3614, %dx.types.Handle %3460, float %3388, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float %3393, float %3395, float undef, float %3397, float %3399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = and i32 %3612, 65535
  %3620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3619)  ; LegacyF16ToF32(value)
  %3621 = fmul fast float %3616, %3289
  %3622 = fmul fast float %3617, %3290
  %3623 = fmul fast float %3618, %3291
  %3624 = and i32 %3377, 16384
  %3625 = icmp ne i32 %3624, 0
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = select i1 %3625, float %3627, float 1.000000e+00
  %3629 = fmul fast float %3628, %3620
  %3630 = fmul fast float %3621, %3629
  %3631 = fmul fast float %3622, %3629
  %3632 = fmul fast float %3623, %3629
  br label %3633

; <label>:3633                                    ; preds = %3611, %3550
  %3634 = phi float [ %3630, %3611 ], [ 0.000000e+00, %3550 ]
  %3635 = phi float [ %3631, %3611 ], [ 0.000000e+00, %3550 ]
  %3636 = phi float [ %3632, %3611 ], [ 0.000000e+00, %3550 ]
  %3637 = fsub fast float %3634, %3234
  %3638 = fsub fast float %3635, %3235
  %3639 = fsub fast float %3636, %3236
  %3640 = fmul fast float %3637, %3447
  %3641 = fmul fast float %3638, %3447
  %3642 = fmul fast float %3639, %3447
  %3643 = fadd fast float %3640, %3234
  %3644 = fadd fast float %3641, %3235
  %3645 = fadd fast float %3642, %3236
  br label %3348

; <label>:3646                                    ; preds = %3348
  br label %3647

; <label>:3647                                    ; preds = %3646, %3164
  %3648 = phi float [ 0.000000e+00, %3164 ], [ %3349, %3646 ]
  %3649 = phi float [ %3134, %3164 ], [ %3350, %3646 ]
  %3650 = phi float [ %3132, %3164 ], [ %3351, %3646 ]
  %3651 = phi float [ 0.000000e+00, %3164 ], [ %3352, %3646 ]
  %3652 = phi float [ 0.000000e+00, %3164 ], [ %3353, %3646 ]
  %3653 = phi float [ %3126, %3164 ], [ %3354, %3646 ]
  %3654 = phi float [ %3127, %3164 ], [ %3355, %3646 ]
  %3655 = phi float [ %3128, %3164 ], [ %3356, %3646 ]
  %3656 = phi float [ %3160, %3164 ], [ %3357, %3646 ]
  %3657 = phi float [ %3161, %3164 ], [ %3358, %3646 ]
  %3658 = phi float [ %3162, %3164 ], [ %3359, %3646 ]
  %3659 = phi float [ %3131, %3164 ], [ %3360, %3646 ]
  %3660 = phi float [ %3130, %3164 ], [ %3361, %3646 ]
  %3661 = phi float [ 0.000000e+00, %3164 ], [ %3362, %3646 ]
  %3662 = phi float [ %3129, %3164 ], [ %3363, %3646 ]
  %3663 = phi float [ %3123, %3164 ], [ %3364, %3646 ]
  %3664 = phi float [ %3124, %3164 ], [ %3365, %3646 ]
  %3665 = phi float [ %3125, %3164 ], [ %3366, %3646 ]
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3656, float %3657, float %3658, float %3656, float %3657, float %3658)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = call float @dx.op.unary.f32(i32 25, float %3666)  ; Rsqrt(value)
  %3668 = fmul fast float %3667, %3656
  %3669 = fmul fast float %3667, %3657
  %3670 = fmul fast float %3667, %3658
  %3671 = fadd fast float %3661, %912
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = call float @dx.op.unary.f32(i32 25, float %3673)  ; Rsqrt(value)
  %3675 = fmul fast float %3674, %3668
  %3676 = fmul fast float %3674, %3669
  %3677 = fmul fast float %3674, %3670
  br label %3678

; <label>:3678                                    ; preds = %3647, %3120
  %3679 = phi float [ %3675, %3647 ], [ %3160, %3120 ]
  %3680 = phi float [ %3676, %3647 ], [ %3161, %3120 ]
  %3681 = phi float [ %3677, %3647 ], [ %3162, %3120 ]
  %3682 = phi float [ %3663, %3647 ], [ %3123, %3120 ]
  %3683 = phi float [ %3664, %3647 ], [ %3124, %3120 ]
  %3684 = phi float [ %3665, %3647 ], [ %3125, %3120 ]
  %3685 = phi float [ %3653, %3647 ], [ %3126, %3120 ]
  %3686 = phi float [ %3654, %3647 ], [ %3127, %3120 ]
  %3687 = phi float [ %3655, %3647 ], [ %3128, %3120 ]
  %3688 = phi float [ %3662, %3647 ], [ %3129, %3120 ]
  %3689 = phi float [ %3672, %3647 ], [ %912, %3120 ]
  %3690 = phi float [ %3660, %3647 ], [ %3130, %3120 ]
  %3691 = phi float [ %3659, %3647 ], [ %3131, %3120 ]
  %3692 = phi float [ %3652, %3647 ], [ 0.000000e+00, %3120 ]
  %3693 = phi float [ %3651, %3647 ], [ 0.000000e+00, %3120 ]
  %3694 = phi float [ %3648, %3647 ], [ 0.000000e+00, %3120 ]
  %3695 = phi float [ %3649, %3647 ], [ %3134, %3120 ]
  %3696 = phi float [ %3650, %3647 ], [ %3132, %3120 ]
  %3697 = fadd fast float %3688, 0xBFB99999A0000000
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = fmul fast float %3698, 0x3FF1C71C80000000
  %3700 = call float @dx.op.binary.f32(i32 36, float %3688, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3701 = fsub fast float 1.000000e+00, %3699
  %3702 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3703 = fmul fast float %3702, %3682
  %3704 = fmul fast float %3702, %3683
  %3705 = fmul fast float %3702, %3684
  %3706 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3707 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3708 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3709 = fmul fast float %3699, %3682
  %3710 = fmul fast float %3699, %3683
  %3711 = fmul fast float %3699, %3684
  %3712 = fadd fast float %3709, %3700
  %3713 = fadd fast float %3710, %3700
  %3714 = fadd fast float %3711, %3700
  %3715 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3716 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3717 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3718 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 3
  %3721 = and i32 %3720, 8
  %3722 = icmp ne i32 %3721, 0
  %3723 = call float @dx.op.binary.f32(i32 35, float %3706, float %3682)  ; FMax(a,b)
  %3724 = call float @dx.op.binary.f32(i32 35, float %3707, float %3682)  ; FMax(a,b)
  %3725 = call float @dx.op.binary.f32(i32 35, float %3708, float %3682)  ; FMax(a,b)
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = select i1 %196, float %3682, float %3706
  %3728 = select i1 %196, float %3726, float %3707
  %3729 = select i1 %196, float 1.000000e+00, float %3708
  %3730 = select i1 %3722, float %3723, float %3727
  %3731 = select i1 %3722, float %3724, float %3728
  %3732 = select i1 %3722, float %3725, float %3729
  %3733 = and i32 %172, 3
  %3734 = select i1 %166, i32 %3733, i32 0
  %3735 = icmp eq i32 %3734, 1
  br i1 %3735, label %3736, label %3812

; <label>:3736                                    ; preds = %3678
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = fadd fast float %3738, %155
  %3741 = fadd fast float %3739, %156
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3745 = fsub fast float %3740, %3743
  %3746 = fsub fast float %3741, %3744
  %3747 = fmul fast float %3745, %3745
  %3748 = fmul fast float %3746, %3746
  %3749 = fadd fast float %3747, %3748
  %3750 = call float @dx.op.unary.f32(i32 24, float %3749)  ; Sqrt(value)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3752 = fcmp fast olt float %3750, %3751
  br i1 %3752, label %3753, label %3806

; <label>:3753                                    ; preds = %3736
  %3754 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3755 = fadd fast float %3754, %157
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3763 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3765 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3766 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3767 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3768 = fadd fast float %3765, %3740
  %3769 = fadd fast float %3766, %3741
  %3770 = fadd fast float %3755, %3767
  %3771 = fmul fast float %3768, %3757
  %3772 = call float @dx.op.tertiary.f32(i32 46, float %3769, float %3759, float %3771)  ; FMad(a,b,c)
  %3773 = call float @dx.op.tertiary.f32(i32 46, float %3770, float %3761, float %3772)  ; FMad(a,b,c)
  %3774 = fmul fast float %3768, %3762
  %3775 = call float @dx.op.tertiary.f32(i32 46, float %3769, float %3763, float %3774)  ; FMad(a,b,c)
  %3776 = call float @dx.op.tertiary.f32(i32 46, float %3770, float %3764, float %3775)  ; FMad(a,b,c)
  %3777 = fsub fast float %3773, %3765
  %3778 = fsub fast float %3776, %3766
  %3779 = fsub fast float %3777, %3743
  %3780 = fadd fast float %3779, %3751
  %3781 = fsub fast float %3778, %3744
  %3782 = fadd fast float %3781, %3751
  %3783 = extractvalue %dx.types.CBufRet.f32 %3742, 3
  %3784 = fmul fast float %3780, %3783
  %3785 = fmul fast float %3782, %3783
  %3786 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3788 = fsub fast float 1.000000e+00, %3786
  %3789 = fsub fast float 1.000000e+00, %3787
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %3788, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = fcmp fast ugt float %3791, 0.000000e+00
  br i1 %3792, label %3793, label %3806

; <label>:3793                                    ; preds = %3753
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3796 = fmul fast float %3795, %3791
  %3797 = extractvalue %dx.types.CBufRet.f32 %3794, 3
  %3798 = fadd fast float %3797, %3796
  %3799 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3800 = fadd fast float %3798, %3767
  %3801 = fmul fast float %3773, %3761
  %3802 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3764, float %3801)  ; FMad(a,b,c)
  %3803 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3799, float %3802)  ; FMad(a,b,c)
  %3804 = fsub fast float %3803, %3767
  %3805 = fsub fast float %3804, %3754
  br label %3806

; <label>:3806                                    ; preds = %3793, %3753, %3736
  %3807 = phi i1 [ true, %3793 ], [ false, %3753 ], [ false, %3736 ]
  %3808 = phi float [ %3805, %3793 ], [ -1.310720e+05, %3753 ], [ -1.310720e+05, %3736 ]
  %3809 = fsub fast float %3808, %157
  %3810 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3811 = select i1 %3807, float %3810, float 1.000000e+00
  br label %3812

; <label>:3812                                    ; preds = %3806, %3678
  %3813 = phi float [ %3811, %3806 ], [ 0.000000e+00, %3678 ]
  %3814 = icmp eq i32 %3734, 3
  %3815 = select i1 %3814, float 1.000000e+00, float %3813
  %3816 = call float @dx.op.binary.f32(i32 35, float %3694, float %3815)  ; FMax(a,b)
  %3817 = fcmp fast olt float %3815, 1.000000e+00
  %3818 = fcmp uge float %38, 0.000000e+00
  %3819 = and i1 %3818, %3817
  br i1 %3819, label %3820, label %3830

; <label>:3820                                    ; preds = %3812
  %3821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %38, float %39, float %40, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = fadd fast float %3822, %3816
  %3826 = fcmp ule float %37, 0.000000e+00
  %3827 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = select i1 %3826, float %3827, float 1.000000e+00
  %3829 = fmul fast float %3828, %3824
  br label %3830

; <label>:3830                                    ; preds = %3820, %3812
  %3831 = phi float [ %3825, %3820 ], [ %3816, %3812 ]
  %3832 = phi float [ %3823, %3820 ], [ 0.000000e+00, %3812 ]
  %3833 = phi float [ %3829, %3820 ], [ 0.000000e+00, %3812 ]
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3836 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3837 = fcmp fast une float %3835, 0.000000e+00
  %3838 = fcmp fast une float %3836, 0.000000e+00
  %3839 = or i1 %3837, %3838
  br i1 %3839, label %3840, label %4399

; <label>:3840                                    ; preds = %3830
  br i1 %3837, label %3841, label %4114

; <label>:3841                                    ; preds = %3840
  %3842 = call float @dx.op.unary.f32(i32 23, float %3691)  ; Log(value)
  %3843 = fmul fast float %3842, 4.000000e+00
  %3844 = call float @dx.op.unary.f32(i32 21, float %3843)  ; Exp(value)
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = fmul fast float %3846, %25
  %3848 = fmul fast float %3846, %26
  %3849 = fmul fast float %3846, %27
  %3850 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %3851 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %3852 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %3853 = call float @dx.op.unary.f32(i32 23, float %3850)  ; Log(value)
  %3854 = call float @dx.op.unary.f32(i32 23, float %3851)  ; Log(value)
  %3855 = call float @dx.op.unary.f32(i32 23, float %3852)  ; Log(value)
  %3856 = fmul fast float %3853, 4.000000e+00
  %3857 = fmul fast float %3854, 4.000000e+00
  %3858 = fmul fast float %3855, 4.000000e+00
  %3859 = call float @dx.op.unary.f32(i32 21, float %3856)  ; Exp(value)
  %3860 = call float @dx.op.unary.f32(i32 21, float %3857)  ; Exp(value)
  %3861 = call float @dx.op.unary.f32(i32 21, float %3858)  ; Exp(value)
  %3862 = fadd fast float %3860, %3859
  %3863 = fadd fast float %3862, %3861
  %3864 = fdiv fast float 1.000000e+00, %3863
  %3865 = fmul fast float %3864, %3859
  %3866 = fcmp fast ogt float %34, 0.000000e+00
  %3867 = fcmp fast ogt float %35, 0.000000e+00
  %3868 = fcmp fast ogt float %36, 0.000000e+00
  %3869 = fcmp fast olt float %34, 0.000000e+00
  %3870 = fcmp fast olt float %35, 0.000000e+00
  %3871 = fcmp fast olt float %36, 0.000000e+00
  %3872 = zext i1 %3866 to i32
  %3873 = zext i1 %3867 to i32
  %3874 = zext i1 %3868 to i32
  %3875 = zext i1 %3869 to i32
  %3876 = zext i1 %3870 to i32
  %3877 = zext i1 %3871 to i32
  %3878 = sub nsw i32 %3872, %3875
  %3879 = sub nsw i32 %3873, %3876
  %3880 = sub nsw i32 %3874, %3877
  %3881 = call float @dx.op.unary.f32(i32 83, float %3847)  ; DerivCoarseX(value)
  %3882 = call float @dx.op.unary.f32(i32 83, float %3848)  ; DerivCoarseX(value)
  %3883 = call float @dx.op.unary.f32(i32 83, float %3849)  ; DerivCoarseX(value)
  %3884 = call float @dx.op.unary.f32(i32 84, float %3847)  ; DerivCoarseY(value)
  %3885 = call float @dx.op.unary.f32(i32 84, float %3848)  ; DerivCoarseY(value)
  %3886 = call float @dx.op.unary.f32(i32 84, float %3849)  ; DerivCoarseY(value)
  %3887 = fcmp fast ole float %207, %3865
  %3888 = fmul fast float %3864, %3862
  %3889 = fcmp fast ole float %207, %3888
  %3890 = select i1 %3889, float %3849, float %3847
  %3891 = select i1 %3889, float %3847, float %3848
  %3892 = select i1 %3887, float %3848, float %3890
  %3893 = select i1 %3887, float %3849, float %3891
  %3894 = select i1 %3889, float %3883, float %3881
  %3895 = select i1 %3889, float %3881, float %3882
  %3896 = select i1 %3887, float %3882, float %3894
  %3897 = select i1 %3887, float %3883, float %3895
  %3898 = select i1 %3889, float %3886, float %3884
  %3899 = select i1 %3889, float %3884, float %3885
  %3900 = select i1 %3887, float %3885, float %3898
  %3901 = select i1 %3887, float %3886, float %3899
  %3902 = call float @dx.op.unary.f32(i32 27, float %3892)  ; Round_ni(value)
  %3903 = call float @dx.op.unary.f32(i32 27, float %3893)  ; Round_ni(value)
  %3904 = fptosi float %3902 to i32
  %3905 = fptosi float %3903 to i32
  %3906 = xor i32 %3905, %3904
  %3907 = sitofp i32 %3906 to float
  %3908 = fptosi float %3907 to i32
  %3909 = sitofp i32 %3908 to float
  %3910 = fmul fast float %3909, 0x3FE3C6EF40000000
  %3911 = frem fast float %3902, 2.560000e+02
  %3912 = frem fast float %3903, 2.560000e+02
  %3913 = fptoui float %3911 to i32
  %3914 = fptoui float %3912 to i32
  %3915 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %3913, i32 %3914, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = fadd fast float %3916, %3910
  %3920 = fadd fast float %3917, %3910
  %3921 = fadd fast float %3918, %3910
  %3922 = call float @dx.op.unary.f32(i32 22, float %3919)  ; Frc(value)
  %3923 = call float @dx.op.unary.f32(i32 22, float %3920)  ; Frc(value)
  %3924 = call float @dx.op.unary.f32(i32 22, float %3921)  ; Frc(value)
  %3925 = fmul fast float %3924, 0x401921FB60000000
  %3926 = call float @dx.op.unary.f32(i32 13, float %3925)  ; Sin(value)
  %3927 = call float @dx.op.unary.f32(i32 12, float %3925)  ; Cos(value)
  %3928 = fsub fast float -0.000000e+00, %3927
  %3929 = fmul fast float %3927, %3892
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3926, float %3893, float %3929)  ; FMad(a,b,c)
  %3931 = fmul fast float %3926, %3892
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3893, float %3931)  ; FMad(a,b,c)
  %3933 = fadd fast float %3930, %3922
  %3934 = fadd fast float %3932, %3923
  %3935 = extractvalue %dx.types.CBufRet.f32 %3845, 3
  %3936 = bitcast float %3935 to i32
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3976, label %3938

; <label>:3938                                    ; preds = %3841
  %3939 = add i32 %3936, 0
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3940, %dx.types.Handle %69, float %3933, float %3934, float undef, float undef, i32 0, i32 0, i32 undef, float %3896, float %3897, float undef, float %3900, float %3901, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3945 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3946 = fsub fast float 1.000000e+00, %3835
  %3947 = call float @dx.op.binary.f32(i32 35, float %3946, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3948 = bitcast float %3835 to i32
  %3949 = sitofp i32 %3948 to float
  %3950 = fadd fast float %3949, 0xC1CFBF8940000000
  %3951 = fmul fast float %3945, %3950
  %3952 = fadd fast float %3951, 0x41CFBF8940000000
  %3953 = fptosi float %3952 to i32
  %3954 = bitcast i32 %3953 to float
  %3955 = bitcast float %3947 to i32
  %3956 = sitofp i32 %3955 to float
  %3957 = fadd fast float %3956, 0xC1CFBF8940000000
  %3958 = fmul fast float %3957, %3945
  %3959 = fadd fast float %3958, 0x41CFBF8940000000
  %3960 = fptosi float %3959 to i32
  %3961 = bitcast i32 %3960 to float
  %3962 = fmul fast float %3954, %3944
  %3963 = fmul fast float %3961, %3944
  %3964 = fsub fast float %3947, %3962
  %3965 = fadd fast float %3963, %3947
  %3966 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3967 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3968 = fsub fast float %3942, %3966
  %3969 = fsub fast float %3967, %3966
  %3970 = bitcast float %3969 to i32
  %3971 = sub nsw i32 2129859010, %3970
  %3972 = bitcast i32 %3971 to float
  %3973 = fmul fast float %3972, %3968
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fcmp fast olt float %3974, 0x3F70101020000000
  br i1 %3975, label %4114, label %3976

; <label>:3976                                    ; preds = %3938, %3841
  %3977 = phi float [ %3974, %3938 ], [ %3835, %3841 ]
  %3978 = fmul fast float %3977, %3844
  %3979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.i32 %3979, 1
  %3981 = extractvalue %dx.types.CBufRet.i32 %3979, 0
  %3982 = add i32 %3981, 0
  %3983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3984 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3983, %dx.types.Handle %68, float %3933, float %3934, float undef, float undef, i32 0, i32 0, i32 undef, float %3896, float %3897, float undef, float %3900, float %3901, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = extractvalue %dx.types.ResRet.f32 %3984, 3
  %3989 = and i32 %3980, 255
  %3990 = uitofp i32 %3989 to float
  %3991 = lshr i32 %3980, 8
  %3992 = and i32 %3991, 255
  %3993 = uitofp i32 %3992 to float
  %3994 = fmul fast float %3988, %3990
  %3995 = fadd fast float %3994, %3993
  %3996 = fmul fast float %3995, 0x3F70101000000000
  %3997 = fadd fast float %3996, 0xBFB99999A0000000
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3998, 0x3FF1C71C80000000
  %4000 = call float @dx.op.binary.f32(i32 36, float %3996, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4001 = fsub fast float 1.000000e+00, %3999
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = fmul fast float %4002, %3985
  %4004 = fmul fast float %4002, %3986
  %4005 = fmul fast float %4002, %3987
  %4006 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4007 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4008 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4009 = fmul fast float %3999, %3985
  %4010 = fmul fast float %3999, %3986
  %4011 = fmul fast float %3999, %3987
  %4012 = fadd fast float %4009, %4000
  %4013 = fadd fast float %4010, %4000
  %4014 = fadd fast float %4011, %4000
  %4015 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4016 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4017 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.i32 %4018, 3
  %4020 = extractvalue %dx.types.CBufRet.i32 %4018, 2
  %4021 = add i32 %4020, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %68, float %3933, float %3934, float undef, float undef, i32 0, i32 0, i32 undef, float %3896, float %3897, float undef, float %3900, float %3901, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = and i32 %4019, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = lshr i32 %4019, 8
  %4031 = and i32 %4030, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = lshr i32 %4019, 16
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = fmul fast float %4035, 0x3F70101000000000
  %4037 = fmul fast float %4024, %4029
  %4038 = fadd fast float %4037, %4032
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = fadd fast float %4025, -5.000000e-01
  %4041 = fadd fast float %4027, -5.000000e-01
  %4042 = fmul fast float %4040, %4036
  %4043 = fmul fast float %4041, %4036
  %4044 = fadd fast float %4042, 5.000000e-01
  %4045 = fadd fast float %4043, 5.000000e-01
  %4046 = fmul fast float %4044, 2.000000e+00
  %4047 = fadd fast float %4046, -1.000000e+00
  %4048 = fmul fast float %4045, 2.000000e+00
  %4049 = fadd fast float %4048, -1.000000e+00
  %4050 = fadd fast float %4047, %4049
  %4051 = fmul fast float %4050, 5.000000e-01
  %4052 = fsub fast float %4047, %4049
  %4053 = fmul fast float %4052, 5.000000e-01
  %4054 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4055 = fsub fast float 1.000000e+00, %4054
  %4056 = call float @dx.op.unary.f32(i32 6, float %4053)  ; FAbs(value)
  %4057 = fsub fast float %4055, %4056
  %4058 = call float @dx.op.dot3.f32(i32 55, float %4051, float %4053, float %4057, float %4051, float %4053, float %4057)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = call float @dx.op.unary.f32(i32 25, float %4058)  ; Rsqrt(value)
  %4060 = fmul fast float %4051, %4059
  %4061 = fmul fast float %4053, %4059
  %4062 = select i1 %3889, i32 %3879, i32 %3880
  %4063 = select i1 %3887, i32 %3878, i32 %4062
  %4064 = sitofp i32 %4063 to float
  %4065 = fmul fast float %4057, %4064
  %4066 = fmul fast float %4065, %4059
  %4067 = select i1 %3889, float %4066, float %4061
  %4068 = select i1 %3889, float %4061, float %4066
  %4069 = select i1 %3887, float %4066, float %4060
  %4070 = select i1 %3887, float %4061, float %4067
  %4071 = select i1 %3887, float %4060, float %4068
  %4072 = fsub fast float %4006, %3730
  %4073 = fsub fast float %4007, %3731
  %4074 = fsub fast float %4008, %3732
  %4075 = fmul fast float %4072, %3978
  %4076 = fmul fast float %4073, %3978
  %4077 = fmul fast float %4074, %3978
  %4078 = fadd fast float %4075, %3730
  %4079 = fadd fast float %4076, %3731
  %4080 = fadd fast float %4077, %3732
  %4081 = fsub fast float %4015, %3715
  %4082 = fsub fast float %4016, %3716
  %4083 = fsub fast float %4017, %3717
  %4084 = fmul fast float %4081, %3978
  %4085 = fmul fast float %4082, %3978
  %4086 = fmul fast float %4083, %3978
  %4087 = fadd fast float %4084, %3715
  %4088 = fadd fast float %4085, %3716
  %4089 = fadd fast float %4086, %3717
  %4090 = fadd fast float %4069, %3679
  %4091 = fadd fast float %4070, %3680
  %4092 = fadd fast float %4071, %3681
  %4093 = call float @dx.op.dot3.f32(i32 55, float %4090, float %4091, float %4092, float %4090, float %4091, float %4092)  ; Dot3(ax,ay,az,bx,by,bz)
  %4094 = call float @dx.op.unary.f32(i32 25, float %4093)  ; Rsqrt(value)
  %4095 = fmul fast float %4090, %4094
  %4096 = fmul fast float %4091, %4094
  %4097 = fmul fast float %4092, %4094
  %4098 = fsub fast float %4095, %3679
  %4099 = fsub fast float %4096, %3680
  %4100 = fsub fast float %4097, %3681
  %4101 = fmul fast float %4098, %3978
  %4102 = fmul fast float %4099, %3978
  %4103 = fmul fast float %4100, %3978
  %4104 = fadd fast float %4101, %3679
  %4105 = fadd fast float %4102, %3680
  %4106 = fadd fast float %4103, %3681
  %4107 = call float @dx.op.binary.f32(i32 36, float %3691, float %4026)  ; FMin(a,b)
  %4108 = fsub fast float %4107, %3691
  %4109 = fmul fast float %4108, %3978
  %4110 = fadd fast float %4109, %3691
  %4111 = fsub fast float %4039, %3718
  %4112 = fmul fast float %4111, %3978
  %4113 = fadd fast float %4112, %3718
  br label %4114

; <label>:4114                                    ; preds = %3976, %3938, %3840
  %4115 = phi float [ %4078, %3976 ], [ %3730, %3938 ], [ %3730, %3840 ]
  %4116 = phi float [ %4079, %3976 ], [ %3731, %3938 ], [ %3731, %3840 ]
  %4117 = phi float [ %4080, %3976 ], [ %3732, %3938 ], [ %3732, %3840 ]
  %4118 = phi float [ %4087, %3976 ], [ %3715, %3938 ], [ %3715, %3840 ]
  %4119 = phi float [ %4088, %3976 ], [ %3716, %3938 ], [ %3716, %3840 ]
  %4120 = phi float [ %4089, %3976 ], [ %3717, %3938 ], [ %3717, %3840 ]
  %4121 = phi float [ %4104, %3976 ], [ %3679, %3938 ], [ %3679, %3840 ]
  %4122 = phi float [ %4105, %3976 ], [ %3680, %3938 ], [ %3680, %3840 ]
  %4123 = phi float [ %4106, %3976 ], [ %3681, %3938 ], [ %3681, %3840 ]
  %4124 = phi float [ %4113, %3976 ], [ %3718, %3938 ], [ %3718, %3840 ]
  %4125 = phi float [ %4110, %3976 ], [ %3691, %3938 ], [ %3691, %3840 ]
  br i1 %3838, label %4126, label %4399

; <label>:4126                                    ; preds = %4114
  %4127 = call float @dx.op.unary.f32(i32 23, float %4125)  ; Log(value)
  %4128 = fmul fast float %4127, 4.000000e+00
  %4129 = call float @dx.op.unary.f32(i32 21, float %4128)  ; Exp(value)
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = fmul fast float %4131, %25
  %4133 = fmul fast float %4131, %26
  %4134 = fmul fast float %4131, %27
  %4135 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %4136 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %4137 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %4138 = call float @dx.op.unary.f32(i32 23, float %4135)  ; Log(value)
  %4139 = call float @dx.op.unary.f32(i32 23, float %4136)  ; Log(value)
  %4140 = call float @dx.op.unary.f32(i32 23, float %4137)  ; Log(value)
  %4141 = fmul fast float %4138, 4.000000e+00
  %4142 = fmul fast float %4139, 4.000000e+00
  %4143 = fmul fast float %4140, 4.000000e+00
  %4144 = call float @dx.op.unary.f32(i32 21, float %4141)  ; Exp(value)
  %4145 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4146 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4147 = fadd fast float %4145, %4144
  %4148 = fadd fast float %4147, %4146
  %4149 = fdiv fast float 1.000000e+00, %4148
  %4150 = fmul fast float %4149, %4144
  %4151 = fcmp fast ogt float %34, 0.000000e+00
  %4152 = fcmp fast ogt float %35, 0.000000e+00
  %4153 = fcmp fast ogt float %36, 0.000000e+00
  %4154 = fcmp fast olt float %34, 0.000000e+00
  %4155 = fcmp fast olt float %35, 0.000000e+00
  %4156 = fcmp fast olt float %36, 0.000000e+00
  %4157 = zext i1 %4151 to i32
  %4158 = zext i1 %4152 to i32
  %4159 = zext i1 %4153 to i32
  %4160 = zext i1 %4154 to i32
  %4161 = zext i1 %4155 to i32
  %4162 = zext i1 %4156 to i32
  %4163 = sub nsw i32 %4157, %4160
  %4164 = sub nsw i32 %4158, %4161
  %4165 = sub nsw i32 %4159, %4162
  %4166 = call float @dx.op.unary.f32(i32 83, float %4132)  ; DerivCoarseX(value)
  %4167 = call float @dx.op.unary.f32(i32 83, float %4133)  ; DerivCoarseX(value)
  %4168 = call float @dx.op.unary.f32(i32 83, float %4134)  ; DerivCoarseX(value)
  %4169 = call float @dx.op.unary.f32(i32 84, float %4132)  ; DerivCoarseY(value)
  %4170 = call float @dx.op.unary.f32(i32 84, float %4133)  ; DerivCoarseY(value)
  %4171 = call float @dx.op.unary.f32(i32 84, float %4134)  ; DerivCoarseY(value)
  %4172 = fcmp fast ole float %207, %4150
  %4173 = fmul fast float %4149, %4147
  %4174 = fcmp fast ole float %207, %4173
  %4175 = select i1 %4174, float %4134, float %4132
  %4176 = select i1 %4174, float %4132, float %4133
  %4177 = select i1 %4172, float %4133, float %4175
  %4178 = select i1 %4172, float %4134, float %4176
  %4179 = select i1 %4174, float %4168, float %4166
  %4180 = select i1 %4174, float %4166, float %4167
  %4181 = select i1 %4172, float %4167, float %4179
  %4182 = select i1 %4172, float %4168, float %4180
  %4183 = select i1 %4174, float %4171, float %4169
  %4184 = select i1 %4174, float %4169, float %4170
  %4185 = select i1 %4172, float %4170, float %4183
  %4186 = select i1 %4172, float %4171, float %4184
  %4187 = call float @dx.op.unary.f32(i32 27, float %4177)  ; Round_ni(value)
  %4188 = call float @dx.op.unary.f32(i32 27, float %4178)  ; Round_ni(value)
  %4189 = fptosi float %4187 to i32
  %4190 = fptosi float %4188 to i32
  %4191 = xor i32 %4190, %4189
  %4192 = sitofp i32 %4191 to float
  %4193 = fptosi float %4192 to i32
  %4194 = sitofp i32 %4193 to float
  %4195 = fmul fast float %4194, 0x3FE3C6EF40000000
  %4196 = frem fast float %4187, 2.560000e+02
  %4197 = frem fast float %4188, 2.560000e+02
  %4198 = fptoui float %4196 to i32
  %4199 = fptoui float %4197 to i32
  %4200 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %4198, i32 %4199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = fadd fast float %4201, %4195
  %4205 = fadd fast float %4202, %4195
  %4206 = fadd fast float %4203, %4195
  %4207 = call float @dx.op.unary.f32(i32 22, float %4204)  ; Frc(value)
  %4208 = call float @dx.op.unary.f32(i32 22, float %4205)  ; Frc(value)
  %4209 = call float @dx.op.unary.f32(i32 22, float %4206)  ; Frc(value)
  %4210 = fmul fast float %4209, 0x401921FB60000000
  %4211 = call float @dx.op.unary.f32(i32 13, float %4210)  ; Sin(value)
  %4212 = call float @dx.op.unary.f32(i32 12, float %4210)  ; Cos(value)
  %4213 = fsub fast float -0.000000e+00, %4212
  %4214 = fmul fast float %4212, %4177
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4178, float %4214)  ; FMad(a,b,c)
  %4216 = fmul fast float %4211, %4177
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4213, float %4178, float %4216)  ; FMad(a,b,c)
  %4218 = fadd fast float %4215, %4207
  %4219 = fadd fast float %4217, %4208
  %4220 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4221 = bitcast float %4220 to i32
  %4222 = icmp eq i32 %4221, 0
  br i1 %4222, label %4261, label %4223

; <label>:4223                                    ; preds = %4126
  %4224 = add i32 %4221, 0
  %4225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4226 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4225, %dx.types.Handle %69, float %4218, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float %4181, float %4182, float undef, float %4185, float %4186, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4228, 2
  %4231 = fsub fast float 1.000000e+00, %3836
  %4232 = call float @dx.op.binary.f32(i32 35, float %4231, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4233 = bitcast float %3836 to i32
  %4234 = sitofp i32 %4233 to float
  %4235 = fadd fast float %4234, 0xC1CFBF8940000000
  %4236 = fmul fast float %4230, %4235
  %4237 = fadd fast float %4236, 0x41CFBF8940000000
  %4238 = fptosi float %4237 to i32
  %4239 = bitcast i32 %4238 to float
  %4240 = bitcast float %4232 to i32
  %4241 = sitofp i32 %4240 to float
  %4242 = fadd fast float %4241, 0xC1CFBF8940000000
  %4243 = fmul fast float %4242, %4230
  %4244 = fadd fast float %4243, 0x41CFBF8940000000
  %4245 = fptosi float %4244 to i32
  %4246 = bitcast i32 %4245 to float
  %4247 = fmul fast float %4239, %4229
  %4248 = fmul fast float %4246, %4229
  %4249 = fsub fast float %4232, %4247
  %4250 = fadd fast float %4248, %4232
  %4251 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4253 = fsub fast float %4227, %4251
  %4254 = fsub fast float %4252, %4251
  %4255 = bitcast float %4254 to i32
  %4256 = sub nsw i32 2129859010, %4255
  %4257 = bitcast i32 %4256 to float
  %4258 = fmul fast float %4257, %4253
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = fcmp fast olt float %4259, 0x3F70101020000000
  br i1 %4260, label %4399, label %4261

; <label>:4261                                    ; preds = %4223, %4126
  %4262 = phi float [ %4259, %4223 ], [ %3836, %4126 ]
  %4263 = fmul fast float %4262, %4129
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 1
  %4266 = extractvalue %dx.types.CBufRet.i32 %4264, 0
  %4267 = add i32 %4266, 0
  %4268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4268, %dx.types.Handle %68, float %4218, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float %4181, float %4182, float undef, float %4185, float %4186, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = extractvalue %dx.types.ResRet.f32 %4269, 3
  %4274 = and i32 %4265, 255
  %4275 = uitofp i32 %4274 to float
  %4276 = lshr i32 %4265, 8
  %4277 = and i32 %4276, 255
  %4278 = uitofp i32 %4277 to float
  %4279 = fmul fast float %4273, %4275
  %4280 = fadd fast float %4279, %4278
  %4281 = fmul fast float %4280, 0x3F70101000000000
  %4282 = fadd fast float %4281, 0xBFB99999A0000000
  %4283 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4284 = fmul fast float %4283, 0x3FF1C71C80000000
  %4285 = call float @dx.op.binary.f32(i32 36, float %4281, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4286 = fsub fast float 1.000000e+00, %4284
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fmul fast float %4287, %4270
  %4289 = fmul fast float %4287, %4271
  %4290 = fmul fast float %4287, %4272
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4294 = fmul fast float %4284, %4270
  %4295 = fmul fast float %4284, %4271
  %4296 = fmul fast float %4284, %4272
  %4297 = fadd fast float %4294, %4285
  %4298 = fadd fast float %4295, %4285
  %4299 = fadd fast float %4296, %4285
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.i32 %4303, 3
  %4305 = extractvalue %dx.types.CBufRet.i32 %4303, 2
  %4306 = add i32 %4305, 0
  %4307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4308 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4307, %dx.types.Handle %68, float %4218, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float %4181, float %4182, float undef, float %4185, float %4186, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.ResRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.ResRet.f32 %4308, 2
  %4312 = extractvalue %dx.types.ResRet.f32 %4308, 3
  %4313 = and i32 %4304, 255
  %4314 = uitofp i32 %4313 to float
  %4315 = lshr i32 %4304, 8
  %4316 = and i32 %4315, 255
  %4317 = uitofp i32 %4316 to float
  %4318 = lshr i32 %4304, 16
  %4319 = and i32 %4318, 255
  %4320 = uitofp i32 %4319 to float
  %4321 = fmul fast float %4320, 0x3F70101000000000
  %4322 = fmul fast float %4309, %4314
  %4323 = fadd fast float %4322, %4317
  %4324 = fmul fast float %4323, 0x3F70101000000000
  %4325 = fadd fast float %4310, -5.000000e-01
  %4326 = fadd fast float %4312, -5.000000e-01
  %4327 = fmul fast float %4325, %4321
  %4328 = fmul fast float %4326, %4321
  %4329 = fadd fast float %4327, 5.000000e-01
  %4330 = fadd fast float %4328, 5.000000e-01
  %4331 = fmul fast float %4329, 2.000000e+00
  %4332 = fadd fast float %4331, -1.000000e+00
  %4333 = fmul fast float %4330, 2.000000e+00
  %4334 = fadd fast float %4333, -1.000000e+00
  %4335 = fadd fast float %4332, %4334
  %4336 = fmul fast float %4335, 5.000000e-01
  %4337 = fsub fast float %4332, %4334
  %4338 = fmul fast float %4337, 5.000000e-01
  %4339 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4340 = fsub fast float 1.000000e+00, %4339
  %4341 = call float @dx.op.unary.f32(i32 6, float %4338)  ; FAbs(value)
  %4342 = fsub fast float %4340, %4341
  %4343 = call float @dx.op.dot3.f32(i32 55, float %4336, float %4338, float %4342, float %4336, float %4338, float %4342)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = call float @dx.op.unary.f32(i32 25, float %4343)  ; Rsqrt(value)
  %4345 = fmul fast float %4336, %4344
  %4346 = fmul fast float %4338, %4344
  %4347 = select i1 %4174, i32 %4164, i32 %4165
  %4348 = select i1 %4172, i32 %4163, i32 %4347
  %4349 = sitofp i32 %4348 to float
  %4350 = fmul fast float %4342, %4349
  %4351 = fmul fast float %4350, %4344
  %4352 = select i1 %4174, float %4351, float %4346
  %4353 = select i1 %4174, float %4346, float %4351
  %4354 = select i1 %4172, float %4351, float %4345
  %4355 = select i1 %4172, float %4346, float %4352
  %4356 = select i1 %4172, float %4345, float %4353
  %4357 = fsub fast float %4291, %4115
  %4358 = fsub fast float %4292, %4116
  %4359 = fsub fast float %4293, %4117
  %4360 = fmul fast float %4357, %4263
  %4361 = fmul fast float %4358, %4263
  %4362 = fmul fast float %4359, %4263
  %4363 = fadd fast float %4360, %4115
  %4364 = fadd fast float %4361, %4116
  %4365 = fadd fast float %4362, %4117
  %4366 = fsub fast float %4300, %4118
  %4367 = fsub fast float %4301, %4119
  %4368 = fsub fast float %4302, %4120
  %4369 = fmul fast float %4366, %4263
  %4370 = fmul fast float %4367, %4263
  %4371 = fmul fast float %4368, %4263
  %4372 = fadd fast float %4369, %4118
  %4373 = fadd fast float %4370, %4119
  %4374 = fadd fast float %4371, %4120
  %4375 = fadd fast float %4354, %4121
  %4376 = fadd fast float %4355, %4122
  %4377 = fadd fast float %4356, %4123
  %4378 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float %4375, float %4376, float %4377)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = call float @dx.op.unary.f32(i32 25, float %4378)  ; Rsqrt(value)
  %4380 = fmul fast float %4375, %4379
  %4381 = fmul fast float %4376, %4379
  %4382 = fmul fast float %4377, %4379
  %4383 = fsub fast float %4380, %4121
  %4384 = fsub fast float %4381, %4122
  %4385 = fsub fast float %4382, %4123
  %4386 = fmul fast float %4383, %4263
  %4387 = fmul fast float %4384, %4263
  %4388 = fmul fast float %4385, %4263
  %4389 = fadd fast float %4386, %4121
  %4390 = fadd fast float %4387, %4122
  %4391 = fadd fast float %4388, %4123
  %4392 = call float @dx.op.binary.f32(i32 36, float %4125, float %4311)  ; FMin(a,b)
  %4393 = fsub fast float %4392, %4125
  %4394 = fmul fast float %4393, %4263
  %4395 = fadd fast float %4394, %4125
  %4396 = fsub fast float %4324, %4124
  %4397 = fmul fast float %4396, %4263
  %4398 = fadd fast float %4397, %4124
  br label %4399

; <label>:4399                                    ; preds = %4261, %4223, %4114, %3830
  %4400 = phi float [ %4363, %4261 ], [ %4115, %4223 ], [ %4115, %4114 ], [ %3730, %3830 ]
  %4401 = phi float [ %4364, %4261 ], [ %4116, %4223 ], [ %4116, %4114 ], [ %3731, %3830 ]
  %4402 = phi float [ %4365, %4261 ], [ %4117, %4223 ], [ %4117, %4114 ], [ %3732, %3830 ]
  %4403 = phi float [ %4372, %4261 ], [ %4118, %4223 ], [ %4118, %4114 ], [ %3715, %3830 ]
  %4404 = phi float [ %4373, %4261 ], [ %4119, %4223 ], [ %4119, %4114 ], [ %3716, %3830 ]
  %4405 = phi float [ %4374, %4261 ], [ %4120, %4223 ], [ %4120, %4114 ], [ %3717, %3830 ]
  %4406 = phi float [ %4389, %4261 ], [ %4121, %4223 ], [ %4121, %4114 ], [ %3679, %3830 ]
  %4407 = phi float [ %4390, %4261 ], [ %4122, %4223 ], [ %4122, %4114 ], [ %3680, %3830 ]
  %4408 = phi float [ %4391, %4261 ], [ %4123, %4223 ], [ %4123, %4114 ], [ %3681, %3830 ]
  %4409 = phi float [ %4398, %4261 ], [ %4124, %4223 ], [ %4124, %4114 ], [ %3718, %3830 ]
  %4410 = phi float [ %4395, %4261 ], [ %4125, %4223 ], [ %4125, %4114 ], [ %3691, %3830 ]
  %4411 = fcmp fast une float %3834, 0.000000e+00
  %4412 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 25, float %4412)  ; Rsqrt(value)
  br i1 %4411, label %4421, label %4414

; <label>:4414                                    ; preds = %4399
  %4415 = fmul fast float %4413, %155
  %4416 = fmul fast float %4413, %156
  %4417 = fmul fast float %4413, %157
  %4418 = fsub fast float -0.000000e+00, %4415
  %4419 = fsub fast float -0.000000e+00, %4416
  %4420 = fsub fast float -0.000000e+00, %4417
  br label %4588

; <label>:4421                                    ; preds = %4399
  %4422 = fmul fast float %155, %4413
  %4423 = fsub fast float -0.000000e+00, %4422
  %4424 = fmul fast float %156, %4413
  %4425 = fsub fast float -0.000000e+00, %4424
  %4426 = fmul fast float %157, %4413
  %4427 = fsub fast float -0.000000e+00, %4426
  %4428 = call float @dx.op.dot3.f32(i32 55, float %4423, float %4425, float %4427, float %81, float %83, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4429 = fmul fast float %3834, 2.500000e+00
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fmul fast float %3834, 0x4013FFFFE0000000
  %4432 = fadd fast float %4431, 0xBFFFFFFFE0000000
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %3834, 0x4004000020000000
  %4435 = fadd fast float %4434, 0xBFF8000040000000
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %3697, 1.000000e+01
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fmul fast float %4438, 2.000000e+00
  %4440 = fsub fast float 3.000000e+00, %4439
  %4441 = fmul fast float %4438, %4438
  %4442 = fmul fast float %4441, %4440
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = fsub fast float 0x3FE3333340000000, %4409
  %4445 = fmul fast float %4444, 0x400AAAAAA0000000
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fmul fast float %4443, %4446
  %4448 = fmul fast float %4400, 0x3FEA2B8620000000
  %4449 = fmul fast float %4401, 0x3FEA2B8620000000
  %4450 = fmul fast float %4402, 0x3FEA2B8620000000
  %4451 = fadd fast float %4448, 0x3FC81DFBA0000000
  %4452 = fmul fast float %4451, %4400
  %4453 = fadd fast float %4452, 0x3F910E6020000000
  %4454 = fadd fast float %4449, 0x3FC81DFBA0000000
  %4455 = fmul fast float %4454, %4401
  %4456 = fadd fast float %4455, 0x3F910E6020000000
  %4457 = fadd fast float %4450, 0x3FC81DFBA0000000
  %4458 = fmul fast float %4457, %4402
  %4459 = fadd fast float %4458, 0x3F910E6020000000
  %4460 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = fsub fast float %4460, %4400
  %4464 = fsub fast float %4461, %4401
  %4465 = fsub fast float %4462, %4402
  %4466 = fmul fast float %4463, %4430
  %4467 = fmul fast float %4466, %4447
  %4468 = fmul fast float %4464, %4430
  %4469 = fmul fast float %4468, %4447
  %4470 = fmul fast float %4465, %4430
  %4471 = fmul fast float %4470, %4447
  %4472 = fadd fast float %4467, %4400
  %4473 = fadd fast float %4469, %4401
  %4474 = fadd fast float %4471, %4402
  %4475 = fmul fast float %4410, %4410
  %4476 = fmul fast float %4475, %4475
  %4477 = fadd fast float %4433, 1.000000e+00
  %4478 = fsub fast float %4477, %4447
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = call float @dx.op.dot3.f32(i32 55, float %81, float %83, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fsub fast float 1.000000e+00, %4476
  %4483 = call float @dx.op.binary.f32(i32 36, float %4479, float %4482)  ; FMin(a,b)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4485 = call float @dx.op.binary.f32(i32 35, float %4483, float %4484)  ; FMax(a,b)
  %4486 = fadd fast float %4481, 0xBFE4CCCCC0000000
  %4487 = fmul fast float %4486, 0x4006DB6DA0000000
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fmul fast float %4488, 2.000000e+00
  %4490 = fsub fast float 3.000000e+00, %4489
  %4491 = bitcast float %4403 to i32
  %4492 = ashr i32 %4491, 1
  %4493 = add nsw i32 %4492, 532487669
  %4494 = bitcast i32 %4493 to float
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = bitcast float %4495 to i32
  %4497 = sub nsw i32 2129859010, %4496
  %4498 = bitcast i32 %4497 to float
  %4499 = fmul fast float %4498, 2.000000e+00
  %4500 = bitcast float %4404 to i32
  %4501 = ashr i32 %4500, 1
  %4502 = add nsw i32 %4501, 532487669
  %4503 = bitcast i32 %4502 to float
  %4504 = fsub fast float 1.000000e+00, %4503
  %4505 = bitcast float %4504 to i32
  %4506 = sub nsw i32 2129859010, %4505
  %4507 = bitcast i32 %4506 to float
  %4508 = fmul fast float %4507, 2.000000e+00
  %4509 = bitcast float %4405 to i32
  %4510 = ashr i32 %4509, 1
  %4511 = add nsw i32 %4510, 532487669
  %4512 = bitcast i32 %4511 to float
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = bitcast float %4513 to i32
  %4515 = sub nsw i32 2129859010, %4514
  %4516 = bitcast i32 %4515 to float
  %4517 = fmul fast float %4516, 2.000000e+00
  %4518 = fsub fast float 0x4002A9FBE0000000, %4499
  %4519 = fadd fast float %4499, 0x3FD54FDF00000000
  %4520 = bitcast float %4519 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = fmul fast float %4522, %4518
  %4524 = fmul fast float %4523, %4523
  %4525 = fsub fast float 0x4002A9FBE0000000, %4508
  %4526 = fadd fast float %4508, 0x3FD54FDF00000000
  %4527 = bitcast float %4526 to i32
  %4528 = sub nsw i32 2129859010, %4527
  %4529 = bitcast i32 %4528 to float
  %4530 = fmul fast float %4529, %4525
  %4531 = fmul fast float %4530, %4530
  %4532 = fsub fast float 0x4002A9FBE0000000, %4517
  %4533 = fadd fast float %4517, 0x3FD54FDF00000000
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %4532
  %4538 = fmul fast float %4537, %4537
  %4539 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4524)  ; FMax(a,b)
  %4540 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4531)  ; FMax(a,b)
  %4541 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4538)  ; FMax(a,b)
  %4542 = fsub fast float 1.000000e+00, %4428
  %4543 = fadd fast float %4542, %4443
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fsub fast float 1.000000e+00, %3815
  %4546 = fmul fast float %4485, %4545
  %4547 = fmul fast float %4488, %4488
  %4548 = fmul fast float %4547, %4546
  %4549 = fmul fast float %4548, %4490
  %4550 = fmul fast float %4545, 0xBFE99999A0000000
  %4551 = fmul fast float %4550, %4430
  %4552 = fmul fast float %4551, %4447
  %4553 = fadd fast float %4552, 1.000000e+00
  %4554 = fadd fast float %4409, -1.000000e+00
  %4555 = fmul fast float %4553, %4554
  %4556 = fadd fast float %4555, 1.000000e+00
  %4557 = fsub fast float %4539, %4403
  %4558 = fsub fast float %4540, %4404
  %4559 = fsub fast float %4541, %4405
  %4560 = fmul fast float %4549, %4557
  %4561 = fmul fast float %4549, %4558
  %4562 = fmul fast float %4549, %4559
  %4563 = fadd fast float %4560, %4403
  %4564 = fadd fast float %4561, %4404
  %4565 = fadd fast float %4562, %4405
  %4566 = fsub fast float %81, %4406
  %4567 = fsub fast float %83, %4407
  %4568 = fsub fast float %85, %4408
  %4569 = fmul fast float %4549, %4566
  %4570 = fmul fast float %4549, %4567
  %4571 = fmul fast float %4549, %4568
  %4572 = fadd fast float %4569, %4406
  %4573 = fadd fast float %4570, %4407
  %4574 = fadd fast float %4571, %4408
  %4575 = fmul fast float %4549, %4544
  %4576 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4577 = fsub fast float 1.000000e+00, %4576
  %4578 = fmul fast float %4575, %4577
  %4579 = fadd fast float %4578, %4576
  %4580 = fsub fast float 1.000000e+00, %4410
  %4581 = fmul fast float %4549, %4580
  %4582 = fadd fast float %4581, %4410
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4572, float %4573, float %4574, float %4572, float %4573, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 25, float %4583)  ; Rsqrt(value)
  %4585 = fmul fast float %4572, %4584
  %4586 = fmul fast float %4573, %4584
  %4587 = fmul fast float %4574, %4584
  br label %4588

; <label>:4588                                    ; preds = %4421, %4414
  %4589 = phi float [ %4420, %4414 ], [ %4427, %4421 ]
  %4590 = phi float [ %4419, %4414 ], [ %4425, %4421 ]
  %4591 = phi float [ %4418, %4414 ], [ %4423, %4421 ]
  %4592 = phi float [ %4417, %4414 ], [ %4426, %4421 ]
  %4593 = phi float [ %4416, %4414 ], [ %4424, %4421 ]
  %4594 = phi float [ %4415, %4414 ], [ %4422, %4421 ]
  %4595 = phi float [ %4400, %4414 ], [ %4472, %4421 ]
  %4596 = phi float [ %4401, %4414 ], [ %4473, %4421 ]
  %4597 = phi float [ %4402, %4414 ], [ %4474, %4421 ]
  %4598 = phi float [ %4403, %4414 ], [ %4563, %4421 ]
  %4599 = phi float [ %4404, %4414 ], [ %4564, %4421 ]
  %4600 = phi float [ %4405, %4414 ], [ %4565, %4421 ]
  %4601 = phi float [ %4406, %4414 ], [ %4585, %4421 ]
  %4602 = phi float [ %4407, %4414 ], [ %4586, %4421 ]
  %4603 = phi float [ %4408, %4414 ], [ %4587, %4421 ]
  %4604 = phi float [ %4409, %4414 ], [ %4579, %4421 ]
  %4605 = phi float [ %4410, %4414 ], [ %4582, %4421 ]
  %4606 = select i1 %196, float 0.000000e+00, float %4600
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4591, float %4590, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4593, float %4592, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = fmul fast float %4609, 2.000000e+00
  %4611 = fmul fast float %4610, %4601
  %4612 = fmul fast float %4610, %4602
  %4613 = fmul fast float %4610, %4603
  %4614 = fsub fast float %4594, %4611
  %4615 = fsub fast float %4593, %4612
  %4616 = fsub fast float %4592, %4613
  %4617 = call float @dx.op.binary.f32(i32 36, float %4605, float 1.000000e+00)  ; FMin(a,b)
  %4618 = fsub fast float 1.000000e+00, %4605
  %4619 = bitcast float %4618 to i32
  %4620 = sub nsw i32 2129859010, %4619
  %4621 = bitcast i32 %4620 to float
  %4622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %49)  ; FMax(a,b)
  %4623 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fcmp fast oeq float %4623, 0.000000e+00
  %4625 = fcmp fast oeq float %4622, 0.000000e+00
  %4626 = or i1 %4625, %4624
  br i1 %4626, label %4656, label %4627

; <label>:4627                                    ; preds = %4588
  %4628 = fsub fast float -0.000000e+00, %52
  %4629 = fsub fast float -0.000000e+00, %50
  %4630 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %4631 = fdiv fast float %4630, %4622
  %4632 = fcmp fast ogt float %4631, 0x3FFB6F8900000000
  %4633 = select i1 %4632, float 0x3FFB6F8900000000, float %4631
  %4634 = fmul fast float %4633, 0x3FE8A23460000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4633, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4637 = fmul fast float %4635, %4622
  %4638 = fmul fast float %4636, 0x3FF279A740000000
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %51, float %4628, float %4629, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4641, %4628
  %4643 = fmul fast float %4641, %4629
  %4644 = fmul fast float %4641, %51
  %4645 = fmul fast float %4639, %4639
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4636, 0x40005F8BE0000000
  %4648 = fsub fast float 0x400C5BF8A0000000, %4647
  %4649 = fdiv fast float %4637, %4648
  %4650 = fmul fast float %4649, 0x3FEE31C3C0000000
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4636, 0x3FDACB7480000000
  %4653 = fadd fast float %4652, 0xBFD7347680000000
  %4654 = fmul fast float %4653, %4649
  %4655 = fmul fast float %4654, %4646
  br label %4656

; <label>:4656                                    ; preds = %4627, %4588
  %4657 = phi float [ %4642, %4627 ], [ 0.000000e+00, %4588 ]
  %4658 = phi float [ %4643, %4627 ], [ 0.000000e+00, %4588 ]
  %4659 = phi float [ %4644, %4627 ], [ 0.000000e+00, %4588 ]
  %4660 = phi float [ %4651, %4627 ], [ 0.000000e+00, %4588 ]
  %4661 = phi float [ %4655, %4627 ], [ 0.000000e+00, %4588 ]
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = fmul fast float %4662, %4662
  %4664 = fmul fast float %4663, 0x3FEE471020000000
  %4665 = fadd fast float %4664, 0xBFD42F6020000000
  %4666 = fmul fast float %4622, 0x3FD20DD760000000
  %4667 = fmul fast float %4665, %4661
  %4668 = fmul fast float %4660, 0x3FDF454380000000
  %4669 = fmul fast float %4668, %4662
  %4670 = fadd fast float %4669, %4666
  %4671 = fadd fast float %4670, %4667
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = fmul fast float %4672, 0x3FDF454380000000
  %4674 = fmul fast float %4672, %4672
  %4675 = fmul fast float %4674, 0x3FEE471020000000
  %4676 = fadd fast float %4675, 0xBFD42F6020000000
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4660, float %4661, float 0x3FD20DD760000000, float %4673, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %4679 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = fcmp fast oeq float %4679, 0.000000e+00
  %4681 = fcmp fast oeq float %4678, 0.000000e+00
  %4682 = or i1 %4681, %4680
  br i1 %4682, label %4712, label %4683

; <label>:4683                                    ; preds = %4656
  %4684 = fsub fast float -0.000000e+00, %48
  %4685 = fsub fast float -0.000000e+00, %46
  %4686 = call float @dx.op.unary.f32(i32 24, float %4679)  ; Sqrt(value)
  %4687 = fdiv fast float %4686, %4678
  %4688 = fcmp fast ogt float %4687, 0x3FFB6F8900000000
  %4689 = select i1 %4688, float 0x3FFB6F8900000000, float %4687
  %4690 = fmul fast float %4689, 0x3FE8A23460000000
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4693 = fmul fast float %4691, %4678
  %4694 = fmul fast float %4692, 0x3FF279A740000000
  %4695 = fadd fast float %4694, -1.000000e+00
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4685, float %47, float %4684, float %4685, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 25, float %4696)  ; Rsqrt(value)
  %4698 = fmul fast float %4697, %4684
  %4699 = fmul fast float %4697, %4685
  %4700 = fmul fast float %4697, %47
  %4701 = fmul fast float %4695, %4695
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = fmul fast float %4692, 0x40005F8BE0000000
  %4704 = fsub fast float 0x400C5BF8A0000000, %4703
  %4705 = fdiv fast float %4693, %4704
  %4706 = fmul fast float %4705, 0x3FEE31C3C0000000
  %4707 = fmul fast float %4706, %4702
  %4708 = fmul fast float %4692, 0x3FDACB7480000000
  %4709 = fadd fast float %4708, 0xBFD7347680000000
  %4710 = fmul fast float %4709, %4705
  %4711 = fmul fast float %4710, %4702
  br label %4712

; <label>:4712                                    ; preds = %4683, %4656
  %4713 = phi float [ %4698, %4683 ], [ 0.000000e+00, %4656 ]
  %4714 = phi float [ %4699, %4683 ], [ 0.000000e+00, %4656 ]
  %4715 = phi float [ %4700, %4683 ], [ 0.000000e+00, %4656 ]
  %4716 = phi float [ %4707, %4683 ], [ 0.000000e+00, %4656 ]
  %4717 = phi float [ %4711, %4683 ], [ 0.000000e+00, %4656 ]
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = fmul fast float %4718, %4718
  %4720 = fmul fast float %4719, 0x3FEE471020000000
  %4721 = fadd fast float %4720, 0xBFD42F6020000000
  %4722 = fmul fast float %4678, 0x3FD20DD760000000
  %4723 = fmul fast float %4721, %4717
  %4724 = fmul fast float %4716, 0x3FDF454380000000
  %4725 = fmul fast float %4724, %4718
  %4726 = fadd fast float %4725, %4722
  %4727 = fadd fast float %4726, %4723
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4728, 0x3FDF454380000000
  %4730 = fmul fast float %4728, %4728
  %4731 = fmul fast float %4730, 0x3FEE471020000000
  %4732 = fadd fast float %4731, 0xBFD42F6020000000
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4716, float %4717, float 0x3FD20DD760000000, float %4729, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %41)  ; FMax(a,b)
  %4735 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fcmp fast oeq float %4735, 0.000000e+00
  %4737 = fcmp fast oeq float %4734, 0.000000e+00
  %4738 = or i1 %4737, %4736
  br i1 %4738, label %4768, label %4739

; <label>:4739                                    ; preds = %4712
  %4740 = fsub fast float -0.000000e+00, %44
  %4741 = fsub fast float -0.000000e+00, %42
  %4742 = call float @dx.op.unary.f32(i32 24, float %4735)  ; Sqrt(value)
  %4743 = fdiv fast float %4742, %4734
  %4744 = fcmp fast ogt float %4743, 0x3FFB6F8900000000
  %4745 = select i1 %4744, float 0x3FFB6F8900000000, float %4743
  %4746 = fmul fast float %4745, 0x3FE8A23460000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = call float @dx.op.binary.f32(i32 35, float %4745, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4749 = fmul fast float %4747, %4734
  %4750 = fmul fast float %4748, 0x3FF279A740000000
  %4751 = fadd fast float %4750, -1.000000e+00
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %43, float %4740, float %4741, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = call float @dx.op.unary.f32(i32 25, float %4752)  ; Rsqrt(value)
  %4754 = fmul fast float %4753, %4740
  %4755 = fmul fast float %4753, %4741
  %4756 = fmul fast float %4753, %43
  %4757 = fmul fast float %4751, %4751
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = fmul fast float %4748, 0x40005F8BE0000000
  %4760 = fsub fast float 0x400C5BF8A0000000, %4759
  %4761 = fdiv fast float %4749, %4760
  %4762 = fmul fast float %4761, 0x3FEE31C3C0000000
  %4763 = fmul fast float %4762, %4758
  %4764 = fmul fast float %4748, 0x3FDACB7480000000
  %4765 = fadd fast float %4764, 0xBFD7347680000000
  %4766 = fmul fast float %4765, %4761
  %4767 = fmul fast float %4766, %4758
  br label %4768

; <label>:4768                                    ; preds = %4739, %4712
  %4769 = phi float [ %4754, %4739 ], [ 0.000000e+00, %4712 ]
  %4770 = phi float [ %4755, %4739 ], [ 0.000000e+00, %4712 ]
  %4771 = phi float [ %4756, %4739 ], [ 0.000000e+00, %4712 ]
  %4772 = phi float [ %4763, %4739 ], [ 0.000000e+00, %4712 ]
  %4773 = phi float [ %4767, %4739 ], [ 0.000000e+00, %4712 ]
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = fmul fast float %4774, %4774
  %4776 = fmul fast float %4775, 0x3FEE471020000000
  %4777 = fadd fast float %4776, 0xBFD42F6020000000
  %4778 = fmul fast float %4734, 0x3FD20DD760000000
  %4779 = fmul fast float %4777, %4773
  %4780 = fmul fast float %4772, 0x3FDF454380000000
  %4781 = fmul fast float %4780, %4774
  %4782 = fadd fast float %4781, %4778
  %4783 = fadd fast float %4782, %4779
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = fmul fast float %4784, 0x3FDF454380000000
  %4786 = fmul fast float %4784, %4784
  %4787 = fmul fast float %4786, 0x3FEE471020000000
  %4788 = fadd fast float %4787, 0xBFD42F6020000000
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4772, float %4773, float 0x3FD20DD760000000, float %4785, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = call float @dx.op.binary.f32(i32 35, float %4671, float 0.000000e+00)  ; FMax(a,b)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4792 = call float @dx.op.binary.f32(i32 35, float %4783, float 0.000000e+00)  ; FMax(a,b)
  %4793 = call float @dx.op.binary.f32(i32 35, float %4677, float 0.000000e+00)  ; FMax(a,b)
  %4794 = call float @dx.op.binary.f32(i32 35, float %4733, float 0.000000e+00)  ; FMax(a,b)
  %4795 = call float @dx.op.binary.f32(i32 35, float %4789, float 0.000000e+00)  ; FMax(a,b)
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = call float @dx.op.binary.f32(i32 36, float %4595, float %4797)  ; FMin(a,b)
  %4799 = fsub fast float 1.000000e+00, %4617
  %4800 = fmul fast float %4798, %4799
  %4801 = fsub fast float 1.000000e+00, %4800
  %4802 = bitcast float %4801 to i32
  %4803 = sub nsw i32 2129859010, %4802
  %4804 = bitcast i32 %4803 to float
  %4805 = call float @dx.op.binary.f32(i32 36, float %4596, float %4797)  ; FMin(a,b)
  %4806 = fmul fast float %4805, %4799
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = bitcast float %4807 to i32
  %4809 = sub nsw i32 2129859010, %4808
  %4810 = bitcast i32 %4809 to float
  %4811 = call float @dx.op.binary.f32(i32 36, float %4597, float %4797)  ; FMin(a,b)
  %4812 = fmul fast float %4811, %4799
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = bitcast float %4813 to i32
  %4815 = sub nsw i32 2129859010, %4814
  %4816 = bitcast i32 %4815 to float
  %4817 = fmul fast float %4790, %4617
  %4818 = fmul fast float %4817, %4804
  %4819 = fmul fast float %4791, %4617
  %4820 = fmul fast float %4819, %4810
  %4821 = fmul fast float %4792, %4617
  %4822 = fmul fast float %4821, %4816
  %4823 = call float @dx.op.binary.f32(i32 36, float %4598, float %4797)  ; FMin(a,b)
  %4824 = fmul fast float %4823, %4799
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = call float @dx.op.binary.f32(i32 36, float %4599, float %4797)  ; FMin(a,b)
  %4830 = fmul fast float %4829, %4799
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = bitcast float %4831 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = call float @dx.op.binary.f32(i32 36, float %4606, float %4797)  ; FMin(a,b)
  %4836 = fmul fast float %4835, %4799
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4793, %4617
  %4842 = fmul fast float %4841, %4828
  %4843 = fmul fast float %4794, %4617
  %4844 = fmul fast float %4843, %4834
  %4845 = fmul fast float %4795, %4617
  %4846 = fmul fast float %4845, %4840
  %4847 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4820, float %4822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = select i1 %196, float 0.000000e+00, float %4818
  %4849 = select i1 %196, float %4847, float %4820
  %4850 = select i1 %196, float 0.000000e+00, float %4822
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4844, float %4846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = select i1 %196, float 0.000000e+00, float %4842
  %4853 = select i1 %196, float %4851, float %4844
  %4854 = select i1 %196, float 0.000000e+00, float %4846
  %4855 = fmul fast float %4608, 9.843750e-01
  %4856 = fmul fast float %4604, 9.843750e-01
  %4857 = fadd fast float %4855, 7.812500e-03
  %4858 = fadd fast float %4856, 7.812500e-03
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %4857, float %4858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4862 = fmul fast float %4860, %4598
  %4863 = fmul fast float %4860, %4599
  %4864 = fmul fast float %4860, %4606
  %4865 = fadd fast float %4862, %4861
  %4866 = fadd fast float %4863, %4861
  %4867 = fadd fast float %4864, %4861
  %4868 = fcmp fast ogt float %3692, 0.000000e+00
  br i1 %4868, label %4869, label %4895

; <label>:4869                                    ; preds = %4768
  %4870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3692, float %4608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.ResRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.ResRet.f32 %4870, 2
  %4874 = fadd fast float %4871, -5.000000e-01
  %4875 = fadd fast float %4872, -5.000000e-01
  %4876 = fadd fast float %4873, -5.000000e-01
  %4877 = fsub fast float 1.000000e+00, %4598
  %4878 = fsub fast float 1.000000e+00, %4599
  %4879 = fsub fast float 1.000000e+00, %4606
  %4880 = fmul fast float %4598, 4.000000e+00
  %4881 = fmul fast float %4880, %4877
  %4882 = fmul fast float %4881, %4874
  %4883 = fmul fast float %4599, 4.000000e+00
  %4884 = fmul fast float %4883, %4878
  %4885 = fmul fast float %4884, %4875
  %4886 = fmul fast float %4606, 4.000000e+00
  %4887 = fmul fast float %4886, %4879
  %4888 = fmul fast float %4887, %4876
  %4889 = fadd fast float %4882, %4865
  %4890 = fadd fast float %4885, %4866
  %4891 = fadd fast float %4888, %4867
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  br label %4895

; <label>:4895                                    ; preds = %4869, %4768
  %4896 = phi float [ %4892, %4869 ], [ %4865, %4768 ]
  %4897 = phi float [ %4893, %4869 ], [ %4866, %4768 ]
  %4898 = phi float [ %4894, %4869 ], [ %4867, %4768 ]
  %4899 = call float @dx.op.binary.f32(i32 35, float %4897, float %4898)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4896, float %4899)  ; FMax(a,b)
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = fmul fast float %4901, %4848
  %4903 = fmul fast float %4901, %4849
  %4904 = fmul fast float %4901, %4850
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = fcmp fast ogt float %4905, 0x3E7FF19E20000000
  %4907 = fdiv fast float 1.000000e+00, %4905
  %4908 = select i1 %4906, float %4907, float 0.000000e+00
  %4909 = fmul fast float %4908, %4595
  %4910 = fmul fast float %4908, %4596
  %4911 = fmul fast float %4908, %4597
  %4912 = fadd fast float %4909, -1.000000e+00
  %4913 = fadd fast float %4910, -1.000000e+00
  %4914 = fadd fast float %4911, -1.000000e+00
  %4915 = fmul fast float %4912, 5.000000e-01
  %4916 = fmul fast float %4913, 5.000000e-01
  %4917 = fmul fast float %4914, 5.000000e-01
  %4918 = fadd fast float %4915, 1.000000e+00
  %4919 = fadd fast float %4916, 1.000000e+00
  %4920 = fadd fast float %4917, 1.000000e+00
  %4921 = fmul fast float %4896, %4852
  %4922 = fmul fast float %4897, %4853
  %4923 = fmul fast float %4898, %4854
  %4924 = fsub fast float 1.000000e+00, %4608
  %4925 = bitcast float %4924 to i32
  %4926 = sitofp i32 %4925 to float
  %4927 = fmul fast float %4926, 5.000000e+00
  %4928 = fadd fast float %4927, 0xC1EFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = fmul fast float %4930, %3693
  %4932 = fmul fast float %4848, %4931
  %4933 = fmul fast float %4932, %4901
  %4934 = fmul fast float %4933, %4918
  %4935 = fmul fast float %4849, %4931
  %4936 = fmul fast float %4935, %4901
  %4937 = fmul fast float %4936, %4919
  %4938 = fmul fast float %4850, %4931
  %4939 = fmul fast float %4938, %4901
  %4940 = fmul fast float %4939, %4920
  %4941 = fmul fast float %4902, %3689
  %4942 = fmul fast float %4903, %3689
  %4943 = fmul fast float %4904, %3689
  %4944 = fadd fast float %4921, %3685
  %4945 = fadd fast float %4944, %4934
  %4946 = fmul fast float %4945, %3689
  %4947 = fadd fast float %4922, %3686
  %4948 = fadd fast float %4947, %4937
  %4949 = fmul fast float %4948, %3689
  %4950 = fadd fast float %4923, %3687
  %4951 = fadd fast float %4950, %4940
  %4952 = fmul fast float %4951, %3689
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 3
  %4955 = fcmp fast oeq float %4954, 0.000000e+00
  br i1 %4955, label %5183, label %4956

; <label>:4956                                    ; preds = %4895
  %4957 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4958 = extractvalue %dx.types.CBufRet.f32 %4953, 1
  %4959 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4961, float %4962, float %4963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = select i1 %196, float %4965, float %4961
  %4969 = select i1 %196, float %4967, float %4962
  %4970 = select i1 %196, float %4966, float %4963
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4973 = fcmp fast une float %4972, 0.000000e+00
  br i1 %4973, label %4974, label %4991

; <label>:4974                                    ; preds = %4956
  %4975 = fptoui float %72 to i32
  %4976 = fptoui float %73 to i32
  %4977 = lshr i32 %4975, 4
  %4978 = lshr i32 %4976, 4
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = fptoui float %4980 to i32
  %4982 = add i32 %4981, 15
  %4983 = lshr i32 %4982, 4
  %4984 = mul i32 %4983, %4978
  %4985 = add i32 %4984, %4977
  %4986 = shl i32 %4985, 3
  %4987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4986, i32 undef)  ; BufferLoad(srv,index,wot)
  %4988 = extractvalue %dx.types.ResRet.i32 %4987, 0
  %4989 = and i32 %4988, -268435456
  %4990 = icmp eq i32 %4989, -1342177280
  br i1 %4990, label %5001, label %4991

; <label>:4991                                    ; preds = %4974, %4956
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 2
  %4994 = extractvalue %dx.types.CBufRet.f32 %4992, 3
  %4995 = fmul fast float %4993, %72
  %4996 = fmul fast float %4994, %73
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %4995, float %4996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.ResRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.ResRet.f32 %4997, 2
  br label %5001

; <label>:5001                                    ; preds = %4991, %4974
  %5002 = phi float [ %4998, %4991 ], [ 0.000000e+00, %4974 ]
  %5003 = phi float [ %4999, %4991 ], [ 0.000000e+00, %4974 ]
  %5004 = phi float [ %5000, %4991 ], [ 0.000000e+00, %4974 ]
  %5005 = call float @dx.op.binary.f32(i32 36, float %5003, float %5004)  ; FMin(a,b)
  %5006 = call float @dx.op.binary.f32(i32 36, float %5002, float %5005)  ; FMin(a,b)
  %5007 = fcmp fast ogt float %5006, 0.000000e+00
  br i1 %5007, label %5008, label %5183, !dx.controlflow.hints !63

; <label>:5008                                    ; preds = %5001
  %5009 = fmul fast float %5002, %4968
  %5010 = fmul fast float %5003, %4969
  %5011 = fmul fast float %5004, %4970
  %5012 = fsub fast float %4957, %4594
  %5013 = fsub fast float %4958, %4593
  %5014 = fsub fast float %4959, %4592
  %5015 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.unary.f32(i32 25, float %5015)  ; Rsqrt(value)
  %5017 = fmul fast float %5016, %5012
  %5018 = fmul fast float %5016, %5013
  %5019 = fmul fast float %5016, %5014
  %5020 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4590, float %4589, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5023 = fmul fast float %5022, %5022
  %5024 = fmul fast float %5023, %4621
  %5025 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5026 = fmul fast float %5025, %5022
  %5027 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = fmul fast float %5027, %5027
  %5029 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5030 = fsub fast float 1.000000e+00, %4604
  %5031 = call float @dx.op.binary.f32(i32 35, float %5030, float 0x3F847AE140000000)  ; FMax(a,b)
  %5032 = fmul fast float %5031, %5031
  %5033 = fmul fast float %5032, %5032
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = fmul fast float %4608, %4608
  %5036 = fmul fast float %5035, %5034
  %5037 = fadd fast float %5036, %5033
  %5038 = bitcast float %5037 to i32
  %5039 = ashr i32 %5038, 1
  %5040 = add nsw i32 %5039, 532487669
  %5041 = bitcast i32 %5040 to float
  %5042 = fadd fast float %5041, %4608
  %5043 = fmul fast float %5033, %5028
  %5044 = fsub fast float 1.000000e+00, %5028
  %5045 = fadd fast float %5044, %5043
  %5046 = fmul fast float %5029, %5029
  %5047 = fmul fast float %5046, %5034
  %5048 = fadd fast float %5047, %5033
  %5049 = bitcast float %5048 to i32
  %5050 = ashr i32 %5049, 1
  %5051 = add nsw i32 %5050, 532487669
  %5052 = bitcast i32 %5051 to float
  %5053 = fadd fast float %5052, %5029
  %5054 = fmul fast float %5045, %5045
  %5055 = fmul fast float %5054, %5042
  %5056 = fmul fast float %5055, %5053
  %5057 = fdiv fast float 0x3FF0A00000000000, %5056
  %5058 = fmul fast float %5057, %5033
  %5059 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5060 = fsub fast float 1.000000e+00, %5059
  %5061 = bitcast float %5060 to i32
  %5062 = sitofp i32 %5061 to float
  %5063 = fmul fast float %5062, 5.000000e+00
  %5064 = fadd fast float %5063, 0xC1EFBF8940000000
  %5065 = fptosi float %5064 to i32
  %5066 = bitcast i32 %5065 to float
  %5067 = fsub fast float 1.000000e+00, %4598
  %5068 = fsub fast float 1.000000e+00, %4599
  %5069 = fsub fast float 1.000000e+00, %4606
  %5070 = fmul fast float %5066, %5067
  %5071 = fmul fast float %5066, %5068
  %5072 = fmul fast float %5066, %5069
  %5073 = fadd fast float %5070, %4598
  %5074 = fadd fast float %5071, %4599
  %5075 = fadd fast float %5072, %4606
  br i1 %4868, label %5076, label %5099

; <label>:5076                                    ; preds = %5008
  %5077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3692, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = fadd fast float %5078, -5.000000e-01
  %5082 = fadd fast float %5079, -5.000000e-01
  %5083 = fadd fast float %5080, -5.000000e-01
  %5084 = fmul fast float %4598, 4.000000e+00
  %5085 = fmul fast float %5084, %5067
  %5086 = fmul fast float %5085, %5081
  %5087 = fmul fast float %4599, 4.000000e+00
  %5088 = fmul fast float %5087, %5068
  %5089 = fmul fast float %5088, %5082
  %5090 = fmul fast float %4606, 4.000000e+00
  %5091 = fmul fast float %5090, %5069
  %5092 = fmul fast float %5091, %5083
  %5093 = fadd fast float %5086, %5073
  %5094 = fadd fast float %5089, %5074
  %5095 = fadd fast float %5092, %5075
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  br label %5099

; <label>:5099                                    ; preds = %5076, %5008
  %5100 = phi float [ %5096, %5076 ], [ %5073, %5008 ]
  %5101 = phi float [ %5097, %5076 ], [ %5074, %5008 ]
  %5102 = phi float [ %5098, %5076 ], [ %5075, %5008 ]
  %5103 = fmul fast float %5020, 9.843750e-01
  %5104 = fadd fast float %5103, 7.812500e-03
  %5105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %5104, float %4858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 3
  %5108 = fmul fast float %5106, %4598
  %5109 = fmul fast float %5106, %4599
  %5110 = fmul fast float %5106, %4606
  %5111 = fadd fast float %5108, %5107
  %5112 = fadd fast float %5109, %5107
  %5113 = fadd fast float %5110, %5107
  br i1 %4868, label %5114, label %5137

; <label>:5114                                    ; preds = %5099
  %5115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %3692, float %5020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.f32 %5115, 2
  %5119 = fadd fast float %5116, -5.000000e-01
  %5120 = fadd fast float %5117, -5.000000e-01
  %5121 = fadd fast float %5118, -5.000000e-01
  %5122 = fmul fast float %4598, 4.000000e+00
  %5123 = fmul fast float %5122, %5067
  %5124 = fmul fast float %5123, %5119
  %5125 = fmul fast float %4599, 4.000000e+00
  %5126 = fmul fast float %5125, %5068
  %5127 = fmul fast float %5126, %5120
  %5128 = fmul fast float %4606, 4.000000e+00
  %5129 = fmul fast float %5128, %5069
  %5130 = fmul fast float %5129, %5121
  %5131 = fadd fast float %5124, %5111
  %5132 = fadd fast float %5127, %5112
  %5133 = fadd fast float %5130, %5113
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  br label %5137

; <label>:5137                                    ; preds = %5114, %5099
  %5138 = phi float [ %5134, %5114 ], [ %5111, %5099 ]
  %5139 = phi float [ %5135, %5114 ], [ %5112, %5099 ]
  %5140 = phi float [ %5136, %5114 ], [ %5113, %5099 ]
  %5141 = call float @dx.op.binary.f32(i32 35, float %5139, float %5140)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5138, float %5141)  ; FMax(a,b)
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = fmul fast float %5100, %5058
  %5145 = fmul fast float %5101, %5058
  %5146 = fmul fast float %5102, %5058
  %5147 = fsub fast float 1.000000e+00, %5021
  %5148 = bitcast float %5147 to i32
  %5149 = sitofp i32 %5148 to float
  %5150 = fmul fast float %5149, 5.000000e+00
  %5151 = fadd fast float %5150, 0xC1EFBF8940000000
  %5152 = fptosi float %5151 to i32
  %5153 = bitcast i32 %5152 to float
  %5154 = fmul fast float %5153, %3693
  %5155 = fmul fast float %5143, %5154
  %5156 = fmul fast float %5155, %4918
  %5157 = fmul fast float %5155, %4919
  %5158 = fmul fast float %5155, %4920
  %5159 = fadd fast float %5156, %5144
  %5160 = fadd fast float %5157, %5145
  %5161 = fadd fast float %5158, %5146
  %5162 = fmul fast float %5026, %5009
  %5163 = fmul fast float %5162, %5143
  %5164 = fmul fast float %5026, %5010
  %5165 = fmul fast float %5164, %5143
  %5166 = fmul fast float %5026, %5011
  %5167 = fmul fast float %5166, %5143
  %5168 = fmul fast float %5162, %5159
  %5169 = fmul fast float %5164, %5160
  %5170 = fmul fast float %5166, %5161
  %5171 = fadd fast float %5163, %4902
  %5172 = fmul fast float %5171, %3689
  %5173 = fadd fast float %5165, %4903
  %5174 = fmul fast float %5173, %3689
  %5175 = fadd fast float %5167, %4904
  %5176 = fmul fast float %5175, %3689
  %5177 = fadd fast float %5168, %4945
  %5178 = fmul fast float %5177, %3689
  %5179 = fadd fast float %5169, %4948
  %5180 = fmul fast float %5179, %3689
  %5181 = fadd fast float %5170, %4951
  %5182 = fmul fast float %5181, %3689
  br label %5183

; <label>:5183                                    ; preds = %5137, %5001, %4895
  %5184 = phi float [ %4946, %4895 ], [ %4946, %5001 ], [ %5178, %5137 ]
  %5185 = phi float [ %4949, %4895 ], [ %4949, %5001 ], [ %5180, %5137 ]
  %5186 = phi float [ %4952, %4895 ], [ %4952, %5001 ], [ %5182, %5137 ]
  %5187 = phi float [ %4941, %4895 ], [ %4941, %5001 ], [ %5172, %5137 ]
  %5188 = phi float [ %4942, %4895 ], [ %4942, %5001 ], [ %5174, %5137 ]
  %5189 = phi float [ %4943, %4895 ], [ %4943, %5001 ], [ %5176, %5137 ]
  %5190 = call float @dx.op.unary.f32(i32 24, float %4595)  ; Sqrt(value)
  %5191 = call float @dx.op.unary.f32(i32 24, float %4596)  ; Sqrt(value)
  %5192 = call float @dx.op.unary.f32(i32 24, float %4597)  ; Sqrt(value)
  %5193 = fmul fast float %5190, %5187
  %5194 = fmul fast float %5191, %5188
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 0
  br i1 %196, label %5197, label %5217

; <label>:5197                                    ; preds = %5183
  %5198 = fadd fast float %5189, %3695
  %5199 = fmul fast float %5198, %3696
  %5200 = fsub fast float 1.000000e+00, %3696
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5204 = fmul fast float %5203, %5201
  %5205 = fadd fast float %5204, %5199
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = fmul fast float %5207, %4924
  %5209 = fsub fast float %5205, %5208
  %5210 = fadd fast float %5194, %5193
  %5211 = fmul fast float %5196, %5210
  %5212 = extractvalue %dx.types.CBufRet.f32 %5202, 1
  %5213 = fsub fast float %5209, %5212
  %5214 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5215 = fmul fast float %5213, %5214
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  br label %5233

; <label>:5217                                    ; preds = %5183
  %5218 = fmul fast float %5192, %5189
  %5219 = fmul fast float %5196, %5193
  %5220 = fmul fast float %5196, %5194
  %5221 = fmul fast float %5218, %5196
  %5222 = add i32 %23, 356
  %5223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5222, i32 undef)  ; BufferLoad(srv,index,wot)
  %5224 = extractvalue %dx.types.ResRet.i32 %5223, 0
  %5225 = and i32 %5224, 32
  %5226 = icmp eq i32 %5225, 0
  br i1 %5226, label %5233, label %5227

; <label>:5227                                    ; preds = %5217
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = fmul fast float %5229, 0x3FE99999A0000000
  %5231 = fadd fast float %5229, %5219
  %5232 = fadd fast float %5230, %5221
  br label %5233

; <label>:5233                                    ; preds = %5227, %5217, %5197
  %5234 = phi float [ %5211, %5197 ], [ %5231, %5227 ], [ %5219, %5217 ]
  %5235 = phi float [ %5216, %5197 ], [ %5220, %5227 ], [ %5220, %5217 ]
  %5236 = phi float [ 1.000000e+00, %5197 ], [ %5232, %5227 ], [ %5221, %5217 ]
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = fmul fast float %5238, %5185
  %5240 = fmul fast float %5238, %5186
  %5241 = fadd fast float %5185, %5184
  %5242 = select i1 %196, float %5241, float %5184
  %5243 = fmul float %5242, %5238
  %5244 = select i1 %196, float 0.000000e+00, float %5239
  %5245 = select i1 %196, float 0.000000e+00, float %5240
  %5246 = fmul fast float %5234, %5190
  %5247 = fmul fast float %5235, %5191
  %5248 = fmul fast float %5236, %5192
  %5249 = fadd fast float %5243, %5246
  %5250 = fadd fast float %5244, %5247
  %5251 = fadd fast float %5245, %5248
  %5252 = select i1 %196, float %5235, float %5250
  %5253 = select i1 %196, float %5236, float %5251
  %5254 = call float @dx.op.binary.f32(i32 36, float %5249, float 3.225500e+04)  ; FMin(a,b)
  %5255 = call float @dx.op.binary.f32(i32 36, float %5252, float 3.225500e+04)  ; FMin(a,b)
  %5256 = call float @dx.op.binary.f32(i32 36, float %5253, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5254)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5255)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5256)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!32 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !62}
!34 = !{!35, !60, null}
!35 = !{!36, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59}
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
!47 = !{i32 5, !"SH_RED", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 5, i8 0, !46}
!48 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 6, i8 0, !46}
!49 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 7, i8 0, !46}
!50 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 8, i8 0, !44}
!51 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 9, i8 0, !46}
!52 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 10, i8 0, !42}
!53 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 11, i8 0, !46}
!54 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 12, i8 0, !44}
!55 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !37, i8 1, i32 1, i8 1, i32 13, i8 0, !56}
!56 = !{i32 3, i32 1}
!57 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !37, i8 1, i32 1, i8 4, i32 14, i8 0, !56}
!58 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !37, i8 1, i32 1, i8 1, i32 13, i8 1, !56}
!59 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!60 = !{!61}
!61 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !46}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}

