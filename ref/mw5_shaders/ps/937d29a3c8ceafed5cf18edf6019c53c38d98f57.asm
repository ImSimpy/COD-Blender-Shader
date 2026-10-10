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
; shader hash: 37051c5a52c7e77b5ccbd90988f9d148
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %84, %63
  %86 = fmul fast float %84, %64
  %87 = fmul fast float %84, %65
  %88 = fmul fast float %64, %61
  %89 = fmul fast float %65, %60
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %65, %59
  %92 = fmul fast float %63, %61
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %60
  %95 = fmul fast float %64, %59
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %62
  %98 = fmul fast float %93, %62
  %99 = fmul fast float %96, %62
  %100 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %52
  %106 = fmul fast float %104, %53
  %107 = fmul fast float %104, %54
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %78, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %79, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %110, float %135, float %139
  %143 = select i1 %110, float %136, float %140
  %144 = select i1 %110, float %137, float %141
  %145 = fmul fast float %142, %119
  %146 = fmul fast float %143, %119
  %147 = fmul fast float %144, %119
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %110, float %152, float %156
  %160 = select i1 %110, float %153, float %157
  %161 = select i1 %110, float %154, float %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fmul fast float %162, %73
  %166 = fmul fast float %163, %73
  %167 = fmul fast float %164, %73
  %168 = shl i32 %34, 5
  %169 = add i32 %168, 4194304
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = add i32 %168, 4194320
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %78
  %185 = fmul fast float %183, %79
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %0
  %205 = fmul fast float %113, %79
  %206 = fmul fast float %112, %78
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %206, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %201, 0
  %215 = and i1 %200, %214
  br label %216

