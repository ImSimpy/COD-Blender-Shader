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
; shader hash: c6b09642cc3a33d1ed2ee92d83302a28
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
; cbuffer 
; {
;
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb5     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture     f32          2d      T9             t1     1
;                                   texture     f32          2d     T10             t2     1
;                                   texture     f32          2d     T11             t3     1
;                                   texture     f32          2d     T12             t4     1
;                                   texture     f32          2d     T13     t69,space2     1
;                                   texture    byte         r/o     T14     t18,space1     1
;                                   texture    byte         r/o     T15     t19,space1     1
;                                   texture    byte         r/o     T16     t20,space1     1
;                                   texture    byte         r/o     T17     t21,space1     1
;                                   texture     f32          2d     T18     t37,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture    byte         r/o     T29     t10,space1     1
;                                   texture    byte         r/o     T30     t68,space1     1
;                                   texture     f32          2d     T31      t0,space2     1
;                                   texture    byte         r/o     T32     t11,space1     1
;                                   texture    byte         r/o     T33     t13,space1     1
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
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
%CinematicConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %75
  %83 = fmul fast float %81, %76
  %84 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = bitcast float %84 to i32
  %86 = ashr i32 %85, 1
  %87 = sub nsw i32 1597250115, %86
  %88 = bitcast i32 %87 to float
  %89 = fmul fast float %88, %67
  %90 = fmul fast float %88, %68
  %91 = fmul fast float %88, %69
  %92 = fmul fast float %68, %65
  %93 = fmul fast float %69, %64
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %69, %63
  %96 = fmul fast float %67, %65
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %67, %64
  %99 = fmul fast float %68, %63
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %94, %66
  %102 = fmul fast float %97, %66
  %103 = fmul fast float %100, %66
  %104 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %56
  %110 = fmul fast float %108, %57
  %111 = fmul fast float %108, %58
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fcmp fast une float %113, 0.000000e+00
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %82, 2.000000e+00
  %119 = fmul fast float %118, %116
  %120 = fmul fast float %83, 2.000000e+00
  %121 = fmul fast float %120, %117
  %122 = fsub fast float 1.000000e+00, %119
  %123 = fsub fast float 1.000000e+00, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = select i1 %114, float %125, float %129
  %133 = select i1 %114, float %126, float %130
  %134 = select i1 %114, float %127, float %131
  %135 = fmul fast float %132, %122
  %136 = fmul fast float %133, %122
  %137 = fmul fast float %134, %122
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = select i1 %114, float %139, float %143
  %147 = select i1 %114, float %140, float %144
  %148 = select i1 %114, float %141, float %145
  %149 = fmul fast float %146, %123
  %150 = fmul fast float %147, %123
  %151 = fmul fast float %148, %123
  %152 = fadd fast float %149, %135
  %153 = fadd fast float %150, %136
  %154 = fadd fast float %151, %137
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = select i1 %114, float %156, float %160
  %164 = select i1 %114, float %157, float %161
  %165 = select i1 %114, float %158, float %162
  %166 = fadd fast float %152, %163
  %167 = fadd fast float %153, %164
  %168 = fadd fast float %154, %165
  %169 = fmul fast float %166, %77
  %170 = fmul fast float %167, %77
  %171 = fmul fast float %168, %77
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %82
  %176 = fmul fast float %174, %83
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 114688
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float %175, float 0.000000e+00
  %182 = select i1 %180, float %176, float 0.000000e+00
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fmul fast float %184, 2.550000e+02
  %186 = fptoui float %185 to i32
  %187 = select i1 %180, i32 %186, i32 0
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 3
  %190 = and i32 %189, 3
  %191 = icmp ne i32 %190, 0
  %192 = and i32 %189, 4
  %193 = icmp ne i32 %192, 0
  %194 = and i1 %191, %193
  br i1 %194, label %195, label %204

; <label>:195                                     ; preds = %0
  %196 = fmul fast float %117, %83
  %197 = fmul fast float %116, %82
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %33, float %197, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fcmp fast olt float %200, %202
  br label %207

; <label>:204                                     ; preds = %0
  %205 = icmp eq i32 %192, 0
  %206 = and i1 %191, %205
  br label %207

; <label>:207                                     ; preds = %204, %195
  %208 = phi i1 [ %203, %195 ], [ %206, %204 ]
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %82, 2.560000e+02
  %213 = frem fast float %83, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, %211
  %219 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %220 = add i32 %38, 216
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %234 = add i32 %38, 36
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %38, 288
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = fmul fast float %245, 0x3F50624DE0000000
  %249 = fmul fast float %247, 0x3F50624DE0000000
  %250 = add i32 %38, 232
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = add i32 %38, 52
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %38, 304
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %275, 0x3F50624DE0000000
  %279 = fmul fast float %277, 0x3F50624DE0000000
  %280 = add i32 %38, 248
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %282, 8
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %282, 16
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = add i32 %38, 68
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %38, 320
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %305, 0x3F50624DE0000000
  %309 = fmul fast float %307, 0x3F50624DE0000000
  %310 = add i32 %38, 264
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %312, 8
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %312, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = add i32 %38, 84
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %38, 336
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = fmul fast float %335, 0x3F50624DE0000000
  %339 = fmul fast float %337, 0x3F50624DE0000000
  %340 = add i32 %38, 348
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 32
  %344 = icmp eq i32 %343, 0
  %345 = and i32 %342, 64
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %342, 128
  %348 = icmp eq i32 %347, 0
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %366, label %353

; <label>:353                                     ; preds = %207
  %354 = add i32 %38, 488
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %356, 0
  %358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %358, %dx.types.Handle %79, float %70, float %71, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = fmul fast float %360, %72
  %364 = fmul fast float %361, %73
  %365 = fmul fast float %362, %74
  br label %366

; <label>:366                                     ; preds = %353, %207
  %367 = phi float [ %74, %207 ], [ %365, %353 ]
  %368 = phi float [ %73, %207 ], [ %364, %353 ]
  %369 = phi float [ %72, %207 ], [ %363, %353 ]
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %393, label %374

; <label>:374                                     ; preds = %366
  %375 = add i32 %38, 44
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 1
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %379, float %369, float 1.000000e+00
  %381 = add i32 %38, 60
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %368, float 1.000000e+00
  %387 = add i32 %38, 76
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 1
  %391 = icmp ne i32 %390, 0
  %392 = select i1 %391, float %367, float 1.000000e+00
  br label %393

; <label>:393                                     ; preds = %374, %366
  %394 = phi float [ %367, %366 ], [ %392, %374 ]
  %395 = phi float [ %368, %366 ], [ %386, %374 ]
  %396 = phi float [ %369, %366 ], [ %380, %374 ]
  %397 = lshr i32 %371, 20
  %398 = and i32 %397, 3
  %399 = add nuw nsw i32 %398, 1
  %400 = add i32 %38, 24
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %38, 28
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = or i32 %405, %402
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %819, label %408

; <label>:408                                     ; preds = %393
  %409 = and i32 %402, 262144
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %43, float 1.000000e+00
  %412 = select i1 %410, float %44, float 0.000000e+00
  %413 = select i1 %410, float %45, float 0.000000e+00
  %414 = select i1 %410, float %46, float 1.000000e+00
  %415 = select i1 %410, float %47, float %70
  %416 = select i1 %410, float %48, float %71
  %417 = add i32 %38, 284
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %419, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = fmul fast float %421, 0x3F50624DE0000000
  %423 = add i32 %38, 88
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 16
  %427 = and i32 %426, 255
  %428 = lshr i32 %425, 24
  %429 = add i32 %38, 292
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %38, 32
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = lshr i32 %438, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = shl i32 %438, 4
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %438, 7
  %446 = and i32 %445, 32752
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %450 = fmul fast float %449, 1.000000e+03
  %451 = fmul fast float %248, %450
  %452 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %453 = fadd fast float %452, %238
  %454 = fmul fast float %249, %450
  %455 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %456 = fadd fast float %455, %240
  %457 = fmul fast float %422, %450
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = fmul fast float %458, 0x401921FB60000000
  %460 = fadd fast float %459, %441
  %461 = call float @dx.op.unary.f32(i32 13, float %460)  ; Sin(value)
  %462 = call float @dx.op.unary.f32(i32 12, float %460)  ; Cos(value)
  %463 = fsub fast float -0.000000e+00, %461
  %464 = fadd fast float %415, -5.000000e-01
  %465 = fadd fast float %416, -5.000000e-01
  %466 = fmul fast float %433, %464
  %467 = fmul fast float %435, %465
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fmul fast float %444, %468
  %471 = fmul fast float %447, %469
  %472 = fmul fast float %462, %470
  %473 = call float @dx.op.tertiary.f32(i32 46, float %463, float %471, float %472)  ; FMad(a,b,c)
  %474 = fmul fast float %461, %470
  %475 = call float @dx.op.tertiary.f32(i32 46, float %462, float %471, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %453, %473
  %477 = fadd fast float %456, %475
  %478 = icmp ugt i32 %427, 1
  %479 = icmp ugt i32 %425, 33554431
  %480 = or i1 %479, %478
  br i1 %480, label %481, label %506

; <label>:481                                     ; preds = %408
  %482 = add i32 %38, 228
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %449, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = mul nuw nsw i32 %427, %428
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %488, %490
  %492 = call float @dx.op.unary.f32(i32 27, float %491)  ; Round_ni(value)
  %493 = fptoui float %492 to i32
  %494 = urem i32 %493, %427
  %495 = udiv i32 %493, %428
  %496 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %498 = uitofp i32 %494 to float
  %499 = uitofp i32 %495 to float
  %500 = fadd fast float %496, %498
  %501 = fadd fast float %497, %499
  %502 = uitofp i32 %427 to float
  %503 = uitofp i32 %428 to float
  %504 = fdiv fast float %500, %502
  %505 = fdiv fast float %501, %503
  br label %506

; <label>:506                                     ; preds = %481, %408
  %507 = phi float [ %504, %481 ], [ %476, %408 ]
  %508 = phi float [ %505, %481 ], [ %477, %408 ]
  %509 = and i32 %402, 16
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %707, label %511

; <label>:511                                     ; preds = %506
  %512 = add i32 %38, 376
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %514, 0
  %516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %516, %dx.types.Handle %78, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = and i32 %425, 255
  %523 = uitofp i32 %522 to float
  %524 = lshr i32 %425, 8
  %525 = and i32 %524, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %521, %523
  %528 = fadd fast float %527, %526
  %529 = fmul fast float %528, 0x3F70101000000000
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 512
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %542, label %534

; <label>:534                                     ; preds = %511
  %535 = add i32 %38, 456
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %539, %dx.types.Handle %79, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  br label %542

; <label>:542                                     ; preds = %534, %511
  %543 = phi float [ %541, %534 ], [ 1.000000e+00, %511 ]
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 33554432
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %654, label %548

; <label>:548                                     ; preds = %542
  %549 = add i32 %38, 224
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %551, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %38, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 24
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = and i32 %562, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %562, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %562, 16
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = add i32 %38, 220
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = bitcast float %518 to i32
  %595 = ashr i32 %594, 1
  %596 = sub nsw i32 1597463174, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %518, 5.000000e-01
  %599 = fmul fast float %597, %597
  %600 = fmul fast float %599, %598
  %601 = fsub fast float 1.500000e+00, %600
  %602 = fmul fast float %597, %518
  %603 = fmul fast float %602, %601
  %604 = bitcast float %519 to i32
  %605 = ashr i32 %604, 1
  %606 = sub nsw i32 1597463174, %605
  %607 = bitcast i32 %606 to float
  %608 = fmul fast float %519, 5.000000e-01
  %609 = fmul fast float %607, %607
  %610 = fmul fast float %609, %608
  %611 = fsub fast float 1.500000e+00, %610
  %612 = fmul fast float %607, %519
  %613 = fmul fast float %612, %611
  %614 = bitcast float %520 to i32
  %615 = ashr i32 %614, 1
  %616 = sub nsw i32 1597463174, %615
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %520, 5.000000e-01
  %619 = fmul fast float %617, %617
  %620 = fmul fast float %619, %618
  %621 = fsub fast float 1.500000e+00, %620
  %622 = fmul fast float %617, %520
  %623 = fmul fast float %622, %621
  %624 = fsub fast float %603, %585
  %625 = fsub fast float %613, %589
  %626 = fsub fast float %623, %593
  %627 = fmul fast float %624, %553
  %628 = fmul fast float %625, %555
  %629 = fmul fast float %626, %560
  %630 = fadd fast float %627, %568
  %631 = fadd fast float %628, %572
  %632 = fadd fast float %629, %576
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fmul fast float %635, %635
  %639 = fsub fast float %636, %518
  %640 = fsub fast float %637, %519
  %641 = fsub fast float %638, %520
  %642 = fmul fast float %639, %543
  %643 = fmul fast float %640, %543
  %644 = fmul fast float %641, %543
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %565, %529
  %649 = fsub fast float %648, %582
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fsub fast float %650, %529
  %652 = fmul fast float %651, %543
  %653 = fadd fast float %652, %529
  br label %707

; <label>:654                                     ; preds = %542
  %655 = and i32 %545, 134217728
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %691, label %657

; <label>:657                                     ; preds = %654
  %658 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fmul fast float %661, %543
  %665 = fmul fast float %662, %543
  %666 = fmul fast float %663, %543
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = fmul fast float %667, 2.000000e+00
  %674 = fsub fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %670
  %676 = fadd fast float %675, %673
  %677 = fmul fast float %676, %670
  %678 = fmul fast float %668, 2.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %671
  %681 = fadd fast float %680, %678
  %682 = fmul fast float %681, %671
  %683 = fmul fast float %669, 2.000000e+00
  %684 = fsub fast float 1.000000e+00, %683
  %685 = fmul fast float %684, %672
  %686 = fadd fast float %685, %683
  %687 = fmul fast float %686, %672
  %688 = fmul fast float %677, %677
  %689 = fmul fast float %682, %682
  %690 = fmul fast float %687, %687
  br label %707

; <label>:691                                     ; preds = %654
  %692 = fmul fast float %225, %225
  %693 = fmul fast float %229, %229
  %694 = fmul fast float %233, %233
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fmul fast float %543, %695
  %699 = fmul fast float %543, %696
  %700 = fmul fast float %543, %697
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fmul fast float %701, %518
  %705 = fmul fast float %702, %519
  %706 = fmul fast float %703, %520
  br label %707

; <label>:707                                     ; preds = %691, %657, %548, %506
  %708 = phi float [ %653, %548 ], [ %529, %657 ], [ %529, %691 ], [ 0x3FA23C0BE0000000, %506 ]
  %709 = phi float [ %645, %548 ], [ %688, %657 ], [ %704, %691 ], [ 1.000000e+00, %506 ]
  %710 = phi float [ %646, %548 ], [ %689, %657 ], [ %705, %691 ], [ 1.000000e+00, %506 ]
  %711 = phi float [ %647, %548 ], [ %690, %657 ], [ %706, %691 ], [ 1.000000e+00, %506 ]
  %712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.i32 %712, 1
  %714 = and i32 %713, 1
  %715 = icmp ne i32 %714, 0
  %716 = add i32 %38, 356
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 32
  %720 = icmp ne i32 %719, 0
  %721 = and i1 %715, %720
  %722 = select i1 %721, float 1.000000e+00, float %709
  %723 = select i1 %721, float 0x3FD3333340000000, float %710
  %724 = select i1 %721, float 0x3FD3333340000000, float %711
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 32
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %801, label %729

; <label>:729                                     ; preds = %707
  %730 = add i32 %38, 92
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %38, 392
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %78, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = and i32 %732, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %732, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = lshr i32 %732, 16
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101000000000
  %752 = fmul fast float %739, %744
  %753 = fadd fast float %752, %747
  %754 = fmul fast float %753, 0x3F70101000000000
  %755 = fadd fast float %740, -5.000000e-01
  %756 = fadd fast float %742, -5.000000e-01
  %757 = fmul fast float %755, %751
  %758 = fmul fast float %756, %751
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %759, 2.000000e+00
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fmul fast float %760, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fadd fast float %762, %764
  %766 = fmul fast float %765, 5.000000e-01
  %767 = fsub fast float %762, %764
  %768 = fmul fast float %767, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float %770, %771
  %773 = call float @dx.op.dot3.f32(i32 55, float %766, float %768, float %772, float %766, float %768, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %766, %774
  %776 = fmul fast float %768, %774
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 67108864
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %797, label %781

; <label>:781                                     ; preds = %729
  %782 = add i32 %38, 280
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = lshr i32 %784, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = fsub fast float %754, %792
  %794 = fmul fast float %793, %786
  %795 = fadd fast float %794, %790
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  br label %797

; <label>:797                                     ; preds = %781, %729
  %798 = phi float [ %796, %781 ], [ %754, %729 ]
  %799 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %411, float %412)  ; Dot2(ax,ay,bx,by)
  %800 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  br label %801

; <label>:801                                     ; preds = %797, %707
  %802 = phi float [ %798, %797 ], [ 0x3FD6666660000000, %707 ]
  %803 = phi float [ %799, %797 ], [ 0.000000e+00, %707 ]
  %804 = phi float [ %800, %797 ], [ 0.000000e+00, %707 ]
  %805 = phi float [ %741, %797 ], [ 1.000000e+00, %707 ]
  %806 = add i32 %38, 96
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = lshr i32 %808, 8
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = fmul fast float %813, %814
  %816 = fadd fast float %815, %810
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  br label %819

; <label>:819                                     ; preds = %801, %393
  %820 = phi float [ 0.000000e+00, %393 ], [ %803, %801 ]
  %821 = phi float [ 0.000000e+00, %393 ], [ %804, %801 ]
  %822 = phi float [ 0.000000e+00, %393 ], [ %722, %801 ]
  %823 = phi float [ 0.000000e+00, %393 ], [ %723, %801 ]
  %824 = phi float [ 0.000000e+00, %393 ], [ %724, %801 ]
  %825 = phi float [ 0.000000e+00, %393 ], [ %708, %801 ]
  %826 = phi float [ 0.000000e+00, %393 ], [ 1.000000e+00, %801 ]
  %827 = phi float [ 0.000000e+00, %393 ], [ %802, %801 ]
  %828 = phi float [ 0.000000e+00, %393 ], [ %805, %801 ]
  %829 = phi float [ 0.000000e+00, %393 ], [ %818, %801 ]
  br i1 %344, label %1488, label %830

; <label>:830                                     ; preds = %819
  %831 = icmp ult i32 %399, 2
  %832 = add i32 %38, 40
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %38, 44
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = or i32 %837, %834
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %1488, label %840

; <label>:840                                     ; preds = %830
  %841 = and i32 %834, 262144
  %842 = icmp ne i32 %841, 0
  %843 = select i1 %842, float %43, float 1.000000e+00
  %844 = select i1 %842, float %44, float 0.000000e+00
  %845 = select i1 %842, float %45, float 0.000000e+00
  %846 = select i1 %842, float %46, float 1.000000e+00
  %847 = select i1 %842, float %47, float %70
  %848 = select i1 %842, float %48, float %71
  %849 = add i32 %38, 300
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = lshr i32 %851, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = fmul fast float %853, 0x3F50624DE0000000
  %855 = add i32 %38, 104
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = lshr i32 %857, 16
  %859 = and i32 %858, 255
  %860 = lshr i32 %857, 24
  %861 = add i32 %38, 308
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 65535
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = lshr i32 %863, 16
  %867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %866)  ; LegacyF16ToF32(value)
  %868 = add i32 %38, 48
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = lshr i32 %870, 22
  %872 = shl nuw nsw i32 %871, 5
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = shl i32 %870, 4
  %875 = and i32 %874, 32752
  %876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %875)  ; LegacyF16ToF32(value)
  %877 = lshr i32 %870, 7
  %878 = and i32 %877, 32752
  %879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %878)  ; LegacyF16ToF32(value)
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 3
  %882 = fmul fast float %881, 1.000000e+03
  %883 = fmul fast float %278, %882
  %884 = call float @dx.op.unary.f32(i32 22, float %883)  ; Frc(value)
  %885 = fadd fast float %884, %268
  %886 = fmul fast float %279, %882
  %887 = call float @dx.op.unary.f32(i32 22, float %886)  ; Frc(value)
  %888 = fadd fast float %887, %270
  %889 = fmul fast float %854, %882
  %890 = call float @dx.op.unary.f32(i32 22, float %889)  ; Frc(value)
  %891 = fmul fast float %890, 0x401921FB60000000
  %892 = fadd fast float %891, %873
  %893 = call float @dx.op.unary.f32(i32 13, float %892)  ; Sin(value)
  %894 = call float @dx.op.unary.f32(i32 12, float %892)  ; Cos(value)
  %895 = fsub fast float -0.000000e+00, %893
  %896 = fadd fast float %847, -5.000000e-01
  %897 = fadd fast float %848, -5.000000e-01
  %898 = fmul fast float %865, %896
  %899 = fmul fast float %867, %897
  %900 = fadd fast float %898, 5.000000e-01
  %901 = fadd fast float %899, 5.000000e-01
  %902 = fmul fast float %876, %900
  %903 = fmul fast float %879, %901
  %904 = fmul fast float %894, %902
  %905 = call float @dx.op.tertiary.f32(i32 46, float %895, float %903, float %904)  ; FMad(a,b,c)
  %906 = fmul fast float %893, %902
  %907 = call float @dx.op.tertiary.f32(i32 46, float %894, float %903, float %906)  ; FMad(a,b,c)
  %908 = fadd fast float %885, %905
  %909 = fadd fast float %888, %907
  %910 = icmp ugt i32 %859, 1
  %911 = icmp ugt i32 %857, 33554431
  %912 = or i1 %911, %910
  br i1 %912, label %913, label %938

; <label>:913                                     ; preds = %840
  %914 = add i32 %38, 244
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = lshr i32 %916, 16
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = fmul fast float %881, %918
  %920 = call float @dx.op.unary.f32(i32 22, float %919)  ; Frc(value)
  %921 = mul nuw nsw i32 %859, %860
  %922 = uitofp i32 %921 to float
  %923 = fmul fast float %920, %922
  %924 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %925 = fptoui float %924 to i32
  %926 = urem i32 %925, %859
  %927 = udiv i32 %925, %860
  %928 = call float @dx.op.unary.f32(i32 22, float %908)  ; Frc(value)
  %929 = call float @dx.op.unary.f32(i32 22, float %909)  ; Frc(value)
  %930 = uitofp i32 %926 to float
  %931 = uitofp i32 %927 to float
  %932 = fadd fast float %928, %930
  %933 = fadd fast float %929, %931
  %934 = uitofp i32 %859 to float
  %935 = uitofp i32 %860 to float
  %936 = fdiv fast float %932, %934
  %937 = fdiv fast float %933, %935
  br label %938

; <label>:938                                     ; preds = %913, %840
  %939 = phi float [ %936, %913 ], [ %908, %840 ]
  %940 = phi float [ %937, %913 ], [ %909, %840 ]
  %941 = and i32 %834, 256
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %989, label %943

; <label>:943                                     ; preds = %938
  %944 = add i32 %38, 444
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = add i32 %946, 0
  %948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %948, %dx.types.Handle %79, float %939, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = add i32 %38, 116
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = shl i32 %953, 4
  %955 = and i32 %954, 32752
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %953, 7
  %958 = and i32 %957, 32752
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fsub fast float 1.000000e+00, %396
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %962 = bitcast float %396 to i32
  %963 = sitofp i32 %962 to float
  %964 = fadd fast float %963, 0xC1CFBF8940000000
  %965 = fmul fast float %959, %964
  %966 = fadd fast float %965, 0x41CFBF8940000000
  %967 = fptosi float %966 to i32
  %968 = bitcast i32 %967 to float
  %969 = bitcast float %961 to i32
  %970 = sitofp i32 %969 to float
  %971 = fadd fast float %970, 0xC1CFBF8940000000
  %972 = fmul fast float %971, %959
  %973 = fadd fast float %972, 0x41CFBF8940000000
  %974 = fptosi float %973 to i32
  %975 = bitcast i32 %974 to float
  %976 = fmul fast float %968, %956
  %977 = fmul fast float %975, %956
  %978 = fsub fast float %961, %976
  %979 = fadd fast float %977, %961
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = fsub fast float %950, %980
  %983 = fsub fast float %981, %980
  %984 = bitcast float %983 to i32
  %985 = sub nsw i32 2129859010, %984
  %986 = bitcast i32 %985 to float
  %987 = fmul fast float %986, %982
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  br label %989

; <label>:989                                     ; preds = %943, %938
  %990 = phi float [ %988, %943 ], [ %396, %938 ]
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 128
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1011, label %995

; <label>:995                                     ; preds = %989
  %996 = add i32 %38, 428
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %79, float %939, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 524288
  %1006 = icmp ne i32 %1005, 0
  %1007 = fcmp fast ogt float %1002, 0x3FE0101020000000
  %1008 = select i1 %1007, float 1.000000e+00, float 0.000000e+00
  %1009 = select i1 %1006, float %1008, float %1002
  %1010 = fmul fast float %1009, %990
  br label %1011

; <label>:1011                                    ; preds = %995, %989
  %1012 = phi float [ %1010, %995 ], [ %990, %989 ]
  %1013 = fcmp fast ult float %1012, 0x3F70101020000000
  br i1 %1013, label %1488, label %1014

; <label>:1014                                    ; preds = %1011
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 16
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1217, label %1019

; <label>:1019                                    ; preds = %1014
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = add i32 %38, 380
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = add i32 %1024, 0
  %1026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1026, %dx.types.Handle %78, float %939, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = and i32 %1021, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = lshr i32 %1021, 8
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1031, %1033
  %1038 = fadd fast float %1037, %1036
  %1039 = fmul fast float %1038, 0x3F70101000000000
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 512
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1052, label %1044

; <label>:1044                                    ; preds = %1019
  %1045 = add i32 %38, 460
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = add i32 %1047, 0
  %1049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1049, %dx.types.Handle %79, float %939, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  br label %1052

; <label>:1052                                    ; preds = %1044, %1019
  %1053 = phi float [ %1051, %1044 ], [ 1.000000e+00, %1019 ]
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = and i32 %1055, 33554432
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1164, label %1058

; <label>:1058                                    ; preds = %1052
  %1059 = add i32 %38, 240
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = and i32 %1061, 65535
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1061, 16
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = add i32 %38, 244
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 65535
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = lshr i32 %1072, 24
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1074, 0x3F70101020000000
  %1076 = and i32 %1072, 255
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 0x3F70101020000000
  %1079 = lshr i32 %1072, 8
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1081, 0x3F70101020000000
  %1083 = lshr i32 %1072, 16
  %1084 = and i32 %1083, 255
  %1085 = uitofp i32 %1084 to float
  %1086 = fmul fast float %1085, 0x3F70101020000000
  %1087 = add i32 %38, 236
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 24
  %1091 = uitofp i32 %1090 to float
  %1092 = fmul fast float %1091, 0x3F70101020000000
  %1093 = and i32 %1089, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3F70101020000000
  %1096 = lshr i32 %1089, 8
  %1097 = and i32 %1096, 255
  %1098 = uitofp i32 %1097 to float
  %1099 = fmul fast float %1098, 0x3F70101020000000
  %1100 = lshr i32 %1089, 16
  %1101 = and i32 %1100, 255
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F70101020000000
  %1104 = bitcast float %1028 to i32
  %1105 = ashr i32 %1104, 1
  %1106 = sub nsw i32 1597463174, %1105
  %1107 = bitcast i32 %1106 to float
  %1108 = fmul fast float %1028, 5.000000e-01
  %1109 = fmul fast float %1107, %1107
  %1110 = fmul fast float %1109, %1108
  %1111 = fsub fast float 1.500000e+00, %1110
  %1112 = fmul fast float %1107, %1028
  %1113 = fmul fast float %1112, %1111
  %1114 = bitcast float %1029 to i32
  %1115 = ashr i32 %1114, 1
  %1116 = sub nsw i32 1597463174, %1115
  %1117 = bitcast i32 %1116 to float
  %1118 = fmul fast float %1029, 5.000000e-01
  %1119 = fmul fast float %1117, %1117
  %1120 = fmul fast float %1119, %1118
  %1121 = fsub fast float 1.500000e+00, %1120
  %1122 = fmul fast float %1117, %1029
  %1123 = fmul fast float %1122, %1121
  %1124 = bitcast float %1030 to i32
  %1125 = ashr i32 %1124, 1
  %1126 = sub nsw i32 1597463174, %1125
  %1127 = bitcast i32 %1126 to float
  %1128 = fmul fast float %1030, 5.000000e-01
  %1129 = fmul fast float %1127, %1127
  %1130 = fmul fast float %1129, %1128
  %1131 = fsub fast float 1.500000e+00, %1130
  %1132 = fmul fast float %1127, %1030
  %1133 = fmul fast float %1132, %1131
  %1134 = fsub fast float %1113, %1095
  %1135 = fsub fast float %1123, %1099
  %1136 = fsub fast float %1133, %1103
  %1137 = fmul fast float %1134, %1063
  %1138 = fmul fast float %1135, %1065
  %1139 = fmul fast float %1136, %1070
  %1140 = fadd fast float %1137, %1078
  %1141 = fadd fast float %1138, %1082
  %1142 = fadd fast float %1139, %1086
  %1143 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1144 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1145 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1146 = fmul fast float %1143, %1143
  %1147 = fmul fast float %1144, %1144
  %1148 = fmul fast float %1145, %1145
  %1149 = fsub fast float %1146, %1028
  %1150 = fsub fast float %1147, %1029
  %1151 = fsub fast float %1148, %1030
  %1152 = fmul fast float %1149, %1053
  %1153 = fmul fast float %1150, %1053
  %1154 = fmul fast float %1151, %1053
  %1155 = fadd fast float %1152, %1028
  %1156 = fadd fast float %1153, %1029
  %1157 = fadd fast float %1154, %1030
  %1158 = fadd fast float %1075, %1039
  %1159 = fsub fast float %1158, %1092
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fsub fast float %1160, %1039
  %1162 = fmul fast float %1161, %1053
  %1163 = fadd fast float %1162, %1039
  br label %1217

; <label>:1164                                    ; preds = %1052
  %1165 = and i32 %1055, 134217728
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1201, label %1167

; <label>:1167                                    ; preds = %1164
  %1168 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %1169 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1170 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1171 = fadd fast float %1168, -5.000000e-01
  %1172 = fadd fast float %1169, -5.000000e-01
  %1173 = fadd fast float %1170, -5.000000e-01
  %1174 = fmul fast float %1171, %1053
  %1175 = fmul fast float %1172, %1053
  %1176 = fmul fast float %1173, %1053
  %1177 = fadd fast float %1174, 5.000000e-01
  %1178 = fadd fast float %1175, 5.000000e-01
  %1179 = fadd fast float %1176, 5.000000e-01
  %1180 = call float @dx.op.unary.f32(i32 24, float %1028)  ; Sqrt(value)
  %1181 = call float @dx.op.unary.f32(i32 24, float %1029)  ; Sqrt(value)
  %1182 = call float @dx.op.unary.f32(i32 24, float %1030)  ; Sqrt(value)
  %1183 = fmul fast float %1177, 2.000000e+00
  %1184 = fsub fast float 1.000000e+00, %1183
  %1185 = fmul fast float %1184, %1180
  %1186 = fadd fast float %1185, %1183
  %1187 = fmul fast float %1186, %1180
  %1188 = fmul fast float %1178, 2.000000e+00
  %1189 = fsub fast float 1.000000e+00, %1188
  %1190 = fmul fast float %1189, %1181
  %1191 = fadd fast float %1190, %1188
  %1192 = fmul fast float %1191, %1181
  %1193 = fmul fast float %1179, 2.000000e+00
  %1194 = fsub fast float 1.000000e+00, %1193
  %1195 = fmul fast float %1194, %1182
  %1196 = fadd fast float %1195, %1193
  %1197 = fmul fast float %1196, %1182
  %1198 = fmul fast float %1187, %1187
  %1199 = fmul fast float %1192, %1192
  %1200 = fmul fast float %1197, %1197
  br label %1217

