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
; ENTITY_IDS               0    yz        13     NONE    uint    y  
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
; shader hash: 21c74fce29d90c51ee960e8e8f56e5b6
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
; ENTITY_IDS               0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t57,space2     1
;                                   texture    byte         r/o     T15     t69,space1     1
;                                   texture     u32          2d     T16     t56,space2     1
;                                   texture     f32          2d     T17     t34,space2     1
;                                   texture     f32          2d     T18      t1,space2     1
;                                   texture     f32          2d     T19      t2,space2     1
;                                   texture     f32          2d     T20      t3,space2     1
;                                   texture     f32          2d     T21      t4,space2     1
;                                   textureunorm_f32     2darray     T22     t80,space2     1
;                                   texture    byte         r/o     T23     t67,space1     1
;                                   texture     f32          2d     T24      t7,space2     1
;                                   texture     f32          2d     T25      t6,space2     1
;                                   texture     f32          2d     T26      t5,space2     1
;                                   texture     f32          2d     T27     t38,space2     1
;                                   texture     f32          1d     T28     t30,space2     1
;                                   texture     f32          3d     T29     t44,space2     1
;                                   texture     f32          3d     T30     t45,space2     1
;                                   texture     f32     2darray     T31     t47,space2     1
;                                   textureunorm_f32     2darray     T32     t85,space2     1
;                                   texture     f32          2d     T33     t83,space2     1
;                                   texture     f32          2d     T34     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = alloca [4 x i32], align 4
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = alloca [12 x float], align 4
  %92 = alloca [12 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %87
  %100 = fmul fast float %98, %88
  %101 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %78
  %107 = fmul fast float %105, %79
  %108 = fmul fast float %105, %80
  %109 = fmul fast float %79, %76
  %110 = fmul fast float %80, %75
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %80, %74
  %113 = fmul fast float %78, %76
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %78, %75
  %116 = fmul fast float %79, %74
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %77
  %119 = fmul fast float %114, %77
  %120 = fmul fast float %117, %77
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = fcmp fast une float %122, 0.000000e+00
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %99, 2.000000e+00
  %128 = fmul fast float %127, %125
  %129 = fmul fast float %100, 2.000000e+00
  %130 = fmul fast float %129, %126
  %131 = fsub fast float 1.000000e+00, %128
  %132 = fsub fast float 1.000000e+00, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %123, float %134, float %138
  %142 = select i1 %123, float %135, float %139
  %143 = select i1 %123, float %136, float %140
  %144 = fmul fast float %141, %131
  %145 = fmul fast float %142, %131
  %146 = fmul fast float %143, %131
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %123, float %148, float %152
  %156 = select i1 %123, float %149, float %153
  %157 = select i1 %123, float %150, float %154
  %158 = fmul fast float %155, %132
  %159 = fmul fast float %156, %132
  %160 = fmul fast float %157, %132
  %161 = fadd fast float %158, %144
  %162 = fadd fast float %159, %145
  %163 = fadd fast float %160, %146
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %123, float %165, float %169
  %173 = select i1 %123, float %166, float %170
  %174 = select i1 %123, float %167, float %171
  %175 = fadd fast float %161, %172
  %176 = fadd fast float %162, %173
  %177 = fadd fast float %163, %174
  %178 = fmul fast float %175, %90
  %179 = fmul fast float %176, %90
  %180 = fmul fast float %177, %90
  %181 = shl i32 %44, 5
  %182 = add i32 %181, 4194304
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = extractvalue %dx.types.ResRet.i32 %183, 1
  %186 = extractvalue %dx.types.ResRet.i32 %183, 2
  %187 = extractvalue %dx.types.ResRet.i32 %183, 3
  %188 = add i32 %181, 4194320
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = extractvalue %dx.types.ResRet.i32 %189, 1
  %192 = bitcast i32 %190 to float
  %193 = bitcast i32 %191 to float
  %194 = add i32 %43, 360
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = bitcast i32 %196 to float
  %201 = bitcast i32 %197 to float
  %202 = bitcast i32 %198 to float
  %203 = bitcast i32 %199 to float
  %204 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %106
  %207 = fmul fast float %205, %107
  %208 = fmul fast float %205, %108
  %209 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 25, float %209)  ; Rsqrt(value)
  %211 = fmul fast float %210, %178
  %212 = fmul fast float %210, %179
  %213 = fmul fast float %210, %180
  %214 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fmul fast float %214, %214
  %216 = fmul fast float %215, %202
  %217 = fadd fast float %216, %203
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = fmul fast float %220, %209
  %222 = fsub fast float %200, %221
  %223 = fmul fast float %222, %201
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, %218
  %226 = fmul fast float %99, 5.000000e-01
  %227 = fmul fast float %100, 5.000000e-01
  %228 = fptosi float %226 to i32
  %229 = fptosi float %227 to i32
  %230 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = lshr i32 %231, 18
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F4C00EBA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fadd fast float %235, -1.000000e+00
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = sitofp i32 %238 to float
  %240 = extractvalue %dx.types.Dimensions %237, 1
  %241 = sitofp i32 %240 to float
  %242 = fcmp fast oge float %226, %239
  %243 = fcmp fast oge float %227, %241
  %244 = or i1 %242, %243
  %245 = select i1 %244, float 0x4197782600000000, float %236
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %249 = fmul fast float %247, %99
  %250 = fmul fast float %248, %100
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 114688
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %254, float %249, float 0.000000e+00
  %256 = select i1 %254, float %250, float 0.000000e+00
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fmul fast float %258, 2.550000e+02
  %260 = fptoui float %259 to i32
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 3
  %264 = and i32 %263, 3
  %265 = icmp ne i32 %264, 0
  %266 = and i32 %263, 4
  %267 = icmp ne i32 %266, 0
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %280

; <label>:269                                     ; preds = %0
  %270 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %271 = fmul fast float %270, %100
  %272 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %273 = fmul fast float %272, %99
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %37, float %273, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = fsub fast float 1.000000e+00, %275
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = fcmp fast olt float %276, %278
  br label %283

; <label>:280                                     ; preds = %0
  %281 = icmp eq i32 %266, 0
  %282 = and i1 %265, %281
  br label %283

; <label>:283                                     ; preds = %280, %269
  %284 = phi i1 [ %279, %269 ], [ %282, %280 ]
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %287 = fmul fast float %286, 0x3FE3C6EF40000000
  %288 = frem fast float %99, 2.560000e+02
  %289 = frem fast float %100, 2.560000e+02
  %290 = fptoui float %288 to i32
  %291 = fptoui float %289 to i32
  %292 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %290, i32 %291, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = fadd fast float %293, %287
  %295 = call float @dx.op.unary.f32(i32 22, float %294)  ; Frc(value)
  %296 = add i32 %43, 156
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = shl i32 %298, 4
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %298, 7
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %298, 22
  %306 = shl nuw nsw i32 %305, 5
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %43, 216
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %310, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %310, 16
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = add i32 %43, 36
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %43, 288
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = fmul fast float %333, 0x3F50624DE0000000
  %337 = fmul fast float %335, 0x3F50624DE0000000
  %338 = add i32 %43, 172
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = shl i32 %340, 4
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %340, 7
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %340, 22
  %348 = shl nuw nsw i32 %347, 5
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %43, 232
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %352, 8
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = lshr i32 %352, 16
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = add i32 %43, 52
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %366, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = add i32 %43, 304
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 65535
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %373, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = fmul fast float %375, 0x3F50624DE0000000
  %379 = fmul fast float %377, 0x3F50624DE0000000
  %380 = add i32 %43, 188
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = shl i32 %382, 4
  %384 = and i32 %383, 32752
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %382, 7
  %387 = and i32 %386, 32752
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %382, 22
  %390 = shl nuw nsw i32 %389, 5
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = add i32 %43, 248
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 255
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = lshr i32 %394, 8
  %399 = and i32 %398, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F70101020000000
  %402 = lshr i32 %394, 16
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = add i32 %43, 68
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 65535
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %408, 16
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = add i32 %43, 320
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = fmul fast float %417, 0x3F50624DE0000000
  %421 = fmul fast float %419, 0x3F50624DE0000000
  %422 = add i32 %43, 204
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = shl i32 %424, 4
  %426 = and i32 %425, 32752
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %424, 7
  %429 = and i32 %428, 32752
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %424, 22
  %432 = shl nuw nsw i32 %431, 5
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = add i32 %43, 264
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %436, 8
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = lshr i32 %436, 16
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = add i32 %43, 84
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 65535
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %450, 16
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = add i32 %43, 336
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = fmul fast float %459, 0x3F50624DE0000000
  %463 = fmul fast float %461, 0x3F50624DE0000000
  %464 = add i32 %43, 348
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 32
  %468 = icmp eq i32 %467, 0
  %469 = and i32 %466, 64
  %470 = icmp eq i32 %469, 0
  %471 = and i32 %466, 128
  %472 = icmp eq i32 %471, 0
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 2
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %492, label %477

; <label>:477                                     ; preds = %283
  %478 = add i32 %43, 556
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = add i32 %480, 0
  %482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %482, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = fmul fast float %487, %83
  %489 = fmul fast float %484, %84
  %490 = fmul fast float %485, %85
  %491 = fmul fast float %486, %86
  br label %492

; <label>:492                                     ; preds = %477, %283
  %493 = phi float [ %86, %283 ], [ %491, %477 ]
  %494 = phi float [ %85, %283 ], [ %490, %477 ]
  %495 = phi float [ %84, %283 ], [ %489, %477 ]
  %496 = phi float [ %83, %283 ], [ %488, %477 ]
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 2
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %520, label %501

; <label>:501                                     ; preds = %492
  %502 = add i32 %43, 44
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %495, float 1.000000e+00
  %508 = add i32 %43, 60
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 1
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %494, float 1.000000e+00
  %514 = add i32 %43, 76
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 1
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %493, float 1.000000e+00
  br label %520

; <label>:520                                     ; preds = %501, %492
  %521 = phi float [ %493, %492 ], [ %519, %501 ]
  %522 = phi float [ %494, %492 ], [ %513, %501 ]
  %523 = phi float [ %495, %492 ], [ %507, %501 ]
  %524 = lshr i32 %498, 20
  %525 = and i32 %524, 3
  %526 = add nuw nsw i32 %525, 1
  %527 = add i32 %43, 24
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %43, 28
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = or i32 %532, %529
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %1180, label %535

; <label>:535                                     ; preds = %520
  %536 = and i32 %529, 262144
  %537 = icmp ne i32 %536, 0
  %538 = select i1 %537, float %49, float 1.000000e+00
  %539 = select i1 %537, float %50, float 0.000000e+00
  %540 = select i1 %537, float %51, float 0.000000e+00
  %541 = select i1 %537, float %52, float 1.000000e+00
  %542 = select i1 %537, float %53, float %81
  %543 = select i1 %537, float %54, float %82
  %544 = add i32 %43, 284
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 16
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = fmul fast float %548, 0x3F50624DE0000000
  %550 = add i32 %43, 88
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  %555 = lshr i32 %552, 24
  %556 = add i32 %43, 292
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %558, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = add i32 %43, 32
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 22
  %567 = shl nuw nsw i32 %566, 5
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = shl i32 %565, 4
  %570 = and i32 %569, 32752
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %565, 7
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = fmul fast float %576, 1.000000e+03
  %578 = fmul fast float %336, %577
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = fadd fast float %579, %326
  %581 = fmul fast float %337, %577
  %582 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %583 = fadd fast float %582, %328
  %584 = fmul fast float %549, %577
  %585 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %586 = fmul fast float %585, 0x401921FB60000000
  %587 = fadd fast float %586, %568
  %588 = call float @dx.op.unary.f32(i32 13, float %587)  ; Sin(value)
  %589 = call float @dx.op.unary.f32(i32 12, float %587)  ; Cos(value)
  %590 = fsub fast float -0.000000e+00, %588
  %591 = fadd fast float %542, -5.000000e-01
  %592 = fadd fast float %543, -5.000000e-01
  %593 = fmul fast float %560, %591
  %594 = fmul fast float %562, %592
  %595 = fadd fast float %593, 5.000000e-01
  %596 = fadd fast float %594, 5.000000e-01
  %597 = fmul fast float %571, %595
  %598 = fmul fast float %574, %596
  %599 = fmul fast float %589, %597
  %600 = call float @dx.op.tertiary.f32(i32 46, float %590, float %598, float %599)  ; FMad(a,b,c)
  %601 = fmul fast float %588, %597
  %602 = call float @dx.op.tertiary.f32(i32 46, float %589, float %598, float %601)  ; FMad(a,b,c)
  %603 = fadd fast float %580, %600
  %604 = fadd fast float %583, %602
  %605 = icmp ugt i32 %554, 1
  %606 = icmp ugt i32 %552, 33554431
  %607 = or i1 %606, %605
  br i1 %607, label %608, label %633

; <label>:608                                     ; preds = %535
  %609 = add i32 %43, 228
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = lshr i32 %611, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = fmul fast float %576, %613
  %615 = call float @dx.op.unary.f32(i32 22, float %614)  ; Frc(value)
  %616 = mul nuw nsw i32 %554, %555
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %615, %617
  %619 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %620 = fptoui float %619 to i32
  %621 = urem i32 %620, %554
  %622 = udiv i32 %620, %555
  %623 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %624 = call float @dx.op.unary.f32(i32 22, float %604)  ; Frc(value)
  %625 = uitofp i32 %621 to float
  %626 = uitofp i32 %622 to float
  %627 = fadd fast float %623, %625
  %628 = fadd fast float %624, %626
  %629 = uitofp i32 %554 to float
  %630 = uitofp i32 %555 to float
  %631 = fdiv fast float %627, %629
  %632 = fdiv fast float %628, %630
  br label %633

; <label>:633                                     ; preds = %608, %535
  %634 = phi float [ %631, %608 ], [ %603, %535 ]
  %635 = phi float [ %632, %608 ], [ %604, %535 ]
  %636 = and i32 %529, 256
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %684, label %638

; <label>:638                                     ; preds = %633
  %639 = add i32 %43, 488
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %643, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = add i32 %43, 100
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = shl i32 %648, 4
  %650 = and i32 %649, 32752
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = lshr i32 %648, 7
  %653 = and i32 %652, 32752
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = fsub fast float 1.000000e+00, %496
  %656 = call float @dx.op.binary.f32(i32 35, float %655, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %657 = bitcast float %496 to i32
  %658 = sitofp i32 %657 to float
  %659 = fadd fast float %658, 0xC1CFBF8940000000
  %660 = fmul fast float %654, %659
  %661 = fadd fast float %660, 0x41CFBF8940000000
  %662 = fptosi float %661 to i32
  %663 = bitcast i32 %662 to float
  %664 = bitcast float %656 to i32
  %665 = sitofp i32 %664 to float
  %666 = fadd fast float %665, 0xC1CFBF8940000000
  %667 = fmul fast float %666, %654
  %668 = fadd fast float %667, 0x41CFBF8940000000
  %669 = fptosi float %668 to i32
  %670 = bitcast i32 %669 to float
  %671 = fmul fast float %663, %651
  %672 = fmul fast float %670, %651
  %673 = fsub fast float %656, %671
  %674 = fadd fast float %672, %656
  %675 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %676 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %677 = fsub fast float %645, %675
  %678 = fsub fast float %676, %675
  %679 = bitcast float %678 to i32
  %680 = sub nsw i32 2129859010, %679
  %681 = bitcast i32 %680 to float
  %682 = fmul fast float %681, %677
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  br label %684

; <label>:684                                     ; preds = %638, %633
  %685 = phi float [ %683, %638 ], [ %496, %633 ]
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 128
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %706, label %690

; <label>:690                                     ; preds = %684
  %691 = add i32 %43, 472
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 524288
  %701 = icmp ne i32 %700, 0
  %702 = fcmp fast ogt float %697, 0x3FE0101020000000
  %703 = select i1 %702, float 1.000000e+00, float 0.000000e+00
  %704 = select i1 %701, float %703, float %697
  %705 = fmul fast float %704, %685
  br label %706

; <label>:706                                     ; preds = %690, %684
  %707 = phi float [ %705, %690 ], [ %685, %684 ]
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 16
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %910, label %712

; <label>:712                                     ; preds = %706
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = add i32 %43, 424
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = add i32 %717, 0
  %719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %719, %dx.types.Handle %95, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = extractvalue %dx.types.ResRet.f32 %720, 3
  %725 = and i32 %714, 255
  %726 = uitofp i32 %725 to float
  %727 = lshr i32 %714, 8
  %728 = and i32 %727, 255
  %729 = uitofp i32 %728 to float
  %730 = fmul fast float %724, %726
  %731 = fadd fast float %730, %729
  %732 = fmul fast float %731, 0x3F70101000000000
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 512
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %745, label %737

; <label>:737                                     ; preds = %712
  %738 = add i32 %43, 508
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  br label %745

; <label>:745                                     ; preds = %737, %712
  %746 = phi float [ %744, %737 ], [ 1.000000e+00, %712 ]
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 33554432
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %857, label %751

; <label>:751                                     ; preds = %745
  %752 = add i32 %43, 224
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 65535
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = lshr i32 %754, 16
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = add i32 %43, 228
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 65535
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = lshr i32 %765, 24
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = and i32 %765, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %765, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = lshr i32 %765, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = add i32 %43, 220
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 24
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F70101020000000
  %786 = and i32 %782, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101020000000
  %789 = lshr i32 %782, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F70101020000000
  %793 = lshr i32 %782, 16
  %794 = and i32 %793, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101020000000
  %797 = bitcast float %721 to i32
  %798 = ashr i32 %797, 1
  %799 = sub nsw i32 1597463174, %798
  %800 = bitcast i32 %799 to float
  %801 = fmul fast float %721, 5.000000e-01
  %802 = fmul fast float %800, %800
  %803 = fmul fast float %802, %801
  %804 = fsub fast float 1.500000e+00, %803
  %805 = fmul fast float %800, %721
  %806 = fmul fast float %805, %804
  %807 = bitcast float %722 to i32
  %808 = ashr i32 %807, 1
  %809 = sub nsw i32 1597463174, %808
  %810 = bitcast i32 %809 to float
  %811 = fmul fast float %722, 5.000000e-01
  %812 = fmul fast float %810, %810
  %813 = fmul fast float %812, %811
  %814 = fsub fast float 1.500000e+00, %813
  %815 = fmul fast float %810, %722
  %816 = fmul fast float %815, %814
  %817 = bitcast float %723 to i32
  %818 = ashr i32 %817, 1
  %819 = sub nsw i32 1597463174, %818
  %820 = bitcast i32 %819 to float
  %821 = fmul fast float %723, 5.000000e-01
  %822 = fmul fast float %820, %820
  %823 = fmul fast float %822, %821
  %824 = fsub fast float 1.500000e+00, %823
  %825 = fmul fast float %820, %723
  %826 = fmul fast float %825, %824
  %827 = fsub fast float %806, %788
  %828 = fsub fast float %816, %792
  %829 = fsub fast float %826, %796
  %830 = fmul fast float %827, %756
  %831 = fmul fast float %828, %758
  %832 = fmul fast float %829, %763
  %833 = fadd fast float %830, %771
  %834 = fadd fast float %831, %775
  %835 = fadd fast float %832, %779
  %836 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %837 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %838 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %839 = fmul fast float %836, %836
  %840 = fmul fast float %837, %837
  %841 = fmul fast float %838, %838
  %842 = fsub fast float %839, %721
  %843 = fsub fast float %840, %722
  %844 = fsub fast float %841, %723
  %845 = fmul fast float %842, %746
  %846 = fmul fast float %843, %746
  %847 = fmul fast float %844, %746
  %848 = fadd fast float %845, %721
  %849 = fadd fast float %846, %722
  %850 = fadd fast float %847, %723
  %851 = fadd fast float %768, %732
  %852 = fsub fast float %851, %785
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = fsub fast float %853, %732
  %855 = fmul fast float %854, %746
  %856 = fadd fast float %855, %732
  br label %910

; <label>:857                                     ; preds = %745
  %858 = and i32 %748, 134217728
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %894, label %860

; <label>:860                                     ; preds = %857
  %861 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %862 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %863 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %864 = fadd fast float %861, -5.000000e-01
  %865 = fadd fast float %862, -5.000000e-01
  %866 = fadd fast float %863, -5.000000e-01
  %867 = fmul fast float %864, %746
  %868 = fmul fast float %865, %746
  %869 = fmul fast float %866, %746
  %870 = fadd fast float %867, 5.000000e-01
  %871 = fadd fast float %868, 5.000000e-01
  %872 = fadd fast float %869, 5.000000e-01
  %873 = call float @dx.op.unary.f32(i32 24, float %721)  ; Sqrt(value)
  %874 = call float @dx.op.unary.f32(i32 24, float %722)  ; Sqrt(value)
  %875 = call float @dx.op.unary.f32(i32 24, float %723)  ; Sqrt(value)
  %876 = fmul fast float %870, 2.000000e+00
  %877 = fsub fast float 1.000000e+00, %876
  %878 = fmul fast float %877, %873
  %879 = fadd fast float %878, %876
  %880 = fmul fast float %879, %873
  %881 = fmul fast float %871, 2.000000e+00
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul fast float %882, %874
  %884 = fadd fast float %883, %881
  %885 = fmul fast float %884, %874
  %886 = fmul fast float %872, 2.000000e+00
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %887, %875
  %889 = fadd fast float %888, %886
  %890 = fmul fast float %889, %875
  %891 = fmul fast float %880, %880
  %892 = fmul fast float %885, %885
  %893 = fmul fast float %890, %890
  br label %910

; <label>:894                                     ; preds = %857
  %895 = fmul fast float %313, %313
  %896 = fmul fast float %317, %317
  %897 = fmul fast float %321, %321
  %898 = fadd fast float %895, -1.000000e+00
  %899 = fadd fast float %896, -1.000000e+00
  %900 = fadd fast float %897, -1.000000e+00
  %901 = fmul fast float %746, %898
  %902 = fmul fast float %746, %899
  %903 = fmul fast float %746, %900
  %904 = fadd fast float %901, 1.000000e+00
  %905 = fadd fast float %902, 1.000000e+00
  %906 = fadd fast float %903, 1.000000e+00
  %907 = fmul fast float %904, %721
  %908 = fmul fast float %905, %722
  %909 = fmul fast float %906, %723
  br label %910

; <label>:910                                     ; preds = %894, %860, %751, %706
  %911 = phi float [ %856, %751 ], [ %732, %860 ], [ %732, %894 ], [ 0x3FA23C0BE0000000, %706 ]
  %912 = phi float [ %848, %751 ], [ %891, %860 ], [ %907, %894 ], [ 1.000000e+00, %706 ]
  %913 = phi float [ %849, %751 ], [ %892, %860 ], [ %908, %894 ], [ 1.000000e+00, %706 ]
  %914 = phi float [ %850, %751 ], [ %893, %860 ], [ %909, %894 ], [ 1.000000e+00, %706 ]
  %915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.i32 %915, 1
  %917 = and i32 %916, 1
  %918 = icmp ne i32 %917, 0
  %919 = add i32 %43, 356
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 32
  %923 = icmp ne i32 %922, 0
  %924 = and i1 %918, %923
  %925 = select i1 %924, float 1.000000e+00, float %912
  %926 = select i1 %924, float 0x3FD3333340000000, float %913
  %927 = select i1 %924, float 0x3FD3333340000000, float %914
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 32
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1004, label %932

; <label>:932                                     ; preds = %910
  %933 = add i32 %43, 92
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = add i32 %43, 440
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = add i32 %938, 0
  %940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %940, %dx.types.Handle %95, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = extractvalue %dx.types.ResRet.f32 %941, 3
  %946 = and i32 %935, 255
  %947 = uitofp i32 %946 to float
  %948 = lshr i32 %935, 8
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = lshr i32 %935, 16
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101000000000
  %955 = fmul fast float %942, %947
  %956 = fadd fast float %955, %950
  %957 = fmul fast float %956, 0x3F70101000000000
  %958 = fadd fast float %943, -5.000000e-01
  %959 = fadd fast float %945, -5.000000e-01
  %960 = fmul fast float %958, %954
  %961 = fmul fast float %959, %954
  %962 = fadd fast float %960, 5.000000e-01
  %963 = fadd fast float %961, 5.000000e-01
  %964 = fmul fast float %962, 2.000000e+00
  %965 = fadd fast float %964, -1.000000e+00
  %966 = fmul fast float %963, 2.000000e+00
  %967 = fadd fast float %966, -1.000000e+00
  %968 = fadd fast float %965, %967
  %969 = fmul fast float %968, 5.000000e-01
  %970 = fsub fast float %965, %967
  %971 = fmul fast float %970, 5.000000e-01
  %972 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %973 = fsub fast float 1.000000e+00, %972
  %974 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %975 = fsub fast float %973, %974
  %976 = call float @dx.op.dot3.f32(i32 55, float %969, float %971, float %975, float %969, float %971, float %975)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = call float @dx.op.unary.f32(i32 25, float %976)  ; Rsqrt(value)
  %978 = fmul fast float %969, %977
  %979 = fmul fast float %971, %977
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 67108864
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1000, label %984

; <label>:984                                     ; preds = %932
  %985 = add i32 %43, 280
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 65535
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = lshr i32 %987, 16
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = fsub fast float %957, %995
  %997 = fmul fast float %996, %989
  %998 = fadd fast float %997, %993
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  br label %1000

; <label>:1000                                    ; preds = %984, %932
  %1001 = phi float [ %999, %984 ], [ %957, %932 ]
  %1002 = call float @dx.op.dot2.f32(i32 54, float %978, float %979, float %538, float %539)  ; Dot2(ax,ay,bx,by)
  %1003 = call float @dx.op.dot2.f32(i32 54, float %978, float %979, float %540, float %541)  ; Dot2(ax,ay,bx,by)
  br label %1004

; <label>:1004                                    ; preds = %1000, %910
  %1005 = phi float [ %1001, %1000 ], [ 0x3FD6666660000000, %910 ]
  %1006 = phi float [ %1002, %1000 ], [ 0.000000e+00, %910 ]
  %1007 = phi float [ %1003, %1000 ], [ 0.000000e+00, %910 ]
  %1008 = phi float [ %944, %1000 ], [ 1.000000e+00, %910 ]
  %1009 = add i32 %43, 160
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = lshr i32 %1011, 22
  %1013 = shl nuw nsw i32 %1012, 5
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 64
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1052, label %1019

; <label>:1019                                    ; preds = %1004
  %1020 = add i32 %43, 456
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = add i32 %1022, 0
  %1024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 131072
  %1028 = icmp eq i32 %1027, 0
  %1029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1024, %dx.types.Handle %95, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = fmul fast float %1030, %301
  %1034 = fmul fast float %1031, %304
  %1035 = fmul fast float %1032, %307
  br i1 %1028, label %1042, label %1036

; <label>:1036                                    ; preds = %1019
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = fmul fast float %1038, %1033
  %1040 = fmul fast float %1038, %1034
  %1041 = fmul fast float %1038, %1035
  br label %1042

; <label>:1042                                    ; preds = %1036, %1019
  %1043 = phi float [ %1039, %1036 ], [ %1033, %1019 ]
  %1044 = phi float [ %1040, %1036 ], [ %1034, %1019 ]
  %1045 = phi float [ %1041, %1036 ], [ %1035, %1019 ]
  %1046 = fmul fast float %1043, %1014
  %1047 = select i1 %284, float %1046, float %1043
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1047, float %1044, float %1045, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = select i1 %284, float 0.000000e+00, float %1043
  %1050 = select i1 %284, float %1048, float %1044
  %1051 = select i1 %284, float 0.000000e+00, float %1045
  br label %1052

; <label>:1052                                    ; preds = %1042, %1004
  %1053 = phi float [ %1049, %1042 ], [ 0.000000e+00, %1004 ]
  %1054 = phi float [ %1050, %1042 ], [ 0.000000e+00, %1004 ]
  %1055 = phi float [ %1051, %1042 ], [ 0.000000e+00, %1004 ]
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 1024
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1090, label %1060

; <label>:1060                                    ; preds = %1052
  %1061 = add i32 %43, 152
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = lshr i32 %1063, 8
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1069, 0x3F70101020000000
  %1071 = lshr i32 %1063, 16
  %1072 = and i32 %1071, 255
  %1073 = uitofp i32 %1072 to float
  %1074 = fmul fast float %1073, 0x3F70101020000000
  %1075 = fmul fast float %1066, %1066
  %1076 = fmul fast float %1070, %1070
  %1077 = fmul fast float %1074, %1074
  %1078 = add i32 %43, 524
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1082, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = fmul fast float %1075, %1084
  %1088 = fmul fast float %1076, %1085
  %1089 = fmul fast float %1077, %1086
  br label %1090

; <label>:1090                                    ; preds = %1060, %1052
  %1091 = phi float [ %1087, %1060 ], [ 0.000000e+00, %1052 ]
  %1092 = phi float [ %1088, %1060 ], [ 0.000000e+00, %1052 ]
  %1093 = phi float [ %1089, %1060 ], [ 0.000000e+00, %1052 ]
  %1094 = fcmp fast ogt float %1091, 0.000000e+00
  %1095 = fcmp fast ogt float %1092, 0.000000e+00
  %1096 = fcmp fast ogt float %1093, 0.000000e+00
  %1097 = call float @dx.op.unary.f32(i32 23, float %1091)  ; Log(value)
  %1098 = call float @dx.op.unary.f32(i32 23, float %1092)  ; Log(value)
  %1099 = call float @dx.op.unary.f32(i32 23, float %1093)  ; Log(value)
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = lshr i32 %1101, 7
  %1103 = and i32 %1102, 32752
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = fmul fast float %1097, 0xBFE62E4300000000
  %1106 = fmul fast float %1105, %1104
  %1107 = fmul fast float %1098, 0xBFE62E4300000000
  %1108 = fmul fast float %1107, %1104
  %1109 = fmul fast float %1099, 0xBFE62E4300000000
  %1110 = fmul fast float %1109, %1104
  %1111 = select i1 %1094, float %1106, float 1.270000e+02
  %1112 = select i1 %1095, float %1108, float 1.270000e+02
  %1113 = select i1 %1096, float %1110, float 1.270000e+02
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 10240
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1162, label %1118

; <label>:1118                                    ; preds = %1090
  %1119 = add i32 %43, 540
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1121, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1123, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 1048576
  %1130 = icmp ne i32 %1129, 0
  %1131 = and i32 %1128, 8192
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1148, label %1133

; <label>:1133                                    ; preds = %1118
  %1134 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1135 = select i1 %1130, float %1134, float %1125
  %1136 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1137 = select i1 %1130, float %1136, float %1125
  %1138 = add i32 %43, 96
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = lshr i32 %1140, 16
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1143, 0x3F80101020000000
  %1145 = fmul fast float %1144, %1137
  %1146 = fmul fast float %1144, %1125
  %1147 = fmul fast float %1144, %1135
  br label %1148

; <label>:1148                                    ; preds = %1133, %1118
  %1149 = phi float [ %1145, %1133 ], [ 0.000000e+00, %1118 ]
  %1150 = phi float [ %1146, %1133 ], [ 0.000000e+00, %1118 ]
  %1151 = phi float [ %1147, %1133 ], [ 0.000000e+00, %1118 ]
  %1152 = and i32 %1128, 2048
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1162, label %1154

; <label>:1154                                    ; preds = %1148
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = shl i32 %1156, 4
  %1158 = and i32 %1157, 32752
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fmul fast float %1159, %1126
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1162

; <label>:1162                                    ; preds = %1154, %1148, %1090
  %1163 = phi float [ %1149, %1154 ], [ %1149, %1148 ], [ 0.000000e+00, %1090 ]
  %1164 = phi float [ %1150, %1154 ], [ %1150, %1148 ], [ 0.000000e+00, %1090 ]
  %1165 = phi float [ %1151, %1154 ], [ %1151, %1148 ], [ 0.000000e+00, %1090 ]
  %1166 = phi float [ %1161, %1154 ], [ 0x3F70101020000000, %1148 ], [ 0x3F70101020000000, %1090 ]
  %1167 = add i32 %43, 96
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = lshr i32 %1169, 8
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = call float @dx.op.dot3.f32(i32 55, float %925, float %926, float %927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = fmul fast float %1174, %1175
  %1177 = fadd fast float %1176, %1171
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  br label %1180

; <label>:1180                                    ; preds = %1162, %520
  %1181 = phi float [ 0.000000e+00, %520 ], [ %1006, %1162 ]
  %1182 = phi float [ 0.000000e+00, %520 ], [ %1007, %1162 ]
  %1183 = phi float [ 0.000000e+00, %520 ], [ %925, %1162 ]
  %1184 = phi float [ 0.000000e+00, %520 ], [ %926, %1162 ]
  %1185 = phi float [ 0.000000e+00, %520 ], [ %927, %1162 ]
  %1186 = phi float [ 0.000000e+00, %520 ], [ %1053, %1162 ]
  %1187 = phi float [ 0.000000e+00, %520 ], [ %1054, %1162 ]
  %1188 = phi float [ 0.000000e+00, %520 ], [ %1055, %1162 ]
  %1189 = phi float [ 0.000000e+00, %520 ], [ %1163, %1162 ]
  %1190 = phi float [ 0.000000e+00, %520 ], [ %1164, %1162 ]
  %1191 = phi float [ 0.000000e+00, %520 ], [ %1165, %1162 ]
  %1192 = phi float [ 0.000000e+00, %520 ], [ %1111, %1162 ]
  %1193 = phi float [ 0.000000e+00, %520 ], [ %1112, %1162 ]
  %1194 = phi float [ 0.000000e+00, %520 ], [ %1113, %1162 ]
  %1195 = phi float [ 0.000000e+00, %520 ], [ %911, %1162 ]
  %1196 = phi float [ 0.000000e+00, %520 ], [ %707, %1162 ]
  %1197 = phi float [ 0.000000e+00, %520 ], [ %1005, %1162 ]
  %1198 = phi float [ 0.000000e+00, %520 ], [ %1008, %1162 ]
  %1199 = phi float [ 0.000000e+00, %520 ], [ %1166, %1162 ]
  %1200 = phi float [ 0.000000e+00, %520 ], [ %1179, %1162 ]
  br i1 %468, label %2123, label %1201

; <label>:1201                                    ; preds = %1180
  %1202 = icmp ult i32 %526, 2
  %1203 = add i32 %43, 40
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %43, 44
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = or i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %2123, label %1211

; <label>:1211                                    ; preds = %1201
  %1212 = and i32 %1205, 262144
  %1213 = icmp ne i32 %1212, 0
  %1214 = select i1 %1213, float %49, float 1.000000e+00
  %1215 = select i1 %1213, float %50, float 0.000000e+00
  %1216 = select i1 %1213, float %51, float 0.000000e+00
  %1217 = select i1 %1213, float %52, float 1.000000e+00
  %1218 = select i1 %1213, float %53, float %81
  %1219 = select i1 %1213, float %54, float %82
  %1220 = add i32 %43, 300
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = lshr i32 %1222, 16
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = fmul fast float %1224, 0x3F50624DE0000000
  %1226 = add i32 %43, 104
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 16
  %1230 = and i32 %1229, 255
  %1231 = lshr i32 %1228, 24
  %1232 = add i32 %43, 308
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = lshr i32 %1234, 16
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = add i32 %43, 48
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 22
  %1243 = shl nuw nsw i32 %1242, 5
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = shl i32 %1241, 4
  %1246 = and i32 %1245, 32752
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = lshr i32 %1241, 7
  %1249 = and i32 %1248, 32752
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1253 = fmul fast float %1252, 1.000000e+03
  %1254 = fmul fast float %378, %1253
  %1255 = call float @dx.op.unary.f32(i32 22, float %1254)  ; Frc(value)
  %1256 = fadd fast float %1255, %368
  %1257 = fmul fast float %379, %1253
  %1258 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1259 = fadd fast float %1258, %370
  %1260 = fmul fast float %1225, %1253
  %1261 = call float @dx.op.unary.f32(i32 22, float %1260)  ; Frc(value)
  %1262 = fmul fast float %1261, 0x401921FB60000000
  %1263 = fadd fast float %1262, %1244
  %1264 = call float @dx.op.unary.f32(i32 13, float %1263)  ; Sin(value)
  %1265 = call float @dx.op.unary.f32(i32 12, float %1263)  ; Cos(value)
  %1266 = fsub fast float -0.000000e+00, %1264
  %1267 = fadd fast float %1218, -5.000000e-01
  %1268 = fadd fast float %1219, -5.000000e-01
  %1269 = fmul fast float %1236, %1267
  %1270 = fmul fast float %1238, %1268
  %1271 = fadd fast float %1269, 5.000000e-01
  %1272 = fadd fast float %1270, 5.000000e-01
  %1273 = fmul fast float %1247, %1271
  %1274 = fmul fast float %1250, %1272
  %1275 = fmul fast float %1265, %1273
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1266, float %1274, float %1275)  ; FMad(a,b,c)
  %1277 = fmul fast float %1264, %1273
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1265, float %1274, float %1277)  ; FMad(a,b,c)
  %1279 = fadd fast float %1256, %1276
  %1280 = fadd fast float %1259, %1278
  %1281 = icmp ugt i32 %1230, 1
  %1282 = icmp ugt i32 %1228, 33554431
  %1283 = or i1 %1282, %1281
  br i1 %1283, label %1284, label %1309

; <label>:1284                                    ; preds = %1211
  %1285 = add i32 %43, 244
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = fmul fast float %1252, %1289
  %1291 = call float @dx.op.unary.f32(i32 22, float %1290)  ; Frc(value)
  %1292 = mul nuw nsw i32 %1230, %1231
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1291, %1293
  %1295 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1296 = fptoui float %1295 to i32
  %1297 = urem i32 %1296, %1230
  %1298 = udiv i32 %1296, %1231
  %1299 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  %1300 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1301 = uitofp i32 %1297 to float
  %1302 = uitofp i32 %1298 to float
  %1303 = fadd fast float %1299, %1301
  %1304 = fadd fast float %1300, %1302
  %1305 = uitofp i32 %1230 to float
  %1306 = uitofp i32 %1231 to float
  %1307 = fdiv fast float %1303, %1305
  %1308 = fdiv fast float %1304, %1306
  br label %1309

; <label>:1309                                    ; preds = %1284, %1211
  %1310 = phi float [ %1307, %1284 ], [ %1279, %1211 ]
  %1311 = phi float [ %1308, %1284 ], [ %1280, %1211 ]
  %1312 = and i32 %1205, 256
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1360, label %1314

; <label>:1314                                    ; preds = %1309
  %1315 = add i32 %43, 492
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1319, %dx.types.Handle %96, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = add i32 %43, 116
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = shl i32 %1324, 4
  %1326 = and i32 %1325, 32752
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = lshr i32 %1324, 7
  %1329 = and i32 %1328, 32752
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = fsub fast float 1.000000e+00, %523
  %1332 = call float @dx.op.binary.f32(i32 35, float %1331, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1333 = bitcast float %523 to i32
  %1334 = sitofp i32 %1333 to float
  %1335 = fadd fast float %1334, 0xC1CFBF8940000000
  %1336 = fmul fast float %1330, %1335
  %1337 = fadd fast float %1336, 0x41CFBF8940000000
  %1338 = fptosi float %1337 to i32
  %1339 = bitcast i32 %1338 to float
  %1340 = bitcast float %1332 to i32
  %1341 = sitofp i32 %1340 to float
  %1342 = fadd fast float %1341, 0xC1CFBF8940000000
  %1343 = fmul fast float %1342, %1330
  %1344 = fadd fast float %1343, 0x41CFBF8940000000
  %1345 = fptosi float %1344 to i32
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1339, %1327
  %1348 = fmul fast float %1346, %1327
  %1349 = fsub fast float %1332, %1347
  %1350 = fadd fast float %1348, %1332
  %1351 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1352 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1353 = fsub fast float %1321, %1351
  %1354 = fsub fast float %1352, %1351
  %1355 = bitcast float %1354 to i32
  %1356 = sub nsw i32 2129859010, %1355
  %1357 = bitcast i32 %1356 to float
  %1358 = fmul fast float %1357, %1353
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  br label %1360

; <label>:1360                                    ; preds = %1314, %1309
  %1361 = phi float [ %1359, %1314 ], [ %523, %1309 ]
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 128
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1382, label %1366

; <label>:1366                                    ; preds = %1360
  %1367 = add i32 %43, 476
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %96, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 524288
  %1377 = icmp ne i32 %1376, 0
  %1378 = fcmp fast ogt float %1373, 0x3FE0101020000000
  %1379 = select i1 %1378, float 1.000000e+00, float 0.000000e+00
  %1380 = select i1 %1377, float %1379, float %1373
  %1381 = fmul fast float %1380, %1361
  br label %1382

; <label>:1382                                    ; preds = %1366, %1360
  %1383 = phi float [ %1381, %1366 ], [ %1361, %1360 ]
  %1384 = fcmp fast ult float %1383, 0x3F70101020000000
  br i1 %1384, label %2123, label %1385

; <label>:1385                                    ; preds = %1382
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 16
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1588, label %1390

; <label>:1390                                    ; preds = %1385
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = add i32 %43, 428
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = add i32 %1395, 0
  %1397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1397, %dx.types.Handle %95, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.ResRet.f32 %1398, 3
  %1403 = and i32 %1392, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = lshr i32 %1392, 8
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1402, %1404
  %1409 = fadd fast float %1408, %1407
  %1410 = fmul fast float %1409, 0x3F70101000000000
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 512
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1423, label %1415

; <label>:1415                                    ; preds = %1390
  %1416 = add i32 %43, 512
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %1418, 0
  %1420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1420, %dx.types.Handle %96, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  br label %1423

; <label>:1423                                    ; preds = %1415, %1390
  %1424 = phi float [ %1422, %1415 ], [ 1.000000e+00, %1390 ]
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 33554432
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1535, label %1429

; <label>:1429                                    ; preds = %1423
  %1430 = add i32 %43, 240
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 65535
  %1434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1433)  ; LegacyF16ToF32(value)
  %1435 = lshr i32 %1432, 16
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = add i32 %43, 244
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = and i32 %1439, 65535
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = lshr i32 %1443, 24
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, 0x3F70101020000000
  %1447 = and i32 %1443, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = fmul fast float %1448, 0x3F70101020000000
  %1450 = lshr i32 %1443, 8
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = fmul fast float %1452, 0x3F70101020000000
  %1454 = lshr i32 %1443, 16
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = add i32 %43, 236
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = lshr i32 %1460, 24
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1462, 0x3F70101020000000
  %1464 = and i32 %1460, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1465, 0x3F70101020000000
  %1467 = lshr i32 %1460, 8
  %1468 = and i32 %1467, 255
  %1469 = uitofp i32 %1468 to float
  %1470 = fmul fast float %1469, 0x3F70101020000000
  %1471 = lshr i32 %1460, 16
  %1472 = and i32 %1471, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = fmul fast float %1473, 0x3F70101020000000
  %1475 = bitcast float %1399 to i32
  %1476 = ashr i32 %1475, 1
  %1477 = sub nsw i32 1597463174, %1476
  %1478 = bitcast i32 %1477 to float
  %1479 = fmul fast float %1399, 5.000000e-01
  %1480 = fmul fast float %1478, %1478
  %1481 = fmul fast float %1480, %1479
  %1482 = fsub fast float 1.500000e+00, %1481
  %1483 = fmul fast float %1478, %1399
  %1484 = fmul fast float %1483, %1482
  %1485 = bitcast float %1400 to i32
  %1486 = ashr i32 %1485, 1
  %1487 = sub nsw i32 1597463174, %1486
  %1488 = bitcast i32 %1487 to float
  %1489 = fmul fast float %1400, 5.000000e-01
  %1490 = fmul fast float %1488, %1488
  %1491 = fmul fast float %1490, %1489
  %1492 = fsub fast float 1.500000e+00, %1491
  %1493 = fmul fast float %1488, %1400
  %1494 = fmul fast float %1493, %1492
  %1495 = bitcast float %1401 to i32
  %1496 = ashr i32 %1495, 1
  %1497 = sub nsw i32 1597463174, %1496
  %1498 = bitcast i32 %1497 to float
  %1499 = fmul fast float %1401, 5.000000e-01
  %1500 = fmul fast float %1498, %1498
  %1501 = fmul fast float %1500, %1499
  %1502 = fsub fast float 1.500000e+00, %1501
  %1503 = fmul fast float %1498, %1401
  %1504 = fmul fast float %1503, %1502
  %1505 = fsub fast float %1484, %1466
  %1506 = fsub fast float %1494, %1470
  %1507 = fsub fast float %1504, %1474
  %1508 = fmul fast float %1505, %1434
  %1509 = fmul fast float %1506, %1436
  %1510 = fmul fast float %1507, %1441
  %1511 = fadd fast float %1508, %1449
  %1512 = fadd fast float %1509, %1453
  %1513 = fadd fast float %1510, %1457
  %1514 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1517 = fmul fast float %1514, %1514
  %1518 = fmul fast float %1515, %1515
  %1519 = fmul fast float %1516, %1516
  %1520 = fsub fast float %1517, %1399
  %1521 = fsub fast float %1518, %1400
  %1522 = fsub fast float %1519, %1401
  %1523 = fmul fast float %1520, %1424
  %1524 = fmul fast float %1521, %1424
  %1525 = fmul fast float %1522, %1424
  %1526 = fadd fast float %1523, %1399
  %1527 = fadd fast float %1524, %1400
  %1528 = fadd fast float %1525, %1401
  %1529 = fadd fast float %1446, %1410
  %1530 = fsub fast float %1529, %1463
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fsub fast float %1531, %1410
  %1533 = fmul fast float %1532, %1424
  %1534 = fadd fast float %1533, %1410
  br label %1588

; <label>:1535                                    ; preds = %1423
  %1536 = and i32 %1426, 134217728
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1572, label %1538

; <label>:1538                                    ; preds = %1535
  %1539 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %1540 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %1541 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %1542 = fadd fast float %1539, -5.000000e-01
  %1543 = fadd fast float %1540, -5.000000e-01
  %1544 = fadd fast float %1541, -5.000000e-01
  %1545 = fmul fast float %1542, %1424
  %1546 = fmul fast float %1543, %1424
  %1547 = fmul fast float %1544, %1424
  %1548 = fadd fast float %1545, 5.000000e-01
  %1549 = fadd fast float %1546, 5.000000e-01
  %1550 = fadd fast float %1547, 5.000000e-01
  %1551 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1552 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1553 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1554 = fmul fast float %1548, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1551
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1551
  %1559 = fmul fast float %1549, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1552
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1552
  %1564 = fmul fast float %1550, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1553
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1553
  %1569 = fmul fast float %1558, %1558
  %1570 = fmul fast float %1563, %1563
  %1571 = fmul fast float %1568, %1568
  br label %1588

; <label>:1572                                    ; preds = %1535
  %1573 = fmul fast float %355, %355
  %1574 = fmul fast float %359, %359
  %1575 = fmul fast float %363, %363
  %1576 = fadd fast float %1573, -1.000000e+00
  %1577 = fadd fast float %1574, -1.000000e+00
  %1578 = fadd fast float %1575, -1.000000e+00
  %1579 = fmul fast float %1424, %1576
  %1580 = fmul fast float %1424, %1577
  %1581 = fmul fast float %1424, %1578
  %1582 = fadd fast float %1579, 1.000000e+00
  %1583 = fadd fast float %1580, 1.000000e+00
  %1584 = fadd fast float %1581, 1.000000e+00
  %1585 = fmul fast float %1582, %1399
  %1586 = fmul fast float %1583, %1400
  %1587 = fmul fast float %1584, %1401
  br label %1588

; <label>:1588                                    ; preds = %1572, %1538, %1429, %1385
  %1589 = phi float [ %1534, %1429 ], [ %1410, %1538 ], [ %1410, %1572 ], [ 0x3FA23C0BE0000000, %1385 ]
  %1590 = phi float [ %1526, %1429 ], [ %1569, %1538 ], [ %1585, %1572 ], [ 1.000000e+00, %1385 ]
  %1591 = phi float [ %1527, %1429 ], [ %1570, %1538 ], [ %1586, %1572 ], [ 1.000000e+00, %1385 ]
  %1592 = phi float [ %1528, %1429 ], [ %1571, %1538 ], [ %1587, %1572 ], [ 1.000000e+00, %1385 ]
  %1593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.i32 %1593, 1
  %1595 = and i32 %1594, 1
  %1596 = icmp ne i32 %1595, 0
  %1597 = add i32 %43, 356
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 32
  %1601 = icmp ne i32 %1600, 0
  %1602 = and i1 %1596, %1601
  %1603 = select i1 %1602, float 1.000000e+00, float %1590
  %1604 = select i1 %1602, float 0x3FD3333340000000, float %1591
  %1605 = select i1 %1602, float 0x3FD3333340000000, float %1592
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 32
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1682, label %1610

; <label>:1610                                    ; preds = %1588
  %1611 = add i32 %43, 108
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = add i32 %43, 444
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = add i32 %1616, 0
  %1618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1618, %dx.types.Handle %95, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = extractvalue %dx.types.ResRet.f32 %1619, 3
  %1624 = and i32 %1613, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = lshr i32 %1613, 8
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = lshr i32 %1613, 16
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101000000000
  %1633 = fmul fast float %1620, %1625
  %1634 = fadd fast float %1633, %1628
  %1635 = fmul fast float %1634, 0x3F70101000000000
  %1636 = fadd fast float %1621, -5.000000e-01
  %1637 = fadd fast float %1623, -5.000000e-01
  %1638 = fmul fast float %1636, %1632
  %1639 = fmul fast float %1637, %1632
  %1640 = fadd fast float %1638, 5.000000e-01
  %1641 = fadd fast float %1639, 5.000000e-01
  %1642 = fmul fast float %1640, 2.000000e+00
  %1643 = fadd fast float %1642, -1.000000e+00
  %1644 = fmul fast float %1641, 2.000000e+00
  %1645 = fadd fast float %1644, -1.000000e+00
  %1646 = fadd fast float %1643, %1645
  %1647 = fmul fast float %1646, 5.000000e-01
  %1648 = fsub fast float %1643, %1645
  %1649 = fmul fast float %1648, 5.000000e-01
  %1650 = call float @dx.op.unary.f32(i32 6, float %1647)  ; FAbs(value)
  %1651 = fsub fast float 1.000000e+00, %1650
  %1652 = call float @dx.op.unary.f32(i32 6, float %1649)  ; FAbs(value)
  %1653 = fsub fast float %1651, %1652
  %1654 = call float @dx.op.dot3.f32(i32 55, float %1647, float %1649, float %1653, float %1647, float %1649, float %1653)  ; Dot3(ax,ay,az,bx,by,bz)
  %1655 = call float @dx.op.unary.f32(i32 25, float %1654)  ; Rsqrt(value)
  %1656 = fmul fast float %1647, %1655
  %1657 = fmul fast float %1649, %1655
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 67108864
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1678, label %1662

; <label>:1662                                    ; preds = %1610
  %1663 = add i32 %43, 296
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 65535
  %1667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1666)  ; LegacyF16ToF32(value)
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 65535
  %1671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1670)  ; LegacyF16ToF32(value)
  %1672 = lshr i32 %1665, 16
  %1673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1672)  ; LegacyF16ToF32(value)
  %1674 = fsub fast float %1635, %1673
  %1675 = fmul fast float %1674, %1667
  %1676 = fadd fast float %1675, %1671
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  br label %1678

; <label>:1678                                    ; preds = %1662, %1610
  %1679 = phi float [ %1677, %1662 ], [ %1635, %1610 ]
  %1680 = call float @dx.op.dot2.f32(i32 54, float %1656, float %1657, float %1214, float %1215)  ; Dot2(ax,ay,bx,by)
  %1681 = call float @dx.op.dot2.f32(i32 54, float %1656, float %1657, float %1216, float %1217)  ; Dot2(ax,ay,bx,by)
  br label %1682

; <label>:1682                                    ; preds = %1678, %1588
  %1683 = phi float [ %1679, %1678 ], [ 0x3FD6666660000000, %1588 ]
  %1684 = phi float [ %1680, %1678 ], [ 0.000000e+00, %1588 ]
  %1685 = phi float [ %1681, %1678 ], [ 0.000000e+00, %1588 ]
  %1686 = phi float [ %1622, %1678 ], [ 1.000000e+00, %1588 ]
  %1687 = add i32 %43, 176
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = lshr i32 %1689, 22
  %1691 = shl nuw nsw i32 %1690, 5
  %1692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1691)  ; LegacyF16ToF32(value)
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 64
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1730, label %1697

; <label>:1697                                    ; preds = %1682
  %1698 = add i32 %43, 460
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = add i32 %1700, 0
  %1702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 131072
  %1706 = icmp eq i32 %1705, 0
  %1707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1702, %dx.types.Handle %95, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = fmul fast float %1708, %343
  %1712 = fmul fast float %1709, %346
  %1713 = fmul fast float %1710, %349
  br i1 %1706, label %1720, label %1714

; <label>:1714                                    ; preds = %1697
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = fmul fast float %1716, %1711
  %1718 = fmul fast float %1716, %1712
  %1719 = fmul fast float %1716, %1713
  br label %1720

; <label>:1720                                    ; preds = %1714, %1697
  %1721 = phi float [ %1717, %1714 ], [ %1711, %1697 ]
  %1722 = phi float [ %1718, %1714 ], [ %1712, %1697 ]
  %1723 = phi float [ %1719, %1714 ], [ %1713, %1697 ]
  %1724 = fmul fast float %1721, %1692
  %1725 = select i1 %284, float %1724, float %1721
  %1726 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1722, float %1723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1727 = select i1 %284, float 0.000000e+00, float %1721
  %1728 = select i1 %284, float %1726, float %1722
  %1729 = select i1 %284, float 0.000000e+00, float %1723
  br label %1730

; <label>:1730                                    ; preds = %1720, %1682
  %1731 = phi float [ %1727, %1720 ], [ 0.000000e+00, %1682 ]
  %1732 = phi float [ %1728, %1720 ], [ 0.000000e+00, %1682 ]
  %1733 = phi float [ %1729, %1720 ], [ 0.000000e+00, %1682 ]
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = and i32 %1735, 1024
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1768, label %1738

; <label>:1738                                    ; preds = %1730
  %1739 = add i32 %43, 168
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 255
  %1743 = uitofp i32 %1742 to float
  %1744 = fmul fast float %1743, 0x3F70101020000000
  %1745 = lshr i32 %1741, 8
  %1746 = and i32 %1745, 255
  %1747 = uitofp i32 %1746 to float
  %1748 = fmul fast float %1747, 0x3F70101020000000
  %1749 = lshr i32 %1741, 16
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101020000000
  %1753 = fmul fast float %1744, %1744
  %1754 = fmul fast float %1748, %1748
  %1755 = fmul fast float %1752, %1752
  %1756 = add i32 %43, 528
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %1758, 0
  %1760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1760, %dx.types.Handle %96, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = fmul fast float %1753, %1762
  %1766 = fmul fast float %1754, %1763
  %1767 = fmul fast float %1755, %1764
  br label %1768

; <label>:1768                                    ; preds = %1738, %1730
  %1769 = phi float [ %1765, %1738 ], [ 0.000000e+00, %1730 ]
  %1770 = phi float [ %1766, %1738 ], [ 0.000000e+00, %1730 ]
  %1771 = phi float [ %1767, %1738 ], [ 0.000000e+00, %1730 ]
  %1772 = fcmp fast ogt float %1769, 0.000000e+00
  %1773 = fcmp fast ogt float %1770, 0.000000e+00
  %1774 = fcmp fast ogt float %1771, 0.000000e+00
  %1775 = call float @dx.op.unary.f32(i32 23, float %1769)  ; Log(value)
  %1776 = call float @dx.op.unary.f32(i32 23, float %1770)  ; Log(value)
  %1777 = call float @dx.op.unary.f32(i32 23, float %1771)  ; Log(value)
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 7
  %1781 = and i32 %1780, 32752
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = fmul fast float %1775, 0xBFE62E4300000000
  %1784 = fmul fast float %1783, %1782
  %1785 = fmul fast float %1776, 0xBFE62E4300000000
  %1786 = fmul fast float %1785, %1782
  %1787 = fmul fast float %1777, 0xBFE62E4300000000
  %1788 = fmul fast float %1787, %1782
  %1789 = select i1 %1772, float %1784, float 1.270000e+02
  %1790 = select i1 %1773, float %1786, float 1.270000e+02
  %1791 = select i1 %1774, float %1788, float 1.270000e+02
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 10240
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1840, label %1796

; <label>:1796                                    ; preds = %1768
  %1797 = add i32 %43, 544
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = add i32 %1799, 0
  %1801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1801, %dx.types.Handle %96, float %1310, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1804 = extractvalue %dx.types.ResRet.f32 %1802, 3
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = and i32 %1806, 1048576
  %1808 = icmp ne i32 %1807, 0
  %1809 = and i32 %1806, 8192
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1826, label %1811

; <label>:1811                                    ; preds = %1796
  %1812 = extractvalue %dx.types.ResRet.f32 %1802, 2
  %1813 = select i1 %1808, float %1812, float %1803
  %1814 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1815 = select i1 %1808, float %1814, float %1803
  %1816 = add i32 %43, 112
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = lshr i32 %1818, 16
  %1820 = and i32 %1819, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = fmul fast float %1821, 0x3F80101020000000
  %1823 = fmul fast float %1822, %1815
  %1824 = fmul fast float %1822, %1803
  %1825 = fmul fast float %1822, %1813
  br label %1826

; <label>:1826                                    ; preds = %1811, %1796
  %1827 = phi float [ %1823, %1811 ], [ 0.000000e+00, %1796 ]
  %1828 = phi float [ %1824, %1811 ], [ 0.000000e+00, %1796 ]
  %1829 = phi float [ %1825, %1811 ], [ 0.000000e+00, %1796 ]
  %1830 = and i32 %1806, 2048
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1840, label %1832

; <label>:1832                                    ; preds = %1826
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = shl i32 %1834, 4
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = fmul fast float %1837, %1804
  %1839 = call float @dx.op.binary.f32(i32 35, float %1838, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1840

; <label>:1840                                    ; preds = %1832, %1826, %1768
  %1841 = phi float [ %1827, %1832 ], [ %1827, %1826 ], [ 0.000000e+00, %1768 ]
  %1842 = phi float [ %1828, %1832 ], [ %1828, %1826 ], [ 0.000000e+00, %1768 ]
  %1843 = phi float [ %1829, %1832 ], [ %1829, %1826 ], [ 0.000000e+00, %1768 ]
  %1844 = phi float [ %1839, %1832 ], [ 0x3F70101020000000, %1826 ], [ 0x3F70101020000000, %1768 ]
  %1845 = add i32 %43, 112
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 255
  %1849 = uitofp i32 %1848 to float
  %1850 = lshr i32 %1847, 8
  %1851 = and i32 %1850, 255
  %1852 = uitofp i32 %1851 to float
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1603, float %1604, float %1605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = fmul fast float %1852, %1853
  %1855 = fadd fast float %1854, %1849
  %1856 = fmul fast float %1855, 0x3F70101020000000
  %1857 = call float @dx.op.unary.f32(i32 7, float %1856)  ; Saturate(value)
  br i1 %1202, label %1858, label %1893

; <label>:1858                                    ; preds = %1840
  %1859 = fmul fast float %1844, 2.000000e+00
  %1860 = fcmp fast olt float %1789, 1.270000e+02
  %1861 = fcmp fast olt float %1790, 1.270000e+02
  %1862 = fcmp fast olt float %1791, 1.270000e+02
  %1863 = fmul fast float %1789, 0xBFF7154760000000
  %1864 = fmul fast float %1863, %1859
  %1865 = fmul fast float %1790, 0xBFF7154760000000
  %1866 = fmul fast float %1865, %1859
  %1867 = fmul fast float %1791, 0xBFF7154760000000
  %1868 = fmul fast float %1867, %1859
  %1869 = call float @dx.op.unary.f32(i32 21, float %1864)  ; Exp(value)
  %1870 = call float @dx.op.unary.f32(i32 21, float %1866)  ; Exp(value)
  %1871 = call float @dx.op.unary.f32(i32 21, float %1868)  ; Exp(value)
  %1872 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1873 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1874 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1875 = fadd fast float %1872, -1.000000e+00
  %1876 = select i1 %1860, float %1875, float -1.000000e+00
  %1877 = fadd fast float %1873, -1.000000e+00
  %1878 = select i1 %1861, float %1877, float -1.000000e+00
  %1879 = fadd fast float %1874, -1.000000e+00
  %1880 = select i1 %1862, float %1879, float -1.000000e+00
  %1881 = fmul fast float %1876, %1383
  %1882 = fmul fast float %1878, %1383
  %1883 = fmul fast float %1880, %1383
  %1884 = fadd fast float %1881, 1.000000e+00
  %1885 = fadd fast float %1882, 1.000000e+00
  %1886 = fadd fast float %1883, 1.000000e+00
  %1887 = fmul fast float %1884, %1183
  %1888 = fmul fast float %1885, %1184
  %1889 = fmul fast float %1886, %1185
  %1890 = fmul fast float %1884, %1186
  %1891 = fmul fast float %1885, %1187
  %1892 = fmul fast float %1886, %1188
  br label %1893

; <label>:1893                                    ; preds = %1858, %1840
  %1894 = phi float [ %1887, %1858 ], [ %1183, %1840 ]
  %1895 = phi float [ %1888, %1858 ], [ %1184, %1840 ]
  %1896 = phi float [ %1889, %1858 ], [ %1185, %1840 ]
  %1897 = phi float [ %1890, %1858 ], [ %1186, %1840 ]
  %1898 = phi float [ %1891, %1858 ], [ %1187, %1840 ]
  %1899 = phi float [ %1892, %1858 ], [ %1188, %1840 ]
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 3
  %1903 = icmp eq i32 %1902, 3
  br i1 %1903, label %1982, label %1904

; <label>:1904                                    ; preds = %1893
  %1905 = and i32 %1901, 16
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1906, float %1383, float 0.000000e+00
  %1908 = icmp eq i32 %1902, 0
  br i1 %1908, label %1909, label %1937

; <label>:1909                                    ; preds = %1904
  %1910 = and i32 %1901, 64
  %1911 = icmp ne i32 %1910, 0
  %1912 = select i1 %1911, float %1383, float 0.000000e+00
  %1913 = fsub fast float %1603, %1894
  %1914 = fsub fast float %1604, %1895
  %1915 = fsub fast float %1605, %1896
  %1916 = fmul fast float %1907, %1913
  %1917 = fmul fast float %1907, %1914
  %1918 = fmul fast float %1907, %1915
  %1919 = fadd fast float %1916, %1894
  %1920 = fadd fast float %1917, %1895
  %1921 = fadd fast float %1918, %1896
  %1922 = fsub fast float %1589, %1195
  %1923 = fmul fast float %1907, %1922
  %1924 = fadd fast float %1923, %1195
  %1925 = fsub fast float %1731, %1897
  %1926 = fsub fast float %1732, %1898
  %1927 = fsub fast float %1733, %1899
  %1928 = fmul fast float %1912, %1925
  %1929 = fmul fast float %1912, %1926
  %1930 = fmul fast float %1912, %1927
  %1931 = fadd fast float %1928, %1897
  %1932 = fadd fast float %1929, %1898
  %1933 = fadd fast float %1930, %1899
  %1934 = fsub fast float %1857, %1200
  %1935 = fmul fast float %1907, %1934
  %1936 = fadd fast float %1935, %1200
  br label %1982

; <label>:1937                                    ; preds = %1904
  %1938 = icmp eq i32 %1902, 1
  br i1 %1938, label %1939, label %1952

; <label>:1939                                    ; preds = %1937
  %1940 = fadd fast float %1603, -1.000000e+00
  %1941 = fadd fast float %1604, -1.000000e+00
  %1942 = fadd fast float %1605, -1.000000e+00
  %1943 = fmul fast float %1907, %1940
  %1944 = fmul fast float %1907, %1941
  %1945 = fmul fast float %1907, %1942
  %1946 = fadd fast float %1943, 1.000000e+00
  %1947 = fadd fast float %1944, 1.000000e+00
  %1948 = fadd fast float %1945, 1.000000e+00
  %1949 = fmul fast float %1946, %1894
  %1950 = fmul fast float %1947, %1895
  %1951 = fmul fast float %1948, %1896
  br label %1982

; <label>:1952                                    ; preds = %1937
  %1953 = icmp eq i32 %1902, 2
  br i1 %1953, label %1954, label %1982

; <label>:1954                                    ; preds = %1952
  %1955 = call float @dx.op.unary.f32(i32 24, float %1603)  ; Sqrt(value)
  %1956 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1957 = call float @dx.op.unary.f32(i32 24, float %1605)  ; Sqrt(value)
  %1958 = fadd fast float %1955, -5.000000e-01
  %1959 = fadd fast float %1956, -5.000000e-01
  %1960 = fadd fast float %1957, -5.000000e-01
  %1961 = fmul fast float %1958, %1907
  %1962 = fmul fast float %1959, %1907
  %1963 = fmul fast float %1960, %1907
  %1964 = fadd fast float %1961, 5.000000e-01
  %1965 = fadd fast float %1962, 5.000000e-01
  %1966 = fadd fast float %1963, 5.000000e-01
  %1967 = fmul fast float %1964, 2.000000e+00
  %1968 = fsub fast float 1.000000e+00, %1967
  %1969 = fmul fast float %1968, %1894
  %1970 = fadd fast float %1969, %1967
  %1971 = fmul fast float %1970, %1894
  %1972 = fmul fast float %1965, 2.000000e+00
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = fmul fast float %1973, %1895
  %1975 = fadd fast float %1974, %1972
  %1976 = fmul fast float %1975, %1895
  %1977 = fmul fast float %1966, 2.000000e+00
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1978, %1896
  %1980 = fadd fast float %1979, %1977
  %1981 = fmul fast float %1980, %1896
  br label %1982

; <label>:1982                                    ; preds = %1954, %1952, %1939, %1909, %1893
  %1983 = phi float [ %1894, %1893 ], [ %1971, %1954 ], [ %1894, %1952 ], [ %1949, %1939 ], [ %1919, %1909 ]
  %1984 = phi float [ %1895, %1893 ], [ %1976, %1954 ], [ %1895, %1952 ], [ %1950, %1939 ], [ %1920, %1909 ]
  %1985 = phi float [ %1896, %1893 ], [ %1981, %1954 ], [ %1896, %1952 ], [ %1951, %1939 ], [ %1921, %1909 ]
  %1986 = phi float [ %1897, %1893 ], [ %1897, %1954 ], [ %1897, %1952 ], [ %1897, %1939 ], [ %1931, %1909 ]
  %1987 = phi float [ %1898, %1893 ], [ %1898, %1954 ], [ %1898, %1952 ], [ %1898, %1939 ], [ %1932, %1909 ]
  %1988 = phi float [ %1899, %1893 ], [ %1899, %1954 ], [ %1899, %1952 ], [ %1899, %1939 ], [ %1933, %1909 ]
  %1989 = phi float [ %1195, %1893 ], [ %1195, %1954 ], [ %1195, %1952 ], [ %1195, %1939 ], [ %1924, %1909 ]
  %1990 = phi float [ %1200, %1893 ], [ %1200, %1954 ], [ %1200, %1952 ], [ %1200, %1939 ], [ %1936, %1909 ]
  %1991 = and i32 %1901, 12
  %1992 = icmp eq i32 %1991, 12
  br i1 %1992, label %2123, label %1993

; <label>:1993                                    ; preds = %1982
  %1994 = and i32 %1901, 2097184
  %1995 = icmp eq i32 %1994, 2097184
  %1996 = select i1 %1995, float %1383, float 0.000000e+00
  %1997 = and i32 %1901, 4194336
  %1998 = icmp eq i32 %1997, 4194336
  %1999 = select i1 %1998, float %1383, float 0.000000e+00
  %2000 = and i32 %1901, 8388640
  %2001 = icmp eq i32 %2000, 8388640
  %2002 = select i1 %2001, float %1383, float 0.000000e+00
  %2003 = and i32 %1901, 1024
  %2004 = icmp ne i32 %2003, 0
  %2005 = select i1 %2004, float %1383, float 0.000000e+00
  %2006 = and i32 %1901, 2048
  %2007 = icmp ne i32 %2006, 0
  %2008 = select i1 %2007, float %1383, float 0.000000e+00
  %2009 = and i32 %1901, 8192
  %2010 = icmp ne i32 %2009, 0
  %2011 = select i1 %2010, float %1383, float 0.000000e+00
  %2012 = icmp eq i32 %1991, 0
  br i1 %2012, label %2013, label %2047

; <label>:2013                                    ; preds = %1993
  %2014 = fsub fast float %1684, %1181
  %2015 = fsub fast float %1685, %1182
  %2016 = fmul fast float %1996, %2014
  %2017 = fmul fast float %1996, %2015
  %2018 = fadd fast float %2016, %1181
  %2019 = fadd fast float %2017, %1182
  %2020 = fsub fast float %1686, %1198
  %2021 = fmul fast float %1999, %2020
  %2022 = fadd fast float %2021, %1198
  %2023 = fsub fast float %1683, %1197
  %2024 = fmul fast float %2002, %2023
  %2025 = fadd fast float %2024, %1197
  %2026 = fsub fast float %1789, %1192
  %2027 = fsub fast float %1790, %1193
  %2028 = fsub fast float %1791, %1194
  %2029 = fmul fast float %2005, %2026
  %2030 = fmul fast float %2005, %2027
  %2031 = fmul fast float %2005, %2028
  %2032 = fadd fast float %2029, %1192
  %2033 = fadd fast float %2030, %1193
  %2034 = fadd fast float %2031, %1194
  %2035 = fsub fast float %1844, %1199
  %2036 = fmul fast float %2008, %2035
  %2037 = fadd fast float %2036, %1199
  %2038 = fsub fast float %1841, %1189
  %2039 = fsub fast float %1842, %1190
  %2040 = fsub fast float %1843, %1191
  %2041 = fmul fast float %2011, %2038
  %2042 = fmul fast float %2011, %2039
  %2043 = fmul fast float %2011, %2040
  %2044 = fadd fast float %2041, %1189
  %2045 = fadd fast float %2042, %1190
  %2046 = fadd fast float %2043, %1191
  br label %2123

; <label>:2047                                    ; preds = %1993
  %2048 = icmp eq i32 %1991, 4
  br i1 %2048, label %2049, label %2095

; <label>:2049                                    ; preds = %2047
  %2050 = fmul fast float %1996, %1684
  %2051 = fmul fast float %1996, %1685
  %2052 = fadd fast float %2050, %1181
  %2053 = fadd fast float %2051, %1182
  %2054 = call float @dx.op.binary.f32(i32 36, float %1198, float %1686)  ; FMin(a,b)
  %2055 = fsub fast float %2054, %1198
  %2056 = fmul fast float %2055, %1999
  %2057 = fadd fast float %2056, %1198
  %2058 = fadd fast float %1683, %1197
  %2059 = fmul fast float %2058, 0x3FF337FAE0000000
  %2060 = fmul fast float %1197, %1197
  %2061 = fmul fast float %1683, %1683
  %2062 = fadd fast float %2061, %2060
  %2063 = fmul fast float %2062, 0x3FE5152B00000000
  %2064 = fmul fast float %1197, 0xBFCC1F85E0000000
  %2065 = fmul fast float %2064, %1683
  %2066 = fadd fast float %2065, 0xBFE1363700000000
  %2067 = fadd fast float %2066, %2059
  %2068 = fsub fast float %2067, %2063
  %2069 = fmul fast float %2058, 0x3FBA6F0D00000000
  %2070 = fmul fast float %2062, 0x3FD0432880000000
  %2071 = fmul fast float %1197, 0xBFEF110800000000
  %2072 = fmul fast float %2071, %1683
  %2073 = fadd fast float %2072, 1.000000e+00
  %2074 = fsub fast float %2073, %2069
  %2075 = fadd fast float %2074, %2070
  %2076 = fdiv fast float %2068, %2075
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fsub fast float %2077, %1197
  %2079 = fmul fast float %2078, %2002
  %2080 = fadd fast float %2079, %1197
  %2081 = fmul fast float %2005, %1789
  %2082 = fmul fast float %2005, %1790
  %2083 = fmul fast float %2005, %1791
  %2084 = fadd fast float %2081, %1192
  %2085 = fadd fast float %2082, %1193
  %2086 = fadd fast float %2083, %1194
  %2087 = fmul fast float %2008, %1844
  %2088 = fadd fast float %2087, %1199
  %2089 = fmul fast float %2011, %1841
  %2090 = fmul fast float %2011, %1842
  %2091 = fmul fast float %2011, %1843
  %2092 = fadd fast float %2089, %1189
  %2093 = fadd fast float %2090, %1190
  %2094 = fadd fast float %2091, %1191
  br label %2123

; <label>:2095                                    ; preds = %2047
  %2096 = icmp eq i32 %1991, 8
  br i1 %2096, label %2097, label %2123

; <label>:2097                                    ; preds = %2095
  %2098 = fmul fast float %1996, %1684
  %2099 = fmul fast float %1996, %1685
  %2100 = fadd fast float %2098, %1181
  %2101 = fadd fast float %2099, %1182
  %2102 = call float @dx.op.binary.f32(i32 36, float %1198, float %1686)  ; FMin(a,b)
  %2103 = fsub fast float %2102, %1198
  %2104 = fmul fast float %2103, %1999
  %2105 = fadd fast float %2104, %1198
  %2106 = fsub fast float %1683, %1197
  %2107 = fmul fast float %2002, %2106
  %2108 = fadd fast float %2107, %1197
  %2109 = fmul fast float %2005, %1789
  %2110 = fmul fast float %2005, %1790
  %2111 = fmul fast float %2005, %1791
  %2112 = fadd fast float %2109, %1192
  %2113 = fadd fast float %2110, %1193
  %2114 = fadd fast float %2111, %1194
  %2115 = fmul fast float %2008, %1844
  %2116 = fadd fast float %2115, %1199
  %2117 = fmul fast float %2011, %1841
  %2118 = fmul fast float %2011, %1842
  %2119 = fmul fast float %2011, %1843
  %2120 = fadd fast float %2117, %1189
  %2121 = fadd fast float %2118, %1190
  %2122 = fadd fast float %2119, %1191
  br label %2123

; <label>:2123                                    ; preds = %2097, %2095, %2049, %2013, %1982, %1382, %1201, %1180
  %2124 = phi float [ %1181, %1982 ], [ %1181, %1382 ], [ %1181, %1180 ], [ %2100, %2097 ], [ %1181, %2095 ], [ %2052, %2049 ], [ %2018, %2013 ], [ %1181, %1201 ]
  %2125 = phi float [ %1182, %1982 ], [ %1182, %1382 ], [ %1182, %1180 ], [ %2101, %2097 ], [ %1182, %2095 ], [ %2053, %2049 ], [ %2019, %2013 ], [ %1182, %1201 ]
  %2126 = phi float [ %1983, %1982 ], [ %1183, %1382 ], [ %1183, %1180 ], [ %1983, %2097 ], [ %1983, %2095 ], [ %1983, %2049 ], [ %1983, %2013 ], [ %1183, %1201 ]
  %2127 = phi float [ %1984, %1982 ], [ %1184, %1382 ], [ %1184, %1180 ], [ %1984, %2097 ], [ %1984, %2095 ], [ %1984, %2049 ], [ %1984, %2013 ], [ %1184, %1201 ]
  %2128 = phi float [ %1985, %1982 ], [ %1185, %1382 ], [ %1185, %1180 ], [ %1985, %2097 ], [ %1985, %2095 ], [ %1985, %2049 ], [ %1985, %2013 ], [ %1185, %1201 ]
  %2129 = phi float [ %1986, %1982 ], [ %1186, %1382 ], [ %1186, %1180 ], [ %1986, %2097 ], [ %1986, %2095 ], [ %1986, %2049 ], [ %1986, %2013 ], [ %1186, %1201 ]
  %2130 = phi float [ %1987, %1982 ], [ %1187, %1382 ], [ %1187, %1180 ], [ %1987, %2097 ], [ %1987, %2095 ], [ %1987, %2049 ], [ %1987, %2013 ], [ %1187, %1201 ]
  %2131 = phi float [ %1988, %1982 ], [ %1188, %1382 ], [ %1188, %1180 ], [ %1988, %2097 ], [ %1988, %2095 ], [ %1988, %2049 ], [ %1988, %2013 ], [ %1188, %1201 ]
  %2132 = phi float [ %1189, %1982 ], [ %1189, %1382 ], [ %1189, %1180 ], [ %2120, %2097 ], [ %1189, %2095 ], [ %2092, %2049 ], [ %2044, %2013 ], [ %1189, %1201 ]
  %2133 = phi float [ %1190, %1982 ], [ %1190, %1382 ], [ %1190, %1180 ], [ %2121, %2097 ], [ %1190, %2095 ], [ %2093, %2049 ], [ %2045, %2013 ], [ %1190, %1201 ]
  %2134 = phi float [ %1191, %1982 ], [ %1191, %1382 ], [ %1191, %1180 ], [ %2122, %2097 ], [ %1191, %2095 ], [ %2094, %2049 ], [ %2046, %2013 ], [ %1191, %1201 ]
  %2135 = phi float [ %1192, %1982 ], [ %1192, %1382 ], [ %1192, %1180 ], [ %2112, %2097 ], [ %1192, %2095 ], [ %2084, %2049 ], [ %2032, %2013 ], [ %1192, %1201 ]
  %2136 = phi float [ %1193, %1982 ], [ %1193, %1382 ], [ %1193, %1180 ], [ %2113, %2097 ], [ %1193, %2095 ], [ %2085, %2049 ], [ %2033, %2013 ], [ %1193, %1201 ]
  %2137 = phi float [ %1194, %1982 ], [ %1194, %1382 ], [ %1194, %1180 ], [ %2114, %2097 ], [ %1194, %2095 ], [ %2086, %2049 ], [ %2034, %2013 ], [ %1194, %1201 ]
  %2138 = phi float [ %1989, %1982 ], [ %1195, %1382 ], [ %1195, %1180 ], [ %1989, %2097 ], [ %1989, %2095 ], [ %1989, %2049 ], [ %1989, %2013 ], [ %1195, %1201 ]
  %2139 = phi float [ %1197, %1982 ], [ %1197, %1382 ], [ %1197, %1180 ], [ %2108, %2097 ], [ %1197, %2095 ], [ %2080, %2049 ], [ %2025, %2013 ], [ %1197, %1201 ]
  %2140 = phi float [ %1198, %1982 ], [ %1198, %1382 ], [ %1198, %1180 ], [ %2105, %2097 ], [ %1198, %2095 ], [ %2057, %2049 ], [ %2022, %2013 ], [ %1198, %1201 ]
  %2141 = phi float [ %1199, %1982 ], [ %1199, %1382 ], [ %1199, %1180 ], [ %2116, %2097 ], [ %1199, %2095 ], [ %2088, %2049 ], [ %2037, %2013 ], [ %1199, %1201 ]
  %2142 = phi float [ %1990, %1982 ], [ %1200, %1382 ], [ %1200, %1180 ], [ %1990, %2097 ], [ %1990, %2095 ], [ %1990, %2049 ], [ %1990, %2013 ], [ %1200, %1201 ]
  br i1 %470, label %3065, label %2143

; <label>:2143                                    ; preds = %2123
  %2144 = icmp ult i32 %526, 3
  %2145 = add i32 %43, 56
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = add i32 %43, 60
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = or i32 %2150, %2147
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %3065, label %2153

; <label>:2153                                    ; preds = %2143
  %2154 = and i32 %2147, 262144
  %2155 = icmp ne i32 %2154, 0
  %2156 = select i1 %2155, float %49, float 1.000000e+00
  %2157 = select i1 %2155, float %50, float 0.000000e+00
  %2158 = select i1 %2155, float %51, float 0.000000e+00
  %2159 = select i1 %2155, float %52, float 1.000000e+00
  %2160 = select i1 %2155, float %53, float %81
  %2161 = select i1 %2155, float %54, float %82
  %2162 = add i32 %43, 316
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = lshr i32 %2164, 16
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = fmul fast float %2166, 0x3F50624DE0000000
  %2168 = add i32 %43, 120
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = lshr i32 %2170, 16
  %2172 = and i32 %2171, 255
  %2173 = lshr i32 %2170, 24
  %2174 = add i32 %43, 324
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 65535
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = lshr i32 %2176, 16
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = add i32 %43, 64
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = lshr i32 %2183, 22
  %2185 = shl nuw nsw i32 %2184, 5
  %2186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2185)  ; LegacyF16ToF32(value)
  %2187 = shl i32 %2183, 4
  %2188 = and i32 %2187, 32752
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = lshr i32 %2183, 7
  %2191 = and i32 %2190, 32752
  %2192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2191)  ; LegacyF16ToF32(value)
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2195 = fmul fast float %2194, 1.000000e+03
  %2196 = fmul fast float %420, %2195
  %2197 = call float @dx.op.unary.f32(i32 22, float %2196)  ; Frc(value)
  %2198 = fadd fast float %2197, %410
  %2199 = fmul fast float %421, %2195
  %2200 = call float @dx.op.unary.f32(i32 22, float %2199)  ; Frc(value)
  %2201 = fadd fast float %2200, %412
  %2202 = fmul fast float %2167, %2195
  %2203 = call float @dx.op.unary.f32(i32 22, float %2202)  ; Frc(value)
  %2204 = fmul fast float %2203, 0x401921FB60000000
  %2205 = fadd fast float %2204, %2186
  %2206 = call float @dx.op.unary.f32(i32 13, float %2205)  ; Sin(value)
  %2207 = call float @dx.op.unary.f32(i32 12, float %2205)  ; Cos(value)
  %2208 = fsub fast float -0.000000e+00, %2206
  %2209 = fadd fast float %2160, -5.000000e-01
  %2210 = fadd fast float %2161, -5.000000e-01
  %2211 = fmul fast float %2178, %2209
  %2212 = fmul fast float %2180, %2210
  %2213 = fadd fast float %2211, 5.000000e-01
  %2214 = fadd fast float %2212, 5.000000e-01
  %2215 = fmul fast float %2189, %2213
  %2216 = fmul fast float %2192, %2214
  %2217 = fmul fast float %2207, %2215
  %2218 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2216, float %2217)  ; FMad(a,b,c)
  %2219 = fmul fast float %2206, %2215
  %2220 = call float @dx.op.tertiary.f32(i32 46, float %2207, float %2216, float %2219)  ; FMad(a,b,c)
  %2221 = fadd fast float %2198, %2218
  %2222 = fadd fast float %2201, %2220
  %2223 = icmp ugt i32 %2172, 1
  %2224 = icmp ugt i32 %2170, 33554431
  %2225 = or i1 %2224, %2223
  br i1 %2225, label %2226, label %2251

; <label>:2226                                    ; preds = %2153
  %2227 = add i32 %43, 260
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = lshr i32 %2229, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = fmul fast float %2194, %2231
  %2233 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2234 = mul nuw nsw i32 %2172, %2173
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2233, %2235
  %2237 = call float @dx.op.unary.f32(i32 27, float %2236)  ; Round_ni(value)
  %2238 = fptoui float %2237 to i32
  %2239 = urem i32 %2238, %2172
  %2240 = udiv i32 %2238, %2173
  %2241 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2242 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2243 = uitofp i32 %2239 to float
  %2244 = uitofp i32 %2240 to float
  %2245 = fadd fast float %2241, %2243
  %2246 = fadd fast float %2242, %2244
  %2247 = uitofp i32 %2172 to float
  %2248 = uitofp i32 %2173 to float
  %2249 = fdiv fast float %2245, %2247
  %2250 = fdiv fast float %2246, %2248
  br label %2251

; <label>:2251                                    ; preds = %2226, %2153
  %2252 = phi float [ %2249, %2226 ], [ %2221, %2153 ]
  %2253 = phi float [ %2250, %2226 ], [ %2222, %2153 ]
  %2254 = and i32 %2147, 256
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2302, label %2256

; <label>:2256                                    ; preds = %2251
  %2257 = add i32 %43, 496
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = add i32 %2259, 0
  %2261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2261, %dx.types.Handle %96, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2263 = extractvalue %dx.types.ResRet.f32 %2262, 0
  %2264 = add i32 %43, 132
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = shl i32 %2266, 4
  %2268 = and i32 %2267, 32752
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = lshr i32 %2266, 7
  %2271 = and i32 %2270, 32752
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = fsub fast float 1.000000e+00, %522
  %2274 = call float @dx.op.binary.f32(i32 35, float %2273, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2275 = bitcast float %522 to i32
  %2276 = sitofp i32 %2275 to float
  %2277 = fadd fast float %2276, 0xC1CFBF8940000000
  %2278 = fmul fast float %2272, %2277
  %2279 = fadd fast float %2278, 0x41CFBF8940000000
  %2280 = fptosi float %2279 to i32
  %2281 = bitcast i32 %2280 to float
  %2282 = bitcast float %2274 to i32
  %2283 = sitofp i32 %2282 to float
  %2284 = fadd fast float %2283, 0xC1CFBF8940000000
  %2285 = fmul fast float %2284, %2272
  %2286 = fadd fast float %2285, 0x41CFBF8940000000
  %2287 = fptosi float %2286 to i32
  %2288 = bitcast i32 %2287 to float
  %2289 = fmul fast float %2281, %2269
  %2290 = fmul fast float %2288, %2269
  %2291 = fsub fast float %2274, %2289
  %2292 = fadd fast float %2290, %2274
  %2293 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2294 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2295 = fsub fast float %2263, %2293
  %2296 = fsub fast float %2294, %2293
  %2297 = bitcast float %2296 to i32
  %2298 = sub nsw i32 2129859010, %2297
  %2299 = bitcast i32 %2298 to float
  %2300 = fmul fast float %2299, %2295
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  br label %2302

; <label>:2302                                    ; preds = %2256, %2251
  %2303 = phi float [ %2301, %2256 ], [ %522, %2251 ]
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 128
  %2307 = icmp eq i32 %2306, 0
  br i1 %2307, label %2324, label %2308

; <label>:2308                                    ; preds = %2302
  %2309 = add i32 %43, 480
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = add i32 %2311, 0
  %2313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2314 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2313, %dx.types.Handle %96, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 524288
  %2319 = icmp ne i32 %2318, 0
  %2320 = fcmp fast ogt float %2315, 0x3FE0101020000000
  %2321 = select i1 %2320, float 1.000000e+00, float 0.000000e+00
  %2322 = select i1 %2319, float %2321, float %2315
  %2323 = fmul fast float %2322, %2303
  br label %2324

; <label>:2324                                    ; preds = %2308, %2302
  %2325 = phi float [ %2323, %2308 ], [ %2303, %2302 ]
  %2326 = fcmp fast ult float %2325, 0x3F70101020000000
  br i1 %2326, label %3065, label %2327

; <label>:2327                                    ; preds = %2324
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 16
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2530, label %2332

; <label>:2332                                    ; preds = %2327
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = add i32 %43, 432
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = add i32 %2337, 0
  %2339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2339, %dx.types.Handle %95, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.ResRet.f32 %2340, 3
  %2345 = and i32 %2334, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = lshr i32 %2334, 8
  %2348 = and i32 %2347, 255
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2344, %2346
  %2351 = fadd fast float %2350, %2349
  %2352 = fmul fast float %2351, 0x3F70101000000000
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 512
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2365, label %2357

; <label>:2357                                    ; preds = %2332
  %2358 = add i32 %43, 516
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %2360, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2362, %dx.types.Handle %96, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  br label %2365

; <label>:2365                                    ; preds = %2357, %2332
  %2366 = phi float [ %2364, %2357 ], [ 1.000000e+00, %2332 ]
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 33554432
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2477, label %2371

; <label>:2371                                    ; preds = %2365
  %2372 = add i32 %43, 256
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 65535
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = lshr i32 %2374, 16
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = add i32 %43, 260
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 65535
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = lshr i32 %2385, 24
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101020000000
  %2389 = and i32 %2385, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2390, 0x3F70101020000000
  %2392 = lshr i32 %2385, 8
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = lshr i32 %2385, 16
  %2397 = and i32 %2396, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = add i32 %43, 252
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = lshr i32 %2402, 24
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101020000000
  %2406 = and i32 %2402, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2407, 0x3F70101020000000
  %2409 = lshr i32 %2402, 8
  %2410 = and i32 %2409, 255
  %2411 = uitofp i32 %2410 to float
  %2412 = fmul fast float %2411, 0x3F70101020000000
  %2413 = lshr i32 %2402, 16
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101020000000
  %2417 = bitcast float %2341 to i32
  %2418 = ashr i32 %2417, 1
  %2419 = sub nsw i32 1597463174, %2418
  %2420 = bitcast i32 %2419 to float
  %2421 = fmul fast float %2341, 5.000000e-01
  %2422 = fmul fast float %2420, %2420
  %2423 = fmul fast float %2422, %2421
  %2424 = fsub fast float 1.500000e+00, %2423
  %2425 = fmul fast float %2420, %2341
  %2426 = fmul fast float %2425, %2424
  %2427 = bitcast float %2342 to i32
  %2428 = ashr i32 %2427, 1
  %2429 = sub nsw i32 1597463174, %2428
  %2430 = bitcast i32 %2429 to float
  %2431 = fmul fast float %2342, 5.000000e-01
  %2432 = fmul fast float %2430, %2430
  %2433 = fmul fast float %2432, %2431
  %2434 = fsub fast float 1.500000e+00, %2433
  %2435 = fmul fast float %2430, %2342
  %2436 = fmul fast float %2435, %2434
  %2437 = bitcast float %2343 to i32
  %2438 = ashr i32 %2437, 1
  %2439 = sub nsw i32 1597463174, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = fmul fast float %2343, 5.000000e-01
  %2442 = fmul fast float %2440, %2440
  %2443 = fmul fast float %2442, %2441
  %2444 = fsub fast float 1.500000e+00, %2443
  %2445 = fmul fast float %2440, %2343
  %2446 = fmul fast float %2445, %2444
  %2447 = fsub fast float %2426, %2408
  %2448 = fsub fast float %2436, %2412
  %2449 = fsub fast float %2446, %2416
  %2450 = fmul fast float %2447, %2376
  %2451 = fmul fast float %2448, %2378
  %2452 = fmul fast float %2449, %2383
  %2453 = fadd fast float %2450, %2391
  %2454 = fadd fast float %2451, %2395
  %2455 = fadd fast float %2452, %2399
  %2456 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2457 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = fmul fast float %2456, %2456
  %2460 = fmul fast float %2457, %2457
  %2461 = fmul fast float %2458, %2458
  %2462 = fsub fast float %2459, %2341
  %2463 = fsub fast float %2460, %2342
  %2464 = fsub fast float %2461, %2343
  %2465 = fmul fast float %2462, %2366
  %2466 = fmul fast float %2463, %2366
  %2467 = fmul fast float %2464, %2366
  %2468 = fadd fast float %2465, %2341
  %2469 = fadd fast float %2466, %2342
  %2470 = fadd fast float %2467, %2343
  %2471 = fadd fast float %2388, %2352
  %2472 = fsub fast float %2471, %2405
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2474 = fsub fast float %2473, %2352
  %2475 = fmul fast float %2474, %2366
  %2476 = fadd fast float %2475, %2352
  br label %2530

; <label>:2477                                    ; preds = %2365
  %2478 = and i32 %2368, 134217728
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2514, label %2480

; <label>:2480                                    ; preds = %2477
  %2481 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %2482 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2484 = fadd fast float %2481, -5.000000e-01
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fmul fast float %2484, %2366
  %2488 = fmul fast float %2485, %2366
  %2489 = fmul fast float %2486, %2366
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = call float @dx.op.unary.f32(i32 24, float %2341)  ; Sqrt(value)
  %2494 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2496 = fmul fast float %2490, 2.000000e+00
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = fmul fast float %2497, %2493
  %2499 = fadd fast float %2498, %2496
  %2500 = fmul fast float %2499, %2493
  %2501 = fmul fast float %2491, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2494
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2494
  %2506 = fmul fast float %2492, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2495
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2495
  %2511 = fmul fast float %2500, %2500
  %2512 = fmul fast float %2505, %2505
  %2513 = fmul fast float %2510, %2510
  br label %2530

; <label>:2514                                    ; preds = %2477
  %2515 = fmul fast float %397, %397
  %2516 = fmul fast float %401, %401
  %2517 = fmul fast float %405, %405
  %2518 = fadd fast float %2515, -1.000000e+00
  %2519 = fadd fast float %2516, -1.000000e+00
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fmul fast float %2366, %2518
  %2522 = fmul fast float %2366, %2519
  %2523 = fmul fast float %2366, %2520
  %2524 = fadd fast float %2521, 1.000000e+00
  %2525 = fadd fast float %2522, 1.000000e+00
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fmul fast float %2524, %2341
  %2528 = fmul fast float %2525, %2342
  %2529 = fmul fast float %2526, %2343
  br label %2530

; <label>:2530                                    ; preds = %2514, %2480, %2371, %2327
  %2531 = phi float [ %2476, %2371 ], [ %2352, %2480 ], [ %2352, %2514 ], [ 0x3FA23C0BE0000000, %2327 ]
  %2532 = phi float [ %2468, %2371 ], [ %2511, %2480 ], [ %2527, %2514 ], [ 1.000000e+00, %2327 ]
  %2533 = phi float [ %2469, %2371 ], [ %2512, %2480 ], [ %2528, %2514 ], [ 1.000000e+00, %2327 ]
  %2534 = phi float [ %2470, %2371 ], [ %2513, %2480 ], [ %2529, %2514 ], [ 1.000000e+00, %2327 ]
  %2535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.i32 %2535, 1
  %2537 = and i32 %2536, 1
  %2538 = icmp ne i32 %2537, 0
  %2539 = add i32 %43, 356
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 32
  %2543 = icmp ne i32 %2542, 0
  %2544 = and i1 %2538, %2543
  %2545 = select i1 %2544, float 1.000000e+00, float %2532
  %2546 = select i1 %2544, float 0x3FD3333340000000, float %2533
  %2547 = select i1 %2544, float 0x3FD3333340000000, float %2534
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 32
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2624, label %2552

; <label>:2552                                    ; preds = %2530
  %2553 = add i32 %43, 124
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = add i32 %43, 448
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = add i32 %2558, 0
  %2560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2560, %dx.types.Handle %95, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = extractvalue %dx.types.ResRet.f32 %2561, 3
  %2566 = and i32 %2555, 255
  %2567 = uitofp i32 %2566 to float
  %2568 = lshr i32 %2555, 8
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = lshr i32 %2555, 16
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = fmul fast float %2573, 0x3F70101000000000
  %2575 = fmul fast float %2562, %2567
  %2576 = fadd fast float %2575, %2570
  %2577 = fmul fast float %2576, 0x3F70101000000000
  %2578 = fadd fast float %2563, -5.000000e-01
  %2579 = fadd fast float %2565, -5.000000e-01
  %2580 = fmul fast float %2578, %2574
  %2581 = fmul fast float %2579, %2574
  %2582 = fadd fast float %2580, 5.000000e-01
  %2583 = fadd fast float %2581, 5.000000e-01
  %2584 = fmul fast float %2582, 2.000000e+00
  %2585 = fadd fast float %2584, -1.000000e+00
  %2586 = fmul fast float %2583, 2.000000e+00
  %2587 = fadd fast float %2586, -1.000000e+00
  %2588 = fadd fast float %2585, %2587
  %2589 = fmul fast float %2588, 5.000000e-01
  %2590 = fsub fast float %2585, %2587
  %2591 = fmul fast float %2590, 5.000000e-01
  %2592 = call float @dx.op.unary.f32(i32 6, float %2589)  ; FAbs(value)
  %2593 = fsub fast float 1.000000e+00, %2592
  %2594 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2595 = fsub fast float %2593, %2594
  %2596 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2591, float %2595, float %2589, float %2591, float %2595)  ; Dot3(ax,ay,az,bx,by,bz)
  %2597 = call float @dx.op.unary.f32(i32 25, float %2596)  ; Rsqrt(value)
  %2598 = fmul fast float %2589, %2597
  %2599 = fmul fast float %2591, %2597
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 67108864
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2620, label %2604

; <label>:2604                                    ; preds = %2552
  %2605 = add i32 %43, 312
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 65535
  %2609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2608)  ; LegacyF16ToF32(value)
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 65535
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = lshr i32 %2607, 16
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = fsub fast float %2577, %2615
  %2617 = fmul fast float %2616, %2609
  %2618 = fadd fast float %2617, %2613
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  br label %2620

; <label>:2620                                    ; preds = %2604, %2552
  %2621 = phi float [ %2619, %2604 ], [ %2577, %2552 ]
  %2622 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %2156, float %2157)  ; Dot2(ax,ay,bx,by)
  %2623 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %2158, float %2159)  ; Dot2(ax,ay,bx,by)
  br label %2624

; <label>:2624                                    ; preds = %2620, %2530
  %2625 = phi float [ %2621, %2620 ], [ 0x3FD6666660000000, %2530 ]
  %2626 = phi float [ %2622, %2620 ], [ 0.000000e+00, %2530 ]
  %2627 = phi float [ %2623, %2620 ], [ 0.000000e+00, %2530 ]
  %2628 = phi float [ %2564, %2620 ], [ 1.000000e+00, %2530 ]
  %2629 = add i32 %43, 192
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = lshr i32 %2631, 22
  %2633 = shl nuw nsw i32 %2632, 5
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 64
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2672, label %2639

; <label>:2639                                    ; preds = %2624
  %2640 = add i32 %43, 464
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = add i32 %2642, 0
  %2644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 131072
  %2648 = icmp eq i32 %2647, 0
  %2649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2644, %dx.types.Handle %95, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fmul fast float %2650, %385
  %2654 = fmul fast float %2651, %388
  %2655 = fmul fast float %2652, %391
  br i1 %2648, label %2662, label %2656

; <label>:2656                                    ; preds = %2639
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = fmul fast float %2658, %2653
  %2660 = fmul fast float %2658, %2654
  %2661 = fmul fast float %2658, %2655
  br label %2662

; <label>:2662                                    ; preds = %2656, %2639
  %2663 = phi float [ %2659, %2656 ], [ %2653, %2639 ]
  %2664 = phi float [ %2660, %2656 ], [ %2654, %2639 ]
  %2665 = phi float [ %2661, %2656 ], [ %2655, %2639 ]
  %2666 = fmul fast float %2663, %2634
  %2667 = select i1 %284, float %2666, float %2663
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2667, float %2664, float %2665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = select i1 %284, float 0.000000e+00, float %2663
  %2670 = select i1 %284, float %2668, float %2664
  %2671 = select i1 %284, float 0.000000e+00, float %2665
  br label %2672

; <label>:2672                                    ; preds = %2662, %2624
  %2673 = phi float [ %2669, %2662 ], [ 0.000000e+00, %2624 ]
  %2674 = phi float [ %2670, %2662 ], [ 0.000000e+00, %2624 ]
  %2675 = phi float [ %2671, %2662 ], [ 0.000000e+00, %2624 ]
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = and i32 %2677, 1024
  %2679 = icmp eq i32 %2678, 0
  br i1 %2679, label %2710, label %2680

; <label>:2680                                    ; preds = %2672
  %2681 = add i32 %43, 184
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = lshr i32 %2683, 8
  %2688 = and i32 %2687, 255
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = lshr i32 %2683, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = fmul fast float %2686, %2686
  %2696 = fmul fast float %2690, %2690
  %2697 = fmul fast float %2694, %2694
  %2698 = add i32 %43, 532
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = add i32 %2700, 0
  %2702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2702, %dx.types.Handle %96, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = fmul fast float %2695, %2704
  %2708 = fmul fast float %2696, %2705
  %2709 = fmul fast float %2697, %2706
  br label %2710

; <label>:2710                                    ; preds = %2680, %2672
  %2711 = phi float [ %2707, %2680 ], [ 0.000000e+00, %2672 ]
  %2712 = phi float [ %2708, %2680 ], [ 0.000000e+00, %2672 ]
  %2713 = phi float [ %2709, %2680 ], [ 0.000000e+00, %2672 ]
  %2714 = fcmp fast ogt float %2711, 0.000000e+00
  %2715 = fcmp fast ogt float %2712, 0.000000e+00
  %2716 = fcmp fast ogt float %2713, 0.000000e+00
  %2717 = call float @dx.op.unary.f32(i32 23, float %2711)  ; Log(value)
  %2718 = call float @dx.op.unary.f32(i32 23, float %2712)  ; Log(value)
  %2719 = call float @dx.op.unary.f32(i32 23, float %2713)  ; Log(value)
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = lshr i32 %2721, 7
  %2723 = and i32 %2722, 32752
  %2724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2723)  ; LegacyF16ToF32(value)
  %2725 = fmul fast float %2717, 0xBFE62E4300000000
  %2726 = fmul fast float %2725, %2724
  %2727 = fmul fast float %2718, 0xBFE62E4300000000
  %2728 = fmul fast float %2727, %2724
  %2729 = fmul fast float %2719, 0xBFE62E4300000000
  %2730 = fmul fast float %2729, %2724
  %2731 = select i1 %2714, float %2726, float 1.270000e+02
  %2732 = select i1 %2715, float %2728, float 1.270000e+02
  %2733 = select i1 %2716, float %2730, float 1.270000e+02
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 10240
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2782, label %2738

; <label>:2738                                    ; preds = %2710
  %2739 = add i32 %43, 548
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %2741, 0
  %2743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2743, %dx.types.Handle %96, float %2252, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 3
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 1048576
  %2750 = icmp ne i32 %2749, 0
  %2751 = and i32 %2748, 8192
  %2752 = icmp eq i32 %2751, 0
  br i1 %2752, label %2768, label %2753

; <label>:2753                                    ; preds = %2738
  %2754 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2755 = select i1 %2750, float %2754, float %2745
  %2756 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2757 = select i1 %2750, float %2756, float %2745
  %2758 = add i32 %43, 128
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = lshr i32 %2760, 16
  %2762 = and i32 %2761, 255
  %2763 = uitofp i32 %2762 to float
  %2764 = fmul fast float %2763, 0x3F80101020000000
  %2765 = fmul fast float %2764, %2757
  %2766 = fmul fast float %2764, %2745
  %2767 = fmul fast float %2764, %2755
  br label %2768

; <label>:2768                                    ; preds = %2753, %2738
  %2769 = phi float [ %2765, %2753 ], [ 0.000000e+00, %2738 ]
  %2770 = phi float [ %2766, %2753 ], [ 0.000000e+00, %2738 ]
  %2771 = phi float [ %2767, %2753 ], [ 0.000000e+00, %2738 ]
  %2772 = and i32 %2748, 2048
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2782, label %2774

; <label>:2774                                    ; preds = %2768
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = shl i32 %2776, 4
  %2778 = and i32 %2777, 32752
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = fmul fast float %2779, %2746
  %2781 = call float @dx.op.binary.f32(i32 35, float %2780, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2782

; <label>:2782                                    ; preds = %2774, %2768, %2710
  %2783 = phi float [ %2769, %2774 ], [ %2769, %2768 ], [ 0.000000e+00, %2710 ]
  %2784 = phi float [ %2770, %2774 ], [ %2770, %2768 ], [ 0.000000e+00, %2710 ]
  %2785 = phi float [ %2771, %2774 ], [ %2771, %2768 ], [ 0.000000e+00, %2710 ]
  %2786 = phi float [ %2781, %2774 ], [ 0x3F70101020000000, %2768 ], [ 0x3F70101020000000, %2710 ]
  %2787 = add i32 %43, 128
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = lshr i32 %2789, 8
  %2793 = and i32 %2792, 255
  %2794 = uitofp i32 %2793 to float
  %2795 = call float @dx.op.dot3.f32(i32 55, float %2545, float %2546, float %2547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2796 = fmul fast float %2794, %2795
  %2797 = fadd fast float %2796, %2791
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  br i1 %2144, label %2800, label %2835

; <label>:2800                                    ; preds = %2782
  %2801 = fmul fast float %2786, 2.000000e+00
  %2802 = fcmp fast olt float %2731, 1.270000e+02
  %2803 = fcmp fast olt float %2732, 1.270000e+02
  %2804 = fcmp fast olt float %2733, 1.270000e+02
  %2805 = fmul fast float %2731, 0xBFF7154760000000
  %2806 = fmul fast float %2805, %2801
  %2807 = fmul fast float %2732, 0xBFF7154760000000
  %2808 = fmul fast float %2807, %2801
  %2809 = fmul fast float %2733, 0xBFF7154760000000
  %2810 = fmul fast float %2809, %2801
  %2811 = call float @dx.op.unary.f32(i32 21, float %2806)  ; Exp(value)
  %2812 = call float @dx.op.unary.f32(i32 21, float %2808)  ; Exp(value)
  %2813 = call float @dx.op.unary.f32(i32 21, float %2810)  ; Exp(value)
  %2814 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2815 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2816 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2817 = fadd fast float %2814, -1.000000e+00
  %2818 = select i1 %2802, float %2817, float -1.000000e+00
  %2819 = fadd fast float %2815, -1.000000e+00
  %2820 = select i1 %2803, float %2819, float -1.000000e+00
  %2821 = fadd fast float %2816, -1.000000e+00
  %2822 = select i1 %2804, float %2821, float -1.000000e+00
  %2823 = fmul fast float %2818, %2325
  %2824 = fmul fast float %2820, %2325
  %2825 = fmul fast float %2822, %2325
  %2826 = fadd fast float %2823, 1.000000e+00
  %2827 = fadd fast float %2824, 1.000000e+00
  %2828 = fadd fast float %2825, 1.000000e+00
  %2829 = fmul fast float %2826, %2126
  %2830 = fmul fast float %2827, %2127
  %2831 = fmul fast float %2828, %2128
  %2832 = fmul fast float %2826, %2129
  %2833 = fmul fast float %2827, %2130
  %2834 = fmul fast float %2828, %2131
  br label %2835

; <label>:2835                                    ; preds = %2800, %2782
  %2836 = phi float [ %2829, %2800 ], [ %2126, %2782 ]
  %2837 = phi float [ %2830, %2800 ], [ %2127, %2782 ]
  %2838 = phi float [ %2831, %2800 ], [ %2128, %2782 ]
  %2839 = phi float [ %2832, %2800 ], [ %2129, %2782 ]
  %2840 = phi float [ %2833, %2800 ], [ %2130, %2782 ]
  %2841 = phi float [ %2834, %2800 ], [ %2131, %2782 ]
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 3
  %2845 = icmp eq i32 %2844, 3
  br i1 %2845, label %2924, label %2846

; <label>:2846                                    ; preds = %2835
  %2847 = and i32 %2843, 16
  %2848 = icmp ne i32 %2847, 0
  %2849 = select i1 %2848, float %2325, float 0.000000e+00
  %2850 = icmp eq i32 %2844, 0
  br i1 %2850, label %2851, label %2879

; <label>:2851                                    ; preds = %2846
  %2852 = and i32 %2843, 64
  %2853 = icmp ne i32 %2852, 0
  %2854 = select i1 %2853, float %2325, float 0.000000e+00
  %2855 = fsub fast float %2545, %2836
  %2856 = fsub fast float %2546, %2837
  %2857 = fsub fast float %2547, %2838
  %2858 = fmul fast float %2849, %2855
  %2859 = fmul fast float %2849, %2856
  %2860 = fmul fast float %2849, %2857
  %2861 = fadd fast float %2858, %2836
  %2862 = fadd fast float %2859, %2837
  %2863 = fadd fast float %2860, %2838
  %2864 = fsub fast float %2531, %2138
  %2865 = fmul fast float %2849, %2864
  %2866 = fadd fast float %2865, %2138
  %2867 = fsub fast float %2673, %2839
  %2868 = fsub fast float %2674, %2840
  %2869 = fsub fast float %2675, %2841
  %2870 = fmul fast float %2854, %2867
  %2871 = fmul fast float %2854, %2868
  %2872 = fmul fast float %2854, %2869
  %2873 = fadd fast float %2870, %2839
  %2874 = fadd fast float %2871, %2840
  %2875 = fadd fast float %2872, %2841
  %2876 = fsub fast float %2799, %2142
  %2877 = fmul fast float %2849, %2876
  %2878 = fadd fast float %2877, %2142
  br label %2924

; <label>:2879                                    ; preds = %2846
  %2880 = icmp eq i32 %2844, 1
  br i1 %2880, label %2881, label %2894

; <label>:2881                                    ; preds = %2879
  %2882 = fadd fast float %2545, -1.000000e+00
  %2883 = fadd fast float %2546, -1.000000e+00
  %2884 = fadd fast float %2547, -1.000000e+00
  %2885 = fmul fast float %2849, %2882
  %2886 = fmul fast float %2849, %2883
  %2887 = fmul fast float %2849, %2884
  %2888 = fadd fast float %2885, 1.000000e+00
  %2889 = fadd fast float %2886, 1.000000e+00
  %2890 = fadd fast float %2887, 1.000000e+00
  %2891 = fmul fast float %2888, %2836
  %2892 = fmul fast float %2889, %2837
  %2893 = fmul fast float %2890, %2838
  br label %2924

; <label>:2894                                    ; preds = %2879
  %2895 = icmp eq i32 %2844, 2
  br i1 %2895, label %2896, label %2924

; <label>:2896                                    ; preds = %2894
  %2897 = call float @dx.op.unary.f32(i32 24, float %2545)  ; Sqrt(value)
  %2898 = call float @dx.op.unary.f32(i32 24, float %2546)  ; Sqrt(value)
  %2899 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fadd fast float %2898, -5.000000e-01
  %2902 = fadd fast float %2899, -5.000000e-01
  %2903 = fmul fast float %2900, %2849
  %2904 = fmul fast float %2901, %2849
  %2905 = fmul fast float %2902, %2849
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = fadd fast float %2904, 5.000000e-01
  %2908 = fadd fast float %2905, 5.000000e-01
  %2909 = fmul fast float %2906, 2.000000e+00
  %2910 = fsub fast float 1.000000e+00, %2909
  %2911 = fmul fast float %2910, %2836
  %2912 = fadd fast float %2911, %2909
  %2913 = fmul fast float %2912, %2836
  %2914 = fmul fast float %2907, 2.000000e+00
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2915, %2837
  %2917 = fadd fast float %2916, %2914
  %2918 = fmul fast float %2917, %2837
  %2919 = fmul fast float %2908, 2.000000e+00
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, %2838
  %2922 = fadd fast float %2921, %2919
  %2923 = fmul fast float %2922, %2838
  br label %2924

; <label>:2924                                    ; preds = %2896, %2894, %2881, %2851, %2835
  %2925 = phi float [ %2836, %2835 ], [ %2913, %2896 ], [ %2836, %2894 ], [ %2891, %2881 ], [ %2861, %2851 ]
  %2926 = phi float [ %2837, %2835 ], [ %2918, %2896 ], [ %2837, %2894 ], [ %2892, %2881 ], [ %2862, %2851 ]
  %2927 = phi float [ %2838, %2835 ], [ %2923, %2896 ], [ %2838, %2894 ], [ %2893, %2881 ], [ %2863, %2851 ]
  %2928 = phi float [ %2839, %2835 ], [ %2839, %2896 ], [ %2839, %2894 ], [ %2839, %2881 ], [ %2873, %2851 ]
  %2929 = phi float [ %2840, %2835 ], [ %2840, %2896 ], [ %2840, %2894 ], [ %2840, %2881 ], [ %2874, %2851 ]
  %2930 = phi float [ %2841, %2835 ], [ %2841, %2896 ], [ %2841, %2894 ], [ %2841, %2881 ], [ %2875, %2851 ]
  %2931 = phi float [ %2138, %2835 ], [ %2138, %2896 ], [ %2138, %2894 ], [ %2138, %2881 ], [ %2866, %2851 ]
  %2932 = phi float [ %2142, %2835 ], [ %2142, %2896 ], [ %2142, %2894 ], [ %2142, %2881 ], [ %2878, %2851 ]
  %2933 = and i32 %2843, 12
  %2934 = icmp eq i32 %2933, 12
  br i1 %2934, label %3065, label %2935

; <label>:2935                                    ; preds = %2924
  %2936 = and i32 %2843, 2097184
  %2937 = icmp eq i32 %2936, 2097184
  %2938 = select i1 %2937, float %2325, float 0.000000e+00
  %2939 = and i32 %2843, 4194336
  %2940 = icmp eq i32 %2939, 4194336
  %2941 = select i1 %2940, float %2325, float 0.000000e+00
  %2942 = and i32 %2843, 8388640
  %2943 = icmp eq i32 %2942, 8388640
  %2944 = select i1 %2943, float %2325, float 0.000000e+00
  %2945 = and i32 %2843, 1024
  %2946 = icmp ne i32 %2945, 0
  %2947 = select i1 %2946, float %2325, float 0.000000e+00
  %2948 = and i32 %2843, 2048
  %2949 = icmp ne i32 %2948, 0
  %2950 = select i1 %2949, float %2325, float 0.000000e+00
  %2951 = and i32 %2843, 8192
  %2952 = icmp ne i32 %2951, 0
  %2953 = select i1 %2952, float %2325, float 0.000000e+00
  %2954 = icmp eq i32 %2933, 0
  br i1 %2954, label %2955, label %2989

; <label>:2955                                    ; preds = %2935
  %2956 = fsub fast float %2626, %2124
  %2957 = fsub fast float %2627, %2125
  %2958 = fmul fast float %2938, %2956
  %2959 = fmul fast float %2938, %2957
  %2960 = fadd fast float %2958, %2124
  %2961 = fadd fast float %2959, %2125
  %2962 = fsub fast float %2628, %2140
  %2963 = fmul fast float %2941, %2962
  %2964 = fadd fast float %2963, %2140
  %2965 = fsub fast float %2625, %2139
  %2966 = fmul fast float %2944, %2965
  %2967 = fadd fast float %2966, %2139
  %2968 = fsub fast float %2731, %2135
  %2969 = fsub fast float %2732, %2136
  %2970 = fsub fast float %2733, %2137
  %2971 = fmul fast float %2947, %2968
  %2972 = fmul fast float %2947, %2969
  %2973 = fmul fast float %2947, %2970
  %2974 = fadd fast float %2971, %2135
  %2975 = fadd fast float %2972, %2136
  %2976 = fadd fast float %2973, %2137
  %2977 = fsub fast float %2786, %2141
  %2978 = fmul fast float %2950, %2977
  %2979 = fadd fast float %2978, %2141
  %2980 = fsub fast float %2783, %2132
  %2981 = fsub fast float %2784, %2133
  %2982 = fsub fast float %2785, %2134
  %2983 = fmul fast float %2953, %2980
  %2984 = fmul fast float %2953, %2981
  %2985 = fmul fast float %2953, %2982
  %2986 = fadd fast float %2983, %2132
  %2987 = fadd fast float %2984, %2133
  %2988 = fadd fast float %2985, %2134
  br label %3065

; <label>:2989                                    ; preds = %2935
  %2990 = icmp eq i32 %2933, 4
  br i1 %2990, label %2991, label %3037

; <label>:2991                                    ; preds = %2989
  %2992 = fmul fast float %2938, %2626
  %2993 = fmul fast float %2938, %2627
  %2994 = fadd fast float %2992, %2124
  %2995 = fadd fast float %2993, %2125
  %2996 = call float @dx.op.binary.f32(i32 36, float %2140, float %2628)  ; FMin(a,b)
  %2997 = fsub fast float %2996, %2140
  %2998 = fmul fast float %2997, %2941
  %2999 = fadd fast float %2998, %2140
  %3000 = fadd fast float %2625, %2139
  %3001 = fmul fast float %3000, 0x3FF337FAE0000000
  %3002 = fmul fast float %2139, %2139
  %3003 = fmul fast float %2625, %2625
  %3004 = fadd fast float %3003, %3002
  %3005 = fmul fast float %3004, 0x3FE5152B00000000
  %3006 = fmul fast float %2139, 0xBFCC1F85E0000000
  %3007 = fmul fast float %3006, %2625
  %3008 = fadd fast float %3007, 0xBFE1363700000000
  %3009 = fadd fast float %3008, %3001
  %3010 = fsub fast float %3009, %3005
  %3011 = fmul fast float %3000, 0x3FBA6F0D00000000
  %3012 = fmul fast float %3004, 0x3FD0432880000000
  %3013 = fmul fast float %2139, 0xBFEF110800000000
  %3014 = fmul fast float %3013, %2625
  %3015 = fadd fast float %3014, 1.000000e+00
  %3016 = fsub fast float %3015, %3011
  %3017 = fadd fast float %3016, %3012
  %3018 = fdiv fast float %3010, %3017
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = fsub fast float %3019, %2139
  %3021 = fmul fast float %3020, %2944
  %3022 = fadd fast float %3021, %2139
  %3023 = fmul fast float %2947, %2731
  %3024 = fmul fast float %2947, %2732
  %3025 = fmul fast float %2947, %2733
  %3026 = fadd fast float %3023, %2135
  %3027 = fadd fast float %3024, %2136
  %3028 = fadd fast float %3025, %2137
  %3029 = fmul fast float %2950, %2786
  %3030 = fadd fast float %3029, %2141
  %3031 = fmul fast float %2953, %2783
  %3032 = fmul fast float %2953, %2784
  %3033 = fmul fast float %2953, %2785
  %3034 = fadd fast float %3031, %2132
  %3035 = fadd fast float %3032, %2133
  %3036 = fadd fast float %3033, %2134
  br label %3065

; <label>:3037                                    ; preds = %2989
  %3038 = icmp eq i32 %2933, 8
  br i1 %3038, label %3039, label %3065

; <label>:3039                                    ; preds = %3037
  %3040 = fmul fast float %2938, %2626
  %3041 = fmul fast float %2938, %2627
  %3042 = fadd fast float %3040, %2124
  %3043 = fadd fast float %3041, %2125
  %3044 = call float @dx.op.binary.f32(i32 36, float %2140, float %2628)  ; FMin(a,b)
  %3045 = fsub fast float %3044, %2140
  %3046 = fmul fast float %3045, %2941
  %3047 = fadd fast float %3046, %2140
  %3048 = fsub fast float %2625, %2139
  %3049 = fmul fast float %2944, %3048
  %3050 = fadd fast float %3049, %2139
  %3051 = fmul fast float %2947, %2731
  %3052 = fmul fast float %2947, %2732
  %3053 = fmul fast float %2947, %2733
  %3054 = fadd fast float %3051, %2135
  %3055 = fadd fast float %3052, %2136
  %3056 = fadd fast float %3053, %2137
  %3057 = fmul fast float %2950, %2786
  %3058 = fadd fast float %3057, %2141
  %3059 = fmul fast float %2953, %2783
  %3060 = fmul fast float %2953, %2784
  %3061 = fmul fast float %2953, %2785
  %3062 = fadd fast float %3059, %2132
  %3063 = fadd fast float %3060, %2133
  %3064 = fadd fast float %3061, %2134
  br label %3065

; <label>:3065                                    ; preds = %3039, %3037, %2991, %2955, %2924, %2324, %2143, %2123
  %3066 = phi float [ %2124, %2924 ], [ %2124, %2324 ], [ %2124, %2123 ], [ %3042, %3039 ], [ %2124, %3037 ], [ %2994, %2991 ], [ %2960, %2955 ], [ %2124, %2143 ]
  %3067 = phi float [ %2125, %2924 ], [ %2125, %2324 ], [ %2125, %2123 ], [ %3043, %3039 ], [ %2125, %3037 ], [ %2995, %2991 ], [ %2961, %2955 ], [ %2125, %2143 ]
  %3068 = phi float [ %2925, %2924 ], [ %2126, %2324 ], [ %2126, %2123 ], [ %2925, %3039 ], [ %2925, %3037 ], [ %2925, %2991 ], [ %2925, %2955 ], [ %2126, %2143 ]
  %3069 = phi float [ %2926, %2924 ], [ %2127, %2324 ], [ %2127, %2123 ], [ %2926, %3039 ], [ %2926, %3037 ], [ %2926, %2991 ], [ %2926, %2955 ], [ %2127, %2143 ]
  %3070 = phi float [ %2927, %2924 ], [ %2128, %2324 ], [ %2128, %2123 ], [ %2927, %3039 ], [ %2927, %3037 ], [ %2927, %2991 ], [ %2927, %2955 ], [ %2128, %2143 ]
  %3071 = phi float [ %2928, %2924 ], [ %2129, %2324 ], [ %2129, %2123 ], [ %2928, %3039 ], [ %2928, %3037 ], [ %2928, %2991 ], [ %2928, %2955 ], [ %2129, %2143 ]
  %3072 = phi float [ %2929, %2924 ], [ %2130, %2324 ], [ %2130, %2123 ], [ %2929, %3039 ], [ %2929, %3037 ], [ %2929, %2991 ], [ %2929, %2955 ], [ %2130, %2143 ]
  %3073 = phi float [ %2930, %2924 ], [ %2131, %2324 ], [ %2131, %2123 ], [ %2930, %3039 ], [ %2930, %3037 ], [ %2930, %2991 ], [ %2930, %2955 ], [ %2131, %2143 ]
  %3074 = phi float [ %2132, %2924 ], [ %2132, %2324 ], [ %2132, %2123 ], [ %3062, %3039 ], [ %2132, %3037 ], [ %3034, %2991 ], [ %2986, %2955 ], [ %2132, %2143 ]
  %3075 = phi float [ %2133, %2924 ], [ %2133, %2324 ], [ %2133, %2123 ], [ %3063, %3039 ], [ %2133, %3037 ], [ %3035, %2991 ], [ %2987, %2955 ], [ %2133, %2143 ]
  %3076 = phi float [ %2134, %2924 ], [ %2134, %2324 ], [ %2134, %2123 ], [ %3064, %3039 ], [ %2134, %3037 ], [ %3036, %2991 ], [ %2988, %2955 ], [ %2134, %2143 ]
  %3077 = phi float [ %2135, %2924 ], [ %2135, %2324 ], [ %2135, %2123 ], [ %3054, %3039 ], [ %2135, %3037 ], [ %3026, %2991 ], [ %2974, %2955 ], [ %2135, %2143 ]
  %3078 = phi float [ %2136, %2924 ], [ %2136, %2324 ], [ %2136, %2123 ], [ %3055, %3039 ], [ %2136, %3037 ], [ %3027, %2991 ], [ %2975, %2955 ], [ %2136, %2143 ]
  %3079 = phi float [ %2137, %2924 ], [ %2137, %2324 ], [ %2137, %2123 ], [ %3056, %3039 ], [ %2137, %3037 ], [ %3028, %2991 ], [ %2976, %2955 ], [ %2137, %2143 ]
  %3080 = phi float [ %2931, %2924 ], [ %2138, %2324 ], [ %2138, %2123 ], [ %2931, %3039 ], [ %2931, %3037 ], [ %2931, %2991 ], [ %2931, %2955 ], [ %2138, %2143 ]
  %3081 = phi float [ %2139, %2924 ], [ %2139, %2324 ], [ %2139, %2123 ], [ %3050, %3039 ], [ %2139, %3037 ], [ %3022, %2991 ], [ %2967, %2955 ], [ %2139, %2143 ]
  %3082 = phi float [ %2140, %2924 ], [ %2140, %2324 ], [ %2140, %2123 ], [ %3047, %3039 ], [ %2140, %3037 ], [ %2999, %2991 ], [ %2964, %2955 ], [ %2140, %2143 ]
  %3083 = phi float [ %2141, %2924 ], [ %2141, %2324 ], [ %2141, %2123 ], [ %3058, %3039 ], [ %2141, %3037 ], [ %3030, %2991 ], [ %2979, %2955 ], [ %2141, %2143 ]
  %3084 = phi float [ %2932, %2924 ], [ %2142, %2324 ], [ %2142, %2123 ], [ %2932, %3039 ], [ %2932, %3037 ], [ %2932, %2991 ], [ %2932, %2955 ], [ %2142, %2143 ]
  br i1 %472, label %4007, label %3085

; <label>:3085                                    ; preds = %3065
  %3086 = icmp ult i32 %526, 4
  %3087 = add i32 %43, 72
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = add i32 %43, 76
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = or i32 %3092, %3089
  %3094 = icmp eq i32 %3093, 0
  br i1 %3094, label %4007, label %3095

; <label>:3095                                    ; preds = %3085
  %3096 = and i32 %3089, 262144
  %3097 = icmp ne i32 %3096, 0
  %3098 = select i1 %3097, float %49, float 1.000000e+00
  %3099 = select i1 %3097, float %50, float 0.000000e+00
  %3100 = select i1 %3097, float %51, float 0.000000e+00
  %3101 = select i1 %3097, float %52, float 1.000000e+00
  %3102 = select i1 %3097, float %53, float %81
  %3103 = select i1 %3097, float %54, float %82
  %3104 = add i32 %43, 332
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = lshr i32 %3106, 16
  %3108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3107)  ; LegacyF16ToF32(value)
  %3109 = fmul fast float %3108, 0x3F50624DE0000000
  %3110 = add i32 %43, 136
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = lshr i32 %3112, 16
  %3114 = and i32 %3113, 255
  %3115 = lshr i32 %3112, 24
  %3116 = add i32 %43, 340
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 65535
  %3120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3119)  ; LegacyF16ToF32(value)
  %3121 = lshr i32 %3118, 16
  %3122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3121)  ; LegacyF16ToF32(value)
  %3123 = add i32 %43, 80
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = lshr i32 %3125, 22
  %3127 = shl nuw nsw i32 %3126, 5
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = shl i32 %3125, 4
  %3130 = and i32 %3129, 32752
  %3131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3130)  ; LegacyF16ToF32(value)
  %3132 = lshr i32 %3125, 7
  %3133 = and i32 %3132, 32752
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3137 = fmul fast float %3136, 1.000000e+03
  %3138 = fmul fast float %462, %3137
  %3139 = call float @dx.op.unary.f32(i32 22, float %3138)  ; Frc(value)
  %3140 = fadd fast float %3139, %452
  %3141 = fmul fast float %463, %3137
  %3142 = call float @dx.op.unary.f32(i32 22, float %3141)  ; Frc(value)
  %3143 = fadd fast float %3142, %454
  %3144 = fmul fast float %3109, %3137
  %3145 = call float @dx.op.unary.f32(i32 22, float %3144)  ; Frc(value)
  %3146 = fmul fast float %3145, 0x401921FB60000000
  %3147 = fadd fast float %3146, %3128
  %3148 = call float @dx.op.unary.f32(i32 13, float %3147)  ; Sin(value)
  %3149 = call float @dx.op.unary.f32(i32 12, float %3147)  ; Cos(value)
  %3150 = fsub fast float -0.000000e+00, %3148
  %3151 = fadd fast float %3102, -5.000000e-01
  %3152 = fadd fast float %3103, -5.000000e-01
  %3153 = fmul fast float %3120, %3151
  %3154 = fmul fast float %3122, %3152
  %3155 = fadd fast float %3153, 5.000000e-01
  %3156 = fadd fast float %3154, 5.000000e-01
  %3157 = fmul fast float %3131, %3155
  %3158 = fmul fast float %3134, %3156
  %3159 = fmul fast float %3149, %3157
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3150, float %3158, float %3159)  ; FMad(a,b,c)
  %3161 = fmul fast float %3148, %3157
  %3162 = call float @dx.op.tertiary.f32(i32 46, float %3149, float %3158, float %3161)  ; FMad(a,b,c)
  %3163 = fadd fast float %3140, %3160
  %3164 = fadd fast float %3143, %3162
  %3165 = icmp ugt i32 %3114, 1
  %3166 = icmp ugt i32 %3112, 33554431
  %3167 = or i1 %3166, %3165
  br i1 %3167, label %3168, label %3193

; <label>:3168                                    ; preds = %3095
  %3169 = add i32 %43, 276
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = lshr i32 %3171, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = fmul fast float %3136, %3173
  %3175 = call float @dx.op.unary.f32(i32 22, float %3174)  ; Frc(value)
  %3176 = mul nuw nsw i32 %3114, %3115
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3175, %3177
  %3179 = call float @dx.op.unary.f32(i32 27, float %3178)  ; Round_ni(value)
  %3180 = fptoui float %3179 to i32
  %3181 = urem i32 %3180, %3114
  %3182 = udiv i32 %3180, %3115
  %3183 = call float @dx.op.unary.f32(i32 22, float %3163)  ; Frc(value)
  %3184 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3185 = uitofp i32 %3181 to float
  %3186 = uitofp i32 %3182 to float
  %3187 = fadd fast float %3183, %3185
  %3188 = fadd fast float %3184, %3186
  %3189 = uitofp i32 %3114 to float
  %3190 = uitofp i32 %3115 to float
  %3191 = fdiv fast float %3187, %3189
  %3192 = fdiv fast float %3188, %3190
  br label %3193

; <label>:3193                                    ; preds = %3168, %3095
  %3194 = phi float [ %3191, %3168 ], [ %3163, %3095 ]
  %3195 = phi float [ %3192, %3168 ], [ %3164, %3095 ]
  %3196 = and i32 %3089, 256
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3244, label %3198

; <label>:3198                                    ; preds = %3193
  %3199 = add i32 %43, 500
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = add i32 %3201, 0
  %3203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3203, %dx.types.Handle %96, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = add i32 %43, 148
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = shl i32 %3208, 4
  %3210 = and i32 %3209, 32752
  %3211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3210)  ; LegacyF16ToF32(value)
  %3212 = lshr i32 %3208, 7
  %3213 = and i32 %3212, 32752
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = fsub fast float 1.000000e+00, %521
  %3216 = call float @dx.op.binary.f32(i32 35, float %3215, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3217 = bitcast float %521 to i32
  %3218 = sitofp i32 %3217 to float
  %3219 = fadd fast float %3218, 0xC1CFBF8940000000
  %3220 = fmul fast float %3214, %3219
  %3221 = fadd fast float %3220, 0x41CFBF8940000000
  %3222 = fptosi float %3221 to i32
  %3223 = bitcast i32 %3222 to float
  %3224 = bitcast float %3216 to i32
  %3225 = sitofp i32 %3224 to float
  %3226 = fadd fast float %3225, 0xC1CFBF8940000000
  %3227 = fmul fast float %3226, %3214
  %3228 = fadd fast float %3227, 0x41CFBF8940000000
  %3229 = fptosi float %3228 to i32
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3223, %3211
  %3232 = fmul fast float %3230, %3211
  %3233 = fsub fast float %3216, %3231
  %3234 = fadd fast float %3232, %3216
  %3235 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3236 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3237 = fsub fast float %3205, %3235
  %3238 = fsub fast float %3236, %3235
  %3239 = bitcast float %3238 to i32
  %3240 = sub nsw i32 2129859010, %3239
  %3241 = bitcast i32 %3240 to float
  %3242 = fmul fast float %3241, %3237
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  br label %3244

; <label>:3244                                    ; preds = %3198, %3193
  %3245 = phi float [ %3243, %3198 ], [ %521, %3193 ]
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 128
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3266, label %3250

; <label>:3250                                    ; preds = %3244
  %3251 = add i32 %43, 484
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = add i32 %3253, 0
  %3255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3255, %dx.types.Handle %96, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = and i32 %3259, 524288
  %3261 = icmp ne i32 %3260, 0
  %3262 = fcmp fast ogt float %3257, 0x3FE0101020000000
  %3263 = select i1 %3262, float 1.000000e+00, float 0.000000e+00
  %3264 = select i1 %3261, float %3263, float %3257
  %3265 = fmul fast float %3264, %3245
  br label %3266

; <label>:3266                                    ; preds = %3250, %3244
  %3267 = phi float [ %3265, %3250 ], [ %3245, %3244 ]
  %3268 = fcmp fast ult float %3267, 0x3F70101020000000
  br i1 %3268, label %4007, label %3269

; <label>:3269                                    ; preds = %3266
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 16
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %3472, label %3274

; <label>:3274                                    ; preds = %3269
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = add i32 %43, 436
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = add i32 %3279, 0
  %3281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3281, %dx.types.Handle %95, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3287 = and i32 %3276, 255
  %3288 = uitofp i32 %3287 to float
  %3289 = lshr i32 %3276, 8
  %3290 = and i32 %3289, 255
  %3291 = uitofp i32 %3290 to float
  %3292 = fmul fast float %3286, %3288
  %3293 = fadd fast float %3292, %3291
  %3294 = fmul fast float %3293, 0x3F70101000000000
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = and i32 %3296, 512
  %3298 = icmp eq i32 %3297, 0
  br i1 %3298, label %3307, label %3299

; <label>:3299                                    ; preds = %3274
  %3300 = add i32 %43, 520
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = add i32 %3302, 0
  %3304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3304, %dx.types.Handle %96, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  br label %3307

; <label>:3307                                    ; preds = %3299, %3274
  %3308 = phi float [ %3306, %3299 ], [ 1.000000e+00, %3274 ]
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 33554432
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3419, label %3313

; <label>:3313                                    ; preds = %3307
  %3314 = add i32 %43, 272
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 65535
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = lshr i32 %3316, 16
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = add i32 %43, 276
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = and i32 %3323, 65535
  %3325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3324)  ; LegacyF16ToF32(value)
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = lshr i32 %3327, 24
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3329, 0x3F70101020000000
  %3331 = and i32 %3327, 255
  %3332 = uitofp i32 %3331 to float
  %3333 = fmul fast float %3332, 0x3F70101020000000
  %3334 = lshr i32 %3327, 8
  %3335 = and i32 %3334, 255
  %3336 = uitofp i32 %3335 to float
  %3337 = fmul fast float %3336, 0x3F70101020000000
  %3338 = lshr i32 %3327, 16
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 0x3F70101020000000
  %3342 = add i32 %43, 268
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = lshr i32 %3344, 24
  %3346 = uitofp i32 %3345 to float
  %3347 = fmul fast float %3346, 0x3F70101020000000
  %3348 = and i32 %3344, 255
  %3349 = uitofp i32 %3348 to float
  %3350 = fmul fast float %3349, 0x3F70101020000000
  %3351 = lshr i32 %3344, 8
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = fmul fast float %3353, 0x3F70101020000000
  %3355 = lshr i32 %3344, 16
  %3356 = and i32 %3355, 255
  %3357 = uitofp i32 %3356 to float
  %3358 = fmul fast float %3357, 0x3F70101020000000
  %3359 = bitcast float %3283 to i32
  %3360 = ashr i32 %3359, 1
  %3361 = sub nsw i32 1597463174, %3360
  %3362 = bitcast i32 %3361 to float
  %3363 = fmul fast float %3283, 5.000000e-01
  %3364 = fmul fast float %3362, %3362
  %3365 = fmul fast float %3364, %3363
  %3366 = fsub fast float 1.500000e+00, %3365
  %3367 = fmul fast float %3362, %3283
  %3368 = fmul fast float %3367, %3366
  %3369 = bitcast float %3284 to i32
  %3370 = ashr i32 %3369, 1
  %3371 = sub nsw i32 1597463174, %3370
  %3372 = bitcast i32 %3371 to float
  %3373 = fmul fast float %3284, 5.000000e-01
  %3374 = fmul fast float %3372, %3372
  %3375 = fmul fast float %3374, %3373
  %3376 = fsub fast float 1.500000e+00, %3375
  %3377 = fmul fast float %3372, %3284
  %3378 = fmul fast float %3377, %3376
  %3379 = bitcast float %3285 to i32
  %3380 = ashr i32 %3379, 1
  %3381 = sub nsw i32 1597463174, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3285, 5.000000e-01
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3384, %3383
  %3386 = fsub fast float 1.500000e+00, %3385
  %3387 = fmul fast float %3382, %3285
  %3388 = fmul fast float %3387, %3386
  %3389 = fsub fast float %3368, %3350
  %3390 = fsub fast float %3378, %3354
  %3391 = fsub fast float %3388, %3358
  %3392 = fmul fast float %3389, %3318
  %3393 = fmul fast float %3390, %3320
  %3394 = fmul fast float %3391, %3325
  %3395 = fadd fast float %3392, %3333
  %3396 = fadd fast float %3393, %3337
  %3397 = fadd fast float %3394, %3341
  %3398 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  %3399 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3400 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3401 = fmul fast float %3398, %3398
  %3402 = fmul fast float %3399, %3399
  %3403 = fmul fast float %3400, %3400
  %3404 = fsub fast float %3401, %3283
  %3405 = fsub fast float %3402, %3284
  %3406 = fsub fast float %3403, %3285
  %3407 = fmul fast float %3404, %3308
  %3408 = fmul fast float %3405, %3308
  %3409 = fmul fast float %3406, %3308
  %3410 = fadd fast float %3407, %3283
  %3411 = fadd fast float %3408, %3284
  %3412 = fadd fast float %3409, %3285
  %3413 = fadd fast float %3330, %3294
  %3414 = fsub fast float %3413, %3347
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fsub fast float %3415, %3294
  %3417 = fmul fast float %3416, %3308
  %3418 = fadd fast float %3417, %3294
  br label %3472

; <label>:3419                                    ; preds = %3307
  %3420 = and i32 %3310, 134217728
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3456, label %3422

; <label>:3422                                    ; preds = %3419
  %3423 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %3424 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %3425 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %3426 = fadd fast float %3423, -5.000000e-01
  %3427 = fadd fast float %3424, -5.000000e-01
  %3428 = fadd fast float %3425, -5.000000e-01
  %3429 = fmul fast float %3426, %3308
  %3430 = fmul fast float %3427, %3308
  %3431 = fmul fast float %3428, %3308
  %3432 = fadd fast float %3429, 5.000000e-01
  %3433 = fadd fast float %3430, 5.000000e-01
  %3434 = fadd fast float %3431, 5.000000e-01
  %3435 = call float @dx.op.unary.f32(i32 24, float %3283)  ; Sqrt(value)
  %3436 = call float @dx.op.unary.f32(i32 24, float %3284)  ; Sqrt(value)
  %3437 = call float @dx.op.unary.f32(i32 24, float %3285)  ; Sqrt(value)
  %3438 = fmul fast float %3432, 2.000000e+00
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = fmul fast float %3439, %3435
  %3441 = fadd fast float %3440, %3438
  %3442 = fmul fast float %3441, %3435
  %3443 = fmul fast float %3433, 2.000000e+00
  %3444 = fsub fast float 1.000000e+00, %3443
  %3445 = fmul fast float %3444, %3436
  %3446 = fadd fast float %3445, %3443
  %3447 = fmul fast float %3446, %3436
  %3448 = fmul fast float %3434, 2.000000e+00
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = fmul fast float %3449, %3437
  %3451 = fadd fast float %3450, %3448
  %3452 = fmul fast float %3451, %3437
  %3453 = fmul fast float %3442, %3442
  %3454 = fmul fast float %3447, %3447
  %3455 = fmul fast float %3452, %3452
  br label %3472

; <label>:3456                                    ; preds = %3419
  %3457 = fmul fast float %439, %439
  %3458 = fmul fast float %443, %443
  %3459 = fmul fast float %447, %447
  %3460 = fadd fast float %3457, -1.000000e+00
  %3461 = fadd fast float %3458, -1.000000e+00
  %3462 = fadd fast float %3459, -1.000000e+00
  %3463 = fmul fast float %3308, %3460
  %3464 = fmul fast float %3308, %3461
  %3465 = fmul fast float %3308, %3462
  %3466 = fadd fast float %3463, 1.000000e+00
  %3467 = fadd fast float %3464, 1.000000e+00
  %3468 = fadd fast float %3465, 1.000000e+00
  %3469 = fmul fast float %3466, %3283
  %3470 = fmul fast float %3467, %3284
  %3471 = fmul fast float %3468, %3285
  br label %3472

; <label>:3472                                    ; preds = %3456, %3422, %3313, %3269
  %3473 = phi float [ %3418, %3313 ], [ %3294, %3422 ], [ %3294, %3456 ], [ 0x3FA23C0BE0000000, %3269 ]
  %3474 = phi float [ %3410, %3313 ], [ %3453, %3422 ], [ %3469, %3456 ], [ 1.000000e+00, %3269 ]
  %3475 = phi float [ %3411, %3313 ], [ %3454, %3422 ], [ %3470, %3456 ], [ 1.000000e+00, %3269 ]
  %3476 = phi float [ %3412, %3313 ], [ %3455, %3422 ], [ %3471, %3456 ], [ 1.000000e+00, %3269 ]
  %3477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.i32 %3477, 1
  %3479 = and i32 %3478, 1
  %3480 = icmp ne i32 %3479, 0
  %3481 = add i32 %43, 356
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 32
  %3485 = icmp ne i32 %3484, 0
  %3486 = and i1 %3480, %3485
  %3487 = select i1 %3486, float 1.000000e+00, float %3474
  %3488 = select i1 %3486, float 0x3FD3333340000000, float %3475
  %3489 = select i1 %3486, float 0x3FD3333340000000, float %3476
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 32
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3566, label %3494

; <label>:3494                                    ; preds = %3472
  %3495 = add i32 %43, 140
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = add i32 %43, 452
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = add i32 %3500, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3502, %dx.types.Handle %95, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3507 = extractvalue %dx.types.ResRet.f32 %3503, 3
  %3508 = and i32 %3497, 255
  %3509 = uitofp i32 %3508 to float
  %3510 = lshr i32 %3497, 8
  %3511 = and i32 %3510, 255
  %3512 = uitofp i32 %3511 to float
  %3513 = lshr i32 %3497, 16
  %3514 = and i32 %3513, 255
  %3515 = uitofp i32 %3514 to float
  %3516 = fmul fast float %3515, 0x3F70101000000000
  %3517 = fmul fast float %3504, %3509
  %3518 = fadd fast float %3517, %3512
  %3519 = fmul fast float %3518, 0x3F70101000000000
  %3520 = fadd fast float %3505, -5.000000e-01
  %3521 = fadd fast float %3507, -5.000000e-01
  %3522 = fmul fast float %3520, %3516
  %3523 = fmul fast float %3521, %3516
  %3524 = fadd fast float %3522, 5.000000e-01
  %3525 = fadd fast float %3523, 5.000000e-01
  %3526 = fmul fast float %3524, 2.000000e+00
  %3527 = fadd fast float %3526, -1.000000e+00
  %3528 = fmul fast float %3525, 2.000000e+00
  %3529 = fadd fast float %3528, -1.000000e+00
  %3530 = fadd fast float %3527, %3529
  %3531 = fmul fast float %3530, 5.000000e-01
  %3532 = fsub fast float %3527, %3529
  %3533 = fmul fast float %3532, 5.000000e-01
  %3534 = call float @dx.op.unary.f32(i32 6, float %3531)  ; FAbs(value)
  %3535 = fsub fast float 1.000000e+00, %3534
  %3536 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3537 = fsub fast float %3535, %3536
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3533, float %3537, float %3531, float %3533, float %3537)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = call float @dx.op.unary.f32(i32 25, float %3538)  ; Rsqrt(value)
  %3540 = fmul fast float %3531, %3539
  %3541 = fmul fast float %3533, %3539
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 67108864
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3562, label %3546

; <label>:3546                                    ; preds = %3494
  %3547 = add i32 %43, 328
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 65535
  %3551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3550)  ; LegacyF16ToF32(value)
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 65535
  %3555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3554)  ; LegacyF16ToF32(value)
  %3556 = lshr i32 %3549, 16
  %3557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3556)  ; LegacyF16ToF32(value)
  %3558 = fsub fast float %3519, %3557
  %3559 = fmul fast float %3558, %3551
  %3560 = fadd fast float %3559, %3555
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  br label %3562

; <label>:3562                                    ; preds = %3546, %3494
  %3563 = phi float [ %3561, %3546 ], [ %3519, %3494 ]
  %3564 = call float @dx.op.dot2.f32(i32 54, float %3540, float %3541, float %3098, float %3099)  ; Dot2(ax,ay,bx,by)
  %3565 = call float @dx.op.dot2.f32(i32 54, float %3540, float %3541, float %3100, float %3101)  ; Dot2(ax,ay,bx,by)
  br label %3566

; <label>:3566                                    ; preds = %3562, %3472
  %3567 = phi float [ %3563, %3562 ], [ 0x3FD6666660000000, %3472 ]
  %3568 = phi float [ %3564, %3562 ], [ 0.000000e+00, %3472 ]
  %3569 = phi float [ %3565, %3562 ], [ 0.000000e+00, %3472 ]
  %3570 = phi float [ %3506, %3562 ], [ 1.000000e+00, %3472 ]
  %3571 = add i32 %43, 208
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = lshr i32 %3573, 22
  %3575 = shl nuw nsw i32 %3574, 5
  %3576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3575)  ; LegacyF16ToF32(value)
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 64
  %3580 = icmp eq i32 %3579, 0
  br i1 %3580, label %3614, label %3581

; <label>:3581                                    ; preds = %3566
  %3582 = add i32 %43, 468
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = add i32 %3584, 0
  %3586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 131072
  %3590 = icmp eq i32 %3589, 0
  %3591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3586, %dx.types.Handle %95, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = fmul fast float %3592, %427
  %3596 = fmul fast float %3593, %430
  %3597 = fmul fast float %3594, %433
  br i1 %3590, label %3604, label %3598

; <label>:3598                                    ; preds = %3581
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = fmul fast float %3600, %3595
  %3602 = fmul fast float %3600, %3596
  %3603 = fmul fast float %3600, %3597
  br label %3604

; <label>:3604                                    ; preds = %3598, %3581
  %3605 = phi float [ %3601, %3598 ], [ %3595, %3581 ]
  %3606 = phi float [ %3602, %3598 ], [ %3596, %3581 ]
  %3607 = phi float [ %3603, %3598 ], [ %3597, %3581 ]
  %3608 = fmul fast float %3605, %3576
  %3609 = select i1 %284, float %3608, float %3605
  %3610 = call float @dx.op.dot3.f32(i32 55, float %3609, float %3606, float %3607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = select i1 %284, float 0.000000e+00, float %3605
  %3612 = select i1 %284, float %3610, float %3606
  %3613 = select i1 %284, float 0.000000e+00, float %3607
  br label %3614

; <label>:3614                                    ; preds = %3604, %3566
  %3615 = phi float [ %3611, %3604 ], [ 0.000000e+00, %3566 ]
  %3616 = phi float [ %3612, %3604 ], [ 0.000000e+00, %3566 ]
  %3617 = phi float [ %3613, %3604 ], [ 0.000000e+00, %3566 ]
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = and i32 %3619, 1024
  %3621 = icmp eq i32 %3620, 0
  br i1 %3621, label %3652, label %3622

; <label>:3622                                    ; preds = %3614
  %3623 = add i32 %43, 200
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = and i32 %3625, 255
  %3627 = uitofp i32 %3626 to float
  %3628 = fmul fast float %3627, 0x3F70101020000000
  %3629 = lshr i32 %3625, 8
  %3630 = and i32 %3629, 255
  %3631 = uitofp i32 %3630 to float
  %3632 = fmul fast float %3631, 0x3F70101020000000
  %3633 = lshr i32 %3625, 16
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = fmul fast float %3635, 0x3F70101020000000
  %3637 = fmul fast float %3628, %3628
  %3638 = fmul fast float %3632, %3632
  %3639 = fmul fast float %3636, %3636
  %3640 = add i32 %43, 536
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = add i32 %3642, 0
  %3644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3644, %dx.types.Handle %96, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = fmul fast float %3637, %3646
  %3650 = fmul fast float %3638, %3647
  %3651 = fmul fast float %3639, %3648
  br label %3652

; <label>:3652                                    ; preds = %3622, %3614
  %3653 = phi float [ %3649, %3622 ], [ 0.000000e+00, %3614 ]
  %3654 = phi float [ %3650, %3622 ], [ 0.000000e+00, %3614 ]
  %3655 = phi float [ %3651, %3622 ], [ 0.000000e+00, %3614 ]
  %3656 = fcmp fast ogt float %3653, 0.000000e+00
  %3657 = fcmp fast ogt float %3654, 0.000000e+00
  %3658 = fcmp fast ogt float %3655, 0.000000e+00
  %3659 = call float @dx.op.unary.f32(i32 23, float %3653)  ; Log(value)
  %3660 = call float @dx.op.unary.f32(i32 23, float %3654)  ; Log(value)
  %3661 = call float @dx.op.unary.f32(i32 23, float %3655)  ; Log(value)
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = lshr i32 %3663, 7
  %3665 = and i32 %3664, 32752
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fmul fast float %3659, 0xBFE62E4300000000
  %3668 = fmul fast float %3667, %3666
  %3669 = fmul fast float %3660, 0xBFE62E4300000000
  %3670 = fmul fast float %3669, %3666
  %3671 = fmul fast float %3661, 0xBFE62E4300000000
  %3672 = fmul fast float %3671, %3666
  %3673 = select i1 %3656, float %3668, float 1.270000e+02
  %3674 = select i1 %3657, float %3670, float 1.270000e+02
  %3675 = select i1 %3658, float %3672, float 1.270000e+02
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = and i32 %3677, 10240
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3724, label %3680

; <label>:3680                                    ; preds = %3652
  %3681 = add i32 %43, 552
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = add i32 %3683, 0
  %3685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3685, %dx.types.Handle %96, float %3194, float %3195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3686, 3
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 1048576
  %3692 = icmp ne i32 %3691, 0
  %3693 = and i32 %3690, 8192
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3710, label %3695

; <label>:3695                                    ; preds = %3680
  %3696 = extractvalue %dx.types.ResRet.f32 %3686, 2
  %3697 = select i1 %3692, float %3696, float %3687
  %3698 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3699 = select i1 %3692, float %3698, float %3687
  %3700 = add i32 %43, 144
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = lshr i32 %3702, 16
  %3704 = and i32 %3703, 255
  %3705 = uitofp i32 %3704 to float
  %3706 = fmul fast float %3705, 0x3F80101020000000
  %3707 = fmul fast float %3706, %3699
  %3708 = fmul fast float %3706, %3687
  %3709 = fmul fast float %3706, %3697
  br label %3710

; <label>:3710                                    ; preds = %3695, %3680
  %3711 = phi float [ %3707, %3695 ], [ 0.000000e+00, %3680 ]
  %3712 = phi float [ %3708, %3695 ], [ 0.000000e+00, %3680 ]
  %3713 = phi float [ %3709, %3695 ], [ 0.000000e+00, %3680 ]
  %3714 = and i32 %3690, 2048
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3724, label %3716

; <label>:3716                                    ; preds = %3710
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = shl i32 %3718, 4
  %3720 = and i32 %3719, 32752
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = fmul fast float %3721, %3688
  %3723 = call float @dx.op.binary.f32(i32 35, float %3722, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3724

; <label>:3724                                    ; preds = %3716, %3710, %3652
  %3725 = phi float [ %3711, %3716 ], [ %3711, %3710 ], [ 0.000000e+00, %3652 ]
  %3726 = phi float [ %3712, %3716 ], [ %3712, %3710 ], [ 0.000000e+00, %3652 ]
  %3727 = phi float [ %3713, %3716 ], [ %3713, %3710 ], [ 0.000000e+00, %3652 ]
  %3728 = phi float [ %3723, %3716 ], [ 0x3F70101020000000, %3710 ], [ 0x3F70101020000000, %3652 ]
  %3729 = add i32 %43, 144
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = lshr i32 %3731, 8
  %3735 = and i32 %3734, 255
  %3736 = uitofp i32 %3735 to float
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = fmul fast float %3736, %3737
  %3739 = fadd fast float %3738, %3733
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  br i1 %3086, label %3742, label %3777

; <label>:3742                                    ; preds = %3724
  %3743 = fmul fast float %3728, 2.000000e+00
  %3744 = fcmp fast olt float %3673, 1.270000e+02
  %3745 = fcmp fast olt float %3674, 1.270000e+02
  %3746 = fcmp fast olt float %3675, 1.270000e+02
  %3747 = fmul fast float %3673, 0xBFF7154760000000
  %3748 = fmul fast float %3747, %3743
  %3749 = fmul fast float %3674, 0xBFF7154760000000
  %3750 = fmul fast float %3749, %3743
  %3751 = fmul fast float %3675, 0xBFF7154760000000
  %3752 = fmul fast float %3751, %3743
  %3753 = call float @dx.op.unary.f32(i32 21, float %3748)  ; Exp(value)
  %3754 = call float @dx.op.unary.f32(i32 21, float %3750)  ; Exp(value)
  %3755 = call float @dx.op.unary.f32(i32 21, float %3752)  ; Exp(value)
  %3756 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = fadd fast float %3756, -1.000000e+00
  %3760 = select i1 %3744, float %3759, float -1.000000e+00
  %3761 = fadd fast float %3757, -1.000000e+00
  %3762 = select i1 %3745, float %3761, float -1.000000e+00
  %3763 = fadd fast float %3758, -1.000000e+00
  %3764 = select i1 %3746, float %3763, float -1.000000e+00
  %3765 = fmul fast float %3760, %3267
  %3766 = fmul fast float %3762, %3267
  %3767 = fmul fast float %3764, %3267
  %3768 = fadd fast float %3765, 1.000000e+00
  %3769 = fadd fast float %3766, 1.000000e+00
  %3770 = fadd fast float %3767, 1.000000e+00
  %3771 = fmul fast float %3768, %3068
  %3772 = fmul fast float %3769, %3069
  %3773 = fmul fast float %3770, %3070
  %3774 = fmul fast float %3768, %3071
  %3775 = fmul fast float %3769, %3072
  %3776 = fmul fast float %3770, %3073
  br label %3777

; <label>:3777                                    ; preds = %3742, %3724
  %3778 = phi float [ %3771, %3742 ], [ %3068, %3724 ]
  %3779 = phi float [ %3772, %3742 ], [ %3069, %3724 ]
  %3780 = phi float [ %3773, %3742 ], [ %3070, %3724 ]
  %3781 = phi float [ %3774, %3742 ], [ %3071, %3724 ]
  %3782 = phi float [ %3775, %3742 ], [ %3072, %3724 ]
  %3783 = phi float [ %3776, %3742 ], [ %3073, %3724 ]
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = and i32 %3785, 3
  %3787 = icmp eq i32 %3786, 3
  br i1 %3787, label %3866, label %3788

; <label>:3788                                    ; preds = %3777
  %3789 = and i32 %3785, 16
  %3790 = icmp ne i32 %3789, 0
  %3791 = select i1 %3790, float %3267, float 0.000000e+00
  %3792 = icmp eq i32 %3786, 0
  br i1 %3792, label %3793, label %3821

; <label>:3793                                    ; preds = %3788
  %3794 = and i32 %3785, 64
  %3795 = icmp ne i32 %3794, 0
  %3796 = select i1 %3795, float %3267, float 0.000000e+00
  %3797 = fsub fast float %3487, %3778
  %3798 = fsub fast float %3488, %3779
  %3799 = fsub fast float %3489, %3780
  %3800 = fmul fast float %3791, %3797
  %3801 = fmul fast float %3791, %3798
  %3802 = fmul fast float %3791, %3799
  %3803 = fadd fast float %3800, %3778
  %3804 = fadd fast float %3801, %3779
  %3805 = fadd fast float %3802, %3780
  %3806 = fsub fast float %3473, %3080
  %3807 = fmul fast float %3791, %3806
  %3808 = fadd fast float %3807, %3080
  %3809 = fsub fast float %3615, %3781
  %3810 = fsub fast float %3616, %3782
  %3811 = fsub fast float %3617, %3783
  %3812 = fmul fast float %3796, %3809
  %3813 = fmul fast float %3796, %3810
  %3814 = fmul fast float %3796, %3811
  %3815 = fadd fast float %3812, %3781
  %3816 = fadd fast float %3813, %3782
  %3817 = fadd fast float %3814, %3783
  %3818 = fsub fast float %3741, %3084
  %3819 = fmul fast float %3791, %3818
  %3820 = fadd fast float %3819, %3084
  br label %3866

; <label>:3821                                    ; preds = %3788
  %3822 = icmp eq i32 %3786, 1
  br i1 %3822, label %3823, label %3836

; <label>:3823                                    ; preds = %3821
  %3824 = fadd fast float %3487, -1.000000e+00
  %3825 = fadd fast float %3488, -1.000000e+00
  %3826 = fadd fast float %3489, -1.000000e+00
  %3827 = fmul fast float %3791, %3824
  %3828 = fmul fast float %3791, %3825
  %3829 = fmul fast float %3791, %3826
  %3830 = fadd fast float %3827, 1.000000e+00
  %3831 = fadd fast float %3828, 1.000000e+00
  %3832 = fadd fast float %3829, 1.000000e+00
  %3833 = fmul fast float %3830, %3778
  %3834 = fmul fast float %3831, %3779
  %3835 = fmul fast float %3832, %3780
  br label %3866

; <label>:3836                                    ; preds = %3821
  %3837 = icmp eq i32 %3786, 2
  br i1 %3837, label %3838, label %3866

; <label>:3838                                    ; preds = %3836
  %3839 = call float @dx.op.unary.f32(i32 24, float %3487)  ; Sqrt(value)
  %3840 = call float @dx.op.unary.f32(i32 24, float %3488)  ; Sqrt(value)
  %3841 = call float @dx.op.unary.f32(i32 24, float %3489)  ; Sqrt(value)
  %3842 = fadd fast float %3839, -5.000000e-01
  %3843 = fadd fast float %3840, -5.000000e-01
  %3844 = fadd fast float %3841, -5.000000e-01
  %3845 = fmul fast float %3842, %3791
  %3846 = fmul fast float %3843, %3791
  %3847 = fmul fast float %3844, %3791
  %3848 = fadd fast float %3845, 5.000000e-01
  %3849 = fadd fast float %3846, 5.000000e-01
  %3850 = fadd fast float %3847, 5.000000e-01
  %3851 = fmul fast float %3848, 2.000000e+00
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = fmul fast float %3852, %3778
  %3854 = fadd fast float %3853, %3851
  %3855 = fmul fast float %3854, %3778
  %3856 = fmul fast float %3849, 2.000000e+00
  %3857 = fsub fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3779
  %3859 = fadd fast float %3858, %3856
  %3860 = fmul fast float %3859, %3779
  %3861 = fmul fast float %3850, 2.000000e+00
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = fmul fast float %3862, %3780
  %3864 = fadd fast float %3863, %3861
  %3865 = fmul fast float %3864, %3780
  br label %3866

; <label>:3866                                    ; preds = %3838, %3836, %3823, %3793, %3777
  %3867 = phi float [ %3778, %3777 ], [ %3855, %3838 ], [ %3778, %3836 ], [ %3833, %3823 ], [ %3803, %3793 ]
  %3868 = phi float [ %3779, %3777 ], [ %3860, %3838 ], [ %3779, %3836 ], [ %3834, %3823 ], [ %3804, %3793 ]
  %3869 = phi float [ %3780, %3777 ], [ %3865, %3838 ], [ %3780, %3836 ], [ %3835, %3823 ], [ %3805, %3793 ]
  %3870 = phi float [ %3781, %3777 ], [ %3781, %3838 ], [ %3781, %3836 ], [ %3781, %3823 ], [ %3815, %3793 ]
  %3871 = phi float [ %3782, %3777 ], [ %3782, %3838 ], [ %3782, %3836 ], [ %3782, %3823 ], [ %3816, %3793 ]
  %3872 = phi float [ %3783, %3777 ], [ %3783, %3838 ], [ %3783, %3836 ], [ %3783, %3823 ], [ %3817, %3793 ]
  %3873 = phi float [ %3080, %3777 ], [ %3080, %3838 ], [ %3080, %3836 ], [ %3080, %3823 ], [ %3808, %3793 ]
  %3874 = phi float [ %3084, %3777 ], [ %3084, %3838 ], [ %3084, %3836 ], [ %3084, %3823 ], [ %3820, %3793 ]
  %3875 = and i32 %3785, 12
  %3876 = icmp eq i32 %3875, 12
  br i1 %3876, label %4007, label %3877

; <label>:3877                                    ; preds = %3866
  %3878 = and i32 %3785, 2097184
  %3879 = icmp eq i32 %3878, 2097184
  %3880 = select i1 %3879, float %3267, float 0.000000e+00
  %3881 = and i32 %3785, 4194336
  %3882 = icmp eq i32 %3881, 4194336
  %3883 = select i1 %3882, float %3267, float 0.000000e+00
  %3884 = and i32 %3785, 8388640
  %3885 = icmp eq i32 %3884, 8388640
  %3886 = select i1 %3885, float %3267, float 0.000000e+00
  %3887 = and i32 %3785, 1024
  %3888 = icmp ne i32 %3887, 0
  %3889 = select i1 %3888, float %3267, float 0.000000e+00
  %3890 = and i32 %3785, 2048
  %3891 = icmp ne i32 %3890, 0
  %3892 = select i1 %3891, float %3267, float 0.000000e+00
  %3893 = and i32 %3785, 8192
  %3894 = icmp ne i32 %3893, 0
  %3895 = select i1 %3894, float %3267, float 0.000000e+00
  %3896 = icmp eq i32 %3875, 0
  br i1 %3896, label %3897, label %3931

; <label>:3897                                    ; preds = %3877
  %3898 = fsub fast float %3568, %3066
  %3899 = fsub fast float %3569, %3067
  %3900 = fmul fast float %3880, %3898
  %3901 = fmul fast float %3880, %3899
  %3902 = fadd fast float %3900, %3066
  %3903 = fadd fast float %3901, %3067
  %3904 = fsub fast float %3570, %3082
  %3905 = fmul fast float %3883, %3904
  %3906 = fadd fast float %3905, %3082
  %3907 = fsub fast float %3567, %3081
  %3908 = fmul fast float %3886, %3907
  %3909 = fadd fast float %3908, %3081
  %3910 = fsub fast float %3673, %3077
  %3911 = fsub fast float %3674, %3078
  %3912 = fsub fast float %3675, %3079
  %3913 = fmul fast float %3889, %3910
  %3914 = fmul fast float %3889, %3911
  %3915 = fmul fast float %3889, %3912
  %3916 = fadd fast float %3913, %3077
  %3917 = fadd fast float %3914, %3078
  %3918 = fadd fast float %3915, %3079
  %3919 = fsub fast float %3728, %3083
  %3920 = fmul fast float %3892, %3919
  %3921 = fadd fast float %3920, %3083
  %3922 = fsub fast float %3725, %3074
  %3923 = fsub fast float %3726, %3075
  %3924 = fsub fast float %3727, %3076
  %3925 = fmul fast float %3895, %3922
  %3926 = fmul fast float %3895, %3923
  %3927 = fmul fast float %3895, %3924
  %3928 = fadd fast float %3925, %3074
  %3929 = fadd fast float %3926, %3075
  %3930 = fadd fast float %3927, %3076
  br label %4007

; <label>:3931                                    ; preds = %3877
  %3932 = icmp eq i32 %3875, 4
  br i1 %3932, label %3933, label %3979

; <label>:3933                                    ; preds = %3931
  %3934 = fmul fast float %3880, %3568
  %3935 = fmul fast float %3880, %3569
  %3936 = fadd fast float %3934, %3066
  %3937 = fadd fast float %3935, %3067
  %3938 = call float @dx.op.binary.f32(i32 36, float %3082, float %3570)  ; FMin(a,b)
  %3939 = fsub fast float %3938, %3082
  %3940 = fmul fast float %3939, %3883
  %3941 = fadd fast float %3940, %3082
  %3942 = fadd fast float %3567, %3081
  %3943 = fmul fast float %3942, 0x3FF337FAE0000000
  %3944 = fmul fast float %3081, %3081
  %3945 = fmul fast float %3567, %3567
  %3946 = fadd fast float %3945, %3944
  %3947 = fmul fast float %3946, 0x3FE5152B00000000
  %3948 = fmul fast float %3081, 0xBFCC1F85E0000000
  %3949 = fmul fast float %3948, %3567
  %3950 = fadd fast float %3949, 0xBFE1363700000000
  %3951 = fadd fast float %3950, %3943
  %3952 = fsub fast float %3951, %3947
  %3953 = fmul fast float %3942, 0x3FBA6F0D00000000
  %3954 = fmul fast float %3946, 0x3FD0432880000000
  %3955 = fmul fast float %3081, 0xBFEF110800000000
  %3956 = fmul fast float %3955, %3567
  %3957 = fadd fast float %3956, 1.000000e+00
  %3958 = fsub fast float %3957, %3953
  %3959 = fadd fast float %3958, %3954
  %3960 = fdiv fast float %3952, %3959
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3962 = fsub fast float %3961, %3081
  %3963 = fmul fast float %3962, %3886
  %3964 = fadd fast float %3963, %3081
  %3965 = fmul fast float %3889, %3673
  %3966 = fmul fast float %3889, %3674
  %3967 = fmul fast float %3889, %3675
  %3968 = fadd fast float %3965, %3077
  %3969 = fadd fast float %3966, %3078
  %3970 = fadd fast float %3967, %3079
  %3971 = fmul fast float %3892, %3728
  %3972 = fadd fast float %3971, %3083
  %3973 = fmul fast float %3895, %3725
  %3974 = fmul fast float %3895, %3726
  %3975 = fmul fast float %3895, %3727
  %3976 = fadd fast float %3973, %3074
  %3977 = fadd fast float %3974, %3075
  %3978 = fadd fast float %3975, %3076
  br label %4007

; <label>:3979                                    ; preds = %3931
  %3980 = icmp eq i32 %3875, 8
  br i1 %3980, label %3981, label %4007

; <label>:3981                                    ; preds = %3979
  %3982 = fmul fast float %3880, %3568
  %3983 = fmul fast float %3880, %3569
  %3984 = fadd fast float %3982, %3066
  %3985 = fadd fast float %3983, %3067
  %3986 = call float @dx.op.binary.f32(i32 36, float %3082, float %3570)  ; FMin(a,b)
  %3987 = fsub fast float %3986, %3082
  %3988 = fmul fast float %3987, %3883
  %3989 = fadd fast float %3988, %3082
  %3990 = fsub fast float %3567, %3081
  %3991 = fmul fast float %3886, %3990
  %3992 = fadd fast float %3991, %3081
  %3993 = fmul fast float %3889, %3673
  %3994 = fmul fast float %3889, %3674
  %3995 = fmul fast float %3889, %3675
  %3996 = fadd fast float %3993, %3077
  %3997 = fadd fast float %3994, %3078
  %3998 = fadd fast float %3995, %3079
  %3999 = fmul fast float %3892, %3728
  %4000 = fadd fast float %3999, %3083
  %4001 = fmul fast float %3895, %3725
  %4002 = fmul fast float %3895, %3726
  %4003 = fmul fast float %3895, %3727
  %4004 = fadd fast float %4001, %3074
  %4005 = fadd fast float %4002, %3075
  %4006 = fadd fast float %4003, %3076
  br label %4007

; <label>:4007                                    ; preds = %3981, %3979, %3933, %3897, %3866, %3266, %3085, %3065
  %4008 = phi float [ %3066, %3866 ], [ %3066, %3266 ], [ %3066, %3065 ], [ %3066, %3085 ], [ %3902, %3897 ], [ %3936, %3933 ], [ %3066, %3979 ], [ %3984, %3981 ]
  %4009 = phi float [ %3067, %3866 ], [ %3067, %3266 ], [ %3067, %3065 ], [ %3067, %3085 ], [ %3903, %3897 ], [ %3937, %3933 ], [ %3067, %3979 ], [ %3985, %3981 ]
  %4010 = phi float [ %3867, %3866 ], [ %3068, %3266 ], [ %3068, %3065 ], [ %3068, %3085 ], [ %3867, %3897 ], [ %3867, %3933 ], [ %3867, %3979 ], [ %3867, %3981 ]
  %4011 = phi float [ %3868, %3866 ], [ %3069, %3266 ], [ %3069, %3065 ], [ %3069, %3085 ], [ %3868, %3897 ], [ %3868, %3933 ], [ %3868, %3979 ], [ %3868, %3981 ]
  %4012 = phi float [ %3869, %3866 ], [ %3070, %3266 ], [ %3070, %3065 ], [ %3070, %3085 ], [ %3869, %3897 ], [ %3869, %3933 ], [ %3869, %3979 ], [ %3869, %3981 ]
  %4013 = phi float [ %3870, %3866 ], [ %3071, %3266 ], [ %3071, %3065 ], [ %3071, %3085 ], [ %3870, %3897 ], [ %3870, %3933 ], [ %3870, %3979 ], [ %3870, %3981 ]
  %4014 = phi float [ %3871, %3866 ], [ %3072, %3266 ], [ %3072, %3065 ], [ %3072, %3085 ], [ %3871, %3897 ], [ %3871, %3933 ], [ %3871, %3979 ], [ %3871, %3981 ]
  %4015 = phi float [ %3872, %3866 ], [ %3073, %3266 ], [ %3073, %3065 ], [ %3073, %3085 ], [ %3872, %3897 ], [ %3872, %3933 ], [ %3872, %3979 ], [ %3872, %3981 ]
  %4016 = phi float [ %3074, %3866 ], [ %3074, %3266 ], [ %3074, %3065 ], [ %3074, %3085 ], [ %3928, %3897 ], [ %3976, %3933 ], [ %3074, %3979 ], [ %4004, %3981 ]
  %4017 = phi float [ %3075, %3866 ], [ %3075, %3266 ], [ %3075, %3065 ], [ %3075, %3085 ], [ %3929, %3897 ], [ %3977, %3933 ], [ %3075, %3979 ], [ %4005, %3981 ]
  %4018 = phi float [ %3076, %3866 ], [ %3076, %3266 ], [ %3076, %3065 ], [ %3076, %3085 ], [ %3930, %3897 ], [ %3978, %3933 ], [ %3076, %3979 ], [ %4006, %3981 ]
  %4019 = phi float [ %3077, %3866 ], [ %3077, %3266 ], [ %3077, %3065 ], [ %3077, %3085 ], [ %3916, %3897 ], [ %3968, %3933 ], [ %3077, %3979 ], [ %3996, %3981 ]
  %4020 = phi float [ %3078, %3866 ], [ %3078, %3266 ], [ %3078, %3065 ], [ %3078, %3085 ], [ %3917, %3897 ], [ %3969, %3933 ], [ %3078, %3979 ], [ %3997, %3981 ]
  %4021 = phi float [ %3079, %3866 ], [ %3079, %3266 ], [ %3079, %3065 ], [ %3079, %3085 ], [ %3918, %3897 ], [ %3970, %3933 ], [ %3079, %3979 ], [ %3998, %3981 ]
  %4022 = phi float [ %3873, %3866 ], [ %3080, %3266 ], [ %3080, %3065 ], [ %3080, %3085 ], [ %3873, %3897 ], [ %3873, %3933 ], [ %3873, %3979 ], [ %3873, %3981 ]
  %4023 = phi float [ %3081, %3866 ], [ %3081, %3266 ], [ %3081, %3065 ], [ %3081, %3085 ], [ %3909, %3897 ], [ %3964, %3933 ], [ %3081, %3979 ], [ %3992, %3981 ]
  %4024 = phi float [ %3082, %3866 ], [ %3082, %3266 ], [ %3082, %3065 ], [ %3082, %3085 ], [ %3906, %3897 ], [ %3941, %3933 ], [ %3082, %3979 ], [ %3989, %3981 ]
  %4025 = phi float [ %3083, %3866 ], [ %3083, %3266 ], [ %3083, %3065 ], [ %3083, %3085 ], [ %3921, %3897 ], [ %3972, %3933 ], [ %3083, %3979 ], [ %4000, %3981 ]
  %4026 = phi float [ %3874, %3866 ], [ %3084, %3266 ], [ %3084, %3065 ], [ %3084, %3085 ], [ %3874, %3897 ], [ %3874, %3933 ], [ %3874, %3979 ], [ %3874, %3981 ]
  %4027 = add i32 %43, 408
  %4028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.i32 %4028, 0
  %4030 = extractvalue %dx.types.ResRet.i32 %4028, 1
  %4031 = bitcast i32 %4029 to float
  %4032 = bitcast i32 %4030 to float
  %4033 = fcmp fast oge float %4031, 0.000000e+00
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = select i1 %4033, float %4031, float %4035
  %4037 = fadd fast float %4036, %192
  %4038 = fmul fast float %4032, %193
  %4039 = add i32 %43, 504
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = add i32 %4041, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4043, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = fmul fast float %4038, %4045
  %4047 = fadd fast float %4037, %4046
  %4048 = and i32 %184, 65535
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = lshr i32 %184, 16
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = and i32 %185, 65535
  %4053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4052)  ; LegacyF16ToF32(value)
  %4054 = fmul fast float %4049, %4010
  %4055 = fmul fast float %4051, %4011
  %4056 = fmul fast float %4053, %4012
  %4057 = shl i32 %186, 4
  %4058 = and i32 %4057, 32752
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = lshr i32 %186, 7
  %4061 = and i32 %4060, 32752
  %4062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4061)  ; LegacyF16ToF32(value)
  %4063 = lshr i32 %186, 22
  %4064 = shl nuw nsw i32 %4063, 5
  %4065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4064)  ; LegacyF16ToF32(value)
  %4066 = and i32 %187, 65535
  %4067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4066)  ; LegacyF16ToF32(value)
  %4068 = fmul fast float %4059, %4013
  %4069 = fmul fast float %4068, %4067
  %4070 = fmul fast float %4062, %4014
  %4071 = fmul fast float %4070, %4067
  %4072 = fmul fast float %4065, %4015
  %4073 = fmul fast float %4072, %4067
  %4074 = call float @dx.op.dot2.f32(i32 54, float %4008, float %4009, float %4008, float %4009)  ; Dot2(ax,ay,bx,by)
  %4075 = fmul fast float %4074, 0x3FE3333340000000
  %4076 = fsub fast float 1.000000e+00, %4075
  %4077 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4009, float %4076, float %4008, float %4009, float %4076)  ; Dot3(ax,ay,az,bx,by,bz)
  %4078 = call float @dx.op.unary.f32(i32 25, float %4077)  ; Rsqrt(value)
  %4079 = fmul fast float %4078, %4008
  %4080 = fmul fast float %4078, %4009
  %4081 = fmul fast float %4076, %4078
  %4082 = fmul fast float %4081, %106
  %4083 = fmul fast float %4081, %107
  %4084 = fmul fast float %4081, %108
  %4085 = fmul fast float %4079, %74
  %4086 = fmul fast float %4079, %75
  %4087 = fmul fast float %4079, %76
  %4088 = fadd fast float %4082, %4085
  %4089 = fadd fast float %4083, %4086
  %4090 = fadd fast float %4084, %4087
  %4091 = fmul fast float %118, %4080
  %4092 = fmul fast float %119, %4080
  %4093 = fmul fast float %120, %4080
  %4094 = fadd fast float %4088, %4091
  %4095 = fadd fast float %4089, %4092
  %4096 = fadd fast float %4090, %4093
  %4097 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %4094, float %4095, float %4096)  ; Dot3(ax,ay,az,bx,by,bz)
  %4098 = call float @dx.op.unary.f32(i32 25, float %4097)  ; Rsqrt(value)
  %4099 = fmul fast float %4094, %4098
  %4100 = fmul fast float %4095, %4098
  %4101 = fmul fast float %4096, %4098
  %4102 = icmp eq i32 %45, 65535
  br i1 %4102, label %4701, label %4103

; <label>:4103                                    ; preds = %4007
  %4104 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4105 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %4106 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %4107 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4108 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %4109 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %4110 = fadd fast float %4104, %46
  %4111 = fadd fast float %4105, %47
  %4112 = fadd fast float %4106, %48
  %4113 = fadd fast float %4107, %46
  %4114 = fadd fast float %4108, %47
  %4115 = fadd fast float %4109, %48
  %4116 = mul i32 %45, 48
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = add i32 %4116, 16
  %4122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = add i32 %4116, 32
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = extractvalue %dx.types.ResRet.f32 %4127, 3
  %4132 = bitcast float %4131 to i32
  %4133 = fmul fast float %4118, %46
  %4134 = fmul fast float %4119, %47
  %4135 = fmul fast float %4120, %48
  %4136 = fsub fast float %4133, %4123
  %4137 = fsub fast float %4134, %4124
  %4138 = fsub fast float %4135, %4125
  %4139 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4140 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = fmul fast float %4139, %4128
  %4143 = fmul fast float %4140, %4129
  %4144 = fmul fast float %4141, %4130
  %4145 = fadd fast float %4128, -1.000000e+00
  %4146 = fadd fast float %4129, -1.000000e+00
  %4147 = fadd fast float %4130, -1.000000e+00
  %4148 = call float @dx.op.unary.f32(i32 27, float %4142)  ; Round_ni(value)
  %4149 = call float @dx.op.unary.f32(i32 27, float %4143)  ; Round_ni(value)
  %4150 = call float @dx.op.unary.f32(i32 27, float %4144)  ; Round_ni(value)
  %4151 = call float @dx.op.binary.f32(i32 36, float %4148, float %4145)  ; FMin(a,b)
  %4152 = call float @dx.op.binary.f32(i32 36, float %4149, float %4146)  ; FMin(a,b)
  %4153 = call float @dx.op.binary.f32(i32 36, float %4150, float %4147)  ; FMin(a,b)
  %4154 = fmul fast float %4153, %4129
  %4155 = fadd fast float %4154, %4152
  %4156 = fmul fast float %4155, %4128
  %4157 = fadd fast float %4156, %4151
  %4158 = fptosi float %4157 to i32
  %4159 = add nsw i32 %4158, %4132
  %4160 = shl nsw i32 %4159, 2
  %4161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.i32 %4161, 0
  %4163 = lshr i32 %4162, 16
  %4164 = icmp eq i32 %4163, 0
  br i1 %4164, label %4664, label %4165

; <label>:4165                                    ; preds = %4103
  br label %4166

; <label>:4166                                    ; preds = %4293, %4165
  %4167 = phi i32 [ %4195, %4293 ], [ %4163, %4165 ]
  %4168 = phi float [ %4294, %4293 ], [ 0.000000e+00, %4165 ]
  %4169 = phi float [ %4295, %4293 ], [ %4047, %4165 ]
  %4170 = phi float [ %4296, %4293 ], [ %4026, %4165 ]
  %4171 = phi float [ %4297, %4293 ], [ %4019, %4165 ]
  %4172 = phi float [ %4298, %4293 ], [ %4020, %4165 ]
  %4173 = phi float [ %4299, %4293 ], [ %4021, %4165 ]
  %4174 = phi float [ %4300, %4293 ], [ 0.000000e+00, %4165 ]
  %4175 = phi float [ %4301, %4293 ], [ 0.000000e+00, %4165 ]
  %4176 = phi float [ %4302, %4293 ], [ %4016, %4165 ]
  %4177 = phi float [ %4303, %4293 ], [ %4017, %4165 ]
  %4178 = phi float [ %4304, %4293 ], [ %4018, %4165 ]
  %4179 = phi float [ %4305, %4293 ], [ %4069, %4165 ]
  %4180 = phi float [ %4306, %4293 ], [ %4071, %4165 ]
  %4181 = phi float [ %4307, %4293 ], [ %4073, %4165 ]
  %4182 = phi float [ %4308, %4293 ], [ %4099, %4165 ]
  %4183 = phi float [ %4309, %4293 ], [ %4100, %4165 ]
  %4184 = phi float [ %4310, %4293 ], [ %4101, %4165 ]
  %4185 = phi float [ %4311, %4293 ], [ %4024, %4165 ]
  %4186 = phi float [ %4312, %4293 ], [ %4023, %4165 ]
  %4187 = phi float [ %4313, %4293 ], [ 0.000000e+00, %4165 ]
  %4188 = phi float [ %4314, %4293 ], [ %4022, %4165 ]
  %4189 = phi float [ %4315, %4293 ], [ %4054, %4165 ]
  %4190 = phi float [ %4316, %4293 ], [ %4055, %4165 ]
  %4191 = phi float [ %4317, %4293 ], [ %4056, %4165 ]
  %4192 = shl nuw nsw i32 %4167, 2
  %4193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.i32 %4193, 0
  %4195 = lshr i32 %4194, 16
  %4196 = shl i32 %4194, 8
  %4197 = and i32 %4196, 16776960
  %4198 = or i32 %4197, 48
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = or i32 %4197, 64
  %4204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.i32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.i32 %4204, 1
  %4207 = or i32 %4197, 80
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4211 = or i32 %4197, 96
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = or i32 %4197, 112
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4220 = or i32 %4197, 128
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = or i32 %4197, 144
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = extractvalue %dx.types.ResRet.f32 %4227, 3
  %4232 = or i32 %4197, 160
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = or i32 %4197, 192
  %4239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.i32 %4239, 0
  %4241 = or i32 %4197, 208
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = or i32 %4197, 248
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = extractvalue %dx.types.ResRet.f32 %4248, 3
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4249, float %4250, float %4251, float %4252, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = or i32 %4197, 16
  %4255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = extractvalue %dx.types.ResRet.f32 %4255, 3
  %4260 = call float @dx.op.dot4.f32(i32 56, float %4256, float %4257, float %4258, float %4259, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4261 = or i32 %4197, 32
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = extractvalue %dx.types.ResRet.f32 %4262, 3
  %4267 = call float @dx.op.dot4.f32(i32 56, float %4263, float %4264, float %4265, float %4266, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4268 = call float @dx.op.unary.f32(i32 27, float %4253)  ; Round_ni(value)
  %4269 = call float @dx.op.unary.f32(i32 6, float %4268)  ; FAbs(value)
  %4270 = call float @dx.op.unary.f32(i32 27, float %4260)  ; Round_ni(value)
  %4271 = call float @dx.op.unary.f32(i32 6, float %4270)  ; FAbs(value)
  %4272 = call float @dx.op.unary.f32(i32 6, float %4267)  ; FAbs(value)
  %4273 = call float @dx.op.unary.f32(i32 27, float %4272)  ; Round_ni(value)
  %4274 = fadd fast float %4271, %4269
  %4275 = fadd fast float %4274, %4273
  %4276 = fcmp fast oeq float %4275, 0.000000e+00
  %4277 = call float @dx.op.dot4.f32(i32 56, float %4249, float %4250, float %4251, float %4252, float %4110, float %4111, float %4112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4278 = call float @dx.op.dot4.f32(i32 56, float %4256, float %4257, float %4258, float %4259, float %4110, float %4111, float %4112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4279 = call float @dx.op.dot4.f32(i32 56, float %4249, float %4250, float %4251, float %4252, float %4113, float %4114, float %4115, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4280 = call float @dx.op.dot4.f32(i32 56, float %4256, float %4257, float %4258, float %4259, float %4113, float %4114, float %4115, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4281 = fsub fast float %4277, %4253
  %4282 = fsub fast float %4279, %4253
  %4283 = fsub fast float %4278, %4260
  %4284 = fsub fast float %4280, %4260
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4200, float %4201, float %4202, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4288 = fadd fast float %4287, %4285
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4291 = fcmp fast ogt float %4289, %4290
  %4292 = and i1 %4276, %4291
  br i1 %4292, label %4319, label %4293

; <label>:4293                                    ; preds = %4650, %4402, %4319, %4166
  %4294 = phi float [ %4168, %4319 ], [ %4405, %4402 ], [ %4405, %4650 ], [ %4168, %4166 ]
  %4295 = phi float [ %4169, %4319 ], [ %4169, %4402 ], [ %4626, %4650 ], [ %4169, %4166 ]
  %4296 = phi float [ %4170, %4319 ], [ %4170, %4402 ], [ %4624, %4650 ], [ %4170, %4166 ]
  %4297 = phi float [ %4171, %4319 ], [ %4171, %4402 ], [ %4602, %4650 ], [ %4171, %4166 ]
  %4298 = phi float [ %4172, %4319 ], [ %4172, %4402 ], [ %4603, %4650 ], [ %4172, %4166 ]
  %4299 = phi float [ %4173, %4319 ], [ %4173, %4402 ], [ %4604, %4650 ], [ %4173, %4166 ]
  %4300 = phi float [ %4174, %4319 ], [ %4174, %4402 ], [ %4529, %4650 ], [ %4174, %4166 ]
  %4301 = phi float [ %4175, %4319 ], [ %4175, %4402 ], [ %4527, %4650 ], [ %4175, %4166 ]
  %4302 = phi float [ %4176, %4319 ], [ %4176, %4402 ], [ %4572, %4650 ], [ %4176, %4166 ]
  %4303 = phi float [ %4177, %4319 ], [ %4177, %4402 ], [ %4573, %4650 ], [ %4177, %4166 ]
  %4304 = phi float [ %4178, %4319 ], [ %4178, %4402 ], [ %4574, %4650 ], [ %4178, %4166 ]
  %4305 = phi float [ %4179, %4319 ], [ %4179, %4402 ], [ %4660, %4650 ], [ %4179, %4166 ]
  %4306 = phi float [ %4180, %4319 ], [ %4180, %4402 ], [ %4661, %4650 ], [ %4180, %4166 ]
  %4307 = phi float [ %4181, %4319 ], [ %4181, %4402 ], [ %4662, %4650 ], [ %4181, %4166 ]
  %4308 = phi float [ %4182, %4319 ], [ %4182, %4402 ], [ %4508, %4650 ], [ %4182, %4166 ]
  %4309 = phi float [ %4183, %4319 ], [ %4183, %4402 ], [ %4509, %4650 ], [ %4183, %4166 ]
  %4310 = phi float [ %4184, %4319 ], [ %4184, %4402 ], [ %4510, %4650 ], [ %4184, %4166 ]
  %4311 = phi float [ %4185, %4319 ], [ %4185, %4402 ], [ %4582, %4650 ], [ %4185, %4166 ]
  %4312 = phi float [ %4186, %4319 ], [ %4186, %4402 ], [ %4579, %4650 ], [ %4186, %4166 ]
  %4313 = phi float [ %4187, %4319 ], [ %4187, %4402 ], [ %4576, %4650 ], [ %4187, %4166 ]
  %4314 = phi float [ %4188, %4319 ], [ %4188, %4402 ], [ %4525, %4650 ], [ %4188, %4166 ]
  %4315 = phi float [ %4189, %4319 ], [ %4189, %4402 ], [ %4520, %4650 ], [ %4189, %4166 ]
  %4316 = phi float [ %4190, %4319 ], [ %4190, %4402 ], [ %4521, %4650 ], [ %4190, %4166 ]
  %4317 = phi float [ %4191, %4319 ], [ %4191, %4402 ], [ %4522, %4650 ], [ %4191, %4166 ]
  %4318 = icmp eq i32 %4195, 0
  br i1 %4318, label %4663, label %4166

; <label>:4319                                    ; preds = %4166
  %4320 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4321 = extractvalue %dx.types.ResRet.f32 %4218, 3
  %4322 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4324 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4325 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4326 = extractvalue %dx.types.ResRet.i32 %4204, 3
  %4327 = extractvalue %dx.types.ResRet.i32 %4204, 2
  %4328 = bitcast float %4320 to i32
  %4329 = add i32 %4326, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4332 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4330, %dx.types.Handle %4331, float %4253, float %4260, float undef, float undef, i32 0, i32 0, i32 undef, float %4281, float %4283, float undef, float %4282, float %4284, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = fmul fast float %4333, %4325
  %4335 = fadd fast float %4334, %4324
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4253, %4213
  %4338 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4260, float %4337)  ; FMad(a,b,c)
  %4339 = fadd fast float %4338, %4323
  %4340 = fmul fast float %4253, %4215
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4260, float %4340)  ; FMad(a,b,c)
  %4342 = fadd fast float %4341, %4322
  %4343 = fmul fast float %4281, %4213
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4283, float %4343)  ; FMad(a,b,c)
  %4345 = fmul fast float %4281, %4215
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4283, float %4345)  ; FMad(a,b,c)
  %4347 = fmul fast float %4282, %4213
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4284, float %4347)  ; FMad(a,b,c)
  %4349 = fmul fast float %4282, %4215
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4284, float %4349)  ; FMad(a,b,c)
  %4351 = add i32 %4327, 0
  %4352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4352, %dx.types.Handle %4331, float %4339, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4344, float %4346, float undef, float %4348, float %4350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = and i32 %4328, 1024
  %4356 = icmp ne i32 %4355, 0
  %4357 = fcmp fast ogt float %4354, 0x3FE0101020000000
  %4358 = uitofp i1 %4357 to float
  %4359 = select i1 %4356, float %4358, float %4354
  %4360 = and i32 %4328, 8192
  %4361 = icmp ne i32 %4360, 0
  %4362 = select i1 %4361, float %4321, float 1.000000e+00
  %4363 = fmul fast float %4253, 2.000000e+00
  %4364 = fadd fast float %4363, -1.000000e+00
  %4365 = call float @dx.op.unary.f32(i32 6, float %4364)  ; FAbs(value)
  %4366 = fmul fast float %4365, %4246
  %4367 = fsub fast float %4366, %4246
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fmul fast float %4260, 2.000000e+00
  %4370 = fadd fast float %4369, -1.000000e+00
  %4371 = call float @dx.op.unary.f32(i32 6, float %4370)  ; FAbs(value)
  %4372 = fmul fast float %4371, %4247
  %4373 = fsub fast float %4372, %4247
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4272, %4209
  %4376 = fsub fast float %4375, %4209
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = fmul fast float %4336, %4362
  %4379 = fmul fast float %4378, %4333
  %4380 = fmul fast float %4379, %4368
  %4381 = fmul fast float %4380, %4359
  %4382 = fmul fast float %4381, %4374
  %4383 = fmul fast float %4382, %4377
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4387 = fsub fast float %4289, %4386
  %4388 = fmul fast float %4387, %4385
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fmul fast float %4383, %4210
  %4391 = fadd fast float %4383, %4210
  %4392 = fmul fast float %4391, %4219
  %4393 = fsub fast float %4392, %4219
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = and i32 %4328, 128
  %4396 = icmp ne i32 %4395, 0
  %4397 = select i1 %4396, float %4394, float %4390
  %4398 = fmul fast float %4397, %4389
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = fcmp fast ugt float %4398, %4400
  br i1 %4401, label %4402, label %4293

; <label>:4402                                    ; preds = %4319
  %4403 = select i1 %4361, float %4398, float 0.000000e+00
  %4404 = fadd fast float %4403, %4168
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  br i1 %4361, label %4293, label %4406

; <label>:4406                                    ; preds = %4402
  %4407 = and i32 %4328, 4
  %4408 = and i32 %4328, 8
  %4409 = add i32 %4205, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4410, %dx.types.Handle %4411, float %4339, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4344, float %4346, float undef, float %4348, float %4350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.ResRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.ResRet.f32 %4412, 3
  %4417 = bitcast float %4231 to i32
  %4418 = and i32 %4417, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = lshr i32 %4417, 8
  %4421 = and i32 %4420, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = fmul fast float %4416, %4419
  %4424 = fadd fast float %4423, %4422
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = add i32 %4206, 0
  %4427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4427, %dx.types.Handle %4411, float %4339, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4344, float %4346, float undef, float %4348, float %4350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = extractvalue %dx.types.ResRet.f32 %4428, 3
  %4433 = bitcast float %4225 to i32
  %4434 = and i32 %4433, 255
  %4435 = uitofp i32 %4434 to float
  %4436 = lshr i32 %4433, 8
  %4437 = and i32 %4436, 255
  %4438 = uitofp i32 %4437 to float
  %4439 = lshr i32 %4433, 16
  %4440 = and i32 %4439, 255
  %4441 = uitofp i32 %4440 to float
  %4442 = fmul fast float %4441, 0x3F70101000000000
  %4443 = fmul fast float %4429, %4435
  %4444 = fadd fast float %4443, %4438
  %4445 = fmul fast float %4444, 0x3F70101000000000
  %4446 = fadd fast float %4430, -5.000000e-01
  %4447 = fadd fast float %4432, -5.000000e-01
  %4448 = fmul fast float %4446, %4442
  %4449 = fmul fast float %4447, %4442
  %4450 = fadd fast float %4448, 5.000000e-01
  %4451 = fadd fast float %4449, 5.000000e-01
  %4452 = fmul fast float %4413, %4234
  %4453 = fmul fast float %4414, %4235
  %4454 = fmul fast float %4415, %4236
  %4455 = fmul fast float %4450, 2.000000e+00
  %4456 = fadd fast float %4455, -1.000000e+00
  %4457 = fmul fast float %4451, 2.000000e+00
  %4458 = fadd fast float %4457, -1.000000e+00
  %4459 = fadd fast float %4456, %4458
  %4460 = fmul fast float %4459, 5.000000e-01
  %4461 = fsub fast float %4456, %4458
  %4462 = fmul fast float %4461, 5.000000e-01
  %4463 = call float @dx.op.unary.f32(i32 6, float %4460)  ; FAbs(value)
  %4464 = fsub fast float 1.000000e+00, %4463
  %4465 = call float @dx.op.unary.f32(i32 6, float %4462)  ; FAbs(value)
  %4466 = fsub fast float %4464, %4465
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4462, float %4466, float %4460, float %4462, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4460, %4468
  %4470 = fmul fast float %4462, %4468
  %4471 = fmul fast float %4468, %4466
  %4472 = fmul fast float %4471, %4200
  %4473 = fmul fast float %4471, %4201
  %4474 = fmul fast float %4471, %4202
  %4475 = fmul fast float %4469, %4222
  %4476 = fmul fast float %4469, %4223
  %4477 = fmul fast float %4469, %4224
  %4478 = fadd fast float %4475, %4472
  %4479 = fadd fast float %4476, %4473
  %4480 = fadd fast float %4477, %4474
  %4481 = fmul fast float %4470, %4228
  %4482 = fmul fast float %4470, %4229
  %4483 = fmul fast float %4470, %4230
  %4484 = fadd fast float %4478, %4481
  %4485 = fadd fast float %4479, %4482
  %4486 = fadd fast float %4480, %4483
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = call float @dx.op.unary.f32(i32 25, float %4487)  ; Rsqrt(value)
  %4489 = fmul fast float %4484, %4488
  %4490 = fmul fast float %4485, %4488
  %4491 = fmul fast float %4486, %4488
  %4492 = icmp ne i32 %4408, 0
  %4493 = select i1 %4492, float 1.000000e+00, float 0.000000e+00
  %4494 = fmul fast float %4398, %4493
  %4495 = and i32 %4328, 1
  %4496 = icmp eq i32 %4495, 0
  br i1 %4496, label %4497, label %4501

; <label>:4497                                    ; preds = %4406
  %4498 = fsub fast float %4489, %4182
  %4499 = fsub fast float %4490, %4183
  %4500 = fsub fast float %4491, %4184
  br label %4501

; <label>:4501                                    ; preds = %4497, %4406
  %4502 = phi float [ %4498, %4497 ], [ %4489, %4406 ]
  %4503 = phi float [ %4499, %4497 ], [ %4490, %4406 ]
  %4504 = phi float [ %4500, %4497 ], [ %4491, %4406 ]
  %4505 = fmul float %4504, %4494
  %4506 = fmul float %4503, %4494
  %4507 = fmul float %4502, %4494
  %4508 = fadd fast float %4507, %4182
  %4509 = fadd fast float %4506, %4183
  %4510 = fadd fast float %4505, %4184
  %4511 = icmp ne i32 %4407, 0
  %4512 = select i1 %4511, float 1.000000e+00, float 0.000000e+00
  %4513 = fmul fast float %4398, %4512
  %4514 = fsub fast float %4452, %4189
  %4515 = fsub fast float %4453, %4190
  %4516 = fsub fast float %4454, %4191
  %4517 = fmul fast float %4514, %4513
  %4518 = fmul fast float %4515, %4513
  %4519 = fmul fast float %4516, %4513
  %4520 = fadd fast float %4517, %4189
  %4521 = fadd fast float %4518, %4190
  %4522 = fadd fast float %4519, %4191
  %4523 = fsub fast float %4425, %4188
  %4524 = fmul fast float %4523, %4513
  %4525 = fadd fast float %4524, %4188
  %4526 = fmul fast float %4513, %4175
  %4527 = fsub fast float %4175, %4526
  %4528 = fmul fast float %4513, %4174
  %4529 = fsub fast float %4174, %4528
  %4530 = bitcast float %4243 to i32
  %4531 = lshr i32 %4530, 16
  %4532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4531)  ; LegacyF16ToF32(value)
  %4533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.i32 %4533, 0
  %4535 = and i32 %4534, 1
  %4536 = icmp eq i32 %4535, 0
  br i1 %4536, label %4537, label %4562

; <label>:4537                                    ; preds = %4501
  %4538 = fadd fast float %4425, 0xBFB99999A0000000
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4539, 0x3FF1C71C80000000
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = fmul fast float %4542, %4452
  %4544 = fmul fast float %4542, %4453
  %4545 = fmul fast float %4542, %4454
  %4546 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4547 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4548 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4549 = call float @dx.op.binary.f32(i32 35, float %4547, float %4548)  ; FMax(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4546, float %4549)  ; FMax(a,b)
  %4551 = fcmp fast ogt float %4550, 0.000000e+00
  %4552 = bitcast float %4550 to i32
  %4553 = sub nsw i32 2129859010, %4552
  %4554 = bitcast i32 %4553 to float
  %4555 = select i1 %4551, float %4554, float 0.000000e+00
  %4556 = fmul fast float %4546, %4532
  %4557 = fmul fast float %4547, %4532
  %4558 = fmul fast float %4548, %4532
  %4559 = fmul fast float %4556, %4555
  %4560 = fmul fast float %4557, %4555
  %4561 = fmul fast float %4558, %4555
  br label %4562

; <label>:4562                                    ; preds = %4537, %4501
  %4563 = phi float [ %4532, %4501 ], [ %4559, %4537 ]
  %4564 = phi float [ %4532, %4501 ], [ %4560, %4537 ]
  %4565 = phi float [ %4532, %4501 ], [ %4561, %4537 ]
  %4566 = fsub fast float %4563, %4176
  %4567 = fsub fast float %4564, %4177
  %4568 = fsub fast float %4565, %4178
  %4569 = fmul fast float %4566, %4513
  %4570 = fmul fast float %4567, %4513
  %4571 = fmul fast float %4568, %4513
  %4572 = fadd fast float %4569, %4176
  %4573 = fadd fast float %4570, %4177
  %4574 = fadd fast float %4571, %4178
  %4575 = fadd fast float %4398, %4187
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fsub fast float %4445, %4186
  %4578 = fmul fast float %4577, %4494
  %4579 = fadd fast float %4578, %4186
  %4580 = fsub fast float %4431, %4185
  %4581 = fmul fast float %4580, %4494
  %4582 = fadd fast float %4581, %4185
  br i1 %4496, label %4591, label %4583

; <label>:4583                                    ; preds = %4562
  %4584 = and i32 %4328, 32768
  %4585 = icmp eq i32 %4584, 0
  br i1 %4585, label %4601, label %4586

; <label>:4586                                    ; preds = %4583
  %4587 = fmul fast float %4494, 1.270000e+02
  %4588 = fadd fast float %4587, %4171
  %4589 = fadd fast float %4587, %4172
  %4590 = fadd fast float %4587, %4173
  br label %4601

; <label>:4591                                    ; preds = %4562
  %4592 = fsub fast float 1.270000e+02, %4171
  %4593 = fsub fast float 1.270000e+02, %4172
  %4594 = fsub fast float 1.270000e+02, %4173
  %4595 = fmul fast float %4494, %4592
  %4596 = fmul fast float %4494, %4593
  %4597 = fmul fast float %4494, %4594
  %4598 = fadd fast float %4595, %4171
  %4599 = fadd fast float %4596, %4172
  %4600 = fadd fast float %4597, %4173
  br label %4601

; <label>:4601                                    ; preds = %4591, %4586, %4583
  %4602 = phi float [ %4588, %4586 ], [ %4171, %4583 ], [ %4598, %4591 ]
  %4603 = phi float [ %4589, %4586 ], [ %4172, %4583 ], [ %4599, %4591 ]
  %4604 = phi float [ %4590, %4586 ], [ %4173, %4583 ], [ %4600, %4591 ]
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4452, float %4453, float %4454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4609 = fmul fast float %4608, %4605
  %4610 = fadd fast float %4609, %4607
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = bitcast float %4237 to i32
  %4613 = and i32 %4612, 65535
  %4614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4613)  ; LegacyF16ToF32(value)
  %4615 = lshr i32 %4612, 16
  %4616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4615)  ; LegacyF16ToF32(value)
  %4617 = fcmp fast oge float %4614, 0.000000e+00
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = select i1 %4617, float %4614, float %4619
  %4621 = fadd fast float %4620, %4616
  %4622 = fsub fast float %4611, %4170
  %4623 = fmul fast float %4622, %4398
  %4624 = fadd fast float %4623, %4170
  %4625 = fmul fast float %4621, %4398
  %4626 = call float @dx.op.binary.f32(i32 35, float %4169, float %4625)  ; FMax(a,b)
  %4627 = and i32 %4328, 16
  %4628 = icmp eq i32 %4627, 0
  br i1 %4628, label %4650, label %4629

; <label>:4629                                    ; preds = %4601
  %4630 = add i32 %4240, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %4411, float %4339, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4344, float %4346, float undef, float %4348, float %4350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = and i32 %4530, 65535
  %4637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4636)  ; LegacyF16ToF32(value)
  %4638 = fmul fast float %4633, %4234
  %4639 = fmul fast float %4634, %4235
  %4640 = fmul fast float %4635, %4236
  %4641 = and i32 %4328, 16384
  %4642 = icmp ne i32 %4641, 0
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = select i1 %4642, float %4644, float 1.000000e+00
  %4646 = fmul fast float %4645, %4637
  %4647 = fmul fast float %4638, %4646
  %4648 = fmul fast float %4639, %4646
  %4649 = fmul fast float %4640, %4646
  br label %4650

; <label>:4650                                    ; preds = %4629, %4601
  %4651 = phi float [ %4647, %4629 ], [ 0.000000e+00, %4601 ]
  %4652 = phi float [ %4648, %4629 ], [ 0.000000e+00, %4601 ]
  %4653 = phi float [ %4649, %4629 ], [ 0.000000e+00, %4601 ]
  %4654 = fsub fast float %4651, %4179
  %4655 = fsub fast float %4652, %4180
  %4656 = fsub fast float %4653, %4181
  %4657 = fmul fast float %4654, %4398
  %4658 = fmul fast float %4655, %4398
  %4659 = fmul fast float %4656, %4398
  %4660 = fadd fast float %4657, %4179
  %4661 = fadd fast float %4658, %4180
  %4662 = fadd fast float %4659, %4181
  br label %4293

; <label>:4663                                    ; preds = %4293
  br label %4664

; <label>:4664                                    ; preds = %4663, %4103
  %4665 = phi float [ 0.000000e+00, %4103 ], [ %4294, %4663 ]
  %4666 = phi float [ %4047, %4103 ], [ %4295, %4663 ]
  %4667 = phi float [ %4026, %4103 ], [ %4296, %4663 ]
  %4668 = phi float [ %4019, %4103 ], [ %4297, %4663 ]
  %4669 = phi float [ %4020, %4103 ], [ %4298, %4663 ]
  %4670 = phi float [ %4021, %4103 ], [ %4299, %4663 ]
  %4671 = phi float [ 0.000000e+00, %4103 ], [ %4300, %4663 ]
  %4672 = phi float [ 0.000000e+00, %4103 ], [ %4301, %4663 ]
  %4673 = phi float [ %4016, %4103 ], [ %4302, %4663 ]
  %4674 = phi float [ %4017, %4103 ], [ %4303, %4663 ]
  %4675 = phi float [ %4018, %4103 ], [ %4304, %4663 ]
  %4676 = phi float [ %4069, %4103 ], [ %4305, %4663 ]
  %4677 = phi float [ %4071, %4103 ], [ %4306, %4663 ]
  %4678 = phi float [ %4073, %4103 ], [ %4307, %4663 ]
  %4679 = phi float [ %4099, %4103 ], [ %4308, %4663 ]
  %4680 = phi float [ %4100, %4103 ], [ %4309, %4663 ]
  %4681 = phi float [ %4101, %4103 ], [ %4310, %4663 ]
  %4682 = phi float [ %4024, %4103 ], [ %4311, %4663 ]
  %4683 = phi float [ %4023, %4103 ], [ %4312, %4663 ]
  %4684 = phi float [ 0.000000e+00, %4103 ], [ %4313, %4663 ]
  %4685 = phi float [ %4022, %4103 ], [ %4314, %4663 ]
  %4686 = phi float [ %4054, %4103 ], [ %4315, %4663 ]
  %4687 = phi float [ %4055, %4103 ], [ %4316, %4663 ]
  %4688 = phi float [ %4056, %4103 ], [ %4317, %4663 ]
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = call float @dx.op.unary.f32(i32 25, float %4689)  ; Rsqrt(value)
  %4691 = fmul fast float %4690, %4679
  %4692 = fmul fast float %4690, %4680
  %4693 = fmul fast float %4690, %4681
  %4694 = fadd fast float %4684, %1196
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 25, float %4696)  ; Rsqrt(value)
  %4698 = fmul fast float %4697, %4691
  %4699 = fmul fast float %4697, %4692
  %4700 = fmul fast float %4697, %4693
  br label %4701

; <label>:4701                                    ; preds = %4664, %4007
  %4702 = phi float [ %4698, %4664 ], [ %4099, %4007 ]
  %4703 = phi float [ %4699, %4664 ], [ %4100, %4007 ]
  %4704 = phi float [ %4700, %4664 ], [ %4101, %4007 ]
  %4705 = phi float [ %4686, %4664 ], [ %4054, %4007 ]
  %4706 = phi float [ %4687, %4664 ], [ %4055, %4007 ]
  %4707 = phi float [ %4688, %4664 ], [ %4056, %4007 ]
  %4708 = phi float [ %4676, %4664 ], [ %4069, %4007 ]
  %4709 = phi float [ %4677, %4664 ], [ %4071, %4007 ]
  %4710 = phi float [ %4678, %4664 ], [ %4073, %4007 ]
  %4711 = phi float [ %4668, %4664 ], [ %4019, %4007 ]
  %4712 = phi float [ %4669, %4664 ], [ %4020, %4007 ]
  %4713 = phi float [ %4670, %4664 ], [ %4021, %4007 ]
  %4714 = phi float [ %4673, %4664 ], [ %4016, %4007 ]
  %4715 = phi float [ %4674, %4664 ], [ %4017, %4007 ]
  %4716 = phi float [ %4675, %4664 ], [ %4018, %4007 ]
  %4717 = phi float [ %4685, %4664 ], [ %4022, %4007 ]
  %4718 = phi float [ %4695, %4664 ], [ %1196, %4007 ]
  %4719 = phi float [ %4683, %4664 ], [ %4023, %4007 ]
  %4720 = phi float [ %4682, %4664 ], [ %4024, %4007 ]
  %4721 = phi float [ %4672, %4664 ], [ 0.000000e+00, %4007 ]
  %4722 = phi float [ %4671, %4664 ], [ 0.000000e+00, %4007 ]
  %4723 = phi float [ %4665, %4664 ], [ 0.000000e+00, %4007 ]
  %4724 = phi float [ %4666, %4664 ], [ %4047, %4007 ]
  %4725 = phi float [ %4667, %4664 ], [ %4026, %4007 ]
  %4726 = add i32 %43, 392
  %4727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.i32 %4727, 0
  %4729 = extractvalue %dx.types.ResRet.i32 %4727, 1
  %4730 = extractvalue %dx.types.ResRet.i32 %4727, 2
  %4731 = extractvalue %dx.types.ResRet.i32 %4727, 3
  %4732 = bitcast i32 %4728 to float
  %4733 = bitcast i32 %4729 to float
  %4734 = bitcast i32 %4730 to float
  %4735 = bitcast i32 %4731 to float
  %4736 = fsub fast float %4705, %4732
  %4737 = fsub fast float %4706, %4733
  %4738 = fsub fast float %4707, %4734
  %4739 = fmul fast float %4736, %225
  %4740 = fmul fast float %4737, %225
  %4741 = fmul fast float %4738, %225
  %4742 = fadd fast float %4739, %4732
  %4743 = fadd fast float %4740, %4733
  %4744 = fadd fast float %4741, %4734
  %4745 = fsub fast float %4718, %4735
  %4746 = fmul fast float %4745, %225
  %4747 = fadd fast float %4746, %4735
  %4748 = fadd fast float %4717, 0xBFB99999A0000000
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4749, 0x3FF1C71C80000000
  %4751 = call float @dx.op.binary.f32(i32 36, float %4717, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4752 = fsub fast float 1.000000e+00, %4750
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fmul fast float %4742, %4753
  %4755 = fmul fast float %4743, %4753
  %4756 = fmul fast float %4744, %4753
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4760 = fmul fast float %4742, %4750
  %4761 = fmul fast float %4743, %4750
  %4762 = fmul fast float %4744, %4750
  %4763 = fadd fast float %4760, %4751
  %4764 = fadd fast float %4761, %4751
  %4765 = fadd fast float %4762, %4751
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.i32 %4770, 0
  %4772 = and i32 %4771, 1
  %4773 = icmp eq i32 %4772, 0
  br i1 %4773, label %4788, label %4774

; <label>:4774                                    ; preds = %4701
  %4775 = call float @dx.op.binary.f32(i32 35, float %4758, float %4759)  ; FMax(a,b)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4757, float %4775)  ; FMax(a,b)
  %4777 = fcmp fast ogt float %4776, 0.000000e+00
  %4778 = bitcast float %4776 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = select i1 %4777, float %4780, float 0.000000e+00
  %4782 = fmul fast float %4757, %4714
  %4783 = fmul fast float %4758, %4715
  %4784 = fmul fast float %4759, %4716
  %4785 = fmul fast float %4782, %4781
  %4786 = fmul fast float %4783, %4781
  %4787 = fmul fast float %4784, %4781
  br label %4788

; <label>:4788                                    ; preds = %4774, %4701
  %4789 = phi float [ %4785, %4774 ], [ %4714, %4701 ]
  %4790 = phi float [ %4786, %4774 ], [ %4715, %4701 ]
  %4791 = phi float [ %4787, %4774 ], [ %4716, %4701 ]
  %4792 = call float @dx.op.binary.f32(i32 36, float %4711, float 1.270000e+02)  ; FMin(a,b)
  %4793 = call float @dx.op.binary.f32(i32 36, float %4712, float 1.270000e+02)  ; FMin(a,b)
  %4794 = call float @dx.op.binary.f32(i32 36, float %4713, float 1.270000e+02)  ; FMin(a,b)
  %4795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.i32 %4795, 3
  %4797 = and i32 %4796, 8
  %4798 = icmp ne i32 %4797, 0
  %4799 = call float @dx.op.binary.f32(i32 35, float %4757, float %4742)  ; FMax(a,b)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4758, float %4742)  ; FMax(a,b)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4759, float %4742)  ; FMax(a,b)
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4758, float %4759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = select i1 %284, float %4742, float %4757
  %4804 = select i1 %284, float %4802, float %4758
  %4805 = select i1 %284, float 1.000000e+00, float %4759
  %4806 = select i1 %4798, float %4799, float %4803
  %4807 = select i1 %4798, float %4800, float %4804
  %4808 = select i1 %4798, float %4801, float %4805
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = select i1 %284, float %4809, float %4789
  %4811 = select i1 %284, float %4809, float %4790
  %4812 = select i1 %284, float %4809, float %4791
  %4813 = and i32 %260, 3
  %4814 = select i1 %254, i32 %4813, i32 0
  %4815 = icmp eq i32 %4814, 1
  br i1 %4815, label %4816, label %4892

; <label>:4816                                    ; preds = %4788
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4820 = fadd fast float %4818, %178
  %4821 = fadd fast float %4819, %179
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = fsub fast float %4820, %4823
  %4826 = fsub fast float %4821, %4824
  %4827 = fmul fast float %4825, %4825
  %4828 = fmul fast float %4826, %4826
  %4829 = fadd fast float %4827, %4828
  %4830 = call float @dx.op.unary.f32(i32 24, float %4829)  ; Sqrt(value)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4832 = fcmp fast olt float %4830, %4831
  br i1 %4832, label %4833, label %4886

; <label>:4833                                    ; preds = %4816
  %4834 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4835 = fadd fast float %4834, %180
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 0
  %4842 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4843 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4844 = extractvalue %dx.types.CBufRet.f32 %4840, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4846 = extractvalue %dx.types.CBufRet.f32 %4838, 3
  %4847 = extractvalue %dx.types.CBufRet.f32 %4840, 3
  %4848 = fadd fast float %4845, %4820
  %4849 = fadd fast float %4846, %4821
  %4850 = fadd fast float %4835, %4847
  %4851 = fmul fast float %4848, %4837
  %4852 = call float @dx.op.tertiary.f32(i32 46, float %4849, float %4839, float %4851)  ; FMad(a,b,c)
  %4853 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4841, float %4852)  ; FMad(a,b,c)
  %4854 = fmul fast float %4848, %4842
  %4855 = call float @dx.op.tertiary.f32(i32 46, float %4849, float %4843, float %4854)  ; FMad(a,b,c)
  %4856 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4844, float %4855)  ; FMad(a,b,c)
  %4857 = fsub fast float %4853, %4845
  %4858 = fsub fast float %4856, %4846
  %4859 = fsub fast float %4857, %4823
  %4860 = fadd fast float %4859, %4831
  %4861 = fsub fast float %4858, %4824
  %4862 = fadd fast float %4861, %4831
  %4863 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4864 = fmul fast float %4860, %4863
  %4865 = fmul fast float %4862, %4863
  %4866 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4868 = fsub fast float 1.000000e+00, %4866
  %4869 = fsub fast float 1.000000e+00, %4867
  %4870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %4868, float %4869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = fcmp fast ugt float %4871, 0.000000e+00
  br i1 %4872, label %4873, label %4886

; <label>:4873                                    ; preds = %4833
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4876 = fmul fast float %4875, %4871
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4878 = fadd fast float %4877, %4876
  %4879 = extractvalue %dx.types.CBufRet.f32 %4840, 2
  %4880 = fadd fast float %4878, %4847
  %4881 = fmul fast float %4853, %4841
  %4882 = call float @dx.op.tertiary.f32(i32 46, float %4856, float %4844, float %4881)  ; FMad(a,b,c)
  %4883 = call float @dx.op.tertiary.f32(i32 46, float %4880, float %4879, float %4882)  ; FMad(a,b,c)
  %4884 = fsub fast float %4883, %4847
  %4885 = fsub fast float %4884, %4834
  br label %4886

; <label>:4886                                    ; preds = %4873, %4833, %4816
  %4887 = phi i1 [ true, %4873 ], [ false, %4833 ], [ false, %4816 ]
  %4888 = phi float [ %4885, %4873 ], [ -1.310720e+05, %4833 ], [ -1.310720e+05, %4816 ]
  %4889 = fsub fast float %4888, %180
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = select i1 %4887, float %4890, float 1.000000e+00
  br label %4892

; <label>:4892                                    ; preds = %4886, %4788
  %4893 = phi float [ %4891, %4886 ], [ 0.000000e+00, %4788 ]
  %4894 = icmp eq i32 %4814, 3
  %4895 = select i1 %4894, float 1.000000e+00, float %4893
  %4896 = call float @dx.op.binary.f32(i32 35, float %4723, float %4895)  ; FMax(a,b)
  %4897 = fcmp fast olt float %4895, 1.000000e+00
  %4898 = fcmp uge float %59, 0.000000e+00
  %4899 = and i1 %4898, %4897
  br i1 %4899, label %4900, label %4910

; <label>:4900                                    ; preds = %4892
  %4901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = fadd fast float %4902, %4896
  %4906 = fcmp ule float %58, 0.000000e+00
  %4907 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = select i1 %4906, float %4907, float 1.000000e+00
  %4909 = fmul fast float %4908, %4904
  br label %4910

; <label>:4910                                    ; preds = %4900, %4892
  %4911 = phi float [ %4905, %4900 ], [ %4896, %4892 ]
  %4912 = phi float [ %4903, %4900 ], [ 0.000000e+00, %4892 ]
  %4913 = phi float [ %4909, %4900 ], [ 0.000000e+00, %4892 ]
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = fcmp fast une float %4915, 0.000000e+00
  %4918 = fcmp fast une float %4916, 0.000000e+00
  %4919 = or i1 %4917, %4918
  br i1 %4919, label %4920, label %5495

; <label>:4920                                    ; preds = %4910
  br i1 %4917, label %4921, label %5194

; <label>:4921                                    ; preds = %4920
  %4922 = call float @dx.op.unary.f32(i32 23, float %4720)  ; Log(value)
  %4923 = fmul fast float %4922, 4.000000e+00
  %4924 = call float @dx.op.unary.f32(i32 21, float %4923)  ; Exp(value)
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = fmul fast float %4926, %46
  %4928 = fmul fast float %4926, %47
  %4929 = fmul fast float %4926, %48
  %4930 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4931 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4932 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4933 = call float @dx.op.unary.f32(i32 23, float %4930)  ; Log(value)
  %4934 = call float @dx.op.unary.f32(i32 23, float %4931)  ; Log(value)
  %4935 = call float @dx.op.unary.f32(i32 23, float %4932)  ; Log(value)
  %4936 = fmul fast float %4933, 4.000000e+00
  %4937 = fmul fast float %4934, 4.000000e+00
  %4938 = fmul fast float %4935, 4.000000e+00
  %4939 = call float @dx.op.unary.f32(i32 21, float %4936)  ; Exp(value)
  %4940 = call float @dx.op.unary.f32(i32 21, float %4937)  ; Exp(value)
  %4941 = call float @dx.op.unary.f32(i32 21, float %4938)  ; Exp(value)
  %4942 = fadd fast float %4940, %4939
  %4943 = fadd fast float %4942, %4941
  %4944 = fdiv fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4944, %4939
  %4946 = fcmp fast ogt float %55, 0.000000e+00
  %4947 = fcmp fast ogt float %56, 0.000000e+00
  %4948 = fcmp fast ogt float %57, 0.000000e+00
  %4949 = fcmp fast olt float %55, 0.000000e+00
  %4950 = fcmp fast olt float %56, 0.000000e+00
  %4951 = fcmp fast olt float %57, 0.000000e+00
  %4952 = zext i1 %4946 to i32
  %4953 = zext i1 %4947 to i32
  %4954 = zext i1 %4948 to i32
  %4955 = zext i1 %4949 to i32
  %4956 = zext i1 %4950 to i32
  %4957 = zext i1 %4951 to i32
  %4958 = sub nsw i32 %4952, %4955
  %4959 = sub nsw i32 %4953, %4956
  %4960 = sub nsw i32 %4954, %4957
  %4961 = call float @dx.op.unary.f32(i32 83, float %4927)  ; DerivCoarseX(value)
  %4962 = call float @dx.op.unary.f32(i32 83, float %4928)  ; DerivCoarseX(value)
  %4963 = call float @dx.op.unary.f32(i32 83, float %4929)  ; DerivCoarseX(value)
  %4964 = call float @dx.op.unary.f32(i32 84, float %4927)  ; DerivCoarseY(value)
  %4965 = call float @dx.op.unary.f32(i32 84, float %4928)  ; DerivCoarseY(value)
  %4966 = call float @dx.op.unary.f32(i32 84, float %4929)  ; DerivCoarseY(value)
  %4967 = fcmp fast ole float %295, %4945
  %4968 = fmul fast float %4944, %4942
  %4969 = fcmp fast ole float %295, %4968
  %4970 = select i1 %4969, float %4929, float %4927
  %4971 = select i1 %4969, float %4927, float %4928
  %4972 = select i1 %4967, float %4928, float %4970
  %4973 = select i1 %4967, float %4929, float %4971
  %4974 = select i1 %4969, float %4963, float %4961
  %4975 = select i1 %4969, float %4961, float %4962
  %4976 = select i1 %4967, float %4962, float %4974
  %4977 = select i1 %4967, float %4963, float %4975
  %4978 = select i1 %4969, float %4966, float %4964
  %4979 = select i1 %4969, float %4964, float %4965
  %4980 = select i1 %4967, float %4965, float %4978
  %4981 = select i1 %4967, float %4966, float %4979
  %4982 = call float @dx.op.unary.f32(i32 27, float %4972)  ; Round_ni(value)
  %4983 = call float @dx.op.unary.f32(i32 27, float %4973)  ; Round_ni(value)
  %4984 = fptosi float %4982 to i32
  %4985 = fptosi float %4983 to i32
  %4986 = xor i32 %4985, %4984
  %4987 = sitofp i32 %4986 to float
  %4988 = fptosi float %4987 to i32
  %4989 = sitofp i32 %4988 to float
  %4990 = fmul fast float %4989, 0x3FE3C6EF40000000
  %4991 = frem fast float %4982, 2.560000e+02
  %4992 = frem fast float %4983, 2.560000e+02
  %4993 = fptoui float %4991 to i32
  %4994 = fptoui float %4992 to i32
  %4995 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4993, i32 %4994, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = fadd fast float %4996, %4990
  %5000 = fadd fast float %4997, %4990
  %5001 = fadd fast float %4998, %4990
  %5002 = call float @dx.op.unary.f32(i32 22, float %4999)  ; Frc(value)
  %5003 = call float @dx.op.unary.f32(i32 22, float %5000)  ; Frc(value)
  %5004 = call float @dx.op.unary.f32(i32 22, float %5001)  ; Frc(value)
  %5005 = fmul fast float %5004, 0x401921FB60000000
  %5006 = call float @dx.op.unary.f32(i32 13, float %5005)  ; Sin(value)
  %5007 = call float @dx.op.unary.f32(i32 12, float %5005)  ; Cos(value)
  %5008 = fsub fast float -0.000000e+00, %5007
  %5009 = fmul fast float %5007, %4972
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4973, float %5009)  ; FMad(a,b,c)
  %5011 = fmul fast float %5006, %4972
  %5012 = call float @dx.op.tertiary.f32(i32 46, float %5008, float %4973, float %5011)  ; FMad(a,b,c)
  %5013 = fadd fast float %5010, %5002
  %5014 = fadd fast float %5012, %5003
  %5015 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %5016 = bitcast float %5015 to i32
  %5017 = icmp eq i32 %5016, 0
  br i1 %5017, label %5056, label %5018

; <label>:5018                                    ; preds = %4921
  %5019 = add i32 %5016, 0
  %5020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5020, %dx.types.Handle %96, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 0
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5026 = fsub fast float 1.000000e+00, %4915
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5028 = bitcast float %4915 to i32
  %5029 = sitofp i32 %5028 to float
  %5030 = fadd fast float %5029, 0xC1CFBF8940000000
  %5031 = fmul fast float %5025, %5030
  %5032 = fadd fast float %5031, 0x41CFBF8940000000
  %5033 = fptosi float %5032 to i32
  %5034 = bitcast i32 %5033 to float
  %5035 = bitcast float %5027 to i32
  %5036 = sitofp i32 %5035 to float
  %5037 = fadd fast float %5036, 0xC1CFBF8940000000
  %5038 = fmul fast float %5037, %5025
  %5039 = fadd fast float %5038, 0x41CFBF8940000000
  %5040 = fptosi float %5039 to i32
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %5034, %5024
  %5043 = fmul fast float %5041, %5024
  %5044 = fsub fast float %5027, %5042
  %5045 = fadd fast float %5043, %5027
  %5046 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5047 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5048 = fsub fast float %5022, %5046
  %5049 = fsub fast float %5047, %5046
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %5052, %5048
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fcmp fast olt float %5054, 0x3F70101020000000
  br i1 %5055, label %5194, label %5056

; <label>:5056                                    ; preds = %5018, %4921
  %5057 = phi float [ %5054, %5018 ], [ %4915, %4921 ]
  %5058 = fmul fast float %5057, %4924
  %5059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.i32 %5059, 1
  %5061 = extractvalue %dx.types.CBufRet.i32 %5059, 0
  %5062 = add i32 %5061, 0
  %5063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5063, %dx.types.Handle %95, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5064, 3
  %5069 = and i32 %5060, 255
  %5070 = uitofp i32 %5069 to float
  %5071 = lshr i32 %5060, 8
  %5072 = and i32 %5071, 255
  %5073 = uitofp i32 %5072 to float
  %5074 = fmul fast float %5068, %5070
  %5075 = fadd fast float %5074, %5073
  %5076 = fmul fast float %5075, 0x3F70101000000000
  %5077 = fadd fast float %5076, 0xBFB99999A0000000
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, 0x3FF1C71C80000000
  %5080 = call float @dx.op.binary.f32(i32 36, float %5076, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5081 = fsub fast float 1.000000e+00, %5079
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %5082, %5065
  %5084 = fmul fast float %5082, %5066
  %5085 = fmul fast float %5082, %5067
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = fmul fast float %5079, %5065
  %5090 = fmul fast float %5079, %5066
  %5091 = fmul fast float %5079, %5067
  %5092 = fadd fast float %5089, %5080
  %5093 = fadd fast float %5090, %5080
  %5094 = fadd fast float %5091, %5080
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.i32 %5098, 3
  %5100 = extractvalue %dx.types.CBufRet.i32 %5098, 2
  %5101 = add i32 %5100, 0
  %5102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5103 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5102, %dx.types.Handle %95, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.ResRet.f32 %5103, 1
  %5106 = extractvalue %dx.types.ResRet.f32 %5103, 2
  %5107 = extractvalue %dx.types.ResRet.f32 %5103, 3
  %5108 = and i32 %5099, 255
  %5109 = uitofp i32 %5108 to float
  %5110 = lshr i32 %5099, 8
  %5111 = and i32 %5110, 255
  %5112 = uitofp i32 %5111 to float
  %5113 = lshr i32 %5099, 16
  %5114 = and i32 %5113, 255
  %5115 = uitofp i32 %5114 to float
  %5116 = fmul fast float %5115, 0x3F70101000000000
  %5117 = fmul fast float %5104, %5109
  %5118 = fadd fast float %5117, %5112
  %5119 = fmul fast float %5118, 0x3F70101000000000
  %5120 = fadd fast float %5105, -5.000000e-01
  %5121 = fadd fast float %5107, -5.000000e-01
  %5122 = fmul fast float %5120, %5116
  %5123 = fmul fast float %5121, %5116
  %5124 = fadd fast float %5122, 5.000000e-01
  %5125 = fadd fast float %5123, 5.000000e-01
  %5126 = fmul fast float %5124, 2.000000e+00
  %5127 = fadd fast float %5126, -1.000000e+00
  %5128 = fmul fast float %5125, 2.000000e+00
  %5129 = fadd fast float %5128, -1.000000e+00
  %5130 = fadd fast float %5127, %5129
  %5131 = fmul fast float %5130, 5.000000e-01
  %5132 = fsub fast float %5127, %5129
  %5133 = fmul fast float %5132, 5.000000e-01
  %5134 = call float @dx.op.unary.f32(i32 6, float %5131)  ; FAbs(value)
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = call float @dx.op.unary.f32(i32 6, float %5133)  ; FAbs(value)
  %5137 = fsub fast float %5135, %5136
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5133, float %5137, float %5131, float %5133, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 25, float %5138)  ; Rsqrt(value)
  %5140 = fmul fast float %5131, %5139
  %5141 = fmul fast float %5133, %5139
  %5142 = select i1 %4969, i32 %4959, i32 %4960
  %5143 = select i1 %4967, i32 %4958, i32 %5142
  %5144 = sitofp i32 %5143 to float
  %5145 = fmul fast float %5137, %5144
  %5146 = fmul fast float %5145, %5139
  %5147 = select i1 %4969, float %5146, float %5141
  %5148 = select i1 %4969, float %5141, float %5146
  %5149 = select i1 %4967, float %5146, float %5140
  %5150 = select i1 %4967, float %5141, float %5147
  %5151 = select i1 %4967, float %5140, float %5148
  %5152 = fsub fast float %5086, %4806
  %5153 = fsub fast float %5087, %4807
  %5154 = fsub fast float %5088, %4808
  %5155 = fmul fast float %5152, %5058
  %5156 = fmul fast float %5153, %5058
  %5157 = fmul fast float %5154, %5058
  %5158 = fadd fast float %5155, %4806
  %5159 = fadd fast float %5156, %4807
  %5160 = fadd fast float %5157, %4808
  %5161 = fsub fast float %5095, %4766
  %5162 = fsub fast float %5096, %4767
  %5163 = fsub fast float %5097, %4768
  %5164 = fmul fast float %5161, %5058
  %5165 = fmul fast float %5162, %5058
  %5166 = fmul fast float %5163, %5058
  %5167 = fadd fast float %5164, %4766
  %5168 = fadd fast float %5165, %4767
  %5169 = fadd fast float %5166, %4768
  %5170 = fadd fast float %5149, %4702
  %5171 = fadd fast float %5150, %4703
  %5172 = fadd fast float %5151, %4704
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 25, float %5173)  ; Rsqrt(value)
  %5175 = fmul fast float %5170, %5174
  %5176 = fmul fast float %5171, %5174
  %5177 = fmul fast float %5172, %5174
  %5178 = fsub fast float %5175, %4702
  %5179 = fsub fast float %5176, %4703
  %5180 = fsub fast float %5177, %4704
  %5181 = fmul fast float %5178, %5058
  %5182 = fmul fast float %5179, %5058
  %5183 = fmul fast float %5180, %5058
  %5184 = fadd fast float %5181, %4702
  %5185 = fadd fast float %5182, %4703
  %5186 = fadd fast float %5183, %4704
  %5187 = call float @dx.op.binary.f32(i32 36, float %4720, float %5106)  ; FMin(a,b)
  %5188 = fsub fast float %5187, %4720
  %5189 = fmul fast float %5188, %5058
  %5190 = fadd fast float %5189, %4720
  %5191 = fsub fast float %5119, %4769
  %5192 = fmul fast float %5191, %5058
  %5193 = fadd fast float %5192, %4769
  br label %5194

; <label>:5194                                    ; preds = %5056, %5018, %4920
  %5195 = phi float [ %5184, %5056 ], [ %4702, %5018 ], [ %4702, %4920 ]
  %5196 = phi float [ %5185, %5056 ], [ %4703, %5018 ], [ %4703, %4920 ]
  %5197 = phi float [ %5186, %5056 ], [ %4704, %5018 ], [ %4704, %4920 ]
  %5198 = phi float [ %5167, %5056 ], [ %4766, %5018 ], [ %4766, %4920 ]
  %5199 = phi float [ %5168, %5056 ], [ %4767, %5018 ], [ %4767, %4920 ]
  %5200 = phi float [ %5169, %5056 ], [ %4768, %5018 ], [ %4768, %4920 ]
  %5201 = phi float [ %5158, %5056 ], [ %4806, %5018 ], [ %4806, %4920 ]
  %5202 = phi float [ %5159, %5056 ], [ %4807, %5018 ], [ %4807, %4920 ]
  %5203 = phi float [ %5160, %5056 ], [ %4808, %5018 ], [ %4808, %4920 ]
  %5204 = phi float [ %5193, %5056 ], [ %4769, %5018 ], [ %4769, %4920 ]
  %5205 = phi float [ %5190, %5056 ], [ %4720, %5018 ], [ %4720, %4920 ]
  br i1 %4918, label %5206, label %5495

; <label>:5206                                    ; preds = %5194
  %5207 = call float @dx.op.unary.f32(i32 23, float %5205)  ; Log(value)
  %5208 = fmul fast float %5207, 4.000000e+00
  %5209 = call float @dx.op.unary.f32(i32 21, float %5208)  ; Exp(value)
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = fmul fast float %5211, %46
  %5213 = fmul fast float %5211, %47
  %5214 = fmul fast float %5211, %48
  %5215 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5216 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %5217 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %5218 = call float @dx.op.unary.f32(i32 23, float %5215)  ; Log(value)
  %5219 = call float @dx.op.unary.f32(i32 23, float %5216)  ; Log(value)
  %5220 = call float @dx.op.unary.f32(i32 23, float %5217)  ; Log(value)
  %5221 = fmul fast float %5218, 4.000000e+00
  %5222 = fmul fast float %5219, 4.000000e+00
  %5223 = fmul fast float %5220, 4.000000e+00
  %5224 = call float @dx.op.unary.f32(i32 21, float %5221)  ; Exp(value)
  %5225 = call float @dx.op.unary.f32(i32 21, float %5222)  ; Exp(value)
  %5226 = call float @dx.op.unary.f32(i32 21, float %5223)  ; Exp(value)
  %5227 = fadd fast float %5225, %5224
  %5228 = fadd fast float %5227, %5226
  %5229 = fdiv fast float 1.000000e+00, %5228
  %5230 = fmul fast float %5229, %5224
  %5231 = fcmp fast ogt float %55, 0.000000e+00
  %5232 = fcmp fast ogt float %56, 0.000000e+00
  %5233 = fcmp fast ogt float %57, 0.000000e+00
  %5234 = fcmp fast olt float %55, 0.000000e+00
  %5235 = fcmp fast olt float %56, 0.000000e+00
  %5236 = fcmp fast olt float %57, 0.000000e+00
  %5237 = zext i1 %5231 to i32
  %5238 = zext i1 %5232 to i32
  %5239 = zext i1 %5233 to i32
  %5240 = zext i1 %5234 to i32
  %5241 = zext i1 %5235 to i32
  %5242 = zext i1 %5236 to i32
  %5243 = sub nsw i32 %5237, %5240
  %5244 = sub nsw i32 %5238, %5241
  %5245 = sub nsw i32 %5239, %5242
  %5246 = call float @dx.op.unary.f32(i32 83, float %5212)  ; DerivCoarseX(value)
  %5247 = call float @dx.op.unary.f32(i32 83, float %5213)  ; DerivCoarseX(value)
  %5248 = call float @dx.op.unary.f32(i32 83, float %5214)  ; DerivCoarseX(value)
  %5249 = call float @dx.op.unary.f32(i32 84, float %5212)  ; DerivCoarseY(value)
  %5250 = call float @dx.op.unary.f32(i32 84, float %5213)  ; DerivCoarseY(value)
  %5251 = call float @dx.op.unary.f32(i32 84, float %5214)  ; DerivCoarseY(value)
  %5252 = fcmp fast ole float %295, %5230
  %5253 = fmul fast float %5229, %5227
  %5254 = fcmp fast ole float %295, %5253
  %5255 = select i1 %5254, float %5214, float %5212
  %5256 = select i1 %5254, float %5212, float %5213
  %5257 = select i1 %5252, float %5213, float %5255
  %5258 = select i1 %5252, float %5214, float %5256
  %5259 = select i1 %5254, float %5248, float %5246
  %5260 = select i1 %5254, float %5246, float %5247
  %5261 = select i1 %5252, float %5247, float %5259
  %5262 = select i1 %5252, float %5248, float %5260
  %5263 = select i1 %5254, float %5251, float %5249
  %5264 = select i1 %5254, float %5249, float %5250
  %5265 = select i1 %5252, float %5250, float %5263
  %5266 = select i1 %5252, float %5251, float %5264
  %5267 = call float @dx.op.unary.f32(i32 27, float %5257)  ; Round_ni(value)
  %5268 = call float @dx.op.unary.f32(i32 27, float %5258)  ; Round_ni(value)
  %5269 = fptosi float %5267 to i32
  %5270 = fptosi float %5268 to i32
  %5271 = xor i32 %5270, %5269
  %5272 = sitofp i32 %5271 to float
  %5273 = fptosi float %5272 to i32
  %5274 = sitofp i32 %5273 to float
  %5275 = fmul fast float %5274, 0x3FE3C6EF40000000
  %5276 = frem fast float %5267, 2.560000e+02
  %5277 = frem fast float %5268, 2.560000e+02
  %5278 = fptoui float %5276 to i32
  %5279 = fptoui float %5277 to i32
  %5280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5278, i32 %5279, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.ResRet.f32 %5280, 2
  %5284 = fadd fast float %5281, %5275
  %5285 = fadd fast float %5282, %5275
  %5286 = fadd fast float %5283, %5275
  %5287 = call float @dx.op.unary.f32(i32 22, float %5284)  ; Frc(value)
  %5288 = call float @dx.op.unary.f32(i32 22, float %5285)  ; Frc(value)
  %5289 = call float @dx.op.unary.f32(i32 22, float %5286)  ; Frc(value)
  %5290 = fmul fast float %5289, 0x401921FB60000000
  %5291 = call float @dx.op.unary.f32(i32 13, float %5290)  ; Sin(value)
  %5292 = call float @dx.op.unary.f32(i32 12, float %5290)  ; Cos(value)
  %5293 = fsub fast float -0.000000e+00, %5292
  %5294 = fmul fast float %5292, %5257
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5291, float %5258, float %5294)  ; FMad(a,b,c)
  %5296 = fmul fast float %5291, %5257
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5293, float %5258, float %5296)  ; FMad(a,b,c)
  %5298 = fadd fast float %5295, %5287
  %5299 = fadd fast float %5297, %5288
  %5300 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5301 = bitcast float %5300 to i32
  %5302 = icmp eq i32 %5301, 0
  br i1 %5302, label %5341, label %5303

; <label>:5303                                    ; preds = %5206
  %5304 = add i32 %5301, 0
  %5305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5305, %dx.types.Handle %96, float %5298, float %5299, float undef, float undef, i32 0, i32 0, i32 undef, float %5261, float %5262, float undef, float %5265, float %5266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5311 = fsub fast float 1.000000e+00, %4916
  %5312 = call float @dx.op.binary.f32(i32 35, float %5311, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5313 = bitcast float %4916 to i32
  %5314 = sitofp i32 %5313 to float
  %5315 = fadd fast float %5314, 0xC1CFBF8940000000
  %5316 = fmul fast float %5310, %5315
  %5317 = fadd fast float %5316, 0x41CFBF8940000000
  %5318 = fptosi float %5317 to i32
  %5319 = bitcast i32 %5318 to float
  %5320 = bitcast float %5312 to i32
  %5321 = sitofp i32 %5320 to float
  %5322 = fadd fast float %5321, 0xC1CFBF8940000000
  %5323 = fmul fast float %5322, %5310
  %5324 = fadd fast float %5323, 0x41CFBF8940000000
  %5325 = fptosi float %5324 to i32
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5319, %5309
  %5328 = fmul fast float %5326, %5309
  %5329 = fsub fast float %5312, %5327
  %5330 = fadd fast float %5328, %5312
  %5331 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5333 = fsub fast float %5307, %5331
  %5334 = fsub fast float %5332, %5331
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fcmp fast olt float %5339, 0x3F70101020000000
  br i1 %5340, label %5495, label %5341

; <label>:5341                                    ; preds = %5303, %5206
  %5342 = phi float [ %5339, %5303 ], [ %4916, %5206 ]
  %5343 = fmul fast float %5342, %5209
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 1
  %5346 = extractvalue %dx.types.CBufRet.i32 %5344, 0
  %5347 = add i32 %5346, 0
  %5348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5348, %dx.types.Handle %95, float %5298, float %5299, float undef, float undef, i32 0, i32 0, i32 undef, float %5261, float %5262, float undef, float %5265, float %5266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5354 = and i32 %5345, 255
  %5355 = uitofp i32 %5354 to float
  %5356 = lshr i32 %5345, 8
  %5357 = and i32 %5356, 255
  %5358 = uitofp i32 %5357 to float
  %5359 = fmul fast float %5353, %5355
  %5360 = fadd fast float %5359, %5358
  %5361 = fmul fast float %5360, 0x3F70101000000000
  %5362 = fadd fast float %5361, 0xBFB99999A0000000
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fmul fast float %5363, 0x3FF1C71C80000000
  %5365 = call float @dx.op.binary.f32(i32 36, float %5361, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5366 = fsub fast float 1.000000e+00, %5364
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5367, %5350
  %5369 = fmul fast float %5367, %5351
  %5370 = fmul fast float %5367, %5352
  %5371 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5372 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = fmul fast float %5364, %5350
  %5375 = fmul fast float %5364, %5351
  %5376 = fmul fast float %5364, %5352
  %5377 = fadd fast float %5374, %5365
  %5378 = fadd fast float %5375, %5365
  %5379 = fadd fast float %5376, %5365
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.i32 %5383, 3
  %5385 = extractvalue %dx.types.CBufRet.i32 %5383, 2
  %5386 = add i32 %5385, 0
  %5387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5387, %dx.types.Handle %95, float %5298, float %5299, float undef, float undef, i32 0, i32 0, i32 undef, float %5261, float %5262, float undef, float %5265, float %5266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.ResRet.f32 %5388, 3
  %5393 = and i32 %5384, 255
  %5394 = uitofp i32 %5393 to float
  %5395 = lshr i32 %5384, 8
  %5396 = and i32 %5395, 255
  %5397 = uitofp i32 %5396 to float
  %5398 = lshr i32 %5384, 16
  %5399 = and i32 %5398, 255
  %5400 = uitofp i32 %5399 to float
  %5401 = fmul fast float %5400, 0x3F70101000000000
  %5402 = fmul fast float %5389, %5394
  %5403 = fadd fast float %5402, %5397
  %5404 = fmul fast float %5403, 0x3F70101000000000
  %5405 = fadd fast float %5390, -5.000000e-01
  %5406 = fadd fast float %5392, -5.000000e-01
  %5407 = fmul fast float %5405, %5401
  %5408 = fmul fast float %5406, %5401
  %5409 = fadd fast float %5407, 5.000000e-01
  %5410 = fadd fast float %5408, 5.000000e-01
  %5411 = fmul fast float %5409, 2.000000e+00
  %5412 = fadd fast float %5411, -1.000000e+00
  %5413 = fmul fast float %5410, 2.000000e+00
  %5414 = fadd fast float %5413, -1.000000e+00
  %5415 = fadd fast float %5412, %5414
  %5416 = fmul fast float %5415, 5.000000e-01
  %5417 = fsub fast float %5412, %5414
  %5418 = fmul fast float %5417, 5.000000e-01
  %5419 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = call float @dx.op.unary.f32(i32 6, float %5418)  ; FAbs(value)
  %5422 = fsub fast float %5420, %5421
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5418, float %5422, float %5416, float %5418, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = call float @dx.op.unary.f32(i32 25, float %5423)  ; Rsqrt(value)
  %5425 = fmul fast float %5416, %5424
  %5426 = fmul fast float %5418, %5424
  %5427 = select i1 %5254, i32 %5244, i32 %5245
  %5428 = select i1 %5252, i32 %5243, i32 %5427
  %5429 = sitofp i32 %5428 to float
  %5430 = fmul fast float %5422, %5429
  %5431 = fmul fast float %5430, %5424
  %5432 = select i1 %5254, float %5431, float %5426
  %5433 = select i1 %5254, float %5426, float %5431
  %5434 = select i1 %5252, float %5431, float %5425
  %5435 = select i1 %5252, float %5426, float %5432
  %5436 = select i1 %5252, float %5425, float %5433
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = fptoui float %5438 to i32
  %5440 = add i32 %5439, 0
  %5441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5441, %dx.types.Handle %95, float %5298, float %5299, float undef, float undef, i32 0, i32 0, i32 undef, float %5261, float %5262, float undef, float %5265, float %5266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = fsub fast float %5371, %5201
  %5445 = fsub fast float %5372, %5202
  %5446 = fsub fast float %5373, %5203
  %5447 = fmul fast float %5444, %5343
  %5448 = fmul fast float %5445, %5343
  %5449 = fmul fast float %5446, %5343
  %5450 = fadd fast float %5447, %5201
  %5451 = fadd fast float %5448, %5202
  %5452 = fadd fast float %5449, %5203
  %5453 = fsub fast float %5380, %5198
  %5454 = fsub fast float %5381, %5199
  %5455 = fsub fast float %5382, %5200
  %5456 = fmul fast float %5453, %5343
  %5457 = fmul fast float %5454, %5343
  %5458 = fmul fast float %5455, %5343
  %5459 = fadd fast float %5456, %5198
  %5460 = fadd fast float %5457, %5199
  %5461 = fadd fast float %5458, %5200
  %5462 = fadd fast float %5434, %5195
  %5463 = fadd fast float %5435, %5196
  %5464 = fadd fast float %5436, %5197
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5462, float %5463, float %5464)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 25, float %5465)  ; Rsqrt(value)
  %5467 = fmul fast float %5466, %5462
  %5468 = fmul fast float %5466, %5463
  %5469 = fmul fast float %5466, %5464
  %5470 = fsub fast float %5467, %5195
  %5471 = fsub fast float %5468, %5196
  %5472 = fsub fast float %5469, %5197
  %5473 = fmul fast float %5470, %5343
  %5474 = fmul fast float %5471, %5343
  %5475 = fmul fast float %5472, %5343
  %5476 = fadd fast float %5473, %5195
  %5477 = fadd fast float %5474, %5196
  %5478 = fadd fast float %5475, %5197
  %5479 = call float @dx.op.binary.f32(i32 36, float %5205, float %5391)  ; FMin(a,b)
  %5480 = fsub fast float %5479, %5205
  %5481 = fmul fast float %5480, %5343
  %5482 = fadd fast float %5481, %5205
  %5483 = fsub fast float %5404, %5204
  %5484 = fmul fast float %5483, %5343
  %5485 = fadd fast float %5484, %5204
  %5486 = fsub fast float %5443, %4810
  %5487 = fsub fast float %5443, %4811
  %5488 = fsub fast float %5443, %4812
  %5489 = fmul fast float %5486, %5343
  %5490 = fmul fast float %5487, %5343
  %5491 = fmul fast float %5488, %5343
  %5492 = fadd fast float %5489, %4810
  %5493 = fadd fast float %5490, %4811
  %5494 = fadd fast float %5491, %4812
  br label %5495

; <label>:5495                                    ; preds = %5341, %5303, %5194, %4910
  %5496 = phi float [ %5476, %5341 ], [ %5195, %5303 ], [ %5195, %5194 ], [ %4702, %4910 ]
  %5497 = phi float [ %5477, %5341 ], [ %5196, %5303 ], [ %5196, %5194 ], [ %4703, %4910 ]
  %5498 = phi float [ %5478, %5341 ], [ %5197, %5303 ], [ %5197, %5194 ], [ %4704, %4910 ]
  %5499 = phi float [ %5459, %5341 ], [ %5198, %5303 ], [ %5198, %5194 ], [ %4766, %4910 ]
  %5500 = phi float [ %5460, %5341 ], [ %5199, %5303 ], [ %5199, %5194 ], [ %4767, %4910 ]
  %5501 = phi float [ %5461, %5341 ], [ %5200, %5303 ], [ %5200, %5194 ], [ %4768, %4910 ]
  %5502 = phi float [ %5492, %5341 ], [ %4810, %5303 ], [ %4810, %5194 ], [ %4810, %4910 ]
  %5503 = phi float [ %5493, %5341 ], [ %4811, %5303 ], [ %4811, %5194 ], [ %4811, %4910 ]
  %5504 = phi float [ %5494, %5341 ], [ %4812, %5303 ], [ %4812, %5194 ], [ %4812, %4910 ]
  %5505 = phi float [ %5450, %5341 ], [ %5201, %5303 ], [ %5201, %5194 ], [ %4806, %4910 ]
  %5506 = phi float [ %5451, %5341 ], [ %5202, %5303 ], [ %5202, %5194 ], [ %4807, %4910 ]
  %5507 = phi float [ %5452, %5341 ], [ %5203, %5303 ], [ %5203, %5194 ], [ %4808, %4910 ]
  %5508 = phi float [ %5485, %5341 ], [ %5204, %5303 ], [ %5204, %5194 ], [ %4769, %4910 ]
  %5509 = phi float [ %5482, %5341 ], [ %5205, %5303 ], [ %5205, %5194 ], [ %4720, %4910 ]
  %5510 = fcmp fast une float %4914, 0.000000e+00
  %5511 = fsub fast float -0.000000e+00, %211
  %5512 = fsub fast float -0.000000e+00, %212
  %5513 = fsub fast float -0.000000e+00, %213
  br i1 %5510, label %5514, label %5675

; <label>:5514                                    ; preds = %5495
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fmul fast float %4914, 2.500000e+00
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = fmul fast float %4914, 0x4013FFFFE0000000
  %5519 = fadd fast float %5518, 0xBFFFFFFFE0000000
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %4914, 0x4004000020000000
  %5522 = fadd fast float %5521, 0xBFF8000040000000
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = fmul fast float %4748, 1.000000e+01
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fmul fast float %5525, 2.000000e+00
  %5527 = fsub fast float 3.000000e+00, %5526
  %5528 = fmul fast float %5525, %5525
  %5529 = fmul fast float %5528, %5527
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = fsub fast float 0x3FE3333340000000, %5508
  %5532 = fmul fast float %5531, 0x400AAAAAA0000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = fmul fast float %5530, %5533
  %5535 = fmul fast float %5505, 0x3FEA2B8620000000
  %5536 = fmul fast float %5506, 0x3FEA2B8620000000
  %5537 = fmul fast float %5507, 0x3FEA2B8620000000
  %5538 = fadd fast float %5535, 0x3FC81DFBA0000000
  %5539 = fmul fast float %5538, %5505
  %5540 = fadd fast float %5539, 0x3F910E6020000000
  %5541 = fadd fast float %5536, 0x3FC81DFBA0000000
  %5542 = fmul fast float %5541, %5506
  %5543 = fadd fast float %5542, 0x3F910E6020000000
  %5544 = fadd fast float %5537, 0x3FC81DFBA0000000
  %5545 = fmul fast float %5544, %5507
  %5546 = fadd fast float %5545, 0x3F910E6020000000
  %5547 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5550 = fsub fast float %5547, %5505
  %5551 = fsub fast float %5548, %5506
  %5552 = fsub fast float %5549, %5507
  %5553 = fmul fast float %5550, %5517
  %5554 = fmul fast float %5553, %5534
  %5555 = fmul fast float %5551, %5517
  %5556 = fmul fast float %5555, %5534
  %5557 = fmul fast float %5552, %5517
  %5558 = fmul fast float %5557, %5534
  %5559 = fadd fast float %5554, %5505
  %5560 = fadd fast float %5556, %5506
  %5561 = fadd fast float %5558, %5507
  %5562 = fmul fast float %5509, %5509
  %5563 = fmul fast float %5562, %5562
  %5564 = fadd fast float %5520, 1.000000e+00
  %5565 = fsub fast float %5564, %5534
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fsub fast float 1.000000e+00, %5563
  %5570 = call float @dx.op.binary.f32(i32 36, float %5566, float %5569)  ; FMin(a,b)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5572 = call float @dx.op.binary.f32(i32 35, float %5570, float %5571)  ; FMax(a,b)
  %5573 = fadd fast float %5568, 0xBFE4CCCCC0000000
  %5574 = fmul fast float %5573, 0x4006DB6DA0000000
  %5575 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5576 = fmul fast float %5575, 2.000000e+00
  %5577 = fsub fast float 3.000000e+00, %5576
  %5578 = bitcast float %5499 to i32
  %5579 = ashr i32 %5578, 1
  %5580 = add nsw i32 %5579, 532487669
  %5581 = bitcast i32 %5580 to float
  %5582 = fsub fast float 1.000000e+00, %5581
  %5583 = bitcast float %5582 to i32
  %5584 = sub nsw i32 2129859010, %5583
  %5585 = bitcast i32 %5584 to float
  %5586 = fmul fast float %5585, 2.000000e+00
  %5587 = bitcast float %5500 to i32
  %5588 = ashr i32 %5587, 1
  %5589 = add nsw i32 %5588, 532487669
  %5590 = bitcast i32 %5589 to float
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = bitcast float %5591 to i32
  %5593 = sub nsw i32 2129859010, %5592
  %5594 = bitcast i32 %5593 to float
  %5595 = fmul fast float %5594, 2.000000e+00
  %5596 = bitcast float %5501 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = add nsw i32 %5597, 532487669
  %5599 = bitcast i32 %5598 to float
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = bitcast float %5600 to i32
  %5602 = sub nsw i32 2129859010, %5601
  %5603 = bitcast i32 %5602 to float
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = fsub fast float 0x4002A9FBE0000000, %5586
  %5606 = fadd fast float %5586, 0x3FD54FDF00000000
  %5607 = bitcast float %5606 to i32
  %5608 = sub nsw i32 2129859010, %5607
  %5609 = bitcast i32 %5608 to float
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5610, %5610
  %5612 = fsub fast float 0x4002A9FBE0000000, %5595
  %5613 = fadd fast float %5595, 0x3FD54FDF00000000
  %5614 = bitcast float %5613 to i32
  %5615 = sub nsw i32 2129859010, %5614
  %5616 = bitcast i32 %5615 to float
  %5617 = fmul fast float %5616, %5612
  %5618 = fmul fast float %5617, %5617
  %5619 = fsub fast float 0x4002A9FBE0000000, %5604
  %5620 = fadd fast float %5604, 0x3FD54FDF00000000
  %5621 = bitcast float %5620 to i32
  %5622 = sub nsw i32 2129859010, %5621
  %5623 = bitcast i32 %5622 to float
  %5624 = fmul fast float %5623, %5619
  %5625 = fmul fast float %5624, %5624
  %5626 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5611)  ; FMax(a,b)
  %5627 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5618)  ; FMax(a,b)
  %5628 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5625)  ; FMax(a,b)
  %5629 = fsub fast float 1.000000e+00, %5515
  %5630 = fadd fast float %5629, %5530
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = fsub fast float 1.000000e+00, %4895
  %5633 = fmul fast float %5572, %5632
  %5634 = fmul fast float %5575, %5575
  %5635 = fmul fast float %5634, %5633
  %5636 = fmul fast float %5635, %5577
  %5637 = fmul fast float %5632, 0xBFE99999A0000000
  %5638 = fmul fast float %5637, %5517
  %5639 = fmul fast float %5638, %5534
  %5640 = fadd fast float %5639, 1.000000e+00
  %5641 = fadd fast float %5508, -1.000000e+00
  %5642 = fmul fast float %5640, %5641
  %5643 = fadd fast float %5642, 1.000000e+00
  %5644 = fsub fast float %5626, %5499
  %5645 = fsub fast float %5627, %5500
  %5646 = fsub fast float %5628, %5501
  %5647 = fmul fast float %5636, %5644
  %5648 = fmul fast float %5636, %5645
  %5649 = fmul fast float %5636, %5646
  %5650 = fadd fast float %5647, %5499
  %5651 = fadd fast float %5648, %5500
  %5652 = fadd fast float %5649, %5501
  %5653 = fsub fast float %106, %5496
  %5654 = fsub fast float %107, %5497
  %5655 = fsub fast float %108, %5498
  %5656 = fmul fast float %5636, %5653
  %5657 = fmul fast float %5636, %5654
  %5658 = fmul fast float %5636, %5655
  %5659 = fadd fast float %5656, %5496
  %5660 = fadd fast float %5657, %5497
  %5661 = fadd fast float %5658, %5498
  %5662 = fmul fast float %5636, %5631
  %5663 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5662, %5664
  %5666 = fadd fast float %5665, %5663
  %5667 = fsub fast float 1.000000e+00, %5509
  %5668 = fmul fast float %5636, %5667
  %5669 = fadd fast float %5668, %5509
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 25, float %5670)  ; Rsqrt(value)
  %5672 = fmul fast float %5659, %5671
  %5673 = fmul fast float %5660, %5671
  %5674 = fmul fast float %5661, %5671
  br label %5675

; <label>:5675                                    ; preds = %5514, %5495
  %5676 = phi float [ %5672, %5514 ], [ %5496, %5495 ]
  %5677 = phi float [ %5673, %5514 ], [ %5497, %5495 ]
  %5678 = phi float [ %5674, %5514 ], [ %5498, %5495 ]
  %5679 = phi float [ %5650, %5514 ], [ %5499, %5495 ]
  %5680 = phi float [ %5651, %5514 ], [ %5500, %5495 ]
  %5681 = phi float [ %5652, %5514 ], [ %5501, %5495 ]
  %5682 = phi float [ %5559, %5514 ], [ %5505, %5495 ]
  %5683 = phi float [ %5560, %5514 ], [ %5506, %5495 ]
  %5684 = phi float [ %5561, %5514 ], [ %5507, %5495 ]
  %5685 = phi float [ %5666, %5514 ], [ %5508, %5495 ]
  %5686 = phi float [ %5669, %5514 ], [ %5509, %5495 ]
  %5687 = select i1 %284, float 0.000000e+00, float %5681
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %5678, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = fmul fast float %5690, 2.000000e+00
  %5692 = fmul fast float %5691, %5676
  %5693 = fmul fast float %5691, %5677
  %5694 = fmul fast float %5691, %5678
  %5695 = fsub fast float %211, %5692
  %5696 = fsub fast float %212, %5693
  %5697 = fsub fast float %213, %5694
  %5698 = call float @dx.op.binary.f32(i32 36, float %5686, float 1.000000e+00)  ; FMin(a,b)
  %5699 = fsub fast float 1.000000e+00, %5686
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5704 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fcmp fast oeq float %5704, 0.000000e+00
  %5706 = fcmp fast oeq float %5703, 0.000000e+00
  %5707 = or i1 %5706, %5705
  br i1 %5707, label %5737, label %5708

; <label>:5708                                    ; preds = %5675
  %5709 = fsub fast float -0.000000e+00, %73
  %5710 = fsub fast float -0.000000e+00, %71
  %5711 = call float @dx.op.unary.f32(i32 24, float %5704)  ; Sqrt(value)
  %5712 = fdiv fast float %5711, %5703
  %5713 = fcmp fast ogt float %5712, 0x3FFB6F8900000000
  %5714 = select i1 %5713, float 0x3FFB6F8900000000, float %5712
  %5715 = fmul fast float %5714, 0x3FE8A23460000000
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = call float @dx.op.binary.f32(i32 35, float %5714, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5718 = fmul fast float %5716, %5703
  %5719 = fmul fast float %5717, 0x3FF279A740000000
  %5720 = fadd fast float %5719, -1.000000e+00
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %72, float %5709, float %5710, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = call float @dx.op.unary.f32(i32 25, float %5721)  ; Rsqrt(value)
  %5723 = fmul fast float %5722, %5709
  %5724 = fmul fast float %5722, %5710
  %5725 = fmul fast float %5722, %72
  %5726 = fmul fast float %5720, %5720
  %5727 = fsub fast float 1.000000e+00, %5726
  %5728 = fmul fast float %5717, 0x40005F8BE0000000
  %5729 = fsub fast float 0x400C5BF8A0000000, %5728
  %5730 = fdiv fast float %5718, %5729
  %5731 = fmul fast float %5730, 0x3FEE31C3C0000000
  %5732 = fmul fast float %5731, %5727
  %5733 = fmul fast float %5717, 0x3FDACB7480000000
  %5734 = fadd fast float %5733, 0xBFD7347680000000
  %5735 = fmul fast float %5734, %5730
  %5736 = fmul fast float %5735, %5727
  br label %5737

; <label>:5737                                    ; preds = %5708, %5675
  %5738 = phi float [ %5723, %5708 ], [ 0.000000e+00, %5675 ]
  %5739 = phi float [ %5724, %5708 ], [ 0.000000e+00, %5675 ]
  %5740 = phi float [ %5725, %5708 ], [ 0.000000e+00, %5675 ]
  %5741 = phi float [ %5732, %5708 ], [ 0.000000e+00, %5675 ]
  %5742 = phi float [ %5736, %5708 ], [ 0.000000e+00, %5675 ]
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5740, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fmul fast float %5743, 0x3FDF454380000000
  %5745 = fmul fast float %5743, %5743
  %5746 = fmul fast float %5745, 0x3FEE471020000000
  %5747 = fadd fast float %5746, 0xBFD42F6020000000
  %5748 = fmul fast float %5703, 0x3FD20DD760000000
  %5749 = fmul fast float %5747, %5742
  %5750 = fadd fast float %5749, %5748
  %5751 = fmul fast float %5744, %5741
  %5752 = fadd fast float %5750, %5751
  %5753 = fsub fast float %5750, %5751
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5740, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fmul fast float %5754, 0x3FDF454380000000
  %5756 = fmul fast float %5754, %5754
  %5757 = fmul fast float %5756, 0x3FEE471020000000
  %5758 = fadd fast float %5757, 0xBFD42F6020000000
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5741, float %5742, float 0x3FD20DD760000000, float %5755, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5761 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fcmp fast oeq float %5761, 0.000000e+00
  %5763 = fcmp fast oeq float %5760, 0.000000e+00
  %5764 = or i1 %5763, %5762
  br i1 %5764, label %5794, label %5765

; <label>:5765                                    ; preds = %5737
  %5766 = fsub fast float -0.000000e+00, %69
  %5767 = fsub fast float -0.000000e+00, %67
  %5768 = call float @dx.op.unary.f32(i32 24, float %5761)  ; Sqrt(value)
  %5769 = fdiv fast float %5768, %5760
  %5770 = fcmp fast ogt float %5769, 0x3FFB6F8900000000
  %5771 = select i1 %5770, float 0x3FFB6F8900000000, float %5769
  %5772 = fmul fast float %5771, 0x3FE8A23460000000
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = call float @dx.op.binary.f32(i32 35, float %5771, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5775 = fmul fast float %5773, %5760
  %5776 = fmul fast float %5774, 0x3FF279A740000000
  %5777 = fadd fast float %5776, -1.000000e+00
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %68, float %5766, float %5767, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = call float @dx.op.unary.f32(i32 25, float %5778)  ; Rsqrt(value)
  %5780 = fmul fast float %5779, %5766
  %5781 = fmul fast float %5779, %5767
  %5782 = fmul fast float %5779, %68
  %5783 = fmul fast float %5777, %5777
  %5784 = fsub fast float 1.000000e+00, %5783
  %5785 = fmul fast float %5774, 0x40005F8BE0000000
  %5786 = fsub fast float 0x400C5BF8A0000000, %5785
  %5787 = fdiv fast float %5775, %5786
  %5788 = fmul fast float %5787, 0x3FEE31C3C0000000
  %5789 = fmul fast float %5788, %5784
  %5790 = fmul fast float %5774, 0x3FDACB7480000000
  %5791 = fadd fast float %5790, 0xBFD7347680000000
  %5792 = fmul fast float %5791, %5787
  %5793 = fmul fast float %5792, %5784
  br label %5794

; <label>:5794                                    ; preds = %5765, %5737
  %5795 = phi float [ %5780, %5765 ], [ 0.000000e+00, %5737 ]
  %5796 = phi float [ %5781, %5765 ], [ 0.000000e+00, %5737 ]
  %5797 = phi float [ %5782, %5765 ], [ 0.000000e+00, %5737 ]
  %5798 = phi float [ %5789, %5765 ], [ 0.000000e+00, %5737 ]
  %5799 = phi float [ %5793, %5765 ], [ 0.000000e+00, %5737 ]
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %5797, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = fmul fast float %5800, 0x3FDF454380000000
  %5802 = fmul fast float %5800, %5800
  %5803 = fmul fast float %5802, 0x3FEE471020000000
  %5804 = fadd fast float %5803, 0xBFD42F6020000000
  %5805 = fmul fast float %5760, 0x3FD20DD760000000
  %5806 = fmul fast float %5804, %5799
  %5807 = fadd fast float %5806, %5805
  %5808 = fmul fast float %5801, %5798
  %5809 = fadd fast float %5807, %5808
  %5810 = fsub fast float %5807, %5808
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %5797, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = fmul fast float %5811, 0x3FDF454380000000
  %5813 = fmul fast float %5811, %5811
  %5814 = fmul fast float %5813, 0x3FEE471020000000
  %5815 = fadd fast float %5814, 0xBFD42F6020000000
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5798, float %5799, float 0x3FD20DD760000000, float %5812, float %5815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5818 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fcmp fast oeq float %5818, 0.000000e+00
  %5820 = fcmp fast oeq float %5817, 0.000000e+00
  %5821 = or i1 %5820, %5819
  br i1 %5821, label %5851, label %5822

; <label>:5822                                    ; preds = %5794
  %5823 = fsub fast float -0.000000e+00, %65
  %5824 = fsub fast float -0.000000e+00, %63
  %5825 = call float @dx.op.unary.f32(i32 24, float %5818)  ; Sqrt(value)
  %5826 = fdiv fast float %5825, %5817
  %5827 = fcmp fast ogt float %5826, 0x3FFB6F8900000000
  %5828 = select i1 %5827, float 0x3FFB6F8900000000, float %5826
  %5829 = fmul fast float %5828, 0x3FE8A23460000000
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5828, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5832 = fmul fast float %5830, %5817
  %5833 = fmul fast float %5831, 0x3FF279A740000000
  %5834 = fadd fast float %5833, -1.000000e+00
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %64, float %5823, float %5824, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = call float @dx.op.unary.f32(i32 25, float %5835)  ; Rsqrt(value)
  %5837 = fmul fast float %5836, %5823
  %5838 = fmul fast float %5836, %5824
  %5839 = fmul fast float %5836, %64
  %5840 = fmul fast float %5834, %5834
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5831, 0x40005F8BE0000000
  %5843 = fsub fast float 0x400C5BF8A0000000, %5842
  %5844 = fdiv fast float %5832, %5843
  %5845 = fmul fast float %5844, 0x3FEE31C3C0000000
  %5846 = fmul fast float %5845, %5841
  %5847 = fmul fast float %5831, 0x3FDACB7480000000
  %5848 = fadd fast float %5847, 0xBFD7347680000000
  %5849 = fmul fast float %5848, %5844
  %5850 = fmul fast float %5849, %5841
  br label %5851

; <label>:5851                                    ; preds = %5822, %5794
  %5852 = phi float [ %5837, %5822 ], [ 0.000000e+00, %5794 ]
  %5853 = phi float [ %5838, %5822 ], [ 0.000000e+00, %5794 ]
  %5854 = phi float [ %5839, %5822 ], [ 0.000000e+00, %5794 ]
  %5855 = phi float [ %5846, %5822 ], [ 0.000000e+00, %5794 ]
  %5856 = phi float [ %5850, %5822 ], [ 0.000000e+00, %5794 ]
  %5857 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = fmul fast float %5857, 0x3FDF454380000000
  %5859 = fmul fast float %5857, %5857
  %5860 = fmul fast float %5859, 0x3FEE471020000000
  %5861 = fadd fast float %5860, 0xBFD42F6020000000
  %5862 = fmul fast float %5817, 0x3FD20DD760000000
  %5863 = fmul fast float %5861, %5856
  %5864 = fadd fast float %5863, %5862
  %5865 = fmul fast float %5858, %5855
  %5866 = fadd fast float %5864, %5865
  %5867 = fsub fast float %5864, %5865
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fmul fast float %5868, 0x3FDF454380000000
  %5870 = fmul fast float %5868, %5868
  %5871 = fmul fast float %5870, 0x3FEE471020000000
  %5872 = fadd fast float %5871, 0xBFD42F6020000000
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5855, float %5856, float 0x3FD20DD760000000, float %5869, float %5872)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = call float @dx.op.binary.f32(i32 35, float %5752, float 0.000000e+00)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 35, float %5809, float 0.000000e+00)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5866, float 0.000000e+00)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5753, float 0.000000e+00)  ; FMax(a,b)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5810, float 0.000000e+00)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5867, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5759, float 0.000000e+00)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5816, float 0.000000e+00)  ; FMax(a,b)
  %5882 = call float @dx.op.binary.f32(i32 35, float %5873, float 0.000000e+00)  ; FMax(a,b)
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = call float @dx.op.binary.f32(i32 36, float %5682, float %5884)  ; FMin(a,b)
  %5886 = fsub fast float 1.000000e+00, %5698
  %5887 = fmul fast float %5885, %5886
  %5888 = fsub fast float 1.000000e+00, %5887
  %5889 = bitcast float %5888 to i32
  %5890 = sub nsw i32 2129859010, %5889
  %5891 = bitcast i32 %5890 to float
  %5892 = call float @dx.op.binary.f32(i32 36, float %5683, float %5884)  ; FMin(a,b)
  %5893 = fmul fast float %5892, %5886
  %5894 = fsub fast float 1.000000e+00, %5893
  %5895 = bitcast float %5894 to i32
  %5896 = sub nsw i32 2129859010, %5895
  %5897 = bitcast i32 %5896 to float
  %5898 = call float @dx.op.binary.f32(i32 36, float %5684, float %5884)  ; FMin(a,b)
  %5899 = fmul fast float %5898, %5886
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = bitcast float %5900 to i32
  %5902 = sub nsw i32 2129859010, %5901
  %5903 = bitcast i32 %5902 to float
  %5904 = fmul fast float %5874, %5698
  %5905 = fmul fast float %5904, %5891
  %5906 = fmul fast float %5875, %5698
  %5907 = fmul fast float %5906, %5897
  %5908 = fmul fast float %5876, %5698
  %5909 = fmul fast float %5908, %5903
  %5910 = call float @dx.op.binary.f32(i32 36, float %5679, float %5884)  ; FMin(a,b)
  %5911 = fmul fast float %5910, %5886
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = bitcast float %5912 to i32
  %5914 = sub nsw i32 2129859010, %5913
  %5915 = bitcast i32 %5914 to float
  %5916 = call float @dx.op.binary.f32(i32 36, float %5680, float %5884)  ; FMin(a,b)
  %5917 = fmul fast float %5916, %5886
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = bitcast float %5918 to i32
  %5920 = sub nsw i32 2129859010, %5919
  %5921 = bitcast i32 %5920 to float
  %5922 = call float @dx.op.binary.f32(i32 36, float %5687, float %5884)  ; FMin(a,b)
  %5923 = fmul fast float %5922, %5886
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = bitcast float %5924 to i32
  %5926 = sub nsw i32 2129859010, %5925
  %5927 = bitcast i32 %5926 to float
  %5928 = fmul fast float %5880, %5698
  %5929 = fmul fast float %5928, %5915
  %5930 = fmul fast float %5881, %5698
  %5931 = fmul fast float %5930, %5921
  %5932 = fmul fast float %5882, %5698
  %5933 = fmul fast float %5932, %5927
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5907, float %5909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = select i1 %284, float 0.000000e+00, float %5905
  %5936 = select i1 %284, float %5934, float %5907
  %5937 = select i1 %284, float 0.000000e+00, float %5909
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %5879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = select i1 %284, float 0.000000e+00, float %5877
  %5940 = select i1 %284, float %5938, float %5878
  %5941 = select i1 %284, float 0.000000e+00, float %5879
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5931, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = select i1 %284, float 0.000000e+00, float %5929
  %5944 = select i1 %284, float %5942, float %5931
  %5945 = select i1 %284, float 0.000000e+00, float %5933
  %5946 = fmul fast float %4025, %4025
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5689, 9.843750e-01
  %5949 = fmul fast float %5685, 9.843750e-01
  %5950 = fadd fast float %5948, 7.812500e-03
  %5951 = fadd fast float %5949, 7.812500e-03
  %5952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5950, float %5951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.ResRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.ResRet.f32 %5952, 2
  %5956 = extractvalue %dx.types.ResRet.f32 %5952, 3
  %5957 = fsub fast float 1.000000e+00, %5947
  %5958 = fsub fast float %5955, %5953
  %5959 = fsub fast float %5956, %5954
  %5960 = fmul fast float %5958, %5957
  %5961 = fmul fast float %5959, %5957
  %5962 = fadd fast float %5960, %5953
  %5963 = fadd fast float %5961, %5954
  %5964 = fmul fast float %5962, %5679
  %5965 = fmul fast float %5962, %5680
  %5966 = fmul fast float %5962, %5687
  %5967 = fadd fast float %5964, %5963
  %5968 = fadd fast float %5965, %5963
  %5969 = fadd fast float %5966, %5963
  %5970 = fcmp fast ogt float %4721, 0.000000e+00
  br i1 %5970, label %5971, label %5997

; <label>:5971                                    ; preds = %5851
  %5972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4721, float %5689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.ResRet.f32 %5972, 2
  %5976 = fadd fast float %5973, -5.000000e-01
  %5977 = fadd fast float %5974, -5.000000e-01
  %5978 = fadd fast float %5975, -5.000000e-01
  %5979 = fsub fast float 1.000000e+00, %5679
  %5980 = fsub fast float 1.000000e+00, %5680
  %5981 = fsub fast float 1.000000e+00, %5687
  %5982 = fmul fast float %5679, 4.000000e+00
  %5983 = fmul fast float %5982, %5979
  %5984 = fmul fast float %5983, %5976
  %5985 = fmul fast float %5680, 4.000000e+00
  %5986 = fmul fast float %5985, %5980
  %5987 = fmul fast float %5986, %5977
  %5988 = fmul fast float %5687, 4.000000e+00
  %5989 = fmul fast float %5988, %5981
  %5990 = fmul fast float %5989, %5978
  %5991 = fadd fast float %5984, %5967
  %5992 = fadd fast float %5987, %5968
  %5993 = fadd fast float %5990, %5969
  %5994 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5995 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5996 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  br label %5997

; <label>:5997                                    ; preds = %5971, %5851
  %5998 = phi float [ %5994, %5971 ], [ %5967, %5851 ]
  %5999 = phi float [ %5995, %5971 ], [ %5968, %5851 ]
  %6000 = phi float [ %5996, %5971 ], [ %5969, %5851 ]
  %6001 = call float @dx.op.binary.f32(i32 35, float %5999, float %6000)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %5998, float %6001)  ; FMax(a,b)
  %6003 = fsub fast float 1.000000e+00, %6002
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5683, float %5684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = fcmp fast ogt float %6004, 0x3E7FF19E20000000
  %6006 = fdiv fast float 1.000000e+00, %6004
  %6007 = select i1 %6005, float %6006, float 0.000000e+00
  %6008 = fmul fast float %6007, %5682
  %6009 = fmul fast float %6007, %5683
  %6010 = fmul fast float %6007, %5684
  %6011 = fadd fast float %6008, -1.000000e+00
  %6012 = fadd fast float %6009, -1.000000e+00
  %6013 = fadd fast float %6010, -1.000000e+00
  %6014 = fmul fast float %6011, 5.000000e-01
  %6015 = fmul fast float %6012, 5.000000e-01
  %6016 = fmul fast float %6013, 5.000000e-01
  %6017 = fadd fast float %6014, 1.000000e+00
  %6018 = fadd fast float %6015, 1.000000e+00
  %6019 = fadd fast float %6016, 1.000000e+00
  %6020 = call float @dx.op.binary.f32(i32 35, float %5689, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6021 = fdiv fast float %4025, %6020
  %6022 = fcmp fast olt float %4792, 1.270000e+02
  %6023 = fcmp fast olt float %4793, 1.270000e+02
  %6024 = fcmp fast olt float %4794, 1.270000e+02
  %6025 = fmul fast float %4792, 0xBFF7154760000000
  %6026 = fmul fast float %6025, %6021
  %6027 = fmul fast float %4793, 0xBFF7154760000000
  %6028 = fmul fast float %6027, %6021
  %6029 = fmul fast float %4794, 0xBFF7154760000000
  %6030 = fmul fast float %6029, %6021
  %6031 = call float @dx.op.unary.f32(i32 21, float %6026)  ; Exp(value)
  %6032 = call float @dx.op.unary.f32(i32 21, float %6028)  ; Exp(value)
  %6033 = call float @dx.op.unary.f32(i32 21, float %6030)  ; Exp(value)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6035 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6036 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6037 = select i1 %6022, float %6034, float 0.000000e+00
  %6038 = select i1 %6023, float %6035, float 0.000000e+00
  %6039 = select i1 %6024, float %6036, float 0.000000e+00
  %6040 = fmul fast float %6037, %6003
  %6041 = fmul fast float %6038, %6003
  %6042 = fmul fast float %6039, %6003
  %6043 = fadd fast float %6040, -1.000000e+00
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fadd fast float %6042, -1.000000e+00
  %6046 = fmul fast float %6043, %4747
  %6047 = fmul fast float %6044, %4747
  %6048 = fmul fast float %6045, %4747
  %6049 = fmul fast float %5998, %5943
  %6050 = fmul fast float %5999, %5944
  %6051 = fmul fast float %6000, %5945
  %6052 = fsub fast float 1.000000e+00, %5689
  %6053 = bitcast float %6052 to i32
  %6054 = sitofp i32 %6053 to float
  %6055 = fmul fast float %6054, 5.000000e+00
  %6056 = fadd fast float %6055, 0xC1EFBF8940000000
  %6057 = fptosi float %6056 to i32
  %6058 = bitcast i32 %6057 to float
  %6059 = fmul fast float %6058, %4722
  %6060 = fmul fast float %5935, %6059
  %6061 = fmul fast float %6060, %6003
  %6062 = fmul fast float %6061, %6017
  %6063 = fmul fast float %5936, %6059
  %6064 = fmul fast float %6063, %6003
  %6065 = fmul fast float %6064, %6018
  %6066 = fmul fast float %5937, %6059
  %6067 = fmul fast float %6066, %6003
  %6068 = fmul fast float %6067, %6019
  %6069 = fadd fast float %6049, %4708
  %6070 = fadd fast float %6069, %6062
  %6071 = fmul fast float %6070, %4747
  %6072 = fadd fast float %6050, %4709
  %6073 = fadd fast float %6072, %6065
  %6074 = fmul fast float %6073, %4747
  %6075 = fadd fast float %6051, %4710
  %6076 = fadd fast float %6075, %6068
  %6077 = fmul fast float %6076, %4747
  %6078 = fmul fast float %5680, 0x4012D0A400000000
  %6079 = fadd fast float %6048, 1.000000e+00
  %6080 = fadd fast float %6047, 1.000000e+00
  %6081 = fadd fast float %6046, 1.000000e+00
  %6082 = fmul fast float %6003, %5937
  %6083 = fmul fast float %6003, %5936
  %6084 = fmul fast float %6003, %5935
  %6085 = fsub fast float 1.000000e+00, %5685
  %6086 = fmul fast float %6085, %4747
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = fsub fast float 1.000000e+00, %6088
  %6090 = fadd fast float %6078, 0x3FDB6377A0000000
  %6091 = fmul fast float %6089, %6090
  %6092 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5503, float %5504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6093 = fadd fast float %6091, %6092
  %6094 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6094, float 0x3F847AE140000000)  ; FMax(a,b)
  %6096 = fmul fast float %6095, %6095
  %6097 = fmul fast float %6096, %6096
  %6098 = fmul fast float %6097, 0xC00A935000000000
  %6099 = call float @dx.op.unary.f32(i32 21, float %6098)  ; Exp(value)
  %6100 = fsub fast float 1.000000e+00, %6099
  %6101 = fmul fast float %6081, %5939
  %6102 = fmul fast float %6101, %6100
  %6103 = fmul fast float %6080, %5940
  %6104 = fmul fast float %6103, %6100
  %6105 = fmul fast float %6079, %5941
  %6106 = fmul fast float %6105, %6100
  %6107 = fadd fast float %6102, %6084
  %6108 = fmul fast float %6107, %4747
  %6109 = fadd fast float %6104, %6083
  %6110 = fmul fast float %6109, %4747
  %6111 = fadd fast float %6106, %6082
  %6112 = fmul fast float %6111, %4747
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6115 = fcmp fast oeq float %6114, 0.000000e+00
  br i1 %6115, label %7260, label %6116

; <label>:6116                                    ; preds = %5997
  %6117 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = select i1 %284, float %6125, float %6121
  %6129 = select i1 %284, float %6127, float %6122
  %6130 = select i1 %284, float %6126, float %6123
  %6131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6132 = extractvalue %dx.types.CBufRet.f32 %6131, 2
  %6133 = fmul fast float %6132, %106
  %6134 = fmul fast float %6132, %107
  %6135 = fmul fast float %6132, %108
  %6136 = fadd fast float %6133, %178
  %6137 = fadd fast float %6134, %179
  %6138 = fadd fast float %6135, %180
  %6139 = fcmp fast olt float %6114, 0.000000e+00
  br i1 %6139, label %6779, label %6140

; <label>:6140                                    ; preds = %6116
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6145 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6150 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6156 = fmul fast float %6142, %6136
  %6157 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6143, float %6156)  ; FMad(a,b,c)
  %6158 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6144, float %6157)  ; FMad(a,b,c)
  %6159 = fadd fast float %6158, %6145
  %6160 = fmul fast float %6147, %6136
  %6161 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6148, float %6160)  ; FMad(a,b,c)
  %6162 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6149, float %6161)  ; FMad(a,b,c)
  %6163 = fadd fast float %6162, %6150
  %6164 = fmul fast float %6152, %6136
  %6165 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6153, float %6164)  ; FMad(a,b,c)
  %6166 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6154, float %6165)  ; FMad(a,b,c)
  %6167 = fadd fast float %6166, %6155
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = fcmp fast une float %6169, 0.000000e+00
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6175 = fmul fast float %6174, %6159
  %6176 = fmul fast float %6174, %6163
  %6177 = fadd fast float %6175, %6172
  %6178 = fadd fast float %6176, %6173
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6183 = fmul fast float %6182, %6159
  %6184 = fmul fast float %6182, %6163
  %6185 = fadd fast float %6183, %6180
  %6186 = fadd fast float %6184, %6181
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6189 = fsub fast float %6188, %6167
  %6190 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6191 = fmul fast float %6189, %6190
  %6192 = fsub fast float 1.000000e+00, %6191
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  br i1 %6170, label %6254, label %6194

; <label>:6194                                    ; preds = %6140
  %6195 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6198 = fadd fast float %6197, %6195
  %6199 = fcmp fast ogt float %6198, 0.000000e+00
  br i1 %6199, label %6200, label %6224

; <label>:6200                                    ; preds = %6194
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = fsub fast float %6185, %6202
  %6205 = fsub fast float %6186, %6203
  %6206 = fcmp fast olt float %6204, 0.000000e+00
  %6207 = fcmp fast olt float %6205, 0.000000e+00
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6212 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6213 = select i1 %6206, float %6209, float %6211
  %6214 = select i1 %6207, float %6210, float %6212
  %6215 = fmul fast float %6213, %6204
  %6216 = fmul fast float %6214, %6205
  %6217 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6218 = call float @dx.op.unary.f32(i32 6, float %6216)  ; FAbs(value)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6220 = call float @dx.op.binary.f32(i32 35, float %6217, float %6218)  ; FMax(a,b)
  %6221 = fsub fast float %6219, %6220
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = fmul fast float %6222, %6193
  br label %6224

; <label>:6224                                    ; preds = %6200, %6194
  %6225 = phi float [ %6223, %6200 ], [ 0.000000e+00, %6194 ]
  %6226 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6228 = fadd fast float %6227, %6226
  %6229 = fcmp fast ogt float %6228, 0.000000e+00
  br i1 %6229, label %6230, label %6254

; <label>:6230                                    ; preds = %6224
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = fsub fast float %6177, %6232
  %6235 = fsub fast float %6178, %6233
  %6236 = fcmp fast olt float %6234, 0.000000e+00
  %6237 = fcmp fast olt float %6235, 0.000000e+00
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6242 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6243 = select i1 %6236, float %6239, float %6241
  %6244 = select i1 %6237, float %6240, float %6242
  %6245 = fmul fast float %6243, %6234
  %6246 = fmul fast float %6244, %6235
  %6247 = call float @dx.op.unary.f32(i32 6, float %6245)  ; FAbs(value)
  %6248 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6250 = call float @dx.op.binary.f32(i32 35, float %6247, float %6248)  ; FMax(a,b)
  %6251 = fsub fast float %6249, %6250
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = fmul fast float %6252, %6193
  br label %6254

; <label>:6254                                    ; preds = %6230, %6224, %6140
  %6255 = phi float [ 0.000000e+00, %6140 ], [ %6253, %6230 ], [ 0.000000e+00, %6224 ]
  %6256 = phi float [ 0.000000e+00, %6140 ], [ %6225, %6230 ], [ %6225, %6224 ]
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = fsub fast float %6159, %6261
  %6264 = fsub fast float %6163, %6262
  %6265 = fcmp fast olt float %6263, 0.000000e+00
  %6266 = fcmp fast olt float %6264, 0.000000e+00
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = select i1 %6265, float %6268, float %6270
  %6273 = select i1 %6266, float %6269, float %6271
  %6274 = fmul fast float %6272, %6263
  %6275 = fmul fast float %6273, %6264
  %6276 = call float @dx.op.unary.f32(i32 6, float %6274)  ; FAbs(value)
  %6277 = call float @dx.op.unary.f32(i32 6, float %6275)  ; FAbs(value)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6279 = call float @dx.op.binary.f32(i32 35, float %6276, float %6277)  ; FMax(a,b)
  %6280 = fsub fast float %6278, %6279
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6281, float %6259)  ; FMin(a,b)
  %6283 = fmul fast float %6282, %6193
  %6284 = fsub fast float %6255, %6283
  %6285 = fsub fast float %6256, %6255
  %6286 = fsub fast float %6285, %6283
  %6287 = call float @dx.op.binary.f32(i32 35, float %6255, float %6256)  ; FMax(a,b)
  %6288 = call float @dx.op.binary.f32(i32 35, float %6283, float %6287)  ; FMax(a,b)
  %6289 = fcmp fast olt float %6288, 1.000000e+00
  br i1 %6289, label %6290, label %6688, !dx.controlflow.hints !86

; <label>:6290                                    ; preds = %6254
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = fcmp fast une float %6292, 0.000000e+00
  br i1 %6293, label %6294, label %6688, !dx.controlflow.hints !87

; <label>:6294                                    ; preds = %6290
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6295, 3
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6300, 3
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6309 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6310 = fmul fast float %6296, %6136
  %6311 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6297, float %6310)  ; FMad(a,b,c)
  %6312 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6298, float %6311)  ; FMad(a,b,c)
  %6313 = fadd fast float %6312, %6299
  %6314 = fmul fast float %6301, %6136
  %6315 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6302, float %6314)  ; FMad(a,b,c)
  %6316 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6303, float %6315)  ; FMad(a,b,c)
  %6317 = fadd fast float %6316, %6304
  %6318 = fmul fast float %6306, %6136
  %6319 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6307, float %6318)  ; FMad(a,b,c)
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6308, float %6319)  ; FMad(a,b,c)
  %6321 = fadd fast float %6320, %6309
  %6322 = fcmp fast oge float %6313, 1.000000e+00
  %6323 = fcmp fast oge float %6317, 1.000000e+00
  %6324 = or i1 %6322, %6323
  %6325 = fcmp fast olt float %6313, 0.000000e+00
  %6326 = fcmp fast olt float %6317, 0.000000e+00
  %6327 = or i1 %6325, %6326
  %6328 = or i1 %6324, %6327
  br i1 %6328, label %6688, label %6329, !dx.controlflow.hints !88

; <label>:6329                                    ; preds = %6294
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.i32 %6334, 2
  %6336 = uitofp i32 %6335 to float
  %6337 = extractvalue %dx.types.CBufRet.i32 %6334, 3
  %6338 = uitofp i32 %6337 to float
  %6339 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6340 = fmul fast float %6339, 2.000000e+00
  %6341 = fsub fast float %6313, %6331
  %6342 = fsub fast float %6317, %6332
  %6343 = fmul fast float %6340, %6341
  %6344 = fmul fast float %6340, %6342
  %6345 = fdiv fast float 1.000000e+00, %6119
  %6346 = fmul fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6348 = fmul fast float %6333, %6138
  %6349 = fmul fast float %6348, %6340
  %6350 = call float @dx.op.unary.f32(i32 6, float %6349)  ; FAbs(value)
  %6351 = call float @dx.op.unary.f32(i32 6, float %6343)  ; FAbs(value)
  %6352 = call float @dx.op.binary.f32(i32 35, float %6350, float %6347)  ; FMax(a,b)
  %6353 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6354 = fmul fast float %6353, 2.000000e+00
  %6355 = call float @dx.op.unary.f32(i32 23, float %6354)  ; Log(value)
  %6356 = call float @dx.op.binary.f32(i32 35, float %6355, float %6336)  ; FMax(a,b)
  %6357 = call float @dx.op.unary.f32(i32 22, float %6356)  ; Frc(value)
  %6358 = fadd fast float %6357, 0xBFEA666660000000
  %6359 = fmul fast float %6358, 8.000000e+00
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = call float @dx.op.unary.f32(i32 27, float %6356)  ; Round_ni(value)
  %6362 = fadd fast float %6361, %6360
  %6363 = call float @dx.op.binary.f32(i32 36, float %6362, float %6338)  ; FMin(a,b)
  %6364 = call float @dx.op.unary.f32(i32 27, float %6363)  ; Round_ni(value)
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = call float @dx.op.unary.f32(i32 21, float %6365)  ; Exp(value)
  %6367 = fmul fast float %6366, %6340
  %6368 = fmul fast float %6367, %6313
  %6369 = fmul fast float %6367, %6317
  %6370 = fmul fast float %6368, 2.500000e-01
  %6371 = fmul fast float %6369, 2.500000e-01
  %6372 = fadd fast float %6370, 5.000000e-01
  %6373 = fadd fast float %6371, 5.000000e-01
  %6374 = fsub fast float %6338, %6336
  %6375 = fptoui float %6374 to i32
  %6376 = add i32 %6375, 320
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %6376)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = fcmp fast une float %6363, %6338
  %6381 = fsub fast float %6313, %6378
  %6382 = fsub fast float %6317, %6379
  %6383 = call float @dx.op.unary.f32(i32 6, float %6381)  ; FAbs(value)
  %6384 = call float @dx.op.unary.f32(i32 6, float %6382)  ; FAbs(value)
  %6385 = fmul fast float %6383, %6367
  %6386 = fmul fast float %6384, %6367
  %6387 = fcmp fast olt float %6385, 1.000000e+00
  %6388 = fcmp fast olt float %6386, 1.000000e+00
  %6389 = and i1 %6387, %6388
  %6390 = or i1 %6380, %6389
  br i1 %6390, label %6391, label %6688, !dx.controlflow.hints !89

; <label>:6391                                    ; preds = %6329
  %6392 = fmul fast float %6369, 5.000000e-01
  %6393 = fmul fast float %6368, 5.000000e-01
  %6394 = fadd fast float %6392, 5.000000e-01
  %6395 = fadd fast float %6393, 5.000000e-01
  %6396 = sitofp i32 %6335 to float
  %6397 = fsub fast float %6363, %6396
  %6398 = call float @dx.op.unary.f32(i32 27, float %6397)  ; Round_ni(value)
  %6399 = call float @dx.op.unary.f32(i32 22, float %6363)  ; Frc(value)
  %6400 = call float @dx.op.unary.f32(i32 22, float %6395)  ; Frc(value)
  %6401 = call float @dx.op.unary.f32(i32 22, float %6394)  ; Frc(value)
  %6402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6400, float %6401, float %6398, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.ResRet.f32 %6402, 3
  %6407 = fcmp fast ogt float %6399, 0.000000e+00
  br i1 %6407, label %6408, label %6429, !dx.controlflow.hints !90

; <label>:6408                                    ; preds = %6391
  %6409 = fadd fast float %6398, 1.000000e+00
  %6410 = call float @dx.op.unary.f32(i32 22, float %6372)  ; Frc(value)
  %6411 = call float @dx.op.unary.f32(i32 22, float %6373)  ; Frc(value)
  %6412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %6410, float %6411, float %6409, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.ResRet.f32 %6412, 1
  %6415 = extractvalue %dx.types.ResRet.f32 %6412, 2
  %6416 = extractvalue %dx.types.ResRet.f32 %6412, 3
  %6417 = fsub fast float %6413, %6403
  %6418 = fsub fast float %6414, %6404
  %6419 = fsub fast float %6415, %6405
  %6420 = fsub fast float %6416, %6406
  %6421 = fmul fast float %6417, %6399
  %6422 = fmul fast float %6418, %6399
  %6423 = fmul fast float %6419, %6399
  %6424 = fmul fast float %6420, %6399
  %6425 = fadd fast float %6421, %6403
  %6426 = fadd fast float %6422, %6404
  %6427 = fadd fast float %6423, %6405
  %6428 = fadd fast float %6424, %6406
  br label %6429

; <label>:6429                                    ; preds = %6408, %6391
  %6430 = phi float [ %6425, %6408 ], [ %6403, %6391 ]
  %6431 = phi float [ %6426, %6408 ], [ %6404, %6391 ]
  %6432 = phi float [ %6427, %6408 ], [ %6405, %6391 ]
  %6433 = phi float [ %6428, %6408 ], [ %6406, %6391 ]
  %6434 = fadd fast float %6430, -5.000000e-01
  %6435 = fadd fast float %6432, -5.000000e-01
  %6436 = fmul fast float %6434, 0xBFD5555560000000
  %6437 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6435, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6431, float 0.000000e+00)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6433
  %6440 = fmul fast float %6434, -7.500000e-01
  %6441 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6435, float %6440)  ; FMad(a,b,c)
  %6442 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6431, float 0.000000e+00)  ; FMad(a,b,c)
  %6443 = fadd fast float %6442, %6433
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6451 = fsub fast float %6447, %6437
  %6452 = fsub fast float %6448, %6439
  %6453 = fsub fast float %6449, %6441
  %6454 = fsub fast float %6450, %6443
  %6455 = fmul fast float %6451, %6445
  %6456 = fmul fast float %6452, %6445
  %6457 = fmul fast float %6453, %6445
  %6458 = fmul fast float %6454, %6445
  %6459 = fadd fast float %6455, %6437
  %6460 = fadd fast float %6456, %6439
  %6461 = fadd fast float %6457, %6441
  %6462 = fadd fast float %6458, %6443
  %6463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.i32 %6463, 0
  %6465 = and i32 %6464, 536870911
  %6466 = uitofp i32 %6465 to float
  %6467 = fmul fast float %6466, %6313
  %6468 = fmul fast float %6466, %6317
  %6469 = fptoui float %6467 to i32
  %6470 = fptoui float %6468 to i32
  %6471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.i32 %6471, 0
  %6473 = and i32 %6472, 31
  %6474 = lshr i32 %6469, %6473
  %6475 = lshr i32 %6470, %6473
  %6476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.i32 %6476, 0
  %6478 = and i32 %6477, 31
  %6479 = shl i32 1, %6478
  %6480 = call i32 @dx.op.binary.i32(i32 40, i32 %6479, i32 4)  ; UMin(a,b)
  %6481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6482 = extractvalue %dx.types.ResRet.i32 %6481, 0
  %6483 = extractvalue %dx.types.ResRet.i32 %6481, 1
  %6484 = icmp eq i32 %6480, 0
  br i1 %6484, label %6526, label %6485

; <label>:6485                                    ; preds = %6429
  br label %6486

; <label>:6486                                    ; preds = %6514, %6485
  %6487 = phi i32 [ %6517, %6514 ], [ 0, %6485 ]
  %6488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.i32 %6488, 0
  %6490 = lshr i32 %6489, 16
  %6491 = and i32 %6490, 31
  %6492 = shl i32 %6475, %6491
  %6493 = add i32 %6492, %6474
  %6494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6495 = extractvalue %dx.types.ResRet.i32 %6494, 0
  %6496 = and i32 %6495, 31
  %6497 = shl i32 %6493, %6496
  %6498 = add i32 %6497, %6487
  %6499 = shl i32 %6498, 2
  %6500 = add i32 %6499, 32
  %6501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6500, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.i32 %6501, 0
  %6503 = icmp slt i32 %6502, 0
  %6504 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6487
  %6505 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6487
  %6506 = bitcast float* %6504 to i32*
  %6507 = bitcast float* %6505 to i32*
  br i1 %6503, label %6508, label %6514

; <label>:6508                                    ; preds = %6486
  %6509 = and i32 %6502, 1073741823
  %6510 = add nuw nsw i32 %6509, 20
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.i32 %6511, 1
  br label %6514

; <label>:6514                                    ; preds = %6508, %6486
  %6515 = phi i32 [ %6512, %6508 ], [ %6482, %6486 ]
  %6516 = phi i32 [ %6513, %6508 ], [ %6483, %6486 ]
  store i32 %6515, i32* %6506, align 4
  store i32 %6516, i32* %6507, align 4
  %6517 = add nuw i32 %6487, 1
  %6518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.i32 %6518, 2
  %6520 = icmp eq i32 %6519, 0
  %6521 = icmp ugt i32 %6502, -1073741825
  %6522 = and i1 %6521, %6520
  %6523 = icmp ult i32 %6517, %6480
  %6524 = and i1 %6522, %6523
  br i1 %6524, label %6486, label %6525

; <label>:6525                                    ; preds = %6514
  br label %6526

; <label>:6526                                    ; preds = %6525, %6429
  %6527 = phi i32 [ 0, %6429 ], [ %6517, %6525 ]
  %6528 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6529 = fptoui float %6528 to i32
  %6530 = icmp eq i32 %6529, 0
  br i1 %6530, label %6582, label %6531

; <label>:6531                                    ; preds = %6526
  br label %6532

; <label>:6532                                    ; preds = %6577, %6531
  %6533 = phi i32 [ %6578, %6577 ], [ %6527, %6531 ]
  %6534 = phi i32 [ %6579, %6577 ], [ 0, %6531 ]
  %6535 = lshr i32 %6534, 2
  %6536 = and i32 %6534, 3
  %6537 = add nuw nsw i32 %6535, 83
  %6538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %6537)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.i32 %6538, 0
  %6540 = extractvalue %dx.types.CBufRet.i32 %6538, 1
  %6541 = extractvalue %dx.types.CBufRet.i32 %6538, 2
  %6542 = extractvalue %dx.types.CBufRet.i32 %6538, 3
  %6543 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %6539, i32* %6543, align 4
  %6544 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %6540, i32* %6544, align 4
  %6545 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %6541, i32* %6545, align 4
  %6546 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %6542, i32* %6546, align 4
  %6547 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %6536
  %6548 = load i32, i32* %6547, align 4, !tbaa !91, !noalias !95
  %6549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6550 = extractvalue %dx.types.ResRet.i32 %6549, 0
  %6551 = lshr i32 %6550, 16
  %6552 = and i32 %6551, 31
  %6553 = shl i32 %6475, %6552
  %6554 = add i32 %6553, %6474
  %6555 = shl i32 %6554, 2
  %6556 = add i32 %6555, %6548
  %6557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6556, i32 undef)  ; BufferLoad(srv,index,wot)
  %6558 = extractvalue %dx.types.ResRet.i32 %6557, 0
  %6559 = icmp eq i32 %6558, 0
  br i1 %6559, label %6577, label %6560

; <label>:6560                                    ; preds = %6532
  %6561 = icmp slt i32 %6558, 0
  %6562 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6533
  %6563 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6533
  %6564 = bitcast float* %6562 to i32*
  %6565 = bitcast float* %6563 to i32*
  br i1 %6561, label %6566, label %6573

; <label>:6566                                    ; preds = %6560
  %6567 = and i32 %6558, 1073741823
  %6568 = add i32 %6548, 20
  %6569 = add i32 %6568, %6567
  %6570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6569, i32 undef)  ; BufferLoad(srv,index,wot)
  %6571 = extractvalue %dx.types.ResRet.i32 %6570, 0
  %6572 = extractvalue %dx.types.ResRet.i32 %6570, 1
  br label %6573

; <label>:6573                                    ; preds = %6566, %6560
  %6574 = phi i32 [ %6571, %6566 ], [ %6482, %6560 ]
  %6575 = phi i32 [ %6572, %6566 ], [ %6483, %6560 ]
  store i32 %6574, i32* %6564, align 4
  store i32 %6575, i32* %6565, align 4
  %6576 = add i32 %6533, 1
  br label %6577

; <label>:6577                                    ; preds = %6573, %6532
  %6578 = phi i32 [ %6533, %6532 ], [ %6576, %6573 ]
  %6579 = add nuw i32 %6534, 1
  %6580 = icmp eq i32 %6579, %6529
  br i1 %6580, label %6581, label %6532

; <label>:6581                                    ; preds = %6577
  br label %6582

; <label>:6582                                    ; preds = %6581, %6526
  %6583 = phi i32 [ %6527, %6526 ], [ %6578, %6581 ]
  %6584 = icmp eq i32 %6583, 1
  %6585 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6586 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6584, label %6587, label %6590

; <label>:6587                                    ; preds = %6582
  %6588 = load float, float* %6585, align 4
  %6589 = load float, float* %6586, align 4
  br label %6617

; <label>:6590                                    ; preds = %6582
  %6591 = load float, float* %6585, align 4
  %6592 = load float, float* %6586, align 4
  %6593 = fdiv fast float 1.000000e+00, %6592
  %6594 = fsub fast float %6591, %6593
  %6595 = icmp ugt i32 %6583, 1
  br i1 %6595, label %6596, label %6612

; <label>:6596                                    ; preds = %6590
  br label %6597

; <label>:6597                                    ; preds = %6597, %6596
  %6598 = phi float [ %6607, %6597 ], [ %6594, %6596 ]
  %6599 = phi float [ %6608, %6597 ], [ %6591, %6596 ]
  %6600 = phi i32 [ %6609, %6597 ], [ 1, %6596 ]
  %6601 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6600
  %6602 = load float, float* %6601, align 4
  %6603 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6600
  %6604 = load float, float* %6603, align 4
  %6605 = fdiv fast float 1.000000e+00, %6604
  %6606 = fsub fast float %6602, %6605
  %6607 = call float @dx.op.binary.f32(i32 36, float %6598, float %6606)  ; FMin(a,b)
  %6608 = call float @dx.op.binary.f32(i32 35, float %6599, float %6602)  ; FMax(a,b)
  %6609 = add nuw i32 %6600, 1
  %6610 = icmp eq i32 %6609, %6583
  br i1 %6610, label %6611, label %6597

; <label>:6611                                    ; preds = %6597
  br label %6612

; <label>:6612                                    ; preds = %6611, %6590
  %6613 = phi float [ %6594, %6590 ], [ %6607, %6611 ]
  %6614 = phi float [ %6591, %6590 ], [ %6608, %6611 ]
  %6615 = fsub fast float %6614, %6613
  %6616 = fdiv fast float 1.000000e+00, %6615
  br label %6617

; <label>:6617                                    ; preds = %6612, %6587
  %6618 = phi float [ %6588, %6587 ], [ %6614, %6612 ]
  %6619 = phi float [ %6589, %6587 ], [ %6616, %6612 ]
  %6620 = fadd fast float %6321, %6618
  %6621 = fmul fast float %6620, %6619
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6623 = fmul fast float %6622, 2.000000e+00
  %6624 = fsub fast float 1.000000e+00, %6623
  %6625 = fmul fast float %6459, %6459
  %6626 = fsub fast float %6460, %6625
  %6627 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6626)  ; FMax(a,b)
  %6628 = fdiv fast float 1.000000e+00, %6627
  %6629 = fmul fast float %6460, %6459
  %6630 = fsub fast float %6461, %6629
  %6631 = fsub fast float %6624, %6459
  %6632 = fmul fast float %6624, %6624
  %6633 = fsub fast float %6632, %6460
  %6634 = fmul fast float %6628, %6630
  %6635 = fmul fast float %6634, %6631
  %6636 = fsub fast float %6633, %6635
  %6637 = fmul fast float %6460, %6460
  %6638 = fsub fast float %6462, %6637
  %6639 = fmul fast float %6630, %6630
  %6640 = fmul fast float %6639, %6628
  %6641 = fsub fast float %6638, %6640
  %6642 = fdiv fast float %6636, %6641
  %6643 = fmul fast float %6642, %6630
  %6644 = fsub fast float %6631, %6643
  %6645 = fmul fast float %6644, %6628
  %6646 = fmul fast float %6645, %6459
  %6647 = fsub fast float 1.000000e+00, %6646
  %6648 = fmul fast float %6642, %6460
  %6649 = fsub fast float %6647, %6648
  %6650 = fmul fast float %6645, %6645
  %6651 = fmul fast float %6642, 4.000000e+00
  %6652 = fmul fast float %6651, %6649
  %6653 = fsub fast float %6650, %6652
  %6654 = call float @dx.op.unary.f32(i32 24, float %6653)  ; Sqrt(value)
  %6655 = fcmp fast oge float %6645, 0.000000e+00
  %6656 = fsub fast float -0.000000e+00, %6654
  %6657 = select i1 %6655, float %6656, float %6654
  %6658 = fsub fast float %6657, %6645
  %6659 = fdiv fast float %6658, %6642
  %6660 = fdiv fast float %6649, %6658
  %6661 = fmul fast float %6659, 5.000000e-01
  %6662 = fmul fast float %6660, 2.000000e+00
  %6663 = select i1 %6655, float %6661, float %6662
  %6664 = select i1 %6655, float %6662, float %6661
  %6665 = call float @dx.op.binary.f32(i32 35, float %6663, float %6664)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 36, float %6663, float %6664)  ; FMin(a,b)
  %6667 = fcmp fast ogt float %6624, %6665
  %6668 = fsub fast float %6624, %6666
  %6669 = fsub fast float %6624, %6665
  %6670 = fsub fast float %6665, %6666
  %6671 = select i1 %6667, float %6669, float %6670
  %6672 = fmul float %6668, %6671
  %6673 = select i1 %6667, float %6666, float %6624
  %6674 = fcmp fast ogt float %6624, %6666
  %6675 = fmul fast float %6673, %6665
  %6676 = fadd fast float %6673, %6665
  %6677 = fmul fast float %6676, %6459
  %6678 = fadd fast float %6675, %6460
  %6679 = fsub fast float %6678, %6677
  %6680 = fdiv fast float %6679, %6672
  %6681 = select i1 %6674, float %6680, float 0.000000e+00
  %6682 = fsub fast float 1.000000e+00, %6681
  %6683 = select i1 %6667, float %6682, float %6681
  %6684 = call float @dx.op.unary.f32(i32 7, float %6683)  ; Saturate(value)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6686 = fmul fast float %6685, %6684
  %6687 = fsub fast float 1.000000e+00, %6686
  br label %6688

; <label>:6688                                    ; preds = %6617, %6329, %6294, %6290, %6254
  %6689 = phi float [ 1.000000e+00, %6254 ], [ %6687, %6617 ], [ 1.000000e+00, %6294 ], [ 1.000000e+00, %6329 ], [ 1.000000e+00, %6290 ]
  %6690 = fcmp fast ogt float %6286, 0.000000e+00
  br i1 %6690, label %6691, label %6699, !dx.controlflow.hints !104

; <label>:6691                                    ; preds = %6688
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6694 = fadd fast float %6693, %6167
  %6695 = call float @dx.op.binary.f32(i32 35, float %6694, float 0.000000e+00)  ; FMax(a,b)
  %6696 = fadd fast float %6695, 0x3F10000000000000
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %6185, float %6186, float undef, float undef, i32 0, i32 0, i32 undef, float %6696)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  br label %6699

; <label>:6699                                    ; preds = %6691, %6688
  %6700 = phi float [ %6698, %6691 ], [ 1.000000e+00, %6688 ]
  %6701 = fcmp fast ogt float %6284, 0.000000e+00
  br i1 %6701, label %6702, label %6710, !dx.controlflow.hints !105

; <label>:6702                                    ; preds = %6699
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6705 = fadd fast float %6704, %6167
  %6706 = call float @dx.op.binary.f32(i32 35, float %6705, float 0.000000e+00)  ; FMax(a,b)
  %6707 = fadd fast float %6706, 0x3F10000000000000
  %6708 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %6177, float %6178, float undef, float undef, i32 0, i32 0, i32 undef, float %6707)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6709 = extractvalue %dx.types.ResRet.f32 %6708, 0
  br label %6710

; <label>:6710                                    ; preds = %6702, %6699
  %6711 = phi float [ %6709, %6702 ], [ 1.000000e+00, %6699 ]
  %6712 = fcmp fast ogt float %6283, 0.000000e+00
  br i1 %6712, label %6713, label %6725, !dx.controlflow.hints !106

; <label>:6713                                    ; preds = %6710
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = fadd fast float %6715, %6167
  %6717 = call float @dx.op.binary.f32(i32 35, float %6716, float 0.000000e+00)  ; FMax(a,b)
  %6718 = fadd fast float %6717, 0x3F10000000000000
  br i1 %6170, label %6719, label %6722, !dx.controlflow.hints !107

; <label>:6719                                    ; preds = %6713
  %6720 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %6159, float %6163, float undef, float undef, i32 0, i32 0, i32 undef, float %6718)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6721 = extractvalue %dx.types.ResRet.f32 %6720, 0
  br label %6725

; <label>:6722                                    ; preds = %6713
  %6723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %6159, float %6163, float undef, float undef, i32 0, i32 0, i32 undef, float %6718)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6724 = extractvalue %dx.types.ResRet.f32 %6723, 0
  br label %6725

; <label>:6725                                    ; preds = %6722, %6719, %6710
  %6726 = phi float [ %6721, %6719 ], [ %6724, %6722 ], [ 1.000000e+00, %6710 ]
  %6727 = fsub fast float %6700, %6689
  %6728 = fmul fast float %6727, %6256
  %6729 = fadd fast float %6728, %6689
  %6730 = fsub fast float %6711, %6729
  %6731 = fmul fast float %6730, %6255
  %6732 = fadd fast float %6731, %6729
  %6733 = fsub fast float %6726, %6732
  %6734 = fmul fast float %6733, %6283
  %6735 = fadd fast float %6734, %6732
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6738 = fcmp fast ogt float %6737, 0.000000e+00
  br i1 %6738, label %6739, label %6779, !dx.controlflow.hints !108

; <label>:6739                                    ; preds = %6725
  %6740 = fcmp fast ugt float %6737, 0.000000e+00
  br i1 %6740, label %6741, label %6776

; <label>:6741                                    ; preds = %6739
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6746 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6752 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6753 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = fadd fast float %6755, %6136
  %6759 = fadd fast float %6756, %6137
  %6760 = fadd fast float %6757, %6138
  %6761 = fmul fast float %6758, %6743
  %6762 = call float @dx.op.tertiary.f32(i32 46, float %6744, float %6759, float %6761)  ; FMad(a,b,c)
  %6763 = call float @dx.op.tertiary.f32(i32 46, float %6745, float %6760, float %6762)  ; FMad(a,b,c)
  %6764 = fadd fast float %6763, %6746
  %6765 = fmul fast float %6758, %6748
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6759, float %6765)  ; FMad(a,b,c)
  %6767 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6760, float %6766)  ; FMad(a,b,c)
  %6768 = fadd fast float %6767, %6751
  %6769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %6764, float %6768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6770 = extractvalue %dx.types.ResRet.f32 %6769, 0
  %6771 = fmul fast float %6770, %6753
  %6772 = fadd fast float %6771, %6752
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = fmul fast float %6773, %6737
  %6775 = fsub fast float 1.000000e+00, %6774
  br label %6776

; <label>:6776                                    ; preds = %6741, %6739
  %6777 = phi float [ %6775, %6741 ], [ 1.000000e+00, %6739 ]
  %6778 = fmul fast float %6777, %6735
  br label %6779

; <label>:6779                                    ; preds = %6776, %6725, %6116
  %6780 = phi float [ 1.000000e+00, %6116 ], [ %6778, %6776 ], [ %6735, %6725 ]
  %6781 = call float @dx.op.binary.f32(i32 36, float %6780, float %6780)  ; FMin(a,b)
  %6782 = call float @dx.op.binary.f32(i32 36, float %6780, float %6781)  ; FMin(a,b)
  %6783 = fcmp fast ogt float %6782, 0.000000e+00
  br i1 %6783, label %6784, label %6945, !dx.controlflow.hints !109

; <label>:6784                                    ; preds = %6779
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = fmul fast float %6786, %6136
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6787, float %6800)  ; FMad(a,b,c)
  %6802 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6788, float %6801)  ; FMad(a,b,c)
  %6803 = fadd fast float %6802, %6789
  %6804 = fmul fast float %6791, %6136
  %6805 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6792, float %6804)  ; FMad(a,b,c)
  %6806 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6793, float %6805)  ; FMad(a,b,c)
  %6807 = fadd fast float %6806, %6794
  %6808 = fmul fast float %6796, %6136
  %6809 = call float @dx.op.tertiary.f32(i32 46, float %6137, float %6797, float %6808)  ; FMad(a,b,c)
  %6810 = call float @dx.op.tertiary.f32(i32 46, float %6138, float %6798, float %6809)  ; FMad(a,b,c)
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6815 = fmul fast float %6814, %6803
  %6816 = fmul fast float %6814, %6807
  %6817 = fadd fast float %6815, %6812
  %6818 = fadd fast float %6816, %6813
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = fsub fast float %6817, %6820
  %6823 = fsub fast float %6818, %6821
  %6824 = fcmp fast olt float %6822, 0.000000e+00
  %6825 = fcmp fast olt float %6823, 0.000000e+00
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = select i1 %6824, float %6827, float %6829
  %6832 = select i1 %6825, float %6828, float %6830
  %6833 = fmul fast float %6831, %6822
  %6834 = fmul fast float %6832, %6823
  %6835 = call float @dx.op.unary.f32(i32 6, float %6833)  ; FAbs(value)
  %6836 = call float @dx.op.unary.f32(i32 6, float %6834)  ; FAbs(value)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6838 = call float @dx.op.binary.f32(i32 35, float %6835, float %6836)  ; FMax(a,b)
  %6839 = fsub fast float %6837, %6838
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = fcmp fast ogt float %6840, 0.000000e+00
  br i1 %6841, label %6842, label %6883, !dx.controlflow.hints !110

; <label>:6842                                    ; preds = %6784
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %6817, float %6818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 1
  %6845 = fcmp fast ogt float %6844, 0.000000e+00
  br i1 %6845, label %6846, label %6878

; <label>:6846                                    ; preds = %6842
  %6847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6817, float %6818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6848 = extractvalue %dx.types.ResRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.ResRet.f32 %6847, 1
  %6850 = extractvalue %dx.types.ResRet.f32 %6847, 2
  %6851 = extractvalue %dx.types.ResRet.f32 %6847, 3
  %6852 = fsub fast float 1.000000e+00, %6799
  %6853 = fsub fast float %6852, %6810
  %6854 = fmul fast float %6853, 0x400921FB60000000
  %6855 = fadd fast float %6854, 0x3FF921FB60000000
  %6856 = call float @dx.op.unary.f32(i32 13, float %6855)  ; Sin(value)
  %6857 = fadd fast float %6856, -1.000000e+00
  %6858 = fmul fast float %6857, 0x3FD45F3060000000
  %6859 = fmul fast float %6853, 0x401921FB60000000
  %6860 = fadd fast float %6859, 0x400921FB60000000
  %6861 = call float @dx.op.unary.f32(i32 13, float %6860)  ; Sin(value)
  %6862 = fadd fast float %6861, 0x3E7777A5C0000000
  %6863 = fmul fast float %6862, 0x3FC45F3060000000
  %6864 = fmul fast float %6853, 0x4022D97C80000000
  %6865 = fadd fast float %6864, 0x4012D97C80000000
  %6866 = call float @dx.op.unary.f32(i32 13, float %6865)  ; Sin(value)
  %6867 = fadd fast float %6866, 1.000000e+00
  %6868 = fmul fast float %6867, 0x3FBB2995E0000000
  %6869 = fmul fast float %6853, 0x402921FB60000000
  %6870 = fadd fast float %6869, 0x401921FB60000000
  %6871 = call float @dx.op.unary.f32(i32 13, float %6870)  ; Sin(value)
  %6872 = fadd fast float %6871, 0xBE8777A5C0000000
  %6873 = fmul fast float %6872, 0x3FB45F3060000000
  %6874 = call float @dx.op.dot4.f32(i32 56, float %6848, float %6849, float %6850, float %6851, float %6858, float %6863, float %6868, float %6873)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6875 = fmul fast float %6874, 0xBFF7154760000000
  %6876 = call float @dx.op.unary.f32(i32 21, float %6875)  ; Exp(value)
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  br label %6878

; <label>:6878                                    ; preds = %6846, %6842
  %6879 = phi float [ %6877, %6846 ], [ 1.000000e+00, %6842 ]
  %6880 = fadd fast float %6879, -1.000000e+00
  %6881 = fmul fast float %6880, %6840
  %6882 = fadd fast float %6881, 1.000000e+00
  br label %6883

; <label>:6883                                    ; preds = %6878, %6784
  %6884 = phi float [ %6882, %6878 ], [ 1.000000e+00, %6784 ]
  %6885 = fmul fast float %6884, %6780
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6890 = fadd fast float %6887, %178
  %6891 = fadd fast float %6888, %179
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6894 = fsub fast float -0.000000e+00, %6890
  %6895 = fsub fast float -0.000000e+00, %6891
  %6896 = fsub fast float -0.000000e+00, %180
  %6897 = fsub fast float %6896, %6889
  %6898 = fadd fast float %6897, %6893
  %6899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6894, float %6895, float %6898)  ; Dot3(ax,ay,az,bx,by,bz)
  %6900 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6117, float %6118, float %6119)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fdiv fast float 1.000000e+00, %6900
  %6902 = fmul fast float %6901, %6899
  %6903 = fmul fast float %6117, %6902
  %6904 = fmul fast float %6118, %6902
  %6905 = fadd fast float %6903, %6890
  %6906 = fadd fast float %6904, %6891
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.CBufRet.f32 %6907, 1
  %6910 = fsub fast float %6905, %6908
  %6911 = fsub fast float %6906, %6909
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6915 = fmul fast float %6910, %6913
  %6916 = fmul fast float %6911, %6914
  %6917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.i32 %6917, 3
  %6919 = icmp eq i32 %6918, 0
  br i1 %6919, label %6925, label %6920

; <label>:6920                                    ; preds = %6883
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6915, float %6916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.ResRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.ResRet.f32 %6921, 2
  br label %6930

; <label>:6925                                    ; preds = %6883
  %6926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6915, float %6916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6927 = extractvalue %dx.types.ResRet.f32 %6926, 0
  %6928 = extractvalue %dx.types.ResRet.f32 %6926, 1
  %6929 = extractvalue %dx.types.ResRet.f32 %6926, 2
  br label %6930

; <label>:6930                                    ; preds = %6925, %6920
  %6931 = phi float [ %6922, %6920 ], [ %6927, %6925 ]
  %6932 = phi float [ %6923, %6920 ], [ %6928, %6925 ]
  %6933 = phi float [ %6924, %6920 ], [ %6929, %6925 ]
  %6934 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6935 = fmul fast float %6934, %6931
  %6936 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6937 = fsub fast float %6902, %6936
  %6938 = fsub fast float %6937, %6935
  %6939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6938)  ; FMax(a,b)
  %6940 = fmul fast float %6939, %6932
  %6941 = call float @dx.op.binary.f32(i32 36, float %6933, float %6940)  ; FMin(a,b)
  %6942 = fmul fast float %6941, 0xBFF7154760000000
  %6943 = call float @dx.op.unary.f32(i32 21, float %6942)  ; Exp(value)
  %6944 = fmul fast float %6885, %6943
  br label %6945

; <label>:6945                                    ; preds = %6930, %6779
  %6946 = phi float [ %6944, %6930 ], [ %6780, %6779 ]
  %6947 = call float @dx.op.binary.f32(i32 36, float %6946, float %6946)  ; FMin(a,b)
  %6948 = call float @dx.op.binary.f32(i32 36, float %6946, float %6947)  ; FMin(a,b)
  %6949 = fcmp fast ogt float %6948, 0.000000e+00
  br i1 %6949, label %6950, label %7260, !dx.controlflow.hints !111

; <label>:6950                                    ; preds = %6945
  %6951 = fmul fast float %6946, %6128
  %6952 = fmul fast float %6946, %6129
  %6953 = fmul fast float %6946, %6130
  %6954 = fsub fast float %6117, %211
  %6955 = fsub fast float %6118, %212
  %6956 = fsub fast float %6119, %213
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6954, float %6955, float %6956, float %6954, float %6955, float %6956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = call float @dx.op.unary.f32(i32 25, float %6957)  ; Rsqrt(value)
  %6959 = fmul fast float %6958, %6954
  %6960 = fmul fast float %6958, %6955
  %6961 = fmul fast float %6958, %6956
  %6962 = call float @dx.op.dot3.f32(i32 55, float %6117, float %6118, float %6119, float %5676, float %5677, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6965 = fmul fast float %6964, %6964
  %6966 = fmul fast float %6965, %5702
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6968 = fmul fast float %6967, %6964
  %6969 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %5678, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = fmul fast float %6969, %6969
  %6971 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6972 = call float @dx.op.binary.f32(i32 35, float %6085, float 0x3F847AE140000000)  ; FMax(a,b)
  %6973 = fmul fast float %6972, %6972
  %6974 = fmul fast float %6973, %6973
  %6975 = fsub fast float 1.000000e+00, %6974
  %6976 = fmul fast float %5689, %5689
  %6977 = fmul fast float %6976, %6975
  %6978 = fadd fast float %6977, %6974
  %6979 = bitcast float %6978 to i32
  %6980 = ashr i32 %6979, 1
  %6981 = add nsw i32 %6980, 532487669
  %6982 = bitcast i32 %6981 to float
  %6983 = fadd fast float %6982, %5689
  %6984 = fmul fast float %6974, %6970
  %6985 = fsub fast float 1.000000e+00, %6970
  %6986 = fadd fast float %6985, %6984
  %6987 = fmul fast float %6971, %6971
  %6988 = fmul fast float %6987, %6975
  %6989 = fadd fast float %6988, %6974
  %6990 = bitcast float %6989 to i32
  %6991 = ashr i32 %6990, 1
  %6992 = add nsw i32 %6991, 532487669
  %6993 = bitcast i32 %6992 to float
  %6994 = fadd fast float %6993, %6971
  %6995 = fmul fast float %6986, %6986
  %6996 = fmul fast float %6995, %6983
  %6997 = fmul fast float %6996, %6994
  %6998 = fdiv fast float 0x3FF0A00000000000, %6997
  %6999 = fmul fast float %6998, %6974
  %7000 = fmul fast float %5947, 0x3FF9999980000000
  %7001 = fsub fast float 5.000000e+00, %7000
  %7002 = call float @dx.op.unary.f32(i32 6, float %6963)  ; FAbs(value)
  %7003 = fsub fast float 1.000000e+00, %7002
  %7004 = fmul fast float %5947, 0x41D9660740000000
  %7005 = fadd fast float %7004, 0xC1EFBF8940000000
  %7006 = bitcast float %7003 to i32
  %7007 = sitofp i32 %7006 to float
  %7008 = fmul fast float %7007, %7001
  %7009 = fadd fast float %7005, %7008
  %7010 = fptosi float %7009 to i32
  %7011 = bitcast i32 %7010 to float
  %7012 = fsub fast float 1.000000e+00, %5679
  %7013 = fsub fast float 1.000000e+00, %5680
  %7014 = fsub fast float 1.000000e+00, %5687
  %7015 = fmul fast float %7011, %7012
  %7016 = fmul fast float %7011, %7013
  %7017 = fmul fast float %7011, %7014
  %7018 = fadd fast float %7015, %5679
  %7019 = fadd fast float %7016, %5680
  %7020 = fadd fast float %7017, %5687
  br i1 %5970, label %7021, label %7044

; <label>:7021                                    ; preds = %6950
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4721, float %7002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = fadd fast float %7023, -5.000000e-01
  %7027 = fadd fast float %7024, -5.000000e-01
  %7028 = fadd fast float %7025, -5.000000e-01
  %7029 = fmul fast float %5679, 4.000000e+00
  %7030 = fmul fast float %7029, %7012
  %7031 = fmul fast float %7030, %7026
  %7032 = fmul fast float %5680, 4.000000e+00
  %7033 = fmul fast float %7032, %7013
  %7034 = fmul fast float %7033, %7027
  %7035 = fmul fast float %5687, 4.000000e+00
  %7036 = fmul fast float %7035, %7014
  %7037 = fmul fast float %7036, %7028
  %7038 = fadd fast float %7031, %7018
  %7039 = fadd fast float %7034, %7019
  %7040 = fadd fast float %7037, %7020
  %7041 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7042 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7043 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  br label %7044

; <label>:7044                                    ; preds = %7021, %6950
  %7045 = phi float [ %7041, %7021 ], [ %7018, %6950 ]
  %7046 = phi float [ %7042, %7021 ], [ %7019, %6950 ]
  %7047 = phi float [ %7043, %7021 ], [ %7020, %6950 ]
  %7048 = fmul fast float %6962, 9.843750e-01
  %7049 = fadd fast float %7048, 7.812500e-03
  %7050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7049, float %5951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7051 = extractvalue %dx.types.ResRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.ResRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.ResRet.f32 %7050, 2
  %7054 = extractvalue %dx.types.ResRet.f32 %7050, 3
  %7055 = fsub fast float %7053, %7051
  %7056 = fsub fast float %7054, %7052
  %7057 = fmul fast float %7055, %5957
  %7058 = fmul fast float %7056, %5957
  %7059 = fadd fast float %7057, %7051
  %7060 = fadd fast float %7058, %7052
  %7061 = fmul fast float %7059, %5679
  %7062 = fmul fast float %7059, %5680
  %7063 = fmul fast float %7059, %5687
  %7064 = fadd fast float %7061, %7060
  %7065 = fadd fast float %7062, %7060
  %7066 = fadd fast float %7063, %7060
  br i1 %5970, label %7067, label %7090

; <label>:7067                                    ; preds = %7044
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4721, float %6962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7071 = extractvalue %dx.types.ResRet.f32 %7068, 2
  %7072 = fadd fast float %7069, -5.000000e-01
  %7073 = fadd fast float %7070, -5.000000e-01
  %7074 = fadd fast float %7071, -5.000000e-01
  %7075 = fmul fast float %5679, 4.000000e+00
  %7076 = fmul fast float %7075, %7012
  %7077 = fmul fast float %7076, %7072
  %7078 = fmul fast float %5680, 4.000000e+00
  %7079 = fmul fast float %7078, %7013
  %7080 = fmul fast float %7079, %7073
  %7081 = fmul fast float %5687, 4.000000e+00
  %7082 = fmul fast float %7081, %7014
  %7083 = fmul fast float %7082, %7074
  %7084 = fadd fast float %7077, %7064
  %7085 = fadd fast float %7080, %7065
  %7086 = fadd fast float %7083, %7066
  %7087 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7088 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7089 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  br label %7090

; <label>:7090                                    ; preds = %7067, %7044
  %7091 = phi float [ %7087, %7067 ], [ %7064, %7044 ]
  %7092 = phi float [ %7088, %7067 ], [ %7065, %7044 ]
  %7093 = phi float [ %7089, %7067 ], [ %7066, %7044 ]
  %7094 = call float @dx.op.binary.f32(i32 35, float %7092, float %7093)  ; FMax(a,b)
  %7095 = call float @dx.op.binary.f32(i32 35, float %7091, float %7094)  ; FMax(a,b)
  %7096 = fsub fast float 1.000000e+00, %7095
  %7097 = call float @dx.op.binary.f32(i32 35, float %6971, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7098 = fdiv fast float %4025, %7097
  %7099 = fmul fast float %6025, %7098
  %7100 = fmul fast float %6027, %7098
  %7101 = fmul fast float %6029, %7098
  %7102 = call float @dx.op.unary.f32(i32 21, float %7099)  ; Exp(value)
  %7103 = call float @dx.op.unary.f32(i32 21, float %7100)  ; Exp(value)
  %7104 = call float @dx.op.unary.f32(i32 21, float %7101)  ; Exp(value)
  %7105 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7106 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7107 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7108 = select i1 %6022, float %7105, float 0.000000e+00
  %7109 = select i1 %6023, float %7106, float 0.000000e+00
  %7110 = select i1 %6024, float %7107, float 0.000000e+00
  %7111 = fsub fast float -0.000000e+00, %5676
  %7112 = fsub fast float -0.000000e+00, %5677
  %7113 = fsub fast float -0.000000e+00, %5678
  %7114 = call float @dx.op.dot3.f32(i32 55, float %6117, float %6118, float %6119, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7115 = call float @dx.op.unary.f32(i32 7, float %7114)  ; Saturate(value)
  %7116 = fmul fast float %7115, 9.843750e-01
  %7117 = fadd fast float %7116, 7.812500e-03
  %7118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %7117, float %5951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.ResRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.ResRet.f32 %7118, 2
  %7122 = extractvalue %dx.types.ResRet.f32 %7118, 3
  %7123 = fsub fast float %7121, %7119
  %7124 = fsub fast float %7122, %7120
  %7125 = fmul fast float %7123, %5957
  %7126 = fmul fast float %7124, %5957
  %7127 = fadd fast float %7125, %7119
  %7128 = fadd fast float %7126, %7120
  %7129 = fmul fast float %7127, %5679
  %7130 = fmul fast float %7127, %5680
  %7131 = fmul fast float %7127, %5687
  %7132 = fadd fast float %7129, %7128
  %7133 = fadd fast float %7130, %7128
  %7134 = fadd fast float %7131, %7128
  br i1 %5970, label %7135, label %7158

; <label>:7135                                    ; preds = %7090
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4721, float %7115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = fadd fast float %7137, -5.000000e-01
  %7141 = fadd fast float %7138, -5.000000e-01
  %7142 = fadd fast float %7139, -5.000000e-01
  %7143 = fmul fast float %5679, 4.000000e+00
  %7144 = fmul fast float %7143, %7012
  %7145 = fmul fast float %7144, %7140
  %7146 = fmul fast float %5680, 4.000000e+00
  %7147 = fmul fast float %7146, %7013
  %7148 = fmul fast float %7147, %7141
  %7149 = fmul fast float %5687, 4.000000e+00
  %7150 = fmul fast float %7149, %7014
  %7151 = fmul fast float %7150, %7142
  %7152 = fadd fast float %7145, %7132
  %7153 = fadd fast float %7148, %7133
  %7154 = fadd fast float %7151, %7134
  %7155 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7156 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7157 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  br label %7158

; <label>:7158                                    ; preds = %7135, %7090
  %7159 = phi float [ %7155, %7135 ], [ %7132, %7090 ]
  %7160 = phi float [ %7156, %7135 ], [ %7133, %7090 ]
  %7161 = phi float [ %7157, %7135 ], [ %7134, %7090 ]
  %7162 = call float @dx.op.binary.f32(i32 35, float %7160, float %7161)  ; FMax(a,b)
  %7163 = call float @dx.op.binary.f32(i32 35, float %7159, float %7162)  ; FMax(a,b)
  %7164 = fsub fast float 1.000000e+00, %7163
  %7165 = fmul fast float %6085, %6090
  %7166 = fadd fast float %6092, %7165
  %7167 = call float @dx.op.unary.f32(i32 7, float %7166)  ; Saturate(value)
  %7168 = fsub fast float %6117, %5695
  %7169 = fsub fast float %6118, %5696
  %7170 = fsub fast float %6119, %5697
  %7171 = call float @dx.op.dot3.f32(i32 55, float %7168, float %7169, float %7170, float %7168, float %7169, float %7170)  ; Dot3(ax,ay,az,bx,by,bz)
  %7172 = call float @dx.op.unary.f32(i32 25, float %7171)  ; Rsqrt(value)
  %7173 = fmul fast float %7172, %7168
  %7174 = fmul fast float %7172, %7169
  %7175 = fmul fast float %7172, %7170
  %7176 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float %7173, float %7174, float %7175)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = fmul fast float %7176, %7176
  %7178 = call float @dx.op.unary.f32(i32 6, float %7115)  ; FAbs(value)
  %7179 = call float @dx.op.binary.f32(i32 35, float %7167, float 0x3F847AE140000000)  ; FMax(a,b)
  %7180 = fmul fast float %7179, %7179
  %7181 = fmul fast float %7180, %7180
  %7182 = fsub fast float 1.000000e+00, %7181
  %7183 = fmul fast float %6976, %7182
  %7184 = fadd fast float %7183, %7181
  %7185 = bitcast float %7184 to i32
  %7186 = ashr i32 %7185, 1
  %7187 = add nsw i32 %7186, 532487669
  %7188 = bitcast i32 %7187 to float
  %7189 = fadd fast float %7188, %5689
  %7190 = fmul fast float %7181, %7177
  %7191 = fsub fast float 1.000000e+00, %7177
  %7192 = fadd fast float %7191, %7190
  %7193 = fmul fast float %7178, %7178
  %7194 = fmul fast float %7193, %7182
  %7195 = fadd fast float %7194, %7181
  %7196 = bitcast float %7195 to i32
  %7197 = ashr i32 %7196, 1
  %7198 = add nsw i32 %7197, 532487669
  %7199 = bitcast i32 %7198 to float
  %7200 = fadd fast float %7199, %7178
  %7201 = fmul fast float %7192, %7192
  %7202 = fmul fast float %7201, %7189
  %7203 = fmul fast float %7202, %7200
  %7204 = fdiv fast float 0x3FF0A00000000000, %7203
  %7205 = fmul fast float %7204, %7181
  %7206 = fmul fast float %7115, %7108
  %7207 = fmul fast float %7115, %7109
  %7208 = fmul fast float %7115, %7110
  %7209 = fmul fast float %7206, %7164
  %7210 = fmul fast float %7209, %7205
  %7211 = fmul fast float %7207, %7164
  %7212 = fmul fast float %7211, %7205
  %7213 = fmul fast float %7208, %7164
  %7214 = fmul fast float %7213, %7205
  %7215 = fmul fast float %7045, %6999
  %7216 = fmul fast float %7046, %6999
  %7217 = fmul fast float %7047, %6999
  %7218 = fsub fast float 1.000000e+00, %6963
  %7219 = bitcast float %7218 to i32
  %7220 = sitofp i32 %7219 to float
  %7221 = fmul fast float %7220, 5.000000e+00
  %7222 = fadd fast float %7221, 0xC1EFBF8940000000
  %7223 = fptosi float %7222 to i32
  %7224 = bitcast i32 %7223 to float
  %7225 = fmul fast float %7224, %4722
  %7226 = fmul fast float %7096, %7225
  %7227 = fmul fast float %7226, %6017
  %7228 = fmul fast float %7226, %6018
  %7229 = fmul fast float %7226, %6019
  %7230 = fadd fast float %7227, %7215
  %7231 = fadd fast float %7228, %7216
  %7232 = fadd fast float %7229, %7217
  %7233 = fmul fast float %7230, %6968
  %7234 = fmul fast float %7231, %6968
  %7235 = fmul fast float %7232, %6968
  %7236 = fmul fast float %6968, %6951
  %7237 = fmul fast float %7236, %7096
  %7238 = fmul fast float %6968, %6952
  %7239 = fmul fast float %7238, %7096
  %7240 = fmul fast float %6968, %6953
  %7241 = fmul fast float %7240, %7096
  %7242 = fadd fast float %7233, %7210
  %7243 = fadd fast float %7234, %7212
  %7244 = fadd fast float %7235, %7214
  %7245 = fmul fast float %7242, %6951
  %7246 = fmul fast float %7243, %6952
  %7247 = fmul fast float %7244, %6953
  %7248 = fadd fast float %7237, %6107
  %7249 = fmul fast float %7248, %4747
  %7250 = fadd fast float %7239, %6109
  %7251 = fmul fast float %7250, %4747
  %7252 = fadd fast float %7241, %6111
  %7253 = fmul fast float %7252, %4747
  %7254 = fadd fast float %7245, %6070
  %7255 = fmul fast float %7254, %4747
  %7256 = fadd fast float %7246, %6073
  %7257 = fmul fast float %7256, %4747
  %7258 = fadd fast float %7247, %6076
  %7259 = fmul fast float %7258, %4747
  br label %7260

; <label>:7260                                    ; preds = %7158, %6945, %5997
  %7261 = phi float [ %6071, %5997 ], [ %6071, %6945 ], [ %7255, %7158 ]
  %7262 = phi float [ %6074, %5997 ], [ %6074, %6945 ], [ %7257, %7158 ]
  %7263 = phi float [ %6077, %5997 ], [ %6077, %6945 ], [ %7259, %7158 ]
  %7264 = phi float [ %6108, %5997 ], [ %6108, %6945 ], [ %7249, %7158 ]
  %7265 = phi float [ %6110, %5997 ], [ %6110, %6945 ], [ %7251, %7158 ]
  %7266 = phi float [ %6112, %5997 ], [ %6112, %6945 ], [ %7253, %7158 ]
  %7267 = fmul fast float %4747, %6046
  %7268 = fsub fast float -0.000000e+00, %7267
  %7269 = fmul fast float %4747, %6047
  %7270 = fsub fast float -0.000000e+00, %7269
  %7271 = fmul fast float %4747, %6048
  %7272 = fsub fast float -0.000000e+00, %7271
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 0
  %7275 = fmul fast float %7274, %6052
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7278 = fsub fast float 1.000000e+00, %4725
  %7279 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7280 = fadd fast float %7266, %4724
  %7281 = fmul fast float %7280, %4725
  %7282 = fmul fast float %7279, %7277
  %7283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %7284 = extractvalue %dx.types.ResRet.i32 %7283, 3
  %7285 = bitcast i32 %7284 to float
  %7286 = fsub fast float %7268, %7285
  %7287 = fsub fast float %7270, %7285
  %7288 = fsub fast float %7272, %7285
  %7289 = fmul fast float %7286, %225
  %7290 = fmul fast float %7287, %225
  %7291 = fmul fast float %7288, %225
  %7292 = fadd fast float %7289, %7285
  %7293 = fadd fast float %7290, %7285
  %7294 = fadd fast float %7291, %7285
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 3
  %7297 = fmul fast float %7264, %5682
  %7298 = fmul fast float %7265, %5683
  %7299 = fmul fast float %7266, %5684
  %7300 = fcmp fast ogt float %90, %245
  %7301 = and i1 %7300, %4815
  %7302 = or i1 %4894, %7301
  %7303 = icmp eq i32 %4814, 2
  %7304 = fcmp fast ole float %90, %245
  %7305 = and i1 %7304, %7303
  %7306 = or i1 %7305, %7302
  br i1 %7301, label %7307, label %7564

; <label>:7307                                    ; preds = %7260
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7310 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7311 = fmul fast float %7309, %99
  %7312 = fmul fast float %7310, %100
  %7313 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7314 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  %7315 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7313, float %7314, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7316 = extractvalue %dx.types.ResRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.ResRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.ResRet.f32 %7315, 2
  %7319 = extractvalue %dx.types.ResRet.f32 %7315, 3
  %7320 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %7313, float %7314, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.ResRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.ResRet.f32 %7320, 2
  %7324 = extractvalue %dx.types.ResRet.f32 %7320, 3
  %7325 = call float @dx.op.binary.f32(i32 35, float %7317, float %7318)  ; FMax(a,b)
  %7326 = call float @dx.op.binary.f32(i32 35, float %7316, float %7325)  ; FMax(a,b)
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float %7319)  ; FMax(a,b)
  %7328 = call float @dx.op.binary.f32(i32 36, float %7322, float %7323)  ; FMin(a,b)
  %7329 = call float @dx.op.binary.f32(i32 36, float %7321, float %7328)  ; FMin(a,b)
  %7330 = call float @dx.op.binary.f32(i32 36, float %7329, float %7324)  ; FMin(a,b)
  %7331 = fmul fast float %7327, 2.550000e+02
  %7332 = fadd fast float %7331, 0x3F70101020000000
  %7333 = fptoui float %7332 to i32
  %7334 = fmul fast float %7330, 2.550000e+02
  %7335 = fadd fast float %7334, 0x3F70101020000000
  %7336 = fptoui float %7335 to i32
  %7337 = icmp ult i32 %7333, %7336
  br i1 %7337, label %7338, label %7506

; <label>:7338                                    ; preds = %7307
  %7339 = fcmp fast ogt float %89, 9.843750e-01
  %7340 = fadd fast float %90, -4.000000e+00
  %7341 = select i1 %7339, float -4.000000e+00, float %7340
  %7342 = call float @dx.op.binary.f32(i32 35, float %7341, float 0.000000e+00)  ; FMax(a,b)
  %7343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.f32 %7343, 0
  %7345 = fadd fast float %7344, %7342
  %7346 = extractvalue %dx.types.CBufRet.f32 %7343, 2
  %7347 = fmul fast float %7345, %7346
  %7348 = call float @dx.op.unary.f32(i32 23, float %7347)  ; Log(value)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7343, 3
  %7350 = fmul fast float %7349, %7348
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7353 = fmul fast float %7350, %7352
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = uitofp i32 %7333 to float
  %7356 = uitofp i32 %7336 to float
  %7357 = fadd fast float %7355, 5.000000e-01
  %7358 = fadd fast float %7356, 5.000000e-01
  %7359 = fmul fast float %7352, %7357
  %7360 = fmul fast float %7352, %7358
  %7361 = fadd fast float %7359, 0x3F0FFB4800000000
  %7362 = fadd fast float %7360, 0xBF0FFB4800000000
  %7363 = call float @dx.op.binary.f32(i32 35, float %7354, float %7361)  ; FMax(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7363, float %7362)  ; FMin(a,b)
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %7367 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7368 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7369 = fmul fast float %7366, %7364
  %7370 = fadd fast float %7368, %7369
  %7371 = fadd fast float %7368, %7367
  %7372 = fsub fast float %7366, %7367
  %7373 = fadd fast float %7372, %7368
  %7374 = call float @dx.op.binary.f32(i32 35, float %7370, float %7371)  ; FMax(a,b)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7374, float %7373)  ; FMin(a,b)
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %7313, float %7314, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.i32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.i32 %7380, 1
  %7383 = uitofp i32 %7381 to float
  %7384 = uitofp i32 %7382 to float
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = fmul fast float %7383, %7313
  %7389 = fmul fast float %7384, %7314
  %7390 = fadd fast float %7388, -5.000000e-01
  %7391 = fadd fast float %7389, -5.000000e-01
  %7392 = call float @dx.op.unary.f32(i32 22, float %7390)  ; Frc(value)
  %7393 = call float @dx.op.unary.f32(i32 22, float %7391)  ; Frc(value)
  %7394 = fmul fast float %7392, %7392
  %7395 = fmul fast float %7394, %7392
  %7396 = fsub fast float 3.000000e+00, %7392
  %7397 = fmul fast float %7394, %7396
  %7398 = fmul fast float %7392, 3.000000e+00
  %7399 = fmul fast float %7395, 3.000000e+00
  %7400 = fmul fast float %7394, 6.000000e+00
  %7401 = fsub fast float %7399, %7400
  %7402 = fadd fast float %7401, 4.000000e+00
  %7403 = fmul fast float %7402, 0x3FC5555560000000
  %7404 = fmul fast float %7395, -3.000000e+00
  %7405 = fadd fast float %7394, %7392
  %7406 = fmul fast float %7405, 3.000000e+00
  %7407 = fadd fast float %7404, 1.000000e+00
  %7408 = fadd fast float %7407, %7406
  %7409 = fmul fast float %7395, 0x3FC5555560000000
  %7410 = fmul fast float %7393, %7393
  %7411 = fmul fast float %7410, %7393
  %7412 = fsub fast float 3.000000e+00, %7393
  %7413 = fmul fast float %7410, %7412
  %7414 = fmul fast float %7393, 3.000000e+00
  %7415 = fmul fast float %7411, 3.000000e+00
  %7416 = fmul fast float %7410, 6.000000e+00
  %7417 = fsub fast float %7415, %7416
  %7418 = fadd fast float %7417, 4.000000e+00
  %7419 = fmul fast float %7418, 0x3FC5555560000000
  %7420 = fmul fast float %7411, -3.000000e+00
  %7421 = fadd fast float %7410, %7393
  %7422 = fmul fast float %7421, 3.000000e+00
  %7423 = fadd fast float %7420, 1.000000e+00
  %7424 = fadd fast float %7423, %7422
  %7425 = fmul fast float %7411, 0x3FC5555560000000
  %7426 = fadd fast float %7392, 1.000000e+00
  %7427 = fsub fast float 1.000000e+00, %7398
  %7428 = fadd fast float %7427, %7397
  %7429 = fadd fast float %7428, %7402
  %7430 = fmul fast float %7429, 0x3FC5555560000000
  %7431 = fdiv fast float %7403, %7430
  %7432 = fsub fast float %7426, %7431
  %7433 = fsub fast float 1.000000e+00, %7392
  %7434 = fadd fast float %7408, %7395
  %7435 = fmul fast float %7434, 0x3FC5555560000000
  %7436 = fdiv fast float %7409, %7435
  %7437 = fadd fast float %7433, %7436
  %7438 = fadd fast float %7393, 1.000000e+00
  %7439 = fsub fast float 1.000000e+00, %7414
  %7440 = fadd fast float %7439, %7413
  %7441 = fadd fast float %7440, %7418
  %7442 = fmul fast float %7441, 0x3FC5555560000000
  %7443 = fdiv fast float %7419, %7442
  %7444 = fsub fast float %7438, %7443
  %7445 = fsub fast float 1.000000e+00, %7393
  %7446 = fadd fast float %7424, %7411
  %7447 = fmul fast float %7446, 0x3FC5555560000000
  %7448 = fdiv fast float %7425, %7447
  %7449 = fadd fast float %7448, %7445
  %7450 = fmul fast float %7432, %7386
  %7451 = fsub fast float %7313, %7450
  %7452 = fmul fast float %7437, %7386
  %7453 = fadd fast float %7452, %7313
  %7454 = fmul fast float %7449, %7387
  %7455 = fadd fast float %7454, %7314
  %7456 = fmul fast float %7444, %7387
  %7457 = fsub fast float %7314, %7456
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7451, float %7457, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7453, float %7457, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.ResRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.ResRet.f32 %7462, 2
  %7466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7451, float %7455, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7467 = extractvalue %dx.types.ResRet.f32 %7466, 0
  %7468 = extractvalue %dx.types.ResRet.f32 %7466, 1
  %7469 = extractvalue %dx.types.ResRet.f32 %7466, 2
  %7470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %7453, float %7455, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7470, 2
  %7474 = fsub fast float %7467, %7459
  %7475 = fsub fast float %7468, %7460
  %7476 = fsub fast float %7469, %7461
  %7477 = fmul fast float %7474, %7447
  %7478 = fmul fast float %7475, %7447
  %7479 = fmul fast float %7476, %7447
  %7480 = fadd fast float %7477, %7459
  %7481 = fadd fast float %7478, %7460
  %7482 = fadd fast float %7479, %7461
  %7483 = fsub fast float %7471, %7463
  %7484 = fsub fast float %7472, %7464
  %7485 = fsub fast float %7473, %7465
  %7486 = fmul fast float %7483, %7447
  %7487 = fmul fast float %7484, %7447
  %7488 = fmul fast float %7485, %7447
  %7489 = fsub fast float %7463, %7480
  %7490 = fadd fast float %7489, %7486
  %7491 = fsub fast float %7464, %7481
  %7492 = fadd fast float %7491, %7487
  %7493 = fsub fast float %7465, %7482
  %7494 = fadd fast float %7493, %7488
  %7495 = fmul fast float %7490, %7435
  %7496 = fmul fast float %7492, %7435
  %7497 = fmul fast float %7494, %7435
  %7498 = fadd fast float %7495, %7480
  %7499 = fadd fast float %7496, %7481
  %7500 = fadd fast float %7497, %7482
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7503 = fmul fast float %7498, %7502
  %7504 = fmul fast float %7499, %7502
  %7505 = fmul fast float %7500, %7502
  br label %7506

; <label>:7506                                    ; preds = %7338, %7307
  %7507 = phi float [ %7377, %7338 ], [ 1.000000e+00, %7307 ]
  %7508 = phi float [ %7378, %7338 ], [ 1.000000e+00, %7307 ]
  %7509 = phi float [ %7379, %7338 ], [ 1.000000e+00, %7307 ]
  %7510 = phi float [ %7503, %7338 ], [ 0.000000e+00, %7307 ]
  %7511 = phi float [ %7504, %7338 ], [ 0.000000e+00, %7307 ]
  %7512 = phi float [ %7505, %7338 ], [ 0.000000e+00, %7307 ]
  %7513 = fmul fast float %7510, %7292
  %7514 = fmul fast float %7511, %7293
  %7515 = fmul fast float %7512, %7294
  %7516 = call float @dx.op.dot3.f32(i32 55, float %7507, float %7508, float %7509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = call float @dx.op.dot3.f32(i32 55, float %7513, float %7514, float %7515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7518 = select i1 %284, float %7516, float %7507
  %7519 = select i1 %284, float %7516, float %7508
  %7520 = select i1 %284, float 1.000000e+00, float %7509
  %7521 = select i1 %284, float %7517, float %7513
  %7522 = select i1 %284, float 0.000000e+00, float %7514
  %7523 = select i1 %284, float 0.000000e+00, float %7515
  %7524 = fmul fast float %7518, %7297
  %7525 = fmul fast float %7519, %7298
  %7526 = fmul fast float %7520, %7299
  %7527 = fadd fast float %7524, %7521
  %7528 = fadd fast float %7525, %7522
  %7529 = fadd fast float %7523, %7526
  %7530 = fmul fast float %7518, %7261
  %7531 = fmul fast float %7519, %7262
  %7532 = fmul fast float %7520, %7263
  %7533 = fmul fast float %127, %7309
  %7534 = fmul fast float %129, %7310
  %7535 = fsub fast float 1.000000e+00, %7533
  %7536 = fsub fast float 1.000000e+00, %7534
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7540 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7541 = fmul fast float %7535, %7538
  %7542 = fmul fast float %7535, %7539
  %7543 = fmul fast float %7535, %7540
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 0
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 1
  %7547 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7548 = fmul fast float %7536, %7545
  %7549 = fmul fast float %7536, %7546
  %7550 = fmul fast float %7536, %7547
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7555 = fadd fast float %7548, %7552
  %7556 = fadd fast float %7555, %7541
  %7557 = fadd fast float %7549, %7553
  %7558 = fadd fast float %7557, %7542
  %7559 = fadd fast float %7550, %7554
  %7560 = fadd fast float %7559, %7543
  %7561 = fmul fast float %7556, %245
  %7562 = fmul fast float %7558, %245
  %7563 = fmul fast float %7560, %245
  br label %7564

; <label>:7564                                    ; preds = %7506, %7260
  %7565 = phi float [ %7561, %7506 ], [ %178, %7260 ]
  %7566 = phi float [ %7562, %7506 ], [ %179, %7260 ]
  %7567 = phi float [ %7563, %7506 ], [ %180, %7260 ]
  %7568 = phi float [ %245, %7506 ], [ %90, %7260 ]
  %7569 = phi float [ %7527, %7506 ], [ %7297, %7260 ]
  %7570 = phi float [ %7528, %7506 ], [ %7298, %7260 ]
  %7571 = phi float [ %7529, %7506 ], [ %7299, %7260 ]
  %7572 = phi float [ %7530, %7506 ], [ %7261, %7260 ]
  %7573 = phi float [ %7531, %7506 ], [ %7262, %7260 ]
  %7574 = phi float [ %7532, %7506 ], [ %7263, %7260 ]
  %7575 = phi float [ %7507, %7506 ], [ 1.000000e+00, %7260 ]
  br i1 %7306, label %8730, label %7576

; <label>:7576                                    ; preds = %7564
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7581 = extractvalue %dx.types.CBufRet.f32 %7577, 3
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.CBufRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.CBufRet.f32 %7582, 2
  %7586 = extractvalue %dx.types.CBufRet.f32 %7582, 3
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = extractvalue %dx.types.CBufRet.f32 %7587, 1
  %7590 = extractvalue %dx.types.CBufRet.f32 %7587, 2
  %7591 = extractvalue %dx.types.CBufRet.f32 %7587, 3
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7596 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 3
  %7601 = extractvalue %dx.types.CBufRet.f32 %7599, 0
  %7602 = extractvalue %dx.types.CBufRet.f32 %7599, 1
  %7603 = extractvalue %dx.types.CBufRet.f32 %7599, 2
  %7604 = fcmp fast olt float %7603, -5.000000e-01
  %7605 = call float @dx.op.dot3.f32(i32 55, float %7565, float %7566, float %7567, float %7565, float %7566, float %7567)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = call float @dx.op.unary.f32(i32 25, float %7605)  ; Rsqrt(value)
  %7607 = fmul fast float %7606, %7605
  %7608 = fmul fast float %7606, %7565
  %7609 = fmul fast float %7606, %7566
  %7610 = fmul fast float %7606, %7567
  %7611 = fadd fast float %7607, %7581
  %7612 = call float @dx.op.dot3.f32(i32 55, float %7608, float %7609, float %7610, float %7578, float %7579, float %7580)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.i32 %7613, 1
  %7615 = and i32 %7614, 1
  %7616 = icmp ne i32 %7615, 0
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7619 = fcmp fast ogt float %7618, 0.000000e+00
  %7620 = and i1 %7616, %7619
  br i1 %7620, label %7621, label %8027, !dx.controlflow.hints !112

; <label>:7621                                    ; preds = %7576
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 2
  %7626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7627 = extractvalue %dx.types.CBufRet.f32 %7626, 2
  %7628 = fsub fast float %7625, %7627
  %7629 = and i32 %7614, 2
  %7630 = extractvalue %dx.types.CBufRet.i32 %7613, 0
  %7631 = call i32 @dx.op.binary.i32(i32 40, i32 %7630, i32 3)  ; UMin(a,b)
  %7632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7632, 0
  %7634 = extractvalue %dx.types.CBufRet.f32 %7632, 1
  %7635 = extractvalue %dx.types.CBufRet.f32 %7626, 0
  %7636 = extractvalue %dx.types.CBufRet.f32 %7626, 1
  %7637 = fsub fast float %7633, %7635
  %7638 = fsub fast float %7634, %7636
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = fcmp fast ogt float %7640, 0.000000e+00
  %7642 = fsub fast float -0.000000e+00, %7637
  %7643 = fsub fast float -0.000000e+00, %7638
  %7644 = call float @dx.op.dot2.f32(i32 54, float %7608, float %7609, float %7608, float %7609)  ; Dot2(ax,ay,bx,by)
  %7645 = call float @dx.op.dot2.f32(i32 54, float %7608, float %7609, float %7642, float %7643)  ; Dot2(ax,ay,bx,by)
  %7646 = fmul fast float %7645, 2.000000e+00
  %7647 = call float @dx.op.dot2.f32(i32 54, float %7642, float %7643, float %7642, float %7643)  ; Dot2(ax,ay,bx,by)
  %7648 = fmul fast float %7640, %7640
  %7649 = fsub fast float %7647, %7648
  %7650 = fmul fast float %7646, %7646
  %7651 = fmul fast float %7644, 4.000000e+00
  %7652 = fmul fast float %7651, %7649
  %7653 = fsub fast float %7650, %7652
  %7654 = fcmp fast ogt float %7653, 0.000000e+00
  br i1 %7654, label %7655, label %7670

; <label>:7655                                    ; preds = %7621
  %7656 = fcmp fast ogt float %7646, 0.000000e+00
  %7657 = call float @dx.op.unary.f32(i32 24, float %7653)  ; Sqrt(value)
  %7658 = fsub fast float -0.000000e+00, %7657
  %7659 = select i1 %7656, float %7657, float %7658
  %7660 = fadd fast float %7659, %7646
  %7661 = fmul float %7660, -5.000000e-01
  %7662 = fdiv fast float %7661, %7644
  %7663 = call float @dx.op.binary.f32(i32 35, float %7662, float 0.000000e+00)  ; FMax(a,b)
  %7664 = call float @dx.op.binary.f32(i32 36, float %7607, float %7663)  ; FMin(a,b)
  %7665 = fdiv fast float %7649, %7661
  %7666 = call float @dx.op.binary.f32(i32 35, float %7665, float 0.000000e+00)  ; FMax(a,b)
  %7667 = call float @dx.op.binary.f32(i32 36, float %7607, float %7666)  ; FMin(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7664, float %7667)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 35, float %7664, float %7667)  ; FMax(a,b)
  br label %7670

; <label>:7670                                    ; preds = %7655, %7621
  %7671 = phi float [ %7669, %7655 ], [ -1.000000e+00, %7621 ]
  %7672 = phi float [ %7668, %7655 ], [ -1.000000e+00, %7621 ]
  %7673 = phi i1 [ true, %7655 ], [ false, %7621 ]
  %7674 = and i1 %7641, %7673
  br i1 %7674, label %7675, label %7677

; <label>:7675                                    ; preds = %7670
  %7676 = fcmp fast oeq float %7672, %7671
  br i1 %7676, label %7980, label %7678

; <label>:7677                                    ; preds = %7670
  br i1 %7641, label %7980, label %7678

; <label>:7678                                    ; preds = %7677, %7675
  %7679 = phi float [ %7607, %7677 ], [ %7671, %7675 ]
  %7680 = phi float [ 0.000000e+00, %7677 ], [ %7672, %7675 ]
  %7681 = icmp ne i32 %7629, 0
  %7682 = fmul fast float %7679, %7610
  %7683 = fadd fast float %7682, %7623
  %7684 = fmul fast float %7683, %7679
  %7685 = select i1 %7681, float 0.000000e+00, float %7684
  %7686 = fcmp fast oeq float %7610, 0.000000e+00
  %7687 = fdiv fast float %7628, %7610
  %7688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7687)  ; FMax(a,b)
  %7689 = select i1 %7686, float %7679, float %7688
  %7690 = call float @dx.op.binary.f32(i32 36, float %7679, float %7689)  ; FMin(a,b)
  %7691 = fcmp fast ogt float %7610, 0.000000e+00
  %7692 = fcmp fast olt float %7628, 0.000000e+00
  br i1 %7691, label %7693, label %7750

; <label>:7693                                    ; preds = %7678
  %7694 = icmp eq i32 %7629, 0
  br i1 %7692, label %7695, label %7739

; <label>:7695                                    ; preds = %7693
  %7696 = select i1 %7694, float %7679, float 0.000000e+00
  %7697 = fsub fast float -0.000000e+00, %7696
  %7698 = call float @dx.op.unary.f32(i32 6, float %7697)  ; FAbs(value)
  %7699 = fmul fast float %7696, %7610
  %7700 = fadd fast float %7699, %7623
  %7701 = fmul fast float %7698, %7700
  %7702 = fsub fast float %7685, %7701
  %7703 = fsub fast float %7679, %7698
  %7704 = select i1 %7694, float %7703, float 0.000000e+00
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 0
  %7707 = extractvalue %dx.types.CBufRet.f32 %7705, 1
  %7708 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.CBufRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.CBufRet.f32 %7709, 2
  %7713 = extractvalue %dx.types.CBufRet.f32 %7709, 3
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 3
  %7716 = call float @dx.op.binary.f32(i32 36, float %7702, float %7715)  ; FMin(a,b)
  %7717 = fmul fast float %7713, %7704
  %7718 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7719 = fsub fast float %7710, %7706
  %7720 = fsub fast float %7711, %7707
  %7721 = fsub fast float %7712, %7708
  %7722 = fmul fast float %7718, %7719
  %7723 = fmul fast float %7718, %7720
  %7724 = fmul fast float %7718, %7721
  %7725 = fadd fast float %7722, %7706
  %7726 = fadd fast float %7723, %7707
  %7727 = fadd fast float %7724, %7708
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 0
  %7730 = extractvalue %dx.types.CBufRet.f32 %7728, 1
  %7731 = fadd fast float %7730, %7729
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7734 = extractvalue %dx.types.CBufRet.f32 %7728, 3
  %7735 = fadd fast float %7734, %7733
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7737 = fmul fast float %7732, %7716
  %7738 = fmul fast float %7737, %7736
  br label %7980

; <label>:7739                                    ; preds = %7693
  br i1 %7694, label %7740, label %7761

; <label>:7740                                    ; preds = %7739
  %7741 = call float @dx.op.binary.f32(i32 36, float %7690, float %7680)  ; FMin(a,b)
  %7742 = fsub fast float %7690, %7741
  %7743 = fsub fast float %7742, %7679
  %7744 = call float @dx.op.unary.f32(i32 6, float %7743)  ; FAbs(value)
  %7745 = fadd fast float %7742, %7679
  %7746 = fmul fast float %7745, %7610
  %7747 = fadd fast float %7746, %7623
  %7748 = fmul fast float %7747, %7744
  %7749 = fsub fast float %7685, %7748
  br label %7761

; <label>:7750                                    ; preds = %7678
  br i1 %7692, label %7751, label %7761

; <label>:7751                                    ; preds = %7750
  %7752 = call float @dx.op.binary.f32(i32 35, float %7680, float %7690)  ; FMax(a,b)
  %7753 = icmp eq i32 %7629, 0
  %7754 = select i1 %7753, float %7690, float 0.000000e+00
  %7755 = fsub fast float -0.000000e+00, %7754
  %7756 = call float @dx.op.unary.f32(i32 6, float %7755)  ; FAbs(value)
  %7757 = fmul fast float %7754, %7610
  %7758 = fadd fast float %7757, %7623
  %7759 = fmul fast float %7756, %7758
  %7760 = fsub fast float %7685, %7759
  br label %7761

; <label>:7761                                    ; preds = %7751, %7750, %7740, %7739
  %7762 = phi float [ %7680, %7739 ], [ %7680, %7740 ], [ %7752, %7751 ], [ %7680, %7750 ]
  %7763 = phi float [ 0.000000e+00, %7739 ], [ %7744, %7740 ], [ %7756, %7751 ], [ 0.000000e+00, %7750 ]
  %7764 = phi float [ %7685, %7739 ], [ %7749, %7740 ], [ %7760, %7751 ], [ %7685, %7750 ]
  %7765 = phi float [ %7690, %7739 ], [ %7690, %7740 ], [ %7679, %7751 ], [ %7679, %7750 ]
  %7766 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7766, align 4, !tbaa !113, !noalias !115
  %7767 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7767, align 4, !tbaa !113, !noalias !115
  %7768 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7768, align 4, !tbaa !113, !noalias !115
  %7769 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7769, align 4, !tbaa !113, !noalias !115
  %7770 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7770, align 4, !tbaa !113, !noalias !115
  %7771 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7771, align 4, !tbaa !113, !noalias !115
  %7772 = icmp sgt i32 %7631, 0
  br i1 %7772, label %7773, label %7834

; <label>:7773                                    ; preds = %7761
  br label %7774

; <label>:7774                                    ; preds = %7823, %7773
  %7775 = phi i32 [ %7824, %7823 ], [ 0, %7773 ]
  %7776 = phi i32 [ %7825, %7823 ], [ 0, %7773 ]
  %7777 = add nuw i32 %7776, 171
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %7777)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 1
  %7784 = fsub fast float %7779, %7782
  %7785 = fsub fast float %7780, %7783
  %7786 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7787 = fsub fast float -0.000000e+00, %7784
  %7788 = fsub fast float -0.000000e+00, %7785
  %7789 = call float @dx.op.dot2.f32(i32 54, float %7608, float %7609, float %7787, float %7788)  ; Dot2(ax,ay,bx,by)
  %7790 = fmul fast float %7789, 2.000000e+00
  %7791 = call float @dx.op.dot2.f32(i32 54, float %7787, float %7788, float %7787, float %7788)  ; Dot2(ax,ay,bx,by)
  %7792 = fmul fast float %7786, %7786
  %7793 = fsub fast float %7791, %7792
  %7794 = fmul fast float %7790, %7790
  %7795 = fmul fast float %7651, %7793
  %7796 = fsub fast float %7794, %7795
  %7797 = fcmp fast ogt float %7796, 0.000000e+00
  br i1 %7797, label %7798, label %7813

; <label>:7798                                    ; preds = %7774
  %7799 = fcmp fast ogt float %7790, 0.000000e+00
  %7800 = call float @dx.op.unary.f32(i32 24, float %7796)  ; Sqrt(value)
  %7801 = fsub fast float -0.000000e+00, %7800
  %7802 = select i1 %7799, float %7800, float %7801
  %7803 = fadd fast float %7802, %7790
  %7804 = fmul float %7803, -5.000000e-01
  %7805 = fdiv fast float %7804, %7644
  %7806 = call float @dx.op.binary.f32(i32 35, float %7805, float 0.000000e+00)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7679, float %7806)  ; FMin(a,b)
  %7808 = fdiv fast float %7793, %7804
  %7809 = call float @dx.op.binary.f32(i32 35, float %7808, float 0.000000e+00)  ; FMax(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7679, float %7809)  ; FMin(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7807, float %7810)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 35, float %7807, float %7810)  ; FMax(a,b)
  br label %7813

; <label>:7813                                    ; preds = %7798, %7774
  %7814 = phi float [ %7812, %7798 ], [ -1.000000e+00, %7774 ]
  %7815 = phi float [ %7811, %7798 ], [ -1.000000e+00, %7774 ]
  %7816 = phi i1 [ true, %7798 ], [ false, %7774 ]
  br i1 %7816, label %7817, label %7823

; <label>:7817                                    ; preds = %7813
  %7818 = call float @dx.op.binary.f32(i32 35, float %7762, float %7815)  ; FMax(a,b)
  %7819 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7776
  store float %7818, float* %7819, align 4, !tbaa !113, !noalias !115
  %7820 = call float @dx.op.binary.f32(i32 35, float %7762, float %7814)  ; FMax(a,b)
  %7821 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7776
  store float %7820, float* %7821, align 4, !tbaa !113, !noalias !115
  %7822 = add nsw i32 %7775, 1
  br label %7823

; <label>:7823                                    ; preds = %7817, %7813
  %7824 = phi i32 [ %7822, %7817 ], [ %7775, %7813 ]
  %7825 = add nuw nsw i32 %7776, 1
  %7826 = icmp eq i32 %7825, %7631
  br i1 %7826, label %7827, label %7774

; <label>:7827                                    ; preds = %7823
  %7828 = load float, float* %7768, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7829 = load float, float* %7767, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %7830 = load float, float* %7766, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %7831 = load float, float* %7771, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7832 = load float, float* %7770, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %7833 = load float, float* %7769, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %7834

; <label>:7834                                    ; preds = %7827, %7761
  %7835 = phi float [ -1.000000e+00, %7761 ], [ %7833, %7827 ]
  %7836 = phi float [ -1.000000e+00, %7761 ], [ %7832, %7827 ]
  %7837 = phi float [ -1.000000e+00, %7761 ], [ %7831, %7827 ]
  %7838 = phi float [ -1.000000e+00, %7761 ], [ %7830, %7827 ]
  %7839 = phi float [ -1.000000e+00, %7761 ], [ %7829, %7827 ]
  %7840 = phi float [ -1.000000e+00, %7761 ], [ %7828, %7827 ]
  %7841 = phi i32 [ 0, %7761 ], [ %7824, %7827 ]
  %7842 = call float @dx.op.binary.f32(i32 36, float %7839, float %7840)  ; FMin(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7838, float %7842)  ; FMin(a,b)
  %7844 = call float @dx.op.binary.f32(i32 35, float %7838, float %7839)  ; FMax(a,b)
  %7845 = call float @dx.op.binary.f32(i32 36, float %7844, float %7840)  ; FMin(a,b)
  %7846 = call float @dx.op.binary.f32(i32 36, float %7838, float %7839)  ; FMin(a,b)
  %7847 = call float @dx.op.binary.f32(i32 35, float %7846, float %7845)  ; FMax(a,b)
  %7848 = call float @dx.op.binary.f32(i32 35, float %7839, float %7840)  ; FMax(a,b)
  %7849 = call float @dx.op.binary.f32(i32 35, float %7838, float %7848)  ; FMax(a,b)
  store float %7843, float* %7766, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %7847, float* %7767, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %7849, float* %7768, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7850 = call float @dx.op.binary.f32(i32 36, float %7836, float %7837)  ; FMin(a,b)
  %7851 = call float @dx.op.binary.f32(i32 36, float %7835, float %7850)  ; FMin(a,b)
  %7852 = call float @dx.op.binary.f32(i32 35, float %7835, float %7836)  ; FMax(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7852, float %7837)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 36, float %7835, float %7836)  ; FMin(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float %7853)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 35, float %7836, float %7837)  ; FMax(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %7835, float %7856)  ; FMax(a,b)
  store float %7851, float* %7769, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %7855, float* %7770, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %7857, float* %7771, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7858 = sub nsw i32 3, %7841
  %7859 = icmp sgt i32 %7858, 2
  br i1 %7859, label %7860, label %7898

; <label>:7860                                    ; preds = %7834
  %7861 = icmp eq i32 %7629, 0
  %7862 = fsub fast float %7679, %7763
  %7863 = select i1 %7861, float %7862, float %7763
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 0
  %7866 = extractvalue %dx.types.CBufRet.f32 %7864, 1
  %7867 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.CBufRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.CBufRet.f32 %7868, 2
  %7872 = extractvalue %dx.types.CBufRet.f32 %7868, 3
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 3
  %7875 = call float @dx.op.binary.f32(i32 36, float %7764, float %7874)  ; FMin(a,b)
  %7876 = fmul fast float %7872, %7863
  %7877 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7878 = fsub fast float %7869, %7865
  %7879 = fsub fast float %7870, %7866
  %7880 = fsub fast float %7871, %7867
  %7881 = fmul fast float %7877, %7878
  %7882 = fmul fast float %7877, %7879
  %7883 = fmul fast float %7877, %7880
  %7884 = fadd fast float %7881, %7865
  %7885 = fadd fast float %7882, %7866
  %7886 = fadd fast float %7883, %7867
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 0
  %7889 = extractvalue %dx.types.CBufRet.f32 %7887, 1
  %7890 = fadd fast float %7889, %7888
  %7891 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7887, 2
  %7893 = extractvalue %dx.types.CBufRet.f32 %7887, 3
  %7894 = fadd fast float %7893, %7892
  %7895 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7896 = fmul fast float %7891, %7875
  %7897 = fmul fast float %7896, %7895
  br label %7980

; <label>:7898                                    ; preds = %7834
  %7899 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7858
  %7900 = load float, float* %7899, align 4, !tbaa !113, !noalias !115
  %7901 = fcmp fast olt float %7900, %7765
  %7902 = icmp sgt i32 %7841, 0
  %7903 = and i1 %7902, %7901
  br i1 %7903, label %7904, label %7941

; <label>:7904                                    ; preds = %7898
  br label %7905

; <label>:7905                                    ; preds = %7934, %7904
  %7906 = phi float [ %7935, %7934 ], [ %7763, %7904 ]
  %7907 = phi float [ %7936, %7934 ], [ %7764, %7904 ]
  %7908 = phi float [ %7916, %7934 ], [ %7900, %7904 ]
  %7909 = phi i32 [ %7913, %7934 ], [ %7858, %7904 ]
  %7910 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7909
  %7911 = load float, float* %7910, align 4, !tbaa !113, !noalias !115
  %7912 = icmp slt i32 %7909, 2
  %7913 = add nsw i32 %7909, 1
  %7914 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7913
  %7915 = load float, float* %7914, align 4, !tbaa !113, !noalias !115
  %7916 = select i1 %7912, float %7915, float %7679
  %7917 = call float @dx.op.binary.f32(i32 36, float %7916, float %7911)  ; FMin(a,b)
  %7918 = call float @dx.op.binary.f32(i32 36, float %7765, float %7917)  ; FMin(a,b)
  %7919 = icmp eq i32 %7629, 0
  %7920 = fadd fast float %7918, %7908
  %7921 = fmul fast float %7920, %7610
  %7922 = fadd fast float %7921, %7623
  br i1 %7919, label %7928, label %7923

; <label>:7923                                    ; preds = %7905
  %7924 = fsub fast float %7918, %7908
  %7925 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7924)  ; FMax(a,b)
  %7926 = fmul fast float %7925, %7922
  %7927 = fadd fast float %7926, %7907
  br label %7934

; <label>:7928                                    ; preds = %7905
  %7929 = fsub fast float %7908, %7918
  %7930 = call float @dx.op.unary.f32(i32 6, float %7929)  ; FAbs(value)
  %7931 = fadd fast float %7930, %7906
  %7932 = fmul fast float %7930, %7922
  %7933 = fsub fast float %7907, %7932
  br label %7934

; <label>:7934                                    ; preds = %7928, %7923
  %7935 = phi float [ %7925, %7923 ], [ %7931, %7928 ]
  %7936 = phi float [ %7927, %7923 ], [ %7933, %7928 ]
  %7937 = fcmp fast olt float %7916, %7765
  %7938 = icmp slt i32 %7913, 3
  %7939 = and i1 %7938, %7937
  br i1 %7939, label %7905, label %7940

; <label>:7940                                    ; preds = %7934
  br label %7941

; <label>:7941                                    ; preds = %7940, %7898
  %7942 = phi float [ %7763, %7898 ], [ %7935, %7940 ]
  %7943 = phi float [ %7764, %7898 ], [ %7936, %7940 ]
  %7944 = fsub fast float %7679, %7942
  %7945 = select i1 %7681, float %7942, float %7944
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.CBufRet.f32 %7946, 1
  %7949 = extractvalue %dx.types.CBufRet.f32 %7946, 2
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.CBufRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.CBufRet.f32 %7950, 2
  %7954 = extractvalue %dx.types.CBufRet.f32 %7950, 3
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 3
  %7957 = call float @dx.op.binary.f32(i32 36, float %7943, float %7956)  ; FMin(a,b)
  %7958 = fmul fast float %7954, %7945
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = fsub fast float %7951, %7947
  %7961 = fsub fast float %7952, %7948
  %7962 = fsub fast float %7953, %7949
  %7963 = fmul fast float %7959, %7960
  %7964 = fmul fast float %7959, %7961
  %7965 = fmul fast float %7959, %7962
  %7966 = fadd fast float %7963, %7947
  %7967 = fadd fast float %7964, %7948
  %7968 = fadd fast float %7965, %7949
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = fadd fast float %7971, %7970
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7969, 2
  %7975 = extractvalue %dx.types.CBufRet.f32 %7969, 3
  %7976 = fadd fast float %7975, %7974
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fmul fast float %7973, %7957
  %7979 = fmul fast float %7978, %7977
  br label %7980

; <label>:7980                                    ; preds = %7941, %7860, %7695, %7677, %7675
  %7981 = phi float [ %7704, %7695 ], [ %7863, %7860 ], [ %7945, %7941 ], [ 0.000000e+00, %7675 ], [ 0.000000e+00, %7677 ]
  %7982 = phi float [ %7738, %7695 ], [ %7897, %7860 ], [ %7979, %7941 ], [ 0.000000e+00, %7675 ], [ 0.000000e+00, %7677 ]
  %7983 = phi float [ %7725, %7695 ], [ %7884, %7860 ], [ %7966, %7941 ], [ 0.000000e+00, %7675 ], [ 0.000000e+00, %7677 ]
  %7984 = phi float [ %7726, %7695 ], [ %7885, %7860 ], [ %7967, %7941 ], [ 0.000000e+00, %7675 ], [ 0.000000e+00, %7677 ]
  %7985 = phi float [ %7727, %7695 ], [ %7886, %7860 ], [ %7968, %7941 ], [ 0.000000e+00, %7675 ], [ 0.000000e+00, %7677 ]
  %7986 = fmul fast float %7618, %7982
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7989 = fsub fast float %7625, %7988
  %7990 = fcmp fast olt float %7986, -2.000000e+01
  %7991 = call float @dx.op.unary.f32(i32 21, float %7986)  ; Exp(value)
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 2
  %7997 = fmul fast float %7994, %7989
  %7998 = call float @dx.op.unary.f32(i32 7, float %7997)  ; Saturate(value)
  %7999 = fsub fast float 1.000000e+00, %7998
  %8000 = fmul fast float %7610, 5.000000e-01
  %8001 = fadd fast float %8000, 5.000000e-01
  %8002 = call float @dx.op.unary.f32(i32 7, float %8001)  ; Saturate(value)
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7999)  ; FMax(a,b)
  %8005 = fdiv fast float %8003, %8004
  %8006 = fsub fast float %7989, %7567
  %8007 = call float @dx.op.unary.f32(i32 6, float %8006)  ; FAbs(value)
  %8008 = fmul fast float %8007, %7993
  %8009 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8010 = fsub fast float 1.000000e+00, %8008
  %8011 = fmul fast float %8010, %8009
  %8012 = fadd fast float %8011, %8008
  %8013 = fmul fast float %7996, %7989
  %8014 = call float @dx.op.unary.f32(i32 7, float %8013)  ; Saturate(value)
  %8015 = fsub fast float 1.000000e+00, %8012
  %8016 = fmul fast float %8015, %8014
  %8017 = fadd fast float %8016, %8012
  %8018 = call float @dx.op.unary.f32(i32 7, float %8017)  ; Saturate(value)
  %8019 = fadd fast float %7991, -1.000000e+00
  %8020 = select i1 %7990, float -1.000000e+00, float %8019
  %8021 = fmul fast float %8018, %8020
  %8022 = fadd fast float %8021, 1.000000e+00
  %8023 = fsub fast float -0.000000e+00, %8021
  %8024 = fmul fast float %7983, %8023
  %8025 = fmul fast float %7984, %8023
  %8026 = fmul fast float %7985, %8023
  br label %8027

; <label>:8027                                    ; preds = %7980, %7576
  %8028 = phi float [ %7981, %7980 ], [ 0.000000e+00, %7576 ]
  %8029 = phi float [ %8022, %7980 ], [ 1.000000e+00, %7576 ]
  %8030 = phi float [ %8024, %7980 ], [ 0.000000e+00, %7576 ]
  %8031 = phi float [ %8025, %7980 ], [ 0.000000e+00, %7576 ]
  %8032 = phi float [ %8026, %7980 ], [ 0.000000e+00, %7576 ]
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 1
  %8035 = fsub fast float 1.000000e+00, %8029
  %8036 = fmul fast float %8035, %7611
  %8037 = fmul fast float %8036, %8034
  %8038 = fsub fast float %7611, %8037
  br i1 %7604, label %8039, label %8068, !dx.controlflow.hints !151

; <label>:8039                                    ; preds = %8027
  %8040 = fmul fast float %7612, %7601
  %8041 = fadd fast float %8040, %7602
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fmul fast float %7583, %8038
  %8044 = fsub fast float -0.000000e+00, %8043
  %8045 = fmul fast float %7584, %8038
  %8046 = fsub fast float -0.000000e+00, %8045
  %8047 = call float @dx.op.unary.f32(i32 21, float %8044)  ; Exp(value)
  %8048 = call float @dx.op.unary.f32(i32 21, float %8046)  ; Exp(value)
  %8049 = call float @dx.op.binary.f32(i32 35, float %7591, float %8047)  ; FMax(a,b)
  %8050 = call float @dx.op.binary.f32(i32 35, float %7591, float %8048)  ; FMax(a,b)
  %8051 = fsub fast float %8050, %8049
  %8052 = fmul fast float %8051, %8042
  %8053 = fadd fast float %8052, %8049
  %8054 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  %8055 = fsub fast float %7588, %7593
  %8056 = fsub fast float %7589, %7594
  %8057 = fsub fast float %7590, %7595
  %8058 = fmul fast float %8042, %8055
  %8059 = fmul fast float %8042, %8056
  %8060 = fmul fast float %8042, %8057
  %8061 = fadd fast float %8058, %7593
  %8062 = fadd fast float %8059, %7594
  %8063 = fadd fast float %8060, %7595
  %8064 = fsub fast float 1.000000e+00, %8054
  %8065 = fmul fast float %8064, %8061
  %8066 = fmul fast float %8064, %8062
  %8067 = fmul fast float %8064, %8063
  br label %8127

; <label>:8068                                    ; preds = %8027
  %8069 = fmul fast float %8038, %7600
  %8070 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  %8071 = fsub fast float 2.000000e+00, %8070
  %8072 = fmul fast float %8070, 9.921875e-01
  %8073 = fmul fast float %8072, %8071
  %8074 = fadd fast float %8073, 3.906250e-03
  %8075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %8074, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8076 = extractvalue %dx.types.ResRet.f32 %8075, 0
  %8077 = fsub fast float %8070, %8076
  %8078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8077)  ; FMax(a,b)
  %8079 = fmul fast float %7586, %7567
  %8080 = call float @dx.op.unary.f32(i32 6, float %8079)  ; FAbs(value)
  %8081 = fcmp fast ogt float %8080, 0x3EB0C6F7A0000000
  br i1 %8081, label %8082, label %8088, !dx.controlflow.hints !152

; <label>:8082                                    ; preds = %8068
  %8083 = fmul fast float %8079, 0xBFF7154760000000
  %8084 = call float @dx.op.unary.f32(i32 21, float %8083)  ; Exp(value)
  %8085 = fsub fast float 1.000000e+00, %8084
  %8086 = fdiv fast float %8085, %8079
  %8087 = fmul fast float %8086, %7596
  br label %8088

; <label>:8088                                    ; preds = %8082, %8068
  %8089 = phi float [ %8087, %8082 ], [ %7596, %8068 ]
  %8090 = fadd fast float %8089, %7598
  %8091 = fmul fast float %8090, %8078
  %8092 = fmul fast float %7583, %8091
  %8093 = fsub fast float -0.000000e+00, %8092
  %8094 = fmul fast float %7584, %8091
  %8095 = fsub fast float -0.000000e+00, %8094
  %8096 = fmul fast float %7585, %8091
  %8097 = fsub fast float -0.000000e+00, %8096
  %8098 = call float @dx.op.unary.f32(i32 21, float %8093)  ; Exp(value)
  %8099 = call float @dx.op.unary.f32(i32 21, float %8095)  ; Exp(value)
  %8100 = call float @dx.op.unary.f32(i32 21, float %8097)  ; Exp(value)
  %8101 = fmul fast float %7612, %7612
  %8102 = fadd fast float %8101, 1.000000e+00
  %8103 = fmul fast float %8102, 0x3FAE8EC8A0000000
  %8104 = fmul fast float %8103, %7593
  %8105 = fmul fast float %8103, %7594
  %8106 = fmul fast float %8103, %7595
  %8107 = fmul fast float %7612, %7591
  %8108 = fsub fast float 1.000000e+00, %8107
  %8109 = fmul fast float %7591, %7591
  %8110 = fsub fast float 1.000000e+00, %8109
  %8111 = fmul fast float %8110, 0x3FB45F3060000000
  %8112 = fmul fast float %8108, %8108
  %8113 = fdiv fast float 1.000000e+00, %8112
  %8114 = fmul fast float %8111, %8113
  %8115 = fmul fast float %8114, %7588
  %8116 = fmul fast float %8114, %7589
  %8117 = fmul fast float %8114, %7590
  %8118 = fadd fast float %8115, %8104
  %8119 = fadd fast float %8116, %8105
  %8120 = fadd fast float %8117, %8106
  %8121 = fsub fast float 1.000000e+00, %8098
  %8122 = fsub fast float 1.000000e+00, %8099
  %8123 = fsub fast float 1.000000e+00, %8100
  %8124 = fmul fast float %8118, %8121
  %8125 = fmul fast float %8119, %8122
  %8126 = fmul fast float %8120, %8123
  br label %8127

; <label>:8127                                    ; preds = %8088, %8039
  %8128 = phi float [ %8065, %8039 ], [ %8124, %8088 ]
  %8129 = phi float [ %8066, %8039 ], [ %8125, %8088 ]
  %8130 = phi float [ %8067, %8039 ], [ %8126, %8088 ]
  %8131 = phi float [ %8054, %8039 ], [ %8098, %8088 ]
  %8132 = phi float [ %8054, %8039 ], [ %8099, %8088 ]
  %8133 = phi float [ %8054, %8039 ], [ %8100, %8088 ]
  br i1 %7620, label %8134, label %8332, !dx.controlflow.hints !153

; <label>:8134                                    ; preds = %8127
  %8135 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8136 = fmul fast float %8135, %8035
  %8137 = fsub fast float %8030, %8128
  %8138 = fsub fast float %8031, %8129
  %8139 = fsub fast float %8032, %8130
  %8140 = fmul fast float %8136, %8137
  %8141 = fmul fast float %8136, %8138
  %8142 = fmul fast float %8136, %8139
  %8143 = fadd fast float %8140, %8128
  %8144 = fadd fast float %8141, %8129
  %8145 = fadd fast float %8142, %8130
  %8146 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8131)  ; FMax(a,b)
  %8147 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8132)  ; FMax(a,b)
  %8148 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8133)  ; FMax(a,b)
  %8149 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8029)  ; FMax(a,b)
  %8150 = call float @dx.op.binary.f32(i32 35, float %8028, float %8038)  ; FMax(a,b)
  %8151 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8150)  ; FMax(a,b)
  %8152 = fdiv fast float %8028, %8151
  %8153 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  %8154 = fdiv fast float %8038, %8151
  %8155 = call float @dx.op.unary.f32(i32 7, float %8154)  ; Saturate(value)
  %8156 = fcmp fast une float %8149, 1.000000e+00
  br i1 %8156, label %8157, label %8170, !dx.controlflow.hints !154

; <label>:8157                                    ; preds = %8134
  %8158 = call float @dx.op.unary.f32(i32 23, float %8149)  ; Log(value)
  %8159 = fmul fast float %8158, 0x3FE62E4300000000
  %8160 = fmul fast float %8030, %8159
  %8161 = fsub fast float -0.000000e+00, %8160
  %8162 = fmul fast float %8031, %8159
  %8163 = fsub fast float -0.000000e+00, %8162
  %8164 = fmul fast float %8032, %8159
  %8165 = fsub fast float -0.000000e+00, %8164
  %8166 = fsub fast float 1.000000e+00, %8149
  %8167 = fdiv fast float %8161, %8166
  %8168 = fdiv fast float %8163, %8166
  %8169 = fdiv fast float %8165, %8166
  br label %8170

; <label>:8170                                    ; preds = %8157, %8134
  %8171 = phi float [ %8167, %8157 ], [ %8030, %8134 ]
  %8172 = phi float [ %8168, %8157 ], [ %8031, %8134 ]
  %8173 = phi float [ %8169, %8157 ], [ %8032, %8134 ]
  %8174 = phi float [ %8159, %8157 ], [ 0.000000e+00, %8134 ]
  %8175 = fcmp fast une float %8146, 1.000000e+00
  br i1 %8175, label %8176, label %8183, !dx.controlflow.hints !155

; <label>:8176                                    ; preds = %8170
  %8177 = call float @dx.op.unary.f32(i32 23, float %8146)  ; Log(value)
  %8178 = fmul fast float %8177, 0x3FE62E4300000000
  %8179 = fmul fast float %8143, %8178
  %8180 = fsub fast float -0.000000e+00, %8179
  %8181 = fsub fast float 1.000000e+00, %8146
  %8182 = fdiv fast float %8180, %8181
  br label %8183

; <label>:8183                                    ; preds = %8176, %8170
  %8184 = phi float [ %8182, %8176 ], [ %8143, %8170 ]
  %8185 = phi float [ %8178, %8176 ], [ 0.000000e+00, %8170 ]
  %8186 = fcmp fast une float %8147, 1.000000e+00
  br i1 %8186, label %8187, label %8194, !dx.controlflow.hints !155

; <label>:8187                                    ; preds = %8183
  %8188 = call float @dx.op.unary.f32(i32 23, float %8147)  ; Log(value)
  %8189 = fmul fast float %8188, 0x3FE62E4300000000
  %8190 = fmul fast float %8144, %8189
  %8191 = fsub fast float -0.000000e+00, %8190
  %8192 = fsub fast float 1.000000e+00, %8147
  %8193 = fdiv fast float %8191, %8192
  br label %8194

; <label>:8194                                    ; preds = %8187, %8183
  %8195 = phi float [ %8193, %8187 ], [ %8144, %8183 ]
  %8196 = phi float [ %8189, %8187 ], [ 0.000000e+00, %8183 ]
  %8197 = fcmp fast une float %8148, 1.000000e+00
  br i1 %8197, label %8198, label %8205, !dx.controlflow.hints !155

; <label>:8198                                    ; preds = %8194
  %8199 = call float @dx.op.unary.f32(i32 23, float %8148)  ; Log(value)
  %8200 = fmul fast float %8199, 0x3FE62E4300000000
  %8201 = fmul fast float %8145, %8200
  %8202 = fsub fast float -0.000000e+00, %8201
  %8203 = fsub fast float 1.000000e+00, %8148
  %8204 = fdiv fast float %8202, %8203
  br label %8205

; <label>:8205                                    ; preds = %8198, %8194
  %8206 = phi float [ %8204, %8198 ], [ %8145, %8194 ]
  %8207 = phi float [ %8200, %8198 ], [ 0.000000e+00, %8194 ]
  %8208 = fmul fast float %8171, %8155
  %8209 = fmul fast float %8172, %8155
  %8210 = fmul fast float %8173, %8155
  %8211 = fmul fast float %8174, %8155
  %8212 = fmul fast float %8184, %8153
  %8213 = fmul fast float %8195, %8153
  %8214 = fmul fast float %8206, %8153
  %8215 = fmul fast float %8185, %8153
  %8216 = fmul fast float %8196, %8153
  %8217 = fmul fast float %8207, %8153
  %8218 = fadd fast float %8212, %8208
  %8219 = fadd fast float %8213, %8209
  %8220 = fadd fast float %8214, %8210
  %8221 = fadd fast float %8215, %8211
  %8222 = fadd fast float %8216, %8211
  %8223 = fadd fast float %8217, %8211
  %8224 = fcmp fast une float %8221, 0.000000e+00
  br i1 %8224, label %8225, label %8232, !dx.controlflow.hints !156

; <label>:8225                                    ; preds = %8205
  %8226 = fmul fast float %8221, 0x3FF7154760000000
  %8227 = call float @dx.op.unary.f32(i32 21, float %8226)  ; Exp(value)
  %8228 = fsub fast float 1.000000e+00, %8227
  %8229 = fmul fast float %8218, %8228
  %8230 = fsub fast float -0.000000e+00, %8229
  %8231 = fdiv fast float %8230, %8221
  br label %8232

; <label>:8232                                    ; preds = %8225, %8205
  %8233 = phi float [ %8227, %8225 ], [ 1.000000e+00, %8205 ]
  %8234 = phi float [ %8231, %8225 ], [ %8218, %8205 ]
  %8235 = fcmp fast une float %8222, 0.000000e+00
  br i1 %8235, label %8236, label %8243, !dx.controlflow.hints !156

; <label>:8236                                    ; preds = %8232
  %8237 = fmul fast float %8222, 0x3FF7154760000000
  %8238 = call float @dx.op.unary.f32(i32 21, float %8237)  ; Exp(value)
  %8239 = fsub fast float 1.000000e+00, %8238
  %8240 = fmul fast float %8219, %8239
  %8241 = fsub fast float -0.000000e+00, %8240
  %8242 = fdiv fast float %8241, %8222
  br label %8243

; <label>:8243                                    ; preds = %8236, %8232
  %8244 = phi float [ %8238, %8236 ], [ 1.000000e+00, %8232 ]
  %8245 = phi float [ %8242, %8236 ], [ %8219, %8232 ]
  %8246 = fcmp fast une float %8223, 0.000000e+00
  br i1 %8246, label %8247, label %8254, !dx.controlflow.hints !156

; <label>:8247                                    ; preds = %8243
  %8248 = fmul fast float %8223, 0x3FF7154760000000
  %8249 = call float @dx.op.unary.f32(i32 21, float %8248)  ; Exp(value)
  %8250 = fsub fast float 1.000000e+00, %8249
  %8251 = fmul fast float %8220, %8250
  %8252 = fsub fast float -0.000000e+00, %8251
  %8253 = fdiv fast float %8252, %8223
  br label %8254

; <label>:8254                                    ; preds = %8247, %8243
  %8255 = phi float [ %8249, %8247 ], [ 1.000000e+00, %8243 ]
  %8256 = phi float [ %8253, %8247 ], [ %8220, %8243 ]
  %8257 = fcmp fast ogt float %8153, %8155
  br i1 %8257, label %8258, label %8278

; <label>:8258                                    ; preds = %8254
  %8259 = fsub fast float 1.000000e+00, %8155
  %8260 = fmul fast float %8171, %8259
  %8261 = fmul fast float %8172, %8259
  %8262 = fmul fast float %8173, %8259
  %8263 = fmul fast float %8174, %8259
  %8264 = fcmp fast une float %8263, 0.000000e+00
  br i1 %8264, label %8265, label %8316, !dx.controlflow.hints !157

; <label>:8265                                    ; preds = %8258
  %8266 = fmul fast float %8263, 0x3FF7154760000000
  %8267 = call float @dx.op.unary.f32(i32 21, float %8266)  ; Exp(value)
  %8268 = fsub fast float 1.000000e+00, %8267
  %8269 = fmul fast float %8260, %8268
  %8270 = fsub fast float -0.000000e+00, %8269
  %8271 = fmul fast float %8261, %8268
  %8272 = fsub fast float -0.000000e+00, %8271
  %8273 = fmul fast float %8262, %8268
  %8274 = fsub fast float -0.000000e+00, %8273
  %8275 = fdiv fast float %8270, %8263
  %8276 = fdiv fast float %8272, %8263
  %8277 = fdiv fast float %8274, %8263
  br label %8316

; <label>:8278                                    ; preds = %8254
  %8279 = fsub fast float 1.000000e+00, %8153
  %8280 = fmul fast float %8184, %8279
  %8281 = fmul fast float %8195, %8279
  %8282 = fmul fast float %8206, %8279
  %8283 = fmul fast float %8185, %8279
  %8284 = fmul fast float %8196, %8279
  %8285 = fmul fast float %8207, %8279
  %8286 = fcmp fast une float %8283, 0.000000e+00
  br i1 %8286, label %8287, label %8294, !dx.controlflow.hints !156

; <label>:8287                                    ; preds = %8278
  %8288 = fmul fast float %8283, 0x3FF7154760000000
  %8289 = call float @dx.op.unary.f32(i32 21, float %8288)  ; Exp(value)
  %8290 = fsub fast float 1.000000e+00, %8289
  %8291 = fmul fast float %8280, %8290
  %8292 = fsub fast float -0.000000e+00, %8291
  %8293 = fdiv fast float %8292, %8283
  br label %8294

; <label>:8294                                    ; preds = %8287, %8278
  %8295 = phi float [ %8293, %8287 ], [ %8280, %8278 ]
  %8296 = phi float [ %8289, %8287 ], [ 1.000000e+00, %8278 ]
  %8297 = fcmp fast une float %8284, 0.000000e+00
  br i1 %8297, label %8298, label %8305, !dx.controlflow.hints !156

; <label>:8298                                    ; preds = %8294
  %8299 = fmul fast float %8284, 0x3FF7154760000000
  %8300 = call float @dx.op.unary.f32(i32 21, float %8299)  ; Exp(value)
  %8301 = fsub fast float 1.000000e+00, %8300
  %8302 = fmul fast float %8281, %8301
  %8303 = fsub fast float -0.000000e+00, %8302
  %8304 = fdiv fast float %8303, %8284
  br label %8305

; <label>:8305                                    ; preds = %8298, %8294
  %8306 = phi float [ %8304, %8298 ], [ %8281, %8294 ]
  %8307 = phi float [ %8300, %8298 ], [ 1.000000e+00, %8294 ]
  %8308 = fcmp fast une float %8285, 0.000000e+00
  br i1 %8308, label %8309, label %8316, !dx.controlflow.hints !156

; <label>:8309                                    ; preds = %8305
  %8310 = fmul fast float %8285, 0x3FF7154760000000
  %8311 = call float @dx.op.unary.f32(i32 21, float %8310)  ; Exp(value)
  %8312 = fsub fast float 1.000000e+00, %8311
  %8313 = fmul fast float %8282, %8312
  %8314 = fsub fast float -0.000000e+00, %8313
  %8315 = fdiv fast float %8314, %8285
  br label %8316

; <label>:8316                                    ; preds = %8309, %8305, %8265, %8258
  %8317 = phi float [ %8315, %8309 ], [ %8277, %8265 ], [ %8262, %8258 ], [ %8282, %8305 ]
  %8318 = phi float [ %8306, %8309 ], [ %8276, %8265 ], [ %8261, %8258 ], [ %8306, %8305 ]
  %8319 = phi float [ %8295, %8309 ], [ %8275, %8265 ], [ %8260, %8258 ], [ %8295, %8305 ]
  %8320 = phi float [ %8311, %8309 ], [ %8267, %8265 ], [ 1.000000e+00, %8258 ], [ 1.000000e+00, %8305 ]
  %8321 = phi float [ %8307, %8309 ], [ %8267, %8265 ], [ 1.000000e+00, %8258 ], [ %8307, %8305 ]
  %8322 = phi float [ %8296, %8309 ], [ %8267, %8265 ], [ 1.000000e+00, %8258 ], [ %8296, %8305 ]
  %8323 = fmul fast float %8322, %8234
  %8324 = fmul fast float %8321, %8245
  %8325 = fmul fast float %8320, %8256
  %8326 = fadd fast float %8323, %8319
  %8327 = fadd fast float %8324, %8318
  %8328 = fadd fast float %8325, %8317
  %8329 = fmul fast float %8322, %8233
  %8330 = fmul fast float %8321, %8244
  %8331 = fmul fast float %8320, %8255
  br label %8332

; <label>:8332                                    ; preds = %8316, %8127
  %8333 = phi float [ %8331, %8316 ], [ %8133, %8127 ]
  %8334 = phi float [ %8330, %8316 ], [ %8132, %8127 ]
  %8335 = phi float [ %8329, %8316 ], [ %8131, %8127 ]
  %8336 = phi float [ %8328, %8316 ], [ %8130, %8127 ]
  %8337 = phi float [ %8327, %8316 ], [ %8129, %8127 ]
  %8338 = phi float [ %8326, %8316 ], [ %8128, %8127 ]
  %8339 = fmul fast float %8338, %7292
  %8340 = fmul fast float %8337, %7293
  %8341 = fmul fast float %8336, %7294
  %8342 = fmul fast float %8335, %7575
  %8343 = call float @dx.op.dot3.f32(i32 55, float %8335, float %8334, float %8333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8344 = call float @dx.op.dot3.f32(i32 55, float %8339, float %8340, float %8341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8345 = select i1 %284, float %8343, float %8335
  %8346 = select i1 %284, float %8343, float %8334
  %8347 = select i1 %284, float 1.000000e+00, float %8333
  %8348 = select i1 %284, float %8344, float %8339
  %8349 = select i1 %284, float 0.000000e+00, float %8340
  %8350 = select i1 %284, float 0.000000e+00, float %8341
  %8351 = fmul fast float %8345, %7569
  %8352 = fmul fast float %8346, %7570
  %8353 = fmul fast float %8347, %7571
  %8354 = fadd fast float %8351, %8348
  %8355 = fadd fast float %8352, %8349
  %8356 = fadd fast float %8350, %8353
  %8357 = fmul fast float %8345, %7572
  %8358 = fmul fast float %8346, %7573
  %8359 = fmul fast float %8347, %7574
  %8360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.i32 %8360, 0
  %8362 = icmp eq i32 %8361, 0
  br i1 %8362, label %8730, label %8363, !dx.controlflow.hints !158

; <label>:8363                                    ; preds = %8332
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8364, 3
  %8367 = fmul fast float %8365, %99
  %8368 = fmul fast float %8366, %100
  %8369 = fmul fast float %8367, 2.000000e+00
  %8370 = fmul fast float %8368, 2.000000e+00
  %8371 = fsub fast float 1.000000e+00, %8369
  %8372 = fsub fast float 1.000000e+00, %8370
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8377 = fmul fast float %8371, %8374
  %8378 = fmul fast float %8371, %8375
  %8379 = fmul fast float %8371, %8376
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8384 = fmul fast float %8372, %8381
  %8385 = fmul fast float %8372, %8382
  %8386 = fmul fast float %8372, %8383
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8391 = fadd fast float %8384, %8388
  %8392 = fadd fast float %8391, %8377
  %8393 = fadd fast float %8385, %8389
  %8394 = fadd fast float %8393, %8378
  %8395 = fadd fast float %8386, %8390
  %8396 = fadd fast float %8395, %8379
  %8397 = fmul fast float %8392, %7568
  %8398 = fmul fast float %8394, %7568
  %8399 = fmul fast float %8396, %7568
  %8400 = fmul fast float %8397, %8397
  %8401 = fmul fast float %8398, %8398
  %8402 = fadd fast float %8400, %8401
  %8403 = fmul fast float %8399, %8399
  %8404 = fadd fast float %8402, %8403
  %8405 = call float @dx.op.unary.f32(i32 24, float %8404)  ; Sqrt(value)
  %8406 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %8407 = fsub fast float %8405, %8406
  %8408 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %8409 = fmul fast float %8407, %8408
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = fadd fast float %8410, -5.000000e-01
  %8412 = fmul fast float %8411, 2.000000e+00
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 2
  %8415 = call float @dx.op.binary.f32(i32 36, float %8414, float %8412)  ; FMin(a,b)
  %8416 = fsub fast float -0.000000e+00, %8414
  %8417 = fcmp fast ogt float %8415, %8416
  br i1 %8417, label %8418, label %8730, !dx.controlflow.hints !159

; <label>:8418                                    ; preds = %8363
  %8419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8419, 3
  %8421 = fcmp fast ogt float %8420, 0.000000e+00
  br i1 %8421, label %8422, label %8497, !dx.controlflow.hints !160

; <label>:8422                                    ; preds = %8418
  %8423 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8424 = extractvalue %dx.types.Dimensions %8423, 0
  %8425 = sitofp i32 %8424 to float
  %8426 = extractvalue %dx.types.Dimensions %8423, 1
  %8427 = sitofp i32 %8426 to float
  %8428 = fmul fast float %8367, %8425
  %8429 = fmul fast float %8368, %8427
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8432 = fsub fast float -0.000000e+00, %8431
  %8433 = fptoui float %8432 to i32
  %8434 = fptoui float %8428 to i32
  %8435 = fptoui float %8429 to i32
  %8436 = and i32 %8433, 31
  %8437 = lshr i32 %8434, %8436
  %8438 = lshr i32 %8435, %8436
  %8439 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8433, i32 %8437, i32 %8438, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8440 = extractvalue %dx.types.ResRet.f32 %8439, 0
  %8441 = fcmp fast olt float %8440, -1.000000e+00
  %8442 = fcmp fast ogt float %8440, -1.000000e+00
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8445 = select i1 %8442, float %8444, float 1.000000e+00
  %8446 = fadd fast float %8440, 1.000000e+00
  %8447 = fmul fast float %8445, %8446
  %8448 = call float @dx.op.unary.f32(i32 6, float %8447)  ; FAbs(value)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8450 = fcmp fast oge float %8448, %8449
  %8451 = select i1 %8450, float 0x4197782600000000, float %8448
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = select i1 %8441, float %8453, float %8374
  %8457 = select i1 %8441, float %8454, float %8375
  %8458 = select i1 %8441, float %8455, float %8376
  %8459 = fmul fast float %8456, %8371
  %8460 = fmul fast float %8457, %8371
  %8461 = fmul fast float %8458, %8371
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.CBufRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.CBufRet.f32 %8462, 2
  %8466 = select i1 %8441, float %8463, float %8381
  %8467 = select i1 %8441, float %8464, float %8382
  %8468 = select i1 %8441, float %8465, float %8383
  %8469 = fmul fast float %8466, %8372
  %8470 = fmul fast float %8467, %8372
  %8471 = fmul fast float %8468, %8372
  %8472 = fadd fast float %8469, %8459
  %8473 = fadd fast float %8470, %8460
  %8474 = fadd fast float %8471, %8461
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = select i1 %8441, float %8476, float %8388
  %8480 = select i1 %8441, float %8477, float %8389
  %8481 = select i1 %8441, float %8478, float %8390
  %8482 = fadd fast float %8472, %8479
  %8483 = fadd fast float %8473, %8480
  %8484 = fadd fast float %8474, %8481
  %8485 = fmul fast float %8482, %8451
  %8486 = fmul fast float %8483, %8451
  %8487 = fmul fast float %8484, %8451
  %8488 = fmul fast float %8485, %8485
  %8489 = fmul fast float %8486, %8486
  %8490 = fadd fast float %8488, %8489
  %8491 = fmul fast float %8487, %8487
  %8492 = fadd fast float %8490, %8491
  %8493 = call float @dx.op.unary.f32(i32 24, float %8492)  ; Sqrt(value)
  %8494 = fsub fast float %8493, %8406
  %8495 = fmul fast float %8494, %8408
  %8496 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  br label %8497

; <label>:8497                                    ; preds = %8422, %8418
  %8498 = phi float [ %8496, %8422 ], [ 1.000000e+00, %8418 ]
  %8499 = fmul fast float %8415, 5.000000e-01
  %8500 = fadd fast float %8499, 5.000000e-01
  %8501 = call float @dx.op.unary.f32(i32 22, float %8500)  ; Frc(value)
  %8502 = call float @dx.op.unary.f32(i32 27, float %8501)  ; Round_ni(value)
  %8503 = call float @dx.op.unary.f32(i32 22, float %8501)  ; Frc(value)
  %8504 = fmul fast float %8503, 2.000000e+00
  %8505 = fadd fast float %8504, -1.000000e+00
  %8506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %8367, float %8368, float %8502, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8507 = extractvalue %dx.types.ResRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.ResRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.ResRet.f32 %8506, 2
  %8510 = extractvalue %dx.types.ResRet.f32 %8506, 3
  %8511 = fadd fast float %8507, -5.000000e-01
  %8512 = fadd fast float %8509, -5.000000e-01
  %8513 = fmul fast float %8511, 0xBFD5555560000000
  %8514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8512, float %8513)  ; FMad(a,b,c)
  %8515 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8508, float 0.000000e+00)  ; FMad(a,b,c)
  %8516 = fadd fast float %8515, %8510
  %8517 = fmul fast float %8511, -7.500000e-01
  %8518 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8512, float %8517)  ; FMad(a,b,c)
  %8519 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8508, float 0.000000e+00)  ; FMad(a,b,c)
  %8520 = fadd fast float %8519, %8510
  %8521 = call float @dx.op.binary.f32(i32 35, float %8514, float -1.000000e+00)  ; FMax(a,b)
  %8522 = call float @dx.op.binary.f32(i32 35, float %8516, float -1.000000e+00)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 35, float %8518, float -1.000000e+00)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 35, float %8520, float -1.000000e+00)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8521, float 1.000000e+00)  ; FMin(a,b)
  %8526 = call float @dx.op.binary.f32(i32 36, float %8522, float 1.000000e+00)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8523, float 1.000000e+00)  ; FMin(a,b)
  %8528 = call float @dx.op.binary.f32(i32 36, float %8524, float 1.000000e+00)  ; FMin(a,b)
  %8529 = fcmp fast olt float %8525, 0x3FEFFF8020000000
  br i1 %8529, label %8530, label %8645, !dx.controlflow.hints !161

; <label>:8530                                    ; preds = %8497
  %8531 = extractvalue %dx.types.CBufRet.f32 %8413, 3
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.CBufRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8532, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8532, 3
  %8537 = fsub fast float %8533, %8525
  %8538 = fsub fast float %8534, %8526
  %8539 = fsub fast float %8535, %8527
  %8540 = fsub fast float %8536, %8528
  %8541 = fmul fast float %8537, %8531
  %8542 = fmul fast float %8538, %8531
  %8543 = fmul fast float %8539, %8531
  %8544 = fmul fast float %8540, %8531
  %8545 = fadd fast float %8541, %8525
  %8546 = fadd fast float %8542, %8526
  %8547 = fsub fast float -0.000000e+00, %8546
  %8548 = fadd fast float %8543, %8527
  %8549 = fadd fast float %8544, %8528
  %8550 = fmul fast float %8545, %8545
  %8551 = fsub fast float %8546, %8550
  %8552 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8551)  ; FMax(a,b)
  %8553 = fdiv fast float 1.000000e+00, %8552
  %8554 = fmul fast float %8546, %8545
  %8555 = fsub fast float %8548, %8554
  %8556 = fsub fast float %8505, %8545
  %8557 = fmul fast float %8505, %8505
  %8558 = fsub fast float %8557, %8546
  %8559 = fmul fast float %8556, %8553
  %8560 = fmul fast float %8559, %8555
  %8561 = fsub fast float %8558, %8560
  %8562 = fmul fast float %8546, %8546
  %8563 = fsub fast float %8549, %8562
  %8564 = fmul fast float %8555, %8555
  %8565 = fmul fast float %8564, %8553
  %8566 = fsub fast float %8563, %8565
  %8567 = fdiv fast float %8561, %8566
  %8568 = fmul fast float %8555, %8567
  %8569 = fsub fast float %8556, %8568
  %8570 = fmul fast float %8569, %8553
  %8571 = fmul fast float %8570, %8545
  %8572 = fsub fast float 1.000000e+00, %8571
  %8573 = fmul fast float %8546, %8567
  %8574 = fsub fast float %8572, %8573
  %8575 = fmul fast float %8570, %8570
  %8576 = fmul fast float %8567, 4.000000e+00
  %8577 = fmul fast float %8576, %8574
  %8578 = fsub fast float %8575, %8577
  %8579 = call float @dx.op.unary.f32(i32 24, float %8578)  ; Sqrt(value)
  %8580 = fcmp fast oge float %8570, 0.000000e+00
  %8581 = fsub fast float -0.000000e+00, %8579
  %8582 = select i1 %8580, float %8581, float %8579
  %8583 = fsub fast float %8582, %8570
  %8584 = fdiv fast float %8583, %8567
  %8585 = fdiv fast float %8574, %8583
  %8586 = fmul fast float %8584, 5.000000e-01
  %8587 = fmul fast float %8585, 2.000000e+00
  %8588 = select i1 %8580, float %8586, float %8587
  %8589 = select i1 %8580, float %8587, float %8586
  %8590 = call float @dx.op.binary.f32(i32 35, float %8588, float %8589)  ; FMax(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8588, float %8589)  ; FMin(a,b)
  %8592 = fcmp fast ogt float %8505, %8591
  br i1 %8592, label %8593, label %8603

; <label>:8593                                    ; preds = %8530
  %8594 = fsub fast float %8505, %8591
  %8595 = fsub fast float %8590, %8591
  %8596 = fmul fast float %8594, %8595
  %8597 = fmul fast float %8590, %8505
  %8598 = fadd fast float %8590, %8505
  %8599 = fmul fast float %8598, %8545
  %8600 = fadd fast float %8597, %8546
  %8601 = fsub fast float %8600, %8599
  %8602 = fdiv fast float %8601, %8596
  br label %8603

; <label>:8603                                    ; preds = %8593, %8530
  %8604 = phi float [ %8602, %8593 ], [ 0.000000e+00, %8530 ]
  %8605 = fcmp fast ogt float %8505, %8590
  %8606 = fsub fast float %8505, %8590
  br i1 %8605, label %8607, label %8617

; <label>:8607                                    ; preds = %8603
  %8608 = fsub fast float %8590, %8591
  %8609 = fmul fast float %8608, %8606
  %8610 = fmul fast float %8591, %8505
  %8611 = fadd fast float %8591, %8505
  %8612 = fmul fast float %8611, %8545
  %8613 = fsub fast float %8547, %8610
  %8614 = fadd fast float %8613, %8612
  %8615 = fdiv fast float %8614, %8609
  %8616 = fadd fast float %8615, %8604
  br label %8617

; <label>:8617                                    ; preds = %8607, %8603
  %8618 = phi float [ %8616, %8607 ], [ %8604, %8603 ]
  %8619 = fsub fast float %8505, %8591
  %8620 = fmul fast float %8619, %8606
  %8621 = fmul fast float %8591, %8590
  %8622 = fadd fast float %8591, %8590
  %8623 = fmul fast float %8622, %8545
  %8624 = fadd fast float %8621, %8546
  %8625 = fsub fast float %8624, %8623
  %8626 = fdiv fast float %8625, %8620
  %8627 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8628 = fcmp fast oeq float %7296, 0.000000e+00
  %8629 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8630 = fcmp fast oeq float %8629, 0.000000e+00
  %8631 = or i1 %8628, %8630
  %8632 = fmul fast float %8629, 2.000000e+00
  %8633 = fadd fast float %8414, %8415
  %8634 = fdiv fast float %8633, %8632
  %8635 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8636 = fmul fast float %8635, 2.000000e+00
  %8637 = fsub fast float 3.000000e+00, %8636
  %8638 = fmul fast float %8635, %8635
  %8639 = fmul fast float %8638, %8637
  %8640 = select i1 %8631, float 1.000000e+00, float %8639
  %8641 = fmul fast float %8626, %7296
  %8642 = fadd fast float %8627, %8641
  %8643 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  %8644 = fmul fast float %8640, %8643
  br label %8645

; <label>:8645                                    ; preds = %8617, %8497
  %8646 = phi float [ %8644, %8617 ], [ 0.000000e+00, %8497 ]
  %8647 = fsub fast float 1.000000e+00, %8646
  %8648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %8367, float %8368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8649 = extractvalue %dx.types.ResRet.f32 %8648, 0
  %8650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.i32 %8650, 2
  %8652 = icmp eq i32 %8651, 0
  br i1 %8652, label %8658, label %8653

; <label>:8653                                    ; preds = %8645
  %8654 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8655 = fadd fast float %8649, -1.000000e+00
  %8656 = fmul fast float %8654, %8655
  %8657 = fadd fast float %8656, 1.000000e+00
  br label %8658

; <label>:8658                                    ; preds = %8653, %8645
  %8659 = phi float [ %8657, %8653 ], [ %8647, %8645 ]
  br i1 %8421, label %8660, label %8678

; <label>:8660                                    ; preds = %8658
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8663 = fsub fast float %8498, %8662
  %8664 = call float @dx.op.unary.f32(i32 7, float %8663)  ; Saturate(value)
  %8665 = fsub fast float %8498, %8420
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fsub fast float %8664, %8666
  %8668 = fsub fast float %8500, %8666
  %8669 = fdiv fast float %8668, %8667
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8671 = fmul fast float %8670, 2.000000e+00
  %8672 = fsub fast float 3.000000e+00, %8671
  %8673 = fsub fast float %8649, %8659
  %8674 = fmul fast float %8670, %8670
  %8675 = fmul fast float %8674, %8673
  %8676 = fmul fast float %8675, %8672
  %8677 = fadd fast float %8676, %8659
  br label %8678

; <label>:8678                                    ; preds = %8660, %8658
  %8679 = phi float [ %8677, %8660 ], [ %8659, %8658 ]
  %8680 = call float @dx.op.binary.f32(i32 35, float %8649, float %8679)  ; FMax(a,b)
  %8681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.i32 %8681, 2
  %8683 = and i32 %8682, 1
  %8684 = icmp eq i32 %8683, 0
  %8685 = fcmp fast une float %8680, 1.000000e+00
  %8686 = and i1 %8685, %8684
  br i1 %8686, label %8687, label %8706

; <label>:8687                                    ; preds = %8678
  %8688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %8367, float %8368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 1
  %8694 = fmul fast float %8693, %8689
  %8695 = fmul fast float %8693, %8690
  %8696 = fmul fast float %8693, %8691
  %8697 = fcmp fast ogt float %8649, 0x3FEFFF2E40000000
  %8698 = fsub fast float 1.000000e+00, %8680
  %8699 = fsub fast float 1.000000e+00, %8649
  %8700 = fdiv fast float %8698, %8699
  %8701 = call float @dx.op.unary.f32(i32 7, float %8700)  ; Saturate(value)
  %8702 = select i1 %8697, float 0.000000e+00, float %8701
  %8703 = fmul fast float %8694, %8702
  %8704 = fmul fast float %8695, %8702
  %8705 = fmul fast float %8696, %8702
  br label %8706

; <label>:8706                                    ; preds = %8687, %8678
  %8707 = phi float [ 0.000000e+00, %8678 ], [ %8703, %8687 ]
  %8708 = phi float [ 0.000000e+00, %8678 ], [ %8704, %8687 ]
  %8709 = phi float [ 0.000000e+00, %8678 ], [ %8705, %8687 ]
  %8710 = fmul fast float %8707, %7292
  %8711 = fmul fast float %8708, %7293
  %8712 = fmul fast float %8709, %7294
  %8713 = fmul fast float %8680, %8342
  %8714 = call float @dx.op.dot3.f32(i32 55, float %8680, float %8680, float %8680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8715 = call float @dx.op.dot3.f32(i32 55, float %8710, float %8711, float %8712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8716 = select i1 %284, float %8714, float %8680
  %8717 = select i1 %284, float 1.000000e+00, float %8680
  %8718 = select i1 %284, float %8715, float %8710
  %8719 = select i1 %284, float 0.000000e+00, float %8711
  %8720 = select i1 %284, float 0.000000e+00, float %8712
  %8721 = fmul fast float %8716, %8354
  %8722 = fmul fast float %8716, %8355
  %8723 = fmul fast float %8717, %8356
  %8724 = fadd fast float %8721, %8718
  %8725 = fadd fast float %8722, %8719
  %8726 = fadd fast float %8720, %8723
  %8727 = fmul fast float %8716, %8357
  %8728 = fmul fast float %8716, %8358
  %8729 = fmul fast float %8717, %8359
  br label %8730

; <label>:8730                                    ; preds = %8706, %8363, %8332, %7564
  %8731 = phi float [ %7569, %7564 ], [ %8354, %8332 ], [ %8724, %8706 ], [ %8354, %8363 ]
  %8732 = phi float [ %7570, %7564 ], [ %8355, %8332 ], [ %8725, %8706 ], [ %8355, %8363 ]
  %8733 = phi float [ %7571, %7564 ], [ %8356, %8332 ], [ %8726, %8706 ], [ %8356, %8363 ]
  %8734 = phi float [ %7572, %7564 ], [ %8357, %8332 ], [ %8727, %8706 ], [ %8357, %8363 ]
  %8735 = phi float [ %7573, %7564 ], [ %8358, %8332 ], [ %8728, %8706 ], [ %8358, %8363 ]
  %8736 = phi float [ %7574, %7564 ], [ %8359, %8332 ], [ %8729, %8706 ], [ %8359, %8363 ]
  %8737 = phi float [ %7575, %7564 ], [ %8342, %8332 ], [ %8713, %8706 ], [ %8342, %8363 ]
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 2
  %8740 = extractvalue %dx.types.CBufRet.f32 %8738, 3
  %8741 = fmul fast float %8739, %99
  %8742 = fmul fast float %8740, %100
  %8743 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8744 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8745 = select i1 %7306, i32 2, i32 0
  %8746 = or i32 %8745, 1
  %8747 = uitofp i32 %8746 to float
  %8748 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8743, float %8744, float %8747, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = extractvalue %dx.types.ResRet.f32 %8748, 1
  %8751 = extractvalue %dx.types.ResRet.f32 %8748, 2
  %8752 = extractvalue %dx.types.ResRet.f32 %8748, 3
  %8753 = add nuw nsw i32 %8745, 2
  %8754 = uitofp i32 %8753 to float
  %8755 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8743, float %8744, float %8754, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8756 = extractvalue %dx.types.ResRet.f32 %8755, 0
  %8757 = extractvalue %dx.types.ResRet.f32 %8755, 1
  %8758 = extractvalue %dx.types.ResRet.f32 %8755, 2
  %8759 = extractvalue %dx.types.ResRet.f32 %8755, 3
  %8760 = call float @dx.op.binary.f32(i32 35, float %8750, float %8751)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8749, float %8760)  ; FMax(a,b)
  %8762 = call float @dx.op.binary.f32(i32 35, float %8761, float %8752)  ; FMax(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8757, float %8758)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8756, float %8763)  ; FMin(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8764, float %8759)  ; FMin(a,b)
  %8766 = fmul fast float %8762, 2.550000e+02
  %8767 = fadd fast float %8766, 0x3F70101020000000
  %8768 = fptoui float %8767 to i32
  %8769 = fmul fast float %8765, 2.550000e+02
  %8770 = fadd fast float %8769, 0x3F70101020000000
  %8771 = fptoui float %8770 to i32
  %8772 = icmp ult i32 %8768, %8771
  br i1 %8772, label %8773, label %8942

; <label>:8773                                    ; preds = %8730
  %8774 = fcmp fast ogt float %89, 9.843750e-01
  %8775 = fadd fast float %7568, -4.000000e+00
  %8776 = select i1 %8774, float -4.000000e+00, float %8775
  %8777 = call float @dx.op.binary.f32(i32 35, float %8776, float 0.000000e+00)  ; FMax(a,b)
  %8778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8778, 0
  %8780 = fadd fast float %8779, %8777
  %8781 = extractvalue %dx.types.CBufRet.f32 %8778, 2
  %8782 = fmul fast float %8780, %8781
  %8783 = call float @dx.op.unary.f32(i32 23, float %8782)  ; Log(value)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8778, 3
  %8785 = fmul fast float %8784, %8783
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %8788 = fmul fast float %8785, %8787
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = uitofp i32 %8768 to float
  %8791 = uitofp i32 %8771 to float
  %8792 = fadd fast float %8790, 5.000000e-01
  %8793 = fadd fast float %8791, 5.000000e-01
  %8794 = fmul fast float %8787, %8792
  %8795 = fmul fast float %8787, %8793
  %8796 = fadd fast float %8794, 0x3F0FFB4800000000
  %8797 = fadd fast float %8795, 0xBF0FFB4800000000
  %8798 = call float @dx.op.binary.f32(i32 35, float %8789, float %8796)  ; FMax(a,b)
  %8799 = call float @dx.op.binary.f32(i32 36, float %8798, float %8797)  ; FMin(a,b)
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8802 = extractvalue %dx.types.CBufRet.f32 %8800, 2
  %8803 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %8804 = select i1 %7306, float %8803, float 0.000000e+00
  %8805 = fmul fast float %8801, %8799
  %8806 = fadd fast float %8804, %8805
  %8807 = fadd fast float %8804, %8802
  %8808 = fsub fast float %8801, %8802
  %8809 = fadd fast float %8808, %8804
  %8810 = call float @dx.op.binary.f32(i32 35, float %8806, float %8807)  ; FMax(a,b)
  %8811 = call float @dx.op.binary.f32(i32 36, float %8810, float %8809)  ; FMin(a,b)
  %8812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %8743, float %8744, float %8811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8813 = extractvalue %dx.types.ResRet.f32 %8812, 0
  %8814 = extractvalue %dx.types.ResRet.f32 %8812, 1
  %8815 = extractvalue %dx.types.ResRet.f32 %8812, 2
  %8816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.i32 %8816, 0
  %8818 = extractvalue %dx.types.CBufRet.i32 %8816, 1
  %8819 = uitofp i32 %8817 to float
  %8820 = uitofp i32 %8818 to float
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.CBufRet.f32 %8821, 1
  %8824 = fmul fast float %8819, %8743
  %8825 = fmul fast float %8820, %8744
  %8826 = fadd fast float %8824, -5.000000e-01
  %8827 = fadd fast float %8825, -5.000000e-01
  %8828 = call float @dx.op.unary.f32(i32 22, float %8826)  ; Frc(value)
  %8829 = call float @dx.op.unary.f32(i32 22, float %8827)  ; Frc(value)
  %8830 = fmul fast float %8828, %8828
  %8831 = fmul fast float %8830, %8828
  %8832 = fsub fast float 3.000000e+00, %8828
  %8833 = fmul fast float %8830, %8832
  %8834 = fmul fast float %8828, 3.000000e+00
  %8835 = fmul fast float %8831, 3.000000e+00
  %8836 = fmul fast float %8830, 6.000000e+00
  %8837 = fsub fast float %8835, %8836
  %8838 = fadd fast float %8837, 4.000000e+00
  %8839 = fmul fast float %8838, 0x3FC5555560000000
  %8840 = fmul fast float %8831, -3.000000e+00
  %8841 = fadd fast float %8830, %8828
  %8842 = fmul fast float %8841, 3.000000e+00
  %8843 = fadd fast float %8840, 1.000000e+00
  %8844 = fadd fast float %8843, %8842
  %8845 = fmul fast float %8831, 0x3FC5555560000000
  %8846 = fmul fast float %8829, %8829
  %8847 = fmul fast float %8846, %8829
  %8848 = fsub fast float 3.000000e+00, %8829
  %8849 = fmul fast float %8846, %8848
  %8850 = fmul fast float %8829, 3.000000e+00
  %8851 = fmul fast float %8847, 3.000000e+00
  %8852 = fmul fast float %8846, 6.000000e+00
  %8853 = fsub fast float %8851, %8852
  %8854 = fadd fast float %8853, 4.000000e+00
  %8855 = fmul fast float %8854, 0x3FC5555560000000
  %8856 = fmul fast float %8847, -3.000000e+00
  %8857 = fadd fast float %8846, %8829
  %8858 = fmul fast float %8857, 3.000000e+00
  %8859 = fadd fast float %8856, 1.000000e+00
  %8860 = fadd fast float %8859, %8858
  %8861 = fmul fast float %8847, 0x3FC5555560000000
  %8862 = fadd fast float %8828, 1.000000e+00
  %8863 = fsub fast float 1.000000e+00, %8834
  %8864 = fadd fast float %8863, %8833
  %8865 = fadd fast float %8864, %8838
  %8866 = fmul fast float %8865, 0x3FC5555560000000
  %8867 = fdiv fast float %8839, %8866
  %8868 = fsub fast float %8862, %8867
  %8869 = fsub fast float 1.000000e+00, %8828
  %8870 = fadd fast float %8844, %8831
  %8871 = fmul fast float %8870, 0x3FC5555560000000
  %8872 = fdiv fast float %8845, %8871
  %8873 = fadd fast float %8869, %8872
  %8874 = fadd fast float %8829, 1.000000e+00
  %8875 = fsub fast float 1.000000e+00, %8850
  %8876 = fadd fast float %8875, %8849
  %8877 = fadd fast float %8876, %8854
  %8878 = fmul fast float %8877, 0x3FC5555560000000
  %8879 = fdiv fast float %8855, %8878
  %8880 = fsub fast float %8874, %8879
  %8881 = fsub fast float 1.000000e+00, %8829
  %8882 = fadd fast float %8860, %8847
  %8883 = fmul fast float %8882, 0x3FC5555560000000
  %8884 = fdiv fast float %8861, %8883
  %8885 = fadd fast float %8884, %8881
  %8886 = fmul fast float %8868, %8822
  %8887 = fsub fast float %8743, %8886
  %8888 = fmul fast float %8873, %8822
  %8889 = fadd fast float %8888, %8743
  %8890 = fmul fast float %8885, %8823
  %8891 = fadd fast float %8890, %8744
  %8892 = fmul fast float %8880, %8823
  %8893 = fsub fast float %8744, %8892
  %8894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8887, float %8893, float %8811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8895 = extractvalue %dx.types.ResRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.ResRet.f32 %8894, 1
  %8897 = extractvalue %dx.types.ResRet.f32 %8894, 2
  %8898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8889, float %8893, float %8811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8899 = extractvalue %dx.types.ResRet.f32 %8898, 0
  %8900 = extractvalue %dx.types.ResRet.f32 %8898, 1
  %8901 = extractvalue %dx.types.ResRet.f32 %8898, 2
  %8902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8887, float %8891, float %8811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8903 = extractvalue %dx.types.ResRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.ResRet.f32 %8902, 1
  %8905 = extractvalue %dx.types.ResRet.f32 %8902, 2
  %8906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8889, float %8891, float %8811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8907 = extractvalue %dx.types.ResRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.ResRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.ResRet.f32 %8906, 2
  %8910 = fsub fast float %8903, %8895
  %8911 = fsub fast float %8904, %8896
  %8912 = fsub fast float %8905, %8897
  %8913 = fmul fast float %8910, %8883
  %8914 = fmul fast float %8911, %8883
  %8915 = fmul fast float %8912, %8883
  %8916 = fadd fast float %8913, %8895
  %8917 = fadd fast float %8914, %8896
  %8918 = fadd fast float %8915, %8897
  %8919 = fsub fast float %8907, %8899
  %8920 = fsub fast float %8908, %8900
  %8921 = fsub fast float %8909, %8901
  %8922 = fmul fast float %8919, %8883
  %8923 = fmul fast float %8920, %8883
  %8924 = fmul fast float %8921, %8883
  %8925 = fsub fast float %8899, %8916
  %8926 = fadd fast float %8925, %8922
  %8927 = fsub fast float %8900, %8917
  %8928 = fadd fast float %8927, %8923
  %8929 = fsub fast float %8901, %8918
  %8930 = fadd fast float %8929, %8924
  %8931 = fmul fast float %8926, %8871
  %8932 = fmul fast float %8928, %8871
  %8933 = fmul fast float %8930, %8871
  %8934 = fadd fast float %8931, %8916
  %8935 = fadd fast float %8932, %8917
  %8936 = fadd fast float %8933, %8918
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 1
  %8939 = fmul fast float %8934, %8938
  %8940 = fmul fast float %8935, %8938
  %8941 = fmul fast float %8936, %8938
  br label %8942

; <label>:8942                                    ; preds = %8773, %8730
  %8943 = phi float [ %8813, %8773 ], [ 1.000000e+00, %8730 ]
  %8944 = phi float [ %8814, %8773 ], [ 1.000000e+00, %8730 ]
  %8945 = phi float [ %8815, %8773 ], [ 1.000000e+00, %8730 ]
  %8946 = phi float [ %8939, %8773 ], [ 0.000000e+00, %8730 ]
  %8947 = phi float [ %8940, %8773 ], [ 0.000000e+00, %8730 ]
  %8948 = phi float [ %8941, %8773 ], [ 0.000000e+00, %8730 ]
  %8949 = fmul fast float %8946, %7292
  %8950 = fmul fast float %8947, %7293
  %8951 = fmul fast float %8948, %7294
  %8952 = fmul fast float %8943, %8737
  %8953 = call float @dx.op.dot3.f32(i32 55, float %8943, float %8944, float %8945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8954 = call float @dx.op.dot3.f32(i32 55, float %8949, float %8950, float %8951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8955 = select i1 %284, float %8953, float %8943
  %8956 = select i1 %284, float %8953, float %8944
  %8957 = select i1 %284, float 1.000000e+00, float %8945
  %8958 = select i1 %284, float %8954, float %8949
  %8959 = select i1 %284, float 0.000000e+00, float %8950
  %8960 = select i1 %284, float 0.000000e+00, float %8951
  %8961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8962 = extractvalue %dx.types.CBufRet.i32 %8961, 3
  %8963 = and i32 %8962, 3
  %8964 = icmp ne i32 %8963, 0
  %8965 = and i32 %8962, 4
  %8966 = icmp ne i32 %8965, 0
  %8967 = and i1 %8964, %8966
  %8968 = and i1 %284, %8967
  br i1 %8968, label %8969, label %8975

; <label>:8969                                    ; preds = %8942
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 1
  %8972 = fadd fast float %8952, -1.000000e+00
  %8973 = fmul fast float %8971, %8972
  %8974 = fadd fast float %8973, 1.000000e+00
  br label %8975

; <label>:8975                                    ; preds = %8969, %8942
  %8976 = phi float [ %8974, %8969 ], [ %8952, %8942 ]
  %8977 = fadd fast float %8734, %8731
  %8978 = fmul fast float %8955, %8977
  %8979 = fadd fast float %8978, %8958
  %8980 = fadd fast float %8735, %8732
  %8981 = fmul fast float %8956, %8980
  %8982 = fadd fast float %8981, %8959
  %8983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8983, 0
  br i1 %284, label %8985, label %9000

; <label>:8985                                    ; preds = %8975
  %8986 = fadd fast float %8979, %8982
  %8987 = fmul fast float %8984, %8986
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 3
  %8990 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %8991 = fsub fast float %7281, %7275
  %8992 = fadd fast float %8991, %7282
  %8993 = fsub fast float %8992, %8990
  %8994 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %8995 = fmul fast float %8993, %8994
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = fsub fast float %8996, %8989
  %8998 = fmul fast float %8997, %8976
  %8999 = fadd fast float %8998, %8989
  br label %9026

; <label>:9000                                    ; preds = %8975
  %9001 = fadd fast float %8736, %8733
  %9002 = fmul fast float %8957, %9001
  %9003 = fadd fast float %9002, %8960
  %9004 = fmul fast float %8984, %8979
  %9005 = fmul fast float %8984, %8982
  %9006 = fmul fast float %8984, %9003
  %9007 = call float @dx.op.binary.f32(i32 35, float %9005, float %9006)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float %9004, float %9007)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float %7293, float %7294)  ; FMax(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float %7292, float %9009)  ; FMax(a,b)
  %9011 = call float @dx.op.binary.f32(i32 35, float %9008, float %9010)  ; FMax(a,b)
  %9012 = fcmp fast ugt float %9011, 0x3F10000000000000
  br i1 %9012, label %9014, label %9013

; <label>:9013                                    ; preds = %9000
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9014

; <label>:9014                                    ; preds = %9013, %9000
  %9015 = add i32 %43, 356
  %9016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %9015, i32 undef)  ; BufferLoad(srv,index,wot)
  %9017 = extractvalue %dx.types.ResRet.i32 %9016, 0
  %9018 = and i32 %9017, 32
  %9019 = icmp eq i32 %9018, 0
  br i1 %9019, label %9026, label %9020

; <label>:9020                                    ; preds = %9014
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = fmul fast float %9022, 0x3FE99999A0000000
  %9024 = fadd fast float %9022, %9004
  %9025 = fadd fast float %9023, %9006
  br label %9026

; <label>:9026                                    ; preds = %9020, %9014, %8985
  %9027 = phi float [ 1.000000e+00, %8985 ], [ %7293, %9020 ], [ %7293, %9014 ]
  %9028 = phi float [ 1.000000e+00, %8985 ], [ %7294, %9020 ], [ %7294, %9014 ]
  %9029 = phi float [ %8987, %8985 ], [ %9024, %9020 ], [ %9004, %9014 ]
  %9030 = phi float [ %8999, %8985 ], [ %9005, %9020 ], [ %9005, %9014 ]
  %9031 = phi float [ 1.000000e+00, %8985 ], [ %9025, %9020 ], [ %9006, %9014 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9032 = call float @dx.op.binary.f32(i32 36, float %9029, float 3.225500e+04)  ; FMin(a,b)
  %9033 = call float @dx.op.binary.f32(i32 36, float %9030, float 3.225500e+04)  ; FMin(a,b)
  %9034 = call float @dx.op.binary.f32(i32 36, float %9031, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9032)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9033)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9034)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9035 = call float @dx.op.binary.f32(i32 36, float %7292, float 3.225500e+04)  ; FMin(a,b)
  %9036 = call float @dx.op.binary.f32(i32 36, float %9027, float 3.225500e+04)  ; FMin(a,b)
  %9037 = call float @dx.op.binary.f32(i32 36, float %9028, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9035)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9036)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9037)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!55}
!dx.entryPoints = !{!56}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
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
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 5}
!25 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !31}
!31 = !{i32 0, i32 14}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !31}
!42 = !{i32 33, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!47 = !{!48, !49, !50, !51, !52, !53, !54}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!53 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!54 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!55 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !85}
!57 = !{!58, !81, null}
!58 = !{!59, !62, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80}
!59 = !{i32 0, !"SV_Position", i8 9, i8 3, !60, i8 4, i32 1, i8 4, i32 0, i8 0, !61}
!60 = !{i32 0}
!61 = !{i32 3, i32 15}
!62 = !{i32 1, !"COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!63 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 2, i8 0, !64}
!64 = !{i32 3, i32 3}
!65 = !{i32 3, !"NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 3, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 4, !"TANGENT", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!68 = !{i32 5, !"SH_RED", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!69 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!70 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 7, i8 0, !61}
!71 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 8, i8 0, !66}
!72 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!73 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 2, i32 10, i8 0, !64}
!74 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 11, i8 0, !61}
!75 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 12, i8 0, !66}
!76 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !60, i8 1, i32 1, i8 1, i32 13, i8 0, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !60, i8 1, i32 1, i8 2, i32 13, i8 1, !77}
!79 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !60, i8 1, i32 1, i8 4, i32 14, i8 0, !77}
!80 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !60, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82, !83}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!83 = !{i32 1, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 1, i8 0, !61}
!84 = !{i32 1}
!85 = !{i32 0, i64 16}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !98, !100, !102}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!99 = distinct !{!99, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!102 = distinct !{!102, !103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!103 = distinct !{!103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !93, i64 0}
!115 = !{!116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!116 = distinct !{!116, !117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!117 = distinct !{!117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!118 = distinct !{!118, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!119 = distinct !{!119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!120 = distinct !{!120, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!121 = distinct !{!121, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!122 = distinct !{!122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!123 = distinct !{!123, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!124 = distinct !{!124, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!130 = distinct !{!130, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!139 = !{!135}
!140 = !{!136, !132, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!149 = !{!145}
!150 = !{!146, !142, !116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}