; <label>:216                                     ; preds = %213, %204
  %217 = phi i1 [ %212, %204 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %78, 2.560000e+02
  %222 = frem fast float %79, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %33, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %33, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %33, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %33, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %33, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %33, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %33, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %33, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %33, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %33, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %33, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %33, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %33, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %33, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %33, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %33, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %33, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %33, 496
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fmul fast float %417, %68
  %421 = fmul fast float %418, %69
  %422 = fmul fast float %419, %70
  br label %423

; <label>:423                                     ; preds = %410, %216
  %424 = phi float [ %70, %216 ], [ %422, %410 ]
  %425 = phi float [ %69, %216 ], [ %421, %410 ]
  %426 = phi float [ %68, %216 ], [ %420, %410 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %423
  %432 = add i32 %33, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %426, float 1.000000e+00
  %438 = add i32 %33, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %425, float 1.000000e+00
  %444 = add i32 %33, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %424, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %423
  %451 = phi float [ %424, %423 ], [ %449, %431 ]
  %452 = phi float [ %425, %423 ], [ %443, %431 ]
  %453 = phi float [ %426, %423 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %33, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %33, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %923, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %39, float 1.000000e+00
  %469 = select i1 %467, float %40, float 0.000000e+00
  %470 = select i1 %467, float %41, float 0.000000e+00
  %471 = select i1 %467, float %42, float 1.000000e+00
  %472 = select i1 %467, float %43, float %66
  %473 = select i1 %467, float %44, float %67
  %474 = add i32 %33, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %33, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %33, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %33, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %269, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %259
  %511 = fmul fast float %270, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %261
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %33, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %764, label %568

; <label>:568                                     ; preds = %563
  %569 = add i32 %33, 376
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = and i32 %482, 255
  %580 = uitofp i32 %579 to float
  %581 = lshr i32 %482, 8
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %578, %580
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %585, 0x3F70101000000000
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 512
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %591

; <label>:591                                     ; preds = %568
  %592 = add i32 %33, 464
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %599

; <label>:599                                     ; preds = %591, %568
  %600 = phi float [ %598, %591 ], [ 1.000000e+00, %568 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 33554432
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %711, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %33, 224
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = add i32 %33, 228
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = add i32 %33, 220
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = and i32 %636, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %636, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %636, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = bitcast float %575 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %575, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %575
  %660 = fmul fast float %659, %658
  %661 = bitcast float %576 to i32
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 1597463174, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %576, 5.000000e-01
  %666 = fmul fast float %664, %664
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.500000e+00, %667
  %669 = fmul fast float %664, %576
  %670 = fmul fast float %669, %668
  %671 = bitcast float %577 to i32
  %672 = ashr i32 %671, 1
  %673 = sub nsw i32 1597463174, %672
  %674 = bitcast i32 %673 to float
  %675 = fmul fast float %577, 5.000000e-01
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.500000e+00, %677
  %679 = fmul fast float %674, %577
  %680 = fmul fast float %679, %678
  %681 = fsub fast float %660, %642
  %682 = fsub fast float %670, %646
  %683 = fsub fast float %680, %650
  %684 = fmul fast float %681, %610
  %685 = fmul fast float %682, %612
  %686 = fmul fast float %683, %617
  %687 = fadd fast float %684, %625
  %688 = fadd fast float %685, %629
  %689 = fadd fast float %686, %633
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = fmul fast float %690, %690
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fsub fast float %693, %575
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fmul fast float %696, %600
  %700 = fmul fast float %697, %600
  %701 = fmul fast float %698, %600
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %622, %586
  %706 = fsub fast float %705, %639
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fsub fast float %707, %586
  %709 = fmul fast float %708, %600
  %710 = fadd fast float %709, %586
  br label %764

; <label>:711                                     ; preds = %599
  %712 = and i32 %602, 134217728
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %748, label %714

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fmul fast float %718, %600
  %722 = fmul fast float %719, %600
  %723 = fmul fast float %720, %600
  %724 = fadd fast float %721, 5.000000e-01
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = fmul fast float %724, 2.000000e+00
  %731 = fsub fast float 1.000000e+00, %730
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %725, 2.000000e+00
  %736 = fsub fast float 1.000000e+00, %735
  %737 = fmul fast float %736, %728
  %738 = fadd fast float %737, %735
  %739 = fmul fast float %738, %728
  %740 = fmul fast float %726, 2.000000e+00
  %741 = fsub fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %729
  %743 = fadd fast float %742, %740
  %744 = fmul fast float %743, %729
  %745 = fmul fast float %734, %734
  %746 = fmul fast float %739, %739
  %747 = fmul fast float %744, %744
  br label %764

; <label>:748                                     ; preds = %711
  %749 = fmul fast float %246, %246
  %750 = fmul fast float %250, %250
  %751 = fmul fast float %254, %254
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fmul fast float %600, %752
  %756 = fmul fast float %600, %753
  %757 = fmul fast float %600, %754
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fmul fast float %758, %575
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  br label %764

; <label>:764                                     ; preds = %748, %714, %605, %563
  %765 = phi float [ %710, %605 ], [ %586, %714 ], [ %586, %748 ], [ 0x3FA23C0BE0000000, %563 ]
  %766 = phi float [ %702, %605 ], [ %745, %714 ], [ %761, %748 ], [ 1.000000e+00, %563 ]
  %767 = phi float [ %703, %605 ], [ %746, %714 ], [ %762, %748 ], [ 1.000000e+00, %563 ]
  %768 = phi float [ %704, %605 ], [ %747, %714 ], [ %763, %748 ], [ 1.000000e+00, %563 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 1
  %771 = and i32 %770, 1
  %772 = icmp ne i32 %771, 0
  %773 = add i32 %33, 356
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 32
  %777 = icmp ne i32 %776, 0
  %778 = and i1 %772, %777
  %779 = select i1 %778, float 1.000000e+00, float %766
  %780 = select i1 %778, float 0x3FD3333340000000, float %767
  %781 = select i1 %778, float 0x3FD3333340000000, float %768
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 32
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %858, label %786

; <label>:786                                     ; preds = %764
  %787 = add i32 %33, 92
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %33, 392
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = and i32 %789, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %789, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %789, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fmul fast float %796, %801
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fadd fast float %797, -5.000000e-01
  %813 = fadd fast float %799, -5.000000e-01
  %814 = fmul fast float %812, %808
  %815 = fmul fast float %813, %808
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fadd fast float %819, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fsub fast float %819, %821
  %825 = fmul fast float %824, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float %827, %828
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %825, float %829, float %823, float %825, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 25, float %830)  ; Rsqrt(value)
  %832 = fmul fast float %823, %831
  %833 = fmul fast float %825, %831
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %854, label %838

; <label>:838                                     ; preds = %786
  %839 = add i32 %33, 280
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %841, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float %811, %849
  %851 = fmul fast float %850, %843
  %852 = fadd fast float %851, %847
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %838, %786
  %855 = phi float [ %853, %838 ], [ %811, %786 ]
  %856 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %858

; <label>:858                                     ; preds = %854, %764
  %859 = phi float [ %855, %854 ], [ 0x3FD6666660000000, %764 ]
  %860 = phi float [ %856, %854 ], [ 0.000000e+00, %764 ]
  %861 = phi float [ %857, %854 ], [ 0.000000e+00, %764 ]
  %862 = phi float [ %798, %854 ], [ 1.000000e+00, %764 ]
  %863 = add i32 %33, 160
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 22
  %867 = shl nuw nsw i32 %866, 5
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 64
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %906, label %873

; <label>:873                                     ; preds = %858
  %874 = add i32 %33, 408
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 131072
  %882 = icmp eq i32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %884, %234
  %888 = fmul fast float %885, %237
  %889 = fmul fast float %886, %240
  br i1 %882, label %896, label %890

; <label>:890                                     ; preds = %873
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %889
  br label %896

; <label>:896                                     ; preds = %890, %873
  %897 = phi float [ %893, %890 ], [ %887, %873 ]
  %898 = phi float [ %894, %890 ], [ %888, %873 ]
  %899 = phi float [ %895, %890 ], [ %889, %873 ]
  %900 = fmul fast float %897, %868
  %901 = select i1 %217, float %900, float %897
  %902 = call float @dx.op.dot3.f32(i32 55, float %901, float %898, float %899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = select i1 %217, float 0.000000e+00, float %897
  %904 = select i1 %217, float %902, float %898
  %905 = select i1 %217, float 0.000000e+00, float %899
  br label %906

; <label>:906                                     ; preds = %896, %858
  %907 = phi float [ %903, %896 ], [ 0.000000e+00, %858 ]
  %908 = phi float [ %904, %896 ], [ 0.000000e+00, %858 ]
  %909 = phi float [ %905, %896 ], [ 0.000000e+00, %858 ]
  %910 = add i32 %33, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %906, %450
  %924 = phi float [ 0.000000e+00, %450 ], [ %860, %906 ]
  %925 = phi float [ 0.000000e+00, %450 ], [ %861, %906 ]
  %926 = phi float [ 0.000000e+00, %450 ], [ %779, %906 ]
  %927 = phi float [ 0.000000e+00, %450 ], [ %780, %906 ]
  %928 = phi float [ 0.000000e+00, %450 ], [ %781, %906 ]
  %929 = phi float [ 0.000000e+00, %450 ], [ %907, %906 ]
  %930 = phi float [ 0.000000e+00, %450 ], [ %908, %906 ]
  %931 = phi float [ 0.000000e+00, %450 ], [ %909, %906 ]
  %932 = phi float [ 0.000000e+00, %450 ], [ %765, %906 ]
  %933 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %906 ]
  %934 = phi float [ 0.000000e+00, %450 ], [ %859, %906 ]
  %935 = phi float [ 0.000000e+00, %450 ], [ %862, %906 ]
  %936 = phi float [ 0.000000e+00, %450 ], [ %922, %906 ]
  br i1 %401, label %1663, label %937

; <label>:937                                     ; preds = %923
  %938 = icmp ult i32 %456, 2
  %939 = add i32 %33, 40
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = add i32 %33, 44
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = or i32 %944, %941
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1663, label %947

; <label>:947                                     ; preds = %937
  %948 = and i32 %941, 262144
  %949 = icmp ne i32 %948, 0
  %950 = select i1 %949, float %39, float 1.000000e+00
  %951 = select i1 %949, float %40, float 0.000000e+00
  %952 = select i1 %949, float %41, float 0.000000e+00
  %953 = select i1 %949, float %42, float 1.000000e+00
  %954 = select i1 %949, float %43, float %66
  %955 = select i1 %949, float %44, float %67
  %956 = add i32 %33, 300
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %960, 0x3F50624DE0000000
  %962 = add i32 %33, 104
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = lshr i32 %964, 24
  %968 = add i32 %33, 308
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %970, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = add i32 %33, 48
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = shl i32 %977, 4
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %977, 7
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %989 = fmul fast float %988, 1.000000e+03
  %990 = fmul fast float %311, %989
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fadd fast float %991, %301
  %993 = fmul fast float %312, %989
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %303
  %996 = fmul fast float %961, %989
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fmul fast float %997, 0x401921FB60000000
  %999 = fadd fast float %998, %980
  %1000 = call float @dx.op.unary.f32(i32 13, float %999)  ; Sin(value)
  %1001 = call float @dx.op.unary.f32(i32 12, float %999)  ; Cos(value)
  %1002 = fsub fast float -0.000000e+00, %1000
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fmul fast float %972, %1003
  %1006 = fmul fast float %974, %1004
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %983, %1007
  %1010 = fmul fast float %986, %1008
  %1011 = fmul fast float %1001, %1009
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1010, float %1011)  ; FMad(a,b,c)
  %1013 = fmul fast float %1000, %1009
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1010, float %1013)  ; FMad(a,b,c)
  %1015 = fadd fast float %992, %1012
  %1016 = fadd fast float %995, %1014
  %1017 = icmp ugt i32 %966, 1
  %1018 = icmp ugt i32 %964, 33554431
  %1019 = or i1 %1018, %1017
  br i1 %1019, label %1020, label %1045

; <label>:1020                                    ; preds = %947
  %1021 = add i32 %33, 244
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = fmul fast float %988, %1025
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = mul nuw nsw i32 %966, %967
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1032 = fptoui float %1031 to i32
  %1033 = urem i32 %1032, %966
  %1034 = udiv i32 %1032, %967
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = uitofp i32 %1033 to float
  %1038 = uitofp i32 %1034 to float
  %1039 = fadd fast float %1035, %1037
  %1040 = fadd fast float %1036, %1038
  %1041 = uitofp i32 %966 to float
  %1042 = uitofp i32 %967 to float
  %1043 = fdiv fast float %1039, %1041
  %1044 = fdiv fast float %1040, %1042
  br label %1045

; <label>:1045                                    ; preds = %1020, %947
  %1046 = phi float [ %1043, %1020 ], [ %1015, %947 ]
  %1047 = phi float [ %1044, %1020 ], [ %1016, %947 ]
  %1048 = and i32 %941, 256
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1096, label %1050

; <label>:1050                                    ; preds = %1045
  %1051 = add i32 %33, 444
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %1053, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1055, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = add i32 %33, 116
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = shl i32 %1060, 4
  %1062 = and i32 %1061, 32752
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1060, 7
  %1065 = and i32 %1064, 32752
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = fsub fast float 1.000000e+00, %453
  %1068 = call float @dx.op.binary.f32(i32 35, float %1067, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1069 = bitcast float %453 to i32
  %1070 = sitofp i32 %1069 to float
  %1071 = fadd fast float %1070, 0xC1CFBF8940000000
  %1072 = fmul fast float %1066, %1071
  %1073 = fadd fast float %1072, 0x41CFBF8940000000
  %1074 = fptosi float %1073 to i32
  %1075 = bitcast i32 %1074 to float
  %1076 = bitcast float %1068 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fadd fast float %1077, 0xC1CFBF8940000000
  %1079 = fmul fast float %1078, %1066
  %1080 = fadd fast float %1079, 0x41CFBF8940000000
  %1081 = fptosi float %1080 to i32
  %1082 = bitcast i32 %1081 to float
  %1083 = fmul fast float %1075, %1063
  %1084 = fmul fast float %1082, %1063
  %1085 = fsub fast float %1068, %1083
  %1086 = fadd fast float %1084, %1068
  %1087 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1088 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1089 = fsub fast float %1057, %1087
  %1090 = fsub fast float %1088, %1087
  %1091 = bitcast float %1090 to i32
  %1092 = sub nsw i32 2129859010, %1091
  %1093 = bitcast i32 %1092 to float
  %1094 = fmul fast float %1093, %1089
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  br label %1096

; <label>:1096                                    ; preds = %1050, %1045
  %1097 = phi float [ %1095, %1050 ], [ %453, %1045 ]
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 128
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1118, label %1102

; <label>:1102                                    ; preds = %1096
  %1103 = add i32 %33, 428
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 524288
  %1113 = icmp ne i32 %1112, 0
  %1114 = fcmp fast ogt float %1109, 0x3FE0101020000000
  %1115 = select i1 %1114, float 1.000000e+00, float 0.000000e+00
  %1116 = select i1 %1113, float %1115, float %1109
  %1117 = fmul fast float %1116, %1097
  br label %1118

; <label>:1118                                    ; preds = %1102, %1096
  %1119 = phi float [ %1117, %1102 ], [ %1097, %1096 ]
  %1120 = fcmp fast ult float %1119, 0x3F70101020000000
  br i1 %1120, label %1663, label %1121

; <label>:1121                                    ; preds = %1118
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 16
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1324, label %1126

; <label>:1126                                    ; preds = %1121
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %33, 380
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = and i32 %1128, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1128, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1138, %1140
  %1145 = fadd fast float %1144, %1143
  %1146 = fmul fast float %1145, 0x3F70101000000000
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 512
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1159, label %1151

; <label>:1151                                    ; preds = %1126
  %1152 = add i32 %33, 468
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %1154, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1156, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  br label %1159

; <label>:1159                                    ; preds = %1151, %1126
  %1160 = phi float [ %1158, %1151 ], [ 1.000000e+00, %1126 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 33554432
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1271, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %33, 240
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1168, 16
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = add i32 %33, 244
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 24
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = and i32 %1179, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = lshr i32 %1179, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = lshr i32 %1179, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = add i32 %33, 236
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 24
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F70101020000000
  %1200 = and i32 %1196, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = lshr i32 %1196, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, 0x3F70101020000000
  %1207 = lshr i32 %1196, 16
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1209, 0x3F70101020000000
  %1211 = bitcast float %1135 to i32
  %1212 = ashr i32 %1211, 1
  %1213 = sub nsw i32 1597463174, %1212
  %1214 = bitcast i32 %1213 to float
  %1215 = fmul fast float %1135, 5.000000e-01
  %1216 = fmul fast float %1214, %1214
  %1217 = fmul fast float %1216, %1215
  %1218 = fsub fast float 1.500000e+00, %1217
  %1219 = fmul fast float %1214, %1135
  %1220 = fmul fast float %1219, %1218
  %1221 = bitcast float %1136 to i32
  %1222 = ashr i32 %1221, 1
  %1223 = sub nsw i32 1597463174, %1222
  %1224 = bitcast i32 %1223 to float
  %1225 = fmul fast float %1136, 5.000000e-01
  %1226 = fmul fast float %1224, %1224
  %1227 = fmul fast float %1226, %1225
  %1228 = fsub fast float 1.500000e+00, %1227
  %1229 = fmul fast float %1224, %1136
  %1230 = fmul fast float %1229, %1228
  %1231 = bitcast float %1137 to i32
  %1232 = ashr i32 %1231, 1
  %1233 = sub nsw i32 1597463174, %1232
  %1234 = bitcast i32 %1233 to float
  %1235 = fmul fast float %1137, 5.000000e-01
  %1236 = fmul fast float %1234, %1234
  %1237 = fmul fast float %1236, %1235
  %1238 = fsub fast float 1.500000e+00, %1237
  %1239 = fmul fast float %1234, %1137
  %1240 = fmul fast float %1239, %1238
  %1241 = fsub fast float %1220, %1202
  %1242 = fsub fast float %1230, %1206
  %1243 = fsub fast float %1240, %1210
  %1244 = fmul fast float %1241, %1170
  %1245 = fmul fast float %1242, %1172
  %1246 = fmul fast float %1243, %1177
  %1247 = fadd fast float %1244, %1185
  %1248 = fadd fast float %1245, %1189
  %1249 = fadd fast float %1246, %1193
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = fmul fast float %1250, %1250
  %1254 = fmul fast float %1251, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fsub fast float %1253, %1135
  %1257 = fsub fast float %1254, %1136
  %1258 = fsub fast float %1255, %1137
  %1259 = fmul fast float %1256, %1160
  %1260 = fmul fast float %1257, %1160
  %1261 = fmul fast float %1258, %1160
  %1262 = fadd fast float %1259, %1135
  %1263 = fadd fast float %1260, %1136
  %1264 = fadd fast float %1261, %1137
  %1265 = fadd fast float %1182, %1146
  %1266 = fsub fast float %1265, %1199
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fsub fast float %1267, %1146
  %1269 = fmul fast float %1268, %1160
  %1270 = fadd fast float %1269, %1146
  br label %1324

; <label>:1271                                    ; preds = %1159
  %1272 = and i32 %1162, 134217728
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1308, label %1274

; <label>:1274                                    ; preds = %1271
  %1275 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1276 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1278 = fadd fast float %1275, -5.000000e-01
  %1279 = fadd fast float %1276, -5.000000e-01
  %1280 = fadd fast float %1277, -5.000000e-01
  %1281 = fmul fast float %1278, %1160
  %1282 = fmul fast float %1279, %1160
  %1283 = fmul fast float %1280, %1160
  %1284 = fadd fast float %1281, 5.000000e-01
  %1285 = fadd fast float %1282, 5.000000e-01
  %1286 = fadd fast float %1283, 5.000000e-01
  %1287 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1288 = call float @dx.op.unary.f32(i32 24, float %1136)  ; Sqrt(value)
  %1289 = call float @dx.op.unary.f32(i32 24, float %1137)  ; Sqrt(value)
  %1290 = fmul fast float %1284, 2.000000e+00
  %1291 = fsub fast float 1.000000e+00, %1290
  %1292 = fmul fast float %1291, %1287
  %1293 = fadd fast float %1292, %1290
  %1294 = fmul fast float %1293, %1287
  %1295 = fmul fast float %1285, 2.000000e+00
  %1296 = fsub fast float 1.000000e+00, %1295
  %1297 = fmul fast float %1296, %1288
  %1298 = fadd fast float %1297, %1295
  %1299 = fmul fast float %1298, %1288
  %1300 = fmul fast float %1286, 2.000000e+00
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = fmul fast float %1301, %1289
  %1303 = fadd fast float %1302, %1300
  %1304 = fmul fast float %1303, %1289
  %1305 = fmul fast float %1294, %1294
  %1306 = fmul fast float %1299, %1299
  %1307 = fmul fast float %1304, %1304
  br label %1324

; <label>:1308                                    ; preds = %1271
  %1309 = fmul fast float %288, %288
  %1310 = fmul fast float %292, %292
  %1311 = fmul fast float %296, %296
  %1312 = fadd fast float %1309, -1.000000e+00
  %1313 = fadd fast float %1310, -1.000000e+00
  %1314 = fadd fast float %1311, -1.000000e+00
  %1315 = fmul fast float %1160, %1312
  %1316 = fmul fast float %1160, %1313
  %1317 = fmul fast float %1160, %1314
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fadd fast float %1316, 1.000000e+00
  %1320 = fadd fast float %1317, 1.000000e+00
  %1321 = fmul fast float %1318, %1135
  %1322 = fmul fast float %1319, %1136
  %1323 = fmul fast float %1320, %1137
  br label %1324

; <label>:1324                                    ; preds = %1308, %1274, %1165, %1121
  %1325 = phi float [ %1270, %1165 ], [ %1146, %1274 ], [ %1146, %1308 ], [ 0x3FA23C0BE0000000, %1121 ]
  %1326 = phi float [ %1262, %1165 ], [ %1305, %1274 ], [ %1321, %1308 ], [ 1.000000e+00, %1121 ]
  %1327 = phi float [ %1263, %1165 ], [ %1306, %1274 ], [ %1322, %1308 ], [ 1.000000e+00, %1121 ]
  %1328 = phi float [ %1264, %1165 ], [ %1307, %1274 ], [ %1323, %1308 ], [ 1.000000e+00, %1121 ]
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 1
  %1331 = and i32 %1330, 1
  %1332 = icmp ne i32 %1331, 0
  %1333 = add i32 %33, 356
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 32
  %1337 = icmp ne i32 %1336, 0
  %1338 = and i1 %1332, %1337
  %1339 = select i1 %1338, float 1.000000e+00, float %1326
  %1340 = select i1 %1338, float 0x3FD3333340000000, float %1327
  %1341 = select i1 %1338, float 0x3FD3333340000000, float %1328
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 32
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1418, label %1346

; <label>:1346                                    ; preds = %1324
  %1347 = add i32 %33, 108
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %33, 396
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1354, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = extractvalue %dx.types.ResRet.f32 %1355, 3
  %1360 = and i32 %1349, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = lshr i32 %1349, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = lshr i32 %1349, 16
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101000000000
  %1369 = fmul fast float %1356, %1361
  %1370 = fadd fast float %1369, %1364
  %1371 = fmul fast float %1370, 0x3F70101000000000
  %1372 = fadd fast float %1357, -5.000000e-01
  %1373 = fadd fast float %1359, -5.000000e-01
  %1374 = fmul fast float %1372, %1368
  %1375 = fmul fast float %1373, %1368
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fadd fast float %1375, 5.000000e-01
  %1378 = fmul fast float %1376, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fmul fast float %1377, 2.000000e+00
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fadd fast float %1379, %1381
  %1383 = fmul fast float %1382, 5.000000e-01
  %1384 = fsub fast float %1379, %1381
  %1385 = fmul fast float %1384, 5.000000e-01
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1389 = fsub fast float %1387, %1388
  %1390 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1385, float %1389, float %1383, float %1385, float %1389)  ; Dot3(ax,ay,az,bx,by,bz)
  %1391 = call float @dx.op.unary.f32(i32 25, float %1390)  ; Rsqrt(value)
  %1392 = fmul fast float %1383, %1391
  %1393 = fmul fast float %1385, %1391
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 67108864
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1414, label %1398

; <label>:1398                                    ; preds = %1346
  %1399 = add i32 %33, 296
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 65535
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 65535
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1401, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = fsub fast float %1371, %1409
  %1411 = fmul fast float %1410, %1403
  %1412 = fadd fast float %1411, %1407
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  br label %1414

; <label>:1414                                    ; preds = %1398, %1346
  %1415 = phi float [ %1413, %1398 ], [ %1371, %1346 ]
  %1416 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %1417 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  br label %1418

; <label>:1418                                    ; preds = %1414, %1324
  %1419 = phi float [ %1415, %1414 ], [ 0x3FD6666660000000, %1324 ]
  %1420 = phi float [ %1416, %1414 ], [ 0.000000e+00, %1324 ]
  %1421 = phi float [ %1417, %1414 ], [ 0.000000e+00, %1324 ]
  %1422 = phi float [ %1358, %1414 ], [ 1.000000e+00, %1324 ]
  %1423 = add i32 %33, 176
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 22
  %1427 = shl nuw nsw i32 %1426, 5
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 64
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1466, label %1433

; <label>:1433                                    ; preds = %1418
  %1434 = add i32 %33, 412
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 131072
  %1442 = icmp eq i32 %1441, 0
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = fmul fast float %1444, %276
  %1448 = fmul fast float %1445, %279
  %1449 = fmul fast float %1446, %282
  br i1 %1442, label %1456, label %1450

; <label>:1450                                    ; preds = %1433
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fmul fast float %1452, %1447
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1452, %1449
  br label %1456

; <label>:1456                                    ; preds = %1450, %1433
  %1457 = phi float [ %1453, %1450 ], [ %1447, %1433 ]
  %1458 = phi float [ %1454, %1450 ], [ %1448, %1433 ]
  %1459 = phi float [ %1455, %1450 ], [ %1449, %1433 ]
  %1460 = fmul fast float %1457, %1428
  %1461 = select i1 %217, float %1460, float %1457
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = select i1 %217, float 0.000000e+00, float %1457
  %1464 = select i1 %217, float %1462, float %1458
  %1465 = select i1 %217, float 0.000000e+00, float %1459
  br label %1466

; <label>:1466                                    ; preds = %1456, %1418
  %1467 = phi float [ %1463, %1456 ], [ 0.000000e+00, %1418 ]
  %1468 = phi float [ %1464, %1456 ], [ 0.000000e+00, %1418 ]
  %1469 = phi float [ %1465, %1456 ], [ 0.000000e+00, %1418 ]
  %1470 = add i32 %33, 112
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1472, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1340, float %1341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = fmul fast float %1477, %1478
  %1480 = fadd fast float %1479, %1474
  %1481 = fmul fast float %1480, 0x3F70101020000000
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br i1 %938, label %1483, label %1491

; <label>:1483                                    ; preds = %1466
  %1484 = fsub fast float 1.000000e+00, %1119
  %1485 = fmul fast float %1484, %926
  %1486 = fmul fast float %1484, %927
  %1487 = fmul fast float %1484, %928
  %1488 = fmul fast float %1484, %929
  %1489 = fmul fast float %1484, %930
  %1490 = fmul fast float %1484, %931
  br label %1491

; <label>:1491                                    ; preds = %1483, %1466
  %1492 = phi float [ %1485, %1483 ], [ %926, %1466 ]
  %1493 = phi float [ %1486, %1483 ], [ %927, %1466 ]
  %1494 = phi float [ %1487, %1483 ], [ %928, %1466 ]
  %1495 = phi float [ %1488, %1483 ], [ %929, %1466 ]
  %1496 = phi float [ %1489, %1483 ], [ %930, %1466 ]
  %1497 = phi float [ %1490, %1483 ], [ %931, %1466 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 3
  %1501 = icmp eq i32 %1500, 3
  br i1 %1501, label %1580, label %1502

; <label>:1502                                    ; preds = %1491
  %1503 = and i32 %1499, 16
  %1504 = icmp ne i32 %1503, 0
  %1505 = select i1 %1504, float %1119, float 0.000000e+00
  %1506 = icmp eq i32 %1500, 0
  br i1 %1506, label %1507, label %1535

; <label>:1507                                    ; preds = %1502
  %1508 = and i32 %1499, 64
  %1509 = icmp ne i32 %1508, 0
  %1510 = select i1 %1509, float %1119, float 0.000000e+00
  %1511 = fsub fast float %1339, %1492
  %1512 = fsub fast float %1340, %1493
  %1513 = fsub fast float %1341, %1494
  %1514 = fmul fast float %1505, %1511
  %1515 = fmul fast float %1505, %1512
  %1516 = fmul fast float %1505, %1513
  %1517 = fadd fast float %1514, %1492
  %1518 = fadd fast float %1515, %1493
  %1519 = fadd fast float %1516, %1494
  %1520 = fsub fast float %1325, %932
  %1521 = fmul fast float %1505, %1520
  %1522 = fadd fast float %1521, %932
  %1523 = fsub fast float %1467, %1495
  %1524 = fsub fast float %1468, %1496
  %1525 = fsub fast float %1469, %1497
  %1526 = fmul fast float %1510, %1523
  %1527 = fmul fast float %1510, %1524
  %1528 = fmul fast float %1510, %1525
  %1529 = fadd fast float %1526, %1495
  %1530 = fadd fast float %1527, %1496
  %1531 = fadd fast float %1528, %1497
  %1532 = fsub fast float %1482, %936
  %1533 = fmul fast float %1505, %1532
  %1534 = fadd fast float %1533, %936
  br label %1580

; <label>:1535                                    ; preds = %1502
  %1536 = icmp eq i32 %1500, 1
  br i1 %1536, label %1537, label %1550

; <label>:1537                                    ; preds = %1535
  %1538 = fadd fast float %1339, -1.000000e+00
  %1539 = fadd fast float %1340, -1.000000e+00
  %1540 = fadd fast float %1341, -1.000000e+00
  %1541 = fmul fast float %1505, %1538
  %1542 = fmul fast float %1505, %1539
  %1543 = fmul fast float %1505, %1540
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fadd fast float %1542, 1.000000e+00
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fmul fast float %1544, %1492
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1546, %1494
  br label %1580

; <label>:1550                                    ; preds = %1535
  %1551 = icmp eq i32 %1500, 2
  br i1 %1551, label %1552, label %1580

; <label>:1552                                    ; preds = %1550
  %1553 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1554 = call float @dx.op.unary.f32(i32 24, float %1340)  ; Sqrt(value)
  %1555 = call float @dx.op.unary.f32(i32 24, float %1341)  ; Sqrt(value)
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fadd fast float %1554, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fmul fast float %1556, %1505
  %1560 = fmul fast float %1557, %1505
  %1561 = fmul fast float %1558, %1505
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fmul fast float %1562, 2.000000e+00
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = fmul fast float %1566, %1492
  %1568 = fadd fast float %1567, %1565
  %1569 = fmul fast float %1568, %1492
  %1570 = fmul fast float %1563, 2.000000e+00
  %1571 = fsub fast float 1.000000e+00, %1570
  %1572 = fmul fast float %1571, %1493
  %1573 = fadd fast float %1572, %1570
  %1574 = fmul fast float %1573, %1493
  %1575 = fmul fast float %1564, 2.000000e+00
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1576, %1494
  %1578 = fadd fast float %1577, %1575
  %1579 = fmul fast float %1578, %1494
  br label %1580

; <label>:1580                                    ; preds = %1552, %1550, %1537, %1507, %1491
  %1581 = phi float [ %1492, %1491 ], [ %1569, %1552 ], [ %1492, %1550 ], [ %1547, %1537 ], [ %1517, %1507 ]
  %1582 = phi float [ %1493, %1491 ], [ %1574, %1552 ], [ %1493, %1550 ], [ %1548, %1537 ], [ %1518, %1507 ]
  %1583 = phi float [ %1494, %1491 ], [ %1579, %1552 ], [ %1494, %1550 ], [ %1549, %1537 ], [ %1519, %1507 ]
  %1584 = phi float [ %1495, %1491 ], [ %1495, %1552 ], [ %1495, %1550 ], [ %1495, %1537 ], [ %1529, %1507 ]
  %1585 = phi float [ %1496, %1491 ], [ %1496, %1552 ], [ %1496, %1550 ], [ %1496, %1537 ], [ %1530, %1507 ]
  %1586 = phi float [ %1497, %1491 ], [ %1497, %1552 ], [ %1497, %1550 ], [ %1497, %1537 ], [ %1531, %1507 ]
  %1587 = phi float [ %932, %1491 ], [ %932, %1552 ], [ %932, %1550 ], [ %932, %1537 ], [ %1522, %1507 ]
  %1588 = phi float [ %936, %1491 ], [ %936, %1552 ], [ %936, %1550 ], [ %936, %1537 ], [ %1534, %1507 ]
  %1589 = and i32 %1499, 12
  %1590 = icmp eq i32 %1589, 12
  br i1 %1590, label %1663, label %1591

; <label>:1591                                    ; preds = %1580
  %1592 = and i32 %1499, 2097184
  %1593 = icmp eq i32 %1592, 2097184
  %1594 = select i1 %1593, float %1119, float 0.000000e+00
  %1595 = and i32 %1499, 4194336
  %1596 = icmp eq i32 %1595, 4194336
  %1597 = select i1 %1596, float %1119, float 0.000000e+00
  %1598 = and i32 %1499, 8388640
  %1599 = icmp eq i32 %1598, 8388640
  %1600 = select i1 %1599, float %1119, float 0.000000e+00
  %1601 = icmp eq i32 %1589, 0
  br i1 %1601, label %1602, label %1615

; <label>:1602                                    ; preds = %1591
  %1603 = fsub fast float %1420, %924
  %1604 = fsub fast float %1421, %925
  %1605 = fmul fast float %1594, %1603
  %1606 = fmul fast float %1594, %1604
  %1607 = fadd fast float %1605, %924
  %1608 = fadd fast float %1606, %925
  %1609 = fsub fast float %1422, %935
  %1610 = fmul fast float %1597, %1609
  %1611 = fadd fast float %1610, %935
  %1612 = fsub fast float %1419, %934
  %1613 = fmul fast float %1600, %1612
  %1614 = fadd fast float %1613, %934
  br label %1663

; <label>:1615                                    ; preds = %1591
  %1616 = icmp eq i32 %1589, 4
  br i1 %1616, label %1617, label %1649

; <label>:1617                                    ; preds = %1615
  %1618 = fmul fast float %1594, %1420
  %1619 = fmul fast float %1594, %1421
  %1620 = fadd fast float %1618, %924
  %1621 = fadd fast float %1619, %925
  %1622 = call float @dx.op.binary.f32(i32 36, float %935, float %1422)  ; FMin(a,b)
  %1623 = fsub fast float %1622, %935
  %1624 = fmul fast float %1623, %1597
  %1625 = fadd fast float %1624, %935
  %1626 = fadd fast float %1419, %934
  %1627 = fmul fast float %1626, 0x3FF337FAE0000000
  %1628 = fmul fast float %934, %934
  %1629 = fmul fast float %1419, %1419
  %1630 = fadd fast float %1629, %1628
  %1631 = fmul fast float %1630, 0x3FE5152B00000000
  %1632 = fmul fast float %934, 0xBFCC1F85E0000000
  %1633 = fmul fast float %1632, %1419
  %1634 = fadd fast float %1633, 0xBFE1363700000000
  %1635 = fadd fast float %1634, %1627
  %1636 = fsub fast float %1635, %1631
  %1637 = fmul fast float %1626, 0x3FBA6F0D00000000
  %1638 = fmul fast float %1630, 0x3FD0432880000000
  %1639 = fmul fast float %934, 0xBFEF110800000000
  %1640 = fmul fast float %1639, %1419
  %1641 = fadd fast float %1640, 1.000000e+00
  %1642 = fsub fast float %1641, %1637
  %1643 = fadd fast float %1642, %1638
  %1644 = fdiv fast float %1636, %1643
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fsub fast float %1645, %934
  %1647 = fmul fast float %1646, %1600
  %1648 = fadd fast float %1647, %934
  br label %1663

; <label>:1649                                    ; preds = %1615
  %1650 = icmp eq i32 %1589, 8
  br i1 %1650, label %1651, label %1663

; <label>:1651                                    ; preds = %1649
  %1652 = fmul fast float %1594, %1420
  %1653 = fmul fast float %1594, %1421
  %1654 = fadd fast float %1652, %924
  %1655 = fadd fast float %1653, %925
  %1656 = call float @dx.op.binary.f32(i32 36, float %935, float %1422)  ; FMin(a,b)
  %1657 = fsub fast float %1656, %935
  %1658 = fmul fast float %1657, %1597
  %1659 = fadd fast float %1658, %935
  %1660 = fsub fast float %1419, %934
  %1661 = fmul fast float %1600, %1660
  %1662 = fadd fast float %1661, %934
  br label %1663

; <label>:1663                                    ; preds = %1651, %1649, %1617, %1602, %1580, %1118, %937, %923
  %1664 = phi float [ %924, %1580 ], [ %924, %1118 ], [ %924, %923 ], [ %1654, %1651 ], [ %924, %1649 ], [ %1620, %1617 ], [ %1607, %1602 ], [ %924, %937 ]
  %1665 = phi float [ %925, %1580 ], [ %925, %1118 ], [ %925, %923 ], [ %1655, %1651 ], [ %925, %1649 ], [ %1621, %1617 ], [ %1608, %1602 ], [ %925, %937 ]
  %1666 = phi float [ %1581, %1580 ], [ %926, %1118 ], [ %926, %923 ], [ %1581, %1651 ], [ %1581, %1649 ], [ %1581, %1617 ], [ %1581, %1602 ], [ %926, %937 ]
  %1667 = phi float [ %1582, %1580 ], [ %927, %1118 ], [ %927, %923 ], [ %1582, %1651 ], [ %1582, %1649 ], [ %1582, %1617 ], [ %1582, %1602 ], [ %927, %937 ]
  %1668 = phi float [ %1583, %1580 ], [ %928, %1118 ], [ %928, %923 ], [ %1583, %1651 ], [ %1583, %1649 ], [ %1583, %1617 ], [ %1583, %1602 ], [ %928, %937 ]
  %1669 = phi float [ %1584, %1580 ], [ %929, %1118 ], [ %929, %923 ], [ %1584, %1651 ], [ %1584, %1649 ], [ %1584, %1617 ], [ %1584, %1602 ], [ %929, %937 ]
  %1670 = phi float [ %1585, %1580 ], [ %930, %1118 ], [ %930, %923 ], [ %1585, %1651 ], [ %1585, %1649 ], [ %1585, %1617 ], [ %1585, %1602 ], [ %930, %937 ]
  %1671 = phi float [ %1586, %1580 ], [ %931, %1118 ], [ %931, %923 ], [ %1586, %1651 ], [ %1586, %1649 ], [ %1586, %1617 ], [ %1586, %1602 ], [ %931, %937 ]
  %1672 = phi float [ %1587, %1580 ], [ %932, %1118 ], [ %932, %923 ], [ %1587, %1651 ], [ %1587, %1649 ], [ %1587, %1617 ], [ %1587, %1602 ], [ %932, %937 ]
  %1673 = phi float [ %934, %1580 ], [ %934, %1118 ], [ %934, %923 ], [ %1662, %1651 ], [ %934, %1649 ], [ %1648, %1617 ], [ %1614, %1602 ], [ %934, %937 ]
  %1674 = phi float [ %935, %1580 ], [ %935, %1118 ], [ %935, %923 ], [ %1659, %1651 ], [ %935, %1649 ], [ %1625, %1617 ], [ %1611, %1602 ], [ %935, %937 ]
  %1675 = phi float [ %1588, %1580 ], [ %936, %1118 ], [ %936, %923 ], [ %1588, %1651 ], [ %1588, %1649 ], [ %1588, %1617 ], [ %1588, %1602 ], [ %936, %937 ]
  br i1 %403, label %2402, label %1676

; <label>:1676                                    ; preds = %1663
  %1677 = icmp ult i32 %456, 3
  %1678 = add i32 %33, 56
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %33, 60
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = or i32 %1683, %1680
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %2402, label %1686

; <label>:1686                                    ; preds = %1676
  %1687 = and i32 %1680, 262144
  %1688 = icmp ne i32 %1687, 0
  %1689 = select i1 %1688, float %39, float 1.000000e+00
  %1690 = select i1 %1688, float %40, float 0.000000e+00
  %1691 = select i1 %1688, float %41, float 0.000000e+00
  %1692 = select i1 %1688, float %42, float 1.000000e+00
  %1693 = select i1 %1688, float %43, float %66
  %1694 = select i1 %1688, float %44, float %67
  %1695 = add i32 %33, 316
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 16
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = fmul fast float %1699, 0x3F50624DE0000000
  %1701 = add i32 %33, 120
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = lshr i32 %1703, 16
  %1705 = and i32 %1704, 255
  %1706 = lshr i32 %1703, 24
  %1707 = add i32 %33, 324
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = lshr i32 %1709, 16
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = add i32 %33, 64
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = lshr i32 %1716, 22
  %1718 = shl nuw nsw i32 %1717, 5
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = shl i32 %1716, 4
  %1721 = and i32 %1720, 32752
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = lshr i32 %1716, 7
  %1724 = and i32 %1723, 32752
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1728 = fmul fast float %1727, 1.000000e+03
  %1729 = fmul fast float %353, %1728
  %1730 = call float @dx.op.unary.f32(i32 22, float %1729)  ; Frc(value)
  %1731 = fadd fast float %1730, %343
  %1732 = fmul fast float %354, %1728
  %1733 = call float @dx.op.unary.f32(i32 22, float %1732)  ; Frc(value)
  %1734 = fadd fast float %1733, %345
  %1735 = fmul fast float %1700, %1728
  %1736 = call float @dx.op.unary.f32(i32 22, float %1735)  ; Frc(value)
  %1737 = fmul fast float %1736, 0x401921FB60000000
  %1738 = fadd fast float %1737, %1719
  %1739 = call float @dx.op.unary.f32(i32 13, float %1738)  ; Sin(value)
  %1740 = call float @dx.op.unary.f32(i32 12, float %1738)  ; Cos(value)
  %1741 = fsub fast float -0.000000e+00, %1739
  %1742 = fadd fast float %1693, -5.000000e-01
  %1743 = fadd fast float %1694, -5.000000e-01
  %1744 = fmul fast float %1711, %1742
  %1745 = fmul fast float %1713, %1743
  %1746 = fadd fast float %1744, 5.000000e-01
  %1747 = fadd fast float %1745, 5.000000e-01
  %1748 = fmul fast float %1722, %1746
  %1749 = fmul fast float %1725, %1747
  %1750 = fmul fast float %1740, %1748
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1741, float %1749, float %1750)  ; FMad(a,b,c)
  %1752 = fmul fast float %1739, %1748
  %1753 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1749, float %1752)  ; FMad(a,b,c)
  %1754 = fadd fast float %1731, %1751
  %1755 = fadd fast float %1734, %1753
  %1756 = icmp ugt i32 %1705, 1
  %1757 = icmp ugt i32 %1703, 33554431
  %1758 = or i1 %1757, %1756
  br i1 %1758, label %1759, label %1784

; <label>:1759                                    ; preds = %1686
  %1760 = add i32 %33, 260
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 16
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = fmul fast float %1727, %1764
  %1766 = call float @dx.op.unary.f32(i32 22, float %1765)  ; Frc(value)
  %1767 = mul nuw nsw i32 %1705, %1706
  %1768 = uitofp i32 %1767 to float
  %1769 = fmul fast float %1766, %1768
  %1770 = call float @dx.op.unary.f32(i32 27, float %1769)  ; Round_ni(value)
  %1771 = fptoui float %1770 to i32
  %1772 = urem i32 %1771, %1705
  %1773 = udiv i32 %1771, %1706
  %1774 = call float @dx.op.unary.f32(i32 22, float %1754)  ; Frc(value)
  %1775 = call float @dx.op.unary.f32(i32 22, float %1755)  ; Frc(value)
  %1776 = uitofp i32 %1772 to float
  %1777 = uitofp i32 %1773 to float
  %1778 = fadd fast float %1774, %1776
  %1779 = fadd fast float %1775, %1777
  %1780 = uitofp i32 %1705 to float
  %1781 = uitofp i32 %1706 to float
  %1782 = fdiv fast float %1778, %1780
  %1783 = fdiv fast float %1779, %1781
  br label %1784

; <label>:1784                                    ; preds = %1759, %1686
  %1785 = phi float [ %1782, %1759 ], [ %1754, %1686 ]
  %1786 = phi float [ %1783, %1759 ], [ %1755, %1686 ]
  %1787 = and i32 %1680, 256
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1835, label %1789

; <label>:1789                                    ; preds = %1784
  %1790 = add i32 %33, 448
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1794, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = add i32 %33, 132
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = shl i32 %1799, 4
  %1801 = and i32 %1800, 32752
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = lshr i32 %1799, 7
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = fsub fast float 1.000000e+00, %452
  %1807 = call float @dx.op.binary.f32(i32 35, float %1806, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1808 = bitcast float %452 to i32
  %1809 = sitofp i32 %1808 to float
  %1810 = fadd fast float %1809, 0xC1CFBF8940000000
  %1811 = fmul fast float %1805, %1810
  %1812 = fadd fast float %1811, 0x41CFBF8940000000
  %1813 = fptosi float %1812 to i32
  %1814 = bitcast i32 %1813 to float
  %1815 = bitcast float %1807 to i32
  %1816 = sitofp i32 %1815 to float
  %1817 = fadd fast float %1816, 0xC1CFBF8940000000
  %1818 = fmul fast float %1817, %1805
  %1819 = fadd fast float %1818, 0x41CFBF8940000000
  %1820 = fptosi float %1819 to i32
  %1821 = bitcast i32 %1820 to float
  %1822 = fmul fast float %1814, %1802
  %1823 = fmul fast float %1821, %1802
  %1824 = fsub fast float %1807, %1822
  %1825 = fadd fast float %1823, %1807
  %1826 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1827 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1828 = fsub fast float %1796, %1826
  %1829 = fsub fast float %1827, %1826
  %1830 = bitcast float %1829 to i32
  %1831 = sub nsw i32 2129859010, %1830
  %1832 = bitcast i32 %1831 to float
  %1833 = fmul fast float %1832, %1828
  %1834 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  br label %1835

; <label>:1835                                    ; preds = %1789, %1784
  %1836 = phi float [ %1834, %1789 ], [ %452, %1784 ]
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 128
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1857, label %1841

; <label>:1841                                    ; preds = %1835
  %1842 = add i32 %33, 432
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = add i32 %1844, 0
  %1846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1846, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 524288
  %1852 = icmp ne i32 %1851, 0
  %1853 = fcmp fast ogt float %1848, 0x3FE0101020000000
  %1854 = select i1 %1853, float 1.000000e+00, float 0.000000e+00
  %1855 = select i1 %1852, float %1854, float %1848
  %1856 = fmul fast float %1855, %1836
  br label %1857

; <label>:1857                                    ; preds = %1841, %1835
  %1858 = phi float [ %1856, %1841 ], [ %1836, %1835 ]
  %1859 = fcmp fast ult float %1858, 0x3F70101020000000
  br i1 %1859, label %2402, label %1860

; <label>:1860                                    ; preds = %1857
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 16
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %2063, label %1865

; <label>:1865                                    ; preds = %1860
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = add i32 %33, 384
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = add i32 %1870, 0
  %1872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1873 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1872, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = extractvalue %dx.types.ResRet.f32 %1873, 3
  %1878 = and i32 %1867, 255
  %1879 = uitofp i32 %1878 to float
  %1880 = lshr i32 %1867, 8
  %1881 = and i32 %1880, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = fmul fast float %1877, %1879
  %1884 = fadd fast float %1883, %1882
  %1885 = fmul fast float %1884, 0x3F70101000000000
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 512
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1898, label %1890

; <label>:1890                                    ; preds = %1865
  %1891 = add i32 %33, 472
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = add i32 %1893, 0
  %1895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1895, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  br label %1898

; <label>:1898                                    ; preds = %1890, %1865
  %1899 = phi float [ %1897, %1890 ], [ 1.000000e+00, %1865 ]
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 33554432
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %2010, label %1904

; <label>:1904                                    ; preds = %1898
  %1905 = add i32 %33, 256
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 65535
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = lshr i32 %1907, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = add i32 %33, 260
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 65535
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 24
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = and i32 %1918, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = lshr i32 %1918, 8
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = lshr i32 %1918, 16
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = add i32 %33, 252
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = lshr i32 %1935, 24
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1937, 0x3F70101020000000
  %1939 = and i32 %1935, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1940, 0x3F70101020000000
  %1942 = lshr i32 %1935, 8
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = fmul fast float %1944, 0x3F70101020000000
  %1946 = lshr i32 %1935, 16
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3F70101020000000
  %1950 = bitcast float %1874 to i32
  %1951 = ashr i32 %1950, 1
  %1952 = sub nsw i32 1597463174, %1951
  %1953 = bitcast i32 %1952 to float
  %1954 = fmul fast float %1874, 5.000000e-01
  %1955 = fmul fast float %1953, %1953
  %1956 = fmul fast float %1955, %1954
  %1957 = fsub fast float 1.500000e+00, %1956
  %1958 = fmul fast float %1953, %1874
  %1959 = fmul fast float %1958, %1957
  %1960 = bitcast float %1875 to i32
  %1961 = ashr i32 %1960, 1
  %1962 = sub nsw i32 1597463174, %1961
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1875, 5.000000e-01
  %1965 = fmul fast float %1963, %1963
  %1966 = fmul fast float %1965, %1964
  %1967 = fsub fast float 1.500000e+00, %1966
  %1968 = fmul fast float %1963, %1875
  %1969 = fmul fast float %1968, %1967
  %1970 = bitcast float %1876 to i32
  %1971 = ashr i32 %1970, 1
  %1972 = sub nsw i32 1597463174, %1971
  %1973 = bitcast i32 %1972 to float
  %1974 = fmul fast float %1876, 5.000000e-01
  %1975 = fmul fast float %1973, %1973
  %1976 = fmul fast float %1975, %1974
  %1977 = fsub fast float 1.500000e+00, %1976
  %1978 = fmul fast float %1973, %1876
  %1979 = fmul fast float %1978, %1977
  %1980 = fsub fast float %1959, %1941
  %1981 = fsub fast float %1969, %1945
  %1982 = fsub fast float %1979, %1949
  %1983 = fmul fast float %1980, %1909
  %1984 = fmul fast float %1981, %1911
  %1985 = fmul fast float %1982, %1916
  %1986 = fadd fast float %1983, %1924
  %1987 = fadd fast float %1984, %1928
  %1988 = fadd fast float %1985, %1932
  %1989 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1990 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1991 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1992 = fmul fast float %1989, %1989
  %1993 = fmul fast float %1990, %1990
  %1994 = fmul fast float %1991, %1991
  %1995 = fsub fast float %1992, %1874
  %1996 = fsub fast float %1993, %1875
  %1997 = fsub fast float %1994, %1876
  %1998 = fmul fast float %1995, %1899
  %1999 = fmul fast float %1996, %1899
  %2000 = fmul fast float %1997, %1899
  %2001 = fadd fast float %1998, %1874
  %2002 = fadd fast float %1999, %1875
  %2003 = fadd fast float %2000, %1876
  %2004 = fadd fast float %1921, %1885
  %2005 = fsub fast float %2004, %1938
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = fsub fast float %2006, %1885
  %2008 = fmul fast float %2007, %1899
  %2009 = fadd fast float %2008, %1885
  br label %2063

; <label>:2010                                    ; preds = %1898
  %2011 = and i32 %1901, 134217728
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2047, label %2013

; <label>:2013                                    ; preds = %2010
  %2014 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2015 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2016 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fadd fast float %2015, -5.000000e-01
  %2019 = fadd fast float %2016, -5.000000e-01
  %2020 = fmul fast float %2017, %1899
  %2021 = fmul fast float %2018, %1899
  %2022 = fmul fast float %2019, %1899
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = fadd fast float %2021, 5.000000e-01
  %2025 = fadd fast float %2022, 5.000000e-01
  %2026 = call float @dx.op.unary.f32(i32 24, float %1874)  ; Sqrt(value)
  %2027 = call float @dx.op.unary.f32(i32 24, float %1875)  ; Sqrt(value)
  %2028 = call float @dx.op.unary.f32(i32 24, float %1876)  ; Sqrt(value)
  %2029 = fmul fast float %2023, 2.000000e+00
  %2030 = fsub fast float 1.000000e+00, %2029
  %2031 = fmul fast float %2030, %2026
  %2032 = fadd fast float %2031, %2029
  %2033 = fmul fast float %2032, %2026
  %2034 = fmul fast float %2024, 2.000000e+00
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = fmul fast float %2035, %2027
  %2037 = fadd fast float %2036, %2034
  %2038 = fmul fast float %2037, %2027
  %2039 = fmul fast float %2025, 2.000000e+00
  %2040 = fsub fast float 1.000000e+00, %2039
  %2041 = fmul fast float %2040, %2028
  %2042 = fadd fast float %2041, %2039
  %2043 = fmul fast float %2042, %2028
  %2044 = fmul fast float %2033, %2033
  %2045 = fmul fast float %2038, %2038
  %2046 = fmul fast float %2043, %2043
  br label %2063

; <label>:2047                                    ; preds = %2010
  %2048 = fmul fast float %330, %330
  %2049 = fmul fast float %334, %334
  %2050 = fmul fast float %338, %338
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = fadd fast float %2049, -1.000000e+00
  %2053 = fadd fast float %2050, -1.000000e+00
  %2054 = fmul fast float %1899, %2051
  %2055 = fmul fast float %1899, %2052
  %2056 = fmul fast float %1899, %2053
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fadd fast float %2055, 1.000000e+00
  %2059 = fadd fast float %2056, 1.000000e+00
  %2060 = fmul fast float %2057, %1874
  %2061 = fmul fast float %2058, %1875
  %2062 = fmul fast float %2059, %1876
  br label %2063

; <label>:2063                                    ; preds = %2047, %2013, %1904, %1860
  %2064 = phi float [ %2009, %1904 ], [ %1885, %2013 ], [ %1885, %2047 ], [ 0x3FA23C0BE0000000, %1860 ]
  %2065 = phi float [ %2001, %1904 ], [ %2044, %2013 ], [ %2060, %2047 ], [ 1.000000e+00, %1860 ]
  %2066 = phi float [ %2002, %1904 ], [ %2045, %2013 ], [ %2061, %2047 ], [ 1.000000e+00, %1860 ]
  %2067 = phi float [ %2003, %1904 ], [ %2046, %2013 ], [ %2062, %2047 ], [ 1.000000e+00, %1860 ]
  %2068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.i32 %2068, 1
  %2070 = and i32 %2069, 1
  %2071 = icmp ne i32 %2070, 0
  %2072 = add i32 %33, 356
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 32
  %2076 = icmp ne i32 %2075, 0
  %2077 = and i1 %2071, %2076
  %2078 = select i1 %2077, float 1.000000e+00, float %2065
  %2079 = select i1 %2077, float 0x3FD3333340000000, float %2066
  %2080 = select i1 %2077, float 0x3FD3333340000000, float %2067
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 32
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2157, label %2085

; <label>:2085                                    ; preds = %2063
  %2086 = add i32 %33, 124
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %33, 400
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2093, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = extractvalue %dx.types.ResRet.f32 %2094, 3
  %2099 = and i32 %2088, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = lshr i32 %2088, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = lshr i32 %2088, 16
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101000000000
  %2108 = fmul fast float %2095, %2100
  %2109 = fadd fast float %2108, %2103
  %2110 = fmul fast float %2109, 0x3F70101000000000
  %2111 = fadd fast float %2096, -5.000000e-01
  %2112 = fadd fast float %2098, -5.000000e-01
  %2113 = fmul fast float %2111, %2107
  %2114 = fmul fast float %2112, %2107
  %2115 = fadd fast float %2113, 5.000000e-01
  %2116 = fadd fast float %2114, 5.000000e-01
  %2117 = fmul fast float %2115, 2.000000e+00
  %2118 = fadd fast float %2117, -1.000000e+00
  %2119 = fmul fast float %2116, 2.000000e+00
  %2120 = fadd fast float %2119, -1.000000e+00
  %2121 = fadd fast float %2118, %2120
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = fsub fast float %2118, %2120
  %2124 = fmul fast float %2123, 5.000000e-01
  %2125 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2128 = fsub fast float %2126, %2127
  %2129 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2124, float %2128, float %2122, float %2124, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %2130 = call float @dx.op.unary.f32(i32 25, float %2129)  ; Rsqrt(value)
  %2131 = fmul fast float %2122, %2130
  %2132 = fmul fast float %2124, %2130
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 67108864
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2153, label %2137

; <label>:2137                                    ; preds = %2085
  %2138 = add i32 %33, 312
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 65535
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 65535
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = lshr i32 %2140, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = fsub fast float %2110, %2148
  %2150 = fmul fast float %2149, %2142
  %2151 = fadd fast float %2150, %2146
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2137, %2085
  %2154 = phi float [ %2152, %2137 ], [ %2110, %2085 ]
  %2155 = call float @dx.op.dot2.f32(i32 54, float %2131, float %2132, float %1689, float %1690)  ; Dot2(ax,ay,bx,by)
  %2156 = call float @dx.op.dot2.f32(i32 54, float %2131, float %2132, float %1691, float %1692)  ; Dot2(ax,ay,bx,by)
  br label %2157

; <label>:2157                                    ; preds = %2153, %2063
  %2158 = phi float [ %2154, %2153 ], [ 0x3FD6666660000000, %2063 ]
  %2159 = phi float [ %2155, %2153 ], [ 0.000000e+00, %2063 ]
  %2160 = phi float [ %2156, %2153 ], [ 0.000000e+00, %2063 ]
  %2161 = phi float [ %2097, %2153 ], [ 1.000000e+00, %2063 ]
  %2162 = add i32 %33, 192
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = lshr i32 %2164, 22
  %2166 = shl nuw nsw i32 %2165, 5
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 64
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2205, label %2172

; <label>:2172                                    ; preds = %2157
  %2173 = add i32 %33, 416
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = add i32 %2175, 0
  %2177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 131072
  %2181 = icmp eq i32 %2180, 0
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2177, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.ResRet.f32 %2182, 1
  %2185 = extractvalue %dx.types.ResRet.f32 %2182, 2
  %2186 = fmul fast float %2183, %318
  %2187 = fmul fast float %2184, %321
  %2188 = fmul fast float %2185, %324
  br i1 %2181, label %2195, label %2189

; <label>:2189                                    ; preds = %2172
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = fmul fast float %2191, %2186
  %2193 = fmul fast float %2191, %2187
  %2194 = fmul fast float %2191, %2188
  br label %2195

; <label>:2195                                    ; preds = %2189, %2172
  %2196 = phi float [ %2192, %2189 ], [ %2186, %2172 ]
  %2197 = phi float [ %2193, %2189 ], [ %2187, %2172 ]
  %2198 = phi float [ %2194, %2189 ], [ %2188, %2172 ]
  %2199 = fmul fast float %2196, %2167
  %2200 = select i1 %217, float %2199, float %2196
  %2201 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2197, float %2198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = select i1 %217, float 0.000000e+00, float %2196
  %2203 = select i1 %217, float %2201, float %2197
  %2204 = select i1 %217, float 0.000000e+00, float %2198
  br label %2205

; <label>:2205                                    ; preds = %2195, %2157
  %2206 = phi float [ %2202, %2195 ], [ 0.000000e+00, %2157 ]
  %2207 = phi float [ %2203, %2195 ], [ 0.000000e+00, %2157 ]
  %2208 = phi float [ %2204, %2195 ], [ 0.000000e+00, %2157 ]
  %2209 = add i32 %33, 128
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = lshr i32 %2211, 8
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = call float @dx.op.dot3.f32(i32 55, float %2078, float %2079, float %2080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2218 = fmul fast float %2216, %2217
  %2219 = fadd fast float %2218, %2213
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  br i1 %1677, label %2222, label %2230

; <label>:2222                                    ; preds = %2205
  %2223 = fsub fast float 1.000000e+00, %1858
  %2224 = fmul fast float %2223, %1666
  %2225 = fmul fast float %2223, %1667
  %2226 = fmul fast float %2223, %1668
  %2227 = fmul fast float %2223, %1669
  %2228 = fmul fast float %2223, %1670
  %2229 = fmul fast float %2223, %1671
  br label %2230

; <label>:2230                                    ; preds = %2222, %2205
  %2231 = phi float [ %2224, %2222 ], [ %1666, %2205 ]
  %2232 = phi float [ %2225, %2222 ], [ %1667, %2205 ]
  %2233 = phi float [ %2226, %2222 ], [ %1668, %2205 ]
  %2234 = phi float [ %2227, %2222 ], [ %1669, %2205 ]
  %2235 = phi float [ %2228, %2222 ], [ %1670, %2205 ]
  %2236 = phi float [ %2229, %2222 ], [ %1671, %2205 ]
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 3
  %2240 = icmp eq i32 %2239, 3
  br i1 %2240, label %2319, label %2241

; <label>:2241                                    ; preds = %2230
  %2242 = and i32 %2238, 16
  %2243 = icmp ne i32 %2242, 0
  %2244 = select i1 %2243, float %1858, float 0.000000e+00
  %2245 = icmp eq i32 %2239, 0
  br i1 %2245, label %2246, label %2274

; <label>:2246                                    ; preds = %2241
  %2247 = and i32 %2238, 64
  %2248 = icmp ne i32 %2247, 0
  %2249 = select i1 %2248, float %1858, float 0.000000e+00
  %2250 = fsub fast float %2078, %2231
  %2251 = fsub fast float %2079, %2232
  %2252 = fsub fast float %2080, %2233
  %2253 = fmul fast float %2244, %2250
  %2254 = fmul fast float %2244, %2251
  %2255 = fmul fast float %2244, %2252
  %2256 = fadd fast float %2253, %2231
  %2257 = fadd fast float %2254, %2232
  %2258 = fadd fast float %2255, %2233
  %2259 = fsub fast float %2064, %1672
  %2260 = fmul fast float %2244, %2259
  %2261 = fadd fast float %2260, %1672
  %2262 = fsub fast float %2206, %2234
  %2263 = fsub fast float %2207, %2235
  %2264 = fsub fast float %2208, %2236
  %2265 = fmul fast float %2249, %2262
  %2266 = fmul fast float %2249, %2263
  %2267 = fmul fast float %2249, %2264
  %2268 = fadd fast float %2265, %2234
  %2269 = fadd fast float %2266, %2235
  %2270 = fadd fast float %2267, %2236
  %2271 = fsub fast float %2221, %1675
  %2272 = fmul fast float %2244, %2271
  %2273 = fadd fast float %2272, %1675
  br label %2319

; <label>:2274                                    ; preds = %2241
  %2275 = icmp eq i32 %2239, 1
  br i1 %2275, label %2276, label %2289

; <label>:2276                                    ; preds = %2274
  %2277 = fadd fast float %2078, -1.000000e+00
  %2278 = fadd fast float %2079, -1.000000e+00
  %2279 = fadd fast float %2080, -1.000000e+00
  %2280 = fmul fast float %2244, %2277
  %2281 = fmul fast float %2244, %2278
  %2282 = fmul fast float %2244, %2279
  %2283 = fadd fast float %2280, 1.000000e+00
  %2284 = fadd fast float %2281, 1.000000e+00
  %2285 = fadd fast float %2282, 1.000000e+00
  %2286 = fmul fast float %2283, %2231
  %2287 = fmul fast float %2284, %2232
  %2288 = fmul fast float %2285, %2233
  br label %2319

; <label>:2289                                    ; preds = %2274
  %2290 = icmp eq i32 %2239, 2
  br i1 %2290, label %2291, label %2319

; <label>:2291                                    ; preds = %2289
  %2292 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2293 = call float @dx.op.unary.f32(i32 24, float %2079)  ; Sqrt(value)
  %2294 = call float @dx.op.unary.f32(i32 24, float %2080)  ; Sqrt(value)
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fadd fast float %2293, -5.000000e-01
  %2297 = fadd fast float %2294, -5.000000e-01
  %2298 = fmul fast float %2295, %2244
  %2299 = fmul fast float %2296, %2244
  %2300 = fmul fast float %2297, %2244
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = fadd fast float %2299, 5.000000e-01
  %2303 = fadd fast float %2300, 5.000000e-01
  %2304 = fmul fast float %2301, 2.000000e+00
  %2305 = fsub fast float 1.000000e+00, %2304
  %2306 = fmul fast float %2305, %2231
  %2307 = fadd fast float %2306, %2304
  %2308 = fmul fast float %2307, %2231
  %2309 = fmul fast float %2302, 2.000000e+00
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = fmul fast float %2310, %2232
  %2312 = fadd fast float %2311, %2309
  %2313 = fmul fast float %2312, %2232
  %2314 = fmul fast float %2303, 2.000000e+00
  %2315 = fsub fast float 1.000000e+00, %2314
  %2316 = fmul fast float %2315, %2233
  %2317 = fadd fast float %2316, %2314
  %2318 = fmul fast float %2317, %2233
  br label %2319

; <label>:2319                                    ; preds = %2291, %2289, %2276, %2246, %2230
  %2320 = phi float [ %2231, %2230 ], [ %2308, %2291 ], [ %2231, %2289 ], [ %2286, %2276 ], [ %2256, %2246 ]
  %2321 = phi float [ %2232, %2230 ], [ %2313, %2291 ], [ %2232, %2289 ], [ %2287, %2276 ], [ %2257, %2246 ]
  %2322 = phi float [ %2233, %2230 ], [ %2318, %2291 ], [ %2233, %2289 ], [ %2288, %2276 ], [ %2258, %2246 ]
  %2323 = phi float [ %2234, %2230 ], [ %2234, %2291 ], [ %2234, %2289 ], [ %2234, %2276 ], [ %2268, %2246 ]
  %2324 = phi float [ %2235, %2230 ], [ %2235, %2291 ], [ %2235, %2289 ], [ %2235, %2276 ], [ %2269, %2246 ]
  %2325 = phi float [ %2236, %2230 ], [ %2236, %2291 ], [ %2236, %2289 ], [ %2236, %2276 ], [ %2270, %2246 ]
  %2326 = phi float [ %1672, %2230 ], [ %1672, %2291 ], [ %1672, %2289 ], [ %1672, %2276 ], [ %2261, %2246 ]
  %2327 = phi float [ %1675, %2230 ], [ %1675, %2291 ], [ %1675, %2289 ], [ %1675, %2276 ], [ %2273, %2246 ]
  %2328 = and i32 %2238, 12
  %2329 = icmp eq i32 %2328, 12
  br i1 %2329, label %2402, label %2330

; <label>:2330                                    ; preds = %2319
  %2331 = and i32 %2238, 2097184
  %2332 = icmp eq i32 %2331, 2097184
  %2333 = select i1 %2332, float %1858, float 0.000000e+00
  %2334 = and i32 %2238, 4194336
  %2335 = icmp eq i32 %2334, 4194336
  %2336 = select i1 %2335, float %1858, float 0.000000e+00
  %2337 = and i32 %2238, 8388640
  %2338 = icmp eq i32 %2337, 8388640
  %2339 = select i1 %2338, float %1858, float 0.000000e+00
  %2340 = icmp eq i32 %2328, 0
  br i1 %2340, label %2341, label %2354

; <label>:2341                                    ; preds = %2330
  %2342 = fsub fast float %2159, %1664
  %2343 = fsub fast float %2160, %1665
  %2344 = fmul fast float %2333, %2342
  %2345 = fmul fast float %2333, %2343
  %2346 = fadd fast float %2344, %1664
  %2347 = fadd fast float %2345, %1665
  %2348 = fsub fast float %2161, %1674
  %2349 = fmul fast float %2336, %2348
  %2350 = fadd fast float %2349, %1674
  %2351 = fsub fast float %2158, %1673
  %2352 = fmul fast float %2339, %2351
  %2353 = fadd fast float %2352, %1673
  br label %2402

; <label>:2354                                    ; preds = %2330
  %2355 = icmp eq i32 %2328, 4
  br i1 %2355, label %2356, label %2388

; <label>:2356                                    ; preds = %2354
  %2357 = fmul fast float %2333, %2159
  %2358 = fmul fast float %2333, %2160
  %2359 = fadd fast float %2357, %1664
  %2360 = fadd fast float %2358, %1665
  %2361 = call float @dx.op.binary.f32(i32 36, float %1674, float %2161)  ; FMin(a,b)
  %2362 = fsub fast float %2361, %1674
  %2363 = fmul fast float %2362, %2336
  %2364 = fadd fast float %2363, %1674
  %2365 = fadd fast float %2158, %1673
  %2366 = fmul fast float %2365, 0x3FF337FAE0000000
  %2367 = fmul fast float %1673, %1673
  %2368 = fmul fast float %2158, %2158
  %2369 = fadd fast float %2368, %2367
  %2370 = fmul fast float %2369, 0x3FE5152B00000000
  %2371 = fmul fast float %1673, 0xBFCC1F85E0000000
  %2372 = fmul fast float %2371, %2158
  %2373 = fadd fast float %2372, 0xBFE1363700000000
  %2374 = fadd fast float %2373, %2366
  %2375 = fsub fast float %2374, %2370
  %2376 = fmul fast float %2365, 0x3FBA6F0D00000000
  %2377 = fmul fast float %2369, 0x3FD0432880000000
  %2378 = fmul fast float %1673, 0xBFEF110800000000
  %2379 = fmul fast float %2378, %2158
  %2380 = fadd fast float %2379, 1.000000e+00
  %2381 = fsub fast float %2380, %2376
  %2382 = fadd fast float %2381, %2377
  %2383 = fdiv fast float %2375, %2382
  %2384 = call float @dx.op.unary.f32(i32 7, float %2383)  ; Saturate(value)
  %2385 = fsub fast float %2384, %1673
  %2386 = fmul fast float %2385, %2339
  %2387 = fadd fast float %2386, %1673
  br label %2402

; <label>:2388                                    ; preds = %2354
  %2389 = icmp eq i32 %2328, 8
  br i1 %2389, label %2390, label %2402

; <label>:2390                                    ; preds = %2388
  %2391 = fmul fast float %2333, %2159
  %2392 = fmul fast float %2333, %2160
  %2393 = fadd fast float %2391, %1664
  %2394 = fadd fast float %2392, %1665
  %2395 = call float @dx.op.binary.f32(i32 36, float %1674, float %2161)  ; FMin(a,b)
  %2396 = fsub fast float %2395, %1674
  %2397 = fmul fast float %2396, %2336
  %2398 = fadd fast float %2397, %1674
  %2399 = fsub fast float %2158, %1673
  %2400 = fmul fast float %2339, %2399
  %2401 = fadd fast float %2400, %1673
  br label %2402

; <label>:2402                                    ; preds = %2390, %2388, %2356, %2341, %2319, %1857, %1676, %1663
  %2403 = phi float [ %1664, %2319 ], [ %1664, %1857 ], [ %1664, %1663 ], [ %2393, %2390 ], [ %1664, %2388 ], [ %2359, %2356 ], [ %2346, %2341 ], [ %1664, %1676 ]
  %2404 = phi float [ %1665, %2319 ], [ %1665, %1857 ], [ %1665, %1663 ], [ %2394, %2390 ], [ %1665, %2388 ], [ %2360, %2356 ], [ %2347, %2341 ], [ %1665, %1676 ]
  %2405 = phi float [ %2320, %2319 ], [ %1666, %1857 ], [ %1666, %1663 ], [ %2320, %2390 ], [ %2320, %2388 ], [ %2320, %2356 ], [ %2320, %2341 ], [ %1666, %1676 ]
  %2406 = phi float [ %2321, %2319 ], [ %1667, %1857 ], [ %1667, %1663 ], [ %2321, %2390 ], [ %2321, %2388 ], [ %2321, %2356 ], [ %2321, %2341 ], [ %1667, %1676 ]
  %2407 = phi float [ %2322, %2319 ], [ %1668, %1857 ], [ %1668, %1663 ], [ %2322, %2390 ], [ %2322, %2388 ], [ %2322, %2356 ], [ %2322, %2341 ], [ %1668, %1676 ]
  %2408 = phi float [ %2323, %2319 ], [ %1669, %1857 ], [ %1669, %1663 ], [ %2323, %2390 ], [ %2323, %2388 ], [ %2323, %2356 ], [ %2323, %2341 ], [ %1669, %1676 ]
  %2409 = phi float [ %2324, %2319 ], [ %1670, %1857 ], [ %1670, %1663 ], [ %2324, %2390 ], [ %2324, %2388 ], [ %2324, %2356 ], [ %2324, %2341 ], [ %1670, %1676 ]
  %2410 = phi float [ %2325, %2319 ], [ %1671, %1857 ], [ %1671, %1663 ], [ %2325, %2390 ], [ %2325, %2388 ], [ %2325, %2356 ], [ %2325, %2341 ], [ %1671, %1676 ]
  %2411 = phi float [ %2326, %2319 ], [ %1672, %1857 ], [ %1672, %1663 ], [ %2326, %2390 ], [ %2326, %2388 ], [ %2326, %2356 ], [ %2326, %2341 ], [ %1672, %1676 ]
  %2412 = phi float [ %1673, %2319 ], [ %1673, %1857 ], [ %1673, %1663 ], [ %2401, %2390 ], [ %1673, %2388 ], [ %2387, %2356 ], [ %2353, %2341 ], [ %1673, %1676 ]
  %2413 = phi float [ %1674, %2319 ], [ %1674, %1857 ], [ %1674, %1663 ], [ %2398, %2390 ], [ %1674, %2388 ], [ %2364, %2356 ], [ %2350, %2341 ], [ %1674, %1676 ]
  %2414 = phi float [ %2327, %2319 ], [ %1675, %1857 ], [ %1675, %1663 ], [ %2327, %2390 ], [ %2327, %2388 ], [ %2327, %2356 ], [ %2327, %2341 ], [ %1675, %1676 ]
  br i1 %405, label %3141, label %2415

; <label>:2415                                    ; preds = %2402
  %2416 = icmp ult i32 %456, 4
  %2417 = add i32 %33, 72
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %33, 76
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = or i32 %2422, %2419
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %3141, label %2425

; <label>:2425                                    ; preds = %2415
  %2426 = and i32 %2419, 262144
  %2427 = icmp ne i32 %2426, 0
  %2428 = select i1 %2427, float %39, float 1.000000e+00
  %2429 = select i1 %2427, float %40, float 0.000000e+00
  %2430 = select i1 %2427, float %41, float 0.000000e+00
  %2431 = select i1 %2427, float %42, float 1.000000e+00
  %2432 = select i1 %2427, float %43, float %66
  %2433 = select i1 %2427, float %44, float %67
  %2434 = add i32 %33, 332
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = lshr i32 %2436, 16
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = fmul fast float %2438, 0x3F50624DE0000000
  %2440 = add i32 %33, 136
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = lshr i32 %2442, 16
  %2444 = and i32 %2443, 255
  %2445 = lshr i32 %2442, 24
  %2446 = add i32 %33, 340
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 65535
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = lshr i32 %2448, 16
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = add i32 %33, 80
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = lshr i32 %2455, 22
  %2457 = shl nuw nsw i32 %2456, 5
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = shl i32 %2455, 4
  %2460 = and i32 %2459, 32752
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = lshr i32 %2455, 7
  %2463 = and i32 %2462, 32752
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 3
  %2467 = fmul fast float %2466, 1.000000e+03
  %2468 = fmul fast float %395, %2467
  %2469 = call float @dx.op.unary.f32(i32 22, float %2468)  ; Frc(value)
  %2470 = fadd fast float %2469, %385
  %2471 = fmul fast float %396, %2467
  %2472 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2473 = fadd fast float %2472, %387
  %2474 = fmul fast float %2439, %2467
  %2475 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2476 = fmul fast float %2475, 0x401921FB60000000
  %2477 = fadd fast float %2476, %2458
  %2478 = call float @dx.op.unary.f32(i32 13, float %2477)  ; Sin(value)
  %2479 = call float @dx.op.unary.f32(i32 12, float %2477)  ; Cos(value)
  %2480 = fsub fast float -0.000000e+00, %2478
  %2481 = fadd fast float %2432, -5.000000e-01
  %2482 = fadd fast float %2433, -5.000000e-01
  %2483 = fmul fast float %2450, %2481
  %2484 = fmul fast float %2452, %2482
  %2485 = fadd fast float %2483, 5.000000e-01
  %2486 = fadd fast float %2484, 5.000000e-01
  %2487 = fmul fast float %2461, %2485
  %2488 = fmul fast float %2464, %2486
  %2489 = fmul fast float %2479, %2487
  %2490 = call float @dx.op.tertiary.f32(i32 46, float %2480, float %2488, float %2489)  ; FMad(a,b,c)
  %2491 = fmul fast float %2478, %2487
  %2492 = call float @dx.op.tertiary.f32(i32 46, float %2479, float %2488, float %2491)  ; FMad(a,b,c)
  %2493 = fadd fast float %2470, %2490
  %2494 = fadd fast float %2473, %2492
  %2495 = icmp ugt i32 %2444, 1
  %2496 = icmp ugt i32 %2442, 33554431
  %2497 = or i1 %2496, %2495
  br i1 %2497, label %2498, label %2523

; <label>:2498                                    ; preds = %2425
  %2499 = add i32 %33, 276
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 16
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = fmul fast float %2466, %2503
  %2505 = call float @dx.op.unary.f32(i32 22, float %2504)  ; Frc(value)
  %2506 = mul nuw nsw i32 %2444, %2445
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2505, %2507
  %2509 = call float @dx.op.unary.f32(i32 27, float %2508)  ; Round_ni(value)
  %2510 = fptoui float %2509 to i32
  %2511 = urem i32 %2510, %2444
  %2512 = udiv i32 %2510, %2445
  %2513 = call float @dx.op.unary.f32(i32 22, float %2493)  ; Frc(value)
  %2514 = call float @dx.op.unary.f32(i32 22, float %2494)  ; Frc(value)
  %2515 = uitofp i32 %2511 to float
  %2516 = uitofp i32 %2512 to float
  %2517 = fadd fast float %2513, %2515
  %2518 = fadd fast float %2514, %2516
  %2519 = uitofp i32 %2444 to float
  %2520 = uitofp i32 %2445 to float
  %2521 = fdiv fast float %2517, %2519
  %2522 = fdiv fast float %2518, %2520
  br label %2523

; <label>:2523                                    ; preds = %2498, %2425
  %2524 = phi float [ %2521, %2498 ], [ %2493, %2425 ]
  %2525 = phi float [ %2522, %2498 ], [ %2494, %2425 ]
  %2526 = and i32 %2419, 256
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2574, label %2528

; <label>:2528                                    ; preds = %2523
  %2529 = add i32 %33, 452
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = add i32 %33, 148
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = shl i32 %2538, 4
  %2540 = and i32 %2539, 32752
  %2541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2540)  ; LegacyF16ToF32(value)
  %2542 = lshr i32 %2538, 7
  %2543 = and i32 %2542, 32752
  %2544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2543)  ; LegacyF16ToF32(value)
  %2545 = fsub fast float 1.000000e+00, %451
  %2546 = call float @dx.op.binary.f32(i32 35, float %2545, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2547 = bitcast float %451 to i32
  %2548 = sitofp i32 %2547 to float
  %2549 = fadd fast float %2548, 0xC1CFBF8940000000
  %2550 = fmul fast float %2544, %2549
  %2551 = fadd fast float %2550, 0x41CFBF8940000000
  %2552 = fptosi float %2551 to i32
  %2553 = bitcast i32 %2552 to float
  %2554 = bitcast float %2546 to i32
  %2555 = sitofp i32 %2554 to float
  %2556 = fadd fast float %2555, 0xC1CFBF8940000000
  %2557 = fmul fast float %2556, %2544
  %2558 = fadd fast float %2557, 0x41CFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2553, %2541
  %2562 = fmul fast float %2560, %2541
  %2563 = fsub fast float %2546, %2561
  %2564 = fadd fast float %2562, %2546
  %2565 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2566 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2567 = fsub fast float %2535, %2565
  %2568 = fsub fast float %2566, %2565
  %2569 = bitcast float %2568 to i32
  %2570 = sub nsw i32 2129859010, %2569
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2571, %2567
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  br label %2574

; <label>:2574                                    ; preds = %2528, %2523
  %2575 = phi float [ %2573, %2528 ], [ %451, %2523 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 128
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2596, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %33, 436
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = add i32 %2583, 0
  %2585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2585, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 524288
  %2591 = icmp ne i32 %2590, 0
  %2592 = fcmp fast ogt float %2587, 0x3FE0101020000000
  %2593 = select i1 %2592, float 1.000000e+00, float 0.000000e+00
  %2594 = select i1 %2591, float %2593, float %2587
  %2595 = fmul fast float %2594, %2575
  br label %2596

; <label>:2596                                    ; preds = %2580, %2574
  %2597 = phi float [ %2595, %2580 ], [ %2575, %2574 ]
  %2598 = fcmp fast ult float %2597, 0x3F70101020000000
  br i1 %2598, label %3141, label %2599

; <label>:2599                                    ; preds = %2596
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 16
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2802, label %2604

; <label>:2604                                    ; preds = %2599
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %33, 388
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %2609, 0
  %2611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2611, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.ResRet.f32 %2612, 3
  %2617 = and i32 %2606, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = lshr i32 %2606, 8
  %2620 = and i32 %2619, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = fmul fast float %2616, %2618
  %2623 = fadd fast float %2622, %2621
  %2624 = fmul fast float %2623, 0x3F70101000000000
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 512
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2637, label %2629

; <label>:2629                                    ; preds = %2604
  %2630 = add i32 %33, 476
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = add i32 %2632, 0
  %2634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2634, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  br label %2637

; <label>:2637                                    ; preds = %2629, %2604
  %2638 = phi float [ %2636, %2629 ], [ 1.000000e+00, %2604 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 33554432
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2749, label %2643

; <label>:2643                                    ; preds = %2637
  %2644 = add i32 %33, 272
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 65535
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = lshr i32 %2646, 16
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = add i32 %33, 276
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 65535
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 24
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = and i32 %2657, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2657, 8
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = lshr i32 %2657, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = add i32 %33, 268
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 24
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = and i32 %2674, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = lshr i32 %2674, 8
  %2682 = and i32 %2681, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = lshr i32 %2674, 16
  %2686 = and i32 %2685, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = bitcast float %2613 to i32
  %2690 = ashr i32 %2689, 1
  %2691 = sub nsw i32 1597463174, %2690
  %2692 = bitcast i32 %2691 to float
  %2693 = fmul fast float %2613, 5.000000e-01
  %2694 = fmul fast float %2692, %2692
  %2695 = fmul fast float %2694, %2693
  %2696 = fsub fast float 1.500000e+00, %2695
  %2697 = fmul fast float %2692, %2613
  %2698 = fmul fast float %2697, %2696
  %2699 = bitcast float %2614 to i32
  %2700 = ashr i32 %2699, 1
  %2701 = sub nsw i32 1597463174, %2700
  %2702 = bitcast i32 %2701 to float
  %2703 = fmul fast float %2614, 5.000000e-01
  %2704 = fmul fast float %2702, %2702
  %2705 = fmul fast float %2704, %2703
  %2706 = fsub fast float 1.500000e+00, %2705
  %2707 = fmul fast float %2702, %2614
  %2708 = fmul fast float %2707, %2706
  %2709 = bitcast float %2615 to i32
  %2710 = ashr i32 %2709, 1
  %2711 = sub nsw i32 1597463174, %2710
  %2712 = bitcast i32 %2711 to float
  %2713 = fmul fast float %2615, 5.000000e-01
  %2714 = fmul fast float %2712, %2712
  %2715 = fmul fast float %2714, %2713
  %2716 = fsub fast float 1.500000e+00, %2715
  %2717 = fmul fast float %2712, %2615
  %2718 = fmul fast float %2717, %2716
  %2719 = fsub fast float %2698, %2680
  %2720 = fsub fast float %2708, %2684
  %2721 = fsub fast float %2718, %2688
  %2722 = fmul fast float %2719, %2648
  %2723 = fmul fast float %2720, %2650
  %2724 = fmul fast float %2721, %2655
  %2725 = fadd fast float %2722, %2663
  %2726 = fadd fast float %2723, %2667
  %2727 = fadd fast float %2724, %2671
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2731 = fmul fast float %2728, %2728
  %2732 = fmul fast float %2729, %2729
  %2733 = fmul fast float %2730, %2730
  %2734 = fsub fast float %2731, %2613
  %2735 = fsub fast float %2732, %2614
  %2736 = fsub fast float %2733, %2615
  %2737 = fmul fast float %2734, %2638
  %2738 = fmul fast float %2735, %2638
  %2739 = fmul fast float %2736, %2638
  %2740 = fadd fast float %2737, %2613
  %2741 = fadd fast float %2738, %2614
  %2742 = fadd fast float %2739, %2615
  %2743 = fadd fast float %2660, %2624
  %2744 = fsub fast float %2743, %2677
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = fsub fast float %2745, %2624
  %2747 = fmul fast float %2746, %2638
  %2748 = fadd fast float %2747, %2624
  br label %2802

; <label>:2749                                    ; preds = %2637
  %2750 = and i32 %2640, 134217728
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2786, label %2752

; <label>:2752                                    ; preds = %2749
  %2753 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2754 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fmul fast float %2756, %2638
  %2760 = fmul fast float %2757, %2638
  %2761 = fmul fast float %2758, %2638
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %2614)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2768 = fmul fast float %2762, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2765
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2765
  %2773 = fmul fast float %2763, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2766
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2766
  %2778 = fmul fast float %2764, 2.000000e+00
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = fmul fast float %2779, %2767
  %2781 = fadd fast float %2780, %2778
  %2782 = fmul fast float %2781, %2767
  %2783 = fmul fast float %2772, %2772
  %2784 = fmul fast float %2777, %2777
  %2785 = fmul fast float %2782, %2782
  br label %2802

; <label>:2786                                    ; preds = %2749
  %2787 = fmul fast float %372, %372
  %2788 = fmul fast float %376, %376
  %2789 = fmul fast float %380, %380
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fadd fast float %2788, -1.000000e+00
  %2792 = fadd fast float %2789, -1.000000e+00
  %2793 = fmul fast float %2638, %2790
  %2794 = fmul fast float %2638, %2791
  %2795 = fmul fast float %2638, %2792
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fadd fast float %2794, 1.000000e+00
  %2798 = fadd fast float %2795, 1.000000e+00
  %2799 = fmul fast float %2796, %2613
  %2800 = fmul fast float %2797, %2614
  %2801 = fmul fast float %2798, %2615
  br label %2802

; <label>:2802                                    ; preds = %2786, %2752, %2643, %2599
  %2803 = phi float [ %2748, %2643 ], [ %2624, %2752 ], [ %2624, %2786 ], [ 0x3FA23C0BE0000000, %2599 ]
  %2804 = phi float [ %2740, %2643 ], [ %2783, %2752 ], [ %2799, %2786 ], [ 1.000000e+00, %2599 ]
  %2805 = phi float [ %2741, %2643 ], [ %2784, %2752 ], [ %2800, %2786 ], [ 1.000000e+00, %2599 ]
  %2806 = phi float [ %2742, %2643 ], [ %2785, %2752 ], [ %2801, %2786 ], [ 1.000000e+00, %2599 ]
  %2807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.i32 %2807, 1
  %2809 = and i32 %2808, 1
  %2810 = icmp ne i32 %2809, 0
  %2811 = add i32 %33, 356
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = and i32 %2813, 32
  %2815 = icmp ne i32 %2814, 0
  %2816 = and i1 %2810, %2815
  %2817 = select i1 %2816, float 1.000000e+00, float %2804
  %2818 = select i1 %2816, float 0x3FD3333340000000, float %2805
  %2819 = select i1 %2816, float 0x3FD3333340000000, float %2806
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 32
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2896, label %2824

; <label>:2824                                    ; preds = %2802
  %2825 = add i32 %33, 140
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %33, 404
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2832, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.ResRet.f32 %2833, 3
  %2838 = and i32 %2827, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = lshr i32 %2827, 8
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = lshr i32 %2827, 16
  %2844 = and i32 %2843, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = fmul fast float %2845, 0x3F70101000000000
  %2847 = fmul fast float %2834, %2839
  %2848 = fadd fast float %2847, %2842
  %2849 = fmul fast float %2848, 0x3F70101000000000
  %2850 = fadd fast float %2835, -5.000000e-01
  %2851 = fadd fast float %2837, -5.000000e-01
  %2852 = fmul fast float %2850, %2846
  %2853 = fmul fast float %2851, %2846
  %2854 = fadd fast float %2852, 5.000000e-01
  %2855 = fadd fast float %2853, 5.000000e-01
  %2856 = fmul fast float %2854, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fmul fast float %2855, 2.000000e+00
  %2859 = fadd fast float %2858, -1.000000e+00
  %2860 = fadd fast float %2857, %2859
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = fsub fast float %2857, %2859
  %2863 = fmul fast float %2862, 5.000000e-01
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float 1.000000e+00, %2864
  %2866 = call float @dx.op.unary.f32(i32 6, float %2863)  ; FAbs(value)
  %2867 = fsub fast float %2865, %2866
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2863, float %2867, float %2861, float %2863, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 25, float %2868)  ; Rsqrt(value)
  %2870 = fmul fast float %2861, %2869
  %2871 = fmul fast float %2863, %2869
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 67108864
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2892, label %2876

; <label>:2876                                    ; preds = %2824
  %2877 = add i32 %33, 328
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 65535
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = lshr i32 %2879, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = fsub fast float %2849, %2887
  %2889 = fmul fast float %2888, %2881
  %2890 = fadd fast float %2889, %2885
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  br label %2892

; <label>:2892                                    ; preds = %2876, %2824
  %2893 = phi float [ %2891, %2876 ], [ %2849, %2824 ]
  %2894 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2428, float %2429)  ; Dot2(ax,ay,bx,by)
  %2895 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2430, float %2431)  ; Dot2(ax,ay,bx,by)
  br label %2896

; <label>:2896                                    ; preds = %2892, %2802
  %2897 = phi float [ %2893, %2892 ], [ 0x3FD6666660000000, %2802 ]
  %2898 = phi float [ %2894, %2892 ], [ 0.000000e+00, %2802 ]
  %2899 = phi float [ %2895, %2892 ], [ 0.000000e+00, %2802 ]
  %2900 = phi float [ %2836, %2892 ], [ 1.000000e+00, %2802 ]
  %2901 = add i32 %33, 208
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = lshr i32 %2903, 22
  %2905 = shl nuw nsw i32 %2904, 5
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, 64
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %2944, label %2911

; <label>:2911                                    ; preds = %2896
  %2912 = add i32 %33, 420
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 131072
  %2920 = icmp eq i32 %2919, 0
  %2921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = fmul fast float %2922, %360
  %2926 = fmul fast float %2923, %363
  %2927 = fmul fast float %2924, %366
  br i1 %2920, label %2934, label %2928

; <label>:2928                                    ; preds = %2911
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = fmul fast float %2930, %2925
  %2932 = fmul fast float %2930, %2926
  %2933 = fmul fast float %2930, %2927
  br label %2934

; <label>:2934                                    ; preds = %2928, %2911
  %2935 = phi float [ %2931, %2928 ], [ %2925, %2911 ]
  %2936 = phi float [ %2932, %2928 ], [ %2926, %2911 ]
  %2937 = phi float [ %2933, %2928 ], [ %2927, %2911 ]
  %2938 = fmul fast float %2935, %2906
  %2939 = select i1 %217, float %2938, float %2935
  %2940 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2936, float %2937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = select i1 %217, float 0.000000e+00, float %2935
  %2942 = select i1 %217, float %2940, float %2936
  %2943 = select i1 %217, float 0.000000e+00, float %2937
  br label %2944

; <label>:2944                                    ; preds = %2934, %2896
  %2945 = phi float [ %2941, %2934 ], [ 0.000000e+00, %2896 ]
  %2946 = phi float [ %2942, %2934 ], [ 0.000000e+00, %2896 ]
  %2947 = phi float [ %2943, %2934 ], [ 0.000000e+00, %2896 ]
  %2948 = add i32 %33, 144
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = lshr i32 %2950, 8
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2817, float %2818, float %2819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = fmul fast float %2955, %2956
  %2958 = fadd fast float %2957, %2952
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  br i1 %2416, label %2961, label %2969

; <label>:2961                                    ; preds = %2944
  %2962 = fsub fast float 1.000000e+00, %2597
  %2963 = fmul fast float %2962, %2405
  %2964 = fmul fast float %2962, %2406
  %2965 = fmul fast float %2962, %2407
  %2966 = fmul fast float %2962, %2408
  %2967 = fmul fast float %2962, %2409
  %2968 = fmul fast float %2962, %2410
  br label %2969

; <label>:2969                                    ; preds = %2961, %2944
  %2970 = phi float [ %2963, %2961 ], [ %2405, %2944 ]
  %2971 = phi float [ %2964, %2961 ], [ %2406, %2944 ]
  %2972 = phi float [ %2965, %2961 ], [ %2407, %2944 ]
  %2973 = phi float [ %2966, %2961 ], [ %2408, %2944 ]
  %2974 = phi float [ %2967, %2961 ], [ %2409, %2944 ]
  %2975 = phi float [ %2968, %2961 ], [ %2410, %2944 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 3
  %2979 = icmp eq i32 %2978, 3
  br i1 %2979, label %3058, label %2980

; <label>:2980                                    ; preds = %2969
  %2981 = and i32 %2977, 16
  %2982 = icmp ne i32 %2981, 0
  %2983 = select i1 %2982, float %2597, float 0.000000e+00
  %2984 = icmp eq i32 %2978, 0
  br i1 %2984, label %2985, label %3013

; <label>:2985                                    ; preds = %2980
  %2986 = and i32 %2977, 64
  %2987 = icmp ne i32 %2986, 0
  %2988 = select i1 %2987, float %2597, float 0.000000e+00
  %2989 = fsub fast float %2817, %2970
  %2990 = fsub fast float %2818, %2971
  %2991 = fsub fast float %2819, %2972
  %2992 = fmul fast float %2983, %2989
  %2993 = fmul fast float %2983, %2990
  %2994 = fmul fast float %2983, %2991
  %2995 = fadd fast float %2992, %2970
  %2996 = fadd fast float %2993, %2971
  %2997 = fadd fast float %2994, %2972
  %2998 = fsub fast float %2803, %2411
  %2999 = fmul fast float %2983, %2998
  %3000 = fadd fast float %2999, %2411
  %3001 = fsub fast float %2945, %2973
  %3002 = fsub fast float %2946, %2974
  %3003 = fsub fast float %2947, %2975
  %3004 = fmul fast float %2988, %3001
  %3005 = fmul fast float %2988, %3002
  %3006 = fmul fast float %2988, %3003
  %3007 = fadd fast float %3004, %2973
  %3008 = fadd fast float %3005, %2974
  %3009 = fadd fast float %3006, %2975
  %3010 = fsub fast float %2960, %2414
  %3011 = fmul fast float %2983, %3010
  %3012 = fadd fast float %3011, %2414
  br label %3058

; <label>:3013                                    ; preds = %2980
  %3014 = icmp eq i32 %2978, 1
  br i1 %3014, label %3015, label %3028

; <label>:3015                                    ; preds = %3013
  %3016 = fadd fast float %2817, -1.000000e+00
  %3017 = fadd fast float %2818, -1.000000e+00
  %3018 = fadd fast float %2819, -1.000000e+00
  %3019 = fmul fast float %2983, %3016
  %3020 = fmul fast float %2983, %3017
  %3021 = fmul fast float %2983, %3018
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fadd fast float %3020, 1.000000e+00
  %3024 = fadd fast float %3021, 1.000000e+00
  %3025 = fmul fast float %3022, %2970
  %3026 = fmul fast float %3023, %2971
  %3027 = fmul fast float %3024, %2972
  br label %3058

; <label>:3028                                    ; preds = %3013
  %3029 = icmp eq i32 %2978, 2
  br i1 %3029, label %3030, label %3058

; <label>:3030                                    ; preds = %3028
  %3031 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %3032 = call float @dx.op.unary.f32(i32 24, float %2818)  ; Sqrt(value)
  %3033 = call float @dx.op.unary.f32(i32 24, float %2819)  ; Sqrt(value)
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fadd fast float %3033, -5.000000e-01
  %3037 = fmul fast float %3034, %2983
  %3038 = fmul fast float %3035, %2983
  %3039 = fmul fast float %3036, %2983
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = fmul fast float %3040, 2.000000e+00
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = fmul fast float %3044, %2970
  %3046 = fadd fast float %3045, %3043
  %3047 = fmul fast float %3046, %2970
  %3048 = fmul fast float %3041, 2.000000e+00
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = fmul fast float %3049, %2971
  %3051 = fadd fast float %3050, %3048
  %3052 = fmul fast float %3051, %2971
  %3053 = fmul fast float %3042, 2.000000e+00
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = fmul fast float %3054, %2972
  %3056 = fadd fast float %3055, %3053
  %3057 = fmul fast float %3056, %2972
  br label %3058

; <label>:3058                                    ; preds = %3030, %3028, %3015, %2985, %2969
  %3059 = phi float [ %2970, %2969 ], [ %3047, %3030 ], [ %2970, %3028 ], [ %3025, %3015 ], [ %2995, %2985 ]
  %3060 = phi float [ %2971, %2969 ], [ %3052, %3030 ], [ %2971, %3028 ], [ %3026, %3015 ], [ %2996, %2985 ]
  %3061 = phi float [ %2972, %2969 ], [ %3057, %3030 ], [ %2972, %3028 ], [ %3027, %3015 ], [ %2997, %2985 ]
  %3062 = phi float [ %2973, %2969 ], [ %2973, %3030 ], [ %2973, %3028 ], [ %2973, %3015 ], [ %3007, %2985 ]
  %3063 = phi float [ %2974, %2969 ], [ %2974, %3030 ], [ %2974, %3028 ], [ %2974, %3015 ], [ %3008, %2985 ]
  %3064 = phi float [ %2975, %2969 ], [ %2975, %3030 ], [ %2975, %3028 ], [ %2975, %3015 ], [ %3009, %2985 ]
  %3065 = phi float [ %2411, %2969 ], [ %2411, %3030 ], [ %2411, %3028 ], [ %2411, %3015 ], [ %3000, %2985 ]
  %3066 = phi float [ %2414, %2969 ], [ %2414, %3030 ], [ %2414, %3028 ], [ %2414, %3015 ], [ %3012, %2985 ]
  %3067 = and i32 %2977, 12
  %3068 = icmp eq i32 %3067, 12
  br i1 %3068, label %3141, label %3069

; <label>:3069                                    ; preds = %3058
  %3070 = and i32 %2977, 2097184
  %3071 = icmp eq i32 %3070, 2097184
  %3072 = select i1 %3071, float %2597, float 0.000000e+00
  %3073 = and i32 %2977, 4194336
  %3074 = icmp eq i32 %3073, 4194336
  %3075 = select i1 %3074, float %2597, float 0.000000e+00
  %3076 = and i32 %2977, 8388640
  %3077 = icmp eq i32 %3076, 8388640
  %3078 = select i1 %3077, float %2597, float 0.000000e+00
  %3079 = icmp eq i32 %3067, 0
  br i1 %3079, label %3080, label %3093

; <label>:3080                                    ; preds = %3069
  %3081 = fsub fast float %2898, %2403
  %3082 = fsub fast float %2899, %2404
  %3083 = fmul fast float %3072, %3081
  %3084 = fmul fast float %3072, %3082
  %3085 = fadd fast float %3083, %2403
  %3086 = fadd fast float %3084, %2404
  %3087 = fsub fast float %2900, %2413
  %3088 = fmul fast float %3075, %3087
  %3089 = fadd fast float %3088, %2413
  %3090 = fsub fast float %2897, %2412
  %3091 = fmul fast float %3078, %3090
  %3092 = fadd fast float %3091, %2412
  br label %3141

; <label>:3093                                    ; preds = %3069
  %3094 = icmp eq i32 %3067, 4
  br i1 %3094, label %3095, label %3127

; <label>:3095                                    ; preds = %3093
  %3096 = fmul fast float %3072, %2898
  %3097 = fmul fast float %3072, %2899
  %3098 = fadd fast float %3096, %2403
  %3099 = fadd fast float %3097, %2404
  %3100 = call float @dx.op.binary.f32(i32 36, float %2413, float %2900)  ; FMin(a,b)
  %3101 = fsub fast float %3100, %2413
  %3102 = fmul fast float %3101, %3075
  %3103 = fadd fast float %3102, %2413
  %3104 = fadd fast float %2897, %2412
  %3105 = fmul fast float %3104, 0x3FF337FAE0000000
  %3106 = fmul fast float %2412, %2412
  %3107 = fmul fast float %2897, %2897
  %3108 = fadd fast float %3107, %3106
  %3109 = fmul fast float %3108, 0x3FE5152B00000000
  %3110 = fmul fast float %2412, 0xBFCC1F85E0000000
  %3111 = fmul fast float %3110, %2897
  %3112 = fadd fast float %3111, 0xBFE1363700000000
  %3113 = fadd fast float %3112, %3105
  %3114 = fsub fast float %3113, %3109
  %3115 = fmul fast float %3104, 0x3FBA6F0D00000000
  %3116 = fmul fast float %3108, 0x3FD0432880000000
  %3117 = fmul fast float %2412, 0xBFEF110800000000
  %3118 = fmul fast float %3117, %2897
  %3119 = fadd fast float %3118, 1.000000e+00
  %3120 = fsub fast float %3119, %3115
  %3121 = fadd fast float %3120, %3116
  %3122 = fdiv fast float %3114, %3121
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3124 = fsub fast float %3123, %2412
  %3125 = fmul fast float %3124, %3078
  %3126 = fadd fast float %3125, %2412
  br label %3141

; <label>:3127                                    ; preds = %3093
  %3128 = icmp eq i32 %3067, 8
  br i1 %3128, label %3129, label %3141

; <label>:3129                                    ; preds = %3127
  %3130 = fmul fast float %3072, %2898
  %3131 = fmul fast float %3072, %2899
  %3132 = fadd fast float %3130, %2403
  %3133 = fadd fast float %3131, %2404
  %3134 = call float @dx.op.binary.f32(i32 36, float %2413, float %2900)  ; FMin(a,b)
  %3135 = fsub fast float %3134, %2413
  %3136 = fmul fast float %3135, %3075
  %3137 = fadd fast float %3136, %2413
  %3138 = fsub fast float %2897, %2412
  %3139 = fmul fast float %3078, %3138
  %3140 = fadd fast float %3139, %2412
  br label %3141

; <label>:3141                                    ; preds = %3129, %3127, %3095, %3080, %3058, %2596, %2415, %2402
  %3142 = phi float [ %2403, %3058 ], [ %2403, %2596 ], [ %2403, %2402 ], [ %2403, %2415 ], [ %3085, %3080 ], [ %3098, %3095 ], [ %2403, %3127 ], [ %3132, %3129 ]
  %3143 = phi float [ %2404, %3058 ], [ %2404, %2596 ], [ %2404, %2402 ], [ %2404, %2415 ], [ %3086, %3080 ], [ %3099, %3095 ], [ %2404, %3127 ], [ %3133, %3129 ]
  %3144 = phi float [ %3059, %3058 ], [ %2405, %2596 ], [ %2405, %2402 ], [ %2405, %2415 ], [ %3059, %3080 ], [ %3059, %3095 ], [ %3059, %3127 ], [ %3059, %3129 ]
  %3145 = phi float [ %3060, %3058 ], [ %2406, %2596 ], [ %2406, %2402 ], [ %2406, %2415 ], [ %3060, %3080 ], [ %3060, %3095 ], [ %3060, %3127 ], [ %3060, %3129 ]
  %3146 = phi float [ %3061, %3058 ], [ %2407, %2596 ], [ %2407, %2402 ], [ %2407, %2415 ], [ %3061, %3080 ], [ %3061, %3095 ], [ %3061, %3127 ], [ %3061, %3129 ]
  %3147 = phi float [ %3062, %3058 ], [ %2408, %2596 ], [ %2408, %2402 ], [ %2408, %2415 ], [ %3062, %3080 ], [ %3062, %3095 ], [ %3062, %3127 ], [ %3062, %3129 ]
  %3148 = phi float [ %3063, %3058 ], [ %2409, %2596 ], [ %2409, %2402 ], [ %2409, %2415 ], [ %3063, %3080 ], [ %3063, %3095 ], [ %3063, %3127 ], [ %3063, %3129 ]
  %3149 = phi float [ %3064, %3058 ], [ %2410, %2596 ], [ %2410, %2402 ], [ %2410, %2415 ], [ %3064, %3080 ], [ %3064, %3095 ], [ %3064, %3127 ], [ %3064, %3129 ]
  %3150 = phi float [ %3065, %3058 ], [ %2411, %2596 ], [ %2411, %2402 ], [ %2411, %2415 ], [ %3065, %3080 ], [ %3065, %3095 ], [ %3065, %3127 ], [ %3065, %3129 ]
  %3151 = phi float [ %2412, %3058 ], [ %2412, %2596 ], [ %2412, %2402 ], [ %2412, %2415 ], [ %3092, %3080 ], [ %3126, %3095 ], [ %2412, %3127 ], [ %3140, %3129 ]
  %3152 = phi float [ %2413, %3058 ], [ %2413, %2596 ], [ %2413, %2402 ], [ %2413, %2415 ], [ %3089, %3080 ], [ %3103, %3095 ], [ %2413, %3127 ], [ %3137, %3129 ]
  %3153 = phi float [ %3066, %3058 ], [ %2414, %2596 ], [ %2414, %2402 ], [ %2414, %2415 ], [ %3066, %3080 ], [ %3066, %3095 ], [ %3066, %3127 ], [ %3066, %3129 ]
  %3154 = add i32 %33, 456
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %3156, 0
  %3158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3158, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  %3161 = add i32 %33, 360
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.i32 %3162, 1
  %3165 = bitcast i32 %3163 to float
  %3166 = bitcast i32 %3164 to float
  %3167 = fcmp fast oge float %3165, 0.000000e+00
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = select i1 %3167, float %3165, float %3169
  %3171 = fadd fast float %3170, %179
  %3172 = fmul fast float %3166, %180
  %3173 = add i32 %33, 460
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = add i32 %3175, 0
  %3177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3177, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = fmul fast float %3172, %3179
  %3181 = fadd fast float %3171, %3180
  %3182 = and i32 %171, 65535
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = lshr i32 %171, 16
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = and i32 %172, 65535
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = fmul fast float %3183, %3144
  %3189 = fmul fast float %3185, %3145
  %3190 = fmul fast float %3187, %3146
  %3191 = shl i32 %173, 4
  %3192 = and i32 %3191, 32752
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %173, 7
  %3195 = and i32 %3194, 32752
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = lshr i32 %173, 22
  %3198 = shl nuw nsw i32 %3197, 5
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = and i32 %174, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = fmul fast float %3193, %3147
  %3203 = fmul fast float %3202, %3201
  %3204 = fmul fast float %3196, %3148
  %3205 = fmul fast float %3204, %3201
  %3206 = fmul fast float %3199, %3149
  %3207 = fmul fast float %3206, %3201
  %3208 = call float @dx.op.dot2.f32(i32 54, float %3142, float %3143, float %3142, float %3143)  ; Dot2(ax,ay,bx,by)
  %3209 = fmul fast float %3208, 0x3FE3333340000000
  %3210 = fsub fast float 1.000000e+00, %3209
  %3211 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3210, float %3142, float %3143, float %3210)  ; Dot3(ax,ay,az,bx,by,bz)
  %3212 = call float @dx.op.unary.f32(i32 25, float %3211)  ; Rsqrt(value)
  %3213 = fmul fast float %3212, %3142
  %3214 = fmul fast float %3212, %3143
  %3215 = fmul fast float %3210, %3212
  %3216 = fmul fast float %3215, %85
  %3217 = fmul fast float %3215, %86
  %3218 = fmul fast float %3215, %87
  %3219 = fmul fast float %3213, %59
  %3220 = fmul fast float %3213, %60
  %3221 = fmul fast float %3213, %61
  %3222 = fadd fast float %3216, %3219
  %3223 = fadd fast float %3217, %3220
  %3224 = fadd fast float %3218, %3221
  %3225 = fmul fast float %97, %3214
  %3226 = fmul fast float %98, %3214
  %3227 = fmul fast float %99, %3214
  %3228 = fadd fast float %3222, %3225
  %3229 = fadd fast float %3223, %3226
  %3230 = fadd fast float %3224, %3227
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3228, float %3229, float %3230, float %3228, float %3229, float %3230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = call float @dx.op.unary.f32(i32 25, float %3231)  ; Rsqrt(value)
  %3233 = fmul fast float %3228, %3232
  %3234 = fmul fast float %3229, %3232
  %3235 = fmul fast float %3230, %3232
  %3236 = icmp eq i32 %35, 65535
  br i1 %3236, label %3751, label %3237

; <label>:3237                                    ; preds = %3141
  %3238 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3239 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3240 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3241 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3242 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3243 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3244 = fadd fast float %3238, %36
  %3245 = fadd fast float %3239, %37
  %3246 = fadd fast float %3240, %38
  %3247 = fadd fast float %3241, %36
  %3248 = fadd fast float %3242, %37
  %3249 = fadd fast float %3243, %38
  %3250 = mul i32 %35, 48
  %3251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.ResRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.ResRet.f32 %3251, 2
  %3255 = add i32 %3250, 16
  %3256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = add i32 %3250, 32
  %3261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.f32 %3261, 0
  %3263 = extractvalue %dx.types.ResRet.f32 %3261, 1
  %3264 = extractvalue %dx.types.ResRet.f32 %3261, 2
  %3265 = extractvalue %dx.types.ResRet.f32 %3261, 3
  %3266 = bitcast float %3265 to i32
  %3267 = fmul fast float %3252, %36
  %3268 = fmul fast float %3253, %37
  %3269 = fmul fast float %3254, %38
  %3270 = fsub fast float %3267, %3257
  %3271 = fsub fast float %3268, %3258
  %3272 = fsub fast float %3269, %3259
  %3273 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3276 = fmul fast float %3273, %3262
  %3277 = fmul fast float %3274, %3263
  %3278 = fmul fast float %3275, %3264
  %3279 = fadd fast float %3262, -1.000000e+00
  %3280 = fadd fast float %3263, -1.000000e+00
  %3281 = fadd fast float %3264, -1.000000e+00
  %3282 = call float @dx.op.unary.f32(i32 27, float %3276)  ; Round_ni(value)
  %3283 = call float @dx.op.unary.f32(i32 27, float %3277)  ; Round_ni(value)
  %3284 = call float @dx.op.unary.f32(i32 27, float %3278)  ; Round_ni(value)
  %3285 = call float @dx.op.binary.f32(i32 36, float %3282, float %3279)  ; FMin(a,b)
  %3286 = call float @dx.op.binary.f32(i32 36, float %3283, float %3280)  ; FMin(a,b)
  %3287 = call float @dx.op.binary.f32(i32 36, float %3284, float %3281)  ; FMin(a,b)
  %3288 = fmul fast float %3287, %3263
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3262
  %3291 = fadd fast float %3290, %3285
  %3292 = fptosi float %3291 to i32
  %3293 = add nsw i32 %3292, %3266
  %3294 = shl nsw i32 %3293, 2
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = lshr i32 %3296, 16
  %3298 = icmp eq i32 %3297, 0
  br i1 %3298, label %3720, label %3299

; <label>:3299                                    ; preds = %3237
  br label %3300

; <label>:3300                                    ; preds = %3421, %3299
  %3301 = phi i32 [ %3323, %3421 ], [ %3297, %3299 ]
  %3302 = phi float [ %3422, %3421 ], [ 0.000000e+00, %3299 ]
  %3303 = phi float [ %3423, %3421 ], [ %3181, %3299 ]
  %3304 = phi float [ %3424, %3421 ], [ %3153, %3299 ]
  %3305 = phi float [ %3425, %3421 ], [ 0.000000e+00, %3299 ]
  %3306 = phi float [ %3426, %3421 ], [ 0.000000e+00, %3299 ]
  %3307 = phi float [ %3427, %3421 ], [ %3203, %3299 ]
  %3308 = phi float [ %3428, %3421 ], [ %3205, %3299 ]
  %3309 = phi float [ %3429, %3421 ], [ %3207, %3299 ]
  %3310 = phi float [ %3430, %3421 ], [ %3233, %3299 ]
  %3311 = phi float [ %3431, %3421 ], [ %3234, %3299 ]
  %3312 = phi float [ %3432, %3421 ], [ %3235, %3299 ]
  %3313 = phi float [ %3433, %3421 ], [ %3152, %3299 ]
  %3314 = phi float [ %3434, %3421 ], [ %3151, %3299 ]
  %3315 = phi float [ %3435, %3421 ], [ 0.000000e+00, %3299 ]
  %3316 = phi float [ %3436, %3421 ], [ %3150, %3299 ]
  %3317 = phi float [ %3437, %3421 ], [ %3188, %3299 ]
  %3318 = phi float [ %3438, %3421 ], [ %3189, %3299 ]
  %3319 = phi float [ %3439, %3421 ], [ %3190, %3299 ]
  %3320 = shl nuw nsw i32 %3301, 2
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 16
  %3324 = shl i32 %3322, 8
  %3325 = and i32 %3324, 16776960
  %3326 = or i32 %3325, 48
  %3327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = extractvalue %dx.types.ResRet.f32 %3327, 1
  %3330 = extractvalue %dx.types.ResRet.f32 %3327, 2
  %3331 = or i32 %3325, 64
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = extractvalue %dx.types.ResRet.i32 %3332, 1
  %3335 = or i32 %3325, 80
  %3336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.f32 %3336, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3336, 3
  %3339 = or i32 %3325, 96
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3344 = extractvalue %dx.types.ResRet.f32 %3340, 3
  %3345 = or i32 %3325, 112
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3348 = or i32 %3325, 128
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = extractvalue %dx.types.ResRet.f32 %3349, 3
  %3354 = or i32 %3325, 144
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3360 = or i32 %3325, 160
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3366 = or i32 %3325, 192
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = or i32 %3325, 208
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = or i32 %3325, 248
  %3373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 0
  %3375 = extractvalue %dx.types.ResRet.f32 %3373, 1
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = extractvalue %dx.types.ResRet.f32 %3376, 3
  %3381 = call float @dx.op.dot4.f32(i32 56, float %3377, float %3378, float %3379, float %3380, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3382 = or i32 %3325, 16
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = call float @dx.op.dot4.f32(i32 56, float %3384, float %3385, float %3386, float %3387, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3389 = or i32 %3325, 32
  %3390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3395 = call float @dx.op.dot4.f32(i32 56, float %3391, float %3392, float %3393, float %3394, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3396 = call float @dx.op.unary.f32(i32 27, float %3381)  ; Round_ni(value)
  %3397 = call float @dx.op.unary.f32(i32 6, float %3396)  ; FAbs(value)
  %3398 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3399 = call float @dx.op.unary.f32(i32 6, float %3398)  ; FAbs(value)
  %3400 = call float @dx.op.unary.f32(i32 6, float %3395)  ; FAbs(value)
  %3401 = call float @dx.op.unary.f32(i32 27, float %3400)  ; Round_ni(value)
  %3402 = fadd fast float %3399, %3397
  %3403 = fadd fast float %3402, %3401
  %3404 = fcmp fast oeq float %3403, 0.000000e+00
  %3405 = call float @dx.op.dot4.f32(i32 56, float %3377, float %3378, float %3379, float %3380, float %3244, float %3245, float %3246, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3406 = call float @dx.op.dot4.f32(i32 56, float %3384, float %3385, float %3386, float %3387, float %3244, float %3245, float %3246, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3407 = call float @dx.op.dot4.f32(i32 56, float %3377, float %3378, float %3379, float %3380, float %3247, float %3248, float %3249, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3408 = call float @dx.op.dot4.f32(i32 56, float %3384, float %3385, float %3386, float %3387, float %3247, float %3248, float %3249, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3409 = fsub fast float %3405, %3381
  %3410 = fsub fast float %3407, %3381
  %3411 = fsub fast float %3406, %3388
  %3412 = fsub fast float %3408, %3388
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3328, float %3329, float %3330, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 2
  %3416 = fadd fast float %3415, %3413
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3419 = fcmp fast ogt float %3417, %3418
  %3420 = and i1 %3404, %3419
  br i1 %3420, label %3441, label %3421

; <label>:3421                                    ; preds = %3706, %3524, %3441, %3300
  %3422 = phi float [ %3302, %3441 ], [ %3527, %3524 ], [ %3527, %3706 ], [ %3302, %3300 ]
  %3423 = phi float [ %3303, %3441 ], [ %3303, %3524 ], [ %3681, %3706 ], [ %3303, %3300 ]
  %3424 = phi float [ %3304, %3441 ], [ %3304, %3524 ], [ %3679, %3706 ], [ %3304, %3300 ]
  %3425 = phi float [ %3305, %3441 ], [ %3305, %3524 ], [ %3651, %3706 ], [ %3305, %3300 ]
  %3426 = phi float [ %3306, %3441 ], [ %3306, %3524 ], [ %3649, %3706 ], [ %3306, %3300 ]
  %3427 = phi float [ %3307, %3441 ], [ %3307, %3524 ], [ %3716, %3706 ], [ %3307, %3300 ]
  %3428 = phi float [ %3308, %3441 ], [ %3308, %3524 ], [ %3717, %3706 ], [ %3308, %3300 ]
  %3429 = phi float [ %3309, %3441 ], [ %3309, %3524 ], [ %3718, %3706 ], [ %3309, %3300 ]
  %3430 = phi float [ %3310, %3441 ], [ %3310, %3524 ], [ %3630, %3706 ], [ %3310, %3300 ]
  %3431 = phi float [ %3311, %3441 ], [ %3311, %3524 ], [ %3631, %3706 ], [ %3311, %3300 ]
  %3432 = phi float [ %3312, %3441 ], [ %3312, %3524 ], [ %3632, %3706 ], [ %3312, %3300 ]
  %3433 = phi float [ %3313, %3441 ], [ %3313, %3524 ], [ %3659, %3706 ], [ %3313, %3300 ]
  %3434 = phi float [ %3314, %3441 ], [ %3314, %3524 ], [ %3656, %3706 ], [ %3314, %3300 ]
  %3435 = phi float [ %3315, %3441 ], [ %3315, %3524 ], [ %3653, %3706 ], [ %3315, %3300 ]
  %3436 = phi float [ %3316, %3441 ], [ %3316, %3524 ], [ %3647, %3706 ], [ %3316, %3300 ]
  %3437 = phi float [ %3317, %3441 ], [ %3317, %3524 ], [ %3642, %3706 ], [ %3317, %3300 ]
  %3438 = phi float [ %3318, %3441 ], [ %3318, %3524 ], [ %3643, %3706 ], [ %3318, %3300 ]
  %3439 = phi float [ %3319, %3441 ], [ %3319, %3524 ], [ %3644, %3706 ], [ %3319, %3300 ]
  %3440 = icmp eq i32 %3323, 0
  br i1 %3440, label %3719, label %3300

; <label>:3441                                    ; preds = %3300
  %3442 = extractvalue %dx.types.ResRet.f32 %3327, 3
  %3443 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3444 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3336, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3336, 0
  %3448 = extractvalue %dx.types.ResRet.i32 %3332, 3
  %3449 = extractvalue %dx.types.ResRet.i32 %3332, 2
  %3450 = bitcast float %3442 to i32
  %3451 = add i32 %3448, 0
  %3452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3452, %dx.types.Handle %3453, float %3381, float %3388, float undef, float undef, i32 0, i32 0, i32 undef, float %3409, float %3411, float undef, float %3410, float %3412, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = fmul fast float %3455, %3447
  %3457 = fadd fast float %3456, %3446
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fmul fast float %3381, %3341
  %3460 = call float @dx.op.tertiary.f32(i32 46, float %3342, float %3388, float %3459)  ; FMad(a,b,c)
  %3461 = fadd fast float %3460, %3445
  %3462 = fmul fast float %3381, %3343
  %3463 = call float @dx.op.tertiary.f32(i32 46, float %3344, float %3388, float %3462)  ; FMad(a,b,c)
  %3464 = fadd fast float %3463, %3444
  %3465 = fmul fast float %3409, %3341
  %3466 = call float @dx.op.tertiary.f32(i32 46, float %3342, float %3411, float %3465)  ; FMad(a,b,c)
  %3467 = fmul fast float %3409, %3343
  %3468 = call float @dx.op.tertiary.f32(i32 46, float %3344, float %3411, float %3467)  ; FMad(a,b,c)
  %3469 = fmul fast float %3410, %3341
  %3470 = call float @dx.op.tertiary.f32(i32 46, float %3342, float %3412, float %3469)  ; FMad(a,b,c)
  %3471 = fmul fast float %3410, %3343
  %3472 = call float @dx.op.tertiary.f32(i32 46, float %3344, float %3412, float %3471)  ; FMad(a,b,c)
  %3473 = add i32 %3449, 0
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3474, %dx.types.Handle %3453, float %3461, float %3464, float undef, float undef, i32 0, i32 0, i32 undef, float %3466, float %3468, float undef, float %3470, float %3472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = and i32 %3450, 1024
  %3478 = icmp ne i32 %3477, 0
  %3479 = fcmp fast ogt float %3476, 0x3FE0101020000000
  %3480 = uitofp i1 %3479 to float
  %3481 = select i1 %3478, float %3480, float %3476
  %3482 = and i32 %3450, 8192
  %3483 = icmp ne i32 %3482, 0
  %3484 = select i1 %3483, float %3443, float 1.000000e+00
  %3485 = fmul fast float %3381, 2.000000e+00
  %3486 = fadd fast float %3485, -1.000000e+00
  %3487 = call float @dx.op.unary.f32(i32 6, float %3486)  ; FAbs(value)
  %3488 = fmul fast float %3487, %3374
  %3489 = fsub fast float %3488, %3374
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = fmul fast float %3388, 2.000000e+00
  %3492 = fadd fast float %3491, -1.000000e+00
  %3493 = call float @dx.op.unary.f32(i32 6, float %3492)  ; FAbs(value)
  %3494 = fmul fast float %3493, %3375
  %3495 = fsub fast float %3494, %3375
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = fmul fast float %3400, %3337
  %3498 = fsub fast float %3497, %3337
  %3499 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3500 = fmul fast float %3458, %3484
  %3501 = fmul fast float %3500, %3455
  %3502 = fmul fast float %3501, %3490
  %3503 = fmul fast float %3502, %3481
  %3504 = fmul fast float %3503, %3496
  %3505 = fmul fast float %3504, %3499
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 1
  %3508 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3509 = fsub fast float %3417, %3508
  %3510 = fmul fast float %3509, %3507
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3512 = fmul fast float %3505, %3338
  %3513 = fadd fast float %3505, %3338
  %3514 = fmul fast float %3513, %3347
  %3515 = fsub fast float %3514, %3347
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3517 = and i32 %3450, 128
  %3518 = icmp ne i32 %3517, 0
  %3519 = select i1 %3518, float %3516, float %3512
  %3520 = fmul fast float %3519, %3511
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = fcmp fast ugt float %3520, %3522
  br i1 %3523, label %3524, label %3421

; <label>:3524                                    ; preds = %3441
  %3525 = select i1 %3483, float %3520, float 0.000000e+00
  %3526 = fadd fast float %3525, %3302
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  br i1 %3483, label %3421, label %3528

; <label>:3528                                    ; preds = %3524
  %3529 = and i32 %3450, 4
  %3530 = and i32 %3450, 8
  %3531 = add i32 %3333, 0
  %3532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3531, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3532, %dx.types.Handle %3533, float %3461, float %3464, float undef, float undef, i32 0, i32 0, i32 undef, float %3466, float %3468, float undef, float %3470, float %3472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = extractvalue %dx.types.ResRet.f32 %3534, 3
  %3539 = bitcast float %3359 to i32
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = lshr i32 %3539, 8
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = fmul fast float %3538, %3541
  %3546 = fadd fast float %3545, %3544
  %3547 = fmul fast float %3546, 0x3F70101000000000
  %3548 = add i32 %3334, 0
  %3549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3549, %dx.types.Handle %3533, float %3461, float %3464, float undef, float undef, i32 0, i32 0, i32 undef, float %3466, float %3468, float undef, float %3470, float %3472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = extractvalue %dx.types.ResRet.f32 %3550, 3
  %3555 = bitcast float %3353 to i32
  %3556 = and i32 %3555, 255
  %3557 = uitofp i32 %3556 to float
  %3558 = lshr i32 %3555, 8
  %3559 = and i32 %3558, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = lshr i32 %3555, 16
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = fmul fast float %3563, 0x3F70101000000000
  %3565 = fmul fast float %3551, %3557
  %3566 = fadd fast float %3565, %3560
  %3567 = fmul fast float %3566, 0x3F70101000000000
  %3568 = fadd fast float %3552, -5.000000e-01
  %3569 = fadd fast float %3554, -5.000000e-01
  %3570 = fmul fast float %3568, %3564
  %3571 = fmul fast float %3569, %3564
  %3572 = fadd fast float %3570, 5.000000e-01
  %3573 = fadd fast float %3571, 5.000000e-01
  %3574 = fmul fast float %3535, %3362
  %3575 = fmul fast float %3536, %3363
  %3576 = fmul fast float %3537, %3364
  %3577 = fmul fast float %3572, 2.000000e+00
  %3578 = fadd fast float %3577, -1.000000e+00
  %3579 = fmul fast float %3573, 2.000000e+00
  %3580 = fadd fast float %3579, -1.000000e+00
  %3581 = fadd fast float %3578, %3580
  %3582 = fmul fast float %3581, 5.000000e-01
  %3583 = fsub fast float %3578, %3580
  %3584 = fmul fast float %3583, 5.000000e-01
  %3585 = call float @dx.op.unary.f32(i32 6, float %3582)  ; FAbs(value)
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3588 = fsub fast float %3586, %3587
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3584, float %3588, float %3582, float %3584, float %3588)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = call float @dx.op.unary.f32(i32 25, float %3589)  ; Rsqrt(value)
  %3591 = fmul fast float %3582, %3590
  %3592 = fmul fast float %3584, %3590
  %3593 = fmul fast float %3590, %3588
  %3594 = fmul fast float %3593, %3328
  %3595 = fmul fast float %3593, %3329
  %3596 = fmul fast float %3593, %3330
  %3597 = fmul fast float %3591, %3350
  %3598 = fmul fast float %3591, %3351
  %3599 = fmul fast float %3591, %3352
  %3600 = fadd fast float %3597, %3594
  %3601 = fadd fast float %3598, %3595
  %3602 = fadd fast float %3599, %3596
  %3603 = fmul fast float %3592, %3356
  %3604 = fmul fast float %3592, %3357
  %3605 = fmul fast float %3592, %3358
  %3606 = fadd fast float %3600, %3603
  %3607 = fadd fast float %3601, %3604
  %3608 = fadd fast float %3602, %3605
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3606, float %3607, float %3608, float %3606, float %3607, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.unary.f32(i32 25, float %3609)  ; Rsqrt(value)
  %3611 = fmul fast float %3606, %3610
  %3612 = fmul fast float %3607, %3610
  %3613 = fmul fast float %3608, %3610
  %3614 = icmp ne i32 %3530, 0
  %3615 = select i1 %3614, float 1.000000e+00, float 0.000000e+00
  %3616 = fmul fast float %3520, %3615
  %3617 = and i32 %3450, 1
  %3618 = icmp eq i32 %3617, 0
  br i1 %3618, label %3619, label %3623

; <label>:3619                                    ; preds = %3528
  %3620 = fsub fast float %3611, %3310
  %3621 = fsub fast float %3612, %3311
  %3622 = fsub fast float %3613, %3312
  br label %3623

; <label>:3623                                    ; preds = %3619, %3528
  %3624 = phi float [ %3620, %3619 ], [ %3611, %3528 ]
  %3625 = phi float [ %3621, %3619 ], [ %3612, %3528 ]
  %3626 = phi float [ %3622, %3619 ], [ %3613, %3528 ]
  %3627 = fmul float %3626, %3616
  %3628 = fmul float %3625, %3616
  %3629 = fmul float %3624, %3616
  %3630 = fadd fast float %3629, %3310
  %3631 = fadd fast float %3628, %3311
  %3632 = fadd fast float %3627, %3312
  %3633 = icmp ne i32 %3529, 0
  %3634 = select i1 %3633, float 1.000000e+00, float 0.000000e+00
  %3635 = fmul fast float %3520, %3634
  %3636 = fsub fast float %3574, %3317
  %3637 = fsub fast float %3575, %3318
  %3638 = fsub fast float %3576, %3319
  %3639 = fmul fast float %3636, %3635
  %3640 = fmul fast float %3637, %3635
  %3641 = fmul fast float %3638, %3635
  %3642 = fadd fast float %3639, %3317
  %3643 = fadd fast float %3640, %3318
  %3644 = fadd fast float %3641, %3319
  %3645 = fsub fast float %3547, %3316
  %3646 = fmul fast float %3645, %3635
  %3647 = fadd fast float %3646, %3316
  %3648 = fmul fast float %3635, %3306
  %3649 = fsub fast float %3306, %3648
  %3650 = fmul fast float %3635, %3305
  %3651 = fsub fast float %3305, %3650
  %3652 = fadd fast float %3520, %3315
  %3653 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3654 = fsub fast float %3567, %3314
  %3655 = fmul fast float %3654, %3616
  %3656 = fadd fast float %3655, %3314
  %3657 = fsub fast float %3553, %3313
  %3658 = fmul fast float %3657, %3616
  %3659 = fadd fast float %3658, %3313
  %3660 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3575, float %3576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3664 = fmul fast float %3663, %3660
  %3665 = fadd fast float %3664, %3662
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = bitcast float %3365 to i32
  %3668 = and i32 %3667, 65535
  %3669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3668)  ; LegacyF16ToF32(value)
  %3670 = lshr i32 %3667, 16
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = fcmp fast oge float %3669, 0.000000e+00
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = select i1 %3672, float %3669, float %3674
  %3676 = fadd fast float %3675, %3671
  %3677 = fsub fast float %3666, %3304
  %3678 = fmul fast float %3677, %3520
  %3679 = fadd fast float %3678, %3304
  %3680 = fmul fast float %3676, %3520
  %3681 = call float @dx.op.binary.f32(i32 35, float %3303, float %3680)  ; FMax(a,b)
  %3682 = and i32 %3450, 16
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3706, label %3684

; <label>:3684                                    ; preds = %3623
  %3685 = bitcast float %3371 to i32
  %3686 = add i32 %3368, 0
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3686, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3687, %dx.types.Handle %3533, float %3461, float %3464, float undef, float undef, i32 0, i32 0, i32 undef, float %3466, float %3468, float undef, float %3470, float %3472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = and i32 %3685, 65535
  %3693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3692)  ; LegacyF16ToF32(value)
  %3694 = fmul fast float %3689, %3362
  %3695 = fmul fast float %3690, %3363
  %3696 = fmul fast float %3691, %3364
  %3697 = and i32 %3450, 16384
  %3698 = icmp ne i32 %3697, 0
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = select i1 %3698, float %3700, float 1.000000e+00
  %3702 = fmul fast float %3701, %3693
  %3703 = fmul fast float %3694, %3702
  %3704 = fmul fast float %3695, %3702
  %3705 = fmul fast float %3696, %3702
  br label %3706

; <label>:3706                                    ; preds = %3684, %3623
  %3707 = phi float [ %3703, %3684 ], [ 0.000000e+00, %3623 ]
  %3708 = phi float [ %3704, %3684 ], [ 0.000000e+00, %3623 ]
  %3709 = phi float [ %3705, %3684 ], [ 0.000000e+00, %3623 ]
  %3710 = fsub fast float %3707, %3307
  %3711 = fsub fast float %3708, %3308
  %3712 = fsub fast float %3709, %3309
  %3713 = fmul fast float %3710, %3520
  %3714 = fmul fast float %3711, %3520
  %3715 = fmul fast float %3712, %3520
  %3716 = fadd fast float %3713, %3307
  %3717 = fadd fast float %3714, %3308
  %3718 = fadd fast float %3715, %3309
  br label %3421

; <label>:3719                                    ; preds = %3421
  br label %3720

; <label>:3720                                    ; preds = %3719, %3237
  %3721 = phi float [ 0.000000e+00, %3237 ], [ %3422, %3719 ]
  %3722 = phi float [ %3181, %3237 ], [ %3423, %3719 ]
  %3723 = phi float [ %3153, %3237 ], [ %3424, %3719 ]
  %3724 = phi float [ 0.000000e+00, %3237 ], [ %3425, %3719 ]
  %3725 = phi float [ 0.000000e+00, %3237 ], [ %3426, %3719 ]
  %3726 = phi float [ %3203, %3237 ], [ %3427, %3719 ]
  %3727 = phi float [ %3205, %3237 ], [ %3428, %3719 ]
  %3728 = phi float [ %3207, %3237 ], [ %3429, %3719 ]
  %3729 = phi float [ %3233, %3237 ], [ %3430, %3719 ]
  %3730 = phi float [ %3234, %3237 ], [ %3431, %3719 ]
  %3731 = phi float [ %3235, %3237 ], [ %3432, %3719 ]
  %3732 = phi float [ %3152, %3237 ], [ %3433, %3719 ]
  %3733 = phi float [ %3151, %3237 ], [ %3434, %3719 ]
  %3734 = phi float [ 0.000000e+00, %3237 ], [ %3435, %3719 ]
  %3735 = phi float [ %3150, %3237 ], [ %3436, %3719 ]
  %3736 = phi float [ %3188, %3237 ], [ %3437, %3719 ]
  %3737 = phi float [ %3189, %3237 ], [ %3438, %3719 ]
  %3738 = phi float [ %3190, %3237 ], [ %3439, %3719 ]
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3730, float %3731, float %3729, float %3730, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 25, float %3739)  ; Rsqrt(value)
  %3741 = fmul fast float %3740, %3729
  %3742 = fmul fast float %3740, %3730
  %3743 = fmul fast float %3740, %3731
  %3744 = fadd fast float %3734, %933
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float %3741, float %3742, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = call float @dx.op.unary.f32(i32 25, float %3746)  ; Rsqrt(value)
  %3748 = fmul fast float %3747, %3741
  %3749 = fmul fast float %3747, %3742
  %3750 = fmul fast float %3747, %3743
  br label %3751

; <label>:3751                                    ; preds = %3720, %3141
  %3752 = phi float [ %3748, %3720 ], [ %3233, %3141 ]
  %3753 = phi float [ %3749, %3720 ], [ %3234, %3141 ]
  %3754 = phi float [ %3750, %3720 ], [ %3235, %3141 ]
  %3755 = phi float [ %3736, %3720 ], [ %3188, %3141 ]
  %3756 = phi float [ %3737, %3720 ], [ %3189, %3141 ]
  %3757 = phi float [ %3738, %3720 ], [ %3190, %3141 ]
  %3758 = phi float [ %3726, %3720 ], [ %3203, %3141 ]
  %3759 = phi float [ %3727, %3720 ], [ %3205, %3141 ]
  %3760 = phi float [ %3728, %3720 ], [ %3207, %3141 ]
  %3761 = phi float [ %3735, %3720 ], [ %3150, %3141 ]
  %3762 = phi float [ %3745, %3720 ], [ %933, %3141 ]
  %3763 = phi float [ %3733, %3720 ], [ %3151, %3141 ]
  %3764 = phi float [ %3732, %3720 ], [ %3152, %3141 ]
  %3765 = phi float [ %3725, %3720 ], [ 0.000000e+00, %3141 ]
  %3766 = phi float [ %3724, %3720 ], [ 0.000000e+00, %3141 ]
  %3767 = phi float [ %3721, %3720 ], [ 0.000000e+00, %3141 ]
  %3768 = phi float [ %3722, %3720 ], [ %3181, %3141 ]
  %3769 = phi float [ %3723, %3720 ], [ %3153, %3141 ]
  %3770 = fadd fast float %3761, 0xBFB99999A0000000
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fmul fast float %3771, 0x3FF1C71C80000000
  %3773 = call float @dx.op.binary.f32(i32 36, float %3761, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3774 = fsub fast float 1.000000e+00, %3772
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3775, %3755
  %3777 = fmul fast float %3775, %3756
  %3778 = fmul fast float %3775, %3757
  %3779 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3780 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3781 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3782 = fmul fast float %3772, %3755
  %3783 = fmul fast float %3772, %3756
  %3784 = fmul fast float %3772, %3757
  %3785 = fadd fast float %3782, %3773
  %3786 = fadd fast float %3783, %3773
  %3787 = fadd fast float %3784, %3773
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3792 = fadd fast float %3755, %3160
  %3793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.i32 %3793, 3
  %3795 = and i32 %3794, 8
  %3796 = icmp ne i32 %3795, 0
  %3797 = call float @dx.op.binary.f32(i32 35, float %3779, float %3792)  ; FMax(a,b)
  %3798 = call float @dx.op.binary.f32(i32 35, float %3780, float %3792)  ; FMax(a,b)
  %3799 = call float @dx.op.binary.f32(i32 35, float %3781, float %3792)  ; FMax(a,b)
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3779, float %3780, float %3781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = select i1 %217, float %3792, float %3779
  %3802 = select i1 %217, float %3800, float %3780
  %3803 = select i1 %217, float 1.000000e+00, float %3781
  %3804 = select i1 %3796, float %3797, float %3801
  %3805 = select i1 %3796, float %3798, float %3802
  %3806 = select i1 %3796, float %3799, float %3803
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3811 = fadd fast float %3808, %165
  %3812 = fadd fast float %3809, %166
  %3813 = fadd fast float %3810, %167
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.CBufRet.f32 %3814, 1
  %3817 = fsub fast float %3811, %3815
  %3818 = fsub fast float %3812, %3816
  %3819 = fmul fast float %3817, %3817
  %3820 = fmul fast float %3818, %3818
  %3821 = fadd fast float %3819, %3820
  %3822 = call float @dx.op.unary.f32(i32 24, float %3821)  ; Sqrt(value)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3824 = fcmp fast olt float %3822, %3823
  br i1 %3824, label %3825, label %3892

; <label>:3825                                    ; preds = %3751
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.CBufRet.f32 %3826, 1
  %3833 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3834 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3836 = extractvalue %dx.types.CBufRet.f32 %3828, 3
  %3837 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3838 = fadd fast float %3835, %3811
  %3839 = fadd fast float %3836, %3812
  %3840 = fadd fast float %3837, %3813
  %3841 = fmul fast float %3838, %3827
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3829, float %3841)  ; FMad(a,b,c)
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3840, float %3831, float %3842)  ; FMad(a,b,c)
  %3844 = fmul fast float %3838, %3832
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3833, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3840, float %3834, float %3845)  ; FMad(a,b,c)
  %3847 = fsub fast float %3843, %3835
  %3848 = fsub fast float %3846, %3836
  %3849 = fsub fast float %3847, %3815
  %3850 = fadd fast float %3849, %3823
  %3851 = fsub fast float %3848, %3816
  %3852 = fadd fast float %3851, %3823
  %3853 = extractvalue %dx.types.CBufRet.f32 %3814, 3
  %3854 = fmul fast float %3850, %3853
  %3855 = fmul fast float %3852, %3853
  %3856 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3858 = fsub fast float 1.000000e+00, %3856
  %3859 = fsub fast float 1.000000e+00, %3857
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = fcmp fast ugt float %3861, 0.000000e+00
  br i1 %3862, label %3863, label %4166

; <label>:3863                                    ; preds = %3825
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = fmul fast float %3865, %3861
  %3867 = extractvalue %dx.types.CBufRet.f32 %3864, 3
  %3868 = fadd fast float %3867, %3866
  %3869 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3870 = fadd fast float %3868, %3837
  %3871 = fmul fast float %3843, %3831
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3834, float %3871)  ; FMad(a,b,c)
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3870, float %3869, float %3872)  ; FMad(a,b,c)
  %3874 = fsub fast float %3873, %3837
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3877 = fsub fast float %3874, %3876
  %3878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = fadd fast float %3883, %3879
  %3887 = fmul fast float %3886, 0x3F847AE140000000
  %3888 = fadd fast float %3884, %3880
  %3889 = fmul fast float %3888, 0x3F847AE140000000
  %3890 = fadd fast float %3885, %3881
  %3891 = fmul fast float %3890, 0x3F847AE140000000
  br label %4166