; <label>:1201                                    ; preds = %1164
  %1202 = fmul fast float %255, %255
  %1203 = fmul fast float %259, %259
  %1204 = fmul fast float %263, %263
  %1205 = fadd fast float %1202, -1.000000e+00
  %1206 = fadd fast float %1203, -1.000000e+00
  %1207 = fadd fast float %1204, -1.000000e+00
  %1208 = fmul fast float %1053, %1205
  %1209 = fmul fast float %1053, %1206
  %1210 = fmul fast float %1053, %1207
  %1211 = fadd fast float %1208, 1.000000e+00
  %1212 = fadd fast float %1209, 1.000000e+00
  %1213 = fadd fast float %1210, 1.000000e+00
  %1214 = fmul fast float %1211, %1028
  %1215 = fmul fast float %1212, %1029
  %1216 = fmul fast float %1213, %1030
  br label %1217

; <label>:1217                                    ; preds = %1201, %1167, %1058, %1014
  %1218 = phi float [ %1163, %1058 ], [ %1039, %1167 ], [ %1039, %1201 ], [ 0x3FA23C0BE0000000, %1014 ]
  %1219 = phi float [ %1155, %1058 ], [ %1198, %1167 ], [ %1214, %1201 ], [ 1.000000e+00, %1014 ]
  %1220 = phi float [ %1156, %1058 ], [ %1199, %1167 ], [ %1215, %1201 ], [ 1.000000e+00, %1014 ]
  %1221 = phi float [ %1157, %1058 ], [ %1200, %1167 ], [ %1216, %1201 ], [ 1.000000e+00, %1014 ]
  %1222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.i32 %1222, 1
  %1224 = and i32 %1223, 1
  %1225 = icmp ne i32 %1224, 0
  %1226 = add i32 %38, 356
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 32
  %1230 = icmp ne i32 %1229, 0
  %1231 = and i1 %1225, %1230
  %1232 = select i1 %1231, float 1.000000e+00, float %1219
  %1233 = select i1 %1231, float 0x3FD3333340000000, float %1220
  %1234 = select i1 %1231, float 0x3FD3333340000000, float %1221
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 32
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1311, label %1239

; <label>:1239                                    ; preds = %1217
  %1240 = add i32 %38, 108
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %38, 396
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %78, float %939, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = and i32 %1242, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1242, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1242, 16
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101000000000
  %1262 = fmul fast float %1249, %1254
  %1263 = fadd fast float %1262, %1257
  %1264 = fmul fast float %1263, 0x3F70101000000000
  %1265 = fadd fast float %1250, -5.000000e-01
  %1266 = fadd fast float %1252, -5.000000e-01
  %1267 = fmul fast float %1265, %1261
  %1268 = fmul fast float %1266, %1261
  %1269 = fadd fast float %1267, 5.000000e-01
  %1270 = fadd fast float %1268, 5.000000e-01
  %1271 = fmul fast float %1269, 2.000000e+00
  %1272 = fadd fast float %1271, -1.000000e+00
  %1273 = fmul fast float %1270, 2.000000e+00
  %1274 = fadd fast float %1273, -1.000000e+00
  %1275 = fadd fast float %1272, %1274
  %1276 = fmul fast float %1275, 5.000000e-01
  %1277 = fsub fast float %1272, %1274
  %1278 = fmul fast float %1277, 5.000000e-01
  %1279 = call float @dx.op.unary.f32(i32 6, float %1276)  ; FAbs(value)
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = call float @dx.op.unary.f32(i32 6, float %1278)  ; FAbs(value)
  %1282 = fsub fast float %1280, %1281
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1278, float %1282, float %1276, float %1278, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = call float @dx.op.unary.f32(i32 25, float %1283)  ; Rsqrt(value)
  %1285 = fmul fast float %1276, %1284
  %1286 = fmul fast float %1278, %1284
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 67108864
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1307, label %1291

; <label>:1291                                    ; preds = %1239
  %1292 = add i32 %38, 296
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 65535
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1294, 16
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = fsub fast float %1264, %1302
  %1304 = fmul fast float %1303, %1296
  %1305 = fadd fast float %1304, %1300
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  br label %1307

; <label>:1307                                    ; preds = %1291, %1239
  %1308 = phi float [ %1306, %1291 ], [ %1264, %1239 ]
  %1309 = call float @dx.op.dot2.f32(i32 54, float %1285, float %1286, float %843, float %844)  ; Dot2(ax,ay,bx,by)
  %1310 = call float @dx.op.dot2.f32(i32 54, float %1285, float %1286, float %845, float %846)  ; Dot2(ax,ay,bx,by)
  br label %1311

; <label>:1311                                    ; preds = %1307, %1217
  %1312 = phi float [ %1308, %1307 ], [ 0x3FD6666660000000, %1217 ]
  %1313 = phi float [ %1309, %1307 ], [ 0.000000e+00, %1217 ]
  %1314 = phi float [ %1310, %1307 ], [ 0.000000e+00, %1217 ]
  %1315 = phi float [ %1251, %1307 ], [ 1.000000e+00, %1217 ]
  %1316 = add i32 %38, 112
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = lshr i32 %1318, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1325 = fmul fast float %1323, %1324
  %1326 = fadd fast float %1325, %1320
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  br i1 %831, label %1329, label %1334

; <label>:1329                                    ; preds = %1311
  %1330 = fsub fast float 1.000000e+00, %1012
  %1331 = fmul fast float %1330, %822
  %1332 = fmul fast float %1330, %823
  %1333 = fmul fast float %1330, %824
  br label %1334

; <label>:1334                                    ; preds = %1329, %1311
  %1335 = phi float [ %1331, %1329 ], [ %822, %1311 ]
  %1336 = phi float [ %1332, %1329 ], [ %823, %1311 ]
  %1337 = phi float [ %1333, %1329 ], [ %824, %1311 ]
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 3
  %1341 = icmp eq i32 %1340, 3
  br i1 %1341, label %1408, label %1342

; <label>:1342                                    ; preds = %1334
  %1343 = and i32 %1339, 16
  %1344 = icmp ne i32 %1343, 0
  %1345 = select i1 %1344, float %1012, float 0.000000e+00
  %1346 = icmp eq i32 %1340, 0
  br i1 %1346, label %1347, label %1363

; <label>:1347                                    ; preds = %1342
  %1348 = fsub fast float %1232, %1335
  %1349 = fsub fast float %1233, %1336
  %1350 = fsub fast float %1234, %1337
  %1351 = fmul fast float %1345, %1348
  %1352 = fmul fast float %1345, %1349
  %1353 = fmul fast float %1345, %1350
  %1354 = fadd fast float %1351, %1335
  %1355 = fadd fast float %1352, %1336
  %1356 = fadd fast float %1353, %1337
  %1357 = fsub fast float %1218, %825
  %1358 = fmul fast float %1345, %1357
  %1359 = fadd fast float %1358, %825
  %1360 = fsub fast float %1328, %829
  %1361 = fmul fast float %1345, %1360
  %1362 = fadd fast float %1361, %829
  br label %1408

; <label>:1363                                    ; preds = %1342
  %1364 = icmp eq i32 %1340, 1
  br i1 %1364, label %1365, label %1378

; <label>:1365                                    ; preds = %1363
  %1366 = fadd fast float %1232, -1.000000e+00
  %1367 = fadd fast float %1233, -1.000000e+00
  %1368 = fadd fast float %1234, -1.000000e+00
  %1369 = fmul fast float %1345, %1366
  %1370 = fmul fast float %1345, %1367
  %1371 = fmul fast float %1345, %1368
  %1372 = fadd fast float %1369, 1.000000e+00
  %1373 = fadd fast float %1370, 1.000000e+00
  %1374 = fadd fast float %1371, 1.000000e+00
  %1375 = fmul fast float %1372, %1335
  %1376 = fmul fast float %1373, %1336
  %1377 = fmul fast float %1374, %1337
  br label %1408

; <label>:1378                                    ; preds = %1363
  %1379 = icmp eq i32 %1340, 2
  br i1 %1379, label %1380, label %1408

; <label>:1380                                    ; preds = %1378
  %1381 = call float @dx.op.unary.f32(i32 24, float %1232)  ; Sqrt(value)
  %1382 = call float @dx.op.unary.f32(i32 24, float %1233)  ; Sqrt(value)
  %1383 = call float @dx.op.unary.f32(i32 24, float %1234)  ; Sqrt(value)
  %1384 = fadd fast float %1381, -5.000000e-01
  %1385 = fadd fast float %1382, -5.000000e-01
  %1386 = fadd fast float %1383, -5.000000e-01
  %1387 = fmul fast float %1384, %1345
  %1388 = fmul fast float %1385, %1345
  %1389 = fmul fast float %1386, %1345
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = fadd fast float %1388, 5.000000e-01
  %1392 = fadd fast float %1389, 5.000000e-01
  %1393 = fmul fast float %1390, 2.000000e+00
  %1394 = fsub fast float 1.000000e+00, %1393
  %1395 = fmul fast float %1394, %1335
  %1396 = fadd fast float %1395, %1393
  %1397 = fmul fast float %1396, %1335
  %1398 = fmul fast float %1391, 2.000000e+00
  %1399 = fsub fast float 1.000000e+00, %1398
  %1400 = fmul fast float %1399, %1336
  %1401 = fadd fast float %1400, %1398
  %1402 = fmul fast float %1401, %1336
  %1403 = fmul fast float %1392, 2.000000e+00
  %1404 = fsub fast float 1.000000e+00, %1403
  %1405 = fmul fast float %1404, %1337
  %1406 = fadd fast float %1405, %1403
  %1407 = fmul fast float %1406, %1337
  br label %1408

; <label>:1408                                    ; preds = %1380, %1378, %1365, %1347, %1334
  %1409 = phi float [ %1335, %1334 ], [ %1397, %1380 ], [ %1335, %1378 ], [ %1375, %1365 ], [ %1354, %1347 ]
  %1410 = phi float [ %1336, %1334 ], [ %1402, %1380 ], [ %1336, %1378 ], [ %1376, %1365 ], [ %1355, %1347 ]
  %1411 = phi float [ %1337, %1334 ], [ %1407, %1380 ], [ %1337, %1378 ], [ %1377, %1365 ], [ %1356, %1347 ]
  %1412 = phi float [ %825, %1334 ], [ %825, %1380 ], [ %825, %1378 ], [ %825, %1365 ], [ %1359, %1347 ]
  %1413 = phi float [ %829, %1334 ], [ %829, %1380 ], [ %829, %1378 ], [ %829, %1365 ], [ %1362, %1347 ]
  %1414 = and i32 %1339, 12
  %1415 = icmp eq i32 %1414, 12
  br i1 %1415, label %1488, label %1416

; <label>:1416                                    ; preds = %1408
  %1417 = and i32 %1339, 2097184
  %1418 = icmp eq i32 %1417, 2097184
  %1419 = select i1 %1418, float %1012, float 0.000000e+00
  %1420 = and i32 %1339, 4194336
  %1421 = icmp eq i32 %1420, 4194336
  %1422 = select i1 %1421, float %1012, float 0.000000e+00
  %1423 = and i32 %1339, 8388640
  %1424 = icmp eq i32 %1423, 8388640
  %1425 = select i1 %1424, float %1012, float 0.000000e+00
  %1426 = icmp eq i32 %1414, 0
  br i1 %1426, label %1427, label %1440

; <label>:1427                                    ; preds = %1416
  %1428 = fsub fast float %1313, %820
  %1429 = fsub fast float %1314, %821
  %1430 = fmul fast float %1419, %1428
  %1431 = fmul fast float %1419, %1429
  %1432 = fadd fast float %1430, %820
  %1433 = fadd fast float %1431, %821
  %1434 = fsub fast float %1315, %828
  %1435 = fmul fast float %1422, %1434
  %1436 = fadd fast float %1435, %828
  %1437 = fsub fast float %1312, %827
  %1438 = fmul fast float %1425, %1437
  %1439 = fadd fast float %1438, %827
  br label %1488

; <label>:1440                                    ; preds = %1416
  %1441 = icmp eq i32 %1414, 4
  br i1 %1441, label %1442, label %1474

; <label>:1442                                    ; preds = %1440
  %1443 = fmul fast float %1419, %1313
  %1444 = fmul fast float %1419, %1314
  %1445 = fadd fast float %1443, %820
  %1446 = fadd fast float %1444, %821
  %1447 = call float @dx.op.binary.f32(i32 36, float %828, float %1315)  ; FMin(a,b)
  %1448 = fsub fast float %1447, %828
  %1449 = fmul fast float %1448, %1422
  %1450 = fadd fast float %1449, %828
  %1451 = fadd fast float %1312, %827
  %1452 = fmul fast float %1451, 0x3FF337FAE0000000
  %1453 = fmul fast float %827, %827
  %1454 = fmul fast float %1312, %1312
  %1455 = fadd fast float %1454, %1453
  %1456 = fmul fast float %1455, 0x3FE5152B00000000
  %1457 = fmul fast float %827, 0xBFCC1F85E0000000
  %1458 = fmul fast float %1457, %1312
  %1459 = fadd fast float %1458, 0xBFE1363700000000
  %1460 = fadd fast float %1459, %1452
  %1461 = fsub fast float %1460, %1456
  %1462 = fmul fast float %1451, 0x3FBA6F0D00000000
  %1463 = fmul fast float %1455, 0x3FD0432880000000
  %1464 = fmul fast float %827, 0xBFEF110800000000
  %1465 = fmul fast float %1464, %1312
  %1466 = fadd fast float %1465, 1.000000e+00
  %1467 = fsub fast float %1466, %1462
  %1468 = fadd fast float %1467, %1463
  %1469 = fdiv fast float %1461, %1468
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float %1470, %827
  %1472 = fmul fast float %1471, %1425
  %1473 = fadd fast float %1472, %827
  br label %1488

; <label>:1474                                    ; preds = %1440
  %1475 = icmp eq i32 %1414, 8
  br i1 %1475, label %1476, label %1488

; <label>:1476                                    ; preds = %1474
  %1477 = fmul fast float %1419, %1313
  %1478 = fmul fast float %1419, %1314
  %1479 = fadd fast float %1477, %820
  %1480 = fadd fast float %1478, %821
  %1481 = call float @dx.op.binary.f32(i32 36, float %828, float %1315)  ; FMin(a,b)
  %1482 = fsub fast float %1481, %828
  %1483 = fmul fast float %1482, %1422
  %1484 = fadd fast float %1483, %828
  %1485 = fsub fast float %1312, %827
  %1486 = fmul fast float %1425, %1485
  %1487 = fadd fast float %1486, %827
  br label %1488

; <label>:1488                                    ; preds = %1476, %1474, %1442, %1427, %1408, %1011, %830, %819
  %1489 = phi float [ %820, %1408 ], [ %820, %1011 ], [ %820, %819 ], [ %1479, %1476 ], [ %820, %1474 ], [ %1445, %1442 ], [ %1432, %1427 ], [ %820, %830 ]
  %1490 = phi float [ %821, %1408 ], [ %821, %1011 ], [ %821, %819 ], [ %1480, %1476 ], [ %821, %1474 ], [ %1446, %1442 ], [ %1433, %1427 ], [ %821, %830 ]
  %1491 = phi float [ %1409, %1408 ], [ %822, %1011 ], [ %822, %819 ], [ %1409, %1476 ], [ %1409, %1474 ], [ %1409, %1442 ], [ %1409, %1427 ], [ %822, %830 ]
  %1492 = phi float [ %1410, %1408 ], [ %823, %1011 ], [ %823, %819 ], [ %1410, %1476 ], [ %1410, %1474 ], [ %1410, %1442 ], [ %1410, %1427 ], [ %823, %830 ]
  %1493 = phi float [ %1411, %1408 ], [ %824, %1011 ], [ %824, %819 ], [ %1411, %1476 ], [ %1411, %1474 ], [ %1411, %1442 ], [ %1411, %1427 ], [ %824, %830 ]
  %1494 = phi float [ %1412, %1408 ], [ %825, %1011 ], [ %825, %819 ], [ %1412, %1476 ], [ %1412, %1474 ], [ %1412, %1442 ], [ %1412, %1427 ], [ %825, %830 ]
  %1495 = phi float [ %827, %1408 ], [ %827, %1011 ], [ %827, %819 ], [ %1487, %1476 ], [ %827, %1474 ], [ %1473, %1442 ], [ %1439, %1427 ], [ %827, %830 ]
  %1496 = phi float [ %828, %1408 ], [ %828, %1011 ], [ %828, %819 ], [ %1484, %1476 ], [ %828, %1474 ], [ %1450, %1442 ], [ %1436, %1427 ], [ %828, %830 ]
  %1497 = phi float [ %1413, %1408 ], [ %829, %1011 ], [ %829, %819 ], [ %1413, %1476 ], [ %1413, %1474 ], [ %1413, %1442 ], [ %1413, %1427 ], [ %829, %830 ]
  br i1 %346, label %2156, label %1498

; <label>:1498                                    ; preds = %1488
  %1499 = icmp ult i32 %399, 3
  %1500 = add i32 %38, 56
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %38, 60
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = or i32 %1505, %1502
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %2156, label %1508

; <label>:1508                                    ; preds = %1498
  %1509 = and i32 %1502, 262144
  %1510 = icmp ne i32 %1509, 0
  %1511 = select i1 %1510, float %43, float 1.000000e+00
  %1512 = select i1 %1510, float %44, float 0.000000e+00
  %1513 = select i1 %1510, float %45, float 0.000000e+00
  %1514 = select i1 %1510, float %46, float 1.000000e+00
  %1515 = select i1 %1510, float %47, float %70
  %1516 = select i1 %1510, float %48, float %71
  %1517 = add i32 %38, 316
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = lshr i32 %1519, 16
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = fmul fast float %1521, 0x3F50624DE0000000
  %1523 = add i32 %38, 120
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = lshr i32 %1525, 16
  %1527 = and i32 %1526, 255
  %1528 = lshr i32 %1525, 24
  %1529 = add i32 %38, 324
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 65535
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = lshr i32 %1531, 16
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = add i32 %38, 64
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = lshr i32 %1538, 22
  %1540 = shl nuw nsw i32 %1539, 5
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = shl i32 %1538, 4
  %1543 = and i32 %1542, 32752
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1538, 7
  %1546 = and i32 %1545, 32752
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 3
  %1550 = fmul fast float %1549, 1.000000e+03
  %1551 = fmul fast float %308, %1550
  %1552 = call float @dx.op.unary.f32(i32 22, float %1551)  ; Frc(value)
  %1553 = fadd fast float %1552, %298
  %1554 = fmul fast float %309, %1550
  %1555 = call float @dx.op.unary.f32(i32 22, float %1554)  ; Frc(value)
  %1556 = fadd fast float %1555, %300
  %1557 = fmul fast float %1522, %1550
  %1558 = call float @dx.op.unary.f32(i32 22, float %1557)  ; Frc(value)
  %1559 = fmul fast float %1558, 0x401921FB60000000
  %1560 = fadd fast float %1559, %1541
  %1561 = call float @dx.op.unary.f32(i32 13, float %1560)  ; Sin(value)
  %1562 = call float @dx.op.unary.f32(i32 12, float %1560)  ; Cos(value)
  %1563 = fsub fast float -0.000000e+00, %1561
  %1564 = fadd fast float %1515, -5.000000e-01
  %1565 = fadd fast float %1516, -5.000000e-01
  %1566 = fmul fast float %1533, %1564
  %1567 = fmul fast float %1535, %1565
  %1568 = fadd fast float %1566, 5.000000e-01
  %1569 = fadd fast float %1567, 5.000000e-01
  %1570 = fmul fast float %1544, %1568
  %1571 = fmul fast float %1547, %1569
  %1572 = fmul fast float %1562, %1570
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %1563, float %1571, float %1572)  ; FMad(a,b,c)
  %1574 = fmul fast float %1561, %1570
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1562, float %1571, float %1574)  ; FMad(a,b,c)
  %1576 = fadd fast float %1553, %1573
  %1577 = fadd fast float %1556, %1575
  %1578 = icmp ugt i32 %1527, 1
  %1579 = icmp ugt i32 %1525, 33554431
  %1580 = or i1 %1579, %1578
  br i1 %1580, label %1581, label %1606

; <label>:1581                                    ; preds = %1508
  %1582 = add i32 %38, 260
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 16
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = fmul fast float %1549, %1586
  %1588 = call float @dx.op.unary.f32(i32 22, float %1587)  ; Frc(value)
  %1589 = mul nuw nsw i32 %1527, %1528
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1588, %1590
  %1592 = call float @dx.op.unary.f32(i32 27, float %1591)  ; Round_ni(value)
  %1593 = fptoui float %1592 to i32
  %1594 = urem i32 %1593, %1527
  %1595 = udiv i32 %1593, %1528
  %1596 = call float @dx.op.unary.f32(i32 22, float %1576)  ; Frc(value)
  %1597 = call float @dx.op.unary.f32(i32 22, float %1577)  ; Frc(value)
  %1598 = uitofp i32 %1594 to float
  %1599 = uitofp i32 %1595 to float
  %1600 = fadd fast float %1596, %1598
  %1601 = fadd fast float %1597, %1599
  %1602 = uitofp i32 %1527 to float
  %1603 = uitofp i32 %1528 to float
  %1604 = fdiv fast float %1600, %1602
  %1605 = fdiv fast float %1601, %1603
  br label %1606

; <label>:1606                                    ; preds = %1581, %1508
  %1607 = phi float [ %1604, %1581 ], [ %1576, %1508 ]
  %1608 = phi float [ %1605, %1581 ], [ %1577, %1508 ]
  %1609 = and i32 %1502, 256
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1657, label %1611

; <label>:1611                                    ; preds = %1606
  %1612 = add i32 %38, 448
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = add i32 %1614, 0
  %1616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1616, %dx.types.Handle %79, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = add i32 %38, 132
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = shl i32 %1621, 4
  %1623 = and i32 %1622, 32752
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = lshr i32 %1621, 7
  %1626 = and i32 %1625, 32752
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = fsub fast float 1.000000e+00, %395
  %1629 = call float @dx.op.binary.f32(i32 35, float %1628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1630 = bitcast float %395 to i32
  %1631 = sitofp i32 %1630 to float
  %1632 = fadd fast float %1631, 0xC1CFBF8940000000
  %1633 = fmul fast float %1627, %1632
  %1634 = fadd fast float %1633, 0x41CFBF8940000000
  %1635 = fptosi float %1634 to i32
  %1636 = bitcast i32 %1635 to float
  %1637 = bitcast float %1629 to i32
  %1638 = sitofp i32 %1637 to float
  %1639 = fadd fast float %1638, 0xC1CFBF8940000000
  %1640 = fmul fast float %1639, %1627
  %1641 = fadd fast float %1640, 0x41CFBF8940000000
  %1642 = fptosi float %1641 to i32
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1636, %1624
  %1645 = fmul fast float %1643, %1624
  %1646 = fsub fast float %1629, %1644
  %1647 = fadd fast float %1645, %1629
  %1648 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1650 = fsub fast float %1618, %1648
  %1651 = fsub fast float %1649, %1648
  %1652 = bitcast float %1651 to i32
  %1653 = sub nsw i32 2129859010, %1652
  %1654 = bitcast i32 %1653 to float
  %1655 = fmul fast float %1654, %1650
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  br label %1657

; <label>:1657                                    ; preds = %1611, %1606
  %1658 = phi float [ %1656, %1611 ], [ %395, %1606 ]
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 128
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1679, label %1663

; <label>:1663                                    ; preds = %1657
  %1664 = add i32 %38, 432
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %1666, 0
  %1668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1668, %dx.types.Handle %79, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 524288
  %1674 = icmp ne i32 %1673, 0
  %1675 = fcmp fast ogt float %1670, 0x3FE0101020000000
  %1676 = select i1 %1675, float 1.000000e+00, float 0.000000e+00
  %1677 = select i1 %1674, float %1676, float %1670
  %1678 = fmul fast float %1677, %1658
  br label %1679

; <label>:1679                                    ; preds = %1663, %1657
  %1680 = phi float [ %1678, %1663 ], [ %1658, %1657 ]
  %1681 = fcmp fast ult float %1680, 0x3F70101020000000
  br i1 %1681, label %2156, label %1682

; <label>:1682                                    ; preds = %1679
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 16
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1885, label %1687

; <label>:1687                                    ; preds = %1682
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = add i32 %38, 384
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = add i32 %1692, 0
  %1694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1694, %dx.types.Handle %78, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1699 = extractvalue %dx.types.ResRet.f32 %1695, 3
  %1700 = and i32 %1689, 255
  %1701 = uitofp i32 %1700 to float
  %1702 = lshr i32 %1689, 8
  %1703 = and i32 %1702, 255
  %1704 = uitofp i32 %1703 to float
  %1705 = fmul fast float %1699, %1701
  %1706 = fadd fast float %1705, %1704
  %1707 = fmul fast float %1706, 0x3F70101000000000
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 512
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1720, label %1712

; <label>:1712                                    ; preds = %1687
  %1713 = add i32 %38, 464
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %1715, 0
  %1717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1717, %dx.types.Handle %79, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  br label %1720

; <label>:1720                                    ; preds = %1712, %1687
  %1721 = phi float [ %1719, %1712 ], [ 1.000000e+00, %1687 ]
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 33554432
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %1832, label %1726

; <label>:1726                                    ; preds = %1720
  %1727 = add i32 %38, 256
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = and i32 %1729, 65535
  %1731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1730)  ; LegacyF16ToF32(value)
  %1732 = lshr i32 %1729, 16
  %1733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1732)  ; LegacyF16ToF32(value)
  %1734 = add i32 %38, 260
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 65535
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = lshr i32 %1740, 24
  %1742 = uitofp i32 %1741 to float
  %1743 = fmul fast float %1742, 0x3F70101020000000
  %1744 = and i32 %1740, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = fmul fast float %1745, 0x3F70101020000000
  %1747 = lshr i32 %1740, 8
  %1748 = and i32 %1747, 255
  %1749 = uitofp i32 %1748 to float
  %1750 = fmul fast float %1749, 0x3F70101020000000
  %1751 = lshr i32 %1740, 16
  %1752 = and i32 %1751, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1753, 0x3F70101020000000
  %1755 = add i32 %38, 252
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 24
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = and i32 %1757, 255
  %1762 = uitofp i32 %1761 to float
  %1763 = fmul fast float %1762, 0x3F70101020000000
  %1764 = lshr i32 %1757, 8
  %1765 = and i32 %1764, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = lshr i32 %1757, 16
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = fmul fast float %1770, 0x3F70101020000000
  %1772 = bitcast float %1696 to i32
  %1773 = ashr i32 %1772, 1
  %1774 = sub nsw i32 1597463174, %1773
  %1775 = bitcast i32 %1774 to float
  %1776 = fmul fast float %1696, 5.000000e-01
  %1777 = fmul fast float %1775, %1775
  %1778 = fmul fast float %1777, %1776
  %1779 = fsub fast float 1.500000e+00, %1778
  %1780 = fmul fast float %1775, %1696
  %1781 = fmul fast float %1780, %1779
  %1782 = bitcast float %1697 to i32
  %1783 = ashr i32 %1782, 1
  %1784 = sub nsw i32 1597463174, %1783
  %1785 = bitcast i32 %1784 to float
  %1786 = fmul fast float %1697, 5.000000e-01
  %1787 = fmul fast float %1785, %1785
  %1788 = fmul fast float %1787, %1786
  %1789 = fsub fast float 1.500000e+00, %1788
  %1790 = fmul fast float %1785, %1697
  %1791 = fmul fast float %1790, %1789
  %1792 = bitcast float %1698 to i32
  %1793 = ashr i32 %1792, 1
  %1794 = sub nsw i32 1597463174, %1793
  %1795 = bitcast i32 %1794 to float
  %1796 = fmul fast float %1698, 5.000000e-01
  %1797 = fmul fast float %1795, %1795
  %1798 = fmul fast float %1797, %1796
  %1799 = fsub fast float 1.500000e+00, %1798
  %1800 = fmul fast float %1795, %1698
  %1801 = fmul fast float %1800, %1799
  %1802 = fsub fast float %1781, %1763
  %1803 = fsub fast float %1791, %1767
  %1804 = fsub fast float %1801, %1771
  %1805 = fmul fast float %1802, %1731
  %1806 = fmul fast float %1803, %1733
  %1807 = fmul fast float %1804, %1738
  %1808 = fadd fast float %1805, %1746
  %1809 = fadd fast float %1806, %1750
  %1810 = fadd fast float %1807, %1754
  %1811 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1813 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1814 = fmul fast float %1811, %1811
  %1815 = fmul fast float %1812, %1812
  %1816 = fmul fast float %1813, %1813
  %1817 = fsub fast float %1814, %1696
  %1818 = fsub fast float %1815, %1697
  %1819 = fsub fast float %1816, %1698
  %1820 = fmul fast float %1817, %1721
  %1821 = fmul fast float %1818, %1721
  %1822 = fmul fast float %1819, %1721
  %1823 = fadd fast float %1820, %1696
  %1824 = fadd fast float %1821, %1697
  %1825 = fadd fast float %1822, %1698
  %1826 = fadd fast float %1743, %1707
  %1827 = fsub fast float %1826, %1760
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fsub fast float %1828, %1707
  %1830 = fmul fast float %1829, %1721
  %1831 = fadd fast float %1830, %1707
  br label %1885

; <label>:1832                                    ; preds = %1720
  %1833 = and i32 %1723, 134217728
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1869, label %1835

; <label>:1835                                    ; preds = %1832
  %1836 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1837 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1838 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1839 = fadd fast float %1836, -5.000000e-01
  %1840 = fadd fast float %1837, -5.000000e-01
  %1841 = fadd fast float %1838, -5.000000e-01
  %1842 = fmul fast float %1839, %1721
  %1843 = fmul fast float %1840, %1721
  %1844 = fmul fast float %1841, %1721
  %1845 = fadd fast float %1842, 5.000000e-01
  %1846 = fadd fast float %1843, 5.000000e-01
  %1847 = fadd fast float %1844, 5.000000e-01
  %1848 = call float @dx.op.unary.f32(i32 24, float %1696)  ; Sqrt(value)
  %1849 = call float @dx.op.unary.f32(i32 24, float %1697)  ; Sqrt(value)
  %1850 = call float @dx.op.unary.f32(i32 24, float %1698)  ; Sqrt(value)
  %1851 = fmul fast float %1845, 2.000000e+00
  %1852 = fsub fast float 1.000000e+00, %1851
  %1853 = fmul fast float %1852, %1848
  %1854 = fadd fast float %1853, %1851
  %1855 = fmul fast float %1854, %1848
  %1856 = fmul fast float %1846, 2.000000e+00
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fmul fast float %1857, %1849
  %1859 = fadd fast float %1858, %1856
  %1860 = fmul fast float %1859, %1849
  %1861 = fmul fast float %1847, 2.000000e+00
  %1862 = fsub fast float 1.000000e+00, %1861
  %1863 = fmul fast float %1862, %1850
  %1864 = fadd fast float %1863, %1861
  %1865 = fmul fast float %1864, %1850
  %1866 = fmul fast float %1855, %1855
  %1867 = fmul fast float %1860, %1860
  %1868 = fmul fast float %1865, %1865
  br label %1885

