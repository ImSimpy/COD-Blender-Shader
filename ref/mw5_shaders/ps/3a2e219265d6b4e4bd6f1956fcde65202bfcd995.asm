;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 23397079d3aa01f8e0a5d92d4bea4799
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
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
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
;                                   texture     f32          2d     T11             t0     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t57,space2     1
;                                   texture    byte         r/o     T14     t69,space1     1
;                                   texture     u32          2d     T15     t56,space2     1
;                                   texture     f32          2d     T16     t34,space2     1
;                                   texture     f32          2d     T17      t1,space2     1
;                                   texture     f32          2d     T18      t2,space2     1
;                                   texture     f32          2d     T19      t3,space2     1
;                                   texture     f32          2d     T20      t4,space2     1
;                                   textureunorm_f32     2darray     T21     t80,space2     1
;                                   texture    byte         r/o     T22     t67,space1     1
;                                   texture     f32          2d     T23      t7,space2     1
;                                   texture     f32          2d     T24      t6,space2     1
;                                   texture     f32          2d     T25      t5,space2     1
;                                   texture     f32          2d     T26     t38,space2     1
;                                   texture     f32          1d     T27     t30,space2     1
;                                   texture     f32          3d     T28     t44,space2     1
;                                   texture     f32          3d     T29     t45,space2     1
;                                   texture     f32     2darray     T30     t47,space2     1
;                                   textureunorm_f32     2darray     T31     t85,space2     1
;                                   texture     f32          2d     T32     t83,space2     1
;                                   texture     f32          2d     T33     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = alloca [4 x i32], align 4
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fmul fast float %96, %85
  %98 = fmul fast float %96, %86
  %99 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %76
  %105 = fmul fast float %103, %77
  %106 = fmul fast float %103, %78
  %107 = fmul fast float %77, %74
  %108 = fmul fast float %78, %73
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %78, %72
  %111 = fmul fast float %76, %74
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %76, %73
  %114 = fmul fast float %77, %72
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %75
  %117 = fmul fast float %112, %75
  %118 = fmul fast float %115, %75
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = fcmp fast une float %120, 0.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %97, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %98, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = select i1 %121, float %132, float %136
  %140 = select i1 %121, float %133, float %137
  %141 = select i1 %121, float %134, float %138
  %142 = fmul fast float %139, %129
  %143 = fmul fast float %140, %129
  %144 = fmul fast float %141, %129
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %121, float %146, float %150
  %154 = select i1 %121, float %147, float %151
  %155 = select i1 %121, float %148, float %152
  %156 = fmul fast float %153, %130
  %157 = fmul fast float %154, %130
  %158 = fmul fast float %155, %130
  %159 = fadd fast float %156, %142
  %160 = fadd fast float %157, %143
  %161 = fadd fast float %158, %144
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %121, float %163, float %167
  %171 = select i1 %121, float %164, float %168
  %172 = select i1 %121, float %165, float %169
  %173 = fadd fast float %159, %170
  %174 = fadd fast float %160, %171
  %175 = fadd fast float %161, %172
  %176 = fmul fast float %173, %88
  %177 = fmul fast float %174, %88
  %178 = fmul fast float %175, %88
  %179 = fmul fast float %97, 5.000000e-01
  %180 = fmul fast float %98, 5.000000e-01
  %181 = fptosi float %179 to i32
  %182 = fptosi float %180 to i32
  %183 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %181, i32 %182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 18
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F4C00EBA0000000
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fadd fast float %188, -1.000000e+00
  %190 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %191 = extractvalue %dx.types.Dimensions %190, 0
  %192 = sitofp i32 %191 to float
  %193 = extractvalue %dx.types.Dimensions %190, 1
  %194 = sitofp i32 %193 to float
  %195 = fcmp fast oge float %179, %192
  %196 = fcmp fast oge float %180, %194
  %197 = or i1 %195, %196
  %198 = select i1 %197, float 0x4197782600000000, float %189
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %202 = fmul fast float %200, %97
  %203 = fmul fast float %201, %98
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 114688
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %207, float %202, float 0.000000e+00
  %209 = select i1 %207, float %203, float 0.000000e+00
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, 2.550000e+02
  %213 = fptoui float %212 to i32
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 3
  %217 = and i32 %216, 3
  %218 = icmp ne i32 %217, 0
  %219 = and i32 %216, 4
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %233

; <label>:222                                     ; preds = %0
  %223 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %224 = fmul fast float %223, %98
  %225 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %226 = fmul fast float %225, %97
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %36, float %226, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fsub fast float 1.000000e+00, %228
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = fcmp fast olt float %229, %231
  br label %236

; <label>:233                                     ; preds = %0
  %234 = icmp eq i32 %219, 0
  %235 = and i1 %218, %234
  br label %236

; <label>:236                                     ; preds = %233, %222
  %237 = phi i1 [ %232, %222 ], [ %235, %233 ]
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fmul fast float %239, 0x3FE3C6EF40000000
  %241 = frem fast float %97, 2.560000e+02
  %242 = frem fast float %98, 2.560000e+02
  %243 = fptoui float %241 to i32
  %244 = fptoui float %242 to i32
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = fadd fast float %246, %240
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = add i32 %42, 156
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %251, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %251, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %251, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %42, 216
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %263, 8
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = add i32 %42, 36
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %42, 288
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %42, 172
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = shl i32 %293, 4
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %293, 7
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %42, 232
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %305, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %305, 16
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = add i32 %42, 52
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %42, 304
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %42, 188
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %335, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %335, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %335, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %42, 248
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %347, 8
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %347, 16
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = add i32 %42, 68
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %42, 320
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fmul fast float %370, 0x3F50624DE0000000
  %374 = fmul fast float %372, 0x3F50624DE0000000
  %375 = add i32 %42, 204
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 22
  %385 = shl nuw nsw i32 %384, 5
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %42, 264
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %389, 8
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %389, 16
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = add i32 %42, 84
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = add i32 %42, 336
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = fmul fast float %412, 0x3F50624DE0000000
  %416 = fmul fast float %414, 0x3F50624DE0000000
  %417 = add i32 %42, 348
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 32
  %421 = icmp eq i32 %420, 0
  %422 = and i32 %419, 64
  %423 = icmp eq i32 %422, 0
  %424 = and i32 %419, 128
  %425 = icmp eq i32 %424, 0
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %445, label %430

; <label>:430                                     ; preds = %236
  %431 = add i32 %42, 508
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %435, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = fmul fast float %440, %81
  %442 = fmul fast float %437, %82
  %443 = fmul fast float %438, %83
  %444 = fmul fast float %439, %84
  br label %445

; <label>:445                                     ; preds = %430, %236
  %446 = phi float [ %84, %236 ], [ %444, %430 ]
  %447 = phi float [ %83, %236 ], [ %443, %430 ]
  %448 = phi float [ %82, %236 ], [ %442, %430 ]
  %449 = phi float [ %81, %236 ], [ %441, %430 ]
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %473, label %454

; <label>:454                                     ; preds = %445
  %455 = add i32 %42, 44
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %448, float 1.000000e+00
  %461 = add i32 %42, 60
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 1
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %447, float 1.000000e+00
  %467 = add i32 %42, 76
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 1
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %446, float 1.000000e+00
  br label %473

; <label>:473                                     ; preds = %454, %445
  %474 = phi float [ %446, %445 ], [ %472, %454 ]
  %475 = phi float [ %447, %445 ], [ %466, %454 ]
  %476 = phi float [ %448, %445 ], [ %460, %454 ]
  %477 = lshr i32 %451, 20
  %478 = and i32 %477, 3
  %479 = add nuw nsw i32 %478, 1
  %480 = add i32 %42, 24
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = add i32 %42, 28
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = or i32 %485, %482
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %1133, label %488

; <label>:488                                     ; preds = %473
  %489 = and i32 %482, 262144
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %47, float 1.000000e+00
  %492 = select i1 %490, float %48, float 0.000000e+00
  %493 = select i1 %490, float %49, float 0.000000e+00
  %494 = select i1 %490, float %50, float 1.000000e+00
  %495 = select i1 %490, float %51, float %79
  %496 = select i1 %490, float %52, float %80
  %497 = add i32 %42, 284
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = fmul fast float %501, 0x3F50624DE0000000
  %503 = add i32 %42, 88
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = lshr i32 %505, 24
  %509 = add i32 %42, 292
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = add i32 %42, 32
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 22
  %520 = shl nuw nsw i32 %519, 5
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = shl i32 %518, 4
  %523 = and i32 %522, 32752
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %518, 7
  %526 = and i32 %525, 32752
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 3
  %530 = fmul fast float %529, 1.000000e+03
  %531 = fmul fast float %289, %530
  %532 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %533 = fadd fast float %532, %279
  %534 = fmul fast float %290, %530
  %535 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %536 = fadd fast float %535, %281
  %537 = fmul fast float %502, %530
  %538 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %539 = fmul fast float %538, 0x401921FB60000000
  %540 = fadd fast float %539, %521
  %541 = call float @dx.op.unary.f32(i32 13, float %540)  ; Sin(value)
  %542 = call float @dx.op.unary.f32(i32 12, float %540)  ; Cos(value)
  %543 = fsub fast float -0.000000e+00, %541
  %544 = fadd fast float %495, -5.000000e-01
  %545 = fadd fast float %496, -5.000000e-01
  %546 = fmul fast float %513, %544
  %547 = fmul fast float %515, %545
  %548 = fadd fast float %546, 5.000000e-01
  %549 = fadd fast float %547, 5.000000e-01
  %550 = fmul fast float %524, %548
  %551 = fmul fast float %527, %549
  %552 = fmul fast float %542, %550
  %553 = call float @dx.op.tertiary.f32(i32 46, float %543, float %551, float %552)  ; FMad(a,b,c)
  %554 = fmul fast float %541, %550
  %555 = call float @dx.op.tertiary.f32(i32 46, float %542, float %551, float %554)  ; FMad(a,b,c)
  %556 = fadd fast float %533, %553
  %557 = fadd fast float %536, %555
  %558 = icmp ugt i32 %507, 1
  %559 = icmp ugt i32 %505, 33554431
  %560 = or i1 %559, %558
  br i1 %560, label %561, label %586

; <label>:561                                     ; preds = %488
  %562 = add i32 %42, 228
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = fmul fast float %529, %566
  %568 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %569 = mul nuw nsw i32 %507, %508
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %568, %570
  %572 = call float @dx.op.unary.f32(i32 27, float %571)  ; Round_ni(value)
  %573 = fptoui float %572 to i32
  %574 = urem i32 %573, %507
  %575 = udiv i32 %573, %508
  %576 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %577 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %578 = uitofp i32 %574 to float
  %579 = uitofp i32 %575 to float
  %580 = fadd fast float %576, %578
  %581 = fadd fast float %577, %579
  %582 = uitofp i32 %507 to float
  %583 = uitofp i32 %508 to float
  %584 = fdiv fast float %580, %582
  %585 = fdiv fast float %581, %583
  br label %586

; <label>:586                                     ; preds = %561, %488
  %587 = phi float [ %584, %561 ], [ %556, %488 ]
  %588 = phi float [ %585, %561 ], [ %557, %488 ]
  %589 = and i32 %482, 256
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %637, label %591

; <label>:591                                     ; preds = %586
  %592 = add i32 %42, 440
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %94, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = add i32 %42, 100
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %601, 4
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %601, 7
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fsub fast float 1.000000e+00, %449
  %609 = call float @dx.op.binary.f32(i32 35, float %608, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %610 = bitcast float %449 to i32
  %611 = sitofp i32 %610 to float
  %612 = fadd fast float %611, 0xC1CFBF8940000000
  %613 = fmul fast float %607, %612
  %614 = fadd fast float %613, 0x41CFBF8940000000
  %615 = fptosi float %614 to i32
  %616 = bitcast i32 %615 to float
  %617 = bitcast float %609 to i32
  %618 = sitofp i32 %617 to float
  %619 = fadd fast float %618, 0xC1CFBF8940000000
  %620 = fmul fast float %619, %607
  %621 = fadd fast float %620, 0x41CFBF8940000000
  %622 = fptosi float %621 to i32
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %616, %604
  %625 = fmul fast float %623, %604
  %626 = fsub fast float %609, %624
  %627 = fadd fast float %625, %609
  %628 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %629 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %630 = fsub fast float %598, %628
  %631 = fsub fast float %629, %628
  %632 = bitcast float %631 to i32
  %633 = sub nsw i32 2129859010, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %634, %630
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  br label %637

; <label>:637                                     ; preds = %591, %586
  %638 = phi float [ %636, %591 ], [ %449, %586 ]
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 128
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %659, label %643

; <label>:643                                     ; preds = %637
  %644 = add i32 %42, 424
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %94, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 524288
  %654 = icmp ne i32 %653, 0
  %655 = fcmp fast ogt float %650, 0x3FE0101020000000
  %656 = select i1 %655, float 1.000000e+00, float 0.000000e+00
  %657 = select i1 %654, float %656, float %650
  %658 = fmul fast float %657, %638
  br label %659

; <label>:659                                     ; preds = %643, %637
  %660 = phi float [ %658, %643 ], [ %638, %637 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 16
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %863, label %665

; <label>:665                                     ; preds = %659
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %42, 376
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %93, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = and i32 %667, 255
  %679 = uitofp i32 %678 to float
  %680 = lshr i32 %667, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %677, %679
  %684 = fadd fast float %683, %682
  %685 = fmul fast float %684, 0x3F70101000000000
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 512
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %698, label %690

; <label>:690                                     ; preds = %665
  %691 = add i32 %42, 460
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %94, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  br label %698

; <label>:698                                     ; preds = %690, %665
  %699 = phi float [ %697, %690 ], [ 1.000000e+00, %665 ]
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 33554432
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %810, label %704

; <label>:704                                     ; preds = %698
  %705 = add i32 %42, 224
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 65535
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = lshr i32 %707, 16
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = add i32 %42, 228
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 65535
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = lshr i32 %718, 24
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %720, 0x3F70101020000000
  %722 = and i32 %718, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %723, 0x3F70101020000000
  %725 = lshr i32 %718, 8
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %727, 0x3F70101020000000
  %729 = lshr i32 %718, 16
  %730 = and i32 %729, 255
  %731 = uitofp i32 %730 to float
  %732 = fmul fast float %731, 0x3F70101020000000
  %733 = add i32 %42, 220
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = lshr i32 %735, 24
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = and i32 %735, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = lshr i32 %735, 8
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = lshr i32 %735, 16
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = bitcast float %674 to i32
  %751 = ashr i32 %750, 1
  %752 = sub nsw i32 1597463174, %751
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %674, 5.000000e-01
  %755 = fmul fast float %753, %753
  %756 = fmul fast float %755, %754
  %757 = fsub fast float 1.500000e+00, %756
  %758 = fmul fast float %753, %674
  %759 = fmul fast float %758, %757
  %760 = bitcast float %675 to i32
  %761 = ashr i32 %760, 1
  %762 = sub nsw i32 1597463174, %761
  %763 = bitcast i32 %762 to float
  %764 = fmul fast float %675, 5.000000e-01
  %765 = fmul fast float %763, %763
  %766 = fmul fast float %765, %764
  %767 = fsub fast float 1.500000e+00, %766
  %768 = fmul fast float %763, %675
  %769 = fmul fast float %768, %767
  %770 = bitcast float %676 to i32
  %771 = ashr i32 %770, 1
  %772 = sub nsw i32 1597463174, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %676, 5.000000e-01
  %775 = fmul fast float %773, %773
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.500000e+00, %776
  %778 = fmul fast float %773, %676
  %779 = fmul fast float %778, %777
  %780 = fsub fast float %759, %741
  %781 = fsub fast float %769, %745
  %782 = fsub fast float %779, %749
  %783 = fmul fast float %780, %709
  %784 = fmul fast float %781, %711
  %785 = fmul fast float %782, %716
  %786 = fadd fast float %783, %724
  %787 = fadd fast float %784, %728
  %788 = fadd fast float %785, %732
  %789 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %790 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %791 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %792 = fmul fast float %789, %789
  %793 = fmul fast float %790, %790
  %794 = fmul fast float %791, %791
  %795 = fsub fast float %792, %674
  %796 = fsub fast float %793, %675
  %797 = fsub fast float %794, %676
  %798 = fmul fast float %795, %699
  %799 = fmul fast float %796, %699
  %800 = fmul fast float %797, %699
  %801 = fadd fast float %798, %674
  %802 = fadd fast float %799, %675
  %803 = fadd fast float %800, %676
  %804 = fadd fast float %721, %685
  %805 = fsub fast float %804, %738
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %807 = fsub fast float %806, %685
  %808 = fmul fast float %807, %699
  %809 = fadd fast float %808, %685
  br label %863

; <label>:810                                     ; preds = %698
  %811 = and i32 %701, 134217728
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %847, label %813

; <label>:813                                     ; preds = %810
  %814 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %815 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %816 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %817 = fadd fast float %814, -5.000000e-01
  %818 = fadd fast float %815, -5.000000e-01
  %819 = fadd fast float %816, -5.000000e-01
  %820 = fmul fast float %817, %699
  %821 = fmul fast float %818, %699
  %822 = fmul fast float %819, %699
  %823 = fadd fast float %820, 5.000000e-01
  %824 = fadd fast float %821, 5.000000e-01
  %825 = fadd fast float %822, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 24, float %674)  ; Sqrt(value)
  %827 = call float @dx.op.unary.f32(i32 24, float %675)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %676)  ; Sqrt(value)
  %829 = fmul fast float %823, 2.000000e+00
  %830 = fsub fast float 1.000000e+00, %829
  %831 = fmul fast float %830, %826
  %832 = fadd fast float %831, %829
  %833 = fmul fast float %832, %826
  %834 = fmul fast float %824, 2.000000e+00
  %835 = fsub fast float 1.000000e+00, %834
  %836 = fmul fast float %835, %827
  %837 = fadd fast float %836, %834
  %838 = fmul fast float %837, %827
  %839 = fmul fast float %825, 2.000000e+00
  %840 = fsub fast float 1.000000e+00, %839
  %841 = fmul fast float %840, %828
  %842 = fadd fast float %841, %839
  %843 = fmul fast float %842, %828
  %844 = fmul fast float %833, %833
  %845 = fmul fast float %838, %838
  %846 = fmul fast float %843, %843
  br label %863

; <label>:847                                     ; preds = %810
  %848 = fmul fast float %266, %266
  %849 = fmul fast float %270, %270
  %850 = fmul fast float %274, %274
  %851 = fadd fast float %848, -1.000000e+00
  %852 = fadd fast float %849, -1.000000e+00
  %853 = fadd fast float %850, -1.000000e+00
  %854 = fmul fast float %699, %851
  %855 = fmul fast float %699, %852
  %856 = fmul fast float %699, %853
  %857 = fadd fast float %854, 1.000000e+00
  %858 = fadd fast float %855, 1.000000e+00
  %859 = fadd fast float %856, 1.000000e+00
  %860 = fmul fast float %857, %674
  %861 = fmul fast float %858, %675
  %862 = fmul fast float %859, %676
  br label %863

; <label>:863                                     ; preds = %847, %813, %704, %659
  %864 = phi float [ %809, %704 ], [ %685, %813 ], [ %685, %847 ], [ 0x3FA23C0BE0000000, %659 ]
  %865 = phi float [ %801, %704 ], [ %844, %813 ], [ %860, %847 ], [ 1.000000e+00, %659 ]
  %866 = phi float [ %802, %704 ], [ %845, %813 ], [ %861, %847 ], [ 1.000000e+00, %659 ]
  %867 = phi float [ %803, %704 ], [ %846, %813 ], [ %862, %847 ], [ 1.000000e+00, %659 ]
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 1
  %870 = and i32 %869, 1
  %871 = icmp ne i32 %870, 0
  %872 = add i32 %42, 356
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 32
  %876 = icmp ne i32 %875, 0
  %877 = and i1 %871, %876
  %878 = select i1 %877, float 1.000000e+00, float %865
  %879 = select i1 %877, float 0x3FD3333340000000, float %866
  %880 = select i1 %877, float 0x3FD3333340000000, float %867
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 32
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %957, label %885

; <label>:885                                     ; preds = %863
  %886 = add i32 %42, 92
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %42, 392
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = add i32 %891, 0
  %893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %893, %dx.types.Handle %93, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = extractvalue %dx.types.ResRet.f32 %894, 3
  %899 = and i32 %888, 255
  %900 = uitofp i32 %899 to float
  %901 = lshr i32 %888, 8
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = lshr i32 %888, 16
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F70101000000000
  %908 = fmul fast float %895, %900
  %909 = fadd fast float %908, %903
  %910 = fmul fast float %909, 0x3F70101000000000
  %911 = fadd fast float %896, -5.000000e-01
  %912 = fadd fast float %898, -5.000000e-01
  %913 = fmul fast float %911, %907
  %914 = fmul fast float %912, %907
  %915 = fadd fast float %913, 5.000000e-01
  %916 = fadd fast float %914, 5.000000e-01
  %917 = fmul fast float %915, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = fmul fast float %916, 2.000000e+00
  %920 = fadd fast float %919, -1.000000e+00
  %921 = fadd fast float %918, %920
  %922 = fmul fast float %921, 5.000000e-01
  %923 = fsub fast float %918, %920
  %924 = fmul fast float %923, 5.000000e-01
  %925 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %926 = fsub fast float 1.000000e+00, %925
  %927 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %928 = fsub fast float %926, %927
  %929 = call float @dx.op.dot3.f32(i32 55, float %922, float %924, float %928, float %922, float %924, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %922, %930
  %932 = fmul fast float %924, %930
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 67108864
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %953, label %937

; <label>:937                                     ; preds = %885
  %938 = add i32 %42, 280
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 65535
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %940, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = fsub fast float %910, %948
  %950 = fmul fast float %949, %942
  %951 = fadd fast float %950, %946
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  br label %953

; <label>:953                                     ; preds = %937, %885
  %954 = phi float [ %952, %937 ], [ %910, %885 ]
  %955 = call float @dx.op.dot2.f32(i32 54, float %931, float %932, float %491, float %492)  ; Dot2(ax,ay,bx,by)
  %956 = call float @dx.op.dot2.f32(i32 54, float %931, float %932, float %493, float %494)  ; Dot2(ax,ay,bx,by)
  br label %957

; <label>:957                                     ; preds = %953, %863
  %958 = phi float [ %954, %953 ], [ 0x3FD6666660000000, %863 ]
  %959 = phi float [ %955, %953 ], [ 0.000000e+00, %863 ]
  %960 = phi float [ %956, %953 ], [ 0.000000e+00, %863 ]
  %961 = phi float [ %897, %953 ], [ 1.000000e+00, %863 ]
  %962 = add i32 %42, 160
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 22
  %966 = shl nuw nsw i32 %965, 5
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 64
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1005, label %972

; <label>:972                                     ; preds = %957
  %973 = add i32 %42, 408
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = add i32 %975, 0
  %977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 131072
  %981 = icmp eq i32 %980, 0
  %982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %977, %dx.types.Handle %93, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = extractvalue %dx.types.ResRet.f32 %982, 2
  %986 = fmul fast float %983, %254
  %987 = fmul fast float %984, %257
  %988 = fmul fast float %985, %260
  br i1 %981, label %995, label %989

; <label>:989                                     ; preds = %972
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = fmul fast float %991, %986
  %993 = fmul fast float %991, %987
  %994 = fmul fast float %991, %988
  br label %995

; <label>:995                                     ; preds = %989, %972
  %996 = phi float [ %992, %989 ], [ %986, %972 ]
  %997 = phi float [ %993, %989 ], [ %987, %972 ]
  %998 = phi float [ %994, %989 ], [ %988, %972 ]
  %999 = fmul fast float %996, %967
  %1000 = select i1 %237, float %999, float %996
  %1001 = call float @dx.op.dot3.f32(i32 55, float %1000, float %997, float %998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = select i1 %237, float 0.000000e+00, float %996
  %1003 = select i1 %237, float %1001, float %997
  %1004 = select i1 %237, float 0.000000e+00, float %998
  br label %1005

; <label>:1005                                    ; preds = %995, %957
  %1006 = phi float [ %1002, %995 ], [ 0.000000e+00, %957 ]
  %1007 = phi float [ %1003, %995 ], [ 0.000000e+00, %957 ]
  %1008 = phi float [ %1004, %995 ], [ 0.000000e+00, %957 ]
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 1024
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1043, label %1013

; <label>:1013                                    ; preds = %1005
  %1014 = add i32 %42, 152
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F70101020000000
  %1020 = lshr i32 %1016, 8
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = fmul fast float %1022, 0x3F70101020000000
  %1024 = lshr i32 %1016, 16
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = fmul fast float %1026, 0x3F70101020000000
  %1028 = fmul fast float %1019, %1019
  %1029 = fmul fast float %1023, %1023
  %1030 = fmul fast float %1027, %1027
  %1031 = add i32 %42, 476
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = add i32 %1033, 0
  %1035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1035, %dx.types.Handle %94, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = fmul fast float %1028, %1037
  %1041 = fmul fast float %1029, %1038
  %1042 = fmul fast float %1030, %1039
  br label %1043

; <label>:1043                                    ; preds = %1013, %1005
  %1044 = phi float [ %1040, %1013 ], [ 0.000000e+00, %1005 ]
  %1045 = phi float [ %1041, %1013 ], [ 0.000000e+00, %1005 ]
  %1046 = phi float [ %1042, %1013 ], [ 0.000000e+00, %1005 ]
  %1047 = fcmp fast ogt float %1044, 0.000000e+00
  %1048 = fcmp fast ogt float %1045, 0.000000e+00
  %1049 = fcmp fast ogt float %1046, 0.000000e+00
  %1050 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1051 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1052 = call float @dx.op.unary.f32(i32 23, float %1046)  ; Log(value)
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = lshr i32 %1054, 7
  %1056 = and i32 %1055, 32752
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fmul fast float %1050, 0xBFE62E4300000000
  %1059 = fmul fast float %1058, %1057
  %1060 = fmul fast float %1051, 0xBFE62E4300000000
  %1061 = fmul fast float %1060, %1057
  %1062 = fmul fast float %1052, 0xBFE62E4300000000
  %1063 = fmul fast float %1062, %1057
  %1064 = select i1 %1047, float %1059, float 1.270000e+02
  %1065 = select i1 %1048, float %1061, float 1.270000e+02
  %1066 = select i1 %1049, float %1063, float 1.270000e+02
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 10240
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1115, label %1071

; <label>:1071                                    ; preds = %1043
  %1072 = add i32 %42, 492
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = add i32 %1074, 0
  %1076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1076, %dx.types.Handle %94, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 3
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 1048576
  %1083 = icmp ne i32 %1082, 0
  %1084 = and i32 %1081, 8192
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1101, label %1086

; <label>:1086                                    ; preds = %1071
  %1087 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1088 = select i1 %1083, float %1087, float %1078
  %1089 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1090 = select i1 %1083, float %1089, float %1078
  %1091 = add i32 %42, 96
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = lshr i32 %1093, 16
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F80101020000000
  %1098 = fmul fast float %1097, %1090
  %1099 = fmul fast float %1097, %1078
  %1100 = fmul fast float %1097, %1088
  br label %1101

; <label>:1101                                    ; preds = %1086, %1071
  %1102 = phi float [ %1098, %1086 ], [ 0.000000e+00, %1071 ]
  %1103 = phi float [ %1099, %1086 ], [ 0.000000e+00, %1071 ]
  %1104 = phi float [ %1100, %1086 ], [ 0.000000e+00, %1071 ]
  %1105 = and i32 %1081, 2048
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1115, label %1107

; <label>:1107                                    ; preds = %1101
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = shl i32 %1109, 4
  %1111 = and i32 %1110, 32752
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = fmul fast float %1112, %1079
  %1114 = call float @dx.op.binary.f32(i32 35, float %1113, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1115

; <label>:1115                                    ; preds = %1107, %1101, %1043
  %1116 = phi float [ %1102, %1107 ], [ %1102, %1101 ], [ 0.000000e+00, %1043 ]
  %1117 = phi float [ %1103, %1107 ], [ %1103, %1101 ], [ 0.000000e+00, %1043 ]
  %1118 = phi float [ %1104, %1107 ], [ %1104, %1101 ], [ 0.000000e+00, %1043 ]
  %1119 = phi float [ %1114, %1107 ], [ 0x3F70101020000000, %1101 ], [ 0x3F70101020000000, %1043 ]
  %1120 = add i32 %42, 96
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = lshr i32 %1122, 8
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = call float @dx.op.dot3.f32(i32 55, float %878, float %879, float %880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = fmul fast float %1127, %1128
  %1130 = fadd fast float %1129, %1124
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  br label %1133

; <label>:1133                                    ; preds = %1115, %473
  %1134 = phi float [ 0.000000e+00, %473 ], [ %959, %1115 ]
  %1135 = phi float [ 0.000000e+00, %473 ], [ %960, %1115 ]
  %1136 = phi float [ 0.000000e+00, %473 ], [ %1006, %1115 ]
  %1137 = phi float [ 0.000000e+00, %473 ], [ %1007, %1115 ]
  %1138 = phi float [ 0.000000e+00, %473 ], [ %1008, %1115 ]
  %1139 = phi float [ 0.000000e+00, %473 ], [ %878, %1115 ]
  %1140 = phi float [ 0.000000e+00, %473 ], [ %879, %1115 ]
  %1141 = phi float [ 0.000000e+00, %473 ], [ %880, %1115 ]
  %1142 = phi float [ 0.000000e+00, %473 ], [ %1116, %1115 ]
  %1143 = phi float [ 0.000000e+00, %473 ], [ %1117, %1115 ]
  %1144 = phi float [ 0.000000e+00, %473 ], [ %1118, %1115 ]
  %1145 = phi float [ 0.000000e+00, %473 ], [ %1064, %1115 ]
  %1146 = phi float [ 0.000000e+00, %473 ], [ %1065, %1115 ]
  %1147 = phi float [ 0.000000e+00, %473 ], [ %1066, %1115 ]
  %1148 = phi float [ 0.000000e+00, %473 ], [ %864, %1115 ]
  %1149 = phi float [ 0.000000e+00, %473 ], [ %660, %1115 ]
  %1150 = phi float [ 0.000000e+00, %473 ], [ %958, %1115 ]
  %1151 = phi float [ 0.000000e+00, %473 ], [ %961, %1115 ]
  %1152 = phi float [ 0.000000e+00, %473 ], [ %1119, %1115 ]
  %1153 = phi float [ 0.000000e+00, %473 ], [ %1132, %1115 ]
  br i1 %421, label %2076, label %1154

; <label>:1154                                    ; preds = %1133
  %1155 = icmp ult i32 %479, 2
  %1156 = add i32 %42, 40
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = add i32 %42, 44
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = or i32 %1161, %1158
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %2076, label %1164

; <label>:1164                                    ; preds = %1154
  %1165 = and i32 %1158, 262144
  %1166 = icmp ne i32 %1165, 0
  %1167 = select i1 %1166, float %47, float 1.000000e+00
  %1168 = select i1 %1166, float %48, float 0.000000e+00
  %1169 = select i1 %1166, float %49, float 0.000000e+00
  %1170 = select i1 %1166, float %50, float 1.000000e+00
  %1171 = select i1 %1166, float %51, float %79
  %1172 = select i1 %1166, float %52, float %80
  %1173 = add i32 %42, 300
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 16
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = fmul fast float %1177, 0x3F50624DE0000000
  %1179 = add i32 %42, 104
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = lshr i32 %1181, 16
  %1183 = and i32 %1182, 255
  %1184 = lshr i32 %1181, 24
  %1185 = add i32 %42, 308
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 65535
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = lshr i32 %1187, 16
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = add i32 %42, 48
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 22
  %1196 = shl nuw nsw i32 %1195, 5
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = shl i32 %1194, 4
  %1199 = and i32 %1198, 32752
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1194, 7
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1206 = fmul fast float %1205, 1.000000e+03
  %1207 = fmul fast float %331, %1206
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = fadd fast float %1208, %321
  %1210 = fmul fast float %332, %1206
  %1211 = call float @dx.op.unary.f32(i32 22, float %1210)  ; Frc(value)
  %1212 = fadd fast float %1211, %323
  %1213 = fmul fast float %1178, %1206
  %1214 = call float @dx.op.unary.f32(i32 22, float %1213)  ; Frc(value)
  %1215 = fmul fast float %1214, 0x401921FB60000000
  %1216 = fadd fast float %1215, %1197
  %1217 = call float @dx.op.unary.f32(i32 13, float %1216)  ; Sin(value)
  %1218 = call float @dx.op.unary.f32(i32 12, float %1216)  ; Cos(value)
  %1219 = fsub fast float -0.000000e+00, %1217
  %1220 = fadd fast float %1171, -5.000000e-01
  %1221 = fadd fast float %1172, -5.000000e-01
  %1222 = fmul fast float %1189, %1220
  %1223 = fmul fast float %1191, %1221
  %1224 = fadd fast float %1222, 5.000000e-01
  %1225 = fadd fast float %1223, 5.000000e-01
  %1226 = fmul fast float %1200, %1224
  %1227 = fmul fast float %1203, %1225
  %1228 = fmul fast float %1218, %1226
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1227, float %1228)  ; FMad(a,b,c)
  %1230 = fmul fast float %1217, %1226
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1227, float %1230)  ; FMad(a,b,c)
  %1232 = fadd fast float %1209, %1229
  %1233 = fadd fast float %1212, %1231
  %1234 = icmp ugt i32 %1183, 1
  %1235 = icmp ugt i32 %1181, 33554431
  %1236 = or i1 %1235, %1234
  br i1 %1236, label %1237, label %1262

; <label>:1237                                    ; preds = %1164
  %1238 = add i32 %42, 244
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = lshr i32 %1240, 16
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = fmul fast float %1205, %1242
  %1244 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1245 = mul nuw nsw i32 %1183, %1184
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1244, %1246
  %1248 = call float @dx.op.unary.f32(i32 27, float %1247)  ; Round_ni(value)
  %1249 = fptoui float %1248 to i32
  %1250 = urem i32 %1249, %1183
  %1251 = udiv i32 %1249, %1184
  %1252 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1253 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1254 = uitofp i32 %1250 to float
  %1255 = uitofp i32 %1251 to float
  %1256 = fadd fast float %1252, %1254
  %1257 = fadd fast float %1253, %1255
  %1258 = uitofp i32 %1183 to float
  %1259 = uitofp i32 %1184 to float
  %1260 = fdiv fast float %1256, %1258
  %1261 = fdiv fast float %1257, %1259
  br label %1262

; <label>:1262                                    ; preds = %1237, %1164
  %1263 = phi float [ %1260, %1237 ], [ %1232, %1164 ]
  %1264 = phi float [ %1261, %1237 ], [ %1233, %1164 ]
  %1265 = and i32 %1158, 256
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1313, label %1267

; <label>:1267                                    ; preds = %1262
  %1268 = add i32 %42, 444
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %94, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = add i32 %42, 116
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = shl i32 %1277, 4
  %1279 = and i32 %1278, 32752
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1277, 7
  %1282 = and i32 %1281, 32752
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = fsub fast float 1.000000e+00, %476
  %1285 = call float @dx.op.binary.f32(i32 35, float %1284, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1286 = bitcast float %476 to i32
  %1287 = sitofp i32 %1286 to float
  %1288 = fadd fast float %1287, 0xC1CFBF8940000000
  %1289 = fmul fast float %1283, %1288
  %1290 = fadd fast float %1289, 0x41CFBF8940000000
  %1291 = fptosi float %1290 to i32
  %1292 = bitcast i32 %1291 to float
  %1293 = bitcast float %1285 to i32
  %1294 = sitofp i32 %1293 to float
  %1295 = fadd fast float %1294, 0xC1CFBF8940000000
  %1296 = fmul fast float %1295, %1283
  %1297 = fadd fast float %1296, 0x41CFBF8940000000
  %1298 = fptosi float %1297 to i32
  %1299 = bitcast i32 %1298 to float
  %1300 = fmul fast float %1292, %1280
  %1301 = fmul fast float %1299, %1280
  %1302 = fsub fast float %1285, %1300
  %1303 = fadd fast float %1301, %1285
  %1304 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1306 = fsub fast float %1274, %1304
  %1307 = fsub fast float %1305, %1304
  %1308 = bitcast float %1307 to i32
  %1309 = sub nsw i32 2129859010, %1308
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1310, %1306
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  br label %1313

; <label>:1313                                    ; preds = %1267, %1262
  %1314 = phi float [ %1312, %1267 ], [ %476, %1262 ]
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = and i32 %1316, 128
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1335, label %1319

; <label>:1319                                    ; preds = %1313
  %1320 = add i32 %42, 428
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = add i32 %1322, 0
  %1324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1324, %dx.types.Handle %94, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 524288
  %1330 = icmp ne i32 %1329, 0
  %1331 = fcmp fast ogt float %1326, 0x3FE0101020000000
  %1332 = select i1 %1331, float 1.000000e+00, float 0.000000e+00
  %1333 = select i1 %1330, float %1332, float %1326
  %1334 = fmul fast float %1333, %1314
  br label %1335

; <label>:1335                                    ; preds = %1319, %1313
  %1336 = phi float [ %1334, %1319 ], [ %1314, %1313 ]
  %1337 = fcmp fast ult float %1336, 0x3F70101020000000
  br i1 %1337, label %2076, label %1338

; <label>:1338                                    ; preds = %1335
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = and i32 %1340, 16
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1541, label %1343

; <label>:1343                                    ; preds = %1338
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = add i32 %42, 380
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = add i32 %1348, 0
  %1350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1350, %dx.types.Handle %93, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = extractvalue %dx.types.ResRet.f32 %1351, 3
  %1356 = and i32 %1345, 255
  %1357 = uitofp i32 %1356 to float
  %1358 = lshr i32 %1345, 8
  %1359 = and i32 %1358, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1355, %1357
  %1362 = fadd fast float %1361, %1360
  %1363 = fmul fast float %1362, 0x3F70101000000000
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 512
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1376, label %1368

; <label>:1368                                    ; preds = %1343
  %1369 = add i32 %42, 464
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = add i32 %1371, 0
  %1373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1373, %dx.types.Handle %94, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  br label %1376

; <label>:1376                                    ; preds = %1368, %1343
  %1377 = phi float [ %1375, %1368 ], [ 1.000000e+00, %1343 ]
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 33554432
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1488, label %1382

; <label>:1382                                    ; preds = %1376
  %1383 = add i32 %42, 240
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = lshr i32 %1385, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = add i32 %42, 244
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 65535
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = lshr i32 %1396, 24
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = and i32 %1396, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = lshr i32 %1396, 8
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, 0x3F70101020000000
  %1407 = lshr i32 %1396, 16
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = add i32 %42, 236
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = lshr i32 %1413, 24
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101020000000
  %1417 = and i32 %1413, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = lshr i32 %1413, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1422, 0x3F70101020000000
  %1424 = lshr i32 %1413, 16
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = bitcast float %1352 to i32
  %1429 = ashr i32 %1428, 1
  %1430 = sub nsw i32 1597463174, %1429
  %1431 = bitcast i32 %1430 to float
  %1432 = fmul fast float %1352, 5.000000e-01
  %1433 = fmul fast float %1431, %1431
  %1434 = fmul fast float %1433, %1432
  %1435 = fsub fast float 1.500000e+00, %1434
  %1436 = fmul fast float %1431, %1352
  %1437 = fmul fast float %1436, %1435
  %1438 = bitcast float %1353 to i32
  %1439 = ashr i32 %1438, 1
  %1440 = sub nsw i32 1597463174, %1439
  %1441 = bitcast i32 %1440 to float
  %1442 = fmul fast float %1353, 5.000000e-01
  %1443 = fmul fast float %1441, %1441
  %1444 = fmul fast float %1443, %1442
  %1445 = fsub fast float 1.500000e+00, %1444
  %1446 = fmul fast float %1441, %1353
  %1447 = fmul fast float %1446, %1445
  %1448 = bitcast float %1354 to i32
  %1449 = ashr i32 %1448, 1
  %1450 = sub nsw i32 1597463174, %1449
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1354, 5.000000e-01
  %1453 = fmul fast float %1451, %1451
  %1454 = fmul fast float %1453, %1452
  %1455 = fsub fast float 1.500000e+00, %1454
  %1456 = fmul fast float %1451, %1354
  %1457 = fmul fast float %1456, %1455
  %1458 = fsub fast float %1437, %1419
  %1459 = fsub fast float %1447, %1423
  %1460 = fsub fast float %1457, %1427
  %1461 = fmul fast float %1458, %1387
  %1462 = fmul fast float %1459, %1389
  %1463 = fmul fast float %1460, %1394
  %1464 = fadd fast float %1461, %1402
  %1465 = fadd fast float %1462, %1406
  %1466 = fadd fast float %1463, %1410
  %1467 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1468 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1470 = fmul fast float %1467, %1467
  %1471 = fmul fast float %1468, %1468
  %1472 = fmul fast float %1469, %1469
  %1473 = fsub fast float %1470, %1352
  %1474 = fsub fast float %1471, %1353
  %1475 = fsub fast float %1472, %1354
  %1476 = fmul fast float %1473, %1377
  %1477 = fmul fast float %1474, %1377
  %1478 = fmul fast float %1475, %1377
  %1479 = fadd fast float %1476, %1352
  %1480 = fadd fast float %1477, %1353
  %1481 = fadd fast float %1478, %1354
  %1482 = fadd fast float %1399, %1363
  %1483 = fsub fast float %1482, %1416
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fsub fast float %1484, %1363
  %1486 = fmul fast float %1485, %1377
  %1487 = fadd fast float %1486, %1363
  br label %1541

; <label>:1488                                    ; preds = %1376
  %1489 = and i32 %1379, 134217728
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1525, label %1491

; <label>:1491                                    ; preds = %1488
  %1492 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1493 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1494 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %1495 = fadd fast float %1492, -5.000000e-01
  %1496 = fadd fast float %1493, -5.000000e-01
  %1497 = fadd fast float %1494, -5.000000e-01
  %1498 = fmul fast float %1495, %1377
  %1499 = fmul fast float %1496, %1377
  %1500 = fmul fast float %1497, %1377
  %1501 = fadd fast float %1498, 5.000000e-01
  %1502 = fadd fast float %1499, 5.000000e-01
  %1503 = fadd fast float %1500, 5.000000e-01
  %1504 = call float @dx.op.unary.f32(i32 24, float %1352)  ; Sqrt(value)
  %1505 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  %1506 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1507 = fmul fast float %1501, 2.000000e+00
  %1508 = fsub fast float 1.000000e+00, %1507
  %1509 = fmul fast float %1508, %1504
  %1510 = fadd fast float %1509, %1507
  %1511 = fmul fast float %1510, %1504
  %1512 = fmul fast float %1502, 2.000000e+00
  %1513 = fsub fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1513, %1505
  %1515 = fadd fast float %1514, %1512
  %1516 = fmul fast float %1515, %1505
  %1517 = fmul fast float %1503, 2.000000e+00
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1518, %1506
  %1520 = fadd fast float %1519, %1517
  %1521 = fmul fast float %1520, %1506
  %1522 = fmul fast float %1511, %1511
  %1523 = fmul fast float %1516, %1516
  %1524 = fmul fast float %1521, %1521
  br label %1541

; <label>:1525                                    ; preds = %1488
  %1526 = fmul fast float %308, %308
  %1527 = fmul fast float %312, %312
  %1528 = fmul fast float %316, %316
  %1529 = fadd fast float %1526, -1.000000e+00
  %1530 = fadd fast float %1527, -1.000000e+00
  %1531 = fadd fast float %1528, -1.000000e+00
  %1532 = fmul fast float %1377, %1529
  %1533 = fmul fast float %1377, %1530
  %1534 = fmul fast float %1377, %1531
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fadd fast float %1533, 1.000000e+00
  %1537 = fadd fast float %1534, 1.000000e+00
  %1538 = fmul fast float %1535, %1352
  %1539 = fmul fast float %1536, %1353
  %1540 = fmul fast float %1537, %1354
  br label %1541

; <label>:1541                                    ; preds = %1525, %1491, %1382, %1338
  %1542 = phi float [ %1487, %1382 ], [ %1363, %1491 ], [ %1363, %1525 ], [ 0x3FA23C0BE0000000, %1338 ]
  %1543 = phi float [ %1479, %1382 ], [ %1522, %1491 ], [ %1538, %1525 ], [ 1.000000e+00, %1338 ]
  %1544 = phi float [ %1480, %1382 ], [ %1523, %1491 ], [ %1539, %1525 ], [ 1.000000e+00, %1338 ]
  %1545 = phi float [ %1481, %1382 ], [ %1524, %1491 ], [ %1540, %1525 ], [ 1.000000e+00, %1338 ]
  %1546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.i32 %1546, 1
  %1548 = and i32 %1547, 1
  %1549 = icmp ne i32 %1548, 0
  %1550 = add i32 %42, 356
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 32
  %1554 = icmp ne i32 %1553, 0
  %1555 = and i1 %1549, %1554
  %1556 = select i1 %1555, float 1.000000e+00, float %1543
  %1557 = select i1 %1555, float 0x3FD3333340000000, float %1544
  %1558 = select i1 %1555, float 0x3FD3333340000000, float %1545
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 32
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1635, label %1563

; <label>:1563                                    ; preds = %1541
  %1564 = add i32 %42, 108
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %42, 396
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %1569, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1571, %dx.types.Handle %93, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = and i32 %1566, 255
  %1578 = uitofp i32 %1577 to float
  %1579 = lshr i32 %1566, 8
  %1580 = and i32 %1579, 255
  %1581 = uitofp i32 %1580 to float
  %1582 = lshr i32 %1566, 16
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101000000000
  %1586 = fmul fast float %1573, %1578
  %1587 = fadd fast float %1586, %1581
  %1588 = fmul fast float %1587, 0x3F70101000000000
  %1589 = fadd fast float %1574, -5.000000e-01
  %1590 = fadd fast float %1576, -5.000000e-01
  %1591 = fmul fast float %1589, %1585
  %1592 = fmul fast float %1590, %1585
  %1593 = fadd fast float %1591, 5.000000e-01
  %1594 = fadd fast float %1592, 5.000000e-01
  %1595 = fmul fast float %1593, 2.000000e+00
  %1596 = fadd fast float %1595, -1.000000e+00
  %1597 = fmul fast float %1594, 2.000000e+00
  %1598 = fadd fast float %1597, -1.000000e+00
  %1599 = fadd fast float %1596, %1598
  %1600 = fmul fast float %1599, 5.000000e-01
  %1601 = fsub fast float %1596, %1598
  %1602 = fmul fast float %1601, 5.000000e-01
  %1603 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = call float @dx.op.unary.f32(i32 6, float %1602)  ; FAbs(value)
  %1606 = fsub fast float %1604, %1605
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1602, float %1606, float %1600, float %1602, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = call float @dx.op.unary.f32(i32 25, float %1607)  ; Rsqrt(value)
  %1609 = fmul fast float %1600, %1608
  %1610 = fmul fast float %1602, %1608
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 67108864
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1631, label %1615

; <label>:1615                                    ; preds = %1563
  %1616 = add i32 %42, 296
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 65535
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 65535
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = lshr i32 %1618, 16
  %1626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1625)  ; LegacyF16ToF32(value)
  %1627 = fsub fast float %1588, %1626
  %1628 = fmul fast float %1627, %1620
  %1629 = fadd fast float %1628, %1624
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  br label %1631

; <label>:1631                                    ; preds = %1615, %1563
  %1632 = phi float [ %1630, %1615 ], [ %1588, %1563 ]
  %1633 = call float @dx.op.dot2.f32(i32 54, float %1609, float %1610, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  %1634 = call float @dx.op.dot2.f32(i32 54, float %1609, float %1610, float %1169, float %1170)  ; Dot2(ax,ay,bx,by)
  br label %1635

; <label>:1635                                    ; preds = %1631, %1541
  %1636 = phi float [ %1632, %1631 ], [ 0x3FD6666660000000, %1541 ]
  %1637 = phi float [ %1633, %1631 ], [ 0.000000e+00, %1541 ]
  %1638 = phi float [ %1634, %1631 ], [ 0.000000e+00, %1541 ]
  %1639 = phi float [ %1575, %1631 ], [ 1.000000e+00, %1541 ]
  %1640 = add i32 %42, 176
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = lshr i32 %1642, 22
  %1644 = shl nuw nsw i32 %1643, 5
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 64
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1683, label %1650

; <label>:1650                                    ; preds = %1635
  %1651 = add i32 %42, 412
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = add i32 %1653, 0
  %1655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 131072
  %1659 = icmp eq i32 %1658, 0
  %1660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1655, %dx.types.Handle %93, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1661 = extractvalue %dx.types.ResRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.ResRet.f32 %1660, 1
  %1663 = extractvalue %dx.types.ResRet.f32 %1660, 2
  %1664 = fmul fast float %1661, %296
  %1665 = fmul fast float %1662, %299
  %1666 = fmul fast float %1663, %302
  br i1 %1659, label %1673, label %1667

; <label>:1667                                    ; preds = %1650
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = fmul fast float %1669, %1664
  %1671 = fmul fast float %1669, %1665
  %1672 = fmul fast float %1669, %1666
  br label %1673

; <label>:1673                                    ; preds = %1667, %1650
  %1674 = phi float [ %1670, %1667 ], [ %1664, %1650 ]
  %1675 = phi float [ %1671, %1667 ], [ %1665, %1650 ]
  %1676 = phi float [ %1672, %1667 ], [ %1666, %1650 ]
  %1677 = fmul fast float %1674, %1645
  %1678 = select i1 %237, float %1677, float %1674
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1678, float %1675, float %1676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = select i1 %237, float 0.000000e+00, float %1674
  %1681 = select i1 %237, float %1679, float %1675
  %1682 = select i1 %237, float 0.000000e+00, float %1676
  br label %1683

; <label>:1683                                    ; preds = %1673, %1635
  %1684 = phi float [ %1680, %1673 ], [ 0.000000e+00, %1635 ]
  %1685 = phi float [ %1681, %1673 ], [ 0.000000e+00, %1635 ]
  %1686 = phi float [ %1682, %1673 ], [ 0.000000e+00, %1635 ]
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 1024
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1721, label %1691

; <label>:1691                                    ; preds = %1683
  %1692 = add i32 %42, 168
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = fmul fast float %1696, 0x3F70101020000000
  %1698 = lshr i32 %1694, 8
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = fmul fast float %1700, 0x3F70101020000000
  %1702 = lshr i32 %1694, 16
  %1703 = and i32 %1702, 255
  %1704 = uitofp i32 %1703 to float
  %1705 = fmul fast float %1704, 0x3F70101020000000
  %1706 = fmul fast float %1697, %1697
  %1707 = fmul fast float %1701, %1701
  %1708 = fmul fast float %1705, %1705
  %1709 = add i32 %42, 480
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = add i32 %1711, 0
  %1713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1713, %dx.types.Handle %94, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1715 = extractvalue %dx.types.ResRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.ResRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.ResRet.f32 %1714, 2
  %1718 = fmul fast float %1706, %1715
  %1719 = fmul fast float %1707, %1716
  %1720 = fmul fast float %1708, %1717
  br label %1721

; <label>:1721                                    ; preds = %1691, %1683
  %1722 = phi float [ %1718, %1691 ], [ 0.000000e+00, %1683 ]
  %1723 = phi float [ %1719, %1691 ], [ 0.000000e+00, %1683 ]
  %1724 = phi float [ %1720, %1691 ], [ 0.000000e+00, %1683 ]
  %1725 = fcmp fast ogt float %1722, 0.000000e+00
  %1726 = fcmp fast ogt float %1723, 0.000000e+00
  %1727 = fcmp fast ogt float %1724, 0.000000e+00
  %1728 = call float @dx.op.unary.f32(i32 23, float %1722)  ; Log(value)
  %1729 = call float @dx.op.unary.f32(i32 23, float %1723)  ; Log(value)
  %1730 = call float @dx.op.unary.f32(i32 23, float %1724)  ; Log(value)
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = lshr i32 %1732, 7
  %1734 = and i32 %1733, 32752
  %1735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1734)  ; LegacyF16ToF32(value)
  %1736 = fmul fast float %1728, 0xBFE62E4300000000
  %1737 = fmul fast float %1736, %1735
  %1738 = fmul fast float %1729, 0xBFE62E4300000000
  %1739 = fmul fast float %1738, %1735
  %1740 = fmul fast float %1730, 0xBFE62E4300000000
  %1741 = fmul fast float %1740, %1735
  %1742 = select i1 %1725, float %1737, float 1.270000e+02
  %1743 = select i1 %1726, float %1739, float 1.270000e+02
  %1744 = select i1 %1727, float %1741, float 1.270000e+02
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 10240
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1793, label %1749

; <label>:1749                                    ; preds = %1721
  %1750 = add i32 %42, 496
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %94, float %1263, float %1264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 3
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 1048576
  %1761 = icmp ne i32 %1760, 0
  %1762 = and i32 %1759, 8192
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1779, label %1764

; <label>:1764                                    ; preds = %1749
  %1765 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1766 = select i1 %1761, float %1765, float %1756
  %1767 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1768 = select i1 %1761, float %1767, float %1756
  %1769 = add i32 %42, 112
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = lshr i32 %1771, 16
  %1773 = and i32 %1772, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = fmul fast float %1774, 0x3F80101020000000
  %1776 = fmul fast float %1775, %1768
  %1777 = fmul fast float %1775, %1756
  %1778 = fmul fast float %1775, %1766
  br label %1779

; <label>:1779                                    ; preds = %1764, %1749
  %1780 = phi float [ %1776, %1764 ], [ 0.000000e+00, %1749 ]
  %1781 = phi float [ %1777, %1764 ], [ 0.000000e+00, %1749 ]
  %1782 = phi float [ %1778, %1764 ], [ 0.000000e+00, %1749 ]
  %1783 = and i32 %1759, 2048
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1793, label %1785

; <label>:1785                                    ; preds = %1779
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = shl i32 %1787, 4
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fmul fast float %1790, %1757
  %1792 = call float @dx.op.binary.f32(i32 35, float %1791, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1793

; <label>:1793                                    ; preds = %1785, %1779, %1721
  %1794 = phi float [ %1780, %1785 ], [ %1780, %1779 ], [ 0.000000e+00, %1721 ]
  %1795 = phi float [ %1781, %1785 ], [ %1781, %1779 ], [ 0.000000e+00, %1721 ]
  %1796 = phi float [ %1782, %1785 ], [ %1782, %1779 ], [ 0.000000e+00, %1721 ]
  %1797 = phi float [ %1792, %1785 ], [ 0x3F70101020000000, %1779 ], [ 0x3F70101020000000, %1721 ]
  %1798 = add i32 %42, 112
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = lshr i32 %1800, 8
  %1804 = and i32 %1803, 255
  %1805 = uitofp i32 %1804 to float
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1556, float %1557, float %1558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = fmul fast float %1805, %1806
  %1808 = fadd fast float %1807, %1802
  %1809 = fmul fast float %1808, 0x3F70101020000000
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  br i1 %1155, label %1811, label %1846

; <label>:1811                                    ; preds = %1793
  %1812 = fmul fast float %1797, 2.000000e+00
  %1813 = fcmp fast olt float %1742, 1.270000e+02
  %1814 = fcmp fast olt float %1743, 1.270000e+02
  %1815 = fcmp fast olt float %1744, 1.270000e+02
  %1816 = fmul fast float %1742, 0xBFF7154760000000
  %1817 = fmul fast float %1816, %1812
  %1818 = fmul fast float %1743, 0xBFF7154760000000
  %1819 = fmul fast float %1818, %1812
  %1820 = fmul fast float %1744, 0xBFF7154760000000
  %1821 = fmul fast float %1820, %1812
  %1822 = call float @dx.op.unary.f32(i32 21, float %1817)  ; Exp(value)
  %1823 = call float @dx.op.unary.f32(i32 21, float %1819)  ; Exp(value)
  %1824 = call float @dx.op.unary.f32(i32 21, float %1821)  ; Exp(value)
  %1825 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1826 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1827 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1828 = fadd fast float %1825, -1.000000e+00
  %1829 = select i1 %1813, float %1828, float -1.000000e+00
  %1830 = fadd fast float %1826, -1.000000e+00
  %1831 = select i1 %1814, float %1830, float -1.000000e+00
  %1832 = fadd fast float %1827, -1.000000e+00
  %1833 = select i1 %1815, float %1832, float -1.000000e+00
  %1834 = fmul fast float %1829, %1336
  %1835 = fmul fast float %1831, %1336
  %1836 = fmul fast float %1833, %1336
  %1837 = fadd fast float %1834, 1.000000e+00
  %1838 = fadd fast float %1835, 1.000000e+00
  %1839 = fadd fast float %1836, 1.000000e+00
  %1840 = fmul fast float %1837, %1139
  %1841 = fmul fast float %1838, %1140
  %1842 = fmul fast float %1839, %1141
  %1843 = fmul fast float %1837, %1136
  %1844 = fmul fast float %1838, %1137
  %1845 = fmul fast float %1839, %1138
  br label %1846

; <label>:1846                                    ; preds = %1811, %1793
  %1847 = phi float [ %1843, %1811 ], [ %1136, %1793 ]
  %1848 = phi float [ %1844, %1811 ], [ %1137, %1793 ]
  %1849 = phi float [ %1845, %1811 ], [ %1138, %1793 ]
  %1850 = phi float [ %1840, %1811 ], [ %1139, %1793 ]
  %1851 = phi float [ %1841, %1811 ], [ %1140, %1793 ]
  %1852 = phi float [ %1842, %1811 ], [ %1141, %1793 ]
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 3
  %1856 = icmp eq i32 %1855, 3
  br i1 %1856, label %1935, label %1857

; <label>:1857                                    ; preds = %1846
  %1858 = and i32 %1854, 16
  %1859 = icmp ne i32 %1858, 0
  %1860 = select i1 %1859, float %1336, float 0.000000e+00
  %1861 = icmp eq i32 %1855, 0
  br i1 %1861, label %1862, label %1890

; <label>:1862                                    ; preds = %1857
  %1863 = and i32 %1854, 64
  %1864 = icmp ne i32 %1863, 0
  %1865 = select i1 %1864, float %1336, float 0.000000e+00
  %1866 = fsub fast float %1556, %1850
  %1867 = fsub fast float %1557, %1851
  %1868 = fsub fast float %1558, %1852
  %1869 = fmul fast float %1860, %1866
  %1870 = fmul fast float %1860, %1867
  %1871 = fmul fast float %1860, %1868
  %1872 = fadd fast float %1869, %1850
  %1873 = fadd fast float %1870, %1851
  %1874 = fadd fast float %1871, %1852
  %1875 = fsub fast float %1542, %1148
  %1876 = fmul fast float %1860, %1875
  %1877 = fadd fast float %1876, %1148
  %1878 = fsub fast float %1684, %1847
  %1879 = fsub fast float %1685, %1848
  %1880 = fsub fast float %1686, %1849
  %1881 = fmul fast float %1865, %1878
  %1882 = fmul fast float %1865, %1879
  %1883 = fmul fast float %1865, %1880
  %1884 = fadd fast float %1881, %1847
  %1885 = fadd fast float %1882, %1848
  %1886 = fadd fast float %1883, %1849
  %1887 = fsub fast float %1810, %1153
  %1888 = fmul fast float %1860, %1887
  %1889 = fadd fast float %1888, %1153
  br label %1935

; <label>:1890                                    ; preds = %1857
  %1891 = icmp eq i32 %1855, 1
  br i1 %1891, label %1892, label %1905

; <label>:1892                                    ; preds = %1890
  %1893 = fadd fast float %1556, -1.000000e+00
  %1894 = fadd fast float %1557, -1.000000e+00
  %1895 = fadd fast float %1558, -1.000000e+00
  %1896 = fmul fast float %1860, %1893
  %1897 = fmul fast float %1860, %1894
  %1898 = fmul fast float %1860, %1895
  %1899 = fadd fast float %1896, 1.000000e+00
  %1900 = fadd fast float %1897, 1.000000e+00
  %1901 = fadd fast float %1898, 1.000000e+00
  %1902 = fmul fast float %1899, %1850
  %1903 = fmul fast float %1900, %1851
  %1904 = fmul fast float %1901, %1852
  br label %1935

; <label>:1905                                    ; preds = %1890
  %1906 = icmp eq i32 %1855, 2
  br i1 %1906, label %1907, label %1935

; <label>:1907                                    ; preds = %1905
  %1908 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1909 = call float @dx.op.unary.f32(i32 24, float %1557)  ; Sqrt(value)
  %1910 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1911 = fadd fast float %1908, -5.000000e-01
  %1912 = fadd fast float %1909, -5.000000e-01
  %1913 = fadd fast float %1910, -5.000000e-01
  %1914 = fmul fast float %1911, %1860
  %1915 = fmul fast float %1912, %1860
  %1916 = fmul fast float %1913, %1860
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = fadd fast float %1915, 5.000000e-01
  %1919 = fadd fast float %1916, 5.000000e-01
  %1920 = fmul fast float %1917, 2.000000e+00
  %1921 = fsub fast float 1.000000e+00, %1920
  %1922 = fmul fast float %1921, %1850
  %1923 = fadd fast float %1922, %1920
  %1924 = fmul fast float %1923, %1850
  %1925 = fmul fast float %1918, 2.000000e+00
  %1926 = fsub fast float 1.000000e+00, %1925
  %1927 = fmul fast float %1926, %1851
  %1928 = fadd fast float %1927, %1925
  %1929 = fmul fast float %1928, %1851
  %1930 = fmul fast float %1919, 2.000000e+00
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = fmul fast float %1931, %1852
  %1933 = fadd fast float %1932, %1930
  %1934 = fmul fast float %1933, %1852
  br label %1935

; <label>:1935                                    ; preds = %1907, %1905, %1892, %1862, %1846
  %1936 = phi float [ %1847, %1846 ], [ %1847, %1907 ], [ %1847, %1905 ], [ %1847, %1892 ], [ %1884, %1862 ]
  %1937 = phi float [ %1848, %1846 ], [ %1848, %1907 ], [ %1848, %1905 ], [ %1848, %1892 ], [ %1885, %1862 ]
  %1938 = phi float [ %1849, %1846 ], [ %1849, %1907 ], [ %1849, %1905 ], [ %1849, %1892 ], [ %1886, %1862 ]
  %1939 = phi float [ %1850, %1846 ], [ %1924, %1907 ], [ %1850, %1905 ], [ %1902, %1892 ], [ %1872, %1862 ]
  %1940 = phi float [ %1851, %1846 ], [ %1929, %1907 ], [ %1851, %1905 ], [ %1903, %1892 ], [ %1873, %1862 ]
  %1941 = phi float [ %1852, %1846 ], [ %1934, %1907 ], [ %1852, %1905 ], [ %1904, %1892 ], [ %1874, %1862 ]
  %1942 = phi float [ %1148, %1846 ], [ %1148, %1907 ], [ %1148, %1905 ], [ %1148, %1892 ], [ %1877, %1862 ]
  %1943 = phi float [ %1153, %1846 ], [ %1153, %1907 ], [ %1153, %1905 ], [ %1153, %1892 ], [ %1889, %1862 ]
  %1944 = and i32 %1854, 12
  %1945 = icmp eq i32 %1944, 12
  br i1 %1945, label %2076, label %1946

; <label>:1946                                    ; preds = %1935
  %1947 = and i32 %1854, 2097184
  %1948 = icmp eq i32 %1947, 2097184
  %1949 = select i1 %1948, float %1336, float 0.000000e+00
  %1950 = and i32 %1854, 4194336
  %1951 = icmp eq i32 %1950, 4194336
  %1952 = select i1 %1951, float %1336, float 0.000000e+00
  %1953 = and i32 %1854, 8388640
  %1954 = icmp eq i32 %1953, 8388640
  %1955 = select i1 %1954, float %1336, float 0.000000e+00
  %1956 = and i32 %1854, 1024
  %1957 = icmp ne i32 %1956, 0
  %1958 = select i1 %1957, float %1336, float 0.000000e+00
  %1959 = and i32 %1854, 2048
  %1960 = icmp ne i32 %1959, 0
  %1961 = select i1 %1960, float %1336, float 0.000000e+00
  %1962 = and i32 %1854, 8192
  %1963 = icmp ne i32 %1962, 0
  %1964 = select i1 %1963, float %1336, float 0.000000e+00
  %1965 = icmp eq i32 %1944, 0
  br i1 %1965, label %1966, label %2000

; <label>:1966                                    ; preds = %1946
  %1967 = fsub fast float %1637, %1134
  %1968 = fsub fast float %1638, %1135
  %1969 = fmul fast float %1949, %1967
  %1970 = fmul fast float %1949, %1968
  %1971 = fadd fast float %1969, %1134
  %1972 = fadd fast float %1970, %1135
  %1973 = fsub fast float %1639, %1151
  %1974 = fmul fast float %1952, %1973
  %1975 = fadd fast float %1974, %1151
  %1976 = fsub fast float %1636, %1150
  %1977 = fmul fast float %1955, %1976
  %1978 = fadd fast float %1977, %1150
  %1979 = fsub fast float %1742, %1145
  %1980 = fsub fast float %1743, %1146
  %1981 = fsub fast float %1744, %1147
  %1982 = fmul fast float %1958, %1979
  %1983 = fmul fast float %1958, %1980
  %1984 = fmul fast float %1958, %1981
  %1985 = fadd fast float %1982, %1145
  %1986 = fadd fast float %1983, %1146
  %1987 = fadd fast float %1984, %1147
  %1988 = fsub fast float %1797, %1152
  %1989 = fmul fast float %1961, %1988
  %1990 = fadd fast float %1989, %1152
  %1991 = fsub fast float %1794, %1142
  %1992 = fsub fast float %1795, %1143
  %1993 = fsub fast float %1796, %1144
  %1994 = fmul fast float %1964, %1991
  %1995 = fmul fast float %1964, %1992
  %1996 = fmul fast float %1964, %1993
  %1997 = fadd fast float %1994, %1142
  %1998 = fadd fast float %1995, %1143
  %1999 = fadd fast float %1996, %1144
  br label %2076

; <label>:2000                                    ; preds = %1946
  %2001 = icmp eq i32 %1944, 4
  br i1 %2001, label %2002, label %2048

; <label>:2002                                    ; preds = %2000
  %2003 = fmul fast float %1949, %1637
  %2004 = fmul fast float %1949, %1638
  %2005 = fadd fast float %2003, %1134
  %2006 = fadd fast float %2004, %1135
  %2007 = call float @dx.op.binary.f32(i32 36, float %1151, float %1639)  ; FMin(a,b)
  %2008 = fsub fast float %2007, %1151
  %2009 = fmul fast float %2008, %1952
  %2010 = fadd fast float %2009, %1151
  %2011 = fadd fast float %1636, %1150
  %2012 = fmul fast float %2011, 0x3FF337FAE0000000
  %2013 = fmul fast float %1150, %1150
  %2014 = fmul fast float %1636, %1636
  %2015 = fadd fast float %2014, %2013
  %2016 = fmul fast float %2015, 0x3FE5152B00000000
  %2017 = fmul fast float %1150, 0xBFCC1F85E0000000
  %2018 = fmul fast float %2017, %1636
  %2019 = fadd fast float %2018, 0xBFE1363700000000
  %2020 = fadd fast float %2019, %2012
  %2021 = fsub fast float %2020, %2016
  %2022 = fmul fast float %2011, 0x3FBA6F0D00000000
  %2023 = fmul fast float %2015, 0x3FD0432880000000
  %2024 = fmul fast float %1150, 0xBFEF110800000000
  %2025 = fmul fast float %2024, %1636
  %2026 = fadd fast float %2025, 1.000000e+00
  %2027 = fsub fast float %2026, %2022
  %2028 = fadd fast float %2027, %2023
  %2029 = fdiv fast float %2021, %2028
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fsub fast float %2030, %1150
  %2032 = fmul fast float %2031, %1955
  %2033 = fadd fast float %2032, %1150
  %2034 = fmul fast float %1958, %1742
  %2035 = fmul fast float %1958, %1743
  %2036 = fmul fast float %1958, %1744
  %2037 = fadd fast float %2034, %1145
  %2038 = fadd fast float %2035, %1146
  %2039 = fadd fast float %2036, %1147
  %2040 = fmul fast float %1961, %1797
  %2041 = fadd fast float %2040, %1152
  %2042 = fmul fast float %1964, %1794
  %2043 = fmul fast float %1964, %1795
  %2044 = fmul fast float %1964, %1796
  %2045 = fadd fast float %2042, %1142
  %2046 = fadd fast float %2043, %1143
  %2047 = fadd fast float %2044, %1144
  br label %2076

; <label>:2048                                    ; preds = %2000
  %2049 = icmp eq i32 %1944, 8
  br i1 %2049, label %2050, label %2076

; <label>:2050                                    ; preds = %2048
  %2051 = fmul fast float %1949, %1637
  %2052 = fmul fast float %1949, %1638
  %2053 = fadd fast float %2051, %1134
  %2054 = fadd fast float %2052, %1135
  %2055 = call float @dx.op.binary.f32(i32 36, float %1151, float %1639)  ; FMin(a,b)
  %2056 = fsub fast float %2055, %1151
  %2057 = fmul fast float %2056, %1952
  %2058 = fadd fast float %2057, %1151
  %2059 = fsub fast float %1636, %1150
  %2060 = fmul fast float %1955, %2059
  %2061 = fadd fast float %2060, %1150
  %2062 = fmul fast float %1958, %1742
  %2063 = fmul fast float %1958, %1743
  %2064 = fmul fast float %1958, %1744
  %2065 = fadd fast float %2062, %1145
  %2066 = fadd fast float %2063, %1146
  %2067 = fadd fast float %2064, %1147
  %2068 = fmul fast float %1961, %1797
  %2069 = fadd fast float %2068, %1152
  %2070 = fmul fast float %1964, %1794
  %2071 = fmul fast float %1964, %1795
  %2072 = fmul fast float %1964, %1796
  %2073 = fadd fast float %2070, %1142
  %2074 = fadd fast float %2071, %1143
  %2075 = fadd fast float %2072, %1144
  br label %2076

; <label>:2076                                    ; preds = %2050, %2048, %2002, %1966, %1935, %1335, %1154, %1133
  %2077 = phi float [ %1134, %1935 ], [ %1134, %1335 ], [ %1134, %1133 ], [ %2053, %2050 ], [ %1134, %2048 ], [ %2005, %2002 ], [ %1971, %1966 ], [ %1134, %1154 ]
  %2078 = phi float [ %1135, %1935 ], [ %1135, %1335 ], [ %1135, %1133 ], [ %2054, %2050 ], [ %1135, %2048 ], [ %2006, %2002 ], [ %1972, %1966 ], [ %1135, %1154 ]
  %2079 = phi float [ %1936, %1935 ], [ %1136, %1335 ], [ %1136, %1133 ], [ %1936, %2050 ], [ %1936, %2048 ], [ %1936, %2002 ], [ %1936, %1966 ], [ %1136, %1154 ]
  %2080 = phi float [ %1937, %1935 ], [ %1137, %1335 ], [ %1137, %1133 ], [ %1937, %2050 ], [ %1937, %2048 ], [ %1937, %2002 ], [ %1937, %1966 ], [ %1137, %1154 ]
  %2081 = phi float [ %1938, %1935 ], [ %1138, %1335 ], [ %1138, %1133 ], [ %1938, %2050 ], [ %1938, %2048 ], [ %1938, %2002 ], [ %1938, %1966 ], [ %1138, %1154 ]
  %2082 = phi float [ %1939, %1935 ], [ %1139, %1335 ], [ %1139, %1133 ], [ %1939, %2050 ], [ %1939, %2048 ], [ %1939, %2002 ], [ %1939, %1966 ], [ %1139, %1154 ]
  %2083 = phi float [ %1940, %1935 ], [ %1140, %1335 ], [ %1140, %1133 ], [ %1940, %2050 ], [ %1940, %2048 ], [ %1940, %2002 ], [ %1940, %1966 ], [ %1140, %1154 ]
  %2084 = phi float [ %1941, %1935 ], [ %1141, %1335 ], [ %1141, %1133 ], [ %1941, %2050 ], [ %1941, %2048 ], [ %1941, %2002 ], [ %1941, %1966 ], [ %1141, %1154 ]
  %2085 = phi float [ %1142, %1935 ], [ %1142, %1335 ], [ %1142, %1133 ], [ %2073, %2050 ], [ %1142, %2048 ], [ %2045, %2002 ], [ %1997, %1966 ], [ %1142, %1154 ]
  %2086 = phi float [ %1143, %1935 ], [ %1143, %1335 ], [ %1143, %1133 ], [ %2074, %2050 ], [ %1143, %2048 ], [ %2046, %2002 ], [ %1998, %1966 ], [ %1143, %1154 ]
  %2087 = phi float [ %1144, %1935 ], [ %1144, %1335 ], [ %1144, %1133 ], [ %2075, %2050 ], [ %1144, %2048 ], [ %2047, %2002 ], [ %1999, %1966 ], [ %1144, %1154 ]
  %2088 = phi float [ %1145, %1935 ], [ %1145, %1335 ], [ %1145, %1133 ], [ %2065, %2050 ], [ %1145, %2048 ], [ %2037, %2002 ], [ %1985, %1966 ], [ %1145, %1154 ]
  %2089 = phi float [ %1146, %1935 ], [ %1146, %1335 ], [ %1146, %1133 ], [ %2066, %2050 ], [ %1146, %2048 ], [ %2038, %2002 ], [ %1986, %1966 ], [ %1146, %1154 ]
  %2090 = phi float [ %1147, %1935 ], [ %1147, %1335 ], [ %1147, %1133 ], [ %2067, %2050 ], [ %1147, %2048 ], [ %2039, %2002 ], [ %1987, %1966 ], [ %1147, %1154 ]
  %2091 = phi float [ %1942, %1935 ], [ %1148, %1335 ], [ %1148, %1133 ], [ %1942, %2050 ], [ %1942, %2048 ], [ %1942, %2002 ], [ %1942, %1966 ], [ %1148, %1154 ]
  %2092 = phi float [ %1150, %1935 ], [ %1150, %1335 ], [ %1150, %1133 ], [ %2061, %2050 ], [ %1150, %2048 ], [ %2033, %2002 ], [ %1978, %1966 ], [ %1150, %1154 ]
  %2093 = phi float [ %1151, %1935 ], [ %1151, %1335 ], [ %1151, %1133 ], [ %2058, %2050 ], [ %1151, %2048 ], [ %2010, %2002 ], [ %1975, %1966 ], [ %1151, %1154 ]
  %2094 = phi float [ %1152, %1935 ], [ %1152, %1335 ], [ %1152, %1133 ], [ %2069, %2050 ], [ %1152, %2048 ], [ %2041, %2002 ], [ %1990, %1966 ], [ %1152, %1154 ]
  %2095 = phi float [ %1943, %1935 ], [ %1153, %1335 ], [ %1153, %1133 ], [ %1943, %2050 ], [ %1943, %2048 ], [ %1943, %2002 ], [ %1943, %1966 ], [ %1153, %1154 ]
  br i1 %423, label %3018, label %2096

; <label>:2096                                    ; preds = %2076
  %2097 = icmp ult i32 %479, 3
  %2098 = add i32 %42, 56
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %42, 60
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = or i32 %2103, %2100
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %3018, label %2106

; <label>:2106                                    ; preds = %2096
  %2107 = and i32 %2100, 262144
  %2108 = icmp ne i32 %2107, 0
  %2109 = select i1 %2108, float %47, float 1.000000e+00
  %2110 = select i1 %2108, float %48, float 0.000000e+00
  %2111 = select i1 %2108, float %49, float 0.000000e+00
  %2112 = select i1 %2108, float %50, float 1.000000e+00
  %2113 = select i1 %2108, float %51, float %79
  %2114 = select i1 %2108, float %52, float %80
  %2115 = add i32 %42, 316
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = lshr i32 %2117, 16
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = fmul fast float %2119, 0x3F50624DE0000000
  %2121 = add i32 %42, 120
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = lshr i32 %2123, 16
  %2125 = and i32 %2124, 255
  %2126 = lshr i32 %2123, 24
  %2127 = add i32 %42, 324
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 65535
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2129, 16
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = add i32 %42, 64
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = lshr i32 %2136, 22
  %2138 = shl nuw nsw i32 %2137, 5
  %2139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2138)  ; LegacyF16ToF32(value)
  %2140 = shl i32 %2136, 4
  %2141 = and i32 %2140, 32752
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = lshr i32 %2136, 7
  %2144 = and i32 %2143, 32752
  %2145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2144)  ; LegacyF16ToF32(value)
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2148 = fmul fast float %2147, 1.000000e+03
  %2149 = fmul fast float %373, %2148
  %2150 = call float @dx.op.unary.f32(i32 22, float %2149)  ; Frc(value)
  %2151 = fadd fast float %2150, %363
  %2152 = fmul fast float %374, %2148
  %2153 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2154 = fadd fast float %2153, %365
  %2155 = fmul fast float %2120, %2148
  %2156 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2157 = fmul fast float %2156, 0x401921FB60000000
  %2158 = fadd fast float %2157, %2139
  %2159 = call float @dx.op.unary.f32(i32 13, float %2158)  ; Sin(value)
  %2160 = call float @dx.op.unary.f32(i32 12, float %2158)  ; Cos(value)
  %2161 = fsub fast float -0.000000e+00, %2159
  %2162 = fadd fast float %2113, -5.000000e-01
  %2163 = fadd fast float %2114, -5.000000e-01
  %2164 = fmul fast float %2131, %2162
  %2165 = fmul fast float %2133, %2163
  %2166 = fadd fast float %2164, 5.000000e-01
  %2167 = fadd fast float %2165, 5.000000e-01
  %2168 = fmul fast float %2142, %2166
  %2169 = fmul fast float %2145, %2167
  %2170 = fmul fast float %2160, %2168
  %2171 = call float @dx.op.tertiary.f32(i32 46, float %2161, float %2169, float %2170)  ; FMad(a,b,c)
  %2172 = fmul fast float %2159, %2168
  %2173 = call float @dx.op.tertiary.f32(i32 46, float %2160, float %2169, float %2172)  ; FMad(a,b,c)
  %2174 = fadd fast float %2151, %2171
  %2175 = fadd fast float %2154, %2173
  %2176 = icmp ugt i32 %2125, 1
  %2177 = icmp ugt i32 %2123, 33554431
  %2178 = or i1 %2177, %2176
  br i1 %2178, label %2179, label %2204

; <label>:2179                                    ; preds = %2106
  %2180 = add i32 %42, 260
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = lshr i32 %2182, 16
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = fmul fast float %2147, %2184
  %2186 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2187 = mul nuw nsw i32 %2125, %2126
  %2188 = uitofp i32 %2187 to float
  %2189 = fmul fast float %2186, %2188
  %2190 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2191 = fptoui float %2190 to i32
  %2192 = urem i32 %2191, %2125
  %2193 = udiv i32 %2191, %2126
  %2194 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2195 = call float @dx.op.unary.f32(i32 22, float %2175)  ; Frc(value)
  %2196 = uitofp i32 %2192 to float
  %2197 = uitofp i32 %2193 to float
  %2198 = fadd fast float %2194, %2196
  %2199 = fadd fast float %2195, %2197
  %2200 = uitofp i32 %2125 to float
  %2201 = uitofp i32 %2126 to float
  %2202 = fdiv fast float %2198, %2200
  %2203 = fdiv fast float %2199, %2201
  br label %2204

; <label>:2204                                    ; preds = %2179, %2106
  %2205 = phi float [ %2202, %2179 ], [ %2174, %2106 ]
  %2206 = phi float [ %2203, %2179 ], [ %2175, %2106 ]
  %2207 = and i32 %2100, 256
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2255, label %2209

; <label>:2209                                    ; preds = %2204
  %2210 = add i32 %42, 448
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %94, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = add i32 %42, 132
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = shl i32 %2219, 4
  %2221 = and i32 %2220, 32752
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2219, 7
  %2224 = and i32 %2223, 32752
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = fsub fast float 1.000000e+00, %475
  %2227 = call float @dx.op.binary.f32(i32 35, float %2226, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2228 = bitcast float %475 to i32
  %2229 = sitofp i32 %2228 to float
  %2230 = fadd fast float %2229, 0xC1CFBF8940000000
  %2231 = fmul fast float %2225, %2230
  %2232 = fadd fast float %2231, 0x41CFBF8940000000
  %2233 = fptosi float %2232 to i32
  %2234 = bitcast i32 %2233 to float
  %2235 = bitcast float %2227 to i32
  %2236 = sitofp i32 %2235 to float
  %2237 = fadd fast float %2236, 0xC1CFBF8940000000
  %2238 = fmul fast float %2237, %2225
  %2239 = fadd fast float %2238, 0x41CFBF8940000000
  %2240 = fptosi float %2239 to i32
  %2241 = bitcast i32 %2240 to float
  %2242 = fmul fast float %2234, %2222
  %2243 = fmul fast float %2241, %2222
  %2244 = fsub fast float %2227, %2242
  %2245 = fadd fast float %2243, %2227
  %2246 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2247 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2248 = fsub fast float %2216, %2246
  %2249 = fsub fast float %2247, %2246
  %2250 = bitcast float %2249 to i32
  %2251 = sub nsw i32 2129859010, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2252, %2248
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  br label %2255

; <label>:2255                                    ; preds = %2209, %2204
  %2256 = phi float [ %2254, %2209 ], [ %475, %2204 ]
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 128
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2277, label %2261

; <label>:2261                                    ; preds = %2255
  %2262 = add i32 %42, 432
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2266, %dx.types.Handle %94, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 524288
  %2272 = icmp ne i32 %2271, 0
  %2273 = fcmp fast ogt float %2268, 0x3FE0101020000000
  %2274 = select i1 %2273, float 1.000000e+00, float 0.000000e+00
  %2275 = select i1 %2272, float %2274, float %2268
  %2276 = fmul fast float %2275, %2256
  br label %2277

; <label>:2277                                    ; preds = %2261, %2255
  %2278 = phi float [ %2276, %2261 ], [ %2256, %2255 ]
  %2279 = fcmp fast ult float %2278, 0x3F70101020000000
  br i1 %2279, label %3018, label %2280

; <label>:2280                                    ; preds = %2277
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 16
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2483, label %2285

; <label>:2285                                    ; preds = %2280
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %42, 384
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %93, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = extractvalue %dx.types.ResRet.f32 %2293, 3
  %2298 = and i32 %2287, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = lshr i32 %2287, 8
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2297, %2299
  %2304 = fadd fast float %2303, %2302
  %2305 = fmul fast float %2304, 0x3F70101000000000
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 512
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2318, label %2310

; <label>:2310                                    ; preds = %2285
  %2311 = add i32 %42, 468
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = add i32 %2313, 0
  %2315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2315, %dx.types.Handle %94, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  br label %2318

; <label>:2318                                    ; preds = %2310, %2285
  %2319 = phi float [ %2317, %2310 ], [ 1.000000e+00, %2285 ]
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 33554432
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2430, label %2324

; <label>:2324                                    ; preds = %2318
  %2325 = add i32 %42, 256
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = lshr i32 %2327, 16
  %2331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2330)  ; LegacyF16ToF32(value)
  %2332 = add i32 %42, 260
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 24
  %2340 = uitofp i32 %2339 to float
  %2341 = fmul fast float %2340, 0x3F70101020000000
  %2342 = and i32 %2338, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = lshr i32 %2338, 8
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = lshr i32 %2338, 16
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101020000000
  %2353 = add i32 %42, 252
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 24
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = and i32 %2355, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = lshr i32 %2355, 8
  %2363 = and i32 %2362, 255
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = lshr i32 %2355, 16
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = bitcast float %2294 to i32
  %2371 = ashr i32 %2370, 1
  %2372 = sub nsw i32 1597463174, %2371
  %2373 = bitcast i32 %2372 to float
  %2374 = fmul fast float %2294, 5.000000e-01
  %2375 = fmul fast float %2373, %2373
  %2376 = fmul fast float %2375, %2374
  %2377 = fsub fast float 1.500000e+00, %2376
  %2378 = fmul fast float %2373, %2294
  %2379 = fmul fast float %2378, %2377
  %2380 = bitcast float %2295 to i32
  %2381 = ashr i32 %2380, 1
  %2382 = sub nsw i32 1597463174, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2295, 5.000000e-01
  %2385 = fmul fast float %2383, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float 1.500000e+00, %2386
  %2388 = fmul fast float %2383, %2295
  %2389 = fmul fast float %2388, %2387
  %2390 = bitcast float %2296 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2296, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2296
  %2399 = fmul fast float %2398, %2397
  %2400 = fsub fast float %2379, %2361
  %2401 = fsub fast float %2389, %2365
  %2402 = fsub fast float %2399, %2369
  %2403 = fmul fast float %2400, %2329
  %2404 = fmul fast float %2401, %2331
  %2405 = fmul fast float %2402, %2336
  %2406 = fadd fast float %2403, %2344
  %2407 = fadd fast float %2404, %2348
  %2408 = fadd fast float %2405, %2352
  %2409 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2410 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2411 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  %2412 = fmul fast float %2409, %2409
  %2413 = fmul fast float %2410, %2410
  %2414 = fmul fast float %2411, %2411
  %2415 = fsub fast float %2412, %2294
  %2416 = fsub fast float %2413, %2295
  %2417 = fsub fast float %2414, %2296
  %2418 = fmul fast float %2415, %2319
  %2419 = fmul fast float %2416, %2319
  %2420 = fmul fast float %2417, %2319
  %2421 = fadd fast float %2418, %2294
  %2422 = fadd fast float %2419, %2295
  %2423 = fadd fast float %2420, %2296
  %2424 = fadd fast float %2341, %2305
  %2425 = fsub fast float %2424, %2358
  %2426 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2427 = fsub fast float %2426, %2305
  %2428 = fmul fast float %2427, %2319
  %2429 = fadd fast float %2428, %2305
  br label %2483

; <label>:2430                                    ; preds = %2318
  %2431 = and i32 %2321, 134217728
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2467, label %2433

; <label>:2433                                    ; preds = %2430
  %2434 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2435 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2436 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2437 = fadd fast float %2434, -5.000000e-01
  %2438 = fadd fast float %2435, -5.000000e-01
  %2439 = fadd fast float %2436, -5.000000e-01
  %2440 = fmul fast float %2437, %2319
  %2441 = fmul fast float %2438, %2319
  %2442 = fmul fast float %2439, %2319
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fadd fast float %2441, 5.000000e-01
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = call float @dx.op.unary.f32(i32 24, float %2294)  ; Sqrt(value)
  %2447 = call float @dx.op.unary.f32(i32 24, float %2295)  ; Sqrt(value)
  %2448 = call float @dx.op.unary.f32(i32 24, float %2296)  ; Sqrt(value)
  %2449 = fmul fast float %2443, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2446
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2446
  %2454 = fmul fast float %2444, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2447
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2447
  %2459 = fmul fast float %2445, 2.000000e+00
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, %2448
  %2462 = fadd fast float %2461, %2459
  %2463 = fmul fast float %2462, %2448
  %2464 = fmul fast float %2453, %2453
  %2465 = fmul fast float %2458, %2458
  %2466 = fmul fast float %2463, %2463
  br label %2483

; <label>:2467                                    ; preds = %2430
  %2468 = fmul fast float %350, %350
  %2469 = fmul fast float %354, %354
  %2470 = fmul fast float %358, %358
  %2471 = fadd fast float %2468, -1.000000e+00
  %2472 = fadd fast float %2469, -1.000000e+00
  %2473 = fadd fast float %2470, -1.000000e+00
  %2474 = fmul fast float %2319, %2471
  %2475 = fmul fast float %2319, %2472
  %2476 = fmul fast float %2319, %2473
  %2477 = fadd fast float %2474, 1.000000e+00
  %2478 = fadd fast float %2475, 1.000000e+00
  %2479 = fadd fast float %2476, 1.000000e+00
  %2480 = fmul fast float %2477, %2294
  %2481 = fmul fast float %2478, %2295
  %2482 = fmul fast float %2479, %2296
  br label %2483

; <label>:2483                                    ; preds = %2467, %2433, %2324, %2280
  %2484 = phi float [ %2429, %2324 ], [ %2305, %2433 ], [ %2305, %2467 ], [ 0x3FA23C0BE0000000, %2280 ]
  %2485 = phi float [ %2421, %2324 ], [ %2464, %2433 ], [ %2480, %2467 ], [ 1.000000e+00, %2280 ]
  %2486 = phi float [ %2422, %2324 ], [ %2465, %2433 ], [ %2481, %2467 ], [ 1.000000e+00, %2280 ]
  %2487 = phi float [ %2423, %2324 ], [ %2466, %2433 ], [ %2482, %2467 ], [ 1.000000e+00, %2280 ]
  %2488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.i32 %2488, 1
  %2490 = and i32 %2489, 1
  %2491 = icmp ne i32 %2490, 0
  %2492 = add i32 %42, 356
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 32
  %2496 = icmp ne i32 %2495, 0
  %2497 = and i1 %2491, %2496
  %2498 = select i1 %2497, float 1.000000e+00, float %2485
  %2499 = select i1 %2497, float 0x3FD3333340000000, float %2486
  %2500 = select i1 %2497, float 0x3FD3333340000000, float %2487
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 32
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2577, label %2505

; <label>:2505                                    ; preds = %2483
  %2506 = add i32 %42, 124
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %42, 400
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %2511, 0
  %2513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2513, %dx.types.Handle %93, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.ResRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.ResRet.f32 %2514, 2
  %2518 = extractvalue %dx.types.ResRet.f32 %2514, 3
  %2519 = and i32 %2508, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = lshr i32 %2508, 8
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2508, 16
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = fmul fast float %2526, 0x3F70101000000000
  %2528 = fmul fast float %2515, %2520
  %2529 = fadd fast float %2528, %2523
  %2530 = fmul fast float %2529, 0x3F70101000000000
  %2531 = fadd fast float %2516, -5.000000e-01
  %2532 = fadd fast float %2518, -5.000000e-01
  %2533 = fmul fast float %2531, %2527
  %2534 = fmul fast float %2532, %2527
  %2535 = fadd fast float %2533, 5.000000e-01
  %2536 = fadd fast float %2534, 5.000000e-01
  %2537 = fmul fast float %2535, 2.000000e+00
  %2538 = fadd fast float %2537, -1.000000e+00
  %2539 = fmul fast float %2536, 2.000000e+00
  %2540 = fadd fast float %2539, -1.000000e+00
  %2541 = fadd fast float %2538, %2540
  %2542 = fmul fast float %2541, 5.000000e-01
  %2543 = fsub fast float %2538, %2540
  %2544 = fmul fast float %2543, 5.000000e-01
  %2545 = call float @dx.op.unary.f32(i32 6, float %2542)  ; FAbs(value)
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = call float @dx.op.unary.f32(i32 6, float %2544)  ; FAbs(value)
  %2548 = fsub fast float %2546, %2547
  %2549 = call float @dx.op.dot3.f32(i32 55, float %2542, float %2544, float %2548, float %2542, float %2544, float %2548)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = call float @dx.op.unary.f32(i32 25, float %2549)  ; Rsqrt(value)
  %2551 = fmul fast float %2542, %2550
  %2552 = fmul fast float %2544, %2550
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 67108864
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2573, label %2557

; <label>:2557                                    ; preds = %2505
  %2558 = add i32 %42, 312
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 65535
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 65535
  %2566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2565)  ; LegacyF16ToF32(value)
  %2567 = lshr i32 %2560, 16
  %2568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2567)  ; LegacyF16ToF32(value)
  %2569 = fsub fast float %2530, %2568
  %2570 = fmul fast float %2569, %2562
  %2571 = fadd fast float %2570, %2566
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  br label %2573

; <label>:2573                                    ; preds = %2557, %2505
  %2574 = phi float [ %2572, %2557 ], [ %2530, %2505 ]
  %2575 = call float @dx.op.dot2.f32(i32 54, float %2551, float %2552, float %2109, float %2110)  ; Dot2(ax,ay,bx,by)
  %2576 = call float @dx.op.dot2.f32(i32 54, float %2551, float %2552, float %2111, float %2112)  ; Dot2(ax,ay,bx,by)
  br label %2577

; <label>:2577                                    ; preds = %2573, %2483
  %2578 = phi float [ %2574, %2573 ], [ 0x3FD6666660000000, %2483 ]
  %2579 = phi float [ %2575, %2573 ], [ 0.000000e+00, %2483 ]
  %2580 = phi float [ %2576, %2573 ], [ 0.000000e+00, %2483 ]
  %2581 = phi float [ %2517, %2573 ], [ 1.000000e+00, %2483 ]
  %2582 = add i32 %42, 192
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = lshr i32 %2584, 22
  %2586 = shl nuw nsw i32 %2585, 5
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 64
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2625, label %2592

; <label>:2592                                    ; preds = %2577
  %2593 = add i32 %42, 416
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %2595, 0
  %2597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 131072
  %2601 = icmp eq i32 %2600, 0
  %2602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2597, %dx.types.Handle %93, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2606 = fmul fast float %2603, %338
  %2607 = fmul fast float %2604, %341
  %2608 = fmul fast float %2605, %344
  br i1 %2601, label %2615, label %2609

; <label>:2609                                    ; preds = %2592
  %2610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2610, 0
  %2612 = fmul fast float %2611, %2606
  %2613 = fmul fast float %2611, %2607
  %2614 = fmul fast float %2611, %2608
  br label %2615

; <label>:2615                                    ; preds = %2609, %2592
  %2616 = phi float [ %2612, %2609 ], [ %2606, %2592 ]
  %2617 = phi float [ %2613, %2609 ], [ %2607, %2592 ]
  %2618 = phi float [ %2614, %2609 ], [ %2608, %2592 ]
  %2619 = fmul fast float %2616, %2587
  %2620 = select i1 %237, float %2619, float %2616
  %2621 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2617, float %2618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = select i1 %237, float 0.000000e+00, float %2616
  %2623 = select i1 %237, float %2621, float %2617
  %2624 = select i1 %237, float 0.000000e+00, float %2618
  br label %2625

; <label>:2625                                    ; preds = %2615, %2577
  %2626 = phi float [ %2622, %2615 ], [ 0.000000e+00, %2577 ]
  %2627 = phi float [ %2623, %2615 ], [ 0.000000e+00, %2577 ]
  %2628 = phi float [ %2624, %2615 ], [ 0.000000e+00, %2577 ]
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = and i32 %2630, 1024
  %2632 = icmp eq i32 %2631, 0
  br i1 %2632, label %2663, label %2633

; <label>:2633                                    ; preds = %2625
  %2634 = add i32 %42, 184
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 255
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 0x3F70101020000000
  %2640 = lshr i32 %2636, 8
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = lshr i32 %2636, 16
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = fmul fast float %2639, %2639
  %2649 = fmul fast float %2643, %2643
  %2650 = fmul fast float %2647, %2647
  %2651 = add i32 %42, 484
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %94, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.ResRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.ResRet.f32 %2656, 2
  %2660 = fmul fast float %2648, %2657
  %2661 = fmul fast float %2649, %2658
  %2662 = fmul fast float %2650, %2659
  br label %2663

; <label>:2663                                    ; preds = %2633, %2625
  %2664 = phi float [ %2660, %2633 ], [ 0.000000e+00, %2625 ]
  %2665 = phi float [ %2661, %2633 ], [ 0.000000e+00, %2625 ]
  %2666 = phi float [ %2662, %2633 ], [ 0.000000e+00, %2625 ]
  %2667 = fcmp fast ogt float %2664, 0.000000e+00
  %2668 = fcmp fast ogt float %2665, 0.000000e+00
  %2669 = fcmp fast ogt float %2666, 0.000000e+00
  %2670 = call float @dx.op.unary.f32(i32 23, float %2664)  ; Log(value)
  %2671 = call float @dx.op.unary.f32(i32 23, float %2665)  ; Log(value)
  %2672 = call float @dx.op.unary.f32(i32 23, float %2666)  ; Log(value)
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 7
  %2676 = and i32 %2675, 32752
  %2677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2676)  ; LegacyF16ToF32(value)
  %2678 = fmul fast float %2670, 0xBFE62E4300000000
  %2679 = fmul fast float %2678, %2677
  %2680 = fmul fast float %2671, 0xBFE62E4300000000
  %2681 = fmul fast float %2680, %2677
  %2682 = fmul fast float %2672, 0xBFE62E4300000000
  %2683 = fmul fast float %2682, %2677
  %2684 = select i1 %2667, float %2679, float 1.270000e+02
  %2685 = select i1 %2668, float %2681, float 1.270000e+02
  %2686 = select i1 %2669, float %2683, float 1.270000e+02
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 10240
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2735, label %2691

; <label>:2691                                    ; preds = %2663
  %2692 = add i32 %42, 500
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = add i32 %2694, 0
  %2696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2696, %dx.types.Handle %94, float %2205, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2698 = extractvalue %dx.types.ResRet.f32 %2697, 1
  %2699 = extractvalue %dx.types.ResRet.f32 %2697, 3
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 1048576
  %2703 = icmp ne i32 %2702, 0
  %2704 = and i32 %2701, 8192
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2721, label %2706

; <label>:2706                                    ; preds = %2691
  %2707 = extractvalue %dx.types.ResRet.f32 %2697, 2
  %2708 = select i1 %2703, float %2707, float %2698
  %2709 = extractvalue %dx.types.ResRet.f32 %2697, 0
  %2710 = select i1 %2703, float %2709, float %2698
  %2711 = add i32 %42, 128
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = lshr i32 %2713, 16
  %2715 = and i32 %2714, 255
  %2716 = uitofp i32 %2715 to float
  %2717 = fmul fast float %2716, 0x3F80101020000000
  %2718 = fmul fast float %2717, %2710
  %2719 = fmul fast float %2717, %2698
  %2720 = fmul fast float %2717, %2708
  br label %2721

; <label>:2721                                    ; preds = %2706, %2691
  %2722 = phi float [ %2718, %2706 ], [ 0.000000e+00, %2691 ]
  %2723 = phi float [ %2719, %2706 ], [ 0.000000e+00, %2691 ]
  %2724 = phi float [ %2720, %2706 ], [ 0.000000e+00, %2691 ]
  %2725 = and i32 %2701, 2048
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %2735, label %2727

; <label>:2727                                    ; preds = %2721
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = shl i32 %2729, 4
  %2731 = and i32 %2730, 32752
  %2732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2731)  ; LegacyF16ToF32(value)
  %2733 = fmul fast float %2732, %2699
  %2734 = call float @dx.op.binary.f32(i32 35, float %2733, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2735

; <label>:2735                                    ; preds = %2727, %2721, %2663
  %2736 = phi float [ %2722, %2727 ], [ %2722, %2721 ], [ 0.000000e+00, %2663 ]
  %2737 = phi float [ %2723, %2727 ], [ %2723, %2721 ], [ 0.000000e+00, %2663 ]
  %2738 = phi float [ %2724, %2727 ], [ %2724, %2721 ], [ 0.000000e+00, %2663 ]
  %2739 = phi float [ %2734, %2727 ], [ 0x3F70101020000000, %2721 ], [ 0x3F70101020000000, %2663 ]
  %2740 = add i32 %42, 128
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = lshr i32 %2742, 8
  %2746 = and i32 %2745, 255
  %2747 = uitofp i32 %2746 to float
  %2748 = call float @dx.op.dot3.f32(i32 55, float %2498, float %2499, float %2500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2749 = fmul fast float %2747, %2748
  %2750 = fadd fast float %2749, %2744
  %2751 = fmul fast float %2750, 0x3F70101020000000
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  br i1 %2097, label %2753, label %2788

; <label>:2753                                    ; preds = %2735
  %2754 = fmul fast float %2739, 2.000000e+00
  %2755 = fcmp fast olt float %2684, 1.270000e+02
  %2756 = fcmp fast olt float %2685, 1.270000e+02
  %2757 = fcmp fast olt float %2686, 1.270000e+02
  %2758 = fmul fast float %2684, 0xBFF7154760000000
  %2759 = fmul fast float %2758, %2754
  %2760 = fmul fast float %2685, 0xBFF7154760000000
  %2761 = fmul fast float %2760, %2754
  %2762 = fmul fast float %2686, 0xBFF7154760000000
  %2763 = fmul fast float %2762, %2754
  %2764 = call float @dx.op.unary.f32(i32 21, float %2759)  ; Exp(value)
  %2765 = call float @dx.op.unary.f32(i32 21, float %2761)  ; Exp(value)
  %2766 = call float @dx.op.unary.f32(i32 21, float %2763)  ; Exp(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2769 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2770 = fadd fast float %2767, -1.000000e+00
  %2771 = select i1 %2755, float %2770, float -1.000000e+00
  %2772 = fadd fast float %2768, -1.000000e+00
  %2773 = select i1 %2756, float %2772, float -1.000000e+00
  %2774 = fadd fast float %2769, -1.000000e+00
  %2775 = select i1 %2757, float %2774, float -1.000000e+00
  %2776 = fmul fast float %2771, %2278
  %2777 = fmul fast float %2773, %2278
  %2778 = fmul fast float %2775, %2278
  %2779 = fadd fast float %2776, 1.000000e+00
  %2780 = fadd fast float %2777, 1.000000e+00
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fmul fast float %2779, %2082
  %2783 = fmul fast float %2780, %2083
  %2784 = fmul fast float %2781, %2084
  %2785 = fmul fast float %2779, %2079
  %2786 = fmul fast float %2780, %2080
  %2787 = fmul fast float %2781, %2081
  br label %2788

; <label>:2788                                    ; preds = %2753, %2735
  %2789 = phi float [ %2785, %2753 ], [ %2079, %2735 ]
  %2790 = phi float [ %2786, %2753 ], [ %2080, %2735 ]
  %2791 = phi float [ %2787, %2753 ], [ %2081, %2735 ]
  %2792 = phi float [ %2782, %2753 ], [ %2082, %2735 ]
  %2793 = phi float [ %2783, %2753 ], [ %2083, %2735 ]
  %2794 = phi float [ %2784, %2753 ], [ %2084, %2735 ]
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = and i32 %2796, 3
  %2798 = icmp eq i32 %2797, 3
  br i1 %2798, label %2877, label %2799

; <label>:2799                                    ; preds = %2788
  %2800 = and i32 %2796, 16
  %2801 = icmp ne i32 %2800, 0
  %2802 = select i1 %2801, float %2278, float 0.000000e+00
  %2803 = icmp eq i32 %2797, 0
  br i1 %2803, label %2804, label %2832

; <label>:2804                                    ; preds = %2799
  %2805 = and i32 %2796, 64
  %2806 = icmp ne i32 %2805, 0
  %2807 = select i1 %2806, float %2278, float 0.000000e+00
  %2808 = fsub fast float %2498, %2792
  %2809 = fsub fast float %2499, %2793
  %2810 = fsub fast float %2500, %2794
  %2811 = fmul fast float %2802, %2808
  %2812 = fmul fast float %2802, %2809
  %2813 = fmul fast float %2802, %2810
  %2814 = fadd fast float %2811, %2792
  %2815 = fadd fast float %2812, %2793
  %2816 = fadd fast float %2813, %2794
  %2817 = fsub fast float %2484, %2091
  %2818 = fmul fast float %2802, %2817
  %2819 = fadd fast float %2818, %2091
  %2820 = fsub fast float %2626, %2789
  %2821 = fsub fast float %2627, %2790
  %2822 = fsub fast float %2628, %2791
  %2823 = fmul fast float %2807, %2820
  %2824 = fmul fast float %2807, %2821
  %2825 = fmul fast float %2807, %2822
  %2826 = fadd fast float %2823, %2789
  %2827 = fadd fast float %2824, %2790
  %2828 = fadd fast float %2825, %2791
  %2829 = fsub fast float %2752, %2095
  %2830 = fmul fast float %2802, %2829
  %2831 = fadd fast float %2830, %2095
  br label %2877

; <label>:2832                                    ; preds = %2799
  %2833 = icmp eq i32 %2797, 1
  br i1 %2833, label %2834, label %2847

; <label>:2834                                    ; preds = %2832
  %2835 = fadd fast float %2498, -1.000000e+00
  %2836 = fadd fast float %2499, -1.000000e+00
  %2837 = fadd fast float %2500, -1.000000e+00
  %2838 = fmul fast float %2802, %2835
  %2839 = fmul fast float %2802, %2836
  %2840 = fmul fast float %2802, %2837
  %2841 = fadd fast float %2838, 1.000000e+00
  %2842 = fadd fast float %2839, 1.000000e+00
  %2843 = fadd fast float %2840, 1.000000e+00
  %2844 = fmul fast float %2841, %2792
  %2845 = fmul fast float %2842, %2793
  %2846 = fmul fast float %2843, %2794
  br label %2877

; <label>:2847                                    ; preds = %2832
  %2848 = icmp eq i32 %2797, 2
  br i1 %2848, label %2849, label %2877

; <label>:2849                                    ; preds = %2847
  %2850 = call float @dx.op.unary.f32(i32 24, float %2498)  ; Sqrt(value)
  %2851 = call float @dx.op.unary.f32(i32 24, float %2499)  ; Sqrt(value)
  %2852 = call float @dx.op.unary.f32(i32 24, float %2500)  ; Sqrt(value)
  %2853 = fadd fast float %2850, -5.000000e-01
  %2854 = fadd fast float %2851, -5.000000e-01
  %2855 = fadd fast float %2852, -5.000000e-01
  %2856 = fmul fast float %2853, %2802
  %2857 = fmul fast float %2854, %2802
  %2858 = fmul fast float %2855, %2802
  %2859 = fadd fast float %2856, 5.000000e-01
  %2860 = fadd fast float %2857, 5.000000e-01
  %2861 = fadd fast float %2858, 5.000000e-01
  %2862 = fmul fast float %2859, 2.000000e+00
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = fmul fast float %2863, %2792
  %2865 = fadd fast float %2864, %2862
  %2866 = fmul fast float %2865, %2792
  %2867 = fmul fast float %2860, 2.000000e+00
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = fmul fast float %2868, %2793
  %2870 = fadd fast float %2869, %2867
  %2871 = fmul fast float %2870, %2793
  %2872 = fmul fast float %2861, 2.000000e+00
  %2873 = fsub fast float 1.000000e+00, %2872
  %2874 = fmul fast float %2873, %2794
  %2875 = fadd fast float %2874, %2872
  %2876 = fmul fast float %2875, %2794
  br label %2877

; <label>:2877                                    ; preds = %2849, %2847, %2834, %2804, %2788
  %2878 = phi float [ %2789, %2788 ], [ %2789, %2849 ], [ %2789, %2847 ], [ %2789, %2834 ], [ %2826, %2804 ]
  %2879 = phi float [ %2790, %2788 ], [ %2790, %2849 ], [ %2790, %2847 ], [ %2790, %2834 ], [ %2827, %2804 ]
  %2880 = phi float [ %2791, %2788 ], [ %2791, %2849 ], [ %2791, %2847 ], [ %2791, %2834 ], [ %2828, %2804 ]
  %2881 = phi float [ %2792, %2788 ], [ %2866, %2849 ], [ %2792, %2847 ], [ %2844, %2834 ], [ %2814, %2804 ]
  %2882 = phi float [ %2793, %2788 ], [ %2871, %2849 ], [ %2793, %2847 ], [ %2845, %2834 ], [ %2815, %2804 ]
  %2883 = phi float [ %2794, %2788 ], [ %2876, %2849 ], [ %2794, %2847 ], [ %2846, %2834 ], [ %2816, %2804 ]
  %2884 = phi float [ %2091, %2788 ], [ %2091, %2849 ], [ %2091, %2847 ], [ %2091, %2834 ], [ %2819, %2804 ]
  %2885 = phi float [ %2095, %2788 ], [ %2095, %2849 ], [ %2095, %2847 ], [ %2095, %2834 ], [ %2831, %2804 ]
  %2886 = and i32 %2796, 12
  %2887 = icmp eq i32 %2886, 12
  br i1 %2887, label %3018, label %2888

; <label>:2888                                    ; preds = %2877
  %2889 = and i32 %2796, 2097184
  %2890 = icmp eq i32 %2889, 2097184
  %2891 = select i1 %2890, float %2278, float 0.000000e+00
  %2892 = and i32 %2796, 4194336
  %2893 = icmp eq i32 %2892, 4194336
  %2894 = select i1 %2893, float %2278, float 0.000000e+00
  %2895 = and i32 %2796, 8388640
  %2896 = icmp eq i32 %2895, 8388640
  %2897 = select i1 %2896, float %2278, float 0.000000e+00
  %2898 = and i32 %2796, 1024
  %2899 = icmp ne i32 %2898, 0
  %2900 = select i1 %2899, float %2278, float 0.000000e+00
  %2901 = and i32 %2796, 2048
  %2902 = icmp ne i32 %2901, 0
  %2903 = select i1 %2902, float %2278, float 0.000000e+00
  %2904 = and i32 %2796, 8192
  %2905 = icmp ne i32 %2904, 0
  %2906 = select i1 %2905, float %2278, float 0.000000e+00
  %2907 = icmp eq i32 %2886, 0
  br i1 %2907, label %2908, label %2942

; <label>:2908                                    ; preds = %2888
  %2909 = fsub fast float %2579, %2077
  %2910 = fsub fast float %2580, %2078
  %2911 = fmul fast float %2891, %2909
  %2912 = fmul fast float %2891, %2910
  %2913 = fadd fast float %2911, %2077
  %2914 = fadd fast float %2912, %2078
  %2915 = fsub fast float %2581, %2093
  %2916 = fmul fast float %2894, %2915
  %2917 = fadd fast float %2916, %2093
  %2918 = fsub fast float %2578, %2092
  %2919 = fmul fast float %2897, %2918
  %2920 = fadd fast float %2919, %2092
  %2921 = fsub fast float %2684, %2088
  %2922 = fsub fast float %2685, %2089
  %2923 = fsub fast float %2686, %2090
  %2924 = fmul fast float %2900, %2921
  %2925 = fmul fast float %2900, %2922
  %2926 = fmul fast float %2900, %2923
  %2927 = fadd fast float %2924, %2088
  %2928 = fadd fast float %2925, %2089
  %2929 = fadd fast float %2926, %2090
  %2930 = fsub fast float %2739, %2094
  %2931 = fmul fast float %2903, %2930
  %2932 = fadd fast float %2931, %2094
  %2933 = fsub fast float %2736, %2085
  %2934 = fsub fast float %2737, %2086
  %2935 = fsub fast float %2738, %2087
  %2936 = fmul fast float %2906, %2933
  %2937 = fmul fast float %2906, %2934
  %2938 = fmul fast float %2906, %2935
  %2939 = fadd fast float %2936, %2085
  %2940 = fadd fast float %2937, %2086
  %2941 = fadd fast float %2938, %2087
  br label %3018

; <label>:2942                                    ; preds = %2888
  %2943 = icmp eq i32 %2886, 4
  br i1 %2943, label %2944, label %2990

; <label>:2944                                    ; preds = %2942
  %2945 = fmul fast float %2891, %2579
  %2946 = fmul fast float %2891, %2580
  %2947 = fadd fast float %2945, %2077
  %2948 = fadd fast float %2946, %2078
  %2949 = call float @dx.op.binary.f32(i32 36, float %2093, float %2581)  ; FMin(a,b)
  %2950 = fsub fast float %2949, %2093
  %2951 = fmul fast float %2950, %2894
  %2952 = fadd fast float %2951, %2093
  %2953 = fadd fast float %2578, %2092
  %2954 = fmul fast float %2953, 0x3FF337FAE0000000
  %2955 = fmul fast float %2092, %2092
  %2956 = fmul fast float %2578, %2578
  %2957 = fadd fast float %2956, %2955
  %2958 = fmul fast float %2957, 0x3FE5152B00000000
  %2959 = fmul fast float %2092, 0xBFCC1F85E0000000
  %2960 = fmul fast float %2959, %2578
  %2961 = fadd fast float %2960, 0xBFE1363700000000
  %2962 = fadd fast float %2961, %2954
  %2963 = fsub fast float %2962, %2958
  %2964 = fmul fast float %2953, 0x3FBA6F0D00000000
  %2965 = fmul fast float %2957, 0x3FD0432880000000
  %2966 = fmul fast float %2092, 0xBFEF110800000000
  %2967 = fmul fast float %2966, %2578
  %2968 = fadd fast float %2967, 1.000000e+00
  %2969 = fsub fast float %2968, %2964
  %2970 = fadd fast float %2969, %2965
  %2971 = fdiv fast float %2963, %2970
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2973 = fsub fast float %2972, %2092
  %2974 = fmul fast float %2973, %2897
  %2975 = fadd fast float %2974, %2092
  %2976 = fmul fast float %2900, %2684
  %2977 = fmul fast float %2900, %2685
  %2978 = fmul fast float %2900, %2686
  %2979 = fadd fast float %2976, %2088
  %2980 = fadd fast float %2977, %2089
  %2981 = fadd fast float %2978, %2090
  %2982 = fmul fast float %2903, %2739
  %2983 = fadd fast float %2982, %2094
  %2984 = fmul fast float %2906, %2736
  %2985 = fmul fast float %2906, %2737
  %2986 = fmul fast float %2906, %2738
  %2987 = fadd fast float %2984, %2085
  %2988 = fadd fast float %2985, %2086
  %2989 = fadd fast float %2986, %2087
  br label %3018

; <label>:2990                                    ; preds = %2942
  %2991 = icmp eq i32 %2886, 8
  br i1 %2991, label %2992, label %3018

; <label>:2992                                    ; preds = %2990
  %2993 = fmul fast float %2891, %2579
  %2994 = fmul fast float %2891, %2580
  %2995 = fadd fast float %2993, %2077
  %2996 = fadd fast float %2994, %2078
  %2997 = call float @dx.op.binary.f32(i32 36, float %2093, float %2581)  ; FMin(a,b)
  %2998 = fsub fast float %2997, %2093
  %2999 = fmul fast float %2998, %2894
  %3000 = fadd fast float %2999, %2093
  %3001 = fsub fast float %2578, %2092
  %3002 = fmul fast float %2897, %3001
  %3003 = fadd fast float %3002, %2092
  %3004 = fmul fast float %2900, %2684
  %3005 = fmul fast float %2900, %2685
  %3006 = fmul fast float %2900, %2686
  %3007 = fadd fast float %3004, %2088
  %3008 = fadd fast float %3005, %2089
  %3009 = fadd fast float %3006, %2090
  %3010 = fmul fast float %2903, %2739
  %3011 = fadd fast float %3010, %2094
  %3012 = fmul fast float %2906, %2736
  %3013 = fmul fast float %2906, %2737
  %3014 = fmul fast float %2906, %2738
  %3015 = fadd fast float %3012, %2085
  %3016 = fadd fast float %3013, %2086
  %3017 = fadd fast float %3014, %2087
  br label %3018

; <label>:3018                                    ; preds = %2992, %2990, %2944, %2908, %2877, %2277, %2096, %2076
  %3019 = phi float [ %2077, %2877 ], [ %2077, %2277 ], [ %2077, %2076 ], [ %2995, %2992 ], [ %2077, %2990 ], [ %2947, %2944 ], [ %2913, %2908 ], [ %2077, %2096 ]
  %3020 = phi float [ %2078, %2877 ], [ %2078, %2277 ], [ %2078, %2076 ], [ %2996, %2992 ], [ %2078, %2990 ], [ %2948, %2944 ], [ %2914, %2908 ], [ %2078, %2096 ]
  %3021 = phi float [ %2878, %2877 ], [ %2079, %2277 ], [ %2079, %2076 ], [ %2878, %2992 ], [ %2878, %2990 ], [ %2878, %2944 ], [ %2878, %2908 ], [ %2079, %2096 ]
  %3022 = phi float [ %2879, %2877 ], [ %2080, %2277 ], [ %2080, %2076 ], [ %2879, %2992 ], [ %2879, %2990 ], [ %2879, %2944 ], [ %2879, %2908 ], [ %2080, %2096 ]
  %3023 = phi float [ %2880, %2877 ], [ %2081, %2277 ], [ %2081, %2076 ], [ %2880, %2992 ], [ %2880, %2990 ], [ %2880, %2944 ], [ %2880, %2908 ], [ %2081, %2096 ]
  %3024 = phi float [ %2881, %2877 ], [ %2082, %2277 ], [ %2082, %2076 ], [ %2881, %2992 ], [ %2881, %2990 ], [ %2881, %2944 ], [ %2881, %2908 ], [ %2082, %2096 ]
  %3025 = phi float [ %2882, %2877 ], [ %2083, %2277 ], [ %2083, %2076 ], [ %2882, %2992 ], [ %2882, %2990 ], [ %2882, %2944 ], [ %2882, %2908 ], [ %2083, %2096 ]
  %3026 = phi float [ %2883, %2877 ], [ %2084, %2277 ], [ %2084, %2076 ], [ %2883, %2992 ], [ %2883, %2990 ], [ %2883, %2944 ], [ %2883, %2908 ], [ %2084, %2096 ]
  %3027 = phi float [ %2085, %2877 ], [ %2085, %2277 ], [ %2085, %2076 ], [ %3015, %2992 ], [ %2085, %2990 ], [ %2987, %2944 ], [ %2939, %2908 ], [ %2085, %2096 ]
  %3028 = phi float [ %2086, %2877 ], [ %2086, %2277 ], [ %2086, %2076 ], [ %3016, %2992 ], [ %2086, %2990 ], [ %2988, %2944 ], [ %2940, %2908 ], [ %2086, %2096 ]
  %3029 = phi float [ %2087, %2877 ], [ %2087, %2277 ], [ %2087, %2076 ], [ %3017, %2992 ], [ %2087, %2990 ], [ %2989, %2944 ], [ %2941, %2908 ], [ %2087, %2096 ]
  %3030 = phi float [ %2088, %2877 ], [ %2088, %2277 ], [ %2088, %2076 ], [ %3007, %2992 ], [ %2088, %2990 ], [ %2979, %2944 ], [ %2927, %2908 ], [ %2088, %2096 ]
  %3031 = phi float [ %2089, %2877 ], [ %2089, %2277 ], [ %2089, %2076 ], [ %3008, %2992 ], [ %2089, %2990 ], [ %2980, %2944 ], [ %2928, %2908 ], [ %2089, %2096 ]
  %3032 = phi float [ %2090, %2877 ], [ %2090, %2277 ], [ %2090, %2076 ], [ %3009, %2992 ], [ %2090, %2990 ], [ %2981, %2944 ], [ %2929, %2908 ], [ %2090, %2096 ]
  %3033 = phi float [ %2884, %2877 ], [ %2091, %2277 ], [ %2091, %2076 ], [ %2884, %2992 ], [ %2884, %2990 ], [ %2884, %2944 ], [ %2884, %2908 ], [ %2091, %2096 ]
  %3034 = phi float [ %2092, %2877 ], [ %2092, %2277 ], [ %2092, %2076 ], [ %3003, %2992 ], [ %2092, %2990 ], [ %2975, %2944 ], [ %2920, %2908 ], [ %2092, %2096 ]
  %3035 = phi float [ %2093, %2877 ], [ %2093, %2277 ], [ %2093, %2076 ], [ %3000, %2992 ], [ %2093, %2990 ], [ %2952, %2944 ], [ %2917, %2908 ], [ %2093, %2096 ]
  %3036 = phi float [ %2094, %2877 ], [ %2094, %2277 ], [ %2094, %2076 ], [ %3011, %2992 ], [ %2094, %2990 ], [ %2983, %2944 ], [ %2932, %2908 ], [ %2094, %2096 ]
  %3037 = phi float [ %2885, %2877 ], [ %2095, %2277 ], [ %2095, %2076 ], [ %2885, %2992 ], [ %2885, %2990 ], [ %2885, %2944 ], [ %2885, %2908 ], [ %2095, %2096 ]
  br i1 %425, label %3960, label %3038

; <label>:3038                                    ; preds = %3018
  %3039 = icmp ult i32 %479, 4
  %3040 = add i32 %42, 72
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = add i32 %42, 76
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = or i32 %3045, %3042
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3960, label %3048

; <label>:3048                                    ; preds = %3038
  %3049 = and i32 %3042, 262144
  %3050 = icmp ne i32 %3049, 0
  %3051 = select i1 %3050, float %47, float 1.000000e+00
  %3052 = select i1 %3050, float %48, float 0.000000e+00
  %3053 = select i1 %3050, float %49, float 0.000000e+00
  %3054 = select i1 %3050, float %50, float 1.000000e+00
  %3055 = select i1 %3050, float %51, float %79
  %3056 = select i1 %3050, float %52, float %80
  %3057 = add i32 %42, 332
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = lshr i32 %3059, 16
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = fmul fast float %3061, 0x3F50624DE0000000
  %3063 = add i32 %42, 136
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = lshr i32 %3065, 16
  %3067 = and i32 %3066, 255
  %3068 = lshr i32 %3065, 24
  %3069 = add i32 %42, 340
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = and i32 %3071, 65535
  %3073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3072)  ; LegacyF16ToF32(value)
  %3074 = lshr i32 %3071, 16
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = add i32 %42, 80
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = lshr i32 %3078, 22
  %3080 = shl nuw nsw i32 %3079, 5
  %3081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3080)  ; LegacyF16ToF32(value)
  %3082 = shl i32 %3078, 4
  %3083 = and i32 %3082, 32752
  %3084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3083)  ; LegacyF16ToF32(value)
  %3085 = lshr i32 %3078, 7
  %3086 = and i32 %3085, 32752
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3090 = fmul fast float %3089, 1.000000e+03
  %3091 = fmul fast float %415, %3090
  %3092 = call float @dx.op.unary.f32(i32 22, float %3091)  ; Frc(value)
  %3093 = fadd fast float %3092, %405
  %3094 = fmul fast float %416, %3090
  %3095 = call float @dx.op.unary.f32(i32 22, float %3094)  ; Frc(value)
  %3096 = fadd fast float %3095, %407
  %3097 = fmul fast float %3062, %3090
  %3098 = call float @dx.op.unary.f32(i32 22, float %3097)  ; Frc(value)
  %3099 = fmul fast float %3098, 0x401921FB60000000
  %3100 = fadd fast float %3099, %3081
  %3101 = call float @dx.op.unary.f32(i32 13, float %3100)  ; Sin(value)
  %3102 = call float @dx.op.unary.f32(i32 12, float %3100)  ; Cos(value)
  %3103 = fsub fast float -0.000000e+00, %3101
  %3104 = fadd fast float %3055, -5.000000e-01
  %3105 = fadd fast float %3056, -5.000000e-01
  %3106 = fmul fast float %3073, %3104
  %3107 = fmul fast float %3075, %3105
  %3108 = fadd fast float %3106, 5.000000e-01
  %3109 = fadd fast float %3107, 5.000000e-01
  %3110 = fmul fast float %3084, %3108
  %3111 = fmul fast float %3087, %3109
  %3112 = fmul fast float %3102, %3110
  %3113 = call float @dx.op.tertiary.f32(i32 46, float %3103, float %3111, float %3112)  ; FMad(a,b,c)
  %3114 = fmul fast float %3101, %3110
  %3115 = call float @dx.op.tertiary.f32(i32 46, float %3102, float %3111, float %3114)  ; FMad(a,b,c)
  %3116 = fadd fast float %3093, %3113
  %3117 = fadd fast float %3096, %3115
  %3118 = icmp ugt i32 %3067, 1
  %3119 = icmp ugt i32 %3065, 33554431
  %3120 = or i1 %3119, %3118
  br i1 %3120, label %3121, label %3146

; <label>:3121                                    ; preds = %3048
  %3122 = add i32 %42, 276
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = lshr i32 %3124, 16
  %3126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3125)  ; LegacyF16ToF32(value)
  %3127 = fmul fast float %3089, %3126
  %3128 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3129 = mul nuw nsw i32 %3067, %3068
  %3130 = uitofp i32 %3129 to float
  %3131 = fmul fast float %3128, %3130
  %3132 = call float @dx.op.unary.f32(i32 27, float %3131)  ; Round_ni(value)
  %3133 = fptoui float %3132 to i32
  %3134 = urem i32 %3133, %3067
  %3135 = udiv i32 %3133, %3068
  %3136 = call float @dx.op.unary.f32(i32 22, float %3116)  ; Frc(value)
  %3137 = call float @dx.op.unary.f32(i32 22, float %3117)  ; Frc(value)
  %3138 = uitofp i32 %3134 to float
  %3139 = uitofp i32 %3135 to float
  %3140 = fadd fast float %3136, %3138
  %3141 = fadd fast float %3137, %3139
  %3142 = uitofp i32 %3067 to float
  %3143 = uitofp i32 %3068 to float
  %3144 = fdiv fast float %3140, %3142
  %3145 = fdiv fast float %3141, %3143
  br label %3146

; <label>:3146                                    ; preds = %3121, %3048
  %3147 = phi float [ %3144, %3121 ], [ %3116, %3048 ]
  %3148 = phi float [ %3145, %3121 ], [ %3117, %3048 ]
  %3149 = and i32 %3042, 256
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3197, label %3151

; <label>:3151                                    ; preds = %3146
  %3152 = add i32 %42, 452
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = add i32 %3154, 0
  %3156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3156, %dx.types.Handle %94, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = add i32 %42, 148
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = shl i32 %3161, 4
  %3163 = and i32 %3162, 32752
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = lshr i32 %3161, 7
  %3166 = and i32 %3165, 32752
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = fsub fast float 1.000000e+00, %474
  %3169 = call float @dx.op.binary.f32(i32 35, float %3168, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3170 = bitcast float %474 to i32
  %3171 = sitofp i32 %3170 to float
  %3172 = fadd fast float %3171, 0xC1CFBF8940000000
  %3173 = fmul fast float %3167, %3172
  %3174 = fadd fast float %3173, 0x41CFBF8940000000
  %3175 = fptosi float %3174 to i32
  %3176 = bitcast i32 %3175 to float
  %3177 = bitcast float %3169 to i32
  %3178 = sitofp i32 %3177 to float
  %3179 = fadd fast float %3178, 0xC1CFBF8940000000
  %3180 = fmul fast float %3179, %3167
  %3181 = fadd fast float %3180, 0x41CFBF8940000000
  %3182 = fptosi float %3181 to i32
  %3183 = bitcast i32 %3182 to float
  %3184 = fmul fast float %3176, %3164
  %3185 = fmul fast float %3183, %3164
  %3186 = fsub fast float %3169, %3184
  %3187 = fadd fast float %3185, %3169
  %3188 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3189 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3190 = fsub fast float %3158, %3188
  %3191 = fsub fast float %3189, %3188
  %3192 = bitcast float %3191 to i32
  %3193 = sub nsw i32 2129859010, %3192
  %3194 = bitcast i32 %3193 to float
  %3195 = fmul fast float %3194, %3190
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  br label %3197

; <label>:3197                                    ; preds = %3151, %3146
  %3198 = phi float [ %3196, %3151 ], [ %474, %3146 ]
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 128
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3219, label %3203

; <label>:3203                                    ; preds = %3197
  %3204 = add i32 %42, 436
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %94, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 524288
  %3214 = icmp ne i32 %3213, 0
  %3215 = fcmp fast ogt float %3210, 0x3FE0101020000000
  %3216 = select i1 %3215, float 1.000000e+00, float 0.000000e+00
  %3217 = select i1 %3214, float %3216, float %3210
  %3218 = fmul fast float %3217, %3198
  br label %3219

; <label>:3219                                    ; preds = %3203, %3197
  %3220 = phi float [ %3218, %3203 ], [ %3198, %3197 ]
  %3221 = fcmp fast ult float %3220, 0x3F70101020000000
  br i1 %3221, label %3960, label %3222

; <label>:3222                                    ; preds = %3219
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 16
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %3425, label %3227

; <label>:3227                                    ; preds = %3222
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %42, 388
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %3232, 0
  %3234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3234, %dx.types.Handle %93, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = extractvalue %dx.types.ResRet.f32 %3235, 3
  %3240 = and i32 %3229, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = lshr i32 %3229, 8
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = fmul fast float %3239, %3241
  %3246 = fadd fast float %3245, %3244
  %3247 = fmul fast float %3246, 0x3F70101000000000
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 512
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3260, label %3252

; <label>:3252                                    ; preds = %3227
  %3253 = add i32 %42, 472
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = add i32 %3255, 0
  %3257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3257, %dx.types.Handle %94, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  br label %3260

; <label>:3260                                    ; preds = %3252, %3227
  %3261 = phi float [ %3259, %3252 ], [ 1.000000e+00, %3227 ]
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 33554432
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3372, label %3266

; <label>:3266                                    ; preds = %3260
  %3267 = add i32 %42, 272
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 65535
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = lshr i32 %3269, 16
  %3273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3272)  ; LegacyF16ToF32(value)
  %3274 = add i32 %42, 276
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 65535
  %3278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3277)  ; LegacyF16ToF32(value)
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = lshr i32 %3280, 24
  %3282 = uitofp i32 %3281 to float
  %3283 = fmul fast float %3282, 0x3F70101020000000
  %3284 = and i32 %3280, 255
  %3285 = uitofp i32 %3284 to float
  %3286 = fmul fast float %3285, 0x3F70101020000000
  %3287 = lshr i32 %3280, 8
  %3288 = and i32 %3287, 255
  %3289 = uitofp i32 %3288 to float
  %3290 = fmul fast float %3289, 0x3F70101020000000
  %3291 = lshr i32 %3280, 16
  %3292 = and i32 %3291, 255
  %3293 = uitofp i32 %3292 to float
  %3294 = fmul fast float %3293, 0x3F70101020000000
  %3295 = add i32 %42, 268
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = lshr i32 %3297, 24
  %3299 = uitofp i32 %3298 to float
  %3300 = fmul fast float %3299, 0x3F70101020000000
  %3301 = and i32 %3297, 255
  %3302 = uitofp i32 %3301 to float
  %3303 = fmul fast float %3302, 0x3F70101020000000
  %3304 = lshr i32 %3297, 8
  %3305 = and i32 %3304, 255
  %3306 = uitofp i32 %3305 to float
  %3307 = fmul fast float %3306, 0x3F70101020000000
  %3308 = lshr i32 %3297, 16
  %3309 = and i32 %3308, 255
  %3310 = uitofp i32 %3309 to float
  %3311 = fmul fast float %3310, 0x3F70101020000000
  %3312 = bitcast float %3236 to i32
  %3313 = ashr i32 %3312, 1
  %3314 = sub nsw i32 1597463174, %3313
  %3315 = bitcast i32 %3314 to float
  %3316 = fmul fast float %3236, 5.000000e-01
  %3317 = fmul fast float %3315, %3315
  %3318 = fmul fast float %3317, %3316
  %3319 = fsub fast float 1.500000e+00, %3318
  %3320 = fmul fast float %3315, %3236
  %3321 = fmul fast float %3320, %3319
  %3322 = bitcast float %3237 to i32
  %3323 = ashr i32 %3322, 1
  %3324 = sub nsw i32 1597463174, %3323
  %3325 = bitcast i32 %3324 to float
  %3326 = fmul fast float %3237, 5.000000e-01
  %3327 = fmul fast float %3325, %3325
  %3328 = fmul fast float %3327, %3326
  %3329 = fsub fast float 1.500000e+00, %3328
  %3330 = fmul fast float %3325, %3237
  %3331 = fmul fast float %3330, %3329
  %3332 = bitcast float %3238 to i32
  %3333 = ashr i32 %3332, 1
  %3334 = sub nsw i32 1597463174, %3333
  %3335 = bitcast i32 %3334 to float
  %3336 = fmul fast float %3238, 5.000000e-01
  %3337 = fmul fast float %3335, %3335
  %3338 = fmul fast float %3337, %3336
  %3339 = fsub fast float 1.500000e+00, %3338
  %3340 = fmul fast float %3335, %3238
  %3341 = fmul fast float %3340, %3339
  %3342 = fsub fast float %3321, %3303
  %3343 = fsub fast float %3331, %3307
  %3344 = fsub fast float %3341, %3311
  %3345 = fmul fast float %3342, %3271
  %3346 = fmul fast float %3343, %3273
  %3347 = fmul fast float %3344, %3278
  %3348 = fadd fast float %3345, %3286
  %3349 = fadd fast float %3346, %3290
  %3350 = fadd fast float %3347, %3294
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3353 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3354 = fmul fast float %3351, %3351
  %3355 = fmul fast float %3352, %3352
  %3356 = fmul fast float %3353, %3353
  %3357 = fsub fast float %3354, %3236
  %3358 = fsub fast float %3355, %3237
  %3359 = fsub fast float %3356, %3238
  %3360 = fmul fast float %3357, %3261
  %3361 = fmul fast float %3358, %3261
  %3362 = fmul fast float %3359, %3261
  %3363 = fadd fast float %3360, %3236
  %3364 = fadd fast float %3361, %3237
  %3365 = fadd fast float %3362, %3238
  %3366 = fadd fast float %3283, %3247
  %3367 = fsub fast float %3366, %3300
  %3368 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3369 = fsub fast float %3368, %3247
  %3370 = fmul fast float %3369, %3261
  %3371 = fadd fast float %3370, %3247
  br label %3425

; <label>:3372                                    ; preds = %3260
  %3373 = and i32 %3263, 134217728
  %3374 = icmp eq i32 %3373, 0
  br i1 %3374, label %3409, label %3375

; <label>:3375                                    ; preds = %3372
  %3376 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %3377 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %3378 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fmul fast float %3379, %3261
  %3383 = fmul fast float %3380, %3261
  %3384 = fmul fast float %3381, %3261
  %3385 = fadd fast float %3382, 5.000000e-01
  %3386 = fadd fast float %3383, 5.000000e-01
  %3387 = fadd fast float %3384, 5.000000e-01
  %3388 = call float @dx.op.unary.f32(i32 24, float %3236)  ; Sqrt(value)
  %3389 = call float @dx.op.unary.f32(i32 24, float %3237)  ; Sqrt(value)
  %3390 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3391 = fmul fast float %3385, 2.000000e+00
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = fmul fast float %3392, %3388
  %3394 = fadd fast float %3393, %3391
  %3395 = fmul fast float %3394, %3388
  %3396 = fmul fast float %3386, 2.000000e+00
  %3397 = fsub fast float 1.000000e+00, %3396
  %3398 = fmul fast float %3397, %3389
  %3399 = fadd fast float %3398, %3396
  %3400 = fmul fast float %3399, %3389
  %3401 = fmul fast float %3387, 2.000000e+00
  %3402 = fsub fast float 1.000000e+00, %3401
  %3403 = fmul fast float %3402, %3390
  %3404 = fadd fast float %3403, %3401
  %3405 = fmul fast float %3404, %3390
  %3406 = fmul fast float %3395, %3395
  %3407 = fmul fast float %3400, %3400
  %3408 = fmul fast float %3405, %3405
  br label %3425

; <label>:3409                                    ; preds = %3372
  %3410 = fmul fast float %392, %392
  %3411 = fmul fast float %396, %396
  %3412 = fmul fast float %400, %400
  %3413 = fadd fast float %3410, -1.000000e+00
  %3414 = fadd fast float %3411, -1.000000e+00
  %3415 = fadd fast float %3412, -1.000000e+00
  %3416 = fmul fast float %3261, %3413
  %3417 = fmul fast float %3261, %3414
  %3418 = fmul fast float %3261, %3415
  %3419 = fadd fast float %3416, 1.000000e+00
  %3420 = fadd fast float %3417, 1.000000e+00
  %3421 = fadd fast float %3418, 1.000000e+00
  %3422 = fmul fast float %3419, %3236
  %3423 = fmul fast float %3420, %3237
  %3424 = fmul fast float %3421, %3238
  br label %3425

; <label>:3425                                    ; preds = %3409, %3375, %3266, %3222
  %3426 = phi float [ %3371, %3266 ], [ %3247, %3375 ], [ %3247, %3409 ], [ 0x3FA23C0BE0000000, %3222 ]
  %3427 = phi float [ %3363, %3266 ], [ %3406, %3375 ], [ %3422, %3409 ], [ 1.000000e+00, %3222 ]
  %3428 = phi float [ %3364, %3266 ], [ %3407, %3375 ], [ %3423, %3409 ], [ 1.000000e+00, %3222 ]
  %3429 = phi float [ %3365, %3266 ], [ %3408, %3375 ], [ %3424, %3409 ], [ 1.000000e+00, %3222 ]
  %3430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3431 = extractvalue %dx.types.CBufRet.i32 %3430, 1
  %3432 = and i32 %3431, 1
  %3433 = icmp ne i32 %3432, 0
  %3434 = add i32 %42, 356
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 32
  %3438 = icmp ne i32 %3437, 0
  %3439 = and i1 %3433, %3438
  %3440 = select i1 %3439, float 1.000000e+00, float %3427
  %3441 = select i1 %3439, float 0x3FD3333340000000, float %3428
  %3442 = select i1 %3439, float 0x3FD3333340000000, float %3429
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = and i32 %3444, 32
  %3446 = icmp eq i32 %3445, 0
  br i1 %3446, label %3519, label %3447

; <label>:3447                                    ; preds = %3425
  %3448 = add i32 %42, 140
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = add i32 %42, 404
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = add i32 %3453, 0
  %3455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3455, %dx.types.Handle %93, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.f32 %3456, 1
  %3459 = extractvalue %dx.types.ResRet.f32 %3456, 2
  %3460 = extractvalue %dx.types.ResRet.f32 %3456, 3
  %3461 = and i32 %3450, 255
  %3462 = uitofp i32 %3461 to float
  %3463 = lshr i32 %3450, 8
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = lshr i32 %3450, 16
  %3467 = and i32 %3466, 255
  %3468 = uitofp i32 %3467 to float
  %3469 = fmul fast float %3468, 0x3F70101000000000
  %3470 = fmul fast float %3457, %3462
  %3471 = fadd fast float %3470, %3465
  %3472 = fmul fast float %3471, 0x3F70101000000000
  %3473 = fadd fast float %3458, -5.000000e-01
  %3474 = fadd fast float %3460, -5.000000e-01
  %3475 = fmul fast float %3473, %3469
  %3476 = fmul fast float %3474, %3469
  %3477 = fadd fast float %3475, 5.000000e-01
  %3478 = fadd fast float %3476, 5.000000e-01
  %3479 = fmul fast float %3477, 2.000000e+00
  %3480 = fadd fast float %3479, -1.000000e+00
  %3481 = fmul fast float %3478, 2.000000e+00
  %3482 = fadd fast float %3481, -1.000000e+00
  %3483 = fadd fast float %3480, %3482
  %3484 = fmul fast float %3483, 5.000000e-01
  %3485 = fsub fast float %3480, %3482
  %3486 = fmul fast float %3485, 5.000000e-01
  %3487 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3488 = fsub fast float 1.000000e+00, %3487
  %3489 = call float @dx.op.unary.f32(i32 6, float %3486)  ; FAbs(value)
  %3490 = fsub fast float %3488, %3489
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3486, float %3490, float %3484, float %3486, float %3490)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = call float @dx.op.unary.f32(i32 25, float %3491)  ; Rsqrt(value)
  %3493 = fmul fast float %3484, %3492
  %3494 = fmul fast float %3486, %3492
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = and i32 %3496, 67108864
  %3498 = icmp eq i32 %3497, 0
  br i1 %3498, label %3515, label %3499

; <label>:3499                                    ; preds = %3447
  %3500 = add i32 %42, 328
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = and i32 %3502, 65535
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 65535
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = lshr i32 %3502, 16
  %3510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3509)  ; LegacyF16ToF32(value)
  %3511 = fsub fast float %3472, %3510
  %3512 = fmul fast float %3511, %3504
  %3513 = fadd fast float %3512, %3508
  %3514 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  br label %3515

; <label>:3515                                    ; preds = %3499, %3447
  %3516 = phi float [ %3514, %3499 ], [ %3472, %3447 ]
  %3517 = call float @dx.op.dot2.f32(i32 54, float %3493, float %3494, float %3051, float %3052)  ; Dot2(ax,ay,bx,by)
  %3518 = call float @dx.op.dot2.f32(i32 54, float %3493, float %3494, float %3053, float %3054)  ; Dot2(ax,ay,bx,by)
  br label %3519

; <label>:3519                                    ; preds = %3515, %3425
  %3520 = phi float [ %3516, %3515 ], [ 0x3FD6666660000000, %3425 ]
  %3521 = phi float [ %3517, %3515 ], [ 0.000000e+00, %3425 ]
  %3522 = phi float [ %3518, %3515 ], [ 0.000000e+00, %3425 ]
  %3523 = phi float [ %3459, %3515 ], [ 1.000000e+00, %3425 ]
  %3524 = add i32 %42, 208
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = lshr i32 %3526, 22
  %3528 = shl nuw nsw i32 %3527, 5
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = and i32 %3531, 64
  %3533 = icmp eq i32 %3532, 0
  br i1 %3533, label %3567, label %3534

; <label>:3534                                    ; preds = %3519
  %3535 = add i32 %42, 420
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = add i32 %3537, 0
  %3539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 131072
  %3543 = icmp eq i32 %3542, 0
  %3544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3539, %dx.types.Handle %93, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = fmul fast float %3545, %380
  %3549 = fmul fast float %3546, %383
  %3550 = fmul fast float %3547, %386
  br i1 %3543, label %3557, label %3551

; <label>:3551                                    ; preds = %3534
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = fmul fast float %3553, %3548
  %3555 = fmul fast float %3553, %3549
  %3556 = fmul fast float %3553, %3550
  br label %3557

; <label>:3557                                    ; preds = %3551, %3534
  %3558 = phi float [ %3554, %3551 ], [ %3548, %3534 ]
  %3559 = phi float [ %3555, %3551 ], [ %3549, %3534 ]
  %3560 = phi float [ %3556, %3551 ], [ %3550, %3534 ]
  %3561 = fmul fast float %3558, %3529
  %3562 = select i1 %237, float %3561, float %3558
  %3563 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3559, float %3560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3564 = select i1 %237, float 0.000000e+00, float %3558
  %3565 = select i1 %237, float %3563, float %3559
  %3566 = select i1 %237, float 0.000000e+00, float %3560
  br label %3567

; <label>:3567                                    ; preds = %3557, %3519
  %3568 = phi float [ %3564, %3557 ], [ 0.000000e+00, %3519 ]
  %3569 = phi float [ %3565, %3557 ], [ 0.000000e+00, %3519 ]
  %3570 = phi float [ %3566, %3557 ], [ 0.000000e+00, %3519 ]
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = and i32 %3572, 1024
  %3574 = icmp eq i32 %3573, 0
  br i1 %3574, label %3605, label %3575

; <label>:3575                                    ; preds = %3567
  %3576 = add i32 %42, 200
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 255
  %3580 = uitofp i32 %3579 to float
  %3581 = fmul fast float %3580, 0x3F70101020000000
  %3582 = lshr i32 %3578, 8
  %3583 = and i32 %3582, 255
  %3584 = uitofp i32 %3583 to float
  %3585 = fmul fast float %3584, 0x3F70101020000000
  %3586 = lshr i32 %3578, 16
  %3587 = and i32 %3586, 255
  %3588 = uitofp i32 %3587 to float
  %3589 = fmul fast float %3588, 0x3F70101020000000
  %3590 = fmul fast float %3581, %3581
  %3591 = fmul fast float %3585, %3585
  %3592 = fmul fast float %3589, %3589
  %3593 = add i32 %42, 488
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = add i32 %3595, 0
  %3597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3597, %dx.types.Handle %94, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = fmul fast float %3590, %3599
  %3603 = fmul fast float %3591, %3600
  %3604 = fmul fast float %3592, %3601
  br label %3605

; <label>:3605                                    ; preds = %3575, %3567
  %3606 = phi float [ %3602, %3575 ], [ 0.000000e+00, %3567 ]
  %3607 = phi float [ %3603, %3575 ], [ 0.000000e+00, %3567 ]
  %3608 = phi float [ %3604, %3575 ], [ 0.000000e+00, %3567 ]
  %3609 = fcmp fast ogt float %3606, 0.000000e+00
  %3610 = fcmp fast ogt float %3607, 0.000000e+00
  %3611 = fcmp fast ogt float %3608, 0.000000e+00
  %3612 = call float @dx.op.unary.f32(i32 23, float %3606)  ; Log(value)
  %3613 = call float @dx.op.unary.f32(i32 23, float %3607)  ; Log(value)
  %3614 = call float @dx.op.unary.f32(i32 23, float %3608)  ; Log(value)
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = lshr i32 %3616, 7
  %3618 = and i32 %3617, 32752
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = fmul fast float %3612, 0xBFE62E4300000000
  %3621 = fmul fast float %3620, %3619
  %3622 = fmul fast float %3613, 0xBFE62E4300000000
  %3623 = fmul fast float %3622, %3619
  %3624 = fmul fast float %3614, 0xBFE62E4300000000
  %3625 = fmul fast float %3624, %3619
  %3626 = select i1 %3609, float %3621, float 1.270000e+02
  %3627 = select i1 %3610, float %3623, float 1.270000e+02
  %3628 = select i1 %3611, float %3625, float 1.270000e+02
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 10240
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3677, label %3633

; <label>:3633                                    ; preds = %3605
  %3634 = add i32 %42, 504
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = add i32 %3636, 0
  %3638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3638, %dx.types.Handle %94, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = and i32 %3643, 1048576
  %3645 = icmp ne i32 %3644, 0
  %3646 = and i32 %3643, 8192
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3663, label %3648

; <label>:3648                                    ; preds = %3633
  %3649 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3650 = select i1 %3645, float %3649, float %3640
  %3651 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3652 = select i1 %3645, float %3651, float %3640
  %3653 = add i32 %42, 144
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = lshr i32 %3655, 16
  %3657 = and i32 %3656, 255
  %3658 = uitofp i32 %3657 to float
  %3659 = fmul fast float %3658, 0x3F80101020000000
  %3660 = fmul fast float %3659, %3652
  %3661 = fmul fast float %3659, %3640
  %3662 = fmul fast float %3659, %3650
  br label %3663

; <label>:3663                                    ; preds = %3648, %3633
  %3664 = phi float [ %3660, %3648 ], [ 0.000000e+00, %3633 ]
  %3665 = phi float [ %3661, %3648 ], [ 0.000000e+00, %3633 ]
  %3666 = phi float [ %3662, %3648 ], [ 0.000000e+00, %3633 ]
  %3667 = and i32 %3643, 2048
  %3668 = icmp eq i32 %3667, 0
  br i1 %3668, label %3677, label %3669

; <label>:3669                                    ; preds = %3663
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = shl i32 %3671, 4
  %3673 = and i32 %3672, 32752
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = fmul fast float %3674, %3641
  %3676 = call float @dx.op.binary.f32(i32 35, float %3675, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3677

; <label>:3677                                    ; preds = %3669, %3663, %3605
  %3678 = phi float [ %3664, %3669 ], [ %3664, %3663 ], [ 0.000000e+00, %3605 ]
  %3679 = phi float [ %3665, %3669 ], [ %3665, %3663 ], [ 0.000000e+00, %3605 ]
  %3680 = phi float [ %3666, %3669 ], [ %3666, %3663 ], [ 0.000000e+00, %3605 ]
  %3681 = phi float [ %3676, %3669 ], [ 0x3F70101020000000, %3663 ], [ 0x3F70101020000000, %3605 ]
  %3682 = add i32 %42, 144
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = and i32 %3684, 255
  %3686 = uitofp i32 %3685 to float
  %3687 = lshr i32 %3684, 8
  %3688 = and i32 %3687, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3440, float %3441, float %3442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = fmul fast float %3689, %3690
  %3692 = fadd fast float %3691, %3686
  %3693 = fmul fast float %3692, 0x3F70101020000000
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  br i1 %3039, label %3695, label %3730

; <label>:3695                                    ; preds = %3677
  %3696 = fmul fast float %3681, 2.000000e+00
  %3697 = fcmp fast olt float %3626, 1.270000e+02
  %3698 = fcmp fast olt float %3627, 1.270000e+02
  %3699 = fcmp fast olt float %3628, 1.270000e+02
  %3700 = fmul fast float %3626, 0xBFF7154760000000
  %3701 = fmul fast float %3700, %3696
  %3702 = fmul fast float %3627, 0xBFF7154760000000
  %3703 = fmul fast float %3702, %3696
  %3704 = fmul fast float %3628, 0xBFF7154760000000
  %3705 = fmul fast float %3704, %3696
  %3706 = call float @dx.op.unary.f32(i32 21, float %3701)  ; Exp(value)
  %3707 = call float @dx.op.unary.f32(i32 21, float %3703)  ; Exp(value)
  %3708 = call float @dx.op.unary.f32(i32 21, float %3705)  ; Exp(value)
  %3709 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3710 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3711 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3712 = fadd fast float %3709, -1.000000e+00
  %3713 = select i1 %3697, float %3712, float -1.000000e+00
  %3714 = fadd fast float %3710, -1.000000e+00
  %3715 = select i1 %3698, float %3714, float -1.000000e+00
  %3716 = fadd fast float %3711, -1.000000e+00
  %3717 = select i1 %3699, float %3716, float -1.000000e+00
  %3718 = fmul fast float %3713, %3220
  %3719 = fmul fast float %3715, %3220
  %3720 = fmul fast float %3717, %3220
  %3721 = fadd fast float %3718, 1.000000e+00
  %3722 = fadd fast float %3719, 1.000000e+00
  %3723 = fadd fast float %3720, 1.000000e+00
  %3724 = fmul fast float %3721, %3024
  %3725 = fmul fast float %3722, %3025
  %3726 = fmul fast float %3723, %3026
  %3727 = fmul fast float %3721, %3021
  %3728 = fmul fast float %3722, %3022
  %3729 = fmul fast float %3723, %3023
  br label %3730

; <label>:3730                                    ; preds = %3695, %3677
  %3731 = phi float [ %3727, %3695 ], [ %3021, %3677 ]
  %3732 = phi float [ %3728, %3695 ], [ %3022, %3677 ]
  %3733 = phi float [ %3729, %3695 ], [ %3023, %3677 ]
  %3734 = phi float [ %3724, %3695 ], [ %3024, %3677 ]
  %3735 = phi float [ %3725, %3695 ], [ %3025, %3677 ]
  %3736 = phi float [ %3726, %3695 ], [ %3026, %3677 ]
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = and i32 %3738, 3
  %3740 = icmp eq i32 %3739, 3
  br i1 %3740, label %3819, label %3741

; <label>:3741                                    ; preds = %3730
  %3742 = and i32 %3738, 16
  %3743 = icmp ne i32 %3742, 0
  %3744 = select i1 %3743, float %3220, float 0.000000e+00
  %3745 = icmp eq i32 %3739, 0
  br i1 %3745, label %3746, label %3774

; <label>:3746                                    ; preds = %3741
  %3747 = and i32 %3738, 64
  %3748 = icmp ne i32 %3747, 0
  %3749 = select i1 %3748, float %3220, float 0.000000e+00
  %3750 = fsub fast float %3440, %3734
  %3751 = fsub fast float %3441, %3735
  %3752 = fsub fast float %3442, %3736
  %3753 = fmul fast float %3744, %3750
  %3754 = fmul fast float %3744, %3751
  %3755 = fmul fast float %3744, %3752
  %3756 = fadd fast float %3753, %3734
  %3757 = fadd fast float %3754, %3735
  %3758 = fadd fast float %3755, %3736
  %3759 = fsub fast float %3426, %3033
  %3760 = fmul fast float %3744, %3759
  %3761 = fadd fast float %3760, %3033
  %3762 = fsub fast float %3568, %3731
  %3763 = fsub fast float %3569, %3732
  %3764 = fsub fast float %3570, %3733
  %3765 = fmul fast float %3749, %3762
  %3766 = fmul fast float %3749, %3763
  %3767 = fmul fast float %3749, %3764
  %3768 = fadd fast float %3765, %3731
  %3769 = fadd fast float %3766, %3732
  %3770 = fadd fast float %3767, %3733
  %3771 = fsub fast float %3694, %3037
  %3772 = fmul fast float %3744, %3771
  %3773 = fadd fast float %3772, %3037
  br label %3819

; <label>:3774                                    ; preds = %3741
  %3775 = icmp eq i32 %3739, 1
  br i1 %3775, label %3776, label %3789

; <label>:3776                                    ; preds = %3774
  %3777 = fadd fast float %3440, -1.000000e+00
  %3778 = fadd fast float %3441, -1.000000e+00
  %3779 = fadd fast float %3442, -1.000000e+00
  %3780 = fmul fast float %3744, %3777
  %3781 = fmul fast float %3744, %3778
  %3782 = fmul fast float %3744, %3779
  %3783 = fadd fast float %3780, 1.000000e+00
  %3784 = fadd fast float %3781, 1.000000e+00
  %3785 = fadd fast float %3782, 1.000000e+00
  %3786 = fmul fast float %3783, %3734
  %3787 = fmul fast float %3784, %3735
  %3788 = fmul fast float %3785, %3736
  br label %3819

; <label>:3789                                    ; preds = %3774
  %3790 = icmp eq i32 %3739, 2
  br i1 %3790, label %3791, label %3819

; <label>:3791                                    ; preds = %3789
  %3792 = call float @dx.op.unary.f32(i32 24, float %3440)  ; Sqrt(value)
  %3793 = call float @dx.op.unary.f32(i32 24, float %3441)  ; Sqrt(value)
  %3794 = call float @dx.op.unary.f32(i32 24, float %3442)  ; Sqrt(value)
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fadd fast float %3793, -5.000000e-01
  %3797 = fadd fast float %3794, -5.000000e-01
  %3798 = fmul fast float %3795, %3744
  %3799 = fmul fast float %3796, %3744
  %3800 = fmul fast float %3797, %3744
  %3801 = fadd fast float %3798, 5.000000e-01
  %3802 = fadd fast float %3799, 5.000000e-01
  %3803 = fadd fast float %3800, 5.000000e-01
  %3804 = fmul fast float %3801, 2.000000e+00
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = fmul fast float %3805, %3734
  %3807 = fadd fast float %3806, %3804
  %3808 = fmul fast float %3807, %3734
  %3809 = fmul fast float %3802, 2.000000e+00
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = fmul fast float %3810, %3735
  %3812 = fadd fast float %3811, %3809
  %3813 = fmul fast float %3812, %3735
  %3814 = fmul fast float %3803, 2.000000e+00
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = fmul fast float %3815, %3736
  %3817 = fadd fast float %3816, %3814
  %3818 = fmul fast float %3817, %3736
  br label %3819

; <label>:3819                                    ; preds = %3791, %3789, %3776, %3746, %3730
  %3820 = phi float [ %3731, %3730 ], [ %3731, %3791 ], [ %3731, %3789 ], [ %3731, %3776 ], [ %3768, %3746 ]
  %3821 = phi float [ %3732, %3730 ], [ %3732, %3791 ], [ %3732, %3789 ], [ %3732, %3776 ], [ %3769, %3746 ]
  %3822 = phi float [ %3733, %3730 ], [ %3733, %3791 ], [ %3733, %3789 ], [ %3733, %3776 ], [ %3770, %3746 ]
  %3823 = phi float [ %3734, %3730 ], [ %3808, %3791 ], [ %3734, %3789 ], [ %3786, %3776 ], [ %3756, %3746 ]
  %3824 = phi float [ %3735, %3730 ], [ %3813, %3791 ], [ %3735, %3789 ], [ %3787, %3776 ], [ %3757, %3746 ]
  %3825 = phi float [ %3736, %3730 ], [ %3818, %3791 ], [ %3736, %3789 ], [ %3788, %3776 ], [ %3758, %3746 ]
  %3826 = phi float [ %3033, %3730 ], [ %3033, %3791 ], [ %3033, %3789 ], [ %3033, %3776 ], [ %3761, %3746 ]
  %3827 = phi float [ %3037, %3730 ], [ %3037, %3791 ], [ %3037, %3789 ], [ %3037, %3776 ], [ %3773, %3746 ]
  %3828 = and i32 %3738, 12
  %3829 = icmp eq i32 %3828, 12
  br i1 %3829, label %3960, label %3830

; <label>:3830                                    ; preds = %3819
  %3831 = and i32 %3738, 2097184
  %3832 = icmp eq i32 %3831, 2097184
  %3833 = select i1 %3832, float %3220, float 0.000000e+00
  %3834 = and i32 %3738, 4194336
  %3835 = icmp eq i32 %3834, 4194336
  %3836 = select i1 %3835, float %3220, float 0.000000e+00
  %3837 = and i32 %3738, 8388640
  %3838 = icmp eq i32 %3837, 8388640
  %3839 = select i1 %3838, float %3220, float 0.000000e+00
  %3840 = and i32 %3738, 1024
  %3841 = icmp ne i32 %3840, 0
  %3842 = select i1 %3841, float %3220, float 0.000000e+00
  %3843 = and i32 %3738, 2048
  %3844 = icmp ne i32 %3843, 0
  %3845 = select i1 %3844, float %3220, float 0.000000e+00
  %3846 = and i32 %3738, 8192
  %3847 = icmp ne i32 %3846, 0
  %3848 = select i1 %3847, float %3220, float 0.000000e+00
  %3849 = icmp eq i32 %3828, 0
  br i1 %3849, label %3850, label %3884

; <label>:3850                                    ; preds = %3830
  %3851 = fsub fast float %3521, %3019
  %3852 = fsub fast float %3522, %3020
  %3853 = fmul fast float %3833, %3851
  %3854 = fmul fast float %3833, %3852
  %3855 = fadd fast float %3853, %3019
  %3856 = fadd fast float %3854, %3020
  %3857 = fsub fast float %3523, %3035
  %3858 = fmul fast float %3836, %3857
  %3859 = fadd fast float %3858, %3035
  %3860 = fsub fast float %3520, %3034
  %3861 = fmul fast float %3839, %3860
  %3862 = fadd fast float %3861, %3034
  %3863 = fsub fast float %3626, %3030
  %3864 = fsub fast float %3627, %3031
  %3865 = fsub fast float %3628, %3032
  %3866 = fmul fast float %3842, %3863
  %3867 = fmul fast float %3842, %3864
  %3868 = fmul fast float %3842, %3865
  %3869 = fadd fast float %3866, %3030
  %3870 = fadd fast float %3867, %3031
  %3871 = fadd fast float %3868, %3032
  %3872 = fsub fast float %3681, %3036
  %3873 = fmul fast float %3845, %3872
  %3874 = fadd fast float %3873, %3036
  %3875 = fsub fast float %3678, %3027
  %3876 = fsub fast float %3679, %3028
  %3877 = fsub fast float %3680, %3029
  %3878 = fmul fast float %3848, %3875
  %3879 = fmul fast float %3848, %3876
  %3880 = fmul fast float %3848, %3877
  %3881 = fadd fast float %3878, %3027
  %3882 = fadd fast float %3879, %3028
  %3883 = fadd fast float %3880, %3029
  br label %3960

; <label>:3884                                    ; preds = %3830
  %3885 = icmp eq i32 %3828, 4
  br i1 %3885, label %3886, label %3932

; <label>:3886                                    ; preds = %3884
  %3887 = fmul fast float %3833, %3521
  %3888 = fmul fast float %3833, %3522
  %3889 = fadd fast float %3887, %3019
  %3890 = fadd fast float %3888, %3020
  %3891 = call float @dx.op.binary.f32(i32 36, float %3035, float %3523)  ; FMin(a,b)
  %3892 = fsub fast float %3891, %3035
  %3893 = fmul fast float %3892, %3836
  %3894 = fadd fast float %3893, %3035
  %3895 = fadd fast float %3520, %3034
  %3896 = fmul fast float %3895, 0x3FF337FAE0000000
  %3897 = fmul fast float %3034, %3034
  %3898 = fmul fast float %3520, %3520
  %3899 = fadd fast float %3898, %3897
  %3900 = fmul fast float %3899, 0x3FE5152B00000000
  %3901 = fmul fast float %3034, 0xBFCC1F85E0000000
  %3902 = fmul fast float %3901, %3520
  %3903 = fadd fast float %3902, 0xBFE1363700000000
  %3904 = fadd fast float %3903, %3896
  %3905 = fsub fast float %3904, %3900
  %3906 = fmul fast float %3895, 0x3FBA6F0D00000000
  %3907 = fmul fast float %3899, 0x3FD0432880000000
  %3908 = fmul fast float %3034, 0xBFEF110800000000
  %3909 = fmul fast float %3908, %3520
  %3910 = fadd fast float %3909, 1.000000e+00
  %3911 = fsub fast float %3910, %3906
  %3912 = fadd fast float %3911, %3907
  %3913 = fdiv fast float %3905, %3912
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fsub fast float %3914, %3034
  %3916 = fmul fast float %3915, %3839
  %3917 = fadd fast float %3916, %3034
  %3918 = fmul fast float %3842, %3626
  %3919 = fmul fast float %3842, %3627
  %3920 = fmul fast float %3842, %3628
  %3921 = fadd fast float %3918, %3030
  %3922 = fadd fast float %3919, %3031
  %3923 = fadd fast float %3920, %3032
  %3924 = fmul fast float %3845, %3681
  %3925 = fadd fast float %3924, %3036
  %3926 = fmul fast float %3848, %3678
  %3927 = fmul fast float %3848, %3679
  %3928 = fmul fast float %3848, %3680
  %3929 = fadd fast float %3926, %3027
  %3930 = fadd fast float %3927, %3028
  %3931 = fadd fast float %3928, %3029
  br label %3960

; <label>:3932                                    ; preds = %3884
  %3933 = icmp eq i32 %3828, 8
  br i1 %3933, label %3934, label %3960

; <label>:3934                                    ; preds = %3932
  %3935 = fmul fast float %3833, %3521
  %3936 = fmul fast float %3833, %3522
  %3937 = fadd fast float %3935, %3019
  %3938 = fadd fast float %3936, %3020
  %3939 = call float @dx.op.binary.f32(i32 36, float %3035, float %3523)  ; FMin(a,b)
  %3940 = fsub fast float %3939, %3035
  %3941 = fmul fast float %3940, %3836
  %3942 = fadd fast float %3941, %3035
  %3943 = fsub fast float %3520, %3034
  %3944 = fmul fast float %3839, %3943
  %3945 = fadd fast float %3944, %3034
  %3946 = fmul fast float %3842, %3626
  %3947 = fmul fast float %3842, %3627
  %3948 = fmul fast float %3842, %3628
  %3949 = fadd fast float %3946, %3030
  %3950 = fadd fast float %3947, %3031
  %3951 = fadd fast float %3948, %3032
  %3952 = fmul fast float %3845, %3681
  %3953 = fadd fast float %3952, %3036
  %3954 = fmul fast float %3848, %3678
  %3955 = fmul fast float %3848, %3679
  %3956 = fmul fast float %3848, %3680
  %3957 = fadd fast float %3954, %3027
  %3958 = fadd fast float %3955, %3028
  %3959 = fadd fast float %3956, %3029
  br label %3960

; <label>:3960                                    ; preds = %3934, %3932, %3886, %3850, %3819, %3219, %3038, %3018
  %3961 = phi float [ %3019, %3819 ], [ %3019, %3219 ], [ %3019, %3018 ], [ %3019, %3038 ], [ %3855, %3850 ], [ %3889, %3886 ], [ %3019, %3932 ], [ %3937, %3934 ]
  %3962 = phi float [ %3020, %3819 ], [ %3020, %3219 ], [ %3020, %3018 ], [ %3020, %3038 ], [ %3856, %3850 ], [ %3890, %3886 ], [ %3020, %3932 ], [ %3938, %3934 ]
  %3963 = phi float [ %3820, %3819 ], [ %3021, %3219 ], [ %3021, %3018 ], [ %3021, %3038 ], [ %3820, %3850 ], [ %3820, %3886 ], [ %3820, %3932 ], [ %3820, %3934 ]
  %3964 = phi float [ %3821, %3819 ], [ %3022, %3219 ], [ %3022, %3018 ], [ %3022, %3038 ], [ %3821, %3850 ], [ %3821, %3886 ], [ %3821, %3932 ], [ %3821, %3934 ]
  %3965 = phi float [ %3822, %3819 ], [ %3023, %3219 ], [ %3023, %3018 ], [ %3023, %3038 ], [ %3822, %3850 ], [ %3822, %3886 ], [ %3822, %3932 ], [ %3822, %3934 ]
  %3966 = phi float [ %3823, %3819 ], [ %3024, %3219 ], [ %3024, %3018 ], [ %3024, %3038 ], [ %3823, %3850 ], [ %3823, %3886 ], [ %3823, %3932 ], [ %3823, %3934 ]
  %3967 = phi float [ %3824, %3819 ], [ %3025, %3219 ], [ %3025, %3018 ], [ %3025, %3038 ], [ %3824, %3850 ], [ %3824, %3886 ], [ %3824, %3932 ], [ %3824, %3934 ]
  %3968 = phi float [ %3825, %3819 ], [ %3026, %3219 ], [ %3026, %3018 ], [ %3026, %3038 ], [ %3825, %3850 ], [ %3825, %3886 ], [ %3825, %3932 ], [ %3825, %3934 ]
  %3969 = phi float [ %3027, %3819 ], [ %3027, %3219 ], [ %3027, %3018 ], [ %3027, %3038 ], [ %3881, %3850 ], [ %3929, %3886 ], [ %3027, %3932 ], [ %3957, %3934 ]
  %3970 = phi float [ %3028, %3819 ], [ %3028, %3219 ], [ %3028, %3018 ], [ %3028, %3038 ], [ %3882, %3850 ], [ %3930, %3886 ], [ %3028, %3932 ], [ %3958, %3934 ]
  %3971 = phi float [ %3029, %3819 ], [ %3029, %3219 ], [ %3029, %3018 ], [ %3029, %3038 ], [ %3883, %3850 ], [ %3931, %3886 ], [ %3029, %3932 ], [ %3959, %3934 ]
  %3972 = phi float [ %3030, %3819 ], [ %3030, %3219 ], [ %3030, %3018 ], [ %3030, %3038 ], [ %3869, %3850 ], [ %3921, %3886 ], [ %3030, %3932 ], [ %3949, %3934 ]
  %3973 = phi float [ %3031, %3819 ], [ %3031, %3219 ], [ %3031, %3018 ], [ %3031, %3038 ], [ %3870, %3850 ], [ %3922, %3886 ], [ %3031, %3932 ], [ %3950, %3934 ]
  %3974 = phi float [ %3032, %3819 ], [ %3032, %3219 ], [ %3032, %3018 ], [ %3032, %3038 ], [ %3871, %3850 ], [ %3923, %3886 ], [ %3032, %3932 ], [ %3951, %3934 ]
  %3975 = phi float [ %3826, %3819 ], [ %3033, %3219 ], [ %3033, %3018 ], [ %3033, %3038 ], [ %3826, %3850 ], [ %3826, %3886 ], [ %3826, %3932 ], [ %3826, %3934 ]
  %3976 = phi float [ %3034, %3819 ], [ %3034, %3219 ], [ %3034, %3018 ], [ %3034, %3038 ], [ %3862, %3850 ], [ %3917, %3886 ], [ %3034, %3932 ], [ %3945, %3934 ]
  %3977 = phi float [ %3035, %3819 ], [ %3035, %3219 ], [ %3035, %3018 ], [ %3035, %3038 ], [ %3859, %3850 ], [ %3894, %3886 ], [ %3035, %3932 ], [ %3942, %3934 ]
  %3978 = phi float [ %3036, %3819 ], [ %3036, %3219 ], [ %3036, %3018 ], [ %3036, %3038 ], [ %3874, %3850 ], [ %3925, %3886 ], [ %3036, %3932 ], [ %3953, %3934 ]
  %3979 = phi float [ %3827, %3819 ], [ %3037, %3219 ], [ %3037, %3018 ], [ %3037, %3038 ], [ %3827, %3850 ], [ %3827, %3886 ], [ %3827, %3932 ], [ %3827, %3934 ]
  %3980 = add i32 %42, 360
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.i32 %3981, 1
  %3984 = bitcast i32 %3982 to float
  %3985 = bitcast i32 %3983 to float
  %3986 = fcmp fast oge float %3984, 0.000000e+00
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = select i1 %3986, float %3984, float %3988
  %3990 = add i32 %42, 456
  %3991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.i32 %3991, 0
  %3993 = add i32 %3992, 0
  %3994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3994, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = fmul fast float %3996, %3985
  %3998 = fadd fast float %3997, %3989
  %3999 = call float @dx.op.dot2.f32(i32 54, float %3961, float %3962, float %3961, float %3962)  ; Dot2(ax,ay,bx,by)
  %4000 = fmul fast float %3999, 0x3FE3333340000000
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %4001, float %3961, float %3962, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %4003, %3961
  %4005 = fmul fast float %4003, %3962
  %4006 = fmul fast float %4001, %4003
  %4007 = fmul fast float %4006, %104
  %4008 = fmul fast float %4006, %105
  %4009 = fmul fast float %4006, %106
  %4010 = fmul fast float %4004, %72
  %4011 = fmul fast float %4004, %73
  %4012 = fmul fast float %4004, %74
  %4013 = fadd fast float %4007, %4010
  %4014 = fadd fast float %4008, %4011
  %4015 = fadd fast float %4009, %4012
  %4016 = fmul fast float %116, %4005
  %4017 = fmul fast float %117, %4005
  %4018 = fmul fast float %118, %4005
  %4019 = fadd fast float %4013, %4016
  %4020 = fadd fast float %4014, %4017
  %4021 = fadd fast float %4015, %4018
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4019, float %4020, float %4021, float %4019, float %4020, float %4021)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call float @dx.op.unary.f32(i32 25, float %4022)  ; Rsqrt(value)
  %4024 = fmul fast float %4019, %4023
  %4025 = fmul fast float %4020, %4023
  %4026 = fmul fast float %4021, %4023
  %4027 = icmp eq i32 %43, 65535
  br i1 %4027, label %4626, label %4028

; <label>:4028                                    ; preds = %3960
  %4029 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %4030 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %4031 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4032 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %4033 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %4034 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4035 = fadd fast float %4029, %44
  %4036 = fadd fast float %4030, %45
  %4037 = fadd fast float %4031, %46
  %4038 = fadd fast float %4032, %44
  %4039 = fadd fast float %4033, %45
  %4040 = fadd fast float %4034, %46
  %4041 = mul i32 %43, 48
  %4042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  %4046 = add i32 %4041, 16
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = add i32 %4041, 32
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.ResRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.ResRet.f32 %4052, 2
  %4056 = extractvalue %dx.types.ResRet.f32 %4052, 3
  %4057 = bitcast float %4056 to i32
  %4058 = fmul fast float %4043, %44
  %4059 = fmul fast float %4044, %45
  %4060 = fmul fast float %4045, %46
  %4061 = fsub fast float %4058, %4048
  %4062 = fsub fast float %4059, %4049
  %4063 = fsub fast float %4060, %4050
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4065 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4066 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4067 = fmul fast float %4064, %4053
  %4068 = fmul fast float %4065, %4054
  %4069 = fmul fast float %4066, %4055
  %4070 = fadd fast float %4053, -1.000000e+00
  %4071 = fadd fast float %4054, -1.000000e+00
  %4072 = fadd fast float %4055, -1.000000e+00
  %4073 = call float @dx.op.unary.f32(i32 27, float %4067)  ; Round_ni(value)
  %4074 = call float @dx.op.unary.f32(i32 27, float %4068)  ; Round_ni(value)
  %4075 = call float @dx.op.unary.f32(i32 27, float %4069)  ; Round_ni(value)
  %4076 = call float @dx.op.binary.f32(i32 36, float %4073, float %4070)  ; FMin(a,b)
  %4077 = call float @dx.op.binary.f32(i32 36, float %4074, float %4071)  ; FMin(a,b)
  %4078 = call float @dx.op.binary.f32(i32 36, float %4075, float %4072)  ; FMin(a,b)
  %4079 = fmul fast float %4078, %4054
  %4080 = fadd fast float %4079, %4077
  %4081 = fmul fast float %4080, %4053
  %4082 = fadd fast float %4081, %4076
  %4083 = fptosi float %4082 to i32
  %4084 = add nsw i32 %4083, %4057
  %4085 = shl nsw i32 %4084, 2
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = lshr i32 %4087, 16
  %4089 = icmp eq i32 %4088, 0
  br i1 %4089, label %4589, label %4090

; <label>:4090                                    ; preds = %4028
  br label %4091

; <label>:4091                                    ; preds = %4218, %4090
  %4092 = phi i32 [ %4120, %4218 ], [ %4088, %4090 ]
  %4093 = phi float [ %4219, %4218 ], [ 0.000000e+00, %4090 ]
  %4094 = phi float [ %4220, %4218 ], [ %3998, %4090 ]
  %4095 = phi float [ %4221, %4218 ], [ %3979, %4090 ]
  %4096 = phi float [ %4222, %4218 ], [ %3972, %4090 ]
  %4097 = phi float [ %4223, %4218 ], [ %3973, %4090 ]
  %4098 = phi float [ %4224, %4218 ], [ %3974, %4090 ]
  %4099 = phi float [ %4225, %4218 ], [ 0.000000e+00, %4090 ]
  %4100 = phi float [ %4226, %4218 ], [ 0.000000e+00, %4090 ]
  %4101 = phi float [ %4227, %4218 ], [ %3969, %4090 ]
  %4102 = phi float [ %4228, %4218 ], [ %3970, %4090 ]
  %4103 = phi float [ %4229, %4218 ], [ %3971, %4090 ]
  %4104 = phi float [ %4230, %4218 ], [ %3963, %4090 ]
  %4105 = phi float [ %4231, %4218 ], [ %3964, %4090 ]
  %4106 = phi float [ %4232, %4218 ], [ %3965, %4090 ]
  %4107 = phi float [ %4233, %4218 ], [ %4024, %4090 ]
  %4108 = phi float [ %4234, %4218 ], [ %4025, %4090 ]
  %4109 = phi float [ %4235, %4218 ], [ %4026, %4090 ]
  %4110 = phi float [ %4236, %4218 ], [ %3977, %4090 ]
  %4111 = phi float [ %4237, %4218 ], [ %3976, %4090 ]
  %4112 = phi float [ %4238, %4218 ], [ 0.000000e+00, %4090 ]
  %4113 = phi float [ %4239, %4218 ], [ %3975, %4090 ]
  %4114 = phi float [ %4240, %4218 ], [ %3966, %4090 ]
  %4115 = phi float [ %4241, %4218 ], [ %3967, %4090 ]
  %4116 = phi float [ %4242, %4218 ], [ %3968, %4090 ]
  %4117 = shl nuw nsw i32 %4092, 2
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = lshr i32 %4119, 16
  %4121 = shl i32 %4119, 8
  %4122 = and i32 %4121, 16776960
  %4123 = or i32 %4122, 48
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = or i32 %4122, 64
  %4129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.i32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.i32 %4129, 1
  %4132 = or i32 %4122, 80
  %4133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 3
  %4136 = or i32 %4122, 96
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = extractvalue %dx.types.ResRet.f32 %4137, 3
  %4142 = or i32 %4122, 112
  %4143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4145 = or i32 %4122, 128
  %4146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4146, 3
  %4151 = or i32 %4122, 144
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = or i32 %4122, 160
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4162 = extractvalue %dx.types.ResRet.f32 %4158, 3
  %4163 = or i32 %4122, 192
  %4164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.i32 %4164, 0
  %4166 = or i32 %4122, 208
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = or i32 %4122, 248
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4179 = or i32 %4122, 16
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4184 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4185 = call float @dx.op.dot4.f32(i32 56, float %4181, float %4182, float %4183, float %4184, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4186 = or i32 %4122, 32
  %4187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.ResRet.f32 %4187, 3
  %4192 = call float @dx.op.dot4.f32(i32 56, float %4188, float %4189, float %4190, float %4191, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4193 = call float @dx.op.unary.f32(i32 27, float %4178)  ; Round_ni(value)
  %4194 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4195 = call float @dx.op.unary.f32(i32 27, float %4185)  ; Round_ni(value)
  %4196 = call float @dx.op.unary.f32(i32 6, float %4195)  ; FAbs(value)
  %4197 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4198 = call float @dx.op.unary.f32(i32 27, float %4197)  ; Round_ni(value)
  %4199 = fadd fast float %4196, %4194
  %4200 = fadd fast float %4199, %4198
  %4201 = fcmp fast oeq float %4200, 0.000000e+00
  %4202 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %4035, float %4036, float %4037, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4203 = call float @dx.op.dot4.f32(i32 56, float %4181, float %4182, float %4183, float %4184, float %4035, float %4036, float %4037, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4204 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %4038, float %4039, float %4040, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4205 = call float @dx.op.dot4.f32(i32 56, float %4181, float %4182, float %4183, float %4184, float %4038, float %4039, float %4040, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4206 = fsub fast float %4202, %4178
  %4207 = fsub fast float %4204, %4178
  %4208 = fsub fast float %4203, %4185
  %4209 = fsub fast float %4205, %4185
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4126, float %4127, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 2
  %4213 = fadd fast float %4212, %4210
  %4214 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4216 = fcmp fast ogt float %4214, %4215
  %4217 = and i1 %4201, %4216
  br i1 %4217, label %4244, label %4218

; <label>:4218                                    ; preds = %4575, %4327, %4244, %4091
  %4219 = phi float [ %4093, %4244 ], [ %4330, %4327 ], [ %4330, %4575 ], [ %4093, %4091 ]
  %4220 = phi float [ %4094, %4244 ], [ %4094, %4327 ], [ %4551, %4575 ], [ %4094, %4091 ]
  %4221 = phi float [ %4095, %4244 ], [ %4095, %4327 ], [ %4549, %4575 ], [ %4095, %4091 ]
  %4222 = phi float [ %4096, %4244 ], [ %4096, %4327 ], [ %4527, %4575 ], [ %4096, %4091 ]
  %4223 = phi float [ %4097, %4244 ], [ %4097, %4327 ], [ %4528, %4575 ], [ %4097, %4091 ]
  %4224 = phi float [ %4098, %4244 ], [ %4098, %4327 ], [ %4529, %4575 ], [ %4098, %4091 ]
  %4225 = phi float [ %4099, %4244 ], [ %4099, %4327 ], [ %4454, %4575 ], [ %4099, %4091 ]
  %4226 = phi float [ %4100, %4244 ], [ %4100, %4327 ], [ %4452, %4575 ], [ %4100, %4091 ]
  %4227 = phi float [ %4101, %4244 ], [ %4101, %4327 ], [ %4497, %4575 ], [ %4101, %4091 ]
  %4228 = phi float [ %4102, %4244 ], [ %4102, %4327 ], [ %4498, %4575 ], [ %4102, %4091 ]
  %4229 = phi float [ %4103, %4244 ], [ %4103, %4327 ], [ %4499, %4575 ], [ %4103, %4091 ]
  %4230 = phi float [ %4104, %4244 ], [ %4104, %4327 ], [ %4585, %4575 ], [ %4104, %4091 ]
  %4231 = phi float [ %4105, %4244 ], [ %4105, %4327 ], [ %4586, %4575 ], [ %4105, %4091 ]
  %4232 = phi float [ %4106, %4244 ], [ %4106, %4327 ], [ %4587, %4575 ], [ %4106, %4091 ]
  %4233 = phi float [ %4107, %4244 ], [ %4107, %4327 ], [ %4433, %4575 ], [ %4107, %4091 ]
  %4234 = phi float [ %4108, %4244 ], [ %4108, %4327 ], [ %4434, %4575 ], [ %4108, %4091 ]
  %4235 = phi float [ %4109, %4244 ], [ %4109, %4327 ], [ %4435, %4575 ], [ %4109, %4091 ]
  %4236 = phi float [ %4110, %4244 ], [ %4110, %4327 ], [ %4507, %4575 ], [ %4110, %4091 ]
  %4237 = phi float [ %4111, %4244 ], [ %4111, %4327 ], [ %4504, %4575 ], [ %4111, %4091 ]
  %4238 = phi float [ %4112, %4244 ], [ %4112, %4327 ], [ %4501, %4575 ], [ %4112, %4091 ]
  %4239 = phi float [ %4113, %4244 ], [ %4113, %4327 ], [ %4450, %4575 ], [ %4113, %4091 ]
  %4240 = phi float [ %4114, %4244 ], [ %4114, %4327 ], [ %4445, %4575 ], [ %4114, %4091 ]
  %4241 = phi float [ %4115, %4244 ], [ %4115, %4327 ], [ %4446, %4575 ], [ %4115, %4091 ]
  %4242 = phi float [ %4116, %4244 ], [ %4116, %4327 ], [ %4447, %4575 ], [ %4116, %4091 ]
  %4243 = icmp eq i32 %4120, 0
  br i1 %4243, label %4588, label %4091

; <label>:4244                                    ; preds = %4091
  %4245 = extractvalue %dx.types.ResRet.f32 %4124, 3
  %4246 = extractvalue %dx.types.ResRet.f32 %4143, 3
  %4247 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4251 = extractvalue %dx.types.ResRet.i32 %4129, 3
  %4252 = extractvalue %dx.types.ResRet.i32 %4129, 2
  %4253 = bitcast float %4245 to i32
  %4254 = add i32 %4251, 0
  %4255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4254, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4255, %dx.types.Handle %4256, float %4178, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float %4206, float %4208, float undef, float %4207, float %4209, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = fmul fast float %4258, %4250
  %4260 = fadd fast float %4259, %4249
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4178, %4138
  %4263 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4185, float %4262)  ; FMad(a,b,c)
  %4264 = fadd fast float %4263, %4248
  %4265 = fmul fast float %4178, %4140
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4185, float %4265)  ; FMad(a,b,c)
  %4267 = fadd fast float %4266, %4247
  %4268 = fmul fast float %4206, %4138
  %4269 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4208, float %4268)  ; FMad(a,b,c)
  %4270 = fmul fast float %4206, %4140
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4208, float %4270)  ; FMad(a,b,c)
  %4272 = fmul fast float %4207, %4138
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4209, float %4272)  ; FMad(a,b,c)
  %4274 = fmul fast float %4207, %4140
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4209, float %4274)  ; FMad(a,b,c)
  %4276 = add i32 %4252, 0
  %4277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4276, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4277, %dx.types.Handle %4256, float %4264, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float %4269, float %4271, float undef, float %4273, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = and i32 %4253, 1024
  %4281 = icmp ne i32 %4280, 0
  %4282 = fcmp fast ogt float %4279, 0x3FE0101020000000
  %4283 = uitofp i1 %4282 to float
  %4284 = select i1 %4281, float %4283, float %4279
  %4285 = and i32 %4253, 8192
  %4286 = icmp ne i32 %4285, 0
  %4287 = select i1 %4286, float %4246, float 1.000000e+00
  %4288 = fmul fast float %4178, 2.000000e+00
  %4289 = fadd fast float %4288, -1.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 6, float %4289)  ; FAbs(value)
  %4291 = fmul fast float %4290, %4171
  %4292 = fsub fast float %4291, %4171
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fmul fast float %4185, 2.000000e+00
  %4295 = fadd fast float %4294, -1.000000e+00
  %4296 = call float @dx.op.unary.f32(i32 6, float %4295)  ; FAbs(value)
  %4297 = fmul fast float %4296, %4172
  %4298 = fsub fast float %4297, %4172
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fmul fast float %4197, %4134
  %4301 = fsub fast float %4300, %4134
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = fmul fast float %4261, %4287
  %4304 = fmul fast float %4303, %4258
  %4305 = fmul fast float %4304, %4293
  %4306 = fmul fast float %4305, %4284
  %4307 = fmul fast float %4306, %4299
  %4308 = fmul fast float %4307, %4302
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4312 = fsub fast float %4214, %4311
  %4313 = fmul fast float %4312, %4310
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4308, %4135
  %4316 = fadd fast float %4308, %4135
  %4317 = fmul fast float %4316, %4144
  %4318 = fsub fast float %4317, %4144
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = and i32 %4253, 128
  %4321 = icmp ne i32 %4320, 0
  %4322 = select i1 %4321, float %4319, float %4315
  %4323 = fmul fast float %4322, %4314
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = fcmp fast ugt float %4323, %4325
  br i1 %4326, label %4327, label %4218

; <label>:4327                                    ; preds = %4244
  %4328 = select i1 %4286, float %4323, float 0.000000e+00
  %4329 = fadd fast float %4328, %4093
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  br i1 %4286, label %4218, label %4331

; <label>:4331                                    ; preds = %4327
  %4332 = and i32 %4253, 4
  %4333 = and i32 %4253, 8
  %4334 = add i32 %4130, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4335, %dx.types.Handle %4336, float %4264, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float %4269, float %4271, float undef, float %4273, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.ResRet.f32 %4337, 1
  %4340 = extractvalue %dx.types.ResRet.f32 %4337, 2
  %4341 = extractvalue %dx.types.ResRet.f32 %4337, 3
  %4342 = bitcast float %4156 to i32
  %4343 = and i32 %4342, 255
  %4344 = uitofp i32 %4343 to float
  %4345 = lshr i32 %4342, 8
  %4346 = and i32 %4345, 255
  %4347 = uitofp i32 %4346 to float
  %4348 = fmul fast float %4341, %4344
  %4349 = fadd fast float %4348, %4347
  %4350 = fmul fast float %4349, 0x3F70101000000000
  %4351 = add i32 %4131, 0
  %4352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4352, %dx.types.Handle %4336, float %4264, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float %4269, float %4271, float undef, float %4273, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4358 = bitcast float %4150 to i32
  %4359 = and i32 %4358, 255
  %4360 = uitofp i32 %4359 to float
  %4361 = lshr i32 %4358, 8
  %4362 = and i32 %4361, 255
  %4363 = uitofp i32 %4362 to float
  %4364 = lshr i32 %4358, 16
  %4365 = and i32 %4364, 255
  %4366 = uitofp i32 %4365 to float
  %4367 = fmul fast float %4366, 0x3F70101000000000
  %4368 = fmul fast float %4354, %4360
  %4369 = fadd fast float %4368, %4363
  %4370 = fmul fast float %4369, 0x3F70101000000000
  %4371 = fadd fast float %4355, -5.000000e-01
  %4372 = fadd fast float %4357, -5.000000e-01
  %4373 = fmul fast float %4371, %4367
  %4374 = fmul fast float %4372, %4367
  %4375 = fadd fast float %4373, 5.000000e-01
  %4376 = fadd fast float %4374, 5.000000e-01
  %4377 = fmul fast float %4338, %4159
  %4378 = fmul fast float %4339, %4160
  %4379 = fmul fast float %4340, %4161
  %4380 = fmul fast float %4375, 2.000000e+00
  %4381 = fadd fast float %4380, -1.000000e+00
  %4382 = fmul fast float %4376, 2.000000e+00
  %4383 = fadd fast float %4382, -1.000000e+00
  %4384 = fadd fast float %4381, %4383
  %4385 = fmul fast float %4384, 5.000000e-01
  %4386 = fsub fast float %4381, %4383
  %4387 = fmul fast float %4386, 5.000000e-01
  %4388 = call float @dx.op.unary.f32(i32 6, float %4385)  ; FAbs(value)
  %4389 = fsub fast float 1.000000e+00, %4388
  %4390 = call float @dx.op.unary.f32(i32 6, float %4387)  ; FAbs(value)
  %4391 = fsub fast float %4389, %4390
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4387, float %4391, float %4385, float %4387, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4385, %4393
  %4395 = fmul fast float %4387, %4393
  %4396 = fmul fast float %4393, %4391
  %4397 = fmul fast float %4396, %4125
  %4398 = fmul fast float %4396, %4126
  %4399 = fmul fast float %4396, %4127
  %4400 = fmul fast float %4394, %4147
  %4401 = fmul fast float %4394, %4148
  %4402 = fmul fast float %4394, %4149
  %4403 = fadd fast float %4400, %4397
  %4404 = fadd fast float %4401, %4398
  %4405 = fadd fast float %4402, %4399
  %4406 = fmul fast float %4395, %4153
  %4407 = fmul fast float %4395, %4154
  %4408 = fmul fast float %4395, %4155
  %4409 = fadd fast float %4403, %4406
  %4410 = fadd fast float %4404, %4407
  %4411 = fadd fast float %4405, %4408
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float %4409, float %4410, float %4411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 25, float %4412)  ; Rsqrt(value)
  %4414 = fmul fast float %4409, %4413
  %4415 = fmul fast float %4410, %4413
  %4416 = fmul fast float %4411, %4413
  %4417 = icmp ne i32 %4333, 0
  %4418 = select i1 %4417, float 1.000000e+00, float 0.000000e+00
  %4419 = fmul fast float %4323, %4418
  %4420 = and i32 %4253, 1
  %4421 = icmp eq i32 %4420, 0
  br i1 %4421, label %4422, label %4426

; <label>:4422                                    ; preds = %4331
  %4423 = fsub fast float %4414, %4107
  %4424 = fsub fast float %4415, %4108
  %4425 = fsub fast float %4416, %4109
  br label %4426

; <label>:4426                                    ; preds = %4422, %4331
  %4427 = phi float [ %4423, %4422 ], [ %4414, %4331 ]
  %4428 = phi float [ %4424, %4422 ], [ %4415, %4331 ]
  %4429 = phi float [ %4425, %4422 ], [ %4416, %4331 ]
  %4430 = fmul float %4429, %4419
  %4431 = fmul float %4428, %4419
  %4432 = fmul float %4427, %4419
  %4433 = fadd fast float %4432, %4107
  %4434 = fadd fast float %4431, %4108
  %4435 = fadd fast float %4430, %4109
  %4436 = icmp ne i32 %4332, 0
  %4437 = select i1 %4436, float 1.000000e+00, float 0.000000e+00
  %4438 = fmul fast float %4323, %4437
  %4439 = fsub fast float %4377, %4114
  %4440 = fsub fast float %4378, %4115
  %4441 = fsub fast float %4379, %4116
  %4442 = fmul fast float %4439, %4438
  %4443 = fmul fast float %4440, %4438
  %4444 = fmul fast float %4441, %4438
  %4445 = fadd fast float %4442, %4114
  %4446 = fadd fast float %4443, %4115
  %4447 = fadd fast float %4444, %4116
  %4448 = fsub fast float %4350, %4113
  %4449 = fmul fast float %4448, %4438
  %4450 = fadd fast float %4449, %4113
  %4451 = fmul fast float %4438, %4100
  %4452 = fsub fast float %4100, %4451
  %4453 = fmul fast float %4438, %4099
  %4454 = fsub fast float %4099, %4453
  %4455 = bitcast float %4168 to i32
  %4456 = lshr i32 %4455, 16
  %4457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4456)  ; LegacyF16ToF32(value)
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = and i32 %4459, 1
  %4461 = icmp eq i32 %4460, 0
  br i1 %4461, label %4462, label %4487

; <label>:4462                                    ; preds = %4426
  %4463 = fadd fast float %4350, 0xBFB99999A0000000
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4464, 0x3FF1C71C80000000
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4467, %4377
  %4469 = fmul fast float %4467, %4378
  %4470 = fmul fast float %4467, %4379
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4472, float %4473)  ; FMax(a,b)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4471, float %4474)  ; FMax(a,b)
  %4476 = fcmp fast ogt float %4475, 0.000000e+00
  %4477 = bitcast float %4475 to i32
  %4478 = sub nsw i32 2129859010, %4477
  %4479 = bitcast i32 %4478 to float
  %4480 = select i1 %4476, float %4479, float 0.000000e+00
  %4481 = fmul fast float %4471, %4457
  %4482 = fmul fast float %4472, %4457
  %4483 = fmul fast float %4473, %4457
  %4484 = fmul fast float %4481, %4480
  %4485 = fmul fast float %4482, %4480
  %4486 = fmul fast float %4483, %4480
  br label %4487

; <label>:4487                                    ; preds = %4462, %4426
  %4488 = phi float [ %4457, %4426 ], [ %4484, %4462 ]
  %4489 = phi float [ %4457, %4426 ], [ %4485, %4462 ]
  %4490 = phi float [ %4457, %4426 ], [ %4486, %4462 ]
  %4491 = fsub fast float %4488, %4101
  %4492 = fsub fast float %4489, %4102
  %4493 = fsub fast float %4490, %4103
  %4494 = fmul fast float %4491, %4438
  %4495 = fmul fast float %4492, %4438
  %4496 = fmul fast float %4493, %4438
  %4497 = fadd fast float %4494, %4101
  %4498 = fadd fast float %4495, %4102
  %4499 = fadd fast float %4496, %4103
  %4500 = fadd fast float %4323, %4112
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fsub fast float %4370, %4111
  %4503 = fmul fast float %4502, %4419
  %4504 = fadd fast float %4503, %4111
  %4505 = fsub fast float %4356, %4110
  %4506 = fmul fast float %4505, %4419
  %4507 = fadd fast float %4506, %4110
  br i1 %4421, label %4516, label %4508

; <label>:4508                                    ; preds = %4487
  %4509 = and i32 %4253, 32768
  %4510 = icmp eq i32 %4509, 0
  br i1 %4510, label %4526, label %4511

; <label>:4511                                    ; preds = %4508
  %4512 = fmul fast float %4419, 1.270000e+02
  %4513 = fadd fast float %4512, %4096
  %4514 = fadd fast float %4512, %4097
  %4515 = fadd fast float %4512, %4098
  br label %4526

; <label>:4516                                    ; preds = %4487
  %4517 = fsub fast float 1.270000e+02, %4096
  %4518 = fsub fast float 1.270000e+02, %4097
  %4519 = fsub fast float 1.270000e+02, %4098
  %4520 = fmul fast float %4419, %4517
  %4521 = fmul fast float %4419, %4518
  %4522 = fmul fast float %4419, %4519
  %4523 = fadd fast float %4520, %4096
  %4524 = fadd fast float %4521, %4097
  %4525 = fadd fast float %4522, %4098
  br label %4526

; <label>:4526                                    ; preds = %4516, %4511, %4508
  %4527 = phi float [ %4513, %4511 ], [ %4096, %4508 ], [ %4523, %4516 ]
  %4528 = phi float [ %4514, %4511 ], [ %4097, %4508 ], [ %4524, %4516 ]
  %4529 = phi float [ %4515, %4511 ], [ %4098, %4508 ], [ %4525, %4516 ]
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4534 = fmul fast float %4533, %4530
  %4535 = fadd fast float %4534, %4532
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = bitcast float %4162 to i32
  %4538 = and i32 %4537, 65535
  %4539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4538)  ; LegacyF16ToF32(value)
  %4540 = lshr i32 %4537, 16
  %4541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4540)  ; LegacyF16ToF32(value)
  %4542 = fcmp fast oge float %4539, 0.000000e+00
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = select i1 %4542, float %4539, float %4544
  %4546 = fadd fast float %4545, %4541
  %4547 = fsub fast float %4536, %4095
  %4548 = fmul fast float %4547, %4323
  %4549 = fadd fast float %4548, %4095
  %4550 = fmul fast float %4546, %4323
  %4551 = call float @dx.op.binary.f32(i32 35, float %4094, float %4550)  ; FMax(a,b)
  %4552 = and i32 %4253, 16
  %4553 = icmp eq i32 %4552, 0
  br i1 %4553, label %4575, label %4554

; <label>:4554                                    ; preds = %4526
  %4555 = add i32 %4165, 0
  %4556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4555, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4556, %dx.types.Handle %4336, float %4264, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float %4269, float %4271, float undef, float %4273, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = and i32 %4455, 65535
  %4562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4561)  ; LegacyF16ToF32(value)
  %4563 = fmul fast float %4558, %4159
  %4564 = fmul fast float %4559, %4160
  %4565 = fmul fast float %4560, %4161
  %4566 = and i32 %4253, 16384
  %4567 = icmp ne i32 %4566, 0
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = select i1 %4567, float %4569, float 1.000000e+00
  %4571 = fmul fast float %4570, %4562
  %4572 = fmul fast float %4563, %4571
  %4573 = fmul fast float %4564, %4571
  %4574 = fmul fast float %4565, %4571
  br label %4575

; <label>:4575                                    ; preds = %4554, %4526
  %4576 = phi float [ %4572, %4554 ], [ 0.000000e+00, %4526 ]
  %4577 = phi float [ %4573, %4554 ], [ 0.000000e+00, %4526 ]
  %4578 = phi float [ %4574, %4554 ], [ 0.000000e+00, %4526 ]
  %4579 = fsub fast float %4576, %4104
  %4580 = fsub fast float %4577, %4105
  %4581 = fsub fast float %4578, %4106
  %4582 = fmul fast float %4579, %4323
  %4583 = fmul fast float %4580, %4323
  %4584 = fmul fast float %4581, %4323
  %4585 = fadd fast float %4582, %4104
  %4586 = fadd fast float %4583, %4105
  %4587 = fadd fast float %4584, %4106
  br label %4218

; <label>:4588                                    ; preds = %4218
  br label %4589

; <label>:4589                                    ; preds = %4588, %4028
  %4590 = phi float [ 0.000000e+00, %4028 ], [ %4219, %4588 ]
  %4591 = phi float [ %3998, %4028 ], [ %4220, %4588 ]
  %4592 = phi float [ %3979, %4028 ], [ %4221, %4588 ]
  %4593 = phi float [ %3972, %4028 ], [ %4222, %4588 ]
  %4594 = phi float [ %3973, %4028 ], [ %4223, %4588 ]
  %4595 = phi float [ %3974, %4028 ], [ %4224, %4588 ]
  %4596 = phi float [ 0.000000e+00, %4028 ], [ %4225, %4588 ]
  %4597 = phi float [ 0.000000e+00, %4028 ], [ %4226, %4588 ]
  %4598 = phi float [ %3969, %4028 ], [ %4227, %4588 ]
  %4599 = phi float [ %3970, %4028 ], [ %4228, %4588 ]
  %4600 = phi float [ %3971, %4028 ], [ %4229, %4588 ]
  %4601 = phi float [ %3963, %4028 ], [ %4230, %4588 ]
  %4602 = phi float [ %3964, %4028 ], [ %4231, %4588 ]
  %4603 = phi float [ %3965, %4028 ], [ %4232, %4588 ]
  %4604 = phi float [ %4024, %4028 ], [ %4233, %4588 ]
  %4605 = phi float [ %4025, %4028 ], [ %4234, %4588 ]
  %4606 = phi float [ %4026, %4028 ], [ %4235, %4588 ]
  %4607 = phi float [ %3977, %4028 ], [ %4236, %4588 ]
  %4608 = phi float [ %3976, %4028 ], [ %4237, %4588 ]
  %4609 = phi float [ 0.000000e+00, %4028 ], [ %4238, %4588 ]
  %4610 = phi float [ %3975, %4028 ], [ %4239, %4588 ]
  %4611 = phi float [ %3966, %4028 ], [ %4240, %4588 ]
  %4612 = phi float [ %3967, %4028 ], [ %4241, %4588 ]
  %4613 = phi float [ %3968, %4028 ], [ %4242, %4588 ]
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = call float @dx.op.unary.f32(i32 25, float %4614)  ; Rsqrt(value)
  %4616 = fmul fast float %4615, %4604
  %4617 = fmul fast float %4615, %4605
  %4618 = fmul fast float %4615, %4606
  %4619 = fadd fast float %4609, %1149
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4616, float %4617, float %4618)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 25, float %4621)  ; Rsqrt(value)
  %4623 = fmul fast float %4622, %4616
  %4624 = fmul fast float %4622, %4617
  %4625 = fmul fast float %4622, %4618
  br label %4626

; <label>:4626                                    ; preds = %4589, %3960
  %4627 = phi float [ %4623, %4589 ], [ %4024, %3960 ]
  %4628 = phi float [ %4624, %4589 ], [ %4025, %3960 ]
  %4629 = phi float [ %4625, %4589 ], [ %4026, %3960 ]
  %4630 = phi float [ %4601, %4589 ], [ %3963, %3960 ]
  %4631 = phi float [ %4602, %4589 ], [ %3964, %3960 ]
  %4632 = phi float [ %4603, %4589 ], [ %3965, %3960 ]
  %4633 = phi float [ %4611, %4589 ], [ %3966, %3960 ]
  %4634 = phi float [ %4612, %4589 ], [ %3967, %3960 ]
  %4635 = phi float [ %4613, %4589 ], [ %3968, %3960 ]
  %4636 = phi float [ %4593, %4589 ], [ %3972, %3960 ]
  %4637 = phi float [ %4594, %4589 ], [ %3973, %3960 ]
  %4638 = phi float [ %4595, %4589 ], [ %3974, %3960 ]
  %4639 = phi float [ %4598, %4589 ], [ %3969, %3960 ]
  %4640 = phi float [ %4599, %4589 ], [ %3970, %3960 ]
  %4641 = phi float [ %4600, %4589 ], [ %3971, %3960 ]
  %4642 = phi float [ %4610, %4589 ], [ %3975, %3960 ]
  %4643 = phi float [ %4620, %4589 ], [ %1149, %3960 ]
  %4644 = phi float [ %4608, %4589 ], [ %3976, %3960 ]
  %4645 = phi float [ %4607, %4589 ], [ %3977, %3960 ]
  %4646 = phi float [ %4597, %4589 ], [ 0.000000e+00, %3960 ]
  %4647 = phi float [ %4596, %4589 ], [ 0.000000e+00, %3960 ]
  %4648 = phi float [ %4590, %4589 ], [ 0.000000e+00, %3960 ]
  %4649 = phi float [ %4591, %4589 ], [ %3998, %3960 ]
  %4650 = phi float [ %4592, %4589 ], [ %3979, %3960 ]
  %4651 = fadd fast float %4642, 0xBFB99999A0000000
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %4652, 0x3FF1C71C80000000
  %4654 = call float @dx.op.binary.f32(i32 36, float %4642, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4655 = fsub fast float 1.000000e+00, %4653
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fmul fast float %4656, %4633
  %4658 = fmul fast float %4656, %4634
  %4659 = fmul fast float %4656, %4635
  %4660 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4661 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = fmul fast float %4653, %4633
  %4664 = fmul fast float %4653, %4634
  %4665 = fmul fast float %4653, %4635
  %4666 = fadd fast float %4663, %4654
  %4667 = fadd fast float %4664, %4654
  %4668 = fadd fast float %4665, %4654
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4674 = extractvalue %dx.types.ResRet.i32 %4673, 0
  %4675 = and i32 %4674, 1
  %4676 = icmp eq i32 %4675, 0
  br i1 %4676, label %4691, label %4677

; <label>:4677                                    ; preds = %4626
  %4678 = call float @dx.op.binary.f32(i32 35, float %4661, float %4662)  ; FMax(a,b)
  %4679 = call float @dx.op.binary.f32(i32 35, float %4660, float %4678)  ; FMax(a,b)
  %4680 = fcmp fast ogt float %4679, 0.000000e+00
  %4681 = bitcast float %4679 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = select i1 %4680, float %4683, float 0.000000e+00
  %4685 = fmul fast float %4660, %4639
  %4686 = fmul fast float %4661, %4640
  %4687 = fmul fast float %4662, %4641
  %4688 = fmul fast float %4685, %4684
  %4689 = fmul fast float %4686, %4684
  %4690 = fmul fast float %4687, %4684
  br label %4691

; <label>:4691                                    ; preds = %4677, %4626
  %4692 = phi float [ %4688, %4677 ], [ %4639, %4626 ]
  %4693 = phi float [ %4689, %4677 ], [ %4640, %4626 ]
  %4694 = phi float [ %4690, %4677 ], [ %4641, %4626 ]
  %4695 = call float @dx.op.binary.f32(i32 36, float %4636, float 1.270000e+02)  ; FMin(a,b)
  %4696 = call float @dx.op.binary.f32(i32 36, float %4637, float 1.270000e+02)  ; FMin(a,b)
  %4697 = call float @dx.op.binary.f32(i32 36, float %4638, float 1.270000e+02)  ; FMin(a,b)
  %4698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.i32 %4698, 3
  %4700 = and i32 %4699, 8
  %4701 = icmp ne i32 %4700, 0
  %4702 = call float @dx.op.binary.f32(i32 35, float %4660, float %4633)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4661, float %4633)  ; FMax(a,b)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4662, float %4633)  ; FMax(a,b)
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = select i1 %237, float %4633, float %4660
  %4707 = select i1 %237, float %4705, float %4661
  %4708 = select i1 %237, float 1.000000e+00, float %4662
  %4709 = select i1 %4701, float %4702, float %4706
  %4710 = select i1 %4701, float %4703, float %4707
  %4711 = select i1 %4701, float %4704, float %4708
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4692, float %4693, float %4694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = select i1 %237, float %4712, float %4692
  %4714 = select i1 %237, float %4712, float %4693
  %4715 = select i1 %237, float %4712, float %4694
  %4716 = and i32 %213, 3
  %4717 = select i1 %207, i32 %4716, i32 0
  %4718 = icmp eq i32 %4717, 1
  br i1 %4718, label %4719, label %4795

; <label>:4719                                    ; preds = %4691
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = fadd fast float %4721, %176
  %4724 = fadd fast float %4722, %177
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4728 = fsub fast float %4723, %4726
  %4729 = fsub fast float %4724, %4727
  %4730 = fmul fast float %4728, %4728
  %4731 = fmul fast float %4729, %4729
  %4732 = fadd fast float %4730, %4731
  %4733 = call float @dx.op.unary.f32(i32 24, float %4732)  ; Sqrt(value)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4735 = fcmp fast olt float %4733, %4734
  br i1 %4735, label %4736, label %4789

; <label>:4736                                    ; preds = %4719
  %4737 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4738 = fadd fast float %4737, %178
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 0
  %4745 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4746 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4747 = extractvalue %dx.types.CBufRet.f32 %4743, 1
  %4748 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4749 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4750 = extractvalue %dx.types.CBufRet.f32 %4743, 3
  %4751 = fadd fast float %4748, %4723
  %4752 = fadd fast float %4749, %4724
  %4753 = fadd fast float %4738, %4750
  %4754 = fmul fast float %4751, %4740
  %4755 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4742, float %4754)  ; FMad(a,b,c)
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4753, float %4744, float %4755)  ; FMad(a,b,c)
  %4757 = fmul fast float %4751, %4745
  %4758 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4746, float %4757)  ; FMad(a,b,c)
  %4759 = call float @dx.op.tertiary.f32(i32 46, float %4753, float %4747, float %4758)  ; FMad(a,b,c)
  %4760 = fsub fast float %4756, %4748
  %4761 = fsub fast float %4759, %4749
  %4762 = fsub fast float %4760, %4726
  %4763 = fadd fast float %4762, %4734
  %4764 = fsub fast float %4761, %4727
  %4765 = fadd fast float %4764, %4734
  %4766 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4767 = fmul fast float %4763, %4766
  %4768 = fmul fast float %4765, %4766
  %4769 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4771 = fsub fast float 1.000000e+00, %4769
  %4772 = fsub fast float 1.000000e+00, %4770
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %4771, float %4772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = fcmp fast ugt float %4774, 0.000000e+00
  br i1 %4775, label %4776, label %4789

; <label>:4776                                    ; preds = %4736
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 2
  %4779 = fmul fast float %4778, %4774
  %4780 = extractvalue %dx.types.CBufRet.f32 %4777, 3
  %4781 = fadd fast float %4780, %4779
  %4782 = extractvalue %dx.types.CBufRet.f32 %4743, 2
  %4783 = fadd fast float %4781, %4750
  %4784 = fmul fast float %4756, %4744
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4759, float %4747, float %4784)  ; FMad(a,b,c)
  %4786 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4782, float %4785)  ; FMad(a,b,c)
  %4787 = fsub fast float %4786, %4750
  %4788 = fsub fast float %4787, %4737
  br label %4789

; <label>:4789                                    ; preds = %4776, %4736, %4719
  %4790 = phi i1 [ true, %4776 ], [ false, %4736 ], [ false, %4719 ]
  %4791 = phi float [ %4788, %4776 ], [ -1.310720e+05, %4736 ], [ -1.310720e+05, %4719 ]
  %4792 = fsub fast float %4791, %178
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = select i1 %4790, float %4793, float 1.000000e+00
  br label %4795

; <label>:4795                                    ; preds = %4789, %4691
  %4796 = phi float [ %4794, %4789 ], [ 0.000000e+00, %4691 ]
  %4797 = icmp eq i32 %4717, 3
  %4798 = select i1 %4797, float 1.000000e+00, float %4796
  %4799 = call float @dx.op.binary.f32(i32 35, float %4648, float %4798)  ; FMax(a,b)
  %4800 = fcmp fast olt float %4798, 1.000000e+00
  %4801 = fcmp uge float %57, 0.000000e+00
  %4802 = and i1 %4801, %4800
  br i1 %4802, label %4803, label %4813

; <label>:4803                                    ; preds = %4795
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4808 = fadd fast float %4805, %4799
  %4809 = fcmp ule float %56, 0.000000e+00
  %4810 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = select i1 %4809, float %4810, float 1.000000e+00
  %4812 = fmul fast float %4811, %4807
  br label %4813

; <label>:4813                                    ; preds = %4803, %4795
  %4814 = phi float [ %4808, %4803 ], [ %4799, %4795 ]
  %4815 = phi float [ %4806, %4803 ], [ 0.000000e+00, %4795 ]
  %4816 = phi float [ %4812, %4803 ], [ 0.000000e+00, %4795 ]
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = fcmp fast une float %4818, 0.000000e+00
  %4821 = fcmp fast une float %4819, 0.000000e+00
  %4822 = or i1 %4820, %4821
  br i1 %4822, label %4823, label %5398

; <label>:4823                                    ; preds = %4813
  br i1 %4820, label %4824, label %5097

; <label>:4824                                    ; preds = %4823
  %4825 = call float @dx.op.unary.f32(i32 23, float %4645)  ; Log(value)
  %4826 = fmul fast float %4825, 4.000000e+00
  %4827 = call float @dx.op.unary.f32(i32 21, float %4826)  ; Exp(value)
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = fmul fast float %4829, %44
  %4831 = fmul fast float %4829, %45
  %4832 = fmul fast float %4829, %46
  %4833 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4834 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4835 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4836 = call float @dx.op.unary.f32(i32 23, float %4833)  ; Log(value)
  %4837 = call float @dx.op.unary.f32(i32 23, float %4834)  ; Log(value)
  %4838 = call float @dx.op.unary.f32(i32 23, float %4835)  ; Log(value)
  %4839 = fmul fast float %4836, 4.000000e+00
  %4840 = fmul fast float %4837, 4.000000e+00
  %4841 = fmul fast float %4838, 4.000000e+00
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = call float @dx.op.unary.f32(i32 21, float %4840)  ; Exp(value)
  %4844 = call float @dx.op.unary.f32(i32 21, float %4841)  ; Exp(value)
  %4845 = fadd fast float %4843, %4842
  %4846 = fadd fast float %4845, %4844
  %4847 = fdiv fast float 1.000000e+00, %4846
  %4848 = fmul fast float %4847, %4842
  %4849 = fcmp fast ogt float %53, 0.000000e+00
  %4850 = fcmp fast ogt float %54, 0.000000e+00
  %4851 = fcmp fast ogt float %55, 0.000000e+00
  %4852 = fcmp fast olt float %53, 0.000000e+00
  %4853 = fcmp fast olt float %54, 0.000000e+00
  %4854 = fcmp fast olt float %55, 0.000000e+00
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = zext i1 %4851 to i32
  %4858 = zext i1 %4852 to i32
  %4859 = zext i1 %4853 to i32
  %4860 = zext i1 %4854 to i32
  %4861 = sub nsw i32 %4855, %4858
  %4862 = sub nsw i32 %4856, %4859
  %4863 = sub nsw i32 %4857, %4860
  %4864 = call float @dx.op.unary.f32(i32 83, float %4830)  ; DerivCoarseX(value)
  %4865 = call float @dx.op.unary.f32(i32 83, float %4831)  ; DerivCoarseX(value)
  %4866 = call float @dx.op.unary.f32(i32 83, float %4832)  ; DerivCoarseX(value)
  %4867 = call float @dx.op.unary.f32(i32 84, float %4830)  ; DerivCoarseY(value)
  %4868 = call float @dx.op.unary.f32(i32 84, float %4831)  ; DerivCoarseY(value)
  %4869 = call float @dx.op.unary.f32(i32 84, float %4832)  ; DerivCoarseY(value)
  %4870 = fcmp fast ole float %248, %4848
  %4871 = fmul fast float %4847, %4845
  %4872 = fcmp fast ole float %248, %4871
  %4873 = select i1 %4872, float %4832, float %4830
  %4874 = select i1 %4872, float %4830, float %4831
  %4875 = select i1 %4870, float %4831, float %4873
  %4876 = select i1 %4870, float %4832, float %4874
  %4877 = select i1 %4872, float %4866, float %4864
  %4878 = select i1 %4872, float %4864, float %4865
  %4879 = select i1 %4870, float %4865, float %4877
  %4880 = select i1 %4870, float %4866, float %4878
  %4881 = select i1 %4872, float %4869, float %4867
  %4882 = select i1 %4872, float %4867, float %4868
  %4883 = select i1 %4870, float %4868, float %4881
  %4884 = select i1 %4870, float %4869, float %4882
  %4885 = call float @dx.op.unary.f32(i32 27, float %4875)  ; Round_ni(value)
  %4886 = call float @dx.op.unary.f32(i32 27, float %4876)  ; Round_ni(value)
  %4887 = fptosi float %4885 to i32
  %4888 = fptosi float %4886 to i32
  %4889 = xor i32 %4888, %4887
  %4890 = sitofp i32 %4889 to float
  %4891 = fptosi float %4890 to i32
  %4892 = sitofp i32 %4891 to float
  %4893 = fmul fast float %4892, 0x3FE3C6EF40000000
  %4894 = frem fast float %4885, 2.560000e+02
  %4895 = frem fast float %4886, 2.560000e+02
  %4896 = fptoui float %4894 to i32
  %4897 = fptoui float %4895 to i32
  %4898 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4896, i32 %4897, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.ResRet.f32 %4898, 2
  %4902 = fadd fast float %4899, %4893
  %4903 = fadd fast float %4900, %4893
  %4904 = fadd fast float %4901, %4893
  %4905 = call float @dx.op.unary.f32(i32 22, float %4902)  ; Frc(value)
  %4906 = call float @dx.op.unary.f32(i32 22, float %4903)  ; Frc(value)
  %4907 = call float @dx.op.unary.f32(i32 22, float %4904)  ; Frc(value)
  %4908 = fmul fast float %4907, 0x401921FB60000000
  %4909 = call float @dx.op.unary.f32(i32 13, float %4908)  ; Sin(value)
  %4910 = call float @dx.op.unary.f32(i32 12, float %4908)  ; Cos(value)
  %4911 = fsub fast float -0.000000e+00, %4910
  %4912 = fmul fast float %4910, %4875
  %4913 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4876, float %4912)  ; FMad(a,b,c)
  %4914 = fmul fast float %4909, %4875
  %4915 = call float @dx.op.tertiary.f32(i32 46, float %4911, float %4876, float %4914)  ; FMad(a,b,c)
  %4916 = fadd fast float %4913, %4905
  %4917 = fadd fast float %4915, %4906
  %4918 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4919 = bitcast float %4918 to i32
  %4920 = icmp eq i32 %4919, 0
  br i1 %4920, label %4959, label %4921

; <label>:4921                                    ; preds = %4824
  %4922 = add i32 %4919, 0
  %4923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4924 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4923, %dx.types.Handle %94, float %4916, float %4917, float undef, float undef, i32 0, i32 0, i32 undef, float %4879, float %4880, float undef, float %4883, float %4884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4929 = fsub fast float 1.000000e+00, %4818
  %4930 = call float @dx.op.binary.f32(i32 35, float %4929, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4931 = bitcast float %4818 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fadd fast float %4932, 0xC1CFBF8940000000
  %4934 = fmul fast float %4928, %4933
  %4935 = fadd fast float %4934, 0x41CFBF8940000000
  %4936 = fptosi float %4935 to i32
  %4937 = bitcast i32 %4936 to float
  %4938 = bitcast float %4930 to i32
  %4939 = sitofp i32 %4938 to float
  %4940 = fadd fast float %4939, 0xC1CFBF8940000000
  %4941 = fmul fast float %4940, %4928
  %4942 = fadd fast float %4941, 0x41CFBF8940000000
  %4943 = fptosi float %4942 to i32
  %4944 = bitcast i32 %4943 to float
  %4945 = fmul fast float %4937, %4927
  %4946 = fmul fast float %4944, %4927
  %4947 = fsub fast float %4930, %4945
  %4948 = fadd fast float %4946, %4930
  %4949 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4951 = fsub fast float %4925, %4949
  %4952 = fsub fast float %4950, %4949
  %4953 = bitcast float %4952 to i32
  %4954 = sub nsw i32 2129859010, %4953
  %4955 = bitcast i32 %4954 to float
  %4956 = fmul fast float %4955, %4951
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = fcmp fast olt float %4957, 0x3F70101020000000
  br i1 %4958, label %5097, label %4959

; <label>:4959                                    ; preds = %4921, %4824
  %4960 = phi float [ %4957, %4921 ], [ %4818, %4824 ]
  %4961 = fmul fast float %4960, %4827
  %4962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.i32 %4962, 1
  %4964 = extractvalue %dx.types.CBufRet.i32 %4962, 0
  %4965 = add i32 %4964, 0
  %4966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4966, %dx.types.Handle %93, float %4916, float %4917, float undef, float undef, i32 0, i32 0, i32 undef, float %4879, float %4880, float undef, float %4883, float %4884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.ResRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.ResRet.f32 %4967, 2
  %4971 = extractvalue %dx.types.ResRet.f32 %4967, 3
  %4972 = and i32 %4963, 255
  %4973 = uitofp i32 %4972 to float
  %4974 = lshr i32 %4963, 8
  %4975 = and i32 %4974, 255
  %4976 = uitofp i32 %4975 to float
  %4977 = fmul fast float %4971, %4973
  %4978 = fadd fast float %4977, %4976
  %4979 = fmul fast float %4978, 0x3F70101000000000
  %4980 = fadd fast float %4979, 0xBFB99999A0000000
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fmul fast float %4981, 0x3FF1C71C80000000
  %4983 = call float @dx.op.binary.f32(i32 36, float %4979, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4984 = fsub fast float 1.000000e+00, %4982
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fmul fast float %4985, %4968
  %4987 = fmul fast float %4985, %4969
  %4988 = fmul fast float %4985, %4970
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = fmul fast float %4982, %4968
  %4993 = fmul fast float %4982, %4969
  %4994 = fmul fast float %4982, %4970
  %4995 = fadd fast float %4992, %4983
  %4996 = fadd fast float %4993, %4983
  %4997 = fadd fast float %4994, %4983
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %5000 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.i32 %5001, 3
  %5003 = extractvalue %dx.types.CBufRet.i32 %5001, 2
  %5004 = add i32 %5003, 0
  %5005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5005, %dx.types.Handle %93, float %4916, float %4917, float undef, float undef, i32 0, i32 0, i32 undef, float %4879, float %4880, float undef, float %4883, float %4884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5007 = extractvalue %dx.types.ResRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.ResRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.ResRet.f32 %5006, 2
  %5010 = extractvalue %dx.types.ResRet.f32 %5006, 3
  %5011 = and i32 %5002, 255
  %5012 = uitofp i32 %5011 to float
  %5013 = lshr i32 %5002, 8
  %5014 = and i32 %5013, 255
  %5015 = uitofp i32 %5014 to float
  %5016 = lshr i32 %5002, 16
  %5017 = and i32 %5016, 255
  %5018 = uitofp i32 %5017 to float
  %5019 = fmul fast float %5018, 0x3F70101000000000
  %5020 = fmul fast float %5007, %5012
  %5021 = fadd fast float %5020, %5015
  %5022 = fmul fast float %5021, 0x3F70101000000000
  %5023 = fadd fast float %5008, -5.000000e-01
  %5024 = fadd fast float %5010, -5.000000e-01
  %5025 = fmul fast float %5023, %5019
  %5026 = fmul fast float %5024, %5019
  %5027 = fadd fast float %5025, 5.000000e-01
  %5028 = fadd fast float %5026, 5.000000e-01
  %5029 = fmul fast float %5027, 2.000000e+00
  %5030 = fadd fast float %5029, -1.000000e+00
  %5031 = fmul fast float %5028, 2.000000e+00
  %5032 = fadd fast float %5031, -1.000000e+00
  %5033 = fadd fast float %5030, %5032
  %5034 = fmul fast float %5033, 5.000000e-01
  %5035 = fsub fast float %5030, %5032
  %5036 = fmul fast float %5035, 5.000000e-01
  %5037 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5040 = fsub fast float %5038, %5039
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5036, float %5040, float %5034, float %5036, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 25, float %5041)  ; Rsqrt(value)
  %5043 = fmul fast float %5034, %5042
  %5044 = fmul fast float %5036, %5042
  %5045 = select i1 %4872, i32 %4862, i32 %4863
  %5046 = select i1 %4870, i32 %4861, i32 %5045
  %5047 = sitofp i32 %5046 to float
  %5048 = fmul fast float %5040, %5047
  %5049 = fmul fast float %5048, %5042
  %5050 = select i1 %4872, float %5049, float %5044
  %5051 = select i1 %4872, float %5044, float %5049
  %5052 = select i1 %4870, float %5049, float %5043
  %5053 = select i1 %4870, float %5044, float %5050
  %5054 = select i1 %4870, float %5043, float %5051
  %5055 = fsub fast float %4989, %4709
  %5056 = fsub fast float %4990, %4710
  %5057 = fsub fast float %4991, %4711
  %5058 = fmul fast float %5055, %4961
  %5059 = fmul fast float %5056, %4961
  %5060 = fmul fast float %5057, %4961
  %5061 = fadd fast float %5058, %4709
  %5062 = fadd fast float %5059, %4710
  %5063 = fadd fast float %5060, %4711
  %5064 = fsub fast float %4998, %4669
  %5065 = fsub fast float %4999, %4670
  %5066 = fsub fast float %5000, %4671
  %5067 = fmul fast float %5064, %4961
  %5068 = fmul fast float %5065, %4961
  %5069 = fmul fast float %5066, %4961
  %5070 = fadd fast float %5067, %4669
  %5071 = fadd fast float %5068, %4670
  %5072 = fadd fast float %5069, %4671
  %5073 = fadd fast float %5052, %4627
  %5074 = fadd fast float %5053, %4628
  %5075 = fadd fast float %5054, %4629
  %5076 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %5075, float %5073, float %5074, float %5075)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = call float @dx.op.unary.f32(i32 25, float %5076)  ; Rsqrt(value)
  %5078 = fmul fast float %5073, %5077
  %5079 = fmul fast float %5074, %5077
  %5080 = fmul fast float %5075, %5077
  %5081 = fsub fast float %5078, %4627
  %5082 = fsub fast float %5079, %4628
  %5083 = fsub fast float %5080, %4629
  %5084 = fmul fast float %5081, %4961
  %5085 = fmul fast float %5082, %4961
  %5086 = fmul fast float %5083, %4961
  %5087 = fadd fast float %5084, %4627
  %5088 = fadd fast float %5085, %4628
  %5089 = fadd fast float %5086, %4629
  %5090 = call float @dx.op.binary.f32(i32 36, float %4645, float %5009)  ; FMin(a,b)
  %5091 = fsub fast float %5090, %4645
  %5092 = fmul fast float %5091, %4961
  %5093 = fadd fast float %5092, %4645
  %5094 = fsub fast float %5022, %4672
  %5095 = fmul fast float %5094, %4961
  %5096 = fadd fast float %5095, %4672
  br label %5097

; <label>:5097                                    ; preds = %4959, %4921, %4823
  %5098 = phi float [ %5070, %4959 ], [ %4669, %4921 ], [ %4669, %4823 ]
  %5099 = phi float [ %5071, %4959 ], [ %4670, %4921 ], [ %4670, %4823 ]
  %5100 = phi float [ %5072, %4959 ], [ %4671, %4921 ], [ %4671, %4823 ]
  %5101 = phi float [ %5061, %4959 ], [ %4709, %4921 ], [ %4709, %4823 ]
  %5102 = phi float [ %5062, %4959 ], [ %4710, %4921 ], [ %4710, %4823 ]
  %5103 = phi float [ %5063, %4959 ], [ %4711, %4921 ], [ %4711, %4823 ]
  %5104 = phi float [ %5087, %4959 ], [ %4627, %4921 ], [ %4627, %4823 ]
  %5105 = phi float [ %5088, %4959 ], [ %4628, %4921 ], [ %4628, %4823 ]
  %5106 = phi float [ %5089, %4959 ], [ %4629, %4921 ], [ %4629, %4823 ]
  %5107 = phi float [ %5096, %4959 ], [ %4672, %4921 ], [ %4672, %4823 ]
  %5108 = phi float [ %5093, %4959 ], [ %4645, %4921 ], [ %4645, %4823 ]
  br i1 %4821, label %5109, label %5398

; <label>:5109                                    ; preds = %5097
  %5110 = call float @dx.op.unary.f32(i32 23, float %5108)  ; Log(value)
  %5111 = fmul fast float %5110, 4.000000e+00
  %5112 = call float @dx.op.unary.f32(i32 21, float %5111)  ; Exp(value)
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = fmul fast float %5114, %44
  %5116 = fmul fast float %5114, %45
  %5117 = fmul fast float %5114, %46
  %5118 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %5119 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %5120 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5121 = call float @dx.op.unary.f32(i32 23, float %5118)  ; Log(value)
  %5122 = call float @dx.op.unary.f32(i32 23, float %5119)  ; Log(value)
  %5123 = call float @dx.op.unary.f32(i32 23, float %5120)  ; Log(value)
  %5124 = fmul fast float %5121, 4.000000e+00
  %5125 = fmul fast float %5122, 4.000000e+00
  %5126 = fmul fast float %5123, 4.000000e+00
  %5127 = call float @dx.op.unary.f32(i32 21, float %5124)  ; Exp(value)
  %5128 = call float @dx.op.unary.f32(i32 21, float %5125)  ; Exp(value)
  %5129 = call float @dx.op.unary.f32(i32 21, float %5126)  ; Exp(value)
  %5130 = fadd fast float %5128, %5127
  %5131 = fadd fast float %5130, %5129
  %5132 = fdiv fast float 1.000000e+00, %5131
  %5133 = fmul fast float %5132, %5127
  %5134 = fcmp fast ogt float %53, 0.000000e+00
  %5135 = fcmp fast ogt float %54, 0.000000e+00
  %5136 = fcmp fast ogt float %55, 0.000000e+00
  %5137 = fcmp fast olt float %53, 0.000000e+00
  %5138 = fcmp fast olt float %54, 0.000000e+00
  %5139 = fcmp fast olt float %55, 0.000000e+00
  %5140 = zext i1 %5134 to i32
  %5141 = zext i1 %5135 to i32
  %5142 = zext i1 %5136 to i32
  %5143 = zext i1 %5137 to i32
  %5144 = zext i1 %5138 to i32
  %5145 = zext i1 %5139 to i32
  %5146 = sub nsw i32 %5140, %5143
  %5147 = sub nsw i32 %5141, %5144
  %5148 = sub nsw i32 %5142, %5145
  %5149 = call float @dx.op.unary.f32(i32 83, float %5115)  ; DerivCoarseX(value)
  %5150 = call float @dx.op.unary.f32(i32 83, float %5116)  ; DerivCoarseX(value)
  %5151 = call float @dx.op.unary.f32(i32 83, float %5117)  ; DerivCoarseX(value)
  %5152 = call float @dx.op.unary.f32(i32 84, float %5115)  ; DerivCoarseY(value)
  %5153 = call float @dx.op.unary.f32(i32 84, float %5116)  ; DerivCoarseY(value)
  %5154 = call float @dx.op.unary.f32(i32 84, float %5117)  ; DerivCoarseY(value)
  %5155 = fcmp fast ole float %248, %5133
  %5156 = fmul fast float %5132, %5130
  %5157 = fcmp fast ole float %248, %5156
  %5158 = select i1 %5157, float %5117, float %5115
  %5159 = select i1 %5157, float %5115, float %5116
  %5160 = select i1 %5155, float %5116, float %5158
  %5161 = select i1 %5155, float %5117, float %5159
  %5162 = select i1 %5157, float %5151, float %5149
  %5163 = select i1 %5157, float %5149, float %5150
  %5164 = select i1 %5155, float %5150, float %5162
  %5165 = select i1 %5155, float %5151, float %5163
  %5166 = select i1 %5157, float %5154, float %5152
  %5167 = select i1 %5157, float %5152, float %5153
  %5168 = select i1 %5155, float %5153, float %5166
  %5169 = select i1 %5155, float %5154, float %5167
  %5170 = call float @dx.op.unary.f32(i32 27, float %5160)  ; Round_ni(value)
  %5171 = call float @dx.op.unary.f32(i32 27, float %5161)  ; Round_ni(value)
  %5172 = fptosi float %5170 to i32
  %5173 = fptosi float %5171 to i32
  %5174 = xor i32 %5173, %5172
  %5175 = sitofp i32 %5174 to float
  %5176 = fptosi float %5175 to i32
  %5177 = sitofp i32 %5176 to float
  %5178 = fmul fast float %5177, 0x3FE3C6EF40000000
  %5179 = frem fast float %5170, 2.560000e+02
  %5180 = frem fast float %5171, 2.560000e+02
  %5181 = fptoui float %5179 to i32
  %5182 = fptoui float %5180 to i32
  %5183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5181, i32 %5182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.ResRet.f32 %5183, 1
  %5186 = extractvalue %dx.types.ResRet.f32 %5183, 2
  %5187 = fadd fast float %5184, %5178
  %5188 = fadd fast float %5185, %5178
  %5189 = fadd fast float %5186, %5178
  %5190 = call float @dx.op.unary.f32(i32 22, float %5187)  ; Frc(value)
  %5191 = call float @dx.op.unary.f32(i32 22, float %5188)  ; Frc(value)
  %5192 = call float @dx.op.unary.f32(i32 22, float %5189)  ; Frc(value)
  %5193 = fmul fast float %5192, 0x401921FB60000000
  %5194 = call float @dx.op.unary.f32(i32 13, float %5193)  ; Sin(value)
  %5195 = call float @dx.op.unary.f32(i32 12, float %5193)  ; Cos(value)
  %5196 = fsub fast float -0.000000e+00, %5195
  %5197 = fmul fast float %5195, %5160
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5194, float %5161, float %5197)  ; FMad(a,b,c)
  %5199 = fmul fast float %5194, %5160
  %5200 = call float @dx.op.tertiary.f32(i32 46, float %5196, float %5161, float %5199)  ; FMad(a,b,c)
  %5201 = fadd fast float %5198, %5190
  %5202 = fadd fast float %5200, %5191
  %5203 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  %5204 = bitcast float %5203 to i32
  %5205 = icmp eq i32 %5204, 0
  br i1 %5205, label %5244, label %5206

; <label>:5206                                    ; preds = %5109
  %5207 = add i32 %5204, 0
  %5208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5208, %dx.types.Handle %94, float %5201, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float %5164, float %5165, float undef, float %5168, float %5169, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5214 = fsub fast float 1.000000e+00, %4819
  %5215 = call float @dx.op.binary.f32(i32 35, float %5214, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5216 = bitcast float %4819 to i32
  %5217 = sitofp i32 %5216 to float
  %5218 = fadd fast float %5217, 0xC1CFBF8940000000
  %5219 = fmul fast float %5213, %5218
  %5220 = fadd fast float %5219, 0x41CFBF8940000000
  %5221 = fptosi float %5220 to i32
  %5222 = bitcast i32 %5221 to float
  %5223 = bitcast float %5215 to i32
  %5224 = sitofp i32 %5223 to float
  %5225 = fadd fast float %5224, 0xC1CFBF8940000000
  %5226 = fmul fast float %5225, %5213
  %5227 = fadd fast float %5226, 0x41CFBF8940000000
  %5228 = fptosi float %5227 to i32
  %5229 = bitcast i32 %5228 to float
  %5230 = fmul fast float %5222, %5212
  %5231 = fmul fast float %5229, %5212
  %5232 = fsub fast float %5215, %5230
  %5233 = fadd fast float %5231, %5215
  %5234 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5235 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5236 = fsub fast float %5210, %5234
  %5237 = fsub fast float %5235, %5234
  %5238 = bitcast float %5237 to i32
  %5239 = sub nsw i32 2129859010, %5238
  %5240 = bitcast i32 %5239 to float
  %5241 = fmul fast float %5240, %5236
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fcmp fast olt float %5242, 0x3F70101020000000
  br i1 %5243, label %5398, label %5244

; <label>:5244                                    ; preds = %5206, %5109
  %5245 = phi float [ %5242, %5206 ], [ %4819, %5109 ]
  %5246 = fmul fast float %5245, %5112
  %5247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.i32 %5247, 1
  %5249 = extractvalue %dx.types.CBufRet.i32 %5247, 0
  %5250 = add i32 %5249, 0
  %5251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5251, %dx.types.Handle %93, float %5201, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float %5164, float %5165, float undef, float %5168, float %5169, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.ResRet.f32 %5252, 3
  %5257 = and i32 %5248, 255
  %5258 = uitofp i32 %5257 to float
  %5259 = lshr i32 %5248, 8
  %5260 = and i32 %5259, 255
  %5261 = uitofp i32 %5260 to float
  %5262 = fmul fast float %5256, %5258
  %5263 = fadd fast float %5262, %5261
  %5264 = fmul fast float %5263, 0x3F70101000000000
  %5265 = fadd fast float %5264, 0xBFB99999A0000000
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %5266, 0x3FF1C71C80000000
  %5268 = call float @dx.op.binary.f32(i32 36, float %5264, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5269 = fsub fast float 1.000000e+00, %5267
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5270, %5253
  %5272 = fmul fast float %5270, %5254
  %5273 = fmul fast float %5270, %5255
  %5274 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5276 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5277 = fmul fast float %5267, %5253
  %5278 = fmul fast float %5267, %5254
  %5279 = fmul fast float %5267, %5255
  %5280 = fadd fast float %5277, %5268
  %5281 = fadd fast float %5278, %5268
  %5282 = fadd fast float %5279, %5268
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.i32 %5286, 3
  %5288 = extractvalue %dx.types.CBufRet.i32 %5286, 2
  %5289 = add i32 %5288, 0
  %5290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5291 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5290, %dx.types.Handle %93, float %5201, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float %5164, float %5165, float undef, float %5168, float %5169, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5295 = extractvalue %dx.types.ResRet.f32 %5291, 3
  %5296 = and i32 %5287, 255
  %5297 = uitofp i32 %5296 to float
  %5298 = lshr i32 %5287, 8
  %5299 = and i32 %5298, 255
  %5300 = uitofp i32 %5299 to float
  %5301 = lshr i32 %5287, 16
  %5302 = and i32 %5301, 255
  %5303 = uitofp i32 %5302 to float
  %5304 = fmul fast float %5303, 0x3F70101000000000
  %5305 = fmul fast float %5292, %5297
  %5306 = fadd fast float %5305, %5300
  %5307 = fmul fast float %5306, 0x3F70101000000000
  %5308 = fadd fast float %5293, -5.000000e-01
  %5309 = fadd fast float %5295, -5.000000e-01
  %5310 = fmul fast float %5308, %5304
  %5311 = fmul fast float %5309, %5304
  %5312 = fadd fast float %5310, 5.000000e-01
  %5313 = fadd fast float %5311, 5.000000e-01
  %5314 = fmul fast float %5312, 2.000000e+00
  %5315 = fadd fast float %5314, -1.000000e+00
  %5316 = fmul fast float %5313, 2.000000e+00
  %5317 = fadd fast float %5316, -1.000000e+00
  %5318 = fadd fast float %5315, %5317
  %5319 = fmul fast float %5318, 5.000000e-01
  %5320 = fsub fast float %5315, %5317
  %5321 = fmul fast float %5320, 5.000000e-01
  %5322 = call float @dx.op.unary.f32(i32 6, float %5319)  ; FAbs(value)
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = call float @dx.op.unary.f32(i32 6, float %5321)  ; FAbs(value)
  %5325 = fsub fast float %5323, %5324
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5321, float %5325, float %5319, float %5321, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %5319, %5327
  %5329 = fmul fast float %5321, %5327
  %5330 = select i1 %5157, i32 %5147, i32 %5148
  %5331 = select i1 %5155, i32 %5146, i32 %5330
  %5332 = sitofp i32 %5331 to float
  %5333 = fmul fast float %5325, %5332
  %5334 = fmul fast float %5333, %5327
  %5335 = select i1 %5157, float %5334, float %5329
  %5336 = select i1 %5157, float %5329, float %5334
  %5337 = select i1 %5155, float %5334, float %5328
  %5338 = select i1 %5155, float %5329, float %5335
  %5339 = select i1 %5155, float %5328, float %5336
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = fptoui float %5341 to i32
  %5343 = add i32 %5342, 0
  %5344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5344, %dx.types.Handle %93, float %5201, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float %5164, float %5165, float undef, float %5168, float %5169, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = fsub fast float %5274, %5101
  %5348 = fsub fast float %5275, %5102
  %5349 = fsub fast float %5276, %5103
  %5350 = fmul fast float %5347, %5246
  %5351 = fmul fast float %5348, %5246
  %5352 = fmul fast float %5349, %5246
  %5353 = fadd fast float %5350, %5101
  %5354 = fadd fast float %5351, %5102
  %5355 = fadd fast float %5352, %5103
  %5356 = fsub fast float %5283, %5098
  %5357 = fsub fast float %5284, %5099
  %5358 = fsub fast float %5285, %5100
  %5359 = fmul fast float %5356, %5246
  %5360 = fmul fast float %5357, %5246
  %5361 = fmul fast float %5358, %5246
  %5362 = fadd fast float %5359, %5098
  %5363 = fadd fast float %5360, %5099
  %5364 = fadd fast float %5361, %5100
  %5365 = fadd fast float %5337, %5104
  %5366 = fadd fast float %5338, %5105
  %5367 = fadd fast float %5339, %5106
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5365, float %5366, float %5367, float %5365, float %5366, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = call float @dx.op.unary.f32(i32 25, float %5368)  ; Rsqrt(value)
  %5370 = fmul fast float %5369, %5365
  %5371 = fmul fast float %5369, %5366
  %5372 = fmul fast float %5369, %5367
  %5373 = fsub fast float %5370, %5104
  %5374 = fsub fast float %5371, %5105
  %5375 = fsub fast float %5372, %5106
  %5376 = fmul fast float %5373, %5246
  %5377 = fmul fast float %5374, %5246
  %5378 = fmul fast float %5375, %5246
  %5379 = fadd fast float %5376, %5104
  %5380 = fadd fast float %5377, %5105
  %5381 = fadd fast float %5378, %5106
  %5382 = call float @dx.op.binary.f32(i32 36, float %5108, float %5294)  ; FMin(a,b)
  %5383 = fsub fast float %5382, %5108
  %5384 = fmul fast float %5383, %5246
  %5385 = fadd fast float %5384, %5108
  %5386 = fsub fast float %5307, %5107
  %5387 = fmul fast float %5386, %5246
  %5388 = fadd fast float %5387, %5107
  %5389 = fsub fast float %5346, %4713
  %5390 = fsub fast float %5346, %4714
  %5391 = fsub fast float %5346, %4715
  %5392 = fmul fast float %5389, %5246
  %5393 = fmul fast float %5390, %5246
  %5394 = fmul fast float %5391, %5246
  %5395 = fadd fast float %5392, %4713
  %5396 = fadd fast float %5393, %4714
  %5397 = fadd fast float %5394, %4715
  br label %5398

; <label>:5398                                    ; preds = %5244, %5206, %5097, %4813
  %5399 = phi float [ %5362, %5244 ], [ %5098, %5206 ], [ %5098, %5097 ], [ %4669, %4813 ]
  %5400 = phi float [ %5363, %5244 ], [ %5099, %5206 ], [ %5099, %5097 ], [ %4670, %4813 ]
  %5401 = phi float [ %5364, %5244 ], [ %5100, %5206 ], [ %5100, %5097 ], [ %4671, %4813 ]
  %5402 = phi float [ %5353, %5244 ], [ %5101, %5206 ], [ %5101, %5097 ], [ %4709, %4813 ]
  %5403 = phi float [ %5354, %5244 ], [ %5102, %5206 ], [ %5102, %5097 ], [ %4710, %4813 ]
  %5404 = phi float [ %5355, %5244 ], [ %5103, %5206 ], [ %5103, %5097 ], [ %4711, %4813 ]
  %5405 = phi float [ %5395, %5244 ], [ %4713, %5206 ], [ %4713, %5097 ], [ %4713, %4813 ]
  %5406 = phi float [ %5396, %5244 ], [ %4714, %5206 ], [ %4714, %5097 ], [ %4714, %4813 ]
  %5407 = phi float [ %5397, %5244 ], [ %4715, %5206 ], [ %4715, %5097 ], [ %4715, %4813 ]
  %5408 = phi float [ %5379, %5244 ], [ %5104, %5206 ], [ %5104, %5097 ], [ %4627, %4813 ]
  %5409 = phi float [ %5380, %5244 ], [ %5105, %5206 ], [ %5105, %5097 ], [ %4628, %4813 ]
  %5410 = phi float [ %5381, %5244 ], [ %5106, %5206 ], [ %5106, %5097 ], [ %4629, %4813 ]
  %5411 = phi float [ %5388, %5244 ], [ %5107, %5206 ], [ %5107, %5097 ], [ %4672, %4813 ]
  %5412 = phi float [ %5385, %5244 ], [ %5108, %5206 ], [ %5108, %5097 ], [ %4645, %4813 ]
  %5413 = fcmp fast une float %4817, 0.000000e+00
  %5414 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %176, float %177, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.unary.f32(i32 25, float %5414)  ; Rsqrt(value)
  br i1 %5413, label %5423, label %5416

; <label>:5416                                    ; preds = %5398
  %5417 = fmul fast float %5415, %176
  %5418 = fmul fast float %5415, %177
  %5419 = fmul fast float %5415, %178
  %5420 = fsub fast float -0.000000e+00, %5417
  %5421 = fsub fast float -0.000000e+00, %5418
  %5422 = fsub fast float -0.000000e+00, %5419
  br label %5590

; <label>:5423                                    ; preds = %5398
  %5424 = fmul fast float %176, %5415
  %5425 = fsub fast float -0.000000e+00, %5424
  %5426 = fmul fast float %177, %5415
  %5427 = fsub fast float -0.000000e+00, %5426
  %5428 = fmul fast float %178, %5415
  %5429 = fsub fast float -0.000000e+00, %5428
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5427, float %5429, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fmul fast float %4817, 2.500000e+00
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %4817, 0x4013FFFFE0000000
  %5434 = fadd fast float %5433, 0xBFFFFFFFE0000000
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = fmul fast float %4817, 0x4004000020000000
  %5437 = fadd fast float %5436, 0xBFF8000040000000
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = fmul fast float %4651, 1.000000e+01
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fmul fast float %5440, 2.000000e+00
  %5442 = fsub fast float 3.000000e+00, %5441
  %5443 = fmul fast float %5440, %5440
  %5444 = fmul fast float %5443, %5442
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = fsub fast float 0x3FE3333340000000, %5411
  %5447 = fmul fast float %5446, 0x400AAAAAA0000000
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fmul fast float %5445, %5448
  %5450 = fmul fast float %5402, 0x3FEA2B8620000000
  %5451 = fmul fast float %5403, 0x3FEA2B8620000000
  %5452 = fmul fast float %5404, 0x3FEA2B8620000000
  %5453 = fadd fast float %5450, 0x3FC81DFBA0000000
  %5454 = fmul fast float %5453, %5402
  %5455 = fadd fast float %5454, 0x3F910E6020000000
  %5456 = fadd fast float %5451, 0x3FC81DFBA0000000
  %5457 = fmul fast float %5456, %5403
  %5458 = fadd fast float %5457, 0x3F910E6020000000
  %5459 = fadd fast float %5452, 0x3FC81DFBA0000000
  %5460 = fmul fast float %5459, %5404
  %5461 = fadd fast float %5460, 0x3F910E6020000000
  %5462 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = fsub fast float %5462, %5402
  %5466 = fsub fast float %5463, %5403
  %5467 = fsub fast float %5464, %5404
  %5468 = fmul fast float %5465, %5432
  %5469 = fmul fast float %5468, %5449
  %5470 = fmul fast float %5466, %5432
  %5471 = fmul fast float %5470, %5449
  %5472 = fmul fast float %5467, %5432
  %5473 = fmul fast float %5472, %5449
  %5474 = fadd fast float %5469, %5402
  %5475 = fadd fast float %5471, %5403
  %5476 = fadd fast float %5473, %5404
  %5477 = fmul fast float %5412, %5412
  %5478 = fmul fast float %5477, %5477
  %5479 = fadd fast float %5435, 1.000000e+00
  %5480 = fsub fast float %5479, %5449
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fsub fast float 1.000000e+00, %5478
  %5485 = call float @dx.op.binary.f32(i32 36, float %5481, float %5484)  ; FMin(a,b)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5485, float %5486)  ; FMax(a,b)
  %5488 = fadd fast float %5483, 0xBFE4CCCCC0000000
  %5489 = fmul fast float %5488, 0x4006DB6DA0000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5490, 2.000000e+00
  %5492 = fsub fast float 3.000000e+00, %5491
  %5493 = bitcast float %5399 to i32
  %5494 = ashr i32 %5493, 1
  %5495 = add nsw i32 %5494, 532487669
  %5496 = bitcast i32 %5495 to float
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = sub nsw i32 2129859010, %5498
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5500, 2.000000e+00
  %5502 = bitcast float %5400 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = bitcast float %5506 to i32
  %5508 = sub nsw i32 2129859010, %5507
  %5509 = bitcast i32 %5508 to float
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = bitcast float %5401 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, 2.000000e+00
  %5520 = fsub fast float 0x4002A9FBE0000000, %5501
  %5521 = fadd fast float %5501, 0x3FD54FDF00000000
  %5522 = bitcast float %5521 to i32
  %5523 = sub nsw i32 2129859010, %5522
  %5524 = bitcast i32 %5523 to float
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5525
  %5527 = fsub fast float 0x4002A9FBE0000000, %5510
  %5528 = fadd fast float %5510, 0x3FD54FDF00000000
  %5529 = bitcast float %5528 to i32
  %5530 = sub nsw i32 2129859010, %5529
  %5531 = bitcast i32 %5530 to float
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %5532, %5532
  %5534 = fsub fast float 0x4002A9FBE0000000, %5519
  %5535 = fadd fast float %5519, 0x3FD54FDF00000000
  %5536 = bitcast float %5535 to i32
  %5537 = sub nsw i32 2129859010, %5536
  %5538 = bitcast i32 %5537 to float
  %5539 = fmul fast float %5538, %5534
  %5540 = fmul fast float %5539, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5526)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5533)  ; FMax(a,b)
  %5543 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5540)  ; FMax(a,b)
  %5544 = fsub fast float 1.000000e+00, %5430
  %5545 = fadd fast float %5544, %5445
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fsub fast float 1.000000e+00, %4798
  %5548 = fmul fast float %5487, %5547
  %5549 = fmul fast float %5490, %5490
  %5550 = fmul fast float %5549, %5548
  %5551 = fmul fast float %5550, %5492
  %5552 = fmul fast float %5547, 0xBFE99999A0000000
  %5553 = fmul fast float %5552, %5432
  %5554 = fmul fast float %5553, %5449
  %5555 = fadd fast float %5554, 1.000000e+00
  %5556 = fadd fast float %5411, -1.000000e+00
  %5557 = fmul fast float %5555, %5556
  %5558 = fadd fast float %5557, 1.000000e+00
  %5559 = fsub fast float %5541, %5399
  %5560 = fsub fast float %5542, %5400
  %5561 = fsub fast float %5543, %5401
  %5562 = fmul fast float %5551, %5559
  %5563 = fmul fast float %5551, %5560
  %5564 = fmul fast float %5551, %5561
  %5565 = fadd fast float %5562, %5399
  %5566 = fadd fast float %5563, %5400
  %5567 = fadd fast float %5564, %5401
  %5568 = fsub fast float %104, %5408
  %5569 = fsub fast float %105, %5409
  %5570 = fsub fast float %106, %5410
  %5571 = fmul fast float %5551, %5568
  %5572 = fmul fast float %5551, %5569
  %5573 = fmul fast float %5551, %5570
  %5574 = fadd fast float %5571, %5408
  %5575 = fadd fast float %5572, %5409
  %5576 = fadd fast float %5573, %5410
  %5577 = fmul fast float %5551, %5546
  %5578 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = fmul fast float %5577, %5579
  %5581 = fadd fast float %5580, %5578
  %5582 = fsub fast float 1.000000e+00, %5412
  %5583 = fmul fast float %5551, %5582
  %5584 = fadd fast float %5583, %5412
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %5574, float %5575, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 25, float %5585)  ; Rsqrt(value)
  %5587 = fmul fast float %5574, %5586
  %5588 = fmul fast float %5575, %5586
  %5589 = fmul fast float %5576, %5586
  br label %5590

; <label>:5590                                    ; preds = %5423, %5416
  %5591 = phi float [ %5422, %5416 ], [ %5429, %5423 ]
  %5592 = phi float [ %5421, %5416 ], [ %5427, %5423 ]
  %5593 = phi float [ %5420, %5416 ], [ %5425, %5423 ]
  %5594 = phi float [ %5419, %5416 ], [ %5428, %5423 ]
  %5595 = phi float [ %5418, %5416 ], [ %5426, %5423 ]
  %5596 = phi float [ %5417, %5416 ], [ %5424, %5423 ]
  %5597 = phi float [ %5399, %5416 ], [ %5565, %5423 ]
  %5598 = phi float [ %5400, %5416 ], [ %5566, %5423 ]
  %5599 = phi float [ %5401, %5416 ], [ %5567, %5423 ]
  %5600 = phi float [ %5402, %5416 ], [ %5474, %5423 ]
  %5601 = phi float [ %5403, %5416 ], [ %5475, %5423 ]
  %5602 = phi float [ %5404, %5416 ], [ %5476, %5423 ]
  %5603 = phi float [ %5408, %5416 ], [ %5587, %5423 ]
  %5604 = phi float [ %5409, %5416 ], [ %5588, %5423 ]
  %5605 = phi float [ %5410, %5416 ], [ %5589, %5423 ]
  %5606 = phi float [ %5411, %5416 ], [ %5581, %5423 ]
  %5607 = phi float [ %5412, %5416 ], [ %5584, %5423 ]
  %5608 = select i1 %237, float 0.000000e+00, float %5599
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5593, float %5592, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5595, float %5594, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, 2.000000e+00
  %5613 = fmul fast float %5612, %5603
  %5614 = fmul fast float %5612, %5604
  %5615 = fmul fast float %5612, %5605
  %5616 = fsub fast float %5596, %5613
  %5617 = fsub fast float %5595, %5614
  %5618 = fsub fast float %5594, %5615
  %5619 = call float @dx.op.binary.f32(i32 36, float %5607, float 1.000000e+00)  ; FMin(a,b)
  %5620 = fsub fast float 1.000000e+00, %5607
  %5621 = bitcast float %5620 to i32
  %5622 = sub nsw i32 2129859010, %5621
  %5623 = bitcast i32 %5622 to float
  %5624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5625 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = fcmp fast oeq float %5625, 0.000000e+00
  %5627 = fcmp fast oeq float %5624, 0.000000e+00
  %5628 = or i1 %5627, %5626
  br i1 %5628, label %5658, label %5629

; <label>:5629                                    ; preds = %5590
  %5630 = fsub fast float -0.000000e+00, %71
  %5631 = fsub fast float -0.000000e+00, %69
  %5632 = call float @dx.op.unary.f32(i32 24, float %5625)  ; Sqrt(value)
  %5633 = fdiv fast float %5632, %5624
  %5634 = fcmp fast ogt float %5633, 0x3FFB6F8900000000
  %5635 = select i1 %5634, float 0x3FFB6F8900000000, float %5633
  %5636 = fmul fast float %5635, 0x3FE8A23460000000
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = call float @dx.op.binary.f32(i32 35, float %5635, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5639 = fmul fast float %5637, %5624
  %5640 = fmul fast float %5638, 0x3FF279A740000000
  %5641 = fadd fast float %5640, -1.000000e+00
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %70, float %5630, float %5631, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 25, float %5642)  ; Rsqrt(value)
  %5644 = fmul fast float %5643, %5630
  %5645 = fmul fast float %5643, %5631
  %5646 = fmul fast float %5643, %70
  %5647 = fmul fast float %5641, %5641
  %5648 = fsub fast float 1.000000e+00, %5647
  %5649 = fmul fast float %5638, 0x40005F8BE0000000
  %5650 = fsub fast float 0x400C5BF8A0000000, %5649
  %5651 = fdiv fast float %5639, %5650
  %5652 = fmul fast float %5651, 0x3FEE31C3C0000000
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %5638, 0x3FDACB7480000000
  %5655 = fadd fast float %5654, 0xBFD7347680000000
  %5656 = fmul fast float %5655, %5651
  %5657 = fmul fast float %5656, %5648
  br label %5658

; <label>:5658                                    ; preds = %5629, %5590
  %5659 = phi float [ %5644, %5629 ], [ 0.000000e+00, %5590 ]
  %5660 = phi float [ %5645, %5629 ], [ 0.000000e+00, %5590 ]
  %5661 = phi float [ %5646, %5629 ], [ 0.000000e+00, %5590 ]
  %5662 = phi float [ %5653, %5629 ], [ 0.000000e+00, %5590 ]
  %5663 = phi float [ %5657, %5629 ], [ 0.000000e+00, %5590 ]
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = fmul fast float %5664, 0x3FDF454380000000
  %5666 = fmul fast float %5664, %5664
  %5667 = fmul fast float %5666, 0x3FEE471020000000
  %5668 = fadd fast float %5667, 0xBFD42F6020000000
  %5669 = fmul fast float %5624, 0x3FD20DD760000000
  %5670 = fmul fast float %5668, %5663
  %5671 = fadd fast float %5670, %5669
  %5672 = fmul fast float %5665, %5662
  %5673 = fadd fast float %5671, %5672
  %5674 = fsub fast float %5671, %5672
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fmul fast float %5675, 0x3FDF454380000000
  %5677 = fmul fast float %5675, %5675
  %5678 = fmul fast float %5677, 0x3FEE471020000000
  %5679 = fadd fast float %5678, 0xBFD42F6020000000
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5662, float %5663, float 0x3FD20DD760000000, float %5676, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5682 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = fcmp fast oeq float %5682, 0.000000e+00
  %5684 = fcmp fast oeq float %5681, 0.000000e+00
  %5685 = or i1 %5684, %5683
  br i1 %5685, label %5715, label %5686

; <label>:5686                                    ; preds = %5658
  %5687 = fsub fast float -0.000000e+00, %67
  %5688 = fsub fast float -0.000000e+00, %65
  %5689 = call float @dx.op.unary.f32(i32 24, float %5682)  ; Sqrt(value)
  %5690 = fdiv fast float %5689, %5681
  %5691 = fcmp fast ogt float %5690, 0x3FFB6F8900000000
  %5692 = select i1 %5691, float 0x3FFB6F8900000000, float %5690
  %5693 = fmul fast float %5692, 0x3FE8A23460000000
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = call float @dx.op.binary.f32(i32 35, float %5692, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5696 = fmul fast float %5694, %5681
  %5697 = fmul fast float %5695, 0x3FF279A740000000
  %5698 = fadd fast float %5697, -1.000000e+00
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %66, float %5687, float %5688, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.unary.f32(i32 25, float %5699)  ; Rsqrt(value)
  %5701 = fmul fast float %5700, %5687
  %5702 = fmul fast float %5700, %5688
  %5703 = fmul fast float %5700, %66
  %5704 = fmul fast float %5698, %5698
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = fmul fast float %5695, 0x40005F8BE0000000
  %5707 = fsub fast float 0x400C5BF8A0000000, %5706
  %5708 = fdiv fast float %5696, %5707
  %5709 = fmul fast float %5708, 0x3FEE31C3C0000000
  %5710 = fmul fast float %5709, %5705
  %5711 = fmul fast float %5695, 0x3FDACB7480000000
  %5712 = fadd fast float %5711, 0xBFD7347680000000
  %5713 = fmul fast float %5712, %5708
  %5714 = fmul fast float %5713, %5705
  br label %5715

; <label>:5715                                    ; preds = %5686, %5658
  %5716 = phi float [ %5701, %5686 ], [ 0.000000e+00, %5658 ]
  %5717 = phi float [ %5702, %5686 ], [ 0.000000e+00, %5658 ]
  %5718 = phi float [ %5703, %5686 ], [ 0.000000e+00, %5658 ]
  %5719 = phi float [ %5710, %5686 ], [ 0.000000e+00, %5658 ]
  %5720 = phi float [ %5714, %5686 ], [ 0.000000e+00, %5658 ]
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = fmul fast float %5721, 0x3FDF454380000000
  %5723 = fmul fast float %5721, %5721
  %5724 = fmul fast float %5723, 0x3FEE471020000000
  %5725 = fadd fast float %5724, 0xBFD42F6020000000
  %5726 = fmul fast float %5681, 0x3FD20DD760000000
  %5727 = fmul fast float %5725, %5720
  %5728 = fadd fast float %5727, %5726
  %5729 = fmul fast float %5722, %5719
  %5730 = fadd fast float %5728, %5729
  %5731 = fsub fast float %5728, %5729
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = fmul fast float %5732, 0x3FDF454380000000
  %5734 = fmul fast float %5732, %5732
  %5735 = fmul fast float %5734, 0x3FEE471020000000
  %5736 = fadd fast float %5735, 0xBFD42F6020000000
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5719, float %5720, float 0x3FD20DD760000000, float %5733, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5739 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = fcmp fast oeq float %5739, 0.000000e+00
  %5741 = fcmp fast oeq float %5738, 0.000000e+00
  %5742 = or i1 %5741, %5740
  br i1 %5742, label %5772, label %5743

; <label>:5743                                    ; preds = %5715
  %5744 = fsub fast float -0.000000e+00, %63
  %5745 = fsub fast float -0.000000e+00, %61
  %5746 = call float @dx.op.unary.f32(i32 24, float %5739)  ; Sqrt(value)
  %5747 = fdiv fast float %5746, %5738
  %5748 = fcmp fast ogt float %5747, 0x3FFB6F8900000000
  %5749 = select i1 %5748, float 0x3FFB6F8900000000, float %5747
  %5750 = fmul fast float %5749, 0x3FE8A23460000000
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = call float @dx.op.binary.f32(i32 35, float %5749, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5753 = fmul fast float %5751, %5738
  %5754 = fmul fast float %5752, 0x3FF279A740000000
  %5755 = fadd fast float %5754, -1.000000e+00
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5745, float %62, float %5744, float %5745, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 25, float %5756)  ; Rsqrt(value)
  %5758 = fmul fast float %5757, %5744
  %5759 = fmul fast float %5757, %5745
  %5760 = fmul fast float %5757, %62
  %5761 = fmul fast float %5755, %5755
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = fmul fast float %5752, 0x40005F8BE0000000
  %5764 = fsub fast float 0x400C5BF8A0000000, %5763
  %5765 = fdiv fast float %5753, %5764
  %5766 = fmul fast float %5765, 0x3FEE31C3C0000000
  %5767 = fmul fast float %5766, %5762
  %5768 = fmul fast float %5752, 0x3FDACB7480000000
  %5769 = fadd fast float %5768, 0xBFD7347680000000
  %5770 = fmul fast float %5769, %5765
  %5771 = fmul fast float %5770, %5762
  br label %5772

; <label>:5772                                    ; preds = %5743, %5715
  %5773 = phi float [ %5758, %5743 ], [ 0.000000e+00, %5715 ]
  %5774 = phi float [ %5759, %5743 ], [ 0.000000e+00, %5715 ]
  %5775 = phi float [ %5760, %5743 ], [ 0.000000e+00, %5715 ]
  %5776 = phi float [ %5767, %5743 ], [ 0.000000e+00, %5715 ]
  %5777 = phi float [ %5771, %5743 ], [ 0.000000e+00, %5715 ]
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = fmul fast float %5778, 0x3FDF454380000000
  %5780 = fmul fast float %5778, %5778
  %5781 = fmul fast float %5780, 0x3FEE471020000000
  %5782 = fadd fast float %5781, 0xBFD42F6020000000
  %5783 = fmul fast float %5738, 0x3FD20DD760000000
  %5784 = fmul fast float %5782, %5777
  %5785 = fadd fast float %5784, %5783
  %5786 = fmul fast float %5779, %5776
  %5787 = fadd fast float %5785, %5786
  %5788 = fsub fast float %5785, %5786
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fmul fast float %5789, 0x3FDF454380000000
  %5791 = fmul fast float %5789, %5789
  %5792 = fmul fast float %5791, 0x3FEE471020000000
  %5793 = fadd fast float %5792, 0xBFD42F6020000000
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5776, float %5777, float 0x3FD20DD760000000, float %5790, float %5793)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = call float @dx.op.binary.f32(i32 35, float %5673, float 0.000000e+00)  ; FMax(a,b)
  %5796 = call float @dx.op.binary.f32(i32 35, float %5730, float 0.000000e+00)  ; FMax(a,b)
  %5797 = call float @dx.op.binary.f32(i32 35, float %5787, float 0.000000e+00)  ; FMax(a,b)
  %5798 = call float @dx.op.binary.f32(i32 35, float %5674, float 0.000000e+00)  ; FMax(a,b)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5731, float 0.000000e+00)  ; FMax(a,b)
  %5800 = call float @dx.op.binary.f32(i32 35, float %5788, float 0.000000e+00)  ; FMax(a,b)
  %5801 = call float @dx.op.binary.f32(i32 35, float %5680, float 0.000000e+00)  ; FMax(a,b)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5737, float 0.000000e+00)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5794, float 0.000000e+00)  ; FMax(a,b)
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = call float @dx.op.binary.f32(i32 36, float %5600, float %5805)  ; FMin(a,b)
  %5807 = fsub fast float 1.000000e+00, %5619
  %5808 = fmul fast float %5806, %5807
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = bitcast float %5809 to i32
  %5811 = sub nsw i32 2129859010, %5810
  %5812 = bitcast i32 %5811 to float
  %5813 = call float @dx.op.binary.f32(i32 36, float %5601, float %5805)  ; FMin(a,b)
  %5814 = fmul fast float %5813, %5807
  %5815 = fsub fast float 1.000000e+00, %5814
  %5816 = bitcast float %5815 to i32
  %5817 = sub nsw i32 2129859010, %5816
  %5818 = bitcast i32 %5817 to float
  %5819 = call float @dx.op.binary.f32(i32 36, float %5602, float %5805)  ; FMin(a,b)
  %5820 = fmul fast float %5819, %5807
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = bitcast float %5821 to i32
  %5823 = sub nsw i32 2129859010, %5822
  %5824 = bitcast i32 %5823 to float
  %5825 = fmul fast float %5795, %5619
  %5826 = fmul fast float %5825, %5812
  %5827 = fmul fast float %5796, %5619
  %5828 = fmul fast float %5827, %5818
  %5829 = fmul fast float %5797, %5619
  %5830 = fmul fast float %5829, %5824
  %5831 = call float @dx.op.binary.f32(i32 36, float %5597, float %5805)  ; FMin(a,b)
  %5832 = fmul fast float %5831, %5807
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = bitcast float %5833 to i32
  %5835 = sub nsw i32 2129859010, %5834
  %5836 = bitcast i32 %5835 to float
  %5837 = call float @dx.op.binary.f32(i32 36, float %5598, float %5805)  ; FMin(a,b)
  %5838 = fmul fast float %5837, %5807
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = bitcast float %5839 to i32
  %5841 = sub nsw i32 2129859010, %5840
  %5842 = bitcast i32 %5841 to float
  %5843 = call float @dx.op.binary.f32(i32 36, float %5608, float %5805)  ; FMin(a,b)
  %5844 = fmul fast float %5843, %5807
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = bitcast float %5845 to i32
  %5847 = sub nsw i32 2129859010, %5846
  %5848 = bitcast i32 %5847 to float
  %5849 = fmul fast float %5801, %5619
  %5850 = fmul fast float %5849, %5836
  %5851 = fmul fast float %5802, %5619
  %5852 = fmul fast float %5851, %5842
  %5853 = fmul fast float %5803, %5619
  %5854 = fmul fast float %5853, %5848
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5828, float %5830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = select i1 %237, float 0.000000e+00, float %5826
  %5857 = select i1 %237, float %5855, float %5828
  %5858 = select i1 %237, float 0.000000e+00, float %5830
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = select i1 %237, float 0.000000e+00, float %5798
  %5861 = select i1 %237, float %5859, float %5799
  %5862 = select i1 %237, float 0.000000e+00, float %5800
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5852, float %5854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = select i1 %237, float 0.000000e+00, float %5850
  %5865 = select i1 %237, float %5863, float %5852
  %5866 = select i1 %237, float 0.000000e+00, float %5854
  %5867 = fmul fast float %3978, %3978
  %5868 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5869 = fmul fast float %5610, 9.843750e-01
  %5870 = fmul fast float %5606, 9.843750e-01
  %5871 = fadd fast float %5869, 7.812500e-03
  %5872 = fadd fast float %5870, 7.812500e-03
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5871, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.ResRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.ResRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.ResRet.f32 %5873, 3
  %5878 = fsub fast float 1.000000e+00, %5868
  %5879 = fsub fast float %5876, %5874
  %5880 = fsub fast float %5877, %5875
  %5881 = fmul fast float %5879, %5878
  %5882 = fmul fast float %5880, %5878
  %5883 = fadd fast float %5881, %5874
  %5884 = fadd fast float %5882, %5875
  %5885 = fmul fast float %5883, %5597
  %5886 = fmul fast float %5883, %5598
  %5887 = fmul fast float %5883, %5608
  %5888 = fadd fast float %5885, %5884
  %5889 = fadd fast float %5886, %5884
  %5890 = fadd fast float %5887, %5884
  %5891 = fcmp fast ogt float %4646, 0.000000e+00
  br i1 %5891, label %5892, label %5918

; <label>:5892                                    ; preds = %5772
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4646, float %5610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = fadd fast float %5894, -5.000000e-01
  %5898 = fadd fast float %5895, -5.000000e-01
  %5899 = fadd fast float %5896, -5.000000e-01
  %5900 = fsub fast float 1.000000e+00, %5597
  %5901 = fsub fast float 1.000000e+00, %5598
  %5902 = fsub fast float 1.000000e+00, %5608
  %5903 = fmul fast float %5597, 4.000000e+00
  %5904 = fmul fast float %5903, %5900
  %5905 = fmul fast float %5904, %5897
  %5906 = fmul fast float %5598, 4.000000e+00
  %5907 = fmul fast float %5906, %5901
  %5908 = fmul fast float %5907, %5898
  %5909 = fmul fast float %5608, 4.000000e+00
  %5910 = fmul fast float %5909, %5902
  %5911 = fmul fast float %5910, %5899
  %5912 = fadd fast float %5905, %5888
  %5913 = fadd fast float %5908, %5889
  %5914 = fadd fast float %5911, %5890
  %5915 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  br label %5918

; <label>:5918                                    ; preds = %5892, %5772
  %5919 = phi float [ %5915, %5892 ], [ %5888, %5772 ]
  %5920 = phi float [ %5916, %5892 ], [ %5889, %5772 ]
  %5921 = phi float [ %5917, %5892 ], [ %5890, %5772 ]
  %5922 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5919, float %5922)  ; FMax(a,b)
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = fcmp fast ogt float %5925, 0x3E7FF19E20000000
  %5927 = fdiv fast float 1.000000e+00, %5925
  %5928 = select i1 %5926, float %5927, float 0.000000e+00
  %5929 = fmul fast float %5928, %5600
  %5930 = fmul fast float %5928, %5601
  %5931 = fmul fast float %5928, %5602
  %5932 = fadd fast float %5929, -1.000000e+00
  %5933 = fadd fast float %5930, -1.000000e+00
  %5934 = fadd fast float %5931, -1.000000e+00
  %5935 = fmul fast float %5932, 5.000000e-01
  %5936 = fmul fast float %5933, 5.000000e-01
  %5937 = fmul fast float %5934, 5.000000e-01
  %5938 = fadd fast float %5935, 1.000000e+00
  %5939 = fadd fast float %5936, 1.000000e+00
  %5940 = fadd fast float %5937, 1.000000e+00
  %5941 = call float @dx.op.binary.f32(i32 35, float %5610, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5942 = fdiv fast float %3978, %5941
  %5943 = fcmp fast olt float %4695, 1.270000e+02
  %5944 = fcmp fast olt float %4696, 1.270000e+02
  %5945 = fcmp fast olt float %4697, 1.270000e+02
  %5946 = fmul fast float %4695, 0xBFF7154760000000
  %5947 = fmul fast float %5946, %5942
  %5948 = fmul fast float %4696, 0xBFF7154760000000
  %5949 = fmul fast float %5948, %5942
  %5950 = fmul fast float %4697, 0xBFF7154760000000
  %5951 = fmul fast float %5950, %5942
  %5952 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5953 = call float @dx.op.unary.f32(i32 21, float %5949)  ; Exp(value)
  %5954 = call float @dx.op.unary.f32(i32 21, float %5951)  ; Exp(value)
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5957 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5958 = select i1 %5943, float %5955, float 0.000000e+00
  %5959 = select i1 %5944, float %5956, float 0.000000e+00
  %5960 = select i1 %5945, float %5957, float 0.000000e+00
  %5961 = fmul fast float %5958, %5924
  %5962 = fmul fast float %5959, %5924
  %5963 = fmul fast float %5960, %5924
  %5964 = fadd fast float %5961, -1.000000e+00
  %5965 = fadd fast float %5962, -1.000000e+00
  %5966 = fadd fast float %5963, -1.000000e+00
  %5967 = fmul fast float %5964, %4643
  %5968 = fmul fast float %5965, %4643
  %5969 = fmul fast float %5966, %4643
  %5970 = fmul fast float %5919, %5864
  %5971 = fmul fast float %5920, %5865
  %5972 = fmul fast float %5921, %5866
  %5973 = fsub fast float 1.000000e+00, %5610
  %5974 = bitcast float %5973 to i32
  %5975 = sitofp i32 %5974 to float
  %5976 = fmul fast float %5975, 5.000000e+00
  %5977 = fadd fast float %5976, 0xC1EFBF8940000000
  %5978 = fptosi float %5977 to i32
  %5979 = bitcast i32 %5978 to float
  %5980 = fmul fast float %5979, %4647
  %5981 = fmul fast float %5856, %5980
  %5982 = fmul fast float %5981, %5924
  %5983 = fmul fast float %5982, %5938
  %5984 = fmul fast float %5857, %5980
  %5985 = fmul fast float %5984, %5924
  %5986 = fmul fast float %5985, %5939
  %5987 = fmul fast float %5858, %5980
  %5988 = fmul fast float %5987, %5924
  %5989 = fmul fast float %5988, %5940
  %5990 = fadd fast float %5970, %4630
  %5991 = fadd fast float %5990, %5983
  %5992 = fmul fast float %5991, %4643
  %5993 = fadd fast float %5971, %4631
  %5994 = fadd fast float %5993, %5986
  %5995 = fmul fast float %5994, %4643
  %5996 = fadd fast float %5972, %4632
  %5997 = fadd fast float %5996, %5989
  %5998 = fmul fast float %5997, %4643
  %5999 = fmul fast float %5598, 0x4012D0A400000000
  %6000 = fadd fast float %5969, 1.000000e+00
  %6001 = fadd fast float %5968, 1.000000e+00
  %6002 = fadd fast float %5967, 1.000000e+00
  %6003 = fmul fast float %5924, %5858
  %6004 = fmul fast float %5924, %5857
  %6005 = fmul fast float %5924, %5856
  %6006 = fsub fast float 1.000000e+00, %5606
  %6007 = fmul fast float %6006, %4643
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = fadd fast float %5999, 0x3FDB6377A0000000
  %6012 = fmul fast float %6010, %6011
  %6013 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6014 = fadd fast float %6012, %6013
  %6015 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6016 = call float @dx.op.binary.f32(i32 35, float %6015, float 0x3F847AE140000000)  ; FMax(a,b)
  %6017 = fmul fast float %6016, %6016
  %6018 = fmul fast float %6017, %6017
  %6019 = fmul fast float %6018, 0xC00A935000000000
  %6020 = call float @dx.op.unary.f32(i32 21, float %6019)  ; Exp(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6002, %5860
  %6023 = fmul fast float %6022, %6021
  %6024 = fmul fast float %6001, %5861
  %6025 = fmul fast float %6024, %6021
  %6026 = fmul fast float %6000, %5862
  %6027 = fmul fast float %6026, %6021
  %6028 = fadd fast float %6023, %6005
  %6029 = fmul fast float %6028, %4643
  %6030 = fadd fast float %6025, %6004
  %6031 = fmul fast float %6030, %4643
  %6032 = fadd fast float %6027, %6003
  %6033 = fmul fast float %6032, %4643
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6036 = fcmp fast oeq float %6035, 0.000000e+00
  br i1 %6036, label %7181, label %6037

; <label>:6037                                    ; preds = %5918
  %6038 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6040 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = select i1 %237, float %6046, float %6042
  %6050 = select i1 %237, float %6048, float %6043
  %6051 = select i1 %237, float %6047, float %6044
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6054 = fmul fast float %6053, %104
  %6055 = fmul fast float %6053, %105
  %6056 = fmul fast float %6053, %106
  %6057 = fadd fast float %6054, %176
  %6058 = fadd fast float %6055, %177
  %6059 = fadd fast float %6056, %178
  %6060 = fcmp fast olt float %6035, 0.000000e+00
  br i1 %6060, label %6700, label %6061

; <label>:6061                                    ; preds = %6037
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.CBufRet.f32 %6062, 2
  %6066 = extractvalue %dx.types.CBufRet.f32 %6062, 3
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.CBufRet.f32 %6067, 2
  %6071 = extractvalue %dx.types.CBufRet.f32 %6067, 3
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6077 = fmul fast float %6063, %6057
  %6078 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6064, float %6077)  ; FMad(a,b,c)
  %6079 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6065, float %6078)  ; FMad(a,b,c)
  %6080 = fadd fast float %6079, %6066
  %6081 = fmul fast float %6068, %6057
  %6082 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6069, float %6081)  ; FMad(a,b,c)
  %6083 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6070, float %6082)  ; FMad(a,b,c)
  %6084 = fadd fast float %6083, %6071
  %6085 = fmul fast float %6073, %6057
  %6086 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6074, float %6085)  ; FMad(a,b,c)
  %6087 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6075, float %6086)  ; FMad(a,b,c)
  %6088 = fadd fast float %6087, %6076
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = fcmp fast une float %6090, 0.000000e+00
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6096 = fmul fast float %6095, %6080
  %6097 = fmul fast float %6095, %6084
  %6098 = fadd fast float %6096, %6093
  %6099 = fadd fast float %6097, %6094
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.CBufRet.f32 %6100, 3
  %6104 = fmul fast float %6103, %6080
  %6105 = fmul fast float %6103, %6084
  %6106 = fadd fast float %6104, %6101
  %6107 = fadd fast float %6105, %6102
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6110 = fsub fast float %6109, %6088
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6112 = fmul fast float %6110, %6111
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  br i1 %6091, label %6175, label %6115

; <label>:6115                                    ; preds = %6061
  %6116 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = fadd fast float %6118, %6116
  %6120 = fcmp fast ogt float %6119, 0.000000e+00
  br i1 %6120, label %6121, label %6145

; <label>:6121                                    ; preds = %6115
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = fsub fast float %6106, %6123
  %6126 = fsub fast float %6107, %6124
  %6127 = fcmp fast olt float %6125, 0.000000e+00
  %6128 = fcmp fast olt float %6126, 0.000000e+00
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.CBufRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.CBufRet.f32 %6129, 2
  %6133 = extractvalue %dx.types.CBufRet.f32 %6129, 3
  %6134 = select i1 %6127, float %6130, float %6132
  %6135 = select i1 %6128, float %6131, float %6133
  %6136 = fmul fast float %6134, %6125
  %6137 = fmul fast float %6135, %6126
  %6138 = call float @dx.op.unary.f32(i32 6, float %6136)  ; FAbs(value)
  %6139 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6141 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6142 = fsub fast float %6140, %6141
  %6143 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6144 = fmul fast float %6143, %6114
  br label %6145

; <label>:6145                                    ; preds = %6121, %6115
  %6146 = phi float [ %6144, %6121 ], [ 0.000000e+00, %6115 ]
  %6147 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6148 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6149 = fadd fast float %6148, %6147
  %6150 = fcmp fast ogt float %6149, 0.000000e+00
  br i1 %6150, label %6151, label %6175

; <label>:6151                                    ; preds = %6145
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = fsub fast float %6098, %6153
  %6156 = fsub fast float %6099, %6154
  %6157 = fcmp fast olt float %6155, 0.000000e+00
  %6158 = fcmp fast olt float %6156, 0.000000e+00
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6164 = select i1 %6157, float %6160, float %6162
  %6165 = select i1 %6158, float %6161, float %6163
  %6166 = fmul fast float %6164, %6155
  %6167 = fmul fast float %6165, %6156
  %6168 = call float @dx.op.unary.f32(i32 6, float %6166)  ; FAbs(value)
  %6169 = call float @dx.op.unary.f32(i32 6, float %6167)  ; FAbs(value)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6171 = call float @dx.op.binary.f32(i32 35, float %6168, float %6169)  ; FMax(a,b)
  %6172 = fsub fast float %6170, %6171
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fmul fast float %6173, %6114
  br label %6175

; <label>:6175                                    ; preds = %6151, %6145, %6061
  %6176 = phi float [ 0.000000e+00, %6061 ], [ %6174, %6151 ], [ 0.000000e+00, %6145 ]
  %6177 = phi float [ 0.000000e+00, %6061 ], [ %6146, %6151 ], [ %6146, %6145 ]
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 1
  %6180 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = fsub fast float %6080, %6182
  %6185 = fsub fast float %6084, %6183
  %6186 = fcmp fast olt float %6184, 0.000000e+00
  %6187 = fcmp fast olt float %6185, 0.000000e+00
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6188, 2
  %6192 = extractvalue %dx.types.CBufRet.f32 %6188, 3
  %6193 = select i1 %6186, float %6189, float %6191
  %6194 = select i1 %6187, float %6190, float %6192
  %6195 = fmul fast float %6193, %6184
  %6196 = fmul fast float %6194, %6185
  %6197 = call float @dx.op.unary.f32(i32 6, float %6195)  ; FAbs(value)
  %6198 = call float @dx.op.unary.f32(i32 6, float %6196)  ; FAbs(value)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6200 = call float @dx.op.binary.f32(i32 35, float %6197, float %6198)  ; FMax(a,b)
  %6201 = fsub fast float %6199, %6200
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = call float @dx.op.binary.f32(i32 36, float %6202, float %6180)  ; FMin(a,b)
  %6204 = fmul fast float %6203, %6114
  %6205 = fsub fast float %6176, %6204
  %6206 = fsub fast float %6177, %6176
  %6207 = fsub fast float %6206, %6204
  %6208 = call float @dx.op.binary.f32(i32 35, float %6176, float %6177)  ; FMax(a,b)
  %6209 = call float @dx.op.binary.f32(i32 35, float %6204, float %6208)  ; FMax(a,b)
  %6210 = fcmp fast olt float %6209, 1.000000e+00
  br i1 %6210, label %6211, label %6609, !dx.controlflow.hints !84

; <label>:6211                                    ; preds = %6175
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = fcmp fast une float %6213, 0.000000e+00
  br i1 %6214, label %6215, label %6609, !dx.controlflow.hints !85

; <label>:6215                                    ; preds = %6211
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6220 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6225 = extractvalue %dx.types.CBufRet.f32 %6221, 3
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6230 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6231 = fmul fast float %6217, %6057
  %6232 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6218, float %6231)  ; FMad(a,b,c)
  %6233 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6219, float %6232)  ; FMad(a,b,c)
  %6234 = fadd fast float %6233, %6220
  %6235 = fmul fast float %6222, %6057
  %6236 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6223, float %6235)  ; FMad(a,b,c)
  %6237 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6224, float %6236)  ; FMad(a,b,c)
  %6238 = fadd fast float %6237, %6225
  %6239 = fmul fast float %6227, %6057
  %6240 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6228, float %6239)  ; FMad(a,b,c)
  %6241 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6229, float %6240)  ; FMad(a,b,c)
  %6242 = fadd fast float %6241, %6230
  %6243 = fcmp fast oge float %6234, 1.000000e+00
  %6244 = fcmp fast oge float %6238, 1.000000e+00
  %6245 = or i1 %6243, %6244
  %6246 = fcmp fast olt float %6234, 0.000000e+00
  %6247 = fcmp fast olt float %6238, 0.000000e+00
  %6248 = or i1 %6246, %6247
  %6249 = or i1 %6245, %6248
  br i1 %6249, label %6609, label %6250, !dx.controlflow.hints !86

; <label>:6250                                    ; preds = %6215
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.i32 %6255, 2
  %6257 = uitofp i32 %6256 to float
  %6258 = extractvalue %dx.types.CBufRet.i32 %6255, 3
  %6259 = uitofp i32 %6258 to float
  %6260 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6261 = fmul fast float %6260, 2.000000e+00
  %6262 = fsub fast float %6234, %6252
  %6263 = fsub fast float %6238, %6253
  %6264 = fmul fast float %6261, %6262
  %6265 = fmul fast float %6261, %6263
  %6266 = fdiv fast float 1.000000e+00, %6040
  %6267 = fmul fast float %6265, %6266
  %6268 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6269 = fmul fast float %6254, %6059
  %6270 = fmul fast float %6269, %6261
  %6271 = call float @dx.op.unary.f32(i32 6, float %6270)  ; FAbs(value)
  %6272 = call float @dx.op.unary.f32(i32 6, float %6264)  ; FAbs(value)
  %6273 = call float @dx.op.binary.f32(i32 35, float %6271, float %6268)  ; FMax(a,b)
  %6274 = call float @dx.op.binary.f32(i32 35, float %6272, float %6273)  ; FMax(a,b)
  %6275 = fmul fast float %6274, 2.000000e+00
  %6276 = call float @dx.op.unary.f32(i32 23, float %6275)  ; Log(value)
  %6277 = call float @dx.op.binary.f32(i32 35, float %6276, float %6257)  ; FMax(a,b)
  %6278 = call float @dx.op.unary.f32(i32 22, float %6277)  ; Frc(value)
  %6279 = fadd fast float %6278, 0xBFEA666660000000
  %6280 = fmul fast float %6279, 8.000000e+00
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = call float @dx.op.unary.f32(i32 27, float %6277)  ; Round_ni(value)
  %6283 = fadd fast float %6282, %6281
  %6284 = call float @dx.op.binary.f32(i32 36, float %6283, float %6259)  ; FMin(a,b)
  %6285 = call float @dx.op.unary.f32(i32 27, float %6284)  ; Round_ni(value)
  %6286 = fsub fast float -0.000000e+00, %6285
  %6287 = call float @dx.op.unary.f32(i32 21, float %6286)  ; Exp(value)
  %6288 = fmul fast float %6287, %6261
  %6289 = fmul fast float %6288, %6234
  %6290 = fmul fast float %6288, %6238
  %6291 = fmul fast float %6289, 2.500000e-01
  %6292 = fmul fast float %6290, 2.500000e-01
  %6293 = fadd fast float %6291, 5.000000e-01
  %6294 = fadd fast float %6292, 5.000000e-01
  %6295 = fsub fast float %6259, %6257
  %6296 = fptoui float %6295 to i32
  %6297 = add i32 %6296, 320
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %6297)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6301 = fcmp fast une float %6284, %6259
  %6302 = fsub fast float %6234, %6299
  %6303 = fsub fast float %6238, %6300
  %6304 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6305 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6306 = fmul fast float %6304, %6288
  %6307 = fmul fast float %6305, %6288
  %6308 = fcmp fast olt float %6306, 1.000000e+00
  %6309 = fcmp fast olt float %6307, 1.000000e+00
  %6310 = and i1 %6308, %6309
  %6311 = or i1 %6301, %6310
  br i1 %6311, label %6312, label %6609, !dx.controlflow.hints !87

; <label>:6312                                    ; preds = %6250
  %6313 = fmul fast float %6290, 5.000000e-01
  %6314 = fmul fast float %6289, 5.000000e-01
  %6315 = fadd fast float %6313, 5.000000e-01
  %6316 = fadd fast float %6314, 5.000000e-01
  %6317 = sitofp i32 %6256 to float
  %6318 = fsub fast float %6284, %6317
  %6319 = call float @dx.op.unary.f32(i32 27, float %6318)  ; Round_ni(value)
  %6320 = call float @dx.op.unary.f32(i32 22, float %6284)  ; Frc(value)
  %6321 = call float @dx.op.unary.f32(i32 22, float %6316)  ; Frc(value)
  %6322 = call float @dx.op.unary.f32(i32 22, float %6315)  ; Frc(value)
  %6323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6321, float %6322, float %6319, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = extractvalue %dx.types.ResRet.f32 %6323, 3
  %6328 = fcmp fast ogt float %6320, 0.000000e+00
  br i1 %6328, label %6329, label %6350, !dx.controlflow.hints !88

; <label>:6329                                    ; preds = %6312
  %6330 = fadd fast float %6319, 1.000000e+00
  %6331 = call float @dx.op.unary.f32(i32 22, float %6293)  ; Frc(value)
  %6332 = call float @dx.op.unary.f32(i32 22, float %6294)  ; Frc(value)
  %6333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6331, float %6332, float %6330, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.ResRet.f32 %6333, 3
  %6338 = fsub fast float %6334, %6324
  %6339 = fsub fast float %6335, %6325
  %6340 = fsub fast float %6336, %6326
  %6341 = fsub fast float %6337, %6327
  %6342 = fmul fast float %6338, %6320
  %6343 = fmul fast float %6339, %6320
  %6344 = fmul fast float %6340, %6320
  %6345 = fmul fast float %6341, %6320
  %6346 = fadd fast float %6342, %6324
  %6347 = fadd fast float %6343, %6325
  %6348 = fadd fast float %6344, %6326
  %6349 = fadd fast float %6345, %6327
  br label %6350

; <label>:6350                                    ; preds = %6329, %6312
  %6351 = phi float [ %6346, %6329 ], [ %6324, %6312 ]
  %6352 = phi float [ %6347, %6329 ], [ %6325, %6312 ]
  %6353 = phi float [ %6348, %6329 ], [ %6326, %6312 ]
  %6354 = phi float [ %6349, %6329 ], [ %6327, %6312 ]
  %6355 = fadd fast float %6351, -5.000000e-01
  %6356 = fadd fast float %6353, -5.000000e-01
  %6357 = fmul fast float %6355, 0xBFD5555560000000
  %6358 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6356, float %6357)  ; FMad(a,b,c)
  %6359 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6352, float 0.000000e+00)  ; FMad(a,b,c)
  %6360 = fadd fast float %6359, %6354
  %6361 = fmul fast float %6355, -7.500000e-01
  %6362 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6356, float %6361)  ; FMad(a,b,c)
  %6363 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6352, float 0.000000e+00)  ; FMad(a,b,c)
  %6364 = fadd fast float %6363, %6354
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6372 = fsub fast float %6368, %6358
  %6373 = fsub fast float %6369, %6360
  %6374 = fsub fast float %6370, %6362
  %6375 = fsub fast float %6371, %6364
  %6376 = fmul fast float %6372, %6366
  %6377 = fmul fast float %6373, %6366
  %6378 = fmul fast float %6374, %6366
  %6379 = fmul fast float %6375, %6366
  %6380 = fadd fast float %6376, %6358
  %6381 = fadd fast float %6377, %6360
  %6382 = fadd fast float %6378, %6362
  %6383 = fadd fast float %6379, %6364
  %6384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6385 = extractvalue %dx.types.ResRet.i32 %6384, 0
  %6386 = and i32 %6385, 536870911
  %6387 = uitofp i32 %6386 to float
  %6388 = fmul fast float %6387, %6234
  %6389 = fmul fast float %6387, %6238
  %6390 = fptoui float %6388 to i32
  %6391 = fptoui float %6389 to i32
  %6392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.i32 %6392, 0
  %6394 = and i32 %6393, 31
  %6395 = lshr i32 %6390, %6394
  %6396 = lshr i32 %6391, %6394
  %6397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6398 = extractvalue %dx.types.ResRet.i32 %6397, 0
  %6399 = and i32 %6398, 31
  %6400 = shl i32 1, %6399
  %6401 = call i32 @dx.op.binary.i32(i32 40, i32 %6400, i32 4)  ; UMin(a,b)
  %6402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6403 = extractvalue %dx.types.ResRet.i32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.i32 %6402, 1
  %6405 = icmp eq i32 %6401, 0
  br i1 %6405, label %6447, label %6406

; <label>:6406                                    ; preds = %6350
  br label %6407

; <label>:6407                                    ; preds = %6435, %6406
  %6408 = phi i32 [ %6438, %6435 ], [ 0, %6406 ]
  %6409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6410 = extractvalue %dx.types.ResRet.i32 %6409, 0
  %6411 = lshr i32 %6410, 16
  %6412 = and i32 %6411, 31
  %6413 = shl i32 %6396, %6412
  %6414 = add i32 %6413, %6395
  %6415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6416 = extractvalue %dx.types.ResRet.i32 %6415, 0
  %6417 = and i32 %6416, 31
  %6418 = shl i32 %6414, %6417
  %6419 = add i32 %6418, %6408
  %6420 = shl i32 %6419, 2
  %6421 = add i32 %6420, 32
  %6422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.i32 %6422, 0
  %6424 = icmp slt i32 %6423, 0
  %6425 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6408
  %6426 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6408
  %6427 = bitcast float* %6425 to i32*
  %6428 = bitcast float* %6426 to i32*
  br i1 %6424, label %6429, label %6435

; <label>:6429                                    ; preds = %6407
  %6430 = and i32 %6423, 1073741823
  %6431 = add nuw nsw i32 %6430, 20
  %6432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6431, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.i32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.i32 %6432, 1
  br label %6435

; <label>:6435                                    ; preds = %6429, %6407
  %6436 = phi i32 [ %6433, %6429 ], [ %6403, %6407 ]
  %6437 = phi i32 [ %6434, %6429 ], [ %6404, %6407 ]
  store i32 %6436, i32* %6427, align 4
  store i32 %6437, i32* %6428, align 4
  %6438 = add nuw i32 %6408, 1
  %6439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.i32 %6439, 2
  %6441 = icmp eq i32 %6440, 0
  %6442 = icmp ugt i32 %6423, -1073741825
  %6443 = and i1 %6442, %6441
  %6444 = icmp ult i32 %6438, %6401
  %6445 = and i1 %6443, %6444
  br i1 %6445, label %6407, label %6446

; <label>:6446                                    ; preds = %6435
  br label %6447

; <label>:6447                                    ; preds = %6446, %6350
  %6448 = phi i32 [ 0, %6350 ], [ %6438, %6446 ]
  %6449 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6450 = fptoui float %6449 to i32
  %6451 = icmp eq i32 %6450, 0
  br i1 %6451, label %6503, label %6452

; <label>:6452                                    ; preds = %6447
  br label %6453

; <label>:6453                                    ; preds = %6498, %6452
  %6454 = phi i32 [ %6499, %6498 ], [ %6448, %6452 ]
  %6455 = phi i32 [ %6500, %6498 ], [ 0, %6452 ]
  %6456 = lshr i32 %6455, 2
  %6457 = and i32 %6455, 3
  %6458 = add nuw nsw i32 %6456, 83
  %6459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %6458)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.i32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.i32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.i32 %6459, 2
  %6463 = extractvalue %dx.types.CBufRet.i32 %6459, 3
  %6464 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %6460, i32* %6464, align 4
  %6465 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %6461, i32* %6465, align 4
  %6466 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %6462, i32* %6466, align 4
  %6467 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %6463, i32* %6467, align 4
  %6468 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %6457
  %6469 = load i32, i32* %6468, align 4, !tbaa !89, !noalias !93
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = lshr i32 %6471, 16
  %6473 = and i32 %6472, 31
  %6474 = shl i32 %6396, %6473
  %6475 = add i32 %6474, %6395
  %6476 = shl i32 %6475, 2
  %6477 = add i32 %6476, %6469
  %6478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6477, i32 undef)  ; BufferLoad(srv,index,wot)
  %6479 = extractvalue %dx.types.ResRet.i32 %6478, 0
  %6480 = icmp eq i32 %6479, 0
  br i1 %6480, label %6498, label %6481

; <label>:6481                                    ; preds = %6453
  %6482 = icmp slt i32 %6479, 0
  %6483 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6454
  %6484 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6454
  %6485 = bitcast float* %6483 to i32*
  %6486 = bitcast float* %6484 to i32*
  br i1 %6482, label %6487, label %6494

; <label>:6487                                    ; preds = %6481
  %6488 = and i32 %6479, 1073741823
  %6489 = add i32 %6469, 20
  %6490 = add i32 %6489, %6488
  %6491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6490, i32 undef)  ; BufferLoad(srv,index,wot)
  %6492 = extractvalue %dx.types.ResRet.i32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.i32 %6491, 1
  br label %6494

; <label>:6494                                    ; preds = %6487, %6481
  %6495 = phi i32 [ %6492, %6487 ], [ %6403, %6481 ]
  %6496 = phi i32 [ %6493, %6487 ], [ %6404, %6481 ]
  store i32 %6495, i32* %6485, align 4
  store i32 %6496, i32* %6486, align 4
  %6497 = add i32 %6454, 1
  br label %6498

; <label>:6498                                    ; preds = %6494, %6453
  %6499 = phi i32 [ %6454, %6453 ], [ %6497, %6494 ]
  %6500 = add nuw i32 %6455, 1
  %6501 = icmp eq i32 %6500, %6450
  br i1 %6501, label %6502, label %6453

; <label>:6502                                    ; preds = %6498
  br label %6503

; <label>:6503                                    ; preds = %6502, %6447
  %6504 = phi i32 [ %6448, %6447 ], [ %6499, %6502 ]
  %6505 = icmp eq i32 %6504, 1
  %6506 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %6507 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %6505, label %6508, label %6511

; <label>:6508                                    ; preds = %6503
  %6509 = load float, float* %6506, align 4
  %6510 = load float, float* %6507, align 4
  br label %6538

; <label>:6511                                    ; preds = %6503
  %6512 = load float, float* %6506, align 4
  %6513 = load float, float* %6507, align 4
  %6514 = fdiv fast float 1.000000e+00, %6513
  %6515 = fsub fast float %6512, %6514
  %6516 = icmp ugt i32 %6504, 1
  br i1 %6516, label %6517, label %6533

; <label>:6517                                    ; preds = %6511
  br label %6518

; <label>:6518                                    ; preds = %6518, %6517
  %6519 = phi float [ %6528, %6518 ], [ %6515, %6517 ]
  %6520 = phi float [ %6529, %6518 ], [ %6512, %6517 ]
  %6521 = phi i32 [ %6530, %6518 ], [ 1, %6517 ]
  %6522 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6521
  %6523 = load float, float* %6522, align 4
  %6524 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6521
  %6525 = load float, float* %6524, align 4
  %6526 = fdiv fast float 1.000000e+00, %6525
  %6527 = fsub fast float %6523, %6526
  %6528 = call float @dx.op.binary.f32(i32 36, float %6519, float %6527)  ; FMin(a,b)
  %6529 = call float @dx.op.binary.f32(i32 35, float %6520, float %6523)  ; FMax(a,b)
  %6530 = add nuw i32 %6521, 1
  %6531 = icmp eq i32 %6530, %6504
  br i1 %6531, label %6532, label %6518

; <label>:6532                                    ; preds = %6518
  br label %6533

; <label>:6533                                    ; preds = %6532, %6511
  %6534 = phi float [ %6515, %6511 ], [ %6528, %6532 ]
  %6535 = phi float [ %6512, %6511 ], [ %6529, %6532 ]
  %6536 = fsub fast float %6535, %6534
  %6537 = fdiv fast float 1.000000e+00, %6536
  br label %6538

; <label>:6538                                    ; preds = %6533, %6508
  %6539 = phi float [ %6509, %6508 ], [ %6535, %6533 ]
  %6540 = phi float [ %6510, %6508 ], [ %6537, %6533 ]
  %6541 = fadd fast float %6242, %6539
  %6542 = fmul fast float %6541, %6540
  %6543 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6544 = fmul fast float %6543, 2.000000e+00
  %6545 = fsub fast float 1.000000e+00, %6544
  %6546 = fmul fast float %6380, %6380
  %6547 = fsub fast float %6381, %6546
  %6548 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6547)  ; FMax(a,b)
  %6549 = fdiv fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6381, %6380
  %6551 = fsub fast float %6382, %6550
  %6552 = fsub fast float %6545, %6380
  %6553 = fmul fast float %6545, %6545
  %6554 = fsub fast float %6553, %6381
  %6555 = fmul fast float %6549, %6551
  %6556 = fmul fast float %6555, %6552
  %6557 = fsub fast float %6554, %6556
  %6558 = fmul fast float %6381, %6381
  %6559 = fsub fast float %6383, %6558
  %6560 = fmul fast float %6551, %6551
  %6561 = fmul fast float %6560, %6549
  %6562 = fsub fast float %6559, %6561
  %6563 = fdiv fast float %6557, %6562
  %6564 = fmul fast float %6563, %6551
  %6565 = fsub fast float %6552, %6564
  %6566 = fmul fast float %6565, %6549
  %6567 = fmul fast float %6566, %6380
  %6568 = fsub fast float 1.000000e+00, %6567
  %6569 = fmul fast float %6563, %6381
  %6570 = fsub fast float %6568, %6569
  %6571 = fmul fast float %6566, %6566
  %6572 = fmul fast float %6563, 4.000000e+00
  %6573 = fmul fast float %6572, %6570
  %6574 = fsub fast float %6571, %6573
  %6575 = call float @dx.op.unary.f32(i32 24, float %6574)  ; Sqrt(value)
  %6576 = fcmp fast oge float %6566, 0.000000e+00
  %6577 = fsub fast float -0.000000e+00, %6575
  %6578 = select i1 %6576, float %6577, float %6575
  %6579 = fsub fast float %6578, %6566
  %6580 = fdiv fast float %6579, %6563
  %6581 = fdiv fast float %6570, %6579
  %6582 = fmul fast float %6580, 5.000000e-01
  %6583 = fmul fast float %6581, 2.000000e+00
  %6584 = select i1 %6576, float %6582, float %6583
  %6585 = select i1 %6576, float %6583, float %6582
  %6586 = call float @dx.op.binary.f32(i32 35, float %6584, float %6585)  ; FMax(a,b)
  %6587 = call float @dx.op.binary.f32(i32 36, float %6584, float %6585)  ; FMin(a,b)
  %6588 = fcmp fast ogt float %6545, %6586
  %6589 = fsub fast float %6545, %6587
  %6590 = fsub fast float %6545, %6586
  %6591 = fsub fast float %6586, %6587
  %6592 = select i1 %6588, float %6590, float %6591
  %6593 = fmul float %6589, %6592
  %6594 = select i1 %6588, float %6587, float %6545
  %6595 = fcmp fast ogt float %6545, %6587
  %6596 = fmul fast float %6594, %6586
  %6597 = fadd fast float %6594, %6586
  %6598 = fmul fast float %6597, %6380
  %6599 = fadd fast float %6596, %6381
  %6600 = fsub fast float %6599, %6598
  %6601 = fdiv fast float %6600, %6593
  %6602 = select i1 %6595, float %6601, float 0.000000e+00
  %6603 = fsub fast float 1.000000e+00, %6602
  %6604 = select i1 %6588, float %6603, float %6602
  %6605 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6607 = fmul fast float %6606, %6605
  %6608 = fsub fast float 1.000000e+00, %6607
  br label %6609

; <label>:6609                                    ; preds = %6538, %6250, %6215, %6211, %6175
  %6610 = phi float [ 1.000000e+00, %6175 ], [ %6608, %6538 ], [ 1.000000e+00, %6215 ], [ 1.000000e+00, %6250 ], [ 1.000000e+00, %6211 ]
  %6611 = fcmp fast ogt float %6207, 0.000000e+00
  br i1 %6611, label %6612, label %6620, !dx.controlflow.hints !102

; <label>:6612                                    ; preds = %6609
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6615 = fadd fast float %6614, %6088
  %6616 = call float @dx.op.binary.f32(i32 35, float %6615, float 0.000000e+00)  ; FMax(a,b)
  %6617 = fadd fast float %6616, 0x3F10000000000000
  %6618 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %6106, float %6107, float undef, float undef, i32 0, i32 0, i32 undef, float %6617)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6619 = extractvalue %dx.types.ResRet.f32 %6618, 0
  br label %6620

; <label>:6620                                    ; preds = %6612, %6609
  %6621 = phi float [ %6619, %6612 ], [ 1.000000e+00, %6609 ]
  %6622 = fcmp fast ogt float %6205, 0.000000e+00
  br i1 %6622, label %6623, label %6631, !dx.controlflow.hints !103

; <label>:6623                                    ; preds = %6620
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6626 = fadd fast float %6625, %6088
  %6627 = call float @dx.op.binary.f32(i32 35, float %6626, float 0.000000e+00)  ; FMax(a,b)
  %6628 = fadd fast float %6627, 0x3F10000000000000
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %6098, float %6099, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  br label %6631

; <label>:6631                                    ; preds = %6623, %6620
  %6632 = phi float [ %6630, %6623 ], [ 1.000000e+00, %6620 ]
  %6633 = fcmp fast ogt float %6204, 0.000000e+00
  br i1 %6633, label %6634, label %6646, !dx.controlflow.hints !104

; <label>:6634                                    ; preds = %6631
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = fadd fast float %6636, %6088
  %6638 = call float @dx.op.binary.f32(i32 35, float %6637, float 0.000000e+00)  ; FMax(a,b)
  %6639 = fadd fast float %6638, 0x3F10000000000000
  br i1 %6091, label %6640, label %6643, !dx.controlflow.hints !105

; <label>:6640                                    ; preds = %6634
  %6641 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %6080, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float %6639)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6642 = extractvalue %dx.types.ResRet.f32 %6641, 0
  br label %6646

; <label>:6643                                    ; preds = %6634
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %6080, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float %6639)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  br label %6646

; <label>:6646                                    ; preds = %6643, %6640, %6631
  %6647 = phi float [ %6642, %6640 ], [ %6645, %6643 ], [ 1.000000e+00, %6631 ]
  %6648 = fsub fast float %6621, %6610
  %6649 = fmul fast float %6648, %6177
  %6650 = fadd fast float %6649, %6610
  %6651 = fsub fast float %6632, %6650
  %6652 = fmul fast float %6651, %6176
  %6653 = fadd fast float %6652, %6650
  %6654 = fsub fast float %6647, %6653
  %6655 = fmul fast float %6654, %6204
  %6656 = fadd fast float %6655, %6653
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6659 = fcmp fast ogt float %6658, 0.000000e+00
  br i1 %6659, label %6660, label %6700, !dx.controlflow.hints !106

; <label>:6660                                    ; preds = %6646
  %6661 = fcmp fast ugt float %6658, 0.000000e+00
  br i1 %6661, label %6662, label %6697

; <label>:6662                                    ; preds = %6660
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.CBufRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6672 = extractvalue %dx.types.CBufRet.f32 %6668, 3
  %6673 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.CBufRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.CBufRet.f32 %6675, 2
  %6679 = fadd fast float %6676, %6057
  %6680 = fadd fast float %6677, %6058
  %6681 = fadd fast float %6678, %6059
  %6682 = fmul fast float %6679, %6664
  %6683 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6680, float %6682)  ; FMad(a,b,c)
  %6684 = call float @dx.op.tertiary.f32(i32 46, float %6666, float %6681, float %6683)  ; FMad(a,b,c)
  %6685 = fadd fast float %6684, %6667
  %6686 = fmul fast float %6679, %6669
  %6687 = call float @dx.op.tertiary.f32(i32 46, float %6670, float %6680, float %6686)  ; FMad(a,b,c)
  %6688 = call float @dx.op.tertiary.f32(i32 46, float %6671, float %6681, float %6687)  ; FMad(a,b,c)
  %6689 = fadd fast float %6688, %6672
  %6690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %6685, float %6689, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = fmul fast float %6691, %6674
  %6693 = fadd fast float %6692, %6673
  %6694 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6695 = fmul fast float %6694, %6658
  %6696 = fsub fast float 1.000000e+00, %6695
  br label %6697

; <label>:6697                                    ; preds = %6662, %6660
  %6698 = phi float [ %6696, %6662 ], [ 1.000000e+00, %6660 ]
  %6699 = fmul fast float %6698, %6656
  br label %6700

; <label>:6700                                    ; preds = %6697, %6646, %6037
  %6701 = phi float [ 1.000000e+00, %6037 ], [ %6699, %6697 ], [ %6656, %6646 ]
  %6702 = call float @dx.op.binary.f32(i32 36, float %6701, float %6701)  ; FMin(a,b)
  %6703 = call float @dx.op.binary.f32(i32 36, float %6701, float %6702)  ; FMin(a,b)
  %6704 = fcmp fast ogt float %6703, 0.000000e+00
  br i1 %6704, label %6705, label %6866, !dx.controlflow.hints !107

; <label>:6705                                    ; preds = %6700
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = fmul fast float %6707, %6057
  %6722 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6708, float %6721)  ; FMad(a,b,c)
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6709, float %6722)  ; FMad(a,b,c)
  %6724 = fadd fast float %6723, %6710
  %6725 = fmul fast float %6712, %6057
  %6726 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6713, float %6725)  ; FMad(a,b,c)
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6714, float %6726)  ; FMad(a,b,c)
  %6728 = fadd fast float %6727, %6715
  %6729 = fmul fast float %6717, %6057
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6718, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6719, float %6730)  ; FMad(a,b,c)
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6736 = fmul fast float %6735, %6724
  %6737 = fmul fast float %6735, %6728
  %6738 = fadd fast float %6736, %6733
  %6739 = fadd fast float %6737, %6734
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.CBufRet.f32 %6740, 1
  %6743 = fsub fast float %6738, %6741
  %6744 = fsub fast float %6739, %6742
  %6745 = fcmp fast olt float %6743, 0.000000e+00
  %6746 = fcmp fast olt float %6744, 0.000000e+00
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6752 = select i1 %6745, float %6748, float %6750
  %6753 = select i1 %6746, float %6749, float %6751
  %6754 = fmul fast float %6752, %6743
  %6755 = fmul fast float %6753, %6744
  %6756 = call float @dx.op.unary.f32(i32 6, float %6754)  ; FAbs(value)
  %6757 = call float @dx.op.unary.f32(i32 6, float %6755)  ; FAbs(value)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6759 = call float @dx.op.binary.f32(i32 35, float %6756, float %6757)  ; FMax(a,b)
  %6760 = fsub fast float %6758, %6759
  %6761 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6804, !dx.controlflow.hints !108

; <label>:6763                                    ; preds = %6705
  %6764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %6738, float %6739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6765 = extractvalue %dx.types.ResRet.f32 %6764, 1
  %6766 = fcmp fast ogt float %6765, 0.000000e+00
  br i1 %6766, label %6767, label %6799

; <label>:6767                                    ; preds = %6763
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %6738, float %6739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = extractvalue %dx.types.ResRet.f32 %6768, 3
  %6773 = fsub fast float 1.000000e+00, %6720
  %6774 = fsub fast float %6773, %6731
  %6775 = fmul fast float %6774, 0x400921FB60000000
  %6776 = fadd fast float %6775, 0x3FF921FB60000000
  %6777 = call float @dx.op.unary.f32(i32 13, float %6776)  ; Sin(value)
  %6778 = fadd fast float %6777, -1.000000e+00
  %6779 = fmul fast float %6778, 0x3FD45F3060000000
  %6780 = fmul fast float %6774, 0x401921FB60000000
  %6781 = fadd fast float %6780, 0x400921FB60000000
  %6782 = call float @dx.op.unary.f32(i32 13, float %6781)  ; Sin(value)
  %6783 = fadd fast float %6782, 0x3E7777A5C0000000
  %6784 = fmul fast float %6783, 0x3FC45F3060000000
  %6785 = fmul fast float %6774, 0x4022D97C80000000
  %6786 = fadd fast float %6785, 0x4012D97C80000000
  %6787 = call float @dx.op.unary.f32(i32 13, float %6786)  ; Sin(value)
  %6788 = fadd fast float %6787, 1.000000e+00
  %6789 = fmul fast float %6788, 0x3FBB2995E0000000
  %6790 = fmul fast float %6774, 0x402921FB60000000
  %6791 = fadd fast float %6790, 0x401921FB60000000
  %6792 = call float @dx.op.unary.f32(i32 13, float %6791)  ; Sin(value)
  %6793 = fadd fast float %6792, 0xBE8777A5C0000000
  %6794 = fmul fast float %6793, 0x3FB45F3060000000
  %6795 = call float @dx.op.dot4.f32(i32 56, float %6769, float %6770, float %6771, float %6772, float %6779, float %6784, float %6789, float %6794)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6796 = fmul fast float %6795, 0xBFF7154760000000
  %6797 = call float @dx.op.unary.f32(i32 21, float %6796)  ; Exp(value)
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  br label %6799

; <label>:6799                                    ; preds = %6767, %6763
  %6800 = phi float [ %6798, %6767 ], [ 1.000000e+00, %6763 ]
  %6801 = fadd fast float %6800, -1.000000e+00
  %6802 = fmul fast float %6801, %6761
  %6803 = fadd fast float %6802, 1.000000e+00
  br label %6804

; <label>:6804                                    ; preds = %6799, %6705
  %6805 = phi float [ %6803, %6799 ], [ 1.000000e+00, %6705 ]
  %6806 = fmul fast float %6805, %6701
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.CBufRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6811 = fadd fast float %6808, %176
  %6812 = fadd fast float %6809, %177
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6815 = fsub fast float -0.000000e+00, %6811
  %6816 = fsub fast float -0.000000e+00, %6812
  %6817 = fsub fast float -0.000000e+00, %178
  %6818 = fsub fast float %6817, %6810
  %6819 = fadd fast float %6818, %6814
  %6820 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6815, float %6816, float %6819)  ; Dot3(ax,ay,az,bx,by,bz)
  %6821 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6038, float %6039, float %6040)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = fdiv fast float 1.000000e+00, %6821
  %6823 = fmul fast float %6822, %6820
  %6824 = fmul fast float %6038, %6823
  %6825 = fmul fast float %6039, %6823
  %6826 = fadd fast float %6824, %6811
  %6827 = fadd fast float %6825, %6812
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = fsub fast float %6826, %6829
  %6832 = fsub fast float %6827, %6830
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6836 = fmul fast float %6831, %6834
  %6837 = fmul fast float %6832, %6835
  %6838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.i32 %6838, 3
  %6840 = icmp eq i32 %6839, 0
  br i1 %6840, label %6846, label %6841

; <label>:6841                                    ; preds = %6804
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6836, float %6837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  br label %6851

; <label>:6846                                    ; preds = %6804
  %6847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6836, float %6837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6848 = extractvalue %dx.types.ResRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.ResRet.f32 %6847, 1
  %6850 = extractvalue %dx.types.ResRet.f32 %6847, 2
  br label %6851

; <label>:6851                                    ; preds = %6846, %6841
  %6852 = phi float [ %6843, %6841 ], [ %6848, %6846 ]
  %6853 = phi float [ %6844, %6841 ], [ %6849, %6846 ]
  %6854 = phi float [ %6845, %6841 ], [ %6850, %6846 ]
  %6855 = extractvalue %dx.types.CBufRet.f32 %6813, 2
  %6856 = fmul fast float %6855, %6852
  %6857 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6858 = fsub fast float %6823, %6857
  %6859 = fsub fast float %6858, %6856
  %6860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6859)  ; FMax(a,b)
  %6861 = fmul fast float %6860, %6853
  %6862 = call float @dx.op.binary.f32(i32 36, float %6854, float %6861)  ; FMin(a,b)
  %6863 = fmul fast float %6862, 0xBFF7154760000000
  %6864 = call float @dx.op.unary.f32(i32 21, float %6863)  ; Exp(value)
  %6865 = fmul fast float %6806, %6864
  br label %6866

; <label>:6866                                    ; preds = %6851, %6700
  %6867 = phi float [ %6865, %6851 ], [ %6701, %6700 ]
  %6868 = call float @dx.op.binary.f32(i32 36, float %6867, float %6867)  ; FMin(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6867, float %6868)  ; FMin(a,b)
  %6870 = fcmp fast ogt float %6869, 0.000000e+00
  br i1 %6870, label %6871, label %7181, !dx.controlflow.hints !109

; <label>:6871                                    ; preds = %6866
  %6872 = fmul fast float %6867, %6049
  %6873 = fmul fast float %6867, %6050
  %6874 = fmul fast float %6867, %6051
  %6875 = fsub fast float %6038, %5596
  %6876 = fsub fast float %6039, %5595
  %6877 = fsub fast float %6040, %5594
  %6878 = call float @dx.op.dot3.f32(i32 55, float %6875, float %6876, float %6877, float %6875, float %6876, float %6877)  ; Dot3(ax,ay,az,bx,by,bz)
  %6879 = call float @dx.op.unary.f32(i32 25, float %6878)  ; Rsqrt(value)
  %6880 = fmul fast float %6879, %6875
  %6881 = fmul fast float %6879, %6876
  %6882 = fmul fast float %6879, %6877
  %6883 = call float @dx.op.dot3.f32(i32 55, float %6038, float %6039, float %6040, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6884 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5592, float %5591, float %6880, float %6881, float %6882)  ; Dot3(ax,ay,az,bx,by,bz)
  %6885 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6886 = fmul fast float %6885, %6885
  %6887 = fmul fast float %6886, %5623
  %6888 = call float @dx.op.unary.f32(i32 7, float %6887)  ; Saturate(value)
  %6889 = fmul fast float %6888, %6885
  %6890 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %6880, float %6881, float %6882)  ; Dot3(ax,ay,az,bx,by,bz)
  %6891 = fmul fast float %6890, %6890
  %6892 = call float @dx.op.unary.f32(i32 6, float %6883)  ; FAbs(value)
  %6893 = call float @dx.op.binary.f32(i32 35, float %6006, float 0x3F847AE140000000)  ; FMax(a,b)
  %6894 = fmul fast float %6893, %6893
  %6895 = fmul fast float %6894, %6894
  %6896 = fsub fast float 1.000000e+00, %6895
  %6897 = fmul fast float %5610, %5610
  %6898 = fmul fast float %6897, %6896
  %6899 = fadd fast float %6898, %6895
  %6900 = bitcast float %6899 to i32
  %6901 = ashr i32 %6900, 1
  %6902 = add nsw i32 %6901, 532487669
  %6903 = bitcast i32 %6902 to float
  %6904 = fadd fast float %6903, %5610
  %6905 = fmul fast float %6895, %6891
  %6906 = fsub fast float 1.000000e+00, %6891
  %6907 = fadd fast float %6906, %6905
  %6908 = fmul fast float %6892, %6892
  %6909 = fmul fast float %6908, %6896
  %6910 = fadd fast float %6909, %6895
  %6911 = bitcast float %6910 to i32
  %6912 = ashr i32 %6911, 1
  %6913 = add nsw i32 %6912, 532487669
  %6914 = bitcast i32 %6913 to float
  %6915 = fadd fast float %6914, %6892
  %6916 = fmul fast float %6907, %6907
  %6917 = fmul fast float %6916, %6904
  %6918 = fmul fast float %6917, %6915
  %6919 = fdiv fast float 0x3FF0A00000000000, %6918
  %6920 = fmul fast float %6919, %6895
  %6921 = fmul fast float %5868, 0x3FF9999980000000
  %6922 = fsub fast float 5.000000e+00, %6921
  %6923 = call float @dx.op.unary.f32(i32 6, float %6884)  ; FAbs(value)
  %6924 = fsub fast float 1.000000e+00, %6923
  %6925 = fmul fast float %5868, 0x41D9660740000000
  %6926 = fadd fast float %6925, 0xC1EFBF8940000000
  %6927 = bitcast float %6924 to i32
  %6928 = sitofp i32 %6927 to float
  %6929 = fmul fast float %6928, %6922
  %6930 = fadd fast float %6926, %6929
  %6931 = fptosi float %6930 to i32
  %6932 = bitcast i32 %6931 to float
  %6933 = fsub fast float 1.000000e+00, %5597
  %6934 = fsub fast float 1.000000e+00, %5598
  %6935 = fsub fast float 1.000000e+00, %5608
  %6936 = fmul fast float %6932, %6933
  %6937 = fmul fast float %6932, %6934
  %6938 = fmul fast float %6932, %6935
  %6939 = fadd fast float %6936, %5597
  %6940 = fadd fast float %6937, %5598
  %6941 = fadd fast float %6938, %5608
  br i1 %5891, label %6942, label %6965

; <label>:6942                                    ; preds = %6871
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4646, float %6923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 1
  %6946 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6947 = fadd fast float %6944, -5.000000e-01
  %6948 = fadd fast float %6945, -5.000000e-01
  %6949 = fadd fast float %6946, -5.000000e-01
  %6950 = fmul fast float %5597, 4.000000e+00
  %6951 = fmul fast float %6950, %6933
  %6952 = fmul fast float %6951, %6947
  %6953 = fmul fast float %5598, 4.000000e+00
  %6954 = fmul fast float %6953, %6934
  %6955 = fmul fast float %6954, %6948
  %6956 = fmul fast float %5608, 4.000000e+00
  %6957 = fmul fast float %6956, %6935
  %6958 = fmul fast float %6957, %6949
  %6959 = fadd fast float %6952, %6939
  %6960 = fadd fast float %6955, %6940
  %6961 = fadd fast float %6958, %6941
  %6962 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6963 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  br label %6965

; <label>:6965                                    ; preds = %6942, %6871
  %6966 = phi float [ %6962, %6942 ], [ %6939, %6871 ]
  %6967 = phi float [ %6963, %6942 ], [ %6940, %6871 ]
  %6968 = phi float [ %6964, %6942 ], [ %6941, %6871 ]
  %6969 = fmul fast float %6883, 9.843750e-01
  %6970 = fadd fast float %6969, 7.812500e-03
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %6970, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.ResRet.f32 %6971, 3
  %6976 = fsub fast float %6974, %6972
  %6977 = fsub fast float %6975, %6973
  %6978 = fmul fast float %6976, %5878
  %6979 = fmul fast float %6977, %5878
  %6980 = fadd fast float %6978, %6972
  %6981 = fadd fast float %6979, %6973
  %6982 = fmul fast float %6980, %5597
  %6983 = fmul fast float %6980, %5598
  %6984 = fmul fast float %6980, %5608
  %6985 = fadd fast float %6982, %6981
  %6986 = fadd fast float %6983, %6981
  %6987 = fadd fast float %6984, %6981
  br i1 %5891, label %6988, label %7011

; <label>:6988                                    ; preds = %6965
  %6989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4646, float %6883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.ResRet.f32 %6989, 1
  %6992 = extractvalue %dx.types.ResRet.f32 %6989, 2
  %6993 = fadd fast float %6990, -5.000000e-01
  %6994 = fadd fast float %6991, -5.000000e-01
  %6995 = fadd fast float %6992, -5.000000e-01
  %6996 = fmul fast float %5597, 4.000000e+00
  %6997 = fmul fast float %6996, %6933
  %6998 = fmul fast float %6997, %6993
  %6999 = fmul fast float %5598, 4.000000e+00
  %7000 = fmul fast float %6999, %6934
  %7001 = fmul fast float %7000, %6994
  %7002 = fmul fast float %5608, 4.000000e+00
  %7003 = fmul fast float %7002, %6935
  %7004 = fmul fast float %7003, %6995
  %7005 = fadd fast float %6998, %6985
  %7006 = fadd fast float %7001, %6986
  %7007 = fadd fast float %7004, %6987
  %7008 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7009 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7010 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  br label %7011

; <label>:7011                                    ; preds = %6988, %6965
  %7012 = phi float [ %7008, %6988 ], [ %6985, %6965 ]
  %7013 = phi float [ %7009, %6988 ], [ %6986, %6965 ]
  %7014 = phi float [ %7010, %6988 ], [ %6987, %6965 ]
  %7015 = call float @dx.op.binary.f32(i32 35, float %7013, float %7014)  ; FMax(a,b)
  %7016 = call float @dx.op.binary.f32(i32 35, float %7012, float %7015)  ; FMax(a,b)
  %7017 = fsub fast float 1.000000e+00, %7016
  %7018 = call float @dx.op.binary.f32(i32 35, float %6892, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7019 = fdiv fast float %3978, %7018
  %7020 = fmul fast float %5946, %7019
  %7021 = fmul fast float %5948, %7019
  %7022 = fmul fast float %5950, %7019
  %7023 = call float @dx.op.unary.f32(i32 21, float %7020)  ; Exp(value)
  %7024 = call float @dx.op.unary.f32(i32 21, float %7021)  ; Exp(value)
  %7025 = call float @dx.op.unary.f32(i32 21, float %7022)  ; Exp(value)
  %7026 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7027 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7028 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  %7029 = select i1 %5943, float %7026, float 0.000000e+00
  %7030 = select i1 %5944, float %7027, float 0.000000e+00
  %7031 = select i1 %5945, float %7028, float 0.000000e+00
  %7032 = fsub fast float -0.000000e+00, %5603
  %7033 = fsub fast float -0.000000e+00, %5604
  %7034 = fsub fast float -0.000000e+00, %5605
  %7035 = call float @dx.op.dot3.f32(i32 55, float %6038, float %6039, float %6040, float %7032, float %7033, float %7034)  ; Dot3(ax,ay,az,bx,by,bz)
  %7036 = call float @dx.op.unary.f32(i32 7, float %7035)  ; Saturate(value)
  %7037 = fmul fast float %7036, 9.843750e-01
  %7038 = fadd fast float %7037, 7.812500e-03
  %7039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %7038, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.ResRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.ResRet.f32 %7039, 2
  %7043 = extractvalue %dx.types.ResRet.f32 %7039, 3
  %7044 = fsub fast float %7042, %7040
  %7045 = fsub fast float %7043, %7041
  %7046 = fmul fast float %7044, %5878
  %7047 = fmul fast float %7045, %5878
  %7048 = fadd fast float %7046, %7040
  %7049 = fadd fast float %7047, %7041
  %7050 = fmul fast float %7048, %5597
  %7051 = fmul fast float %7048, %5598
  %7052 = fmul fast float %7048, %5608
  %7053 = fadd fast float %7050, %7049
  %7054 = fadd fast float %7051, %7049
  %7055 = fadd fast float %7052, %7049
  br i1 %5891, label %7056, label %7079

; <label>:7056                                    ; preds = %7011
  %7057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4646, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.ResRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.ResRet.f32 %7057, 2
  %7061 = fadd fast float %7058, -5.000000e-01
  %7062 = fadd fast float %7059, -5.000000e-01
  %7063 = fadd fast float %7060, -5.000000e-01
  %7064 = fmul fast float %5597, 4.000000e+00
  %7065 = fmul fast float %7064, %6933
  %7066 = fmul fast float %7065, %7061
  %7067 = fmul fast float %5598, 4.000000e+00
  %7068 = fmul fast float %7067, %6934
  %7069 = fmul fast float %7068, %7062
  %7070 = fmul fast float %5608, 4.000000e+00
  %7071 = fmul fast float %7070, %6935
  %7072 = fmul fast float %7071, %7063
  %7073 = fadd fast float %7066, %7053
  %7074 = fadd fast float %7069, %7054
  %7075 = fadd fast float %7072, %7055
  %7076 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7077 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7078 = call float @dx.op.unary.f32(i32 7, float %7075)  ; Saturate(value)
  br label %7079

; <label>:7079                                    ; preds = %7056, %7011
  %7080 = phi float [ %7076, %7056 ], [ %7053, %7011 ]
  %7081 = phi float [ %7077, %7056 ], [ %7054, %7011 ]
  %7082 = phi float [ %7078, %7056 ], [ %7055, %7011 ]
  %7083 = call float @dx.op.binary.f32(i32 35, float %7081, float %7082)  ; FMax(a,b)
  %7084 = call float @dx.op.binary.f32(i32 35, float %7080, float %7083)  ; FMax(a,b)
  %7085 = fsub fast float 1.000000e+00, %7084
  %7086 = fmul fast float %6006, %6011
  %7087 = fadd fast float %6013, %7086
  %7088 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7089 = fsub fast float %6038, %5616
  %7090 = fsub fast float %6039, %5617
  %7091 = fsub fast float %6040, %5618
  %7092 = call float @dx.op.dot3.f32(i32 55, float %7089, float %7090, float %7091, float %7089, float %7090, float %7091)  ; Dot3(ax,ay,az,bx,by,bz)
  %7093 = call float @dx.op.unary.f32(i32 25, float %7092)  ; Rsqrt(value)
  %7094 = fmul fast float %7093, %7089
  %7095 = fmul fast float %7093, %7090
  %7096 = fmul fast float %7093, %7091
  %7097 = call float @dx.op.dot3.f32(i32 55, float %7032, float %7033, float %7034, float %7094, float %7095, float %7096)  ; Dot3(ax,ay,az,bx,by,bz)
  %7098 = fmul fast float %7097, %7097
  %7099 = call float @dx.op.unary.f32(i32 6, float %7036)  ; FAbs(value)
  %7100 = call float @dx.op.binary.f32(i32 35, float %7088, float 0x3F847AE140000000)  ; FMax(a,b)
  %7101 = fmul fast float %7100, %7100
  %7102 = fmul fast float %7101, %7101
  %7103 = fsub fast float 1.000000e+00, %7102
  %7104 = fmul fast float %6897, %7103
  %7105 = fadd fast float %7104, %7102
  %7106 = bitcast float %7105 to i32
  %7107 = ashr i32 %7106, 1
  %7108 = add nsw i32 %7107, 532487669
  %7109 = bitcast i32 %7108 to float
  %7110 = fadd fast float %7109, %5610
  %7111 = fmul fast float %7102, %7098
  %7112 = fsub fast float 1.000000e+00, %7098
  %7113 = fadd fast float %7112, %7111
  %7114 = fmul fast float %7099, %7099
  %7115 = fmul fast float %7114, %7103
  %7116 = fadd fast float %7115, %7102
  %7117 = bitcast float %7116 to i32
  %7118 = ashr i32 %7117, 1
  %7119 = add nsw i32 %7118, 532487669
  %7120 = bitcast i32 %7119 to float
  %7121 = fadd fast float %7120, %7099
  %7122 = fmul fast float %7113, %7113
  %7123 = fmul fast float %7122, %7110
  %7124 = fmul fast float %7123, %7121
  %7125 = fdiv fast float 0x3FF0A00000000000, %7124
  %7126 = fmul fast float %7125, %7102
  %7127 = fmul fast float %7036, %7029
  %7128 = fmul fast float %7036, %7030
  %7129 = fmul fast float %7036, %7031
  %7130 = fmul fast float %7127, %7085
  %7131 = fmul fast float %7130, %7126
  %7132 = fmul fast float %7128, %7085
  %7133 = fmul fast float %7132, %7126
  %7134 = fmul fast float %7129, %7085
  %7135 = fmul fast float %7134, %7126
  %7136 = fmul fast float %6966, %6920
  %7137 = fmul fast float %6967, %6920
  %7138 = fmul fast float %6968, %6920
  %7139 = fsub fast float 1.000000e+00, %6884
  %7140 = bitcast float %7139 to i32
  %7141 = sitofp i32 %7140 to float
  %7142 = fmul fast float %7141, 5.000000e+00
  %7143 = fadd fast float %7142, 0xC1EFBF8940000000
  %7144 = fptosi float %7143 to i32
  %7145 = bitcast i32 %7144 to float
  %7146 = fmul fast float %7145, %4647
  %7147 = fmul fast float %7017, %7146
  %7148 = fmul fast float %7147, %5938
  %7149 = fmul fast float %7147, %5939
  %7150 = fmul fast float %7147, %5940
  %7151 = fadd fast float %7148, %7136
  %7152 = fadd fast float %7149, %7137
  %7153 = fadd fast float %7150, %7138
  %7154 = fmul fast float %7151, %6889
  %7155 = fmul fast float %7152, %6889
  %7156 = fmul fast float %7153, %6889
  %7157 = fmul fast float %6889, %6872
  %7158 = fmul fast float %7157, %7017
  %7159 = fmul fast float %6889, %6873
  %7160 = fmul fast float %7159, %7017
  %7161 = fmul fast float %6889, %6874
  %7162 = fmul fast float %7161, %7017
  %7163 = fadd fast float %7154, %7131
  %7164 = fadd fast float %7155, %7133
  %7165 = fadd fast float %7156, %7135
  %7166 = fmul fast float %7163, %6872
  %7167 = fmul fast float %7164, %6873
  %7168 = fmul fast float %7165, %6874
  %7169 = fadd fast float %7158, %6028
  %7170 = fmul fast float %7169, %4643
  %7171 = fadd fast float %7160, %6030
  %7172 = fmul fast float %7171, %4643
  %7173 = fadd fast float %7162, %6032
  %7174 = fmul fast float %7173, %4643
  %7175 = fadd fast float %7166, %5991
  %7176 = fmul fast float %7175, %4643
  %7177 = fadd fast float %7167, %5994
  %7178 = fmul fast float %7177, %4643
  %7179 = fadd fast float %7168, %5997
  %7180 = fmul fast float %7179, %4643
  br label %7181

; <label>:7181                                    ; preds = %7079, %6866, %5918
  %7182 = phi float [ %5992, %5918 ], [ %5992, %6866 ], [ %7176, %7079 ]
  %7183 = phi float [ %5995, %5918 ], [ %5995, %6866 ], [ %7178, %7079 ]
  %7184 = phi float [ %5998, %5918 ], [ %5998, %6866 ], [ %7180, %7079 ]
  %7185 = phi float [ %6029, %5918 ], [ %6029, %6866 ], [ %7170, %7079 ]
  %7186 = phi float [ %6031, %5918 ], [ %6031, %6866 ], [ %7172, %7079 ]
  %7187 = phi float [ %6033, %5918 ], [ %6033, %6866 ], [ %7174, %7079 ]
  %7188 = fmul fast float %4643, %5967
  %7189 = fsub fast float -0.000000e+00, %7188
  %7190 = fmul fast float %4643, %5968
  %7191 = fsub fast float -0.000000e+00, %7190
  %7192 = fmul fast float %4643, %5969
  %7193 = fsub fast float -0.000000e+00, %7192
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = fmul fast float %7195, %5973
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 3
  %7199 = fsub fast float 1.000000e+00, %4650
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = fadd fast float %7187, %4649
  %7202 = fmul fast float %7201, %4650
  %7203 = fmul fast float %7200, %7198
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 3
  %7206 = fmul fast float %7185, %5600
  %7207 = fmul fast float %7186, %5601
  %7208 = fmul fast float %7187, %5602
  %7209 = fcmp fast ogt float %88, %198
  %7210 = and i1 %7209, %4718
  %7211 = or i1 %4797, %7210
  %7212 = icmp eq i32 %4717, 2
  %7213 = fcmp fast ole float %88, %198
  %7214 = and i1 %7213, %7212
  %7215 = or i1 %7214, %7211
  br i1 %7210, label %7216, label %7473

; <label>:7216                                    ; preds = %7181
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 3
  %7220 = fmul fast float %7218, %97
  %7221 = fmul fast float %7219, %98
  %7222 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7221)  ; Saturate(value)
  %7224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7222, float %7223, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = extractvalue %dx.types.ResRet.f32 %7224, 3
  %7229 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7222, float %7223, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7230 = extractvalue %dx.types.ResRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.ResRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.ResRet.f32 %7229, 2
  %7233 = extractvalue %dx.types.ResRet.f32 %7229, 3
  %7234 = call float @dx.op.binary.f32(i32 35, float %7226, float %7227)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 35, float %7225, float %7234)  ; FMax(a,b)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7235, float %7228)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 36, float %7231, float %7232)  ; FMin(a,b)
  %7238 = call float @dx.op.binary.f32(i32 36, float %7230, float %7237)  ; FMin(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7238, float %7233)  ; FMin(a,b)
  %7240 = fmul fast float %7236, 2.550000e+02
  %7241 = fadd fast float %7240, 0x3F70101020000000
  %7242 = fptoui float %7241 to i32
  %7243 = fmul fast float %7239, 2.550000e+02
  %7244 = fadd fast float %7243, 0x3F70101020000000
  %7245 = fptoui float %7244 to i32
  %7246 = icmp ult i32 %7242, %7245
  br i1 %7246, label %7247, label %7415

; <label>:7247                                    ; preds = %7216
  %7248 = fcmp fast ogt float %87, 9.843750e-01
  %7249 = fadd fast float %88, -4.000000e+00
  %7250 = select i1 %7248, float -4.000000e+00, float %7249
  %7251 = call float @dx.op.binary.f32(i32 35, float %7250, float 0.000000e+00)  ; FMax(a,b)
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = fadd fast float %7253, %7251
  %7255 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7256 = fmul fast float %7254, %7255
  %7257 = call float @dx.op.unary.f32(i32 23, float %7256)  ; Log(value)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7252, 3
  %7259 = fmul fast float %7258, %7257
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7262 = fmul fast float %7259, %7261
  %7263 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7264 = uitofp i32 %7242 to float
  %7265 = uitofp i32 %7245 to float
  %7266 = fadd fast float %7264, 5.000000e-01
  %7267 = fadd fast float %7265, 5.000000e-01
  %7268 = fmul fast float %7261, %7266
  %7269 = fmul fast float %7261, %7267
  %7270 = fadd fast float %7268, 0x3F0FFB4800000000
  %7271 = fadd fast float %7269, 0xBF0FFB4800000000
  %7272 = call float @dx.op.binary.f32(i32 35, float %7263, float %7270)  ; FMax(a,b)
  %7273 = call float @dx.op.binary.f32(i32 36, float %7272, float %7271)  ; FMin(a,b)
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7278 = fmul fast float %7275, %7273
  %7279 = fadd fast float %7277, %7278
  %7280 = fadd fast float %7277, %7276
  %7281 = fsub fast float %7275, %7276
  %7282 = fadd fast float %7281, %7277
  %7283 = call float @dx.op.binary.f32(i32 35, float %7279, float %7280)  ; FMax(a,b)
  %7284 = call float @dx.op.binary.f32(i32 36, float %7283, float %7282)  ; FMin(a,b)
  %7285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %7222, float %7223, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.ResRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.ResRet.f32 %7285, 2
  %7289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.i32 %7289, 0
  %7291 = extractvalue %dx.types.CBufRet.i32 %7289, 1
  %7292 = uitofp i32 %7290 to float
  %7293 = uitofp i32 %7291 to float
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = fmul fast float %7292, %7222
  %7298 = fmul fast float %7293, %7223
  %7299 = fadd fast float %7297, -5.000000e-01
  %7300 = fadd fast float %7298, -5.000000e-01
  %7301 = call float @dx.op.unary.f32(i32 22, float %7299)  ; Frc(value)
  %7302 = call float @dx.op.unary.f32(i32 22, float %7300)  ; Frc(value)
  %7303 = fmul fast float %7301, %7301
  %7304 = fmul fast float %7303, %7301
  %7305 = fsub fast float 3.000000e+00, %7301
  %7306 = fmul fast float %7303, %7305
  %7307 = fmul fast float %7301, 3.000000e+00
  %7308 = fmul fast float %7304, 3.000000e+00
  %7309 = fmul fast float %7303, 6.000000e+00
  %7310 = fsub fast float %7308, %7309
  %7311 = fadd fast float %7310, 4.000000e+00
  %7312 = fmul fast float %7311, 0x3FC5555560000000
  %7313 = fmul fast float %7304, -3.000000e+00
  %7314 = fadd fast float %7303, %7301
  %7315 = fmul fast float %7314, 3.000000e+00
  %7316 = fadd fast float %7313, 1.000000e+00
  %7317 = fadd fast float %7316, %7315
  %7318 = fmul fast float %7304, 0x3FC5555560000000
  %7319 = fmul fast float %7302, %7302
  %7320 = fmul fast float %7319, %7302
  %7321 = fsub fast float 3.000000e+00, %7302
  %7322 = fmul fast float %7319, %7321
  %7323 = fmul fast float %7302, 3.000000e+00
  %7324 = fmul fast float %7320, 3.000000e+00
  %7325 = fmul fast float %7319, 6.000000e+00
  %7326 = fsub fast float %7324, %7325
  %7327 = fadd fast float %7326, 4.000000e+00
  %7328 = fmul fast float %7327, 0x3FC5555560000000
  %7329 = fmul fast float %7320, -3.000000e+00
  %7330 = fadd fast float %7319, %7302
  %7331 = fmul fast float %7330, 3.000000e+00
  %7332 = fadd fast float %7329, 1.000000e+00
  %7333 = fadd fast float %7332, %7331
  %7334 = fmul fast float %7320, 0x3FC5555560000000
  %7335 = fadd fast float %7301, 1.000000e+00
  %7336 = fsub fast float 1.000000e+00, %7307
  %7337 = fadd fast float %7336, %7306
  %7338 = fadd fast float %7337, %7311
  %7339 = fmul fast float %7338, 0x3FC5555560000000
  %7340 = fdiv fast float %7312, %7339
  %7341 = fsub fast float %7335, %7340
  %7342 = fsub fast float 1.000000e+00, %7301
  %7343 = fadd fast float %7317, %7304
  %7344 = fmul fast float %7343, 0x3FC5555560000000
  %7345 = fdiv fast float %7318, %7344
  %7346 = fadd fast float %7342, %7345
  %7347 = fadd fast float %7302, 1.000000e+00
  %7348 = fsub fast float 1.000000e+00, %7323
  %7349 = fadd fast float %7348, %7322
  %7350 = fadd fast float %7349, %7327
  %7351 = fmul fast float %7350, 0x3FC5555560000000
  %7352 = fdiv fast float %7328, %7351
  %7353 = fsub fast float %7347, %7352
  %7354 = fsub fast float 1.000000e+00, %7302
  %7355 = fadd fast float %7333, %7320
  %7356 = fmul fast float %7355, 0x3FC5555560000000
  %7357 = fdiv fast float %7334, %7356
  %7358 = fadd fast float %7357, %7354
  %7359 = fmul fast float %7341, %7295
  %7360 = fsub fast float %7222, %7359
  %7361 = fmul fast float %7346, %7295
  %7362 = fadd fast float %7361, %7222
  %7363 = fmul fast float %7358, %7296
  %7364 = fadd fast float %7363, %7223
  %7365 = fmul fast float %7353, %7296
  %7366 = fsub fast float %7223, %7365
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7360, float %7366, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7362, float %7366, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7360, float %7364, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7362, float %7364, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7383 = fsub fast float %7376, %7368
  %7384 = fsub fast float %7377, %7369
  %7385 = fsub fast float %7378, %7370
  %7386 = fmul fast float %7383, %7356
  %7387 = fmul fast float %7384, %7356
  %7388 = fmul fast float %7385, %7356
  %7389 = fadd fast float %7386, %7368
  %7390 = fadd fast float %7387, %7369
  %7391 = fadd fast float %7388, %7370
  %7392 = fsub fast float %7380, %7372
  %7393 = fsub fast float %7381, %7373
  %7394 = fsub fast float %7382, %7374
  %7395 = fmul fast float %7392, %7356
  %7396 = fmul fast float %7393, %7356
  %7397 = fmul fast float %7394, %7356
  %7398 = fsub fast float %7372, %7389
  %7399 = fadd fast float %7398, %7395
  %7400 = fsub fast float %7373, %7390
  %7401 = fadd fast float %7400, %7396
  %7402 = fsub fast float %7374, %7391
  %7403 = fadd fast float %7402, %7397
  %7404 = fmul fast float %7399, %7344
  %7405 = fmul fast float %7401, %7344
  %7406 = fmul fast float %7403, %7344
  %7407 = fadd fast float %7404, %7389
  %7408 = fadd fast float %7405, %7390
  %7409 = fadd fast float %7406, %7391
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7412 = fmul fast float %7407, %7411
  %7413 = fmul fast float %7408, %7411
  %7414 = fmul fast float %7409, %7411
  br label %7415

; <label>:7415                                    ; preds = %7247, %7216
  %7416 = phi float [ %7286, %7247 ], [ 1.000000e+00, %7216 ]
  %7417 = phi float [ %7287, %7247 ], [ 1.000000e+00, %7216 ]
  %7418 = phi float [ %7288, %7247 ], [ 1.000000e+00, %7216 ]
  %7419 = phi float [ %7412, %7247 ], [ 0.000000e+00, %7216 ]
  %7420 = phi float [ %7413, %7247 ], [ 0.000000e+00, %7216 ]
  %7421 = phi float [ %7414, %7247 ], [ 0.000000e+00, %7216 ]
  %7422 = fmul fast float %7419, %7189
  %7423 = fmul fast float %7420, %7191
  %7424 = fmul fast float %7421, %7193
  %7425 = call float @dx.op.dot3.f32(i32 55, float %7416, float %7417, float %7418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7422, float %7423, float %7424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = select i1 %237, float %7425, float %7416
  %7428 = select i1 %237, float %7425, float %7417
  %7429 = select i1 %237, float 1.000000e+00, float %7418
  %7430 = select i1 %237, float %7426, float %7422
  %7431 = select i1 %237, float 0.000000e+00, float %7423
  %7432 = select i1 %237, float 0.000000e+00, float %7424
  %7433 = fmul fast float %7427, %7206
  %7434 = fmul fast float %7428, %7207
  %7435 = fmul fast float %7429, %7208
  %7436 = fadd fast float %7433, %7430
  %7437 = fadd fast float %7434, %7431
  %7438 = fadd fast float %7432, %7435
  %7439 = fmul fast float %7427, %7182
  %7440 = fmul fast float %7428, %7183
  %7441 = fmul fast float %7429, %7184
  %7442 = fmul fast float %125, %7218
  %7443 = fmul fast float %127, %7219
  %7444 = fsub fast float 1.000000e+00, %7442
  %7445 = fsub fast float 1.000000e+00, %7443
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7450 = fmul fast float %7444, %7447
  %7451 = fmul fast float %7444, %7448
  %7452 = fmul fast float %7444, %7449
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.CBufRet.f32 %7453, 2
  %7457 = fmul fast float %7445, %7454
  %7458 = fmul fast float %7445, %7455
  %7459 = fmul fast float %7445, %7456
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7464 = fadd fast float %7457, %7461
  %7465 = fadd fast float %7464, %7450
  %7466 = fadd fast float %7458, %7462
  %7467 = fadd fast float %7466, %7451
  %7468 = fadd fast float %7459, %7463
  %7469 = fadd fast float %7468, %7452
  %7470 = fmul fast float %7465, %198
  %7471 = fmul fast float %7467, %198
  %7472 = fmul fast float %7469, %198
  br label %7473

; <label>:7473                                    ; preds = %7415, %7181
  %7474 = phi float [ %7470, %7415 ], [ %176, %7181 ]
  %7475 = phi float [ %7471, %7415 ], [ %177, %7181 ]
  %7476 = phi float [ %7472, %7415 ], [ %178, %7181 ]
  %7477 = phi float [ %198, %7415 ], [ %88, %7181 ]
  %7478 = phi float [ %7436, %7415 ], [ %7206, %7181 ]
  %7479 = phi float [ %7437, %7415 ], [ %7207, %7181 ]
  %7480 = phi float [ %7438, %7415 ], [ %7208, %7181 ]
  %7481 = phi float [ %7439, %7415 ], [ %7182, %7181 ]
  %7482 = phi float [ %7440, %7415 ], [ %7183, %7181 ]
  %7483 = phi float [ %7441, %7415 ], [ %7184, %7181 ]
  %7484 = phi float [ %7416, %7415 ], [ 1.000000e+00, %7181 ]
  br i1 %7215, label %8639, label %7485

; <label>:7485                                    ; preds = %7473
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7501, 2
  %7505 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 3
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7512 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7513 = fcmp fast olt float %7512, -5.000000e-01
  %7514 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7475, float %7476, float %7474, float %7475, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7515 = call float @dx.op.unary.f32(i32 25, float %7514)  ; Rsqrt(value)
  %7516 = fmul fast float %7515, %7514
  %7517 = fmul fast float %7515, %7474
  %7518 = fmul fast float %7515, %7475
  %7519 = fmul fast float %7515, %7476
  %7520 = fadd fast float %7516, %7490
  %7521 = call float @dx.op.dot3.f32(i32 55, float %7517, float %7518, float %7519, float %7487, float %7488, float %7489)  ; Dot3(ax,ay,az,bx,by,bz)
  %7522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.i32 %7522, 1
  %7524 = and i32 %7523, 1
  %7525 = icmp ne i32 %7524, 0
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = and i1 %7525, %7528
  br i1 %7529, label %7530, label %7936, !dx.controlflow.hints !110

; <label>:7530                                    ; preds = %7485
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 3
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7537 = fsub fast float %7534, %7536
  %7538 = and i32 %7523, 2
  %7539 = extractvalue %dx.types.CBufRet.i32 %7522, 0
  %7540 = call i32 @dx.op.binary.i32(i32 40, i32 %7539, i32 3)  ; UMin(a,b)
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7545 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7546 = fsub fast float %7542, %7544
  %7547 = fsub fast float %7543, %7545
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7550 = fcmp fast ogt float %7549, 0.000000e+00
  %7551 = fsub fast float -0.000000e+00, %7546
  %7552 = fsub fast float -0.000000e+00, %7547
  %7553 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7517, float %7518)  ; Dot2(ax,ay,bx,by)
  %7554 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7551, float %7552)  ; Dot2(ax,ay,bx,by)
  %7555 = fmul fast float %7554, 2.000000e+00
  %7556 = call float @dx.op.dot2.f32(i32 54, float %7551, float %7552, float %7551, float %7552)  ; Dot2(ax,ay,bx,by)
  %7557 = fmul fast float %7549, %7549
  %7558 = fsub fast float %7556, %7557
  %7559 = fmul fast float %7555, %7555
  %7560 = fmul fast float %7553, 4.000000e+00
  %7561 = fmul fast float %7560, %7558
  %7562 = fsub fast float %7559, %7561
  %7563 = fcmp fast ogt float %7562, 0.000000e+00
  br i1 %7563, label %7564, label %7579

; <label>:7564                                    ; preds = %7530
  %7565 = fcmp fast ogt float %7555, 0.000000e+00
  %7566 = call float @dx.op.unary.f32(i32 24, float %7562)  ; Sqrt(value)
  %7567 = fsub fast float -0.000000e+00, %7566
  %7568 = select i1 %7565, float %7566, float %7567
  %7569 = fadd fast float %7568, %7555
  %7570 = fmul float %7569, -5.000000e-01
  %7571 = fdiv fast float %7570, %7553
  %7572 = call float @dx.op.binary.f32(i32 35, float %7571, float 0.000000e+00)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7516, float %7572)  ; FMin(a,b)
  %7574 = fdiv fast float %7558, %7570
  %7575 = call float @dx.op.binary.f32(i32 35, float %7574, float 0.000000e+00)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 36, float %7516, float %7575)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7573, float %7576)  ; FMin(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7573, float %7576)  ; FMax(a,b)
  br label %7579

; <label>:7579                                    ; preds = %7564, %7530
  %7580 = phi float [ %7578, %7564 ], [ -1.000000e+00, %7530 ]
  %7581 = phi float [ %7577, %7564 ], [ -1.000000e+00, %7530 ]
  %7582 = phi i1 [ true, %7564 ], [ false, %7530 ]
  %7583 = and i1 %7550, %7582
  br i1 %7583, label %7584, label %7586

; <label>:7584                                    ; preds = %7579
  %7585 = fcmp fast oeq float %7581, %7580
  br i1 %7585, label %7889, label %7587

; <label>:7586                                    ; preds = %7579
  br i1 %7550, label %7889, label %7587

; <label>:7587                                    ; preds = %7586, %7584
  %7588 = phi float [ %7516, %7586 ], [ %7580, %7584 ]
  %7589 = phi float [ 0.000000e+00, %7586 ], [ %7581, %7584 ]
  %7590 = icmp ne i32 %7538, 0
  %7591 = fmul fast float %7588, %7519
  %7592 = fadd fast float %7591, %7532
  %7593 = fmul fast float %7592, %7588
  %7594 = select i1 %7590, float 0.000000e+00, float %7593
  %7595 = fcmp fast oeq float %7519, 0.000000e+00
  %7596 = fdiv fast float %7537, %7519
  %7597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7596)  ; FMax(a,b)
  %7598 = select i1 %7595, float %7588, float %7597
  %7599 = call float @dx.op.binary.f32(i32 36, float %7588, float %7598)  ; FMin(a,b)
  %7600 = fcmp fast ogt float %7519, 0.000000e+00
  %7601 = fcmp fast olt float %7537, 0.000000e+00
  br i1 %7600, label %7602, label %7659

; <label>:7602                                    ; preds = %7587
  %7603 = icmp eq i32 %7538, 0
  br i1 %7601, label %7604, label %7648

; <label>:7604                                    ; preds = %7602
  %7605 = select i1 %7603, float %7588, float 0.000000e+00
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = call float @dx.op.unary.f32(i32 6, float %7606)  ; FAbs(value)
  %7608 = fmul fast float %7605, %7519
  %7609 = fadd fast float %7608, %7532
  %7610 = fmul fast float %7607, %7609
  %7611 = fsub fast float %7594, %7610
  %7612 = fsub fast float %7588, %7607
  %7613 = select i1 %7603, float %7612, float 0.000000e+00
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7625 = call float @dx.op.binary.f32(i32 36, float %7611, float %7624)  ; FMin(a,b)
  %7626 = fmul fast float %7622, %7613
  %7627 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7628 = fsub fast float %7619, %7615
  %7629 = fsub fast float %7620, %7616
  %7630 = fsub fast float %7621, %7617
  %7631 = fmul fast float %7627, %7628
  %7632 = fmul fast float %7627, %7629
  %7633 = fmul fast float %7627, %7630
  %7634 = fadd fast float %7631, %7615
  %7635 = fadd fast float %7632, %7616
  %7636 = fadd fast float %7633, %7617
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 1
  %7640 = fadd fast float %7639, %7638
  %7641 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7644 = fadd fast float %7643, %7642
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fmul fast float %7641, %7625
  %7647 = fmul fast float %7646, %7645
  br label %7889

; <label>:7648                                    ; preds = %7602
  br i1 %7603, label %7649, label %7670

; <label>:7649                                    ; preds = %7648
  %7650 = call float @dx.op.binary.f32(i32 36, float %7599, float %7589)  ; FMin(a,b)
  %7651 = fsub fast float %7599, %7650
  %7652 = fsub fast float %7651, %7588
  %7653 = call float @dx.op.unary.f32(i32 6, float %7652)  ; FAbs(value)
  %7654 = fadd fast float %7651, %7588
  %7655 = fmul fast float %7654, %7519
  %7656 = fadd fast float %7655, %7532
  %7657 = fmul fast float %7656, %7653
  %7658 = fsub fast float %7594, %7657
  br label %7670

; <label>:7659                                    ; preds = %7587
  br i1 %7601, label %7660, label %7670

; <label>:7660                                    ; preds = %7659
  %7661 = call float @dx.op.binary.f32(i32 35, float %7589, float %7599)  ; FMax(a,b)
  %7662 = icmp eq i32 %7538, 0
  %7663 = select i1 %7662, float %7599, float 0.000000e+00
  %7664 = fsub fast float -0.000000e+00, %7663
  %7665 = call float @dx.op.unary.f32(i32 6, float %7664)  ; FAbs(value)
  %7666 = fmul fast float %7663, %7519
  %7667 = fadd fast float %7666, %7532
  %7668 = fmul fast float %7665, %7667
  %7669 = fsub fast float %7594, %7668
  br label %7670

; <label>:7670                                    ; preds = %7660, %7659, %7649, %7648
  %7671 = phi float [ %7589, %7648 ], [ %7589, %7649 ], [ %7661, %7660 ], [ %7589, %7659 ]
  %7672 = phi float [ 0.000000e+00, %7648 ], [ %7653, %7649 ], [ %7665, %7660 ], [ 0.000000e+00, %7659 ]
  %7673 = phi float [ %7594, %7648 ], [ %7658, %7649 ], [ %7669, %7660 ], [ %7594, %7659 ]
  %7674 = phi float [ %7599, %7648 ], [ %7599, %7649 ], [ %7588, %7660 ], [ %7588, %7659 ]
  %7675 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7675, align 4, !tbaa !111, !noalias !113
  %7676 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7676, align 4, !tbaa !111, !noalias !113
  %7677 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7677, align 4, !tbaa !111, !noalias !113
  %7678 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7678, align 4, !tbaa !111, !noalias !113
  %7679 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7679, align 4, !tbaa !111, !noalias !113
  %7680 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7680, align 4, !tbaa !111, !noalias !113
  %7681 = icmp sgt i32 %7540, 0
  br i1 %7681, label %7682, label %7743

; <label>:7682                                    ; preds = %7670
  br label %7683

; <label>:7683                                    ; preds = %7732, %7682
  %7684 = phi i32 [ %7733, %7732 ], [ 0, %7682 ]
  %7685 = phi i32 [ %7734, %7732 ], [ 0, %7682 ]
  %7686 = add nuw i32 %7685, 171
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %7686)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 1
  %7693 = fsub fast float %7688, %7691
  %7694 = fsub fast float %7689, %7692
  %7695 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7696 = fsub fast float -0.000000e+00, %7693
  %7697 = fsub fast float -0.000000e+00, %7694
  %7698 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7696, float %7697)  ; Dot2(ax,ay,bx,by)
  %7699 = fmul fast float %7698, 2.000000e+00
  %7700 = call float @dx.op.dot2.f32(i32 54, float %7696, float %7697, float %7696, float %7697)  ; Dot2(ax,ay,bx,by)
  %7701 = fmul fast float %7695, %7695
  %7702 = fsub fast float %7700, %7701
  %7703 = fmul fast float %7699, %7699
  %7704 = fmul fast float %7560, %7702
  %7705 = fsub fast float %7703, %7704
  %7706 = fcmp fast ogt float %7705, 0.000000e+00
  br i1 %7706, label %7707, label %7722

; <label>:7707                                    ; preds = %7683
  %7708 = fcmp fast ogt float %7699, 0.000000e+00
  %7709 = call float @dx.op.unary.f32(i32 24, float %7705)  ; Sqrt(value)
  %7710 = fsub fast float -0.000000e+00, %7709
  %7711 = select i1 %7708, float %7709, float %7710
  %7712 = fadd fast float %7711, %7699
  %7713 = fmul float %7712, -5.000000e-01
  %7714 = fdiv fast float %7713, %7553
  %7715 = call float @dx.op.binary.f32(i32 35, float %7714, float 0.000000e+00)  ; FMax(a,b)
  %7716 = call float @dx.op.binary.f32(i32 36, float %7588, float %7715)  ; FMin(a,b)
  %7717 = fdiv fast float %7702, %7713
  %7718 = call float @dx.op.binary.f32(i32 35, float %7717, float 0.000000e+00)  ; FMax(a,b)
  %7719 = call float @dx.op.binary.f32(i32 36, float %7588, float %7718)  ; FMin(a,b)
  %7720 = call float @dx.op.binary.f32(i32 36, float %7716, float %7719)  ; FMin(a,b)
  %7721 = call float @dx.op.binary.f32(i32 35, float %7716, float %7719)  ; FMax(a,b)
  br label %7722

; <label>:7722                                    ; preds = %7707, %7683
  %7723 = phi float [ %7721, %7707 ], [ -1.000000e+00, %7683 ]
  %7724 = phi float [ %7720, %7707 ], [ -1.000000e+00, %7683 ]
  %7725 = phi i1 [ true, %7707 ], [ false, %7683 ]
  br i1 %7725, label %7726, label %7732

; <label>:7726                                    ; preds = %7722
  %7727 = call float @dx.op.binary.f32(i32 35, float %7671, float %7724)  ; FMax(a,b)
  %7728 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7685
  store float %7727, float* %7728, align 4, !tbaa !111, !noalias !113
  %7729 = call float @dx.op.binary.f32(i32 35, float %7671, float %7723)  ; FMax(a,b)
  %7730 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7685
  store float %7729, float* %7730, align 4, !tbaa !111, !noalias !113
  %7731 = add nsw i32 %7684, 1
  br label %7732

; <label>:7732                                    ; preds = %7726, %7722
  %7733 = phi i32 [ %7731, %7726 ], [ %7684, %7722 ]
  %7734 = add nuw nsw i32 %7685, 1
  %7735 = icmp eq i32 %7734, %7540
  br i1 %7735, label %7736, label %7683

; <label>:7736                                    ; preds = %7732
  %7737 = load float, float* %7677, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7738 = load float, float* %7676, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7739 = load float, float* %7675, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7740 = load float, float* %7680, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7741 = load float, float* %7679, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7742 = load float, float* %7678, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7743

; <label>:7743                                    ; preds = %7736, %7670
  %7744 = phi float [ -1.000000e+00, %7670 ], [ %7742, %7736 ]
  %7745 = phi float [ -1.000000e+00, %7670 ], [ %7741, %7736 ]
  %7746 = phi float [ -1.000000e+00, %7670 ], [ %7740, %7736 ]
  %7747 = phi float [ -1.000000e+00, %7670 ], [ %7739, %7736 ]
  %7748 = phi float [ -1.000000e+00, %7670 ], [ %7738, %7736 ]
  %7749 = phi float [ -1.000000e+00, %7670 ], [ %7737, %7736 ]
  %7750 = phi i32 [ 0, %7670 ], [ %7733, %7736 ]
  %7751 = call float @dx.op.binary.f32(i32 36, float %7748, float %7749)  ; FMin(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7747, float %7751)  ; FMin(a,b)
  %7753 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7754 = call float @dx.op.binary.f32(i32 36, float %7753, float %7749)  ; FMin(a,b)
  %7755 = call float @dx.op.binary.f32(i32 36, float %7747, float %7748)  ; FMin(a,b)
  %7756 = call float @dx.op.binary.f32(i32 35, float %7755, float %7754)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 35, float %7748, float %7749)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7747, float %7757)  ; FMax(a,b)
  store float %7752, float* %7675, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7756, float* %7676, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7758, float* %7677, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7759 = call float @dx.op.binary.f32(i32 36, float %7745, float %7746)  ; FMin(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7744, float %7759)  ; FMin(a,b)
  %7761 = call float @dx.op.binary.f32(i32 35, float %7744, float %7745)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7761, float %7746)  ; FMin(a,b)
  %7763 = call float @dx.op.binary.f32(i32 36, float %7744, float %7745)  ; FMin(a,b)
  %7764 = call float @dx.op.binary.f32(i32 35, float %7763, float %7762)  ; FMax(a,b)
  %7765 = call float @dx.op.binary.f32(i32 35, float %7745, float %7746)  ; FMax(a,b)
  %7766 = call float @dx.op.binary.f32(i32 35, float %7744, float %7765)  ; FMax(a,b)
  store float %7760, float* %7678, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7764, float* %7679, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7766, float* %7680, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7767 = sub nsw i32 3, %7750
  %7768 = icmp sgt i32 %7767, 2
  br i1 %7768, label %7769, label %7807

; <label>:7769                                    ; preds = %7743
  %7770 = icmp eq i32 %7538, 0
  %7771 = fsub fast float %7588, %7672
  %7772 = select i1 %7770, float %7771, float %7672
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7781 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 3
  %7784 = call float @dx.op.binary.f32(i32 36, float %7673, float %7783)  ; FMin(a,b)
  %7785 = fmul fast float %7781, %7772
  %7786 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7787 = fsub fast float %7778, %7774
  %7788 = fsub fast float %7779, %7775
  %7789 = fsub fast float %7780, %7776
  %7790 = fmul fast float %7786, %7787
  %7791 = fmul fast float %7786, %7788
  %7792 = fmul fast float %7786, %7789
  %7793 = fadd fast float %7790, %7774
  %7794 = fadd fast float %7791, %7775
  %7795 = fadd fast float %7792, %7776
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = fadd fast float %7798, %7797
  %7800 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7802 = extractvalue %dx.types.CBufRet.f32 %7796, 3
  %7803 = fadd fast float %7802, %7801
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fmul fast float %7800, %7784
  %7806 = fmul fast float %7805, %7804
  br label %7889

; <label>:7807                                    ; preds = %7743
  %7808 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7767
  %7809 = load float, float* %7808, align 4, !tbaa !111, !noalias !113
  %7810 = fcmp fast olt float %7809, %7674
  %7811 = icmp sgt i32 %7750, 0
  %7812 = and i1 %7811, %7810
  br i1 %7812, label %7813, label %7850

; <label>:7813                                    ; preds = %7807
  br label %7814

; <label>:7814                                    ; preds = %7843, %7813
  %7815 = phi float [ %7844, %7843 ], [ %7672, %7813 ]
  %7816 = phi float [ %7845, %7843 ], [ %7673, %7813 ]
  %7817 = phi float [ %7825, %7843 ], [ %7809, %7813 ]
  %7818 = phi i32 [ %7822, %7843 ], [ %7767, %7813 ]
  %7819 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7818
  %7820 = load float, float* %7819, align 4, !tbaa !111, !noalias !113
  %7821 = icmp slt i32 %7818, 2
  %7822 = add nsw i32 %7818, 1
  %7823 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7822
  %7824 = load float, float* %7823, align 4, !tbaa !111, !noalias !113
  %7825 = select i1 %7821, float %7824, float %7588
  %7826 = call float @dx.op.binary.f32(i32 36, float %7825, float %7820)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7674, float %7826)  ; FMin(a,b)
  %7828 = icmp eq i32 %7538, 0
  %7829 = fadd fast float %7827, %7817
  %7830 = fmul fast float %7829, %7519
  %7831 = fadd fast float %7830, %7532
  br i1 %7828, label %7837, label %7832

; <label>:7832                                    ; preds = %7814
  %7833 = fsub fast float %7827, %7817
  %7834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7833)  ; FMax(a,b)
  %7835 = fmul fast float %7834, %7831
  %7836 = fadd fast float %7835, %7816
  br label %7843

; <label>:7837                                    ; preds = %7814
  %7838 = fsub fast float %7817, %7827
  %7839 = call float @dx.op.unary.f32(i32 6, float %7838)  ; FAbs(value)
  %7840 = fadd fast float %7839, %7815
  %7841 = fmul fast float %7839, %7831
  %7842 = fsub fast float %7816, %7841
  br label %7843

; <label>:7843                                    ; preds = %7837, %7832
  %7844 = phi float [ %7834, %7832 ], [ %7840, %7837 ]
  %7845 = phi float [ %7836, %7832 ], [ %7842, %7837 ]
  %7846 = fcmp fast olt float %7825, %7674
  %7847 = icmp slt i32 %7822, 3
  %7848 = and i1 %7847, %7846
  br i1 %7848, label %7814, label %7849

; <label>:7849                                    ; preds = %7843
  br label %7850

; <label>:7850                                    ; preds = %7849, %7807
  %7851 = phi float [ %7672, %7807 ], [ %7844, %7849 ]
  %7852 = phi float [ %7673, %7807 ], [ %7845, %7849 ]
  %7853 = fsub fast float %7588, %7851
  %7854 = select i1 %7590, float %7851, float %7853
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.CBufRet.f32 %7859, 2
  %7863 = extractvalue %dx.types.CBufRet.f32 %7859, 3
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 3
  %7866 = call float @dx.op.binary.f32(i32 36, float %7852, float %7865)  ; FMin(a,b)
  %7867 = fmul fast float %7863, %7854
  %7868 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7869 = fsub fast float %7860, %7856
  %7870 = fsub fast float %7861, %7857
  %7871 = fsub fast float %7862, %7858
  %7872 = fmul fast float %7868, %7869
  %7873 = fmul fast float %7868, %7870
  %7874 = fmul fast float %7868, %7871
  %7875 = fadd fast float %7872, %7856
  %7876 = fadd fast float %7873, %7857
  %7877 = fadd fast float %7874, %7858
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = fadd fast float %7880, %7879
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7884 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7885 = fadd fast float %7884, %7883
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = fmul fast float %7882, %7866
  %7888 = fmul fast float %7887, %7886
  br label %7889

; <label>:7889                                    ; preds = %7850, %7769, %7604, %7586, %7584
  %7890 = phi float [ %7613, %7604 ], [ %7772, %7769 ], [ %7854, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7891 = phi float [ %7647, %7604 ], [ %7806, %7769 ], [ %7888, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7892 = phi float [ %7634, %7604 ], [ %7793, %7769 ], [ %7875, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7893 = phi float [ %7635, %7604 ], [ %7794, %7769 ], [ %7876, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7894 = phi float [ %7636, %7604 ], [ %7795, %7769 ], [ %7877, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7895 = fmul fast float %7527, %7891
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7898 = fsub fast float %7534, %7897
  %7899 = fcmp fast olt float %7895, -2.000000e+01
  %7900 = call float @dx.op.unary.f32(i32 21, float %7895)  ; Exp(value)
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 2
  %7906 = fmul fast float %7903, %7898
  %7907 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7908 = fsub fast float 1.000000e+00, %7907
  %7909 = fmul fast float %7519, 5.000000e-01
  %7910 = fadd fast float %7909, 5.000000e-01
  %7911 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7912 = fsub fast float 1.000000e+00, %7911
  %7913 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7908)  ; FMax(a,b)
  %7914 = fdiv fast float %7912, %7913
  %7915 = fsub fast float %7898, %7476
  %7916 = call float @dx.op.unary.f32(i32 6, float %7915)  ; FAbs(value)
  %7917 = fmul fast float %7916, %7902
  %7918 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7919 = fsub fast float 1.000000e+00, %7917
  %7920 = fmul fast float %7919, %7918
  %7921 = fadd fast float %7920, %7917
  %7922 = fmul fast float %7905, %7898
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = fsub fast float 1.000000e+00, %7921
  %7925 = fmul fast float %7924, %7923
  %7926 = fadd fast float %7925, %7921
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = fadd fast float %7900, -1.000000e+00
  %7929 = select i1 %7899, float -1.000000e+00, float %7928
  %7930 = fmul fast float %7927, %7929
  %7931 = fadd fast float %7930, 1.000000e+00
  %7932 = fsub fast float -0.000000e+00, %7930
  %7933 = fmul fast float %7892, %7932
  %7934 = fmul fast float %7893, %7932
  %7935 = fmul fast float %7894, %7932
  br label %7936

; <label>:7936                                    ; preds = %7889, %7485
  %7937 = phi float [ %7890, %7889 ], [ 0.000000e+00, %7485 ]
  %7938 = phi float [ %7931, %7889 ], [ 1.000000e+00, %7485 ]
  %7939 = phi float [ %7933, %7889 ], [ 0.000000e+00, %7485 ]
  %7940 = phi float [ %7934, %7889 ], [ 0.000000e+00, %7485 ]
  %7941 = phi float [ %7935, %7889 ], [ 0.000000e+00, %7485 ]
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 1
  %7944 = fsub fast float 1.000000e+00, %7938
  %7945 = fmul fast float %7944, %7520
  %7946 = fmul fast float %7945, %7943
  %7947 = fsub fast float %7520, %7946
  br i1 %7513, label %7948, label %7977, !dx.controlflow.hints !149

; <label>:7948                                    ; preds = %7936
  %7949 = fmul fast float %7521, %7510
  %7950 = fadd fast float %7949, %7511
  %7951 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7952 = fmul fast float %7492, %7947
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fmul fast float %7493, %7947
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = call float @dx.op.unary.f32(i32 21, float %7953)  ; Exp(value)
  %7957 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7500, float %7956)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 35, float %7500, float %7957)  ; FMax(a,b)
  %7960 = fsub fast float %7959, %7958
  %7961 = fmul fast float %7960, %7951
  %7962 = fadd fast float %7961, %7958
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = fsub fast float %7497, %7502
  %7965 = fsub fast float %7498, %7503
  %7966 = fsub fast float %7499, %7504
  %7967 = fmul fast float %7951, %7964
  %7968 = fmul fast float %7951, %7965
  %7969 = fmul fast float %7951, %7966
  %7970 = fadd fast float %7967, %7502
  %7971 = fadd fast float %7968, %7503
  %7972 = fadd fast float %7969, %7504
  %7973 = fsub fast float 1.000000e+00, %7963
  %7974 = fmul fast float %7973, %7970
  %7975 = fmul fast float %7973, %7971
  %7976 = fmul fast float %7973, %7972
  br label %8036

; <label>:7977                                    ; preds = %7936
  %7978 = fmul fast float %7947, %7509
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = fsub fast float 2.000000e+00, %7979
  %7981 = fmul fast float %7979, 9.921875e-01
  %7982 = fmul fast float %7981, %7980
  %7983 = fadd fast float %7982, 3.906250e-03
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %7983, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = fsub fast float %7979, %7985
  %7987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7986)  ; FMax(a,b)
  %7988 = fmul fast float %7495, %7476
  %7989 = call float @dx.op.unary.f32(i32 6, float %7988)  ; FAbs(value)
  %7990 = fcmp fast ogt float %7989, 0x3EB0C6F7A0000000
  br i1 %7990, label %7991, label %7997, !dx.controlflow.hints !150

; <label>:7991                                    ; preds = %7977
  %7992 = fmul fast float %7988, 0xBFF7154760000000
  %7993 = call float @dx.op.unary.f32(i32 21, float %7992)  ; Exp(value)
  %7994 = fsub fast float 1.000000e+00, %7993
  %7995 = fdiv fast float %7994, %7988
  %7996 = fmul fast float %7995, %7505
  br label %7997

; <label>:7997                                    ; preds = %7991, %7977
  %7998 = phi float [ %7996, %7991 ], [ %7505, %7977 ]
  %7999 = fadd fast float %7998, %7507
  %8000 = fmul fast float %7999, %7987
  %8001 = fmul fast float %7492, %8000
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fmul fast float %7493, %8000
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fmul fast float %7494, %8000
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = call float @dx.op.unary.f32(i32 21, float %8002)  ; Exp(value)
  %8008 = call float @dx.op.unary.f32(i32 21, float %8004)  ; Exp(value)
  %8009 = call float @dx.op.unary.f32(i32 21, float %8006)  ; Exp(value)
  %8010 = fmul fast float %7521, %7521
  %8011 = fadd fast float %8010, 1.000000e+00
  %8012 = fmul fast float %8011, 0x3FAE8EC8A0000000
  %8013 = fmul fast float %8012, %7502
  %8014 = fmul fast float %8012, %7503
  %8015 = fmul fast float %8012, %7504
  %8016 = fmul fast float %7521, %7500
  %8017 = fsub fast float 1.000000e+00, %8016
  %8018 = fmul fast float %7500, %7500
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %8019, 0x3FB45F3060000000
  %8021 = fmul fast float %8017, %8017
  %8022 = fdiv fast float 1.000000e+00, %8021
  %8023 = fmul fast float %8020, %8022
  %8024 = fmul fast float %8023, %7497
  %8025 = fmul fast float %8023, %7498
  %8026 = fmul fast float %8023, %7499
  %8027 = fadd fast float %8024, %8013
  %8028 = fadd fast float %8025, %8014
  %8029 = fadd fast float %8026, %8015
  %8030 = fsub fast float 1.000000e+00, %8007
  %8031 = fsub fast float 1.000000e+00, %8008
  %8032 = fsub fast float 1.000000e+00, %8009
  %8033 = fmul fast float %8027, %8030
  %8034 = fmul fast float %8028, %8031
  %8035 = fmul fast float %8029, %8032
  br label %8036

; <label>:8036                                    ; preds = %7997, %7948
  %8037 = phi float [ %7974, %7948 ], [ %8033, %7997 ]
  %8038 = phi float [ %7975, %7948 ], [ %8034, %7997 ]
  %8039 = phi float [ %7976, %7948 ], [ %8035, %7997 ]
  %8040 = phi float [ %7963, %7948 ], [ %8007, %7997 ]
  %8041 = phi float [ %7963, %7948 ], [ %8008, %7997 ]
  %8042 = phi float [ %7963, %7948 ], [ %8009, %7997 ]
  br i1 %7529, label %8043, label %8241, !dx.controlflow.hints !151

; <label>:8043                                    ; preds = %8036
  %8044 = extractvalue %dx.types.CBufRet.f32 %7942, 0
  %8045 = fmul fast float %8044, %7944
  %8046 = fsub fast float %7939, %8037
  %8047 = fsub fast float %7940, %8038
  %8048 = fsub fast float %7941, %8039
  %8049 = fmul fast float %8045, %8046
  %8050 = fmul fast float %8045, %8047
  %8051 = fmul fast float %8045, %8048
  %8052 = fadd fast float %8049, %8037
  %8053 = fadd fast float %8050, %8038
  %8054 = fadd fast float %8051, %8039
  %8055 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8040)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8041)  ; FMax(a,b)
  %8057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8042)  ; FMax(a,b)
  %8058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7938)  ; FMax(a,b)
  %8059 = call float @dx.op.binary.f32(i32 35, float %7937, float %7947)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8059)  ; FMax(a,b)
  %8061 = fdiv fast float %7937, %8060
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = fdiv fast float %7947, %8060
  %8064 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8065 = fcmp fast une float %8058, 1.000000e+00
  br i1 %8065, label %8066, label %8079, !dx.controlflow.hints !152

; <label>:8066                                    ; preds = %8043
  %8067 = call float @dx.op.unary.f32(i32 23, float %8058)  ; Log(value)
  %8068 = fmul fast float %8067, 0x3FE62E4300000000
  %8069 = fmul fast float %7939, %8068
  %8070 = fsub fast float -0.000000e+00, %8069
  %8071 = fmul fast float %7940, %8068
  %8072 = fsub fast float -0.000000e+00, %8071
  %8073 = fmul fast float %7941, %8068
  %8074 = fsub fast float -0.000000e+00, %8073
  %8075 = fsub fast float 1.000000e+00, %8058
  %8076 = fdiv fast float %8070, %8075
  %8077 = fdiv fast float %8072, %8075
  %8078 = fdiv fast float %8074, %8075
  br label %8079

; <label>:8079                                    ; preds = %8066, %8043
  %8080 = phi float [ %8076, %8066 ], [ %7939, %8043 ]
  %8081 = phi float [ %8077, %8066 ], [ %7940, %8043 ]
  %8082 = phi float [ %8078, %8066 ], [ %7941, %8043 ]
  %8083 = phi float [ %8068, %8066 ], [ 0.000000e+00, %8043 ]
  %8084 = fcmp fast une float %8055, 1.000000e+00
  br i1 %8084, label %8085, label %8092, !dx.controlflow.hints !153

; <label>:8085                                    ; preds = %8079
  %8086 = call float @dx.op.unary.f32(i32 23, float %8055)  ; Log(value)
  %8087 = fmul fast float %8086, 0x3FE62E4300000000
  %8088 = fmul fast float %8052, %8087
  %8089 = fsub fast float -0.000000e+00, %8088
  %8090 = fsub fast float 1.000000e+00, %8055
  %8091 = fdiv fast float %8089, %8090
  br label %8092

; <label>:8092                                    ; preds = %8085, %8079
  %8093 = phi float [ %8091, %8085 ], [ %8052, %8079 ]
  %8094 = phi float [ %8087, %8085 ], [ 0.000000e+00, %8079 ]
  %8095 = fcmp fast une float %8056, 1.000000e+00
  br i1 %8095, label %8096, label %8103, !dx.controlflow.hints !153

; <label>:8096                                    ; preds = %8092
  %8097 = call float @dx.op.unary.f32(i32 23, float %8056)  ; Log(value)
  %8098 = fmul fast float %8097, 0x3FE62E4300000000
  %8099 = fmul fast float %8053, %8098
  %8100 = fsub fast float -0.000000e+00, %8099
  %8101 = fsub fast float 1.000000e+00, %8056
  %8102 = fdiv fast float %8100, %8101
  br label %8103

; <label>:8103                                    ; preds = %8096, %8092
  %8104 = phi float [ %8102, %8096 ], [ %8053, %8092 ]
  %8105 = phi float [ %8098, %8096 ], [ 0.000000e+00, %8092 ]
  %8106 = fcmp fast une float %8057, 1.000000e+00
  br i1 %8106, label %8107, label %8114, !dx.controlflow.hints !153

; <label>:8107                                    ; preds = %8103
  %8108 = call float @dx.op.unary.f32(i32 23, float %8057)  ; Log(value)
  %8109 = fmul fast float %8108, 0x3FE62E4300000000
  %8110 = fmul fast float %8054, %8109
  %8111 = fsub fast float -0.000000e+00, %8110
  %8112 = fsub fast float 1.000000e+00, %8057
  %8113 = fdiv fast float %8111, %8112
  br label %8114

; <label>:8114                                    ; preds = %8107, %8103
  %8115 = phi float [ %8113, %8107 ], [ %8054, %8103 ]
  %8116 = phi float [ %8109, %8107 ], [ 0.000000e+00, %8103 ]
  %8117 = fmul fast float %8080, %8064
  %8118 = fmul fast float %8081, %8064
  %8119 = fmul fast float %8082, %8064
  %8120 = fmul fast float %8083, %8064
  %8121 = fmul fast float %8093, %8062
  %8122 = fmul fast float %8104, %8062
  %8123 = fmul fast float %8115, %8062
  %8124 = fmul fast float %8094, %8062
  %8125 = fmul fast float %8105, %8062
  %8126 = fmul fast float %8116, %8062
  %8127 = fadd fast float %8121, %8117
  %8128 = fadd fast float %8122, %8118
  %8129 = fadd fast float %8123, %8119
  %8130 = fadd fast float %8124, %8120
  %8131 = fadd fast float %8125, %8120
  %8132 = fadd fast float %8126, %8120
  %8133 = fcmp fast une float %8130, 0.000000e+00
  br i1 %8133, label %8134, label %8141, !dx.controlflow.hints !154

; <label>:8134                                    ; preds = %8114
  %8135 = fmul fast float %8130, 0x3FF7154760000000
  %8136 = call float @dx.op.unary.f32(i32 21, float %8135)  ; Exp(value)
  %8137 = fsub fast float 1.000000e+00, %8136
  %8138 = fmul fast float %8127, %8137
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fdiv fast float %8139, %8130
  br label %8141

; <label>:8141                                    ; preds = %8134, %8114
  %8142 = phi float [ %8136, %8134 ], [ 1.000000e+00, %8114 ]
  %8143 = phi float [ %8140, %8134 ], [ %8127, %8114 ]
  %8144 = fcmp fast une float %8131, 0.000000e+00
  br i1 %8144, label %8145, label %8152, !dx.controlflow.hints !154

; <label>:8145                                    ; preds = %8141
  %8146 = fmul fast float %8131, 0x3FF7154760000000
  %8147 = call float @dx.op.unary.f32(i32 21, float %8146)  ; Exp(value)
  %8148 = fsub fast float 1.000000e+00, %8147
  %8149 = fmul fast float %8128, %8148
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fdiv fast float %8150, %8131
  br label %8152

; <label>:8152                                    ; preds = %8145, %8141
  %8153 = phi float [ %8147, %8145 ], [ 1.000000e+00, %8141 ]
  %8154 = phi float [ %8151, %8145 ], [ %8128, %8141 ]
  %8155 = fcmp fast une float %8132, 0.000000e+00
  br i1 %8155, label %8156, label %8163, !dx.controlflow.hints !154

; <label>:8156                                    ; preds = %8152
  %8157 = fmul fast float %8132, 0x3FF7154760000000
  %8158 = call float @dx.op.unary.f32(i32 21, float %8157)  ; Exp(value)
  %8159 = fsub fast float 1.000000e+00, %8158
  %8160 = fmul fast float %8129, %8159
  %8161 = fsub fast float -0.000000e+00, %8160
  %8162 = fdiv fast float %8161, %8132
  br label %8163

; <label>:8163                                    ; preds = %8156, %8152
  %8164 = phi float [ %8158, %8156 ], [ 1.000000e+00, %8152 ]
  %8165 = phi float [ %8162, %8156 ], [ %8129, %8152 ]
  %8166 = fcmp fast ogt float %8062, %8064
  br i1 %8166, label %8167, label %8187

; <label>:8167                                    ; preds = %8163
  %8168 = fsub fast float 1.000000e+00, %8064
  %8169 = fmul fast float %8080, %8168
  %8170 = fmul fast float %8081, %8168
  %8171 = fmul fast float %8082, %8168
  %8172 = fmul fast float %8083, %8168
  %8173 = fcmp fast une float %8172, 0.000000e+00
  br i1 %8173, label %8174, label %8225, !dx.controlflow.hints !155

; <label>:8174                                    ; preds = %8167
  %8175 = fmul fast float %8172, 0x3FF7154760000000
  %8176 = call float @dx.op.unary.f32(i32 21, float %8175)  ; Exp(value)
  %8177 = fsub fast float 1.000000e+00, %8176
  %8178 = fmul fast float %8169, %8177
  %8179 = fsub fast float -0.000000e+00, %8178
  %8180 = fmul fast float %8170, %8177
  %8181 = fsub fast float -0.000000e+00, %8180
  %8182 = fmul fast float %8171, %8177
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = fdiv fast float %8179, %8172
  %8185 = fdiv fast float %8181, %8172
  %8186 = fdiv fast float %8183, %8172
  br label %8225

; <label>:8187                                    ; preds = %8163
  %8188 = fsub fast float 1.000000e+00, %8062
  %8189 = fmul fast float %8093, %8188
  %8190 = fmul fast float %8104, %8188
  %8191 = fmul fast float %8115, %8188
  %8192 = fmul fast float %8094, %8188
  %8193 = fmul fast float %8105, %8188
  %8194 = fmul fast float %8116, %8188
  %8195 = fcmp fast une float %8192, 0.000000e+00
  br i1 %8195, label %8196, label %8203, !dx.controlflow.hints !154

; <label>:8196                                    ; preds = %8187
  %8197 = fmul fast float %8192, 0x3FF7154760000000
  %8198 = call float @dx.op.unary.f32(i32 21, float %8197)  ; Exp(value)
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = fmul fast float %8189, %8199
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = fdiv fast float %8201, %8192
  br label %8203

; <label>:8203                                    ; preds = %8196, %8187
  %8204 = phi float [ %8202, %8196 ], [ %8189, %8187 ]
  %8205 = phi float [ %8198, %8196 ], [ 1.000000e+00, %8187 ]
  %8206 = fcmp fast une float %8193, 0.000000e+00
  br i1 %8206, label %8207, label %8214, !dx.controlflow.hints !154

; <label>:8207                                    ; preds = %8203
  %8208 = fmul fast float %8193, 0x3FF7154760000000
  %8209 = call float @dx.op.unary.f32(i32 21, float %8208)  ; Exp(value)
  %8210 = fsub fast float 1.000000e+00, %8209
  %8211 = fmul fast float %8190, %8210
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = fdiv fast float %8212, %8193
  br label %8214

; <label>:8214                                    ; preds = %8207, %8203
  %8215 = phi float [ %8213, %8207 ], [ %8190, %8203 ]
  %8216 = phi float [ %8209, %8207 ], [ 1.000000e+00, %8203 ]
  %8217 = fcmp fast une float %8194, 0.000000e+00
  br i1 %8217, label %8218, label %8225, !dx.controlflow.hints !154

; <label>:8218                                    ; preds = %8214
  %8219 = fmul fast float %8194, 0x3FF7154760000000
  %8220 = call float @dx.op.unary.f32(i32 21, float %8219)  ; Exp(value)
  %8221 = fsub fast float 1.000000e+00, %8220
  %8222 = fmul fast float %8191, %8221
  %8223 = fsub fast float -0.000000e+00, %8222
  %8224 = fdiv fast float %8223, %8194
  br label %8225

; <label>:8225                                    ; preds = %8218, %8214, %8174, %8167
  %8226 = phi float [ %8224, %8218 ], [ %8186, %8174 ], [ %8171, %8167 ], [ %8191, %8214 ]
  %8227 = phi float [ %8215, %8218 ], [ %8185, %8174 ], [ %8170, %8167 ], [ %8215, %8214 ]
  %8228 = phi float [ %8204, %8218 ], [ %8184, %8174 ], [ %8169, %8167 ], [ %8204, %8214 ]
  %8229 = phi float [ %8220, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ 1.000000e+00, %8214 ]
  %8230 = phi float [ %8216, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ %8216, %8214 ]
  %8231 = phi float [ %8205, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ %8205, %8214 ]
  %8232 = fmul fast float %8231, %8143
  %8233 = fmul fast float %8230, %8154
  %8234 = fmul fast float %8229, %8165
  %8235 = fadd fast float %8232, %8228
  %8236 = fadd fast float %8233, %8227
  %8237 = fadd fast float %8234, %8226
  %8238 = fmul fast float %8231, %8142
  %8239 = fmul fast float %8230, %8153
  %8240 = fmul fast float %8229, %8164
  br label %8241

; <label>:8241                                    ; preds = %8225, %8036
  %8242 = phi float [ %8240, %8225 ], [ %8042, %8036 ]
  %8243 = phi float [ %8239, %8225 ], [ %8041, %8036 ]
  %8244 = phi float [ %8238, %8225 ], [ %8040, %8036 ]
  %8245 = phi float [ %8237, %8225 ], [ %8039, %8036 ]
  %8246 = phi float [ %8236, %8225 ], [ %8038, %8036 ]
  %8247 = phi float [ %8235, %8225 ], [ %8037, %8036 ]
  %8248 = fmul fast float %8247, %7189
  %8249 = fmul fast float %8246, %7191
  %8250 = fmul fast float %8245, %7193
  %8251 = fmul fast float %8244, %7484
  %8252 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8243, float %8242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8253 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = select i1 %237, float %8252, float %8244
  %8255 = select i1 %237, float %8252, float %8243
  %8256 = select i1 %237, float 1.000000e+00, float %8242
  %8257 = select i1 %237, float %8253, float %8248
  %8258 = select i1 %237, float 0.000000e+00, float %8249
  %8259 = select i1 %237, float 0.000000e+00, float %8250
  %8260 = fmul fast float %8254, %7478
  %8261 = fmul fast float %8255, %7479
  %8262 = fmul fast float %8256, %7480
  %8263 = fadd fast float %8260, %8257
  %8264 = fadd fast float %8261, %8258
  %8265 = fadd fast float %8259, %8262
  %8266 = fmul fast float %8254, %7481
  %8267 = fmul fast float %8255, %7482
  %8268 = fmul fast float %8256, %7483
  %8269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.i32 %8269, 0
  %8271 = icmp eq i32 %8270, 0
  br i1 %8271, label %8639, label %8272, !dx.controlflow.hints !156

; <label>:8272                                    ; preds = %8241
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 2
  %8275 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8276 = fmul fast float %8274, %97
  %8277 = fmul fast float %8275, %98
  %8278 = fmul fast float %8276, 2.000000e+00
  %8279 = fmul fast float %8277, 2.000000e+00
  %8280 = fsub fast float 1.000000e+00, %8278
  %8281 = fsub fast float 1.000000e+00, %8279
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = fmul fast float %8280, %8283
  %8287 = fmul fast float %8280, %8284
  %8288 = fmul fast float %8280, %8285
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8292 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8293 = fmul fast float %8281, %8290
  %8294 = fmul fast float %8281, %8291
  %8295 = fmul fast float %8281, %8292
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8300 = fadd fast float %8293, %8297
  %8301 = fadd fast float %8300, %8286
  %8302 = fadd fast float %8294, %8298
  %8303 = fadd fast float %8302, %8287
  %8304 = fadd fast float %8295, %8299
  %8305 = fadd fast float %8304, %8288
  %8306 = fmul fast float %8301, %7477
  %8307 = fmul fast float %8303, %7477
  %8308 = fmul fast float %8305, %7477
  %8309 = fmul fast float %8306, %8306
  %8310 = fmul fast float %8307, %8307
  %8311 = fadd fast float %8309, %8310
  %8312 = fmul fast float %8308, %8308
  %8313 = fadd fast float %8311, %8312
  %8314 = call float @dx.op.unary.f32(i32 24, float %8313)  ; Sqrt(value)
  %8315 = extractvalue %dx.types.CBufRet.f32 %7204, 0
  %8316 = fsub fast float %8314, %8315
  %8317 = extractvalue %dx.types.CBufRet.f32 %7204, 2
  %8318 = fmul fast float %8316, %8317
  %8319 = call float @dx.op.unary.f32(i32 7, float %8318)  ; Saturate(value)
  %8320 = fadd fast float %8319, -5.000000e-01
  %8321 = fmul fast float %8320, 2.000000e+00
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8324 = call float @dx.op.binary.f32(i32 36, float %8323, float %8321)  ; FMin(a,b)
  %8325 = fsub fast float -0.000000e+00, %8323
  %8326 = fcmp fast ogt float %8324, %8325
  br i1 %8326, label %8327, label %8639, !dx.controlflow.hints !157

; <label>:8327                                    ; preds = %8272
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 3
  %8330 = fcmp fast ogt float %8329, 0.000000e+00
  br i1 %8330, label %8331, label %8406, !dx.controlflow.hints !158

; <label>:8331                                    ; preds = %8327
  %8332 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8333 = extractvalue %dx.types.Dimensions %8332, 0
  %8334 = sitofp i32 %8333 to float
  %8335 = extractvalue %dx.types.Dimensions %8332, 1
  %8336 = sitofp i32 %8335 to float
  %8337 = fmul fast float %8276, %8334
  %8338 = fmul fast float %8277, %8336
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8341 = fsub fast float -0.000000e+00, %8340
  %8342 = fptoui float %8341 to i32
  %8343 = fptoui float %8337 to i32
  %8344 = fptoui float %8338 to i32
  %8345 = and i32 %8342, 31
  %8346 = lshr i32 %8343, %8345
  %8347 = lshr i32 %8344, %8345
  %8348 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8342, i32 %8346, i32 %8347, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8349 = extractvalue %dx.types.ResRet.f32 %8348, 0
  %8350 = fcmp fast olt float %8349, -1.000000e+00
  %8351 = fcmp fast ogt float %8349, -1.000000e+00
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8354 = select i1 %8351, float %8353, float 1.000000e+00
  %8355 = fadd fast float %8349, 1.000000e+00
  %8356 = fmul fast float %8354, %8355
  %8357 = call float @dx.op.unary.f32(i32 6, float %8356)  ; FAbs(value)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8359 = fcmp fast oge float %8357, %8358
  %8360 = select i1 %8359, float 0x4197782600000000, float %8357
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = select i1 %8350, float %8362, float %8283
  %8366 = select i1 %8350, float %8363, float %8284
  %8367 = select i1 %8350, float %8364, float %8285
  %8368 = fmul fast float %8365, %8280
  %8369 = fmul fast float %8366, %8280
  %8370 = fmul fast float %8367, %8280
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.CBufRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.CBufRet.f32 %8371, 2
  %8375 = select i1 %8350, float %8372, float %8290
  %8376 = select i1 %8350, float %8373, float %8291
  %8377 = select i1 %8350, float %8374, float %8292
  %8378 = fmul fast float %8375, %8281
  %8379 = fmul fast float %8376, %8281
  %8380 = fmul fast float %8377, %8281
  %8381 = fadd fast float %8378, %8368
  %8382 = fadd fast float %8379, %8369
  %8383 = fadd fast float %8380, %8370
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8388 = select i1 %8350, float %8385, float %8297
  %8389 = select i1 %8350, float %8386, float %8298
  %8390 = select i1 %8350, float %8387, float %8299
  %8391 = fadd fast float %8381, %8388
  %8392 = fadd fast float %8382, %8389
  %8393 = fadd fast float %8383, %8390
  %8394 = fmul fast float %8391, %8360
  %8395 = fmul fast float %8392, %8360
  %8396 = fmul fast float %8393, %8360
  %8397 = fmul fast float %8394, %8394
  %8398 = fmul fast float %8395, %8395
  %8399 = fadd fast float %8397, %8398
  %8400 = fmul fast float %8396, %8396
  %8401 = fadd fast float %8399, %8400
  %8402 = call float @dx.op.unary.f32(i32 24, float %8401)  ; Sqrt(value)
  %8403 = fsub fast float %8402, %8315
  %8404 = fmul fast float %8403, %8317
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  br label %8406

; <label>:8406                                    ; preds = %8331, %8327
  %8407 = phi float [ %8405, %8331 ], [ 1.000000e+00, %8327 ]
  %8408 = fmul fast float %8324, 5.000000e-01
  %8409 = fadd fast float %8408, 5.000000e-01
  %8410 = call float @dx.op.unary.f32(i32 22, float %8409)  ; Frc(value)
  %8411 = call float @dx.op.unary.f32(i32 27, float %8410)  ; Round_ni(value)
  %8412 = call float @dx.op.unary.f32(i32 22, float %8410)  ; Frc(value)
  %8413 = fmul fast float %8412, 2.000000e+00
  %8414 = fadd fast float %8413, -1.000000e+00
  %8415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %8276, float %8277, float %8411, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.ResRet.f32 %8415, 3
  %8420 = fadd fast float %8416, -5.000000e-01
  %8421 = fadd fast float %8418, -5.000000e-01
  %8422 = fmul fast float %8420, 0xBFD5555560000000
  %8423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8421, float %8422)  ; FMad(a,b,c)
  %8424 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8417, float 0.000000e+00)  ; FMad(a,b,c)
  %8425 = fadd fast float %8424, %8419
  %8426 = fmul fast float %8420, -7.500000e-01
  %8427 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8421, float %8426)  ; FMad(a,b,c)
  %8428 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8417, float 0.000000e+00)  ; FMad(a,b,c)
  %8429 = fadd fast float %8428, %8419
  %8430 = call float @dx.op.binary.f32(i32 35, float %8423, float -1.000000e+00)  ; FMax(a,b)
  %8431 = call float @dx.op.binary.f32(i32 35, float %8425, float -1.000000e+00)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 35, float %8427, float -1.000000e+00)  ; FMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8429, float -1.000000e+00)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 36, float %8430, float 1.000000e+00)  ; FMin(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8431, float 1.000000e+00)  ; FMin(a,b)
  %8436 = call float @dx.op.binary.f32(i32 36, float %8432, float 1.000000e+00)  ; FMin(a,b)
  %8437 = call float @dx.op.binary.f32(i32 36, float %8433, float 1.000000e+00)  ; FMin(a,b)
  %8438 = fcmp fast olt float %8434, 0x3FEFFF8020000000
  br i1 %8438, label %8439, label %8554, !dx.controlflow.hints !159

; <label>:8439                                    ; preds = %8406
  %8440 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8446 = fsub fast float %8442, %8434
  %8447 = fsub fast float %8443, %8435
  %8448 = fsub fast float %8444, %8436
  %8449 = fsub fast float %8445, %8437
  %8450 = fmul fast float %8446, %8440
  %8451 = fmul fast float %8447, %8440
  %8452 = fmul fast float %8448, %8440
  %8453 = fmul fast float %8449, %8440
  %8454 = fadd fast float %8450, %8434
  %8455 = fadd fast float %8451, %8435
  %8456 = fsub fast float -0.000000e+00, %8455
  %8457 = fadd fast float %8452, %8436
  %8458 = fadd fast float %8453, %8437
  %8459 = fmul fast float %8454, %8454
  %8460 = fsub fast float %8455, %8459
  %8461 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8460)  ; FMax(a,b)
  %8462 = fdiv fast float 1.000000e+00, %8461
  %8463 = fmul fast float %8455, %8454
  %8464 = fsub fast float %8457, %8463
  %8465 = fsub fast float %8414, %8454
  %8466 = fmul fast float %8414, %8414
  %8467 = fsub fast float %8466, %8455
  %8468 = fmul fast float %8465, %8462
  %8469 = fmul fast float %8468, %8464
  %8470 = fsub fast float %8467, %8469
  %8471 = fmul fast float %8455, %8455
  %8472 = fsub fast float %8458, %8471
  %8473 = fmul fast float %8464, %8464
  %8474 = fmul fast float %8473, %8462
  %8475 = fsub fast float %8472, %8474
  %8476 = fdiv fast float %8470, %8475
  %8477 = fmul fast float %8464, %8476
  %8478 = fsub fast float %8465, %8477
  %8479 = fmul fast float %8478, %8462
  %8480 = fmul fast float %8479, %8454
  %8481 = fsub fast float 1.000000e+00, %8480
  %8482 = fmul fast float %8455, %8476
  %8483 = fsub fast float %8481, %8482
  %8484 = fmul fast float %8479, %8479
  %8485 = fmul fast float %8476, 4.000000e+00
  %8486 = fmul fast float %8485, %8483
  %8487 = fsub fast float %8484, %8486
  %8488 = call float @dx.op.unary.f32(i32 24, float %8487)  ; Sqrt(value)
  %8489 = fcmp fast oge float %8479, 0.000000e+00
  %8490 = fsub fast float -0.000000e+00, %8488
  %8491 = select i1 %8489, float %8490, float %8488
  %8492 = fsub fast float %8491, %8479
  %8493 = fdiv fast float %8492, %8476
  %8494 = fdiv fast float %8483, %8492
  %8495 = fmul fast float %8493, 5.000000e-01
  %8496 = fmul fast float %8494, 2.000000e+00
  %8497 = select i1 %8489, float %8495, float %8496
  %8498 = select i1 %8489, float %8496, float %8495
  %8499 = call float @dx.op.binary.f32(i32 35, float %8497, float %8498)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 36, float %8497, float %8498)  ; FMin(a,b)
  %8501 = fcmp fast ogt float %8414, %8500
  br i1 %8501, label %8502, label %8512

; <label>:8502                                    ; preds = %8439
  %8503 = fsub fast float %8414, %8500
  %8504 = fsub fast float %8499, %8500
  %8505 = fmul fast float %8503, %8504
  %8506 = fmul fast float %8499, %8414
  %8507 = fadd fast float %8499, %8414
  %8508 = fmul fast float %8507, %8454
  %8509 = fadd fast float %8506, %8455
  %8510 = fsub fast float %8509, %8508
  %8511 = fdiv fast float %8510, %8505
  br label %8512

; <label>:8512                                    ; preds = %8502, %8439
  %8513 = phi float [ %8511, %8502 ], [ 0.000000e+00, %8439 ]
  %8514 = fcmp fast ogt float %8414, %8499
  %8515 = fsub fast float %8414, %8499
  br i1 %8514, label %8516, label %8526

; <label>:8516                                    ; preds = %8512
  %8517 = fsub fast float %8499, %8500
  %8518 = fmul fast float %8517, %8515
  %8519 = fmul fast float %8500, %8414
  %8520 = fadd fast float %8500, %8414
  %8521 = fmul fast float %8520, %8454
  %8522 = fsub fast float %8456, %8519
  %8523 = fadd fast float %8522, %8521
  %8524 = fdiv fast float %8523, %8518
  %8525 = fadd fast float %8524, %8513
  br label %8526

; <label>:8526                                    ; preds = %8516, %8512
  %8527 = phi float [ %8525, %8516 ], [ %8513, %8512 ]
  %8528 = fsub fast float %8414, %8500
  %8529 = fmul fast float %8528, %8515
  %8530 = fmul fast float %8500, %8499
  %8531 = fadd fast float %8500, %8499
  %8532 = fmul fast float %8531, %8454
  %8533 = fadd fast float %8530, %8455
  %8534 = fsub fast float %8533, %8532
  %8535 = fdiv fast float %8534, %8529
  %8536 = call float @dx.op.unary.f32(i32 7, float %8527)  ; Saturate(value)
  %8537 = fcmp fast oeq float %7205, 0.000000e+00
  %8538 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8539 = fcmp fast oeq float %8538, 0.000000e+00
  %8540 = or i1 %8537, %8539
  %8541 = fmul fast float %8538, 2.000000e+00
  %8542 = fadd fast float %8323, %8324
  %8543 = fdiv fast float %8542, %8541
  %8544 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8545 = fmul fast float %8544, 2.000000e+00
  %8546 = fsub fast float 3.000000e+00, %8545
  %8547 = fmul fast float %8544, %8544
  %8548 = fmul fast float %8547, %8546
  %8549 = select i1 %8540, float 1.000000e+00, float %8548
  %8550 = fmul fast float %8535, %7205
  %8551 = fadd fast float %8536, %8550
  %8552 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8553 = fmul fast float %8549, %8552
  br label %8554

; <label>:8554                                    ; preds = %8526, %8406
  %8555 = phi float [ %8553, %8526 ], [ 0.000000e+00, %8406 ]
  %8556 = fsub fast float 1.000000e+00, %8555
  %8557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %8276, float %8277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8558 = extractvalue %dx.types.ResRet.f32 %8557, 0
  %8559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.i32 %8559, 2
  %8561 = icmp eq i32 %8560, 0
  br i1 %8561, label %8567, label %8562

; <label>:8562                                    ; preds = %8554
  %8563 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8564 = fadd fast float %8558, -1.000000e+00
  %8565 = fmul fast float %8563, %8564
  %8566 = fadd fast float %8565, 1.000000e+00
  br label %8567

; <label>:8567                                    ; preds = %8562, %8554
  %8568 = phi float [ %8566, %8562 ], [ %8556, %8554 ]
  br i1 %8330, label %8569, label %8587

; <label>:8569                                    ; preds = %8567
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 1
  %8572 = fsub fast float %8407, %8571
  %8573 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8574 = fsub fast float %8407, %8329
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fsub fast float %8573, %8575
  %8577 = fsub fast float %8409, %8575
  %8578 = fdiv fast float %8577, %8576
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fmul fast float %8579, 2.000000e+00
  %8581 = fsub fast float 3.000000e+00, %8580
  %8582 = fsub fast float %8558, %8568
  %8583 = fmul fast float %8579, %8579
  %8584 = fmul fast float %8583, %8582
  %8585 = fmul fast float %8584, %8581
  %8586 = fadd fast float %8585, %8568
  br label %8587

; <label>:8587                                    ; preds = %8569, %8567
  %8588 = phi float [ %8586, %8569 ], [ %8568, %8567 ]
  %8589 = call float @dx.op.binary.f32(i32 35, float %8558, float %8588)  ; FMax(a,b)
  %8590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.i32 %8590, 2
  %8592 = and i32 %8591, 1
  %8593 = icmp eq i32 %8592, 0
  %8594 = fcmp fast une float %8589, 1.000000e+00
  %8595 = and i1 %8594, %8593
  br i1 %8595, label %8596, label %8615

; <label>:8596                                    ; preds = %8587
  %8597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %8276, float %8277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8603 = fmul fast float %8602, %8598
  %8604 = fmul fast float %8602, %8599
  %8605 = fmul fast float %8602, %8600
  %8606 = fcmp fast ogt float %8558, 0x3FEFFF2E40000000
  %8607 = fsub fast float 1.000000e+00, %8589
  %8608 = fsub fast float 1.000000e+00, %8558
  %8609 = fdiv fast float %8607, %8608
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8611 = select i1 %8606, float 0.000000e+00, float %8610
  %8612 = fmul fast float %8603, %8611
  %8613 = fmul fast float %8604, %8611
  %8614 = fmul fast float %8605, %8611
  br label %8615

; <label>:8615                                    ; preds = %8596, %8587
  %8616 = phi float [ 0.000000e+00, %8587 ], [ %8612, %8596 ]
  %8617 = phi float [ 0.000000e+00, %8587 ], [ %8613, %8596 ]
  %8618 = phi float [ 0.000000e+00, %8587 ], [ %8614, %8596 ]
  %8619 = fmul fast float %8616, %7189
  %8620 = fmul fast float %8617, %7191
  %8621 = fmul fast float %8618, %7193
  %8622 = fmul fast float %8589, %8251
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8589, float %8589, float %8589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = call float @dx.op.dot3.f32(i32 55, float %8619, float %8620, float %8621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = select i1 %237, float %8623, float %8589
  %8626 = select i1 %237, float 1.000000e+00, float %8589
  %8627 = select i1 %237, float %8624, float %8619
  %8628 = select i1 %237, float 0.000000e+00, float %8620
  %8629 = select i1 %237, float 0.000000e+00, float %8621
  %8630 = fmul fast float %8625, %8263
  %8631 = fmul fast float %8625, %8264
  %8632 = fmul fast float %8626, %8265
  %8633 = fadd fast float %8630, %8627
  %8634 = fadd fast float %8631, %8628
  %8635 = fadd fast float %8629, %8632
  %8636 = fmul fast float %8625, %8266
  %8637 = fmul fast float %8625, %8267
  %8638 = fmul fast float %8626, %8268
  br label %8639

; <label>:8639                                    ; preds = %8615, %8272, %8241, %7473
  %8640 = phi float [ %7478, %7473 ], [ %8263, %8241 ], [ %8633, %8615 ], [ %8263, %8272 ]
  %8641 = phi float [ %7479, %7473 ], [ %8264, %8241 ], [ %8634, %8615 ], [ %8264, %8272 ]
  %8642 = phi float [ %7480, %7473 ], [ %8265, %8241 ], [ %8635, %8615 ], [ %8265, %8272 ]
  %8643 = phi float [ %7481, %7473 ], [ %8266, %8241 ], [ %8636, %8615 ], [ %8266, %8272 ]
  %8644 = phi float [ %7482, %7473 ], [ %8267, %8241 ], [ %8637, %8615 ], [ %8267, %8272 ]
  %8645 = phi float [ %7483, %7473 ], [ %8268, %8241 ], [ %8638, %8615 ], [ %8268, %8272 ]
  %8646 = phi float [ %7484, %7473 ], [ %8251, %8241 ], [ %8622, %8615 ], [ %8251, %8272 ]
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8650 = fmul fast float %8648, %97
  %8651 = fmul fast float %8649, %98
  %8652 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8653 = call float @dx.op.unary.f32(i32 7, float %8651)  ; Saturate(value)
  %8654 = select i1 %7215, i32 2, i32 0
  %8655 = or i32 %8654, 1
  %8656 = uitofp i32 %8655 to float
  %8657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8652, float %8653, float %8656, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8658 = extractvalue %dx.types.ResRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.ResRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.ResRet.f32 %8657, 2
  %8661 = extractvalue %dx.types.ResRet.f32 %8657, 3
  %8662 = add nuw nsw i32 %8654, 2
  %8663 = uitofp i32 %8662 to float
  %8664 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8652, float %8653, float %8663, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8665 = extractvalue %dx.types.ResRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.ResRet.f32 %8664, 1
  %8667 = extractvalue %dx.types.ResRet.f32 %8664, 2
  %8668 = extractvalue %dx.types.ResRet.f32 %8664, 3
  %8669 = call float @dx.op.binary.f32(i32 35, float %8659, float %8660)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8658, float %8669)  ; FMax(a,b)
  %8671 = call float @dx.op.binary.f32(i32 35, float %8670, float %8661)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 36, float %8666, float %8667)  ; FMin(a,b)
  %8673 = call float @dx.op.binary.f32(i32 36, float %8665, float %8672)  ; FMin(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8673, float %8668)  ; FMin(a,b)
  %8675 = fmul fast float %8671, 2.550000e+02
  %8676 = fadd fast float %8675, 0x3F70101020000000
  %8677 = fptoui float %8676 to i32
  %8678 = fmul fast float %8674, 2.550000e+02
  %8679 = fadd fast float %8678, 0x3F70101020000000
  %8680 = fptoui float %8679 to i32
  %8681 = icmp ult i32 %8677, %8680
  br i1 %8681, label %8682, label %8851

; <label>:8682                                    ; preds = %8639
  %8683 = fcmp fast ogt float %87, 9.843750e-01
  %8684 = fadd fast float %7477, -4.000000e+00
  %8685 = select i1 %8683, float -4.000000e+00, float %8684
  %8686 = call float @dx.op.binary.f32(i32 35, float %8685, float 0.000000e+00)  ; FMax(a,b)
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8689 = fadd fast float %8688, %8686
  %8690 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8691 = fmul fast float %8689, %8690
  %8692 = call float @dx.op.unary.f32(i32 23, float %8691)  ; Log(value)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8687, 3
  %8694 = fmul fast float %8693, %8692
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = fmul fast float %8694, %8696
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = uitofp i32 %8677 to float
  %8700 = uitofp i32 %8680 to float
  %8701 = fadd fast float %8699, 5.000000e-01
  %8702 = fadd fast float %8700, 5.000000e-01
  %8703 = fmul fast float %8696, %8701
  %8704 = fmul fast float %8696, %8702
  %8705 = fadd fast float %8703, 0x3F0FFB4800000000
  %8706 = fadd fast float %8704, 0xBF0FFB4800000000
  %8707 = call float @dx.op.binary.f32(i32 35, float %8698, float %8705)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 36, float %8707, float %8706)  ; FMin(a,b)
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8713 = select i1 %7215, float %8712, float 0.000000e+00
  %8714 = fmul fast float %8710, %8708
  %8715 = fadd fast float %8713, %8714
  %8716 = fadd fast float %8713, %8711
  %8717 = fsub fast float %8710, %8711
  %8718 = fadd fast float %8717, %8713
  %8719 = call float @dx.op.binary.f32(i32 35, float %8715, float %8716)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8719, float %8718)  ; FMin(a,b)
  %8721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %8652, float %8653, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8722 = extractvalue %dx.types.ResRet.f32 %8721, 0
  %8723 = extractvalue %dx.types.ResRet.f32 %8721, 1
  %8724 = extractvalue %dx.types.ResRet.f32 %8721, 2
  %8725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.i32 %8725, 0
  %8727 = extractvalue %dx.types.CBufRet.i32 %8725, 1
  %8728 = uitofp i32 %8726 to float
  %8729 = uitofp i32 %8727 to float
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.CBufRet.f32 %8730, 1
  %8733 = fmul fast float %8728, %8652
  %8734 = fmul fast float %8729, %8653
  %8735 = fadd fast float %8733, -5.000000e-01
  %8736 = fadd fast float %8734, -5.000000e-01
  %8737 = call float @dx.op.unary.f32(i32 22, float %8735)  ; Frc(value)
  %8738 = call float @dx.op.unary.f32(i32 22, float %8736)  ; Frc(value)
  %8739 = fmul fast float %8737, %8737
  %8740 = fmul fast float %8739, %8737
  %8741 = fsub fast float 3.000000e+00, %8737
  %8742 = fmul fast float %8739, %8741
  %8743 = fmul fast float %8737, 3.000000e+00
  %8744 = fmul fast float %8740, 3.000000e+00
  %8745 = fmul fast float %8739, 6.000000e+00
  %8746 = fsub fast float %8744, %8745
  %8747 = fadd fast float %8746, 4.000000e+00
  %8748 = fmul fast float %8747, 0x3FC5555560000000
  %8749 = fmul fast float %8740, -3.000000e+00
  %8750 = fadd fast float %8739, %8737
  %8751 = fmul fast float %8750, 3.000000e+00
  %8752 = fadd fast float %8749, 1.000000e+00
  %8753 = fadd fast float %8752, %8751
  %8754 = fmul fast float %8740, 0x3FC5555560000000
  %8755 = fmul fast float %8738, %8738
  %8756 = fmul fast float %8755, %8738
  %8757 = fsub fast float 3.000000e+00, %8738
  %8758 = fmul fast float %8755, %8757
  %8759 = fmul fast float %8738, 3.000000e+00
  %8760 = fmul fast float %8756, 3.000000e+00
  %8761 = fmul fast float %8755, 6.000000e+00
  %8762 = fsub fast float %8760, %8761
  %8763 = fadd fast float %8762, 4.000000e+00
  %8764 = fmul fast float %8763, 0x3FC5555560000000
  %8765 = fmul fast float %8756, -3.000000e+00
  %8766 = fadd fast float %8755, %8738
  %8767 = fmul fast float %8766, 3.000000e+00
  %8768 = fadd fast float %8765, 1.000000e+00
  %8769 = fadd fast float %8768, %8767
  %8770 = fmul fast float %8756, 0x3FC5555560000000
  %8771 = fadd fast float %8737, 1.000000e+00
  %8772 = fsub fast float 1.000000e+00, %8743
  %8773 = fadd fast float %8772, %8742
  %8774 = fadd fast float %8773, %8747
  %8775 = fmul fast float %8774, 0x3FC5555560000000
  %8776 = fdiv fast float %8748, %8775
  %8777 = fsub fast float %8771, %8776
  %8778 = fsub fast float 1.000000e+00, %8737
  %8779 = fadd fast float %8753, %8740
  %8780 = fmul fast float %8779, 0x3FC5555560000000
  %8781 = fdiv fast float %8754, %8780
  %8782 = fadd fast float %8778, %8781
  %8783 = fadd fast float %8738, 1.000000e+00
  %8784 = fsub fast float 1.000000e+00, %8759
  %8785 = fadd fast float %8784, %8758
  %8786 = fadd fast float %8785, %8763
  %8787 = fmul fast float %8786, 0x3FC5555560000000
  %8788 = fdiv fast float %8764, %8787
  %8789 = fsub fast float %8783, %8788
  %8790 = fsub fast float 1.000000e+00, %8738
  %8791 = fadd fast float %8769, %8756
  %8792 = fmul fast float %8791, 0x3FC5555560000000
  %8793 = fdiv fast float %8770, %8792
  %8794 = fadd fast float %8793, %8790
  %8795 = fmul fast float %8777, %8731
  %8796 = fsub fast float %8652, %8795
  %8797 = fmul fast float %8782, %8731
  %8798 = fadd fast float %8797, %8652
  %8799 = fmul fast float %8794, %8732
  %8800 = fadd fast float %8799, %8653
  %8801 = fmul fast float %8789, %8732
  %8802 = fsub fast float %8653, %8801
  %8803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8796, float %8802, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8804 = extractvalue %dx.types.ResRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.ResRet.f32 %8803, 1
  %8806 = extractvalue %dx.types.ResRet.f32 %8803, 2
  %8807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8798, float %8802, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8808 = extractvalue %dx.types.ResRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.ResRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.ResRet.f32 %8807, 2
  %8811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8796, float %8800, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8812 = extractvalue %dx.types.ResRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.ResRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.ResRet.f32 %8811, 2
  %8815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8798, float %8800, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8816 = extractvalue %dx.types.ResRet.f32 %8815, 0
  %8817 = extractvalue %dx.types.ResRet.f32 %8815, 1
  %8818 = extractvalue %dx.types.ResRet.f32 %8815, 2
  %8819 = fsub fast float %8812, %8804
  %8820 = fsub fast float %8813, %8805
  %8821 = fsub fast float %8814, %8806
  %8822 = fmul fast float %8819, %8792
  %8823 = fmul fast float %8820, %8792
  %8824 = fmul fast float %8821, %8792
  %8825 = fadd fast float %8822, %8804
  %8826 = fadd fast float %8823, %8805
  %8827 = fadd fast float %8824, %8806
  %8828 = fsub fast float %8816, %8808
  %8829 = fsub fast float %8817, %8809
  %8830 = fsub fast float %8818, %8810
  %8831 = fmul fast float %8828, %8792
  %8832 = fmul fast float %8829, %8792
  %8833 = fmul fast float %8830, %8792
  %8834 = fsub fast float %8808, %8825
  %8835 = fadd fast float %8834, %8831
  %8836 = fsub fast float %8809, %8826
  %8837 = fadd fast float %8836, %8832
  %8838 = fsub fast float %8810, %8827
  %8839 = fadd fast float %8838, %8833
  %8840 = fmul fast float %8835, %8780
  %8841 = fmul fast float %8837, %8780
  %8842 = fmul fast float %8839, %8780
  %8843 = fadd fast float %8840, %8825
  %8844 = fadd fast float %8841, %8826
  %8845 = fadd fast float %8842, %8827
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %8848 = fmul fast float %8843, %8847
  %8849 = fmul fast float %8844, %8847
  %8850 = fmul fast float %8845, %8847
  br label %8851

; <label>:8851                                    ; preds = %8682, %8639
  %8852 = phi float [ %8722, %8682 ], [ 1.000000e+00, %8639 ]
  %8853 = phi float [ %8723, %8682 ], [ 1.000000e+00, %8639 ]
  %8854 = phi float [ %8724, %8682 ], [ 1.000000e+00, %8639 ]
  %8855 = phi float [ %8848, %8682 ], [ 0.000000e+00, %8639 ]
  %8856 = phi float [ %8849, %8682 ], [ 0.000000e+00, %8639 ]
  %8857 = phi float [ %8850, %8682 ], [ 0.000000e+00, %8639 ]
  %8858 = fmul fast float %8855, %7189
  %8859 = fmul fast float %8856, %7191
  %8860 = fmul fast float %8857, %7193
  %8861 = fmul fast float %8852, %8646
  %8862 = call float @dx.op.dot3.f32(i32 55, float %8852, float %8853, float %8854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8863 = call float @dx.op.dot3.f32(i32 55, float %8858, float %8859, float %8860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8864 = select i1 %237, float %8862, float %8852
  %8865 = select i1 %237, float %8862, float %8853
  %8866 = select i1 %237, float 1.000000e+00, float %8854
  %8867 = select i1 %237, float %8863, float %8858
  %8868 = select i1 %237, float 0.000000e+00, float %8859
  %8869 = select i1 %237, float 0.000000e+00, float %8860
  %8870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.i32 %8870, 3
  %8872 = and i32 %8871, 3
  %8873 = icmp ne i32 %8872, 0
  %8874 = and i32 %8871, 4
  %8875 = icmp ne i32 %8874, 0
  %8876 = and i1 %8873, %8875
  %8877 = and i1 %237, %8876
  br i1 %8877, label %8878, label %8884

; <label>:8878                                    ; preds = %8851
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 1
  %8881 = fadd fast float %8861, -1.000000e+00
  %8882 = fmul fast float %8880, %8881
  %8883 = fadd fast float %8882, 1.000000e+00
  br label %8884

; <label>:8884                                    ; preds = %8878, %8851
  %8885 = phi float [ %8883, %8878 ], [ %8861, %8851 ]
  %8886 = fadd fast float %8643, %8640
  %8887 = fmul fast float %8864, %8886
  %8888 = fadd fast float %8887, %8867
  %8889 = fadd fast float %8644, %8641
  %8890 = fmul fast float %8865, %8889
  %8891 = fadd fast float %8890, %8868
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  br i1 %237, label %8894, label %8909

; <label>:8894                                    ; preds = %8884
  %8895 = fadd fast float %8888, %8891
  %8896 = fmul fast float %8893, %8895
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 3
  %8899 = extractvalue %dx.types.CBufRet.f32 %7197, 1
  %8900 = fsub fast float %7202, %7196
  %8901 = fadd fast float %8900, %7203
  %8902 = fsub fast float %8901, %8899
  %8903 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %8904 = fmul fast float %8902, %8903
  %8905 = call float @dx.op.unary.f32(i32 7, float %8904)  ; Saturate(value)
  %8906 = fsub fast float %8905, %8898
  %8907 = fmul fast float %8906, %8885
  %8908 = fadd fast float %8907, %8898
  br label %8935

; <label>:8909                                    ; preds = %8884
  %8910 = fadd fast float %8645, %8642
  %8911 = fmul fast float %8866, %8910
  %8912 = fadd fast float %8911, %8869
  %8913 = fmul fast float %8893, %8888
  %8914 = fmul fast float %8893, %8891
  %8915 = fmul fast float %8893, %8912
  %8916 = call float @dx.op.binary.f32(i32 35, float %8914, float %8915)  ; FMax(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float %8913, float %8916)  ; FMax(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %7191, float %7193)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float %7189, float %8918)  ; FMax(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8917, float %8919)  ; FMax(a,b)
  %8921 = fcmp fast ugt float %8920, 0x3F10000000000000
  br i1 %8921, label %8923, label %8922

; <label>:8922                                    ; preds = %8909
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8923

; <label>:8923                                    ; preds = %8922, %8909
  %8924 = add i32 %42, 356
  %8925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %8924, i32 undef)  ; BufferLoad(srv,index,wot)
  %8926 = extractvalue %dx.types.ResRet.i32 %8925, 0
  %8927 = and i32 %8926, 32
  %8928 = icmp eq i32 %8927, 0
  br i1 %8928, label %8935, label %8929

; <label>:8929                                    ; preds = %8923
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = fmul fast float %8931, 0x3FE99999A0000000
  %8933 = fadd fast float %8931, %8913
  %8934 = fadd fast float %8932, %8915
  br label %8935

; <label>:8935                                    ; preds = %8929, %8923, %8894
  %8936 = phi float [ 1.000000e+00, %8894 ], [ %7191, %8929 ], [ %7191, %8923 ]
  %8937 = phi float [ 1.000000e+00, %8894 ], [ %7193, %8929 ], [ %7193, %8923 ]
  %8938 = phi float [ %8896, %8894 ], [ %8933, %8929 ], [ %8913, %8923 ]
  %8939 = phi float [ %8908, %8894 ], [ %8914, %8929 ], [ %8914, %8923 ]
  %8940 = phi float [ 1.000000e+00, %8894 ], [ %8934, %8929 ], [ %8915, %8923 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8941 = call float @dx.op.binary.f32(i32 36, float %8938, float 3.225500e+04)  ; FMin(a,b)
  %8942 = call float @dx.op.binary.f32(i32 36, float %8939, float 3.225500e+04)  ; FMin(a,b)
  %8943 = call float @dx.op.binary.f32(i32 36, float %8940, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8943)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8944 = call float @dx.op.binary.f32(i32 36, float %7189, float 3.225500e+04)  ; FMin(a,b)
  %8945 = call float @dx.op.binary.f32(i32 36, float %8936, float 3.225500e+04)  ; FMin(a,b)
  %8946 = call float @dx.op.binary.f32(i32 36, float %8937, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8944)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8945)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8946)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!54}
!dx.entryPoints = !{!55}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
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
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 16, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !30}
!41 = !{i32 32, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50, !51, !52, !53}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!54 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !83}
!56 = !{!57, !79, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78}
!58 = !{i32 0, !"SV_Position", i8 9, i8 3, !59, i8 4, i32 1, i8 4, i32 0, i8 0, !60}
!59 = !{i32 0}
!60 = !{i32 3, i32 15}
!61 = !{i32 1, !"COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!67 = !{i32 5, !"SH_RED", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 5, i8 0, !60}
!68 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!69 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 7, i8 0, !60}
!70 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 8, i8 0, !65}
!71 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 9, i8 0, !60}
!72 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 2, i32 10, i8 0, !63}
!73 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 11, i8 0, !60}
!74 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 12, i8 0, !65}
!75 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !59, i8 1, i32 1, i8 1, i32 13, i8 0, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !59, i8 1, i32 1, i8 4, i32 14, i8 0, !76}
!78 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80, !81}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!81 = !{i32 1, !"SV_Target", i8 9, i8 16, !82, i8 0, i32 1, i8 4, i32 1, i8 0, !60}
!82 = !{i32 1}
!83 = !{i32 0, i64 16}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !98, !100}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !91, i64 0}
!113 = !{!114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!114 = distinct !{!114, !115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!115 = distinct !{!115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!116 = distinct !{!116, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!117 = distinct !{!117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!118 = distinct !{!118, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!119 = distinct !{!119, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!120 = distinct !{!120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!121 = distinct !{!121, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!122 = distinct !{!122, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!128 = distinct !{!128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!137 = !{!133}
!138 = !{!134, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!147 = !{!143}
!148 = !{!144, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}