; <label>:3892                                    ; preds = %3751
  %3893 = and i32 %196, 1
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %4166, label %3895

; <label>:3895                                    ; preds = %3892
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3905 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3906 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3907 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3908 = fadd fast float %3905, %3811
  %3909 = fadd fast float %3906, %3812
  %3910 = fadd fast float %3907, %3813
  %3911 = fmul fast float %3908, %3897
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3899, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3901, float %3912)  ; FMad(a,b,c)
  %3914 = fmul fast float %3908, %3902
  %3915 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3903, float %3914)  ; FMad(a,b,c)
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3904, float %3915)  ; FMad(a,b,c)
  %3917 = fsub fast float %3913, %3905
  %3918 = fsub fast float %3916, %3906
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.i32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.i32 %3926, 1
  %3929 = udiv i32 %3928, %3927
  %3930 = fsub fast float %3917, %3920
  %3931 = fsub fast float %3918, %3921
  %3932 = call float @dx.op.binary.f32(i32 35, float %3930, float 0.000000e+00)  ; FMax(a,b)
  %3933 = call float @dx.op.binary.f32(i32 35, float %3931, float 0.000000e+00)  ; FMax(a,b)
  %3934 = call float @dx.op.binary.f32(i32 36, float %3932, float %3922)  ; FMin(a,b)
  %3935 = call float @dx.op.binary.f32(i32 36, float %3933, float %3923)  ; FMin(a,b)
  %3936 = add i32 %3927, -1
  %3937 = add i32 %3929, -1
  %3938 = fmul fast float %3934, %3925
  %3939 = fmul fast float %3935, %3925
  %3940 = fptoui float %3938 to i32
  %3941 = fptoui float %3939 to i32
  %3942 = call i32 @dx.op.binary.i32(i32 40, i32 %3940, i32 %3936)  ; UMin(a,b)
  %3943 = call i32 @dx.op.binary.i32(i32 40, i32 %3941, i32 %3937)  ; UMin(a,b)
  %3944 = mul i32 %3943, %3927
  %3945 = add i32 %3944, %3942
  %3946 = shl i32 %3945, 2
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = icmp eq i32 %3948, -1
  br i1 %3949, label %4166, label %3950