; <label>:1869                                    ; preds = %1832
  %1870 = fmul fast float %285, %285
  %1871 = fmul fast float %289, %289
  %1872 = fmul fast float %293, %293
  %1873 = fadd fast float %1870, -1.000000e+00
  %1874 = fadd fast float %1871, -1.000000e+00
  %1875 = fadd fast float %1872, -1.000000e+00
  %1876 = fmul fast float %1721, %1873
  %1877 = fmul fast float %1721, %1874
  %1878 = fmul fast float %1721, %1875
  %1879 = fadd fast float %1876, 1.000000e+00
  %1880 = fadd fast float %1877, 1.000000e+00
  %1881 = fadd fast float %1878, 1.000000e+00
  %1882 = fmul fast float %1879, %1696
  %1883 = fmul fast float %1880, %1697
  %1884 = fmul fast float %1881, %1698
  br label %1885

; <label>:1885                                    ; preds = %1869, %1835, %1726, %1682
  %1886 = phi float [ %1831, %1726 ], [ %1707, %1835 ], [ %1707, %1869 ], [ 0x3FA23C0BE0000000, %1682 ]
  %1887 = phi float [ %1823, %1726 ], [ %1866, %1835 ], [ %1882, %1869 ], [ 1.000000e+00, %1682 ]
  %1888 = phi float [ %1824, %1726 ], [ %1867, %1835 ], [ %1883, %1869 ], [ 1.000000e+00, %1682 ]
  %1889 = phi float [ %1825, %1726 ], [ %1868, %1835 ], [ %1884, %1869 ], [ 1.000000e+00, %1682 ]
  %1890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.i32 %1890, 1
  %1892 = and i32 %1891, 1
  %1893 = icmp ne i32 %1892, 0
  %1894 = add i32 %38, 356
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 32
  %1898 = icmp ne i32 %1897, 0
  %1899 = and i1 %1893, %1898
  %1900 = select i1 %1899, float 1.000000e+00, float %1887
  %1901 = select i1 %1899, float 0x3FD3333340000000, float %1888
  %1902 = select i1 %1899, float 0x3FD3333340000000, float %1889
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 32
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1979, label %1907

; <label>:1907                                    ; preds = %1885
  %1908 = add i32 %38, 124
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = add i32 %38, 400
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %1913, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1915, %dx.types.Handle %78, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = extractvalue %dx.types.ResRet.f32 %1916, 3
  %1921 = and i32 %1910, 255
  %1922 = uitofp i32 %1921 to float
  %1923 = lshr i32 %1910, 8
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = lshr i32 %1910, 16
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1928, 0x3F70101000000000
  %1930 = fmul fast float %1917, %1922
  %1931 = fadd fast float %1930, %1925
  %1932 = fmul fast float %1931, 0x3F70101000000000
  %1933 = fadd fast float %1918, -5.000000e-01
  %1934 = fadd fast float %1920, -5.000000e-01
  %1935 = fmul fast float %1933, %1929
  %1936 = fmul fast float %1934, %1929
  %1937 = fadd fast float %1935, 5.000000e-01
  %1938 = fadd fast float %1936, 5.000000e-01
  %1939 = fmul fast float %1937, 2.000000e+00
  %1940 = fadd fast float %1939, -1.000000e+00
  %1941 = fmul fast float %1938, 2.000000e+00
  %1942 = fadd fast float %1941, -1.000000e+00
  %1943 = fadd fast float %1940, %1942
  %1944 = fmul fast float %1943, 5.000000e-01
  %1945 = fsub fast float %1940, %1942
  %1946 = fmul fast float %1945, 5.000000e-01
  %1947 = call float @dx.op.unary.f32(i32 6, float %1944)  ; FAbs(value)
  %1948 = fsub fast float 1.000000e+00, %1947
  %1949 = call float @dx.op.unary.f32(i32 6, float %1946)  ; FAbs(value)
  %1950 = fsub fast float %1948, %1949
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1944, float %1946, float %1950, float %1944, float %1946, float %1950)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.unary.f32(i32 25, float %1951)  ; Rsqrt(value)
  %1953 = fmul fast float %1944, %1952
  %1954 = fmul fast float %1946, %1952
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 67108864
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1975, label %1959

; <label>:1959                                    ; preds = %1907
  %1960 = add i32 %38, 312
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 65535
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 65535
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = lshr i32 %1962, 16
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = fsub fast float %1932, %1970
  %1972 = fmul fast float %1971, %1964
  %1973 = fadd fast float %1972, %1968
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  br label %1975

; <label>:1975                                    ; preds = %1959, %1907
  %1976 = phi float [ %1974, %1959 ], [ %1932, %1907 ]
  %1977 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1511, float %1512)  ; Dot2(ax,ay,bx,by)
  %1978 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1513, float %1514)  ; Dot2(ax,ay,bx,by)
  br label %1979

; <label>:1979                                    ; preds = %1975, %1885
  %1980 = phi float [ %1976, %1975 ], [ 0x3FD6666660000000, %1885 ]
  %1981 = phi float [ %1977, %1975 ], [ 0.000000e+00, %1885 ]
  %1982 = phi float [ %1978, %1975 ], [ 0.000000e+00, %1885 ]
  %1983 = phi float [ %1919, %1975 ], [ 1.000000e+00, %1885 ]
  %1984 = add i32 %38, 128
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = and i32 %1986, 255
  %1988 = uitofp i32 %1987 to float
  %1989 = lshr i32 %1986, 8
  %1990 = and i32 %1989, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1901, float %1902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = fmul fast float %1991, %1992
  %1994 = fadd fast float %1993, %1988
  %1995 = fmul fast float %1994, 0x3F70101020000000
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  br i1 %1499, label %1997, label %2002

; <label>:1997                                    ; preds = %1979
  %1998 = fsub fast float 1.000000e+00, %1680
  %1999 = fmul fast float %1998, %1491
  %2000 = fmul fast float %1998, %1492
  %2001 = fmul fast float %1998, %1493
  br label %2002

; <label>:2002                                    ; preds = %1997, %1979
  %2003 = phi float [ %1999, %1997 ], [ %1491, %1979 ]
  %2004 = phi float [ %2000, %1997 ], [ %1492, %1979 ]
  %2005 = phi float [ %2001, %1997 ], [ %1493, %1979 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 3
  %2009 = icmp eq i32 %2008, 3
  br i1 %2009, label %2076, label %2010

; <label>:2010                                    ; preds = %2002
  %2011 = and i32 %2007, 16
  %2012 = icmp ne i32 %2011, 0
  %2013 = select i1 %2012, float %1680, float 0.000000e+00
  %2014 = icmp eq i32 %2008, 0
  br i1 %2014, label %2015, label %2031

; <label>:2015                                    ; preds = %2010
  %2016 = fsub fast float %1900, %2003
  %2017 = fsub fast float %1901, %2004
  %2018 = fsub fast float %1902, %2005
  %2019 = fmul fast float %2013, %2016
  %2020 = fmul fast float %2013, %2017
  %2021 = fmul fast float %2013, %2018
  %2022 = fadd fast float %2019, %2003
  %2023 = fadd fast float %2020, %2004
  %2024 = fadd fast float %2021, %2005
  %2025 = fsub fast float %1886, %1494
  %2026 = fmul fast float %2013, %2025
  %2027 = fadd fast float %2026, %1494
  %2028 = fsub fast float %1996, %1497
  %2029 = fmul fast float %2013, %2028
  %2030 = fadd fast float %2029, %1497
  br label %2076

; <label>:2031                                    ; preds = %2010
  %2032 = icmp eq i32 %2008, 1
  br i1 %2032, label %2033, label %2046

; <label>:2033                                    ; preds = %2031
  %2034 = fadd fast float %1900, -1.000000e+00
  %2035 = fadd fast float %1901, -1.000000e+00
  %2036 = fadd fast float %1902, -1.000000e+00
  %2037 = fmul fast float %2013, %2034
  %2038 = fmul fast float %2013, %2035
  %2039 = fmul fast float %2013, %2036
  %2040 = fadd fast float %2037, 1.000000e+00
  %2041 = fadd fast float %2038, 1.000000e+00
  %2042 = fadd fast float %2039, 1.000000e+00
  %2043 = fmul fast float %2040, %2003
  %2044 = fmul fast float %2041, %2004
  %2045 = fmul fast float %2042, %2005
  br label %2076

; <label>:2046                                    ; preds = %2031
  %2047 = icmp eq i32 %2008, 2
  br i1 %2047, label %2048, label %2076

; <label>:2048                                    ; preds = %2046
  %2049 = call float @dx.op.unary.f32(i32 24, float %1900)  ; Sqrt(value)
  %2050 = call float @dx.op.unary.f32(i32 24, float %1901)  ; Sqrt(value)
  %2051 = call float @dx.op.unary.f32(i32 24, float %1902)  ; Sqrt(value)
  %2052 = fadd fast float %2049, -5.000000e-01
  %2053 = fadd fast float %2050, -5.000000e-01
  %2054 = fadd fast float %2051, -5.000000e-01
  %2055 = fmul fast float %2052, %2013
  %2056 = fmul fast float %2053, %2013
  %2057 = fmul fast float %2054, %2013
  %2058 = fadd fast float %2055, 5.000000e-01
  %2059 = fadd fast float %2056, 5.000000e-01
  %2060 = fadd fast float %2057, 5.000000e-01
  %2061 = fmul fast float %2058, 2.000000e+00
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = fmul fast float %2062, %2003
  %2064 = fadd fast float %2063, %2061
  %2065 = fmul fast float %2064, %2003
  %2066 = fmul fast float %2059, 2.000000e+00
  %2067 = fsub fast float 1.000000e+00, %2066
  %2068 = fmul fast float %2067, %2004
  %2069 = fadd fast float %2068, %2066
  %2070 = fmul fast float %2069, %2004
  %2071 = fmul fast float %2060, 2.000000e+00
  %2072 = fsub fast float 1.000000e+00, %2071
  %2073 = fmul fast float %2072, %2005
  %2074 = fadd fast float %2073, %2071
  %2075 = fmul fast float %2074, %2005
  br label %2076

; <label>:2076                                    ; preds = %2048, %2046, %2033, %2015, %2002
  %2077 = phi float [ %2003, %2002 ], [ %2065, %2048 ], [ %2003, %2046 ], [ %2043, %2033 ], [ %2022, %2015 ]
  %2078 = phi float [ %2004, %2002 ], [ %2070, %2048 ], [ %2004, %2046 ], [ %2044, %2033 ], [ %2023, %2015 ]
  %2079 = phi float [ %2005, %2002 ], [ %2075, %2048 ], [ %2005, %2046 ], [ %2045, %2033 ], [ %2024, %2015 ]
  %2080 = phi float [ %1494, %2002 ], [ %1494, %2048 ], [ %1494, %2046 ], [ %1494, %2033 ], [ %2027, %2015 ]
  %2081 = phi float [ %1497, %2002 ], [ %1497, %2048 ], [ %1497, %2046 ], [ %1497, %2033 ], [ %2030, %2015 ]
  %2082 = and i32 %2007, 12
  %2083 = icmp eq i32 %2082, 12
  br i1 %2083, label %2156, label %2084

; <label>:2084                                    ; preds = %2076
  %2085 = and i32 %2007, 2097184
  %2086 = icmp eq i32 %2085, 2097184
  %2087 = select i1 %2086, float %1680, float 0.000000e+00
  %2088 = and i32 %2007, 4194336
  %2089 = icmp eq i32 %2088, 4194336
  %2090 = select i1 %2089, float %1680, float 0.000000e+00
  %2091 = and i32 %2007, 8388640
  %2092 = icmp eq i32 %2091, 8388640
  %2093 = select i1 %2092, float %1680, float 0.000000e+00
  %2094 = icmp eq i32 %2082, 0
  br i1 %2094, label %2095, label %2108

; <label>:2095                                    ; preds = %2084
  %2096 = fsub fast float %1981, %1489
  %2097 = fsub fast float %1982, %1490
  %2098 = fmul fast float %2087, %2096
  %2099 = fmul fast float %2087, %2097
  %2100 = fadd fast float %2098, %1489
  %2101 = fadd fast float %2099, %1490
  %2102 = fsub fast float %1983, %1496
  %2103 = fmul fast float %2090, %2102
  %2104 = fadd fast float %2103, %1496
  %2105 = fsub fast float %1980, %1495
  %2106 = fmul fast float %2093, %2105
  %2107 = fadd fast float %2106, %1495
  br label %2156

; <label>:2108                                    ; preds = %2084
  %2109 = icmp eq i32 %2082, 4
  br i1 %2109, label %2110, label %2142

; <label>:2110                                    ; preds = %2108
  %2111 = fmul fast float %2087, %1981
  %2112 = fmul fast float %2087, %1982
  %2113 = fadd fast float %2111, %1489
  %2114 = fadd fast float %2112, %1490
  %2115 = call float @dx.op.binary.f32(i32 36, float %1496, float %1983)  ; FMin(a,b)
  %2116 = fsub fast float %2115, %1496
  %2117 = fmul fast float %2116, %2090
  %2118 = fadd fast float %2117, %1496
  %2119 = fadd fast float %1980, %1495
  %2120 = fmul fast float %2119, 0x3FF337FAE0000000
  %2121 = fmul fast float %1495, %1495
  %2122 = fmul fast float %1980, %1980
  %2123 = fadd fast float %2122, %2121
  %2124 = fmul fast float %2123, 0x3FE5152B00000000
  %2125 = fmul fast float %1495, 0xBFCC1F85E0000000
  %2126 = fmul fast float %2125, %1980
  %2127 = fadd fast float %2126, 0xBFE1363700000000
  %2128 = fadd fast float %2127, %2120
  %2129 = fsub fast float %2128, %2124
  %2130 = fmul fast float %2119, 0x3FBA6F0D00000000
  %2131 = fmul fast float %2123, 0x3FD0432880000000
  %2132 = fmul fast float %1495, 0xBFEF110800000000
  %2133 = fmul fast float %2132, %1980
  %2134 = fadd fast float %2133, 1.000000e+00
  %2135 = fsub fast float %2134, %2130
  %2136 = fadd fast float %2135, %2131
  %2137 = fdiv fast float %2129, %2136
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2139 = fsub fast float %2138, %1495
  %2140 = fmul fast float %2139, %2093
  %2141 = fadd fast float %2140, %1495
  br label %2156

; <label>:2142                                    ; preds = %2108
  %2143 = icmp eq i32 %2082, 8
  br i1 %2143, label %2144, label %2156

; <label>:2144                                    ; preds = %2142
  %2145 = fmul fast float %2087, %1981
  %2146 = fmul fast float %2087, %1982
  %2147 = fadd fast float %2145, %1489
  %2148 = fadd fast float %2146, %1490
  %2149 = call float @dx.op.binary.f32(i32 36, float %1496, float %1983)  ; FMin(a,b)
  %2150 = fsub fast float %2149, %1496
  %2151 = fmul fast float %2150, %2090
  %2152 = fadd fast float %2151, %1496
  %2153 = fsub fast float %1980, %1495
  %2154 = fmul fast float %2093, %2153
  %2155 = fadd fast float %2154, %1495
  br label %2156

; <label>:2156                                    ; preds = %2144, %2142, %2110, %2095, %2076, %1679, %1498, %1488
  %2157 = phi float [ %1489, %2076 ], [ %1489, %1679 ], [ %1489, %1488 ], [ %2147, %2144 ], [ %1489, %2142 ], [ %2113, %2110 ], [ %2100, %2095 ], [ %1489, %1498 ]
  %2158 = phi float [ %1490, %2076 ], [ %1490, %1679 ], [ %1490, %1488 ], [ %2148, %2144 ], [ %1490, %2142 ], [ %2114, %2110 ], [ %2101, %2095 ], [ %1490, %1498 ]
  %2159 = phi float [ %2077, %2076 ], [ %1491, %1679 ], [ %1491, %1488 ], [ %2077, %2144 ], [ %2077, %2142 ], [ %2077, %2110 ], [ %2077, %2095 ], [ %1491, %1498 ]
  %2160 = phi float [ %2078, %2076 ], [ %1492, %1679 ], [ %1492, %1488 ], [ %2078, %2144 ], [ %2078, %2142 ], [ %2078, %2110 ], [ %2078, %2095 ], [ %1492, %1498 ]
  %2161 = phi float [ %2079, %2076 ], [ %1493, %1679 ], [ %1493, %1488 ], [ %2079, %2144 ], [ %2079, %2142 ], [ %2079, %2110 ], [ %2079, %2095 ], [ %1493, %1498 ]
  %2162 = phi float [ %2080, %2076 ], [ %1494, %1679 ], [ %1494, %1488 ], [ %2080, %2144 ], [ %2080, %2142 ], [ %2080, %2110 ], [ %2080, %2095 ], [ %1494, %1498 ]
  %2163 = phi float [ %1495, %2076 ], [ %1495, %1679 ], [ %1495, %1488 ], [ %2155, %2144 ], [ %1495, %2142 ], [ %2141, %2110 ], [ %2107, %2095 ], [ %1495, %1498 ]
  %2164 = phi float [ %1496, %2076 ], [ %1496, %1679 ], [ %1496, %1488 ], [ %2152, %2144 ], [ %1496, %2142 ], [ %2118, %2110 ], [ %2104, %2095 ], [ %1496, %1498 ]
  %2165 = phi float [ %2081, %2076 ], [ %1497, %1679 ], [ %1497, %1488 ], [ %2081, %2144 ], [ %2081, %2142 ], [ %2081, %2110 ], [ %2081, %2095 ], [ %1497, %1498 ]
  br i1 %348, label %2824, label %2166

; <label>:2166                                    ; preds = %2156
  %2167 = icmp ult i32 %399, 4
  %2168 = add i32 %38, 72
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = add i32 %38, 76
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = or i32 %2173, %2170
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2824, label %2176

; <label>:2176                                    ; preds = %2166
  %2177 = and i32 %2170, 262144
  %2178 = icmp ne i32 %2177, 0
  %2179 = select i1 %2178, float %43, float 1.000000e+00
  %2180 = select i1 %2178, float %44, float 0.000000e+00
  %2181 = select i1 %2178, float %45, float 0.000000e+00
  %2182 = select i1 %2178, float %46, float 1.000000e+00
  %2183 = select i1 %2178, float %47, float %70
  %2184 = select i1 %2178, float %48, float %71
  %2185 = add i32 %38, 332
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = lshr i32 %2187, 16
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = fmul fast float %2189, 0x3F50624DE0000000
  %2191 = add i32 %38, 136
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = lshr i32 %2193, 16
  %2195 = and i32 %2194, 255
  %2196 = lshr i32 %2193, 24
  %2197 = add i32 %38, 340
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 65535
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = lshr i32 %2199, 16
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = add i32 %38, 80
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 22
  %2208 = shl nuw nsw i32 %2207, 5
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = shl i32 %2206, 4
  %2211 = and i32 %2210, 32752
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = lshr i32 %2206, 7
  %2214 = and i32 %2213, 32752
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2218 = fmul fast float %2217, 1.000000e+03
  %2219 = fmul fast float %338, %2218
  %2220 = call float @dx.op.unary.f32(i32 22, float %2219)  ; Frc(value)
  %2221 = fadd fast float %2220, %328
  %2222 = fmul fast float %339, %2218
  %2223 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2224 = fadd fast float %2223, %330
  %2225 = fmul fast float %2190, %2218
  %2226 = call float @dx.op.unary.f32(i32 22, float %2225)  ; Frc(value)
  %2227 = fmul fast float %2226, 0x401921FB60000000
  %2228 = fadd fast float %2227, %2209
  %2229 = call float @dx.op.unary.f32(i32 13, float %2228)  ; Sin(value)
  %2230 = call float @dx.op.unary.f32(i32 12, float %2228)  ; Cos(value)
  %2231 = fsub fast float -0.000000e+00, %2229
  %2232 = fadd fast float %2183, -5.000000e-01
  %2233 = fadd fast float %2184, -5.000000e-01
  %2234 = fmul fast float %2201, %2232
  %2235 = fmul fast float %2203, %2233
  %2236 = fadd fast float %2234, 5.000000e-01
  %2237 = fadd fast float %2235, 5.000000e-01
  %2238 = fmul fast float %2212, %2236
  %2239 = fmul fast float %2215, %2237
  %2240 = fmul fast float %2230, %2238
  %2241 = call float @dx.op.tertiary.f32(i32 46, float %2231, float %2239, float %2240)  ; FMad(a,b,c)
  %2242 = fmul fast float %2229, %2238
  %2243 = call float @dx.op.tertiary.f32(i32 46, float %2230, float %2239, float %2242)  ; FMad(a,b,c)
  %2244 = fadd fast float %2221, %2241
  %2245 = fadd fast float %2224, %2243
  %2246 = icmp ugt i32 %2195, 1
  %2247 = icmp ugt i32 %2193, 33554431
  %2248 = or i1 %2247, %2246
  br i1 %2248, label %2249, label %2274

; <label>:2249                                    ; preds = %2176
  %2250 = add i32 %38, 276
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 16
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = fmul fast float %2217, %2254
  %2256 = call float @dx.op.unary.f32(i32 22, float %2255)  ; Frc(value)
  %2257 = mul nuw nsw i32 %2195, %2196
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2256, %2258
  %2260 = call float @dx.op.unary.f32(i32 27, float %2259)  ; Round_ni(value)
  %2261 = fptoui float %2260 to i32
  %2262 = urem i32 %2261, %2195
  %2263 = udiv i32 %2261, %2196
  %2264 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2265 = call float @dx.op.unary.f32(i32 22, float %2245)  ; Frc(value)
  %2266 = uitofp i32 %2262 to float
  %2267 = uitofp i32 %2263 to float
  %2268 = fadd fast float %2264, %2266
  %2269 = fadd fast float %2265, %2267
  %2270 = uitofp i32 %2195 to float
  %2271 = uitofp i32 %2196 to float
  %2272 = fdiv fast float %2268, %2270
  %2273 = fdiv fast float %2269, %2271
  br label %2274

; <label>:2274                                    ; preds = %2249, %2176
  %2275 = phi float [ %2272, %2249 ], [ %2244, %2176 ]
  %2276 = phi float [ %2273, %2249 ], [ %2245, %2176 ]
  %2277 = and i32 %2170, 256
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2325, label %2279

; <label>:2279                                    ; preds = %2274
  %2280 = add i32 %38, 452
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = add i32 %2282, 0
  %2284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2284, %dx.types.Handle %79, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = add i32 %38, 148
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = shl i32 %2289, 4
  %2291 = and i32 %2290, 32752
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = lshr i32 %2289, 7
  %2294 = and i32 %2293, 32752
  %2295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2294)  ; LegacyF16ToF32(value)
  %2296 = fsub fast float 1.000000e+00, %394
  %2297 = call float @dx.op.binary.f32(i32 35, float %2296, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2298 = bitcast float %394 to i32
  %2299 = sitofp i32 %2298 to float
  %2300 = fadd fast float %2299, 0xC1CFBF8940000000
  %2301 = fmul fast float %2295, %2300
  %2302 = fadd fast float %2301, 0x41CFBF8940000000
  %2303 = fptosi float %2302 to i32
  %2304 = bitcast i32 %2303 to float
  %2305 = bitcast float %2297 to i32
  %2306 = sitofp i32 %2305 to float
  %2307 = fadd fast float %2306, 0xC1CFBF8940000000
  %2308 = fmul fast float %2307, %2295
  %2309 = fadd fast float %2308, 0x41CFBF8940000000
  %2310 = fptosi float %2309 to i32
  %2311 = bitcast i32 %2310 to float
  %2312 = fmul fast float %2304, %2292
  %2313 = fmul fast float %2311, %2292
  %2314 = fsub fast float %2297, %2312
  %2315 = fadd fast float %2313, %2297
  %2316 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2317 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2318 = fsub fast float %2286, %2316
  %2319 = fsub fast float %2317, %2316
  %2320 = bitcast float %2319 to i32
  %2321 = sub nsw i32 2129859010, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2322, %2318
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  br label %2325

; <label>:2325                                    ; preds = %2279, %2274
  %2326 = phi float [ %2324, %2279 ], [ %394, %2274 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 128
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2347, label %2331

; <label>:2331                                    ; preds = %2325
  %2332 = add i32 %38, 436
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = add i32 %2334, 0
  %2336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2336, %dx.types.Handle %79, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2338 = extractvalue %dx.types.ResRet.f32 %2337, 0
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 524288
  %2342 = icmp ne i32 %2341, 0
  %2343 = fcmp fast ogt float %2338, 0x3FE0101020000000
  %2344 = select i1 %2343, float 1.000000e+00, float 0.000000e+00
  %2345 = select i1 %2342, float %2344, float %2338
  %2346 = fmul fast float %2345, %2326
  br label %2347

; <label>:2347                                    ; preds = %2331, %2325
  %2348 = phi float [ %2346, %2331 ], [ %2326, %2325 ]
  %2349 = fcmp fast ult float %2348, 0x3F70101020000000
  br i1 %2349, label %2824, label %2350

; <label>:2350                                    ; preds = %2347
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 16
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2553, label %2355

; <label>:2355                                    ; preds = %2350
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = add i32 %38, 388
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %2360, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2362, %dx.types.Handle %78, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.ResRet.f32 %2363, 3
  %2368 = and i32 %2357, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = lshr i32 %2357, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2367, %2369
  %2374 = fadd fast float %2373, %2372
  %2375 = fmul fast float %2374, 0x3F70101000000000
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 512
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2388, label %2380

; <label>:2380                                    ; preds = %2355
  %2381 = add i32 %38, 468
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = add i32 %2383, 0
  %2385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2385, %dx.types.Handle %79, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  br label %2388

; <label>:2388                                    ; preds = %2380, %2355
  %2389 = phi float [ %2387, %2380 ], [ 1.000000e+00, %2355 ]
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 33554432
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2500, label %2394

; <label>:2394                                    ; preds = %2388
  %2395 = add i32 %38, 272
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 65535
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = lshr i32 %2397, 16
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = add i32 %38, 276
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 65535
  %2406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2405)  ; LegacyF16ToF32(value)
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = lshr i32 %2408, 24
  %2410 = uitofp i32 %2409 to float
  %2411 = fmul fast float %2410, 0x3F70101020000000
  %2412 = and i32 %2408, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = lshr i32 %2408, 8
  %2416 = and i32 %2415, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = lshr i32 %2408, 16
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = add i32 %38, 268
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = lshr i32 %2425, 24
  %2427 = uitofp i32 %2426 to float
  %2428 = fmul fast float %2427, 0x3F70101020000000
  %2429 = and i32 %2425, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = lshr i32 %2425, 8
  %2433 = and i32 %2432, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F70101020000000
  %2436 = lshr i32 %2425, 16
  %2437 = and i32 %2436, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = fmul fast float %2438, 0x3F70101020000000
  %2440 = bitcast float %2364 to i32
  %2441 = ashr i32 %2440, 1
  %2442 = sub nsw i32 1597463174, %2441
  %2443 = bitcast i32 %2442 to float
  %2444 = fmul fast float %2364, 5.000000e-01
  %2445 = fmul fast float %2443, %2443
  %2446 = fmul fast float %2445, %2444
  %2447 = fsub fast float 1.500000e+00, %2446
  %2448 = fmul fast float %2443, %2364
  %2449 = fmul fast float %2448, %2447
  %2450 = bitcast float %2365 to i32
  %2451 = ashr i32 %2450, 1
  %2452 = sub nsw i32 1597463174, %2451
  %2453 = bitcast i32 %2452 to float
  %2454 = fmul fast float %2365, 5.000000e-01
  %2455 = fmul fast float %2453, %2453
  %2456 = fmul fast float %2455, %2454
  %2457 = fsub fast float 1.500000e+00, %2456
  %2458 = fmul fast float %2453, %2365
  %2459 = fmul fast float %2458, %2457
  %2460 = bitcast float %2366 to i32
  %2461 = ashr i32 %2460, 1
  %2462 = sub nsw i32 1597463174, %2461
  %2463 = bitcast i32 %2462 to float
  %2464 = fmul fast float %2366, 5.000000e-01
  %2465 = fmul fast float %2463, %2463
  %2466 = fmul fast float %2465, %2464
  %2467 = fsub fast float 1.500000e+00, %2466
  %2468 = fmul fast float %2463, %2366
  %2469 = fmul fast float %2468, %2467
  %2470 = fsub fast float %2449, %2431
  %2471 = fsub fast float %2459, %2435
  %2472 = fsub fast float %2469, %2439
  %2473 = fmul fast float %2470, %2399
  %2474 = fmul fast float %2471, %2401
  %2475 = fmul fast float %2472, %2406
  %2476 = fadd fast float %2473, %2414
  %2477 = fadd fast float %2474, %2418
  %2478 = fadd fast float %2475, %2422
  %2479 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2480 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2481 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2482 = fmul fast float %2479, %2479
  %2483 = fmul fast float %2480, %2480
  %2484 = fmul fast float %2481, %2481
  %2485 = fsub fast float %2482, %2364
  %2486 = fsub fast float %2483, %2365
  %2487 = fsub fast float %2484, %2366
  %2488 = fmul fast float %2485, %2389
  %2489 = fmul fast float %2486, %2389
  %2490 = fmul fast float %2487, %2389
  %2491 = fadd fast float %2488, %2364
  %2492 = fadd fast float %2489, %2365
  %2493 = fadd fast float %2490, %2366
  %2494 = fadd fast float %2411, %2375
  %2495 = fsub fast float %2494, %2428
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fsub fast float %2496, %2375
  %2498 = fmul fast float %2497, %2389
  %2499 = fadd fast float %2498, %2375
  br label %2553

; <label>:2500                                    ; preds = %2388
  %2501 = and i32 %2391, 134217728
  %2502 = icmp eq i32 %2501, 0
  br i1 %2502, label %2537, label %2503

; <label>:2503                                    ; preds = %2500
  %2504 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2505 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2506 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2507 = fadd fast float %2504, -5.000000e-01
  %2508 = fadd fast float %2505, -5.000000e-01
  %2509 = fadd fast float %2506, -5.000000e-01
  %2510 = fmul fast float %2507, %2389
  %2511 = fmul fast float %2508, %2389
  %2512 = fmul fast float %2509, %2389
  %2513 = fadd fast float %2510, 5.000000e-01
  %2514 = fadd fast float %2511, 5.000000e-01
  %2515 = fadd fast float %2512, 5.000000e-01
  %2516 = call float @dx.op.unary.f32(i32 24, float %2364)  ; Sqrt(value)
  %2517 = call float @dx.op.unary.f32(i32 24, float %2365)  ; Sqrt(value)
  %2518 = call float @dx.op.unary.f32(i32 24, float %2366)  ; Sqrt(value)
  %2519 = fmul fast float %2513, 2.000000e+00
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = fmul fast float %2520, %2516
  %2522 = fadd fast float %2521, %2519
  %2523 = fmul fast float %2522, %2516
  %2524 = fmul fast float %2514, 2.000000e+00
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = fmul fast float %2525, %2517
  %2527 = fadd fast float %2526, %2524
  %2528 = fmul fast float %2527, %2517
  %2529 = fmul fast float %2515, 2.000000e+00
  %2530 = fsub fast float 1.000000e+00, %2529
  %2531 = fmul fast float %2530, %2518
  %2532 = fadd fast float %2531, %2529
  %2533 = fmul fast float %2532, %2518
  %2534 = fmul fast float %2523, %2523
  %2535 = fmul fast float %2528, %2528
  %2536 = fmul fast float %2533, %2533
  br label %2553

; <label>:2537                                    ; preds = %2500
  %2538 = fmul fast float %315, %315
  %2539 = fmul fast float %319, %319
  %2540 = fmul fast float %323, %323
  %2541 = fadd fast float %2538, -1.000000e+00
  %2542 = fadd fast float %2539, -1.000000e+00
  %2543 = fadd fast float %2540, -1.000000e+00
  %2544 = fmul fast float %2389, %2541
  %2545 = fmul fast float %2389, %2542
  %2546 = fmul fast float %2389, %2543
  %2547 = fadd fast float %2544, 1.000000e+00
  %2548 = fadd fast float %2545, 1.000000e+00
  %2549 = fadd fast float %2546, 1.000000e+00
  %2550 = fmul fast float %2547, %2364
  %2551 = fmul fast float %2548, %2365
  %2552 = fmul fast float %2549, %2366
  br label %2553

; <label>:2553                                    ; preds = %2537, %2503, %2394, %2350
  %2554 = phi float [ %2499, %2394 ], [ %2375, %2503 ], [ %2375, %2537 ], [ 0x3FA23C0BE0000000, %2350 ]
  %2555 = phi float [ %2491, %2394 ], [ %2534, %2503 ], [ %2550, %2537 ], [ 1.000000e+00, %2350 ]
  %2556 = phi float [ %2492, %2394 ], [ %2535, %2503 ], [ %2551, %2537 ], [ 1.000000e+00, %2350 ]
  %2557 = phi float [ %2493, %2394 ], [ %2536, %2503 ], [ %2552, %2537 ], [ 1.000000e+00, %2350 ]
  %2558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.i32 %2558, 1
  %2560 = and i32 %2559, 1
  %2561 = icmp ne i32 %2560, 0
  %2562 = add i32 %38, 356
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 32
  %2566 = icmp ne i32 %2565, 0
  %2567 = and i1 %2561, %2566
  %2568 = select i1 %2567, float 1.000000e+00, float %2555
  %2569 = select i1 %2567, float 0x3FD3333340000000, float %2556
  %2570 = select i1 %2567, float 0x3FD3333340000000, float %2557
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 32
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2647, label %2575

; <label>:2575                                    ; preds = %2553
  %2576 = add i32 %38, 140
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = add i32 %38, 404
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %2581, 0
  %2583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2583, %dx.types.Handle %78, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = extractvalue %dx.types.ResRet.f32 %2584, 2
  %2588 = extractvalue %dx.types.ResRet.f32 %2584, 3
  %2589 = and i32 %2578, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = lshr i32 %2578, 8
  %2592 = and i32 %2591, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = lshr i32 %2578, 16
  %2595 = and i32 %2594, 255
  %2596 = uitofp i32 %2595 to float
  %2597 = fmul fast float %2596, 0x3F70101000000000
  %2598 = fmul fast float %2585, %2590
  %2599 = fadd fast float %2598, %2593
  %2600 = fmul fast float %2599, 0x3F70101000000000
  %2601 = fadd fast float %2586, -5.000000e-01
  %2602 = fadd fast float %2588, -5.000000e-01
  %2603 = fmul fast float %2601, %2597
  %2604 = fmul fast float %2602, %2597
  %2605 = fadd fast float %2603, 5.000000e-01
  %2606 = fadd fast float %2604, 5.000000e-01
  %2607 = fmul fast float %2605, 2.000000e+00
  %2608 = fadd fast float %2607, -1.000000e+00
  %2609 = fmul fast float %2606, 2.000000e+00
  %2610 = fadd fast float %2609, -1.000000e+00
  %2611 = fadd fast float %2608, %2610
  %2612 = fmul fast float %2611, 5.000000e-01
  %2613 = fsub fast float %2608, %2610
  %2614 = fmul fast float %2613, 5.000000e-01
  %2615 = call float @dx.op.unary.f32(i32 6, float %2612)  ; FAbs(value)
  %2616 = fsub fast float 1.000000e+00, %2615
  %2617 = call float @dx.op.unary.f32(i32 6, float %2614)  ; FAbs(value)
  %2618 = fsub fast float %2616, %2617
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2612, float %2614, float %2618, float %2612, float %2614, float %2618)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = call float @dx.op.unary.f32(i32 25, float %2619)  ; Rsqrt(value)
  %2621 = fmul fast float %2612, %2620
  %2622 = fmul fast float %2614, %2620
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 67108864
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2643, label %2627

