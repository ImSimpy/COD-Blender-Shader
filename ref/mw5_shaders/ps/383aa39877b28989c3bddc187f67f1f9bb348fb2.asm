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
; shader hash: 5783dfe489211d30542a46b33d06efcc
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
  %478 = add i32 %43, 540
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
  br i1 %534, label %1122, label %535

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
  %1058 = and i32 %1057, 10240
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1104, label %1060

; <label>:1060                                    ; preds = %1052
  %1061 = add i32 %43, 524
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %1063, 0
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1065, %dx.types.Handle %96, float %634, float %635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 3
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 1048576
  %1072 = icmp ne i32 %1071, 0
  %1073 = and i32 %1070, 8192
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1090, label %1075

; <label>:1075                                    ; preds = %1060
  %1076 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1077 = select i1 %1072, float %1076, float %1067
  %1078 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1079 = select i1 %1072, float %1078, float %1067
  %1080 = add i32 %43, 96
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 16
  %1084 = and i32 %1083, 255
  %1085 = uitofp i32 %1084 to float
  %1086 = fmul fast float %1085, 0x3F80101020000000
  %1087 = fmul fast float %1086, %1079
  %1088 = fmul fast float %1086, %1067
  %1089 = fmul fast float %1086, %1077
  br label %1090

; <label>:1090                                    ; preds = %1075, %1060
  %1091 = phi float [ %1087, %1075 ], [ 0.000000e+00, %1060 ]
  %1092 = phi float [ %1088, %1075 ], [ 0.000000e+00, %1060 ]
  %1093 = phi float [ %1089, %1075 ], [ 0.000000e+00, %1060 ]
  %1094 = and i32 %1070, 2048
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1104, label %1096

; <label>:1096                                    ; preds = %1090
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = shl i32 %1098, 4
  %1100 = and i32 %1099, 32752
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = fmul fast float %1101, %1068
  %1103 = call float @dx.op.binary.f32(i32 35, float %1102, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1104

; <label>:1104                                    ; preds = %1096, %1090, %1052
  %1105 = phi float [ %1091, %1096 ], [ %1091, %1090 ], [ 0.000000e+00, %1052 ]
  %1106 = phi float [ %1092, %1096 ], [ %1092, %1090 ], [ 0.000000e+00, %1052 ]
  %1107 = phi float [ %1093, %1096 ], [ %1093, %1090 ], [ 0.000000e+00, %1052 ]
  %1108 = phi float [ %1103, %1096 ], [ 0x3F70101020000000, %1090 ], [ 0x3F70101020000000, %1052 ]
  %1109 = add i32 %43, 96
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = lshr i32 %1111, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = call float @dx.op.dot3.f32(i32 55, float %925, float %926, float %927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = fmul fast float %1116, %1117
  %1119 = fadd fast float %1118, %1113
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  br label %1122

; <label>:1122                                    ; preds = %1104, %520
  %1123 = phi float [ 0.000000e+00, %520 ], [ %1006, %1104 ]
  %1124 = phi float [ 0.000000e+00, %520 ], [ %1007, %1104 ]
  %1125 = phi float [ 0.000000e+00, %520 ], [ %925, %1104 ]
  %1126 = phi float [ 0.000000e+00, %520 ], [ %926, %1104 ]
  %1127 = phi float [ 0.000000e+00, %520 ], [ %927, %1104 ]
  %1128 = phi float [ 0.000000e+00, %520 ], [ %1105, %1104 ]
  %1129 = phi float [ 0.000000e+00, %520 ], [ %1106, %1104 ]
  %1130 = phi float [ 0.000000e+00, %520 ], [ %1107, %1104 ]
  %1131 = phi float [ 0.000000e+00, %520 ], [ %1053, %1104 ]
  %1132 = phi float [ 0.000000e+00, %520 ], [ %1054, %1104 ]
  %1133 = phi float [ 0.000000e+00, %520 ], [ %1055, %1104 ]
  %1134 = phi float [ 0.000000e+00, %520 ], [ %911, %1104 ]
  %1135 = phi float [ 0.000000e+00, %520 ], [ %707, %1104 ]
  %1136 = phi float [ 0.000000e+00, %520 ], [ %1005, %1104 ]
  %1137 = phi float [ 0.000000e+00, %520 ], [ %1008, %1104 ]
  %1138 = phi float [ 0.000000e+00, %520 ], [ %1108, %1104 ]
  %1139 = phi float [ 0.000000e+00, %520 ], [ %1121, %1104 ]
  br i1 %468, label %1953, label %1140

; <label>:1140                                    ; preds = %1122
  %1141 = icmp ult i32 %526, 2
  %1142 = add i32 %43, 40
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %43, 44
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = or i32 %1147, %1144
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1953, label %1150

; <label>:1150                                    ; preds = %1140
  %1151 = and i32 %1144, 262144
  %1152 = icmp ne i32 %1151, 0
  %1153 = select i1 %1152, float %49, float 1.000000e+00
  %1154 = select i1 %1152, float %50, float 0.000000e+00
  %1155 = select i1 %1152, float %51, float 0.000000e+00
  %1156 = select i1 %1152, float %52, float 1.000000e+00
  %1157 = select i1 %1152, float %53, float %81
  %1158 = select i1 %1152, float %54, float %82
  %1159 = add i32 %43, 300
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 16
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = fmul fast float %1163, 0x3F50624DE0000000
  %1165 = add i32 %43, 104
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 16
  %1169 = and i32 %1168, 255
  %1170 = lshr i32 %1167, 24
  %1171 = add i32 %43, 308
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = lshr i32 %1173, 16
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = add i32 %43, 48
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = lshr i32 %1180, 22
  %1182 = shl nuw nsw i32 %1181, 5
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = shl i32 %1180, 4
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = lshr i32 %1180, 7
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1192 = fmul fast float %1191, 1.000000e+03
  %1193 = fmul fast float %378, %1192
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fadd fast float %1194, %368
  %1196 = fmul fast float %379, %1192
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fadd fast float %1197, %370
  %1199 = fmul fast float %1164, %1192
  %1200 = call float @dx.op.unary.f32(i32 22, float %1199)  ; Frc(value)
  %1201 = fmul fast float %1200, 0x401921FB60000000
  %1202 = fadd fast float %1201, %1183
  %1203 = call float @dx.op.unary.f32(i32 13, float %1202)  ; Sin(value)
  %1204 = call float @dx.op.unary.f32(i32 12, float %1202)  ; Cos(value)
  %1205 = fsub fast float -0.000000e+00, %1203
  %1206 = fadd fast float %1157, -5.000000e-01
  %1207 = fadd fast float %1158, -5.000000e-01
  %1208 = fmul fast float %1175, %1206
  %1209 = fmul fast float %1177, %1207
  %1210 = fadd fast float %1208, 5.000000e-01
  %1211 = fadd fast float %1209, 5.000000e-01
  %1212 = fmul fast float %1186, %1210
  %1213 = fmul fast float %1189, %1211
  %1214 = fmul fast float %1204, %1212
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %1213, float %1214)  ; FMad(a,b,c)
  %1216 = fmul fast float %1203, %1212
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %1213, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1195, %1215
  %1219 = fadd fast float %1198, %1217
  %1220 = icmp ugt i32 %1169, 1
  %1221 = icmp ugt i32 %1167, 33554431
  %1222 = or i1 %1221, %1220
  br i1 %1222, label %1223, label %1248

; <label>:1223                                    ; preds = %1150
  %1224 = add i32 %43, 244
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 16
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = fmul fast float %1191, %1228
  %1230 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1231 = mul nuw nsw i32 %1169, %1170
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1230, %1232
  %1234 = call float @dx.op.unary.f32(i32 27, float %1233)  ; Round_ni(value)
  %1235 = fptoui float %1234 to i32
  %1236 = urem i32 %1235, %1169
  %1237 = udiv i32 %1235, %1170
  %1238 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1239 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1240 = uitofp i32 %1236 to float
  %1241 = uitofp i32 %1237 to float
  %1242 = fadd fast float %1238, %1240
  %1243 = fadd fast float %1239, %1241
  %1244 = uitofp i32 %1169 to float
  %1245 = uitofp i32 %1170 to float
  %1246 = fdiv fast float %1242, %1244
  %1247 = fdiv fast float %1243, %1245
  br label %1248

; <label>:1248                                    ; preds = %1223, %1150
  %1249 = phi float [ %1246, %1223 ], [ %1218, %1150 ]
  %1250 = phi float [ %1247, %1223 ], [ %1219, %1150 ]
  %1251 = and i32 %1144, 256
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1299, label %1253

; <label>:1253                                    ; preds = %1248
  %1254 = add i32 %43, 492
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1256, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1258, %dx.types.Handle %96, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = add i32 %43, 116
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = shl i32 %1263, 4
  %1265 = and i32 %1264, 32752
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = lshr i32 %1263, 7
  %1268 = and i32 %1267, 32752
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = fsub fast float 1.000000e+00, %523
  %1271 = call float @dx.op.binary.f32(i32 35, float %1270, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1272 = bitcast float %523 to i32
  %1273 = sitofp i32 %1272 to float
  %1274 = fadd fast float %1273, 0xC1CFBF8940000000
  %1275 = fmul fast float %1269, %1274
  %1276 = fadd fast float %1275, 0x41CFBF8940000000
  %1277 = fptosi float %1276 to i32
  %1278 = bitcast i32 %1277 to float
  %1279 = bitcast float %1271 to i32
  %1280 = sitofp i32 %1279 to float
  %1281 = fadd fast float %1280, 0xC1CFBF8940000000
  %1282 = fmul fast float %1281, %1269
  %1283 = fadd fast float %1282, 0x41CFBF8940000000
  %1284 = fptosi float %1283 to i32
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1278, %1266
  %1287 = fmul fast float %1285, %1266
  %1288 = fsub fast float %1271, %1286
  %1289 = fadd fast float %1287, %1271
  %1290 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1291 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1292 = fsub fast float %1260, %1290
  %1293 = fsub fast float %1291, %1290
  %1294 = bitcast float %1293 to i32
  %1295 = sub nsw i32 2129859010, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1296, %1292
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  br label %1299

; <label>:1299                                    ; preds = %1253, %1248
  %1300 = phi float [ %1298, %1253 ], [ %523, %1248 ]
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 128
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1321, label %1305

; <label>:1305                                    ; preds = %1299
  %1306 = add i32 %43, 476
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1308, 0
  %1310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1310, %dx.types.Handle %96, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 524288
  %1316 = icmp ne i32 %1315, 0
  %1317 = fcmp fast ogt float %1312, 0x3FE0101020000000
  %1318 = select i1 %1317, float 1.000000e+00, float 0.000000e+00
  %1319 = select i1 %1316, float %1318, float %1312
  %1320 = fmul fast float %1319, %1300
  br label %1321

; <label>:1321                                    ; preds = %1305, %1299
  %1322 = phi float [ %1320, %1305 ], [ %1300, %1299 ]
  %1323 = fcmp fast ult float %1322, 0x3F70101020000000
  br i1 %1323, label %1953, label %1324

; <label>:1324                                    ; preds = %1321
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 16
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1527, label %1329

; <label>:1329                                    ; preds = %1324
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = add i32 %43, 428
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %1334, 0
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1336, %dx.types.Handle %95, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = and i32 %1331, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = lshr i32 %1331, 8
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1341, %1343
  %1348 = fadd fast float %1347, %1346
  %1349 = fmul fast float %1348, 0x3F70101000000000
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 512
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1362, label %1354

; <label>:1354                                    ; preds = %1329
  %1355 = add i32 %43, 512
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = add i32 %1357, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1359, %dx.types.Handle %96, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  br label %1362

; <label>:1362                                    ; preds = %1354, %1329
  %1363 = phi float [ %1361, %1354 ], [ 1.000000e+00, %1329 ]
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 33554432
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1474, label %1368

; <label>:1368                                    ; preds = %1362
  %1369 = add i32 %43, 240
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 65535
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = lshr i32 %1371, 16
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = add i32 %43, 244
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = lshr i32 %1382, 24
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = and i32 %1382, 255
  %1387 = uitofp i32 %1386 to float
  %1388 = fmul fast float %1387, 0x3F70101020000000
  %1389 = lshr i32 %1382, 8
  %1390 = and i32 %1389, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = lshr i32 %1382, 16
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = add i32 %43, 236
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = lshr i32 %1399, 24
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = and i32 %1399, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = fmul fast float %1404, 0x3F70101020000000
  %1406 = lshr i32 %1399, 8
  %1407 = and i32 %1406, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = fmul fast float %1408, 0x3F70101020000000
  %1410 = lshr i32 %1399, 16
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101020000000
  %1414 = bitcast float %1338 to i32
  %1415 = ashr i32 %1414, 1
  %1416 = sub nsw i32 1597463174, %1415
  %1417 = bitcast i32 %1416 to float
  %1418 = fmul fast float %1338, 5.000000e-01
  %1419 = fmul fast float %1417, %1417
  %1420 = fmul fast float %1419, %1418
  %1421 = fsub fast float 1.500000e+00, %1420
  %1422 = fmul fast float %1417, %1338
  %1423 = fmul fast float %1422, %1421
  %1424 = bitcast float %1339 to i32
  %1425 = ashr i32 %1424, 1
  %1426 = sub nsw i32 1597463174, %1425
  %1427 = bitcast i32 %1426 to float
  %1428 = fmul fast float %1339, 5.000000e-01
  %1429 = fmul fast float %1427, %1427
  %1430 = fmul fast float %1429, %1428
  %1431 = fsub fast float 1.500000e+00, %1430
  %1432 = fmul fast float %1427, %1339
  %1433 = fmul fast float %1432, %1431
  %1434 = bitcast float %1340 to i32
  %1435 = ashr i32 %1434, 1
  %1436 = sub nsw i32 1597463174, %1435
  %1437 = bitcast i32 %1436 to float
  %1438 = fmul fast float %1340, 5.000000e-01
  %1439 = fmul fast float %1437, %1437
  %1440 = fmul fast float %1439, %1438
  %1441 = fsub fast float 1.500000e+00, %1440
  %1442 = fmul fast float %1437, %1340
  %1443 = fmul fast float %1442, %1441
  %1444 = fsub fast float %1423, %1405
  %1445 = fsub fast float %1433, %1409
  %1446 = fsub fast float %1443, %1413
  %1447 = fmul fast float %1444, %1373
  %1448 = fmul fast float %1445, %1375
  %1449 = fmul fast float %1446, %1380
  %1450 = fadd fast float %1447, %1388
  %1451 = fadd fast float %1448, %1392
  %1452 = fadd fast float %1449, %1396
  %1453 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1456 = fmul fast float %1453, %1453
  %1457 = fmul fast float %1454, %1454
  %1458 = fmul fast float %1455, %1455
  %1459 = fsub fast float %1456, %1338
  %1460 = fsub fast float %1457, %1339
  %1461 = fsub fast float %1458, %1340
  %1462 = fmul fast float %1459, %1363
  %1463 = fmul fast float %1460, %1363
  %1464 = fmul fast float %1461, %1363
  %1465 = fadd fast float %1462, %1338
  %1466 = fadd fast float %1463, %1339
  %1467 = fadd fast float %1464, %1340
  %1468 = fadd fast float %1385, %1349
  %1469 = fsub fast float %1468, %1402
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float %1470, %1349
  %1472 = fmul fast float %1471, %1363
  %1473 = fadd fast float %1472, %1349
  br label %1527

; <label>:1474                                    ; preds = %1362
  %1475 = and i32 %1365, 134217728
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1511, label %1477

; <label>:1477                                    ; preds = %1474
  %1478 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %1479 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %1480 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %1481 = fadd fast float %1478, -5.000000e-01
  %1482 = fadd fast float %1479, -5.000000e-01
  %1483 = fadd fast float %1480, -5.000000e-01
  %1484 = fmul fast float %1481, %1363
  %1485 = fmul fast float %1482, %1363
  %1486 = fmul fast float %1483, %1363
  %1487 = fadd fast float %1484, 5.000000e-01
  %1488 = fadd fast float %1485, 5.000000e-01
  %1489 = fadd fast float %1486, 5.000000e-01
  %1490 = call float @dx.op.unary.f32(i32 24, float %1338)  ; Sqrt(value)
  %1491 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1492 = call float @dx.op.unary.f32(i32 24, float %1340)  ; Sqrt(value)
  %1493 = fmul fast float %1487, 2.000000e+00
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = fmul fast float %1494, %1490
  %1496 = fadd fast float %1495, %1493
  %1497 = fmul fast float %1496, %1490
  %1498 = fmul fast float %1488, 2.000000e+00
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = fmul fast float %1499, %1491
  %1501 = fadd fast float %1500, %1498
  %1502 = fmul fast float %1501, %1491
  %1503 = fmul fast float %1489, 2.000000e+00
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = fmul fast float %1504, %1492
  %1506 = fadd fast float %1505, %1503
  %1507 = fmul fast float %1506, %1492
  %1508 = fmul fast float %1497, %1497
  %1509 = fmul fast float %1502, %1502
  %1510 = fmul fast float %1507, %1507
  br label %1527

; <label>:1511                                    ; preds = %1474
  %1512 = fmul fast float %355, %355
  %1513 = fmul fast float %359, %359
  %1514 = fmul fast float %363, %363
  %1515 = fadd fast float %1512, -1.000000e+00
  %1516 = fadd fast float %1513, -1.000000e+00
  %1517 = fadd fast float %1514, -1.000000e+00
  %1518 = fmul fast float %1363, %1515
  %1519 = fmul fast float %1363, %1516
  %1520 = fmul fast float %1363, %1517
  %1521 = fadd fast float %1518, 1.000000e+00
  %1522 = fadd fast float %1519, 1.000000e+00
  %1523 = fadd fast float %1520, 1.000000e+00
  %1524 = fmul fast float %1521, %1338
  %1525 = fmul fast float %1522, %1339
  %1526 = fmul fast float %1523, %1340
  br label %1527

; <label>:1527                                    ; preds = %1511, %1477, %1368, %1324
  %1528 = phi float [ %1473, %1368 ], [ %1349, %1477 ], [ %1349, %1511 ], [ 0x3FA23C0BE0000000, %1324 ]
  %1529 = phi float [ %1465, %1368 ], [ %1508, %1477 ], [ %1524, %1511 ], [ 1.000000e+00, %1324 ]
  %1530 = phi float [ %1466, %1368 ], [ %1509, %1477 ], [ %1525, %1511 ], [ 1.000000e+00, %1324 ]
  %1531 = phi float [ %1467, %1368 ], [ %1510, %1477 ], [ %1526, %1511 ], [ 1.000000e+00, %1324 ]
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 1
  %1534 = and i32 %1533, 1
  %1535 = icmp ne i32 %1534, 0
  %1536 = add i32 %43, 356
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 32
  %1540 = icmp ne i32 %1539, 0
  %1541 = and i1 %1535, %1540
  %1542 = select i1 %1541, float 1.000000e+00, float %1529
  %1543 = select i1 %1541, float 0x3FD3333340000000, float %1530
  %1544 = select i1 %1541, float 0x3FD3333340000000, float %1531
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 32
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1621, label %1549

; <label>:1549                                    ; preds = %1527
  %1550 = add i32 %43, 108
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %43, 444
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %1555, 0
  %1557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1557, %dx.types.Handle %95, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = extractvalue %dx.types.ResRet.f32 %1558, 3
  %1563 = and i32 %1552, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1552, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1552, 16
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1570, 0x3F70101000000000
  %1572 = fmul fast float %1559, %1564
  %1573 = fadd fast float %1572, %1567
  %1574 = fmul fast float %1573, 0x3F70101000000000
  %1575 = fadd fast float %1560, -5.000000e-01
  %1576 = fadd fast float %1562, -5.000000e-01
  %1577 = fmul fast float %1575, %1571
  %1578 = fmul fast float %1576, %1571
  %1579 = fadd fast float %1577, 5.000000e-01
  %1580 = fadd fast float %1578, 5.000000e-01
  %1581 = fmul fast float %1579, 2.000000e+00
  %1582 = fadd fast float %1581, -1.000000e+00
  %1583 = fmul fast float %1580, 2.000000e+00
  %1584 = fadd fast float %1583, -1.000000e+00
  %1585 = fadd fast float %1582, %1584
  %1586 = fmul fast float %1585, 5.000000e-01
  %1587 = fsub fast float %1582, %1584
  %1588 = fmul fast float %1587, 5.000000e-01
  %1589 = call float @dx.op.unary.f32(i32 6, float %1586)  ; FAbs(value)
  %1590 = fsub fast float 1.000000e+00, %1589
  %1591 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1592 = fsub fast float %1590, %1591
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1586, float %1588, float %1592, float %1586, float %1588, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = call float @dx.op.unary.f32(i32 25, float %1593)  ; Rsqrt(value)
  %1595 = fmul fast float %1586, %1594
  %1596 = fmul fast float %1588, %1594
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 67108864
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1617, label %1601

; <label>:1601                                    ; preds = %1549
  %1602 = add i32 %43, 296
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 65535
  %1606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1605)  ; LegacyF16ToF32(value)
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = lshr i32 %1604, 16
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = fsub fast float %1574, %1612
  %1614 = fmul fast float %1613, %1606
  %1615 = fadd fast float %1614, %1610
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  br label %1617

; <label>:1617                                    ; preds = %1601, %1549
  %1618 = phi float [ %1616, %1601 ], [ %1574, %1549 ]
  %1619 = call float @dx.op.dot2.f32(i32 54, float %1595, float %1596, float %1153, float %1154)  ; Dot2(ax,ay,bx,by)
  %1620 = call float @dx.op.dot2.f32(i32 54, float %1595, float %1596, float %1155, float %1156)  ; Dot2(ax,ay,bx,by)
  br label %1621

; <label>:1621                                    ; preds = %1617, %1527
  %1622 = phi float [ %1618, %1617 ], [ 0x3FD6666660000000, %1527 ]
  %1623 = phi float [ %1619, %1617 ], [ 0.000000e+00, %1527 ]
  %1624 = phi float [ %1620, %1617 ], [ 0.000000e+00, %1527 ]
  %1625 = phi float [ %1561, %1617 ], [ 1.000000e+00, %1527 ]
  %1626 = add i32 %43, 176
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = lshr i32 %1628, 22
  %1630 = shl nuw nsw i32 %1629, 5
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = and i32 %1633, 64
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1669, label %1636

; <label>:1636                                    ; preds = %1621
  %1637 = add i32 %43, 460
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = add i32 %1639, 0
  %1641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 131072
  %1645 = icmp eq i32 %1644, 0
  %1646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1641, %dx.types.Handle %95, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 0
  %1648 = extractvalue %dx.types.ResRet.f32 %1646, 1
  %1649 = extractvalue %dx.types.ResRet.f32 %1646, 2
  %1650 = fmul fast float %1647, %343
  %1651 = fmul fast float %1648, %346
  %1652 = fmul fast float %1649, %349
  br i1 %1645, label %1659, label %1653

; <label>:1653                                    ; preds = %1636
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1656 = fmul fast float %1655, %1650
  %1657 = fmul fast float %1655, %1651
  %1658 = fmul fast float %1655, %1652
  br label %1659

; <label>:1659                                    ; preds = %1653, %1636
  %1660 = phi float [ %1656, %1653 ], [ %1650, %1636 ]
  %1661 = phi float [ %1657, %1653 ], [ %1651, %1636 ]
  %1662 = phi float [ %1658, %1653 ], [ %1652, %1636 ]
  %1663 = fmul fast float %1660, %1631
  %1664 = select i1 %284, float %1663, float %1660
  %1665 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1661, float %1662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1666 = select i1 %284, float 0.000000e+00, float %1660
  %1667 = select i1 %284, float %1665, float %1661
  %1668 = select i1 %284, float 0.000000e+00, float %1662
  br label %1669

; <label>:1669                                    ; preds = %1659, %1621
  %1670 = phi float [ %1666, %1659 ], [ 0.000000e+00, %1621 ]
  %1671 = phi float [ %1667, %1659 ], [ 0.000000e+00, %1621 ]
  %1672 = phi float [ %1668, %1659 ], [ 0.000000e+00, %1621 ]
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 10240
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1721, label %1677

; <label>:1677                                    ; preds = %1669
  %1678 = add i32 %43, 528
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %1680, 0
  %1682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1682, %dx.types.Handle %96, float %1249, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 3
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 1048576
  %1689 = icmp ne i32 %1688, 0
  %1690 = and i32 %1687, 8192
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1707, label %1692

; <label>:1692                                    ; preds = %1677
  %1693 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1694 = select i1 %1689, float %1693, float %1684
  %1695 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1696 = select i1 %1689, float %1695, float %1684
  %1697 = add i32 %43, 112
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = lshr i32 %1699, 16
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = fmul fast float %1702, 0x3F80101020000000
  %1704 = fmul fast float %1703, %1696
  %1705 = fmul fast float %1703, %1684
  %1706 = fmul fast float %1703, %1694
  br label %1707

; <label>:1707                                    ; preds = %1692, %1677
  %1708 = phi float [ %1704, %1692 ], [ 0.000000e+00, %1677 ]
  %1709 = phi float [ %1705, %1692 ], [ 0.000000e+00, %1677 ]
  %1710 = phi float [ %1706, %1692 ], [ 0.000000e+00, %1677 ]
  %1711 = and i32 %1687, 2048
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1721, label %1713

; <label>:1713                                    ; preds = %1707
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = shl i32 %1715, 4
  %1717 = and i32 %1716, 32752
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = fmul fast float %1718, %1685
  %1720 = call float @dx.op.binary.f32(i32 35, float %1719, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1721

; <label>:1721                                    ; preds = %1713, %1707, %1669
  %1722 = phi float [ %1708, %1713 ], [ %1708, %1707 ], [ 0.000000e+00, %1669 ]
  %1723 = phi float [ %1709, %1713 ], [ %1709, %1707 ], [ 0.000000e+00, %1669 ]
  %1724 = phi float [ %1710, %1713 ], [ %1710, %1707 ], [ 0.000000e+00, %1669 ]
  %1725 = phi float [ %1720, %1713 ], [ 0x3F70101020000000, %1707 ], [ 0x3F70101020000000, %1669 ]
  %1726 = add i32 %43, 112
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 255
  %1730 = uitofp i32 %1729 to float
  %1731 = lshr i32 %1728, 8
  %1732 = and i32 %1731, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = fmul fast float %1733, %1734
  %1736 = fadd fast float %1735, %1730
  %1737 = fmul fast float %1736, 0x3F70101020000000
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  br i1 %1141, label %1739, label %1747

; <label>:1739                                    ; preds = %1721
  %1740 = fsub fast float 1.000000e+00, %1322
  %1741 = fmul fast float %1740, %1125
  %1742 = fmul fast float %1740, %1126
  %1743 = fmul fast float %1740, %1127
  %1744 = fmul fast float %1740, %1131
  %1745 = fmul fast float %1740, %1132
  %1746 = fmul fast float %1740, %1133
  br label %1747

; <label>:1747                                    ; preds = %1739, %1721
  %1748 = phi float [ %1741, %1739 ], [ %1125, %1721 ]
  %1749 = phi float [ %1742, %1739 ], [ %1126, %1721 ]
  %1750 = phi float [ %1743, %1739 ], [ %1127, %1721 ]
  %1751 = phi float [ %1744, %1739 ], [ %1131, %1721 ]
  %1752 = phi float [ %1745, %1739 ], [ %1132, %1721 ]
  %1753 = phi float [ %1746, %1739 ], [ %1133, %1721 ]
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 3
  %1757 = icmp eq i32 %1756, 3
  br i1 %1757, label %1836, label %1758

; <label>:1758                                    ; preds = %1747
  %1759 = and i32 %1755, 16
  %1760 = icmp ne i32 %1759, 0
  %1761 = select i1 %1760, float %1322, float 0.000000e+00
  %1762 = icmp eq i32 %1756, 0
  br i1 %1762, label %1763, label %1791

; <label>:1763                                    ; preds = %1758
  %1764 = and i32 %1755, 64
  %1765 = icmp ne i32 %1764, 0
  %1766 = select i1 %1765, float %1322, float 0.000000e+00
  %1767 = fsub fast float %1542, %1748
  %1768 = fsub fast float %1543, %1749
  %1769 = fsub fast float %1544, %1750
  %1770 = fmul fast float %1761, %1767
  %1771 = fmul fast float %1761, %1768
  %1772 = fmul fast float %1761, %1769
  %1773 = fadd fast float %1770, %1748
  %1774 = fadd fast float %1771, %1749
  %1775 = fadd fast float %1772, %1750
  %1776 = fsub fast float %1528, %1134
  %1777 = fmul fast float %1761, %1776
  %1778 = fadd fast float %1777, %1134
  %1779 = fsub fast float %1670, %1751
  %1780 = fsub fast float %1671, %1752
  %1781 = fsub fast float %1672, %1753
  %1782 = fmul fast float %1766, %1779
  %1783 = fmul fast float %1766, %1780
  %1784 = fmul fast float %1766, %1781
  %1785 = fadd fast float %1782, %1751
  %1786 = fadd fast float %1783, %1752
  %1787 = fadd fast float %1784, %1753
  %1788 = fsub fast float %1738, %1139
  %1789 = fmul fast float %1761, %1788
  %1790 = fadd fast float %1789, %1139
  br label %1836

; <label>:1791                                    ; preds = %1758
  %1792 = icmp eq i32 %1756, 1
  br i1 %1792, label %1793, label %1806

; <label>:1793                                    ; preds = %1791
  %1794 = fadd fast float %1542, -1.000000e+00
  %1795 = fadd fast float %1543, -1.000000e+00
  %1796 = fadd fast float %1544, -1.000000e+00
  %1797 = fmul fast float %1761, %1794
  %1798 = fmul fast float %1761, %1795
  %1799 = fmul fast float %1761, %1796
  %1800 = fadd fast float %1797, 1.000000e+00
  %1801 = fadd fast float %1798, 1.000000e+00
  %1802 = fadd fast float %1799, 1.000000e+00
  %1803 = fmul fast float %1800, %1748
  %1804 = fmul fast float %1801, %1749
  %1805 = fmul fast float %1802, %1750
  br label %1836

; <label>:1806                                    ; preds = %1791
  %1807 = icmp eq i32 %1756, 2
  br i1 %1807, label %1808, label %1836

; <label>:1808                                    ; preds = %1806
  %1809 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1810 = call float @dx.op.unary.f32(i32 24, float %1543)  ; Sqrt(value)
  %1811 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1812 = fadd fast float %1809, -5.000000e-01
  %1813 = fadd fast float %1810, -5.000000e-01
  %1814 = fadd fast float %1811, -5.000000e-01
  %1815 = fmul fast float %1812, %1761
  %1816 = fmul fast float %1813, %1761
  %1817 = fmul fast float %1814, %1761
  %1818 = fadd fast float %1815, 5.000000e-01
  %1819 = fadd fast float %1816, 5.000000e-01
  %1820 = fadd fast float %1817, 5.000000e-01
  %1821 = fmul fast float %1818, 2.000000e+00
  %1822 = fsub fast float 1.000000e+00, %1821
  %1823 = fmul fast float %1822, %1748
  %1824 = fadd fast float %1823, %1821
  %1825 = fmul fast float %1824, %1748
  %1826 = fmul fast float %1819, 2.000000e+00
  %1827 = fsub fast float 1.000000e+00, %1826
  %1828 = fmul fast float %1827, %1749
  %1829 = fadd fast float %1828, %1826
  %1830 = fmul fast float %1829, %1749
  %1831 = fmul fast float %1820, 2.000000e+00
  %1832 = fsub fast float 1.000000e+00, %1831
  %1833 = fmul fast float %1832, %1750
  %1834 = fadd fast float %1833, %1831
  %1835 = fmul fast float %1834, %1750
  br label %1836

; <label>:1836                                    ; preds = %1808, %1806, %1793, %1763, %1747
  %1837 = phi float [ %1748, %1747 ], [ %1825, %1808 ], [ %1748, %1806 ], [ %1803, %1793 ], [ %1773, %1763 ]
  %1838 = phi float [ %1749, %1747 ], [ %1830, %1808 ], [ %1749, %1806 ], [ %1804, %1793 ], [ %1774, %1763 ]
  %1839 = phi float [ %1750, %1747 ], [ %1835, %1808 ], [ %1750, %1806 ], [ %1805, %1793 ], [ %1775, %1763 ]
  %1840 = phi float [ %1751, %1747 ], [ %1751, %1808 ], [ %1751, %1806 ], [ %1751, %1793 ], [ %1785, %1763 ]
  %1841 = phi float [ %1752, %1747 ], [ %1752, %1808 ], [ %1752, %1806 ], [ %1752, %1793 ], [ %1786, %1763 ]
  %1842 = phi float [ %1753, %1747 ], [ %1753, %1808 ], [ %1753, %1806 ], [ %1753, %1793 ], [ %1787, %1763 ]
  %1843 = phi float [ %1134, %1747 ], [ %1134, %1808 ], [ %1134, %1806 ], [ %1134, %1793 ], [ %1778, %1763 ]
  %1844 = phi float [ %1139, %1747 ], [ %1139, %1808 ], [ %1139, %1806 ], [ %1139, %1793 ], [ %1790, %1763 ]
  %1845 = and i32 %1755, 12
  %1846 = icmp eq i32 %1845, 12
  br i1 %1846, label %1953, label %1847

; <label>:1847                                    ; preds = %1836
  %1848 = and i32 %1755, 2097184
  %1849 = icmp eq i32 %1848, 2097184
  %1850 = select i1 %1849, float %1322, float 0.000000e+00
  %1851 = and i32 %1755, 4194336
  %1852 = icmp eq i32 %1851, 4194336
  %1853 = select i1 %1852, float %1322, float 0.000000e+00
  %1854 = and i32 %1755, 8388640
  %1855 = icmp eq i32 %1854, 8388640
  %1856 = select i1 %1855, float %1322, float 0.000000e+00
  %1857 = and i32 %1755, 2048
  %1858 = icmp ne i32 %1857, 0
  %1859 = select i1 %1858, float %1322, float 0.000000e+00
  %1860 = and i32 %1755, 8192
  %1861 = icmp ne i32 %1860, 0
  %1862 = select i1 %1861, float %1322, float 0.000000e+00
  %1863 = icmp eq i32 %1845, 0
  br i1 %1863, label %1864, label %1889

; <label>:1864                                    ; preds = %1847
  %1865 = fsub fast float %1623, %1123
  %1866 = fsub fast float %1624, %1124
  %1867 = fmul fast float %1850, %1865
  %1868 = fmul fast float %1850, %1866
  %1869 = fadd fast float %1867, %1123
  %1870 = fadd fast float %1868, %1124
  %1871 = fsub fast float %1625, %1137
  %1872 = fmul fast float %1853, %1871
  %1873 = fadd fast float %1872, %1137
  %1874 = fsub fast float %1622, %1136
  %1875 = fmul fast float %1856, %1874
  %1876 = fadd fast float %1875, %1136
  %1877 = fsub fast float %1725, %1138
  %1878 = fmul fast float %1859, %1877
  %1879 = fadd fast float %1878, %1138
  %1880 = fsub fast float %1722, %1128
  %1881 = fsub fast float %1723, %1129
  %1882 = fsub fast float %1724, %1130
  %1883 = fmul fast float %1862, %1880
  %1884 = fmul fast float %1862, %1881
  %1885 = fmul fast float %1862, %1882
  %1886 = fadd fast float %1883, %1128
  %1887 = fadd fast float %1884, %1129
  %1888 = fadd fast float %1885, %1130
  br label %1953

; <label>:1889                                    ; preds = %1847
  %1890 = icmp eq i32 %1845, 4
  br i1 %1890, label %1891, label %1931

; <label>:1891                                    ; preds = %1889
  %1892 = fmul fast float %1850, %1623
  %1893 = fmul fast float %1850, %1624
  %1894 = fadd fast float %1892, %1123
  %1895 = fadd fast float %1893, %1124
  %1896 = call float @dx.op.binary.f32(i32 36, float %1137, float %1625)  ; FMin(a,b)
  %1897 = fsub fast float %1896, %1137
  %1898 = fmul fast float %1897, %1853
  %1899 = fadd fast float %1898, %1137
  %1900 = fadd fast float %1622, %1136
  %1901 = fmul fast float %1900, 0x3FF337FAE0000000
  %1902 = fmul fast float %1136, %1136
  %1903 = fmul fast float %1622, %1622
  %1904 = fadd fast float %1903, %1902
  %1905 = fmul fast float %1904, 0x3FE5152B00000000
  %1906 = fmul fast float %1136, 0xBFCC1F85E0000000
  %1907 = fmul fast float %1906, %1622
  %1908 = fadd fast float %1907, 0xBFE1363700000000
  %1909 = fadd fast float %1908, %1901
  %1910 = fsub fast float %1909, %1905
  %1911 = fmul fast float %1900, 0x3FBA6F0D00000000
  %1912 = fmul fast float %1904, 0x3FD0432880000000
  %1913 = fmul fast float %1136, 0xBFEF110800000000
  %1914 = fmul fast float %1913, %1622
  %1915 = fadd fast float %1914, 1.000000e+00
  %1916 = fsub fast float %1915, %1911
  %1917 = fadd fast float %1916, %1912
  %1918 = fdiv fast float %1910, %1917
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = fsub fast float %1919, %1136
  %1921 = fmul fast float %1920, %1856
  %1922 = fadd fast float %1921, %1136
  %1923 = fmul fast float %1859, %1725
  %1924 = fadd fast float %1923, %1138
  %1925 = fmul fast float %1862, %1722
  %1926 = fmul fast float %1862, %1723
  %1927 = fmul fast float %1862, %1724
  %1928 = fadd fast float %1925, %1128
  %1929 = fadd fast float %1926, %1129
  %1930 = fadd fast float %1927, %1130
  br label %1953

; <label>:1931                                    ; preds = %1889
  %1932 = icmp eq i32 %1845, 8
  br i1 %1932, label %1933, label %1953

; <label>:1933                                    ; preds = %1931
  %1934 = fmul fast float %1850, %1623
  %1935 = fmul fast float %1850, %1624
  %1936 = fadd fast float %1934, %1123
  %1937 = fadd fast float %1935, %1124
  %1938 = call float @dx.op.binary.f32(i32 36, float %1137, float %1625)  ; FMin(a,b)
  %1939 = fsub fast float %1938, %1137
  %1940 = fmul fast float %1939, %1853
  %1941 = fadd fast float %1940, %1137
  %1942 = fsub fast float %1622, %1136
  %1943 = fmul fast float %1856, %1942
  %1944 = fadd fast float %1943, %1136
  %1945 = fmul fast float %1859, %1725
  %1946 = fadd fast float %1945, %1138
  %1947 = fmul fast float %1862, %1722
  %1948 = fmul fast float %1862, %1723
  %1949 = fmul fast float %1862, %1724
  %1950 = fadd fast float %1947, %1128
  %1951 = fadd fast float %1948, %1129
  %1952 = fadd fast float %1949, %1130
  br label %1953

; <label>:1953                                    ; preds = %1933, %1931, %1891, %1864, %1836, %1321, %1140, %1122
  %1954 = phi float [ %1123, %1836 ], [ %1123, %1321 ], [ %1123, %1122 ], [ %1936, %1933 ], [ %1123, %1931 ], [ %1894, %1891 ], [ %1869, %1864 ], [ %1123, %1140 ]
  %1955 = phi float [ %1124, %1836 ], [ %1124, %1321 ], [ %1124, %1122 ], [ %1937, %1933 ], [ %1124, %1931 ], [ %1895, %1891 ], [ %1870, %1864 ], [ %1124, %1140 ]
  %1956 = phi float [ %1837, %1836 ], [ %1125, %1321 ], [ %1125, %1122 ], [ %1837, %1933 ], [ %1837, %1931 ], [ %1837, %1891 ], [ %1837, %1864 ], [ %1125, %1140 ]
  %1957 = phi float [ %1838, %1836 ], [ %1126, %1321 ], [ %1126, %1122 ], [ %1838, %1933 ], [ %1838, %1931 ], [ %1838, %1891 ], [ %1838, %1864 ], [ %1126, %1140 ]
  %1958 = phi float [ %1839, %1836 ], [ %1127, %1321 ], [ %1127, %1122 ], [ %1839, %1933 ], [ %1839, %1931 ], [ %1839, %1891 ], [ %1839, %1864 ], [ %1127, %1140 ]
  %1959 = phi float [ %1128, %1836 ], [ %1128, %1321 ], [ %1128, %1122 ], [ %1950, %1933 ], [ %1128, %1931 ], [ %1928, %1891 ], [ %1886, %1864 ], [ %1128, %1140 ]
  %1960 = phi float [ %1129, %1836 ], [ %1129, %1321 ], [ %1129, %1122 ], [ %1951, %1933 ], [ %1129, %1931 ], [ %1929, %1891 ], [ %1887, %1864 ], [ %1129, %1140 ]
  %1961 = phi float [ %1130, %1836 ], [ %1130, %1321 ], [ %1130, %1122 ], [ %1952, %1933 ], [ %1130, %1931 ], [ %1930, %1891 ], [ %1888, %1864 ], [ %1130, %1140 ]
  %1962 = phi float [ %1840, %1836 ], [ %1131, %1321 ], [ %1131, %1122 ], [ %1840, %1933 ], [ %1840, %1931 ], [ %1840, %1891 ], [ %1840, %1864 ], [ %1131, %1140 ]
  %1963 = phi float [ %1841, %1836 ], [ %1132, %1321 ], [ %1132, %1122 ], [ %1841, %1933 ], [ %1841, %1931 ], [ %1841, %1891 ], [ %1841, %1864 ], [ %1132, %1140 ]
  %1964 = phi float [ %1842, %1836 ], [ %1133, %1321 ], [ %1133, %1122 ], [ %1842, %1933 ], [ %1842, %1931 ], [ %1842, %1891 ], [ %1842, %1864 ], [ %1133, %1140 ]
  %1965 = phi float [ %1843, %1836 ], [ %1134, %1321 ], [ %1134, %1122 ], [ %1843, %1933 ], [ %1843, %1931 ], [ %1843, %1891 ], [ %1843, %1864 ], [ %1134, %1140 ]
  %1966 = phi float [ %1136, %1836 ], [ %1136, %1321 ], [ %1136, %1122 ], [ %1944, %1933 ], [ %1136, %1931 ], [ %1922, %1891 ], [ %1876, %1864 ], [ %1136, %1140 ]
  %1967 = phi float [ %1137, %1836 ], [ %1137, %1321 ], [ %1137, %1122 ], [ %1941, %1933 ], [ %1137, %1931 ], [ %1899, %1891 ], [ %1873, %1864 ], [ %1137, %1140 ]
  %1968 = phi float [ %1138, %1836 ], [ %1138, %1321 ], [ %1138, %1122 ], [ %1946, %1933 ], [ %1138, %1931 ], [ %1924, %1891 ], [ %1879, %1864 ], [ %1138, %1140 ]
  %1969 = phi float [ %1844, %1836 ], [ %1139, %1321 ], [ %1139, %1122 ], [ %1844, %1933 ], [ %1844, %1931 ], [ %1844, %1891 ], [ %1844, %1864 ], [ %1139, %1140 ]
  br i1 %470, label %2783, label %1970

; <label>:1970                                    ; preds = %1953
  %1971 = icmp ult i32 %526, 3
  %1972 = add i32 %43, 56
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = add i32 %43, 60
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = or i32 %1977, %1974
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2783, label %1980

; <label>:1980                                    ; preds = %1970
  %1981 = and i32 %1974, 262144
  %1982 = icmp ne i32 %1981, 0
  %1983 = select i1 %1982, float %49, float 1.000000e+00
  %1984 = select i1 %1982, float %50, float 0.000000e+00
  %1985 = select i1 %1982, float %51, float 0.000000e+00
  %1986 = select i1 %1982, float %52, float 1.000000e+00
  %1987 = select i1 %1982, float %53, float %81
  %1988 = select i1 %1982, float %54, float %82
  %1989 = add i32 %43, 316
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = lshr i32 %1991, 16
  %1993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1992)  ; LegacyF16ToF32(value)
  %1994 = fmul fast float %1993, 0x3F50624DE0000000
  %1995 = add i32 %43, 120
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = lshr i32 %1997, 16
  %1999 = and i32 %1998, 255
  %2000 = lshr i32 %1997, 24
  %2001 = add i32 %43, 324
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 65535
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = lshr i32 %2003, 16
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = add i32 %43, 64
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = lshr i32 %2010, 22
  %2012 = shl nuw nsw i32 %2011, 5
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = shl i32 %2010, 4
  %2015 = and i32 %2014, 32752
  %2016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2015)  ; LegacyF16ToF32(value)
  %2017 = lshr i32 %2010, 7
  %2018 = and i32 %2017, 32752
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 3
  %2022 = fmul fast float %2021, 1.000000e+03
  %2023 = fmul fast float %420, %2022
  %2024 = call float @dx.op.unary.f32(i32 22, float %2023)  ; Frc(value)
  %2025 = fadd fast float %2024, %410
  %2026 = fmul fast float %421, %2022
  %2027 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2028 = fadd fast float %2027, %412
  %2029 = fmul fast float %1994, %2022
  %2030 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2031 = fmul fast float %2030, 0x401921FB60000000
  %2032 = fadd fast float %2031, %2013
  %2033 = call float @dx.op.unary.f32(i32 13, float %2032)  ; Sin(value)
  %2034 = call float @dx.op.unary.f32(i32 12, float %2032)  ; Cos(value)
  %2035 = fsub fast float -0.000000e+00, %2033
  %2036 = fadd fast float %1987, -5.000000e-01
  %2037 = fadd fast float %1988, -5.000000e-01
  %2038 = fmul fast float %2005, %2036
  %2039 = fmul fast float %2007, %2037
  %2040 = fadd fast float %2038, 5.000000e-01
  %2041 = fadd fast float %2039, 5.000000e-01
  %2042 = fmul fast float %2016, %2040
  %2043 = fmul fast float %2019, %2041
  %2044 = fmul fast float %2034, %2042
  %2045 = call float @dx.op.tertiary.f32(i32 46, float %2035, float %2043, float %2044)  ; FMad(a,b,c)
  %2046 = fmul fast float %2033, %2042
  %2047 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2043, float %2046)  ; FMad(a,b,c)
  %2048 = fadd fast float %2025, %2045
  %2049 = fadd fast float %2028, %2047
  %2050 = icmp ugt i32 %1999, 1
  %2051 = icmp ugt i32 %1997, 33554431
  %2052 = or i1 %2051, %2050
  br i1 %2052, label %2053, label %2078

; <label>:2053                                    ; preds = %1980
  %2054 = add i32 %43, 260
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = fmul fast float %2021, %2058
  %2060 = call float @dx.op.unary.f32(i32 22, float %2059)  ; Frc(value)
  %2061 = mul nuw nsw i32 %1999, %2000
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2060, %2062
  %2064 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2065 = fptoui float %2064 to i32
  %2066 = urem i32 %2065, %1999
  %2067 = udiv i32 %2065, %2000
  %2068 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2069 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2070 = uitofp i32 %2066 to float
  %2071 = uitofp i32 %2067 to float
  %2072 = fadd fast float %2068, %2070
  %2073 = fadd fast float %2069, %2071
  %2074 = uitofp i32 %1999 to float
  %2075 = uitofp i32 %2000 to float
  %2076 = fdiv fast float %2072, %2074
  %2077 = fdiv fast float %2073, %2075
  br label %2078

; <label>:2078                                    ; preds = %2053, %1980
  %2079 = phi float [ %2076, %2053 ], [ %2048, %1980 ]
  %2080 = phi float [ %2077, %2053 ], [ %2049, %1980 ]
  %2081 = and i32 %1974, 256
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2129, label %2083

; <label>:2083                                    ; preds = %2078
  %2084 = add i32 %43, 496
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = add i32 %2086, 0
  %2088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2088, %dx.types.Handle %96, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = add i32 %43, 132
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = shl i32 %2093, 4
  %2095 = and i32 %2094, 32752
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = lshr i32 %2093, 7
  %2098 = and i32 %2097, 32752
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = fsub fast float 1.000000e+00, %522
  %2101 = call float @dx.op.binary.f32(i32 35, float %2100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2102 = bitcast float %522 to i32
  %2103 = sitofp i32 %2102 to float
  %2104 = fadd fast float %2103, 0xC1CFBF8940000000
  %2105 = fmul fast float %2099, %2104
  %2106 = fadd fast float %2105, 0x41CFBF8940000000
  %2107 = fptosi float %2106 to i32
  %2108 = bitcast i32 %2107 to float
  %2109 = bitcast float %2101 to i32
  %2110 = sitofp i32 %2109 to float
  %2111 = fadd fast float %2110, 0xC1CFBF8940000000
  %2112 = fmul fast float %2111, %2099
  %2113 = fadd fast float %2112, 0x41CFBF8940000000
  %2114 = fptosi float %2113 to i32
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2108, %2096
  %2117 = fmul fast float %2115, %2096
  %2118 = fsub fast float %2101, %2116
  %2119 = fadd fast float %2117, %2101
  %2120 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2122 = fsub fast float %2090, %2120
  %2123 = fsub fast float %2121, %2120
  %2124 = bitcast float %2123 to i32
  %2125 = sub nsw i32 2129859010, %2124
  %2126 = bitcast i32 %2125 to float
  %2127 = fmul fast float %2126, %2122
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  br label %2129

; <label>:2129                                    ; preds = %2083, %2078
  %2130 = phi float [ %2128, %2083 ], [ %522, %2078 ]
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 128
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2151, label %2135

; <label>:2135                                    ; preds = %2129
  %2136 = add i32 %43, 480
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %2138, 0
  %2140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2140, %dx.types.Handle %96, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 524288
  %2146 = icmp ne i32 %2145, 0
  %2147 = fcmp fast ogt float %2142, 0x3FE0101020000000
  %2148 = select i1 %2147, float 1.000000e+00, float 0.000000e+00
  %2149 = select i1 %2146, float %2148, float %2142
  %2150 = fmul fast float %2149, %2130
  br label %2151

; <label>:2151                                    ; preds = %2135, %2129
  %2152 = phi float [ %2150, %2135 ], [ %2130, %2129 ]
  %2153 = fcmp fast ult float %2152, 0x3F70101020000000
  br i1 %2153, label %2783, label %2154

; <label>:2154                                    ; preds = %2151
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 16
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2357, label %2159

; <label>:2159                                    ; preds = %2154
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %43, 432
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %95, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = extractvalue %dx.types.ResRet.f32 %2167, 3
  %2172 = and i32 %2161, 255
  %2173 = uitofp i32 %2172 to float
  %2174 = lshr i32 %2161, 8
  %2175 = and i32 %2174, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2171, %2173
  %2178 = fadd fast float %2177, %2176
  %2179 = fmul fast float %2178, 0x3F70101000000000
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 512
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2192, label %2184

; <label>:2184                                    ; preds = %2159
  %2185 = add i32 %43, 516
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %2187, 0
  %2189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2189, %dx.types.Handle %96, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  br label %2192

; <label>:2192                                    ; preds = %2184, %2159
  %2193 = phi float [ %2191, %2184 ], [ 1.000000e+00, %2159 ]
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 33554432
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2304, label %2198

; <label>:2198                                    ; preds = %2192
  %2199 = add i32 %43, 256
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = and i32 %2201, 65535
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = lshr i32 %2201, 16
  %2205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2204)  ; LegacyF16ToF32(value)
  %2206 = add i32 %43, 260
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 65535
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = lshr i32 %2212, 24
  %2214 = uitofp i32 %2213 to float
  %2215 = fmul fast float %2214, 0x3F70101020000000
  %2216 = and i32 %2212, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = lshr i32 %2212, 8
  %2220 = and i32 %2219, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101020000000
  %2223 = lshr i32 %2212, 16
  %2224 = and i32 %2223, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2225, 0x3F70101020000000
  %2227 = add i32 %43, 252
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = lshr i32 %2229, 24
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2231, 0x3F70101020000000
  %2233 = and i32 %2229, 255
  %2234 = uitofp i32 %2233 to float
  %2235 = fmul fast float %2234, 0x3F70101020000000
  %2236 = lshr i32 %2229, 8
  %2237 = and i32 %2236, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = lshr i32 %2229, 16
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = bitcast float %2168 to i32
  %2245 = ashr i32 %2244, 1
  %2246 = sub nsw i32 1597463174, %2245
  %2247 = bitcast i32 %2246 to float
  %2248 = fmul fast float %2168, 5.000000e-01
  %2249 = fmul fast float %2247, %2247
  %2250 = fmul fast float %2249, %2248
  %2251 = fsub fast float 1.500000e+00, %2250
  %2252 = fmul fast float %2247, %2168
  %2253 = fmul fast float %2252, %2251
  %2254 = bitcast float %2169 to i32
  %2255 = ashr i32 %2254, 1
  %2256 = sub nsw i32 1597463174, %2255
  %2257 = bitcast i32 %2256 to float
  %2258 = fmul fast float %2169, 5.000000e-01
  %2259 = fmul fast float %2257, %2257
  %2260 = fmul fast float %2259, %2258
  %2261 = fsub fast float 1.500000e+00, %2260
  %2262 = fmul fast float %2257, %2169
  %2263 = fmul fast float %2262, %2261
  %2264 = bitcast float %2170 to i32
  %2265 = ashr i32 %2264, 1
  %2266 = sub nsw i32 1597463174, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2170, 5.000000e-01
  %2269 = fmul fast float %2267, %2267
  %2270 = fmul fast float %2269, %2268
  %2271 = fsub fast float 1.500000e+00, %2270
  %2272 = fmul fast float %2267, %2170
  %2273 = fmul fast float %2272, %2271
  %2274 = fsub fast float %2253, %2235
  %2275 = fsub fast float %2263, %2239
  %2276 = fsub fast float %2273, %2243
  %2277 = fmul fast float %2274, %2203
  %2278 = fmul fast float %2275, %2205
  %2279 = fmul fast float %2276, %2210
  %2280 = fadd fast float %2277, %2218
  %2281 = fadd fast float %2278, %2222
  %2282 = fadd fast float %2279, %2226
  %2283 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2285 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2286 = fmul fast float %2283, %2283
  %2287 = fmul fast float %2284, %2284
  %2288 = fmul fast float %2285, %2285
  %2289 = fsub fast float %2286, %2168
  %2290 = fsub fast float %2287, %2169
  %2291 = fsub fast float %2288, %2170
  %2292 = fmul fast float %2289, %2193
  %2293 = fmul fast float %2290, %2193
  %2294 = fmul fast float %2291, %2193
  %2295 = fadd fast float %2292, %2168
  %2296 = fadd fast float %2293, %2169
  %2297 = fadd fast float %2294, %2170
  %2298 = fadd fast float %2215, %2179
  %2299 = fsub fast float %2298, %2232
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2301 = fsub fast float %2300, %2179
  %2302 = fmul fast float %2301, %2193
  %2303 = fadd fast float %2302, %2179
  br label %2357

; <label>:2304                                    ; preds = %2192
  %2305 = and i32 %2195, 134217728
  %2306 = icmp eq i32 %2305, 0
  br i1 %2306, label %2341, label %2307

; <label>:2307                                    ; preds = %2304
  %2308 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %2309 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %2310 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2311 = fadd fast float %2308, -5.000000e-01
  %2312 = fadd fast float %2309, -5.000000e-01
  %2313 = fadd fast float %2310, -5.000000e-01
  %2314 = fmul fast float %2311, %2193
  %2315 = fmul fast float %2312, %2193
  %2316 = fmul fast float %2313, %2193
  %2317 = fadd fast float %2314, 5.000000e-01
  %2318 = fadd fast float %2315, 5.000000e-01
  %2319 = fadd fast float %2316, 5.000000e-01
  %2320 = call float @dx.op.unary.f32(i32 24, float %2168)  ; Sqrt(value)
  %2321 = call float @dx.op.unary.f32(i32 24, float %2169)  ; Sqrt(value)
  %2322 = call float @dx.op.unary.f32(i32 24, float %2170)  ; Sqrt(value)
  %2323 = fmul fast float %2317, 2.000000e+00
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = fmul fast float %2324, %2320
  %2326 = fadd fast float %2325, %2323
  %2327 = fmul fast float %2326, %2320
  %2328 = fmul fast float %2318, 2.000000e+00
  %2329 = fsub fast float 1.000000e+00, %2328
  %2330 = fmul fast float %2329, %2321
  %2331 = fadd fast float %2330, %2328
  %2332 = fmul fast float %2331, %2321
  %2333 = fmul fast float %2319, 2.000000e+00
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = fmul fast float %2334, %2322
  %2336 = fadd fast float %2335, %2333
  %2337 = fmul fast float %2336, %2322
  %2338 = fmul fast float %2327, %2327
  %2339 = fmul fast float %2332, %2332
  %2340 = fmul fast float %2337, %2337
  br label %2357

; <label>:2341                                    ; preds = %2304
  %2342 = fmul fast float %397, %397
  %2343 = fmul fast float %401, %401
  %2344 = fmul fast float %405, %405
  %2345 = fadd fast float %2342, -1.000000e+00
  %2346 = fadd fast float %2343, -1.000000e+00
  %2347 = fadd fast float %2344, -1.000000e+00
  %2348 = fmul fast float %2193, %2345
  %2349 = fmul fast float %2193, %2346
  %2350 = fmul fast float %2193, %2347
  %2351 = fadd fast float %2348, 1.000000e+00
  %2352 = fadd fast float %2349, 1.000000e+00
  %2353 = fadd fast float %2350, 1.000000e+00
  %2354 = fmul fast float %2351, %2168
  %2355 = fmul fast float %2352, %2169
  %2356 = fmul fast float %2353, %2170
  br label %2357

; <label>:2357                                    ; preds = %2341, %2307, %2198, %2154
  %2358 = phi float [ %2303, %2198 ], [ %2179, %2307 ], [ %2179, %2341 ], [ 0x3FA23C0BE0000000, %2154 ]
  %2359 = phi float [ %2295, %2198 ], [ %2338, %2307 ], [ %2354, %2341 ], [ 1.000000e+00, %2154 ]
  %2360 = phi float [ %2296, %2198 ], [ %2339, %2307 ], [ %2355, %2341 ], [ 1.000000e+00, %2154 ]
  %2361 = phi float [ %2297, %2198 ], [ %2340, %2307 ], [ %2356, %2341 ], [ 1.000000e+00, %2154 ]
  %2362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.i32 %2362, 1
  %2364 = and i32 %2363, 1
  %2365 = icmp ne i32 %2364, 0
  %2366 = add i32 %43, 356
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 32
  %2370 = icmp ne i32 %2369, 0
  %2371 = and i1 %2365, %2370
  %2372 = select i1 %2371, float 1.000000e+00, float %2359
  %2373 = select i1 %2371, float 0x3FD3333340000000, float %2360
  %2374 = select i1 %2371, float 0x3FD3333340000000, float %2361
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 32
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2451, label %2379

; <label>:2379                                    ; preds = %2357
  %2380 = add i32 %43, 124
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = add i32 %43, 448
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = add i32 %2385, 0
  %2387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2387, %dx.types.Handle %95, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.ResRet.f32 %2388, 1
  %2391 = extractvalue %dx.types.ResRet.f32 %2388, 2
  %2392 = extractvalue %dx.types.ResRet.f32 %2388, 3
  %2393 = and i32 %2382, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = lshr i32 %2382, 8
  %2396 = and i32 %2395, 255
  %2397 = uitofp i32 %2396 to float
  %2398 = lshr i32 %2382, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101000000000
  %2402 = fmul fast float %2389, %2394
  %2403 = fadd fast float %2402, %2397
  %2404 = fmul fast float %2403, 0x3F70101000000000
  %2405 = fadd fast float %2390, -5.000000e-01
  %2406 = fadd fast float %2392, -5.000000e-01
  %2407 = fmul fast float %2405, %2401
  %2408 = fmul fast float %2406, %2401
  %2409 = fadd fast float %2407, 5.000000e-01
  %2410 = fadd fast float %2408, 5.000000e-01
  %2411 = fmul fast float %2409, 2.000000e+00
  %2412 = fadd fast float %2411, -1.000000e+00
  %2413 = fmul fast float %2410, 2.000000e+00
  %2414 = fadd fast float %2413, -1.000000e+00
  %2415 = fadd fast float %2412, %2414
  %2416 = fmul fast float %2415, 5.000000e-01
  %2417 = fsub fast float %2412, %2414
  %2418 = fmul fast float %2417, 5.000000e-01
  %2419 = call float @dx.op.unary.f32(i32 6, float %2416)  ; FAbs(value)
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = call float @dx.op.unary.f32(i32 6, float %2418)  ; FAbs(value)
  %2422 = fsub fast float %2420, %2421
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2416, float %2418, float %2422, float %2416, float %2418, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = call float @dx.op.unary.f32(i32 25, float %2423)  ; Rsqrt(value)
  %2425 = fmul fast float %2416, %2424
  %2426 = fmul fast float %2418, %2424
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 67108864
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2447, label %2431

; <label>:2431                                    ; preds = %2379
  %2432 = add i32 %43, 312
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 65535
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 65535
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = lshr i32 %2434, 16
  %2442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2441)  ; LegacyF16ToF32(value)
  %2443 = fsub fast float %2404, %2442
  %2444 = fmul fast float %2443, %2436
  %2445 = fadd fast float %2444, %2440
  %2446 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  br label %2447

; <label>:2447                                    ; preds = %2431, %2379
  %2448 = phi float [ %2446, %2431 ], [ %2404, %2379 ]
  %2449 = call float @dx.op.dot2.f32(i32 54, float %2425, float %2426, float %1983, float %1984)  ; Dot2(ax,ay,bx,by)
  %2450 = call float @dx.op.dot2.f32(i32 54, float %2425, float %2426, float %1985, float %1986)  ; Dot2(ax,ay,bx,by)
  br label %2451

; <label>:2451                                    ; preds = %2447, %2357
  %2452 = phi float [ %2448, %2447 ], [ 0x3FD6666660000000, %2357 ]
  %2453 = phi float [ %2449, %2447 ], [ 0.000000e+00, %2357 ]
  %2454 = phi float [ %2450, %2447 ], [ 0.000000e+00, %2357 ]
  %2455 = phi float [ %2391, %2447 ], [ 1.000000e+00, %2357 ]
  %2456 = add i32 %43, 192
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = lshr i32 %2458, 22
  %2460 = shl nuw nsw i32 %2459, 5
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 64
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2499, label %2466

; <label>:2466                                    ; preds = %2451
  %2467 = add i32 %43, 464
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = add i32 %2469, 0
  %2471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 131072
  %2475 = icmp eq i32 %2474, 0
  %2476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2471, %dx.types.Handle %95, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.ResRet.f32 %2476, 1
  %2479 = extractvalue %dx.types.ResRet.f32 %2476, 2
  %2480 = fmul fast float %2477, %385
  %2481 = fmul fast float %2478, %388
  %2482 = fmul fast float %2479, %391
  br i1 %2475, label %2489, label %2483

; <label>:2483                                    ; preds = %2466
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = fmul fast float %2485, %2480
  %2487 = fmul fast float %2485, %2481
  %2488 = fmul fast float %2485, %2482
  br label %2489

; <label>:2489                                    ; preds = %2483, %2466
  %2490 = phi float [ %2486, %2483 ], [ %2480, %2466 ]
  %2491 = phi float [ %2487, %2483 ], [ %2481, %2466 ]
  %2492 = phi float [ %2488, %2483 ], [ %2482, %2466 ]
  %2493 = fmul fast float %2490, %2461
  %2494 = select i1 %284, float %2493, float %2490
  %2495 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2491, float %2492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2496 = select i1 %284, float 0.000000e+00, float %2490
  %2497 = select i1 %284, float %2495, float %2491
  %2498 = select i1 %284, float 0.000000e+00, float %2492
  br label %2499

; <label>:2499                                    ; preds = %2489, %2451
  %2500 = phi float [ %2496, %2489 ], [ 0.000000e+00, %2451 ]
  %2501 = phi float [ %2497, %2489 ], [ 0.000000e+00, %2451 ]
  %2502 = phi float [ %2498, %2489 ], [ 0.000000e+00, %2451 ]
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 10240
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2551, label %2507

; <label>:2507                                    ; preds = %2499
  %2508 = add i32 %43, 532
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %2510, 0
  %2512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2512, %dx.types.Handle %96, float %2079, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2513, 3
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 1048576
  %2519 = icmp ne i32 %2518, 0
  %2520 = and i32 %2517, 8192
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2537, label %2522

; <label>:2522                                    ; preds = %2507
  %2523 = extractvalue %dx.types.ResRet.f32 %2513, 2
  %2524 = select i1 %2519, float %2523, float %2514
  %2525 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2526 = select i1 %2519, float %2525, float %2514
  %2527 = add i32 %43, 128
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = lshr i32 %2529, 16
  %2531 = and i32 %2530, 255
  %2532 = uitofp i32 %2531 to float
  %2533 = fmul fast float %2532, 0x3F80101020000000
  %2534 = fmul fast float %2533, %2526
  %2535 = fmul fast float %2533, %2514
  %2536 = fmul fast float %2533, %2524
  br label %2537

; <label>:2537                                    ; preds = %2522, %2507
  %2538 = phi float [ %2534, %2522 ], [ 0.000000e+00, %2507 ]
  %2539 = phi float [ %2535, %2522 ], [ 0.000000e+00, %2507 ]
  %2540 = phi float [ %2536, %2522 ], [ 0.000000e+00, %2507 ]
  %2541 = and i32 %2517, 2048
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2551, label %2543

; <label>:2543                                    ; preds = %2537
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = shl i32 %2545, 4
  %2547 = and i32 %2546, 32752
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = fmul fast float %2548, %2515
  %2550 = call float @dx.op.binary.f32(i32 35, float %2549, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2551

; <label>:2551                                    ; preds = %2543, %2537, %2499
  %2552 = phi float [ %2538, %2543 ], [ %2538, %2537 ], [ 0.000000e+00, %2499 ]
  %2553 = phi float [ %2539, %2543 ], [ %2539, %2537 ], [ 0.000000e+00, %2499 ]
  %2554 = phi float [ %2540, %2543 ], [ %2540, %2537 ], [ 0.000000e+00, %2499 ]
  %2555 = phi float [ %2550, %2543 ], [ 0x3F70101020000000, %2537 ], [ 0x3F70101020000000, %2499 ]
  %2556 = add i32 %43, 128
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 255
  %2560 = uitofp i32 %2559 to float
  %2561 = lshr i32 %2558, 8
  %2562 = and i32 %2561, 255
  %2563 = uitofp i32 %2562 to float
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = fmul fast float %2563, %2564
  %2566 = fadd fast float %2565, %2560
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  br i1 %1971, label %2569, label %2577

; <label>:2569                                    ; preds = %2551
  %2570 = fsub fast float 1.000000e+00, %2152
  %2571 = fmul fast float %2570, %1956
  %2572 = fmul fast float %2570, %1957
  %2573 = fmul fast float %2570, %1958
  %2574 = fmul fast float %2570, %1962
  %2575 = fmul fast float %2570, %1963
  %2576 = fmul fast float %2570, %1964
  br label %2577

; <label>:2577                                    ; preds = %2569, %2551
  %2578 = phi float [ %2571, %2569 ], [ %1956, %2551 ]
  %2579 = phi float [ %2572, %2569 ], [ %1957, %2551 ]
  %2580 = phi float [ %2573, %2569 ], [ %1958, %2551 ]
  %2581 = phi float [ %2574, %2569 ], [ %1962, %2551 ]
  %2582 = phi float [ %2575, %2569 ], [ %1963, %2551 ]
  %2583 = phi float [ %2576, %2569 ], [ %1964, %2551 ]
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 3
  %2587 = icmp eq i32 %2586, 3
  br i1 %2587, label %2666, label %2588

; <label>:2588                                    ; preds = %2577
  %2589 = and i32 %2585, 16
  %2590 = icmp ne i32 %2589, 0
  %2591 = select i1 %2590, float %2152, float 0.000000e+00
  %2592 = icmp eq i32 %2586, 0
  br i1 %2592, label %2593, label %2621

; <label>:2593                                    ; preds = %2588
  %2594 = and i32 %2585, 64
  %2595 = icmp ne i32 %2594, 0
  %2596 = select i1 %2595, float %2152, float 0.000000e+00
  %2597 = fsub fast float %2372, %2578
  %2598 = fsub fast float %2373, %2579
  %2599 = fsub fast float %2374, %2580
  %2600 = fmul fast float %2591, %2597
  %2601 = fmul fast float %2591, %2598
  %2602 = fmul fast float %2591, %2599
  %2603 = fadd fast float %2600, %2578
  %2604 = fadd fast float %2601, %2579
  %2605 = fadd fast float %2602, %2580
  %2606 = fsub fast float %2358, %1965
  %2607 = fmul fast float %2591, %2606
  %2608 = fadd fast float %2607, %1965
  %2609 = fsub fast float %2500, %2581
  %2610 = fsub fast float %2501, %2582
  %2611 = fsub fast float %2502, %2583
  %2612 = fmul fast float %2596, %2609
  %2613 = fmul fast float %2596, %2610
  %2614 = fmul fast float %2596, %2611
  %2615 = fadd fast float %2612, %2581
  %2616 = fadd fast float %2613, %2582
  %2617 = fadd fast float %2614, %2583
  %2618 = fsub fast float %2568, %1969
  %2619 = fmul fast float %2591, %2618
  %2620 = fadd fast float %2619, %1969
  br label %2666

; <label>:2621                                    ; preds = %2588
  %2622 = icmp eq i32 %2586, 1
  br i1 %2622, label %2623, label %2636

; <label>:2623                                    ; preds = %2621
  %2624 = fadd fast float %2372, -1.000000e+00
  %2625 = fadd fast float %2373, -1.000000e+00
  %2626 = fadd fast float %2374, -1.000000e+00
  %2627 = fmul fast float %2591, %2624
  %2628 = fmul fast float %2591, %2625
  %2629 = fmul fast float %2591, %2626
  %2630 = fadd fast float %2627, 1.000000e+00
  %2631 = fadd fast float %2628, 1.000000e+00
  %2632 = fadd fast float %2629, 1.000000e+00
  %2633 = fmul fast float %2630, %2578
  %2634 = fmul fast float %2631, %2579
  %2635 = fmul fast float %2632, %2580
  br label %2666

; <label>:2636                                    ; preds = %2621
  %2637 = icmp eq i32 %2586, 2
  br i1 %2637, label %2638, label %2666

; <label>:2638                                    ; preds = %2636
  %2639 = call float @dx.op.unary.f32(i32 24, float %2372)  ; Sqrt(value)
  %2640 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2641 = call float @dx.op.unary.f32(i32 24, float %2374)  ; Sqrt(value)
  %2642 = fadd fast float %2639, -5.000000e-01
  %2643 = fadd fast float %2640, -5.000000e-01
  %2644 = fadd fast float %2641, -5.000000e-01
  %2645 = fmul fast float %2642, %2591
  %2646 = fmul fast float %2643, %2591
  %2647 = fmul fast float %2644, %2591
  %2648 = fadd fast float %2645, 5.000000e-01
  %2649 = fadd fast float %2646, 5.000000e-01
  %2650 = fadd fast float %2647, 5.000000e-01
  %2651 = fmul fast float %2648, 2.000000e+00
  %2652 = fsub fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2652, %2578
  %2654 = fadd fast float %2653, %2651
  %2655 = fmul fast float %2654, %2578
  %2656 = fmul fast float %2649, 2.000000e+00
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = fmul fast float %2657, %2579
  %2659 = fadd fast float %2658, %2656
  %2660 = fmul fast float %2659, %2579
  %2661 = fmul fast float %2650, 2.000000e+00
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2662, %2580
  %2664 = fadd fast float %2663, %2661
  %2665 = fmul fast float %2664, %2580
  br label %2666

; <label>:2666                                    ; preds = %2638, %2636, %2623, %2593, %2577
  %2667 = phi float [ %2578, %2577 ], [ %2655, %2638 ], [ %2578, %2636 ], [ %2633, %2623 ], [ %2603, %2593 ]
  %2668 = phi float [ %2579, %2577 ], [ %2660, %2638 ], [ %2579, %2636 ], [ %2634, %2623 ], [ %2604, %2593 ]
  %2669 = phi float [ %2580, %2577 ], [ %2665, %2638 ], [ %2580, %2636 ], [ %2635, %2623 ], [ %2605, %2593 ]
  %2670 = phi float [ %2581, %2577 ], [ %2581, %2638 ], [ %2581, %2636 ], [ %2581, %2623 ], [ %2615, %2593 ]
  %2671 = phi float [ %2582, %2577 ], [ %2582, %2638 ], [ %2582, %2636 ], [ %2582, %2623 ], [ %2616, %2593 ]
  %2672 = phi float [ %2583, %2577 ], [ %2583, %2638 ], [ %2583, %2636 ], [ %2583, %2623 ], [ %2617, %2593 ]
  %2673 = phi float [ %1965, %2577 ], [ %1965, %2638 ], [ %1965, %2636 ], [ %1965, %2623 ], [ %2608, %2593 ]
  %2674 = phi float [ %1969, %2577 ], [ %1969, %2638 ], [ %1969, %2636 ], [ %1969, %2623 ], [ %2620, %2593 ]
  %2675 = and i32 %2585, 12
  %2676 = icmp eq i32 %2675, 12
  br i1 %2676, label %2783, label %2677

; <label>:2677                                    ; preds = %2666
  %2678 = and i32 %2585, 2097184
  %2679 = icmp eq i32 %2678, 2097184
  %2680 = select i1 %2679, float %2152, float 0.000000e+00
  %2681 = and i32 %2585, 4194336
  %2682 = icmp eq i32 %2681, 4194336
  %2683 = select i1 %2682, float %2152, float 0.000000e+00
  %2684 = and i32 %2585, 8388640
  %2685 = icmp eq i32 %2684, 8388640
  %2686 = select i1 %2685, float %2152, float 0.000000e+00
  %2687 = and i32 %2585, 2048
  %2688 = icmp ne i32 %2687, 0
  %2689 = select i1 %2688, float %2152, float 0.000000e+00
  %2690 = and i32 %2585, 8192
  %2691 = icmp ne i32 %2690, 0
  %2692 = select i1 %2691, float %2152, float 0.000000e+00
  %2693 = icmp eq i32 %2675, 0
  br i1 %2693, label %2694, label %2719

; <label>:2694                                    ; preds = %2677
  %2695 = fsub fast float %2453, %1954
  %2696 = fsub fast float %2454, %1955
  %2697 = fmul fast float %2680, %2695
  %2698 = fmul fast float %2680, %2696
  %2699 = fadd fast float %2697, %1954
  %2700 = fadd fast float %2698, %1955
  %2701 = fsub fast float %2455, %1967
  %2702 = fmul fast float %2683, %2701
  %2703 = fadd fast float %2702, %1967
  %2704 = fsub fast float %2452, %1966
  %2705 = fmul fast float %2686, %2704
  %2706 = fadd fast float %2705, %1966
  %2707 = fsub fast float %2555, %1968
  %2708 = fmul fast float %2689, %2707
  %2709 = fadd fast float %2708, %1968
  %2710 = fsub fast float %2552, %1959
  %2711 = fsub fast float %2553, %1960
  %2712 = fsub fast float %2554, %1961
  %2713 = fmul fast float %2692, %2710
  %2714 = fmul fast float %2692, %2711
  %2715 = fmul fast float %2692, %2712
  %2716 = fadd fast float %2713, %1959
  %2717 = fadd fast float %2714, %1960
  %2718 = fadd fast float %2715, %1961
  br label %2783

; <label>:2719                                    ; preds = %2677
  %2720 = icmp eq i32 %2675, 4
  br i1 %2720, label %2721, label %2761

; <label>:2721                                    ; preds = %2719
  %2722 = fmul fast float %2680, %2453
  %2723 = fmul fast float %2680, %2454
  %2724 = fadd fast float %2722, %1954
  %2725 = fadd fast float %2723, %1955
  %2726 = call float @dx.op.binary.f32(i32 36, float %1967, float %2455)  ; FMin(a,b)
  %2727 = fsub fast float %2726, %1967
  %2728 = fmul fast float %2727, %2683
  %2729 = fadd fast float %2728, %1967
  %2730 = fadd fast float %2452, %1966
  %2731 = fmul fast float %2730, 0x3FF337FAE0000000
  %2732 = fmul fast float %1966, %1966
  %2733 = fmul fast float %2452, %2452
  %2734 = fadd fast float %2733, %2732
  %2735 = fmul fast float %2734, 0x3FE5152B00000000
  %2736 = fmul fast float %1966, 0xBFCC1F85E0000000
  %2737 = fmul fast float %2736, %2452
  %2738 = fadd fast float %2737, 0xBFE1363700000000
  %2739 = fadd fast float %2738, %2731
  %2740 = fsub fast float %2739, %2735
  %2741 = fmul fast float %2730, 0x3FBA6F0D00000000
  %2742 = fmul fast float %2734, 0x3FD0432880000000
  %2743 = fmul fast float %1966, 0xBFEF110800000000
  %2744 = fmul fast float %2743, %2452
  %2745 = fadd fast float %2744, 1.000000e+00
  %2746 = fsub fast float %2745, %2741
  %2747 = fadd fast float %2746, %2742
  %2748 = fdiv fast float %2740, %2747
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2750 = fsub fast float %2749, %1966
  %2751 = fmul fast float %2750, %2686
  %2752 = fadd fast float %2751, %1966
  %2753 = fmul fast float %2689, %2555
  %2754 = fadd fast float %2753, %1968
  %2755 = fmul fast float %2692, %2552
  %2756 = fmul fast float %2692, %2553
  %2757 = fmul fast float %2692, %2554
  %2758 = fadd fast float %2755, %1959
  %2759 = fadd fast float %2756, %1960
  %2760 = fadd fast float %2757, %1961
  br label %2783

; <label>:2761                                    ; preds = %2719
  %2762 = icmp eq i32 %2675, 8
  br i1 %2762, label %2763, label %2783

; <label>:2763                                    ; preds = %2761
  %2764 = fmul fast float %2680, %2453
  %2765 = fmul fast float %2680, %2454
  %2766 = fadd fast float %2764, %1954
  %2767 = fadd fast float %2765, %1955
  %2768 = call float @dx.op.binary.f32(i32 36, float %1967, float %2455)  ; FMin(a,b)
  %2769 = fsub fast float %2768, %1967
  %2770 = fmul fast float %2769, %2683
  %2771 = fadd fast float %2770, %1967
  %2772 = fsub fast float %2452, %1966
  %2773 = fmul fast float %2686, %2772
  %2774 = fadd fast float %2773, %1966
  %2775 = fmul fast float %2689, %2555
  %2776 = fadd fast float %2775, %1968
  %2777 = fmul fast float %2692, %2552
  %2778 = fmul fast float %2692, %2553
  %2779 = fmul fast float %2692, %2554
  %2780 = fadd fast float %2777, %1959
  %2781 = fadd fast float %2778, %1960
  %2782 = fadd fast float %2779, %1961
  br label %2783

; <label>:2783                                    ; preds = %2763, %2761, %2721, %2694, %2666, %2151, %1970, %1953
  %2784 = phi float [ %1954, %2666 ], [ %1954, %2151 ], [ %1954, %1953 ], [ %2766, %2763 ], [ %1954, %2761 ], [ %2724, %2721 ], [ %2699, %2694 ], [ %1954, %1970 ]
  %2785 = phi float [ %1955, %2666 ], [ %1955, %2151 ], [ %1955, %1953 ], [ %2767, %2763 ], [ %1955, %2761 ], [ %2725, %2721 ], [ %2700, %2694 ], [ %1955, %1970 ]
  %2786 = phi float [ %2667, %2666 ], [ %1956, %2151 ], [ %1956, %1953 ], [ %2667, %2763 ], [ %2667, %2761 ], [ %2667, %2721 ], [ %2667, %2694 ], [ %1956, %1970 ]
  %2787 = phi float [ %2668, %2666 ], [ %1957, %2151 ], [ %1957, %1953 ], [ %2668, %2763 ], [ %2668, %2761 ], [ %2668, %2721 ], [ %2668, %2694 ], [ %1957, %1970 ]
  %2788 = phi float [ %2669, %2666 ], [ %1958, %2151 ], [ %1958, %1953 ], [ %2669, %2763 ], [ %2669, %2761 ], [ %2669, %2721 ], [ %2669, %2694 ], [ %1958, %1970 ]
  %2789 = phi float [ %1959, %2666 ], [ %1959, %2151 ], [ %1959, %1953 ], [ %2780, %2763 ], [ %1959, %2761 ], [ %2758, %2721 ], [ %2716, %2694 ], [ %1959, %1970 ]
  %2790 = phi float [ %1960, %2666 ], [ %1960, %2151 ], [ %1960, %1953 ], [ %2781, %2763 ], [ %1960, %2761 ], [ %2759, %2721 ], [ %2717, %2694 ], [ %1960, %1970 ]
  %2791 = phi float [ %1961, %2666 ], [ %1961, %2151 ], [ %1961, %1953 ], [ %2782, %2763 ], [ %1961, %2761 ], [ %2760, %2721 ], [ %2718, %2694 ], [ %1961, %1970 ]
  %2792 = phi float [ %2670, %2666 ], [ %1962, %2151 ], [ %1962, %1953 ], [ %2670, %2763 ], [ %2670, %2761 ], [ %2670, %2721 ], [ %2670, %2694 ], [ %1962, %1970 ]
  %2793 = phi float [ %2671, %2666 ], [ %1963, %2151 ], [ %1963, %1953 ], [ %2671, %2763 ], [ %2671, %2761 ], [ %2671, %2721 ], [ %2671, %2694 ], [ %1963, %1970 ]
  %2794 = phi float [ %2672, %2666 ], [ %1964, %2151 ], [ %1964, %1953 ], [ %2672, %2763 ], [ %2672, %2761 ], [ %2672, %2721 ], [ %2672, %2694 ], [ %1964, %1970 ]
  %2795 = phi float [ %2673, %2666 ], [ %1965, %2151 ], [ %1965, %1953 ], [ %2673, %2763 ], [ %2673, %2761 ], [ %2673, %2721 ], [ %2673, %2694 ], [ %1965, %1970 ]
  %2796 = phi float [ %1966, %2666 ], [ %1966, %2151 ], [ %1966, %1953 ], [ %2774, %2763 ], [ %1966, %2761 ], [ %2752, %2721 ], [ %2706, %2694 ], [ %1966, %1970 ]
  %2797 = phi float [ %1967, %2666 ], [ %1967, %2151 ], [ %1967, %1953 ], [ %2771, %2763 ], [ %1967, %2761 ], [ %2729, %2721 ], [ %2703, %2694 ], [ %1967, %1970 ]
  %2798 = phi float [ %1968, %2666 ], [ %1968, %2151 ], [ %1968, %1953 ], [ %2776, %2763 ], [ %1968, %2761 ], [ %2754, %2721 ], [ %2709, %2694 ], [ %1968, %1970 ]
  %2799 = phi float [ %2674, %2666 ], [ %1969, %2151 ], [ %1969, %1953 ], [ %2674, %2763 ], [ %2674, %2761 ], [ %2674, %2721 ], [ %2674, %2694 ], [ %1969, %1970 ]
  br i1 %472, label %3613, label %2800

; <label>:2800                                    ; preds = %2783
  %2801 = icmp ult i32 %526, 4
  %2802 = add i32 %43, 72
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = add i32 %43, 76
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = or i32 %2807, %2804
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %3613, label %2810

; <label>:2810                                    ; preds = %2800
  %2811 = and i32 %2804, 262144
  %2812 = icmp ne i32 %2811, 0
  %2813 = select i1 %2812, float %49, float 1.000000e+00
  %2814 = select i1 %2812, float %50, float 0.000000e+00
  %2815 = select i1 %2812, float %51, float 0.000000e+00
  %2816 = select i1 %2812, float %52, float 1.000000e+00
  %2817 = select i1 %2812, float %53, float %81
  %2818 = select i1 %2812, float %54, float %82
  %2819 = add i32 %43, 332
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = lshr i32 %2821, 16
  %2823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2822)  ; LegacyF16ToF32(value)
  %2824 = fmul fast float %2823, 0x3F50624DE0000000
  %2825 = add i32 %43, 136
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = lshr i32 %2827, 16
  %2829 = and i32 %2828, 255
  %2830 = lshr i32 %2827, 24
  %2831 = add i32 %43, 340
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 65535
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = lshr i32 %2833, 16
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = add i32 %43, 80
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = lshr i32 %2840, 22
  %2842 = shl nuw nsw i32 %2841, 5
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = shl i32 %2840, 4
  %2845 = and i32 %2844, 32752
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = lshr i32 %2840, 7
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 3
  %2852 = fmul fast float %2851, 1.000000e+03
  %2853 = fmul fast float %462, %2852
  %2854 = call float @dx.op.unary.f32(i32 22, float %2853)  ; Frc(value)
  %2855 = fadd fast float %2854, %452
  %2856 = fmul fast float %463, %2852
  %2857 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  %2858 = fadd fast float %2857, %454
  %2859 = fmul fast float %2824, %2852
  %2860 = call float @dx.op.unary.f32(i32 22, float %2859)  ; Frc(value)
  %2861 = fmul fast float %2860, 0x401921FB60000000
  %2862 = fadd fast float %2861, %2843
  %2863 = call float @dx.op.unary.f32(i32 13, float %2862)  ; Sin(value)
  %2864 = call float @dx.op.unary.f32(i32 12, float %2862)  ; Cos(value)
  %2865 = fsub fast float -0.000000e+00, %2863
  %2866 = fadd fast float %2817, -5.000000e-01
  %2867 = fadd fast float %2818, -5.000000e-01
  %2868 = fmul fast float %2835, %2866
  %2869 = fmul fast float %2837, %2867
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = fadd fast float %2869, 5.000000e-01
  %2872 = fmul fast float %2846, %2870
  %2873 = fmul fast float %2849, %2871
  %2874 = fmul fast float %2864, %2872
  %2875 = call float @dx.op.tertiary.f32(i32 46, float %2865, float %2873, float %2874)  ; FMad(a,b,c)
  %2876 = fmul fast float %2863, %2872
  %2877 = call float @dx.op.tertiary.f32(i32 46, float %2864, float %2873, float %2876)  ; FMad(a,b,c)
  %2878 = fadd fast float %2855, %2875
  %2879 = fadd fast float %2858, %2877
  %2880 = icmp ugt i32 %2829, 1
  %2881 = icmp ugt i32 %2827, 33554431
  %2882 = or i1 %2881, %2880
  br i1 %2882, label %2883, label %2908

; <label>:2883                                    ; preds = %2810
  %2884 = add i32 %43, 276
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = lshr i32 %2886, 16
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = fmul fast float %2851, %2888
  %2890 = call float @dx.op.unary.f32(i32 22, float %2889)  ; Frc(value)
  %2891 = mul nuw nsw i32 %2829, %2830
  %2892 = uitofp i32 %2891 to float
  %2893 = fmul fast float %2890, %2892
  %2894 = call float @dx.op.unary.f32(i32 27, float %2893)  ; Round_ni(value)
  %2895 = fptoui float %2894 to i32
  %2896 = urem i32 %2895, %2829
  %2897 = udiv i32 %2895, %2830
  %2898 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2899 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2900 = uitofp i32 %2896 to float
  %2901 = uitofp i32 %2897 to float
  %2902 = fadd fast float %2898, %2900
  %2903 = fadd fast float %2899, %2901
  %2904 = uitofp i32 %2829 to float
  %2905 = uitofp i32 %2830 to float
  %2906 = fdiv fast float %2902, %2904
  %2907 = fdiv fast float %2903, %2905
  br label %2908

; <label>:2908                                    ; preds = %2883, %2810
  %2909 = phi float [ %2906, %2883 ], [ %2878, %2810 ]
  %2910 = phi float [ %2907, %2883 ], [ %2879, %2810 ]
  %2911 = and i32 %2804, 256
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2959, label %2913

; <label>:2913                                    ; preds = %2908
  %2914 = add i32 %43, 500
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %2916, 0
  %2918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2918, %dx.types.Handle %96, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = add i32 %43, 148
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = shl i32 %2923, 4
  %2925 = and i32 %2924, 32752
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = lshr i32 %2923, 7
  %2928 = and i32 %2927, 32752
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = fsub fast float 1.000000e+00, %521
  %2931 = call float @dx.op.binary.f32(i32 35, float %2930, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2932 = bitcast float %521 to i32
  %2933 = sitofp i32 %2932 to float
  %2934 = fadd fast float %2933, 0xC1CFBF8940000000
  %2935 = fmul fast float %2929, %2934
  %2936 = fadd fast float %2935, 0x41CFBF8940000000
  %2937 = fptosi float %2936 to i32
  %2938 = bitcast i32 %2937 to float
  %2939 = bitcast float %2931 to i32
  %2940 = sitofp i32 %2939 to float
  %2941 = fadd fast float %2940, 0xC1CFBF8940000000
  %2942 = fmul fast float %2941, %2929
  %2943 = fadd fast float %2942, 0x41CFBF8940000000
  %2944 = fptosi float %2943 to i32
  %2945 = bitcast i32 %2944 to float
  %2946 = fmul fast float %2938, %2926
  %2947 = fmul fast float %2945, %2926
  %2948 = fsub fast float %2931, %2946
  %2949 = fadd fast float %2947, %2931
  %2950 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2951 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2952 = fsub fast float %2920, %2950
  %2953 = fsub fast float %2951, %2950
  %2954 = bitcast float %2953 to i32
  %2955 = sub nsw i32 2129859010, %2954
  %2956 = bitcast i32 %2955 to float
  %2957 = fmul fast float %2956, %2952
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  br label %2959

; <label>:2959                                    ; preds = %2913, %2908
  %2960 = phi float [ %2958, %2913 ], [ %521, %2908 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 128
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %2981, label %2965

; <label>:2965                                    ; preds = %2959
  %2966 = add i32 %43, 484
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = add i32 %2968, 0
  %2970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2970, %dx.types.Handle %96, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 524288
  %2976 = icmp ne i32 %2975, 0
  %2977 = fcmp fast ogt float %2972, 0x3FE0101020000000
  %2978 = select i1 %2977, float 1.000000e+00, float 0.000000e+00
  %2979 = select i1 %2976, float %2978, float %2972
  %2980 = fmul fast float %2979, %2960
  br label %2981

; <label>:2981                                    ; preds = %2965, %2959
  %2982 = phi float [ %2980, %2965 ], [ %2960, %2959 ]
  %2983 = fcmp fast ult float %2982, 0x3F70101020000000
  br i1 %2983, label %3613, label %2984

; <label>:2984                                    ; preds = %2981
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 16
  %2988 = icmp eq i32 %2987, 0
  br i1 %2988, label %3187, label %2989

; <label>:2989                                    ; preds = %2984
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = add i32 %43, 436
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = add i32 %2994, 0
  %2996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2996, %dx.types.Handle %95, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.ResRet.f32 %2997, 2
  %3001 = extractvalue %dx.types.ResRet.f32 %2997, 3
  %3002 = and i32 %2991, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = lshr i32 %2991, 8
  %3005 = and i32 %3004, 255
  %3006 = uitofp i32 %3005 to float
  %3007 = fmul fast float %3001, %3003
  %3008 = fadd fast float %3007, %3006
  %3009 = fmul fast float %3008, 0x3F70101000000000
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, 512
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3022, label %3014

; <label>:3014                                    ; preds = %2989
  %3015 = add i32 %43, 520
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = add i32 %3017, 0
  %3019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3019, %dx.types.Handle %96, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  br label %3022

; <label>:3022                                    ; preds = %3014, %2989
  %3023 = phi float [ %3021, %3014 ], [ 1.000000e+00, %2989 ]
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 33554432
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3134, label %3028

; <label>:3028                                    ; preds = %3022
  %3029 = add i32 %43, 272
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 65535
  %3033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3032)  ; LegacyF16ToF32(value)
  %3034 = lshr i32 %3031, 16
  %3035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3034)  ; LegacyF16ToF32(value)
  %3036 = add i32 %43, 276
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 65535
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = lshr i32 %3042, 24
  %3044 = uitofp i32 %3043 to float
  %3045 = fmul fast float %3044, 0x3F70101020000000
  %3046 = and i32 %3042, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = fmul fast float %3047, 0x3F70101020000000
  %3049 = lshr i32 %3042, 8
  %3050 = and i32 %3049, 255
  %3051 = uitofp i32 %3050 to float
  %3052 = fmul fast float %3051, 0x3F70101020000000
  %3053 = lshr i32 %3042, 16
  %3054 = and i32 %3053, 255
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3055, 0x3F70101020000000
  %3057 = add i32 %43, 268
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = lshr i32 %3059, 24
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = and i32 %3059, 255
  %3064 = uitofp i32 %3063 to float
  %3065 = fmul fast float %3064, 0x3F70101020000000
  %3066 = lshr i32 %3059, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = fmul fast float %3068, 0x3F70101020000000
  %3070 = lshr i32 %3059, 16
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = fmul fast float %3072, 0x3F70101020000000
  %3074 = bitcast float %2998 to i32
  %3075 = ashr i32 %3074, 1
  %3076 = sub nsw i32 1597463174, %3075
  %3077 = bitcast i32 %3076 to float
  %3078 = fmul fast float %2998, 5.000000e-01
  %3079 = fmul fast float %3077, %3077
  %3080 = fmul fast float %3079, %3078
  %3081 = fsub fast float 1.500000e+00, %3080
  %3082 = fmul fast float %3077, %2998
  %3083 = fmul fast float %3082, %3081
  %3084 = bitcast float %2999 to i32
  %3085 = ashr i32 %3084, 1
  %3086 = sub nsw i32 1597463174, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %2999, 5.000000e-01
  %3089 = fmul fast float %3087, %3087
  %3090 = fmul fast float %3089, %3088
  %3091 = fsub fast float 1.500000e+00, %3090
  %3092 = fmul fast float %3087, %2999
  %3093 = fmul fast float %3092, %3091
  %3094 = bitcast float %3000 to i32
  %3095 = ashr i32 %3094, 1
  %3096 = sub nsw i32 1597463174, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3000, 5.000000e-01
  %3099 = fmul fast float %3097, %3097
  %3100 = fmul fast float %3099, %3098
  %3101 = fsub fast float 1.500000e+00, %3100
  %3102 = fmul fast float %3097, %3000
  %3103 = fmul fast float %3102, %3101
  %3104 = fsub fast float %3083, %3065
  %3105 = fsub fast float %3093, %3069
  %3106 = fsub fast float %3103, %3073
  %3107 = fmul fast float %3104, %3033
  %3108 = fmul fast float %3105, %3035
  %3109 = fmul fast float %3106, %3040
  %3110 = fadd fast float %3107, %3048
  %3111 = fadd fast float %3108, %3052
  %3112 = fadd fast float %3109, %3056
  %3113 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3114 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3115 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3116 = fmul fast float %3113, %3113
  %3117 = fmul fast float %3114, %3114
  %3118 = fmul fast float %3115, %3115
  %3119 = fsub fast float %3116, %2998
  %3120 = fsub fast float %3117, %2999
  %3121 = fsub fast float %3118, %3000
  %3122 = fmul fast float %3119, %3023
  %3123 = fmul fast float %3120, %3023
  %3124 = fmul fast float %3121, %3023
  %3125 = fadd fast float %3122, %2998
  %3126 = fadd fast float %3123, %2999
  %3127 = fadd fast float %3124, %3000
  %3128 = fadd fast float %3045, %3009
  %3129 = fsub fast float %3128, %3062
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3131 = fsub fast float %3130, %3009
  %3132 = fmul fast float %3131, %3023
  %3133 = fadd fast float %3132, %3009
  br label %3187

; <label>:3134                                    ; preds = %3022
  %3135 = and i32 %3025, 134217728
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3171, label %3137

; <label>:3137                                    ; preds = %3134
  %3138 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %3139 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %3140 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %3141 = fadd fast float %3138, -5.000000e-01
  %3142 = fadd fast float %3139, -5.000000e-01
  %3143 = fadd fast float %3140, -5.000000e-01
  %3144 = fmul fast float %3141, %3023
  %3145 = fmul fast float %3142, %3023
  %3146 = fmul fast float %3143, %3023
  %3147 = fadd fast float %3144, 5.000000e-01
  %3148 = fadd fast float %3145, 5.000000e-01
  %3149 = fadd fast float %3146, 5.000000e-01
  %3150 = call float @dx.op.unary.f32(i32 24, float %2998)  ; Sqrt(value)
  %3151 = call float @dx.op.unary.f32(i32 24, float %2999)  ; Sqrt(value)
  %3152 = call float @dx.op.unary.f32(i32 24, float %3000)  ; Sqrt(value)
  %3153 = fmul fast float %3147, 2.000000e+00
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = fmul fast float %3154, %3150
  %3156 = fadd fast float %3155, %3153
  %3157 = fmul fast float %3156, %3150
  %3158 = fmul fast float %3148, 2.000000e+00
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = fmul fast float %3159, %3151
  %3161 = fadd fast float %3160, %3158
  %3162 = fmul fast float %3161, %3151
  %3163 = fmul fast float %3149, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3152
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3152
  %3168 = fmul fast float %3157, %3157
  %3169 = fmul fast float %3162, %3162
  %3170 = fmul fast float %3167, %3167
  br label %3187

; <label>:3171                                    ; preds = %3134
  %3172 = fmul fast float %439, %439
  %3173 = fmul fast float %443, %443
  %3174 = fmul fast float %447, %447
  %3175 = fadd fast float %3172, -1.000000e+00
  %3176 = fadd fast float %3173, -1.000000e+00
  %3177 = fadd fast float %3174, -1.000000e+00
  %3178 = fmul fast float %3023, %3175
  %3179 = fmul fast float %3023, %3176
  %3180 = fmul fast float %3023, %3177
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fadd fast float %3179, 1.000000e+00
  %3183 = fadd fast float %3180, 1.000000e+00
  %3184 = fmul fast float %3181, %2998
  %3185 = fmul fast float %3182, %2999
  %3186 = fmul fast float %3183, %3000
  br label %3187

; <label>:3187                                    ; preds = %3171, %3137, %3028, %2984
  %3188 = phi float [ %3133, %3028 ], [ %3009, %3137 ], [ %3009, %3171 ], [ 0x3FA23C0BE0000000, %2984 ]
  %3189 = phi float [ %3125, %3028 ], [ %3168, %3137 ], [ %3184, %3171 ], [ 1.000000e+00, %2984 ]
  %3190 = phi float [ %3126, %3028 ], [ %3169, %3137 ], [ %3185, %3171 ], [ 1.000000e+00, %2984 ]
  %3191 = phi float [ %3127, %3028 ], [ %3170, %3137 ], [ %3186, %3171 ], [ 1.000000e+00, %2984 ]
  %3192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.i32 %3192, 1
  %3194 = and i32 %3193, 1
  %3195 = icmp ne i32 %3194, 0
  %3196 = add i32 %43, 356
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 32
  %3200 = icmp ne i32 %3199, 0
  %3201 = and i1 %3195, %3200
  %3202 = select i1 %3201, float 1.000000e+00, float %3189
  %3203 = select i1 %3201, float 0x3FD3333340000000, float %3190
  %3204 = select i1 %3201, float 0x3FD3333340000000, float %3191
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 32
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3281, label %3209

; <label>:3209                                    ; preds = %3187
  %3210 = add i32 %43, 140
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = add i32 %43, 452
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = add i32 %3215, 0
  %3217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3217, %dx.types.Handle %95, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.ResRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.ResRet.f32 %3218, 2
  %3222 = extractvalue %dx.types.ResRet.f32 %3218, 3
  %3223 = and i32 %3212, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = lshr i32 %3212, 8
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = lshr i32 %3212, 16
  %3229 = and i32 %3228, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F70101000000000
  %3232 = fmul fast float %3219, %3224
  %3233 = fadd fast float %3232, %3227
  %3234 = fmul fast float %3233, 0x3F70101000000000
  %3235 = fadd fast float %3220, -5.000000e-01
  %3236 = fadd fast float %3222, -5.000000e-01
  %3237 = fmul fast float %3235, %3231
  %3238 = fmul fast float %3236, %3231
  %3239 = fadd fast float %3237, 5.000000e-01
  %3240 = fadd fast float %3238, 5.000000e-01
  %3241 = fmul fast float %3239, 2.000000e+00
  %3242 = fadd fast float %3241, -1.000000e+00
  %3243 = fmul fast float %3240, 2.000000e+00
  %3244 = fadd fast float %3243, -1.000000e+00
  %3245 = fadd fast float %3242, %3244
  %3246 = fmul fast float %3245, 5.000000e-01
  %3247 = fsub fast float %3242, %3244
  %3248 = fmul fast float %3247, 5.000000e-01
  %3249 = call float @dx.op.unary.f32(i32 6, float %3246)  ; FAbs(value)
  %3250 = fsub fast float 1.000000e+00, %3249
  %3251 = call float @dx.op.unary.f32(i32 6, float %3248)  ; FAbs(value)
  %3252 = fsub fast float %3250, %3251
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3248, float %3252, float %3246, float %3248, float %3252)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = call float @dx.op.unary.f32(i32 25, float %3253)  ; Rsqrt(value)
  %3255 = fmul fast float %3246, %3254
  %3256 = fmul fast float %3248, %3254
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = and i32 %3258, 67108864
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3277, label %3261

; <label>:3261                                    ; preds = %3209
  %3262 = add i32 %43, 328
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 65535
  %3266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3265)  ; LegacyF16ToF32(value)
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 65535
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = lshr i32 %3264, 16
  %3272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3271)  ; LegacyF16ToF32(value)
  %3273 = fsub fast float %3234, %3272
  %3274 = fmul fast float %3273, %3266
  %3275 = fadd fast float %3274, %3270
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  br label %3277

; <label>:3277                                    ; preds = %3261, %3209
  %3278 = phi float [ %3276, %3261 ], [ %3234, %3209 ]
  %3279 = call float @dx.op.dot2.f32(i32 54, float %3255, float %3256, float %2813, float %2814)  ; Dot2(ax,ay,bx,by)
  %3280 = call float @dx.op.dot2.f32(i32 54, float %3255, float %3256, float %2815, float %2816)  ; Dot2(ax,ay,bx,by)
  br label %3281

; <label>:3281                                    ; preds = %3277, %3187
  %3282 = phi float [ %3278, %3277 ], [ 0x3FD6666660000000, %3187 ]
  %3283 = phi float [ %3279, %3277 ], [ 0.000000e+00, %3187 ]
  %3284 = phi float [ %3280, %3277 ], [ 0.000000e+00, %3187 ]
  %3285 = phi float [ %3221, %3277 ], [ 1.000000e+00, %3187 ]
  %3286 = add i32 %43, 208
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = lshr i32 %3288, 22
  %3290 = shl nuw nsw i32 %3289, 5
  %3291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3290)  ; LegacyF16ToF32(value)
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 64
  %3295 = icmp eq i32 %3294, 0
  br i1 %3295, label %3329, label %3296

; <label>:3296                                    ; preds = %3281
  %3297 = add i32 %43, 468
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = add i32 %3299, 0
  %3301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 131072
  %3305 = icmp eq i32 %3304, 0
  %3306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3301, %dx.types.Handle %95, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = fmul fast float %3307, %427
  %3311 = fmul fast float %3308, %430
  %3312 = fmul fast float %3309, %433
  br i1 %3305, label %3319, label %3313

; <label>:3313                                    ; preds = %3296
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = fmul fast float %3315, %3310
  %3317 = fmul fast float %3315, %3311
  %3318 = fmul fast float %3315, %3312
  br label %3319

; <label>:3319                                    ; preds = %3313, %3296
  %3320 = phi float [ %3316, %3313 ], [ %3310, %3296 ]
  %3321 = phi float [ %3317, %3313 ], [ %3311, %3296 ]
  %3322 = phi float [ %3318, %3313 ], [ %3312, %3296 ]
  %3323 = fmul fast float %3320, %3291
  %3324 = select i1 %284, float %3323, float %3320
  %3325 = call float @dx.op.dot3.f32(i32 55, float %3324, float %3321, float %3322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3326 = select i1 %284, float 0.000000e+00, float %3320
  %3327 = select i1 %284, float %3325, float %3321
  %3328 = select i1 %284, float 0.000000e+00, float %3322
  br label %3329

; <label>:3329                                    ; preds = %3319, %3281
  %3330 = phi float [ %3326, %3319 ], [ 0.000000e+00, %3281 ]
  %3331 = phi float [ %3327, %3319 ], [ 0.000000e+00, %3281 ]
  %3332 = phi float [ %3328, %3319 ], [ 0.000000e+00, %3281 ]
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 10240
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3381, label %3337

; <label>:3337                                    ; preds = %3329
  %3338 = add i32 %43, 536
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %96, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 3
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 1048576
  %3349 = icmp ne i32 %3348, 0
  %3350 = and i32 %3347, 8192
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3367, label %3352

; <label>:3352                                    ; preds = %3337
  %3353 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3354 = select i1 %3349, float %3353, float %3344
  %3355 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3356 = select i1 %3349, float %3355, float %3344
  %3357 = add i32 %43, 144
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = lshr i32 %3359, 16
  %3361 = and i32 %3360, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = fmul fast float %3362, 0x3F80101020000000
  %3364 = fmul fast float %3363, %3356
  %3365 = fmul fast float %3363, %3344
  %3366 = fmul fast float %3363, %3354
  br label %3367

; <label>:3367                                    ; preds = %3352, %3337
  %3368 = phi float [ %3364, %3352 ], [ 0.000000e+00, %3337 ]
  %3369 = phi float [ %3365, %3352 ], [ 0.000000e+00, %3337 ]
  %3370 = phi float [ %3366, %3352 ], [ 0.000000e+00, %3337 ]
  %3371 = and i32 %3347, 2048
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3381, label %3373

; <label>:3373                                    ; preds = %3367
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = shl i32 %3375, 4
  %3377 = and i32 %3376, 32752
  %3378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3377)  ; LegacyF16ToF32(value)
  %3379 = fmul fast float %3378, %3345
  %3380 = call float @dx.op.binary.f32(i32 35, float %3379, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3381

; <label>:3381                                    ; preds = %3373, %3367, %3329
  %3382 = phi float [ %3368, %3373 ], [ %3368, %3367 ], [ 0.000000e+00, %3329 ]
  %3383 = phi float [ %3369, %3373 ], [ %3369, %3367 ], [ 0.000000e+00, %3329 ]
  %3384 = phi float [ %3370, %3373 ], [ %3370, %3367 ], [ 0.000000e+00, %3329 ]
  %3385 = phi float [ %3380, %3373 ], [ 0x3F70101020000000, %3367 ], [ 0x3F70101020000000, %3329 ]
  %3386 = add i32 %43, 144
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = lshr i32 %3388, 8
  %3392 = and i32 %3391, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3203, float %3204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = fmul fast float %3393, %3394
  %3396 = fadd fast float %3395, %3390
  %3397 = fmul fast float %3396, 0x3F70101020000000
  %3398 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  br i1 %2801, label %3399, label %3407

; <label>:3399                                    ; preds = %3381
  %3400 = fsub fast float 1.000000e+00, %2982
  %3401 = fmul fast float %3400, %2786
  %3402 = fmul fast float %3400, %2787
  %3403 = fmul fast float %3400, %2788
  %3404 = fmul fast float %3400, %2792
  %3405 = fmul fast float %3400, %2793
  %3406 = fmul fast float %3400, %2794
  br label %3407

; <label>:3407                                    ; preds = %3399, %3381
  %3408 = phi float [ %3401, %3399 ], [ %2786, %3381 ]
  %3409 = phi float [ %3402, %3399 ], [ %2787, %3381 ]
  %3410 = phi float [ %3403, %3399 ], [ %2788, %3381 ]
  %3411 = phi float [ %3404, %3399 ], [ %2792, %3381 ]
  %3412 = phi float [ %3405, %3399 ], [ %2793, %3381 ]
  %3413 = phi float [ %3406, %3399 ], [ %2794, %3381 ]
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 3
  %3417 = icmp eq i32 %3416, 3
  br i1 %3417, label %3496, label %3418

; <label>:3418                                    ; preds = %3407
  %3419 = and i32 %3415, 16
  %3420 = icmp ne i32 %3419, 0
  %3421 = select i1 %3420, float %2982, float 0.000000e+00
  %3422 = icmp eq i32 %3416, 0
  br i1 %3422, label %3423, label %3451

; <label>:3423                                    ; preds = %3418
  %3424 = and i32 %3415, 64
  %3425 = icmp ne i32 %3424, 0
  %3426 = select i1 %3425, float %2982, float 0.000000e+00
  %3427 = fsub fast float %3202, %3408
  %3428 = fsub fast float %3203, %3409
  %3429 = fsub fast float %3204, %3410
  %3430 = fmul fast float %3421, %3427
  %3431 = fmul fast float %3421, %3428
  %3432 = fmul fast float %3421, %3429
  %3433 = fadd fast float %3430, %3408
  %3434 = fadd fast float %3431, %3409
  %3435 = fadd fast float %3432, %3410
  %3436 = fsub fast float %3188, %2795
  %3437 = fmul fast float %3421, %3436
  %3438 = fadd fast float %3437, %2795
  %3439 = fsub fast float %3330, %3411
  %3440 = fsub fast float %3331, %3412
  %3441 = fsub fast float %3332, %3413
  %3442 = fmul fast float %3426, %3439
  %3443 = fmul fast float %3426, %3440
  %3444 = fmul fast float %3426, %3441
  %3445 = fadd fast float %3442, %3411
  %3446 = fadd fast float %3443, %3412
  %3447 = fadd fast float %3444, %3413
  %3448 = fsub fast float %3398, %2799
  %3449 = fmul fast float %3421, %3448
  %3450 = fadd fast float %3449, %2799
  br label %3496

; <label>:3451                                    ; preds = %3418
  %3452 = icmp eq i32 %3416, 1
  br i1 %3452, label %3453, label %3466

; <label>:3453                                    ; preds = %3451
  %3454 = fadd fast float %3202, -1.000000e+00
  %3455 = fadd fast float %3203, -1.000000e+00
  %3456 = fadd fast float %3204, -1.000000e+00
  %3457 = fmul fast float %3421, %3454
  %3458 = fmul fast float %3421, %3455
  %3459 = fmul fast float %3421, %3456
  %3460 = fadd fast float %3457, 1.000000e+00
  %3461 = fadd fast float %3458, 1.000000e+00
  %3462 = fadd fast float %3459, 1.000000e+00
  %3463 = fmul fast float %3460, %3408
  %3464 = fmul fast float %3461, %3409
  %3465 = fmul fast float %3462, %3410
  br label %3496

; <label>:3466                                    ; preds = %3451
  %3467 = icmp eq i32 %3416, 2
  br i1 %3467, label %3468, label %3496

; <label>:3468                                    ; preds = %3466
  %3469 = call float @dx.op.unary.f32(i32 24, float %3202)  ; Sqrt(value)
  %3470 = call float @dx.op.unary.f32(i32 24, float %3203)  ; Sqrt(value)
  %3471 = call float @dx.op.unary.f32(i32 24, float %3204)  ; Sqrt(value)
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fadd fast float %3470, -5.000000e-01
  %3474 = fadd fast float %3471, -5.000000e-01
  %3475 = fmul fast float %3472, %3421
  %3476 = fmul fast float %3473, %3421
  %3477 = fmul fast float %3474, %3421
  %3478 = fadd fast float %3475, 5.000000e-01
  %3479 = fadd fast float %3476, 5.000000e-01
  %3480 = fadd fast float %3477, 5.000000e-01
  %3481 = fmul fast float %3478, 2.000000e+00
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fmul fast float %3482, %3408
  %3484 = fadd fast float %3483, %3481
  %3485 = fmul fast float %3484, %3408
  %3486 = fmul fast float %3479, 2.000000e+00
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3487, %3409
  %3489 = fadd fast float %3488, %3486
  %3490 = fmul fast float %3489, %3409
  %3491 = fmul fast float %3480, 2.000000e+00
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3410
  %3494 = fadd fast float %3493, %3491
  %3495 = fmul fast float %3494, %3410
  br label %3496

; <label>:3496                                    ; preds = %3468, %3466, %3453, %3423, %3407
  %3497 = phi float [ %3408, %3407 ], [ %3485, %3468 ], [ %3408, %3466 ], [ %3463, %3453 ], [ %3433, %3423 ]
  %3498 = phi float [ %3409, %3407 ], [ %3490, %3468 ], [ %3409, %3466 ], [ %3464, %3453 ], [ %3434, %3423 ]
  %3499 = phi float [ %3410, %3407 ], [ %3495, %3468 ], [ %3410, %3466 ], [ %3465, %3453 ], [ %3435, %3423 ]
  %3500 = phi float [ %3411, %3407 ], [ %3411, %3468 ], [ %3411, %3466 ], [ %3411, %3453 ], [ %3445, %3423 ]
  %3501 = phi float [ %3412, %3407 ], [ %3412, %3468 ], [ %3412, %3466 ], [ %3412, %3453 ], [ %3446, %3423 ]
  %3502 = phi float [ %3413, %3407 ], [ %3413, %3468 ], [ %3413, %3466 ], [ %3413, %3453 ], [ %3447, %3423 ]
  %3503 = phi float [ %2795, %3407 ], [ %2795, %3468 ], [ %2795, %3466 ], [ %2795, %3453 ], [ %3438, %3423 ]
  %3504 = phi float [ %2799, %3407 ], [ %2799, %3468 ], [ %2799, %3466 ], [ %2799, %3453 ], [ %3450, %3423 ]
  %3505 = and i32 %3415, 12
  %3506 = icmp eq i32 %3505, 12
  br i1 %3506, label %3613, label %3507

; <label>:3507                                    ; preds = %3496
  %3508 = and i32 %3415, 2097184
  %3509 = icmp eq i32 %3508, 2097184
  %3510 = select i1 %3509, float %2982, float 0.000000e+00
  %3511 = and i32 %3415, 4194336
  %3512 = icmp eq i32 %3511, 4194336
  %3513 = select i1 %3512, float %2982, float 0.000000e+00
  %3514 = and i32 %3415, 8388640
  %3515 = icmp eq i32 %3514, 8388640
  %3516 = select i1 %3515, float %2982, float 0.000000e+00
  %3517 = and i32 %3415, 2048
  %3518 = icmp ne i32 %3517, 0
  %3519 = select i1 %3518, float %2982, float 0.000000e+00
  %3520 = and i32 %3415, 8192
  %3521 = icmp ne i32 %3520, 0
  %3522 = select i1 %3521, float %2982, float 0.000000e+00
  %3523 = icmp eq i32 %3505, 0
  br i1 %3523, label %3524, label %3549

; <label>:3524                                    ; preds = %3507
  %3525 = fsub fast float %3283, %2784
  %3526 = fsub fast float %3284, %2785
  %3527 = fmul fast float %3510, %3525
  %3528 = fmul fast float %3510, %3526
  %3529 = fadd fast float %3527, %2784
  %3530 = fadd fast float %3528, %2785
  %3531 = fsub fast float %3285, %2797
  %3532 = fmul fast float %3513, %3531
  %3533 = fadd fast float %3532, %2797
  %3534 = fsub fast float %3282, %2796
  %3535 = fmul fast float %3516, %3534
  %3536 = fadd fast float %3535, %2796
  %3537 = fsub fast float %3385, %2798
  %3538 = fmul fast float %3519, %3537
  %3539 = fadd fast float %3538, %2798
  %3540 = fsub fast float %3382, %2789
  %3541 = fsub fast float %3383, %2790
  %3542 = fsub fast float %3384, %2791
  %3543 = fmul fast float %3522, %3540
  %3544 = fmul fast float %3522, %3541
  %3545 = fmul fast float %3522, %3542
  %3546 = fadd fast float %3543, %2789
  %3547 = fadd fast float %3544, %2790
  %3548 = fadd fast float %3545, %2791
  br label %3613

; <label>:3549                                    ; preds = %3507
  %3550 = icmp eq i32 %3505, 4
  br i1 %3550, label %3551, label %3591

; <label>:3551                                    ; preds = %3549
  %3552 = fmul fast float %3510, %3283
  %3553 = fmul fast float %3510, %3284
  %3554 = fadd fast float %3552, %2784
  %3555 = fadd fast float %3553, %2785
  %3556 = call float @dx.op.binary.f32(i32 36, float %2797, float %3285)  ; FMin(a,b)
  %3557 = fsub fast float %3556, %2797
  %3558 = fmul fast float %3557, %3513
  %3559 = fadd fast float %3558, %2797
  %3560 = fadd fast float %3282, %2796
  %3561 = fmul fast float %3560, 0x3FF337FAE0000000
  %3562 = fmul fast float %2796, %2796
  %3563 = fmul fast float %3282, %3282
  %3564 = fadd fast float %3563, %3562
  %3565 = fmul fast float %3564, 0x3FE5152B00000000
  %3566 = fmul fast float %2796, 0xBFCC1F85E0000000
  %3567 = fmul fast float %3566, %3282
  %3568 = fadd fast float %3567, 0xBFE1363700000000
  %3569 = fadd fast float %3568, %3561
  %3570 = fsub fast float %3569, %3565
  %3571 = fmul fast float %3560, 0x3FBA6F0D00000000
  %3572 = fmul fast float %3564, 0x3FD0432880000000
  %3573 = fmul fast float %2796, 0xBFEF110800000000
  %3574 = fmul fast float %3573, %3282
  %3575 = fadd fast float %3574, 1.000000e+00
  %3576 = fsub fast float %3575, %3571
  %3577 = fadd fast float %3576, %3572
  %3578 = fdiv fast float %3570, %3577
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = fsub fast float %3579, %2796
  %3581 = fmul fast float %3580, %3516
  %3582 = fadd fast float %3581, %2796
  %3583 = fmul fast float %3519, %3385
  %3584 = fadd fast float %3583, %2798
  %3585 = fmul fast float %3522, %3382
  %3586 = fmul fast float %3522, %3383
  %3587 = fmul fast float %3522, %3384
  %3588 = fadd fast float %3585, %2789
  %3589 = fadd fast float %3586, %2790
  %3590 = fadd fast float %3587, %2791
  br label %3613

; <label>:3591                                    ; preds = %3549
  %3592 = icmp eq i32 %3505, 8
  br i1 %3592, label %3593, label %3613

; <label>:3593                                    ; preds = %3591
  %3594 = fmul fast float %3510, %3283
  %3595 = fmul fast float %3510, %3284
  %3596 = fadd fast float %3594, %2784
  %3597 = fadd fast float %3595, %2785
  %3598 = call float @dx.op.binary.f32(i32 36, float %2797, float %3285)  ; FMin(a,b)
  %3599 = fsub fast float %3598, %2797
  %3600 = fmul fast float %3599, %3513
  %3601 = fadd fast float %3600, %2797
  %3602 = fsub fast float %3282, %2796
  %3603 = fmul fast float %3516, %3602
  %3604 = fadd fast float %3603, %2796
  %3605 = fmul fast float %3519, %3385
  %3606 = fadd fast float %3605, %2798
  %3607 = fmul fast float %3522, %3382
  %3608 = fmul fast float %3522, %3383
  %3609 = fmul fast float %3522, %3384
  %3610 = fadd fast float %3607, %2789
  %3611 = fadd fast float %3608, %2790
  %3612 = fadd fast float %3609, %2791
  br label %3613

; <label>:3613                                    ; preds = %3593, %3591, %3551, %3524, %3496, %2981, %2800, %2783
  %3614 = phi float [ %2784, %3496 ], [ %2784, %2981 ], [ %2784, %2783 ], [ %2784, %2800 ], [ %3529, %3524 ], [ %3554, %3551 ], [ %2784, %3591 ], [ %3596, %3593 ]
  %3615 = phi float [ %2785, %3496 ], [ %2785, %2981 ], [ %2785, %2783 ], [ %2785, %2800 ], [ %3530, %3524 ], [ %3555, %3551 ], [ %2785, %3591 ], [ %3597, %3593 ]
  %3616 = phi float [ %3497, %3496 ], [ %2786, %2981 ], [ %2786, %2783 ], [ %2786, %2800 ], [ %3497, %3524 ], [ %3497, %3551 ], [ %3497, %3591 ], [ %3497, %3593 ]
  %3617 = phi float [ %3498, %3496 ], [ %2787, %2981 ], [ %2787, %2783 ], [ %2787, %2800 ], [ %3498, %3524 ], [ %3498, %3551 ], [ %3498, %3591 ], [ %3498, %3593 ]
  %3618 = phi float [ %3499, %3496 ], [ %2788, %2981 ], [ %2788, %2783 ], [ %2788, %2800 ], [ %3499, %3524 ], [ %3499, %3551 ], [ %3499, %3591 ], [ %3499, %3593 ]
  %3619 = phi float [ %2789, %3496 ], [ %2789, %2981 ], [ %2789, %2783 ], [ %2789, %2800 ], [ %3546, %3524 ], [ %3588, %3551 ], [ %2789, %3591 ], [ %3610, %3593 ]
  %3620 = phi float [ %2790, %3496 ], [ %2790, %2981 ], [ %2790, %2783 ], [ %2790, %2800 ], [ %3547, %3524 ], [ %3589, %3551 ], [ %2790, %3591 ], [ %3611, %3593 ]
  %3621 = phi float [ %2791, %3496 ], [ %2791, %2981 ], [ %2791, %2783 ], [ %2791, %2800 ], [ %3548, %3524 ], [ %3590, %3551 ], [ %2791, %3591 ], [ %3612, %3593 ]
  %3622 = phi float [ %3500, %3496 ], [ %2792, %2981 ], [ %2792, %2783 ], [ %2792, %2800 ], [ %3500, %3524 ], [ %3500, %3551 ], [ %3500, %3591 ], [ %3500, %3593 ]
  %3623 = phi float [ %3501, %3496 ], [ %2793, %2981 ], [ %2793, %2783 ], [ %2793, %2800 ], [ %3501, %3524 ], [ %3501, %3551 ], [ %3501, %3591 ], [ %3501, %3593 ]
  %3624 = phi float [ %3502, %3496 ], [ %2794, %2981 ], [ %2794, %2783 ], [ %2794, %2800 ], [ %3502, %3524 ], [ %3502, %3551 ], [ %3502, %3591 ], [ %3502, %3593 ]
  %3625 = phi float [ %3503, %3496 ], [ %2795, %2981 ], [ %2795, %2783 ], [ %2795, %2800 ], [ %3503, %3524 ], [ %3503, %3551 ], [ %3503, %3591 ], [ %3503, %3593 ]
  %3626 = phi float [ %2796, %3496 ], [ %2796, %2981 ], [ %2796, %2783 ], [ %2796, %2800 ], [ %3536, %3524 ], [ %3582, %3551 ], [ %2796, %3591 ], [ %3604, %3593 ]
  %3627 = phi float [ %2797, %3496 ], [ %2797, %2981 ], [ %2797, %2783 ], [ %2797, %2800 ], [ %3533, %3524 ], [ %3559, %3551 ], [ %2797, %3591 ], [ %3601, %3593 ]
  %3628 = phi float [ %2798, %3496 ], [ %2798, %2981 ], [ %2798, %2783 ], [ %2798, %2800 ], [ %3539, %3524 ], [ %3584, %3551 ], [ %2798, %3591 ], [ %3606, %3593 ]
  %3629 = phi float [ %3504, %3496 ], [ %2799, %2981 ], [ %2799, %2783 ], [ %2799, %2800 ], [ %3504, %3524 ], [ %3504, %3551 ], [ %3504, %3591 ], [ %3504, %3593 ]
  %3630 = add i32 %43, 408
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.i32 %3631, 1
  %3634 = bitcast i32 %3632 to float
  %3635 = bitcast i32 %3633 to float
  %3636 = fcmp fast oge float %3634, 0.000000e+00
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 0
  %3639 = select i1 %3636, float %3634, float %3638
  %3640 = fadd fast float %3639, %192
  %3641 = fmul fast float %3635, %193
  %3642 = add i32 %43, 504
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = add i32 %3644, 0
  %3646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3646, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = fmul fast float %3641, %3648
  %3650 = fadd fast float %3640, %3649
  %3651 = and i32 %184, 65535
  %3652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3651)  ; LegacyF16ToF32(value)
  %3653 = lshr i32 %184, 16
  %3654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3653)  ; LegacyF16ToF32(value)
  %3655 = and i32 %185, 65535
  %3656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3655)  ; LegacyF16ToF32(value)
  %3657 = fmul fast float %3652, %3616
  %3658 = fmul fast float %3654, %3617
  %3659 = fmul fast float %3656, %3618
  %3660 = shl i32 %186, 4
  %3661 = and i32 %3660, 32752
  %3662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3661)  ; LegacyF16ToF32(value)
  %3663 = lshr i32 %186, 7
  %3664 = and i32 %3663, 32752
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = lshr i32 %186, 22
  %3667 = shl nuw nsw i32 %3666, 5
  %3668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3667)  ; LegacyF16ToF32(value)
  %3669 = and i32 %187, 65535
  %3670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3669)  ; LegacyF16ToF32(value)
  %3671 = fmul fast float %3662, %3622
  %3672 = fmul fast float %3671, %3670
  %3673 = fmul fast float %3665, %3623
  %3674 = fmul fast float %3673, %3670
  %3675 = fmul fast float %3668, %3624
  %3676 = fmul fast float %3675, %3670
  %3677 = call float @dx.op.dot2.f32(i32 54, float %3614, float %3615, float %3614, float %3615)  ; Dot2(ax,ay,bx,by)
  %3678 = fmul fast float %3677, 0x3FE3333340000000
  %3679 = fsub fast float 1.000000e+00, %3678
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3615, float %3679, float %3614, float %3615, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.unary.f32(i32 25, float %3680)  ; Rsqrt(value)
  %3682 = fmul fast float %3681, %3614
  %3683 = fmul fast float %3681, %3615
  %3684 = fmul fast float %3679, %3681
  %3685 = fmul fast float %3684, %106
  %3686 = fmul fast float %3684, %107
  %3687 = fmul fast float %3684, %108
  %3688 = fmul fast float %3682, %74
  %3689 = fmul fast float %3682, %75
  %3690 = fmul fast float %3682, %76
  %3691 = fadd fast float %3685, %3688
  %3692 = fadd fast float %3686, %3689
  %3693 = fadd fast float %3687, %3690
  %3694 = fmul fast float %118, %3683
  %3695 = fmul fast float %119, %3683
  %3696 = fmul fast float %120, %3683
  %3697 = fadd fast float %3691, %3694
  %3698 = fadd fast float %3692, %3695
  %3699 = fadd fast float %3693, %3696
  %3700 = call float @dx.op.dot3.f32(i32 55, float %3697, float %3698, float %3699, float %3697, float %3698, float %3699)  ; Dot3(ax,ay,az,bx,by,bz)
  %3701 = call float @dx.op.unary.f32(i32 25, float %3700)  ; Rsqrt(value)
  %3702 = fmul fast float %3697, %3701
  %3703 = fmul fast float %3698, %3701
  %3704 = fmul fast float %3699, %3701
  %3705 = icmp eq i32 %45, 65535
  br i1 %3705, label %4273, label %3706

; <label>:3706                                    ; preds = %3613
  %3707 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %3708 = call float @dx.op.unary.f32(i32 83, float %47)  ; DerivCoarseX(value)
  %3709 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %3710 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %3711 = call float @dx.op.unary.f32(i32 84, float %47)  ; DerivCoarseY(value)
  %3712 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %3713 = fadd fast float %3707, %46
  %3714 = fadd fast float %3708, %47
  %3715 = fadd fast float %3709, %48
  %3716 = fadd fast float %3710, %46
  %3717 = fadd fast float %3711, %47
  %3718 = fadd fast float %3712, %48
  %3719 = mul i32 %45, 48
  %3720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = add i32 %3719, 16
  %3725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.ResRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.ResRet.f32 %3725, 2
  %3729 = add i32 %3719, 32
  %3730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = extractvalue %dx.types.ResRet.f32 %3730, 3
  %3735 = bitcast float %3734 to i32
  %3736 = fmul fast float %3721, %46
  %3737 = fmul fast float %3722, %47
  %3738 = fmul fast float %3723, %48
  %3739 = fsub fast float %3736, %3726
  %3740 = fsub fast float %3737, %3727
  %3741 = fsub fast float %3738, %3728
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3745 = fmul fast float %3742, %3731
  %3746 = fmul fast float %3743, %3732
  %3747 = fmul fast float %3744, %3733
  %3748 = fadd fast float %3731, -1.000000e+00
  %3749 = fadd fast float %3732, -1.000000e+00
  %3750 = fadd fast float %3733, -1.000000e+00
  %3751 = call float @dx.op.unary.f32(i32 27, float %3745)  ; Round_ni(value)
  %3752 = call float @dx.op.unary.f32(i32 27, float %3746)  ; Round_ni(value)
  %3753 = call float @dx.op.unary.f32(i32 27, float %3747)  ; Round_ni(value)
  %3754 = call float @dx.op.binary.f32(i32 36, float %3751, float %3748)  ; FMin(a,b)
  %3755 = call float @dx.op.binary.f32(i32 36, float %3752, float %3749)  ; FMin(a,b)
  %3756 = call float @dx.op.binary.f32(i32 36, float %3753, float %3750)  ; FMin(a,b)
  %3757 = fmul fast float %3756, %3732
  %3758 = fadd fast float %3757, %3755
  %3759 = fmul fast float %3758, %3731
  %3760 = fadd fast float %3759, %3754
  %3761 = fptosi float %3760 to i32
  %3762 = add nsw i32 %3761, %3735
  %3763 = shl nsw i32 %3762, 2
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = lshr i32 %3765, 16
  %3767 = icmp eq i32 %3766, 0
  br i1 %3767, label %4239, label %3768

; <label>:3768                                    ; preds = %3706
  br label %3769

; <label>:3769                                    ; preds = %3893, %3768
  %3770 = phi i32 [ %3795, %3893 ], [ %3766, %3768 ]
  %3771 = phi float [ %3894, %3893 ], [ 0.000000e+00, %3768 ]
  %3772 = phi float [ %3895, %3893 ], [ %3650, %3768 ]
  %3773 = phi float [ %3896, %3893 ], [ %3629, %3768 ]
  %3774 = phi float [ %3897, %3893 ], [ 0.000000e+00, %3768 ]
  %3775 = phi float [ %3898, %3893 ], [ 0.000000e+00, %3768 ]
  %3776 = phi float [ %3899, %3893 ], [ %3619, %3768 ]
  %3777 = phi float [ %3900, %3893 ], [ %3620, %3768 ]
  %3778 = phi float [ %3901, %3893 ], [ %3621, %3768 ]
  %3779 = phi float [ %3902, %3893 ], [ %3672, %3768 ]
  %3780 = phi float [ %3903, %3893 ], [ %3674, %3768 ]
  %3781 = phi float [ %3904, %3893 ], [ %3676, %3768 ]
  %3782 = phi float [ %3905, %3893 ], [ %3702, %3768 ]
  %3783 = phi float [ %3906, %3893 ], [ %3703, %3768 ]
  %3784 = phi float [ %3907, %3893 ], [ %3704, %3768 ]
  %3785 = phi float [ %3908, %3893 ], [ %3627, %3768 ]
  %3786 = phi float [ %3909, %3893 ], [ %3626, %3768 ]
  %3787 = phi float [ %3910, %3893 ], [ 0.000000e+00, %3768 ]
  %3788 = phi float [ %3911, %3893 ], [ %3625, %3768 ]
  %3789 = phi float [ %3912, %3893 ], [ %3657, %3768 ]
  %3790 = phi float [ %3913, %3893 ], [ %3658, %3768 ]
  %3791 = phi float [ %3914, %3893 ], [ %3659, %3768 ]
  %3792 = shl nuw nsw i32 %3770, 2
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = lshr i32 %3794, 16
  %3796 = shl i32 %3794, 8
  %3797 = and i32 %3796, 16776960
  %3798 = or i32 %3797, 48
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = or i32 %3797, 64
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.i32 %3804, 1
  %3807 = or i32 %3797, 80
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3811 = or i32 %3797, 96
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = or i32 %3797, 112
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = or i32 %3797, 128
  %3821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3821, 3
  %3826 = or i32 %3797, 144
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3832 = or i32 %3797, 160
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3797, 192
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = or i32 %3797, 208
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = or i32 %3797, 248
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3854 = or i32 %3797, 16
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3861 = or i32 %3797, 32
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %46, float %47, float %48, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3853)  ; Round_ni(value)
  %3869 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3870 = call float @dx.op.unary.f32(i32 27, float %3860)  ; Round_ni(value)
  %3871 = call float @dx.op.unary.f32(i32 6, float %3870)  ; FAbs(value)
  %3872 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3873 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3874 = fadd fast float %3871, %3869
  %3875 = fadd fast float %3874, %3873
  %3876 = fcmp fast oeq float %3875, 0.000000e+00
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3880 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3881 = fsub fast float %3877, %3853
  %3882 = fsub fast float %3879, %3853
  %3883 = fsub fast float %3878, %3860
  %3884 = fsub fast float %3880, %3860
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3802, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3888 = fadd fast float %3887, %3885
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3891 = fcmp fast ogt float %3889, %3890
  %3892 = and i1 %3876, %3891
  br i1 %3892, label %3916, label %3893

; <label>:3893                                    ; preds = %4225, %3999, %3916, %3769
  %3894 = phi float [ %3771, %3916 ], [ %4002, %3999 ], [ %4002, %4225 ], [ %3771, %3769 ]
  %3895 = phi float [ %3772, %3916 ], [ %3772, %3999 ], [ %4201, %4225 ], [ %3772, %3769 ]
  %3896 = phi float [ %3773, %3916 ], [ %3773, %3999 ], [ %4199, %4225 ], [ %3773, %3769 ]
  %3897 = phi float [ %3774, %3916 ], [ %3774, %3999 ], [ %4126, %4225 ], [ %3774, %3769 ]
  %3898 = phi float [ %3775, %3916 ], [ %3775, %3999 ], [ %4124, %4225 ], [ %3775, %3769 ]
  %3899 = phi float [ %3776, %3916 ], [ %3776, %3999 ], [ %4169, %4225 ], [ %3776, %3769 ]
  %3900 = phi float [ %3777, %3916 ], [ %3777, %3999 ], [ %4170, %4225 ], [ %3777, %3769 ]
  %3901 = phi float [ %3778, %3916 ], [ %3778, %3999 ], [ %4171, %4225 ], [ %3778, %3769 ]
  %3902 = phi float [ %3779, %3916 ], [ %3779, %3999 ], [ %4235, %4225 ], [ %3779, %3769 ]
  %3903 = phi float [ %3780, %3916 ], [ %3780, %3999 ], [ %4236, %4225 ], [ %3780, %3769 ]
  %3904 = phi float [ %3781, %3916 ], [ %3781, %3999 ], [ %4237, %4225 ], [ %3781, %3769 ]
  %3905 = phi float [ %3782, %3916 ], [ %3782, %3999 ], [ %4105, %4225 ], [ %3782, %3769 ]
  %3906 = phi float [ %3783, %3916 ], [ %3783, %3999 ], [ %4106, %4225 ], [ %3783, %3769 ]
  %3907 = phi float [ %3784, %3916 ], [ %3784, %3999 ], [ %4107, %4225 ], [ %3784, %3769 ]
  %3908 = phi float [ %3785, %3916 ], [ %3785, %3999 ], [ %4179, %4225 ], [ %3785, %3769 ]
  %3909 = phi float [ %3786, %3916 ], [ %3786, %3999 ], [ %4176, %4225 ], [ %3786, %3769 ]
  %3910 = phi float [ %3787, %3916 ], [ %3787, %3999 ], [ %4173, %4225 ], [ %3787, %3769 ]
  %3911 = phi float [ %3788, %3916 ], [ %3788, %3999 ], [ %4122, %4225 ], [ %3788, %3769 ]
  %3912 = phi float [ %3789, %3916 ], [ %3789, %3999 ], [ %4117, %4225 ], [ %3789, %3769 ]
  %3913 = phi float [ %3790, %3916 ], [ %3790, %3999 ], [ %4118, %4225 ], [ %3790, %3769 ]
  %3914 = phi float [ %3791, %3916 ], [ %3791, %3999 ], [ %4119, %4225 ], [ %3791, %3769 ]
  %3915 = icmp eq i32 %3795, 0
  br i1 %3915, label %4238, label %3769

; <label>:3916                                    ; preds = %3769
  %3917 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3918 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3919 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3923 = extractvalue %dx.types.ResRet.i32 %3804, 3
  %3924 = extractvalue %dx.types.ResRet.i32 %3804, 2
  %3925 = bitcast float %3917 to i32
  %3926 = add i32 %3923, 0
  %3927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3927, %dx.types.Handle %3928, float %3853, float %3860, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3882, float %3884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = fmul fast float %3930, %3922
  %3932 = fadd fast float %3931, %3921
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = fmul fast float %3853, %3813
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3860, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3920
  %3937 = fmul fast float %3853, %3815
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3860, float %3937)  ; FMad(a,b,c)
  %3939 = fadd fast float %3938, %3919
  %3940 = fmul fast float %3881, %3813
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3883, float %3940)  ; FMad(a,b,c)
  %3942 = fmul fast float %3881, %3815
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3883, float %3942)  ; FMad(a,b,c)
  %3944 = fmul fast float %3882, %3813
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3884, float %3944)  ; FMad(a,b,c)
  %3946 = fmul fast float %3882, %3815
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3884, float %3946)  ; FMad(a,b,c)
  %3948 = add i32 %3924, 0
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3949, %dx.types.Handle %3928, float %3936, float %3939, float undef, float undef, i32 0, i32 0, i32 undef, float %3941, float %3943, float undef, float %3945, float %3947, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = and i32 %3925, 1024
  %3953 = icmp ne i32 %3952, 0
  %3954 = fcmp fast ogt float %3951, 0x3FE0101020000000
  %3955 = uitofp i1 %3954 to float
  %3956 = select i1 %3953, float %3955, float %3951
  %3957 = and i32 %3925, 8192
  %3958 = icmp ne i32 %3957, 0
  %3959 = select i1 %3958, float %3918, float 1.000000e+00
  %3960 = fmul fast float %3853, 2.000000e+00
  %3961 = fadd fast float %3960, -1.000000e+00
  %3962 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3963 = fmul fast float %3962, %3846
  %3964 = fsub fast float %3963, %3846
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fmul fast float %3860, 2.000000e+00
  %3967 = fadd fast float %3966, -1.000000e+00
  %3968 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3969 = fmul fast float %3968, %3847
  %3970 = fsub fast float %3969, %3847
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fmul fast float %3872, %3809
  %3973 = fsub fast float %3972, %3809
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3933, %3959
  %3976 = fmul fast float %3975, %3930
  %3977 = fmul fast float %3976, %3965
  %3978 = fmul fast float %3977, %3956
  %3979 = fmul fast float %3978, %3971
  %3980 = fmul fast float %3979, %3974
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3984 = fsub fast float %3889, %3983
  %3985 = fmul fast float %3984, %3982
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3980, %3810
  %3988 = fadd fast float %3980, %3810
  %3989 = fmul fast float %3988, %3819
  %3990 = fsub fast float %3989, %3819
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = and i32 %3925, 128
  %3993 = icmp ne i32 %3992, 0
  %3994 = select i1 %3993, float %3991, float %3987
  %3995 = fmul fast float %3994, %3986
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = fcmp fast ugt float %3995, %3997
  br i1 %3998, label %3999, label %3893

; <label>:3999                                    ; preds = %3916
  %4000 = select i1 %3958, float %3995, float 0.000000e+00
  %4001 = fadd fast float %4000, %3771
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  br i1 %3958, label %3893, label %4003

; <label>:4003                                    ; preds = %3999
  %4004 = and i32 %3925, 4
  %4005 = and i32 %3925, 8
  %4006 = add i32 %3805, 0
  %4007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4006, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4007, %dx.types.Handle %4008, float %3936, float %3939, float undef, float undef, i32 0, i32 0, i32 undef, float %3941, float %3943, float undef, float %3945, float %3947, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = extractvalue %dx.types.ResRet.f32 %4009, 3
  %4014 = bitcast float %3831 to i32
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = lshr i32 %4014, 8
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = fmul fast float %4013, %4016
  %4021 = fadd fast float %4020, %4019
  %4022 = fmul fast float %4021, 0x3F70101000000000
  %4023 = add i32 %3806, 0
  %4024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4024, %dx.types.Handle %4008, float %3936, float %3939, float undef, float undef, i32 0, i32 0, i32 undef, float %3941, float %3943, float undef, float %3945, float %3947, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.ResRet.f32 %4025, 3
  %4030 = bitcast float %3825 to i32
  %4031 = and i32 %4030, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = lshr i32 %4030, 8
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = lshr i32 %4030, 16
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = fmul fast float %4026, %4032
  %4041 = fadd fast float %4040, %4035
  %4042 = fmul fast float %4041, 0x3F70101000000000
  %4043 = fadd fast float %4027, -5.000000e-01
  %4044 = fadd fast float %4029, -5.000000e-01
  %4045 = fmul fast float %4043, %4039
  %4046 = fmul fast float %4044, %4039
  %4047 = fadd fast float %4045, 5.000000e-01
  %4048 = fadd fast float %4046, 5.000000e-01
  %4049 = fmul fast float %4010, %3834
  %4050 = fmul fast float %4011, %3835
  %4051 = fmul fast float %4012, %3836
  %4052 = fmul fast float %4047, 2.000000e+00
  %4053 = fadd fast float %4052, -1.000000e+00
  %4054 = fmul fast float %4048, 2.000000e+00
  %4055 = fadd fast float %4054, -1.000000e+00
  %4056 = fadd fast float %4053, %4055
  %4057 = fmul fast float %4056, 5.000000e-01
  %4058 = fsub fast float %4053, %4055
  %4059 = fmul fast float %4058, 5.000000e-01
  %4060 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = call float @dx.op.unary.f32(i32 6, float %4059)  ; FAbs(value)
  %4063 = fsub fast float %4061, %4062
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4057, float %4059, float %4063, float %4057, float %4059, float %4063)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4057, %4065
  %4067 = fmul fast float %4059, %4065
  %4068 = fmul fast float %4065, %4063
  %4069 = fmul fast float %4068, %3800
  %4070 = fmul fast float %4068, %3801
  %4071 = fmul fast float %4068, %3802
  %4072 = fmul fast float %4066, %3822
  %4073 = fmul fast float %4066, %3823
  %4074 = fmul fast float %4066, %3824
  %4075 = fadd fast float %4072, %4069
  %4076 = fadd fast float %4073, %4070
  %4077 = fadd fast float %4074, %4071
  %4078 = fmul fast float %4067, %3828
  %4079 = fmul fast float %4067, %3829
  %4080 = fmul fast float %4067, %3830
  %4081 = fadd fast float %4075, %4078
  %4082 = fadd fast float %4076, %4079
  %4083 = fadd fast float %4077, %4080
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4081, float %4082, float %4083, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4081, %4085
  %4087 = fmul fast float %4082, %4085
  %4088 = fmul fast float %4083, %4085
  %4089 = icmp ne i32 %4005, 0
  %4090 = select i1 %4089, float 1.000000e+00, float 0.000000e+00
  %4091 = fmul fast float %3995, %4090
  %4092 = and i32 %3925, 1
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4094, label %4098

; <label>:4094                                    ; preds = %4003
  %4095 = fsub fast float %4086, %3782
  %4096 = fsub fast float %4087, %3783
  %4097 = fsub fast float %4088, %3784
  br label %4098

; <label>:4098                                    ; preds = %4094, %4003
  %4099 = phi float [ %4095, %4094 ], [ %4086, %4003 ]
  %4100 = phi float [ %4096, %4094 ], [ %4087, %4003 ]
  %4101 = phi float [ %4097, %4094 ], [ %4088, %4003 ]
  %4102 = fmul float %4101, %4091
  %4103 = fmul float %4100, %4091
  %4104 = fmul float %4099, %4091
  %4105 = fadd fast float %4104, %3782
  %4106 = fadd fast float %4103, %3783
  %4107 = fadd fast float %4102, %3784
  %4108 = icmp ne i32 %4004, 0
  %4109 = select i1 %4108, float 1.000000e+00, float 0.000000e+00
  %4110 = fmul fast float %3995, %4109
  %4111 = fsub fast float %4049, %3789
  %4112 = fsub fast float %4050, %3790
  %4113 = fsub fast float %4051, %3791
  %4114 = fmul fast float %4111, %4110
  %4115 = fmul fast float %4112, %4110
  %4116 = fmul fast float %4113, %4110
  %4117 = fadd fast float %4114, %3789
  %4118 = fadd fast float %4115, %3790
  %4119 = fadd fast float %4116, %3791
  %4120 = fsub fast float %4022, %3788
  %4121 = fmul fast float %4120, %4110
  %4122 = fadd fast float %4121, %3788
  %4123 = fmul fast float %4110, %3775
  %4124 = fsub fast float %3775, %4123
  %4125 = fmul fast float %4110, %3774
  %4126 = fsub fast float %3774, %4125
  %4127 = bitcast float %3843 to i32
  %4128 = lshr i32 %4127, 16
  %4129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4128)  ; LegacyF16ToF32(value)
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = and i32 %4131, 1
  %4133 = icmp eq i32 %4132, 0
  br i1 %4133, label %4134, label %4159

; <label>:4134                                    ; preds = %4098
  %4135 = fadd fast float %4022, 0xBFB99999A0000000
  %4136 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4137 = fmul fast float %4136, 0x3FF1C71C80000000
  %4138 = fsub fast float 1.000000e+00, %4137
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4140 = fmul fast float %4139, %4049
  %4141 = fmul fast float %4139, %4050
  %4142 = fmul fast float %4139, %4051
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4145 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4146 = call float @dx.op.binary.f32(i32 35, float %4144, float %4145)  ; FMax(a,b)
  %4147 = call float @dx.op.binary.f32(i32 35, float %4143, float %4146)  ; FMax(a,b)
  %4148 = fcmp fast ogt float %4147, 0.000000e+00
  %4149 = bitcast float %4147 to i32
  %4150 = sub nsw i32 2129859010, %4149
  %4151 = bitcast i32 %4150 to float
  %4152 = select i1 %4148, float %4151, float 0.000000e+00
  %4153 = fmul fast float %4143, %4129
  %4154 = fmul fast float %4144, %4129
  %4155 = fmul fast float %4145, %4129
  %4156 = fmul fast float %4153, %4152
  %4157 = fmul fast float %4154, %4152
  %4158 = fmul fast float %4155, %4152
  br label %4159

; <label>:4159                                    ; preds = %4134, %4098
  %4160 = phi float [ %4129, %4098 ], [ %4156, %4134 ]
  %4161 = phi float [ %4129, %4098 ], [ %4157, %4134 ]
  %4162 = phi float [ %4129, %4098 ], [ %4158, %4134 ]
  %4163 = fsub fast float %4160, %3776
  %4164 = fsub fast float %4161, %3777
  %4165 = fsub fast float %4162, %3778
  %4166 = fmul fast float %4163, %4110
  %4167 = fmul fast float %4164, %4110
  %4168 = fmul fast float %4165, %4110
  %4169 = fadd fast float %4166, %3776
  %4170 = fadd fast float %4167, %3777
  %4171 = fadd fast float %4168, %3778
  %4172 = fadd fast float %3995, %3787
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = fsub fast float %4042, %3786
  %4175 = fmul fast float %4174, %4091
  %4176 = fadd fast float %4175, %3786
  %4177 = fsub fast float %4028, %3785
  %4178 = fmul fast float %4177, %4091
  %4179 = fadd fast float %4178, %3785
  %4180 = call float @dx.op.dot3.f32(i32 55, float %4049, float %4050, float %4051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4184 = fmul fast float %4183, %4180
  %4185 = fadd fast float %4184, %4182
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = bitcast float %3837 to i32
  %4188 = and i32 %4187, 65535
  %4189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4188)  ; LegacyF16ToF32(value)
  %4190 = lshr i32 %4187, 16
  %4191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4190)  ; LegacyF16ToF32(value)
  %4192 = fcmp fast oge float %4189, 0.000000e+00
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = select i1 %4192, float %4189, float %4194
  %4196 = fadd fast float %4195, %4191
  %4197 = fsub fast float %4186, %3773
  %4198 = fmul fast float %4197, %3995
  %4199 = fadd fast float %4198, %3773
  %4200 = fmul fast float %4196, %3995
  %4201 = call float @dx.op.binary.f32(i32 35, float %3772, float %4200)  ; FMax(a,b)
  %4202 = and i32 %3925, 16
  %4203 = icmp eq i32 %4202, 0
  br i1 %4203, label %4225, label %4204

; <label>:4204                                    ; preds = %4159
  %4205 = add i32 %3840, 0
  %4206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4205, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4207 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4206, %dx.types.Handle %4008, float %3936, float %3939, float undef, float undef, i32 0, i32 0, i32 undef, float %3941, float %3943, float undef, float %3945, float %3947, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = and i32 %4127, 65535
  %4212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4211)  ; LegacyF16ToF32(value)
  %4213 = fmul fast float %4208, %3834
  %4214 = fmul fast float %4209, %3835
  %4215 = fmul fast float %4210, %3836
  %4216 = and i32 %3925, 16384
  %4217 = icmp ne i32 %4216, 0
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = select i1 %4217, float %4219, float 1.000000e+00
  %4221 = fmul fast float %4220, %4212
  %4222 = fmul fast float %4213, %4221
  %4223 = fmul fast float %4214, %4221
  %4224 = fmul fast float %4215, %4221
  br label %4225

; <label>:4225                                    ; preds = %4204, %4159
  %4226 = phi float [ %4222, %4204 ], [ 0.000000e+00, %4159 ]
  %4227 = phi float [ %4223, %4204 ], [ 0.000000e+00, %4159 ]
  %4228 = phi float [ %4224, %4204 ], [ 0.000000e+00, %4159 ]
  %4229 = fsub fast float %4226, %3779
  %4230 = fsub fast float %4227, %3780
  %4231 = fsub fast float %4228, %3781
  %4232 = fmul fast float %4229, %3995
  %4233 = fmul fast float %4230, %3995
  %4234 = fmul fast float %4231, %3995
  %4235 = fadd fast float %4232, %3779
  %4236 = fadd fast float %4233, %3780
  %4237 = fadd fast float %4234, %3781
  br label %3893

; <label>:4238                                    ; preds = %3893
  br label %4239

; <label>:4239                                    ; preds = %4238, %3706
  %4240 = phi float [ 0.000000e+00, %3706 ], [ %3894, %4238 ]
  %4241 = phi float [ %3650, %3706 ], [ %3895, %4238 ]
  %4242 = phi float [ %3629, %3706 ], [ %3896, %4238 ]
  %4243 = phi float [ 0.000000e+00, %3706 ], [ %3897, %4238 ]
  %4244 = phi float [ 0.000000e+00, %3706 ], [ %3898, %4238 ]
  %4245 = phi float [ %3619, %3706 ], [ %3899, %4238 ]
  %4246 = phi float [ %3620, %3706 ], [ %3900, %4238 ]
  %4247 = phi float [ %3621, %3706 ], [ %3901, %4238 ]
  %4248 = phi float [ %3672, %3706 ], [ %3902, %4238 ]
  %4249 = phi float [ %3674, %3706 ], [ %3903, %4238 ]
  %4250 = phi float [ %3676, %3706 ], [ %3904, %4238 ]
  %4251 = phi float [ %3702, %3706 ], [ %3905, %4238 ]
  %4252 = phi float [ %3703, %3706 ], [ %3906, %4238 ]
  %4253 = phi float [ %3704, %3706 ], [ %3907, %4238 ]
  %4254 = phi float [ %3627, %3706 ], [ %3908, %4238 ]
  %4255 = phi float [ %3626, %3706 ], [ %3909, %4238 ]
  %4256 = phi float [ 0.000000e+00, %3706 ], [ %3910, %4238 ]
  %4257 = phi float [ %3625, %3706 ], [ %3911, %4238 ]
  %4258 = phi float [ %3657, %3706 ], [ %3912, %4238 ]
  %4259 = phi float [ %3658, %3706 ], [ %3913, %4238 ]
  %4260 = phi float [ %3659, %3706 ], [ %3914, %4238 ]
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4251, float %4252, float %4253, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = call float @dx.op.unary.f32(i32 25, float %4261)  ; Rsqrt(value)
  %4263 = fmul fast float %4262, %4251
  %4264 = fmul fast float %4262, %4252
  %4265 = fmul fast float %4262, %4253
  %4266 = fadd fast float %4256, %1135
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4263, float %4264, float %4265, float %4263, float %4264, float %4265)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = call float @dx.op.unary.f32(i32 25, float %4268)  ; Rsqrt(value)
  %4270 = fmul fast float %4269, %4263
  %4271 = fmul fast float %4269, %4264
  %4272 = fmul fast float %4269, %4265
  br label %4273

; <label>:4273                                    ; preds = %4239, %3613
  %4274 = phi float [ %4270, %4239 ], [ %3702, %3613 ]
  %4275 = phi float [ %4271, %4239 ], [ %3703, %3613 ]
  %4276 = phi float [ %4272, %4239 ], [ %3704, %3613 ]
  %4277 = phi float [ %4258, %4239 ], [ %3657, %3613 ]
  %4278 = phi float [ %4259, %4239 ], [ %3658, %3613 ]
  %4279 = phi float [ %4260, %4239 ], [ %3659, %3613 ]
  %4280 = phi float [ %4248, %4239 ], [ %3672, %3613 ]
  %4281 = phi float [ %4249, %4239 ], [ %3674, %3613 ]
  %4282 = phi float [ %4250, %4239 ], [ %3676, %3613 ]
  %4283 = phi float [ %4245, %4239 ], [ %3619, %3613 ]
  %4284 = phi float [ %4246, %4239 ], [ %3620, %3613 ]
  %4285 = phi float [ %4247, %4239 ], [ %3621, %3613 ]
  %4286 = phi float [ %4257, %4239 ], [ %3625, %3613 ]
  %4287 = phi float [ %4267, %4239 ], [ %1135, %3613 ]
  %4288 = phi float [ %4255, %4239 ], [ %3626, %3613 ]
  %4289 = phi float [ %4254, %4239 ], [ %3627, %3613 ]
  %4290 = phi float [ %4244, %4239 ], [ 0.000000e+00, %3613 ]
  %4291 = phi float [ %4243, %4239 ], [ 0.000000e+00, %3613 ]
  %4292 = phi float [ %4240, %4239 ], [ 0.000000e+00, %3613 ]
  %4293 = phi float [ %4241, %4239 ], [ %3650, %3613 ]
  %4294 = phi float [ %4242, %4239 ], [ %3629, %3613 ]
  %4295 = add i32 %43, 392
  %4296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.i32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.i32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.i32 %4296, 2
  %4300 = extractvalue %dx.types.ResRet.i32 %4296, 3
  %4301 = bitcast i32 %4297 to float
  %4302 = bitcast i32 %4298 to float
  %4303 = bitcast i32 %4299 to float
  %4304 = bitcast i32 %4300 to float
  %4305 = fsub fast float %4277, %4301
  %4306 = fsub fast float %4278, %4302
  %4307 = fsub fast float %4279, %4303
  %4308 = fmul fast float %4305, %225
  %4309 = fmul fast float %4306, %225
  %4310 = fmul fast float %4307, %225
  %4311 = fadd fast float %4308, %4301
  %4312 = fadd fast float %4309, %4302
  %4313 = fadd fast float %4310, %4303
  %4314 = fsub fast float %4287, %4304
  %4315 = fmul fast float %4314, %225
  %4316 = fadd fast float %4315, %4304
  %4317 = fadd fast float %4286, 0xBFB99999A0000000
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fmul fast float %4318, 0x3FF1C71C80000000
  %4320 = call float @dx.op.binary.f32(i32 36, float %4286, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4321 = fsub fast float 1.000000e+00, %4319
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4311, %4322
  %4324 = fmul fast float %4312, %4322
  %4325 = fmul fast float %4313, %4322
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = fmul fast float %4311, %4319
  %4330 = fmul fast float %4312, %4319
  %4331 = fmul fast float %4313, %4319
  %4332 = fadd fast float %4329, %4320
  %4333 = fadd fast float %4330, %4320
  %4334 = fadd fast float %4331, %4320
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = and i32 %4340, 1
  %4342 = icmp eq i32 %4341, 0
  br i1 %4342, label %4357, label %4343

; <label>:4343                                    ; preds = %4273
  %4344 = call float @dx.op.binary.f32(i32 35, float %4327, float %4328)  ; FMax(a,b)
  %4345 = call float @dx.op.binary.f32(i32 35, float %4326, float %4344)  ; FMax(a,b)
  %4346 = fcmp fast ogt float %4345, 0.000000e+00
  %4347 = bitcast float %4345 to i32
  %4348 = sub nsw i32 2129859010, %4347
  %4349 = bitcast i32 %4348 to float
  %4350 = select i1 %4346, float %4349, float 0.000000e+00
  %4351 = fmul fast float %4326, %4283
  %4352 = fmul fast float %4327, %4284
  %4353 = fmul fast float %4328, %4285
  %4354 = fmul fast float %4351, %4350
  %4355 = fmul fast float %4352, %4350
  %4356 = fmul fast float %4353, %4350
  br label %4357

; <label>:4357                                    ; preds = %4343, %4273
  %4358 = phi float [ %4354, %4343 ], [ %4283, %4273 ]
  %4359 = phi float [ %4355, %4343 ], [ %4284, %4273 ]
  %4360 = phi float [ %4356, %4343 ], [ %4285, %4273 ]
  %4361 = fadd fast float %4326, 0xBFD51EB860000000
  %4362 = fadd fast float %4327, 0xBFD51EB860000000
  %4363 = fadd fast float %4328, 0xBFD51EB860000000
  %4364 = fmul fast float %4361, %4361
  %4365 = fmul fast float %4362, %4362
  %4366 = fmul fast float %4363, %4363
  %4367 = fmul fast float %4364, %4364
  %4368 = fmul fast float %4367, 1.000000e+02
  %4369 = fmul fast float %4365, %4365
  %4370 = fmul fast float %4369, 1.000000e+02
  %4371 = fmul fast float %4366, %4366
  %4372 = fmul fast float %4371, 1.000000e+02
  %4373 = fadd fast float %4368, 3.500000e+00
  %4374 = fadd fast float %4370, 3.500000e+00
  %4375 = fadd fast float %4372, 3.500000e+00
  %4376 = call float @dx.op.binary.f32(i32 35, float %4358, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4377 = call float @dx.op.binary.f32(i32 35, float %4359, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4378 = call float @dx.op.binary.f32(i32 35, float %4360, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4379 = fdiv fast float %4373, %4376
  %4380 = fdiv fast float %4374, %4377
  %4381 = fdiv fast float %4375, %4378
  %4382 = fmul fast float %3628, 0xBFF7154760000000
  %4383 = fmul fast float %4382, %4379
  %4384 = call float @dx.op.unary.f32(i32 21, float %4383)  ; Exp(value)
  %4385 = fmul fast float %4384, 2.500000e-01
  %4386 = fmul fast float %3628, 0xBFDEC709E0000000
  %4387 = fmul fast float %4386, %4379
  %4388 = call float @dx.op.unary.f32(i32 21, float %4387)  ; Exp(value)
  %4389 = fmul fast float %4388, 7.500000e-01
  %4390 = fmul fast float %4382, %4380
  %4391 = call float @dx.op.unary.f32(i32 21, float %4390)  ; Exp(value)
  %4392 = fmul fast float %4391, 2.500000e-01
  %4393 = fmul fast float %4386, %4380
  %4394 = call float @dx.op.unary.f32(i32 21, float %4393)  ; Exp(value)
  %4395 = fmul fast float %4394, 7.500000e-01
  %4396 = fmul fast float %4382, %4381
  %4397 = call float @dx.op.unary.f32(i32 21, float %4396)  ; Exp(value)
  %4398 = fmul fast float %4397, 2.500000e-01
  %4399 = fmul fast float %4386, %4381
  %4400 = call float @dx.op.unary.f32(i32 21, float %4399)  ; Exp(value)
  %4401 = fmul fast float %4400, 7.500000e-01
  %4402 = fadd fast float %4385, %4389
  %4403 = fadd fast float %4392, %4395
  %4404 = fadd fast float %4398, %4401
  %4405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.i32 %4405, 3
  %4407 = and i32 %4406, 8
  %4408 = icmp ne i32 %4407, 0
  %4409 = call float @dx.op.binary.f32(i32 35, float %4326, float %4311)  ; FMax(a,b)
  %4410 = call float @dx.op.binary.f32(i32 35, float %4327, float %4311)  ; FMax(a,b)
  %4411 = call float @dx.op.binary.f32(i32 35, float %4328, float %4311)  ; FMax(a,b)
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4326, float %4327, float %4328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = select i1 %284, float %4311, float %4326
  %4414 = select i1 %284, float %4412, float %4327
  %4415 = select i1 %284, float 1.000000e+00, float %4328
  %4416 = select i1 %4408, float %4409, float %4413
  %4417 = select i1 %4408, float %4410, float %4414
  %4418 = select i1 %4408, float %4411, float %4415
  %4419 = and i32 %260, 3
  %4420 = select i1 %254, i32 %4419, i32 0
  %4421 = icmp eq i32 %4420, 1
  br i1 %4421, label %4422, label %4498

; <label>:4422                                    ; preds = %4357
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = fadd fast float %4424, %178
  %4427 = fadd fast float %4425, %179
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4431 = fsub fast float %4426, %4429
  %4432 = fsub fast float %4427, %4430
  %4433 = fmul fast float %4431, %4431
  %4434 = fmul fast float %4432, %4432
  %4435 = fadd fast float %4433, %4434
  %4436 = call float @dx.op.unary.f32(i32 24, float %4435)  ; Sqrt(value)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4438 = fcmp fast olt float %4436, %4437
  br i1 %4438, label %4439, label %4492

; <label>:4439                                    ; preds = %4422
  %4440 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4441 = fadd fast float %4440, %180
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4449 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4450 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4452 = extractvalue %dx.types.CBufRet.f32 %4444, 3
  %4453 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4454 = fadd fast float %4451, %4426
  %4455 = fadd fast float %4452, %4427
  %4456 = fadd fast float %4441, %4453
  %4457 = fmul fast float %4454, %4443
  %4458 = call float @dx.op.tertiary.f32(i32 46, float %4455, float %4445, float %4457)  ; FMad(a,b,c)
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4447, float %4458)  ; FMad(a,b,c)
  %4460 = fmul fast float %4454, %4448
  %4461 = call float @dx.op.tertiary.f32(i32 46, float %4455, float %4449, float %4460)  ; FMad(a,b,c)
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4450, float %4461)  ; FMad(a,b,c)
  %4463 = fsub fast float %4459, %4451
  %4464 = fsub fast float %4462, %4452
  %4465 = fsub fast float %4463, %4429
  %4466 = fadd fast float %4465, %4437
  %4467 = fsub fast float %4464, %4430
  %4468 = fadd fast float %4467, %4437
  %4469 = extractvalue %dx.types.CBufRet.f32 %4428, 3
  %4470 = fmul fast float %4466, %4469
  %4471 = fmul fast float %4468, %4469
  %4472 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4474 = fsub fast float 1.000000e+00, %4472
  %4475 = fsub fast float 1.000000e+00, %4473
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %4474, float %4475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = fcmp fast ugt float %4477, 0.000000e+00
  br i1 %4478, label %4479, label %4492

; <label>:4479                                    ; preds = %4439
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4482 = fmul fast float %4481, %4477
  %4483 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4484 = fadd fast float %4483, %4482
  %4485 = extractvalue %dx.types.CBufRet.f32 %4446, 2
  %4486 = fadd fast float %4484, %4453
  %4487 = fmul fast float %4459, %4447
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4462, float %4450, float %4487)  ; FMad(a,b,c)
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4486, float %4485, float %4488)  ; FMad(a,b,c)
  %4490 = fsub fast float %4489, %4453
  %4491 = fsub fast float %4490, %4440
  br label %4492

; <label>:4492                                    ; preds = %4479, %4439, %4422
  %4493 = phi i1 [ true, %4479 ], [ false, %4439 ], [ false, %4422 ]
  %4494 = phi float [ %4491, %4479 ], [ -1.310720e+05, %4439 ], [ -1.310720e+05, %4422 ]
  %4495 = fsub fast float %4494, %180
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = select i1 %4493, float %4496, float 1.000000e+00
  br label %4498

; <label>:4498                                    ; preds = %4492, %4357
  %4499 = phi float [ %4497, %4492 ], [ 0.000000e+00, %4357 ]
  %4500 = icmp eq i32 %4420, 3
  %4501 = select i1 %4500, float 1.000000e+00, float %4499
  %4502 = call float @dx.op.binary.f32(i32 35, float %4292, float %4501)  ; FMax(a,b)
  %4503 = fcmp fast olt float %4501, 1.000000e+00
  %4504 = fcmp uge float %59, 0.000000e+00
  %4505 = and i1 %4504, %4503
  br i1 %4505, label %4506, label %4516

; <label>:4506                                    ; preds = %4498
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %59, float %60, float %61, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4511 = fadd fast float %4508, %4502
  %4512 = fcmp ule float %58, 0.000000e+00
  %4513 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = select i1 %4512, float %4513, float 1.000000e+00
  %4515 = fmul fast float %4514, %4510
  br label %4516

; <label>:4516                                    ; preds = %4506, %4498
  %4517 = phi float [ %4511, %4506 ], [ %4502, %4498 ]
  %4518 = phi float [ %4509, %4506 ], [ 0.000000e+00, %4498 ]
  %4519 = phi float [ %4515, %4506 ], [ 0.000000e+00, %4498 ]
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4523 = fcmp fast une float %4521, 0.000000e+00
  %4524 = fcmp fast une float %4522, 0.000000e+00
  %4525 = or i1 %4523, %4524
  br i1 %4525, label %4526, label %5085

; <label>:4526                                    ; preds = %4516
  br i1 %4523, label %4527, label %4800

; <label>:4527                                    ; preds = %4526
  %4528 = call float @dx.op.unary.f32(i32 23, float %4289)  ; Log(value)
  %4529 = fmul fast float %4528, 4.000000e+00
  %4530 = call float @dx.op.unary.f32(i32 21, float %4529)  ; Exp(value)
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = fmul fast float %4532, %46
  %4534 = fmul fast float %4532, %47
  %4535 = fmul fast float %4532, %48
  %4536 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4537 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4538 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4539 = call float @dx.op.unary.f32(i32 23, float %4536)  ; Log(value)
  %4540 = call float @dx.op.unary.f32(i32 23, float %4537)  ; Log(value)
  %4541 = call float @dx.op.unary.f32(i32 23, float %4538)  ; Log(value)
  %4542 = fmul fast float %4539, 4.000000e+00
  %4543 = fmul fast float %4540, 4.000000e+00
  %4544 = fmul fast float %4541, 4.000000e+00
  %4545 = call float @dx.op.unary.f32(i32 21, float %4542)  ; Exp(value)
  %4546 = call float @dx.op.unary.f32(i32 21, float %4543)  ; Exp(value)
  %4547 = call float @dx.op.unary.f32(i32 21, float %4544)  ; Exp(value)
  %4548 = fadd fast float %4546, %4545
  %4549 = fadd fast float %4548, %4547
  %4550 = fdiv fast float 1.000000e+00, %4549
  %4551 = fmul fast float %4550, %4545
  %4552 = fcmp fast ogt float %55, 0.000000e+00
  %4553 = fcmp fast ogt float %56, 0.000000e+00
  %4554 = fcmp fast ogt float %57, 0.000000e+00
  %4555 = fcmp fast olt float %55, 0.000000e+00
  %4556 = fcmp fast olt float %56, 0.000000e+00
  %4557 = fcmp fast olt float %57, 0.000000e+00
  %4558 = zext i1 %4552 to i32
  %4559 = zext i1 %4553 to i32
  %4560 = zext i1 %4554 to i32
  %4561 = zext i1 %4555 to i32
  %4562 = zext i1 %4556 to i32
  %4563 = zext i1 %4557 to i32
  %4564 = sub nsw i32 %4558, %4561
  %4565 = sub nsw i32 %4559, %4562
  %4566 = sub nsw i32 %4560, %4563
  %4567 = call float @dx.op.unary.f32(i32 83, float %4533)  ; DerivCoarseX(value)
  %4568 = call float @dx.op.unary.f32(i32 83, float %4534)  ; DerivCoarseX(value)
  %4569 = call float @dx.op.unary.f32(i32 83, float %4535)  ; DerivCoarseX(value)
  %4570 = call float @dx.op.unary.f32(i32 84, float %4533)  ; DerivCoarseY(value)
  %4571 = call float @dx.op.unary.f32(i32 84, float %4534)  ; DerivCoarseY(value)
  %4572 = call float @dx.op.unary.f32(i32 84, float %4535)  ; DerivCoarseY(value)
  %4573 = fcmp fast ole float %295, %4551
  %4574 = fmul fast float %4550, %4548
  %4575 = fcmp fast ole float %295, %4574
  %4576 = select i1 %4575, float %4535, float %4533
  %4577 = select i1 %4575, float %4533, float %4534
  %4578 = select i1 %4573, float %4534, float %4576
  %4579 = select i1 %4573, float %4535, float %4577
  %4580 = select i1 %4575, float %4569, float %4567
  %4581 = select i1 %4575, float %4567, float %4568
  %4582 = select i1 %4573, float %4568, float %4580
  %4583 = select i1 %4573, float %4569, float %4581
  %4584 = select i1 %4575, float %4572, float %4570
  %4585 = select i1 %4575, float %4570, float %4571
  %4586 = select i1 %4573, float %4571, float %4584
  %4587 = select i1 %4573, float %4572, float %4585
  %4588 = call float @dx.op.unary.f32(i32 27, float %4578)  ; Round_ni(value)
  %4589 = call float @dx.op.unary.f32(i32 27, float %4579)  ; Round_ni(value)
  %4590 = fptosi float %4588 to i32
  %4591 = fptosi float %4589 to i32
  %4592 = xor i32 %4591, %4590
  %4593 = sitofp i32 %4592 to float
  %4594 = fptosi float %4593 to i32
  %4595 = sitofp i32 %4594 to float
  %4596 = fmul fast float %4595, 0x3FE3C6EF40000000
  %4597 = frem fast float %4588, 2.560000e+02
  %4598 = frem fast float %4589, 2.560000e+02
  %4599 = fptoui float %4597 to i32
  %4600 = fptoui float %4598 to i32
  %4601 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4599, i32 %4600, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = fadd fast float %4602, %4596
  %4606 = fadd fast float %4603, %4596
  %4607 = fadd fast float %4604, %4596
  %4608 = call float @dx.op.unary.f32(i32 22, float %4605)  ; Frc(value)
  %4609 = call float @dx.op.unary.f32(i32 22, float %4606)  ; Frc(value)
  %4610 = call float @dx.op.unary.f32(i32 22, float %4607)  ; Frc(value)
  %4611 = fmul fast float %4610, 0x401921FB60000000
  %4612 = call float @dx.op.unary.f32(i32 13, float %4611)  ; Sin(value)
  %4613 = call float @dx.op.unary.f32(i32 12, float %4611)  ; Cos(value)
  %4614 = fsub fast float -0.000000e+00, %4613
  %4615 = fmul fast float %4613, %4578
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4579, float %4615)  ; FMad(a,b,c)
  %4617 = fmul fast float %4612, %4578
  %4618 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4579, float %4617)  ; FMad(a,b,c)
  %4619 = fadd fast float %4616, %4608
  %4620 = fadd fast float %4618, %4609
  %4621 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4622 = bitcast float %4621 to i32
  %4623 = icmp eq i32 %4622, 0
  br i1 %4623, label %4662, label %4624

; <label>:4624                                    ; preds = %4527
  %4625 = add i32 %4622, 0
  %4626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4626, %dx.types.Handle %96, float %4619, float %4620, float undef, float undef, i32 0, i32 0, i32 undef, float %4582, float %4583, float undef, float %4586, float %4587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4631 = extractvalue %dx.types.CBufRet.f32 %4629, 2
  %4632 = fsub fast float 1.000000e+00, %4521
  %4633 = call float @dx.op.binary.f32(i32 35, float %4632, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4634 = bitcast float %4521 to i32
  %4635 = sitofp i32 %4634 to float
  %4636 = fadd fast float %4635, 0xC1CFBF8940000000
  %4637 = fmul fast float %4631, %4636
  %4638 = fadd fast float %4637, 0x41CFBF8940000000
  %4639 = fptosi float %4638 to i32
  %4640 = bitcast i32 %4639 to float
  %4641 = bitcast float %4633 to i32
  %4642 = sitofp i32 %4641 to float
  %4643 = fadd fast float %4642, 0xC1CFBF8940000000
  %4644 = fmul fast float %4643, %4631
  %4645 = fadd fast float %4644, 0x41CFBF8940000000
  %4646 = fptosi float %4645 to i32
  %4647 = bitcast i32 %4646 to float
  %4648 = fmul fast float %4640, %4630
  %4649 = fmul fast float %4647, %4630
  %4650 = fsub fast float %4633, %4648
  %4651 = fadd fast float %4649, %4633
  %4652 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4654 = fsub fast float %4628, %4652
  %4655 = fsub fast float %4653, %4652
  %4656 = bitcast float %4655 to i32
  %4657 = sub nsw i32 2129859010, %4656
  %4658 = bitcast i32 %4657 to float
  %4659 = fmul fast float %4658, %4654
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fcmp fast olt float %4660, 0x3F70101020000000
  br i1 %4661, label %4800, label %4662

; <label>:4662                                    ; preds = %4624, %4527
  %4663 = phi float [ %4660, %4624 ], [ %4521, %4527 ]
  %4664 = fmul fast float %4663, %4530
  %4665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.i32 %4665, 1
  %4667 = extractvalue %dx.types.CBufRet.i32 %4665, 0
  %4668 = add i32 %4667, 0
  %4669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4669, %dx.types.Handle %95, float %4619, float %4620, float undef, float undef, i32 0, i32 0, i32 undef, float %4582, float %4583, float undef, float %4586, float %4587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = and i32 %4666, 255
  %4676 = uitofp i32 %4675 to float
  %4677 = lshr i32 %4666, 8
  %4678 = and i32 %4677, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = fmul fast float %4674, %4676
  %4681 = fadd fast float %4680, %4679
  %4682 = fmul fast float %4681, 0x3F70101000000000
  %4683 = fadd fast float %4682, 0xBFB99999A0000000
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, 0x3FF1C71C80000000
  %4686 = call float @dx.op.binary.f32(i32 36, float %4682, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4687 = fsub fast float 1.000000e+00, %4685
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4688, %4671
  %4690 = fmul fast float %4688, %4672
  %4691 = fmul fast float %4688, %4673
  %4692 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4695 = fmul fast float %4685, %4671
  %4696 = fmul fast float %4685, %4672
  %4697 = fmul fast float %4685, %4673
  %4698 = fadd fast float %4695, %4686
  %4699 = fadd fast float %4696, %4686
  %4700 = fadd fast float %4697, %4686
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.i32 %4704, 3
  %4706 = extractvalue %dx.types.CBufRet.i32 %4704, 2
  %4707 = add i32 %4706, 0
  %4708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4708, %dx.types.Handle %95, float %4619, float %4620, float undef, float undef, i32 0, i32 0, i32 undef, float %4582, float %4583, float undef, float %4586, float %4587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = extractvalue %dx.types.ResRet.f32 %4709, 3
  %4714 = and i32 %4705, 255
  %4715 = uitofp i32 %4714 to float
  %4716 = lshr i32 %4705, 8
  %4717 = and i32 %4716, 255
  %4718 = uitofp i32 %4717 to float
  %4719 = lshr i32 %4705, 16
  %4720 = and i32 %4719, 255
  %4721 = uitofp i32 %4720 to float
  %4722 = fmul fast float %4721, 0x3F70101000000000
  %4723 = fmul fast float %4710, %4715
  %4724 = fadd fast float %4723, %4718
  %4725 = fmul fast float %4724, 0x3F70101000000000
  %4726 = fadd fast float %4711, -5.000000e-01
  %4727 = fadd fast float %4713, -5.000000e-01
  %4728 = fmul fast float %4726, %4722
  %4729 = fmul fast float %4727, %4722
  %4730 = fadd fast float %4728, 5.000000e-01
  %4731 = fadd fast float %4729, 5.000000e-01
  %4732 = fmul fast float %4730, 2.000000e+00
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = fmul fast float %4731, 2.000000e+00
  %4735 = fadd fast float %4734, -1.000000e+00
  %4736 = fadd fast float %4733, %4735
  %4737 = fmul fast float %4736, 5.000000e-01
  %4738 = fsub fast float %4733, %4735
  %4739 = fmul fast float %4738, 5.000000e-01
  %4740 = call float @dx.op.unary.f32(i32 6, float %4737)  ; FAbs(value)
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = call float @dx.op.unary.f32(i32 6, float %4739)  ; FAbs(value)
  %4743 = fsub fast float %4741, %4742
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4739, float %4743, float %4737, float %4739, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = call float @dx.op.unary.f32(i32 25, float %4744)  ; Rsqrt(value)
  %4746 = fmul fast float %4737, %4745
  %4747 = fmul fast float %4739, %4745
  %4748 = select i1 %4575, i32 %4565, i32 %4566
  %4749 = select i1 %4573, i32 %4564, i32 %4748
  %4750 = sitofp i32 %4749 to float
  %4751 = fmul fast float %4743, %4750
  %4752 = fmul fast float %4751, %4745
  %4753 = select i1 %4575, float %4752, float %4747
  %4754 = select i1 %4575, float %4747, float %4752
  %4755 = select i1 %4573, float %4752, float %4746
  %4756 = select i1 %4573, float %4747, float %4753
  %4757 = select i1 %4573, float %4746, float %4754
  %4758 = fsub fast float %4692, %4416
  %4759 = fsub fast float %4693, %4417
  %4760 = fsub fast float %4694, %4418
  %4761 = fmul fast float %4758, %4664
  %4762 = fmul fast float %4759, %4664
  %4763 = fmul fast float %4760, %4664
  %4764 = fadd fast float %4761, %4416
  %4765 = fadd fast float %4762, %4417
  %4766 = fadd fast float %4763, %4418
  %4767 = fsub fast float %4701, %4335
  %4768 = fsub fast float %4702, %4336
  %4769 = fsub fast float %4703, %4337
  %4770 = fmul fast float %4767, %4664
  %4771 = fmul fast float %4768, %4664
  %4772 = fmul fast float %4769, %4664
  %4773 = fadd fast float %4770, %4335
  %4774 = fadd fast float %4771, %4336
  %4775 = fadd fast float %4772, %4337
  %4776 = fadd fast float %4755, %4274
  %4777 = fadd fast float %4756, %4275
  %4778 = fadd fast float %4757, %4276
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %4776, float %4777, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.unary.f32(i32 25, float %4779)  ; Rsqrt(value)
  %4781 = fmul fast float %4776, %4780
  %4782 = fmul fast float %4777, %4780
  %4783 = fmul fast float %4778, %4780
  %4784 = fsub fast float %4781, %4274
  %4785 = fsub fast float %4782, %4275
  %4786 = fsub fast float %4783, %4276
  %4787 = fmul fast float %4784, %4664
  %4788 = fmul fast float %4785, %4664
  %4789 = fmul fast float %4786, %4664
  %4790 = fadd fast float %4787, %4274
  %4791 = fadd fast float %4788, %4275
  %4792 = fadd fast float %4789, %4276
  %4793 = call float @dx.op.binary.f32(i32 36, float %4289, float %4712)  ; FMin(a,b)
  %4794 = fsub fast float %4793, %4289
  %4795 = fmul fast float %4794, %4664
  %4796 = fadd fast float %4795, %4289
  %4797 = fsub fast float %4725, %4338
  %4798 = fmul fast float %4797, %4664
  %4799 = fadd fast float %4798, %4338
  br label %4800

; <label>:4800                                    ; preds = %4662, %4624, %4526
  %4801 = phi float [ %4764, %4662 ], [ %4416, %4624 ], [ %4416, %4526 ]
  %4802 = phi float [ %4765, %4662 ], [ %4417, %4624 ], [ %4417, %4526 ]
  %4803 = phi float [ %4766, %4662 ], [ %4418, %4624 ], [ %4418, %4526 ]
  %4804 = phi float [ %4790, %4662 ], [ %4274, %4624 ], [ %4274, %4526 ]
  %4805 = phi float [ %4791, %4662 ], [ %4275, %4624 ], [ %4275, %4526 ]
  %4806 = phi float [ %4792, %4662 ], [ %4276, %4624 ], [ %4276, %4526 ]
  %4807 = phi float [ %4773, %4662 ], [ %4335, %4624 ], [ %4335, %4526 ]
  %4808 = phi float [ %4774, %4662 ], [ %4336, %4624 ], [ %4336, %4526 ]
  %4809 = phi float [ %4775, %4662 ], [ %4337, %4624 ], [ %4337, %4526 ]
  %4810 = phi float [ %4799, %4662 ], [ %4338, %4624 ], [ %4338, %4526 ]
  %4811 = phi float [ %4796, %4662 ], [ %4289, %4624 ], [ %4289, %4526 ]
  br i1 %4524, label %4812, label %5085

; <label>:4812                                    ; preds = %4800
  %4813 = call float @dx.op.unary.f32(i32 23, float %4811)  ; Log(value)
  %4814 = fmul fast float %4813, 4.000000e+00
  %4815 = call float @dx.op.unary.f32(i32 21, float %4814)  ; Exp(value)
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = fmul fast float %4817, %46
  %4819 = fmul fast float %4817, %47
  %4820 = fmul fast float %4817, %48
  %4821 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4822 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %4823 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %4824 = call float @dx.op.unary.f32(i32 23, float %4821)  ; Log(value)
  %4825 = call float @dx.op.unary.f32(i32 23, float %4822)  ; Log(value)
  %4826 = call float @dx.op.unary.f32(i32 23, float %4823)  ; Log(value)
  %4827 = fmul fast float %4824, 4.000000e+00
  %4828 = fmul fast float %4825, 4.000000e+00
  %4829 = fmul fast float %4826, 4.000000e+00
  %4830 = call float @dx.op.unary.f32(i32 21, float %4827)  ; Exp(value)
  %4831 = call float @dx.op.unary.f32(i32 21, float %4828)  ; Exp(value)
  %4832 = call float @dx.op.unary.f32(i32 21, float %4829)  ; Exp(value)
  %4833 = fadd fast float %4831, %4830
  %4834 = fadd fast float %4833, %4832
  %4835 = fdiv fast float 1.000000e+00, %4834
  %4836 = fmul fast float %4835, %4830
  %4837 = fcmp fast ogt float %55, 0.000000e+00
  %4838 = fcmp fast ogt float %56, 0.000000e+00
  %4839 = fcmp fast ogt float %57, 0.000000e+00
  %4840 = fcmp fast olt float %55, 0.000000e+00
  %4841 = fcmp fast olt float %56, 0.000000e+00
  %4842 = fcmp fast olt float %57, 0.000000e+00
  %4843 = zext i1 %4837 to i32
  %4844 = zext i1 %4838 to i32
  %4845 = zext i1 %4839 to i32
  %4846 = zext i1 %4840 to i32
  %4847 = zext i1 %4841 to i32
  %4848 = zext i1 %4842 to i32
  %4849 = sub nsw i32 %4843, %4846
  %4850 = sub nsw i32 %4844, %4847
  %4851 = sub nsw i32 %4845, %4848
  %4852 = call float @dx.op.unary.f32(i32 83, float %4818)  ; DerivCoarseX(value)
  %4853 = call float @dx.op.unary.f32(i32 83, float %4819)  ; DerivCoarseX(value)
  %4854 = call float @dx.op.unary.f32(i32 83, float %4820)  ; DerivCoarseX(value)
  %4855 = call float @dx.op.unary.f32(i32 84, float %4818)  ; DerivCoarseY(value)
  %4856 = call float @dx.op.unary.f32(i32 84, float %4819)  ; DerivCoarseY(value)
  %4857 = call float @dx.op.unary.f32(i32 84, float %4820)  ; DerivCoarseY(value)
  %4858 = fcmp fast ole float %295, %4836
  %4859 = fmul fast float %4835, %4833
  %4860 = fcmp fast ole float %295, %4859
  %4861 = select i1 %4860, float %4820, float %4818
  %4862 = select i1 %4860, float %4818, float %4819
  %4863 = select i1 %4858, float %4819, float %4861
  %4864 = select i1 %4858, float %4820, float %4862
  %4865 = select i1 %4860, float %4854, float %4852
  %4866 = select i1 %4860, float %4852, float %4853
  %4867 = select i1 %4858, float %4853, float %4865
  %4868 = select i1 %4858, float %4854, float %4866
  %4869 = select i1 %4860, float %4857, float %4855
  %4870 = select i1 %4860, float %4855, float %4856
  %4871 = select i1 %4858, float %4856, float %4869
  %4872 = select i1 %4858, float %4857, float %4870
  %4873 = call float @dx.op.unary.f32(i32 27, float %4863)  ; Round_ni(value)
  %4874 = call float @dx.op.unary.f32(i32 27, float %4864)  ; Round_ni(value)
  %4875 = fptosi float %4873 to i32
  %4876 = fptosi float %4874 to i32
  %4877 = xor i32 %4876, %4875
  %4878 = sitofp i32 %4877 to float
  %4879 = fptosi float %4878 to i32
  %4880 = sitofp i32 %4879 to float
  %4881 = fmul fast float %4880, 0x3FE3C6EF40000000
  %4882 = frem fast float %4873, 2.560000e+02
  %4883 = frem fast float %4874, 2.560000e+02
  %4884 = fptoui float %4882 to i32
  %4885 = fptoui float %4883 to i32
  %4886 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4884, i32 %4885, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.ResRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.ResRet.f32 %4886, 2
  %4890 = fadd fast float %4887, %4881
  %4891 = fadd fast float %4888, %4881
  %4892 = fadd fast float %4889, %4881
  %4893 = call float @dx.op.unary.f32(i32 22, float %4890)  ; Frc(value)
  %4894 = call float @dx.op.unary.f32(i32 22, float %4891)  ; Frc(value)
  %4895 = call float @dx.op.unary.f32(i32 22, float %4892)  ; Frc(value)
  %4896 = fmul fast float %4895, 0x401921FB60000000
  %4897 = call float @dx.op.unary.f32(i32 13, float %4896)  ; Sin(value)
  %4898 = call float @dx.op.unary.f32(i32 12, float %4896)  ; Cos(value)
  %4899 = fsub fast float -0.000000e+00, %4898
  %4900 = fmul fast float %4898, %4863
  %4901 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4864, float %4900)  ; FMad(a,b,c)
  %4902 = fmul fast float %4897, %4863
  %4903 = call float @dx.op.tertiary.f32(i32 46, float %4899, float %4864, float %4902)  ; FMad(a,b,c)
  %4904 = fadd fast float %4901, %4893
  %4905 = fadd fast float %4903, %4894
  %4906 = extractvalue %dx.types.CBufRet.f32 %4816, 3
  %4907 = bitcast float %4906 to i32
  %4908 = icmp eq i32 %4907, 0
  br i1 %4908, label %4947, label %4909

; <label>:4909                                    ; preds = %4812
  %4910 = add i32 %4907, 0
  %4911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4911, %dx.types.Handle %96, float %4904, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float %4867, float %4868, float undef, float %4871, float %4872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4917 = fsub fast float 1.000000e+00, %4522
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4919 = bitcast float %4522 to i32
  %4920 = sitofp i32 %4919 to float
  %4921 = fadd fast float %4920, 0xC1CFBF8940000000
  %4922 = fmul fast float %4916, %4921
  %4923 = fadd fast float %4922, 0x41CFBF8940000000
  %4924 = fptosi float %4923 to i32
  %4925 = bitcast i32 %4924 to float
  %4926 = bitcast float %4918 to i32
  %4927 = sitofp i32 %4926 to float
  %4928 = fadd fast float %4927, 0xC1CFBF8940000000
  %4929 = fmul fast float %4928, %4916
  %4930 = fadd fast float %4929, 0x41CFBF8940000000
  %4931 = fptosi float %4930 to i32
  %4932 = bitcast i32 %4931 to float
  %4933 = fmul fast float %4925, %4915
  %4934 = fmul fast float %4932, %4915
  %4935 = fsub fast float %4918, %4933
  %4936 = fadd fast float %4934, %4918
  %4937 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = fsub fast float %4913, %4937
  %4940 = fsub fast float %4938, %4937
  %4941 = bitcast float %4940 to i32
  %4942 = sub nsw i32 2129859010, %4941
  %4943 = bitcast i32 %4942 to float
  %4944 = fmul fast float %4943, %4939
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fcmp fast olt float %4945, 0x3F70101020000000
  br i1 %4946, label %5085, label %4947

; <label>:4947                                    ; preds = %4909, %4812
  %4948 = phi float [ %4945, %4909 ], [ %4522, %4812 ]
  %4949 = fmul fast float %4948, %4815
  %4950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.i32 %4950, 1
  %4952 = extractvalue %dx.types.CBufRet.i32 %4950, 0
  %4953 = add i32 %4952, 0
  %4954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4955 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4954, %dx.types.Handle %95, float %4904, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float %4867, float %4868, float undef, float %4871, float %4872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.ResRet.f32 %4955, 1
  %4958 = extractvalue %dx.types.ResRet.f32 %4955, 2
  %4959 = extractvalue %dx.types.ResRet.f32 %4955, 3
  %4960 = and i32 %4951, 255
  %4961 = uitofp i32 %4960 to float
  %4962 = lshr i32 %4951, 8
  %4963 = and i32 %4962, 255
  %4964 = uitofp i32 %4963 to float
  %4965 = fmul fast float %4959, %4961
  %4966 = fadd fast float %4965, %4964
  %4967 = fmul fast float %4966, 0x3F70101000000000
  %4968 = fadd fast float %4967, 0xBFB99999A0000000
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, 0x3FF1C71C80000000
  %4971 = call float @dx.op.binary.f32(i32 36, float %4967, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4972 = fsub fast float 1.000000e+00, %4970
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fmul fast float %4973, %4956
  %4975 = fmul fast float %4973, %4957
  %4976 = fmul fast float %4973, %4958
  %4977 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = fmul fast float %4970, %4956
  %4981 = fmul fast float %4970, %4957
  %4982 = fmul fast float %4970, %4958
  %4983 = fadd fast float %4980, %4971
  %4984 = fadd fast float %4981, %4971
  %4985 = fadd fast float %4982, %4971
  %4986 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 3
  %4991 = extractvalue %dx.types.CBufRet.i32 %4989, 2
  %4992 = add i32 %4991, 0
  %4993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4993, %dx.types.Handle %95, float %4904, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float %4867, float %4868, float undef, float %4871, float %4872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.ResRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.ResRet.f32 %4994, 2
  %4998 = extractvalue %dx.types.ResRet.f32 %4994, 3
  %4999 = and i32 %4990, 255
  %5000 = uitofp i32 %4999 to float
  %5001 = lshr i32 %4990, 8
  %5002 = and i32 %5001, 255
  %5003 = uitofp i32 %5002 to float
  %5004 = lshr i32 %4990, 16
  %5005 = and i32 %5004, 255
  %5006 = uitofp i32 %5005 to float
  %5007 = fmul fast float %5006, 0x3F70101000000000
  %5008 = fmul fast float %4995, %5000
  %5009 = fadd fast float %5008, %5003
  %5010 = fmul fast float %5009, 0x3F70101000000000
  %5011 = fadd fast float %4996, -5.000000e-01
  %5012 = fadd fast float %4998, -5.000000e-01
  %5013 = fmul fast float %5011, %5007
  %5014 = fmul fast float %5012, %5007
  %5015 = fadd fast float %5013, 5.000000e-01
  %5016 = fadd fast float %5014, 5.000000e-01
  %5017 = fmul fast float %5015, 2.000000e+00
  %5018 = fadd fast float %5017, -1.000000e+00
  %5019 = fmul fast float %5016, 2.000000e+00
  %5020 = fadd fast float %5019, -1.000000e+00
  %5021 = fadd fast float %5018, %5020
  %5022 = fmul fast float %5021, 5.000000e-01
  %5023 = fsub fast float %5018, %5020
  %5024 = fmul fast float %5023, 5.000000e-01
  %5025 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = call float @dx.op.unary.f32(i32 6, float %5024)  ; FAbs(value)
  %5028 = fsub fast float %5026, %5027
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5024, float %5028, float %5022, float %5024, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5022, %5030
  %5032 = fmul fast float %5024, %5030
  %5033 = select i1 %4860, i32 %4850, i32 %4851
  %5034 = select i1 %4858, i32 %4849, i32 %5033
  %5035 = sitofp i32 %5034 to float
  %5036 = fmul fast float %5028, %5035
  %5037 = fmul fast float %5036, %5030
  %5038 = select i1 %4860, float %5037, float %5032
  %5039 = select i1 %4860, float %5032, float %5037
  %5040 = select i1 %4858, float %5037, float %5031
  %5041 = select i1 %4858, float %5032, float %5038
  %5042 = select i1 %4858, float %5031, float %5039
  %5043 = fsub fast float %4977, %4801
  %5044 = fsub fast float %4978, %4802
  %5045 = fsub fast float %4979, %4803
  %5046 = fmul fast float %5043, %4949
  %5047 = fmul fast float %5044, %4949
  %5048 = fmul fast float %5045, %4949
  %5049 = fadd fast float %5046, %4801
  %5050 = fadd fast float %5047, %4802
  %5051 = fadd fast float %5048, %4803
  %5052 = fsub fast float %4986, %4807
  %5053 = fsub fast float %4987, %4808
  %5054 = fsub fast float %4988, %4809
  %5055 = fmul fast float %5052, %4949
  %5056 = fmul fast float %5053, %4949
  %5057 = fmul fast float %5054, %4949
  %5058 = fadd fast float %5055, %4807
  %5059 = fadd fast float %5056, %4808
  %5060 = fadd fast float %5057, %4809
  %5061 = fadd fast float %5040, %4804
  %5062 = fadd fast float %5041, %4805
  %5063 = fadd fast float %5042, %4806
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 25, float %5064)  ; Rsqrt(value)
  %5066 = fmul fast float %5061, %5065
  %5067 = fmul fast float %5062, %5065
  %5068 = fmul fast float %5063, %5065
  %5069 = fsub fast float %5066, %4804
  %5070 = fsub fast float %5067, %4805
  %5071 = fsub fast float %5068, %4806
  %5072 = fmul fast float %5069, %4949
  %5073 = fmul fast float %5070, %4949
  %5074 = fmul fast float %5071, %4949
  %5075 = fadd fast float %5072, %4804
  %5076 = fadd fast float %5073, %4805
  %5077 = fadd fast float %5074, %4806
  %5078 = call float @dx.op.binary.f32(i32 36, float %4811, float %4997)  ; FMin(a,b)
  %5079 = fsub fast float %5078, %4811
  %5080 = fmul fast float %5079, %4949
  %5081 = fadd fast float %5080, %4811
  %5082 = fsub fast float %5010, %4810
  %5083 = fmul fast float %5082, %4949
  %5084 = fadd fast float %5083, %4810
  br label %5085

; <label>:5085                                    ; preds = %4947, %4909, %4800, %4516
  %5086 = phi float [ %5049, %4947 ], [ %4801, %4909 ], [ %4801, %4800 ], [ %4416, %4516 ]
  %5087 = phi float [ %5050, %4947 ], [ %4802, %4909 ], [ %4802, %4800 ], [ %4417, %4516 ]
  %5088 = phi float [ %5051, %4947 ], [ %4803, %4909 ], [ %4803, %4800 ], [ %4418, %4516 ]
  %5089 = phi float [ %5075, %4947 ], [ %4804, %4909 ], [ %4804, %4800 ], [ %4274, %4516 ]
  %5090 = phi float [ %5076, %4947 ], [ %4805, %4909 ], [ %4805, %4800 ], [ %4275, %4516 ]
  %5091 = phi float [ %5077, %4947 ], [ %4806, %4909 ], [ %4806, %4800 ], [ %4276, %4516 ]
  %5092 = phi float [ %5058, %4947 ], [ %4807, %4909 ], [ %4807, %4800 ], [ %4335, %4516 ]
  %5093 = phi float [ %5059, %4947 ], [ %4808, %4909 ], [ %4808, %4800 ], [ %4336, %4516 ]
  %5094 = phi float [ %5060, %4947 ], [ %4809, %4909 ], [ %4809, %4800 ], [ %4337, %4516 ]
  %5095 = phi float [ %5084, %4947 ], [ %4810, %4909 ], [ %4810, %4800 ], [ %4338, %4516 ]
  %5096 = phi float [ %5081, %4947 ], [ %4811, %4909 ], [ %4811, %4800 ], [ %4289, %4516 ]
  %5097 = fcmp fast une float %4520, 0.000000e+00
  %5098 = fsub fast float -0.000000e+00, %211
  %5099 = fsub fast float -0.000000e+00, %212
  %5100 = fsub fast float -0.000000e+00, %213
  br i1 %5097, label %5101, label %5262

; <label>:5101                                    ; preds = %5085
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5099, float %5100, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = fmul fast float %4520, 2.500000e+00
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fmul fast float %4520, 0x4013FFFFE0000000
  %5106 = fadd fast float %5105, 0xBFFFFFFFE0000000
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fmul fast float %4520, 0x4004000020000000
  %5109 = fadd fast float %5108, 0xBFF8000040000000
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %4317, 1.000000e+01
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = fmul fast float %5112, 2.000000e+00
  %5114 = fsub fast float 3.000000e+00, %5113
  %5115 = fmul fast float %5112, %5112
  %5116 = fmul fast float %5115, %5114
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = fsub fast float 0x3FE3333340000000, %5095
  %5119 = fmul fast float %5118, 0x400AAAAAA0000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5117, %5120
  %5122 = fmul fast float %5086, 0x3FEA2B8620000000
  %5123 = fmul fast float %5087, 0x3FEA2B8620000000
  %5124 = fmul fast float %5088, 0x3FEA2B8620000000
  %5125 = fadd fast float %5122, 0x3FC81DFBA0000000
  %5126 = fmul fast float %5125, %5086
  %5127 = fadd fast float %5126, 0x3F910E6020000000
  %5128 = fadd fast float %5123, 0x3FC81DFBA0000000
  %5129 = fmul fast float %5128, %5087
  %5130 = fadd fast float %5129, 0x3F910E6020000000
  %5131 = fadd fast float %5124, 0x3FC81DFBA0000000
  %5132 = fmul fast float %5131, %5088
  %5133 = fadd fast float %5132, 0x3F910E6020000000
  %5134 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = fsub fast float %5134, %5086
  %5138 = fsub fast float %5135, %5087
  %5139 = fsub fast float %5136, %5088
  %5140 = fmul fast float %5137, %5104
  %5141 = fmul fast float %5140, %5121
  %5142 = fmul fast float %5138, %5104
  %5143 = fmul fast float %5142, %5121
  %5144 = fmul fast float %5139, %5104
  %5145 = fmul fast float %5144, %5121
  %5146 = fadd fast float %5141, %5086
  %5147 = fadd fast float %5143, %5087
  %5148 = fadd fast float %5145, %5088
  %5149 = fmul fast float %5096, %5096
  %5150 = fmul fast float %5149, %5149
  %5151 = fadd fast float %5107, 1.000000e+00
  %5152 = fsub fast float %5151, %5121
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fsub fast float 1.000000e+00, %5150
  %5157 = call float @dx.op.binary.f32(i32 36, float %5153, float %5156)  ; FMin(a,b)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5159 = call float @dx.op.binary.f32(i32 35, float %5157, float %5158)  ; FMax(a,b)
  %5160 = fadd fast float %5155, 0xBFE4CCCCC0000000
  %5161 = fmul fast float %5160, 0x4006DB6DA0000000
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = fmul fast float %5162, 2.000000e+00
  %5164 = fsub fast float 3.000000e+00, %5163
  %5165 = bitcast float %5092 to i32
  %5166 = ashr i32 %5165, 1
  %5167 = add nsw i32 %5166, 532487669
  %5168 = bitcast i32 %5167 to float
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = bitcast float %5169 to i32
  %5171 = sub nsw i32 2129859010, %5170
  %5172 = bitcast i32 %5171 to float
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = bitcast float %5093 to i32
  %5175 = ashr i32 %5174, 1
  %5176 = add nsw i32 %5175, 532487669
  %5177 = bitcast i32 %5176 to float
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = bitcast float %5178 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = fmul fast float %5181, 2.000000e+00
  %5183 = bitcast float %5094 to i32
  %5184 = ashr i32 %5183, 1
  %5185 = add nsw i32 %5184, 532487669
  %5186 = bitcast i32 %5185 to float
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = bitcast float %5187 to i32
  %5189 = sub nsw i32 2129859010, %5188
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5190, 2.000000e+00
  %5192 = fsub fast float 0x4002A9FBE0000000, %5173
  %5193 = fadd fast float %5173, 0x3FD54FDF00000000
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, %5192
  %5198 = fmul fast float %5197, %5197
  %5199 = fsub fast float 0x4002A9FBE0000000, %5182
  %5200 = fadd fast float %5182, 0x3FD54FDF00000000
  %5201 = bitcast float %5200 to i32
  %5202 = sub nsw i32 2129859010, %5201
  %5203 = bitcast i32 %5202 to float
  %5204 = fmul fast float %5203, %5199
  %5205 = fmul fast float %5204, %5204
  %5206 = fsub fast float 0x4002A9FBE0000000, %5191
  %5207 = fadd fast float %5191, 0x3FD54FDF00000000
  %5208 = bitcast float %5207 to i32
  %5209 = sub nsw i32 2129859010, %5208
  %5210 = bitcast i32 %5209 to float
  %5211 = fmul fast float %5210, %5206
  %5212 = fmul fast float %5211, %5211
  %5213 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5198)  ; FMax(a,b)
  %5214 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5205)  ; FMax(a,b)
  %5215 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5212)  ; FMax(a,b)
  %5216 = fsub fast float 1.000000e+00, %5102
  %5217 = fadd fast float %5216, %5117
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fsub fast float 1.000000e+00, %4501
  %5220 = fmul fast float %5159, %5219
  %5221 = fmul fast float %5162, %5162
  %5222 = fmul fast float %5221, %5220
  %5223 = fmul fast float %5222, %5164
  %5224 = fmul fast float %5219, 0xBFE99999A0000000
  %5225 = fmul fast float %5224, %5104
  %5226 = fmul fast float %5225, %5121
  %5227 = fadd fast float %5226, 1.000000e+00
  %5228 = fadd fast float %5095, -1.000000e+00
  %5229 = fmul fast float %5227, %5228
  %5230 = fadd fast float %5229, 1.000000e+00
  %5231 = fsub fast float %5213, %5092
  %5232 = fsub fast float %5214, %5093
  %5233 = fsub fast float %5215, %5094
  %5234 = fmul fast float %5223, %5231
  %5235 = fmul fast float %5223, %5232
  %5236 = fmul fast float %5223, %5233
  %5237 = fadd fast float %5234, %5092
  %5238 = fadd fast float %5235, %5093
  %5239 = fadd fast float %5236, %5094
  %5240 = fsub fast float %106, %5089
  %5241 = fsub fast float %107, %5090
  %5242 = fsub fast float %108, %5091
  %5243 = fmul fast float %5223, %5240
  %5244 = fmul fast float %5223, %5241
  %5245 = fmul fast float %5223, %5242
  %5246 = fadd fast float %5243, %5089
  %5247 = fadd fast float %5244, %5090
  %5248 = fadd fast float %5245, %5091
  %5249 = fmul fast float %5223, %5218
  %5250 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = fmul fast float %5249, %5251
  %5253 = fadd fast float %5252, %5250
  %5254 = fsub fast float 1.000000e+00, %5096
  %5255 = fmul fast float %5223, %5254
  %5256 = fadd fast float %5255, %5096
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = call float @dx.op.unary.f32(i32 25, float %5257)  ; Rsqrt(value)
  %5259 = fmul fast float %5246, %5258
  %5260 = fmul fast float %5247, %5258
  %5261 = fmul fast float %5248, %5258
  br label %5262

; <label>:5262                                    ; preds = %5101, %5085
  %5263 = phi float [ %5146, %5101 ], [ %5086, %5085 ]
  %5264 = phi float [ %5147, %5101 ], [ %5087, %5085 ]
  %5265 = phi float [ %5148, %5101 ], [ %5088, %5085 ]
  %5266 = phi float [ %5259, %5101 ], [ %5089, %5085 ]
  %5267 = phi float [ %5260, %5101 ], [ %5090, %5085 ]
  %5268 = phi float [ %5261, %5101 ], [ %5091, %5085 ]
  %5269 = phi float [ %5237, %5101 ], [ %5092, %5085 ]
  %5270 = phi float [ %5238, %5101 ], [ %5093, %5085 ]
  %5271 = phi float [ %5239, %5101 ], [ %5094, %5085 ]
  %5272 = phi float [ %5253, %5101 ], [ %5095, %5085 ]
  %5273 = phi float [ %5256, %5101 ], [ %5096, %5085 ]
  %5274 = select i1 %284, float 0.000000e+00, float %5271
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5098, float %5099, float %5100)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fmul fast float %5277, 2.000000e+00
  %5279 = fmul fast float %5278, %5266
  %5280 = fmul fast float %5278, %5267
  %5281 = fmul fast float %5278, %5268
  %5282 = fsub fast float %211, %5279
  %5283 = fsub fast float %212, %5280
  %5284 = fsub fast float %213, %5281
  %5285 = call float @dx.op.binary.f32(i32 36, float %5273, float 1.000000e+00)  ; FMin(a,b)
  %5286 = fsub fast float 1.000000e+00, %5273
  %5287 = bitcast float %5286 to i32
  %5288 = sub nsw i32 2129859010, %5287
  %5289 = bitcast i32 %5288 to float
  %5290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5291 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = fcmp fast oeq float %5291, 0.000000e+00
  %5293 = fcmp fast oeq float %5290, 0.000000e+00
  %5294 = or i1 %5293, %5292
  br i1 %5294, label %5324, label %5295

; <label>:5295                                    ; preds = %5262
  %5296 = fsub fast float -0.000000e+00, %73
  %5297 = fsub fast float -0.000000e+00, %71
  %5298 = call float @dx.op.unary.f32(i32 24, float %5291)  ; Sqrt(value)
  %5299 = fdiv fast float %5298, %5290
  %5300 = fcmp fast ogt float %5299, 0x3FFB6F8900000000
  %5301 = select i1 %5300, float 0x3FFB6F8900000000, float %5299
  %5302 = fmul fast float %5301, 0x3FE8A23460000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = call float @dx.op.binary.f32(i32 35, float %5301, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5305 = fmul fast float %5303, %5290
  %5306 = fmul fast float %5304, 0x3FF279A740000000
  %5307 = fadd fast float %5306, -1.000000e+00
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %72, float %5296, float %5297, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5309, %5296
  %5311 = fmul fast float %5309, %5297
  %5312 = fmul fast float %5309, %72
  %5313 = fmul fast float %5307, %5307
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fmul fast float %5304, 0x40005F8BE0000000
  %5316 = fsub fast float 0x400C5BF8A0000000, %5315
  %5317 = fdiv fast float %5305, %5316
  %5318 = fmul fast float %5317, 0x3FEE31C3C0000000
  %5319 = fmul fast float %5318, %5314
  %5320 = fmul fast float %5304, 0x3FDACB7480000000
  %5321 = fadd fast float %5320, 0xBFD7347680000000
  %5322 = fmul fast float %5321, %5317
  %5323 = fmul fast float %5322, %5314
  br label %5324

; <label>:5324                                    ; preds = %5295, %5262
  %5325 = phi float [ %5310, %5295 ], [ 0.000000e+00, %5262 ]
  %5326 = phi float [ %5311, %5295 ], [ 0.000000e+00, %5262 ]
  %5327 = phi float [ %5312, %5295 ], [ 0.000000e+00, %5262 ]
  %5328 = phi float [ %5319, %5295 ], [ 0.000000e+00, %5262 ]
  %5329 = phi float [ %5323, %5295 ], [ 0.000000e+00, %5262 ]
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = fmul fast float %5330, 0x3FDF454380000000
  %5332 = fmul fast float %5330, %5330
  %5333 = fmul fast float %5332, 0x3FEE471020000000
  %5334 = fadd fast float %5333, 0xBFD42F6020000000
  %5335 = fmul fast float %5290, 0x3FD20DD760000000
  %5336 = fmul fast float %5334, %5329
  %5337 = fadd fast float %5336, %5335
  %5338 = fmul fast float %5331, %5328
  %5339 = fadd fast float %5337, %5338
  %5340 = fsub fast float %5337, %5338
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = fmul fast float %5341, 0x3FDF454380000000
  %5343 = fmul fast float %5341, %5341
  %5344 = fmul fast float %5343, 0x3FEE471020000000
  %5345 = fadd fast float %5344, 0xBFD42F6020000000
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5290, float %5328, float %5329, float 0x3FD20DD760000000, float %5342, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5348 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = fcmp fast oeq float %5348, 0.000000e+00
  %5350 = fcmp fast oeq float %5347, 0.000000e+00
  %5351 = or i1 %5350, %5349
  br i1 %5351, label %5381, label %5352

; <label>:5352                                    ; preds = %5324
  %5353 = fsub fast float -0.000000e+00, %69
  %5354 = fsub fast float -0.000000e+00, %67
  %5355 = call float @dx.op.unary.f32(i32 24, float %5348)  ; Sqrt(value)
  %5356 = fdiv fast float %5355, %5347
  %5357 = fcmp fast ogt float %5356, 0x3FFB6F8900000000
  %5358 = select i1 %5357, float 0x3FFB6F8900000000, float %5356
  %5359 = fmul fast float %5358, 0x3FE8A23460000000
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5358, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5362 = fmul fast float %5360, %5347
  %5363 = fmul fast float %5361, 0x3FF279A740000000
  %5364 = fadd fast float %5363, -1.000000e+00
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5354, float %68, float %5353, float %5354, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = call float @dx.op.unary.f32(i32 25, float %5365)  ; Rsqrt(value)
  %5367 = fmul fast float %5366, %5353
  %5368 = fmul fast float %5366, %5354
  %5369 = fmul fast float %5366, %68
  %5370 = fmul fast float %5364, %5364
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = fmul fast float %5361, 0x40005F8BE0000000
  %5373 = fsub fast float 0x400C5BF8A0000000, %5372
  %5374 = fdiv fast float %5362, %5373
  %5375 = fmul fast float %5374, 0x3FEE31C3C0000000
  %5376 = fmul fast float %5375, %5371
  %5377 = fmul fast float %5361, 0x3FDACB7480000000
  %5378 = fadd fast float %5377, 0xBFD7347680000000
  %5379 = fmul fast float %5378, %5374
  %5380 = fmul fast float %5379, %5371
  br label %5381

; <label>:5381                                    ; preds = %5352, %5324
  %5382 = phi float [ %5367, %5352 ], [ 0.000000e+00, %5324 ]
  %5383 = phi float [ %5368, %5352 ], [ 0.000000e+00, %5324 ]
  %5384 = phi float [ %5369, %5352 ], [ 0.000000e+00, %5324 ]
  %5385 = phi float [ %5376, %5352 ], [ 0.000000e+00, %5324 ]
  %5386 = phi float [ %5380, %5352 ], [ 0.000000e+00, %5324 ]
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fmul fast float %5387, 0x3FDF454380000000
  %5389 = fmul fast float %5387, %5387
  %5390 = fmul fast float %5389, 0x3FEE471020000000
  %5391 = fadd fast float %5390, 0xBFD42F6020000000
  %5392 = fmul fast float %5347, 0x3FD20DD760000000
  %5393 = fmul fast float %5391, %5386
  %5394 = fadd fast float %5393, %5392
  %5395 = fmul fast float %5388, %5385
  %5396 = fadd fast float %5394, %5395
  %5397 = fsub fast float %5394, %5395
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fmul fast float %5398, 0x3FDF454380000000
  %5400 = fmul fast float %5398, %5398
  %5401 = fmul fast float %5400, 0x3FEE471020000000
  %5402 = fadd fast float %5401, 0xBFD42F6020000000
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5385, float %5386, float 0x3FD20DD760000000, float %5399, float %5402)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5405 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fcmp fast oeq float %5405, 0.000000e+00
  %5407 = fcmp fast oeq float %5404, 0.000000e+00
  %5408 = or i1 %5407, %5406
  br i1 %5408, label %5438, label %5409

; <label>:5409                                    ; preds = %5381
  %5410 = fsub fast float -0.000000e+00, %65
  %5411 = fsub fast float -0.000000e+00, %63
  %5412 = call float @dx.op.unary.f32(i32 24, float %5405)  ; Sqrt(value)
  %5413 = fdiv fast float %5412, %5404
  %5414 = fcmp fast ogt float %5413, 0x3FFB6F8900000000
  %5415 = select i1 %5414, float 0x3FFB6F8900000000, float %5413
  %5416 = fmul fast float %5415, 0x3FE8A23460000000
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5415, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5419 = fmul fast float %5417, %5404
  %5420 = fmul fast float %5418, 0x3FF279A740000000
  %5421 = fadd fast float %5420, -1.000000e+00
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %64, float %5410, float %5411, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = call float @dx.op.unary.f32(i32 25, float %5422)  ; Rsqrt(value)
  %5424 = fmul fast float %5423, %5410
  %5425 = fmul fast float %5423, %5411
  %5426 = fmul fast float %5423, %64
  %5427 = fmul fast float %5421, %5421
  %5428 = fsub fast float 1.000000e+00, %5427
  %5429 = fmul fast float %5418, 0x40005F8BE0000000
  %5430 = fsub fast float 0x400C5BF8A0000000, %5429
  %5431 = fdiv fast float %5419, %5430
  %5432 = fmul fast float %5431, 0x3FEE31C3C0000000
  %5433 = fmul fast float %5432, %5428
  %5434 = fmul fast float %5418, 0x3FDACB7480000000
  %5435 = fadd fast float %5434, 0xBFD7347680000000
  %5436 = fmul fast float %5435, %5431
  %5437 = fmul fast float %5436, %5428
  br label %5438

; <label>:5438                                    ; preds = %5409, %5381
  %5439 = phi float [ %5424, %5409 ], [ 0.000000e+00, %5381 ]
  %5440 = phi float [ %5425, %5409 ], [ 0.000000e+00, %5381 ]
  %5441 = phi float [ %5426, %5409 ], [ 0.000000e+00, %5381 ]
  %5442 = phi float [ %5433, %5409 ], [ 0.000000e+00, %5381 ]
  %5443 = phi float [ %5437, %5409 ], [ 0.000000e+00, %5381 ]
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fmul fast float %5444, 0x3FDF454380000000
  %5446 = fmul fast float %5444, %5444
  %5447 = fmul fast float %5446, 0x3FEE471020000000
  %5448 = fadd fast float %5447, 0xBFD42F6020000000
  %5449 = fmul fast float %5404, 0x3FD20DD760000000
  %5450 = fmul fast float %5448, %5443
  %5451 = fadd fast float %5450, %5449
  %5452 = fmul fast float %5445, %5442
  %5453 = fadd fast float %5451, %5452
  %5454 = fsub fast float %5451, %5452
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fmul fast float %5455, 0x3FDF454380000000
  %5457 = fmul fast float %5455, %5455
  %5458 = fmul fast float %5457, 0x3FEE471020000000
  %5459 = fadd fast float %5458, 0xBFD42F6020000000
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5442, float %5443, float 0x3FD20DD760000000, float %5456, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = call float @dx.op.binary.f32(i32 35, float %5339, float 0.000000e+00)  ; FMax(a,b)
  %5462 = call float @dx.op.binary.f32(i32 35, float %5396, float 0.000000e+00)  ; FMax(a,b)
  %5463 = call float @dx.op.binary.f32(i32 35, float %5453, float 0.000000e+00)  ; FMax(a,b)
  %5464 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5465 = call float @dx.op.binary.f32(i32 35, float %5397, float 0.000000e+00)  ; FMax(a,b)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5454, float 0.000000e+00)  ; FMax(a,b)
  %5467 = call float @dx.op.binary.f32(i32 35, float %5346, float 0.000000e+00)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 35, float %5403, float 0.000000e+00)  ; FMax(a,b)
  %5469 = call float @dx.op.binary.f32(i32 35, float %5460, float 0.000000e+00)  ; FMax(a,b)
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 0
  %5472 = call float @dx.op.binary.f32(i32 36, float %5263, float %5471)  ; FMin(a,b)
  %5473 = fsub fast float 1.000000e+00, %5285
  %5474 = fmul fast float %5472, %5473
  %5475 = fsub fast float 1.000000e+00, %5474
  %5476 = bitcast float %5475 to i32
  %5477 = sub nsw i32 2129859010, %5476
  %5478 = bitcast i32 %5477 to float
  %5479 = call float @dx.op.binary.f32(i32 36, float %5264, float %5471)  ; FMin(a,b)
  %5480 = fmul fast float %5479, %5473
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = bitcast float %5481 to i32
  %5483 = sub nsw i32 2129859010, %5482
  %5484 = bitcast i32 %5483 to float
  %5485 = call float @dx.op.binary.f32(i32 36, float %5265, float %5471)  ; FMin(a,b)
  %5486 = fmul fast float %5485, %5473
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = bitcast float %5487 to i32
  %5489 = sub nsw i32 2129859010, %5488
  %5490 = bitcast i32 %5489 to float
  %5491 = fmul fast float %5461, %5285
  %5492 = fmul fast float %5491, %5478
  %5493 = fmul fast float %5462, %5285
  %5494 = fmul fast float %5493, %5484
  %5495 = fmul fast float %5463, %5285
  %5496 = fmul fast float %5495, %5490
  %5497 = call float @dx.op.binary.f32(i32 36, float %5269, float %5471)  ; FMin(a,b)
  %5498 = fmul fast float %5497, %5473
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = bitcast float %5499 to i32
  %5501 = sub nsw i32 2129859010, %5500
  %5502 = bitcast i32 %5501 to float
  %5503 = call float @dx.op.binary.f32(i32 36, float %5270, float %5471)  ; FMin(a,b)
  %5504 = fmul fast float %5503, %5473
  %5505 = fsub fast float 1.000000e+00, %5504
  %5506 = bitcast float %5505 to i32
  %5507 = sub nsw i32 2129859010, %5506
  %5508 = bitcast i32 %5507 to float
  %5509 = call float @dx.op.binary.f32(i32 36, float %5274, float %5471)  ; FMin(a,b)
  %5510 = fmul fast float %5509, %5473
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = bitcast float %5511 to i32
  %5513 = sub nsw i32 2129859010, %5512
  %5514 = bitcast i32 %5513 to float
  %5515 = fmul fast float %5467, %5285
  %5516 = fmul fast float %5515, %5502
  %5517 = fmul fast float %5468, %5285
  %5518 = fmul fast float %5517, %5508
  %5519 = fmul fast float %5469, %5285
  %5520 = fmul fast float %5519, %5514
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5494, float %5496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = select i1 %284, float 0.000000e+00, float %5492
  %5523 = select i1 %284, float %5521, float %5494
  %5524 = select i1 %284, float 0.000000e+00, float %5496
  %5525 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = select i1 %284, float 0.000000e+00, float %5464
  %5527 = select i1 %284, float %5525, float %5465
  %5528 = select i1 %284, float 0.000000e+00, float %5466
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5518, float %5520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = select i1 %284, float 0.000000e+00, float %5516
  %5531 = select i1 %284, float %5529, float %5518
  %5532 = select i1 %284, float 0.000000e+00, float %5520
  %5533 = fmul fast float %5276, 9.843750e-01
  %5534 = fmul fast float %5272, 9.843750e-01
  %5535 = fadd fast float %5533, 7.812500e-03
  %5536 = fadd fast float %5534, 7.812500e-03
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %5535, float %5536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 3
  %5540 = fmul fast float %5538, %5269
  %5541 = fmul fast float %5538, %5270
  %5542 = fmul fast float %5538, %5274
  %5543 = fadd fast float %5540, %5539
  %5544 = fadd fast float %5541, %5539
  %5545 = fadd fast float %5542, %5539
  %5546 = fcmp fast ogt float %4290, 0.000000e+00
  br i1 %5546, label %5547, label %5573

; <label>:5547                                    ; preds = %5438
  %5548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4290, float %5276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.ResRet.f32 %5548, 1
  %5551 = extractvalue %dx.types.ResRet.f32 %5548, 2
  %5552 = fadd fast float %5549, -5.000000e-01
  %5553 = fadd fast float %5550, -5.000000e-01
  %5554 = fadd fast float %5551, -5.000000e-01
  %5555 = fsub fast float 1.000000e+00, %5269
  %5556 = fsub fast float 1.000000e+00, %5270
  %5557 = fsub fast float 1.000000e+00, %5274
  %5558 = fmul fast float %5269, 4.000000e+00
  %5559 = fmul fast float %5558, %5555
  %5560 = fmul fast float %5559, %5552
  %5561 = fmul fast float %5270, 4.000000e+00
  %5562 = fmul fast float %5561, %5556
  %5563 = fmul fast float %5562, %5553
  %5564 = fmul fast float %5274, 4.000000e+00
  %5565 = fmul fast float %5564, %5557
  %5566 = fmul fast float %5565, %5554
  %5567 = fadd fast float %5560, %5543
  %5568 = fadd fast float %5563, %5544
  %5569 = fadd fast float %5566, %5545
  %5570 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5572 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  br label %5573

; <label>:5573                                    ; preds = %5547, %5438
  %5574 = phi float [ %5570, %5547 ], [ %5543, %5438 ]
  %5575 = phi float [ %5571, %5547 ], [ %5544, %5438 ]
  %5576 = phi float [ %5572, %5547 ], [ %5545, %5438 ]
  %5577 = call float @dx.op.binary.f32(i32 35, float %5575, float %5576)  ; FMax(a,b)
  %5578 = call float @dx.op.binary.f32(i32 35, float %5574, float %5577)  ; FMax(a,b)
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = fcmp fast ogt float %5580, 0x3E7FF19E20000000
  %5582 = fdiv fast float 1.000000e+00, %5580
  %5583 = select i1 %5581, float %5582, float 0.000000e+00
  %5584 = fmul fast float %5583, %5263
  %5585 = fmul fast float %5583, %5264
  %5586 = fmul fast float %5583, %5265
  %5587 = fadd fast float %5584, -1.000000e+00
  %5588 = fadd fast float %5585, -1.000000e+00
  %5589 = fadd fast float %5586, -1.000000e+00
  %5590 = fmul fast float %5587, 5.000000e-01
  %5591 = fmul fast float %5588, 5.000000e-01
  %5592 = fmul fast float %5589, 5.000000e-01
  %5593 = fadd fast float %5590, 1.000000e+00
  %5594 = fadd fast float %5591, 1.000000e+00
  %5595 = fadd fast float %5592, 1.000000e+00
  %5596 = fmul fast float %5579, %4402
  %5597 = fmul fast float %5579, %4403
  %5598 = fmul fast float %5579, %4404
  %5599 = fadd fast float %5596, -1.000000e+00
  %5600 = fadd fast float %5597, -1.000000e+00
  %5601 = fadd fast float %5598, -1.000000e+00
  %5602 = fmul fast float %5599, %4316
  %5603 = fmul fast float %5600, %4316
  %5604 = fmul fast float %5601, %4316
  %5605 = fmul fast float %5574, %5530
  %5606 = fmul fast float %5575, %5531
  %5607 = fmul fast float %5576, %5532
  %5608 = fsub fast float 1.000000e+00, %5276
  %5609 = bitcast float %5608 to i32
  %5610 = sitofp i32 %5609 to float
  %5611 = fmul fast float %5610, 5.000000e+00
  %5612 = fadd fast float %5611, 0xC1EFBF8940000000
  %5613 = fptosi float %5612 to i32
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %4291
  %5616 = fmul fast float %5522, %5615
  %5617 = fmul fast float %5616, %5579
  %5618 = fmul fast float %5617, %5593
  %5619 = fmul fast float %5523, %5615
  %5620 = fmul fast float %5619, %5579
  %5621 = fmul fast float %5620, %5594
  %5622 = fmul fast float %5524, %5615
  %5623 = fmul fast float %5622, %5579
  %5624 = fmul fast float %5623, %5595
  %5625 = fadd fast float %5605, %4280
  %5626 = fadd fast float %5625, %5618
  %5627 = fmul fast float %5626, %4316
  %5628 = fadd fast float %5606, %4281
  %5629 = fadd fast float %5628, %5621
  %5630 = fmul fast float %5629, %4316
  %5631 = fadd fast float %5607, %4282
  %5632 = fadd fast float %5631, %5624
  %5633 = fmul fast float %5632, %4316
  %5634 = fadd fast float %5604, 1.000000e+00
  %5635 = fadd fast float %5603, 1.000000e+00
  %5636 = fadd fast float %5602, 1.000000e+00
  %5637 = fmul fast float %5579, %5524
  %5638 = fmul fast float %5579, %5523
  %5639 = fmul fast float %5579, %5522
  %5640 = fmul fast float %5636, %5526
  %5641 = fmul fast float %5635, %5527
  %5642 = fmul fast float %5634, %5528
  %5643 = fadd fast float %5640, %5639
  %5644 = fmul fast float %5643, %4316
  %5645 = fadd fast float %5641, %5638
  %5646 = fmul fast float %5645, %4316
  %5647 = fadd fast float %5642, %5637
  %5648 = fmul fast float %5647, %4316
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5651 = fcmp fast oeq float %5650, 0.000000e+00
  br i1 %5651, label %6715, label %5652

; <label>:5652                                    ; preds = %5573
  %5653 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.CBufRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = select i1 %284, float %5661, float %5657
  %5665 = select i1 %284, float %5663, float %5658
  %5666 = select i1 %284, float %5662, float %5659
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5669 = fmul fast float %5668, %106
  %5670 = fmul fast float %5668, %107
  %5671 = fmul fast float %5668, %108
  %5672 = fadd fast float %5669, %178
  %5673 = fadd fast float %5670, %179
  %5674 = fadd fast float %5671, %180
  %5675 = fcmp fast olt float %5650, 0.000000e+00
  br i1 %5675, label %6315, label %5676

; <label>:5676                                    ; preds = %5652
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5681 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5686 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5691 = extractvalue %dx.types.CBufRet.f32 %5687, 3
  %5692 = fmul fast float %5678, %5672
  %5693 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5679, float %5692)  ; FMad(a,b,c)
  %5694 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5680, float %5693)  ; FMad(a,b,c)
  %5695 = fadd fast float %5694, %5681
  %5696 = fmul fast float %5683, %5672
  %5697 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5684, float %5696)  ; FMad(a,b,c)
  %5698 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5685, float %5697)  ; FMad(a,b,c)
  %5699 = fadd fast float %5698, %5686
  %5700 = fmul fast float %5688, %5672
  %5701 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5689, float %5700)  ; FMad(a,b,c)
  %5702 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5690, float %5701)  ; FMad(a,b,c)
  %5703 = fadd fast float %5702, %5691
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = fcmp fast une float %5705, 0.000000e+00
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 3
  %5711 = fmul fast float %5710, %5695
  %5712 = fmul fast float %5710, %5699
  %5713 = fadd fast float %5711, %5708
  %5714 = fadd fast float %5712, %5709
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5719 = fmul fast float %5718, %5695
  %5720 = fmul fast float %5718, %5699
  %5721 = fadd fast float %5719, %5716
  %5722 = fadd fast float %5720, %5717
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5725 = fsub fast float %5724, %5703
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = fmul fast float %5725, %5726
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  br i1 %5706, label %5790, label %5730

; <label>:5730                                    ; preds = %5676
  %5731 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5734 = fadd fast float %5733, %5731
  %5735 = fcmp fast ogt float %5734, 0.000000e+00
  br i1 %5735, label %5736, label %5760

; <label>:5736                                    ; preds = %5730
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.CBufRet.f32 %5737, 1
  %5740 = fsub fast float %5721, %5738
  %5741 = fsub fast float %5722, %5739
  %5742 = fcmp fast olt float %5740, 0.000000e+00
  %5743 = fcmp fast olt float %5741, 0.000000e+00
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5748 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5749 = select i1 %5742, float %5745, float %5747
  %5750 = select i1 %5743, float %5746, float %5748
  %5751 = fmul fast float %5749, %5740
  %5752 = fmul fast float %5750, %5741
  %5753 = call float @dx.op.unary.f32(i32 6, float %5751)  ; FAbs(value)
  %5754 = call float @dx.op.unary.f32(i32 6, float %5752)  ; FAbs(value)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5756 = call float @dx.op.binary.f32(i32 35, float %5753, float %5754)  ; FMax(a,b)
  %5757 = fsub fast float %5755, %5756
  %5758 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5759 = fmul fast float %5758, %5729
  br label %5760

; <label>:5760                                    ; preds = %5736, %5730
  %5761 = phi float [ %5759, %5736 ], [ 0.000000e+00, %5730 ]
  %5762 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5763 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5764 = fadd fast float %5763, %5762
  %5765 = fcmp fast ogt float %5764, 0.000000e+00
  br i1 %5765, label %5766, label %5790

; <label>:5766                                    ; preds = %5760
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = fsub fast float %5713, %5768
  %5771 = fsub fast float %5714, %5769
  %5772 = fcmp fast olt float %5770, 0.000000e+00
  %5773 = fcmp fast olt float %5771, 0.000000e+00
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = select i1 %5772, float %5775, float %5777
  %5780 = select i1 %5773, float %5776, float %5778
  %5781 = fmul fast float %5779, %5770
  %5782 = fmul fast float %5780, %5771
  %5783 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5784 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5786 = call float @dx.op.binary.f32(i32 35, float %5783, float %5784)  ; FMax(a,b)
  %5787 = fsub fast float %5785, %5786
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fmul fast float %5788, %5729
  br label %5790

; <label>:5790                                    ; preds = %5766, %5760, %5676
  %5791 = phi float [ 0.000000e+00, %5676 ], [ %5789, %5766 ], [ 0.000000e+00, %5760 ]
  %5792 = phi float [ 0.000000e+00, %5676 ], [ %5761, %5766 ], [ %5761, %5760 ]
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 1
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = fsub fast float %5695, %5797
  %5800 = fsub fast float %5699, %5798
  %5801 = fcmp fast olt float %5799, 0.000000e+00
  %5802 = fcmp fast olt float %5800, 0.000000e+00
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5807 = extractvalue %dx.types.CBufRet.f32 %5803, 3
  %5808 = select i1 %5801, float %5804, float %5806
  %5809 = select i1 %5802, float %5805, float %5807
  %5810 = fmul fast float %5808, %5799
  %5811 = fmul fast float %5809, %5800
  %5812 = call float @dx.op.unary.f32(i32 6, float %5810)  ; FAbs(value)
  %5813 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5815 = call float @dx.op.binary.f32(i32 35, float %5812, float %5813)  ; FMax(a,b)
  %5816 = fsub fast float %5814, %5815
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5795)  ; FMin(a,b)
  %5819 = fmul fast float %5818, %5729
  %5820 = fsub fast float %5791, %5819
  %5821 = fsub fast float %5792, %5791
  %5822 = fsub fast float %5821, %5819
  %5823 = call float @dx.op.binary.f32(i32 35, float %5791, float %5792)  ; FMax(a,b)
  %5824 = call float @dx.op.binary.f32(i32 35, float %5819, float %5823)  ; FMax(a,b)
  %5825 = fcmp fast olt float %5824, 1.000000e+00
  br i1 %5825, label %5826, label %6224, !dx.controlflow.hints !86

; <label>:5826                                    ; preds = %5790
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = fcmp fast une float %5828, 0.000000e+00
  br i1 %5829, label %5830, label %6224, !dx.controlflow.hints !87

; <label>:5830                                    ; preds = %5826
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = extractvalue %dx.types.CBufRet.f32 %5836, 3
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5845 = extractvalue %dx.types.CBufRet.f32 %5841, 3
  %5846 = fmul fast float %5832, %5672
  %5847 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5833, float %5846)  ; FMad(a,b,c)
  %5848 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5834, float %5847)  ; FMad(a,b,c)
  %5849 = fadd fast float %5848, %5835
  %5850 = fmul fast float %5837, %5672
  %5851 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5838, float %5850)  ; FMad(a,b,c)
  %5852 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5839, float %5851)  ; FMad(a,b,c)
  %5853 = fadd fast float %5852, %5840
  %5854 = fmul fast float %5842, %5672
  %5855 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5843, float %5854)  ; FMad(a,b,c)
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5844, float %5855)  ; FMad(a,b,c)
  %5857 = fadd fast float %5856, %5845
  %5858 = fcmp fast oge float %5849, 1.000000e+00
  %5859 = fcmp fast oge float %5853, 1.000000e+00
  %5860 = or i1 %5858, %5859
  %5861 = fcmp fast olt float %5849, 0.000000e+00
  %5862 = fcmp fast olt float %5853, 0.000000e+00
  %5863 = or i1 %5861, %5862
  %5864 = or i1 %5860, %5863
  br i1 %5864, label %6224, label %5865, !dx.controlflow.hints !88

; <label>:5865                                    ; preds = %5830
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.i32 %5870, 2
  %5872 = uitofp i32 %5871 to float
  %5873 = extractvalue %dx.types.CBufRet.i32 %5870, 3
  %5874 = uitofp i32 %5873 to float
  %5875 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5876 = fmul fast float %5875, 2.000000e+00
  %5877 = fsub fast float %5849, %5867
  %5878 = fsub fast float %5853, %5868
  %5879 = fmul fast float %5876, %5877
  %5880 = fmul fast float %5876, %5878
  %5881 = fdiv fast float 1.000000e+00, %5655
  %5882 = fmul fast float %5880, %5881
  %5883 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5884 = fmul fast float %5869, %5674
  %5885 = fmul fast float %5884, %5876
  %5886 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5879)  ; FAbs(value)
  %5888 = call float @dx.op.binary.f32(i32 35, float %5886, float %5883)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5887, float %5888)  ; FMax(a,b)
  %5890 = fmul fast float %5889, 2.000000e+00
  %5891 = call float @dx.op.unary.f32(i32 23, float %5890)  ; Log(value)
  %5892 = call float @dx.op.binary.f32(i32 35, float %5891, float %5872)  ; FMax(a,b)
  %5893 = call float @dx.op.unary.f32(i32 22, float %5892)  ; Frc(value)
  %5894 = fadd fast float %5893, 0xBFEA666660000000
  %5895 = fmul fast float %5894, 8.000000e+00
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = call float @dx.op.unary.f32(i32 27, float %5892)  ; Round_ni(value)
  %5898 = fadd fast float %5897, %5896
  %5899 = call float @dx.op.binary.f32(i32 36, float %5898, float %5874)  ; FMin(a,b)
  %5900 = call float @dx.op.unary.f32(i32 27, float %5899)  ; Round_ni(value)
  %5901 = fsub fast float -0.000000e+00, %5900
  %5902 = call float @dx.op.unary.f32(i32 21, float %5901)  ; Exp(value)
  %5903 = fmul fast float %5902, %5876
  %5904 = fmul fast float %5903, %5849
  %5905 = fmul fast float %5903, %5853
  %5906 = fmul fast float %5904, 2.500000e-01
  %5907 = fmul fast float %5905, 2.500000e-01
  %5908 = fadd fast float %5906, 5.000000e-01
  %5909 = fadd fast float %5907, 5.000000e-01
  %5910 = fsub fast float %5874, %5872
  %5911 = fptoui float %5910 to i32
  %5912 = add i32 %5911, 320
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %5912)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = fcmp fast une float %5899, %5874
  %5917 = fsub fast float %5849, %5914
  %5918 = fsub fast float %5853, %5915
  %5919 = call float @dx.op.unary.f32(i32 6, float %5917)  ; FAbs(value)
  %5920 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5921 = fmul fast float %5919, %5903
  %5922 = fmul fast float %5920, %5903
  %5923 = fcmp fast olt float %5921, 1.000000e+00
  %5924 = fcmp fast olt float %5922, 1.000000e+00
  %5925 = and i1 %5923, %5924
  %5926 = or i1 %5916, %5925
  br i1 %5926, label %5927, label %6224, !dx.controlflow.hints !89

; <label>:5927                                    ; preds = %5865
  %5928 = fmul fast float %5905, 5.000000e-01
  %5929 = fmul fast float %5904, 5.000000e-01
  %5930 = fadd fast float %5928, 5.000000e-01
  %5931 = fadd fast float %5929, 5.000000e-01
  %5932 = sitofp i32 %5871 to float
  %5933 = fsub fast float %5899, %5932
  %5934 = call float @dx.op.unary.f32(i32 27, float %5933)  ; Round_ni(value)
  %5935 = call float @dx.op.unary.f32(i32 22, float %5899)  ; Frc(value)
  %5936 = call float @dx.op.unary.f32(i32 22, float %5931)  ; Frc(value)
  %5937 = call float @dx.op.unary.f32(i32 22, float %5930)  ; Frc(value)
  %5938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5936, float %5937, float %5934, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.ResRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.ResRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.ResRet.f32 %5938, 3
  %5943 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %5943, label %5944, label %5965, !dx.controlflow.hints !90

; <label>:5944                                    ; preds = %5927
  %5945 = fadd fast float %5934, 1.000000e+00
  %5946 = call float @dx.op.unary.f32(i32 22, float %5908)  ; Frc(value)
  %5947 = call float @dx.op.unary.f32(i32 22, float %5909)  ; Frc(value)
  %5948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %5946, float %5947, float %5945, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.ResRet.f32 %5948, 3
  %5953 = fsub fast float %5949, %5939
  %5954 = fsub fast float %5950, %5940
  %5955 = fsub fast float %5951, %5941
  %5956 = fsub fast float %5952, %5942
  %5957 = fmul fast float %5953, %5935
  %5958 = fmul fast float %5954, %5935
  %5959 = fmul fast float %5955, %5935
  %5960 = fmul fast float %5956, %5935
  %5961 = fadd fast float %5957, %5939
  %5962 = fadd fast float %5958, %5940
  %5963 = fadd fast float %5959, %5941
  %5964 = fadd fast float %5960, %5942
  br label %5965

; <label>:5965                                    ; preds = %5944, %5927
  %5966 = phi float [ %5961, %5944 ], [ %5939, %5927 ]
  %5967 = phi float [ %5962, %5944 ], [ %5940, %5927 ]
  %5968 = phi float [ %5963, %5944 ], [ %5941, %5927 ]
  %5969 = phi float [ %5964, %5944 ], [ %5942, %5927 ]
  %5970 = fadd fast float %5966, -5.000000e-01
  %5971 = fadd fast float %5968, -5.000000e-01
  %5972 = fmul fast float %5970, 0xBFD5555560000000
  %5973 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5971, float %5972)  ; FMad(a,b,c)
  %5974 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5967, float 0.000000e+00)  ; FMad(a,b,c)
  %5975 = fadd fast float %5974, %5969
  %5976 = fmul fast float %5970, -7.500000e-01
  %5977 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5971, float %5976)  ; FMad(a,b,c)
  %5978 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5967, float 0.000000e+00)  ; FMad(a,b,c)
  %5979 = fadd fast float %5978, %5969
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.CBufRet.f32 %5982, 2
  %5986 = extractvalue %dx.types.CBufRet.f32 %5982, 3
  %5987 = fsub fast float %5983, %5973
  %5988 = fsub fast float %5984, %5975
  %5989 = fsub fast float %5985, %5977
  %5990 = fsub fast float %5986, %5979
  %5991 = fmul fast float %5987, %5981
  %5992 = fmul fast float %5988, %5981
  %5993 = fmul fast float %5989, %5981
  %5994 = fmul fast float %5990, %5981
  %5995 = fadd fast float %5991, %5973
  %5996 = fadd fast float %5992, %5975
  %5997 = fadd fast float %5993, %5977
  %5998 = fadd fast float %5994, %5979
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = and i32 %6000, 536870911
  %6002 = uitofp i32 %6001 to float
  %6003 = fmul fast float %6002, %5849
  %6004 = fmul fast float %6002, %5853
  %6005 = fptoui float %6003 to i32
  %6006 = fptoui float %6004 to i32
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = and i32 %6008, 31
  %6010 = lshr i32 %6005, %6009
  %6011 = lshr i32 %6006, %6009
  %6012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.i32 %6012, 0
  %6014 = and i32 %6013, 31
  %6015 = shl i32 1, %6014
  %6016 = call i32 @dx.op.binary.i32(i32 40, i32 %6015, i32 4)  ; UMin(a,b)
  %6017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.i32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.i32 %6017, 1
  %6020 = icmp eq i32 %6016, 0
  br i1 %6020, label %6062, label %6021

; <label>:6021                                    ; preds = %5965
  br label %6022

; <label>:6022                                    ; preds = %6050, %6021
  %6023 = phi i32 [ %6053, %6050 ], [ 0, %6021 ]
  %6024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.i32 %6024, 0
  %6026 = lshr i32 %6025, 16
  %6027 = and i32 %6026, 31
  %6028 = shl i32 %6011, %6027
  %6029 = add i32 %6028, %6010
  %6030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6031 = extractvalue %dx.types.ResRet.i32 %6030, 0
  %6032 = and i32 %6031, 31
  %6033 = shl i32 %6029, %6032
  %6034 = add i32 %6033, %6023
  %6035 = shl i32 %6034, 2
  %6036 = add i32 %6035, 32
  %6037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6036, i32 undef)  ; BufferLoad(srv,index,wot)
  %6038 = extractvalue %dx.types.ResRet.i32 %6037, 0
  %6039 = icmp slt i32 %6038, 0
  %6040 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6023
  %6041 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6023
  %6042 = bitcast float* %6040 to i32*
  %6043 = bitcast float* %6041 to i32*
  br i1 %6039, label %6044, label %6050

; <label>:6044                                    ; preds = %6022
  %6045 = and i32 %6038, 1073741823
  %6046 = add nuw nsw i32 %6045, 20
  %6047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6046, i32 undef)  ; BufferLoad(srv,index,wot)
  %6048 = extractvalue %dx.types.ResRet.i32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.i32 %6047, 1
  br label %6050

; <label>:6050                                    ; preds = %6044, %6022
  %6051 = phi i32 [ %6048, %6044 ], [ %6018, %6022 ]
  %6052 = phi i32 [ %6049, %6044 ], [ %6019, %6022 ]
  store i32 %6051, i32* %6042, align 4
  store i32 %6052, i32* %6043, align 4
  %6053 = add nuw i32 %6023, 1
  %6054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.i32 %6054, 2
  %6056 = icmp eq i32 %6055, 0
  %6057 = icmp ugt i32 %6038, -1073741825
  %6058 = and i1 %6057, %6056
  %6059 = icmp ult i32 %6053, %6016
  %6060 = and i1 %6058, %6059
  br i1 %6060, label %6022, label %6061

; <label>:6061                                    ; preds = %6050
  br label %6062

; <label>:6062                                    ; preds = %6061, %5965
  %6063 = phi i32 [ 0, %5965 ], [ %6053, %6061 ]
  %6064 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %6065 = fptoui float %6064 to i32
  %6066 = icmp eq i32 %6065, 0
  br i1 %6066, label %6118, label %6067

; <label>:6067                                    ; preds = %6062
  br label %6068

; <label>:6068                                    ; preds = %6113, %6067
  %6069 = phi i32 [ %6114, %6113 ], [ %6063, %6067 ]
  %6070 = phi i32 [ %6115, %6113 ], [ 0, %6067 ]
  %6071 = lshr i32 %6070, 2
  %6072 = and i32 %6070, 3
  %6073 = add nuw nsw i32 %6071, 83
  %6074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %6073)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.i32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.i32 %6074, 1
  %6077 = extractvalue %dx.types.CBufRet.i32 %6074, 2
  %6078 = extractvalue %dx.types.CBufRet.i32 %6074, 3
  %6079 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %6075, i32* %6079, align 4
  %6080 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %6076, i32* %6080, align 4
  %6081 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %6077, i32* %6081, align 4
  %6082 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %6078, i32* %6082, align 4
  %6083 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %6072
  %6084 = load i32, i32* %6083, align 4, !tbaa !91, !noalias !95
  %6085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.i32 %6085, 0
  %6087 = lshr i32 %6086, 16
  %6088 = and i32 %6087, 31
  %6089 = shl i32 %6011, %6088
  %6090 = add i32 %6089, %6010
  %6091 = shl i32 %6090, 2
  %6092 = add i32 %6091, %6084
  %6093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = icmp eq i32 %6094, 0
  br i1 %6095, label %6113, label %6096

; <label>:6096                                    ; preds = %6068
  %6097 = icmp slt i32 %6094, 0
  %6098 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6069
  %6099 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6069
  %6100 = bitcast float* %6098 to i32*
  %6101 = bitcast float* %6099 to i32*
  br i1 %6097, label %6102, label %6109

; <label>:6102                                    ; preds = %6096
  %6103 = and i32 %6094, 1073741823
  %6104 = add i32 %6084, 20
  %6105 = add i32 %6104, %6103
  %6106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6105, i32 undef)  ; BufferLoad(srv,index,wot)
  %6107 = extractvalue %dx.types.ResRet.i32 %6106, 0
  %6108 = extractvalue %dx.types.ResRet.i32 %6106, 1
  br label %6109

; <label>:6109                                    ; preds = %6102, %6096
  %6110 = phi i32 [ %6107, %6102 ], [ %6018, %6096 ]
  %6111 = phi i32 [ %6108, %6102 ], [ %6019, %6096 ]
  store i32 %6110, i32* %6100, align 4
  store i32 %6111, i32* %6101, align 4
  %6112 = add i32 %6069, 1
  br label %6113

; <label>:6113                                    ; preds = %6109, %6068
  %6114 = phi i32 [ %6069, %6068 ], [ %6112, %6109 ]
  %6115 = add nuw i32 %6070, 1
  %6116 = icmp eq i32 %6115, %6065
  br i1 %6116, label %6117, label %6068

; <label>:6117                                    ; preds = %6113
  br label %6118

; <label>:6118                                    ; preds = %6117, %6062
  %6119 = phi i32 [ %6063, %6062 ], [ %6114, %6117 ]
  %6120 = icmp eq i32 %6119, 1
  %6121 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6122 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6120, label %6123, label %6126

; <label>:6123                                    ; preds = %6118
  %6124 = load float, float* %6121, align 4
  %6125 = load float, float* %6122, align 4
  br label %6153

; <label>:6126                                    ; preds = %6118
  %6127 = load float, float* %6121, align 4
  %6128 = load float, float* %6122, align 4
  %6129 = fdiv fast float 1.000000e+00, %6128
  %6130 = fsub fast float %6127, %6129
  %6131 = icmp ugt i32 %6119, 1
  br i1 %6131, label %6132, label %6148

; <label>:6132                                    ; preds = %6126
  br label %6133

; <label>:6133                                    ; preds = %6133, %6132
  %6134 = phi float [ %6143, %6133 ], [ %6130, %6132 ]
  %6135 = phi float [ %6144, %6133 ], [ %6127, %6132 ]
  %6136 = phi i32 [ %6145, %6133 ], [ 1, %6132 ]
  %6137 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6136
  %6138 = load float, float* %6137, align 4
  %6139 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6136
  %6140 = load float, float* %6139, align 4
  %6141 = fdiv fast float 1.000000e+00, %6140
  %6142 = fsub fast float %6138, %6141
  %6143 = call float @dx.op.binary.f32(i32 36, float %6134, float %6142)  ; FMin(a,b)
  %6144 = call float @dx.op.binary.f32(i32 35, float %6135, float %6138)  ; FMax(a,b)
  %6145 = add nuw i32 %6136, 1
  %6146 = icmp eq i32 %6145, %6119
  br i1 %6146, label %6147, label %6133

; <label>:6147                                    ; preds = %6133
  br label %6148

; <label>:6148                                    ; preds = %6147, %6126
  %6149 = phi float [ %6130, %6126 ], [ %6143, %6147 ]
  %6150 = phi float [ %6127, %6126 ], [ %6144, %6147 ]
  %6151 = fsub fast float %6150, %6149
  %6152 = fdiv fast float 1.000000e+00, %6151
  br label %6153

; <label>:6153                                    ; preds = %6148, %6123
  %6154 = phi float [ %6124, %6123 ], [ %6150, %6148 ]
  %6155 = phi float [ %6125, %6123 ], [ %6152, %6148 ]
  %6156 = fadd fast float %5857, %6154
  %6157 = fmul fast float %6156, %6155
  %6158 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6159 = fmul fast float %6158, 2.000000e+00
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = fmul fast float %5995, %5995
  %6162 = fsub fast float %5996, %6161
  %6163 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6162)  ; FMax(a,b)
  %6164 = fdiv fast float 1.000000e+00, %6163
  %6165 = fmul fast float %5996, %5995
  %6166 = fsub fast float %5997, %6165
  %6167 = fsub fast float %6160, %5995
  %6168 = fmul fast float %6160, %6160
  %6169 = fsub fast float %6168, %5996
  %6170 = fmul fast float %6164, %6166
  %6171 = fmul fast float %6170, %6167
  %6172 = fsub fast float %6169, %6171
  %6173 = fmul fast float %5996, %5996
  %6174 = fsub fast float %5998, %6173
  %6175 = fmul fast float %6166, %6166
  %6176 = fmul fast float %6175, %6164
  %6177 = fsub fast float %6174, %6176
  %6178 = fdiv fast float %6172, %6177
  %6179 = fmul fast float %6178, %6166
  %6180 = fsub fast float %6167, %6179
  %6181 = fmul fast float %6180, %6164
  %6182 = fmul fast float %6181, %5995
  %6183 = fsub fast float 1.000000e+00, %6182
  %6184 = fmul fast float %6178, %5996
  %6185 = fsub fast float %6183, %6184
  %6186 = fmul fast float %6181, %6181
  %6187 = fmul fast float %6178, 4.000000e+00
  %6188 = fmul fast float %6187, %6185
  %6189 = fsub fast float %6186, %6188
  %6190 = call float @dx.op.unary.f32(i32 24, float %6189)  ; Sqrt(value)
  %6191 = fcmp fast oge float %6181, 0.000000e+00
  %6192 = fsub fast float -0.000000e+00, %6190
  %6193 = select i1 %6191, float %6192, float %6190
  %6194 = fsub fast float %6193, %6181
  %6195 = fdiv fast float %6194, %6178
  %6196 = fdiv fast float %6185, %6194
  %6197 = fmul fast float %6195, 5.000000e-01
  %6198 = fmul fast float %6196, 2.000000e+00
  %6199 = select i1 %6191, float %6197, float %6198
  %6200 = select i1 %6191, float %6198, float %6197
  %6201 = call float @dx.op.binary.f32(i32 35, float %6199, float %6200)  ; FMax(a,b)
  %6202 = call float @dx.op.binary.f32(i32 36, float %6199, float %6200)  ; FMin(a,b)
  %6203 = fcmp fast ogt float %6160, %6201
  %6204 = fsub fast float %6160, %6202
  %6205 = fsub fast float %6160, %6201
  %6206 = fsub fast float %6201, %6202
  %6207 = select i1 %6203, float %6205, float %6206
  %6208 = fmul float %6204, %6207
  %6209 = select i1 %6203, float %6202, float %6160
  %6210 = fcmp fast ogt float %6160, %6202
  %6211 = fmul fast float %6209, %6201
  %6212 = fadd fast float %6209, %6201
  %6213 = fmul fast float %6212, %5995
  %6214 = fadd fast float %6211, %5996
  %6215 = fsub fast float %6214, %6213
  %6216 = fdiv fast float %6215, %6208
  %6217 = select i1 %6210, float %6216, float 0.000000e+00
  %6218 = fsub fast float 1.000000e+00, %6217
  %6219 = select i1 %6203, float %6218, float %6217
  %6220 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6221 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %6222 = fmul fast float %6221, %6220
  %6223 = fsub fast float 1.000000e+00, %6222
  br label %6224

; <label>:6224                                    ; preds = %6153, %5865, %5830, %5826, %5790
  %6225 = phi float [ 1.000000e+00, %5790 ], [ %6223, %6153 ], [ 1.000000e+00, %5830 ], [ 1.000000e+00, %5865 ], [ 1.000000e+00, %5826 ]
  %6226 = fcmp fast ogt float %5822, 0.000000e+00
  br i1 %6226, label %6227, label %6235, !dx.controlflow.hints !104

; <label>:6227                                    ; preds = %6224
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6230 = fadd fast float %6229, %5703
  %6231 = call float @dx.op.binary.f32(i32 35, float %6230, float 0.000000e+00)  ; FMax(a,b)
  %6232 = fadd fast float %6231, 0x3F10000000000000
  %6233 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %39, float %5721, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float %6232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  br label %6235

; <label>:6235                                    ; preds = %6227, %6224
  %6236 = phi float [ %6234, %6227 ], [ 1.000000e+00, %6224 ]
  %6237 = fcmp fast ogt float %5820, 0.000000e+00
  br i1 %6237, label %6238, label %6246, !dx.controlflow.hints !105

; <label>:6238                                    ; preds = %6235
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6241 = fadd fast float %6240, %5703
  %6242 = call float @dx.op.binary.f32(i32 35, float %6241, float 0.000000e+00)  ; FMax(a,b)
  %6243 = fadd fast float %6242, 0x3F10000000000000
  %6244 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %39, float %5713, float %5714, float undef, float undef, i32 0, i32 0, i32 undef, float %6243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  br label %6246

; <label>:6246                                    ; preds = %6238, %6235
  %6247 = phi float [ %6245, %6238 ], [ 1.000000e+00, %6235 ]
  %6248 = fcmp fast ogt float %5819, 0.000000e+00
  br i1 %6248, label %6249, label %6261, !dx.controlflow.hints !106

; <label>:6249                                    ; preds = %6246
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 0
  %6252 = fadd fast float %6251, %5703
  %6253 = call float @dx.op.binary.f32(i32 35, float %6252, float 0.000000e+00)  ; FMax(a,b)
  %6254 = fadd fast float %6253, 0x3F10000000000000
  br i1 %5706, label %6255, label %6258, !dx.controlflow.hints !107

; <label>:6255                                    ; preds = %6249
  %6256 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %39, float %5695, float %5699, float undef, float undef, i32 0, i32 0, i32 undef, float %6254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  br label %6261

; <label>:6258                                    ; preds = %6249
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %39, float %5695, float %5699, float undef, float undef, i32 0, i32 0, i32 undef, float %6254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  br label %6261

; <label>:6261                                    ; preds = %6258, %6255, %6246
  %6262 = phi float [ %6257, %6255 ], [ %6260, %6258 ], [ 1.000000e+00, %6246 ]
  %6263 = fsub fast float %6236, %6225
  %6264 = fmul fast float %6263, %5792
  %6265 = fadd fast float %6264, %6225
  %6266 = fsub fast float %6247, %6265
  %6267 = fmul fast float %6266, %5791
  %6268 = fadd fast float %6267, %6265
  %6269 = fsub fast float %6262, %6268
  %6270 = fmul fast float %6269, %5819
  %6271 = fadd fast float %6270, %6268
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  br i1 %6274, label %6275, label %6315, !dx.controlflow.hints !108

; <label>:6275                                    ; preds = %6261
  %6276 = fcmp fast ugt float %6273, 0.000000e+00
  br i1 %6276, label %6277, label %6312

; <label>:6277                                    ; preds = %6275
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.CBufRet.f32 %6278, 2
  %6282 = extractvalue %dx.types.CBufRet.f32 %6278, 3
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.CBufRet.f32 %6283, 2
  %6287 = extractvalue %dx.types.CBufRet.f32 %6283, 3
  %6288 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = fadd fast float %6291, %5672
  %6295 = fadd fast float %6292, %5673
  %6296 = fadd fast float %6293, %5674
  %6297 = fmul fast float %6294, %6279
  %6298 = call float @dx.op.tertiary.f32(i32 46, float %6280, float %6295, float %6297)  ; FMad(a,b,c)
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %6281, float %6296, float %6298)  ; FMad(a,b,c)
  %6300 = fadd fast float %6299, %6282
  %6301 = fmul fast float %6294, %6284
  %6302 = call float @dx.op.tertiary.f32(i32 46, float %6285, float %6295, float %6301)  ; FMad(a,b,c)
  %6303 = call float @dx.op.tertiary.f32(i32 46, float %6286, float %6296, float %6302)  ; FMad(a,b,c)
  %6304 = fadd fast float %6303, %6287
  %6305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %34, float %6300, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = fmul fast float %6306, %6289
  %6308 = fadd fast float %6307, %6288
  %6309 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6310 = fmul fast float %6309, %6273
  %6311 = fsub fast float 1.000000e+00, %6310
  br label %6312

; <label>:6312                                    ; preds = %6277, %6275
  %6313 = phi float [ %6311, %6277 ], [ 1.000000e+00, %6275 ]
  %6314 = fmul fast float %6313, %6271
  br label %6315

; <label>:6315                                    ; preds = %6312, %6261, %5652
  %6316 = phi float [ 1.000000e+00, %5652 ], [ %6314, %6312 ], [ %6271, %6261 ]
  %6317 = call float @dx.op.binary.f32(i32 36, float %6316, float %6316)  ; FMin(a,b)
  %6318 = call float @dx.op.binary.f32(i32 36, float %6316, float %6317)  ; FMin(a,b)
  %6319 = fcmp fast ogt float %6318, 0.000000e+00
  br i1 %6319, label %6320, label %6481, !dx.controlflow.hints !109

; <label>:6320                                    ; preds = %6315
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6325 = extractvalue %dx.types.CBufRet.f32 %6321, 3
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6336 = fmul fast float %6322, %5672
  %6337 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %6323, float %6336)  ; FMad(a,b,c)
  %6338 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %6324, float %6337)  ; FMad(a,b,c)
  %6339 = fadd fast float %6338, %6325
  %6340 = fmul fast float %6327, %5672
  %6341 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %6328, float %6340)  ; FMad(a,b,c)
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %6329, float %6341)  ; FMad(a,b,c)
  %6343 = fadd fast float %6342, %6330
  %6344 = fmul fast float %6332, %5672
  %6345 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %6333, float %6344)  ; FMad(a,b,c)
  %6346 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %6334, float %6345)  ; FMad(a,b,c)
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 3
  %6351 = fmul fast float %6350, %6339
  %6352 = fmul fast float %6350, %6343
  %6353 = fadd fast float %6351, %6348
  %6354 = fadd fast float %6352, %6349
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = fsub fast float %6353, %6356
  %6359 = fsub fast float %6354, %6357
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = fcmp fast olt float %6359, 0.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = select i1 %6360, float %6363, float %6365
  %6368 = select i1 %6361, float %6364, float %6366
  %6369 = fmul fast float %6367, %6358
  %6370 = fmul fast float %6368, %6359
  %6371 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6372 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6373 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %6374 = call float @dx.op.binary.f32(i32 35, float %6371, float %6372)  ; FMax(a,b)
  %6375 = fsub fast float %6373, %6374
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fcmp fast ogt float %6376, 0.000000e+00
  br i1 %6377, label %6378, label %6419, !dx.controlflow.hints !110

; <label>:6378                                    ; preds = %6320
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %6353, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6381 = fcmp fast ogt float %6380, 0.000000e+00
  br i1 %6381, label %6382, label %6414

; <label>:6382                                    ; preds = %6378
  %6383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6353, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6384 = extractvalue %dx.types.ResRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.ResRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.ResRet.f32 %6383, 2
  %6387 = extractvalue %dx.types.ResRet.f32 %6383, 3
  %6388 = fsub fast float 1.000000e+00, %6335
  %6389 = fsub fast float %6388, %6346
  %6390 = fmul fast float %6389, 0x400921FB60000000
  %6391 = fadd fast float %6390, 0x3FF921FB60000000
  %6392 = call float @dx.op.unary.f32(i32 13, float %6391)  ; Sin(value)
  %6393 = fadd fast float %6392, -1.000000e+00
  %6394 = fmul fast float %6393, 0x3FD45F3060000000
  %6395 = fmul fast float %6389, 0x401921FB60000000
  %6396 = fadd fast float %6395, 0x400921FB60000000
  %6397 = call float @dx.op.unary.f32(i32 13, float %6396)  ; Sin(value)
  %6398 = fadd fast float %6397, 0x3E7777A5C0000000
  %6399 = fmul fast float %6398, 0x3FC45F3060000000
  %6400 = fmul fast float %6389, 0x4022D97C80000000
  %6401 = fadd fast float %6400, 0x4012D97C80000000
  %6402 = call float @dx.op.unary.f32(i32 13, float %6401)  ; Sin(value)
  %6403 = fadd fast float %6402, 1.000000e+00
  %6404 = fmul fast float %6403, 0x3FBB2995E0000000
  %6405 = fmul fast float %6389, 0x402921FB60000000
  %6406 = fadd fast float %6405, 0x401921FB60000000
  %6407 = call float @dx.op.unary.f32(i32 13, float %6406)  ; Sin(value)
  %6408 = fadd fast float %6407, 0xBE8777A5C0000000
  %6409 = fmul fast float %6408, 0x3FB45F3060000000
  %6410 = call float @dx.op.dot4.f32(i32 56, float %6384, float %6385, float %6386, float %6387, float %6394, float %6399, float %6404, float %6409)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6411 = fmul fast float %6410, 0xBFF7154760000000
  %6412 = call float @dx.op.unary.f32(i32 21, float %6411)  ; Exp(value)
  %6413 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  br label %6414

; <label>:6414                                    ; preds = %6382, %6378
  %6415 = phi float [ %6413, %6382 ], [ 1.000000e+00, %6378 ]
  %6416 = fadd fast float %6415, -1.000000e+00
  %6417 = fmul fast float %6416, %6376
  %6418 = fadd fast float %6417, 1.000000e+00
  br label %6419

; <label>:6419                                    ; preds = %6414, %6320
  %6420 = phi float [ %6418, %6414 ], [ 1.000000e+00, %6320 ]
  %6421 = fmul fast float %6420, %6316
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.CBufRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %6426 = fadd fast float %6423, %178
  %6427 = fadd fast float %6424, %179
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6430 = fsub fast float -0.000000e+00, %6426
  %6431 = fsub fast float -0.000000e+00, %6427
  %6432 = fsub fast float -0.000000e+00, %180
  %6433 = fsub fast float %6432, %6425
  %6434 = fadd fast float %6433, %6429
  %6435 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6430, float %6431, float %6434)  ; Dot3(ax,ay,az,bx,by,bz)
  %6436 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %6437 = fdiv fast float 1.000000e+00, %6436
  %6438 = fmul fast float %6437, %6435
  %6439 = fmul fast float %5653, %6438
  %6440 = fmul fast float %5654, %6438
  %6441 = fadd fast float %6439, %6426
  %6442 = fadd fast float %6440, %6427
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.f32 %6443, 1
  %6446 = fsub fast float %6441, %6444
  %6447 = fsub fast float %6442, %6445
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 3
  %6451 = fmul fast float %6446, %6449
  %6452 = fmul fast float %6447, %6450
  %6453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.i32 %6453, 3
  %6455 = icmp eq i32 %6454, 0
  br i1 %6455, label %6461, label %6456

; <label>:6456                                    ; preds = %6419
  %6457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6451, float %6452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.ResRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.ResRet.f32 %6457, 2
  br label %6466

; <label>:6461                                    ; preds = %6419
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6451, float %6452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.ResRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.ResRet.f32 %6462, 2
  br label %6466

; <label>:6466                                    ; preds = %6461, %6456
  %6467 = phi float [ %6458, %6456 ], [ %6463, %6461 ]
  %6468 = phi float [ %6459, %6456 ], [ %6464, %6461 ]
  %6469 = phi float [ %6460, %6456 ], [ %6465, %6461 ]
  %6470 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6471 = fmul fast float %6470, %6467
  %6472 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6473 = fsub fast float %6438, %6472
  %6474 = fsub fast float %6473, %6471
  %6475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6474)  ; FMax(a,b)
  %6476 = fmul fast float %6475, %6468
  %6477 = call float @dx.op.binary.f32(i32 36, float %6469, float %6476)  ; FMin(a,b)
  %6478 = fmul fast float %6477, 0xBFF7154760000000
  %6479 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6480 = fmul fast float %6421, %6479
  br label %6481

; <label>:6481                                    ; preds = %6466, %6315
  %6482 = phi float [ %6480, %6466 ], [ %6316, %6315 ]
  %6483 = call float @dx.op.binary.f32(i32 36, float %6482, float %6482)  ; FMin(a,b)
  %6484 = call float @dx.op.binary.f32(i32 36, float %6482, float %6483)  ; FMin(a,b)
  %6485 = fcmp fast ogt float %6484, 0.000000e+00
  br i1 %6485, label %6486, label %6715, !dx.controlflow.hints !111

; <label>:6486                                    ; preds = %6481
  %6487 = fmul fast float %6482, %5664
  %6488 = fmul fast float %6482, %5665
  %6489 = fmul fast float %6482, %5666
  %6490 = fsub fast float %5653, %211
  %6491 = fsub fast float %5654, %212
  %6492 = fsub fast float %5655, %213
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6490, float %6491, float %6492, float %6490, float %6491, float %6492)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = call float @dx.op.unary.f32(i32 25, float %6493)  ; Rsqrt(value)
  %6495 = fmul fast float %6494, %6490
  %6496 = fmul fast float %6494, %6491
  %6497 = fmul fast float %6494, %6492
  %6498 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %6499 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5099, float %5100, float %6495, float %6496, float %6497)  ; Dot3(ax,ay,az,bx,by,bz)
  %6500 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6501 = fmul fast float %6500, %6500
  %6502 = fmul fast float %6501, %5289
  %6503 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6504 = fmul fast float %6503, %6500
  %6505 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %6495, float %6496, float %6497)  ; Dot3(ax,ay,az,bx,by,bz)
  %6506 = fmul fast float %6505, %6505
  %6507 = call float @dx.op.unary.f32(i32 6, float %6498)  ; FAbs(value)
  %6508 = fsub fast float 1.000000e+00, %5272
  %6509 = call float @dx.op.binary.f32(i32 35, float %6508, float 0x3F847AE140000000)  ; FMax(a,b)
  %6510 = fmul fast float %6509, %6509
  %6511 = fmul fast float %6510, %6510
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = fmul fast float %5276, %5276
  %6514 = fmul fast float %6513, %6512
  %6515 = fadd fast float %6514, %6511
  %6516 = bitcast float %6515 to i32
  %6517 = ashr i32 %6516, 1
  %6518 = add nsw i32 %6517, 532487669
  %6519 = bitcast i32 %6518 to float
  %6520 = fadd fast float %6519, %5276
  %6521 = fmul fast float %6511, %6506
  %6522 = fsub fast float 1.000000e+00, %6506
  %6523 = fadd fast float %6522, %6521
  %6524 = fmul fast float %6507, %6507
  %6525 = fmul fast float %6524, %6512
  %6526 = fadd fast float %6525, %6511
  %6527 = bitcast float %6526 to i32
  %6528 = ashr i32 %6527, 1
  %6529 = add nsw i32 %6528, 532487669
  %6530 = bitcast i32 %6529 to float
  %6531 = fadd fast float %6530, %6507
  %6532 = fmul fast float %6523, %6523
  %6533 = fmul fast float %6532, %6520
  %6534 = fmul fast float %6533, %6531
  %6535 = fdiv fast float 0x3FF0A00000000000, %6534
  %6536 = fmul fast float %6535, %6511
  %6537 = call float @dx.op.unary.f32(i32 6, float %6499)  ; FAbs(value)
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = bitcast float %6538 to i32
  %6540 = sitofp i32 %6539 to float
  %6541 = fmul fast float %6540, 5.000000e+00
  %6542 = fadd fast float %6541, 0xC1EFBF8940000000
  %6543 = fptosi float %6542 to i32
  %6544 = bitcast i32 %6543 to float
  %6545 = fsub fast float 1.000000e+00, %5269
  %6546 = fsub fast float 1.000000e+00, %5270
  %6547 = fsub fast float 1.000000e+00, %5274
  %6548 = fmul fast float %6544, %6545
  %6549 = fmul fast float %6544, %6546
  %6550 = fmul fast float %6544, %6547
  %6551 = fadd fast float %6548, %5269
  %6552 = fadd fast float %6549, %5270
  %6553 = fadd fast float %6550, %5274
  br i1 %5546, label %6554, label %6577

; <label>:6554                                    ; preds = %6486
  %6555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4290, float %6537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6556 = extractvalue %dx.types.ResRet.f32 %6555, 0
  %6557 = extractvalue %dx.types.ResRet.f32 %6555, 1
  %6558 = extractvalue %dx.types.ResRet.f32 %6555, 2
  %6559 = fadd fast float %6556, -5.000000e-01
  %6560 = fadd fast float %6557, -5.000000e-01
  %6561 = fadd fast float %6558, -5.000000e-01
  %6562 = fmul fast float %5269, 4.000000e+00
  %6563 = fmul fast float %6562, %6545
  %6564 = fmul fast float %6563, %6559
  %6565 = fmul fast float %5270, 4.000000e+00
  %6566 = fmul fast float %6565, %6546
  %6567 = fmul fast float %6566, %6560
  %6568 = fmul fast float %5274, 4.000000e+00
  %6569 = fmul fast float %6568, %6547
  %6570 = fmul fast float %6569, %6561
  %6571 = fadd fast float %6564, %6551
  %6572 = fadd fast float %6567, %6552
  %6573 = fadd fast float %6570, %6553
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6575 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6576 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  br label %6577

; <label>:6577                                    ; preds = %6554, %6486
  %6578 = phi float [ %6574, %6554 ], [ %6551, %6486 ]
  %6579 = phi float [ %6575, %6554 ], [ %6552, %6486 ]
  %6580 = phi float [ %6576, %6554 ], [ %6553, %6486 ]
  %6581 = fmul fast float %6498, 9.843750e-01
  %6582 = fadd fast float %6581, 7.812500e-03
  %6583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %6582, float %5536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 2
  %6585 = extractvalue %dx.types.ResRet.f32 %6583, 3
  %6586 = fmul fast float %6584, %5269
  %6587 = fmul fast float %6584, %5270
  %6588 = fmul fast float %6584, %5274
  %6589 = fadd fast float %6586, %6585
  %6590 = fadd fast float %6587, %6585
  %6591 = fadd fast float %6588, %6585
  br i1 %5546, label %6592, label %6615

; <label>:6592                                    ; preds = %6577
  %6593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4290, float %6498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.ResRet.f32 %6593, 2
  %6597 = fadd fast float %6594, -5.000000e-01
  %6598 = fadd fast float %6595, -5.000000e-01
  %6599 = fadd fast float %6596, -5.000000e-01
  %6600 = fmul fast float %5269, 4.000000e+00
  %6601 = fmul fast float %6600, %6545
  %6602 = fmul fast float %6601, %6597
  %6603 = fmul fast float %5270, 4.000000e+00
  %6604 = fmul fast float %6603, %6546
  %6605 = fmul fast float %6604, %6598
  %6606 = fmul fast float %5274, 4.000000e+00
  %6607 = fmul fast float %6606, %6547
  %6608 = fmul fast float %6607, %6599
  %6609 = fadd fast float %6602, %6589
  %6610 = fadd fast float %6605, %6590
  %6611 = fadd fast float %6608, %6591
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6613 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6614 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  br label %6615

; <label>:6615                                    ; preds = %6592, %6577
  %6616 = phi float [ %6612, %6592 ], [ %6589, %6577 ]
  %6617 = phi float [ %6613, %6592 ], [ %6590, %6577 ]
  %6618 = phi float [ %6614, %6592 ], [ %6591, %6577 ]
  %6619 = call float @dx.op.binary.f32(i32 35, float %6617, float %6618)  ; FMax(a,b)
  %6620 = call float @dx.op.binary.f32(i32 35, float %6616, float %6619)  ; FMax(a,b)
  %6621 = fsub fast float 1.000000e+00, %6620
  %6622 = fsub fast float -0.000000e+00, %5266
  %6623 = fsub fast float -0.000000e+00, %5267
  %6624 = fsub fast float -0.000000e+00, %5268
  %6625 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = fmul fast float %6626, 9.843750e-01
  %6628 = fadd fast float %6627, 7.812500e-03
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %37, float %6628, float %5536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 2
  %6631 = extractvalue %dx.types.ResRet.f32 %6629, 3
  %6632 = fmul fast float %6630, %5269
  %6633 = fmul fast float %6630, %5270
  %6634 = fmul fast float %6630, %5274
  %6635 = fadd fast float %6632, %6631
  %6636 = fadd fast float %6633, %6631
  %6637 = fadd fast float %6634, %6631
  br i1 %5546, label %6638, label %6661

; <label>:6638                                    ; preds = %6615
  %6639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4290, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.ResRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.ResRet.f32 %6639, 2
  %6643 = fadd fast float %6640, -5.000000e-01
  %6644 = fadd fast float %6641, -5.000000e-01
  %6645 = fadd fast float %6642, -5.000000e-01
  %6646 = fmul fast float %5269, 4.000000e+00
  %6647 = fmul fast float %6646, %6545
  %6648 = fmul fast float %6647, %6643
  %6649 = fmul fast float %5270, 4.000000e+00
  %6650 = fmul fast float %6649, %6546
  %6651 = fmul fast float %6650, %6644
  %6652 = fmul fast float %5274, 4.000000e+00
  %6653 = fmul fast float %6652, %6547
  %6654 = fmul fast float %6653, %6645
  %6655 = fadd fast float %6648, %6635
  %6656 = fadd fast float %6651, %6636
  %6657 = fadd fast float %6654, %6637
  %6658 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6659 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6660 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  br label %6661

; <label>:6661                                    ; preds = %6638, %6615
  %6662 = phi float [ %6658, %6638 ], [ %6635, %6615 ]
  %6663 = phi float [ %6659, %6638 ], [ %6636, %6615 ]
  %6664 = phi float [ %6660, %6638 ], [ %6637, %6615 ]
  %6665 = call float @dx.op.binary.f32(i32 35, float %6663, float %6664)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6662, float %6665)  ; FMax(a,b)
  %6667 = fsub fast float 1.000000e+00, %6666
  %6668 = fmul fast float %6667, %6626
  %6669 = fmul fast float %6668, %4402
  %6670 = fmul fast float %6668, %4403
  %6671 = fmul fast float %6668, %4404
  %6672 = fmul fast float %6578, %6536
  %6673 = fmul fast float %6579, %6536
  %6674 = fmul fast float %6580, %6536
  %6675 = fsub fast float 1.000000e+00, %6499
  %6676 = bitcast float %6675 to i32
  %6677 = sitofp i32 %6676 to float
  %6678 = fmul fast float %6677, 5.000000e+00
  %6679 = fadd fast float %6678, 0xC1EFBF8940000000
  %6680 = fptosi float %6679 to i32
  %6681 = bitcast i32 %6680 to float
  %6682 = fmul fast float %6681, %4291
  %6683 = fmul fast float %6621, %6682
  %6684 = fmul fast float %6683, %5593
  %6685 = fmul fast float %6683, %5594
  %6686 = fmul fast float %6683, %5595
  %6687 = fmul fast float %6621, %6504
  %6688 = fadd fast float %6684, %6672
  %6689 = fadd fast float %6685, %6673
  %6690 = fadd fast float %6686, %6674
  %6691 = fadd fast float %6669, %6687
  %6692 = fadd fast float %6670, %6687
  %6693 = fadd fast float %6671, %6687
  %6694 = fmul fast float %6691, %6487
  %6695 = fmul fast float %6692, %6488
  %6696 = fmul fast float %6693, %6489
  %6697 = fmul fast float %6504, %6487
  %6698 = fmul fast float %6697, %6688
  %6699 = fmul fast float %6504, %6488
  %6700 = fmul fast float %6699, %6689
  %6701 = fmul fast float %6504, %6489
  %6702 = fmul fast float %6701, %6690
  %6703 = fadd fast float %6694, %5643
  %6704 = fmul fast float %6703, %4316
  %6705 = fadd fast float %6695, %5645
  %6706 = fmul fast float %6705, %4316
  %6707 = fadd fast float %6696, %5647
  %6708 = fmul fast float %6707, %4316
  %6709 = fadd fast float %6698, %5626
  %6710 = fmul fast float %6709, %4316
  %6711 = fadd fast float %6700, %5629
  %6712 = fmul fast float %6711, %4316
  %6713 = fadd fast float %6702, %5632
  %6714 = fmul fast float %6713, %4316
  br label %6715

; <label>:6715                                    ; preds = %6661, %6481, %5573
  %6716 = phi float [ %5627, %5573 ], [ %5627, %6481 ], [ %6710, %6661 ]
  %6717 = phi float [ %5630, %5573 ], [ %5630, %6481 ], [ %6712, %6661 ]
  %6718 = phi float [ %5633, %5573 ], [ %5633, %6481 ], [ %6714, %6661 ]
  %6719 = phi float [ %5644, %5573 ], [ %5644, %6481 ], [ %6704, %6661 ]
  %6720 = phi float [ %5646, %5573 ], [ %5646, %6481 ], [ %6706, %6661 ]
  %6721 = phi float [ %5648, %5573 ], [ %5648, %6481 ], [ %6708, %6661 ]
  %6722 = fmul fast float %4316, %5602
  %6723 = fsub fast float -0.000000e+00, %6722
  %6724 = fmul fast float %4316, %5603
  %6725 = fsub fast float -0.000000e+00, %6724
  %6726 = fmul fast float %4316, %5604
  %6727 = fsub fast float -0.000000e+00, %6726
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 0
  %6730 = fmul fast float %6729, %5608
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 3
  %6733 = fsub fast float 1.000000e+00, %4294
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = fadd fast float %6721, %4293
  %6736 = fmul fast float %6735, %4294
  %6737 = fmul fast float %6734, %6732
  %6738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.i32 %6738, 3
  %6740 = bitcast i32 %6739 to float
  %6741 = fsub fast float %6723, %6740
  %6742 = fsub fast float %6725, %6740
  %6743 = fsub fast float %6727, %6740
  %6744 = fmul fast float %6741, %225
  %6745 = fmul fast float %6742, %225
  %6746 = fmul fast float %6743, %225
  %6747 = fadd fast float %6744, %6740
  %6748 = fadd fast float %6745, %6740
  %6749 = fadd fast float %6746, %6740
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 3
  %6752 = fmul fast float %6719, %5263
  %6753 = fmul fast float %6720, %5264
  %6754 = fmul fast float %6721, %5265
  %6755 = fcmp fast ogt float %90, %245
  %6756 = and i1 %6755, %4421
  %6757 = or i1 %4500, %6756
  %6758 = icmp eq i32 %4420, 2
  %6759 = fcmp fast ole float %90, %245
  %6760 = and i1 %6759, %6758
  %6761 = or i1 %6760, %6757
  br i1 %6756, label %6762, label %7019

; <label>:6762                                    ; preds = %6715
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6765 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6766 = fmul fast float %6764, %99
  %6767 = fmul fast float %6765, %100
  %6768 = call float @dx.op.unary.f32(i32 7, float %6766)  ; Saturate(value)
  %6769 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6768, float %6769, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6771 = extractvalue %dx.types.ResRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.ResRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.ResRet.f32 %6770, 2
  %6774 = extractvalue %dx.types.ResRet.f32 %6770, 3
  %6775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %6768, float %6769, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6776 = extractvalue %dx.types.ResRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.ResRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.ResRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.ResRet.f32 %6775, 3
  %6780 = call float @dx.op.binary.f32(i32 35, float %6772, float %6773)  ; FMax(a,b)
  %6781 = call float @dx.op.binary.f32(i32 35, float %6771, float %6780)  ; FMax(a,b)
  %6782 = call float @dx.op.binary.f32(i32 35, float %6781, float %6774)  ; FMax(a,b)
  %6783 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6784 = call float @dx.op.binary.f32(i32 36, float %6776, float %6783)  ; FMin(a,b)
  %6785 = call float @dx.op.binary.f32(i32 36, float %6784, float %6779)  ; FMin(a,b)
  %6786 = fmul fast float %6782, 2.550000e+02
  %6787 = fadd fast float %6786, 0x3F70101020000000
  %6788 = fptoui float %6787 to i32
  %6789 = fmul fast float %6785, 2.550000e+02
  %6790 = fadd fast float %6789, 0x3F70101020000000
  %6791 = fptoui float %6790 to i32
  %6792 = icmp ult i32 %6788, %6791
  br i1 %6792, label %6793, label %6961

; <label>:6793                                    ; preds = %6762
  %6794 = fcmp fast ogt float %89, 9.843750e-01
  %6795 = fadd fast float %90, -4.000000e+00
  %6796 = select i1 %6794, float -4.000000e+00, float %6795
  %6797 = call float @dx.op.binary.f32(i32 35, float %6796, float 0.000000e+00)  ; FMax(a,b)
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = fadd fast float %6799, %6797
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = fmul fast float %6800, %6801
  %6803 = call float @dx.op.unary.f32(i32 23, float %6802)  ; Log(value)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6805 = fmul fast float %6804, %6803
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6808 = fmul fast float %6805, %6807
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = uitofp i32 %6788 to float
  %6811 = uitofp i32 %6791 to float
  %6812 = fadd fast float %6810, 5.000000e-01
  %6813 = fadd fast float %6811, 5.000000e-01
  %6814 = fmul fast float %6807, %6812
  %6815 = fmul fast float %6807, %6813
  %6816 = fadd fast float %6814, 0x3F0FFB4800000000
  %6817 = fadd fast float %6815, 0xBF0FFB4800000000
  %6818 = call float @dx.op.binary.f32(i32 35, float %6809, float %6816)  ; FMax(a,b)
  %6819 = call float @dx.op.binary.f32(i32 36, float %6818, float %6817)  ; FMin(a,b)
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6820, 0
  %6824 = fmul fast float %6821, %6819
  %6825 = fadd fast float %6823, %6824
  %6826 = fadd fast float %6823, %6822
  %6827 = fsub fast float %6821, %6822
  %6828 = fadd fast float %6827, %6823
  %6829 = call float @dx.op.binary.f32(i32 35, float %6825, float %6826)  ; FMax(a,b)
  %6830 = call float @dx.op.binary.f32(i32 36, float %6829, float %6828)  ; FMin(a,b)
  %6831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %6768, float %6769, float %6830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.ResRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.ResRet.f32 %6831, 2
  %6835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.i32 %6835, 0
  %6837 = extractvalue %dx.types.CBufRet.i32 %6835, 1
  %6838 = uitofp i32 %6836 to float
  %6839 = uitofp i32 %6837 to float
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 0
  %6842 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %6843 = fmul fast float %6838, %6768
  %6844 = fmul fast float %6839, %6769
  %6845 = fadd fast float %6843, -5.000000e-01
  %6846 = fadd fast float %6844, -5.000000e-01
  %6847 = call float @dx.op.unary.f32(i32 22, float %6845)  ; Frc(value)
  %6848 = call float @dx.op.unary.f32(i32 22, float %6846)  ; Frc(value)
  %6849 = fmul fast float %6847, %6847
  %6850 = fmul fast float %6849, %6847
  %6851 = fsub fast float 3.000000e+00, %6847
  %6852 = fmul fast float %6849, %6851
  %6853 = fmul fast float %6847, 3.000000e+00
  %6854 = fmul fast float %6850, 3.000000e+00
  %6855 = fmul fast float %6849, 6.000000e+00
  %6856 = fsub fast float %6854, %6855
  %6857 = fadd fast float %6856, 4.000000e+00
  %6858 = fmul fast float %6857, 0x3FC5555560000000
  %6859 = fmul fast float %6850, -3.000000e+00
  %6860 = fadd fast float %6849, %6847
  %6861 = fmul fast float %6860, 3.000000e+00
  %6862 = fadd fast float %6859, 1.000000e+00
  %6863 = fadd fast float %6862, %6861
  %6864 = fmul fast float %6850, 0x3FC5555560000000
  %6865 = fmul fast float %6848, %6848
  %6866 = fmul fast float %6865, %6848
  %6867 = fsub fast float 3.000000e+00, %6848
  %6868 = fmul fast float %6865, %6867
  %6869 = fmul fast float %6848, 3.000000e+00
  %6870 = fmul fast float %6866, 3.000000e+00
  %6871 = fmul fast float %6865, 6.000000e+00
  %6872 = fsub fast float %6870, %6871
  %6873 = fadd fast float %6872, 4.000000e+00
  %6874 = fmul fast float %6873, 0x3FC5555560000000
  %6875 = fmul fast float %6866, -3.000000e+00
  %6876 = fadd fast float %6865, %6848
  %6877 = fmul fast float %6876, 3.000000e+00
  %6878 = fadd fast float %6875, 1.000000e+00
  %6879 = fadd fast float %6878, %6877
  %6880 = fmul fast float %6866, 0x3FC5555560000000
  %6881 = fadd fast float %6847, 1.000000e+00
  %6882 = fsub fast float 1.000000e+00, %6853
  %6883 = fadd fast float %6882, %6852
  %6884 = fadd fast float %6883, %6857
  %6885 = fmul fast float %6884, 0x3FC5555560000000
  %6886 = fdiv fast float %6858, %6885
  %6887 = fsub fast float %6881, %6886
  %6888 = fsub fast float 1.000000e+00, %6847
  %6889 = fadd fast float %6863, %6850
  %6890 = fmul fast float %6889, 0x3FC5555560000000
  %6891 = fdiv fast float %6864, %6890
  %6892 = fadd fast float %6888, %6891
  %6893 = fadd fast float %6848, 1.000000e+00
  %6894 = fsub fast float 1.000000e+00, %6869
  %6895 = fadd fast float %6894, %6868
  %6896 = fadd fast float %6895, %6873
  %6897 = fmul fast float %6896, 0x3FC5555560000000
  %6898 = fdiv fast float %6874, %6897
  %6899 = fsub fast float %6893, %6898
  %6900 = fsub fast float 1.000000e+00, %6848
  %6901 = fadd fast float %6879, %6866
  %6902 = fmul fast float %6901, 0x3FC5555560000000
  %6903 = fdiv fast float %6880, %6902
  %6904 = fadd fast float %6903, %6900
  %6905 = fmul fast float %6887, %6841
  %6906 = fsub fast float %6768, %6905
  %6907 = fmul fast float %6892, %6841
  %6908 = fadd fast float %6907, %6768
  %6909 = fmul fast float %6904, %6842
  %6910 = fadd fast float %6909, %6769
  %6911 = fmul fast float %6899, %6842
  %6912 = fsub fast float %6769, %6911
  %6913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6906, float %6912, float %6830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6914 = extractvalue %dx.types.ResRet.f32 %6913, 0
  %6915 = extractvalue %dx.types.ResRet.f32 %6913, 1
  %6916 = extractvalue %dx.types.ResRet.f32 %6913, 2
  %6917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6908, float %6912, float %6830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6918 = extractvalue %dx.types.ResRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.ResRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.ResRet.f32 %6917, 2
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6906, float %6910, float %6830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.ResRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.ResRet.f32 %6921, 2
  %6925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %6908, float %6910, float %6830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.ResRet.f32 %6925, 2
  %6929 = fsub fast float %6922, %6914
  %6930 = fsub fast float %6923, %6915
  %6931 = fsub fast float %6924, %6916
  %6932 = fmul fast float %6929, %6902
  %6933 = fmul fast float %6930, %6902
  %6934 = fmul fast float %6931, %6902
  %6935 = fadd fast float %6932, %6914
  %6936 = fadd fast float %6933, %6915
  %6937 = fadd fast float %6934, %6916
  %6938 = fsub fast float %6926, %6918
  %6939 = fsub fast float %6927, %6919
  %6940 = fsub fast float %6928, %6920
  %6941 = fmul fast float %6938, %6902
  %6942 = fmul fast float %6939, %6902
  %6943 = fmul fast float %6940, %6902
  %6944 = fsub fast float %6918, %6935
  %6945 = fadd fast float %6944, %6941
  %6946 = fsub fast float %6919, %6936
  %6947 = fadd fast float %6946, %6942
  %6948 = fsub fast float %6920, %6937
  %6949 = fadd fast float %6948, %6943
  %6950 = fmul fast float %6945, %6890
  %6951 = fmul fast float %6947, %6890
  %6952 = fmul fast float %6949, %6890
  %6953 = fadd fast float %6950, %6935
  %6954 = fadd fast float %6951, %6936
  %6955 = fadd fast float %6952, %6937
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 1
  %6958 = fmul fast float %6953, %6957
  %6959 = fmul fast float %6954, %6957
  %6960 = fmul fast float %6955, %6957
  br label %6961

; <label>:6961                                    ; preds = %6793, %6762
  %6962 = phi float [ %6832, %6793 ], [ 1.000000e+00, %6762 ]
  %6963 = phi float [ %6833, %6793 ], [ 1.000000e+00, %6762 ]
  %6964 = phi float [ %6834, %6793 ], [ 1.000000e+00, %6762 ]
  %6965 = phi float [ %6958, %6793 ], [ 0.000000e+00, %6762 ]
  %6966 = phi float [ %6959, %6793 ], [ 0.000000e+00, %6762 ]
  %6967 = phi float [ %6960, %6793 ], [ 0.000000e+00, %6762 ]
  %6968 = fmul fast float %6965, %6747
  %6969 = fmul fast float %6966, %6748
  %6970 = fmul fast float %6967, %6749
  %6971 = call float @dx.op.dot3.f32(i32 55, float %6962, float %6963, float %6964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6972 = call float @dx.op.dot3.f32(i32 55, float %6968, float %6969, float %6970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6973 = select i1 %284, float %6971, float %6962
  %6974 = select i1 %284, float %6971, float %6963
  %6975 = select i1 %284, float 1.000000e+00, float %6964
  %6976 = select i1 %284, float %6972, float %6968
  %6977 = select i1 %284, float 0.000000e+00, float %6969
  %6978 = select i1 %284, float 0.000000e+00, float %6970
  %6979 = fmul fast float %6973, %6752
  %6980 = fmul fast float %6974, %6753
  %6981 = fmul fast float %6975, %6754
  %6982 = fadd fast float %6979, %6976
  %6983 = fadd fast float %6980, %6977
  %6984 = fadd fast float %6978, %6981
  %6985 = fmul fast float %6973, %6716
  %6986 = fmul fast float %6974, %6717
  %6987 = fmul fast float %6975, %6718
  %6988 = fmul fast float %127, %6764
  %6989 = fmul fast float %129, %6765
  %6990 = fsub fast float 1.000000e+00, %6988
  %6991 = fsub fast float 1.000000e+00, %6989
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = fmul fast float %6990, %6993
  %6997 = fmul fast float %6990, %6994
  %6998 = fmul fast float %6990, %6995
  %6999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.CBufRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.CBufRet.f32 %6999, 2
  %7003 = fmul fast float %6991, %7000
  %7004 = fmul fast float %6991, %7001
  %7005 = fmul fast float %6991, %7002
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %7010 = fadd fast float %7003, %7007
  %7011 = fadd fast float %7010, %6996
  %7012 = fadd fast float %7004, %7008
  %7013 = fadd fast float %7012, %6997
  %7014 = fadd fast float %7005, %7009
  %7015 = fadd fast float %7014, %6998
  %7016 = fmul fast float %7011, %245
  %7017 = fmul fast float %7013, %245
  %7018 = fmul fast float %7015, %245
  br label %7019

; <label>:7019                                    ; preds = %6961, %6715
  %7020 = phi float [ %7016, %6961 ], [ %178, %6715 ]
  %7021 = phi float [ %7017, %6961 ], [ %179, %6715 ]
  %7022 = phi float [ %7018, %6961 ], [ %180, %6715 ]
  %7023 = phi float [ %245, %6961 ], [ %90, %6715 ]
  %7024 = phi float [ %6982, %6961 ], [ %6752, %6715 ]
  %7025 = phi float [ %6983, %6961 ], [ %6753, %6715 ]
  %7026 = phi float [ %6984, %6961 ], [ %6754, %6715 ]
  %7027 = phi float [ %6985, %6961 ], [ %6716, %6715 ]
  %7028 = phi float [ %6986, %6961 ], [ %6717, %6715 ]
  %7029 = phi float [ %6987, %6961 ], [ %6718, %6715 ]
  %7030 = phi float [ %6962, %6961 ], [ 1.000000e+00, %6715 ]
  br i1 %6761, label %8185, label %7031

; <label>:7031                                    ; preds = %7019
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7036 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7040 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7041 = extractvalue %dx.types.CBufRet.f32 %7037, 3
  %7042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7043 = extractvalue %dx.types.CBufRet.f32 %7042, 0
  %7044 = extractvalue %dx.types.CBufRet.f32 %7042, 1
  %7045 = extractvalue %dx.types.CBufRet.f32 %7042, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7042, 3
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.CBufRet.f32 %7047, 2
  %7051 = extractvalue %dx.types.CBufRet.f32 %7047, 3
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 3
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 3
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7057 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7058 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7059 = fcmp fast olt float %7058, -5.000000e-01
  %7060 = call float @dx.op.dot3.f32(i32 55, float %7020, float %7021, float %7022, float %7020, float %7021, float %7022)  ; Dot3(ax,ay,az,bx,by,bz)
  %7061 = call float @dx.op.unary.f32(i32 25, float %7060)  ; Rsqrt(value)
  %7062 = fmul fast float %7061, %7060
  %7063 = fmul fast float %7061, %7020
  %7064 = fmul fast float %7061, %7021
  %7065 = fmul fast float %7061, %7022
  %7066 = fadd fast float %7062, %7036
  %7067 = call float @dx.op.dot3.f32(i32 55, float %7063, float %7064, float %7065, float %7033, float %7034, float %7035)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7069 = extractvalue %dx.types.CBufRet.i32 %7068, 1
  %7070 = and i32 %7069, 1
  %7071 = icmp ne i32 %7070, 0
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 2
  %7074 = fcmp fast ogt float %7073, 0.000000e+00
  %7075 = and i1 %7071, %7074
  br i1 %7075, label %7076, label %7482, !dx.controlflow.hints !112

; <label>:7076                                    ; preds = %7031
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 3
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 2
  %7083 = fsub fast float %7080, %7082
  %7084 = and i32 %7069, 2
  %7085 = extractvalue %dx.types.CBufRet.i32 %7068, 0
  %7086 = call i32 @dx.op.binary.i32(i32 40, i32 %7085, i32 3)  ; UMin(a,b)
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7091 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7092 = fsub fast float %7088, %7090
  %7093 = fsub fast float %7089, %7091
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 0
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  %7097 = fsub fast float -0.000000e+00, %7092
  %7098 = fsub fast float -0.000000e+00, %7093
  %7099 = call float @dx.op.dot2.f32(i32 54, float %7063, float %7064, float %7063, float %7064)  ; Dot2(ax,ay,bx,by)
  %7100 = call float @dx.op.dot2.f32(i32 54, float %7063, float %7064, float %7097, float %7098)  ; Dot2(ax,ay,bx,by)
  %7101 = fmul fast float %7100, 2.000000e+00
  %7102 = call float @dx.op.dot2.f32(i32 54, float %7097, float %7098, float %7097, float %7098)  ; Dot2(ax,ay,bx,by)
  %7103 = fmul fast float %7095, %7095
  %7104 = fsub fast float %7102, %7103
  %7105 = fmul fast float %7101, %7101
  %7106 = fmul fast float %7099, 4.000000e+00
  %7107 = fmul fast float %7106, %7104
  %7108 = fsub fast float %7105, %7107
  %7109 = fcmp fast ogt float %7108, 0.000000e+00
  br i1 %7109, label %7110, label %7125

; <label>:7110                                    ; preds = %7076
  %7111 = fcmp fast ogt float %7101, 0.000000e+00
  %7112 = call float @dx.op.unary.f32(i32 24, float %7108)  ; Sqrt(value)
  %7113 = fsub fast float -0.000000e+00, %7112
  %7114 = select i1 %7111, float %7112, float %7113
  %7115 = fadd fast float %7114, %7101
  %7116 = fmul float %7115, -5.000000e-01
  %7117 = fdiv fast float %7116, %7099
  %7118 = call float @dx.op.binary.f32(i32 35, float %7117, float 0.000000e+00)  ; FMax(a,b)
  %7119 = call float @dx.op.binary.f32(i32 36, float %7062, float %7118)  ; FMin(a,b)
  %7120 = fdiv fast float %7104, %7116
  %7121 = call float @dx.op.binary.f32(i32 35, float %7120, float 0.000000e+00)  ; FMax(a,b)
  %7122 = call float @dx.op.binary.f32(i32 36, float %7062, float %7121)  ; FMin(a,b)
  %7123 = call float @dx.op.binary.f32(i32 36, float %7119, float %7122)  ; FMin(a,b)
  %7124 = call float @dx.op.binary.f32(i32 35, float %7119, float %7122)  ; FMax(a,b)
  br label %7125

; <label>:7125                                    ; preds = %7110, %7076
  %7126 = phi float [ %7124, %7110 ], [ -1.000000e+00, %7076 ]
  %7127 = phi float [ %7123, %7110 ], [ -1.000000e+00, %7076 ]
  %7128 = phi i1 [ true, %7110 ], [ false, %7076 ]
  %7129 = and i1 %7096, %7128
  br i1 %7129, label %7130, label %7132

; <label>:7130                                    ; preds = %7125
  %7131 = fcmp fast oeq float %7127, %7126
  br i1 %7131, label %7435, label %7133

; <label>:7132                                    ; preds = %7125
  br i1 %7096, label %7435, label %7133

; <label>:7133                                    ; preds = %7132, %7130
  %7134 = phi float [ %7062, %7132 ], [ %7126, %7130 ]
  %7135 = phi float [ 0.000000e+00, %7132 ], [ %7127, %7130 ]
  %7136 = icmp ne i32 %7084, 0
  %7137 = fmul fast float %7134, %7065
  %7138 = fadd fast float %7137, %7078
  %7139 = fmul fast float %7138, %7134
  %7140 = select i1 %7136, float 0.000000e+00, float %7139
  %7141 = fcmp fast oeq float %7065, 0.000000e+00
  %7142 = fdiv fast float %7083, %7065
  %7143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7142)  ; FMax(a,b)
  %7144 = select i1 %7141, float %7134, float %7143
  %7145 = call float @dx.op.binary.f32(i32 36, float %7134, float %7144)  ; FMin(a,b)
  %7146 = fcmp fast ogt float %7065, 0.000000e+00
  %7147 = fcmp fast olt float %7083, 0.000000e+00
  br i1 %7146, label %7148, label %7205

; <label>:7148                                    ; preds = %7133
  %7149 = icmp eq i32 %7084, 0
  br i1 %7147, label %7150, label %7194

; <label>:7150                                    ; preds = %7148
  %7151 = select i1 %7149, float %7134, float 0.000000e+00
  %7152 = fsub fast float -0.000000e+00, %7151
  %7153 = call float @dx.op.unary.f32(i32 6, float %7152)  ; FAbs(value)
  %7154 = fmul fast float %7151, %7065
  %7155 = fadd fast float %7154, %7078
  %7156 = fmul fast float %7153, %7155
  %7157 = fsub fast float %7140, %7156
  %7158 = fsub fast float %7134, %7153
  %7159 = select i1 %7149, float %7158, float 0.000000e+00
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 0
  %7166 = extractvalue %dx.types.CBufRet.f32 %7164, 1
  %7167 = extractvalue %dx.types.CBufRet.f32 %7164, 2
  %7168 = extractvalue %dx.types.CBufRet.f32 %7164, 3
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7171 = call float @dx.op.binary.f32(i32 36, float %7157, float %7170)  ; FMin(a,b)
  %7172 = fmul fast float %7168, %7159
  %7173 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7174 = fsub fast float %7165, %7161
  %7175 = fsub fast float %7166, %7162
  %7176 = fsub fast float %7167, %7163
  %7177 = fmul fast float %7173, %7174
  %7178 = fmul fast float %7173, %7175
  %7179 = fmul fast float %7173, %7176
  %7180 = fadd fast float %7177, %7161
  %7181 = fadd fast float %7178, %7162
  %7182 = fadd fast float %7179, %7163
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7186 = fadd fast float %7185, %7184
  %7187 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7189 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7190 = fadd fast float %7189, %7188
  %7191 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7192 = fmul fast float %7187, %7171
  %7193 = fmul fast float %7192, %7191
  br label %7435

; <label>:7194                                    ; preds = %7148
  br i1 %7149, label %7195, label %7216

; <label>:7195                                    ; preds = %7194
  %7196 = call float @dx.op.binary.f32(i32 36, float %7145, float %7135)  ; FMin(a,b)
  %7197 = fsub fast float %7145, %7196
  %7198 = fsub fast float %7197, %7134
  %7199 = call float @dx.op.unary.f32(i32 6, float %7198)  ; FAbs(value)
  %7200 = fadd fast float %7197, %7134
  %7201 = fmul fast float %7200, %7065
  %7202 = fadd fast float %7201, %7078
  %7203 = fmul fast float %7202, %7199
  %7204 = fsub fast float %7140, %7203
  br label %7216

; <label>:7205                                    ; preds = %7133
  br i1 %7147, label %7206, label %7216

; <label>:7206                                    ; preds = %7205
  %7207 = call float @dx.op.binary.f32(i32 35, float %7135, float %7145)  ; FMax(a,b)
  %7208 = icmp eq i32 %7084, 0
  %7209 = select i1 %7208, float %7145, float 0.000000e+00
  %7210 = fsub fast float -0.000000e+00, %7209
  %7211 = call float @dx.op.unary.f32(i32 6, float %7210)  ; FAbs(value)
  %7212 = fmul fast float %7209, %7065
  %7213 = fadd fast float %7212, %7078
  %7214 = fmul fast float %7211, %7213
  %7215 = fsub fast float %7140, %7214
  br label %7216

; <label>:7216                                    ; preds = %7206, %7205, %7195, %7194
  %7217 = phi float [ %7135, %7194 ], [ %7135, %7195 ], [ %7207, %7206 ], [ %7135, %7205 ]
  %7218 = phi float [ 0.000000e+00, %7194 ], [ %7199, %7195 ], [ %7211, %7206 ], [ 0.000000e+00, %7205 ]
  %7219 = phi float [ %7140, %7194 ], [ %7204, %7195 ], [ %7215, %7206 ], [ %7140, %7205 ]
  %7220 = phi float [ %7145, %7194 ], [ %7145, %7195 ], [ %7134, %7206 ], [ %7134, %7205 ]
  %7221 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7221, align 4, !tbaa !113, !noalias !115
  %7222 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7222, align 4, !tbaa !113, !noalias !115
  %7223 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7223, align 4, !tbaa !113, !noalias !115
  %7224 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7224, align 4, !tbaa !113, !noalias !115
  %7225 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7225, align 4, !tbaa !113, !noalias !115
  %7226 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7226, align 4, !tbaa !113, !noalias !115
  %7227 = icmp sgt i32 %7086, 0
  br i1 %7227, label %7228, label %7289

; <label>:7228                                    ; preds = %7216
  br label %7229

; <label>:7229                                    ; preds = %7278, %7228
  %7230 = phi i32 [ %7279, %7278 ], [ 0, %7228 ]
  %7231 = phi i32 [ %7280, %7278 ], [ 0, %7228 ]
  %7232 = add nuw i32 %7231, 171
  %7233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %7232)  ; CBufferLoadLegacy(handle,regIndex)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7233, 0
  %7235 = extractvalue %dx.types.CBufRet.f32 %7233, 1
  %7236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.f32 %7236, 0
  %7238 = extractvalue %dx.types.CBufRet.f32 %7236, 1
  %7239 = fsub fast float %7234, %7237
  %7240 = fsub fast float %7235, %7238
  %7241 = extractvalue %dx.types.CBufRet.f32 %7233, 2
  %7242 = fsub fast float -0.000000e+00, %7239
  %7243 = fsub fast float -0.000000e+00, %7240
  %7244 = call float @dx.op.dot2.f32(i32 54, float %7063, float %7064, float %7242, float %7243)  ; Dot2(ax,ay,bx,by)
  %7245 = fmul fast float %7244, 2.000000e+00
  %7246 = call float @dx.op.dot2.f32(i32 54, float %7242, float %7243, float %7242, float %7243)  ; Dot2(ax,ay,bx,by)
  %7247 = fmul fast float %7241, %7241
  %7248 = fsub fast float %7246, %7247
  %7249 = fmul fast float %7245, %7245
  %7250 = fmul fast float %7106, %7248
  %7251 = fsub fast float %7249, %7250
  %7252 = fcmp fast ogt float %7251, 0.000000e+00
  br i1 %7252, label %7253, label %7268

; <label>:7253                                    ; preds = %7229
  %7254 = fcmp fast ogt float %7245, 0.000000e+00
  %7255 = call float @dx.op.unary.f32(i32 24, float %7251)  ; Sqrt(value)
  %7256 = fsub fast float -0.000000e+00, %7255
  %7257 = select i1 %7254, float %7255, float %7256
  %7258 = fadd fast float %7257, %7245
  %7259 = fmul float %7258, -5.000000e-01
  %7260 = fdiv fast float %7259, %7099
  %7261 = call float @dx.op.binary.f32(i32 35, float %7260, float 0.000000e+00)  ; FMax(a,b)
  %7262 = call float @dx.op.binary.f32(i32 36, float %7134, float %7261)  ; FMin(a,b)
  %7263 = fdiv fast float %7248, %7259
  %7264 = call float @dx.op.binary.f32(i32 35, float %7263, float 0.000000e+00)  ; FMax(a,b)
  %7265 = call float @dx.op.binary.f32(i32 36, float %7134, float %7264)  ; FMin(a,b)
  %7266 = call float @dx.op.binary.f32(i32 36, float %7262, float %7265)  ; FMin(a,b)
  %7267 = call float @dx.op.binary.f32(i32 35, float %7262, float %7265)  ; FMax(a,b)
  br label %7268

; <label>:7268                                    ; preds = %7253, %7229
  %7269 = phi float [ %7267, %7253 ], [ -1.000000e+00, %7229 ]
  %7270 = phi float [ %7266, %7253 ], [ -1.000000e+00, %7229 ]
  %7271 = phi i1 [ true, %7253 ], [ false, %7229 ]
  br i1 %7271, label %7272, label %7278

; <label>:7272                                    ; preds = %7268
  %7273 = call float @dx.op.binary.f32(i32 35, float %7217, float %7270)  ; FMax(a,b)
  %7274 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7231
  store float %7273, float* %7274, align 4, !tbaa !113, !noalias !115
  %7275 = call float @dx.op.binary.f32(i32 35, float %7217, float %7269)  ; FMax(a,b)
  %7276 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7231
  store float %7275, float* %7276, align 4, !tbaa !113, !noalias !115
  %7277 = add nsw i32 %7230, 1
  br label %7278

; <label>:7278                                    ; preds = %7272, %7268
  %7279 = phi i32 [ %7277, %7272 ], [ %7230, %7268 ]
  %7280 = add nuw nsw i32 %7231, 1
  %7281 = icmp eq i32 %7280, %7086
  br i1 %7281, label %7282, label %7229

; <label>:7282                                    ; preds = %7278
  %7283 = load float, float* %7223, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7284 = load float, float* %7222, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %7285 = load float, float* %7221, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %7286 = load float, float* %7226, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7287 = load float, float* %7225, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %7288 = load float, float* %7224, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %7289

; <label>:7289                                    ; preds = %7282, %7216
  %7290 = phi float [ -1.000000e+00, %7216 ], [ %7288, %7282 ]
  %7291 = phi float [ -1.000000e+00, %7216 ], [ %7287, %7282 ]
  %7292 = phi float [ -1.000000e+00, %7216 ], [ %7286, %7282 ]
  %7293 = phi float [ -1.000000e+00, %7216 ], [ %7285, %7282 ]
  %7294 = phi float [ -1.000000e+00, %7216 ], [ %7284, %7282 ]
  %7295 = phi float [ -1.000000e+00, %7216 ], [ %7283, %7282 ]
  %7296 = phi i32 [ 0, %7216 ], [ %7279, %7282 ]
  %7297 = call float @dx.op.binary.f32(i32 36, float %7294, float %7295)  ; FMin(a,b)
  %7298 = call float @dx.op.binary.f32(i32 36, float %7293, float %7297)  ; FMin(a,b)
  %7299 = call float @dx.op.binary.f32(i32 35, float %7293, float %7294)  ; FMax(a,b)
  %7300 = call float @dx.op.binary.f32(i32 36, float %7299, float %7295)  ; FMin(a,b)
  %7301 = call float @dx.op.binary.f32(i32 36, float %7293, float %7294)  ; FMin(a,b)
  %7302 = call float @dx.op.binary.f32(i32 35, float %7301, float %7300)  ; FMax(a,b)
  %7303 = call float @dx.op.binary.f32(i32 35, float %7294, float %7295)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 35, float %7293, float %7303)  ; FMax(a,b)
  store float %7298, float* %7221, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %7302, float* %7222, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %7304, float* %7223, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %7305 = call float @dx.op.binary.f32(i32 36, float %7291, float %7292)  ; FMin(a,b)
  %7306 = call float @dx.op.binary.f32(i32 36, float %7290, float %7305)  ; FMin(a,b)
  %7307 = call float @dx.op.binary.f32(i32 35, float %7290, float %7291)  ; FMax(a,b)
  %7308 = call float @dx.op.binary.f32(i32 36, float %7307, float %7292)  ; FMin(a,b)
  %7309 = call float @dx.op.binary.f32(i32 36, float %7290, float %7291)  ; FMin(a,b)
  %7310 = call float @dx.op.binary.f32(i32 35, float %7309, float %7308)  ; FMax(a,b)
  %7311 = call float @dx.op.binary.f32(i32 35, float %7291, float %7292)  ; FMax(a,b)
  %7312 = call float @dx.op.binary.f32(i32 35, float %7290, float %7311)  ; FMax(a,b)
  store float %7306, float* %7224, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %7310, float* %7225, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %7312, float* %7226, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %7313 = sub nsw i32 3, %7296
  %7314 = icmp sgt i32 %7313, 2
  br i1 %7314, label %7315, label %7353

; <label>:7315                                    ; preds = %7289
  %7316 = icmp eq i32 %7084, 0
  %7317 = fsub fast float %7134, %7218
  %7318 = select i1 %7316, float %7317, float %7218
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7327 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7330 = call float @dx.op.binary.f32(i32 36, float %7219, float %7329)  ; FMin(a,b)
  %7331 = fmul fast float %7327, %7318
  %7332 = call float @dx.op.unary.f32(i32 7, float %7331)  ; Saturate(value)
  %7333 = fsub fast float %7324, %7320
  %7334 = fsub fast float %7325, %7321
  %7335 = fsub fast float %7326, %7322
  %7336 = fmul fast float %7332, %7333
  %7337 = fmul fast float %7332, %7334
  %7338 = fmul fast float %7332, %7335
  %7339 = fadd fast float %7336, %7320
  %7340 = fadd fast float %7337, %7321
  %7341 = fadd fast float %7338, %7322
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.CBufRet.f32 %7342, 1
  %7345 = fadd fast float %7344, %7343
  %7346 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7348 = extractvalue %dx.types.CBufRet.f32 %7342, 3
  %7349 = fadd fast float %7348, %7347
  %7350 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7351 = fmul fast float %7346, %7330
  %7352 = fmul fast float %7351, %7350
  br label %7435

; <label>:7353                                    ; preds = %7289
  %7354 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7313
  %7355 = load float, float* %7354, align 4, !tbaa !113, !noalias !115
  %7356 = fcmp fast olt float %7355, %7220
  %7357 = icmp sgt i32 %7296, 0
  %7358 = and i1 %7357, %7356
  br i1 %7358, label %7359, label %7396

; <label>:7359                                    ; preds = %7353
  br label %7360

; <label>:7360                                    ; preds = %7389, %7359
  %7361 = phi float [ %7390, %7389 ], [ %7218, %7359 ]
  %7362 = phi float [ %7391, %7389 ], [ %7219, %7359 ]
  %7363 = phi float [ %7371, %7389 ], [ %7355, %7359 ]
  %7364 = phi i32 [ %7368, %7389 ], [ %7313, %7359 ]
  %7365 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7364
  %7366 = load float, float* %7365, align 4, !tbaa !113, !noalias !115
  %7367 = icmp slt i32 %7364, 2
  %7368 = add nsw i32 %7364, 1
  %7369 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7368
  %7370 = load float, float* %7369, align 4, !tbaa !113, !noalias !115
  %7371 = select i1 %7367, float %7370, float %7134
  %7372 = call float @dx.op.binary.f32(i32 36, float %7371, float %7366)  ; FMin(a,b)
  %7373 = call float @dx.op.binary.f32(i32 36, float %7220, float %7372)  ; FMin(a,b)
  %7374 = icmp eq i32 %7084, 0
  %7375 = fadd fast float %7373, %7363
  %7376 = fmul fast float %7375, %7065
  %7377 = fadd fast float %7376, %7078
  br i1 %7374, label %7383, label %7378

; <label>:7378                                    ; preds = %7360
  %7379 = fsub fast float %7373, %7363
  %7380 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7379)  ; FMax(a,b)
  %7381 = fmul fast float %7380, %7377
  %7382 = fadd fast float %7381, %7362
  br label %7389

; <label>:7383                                    ; preds = %7360
  %7384 = fsub fast float %7363, %7373
  %7385 = call float @dx.op.unary.f32(i32 6, float %7384)  ; FAbs(value)
  %7386 = fadd fast float %7385, %7361
  %7387 = fmul fast float %7385, %7377
  %7388 = fsub fast float %7362, %7387
  br label %7389

; <label>:7389                                    ; preds = %7383, %7378
  %7390 = phi float [ %7380, %7378 ], [ %7386, %7383 ]
  %7391 = phi float [ %7382, %7378 ], [ %7388, %7383 ]
  %7392 = fcmp fast olt float %7371, %7220
  %7393 = icmp slt i32 %7368, 3
  %7394 = and i1 %7393, %7392
  br i1 %7394, label %7360, label %7395

; <label>:7395                                    ; preds = %7389
  br label %7396

; <label>:7396                                    ; preds = %7395, %7353
  %7397 = phi float [ %7218, %7353 ], [ %7390, %7395 ]
  %7398 = phi float [ %7219, %7353 ], [ %7391, %7395 ]
  %7399 = fsub fast float %7134, %7397
  %7400 = select i1 %7136, float %7397, float %7399
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.CBufRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.CBufRet.f32 %7405, 2
  %7409 = extractvalue %dx.types.CBufRet.f32 %7405, 3
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 3
  %7412 = call float @dx.op.binary.f32(i32 36, float %7398, float %7411)  ; FMin(a,b)
  %7413 = fmul fast float %7409, %7400
  %7414 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7415 = fsub fast float %7406, %7402
  %7416 = fsub fast float %7407, %7403
  %7417 = fsub fast float %7408, %7404
  %7418 = fmul fast float %7414, %7415
  %7419 = fmul fast float %7414, %7416
  %7420 = fmul fast float %7414, %7417
  %7421 = fadd fast float %7418, %7402
  %7422 = fadd fast float %7419, %7403
  %7423 = fadd fast float %7420, %7404
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7427 = fadd fast float %7426, %7425
  %7428 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7424, 2
  %7430 = extractvalue %dx.types.CBufRet.f32 %7424, 3
  %7431 = fadd fast float %7430, %7429
  %7432 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7433 = fmul fast float %7428, %7412
  %7434 = fmul fast float %7433, %7432
  br label %7435

; <label>:7435                                    ; preds = %7396, %7315, %7150, %7132, %7130
  %7436 = phi float [ %7159, %7150 ], [ %7318, %7315 ], [ %7400, %7396 ], [ 0.000000e+00, %7130 ], [ 0.000000e+00, %7132 ]
  %7437 = phi float [ %7193, %7150 ], [ %7352, %7315 ], [ %7434, %7396 ], [ 0.000000e+00, %7130 ], [ 0.000000e+00, %7132 ]
  %7438 = phi float [ %7180, %7150 ], [ %7339, %7315 ], [ %7421, %7396 ], [ 0.000000e+00, %7130 ], [ 0.000000e+00, %7132 ]
  %7439 = phi float [ %7181, %7150 ], [ %7340, %7315 ], [ %7422, %7396 ], [ 0.000000e+00, %7130 ], [ 0.000000e+00, %7132 ]
  %7440 = phi float [ %7182, %7150 ], [ %7341, %7315 ], [ %7423, %7396 ], [ 0.000000e+00, %7130 ], [ 0.000000e+00, %7132 ]
  %7441 = fmul fast float %7073, %7437
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 2
  %7444 = fsub fast float %7080, %7443
  %7445 = fcmp fast olt float %7441, -2.000000e+01
  %7446 = call float @dx.op.unary.f32(i32 21, float %7441)  ; Exp(value)
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 2
  %7449 = extractvalue %dx.types.CBufRet.f32 %7447, 3
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7452 = fmul fast float %7449, %7444
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fsub fast float 1.000000e+00, %7453
  %7455 = fmul fast float %7065, 5.000000e-01
  %7456 = fadd fast float %7455, 5.000000e-01
  %7457 = call float @dx.op.unary.f32(i32 7, float %7456)  ; Saturate(value)
  %7458 = fsub fast float 1.000000e+00, %7457
  %7459 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7454)  ; FMax(a,b)
  %7460 = fdiv fast float %7458, %7459
  %7461 = fsub fast float %7444, %7022
  %7462 = call float @dx.op.unary.f32(i32 6, float %7461)  ; FAbs(value)
  %7463 = fmul fast float %7462, %7448
  %7464 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7465 = fsub fast float 1.000000e+00, %7463
  %7466 = fmul fast float %7465, %7464
  %7467 = fadd fast float %7466, %7463
  %7468 = fmul fast float %7451, %7444
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = fsub fast float 1.000000e+00, %7467
  %7471 = fmul fast float %7470, %7469
  %7472 = fadd fast float %7471, %7467
  %7473 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7474 = fadd fast float %7446, -1.000000e+00
  %7475 = select i1 %7445, float -1.000000e+00, float %7474
  %7476 = fmul fast float %7473, %7475
  %7477 = fadd fast float %7476, 1.000000e+00
  %7478 = fsub fast float -0.000000e+00, %7476
  %7479 = fmul fast float %7438, %7478
  %7480 = fmul fast float %7439, %7478
  %7481 = fmul fast float %7440, %7478
  br label %7482

; <label>:7482                                    ; preds = %7435, %7031
  %7483 = phi float [ %7436, %7435 ], [ 0.000000e+00, %7031 ]
  %7484 = phi float [ %7477, %7435 ], [ 1.000000e+00, %7031 ]
  %7485 = phi float [ %7479, %7435 ], [ 0.000000e+00, %7031 ]
  %7486 = phi float [ %7480, %7435 ], [ 0.000000e+00, %7031 ]
  %7487 = phi float [ %7481, %7435 ], [ 0.000000e+00, %7031 ]
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %7490 = fsub fast float 1.000000e+00, %7484
  %7491 = fmul fast float %7490, %7066
  %7492 = fmul fast float %7491, %7489
  %7493 = fsub fast float %7066, %7492
  br i1 %7059, label %7494, label %7523, !dx.controlflow.hints !151

; <label>:7494                                    ; preds = %7482
  %7495 = fmul fast float %7067, %7056
  %7496 = fadd fast float %7495, %7057
  %7497 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7498 = fmul fast float %7038, %7493
  %7499 = fsub fast float -0.000000e+00, %7498
  %7500 = fmul fast float %7039, %7493
  %7501 = fsub fast float -0.000000e+00, %7500
  %7502 = call float @dx.op.unary.f32(i32 21, float %7499)  ; Exp(value)
  %7503 = call float @dx.op.unary.f32(i32 21, float %7501)  ; Exp(value)
  %7504 = call float @dx.op.binary.f32(i32 35, float %7046, float %7502)  ; FMax(a,b)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7046, float %7503)  ; FMax(a,b)
  %7506 = fsub fast float %7505, %7504
  %7507 = fmul fast float %7506, %7497
  %7508 = fadd fast float %7507, %7504
  %7509 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7510 = fsub fast float %7043, %7048
  %7511 = fsub fast float %7044, %7049
  %7512 = fsub fast float %7045, %7050
  %7513 = fmul fast float %7497, %7510
  %7514 = fmul fast float %7497, %7511
  %7515 = fmul fast float %7497, %7512
  %7516 = fadd fast float %7513, %7048
  %7517 = fadd fast float %7514, %7049
  %7518 = fadd fast float %7515, %7050
  %7519 = fsub fast float 1.000000e+00, %7509
  %7520 = fmul fast float %7519, %7516
  %7521 = fmul fast float %7519, %7517
  %7522 = fmul fast float %7519, %7518
  br label %7582

; <label>:7523                                    ; preds = %7482
  %7524 = fmul fast float %7493, %7055
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  %7526 = fsub fast float 2.000000e+00, %7525
  %7527 = fmul fast float %7525, 9.921875e-01
  %7528 = fmul fast float %7527, %7526
  %7529 = fadd fast float %7528, 3.906250e-03
  %7530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %7529, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = fsub fast float %7525, %7531
  %7533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7532)  ; FMax(a,b)
  %7534 = fmul fast float %7041, %7022
  %7535 = call float @dx.op.unary.f32(i32 6, float %7534)  ; FAbs(value)
  %7536 = fcmp fast ogt float %7535, 0x3EB0C6F7A0000000
  br i1 %7536, label %7537, label %7543, !dx.controlflow.hints !152

; <label>:7537                                    ; preds = %7523
  %7538 = fmul fast float %7534, 0xBFF7154760000000
  %7539 = call float @dx.op.unary.f32(i32 21, float %7538)  ; Exp(value)
  %7540 = fsub fast float 1.000000e+00, %7539
  %7541 = fdiv fast float %7540, %7534
  %7542 = fmul fast float %7541, %7051
  br label %7543

; <label>:7543                                    ; preds = %7537, %7523
  %7544 = phi float [ %7542, %7537 ], [ %7051, %7523 ]
  %7545 = fadd fast float %7544, %7053
  %7546 = fmul fast float %7545, %7533
  %7547 = fmul fast float %7038, %7546
  %7548 = fsub fast float -0.000000e+00, %7547
  %7549 = fmul fast float %7039, %7546
  %7550 = fsub fast float -0.000000e+00, %7549
  %7551 = fmul fast float %7040, %7546
  %7552 = fsub fast float -0.000000e+00, %7551
  %7553 = call float @dx.op.unary.f32(i32 21, float %7548)  ; Exp(value)
  %7554 = call float @dx.op.unary.f32(i32 21, float %7550)  ; Exp(value)
  %7555 = call float @dx.op.unary.f32(i32 21, float %7552)  ; Exp(value)
  %7556 = fmul fast float %7067, %7067
  %7557 = fadd fast float %7556, 1.000000e+00
  %7558 = fmul fast float %7557, 0x3FAE8EC8A0000000
  %7559 = fmul fast float %7558, %7048
  %7560 = fmul fast float %7558, %7049
  %7561 = fmul fast float %7558, %7050
  %7562 = fmul fast float %7067, %7046
  %7563 = fsub fast float 1.000000e+00, %7562
  %7564 = fmul fast float %7046, %7046
  %7565 = fsub fast float 1.000000e+00, %7564
  %7566 = fmul fast float %7565, 0x3FB45F3060000000
  %7567 = fmul fast float %7563, %7563
  %7568 = fdiv fast float 1.000000e+00, %7567
  %7569 = fmul fast float %7566, %7568
  %7570 = fmul fast float %7569, %7043
  %7571 = fmul fast float %7569, %7044
  %7572 = fmul fast float %7569, %7045
  %7573 = fadd fast float %7570, %7559
  %7574 = fadd fast float %7571, %7560
  %7575 = fadd fast float %7572, %7561
  %7576 = fsub fast float 1.000000e+00, %7553
  %7577 = fsub fast float 1.000000e+00, %7554
  %7578 = fsub fast float 1.000000e+00, %7555
  %7579 = fmul fast float %7573, %7576
  %7580 = fmul fast float %7574, %7577
  %7581 = fmul fast float %7575, %7578
  br label %7582

; <label>:7582                                    ; preds = %7543, %7494
  %7583 = phi float [ %7520, %7494 ], [ %7579, %7543 ]
  %7584 = phi float [ %7521, %7494 ], [ %7580, %7543 ]
  %7585 = phi float [ %7522, %7494 ], [ %7581, %7543 ]
  %7586 = phi float [ %7509, %7494 ], [ %7553, %7543 ]
  %7587 = phi float [ %7509, %7494 ], [ %7554, %7543 ]
  %7588 = phi float [ %7509, %7494 ], [ %7555, %7543 ]
  br i1 %7075, label %7589, label %7787, !dx.controlflow.hints !153

; <label>:7589                                    ; preds = %7582
  %7590 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7591 = fmul fast float %7590, %7490
  %7592 = fsub fast float %7485, %7583
  %7593 = fsub fast float %7486, %7584
  %7594 = fsub fast float %7487, %7585
  %7595 = fmul fast float %7591, %7592
  %7596 = fmul fast float %7591, %7593
  %7597 = fmul fast float %7591, %7594
  %7598 = fadd fast float %7595, %7583
  %7599 = fadd fast float %7596, %7584
  %7600 = fadd fast float %7597, %7585
  %7601 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7586)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7587)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7588)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7484)  ; FMax(a,b)
  %7605 = call float @dx.op.binary.f32(i32 35, float %7483, float %7493)  ; FMax(a,b)
  %7606 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7605)  ; FMax(a,b)
  %7607 = fdiv fast float %7483, %7606
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fdiv fast float %7493, %7606
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fcmp fast une float %7604, 1.000000e+00
  br i1 %7611, label %7612, label %7625, !dx.controlflow.hints !154

; <label>:7612                                    ; preds = %7589
  %7613 = call float @dx.op.unary.f32(i32 23, float %7604)  ; Log(value)
  %7614 = fmul fast float %7613, 0x3FE62E4300000000
  %7615 = fmul fast float %7485, %7614
  %7616 = fsub fast float -0.000000e+00, %7615
  %7617 = fmul fast float %7486, %7614
  %7618 = fsub fast float -0.000000e+00, %7617
  %7619 = fmul fast float %7487, %7614
  %7620 = fsub fast float -0.000000e+00, %7619
  %7621 = fsub fast float 1.000000e+00, %7604
  %7622 = fdiv fast float %7616, %7621
  %7623 = fdiv fast float %7618, %7621
  %7624 = fdiv fast float %7620, %7621
  br label %7625

; <label>:7625                                    ; preds = %7612, %7589
  %7626 = phi float [ %7622, %7612 ], [ %7485, %7589 ]
  %7627 = phi float [ %7623, %7612 ], [ %7486, %7589 ]
  %7628 = phi float [ %7624, %7612 ], [ %7487, %7589 ]
  %7629 = phi float [ %7614, %7612 ], [ 0.000000e+00, %7589 ]
  %7630 = fcmp fast une float %7601, 1.000000e+00
  br i1 %7630, label %7631, label %7638, !dx.controlflow.hints !155

; <label>:7631                                    ; preds = %7625
  %7632 = call float @dx.op.unary.f32(i32 23, float %7601)  ; Log(value)
  %7633 = fmul fast float %7632, 0x3FE62E4300000000
  %7634 = fmul fast float %7598, %7633
  %7635 = fsub fast float -0.000000e+00, %7634
  %7636 = fsub fast float 1.000000e+00, %7601
  %7637 = fdiv fast float %7635, %7636
  br label %7638

; <label>:7638                                    ; preds = %7631, %7625
  %7639 = phi float [ %7637, %7631 ], [ %7598, %7625 ]
  %7640 = phi float [ %7633, %7631 ], [ 0.000000e+00, %7625 ]
  %7641 = fcmp fast une float %7602, 1.000000e+00
  br i1 %7641, label %7642, label %7649, !dx.controlflow.hints !155

; <label>:7642                                    ; preds = %7638
  %7643 = call float @dx.op.unary.f32(i32 23, float %7602)  ; Log(value)
  %7644 = fmul fast float %7643, 0x3FE62E4300000000
  %7645 = fmul fast float %7599, %7644
  %7646 = fsub fast float -0.000000e+00, %7645
  %7647 = fsub fast float 1.000000e+00, %7602
  %7648 = fdiv fast float %7646, %7647
  br label %7649

; <label>:7649                                    ; preds = %7642, %7638
  %7650 = phi float [ %7648, %7642 ], [ %7599, %7638 ]
  %7651 = phi float [ %7644, %7642 ], [ 0.000000e+00, %7638 ]
  %7652 = fcmp fast une float %7603, 1.000000e+00
  br i1 %7652, label %7653, label %7660, !dx.controlflow.hints !155

; <label>:7653                                    ; preds = %7649
  %7654 = call float @dx.op.unary.f32(i32 23, float %7603)  ; Log(value)
  %7655 = fmul fast float %7654, 0x3FE62E4300000000
  %7656 = fmul fast float %7600, %7655
  %7657 = fsub fast float -0.000000e+00, %7656
  %7658 = fsub fast float 1.000000e+00, %7603
  %7659 = fdiv fast float %7657, %7658
  br label %7660

; <label>:7660                                    ; preds = %7653, %7649
  %7661 = phi float [ %7659, %7653 ], [ %7600, %7649 ]
  %7662 = phi float [ %7655, %7653 ], [ 0.000000e+00, %7649 ]
  %7663 = fmul fast float %7626, %7610
  %7664 = fmul fast float %7627, %7610
  %7665 = fmul fast float %7628, %7610
  %7666 = fmul fast float %7629, %7610
  %7667 = fmul fast float %7639, %7608
  %7668 = fmul fast float %7650, %7608
  %7669 = fmul fast float %7661, %7608
  %7670 = fmul fast float %7640, %7608
  %7671 = fmul fast float %7651, %7608
  %7672 = fmul fast float %7662, %7608
  %7673 = fadd fast float %7667, %7663
  %7674 = fadd fast float %7668, %7664
  %7675 = fadd fast float %7669, %7665
  %7676 = fadd fast float %7670, %7666
  %7677 = fadd fast float %7671, %7666
  %7678 = fadd fast float %7672, %7666
  %7679 = fcmp fast une float %7676, 0.000000e+00
  br i1 %7679, label %7680, label %7687, !dx.controlflow.hints !156

; <label>:7680                                    ; preds = %7660
  %7681 = fmul fast float %7676, 0x3FF7154760000000
  %7682 = call float @dx.op.unary.f32(i32 21, float %7681)  ; Exp(value)
  %7683 = fsub fast float 1.000000e+00, %7682
  %7684 = fmul fast float %7673, %7683
  %7685 = fsub fast float -0.000000e+00, %7684
  %7686 = fdiv fast float %7685, %7676
  br label %7687

; <label>:7687                                    ; preds = %7680, %7660
  %7688 = phi float [ %7682, %7680 ], [ 1.000000e+00, %7660 ]
  %7689 = phi float [ %7686, %7680 ], [ %7673, %7660 ]
  %7690 = fcmp fast une float %7677, 0.000000e+00
  br i1 %7690, label %7691, label %7698, !dx.controlflow.hints !156

; <label>:7691                                    ; preds = %7687
  %7692 = fmul fast float %7677, 0x3FF7154760000000
  %7693 = call float @dx.op.unary.f32(i32 21, float %7692)  ; Exp(value)
  %7694 = fsub fast float 1.000000e+00, %7693
  %7695 = fmul fast float %7674, %7694
  %7696 = fsub fast float -0.000000e+00, %7695
  %7697 = fdiv fast float %7696, %7677
  br label %7698

; <label>:7698                                    ; preds = %7691, %7687
  %7699 = phi float [ %7693, %7691 ], [ 1.000000e+00, %7687 ]
  %7700 = phi float [ %7697, %7691 ], [ %7674, %7687 ]
  %7701 = fcmp fast une float %7678, 0.000000e+00
  br i1 %7701, label %7702, label %7709, !dx.controlflow.hints !156

; <label>:7702                                    ; preds = %7698
  %7703 = fmul fast float %7678, 0x3FF7154760000000
  %7704 = call float @dx.op.unary.f32(i32 21, float %7703)  ; Exp(value)
  %7705 = fsub fast float 1.000000e+00, %7704
  %7706 = fmul fast float %7675, %7705
  %7707 = fsub fast float -0.000000e+00, %7706
  %7708 = fdiv fast float %7707, %7678
  br label %7709

; <label>:7709                                    ; preds = %7702, %7698
  %7710 = phi float [ %7704, %7702 ], [ 1.000000e+00, %7698 ]
  %7711 = phi float [ %7708, %7702 ], [ %7675, %7698 ]
  %7712 = fcmp fast ogt float %7608, %7610
  br i1 %7712, label %7713, label %7733

; <label>:7713                                    ; preds = %7709
  %7714 = fsub fast float 1.000000e+00, %7610
  %7715 = fmul fast float %7626, %7714
  %7716 = fmul fast float %7627, %7714
  %7717 = fmul fast float %7628, %7714
  %7718 = fmul fast float %7629, %7714
  %7719 = fcmp fast une float %7718, 0.000000e+00
  br i1 %7719, label %7720, label %7771, !dx.controlflow.hints !157

; <label>:7720                                    ; preds = %7713
  %7721 = fmul fast float %7718, 0x3FF7154760000000
  %7722 = call float @dx.op.unary.f32(i32 21, float %7721)  ; Exp(value)
  %7723 = fsub fast float 1.000000e+00, %7722
  %7724 = fmul fast float %7715, %7723
  %7725 = fsub fast float -0.000000e+00, %7724
  %7726 = fmul fast float %7716, %7723
  %7727 = fsub fast float -0.000000e+00, %7726
  %7728 = fmul fast float %7717, %7723
  %7729 = fsub fast float -0.000000e+00, %7728
  %7730 = fdiv fast float %7725, %7718
  %7731 = fdiv fast float %7727, %7718
  %7732 = fdiv fast float %7729, %7718
  br label %7771

; <label>:7733                                    ; preds = %7709
  %7734 = fsub fast float 1.000000e+00, %7608
  %7735 = fmul fast float %7639, %7734
  %7736 = fmul fast float %7650, %7734
  %7737 = fmul fast float %7661, %7734
  %7738 = fmul fast float %7640, %7734
  %7739 = fmul fast float %7651, %7734
  %7740 = fmul fast float %7662, %7734
  %7741 = fcmp fast une float %7738, 0.000000e+00
  br i1 %7741, label %7742, label %7749, !dx.controlflow.hints !156

; <label>:7742                                    ; preds = %7733
  %7743 = fmul fast float %7738, 0x3FF7154760000000
  %7744 = call float @dx.op.unary.f32(i32 21, float %7743)  ; Exp(value)
  %7745 = fsub fast float 1.000000e+00, %7744
  %7746 = fmul fast float %7735, %7745
  %7747 = fsub fast float -0.000000e+00, %7746
  %7748 = fdiv fast float %7747, %7738
  br label %7749

; <label>:7749                                    ; preds = %7742, %7733
  %7750 = phi float [ %7748, %7742 ], [ %7735, %7733 ]
  %7751 = phi float [ %7744, %7742 ], [ 1.000000e+00, %7733 ]
  %7752 = fcmp fast une float %7739, 0.000000e+00
  br i1 %7752, label %7753, label %7760, !dx.controlflow.hints !156

; <label>:7753                                    ; preds = %7749
  %7754 = fmul fast float %7739, 0x3FF7154760000000
  %7755 = call float @dx.op.unary.f32(i32 21, float %7754)  ; Exp(value)
  %7756 = fsub fast float 1.000000e+00, %7755
  %7757 = fmul fast float %7736, %7756
  %7758 = fsub fast float -0.000000e+00, %7757
  %7759 = fdiv fast float %7758, %7739
  br label %7760

; <label>:7760                                    ; preds = %7753, %7749
  %7761 = phi float [ %7759, %7753 ], [ %7736, %7749 ]
  %7762 = phi float [ %7755, %7753 ], [ 1.000000e+00, %7749 ]
  %7763 = fcmp fast une float %7740, 0.000000e+00
  br i1 %7763, label %7764, label %7771, !dx.controlflow.hints !156

; <label>:7764                                    ; preds = %7760
  %7765 = fmul fast float %7740, 0x3FF7154760000000
  %7766 = call float @dx.op.unary.f32(i32 21, float %7765)  ; Exp(value)
  %7767 = fsub fast float 1.000000e+00, %7766
  %7768 = fmul fast float %7737, %7767
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = fdiv fast float %7769, %7740
  br label %7771

; <label>:7771                                    ; preds = %7764, %7760, %7720, %7713
  %7772 = phi float [ %7770, %7764 ], [ %7732, %7720 ], [ %7717, %7713 ], [ %7737, %7760 ]
  %7773 = phi float [ %7761, %7764 ], [ %7731, %7720 ], [ %7716, %7713 ], [ %7761, %7760 ]
  %7774 = phi float [ %7750, %7764 ], [ %7730, %7720 ], [ %7715, %7713 ], [ %7750, %7760 ]
  %7775 = phi float [ %7766, %7764 ], [ %7722, %7720 ], [ 1.000000e+00, %7713 ], [ 1.000000e+00, %7760 ]
  %7776 = phi float [ %7762, %7764 ], [ %7722, %7720 ], [ 1.000000e+00, %7713 ], [ %7762, %7760 ]
  %7777 = phi float [ %7751, %7764 ], [ %7722, %7720 ], [ 1.000000e+00, %7713 ], [ %7751, %7760 ]
  %7778 = fmul fast float %7777, %7689
  %7779 = fmul fast float %7776, %7700
  %7780 = fmul fast float %7775, %7711
  %7781 = fadd fast float %7778, %7774
  %7782 = fadd fast float %7779, %7773
  %7783 = fadd fast float %7780, %7772
  %7784 = fmul fast float %7777, %7688
  %7785 = fmul fast float %7776, %7699
  %7786 = fmul fast float %7775, %7710
  br label %7787

; <label>:7787                                    ; preds = %7771, %7582
  %7788 = phi float [ %7786, %7771 ], [ %7588, %7582 ]
  %7789 = phi float [ %7785, %7771 ], [ %7587, %7582 ]
  %7790 = phi float [ %7784, %7771 ], [ %7586, %7582 ]
  %7791 = phi float [ %7783, %7771 ], [ %7585, %7582 ]
  %7792 = phi float [ %7782, %7771 ], [ %7584, %7582 ]
  %7793 = phi float [ %7781, %7771 ], [ %7583, %7582 ]
  %7794 = fmul fast float %7793, %6747
  %7795 = fmul fast float %7792, %6748
  %7796 = fmul fast float %7791, %6749
  %7797 = fmul fast float %7790, %7030
  %7798 = call float @dx.op.dot3.f32(i32 55, float %7790, float %7789, float %7788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = call float @dx.op.dot3.f32(i32 55, float %7794, float %7795, float %7796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7800 = select i1 %284, float %7798, float %7790
  %7801 = select i1 %284, float %7798, float %7789
  %7802 = select i1 %284, float 1.000000e+00, float %7788
  %7803 = select i1 %284, float %7799, float %7794
  %7804 = select i1 %284, float 0.000000e+00, float %7795
  %7805 = select i1 %284, float 0.000000e+00, float %7796
  %7806 = fmul fast float %7800, %7024
  %7807 = fmul fast float %7801, %7025
  %7808 = fmul fast float %7802, %7026
  %7809 = fadd fast float %7806, %7803
  %7810 = fadd fast float %7807, %7804
  %7811 = fadd fast float %7805, %7808
  %7812 = fmul fast float %7800, %7027
  %7813 = fmul fast float %7801, %7028
  %7814 = fmul fast float %7802, %7029
  %7815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.i32 %7815, 0
  %7817 = icmp eq i32 %7816, 0
  br i1 %7817, label %8185, label %7818, !dx.controlflow.hints !158

; <label>:7818                                    ; preds = %7787
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7821 = extractvalue %dx.types.CBufRet.f32 %7819, 3
  %7822 = fmul fast float %7820, %99
  %7823 = fmul fast float %7821, %100
  %7824 = fmul fast float %7822, 2.000000e+00
  %7825 = fmul fast float %7823, 2.000000e+00
  %7826 = fsub fast float 1.000000e+00, %7824
  %7827 = fsub fast float 1.000000e+00, %7825
  %7828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.CBufRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.CBufRet.f32 %7828, 2
  %7832 = fmul fast float %7826, %7829
  %7833 = fmul fast float %7826, %7830
  %7834 = fmul fast float %7826, %7831
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.CBufRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.CBufRet.f32 %7835, 2
  %7839 = fmul fast float %7827, %7836
  %7840 = fmul fast float %7827, %7837
  %7841 = fmul fast float %7827, %7838
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7846 = fadd fast float %7839, %7843
  %7847 = fadd fast float %7846, %7832
  %7848 = fadd fast float %7840, %7844
  %7849 = fadd fast float %7848, %7833
  %7850 = fadd fast float %7841, %7845
  %7851 = fadd fast float %7850, %7834
  %7852 = fmul fast float %7847, %7023
  %7853 = fmul fast float %7849, %7023
  %7854 = fmul fast float %7851, %7023
  %7855 = fmul fast float %7852, %7852
  %7856 = fmul fast float %7853, %7853
  %7857 = fadd fast float %7855, %7856
  %7858 = fmul fast float %7854, %7854
  %7859 = fadd fast float %7857, %7858
  %7860 = call float @dx.op.unary.f32(i32 24, float %7859)  ; Sqrt(value)
  %7861 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %7862 = fsub fast float %7860, %7861
  %7863 = extractvalue %dx.types.CBufRet.f32 %6750, 2
  %7864 = fmul fast float %7862, %7863
  %7865 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7866 = fadd fast float %7865, -5.000000e-01
  %7867 = fmul fast float %7866, 2.000000e+00
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 2
  %7870 = call float @dx.op.binary.f32(i32 36, float %7869, float %7867)  ; FMin(a,b)
  %7871 = fsub fast float -0.000000e+00, %7869
  %7872 = fcmp fast ogt float %7870, %7871
  br i1 %7872, label %7873, label %8185, !dx.controlflow.hints !159

; <label>:7873                                    ; preds = %7818
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 3
  %7876 = fcmp fast ogt float %7875, 0.000000e+00
  br i1 %7876, label %7877, label %7952, !dx.controlflow.hints !160

; <label>:7877                                    ; preds = %7873
  %7878 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7879 = extractvalue %dx.types.Dimensions %7878, 0
  %7880 = sitofp i32 %7879 to float
  %7881 = extractvalue %dx.types.Dimensions %7878, 1
  %7882 = sitofp i32 %7881 to float
  %7883 = fmul fast float %7822, %7880
  %7884 = fmul fast float %7823, %7882
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 1
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = fptoui float %7887 to i32
  %7889 = fptoui float %7883 to i32
  %7890 = fptoui float %7884 to i32
  %7891 = and i32 %7888, 31
  %7892 = lshr i32 %7889, %7891
  %7893 = lshr i32 %7890, %7891
  %7894 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7888, i32 %7892, i32 %7893, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7895 = extractvalue %dx.types.ResRet.f32 %7894, 0
  %7896 = fcmp fast olt float %7895, -1.000000e+00
  %7897 = fcmp fast ogt float %7895, -1.000000e+00
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7900 = select i1 %7897, float %7899, float 1.000000e+00
  %7901 = fadd fast float %7895, 1.000000e+00
  %7902 = fmul fast float %7900, %7901
  %7903 = call float @dx.op.unary.f32(i32 6, float %7902)  ; FAbs(value)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7898, 3
  %7905 = fcmp fast oge float %7903, %7904
  %7906 = select i1 %7905, float 0x4197782600000000, float %7903
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = select i1 %7896, float %7908, float %7829
  %7912 = select i1 %7896, float %7909, float %7830
  %7913 = select i1 %7896, float %7910, float %7831
  %7914 = fmul fast float %7911, %7826
  %7915 = fmul fast float %7912, %7826
  %7916 = fmul fast float %7913, %7826
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7920 = extractvalue %dx.types.CBufRet.f32 %7917, 2
  %7921 = select i1 %7896, float %7918, float %7836
  %7922 = select i1 %7896, float %7919, float %7837
  %7923 = select i1 %7896, float %7920, float %7838
  %7924 = fmul fast float %7921, %7827
  %7925 = fmul fast float %7922, %7827
  %7926 = fmul fast float %7923, %7827
  %7927 = fadd fast float %7924, %7914
  %7928 = fadd fast float %7925, %7915
  %7929 = fadd fast float %7926, %7916
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7932 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7933 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %7934 = select i1 %7896, float %7931, float %7843
  %7935 = select i1 %7896, float %7932, float %7844
  %7936 = select i1 %7896, float %7933, float %7845
  %7937 = fadd fast float %7927, %7934
  %7938 = fadd fast float %7928, %7935
  %7939 = fadd fast float %7929, %7936
  %7940 = fmul fast float %7937, %7906
  %7941 = fmul fast float %7938, %7906
  %7942 = fmul fast float %7939, %7906
  %7943 = fmul fast float %7940, %7940
  %7944 = fmul fast float %7941, %7941
  %7945 = fadd fast float %7943, %7944
  %7946 = fmul fast float %7942, %7942
  %7947 = fadd fast float %7945, %7946
  %7948 = call float @dx.op.unary.f32(i32 24, float %7947)  ; Sqrt(value)
  %7949 = fsub fast float %7948, %7861
  %7950 = fmul fast float %7949, %7863
  %7951 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  br label %7952

; <label>:7952                                    ; preds = %7877, %7873
  %7953 = phi float [ %7951, %7877 ], [ 1.000000e+00, %7873 ]
  %7954 = fmul fast float %7870, 5.000000e-01
  %7955 = fadd fast float %7954, 5.000000e-01
  %7956 = call float @dx.op.unary.f32(i32 22, float %7955)  ; Frc(value)
  %7957 = call float @dx.op.unary.f32(i32 27, float %7956)  ; Round_ni(value)
  %7958 = call float @dx.op.unary.f32(i32 22, float %7956)  ; Frc(value)
  %7959 = fmul fast float %7958, 2.000000e+00
  %7960 = fadd fast float %7959, -1.000000e+00
  %7961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %7822, float %7823, float %7957, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7962 = extractvalue %dx.types.ResRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.ResRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.ResRet.f32 %7961, 2
  %7965 = extractvalue %dx.types.ResRet.f32 %7961, 3
  %7966 = fadd fast float %7962, -5.000000e-01
  %7967 = fadd fast float %7964, -5.000000e-01
  %7968 = fmul fast float %7966, 0xBFD5555560000000
  %7969 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7967, float %7968)  ; FMad(a,b,c)
  %7970 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7963, float 0.000000e+00)  ; FMad(a,b,c)
  %7971 = fadd fast float %7970, %7965
  %7972 = fmul fast float %7966, -7.500000e-01
  %7973 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7967, float %7972)  ; FMad(a,b,c)
  %7974 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7963, float 0.000000e+00)  ; FMad(a,b,c)
  %7975 = fadd fast float %7974, %7965
  %7976 = call float @dx.op.binary.f32(i32 35, float %7969, float -1.000000e+00)  ; FMax(a,b)
  %7977 = call float @dx.op.binary.f32(i32 35, float %7971, float -1.000000e+00)  ; FMax(a,b)
  %7978 = call float @dx.op.binary.f32(i32 35, float %7973, float -1.000000e+00)  ; FMax(a,b)
  %7979 = call float @dx.op.binary.f32(i32 35, float %7975, float -1.000000e+00)  ; FMax(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7976, float 1.000000e+00)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7977, float 1.000000e+00)  ; FMin(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7978, float 1.000000e+00)  ; FMin(a,b)
  %7983 = call float @dx.op.binary.f32(i32 36, float %7979, float 1.000000e+00)  ; FMin(a,b)
  %7984 = fcmp fast olt float %7980, 0x3FEFFF8020000000
  br i1 %7984, label %7985, label %8100, !dx.controlflow.hints !161

; <label>:7985                                    ; preds = %7952
  %7986 = extractvalue %dx.types.CBufRet.f32 %7868, 3
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 0
  %7989 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %7990 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7991 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7992 = fsub fast float %7988, %7980
  %7993 = fsub fast float %7989, %7981
  %7994 = fsub fast float %7990, %7982
  %7995 = fsub fast float %7991, %7983
  %7996 = fmul fast float %7992, %7986
  %7997 = fmul fast float %7993, %7986
  %7998 = fmul fast float %7994, %7986
  %7999 = fmul fast float %7995, %7986
  %8000 = fadd fast float %7996, %7980
  %8001 = fadd fast float %7997, %7981
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fadd fast float %7998, %7982
  %8004 = fadd fast float %7999, %7983
  %8005 = fmul fast float %8000, %8000
  %8006 = fsub fast float %8001, %8005
  %8007 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8006)  ; FMax(a,b)
  %8008 = fdiv fast float 1.000000e+00, %8007
  %8009 = fmul fast float %8001, %8000
  %8010 = fsub fast float %8003, %8009
  %8011 = fsub fast float %7960, %8000
  %8012 = fmul fast float %7960, %7960
  %8013 = fsub fast float %8012, %8001
  %8014 = fmul fast float %8011, %8008
  %8015 = fmul fast float %8014, %8010
  %8016 = fsub fast float %8013, %8015
  %8017 = fmul fast float %8001, %8001
  %8018 = fsub fast float %8004, %8017
  %8019 = fmul fast float %8010, %8010
  %8020 = fmul fast float %8019, %8008
  %8021 = fsub fast float %8018, %8020
  %8022 = fdiv fast float %8016, %8021
  %8023 = fmul fast float %8010, %8022
  %8024 = fsub fast float %8011, %8023
  %8025 = fmul fast float %8024, %8008
  %8026 = fmul fast float %8025, %8000
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %8001, %8022
  %8029 = fsub fast float %8027, %8028
  %8030 = fmul fast float %8025, %8025
  %8031 = fmul fast float %8022, 4.000000e+00
  %8032 = fmul fast float %8031, %8029
  %8033 = fsub fast float %8030, %8032
  %8034 = call float @dx.op.unary.f32(i32 24, float %8033)  ; Sqrt(value)
  %8035 = fcmp fast oge float %8025, 0.000000e+00
  %8036 = fsub fast float -0.000000e+00, %8034
  %8037 = select i1 %8035, float %8036, float %8034
  %8038 = fsub fast float %8037, %8025
  %8039 = fdiv fast float %8038, %8022
  %8040 = fdiv fast float %8029, %8038
  %8041 = fmul fast float %8039, 5.000000e-01
  %8042 = fmul fast float %8040, 2.000000e+00
  %8043 = select i1 %8035, float %8041, float %8042
  %8044 = select i1 %8035, float %8042, float %8041
  %8045 = call float @dx.op.binary.f32(i32 35, float %8043, float %8044)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8043, float %8044)  ; FMin(a,b)
  %8047 = fcmp fast ogt float %7960, %8046
  br i1 %8047, label %8048, label %8058

; <label>:8048                                    ; preds = %7985
  %8049 = fsub fast float %7960, %8046
  %8050 = fsub fast float %8045, %8046
  %8051 = fmul fast float %8049, %8050
  %8052 = fmul fast float %8045, %7960
  %8053 = fadd fast float %8045, %7960
  %8054 = fmul fast float %8053, %8000
  %8055 = fadd fast float %8052, %8001
  %8056 = fsub fast float %8055, %8054
  %8057 = fdiv fast float %8056, %8051
  br label %8058

; <label>:8058                                    ; preds = %8048, %7985
  %8059 = phi float [ %8057, %8048 ], [ 0.000000e+00, %7985 ]
  %8060 = fcmp fast ogt float %7960, %8045
  %8061 = fsub fast float %7960, %8045
  br i1 %8060, label %8062, label %8072

; <label>:8062                                    ; preds = %8058
  %8063 = fsub fast float %8045, %8046
  %8064 = fmul fast float %8063, %8061
  %8065 = fmul fast float %8046, %7960
  %8066 = fadd fast float %8046, %7960
  %8067 = fmul fast float %8066, %8000
  %8068 = fsub fast float %8002, %8065
  %8069 = fadd fast float %8068, %8067
  %8070 = fdiv fast float %8069, %8064
  %8071 = fadd fast float %8070, %8059
  br label %8072

; <label>:8072                                    ; preds = %8062, %8058
  %8073 = phi float [ %8071, %8062 ], [ %8059, %8058 ]
  %8074 = fsub fast float %7960, %8046
  %8075 = fmul fast float %8074, %8061
  %8076 = fmul fast float %8046, %8045
  %8077 = fadd fast float %8046, %8045
  %8078 = fmul fast float %8077, %8000
  %8079 = fadd fast float %8076, %8001
  %8080 = fsub fast float %8079, %8078
  %8081 = fdiv fast float %8080, %8075
  %8082 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  %8083 = fcmp fast oeq float %6751, 0.000000e+00
  %8084 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %8085 = fcmp fast oeq float %8084, 0.000000e+00
  %8086 = or i1 %8083, %8085
  %8087 = fmul fast float %8084, 2.000000e+00
  %8088 = fadd fast float %7869, %7870
  %8089 = fdiv fast float %8088, %8087
  %8090 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  %8091 = fmul fast float %8090, 2.000000e+00
  %8092 = fsub fast float 3.000000e+00, %8091
  %8093 = fmul fast float %8090, %8090
  %8094 = fmul fast float %8093, %8092
  %8095 = select i1 %8086, float 1.000000e+00, float %8094
  %8096 = fmul fast float %8081, %6751
  %8097 = fadd fast float %8082, %8096
  %8098 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8099 = fmul fast float %8095, %8098
  br label %8100

; <label>:8100                                    ; preds = %8072, %7952
  %8101 = phi float [ %8099, %8072 ], [ 0.000000e+00, %7952 ]
  %8102 = fsub fast float 1.000000e+00, %8101
  %8103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %37, float %7822, float %7823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8104 = extractvalue %dx.types.ResRet.f32 %8103, 0
  %8105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.i32 %8105, 2
  %8107 = icmp eq i32 %8106, 0
  br i1 %8107, label %8113, label %8108

; <label>:8108                                    ; preds = %8100
  %8109 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8110 = fadd fast float %8104, -1.000000e+00
  %8111 = fmul fast float %8109, %8110
  %8112 = fadd fast float %8111, 1.000000e+00
  br label %8113

; <label>:8113                                    ; preds = %8108, %8100
  %8114 = phi float [ %8112, %8108 ], [ %8102, %8100 ]
  br i1 %7876, label %8115, label %8133

; <label>:8115                                    ; preds = %8113
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 1
  %8118 = fsub fast float %7953, %8117
  %8119 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8120 = fsub fast float %7953, %7875
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = fsub fast float %8119, %8121
  %8123 = fsub fast float %7955, %8121
  %8124 = fdiv fast float %8123, %8122
  %8125 = call float @dx.op.unary.f32(i32 7, float %8124)  ; Saturate(value)
  %8126 = fmul fast float %8125, 2.000000e+00
  %8127 = fsub fast float 3.000000e+00, %8126
  %8128 = fsub fast float %8104, %8114
  %8129 = fmul fast float %8125, %8125
  %8130 = fmul fast float %8129, %8128
  %8131 = fmul fast float %8130, %8127
  %8132 = fadd fast float %8131, %8114
  br label %8133

; <label>:8133                                    ; preds = %8115, %8113
  %8134 = phi float [ %8132, %8115 ], [ %8114, %8113 ]
  %8135 = call float @dx.op.binary.f32(i32 35, float %8104, float %8134)  ; FMax(a,b)
  %8136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.i32 %8136, 2
  %8138 = and i32 %8137, 1
  %8139 = icmp eq i32 %8138, 0
  %8140 = fcmp fast une float %8135, 1.000000e+00
  %8141 = and i1 %8140, %8139
  br i1 %8141, label %8142, label %8161

; <label>:8142                                    ; preds = %8133
  %8143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %7822, float %7823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8144 = extractvalue %dx.types.ResRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.ResRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.ResRet.f32 %8143, 2
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %8149 = fmul fast float %8148, %8144
  %8150 = fmul fast float %8148, %8145
  %8151 = fmul fast float %8148, %8146
  %8152 = fcmp fast ogt float %8104, 0x3FEFFF2E40000000
  %8153 = fsub fast float 1.000000e+00, %8135
  %8154 = fsub fast float 1.000000e+00, %8104
  %8155 = fdiv fast float %8153, %8154
  %8156 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8157 = select i1 %8152, float 0.000000e+00, float %8156
  %8158 = fmul fast float %8149, %8157
  %8159 = fmul fast float %8150, %8157
  %8160 = fmul fast float %8151, %8157
  br label %8161

; <label>:8161                                    ; preds = %8142, %8133
  %8162 = phi float [ 0.000000e+00, %8133 ], [ %8158, %8142 ]
  %8163 = phi float [ 0.000000e+00, %8133 ], [ %8159, %8142 ]
  %8164 = phi float [ 0.000000e+00, %8133 ], [ %8160, %8142 ]
  %8165 = fmul fast float %8162, %6747
  %8166 = fmul fast float %8163, %6748
  %8167 = fmul fast float %8164, %6749
  %8168 = fmul fast float %8135, %7797
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8135, float %8135, float %8135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = call float @dx.op.dot3.f32(i32 55, float %8165, float %8166, float %8167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8171 = select i1 %284, float %8169, float %8135
  %8172 = select i1 %284, float 1.000000e+00, float %8135
  %8173 = select i1 %284, float %8170, float %8165
  %8174 = select i1 %284, float 0.000000e+00, float %8166
  %8175 = select i1 %284, float 0.000000e+00, float %8167
  %8176 = fmul fast float %8171, %7809
  %8177 = fmul fast float %8171, %7810
  %8178 = fmul fast float %8172, %7811
  %8179 = fadd fast float %8176, %8173
  %8180 = fadd fast float %8177, %8174
  %8181 = fadd fast float %8175, %8178
  %8182 = fmul fast float %8171, %7812
  %8183 = fmul fast float %8171, %7813
  %8184 = fmul fast float %8172, %7814
  br label %8185

; <label>:8185                                    ; preds = %8161, %7818, %7787, %7019
  %8186 = phi float [ %7024, %7019 ], [ %7809, %7787 ], [ %8179, %8161 ], [ %7809, %7818 ]
  %8187 = phi float [ %7025, %7019 ], [ %7810, %7787 ], [ %8180, %8161 ], [ %7810, %7818 ]
  %8188 = phi float [ %7026, %7019 ], [ %7811, %7787 ], [ %8181, %8161 ], [ %7811, %7818 ]
  %8189 = phi float [ %7027, %7019 ], [ %7812, %7787 ], [ %8182, %8161 ], [ %7812, %7818 ]
  %8190 = phi float [ %7028, %7019 ], [ %7813, %7787 ], [ %8183, %8161 ], [ %7813, %7818 ]
  %8191 = phi float [ %7029, %7019 ], [ %7814, %7787 ], [ %8184, %8161 ], [ %7814, %7818 ]
  %8192 = phi float [ %7030, %7019 ], [ %7797, %7787 ], [ %8168, %8161 ], [ %7797, %7818 ]
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 2
  %8195 = extractvalue %dx.types.CBufRet.f32 %8193, 3
  %8196 = fmul fast float %8194, %99
  %8197 = fmul fast float %8195, %100
  %8198 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8199 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8200 = select i1 %6761, i32 2, i32 0
  %8201 = or i32 %8200, 1
  %8202 = uitofp i32 %8201 to float
  %8203 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8198, float %8199, float %8202, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8204 = extractvalue %dx.types.ResRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.ResRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.ResRet.f32 %8203, 2
  %8207 = extractvalue %dx.types.ResRet.f32 %8203, 3
  %8208 = add nuw nsw i32 %8200, 2
  %8209 = uitofp i32 %8208 to float
  %8210 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %37, float %8198, float %8199, float %8209, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.ResRet.f32 %8210, 2
  %8214 = extractvalue %dx.types.ResRet.f32 %8210, 3
  %8215 = call float @dx.op.binary.f32(i32 35, float %8205, float %8206)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8204, float %8215)  ; FMax(a,b)
  %8217 = call float @dx.op.binary.f32(i32 35, float %8216, float %8207)  ; FMax(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8212, float %8213)  ; FMin(a,b)
  %8219 = call float @dx.op.binary.f32(i32 36, float %8211, float %8218)  ; FMin(a,b)
  %8220 = call float @dx.op.binary.f32(i32 36, float %8219, float %8214)  ; FMin(a,b)
  %8221 = fmul fast float %8217, 2.550000e+02
  %8222 = fadd fast float %8221, 0x3F70101020000000
  %8223 = fptoui float %8222 to i32
  %8224 = fmul fast float %8220, 2.550000e+02
  %8225 = fadd fast float %8224, 0x3F70101020000000
  %8226 = fptoui float %8225 to i32
  %8227 = icmp ult i32 %8223, %8226
  br i1 %8227, label %8228, label %8397

; <label>:8228                                    ; preds = %8185
  %8229 = fcmp fast ogt float %89, 9.843750e-01
  %8230 = fadd fast float %7023, -4.000000e+00
  %8231 = select i1 %8229, float -4.000000e+00, float %8230
  %8232 = call float @dx.op.binary.f32(i32 35, float %8231, float 0.000000e+00)  ; FMax(a,b)
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = fadd fast float %8234, %8232
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = fmul fast float %8235, %8236
  %8238 = call float @dx.op.unary.f32(i32 23, float %8237)  ; Log(value)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8233, 3
  %8240 = fmul fast float %8239, %8238
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8243 = fmul fast float %8240, %8242
  %8244 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8245 = uitofp i32 %8223 to float
  %8246 = uitofp i32 %8226 to float
  %8247 = fadd fast float %8245, 5.000000e-01
  %8248 = fadd fast float %8246, 5.000000e-01
  %8249 = fmul fast float %8242, %8247
  %8250 = fmul fast float %8242, %8248
  %8251 = fadd fast float %8249, 0x3F0FFB4800000000
  %8252 = fadd fast float %8250, 0xBF0FFB4800000000
  %8253 = call float @dx.op.binary.f32(i32 35, float %8244, float %8251)  ; FMax(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8253, float %8252)  ; FMin(a,b)
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8259 = select i1 %6761, float %8258, float 0.000000e+00
  %8260 = fmul fast float %8256, %8254
  %8261 = fadd fast float %8259, %8260
  %8262 = fadd fast float %8259, %8257
  %8263 = fsub fast float %8256, %8257
  %8264 = fadd fast float %8263, %8259
  %8265 = call float @dx.op.binary.f32(i32 35, float %8261, float %8262)  ; FMax(a,b)
  %8266 = call float @dx.op.binary.f32(i32 36, float %8265, float %8264)  ; FMin(a,b)
  %8267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %8198, float %8199, float %8266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8268 = extractvalue %dx.types.ResRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.ResRet.f32 %8267, 1
  %8270 = extractvalue %dx.types.ResRet.f32 %8267, 2
  %8271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.i32 %8271, 0
  %8273 = extractvalue %dx.types.CBufRet.i32 %8271, 1
  %8274 = uitofp i32 %8272 to float
  %8275 = uitofp i32 %8273 to float
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = fmul fast float %8274, %8198
  %8280 = fmul fast float %8275, %8199
  %8281 = fadd fast float %8279, -5.000000e-01
  %8282 = fadd fast float %8280, -5.000000e-01
  %8283 = call float @dx.op.unary.f32(i32 22, float %8281)  ; Frc(value)
  %8284 = call float @dx.op.unary.f32(i32 22, float %8282)  ; Frc(value)
  %8285 = fmul fast float %8283, %8283
  %8286 = fmul fast float %8285, %8283
  %8287 = fsub fast float 3.000000e+00, %8283
  %8288 = fmul fast float %8285, %8287
  %8289 = fmul fast float %8283, 3.000000e+00
  %8290 = fmul fast float %8286, 3.000000e+00
  %8291 = fmul fast float %8285, 6.000000e+00
  %8292 = fsub fast float %8290, %8291
  %8293 = fadd fast float %8292, 4.000000e+00
  %8294 = fmul fast float %8293, 0x3FC5555560000000
  %8295 = fmul fast float %8286, -3.000000e+00
  %8296 = fadd fast float %8285, %8283
  %8297 = fmul fast float %8296, 3.000000e+00
  %8298 = fadd fast float %8295, 1.000000e+00
  %8299 = fadd fast float %8298, %8297
  %8300 = fmul fast float %8286, 0x3FC5555560000000
  %8301 = fmul fast float %8284, %8284
  %8302 = fmul fast float %8301, %8284
  %8303 = fsub fast float 3.000000e+00, %8284
  %8304 = fmul fast float %8301, %8303
  %8305 = fmul fast float %8284, 3.000000e+00
  %8306 = fmul fast float %8302, 3.000000e+00
  %8307 = fmul fast float %8301, 6.000000e+00
  %8308 = fsub fast float %8306, %8307
  %8309 = fadd fast float %8308, 4.000000e+00
  %8310 = fmul fast float %8309, 0x3FC5555560000000
  %8311 = fmul fast float %8302, -3.000000e+00
  %8312 = fadd fast float %8301, %8284
  %8313 = fmul fast float %8312, 3.000000e+00
  %8314 = fadd fast float %8311, 1.000000e+00
  %8315 = fadd fast float %8314, %8313
  %8316 = fmul fast float %8302, 0x3FC5555560000000
  %8317 = fadd fast float %8283, 1.000000e+00
  %8318 = fsub fast float 1.000000e+00, %8289
  %8319 = fadd fast float %8318, %8288
  %8320 = fadd fast float %8319, %8293
  %8321 = fmul fast float %8320, 0x3FC5555560000000
  %8322 = fdiv fast float %8294, %8321
  %8323 = fsub fast float %8317, %8322
  %8324 = fsub fast float 1.000000e+00, %8283
  %8325 = fadd fast float %8299, %8286
  %8326 = fmul fast float %8325, 0x3FC5555560000000
  %8327 = fdiv fast float %8300, %8326
  %8328 = fadd fast float %8324, %8327
  %8329 = fadd fast float %8284, 1.000000e+00
  %8330 = fsub fast float 1.000000e+00, %8305
  %8331 = fadd fast float %8330, %8304
  %8332 = fadd fast float %8331, %8309
  %8333 = fmul fast float %8332, 0x3FC5555560000000
  %8334 = fdiv fast float %8310, %8333
  %8335 = fsub fast float %8329, %8334
  %8336 = fsub fast float 1.000000e+00, %8284
  %8337 = fadd fast float %8315, %8302
  %8338 = fmul fast float %8337, 0x3FC5555560000000
  %8339 = fdiv fast float %8316, %8338
  %8340 = fadd fast float %8339, %8336
  %8341 = fmul fast float %8323, %8277
  %8342 = fsub fast float %8198, %8341
  %8343 = fmul fast float %8328, %8277
  %8344 = fadd fast float %8343, %8198
  %8345 = fmul fast float %8340, %8278
  %8346 = fadd fast float %8345, %8199
  %8347 = fmul fast float %8335, %8278
  %8348 = fsub fast float %8199, %8347
  %8349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8342, float %8348, float %8266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.ResRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.ResRet.f32 %8349, 2
  %8353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8344, float %8348, float %8266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.ResRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.ResRet.f32 %8353, 2
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8342, float %8346, float %8266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  %8361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %35, float %8344, float %8346, float %8266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8362 = extractvalue %dx.types.ResRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.ResRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.ResRet.f32 %8361, 2
  %8365 = fsub fast float %8358, %8350
  %8366 = fsub fast float %8359, %8351
  %8367 = fsub fast float %8360, %8352
  %8368 = fmul fast float %8365, %8338
  %8369 = fmul fast float %8366, %8338
  %8370 = fmul fast float %8367, %8338
  %8371 = fadd fast float %8368, %8350
  %8372 = fadd fast float %8369, %8351
  %8373 = fadd fast float %8370, %8352
  %8374 = fsub fast float %8362, %8354
  %8375 = fsub fast float %8363, %8355
  %8376 = fsub fast float %8364, %8356
  %8377 = fmul fast float %8374, %8338
  %8378 = fmul fast float %8375, %8338
  %8379 = fmul fast float %8376, %8338
  %8380 = fsub fast float %8354, %8371
  %8381 = fadd fast float %8380, %8377
  %8382 = fsub fast float %8355, %8372
  %8383 = fadd fast float %8382, %8378
  %8384 = fsub fast float %8356, %8373
  %8385 = fadd fast float %8384, %8379
  %8386 = fmul fast float %8381, %8326
  %8387 = fmul fast float %8383, %8326
  %8388 = fmul fast float %8385, %8326
  %8389 = fadd fast float %8386, %8371
  %8390 = fadd fast float %8387, %8372
  %8391 = fadd fast float %8388, %8373
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 1
  %8394 = fmul fast float %8389, %8393
  %8395 = fmul fast float %8390, %8393
  %8396 = fmul fast float %8391, %8393
  br label %8397

; <label>:8397                                    ; preds = %8228, %8185
  %8398 = phi float [ %8268, %8228 ], [ 1.000000e+00, %8185 ]
  %8399 = phi float [ %8269, %8228 ], [ 1.000000e+00, %8185 ]
  %8400 = phi float [ %8270, %8228 ], [ 1.000000e+00, %8185 ]
  %8401 = phi float [ %8394, %8228 ], [ 0.000000e+00, %8185 ]
  %8402 = phi float [ %8395, %8228 ], [ 0.000000e+00, %8185 ]
  %8403 = phi float [ %8396, %8228 ], [ 0.000000e+00, %8185 ]
  %8404 = fmul fast float %8401, %6747
  %8405 = fmul fast float %8402, %6748
  %8406 = fmul fast float %8403, %6749
  %8407 = fmul fast float %8398, %8192
  %8408 = call float @dx.op.dot3.f32(i32 55, float %8398, float %8399, float %8400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8409 = call float @dx.op.dot3.f32(i32 55, float %8404, float %8405, float %8406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8410 = select i1 %284, float %8408, float %8398
  %8411 = select i1 %284, float %8408, float %8399
  %8412 = select i1 %284, float 1.000000e+00, float %8400
  %8413 = select i1 %284, float %8409, float %8404
  %8414 = select i1 %284, float 0.000000e+00, float %8405
  %8415 = select i1 %284, float 0.000000e+00, float %8406
  %8416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.i32 %8416, 3
  %8418 = and i32 %8417, 3
  %8419 = icmp ne i32 %8418, 0
  %8420 = and i32 %8417, 4
  %8421 = icmp ne i32 %8420, 0
  %8422 = and i1 %8419, %8421
  %8423 = and i1 %284, %8422
  br i1 %8423, label %8424, label %8430

; <label>:8424                                    ; preds = %8397
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 1
  %8427 = fadd fast float %8407, -1.000000e+00
  %8428 = fmul fast float %8426, %8427
  %8429 = fadd fast float %8428, 1.000000e+00
  br label %8430

; <label>:8430                                    ; preds = %8424, %8397
  %8431 = phi float [ %8429, %8424 ], [ %8407, %8397 ]
  %8432 = fadd fast float %8189, %8186
  %8433 = fmul fast float %8410, %8432
  %8434 = fadd fast float %8433, %8413
  %8435 = fadd fast float %8190, %8187
  %8436 = fmul fast float %8411, %8435
  %8437 = fadd fast float %8436, %8414
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  br i1 %284, label %8440, label %8455

; <label>:8440                                    ; preds = %8430
  %8441 = fadd fast float %8434, %8437
  %8442 = fmul fast float %8439, %8441
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8445 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %8446 = fsub fast float %6736, %6730
  %8447 = fadd fast float %8446, %6737
  %8448 = fsub fast float %8447, %8445
  %8449 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %8450 = fmul fast float %8448, %8449
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = fsub fast float %8451, %8444
  %8453 = fmul fast float %8452, %8431
  %8454 = fadd fast float %8453, %8444
  br label %8481

; <label>:8455                                    ; preds = %8430
  %8456 = fadd fast float %8191, %8188
  %8457 = fmul fast float %8412, %8456
  %8458 = fadd fast float %8457, %8415
  %8459 = fmul fast float %8439, %8434
  %8460 = fmul fast float %8439, %8437
  %8461 = fmul fast float %8439, %8458
  %8462 = call float @dx.op.binary.f32(i32 35, float %8460, float %8461)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8459, float %8462)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float %6748, float %6749)  ; FMax(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %6747, float %8464)  ; FMax(a,b)
  %8466 = call float @dx.op.binary.f32(i32 35, float %8463, float %8465)  ; FMax(a,b)
  %8467 = fcmp fast ugt float %8466, 0x3F10000000000000
  br i1 %8467, label %8469, label %8468

; <label>:8468                                    ; preds = %8455
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8469

; <label>:8469                                    ; preds = %8468, %8455
  %8470 = add i32 %43, 356
  %8471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8470, i32 undef)  ; BufferLoad(srv,index,wot)
  %8472 = extractvalue %dx.types.ResRet.i32 %8471, 0
  %8473 = and i32 %8472, 32
  %8474 = icmp eq i32 %8473, 0
  br i1 %8474, label %8481, label %8475

; <label>:8475                                    ; preds = %8469
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = fmul fast float %8477, 0x3FE99999A0000000
  %8479 = fadd fast float %8477, %8459
  %8480 = fadd fast float %8478, %8461
  br label %8481

; <label>:8481                                    ; preds = %8475, %8469, %8440
  %8482 = phi float [ 1.000000e+00, %8440 ], [ %6748, %8475 ], [ %6748, %8469 ]
  %8483 = phi float [ 1.000000e+00, %8440 ], [ %6749, %8475 ], [ %6749, %8469 ]
  %8484 = phi float [ %8442, %8440 ], [ %8479, %8475 ], [ %8459, %8469 ]
  %8485 = phi float [ %8454, %8440 ], [ %8460, %8475 ], [ %8460, %8469 ]
  %8486 = phi float [ 1.000000e+00, %8440 ], [ %8480, %8475 ], [ %8461, %8469 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8484, float 3.225500e+04)  ; FMin(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8485, float 3.225500e+04)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8486, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8487)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8490 = call float @dx.op.binary.f32(i32 36, float %6747, float 3.225500e+04)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8482, float 3.225500e+04)  ; FMin(a,b)
  %8492 = call float @dx.op.binary.f32(i32 36, float %8483, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