; <label>:3950                                    ; preds = %3895
  %3951 = mul i32 %3948, 148
  %3952 = add i32 %3951, 4
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = add i32 %3951, 8
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3951, 36
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = add i32 %3951, 60
  %3962 = add i32 %3951, 92
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = add i32 %3951, 116
  %3966 = fsub fast float %3917, %3954
  %3967 = fsub fast float %3918, %3957
  %3968 = fmul fast float %3925, %3966
  %3969 = fmul fast float %3925, %3967
  %3970 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3971 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 2
  %3975 = call float @dx.op.unary.f32(i32 83, float %3970)  ; DerivCoarseX(value)
  %3976 = call float @dx.op.unary.f32(i32 83, float %3972)  ; DerivCoarseX(value)
  %3977 = call float @dx.op.unary.f32(i32 84, float %3970)  ; DerivCoarseY(value)
  %3978 = call float @dx.op.unary.f32(i32 84, float %3972)  ; DerivCoarseY(value)
  %3979 = fmul fast float %3975, %3974
  %3980 = fmul fast float %3976, %3974
  %3981 = fmul fast float %3977, %3974
  %3982 = fmul fast float %3978, %3974
  %3983 = call float @dx.op.dot2.f32(i32 54, float %3981, float %3982, float %3981, float %3982)  ; Dot2(ax,ay,bx,by)
  %3984 = call float @dx.op.dot2.f32(i32 54, float %3979, float %3980, float %3979, float %3980)  ; Dot2(ax,ay,bx,by)
  %3985 = call float @dx.op.binary.f32(i32 35, float %3984, float %3983)  ; FMax(a,b)
  %3986 = call float @dx.op.unary.f32(i32 23, float %3985)  ; Log(value)
  %3987 = fmul fast float %3986, 5.000000e-01
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3990 = fadd fast float %3989, %3987
  %3991 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %3994 = fadd fast float %3993, %3991
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3997 = fadd fast float %3994, %3996
  %3998 = add i32 %3964, 0
  %3999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3998, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4000 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3999, i32 0)  ; GetDimensions(handle,mipLevel)
  %4001 = extractvalue %dx.types.Dimensions %4000, 0
  %4002 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4001)  ; FirstbitLo(value)
  %4003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.i32 %4003, 1
  %4005 = sub nsw i32 %4004, %4002
  %4006 = sitofp i32 %4005 to float
  %4007 = fsub fast float %3997, %4006
  %4008 = call float @dx.op.binary.f32(i32 35, float %4007, float 0.000000e+00)  ; FMax(a,b)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3999, %dx.types.Handle %28, float %3970, float %3972, float %3960, float undef, i32 0, i32 0, i32 undef, float %4008)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = fcmp ule float %4010, 0x3FE0101020000000
  %4012 = extractvalue %dx.types.CBufRet.i32 %4003, 0
  %4013 = and i32 %4012, 128
  %4014 = icmp ne i32 %4013, 0
  %4015 = and i1 %4011, %4014
  br i1 %4015, label %4166, label %4016