; <label>:2627                                    ; preds = %2575
  %2628 = add i32 %38, 328
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = and i32 %2630, 65535
  %2632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2631)  ; LegacyF16ToF32(value)
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 65535
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2630, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = fsub fast float %2600, %2638
  %2640 = fmul fast float %2639, %2632
  %2641 = fadd fast float %2640, %2636
  %2642 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  br label %2643

; <label>:2643                                    ; preds = %2627, %2575
  %2644 = phi float [ %2642, %2627 ], [ %2600, %2575 ]
  %2645 = call float @dx.op.dot2.f32(i32 54, float %2621, float %2622, float %2179, float %2180)  ; Dot2(ax,ay,bx,by)
  %2646 = call float @dx.op.dot2.f32(i32 54, float %2621, float %2622, float %2181, float %2182)  ; Dot2(ax,ay,bx,by)
  br label %2647

; <label>:2647                                    ; preds = %2643, %2553
  %2648 = phi float [ %2644, %2643 ], [ 0x3FD6666660000000, %2553 ]
  %2649 = phi float [ %2645, %2643 ], [ 0.000000e+00, %2553 ]
  %2650 = phi float [ %2646, %2643 ], [ 0.000000e+00, %2553 ]
  %2651 = phi float [ %2587, %2643 ], [ 1.000000e+00, %2553 ]
  %2652 = add i32 %38, 144
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = lshr i32 %2654, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = fmul fast float %2659, %2660
  %2662 = fadd fast float %2661, %2656
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  br i1 %2167, label %2665, label %2670

; <label>:2665                                    ; preds = %2647
  %2666 = fsub fast float 1.000000e+00, %2348
  %2667 = fmul fast float %2666, %2159
  %2668 = fmul fast float %2666, %2160
  %2669 = fmul fast float %2666, %2161
  br label %2670

; <label>:2670                                    ; preds = %2665, %2647
  %2671 = phi float [ %2667, %2665 ], [ %2159, %2647 ]
  %2672 = phi float [ %2668, %2665 ], [ %2160, %2647 ]
  %2673 = phi float [ %2669, %2665 ], [ %2161, %2647 ]
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = and i32 %2675, 3
  %2677 = icmp eq i32 %2676, 3
  br i1 %2677, label %2744, label %2678

; <label>:2678                                    ; preds = %2670
  %2679 = and i32 %2675, 16
  %2680 = icmp ne i32 %2679, 0
  %2681 = select i1 %2680, float %2348, float 0.000000e+00
  %2682 = icmp eq i32 %2676, 0
  br i1 %2682, label %2683, label %2699

; <label>:2683                                    ; preds = %2678
  %2684 = fsub fast float %2568, %2671
  %2685 = fsub fast float %2569, %2672
  %2686 = fsub fast float %2570, %2673
  %2687 = fmul fast float %2681, %2684
  %2688 = fmul fast float %2681, %2685
  %2689 = fmul fast float %2681, %2686
  %2690 = fadd fast float %2687, %2671
  %2691 = fadd fast float %2688, %2672
  %2692 = fadd fast float %2689, %2673
  %2693 = fsub fast float %2554, %2162
  %2694 = fmul fast float %2681, %2693
  %2695 = fadd fast float %2694, %2162
  %2696 = fsub fast float %2664, %2165
  %2697 = fmul fast float %2681, %2696
  %2698 = fadd fast float %2697, %2165
  br label %2744

; <label>:2699                                    ; preds = %2678
  %2700 = icmp eq i32 %2676, 1
  br i1 %2700, label %2701, label %2714

; <label>:2701                                    ; preds = %2699
  %2702 = fadd fast float %2568, -1.000000e+00
  %2703 = fadd fast float %2569, -1.000000e+00
  %2704 = fadd fast float %2570, -1.000000e+00
  %2705 = fmul fast float %2681, %2702
  %2706 = fmul fast float %2681, %2703
  %2707 = fmul fast float %2681, %2704
  %2708 = fadd fast float %2705, 1.000000e+00
  %2709 = fadd fast float %2706, 1.000000e+00
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fmul fast float %2708, %2671
  %2712 = fmul fast float %2709, %2672
  %2713 = fmul fast float %2710, %2673
  br label %2744

; <label>:2714                                    ; preds = %2699
  %2715 = icmp eq i32 %2676, 2
  br i1 %2715, label %2716, label %2744

; <label>:2716                                    ; preds = %2714
  %2717 = call float @dx.op.unary.f32(i32 24, float %2568)  ; Sqrt(value)
  %2718 = call float @dx.op.unary.f32(i32 24, float %2569)  ; Sqrt(value)
  %2719 = call float @dx.op.unary.f32(i32 24, float %2570)  ; Sqrt(value)
  %2720 = fadd fast float %2717, -5.000000e-01
  %2721 = fadd fast float %2718, -5.000000e-01
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fmul fast float %2720, %2681
  %2724 = fmul fast float %2721, %2681
  %2725 = fmul fast float %2722, %2681
  %2726 = fadd fast float %2723, 5.000000e-01
  %2727 = fadd fast float %2724, 5.000000e-01
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fmul fast float %2726, 2.000000e+00
  %2730 = fsub fast float 1.000000e+00, %2729
  %2731 = fmul fast float %2730, %2671
  %2732 = fadd fast float %2731, %2729
  %2733 = fmul fast float %2732, %2671
  %2734 = fmul fast float %2727, 2.000000e+00
  %2735 = fsub fast float 1.000000e+00, %2734
  %2736 = fmul fast float %2735, %2672
  %2737 = fadd fast float %2736, %2734
  %2738 = fmul fast float %2737, %2672
  %2739 = fmul fast float %2728, 2.000000e+00
  %2740 = fsub fast float 1.000000e+00, %2739
  %2741 = fmul fast float %2740, %2673
  %2742 = fadd fast float %2741, %2739
  %2743 = fmul fast float %2742, %2673
  br label %2744

; <label>:2744                                    ; preds = %2716, %2714, %2701, %2683, %2670
  %2745 = phi float [ %2671, %2670 ], [ %2733, %2716 ], [ %2671, %2714 ], [ %2711, %2701 ], [ %2690, %2683 ]
  %2746 = phi float [ %2672, %2670 ], [ %2738, %2716 ], [ %2672, %2714 ], [ %2712, %2701 ], [ %2691, %2683 ]
  %2747 = phi float [ %2673, %2670 ], [ %2743, %2716 ], [ %2673, %2714 ], [ %2713, %2701 ], [ %2692, %2683 ]
  %2748 = phi float [ %2162, %2670 ], [ %2162, %2716 ], [ %2162, %2714 ], [ %2162, %2701 ], [ %2695, %2683 ]
  %2749 = phi float [ %2165, %2670 ], [ %2165, %2716 ], [ %2165, %2714 ], [ %2165, %2701 ], [ %2698, %2683 ]
  %2750 = and i32 %2675, 12
  %2751 = icmp eq i32 %2750, 12
  br i1 %2751, label %2824, label %2752

; <label>:2752                                    ; preds = %2744
  %2753 = and i32 %2675, 2097184
  %2754 = icmp eq i32 %2753, 2097184
  %2755 = select i1 %2754, float %2348, float 0.000000e+00
  %2756 = and i32 %2675, 4194336
  %2757 = icmp eq i32 %2756, 4194336
  %2758 = select i1 %2757, float %2348, float 0.000000e+00
  %2759 = and i32 %2675, 8388640
  %2760 = icmp eq i32 %2759, 8388640
  %2761 = select i1 %2760, float %2348, float 0.000000e+00
  %2762 = icmp eq i32 %2750, 0
  br i1 %2762, label %2763, label %2776

; <label>:2763                                    ; preds = %2752
  %2764 = fsub fast float %2649, %2157
  %2765 = fsub fast float %2650, %2158
  %2766 = fmul fast float %2755, %2764
  %2767 = fmul fast float %2755, %2765
  %2768 = fadd fast float %2766, %2157
  %2769 = fadd fast float %2767, %2158
  %2770 = fsub fast float %2651, %2164
  %2771 = fmul fast float %2758, %2770
  %2772 = fadd fast float %2771, %2164
  %2773 = fsub fast float %2648, %2163
  %2774 = fmul fast float %2761, %2773
  %2775 = fadd fast float %2774, %2163
  br label %2824

; <label>:2776                                    ; preds = %2752
  %2777 = icmp eq i32 %2750, 4
  br i1 %2777, label %2778, label %2810

; <label>:2778                                    ; preds = %2776
  %2779 = fmul fast float %2755, %2649
  %2780 = fmul fast float %2755, %2650
  %2781 = fadd fast float %2779, %2157
  %2782 = fadd fast float %2780, %2158
  %2783 = call float @dx.op.binary.f32(i32 36, float %2164, float %2651)  ; FMin(a,b)
  %2784 = fsub fast float %2783, %2164
  %2785 = fmul fast float %2784, %2758
  %2786 = fadd fast float %2785, %2164
  %2787 = fadd fast float %2648, %2163
  %2788 = fmul fast float %2787, 0x3FF337FAE0000000
  %2789 = fmul fast float %2163, %2163
  %2790 = fmul fast float %2648, %2648
  %2791 = fadd fast float %2790, %2789
  %2792 = fmul fast float %2791, 0x3FE5152B00000000
  %2793 = fmul fast float %2163, 0xBFCC1F85E0000000
  %2794 = fmul fast float %2793, %2648
  %2795 = fadd fast float %2794, 0xBFE1363700000000
  %2796 = fadd fast float %2795, %2788
  %2797 = fsub fast float %2796, %2792
  %2798 = fmul fast float %2787, 0x3FBA6F0D00000000
  %2799 = fmul fast float %2791, 0x3FD0432880000000
  %2800 = fmul fast float %2163, 0xBFEF110800000000
  %2801 = fmul fast float %2800, %2648
  %2802 = fadd fast float %2801, 1.000000e+00
  %2803 = fsub fast float %2802, %2798
  %2804 = fadd fast float %2803, %2799
  %2805 = fdiv fast float %2797, %2804
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fsub fast float %2806, %2163
  %2808 = fmul fast float %2807, %2761
  %2809 = fadd fast float %2808, %2163
  br label %2824

; <label>:2810                                    ; preds = %2776
  %2811 = icmp eq i32 %2750, 8
  br i1 %2811, label %2812, label %2824

; <label>:2812                                    ; preds = %2810
  %2813 = fmul fast float %2755, %2649
  %2814 = fmul fast float %2755, %2650
  %2815 = fadd fast float %2813, %2157
  %2816 = fadd fast float %2814, %2158
  %2817 = call float @dx.op.binary.f32(i32 36, float %2164, float %2651)  ; FMin(a,b)
  %2818 = fsub fast float %2817, %2164
  %2819 = fmul fast float %2818, %2758
  %2820 = fadd fast float %2819, %2164
  %2821 = fsub fast float %2648, %2163
  %2822 = fmul fast float %2761, %2821
  %2823 = fadd fast float %2822, %2163
  br label %2824

; <label>:2824                                    ; preds = %2812, %2810, %2778, %2763, %2744, %2347, %2166, %2156
  %2825 = phi float [ %2157, %2744 ], [ %2157, %2347 ], [ %2157, %2156 ], [ %2157, %2166 ], [ %2768, %2763 ], [ %2781, %2778 ], [ %2157, %2810 ], [ %2815, %2812 ]
  %2826 = phi float [ %2158, %2744 ], [ %2158, %2347 ], [ %2158, %2156 ], [ %2158, %2166 ], [ %2769, %2763 ], [ %2782, %2778 ], [ %2158, %2810 ], [ %2816, %2812 ]
  %2827 = phi float [ %2745, %2744 ], [ %2159, %2347 ], [ %2159, %2156 ], [ %2159, %2166 ], [ %2745, %2763 ], [ %2745, %2778 ], [ %2745, %2810 ], [ %2745, %2812 ]
  %2828 = phi float [ %2746, %2744 ], [ %2160, %2347 ], [ %2160, %2156 ], [ %2160, %2166 ], [ %2746, %2763 ], [ %2746, %2778 ], [ %2746, %2810 ], [ %2746, %2812 ]
  %2829 = phi float [ %2747, %2744 ], [ %2161, %2347 ], [ %2161, %2156 ], [ %2161, %2166 ], [ %2747, %2763 ], [ %2747, %2778 ], [ %2747, %2810 ], [ %2747, %2812 ]
  %2830 = phi float [ %2748, %2744 ], [ %2162, %2347 ], [ %2162, %2156 ], [ %2162, %2166 ], [ %2748, %2763 ], [ %2748, %2778 ], [ %2748, %2810 ], [ %2748, %2812 ]
  %2831 = phi float [ %2163, %2744 ], [ %2163, %2347 ], [ %2163, %2156 ], [ %2163, %2166 ], [ %2775, %2763 ], [ %2809, %2778 ], [ %2163, %2810 ], [ %2823, %2812 ]
  %2832 = phi float [ %2164, %2744 ], [ %2164, %2347 ], [ %2164, %2156 ], [ %2164, %2166 ], [ %2772, %2763 ], [ %2786, %2778 ], [ %2164, %2810 ], [ %2820, %2812 ]
  %2833 = phi float [ %2749, %2744 ], [ %2165, %2347 ], [ %2165, %2156 ], [ %2165, %2166 ], [ %2749, %2763 ], [ %2749, %2778 ], [ %2749, %2810 ], [ %2749, %2812 ]
  %2834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.f32 %2834, 0
  %2836 = call float @dx.op.unary.f32(i32 22, float %70)  ; Frc(value)
  %2837 = call float @dx.op.unary.f32(i32 22, float %71)  ; Frc(value)
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = fcmp fast ogt float %2839, 5.000000e-01
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.CBufRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2841, 3
  %2846 = fmul fast float %2842, %2836
  %2847 = fmul fast float %2843, %2837
  %2848 = fmul fast float %2844, %2836
  %2849 = fmul fast float %2845, %2837
  %2850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  br i1 %2840, label %2852, label %2856

; <label>:2852                                    ; preds = %2824
  %2853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %33, float %2848, float %2849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.ResRet.f32 %2853, 1
  br label %2861

; <label>:2856                                    ; preds = %2824
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %33, float %2848, float %2849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %2848, float %2849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  br label %2861

; <label>:2861                                    ; preds = %2856, %2852
  %2862 = phi float [ %2854, %2852 ], [ %2858, %2856 ]
  %2863 = phi float [ %2855, %2852 ], [ %2860, %2856 ]
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2869 = call float @dx.op.dot4.f32(i32 56, float %2865, float %2866, float %2867, float %2868, float %2851, float %2862, float %2863, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2873 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2874 = extractvalue %dx.types.CBufRet.f32 %2871, 2
  %2875 = extractvalue %dx.types.CBufRet.f32 %2871, 3
  %2876 = call float @dx.op.dot4.f32(i32 56, float %2872, float %2873, float %2874, float %2875, float %2851, float %2862, float %2863, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.CBufRet.f32 %2878, 2
  %2882 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2883 = call float @dx.op.dot4.f32(i32 56, float %2879, float %2880, float %2881, float %2882, float %2851, float %2862, float %2863, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = fcmp fast ole float %2870, 0x3FA4B5DCC0000000
  %2888 = fmul fast float %2870, 0x3FB3D07220000000
  %2889 = fadd fast float %2870, 0x3FAC28F5C0000000
  %2890 = fmul fast float %2889, 0x3FEE54EDE0000000
  %2891 = call float @dx.op.unary.f32(i32 23, float %2890)  ; Log(value)
  %2892 = fmul fast float %2891, 0x4003333340000000
  %2893 = call float @dx.op.unary.f32(i32 21, float %2892)  ; Exp(value)
  %2894 = select i1 %2887, float %2888, float %2893
  %2895 = fcmp fast ole float %2877, 0x3FA4B5DCC0000000
  %2896 = fmul fast float %2877, 0x3FB3D07220000000
  %2897 = fadd fast float %2877, 0x3FAC28F5C0000000
  %2898 = fmul fast float %2897, 0x3FEE54EDE0000000
  %2899 = call float @dx.op.unary.f32(i32 23, float %2898)  ; Log(value)
  %2900 = fmul fast float %2899, 0x4003333340000000
  %2901 = call float @dx.op.unary.f32(i32 21, float %2900)  ; Exp(value)
  %2902 = select i1 %2895, float %2896, float %2901
  %2903 = fcmp fast ole float %2884, 0x3FA4B5DCC0000000
  %2904 = fmul fast float %2884, 0x3FB3D07220000000
  %2905 = fadd fast float %2884, 0x3FAC28F5C0000000
  %2906 = fmul fast float %2905, 0x3FEE54EDE0000000
  %2907 = call float @dx.op.unary.f32(i32 23, float %2906)  ; Log(value)
  %2908 = fmul fast float %2907, 0x4003333340000000
  %2909 = call float @dx.op.unary.f32(i32 21, float %2908)  ; Exp(value)
  %2910 = select i1 %2903, float %2904, float %2909
  %2911 = fmul fast float %2894, %2886
  %2912 = fmul fast float %2902, %2886
  %2913 = fmul fast float %2910, %2886
  %2914 = add i32 %38, 360
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.i32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.i32 %2915, 2
  %2919 = bitcast i32 %2916 to float
  %2920 = bitcast i32 %2917 to float
  %2921 = bitcast i32 %2918 to float
  %2922 = fmul fast float %2911, %2919
  %2923 = fmul fast float %2912, %2920
  %2924 = fmul fast float %2913, %2921
  %2925 = call float @dx.op.dot2.f32(i32 54, float %2825, float %2826, float %2825, float %2826)  ; Dot2(ax,ay,bx,by)
  %2926 = fmul fast float %2925, 0x3FE3333340000000
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2927, float %2825, float %2826, float %2927)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = call float @dx.op.unary.f32(i32 25, float %2928)  ; Rsqrt(value)
  %2930 = fmul fast float %2929, %2825
  %2931 = fmul fast float %2929, %2826
  %2932 = fmul fast float %2927, %2929
  %2933 = fmul fast float %2932, %89
  %2934 = fmul fast float %2932, %90
  %2935 = fmul fast float %2932, %91
  %2936 = fmul fast float %2930, %63
  %2937 = fmul fast float %2930, %64
  %2938 = fmul fast float %2930, %65
  %2939 = fadd fast float %2933, %2936
  %2940 = fadd fast float %2934, %2937
  %2941 = fadd fast float %2935, %2938
  %2942 = fmul fast float %101, %2931
  %2943 = fmul fast float %102, %2931
  %2944 = fmul fast float %103, %2931
  %2945 = fadd fast float %2939, %2942
  %2946 = fadd fast float %2940, %2943
  %2947 = fadd fast float %2941, %2944
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %2945, float %2946, float %2947)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = call float @dx.op.unary.f32(i32 25, float %2948)  ; Rsqrt(value)
  %2950 = fmul fast float %2945, %2949
  %2951 = fmul fast float %2946, %2949
  %2952 = fmul fast float %2947, %2949
  %2953 = icmp eq i32 %39, 65535
  br i1 %2953, label %3468, label %2954

; <label>:2954                                    ; preds = %2861
  %2955 = call float @dx.op.unary.f32(i32 83, float %40)  ; DerivCoarseX(value)
  %2956 = call float @dx.op.unary.f32(i32 83, float %41)  ; DerivCoarseX(value)
  %2957 = call float @dx.op.unary.f32(i32 83, float %42)  ; DerivCoarseX(value)
  %2958 = call float @dx.op.unary.f32(i32 84, float %40)  ; DerivCoarseY(value)
  %2959 = call float @dx.op.unary.f32(i32 84, float %41)  ; DerivCoarseY(value)
  %2960 = call float @dx.op.unary.f32(i32 84, float %42)  ; DerivCoarseY(value)
  %2961 = fadd fast float %2955, %40
  %2962 = fadd fast float %2956, %41
  %2963 = fadd fast float %2957, %42
  %2964 = fadd fast float %2958, %40
  %2965 = fadd fast float %2959, %41
  %2966 = fadd fast float %2960, %42
  %2967 = mul i32 %39, 48
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = add i32 %2967, 16
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = add i32 %2967, 32
  %2978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = extractvalue %dx.types.ResRet.f32 %2978, 3
  %2983 = bitcast float %2982 to i32
  %2984 = fmul fast float %2969, %40
  %2985 = fmul fast float %2970, %41
  %2986 = fmul fast float %2971, %42
  %2987 = fsub fast float %2984, %2974
  %2988 = fsub fast float %2985, %2975
  %2989 = fsub fast float %2986, %2976
  %2990 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2991 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2992 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2993 = fmul fast float %2990, %2979
  %2994 = fmul fast float %2991, %2980
  %2995 = fmul fast float %2992, %2981
  %2996 = fadd fast float %2979, -1.000000e+00
  %2997 = fadd fast float %2980, -1.000000e+00
  %2998 = fadd fast float %2981, -1.000000e+00
  %2999 = call float @dx.op.unary.f32(i32 27, float %2993)  ; Round_ni(value)
  %3000 = call float @dx.op.unary.f32(i32 27, float %2994)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2995)  ; Round_ni(value)
  %3002 = call float @dx.op.binary.f32(i32 36, float %2999, float %2996)  ; FMin(a,b)
  %3003 = call float @dx.op.binary.f32(i32 36, float %3000, float %2997)  ; FMin(a,b)
  %3004 = call float @dx.op.binary.f32(i32 36, float %3001, float %2998)  ; FMin(a,b)
  %3005 = fmul fast float %3004, %2980
  %3006 = fadd fast float %3005, %3003
  %3007 = fmul fast float %3006, %2979
  %3008 = fadd fast float %3007, %3002
  %3009 = fptosi float %3008 to i32
  %3010 = add nsw i32 %3009, %2983
  %3011 = shl nsw i32 %3010, 2
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = lshr i32 %3013, 16
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3437, label %3016

; <label>:3016                                    ; preds = %2954
  br label %3017