; <label>:4016                                    ; preds = %3950
  %4017 = add i32 %3951, 20
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %3951, 24
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = add i32 %3951, 40
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = add i32 %3951, 96
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4031 = fmul fast float %4030, %3970
  %4032 = fmul fast float %4030, %3972
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4034 = fadd fast float %4031, %4033
  %4035 = fadd fast float %4032, %4033
  %4036 = add i32 %4028, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4037, i32 0)  ; GetDimensions(handle,mipLevel)
  %4039 = extractvalue %dx.types.Dimensions %4038, 0
  %4040 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4039)  ; FirstbitLo(value)
  %4041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.i32 %4041, 1
  %4043 = sub nsw i32 %4042, %4040
  %4044 = sitofp i32 %4043 to float
  %4045 = fsub fast float %3994, %4044
  %4046 = call float @dx.op.binary.f32(i32 35, float %4045, float 0.000000e+00)  ; FMax(a,b)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4037, %dx.types.Handle %28, float %4034, float %4035, float %4025, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = fmul fast float %4048, %4019
  %4050 = fadd fast float %4049, %4022
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4060 = fadd fast float %4056, %3917
  %4061 = fadd fast float %4058, %3918
  %4062 = fadd fast float %4050, %4059
  %4063 = fmul fast float %4060, %4052
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4053, float %4063)  ; FMad(a,b,c)
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4054, float %4064)  ; FMad(a,b,c)
  %4066 = fsub fast float %4065, %4059
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4069 = fsub fast float %4066, %4068
  %4070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.i32 %4070, 0
  %4072 = call i32 @dx.op.binary.i32(i32 40, i32 %3948, i32 %4071)  ; UMin(a,b)
  %4073 = mul i32 %4072, 36
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = add i32 %4073, 4
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = fmul fast float %4078, %3970
  %4080 = fmul fast float %4078, %3972
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4082 = fadd fast float %4079, %4081
  %4083 = fadd fast float %4080, %4081
  %4084 = icmp eq i32 %4075, 0
  br i1 %4084, label %4153, label %4085

; <label>:4085                                    ; preds = %4016
  br label %4086

; <label>:4086                                    ; preds = %4143, %4085
  %4087 = phi float [ %4144, %4143 ], [ 0.000000e+00, %4085 ]
  %4088 = phi float [ %4145, %4143 ], [ 0.000000e+00, %4085 ]
  %4089 = phi float [ %4146, %4143 ], [ 0.000000e+00, %4085 ]
  %4090 = phi float [ %4147, %4143 ], [ 0.000000e+00, %4085 ]
  %4091 = phi float [ %4148, %4143 ], [ 0.000000e+00, %4085 ]
  %4092 = phi float [ %4149, %4143 ], [ 0.000000e+00, %4085 ]
  %4093 = phi i32 [ %4150, %4143 ], [ 0, %4085 ]
  %4094 = shl i32 %4093, 2
  %4095 = add i32 %3961, %4094
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = add i32 %3965, %4094
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = add i32 %4100, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4102, i32 0)  ; GetDimensions(handle,mipLevel)
  %4104 = extractvalue %dx.types.Dimensions %4103, 0
  %4105 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4104)  ; FirstbitLo(value)
  %4106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.i32 %4106, 1
  %4108 = sub nsw i32 %4107, %4105
  %4109 = sitofp i32 %4108 to float
  %4110 = fsub fast float %3994, %4109
  %4111 = call float @dx.op.binary.f32(i32 35, float %4110, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4102, %dx.types.Handle %28, float %4082, float %4083, float %4097, float undef, i32 0, i32 0, i32 undef, float %4111)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fcmp fast ogt float %4113, 0.000000e+00
  br i1 %4114, label %4115, label %4143

; <label>:4115                                    ; preds = %4086
  %4116 = add i32 %4076, %4094
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = and i32 %4118, 32767
  %4120 = mul nuw nsw i32 %4119, 928
  %4121 = add nuw nsw i32 %4120, 48
  %4122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = add nuw nsw i32 %4120, 60
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = fmul fast float %4123, %4113
  %4132 = fmul fast float %4124, %4113
  %4133 = fmul fast float %4125, %4113
  %4134 = fadd fast float %4131, %4087
  %4135 = fadd fast float %4132, %4088
  %4136 = fadd fast float %4133, %4089
  %4137 = fmul fast float %4128, %4113
  %4138 = fmul fast float %4129, %4113
  %4139 = fmul fast float %4130, %4113
  %4140 = fadd fast float %4137, %4090
  %4141 = fadd fast float %4138, %4091
  %4142 = fadd fast float %4139, %4092
  br label %4143