; <label>:3017                                    ; preds = %3138, %3016
  %3018 = phi i32 [ %3040, %3138 ], [ %3014, %3016 ]
  %3019 = phi float [ %3139, %3138 ], [ 0.000000e+00, %3016 ]
  %3020 = phi float [ %3140, %3138 ], [ %2835, %3016 ]
  %3021 = phi float [ %3141, %3138 ], [ %2833, %3016 ]
  %3022 = phi float [ %3142, %3138 ], [ 0.000000e+00, %3016 ]
  %3023 = phi float [ %3143, %3138 ], [ 0.000000e+00, %3016 ]
  %3024 = phi float [ %3144, %3138 ], [ %2922, %3016 ]
  %3025 = phi float [ %3145, %3138 ], [ %2923, %3016 ]
  %3026 = phi float [ %3146, %3138 ], [ %2924, %3016 ]
  %3027 = phi float [ %3147, %3138 ], [ %2950, %3016 ]
  %3028 = phi float [ %3148, %3138 ], [ %2951, %3016 ]
  %3029 = phi float [ %3149, %3138 ], [ %2952, %3016 ]
  %3030 = phi float [ %3150, %3138 ], [ %2832, %3016 ]
  %3031 = phi float [ %3151, %3138 ], [ %2831, %3016 ]
  %3032 = phi float [ %3152, %3138 ], [ 0.000000e+00, %3016 ]
  %3033 = phi float [ %3153, %3138 ], [ %2830, %3016 ]
  %3034 = phi float [ %3154, %3138 ], [ %2827, %3016 ]
  %3035 = phi float [ %3155, %3138 ], [ %2828, %3016 ]
  %3036 = phi float [ %3156, %3138 ], [ %2829, %3016 ]
  %3037 = shl nuw nsw i32 %3018, 2
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = lshr i32 %3039, 16
  %3041 = shl i32 %3039, 8
  %3042 = and i32 %3041, 16776960
  %3043 = or i32 %3042, 48
  %3044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.ResRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.ResRet.f32 %3044, 2
  %3048 = or i32 %3042, 64
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.i32 %3049, 1
  %3052 = or i32 %3042, 80
  %3053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.f32 %3053, 2
  %3055 = extractvalue %dx.types.ResRet.f32 %3053, 3
  %3056 = or i32 %3042, 96
  %3057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.ResRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.ResRet.f32 %3057, 2
  %3061 = extractvalue %dx.types.ResRet.f32 %3057, 3
  %3062 = or i32 %3042, 112
  %3063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3065 = or i32 %3042, 128
  %3066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = extractvalue %dx.types.ResRet.f32 %3066, 3
  %3071 = or i32 %3042, 144
  %3072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = extractvalue %dx.types.ResRet.f32 %3072, 3
  %3077 = or i32 %3042, 160
  %3078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.ResRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.ResRet.f32 %3078, 2
  %3082 = extractvalue %dx.types.ResRet.f32 %3078, 3
  %3083 = or i32 %3042, 192
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = or i32 %3042, 208
  %3087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = or i32 %3042, 248
  %3090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = extractvalue %dx.types.ResRet.f32 %3093, 1
  %3096 = extractvalue %dx.types.ResRet.f32 %3093, 2
  %3097 = extractvalue %dx.types.ResRet.f32 %3093, 3
  %3098 = call float @dx.op.dot4.f32(i32 56, float %3094, float %3095, float %3096, float %3097, float %40, float %41, float %42, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3099 = or i32 %3042, 16
  %3100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.ResRet.f32 %3100, 2
  %3104 = extractvalue %dx.types.ResRet.f32 %3100, 3
  %3105 = call float @dx.op.dot4.f32(i32 56, float %3101, float %3102, float %3103, float %3104, float %40, float %41, float %42, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3106 = or i32 %3042, 32
  %3107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.f32 %3107, 0
  %3109 = extractvalue %dx.types.ResRet.f32 %3107, 1
  %3110 = extractvalue %dx.types.ResRet.f32 %3107, 2
  %3111 = extractvalue %dx.types.ResRet.f32 %3107, 3
  %3112 = call float @dx.op.dot4.f32(i32 56, float %3108, float %3109, float %3110, float %3111, float %40, float %41, float %42, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3113 = call float @dx.op.unary.f32(i32 27, float %3098)  ; Round_ni(value)
  %3114 = call float @dx.op.unary.f32(i32 6, float %3113)  ; FAbs(value)
  %3115 = call float @dx.op.unary.f32(i32 27, float %3105)  ; Round_ni(value)
  %3116 = call float @dx.op.unary.f32(i32 6, float %3115)  ; FAbs(value)
  %3117 = call float @dx.op.unary.f32(i32 6, float %3112)  ; FAbs(value)
  %3118 = call float @dx.op.unary.f32(i32 27, float %3117)  ; Round_ni(value)
  %3119 = fadd fast float %3116, %3114
  %3120 = fadd fast float %3119, %3118
  %3121 = fcmp fast oeq float %3120, 0.000000e+00
  %3122 = call float @dx.op.dot4.f32(i32 56, float %3094, float %3095, float %3096, float %3097, float %2961, float %2962, float %2963, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3123 = call float @dx.op.dot4.f32(i32 56, float %3101, float %3102, float %3103, float %3104, float %2961, float %2962, float %2963, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3124 = call float @dx.op.dot4.f32(i32 56, float %3094, float %3095, float %3096, float %3097, float %2964, float %2965, float %2966, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3125 = call float @dx.op.dot4.f32(i32 56, float %3101, float %3102, float %3103, float %3104, float %2964, float %2965, float %2966, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3126 = fsub fast float %3122, %3098
  %3127 = fsub fast float %3124, %3098
  %3128 = fsub fast float %3123, %3105
  %3129 = fsub fast float %3125, %3105
  %3130 = call float @dx.op.dot3.f32(i32 55, float %3045, float %3046, float %3047, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 2
  %3133 = fadd fast float %3132, %3130
  %3134 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  %3135 = extractvalue %dx.types.CBufRet.f32 %3131, 0
  %3136 = fcmp fast ogt float %3134, %3135
  %3137 = and i1 %3121, %3136
  br i1 %3137, label %3158, label %3138

; <label>:3138                                    ; preds = %3423, %3241, %3158, %3017
  %3139 = phi float [ %3019, %3158 ], [ %3244, %3241 ], [ %3244, %3423 ], [ %3019, %3017 ]
  %3140 = phi float [ %3020, %3158 ], [ %3020, %3241 ], [ %3398, %3423 ], [ %3020, %3017 ]
  %3141 = phi float [ %3021, %3158 ], [ %3021, %3241 ], [ %3396, %3423 ], [ %3021, %3017 ]
  %3142 = phi float [ %3022, %3158 ], [ %3022, %3241 ], [ %3368, %3423 ], [ %3022, %3017 ]
  %3143 = phi float [ %3023, %3158 ], [ %3023, %3241 ], [ %3366, %3423 ], [ %3023, %3017 ]
  %3144 = phi float [ %3024, %3158 ], [ %3024, %3241 ], [ %3433, %3423 ], [ %3024, %3017 ]
  %3145 = phi float [ %3025, %3158 ], [ %3025, %3241 ], [ %3434, %3423 ], [ %3025, %3017 ]
  %3146 = phi float [ %3026, %3158 ], [ %3026, %3241 ], [ %3435, %3423 ], [ %3026, %3017 ]
  %3147 = phi float [ %3027, %3158 ], [ %3027, %3241 ], [ %3347, %3423 ], [ %3027, %3017 ]
  %3148 = phi float [ %3028, %3158 ], [ %3028, %3241 ], [ %3348, %3423 ], [ %3028, %3017 ]
  %3149 = phi float [ %3029, %3158 ], [ %3029, %3241 ], [ %3349, %3423 ], [ %3029, %3017 ]
  %3150 = phi float [ %3030, %3158 ], [ %3030, %3241 ], [ %3376, %3423 ], [ %3030, %3017 ]
  %3151 = phi float [ %3031, %3158 ], [ %3031, %3241 ], [ %3373, %3423 ], [ %3031, %3017 ]
  %3152 = phi float [ %3032, %3158 ], [ %3032, %3241 ], [ %3370, %3423 ], [ %3032, %3017 ]
  %3153 = phi float [ %3033, %3158 ], [ %3033, %3241 ], [ %3364, %3423 ], [ %3033, %3017 ]
  %3154 = phi float [ %3034, %3158 ], [ %3034, %3241 ], [ %3359, %3423 ], [ %3034, %3017 ]
  %3155 = phi float [ %3035, %3158 ], [ %3035, %3241 ], [ %3360, %3423 ], [ %3035, %3017 ]
  %3156 = phi float [ %3036, %3158 ], [ %3036, %3241 ], [ %3361, %3423 ], [ %3036, %3017 ]
  %3157 = icmp eq i32 %3040, 0
  br i1 %3157, label %3436, label %3017

; <label>:3158                                    ; preds = %3017
  %3159 = extractvalue %dx.types.ResRet.f32 %3044, 3
  %3160 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3161 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3162 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3053, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3053, 0
  %3165 = extractvalue %dx.types.ResRet.i32 %3049, 3
  %3166 = extractvalue %dx.types.ResRet.i32 %3049, 2
  %3167 = bitcast float %3159 to i32
  %3168 = add i32 %3165, 0
  %3169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3171 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3169, %dx.types.Handle %3170, float %3098, float %3105, float undef, float undef, i32 0, i32 0, i32 undef, float %3126, float %3128, float undef, float %3127, float %3129, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  %3173 = fmul fast float %3172, %3164
  %3174 = fadd fast float %3173, %3163
  %3175 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3176 = fmul fast float %3098, %3058
  %3177 = call float @dx.op.tertiary.f32(i32 46, float %3059, float %3105, float %3176)  ; FMad(a,b,c)
  %3178 = fadd fast float %3177, %3162
  %3179 = fmul fast float %3098, %3060
  %3180 = call float @dx.op.tertiary.f32(i32 46, float %3061, float %3105, float %3179)  ; FMad(a,b,c)
  %3181 = fadd fast float %3180, %3161
  %3182 = fmul fast float %3126, %3058
  %3183 = call float @dx.op.tertiary.f32(i32 46, float %3059, float %3128, float %3182)  ; FMad(a,b,c)
  %3184 = fmul fast float %3126, %3060
  %3185 = call float @dx.op.tertiary.f32(i32 46, float %3061, float %3128, float %3184)  ; FMad(a,b,c)
  %3186 = fmul fast float %3127, %3058
  %3187 = call float @dx.op.tertiary.f32(i32 46, float %3059, float %3129, float %3186)  ; FMad(a,b,c)
  %3188 = fmul fast float %3127, %3060
  %3189 = call float @dx.op.tertiary.f32(i32 46, float %3061, float %3129, float %3188)  ; FMad(a,b,c)
  %3190 = add i32 %3166, 0
  %3191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3190, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3192 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3191, %dx.types.Handle %3170, float %3178, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3183, float %3185, float undef, float %3187, float %3189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = and i32 %3167, 1024
  %3195 = icmp ne i32 %3194, 0
  %3196 = fcmp fast ogt float %3193, 0x3FE0101020000000
  %3197 = uitofp i1 %3196 to float
  %3198 = select i1 %3195, float %3197, float %3193
  %3199 = and i32 %3167, 8192
  %3200 = icmp ne i32 %3199, 0
  %3201 = select i1 %3200, float %3160, float 1.000000e+00
  %3202 = fmul fast float %3098, 2.000000e+00
  %3203 = fadd fast float %3202, -1.000000e+00
  %3204 = call float @dx.op.unary.f32(i32 6, float %3203)  ; FAbs(value)
  %3205 = fmul fast float %3204, %3091
  %3206 = fsub fast float %3205, %3091
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3208 = fmul fast float %3105, 2.000000e+00
  %3209 = fadd fast float %3208, -1.000000e+00
  %3210 = call float @dx.op.unary.f32(i32 6, float %3209)  ; FAbs(value)
  %3211 = fmul fast float %3210, %3092
  %3212 = fsub fast float %3211, %3092
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = fmul fast float %3117, %3054
  %3215 = fsub fast float %3214, %3054
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3217 = fmul fast float %3175, %3201
  %3218 = fmul fast float %3217, %3172
  %3219 = fmul fast float %3218, %3207
  %3220 = fmul fast float %3219, %3198
  %3221 = fmul fast float %3220, %3213
  %3222 = fmul fast float %3221, %3216
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3226 = fsub fast float %3134, %3225
  %3227 = fmul fast float %3226, %3224
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3229 = fmul fast float %3222, %3055
  %3230 = fadd fast float %3222, %3055
  %3231 = fmul fast float %3230, %3064
  %3232 = fsub fast float %3231, %3064
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = and i32 %3167, 128
  %3235 = icmp ne i32 %3234, 0
  %3236 = select i1 %3235, float %3233, float %3229
  %3237 = fmul fast float %3236, %3228
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = fcmp fast ugt float %3237, %3239
  br i1 %3240, label %3241, label %3138

; <label>:3241                                    ; preds = %3158
  %3242 = select i1 %3200, float %3237, float 0.000000e+00
  %3243 = fadd fast float %3242, %3019
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  br i1 %3200, label %3138, label %3245

; <label>:3245                                    ; preds = %3241
  %3246 = and i32 %3167, 4
  %3247 = and i32 %3167, 8
  %3248 = add i32 %3050, 0
  %3249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3249, %dx.types.Handle %3250, float %3178, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3183, float %3185, float undef, float %3187, float %3189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3252 = extractvalue %dx.types.ResRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.ResRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.ResRet.f32 %3251, 2
  %3255 = extractvalue %dx.types.ResRet.f32 %3251, 3
  %3256 = bitcast float %3076 to i32
  %3257 = and i32 %3256, 255
  %3258 = uitofp i32 %3257 to float
  %3259 = lshr i32 %3256, 8
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = fmul fast float %3255, %3258
  %3263 = fadd fast float %3262, %3261
  %3264 = fmul fast float %3263, 0x3F70101000000000
  %3265 = add i32 %3051, 0
  %3266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3267 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3266, %dx.types.Handle %3250, float %3178, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3183, float %3185, float undef, float %3187, float %3189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3272 = bitcast float %3070 to i32
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = lshr i32 %3272, 8
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = lshr i32 %3272, 16
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = fmul fast float %3280, 0x3F70101000000000
  %3282 = fmul fast float %3268, %3274
  %3283 = fadd fast float %3282, %3277
  %3284 = fmul fast float %3283, 0x3F70101000000000
  %3285 = fadd fast float %3269, -5.000000e-01
  %3286 = fadd fast float %3271, -5.000000e-01
  %3287 = fmul fast float %3285, %3281
  %3288 = fmul fast float %3286, %3281
  %3289 = fadd fast float %3287, 5.000000e-01
  %3290 = fadd fast float %3288, 5.000000e-01
  %3291 = fmul fast float %3252, %3079
  %3292 = fmul fast float %3253, %3080
  %3293 = fmul fast float %3254, %3081
  %3294 = fmul fast float %3289, 2.000000e+00
  %3295 = fadd fast float %3294, -1.000000e+00
  %3296 = fmul fast float %3290, 2.000000e+00
  %3297 = fadd fast float %3296, -1.000000e+00
  %3298 = fadd fast float %3295, %3297
  %3299 = fmul fast float %3298, 5.000000e-01
  %3300 = fsub fast float %3295, %3297
  %3301 = fmul fast float %3300, 5.000000e-01
  %3302 = call float @dx.op.unary.f32(i32 6, float %3299)  ; FAbs(value)
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = call float @dx.op.unary.f32(i32 6, float %3301)  ; FAbs(value)
  %3305 = fsub fast float %3303, %3304
  %3306 = call float @dx.op.dot3.f32(i32 55, float %3299, float %3301, float %3305, float %3299, float %3301, float %3305)  ; Dot3(ax,ay,az,bx,by,bz)
  %3307 = call float @dx.op.unary.f32(i32 25, float %3306)  ; Rsqrt(value)
  %3308 = fmul fast float %3299, %3307
  %3309 = fmul fast float %3301, %3307
  %3310 = fmul fast float %3307, %3305
  %3311 = fmul fast float %3310, %3045
  %3312 = fmul fast float %3310, %3046
  %3313 = fmul fast float %3310, %3047
  %3314 = fmul fast float %3308, %3067
  %3315 = fmul fast float %3308, %3068
  %3316 = fmul fast float %3308, %3069
  %3317 = fadd fast float %3314, %3311
  %3318 = fadd fast float %3315, %3312
  %3319 = fadd fast float %3316, %3313
  %3320 = fmul fast float %3309, %3073
  %3321 = fmul fast float %3309, %3074
  %3322 = fmul fast float %3309, %3075
  %3323 = fadd fast float %3317, %3320
  %3324 = fadd fast float %3318, %3321
  %3325 = fadd fast float %3319, %3322
  %3326 = call float @dx.op.dot3.f32(i32 55, float %3323, float %3324, float %3325, float %3323, float %3324, float %3325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3327 = call float @dx.op.unary.f32(i32 25, float %3326)  ; Rsqrt(value)
  %3328 = fmul fast float %3323, %3327
  %3329 = fmul fast float %3324, %3327
  %3330 = fmul fast float %3325, %3327
  %3331 = icmp ne i32 %3247, 0
  %3332 = select i1 %3331, float 1.000000e+00, float 0.000000e+00
  %3333 = fmul fast float %3237, %3332
  %3334 = and i32 %3167, 1
  %3335 = icmp eq i32 %3334, 0
  br i1 %3335, label %3336, label %3340

; <label>:3336                                    ; preds = %3245
  %3337 = fsub fast float %3328, %3027
  %3338 = fsub fast float %3329, %3028
  %3339 = fsub fast float %3330, %3029
  br label %3340

; <label>:3340                                    ; preds = %3336, %3245
  %3341 = phi float [ %3337, %3336 ], [ %3328, %3245 ]
  %3342 = phi float [ %3338, %3336 ], [ %3329, %3245 ]
  %3343 = phi float [ %3339, %3336 ], [ %3330, %3245 ]
  %3344 = fmul float %3343, %3333
  %3345 = fmul float %3342, %3333
  %3346 = fmul float %3341, %3333
  %3347 = fadd fast float %3346, %3027
  %3348 = fadd fast float %3345, %3028
  %3349 = fadd fast float %3344, %3029
  %3350 = icmp ne i32 %3246, 0
  %3351 = select i1 %3350, float 1.000000e+00, float 0.000000e+00
  %3352 = fmul fast float %3237, %3351
  %3353 = fsub fast float %3291, %3034
  %3354 = fsub fast float %3292, %3035
  %3355 = fsub fast float %3293, %3036
  %3356 = fmul fast float %3353, %3352
  %3357 = fmul fast float %3354, %3352
  %3358 = fmul fast float %3355, %3352
  %3359 = fadd fast float %3356, %3034
  %3360 = fadd fast float %3357, %3035
  %3361 = fadd fast float %3358, %3036
  %3362 = fsub fast float %3264, %3033
  %3363 = fmul fast float %3362, %3352
  %3364 = fadd fast float %3363, %3033
  %3365 = fmul fast float %3352, %3023
  %3366 = fsub fast float %3023, %3365
  %3367 = fmul fast float %3352, %3022
  %3368 = fsub fast float %3022, %3367
  %3369 = fadd fast float %3237, %3032
  %3370 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3371 = fsub fast float %3284, %3031
  %3372 = fmul fast float %3371, %3333
  %3373 = fadd fast float %3372, %3031
  %3374 = fsub fast float %3270, %3030
  %3375 = fmul fast float %3374, %3333
  %3376 = fadd fast float %3375, %3030
  %3377 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.CBufRet.f32 %3378, 1
  %3381 = fmul fast float %3380, %3377
  %3382 = fadd fast float %3381, %3379
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = bitcast float %3082 to i32
  %3385 = and i32 %3384, 65535
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = lshr i32 %3384, 16
  %3388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3387)  ; LegacyF16ToF32(value)
  %3389 = fcmp fast oge float %3386, 0.000000e+00
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = select i1 %3389, float %3386, float %3391
  %3393 = fadd fast float %3392, %3388
  %3394 = fsub fast float %3383, %3021
  %3395 = fmul fast float %3394, %3237
  %3396 = fadd fast float %3395, %3021
  %3397 = fmul fast float %3393, %3237
  %3398 = call float @dx.op.binary.f32(i32 35, float %3020, float %3397)  ; FMax(a,b)
  %3399 = and i32 %3167, 16
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3423, label %3401

; <label>:3401                                    ; preds = %3340
  %3402 = bitcast float %3088 to i32
  %3403 = add i32 %3085, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3404, %dx.types.Handle %3250, float %3178, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3183, float %3185, float undef, float %3187, float %3189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = and i32 %3402, 65535
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = fmul fast float %3406, %3079
  %3412 = fmul fast float %3407, %3080
  %3413 = fmul fast float %3408, %3081
  %3414 = and i32 %3167, 16384
  %3415 = icmp ne i32 %3414, 0
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = select i1 %3415, float %3417, float 1.000000e+00
  %3419 = fmul fast float %3418, %3410
  %3420 = fmul fast float %3411, %3419
  %3421 = fmul fast float %3412, %3419
  %3422 = fmul fast float %3413, %3419
  br label %3423

; <label>:3423                                    ; preds = %3401, %3340
  %3424 = phi float [ %3420, %3401 ], [ 0.000000e+00, %3340 ]
  %3425 = phi float [ %3421, %3401 ], [ 0.000000e+00, %3340 ]
  %3426 = phi float [ %3422, %3401 ], [ 0.000000e+00, %3340 ]
  %3427 = fsub fast float %3424, %3024
  %3428 = fsub fast float %3425, %3025
  %3429 = fsub fast float %3426, %3026
  %3430 = fmul fast float %3427, %3237
  %3431 = fmul fast float %3428, %3237
  %3432 = fmul fast float %3429, %3237
  %3433 = fadd fast float %3430, %3024
  %3434 = fadd fast float %3431, %3025
  %3435 = fadd fast float %3432, %3026
  br label %3138

; <label>:3436                                    ; preds = %3138
  br label %3437

; <label>:3437                                    ; preds = %3436, %2954
  %3438 = phi float [ 0.000000e+00, %2954 ], [ %3139, %3436 ]
  %3439 = phi float [ %2835, %2954 ], [ %3140, %3436 ]
  %3440 = phi float [ %2833, %2954 ], [ %3141, %3436 ]
  %3441 = phi float [ 0.000000e+00, %2954 ], [ %3142, %3436 ]
  %3442 = phi float [ 0.000000e+00, %2954 ], [ %3143, %3436 ]
  %3443 = phi float [ %2922, %2954 ], [ %3144, %3436 ]
  %3444 = phi float [ %2923, %2954 ], [ %3145, %3436 ]
  %3445 = phi float [ %2924, %2954 ], [ %3146, %3436 ]
  %3446 = phi float [ %2950, %2954 ], [ %3147, %3436 ]
  %3447 = phi float [ %2951, %2954 ], [ %3148, %3436 ]
  %3448 = phi float [ %2952, %2954 ], [ %3149, %3436 ]
  %3449 = phi float [ %2832, %2954 ], [ %3150, %3436 ]
  %3450 = phi float [ %2831, %2954 ], [ %3151, %3436 ]
  %3451 = phi float [ 0.000000e+00, %2954 ], [ %3152, %3436 ]
  %3452 = phi float [ %2830, %2954 ], [ %3153, %3436 ]
  %3453 = phi float [ %2827, %2954 ], [ %3154, %3436 ]
  %3454 = phi float [ %2828, %2954 ], [ %3155, %3436 ]
  %3455 = phi float [ %2829, %2954 ], [ %3156, %3436 ]
  %3456 = call float @dx.op.dot3.f32(i32 55, float %3446, float %3447, float %3448, float %3446, float %3447, float %3448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = call float @dx.op.unary.f32(i32 25, float %3456)  ; Rsqrt(value)
  %3458 = fmul fast float %3457, %3446
  %3459 = fmul fast float %3457, %3447
  %3460 = fmul fast float %3457, %3448
  %3461 = fadd fast float %3451, %826
  %3462 = call float @dx.op.unary.f32(i32 7, float %3461)  ; Saturate(value)
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3460, float %3458, float %3459, float %3460)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = call float @dx.op.unary.f32(i32 25, float %3463)  ; Rsqrt(value)
  %3465 = fmul fast float %3464, %3458
  %3466 = fmul fast float %3464, %3459
  %3467 = fmul fast float %3464, %3460
  br label %3468

; <label>:3468                                    ; preds = %3437, %2861
  %3469 = phi float [ %3465, %3437 ], [ %2950, %2861 ]
  %3470 = phi float [ %3466, %3437 ], [ %2951, %2861 ]
  %3471 = phi float [ %3467, %3437 ], [ %2952, %2861 ]
  %3472 = phi float [ %3453, %3437 ], [ %2827, %2861 ]
  %3473 = phi float [ %3454, %3437 ], [ %2828, %2861 ]
  %3474 = phi float [ %3455, %3437 ], [ %2829, %2861 ]
  %3475 = phi float [ %3443, %3437 ], [ %2922, %2861 ]
  %3476 = phi float [ %3444, %3437 ], [ %2923, %2861 ]
  %3477 = phi float [ %3445, %3437 ], [ %2924, %2861 ]
  %3478 = phi float [ %3452, %3437 ], [ %2830, %2861 ]
  %3479 = phi float [ %3462, %3437 ], [ %826, %2861 ]
  %3480 = phi float [ %3450, %3437 ], [ %2831, %2861 ]
  %3481 = phi float [ %3449, %3437 ], [ %2832, %2861 ]
  %3482 = phi float [ %3442, %3437 ], [ 0.000000e+00, %2861 ]
  %3483 = phi float [ %3441, %3437 ], [ 0.000000e+00, %2861 ]
  %3484 = phi float [ %3438, %3437 ], [ 0.000000e+00, %2861 ]
  %3485 = phi float [ %3439, %3437 ], [ %2835, %2861 ]
  %3486 = phi float [ %3440, %3437 ], [ %2833, %2861 ]
  %3487 = fadd fast float %3478, 0xBFB99999A0000000
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3489 = fmul fast float %3488, 0x3FF1C71C80000000
  %3490 = call float @dx.op.binary.f32(i32 36, float %3478, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3491 = fsub fast float 1.000000e+00, %3489
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = fmul fast float %3492, %3472
  %3494 = fmul fast float %3492, %3473
  %3495 = fmul fast float %3492, %3474
  %3496 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3497 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3498 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3499 = fmul fast float %3489, %3472
  %3500 = fmul fast float %3489, %3473
  %3501 = fmul fast float %3489, %3474
  %3502 = fadd fast float %3499, %3490
  %3503 = fadd fast float %3500, %3490
  %3504 = fadd fast float %3501, %3490
  %3505 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3506 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.i32 %3509, 3
  %3511 = and i32 %3510, 8
  %3512 = icmp ne i32 %3511, 0
  %3513 = call float @dx.op.binary.f32(i32 35, float %3496, float %3472)  ; FMax(a,b)
  %3514 = call float @dx.op.binary.f32(i32 35, float %3497, float %3472)  ; FMax(a,b)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3498, float %3472)  ; FMax(a,b)
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3496, float %3497, float %3498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = select i1 %208, float %3472, float %3496
  %3518 = select i1 %208, float %3516, float %3497
  %3519 = select i1 %208, float 1.000000e+00, float %3498
  %3520 = select i1 %3512, float %3513, float %3517
  %3521 = select i1 %3512, float %3514, float %3518
  %3522 = select i1 %3512, float %3515, float %3519
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3527 = fadd fast float %3524, %169
  %3528 = fadd fast float %3525, %170
  %3529 = fadd fast float %3526, %171
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = fsub fast float %3527, %3531
  %3534 = fsub fast float %3528, %3532
  %3535 = fmul fast float %3533, %3533
  %3536 = fmul fast float %3534, %3534
  %3537 = fadd fast float %3535, %3536
  %3538 = call float @dx.op.unary.f32(i32 24, float %3537)  ; Sqrt(value)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3540 = fcmp fast olt float %3538, %3539
  br i1 %3540, label %3541, label %3608

; <label>:3541                                    ; preds = %3468
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 0
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3549 = extractvalue %dx.types.CBufRet.f32 %3544, 1
  %3550 = extractvalue %dx.types.CBufRet.f32 %3546, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3552 = extractvalue %dx.types.CBufRet.f32 %3544, 3
  %3553 = extractvalue %dx.types.CBufRet.f32 %3546, 3
  %3554 = fadd fast float %3551, %3527
  %3555 = fadd fast float %3552, %3528
  %3556 = fadd fast float %3553, %3529
  %3557 = fmul fast float %3554, %3543
  %3558 = call float @dx.op.tertiary.f32(i32 46, float %3555, float %3545, float %3557)  ; FMad(a,b,c)
  %3559 = call float @dx.op.tertiary.f32(i32 46, float %3556, float %3547, float %3558)  ; FMad(a,b,c)
  %3560 = fmul fast float %3554, %3548
  %3561 = call float @dx.op.tertiary.f32(i32 46, float %3555, float %3549, float %3560)  ; FMad(a,b,c)
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3556, float %3550, float %3561)  ; FMad(a,b,c)
  %3563 = fsub fast float %3559, %3551
  %3564 = fsub fast float %3562, %3552
  %3565 = fsub fast float %3563, %3531
  %3566 = fadd fast float %3565, %3539
  %3567 = fsub fast float %3564, %3532
  %3568 = fadd fast float %3567, %3539
  %3569 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3570 = fmul fast float %3566, %3569
  %3571 = fmul fast float %3568, %3569
  %3572 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3574 = fsub fast float 1.000000e+00, %3572
  %3575 = fsub fast float 1.000000e+00, %3573
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %33, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = fcmp fast ugt float %3577, 0.000000e+00
  br i1 %3578, label %3579, label %3882

; <label>:3579                                    ; preds = %3541
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 2
  %3582 = fmul fast float %3581, %3577
  %3583 = extractvalue %dx.types.CBufRet.f32 %3580, 3
  %3584 = fadd fast float %3583, %3582
  %3585 = extractvalue %dx.types.CBufRet.f32 %3546, 2
  %3586 = fadd fast float %3584, %3553
  %3587 = fmul fast float %3559, %3547
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3562, float %3550, float %3587)  ; FMad(a,b,c)
  %3589 = call float @dx.op.tertiary.f32(i32 46, float %3586, float %3585, float %3588)  ; FMad(a,b,c)
  %3590 = fsub fast float %3589, %3553
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 2
  %3593 = fsub fast float %3590, %3592
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %33, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = fadd fast float %3599, %3595
  %3603 = fmul fast float %3602, 0x3F847AE140000000
  %3604 = fadd fast float %3600, %3596
  %3605 = fmul fast float %3604, 0x3F847AE140000000
  %3606 = fadd fast float %3601, %3597
  %3607 = fmul fast float %3606, 0x3F847AE140000000
  br label %3882

; <label>:3608                                    ; preds = %3468
  %3609 = and i32 %187, 1
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3882, label %3611

; <label>:3611                                    ; preds = %3608
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3614, 1
  %3620 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3621 = extractvalue %dx.types.CBufRet.f32 %3612, 3
  %3622 = extractvalue %dx.types.CBufRet.f32 %3614, 3
  %3623 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3624 = fadd fast float %3621, %3527
  %3625 = fadd fast float %3622, %3528
  %3626 = fadd fast float %3623, %3529
  %3627 = fmul fast float %3624, %3613
  %3628 = call float @dx.op.tertiary.f32(i32 46, float %3625, float %3615, float %3627)  ; FMad(a,b,c)
  %3629 = call float @dx.op.tertiary.f32(i32 46, float %3626, float %3617, float %3628)  ; FMad(a,b,c)
  %3630 = fmul fast float %3624, %3618
  %3631 = call float @dx.op.tertiary.f32(i32 46, float %3625, float %3619, float %3630)  ; FMad(a,b,c)
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3626, float %3620, float %3631)  ; FMad(a,b,c)
  %3633 = fsub fast float %3629, %3621
  %3634 = fsub fast float %3632, %3622
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.CBufRet.f32 %3635, 3
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 3
  %3642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.i32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.i32 %3642, 1
  %3645 = udiv i32 %3644, %3643
  %3646 = fsub fast float %3633, %3636
  %3647 = fsub fast float %3634, %3637
  %3648 = call float @dx.op.binary.f32(i32 35, float %3646, float 0.000000e+00)  ; FMax(a,b)
  %3649 = call float @dx.op.binary.f32(i32 35, float %3647, float 0.000000e+00)  ; FMax(a,b)
  %3650 = call float @dx.op.binary.f32(i32 36, float %3648, float %3638)  ; FMin(a,b)
  %3651 = call float @dx.op.binary.f32(i32 36, float %3649, float %3639)  ; FMin(a,b)
  %3652 = add i32 %3643, -1
  %3653 = add i32 %3645, -1
  %3654 = fmul fast float %3650, %3641
  %3655 = fmul fast float %3651, %3641
  %3656 = fptoui float %3654 to i32
  %3657 = fptoui float %3655 to i32
  %3658 = call i32 @dx.op.binary.i32(i32 40, i32 %3656, i32 %3652)  ; UMin(a,b)
  %3659 = call i32 @dx.op.binary.i32(i32 40, i32 %3657, i32 %3653)  ; UMin(a,b)
  %3660 = mul i32 %3659, %3643
  %3661 = add i32 %3660, %3658
  %3662 = shl i32 %3661, 2
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = icmp eq i32 %3664, -1
  br i1 %3665, label %3882, label %3666

; <label>:3666                                    ; preds = %3611
  %3667 = mul i32 %3664, 148
  %3668 = add i32 %3667, 4
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = add i32 %3667, 8
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = add i32 %3667, 36
  %3675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = add i32 %3667, 60
  %3678 = add i32 %3667, 92
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = add i32 %3667, 116
  %3682 = fsub fast float %3633, %3670
  %3683 = fsub fast float %3634, %3673
  %3684 = fmul fast float %3641, %3682
  %3685 = fmul fast float %3641, %3683
  %3686 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3687 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 2
  %3691 = call float @dx.op.unary.f32(i32 83, float %3686)  ; DerivCoarseX(value)
  %3692 = call float @dx.op.unary.f32(i32 83, float %3688)  ; DerivCoarseX(value)
  %3693 = call float @dx.op.unary.f32(i32 84, float %3686)  ; DerivCoarseY(value)
  %3694 = call float @dx.op.unary.f32(i32 84, float %3688)  ; DerivCoarseY(value)
  %3695 = fmul fast float %3691, %3690
  %3696 = fmul fast float %3692, %3690
  %3697 = fmul fast float %3693, %3690
  %3698 = fmul fast float %3694, %3690
  %3699 = call float @dx.op.dot2.f32(i32 54, float %3697, float %3698, float %3697, float %3698)  ; Dot2(ax,ay,bx,by)
  %3700 = call float @dx.op.dot2.f32(i32 54, float %3695, float %3696, float %3695, float %3696)  ; Dot2(ax,ay,bx,by)
  %3701 = call float @dx.op.binary.f32(i32 35, float %3700, float %3699)  ; FMax(a,b)
  %3702 = call float @dx.op.unary.f32(i32 23, float %3701)  ; Log(value)
  %3703 = fmul fast float %3702, 5.000000e-01
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 1
  %3706 = fadd fast float %3705, %3703
  %3707 = call float @dx.op.binary.f32(i32 35, float %3706, float 0.000000e+00)  ; FMax(a,b)
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3710 = fadd fast float %3709, %3707
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 3
  %3713 = fadd fast float %3710, %3712
  %3714 = add i32 %3680, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3715, i32 0)  ; GetDimensions(handle,mipLevel)
  %3717 = extractvalue %dx.types.Dimensions %3716, 0
  %3718 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3717)  ; FirstbitLo(value)
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 1
  %3721 = sub nsw i32 %3720, %3718
  %3722 = sitofp i32 %3721 to float
  %3723 = fsub fast float %3713, %3722
  %3724 = call float @dx.op.binary.f32(i32 35, float %3723, float 0.000000e+00)  ; FMax(a,b)
  %3725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3715, %dx.types.Handle %32, float %3686, float %3688, float %3676, float undef, i32 0, i32 0, i32 undef, float %3724)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = fcmp ule float %3726, 0x3FE0101020000000
  %3728 = extractvalue %dx.types.CBufRet.i32 %3719, 0
  %3729 = and i32 %3728, 128
  %3730 = icmp ne i32 %3729, 0
  %3731 = and i1 %3727, %3730
  br i1 %3731, label %3882, label %3732

; <label>:3732                                    ; preds = %3666
  %3733 = add i32 %3667, 20
  %3734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3733, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = add i32 %3667, 24
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = add i32 %3667, 40
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = add i32 %3667, 96
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3747 = fmul fast float %3746, %3686
  %3748 = fmul fast float %3746, %3688
  %3749 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3750 = fadd fast float %3747, %3749
  %3751 = fadd fast float %3748, %3749
  %3752 = add i32 %3744, 0
  %3753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3754 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3753, i32 0)  ; GetDimensions(handle,mipLevel)
  %3755 = extractvalue %dx.types.Dimensions %3754, 0
  %3756 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3755)  ; FirstbitLo(value)
  %3757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.i32 %3757, 1
  %3759 = sub nsw i32 %3758, %3756
  %3760 = sitofp i32 %3759 to float
  %3761 = fsub fast float %3710, %3760
  %3762 = call float @dx.op.binary.f32(i32 35, float %3761, float 0.000000e+00)  ; FMax(a,b)
  %3763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3753, %dx.types.Handle %32, float %3750, float %3751, float %3741, float undef, i32 0, i32 0, i32 undef, float %3762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = fmul fast float %3764, %3735
  %3766 = fadd fast float %3765, %3738
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3775 = extractvalue %dx.types.CBufRet.f32 %3767, 3
  %3776 = fadd fast float %3772, %3633
  %3777 = fadd fast float %3774, %3634
  %3778 = fadd fast float %3766, %3775
  %3779 = fmul fast float %3776, %3768
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3777, float %3769, float %3779)  ; FMad(a,b,c)
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3770, float %3780)  ; FMad(a,b,c)
  %3782 = fsub fast float %3781, %3775
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 2
  %3785 = fsub fast float %3782, %3784
  %3786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.i32 %3786, 0
  %3788 = call i32 @dx.op.binary.i32(i32 40, i32 %3664, i32 %3787)  ; UMin(a,b)
  %3789 = mul i32 %3788, 36
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = add i32 %3789, 4
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = fmul fast float %3794, %3686
  %3796 = fmul fast float %3794, %3688
  %3797 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3798 = fadd fast float %3795, %3797
  %3799 = fadd fast float %3796, %3797
  %3800 = icmp eq i32 %3791, 0
  br i1 %3800, label %3869, label %3801

; <label>:3801                                    ; preds = %3732
  br label %3802

; <label>:3802                                    ; preds = %3859, %3801
  %3803 = phi float [ %3860, %3859 ], [ 0.000000e+00, %3801 ]
  %3804 = phi float [ %3861, %3859 ], [ 0.000000e+00, %3801 ]
  %3805 = phi float [ %3862, %3859 ], [ 0.000000e+00, %3801 ]
  %3806 = phi float [ %3863, %3859 ], [ 0.000000e+00, %3801 ]
  %3807 = phi float [ %3864, %3859 ], [ 0.000000e+00, %3801 ]
  %3808 = phi float [ %3865, %3859 ], [ 0.000000e+00, %3801 ]
  %3809 = phi i32 [ %3866, %3859 ], [ 0, %3801 ]
  %3810 = shl i32 %3809, 2
  %3811 = add i32 %3677, %3810
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = add i32 %3681, %3810
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = add i32 %3816, 0
  %3818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3819 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3818, i32 0)  ; GetDimensions(handle,mipLevel)
  %3820 = extractvalue %dx.types.Dimensions %3819, 0
  %3821 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3820)  ; FirstbitLo(value)
  %3822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.i32 %3822, 1
  %3824 = sub nsw i32 %3823, %3821
  %3825 = sitofp i32 %3824 to float
  %3826 = fsub fast float %3710, %3825
  %3827 = call float @dx.op.binary.f32(i32 35, float %3826, float 0.000000e+00)  ; FMax(a,b)
  %3828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3818, %dx.types.Handle %32, float %3798, float %3799, float %3813, float undef, i32 0, i32 0, i32 undef, float %3827)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = fcmp fast ogt float %3829, 0.000000e+00
  br i1 %3830, label %3831, label %3859

; <label>:3831                                    ; preds = %3802
  %3832 = add i32 %3792, %3810
  %3833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.i32 %3833, 0
  %3835 = and i32 %3834, 32767
  %3836 = mul nuw nsw i32 %3835, 928
  %3837 = add nuw nsw i32 %3836, 48
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = add nuw nsw i32 %3836, 60
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = fmul fast float %3839, %3829
  %3848 = fmul fast float %3840, %3829
  %3849 = fmul fast float %3841, %3829
  %3850 = fadd fast float %3847, %3803
  %3851 = fadd fast float %3848, %3804
  %3852 = fadd fast float %3849, %3805
  %3853 = fmul fast float %3844, %3829
  %3854 = fmul fast float %3845, %3829
  %3855 = fmul fast float %3846, %3829
  %3856 = fadd fast float %3853, %3806
  %3857 = fadd fast float %3854, %3807
  %3858 = fadd fast float %3855, %3808
  br label %3859

; <label>:3859                                    ; preds = %3831, %3802
  %3860 = phi float [ %3850, %3831 ], [ %3803, %3802 ]
  %3861 = phi float [ %3851, %3831 ], [ %3804, %3802 ]
  %3862 = phi float [ %3852, %3831 ], [ %3805, %3802 ]
  %3863 = phi float [ %3856, %3831 ], [ %3806, %3802 ]
  %3864 = phi float [ %3857, %3831 ], [ %3807, %3802 ]
  %3865 = phi float [ %3858, %3831 ], [ %3808, %3802 ]
  %3866 = add nuw i32 %3809, 1
  %3867 = icmp eq i32 %3866, %3791
  br i1 %3867, label %3868, label %3802

; <label>:3868                                    ; preds = %3859
  br label %3869

; <label>:3869                                    ; preds = %3868, %3732
  %3870 = phi float [ 0.000000e+00, %3732 ], [ %3860, %3868 ]
  %3871 = phi float [ 0.000000e+00, %3732 ], [ %3861, %3868 ]
  %3872 = phi float [ 0.000000e+00, %3732 ], [ %3862, %3868 ]
  %3873 = phi float [ 0.000000e+00, %3732 ], [ %3863, %3868 ]
  %3874 = phi float [ 0.000000e+00, %3732 ], [ %3864, %3868 ]
  %3875 = phi float [ 0.000000e+00, %3732 ], [ %3865, %3868 ]
  %3876 = fadd fast float %3873, %3870
  %3877 = fmul fast float %3876, 0x3F847AE140000000
  %3878 = fadd fast float %3874, %3871
  %3879 = fmul fast float %3878, 0x3F847AE140000000
  %3880 = fadd fast float %3875, %3872
  %3881 = fmul fast float %3880, 0x3F847AE140000000
  br label %3882

; <label>:3882                                    ; preds = %3869, %3666, %3611, %3608, %3579, %3541
  %3883 = phi float [ %3593, %3579 ], [ -1.310720e+05, %3541 ], [ %3785, %3869 ], [ -1.310720e+05, %3611 ], [ -1.310720e+05, %3666 ], [ -1.310720e+05, %3608 ]
  %3884 = phi float [ %3603, %3579 ], [ 0.000000e+00, %3541 ], [ %3877, %3869 ], [ 0.000000e+00, %3611 ], [ 0.000000e+00, %3666 ], [ 0.000000e+00, %3608 ]
  %3885 = phi float [ %3605, %3579 ], [ 0.000000e+00, %3541 ], [ %3879, %3869 ], [ 0.000000e+00, %3611 ], [ 0.000000e+00, %3666 ], [ 0.000000e+00, %3608 ]
  %3886 = phi float [ %3607, %3579 ], [ 0.000000e+00, %3541 ], [ %3881, %3869 ], [ 0.000000e+00, %3611 ], [ 0.000000e+00, %3666 ], [ 0.000000e+00, %3608 ]
  %3887 = phi i1 [ true, %3579 ], [ false, %3541 ], [ true, %3869 ], [ false, %3611 ], [ false, %3666 ], [ false, %3608 ]
  %3888 = and i32 %187, 3
  %3889 = icmp eq i32 %3888, 1
  %3890 = select i1 %3889, float 1.000000e+00, float 0.000000e+00
  %3891 = fsub fast float %3883, %171
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = select i1 %3887, float %3892, float 1.000000e+00
  %3894 = fmul fast float %3893, %3890
  %3895 = icmp eq i32 %3888, 3
  %3896 = select i1 %3895, float 1.000000e+00, float %3894
  %3897 = call float @dx.op.binary.f32(i32 35, float %3484, float %3896)  ; FMax(a,b)
  %3898 = fcmp fast olt float %3896, 1.000000e+00
  %3899 = fcmp uge float %53, 0.000000e+00
  %3900 = and i1 %3899, %3898
  br i1 %3900, label %3901, label %3911

; <label>:3901                                    ; preds = %3882
  %3902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %32, float %53, float %54, float %55, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = fadd fast float %3903, %3897
  %3907 = fcmp ule float %52, 0.000000e+00
  %3908 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = select i1 %3907, float %3908, float 1.000000e+00
  %3910 = fmul fast float %3909, %3905
  br label %3911

; <label>:3911                                    ; preds = %3901, %3882
  %3912 = phi float [ %3906, %3901 ], [ %3897, %3882 ]
  %3913 = phi float [ %3904, %3901 ], [ 0.000000e+00, %3882 ]
  %3914 = phi float [ %3910, %3901 ], [ 0.000000e+00, %3882 ]
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = fcmp fast une float %3916, 0.000000e+00
  %3919 = fcmp fast une float %3917, 0.000000e+00
  %3920 = or i1 %3918, %3919
  br i1 %3920, label %3921, label %4480

; <label>:3921                                    ; preds = %3911
  br i1 %3918, label %3922, label %4195

; <label>:3922                                    ; preds = %3921
  %3923 = call float @dx.op.unary.f32(i32 23, float %3481)  ; Log(value)
  %3924 = fmul fast float %3923, 4.000000e+00
  %3925 = call float @dx.op.unary.f32(i32 21, float %3924)  ; Exp(value)
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = fmul fast float %3927, %40
  %3929 = fmul fast float %3927, %41
  %3930 = fmul fast float %3927, %42
  %3931 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %3932 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %3933 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %3934 = call float @dx.op.unary.f32(i32 23, float %3931)  ; Log(value)
  %3935 = call float @dx.op.unary.f32(i32 23, float %3932)  ; Log(value)
  %3936 = call float @dx.op.unary.f32(i32 23, float %3933)  ; Log(value)
  %3937 = fmul fast float %3934, 4.000000e+00
  %3938 = fmul fast float %3935, 4.000000e+00
  %3939 = fmul fast float %3936, 4.000000e+00
  %3940 = call float @dx.op.unary.f32(i32 21, float %3937)  ; Exp(value)
  %3941 = call float @dx.op.unary.f32(i32 21, float %3938)  ; Exp(value)
  %3942 = call float @dx.op.unary.f32(i32 21, float %3939)  ; Exp(value)
  %3943 = fadd fast float %3941, %3940
  %3944 = fadd fast float %3943, %3942
  %3945 = fdiv fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3945, %3940
  %3947 = fcmp fast ogt float %49, 0.000000e+00
  %3948 = fcmp fast ogt float %50, 0.000000e+00
  %3949 = fcmp fast ogt float %51, 0.000000e+00
  %3950 = fcmp fast olt float %49, 0.000000e+00
  %3951 = fcmp fast olt float %50, 0.000000e+00
  %3952 = fcmp fast olt float %51, 0.000000e+00
  %3953 = zext i1 %3947 to i32
  %3954 = zext i1 %3948 to i32
  %3955 = zext i1 %3949 to i32
  %3956 = zext i1 %3950 to i32
  %3957 = zext i1 %3951 to i32
  %3958 = zext i1 %3952 to i32
  %3959 = sub nsw i32 %3953, %3956
  %3960 = sub nsw i32 %3954, %3957
  %3961 = sub nsw i32 %3955, %3958
  %3962 = call float @dx.op.unary.f32(i32 83, float %3928)  ; DerivCoarseX(value)
  %3963 = call float @dx.op.unary.f32(i32 83, float %3929)  ; DerivCoarseX(value)
  %3964 = call float @dx.op.unary.f32(i32 83, float %3930)  ; DerivCoarseX(value)
  %3965 = call float @dx.op.unary.f32(i32 84, float %3928)  ; DerivCoarseY(value)
  %3966 = call float @dx.op.unary.f32(i32 84, float %3929)  ; DerivCoarseY(value)
  %3967 = call float @dx.op.unary.f32(i32 84, float %3930)  ; DerivCoarseY(value)
  %3968 = fcmp fast ole float %219, %3946
  %3969 = fmul fast float %3945, %3943
  %3970 = fcmp fast ole float %219, %3969
  %3971 = select i1 %3970, float %3930, float %3928
  %3972 = select i1 %3970, float %3928, float %3929
  %3973 = select i1 %3968, float %3929, float %3971
  %3974 = select i1 %3968, float %3930, float %3972
  %3975 = select i1 %3970, float %3964, float %3962
  %3976 = select i1 %3970, float %3962, float %3963
  %3977 = select i1 %3968, float %3963, float %3975
  %3978 = select i1 %3968, float %3964, float %3976
  %3979 = select i1 %3970, float %3967, float %3965
  %3980 = select i1 %3970, float %3965, float %3966
  %3981 = select i1 %3968, float %3966, float %3979
  %3982 = select i1 %3968, float %3967, float %3980
  %3983 = call float @dx.op.unary.f32(i32 27, float %3973)  ; Round_ni(value)
  %3984 = call float @dx.op.unary.f32(i32 27, float %3974)  ; Round_ni(value)
  %3985 = fptosi float %3983 to i32
  %3986 = fptosi float %3984 to i32
  %3987 = xor i32 %3986, %3985
  %3988 = sitofp i32 %3987 to float
  %3989 = fptosi float %3988 to i32
  %3990 = sitofp i32 %3989 to float
  %3991 = fmul fast float %3990, 0x3FE3C6EF40000000
  %3992 = frem fast float %3983, 2.560000e+02
  %3993 = frem fast float %3984, 2.560000e+02
  %3994 = fptoui float %3992 to i32
  %3995 = fptoui float %3993 to i32
  %3996 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %3994, i32 %3995, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = fadd fast float %3997, %3991
  %4001 = fadd fast float %3998, %3991
  %4002 = fadd fast float %3999, %3991
  %4003 = call float @dx.op.unary.f32(i32 22, float %4000)  ; Frc(value)
  %4004 = call float @dx.op.unary.f32(i32 22, float %4001)  ; Frc(value)
  %4005 = call float @dx.op.unary.f32(i32 22, float %4002)  ; Frc(value)
  %4006 = fmul fast float %4005, 0x401921FB60000000
  %4007 = call float @dx.op.unary.f32(i32 13, float %4006)  ; Sin(value)
  %4008 = call float @dx.op.unary.f32(i32 12, float %4006)  ; Cos(value)
  %4009 = fsub fast float -0.000000e+00, %4008
  %4010 = fmul fast float %4008, %3973
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %3974, float %4010)  ; FMad(a,b,c)
  %4012 = fmul fast float %4007, %3973
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %3974, float %4012)  ; FMad(a,b,c)
  %4014 = fadd fast float %4011, %4003
  %4015 = fadd fast float %4013, %4004
  %4016 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %4017 = bitcast float %4016 to i32
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4057, label %4019

; <label>:4019                                    ; preds = %3922
  %4020 = add i32 %4017, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4021, %dx.types.Handle %79, float %4014, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3978, float undef, float %3981, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4027 = fsub fast float 1.000000e+00, %3916
  %4028 = call float @dx.op.binary.f32(i32 35, float %4027, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4029 = bitcast float %3916 to i32
  %4030 = sitofp i32 %4029 to float
  %4031 = fadd fast float %4030, 0xC1CFBF8940000000
  %4032 = fmul fast float %4026, %4031
  %4033 = fadd fast float %4032, 0x41CFBF8940000000
  %4034 = fptosi float %4033 to i32
  %4035 = bitcast i32 %4034 to float
  %4036 = bitcast float %4028 to i32
  %4037 = sitofp i32 %4036 to float
  %4038 = fadd fast float %4037, 0xC1CFBF8940000000
  %4039 = fmul fast float %4038, %4026
  %4040 = fadd fast float %4039, 0x41CFBF8940000000
  %4041 = fptosi float %4040 to i32
  %4042 = bitcast i32 %4041 to float
  %4043 = fmul fast float %4035, %4025
  %4044 = fmul fast float %4042, %4025
  %4045 = fsub fast float %4028, %4043
  %4046 = fadd fast float %4044, %4028
  %4047 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4049 = fsub fast float %4023, %4047
  %4050 = fsub fast float %4048, %4047
  %4051 = bitcast float %4050 to i32
  %4052 = sub nsw i32 2129859010, %4051
  %4053 = bitcast i32 %4052 to float
  %4054 = fmul fast float %4053, %4049
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fcmp fast olt float %4055, 0x3F70101020000000
  br i1 %4056, label %4195, label %4057

; <label>:4057                                    ; preds = %4019, %3922
  %4058 = phi float [ %4055, %4019 ], [ %3916, %3922 ]
  %4059 = fmul fast float %4058, %3925
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 1
  %4062 = extractvalue %dx.types.CBufRet.i32 %4060, 0
  %4063 = add i32 %4062, 0
  %4064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4064, %dx.types.Handle %78, float %4014, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3978, float undef, float %3981, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.ResRet.f32 %4065, 3
  %4070 = and i32 %4061, 255
  %4071 = uitofp i32 %4070 to float
  %4072 = lshr i32 %4061, 8
  %4073 = and i32 %4072, 255
  %4074 = uitofp i32 %4073 to float
  %4075 = fmul fast float %4069, %4071
  %4076 = fadd fast float %4075, %4074
  %4077 = fmul fast float %4076, 0x3F70101000000000
  %4078 = fadd fast float %4077, 0xBFB99999A0000000
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = fmul fast float %4079, 0x3FF1C71C80000000
  %4081 = call float @dx.op.binary.f32(i32 36, float %4077, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4082 = fsub fast float 1.000000e+00, %4080
  %4083 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  %4084 = fmul fast float %4083, %4066
  %4085 = fmul fast float %4083, %4067
  %4086 = fmul fast float %4083, %4068
  %4087 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4088 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4089 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4090 = fmul fast float %4080, %4066
  %4091 = fmul fast float %4080, %4067
  %4092 = fmul fast float %4080, %4068
  %4093 = fadd fast float %4090, %4081
  %4094 = fadd fast float %4091, %4081
  %4095 = fadd fast float %4092, %4081
  %4096 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.i32 %4099, 3
  %4101 = extractvalue %dx.types.CBufRet.i32 %4099, 2
  %4102 = add i32 %4101, 0
  %4103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4103, %dx.types.Handle %78, float %4014, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3978, float undef, float %3981, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = extractvalue %dx.types.ResRet.f32 %4104, 3
  %4109 = and i32 %4100, 255
  %4110 = uitofp i32 %4109 to float
  %4111 = lshr i32 %4100, 8
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = lshr i32 %4100, 16
  %4115 = and i32 %4114, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = fmul fast float %4116, 0x3F70101000000000
  %4118 = fmul fast float %4105, %4110
  %4119 = fadd fast float %4118, %4113
  %4120 = fmul fast float %4119, 0x3F70101000000000
  %4121 = fadd fast float %4106, -5.000000e-01
  %4122 = fadd fast float %4108, -5.000000e-01
  %4123 = fmul fast float %4121, %4117
  %4124 = fmul fast float %4122, %4117
  %4125 = fadd fast float %4123, 5.000000e-01
  %4126 = fadd fast float %4124, 5.000000e-01
  %4127 = fmul fast float %4125, 2.000000e+00
  %4128 = fadd fast float %4127, -1.000000e+00
  %4129 = fmul fast float %4126, 2.000000e+00
  %4130 = fadd fast float %4129, -1.000000e+00
  %4131 = fadd fast float %4128, %4130
  %4132 = fmul fast float %4131, 5.000000e-01
  %4133 = fsub fast float %4128, %4130
  %4134 = fmul fast float %4133, 5.000000e-01
  %4135 = call float @dx.op.unary.f32(i32 6, float %4132)  ; FAbs(value)
  %4136 = fsub fast float 1.000000e+00, %4135
  %4137 = call float @dx.op.unary.f32(i32 6, float %4134)  ; FAbs(value)
  %4138 = fsub fast float %4136, %4137
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4132, float %4134, float %4138, float %4132, float %4134, float %4138)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = call float @dx.op.unary.f32(i32 25, float %4139)  ; Rsqrt(value)
  %4141 = fmul fast float %4132, %4140
  %4142 = fmul fast float %4134, %4140
  %4143 = select i1 %3970, i32 %3960, i32 %3961
  %4144 = select i1 %3968, i32 %3959, i32 %4143
  %4145 = sitofp i32 %4144 to float
  %4146 = fmul fast float %4138, %4145
  %4147 = fmul fast float %4146, %4140
  %4148 = select i1 %3970, float %4147, float %4142
  %4149 = select i1 %3970, float %4142, float %4147
  %4150 = select i1 %3968, float %4147, float %4141
  %4151 = select i1 %3968, float %4142, float %4148
  %4152 = select i1 %3968, float %4141, float %4149
  %4153 = fsub fast float %4087, %3520
  %4154 = fsub fast float %4088, %3521
  %4155 = fsub fast float %4089, %3522
  %4156 = fmul fast float %4153, %4059
  %4157 = fmul fast float %4154, %4059
  %4158 = fmul fast float %4155, %4059
  %4159 = fadd fast float %4156, %3520
  %4160 = fadd fast float %4157, %3521
  %4161 = fadd fast float %4158, %3522
  %4162 = fsub fast float %4096, %3505
  %4163 = fsub fast float %4097, %3506
  %4164 = fsub fast float %4098, %3507
  %4165 = fmul fast float %4162, %4059
  %4166 = fmul fast float %4163, %4059
  %4167 = fmul fast float %4164, %4059
  %4168 = fadd fast float %4165, %3505
  %4169 = fadd fast float %4166, %3506
  %4170 = fadd fast float %4167, %3507
  %4171 = fadd fast float %4150, %3469
  %4172 = fadd fast float %4151, %3470
  %4173 = fadd fast float %4152, %3471
  %4174 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4172, float %4173, float %4171, float %4172, float %4173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = call float @dx.op.unary.f32(i32 25, float %4174)  ; Rsqrt(value)
  %4176 = fmul fast float %4171, %4175
  %4177 = fmul fast float %4172, %4175
  %4178 = fmul fast float %4173, %4175
  %4179 = fsub fast float %4176, %3469
  %4180 = fsub fast float %4177, %3470
  %4181 = fsub fast float %4178, %3471
  %4182 = fmul fast float %4179, %4059
  %4183 = fmul fast float %4180, %4059
  %4184 = fmul fast float %4181, %4059
  %4185 = fadd fast float %4182, %3469
  %4186 = fadd fast float %4183, %3470
  %4187 = fadd fast float %4184, %3471
  %4188 = call float @dx.op.binary.f32(i32 36, float %3481, float %4107)  ; FMin(a,b)
  %4189 = fsub fast float %4188, %3481
  %4190 = fmul fast float %4189, %4059
  %4191 = fadd fast float %4190, %3481
  %4192 = fsub fast float %4120, %3508
  %4193 = fmul fast float %4192, %4059
  %4194 = fadd fast float %4193, %3508
  br label %4195

; <label>:4195                                    ; preds = %4057, %4019, %3921
  %4196 = phi float [ %4159, %4057 ], [ %3520, %4019 ], [ %3520, %3921 ]
  %4197 = phi float [ %4160, %4057 ], [ %3521, %4019 ], [ %3521, %3921 ]
  %4198 = phi float [ %4161, %4057 ], [ %3522, %4019 ], [ %3522, %3921 ]
  %4199 = phi float [ %4168, %4057 ], [ %3505, %4019 ], [ %3505, %3921 ]
  %4200 = phi float [ %4169, %4057 ], [ %3506, %4019 ], [ %3506, %3921 ]
  %4201 = phi float [ %4170, %4057 ], [ %3507, %4019 ], [ %3507, %3921 ]
  %4202 = phi float [ %4185, %4057 ], [ %3469, %4019 ], [ %3469, %3921 ]
  %4203 = phi float [ %4186, %4057 ], [ %3470, %4019 ], [ %3470, %3921 ]
  %4204 = phi float [ %4187, %4057 ], [ %3471, %4019 ], [ %3471, %3921 ]
  %4205 = phi float [ %4194, %4057 ], [ %3508, %4019 ], [ %3508, %3921 ]
  %4206 = phi float [ %4191, %4057 ], [ %3481, %4019 ], [ %3481, %3921 ]
  br i1 %3919, label %4207, label %4480

; <label>:4207                                    ; preds = %4195
  %4208 = call float @dx.op.unary.f32(i32 23, float %4206)  ; Log(value)
  %4209 = fmul fast float %4208, 4.000000e+00
  %4210 = call float @dx.op.unary.f32(i32 21, float %4209)  ; Exp(value)
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = fmul fast float %4212, %40
  %4214 = fmul fast float %4212, %41
  %4215 = fmul fast float %4212, %42
  %4216 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4217 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %4218 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %4219 = call float @dx.op.unary.f32(i32 23, float %4216)  ; Log(value)
  %4220 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4221 = call float @dx.op.unary.f32(i32 23, float %4218)  ; Log(value)
  %4222 = fmul fast float %4219, 4.000000e+00
  %4223 = fmul fast float %4220, 4.000000e+00
  %4224 = fmul fast float %4221, 4.000000e+00
  %4225 = call float @dx.op.unary.f32(i32 21, float %4222)  ; Exp(value)
  %4226 = call float @dx.op.unary.f32(i32 21, float %4223)  ; Exp(value)
  %4227 = call float @dx.op.unary.f32(i32 21, float %4224)  ; Exp(value)
  %4228 = fadd fast float %4226, %4225
  %4229 = fadd fast float %4228, %4227
  %4230 = fdiv fast float 1.000000e+00, %4229
  %4231 = fmul fast float %4230, %4225
  %4232 = fcmp fast ogt float %49, 0.000000e+00
  %4233 = fcmp fast ogt float %50, 0.000000e+00
  %4234 = fcmp fast ogt float %51, 0.000000e+00
  %4235 = fcmp fast olt float %49, 0.000000e+00
  %4236 = fcmp fast olt float %50, 0.000000e+00
  %4237 = fcmp fast olt float %51, 0.000000e+00
  %4238 = zext i1 %4232 to i32
  %4239 = zext i1 %4233 to i32
  %4240 = zext i1 %4234 to i32
  %4241 = zext i1 %4235 to i32
  %4242 = zext i1 %4236 to i32
  %4243 = zext i1 %4237 to i32
  %4244 = sub nsw i32 %4238, %4241
  %4245 = sub nsw i32 %4239, %4242
  %4246 = sub nsw i32 %4240, %4243
  %4247 = call float @dx.op.unary.f32(i32 83, float %4213)  ; DerivCoarseX(value)
  %4248 = call float @dx.op.unary.f32(i32 83, float %4214)  ; DerivCoarseX(value)
  %4249 = call float @dx.op.unary.f32(i32 83, float %4215)  ; DerivCoarseX(value)
  %4250 = call float @dx.op.unary.f32(i32 84, float %4213)  ; DerivCoarseY(value)
  %4251 = call float @dx.op.unary.f32(i32 84, float %4214)  ; DerivCoarseY(value)
  %4252 = call float @dx.op.unary.f32(i32 84, float %4215)  ; DerivCoarseY(value)
  %4253 = fcmp fast ole float %219, %4231
  %4254 = fmul fast float %4230, %4228
  %4255 = fcmp fast ole float %219, %4254
  %4256 = select i1 %4255, float %4215, float %4213
  %4257 = select i1 %4255, float %4213, float %4214
  %4258 = select i1 %4253, float %4214, float %4256
  %4259 = select i1 %4253, float %4215, float %4257
  %4260 = select i1 %4255, float %4249, float %4247
  %4261 = select i1 %4255, float %4247, float %4248
  %4262 = select i1 %4253, float %4248, float %4260
  %4263 = select i1 %4253, float %4249, float %4261
  %4264 = select i1 %4255, float %4252, float %4250
  %4265 = select i1 %4255, float %4250, float %4251
  %4266 = select i1 %4253, float %4251, float %4264
  %4267 = select i1 %4253, float %4252, float %4265
  %4268 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4269 = call float @dx.op.unary.f32(i32 27, float %4259)  ; Round_ni(value)
  %4270 = fptosi float %4268 to i32
  %4271 = fptosi float %4269 to i32
  %4272 = xor i32 %4271, %4270
  %4273 = sitofp i32 %4272 to float
  %4274 = fptosi float %4273 to i32
  %4275 = sitofp i32 %4274 to float
  %4276 = fmul fast float %4275, 0x3FE3C6EF40000000
  %4277 = frem fast float %4268, 2.560000e+02
  %4278 = frem fast float %4269, 2.560000e+02
  %4279 = fptoui float %4277 to i32
  %4280 = fptoui float %4278 to i32
  %4281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4279, i32 %4280, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.ResRet.f32 %4281, 2
  %4285 = fadd fast float %4282, %4276
  %4286 = fadd fast float %4283, %4276
  %4287 = fadd fast float %4284, %4276
  %4288 = call float @dx.op.unary.f32(i32 22, float %4285)  ; Frc(value)
  %4289 = call float @dx.op.unary.f32(i32 22, float %4286)  ; Frc(value)
  %4290 = call float @dx.op.unary.f32(i32 22, float %4287)  ; Frc(value)
  %4291 = fmul fast float %4290, 0x401921FB60000000
  %4292 = call float @dx.op.unary.f32(i32 13, float %4291)  ; Sin(value)
  %4293 = call float @dx.op.unary.f32(i32 12, float %4291)  ; Cos(value)
  %4294 = fsub fast float -0.000000e+00, %4293
  %4295 = fmul fast float %4293, %4258
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4259, float %4295)  ; FMad(a,b,c)
  %4297 = fmul fast float %4292, %4258
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4259, float %4297)  ; FMad(a,b,c)
  %4299 = fadd fast float %4296, %4288
  %4300 = fadd fast float %4298, %4289
  %4301 = extractvalue %dx.types.CBufRet.f32 %4211, 3
  %4302 = bitcast float %4301 to i32
  %4303 = icmp eq i32 %4302, 0
  br i1 %4303, label %4342, label %4304

; <label>:4304                                    ; preds = %4207
  %4305 = add i32 %4302, 0
  %4306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4307 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4306, %dx.types.Handle %79, float %4299, float %4300, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4263, float undef, float %4266, float %4267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4312 = fsub fast float 1.000000e+00, %3917
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4314 = bitcast float %3917 to i32
  %4315 = sitofp i32 %4314 to float
  %4316 = fadd fast float %4315, 0xC1CFBF8940000000
  %4317 = fmul fast float %4311, %4316
  %4318 = fadd fast float %4317, 0x41CFBF8940000000
  %4319 = fptosi float %4318 to i32
  %4320 = bitcast i32 %4319 to float
  %4321 = bitcast float %4313 to i32
  %4322 = sitofp i32 %4321 to float
  %4323 = fadd fast float %4322, 0xC1CFBF8940000000
  %4324 = fmul fast float %4323, %4311
  %4325 = fadd fast float %4324, 0x41CFBF8940000000
  %4326 = fptosi float %4325 to i32
  %4327 = bitcast i32 %4326 to float
  %4328 = fmul fast float %4320, %4310
  %4329 = fmul fast float %4327, %4310
  %4330 = fsub fast float %4313, %4328
  %4331 = fadd fast float %4329, %4313
  %4332 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4334 = fsub fast float %4308, %4332
  %4335 = fsub fast float %4333, %4332
  %4336 = bitcast float %4335 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = fmul fast float %4338, %4334
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fcmp fast olt float %4340, 0x3F70101020000000
  br i1 %4341, label %4480, label %4342