; <label>:4143                                    ; preds = %4115, %4086
  %4144 = phi float [ %4134, %4115 ], [ %4087, %4086 ]
  %4145 = phi float [ %4135, %4115 ], [ %4088, %4086 ]
  %4146 = phi float [ %4136, %4115 ], [ %4089, %4086 ]
  %4147 = phi float [ %4140, %4115 ], [ %4090, %4086 ]
  %4148 = phi float [ %4141, %4115 ], [ %4091, %4086 ]
  %4149 = phi float [ %4142, %4115 ], [ %4092, %4086 ]
  %4150 = add nuw i32 %4093, 1
  %4151 = icmp eq i32 %4150, %4075
  br i1 %4151, label %4152, label %4086

; <label>:4152                                    ; preds = %4143
  br label %4153

; <label>:4153                                    ; preds = %4152, %4016
  %4154 = phi float [ 0.000000e+00, %4016 ], [ %4144, %4152 ]
  %4155 = phi float [ 0.000000e+00, %4016 ], [ %4145, %4152 ]
  %4156 = phi float [ 0.000000e+00, %4016 ], [ %4146, %4152 ]
  %4157 = phi float [ 0.000000e+00, %4016 ], [ %4147, %4152 ]
  %4158 = phi float [ 0.000000e+00, %4016 ], [ %4148, %4152 ]
  %4159 = phi float [ 0.000000e+00, %4016 ], [ %4149, %4152 ]
  %4160 = fadd fast float %4157, %4154
  %4161 = fmul fast float %4160, 0x3F847AE140000000
  %4162 = fadd fast float %4158, %4155
  %4163 = fmul fast float %4162, 0x3F847AE140000000
  %4164 = fadd fast float %4159, %4156
  %4165 = fmul fast float %4164, 0x3F847AE140000000
  br label %4166

; <label>:4166                                    ; preds = %4153, %3950, %3895, %3892, %3863, %3825
  %4167 = phi float [ %3877, %3863 ], [ -1.310720e+05, %3825 ], [ %4069, %4153 ], [ -1.310720e+05, %3895 ], [ -1.310720e+05, %3950 ], [ -1.310720e+05, %3892 ]
  %4168 = phi float [ %3887, %3863 ], [ 0.000000e+00, %3825 ], [ %4161, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4169 = phi float [ %3889, %3863 ], [ 0.000000e+00, %3825 ], [ %4163, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4170 = phi float [ %3891, %3863 ], [ 0.000000e+00, %3825 ], [ %4165, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4171 = phi i1 [ true, %3863 ], [ false, %3825 ], [ true, %4153 ], [ false, %3895 ], [ false, %3950 ], [ false, %3892 ]
  %4172 = and i32 %196, 3
  %4173 = icmp eq i32 %4172, 1
  %4174 = select i1 %4173, float 1.000000e+00, float 0.000000e+00
  %4175 = fsub fast float %4167, %167
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = select i1 %4171, float %4176, float 1.000000e+00
  %4178 = fmul fast float %4177, %4174
  %4179 = icmp eq i32 %4172, 3
  %4180 = select i1 %4179, float 1.000000e+00, float %4178
  %4181 = call float @dx.op.binary.f32(i32 35, float %3767, float %4180)  ; FMax(a,b)
  %4182 = fcmp fast olt float %4180, 1.000000e+00
  %4183 = fcmp uge float %49, 0.000000e+00
  %4184 = and i1 %4183, %4182
  br i1 %4184, label %4185, label %4195

; <label>:4185                                    ; preds = %4166
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = fadd fast float %4187, %4181
  %4191 = fcmp ule float %48, 0.000000e+00
  %4192 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = select i1 %4191, float %4192, float 1.000000e+00
  %4194 = fmul fast float %4193, %4189
  br label %4195

; <label>:4195                                    ; preds = %4185, %4166
  %4196 = phi float [ %4190, %4185 ], [ %4181, %4166 ]
  %4197 = phi float [ %4188, %4185 ], [ 0.000000e+00, %4166 ]
  %4198 = phi float [ %4194, %4185 ], [ 0.000000e+00, %4166 ]
  %4199 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = fcmp fast une float %4200, 0.000000e+00
  %4203 = fcmp fast une float %4201, 0.000000e+00
  %4204 = or i1 %4202, %4203
  br i1 %4204, label %4205, label %4764

; <label>:4205                                    ; preds = %4195
  br i1 %4202, label %4206, label %4479

; <label>:4206                                    ; preds = %4205
  %4207 = call float @dx.op.unary.f32(i32 23, float %3764)  ; Log(value)
  %4208 = fmul fast float %4207, 4.000000e+00
  %4209 = call float @dx.op.unary.f32(i32 21, float %4208)  ; Exp(value)
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %36
  %4213 = fmul fast float %4211, %37
  %4214 = fmul fast float %4211, %38
  %4215 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4216 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4217 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4218 = call float @dx.op.unary.f32(i32 23, float %4215)  ; Log(value)
  %4219 = call float @dx.op.unary.f32(i32 23, float %4216)  ; Log(value)
  %4220 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4221 = fmul fast float %4218, 4.000000e+00
  %4222 = fmul fast float %4219, 4.000000e+00
  %4223 = fmul fast float %4220, 4.000000e+00
  %4224 = call float @dx.op.unary.f32(i32 21, float %4221)  ; Exp(value)
  %4225 = call float @dx.op.unary.f32(i32 21, float %4222)  ; Exp(value)
  %4226 = call float @dx.op.unary.f32(i32 21, float %4223)  ; Exp(value)
  %4227 = fadd fast float %4225, %4224
  %4228 = fadd fast float %4227, %4226
  %4229 = fdiv fast float 1.000000e+00, %4228
  %4230 = fmul fast float %4229, %4224
  %4231 = fcmp fast ogt float %45, 0.000000e+00
  %4232 = fcmp fast ogt float %46, 0.000000e+00
  %4233 = fcmp fast ogt float %47, 0.000000e+00
  %4234 = fcmp fast olt float %45, 0.000000e+00
  %4235 = fcmp fast olt float %46, 0.000000e+00
  %4236 = fcmp fast olt float %47, 0.000000e+00
  %4237 = zext i1 %4231 to i32
  %4238 = zext i1 %4232 to i32
  %4239 = zext i1 %4233 to i32
  %4240 = zext i1 %4234 to i32
  %4241 = zext i1 %4235 to i32
  %4242 = zext i1 %4236 to i32
  %4243 = sub nsw i32 %4237, %4240
  %4244 = sub nsw i32 %4238, %4241
  %4245 = sub nsw i32 %4239, %4242
  %4246 = call float @dx.op.unary.f32(i32 83, float %4212)  ; DerivCoarseX(value)
  %4247 = call float @dx.op.unary.f32(i32 83, float %4213)  ; DerivCoarseX(value)
  %4248 = call float @dx.op.unary.f32(i32 83, float %4214)  ; DerivCoarseX(value)
  %4249 = call float @dx.op.unary.f32(i32 84, float %4212)  ; DerivCoarseY(value)
  %4250 = call float @dx.op.unary.f32(i32 84, float %4213)  ; DerivCoarseY(value)
  %4251 = call float @dx.op.unary.f32(i32 84, float %4214)  ; DerivCoarseY(value)
  %4252 = fcmp fast ole float %228, %4230
  %4253 = fmul fast float %4229, %4227
  %4254 = fcmp fast ole float %228, %4253
  %4255 = select i1 %4254, float %4214, float %4212
  %4256 = select i1 %4254, float %4212, float %4213
  %4257 = select i1 %4252, float %4213, float %4255
  %4258 = select i1 %4252, float %4214, float %4256
  %4259 = select i1 %4254, float %4248, float %4246
  %4260 = select i1 %4254, float %4246, float %4247
  %4261 = select i1 %4252, float %4247, float %4259
  %4262 = select i1 %4252, float %4248, float %4260
  %4263 = select i1 %4254, float %4251, float %4249
  %4264 = select i1 %4254, float %4249, float %4250
  %4265 = select i1 %4252, float %4250, float %4263
  %4266 = select i1 %4252, float %4251, float %4264
  %4267 = call float @dx.op.unary.f32(i32 27, float %4257)  ; Round_ni(value)
  %4268 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4269 = fptosi float %4267 to i32
  %4270 = fptosi float %4268 to i32
  %4271 = xor i32 %4270, %4269
  %4272 = sitofp i32 %4271 to float
  %4273 = fptosi float %4272 to i32
  %4274 = sitofp i32 %4273 to float
  %4275 = fmul fast float %4274, 0x3FE3C6EF40000000
  %4276 = frem fast float %4267, 2.560000e+02
  %4277 = frem fast float %4268, 2.560000e+02
  %4278 = fptoui float %4276 to i32
  %4279 = fptoui float %4277 to i32
  %4280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4278, i32 %4279, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.f32 %4280, 1
  %4283 = extractvalue %dx.types.ResRet.f32 %4280, 2
  %4284 = fadd fast float %4281, %4275
  %4285 = fadd fast float %4282, %4275
  %4286 = fadd fast float %4283, %4275
  %4287 = call float @dx.op.unary.f32(i32 22, float %4284)  ; Frc(value)
  %4288 = call float @dx.op.unary.f32(i32 22, float %4285)  ; Frc(value)
  %4289 = call float @dx.op.unary.f32(i32 22, float %4286)  ; Frc(value)
  %4290 = fmul fast float %4289, 0x401921FB60000000
  %4291 = call float @dx.op.unary.f32(i32 13, float %4290)  ; Sin(value)
  %4292 = call float @dx.op.unary.f32(i32 12, float %4290)  ; Cos(value)
  %4293 = fsub fast float -0.000000e+00, %4292
  %4294 = fmul fast float %4292, %4257
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4258, float %4294)  ; FMad(a,b,c)
  %4296 = fmul fast float %4291, %4257
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4258, float %4296)  ; FMad(a,b,c)
  %4298 = fadd fast float %4295, %4287
  %4299 = fadd fast float %4297, %4288
  %4300 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4301 = bitcast float %4300 to i32
  %4302 = icmp eq i32 %4301, 0
  br i1 %4302, label %4341, label %4303

; <label>:4303                                    ; preds = %4206
  %4304 = add i32 %4301, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4305, %dx.types.Handle %75, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4311 = fsub fast float 1.000000e+00, %4200
  %4312 = call float @dx.op.binary.f32(i32 35, float %4311, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4313 = bitcast float %4200 to i32
  %4314 = sitofp i32 %4313 to float
  %4315 = fadd fast float %4314, 0xC1CFBF8940000000
  %4316 = fmul fast float %4310, %4315
  %4317 = fadd fast float %4316, 0x41CFBF8940000000
  %4318 = fptosi float %4317 to i32
  %4319 = bitcast i32 %4318 to float
  %4320 = bitcast float %4312 to i32
  %4321 = sitofp i32 %4320 to float
  %4322 = fadd fast float %4321, 0xC1CFBF8940000000
  %4323 = fmul fast float %4322, %4310
  %4324 = fadd fast float %4323, 0x41CFBF8940000000
  %4325 = fptosi float %4324 to i32
  %4326 = bitcast i32 %4325 to float
  %4327 = fmul fast float %4319, %4309
  %4328 = fmul fast float %4326, %4309
  %4329 = fsub fast float %4312, %4327
  %4330 = fadd fast float %4328, %4312
  %4331 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4333 = fsub fast float %4307, %4331
  %4334 = fsub fast float %4332, %4331
  %4335 = bitcast float %4334 to i32
  %4336 = sub nsw i32 2129859010, %4335
  %4337 = bitcast i32 %4336 to float
  %4338 = fmul fast float %4337, %4333
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = fcmp fast olt float %4339, 0x3F70101020000000
  br i1 %4340, label %4479, label %4341

; <label>:4341                                    ; preds = %4303, %4206
  %4342 = phi float [ %4339, %4303 ], [ %4200, %4206 ]
  %4343 = fmul fast float %4342, %4209
  %4344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.i32 %4344, 1
  %4346 = extractvalue %dx.types.CBufRet.i32 %4344, 0
  %4347 = add i32 %4346, 0
  %4348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4348, %dx.types.Handle %74, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.ResRet.f32 %4349, 3
  %4354 = and i32 %4345, 255
  %4355 = uitofp i32 %4354 to float
  %4356 = lshr i32 %4345, 8
  %4357 = and i32 %4356, 255
  %4358 = uitofp i32 %4357 to float
  %4359 = fmul fast float %4353, %4355
  %4360 = fadd fast float %4359, %4358
  %4361 = fmul fast float %4360, 0x3F70101000000000
  %4362 = fadd fast float %4361, 0xBFB99999A0000000
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = fmul fast float %4363, 0x3FF1C71C80000000
  %4365 = call float @dx.op.binary.f32(i32 36, float %4361, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4366 = fsub fast float 1.000000e+00, %4364
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4367, %4350
  %4369 = fmul fast float %4367, %4351
  %4370 = fmul fast float %4367, %4352
  %4371 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4373 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4374 = fmul fast float %4364, %4350
  %4375 = fmul fast float %4364, %4351
  %4376 = fmul fast float %4364, %4352
  %4377 = fadd fast float %4374, %4365
  %4378 = fadd fast float %4375, %4365
  %4379 = fadd fast float %4376, %4365
  %4380 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.i32 %4383, 3
  %4385 = extractvalue %dx.types.CBufRet.i32 %4383, 2
  %4386 = add i32 %4385, 0
  %4387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4387, %dx.types.Handle %74, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4393 = and i32 %4384, 255
  %4394 = uitofp i32 %4393 to float
  %4395 = lshr i32 %4384, 8
  %4396 = and i32 %4395, 255
  %4397 = uitofp i32 %4396 to float
  %4398 = lshr i32 %4384, 16
  %4399 = and i32 %4398, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = fmul fast float %4400, 0x3F70101000000000
  %4402 = fmul fast float %4389, %4394
  %4403 = fadd fast float %4402, %4397
  %4404 = fmul fast float %4403, 0x3F70101000000000
  %4405 = fadd fast float %4390, -5.000000e-01
  %4406 = fadd fast float %4392, -5.000000e-01
  %4407 = fmul fast float %4405, %4401
  %4408 = fmul fast float %4406, %4401
  %4409 = fadd fast float %4407, 5.000000e-01
  %4410 = fadd fast float %4408, 5.000000e-01
  %4411 = fmul fast float %4409, 2.000000e+00
  %4412 = fadd fast float %4411, -1.000000e+00
  %4413 = fmul fast float %4410, 2.000000e+00
  %4414 = fadd fast float %4413, -1.000000e+00
  %4415 = fadd fast float %4412, %4414
  %4416 = fmul fast float %4415, 5.000000e-01
  %4417 = fsub fast float %4412, %4414
  %4418 = fmul fast float %4417, 5.000000e-01
  %4419 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4420 = fsub fast float 1.000000e+00, %4419
  %4421 = call float @dx.op.unary.f32(i32 6, float %4418)  ; FAbs(value)
  %4422 = fsub fast float %4420, %4421
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4418, float %4422, float %4416, float %4418, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = call float @dx.op.unary.f32(i32 25, float %4423)  ; Rsqrt(value)
  %4425 = fmul fast float %4416, %4424
  %4426 = fmul fast float %4418, %4424
  %4427 = select i1 %4254, i32 %4244, i32 %4245
  %4428 = select i1 %4252, i32 %4243, i32 %4427
  %4429 = sitofp i32 %4428 to float
  %4430 = fmul fast float %4422, %4429
  %4431 = fmul fast float %4430, %4424
  %4432 = select i1 %4254, float %4431, float %4426
  %4433 = select i1 %4254, float %4426, float %4431
  %4434 = select i1 %4252, float %4431, float %4425
  %4435 = select i1 %4252, float %4426, float %4432
  %4436 = select i1 %4252, float %4425, float %4433
  %4437 = fsub fast float %4371, %3804
  %4438 = fsub fast float %4372, %3805
  %4439 = fsub fast float %4373, %3806
  %4440 = fmul fast float %4437, %4343
  %4441 = fmul fast float %4438, %4343
  %4442 = fmul fast float %4439, %4343
  %4443 = fadd fast float %4440, %3804
  %4444 = fadd fast float %4441, %3805
  %4445 = fadd fast float %4442, %3806
  %4446 = fsub fast float %4380, %3788
  %4447 = fsub fast float %4381, %3789
  %4448 = fsub fast float %4382, %3790
  %4449 = fmul fast float %4446, %4343
  %4450 = fmul fast float %4447, %4343
  %4451 = fmul fast float %4448, %4343
  %4452 = fadd fast float %4449, %3788
  %4453 = fadd fast float %4450, %3789
  %4454 = fadd fast float %4451, %3790
  %4455 = fadd fast float %4434, %3752
  %4456 = fadd fast float %4435, %3753
  %4457 = fadd fast float %4436, %3754
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4455, float %4456, float %4457, float %4455, float %4456, float %4457)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call float @dx.op.unary.f32(i32 25, float %4458)  ; Rsqrt(value)
  %4460 = fmul fast float %4455, %4459
  %4461 = fmul fast float %4456, %4459
  %4462 = fmul fast float %4457, %4459
  %4463 = fsub fast float %4460, %3752
  %4464 = fsub fast float %4461, %3753
  %4465 = fsub fast float %4462, %3754
  %4466 = fmul fast float %4463, %4343
  %4467 = fmul fast float %4464, %4343
  %4468 = fmul fast float %4465, %4343
  %4469 = fadd fast float %4466, %3752
  %4470 = fadd fast float %4467, %3753
  %4471 = fadd fast float %4468, %3754
  %4472 = call float @dx.op.binary.f32(i32 36, float %3764, float %4391)  ; FMin(a,b)
  %4473 = fsub fast float %4472, %3764
  %4474 = fmul fast float %4473, %4343
  %4475 = fadd fast float %4474, %3764
  %4476 = fsub fast float %4404, %3791
  %4477 = fmul fast float %4476, %4343
  %4478 = fadd fast float %4477, %3791
  br label %4479

; <label>:4479                                    ; preds = %4341, %4303, %4205
  %4480 = phi float [ %4452, %4341 ], [ %3788, %4303 ], [ %3788, %4205 ]
  %4481 = phi float [ %4453, %4341 ], [ %3789, %4303 ], [ %3789, %4205 ]
  %4482 = phi float [ %4454, %4341 ], [ %3790, %4303 ], [ %3790, %4205 ]
  %4483 = phi float [ %4443, %4341 ], [ %3804, %4303 ], [ %3804, %4205 ]
  %4484 = phi float [ %4444, %4341 ], [ %3805, %4303 ], [ %3805, %4205 ]
  %4485 = phi float [ %4445, %4341 ], [ %3806, %4303 ], [ %3806, %4205 ]
  %4486 = phi float [ %4469, %4341 ], [ %3752, %4303 ], [ %3752, %4205 ]
  %4487 = phi float [ %4470, %4341 ], [ %3753, %4303 ], [ %3753, %4205 ]
  %4488 = phi float [ %4471, %4341 ], [ %3754, %4303 ], [ %3754, %4205 ]
  %4489 = phi float [ %4478, %4341 ], [ %3791, %4303 ], [ %3791, %4205 ]
  %4490 = phi float [ %4475, %4341 ], [ %3764, %4303 ], [ %3764, %4205 ]
  br i1 %4203, label %4491, label %4764

; <label>:4491                                    ; preds = %4479
  %4492 = call float @dx.op.unary.f32(i32 23, float %4490)  ; Log(value)
  %4493 = fmul fast float %4492, 4.000000e+00
  %4494 = call float @dx.op.unary.f32(i32 21, float %4493)  ; Exp(value)
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = fmul fast float %4496, %36
  %4498 = fmul fast float %4496, %37
  %4499 = fmul fast float %4496, %38
  %4500 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4501 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4502 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4503 = call float @dx.op.unary.f32(i32 23, float %4500)  ; Log(value)
  %4504 = call float @dx.op.unary.f32(i32 23, float %4501)  ; Log(value)
  %4505 = call float @dx.op.unary.f32(i32 23, float %4502)  ; Log(value)
  %4506 = fmul fast float %4503, 4.000000e+00
  %4507 = fmul fast float %4504, 4.000000e+00
  %4508 = fmul fast float %4505, 4.000000e+00
  %4509 = call float @dx.op.unary.f32(i32 21, float %4506)  ; Exp(value)
  %4510 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4511 = call float @dx.op.unary.f32(i32 21, float %4508)  ; Exp(value)
  %4512 = fadd fast float %4510, %4509
  %4513 = fadd fast float %4512, %4511
  %4514 = fdiv fast float 1.000000e+00, %4513
  %4515 = fmul fast float %4514, %4509
  %4516 = fcmp fast ogt float %45, 0.000000e+00
  %4517 = fcmp fast ogt float %46, 0.000000e+00
  %4518 = fcmp fast ogt float %47, 0.000000e+00
  %4519 = fcmp fast olt float %45, 0.000000e+00
  %4520 = fcmp fast olt float %46, 0.000000e+00
  %4521 = fcmp fast olt float %47, 0.000000e+00
  %4522 = zext i1 %4516 to i32
  %4523 = zext i1 %4517 to i32
  %4524 = zext i1 %4518 to i32
  %4525 = zext i1 %4519 to i32
  %4526 = zext i1 %4520 to i32
  %4527 = zext i1 %4521 to i32
  %4528 = sub nsw i32 %4522, %4525
  %4529 = sub nsw i32 %4523, %4526
  %4530 = sub nsw i32 %4524, %4527
  %4531 = call float @dx.op.unary.f32(i32 83, float %4497)  ; DerivCoarseX(value)
  %4532 = call float @dx.op.unary.f32(i32 83, float %4498)  ; DerivCoarseX(value)
  %4533 = call float @dx.op.unary.f32(i32 83, float %4499)  ; DerivCoarseX(value)
  %4534 = call float @dx.op.unary.f32(i32 84, float %4497)  ; DerivCoarseY(value)
  %4535 = call float @dx.op.unary.f32(i32 84, float %4498)  ; DerivCoarseY(value)
  %4536 = call float @dx.op.unary.f32(i32 84, float %4499)  ; DerivCoarseY(value)
  %4537 = fcmp fast ole float %228, %4515
  %4538 = fmul fast float %4514, %4512
  %4539 = fcmp fast ole float %228, %4538
  %4540 = select i1 %4539, float %4499, float %4497
  %4541 = select i1 %4539, float %4497, float %4498
  %4542 = select i1 %4537, float %4498, float %4540
  %4543 = select i1 %4537, float %4499, float %4541
  %4544 = select i1 %4539, float %4533, float %4531
  %4545 = select i1 %4539, float %4531, float %4532
  %4546 = select i1 %4537, float %4532, float %4544
  %4547 = select i1 %4537, float %4533, float %4545
  %4548 = select i1 %4539, float %4536, float %4534
  %4549 = select i1 %4539, float %4534, float %4535
  %4550 = select i1 %4537, float %4535, float %4548
  %4551 = select i1 %4537, float %4536, float %4549
  %4552 = call float @dx.op.unary.f32(i32 27, float %4542)  ; Round_ni(value)
  %4553 = call float @dx.op.unary.f32(i32 27, float %4543)  ; Round_ni(value)
  %4554 = fptosi float %4552 to i32
  %4555 = fptosi float %4553 to i32
  %4556 = xor i32 %4555, %4554
  %4557 = sitofp i32 %4556 to float
  %4558 = fptosi float %4557 to i32
  %4559 = sitofp i32 %4558 to float
  %4560 = fmul fast float %4559, 0x3FE3C6EF40000000
  %4561 = frem fast float %4552, 2.560000e+02
  %4562 = frem fast float %4553, 2.560000e+02
  %4563 = fptoui float %4561 to i32
  %4564 = fptoui float %4562 to i32
  %4565 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4563, i32 %4564, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = fadd fast float %4566, %4560
  %4570 = fadd fast float %4567, %4560
  %4571 = fadd fast float %4568, %4560
  %4572 = call float @dx.op.unary.f32(i32 22, float %4569)  ; Frc(value)
  %4573 = call float @dx.op.unary.f32(i32 22, float %4570)  ; Frc(value)
  %4574 = call float @dx.op.unary.f32(i32 22, float %4571)  ; Frc(value)
  %4575 = fmul fast float %4574, 0x401921FB60000000
  %4576 = call float @dx.op.unary.f32(i32 13, float %4575)  ; Sin(value)
  %4577 = call float @dx.op.unary.f32(i32 12, float %4575)  ; Cos(value)
  %4578 = fsub fast float -0.000000e+00, %4577
  %4579 = fmul fast float %4577, %4542
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4543, float %4579)  ; FMad(a,b,c)
  %4581 = fmul fast float %4576, %4542
  %4582 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4543, float %4581)  ; FMad(a,b,c)
  %4583 = fadd fast float %4580, %4572
  %4584 = fadd fast float %4582, %4573
  %4585 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4586 = bitcast float %4585 to i32
  %4587 = icmp eq i32 %4586, 0
  br i1 %4587, label %4626, label %4588

; <label>:4588                                    ; preds = %4491
  %4589 = add i32 %4586, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %75, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4596 = fsub fast float 1.000000e+00, %4201
  %4597 = call float @dx.op.binary.f32(i32 35, float %4596, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4598 = bitcast float %4201 to i32
  %4599 = sitofp i32 %4598 to float
  %4600 = fadd fast float %4599, 0xC1CFBF8940000000
  %4601 = fmul fast float %4595, %4600
  %4602 = fadd fast float %4601, 0x41CFBF8940000000
  %4603 = fptosi float %4602 to i32
  %4604 = bitcast i32 %4603 to float
  %4605 = bitcast float %4597 to i32
  %4606 = sitofp i32 %4605 to float
  %4607 = fadd fast float %4606, 0xC1CFBF8940000000
  %4608 = fmul fast float %4607, %4595
  %4609 = fadd fast float %4608, 0x41CFBF8940000000
  %4610 = fptosi float %4609 to i32
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4604, %4594
  %4613 = fmul fast float %4611, %4594
  %4614 = fsub fast float %4597, %4612
  %4615 = fadd fast float %4613, %4597
  %4616 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4618 = fsub fast float %4592, %4616
  %4619 = fsub fast float %4617, %4616
  %4620 = bitcast float %4619 to i32
  %4621 = sub nsw i32 2129859010, %4620
  %4622 = bitcast i32 %4621 to float
  %4623 = fmul fast float %4622, %4618
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fcmp fast olt float %4624, 0x3F70101020000000
  br i1 %4625, label %4764, label %4626

; <label>:4626                                    ; preds = %4588, %4491
  %4627 = phi float [ %4624, %4588 ], [ %4201, %4491 ]
  %4628 = fmul fast float %4627, %4494
  %4629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.i32 %4629, 1
  %4631 = extractvalue %dx.types.CBufRet.i32 %4629, 0
  %4632 = add i32 %4631, 0
  %4633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4633, %dx.types.Handle %74, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = and i32 %4630, 255
  %4640 = uitofp i32 %4639 to float
  %4641 = lshr i32 %4630, 8
  %4642 = and i32 %4641, 255
  %4643 = uitofp i32 %4642 to float
  %4644 = fmul fast float %4638, %4640
  %4645 = fadd fast float %4644, %4643
  %4646 = fmul fast float %4645, 0x3F70101000000000
  %4647 = fadd fast float %4646, 0xBFB99999A0000000
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fmul fast float %4648, 0x3FF1C71C80000000
  %4650 = call float @dx.op.binary.f32(i32 36, float %4646, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4651 = fsub fast float 1.000000e+00, %4649
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %4652, %4635
  %4654 = fmul fast float %4652, %4636
  %4655 = fmul fast float %4652, %4637
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = fmul fast float %4649, %4635
  %4660 = fmul fast float %4649, %4636
  %4661 = fmul fast float %4649, %4637
  %4662 = fadd fast float %4659, %4650
  %4663 = fadd fast float %4660, %4650
  %4664 = fadd fast float %4661, %4650
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.i32 %4668, 3
  %4670 = extractvalue %dx.types.CBufRet.i32 %4668, 2
  %4671 = add i32 %4670, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %74, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4678 = and i32 %4669, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = lshr i32 %4669, 8
  %4681 = and i32 %4680, 255
  %4682 = uitofp i32 %4681 to float
  %4683 = lshr i32 %4669, 16
  %4684 = and i32 %4683, 255
  %4685 = uitofp i32 %4684 to float
  %4686 = fmul fast float %4685, 0x3F70101000000000
  %4687 = fmul fast float %4674, %4679
  %4688 = fadd fast float %4687, %4682
  %4689 = fmul fast float %4688, 0x3F70101000000000
  %4690 = fadd fast float %4675, -5.000000e-01
  %4691 = fadd fast float %4677, -5.000000e-01
  %4692 = fmul fast float %4690, %4686
  %4693 = fmul fast float %4691, %4686
  %4694 = fadd fast float %4692, 5.000000e-01
  %4695 = fadd fast float %4693, 5.000000e-01
  %4696 = fmul fast float %4694, 2.000000e+00
  %4697 = fadd fast float %4696, -1.000000e+00
  %4698 = fmul fast float %4695, 2.000000e+00
  %4699 = fadd fast float %4698, -1.000000e+00
  %4700 = fadd fast float %4697, %4699
  %4701 = fmul fast float %4700, 5.000000e-01
  %4702 = fsub fast float %4697, %4699
  %4703 = fmul fast float %4702, 5.000000e-01
  %4704 = call float @dx.op.unary.f32(i32 6, float %4701)  ; FAbs(value)
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = call float @dx.op.unary.f32(i32 6, float %4703)  ; FAbs(value)
  %4707 = fsub fast float %4705, %4706
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4703, float %4707, float %4701, float %4703, float %4707)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 25, float %4708)  ; Rsqrt(value)
  %4710 = fmul fast float %4701, %4709
  %4711 = fmul fast float %4703, %4709
  %4712 = select i1 %4539, i32 %4529, i32 %4530
  %4713 = select i1 %4537, i32 %4528, i32 %4712
  %4714 = sitofp i32 %4713 to float
  %4715 = fmul fast float %4707, %4714
  %4716 = fmul fast float %4715, %4709
  %4717 = select i1 %4539, float %4716, float %4711
  %4718 = select i1 %4539, float %4711, float %4716
  %4719 = select i1 %4537, float %4716, float %4710
  %4720 = select i1 %4537, float %4711, float %4717
  %4721 = select i1 %4537, float %4710, float %4718
  %4722 = fsub fast float %4656, %4483
  %4723 = fsub fast float %4657, %4484
  %4724 = fsub fast float %4658, %4485
  %4725 = fmul fast float %4722, %4628
  %4726 = fmul fast float %4723, %4628
  %4727 = fmul fast float %4724, %4628
  %4728 = fadd fast float %4725, %4483
  %4729 = fadd fast float %4726, %4484
  %4730 = fadd fast float %4727, %4485
  %4731 = fsub fast float %4665, %4480
  %4732 = fsub fast float %4666, %4481
  %4733 = fsub fast float %4667, %4482
  %4734 = fmul fast float %4731, %4628
  %4735 = fmul fast float %4732, %4628
  %4736 = fmul fast float %4733, %4628
  %4737 = fadd fast float %4734, %4480
  %4738 = fadd fast float %4735, %4481
  %4739 = fadd fast float %4736, %4482
  %4740 = fadd fast float %4719, %4486
  %4741 = fadd fast float %4720, %4487
  %4742 = fadd fast float %4721, %4488
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 25, float %4743)  ; Rsqrt(value)
  %4745 = fmul fast float %4740, %4744
  %4746 = fmul fast float %4741, %4744
  %4747 = fmul fast float %4742, %4744
  %4748 = fsub fast float %4745, %4486
  %4749 = fsub fast float %4746, %4487
  %4750 = fsub fast float %4747, %4488
  %4751 = fmul fast float %4748, %4628
  %4752 = fmul fast float %4749, %4628
  %4753 = fmul fast float %4750, %4628
  %4754 = fadd fast float %4751, %4486
  %4755 = fadd fast float %4752, %4487
  %4756 = fadd fast float %4753, %4488
  %4757 = call float @dx.op.binary.f32(i32 36, float %4490, float %4676)  ; FMin(a,b)
  %4758 = fsub fast float %4757, %4490
  %4759 = fmul fast float %4758, %4628
  %4760 = fadd fast float %4759, %4490
  %4761 = fsub fast float %4689, %4489
  %4762 = fmul fast float %4761, %4628
  %4763 = fadd fast float %4762, %4489
  br label %4764