; <label>:4342                                    ; preds = %4304, %4207
  %4343 = phi float [ %4340, %4304 ], [ %3917, %4207 ]
  %4344 = fmul fast float %4343, %4210
  %4345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.i32 %4345, 1
  %4347 = extractvalue %dx.types.CBufRet.i32 %4345, 0
  %4348 = add i32 %4347, 0
  %4349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4349, %dx.types.Handle %78, float %4299, float %4300, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4263, float undef, float %4266, float %4267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = extractvalue %dx.types.ResRet.f32 %4350, 3
  %4355 = and i32 %4346, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = lshr i32 %4346, 8
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = fmul fast float %4354, %4356
  %4361 = fadd fast float %4360, %4359
  %4362 = fmul fast float %4361, 0x3F70101000000000
  %4363 = fadd fast float %4362, 0xBFB99999A0000000
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fmul fast float %4364, 0x3FF1C71C80000000
  %4366 = call float @dx.op.binary.f32(i32 36, float %4362, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4367 = fsub fast float 1.000000e+00, %4365
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fmul fast float %4368, %4351
  %4370 = fmul fast float %4368, %4352
  %4371 = fmul fast float %4368, %4353
  %4372 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4373 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4374 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4375 = fmul fast float %4365, %4351
  %4376 = fmul fast float %4365, %4352
  %4377 = fmul fast float %4365, %4353
  %4378 = fadd fast float %4375, %4366
  %4379 = fadd fast float %4376, %4366
  %4380 = fadd fast float %4377, %4366
  %4381 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.i32 %4384, 3
  %4386 = extractvalue %dx.types.CBufRet.i32 %4384, 2
  %4387 = add i32 %4386, 0
  %4388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4388, %dx.types.Handle %78, float %4299, float %4300, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4263, float undef, float %4266, float %4267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = extractvalue %dx.types.ResRet.f32 %4389, 3
  %4394 = and i32 %4385, 255
  %4395 = uitofp i32 %4394 to float
  %4396 = lshr i32 %4385, 8
  %4397 = and i32 %4396, 255
  %4398 = uitofp i32 %4397 to float
  %4399 = lshr i32 %4385, 16
  %4400 = and i32 %4399, 255
  %4401 = uitofp i32 %4400 to float
  %4402 = fmul fast float %4401, 0x3F70101000000000
  %4403 = fmul fast float %4390, %4395
  %4404 = fadd fast float %4403, %4398
  %4405 = fmul fast float %4404, 0x3F70101000000000
  %4406 = fadd fast float %4391, -5.000000e-01
  %4407 = fadd fast float %4393, -5.000000e-01
  %4408 = fmul fast float %4406, %4402
  %4409 = fmul fast float %4407, %4402
  %4410 = fadd fast float %4408, 5.000000e-01
  %4411 = fadd fast float %4409, 5.000000e-01
  %4412 = fmul fast float %4410, 2.000000e+00
  %4413 = fadd fast float %4412, -1.000000e+00
  %4414 = fmul fast float %4411, 2.000000e+00
  %4415 = fadd fast float %4414, -1.000000e+00
  %4416 = fadd fast float %4413, %4415
  %4417 = fmul fast float %4416, 5.000000e-01
  %4418 = fsub fast float %4413, %4415
  %4419 = fmul fast float %4418, 5.000000e-01
  %4420 = call float @dx.op.unary.f32(i32 6, float %4417)  ; FAbs(value)
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4423 = fsub fast float %4421, %4422
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4417, float %4419, float %4423, float %4417, float %4419, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  %4426 = fmul fast float %4417, %4425
  %4427 = fmul fast float %4419, %4425
  %4428 = select i1 %4255, i32 %4245, i32 %4246
  %4429 = select i1 %4253, i32 %4244, i32 %4428
  %4430 = sitofp i32 %4429 to float
  %4431 = fmul fast float %4423, %4430
  %4432 = fmul fast float %4431, %4425
  %4433 = select i1 %4255, float %4432, float %4427
  %4434 = select i1 %4255, float %4427, float %4432
  %4435 = select i1 %4253, float %4432, float %4426
  %4436 = select i1 %4253, float %4427, float %4433
  %4437 = select i1 %4253, float %4426, float %4434
  %4438 = fsub fast float %4372, %4196
  %4439 = fsub fast float %4373, %4197
  %4440 = fsub fast float %4374, %4198
  %4441 = fmul fast float %4438, %4344
  %4442 = fmul fast float %4439, %4344
  %4443 = fmul fast float %4440, %4344
  %4444 = fadd fast float %4441, %4196
  %4445 = fadd fast float %4442, %4197
  %4446 = fadd fast float %4443, %4198
  %4447 = fsub fast float %4381, %4199
  %4448 = fsub fast float %4382, %4200
  %4449 = fsub fast float %4383, %4201
  %4450 = fmul fast float %4447, %4344
  %4451 = fmul fast float %4448, %4344
  %4452 = fmul fast float %4449, %4344
  %4453 = fadd fast float %4450, %4199
  %4454 = fadd fast float %4451, %4200
  %4455 = fadd fast float %4452, %4201
  %4456 = fadd fast float %4435, %4202
  %4457 = fadd fast float %4436, %4203
  %4458 = fadd fast float %4437, %4204
  %4459 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4457, float %4458, float %4456, float %4457, float %4458)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  %4461 = fmul fast float %4456, %4460
  %4462 = fmul fast float %4457, %4460
  %4463 = fmul fast float %4458, %4460
  %4464 = fsub fast float %4461, %4202
  %4465 = fsub fast float %4462, %4203
  %4466 = fsub fast float %4463, %4204
  %4467 = fmul fast float %4464, %4344
  %4468 = fmul fast float %4465, %4344
  %4469 = fmul fast float %4466, %4344
  %4470 = fadd fast float %4467, %4202
  %4471 = fadd fast float %4468, %4203
  %4472 = fadd fast float %4469, %4204
  %4473 = call float @dx.op.binary.f32(i32 36, float %4206, float %4392)  ; FMin(a,b)
  %4474 = fsub fast float %4473, %4206
  %4475 = fmul fast float %4474, %4344
  %4476 = fadd fast float %4475, %4206
  %4477 = fsub fast float %4405, %4205
  %4478 = fmul fast float %4477, %4344
  %4479 = fadd fast float %4478, %4205
  br label %4480

; <label>:4480                                    ; preds = %4342, %4304, %4195, %3911
  %4481 = phi float [ %4444, %4342 ], [ %4196, %4304 ], [ %4196, %4195 ], [ %3520, %3911 ]
  %4482 = phi float [ %4445, %4342 ], [ %4197, %4304 ], [ %4197, %4195 ], [ %3521, %3911 ]
  %4483 = phi float [ %4446, %4342 ], [ %4198, %4304 ], [ %4198, %4195 ], [ %3522, %3911 ]
  %4484 = phi float [ %4453, %4342 ], [ %4199, %4304 ], [ %4199, %4195 ], [ %3505, %3911 ]
  %4485 = phi float [ %4454, %4342 ], [ %4200, %4304 ], [ %4200, %4195 ], [ %3506, %3911 ]
  %4486 = phi float [ %4455, %4342 ], [ %4201, %4304 ], [ %4201, %4195 ], [ %3507, %3911 ]
  %4487 = phi float [ %4470, %4342 ], [ %4202, %4304 ], [ %4202, %4195 ], [ %3469, %3911 ]
  %4488 = phi float [ %4471, %4342 ], [ %4203, %4304 ], [ %4203, %4195 ], [ %3470, %3911 ]
  %4489 = phi float [ %4472, %4342 ], [ %4204, %4304 ], [ %4204, %4195 ], [ %3471, %3911 ]
  %4490 = phi float [ %4479, %4342 ], [ %4205, %4304 ], [ %4205, %4195 ], [ %3508, %3911 ]
  %4491 = phi float [ %4476, %4342 ], [ %4206, %4304 ], [ %4206, %4195 ], [ %3481, %3911 ]
  %4492 = fcmp fast une float %3915, 0.000000e+00
  %4493 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = call float @dx.op.unary.f32(i32 25, float %4493)  ; Rsqrt(value)
  br i1 %4492, label %4502, label %4495

; <label>:4495                                    ; preds = %4480
  %4496 = fmul fast float %4494, %169
  %4497 = fmul fast float %4494, %170
  %4498 = fmul fast float %4494, %171
  %4499 = fsub fast float -0.000000e+00, %4496
  %4500 = fsub fast float -0.000000e+00, %4497
  %4501 = fsub fast float -0.000000e+00, %4498
  br label %4669

; <label>:4502                                    ; preds = %4480
  %4503 = fmul fast float %169, %4494
  %4504 = fsub fast float -0.000000e+00, %4503
  %4505 = fmul fast float %170, %4494
  %4506 = fsub fast float -0.000000e+00, %4505
  %4507 = fmul fast float %171, %4494
  %4508 = fsub fast float -0.000000e+00, %4507
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4506, float %4508, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = fmul fast float %3915, 2.500000e+00
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %3915, 0x4013FFFFE0000000
  %4513 = fadd fast float %4512, 0xBFFFFFFFE0000000
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %3915, 0x4004000020000000
  %4516 = fadd fast float %4515, 0xBFF8000040000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %3487, 1.000000e+01
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4519, 2.000000e+00
  %4521 = fsub fast float 3.000000e+00, %4520
  %4522 = fmul fast float %4519, %4519
  %4523 = fmul fast float %4522, %4521
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = fsub fast float 0x3FE3333340000000, %4490
  %4526 = fmul fast float %4525, 0x400AAAAAA0000000
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fmul fast float %4524, %4527
  %4529 = fmul fast float %4481, 0x3FEA2B8620000000
  %4530 = fmul fast float %4482, 0x3FEA2B8620000000
  %4531 = fmul fast float %4483, 0x3FEA2B8620000000
  %4532 = fadd fast float %4529, 0x3FC81DFBA0000000
  %4533 = fmul fast float %4532, %4481
  %4534 = fadd fast float %4533, 0x3F910E6020000000
  %4535 = fadd fast float %4530, 0x3FC81DFBA0000000
  %4536 = fmul fast float %4535, %4482
  %4537 = fadd fast float %4536, 0x3F910E6020000000
  %4538 = fadd fast float %4531, 0x3FC81DFBA0000000
  %4539 = fmul fast float %4538, %4483
  %4540 = fadd fast float %4539, 0x3F910E6020000000
  %4541 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4544 = fsub fast float %4541, %4481
  %4545 = fsub fast float %4542, %4482
  %4546 = fsub fast float %4543, %4483
  %4547 = fmul fast float %4544, %4511
  %4548 = fmul fast float %4547, %4528
  %4549 = fmul fast float %4545, %4511
  %4550 = fmul fast float %4549, %4528
  %4551 = fmul fast float %4546, %4511
  %4552 = fmul fast float %4551, %4528
  %4553 = fadd fast float %4548, %4481
  %4554 = fadd fast float %4550, %4482
  %4555 = fadd fast float %4552, %4483
  %4556 = fmul fast float %4491, %4491
  %4557 = fmul fast float %4556, %4556
  %4558 = fadd fast float %4514, 1.000000e+00
  %4559 = fsub fast float %4558, %4528
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = fsub fast float 1.000000e+00, %4557
  %4564 = call float @dx.op.binary.f32(i32 36, float %4560, float %4563)  ; FMin(a,b)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4566 = call float @dx.op.binary.f32(i32 35, float %4564, float %4565)  ; FMax(a,b)
  %4567 = fadd fast float %4562, 0xBFE4CCCCC0000000
  %4568 = fmul fast float %4567, 0x4006DB6DA0000000
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = fmul fast float %4569, 2.000000e+00
  %4571 = fsub fast float 3.000000e+00, %4570
  %4572 = bitcast float %4484 to i32
  %4573 = ashr i32 %4572, 1
  %4574 = add nsw i32 %4573, 532487669
  %4575 = bitcast i32 %4574 to float
  %4576 = fsub fast float 1.000000e+00, %4575
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4579, 2.000000e+00
  %4581 = bitcast float %4485 to i32
  %4582 = ashr i32 %4581, 1
  %4583 = add nsw i32 %4582, 532487669
  %4584 = bitcast i32 %4583 to float
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = bitcast float %4585 to i32
  %4587 = sub nsw i32 2129859010, %4586
  %4588 = bitcast i32 %4587 to float
  %4589 = fmul fast float %4588, 2.000000e+00
  %4590 = bitcast float %4486 to i32
  %4591 = ashr i32 %4590, 1
  %4592 = add nsw i32 %4591, 532487669
  %4593 = bitcast i32 %4592 to float
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = bitcast float %4594 to i32
  %4596 = sub nsw i32 2129859010, %4595
  %4597 = bitcast i32 %4596 to float
  %4598 = fmul fast float %4597, 2.000000e+00
  %4599 = fsub fast float 0x4002A9FBE0000000, %4580
  %4600 = fadd fast float %4580, 0x3FD54FDF00000000
  %4601 = bitcast float %4600 to i32
  %4602 = sub nsw i32 2129859010, %4601
  %4603 = bitcast i32 %4602 to float
  %4604 = fmul fast float %4603, %4599
  %4605 = fmul fast float %4604, %4604
  %4606 = fsub fast float 0x4002A9FBE0000000, %4589
  %4607 = fadd fast float %4589, 0x3FD54FDF00000000
  %4608 = bitcast float %4607 to i32
  %4609 = sub nsw i32 2129859010, %4608
  %4610 = bitcast i32 %4609 to float
  %4611 = fmul fast float %4610, %4606
  %4612 = fmul fast float %4611, %4611
  %4613 = fsub fast float 0x4002A9FBE0000000, %4598
  %4614 = fadd fast float %4598, 0x3FD54FDF00000000
  %4615 = bitcast float %4614 to i32
  %4616 = sub nsw i32 2129859010, %4615
  %4617 = bitcast i32 %4616 to float
  %4618 = fmul fast float %4617, %4613
  %4619 = fmul fast float %4618, %4618
  %4620 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4605)  ; FMax(a,b)
  %4621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4612)  ; FMax(a,b)
  %4622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4619)  ; FMax(a,b)
  %4623 = fsub fast float 1.000000e+00, %4509
  %4624 = fadd fast float %4623, %4524
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = fsub fast float 1.000000e+00, %3896
  %4627 = fmul fast float %4566, %4626
  %4628 = fmul fast float %4569, %4569
  %4629 = fmul fast float %4628, %4627
  %4630 = fmul fast float %4629, %4571
  %4631 = fmul fast float %4626, 0xBFE99999A0000000
  %4632 = fmul fast float %4631, %4511
  %4633 = fmul fast float %4632, %4528
  %4634 = fadd fast float %4633, 1.000000e+00
  %4635 = fadd fast float %4490, -1.000000e+00
  %4636 = fmul fast float %4634, %4635
  %4637 = fadd fast float %4636, 1.000000e+00
  %4638 = fsub fast float %4620, %4484
  %4639 = fsub fast float %4621, %4485
  %4640 = fsub fast float %4622, %4486
  %4641 = fmul fast float %4630, %4638
  %4642 = fmul fast float %4630, %4639
  %4643 = fmul fast float %4630, %4640
  %4644 = fadd fast float %4641, %4484
  %4645 = fadd fast float %4642, %4485
  %4646 = fadd fast float %4643, %4486
  %4647 = fsub fast float %89, %4487
  %4648 = fsub fast float %90, %4488
  %4649 = fsub fast float %91, %4489
  %4650 = fmul fast float %4630, %4647
  %4651 = fmul fast float %4630, %4648
  %4652 = fmul fast float %4630, %4649
  %4653 = fadd fast float %4650, %4487
  %4654 = fadd fast float %4651, %4488
  %4655 = fadd fast float %4652, %4489
  %4656 = fmul fast float %4630, %4625
  %4657 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = fmul fast float %4656, %4658
  %4660 = fadd fast float %4659, %4657
  %4661 = fsub fast float 1.000000e+00, %4491
  %4662 = fmul fast float %4630, %4661
  %4663 = fadd fast float %4662, %4491
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4654, float %4655, float %4653, float %4654, float %4655)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 25, float %4664)  ; Rsqrt(value)
  %4666 = fmul fast float %4653, %4665
  %4667 = fmul fast float %4654, %4665
  %4668 = fmul fast float %4655, %4665
  br label %4669

; <label>:4669                                    ; preds = %4502, %4495
  %4670 = phi float [ %4501, %4495 ], [ %4508, %4502 ]
  %4671 = phi float [ %4500, %4495 ], [ %4506, %4502 ]
  %4672 = phi float [ %4499, %4495 ], [ %4504, %4502 ]
  %4673 = phi float [ %4498, %4495 ], [ %4507, %4502 ]
  %4674 = phi float [ %4497, %4495 ], [ %4505, %4502 ]
  %4675 = phi float [ %4496, %4495 ], [ %4503, %4502 ]
  %4676 = phi float [ %4481, %4495 ], [ %4553, %4502 ]
  %4677 = phi float [ %4482, %4495 ], [ %4554, %4502 ]
  %4678 = phi float [ %4483, %4495 ], [ %4555, %4502 ]
  %4679 = phi float [ %4484, %4495 ], [ %4644, %4502 ]
  %4680 = phi float [ %4485, %4495 ], [ %4645, %4502 ]
  %4681 = phi float [ %4486, %4495 ], [ %4646, %4502 ]
  %4682 = phi float [ %4487, %4495 ], [ %4666, %4502 ]
  %4683 = phi float [ %4488, %4495 ], [ %4667, %4502 ]
  %4684 = phi float [ %4489, %4495 ], [ %4668, %4502 ]
  %4685 = phi float [ %4490, %4495 ], [ %4660, %4502 ]
  %4686 = phi float [ %4491, %4495 ], [ %4663, %4502 ]
  %4687 = select i1 %208, float 0.000000e+00, float %4681
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %4672, float %4671, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4674, float %4673, float %4682, float %4683, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fmul fast float %4690, 2.000000e+00
  %4692 = fmul fast float %4691, %4682
  %4693 = fmul fast float %4691, %4683
  %4694 = fmul fast float %4691, %4684
  %4695 = fsub fast float %4675, %4692
  %4696 = fsub fast float %4674, %4693
  %4697 = fsub fast float %4673, %4694
  %4698 = call float @dx.op.binary.f32(i32 36, float %4686, float 1.000000e+00)  ; FMin(a,b)
  %4699 = fsub fast float 1.000000e+00, %4686
  %4700 = bitcast float %4699 to i32
  %4701 = sub nsw i32 2129859010, %4700
  %4702 = fsub fast float 1.000000e+00, %59
  %4703 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4705 = fdiv fast float %4702, %4704
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, 5.000000e-01
  %4709 = fadd fast float %4708, 5.000000e-01
  %4710 = fmul fast float %4709, %59
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, %4705
  %4714 = fadd fast float %4710, %4713
  %4715 = fsub fast float 5.000000e-01, %4708
  %4716 = fmul fast float %4715, %4676
  %4717 = fmul fast float %4715, %4677
  %4718 = fmul fast float %4715, %4678
  %4719 = fadd fast float %4714, %4716
  %4720 = fadd fast float %4714, %4717
  %4721 = fadd fast float %4714, %4718
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4723, 5.000000e-01
  %4725 = fadd fast float %4724, 5.000000e-01
  %4726 = fmul fast float %4725, %59
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4728, %4705
  %4730 = fadd fast float %4726, %4729
  %4731 = fsub fast float 5.000000e-01, %4724
  %4732 = fmul fast float %4731, %4676
  %4733 = fmul fast float %4731, %4677
  %4734 = fmul fast float %4731, %4678
  %4735 = fadd fast float %4730, %4732
  %4736 = fadd fast float %4730, %4733
  %4737 = fadd fast float %4730, %4734
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = call float @dx.op.binary.f32(i32 36, float %4676, float %4739)  ; FMin(a,b)
  %4741 = fsub fast float 1.000000e+00, %4698
  %4742 = fmul fast float %4740, %4741
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = bitcast float %4743 to i32
  %4745 = sub nsw i32 2129859010, %4744
  %4746 = bitcast i32 %4745 to float
  %4747 = call float @dx.op.binary.f32(i32 36, float %4677, float %4739)  ; FMin(a,b)
  %4748 = fmul fast float %4747, %4741
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = call float @dx.op.binary.f32(i32 36, float %4678, float %4739)  ; FMin(a,b)
  %4754 = fmul fast float %4753, %4741
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = bitcast float %4755 to i32
  %4757 = sub nsw i32 2129859010, %4756
  %4758 = bitcast i32 %4757 to float
  %4759 = fmul fast float %4698, %60
  %4760 = fmul fast float %4759, %4719
  %4761 = fmul fast float %4760, %4746
  %4762 = fmul fast float %4698, %61
  %4763 = fmul fast float %4762, %4720
  %4764 = fmul fast float %4763, %4752
  %4765 = fmul fast float %4698, %62
  %4766 = fmul fast float %4765, %4721
  %4767 = fmul fast float %4766, %4758
  %4768 = call float @dx.op.binary.f32(i32 36, float %4679, float %4739)  ; FMin(a,b)
  %4769 = fmul fast float %4768, %4741
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = call float @dx.op.binary.f32(i32 36, float %4680, float %4739)  ; FMin(a,b)
  %4775 = fmul fast float %4774, %4741
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = call float @dx.op.binary.f32(i32 36, float %4687, float %4739)  ; FMin(a,b)
  %4781 = fmul fast float %4780, %4741
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = fmul fast float %4759, %4735
  %4787 = fmul fast float %4786, %4773
  %4788 = fmul fast float %4762, %4736
  %4789 = fmul fast float %4788, %4779
  %4790 = fmul fast float %4765, %4737
  %4791 = fmul fast float %4790, %4785
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4764, float %4767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = select i1 %208, float 0.000000e+00, float %4761
  %4794 = select i1 %208, float %4792, float %4764
  %4795 = select i1 %208, float 0.000000e+00, float %4767
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4789, float %4791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = select i1 %208, float 0.000000e+00, float %4787
  %4798 = select i1 %208, float %4796, float %4789
  %4799 = select i1 %208, float 0.000000e+00, float %4791
  %4800 = fmul fast float %4689, 9.843750e-01
  %4801 = fmul fast float %4685, 9.843750e-01
  %4802 = fadd fast float %4800, 7.812500e-03
  %4803 = fadd fast float %4801, 7.812500e-03
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %33, float %4802, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 3
  %4807 = fmul fast float %4805, %4679
  %4808 = fmul fast float %4805, %4680
  %4809 = fmul fast float %4805, %4687
  %4810 = fadd fast float %4807, %4806
  %4811 = fadd fast float %4808, %4806
  %4812 = fadd fast float %4809, %4806
  %4813 = fcmp fast ogt float %3482, 0.000000e+00
  br i1 %4813, label %4814, label %4840

; <label>:4814                                    ; preds = %4669
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %3482, float %4689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = fadd fast float %4816, -5.000000e-01
  %4820 = fadd fast float %4817, -5.000000e-01
  %4821 = fadd fast float %4818, -5.000000e-01
  %4822 = fsub fast float 1.000000e+00, %4679
  %4823 = fsub fast float 1.000000e+00, %4680
  %4824 = fsub fast float 1.000000e+00, %4687
  %4825 = fmul fast float %4679, 4.000000e+00
  %4826 = fmul fast float %4825, %4822
  %4827 = fmul fast float %4826, %4819
  %4828 = fmul fast float %4680, 4.000000e+00
  %4829 = fmul fast float %4828, %4823
  %4830 = fmul fast float %4829, %4820
  %4831 = fmul fast float %4687, 4.000000e+00
  %4832 = fmul fast float %4831, %4824
  %4833 = fmul fast float %4832, %4821
  %4834 = fadd fast float %4827, %4810
  %4835 = fadd fast float %4830, %4811
  %4836 = fadd fast float %4833, %4812
  %4837 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  br label %4840

; <label>:4840                                    ; preds = %4814, %4669
  %4841 = phi float [ %4837, %4814 ], [ %4810, %4669 ]
  %4842 = phi float [ %4838, %4814 ], [ %4811, %4669 ]
  %4843 = phi float [ %4839, %4814 ], [ %4812, %4669 ]
  %4844 = call float @dx.op.binary.f32(i32 35, float %4842, float %4843)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4841, float %4844)  ; FMax(a,b)
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = fmul fast float %4846, %4793
  %4848 = fmul fast float %4846, %4794
  %4849 = fmul fast float %4846, %4795
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = fcmp fast ogt float %4850, 0x3E7FF19E20000000
  %4852 = fdiv fast float 1.000000e+00, %4850
  %4853 = select i1 %4851, float %4852, float 0.000000e+00
  %4854 = fmul fast float %4853, %4676
  %4855 = fmul fast float %4853, %4677
  %4856 = fmul fast float %4853, %4678
  %4857 = fadd fast float %4854, -1.000000e+00
  %4858 = fadd fast float %4855, -1.000000e+00
  %4859 = fadd fast float %4856, -1.000000e+00
  %4860 = fmul fast float %4857, 5.000000e-01
  %4861 = fmul fast float %4858, 5.000000e-01
  %4862 = fmul fast float %4859, 5.000000e-01
  %4863 = fadd fast float %4860, 1.000000e+00
  %4864 = fadd fast float %4861, 1.000000e+00
  %4865 = fadd fast float %4862, 1.000000e+00
  %4866 = fmul fast float %4841, %4797
  %4867 = fmul fast float %4842, %4798
  %4868 = fmul fast float %4843, %4799
  %4869 = fsub fast float 1.000000e+00, %4689
  %4870 = bitcast float %4869 to i32
  %4871 = sitofp i32 %4870 to float
  %4872 = fmul fast float %4871, 5.000000e+00
  %4873 = fadd fast float %4872, 0xC1EFBF8940000000
  %4874 = fptosi float %4873 to i32
  %4875 = bitcast i32 %4874 to float
  %4876 = fmul fast float %4875, %3483
  %4877 = fmul fast float %4793, %4876
  %4878 = fmul fast float %4877, %4846
  %4879 = fmul fast float %4878, %4863
  %4880 = fmul fast float %4794, %4876
  %4881 = fmul fast float %4880, %4846
  %4882 = fmul fast float %4881, %4864
  %4883 = fmul fast float %4795, %4876
  %4884 = fmul fast float %4883, %4846
  %4885 = fmul fast float %4884, %4865
  %4886 = fmul fast float %4847, %3479
  %4887 = fmul fast float %4848, %3479
  %4888 = fmul fast float %4849, %3479
  %4889 = fadd fast float %4866, %3475
  %4890 = fadd fast float %4889, %4879
  %4891 = fmul fast float %4890, %3479
  %4892 = fadd fast float %4867, %3476
  %4893 = fadd fast float %4892, %4882
  %4894 = fmul fast float %4893, %3479
  %4895 = fadd fast float %4868, %3477
  %4896 = fadd fast float %4895, %4885
  %4897 = fmul fast float %4896, %3479
  %4898 = bitcast i32 %4701 to float
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4901 = fcmp fast oeq float %4900, 0.000000e+00
  br i1 %4901, label %5129, label %4902

; <label>:4902                                    ; preds = %4840
  %4903 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4904 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4906, 2
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = select i1 %208, float %4911, float %4907
  %4915 = select i1 %208, float %4913, float %4908
  %4916 = select i1 %208, float %4912, float %4909
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 1
  %4919 = fcmp fast une float %4918, 0.000000e+00
  br i1 %4919, label %4920, label %4937

; <label>:4920                                    ; preds = %4902
  %4921 = fptoui float %82 to i32
  %4922 = fptoui float %83 to i32
  %4923 = lshr i32 %4921, 4
  %4924 = lshr i32 %4922, 4
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = fptoui float %4926 to i32
  %4928 = add i32 %4927, 15
  %4929 = lshr i32 %4928, 4
  %4930 = mul i32 %4929, %4924
  %4931 = add i32 %4930, %4923
  %4932 = shl i32 %4931, 3
  %4933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.i32 %4933, 0
  %4935 = and i32 %4934, -268435456
  %4936 = icmp eq i32 %4935, -1342177280
  br i1 %4936, label %4947, label %4937

; <label>:4937                                    ; preds = %4920, %4902
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4940 = extractvalue %dx.types.CBufRet.f32 %4938, 3
  %4941 = fmul fast float %4939, %82
  %4942 = fmul fast float %4940, %83
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %4941, float %4942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4943, 2
  br label %4947

; <label>:4947                                    ; preds = %4937, %4920
  %4948 = phi float [ %4944, %4937 ], [ 0.000000e+00, %4920 ]
  %4949 = phi float [ %4945, %4937 ], [ 0.000000e+00, %4920 ]
  %4950 = phi float [ %4946, %4937 ], [ 0.000000e+00, %4920 ]
  %4951 = call float @dx.op.binary.f32(i32 36, float %4949, float %4950)  ; FMin(a,b)
  %4952 = call float @dx.op.binary.f32(i32 36, float %4948, float %4951)  ; FMin(a,b)
  %4953 = fcmp fast ogt float %4952, 0.000000e+00
  br i1 %4953, label %4954, label %5129, !dx.controlflow.hints !80

; <label>:4954                                    ; preds = %4947
  %4955 = fmul fast float %4948, %4914
  %4956 = fmul fast float %4949, %4915
  %4957 = fmul fast float %4950, %4916
  %4958 = fsub fast float %4903, %4675
  %4959 = fsub fast float %4904, %4674
  %4960 = fsub fast float %4905, %4673
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4958, float %4959, float %4960)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call float @dx.op.unary.f32(i32 25, float %4961)  ; Rsqrt(value)
  %4963 = fmul fast float %4962, %4958
  %4964 = fmul fast float %4962, %4959
  %4965 = fmul fast float %4962, %4960
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %4682, float %4683, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4671, float %4670, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4969 = fmul fast float %4968, %4968
  %4970 = fmul fast float %4969, %4898
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = fmul fast float %4971, %4968
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = fmul fast float %4973, %4973
  %4975 = call float @dx.op.unary.f32(i32 6, float %4966)  ; FAbs(value)
  %4976 = fsub fast float 1.000000e+00, %4685
  %4977 = call float @dx.op.binary.f32(i32 35, float %4976, float 0x3F847AE140000000)  ; FMax(a,b)
  %4978 = fmul fast float %4977, %4977
  %4979 = fmul fast float %4978, %4978
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = fmul fast float %4689, %4689
  %4982 = fmul fast float %4981, %4980
  %4983 = fadd fast float %4982, %4979
  %4984 = bitcast float %4983 to i32
  %4985 = ashr i32 %4984, 1
  %4986 = add nsw i32 %4985, 532487669
  %4987 = bitcast i32 %4986 to float
  %4988 = fadd fast float %4987, %4689
  %4989 = fmul fast float %4979, %4974
  %4990 = fsub fast float 1.000000e+00, %4974
  %4991 = fadd fast float %4990, %4989
  %4992 = fmul fast float %4975, %4975
  %4993 = fmul fast float %4992, %4980
  %4994 = fadd fast float %4993, %4979
  %4995 = bitcast float %4994 to i32
  %4996 = ashr i32 %4995, 1
  %4997 = add nsw i32 %4996, 532487669
  %4998 = bitcast i32 %4997 to float
  %4999 = fadd fast float %4998, %4975
  %5000 = fmul fast float %4991, %4991
  %5001 = fmul fast float %5000, %4988
  %5002 = fmul fast float %5001, %4999
  %5003 = fdiv fast float 0x3FF0A00000000000, %5002
  %5004 = fmul fast float %5003, %4979
  %5005 = call float @dx.op.unary.f32(i32 6, float %4967)  ; FAbs(value)
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sitofp i32 %5007 to float
  %5009 = fmul fast float %5008, 5.000000e+00
  %5010 = fadd fast float %5009, 0xC1EFBF8940000000
  %5011 = fptosi float %5010 to i32
  %5012 = bitcast i32 %5011 to float
  %5013 = fsub fast float 1.000000e+00, %4679
  %5014 = fsub fast float 1.000000e+00, %4680
  %5015 = fsub fast float 1.000000e+00, %4687
  %5016 = fmul fast float %5012, %5013
  %5017 = fmul fast float %5012, %5014
  %5018 = fmul fast float %5012, %5015
  %5019 = fadd fast float %5016, %4679
  %5020 = fadd fast float %5017, %4680
  %5021 = fadd fast float %5018, %4687
  br i1 %4813, label %5022, label %5045

; <label>:5022                                    ; preds = %4954
  %5023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %3482, float %5005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = fadd fast float %5024, -5.000000e-01
  %5028 = fadd fast float %5025, -5.000000e-01
  %5029 = fadd fast float %5026, -5.000000e-01
  %5030 = fmul fast float %4679, 4.000000e+00
  %5031 = fmul fast float %5030, %5013
  %5032 = fmul fast float %5031, %5027
  %5033 = fmul fast float %4680, 4.000000e+00
  %5034 = fmul fast float %5033, %5014
  %5035 = fmul fast float %5034, %5028
  %5036 = fmul fast float %4687, 4.000000e+00
  %5037 = fmul fast float %5036, %5015
  %5038 = fmul fast float %5037, %5029
  %5039 = fadd fast float %5032, %5019
  %5040 = fadd fast float %5035, %5020
  %5041 = fadd fast float %5038, %5021
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  br label %5045

; <label>:5045                                    ; preds = %5022, %4954
  %5046 = phi float [ %5042, %5022 ], [ %5019, %4954 ]
  %5047 = phi float [ %5043, %5022 ], [ %5020, %4954 ]
  %5048 = phi float [ %5044, %5022 ], [ %5021, %4954 ]
  %5049 = fmul fast float %4966, 9.843750e-01
  %5050 = fadd fast float %5049, 7.812500e-03
  %5051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %33, float %5050, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5052 = extractvalue %dx.types.ResRet.f32 %5051, 2
  %5053 = extractvalue %dx.types.ResRet.f32 %5051, 3
  %5054 = fmul fast float %5052, %4679
  %5055 = fmul fast float %5052, %4680
  %5056 = fmul fast float %5052, %4687
  %5057 = fadd fast float %5054, %5053
  %5058 = fadd fast float %5055, %5053
  %5059 = fadd fast float %5056, %5053
  br i1 %4813, label %5060, label %5083

; <label>:5060                                    ; preds = %5045
  %5061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %3482, float %4966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5065 = fadd fast float %5062, -5.000000e-01
  %5066 = fadd fast float %5063, -5.000000e-01
  %5067 = fadd fast float %5064, -5.000000e-01
  %5068 = fmul fast float %4679, 4.000000e+00
  %5069 = fmul fast float %5068, %5013
  %5070 = fmul fast float %5069, %5065
  %5071 = fmul fast float %4680, 4.000000e+00
  %5072 = fmul fast float %5071, %5014
  %5073 = fmul fast float %5072, %5066
  %5074 = fmul fast float %4687, 4.000000e+00
  %5075 = fmul fast float %5074, %5015
  %5076 = fmul fast float %5075, %5067
  %5077 = fadd fast float %5070, %5057
  %5078 = fadd fast float %5073, %5058
  %5079 = fadd fast float %5076, %5059
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  br label %5083

; <label>:5083                                    ; preds = %5060, %5045
  %5084 = phi float [ %5080, %5060 ], [ %5057, %5045 ]
  %5085 = phi float [ %5081, %5060 ], [ %5058, %5045 ]
  %5086 = phi float [ %5082, %5060 ], [ %5059, %5045 ]
  %5087 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5088 = call float @dx.op.binary.f32(i32 35, float %5084, float %5087)  ; FMax(a,b)
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = fmul fast float %5046, %5004
  %5091 = fmul fast float %5047, %5004
  %5092 = fmul fast float %5048, %5004
  %5093 = fsub fast float 1.000000e+00, %4967
  %5094 = bitcast float %5093 to i32
  %5095 = sitofp i32 %5094 to float
  %5096 = fmul fast float %5095, 5.000000e+00
  %5097 = fadd fast float %5096, 0xC1EFBF8940000000
  %5098 = fptosi float %5097 to i32
  %5099 = bitcast i32 %5098 to float
  %5100 = fmul fast float %5099, %3483
  %5101 = fmul fast float %5089, %5100
  %5102 = fmul fast float %5101, %4863
  %5103 = fmul fast float %5101, %4864
  %5104 = fmul fast float %5101, %4865
  %5105 = fadd fast float %5102, %5090
  %5106 = fadd fast float %5103, %5091
  %5107 = fadd fast float %5104, %5092
  %5108 = fmul fast float %4972, %4955
  %5109 = fmul fast float %5108, %5089
  %5110 = fmul fast float %4972, %4956
  %5111 = fmul fast float %5110, %5089
  %5112 = fmul fast float %4972, %4957
  %5113 = fmul fast float %5112, %5089
  %5114 = fmul fast float %5108, %5105
  %5115 = fmul fast float %5110, %5106
  %5116 = fmul fast float %5112, %5107
  %5117 = fadd fast float %5109, %4847
  %5118 = fmul fast float %5117, %3479
  %5119 = fadd fast float %5111, %4848
  %5120 = fmul fast float %5119, %3479
  %5121 = fadd fast float %5113, %4849
  %5122 = fmul fast float %5121, %3479
  %5123 = fadd fast float %5114, %4890
  %5124 = fmul fast float %5123, %3479
  %5125 = fadd fast float %5115, %4893
  %5126 = fmul fast float %5125, %3479
  %5127 = fadd fast float %5116, %4896
  %5128 = fmul fast float %5127, %3479
  br label %5129

; <label>:5129                                    ; preds = %5083, %4947, %4840
  %5130 = phi float [ %4891, %4840 ], [ %4891, %4947 ], [ %5124, %5083 ]
  %5131 = phi float [ %4894, %4840 ], [ %4894, %4947 ], [ %5126, %5083 ]
  %5132 = phi float [ %4897, %4840 ], [ %4897, %4947 ], [ %5128, %5083 ]
  %5133 = phi float [ %4886, %4840 ], [ %4886, %4947 ], [ %5118, %5083 ]
  %5134 = phi float [ %4887, %4840 ], [ %4887, %4947 ], [ %5120, %5083 ]
  %5135 = phi float [ %4888, %4840 ], [ %4888, %4947 ], [ %5122, %5083 ]
  %5136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.i32 %5136, 0
  %5138 = icmp eq i32 %5137, 0
  br i1 %5138, label %5573, label %5139

; <label>:5139                                    ; preds = %5129
  %5140 = fptoui float %82 to i32
  %5141 = fptoui float %83 to i32
  %5142 = lshr i32 %5140, 4
  %5143 = lshr i32 %5141, 4
  %5144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.i32 %5144, 0
  %5146 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5143, i32 %5145, i32 %5142)  ; UMad(a,b,c)
  %5147 = add nsw i32 %5137, -1
  %5148 = call i32 @dx.op.binary.i32(i32 37, i32 %5147, i32 0)  ; IMax(a,b)
  %5149 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %5150 = fptoui float %5149 to i32
  %5151 = lshr i32 %5150, 5
  %5152 = call i32 @dx.op.binary.i32(i32 40, i32 %5151, i32 8191)  ; UMin(a,b)
  %5153 = shl i32 %5152, 2
  %5154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5153, i32 undef)  ; BufferLoad(srv,index,wot)
  %5155 = extractvalue %dx.types.ResRet.i32 %5154, 0
  %5156 = lshr i32 %5155, 16
  %5157 = and i32 %5155, 65535
  %5158 = lshr i32 %5155, 21
  %5159 = lshr i32 %5157, 5
  %5160 = call i32 @dx.op.binary.i32(i32 40, i32 %5159, i32 %5148)  ; UMin(a,b)
  %5161 = icmp ugt i32 %5158, %5160
  br i1 %5161, label %5573, label %5162

; <label>:5162                                    ; preds = %5139
  br label %5163

; <label>:5163                                    ; preds = %5563, %5162
  %5164 = phi i32 [ %5570, %5563 ], [ %5158, %5162 ]
  %5165 = phi float [ %5564, %5563 ], [ %5130, %5162 ]
  %5166 = phi float [ %5565, %5563 ], [ %5131, %5162 ]
  %5167 = phi float [ %5566, %5563 ], [ %5132, %5162 ]
  %5168 = phi float [ %5567, %5563 ], [ %5133, %5162 ]
  %5169 = phi float [ %5568, %5563 ], [ %5134, %5162 ]
  %5170 = phi float [ %5569, %5563 ], [ %5135, %5162 ]
  %5171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.i32 %5171, 0
  %5173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5146, i32 %5172, i32 %5164)  ; UMad(a,b,c)
  %5174 = shl i32 %5173, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = shl i32 %5164, 5
  %5178 = sub nsw i32 %5156, %5177
  %5179 = call i32 @dx.op.binary.i32(i32 37, i32 %5178, i32 0)  ; IMax(a,b)
  %5180 = call i32 @dx.op.binary.i32(i32 38, i32 %5179, i32 31)  ; IMin(a,b)
  %5181 = sub nsw i32 1, %5156
  %5182 = add nsw i32 %5181, %5157
  %5183 = call i32 @dx.op.binary.i32(i32 37, i32 %5182, i32 0)  ; IMax(a,b)
  %5184 = call i32 @dx.op.binary.i32(i32 38, i32 %5183, i32 32)  ; IMin(a,b)
  %5185 = and i32 %5184, 31
  %5186 = shl i32 -1, %5185
  %5187 = xor i32 %5186, -1
  %5188 = and i32 %5180, 31
  %5189 = shl i32 %5187, %5188
  %5190 = icmp eq i32 %5184, 32
  %5191 = select i1 %5190, i32 -1, i32 %5189
  %5192 = and i32 %5191, %5176
  %5193 = icmp eq i32 %5192, 0
  br i1 %5193, label %5563, label %5194

; <label>:5194                                    ; preds = %5163
  br label %5195

; <label>:5195                                    ; preds = %5275, %5194
  %5196 = phi i32 [ %5207, %5275 ], [ %5192, %5194 ]
  %5197 = phi float [ %5276, %5275 ], [ %5165, %5194 ]
  %5198 = phi float [ %5277, %5275 ], [ %5166, %5194 ]
  %5199 = phi float [ %5278, %5275 ], [ %5167, %5194 ]
  %5200 = phi float [ %5279, %5275 ], [ %5168, %5194 ]
  %5201 = phi float [ %5280, %5275 ], [ %5169, %5194 ]
  %5202 = phi float [ %5281, %5275 ], [ %5170, %5194 ]
  %5203 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5196)  ; FirstbitLo(value)
  %5204 = add i32 %5203, %5177
  %5205 = and i32 %5203, 31
  %5206 = shl i32 1, %5205
  %5207 = xor i32 %5206, %5196
  %5208 = mul i32 %5204, 112
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = or i32 %5208, 12
  %5214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = add i32 %5208, 44
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = add i32 %5208, 48
  %5220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5219, i32 undef)  ; BufferLoad(srv,index,wot)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = add i32 %5208, 80
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = select i1 %208, float %5226, float %5210
  %5230 = select i1 %208, float %5228, float %5211
  %5231 = select i1 %208, float %5227, float %5212
  %5232 = fsub fast float %5221, %169
  %5233 = fsub fast float %5222, %170
  %5234 = fsub fast float %5223, %171
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5234, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = call float @dx.op.unary.f32(i32 24, float %5235)  ; Sqrt(value)
  %5237 = fdiv fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5237, %5232
  %5239 = fmul fast float %5237, %5233
  %5240 = fmul fast float %5237, %5234
  %5241 = fadd fast float %5236, %5215
  %5242 = fdiv fast float 1.000000e+00, %5241
  %5243 = fmul float %5218, %5242
  %5244 = fmul float %5243, %5243
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = and i32 %5206, %5192
  %5247 = icmp eq i32 %5246, 0
  br i1 %5247, label %5270, label %5248, !dx.controlflow.hints !81

; <label>:5248                                    ; preds = %5195
  %5249 = lshr i32 %5140, 5
  %5250 = lshr i32 %5141, 5
  %5251 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %5249, i32 %5250, i32 %5204, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5252 = extractvalue %dx.types.ResRet.i32 %5251, 0
  %5253 = and i32 %5252, 3
  %5254 = icmp eq i32 %5253, 0
  %5255 = select i1 %5254, float 1.000000e+00, float 0.000000e+00
  %5256 = icmp eq i32 %5253, 3
  br i1 %5256, label %5257, label %5270

; <label>:5257                                    ; preds = %5248
  %5258 = lshr i32 %5252, 10
  %5259 = and i32 %5258, 8160
  %5260 = and i32 %5141, 31
  %5261 = or i32 %5259, %5260
  %5262 = lshr i32 %5252, 1
  %5263 = and i32 %5262, 16352
  %5264 = and i32 %5140, 31
  %5265 = or i32 %5263, %5264
  %5266 = lshr i32 %5252, 23
  %5267 = and i32 %5266, 255
  %5268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5265, i32 %5261, i32 %5267, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  br label %5270

; <label>:5270                                    ; preds = %5257, %5248, %5195
  %5271 = phi float [ %5269, %5257 ], [ %5255, %5248 ], [ 0.000000e+00, %5195 ]
  %5272 = call float @dx.op.binary.f32(i32 36, float %5271, float %5271)  ; FMin(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5271, float %5272)  ; FMin(a,b)
  %5274 = fcmp fast ogt float %5273, 0.000000e+00
  br i1 %5274, label %5283, label %5275, !dx.controlflow.hints !82

; <label>:5275                                    ; preds = %5519, %5270
  %5276 = phi float [ %5197, %5270 ], [ %5559, %5519 ]
  %5277 = phi float [ %5198, %5270 ], [ %5560, %5519 ]
  %5278 = phi float [ %5199, %5270 ], [ %5561, %5519 ]
  %5279 = phi float [ %5200, %5270 ], [ %5553, %5519 ]
  %5280 = phi float [ %5201, %5270 ], [ %5554, %5519 ]
  %5281 = phi float [ %5202, %5270 ], [ %5555, %5519 ]
  %5282 = icmp eq i32 %5196, %5206
  br i1 %5282, label %5562, label %5195

; <label>:5283                                    ; preds = %5270
  %5284 = fmul fast float %5271, %5229
  %5285 = fmul fast float %5271, %5230
  %5286 = fmul fast float %5271, %5231
  %5287 = fsub fast float %5223, %3883
  %5288 = fcmp fast ogt float %5287, 0.000000e+00
  %5289 = fsub fast float %171, %3883
  %5290 = fcmp fast ogt float %5289, 0.000000e+00
  %5291 = xor i1 %5290, %5288
  %5292 = fsub fast float %3883, %5223
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fadd fast float %5293, %5223
  %5295 = select i1 %5291, float %5223, float %5294
  %5296 = fsub fast float %5295, %171
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5296, float %5232, float %5233, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 25, float %5297)  ; Rsqrt(value)
  %5299 = fmul fast float %5298, %5232
  %5300 = fmul fast float %5298, %5233
  %5301 = fmul fast float %5298, %5296
  %5302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = fdiv fast float 1.000000e+00, %5303
  %5305 = fmul fast float %5304, %5302
  %5306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5289, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = fcmp fast olt float %5306, 0.000000e+00
  %5309 = zext i1 %5307 to i32
  %5310 = zext i1 %5308 to i32
  %5311 = sub nsw i32 %5309, %5310
  %5312 = sitofp i32 %5311 to float
  %5313 = fsub fast float %5295, %3883
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5313, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fcmp fast ogt float %5314, 0.000000e+00
  %5316 = fcmp fast olt float %5314, 0.000000e+00
  %5317 = zext i1 %5315 to i32
  %5318 = zext i1 %5316 to i32
  %5319 = sub nsw i32 %5317, %5318
  %5320 = sitofp i32 %5319 to float
  %5321 = fcmp fast une float %5312, %5320
  br i1 %5321, label %5322, label %5332

; <label>:5322                                    ; preds = %5283
  %5323 = fmul fast float %5305, %5301
  %5324 = fmul fast float %5305, %5300
  %5325 = fmul fast float %5305, %5299
  %5326 = fmul fast float %5325, %5325
  %5327 = fmul fast float %5324, %5324
  %5328 = fadd fast float %5326, %5327
  %5329 = fmul fast float %5323, %5323
  %5330 = fadd fast float %5328, %5329
  %5331 = call float @dx.op.unary.f32(i32 24, float %5330)  ; Sqrt(value)
  br label %5344

; <label>:5332                                    ; preds = %5283
  %5333 = icmp slt i32 %5311, 0
  br i1 %5333, label %5334, label %5344

; <label>:5334                                    ; preds = %5332
  %5335 = fsub fast float %169, %5221
  %5336 = fsub fast float %170, %5222
  %5337 = fsub fast float %171, %5295
  %5338 = fmul fast float %5335, %5335
  %5339 = fmul fast float %5336, %5336
  %5340 = fadd fast float %5338, %5339
  %5341 = fmul fast float %5337, %5337
  %5342 = fadd fast float %5340, %5341
  %5343 = call float @dx.op.unary.f32(i32 24, float %5342)  ; Sqrt(value)
  br label %5344

; <label>:5344                                    ; preds = %5334, %5332, %5322
  %5345 = phi float [ %5331, %5322 ], [ %5343, %5334 ], [ 0.000000e+00, %5332 ]
  %5346 = and i1 %5290, %5288
  %5347 = fsub fast float -0.000000e+00, %5345
  %5348 = select i1 %5346, float -0.000000e+00, float %5347
  %5349 = fmul fast float %3884, 0x3FF7154760000000
  %5350 = fmul fast float %5349, %5348
  %5351 = fmul fast float %3885, 0x3FF7154760000000
  %5352 = fmul fast float %5351, %5348
  %5353 = fmul fast float %3886, 0x3FF7154760000000
  %5354 = fmul fast float %5353, %5348
  %5355 = call float @dx.op.unary.f32(i32 21, float %5350)  ; Exp(value)
  %5356 = call float @dx.op.unary.f32(i32 21, float %5352)  ; Exp(value)
  %5357 = call float @dx.op.unary.f32(i32 21, float %5354)  ; Exp(value)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5359 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5361 = fmul fast float %5284, %5358
  %5362 = fmul fast float %5285, %5359
  %5363 = fmul fast float %5286, %5360
  %5364 = fsub fast float %5238, %4675
  %5365 = fsub fast float %5239, %4674
  %5366 = fsub fast float %5240, %4673
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = call float @dx.op.unary.f32(i32 25, float %5367)  ; Rsqrt(value)
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5368, %5365
  %5371 = fmul fast float %5368, %5366
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float %4682, float %4683, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4671, float %4670, float %5369, float %5370, float %5371)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5375 = fmul fast float %5374, %5245
  %5376 = fmul fast float %5374, %5374
  %5377 = fmul fast float %5376, %4898
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fmul fast float %5375, %5378
  %5380 = bitcast float %5235 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = sub nsw i32 1597463007, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5232
  %5385 = fmul fast float %5383, %5233
  %5386 = fmul fast float %5383, %5234
  %5387 = fsub fast float %5384, %4675
  %5388 = fsub fast float %5385, %4674
  %5389 = fsub fast float %5386, %4673
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5387, float %5388, float %5389, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5387, %5391
  %5393 = fmul fast float %5388, %5391
  %5394 = fmul fast float %5389, %5391
  %5395 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fmul fast float %5395, %5395
  %5397 = call float @dx.op.unary.f32(i32 6, float %5372)  ; FAbs(value)
  %5398 = fsub fast float 1.000000e+00, %4685
  %5399 = call float @dx.op.binary.f32(i32 35, float %5398, float 0x3F847AE140000000)  ; FMax(a,b)
  %5400 = fmul fast float %5399, %5399
  %5401 = fmul fast float %5400, %5400
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = fmul fast float %4689, %4689
  %5404 = fmul fast float %5403, %5402
  %5405 = fadd fast float %5404, %5401
  %5406 = bitcast float %5405 to i32
  %5407 = ashr i32 %5406, 1
  %5408 = add nsw i32 %5407, 532487669
  %5409 = bitcast i32 %5408 to float
  %5410 = fadd fast float %5409, %4689
  %5411 = fmul fast float %5401, %5396
  %5412 = fsub fast float 1.000000e+00, %5396
  %5413 = fadd fast float %5412, %5411
  %5414 = fmul fast float %5397, %5397
  %5415 = fmul fast float %5414, %5402
  %5416 = fadd fast float %5415, %5401
  %5417 = bitcast float %5416 to i32
  %5418 = ashr i32 %5417, 1
  %5419 = add nsw i32 %5418, 532487669
  %5420 = bitcast i32 %5419 to float
  %5421 = fadd fast float %5420, %5397
  %5422 = fmul fast float %5413, %5413
  %5423 = fmul fast float %5422, %5410
  %5424 = fmul fast float %5423, %5421
  %5425 = fdiv fast float 1.000000e+00, %5424
  %5426 = bitcast float %5401 to i32
  %5427 = sitofp i32 %5426 to float
  %5428 = fmul fast float %5427, 0x3FE7F73180000000
  %5429 = fadd fast float %5428, 0x41AFE27C40000000
  %5430 = fptosi float %5429 to i32
  %5431 = bitcast i32 %5430 to float
  %5432 = fmul fast float %5218, 0x3FD80E9D60000000
  %5433 = fmul fast float %5432, %5383
  %5434 = fadd fast float %5431, %5433
  %5435 = bitcast float %5434 to i32
  %5436 = sub nsw i32 2129859010, %5435
  %5437 = bitcast i32 %5436 to float
  %5438 = fmul fast float %5401, %5425
  %5439 = fmul fast float %5438, %5431
  %5440 = fmul fast float %5439, %5437
  %5441 = call float @dx.op.unary.f32(i32 6, float %5373)  ; FAbs(value)
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = bitcast float %5442 to i32
  %5444 = sitofp i32 %5443 to float
  %5445 = fmul fast float %5444, 5.000000e+00
  %5446 = fadd fast float %5445, 0xC1EFBF8940000000
  %5447 = fptosi float %5446 to i32
  %5448 = bitcast i32 %5447 to float
  %5449 = fsub fast float 1.000000e+00, %4679
  %5450 = fsub fast float 1.000000e+00, %4680
  %5451 = fsub fast float 1.000000e+00, %4687
  %5452 = fmul fast float %5448, %5449
  %5453 = fmul fast float %5448, %5450
  %5454 = fmul fast float %5448, %5451
  %5455 = fadd fast float %5452, %4679
  %5456 = fadd fast float %5453, %4680
  %5457 = fadd fast float %5454, %4687
  br i1 %4813, label %5458, label %5481

; <label>:5458                                    ; preds = %5344
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %3482, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fadd fast float %5460, -5.000000e-01
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fmul fast float %4679, 4.000000e+00
  %5467 = fmul fast float %5466, %5449
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %4680, 4.000000e+00
  %5470 = fmul fast float %5469, %5450
  %5471 = fmul fast float %5470, %5464
  %5472 = fmul fast float %4687, 4.000000e+00
  %5473 = fmul fast float %5472, %5451
  %5474 = fmul fast float %5473, %5465
  %5475 = fadd fast float %5468, %5455
  %5476 = fadd fast float %5471, %5456
  %5477 = fadd fast float %5474, %5457
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  br label %5481

; <label>:5481                                    ; preds = %5458, %5344
  %5482 = phi float [ %5478, %5458 ], [ %5455, %5344 ]
  %5483 = phi float [ %5479, %5458 ], [ %5456, %5344 ]
  %5484 = phi float [ %5480, %5458 ], [ %5457, %5344 ]
  %5485 = fmul fast float %5372, 9.843750e-01
  %5486 = fadd fast float %5485, 7.812500e-03
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %33, float %5486, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 3
  %5490 = fmul fast float %5488, %4679
  %5491 = fmul fast float %5488, %4680
  %5492 = fmul fast float %5488, %4687
  %5493 = fadd fast float %5490, %5489
  %5494 = fadd fast float %5491, %5489
  %5495 = fadd fast float %5492, %5489
  br i1 %4813, label %5496, label %5519

; <label>:5496                                    ; preds = %5481
  %5497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %3482, float %5372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.ResRet.f32 %5497, 1
  %5500 = extractvalue %dx.types.ResRet.f32 %5497, 2
  %5501 = fadd fast float %5498, -5.000000e-01
  %5502 = fadd fast float %5499, -5.000000e-01
  %5503 = fadd fast float %5500, -5.000000e-01
  %5504 = fmul fast float %4679, 4.000000e+00
  %5505 = fmul fast float %5504, %5449
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %4680, 4.000000e+00
  %5508 = fmul fast float %5507, %5450
  %5509 = fmul fast float %5508, %5502
  %5510 = fmul fast float %4687, 4.000000e+00
  %5511 = fmul fast float %5510, %5451
  %5512 = fmul fast float %5511, %5503
  %5513 = fadd fast float %5506, %5493
  %5514 = fadd fast float %5509, %5494
  %5515 = fadd fast float %5512, %5495
  %5516 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  br label %5519

; <label>:5519                                    ; preds = %5496, %5481
  %5520 = phi float [ %5516, %5496 ], [ %5493, %5481 ]
  %5521 = phi float [ %5517, %5496 ], [ %5494, %5481 ]
  %5522 = phi float [ %5518, %5496 ], [ %5495, %5481 ]
  %5523 = call float @dx.op.binary.f32(i32 35, float %5521, float %5522)  ; FMax(a,b)
  %5524 = call float @dx.op.binary.f32(i32 35, float %5520, float %5523)  ; FMax(a,b)
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5482, %5440
  %5527 = fmul fast float %5483, %5440
  %5528 = fmul fast float %5484, %5440
  %5529 = fsub fast float 1.000000e+00, %5373
  %5530 = bitcast float %5529 to i32
  %5531 = sitofp i32 %5530 to float
  %5532 = fmul fast float %5531, 5.000000e+00
  %5533 = fadd fast float %5532, 0xC1EFBF8940000000
  %5534 = fptosi float %5533 to i32
  %5535 = bitcast i32 %5534 to float
  %5536 = fmul fast float %5535, %3483
  %5537 = fmul fast float %5525, %5536
  %5538 = fmul fast float %5537, %4863
  %5539 = fmul fast float %5537, %4864
  %5540 = fmul fast float %5537, %4865
  %5541 = fadd fast float %5538, %5526
  %5542 = fadd fast float %5539, %5527
  %5543 = fadd fast float %5540, %5528
  %5544 = fmul fast float %5361, %3479
  %5545 = fmul fast float %5544, %5379
  %5546 = fmul fast float %5545, %5525
  %5547 = fmul fast float %5362, %3479
  %5548 = fmul fast float %5547, %5379
  %5549 = fmul fast float %5548, %5525
  %5550 = fmul fast float %5363, %3479
  %5551 = fmul fast float %5550, %5379
  %5552 = fmul fast float %5551, %5525
  %5553 = fadd fast float %5546, %5200
  %5554 = fadd fast float %5549, %5201
  %5555 = fadd fast float %5552, %5202
  %5556 = fmul fast float %5545, %5541
  %5557 = fmul fast float %5548, %5542
  %5558 = fmul fast float %5551, %5543
  %5559 = fadd fast float %5556, %5197
  %5560 = fadd fast float %5557, %5198
  %5561 = fadd fast float %5558, %5199
  br label %5275

; <label>:5562                                    ; preds = %5275
  br label %5563

; <label>:5563                                    ; preds = %5562, %5163
  %5564 = phi float [ %5165, %5163 ], [ %5276, %5562 ]
  %5565 = phi float [ %5166, %5163 ], [ %5277, %5562 ]
  %5566 = phi float [ %5167, %5163 ], [ %5278, %5562 ]
  %5567 = phi float [ %5168, %5163 ], [ %5279, %5562 ]
  %5568 = phi float [ %5169, %5163 ], [ %5280, %5562 ]
  %5569 = phi float [ %5170, %5163 ], [ %5281, %5562 ]
  %5570 = add i32 %5164, 1
  %5571 = icmp ugt i32 %5570, %5160
  br i1 %5571, label %5572, label %5163

; <label>:5572                                    ; preds = %5563
  br label %5573

; <label>:5573                                    ; preds = %5572, %5139, %5129
  %5574 = phi float [ %5130, %5129 ], [ %5130, %5139 ], [ %5564, %5572 ]
  %5575 = phi float [ %5131, %5129 ], [ %5131, %5139 ], [ %5565, %5572 ]
  %5576 = phi float [ %5132, %5129 ], [ %5132, %5139 ], [ %5566, %5572 ]
  %5577 = phi float [ %5133, %5129 ], [ %5133, %5139 ], [ %5567, %5572 ]
  %5578 = phi float [ %5134, %5129 ], [ %5134, %5139 ], [ %5568, %5572 ]
  %5579 = phi float [ %5135, %5129 ], [ %5135, %5139 ], [ %5569, %5572 ]
  %5580 = call float @dx.op.unary.f32(i32 24, float %4676)  ; Sqrt(value)
  %5581 = call float @dx.op.unary.f32(i32 24, float %4677)  ; Sqrt(value)
  %5582 = call float @dx.op.unary.f32(i32 24, float %4678)  ; Sqrt(value)
  %5583 = fmul fast float %5580, %5577
  %5584 = fmul fast float %5581, %5578
  %5585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5586 = extractvalue %dx.types.CBufRet.f32 %5585, 0
  br i1 %208, label %5587, label %5607

; <label>:5587                                    ; preds = %5573
  %5588 = fadd fast float %5579, %3485
  %5589 = fmul fast float %5588, %3486
  %5590 = fsub fast float 1.000000e+00, %3486
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5594 = fmul fast float %5593, %5591
  %5595 = fadd fast float %5594, %5589
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5598 = fmul fast float %5597, %4869
  %5599 = fsub fast float %5595, %5598
  %5600 = fadd fast float %5584, %5583
  %5601 = fmul fast float %5586, %5600
  %5602 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5603 = fsub fast float %5599, %5602
  %5604 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %5605 = fmul fast float %5603, %5604
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  br label %5623

; <label>:5607                                    ; preds = %5573
  %5608 = fmul fast float %5582, %5579
  %5609 = fmul fast float %5586, %5583
  %5610 = fmul fast float %5586, %5584
  %5611 = fmul fast float %5608, %5586
  %5612 = add i32 %38, 356
  %5613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.i32 %5613, 0
  %5615 = and i32 %5614, 32
  %5616 = icmp eq i32 %5615, 0
  br i1 %5616, label %5623, label %5617

; <label>:5617                                    ; preds = %5607
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = fmul fast float %5619, 0x3FE99999A0000000
  %5621 = fadd fast float %5619, %5609
  %5622 = fadd fast float %5620, %5611
  br label %5623

; <label>:5623                                    ; preds = %5617, %5607, %5587
  %5624 = phi float [ %5601, %5587 ], [ %5621, %5617 ], [ %5609, %5607 ]
  %5625 = phi float [ %5606, %5587 ], [ %5610, %5617 ], [ %5610, %5607 ]
  %5626 = phi float [ 1.000000e+00, %5587 ], [ %5622, %5617 ], [ %5611, %5607 ]
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = fmul fast float %5628, %5575
  %5630 = fmul fast float %5628, %5576
  %5631 = fadd fast float %5575, %5574
  %5632 = select i1 %208, float %5631, float %5574
  %5633 = fmul float %5632, %5628
  %5634 = select i1 %208, float 0.000000e+00, float %5629
  %5635 = select i1 %208, float 0.000000e+00, float %5630
  %5636 = fmul fast float %5624, %5580
  %5637 = fmul fast float %5625, %5581
  %5638 = fmul fast float %5626, %5582
  %5639 = fadd fast float %5633, %5636
  %5640 = fadd fast float %5634, %5637
  %5641 = fadd fast float %5635, %5638
  %5642 = select i1 %208, float %5625, float %5640
  %5643 = select i1 %208, float %5626, float %5641
  %5644 = call float @dx.op.binary.f32(i32 36, float %5639, float 3.225500e+04)  ; FMin(a,b)
  %5645 = call float @dx.op.binary.f32(i32 36, float %5642, float 3.225500e+04)  ; FMin(a,b)
  %5646 = call float @dx.op.binary.f32(i32 36, float %5643, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5646)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!51}
!dx.entryPoints = !{!52}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !42, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!42 = !{!43, !44, !45}
!43 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!44 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!45 = !{i32 2, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !79}
!53 = !{!54, !77, null}
!54 = !{!55, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !75, !76}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 1, i8 0, !59}
!59 = !{i32 3, i32 14}
!60 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 2, i8 0, !61}
!61 = !{i32 3, i32 3}
!62 = !{i32 3, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !63}
!63 = !{i32 3, i32 7}
!64 = !{i32 4, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 5, i8 0, !63}
!67 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 6, i8 0, !65}
!68 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 7, i8 0, !63}
!69 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 8, i8 0, !65}
!70 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 9, i8 0, !61}
!71 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 10, i8 0, !65}
!72 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 11, i8 0, !63}
!73 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 12, i8 0, !74}
!74 = !{i32 3, i32 1}
!75 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !56, i8 1, i32 1, i8 4, i32 13, i8 0, !74}
!76 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!79 = !{i32 0, i64 24}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}