; <label>:4764                                    ; preds = %4626, %4588, %4479, %4195
  %4765 = phi float [ %4737, %4626 ], [ %4480, %4588 ], [ %4480, %4479 ], [ %3788, %4195 ]
  %4766 = phi float [ %4738, %4626 ], [ %4481, %4588 ], [ %4481, %4479 ], [ %3789, %4195 ]
  %4767 = phi float [ %4739, %4626 ], [ %4482, %4588 ], [ %4482, %4479 ], [ %3790, %4195 ]
  %4768 = phi float [ %4728, %4626 ], [ %4483, %4588 ], [ %4483, %4479 ], [ %3804, %4195 ]
  %4769 = phi float [ %4729, %4626 ], [ %4484, %4588 ], [ %4484, %4479 ], [ %3805, %4195 ]
  %4770 = phi float [ %4730, %4626 ], [ %4485, %4588 ], [ %4485, %4479 ], [ %3806, %4195 ]
  %4771 = phi float [ %4754, %4626 ], [ %4486, %4588 ], [ %4486, %4479 ], [ %3752, %4195 ]
  %4772 = phi float [ %4755, %4626 ], [ %4487, %4588 ], [ %4487, %4479 ], [ %3753, %4195 ]
  %4773 = phi float [ %4756, %4626 ], [ %4488, %4588 ], [ %4488, %4479 ], [ %3754, %4195 ]
  %4774 = phi float [ %4763, %4626 ], [ %4489, %4588 ], [ %4489, %4479 ], [ %3791, %4195 ]
  %4775 = phi float [ %4760, %4626 ], [ %4490, %4588 ], [ %4490, %4479 ], [ %3764, %4195 ]
  %4776 = fcmp fast une float %4199, 0.000000e+00
  %4777 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  br i1 %4776, label %4786, label %4779

; <label>:4779                                    ; preds = %4764
  %4780 = fmul fast float %4778, %165
  %4781 = fmul fast float %4778, %166
  %4782 = fmul fast float %4778, %167
  %4783 = fsub fast float -0.000000e+00, %4780
  %4784 = fsub fast float -0.000000e+00, %4781
  %4785 = fsub fast float -0.000000e+00, %4782
  br label %4953

; <label>:4786                                    ; preds = %4764
  %4787 = fmul fast float %165, %4778
  %4788 = fsub fast float -0.000000e+00, %4787
  %4789 = fmul fast float %166, %4778
  %4790 = fsub fast float -0.000000e+00, %4789
  %4791 = fmul fast float %167, %4778
  %4792 = fsub fast float -0.000000e+00, %4791
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4790, float %4792, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = fmul fast float %4199, 2.500000e+00
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4199, 0x4013FFFFE0000000
  %4797 = fadd fast float %4796, 0xBFFFFFFFE0000000
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fmul fast float %4199, 0x4004000020000000
  %4800 = fadd fast float %4799, 0xBFF8000040000000
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %3770, 1.000000e+01
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fsub fast float 3.000000e+00, %4804
  %4806 = fmul fast float %4803, %4803
  %4807 = fmul fast float %4806, %4805
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = fsub fast float 0x3FE3333340000000, %4774
  %4810 = fmul fast float %4809, 0x400AAAAAA0000000
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4808, %4811
  %4813 = fmul fast float %4768, 0x3FEA2B8620000000
  %4814 = fmul fast float %4769, 0x3FEA2B8620000000
  %4815 = fmul fast float %4770, 0x3FEA2B8620000000
  %4816 = fadd fast float %4813, 0x3FC81DFBA0000000
  %4817 = fmul fast float %4816, %4768
  %4818 = fadd fast float %4817, 0x3F910E6020000000
  %4819 = fadd fast float %4814, 0x3FC81DFBA0000000
  %4820 = fmul fast float %4819, %4769
  %4821 = fadd fast float %4820, 0x3F910E6020000000
  %4822 = fadd fast float %4815, 0x3FC81DFBA0000000
  %4823 = fmul fast float %4822, %4770
  %4824 = fadd fast float %4823, 0x3F910E6020000000
  %4825 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = fsub fast float %4825, %4768
  %4829 = fsub fast float %4826, %4769
  %4830 = fsub fast float %4827, %4770
  %4831 = fmul fast float %4828, %4795
  %4832 = fmul fast float %4831, %4812
  %4833 = fmul fast float %4829, %4795
  %4834 = fmul fast float %4833, %4812
  %4835 = fmul fast float %4830, %4795
  %4836 = fmul fast float %4835, %4812
  %4837 = fadd fast float %4832, %4768
  %4838 = fadd fast float %4834, %4769
  %4839 = fadd fast float %4836, %4770
  %4840 = fmul fast float %4775, %4775
  %4841 = fmul fast float %4840, %4840
  %4842 = fadd fast float %4798, 1.000000e+00
  %4843 = fsub fast float %4842, %4812
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fsub fast float 1.000000e+00, %4841
  %4848 = call float @dx.op.binary.f32(i32 36, float %4844, float %4847)  ; FMin(a,b)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4848, float %4849)  ; FMax(a,b)
  %4851 = fadd fast float %4846, 0xBFE4CCCCC0000000
  %4852 = fmul fast float %4851, 0x4006DB6DA0000000
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, 2.000000e+00
  %4855 = fsub fast float 3.000000e+00, %4854
  %4856 = bitcast float %4765 to i32
  %4857 = ashr i32 %4856, 1
  %4858 = add nsw i32 %4857, 532487669
  %4859 = bitcast i32 %4858 to float
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = bitcast float %4860 to i32
  %4862 = sub nsw i32 2129859010, %4861
  %4863 = bitcast i32 %4862 to float
  %4864 = fmul fast float %4863, 2.000000e+00
  %4865 = bitcast float %4766 to i32
  %4866 = ashr i32 %4865, 1
  %4867 = add nsw i32 %4866, 532487669
  %4868 = bitcast i32 %4867 to float
  %4869 = fsub fast float 1.000000e+00, %4868
  %4870 = bitcast float %4869 to i32
  %4871 = sub nsw i32 2129859010, %4870
  %4872 = bitcast i32 %4871 to float
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = bitcast float %4767 to i32
  %4875 = ashr i32 %4874, 1
  %4876 = add nsw i32 %4875, 532487669
  %4877 = bitcast i32 %4876 to float
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = fmul fast float %4881, 2.000000e+00
  %4883 = fsub fast float 0x4002A9FBE0000000, %4864
  %4884 = fadd fast float %4864, 0x3FD54FDF00000000
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4887, %4883
  %4889 = fmul fast float %4888, %4888
  %4890 = fsub fast float 0x4002A9FBE0000000, %4873
  %4891 = fadd fast float %4873, 0x3FD54FDF00000000
  %4892 = bitcast float %4891 to i32
  %4893 = sub nsw i32 2129859010, %4892
  %4894 = bitcast i32 %4893 to float
  %4895 = fmul fast float %4894, %4890
  %4896 = fmul fast float %4895, %4895
  %4897 = fsub fast float 0x4002A9FBE0000000, %4882
  %4898 = fadd fast float %4882, 0x3FD54FDF00000000
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = fmul fast float %4901, %4897
  %4903 = fmul fast float %4902, %4902
  %4904 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4889)  ; FMax(a,b)
  %4905 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4896)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4903)  ; FMax(a,b)
  %4907 = fsub fast float 1.000000e+00, %4793
  %4908 = fadd fast float %4907, %4808
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fsub fast float 1.000000e+00, %4180
  %4911 = fmul fast float %4850, %4910
  %4912 = fmul fast float %4853, %4853
  %4913 = fmul fast float %4912, %4911
  %4914 = fmul fast float %4913, %4855
  %4915 = fmul fast float %4910, 0xBFE99999A0000000
  %4916 = fmul fast float %4915, %4795
  %4917 = fmul fast float %4916, %4812
  %4918 = fadd fast float %4917, 1.000000e+00
  %4919 = fadd fast float %4774, -1.000000e+00
  %4920 = fmul fast float %4918, %4919
  %4921 = fadd fast float %4920, 1.000000e+00
  %4922 = fsub fast float %4904, %4765
  %4923 = fsub fast float %4905, %4766
  %4924 = fsub fast float %4906, %4767
  %4925 = fmul fast float %4914, %4922
  %4926 = fmul fast float %4914, %4923
  %4927 = fmul fast float %4914, %4924
  %4928 = fadd fast float %4925, %4765
  %4929 = fadd fast float %4926, %4766
  %4930 = fadd fast float %4927, %4767
  %4931 = fsub fast float %85, %4771
  %4932 = fsub fast float %86, %4772
  %4933 = fsub fast float %87, %4773
  %4934 = fmul fast float %4914, %4931
  %4935 = fmul fast float %4914, %4932
  %4936 = fmul fast float %4914, %4933
  %4937 = fadd fast float %4934, %4771
  %4938 = fadd fast float %4935, %4772
  %4939 = fadd fast float %4936, %4773
  %4940 = fmul fast float %4914, %4909
  %4941 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4940, %4942
  %4944 = fadd fast float %4943, %4941
  %4945 = fsub fast float 1.000000e+00, %4775
  %4946 = fmul fast float %4914, %4945
  %4947 = fadd fast float %4946, %4775
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4937, float %4938, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 25, float %4948)  ; Rsqrt(value)
  %4950 = fmul fast float %4937, %4949
  %4951 = fmul fast float %4938, %4949
  %4952 = fmul fast float %4939, %4949
  br label %4953

; <label>:4953                                    ; preds = %4786, %4779
  %4954 = phi float [ %4785, %4779 ], [ %4792, %4786 ]
  %4955 = phi float [ %4784, %4779 ], [ %4790, %4786 ]
  %4956 = phi float [ %4783, %4779 ], [ %4788, %4786 ]
  %4957 = phi float [ %4782, %4779 ], [ %4791, %4786 ]
  %4958 = phi float [ %4781, %4779 ], [ %4789, %4786 ]
  %4959 = phi float [ %4780, %4779 ], [ %4787, %4786 ]
  %4960 = phi float [ %4765, %4779 ], [ %4928, %4786 ]
  %4961 = phi float [ %4766, %4779 ], [ %4929, %4786 ]
  %4962 = phi float [ %4767, %4779 ], [ %4930, %4786 ]
  %4963 = phi float [ %4768, %4779 ], [ %4837, %4786 ]
  %4964 = phi float [ %4769, %4779 ], [ %4838, %4786 ]
  %4965 = phi float [ %4770, %4779 ], [ %4839, %4786 ]
  %4966 = phi float [ %4771, %4779 ], [ %4950, %4786 ]
  %4967 = phi float [ %4772, %4779 ], [ %4951, %4786 ]
  %4968 = phi float [ %4773, %4779 ], [ %4952, %4786 ]
  %4969 = phi float [ %4774, %4779 ], [ %4944, %4786 ]
  %4970 = phi float [ %4775, %4779 ], [ %4947, %4786 ]
  %4971 = select i1 %217, float 0.000000e+00, float %4962
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %4956, float %4955, float %4954)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4958, float %4957, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = fmul fast float %4975, %4966
  %4977 = fmul fast float %4975, %4967
  %4978 = fmul fast float %4975, %4968
  %4979 = fsub fast float %4959, %4976
  %4980 = fsub fast float %4958, %4977
  %4981 = fsub fast float %4957, %4978
  %4982 = call float @dx.op.binary.f32(i32 36, float %4970, float 1.000000e+00)  ; FMin(a,b)
  %4983 = fsub fast float 1.000000e+00, %4970
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = fsub fast float 1.000000e+00, %55
  %4987 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.binary.f32(i32 35, float %4987, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4989 = fdiv fast float %4986, %4988
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fmul fast float %4991, 5.000000e-01
  %4993 = fadd fast float %4992, 5.000000e-01
  %4994 = fmul fast float %4993, %55
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = fmul fast float %4996, %4989
  %4998 = fadd fast float %4994, %4997
  %4999 = fsub fast float 5.000000e-01, %4992
  %5000 = fmul fast float %4999, %4963
  %5001 = fmul fast float %4999, %4964
  %5002 = fmul fast float %4999, %4965
  %5003 = fadd fast float %4998, %5000
  %5004 = fadd fast float %4998, %5001
  %5005 = fadd fast float %4998, %5002
  %5006 = call float @dx.op.dot3.f32(i32 55, float %4979, float %4980, float %4981, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5008 = fmul fast float %5007, 5.000000e-01
  %5009 = fadd fast float %5008, 5.000000e-01
  %5010 = fmul fast float %5009, %55
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4979, float %4980, float %4981, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, %4989
  %5014 = fadd fast float %5010, %5013
  %5015 = fsub fast float 5.000000e-01, %5008
  %5016 = fmul fast float %5015, %4963
  %5017 = fmul fast float %5015, %4964
  %5018 = fmul fast float %5015, %4965
  %5019 = fadd fast float %5014, %5016
  %5020 = fadd fast float %5014, %5017
  %5021 = fadd fast float %5014, %5018
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = call float @dx.op.binary.f32(i32 36, float %4963, float %5023)  ; FMin(a,b)
  %5025 = fsub fast float 1.000000e+00, %4982
  %5026 = fmul fast float %5024, %5025
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = call float @dx.op.binary.f32(i32 36, float %4964, float %5023)  ; FMin(a,b)
  %5032 = fmul fast float %5031, %5025
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = call float @dx.op.binary.f32(i32 36, float %4965, float %5023)  ; FMin(a,b)
  %5038 = fmul fast float %5037, %5025
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %4982, %56
  %5044 = fmul fast float %5043, %5003
  %5045 = fmul fast float %5044, %5030
  %5046 = fmul fast float %4982, %57
  %5047 = fmul fast float %5046, %5004
  %5048 = fmul fast float %5047, %5036
  %5049 = fmul fast float %4982, %58
  %5050 = fmul fast float %5049, %5005
  %5051 = fmul fast float %5050, %5042
  %5052 = call float @dx.op.binary.f32(i32 36, float %4960, float %5023)  ; FMin(a,b)
  %5053 = fmul fast float %5052, %5025
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = bitcast float %5054 to i32
  %5056 = sub nsw i32 2129859010, %5055
  %5057 = bitcast i32 %5056 to float
  %5058 = call float @dx.op.binary.f32(i32 36, float %4961, float %5023)  ; FMin(a,b)
  %5059 = fmul fast float %5058, %5025
  %5060 = fsub fast float 1.000000e+00, %5059
  %5061 = bitcast float %5060 to i32
  %5062 = sub nsw i32 2129859010, %5061
  %5063 = bitcast i32 %5062 to float
  %5064 = call float @dx.op.binary.f32(i32 36, float %4971, float %5023)  ; FMin(a,b)
  %5065 = fmul fast float %5064, %5025
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = bitcast float %5066 to i32
  %5068 = sub nsw i32 2129859010, %5067
  %5069 = bitcast i32 %5068 to float
  %5070 = fmul fast float %5043, %5019
  %5071 = fmul fast float %5070, %5057
  %5072 = fmul fast float %5046, %5020
  %5073 = fmul fast float %5072, %5063
  %5074 = fmul fast float %5049, %5021
  %5075 = fmul fast float %5074, %5069
  %5076 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5048, float %5051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = select i1 %217, float 0.000000e+00, float %5045
  %5078 = select i1 %217, float %5076, float %5048
  %5079 = select i1 %217, float 0.000000e+00, float %5051
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5073, float %5075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = select i1 %217, float 0.000000e+00, float %5071
  %5082 = select i1 %217, float %5080, float %5073
  %5083 = select i1 %217, float 0.000000e+00, float %5075
  %5084 = fmul fast float %4973, 9.843750e-01
  %5085 = fmul fast float %4969, 9.843750e-01
  %5086 = fadd fast float %5084, 7.812500e-03
  %5087 = fadd fast float %5085, 7.812500e-03
  %5088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5086, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5089 = extractvalue %dx.types.ResRet.f32 %5088, 2
  %5090 = extractvalue %dx.types.ResRet.f32 %5088, 3
  %5091 = fmul fast float %5089, %4960
  %5092 = fmul fast float %5089, %4961
  %5093 = fmul fast float %5089, %4971
  %5094 = fadd fast float %5091, %5090
  %5095 = fadd fast float %5092, %5090
  %5096 = fadd fast float %5093, %5090
  %5097 = fcmp fast ogt float %3765, 0.000000e+00
  br i1 %5097, label %5098, label %5124

; <label>:5098                                    ; preds = %4953
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3765, float %4973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.ResRet.f32 %5099, 2
  %5103 = fadd fast float %5100, -5.000000e-01
  %5104 = fadd fast float %5101, -5.000000e-01
  %5105 = fadd fast float %5102, -5.000000e-01
  %5106 = fsub fast float 1.000000e+00, %4960
  %5107 = fsub fast float 1.000000e+00, %4961
  %5108 = fsub fast float 1.000000e+00, %4971
  %5109 = fmul fast float %4960, 4.000000e+00
  %5110 = fmul fast float %5109, %5106
  %5111 = fmul fast float %5110, %5103
  %5112 = fmul fast float %4961, 4.000000e+00
  %5113 = fmul fast float %5112, %5107
  %5114 = fmul fast float %5113, %5104
  %5115 = fmul fast float %4971, 4.000000e+00
  %5116 = fmul fast float %5115, %5108
  %5117 = fmul fast float %5116, %5105
  %5118 = fadd fast float %5111, %5094
  %5119 = fadd fast float %5114, %5095
  %5120 = fadd fast float %5117, %5096
  %5121 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  br label %5124

; <label>:5124                                    ; preds = %5098, %4953
  %5125 = phi float [ %5121, %5098 ], [ %5094, %4953 ]
  %5126 = phi float [ %5122, %5098 ], [ %5095, %4953 ]
  %5127 = phi float [ %5123, %5098 ], [ %5096, %4953 ]
  %5128 = call float @dx.op.binary.f32(i32 35, float %5126, float %5127)  ; FMax(a,b)
  %5129 = call float @dx.op.binary.f32(i32 35, float %5125, float %5128)  ; FMax(a,b)
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = fmul fast float %5130, %5077
  %5132 = fmul fast float %5130, %5078
  %5133 = fmul fast float %5130, %5079
  %5134 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = fcmp fast ogt float %5134, 0x3E7FF19E20000000
  %5136 = fdiv fast float 1.000000e+00, %5134
  %5137 = select i1 %5135, float %5136, float 0.000000e+00
  %5138 = fmul fast float %5137, %4963
  %5139 = fmul fast float %5137, %4964
  %5140 = fmul fast float %5137, %4965
  %5141 = fadd fast float %5138, -1.000000e+00
  %5142 = fadd fast float %5139, -1.000000e+00
  %5143 = fadd fast float %5140, -1.000000e+00
  %5144 = fmul fast float %5141, 5.000000e-01
  %5145 = fmul fast float %5142, 5.000000e-01
  %5146 = fmul fast float %5143, 5.000000e-01
  %5147 = fadd fast float %5144, 1.000000e+00
  %5148 = fadd fast float %5145, 1.000000e+00
  %5149 = fadd fast float %5146, 1.000000e+00
  %5150 = fmul fast float %5125, %5081
  %5151 = fmul fast float %5126, %5082
  %5152 = fmul fast float %5127, %5083
  %5153 = fsub fast float 1.000000e+00, %4973
  %5154 = bitcast float %5153 to i32
  %5155 = sitofp i32 %5154 to float
  %5156 = fmul fast float %5155, 5.000000e+00
  %5157 = fadd fast float %5156, 0xC1EFBF8940000000
  %5158 = fptosi float %5157 to i32
  %5159 = bitcast i32 %5158 to float
  %5160 = fmul fast float %5159, %3766
  %5161 = fmul fast float %5077, %5160
  %5162 = fmul fast float %5161, %5130
  %5163 = fmul fast float %5162, %5147
  %5164 = fmul fast float %5078, %5160
  %5165 = fmul fast float %5164, %5130
  %5166 = fmul fast float %5165, %5148
  %5167 = fmul fast float %5079, %5160
  %5168 = fmul fast float %5167, %5130
  %5169 = fmul fast float %5168, %5149
  %5170 = fmul fast float %5131, %3762
  %5171 = fmul fast float %5132, %3762
  %5172 = fmul fast float %5133, %3762
  %5173 = fadd fast float %5150, %3758
  %5174 = fadd fast float %5173, %5163
  %5175 = fmul fast float %5174, %3762
  %5176 = fadd fast float %5151, %3759
  %5177 = fadd fast float %5176, %5166
  %5178 = fmul fast float %5177, %3762
  %5179 = fadd fast float %5152, %3760
  %5180 = fadd fast float %5179, %5169
  %5181 = fmul fast float %5180, %3762
  %5182 = bitcast i32 %4985 to float
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 3
  %5185 = fcmp fast oeq float %5184, 0.000000e+00
  br i1 %5185, label %5413, label %5186

; <label>:5186                                    ; preds = %5124
  %5187 = extractvalue %dx.types.CBufRet.f32 %5183, 0
  %5188 = extractvalue %dx.types.CBufRet.f32 %5183, 1
  %5189 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = select i1 %217, float %5195, float %5191
  %5199 = select i1 %217, float %5197, float %5192
  %5200 = select i1 %217, float %5196, float %5193
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 1
  %5203 = fcmp fast une float %5202, 0.000000e+00
  br i1 %5203, label %5204, label %5221

; <label>:5204                                    ; preds = %5186
  %5205 = fptoui float %78 to i32
  %5206 = fptoui float %79 to i32
  %5207 = lshr i32 %5205, 4
  %5208 = lshr i32 %5206, 4
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5211 = fptoui float %5210 to i32
  %5212 = add i32 %5211, 15
  %5213 = lshr i32 %5212, 4
  %5214 = mul i32 %5213, %5208
  %5215 = add i32 %5214, %5207
  %5216 = shl i32 %5215, 3
  %5217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.i32 %5217, 0
  %5219 = and i32 %5218, -268435456
  %5220 = icmp eq i32 %5219, -1342177280
  br i1 %5220, label %5231, label %5221

; <label>:5221                                    ; preds = %5204, %5186
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5224 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5225 = fmul fast float %5223, %78
  %5226 = fmul fast float %5224, %79
  %5227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5225, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.ResRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.ResRet.f32 %5227, 2
  br label %5231

; <label>:5231                                    ; preds = %5221, %5204
  %5232 = phi float [ %5228, %5221 ], [ 0.000000e+00, %5204 ]
  %5233 = phi float [ %5229, %5221 ], [ 0.000000e+00, %5204 ]
  %5234 = phi float [ %5230, %5221 ], [ 0.000000e+00, %5204 ]
  %5235 = call float @dx.op.binary.f32(i32 36, float %5233, float %5234)  ; FMin(a,b)
  %5236 = call float @dx.op.binary.f32(i32 36, float %5232, float %5235)  ; FMin(a,b)
  %5237 = fcmp fast ogt float %5236, 0.000000e+00
  br i1 %5237, label %5238, label %5413, !dx.controlflow.hints !76

; <label>:5238                                    ; preds = %5231
  %5239 = fmul fast float %5232, %5198
  %5240 = fmul fast float %5233, %5199
  %5241 = fmul fast float %5234, %5200
  %5242 = fsub fast float %5187, %4959
  %5243 = fsub fast float %5188, %4958
  %5244 = fsub fast float %5189, %4957
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float %5242, float %5243, float %5244)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = call float @dx.op.unary.f32(i32 25, float %5245)  ; Rsqrt(value)
  %5247 = fmul fast float %5246, %5242
  %5248 = fmul fast float %5246, %5243
  %5249 = fmul fast float %5246, %5244
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4955, float %4954, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5253 = fmul fast float %5252, %5252
  %5254 = fmul fast float %5253, %5182
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fmul fast float %5255, %5252
  %5257 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = fmul fast float %5257, %5257
  %5259 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5260 = fsub fast float 1.000000e+00, %4969
  %5261 = call float @dx.op.binary.f32(i32 35, float %5260, float 0x3F847AE140000000)  ; FMax(a,b)
  %5262 = fmul fast float %5261, %5261
  %5263 = fmul fast float %5262, %5262
  %5264 = fsub fast float 1.000000e+00, %5263
  %5265 = fmul fast float %4973, %4973
  %5266 = fmul fast float %5265, %5264
  %5267 = fadd fast float %5266, %5263
  %5268 = bitcast float %5267 to i32
  %5269 = ashr i32 %5268, 1
  %5270 = add nsw i32 %5269, 532487669
  %5271 = bitcast i32 %5270 to float
  %5272 = fadd fast float %5271, %4973
  %5273 = fmul fast float %5263, %5258
  %5274 = fsub fast float 1.000000e+00, %5258
  %5275 = fadd fast float %5274, %5273
  %5276 = fmul fast float %5259, %5259
  %5277 = fmul fast float %5276, %5264
  %5278 = fadd fast float %5277, %5263
  %5279 = bitcast float %5278 to i32
  %5280 = ashr i32 %5279, 1
  %5281 = add nsw i32 %5280, 532487669
  %5282 = bitcast i32 %5281 to float
  %5283 = fadd fast float %5282, %5259
  %5284 = fmul fast float %5275, %5275
  %5285 = fmul fast float %5284, %5272
  %5286 = fmul fast float %5285, %5283
  %5287 = fdiv fast float 0x3FF0A00000000000, %5286
  %5288 = fmul fast float %5287, %5263
  %5289 = call float @dx.op.unary.f32(i32 6, float %5251)  ; FAbs(value)
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = bitcast float %5290 to i32
  %5292 = sitofp i32 %5291 to float
  %5293 = fmul fast float %5292, 5.000000e+00
  %5294 = fadd fast float %5293, 0xC1EFBF8940000000
  %5295 = fptosi float %5294 to i32
  %5296 = bitcast i32 %5295 to float
  %5297 = fsub fast float 1.000000e+00, %4960
  %5298 = fsub fast float 1.000000e+00, %4961
  %5299 = fsub fast float 1.000000e+00, %4971
  %5300 = fmul fast float %5296, %5297
  %5301 = fmul fast float %5296, %5298
  %5302 = fmul fast float %5296, %5299
  %5303 = fadd fast float %5300, %4960
  %5304 = fadd fast float %5301, %4961
  %5305 = fadd fast float %5302, %4971
  br i1 %5097, label %5306, label %5329

; <label>:5306                                    ; preds = %5238
  %5307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3765, float %5289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5311 = fadd fast float %5308, -5.000000e-01
  %5312 = fadd fast float %5309, -5.000000e-01
  %5313 = fadd fast float %5310, -5.000000e-01
  %5314 = fmul fast float %4960, 4.000000e+00
  %5315 = fmul fast float %5314, %5297
  %5316 = fmul fast float %5315, %5311
  %5317 = fmul fast float %4961, 4.000000e+00
  %5318 = fmul fast float %5317, %5298
  %5319 = fmul fast float %5318, %5312
  %5320 = fmul fast float %4971, 4.000000e+00
  %5321 = fmul fast float %5320, %5299
  %5322 = fmul fast float %5321, %5313
  %5323 = fadd fast float %5316, %5303
  %5324 = fadd fast float %5319, %5304
  %5325 = fadd fast float %5322, %5305
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  br label %5329

; <label>:5329                                    ; preds = %5306, %5238
  %5330 = phi float [ %5326, %5306 ], [ %5303, %5238 ]
  %5331 = phi float [ %5327, %5306 ], [ %5304, %5238 ]
  %5332 = phi float [ %5328, %5306 ], [ %5305, %5238 ]
  %5333 = fmul fast float %5250, 9.843750e-01
  %5334 = fadd fast float %5333, 7.812500e-03
  %5335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5334, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 3
  %5338 = fmul fast float %5336, %4960
  %5339 = fmul fast float %5336, %4961
  %5340 = fmul fast float %5336, %4971
  %5341 = fadd fast float %5338, %5337
  %5342 = fadd fast float %5339, %5337
  %5343 = fadd fast float %5340, %5337
  br i1 %5097, label %5344, label %5367

; <label>:5344                                    ; preds = %5329
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3765, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = fadd fast float %5346, -5.000000e-01
  %5350 = fadd fast float %5347, -5.000000e-01
  %5351 = fadd fast float %5348, -5.000000e-01
  %5352 = fmul fast float %4960, 4.000000e+00
  %5353 = fmul fast float %5352, %5297
  %5354 = fmul fast float %5353, %5349
  %5355 = fmul fast float %4961, 4.000000e+00
  %5356 = fmul fast float %5355, %5298
  %5357 = fmul fast float %5356, %5350
  %5358 = fmul fast float %4971, 4.000000e+00
  %5359 = fmul fast float %5358, %5299
  %5360 = fmul fast float %5359, %5351
  %5361 = fadd fast float %5354, %5341
  %5362 = fadd fast float %5357, %5342
  %5363 = fadd fast float %5360, %5343
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  br label %5367

; <label>:5367                                    ; preds = %5344, %5329
  %5368 = phi float [ %5364, %5344 ], [ %5341, %5329 ]
  %5369 = phi float [ %5365, %5344 ], [ %5342, %5329 ]
  %5370 = phi float [ %5366, %5344 ], [ %5343, %5329 ]
  %5371 = call float @dx.op.binary.f32(i32 35, float %5369, float %5370)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float %5368, float %5371)  ; FMax(a,b)
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5330, %5288
  %5375 = fmul fast float %5331, %5288
  %5376 = fmul fast float %5332, %5288
  %5377 = fsub fast float 1.000000e+00, %5251
  %5378 = bitcast float %5377 to i32
  %5379 = sitofp i32 %5378 to float
  %5380 = fmul fast float %5379, 5.000000e+00
  %5381 = fadd fast float %5380, 0xC1EFBF8940000000
  %5382 = fptosi float %5381 to i32
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %3766
  %5385 = fmul fast float %5373, %5384
  %5386 = fmul fast float %5385, %5147
  %5387 = fmul fast float %5385, %5148
  %5388 = fmul fast float %5385, %5149
  %5389 = fadd fast float %5386, %5374
  %5390 = fadd fast float %5387, %5375
  %5391 = fadd fast float %5388, %5376
  %5392 = fmul fast float %5256, %5239
  %5393 = fmul fast float %5392, %5373
  %5394 = fmul fast float %5256, %5240
  %5395 = fmul fast float %5394, %5373
  %5396 = fmul fast float %5256, %5241
  %5397 = fmul fast float %5396, %5373
  %5398 = fmul fast float %5392, %5389
  %5399 = fmul fast float %5394, %5390
  %5400 = fmul fast float %5396, %5391
  %5401 = fadd fast float %5393, %5131
  %5402 = fmul fast float %5401, %3762
  %5403 = fadd fast float %5395, %5132
  %5404 = fmul fast float %5403, %3762
  %5405 = fadd fast float %5397, %5133
  %5406 = fmul fast float %5405, %3762
  %5407 = fadd fast float %5398, %5174
  %5408 = fmul fast float %5407, %3762
  %5409 = fadd fast float %5399, %5177
  %5410 = fmul fast float %5409, %3762
  %5411 = fadd fast float %5400, %5180
  %5412 = fmul fast float %5411, %3762
  br label %5413

; <label>:5413                                    ; preds = %5367, %5231, %5124
  %5414 = phi float [ %5175, %5124 ], [ %5175, %5231 ], [ %5408, %5367 ]
  %5415 = phi float [ %5178, %5124 ], [ %5178, %5231 ], [ %5410, %5367 ]
  %5416 = phi float [ %5181, %5124 ], [ %5181, %5231 ], [ %5412, %5367 ]
  %5417 = phi float [ %5170, %5124 ], [ %5170, %5231 ], [ %5402, %5367 ]
  %5418 = phi float [ %5171, %5124 ], [ %5171, %5231 ], [ %5404, %5367 ]
  %5419 = phi float [ %5172, %5124 ], [ %5172, %5231 ], [ %5406, %5367 ]
  %5420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.i32 %5420, 0
  %5422 = icmp eq i32 %5421, 0
  br i1 %5422, label %5857, label %5423

; <label>:5423                                    ; preds = %5413
  %5424 = fptoui float %78 to i32
  %5425 = fptoui float %79 to i32
  %5426 = lshr i32 %5424, 4
  %5427 = lshr i32 %5425, 4
  %5428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.i32 %5428, 0
  %5430 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5427, i32 %5429, i32 %5426)  ; UMad(a,b,c)
  %5431 = add nsw i32 %5421, -1
  %5432 = call i32 @dx.op.binary.i32(i32 37, i32 %5431, i32 0)  ; IMax(a,b)
  %5433 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5434 = fptoui float %5433 to i32
  %5435 = lshr i32 %5434, 5
  %5436 = call i32 @dx.op.binary.i32(i32 40, i32 %5435, i32 8191)  ; UMin(a,b)
  %5437 = shl i32 %5436, 2
  %5438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.i32 %5438, 0
  %5440 = lshr i32 %5439, 16
  %5441 = and i32 %5439, 65535
  %5442 = lshr i32 %5439, 21
  %5443 = lshr i32 %5441, 5
  %5444 = call i32 @dx.op.binary.i32(i32 40, i32 %5443, i32 %5432)  ; UMin(a,b)
  %5445 = icmp ugt i32 %5442, %5444
  br i1 %5445, label %5857, label %5446

; <label>:5446                                    ; preds = %5423
  br label %5447

; <label>:5447                                    ; preds = %5847, %5446
  %5448 = phi i32 [ %5854, %5847 ], [ %5442, %5446 ]
  %5449 = phi float [ %5848, %5847 ], [ %5414, %5446 ]
  %5450 = phi float [ %5849, %5847 ], [ %5415, %5446 ]
  %5451 = phi float [ %5850, %5847 ], [ %5416, %5446 ]
  %5452 = phi float [ %5851, %5847 ], [ %5417, %5446 ]
  %5453 = phi float [ %5852, %5847 ], [ %5418, %5446 ]
  %5454 = phi float [ %5853, %5847 ], [ %5419, %5446 ]
  %5455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.i32 %5455, 0
  %5457 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5430, i32 %5456, i32 %5448)  ; UMad(a,b,c)
  %5458 = shl i32 %5457, 2
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = shl i32 %5448, 5
  %5462 = sub nsw i32 %5440, %5461
  %5463 = call i32 @dx.op.binary.i32(i32 37, i32 %5462, i32 0)  ; IMax(a,b)
  %5464 = call i32 @dx.op.binary.i32(i32 38, i32 %5463, i32 31)  ; IMin(a,b)
  %5465 = sub nsw i32 1, %5440
  %5466 = add nsw i32 %5465, %5441
  %5467 = call i32 @dx.op.binary.i32(i32 37, i32 %5466, i32 0)  ; IMax(a,b)
  %5468 = call i32 @dx.op.binary.i32(i32 38, i32 %5467, i32 32)  ; IMin(a,b)
  %5469 = and i32 %5468, 31
  %5470 = shl i32 -1, %5469
  %5471 = xor i32 %5470, -1
  %5472 = and i32 %5464, 31
  %5473 = shl i32 %5471, %5472
  %5474 = icmp eq i32 %5468, 32
  %5475 = select i1 %5474, i32 -1, i32 %5473
  %5476 = and i32 %5475, %5460
  %5477 = icmp eq i32 %5476, 0
  br i1 %5477, label %5847, label %5478

; <label>:5478                                    ; preds = %5447
  br label %5479

; <label>:5479                                    ; preds = %5559, %5478
  %5480 = phi i32 [ %5491, %5559 ], [ %5476, %5478 ]
  %5481 = phi float [ %5560, %5559 ], [ %5449, %5478 ]
  %5482 = phi float [ %5561, %5559 ], [ %5450, %5478 ]
  %5483 = phi float [ %5562, %5559 ], [ %5451, %5478 ]
  %5484 = phi float [ %5563, %5559 ], [ %5452, %5478 ]
  %5485 = phi float [ %5564, %5559 ], [ %5453, %5478 ]
  %5486 = phi float [ %5565, %5559 ], [ %5454, %5478 ]
  %5487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5480)  ; FirstbitLo(value)
  %5488 = add i32 %5487, %5461
  %5489 = and i32 %5487, 31
  %5490 = shl i32 1, %5489
  %5491 = xor i32 %5490, %5480
  %5492 = mul i32 %5488, 112
  %5493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5492, i32 undef)  ; BufferLoad(srv,index,wot)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.ResRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.ResRet.f32 %5493, 2
  %5497 = or i32 %5492, 12
  %5498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5497, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = add i32 %5492, 44
  %5501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = add i32 %5492, 48
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.ResRet.f32 %5504, 2
  %5508 = add i32 %5492, 80
  %5509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 1
  %5511 = extractvalue %dx.types.ResRet.f32 %5509, 2
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = select i1 %217, float %5510, float %5494
  %5514 = select i1 %217, float %5512, float %5495
  %5515 = select i1 %217, float %5511, float %5496
  %5516 = fsub fast float %5505, %165
  %5517 = fsub fast float %5506, %166
  %5518 = fsub fast float %5507, %167
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.unary.f32(i32 24, float %5519)  ; Sqrt(value)
  %5521 = fdiv fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5521, %5516
  %5523 = fmul fast float %5521, %5517
  %5524 = fmul fast float %5521, %5518
  %5525 = fadd fast float %5520, %5499
  %5526 = fdiv fast float 1.000000e+00, %5525
  %5527 = fmul float %5502, %5526
  %5528 = fmul float %5527, %5527
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = and i32 %5490, %5476
  %5531 = icmp eq i32 %5530, 0
  br i1 %5531, label %5554, label %5532, !dx.controlflow.hints !77

; <label>:5532                                    ; preds = %5479
  %5533 = lshr i32 %5424, 5
  %5534 = lshr i32 %5425, 5
  %5535 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5533, i32 %5534, i32 %5488, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5536 = extractvalue %dx.types.ResRet.i32 %5535, 0
  %5537 = and i32 %5536, 3
  %5538 = icmp eq i32 %5537, 0
  %5539 = select i1 %5538, float 1.000000e+00, float 0.000000e+00
  %5540 = icmp eq i32 %5537, 3
  br i1 %5540, label %5541, label %5554

; <label>:5541                                    ; preds = %5532
  %5542 = lshr i32 %5536, 10
  %5543 = and i32 %5542, 8160
  %5544 = and i32 %5425, 31
  %5545 = or i32 %5543, %5544
  %5546 = lshr i32 %5536, 1
  %5547 = and i32 %5546, 16352
  %5548 = and i32 %5424, 31
  %5549 = or i32 %5547, %5548
  %5550 = lshr i32 %5536, 23
  %5551 = and i32 %5550, 255
  %5552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5549, i32 %5545, i32 %5551, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 0
  br label %5554

; <label>:5554                                    ; preds = %5541, %5532, %5479
  %5555 = phi float [ %5553, %5541 ], [ %5539, %5532 ], [ 0.000000e+00, %5479 ]
  %5556 = call float @dx.op.binary.f32(i32 36, float %5555, float %5555)  ; FMin(a,b)
  %5557 = call float @dx.op.binary.f32(i32 36, float %5555, float %5556)  ; FMin(a,b)
  %5558 = fcmp fast ogt float %5557, 0.000000e+00
  br i1 %5558, label %5567, label %5559, !dx.controlflow.hints !78

; <label>:5559                                    ; preds = %5803, %5554
  %5560 = phi float [ %5481, %5554 ], [ %5843, %5803 ]
  %5561 = phi float [ %5482, %5554 ], [ %5844, %5803 ]
  %5562 = phi float [ %5483, %5554 ], [ %5845, %5803 ]
  %5563 = phi float [ %5484, %5554 ], [ %5837, %5803 ]
  %5564 = phi float [ %5485, %5554 ], [ %5838, %5803 ]
  %5565 = phi float [ %5486, %5554 ], [ %5839, %5803 ]
  %5566 = icmp eq i32 %5480, %5490
  br i1 %5566, label %5846, label %5479

; <label>:5567                                    ; preds = %5554
  %5568 = fmul fast float %5555, %5513
  %5569 = fmul fast float %5555, %5514
  %5570 = fmul fast float %5555, %5515
  %5571 = fsub fast float %5507, %4167
  %5572 = fcmp fast ogt float %5571, 0.000000e+00
  %5573 = fsub fast float %167, %4167
  %5574 = fcmp fast ogt float %5573, 0.000000e+00
  %5575 = xor i1 %5574, %5572
  %5576 = fsub fast float %4167, %5507
  %5577 = fmul fast float %5576, 2.000000e+00
  %5578 = fadd fast float %5577, %5507
  %5579 = select i1 %5575, float %5507, float %5578
  %5580 = fsub fast float %5579, %167
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5580, float %5516, float %5517, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = call float @dx.op.unary.f32(i32 25, float %5581)  ; Rsqrt(value)
  %5583 = fmul fast float %5582, %5516
  %5584 = fmul fast float %5582, %5517
  %5585 = fmul fast float %5582, %5580
  %5586 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = fdiv fast float 1.000000e+00, %5587
  %5589 = fmul fast float %5588, %5586
  %5590 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5573, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fcmp fast ogt float %5590, 0.000000e+00
  %5592 = fcmp fast olt float %5590, 0.000000e+00
  %5593 = zext i1 %5591 to i32
  %5594 = zext i1 %5592 to i32
  %5595 = sub nsw i32 %5593, %5594
  %5596 = sitofp i32 %5595 to float
  %5597 = fsub fast float %5579, %4167
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5597, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = fcmp fast ogt float %5598, 0.000000e+00
  %5600 = fcmp fast olt float %5598, 0.000000e+00
  %5601 = zext i1 %5599 to i32
  %5602 = zext i1 %5600 to i32
  %5603 = sub nsw i32 %5601, %5602
  %5604 = sitofp i32 %5603 to float
  %5605 = fcmp fast une float %5596, %5604
  br i1 %5605, label %5606, label %5616

; <label>:5606                                    ; preds = %5567
  %5607 = fmul fast float %5589, %5585
  %5608 = fmul fast float %5589, %5584
  %5609 = fmul fast float %5589, %5583
  %5610 = fmul fast float %5609, %5609
  %5611 = fmul fast float %5608, %5608
  %5612 = fadd fast float %5610, %5611
  %5613 = fmul fast float %5607, %5607
  %5614 = fadd fast float %5612, %5613
  %5615 = call float @dx.op.unary.f32(i32 24, float %5614)  ; Sqrt(value)
  br label %5628

; <label>:5616                                    ; preds = %5567
  %5617 = icmp slt i32 %5595, 0
  br i1 %5617, label %5618, label %5628

; <label>:5618                                    ; preds = %5616
  %5619 = fsub fast float %165, %5505
  %5620 = fsub fast float %166, %5506
  %5621 = fsub fast float %167, %5579
  %5622 = fmul fast float %5619, %5619
  %5623 = fmul fast float %5620, %5620
  %5624 = fadd fast float %5622, %5623
  %5625 = fmul fast float %5621, %5621
  %5626 = fadd fast float %5624, %5625
  %5627 = call float @dx.op.unary.f32(i32 24, float %5626)  ; Sqrt(value)
  br label %5628

; <label>:5628                                    ; preds = %5618, %5616, %5606
  %5629 = phi float [ %5615, %5606 ], [ %5627, %5618 ], [ 0.000000e+00, %5616 ]
  %5630 = and i1 %5574, %5572
  %5631 = fsub fast float -0.000000e+00, %5629
  %5632 = select i1 %5630, float -0.000000e+00, float %5631
  %5633 = fmul fast float %4168, 0x3FF7154760000000
  %5634 = fmul fast float %5633, %5632
  %5635 = fmul fast float %4169, 0x3FF7154760000000
  %5636 = fmul fast float %5635, %5632
  %5637 = fmul fast float %4170, 0x3FF7154760000000
  %5638 = fmul fast float %5637, %5632
  %5639 = call float @dx.op.unary.f32(i32 21, float %5634)  ; Exp(value)
  %5640 = call float @dx.op.unary.f32(i32 21, float %5636)  ; Exp(value)
  %5641 = call float @dx.op.unary.f32(i32 21, float %5638)  ; Exp(value)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5645 = fmul fast float %5568, %5642
  %5646 = fmul fast float %5569, %5643
  %5647 = fmul fast float %5570, %5644
  %5648 = fsub fast float %5522, %4959
  %5649 = fsub fast float %5523, %4958
  %5650 = fsub fast float %5524, %4957
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 25, float %5651)  ; Rsqrt(value)
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %5652, %5649
  %5655 = fmul fast float %5652, %5650
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4955, float %4954, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5659 = fmul fast float %5658, %5529
  %5660 = fmul fast float %5658, %5658
  %5661 = fmul fast float %5660, %5182
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fmul fast float %5659, %5662
  %5664 = bitcast float %5519 to i32
  %5665 = ashr i32 %5664, 1
  %5666 = sub nsw i32 1597463007, %5665
  %5667 = bitcast i32 %5666 to float
  %5668 = fmul fast float %5667, %5516
  %5669 = fmul fast float %5667, %5517
  %5670 = fmul fast float %5667, %5518
  %5671 = fsub fast float %5668, %4959
  %5672 = fsub fast float %5669, %4958
  %5673 = fsub fast float %5670, %4957
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.unary.f32(i32 25, float %5674)  ; Rsqrt(value)
  %5676 = fmul fast float %5671, %5675
  %5677 = fmul fast float %5672, %5675
  %5678 = fmul fast float %5673, %5675
  %5679 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = fmul fast float %5679, %5679
  %5681 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5682 = fsub fast float 1.000000e+00, %4969
  %5683 = call float @dx.op.binary.f32(i32 35, float %5682, float 0x3F847AE140000000)  ; FMax(a,b)
  %5684 = fmul fast float %5683, %5683
  %5685 = fmul fast float %5684, %5684
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = fmul fast float %4973, %4973
  %5688 = fmul fast float %5687, %5686
  %5689 = fadd fast float %5688, %5685
  %5690 = bitcast float %5689 to i32
  %5691 = ashr i32 %5690, 1
  %5692 = add nsw i32 %5691, 532487669
  %5693 = bitcast i32 %5692 to float
  %5694 = fadd fast float %5693, %4973
  %5695 = fmul fast float %5685, %5680
  %5696 = fsub fast float 1.000000e+00, %5680
  %5697 = fadd fast float %5696, %5695
  %5698 = fmul fast float %5681, %5681
  %5699 = fmul fast float %5698, %5686
  %5700 = fadd fast float %5699, %5685
  %5701 = bitcast float %5700 to i32
  %5702 = ashr i32 %5701, 1
  %5703 = add nsw i32 %5702, 532487669
  %5704 = bitcast i32 %5703 to float
  %5705 = fadd fast float %5704, %5681
  %5706 = fmul fast float %5697, %5697
  %5707 = fmul fast float %5706, %5694
  %5708 = fmul fast float %5707, %5705
  %5709 = fdiv fast float 1.000000e+00, %5708
  %5710 = bitcast float %5685 to i32
  %5711 = sitofp i32 %5710 to float
  %5712 = fmul fast float %5711, 0x3FE7F73180000000
  %5713 = fadd fast float %5712, 0x41AFE27C40000000
  %5714 = fptosi float %5713 to i32
  %5715 = bitcast i32 %5714 to float
  %5716 = fmul fast float %5502, 0x3FD80E9D60000000
  %5717 = fmul fast float %5716, %5667
  %5718 = fadd fast float %5715, %5717
  %5719 = bitcast float %5718 to i32
  %5720 = sub nsw i32 2129859010, %5719
  %5721 = bitcast i32 %5720 to float
  %5722 = fmul fast float %5685, %5709
  %5723 = fmul fast float %5722, %5715
  %5724 = fmul fast float %5723, %5721
  %5725 = call float @dx.op.unary.f32(i32 6, float %5657)  ; FAbs(value)
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = bitcast float %5726 to i32
  %5728 = sitofp i32 %5727 to float
  %5729 = fmul fast float %5728, 5.000000e+00
  %5730 = fadd fast float %5729, 0xC1EFBF8940000000
  %5731 = fptosi float %5730 to i32
  %5732 = bitcast i32 %5731 to float
  %5733 = fsub fast float 1.000000e+00, %4960
  %5734 = fsub fast float 1.000000e+00, %4961
  %5735 = fsub fast float 1.000000e+00, %4971
  %5736 = fmul fast float %5732, %5733
  %5737 = fmul fast float %5732, %5734
  %5738 = fmul fast float %5732, %5735
  %5739 = fadd fast float %5736, %4960
  %5740 = fadd fast float %5737, %4961
  %5741 = fadd fast float %5738, %4971
  br i1 %5097, label %5742, label %5765

; <label>:5742                                    ; preds = %5628
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3765, float %5725, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = fadd fast float %5744, -5.000000e-01
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fmul fast float %4960, 4.000000e+00
  %5751 = fmul fast float %5750, %5733
  %5752 = fmul fast float %5751, %5747
  %5753 = fmul fast float %4961, 4.000000e+00
  %5754 = fmul fast float %5753, %5734
  %5755 = fmul fast float %5754, %5748
  %5756 = fmul fast float %4971, 4.000000e+00
  %5757 = fmul fast float %5756, %5735
  %5758 = fmul fast float %5757, %5749
  %5759 = fadd fast float %5752, %5739
  %5760 = fadd fast float %5755, %5740
  %5761 = fadd fast float %5758, %5741
  %5762 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  br label %5765

; <label>:5765                                    ; preds = %5742, %5628
  %5766 = phi float [ %5762, %5742 ], [ %5739, %5628 ]
  %5767 = phi float [ %5763, %5742 ], [ %5740, %5628 ]
  %5768 = phi float [ %5764, %5742 ], [ %5741, %5628 ]
  %5769 = fmul fast float %5656, 9.843750e-01
  %5770 = fadd fast float %5769, 7.812500e-03
  %5771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5770, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 2
  %5773 = extractvalue %dx.types.ResRet.f32 %5771, 3
  %5774 = fmul fast float %5772, %4960
  %5775 = fmul fast float %5772, %4961
  %5776 = fmul fast float %5772, %4971
  %5777 = fadd fast float %5774, %5773
  %5778 = fadd fast float %5775, %5773
  %5779 = fadd fast float %5776, %5773
  br i1 %5097, label %5780, label %5803

; <label>:5780                                    ; preds = %5765
  %5781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3765, float %5656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5782 = extractvalue %dx.types.ResRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.ResRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.ResRet.f32 %5781, 2
  %5785 = fadd fast float %5782, -5.000000e-01
  %5786 = fadd fast float %5783, -5.000000e-01
  %5787 = fadd fast float %5784, -5.000000e-01
  %5788 = fmul fast float %4960, 4.000000e+00
  %5789 = fmul fast float %5788, %5733
  %5790 = fmul fast float %5789, %5785
  %5791 = fmul fast float %4961, 4.000000e+00
  %5792 = fmul fast float %5791, %5734
  %5793 = fmul fast float %5792, %5786
  %5794 = fmul fast float %4971, 4.000000e+00
  %5795 = fmul fast float %5794, %5735
  %5796 = fmul fast float %5795, %5787
  %5797 = fadd fast float %5790, %5777
  %5798 = fadd fast float %5793, %5778
  %5799 = fadd fast float %5796, %5779
  %5800 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5801 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5802 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  br label %5803

; <label>:5803                                    ; preds = %5780, %5765
  %5804 = phi float [ %5800, %5780 ], [ %5777, %5765 ]
  %5805 = phi float [ %5801, %5780 ], [ %5778, %5765 ]
  %5806 = phi float [ %5802, %5780 ], [ %5779, %5765 ]
  %5807 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5808 = call float @dx.op.binary.f32(i32 35, float %5804, float %5807)  ; FMax(a,b)
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %5766, %5724
  %5811 = fmul fast float %5767, %5724
  %5812 = fmul fast float %5768, %5724
  %5813 = fsub fast float 1.000000e+00, %5657
  %5814 = bitcast float %5813 to i32
  %5815 = sitofp i32 %5814 to float
  %5816 = fmul fast float %5815, 5.000000e+00
  %5817 = fadd fast float %5816, 0xC1EFBF8940000000
  %5818 = fptosi float %5817 to i32
  %5819 = bitcast i32 %5818 to float
  %5820 = fmul fast float %5819, %3766
  %5821 = fmul fast float %5809, %5820
  %5822 = fmul fast float %5821, %5147
  %5823 = fmul fast float %5821, %5148
  %5824 = fmul fast float %5821, %5149
  %5825 = fadd fast float %5822, %5810
  %5826 = fadd fast float %5823, %5811
  %5827 = fadd fast float %5824, %5812
  %5828 = fmul fast float %5645, %3762
  %5829 = fmul fast float %5828, %5663
  %5830 = fmul fast float %5829, %5809
  %5831 = fmul fast float %5646, %3762
  %5832 = fmul fast float %5831, %5663
  %5833 = fmul fast float %5832, %5809
  %5834 = fmul fast float %5647, %3762
  %5835 = fmul fast float %5834, %5663
  %5836 = fmul fast float %5835, %5809
  %5837 = fadd fast float %5830, %5484
  %5838 = fadd fast float %5833, %5485
  %5839 = fadd fast float %5836, %5486
  %5840 = fmul fast float %5829, %5825
  %5841 = fmul fast float %5832, %5826
  %5842 = fmul fast float %5835, %5827
  %5843 = fadd fast float %5840, %5481
  %5844 = fadd fast float %5841, %5482
  %5845 = fadd fast float %5842, %5483
  br label %5559

; <label>:5846                                    ; preds = %5559
  br label %5847

; <label>:5847                                    ; preds = %5846, %5447
  %5848 = phi float [ %5449, %5447 ], [ %5560, %5846 ]
  %5849 = phi float [ %5450, %5447 ], [ %5561, %5846 ]
  %5850 = phi float [ %5451, %5447 ], [ %5562, %5846 ]
  %5851 = phi float [ %5452, %5447 ], [ %5563, %5846 ]
  %5852 = phi float [ %5453, %5447 ], [ %5564, %5846 ]
  %5853 = phi float [ %5454, %5447 ], [ %5565, %5846 ]
  %5854 = add i32 %5448, 1
  %5855 = icmp ugt i32 %5854, %5444
  br i1 %5855, label %5856, label %5447

; <label>:5856                                    ; preds = %5847
  br label %5857

; <label>:5857                                    ; preds = %5856, %5423, %5413
  %5858 = phi float [ %5414, %5413 ], [ %5414, %5423 ], [ %5848, %5856 ]
  %5859 = phi float [ %5415, %5413 ], [ %5415, %5423 ], [ %5849, %5856 ]
  %5860 = phi float [ %5416, %5413 ], [ %5416, %5423 ], [ %5850, %5856 ]
  %5861 = phi float [ %5417, %5413 ], [ %5417, %5423 ], [ %5851, %5856 ]
  %5862 = phi float [ %5418, %5413 ], [ %5418, %5423 ], [ %5852, %5856 ]
  %5863 = phi float [ %5419, %5413 ], [ %5419, %5423 ], [ %5853, %5856 ]
  %5864 = call float @dx.op.unary.f32(i32 24, float %4963)  ; Sqrt(value)
  %5865 = call float @dx.op.unary.f32(i32 24, float %4964)  ; Sqrt(value)
  %5866 = call float @dx.op.unary.f32(i32 24, float %4965)  ; Sqrt(value)
  %5867 = fmul fast float %5864, %5861
  %5868 = fmul fast float %5865, %5862
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  br i1 %217, label %5871, label %5891

; <label>:5871                                    ; preds = %5857
  %5872 = fadd fast float %5863, %3768
  %5873 = fmul fast float %5872, %3769
  %5874 = fsub fast float 1.000000e+00, %3769
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5878 = fmul fast float %5877, %5875
  %5879 = fadd fast float %5878, %5873
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = fmul fast float %5881, %5153
  %5883 = fsub fast float %5879, %5882
  %5884 = fadd fast float %5868, %5867
  %5885 = fmul fast float %5870, %5884
  %5886 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5887 = fsub fast float %5883, %5886
  %5888 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5889 = fmul fast float %5887, %5888
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  br label %5907

; <label>:5891                                    ; preds = %5857
  %5892 = fmul fast float %5866, %5863
  %5893 = fmul fast float %5870, %5867
  %5894 = fmul fast float %5870, %5868
  %5895 = fmul fast float %5892, %5870
  %5896 = add i32 %33, 356
  %5897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5896, i32 undef)  ; BufferLoad(srv,index,wot)
  %5898 = extractvalue %dx.types.ResRet.i32 %5897, 0
  %5899 = and i32 %5898, 32
  %5900 = icmp eq i32 %5899, 0
  br i1 %5900, label %5907, label %5901

; <label>:5901                                    ; preds = %5891
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = fmul fast float %5903, 0x3FE99999A0000000
  %5905 = fadd fast float %5903, %5893
  %5906 = fadd fast float %5904, %5895
  br label %5907

; <label>:5907                                    ; preds = %5901, %5891, %5871
  %5908 = phi float [ %5885, %5871 ], [ %5905, %5901 ], [ %5893, %5891 ]
  %5909 = phi float [ %5890, %5871 ], [ %5894, %5901 ], [ %5894, %5891 ]
  %5910 = phi float [ 1.000000e+00, %5871 ], [ %5906, %5901 ], [ %5895, %5891 ]
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = fmul fast float %5912, %5859
  %5914 = fmul fast float %5912, %5860
  %5915 = fadd fast float %5859, %5858
  %5916 = select i1 %217, float %5915, float %5858
  %5917 = fmul float %5916, %5912
  %5918 = select i1 %217, float 0.000000e+00, float %5913
  %5919 = select i1 %217, float 0.000000e+00, float %5914
  %5920 = fmul fast float %5908, %5864
  %5921 = fmul fast float %5909, %5865
  %5922 = fmul fast float %5910, %5866
  %5923 = fadd fast float %5917, %5920
  %5924 = fadd fast float %5918, %5921
  %5925 = fadd fast float %5919, %5922
  %5926 = select i1 %217, float %5909, float %5924
  %5927 = select i1 %217, float %5910, float %5925
  %5928 = call float @dx.op.binary.f32(i32 36, float %5923, float 3.225500e+04)  ; FMin(a,b)
  %5929 = call float @dx.op.binary.f32(i32 36, float %5926, float 3.225500e+04)  ; FMin(a,b)
  %5930 = call float @dx.op.binary.f32(i32 36, float %5927, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5930)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!46}
!dx.entryPoints = !{!47}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !75}
!48 = !{!49, !73, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72}
!50 = !{i32 0, !"SV_Position", i8 9, i8 3, !51, i8 4, i32 1, i8 4, i32 0, i8 0, !52}
!51 = !{i32 0}
!52 = !{i32 3, i32 11}
!53 = !{i32 1, !"COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 1, i8 0, !54}
!54 = !{i32 3, i32 14}
!55 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 2, i8 0, !56}
!56 = !{i32 3, i32 3}
!57 = !{i32 3, !"NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 3, i8 0, !58}
!58 = !{i32 3, i32 7}
!59 = !{i32 4, !"TANGENT", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!60 = !{i32 3, i32 15}
!61 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 5, i8 0, !58}
!62 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!63 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 7, i8 0, !58}
!64 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 8, i8 0, !60}
!65 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 9, i8 0, !56}
!66 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 10, i8 0, !60}
!67 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 11, i8 0, !58}
!68 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !51, i8 1, i32 1, i8 1, i32 12, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !51, i8 1, i32 1, i8 2, i32 12, i8 1, !69}
!71 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!72 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

