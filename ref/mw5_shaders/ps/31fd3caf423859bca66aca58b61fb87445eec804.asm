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
; shader hash: 58ed234daf907ded595df356b9d64593
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
  %179 = add i32 %42, 360
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = extractvalue %dx.types.ResRet.i32 %180, 1
  %183 = extractvalue %dx.types.ResRet.i32 %180, 2
  %184 = extractvalue %dx.types.ResRet.i32 %180, 3
  %185 = bitcast i32 %181 to float
  %186 = bitcast i32 %182 to float
  %187 = bitcast i32 %183 to float
  %188 = bitcast i32 %184 to float
  %189 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.unary.f32(i32 25, float %189)  ; Rsqrt(value)
  %191 = fmul fast float %190, %104
  %192 = fmul fast float %190, %105
  %193 = fmul fast float %190, %106
  %194 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %176, float %177, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = call float @dx.op.unary.f32(i32 25, float %194)  ; Rsqrt(value)
  %196 = fmul fast float %195, %176
  %197 = fmul fast float %195, %177
  %198 = fmul fast float %195, %178
  %199 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = fmul fast float %199, %199
  %201 = fmul fast float %200, %187
  %202 = fadd fast float %201, %188
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %206 = fmul fast float %205, %194
  %207 = fsub fast float %185, %206
  %208 = fmul fast float %207, %186
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %210 = fmul fast float %209, %203
  %211 = fmul fast float %97, 5.000000e-01
  %212 = fmul fast float %98, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %97
  %235 = fmul fast float %233, %98
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 114688
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float %234, float 0.000000e+00
  %241 = select i1 %239, float %235, float 0.000000e+00
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fmul fast float %243, 2.550000e+02
  %245 = fptoui float %244 to i32
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 3
  %249 = and i32 %248, 3
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %248, 4
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %265

; <label>:254                                     ; preds = %0
  %255 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %256 = fmul fast float %255, %98
  %257 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %258 = fmul fast float %257, %97
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %36, float %258, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %251, 0
  %267 = and i1 %250, %266
  br label %268

; <label>:268                                     ; preds = %265, %254
  %269 = phi i1 [ %264, %254 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %97, 2.560000e+02
  %274 = frem fast float %98, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %42, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %42, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %42, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %42, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %42, 172
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %42, 232
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %42, 52
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %42, 304
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %360, 0x3F50624DE0000000
  %364 = fmul fast float %362, 0x3F50624DE0000000
  %365 = add i32 %42, 188
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %367, 22
  %375 = shl nuw nsw i32 %374, 5
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %42, 248
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %379, 8
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %379, 16
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = add i32 %42, 68
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = add i32 %42, 320
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fmul fast float %402, 0x3F50624DE0000000
  %406 = fmul fast float %404, 0x3F50624DE0000000
  %407 = add i32 %42, 204
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = shl i32 %409, 4
  %411 = and i32 %410, 32752
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %409, 7
  %414 = and i32 %413, 32752
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %409, 22
  %417 = shl nuw nsw i32 %416, 5
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = add i32 %42, 264
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %421, 8
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = lshr i32 %421, 16
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = add i32 %42, 84
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %42, 336
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = fmul fast float %444, 0x3F50624DE0000000
  %448 = fmul fast float %446, 0x3F50624DE0000000
  %449 = add i32 %42, 348
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 32
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %451, 64
  %455 = icmp eq i32 %454, 0
  %456 = and i32 %451, 128
  %457 = icmp eq i32 %456, 0
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %477, label %462

; <label>:462                                     ; preds = %268
  %463 = add i32 %42, 556
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %465, 0
  %467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = fmul fast float %472, %81
  %474 = fmul fast float %469, %82
  %475 = fmul fast float %470, %83
  %476 = fmul fast float %471, %84
  br label %477

; <label>:477                                     ; preds = %462, %268
  %478 = phi float [ %84, %268 ], [ %476, %462 ]
  %479 = phi float [ %83, %268 ], [ %475, %462 ]
  %480 = phi float [ %82, %268 ], [ %474, %462 ]
  %481 = phi float [ %81, %268 ], [ %473, %462 ]
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 2
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %505, label %486

; <label>:486                                     ; preds = %477
  %487 = add i32 %42, 44
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %480, float 1.000000e+00
  %493 = add i32 %42, 60
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %479, float 1.000000e+00
  %499 = add i32 %42, 76
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 1
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %478, float 1.000000e+00
  br label %505

; <label>:505                                     ; preds = %486, %477
  %506 = phi float [ %478, %477 ], [ %504, %486 ]
  %507 = phi float [ %479, %477 ], [ %498, %486 ]
  %508 = phi float [ %480, %477 ], [ %492, %486 ]
  %509 = lshr i32 %483, 20
  %510 = and i32 %509, 3
  %511 = add nuw nsw i32 %510, 1
  %512 = add i32 %42, 24
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %42, 28
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = or i32 %517, %514
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %1165, label %520

; <label>:520                                     ; preds = %505
  %521 = and i32 %514, 262144
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %47, float 1.000000e+00
  %524 = select i1 %522, float %48, float 0.000000e+00
  %525 = select i1 %522, float %49, float 0.000000e+00
  %526 = select i1 %522, float %50, float 1.000000e+00
  %527 = select i1 %522, float %51, float %79
  %528 = select i1 %522, float %52, float %80
  %529 = add i32 %42, 284
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = fmul fast float %533, 0x3F50624DE0000000
  %535 = add i32 %42, 88
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = lshr i32 %537, 16
  %539 = and i32 %538, 255
  %540 = lshr i32 %537, 24
  %541 = add i32 %42, 292
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %42, 32
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = shl i32 %550, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, 1.000000e+03
  %563 = fmul fast float %321, %562
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fadd fast float %564, %311
  %566 = fmul fast float %322, %562
  %567 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %568 = fadd fast float %567, %313
  %569 = fmul fast float %534, %562
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = fmul fast float %570, 0x401921FB60000000
  %572 = fadd fast float %571, %553
  %573 = call float @dx.op.unary.f32(i32 13, float %572)  ; Sin(value)
  %574 = call float @dx.op.unary.f32(i32 12, float %572)  ; Cos(value)
  %575 = fsub fast float -0.000000e+00, %573
  %576 = fadd fast float %527, -5.000000e-01
  %577 = fadd fast float %528, -5.000000e-01
  %578 = fmul fast float %545, %576
  %579 = fmul fast float %547, %577
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fmul fast float %556, %580
  %583 = fmul fast float %559, %581
  %584 = fmul fast float %574, %582
  %585 = call float @dx.op.tertiary.f32(i32 46, float %575, float %583, float %584)  ; FMad(a,b,c)
  %586 = fmul fast float %573, %582
  %587 = call float @dx.op.tertiary.f32(i32 46, float %574, float %583, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %565, %585
  %589 = fadd fast float %568, %587
  %590 = icmp ugt i32 %539, 1
  %591 = icmp ugt i32 %537, 33554431
  %592 = or i1 %591, %590
  br i1 %592, label %593, label %618

; <label>:593                                     ; preds = %520
  %594 = add i32 %42, 228
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = fmul fast float %561, %598
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = mul nuw nsw i32 %539, %540
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %600, %602
  %604 = call float @dx.op.unary.f32(i32 27, float %603)  ; Round_ni(value)
  %605 = fptoui float %604 to i32
  %606 = urem i32 %605, %539
  %607 = udiv i32 %605, %540
  %608 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %609 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %610 = uitofp i32 %606 to float
  %611 = uitofp i32 %607 to float
  %612 = fadd fast float %608, %610
  %613 = fadd fast float %609, %611
  %614 = uitofp i32 %539 to float
  %615 = uitofp i32 %540 to float
  %616 = fdiv fast float %612, %614
  %617 = fdiv fast float %613, %615
  br label %618

; <label>:618                                     ; preds = %593, %520
  %619 = phi float [ %616, %593 ], [ %588, %520 ]
  %620 = phi float [ %617, %593 ], [ %589, %520 ]
  %621 = and i32 %514, 256
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %669, label %623

; <label>:623                                     ; preds = %618
  %624 = add i32 %42, 488
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = add i32 %42, 100
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = shl i32 %633, 4
  %635 = and i32 %634, 32752
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %633, 7
  %638 = and i32 %637, 32752
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = fsub fast float 1.000000e+00, %481
  %641 = call float @dx.op.binary.f32(i32 35, float %640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %642 = bitcast float %481 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %643, 0xC1CFBF8940000000
  %645 = fmul fast float %639, %644
  %646 = fadd fast float %645, 0x41CFBF8940000000
  %647 = fptosi float %646 to i32
  %648 = bitcast i32 %647 to float
  %649 = bitcast float %641 to i32
  %650 = sitofp i32 %649 to float
  %651 = fadd fast float %650, 0xC1CFBF8940000000
  %652 = fmul fast float %651, %639
  %653 = fadd fast float %652, 0x41CFBF8940000000
  %654 = fptosi float %653 to i32
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %648, %636
  %657 = fmul fast float %655, %636
  %658 = fsub fast float %641, %656
  %659 = fadd fast float %657, %641
  %660 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %662 = fsub fast float %630, %660
  %663 = fsub fast float %661, %660
  %664 = bitcast float %663 to i32
  %665 = sub nsw i32 2129859010, %664
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %623, %618
  %670 = phi float [ %668, %623 ], [ %481, %618 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 128
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %691, label %675

; <label>:675                                     ; preds = %669
  %676 = add i32 %42, 472
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 524288
  %686 = icmp ne i32 %685, 0
  %687 = fcmp fast ogt float %682, 0x3FE0101020000000
  %688 = select i1 %687, float 1.000000e+00, float 0.000000e+00
  %689 = select i1 %686, float %688, float %682
  %690 = fmul fast float %689, %670
  br label %691

; <label>:691                                     ; preds = %675, %669
  %692 = phi float [ %690, %675 ], [ %670, %669 ]
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 16
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %895, label %697

; <label>:697                                     ; preds = %691
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %42, 424
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = extractvalue %dx.types.ResRet.f32 %705, 3
  %710 = and i32 %699, 255
  %711 = uitofp i32 %710 to float
  %712 = lshr i32 %699, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %709, %711
  %716 = fadd fast float %715, %714
  %717 = fmul fast float %716, 0x3F70101000000000
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 512
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %730, label %722

; <label>:722                                     ; preds = %697
  %723 = add i32 %42, 508
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  br label %730

; <label>:730                                     ; preds = %722, %697
  %731 = phi float [ %729, %722 ], [ 1.000000e+00, %697 ]
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 33554432
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %842, label %736

; <label>:736                                     ; preds = %730
  %737 = add i32 %42, 224
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %42, 228
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 65535
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 24
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = and i32 %750, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %750, 8
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = lshr i32 %750, 16
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = add i32 %42, 220
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = lshr i32 %767, 24
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = and i32 %767, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %767, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %767, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = bitcast float %706 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %706, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %706
  %791 = fmul fast float %790, %789
  %792 = bitcast float %707 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %707, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %707
  %801 = fmul fast float %800, %799
  %802 = bitcast float %708 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %708, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %708
  %811 = fmul fast float %810, %809
  %812 = fsub fast float %791, %773
  %813 = fsub fast float %801, %777
  %814 = fsub fast float %811, %781
  %815 = fmul fast float %812, %741
  %816 = fmul fast float %813, %743
  %817 = fmul fast float %814, %748
  %818 = fadd fast float %815, %756
  %819 = fadd fast float %816, %760
  %820 = fadd fast float %817, %764
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fmul fast float %823, %823
  %827 = fsub fast float %824, %706
  %828 = fsub fast float %825, %707
  %829 = fsub fast float %826, %708
  %830 = fmul fast float %827, %731
  %831 = fmul fast float %828, %731
  %832 = fmul fast float %829, %731
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %831, %707
  %835 = fadd fast float %832, %708
  %836 = fadd fast float %753, %717
  %837 = fsub fast float %836, %770
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fsub fast float %838, %717
  %840 = fmul fast float %839, %731
  %841 = fadd fast float %840, %717
  br label %895

; <label>:842                                     ; preds = %730
  %843 = and i32 %733, 134217728
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %879, label %845

; <label>:845                                     ; preds = %842
  %846 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %848 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fadd fast float %847, -5.000000e-01
  %851 = fadd fast float %848, -5.000000e-01
  %852 = fmul fast float %849, %731
  %853 = fmul fast float %850, %731
  %854 = fmul fast float %851, %731
  %855 = fadd fast float %852, 5.000000e-01
  %856 = fadd fast float %853, 5.000000e-01
  %857 = fadd fast float %854, 5.000000e-01
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %860 = call float @dx.op.unary.f32(i32 24, float %708)  ; Sqrt(value)
  %861 = fmul fast float %855, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %858
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %858
  %866 = fmul fast float %856, 2.000000e+00
  %867 = fsub fast float 1.000000e+00, %866
  %868 = fmul fast float %867, %859
  %869 = fadd fast float %868, %866
  %870 = fmul fast float %869, %859
  %871 = fmul fast float %857, 2.000000e+00
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %872, %860
  %874 = fadd fast float %873, %871
  %875 = fmul fast float %874, %860
  %876 = fmul fast float %865, %865
  %877 = fmul fast float %870, %870
  %878 = fmul fast float %875, %875
  br label %895

; <label>:879                                     ; preds = %842
  %880 = fmul fast float %298, %298
  %881 = fmul fast float %302, %302
  %882 = fmul fast float %306, %306
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fadd fast float %881, -1.000000e+00
  %885 = fadd fast float %882, -1.000000e+00
  %886 = fmul fast float %731, %883
  %887 = fmul fast float %731, %884
  %888 = fmul fast float %731, %885
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fadd fast float %887, 1.000000e+00
  %891 = fadd fast float %888, 1.000000e+00
  %892 = fmul fast float %889, %706
  %893 = fmul fast float %890, %707
  %894 = fmul fast float %891, %708
  br label %895

; <label>:895                                     ; preds = %879, %845, %736, %691
  %896 = phi float [ %841, %736 ], [ %717, %845 ], [ %717, %879 ], [ 0x3FA23C0BE0000000, %691 ]
  %897 = phi float [ %833, %736 ], [ %876, %845 ], [ %892, %879 ], [ 1.000000e+00, %691 ]
  %898 = phi float [ %834, %736 ], [ %877, %845 ], [ %893, %879 ], [ 1.000000e+00, %691 ]
  %899 = phi float [ %835, %736 ], [ %878, %845 ], [ %894, %879 ], [ 1.000000e+00, %691 ]
  %900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.i32 %900, 1
  %902 = and i32 %901, 1
  %903 = icmp ne i32 %902, 0
  %904 = add i32 %42, 356
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 32
  %908 = icmp ne i32 %907, 0
  %909 = and i1 %903, %908
  %910 = select i1 %909, float 1.000000e+00, float %897
  %911 = select i1 %909, float 0x3FD3333340000000, float %898
  %912 = select i1 %909, float 0x3FD3333340000000, float %899
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 32
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %989, label %917

; <label>:917                                     ; preds = %895
  %918 = add i32 %42, 92
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %42, 440
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = and i32 %920, 255
  %932 = uitofp i32 %931 to float
  %933 = lshr i32 %920, 8
  %934 = and i32 %933, 255
  %935 = uitofp i32 %934 to float
  %936 = lshr i32 %920, 16
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101000000000
  %940 = fmul fast float %927, %932
  %941 = fadd fast float %940, %935
  %942 = fmul fast float %941, 0x3F70101000000000
  %943 = fadd fast float %928, -5.000000e-01
  %944 = fadd fast float %930, -5.000000e-01
  %945 = fmul fast float %943, %939
  %946 = fmul fast float %944, %939
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fadd fast float %946, 5.000000e-01
  %949 = fmul fast float %947, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fmul fast float %948, 2.000000e+00
  %952 = fadd fast float %951, -1.000000e+00
  %953 = fadd fast float %950, %952
  %954 = fmul fast float %953, 5.000000e-01
  %955 = fsub fast float %950, %952
  %956 = fmul fast float %955, 5.000000e-01
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float 1.000000e+00, %957
  %959 = call float @dx.op.unary.f32(i32 6, float %956)  ; FAbs(value)
  %960 = fsub fast float %958, %959
  %961 = call float @dx.op.dot3.f32(i32 55, float %954, float %956, float %960, float %954, float %956, float %960)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = call float @dx.op.unary.f32(i32 25, float %961)  ; Rsqrt(value)
  %963 = fmul fast float %954, %962
  %964 = fmul fast float %956, %962
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 67108864
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %985, label %969

; <label>:969                                     ; preds = %917
  %970 = add i32 %42, 280
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 65535
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = lshr i32 %972, 16
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = fsub fast float %942, %980
  %982 = fmul fast float %981, %974
  %983 = fadd fast float %982, %978
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  br label %985

; <label>:985                                     ; preds = %969, %917
  %986 = phi float [ %984, %969 ], [ %942, %917 ]
  %987 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %523, float %524)  ; Dot2(ax,ay,bx,by)
  %988 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %525, float %526)  ; Dot2(ax,ay,bx,by)
  br label %989

; <label>:989                                     ; preds = %985, %895
  %990 = phi float [ %986, %985 ], [ 0x3FD6666660000000, %895 ]
  %991 = phi float [ %987, %985 ], [ 0.000000e+00, %895 ]
  %992 = phi float [ %988, %985 ], [ 0.000000e+00, %895 ]
  %993 = phi float [ %929, %985 ], [ 1.000000e+00, %895 ]
  %994 = add i32 %42, 160
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 22
  %998 = shl nuw nsw i32 %997, 5
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 64
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1037, label %1004

; <label>:1004                                    ; preds = %989
  %1005 = add i32 %42, 456
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %1011, 131072
  %1013 = icmp eq i32 %1012, 0
  %1014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1009, %dx.types.Handle %93, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = fmul fast float %1015, %286
  %1019 = fmul fast float %1016, %289
  %1020 = fmul fast float %1017, %292
  br i1 %1013, label %1027, label %1021

; <label>:1021                                    ; preds = %1004
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %1018
  %1025 = fmul fast float %1023, %1019
  %1026 = fmul fast float %1023, %1020
  br label %1027

; <label>:1027                                    ; preds = %1021, %1004
  %1028 = phi float [ %1024, %1021 ], [ %1018, %1004 ]
  %1029 = phi float [ %1025, %1021 ], [ %1019, %1004 ]
  %1030 = phi float [ %1026, %1021 ], [ %1020, %1004 ]
  %1031 = fmul fast float %1028, %999
  %1032 = select i1 %269, float %1031, float %1028
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1029, float %1030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = select i1 %269, float 0.000000e+00, float %1028
  %1035 = select i1 %269, float %1033, float %1029
  %1036 = select i1 %269, float 0.000000e+00, float %1030
  br label %1037

; <label>:1037                                    ; preds = %1027, %989
  %1038 = phi float [ %1034, %1027 ], [ 0.000000e+00, %989 ]
  %1039 = phi float [ %1035, %1027 ], [ 0.000000e+00, %989 ]
  %1040 = phi float [ %1036, %1027 ], [ 0.000000e+00, %989 ]
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 1024
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1075, label %1045

; <label>:1045                                    ; preds = %1037
  %1046 = add i32 %42, 152
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = lshr i32 %1048, 8
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = lshr i32 %1048, 16
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = fmul fast float %1058, 0x3F70101020000000
  %1060 = fmul fast float %1051, %1051
  %1061 = fmul fast float %1055, %1055
  %1062 = fmul fast float %1059, %1059
  %1063 = add i32 %42, 524
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1067, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = fmul fast float %1060, %1069
  %1073 = fmul fast float %1061, %1070
  %1074 = fmul fast float %1062, %1071
  br label %1075

; <label>:1075                                    ; preds = %1045, %1037
  %1076 = phi float [ %1072, %1045 ], [ 0.000000e+00, %1037 ]
  %1077 = phi float [ %1073, %1045 ], [ 0.000000e+00, %1037 ]
  %1078 = phi float [ %1074, %1045 ], [ 0.000000e+00, %1037 ]
  %1079 = fcmp fast ogt float %1076, 0.000000e+00
  %1080 = fcmp fast ogt float %1077, 0.000000e+00
  %1081 = fcmp fast ogt float %1078, 0.000000e+00
  %1082 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1083 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1084 = call float @dx.op.unary.f32(i32 23, float %1078)  ; Log(value)
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 7
  %1088 = and i32 %1087, 32752
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fmul fast float %1082, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1089
  %1092 = fmul fast float %1083, 0xBFE62E4300000000
  %1093 = fmul fast float %1092, %1089
  %1094 = fmul fast float %1084, 0xBFE62E4300000000
  %1095 = fmul fast float %1094, %1089
  %1096 = select i1 %1079, float %1091, float 1.270000e+02
  %1097 = select i1 %1080, float %1093, float 1.270000e+02
  %1098 = select i1 %1081, float %1095, float 1.270000e+02
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 10240
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1147, label %1103

; <label>:1103                                    ; preds = %1075
  %1104 = add i32 %42, 540
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = add i32 %1106, 0
  %1108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1108, %dx.types.Handle %94, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 3
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 1048576
  %1115 = icmp ne i32 %1114, 0
  %1116 = and i32 %1113, 8192
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1133, label %1118

; <label>:1118                                    ; preds = %1103
  %1119 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1120 = select i1 %1115, float %1119, float %1110
  %1121 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1122 = select i1 %1115, float %1121, float %1110
  %1123 = add i32 %42, 96
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = lshr i32 %1125, 16
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F80101020000000
  %1130 = fmul fast float %1129, %1122
  %1131 = fmul fast float %1129, %1110
  %1132 = fmul fast float %1129, %1120
  br label %1133

; <label>:1133                                    ; preds = %1118, %1103
  %1134 = phi float [ %1130, %1118 ], [ 0.000000e+00, %1103 ]
  %1135 = phi float [ %1131, %1118 ], [ 0.000000e+00, %1103 ]
  %1136 = phi float [ %1132, %1118 ], [ 0.000000e+00, %1103 ]
  %1137 = and i32 %1113, 2048
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1147, label %1139

; <label>:1139                                    ; preds = %1133
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = shl i32 %1141, 4
  %1143 = and i32 %1142, 32752
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = fmul fast float %1144, %1111
  %1146 = call float @dx.op.binary.f32(i32 35, float %1145, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1147

; <label>:1147                                    ; preds = %1139, %1133, %1075
  %1148 = phi float [ %1134, %1139 ], [ %1134, %1133 ], [ 0.000000e+00, %1075 ]
  %1149 = phi float [ %1135, %1139 ], [ %1135, %1133 ], [ 0.000000e+00, %1075 ]
  %1150 = phi float [ %1136, %1139 ], [ %1136, %1133 ], [ 0.000000e+00, %1075 ]
  %1151 = phi float [ %1146, %1139 ], [ 0x3F70101020000000, %1133 ], [ 0x3F70101020000000, %1075 ]
  %1152 = add i32 %42, 96
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = lshr i32 %1154, 8
  %1158 = and i32 %1157, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = fmul fast float %1159, %1160
  %1162 = fadd fast float %1161, %1156
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  br label %1165

; <label>:1165                                    ; preds = %1147, %505
  %1166 = phi float [ 0.000000e+00, %505 ], [ %991, %1147 ]
  %1167 = phi float [ 0.000000e+00, %505 ], [ %992, %1147 ]
  %1168 = phi float [ 0.000000e+00, %505 ], [ %910, %1147 ]
  %1169 = phi float [ 0.000000e+00, %505 ], [ %911, %1147 ]
  %1170 = phi float [ 0.000000e+00, %505 ], [ %912, %1147 ]
  %1171 = phi float [ 0.000000e+00, %505 ], [ %1038, %1147 ]
  %1172 = phi float [ 0.000000e+00, %505 ], [ %1039, %1147 ]
  %1173 = phi float [ 0.000000e+00, %505 ], [ %1040, %1147 ]
  %1174 = phi float [ 0.000000e+00, %505 ], [ %1148, %1147 ]
  %1175 = phi float [ 0.000000e+00, %505 ], [ %1149, %1147 ]
  %1176 = phi float [ 0.000000e+00, %505 ], [ %1150, %1147 ]
  %1177 = phi float [ 0.000000e+00, %505 ], [ %1096, %1147 ]
  %1178 = phi float [ 0.000000e+00, %505 ], [ %1097, %1147 ]
  %1179 = phi float [ 0.000000e+00, %505 ], [ %1098, %1147 ]
  %1180 = phi float [ 0.000000e+00, %505 ], [ %896, %1147 ]
  %1181 = phi float [ 0.000000e+00, %505 ], [ %692, %1147 ]
  %1182 = phi float [ 0.000000e+00, %505 ], [ %990, %1147 ]
  %1183 = phi float [ 0.000000e+00, %505 ], [ %993, %1147 ]
  %1184 = phi float [ 0.000000e+00, %505 ], [ %1151, %1147 ]
  %1185 = phi float [ 0.000000e+00, %505 ], [ %1164, %1147 ]
  br i1 %453, label %2108, label %1186

; <label>:1186                                    ; preds = %1165
  %1187 = icmp ult i32 %511, 2
  %1188 = add i32 %42, 40
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %42, 44
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = or i32 %1193, %1190
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %2108, label %1196

; <label>:1196                                    ; preds = %1186
  %1197 = and i32 %1190, 262144
  %1198 = icmp ne i32 %1197, 0
  %1199 = select i1 %1198, float %47, float 1.000000e+00
  %1200 = select i1 %1198, float %48, float 0.000000e+00
  %1201 = select i1 %1198, float %49, float 0.000000e+00
  %1202 = select i1 %1198, float %50, float 1.000000e+00
  %1203 = select i1 %1198, float %51, float %79
  %1204 = select i1 %1198, float %52, float %80
  %1205 = add i32 %42, 300
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 16
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fmul fast float %1209, 0x3F50624DE0000000
  %1211 = add i32 %42, 104
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 16
  %1215 = and i32 %1214, 255
  %1216 = lshr i32 %1213, 24
  %1217 = add i32 %42, 308
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1219, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = add i32 %42, 48
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 22
  %1228 = shl nuw nsw i32 %1227, 5
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = shl i32 %1226, 4
  %1231 = and i32 %1230, 32752
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1226, 7
  %1234 = and i32 %1233, 32752
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1238 = fmul fast float %1237, 1.000000e+03
  %1239 = fmul fast float %363, %1238
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = fadd fast float %1240, %353
  %1242 = fmul fast float %364, %1238
  %1243 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1244 = fadd fast float %1243, %355
  %1245 = fmul fast float %1210, %1238
  %1246 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1247 = fmul fast float %1246, 0x401921FB60000000
  %1248 = fadd fast float %1247, %1229
  %1249 = call float @dx.op.unary.f32(i32 13, float %1248)  ; Sin(value)
  %1250 = call float @dx.op.unary.f32(i32 12, float %1248)  ; Cos(value)
  %1251 = fsub fast float -0.000000e+00, %1249
  %1252 = fadd fast float %1203, -5.000000e-01
  %1253 = fadd fast float %1204, -5.000000e-01
  %1254 = fmul fast float %1221, %1252
  %1255 = fmul fast float %1223, %1253
  %1256 = fadd fast float %1254, 5.000000e-01
  %1257 = fadd fast float %1255, 5.000000e-01
  %1258 = fmul fast float %1232, %1256
  %1259 = fmul fast float %1235, %1257
  %1260 = fmul fast float %1250, %1258
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1259, float %1260)  ; FMad(a,b,c)
  %1262 = fmul fast float %1249, %1258
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1259, float %1262)  ; FMad(a,b,c)
  %1264 = fadd fast float %1241, %1261
  %1265 = fadd fast float %1244, %1263
  %1266 = icmp ugt i32 %1215, 1
  %1267 = icmp ugt i32 %1213, 33554431
  %1268 = or i1 %1267, %1266
  br i1 %1268, label %1269, label %1294

; <label>:1269                                    ; preds = %1196
  %1270 = add i32 %42, 244
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 16
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = fmul fast float %1237, %1274
  %1276 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1277 = mul nuw nsw i32 %1215, %1216
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1276, %1278
  %1280 = call float @dx.op.unary.f32(i32 27, float %1279)  ; Round_ni(value)
  %1281 = fptoui float %1280 to i32
  %1282 = urem i32 %1281, %1215
  %1283 = udiv i32 %1281, %1216
  %1284 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1285 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1286 = uitofp i32 %1282 to float
  %1287 = uitofp i32 %1283 to float
  %1288 = fadd fast float %1284, %1286
  %1289 = fadd fast float %1285, %1287
  %1290 = uitofp i32 %1215 to float
  %1291 = uitofp i32 %1216 to float
  %1292 = fdiv fast float %1288, %1290
  %1293 = fdiv fast float %1289, %1291
  br label %1294

; <label>:1294                                    ; preds = %1269, %1196
  %1295 = phi float [ %1292, %1269 ], [ %1264, %1196 ]
  %1296 = phi float [ %1293, %1269 ], [ %1265, %1196 ]
  %1297 = and i32 %1190, 256
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1345, label %1299

; <label>:1299                                    ; preds = %1294
  %1300 = add i32 %42, 492
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1304, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = add i32 %42, 116
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = shl i32 %1309, 4
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1309, 7
  %1314 = and i32 %1313, 32752
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = fsub fast float 1.000000e+00, %508
  %1317 = call float @dx.op.binary.f32(i32 35, float %1316, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1318 = bitcast float %508 to i32
  %1319 = sitofp i32 %1318 to float
  %1320 = fadd fast float %1319, 0xC1CFBF8940000000
  %1321 = fmul fast float %1315, %1320
  %1322 = fadd fast float %1321, 0x41CFBF8940000000
  %1323 = fptosi float %1322 to i32
  %1324 = bitcast i32 %1323 to float
  %1325 = bitcast float %1317 to i32
  %1326 = sitofp i32 %1325 to float
  %1327 = fadd fast float %1326, 0xC1CFBF8940000000
  %1328 = fmul fast float %1327, %1315
  %1329 = fadd fast float %1328, 0x41CFBF8940000000
  %1330 = fptosi float %1329 to i32
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1324, %1312
  %1333 = fmul fast float %1331, %1312
  %1334 = fsub fast float %1317, %1332
  %1335 = fadd fast float %1333, %1317
  %1336 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1338 = fsub fast float %1306, %1336
  %1339 = fsub fast float %1337, %1336
  %1340 = bitcast float %1339 to i32
  %1341 = sub nsw i32 2129859010, %1340
  %1342 = bitcast i32 %1341 to float
  %1343 = fmul fast float %1342, %1338
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  br label %1345

; <label>:1345                                    ; preds = %1299, %1294
  %1346 = phi float [ %1344, %1299 ], [ %508, %1294 ]
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 128
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1367, label %1351

; <label>:1351                                    ; preds = %1345
  %1352 = add i32 %42, 476
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1356, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 524288
  %1362 = icmp ne i32 %1361, 0
  %1363 = fcmp fast ogt float %1358, 0x3FE0101020000000
  %1364 = select i1 %1363, float 1.000000e+00, float 0.000000e+00
  %1365 = select i1 %1362, float %1364, float %1358
  %1366 = fmul fast float %1365, %1346
  br label %1367

; <label>:1367                                    ; preds = %1351, %1345
  %1368 = phi float [ %1366, %1351 ], [ %1346, %1345 ]
  %1369 = fcmp fast ult float %1368, 0x3F70101020000000
  br i1 %1369, label %2108, label %1370

; <label>:1370                                    ; preds = %1367
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 16
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1573, label %1375

; <label>:1375                                    ; preds = %1370
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %42, 428
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = add i32 %1380, 0
  %1382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1382, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = and i32 %1377, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = lshr i32 %1377, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1387, %1389
  %1394 = fadd fast float %1393, %1392
  %1395 = fmul fast float %1394, 0x3F70101000000000
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 512
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1408, label %1400

; <label>:1400                                    ; preds = %1375
  %1401 = add i32 %42, 512
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  br label %1408

; <label>:1408                                    ; preds = %1400, %1375
  %1409 = phi float [ %1407, %1400 ], [ 1.000000e+00, %1375 ]
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 33554432
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1520, label %1414

; <label>:1414                                    ; preds = %1408
  %1415 = add i32 %42, 240
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 65535
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = lshr i32 %1417, 16
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = add i32 %42, 244
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 65535
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = lshr i32 %1428, 24
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = and i32 %1428, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1433, 0x3F70101020000000
  %1435 = lshr i32 %1428, 8
  %1436 = and i32 %1435, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3F70101020000000
  %1439 = lshr i32 %1428, 16
  %1440 = and i32 %1439, 255
  %1441 = uitofp i32 %1440 to float
  %1442 = fmul fast float %1441, 0x3F70101020000000
  %1443 = add i32 %42, 236
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = lshr i32 %1445, 24
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = and i32 %1445, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = lshr i32 %1445, 8
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101020000000
  %1456 = lshr i32 %1445, 16
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1458, 0x3F70101020000000
  %1460 = bitcast float %1384 to i32
  %1461 = ashr i32 %1460, 1
  %1462 = sub nsw i32 1597463174, %1461
  %1463 = bitcast i32 %1462 to float
  %1464 = fmul fast float %1384, 5.000000e-01
  %1465 = fmul fast float %1463, %1463
  %1466 = fmul fast float %1465, %1464
  %1467 = fsub fast float 1.500000e+00, %1466
  %1468 = fmul fast float %1463, %1384
  %1469 = fmul fast float %1468, %1467
  %1470 = bitcast float %1385 to i32
  %1471 = ashr i32 %1470, 1
  %1472 = sub nsw i32 1597463174, %1471
  %1473 = bitcast i32 %1472 to float
  %1474 = fmul fast float %1385, 5.000000e-01
  %1475 = fmul fast float %1473, %1473
  %1476 = fmul fast float %1475, %1474
  %1477 = fsub fast float 1.500000e+00, %1476
  %1478 = fmul fast float %1473, %1385
  %1479 = fmul fast float %1478, %1477
  %1480 = bitcast float %1386 to i32
  %1481 = ashr i32 %1480, 1
  %1482 = sub nsw i32 1597463174, %1481
  %1483 = bitcast i32 %1482 to float
  %1484 = fmul fast float %1386, 5.000000e-01
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1485, %1484
  %1487 = fsub fast float 1.500000e+00, %1486
  %1488 = fmul fast float %1483, %1386
  %1489 = fmul fast float %1488, %1487
  %1490 = fsub fast float %1469, %1451
  %1491 = fsub fast float %1479, %1455
  %1492 = fsub fast float %1489, %1459
  %1493 = fmul fast float %1490, %1419
  %1494 = fmul fast float %1491, %1421
  %1495 = fmul fast float %1492, %1426
  %1496 = fadd fast float %1493, %1434
  %1497 = fadd fast float %1494, %1438
  %1498 = fadd fast float %1495, %1442
  %1499 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1502 = fmul fast float %1499, %1499
  %1503 = fmul fast float %1500, %1500
  %1504 = fmul fast float %1501, %1501
  %1505 = fsub fast float %1502, %1384
  %1506 = fsub fast float %1503, %1385
  %1507 = fsub fast float %1504, %1386
  %1508 = fmul fast float %1505, %1409
  %1509 = fmul fast float %1506, %1409
  %1510 = fmul fast float %1507, %1409
  %1511 = fadd fast float %1508, %1384
  %1512 = fadd fast float %1509, %1385
  %1513 = fadd fast float %1510, %1386
  %1514 = fadd fast float %1431, %1395
  %1515 = fsub fast float %1514, %1448
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fsub fast float %1516, %1395
  %1518 = fmul fast float %1517, %1409
  %1519 = fadd fast float %1518, %1395
  br label %1573

; <label>:1520                                    ; preds = %1408
  %1521 = and i32 %1411, 134217728
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1557, label %1523

; <label>:1523                                    ; preds = %1520
  %1524 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1526 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %1527 = fadd fast float %1524, -5.000000e-01
  %1528 = fadd fast float %1525, -5.000000e-01
  %1529 = fadd fast float %1526, -5.000000e-01
  %1530 = fmul fast float %1527, %1409
  %1531 = fmul fast float %1528, %1409
  %1532 = fmul fast float %1529, %1409
  %1533 = fadd fast float %1530, 5.000000e-01
  %1534 = fadd fast float %1531, 5.000000e-01
  %1535 = fadd fast float %1532, 5.000000e-01
  %1536 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1537 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1538 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1539 = fmul fast float %1533, 2.000000e+00
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1540, %1536
  %1542 = fadd fast float %1541, %1539
  %1543 = fmul fast float %1542, %1536
  %1544 = fmul fast float %1534, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1537
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1537
  %1549 = fmul fast float %1535, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1538
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1538
  %1554 = fmul fast float %1543, %1543
  %1555 = fmul fast float %1548, %1548
  %1556 = fmul fast float %1553, %1553
  br label %1573

; <label>:1557                                    ; preds = %1520
  %1558 = fmul fast float %340, %340
  %1559 = fmul fast float %344, %344
  %1560 = fmul fast float %348, %348
  %1561 = fadd fast float %1558, -1.000000e+00
  %1562 = fadd fast float %1559, -1.000000e+00
  %1563 = fadd fast float %1560, -1.000000e+00
  %1564 = fmul fast float %1409, %1561
  %1565 = fmul fast float %1409, %1562
  %1566 = fmul fast float %1409, %1563
  %1567 = fadd fast float %1564, 1.000000e+00
  %1568 = fadd fast float %1565, 1.000000e+00
  %1569 = fadd fast float %1566, 1.000000e+00
  %1570 = fmul fast float %1567, %1384
  %1571 = fmul fast float %1568, %1385
  %1572 = fmul fast float %1569, %1386
  br label %1573

; <label>:1573                                    ; preds = %1557, %1523, %1414, %1370
  %1574 = phi float [ %1519, %1414 ], [ %1395, %1523 ], [ %1395, %1557 ], [ 0x3FA23C0BE0000000, %1370 ]
  %1575 = phi float [ %1511, %1414 ], [ %1554, %1523 ], [ %1570, %1557 ], [ 1.000000e+00, %1370 ]
  %1576 = phi float [ %1512, %1414 ], [ %1555, %1523 ], [ %1571, %1557 ], [ 1.000000e+00, %1370 ]
  %1577 = phi float [ %1513, %1414 ], [ %1556, %1523 ], [ %1572, %1557 ], [ 1.000000e+00, %1370 ]
  %1578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.i32 %1578, 1
  %1580 = and i32 %1579, 1
  %1581 = icmp ne i32 %1580, 0
  %1582 = add i32 %42, 356
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 32
  %1586 = icmp ne i32 %1585, 0
  %1587 = and i1 %1581, %1586
  %1588 = select i1 %1587, float 1.000000e+00, float %1575
  %1589 = select i1 %1587, float 0x3FD3333340000000, float %1576
  %1590 = select i1 %1587, float 0x3FD3333340000000, float %1577
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 32
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1667, label %1595

; <label>:1595                                    ; preds = %1573
  %1596 = add i32 %42, 108
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = add i32 %42, 444
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %1601, 0
  %1603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1603, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = extractvalue %dx.types.ResRet.f32 %1604, 3
  %1609 = and i32 %1598, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = lshr i32 %1598, 8
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = lshr i32 %1598, 16
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101000000000
  %1618 = fmul fast float %1605, %1610
  %1619 = fadd fast float %1618, %1613
  %1620 = fmul fast float %1619, 0x3F70101000000000
  %1621 = fadd fast float %1606, -5.000000e-01
  %1622 = fadd fast float %1608, -5.000000e-01
  %1623 = fmul fast float %1621, %1617
  %1624 = fmul fast float %1622, %1617
  %1625 = fadd fast float %1623, 5.000000e-01
  %1626 = fadd fast float %1624, 5.000000e-01
  %1627 = fmul fast float %1625, 2.000000e+00
  %1628 = fadd fast float %1627, -1.000000e+00
  %1629 = fmul fast float %1626, 2.000000e+00
  %1630 = fadd fast float %1629, -1.000000e+00
  %1631 = fadd fast float %1628, %1630
  %1632 = fmul fast float %1631, 5.000000e-01
  %1633 = fsub fast float %1628, %1630
  %1634 = fmul fast float %1633, 5.000000e-01
  %1635 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1638 = fsub fast float %1636, %1637
  %1639 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1634, float %1638, float %1632, float %1634, float %1638)  ; Dot3(ax,ay,az,bx,by,bz)
  %1640 = call float @dx.op.unary.f32(i32 25, float %1639)  ; Rsqrt(value)
  %1641 = fmul fast float %1632, %1640
  %1642 = fmul fast float %1634, %1640
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 67108864
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1663, label %1647

; <label>:1647                                    ; preds = %1595
  %1648 = add i32 %42, 296
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 65535
  %1652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1651)  ; LegacyF16ToF32(value)
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = and i32 %1654, 65535
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = lshr i32 %1650, 16
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fsub fast float %1620, %1658
  %1660 = fmul fast float %1659, %1652
  %1661 = fadd fast float %1660, %1656
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  br label %1663

; <label>:1663                                    ; preds = %1647, %1595
  %1664 = phi float [ %1662, %1647 ], [ %1620, %1595 ]
  %1665 = call float @dx.op.dot2.f32(i32 54, float %1641, float %1642, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  %1666 = call float @dx.op.dot2.f32(i32 54, float %1641, float %1642, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  br label %1667

; <label>:1667                                    ; preds = %1663, %1573
  %1668 = phi float [ %1664, %1663 ], [ 0x3FD6666660000000, %1573 ]
  %1669 = phi float [ %1665, %1663 ], [ 0.000000e+00, %1573 ]
  %1670 = phi float [ %1666, %1663 ], [ 0.000000e+00, %1573 ]
  %1671 = phi float [ %1607, %1663 ], [ 1.000000e+00, %1573 ]
  %1672 = add i32 %42, 176
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = lshr i32 %1674, 22
  %1676 = shl nuw nsw i32 %1675, 5
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 64
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1715, label %1682

; <label>:1682                                    ; preds = %1667
  %1683 = add i32 %42, 460
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = add i32 %1685, 0
  %1687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 131072
  %1691 = icmp eq i32 %1690, 0
  %1692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1687, %dx.types.Handle %93, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.ResRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1692, 2
  %1696 = fmul fast float %1693, %328
  %1697 = fmul fast float %1694, %331
  %1698 = fmul fast float %1695, %334
  br i1 %1691, label %1705, label %1699

; <label>:1699                                    ; preds = %1682
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = fmul fast float %1701, %1696
  %1703 = fmul fast float %1701, %1697
  %1704 = fmul fast float %1701, %1698
  br label %1705

; <label>:1705                                    ; preds = %1699, %1682
  %1706 = phi float [ %1702, %1699 ], [ %1696, %1682 ]
  %1707 = phi float [ %1703, %1699 ], [ %1697, %1682 ]
  %1708 = phi float [ %1704, %1699 ], [ %1698, %1682 ]
  %1709 = fmul fast float %1706, %1677
  %1710 = select i1 %269, float %1709, float %1706
  %1711 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1707, float %1708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1712 = select i1 %269, float 0.000000e+00, float %1706
  %1713 = select i1 %269, float %1711, float %1707
  %1714 = select i1 %269, float 0.000000e+00, float %1708
  br label %1715

; <label>:1715                                    ; preds = %1705, %1667
  %1716 = phi float [ %1712, %1705 ], [ 0.000000e+00, %1667 ]
  %1717 = phi float [ %1713, %1705 ], [ 0.000000e+00, %1667 ]
  %1718 = phi float [ %1714, %1705 ], [ 0.000000e+00, %1667 ]
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 1024
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1753, label %1723

; <label>:1723                                    ; preds = %1715
  %1724 = add i32 %42, 168
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = fmul fast float %1728, 0x3F70101020000000
  %1730 = lshr i32 %1726, 8
  %1731 = and i32 %1730, 255
  %1732 = uitofp i32 %1731 to float
  %1733 = fmul fast float %1732, 0x3F70101020000000
  %1734 = lshr i32 %1726, 16
  %1735 = and i32 %1734, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = fmul fast float %1736, 0x3F70101020000000
  %1738 = fmul fast float %1729, %1729
  %1739 = fmul fast float %1733, %1733
  %1740 = fmul fast float %1737, %1737
  %1741 = add i32 %42, 528
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = add i32 %1743, 0
  %1745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1745, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = fmul fast float %1738, %1747
  %1751 = fmul fast float %1739, %1748
  %1752 = fmul fast float %1740, %1749
  br label %1753

; <label>:1753                                    ; preds = %1723, %1715
  %1754 = phi float [ %1750, %1723 ], [ 0.000000e+00, %1715 ]
  %1755 = phi float [ %1751, %1723 ], [ 0.000000e+00, %1715 ]
  %1756 = phi float [ %1752, %1723 ], [ 0.000000e+00, %1715 ]
  %1757 = fcmp fast ogt float %1754, 0.000000e+00
  %1758 = fcmp fast ogt float %1755, 0.000000e+00
  %1759 = fcmp fast ogt float %1756, 0.000000e+00
  %1760 = call float @dx.op.unary.f32(i32 23, float %1754)  ; Log(value)
  %1761 = call float @dx.op.unary.f32(i32 23, float %1755)  ; Log(value)
  %1762 = call float @dx.op.unary.f32(i32 23, float %1756)  ; Log(value)
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = lshr i32 %1764, 7
  %1766 = and i32 %1765, 32752
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = fmul fast float %1760, 0xBFE62E4300000000
  %1769 = fmul fast float %1768, %1767
  %1770 = fmul fast float %1761, 0xBFE62E4300000000
  %1771 = fmul fast float %1770, %1767
  %1772 = fmul fast float %1762, 0xBFE62E4300000000
  %1773 = fmul fast float %1772, %1767
  %1774 = select i1 %1757, float %1769, float 1.270000e+02
  %1775 = select i1 %1758, float %1771, float 1.270000e+02
  %1776 = select i1 %1759, float %1773, float 1.270000e+02
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 10240
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1825, label %1781

; <label>:1781                                    ; preds = %1753
  %1782 = add i32 %42, 544
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %1784, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1786, %dx.types.Handle %94, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 1048576
  %1793 = icmp ne i32 %1792, 0
  %1794 = and i32 %1791, 8192
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1811, label %1796

; <label>:1796                                    ; preds = %1781
  %1797 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1798 = select i1 %1793, float %1797, float %1788
  %1799 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1800 = select i1 %1793, float %1799, float %1788
  %1801 = add i32 %42, 112
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = lshr i32 %1803, 16
  %1805 = and i32 %1804, 255
  %1806 = uitofp i32 %1805 to float
  %1807 = fmul fast float %1806, 0x3F80101020000000
  %1808 = fmul fast float %1807, %1800
  %1809 = fmul fast float %1807, %1788
  %1810 = fmul fast float %1807, %1798
  br label %1811

; <label>:1811                                    ; preds = %1796, %1781
  %1812 = phi float [ %1808, %1796 ], [ 0.000000e+00, %1781 ]
  %1813 = phi float [ %1809, %1796 ], [ 0.000000e+00, %1781 ]
  %1814 = phi float [ %1810, %1796 ], [ 0.000000e+00, %1781 ]
  %1815 = and i32 %1791, 2048
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1825, label %1817

; <label>:1817                                    ; preds = %1811
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = shl i32 %1819, 4
  %1821 = and i32 %1820, 32752
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fmul fast float %1822, %1789
  %1824 = call float @dx.op.binary.f32(i32 35, float %1823, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1825

; <label>:1825                                    ; preds = %1817, %1811, %1753
  %1826 = phi float [ %1812, %1817 ], [ %1812, %1811 ], [ 0.000000e+00, %1753 ]
  %1827 = phi float [ %1813, %1817 ], [ %1813, %1811 ], [ 0.000000e+00, %1753 ]
  %1828 = phi float [ %1814, %1817 ], [ %1814, %1811 ], [ 0.000000e+00, %1753 ]
  %1829 = phi float [ %1824, %1817 ], [ 0x3F70101020000000, %1811 ], [ 0x3F70101020000000, %1753 ]
  %1830 = add i32 %42, 112
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 255
  %1834 = uitofp i32 %1833 to float
  %1835 = lshr i32 %1832, 8
  %1836 = and i32 %1835, 255
  %1837 = uitofp i32 %1836 to float
  %1838 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1839 = fmul fast float %1837, %1838
  %1840 = fadd fast float %1839, %1834
  %1841 = fmul fast float %1840, 0x3F70101020000000
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  br i1 %1187, label %1843, label %1878

; <label>:1843                                    ; preds = %1825
  %1844 = fmul fast float %1829, 2.000000e+00
  %1845 = fcmp fast olt float %1774, 1.270000e+02
  %1846 = fcmp fast olt float %1775, 1.270000e+02
  %1847 = fcmp fast olt float %1776, 1.270000e+02
  %1848 = fmul fast float %1774, 0xBFF7154760000000
  %1849 = fmul fast float %1848, %1844
  %1850 = fmul fast float %1775, 0xBFF7154760000000
  %1851 = fmul fast float %1850, %1844
  %1852 = fmul fast float %1776, 0xBFF7154760000000
  %1853 = fmul fast float %1852, %1844
  %1854 = call float @dx.op.unary.f32(i32 21, float %1849)  ; Exp(value)
  %1855 = call float @dx.op.unary.f32(i32 21, float %1851)  ; Exp(value)
  %1856 = call float @dx.op.unary.f32(i32 21, float %1853)  ; Exp(value)
  %1857 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1858 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1859 = call float @dx.op.unary.f32(i32 7, float %1856)  ; Saturate(value)
  %1860 = fadd fast float %1857, -1.000000e+00
  %1861 = select i1 %1845, float %1860, float -1.000000e+00
  %1862 = fadd fast float %1858, -1.000000e+00
  %1863 = select i1 %1846, float %1862, float -1.000000e+00
  %1864 = fadd fast float %1859, -1.000000e+00
  %1865 = select i1 %1847, float %1864, float -1.000000e+00
  %1866 = fmul fast float %1861, %1368
  %1867 = fmul fast float %1863, %1368
  %1868 = fmul fast float %1865, %1368
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fmul fast float %1869, %1168
  %1873 = fmul fast float %1870, %1169
  %1874 = fmul fast float %1871, %1170
  %1875 = fmul fast float %1869, %1171
  %1876 = fmul fast float %1870, %1172
  %1877 = fmul fast float %1871, %1173
  br label %1878

; <label>:1878                                    ; preds = %1843, %1825
  %1879 = phi float [ %1872, %1843 ], [ %1168, %1825 ]
  %1880 = phi float [ %1873, %1843 ], [ %1169, %1825 ]
  %1881 = phi float [ %1874, %1843 ], [ %1170, %1825 ]
  %1882 = phi float [ %1875, %1843 ], [ %1171, %1825 ]
  %1883 = phi float [ %1876, %1843 ], [ %1172, %1825 ]
  %1884 = phi float [ %1877, %1843 ], [ %1173, %1825 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 3
  %1888 = icmp eq i32 %1887, 3
  br i1 %1888, label %1967, label %1889

; <label>:1889                                    ; preds = %1878
  %1890 = and i32 %1886, 16
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %1368, float 0.000000e+00
  %1893 = icmp eq i32 %1887, 0
  br i1 %1893, label %1894, label %1922

; <label>:1894                                    ; preds = %1889
  %1895 = and i32 %1886, 64
  %1896 = icmp ne i32 %1895, 0
  %1897 = select i1 %1896, float %1368, float 0.000000e+00
  %1898 = fsub fast float %1588, %1879
  %1899 = fsub fast float %1589, %1880
  %1900 = fsub fast float %1590, %1881
  %1901 = fmul fast float %1892, %1898
  %1902 = fmul fast float %1892, %1899
  %1903 = fmul fast float %1892, %1900
  %1904 = fadd fast float %1901, %1879
  %1905 = fadd fast float %1902, %1880
  %1906 = fadd fast float %1903, %1881
  %1907 = fsub fast float %1574, %1180
  %1908 = fmul fast float %1892, %1907
  %1909 = fadd fast float %1908, %1180
  %1910 = fsub fast float %1716, %1882
  %1911 = fsub fast float %1717, %1883
  %1912 = fsub fast float %1718, %1884
  %1913 = fmul fast float %1897, %1910
  %1914 = fmul fast float %1897, %1911
  %1915 = fmul fast float %1897, %1912
  %1916 = fadd fast float %1913, %1882
  %1917 = fadd fast float %1914, %1883
  %1918 = fadd fast float %1915, %1884
  %1919 = fsub fast float %1842, %1185
  %1920 = fmul fast float %1892, %1919
  %1921 = fadd fast float %1920, %1185
  br label %1967

; <label>:1922                                    ; preds = %1889
  %1923 = icmp eq i32 %1887, 1
  br i1 %1923, label %1924, label %1937

; <label>:1924                                    ; preds = %1922
  %1925 = fadd fast float %1588, -1.000000e+00
  %1926 = fadd fast float %1589, -1.000000e+00
  %1927 = fadd fast float %1590, -1.000000e+00
  %1928 = fmul fast float %1892, %1925
  %1929 = fmul fast float %1892, %1926
  %1930 = fmul fast float %1892, %1927
  %1931 = fadd fast float %1928, 1.000000e+00
  %1932 = fadd fast float %1929, 1.000000e+00
  %1933 = fadd fast float %1930, 1.000000e+00
  %1934 = fmul fast float %1931, %1879
  %1935 = fmul fast float %1932, %1880
  %1936 = fmul fast float %1933, %1881
  br label %1967

; <label>:1937                                    ; preds = %1922
  %1938 = icmp eq i32 %1887, 2
  br i1 %1938, label %1939, label %1967

; <label>:1939                                    ; preds = %1937
  %1940 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1941 = call float @dx.op.unary.f32(i32 24, float %1589)  ; Sqrt(value)
  %1942 = call float @dx.op.unary.f32(i32 24, float %1590)  ; Sqrt(value)
  %1943 = fadd fast float %1940, -5.000000e-01
  %1944 = fadd fast float %1941, -5.000000e-01
  %1945 = fadd fast float %1942, -5.000000e-01
  %1946 = fmul fast float %1943, %1892
  %1947 = fmul fast float %1944, %1892
  %1948 = fmul fast float %1945, %1892
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fadd fast float %1948, 5.000000e-01
  %1952 = fmul fast float %1949, 2.000000e+00
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = fmul fast float %1953, %1879
  %1955 = fadd fast float %1954, %1952
  %1956 = fmul fast float %1955, %1879
  %1957 = fmul fast float %1950, 2.000000e+00
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fmul fast float %1958, %1880
  %1960 = fadd fast float %1959, %1957
  %1961 = fmul fast float %1960, %1880
  %1962 = fmul fast float %1951, 2.000000e+00
  %1963 = fsub fast float 1.000000e+00, %1962
  %1964 = fmul fast float %1963, %1881
  %1965 = fadd fast float %1964, %1962
  %1966 = fmul fast float %1965, %1881
  br label %1967

; <label>:1967                                    ; preds = %1939, %1937, %1924, %1894, %1878
  %1968 = phi float [ %1879, %1878 ], [ %1956, %1939 ], [ %1879, %1937 ], [ %1934, %1924 ], [ %1904, %1894 ]
  %1969 = phi float [ %1880, %1878 ], [ %1961, %1939 ], [ %1880, %1937 ], [ %1935, %1924 ], [ %1905, %1894 ]
  %1970 = phi float [ %1881, %1878 ], [ %1966, %1939 ], [ %1881, %1937 ], [ %1936, %1924 ], [ %1906, %1894 ]
  %1971 = phi float [ %1882, %1878 ], [ %1882, %1939 ], [ %1882, %1937 ], [ %1882, %1924 ], [ %1916, %1894 ]
  %1972 = phi float [ %1883, %1878 ], [ %1883, %1939 ], [ %1883, %1937 ], [ %1883, %1924 ], [ %1917, %1894 ]
  %1973 = phi float [ %1884, %1878 ], [ %1884, %1939 ], [ %1884, %1937 ], [ %1884, %1924 ], [ %1918, %1894 ]
  %1974 = phi float [ %1180, %1878 ], [ %1180, %1939 ], [ %1180, %1937 ], [ %1180, %1924 ], [ %1909, %1894 ]
  %1975 = phi float [ %1185, %1878 ], [ %1185, %1939 ], [ %1185, %1937 ], [ %1185, %1924 ], [ %1921, %1894 ]
  %1976 = and i32 %1886, 12
  %1977 = icmp eq i32 %1976, 12
  br i1 %1977, label %2108, label %1978

; <label>:1978                                    ; preds = %1967
  %1979 = and i32 %1886, 2097184
  %1980 = icmp eq i32 %1979, 2097184
  %1981 = select i1 %1980, float %1368, float 0.000000e+00
  %1982 = and i32 %1886, 4194336
  %1983 = icmp eq i32 %1982, 4194336
  %1984 = select i1 %1983, float %1368, float 0.000000e+00
  %1985 = and i32 %1886, 8388640
  %1986 = icmp eq i32 %1985, 8388640
  %1987 = select i1 %1986, float %1368, float 0.000000e+00
  %1988 = and i32 %1886, 1024
  %1989 = icmp ne i32 %1988, 0
  %1990 = select i1 %1989, float %1368, float 0.000000e+00
  %1991 = and i32 %1886, 2048
  %1992 = icmp ne i32 %1991, 0
  %1993 = select i1 %1992, float %1368, float 0.000000e+00
  %1994 = and i32 %1886, 8192
  %1995 = icmp ne i32 %1994, 0
  %1996 = select i1 %1995, float %1368, float 0.000000e+00
  %1997 = icmp eq i32 %1976, 0
  br i1 %1997, label %1998, label %2032

; <label>:1998                                    ; preds = %1978
  %1999 = fsub fast float %1669, %1166
  %2000 = fsub fast float %1670, %1167
  %2001 = fmul fast float %1981, %1999
  %2002 = fmul fast float %1981, %2000
  %2003 = fadd fast float %2001, %1166
  %2004 = fadd fast float %2002, %1167
  %2005 = fsub fast float %1671, %1183
  %2006 = fmul fast float %1984, %2005
  %2007 = fadd fast float %2006, %1183
  %2008 = fsub fast float %1668, %1182
  %2009 = fmul fast float %1987, %2008
  %2010 = fadd fast float %2009, %1182
  %2011 = fsub fast float %1774, %1177
  %2012 = fsub fast float %1775, %1178
  %2013 = fsub fast float %1776, %1179
  %2014 = fmul fast float %1990, %2011
  %2015 = fmul fast float %1990, %2012
  %2016 = fmul fast float %1990, %2013
  %2017 = fadd fast float %2014, %1177
  %2018 = fadd fast float %2015, %1178
  %2019 = fadd fast float %2016, %1179
  %2020 = fsub fast float %1829, %1184
  %2021 = fmul fast float %1993, %2020
  %2022 = fadd fast float %2021, %1184
  %2023 = fsub fast float %1826, %1174
  %2024 = fsub fast float %1827, %1175
  %2025 = fsub fast float %1828, %1176
  %2026 = fmul fast float %1996, %2023
  %2027 = fmul fast float %1996, %2024
  %2028 = fmul fast float %1996, %2025
  %2029 = fadd fast float %2026, %1174
  %2030 = fadd fast float %2027, %1175
  %2031 = fadd fast float %2028, %1176
  br label %2108

; <label>:2032                                    ; preds = %1978
  %2033 = icmp eq i32 %1976, 4
  br i1 %2033, label %2034, label %2080

; <label>:2034                                    ; preds = %2032
  %2035 = fmul fast float %1981, %1669
  %2036 = fmul fast float %1981, %1670
  %2037 = fadd fast float %2035, %1166
  %2038 = fadd fast float %2036, %1167
  %2039 = call float @dx.op.binary.f32(i32 36, float %1183, float %1671)  ; FMin(a,b)
  %2040 = fsub fast float %2039, %1183
  %2041 = fmul fast float %2040, %1984
  %2042 = fadd fast float %2041, %1183
  %2043 = fadd fast float %1668, %1182
  %2044 = fmul fast float %2043, 0x3FF337FAE0000000
  %2045 = fmul fast float %1182, %1182
  %2046 = fmul fast float %1668, %1668
  %2047 = fadd fast float %2046, %2045
  %2048 = fmul fast float %2047, 0x3FE5152B00000000
  %2049 = fmul fast float %1182, 0xBFCC1F85E0000000
  %2050 = fmul fast float %2049, %1668
  %2051 = fadd fast float %2050, 0xBFE1363700000000
  %2052 = fadd fast float %2051, %2044
  %2053 = fsub fast float %2052, %2048
  %2054 = fmul fast float %2043, 0x3FBA6F0D00000000
  %2055 = fmul fast float %2047, 0x3FD0432880000000
  %2056 = fmul fast float %1182, 0xBFEF110800000000
  %2057 = fmul fast float %2056, %1668
  %2058 = fadd fast float %2057, 1.000000e+00
  %2059 = fsub fast float %2058, %2054
  %2060 = fadd fast float %2059, %2055
  %2061 = fdiv fast float %2053, %2060
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fsub fast float %2062, %1182
  %2064 = fmul fast float %2063, %1987
  %2065 = fadd fast float %2064, %1182
  %2066 = fmul fast float %1990, %1774
  %2067 = fmul fast float %1990, %1775
  %2068 = fmul fast float %1990, %1776
  %2069 = fadd fast float %2066, %1177
  %2070 = fadd fast float %2067, %1178
  %2071 = fadd fast float %2068, %1179
  %2072 = fmul fast float %1993, %1829
  %2073 = fadd fast float %2072, %1184
  %2074 = fmul fast float %1996, %1826
  %2075 = fmul fast float %1996, %1827
  %2076 = fmul fast float %1996, %1828
  %2077 = fadd fast float %2074, %1174
  %2078 = fadd fast float %2075, %1175
  %2079 = fadd fast float %2076, %1176
  br label %2108

; <label>:2080                                    ; preds = %2032
  %2081 = icmp eq i32 %1976, 8
  br i1 %2081, label %2082, label %2108

; <label>:2082                                    ; preds = %2080
  %2083 = fmul fast float %1981, %1669
  %2084 = fmul fast float %1981, %1670
  %2085 = fadd fast float %2083, %1166
  %2086 = fadd fast float %2084, %1167
  %2087 = call float @dx.op.binary.f32(i32 36, float %1183, float %1671)  ; FMin(a,b)
  %2088 = fsub fast float %2087, %1183
  %2089 = fmul fast float %2088, %1984
  %2090 = fadd fast float %2089, %1183
  %2091 = fsub fast float %1668, %1182
  %2092 = fmul fast float %1987, %2091
  %2093 = fadd fast float %2092, %1182
  %2094 = fmul fast float %1990, %1774
  %2095 = fmul fast float %1990, %1775
  %2096 = fmul fast float %1990, %1776
  %2097 = fadd fast float %2094, %1177
  %2098 = fadd fast float %2095, %1178
  %2099 = fadd fast float %2096, %1179
  %2100 = fmul fast float %1993, %1829
  %2101 = fadd fast float %2100, %1184
  %2102 = fmul fast float %1996, %1826
  %2103 = fmul fast float %1996, %1827
  %2104 = fmul fast float %1996, %1828
  %2105 = fadd fast float %2102, %1174
  %2106 = fadd fast float %2103, %1175
  %2107 = fadd fast float %2104, %1176
  br label %2108

; <label>:2108                                    ; preds = %2082, %2080, %2034, %1998, %1967, %1367, %1186, %1165
  %2109 = phi float [ %1166, %1967 ], [ %1166, %1367 ], [ %1166, %1165 ], [ %2085, %2082 ], [ %1166, %2080 ], [ %2037, %2034 ], [ %2003, %1998 ], [ %1166, %1186 ]
  %2110 = phi float [ %1167, %1967 ], [ %1167, %1367 ], [ %1167, %1165 ], [ %2086, %2082 ], [ %1167, %2080 ], [ %2038, %2034 ], [ %2004, %1998 ], [ %1167, %1186 ]
  %2111 = phi float [ %1968, %1967 ], [ %1168, %1367 ], [ %1168, %1165 ], [ %1968, %2082 ], [ %1968, %2080 ], [ %1968, %2034 ], [ %1968, %1998 ], [ %1168, %1186 ]
  %2112 = phi float [ %1969, %1967 ], [ %1169, %1367 ], [ %1169, %1165 ], [ %1969, %2082 ], [ %1969, %2080 ], [ %1969, %2034 ], [ %1969, %1998 ], [ %1169, %1186 ]
  %2113 = phi float [ %1970, %1967 ], [ %1170, %1367 ], [ %1170, %1165 ], [ %1970, %2082 ], [ %1970, %2080 ], [ %1970, %2034 ], [ %1970, %1998 ], [ %1170, %1186 ]
  %2114 = phi float [ %1971, %1967 ], [ %1171, %1367 ], [ %1171, %1165 ], [ %1971, %2082 ], [ %1971, %2080 ], [ %1971, %2034 ], [ %1971, %1998 ], [ %1171, %1186 ]
  %2115 = phi float [ %1972, %1967 ], [ %1172, %1367 ], [ %1172, %1165 ], [ %1972, %2082 ], [ %1972, %2080 ], [ %1972, %2034 ], [ %1972, %1998 ], [ %1172, %1186 ]
  %2116 = phi float [ %1973, %1967 ], [ %1173, %1367 ], [ %1173, %1165 ], [ %1973, %2082 ], [ %1973, %2080 ], [ %1973, %2034 ], [ %1973, %1998 ], [ %1173, %1186 ]
  %2117 = phi float [ %1174, %1967 ], [ %1174, %1367 ], [ %1174, %1165 ], [ %2105, %2082 ], [ %1174, %2080 ], [ %2077, %2034 ], [ %2029, %1998 ], [ %1174, %1186 ]
  %2118 = phi float [ %1175, %1967 ], [ %1175, %1367 ], [ %1175, %1165 ], [ %2106, %2082 ], [ %1175, %2080 ], [ %2078, %2034 ], [ %2030, %1998 ], [ %1175, %1186 ]
  %2119 = phi float [ %1176, %1967 ], [ %1176, %1367 ], [ %1176, %1165 ], [ %2107, %2082 ], [ %1176, %2080 ], [ %2079, %2034 ], [ %2031, %1998 ], [ %1176, %1186 ]
  %2120 = phi float [ %1177, %1967 ], [ %1177, %1367 ], [ %1177, %1165 ], [ %2097, %2082 ], [ %1177, %2080 ], [ %2069, %2034 ], [ %2017, %1998 ], [ %1177, %1186 ]
  %2121 = phi float [ %1178, %1967 ], [ %1178, %1367 ], [ %1178, %1165 ], [ %2098, %2082 ], [ %1178, %2080 ], [ %2070, %2034 ], [ %2018, %1998 ], [ %1178, %1186 ]
  %2122 = phi float [ %1179, %1967 ], [ %1179, %1367 ], [ %1179, %1165 ], [ %2099, %2082 ], [ %1179, %2080 ], [ %2071, %2034 ], [ %2019, %1998 ], [ %1179, %1186 ]
  %2123 = phi float [ %1974, %1967 ], [ %1180, %1367 ], [ %1180, %1165 ], [ %1974, %2082 ], [ %1974, %2080 ], [ %1974, %2034 ], [ %1974, %1998 ], [ %1180, %1186 ]
  %2124 = phi float [ %1182, %1967 ], [ %1182, %1367 ], [ %1182, %1165 ], [ %2093, %2082 ], [ %1182, %2080 ], [ %2065, %2034 ], [ %2010, %1998 ], [ %1182, %1186 ]
  %2125 = phi float [ %1183, %1967 ], [ %1183, %1367 ], [ %1183, %1165 ], [ %2090, %2082 ], [ %1183, %2080 ], [ %2042, %2034 ], [ %2007, %1998 ], [ %1183, %1186 ]
  %2126 = phi float [ %1184, %1967 ], [ %1184, %1367 ], [ %1184, %1165 ], [ %2101, %2082 ], [ %1184, %2080 ], [ %2073, %2034 ], [ %2022, %1998 ], [ %1184, %1186 ]
  %2127 = phi float [ %1975, %1967 ], [ %1185, %1367 ], [ %1185, %1165 ], [ %1975, %2082 ], [ %1975, %2080 ], [ %1975, %2034 ], [ %1975, %1998 ], [ %1185, %1186 ]
  br i1 %455, label %3050, label %2128

; <label>:2128                                    ; preds = %2108
  %2129 = icmp ult i32 %511, 3
  %2130 = add i32 %42, 56
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %42, 60
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = or i32 %2135, %2132
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %3050, label %2138

; <label>:2138                                    ; preds = %2128
  %2139 = and i32 %2132, 262144
  %2140 = icmp ne i32 %2139, 0
  %2141 = select i1 %2140, float %47, float 1.000000e+00
  %2142 = select i1 %2140, float %48, float 0.000000e+00
  %2143 = select i1 %2140, float %49, float 0.000000e+00
  %2144 = select i1 %2140, float %50, float 1.000000e+00
  %2145 = select i1 %2140, float %51, float %79
  %2146 = select i1 %2140, float %52, float %80
  %2147 = add i32 %42, 316
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = lshr i32 %2149, 16
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = fmul fast float %2151, 0x3F50624DE0000000
  %2153 = add i32 %42, 120
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 16
  %2157 = and i32 %2156, 255
  %2158 = lshr i32 %2155, 24
  %2159 = add i32 %42, 324
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %2161, 65535
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = lshr i32 %2161, 16
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = add i32 %42, 64
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = lshr i32 %2168, 22
  %2170 = shl nuw nsw i32 %2169, 5
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = shl i32 %2168, 4
  %2173 = and i32 %2172, 32752
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = lshr i32 %2168, 7
  %2176 = and i32 %2175, 32752
  %2177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2176)  ; LegacyF16ToF32(value)
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 3
  %2180 = fmul fast float %2179, 1.000000e+03
  %2181 = fmul fast float %405, %2180
  %2182 = call float @dx.op.unary.f32(i32 22, float %2181)  ; Frc(value)
  %2183 = fadd fast float %2182, %395
  %2184 = fmul fast float %406, %2180
  %2185 = call float @dx.op.unary.f32(i32 22, float %2184)  ; Frc(value)
  %2186 = fadd fast float %2185, %397
  %2187 = fmul fast float %2152, %2180
  %2188 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2189 = fmul fast float %2188, 0x401921FB60000000
  %2190 = fadd fast float %2189, %2171
  %2191 = call float @dx.op.unary.f32(i32 13, float %2190)  ; Sin(value)
  %2192 = call float @dx.op.unary.f32(i32 12, float %2190)  ; Cos(value)
  %2193 = fsub fast float -0.000000e+00, %2191
  %2194 = fadd fast float %2145, -5.000000e-01
  %2195 = fadd fast float %2146, -5.000000e-01
  %2196 = fmul fast float %2163, %2194
  %2197 = fmul fast float %2165, %2195
  %2198 = fadd fast float %2196, 5.000000e-01
  %2199 = fadd fast float %2197, 5.000000e-01
  %2200 = fmul fast float %2174, %2198
  %2201 = fmul fast float %2177, %2199
  %2202 = fmul fast float %2192, %2200
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2193, float %2201, float %2202)  ; FMad(a,b,c)
  %2204 = fmul fast float %2191, %2200
  %2205 = call float @dx.op.tertiary.f32(i32 46, float %2192, float %2201, float %2204)  ; FMad(a,b,c)
  %2206 = fadd fast float %2183, %2203
  %2207 = fadd fast float %2186, %2205
  %2208 = icmp ugt i32 %2157, 1
  %2209 = icmp ugt i32 %2155, 33554431
  %2210 = or i1 %2209, %2208
  br i1 %2210, label %2211, label %2236

; <label>:2211                                    ; preds = %2138
  %2212 = add i32 %42, 260
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = lshr i32 %2214, 16
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = fmul fast float %2179, %2216
  %2218 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2219 = mul nuw nsw i32 %2157, %2158
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2218, %2220
  %2222 = call float @dx.op.unary.f32(i32 27, float %2221)  ; Round_ni(value)
  %2223 = fptoui float %2222 to i32
  %2224 = urem i32 %2223, %2157
  %2225 = udiv i32 %2223, %2158
  %2226 = call float @dx.op.unary.f32(i32 22, float %2206)  ; Frc(value)
  %2227 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2228 = uitofp i32 %2224 to float
  %2229 = uitofp i32 %2225 to float
  %2230 = fadd fast float %2226, %2228
  %2231 = fadd fast float %2227, %2229
  %2232 = uitofp i32 %2157 to float
  %2233 = uitofp i32 %2158 to float
  %2234 = fdiv fast float %2230, %2232
  %2235 = fdiv fast float %2231, %2233
  br label %2236

; <label>:2236                                    ; preds = %2211, %2138
  %2237 = phi float [ %2234, %2211 ], [ %2206, %2138 ]
  %2238 = phi float [ %2235, %2211 ], [ %2207, %2138 ]
  %2239 = and i32 %2132, 256
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2287, label %2241

; <label>:2241                                    ; preds = %2236
  %2242 = add i32 %42, 496
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %2244, 0
  %2246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2246, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = add i32 %42, 132
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = shl i32 %2251, 4
  %2253 = and i32 %2252, 32752
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = lshr i32 %2251, 7
  %2256 = and i32 %2255, 32752
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = fsub fast float 1.000000e+00, %507
  %2259 = call float @dx.op.binary.f32(i32 35, float %2258, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2260 = bitcast float %507 to i32
  %2261 = sitofp i32 %2260 to float
  %2262 = fadd fast float %2261, 0xC1CFBF8940000000
  %2263 = fmul fast float %2257, %2262
  %2264 = fadd fast float %2263, 0x41CFBF8940000000
  %2265 = fptosi float %2264 to i32
  %2266 = bitcast i32 %2265 to float
  %2267 = bitcast float %2259 to i32
  %2268 = sitofp i32 %2267 to float
  %2269 = fadd fast float %2268, 0xC1CFBF8940000000
  %2270 = fmul fast float %2269, %2257
  %2271 = fadd fast float %2270, 0x41CFBF8940000000
  %2272 = fptosi float %2271 to i32
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2266, %2254
  %2275 = fmul fast float %2273, %2254
  %2276 = fsub fast float %2259, %2274
  %2277 = fadd fast float %2275, %2259
  %2278 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2280 = fsub fast float %2248, %2278
  %2281 = fsub fast float %2279, %2278
  %2282 = bitcast float %2281 to i32
  %2283 = sub nsw i32 2129859010, %2282
  %2284 = bitcast i32 %2283 to float
  %2285 = fmul fast float %2284, %2280
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  br label %2287

; <label>:2287                                    ; preds = %2241, %2236
  %2288 = phi float [ %2286, %2241 ], [ %507, %2236 ]
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 128
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2309, label %2293

; <label>:2293                                    ; preds = %2287
  %2294 = add i32 %42, 480
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = add i32 %2296, 0
  %2298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2298, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2300 = extractvalue %dx.types.ResRet.f32 %2299, 0
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 524288
  %2304 = icmp ne i32 %2303, 0
  %2305 = fcmp fast ogt float %2300, 0x3FE0101020000000
  %2306 = select i1 %2305, float 1.000000e+00, float 0.000000e+00
  %2307 = select i1 %2304, float %2306, float %2300
  %2308 = fmul fast float %2307, %2288
  br label %2309

; <label>:2309                                    ; preds = %2293, %2287
  %2310 = phi float [ %2308, %2293 ], [ %2288, %2287 ]
  %2311 = fcmp fast ult float %2310, 0x3F70101020000000
  br i1 %2311, label %3050, label %2312

; <label>:2312                                    ; preds = %2309
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 16
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2515, label %2317

; <label>:2317                                    ; preds = %2312
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %42, 432
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2324, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  %2330 = and i32 %2319, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = lshr i32 %2319, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2329, %2331
  %2336 = fadd fast float %2335, %2334
  %2337 = fmul fast float %2336, 0x3F70101000000000
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 512
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2350, label %2342

; <label>:2342                                    ; preds = %2317
  %2343 = add i32 %42, 516
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  br label %2350

; <label>:2350                                    ; preds = %2342, %2317
  %2351 = phi float [ %2349, %2342 ], [ 1.000000e+00, %2317 ]
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 33554432
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2462, label %2356

; <label>:2356                                    ; preds = %2350
  %2357 = add i32 %42, 256
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 65535
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = lshr i32 %2359, 16
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = add i32 %42, 260
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 65535
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 24
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = and i32 %2370, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2370, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = lshr i32 %2370, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F70101020000000
  %2385 = add i32 %42, 252
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = lshr i32 %2387, 24
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = and i32 %2387, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = lshr i32 %2387, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = lshr i32 %2387, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = bitcast float %2326 to i32
  %2403 = ashr i32 %2402, 1
  %2404 = sub nsw i32 1597463174, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2326, 5.000000e-01
  %2407 = fmul fast float %2405, %2405
  %2408 = fmul fast float %2407, %2406
  %2409 = fsub fast float 1.500000e+00, %2408
  %2410 = fmul fast float %2405, %2326
  %2411 = fmul fast float %2410, %2409
  %2412 = bitcast float %2327 to i32
  %2413 = ashr i32 %2412, 1
  %2414 = sub nsw i32 1597463174, %2413
  %2415 = bitcast i32 %2414 to float
  %2416 = fmul fast float %2327, 5.000000e-01
  %2417 = fmul fast float %2415, %2415
  %2418 = fmul fast float %2417, %2416
  %2419 = fsub fast float 1.500000e+00, %2418
  %2420 = fmul fast float %2415, %2327
  %2421 = fmul fast float %2420, %2419
  %2422 = bitcast float %2328 to i32
  %2423 = ashr i32 %2422, 1
  %2424 = sub nsw i32 1597463174, %2423
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2328, 5.000000e-01
  %2427 = fmul fast float %2425, %2425
  %2428 = fmul fast float %2427, %2426
  %2429 = fsub fast float 1.500000e+00, %2428
  %2430 = fmul fast float %2425, %2328
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float %2411, %2393
  %2433 = fsub fast float %2421, %2397
  %2434 = fsub fast float %2431, %2401
  %2435 = fmul fast float %2432, %2361
  %2436 = fmul fast float %2433, %2363
  %2437 = fmul fast float %2434, %2368
  %2438 = fadd fast float %2435, %2376
  %2439 = fadd fast float %2436, %2380
  %2440 = fadd fast float %2437, %2384
  %2441 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  %2443 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2444 = fmul fast float %2441, %2441
  %2445 = fmul fast float %2442, %2442
  %2446 = fmul fast float %2443, %2443
  %2447 = fsub fast float %2444, %2326
  %2448 = fsub fast float %2445, %2327
  %2449 = fsub fast float %2446, %2328
  %2450 = fmul fast float %2447, %2351
  %2451 = fmul fast float %2448, %2351
  %2452 = fmul fast float %2449, %2351
  %2453 = fadd fast float %2450, %2326
  %2454 = fadd fast float %2451, %2327
  %2455 = fadd fast float %2452, %2328
  %2456 = fadd fast float %2373, %2337
  %2457 = fsub fast float %2456, %2390
  %2458 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2459 = fsub fast float %2458, %2337
  %2460 = fmul fast float %2459, %2351
  %2461 = fadd fast float %2460, %2337
  br label %2515

; <label>:2462                                    ; preds = %2350
  %2463 = and i32 %2353, 134217728
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2499, label %2465

; <label>:2465                                    ; preds = %2462
  %2466 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fmul fast float %2469, %2351
  %2473 = fmul fast float %2470, %2351
  %2474 = fmul fast float %2471, %2351
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2479 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2480 = call float @dx.op.unary.f32(i32 24, float %2328)  ; Sqrt(value)
  %2481 = fmul fast float %2475, 2.000000e+00
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2482, %2478
  %2484 = fadd fast float %2483, %2481
  %2485 = fmul fast float %2484, %2478
  %2486 = fmul fast float %2476, 2.000000e+00
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = fmul fast float %2487, %2479
  %2489 = fadd fast float %2488, %2486
  %2490 = fmul fast float %2489, %2479
  %2491 = fmul fast float %2477, 2.000000e+00
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2492, %2480
  %2494 = fadd fast float %2493, %2491
  %2495 = fmul fast float %2494, %2480
  %2496 = fmul fast float %2485, %2485
  %2497 = fmul fast float %2490, %2490
  %2498 = fmul fast float %2495, %2495
  br label %2515

; <label>:2499                                    ; preds = %2462
  %2500 = fmul fast float %382, %382
  %2501 = fmul fast float %386, %386
  %2502 = fmul fast float %390, %390
  %2503 = fadd fast float %2500, -1.000000e+00
  %2504 = fadd fast float %2501, -1.000000e+00
  %2505 = fadd fast float %2502, -1.000000e+00
  %2506 = fmul fast float %2351, %2503
  %2507 = fmul fast float %2351, %2504
  %2508 = fmul fast float %2351, %2505
  %2509 = fadd fast float %2506, 1.000000e+00
  %2510 = fadd fast float %2507, 1.000000e+00
  %2511 = fadd fast float %2508, 1.000000e+00
  %2512 = fmul fast float %2509, %2326
  %2513 = fmul fast float %2510, %2327
  %2514 = fmul fast float %2511, %2328
  br label %2515

; <label>:2515                                    ; preds = %2499, %2465, %2356, %2312
  %2516 = phi float [ %2461, %2356 ], [ %2337, %2465 ], [ %2337, %2499 ], [ 0x3FA23C0BE0000000, %2312 ]
  %2517 = phi float [ %2453, %2356 ], [ %2496, %2465 ], [ %2512, %2499 ], [ 1.000000e+00, %2312 ]
  %2518 = phi float [ %2454, %2356 ], [ %2497, %2465 ], [ %2513, %2499 ], [ 1.000000e+00, %2312 ]
  %2519 = phi float [ %2455, %2356 ], [ %2498, %2465 ], [ %2514, %2499 ], [ 1.000000e+00, %2312 ]
  %2520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.i32 %2520, 1
  %2522 = and i32 %2521, 1
  %2523 = icmp ne i32 %2522, 0
  %2524 = add i32 %42, 356
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 32
  %2528 = icmp ne i32 %2527, 0
  %2529 = and i1 %2523, %2528
  %2530 = select i1 %2529, float 1.000000e+00, float %2517
  %2531 = select i1 %2529, float 0x3FD3333340000000, float %2518
  %2532 = select i1 %2529, float 0x3FD3333340000000, float %2519
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 32
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2609, label %2537

; <label>:2537                                    ; preds = %2515
  %2538 = add i32 %42, 124
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %42, 448
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = extractvalue %dx.types.ResRet.f32 %2546, 3
  %2551 = and i32 %2540, 255
  %2552 = uitofp i32 %2551 to float
  %2553 = lshr i32 %2540, 8
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = lshr i32 %2540, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101000000000
  %2560 = fmul fast float %2547, %2552
  %2561 = fadd fast float %2560, %2555
  %2562 = fmul fast float %2561, 0x3F70101000000000
  %2563 = fadd fast float %2548, -5.000000e-01
  %2564 = fadd fast float %2550, -5.000000e-01
  %2565 = fmul fast float %2563, %2559
  %2566 = fmul fast float %2564, %2559
  %2567 = fadd fast float %2565, 5.000000e-01
  %2568 = fadd fast float %2566, 5.000000e-01
  %2569 = fmul fast float %2567, 2.000000e+00
  %2570 = fadd fast float %2569, -1.000000e+00
  %2571 = fmul fast float %2568, 2.000000e+00
  %2572 = fadd fast float %2571, -1.000000e+00
  %2573 = fadd fast float %2570, %2572
  %2574 = fmul fast float %2573, 5.000000e-01
  %2575 = fsub fast float %2570, %2572
  %2576 = fmul fast float %2575, 5.000000e-01
  %2577 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2578 = fsub fast float 1.000000e+00, %2577
  %2579 = call float @dx.op.unary.f32(i32 6, float %2576)  ; FAbs(value)
  %2580 = fsub fast float %2578, %2579
  %2581 = call float @dx.op.dot3.f32(i32 55, float %2574, float %2576, float %2580, float %2574, float %2576, float %2580)  ; Dot3(ax,ay,az,bx,by,bz)
  %2582 = call float @dx.op.unary.f32(i32 25, float %2581)  ; Rsqrt(value)
  %2583 = fmul fast float %2574, %2582
  %2584 = fmul fast float %2576, %2582
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 67108864
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2605, label %2589

; <label>:2589                                    ; preds = %2537
  %2590 = add i32 %42, 312
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 65535
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 65535
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = lshr i32 %2592, 16
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = fsub fast float %2562, %2600
  %2602 = fmul fast float %2601, %2594
  %2603 = fadd fast float %2602, %2598
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  br label %2605

; <label>:2605                                    ; preds = %2589, %2537
  %2606 = phi float [ %2604, %2589 ], [ %2562, %2537 ]
  %2607 = call float @dx.op.dot2.f32(i32 54, float %2583, float %2584, float %2141, float %2142)  ; Dot2(ax,ay,bx,by)
  %2608 = call float @dx.op.dot2.f32(i32 54, float %2583, float %2584, float %2143, float %2144)  ; Dot2(ax,ay,bx,by)
  br label %2609

; <label>:2609                                    ; preds = %2605, %2515
  %2610 = phi float [ %2606, %2605 ], [ 0x3FD6666660000000, %2515 ]
  %2611 = phi float [ %2607, %2605 ], [ 0.000000e+00, %2515 ]
  %2612 = phi float [ %2608, %2605 ], [ 0.000000e+00, %2515 ]
  %2613 = phi float [ %2549, %2605 ], [ 1.000000e+00, %2515 ]
  %2614 = add i32 %42, 192
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = lshr i32 %2616, 22
  %2618 = shl nuw nsw i32 %2617, 5
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 64
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2657, label %2624

; <label>:2624                                    ; preds = %2609
  %2625 = add i32 %42, 464
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = add i32 %2627, 0
  %2629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 131072
  %2633 = icmp eq i32 %2632, 0
  %2634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2629, %dx.types.Handle %93, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.ResRet.f32 %2634, 2
  %2638 = fmul fast float %2635, %370
  %2639 = fmul fast float %2636, %373
  %2640 = fmul fast float %2637, %376
  br i1 %2633, label %2647, label %2641

; <label>:2641                                    ; preds = %2624
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 0
  %2644 = fmul fast float %2643, %2638
  %2645 = fmul fast float %2643, %2639
  %2646 = fmul fast float %2643, %2640
  br label %2647

; <label>:2647                                    ; preds = %2641, %2624
  %2648 = phi float [ %2644, %2641 ], [ %2638, %2624 ]
  %2649 = phi float [ %2645, %2641 ], [ %2639, %2624 ]
  %2650 = phi float [ %2646, %2641 ], [ %2640, %2624 ]
  %2651 = fmul fast float %2648, %2619
  %2652 = select i1 %269, float %2651, float %2648
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2652, float %2649, float %2650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = select i1 %269, float 0.000000e+00, float %2648
  %2655 = select i1 %269, float %2653, float %2649
  %2656 = select i1 %269, float 0.000000e+00, float %2650
  br label %2657

; <label>:2657                                    ; preds = %2647, %2609
  %2658 = phi float [ %2654, %2647 ], [ 0.000000e+00, %2609 ]
  %2659 = phi float [ %2655, %2647 ], [ 0.000000e+00, %2609 ]
  %2660 = phi float [ %2656, %2647 ], [ 0.000000e+00, %2609 ]
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 1024
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2695, label %2665

; <label>:2665                                    ; preds = %2657
  %2666 = add i32 %42, 184
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = lshr i32 %2668, 8
  %2673 = and i32 %2672, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = lshr i32 %2668, 16
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = fmul fast float %2671, %2671
  %2681 = fmul fast float %2675, %2675
  %2682 = fmul fast float %2679, %2679
  %2683 = add i32 %42, 532
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = fmul fast float %2680, %2689
  %2693 = fmul fast float %2681, %2690
  %2694 = fmul fast float %2682, %2691
  br label %2695

; <label>:2695                                    ; preds = %2665, %2657
  %2696 = phi float [ %2692, %2665 ], [ 0.000000e+00, %2657 ]
  %2697 = phi float [ %2693, %2665 ], [ 0.000000e+00, %2657 ]
  %2698 = phi float [ %2694, %2665 ], [ 0.000000e+00, %2657 ]
  %2699 = fcmp fast ogt float %2696, 0.000000e+00
  %2700 = fcmp fast ogt float %2697, 0.000000e+00
  %2701 = fcmp fast ogt float %2698, 0.000000e+00
  %2702 = call float @dx.op.unary.f32(i32 23, float %2696)  ; Log(value)
  %2703 = call float @dx.op.unary.f32(i32 23, float %2697)  ; Log(value)
  %2704 = call float @dx.op.unary.f32(i32 23, float %2698)  ; Log(value)
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = lshr i32 %2706, 7
  %2708 = and i32 %2707, 32752
  %2709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2708)  ; LegacyF16ToF32(value)
  %2710 = fmul fast float %2702, 0xBFE62E4300000000
  %2711 = fmul fast float %2710, %2709
  %2712 = fmul fast float %2703, 0xBFE62E4300000000
  %2713 = fmul fast float %2712, %2709
  %2714 = fmul fast float %2704, 0xBFE62E4300000000
  %2715 = fmul fast float %2714, %2709
  %2716 = select i1 %2699, float %2711, float 1.270000e+02
  %2717 = select i1 %2700, float %2713, float 1.270000e+02
  %2718 = select i1 %2701, float %2715, float 1.270000e+02
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 10240
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2767, label %2723

; <label>:2723                                    ; preds = %2695
  %2724 = add i32 %42, 548
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = add i32 %2726, 0
  %2728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2728, %dx.types.Handle %94, float %2237, float %2238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 3
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 1048576
  %2735 = icmp ne i32 %2734, 0
  %2736 = and i32 %2733, 8192
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2753, label %2738

; <label>:2738                                    ; preds = %2723
  %2739 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2740 = select i1 %2735, float %2739, float %2730
  %2741 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2742 = select i1 %2735, float %2741, float %2730
  %2743 = add i32 %42, 128
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = lshr i32 %2745, 16
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3F80101020000000
  %2750 = fmul fast float %2749, %2742
  %2751 = fmul fast float %2749, %2730
  %2752 = fmul fast float %2749, %2740
  br label %2753

; <label>:2753                                    ; preds = %2738, %2723
  %2754 = phi float [ %2750, %2738 ], [ 0.000000e+00, %2723 ]
  %2755 = phi float [ %2751, %2738 ], [ 0.000000e+00, %2723 ]
  %2756 = phi float [ %2752, %2738 ], [ 0.000000e+00, %2723 ]
  %2757 = and i32 %2733, 2048
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2767, label %2759

; <label>:2759                                    ; preds = %2753
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = shl i32 %2761, 4
  %2763 = and i32 %2762, 32752
  %2764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2763)  ; LegacyF16ToF32(value)
  %2765 = fmul fast float %2764, %2731
  %2766 = call float @dx.op.binary.f32(i32 35, float %2765, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2767

; <label>:2767                                    ; preds = %2759, %2753, %2695
  %2768 = phi float [ %2754, %2759 ], [ %2754, %2753 ], [ 0.000000e+00, %2695 ]
  %2769 = phi float [ %2755, %2759 ], [ %2755, %2753 ], [ 0.000000e+00, %2695 ]
  %2770 = phi float [ %2756, %2759 ], [ %2756, %2753 ], [ 0.000000e+00, %2695 ]
  %2771 = phi float [ %2766, %2759 ], [ 0x3F70101020000000, %2753 ], [ 0x3F70101020000000, %2695 ]
  %2772 = add i32 %42, 128
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = lshr i32 %2774, 8
  %2778 = and i32 %2777, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = call float @dx.op.dot3.f32(i32 55, float %2530, float %2531, float %2532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2781 = fmul fast float %2779, %2780
  %2782 = fadd fast float %2781, %2776
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  br i1 %2129, label %2785, label %2820

; <label>:2785                                    ; preds = %2767
  %2786 = fmul fast float %2771, 2.000000e+00
  %2787 = fcmp fast olt float %2716, 1.270000e+02
  %2788 = fcmp fast olt float %2717, 1.270000e+02
  %2789 = fcmp fast olt float %2718, 1.270000e+02
  %2790 = fmul fast float %2716, 0xBFF7154760000000
  %2791 = fmul fast float %2790, %2786
  %2792 = fmul fast float %2717, 0xBFF7154760000000
  %2793 = fmul fast float %2792, %2786
  %2794 = fmul fast float %2718, 0xBFF7154760000000
  %2795 = fmul fast float %2794, %2786
  %2796 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2797 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2798 = call float @dx.op.unary.f32(i32 21, float %2795)  ; Exp(value)
  %2799 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2800 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2801 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = select i1 %2787, float %2802, float -1.000000e+00
  %2804 = fadd fast float %2800, -1.000000e+00
  %2805 = select i1 %2788, float %2804, float -1.000000e+00
  %2806 = fadd fast float %2801, -1.000000e+00
  %2807 = select i1 %2789, float %2806, float -1.000000e+00
  %2808 = fmul fast float %2803, %2310
  %2809 = fmul fast float %2805, %2310
  %2810 = fmul fast float %2807, %2310
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2111
  %2815 = fmul fast float %2812, %2112
  %2816 = fmul fast float %2813, %2113
  %2817 = fmul fast float %2811, %2114
  %2818 = fmul fast float %2812, %2115
  %2819 = fmul fast float %2813, %2116
  br label %2820

; <label>:2820                                    ; preds = %2785, %2767
  %2821 = phi float [ %2814, %2785 ], [ %2111, %2767 ]
  %2822 = phi float [ %2815, %2785 ], [ %2112, %2767 ]
  %2823 = phi float [ %2816, %2785 ], [ %2113, %2767 ]
  %2824 = phi float [ %2817, %2785 ], [ %2114, %2767 ]
  %2825 = phi float [ %2818, %2785 ], [ %2115, %2767 ]
  %2826 = phi float [ %2819, %2785 ], [ %2116, %2767 ]
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 3
  %2830 = icmp eq i32 %2829, 3
  br i1 %2830, label %2909, label %2831

; <label>:2831                                    ; preds = %2820
  %2832 = and i32 %2828, 16
  %2833 = icmp ne i32 %2832, 0
  %2834 = select i1 %2833, float %2310, float 0.000000e+00
  %2835 = icmp eq i32 %2829, 0
  br i1 %2835, label %2836, label %2864

; <label>:2836                                    ; preds = %2831
  %2837 = and i32 %2828, 64
  %2838 = icmp ne i32 %2837, 0
  %2839 = select i1 %2838, float %2310, float 0.000000e+00
  %2840 = fsub fast float %2530, %2821
  %2841 = fsub fast float %2531, %2822
  %2842 = fsub fast float %2532, %2823
  %2843 = fmul fast float %2834, %2840
  %2844 = fmul fast float %2834, %2841
  %2845 = fmul fast float %2834, %2842
  %2846 = fadd fast float %2843, %2821
  %2847 = fadd fast float %2844, %2822
  %2848 = fadd fast float %2845, %2823
  %2849 = fsub fast float %2516, %2123
  %2850 = fmul fast float %2834, %2849
  %2851 = fadd fast float %2850, %2123
  %2852 = fsub fast float %2658, %2824
  %2853 = fsub fast float %2659, %2825
  %2854 = fsub fast float %2660, %2826
  %2855 = fmul fast float %2839, %2852
  %2856 = fmul fast float %2839, %2853
  %2857 = fmul fast float %2839, %2854
  %2858 = fadd fast float %2855, %2824
  %2859 = fadd fast float %2856, %2825
  %2860 = fadd fast float %2857, %2826
  %2861 = fsub fast float %2784, %2127
  %2862 = fmul fast float %2834, %2861
  %2863 = fadd fast float %2862, %2127
  br label %2909

; <label>:2864                                    ; preds = %2831
  %2865 = icmp eq i32 %2829, 1
  br i1 %2865, label %2866, label %2879

; <label>:2866                                    ; preds = %2864
  %2867 = fadd fast float %2530, -1.000000e+00
  %2868 = fadd fast float %2531, -1.000000e+00
  %2869 = fadd fast float %2532, -1.000000e+00
  %2870 = fmul fast float %2834, %2867
  %2871 = fmul fast float %2834, %2868
  %2872 = fmul fast float %2834, %2869
  %2873 = fadd fast float %2870, 1.000000e+00
  %2874 = fadd fast float %2871, 1.000000e+00
  %2875 = fadd fast float %2872, 1.000000e+00
  %2876 = fmul fast float %2873, %2821
  %2877 = fmul fast float %2874, %2822
  %2878 = fmul fast float %2875, %2823
  br label %2909

; <label>:2879                                    ; preds = %2864
  %2880 = icmp eq i32 %2829, 2
  br i1 %2880, label %2881, label %2909

; <label>:2881                                    ; preds = %2879
  %2882 = call float @dx.op.unary.f32(i32 24, float %2530)  ; Sqrt(value)
  %2883 = call float @dx.op.unary.f32(i32 24, float %2531)  ; Sqrt(value)
  %2884 = call float @dx.op.unary.f32(i32 24, float %2532)  ; Sqrt(value)
  %2885 = fadd fast float %2882, -5.000000e-01
  %2886 = fadd fast float %2883, -5.000000e-01
  %2887 = fadd fast float %2884, -5.000000e-01
  %2888 = fmul fast float %2885, %2834
  %2889 = fmul fast float %2886, %2834
  %2890 = fmul fast float %2887, %2834
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fmul fast float %2891, 2.000000e+00
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2821
  %2897 = fadd fast float %2896, %2894
  %2898 = fmul fast float %2897, %2821
  %2899 = fmul fast float %2892, 2.000000e+00
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2822
  %2902 = fadd fast float %2901, %2899
  %2903 = fmul fast float %2902, %2822
  %2904 = fmul fast float %2893, 2.000000e+00
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2905, %2823
  %2907 = fadd fast float %2906, %2904
  %2908 = fmul fast float %2907, %2823
  br label %2909

; <label>:2909                                    ; preds = %2881, %2879, %2866, %2836, %2820
  %2910 = phi float [ %2821, %2820 ], [ %2898, %2881 ], [ %2821, %2879 ], [ %2876, %2866 ], [ %2846, %2836 ]
  %2911 = phi float [ %2822, %2820 ], [ %2903, %2881 ], [ %2822, %2879 ], [ %2877, %2866 ], [ %2847, %2836 ]
  %2912 = phi float [ %2823, %2820 ], [ %2908, %2881 ], [ %2823, %2879 ], [ %2878, %2866 ], [ %2848, %2836 ]
  %2913 = phi float [ %2824, %2820 ], [ %2824, %2881 ], [ %2824, %2879 ], [ %2824, %2866 ], [ %2858, %2836 ]
  %2914 = phi float [ %2825, %2820 ], [ %2825, %2881 ], [ %2825, %2879 ], [ %2825, %2866 ], [ %2859, %2836 ]
  %2915 = phi float [ %2826, %2820 ], [ %2826, %2881 ], [ %2826, %2879 ], [ %2826, %2866 ], [ %2860, %2836 ]
  %2916 = phi float [ %2123, %2820 ], [ %2123, %2881 ], [ %2123, %2879 ], [ %2123, %2866 ], [ %2851, %2836 ]
  %2917 = phi float [ %2127, %2820 ], [ %2127, %2881 ], [ %2127, %2879 ], [ %2127, %2866 ], [ %2863, %2836 ]
  %2918 = and i32 %2828, 12
  %2919 = icmp eq i32 %2918, 12
  br i1 %2919, label %3050, label %2920

; <label>:2920                                    ; preds = %2909
  %2921 = and i32 %2828, 2097184
  %2922 = icmp eq i32 %2921, 2097184
  %2923 = select i1 %2922, float %2310, float 0.000000e+00
  %2924 = and i32 %2828, 4194336
  %2925 = icmp eq i32 %2924, 4194336
  %2926 = select i1 %2925, float %2310, float 0.000000e+00
  %2927 = and i32 %2828, 8388640
  %2928 = icmp eq i32 %2927, 8388640
  %2929 = select i1 %2928, float %2310, float 0.000000e+00
  %2930 = and i32 %2828, 1024
  %2931 = icmp ne i32 %2930, 0
  %2932 = select i1 %2931, float %2310, float 0.000000e+00
  %2933 = and i32 %2828, 2048
  %2934 = icmp ne i32 %2933, 0
  %2935 = select i1 %2934, float %2310, float 0.000000e+00
  %2936 = and i32 %2828, 8192
  %2937 = icmp ne i32 %2936, 0
  %2938 = select i1 %2937, float %2310, float 0.000000e+00
  %2939 = icmp eq i32 %2918, 0
  br i1 %2939, label %2940, label %2974

; <label>:2940                                    ; preds = %2920
  %2941 = fsub fast float %2611, %2109
  %2942 = fsub fast float %2612, %2110
  %2943 = fmul fast float %2923, %2941
  %2944 = fmul fast float %2923, %2942
  %2945 = fadd fast float %2943, %2109
  %2946 = fadd fast float %2944, %2110
  %2947 = fsub fast float %2613, %2125
  %2948 = fmul fast float %2926, %2947
  %2949 = fadd fast float %2948, %2125
  %2950 = fsub fast float %2610, %2124
  %2951 = fmul fast float %2929, %2950
  %2952 = fadd fast float %2951, %2124
  %2953 = fsub fast float %2716, %2120
  %2954 = fsub fast float %2717, %2121
  %2955 = fsub fast float %2718, %2122
  %2956 = fmul fast float %2932, %2953
  %2957 = fmul fast float %2932, %2954
  %2958 = fmul fast float %2932, %2955
  %2959 = fadd fast float %2956, %2120
  %2960 = fadd fast float %2957, %2121
  %2961 = fadd fast float %2958, %2122
  %2962 = fsub fast float %2771, %2126
  %2963 = fmul fast float %2935, %2962
  %2964 = fadd fast float %2963, %2126
  %2965 = fsub fast float %2768, %2117
  %2966 = fsub fast float %2769, %2118
  %2967 = fsub fast float %2770, %2119
  %2968 = fmul fast float %2938, %2965
  %2969 = fmul fast float %2938, %2966
  %2970 = fmul fast float %2938, %2967
  %2971 = fadd fast float %2968, %2117
  %2972 = fadd fast float %2969, %2118
  %2973 = fadd fast float %2970, %2119
  br label %3050

; <label>:2974                                    ; preds = %2920
  %2975 = icmp eq i32 %2918, 4
  br i1 %2975, label %2976, label %3022

; <label>:2976                                    ; preds = %2974
  %2977 = fmul fast float %2923, %2611
  %2978 = fmul fast float %2923, %2612
  %2979 = fadd fast float %2977, %2109
  %2980 = fadd fast float %2978, %2110
  %2981 = call float @dx.op.binary.f32(i32 36, float %2125, float %2613)  ; FMin(a,b)
  %2982 = fsub fast float %2981, %2125
  %2983 = fmul fast float %2982, %2926
  %2984 = fadd fast float %2983, %2125
  %2985 = fadd fast float %2610, %2124
  %2986 = fmul fast float %2985, 0x3FF337FAE0000000
  %2987 = fmul fast float %2124, %2124
  %2988 = fmul fast float %2610, %2610
  %2989 = fadd fast float %2988, %2987
  %2990 = fmul fast float %2989, 0x3FE5152B00000000
  %2991 = fmul fast float %2124, 0xBFCC1F85E0000000
  %2992 = fmul fast float %2991, %2610
  %2993 = fadd fast float %2992, 0xBFE1363700000000
  %2994 = fadd fast float %2993, %2986
  %2995 = fsub fast float %2994, %2990
  %2996 = fmul fast float %2985, 0x3FBA6F0D00000000
  %2997 = fmul fast float %2989, 0x3FD0432880000000
  %2998 = fmul fast float %2124, 0xBFEF110800000000
  %2999 = fmul fast float %2998, %2610
  %3000 = fadd fast float %2999, 1.000000e+00
  %3001 = fsub fast float %3000, %2996
  %3002 = fadd fast float %3001, %2997
  %3003 = fdiv fast float %2995, %3002
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = fsub fast float %3004, %2124
  %3006 = fmul fast float %3005, %2929
  %3007 = fadd fast float %3006, %2124
  %3008 = fmul fast float %2932, %2716
  %3009 = fmul fast float %2932, %2717
  %3010 = fmul fast float %2932, %2718
  %3011 = fadd fast float %3008, %2120
  %3012 = fadd fast float %3009, %2121
  %3013 = fadd fast float %3010, %2122
  %3014 = fmul fast float %2935, %2771
  %3015 = fadd fast float %3014, %2126
  %3016 = fmul fast float %2938, %2768
  %3017 = fmul fast float %2938, %2769
  %3018 = fmul fast float %2938, %2770
  %3019 = fadd fast float %3016, %2117
  %3020 = fadd fast float %3017, %2118
  %3021 = fadd fast float %3018, %2119
  br label %3050

; <label>:3022                                    ; preds = %2974
  %3023 = icmp eq i32 %2918, 8
  br i1 %3023, label %3024, label %3050

; <label>:3024                                    ; preds = %3022
  %3025 = fmul fast float %2923, %2611
  %3026 = fmul fast float %2923, %2612
  %3027 = fadd fast float %3025, %2109
  %3028 = fadd fast float %3026, %2110
  %3029 = call float @dx.op.binary.f32(i32 36, float %2125, float %2613)  ; FMin(a,b)
  %3030 = fsub fast float %3029, %2125
  %3031 = fmul fast float %3030, %2926
  %3032 = fadd fast float %3031, %2125
  %3033 = fsub fast float %2610, %2124
  %3034 = fmul fast float %2929, %3033
  %3035 = fadd fast float %3034, %2124
  %3036 = fmul fast float %2932, %2716
  %3037 = fmul fast float %2932, %2717
  %3038 = fmul fast float %2932, %2718
  %3039 = fadd fast float %3036, %2120
  %3040 = fadd fast float %3037, %2121
  %3041 = fadd fast float %3038, %2122
  %3042 = fmul fast float %2935, %2771
  %3043 = fadd fast float %3042, %2126
  %3044 = fmul fast float %2938, %2768
  %3045 = fmul fast float %2938, %2769
  %3046 = fmul fast float %2938, %2770
  %3047 = fadd fast float %3044, %2117
  %3048 = fadd fast float %3045, %2118
  %3049 = fadd fast float %3046, %2119
  br label %3050

; <label>:3050                                    ; preds = %3024, %3022, %2976, %2940, %2909, %2309, %2128, %2108
  %3051 = phi float [ %2109, %2909 ], [ %2109, %2309 ], [ %2109, %2108 ], [ %3027, %3024 ], [ %2109, %3022 ], [ %2979, %2976 ], [ %2945, %2940 ], [ %2109, %2128 ]
  %3052 = phi float [ %2110, %2909 ], [ %2110, %2309 ], [ %2110, %2108 ], [ %3028, %3024 ], [ %2110, %3022 ], [ %2980, %2976 ], [ %2946, %2940 ], [ %2110, %2128 ]
  %3053 = phi float [ %2910, %2909 ], [ %2111, %2309 ], [ %2111, %2108 ], [ %2910, %3024 ], [ %2910, %3022 ], [ %2910, %2976 ], [ %2910, %2940 ], [ %2111, %2128 ]
  %3054 = phi float [ %2911, %2909 ], [ %2112, %2309 ], [ %2112, %2108 ], [ %2911, %3024 ], [ %2911, %3022 ], [ %2911, %2976 ], [ %2911, %2940 ], [ %2112, %2128 ]
  %3055 = phi float [ %2912, %2909 ], [ %2113, %2309 ], [ %2113, %2108 ], [ %2912, %3024 ], [ %2912, %3022 ], [ %2912, %2976 ], [ %2912, %2940 ], [ %2113, %2128 ]
  %3056 = phi float [ %2913, %2909 ], [ %2114, %2309 ], [ %2114, %2108 ], [ %2913, %3024 ], [ %2913, %3022 ], [ %2913, %2976 ], [ %2913, %2940 ], [ %2114, %2128 ]
  %3057 = phi float [ %2914, %2909 ], [ %2115, %2309 ], [ %2115, %2108 ], [ %2914, %3024 ], [ %2914, %3022 ], [ %2914, %2976 ], [ %2914, %2940 ], [ %2115, %2128 ]
  %3058 = phi float [ %2915, %2909 ], [ %2116, %2309 ], [ %2116, %2108 ], [ %2915, %3024 ], [ %2915, %3022 ], [ %2915, %2976 ], [ %2915, %2940 ], [ %2116, %2128 ]
  %3059 = phi float [ %2117, %2909 ], [ %2117, %2309 ], [ %2117, %2108 ], [ %3047, %3024 ], [ %2117, %3022 ], [ %3019, %2976 ], [ %2971, %2940 ], [ %2117, %2128 ]
  %3060 = phi float [ %2118, %2909 ], [ %2118, %2309 ], [ %2118, %2108 ], [ %3048, %3024 ], [ %2118, %3022 ], [ %3020, %2976 ], [ %2972, %2940 ], [ %2118, %2128 ]
  %3061 = phi float [ %2119, %2909 ], [ %2119, %2309 ], [ %2119, %2108 ], [ %3049, %3024 ], [ %2119, %3022 ], [ %3021, %2976 ], [ %2973, %2940 ], [ %2119, %2128 ]
  %3062 = phi float [ %2120, %2909 ], [ %2120, %2309 ], [ %2120, %2108 ], [ %3039, %3024 ], [ %2120, %3022 ], [ %3011, %2976 ], [ %2959, %2940 ], [ %2120, %2128 ]
  %3063 = phi float [ %2121, %2909 ], [ %2121, %2309 ], [ %2121, %2108 ], [ %3040, %3024 ], [ %2121, %3022 ], [ %3012, %2976 ], [ %2960, %2940 ], [ %2121, %2128 ]
  %3064 = phi float [ %2122, %2909 ], [ %2122, %2309 ], [ %2122, %2108 ], [ %3041, %3024 ], [ %2122, %3022 ], [ %3013, %2976 ], [ %2961, %2940 ], [ %2122, %2128 ]
  %3065 = phi float [ %2916, %2909 ], [ %2123, %2309 ], [ %2123, %2108 ], [ %2916, %3024 ], [ %2916, %3022 ], [ %2916, %2976 ], [ %2916, %2940 ], [ %2123, %2128 ]
  %3066 = phi float [ %2124, %2909 ], [ %2124, %2309 ], [ %2124, %2108 ], [ %3035, %3024 ], [ %2124, %3022 ], [ %3007, %2976 ], [ %2952, %2940 ], [ %2124, %2128 ]
  %3067 = phi float [ %2125, %2909 ], [ %2125, %2309 ], [ %2125, %2108 ], [ %3032, %3024 ], [ %2125, %3022 ], [ %2984, %2976 ], [ %2949, %2940 ], [ %2125, %2128 ]
  %3068 = phi float [ %2126, %2909 ], [ %2126, %2309 ], [ %2126, %2108 ], [ %3043, %3024 ], [ %2126, %3022 ], [ %3015, %2976 ], [ %2964, %2940 ], [ %2126, %2128 ]
  %3069 = phi float [ %2917, %2909 ], [ %2127, %2309 ], [ %2127, %2108 ], [ %2917, %3024 ], [ %2917, %3022 ], [ %2917, %2976 ], [ %2917, %2940 ], [ %2127, %2128 ]
  br i1 %457, label %3992, label %3070

; <label>:3070                                    ; preds = %3050
  %3071 = icmp ult i32 %511, 4
  %3072 = add i32 %42, 72
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %42, 76
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = or i32 %3077, %3074
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3992, label %3080

; <label>:3080                                    ; preds = %3070
  %3081 = and i32 %3074, 262144
  %3082 = icmp ne i32 %3081, 0
  %3083 = select i1 %3082, float %47, float 1.000000e+00
  %3084 = select i1 %3082, float %48, float 0.000000e+00
  %3085 = select i1 %3082, float %49, float 0.000000e+00
  %3086 = select i1 %3082, float %50, float 1.000000e+00
  %3087 = select i1 %3082, float %51, float %79
  %3088 = select i1 %3082, float %52, float %80
  %3089 = add i32 %42, 332
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = lshr i32 %3091, 16
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = fmul fast float %3093, 0x3F50624DE0000000
  %3095 = add i32 %42, 136
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = lshr i32 %3097, 16
  %3099 = and i32 %3098, 255
  %3100 = lshr i32 %3097, 24
  %3101 = add i32 %42, 340
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 65535
  %3105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3104)  ; LegacyF16ToF32(value)
  %3106 = lshr i32 %3103, 16
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = add i32 %42, 80
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = lshr i32 %3110, 22
  %3112 = shl nuw nsw i32 %3111, 5
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = shl i32 %3110, 4
  %3115 = and i32 %3114, 32752
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = lshr i32 %3110, 7
  %3118 = and i32 %3117, 32752
  %3119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3118)  ; LegacyF16ToF32(value)
  %3120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3120, 3
  %3122 = fmul fast float %3121, 1.000000e+03
  %3123 = fmul fast float %447, %3122
  %3124 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3125 = fadd fast float %3124, %437
  %3126 = fmul fast float %448, %3122
  %3127 = call float @dx.op.unary.f32(i32 22, float %3126)  ; Frc(value)
  %3128 = fadd fast float %3127, %439
  %3129 = fmul fast float %3094, %3122
  %3130 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3131 = fmul fast float %3130, 0x401921FB60000000
  %3132 = fadd fast float %3131, %3113
  %3133 = call float @dx.op.unary.f32(i32 13, float %3132)  ; Sin(value)
  %3134 = call float @dx.op.unary.f32(i32 12, float %3132)  ; Cos(value)
  %3135 = fsub fast float -0.000000e+00, %3133
  %3136 = fadd fast float %3087, -5.000000e-01
  %3137 = fadd fast float %3088, -5.000000e-01
  %3138 = fmul fast float %3105, %3136
  %3139 = fmul fast float %3107, %3137
  %3140 = fadd fast float %3138, 5.000000e-01
  %3141 = fadd fast float %3139, 5.000000e-01
  %3142 = fmul fast float %3116, %3140
  %3143 = fmul fast float %3119, %3141
  %3144 = fmul fast float %3134, %3142
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3135, float %3143, float %3144)  ; FMad(a,b,c)
  %3146 = fmul fast float %3133, %3142
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3134, float %3143, float %3146)  ; FMad(a,b,c)
  %3148 = fadd fast float %3125, %3145
  %3149 = fadd fast float %3128, %3147
  %3150 = icmp ugt i32 %3099, 1
  %3151 = icmp ugt i32 %3097, 33554431
  %3152 = or i1 %3151, %3150
  br i1 %3152, label %3153, label %3178

; <label>:3153                                    ; preds = %3080
  %3154 = add i32 %42, 276
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = lshr i32 %3156, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = fmul fast float %3121, %3158
  %3160 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3161 = mul nuw nsw i32 %3099, %3100
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3160, %3162
  %3164 = call float @dx.op.unary.f32(i32 27, float %3163)  ; Round_ni(value)
  %3165 = fptoui float %3164 to i32
  %3166 = urem i32 %3165, %3099
  %3167 = udiv i32 %3165, %3100
  %3168 = call float @dx.op.unary.f32(i32 22, float %3148)  ; Frc(value)
  %3169 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3170 = uitofp i32 %3166 to float
  %3171 = uitofp i32 %3167 to float
  %3172 = fadd fast float %3168, %3170
  %3173 = fadd fast float %3169, %3171
  %3174 = uitofp i32 %3099 to float
  %3175 = uitofp i32 %3100 to float
  %3176 = fdiv fast float %3172, %3174
  %3177 = fdiv fast float %3173, %3175
  br label %3178

; <label>:3178                                    ; preds = %3153, %3080
  %3179 = phi float [ %3176, %3153 ], [ %3148, %3080 ]
  %3180 = phi float [ %3177, %3153 ], [ %3149, %3080 ]
  %3181 = and i32 %3074, 256
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3229, label %3183

; <label>:3183                                    ; preds = %3178
  %3184 = add i32 %42, 500
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = add i32 %3186, 0
  %3188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3188, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = add i32 %42, 148
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = shl i32 %3193, 4
  %3195 = and i32 %3194, 32752
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = lshr i32 %3193, 7
  %3198 = and i32 %3197, 32752
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fsub fast float 1.000000e+00, %506
  %3201 = call float @dx.op.binary.f32(i32 35, float %3200, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3202 = bitcast float %506 to i32
  %3203 = sitofp i32 %3202 to float
  %3204 = fadd fast float %3203, 0xC1CFBF8940000000
  %3205 = fmul fast float %3199, %3204
  %3206 = fadd fast float %3205, 0x41CFBF8940000000
  %3207 = fptosi float %3206 to i32
  %3208 = bitcast i32 %3207 to float
  %3209 = bitcast float %3201 to i32
  %3210 = sitofp i32 %3209 to float
  %3211 = fadd fast float %3210, 0xC1CFBF8940000000
  %3212 = fmul fast float %3211, %3199
  %3213 = fadd fast float %3212, 0x41CFBF8940000000
  %3214 = fptosi float %3213 to i32
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3208, %3196
  %3217 = fmul fast float %3215, %3196
  %3218 = fsub fast float %3201, %3216
  %3219 = fadd fast float %3217, %3201
  %3220 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3222 = fsub fast float %3190, %3220
  %3223 = fsub fast float %3221, %3220
  %3224 = bitcast float %3223 to i32
  %3225 = sub nsw i32 2129859010, %3224
  %3226 = bitcast i32 %3225 to float
  %3227 = fmul fast float %3226, %3222
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  br label %3229

; <label>:3229                                    ; preds = %3183, %3178
  %3230 = phi float [ %3228, %3183 ], [ %506, %3178 ]
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 128
  %3234 = icmp eq i32 %3233, 0
  br i1 %3234, label %3251, label %3235

; <label>:3235                                    ; preds = %3229
  %3236 = add i32 %42, 484
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = add i32 %3238, 0
  %3240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3240, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 524288
  %3246 = icmp ne i32 %3245, 0
  %3247 = fcmp fast ogt float %3242, 0x3FE0101020000000
  %3248 = select i1 %3247, float 1.000000e+00, float 0.000000e+00
  %3249 = select i1 %3246, float %3248, float %3242
  %3250 = fmul fast float %3249, %3230
  br label %3251

; <label>:3251                                    ; preds = %3235, %3229
  %3252 = phi float [ %3250, %3235 ], [ %3230, %3229 ]
  %3253 = fcmp fast ult float %3252, 0x3F70101020000000
  br i1 %3253, label %3992, label %3254

; <label>:3254                                    ; preds = %3251
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 16
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3457, label %3259

; <label>:3259                                    ; preds = %3254
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %42, 436
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %3264, 0
  %3266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3266, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3272 = and i32 %3261, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = lshr i32 %3261, 8
  %3275 = and i32 %3274, 255
  %3276 = uitofp i32 %3275 to float
  %3277 = fmul fast float %3271, %3273
  %3278 = fadd fast float %3277, %3276
  %3279 = fmul fast float %3278, 0x3F70101000000000
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 512
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3292, label %3284

; <label>:3284                                    ; preds = %3259
  %3285 = add i32 %42, 520
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = add i32 %3287, 0
  %3289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3289, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  br label %3292

; <label>:3292                                    ; preds = %3284, %3259
  %3293 = phi float [ %3291, %3284 ], [ 1.000000e+00, %3259 ]
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 33554432
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3404, label %3298

; <label>:3298                                    ; preds = %3292
  %3299 = add i32 %42, 272
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = lshr i32 %3301, 16
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = add i32 %42, 276
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 65535
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = lshr i32 %3312, 24
  %3314 = uitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 0x3F70101020000000
  %3316 = and i32 %3312, 255
  %3317 = uitofp i32 %3316 to float
  %3318 = fmul fast float %3317, 0x3F70101020000000
  %3319 = lshr i32 %3312, 8
  %3320 = and i32 %3319, 255
  %3321 = uitofp i32 %3320 to float
  %3322 = fmul fast float %3321, 0x3F70101020000000
  %3323 = lshr i32 %3312, 16
  %3324 = and i32 %3323, 255
  %3325 = uitofp i32 %3324 to float
  %3326 = fmul fast float %3325, 0x3F70101020000000
  %3327 = add i32 %42, 268
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = lshr i32 %3329, 24
  %3331 = uitofp i32 %3330 to float
  %3332 = fmul fast float %3331, 0x3F70101020000000
  %3333 = and i32 %3329, 255
  %3334 = uitofp i32 %3333 to float
  %3335 = fmul fast float %3334, 0x3F70101020000000
  %3336 = lshr i32 %3329, 8
  %3337 = and i32 %3336, 255
  %3338 = uitofp i32 %3337 to float
  %3339 = fmul fast float %3338, 0x3F70101020000000
  %3340 = lshr i32 %3329, 16
  %3341 = and i32 %3340, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101020000000
  %3344 = bitcast float %3268 to i32
  %3345 = ashr i32 %3344, 1
  %3346 = sub nsw i32 1597463174, %3345
  %3347 = bitcast i32 %3346 to float
  %3348 = fmul fast float %3268, 5.000000e-01
  %3349 = fmul fast float %3347, %3347
  %3350 = fmul fast float %3349, %3348
  %3351 = fsub fast float 1.500000e+00, %3350
  %3352 = fmul fast float %3347, %3268
  %3353 = fmul fast float %3352, %3351
  %3354 = bitcast float %3269 to i32
  %3355 = ashr i32 %3354, 1
  %3356 = sub nsw i32 1597463174, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = fmul fast float %3269, 5.000000e-01
  %3359 = fmul fast float %3357, %3357
  %3360 = fmul fast float %3359, %3358
  %3361 = fsub fast float 1.500000e+00, %3360
  %3362 = fmul fast float %3357, %3269
  %3363 = fmul fast float %3362, %3361
  %3364 = bitcast float %3270 to i32
  %3365 = ashr i32 %3364, 1
  %3366 = sub nsw i32 1597463174, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3270, 5.000000e-01
  %3369 = fmul fast float %3367, %3367
  %3370 = fmul fast float %3369, %3368
  %3371 = fsub fast float 1.500000e+00, %3370
  %3372 = fmul fast float %3367, %3270
  %3373 = fmul fast float %3372, %3371
  %3374 = fsub fast float %3353, %3335
  %3375 = fsub fast float %3363, %3339
  %3376 = fsub fast float %3373, %3343
  %3377 = fmul fast float %3374, %3303
  %3378 = fmul fast float %3375, %3305
  %3379 = fmul fast float %3376, %3310
  %3380 = fadd fast float %3377, %3318
  %3381 = fadd fast float %3378, %3322
  %3382 = fadd fast float %3379, %3326
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = fmul fast float %3383, %3383
  %3387 = fmul fast float %3384, %3384
  %3388 = fmul fast float %3385, %3385
  %3389 = fsub fast float %3386, %3268
  %3390 = fsub fast float %3387, %3269
  %3391 = fsub fast float %3388, %3270
  %3392 = fmul fast float %3389, %3293
  %3393 = fmul fast float %3390, %3293
  %3394 = fmul fast float %3391, %3293
  %3395 = fadd fast float %3392, %3268
  %3396 = fadd fast float %3393, %3269
  %3397 = fadd fast float %3394, %3270
  %3398 = fadd fast float %3315, %3279
  %3399 = fsub fast float %3398, %3332
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = fsub fast float %3400, %3279
  %3402 = fmul fast float %3401, %3293
  %3403 = fadd fast float %3402, %3279
  br label %3457

; <label>:3404                                    ; preds = %3292
  %3405 = and i32 %3295, 134217728
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3441, label %3407

; <label>:3407                                    ; preds = %3404
  %3408 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3409 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3410 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %3411 = fadd fast float %3408, -5.000000e-01
  %3412 = fadd fast float %3409, -5.000000e-01
  %3413 = fadd fast float %3410, -5.000000e-01
  %3414 = fmul fast float %3411, %3293
  %3415 = fmul fast float %3412, %3293
  %3416 = fmul fast float %3413, %3293
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = fadd fast float %3415, 5.000000e-01
  %3419 = fadd fast float %3416, 5.000000e-01
  %3420 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3421 = call float @dx.op.unary.f32(i32 24, float %3269)  ; Sqrt(value)
  %3422 = call float @dx.op.unary.f32(i32 24, float %3270)  ; Sqrt(value)
  %3423 = fmul fast float %3417, 2.000000e+00
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = fmul fast float %3424, %3420
  %3426 = fadd fast float %3425, %3423
  %3427 = fmul fast float %3426, %3420
  %3428 = fmul fast float %3418, 2.000000e+00
  %3429 = fsub fast float 1.000000e+00, %3428
  %3430 = fmul fast float %3429, %3421
  %3431 = fadd fast float %3430, %3428
  %3432 = fmul fast float %3431, %3421
  %3433 = fmul fast float %3419, 2.000000e+00
  %3434 = fsub fast float 1.000000e+00, %3433
  %3435 = fmul fast float %3434, %3422
  %3436 = fadd fast float %3435, %3433
  %3437 = fmul fast float %3436, %3422
  %3438 = fmul fast float %3427, %3427
  %3439 = fmul fast float %3432, %3432
  %3440 = fmul fast float %3437, %3437
  br label %3457

; <label>:3441                                    ; preds = %3404
  %3442 = fmul fast float %424, %424
  %3443 = fmul fast float %428, %428
  %3444 = fmul fast float %432, %432
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fadd fast float %3443, -1.000000e+00
  %3447 = fadd fast float %3444, -1.000000e+00
  %3448 = fmul fast float %3293, %3445
  %3449 = fmul fast float %3293, %3446
  %3450 = fmul fast float %3293, %3447
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fmul fast float %3451, %3268
  %3455 = fmul fast float %3452, %3269
  %3456 = fmul fast float %3453, %3270
  br label %3457

; <label>:3457                                    ; preds = %3441, %3407, %3298, %3254
  %3458 = phi float [ %3403, %3298 ], [ %3279, %3407 ], [ %3279, %3441 ], [ 0x3FA23C0BE0000000, %3254 ]
  %3459 = phi float [ %3395, %3298 ], [ %3438, %3407 ], [ %3454, %3441 ], [ 1.000000e+00, %3254 ]
  %3460 = phi float [ %3396, %3298 ], [ %3439, %3407 ], [ %3455, %3441 ], [ 1.000000e+00, %3254 ]
  %3461 = phi float [ %3397, %3298 ], [ %3440, %3407 ], [ %3456, %3441 ], [ 1.000000e+00, %3254 ]
  %3462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.i32 %3462, 1
  %3464 = and i32 %3463, 1
  %3465 = icmp ne i32 %3464, 0
  %3466 = add i32 %42, 356
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 32
  %3470 = icmp ne i32 %3469, 0
  %3471 = and i1 %3465, %3470
  %3472 = select i1 %3471, float 1.000000e+00, float %3459
  %3473 = select i1 %3471, float 0x3FD3333340000000, float %3460
  %3474 = select i1 %3471, float 0x3FD3333340000000, float %3461
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 32
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3551, label %3479

; <label>:3479                                    ; preds = %3457
  %3480 = add i32 %42, 140
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %42, 452
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3493 = and i32 %3482, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3482, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = lshr i32 %3482, 16
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = fmul fast float %3500, 0x3F70101000000000
  %3502 = fmul fast float %3489, %3494
  %3503 = fadd fast float %3502, %3497
  %3504 = fmul fast float %3503, 0x3F70101000000000
  %3505 = fadd fast float %3490, -5.000000e-01
  %3506 = fadd fast float %3492, -5.000000e-01
  %3507 = fmul fast float %3505, %3501
  %3508 = fmul fast float %3506, %3501
  %3509 = fadd fast float %3507, 5.000000e-01
  %3510 = fadd fast float %3508, 5.000000e-01
  %3511 = fmul fast float %3509, 2.000000e+00
  %3512 = fadd fast float %3511, -1.000000e+00
  %3513 = fmul fast float %3510, 2.000000e+00
  %3514 = fadd fast float %3513, -1.000000e+00
  %3515 = fadd fast float %3512, %3514
  %3516 = fmul fast float %3515, 5.000000e-01
  %3517 = fsub fast float %3512, %3514
  %3518 = fmul fast float %3517, 5.000000e-01
  %3519 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = call float @dx.op.unary.f32(i32 6, float %3518)  ; FAbs(value)
  %3522 = fsub fast float %3520, %3521
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3518, float %3522, float %3516, float %3518, float %3522)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = call float @dx.op.unary.f32(i32 25, float %3523)  ; Rsqrt(value)
  %3525 = fmul fast float %3516, %3524
  %3526 = fmul fast float %3518, %3524
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 67108864
  %3530 = icmp eq i32 %3529, 0
  br i1 %3530, label %3547, label %3531

; <label>:3531                                    ; preds = %3479
  %3532 = add i32 %42, 328
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 65535
  %3536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3535)  ; LegacyF16ToF32(value)
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %3538, 65535
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = lshr i32 %3534, 16
  %3542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3541)  ; LegacyF16ToF32(value)
  %3543 = fsub fast float %3504, %3542
  %3544 = fmul fast float %3543, %3536
  %3545 = fadd fast float %3544, %3540
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  br label %3547

; <label>:3547                                    ; preds = %3531, %3479
  %3548 = phi float [ %3546, %3531 ], [ %3504, %3479 ]
  %3549 = call float @dx.op.dot2.f32(i32 54, float %3525, float %3526, float %3083, float %3084)  ; Dot2(ax,ay,bx,by)
  %3550 = call float @dx.op.dot2.f32(i32 54, float %3525, float %3526, float %3085, float %3086)  ; Dot2(ax,ay,bx,by)
  br label %3551

; <label>:3551                                    ; preds = %3547, %3457
  %3552 = phi float [ %3548, %3547 ], [ 0x3FD6666660000000, %3457 ]
  %3553 = phi float [ %3549, %3547 ], [ 0.000000e+00, %3457 ]
  %3554 = phi float [ %3550, %3547 ], [ 0.000000e+00, %3457 ]
  %3555 = phi float [ %3491, %3547 ], [ 1.000000e+00, %3457 ]
  %3556 = add i32 %42, 208
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = lshr i32 %3558, 22
  %3560 = shl nuw nsw i32 %3559, 5
  %3561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3560)  ; LegacyF16ToF32(value)
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 64
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3599, label %3566

; <label>:3566                                    ; preds = %3551
  %3567 = add i32 %42, 468
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 131072
  %3575 = icmp eq i32 %3574, 0
  %3576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3571, %dx.types.Handle %93, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = fmul fast float %3577, %412
  %3581 = fmul fast float %3578, %415
  %3582 = fmul fast float %3579, %418
  br i1 %3575, label %3589, label %3583

; <label>:3583                                    ; preds = %3566
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3580
  %3587 = fmul fast float %3585, %3581
  %3588 = fmul fast float %3585, %3582
  br label %3589

; <label>:3589                                    ; preds = %3583, %3566
  %3590 = phi float [ %3586, %3583 ], [ %3580, %3566 ]
  %3591 = phi float [ %3587, %3583 ], [ %3581, %3566 ]
  %3592 = phi float [ %3588, %3583 ], [ %3582, %3566 ]
  %3593 = fmul fast float %3590, %3561
  %3594 = select i1 %269, float %3593, float %3590
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3591, float %3592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = select i1 %269, float 0.000000e+00, float %3590
  %3597 = select i1 %269, float %3595, float %3591
  %3598 = select i1 %269, float 0.000000e+00, float %3592
  br label %3599

; <label>:3599                                    ; preds = %3589, %3551
  %3600 = phi float [ %3596, %3589 ], [ 0.000000e+00, %3551 ]
  %3601 = phi float [ %3597, %3589 ], [ 0.000000e+00, %3551 ]
  %3602 = phi float [ %3598, %3589 ], [ 0.000000e+00, %3551 ]
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 1024
  %3606 = icmp eq i32 %3605, 0
  br i1 %3606, label %3637, label %3607

; <label>:3607                                    ; preds = %3599
  %3608 = add i32 %42, 200
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = fmul fast float %3612, 0x3F70101020000000
  %3614 = lshr i32 %3610, 8
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = fmul fast float %3616, 0x3F70101020000000
  %3618 = lshr i32 %3610, 16
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = fmul fast float %3620, 0x3F70101020000000
  %3622 = fmul fast float %3613, %3613
  %3623 = fmul fast float %3617, %3617
  %3624 = fmul fast float %3621, %3621
  %3625 = add i32 %42, 536
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = add i32 %3627, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3629, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = fmul fast float %3622, %3631
  %3635 = fmul fast float %3623, %3632
  %3636 = fmul fast float %3624, %3633
  br label %3637

; <label>:3637                                    ; preds = %3607, %3599
  %3638 = phi float [ %3634, %3607 ], [ 0.000000e+00, %3599 ]
  %3639 = phi float [ %3635, %3607 ], [ 0.000000e+00, %3599 ]
  %3640 = phi float [ %3636, %3607 ], [ 0.000000e+00, %3599 ]
  %3641 = fcmp fast ogt float %3638, 0.000000e+00
  %3642 = fcmp fast ogt float %3639, 0.000000e+00
  %3643 = fcmp fast ogt float %3640, 0.000000e+00
  %3644 = call float @dx.op.unary.f32(i32 23, float %3638)  ; Log(value)
  %3645 = call float @dx.op.unary.f32(i32 23, float %3639)  ; Log(value)
  %3646 = call float @dx.op.unary.f32(i32 23, float %3640)  ; Log(value)
  %3647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.i32 %3647, 0
  %3649 = lshr i32 %3648, 7
  %3650 = and i32 %3649, 32752
  %3651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3650)  ; LegacyF16ToF32(value)
  %3652 = fmul fast float %3644, 0xBFE62E4300000000
  %3653 = fmul fast float %3652, %3651
  %3654 = fmul fast float %3645, 0xBFE62E4300000000
  %3655 = fmul fast float %3654, %3651
  %3656 = fmul fast float %3646, 0xBFE62E4300000000
  %3657 = fmul fast float %3656, %3651
  %3658 = select i1 %3641, float %3653, float 1.270000e+02
  %3659 = select i1 %3642, float %3655, float 1.270000e+02
  %3660 = select i1 %3643, float %3657, float 1.270000e+02
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 10240
  %3664 = icmp eq i32 %3663, 0
  br i1 %3664, label %3709, label %3665

; <label>:3665                                    ; preds = %3637
  %3666 = add i32 %42, 552
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %3668, 0
  %3670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3670, %dx.types.Handle %94, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 1048576
  %3677 = icmp ne i32 %3676, 0
  %3678 = and i32 %3675, 8192
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3695, label %3680

; <label>:3680                                    ; preds = %3665
  %3681 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3682 = select i1 %3677, float %3681, float %3672
  %3683 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3684 = select i1 %3677, float %3683, float %3672
  %3685 = add i32 %42, 144
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = lshr i32 %3687, 16
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = fmul fast float %3690, 0x3F80101020000000
  %3692 = fmul fast float %3691, %3684
  %3693 = fmul fast float %3691, %3672
  %3694 = fmul fast float %3691, %3682
  br label %3695

; <label>:3695                                    ; preds = %3680, %3665
  %3696 = phi float [ %3692, %3680 ], [ 0.000000e+00, %3665 ]
  %3697 = phi float [ %3693, %3680 ], [ 0.000000e+00, %3665 ]
  %3698 = phi float [ %3694, %3680 ], [ 0.000000e+00, %3665 ]
  %3699 = and i32 %3675, 2048
  %3700 = icmp eq i32 %3699, 0
  br i1 %3700, label %3709, label %3701

; <label>:3701                                    ; preds = %3695
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = shl i32 %3703, 4
  %3705 = and i32 %3704, 32752
  %3706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3705)  ; LegacyF16ToF32(value)
  %3707 = fmul fast float %3706, %3673
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3709

; <label>:3709                                    ; preds = %3701, %3695, %3637
  %3710 = phi float [ %3696, %3701 ], [ %3696, %3695 ], [ 0.000000e+00, %3637 ]
  %3711 = phi float [ %3697, %3701 ], [ %3697, %3695 ], [ 0.000000e+00, %3637 ]
  %3712 = phi float [ %3698, %3701 ], [ %3698, %3695 ], [ 0.000000e+00, %3637 ]
  %3713 = phi float [ %3708, %3701 ], [ 0x3F70101020000000, %3695 ], [ 0x3F70101020000000, %3637 ]
  %3714 = add i32 %42, 144
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 255
  %3718 = uitofp i32 %3717 to float
  %3719 = lshr i32 %3716, 8
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3472, float %3473, float %3474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = fmul fast float %3721, %3722
  %3724 = fadd fast float %3723, %3718
  %3725 = fmul fast float %3724, 0x3F70101020000000
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  br i1 %3071, label %3727, label %3762

; <label>:3727                                    ; preds = %3709
  %3728 = fmul fast float %3713, 2.000000e+00
  %3729 = fcmp fast olt float %3658, 1.270000e+02
  %3730 = fcmp fast olt float %3659, 1.270000e+02
  %3731 = fcmp fast olt float %3660, 1.270000e+02
  %3732 = fmul fast float %3658, 0xBFF7154760000000
  %3733 = fmul fast float %3732, %3728
  %3734 = fmul fast float %3659, 0xBFF7154760000000
  %3735 = fmul fast float %3734, %3728
  %3736 = fmul fast float %3660, 0xBFF7154760000000
  %3737 = fmul fast float %3736, %3728
  %3738 = call float @dx.op.unary.f32(i32 21, float %3733)  ; Exp(value)
  %3739 = call float @dx.op.unary.f32(i32 21, float %3735)  ; Exp(value)
  %3740 = call float @dx.op.unary.f32(i32 21, float %3737)  ; Exp(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = fadd fast float %3741, -1.000000e+00
  %3745 = select i1 %3729, float %3744, float -1.000000e+00
  %3746 = fadd fast float %3742, -1.000000e+00
  %3747 = select i1 %3730, float %3746, float -1.000000e+00
  %3748 = fadd fast float %3743, -1.000000e+00
  %3749 = select i1 %3731, float %3748, float -1.000000e+00
  %3750 = fmul fast float %3745, %3252
  %3751 = fmul fast float %3747, %3252
  %3752 = fmul fast float %3749, %3252
  %3753 = fadd fast float %3750, 1.000000e+00
  %3754 = fadd fast float %3751, 1.000000e+00
  %3755 = fadd fast float %3752, 1.000000e+00
  %3756 = fmul fast float %3753, %3053
  %3757 = fmul fast float %3754, %3054
  %3758 = fmul fast float %3755, %3055
  %3759 = fmul fast float %3753, %3056
  %3760 = fmul fast float %3754, %3057
  %3761 = fmul fast float %3755, %3058
  br label %3762

; <label>:3762                                    ; preds = %3727, %3709
  %3763 = phi float [ %3756, %3727 ], [ %3053, %3709 ]
  %3764 = phi float [ %3757, %3727 ], [ %3054, %3709 ]
  %3765 = phi float [ %3758, %3727 ], [ %3055, %3709 ]
  %3766 = phi float [ %3759, %3727 ], [ %3056, %3709 ]
  %3767 = phi float [ %3760, %3727 ], [ %3057, %3709 ]
  %3768 = phi float [ %3761, %3727 ], [ %3058, %3709 ]
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = and i32 %3770, 3
  %3772 = icmp eq i32 %3771, 3
  br i1 %3772, label %3851, label %3773

; <label>:3773                                    ; preds = %3762
  %3774 = and i32 %3770, 16
  %3775 = icmp ne i32 %3774, 0
  %3776 = select i1 %3775, float %3252, float 0.000000e+00
  %3777 = icmp eq i32 %3771, 0
  br i1 %3777, label %3778, label %3806

; <label>:3778                                    ; preds = %3773
  %3779 = and i32 %3770, 64
  %3780 = icmp ne i32 %3779, 0
  %3781 = select i1 %3780, float %3252, float 0.000000e+00
  %3782 = fsub fast float %3472, %3763
  %3783 = fsub fast float %3473, %3764
  %3784 = fsub fast float %3474, %3765
  %3785 = fmul fast float %3776, %3782
  %3786 = fmul fast float %3776, %3783
  %3787 = fmul fast float %3776, %3784
  %3788 = fadd fast float %3785, %3763
  %3789 = fadd fast float %3786, %3764
  %3790 = fadd fast float %3787, %3765
  %3791 = fsub fast float %3458, %3065
  %3792 = fmul fast float %3776, %3791
  %3793 = fadd fast float %3792, %3065
  %3794 = fsub fast float %3600, %3766
  %3795 = fsub fast float %3601, %3767
  %3796 = fsub fast float %3602, %3768
  %3797 = fmul fast float %3781, %3794
  %3798 = fmul fast float %3781, %3795
  %3799 = fmul fast float %3781, %3796
  %3800 = fadd fast float %3797, %3766
  %3801 = fadd fast float %3798, %3767
  %3802 = fadd fast float %3799, %3768
  %3803 = fsub fast float %3726, %3069
  %3804 = fmul fast float %3776, %3803
  %3805 = fadd fast float %3804, %3069
  br label %3851

; <label>:3806                                    ; preds = %3773
  %3807 = icmp eq i32 %3771, 1
  br i1 %3807, label %3808, label %3821

; <label>:3808                                    ; preds = %3806
  %3809 = fadd fast float %3472, -1.000000e+00
  %3810 = fadd fast float %3473, -1.000000e+00
  %3811 = fadd fast float %3474, -1.000000e+00
  %3812 = fmul fast float %3776, %3809
  %3813 = fmul fast float %3776, %3810
  %3814 = fmul fast float %3776, %3811
  %3815 = fadd fast float %3812, 1.000000e+00
  %3816 = fadd fast float %3813, 1.000000e+00
  %3817 = fadd fast float %3814, 1.000000e+00
  %3818 = fmul fast float %3815, %3763
  %3819 = fmul fast float %3816, %3764
  %3820 = fmul fast float %3817, %3765
  br label %3851

; <label>:3821                                    ; preds = %3806
  %3822 = icmp eq i32 %3771, 2
  br i1 %3822, label %3823, label %3851

; <label>:3823                                    ; preds = %3821
  %3824 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3825 = call float @dx.op.unary.f32(i32 24, float %3473)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %3474)  ; Sqrt(value)
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fadd fast float %3825, -5.000000e-01
  %3829 = fadd fast float %3826, -5.000000e-01
  %3830 = fmul fast float %3827, %3776
  %3831 = fmul fast float %3828, %3776
  %3832 = fmul fast float %3829, %3776
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = fadd fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 5.000000e-01
  %3836 = fmul fast float %3833, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3763
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3763
  %3841 = fmul fast float %3834, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3764
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3764
  %3846 = fmul fast float %3835, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3765
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3765
  br label %3851

; <label>:3851                                    ; preds = %3823, %3821, %3808, %3778, %3762
  %3852 = phi float [ %3763, %3762 ], [ %3840, %3823 ], [ %3763, %3821 ], [ %3818, %3808 ], [ %3788, %3778 ]
  %3853 = phi float [ %3764, %3762 ], [ %3845, %3823 ], [ %3764, %3821 ], [ %3819, %3808 ], [ %3789, %3778 ]
  %3854 = phi float [ %3765, %3762 ], [ %3850, %3823 ], [ %3765, %3821 ], [ %3820, %3808 ], [ %3790, %3778 ]
  %3855 = phi float [ %3766, %3762 ], [ %3766, %3823 ], [ %3766, %3821 ], [ %3766, %3808 ], [ %3800, %3778 ]
  %3856 = phi float [ %3767, %3762 ], [ %3767, %3823 ], [ %3767, %3821 ], [ %3767, %3808 ], [ %3801, %3778 ]
  %3857 = phi float [ %3768, %3762 ], [ %3768, %3823 ], [ %3768, %3821 ], [ %3768, %3808 ], [ %3802, %3778 ]
  %3858 = phi float [ %3065, %3762 ], [ %3065, %3823 ], [ %3065, %3821 ], [ %3065, %3808 ], [ %3793, %3778 ]
  %3859 = phi float [ %3069, %3762 ], [ %3069, %3823 ], [ %3069, %3821 ], [ %3069, %3808 ], [ %3805, %3778 ]
  %3860 = and i32 %3770, 12
  %3861 = icmp eq i32 %3860, 12
  br i1 %3861, label %3992, label %3862

; <label>:3862                                    ; preds = %3851
  %3863 = and i32 %3770, 2097184
  %3864 = icmp eq i32 %3863, 2097184
  %3865 = select i1 %3864, float %3252, float 0.000000e+00
  %3866 = and i32 %3770, 4194336
  %3867 = icmp eq i32 %3866, 4194336
  %3868 = select i1 %3867, float %3252, float 0.000000e+00
  %3869 = and i32 %3770, 8388640
  %3870 = icmp eq i32 %3869, 8388640
  %3871 = select i1 %3870, float %3252, float 0.000000e+00
  %3872 = and i32 %3770, 1024
  %3873 = icmp ne i32 %3872, 0
  %3874 = select i1 %3873, float %3252, float 0.000000e+00
  %3875 = and i32 %3770, 2048
  %3876 = icmp ne i32 %3875, 0
  %3877 = select i1 %3876, float %3252, float 0.000000e+00
  %3878 = and i32 %3770, 8192
  %3879 = icmp ne i32 %3878, 0
  %3880 = select i1 %3879, float %3252, float 0.000000e+00
  %3881 = icmp eq i32 %3860, 0
  br i1 %3881, label %3882, label %3916

; <label>:3882                                    ; preds = %3862
  %3883 = fsub fast float %3553, %3051
  %3884 = fsub fast float %3554, %3052
  %3885 = fmul fast float %3865, %3883
  %3886 = fmul fast float %3865, %3884
  %3887 = fadd fast float %3885, %3051
  %3888 = fadd fast float %3886, %3052
  %3889 = fsub fast float %3555, %3067
  %3890 = fmul fast float %3868, %3889
  %3891 = fadd fast float %3890, %3067
  %3892 = fsub fast float %3552, %3066
  %3893 = fmul fast float %3871, %3892
  %3894 = fadd fast float %3893, %3066
  %3895 = fsub fast float %3658, %3062
  %3896 = fsub fast float %3659, %3063
  %3897 = fsub fast float %3660, %3064
  %3898 = fmul fast float %3874, %3895
  %3899 = fmul fast float %3874, %3896
  %3900 = fmul fast float %3874, %3897
  %3901 = fadd fast float %3898, %3062
  %3902 = fadd fast float %3899, %3063
  %3903 = fadd fast float %3900, %3064
  %3904 = fsub fast float %3713, %3068
  %3905 = fmul fast float %3877, %3904
  %3906 = fadd fast float %3905, %3068
  %3907 = fsub fast float %3710, %3059
  %3908 = fsub fast float %3711, %3060
  %3909 = fsub fast float %3712, %3061
  %3910 = fmul fast float %3880, %3907
  %3911 = fmul fast float %3880, %3908
  %3912 = fmul fast float %3880, %3909
  %3913 = fadd fast float %3910, %3059
  %3914 = fadd fast float %3911, %3060
  %3915 = fadd fast float %3912, %3061
  br label %3992

; <label>:3916                                    ; preds = %3862
  %3917 = icmp eq i32 %3860, 4
  br i1 %3917, label %3918, label %3964

; <label>:3918                                    ; preds = %3916
  %3919 = fmul fast float %3865, %3553
  %3920 = fmul fast float %3865, %3554
  %3921 = fadd fast float %3919, %3051
  %3922 = fadd fast float %3920, %3052
  %3923 = call float @dx.op.binary.f32(i32 36, float %3067, float %3555)  ; FMin(a,b)
  %3924 = fsub fast float %3923, %3067
  %3925 = fmul fast float %3924, %3868
  %3926 = fadd fast float %3925, %3067
  %3927 = fadd fast float %3552, %3066
  %3928 = fmul fast float %3927, 0x3FF337FAE0000000
  %3929 = fmul fast float %3066, %3066
  %3930 = fmul fast float %3552, %3552
  %3931 = fadd fast float %3930, %3929
  %3932 = fmul fast float %3931, 0x3FE5152B00000000
  %3933 = fmul fast float %3066, 0xBFCC1F85E0000000
  %3934 = fmul fast float %3933, %3552
  %3935 = fadd fast float %3934, 0xBFE1363700000000
  %3936 = fadd fast float %3935, %3928
  %3937 = fsub fast float %3936, %3932
  %3938 = fmul fast float %3927, 0x3FBA6F0D00000000
  %3939 = fmul fast float %3931, 0x3FD0432880000000
  %3940 = fmul fast float %3066, 0xBFEF110800000000
  %3941 = fmul fast float %3940, %3552
  %3942 = fadd fast float %3941, 1.000000e+00
  %3943 = fsub fast float %3942, %3938
  %3944 = fadd fast float %3943, %3939
  %3945 = fdiv fast float %3937, %3944
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fsub fast float %3946, %3066
  %3948 = fmul fast float %3947, %3871
  %3949 = fadd fast float %3948, %3066
  %3950 = fmul fast float %3874, %3658
  %3951 = fmul fast float %3874, %3659
  %3952 = fmul fast float %3874, %3660
  %3953 = fadd fast float %3950, %3062
  %3954 = fadd fast float %3951, %3063
  %3955 = fadd fast float %3952, %3064
  %3956 = fmul fast float %3877, %3713
  %3957 = fadd fast float %3956, %3068
  %3958 = fmul fast float %3880, %3710
  %3959 = fmul fast float %3880, %3711
  %3960 = fmul fast float %3880, %3712
  %3961 = fadd fast float %3958, %3059
  %3962 = fadd fast float %3959, %3060
  %3963 = fadd fast float %3960, %3061
  br label %3992

; <label>:3964                                    ; preds = %3916
  %3965 = icmp eq i32 %3860, 8
  br i1 %3965, label %3966, label %3992

; <label>:3966                                    ; preds = %3964
  %3967 = fmul fast float %3865, %3553
  %3968 = fmul fast float %3865, %3554
  %3969 = fadd fast float %3967, %3051
  %3970 = fadd fast float %3968, %3052
  %3971 = call float @dx.op.binary.f32(i32 36, float %3067, float %3555)  ; FMin(a,b)
  %3972 = fsub fast float %3971, %3067
  %3973 = fmul fast float %3972, %3868
  %3974 = fadd fast float %3973, %3067
  %3975 = fsub fast float %3552, %3066
  %3976 = fmul fast float %3871, %3975
  %3977 = fadd fast float %3976, %3066
  %3978 = fmul fast float %3874, %3658
  %3979 = fmul fast float %3874, %3659
  %3980 = fmul fast float %3874, %3660
  %3981 = fadd fast float %3978, %3062
  %3982 = fadd fast float %3979, %3063
  %3983 = fadd fast float %3980, %3064
  %3984 = fmul fast float %3877, %3713
  %3985 = fadd fast float %3984, %3068
  %3986 = fmul fast float %3880, %3710
  %3987 = fmul fast float %3880, %3711
  %3988 = fmul fast float %3880, %3712
  %3989 = fadd fast float %3986, %3059
  %3990 = fadd fast float %3987, %3060
  %3991 = fadd fast float %3988, %3061
  br label %3992

; <label>:3992                                    ; preds = %3966, %3964, %3918, %3882, %3851, %3251, %3070, %3050
  %3993 = phi float [ %3051, %3851 ], [ %3051, %3251 ], [ %3051, %3050 ], [ %3051, %3070 ], [ %3887, %3882 ], [ %3921, %3918 ], [ %3051, %3964 ], [ %3969, %3966 ]
  %3994 = phi float [ %3052, %3851 ], [ %3052, %3251 ], [ %3052, %3050 ], [ %3052, %3070 ], [ %3888, %3882 ], [ %3922, %3918 ], [ %3052, %3964 ], [ %3970, %3966 ]
  %3995 = phi float [ %3852, %3851 ], [ %3053, %3251 ], [ %3053, %3050 ], [ %3053, %3070 ], [ %3852, %3882 ], [ %3852, %3918 ], [ %3852, %3964 ], [ %3852, %3966 ]
  %3996 = phi float [ %3853, %3851 ], [ %3054, %3251 ], [ %3054, %3050 ], [ %3054, %3070 ], [ %3853, %3882 ], [ %3853, %3918 ], [ %3853, %3964 ], [ %3853, %3966 ]
  %3997 = phi float [ %3854, %3851 ], [ %3055, %3251 ], [ %3055, %3050 ], [ %3055, %3070 ], [ %3854, %3882 ], [ %3854, %3918 ], [ %3854, %3964 ], [ %3854, %3966 ]
  %3998 = phi float [ %3855, %3851 ], [ %3056, %3251 ], [ %3056, %3050 ], [ %3056, %3070 ], [ %3855, %3882 ], [ %3855, %3918 ], [ %3855, %3964 ], [ %3855, %3966 ]
  %3999 = phi float [ %3856, %3851 ], [ %3057, %3251 ], [ %3057, %3050 ], [ %3057, %3070 ], [ %3856, %3882 ], [ %3856, %3918 ], [ %3856, %3964 ], [ %3856, %3966 ]
  %4000 = phi float [ %3857, %3851 ], [ %3058, %3251 ], [ %3058, %3050 ], [ %3058, %3070 ], [ %3857, %3882 ], [ %3857, %3918 ], [ %3857, %3964 ], [ %3857, %3966 ]
  %4001 = phi float [ %3059, %3851 ], [ %3059, %3251 ], [ %3059, %3050 ], [ %3059, %3070 ], [ %3913, %3882 ], [ %3961, %3918 ], [ %3059, %3964 ], [ %3989, %3966 ]
  %4002 = phi float [ %3060, %3851 ], [ %3060, %3251 ], [ %3060, %3050 ], [ %3060, %3070 ], [ %3914, %3882 ], [ %3962, %3918 ], [ %3060, %3964 ], [ %3990, %3966 ]
  %4003 = phi float [ %3061, %3851 ], [ %3061, %3251 ], [ %3061, %3050 ], [ %3061, %3070 ], [ %3915, %3882 ], [ %3963, %3918 ], [ %3061, %3964 ], [ %3991, %3966 ]
  %4004 = phi float [ %3062, %3851 ], [ %3062, %3251 ], [ %3062, %3050 ], [ %3062, %3070 ], [ %3901, %3882 ], [ %3953, %3918 ], [ %3062, %3964 ], [ %3981, %3966 ]
  %4005 = phi float [ %3063, %3851 ], [ %3063, %3251 ], [ %3063, %3050 ], [ %3063, %3070 ], [ %3902, %3882 ], [ %3954, %3918 ], [ %3063, %3964 ], [ %3982, %3966 ]
  %4006 = phi float [ %3064, %3851 ], [ %3064, %3251 ], [ %3064, %3050 ], [ %3064, %3070 ], [ %3903, %3882 ], [ %3955, %3918 ], [ %3064, %3964 ], [ %3983, %3966 ]
  %4007 = phi float [ %3858, %3851 ], [ %3065, %3251 ], [ %3065, %3050 ], [ %3065, %3070 ], [ %3858, %3882 ], [ %3858, %3918 ], [ %3858, %3964 ], [ %3858, %3966 ]
  %4008 = phi float [ %3066, %3851 ], [ %3066, %3251 ], [ %3066, %3050 ], [ %3066, %3070 ], [ %3894, %3882 ], [ %3949, %3918 ], [ %3066, %3964 ], [ %3977, %3966 ]
  %4009 = phi float [ %3067, %3851 ], [ %3067, %3251 ], [ %3067, %3050 ], [ %3067, %3070 ], [ %3891, %3882 ], [ %3926, %3918 ], [ %3067, %3964 ], [ %3974, %3966 ]
  %4010 = phi float [ %3068, %3851 ], [ %3068, %3251 ], [ %3068, %3050 ], [ %3068, %3070 ], [ %3906, %3882 ], [ %3957, %3918 ], [ %3068, %3964 ], [ %3985, %3966 ]
  %4011 = phi float [ %3859, %3851 ], [ %3069, %3251 ], [ %3069, %3050 ], [ %3069, %3070 ], [ %3859, %3882 ], [ %3859, %3918 ], [ %3859, %3964 ], [ %3859, %3966 ]
  %4012 = add i32 %42, 408
  %4013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.i32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.i32 %4013, 1
  %4016 = bitcast i32 %4014 to float
  %4017 = bitcast i32 %4015 to float
  %4018 = fcmp fast oge float %4016, 0.000000e+00
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = select i1 %4018, float %4016, float %4020
  %4022 = add i32 %42, 504
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = add i32 %4024, 0
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4026, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = fmul fast float %4028, %4017
  %4030 = fadd fast float %4029, %4021
  %4031 = call float @dx.op.dot2.f32(i32 54, float %3993, float %3994, float %3993, float %3994)  ; Dot2(ax,ay,bx,by)
  %4032 = fmul fast float %4031, 0x3FE3333340000000
  %4033 = fsub fast float 1.000000e+00, %4032
  %4034 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3994, float %4033, float %3993, float %3994, float %4033)  ; Dot3(ax,ay,az,bx,by,bz)
  %4035 = call float @dx.op.unary.f32(i32 25, float %4034)  ; Rsqrt(value)
  %4036 = fmul fast float %4035, %3993
  %4037 = fmul fast float %4035, %3994
  %4038 = fmul fast float %4033, %4035
  %4039 = fmul fast float %4038, %104
  %4040 = fmul fast float %4038, %105
  %4041 = fmul fast float %4038, %106
  %4042 = fmul fast float %4036, %72
  %4043 = fmul fast float %4036, %73
  %4044 = fmul fast float %4036, %74
  %4045 = fadd fast float %4039, %4042
  %4046 = fadd fast float %4040, %4043
  %4047 = fadd fast float %4041, %4044
  %4048 = fmul fast float %116, %4037
  %4049 = fmul fast float %117, %4037
  %4050 = fmul fast float %118, %4037
  %4051 = fadd fast float %4045, %4048
  %4052 = fadd fast float %4046, %4049
  %4053 = fadd fast float %4047, %4050
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4051, float %4052, float %4053, float %4051, float %4052, float %4053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = call float @dx.op.unary.f32(i32 25, float %4054)  ; Rsqrt(value)
  %4056 = fmul fast float %4051, %4055
  %4057 = fmul fast float %4052, %4055
  %4058 = fmul fast float %4053, %4055
  %4059 = icmp eq i32 %43, 65535
  br i1 %4059, label %4658, label %4060

; <label>:4060                                    ; preds = %3992
  %4061 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %4062 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %4063 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4064 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %4065 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %4066 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4067 = fadd fast float %4061, %44
  %4068 = fadd fast float %4062, %45
  %4069 = fadd fast float %4063, %46
  %4070 = fadd fast float %4064, %44
  %4071 = fadd fast float %4065, %45
  %4072 = fadd fast float %4066, %46
  %4073 = mul i32 %43, 48
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = add i32 %4073, 16
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = add i32 %4073, 32
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = extractvalue %dx.types.ResRet.f32 %4084, 3
  %4089 = bitcast float %4088 to i32
  %4090 = fmul fast float %4075, %44
  %4091 = fmul fast float %4076, %45
  %4092 = fmul fast float %4077, %46
  %4093 = fsub fast float %4090, %4080
  %4094 = fsub fast float %4091, %4081
  %4095 = fsub fast float %4092, %4082
  %4096 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4099 = fmul fast float %4096, %4085
  %4100 = fmul fast float %4097, %4086
  %4101 = fmul fast float %4098, %4087
  %4102 = fadd fast float %4085, -1.000000e+00
  %4103 = fadd fast float %4086, -1.000000e+00
  %4104 = fadd fast float %4087, -1.000000e+00
  %4105 = call float @dx.op.unary.f32(i32 27, float %4099)  ; Round_ni(value)
  %4106 = call float @dx.op.unary.f32(i32 27, float %4100)  ; Round_ni(value)
  %4107 = call float @dx.op.unary.f32(i32 27, float %4101)  ; Round_ni(value)
  %4108 = call float @dx.op.binary.f32(i32 36, float %4105, float %4102)  ; FMin(a,b)
  %4109 = call float @dx.op.binary.f32(i32 36, float %4106, float %4103)  ; FMin(a,b)
  %4110 = call float @dx.op.binary.f32(i32 36, float %4107, float %4104)  ; FMin(a,b)
  %4111 = fmul fast float %4110, %4086
  %4112 = fadd fast float %4111, %4109
  %4113 = fmul fast float %4112, %4085
  %4114 = fadd fast float %4113, %4108
  %4115 = fptosi float %4114 to i32
  %4116 = add nsw i32 %4115, %4089
  %4117 = shl nsw i32 %4116, 2
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = lshr i32 %4119, 16
  %4121 = icmp eq i32 %4120, 0
  br i1 %4121, label %4621, label %4122

; <label>:4122                                    ; preds = %4060
  br label %4123

; <label>:4123                                    ; preds = %4250, %4122
  %4124 = phi i32 [ %4152, %4250 ], [ %4120, %4122 ]
  %4125 = phi float [ %4251, %4250 ], [ 0.000000e+00, %4122 ]
  %4126 = phi float [ %4252, %4250 ], [ %4030, %4122 ]
  %4127 = phi float [ %4253, %4250 ], [ %4011, %4122 ]
  %4128 = phi float [ %4254, %4250 ], [ %4004, %4122 ]
  %4129 = phi float [ %4255, %4250 ], [ %4005, %4122 ]
  %4130 = phi float [ %4256, %4250 ], [ %4006, %4122 ]
  %4131 = phi float [ %4257, %4250 ], [ 0.000000e+00, %4122 ]
  %4132 = phi float [ %4258, %4250 ], [ 0.000000e+00, %4122 ]
  %4133 = phi float [ %4259, %4250 ], [ %4001, %4122 ]
  %4134 = phi float [ %4260, %4250 ], [ %4002, %4122 ]
  %4135 = phi float [ %4261, %4250 ], [ %4003, %4122 ]
  %4136 = phi float [ %4262, %4250 ], [ %3998, %4122 ]
  %4137 = phi float [ %4263, %4250 ], [ %3999, %4122 ]
  %4138 = phi float [ %4264, %4250 ], [ %4000, %4122 ]
  %4139 = phi float [ %4265, %4250 ], [ %4056, %4122 ]
  %4140 = phi float [ %4266, %4250 ], [ %4057, %4122 ]
  %4141 = phi float [ %4267, %4250 ], [ %4058, %4122 ]
  %4142 = phi float [ %4268, %4250 ], [ %4009, %4122 ]
  %4143 = phi float [ %4269, %4250 ], [ %4008, %4122 ]
  %4144 = phi float [ %4270, %4250 ], [ 0.000000e+00, %4122 ]
  %4145 = phi float [ %4271, %4250 ], [ %4007, %4122 ]
  %4146 = phi float [ %4272, %4250 ], [ %3995, %4122 ]
  %4147 = phi float [ %4273, %4250 ], [ %3996, %4122 ]
  %4148 = phi float [ %4274, %4250 ], [ %3997, %4122 ]
  %4149 = shl nuw nsw i32 %4124, 2
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = lshr i32 %4151, 16
  %4153 = shl i32 %4151, 8
  %4154 = and i32 %4153, 16776960
  %4155 = or i32 %4154, 48
  %4156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4160 = or i32 %4154, 64
  %4161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.i32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.i32 %4161, 1
  %4164 = or i32 %4154, 80
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4168 = or i32 %4154, 96
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = or i32 %4154, 112
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4177 = or i32 %4154, 128
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4178, 3
  %4183 = or i32 %4154, 144
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.ResRet.f32 %4184, 3
  %4189 = or i32 %4154, 160
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4195 = or i32 %4154, 192
  %4196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.i32 %4196, 0
  %4198 = or i32 %4154, 208
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = or i32 %4154, 248
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = call float @dx.op.dot4.f32(i32 56, float %4206, float %4207, float %4208, float %4209, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4211 = or i32 %4154, 16
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = call float @dx.op.dot4.f32(i32 56, float %4213, float %4214, float %4215, float %4216, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4218 = or i32 %4154, 32
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.ResRet.f32 %4219, 3
  %4224 = call float @dx.op.dot4.f32(i32 56, float %4220, float %4221, float %4222, float %4223, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4225 = call float @dx.op.unary.f32(i32 27, float %4210)  ; Round_ni(value)
  %4226 = call float @dx.op.unary.f32(i32 6, float %4225)  ; FAbs(value)
  %4227 = call float @dx.op.unary.f32(i32 27, float %4217)  ; Round_ni(value)
  %4228 = call float @dx.op.unary.f32(i32 6, float %4227)  ; FAbs(value)
  %4229 = call float @dx.op.unary.f32(i32 6, float %4224)  ; FAbs(value)
  %4230 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4231 = fadd fast float %4228, %4226
  %4232 = fadd fast float %4231, %4230
  %4233 = fcmp fast oeq float %4232, 0.000000e+00
  %4234 = call float @dx.op.dot4.f32(i32 56, float %4206, float %4207, float %4208, float %4209, float %4067, float %4068, float %4069, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4235 = call float @dx.op.dot4.f32(i32 56, float %4213, float %4214, float %4215, float %4216, float %4067, float %4068, float %4069, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4236 = call float @dx.op.dot4.f32(i32 56, float %4206, float %4207, float %4208, float %4209, float %4070, float %4071, float %4072, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4237 = call float @dx.op.dot4.f32(i32 56, float %4213, float %4214, float %4215, float %4216, float %4070, float %4071, float %4072, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4238 = fsub fast float %4234, %4210
  %4239 = fsub fast float %4236, %4210
  %4240 = fsub fast float %4235, %4217
  %4241 = fsub fast float %4237, %4217
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4245 = fadd fast float %4244, %4242
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4248 = fcmp fast ogt float %4246, %4247
  %4249 = and i1 %4233, %4248
  br i1 %4249, label %4276, label %4250

; <label>:4250                                    ; preds = %4607, %4359, %4276, %4123
  %4251 = phi float [ %4125, %4276 ], [ %4362, %4359 ], [ %4362, %4607 ], [ %4125, %4123 ]
  %4252 = phi float [ %4126, %4276 ], [ %4126, %4359 ], [ %4583, %4607 ], [ %4126, %4123 ]
  %4253 = phi float [ %4127, %4276 ], [ %4127, %4359 ], [ %4581, %4607 ], [ %4127, %4123 ]
  %4254 = phi float [ %4128, %4276 ], [ %4128, %4359 ], [ %4559, %4607 ], [ %4128, %4123 ]
  %4255 = phi float [ %4129, %4276 ], [ %4129, %4359 ], [ %4560, %4607 ], [ %4129, %4123 ]
  %4256 = phi float [ %4130, %4276 ], [ %4130, %4359 ], [ %4561, %4607 ], [ %4130, %4123 ]
  %4257 = phi float [ %4131, %4276 ], [ %4131, %4359 ], [ %4486, %4607 ], [ %4131, %4123 ]
  %4258 = phi float [ %4132, %4276 ], [ %4132, %4359 ], [ %4484, %4607 ], [ %4132, %4123 ]
  %4259 = phi float [ %4133, %4276 ], [ %4133, %4359 ], [ %4529, %4607 ], [ %4133, %4123 ]
  %4260 = phi float [ %4134, %4276 ], [ %4134, %4359 ], [ %4530, %4607 ], [ %4134, %4123 ]
  %4261 = phi float [ %4135, %4276 ], [ %4135, %4359 ], [ %4531, %4607 ], [ %4135, %4123 ]
  %4262 = phi float [ %4136, %4276 ], [ %4136, %4359 ], [ %4617, %4607 ], [ %4136, %4123 ]
  %4263 = phi float [ %4137, %4276 ], [ %4137, %4359 ], [ %4618, %4607 ], [ %4137, %4123 ]
  %4264 = phi float [ %4138, %4276 ], [ %4138, %4359 ], [ %4619, %4607 ], [ %4138, %4123 ]
  %4265 = phi float [ %4139, %4276 ], [ %4139, %4359 ], [ %4465, %4607 ], [ %4139, %4123 ]
  %4266 = phi float [ %4140, %4276 ], [ %4140, %4359 ], [ %4466, %4607 ], [ %4140, %4123 ]
  %4267 = phi float [ %4141, %4276 ], [ %4141, %4359 ], [ %4467, %4607 ], [ %4141, %4123 ]
  %4268 = phi float [ %4142, %4276 ], [ %4142, %4359 ], [ %4539, %4607 ], [ %4142, %4123 ]
  %4269 = phi float [ %4143, %4276 ], [ %4143, %4359 ], [ %4536, %4607 ], [ %4143, %4123 ]
  %4270 = phi float [ %4144, %4276 ], [ %4144, %4359 ], [ %4533, %4607 ], [ %4144, %4123 ]
  %4271 = phi float [ %4145, %4276 ], [ %4145, %4359 ], [ %4482, %4607 ], [ %4145, %4123 ]
  %4272 = phi float [ %4146, %4276 ], [ %4146, %4359 ], [ %4477, %4607 ], [ %4146, %4123 ]
  %4273 = phi float [ %4147, %4276 ], [ %4147, %4359 ], [ %4478, %4607 ], [ %4147, %4123 ]
  %4274 = phi float [ %4148, %4276 ], [ %4148, %4359 ], [ %4479, %4607 ], [ %4148, %4123 ]
  %4275 = icmp eq i32 %4152, 0
  br i1 %4275, label %4620, label %4123

; <label>:4276                                    ; preds = %4123
  %4277 = extractvalue %dx.types.ResRet.f32 %4156, 3
  %4278 = extractvalue %dx.types.ResRet.f32 %4175, 3
  %4279 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4281 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4282 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4283 = extractvalue %dx.types.ResRet.i32 %4161, 3
  %4284 = extractvalue %dx.types.ResRet.i32 %4161, 2
  %4285 = bitcast float %4277 to i32
  %4286 = add i32 %4283, 0
  %4287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4287, %dx.types.Handle %4288, float %4210, float %4217, float undef, float undef, i32 0, i32 0, i32 undef, float %4238, float %4240, float undef, float %4239, float %4241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = fmul fast float %4290, %4282
  %4292 = fadd fast float %4291, %4281
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fmul fast float %4210, %4170
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4217, float %4294)  ; FMad(a,b,c)
  %4296 = fadd fast float %4295, %4280
  %4297 = fmul fast float %4210, %4172
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4217, float %4297)  ; FMad(a,b,c)
  %4299 = fadd fast float %4298, %4279
  %4300 = fmul fast float %4238, %4170
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4240, float %4300)  ; FMad(a,b,c)
  %4302 = fmul fast float %4238, %4172
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4240, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4239, %4170
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4241, float %4304)  ; FMad(a,b,c)
  %4306 = fmul fast float %4239, %4172
  %4307 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4241, float %4306)  ; FMad(a,b,c)
  %4308 = add i32 %4284, 0
  %4309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4309, %dx.types.Handle %4288, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = and i32 %4285, 1024
  %4313 = icmp ne i32 %4312, 0
  %4314 = fcmp fast ogt float %4311, 0x3FE0101020000000
  %4315 = uitofp i1 %4314 to float
  %4316 = select i1 %4313, float %4315, float %4311
  %4317 = and i32 %4285, 8192
  %4318 = icmp ne i32 %4317, 0
  %4319 = select i1 %4318, float %4278, float 1.000000e+00
  %4320 = fmul fast float %4210, 2.000000e+00
  %4321 = fadd fast float %4320, -1.000000e+00
  %4322 = call float @dx.op.unary.f32(i32 6, float %4321)  ; FAbs(value)
  %4323 = fmul fast float %4322, %4203
  %4324 = fsub fast float %4323, %4203
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fmul fast float %4217, 2.000000e+00
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = call float @dx.op.unary.f32(i32 6, float %4327)  ; FAbs(value)
  %4329 = fmul fast float %4328, %4204
  %4330 = fsub fast float %4329, %4204
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4229, %4166
  %4333 = fsub fast float %4332, %4166
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4293, %4319
  %4336 = fmul fast float %4335, %4290
  %4337 = fmul fast float %4336, %4325
  %4338 = fmul fast float %4337, %4316
  %4339 = fmul fast float %4338, %4331
  %4340 = fmul fast float %4339, %4334
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4344 = fsub fast float %4246, %4343
  %4345 = fmul fast float %4344, %4342
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4340, %4167
  %4348 = fadd fast float %4340, %4167
  %4349 = fmul fast float %4348, %4176
  %4350 = fsub fast float %4349, %4176
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = and i32 %4285, 128
  %4353 = icmp ne i32 %4352, 0
  %4354 = select i1 %4353, float %4351, float %4347
  %4355 = fmul fast float %4354, %4346
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = fcmp fast ugt float %4355, %4357
  br i1 %4358, label %4359, label %4250

; <label>:4359                                    ; preds = %4276
  %4360 = select i1 %4318, float %4355, float 0.000000e+00
  %4361 = fadd fast float %4360, %4125
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  br i1 %4318, label %4250, label %4363

; <label>:4363                                    ; preds = %4359
  %4364 = and i32 %4285, 4
  %4365 = and i32 %4285, 8
  %4366 = add i32 %4162, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.ResRet.f32 %4369, 3
  %4374 = bitcast float %4188 to i32
  %4375 = and i32 %4374, 255
  %4376 = uitofp i32 %4375 to float
  %4377 = lshr i32 %4374, 8
  %4378 = and i32 %4377, 255
  %4379 = uitofp i32 %4378 to float
  %4380 = fmul fast float %4373, %4376
  %4381 = fadd fast float %4380, %4379
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = add i32 %4163, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4384, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.ResRet.f32 %4385, 3
  %4390 = bitcast float %4182 to i32
  %4391 = and i32 %4390, 255
  %4392 = uitofp i32 %4391 to float
  %4393 = lshr i32 %4390, 8
  %4394 = and i32 %4393, 255
  %4395 = uitofp i32 %4394 to float
  %4396 = lshr i32 %4390, 16
  %4397 = and i32 %4396, 255
  %4398 = uitofp i32 %4397 to float
  %4399 = fmul fast float %4398, 0x3F70101000000000
  %4400 = fmul fast float %4386, %4392
  %4401 = fadd fast float %4400, %4395
  %4402 = fmul fast float %4401, 0x3F70101000000000
  %4403 = fadd fast float %4387, -5.000000e-01
  %4404 = fadd fast float %4389, -5.000000e-01
  %4405 = fmul fast float %4403, %4399
  %4406 = fmul fast float %4404, %4399
  %4407 = fadd fast float %4405, 5.000000e-01
  %4408 = fadd fast float %4406, 5.000000e-01
  %4409 = fmul fast float %4370, %4191
  %4410 = fmul fast float %4371, %4192
  %4411 = fmul fast float %4372, %4193
  %4412 = fmul fast float %4407, 2.000000e+00
  %4413 = fadd fast float %4412, -1.000000e+00
  %4414 = fmul fast float %4408, 2.000000e+00
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
  %4428 = fmul fast float %4425, %4423
  %4429 = fmul fast float %4428, %4157
  %4430 = fmul fast float %4428, %4158
  %4431 = fmul fast float %4428, %4159
  %4432 = fmul fast float %4426, %4179
  %4433 = fmul fast float %4426, %4180
  %4434 = fmul fast float %4426, %4181
  %4435 = fadd fast float %4432, %4429
  %4436 = fadd fast float %4433, %4430
  %4437 = fadd fast float %4434, %4431
  %4438 = fmul fast float %4427, %4185
  %4439 = fmul fast float %4427, %4186
  %4440 = fmul fast float %4427, %4187
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4442, float %4443, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 25, float %4444)  ; Rsqrt(value)
  %4446 = fmul fast float %4441, %4445
  %4447 = fmul fast float %4442, %4445
  %4448 = fmul fast float %4443, %4445
  %4449 = icmp ne i32 %4365, 0
  %4450 = select i1 %4449, float 1.000000e+00, float 0.000000e+00
  %4451 = fmul fast float %4355, %4450
  %4452 = and i32 %4285, 1
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4454, label %4458

; <label>:4454                                    ; preds = %4363
  %4455 = fsub fast float %4446, %4139
  %4456 = fsub fast float %4447, %4140
  %4457 = fsub fast float %4448, %4141
  br label %4458

; <label>:4458                                    ; preds = %4454, %4363
  %4459 = phi float [ %4455, %4454 ], [ %4446, %4363 ]
  %4460 = phi float [ %4456, %4454 ], [ %4447, %4363 ]
  %4461 = phi float [ %4457, %4454 ], [ %4448, %4363 ]
  %4462 = fmul float %4461, %4451
  %4463 = fmul float %4460, %4451
  %4464 = fmul float %4459, %4451
  %4465 = fadd fast float %4464, %4139
  %4466 = fadd fast float %4463, %4140
  %4467 = fadd fast float %4462, %4141
  %4468 = icmp ne i32 %4364, 0
  %4469 = select i1 %4468, float 1.000000e+00, float 0.000000e+00
  %4470 = fmul fast float %4355, %4469
  %4471 = fsub fast float %4409, %4146
  %4472 = fsub fast float %4410, %4147
  %4473 = fsub fast float %4411, %4148
  %4474 = fmul fast float %4471, %4470
  %4475 = fmul fast float %4472, %4470
  %4476 = fmul fast float %4473, %4470
  %4477 = fadd fast float %4474, %4146
  %4478 = fadd fast float %4475, %4147
  %4479 = fadd fast float %4476, %4148
  %4480 = fsub fast float %4382, %4145
  %4481 = fmul fast float %4480, %4470
  %4482 = fadd fast float %4481, %4145
  %4483 = fmul fast float %4470, %4132
  %4484 = fsub fast float %4132, %4483
  %4485 = fmul fast float %4470, %4131
  %4486 = fsub fast float %4131, %4485
  %4487 = bitcast float %4200 to i32
  %4488 = lshr i32 %4487, 16
  %4489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4488)  ; LegacyF16ToF32(value)
  %4490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4491 = extractvalue %dx.types.ResRet.i32 %4490, 0
  %4492 = and i32 %4491, 1
  %4493 = icmp eq i32 %4492, 0
  br i1 %4493, label %4494, label %4519

; <label>:4494                                    ; preds = %4458
  %4495 = fadd fast float %4382, 0xBFB99999A0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 0x3FF1C71C80000000
  %4498 = fsub fast float 1.000000e+00, %4497
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, %4409
  %4501 = fmul fast float %4499, %4410
  %4502 = fmul fast float %4499, %4411
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.binary.f32(i32 35, float %4504, float %4505)  ; FMax(a,b)
  %4507 = call float @dx.op.binary.f32(i32 35, float %4503, float %4506)  ; FMax(a,b)
  %4508 = fcmp fast ogt float %4507, 0.000000e+00
  %4509 = bitcast float %4507 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = select i1 %4508, float %4511, float 0.000000e+00
  %4513 = fmul fast float %4503, %4489
  %4514 = fmul fast float %4504, %4489
  %4515 = fmul fast float %4505, %4489
  %4516 = fmul fast float %4513, %4512
  %4517 = fmul fast float %4514, %4512
  %4518 = fmul fast float %4515, %4512
  br label %4519

; <label>:4519                                    ; preds = %4494, %4458
  %4520 = phi float [ %4489, %4458 ], [ %4516, %4494 ]
  %4521 = phi float [ %4489, %4458 ], [ %4517, %4494 ]
  %4522 = phi float [ %4489, %4458 ], [ %4518, %4494 ]
  %4523 = fsub fast float %4520, %4133
  %4524 = fsub fast float %4521, %4134
  %4525 = fsub fast float %4522, %4135
  %4526 = fmul fast float %4523, %4470
  %4527 = fmul fast float %4524, %4470
  %4528 = fmul fast float %4525, %4470
  %4529 = fadd fast float %4526, %4133
  %4530 = fadd fast float %4527, %4134
  %4531 = fadd fast float %4528, %4135
  %4532 = fadd fast float %4355, %4144
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fsub fast float %4402, %4143
  %4535 = fmul fast float %4534, %4451
  %4536 = fadd fast float %4535, %4143
  %4537 = fsub fast float %4388, %4142
  %4538 = fmul fast float %4537, %4451
  %4539 = fadd fast float %4538, %4142
  br i1 %4453, label %4548, label %4540

; <label>:4540                                    ; preds = %4519
  %4541 = and i32 %4285, 32768
  %4542 = icmp eq i32 %4541, 0
  br i1 %4542, label %4558, label %4543

; <label>:4543                                    ; preds = %4540
  %4544 = fmul fast float %4451, 1.270000e+02
  %4545 = fadd fast float %4544, %4128
  %4546 = fadd fast float %4544, %4129
  %4547 = fadd fast float %4544, %4130
  br label %4558

; <label>:4548                                    ; preds = %4519
  %4549 = fsub fast float 1.270000e+02, %4128
  %4550 = fsub fast float 1.270000e+02, %4129
  %4551 = fsub fast float 1.270000e+02, %4130
  %4552 = fmul fast float %4451, %4549
  %4553 = fmul fast float %4451, %4550
  %4554 = fmul fast float %4451, %4551
  %4555 = fadd fast float %4552, %4128
  %4556 = fadd fast float %4553, %4129
  %4557 = fadd fast float %4554, %4130
  br label %4558

; <label>:4558                                    ; preds = %4548, %4543, %4540
  %4559 = phi float [ %4545, %4543 ], [ %4128, %4540 ], [ %4555, %4548 ]
  %4560 = phi float [ %4546, %4543 ], [ %4129, %4540 ], [ %4556, %4548 ]
  %4561 = phi float [ %4547, %4543 ], [ %4130, %4540 ], [ %4557, %4548 ]
  %4562 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4566 = fmul fast float %4565, %4562
  %4567 = fadd fast float %4566, %4564
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = bitcast float %4194 to i32
  %4570 = and i32 %4569, 65535
  %4571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4570)  ; LegacyF16ToF32(value)
  %4572 = lshr i32 %4569, 16
  %4573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4572)  ; LegacyF16ToF32(value)
  %4574 = fcmp fast oge float %4571, 0.000000e+00
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = select i1 %4574, float %4571, float %4576
  %4578 = fadd fast float %4577, %4573
  %4579 = fsub fast float %4568, %4127
  %4580 = fmul fast float %4579, %4355
  %4581 = fadd fast float %4580, %4127
  %4582 = fmul fast float %4578, %4355
  %4583 = call float @dx.op.binary.f32(i32 35, float %4126, float %4582)  ; FMax(a,b)
  %4584 = and i32 %4285, 16
  %4585 = icmp eq i32 %4584, 0
  br i1 %4585, label %4607, label %4586

; <label>:4586                                    ; preds = %4558
  %4587 = add i32 %4197, 0
  %4588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4587, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4588, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4593 = and i32 %4487, 65535
  %4594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4593)  ; LegacyF16ToF32(value)
  %4595 = fmul fast float %4590, %4191
  %4596 = fmul fast float %4591, %4192
  %4597 = fmul fast float %4592, %4193
  %4598 = and i32 %4285, 16384
  %4599 = icmp ne i32 %4598, 0
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = select i1 %4599, float %4601, float 1.000000e+00
  %4603 = fmul fast float %4602, %4594
  %4604 = fmul fast float %4595, %4603
  %4605 = fmul fast float %4596, %4603
  %4606 = fmul fast float %4597, %4603
  br label %4607

; <label>:4607                                    ; preds = %4586, %4558
  %4608 = phi float [ %4604, %4586 ], [ 0.000000e+00, %4558 ]
  %4609 = phi float [ %4605, %4586 ], [ 0.000000e+00, %4558 ]
  %4610 = phi float [ %4606, %4586 ], [ 0.000000e+00, %4558 ]
  %4611 = fsub fast float %4608, %4136
  %4612 = fsub fast float %4609, %4137
  %4613 = fsub fast float %4610, %4138
  %4614 = fmul fast float %4611, %4355
  %4615 = fmul fast float %4612, %4355
  %4616 = fmul fast float %4613, %4355
  %4617 = fadd fast float %4614, %4136
  %4618 = fadd fast float %4615, %4137
  %4619 = fadd fast float %4616, %4138
  br label %4250

; <label>:4620                                    ; preds = %4250
  br label %4621

; <label>:4621                                    ; preds = %4620, %4060
  %4622 = phi float [ 0.000000e+00, %4060 ], [ %4251, %4620 ]
  %4623 = phi float [ %4030, %4060 ], [ %4252, %4620 ]
  %4624 = phi float [ %4011, %4060 ], [ %4253, %4620 ]
  %4625 = phi float [ %4004, %4060 ], [ %4254, %4620 ]
  %4626 = phi float [ %4005, %4060 ], [ %4255, %4620 ]
  %4627 = phi float [ %4006, %4060 ], [ %4256, %4620 ]
  %4628 = phi float [ 0.000000e+00, %4060 ], [ %4257, %4620 ]
  %4629 = phi float [ 0.000000e+00, %4060 ], [ %4258, %4620 ]
  %4630 = phi float [ %4001, %4060 ], [ %4259, %4620 ]
  %4631 = phi float [ %4002, %4060 ], [ %4260, %4620 ]
  %4632 = phi float [ %4003, %4060 ], [ %4261, %4620 ]
  %4633 = phi float [ %3998, %4060 ], [ %4262, %4620 ]
  %4634 = phi float [ %3999, %4060 ], [ %4263, %4620 ]
  %4635 = phi float [ %4000, %4060 ], [ %4264, %4620 ]
  %4636 = phi float [ %4056, %4060 ], [ %4265, %4620 ]
  %4637 = phi float [ %4057, %4060 ], [ %4266, %4620 ]
  %4638 = phi float [ %4058, %4060 ], [ %4267, %4620 ]
  %4639 = phi float [ %4009, %4060 ], [ %4268, %4620 ]
  %4640 = phi float [ %4008, %4060 ], [ %4269, %4620 ]
  %4641 = phi float [ 0.000000e+00, %4060 ], [ %4270, %4620 ]
  %4642 = phi float [ %4007, %4060 ], [ %4271, %4620 ]
  %4643 = phi float [ %3995, %4060 ], [ %4272, %4620 ]
  %4644 = phi float [ %3996, %4060 ], [ %4273, %4620 ]
  %4645 = phi float [ %3997, %4060 ], [ %4274, %4620 ]
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.unary.f32(i32 25, float %4646)  ; Rsqrt(value)
  %4648 = fmul fast float %4647, %4636
  %4649 = fmul fast float %4647, %4637
  %4650 = fmul fast float %4647, %4638
  %4651 = fadd fast float %4641, %1181
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float %4648, float %4649, float %4650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call float @dx.op.unary.f32(i32 25, float %4653)  ; Rsqrt(value)
  %4655 = fmul fast float %4654, %4648
  %4656 = fmul fast float %4654, %4649
  %4657 = fmul fast float %4654, %4650
  br label %4658

; <label>:4658                                    ; preds = %4621, %3992
  %4659 = phi float [ %4655, %4621 ], [ %4056, %3992 ]
  %4660 = phi float [ %4656, %4621 ], [ %4057, %3992 ]
  %4661 = phi float [ %4657, %4621 ], [ %4058, %3992 ]
  %4662 = phi float [ %4643, %4621 ], [ %3995, %3992 ]
  %4663 = phi float [ %4644, %4621 ], [ %3996, %3992 ]
  %4664 = phi float [ %4645, %4621 ], [ %3997, %3992 ]
  %4665 = phi float [ %4633, %4621 ], [ %3998, %3992 ]
  %4666 = phi float [ %4634, %4621 ], [ %3999, %3992 ]
  %4667 = phi float [ %4635, %4621 ], [ %4000, %3992 ]
  %4668 = phi float [ %4625, %4621 ], [ %4004, %3992 ]
  %4669 = phi float [ %4626, %4621 ], [ %4005, %3992 ]
  %4670 = phi float [ %4627, %4621 ], [ %4006, %3992 ]
  %4671 = phi float [ %4630, %4621 ], [ %4001, %3992 ]
  %4672 = phi float [ %4631, %4621 ], [ %4002, %3992 ]
  %4673 = phi float [ %4632, %4621 ], [ %4003, %3992 ]
  %4674 = phi float [ %4642, %4621 ], [ %4007, %3992 ]
  %4675 = phi float [ %4652, %4621 ], [ %1181, %3992 ]
  %4676 = phi float [ %4640, %4621 ], [ %4008, %3992 ]
  %4677 = phi float [ %4639, %4621 ], [ %4009, %3992 ]
  %4678 = phi float [ %4629, %4621 ], [ 0.000000e+00, %3992 ]
  %4679 = phi float [ %4628, %4621 ], [ 0.000000e+00, %3992 ]
  %4680 = phi float [ %4622, %4621 ], [ 0.000000e+00, %3992 ]
  %4681 = phi float [ %4623, %4621 ], [ %4030, %3992 ]
  %4682 = phi float [ %4624, %4621 ], [ %4011, %3992 ]
  %4683 = add i32 %42, 392
  %4684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4683, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.i32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.i32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.i32 %4684, 2
  %4688 = extractvalue %dx.types.ResRet.i32 %4684, 3
  %4689 = bitcast i32 %4685 to float
  %4690 = bitcast i32 %4686 to float
  %4691 = bitcast i32 %4687 to float
  %4692 = bitcast i32 %4688 to float
  %4693 = fsub fast float %4662, %4689
  %4694 = fsub fast float %4663, %4690
  %4695 = fsub fast float %4664, %4691
  %4696 = fmul fast float %4693, %210
  %4697 = fmul fast float %4694, %210
  %4698 = fmul fast float %4695, %210
  %4699 = fadd fast float %4696, %4689
  %4700 = fadd fast float %4697, %4690
  %4701 = fadd fast float %4698, %4691
  %4702 = fsub fast float %4675, %4692
  %4703 = fmul fast float %4702, %210
  %4704 = fadd fast float %4703, %4692
  %4705 = fadd fast float %4674, 0xBFB99999A0000000
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fmul fast float %4706, 0x3FF1C71C80000000
  %4708 = call float @dx.op.binary.f32(i32 36, float %4674, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4709 = fsub fast float 1.000000e+00, %4707
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4699, %4710
  %4712 = fmul fast float %4700, %4710
  %4713 = fmul fast float %4701, %4710
  %4714 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = fmul fast float %4699, %4707
  %4718 = fmul fast float %4700, %4707
  %4719 = fmul fast float %4701, %4707
  %4720 = fadd fast float %4717, %4708
  %4721 = fadd fast float %4718, %4708
  %4722 = fadd fast float %4719, %4708
  %4723 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.i32 %4727, 0
  %4729 = and i32 %4728, 1
  %4730 = icmp eq i32 %4729, 0
  br i1 %4730, label %4745, label %4731

; <label>:4731                                    ; preds = %4658
  %4732 = call float @dx.op.binary.f32(i32 35, float %4715, float %4716)  ; FMax(a,b)
  %4733 = call float @dx.op.binary.f32(i32 35, float %4714, float %4732)  ; FMax(a,b)
  %4734 = fcmp fast ogt float %4733, 0.000000e+00
  %4735 = bitcast float %4733 to i32
  %4736 = sub nsw i32 2129859010, %4735
  %4737 = bitcast i32 %4736 to float
  %4738 = select i1 %4734, float %4737, float 0.000000e+00
  %4739 = fmul fast float %4714, %4671
  %4740 = fmul fast float %4715, %4672
  %4741 = fmul fast float %4716, %4673
  %4742 = fmul fast float %4739, %4738
  %4743 = fmul fast float %4740, %4738
  %4744 = fmul fast float %4741, %4738
  br label %4745

; <label>:4745                                    ; preds = %4731, %4658
  %4746 = phi float [ %4742, %4731 ], [ %4671, %4658 ]
  %4747 = phi float [ %4743, %4731 ], [ %4672, %4658 ]
  %4748 = phi float [ %4744, %4731 ], [ %4673, %4658 ]
  %4749 = call float @dx.op.binary.f32(i32 36, float %4668, float 1.270000e+02)  ; FMin(a,b)
  %4750 = call float @dx.op.binary.f32(i32 36, float %4669, float 1.270000e+02)  ; FMin(a,b)
  %4751 = call float @dx.op.binary.f32(i32 36, float %4670, float 1.270000e+02)  ; FMin(a,b)
  %4752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.i32 %4752, 3
  %4754 = and i32 %4753, 8
  %4755 = icmp ne i32 %4754, 0
  %4756 = call float @dx.op.binary.f32(i32 35, float %4714, float %4699)  ; FMax(a,b)
  %4757 = call float @dx.op.binary.f32(i32 35, float %4715, float %4699)  ; FMax(a,b)
  %4758 = call float @dx.op.binary.f32(i32 35, float %4716, float %4699)  ; FMax(a,b)
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4715, float %4716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = select i1 %269, float %4699, float %4714
  %4761 = select i1 %269, float %4759, float %4715
  %4762 = select i1 %269, float 1.000000e+00, float %4716
  %4763 = select i1 %4755, float %4756, float %4760
  %4764 = select i1 %4755, float %4757, float %4761
  %4765 = select i1 %4755, float %4758, float %4762
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4747, float %4748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = select i1 %269, float %4766, float %4746
  %4768 = select i1 %269, float %4766, float %4747
  %4769 = select i1 %269, float %4766, float %4748
  %4770 = and i32 %245, 3
  %4771 = select i1 %239, i32 %4770, i32 0
  %4772 = icmp eq i32 %4771, 1
  br i1 %4772, label %4773, label %4849

; <label>:4773                                    ; preds = %4745
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.CBufRet.f32 %4774, 1
  %4777 = fadd fast float %4775, %176
  %4778 = fadd fast float %4776, %177
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4782 = fsub fast float %4777, %4780
  %4783 = fsub fast float %4778, %4781
  %4784 = fmul fast float %4782, %4782
  %4785 = fmul fast float %4783, %4783
  %4786 = fadd fast float %4784, %4785
  %4787 = call float @dx.op.unary.f32(i32 24, float %4786)  ; Sqrt(value)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4789 = fcmp fast olt float %4787, %4788
  br i1 %4789, label %4790, label %4843

; <label>:4790                                    ; preds = %4773
  %4791 = extractvalue %dx.types.CBufRet.f32 %4774, 2
  %4792 = fadd fast float %4791, %178
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4802 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4803 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4804 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4805 = fadd fast float %4802, %4777
  %4806 = fadd fast float %4803, %4778
  %4807 = fadd fast float %4792, %4804
  %4808 = fmul fast float %4805, %4794
  %4809 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4796, float %4808)  ; FMad(a,b,c)
  %4810 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4798, float %4809)  ; FMad(a,b,c)
  %4811 = fmul fast float %4805, %4799
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4800, float %4811)  ; FMad(a,b,c)
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4801, float %4812)  ; FMad(a,b,c)
  %4814 = fsub fast float %4810, %4802
  %4815 = fsub fast float %4813, %4803
  %4816 = fsub fast float %4814, %4780
  %4817 = fadd fast float %4816, %4788
  %4818 = fsub fast float %4815, %4781
  %4819 = fadd fast float %4818, %4788
  %4820 = extractvalue %dx.types.CBufRet.f32 %4779, 3
  %4821 = fmul fast float %4817, %4820
  %4822 = fmul fast float %4819, %4820
  %4823 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4825 = fsub fast float 1.000000e+00, %4823
  %4826 = fsub fast float 1.000000e+00, %4824
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %4825, float %4826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = fcmp fast ugt float %4828, 0.000000e+00
  br i1 %4829, label %4830, label %4843

; <label>:4830                                    ; preds = %4790
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4833 = fmul fast float %4832, %4828
  %4834 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4835 = fadd fast float %4834, %4833
  %4836 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4837 = fadd fast float %4835, %4804
  %4838 = fmul fast float %4810, %4798
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4801, float %4838)  ; FMad(a,b,c)
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4836, float %4839)  ; FMad(a,b,c)
  %4841 = fsub fast float %4840, %4804
  %4842 = fsub fast float %4841, %4791
  br label %4843

; <label>:4843                                    ; preds = %4830, %4790, %4773
  %4844 = phi i1 [ true, %4830 ], [ false, %4790 ], [ false, %4773 ]
  %4845 = phi float [ %4842, %4830 ], [ -1.310720e+05, %4790 ], [ -1.310720e+05, %4773 ]
  %4846 = fsub fast float %4845, %178
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = select i1 %4844, float %4847, float 1.000000e+00
  br label %4849

; <label>:4849                                    ; preds = %4843, %4745
  %4850 = phi float [ %4848, %4843 ], [ 0.000000e+00, %4745 ]
  %4851 = icmp eq i32 %4771, 3
  %4852 = select i1 %4851, float 1.000000e+00, float %4850
  %4853 = call float @dx.op.binary.f32(i32 35, float %4680, float %4852)  ; FMax(a,b)
  %4854 = fcmp fast olt float %4852, 1.000000e+00
  %4855 = fcmp uge float %57, 0.000000e+00
  %4856 = and i1 %4855, %4854
  br i1 %4856, label %4857, label %4867

; <label>:4857                                    ; preds = %4849
  %4858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4859 = extractvalue %dx.types.ResRet.f32 %4858, 0
  %4860 = extractvalue %dx.types.ResRet.f32 %4858, 1
  %4861 = extractvalue %dx.types.ResRet.f32 %4858, 2
  %4862 = fadd fast float %4859, %4853
  %4863 = fcmp ule float %56, 0.000000e+00
  %4864 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = select i1 %4863, float %4864, float 1.000000e+00
  %4866 = fmul fast float %4865, %4861
  br label %4867

; <label>:4867                                    ; preds = %4857, %4849
  %4868 = phi float [ %4862, %4857 ], [ %4853, %4849 ]
  %4869 = phi float [ %4860, %4857 ], [ 0.000000e+00, %4849 ]
  %4870 = phi float [ %4866, %4857 ], [ 0.000000e+00, %4849 ]
  %4871 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4873 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4874 = fcmp fast une float %4872, 0.000000e+00
  %4875 = fcmp fast une float %4873, 0.000000e+00
  %4876 = or i1 %4874, %4875
  br i1 %4876, label %4877, label %5452

; <label>:4877                                    ; preds = %4867
  br i1 %4874, label %4878, label %5151

; <label>:4878                                    ; preds = %4877
  %4879 = call float @dx.op.unary.f32(i32 23, float %4677)  ; Log(value)
  %4880 = fmul fast float %4879, 4.000000e+00
  %4881 = call float @dx.op.unary.f32(i32 21, float %4880)  ; Exp(value)
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = fmul fast float %4883, %44
  %4885 = fmul fast float %4883, %45
  %4886 = fmul fast float %4883, %46
  %4887 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4888 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4889 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4890 = call float @dx.op.unary.f32(i32 23, float %4887)  ; Log(value)
  %4891 = call float @dx.op.unary.f32(i32 23, float %4888)  ; Log(value)
  %4892 = call float @dx.op.unary.f32(i32 23, float %4889)  ; Log(value)
  %4893 = fmul fast float %4890, 4.000000e+00
  %4894 = fmul fast float %4891, 4.000000e+00
  %4895 = fmul fast float %4892, 4.000000e+00
  %4896 = call float @dx.op.unary.f32(i32 21, float %4893)  ; Exp(value)
  %4897 = call float @dx.op.unary.f32(i32 21, float %4894)  ; Exp(value)
  %4898 = call float @dx.op.unary.f32(i32 21, float %4895)  ; Exp(value)
  %4899 = fadd fast float %4897, %4896
  %4900 = fadd fast float %4899, %4898
  %4901 = fdiv fast float 1.000000e+00, %4900
  %4902 = fmul fast float %4901, %4896
  %4903 = fcmp fast ogt float %53, 0.000000e+00
  %4904 = fcmp fast ogt float %54, 0.000000e+00
  %4905 = fcmp fast ogt float %55, 0.000000e+00
  %4906 = fcmp fast olt float %53, 0.000000e+00
  %4907 = fcmp fast olt float %54, 0.000000e+00
  %4908 = fcmp fast olt float %55, 0.000000e+00
  %4909 = zext i1 %4903 to i32
  %4910 = zext i1 %4904 to i32
  %4911 = zext i1 %4905 to i32
  %4912 = zext i1 %4906 to i32
  %4913 = zext i1 %4907 to i32
  %4914 = zext i1 %4908 to i32
  %4915 = sub nsw i32 %4909, %4912
  %4916 = sub nsw i32 %4910, %4913
  %4917 = sub nsw i32 %4911, %4914
  %4918 = call float @dx.op.unary.f32(i32 83, float %4884)  ; DerivCoarseX(value)
  %4919 = call float @dx.op.unary.f32(i32 83, float %4885)  ; DerivCoarseX(value)
  %4920 = call float @dx.op.unary.f32(i32 83, float %4886)  ; DerivCoarseX(value)
  %4921 = call float @dx.op.unary.f32(i32 84, float %4884)  ; DerivCoarseY(value)
  %4922 = call float @dx.op.unary.f32(i32 84, float %4885)  ; DerivCoarseY(value)
  %4923 = call float @dx.op.unary.f32(i32 84, float %4886)  ; DerivCoarseY(value)
  %4924 = fcmp fast ole float %280, %4902
  %4925 = fmul fast float %4901, %4899
  %4926 = fcmp fast ole float %280, %4925
  %4927 = select i1 %4926, float %4886, float %4884
  %4928 = select i1 %4926, float %4884, float %4885
  %4929 = select i1 %4924, float %4885, float %4927
  %4930 = select i1 %4924, float %4886, float %4928
  %4931 = select i1 %4926, float %4920, float %4918
  %4932 = select i1 %4926, float %4918, float %4919
  %4933 = select i1 %4924, float %4919, float %4931
  %4934 = select i1 %4924, float %4920, float %4932
  %4935 = select i1 %4926, float %4923, float %4921
  %4936 = select i1 %4926, float %4921, float %4922
  %4937 = select i1 %4924, float %4922, float %4935
  %4938 = select i1 %4924, float %4923, float %4936
  %4939 = call float @dx.op.unary.f32(i32 27, float %4929)  ; Round_ni(value)
  %4940 = call float @dx.op.unary.f32(i32 27, float %4930)  ; Round_ni(value)
  %4941 = fptosi float %4939 to i32
  %4942 = fptosi float %4940 to i32
  %4943 = xor i32 %4942, %4941
  %4944 = sitofp i32 %4943 to float
  %4945 = fptosi float %4944 to i32
  %4946 = sitofp i32 %4945 to float
  %4947 = fmul fast float %4946, 0x3FE3C6EF40000000
  %4948 = frem fast float %4939, 2.560000e+02
  %4949 = frem fast float %4940, 2.560000e+02
  %4950 = fptoui float %4948 to i32
  %4951 = fptoui float %4949 to i32
  %4952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4950, i32 %4951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.ResRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.ResRet.f32 %4952, 2
  %4956 = fadd fast float %4953, %4947
  %4957 = fadd fast float %4954, %4947
  %4958 = fadd fast float %4955, %4947
  %4959 = call float @dx.op.unary.f32(i32 22, float %4956)  ; Frc(value)
  %4960 = call float @dx.op.unary.f32(i32 22, float %4957)  ; Frc(value)
  %4961 = call float @dx.op.unary.f32(i32 22, float %4958)  ; Frc(value)
  %4962 = fmul fast float %4961, 0x401921FB60000000
  %4963 = call float @dx.op.unary.f32(i32 13, float %4962)  ; Sin(value)
  %4964 = call float @dx.op.unary.f32(i32 12, float %4962)  ; Cos(value)
  %4965 = fsub fast float -0.000000e+00, %4964
  %4966 = fmul fast float %4964, %4929
  %4967 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4930, float %4966)  ; FMad(a,b,c)
  %4968 = fmul fast float %4963, %4929
  %4969 = call float @dx.op.tertiary.f32(i32 46, float %4965, float %4930, float %4968)  ; FMad(a,b,c)
  %4970 = fadd fast float %4967, %4959
  %4971 = fadd fast float %4969, %4960
  %4972 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4973 = bitcast float %4972 to i32
  %4974 = icmp eq i32 %4973, 0
  br i1 %4974, label %5013, label %4975

; <label>:4975                                    ; preds = %4878
  %4976 = add i32 %4973, 0
  %4977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4977, %dx.types.Handle %94, float %4970, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float %4933, float %4934, float undef, float %4937, float %4938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4980, 2
  %4983 = fsub fast float 1.000000e+00, %4872
  %4984 = call float @dx.op.binary.f32(i32 35, float %4983, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4985 = bitcast float %4872 to i32
  %4986 = sitofp i32 %4985 to float
  %4987 = fadd fast float %4986, 0xC1CFBF8940000000
  %4988 = fmul fast float %4982, %4987
  %4989 = fadd fast float %4988, 0x41CFBF8940000000
  %4990 = fptosi float %4989 to i32
  %4991 = bitcast i32 %4990 to float
  %4992 = bitcast float %4984 to i32
  %4993 = sitofp i32 %4992 to float
  %4994 = fadd fast float %4993, 0xC1CFBF8940000000
  %4995 = fmul fast float %4994, %4982
  %4996 = fadd fast float %4995, 0x41CFBF8940000000
  %4997 = fptosi float %4996 to i32
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4991, %4981
  %5000 = fmul fast float %4998, %4981
  %5001 = fsub fast float %4984, %4999
  %5002 = fadd fast float %5000, %4984
  %5003 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5005 = fsub fast float %4979, %5003
  %5006 = fsub fast float %5004, %5003
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = fmul fast float %5009, %5005
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = fcmp fast olt float %5011, 0x3F70101020000000
  br i1 %5012, label %5151, label %5013

; <label>:5013                                    ; preds = %4975, %4878
  %5014 = phi float [ %5011, %4975 ], [ %4872, %4878 ]
  %5015 = fmul fast float %5014, %4881
  %5016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.i32 %5016, 1
  %5018 = extractvalue %dx.types.CBufRet.i32 %5016, 0
  %5019 = add i32 %5018, 0
  %5020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5020, %dx.types.Handle %93, float %4970, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float %4933, float %4934, float undef, float %4937, float %4938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.ResRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.ResRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.ResRet.f32 %5021, 3
  %5026 = and i32 %5017, 255
  %5027 = uitofp i32 %5026 to float
  %5028 = lshr i32 %5017, 8
  %5029 = and i32 %5028, 255
  %5030 = uitofp i32 %5029 to float
  %5031 = fmul fast float %5025, %5027
  %5032 = fadd fast float %5031, %5030
  %5033 = fmul fast float %5032, 0x3F70101000000000
  %5034 = fadd fast float %5033, 0xBFB99999A0000000
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5035, 0x3FF1C71C80000000
  %5037 = call float @dx.op.binary.f32(i32 36, float %5033, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5038 = fsub fast float 1.000000e+00, %5036
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, %5022
  %5041 = fmul fast float %5039, %5023
  %5042 = fmul fast float %5039, %5024
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5045 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5046 = fmul fast float %5036, %5022
  %5047 = fmul fast float %5036, %5023
  %5048 = fmul fast float %5036, %5024
  %5049 = fadd fast float %5046, %5037
  %5050 = fadd fast float %5047, %5037
  %5051 = fadd fast float %5048, %5037
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.i32 %5055, 3
  %5057 = extractvalue %dx.types.CBufRet.i32 %5055, 2
  %5058 = add i32 %5057, 0
  %5059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5060 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5059, %dx.types.Handle %93, float %4970, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float %4933, float %4934, float undef, float %4937, float %4938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = extractvalue %dx.types.ResRet.f32 %5060, 3
  %5065 = and i32 %5056, 255
  %5066 = uitofp i32 %5065 to float
  %5067 = lshr i32 %5056, 8
  %5068 = and i32 %5067, 255
  %5069 = uitofp i32 %5068 to float
  %5070 = lshr i32 %5056, 16
  %5071 = and i32 %5070, 255
  %5072 = uitofp i32 %5071 to float
  %5073 = fmul fast float %5072, 0x3F70101000000000
  %5074 = fmul fast float %5061, %5066
  %5075 = fadd fast float %5074, %5069
  %5076 = fmul fast float %5075, 0x3F70101000000000
  %5077 = fadd fast float %5062, -5.000000e-01
  %5078 = fadd fast float %5064, -5.000000e-01
  %5079 = fmul fast float %5077, %5073
  %5080 = fmul fast float %5078, %5073
  %5081 = fadd fast float %5079, 5.000000e-01
  %5082 = fadd fast float %5080, 5.000000e-01
  %5083 = fmul fast float %5081, 2.000000e+00
  %5084 = fadd fast float %5083, -1.000000e+00
  %5085 = fmul fast float %5082, 2.000000e+00
  %5086 = fadd fast float %5085, -1.000000e+00
  %5087 = fadd fast float %5084, %5086
  %5088 = fmul fast float %5087, 5.000000e-01
  %5089 = fsub fast float %5084, %5086
  %5090 = fmul fast float %5089, 5.000000e-01
  %5091 = call float @dx.op.unary.f32(i32 6, float %5088)  ; FAbs(value)
  %5092 = fsub fast float 1.000000e+00, %5091
  %5093 = call float @dx.op.unary.f32(i32 6, float %5090)  ; FAbs(value)
  %5094 = fsub fast float %5092, %5093
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5090, float %5094, float %5088, float %5090, float %5094)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 25, float %5095)  ; Rsqrt(value)
  %5097 = fmul fast float %5088, %5096
  %5098 = fmul fast float %5090, %5096
  %5099 = select i1 %4926, i32 %4916, i32 %4917
  %5100 = select i1 %4924, i32 %4915, i32 %5099
  %5101 = sitofp i32 %5100 to float
  %5102 = fmul fast float %5094, %5101
  %5103 = fmul fast float %5102, %5096
  %5104 = select i1 %4926, float %5103, float %5098
  %5105 = select i1 %4926, float %5098, float %5103
  %5106 = select i1 %4924, float %5103, float %5097
  %5107 = select i1 %4924, float %5098, float %5104
  %5108 = select i1 %4924, float %5097, float %5105
  %5109 = fsub fast float %5043, %4763
  %5110 = fsub fast float %5044, %4764
  %5111 = fsub fast float %5045, %4765
  %5112 = fmul fast float %5109, %5015
  %5113 = fmul fast float %5110, %5015
  %5114 = fmul fast float %5111, %5015
  %5115 = fadd fast float %5112, %4763
  %5116 = fadd fast float %5113, %4764
  %5117 = fadd fast float %5114, %4765
  %5118 = fsub fast float %5052, %4723
  %5119 = fsub fast float %5053, %4724
  %5120 = fsub fast float %5054, %4725
  %5121 = fmul fast float %5118, %5015
  %5122 = fmul fast float %5119, %5015
  %5123 = fmul fast float %5120, %5015
  %5124 = fadd fast float %5121, %4723
  %5125 = fadd fast float %5122, %4724
  %5126 = fadd fast float %5123, %4725
  %5127 = fadd fast float %5106, %4659
  %5128 = fadd fast float %5107, %4660
  %5129 = fadd fast float %5108, %4661
  %5130 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5128, float %5129, float %5127, float %5128, float %5129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = call float @dx.op.unary.f32(i32 25, float %5130)  ; Rsqrt(value)
  %5132 = fmul fast float %5127, %5131
  %5133 = fmul fast float %5128, %5131
  %5134 = fmul fast float %5129, %5131
  %5135 = fsub fast float %5132, %4659
  %5136 = fsub fast float %5133, %4660
  %5137 = fsub fast float %5134, %4661
  %5138 = fmul fast float %5135, %5015
  %5139 = fmul fast float %5136, %5015
  %5140 = fmul fast float %5137, %5015
  %5141 = fadd fast float %5138, %4659
  %5142 = fadd fast float %5139, %4660
  %5143 = fadd fast float %5140, %4661
  %5144 = call float @dx.op.binary.f32(i32 36, float %4677, float %5063)  ; FMin(a,b)
  %5145 = fsub fast float %5144, %4677
  %5146 = fmul fast float %5145, %5015
  %5147 = fadd fast float %5146, %4677
  %5148 = fsub fast float %5076, %4726
  %5149 = fmul fast float %5148, %5015
  %5150 = fadd fast float %5149, %4726
  br label %5151

; <label>:5151                                    ; preds = %5013, %4975, %4877
  %5152 = phi float [ %5124, %5013 ], [ %4723, %4975 ], [ %4723, %4877 ]
  %5153 = phi float [ %5125, %5013 ], [ %4724, %4975 ], [ %4724, %4877 ]
  %5154 = phi float [ %5126, %5013 ], [ %4725, %4975 ], [ %4725, %4877 ]
  %5155 = phi float [ %5115, %5013 ], [ %4763, %4975 ], [ %4763, %4877 ]
  %5156 = phi float [ %5116, %5013 ], [ %4764, %4975 ], [ %4764, %4877 ]
  %5157 = phi float [ %5117, %5013 ], [ %4765, %4975 ], [ %4765, %4877 ]
  %5158 = phi float [ %5141, %5013 ], [ %4659, %4975 ], [ %4659, %4877 ]
  %5159 = phi float [ %5142, %5013 ], [ %4660, %4975 ], [ %4660, %4877 ]
  %5160 = phi float [ %5143, %5013 ], [ %4661, %4975 ], [ %4661, %4877 ]
  %5161 = phi float [ %5150, %5013 ], [ %4726, %4975 ], [ %4726, %4877 ]
  %5162 = phi float [ %5147, %5013 ], [ %4677, %4975 ], [ %4677, %4877 ]
  br i1 %4875, label %5163, label %5452

; <label>:5163                                    ; preds = %5151
  %5164 = call float @dx.op.unary.f32(i32 23, float %5162)  ; Log(value)
  %5165 = fmul fast float %5164, 4.000000e+00
  %5166 = call float @dx.op.unary.f32(i32 21, float %5165)  ; Exp(value)
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = fmul fast float %5168, %44
  %5170 = fmul fast float %5168, %45
  %5171 = fmul fast float %5168, %46
  %5172 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %5173 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %5174 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5175 = call float @dx.op.unary.f32(i32 23, float %5172)  ; Log(value)
  %5176 = call float @dx.op.unary.f32(i32 23, float %5173)  ; Log(value)
  %5177 = call float @dx.op.unary.f32(i32 23, float %5174)  ; Log(value)
  %5178 = fmul fast float %5175, 4.000000e+00
  %5179 = fmul fast float %5176, 4.000000e+00
  %5180 = fmul fast float %5177, 4.000000e+00
  %5181 = call float @dx.op.unary.f32(i32 21, float %5178)  ; Exp(value)
  %5182 = call float @dx.op.unary.f32(i32 21, float %5179)  ; Exp(value)
  %5183 = call float @dx.op.unary.f32(i32 21, float %5180)  ; Exp(value)
  %5184 = fadd fast float %5182, %5181
  %5185 = fadd fast float %5184, %5183
  %5186 = fdiv fast float 1.000000e+00, %5185
  %5187 = fmul fast float %5186, %5181
  %5188 = fcmp fast ogt float %53, 0.000000e+00
  %5189 = fcmp fast ogt float %54, 0.000000e+00
  %5190 = fcmp fast ogt float %55, 0.000000e+00
  %5191 = fcmp fast olt float %53, 0.000000e+00
  %5192 = fcmp fast olt float %54, 0.000000e+00
  %5193 = fcmp fast olt float %55, 0.000000e+00
  %5194 = zext i1 %5188 to i32
  %5195 = zext i1 %5189 to i32
  %5196 = zext i1 %5190 to i32
  %5197 = zext i1 %5191 to i32
  %5198 = zext i1 %5192 to i32
  %5199 = zext i1 %5193 to i32
  %5200 = sub nsw i32 %5194, %5197
  %5201 = sub nsw i32 %5195, %5198
  %5202 = sub nsw i32 %5196, %5199
  %5203 = call float @dx.op.unary.f32(i32 83, float %5169)  ; DerivCoarseX(value)
  %5204 = call float @dx.op.unary.f32(i32 83, float %5170)  ; DerivCoarseX(value)
  %5205 = call float @dx.op.unary.f32(i32 83, float %5171)  ; DerivCoarseX(value)
  %5206 = call float @dx.op.unary.f32(i32 84, float %5169)  ; DerivCoarseY(value)
  %5207 = call float @dx.op.unary.f32(i32 84, float %5170)  ; DerivCoarseY(value)
  %5208 = call float @dx.op.unary.f32(i32 84, float %5171)  ; DerivCoarseY(value)
  %5209 = fcmp fast ole float %280, %5187
  %5210 = fmul fast float %5186, %5184
  %5211 = fcmp fast ole float %280, %5210
  %5212 = select i1 %5211, float %5171, float %5169
  %5213 = select i1 %5211, float %5169, float %5170
  %5214 = select i1 %5209, float %5170, float %5212
  %5215 = select i1 %5209, float %5171, float %5213
  %5216 = select i1 %5211, float %5205, float %5203
  %5217 = select i1 %5211, float %5203, float %5204
  %5218 = select i1 %5209, float %5204, float %5216
  %5219 = select i1 %5209, float %5205, float %5217
  %5220 = select i1 %5211, float %5208, float %5206
  %5221 = select i1 %5211, float %5206, float %5207
  %5222 = select i1 %5209, float %5207, float %5220
  %5223 = select i1 %5209, float %5208, float %5221
  %5224 = call float @dx.op.unary.f32(i32 27, float %5214)  ; Round_ni(value)
  %5225 = call float @dx.op.unary.f32(i32 27, float %5215)  ; Round_ni(value)
  %5226 = fptosi float %5224 to i32
  %5227 = fptosi float %5225 to i32
  %5228 = xor i32 %5227, %5226
  %5229 = sitofp i32 %5228 to float
  %5230 = fptosi float %5229 to i32
  %5231 = sitofp i32 %5230 to float
  %5232 = fmul fast float %5231, 0x3FE3C6EF40000000
  %5233 = frem fast float %5224, 2.560000e+02
  %5234 = frem fast float %5225, 2.560000e+02
  %5235 = fptoui float %5233 to i32
  %5236 = fptoui float %5234 to i32
  %5237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5235, i32 %5236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = fadd fast float %5238, %5232
  %5242 = fadd fast float %5239, %5232
  %5243 = fadd fast float %5240, %5232
  %5244 = call float @dx.op.unary.f32(i32 22, float %5241)  ; Frc(value)
  %5245 = call float @dx.op.unary.f32(i32 22, float %5242)  ; Frc(value)
  %5246 = call float @dx.op.unary.f32(i32 22, float %5243)  ; Frc(value)
  %5247 = fmul fast float %5246, 0x401921FB60000000
  %5248 = call float @dx.op.unary.f32(i32 13, float %5247)  ; Sin(value)
  %5249 = call float @dx.op.unary.f32(i32 12, float %5247)  ; Cos(value)
  %5250 = fsub fast float -0.000000e+00, %5249
  %5251 = fmul fast float %5249, %5214
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5215, float %5251)  ; FMad(a,b,c)
  %5253 = fmul fast float %5248, %5214
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5250, float %5215, float %5253)  ; FMad(a,b,c)
  %5255 = fadd fast float %5252, %5244
  %5256 = fadd fast float %5254, %5245
  %5257 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5258 = bitcast float %5257 to i32
  %5259 = icmp eq i32 %5258, 0
  br i1 %5259, label %5298, label %5260

; <label>:5260                                    ; preds = %5163
  %5261 = add i32 %5258, 0
  %5262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5262, %dx.types.Handle %94, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float %5218, float %5219, float undef, float %5222, float %5223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5267 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5268 = fsub fast float 1.000000e+00, %4873
  %5269 = call float @dx.op.binary.f32(i32 35, float %5268, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5270 = bitcast float %4873 to i32
  %5271 = sitofp i32 %5270 to float
  %5272 = fadd fast float %5271, 0xC1CFBF8940000000
  %5273 = fmul fast float %5267, %5272
  %5274 = fadd fast float %5273, 0x41CFBF8940000000
  %5275 = fptosi float %5274 to i32
  %5276 = bitcast i32 %5275 to float
  %5277 = bitcast float %5269 to i32
  %5278 = sitofp i32 %5277 to float
  %5279 = fadd fast float %5278, 0xC1CFBF8940000000
  %5280 = fmul fast float %5279, %5267
  %5281 = fadd fast float %5280, 0x41CFBF8940000000
  %5282 = fptosi float %5281 to i32
  %5283 = bitcast i32 %5282 to float
  %5284 = fmul fast float %5276, %5266
  %5285 = fmul fast float %5283, %5266
  %5286 = fsub fast float %5269, %5284
  %5287 = fadd fast float %5285, %5269
  %5288 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5290 = fsub fast float %5264, %5288
  %5291 = fsub fast float %5289, %5288
  %5292 = bitcast float %5291 to i32
  %5293 = sub nsw i32 2129859010, %5292
  %5294 = bitcast i32 %5293 to float
  %5295 = fmul fast float %5294, %5290
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fcmp fast olt float %5296, 0x3F70101020000000
  br i1 %5297, label %5452, label %5298

; <label>:5298                                    ; preds = %5260, %5163
  %5299 = phi float [ %5296, %5260 ], [ %4873, %5163 ]
  %5300 = fmul fast float %5299, %5166
  %5301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.i32 %5301, 1
  %5303 = extractvalue %dx.types.CBufRet.i32 %5301, 0
  %5304 = add i32 %5303, 0
  %5305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5305, %dx.types.Handle %93, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float %5218, float %5219, float undef, float %5222, float %5223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5310 = extractvalue %dx.types.ResRet.f32 %5306, 3
  %5311 = and i32 %5302, 255
  %5312 = uitofp i32 %5311 to float
  %5313 = lshr i32 %5302, 8
  %5314 = and i32 %5313, 255
  %5315 = uitofp i32 %5314 to float
  %5316 = fmul fast float %5310, %5312
  %5317 = fadd fast float %5316, %5315
  %5318 = fmul fast float %5317, 0x3F70101000000000
  %5319 = fadd fast float %5318, 0xBFB99999A0000000
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, 0x3FF1C71C80000000
  %5322 = call float @dx.op.binary.f32(i32 36, float %5318, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5323 = fsub fast float 1.000000e+00, %5321
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, %5307
  %5326 = fmul fast float %5324, %5308
  %5327 = fmul fast float %5324, %5309
  %5328 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5329 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5331 = fmul fast float %5321, %5307
  %5332 = fmul fast float %5321, %5308
  %5333 = fmul fast float %5321, %5309
  %5334 = fadd fast float %5331, %5322
  %5335 = fadd fast float %5332, %5322
  %5336 = fadd fast float %5333, %5322
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.i32 %5340, 3
  %5342 = extractvalue %dx.types.CBufRet.i32 %5340, 2
  %5343 = add i32 %5342, 0
  %5344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5344, %dx.types.Handle %93, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float %5218, float %5219, float undef, float %5222, float %5223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = extractvalue %dx.types.ResRet.f32 %5345, 3
  %5350 = and i32 %5341, 255
  %5351 = uitofp i32 %5350 to float
  %5352 = lshr i32 %5341, 8
  %5353 = and i32 %5352, 255
  %5354 = uitofp i32 %5353 to float
  %5355 = lshr i32 %5341, 16
  %5356 = and i32 %5355, 255
  %5357 = uitofp i32 %5356 to float
  %5358 = fmul fast float %5357, 0x3F70101000000000
  %5359 = fmul fast float %5346, %5351
  %5360 = fadd fast float %5359, %5354
  %5361 = fmul fast float %5360, 0x3F70101000000000
  %5362 = fadd fast float %5347, -5.000000e-01
  %5363 = fadd fast float %5349, -5.000000e-01
  %5364 = fmul fast float %5362, %5358
  %5365 = fmul fast float %5363, %5358
  %5366 = fadd fast float %5364, 5.000000e-01
  %5367 = fadd fast float %5365, 5.000000e-01
  %5368 = fmul fast float %5366, 2.000000e+00
  %5369 = fadd fast float %5368, -1.000000e+00
  %5370 = fmul fast float %5367, 2.000000e+00
  %5371 = fadd fast float %5370, -1.000000e+00
  %5372 = fadd fast float %5369, %5371
  %5373 = fmul fast float %5372, 5.000000e-01
  %5374 = fsub fast float %5369, %5371
  %5375 = fmul fast float %5374, 5.000000e-01
  %5376 = call float @dx.op.unary.f32(i32 6, float %5373)  ; FAbs(value)
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5379 = fsub fast float %5377, %5378
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5373, float %5375, float %5379, float %5373, float %5375, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 25, float %5380)  ; Rsqrt(value)
  %5382 = fmul fast float %5373, %5381
  %5383 = fmul fast float %5375, %5381
  %5384 = select i1 %5211, i32 %5201, i32 %5202
  %5385 = select i1 %5209, i32 %5200, i32 %5384
  %5386 = sitofp i32 %5385 to float
  %5387 = fmul fast float %5379, %5386
  %5388 = fmul fast float %5387, %5381
  %5389 = select i1 %5211, float %5388, float %5383
  %5390 = select i1 %5211, float %5383, float %5388
  %5391 = select i1 %5209, float %5388, float %5382
  %5392 = select i1 %5209, float %5383, float %5389
  %5393 = select i1 %5209, float %5382, float %5390
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = fptoui float %5395 to i32
  %5397 = add i32 %5396, 0
  %5398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5399 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5398, %dx.types.Handle %93, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float %5218, float %5219, float undef, float %5222, float %5223, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = fsub fast float %5328, %5155
  %5402 = fsub fast float %5329, %5156
  %5403 = fsub fast float %5330, %5157
  %5404 = fmul fast float %5401, %5300
  %5405 = fmul fast float %5402, %5300
  %5406 = fmul fast float %5403, %5300
  %5407 = fadd fast float %5404, %5155
  %5408 = fadd fast float %5405, %5156
  %5409 = fadd fast float %5406, %5157
  %5410 = fsub fast float %5337, %5152
  %5411 = fsub fast float %5338, %5153
  %5412 = fsub fast float %5339, %5154
  %5413 = fmul fast float %5410, %5300
  %5414 = fmul fast float %5411, %5300
  %5415 = fmul fast float %5412, %5300
  %5416 = fadd fast float %5413, %5152
  %5417 = fadd fast float %5414, %5153
  %5418 = fadd fast float %5415, %5154
  %5419 = fadd fast float %5391, %5158
  %5420 = fadd fast float %5392, %5159
  %5421 = fadd fast float %5393, %5160
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = call float @dx.op.unary.f32(i32 25, float %5422)  ; Rsqrt(value)
  %5424 = fmul fast float %5423, %5419
  %5425 = fmul fast float %5423, %5420
  %5426 = fmul fast float %5423, %5421
  %5427 = fsub fast float %5424, %5158
  %5428 = fsub fast float %5425, %5159
  %5429 = fsub fast float %5426, %5160
  %5430 = fmul fast float %5427, %5300
  %5431 = fmul fast float %5428, %5300
  %5432 = fmul fast float %5429, %5300
  %5433 = fadd fast float %5430, %5158
  %5434 = fadd fast float %5431, %5159
  %5435 = fadd fast float %5432, %5160
  %5436 = call float @dx.op.binary.f32(i32 36, float %5162, float %5348)  ; FMin(a,b)
  %5437 = fsub fast float %5436, %5162
  %5438 = fmul fast float %5437, %5300
  %5439 = fadd fast float %5438, %5162
  %5440 = fsub fast float %5361, %5161
  %5441 = fmul fast float %5440, %5300
  %5442 = fadd fast float %5441, %5161
  %5443 = fsub fast float %5400, %4767
  %5444 = fsub fast float %5400, %4768
  %5445 = fsub fast float %5400, %4769
  %5446 = fmul fast float %5443, %5300
  %5447 = fmul fast float %5444, %5300
  %5448 = fmul fast float %5445, %5300
  %5449 = fadd fast float %5446, %4767
  %5450 = fadd fast float %5447, %4768
  %5451 = fadd fast float %5448, %4769
  br label %5452

; <label>:5452                                    ; preds = %5298, %5260, %5151, %4867
  %5453 = phi float [ %5416, %5298 ], [ %5152, %5260 ], [ %5152, %5151 ], [ %4723, %4867 ]
  %5454 = phi float [ %5417, %5298 ], [ %5153, %5260 ], [ %5153, %5151 ], [ %4724, %4867 ]
  %5455 = phi float [ %5418, %5298 ], [ %5154, %5260 ], [ %5154, %5151 ], [ %4725, %4867 ]
  %5456 = phi float [ %5407, %5298 ], [ %5155, %5260 ], [ %5155, %5151 ], [ %4763, %4867 ]
  %5457 = phi float [ %5408, %5298 ], [ %5156, %5260 ], [ %5156, %5151 ], [ %4764, %4867 ]
  %5458 = phi float [ %5409, %5298 ], [ %5157, %5260 ], [ %5157, %5151 ], [ %4765, %4867 ]
  %5459 = phi float [ %5433, %5298 ], [ %5158, %5260 ], [ %5158, %5151 ], [ %4659, %4867 ]
  %5460 = phi float [ %5434, %5298 ], [ %5159, %5260 ], [ %5159, %5151 ], [ %4660, %4867 ]
  %5461 = phi float [ %5435, %5298 ], [ %5160, %5260 ], [ %5160, %5151 ], [ %4661, %4867 ]
  %5462 = phi float [ %5449, %5298 ], [ %4767, %5260 ], [ %4767, %5151 ], [ %4767, %4867 ]
  %5463 = phi float [ %5450, %5298 ], [ %4768, %5260 ], [ %4768, %5151 ], [ %4768, %4867 ]
  %5464 = phi float [ %5451, %5298 ], [ %4769, %5260 ], [ %4769, %5151 ], [ %4769, %4867 ]
  %5465 = phi float [ %5442, %5298 ], [ %5161, %5260 ], [ %5161, %5151 ], [ %4726, %4867 ]
  %5466 = phi float [ %5439, %5298 ], [ %5162, %5260 ], [ %5162, %5151 ], [ %4677, %4867 ]
  %5467 = fcmp fast une float %4871, 0.000000e+00
  %5468 = fsub fast float -0.000000e+00, %196
  %5469 = fsub fast float -0.000000e+00, %197
  %5470 = fsub fast float -0.000000e+00, %198
  br i1 %5467, label %5471, label %5632

; <label>:5471                                    ; preds = %5452
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fmul fast float %4871, 2.500000e+00
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fmul fast float %4871, 0x4013FFFFE0000000
  %5476 = fadd fast float %5475, 0xBFFFFFFFE0000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %4871, 0x4004000020000000
  %5479 = fadd fast float %5478, 0xBFF8000040000000
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %4705, 1.000000e+01
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, 2.000000e+00
  %5484 = fsub fast float 3.000000e+00, %5483
  %5485 = fmul fast float %5482, %5482
  %5486 = fmul fast float %5485, %5484
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = fsub fast float 0x3FE3333340000000, %5465
  %5489 = fmul fast float %5488, 0x400AAAAAA0000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5487, %5490
  %5492 = fmul fast float %5456, 0x3FEA2B8620000000
  %5493 = fmul fast float %5457, 0x3FEA2B8620000000
  %5494 = fmul fast float %5458, 0x3FEA2B8620000000
  %5495 = fadd fast float %5492, 0x3FC81DFBA0000000
  %5496 = fmul fast float %5495, %5456
  %5497 = fadd fast float %5496, 0x3F910E6020000000
  %5498 = fadd fast float %5493, 0x3FC81DFBA0000000
  %5499 = fmul fast float %5498, %5457
  %5500 = fadd fast float %5499, 0x3F910E6020000000
  %5501 = fadd fast float %5494, 0x3FC81DFBA0000000
  %5502 = fmul fast float %5501, %5458
  %5503 = fadd fast float %5502, 0x3F910E6020000000
  %5504 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5505 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5507 = fsub fast float %5504, %5456
  %5508 = fsub fast float %5505, %5457
  %5509 = fsub fast float %5506, %5458
  %5510 = fmul fast float %5507, %5474
  %5511 = fmul fast float %5510, %5491
  %5512 = fmul fast float %5508, %5474
  %5513 = fmul fast float %5512, %5491
  %5514 = fmul fast float %5509, %5474
  %5515 = fmul fast float %5514, %5491
  %5516 = fadd fast float %5511, %5456
  %5517 = fadd fast float %5513, %5457
  %5518 = fadd fast float %5515, %5458
  %5519 = fmul fast float %5466, %5466
  %5520 = fmul fast float %5519, %5519
  %5521 = fadd fast float %5477, 1.000000e+00
  %5522 = fsub fast float %5521, %5491
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fsub fast float 1.000000e+00, %5520
  %5527 = call float @dx.op.binary.f32(i32 36, float %5523, float %5526)  ; FMin(a,b)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5527, float %5528)  ; FMax(a,b)
  %5530 = fadd fast float %5525, 0xBFE4CCCCC0000000
  %5531 = fmul fast float %5530, 0x4006DB6DA0000000
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5532, 2.000000e+00
  %5534 = fsub fast float 3.000000e+00, %5533
  %5535 = bitcast float %5453 to i32
  %5536 = ashr i32 %5535, 1
  %5537 = add nsw i32 %5536, 532487669
  %5538 = bitcast i32 %5537 to float
  %5539 = fsub fast float 1.000000e+00, %5538
  %5540 = bitcast float %5539 to i32
  %5541 = sub nsw i32 2129859010, %5540
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5542, 2.000000e+00
  %5544 = bitcast float %5454 to i32
  %5545 = ashr i32 %5544, 1
  %5546 = add nsw i32 %5545, 532487669
  %5547 = bitcast i32 %5546 to float
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = bitcast float %5548 to i32
  %5550 = sub nsw i32 2129859010, %5549
  %5551 = bitcast i32 %5550 to float
  %5552 = fmul fast float %5551, 2.000000e+00
  %5553 = bitcast float %5455 to i32
  %5554 = ashr i32 %5553, 1
  %5555 = add nsw i32 %5554, 532487669
  %5556 = bitcast i32 %5555 to float
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = bitcast float %5557 to i32
  %5559 = sub nsw i32 2129859010, %5558
  %5560 = bitcast i32 %5559 to float
  %5561 = fmul fast float %5560, 2.000000e+00
  %5562 = fsub fast float 0x4002A9FBE0000000, %5543
  %5563 = fadd fast float %5543, 0x3FD54FDF00000000
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %5567, %5567
  %5569 = fsub fast float 0x4002A9FBE0000000, %5552
  %5570 = fadd fast float %5552, 0x3FD54FDF00000000
  %5571 = bitcast float %5570 to i32
  %5572 = sub nsw i32 2129859010, %5571
  %5573 = bitcast i32 %5572 to float
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %5574, %5574
  %5576 = fsub fast float 0x4002A9FBE0000000, %5561
  %5577 = fadd fast float %5561, 0x3FD54FDF00000000
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5581, %5581
  %5583 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5568)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5575)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5582)  ; FMax(a,b)
  %5586 = fsub fast float 1.000000e+00, %5472
  %5587 = fadd fast float %5586, %5487
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fsub fast float 1.000000e+00, %4852
  %5590 = fmul fast float %5529, %5589
  %5591 = fmul fast float %5532, %5532
  %5592 = fmul fast float %5591, %5590
  %5593 = fmul fast float %5592, %5534
  %5594 = fmul fast float %5589, 0xBFE99999A0000000
  %5595 = fmul fast float %5594, %5474
  %5596 = fmul fast float %5595, %5491
  %5597 = fadd fast float %5596, 1.000000e+00
  %5598 = fadd fast float %5465, -1.000000e+00
  %5599 = fmul fast float %5597, %5598
  %5600 = fadd fast float %5599, 1.000000e+00
  %5601 = fsub fast float %5583, %5453
  %5602 = fsub fast float %5584, %5454
  %5603 = fsub fast float %5585, %5455
  %5604 = fmul fast float %5593, %5601
  %5605 = fmul fast float %5593, %5602
  %5606 = fmul fast float %5593, %5603
  %5607 = fadd fast float %5604, %5453
  %5608 = fadd fast float %5605, %5454
  %5609 = fadd fast float %5606, %5455
  %5610 = fsub fast float %104, %5459
  %5611 = fsub fast float %105, %5460
  %5612 = fsub fast float %106, %5461
  %5613 = fmul fast float %5593, %5610
  %5614 = fmul fast float %5593, %5611
  %5615 = fmul fast float %5593, %5612
  %5616 = fadd fast float %5613, %5459
  %5617 = fadd fast float %5614, %5460
  %5618 = fadd fast float %5615, %5461
  %5619 = fmul fast float %5593, %5588
  %5620 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fmul fast float %5619, %5621
  %5623 = fadd fast float %5622, %5620
  %5624 = fsub fast float 1.000000e+00, %5466
  %5625 = fmul fast float %5593, %5624
  %5626 = fadd fast float %5625, %5466
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.unary.f32(i32 25, float %5627)  ; Rsqrt(value)
  %5629 = fmul fast float %5616, %5628
  %5630 = fmul fast float %5617, %5628
  %5631 = fmul fast float %5618, %5628
  br label %5632

; <label>:5632                                    ; preds = %5471, %5452
  %5633 = phi float [ %5607, %5471 ], [ %5453, %5452 ]
  %5634 = phi float [ %5608, %5471 ], [ %5454, %5452 ]
  %5635 = phi float [ %5609, %5471 ], [ %5455, %5452 ]
  %5636 = phi float [ %5516, %5471 ], [ %5456, %5452 ]
  %5637 = phi float [ %5517, %5471 ], [ %5457, %5452 ]
  %5638 = phi float [ %5518, %5471 ], [ %5458, %5452 ]
  %5639 = phi float [ %5629, %5471 ], [ %5459, %5452 ]
  %5640 = phi float [ %5630, %5471 ], [ %5460, %5452 ]
  %5641 = phi float [ %5631, %5471 ], [ %5461, %5452 ]
  %5642 = phi float [ %5623, %5471 ], [ %5465, %5452 ]
  %5643 = phi float [ %5626, %5471 ], [ %5466, %5452 ]
  %5644 = select i1 %269, float 0.000000e+00, float %5635
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fmul fast float %5647, 2.000000e+00
  %5649 = fmul fast float %5648, %5639
  %5650 = fmul fast float %5648, %5640
  %5651 = fmul fast float %5648, %5641
  %5652 = fsub fast float %196, %5649
  %5653 = fsub fast float %197, %5650
  %5654 = fsub fast float %198, %5651
  %5655 = call float @dx.op.binary.f32(i32 36, float %5643, float 1.000000e+00)  ; FMin(a,b)
  %5656 = fsub fast float 1.000000e+00, %5643
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5661 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fcmp fast oeq float %5661, 0.000000e+00
  %5663 = fcmp fast oeq float %5660, 0.000000e+00
  %5664 = or i1 %5663, %5662
  br i1 %5664, label %5694, label %5665

; <label>:5665                                    ; preds = %5632
  %5666 = fsub fast float -0.000000e+00, %71
  %5667 = fsub fast float -0.000000e+00, %69
  %5668 = call float @dx.op.unary.f32(i32 24, float %5661)  ; Sqrt(value)
  %5669 = fdiv fast float %5668, %5660
  %5670 = fcmp fast ogt float %5669, 0x3FFB6F8900000000
  %5671 = select i1 %5670, float 0x3FFB6F8900000000, float %5669
  %5672 = fmul fast float %5671, 0x3FE8A23460000000
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5671, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5675 = fmul fast float %5673, %5660
  %5676 = fmul fast float %5674, 0x3FF279A740000000
  %5677 = fadd fast float %5676, -1.000000e+00
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %70, float %5666, float %5667, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = call float @dx.op.unary.f32(i32 25, float %5678)  ; Rsqrt(value)
  %5680 = fmul fast float %5679, %5666
  %5681 = fmul fast float %5679, %5667
  %5682 = fmul fast float %5679, %70
  %5683 = fmul fast float %5677, %5677
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = fmul fast float %5674, 0x40005F8BE0000000
  %5686 = fsub fast float 0x400C5BF8A0000000, %5685
  %5687 = fdiv fast float %5675, %5686
  %5688 = fmul fast float %5687, 0x3FEE31C3C0000000
  %5689 = fmul fast float %5688, %5684
  %5690 = fmul fast float %5674, 0x3FDACB7480000000
  %5691 = fadd fast float %5690, 0xBFD7347680000000
  %5692 = fmul fast float %5691, %5687
  %5693 = fmul fast float %5692, %5684
  br label %5694

; <label>:5694                                    ; preds = %5665, %5632
  %5695 = phi float [ %5680, %5665 ], [ 0.000000e+00, %5632 ]
  %5696 = phi float [ %5681, %5665 ], [ 0.000000e+00, %5632 ]
  %5697 = phi float [ %5682, %5665 ], [ 0.000000e+00, %5632 ]
  %5698 = phi float [ %5689, %5665 ], [ 0.000000e+00, %5632 ]
  %5699 = phi float [ %5693, %5665 ], [ 0.000000e+00, %5632 ]
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = fmul fast float %5700, 0x3FDF454380000000
  %5702 = fmul fast float %5700, %5700
  %5703 = fmul fast float %5702, 0x3FEE471020000000
  %5704 = fadd fast float %5703, 0xBFD42F6020000000
  %5705 = fmul fast float %5660, 0x3FD20DD760000000
  %5706 = fmul fast float %5704, %5699
  %5707 = fadd fast float %5706, %5705
  %5708 = fmul fast float %5701, %5698
  %5709 = fadd fast float %5707, %5708
  %5710 = fsub fast float %5707, %5708
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float %5652, float %5653, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = fmul fast float %5711, 0x3FDF454380000000
  %5713 = fmul fast float %5711, %5711
  %5714 = fmul fast float %5713, 0x3FEE471020000000
  %5715 = fadd fast float %5714, 0xBFD42F6020000000
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5698, float %5699, float 0x3FD20DD760000000, float %5712, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5718 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fcmp fast oeq float %5718, 0.000000e+00
  %5720 = fcmp fast oeq float %5717, 0.000000e+00
  %5721 = or i1 %5720, %5719
  br i1 %5721, label %5751, label %5722

; <label>:5722                                    ; preds = %5694
  %5723 = fsub fast float -0.000000e+00, %67
  %5724 = fsub fast float -0.000000e+00, %65
  %5725 = call float @dx.op.unary.f32(i32 24, float %5718)  ; Sqrt(value)
  %5726 = fdiv fast float %5725, %5717
  %5727 = fcmp fast ogt float %5726, 0x3FFB6F8900000000
  %5728 = select i1 %5727, float 0x3FFB6F8900000000, float %5726
  %5729 = fmul fast float %5728, 0x3FE8A23460000000
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5728, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5732 = fmul fast float %5730, %5717
  %5733 = fmul fast float %5731, 0x3FF279A740000000
  %5734 = fadd fast float %5733, -1.000000e+00
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %66, float %5723, float %5724, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = call float @dx.op.unary.f32(i32 25, float %5735)  ; Rsqrt(value)
  %5737 = fmul fast float %5736, %5723
  %5738 = fmul fast float %5736, %5724
  %5739 = fmul fast float %5736, %66
  %5740 = fmul fast float %5734, %5734
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5731, 0x40005F8BE0000000
  %5743 = fsub fast float 0x400C5BF8A0000000, %5742
  %5744 = fdiv fast float %5732, %5743
  %5745 = fmul fast float %5744, 0x3FEE31C3C0000000
  %5746 = fmul fast float %5745, %5741
  %5747 = fmul fast float %5731, 0x3FDACB7480000000
  %5748 = fadd fast float %5747, 0xBFD7347680000000
  %5749 = fmul fast float %5748, %5744
  %5750 = fmul fast float %5749, %5741
  br label %5751

; <label>:5751                                    ; preds = %5722, %5694
  %5752 = phi float [ %5737, %5722 ], [ 0.000000e+00, %5694 ]
  %5753 = phi float [ %5738, %5722 ], [ 0.000000e+00, %5694 ]
  %5754 = phi float [ %5739, %5722 ], [ 0.000000e+00, %5694 ]
  %5755 = phi float [ %5746, %5722 ], [ 0.000000e+00, %5694 ]
  %5756 = phi float [ %5750, %5722 ], [ 0.000000e+00, %5694 ]
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = fmul fast float %5757, 0x3FDF454380000000
  %5759 = fmul fast float %5757, %5757
  %5760 = fmul fast float %5759, 0x3FEE471020000000
  %5761 = fadd fast float %5760, 0xBFD42F6020000000
  %5762 = fmul fast float %5717, 0x3FD20DD760000000
  %5763 = fmul fast float %5761, %5756
  %5764 = fadd fast float %5763, %5762
  %5765 = fmul fast float %5758, %5755
  %5766 = fadd fast float %5764, %5765
  %5767 = fsub fast float %5764, %5765
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5652, float %5653, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fmul fast float %5768, 0x3FDF454380000000
  %5770 = fmul fast float %5768, %5768
  %5771 = fmul fast float %5770, 0x3FEE471020000000
  %5772 = fadd fast float %5771, 0xBFD42F6020000000
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5755, float %5756, float 0x3FD20DD760000000, float %5769, float %5772)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5775 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = fcmp fast oeq float %5775, 0.000000e+00
  %5777 = fcmp fast oeq float %5774, 0.000000e+00
  %5778 = or i1 %5777, %5776
  br i1 %5778, label %5808, label %5779

; <label>:5779                                    ; preds = %5751
  %5780 = fsub fast float -0.000000e+00, %63
  %5781 = fsub fast float -0.000000e+00, %61
  %5782 = call float @dx.op.unary.f32(i32 24, float %5775)  ; Sqrt(value)
  %5783 = fdiv fast float %5782, %5774
  %5784 = fcmp fast ogt float %5783, 0x3FFB6F8900000000
  %5785 = select i1 %5784, float 0x3FFB6F8900000000, float %5783
  %5786 = fmul fast float %5785, 0x3FE8A23460000000
  %5787 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5788 = call float @dx.op.binary.f32(i32 35, float %5785, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5789 = fmul fast float %5787, %5774
  %5790 = fmul fast float %5788, 0x3FF279A740000000
  %5791 = fadd fast float %5790, -1.000000e+00
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %62, float %5780, float %5781, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = call float @dx.op.unary.f32(i32 25, float %5792)  ; Rsqrt(value)
  %5794 = fmul fast float %5793, %5780
  %5795 = fmul fast float %5793, %5781
  %5796 = fmul fast float %5793, %62
  %5797 = fmul fast float %5791, %5791
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = fmul fast float %5788, 0x40005F8BE0000000
  %5800 = fsub fast float 0x400C5BF8A0000000, %5799
  %5801 = fdiv fast float %5789, %5800
  %5802 = fmul fast float %5801, 0x3FEE31C3C0000000
  %5803 = fmul fast float %5802, %5798
  %5804 = fmul fast float %5788, 0x3FDACB7480000000
  %5805 = fadd fast float %5804, 0xBFD7347680000000
  %5806 = fmul fast float %5805, %5801
  %5807 = fmul fast float %5806, %5798
  br label %5808

; <label>:5808                                    ; preds = %5779, %5751
  %5809 = phi float [ %5794, %5779 ], [ 0.000000e+00, %5751 ]
  %5810 = phi float [ %5795, %5779 ], [ 0.000000e+00, %5751 ]
  %5811 = phi float [ %5796, %5779 ], [ 0.000000e+00, %5751 ]
  %5812 = phi float [ %5803, %5779 ], [ 0.000000e+00, %5751 ]
  %5813 = phi float [ %5807, %5779 ], [ 0.000000e+00, %5751 ]
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5810, float %5811, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = fmul fast float %5814, 0x3FDF454380000000
  %5816 = fmul fast float %5814, %5814
  %5817 = fmul fast float %5816, 0x3FEE471020000000
  %5818 = fadd fast float %5817, 0xBFD42F6020000000
  %5819 = fmul fast float %5774, 0x3FD20DD760000000
  %5820 = fmul fast float %5818, %5813
  %5821 = fadd fast float %5820, %5819
  %5822 = fmul fast float %5815, %5812
  %5823 = fadd fast float %5821, %5822
  %5824 = fsub fast float %5821, %5822
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5810, float %5811, float %5652, float %5653, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fmul fast float %5825, 0x3FDF454380000000
  %5827 = fmul fast float %5825, %5825
  %5828 = fmul fast float %5827, 0x3FEE471020000000
  %5829 = fadd fast float %5828, 0xBFD42F6020000000
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5774, float %5812, float %5813, float 0x3FD20DD760000000, float %5826, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5709, float 0.000000e+00)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5766, float 0.000000e+00)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5823, float 0.000000e+00)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5710, float 0.000000e+00)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5767, float 0.000000e+00)  ; FMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 35, float %5824, float 0.000000e+00)  ; FMax(a,b)
  %5837 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = call float @dx.op.binary.f32(i32 36, float %5636, float %5841)  ; FMin(a,b)
  %5843 = fsub fast float 1.000000e+00, %5655
  %5844 = fmul fast float %5842, %5843
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = bitcast float %5845 to i32
  %5847 = sub nsw i32 2129859010, %5846
  %5848 = bitcast i32 %5847 to float
  %5849 = call float @dx.op.binary.f32(i32 36, float %5637, float %5841)  ; FMin(a,b)
  %5850 = fmul fast float %5849, %5843
  %5851 = fsub fast float 1.000000e+00, %5850
  %5852 = bitcast float %5851 to i32
  %5853 = sub nsw i32 2129859010, %5852
  %5854 = bitcast i32 %5853 to float
  %5855 = call float @dx.op.binary.f32(i32 36, float %5638, float %5841)  ; FMin(a,b)
  %5856 = fmul fast float %5855, %5843
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = bitcast float %5857 to i32
  %5859 = sub nsw i32 2129859010, %5858
  %5860 = bitcast i32 %5859 to float
  %5861 = fmul fast float %5831, %5655
  %5862 = fmul fast float %5861, %5848
  %5863 = fmul fast float %5832, %5655
  %5864 = fmul fast float %5863, %5854
  %5865 = fmul fast float %5833, %5655
  %5866 = fmul fast float %5865, %5860
  %5867 = call float @dx.op.binary.f32(i32 36, float %5633, float %5841)  ; FMin(a,b)
  %5868 = fmul fast float %5867, %5843
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = bitcast float %5869 to i32
  %5871 = sub nsw i32 2129859010, %5870
  %5872 = bitcast i32 %5871 to float
  %5873 = call float @dx.op.binary.f32(i32 36, float %5634, float %5841)  ; FMin(a,b)
  %5874 = fmul fast float %5873, %5843
  %5875 = fsub fast float 1.000000e+00, %5874
  %5876 = bitcast float %5875 to i32
  %5877 = sub nsw i32 2129859010, %5876
  %5878 = bitcast i32 %5877 to float
  %5879 = call float @dx.op.binary.f32(i32 36, float %5644, float %5841)  ; FMin(a,b)
  %5880 = fmul fast float %5879, %5843
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = bitcast float %5881 to i32
  %5883 = sub nsw i32 2129859010, %5882
  %5884 = bitcast i32 %5883 to float
  %5885 = fmul fast float %5837, %5655
  %5886 = fmul fast float %5885, %5872
  %5887 = fmul fast float %5838, %5655
  %5888 = fmul fast float %5887, %5878
  %5889 = fmul fast float %5839, %5655
  %5890 = fmul fast float %5889, %5884
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5864, float %5866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = select i1 %269, float 0.000000e+00, float %5862
  %5893 = select i1 %269, float %5891, float %5864
  %5894 = select i1 %269, float 0.000000e+00, float %5866
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = select i1 %269, float 0.000000e+00, float %5834
  %5897 = select i1 %269, float %5895, float %5835
  %5898 = select i1 %269, float 0.000000e+00, float %5836
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5888, float %5890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = select i1 %269, float 0.000000e+00, float %5886
  %5901 = select i1 %269, float %5899, float %5888
  %5902 = select i1 %269, float 0.000000e+00, float %5890
  %5903 = fmul fast float %4010, %4010
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = fmul fast float %5646, 9.843750e-01
  %5906 = fmul fast float %5642, 9.843750e-01
  %5907 = fadd fast float %5905, 7.812500e-03
  %5908 = fadd fast float %5906, 7.812500e-03
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5907, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.ResRet.f32 %5909, 3
  %5914 = fsub fast float 1.000000e+00, %5904
  %5915 = fsub fast float %5912, %5910
  %5916 = fsub fast float %5913, %5911
  %5917 = fmul fast float %5915, %5914
  %5918 = fmul fast float %5916, %5914
  %5919 = fadd fast float %5917, %5910
  %5920 = fadd fast float %5918, %5911
  %5921 = fmul fast float %5919, %5633
  %5922 = fmul fast float %5919, %5634
  %5923 = fmul fast float %5919, %5644
  %5924 = fadd fast float %5921, %5920
  %5925 = fadd fast float %5922, %5920
  %5926 = fadd fast float %5923, %5920
  %5927 = fcmp fast ogt float %4678, 0.000000e+00
  br i1 %5927, label %5928, label %5954

; <label>:5928                                    ; preds = %5808
  %5929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4678, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.ResRet.f32 %5929, 1
  %5932 = extractvalue %dx.types.ResRet.f32 %5929, 2
  %5933 = fadd fast float %5930, -5.000000e-01
  %5934 = fadd fast float %5931, -5.000000e-01
  %5935 = fadd fast float %5932, -5.000000e-01
  %5936 = fsub fast float 1.000000e+00, %5633
  %5937 = fsub fast float 1.000000e+00, %5634
  %5938 = fsub fast float 1.000000e+00, %5644
  %5939 = fmul fast float %5633, 4.000000e+00
  %5940 = fmul fast float %5939, %5936
  %5941 = fmul fast float %5940, %5933
  %5942 = fmul fast float %5634, 4.000000e+00
  %5943 = fmul fast float %5942, %5937
  %5944 = fmul fast float %5943, %5934
  %5945 = fmul fast float %5644, 4.000000e+00
  %5946 = fmul fast float %5945, %5938
  %5947 = fmul fast float %5946, %5935
  %5948 = fadd fast float %5941, %5924
  %5949 = fadd fast float %5944, %5925
  %5950 = fadd fast float %5947, %5926
  %5951 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5952 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5953 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  br label %5954

; <label>:5954                                    ; preds = %5928, %5808
  %5955 = phi float [ %5951, %5928 ], [ %5924, %5808 ]
  %5956 = phi float [ %5952, %5928 ], [ %5925, %5808 ]
  %5957 = phi float [ %5953, %5928 ], [ %5926, %5808 ]
  %5958 = call float @dx.op.binary.f32(i32 35, float %5956, float %5957)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5955, float %5958)  ; FMax(a,b)
  %5960 = fsub fast float 1.000000e+00, %5959
  %5961 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = fcmp fast ogt float %5961, 0x3E7FF19E20000000
  %5963 = fdiv fast float 1.000000e+00, %5961
  %5964 = select i1 %5962, float %5963, float 0.000000e+00
  %5965 = fmul fast float %5964, %5636
  %5966 = fmul fast float %5964, %5637
  %5967 = fmul fast float %5964, %5638
  %5968 = fadd fast float %5965, -1.000000e+00
  %5969 = fadd fast float %5966, -1.000000e+00
  %5970 = fadd fast float %5967, -1.000000e+00
  %5971 = fmul fast float %5968, 5.000000e-01
  %5972 = fmul fast float %5969, 5.000000e-01
  %5973 = fmul fast float %5970, 5.000000e-01
  %5974 = fadd fast float %5971, 1.000000e+00
  %5975 = fadd fast float %5972, 1.000000e+00
  %5976 = fadd fast float %5973, 1.000000e+00
  %5977 = call float @dx.op.binary.f32(i32 35, float %5646, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5978 = fdiv fast float %4010, %5977
  %5979 = fcmp fast olt float %4749, 1.270000e+02
  %5980 = fcmp fast olt float %4750, 1.270000e+02
  %5981 = fcmp fast olt float %4751, 1.270000e+02
  %5982 = fmul fast float %4749, 0xBFF7154760000000
  %5983 = fmul fast float %5982, %5978
  %5984 = fmul fast float %4750, 0xBFF7154760000000
  %5985 = fmul fast float %5984, %5978
  %5986 = fmul fast float %4751, 0xBFF7154760000000
  %5987 = fmul fast float %5986, %5978
  %5988 = call float @dx.op.unary.f32(i32 21, float %5983)  ; Exp(value)
  %5989 = call float @dx.op.unary.f32(i32 21, float %5985)  ; Exp(value)
  %5990 = call float @dx.op.unary.f32(i32 21, float %5987)  ; Exp(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5993 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5994 = select i1 %5979, float %5991, float 0.000000e+00
  %5995 = select i1 %5980, float %5992, float 0.000000e+00
  %5996 = select i1 %5981, float %5993, float 0.000000e+00
  %5997 = fmul fast float %5994, %5960
  %5998 = fmul fast float %5995, %5960
  %5999 = fmul fast float %5996, %5960
  %6000 = fadd fast float %5997, -1.000000e+00
  %6001 = fadd fast float %5998, -1.000000e+00
  %6002 = fadd fast float %5999, -1.000000e+00
  %6003 = fmul fast float %6000, %4704
  %6004 = fmul fast float %6001, %4704
  %6005 = fmul fast float %6002, %4704
  %6006 = fmul fast float %5955, %5900
  %6007 = fmul fast float %5956, %5901
  %6008 = fmul fast float %5957, %5902
  %6009 = fsub fast float 1.000000e+00, %5646
  %6010 = bitcast float %6009 to i32
  %6011 = sitofp i32 %6010 to float
  %6012 = fmul fast float %6011, 5.000000e+00
  %6013 = fadd fast float %6012, 0xC1EFBF8940000000
  %6014 = fptosi float %6013 to i32
  %6015 = bitcast i32 %6014 to float
  %6016 = fmul fast float %6015, %4679
  %6017 = fmul fast float %5892, %6016
  %6018 = fmul fast float %6017, %5960
  %6019 = fmul fast float %6018, %5974
  %6020 = fmul fast float %5893, %6016
  %6021 = fmul fast float %6020, %5960
  %6022 = fmul fast float %6021, %5975
  %6023 = fmul fast float %5894, %6016
  %6024 = fmul fast float %6023, %5960
  %6025 = fmul fast float %6024, %5976
  %6026 = fadd fast float %6006, %4665
  %6027 = fadd fast float %6026, %6019
  %6028 = fmul fast float %6027, %4704
  %6029 = fadd fast float %6007, %4666
  %6030 = fadd fast float %6029, %6022
  %6031 = fmul fast float %6030, %4704
  %6032 = fadd fast float %6008, %4667
  %6033 = fadd fast float %6032, %6025
  %6034 = fmul fast float %6033, %4704
  %6035 = fmul fast float %5634, 0x4012D0A400000000
  %6036 = fadd fast float %6005, 1.000000e+00
  %6037 = fadd fast float %6004, 1.000000e+00
  %6038 = fadd fast float %6003, 1.000000e+00
  %6039 = fmul fast float %5960, %5894
  %6040 = fmul fast float %5960, %5893
  %6041 = fmul fast float %5960, %5892
  %6042 = fsub fast float 1.000000e+00, %5642
  %6043 = fmul fast float %6042, %4704
  %6044 = fsub fast float 1.000000e+00, %6043
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = fadd fast float %6035, 0x3FDB6377A0000000
  %6048 = fmul fast float %6046, %6047
  %6049 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = fadd fast float %6048, %6049
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6052 = call float @dx.op.binary.f32(i32 35, float %6051, float 0x3F847AE140000000)  ; FMax(a,b)
  %6053 = fmul fast float %6052, %6052
  %6054 = fmul fast float %6053, %6053
  %6055 = fmul fast float %6054, 0xC00A935000000000
  %6056 = call float @dx.op.unary.f32(i32 21, float %6055)  ; Exp(value)
  %6057 = fsub fast float 1.000000e+00, %6056
  %6058 = fmul fast float %6038, %5896
  %6059 = fmul fast float %6058, %6057
  %6060 = fmul fast float %6037, %5897
  %6061 = fmul fast float %6060, %6057
  %6062 = fmul fast float %6036, %5898
  %6063 = fmul fast float %6062, %6057
  %6064 = fadd fast float %6059, %6041
  %6065 = fmul fast float %6064, %4704
  %6066 = fadd fast float %6061, %6040
  %6067 = fmul fast float %6066, %4704
  %6068 = fadd fast float %6063, %6039
  %6069 = fmul fast float %6068, %4704
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6072 = fcmp fast oeq float %6071, 0.000000e+00
  br i1 %6072, label %7217, label %6073

; <label>:6073                                    ; preds = %5954
  %6074 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6075 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6076 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6084 = call float @dx.op.dot3.f32(i32 55, float %6078, float %6079, float %6080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = select i1 %269, float %6082, float %6078
  %6086 = select i1 %269, float %6084, float %6079
  %6087 = select i1 %269, float %6083, float %6080
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 2
  %6090 = fmul fast float %6089, %104
  %6091 = fmul fast float %6089, %105
  %6092 = fmul fast float %6089, %106
  %6093 = fadd fast float %6090, %176
  %6094 = fadd fast float %6091, %177
  %6095 = fadd fast float %6092, %178
  %6096 = fcmp fast olt float %6071, 0.000000e+00
  br i1 %6096, label %6736, label %6097

; <label>:6097                                    ; preds = %6073
  %6098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6099 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6100 = extractvalue %dx.types.CBufRet.f32 %6098, 1
  %6101 = extractvalue %dx.types.CBufRet.f32 %6098, 2
  %6102 = extractvalue %dx.types.CBufRet.f32 %6098, 3
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6107 = extractvalue %dx.types.CBufRet.f32 %6103, 3
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6108, 3
  %6113 = fmul fast float %6099, %6093
  %6114 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6100, float %6113)  ; FMad(a,b,c)
  %6115 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6101, float %6114)  ; FMad(a,b,c)
  %6116 = fadd fast float %6115, %6102
  %6117 = fmul fast float %6104, %6093
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6105, float %6117)  ; FMad(a,b,c)
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6106, float %6118)  ; FMad(a,b,c)
  %6120 = fadd fast float %6119, %6107
  %6121 = fmul fast float %6109, %6093
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6110, float %6121)  ; FMad(a,b,c)
  %6123 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6111, float %6122)  ; FMad(a,b,c)
  %6124 = fadd fast float %6123, %6112
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = fcmp fast une float %6126, 0.000000e+00
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6132 = fmul fast float %6131, %6116
  %6133 = fmul fast float %6131, %6120
  %6134 = fadd fast float %6132, %6129
  %6135 = fadd fast float %6133, %6130
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6139 = extractvalue %dx.types.CBufRet.f32 %6136, 3
  %6140 = fmul fast float %6139, %6116
  %6141 = fmul fast float %6139, %6120
  %6142 = fadd fast float %6140, %6137
  %6143 = fadd fast float %6141, %6138
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6146 = fsub fast float %6145, %6124
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6148 = fmul fast float %6146, %6147
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  br i1 %6127, label %6211, label %6151

; <label>:6151                                    ; preds = %6097
  %6152 = extractvalue %dx.types.CBufRet.f32 %6136, 2
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6155 = fadd fast float %6154, %6152
  %6156 = fcmp fast ogt float %6155, 0.000000e+00
  br i1 %6156, label %6157, label %6181

; <label>:6157                                    ; preds = %6151
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = fsub fast float %6142, %6159
  %6162 = fsub fast float %6143, %6160
  %6163 = fcmp fast olt float %6161, 0.000000e+00
  %6164 = fcmp fast olt float %6162, 0.000000e+00
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6169 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6170 = select i1 %6163, float %6166, float %6168
  %6171 = select i1 %6164, float %6167, float %6169
  %6172 = fmul fast float %6170, %6161
  %6173 = fmul fast float %6171, %6162
  %6174 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6175 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6177 = call float @dx.op.binary.f32(i32 35, float %6174, float %6175)  ; FMax(a,b)
  %6178 = fsub fast float %6176, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = fmul fast float %6179, %6150
  br label %6181

; <label>:6181                                    ; preds = %6157, %6151
  %6182 = phi float [ %6180, %6157 ], [ 0.000000e+00, %6151 ]
  %6183 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6184 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6185 = fadd fast float %6184, %6183
  %6186 = fcmp fast ogt float %6185, 0.000000e+00
  br i1 %6186, label %6187, label %6211

; <label>:6187                                    ; preds = %6181
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = fsub fast float %6134, %6189
  %6192 = fsub fast float %6135, %6190
  %6193 = fcmp fast olt float %6191, 0.000000e+00
  %6194 = fcmp fast olt float %6192, 0.000000e+00
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6200 = select i1 %6193, float %6196, float %6198
  %6201 = select i1 %6194, float %6197, float %6199
  %6202 = fmul fast float %6200, %6191
  %6203 = fmul fast float %6201, %6192
  %6204 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6205 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6207 = call float @dx.op.binary.f32(i32 35, float %6204, float %6205)  ; FMax(a,b)
  %6208 = fsub fast float %6206, %6207
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fmul fast float %6209, %6150
  br label %6211

; <label>:6211                                    ; preds = %6187, %6181, %6097
  %6212 = phi float [ 0.000000e+00, %6097 ], [ %6210, %6187 ], [ 0.000000e+00, %6181 ]
  %6213 = phi float [ 0.000000e+00, %6097 ], [ %6182, %6187 ], [ %6182, %6181 ]
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 1
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6220 = fsub fast float %6116, %6218
  %6221 = fsub fast float %6120, %6219
  %6222 = fcmp fast olt float %6220, 0.000000e+00
  %6223 = fcmp fast olt float %6221, 0.000000e+00
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = select i1 %6222, float %6225, float %6227
  %6230 = select i1 %6223, float %6226, float %6228
  %6231 = fmul fast float %6229, %6220
  %6232 = fmul fast float %6230, %6221
  %6233 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6234 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6236 = call float @dx.op.binary.f32(i32 35, float %6233, float %6234)  ; FMax(a,b)
  %6237 = fsub fast float %6235, %6236
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = call float @dx.op.binary.f32(i32 36, float %6238, float %6216)  ; FMin(a,b)
  %6240 = fmul fast float %6239, %6150
  %6241 = fsub fast float %6212, %6240
  %6242 = fsub fast float %6213, %6212
  %6243 = fsub fast float %6242, %6240
  %6244 = call float @dx.op.binary.f32(i32 35, float %6212, float %6213)  ; FMax(a,b)
  %6245 = call float @dx.op.binary.f32(i32 35, float %6240, float %6244)  ; FMax(a,b)
  %6246 = fcmp fast olt float %6245, 1.000000e+00
  br i1 %6246, label %6247, label %6645, !dx.controlflow.hints !84

; <label>:6247                                    ; preds = %6211
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = fcmp fast une float %6249, 0.000000e+00
  br i1 %6250, label %6251, label %6645, !dx.controlflow.hints !85

; <label>:6251                                    ; preds = %6247
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6255 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6256 = extractvalue %dx.types.CBufRet.f32 %6252, 3
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = extractvalue %dx.types.CBufRet.f32 %6257, 3
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = fmul fast float %6253, %6093
  %6268 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6254, float %6267)  ; FMad(a,b,c)
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6255, float %6268)  ; FMad(a,b,c)
  %6270 = fadd fast float %6269, %6256
  %6271 = fmul fast float %6258, %6093
  %6272 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6259, float %6271)  ; FMad(a,b,c)
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6260, float %6272)  ; FMad(a,b,c)
  %6274 = fadd fast float %6273, %6261
  %6275 = fmul fast float %6263, %6093
  %6276 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6264, float %6275)  ; FMad(a,b,c)
  %6277 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6265, float %6276)  ; FMad(a,b,c)
  %6278 = fadd fast float %6277, %6266
  %6279 = fcmp fast oge float %6270, 1.000000e+00
  %6280 = fcmp fast oge float %6274, 1.000000e+00
  %6281 = or i1 %6279, %6280
  %6282 = fcmp fast olt float %6270, 0.000000e+00
  %6283 = fcmp fast olt float %6274, 0.000000e+00
  %6284 = or i1 %6282, %6283
  %6285 = or i1 %6281, %6284
  br i1 %6285, label %6645, label %6286, !dx.controlflow.hints !86

; <label>:6286                                    ; preds = %6251
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.i32 %6291, 2
  %6293 = uitofp i32 %6292 to float
  %6294 = extractvalue %dx.types.CBufRet.i32 %6291, 3
  %6295 = uitofp i32 %6294 to float
  %6296 = extractvalue %dx.types.CBufRet.f32 %6287, 3
  %6297 = fmul fast float %6296, 2.000000e+00
  %6298 = fsub fast float %6270, %6288
  %6299 = fsub fast float %6274, %6289
  %6300 = fmul fast float %6297, %6298
  %6301 = fmul fast float %6297, %6299
  %6302 = fdiv fast float 1.000000e+00, %6076
  %6303 = fmul fast float %6301, %6302
  %6304 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6305 = fmul fast float %6290, %6095
  %6306 = fmul fast float %6305, %6297
  %6307 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6308 = call float @dx.op.unary.f32(i32 6, float %6300)  ; FAbs(value)
  %6309 = call float @dx.op.binary.f32(i32 35, float %6307, float %6304)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 35, float %6308, float %6309)  ; FMax(a,b)
  %6311 = fmul fast float %6310, 2.000000e+00
  %6312 = call float @dx.op.unary.f32(i32 23, float %6311)  ; Log(value)
  %6313 = call float @dx.op.binary.f32(i32 35, float %6312, float %6293)  ; FMax(a,b)
  %6314 = call float @dx.op.unary.f32(i32 22, float %6313)  ; Frc(value)
  %6315 = fadd fast float %6314, 0xBFEA666660000000
  %6316 = fmul fast float %6315, 8.000000e+00
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = call float @dx.op.unary.f32(i32 27, float %6313)  ; Round_ni(value)
  %6319 = fadd fast float %6318, %6317
  %6320 = call float @dx.op.binary.f32(i32 36, float %6319, float %6295)  ; FMin(a,b)
  %6321 = call float @dx.op.unary.f32(i32 27, float %6320)  ; Round_ni(value)
  %6322 = fsub fast float -0.000000e+00, %6321
  %6323 = call float @dx.op.unary.f32(i32 21, float %6322)  ; Exp(value)
  %6324 = fmul fast float %6323, %6297
  %6325 = fmul fast float %6324, %6270
  %6326 = fmul fast float %6324, %6274
  %6327 = fmul fast float %6325, 2.500000e-01
  %6328 = fmul fast float %6326, 2.500000e-01
  %6329 = fadd fast float %6327, 5.000000e-01
  %6330 = fadd fast float %6328, 5.000000e-01
  %6331 = fsub fast float %6295, %6293
  %6332 = fptoui float %6331 to i32
  %6333 = add i32 %6332, 320
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %6333)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6337 = fcmp fast une float %6320, %6295
  %6338 = fsub fast float %6270, %6335
  %6339 = fsub fast float %6274, %6336
  %6340 = call float @dx.op.unary.f32(i32 6, float %6338)  ; FAbs(value)
  %6341 = call float @dx.op.unary.f32(i32 6, float %6339)  ; FAbs(value)
  %6342 = fmul fast float %6340, %6324
  %6343 = fmul fast float %6341, %6324
  %6344 = fcmp fast olt float %6342, 1.000000e+00
  %6345 = fcmp fast olt float %6343, 1.000000e+00
  %6346 = and i1 %6344, %6345
  %6347 = or i1 %6337, %6346
  br i1 %6347, label %6348, label %6645, !dx.controlflow.hints !87

; <label>:6348                                    ; preds = %6286
  %6349 = fmul fast float %6326, 5.000000e-01
  %6350 = fmul fast float %6325, 5.000000e-01
  %6351 = fadd fast float %6349, 5.000000e-01
  %6352 = fadd fast float %6350, 5.000000e-01
  %6353 = sitofp i32 %6292 to float
  %6354 = fsub fast float %6320, %6353
  %6355 = call float @dx.op.unary.f32(i32 27, float %6354)  ; Round_ni(value)
  %6356 = call float @dx.op.unary.f32(i32 22, float %6320)  ; Frc(value)
  %6357 = call float @dx.op.unary.f32(i32 22, float %6352)  ; Frc(value)
  %6358 = call float @dx.op.unary.f32(i32 22, float %6351)  ; Frc(value)
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6357, float %6358, float %6355, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.ResRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.ResRet.f32 %6359, 2
  %6363 = extractvalue %dx.types.ResRet.f32 %6359, 3
  %6364 = fcmp fast ogt float %6356, 0.000000e+00
  br i1 %6364, label %6365, label %6386, !dx.controlflow.hints !88

; <label>:6365                                    ; preds = %6348
  %6366 = fadd fast float %6355, 1.000000e+00
  %6367 = call float @dx.op.unary.f32(i32 22, float %6329)  ; Frc(value)
  %6368 = call float @dx.op.unary.f32(i32 22, float %6330)  ; Frc(value)
  %6369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6367, float %6368, float %6366, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6370 = extractvalue %dx.types.ResRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.ResRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.ResRet.f32 %6369, 2
  %6373 = extractvalue %dx.types.ResRet.f32 %6369, 3
  %6374 = fsub fast float %6370, %6360
  %6375 = fsub fast float %6371, %6361
  %6376 = fsub fast float %6372, %6362
  %6377 = fsub fast float %6373, %6363
  %6378 = fmul fast float %6374, %6356
  %6379 = fmul fast float %6375, %6356
  %6380 = fmul fast float %6376, %6356
  %6381 = fmul fast float %6377, %6356
  %6382 = fadd fast float %6378, %6360
  %6383 = fadd fast float %6379, %6361
  %6384 = fadd fast float %6380, %6362
  %6385 = fadd fast float %6381, %6363
  br label %6386

; <label>:6386                                    ; preds = %6365, %6348
  %6387 = phi float [ %6382, %6365 ], [ %6360, %6348 ]
  %6388 = phi float [ %6383, %6365 ], [ %6361, %6348 ]
  %6389 = phi float [ %6384, %6365 ], [ %6362, %6348 ]
  %6390 = phi float [ %6385, %6365 ], [ %6363, %6348 ]
  %6391 = fadd fast float %6387, -5.000000e-01
  %6392 = fadd fast float %6389, -5.000000e-01
  %6393 = fmul fast float %6391, 0xBFD5555560000000
  %6394 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6392, float %6393)  ; FMad(a,b,c)
  %6395 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6388, float 0.000000e+00)  ; FMad(a,b,c)
  %6396 = fadd fast float %6395, %6390
  %6397 = fmul fast float %6391, -7.500000e-01
  %6398 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6392, float %6397)  ; FMad(a,b,c)
  %6399 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6388, float 0.000000e+00)  ; FMad(a,b,c)
  %6400 = fadd fast float %6399, %6390
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = fsub fast float %6404, %6394
  %6409 = fsub fast float %6405, %6396
  %6410 = fsub fast float %6406, %6398
  %6411 = fsub fast float %6407, %6400
  %6412 = fmul fast float %6408, %6402
  %6413 = fmul fast float %6409, %6402
  %6414 = fmul fast float %6410, %6402
  %6415 = fmul fast float %6411, %6402
  %6416 = fadd fast float %6412, %6394
  %6417 = fadd fast float %6413, %6396
  %6418 = fadd fast float %6414, %6398
  %6419 = fadd fast float %6415, %6400
  %6420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6421 = extractvalue %dx.types.ResRet.i32 %6420, 0
  %6422 = and i32 %6421, 536870911
  %6423 = uitofp i32 %6422 to float
  %6424 = fmul fast float %6423, %6270
  %6425 = fmul fast float %6423, %6274
  %6426 = fptoui float %6424 to i32
  %6427 = fptoui float %6425 to i32
  %6428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.i32 %6428, 0
  %6430 = and i32 %6429, 31
  %6431 = lshr i32 %6426, %6430
  %6432 = lshr i32 %6427, %6430
  %6433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6434 = extractvalue %dx.types.ResRet.i32 %6433, 0
  %6435 = and i32 %6434, 31
  %6436 = shl i32 1, %6435
  %6437 = call i32 @dx.op.binary.i32(i32 40, i32 %6436, i32 4)  ; UMin(a,b)
  %6438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6439 = extractvalue %dx.types.ResRet.i32 %6438, 0
  %6440 = extractvalue %dx.types.ResRet.i32 %6438, 1
  %6441 = icmp eq i32 %6437, 0
  br i1 %6441, label %6483, label %6442

; <label>:6442                                    ; preds = %6386
  br label %6443

; <label>:6443                                    ; preds = %6471, %6442
  %6444 = phi i32 [ %6474, %6471 ], [ 0, %6442 ]
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = lshr i32 %6446, 16
  %6448 = and i32 %6447, 31
  %6449 = shl i32 %6432, %6448
  %6450 = add i32 %6449, %6431
  %6451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6452 = extractvalue %dx.types.ResRet.i32 %6451, 0
  %6453 = and i32 %6452, 31
  %6454 = shl i32 %6450, %6453
  %6455 = add i32 %6454, %6444
  %6456 = shl i32 %6455, 2
  %6457 = add i32 %6456, 32
  %6458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6457, i32 undef)  ; BufferLoad(srv,index,wot)
  %6459 = extractvalue %dx.types.ResRet.i32 %6458, 0
  %6460 = icmp slt i32 %6459, 0
  %6461 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6444
  %6462 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6444
  %6463 = bitcast float* %6461 to i32*
  %6464 = bitcast float* %6462 to i32*
  br i1 %6460, label %6465, label %6471

; <label>:6465                                    ; preds = %6443
  %6466 = and i32 %6459, 1073741823
  %6467 = add nuw nsw i32 %6466, 20
  %6468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6467, i32 undef)  ; BufferLoad(srv,index,wot)
  %6469 = extractvalue %dx.types.ResRet.i32 %6468, 0
  %6470 = extractvalue %dx.types.ResRet.i32 %6468, 1
  br label %6471

; <label>:6471                                    ; preds = %6465, %6443
  %6472 = phi i32 [ %6469, %6465 ], [ %6439, %6443 ]
  %6473 = phi i32 [ %6470, %6465 ], [ %6440, %6443 ]
  store i32 %6472, i32* %6463, align 4
  store i32 %6473, i32* %6464, align 4
  %6474 = add nuw i32 %6444, 1
  %6475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.i32 %6475, 2
  %6477 = icmp eq i32 %6476, 0
  %6478 = icmp ugt i32 %6459, -1073741825
  %6479 = and i1 %6478, %6477
  %6480 = icmp ult i32 %6474, %6437
  %6481 = and i1 %6479, %6480
  br i1 %6481, label %6443, label %6482

; <label>:6482                                    ; preds = %6471
  br label %6483

; <label>:6483                                    ; preds = %6482, %6386
  %6484 = phi i32 [ 0, %6386 ], [ %6474, %6482 ]
  %6485 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6486 = fptoui float %6485 to i32
  %6487 = icmp eq i32 %6486, 0
  br i1 %6487, label %6539, label %6488

; <label>:6488                                    ; preds = %6483
  br label %6489

; <label>:6489                                    ; preds = %6534, %6488
  %6490 = phi i32 [ %6535, %6534 ], [ %6484, %6488 ]
  %6491 = phi i32 [ %6536, %6534 ], [ 0, %6488 ]
  %6492 = lshr i32 %6491, 2
  %6493 = and i32 %6491, 3
  %6494 = add nuw nsw i32 %6492, 83
  %6495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %6494)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.i32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.i32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.i32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.i32 %6495, 3
  %6500 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %6496, i32* %6500, align 4
  %6501 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %6497, i32* %6501, align 4
  %6502 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %6498, i32* %6502, align 4
  %6503 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %6499, i32* %6503, align 4
  %6504 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %6493
  %6505 = load i32, i32* %6504, align 4, !tbaa !89, !noalias !93
  %6506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.i32 %6506, 0
  %6508 = lshr i32 %6507, 16
  %6509 = and i32 %6508, 31
  %6510 = shl i32 %6432, %6509
  %6511 = add i32 %6510, %6431
  %6512 = shl i32 %6511, 2
  %6513 = add i32 %6512, %6505
  %6514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.i32 %6514, 0
  %6516 = icmp eq i32 %6515, 0
  br i1 %6516, label %6534, label %6517

; <label>:6517                                    ; preds = %6489
  %6518 = icmp slt i32 %6515, 0
  %6519 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6490
  %6520 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6490
  %6521 = bitcast float* %6519 to i32*
  %6522 = bitcast float* %6520 to i32*
  br i1 %6518, label %6523, label %6530

; <label>:6523                                    ; preds = %6517
  %6524 = and i32 %6515, 1073741823
  %6525 = add i32 %6505, 20
  %6526 = add i32 %6525, %6524
  %6527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6526, i32 undef)  ; BufferLoad(srv,index,wot)
  %6528 = extractvalue %dx.types.ResRet.i32 %6527, 0
  %6529 = extractvalue %dx.types.ResRet.i32 %6527, 1
  br label %6530

; <label>:6530                                    ; preds = %6523, %6517
  %6531 = phi i32 [ %6528, %6523 ], [ %6439, %6517 ]
  %6532 = phi i32 [ %6529, %6523 ], [ %6440, %6517 ]
  store i32 %6531, i32* %6521, align 4
  store i32 %6532, i32* %6522, align 4
  %6533 = add i32 %6490, 1
  br label %6534

; <label>:6534                                    ; preds = %6530, %6489
  %6535 = phi i32 [ %6490, %6489 ], [ %6533, %6530 ]
  %6536 = add nuw i32 %6491, 1
  %6537 = icmp eq i32 %6536, %6486
  br i1 %6537, label %6538, label %6489

; <label>:6538                                    ; preds = %6534
  br label %6539

; <label>:6539                                    ; preds = %6538, %6483
  %6540 = phi i32 [ %6484, %6483 ], [ %6535, %6538 ]
  %6541 = icmp eq i32 %6540, 1
  %6542 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %6543 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %6541, label %6544, label %6547

; <label>:6544                                    ; preds = %6539
  %6545 = load float, float* %6542, align 4
  %6546 = load float, float* %6543, align 4
  br label %6574

; <label>:6547                                    ; preds = %6539
  %6548 = load float, float* %6542, align 4
  %6549 = load float, float* %6543, align 4
  %6550 = fdiv fast float 1.000000e+00, %6549
  %6551 = fsub fast float %6548, %6550
  %6552 = icmp ugt i32 %6540, 1
  br i1 %6552, label %6553, label %6569

; <label>:6553                                    ; preds = %6547
  br label %6554

; <label>:6554                                    ; preds = %6554, %6553
  %6555 = phi float [ %6564, %6554 ], [ %6551, %6553 ]
  %6556 = phi float [ %6565, %6554 ], [ %6548, %6553 ]
  %6557 = phi i32 [ %6566, %6554 ], [ 1, %6553 ]
  %6558 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6557
  %6559 = load float, float* %6558, align 4
  %6560 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6557
  %6561 = load float, float* %6560, align 4
  %6562 = fdiv fast float 1.000000e+00, %6561
  %6563 = fsub fast float %6559, %6562
  %6564 = call float @dx.op.binary.f32(i32 36, float %6555, float %6563)  ; FMin(a,b)
  %6565 = call float @dx.op.binary.f32(i32 35, float %6556, float %6559)  ; FMax(a,b)
  %6566 = add nuw i32 %6557, 1
  %6567 = icmp eq i32 %6566, %6540
  br i1 %6567, label %6568, label %6554

; <label>:6568                                    ; preds = %6554
  br label %6569

; <label>:6569                                    ; preds = %6568, %6547
  %6570 = phi float [ %6551, %6547 ], [ %6564, %6568 ]
  %6571 = phi float [ %6548, %6547 ], [ %6565, %6568 ]
  %6572 = fsub fast float %6571, %6570
  %6573 = fdiv fast float 1.000000e+00, %6572
  br label %6574

; <label>:6574                                    ; preds = %6569, %6544
  %6575 = phi float [ %6545, %6544 ], [ %6571, %6569 ]
  %6576 = phi float [ %6546, %6544 ], [ %6573, %6569 ]
  %6577 = fadd fast float %6278, %6575
  %6578 = fmul fast float %6577, %6576
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fmul fast float %6579, 2.000000e+00
  %6581 = fsub fast float 1.000000e+00, %6580
  %6582 = fmul fast float %6416, %6416
  %6583 = fsub fast float %6417, %6582
  %6584 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6583)  ; FMax(a,b)
  %6585 = fdiv fast float 1.000000e+00, %6584
  %6586 = fmul fast float %6417, %6416
  %6587 = fsub fast float %6418, %6586
  %6588 = fsub fast float %6581, %6416
  %6589 = fmul fast float %6581, %6581
  %6590 = fsub fast float %6589, %6417
  %6591 = fmul fast float %6585, %6587
  %6592 = fmul fast float %6591, %6588
  %6593 = fsub fast float %6590, %6592
  %6594 = fmul fast float %6417, %6417
  %6595 = fsub fast float %6419, %6594
  %6596 = fmul fast float %6587, %6587
  %6597 = fmul fast float %6596, %6585
  %6598 = fsub fast float %6595, %6597
  %6599 = fdiv fast float %6593, %6598
  %6600 = fmul fast float %6599, %6587
  %6601 = fsub fast float %6588, %6600
  %6602 = fmul fast float %6601, %6585
  %6603 = fmul fast float %6602, %6416
  %6604 = fsub fast float 1.000000e+00, %6603
  %6605 = fmul fast float %6599, %6417
  %6606 = fsub fast float %6604, %6605
  %6607 = fmul fast float %6602, %6602
  %6608 = fmul fast float %6599, 4.000000e+00
  %6609 = fmul fast float %6608, %6606
  %6610 = fsub fast float %6607, %6609
  %6611 = call float @dx.op.unary.f32(i32 24, float %6610)  ; Sqrt(value)
  %6612 = fcmp fast oge float %6602, 0.000000e+00
  %6613 = fsub fast float -0.000000e+00, %6611
  %6614 = select i1 %6612, float %6613, float %6611
  %6615 = fsub fast float %6614, %6602
  %6616 = fdiv fast float %6615, %6599
  %6617 = fdiv fast float %6606, %6615
  %6618 = fmul fast float %6616, 5.000000e-01
  %6619 = fmul fast float %6617, 2.000000e+00
  %6620 = select i1 %6612, float %6618, float %6619
  %6621 = select i1 %6612, float %6619, float %6618
  %6622 = call float @dx.op.binary.f32(i32 35, float %6620, float %6621)  ; FMax(a,b)
  %6623 = call float @dx.op.binary.f32(i32 36, float %6620, float %6621)  ; FMin(a,b)
  %6624 = fcmp fast ogt float %6581, %6622
  %6625 = fsub fast float %6581, %6623
  %6626 = fsub fast float %6581, %6622
  %6627 = fsub fast float %6622, %6623
  %6628 = select i1 %6624, float %6626, float %6627
  %6629 = fmul float %6625, %6628
  %6630 = select i1 %6624, float %6623, float %6581
  %6631 = fcmp fast ogt float %6581, %6623
  %6632 = fmul fast float %6630, %6622
  %6633 = fadd fast float %6630, %6622
  %6634 = fmul fast float %6633, %6416
  %6635 = fadd fast float %6632, %6417
  %6636 = fsub fast float %6635, %6634
  %6637 = fdiv fast float %6636, %6629
  %6638 = select i1 %6631, float %6637, float 0.000000e+00
  %6639 = fsub fast float 1.000000e+00, %6638
  %6640 = select i1 %6624, float %6639, float %6638
  %6641 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6643 = fmul fast float %6642, %6641
  %6644 = fsub fast float 1.000000e+00, %6643
  br label %6645

; <label>:6645                                    ; preds = %6574, %6286, %6251, %6247, %6211
  %6646 = phi float [ 1.000000e+00, %6211 ], [ %6644, %6574 ], [ 1.000000e+00, %6251 ], [ 1.000000e+00, %6286 ], [ 1.000000e+00, %6247 ]
  %6647 = fcmp fast ogt float %6243, 0.000000e+00
  br i1 %6647, label %6648, label %6656, !dx.controlflow.hints !102

; <label>:6648                                    ; preds = %6645
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 2
  %6651 = fadd fast float %6650, %6124
  %6652 = call float @dx.op.binary.f32(i32 35, float %6651, float 0.000000e+00)  ; FMax(a,b)
  %6653 = fadd fast float %6652, 0x3F10000000000000
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %6142, float %6143, float undef, float undef, i32 0, i32 0, i32 undef, float %6653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  br label %6656

; <label>:6656                                    ; preds = %6648, %6645
  %6657 = phi float [ %6655, %6648 ], [ 1.000000e+00, %6645 ]
  %6658 = fcmp fast ogt float %6241, 0.000000e+00
  br i1 %6658, label %6659, label %6667, !dx.controlflow.hints !103

; <label>:6659                                    ; preds = %6656
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 1
  %6662 = fadd fast float %6661, %6124
  %6663 = call float @dx.op.binary.f32(i32 35, float %6662, float 0.000000e+00)  ; FMax(a,b)
  %6664 = fadd fast float %6663, 0x3F10000000000000
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %6134, float %6135, float undef, float undef, i32 0, i32 0, i32 undef, float %6664)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  br label %6667

; <label>:6667                                    ; preds = %6659, %6656
  %6668 = phi float [ %6666, %6659 ], [ 1.000000e+00, %6656 ]
  %6669 = fcmp fast ogt float %6240, 0.000000e+00
  br i1 %6669, label %6670, label %6682, !dx.controlflow.hints !104

; <label>:6670                                    ; preds = %6667
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 0
  %6673 = fadd fast float %6672, %6124
  %6674 = call float @dx.op.binary.f32(i32 35, float %6673, float 0.000000e+00)  ; FMax(a,b)
  %6675 = fadd fast float %6674, 0x3F10000000000000
  br i1 %6127, label %6676, label %6679, !dx.controlflow.hints !105

; <label>:6676                                    ; preds = %6670
  %6677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %6116, float %6120, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6678 = extractvalue %dx.types.ResRet.f32 %6677, 0
  br label %6682

; <label>:6679                                    ; preds = %6670
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %6116, float %6120, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  br label %6682

; <label>:6682                                    ; preds = %6679, %6676, %6667
  %6683 = phi float [ %6678, %6676 ], [ %6681, %6679 ], [ 1.000000e+00, %6667 ]
  %6684 = fsub fast float %6657, %6646
  %6685 = fmul fast float %6684, %6213
  %6686 = fadd fast float %6685, %6646
  %6687 = fsub fast float %6668, %6686
  %6688 = fmul fast float %6687, %6212
  %6689 = fadd fast float %6688, %6686
  %6690 = fsub fast float %6683, %6689
  %6691 = fmul fast float %6690, %6240
  %6692 = fadd fast float %6691, %6689
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 2
  %6695 = fcmp fast ogt float %6694, 0.000000e+00
  br i1 %6695, label %6696, label %6736, !dx.controlflow.hints !106

; <label>:6696                                    ; preds = %6682
  %6697 = fcmp fast ugt float %6694, 0.000000e+00
  br i1 %6697, label %6698, label %6733

; <label>:6698                                    ; preds = %6696
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6708 = extractvalue %dx.types.CBufRet.f32 %6704, 3
  %6709 = extractvalue %dx.types.CBufRet.f32 %6693, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6693, 1
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = fadd fast float %6712, %6093
  %6716 = fadd fast float %6713, %6094
  %6717 = fadd fast float %6714, %6095
  %6718 = fmul fast float %6715, %6700
  %6719 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6716, float %6718)  ; FMad(a,b,c)
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6717, float %6719)  ; FMad(a,b,c)
  %6721 = fadd fast float %6720, %6703
  %6722 = fmul fast float %6715, %6705
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6716, float %6722)  ; FMad(a,b,c)
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6717, float %6723)  ; FMad(a,b,c)
  %6725 = fadd fast float %6724, %6708
  %6726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %6721, float %6725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  %6728 = fmul fast float %6727, %6710
  %6729 = fadd fast float %6728, %6709
  %6730 = call float @dx.op.unary.f32(i32 7, float %6729)  ; Saturate(value)
  %6731 = fmul fast float %6730, %6694
  %6732 = fsub fast float 1.000000e+00, %6731
  br label %6733

; <label>:6733                                    ; preds = %6698, %6696
  %6734 = phi float [ %6732, %6698 ], [ 1.000000e+00, %6696 ]
  %6735 = fmul fast float %6734, %6692
  br label %6736

; <label>:6736                                    ; preds = %6733, %6682, %6073
  %6737 = phi float [ 1.000000e+00, %6073 ], [ %6735, %6733 ], [ %6692, %6682 ]
  %6738 = call float @dx.op.binary.f32(i32 36, float %6737, float %6737)  ; FMin(a,b)
  %6739 = call float @dx.op.binary.f32(i32 36, float %6737, float %6738)  ; FMin(a,b)
  %6740 = fcmp fast ogt float %6739, 0.000000e+00
  br i1 %6740, label %6741, label %6902, !dx.controlflow.hints !107

; <label>:6741                                    ; preds = %6736
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6746 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6757 = fmul fast float %6743, %6093
  %6758 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6744, float %6757)  ; FMad(a,b,c)
  %6759 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6745, float %6758)  ; FMad(a,b,c)
  %6760 = fadd fast float %6759, %6746
  %6761 = fmul fast float %6748, %6093
  %6762 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6749, float %6761)  ; FMad(a,b,c)
  %6763 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6750, float %6762)  ; FMad(a,b,c)
  %6764 = fadd fast float %6763, %6751
  %6765 = fmul fast float %6753, %6093
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6754, float %6765)  ; FMad(a,b,c)
  %6767 = call float @dx.op.tertiary.f32(i32 46, float %6095, float %6755, float %6766)  ; FMad(a,b,c)
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.CBufRet.f32 %6768, 3
  %6772 = fmul fast float %6771, %6760
  %6773 = fmul fast float %6771, %6764
  %6774 = fadd fast float %6772, %6769
  %6775 = fadd fast float %6773, %6770
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6779 = fsub fast float %6774, %6777
  %6780 = fsub fast float %6775, %6778
  %6781 = fcmp fast olt float %6779, 0.000000e+00
  %6782 = fcmp fast olt float %6780, 0.000000e+00
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6788 = select i1 %6781, float %6784, float %6786
  %6789 = select i1 %6782, float %6785, float %6787
  %6790 = fmul fast float %6788, %6779
  %6791 = fmul fast float %6789, %6780
  %6792 = call float @dx.op.unary.f32(i32 6, float %6790)  ; FAbs(value)
  %6793 = call float @dx.op.unary.f32(i32 6, float %6791)  ; FAbs(value)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6795 = call float @dx.op.binary.f32(i32 35, float %6792, float %6793)  ; FMax(a,b)
  %6796 = fsub fast float %6794, %6795
  %6797 = call float @dx.op.unary.f32(i32 7, float %6796)  ; Saturate(value)
  %6798 = fcmp fast ogt float %6797, 0.000000e+00
  br i1 %6798, label %6799, label %6840, !dx.controlflow.hints !108

; <label>:6799                                    ; preds = %6741
  %6800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %6774, float %6775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 1
  %6802 = fcmp fast ogt float %6801, 0.000000e+00
  br i1 %6802, label %6803, label %6835

; <label>:6803                                    ; preds = %6799
  %6804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %6774, float %6775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6805 = extractvalue %dx.types.ResRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.ResRet.f32 %6804, 1
  %6807 = extractvalue %dx.types.ResRet.f32 %6804, 2
  %6808 = extractvalue %dx.types.ResRet.f32 %6804, 3
  %6809 = fsub fast float 1.000000e+00, %6756
  %6810 = fsub fast float %6809, %6767
  %6811 = fmul fast float %6810, 0x400921FB60000000
  %6812 = fadd fast float %6811, 0x3FF921FB60000000
  %6813 = call float @dx.op.unary.f32(i32 13, float %6812)  ; Sin(value)
  %6814 = fadd fast float %6813, -1.000000e+00
  %6815 = fmul fast float %6814, 0x3FD45F3060000000
  %6816 = fmul fast float %6810, 0x401921FB60000000
  %6817 = fadd fast float %6816, 0x400921FB60000000
  %6818 = call float @dx.op.unary.f32(i32 13, float %6817)  ; Sin(value)
  %6819 = fadd fast float %6818, 0x3E7777A5C0000000
  %6820 = fmul fast float %6819, 0x3FC45F3060000000
  %6821 = fmul fast float %6810, 0x4022D97C80000000
  %6822 = fadd fast float %6821, 0x4012D97C80000000
  %6823 = call float @dx.op.unary.f32(i32 13, float %6822)  ; Sin(value)
  %6824 = fadd fast float %6823, 1.000000e+00
  %6825 = fmul fast float %6824, 0x3FBB2995E0000000
  %6826 = fmul fast float %6810, 0x402921FB60000000
  %6827 = fadd fast float %6826, 0x401921FB60000000
  %6828 = call float @dx.op.unary.f32(i32 13, float %6827)  ; Sin(value)
  %6829 = fadd fast float %6828, 0xBE8777A5C0000000
  %6830 = fmul fast float %6829, 0x3FB45F3060000000
  %6831 = call float @dx.op.dot4.f32(i32 56, float %6805, float %6806, float %6807, float %6808, float %6815, float %6820, float %6825, float %6830)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6832 = fmul fast float %6831, 0xBFF7154760000000
  %6833 = call float @dx.op.unary.f32(i32 21, float %6832)  ; Exp(value)
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  br label %6835

; <label>:6835                                    ; preds = %6803, %6799
  %6836 = phi float [ %6834, %6803 ], [ 1.000000e+00, %6799 ]
  %6837 = fadd fast float %6836, -1.000000e+00
  %6838 = fmul fast float %6837, %6797
  %6839 = fadd fast float %6838, 1.000000e+00
  br label %6840

; <label>:6840                                    ; preds = %6835, %6741
  %6841 = phi float [ %6839, %6835 ], [ 1.000000e+00, %6741 ]
  %6842 = fmul fast float %6841, %6737
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = fadd fast float %6844, %176
  %6848 = fadd fast float %6845, %177
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6851 = fsub fast float -0.000000e+00, %6847
  %6852 = fsub fast float -0.000000e+00, %6848
  %6853 = fsub fast float -0.000000e+00, %178
  %6854 = fsub fast float %6853, %6846
  %6855 = fadd fast float %6854, %6850
  %6856 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6851, float %6852, float %6855)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = fdiv fast float 1.000000e+00, %6857
  %6859 = fmul fast float %6858, %6856
  %6860 = fmul fast float %6074, %6859
  %6861 = fmul fast float %6075, %6859
  %6862 = fadd fast float %6860, %6847
  %6863 = fadd fast float %6861, %6848
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6867 = fsub fast float %6862, %6865
  %6868 = fsub fast float %6863, %6866
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6872 = fmul fast float %6867, %6870
  %6873 = fmul fast float %6868, %6871
  %6874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.i32 %6874, 3
  %6876 = icmp eq i32 %6875, 0
  br i1 %6876, label %6882, label %6877

; <label>:6877                                    ; preds = %6840
  %6878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6872, float %6873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6879 = extractvalue %dx.types.ResRet.f32 %6878, 0
  %6880 = extractvalue %dx.types.ResRet.f32 %6878, 1
  %6881 = extractvalue %dx.types.ResRet.f32 %6878, 2
  br label %6887

; <label>:6882                                    ; preds = %6840
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6872, float %6873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  br label %6887

; <label>:6887                                    ; preds = %6882, %6877
  %6888 = phi float [ %6879, %6877 ], [ %6884, %6882 ]
  %6889 = phi float [ %6880, %6877 ], [ %6885, %6882 ]
  %6890 = phi float [ %6881, %6877 ], [ %6886, %6882 ]
  %6891 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6892 = fmul fast float %6891, %6888
  %6893 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6894 = fsub fast float %6859, %6893
  %6895 = fsub fast float %6894, %6892
  %6896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6895)  ; FMax(a,b)
  %6897 = fmul fast float %6896, %6889
  %6898 = call float @dx.op.binary.f32(i32 36, float %6890, float %6897)  ; FMin(a,b)
  %6899 = fmul fast float %6898, 0xBFF7154760000000
  %6900 = call float @dx.op.unary.f32(i32 21, float %6899)  ; Exp(value)
  %6901 = fmul fast float %6842, %6900
  br label %6902

; <label>:6902                                    ; preds = %6887, %6736
  %6903 = phi float [ %6901, %6887 ], [ %6737, %6736 ]
  %6904 = call float @dx.op.binary.f32(i32 36, float %6903, float %6903)  ; FMin(a,b)
  %6905 = call float @dx.op.binary.f32(i32 36, float %6903, float %6904)  ; FMin(a,b)
  %6906 = fcmp fast ogt float %6905, 0.000000e+00
  br i1 %6906, label %6907, label %7217, !dx.controlflow.hints !109

; <label>:6907                                    ; preds = %6902
  %6908 = fmul fast float %6903, %6085
  %6909 = fmul fast float %6903, %6086
  %6910 = fmul fast float %6903, %6087
  %6911 = fsub fast float %6074, %196
  %6912 = fsub fast float %6075, %197
  %6913 = fsub fast float %6076, %198
  %6914 = call float @dx.op.dot3.f32(i32 55, float %6911, float %6912, float %6913, float %6911, float %6912, float %6913)  ; Dot3(ax,ay,az,bx,by,bz)
  %6915 = call float @dx.op.unary.f32(i32 25, float %6914)  ; Rsqrt(value)
  %6916 = fmul fast float %6915, %6911
  %6917 = fmul fast float %6915, %6912
  %6918 = fmul fast float %6915, %6913
  %6919 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %6920 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %6916, float %6917, float %6918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6921 = call float @dx.op.unary.f32(i32 7, float %6919)  ; Saturate(value)
  %6922 = fmul fast float %6921, %6921
  %6923 = fmul fast float %6922, %5659
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = fmul fast float %6924, %6921
  %6926 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %6916, float %6917, float %6918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6927 = fmul fast float %6926, %6926
  %6928 = call float @dx.op.unary.f32(i32 6, float %6919)  ; FAbs(value)
  %6929 = call float @dx.op.binary.f32(i32 35, float %6042, float 0x3F847AE140000000)  ; FMax(a,b)
  %6930 = fmul fast float %6929, %6929
  %6931 = fmul fast float %6930, %6930
  %6932 = fsub fast float 1.000000e+00, %6931
  %6933 = fmul fast float %5646, %5646
  %6934 = fmul fast float %6933, %6932
  %6935 = fadd fast float %6934, %6931
  %6936 = bitcast float %6935 to i32
  %6937 = ashr i32 %6936, 1
  %6938 = add nsw i32 %6937, 532487669
  %6939 = bitcast i32 %6938 to float
  %6940 = fadd fast float %6939, %5646
  %6941 = fmul fast float %6931, %6927
  %6942 = fsub fast float 1.000000e+00, %6927
  %6943 = fadd fast float %6942, %6941
  %6944 = fmul fast float %6928, %6928
  %6945 = fmul fast float %6944, %6932
  %6946 = fadd fast float %6945, %6931
  %6947 = bitcast float %6946 to i32
  %6948 = ashr i32 %6947, 1
  %6949 = add nsw i32 %6948, 532487669
  %6950 = bitcast i32 %6949 to float
  %6951 = fadd fast float %6950, %6928
  %6952 = fmul fast float %6943, %6943
  %6953 = fmul fast float %6952, %6940
  %6954 = fmul fast float %6953, %6951
  %6955 = fdiv fast float 0x3FF0A00000000000, %6954
  %6956 = fmul fast float %6955, %6931
  %6957 = fmul fast float %5904, 0x3FF9999980000000
  %6958 = fsub fast float 5.000000e+00, %6957
  %6959 = call float @dx.op.unary.f32(i32 6, float %6920)  ; FAbs(value)
  %6960 = fsub fast float 1.000000e+00, %6959
  %6961 = fmul fast float %5904, 0x41D9660740000000
  %6962 = fadd fast float %6961, 0xC1EFBF8940000000
  %6963 = bitcast float %6960 to i32
  %6964 = sitofp i32 %6963 to float
  %6965 = fmul fast float %6964, %6958
  %6966 = fadd fast float %6962, %6965
  %6967 = fptosi float %6966 to i32
  %6968 = bitcast i32 %6967 to float
  %6969 = fsub fast float 1.000000e+00, %5633
  %6970 = fsub fast float 1.000000e+00, %5634
  %6971 = fsub fast float 1.000000e+00, %5644
  %6972 = fmul fast float %6968, %6969
  %6973 = fmul fast float %6968, %6970
  %6974 = fmul fast float %6968, %6971
  %6975 = fadd fast float %6972, %5633
  %6976 = fadd fast float %6973, %5634
  %6977 = fadd fast float %6974, %5644
  br i1 %5927, label %6978, label %7001

; <label>:6978                                    ; preds = %6907
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4678, float %6959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = fadd fast float %6980, -5.000000e-01
  %6984 = fadd fast float %6981, -5.000000e-01
  %6985 = fadd fast float %6982, -5.000000e-01
  %6986 = fmul fast float %5633, 4.000000e+00
  %6987 = fmul fast float %6986, %6969
  %6988 = fmul fast float %6987, %6983
  %6989 = fmul fast float %5634, 4.000000e+00
  %6990 = fmul fast float %6989, %6970
  %6991 = fmul fast float %6990, %6984
  %6992 = fmul fast float %5644, 4.000000e+00
  %6993 = fmul fast float %6992, %6971
  %6994 = fmul fast float %6993, %6985
  %6995 = fadd fast float %6988, %6975
  %6996 = fadd fast float %6991, %6976
  %6997 = fadd fast float %6994, %6977
  %6998 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6999 = call float @dx.op.unary.f32(i32 7, float %6996)  ; Saturate(value)
  %7000 = call float @dx.op.unary.f32(i32 7, float %6997)  ; Saturate(value)
  br label %7001

; <label>:7001                                    ; preds = %6978, %6907
  %7002 = phi float [ %6998, %6978 ], [ %6975, %6907 ]
  %7003 = phi float [ %6999, %6978 ], [ %6976, %6907 ]
  %7004 = phi float [ %7000, %6978 ], [ %6977, %6907 ]
  %7005 = fmul fast float %6919, 9.843750e-01
  %7006 = fadd fast float %7005, 7.812500e-03
  %7007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %7006, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.ResRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.ResRet.f32 %7007, 2
  %7011 = extractvalue %dx.types.ResRet.f32 %7007, 3
  %7012 = fsub fast float %7010, %7008
  %7013 = fsub fast float %7011, %7009
  %7014 = fmul fast float %7012, %5914
  %7015 = fmul fast float %7013, %5914
  %7016 = fadd fast float %7014, %7008
  %7017 = fadd fast float %7015, %7009
  %7018 = fmul fast float %7016, %5633
  %7019 = fmul fast float %7016, %5634
  %7020 = fmul fast float %7016, %5644
  %7021 = fadd fast float %7018, %7017
  %7022 = fadd fast float %7019, %7017
  %7023 = fadd fast float %7020, %7017
  br i1 %5927, label %7024, label %7047

; <label>:7024                                    ; preds = %7001
  %7025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4678, float %6919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7026 = extractvalue %dx.types.ResRet.f32 %7025, 0
  %7027 = extractvalue %dx.types.ResRet.f32 %7025, 1
  %7028 = extractvalue %dx.types.ResRet.f32 %7025, 2
  %7029 = fadd fast float %7026, -5.000000e-01
  %7030 = fadd fast float %7027, -5.000000e-01
  %7031 = fadd fast float %7028, -5.000000e-01
  %7032 = fmul fast float %5633, 4.000000e+00
  %7033 = fmul fast float %7032, %6969
  %7034 = fmul fast float %7033, %7029
  %7035 = fmul fast float %5634, 4.000000e+00
  %7036 = fmul fast float %7035, %6970
  %7037 = fmul fast float %7036, %7030
  %7038 = fmul fast float %5644, 4.000000e+00
  %7039 = fmul fast float %7038, %6971
  %7040 = fmul fast float %7039, %7031
  %7041 = fadd fast float %7034, %7021
  %7042 = fadd fast float %7037, %7022
  %7043 = fadd fast float %7040, %7023
  %7044 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7045 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  br label %7047

; <label>:7047                                    ; preds = %7024, %7001
  %7048 = phi float [ %7044, %7024 ], [ %7021, %7001 ]
  %7049 = phi float [ %7045, %7024 ], [ %7022, %7001 ]
  %7050 = phi float [ %7046, %7024 ], [ %7023, %7001 ]
  %7051 = call float @dx.op.binary.f32(i32 35, float %7049, float %7050)  ; FMax(a,b)
  %7052 = call float @dx.op.binary.f32(i32 35, float %7048, float %7051)  ; FMax(a,b)
  %7053 = fsub fast float 1.000000e+00, %7052
  %7054 = call float @dx.op.binary.f32(i32 35, float %6928, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7055 = fdiv fast float %4010, %7054
  %7056 = fmul fast float %5982, %7055
  %7057 = fmul fast float %5984, %7055
  %7058 = fmul fast float %5986, %7055
  %7059 = call float @dx.op.unary.f32(i32 21, float %7056)  ; Exp(value)
  %7060 = call float @dx.op.unary.f32(i32 21, float %7057)  ; Exp(value)
  %7061 = call float @dx.op.unary.f32(i32 21, float %7058)  ; Exp(value)
  %7062 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7063 = call float @dx.op.unary.f32(i32 7, float %7060)  ; Saturate(value)
  %7064 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7065 = select i1 %5979, float %7062, float 0.000000e+00
  %7066 = select i1 %5980, float %7063, float 0.000000e+00
  %7067 = select i1 %5981, float %7064, float 0.000000e+00
  %7068 = fsub fast float -0.000000e+00, %5639
  %7069 = fsub fast float -0.000000e+00, %5640
  %7070 = fsub fast float -0.000000e+00, %5641
  %7071 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float %7068, float %7069, float %7070)  ; Dot3(ax,ay,az,bx,by,bz)
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fmul fast float %7072, 9.843750e-01
  %7074 = fadd fast float %7073, 7.812500e-03
  %7075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %7074, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7076 = extractvalue %dx.types.ResRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.ResRet.f32 %7075, 1
  %7078 = extractvalue %dx.types.ResRet.f32 %7075, 2
  %7079 = extractvalue %dx.types.ResRet.f32 %7075, 3
  %7080 = fsub fast float %7078, %7076
  %7081 = fsub fast float %7079, %7077
  %7082 = fmul fast float %7080, %5914
  %7083 = fmul fast float %7081, %5914
  %7084 = fadd fast float %7082, %7076
  %7085 = fadd fast float %7083, %7077
  %7086 = fmul fast float %7084, %5633
  %7087 = fmul fast float %7084, %5634
  %7088 = fmul fast float %7084, %5644
  %7089 = fadd fast float %7086, %7085
  %7090 = fadd fast float %7087, %7085
  %7091 = fadd fast float %7088, %7085
  br i1 %5927, label %7092, label %7115

; <label>:7092                                    ; preds = %7047
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4678, float %7072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.ResRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7093, 2
  %7097 = fadd fast float %7094, -5.000000e-01
  %7098 = fadd fast float %7095, -5.000000e-01
  %7099 = fadd fast float %7096, -5.000000e-01
  %7100 = fmul fast float %5633, 4.000000e+00
  %7101 = fmul fast float %7100, %6969
  %7102 = fmul fast float %7101, %7097
  %7103 = fmul fast float %5634, 4.000000e+00
  %7104 = fmul fast float %7103, %6970
  %7105 = fmul fast float %7104, %7098
  %7106 = fmul fast float %5644, 4.000000e+00
  %7107 = fmul fast float %7106, %6971
  %7108 = fmul fast float %7107, %7099
  %7109 = fadd fast float %7102, %7089
  %7110 = fadd fast float %7105, %7090
  %7111 = fadd fast float %7108, %7091
  %7112 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7113 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7114 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  br label %7115

; <label>:7115                                    ; preds = %7092, %7047
  %7116 = phi float [ %7112, %7092 ], [ %7089, %7047 ]
  %7117 = phi float [ %7113, %7092 ], [ %7090, %7047 ]
  %7118 = phi float [ %7114, %7092 ], [ %7091, %7047 ]
  %7119 = call float @dx.op.binary.f32(i32 35, float %7117, float %7118)  ; FMax(a,b)
  %7120 = call float @dx.op.binary.f32(i32 35, float %7116, float %7119)  ; FMax(a,b)
  %7121 = fsub fast float 1.000000e+00, %7120
  %7122 = fmul fast float %6042, %6047
  %7123 = fadd fast float %6049, %7122
  %7124 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7125 = fsub fast float %6074, %5652
  %7126 = fsub fast float %6075, %5653
  %7127 = fsub fast float %6076, %5654
  %7128 = call float @dx.op.dot3.f32(i32 55, float %7125, float %7126, float %7127, float %7125, float %7126, float %7127)  ; Dot3(ax,ay,az,bx,by,bz)
  %7129 = call float @dx.op.unary.f32(i32 25, float %7128)  ; Rsqrt(value)
  %7130 = fmul fast float %7129, %7125
  %7131 = fmul fast float %7129, %7126
  %7132 = fmul fast float %7129, %7127
  %7133 = call float @dx.op.dot3.f32(i32 55, float %7068, float %7069, float %7070, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = fmul fast float %7133, %7133
  %7135 = call float @dx.op.unary.f32(i32 6, float %7072)  ; FAbs(value)
  %7136 = call float @dx.op.binary.f32(i32 35, float %7124, float 0x3F847AE140000000)  ; FMax(a,b)
  %7137 = fmul fast float %7136, %7136
  %7138 = fmul fast float %7137, %7137
  %7139 = fsub fast float 1.000000e+00, %7138
  %7140 = fmul fast float %6933, %7139
  %7141 = fadd fast float %7140, %7138
  %7142 = bitcast float %7141 to i32
  %7143 = ashr i32 %7142, 1
  %7144 = add nsw i32 %7143, 532487669
  %7145 = bitcast i32 %7144 to float
  %7146 = fadd fast float %7145, %5646
  %7147 = fmul fast float %7138, %7134
  %7148 = fsub fast float 1.000000e+00, %7134
  %7149 = fadd fast float %7148, %7147
  %7150 = fmul fast float %7135, %7135
  %7151 = fmul fast float %7150, %7139
  %7152 = fadd fast float %7151, %7138
  %7153 = bitcast float %7152 to i32
  %7154 = ashr i32 %7153, 1
  %7155 = add nsw i32 %7154, 532487669
  %7156 = bitcast i32 %7155 to float
  %7157 = fadd fast float %7156, %7135
  %7158 = fmul fast float %7149, %7149
  %7159 = fmul fast float %7158, %7146
  %7160 = fmul fast float %7159, %7157
  %7161 = fdiv fast float 0x3FF0A00000000000, %7160
  %7162 = fmul fast float %7161, %7138
  %7163 = fmul fast float %7072, %7065
  %7164 = fmul fast float %7072, %7066
  %7165 = fmul fast float %7072, %7067
  %7166 = fmul fast float %7163, %7121
  %7167 = fmul fast float %7166, %7162
  %7168 = fmul fast float %7164, %7121
  %7169 = fmul fast float %7168, %7162
  %7170 = fmul fast float %7165, %7121
  %7171 = fmul fast float %7170, %7162
  %7172 = fmul fast float %7002, %6956
  %7173 = fmul fast float %7003, %6956
  %7174 = fmul fast float %7004, %6956
  %7175 = fsub fast float 1.000000e+00, %6920
  %7176 = bitcast float %7175 to i32
  %7177 = sitofp i32 %7176 to float
  %7178 = fmul fast float %7177, 5.000000e+00
  %7179 = fadd fast float %7178, 0xC1EFBF8940000000
  %7180 = fptosi float %7179 to i32
  %7181 = bitcast i32 %7180 to float
  %7182 = fmul fast float %7181, %4679
  %7183 = fmul fast float %7053, %7182
  %7184 = fmul fast float %7183, %5974
  %7185 = fmul fast float %7183, %5975
  %7186 = fmul fast float %7183, %5976
  %7187 = fadd fast float %7184, %7172
  %7188 = fadd fast float %7185, %7173
  %7189 = fadd fast float %7186, %7174
  %7190 = fmul fast float %7187, %6925
  %7191 = fmul fast float %7188, %6925
  %7192 = fmul fast float %7189, %6925
  %7193 = fmul fast float %6925, %6908
  %7194 = fmul fast float %7193, %7053
  %7195 = fmul fast float %6925, %6909
  %7196 = fmul fast float %7195, %7053
  %7197 = fmul fast float %6925, %6910
  %7198 = fmul fast float %7197, %7053
  %7199 = fadd fast float %7190, %7167
  %7200 = fadd fast float %7191, %7169
  %7201 = fadd fast float %7192, %7171
  %7202 = fmul fast float %7199, %6908
  %7203 = fmul fast float %7200, %6909
  %7204 = fmul fast float %7201, %6910
  %7205 = fadd fast float %7194, %6064
  %7206 = fmul fast float %7205, %4704
  %7207 = fadd fast float %7196, %6066
  %7208 = fmul fast float %7207, %4704
  %7209 = fadd fast float %7198, %6068
  %7210 = fmul fast float %7209, %4704
  %7211 = fadd fast float %7202, %6027
  %7212 = fmul fast float %7211, %4704
  %7213 = fadd fast float %7203, %6030
  %7214 = fmul fast float %7213, %4704
  %7215 = fadd fast float %7204, %6033
  %7216 = fmul fast float %7215, %4704
  br label %7217

; <label>:7217                                    ; preds = %7115, %6902, %5954
  %7218 = phi float [ %6028, %5954 ], [ %6028, %6902 ], [ %7212, %7115 ]
  %7219 = phi float [ %6031, %5954 ], [ %6031, %6902 ], [ %7214, %7115 ]
  %7220 = phi float [ %6034, %5954 ], [ %6034, %6902 ], [ %7216, %7115 ]
  %7221 = phi float [ %6065, %5954 ], [ %6065, %6902 ], [ %7206, %7115 ]
  %7222 = phi float [ %6067, %5954 ], [ %6067, %6902 ], [ %7208, %7115 ]
  %7223 = phi float [ %6069, %5954 ], [ %6069, %6902 ], [ %7210, %7115 ]
  %7224 = fmul fast float %4704, %6003
  %7225 = fsub fast float -0.000000e+00, %7224
  %7226 = fmul fast float %4704, %6004
  %7227 = fsub fast float -0.000000e+00, %7226
  %7228 = fmul fast float %4704, %6005
  %7229 = fsub fast float -0.000000e+00, %7228
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = fmul fast float %7231, %6009
  %7233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7233, 3
  %7235 = fsub fast float 1.000000e+00, %4682
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7237 = fadd fast float %7223, %4681
  %7238 = fmul fast float %7237, %4682
  %7239 = fmul fast float %7236, %7234
  %7240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4683, i32 undef)  ; BufferLoad(srv,index,wot)
  %7241 = extractvalue %dx.types.ResRet.i32 %7240, 3
  %7242 = bitcast i32 %7241 to float
  %7243 = fsub fast float %7225, %7242
  %7244 = fsub fast float %7227, %7242
  %7245 = fsub fast float %7229, %7242
  %7246 = fmul fast float %7243, %210
  %7247 = fmul fast float %7244, %210
  %7248 = fmul fast float %7245, %210
  %7249 = fadd fast float %7246, %7242
  %7250 = fadd fast float %7247, %7242
  %7251 = fadd fast float %7248, %7242
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 3
  %7254 = fmul fast float %7221, %5636
  %7255 = fmul fast float %7222, %5637
  %7256 = fmul fast float %7223, %5638
  %7257 = fcmp fast ogt float %88, %230
  %7258 = and i1 %7257, %4772
  %7259 = or i1 %4851, %7258
  %7260 = icmp eq i32 %4771, 2
  %7261 = fcmp fast ole float %88, %230
  %7262 = and i1 %7261, %7260
  %7263 = or i1 %7262, %7259
  br i1 %7258, label %7264, label %7521

; <label>:7264                                    ; preds = %7217
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7268 = fmul fast float %7266, %97
  %7269 = fmul fast float %7267, %98
  %7270 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7271 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7272 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7270, float %7271, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.ResRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.ResRet.f32 %7272, 2
  %7276 = extractvalue %dx.types.ResRet.f32 %7272, 3
  %7277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7270, float %7271, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7281 = extractvalue %dx.types.ResRet.f32 %7277, 3
  %7282 = call float @dx.op.binary.f32(i32 35, float %7274, float %7275)  ; FMax(a,b)
  %7283 = call float @dx.op.binary.f32(i32 35, float %7273, float %7282)  ; FMax(a,b)
  %7284 = call float @dx.op.binary.f32(i32 35, float %7283, float %7276)  ; FMax(a,b)
  %7285 = call float @dx.op.binary.f32(i32 36, float %7279, float %7280)  ; FMin(a,b)
  %7286 = call float @dx.op.binary.f32(i32 36, float %7278, float %7285)  ; FMin(a,b)
  %7287 = call float @dx.op.binary.f32(i32 36, float %7286, float %7281)  ; FMin(a,b)
  %7288 = fmul fast float %7284, 2.550000e+02
  %7289 = fadd fast float %7288, 0x3F70101020000000
  %7290 = fptoui float %7289 to i32
  %7291 = fmul fast float %7287, 2.550000e+02
  %7292 = fadd fast float %7291, 0x3F70101020000000
  %7293 = fptoui float %7292 to i32
  %7294 = icmp ult i32 %7290, %7293
  br i1 %7294, label %7295, label %7463

; <label>:7295                                    ; preds = %7264
  %7296 = fcmp fast ogt float %87, 9.843750e-01
  %7297 = fadd fast float %88, -4.000000e+00
  %7298 = select i1 %7296, float -4.000000e+00, float %7297
  %7299 = call float @dx.op.binary.f32(i32 35, float %7298, float 0.000000e+00)  ; FMax(a,b)
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = fadd fast float %7301, %7299
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7304 = fmul fast float %7302, %7303
  %7305 = call float @dx.op.unary.f32(i32 23, float %7304)  ; Log(value)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7300, 3
  %7307 = fmul fast float %7306, %7305
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7310 = fmul fast float %7307, %7309
  %7311 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7312 = uitofp i32 %7290 to float
  %7313 = uitofp i32 %7293 to float
  %7314 = fadd fast float %7312, 5.000000e-01
  %7315 = fadd fast float %7313, 5.000000e-01
  %7316 = fmul fast float %7309, %7314
  %7317 = fmul fast float %7309, %7315
  %7318 = fadd fast float %7316, 0x3F0FFB4800000000
  %7319 = fadd fast float %7317, 0xBF0FFB4800000000
  %7320 = call float @dx.op.binary.f32(i32 35, float %7311, float %7318)  ; FMax(a,b)
  %7321 = call float @dx.op.binary.f32(i32 36, float %7320, float %7319)  ; FMin(a,b)
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7326 = fmul fast float %7323, %7321
  %7327 = fadd fast float %7325, %7326
  %7328 = fadd fast float %7325, %7324
  %7329 = fsub fast float %7323, %7324
  %7330 = fadd fast float %7329, %7325
  %7331 = call float @dx.op.binary.f32(i32 35, float %7327, float %7328)  ; FMax(a,b)
  %7332 = call float @dx.op.binary.f32(i32 36, float %7331, float %7330)  ; FMin(a,b)
  %7333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %7270, float %7271, float %7332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7334 = extractvalue %dx.types.ResRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.ResRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.ResRet.f32 %7333, 2
  %7337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.i32 %7337, 0
  %7339 = extractvalue %dx.types.CBufRet.i32 %7337, 1
  %7340 = uitofp i32 %7338 to float
  %7341 = uitofp i32 %7339 to float
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.CBufRet.f32 %7342, 1
  %7345 = fmul fast float %7340, %7270
  %7346 = fmul fast float %7341, %7271
  %7347 = fadd fast float %7345, -5.000000e-01
  %7348 = fadd fast float %7346, -5.000000e-01
  %7349 = call float @dx.op.unary.f32(i32 22, float %7347)  ; Frc(value)
  %7350 = call float @dx.op.unary.f32(i32 22, float %7348)  ; Frc(value)
  %7351 = fmul fast float %7349, %7349
  %7352 = fmul fast float %7351, %7349
  %7353 = fsub fast float 3.000000e+00, %7349
  %7354 = fmul fast float %7351, %7353
  %7355 = fmul fast float %7349, 3.000000e+00
  %7356 = fmul fast float %7352, 3.000000e+00
  %7357 = fmul fast float %7351, 6.000000e+00
  %7358 = fsub fast float %7356, %7357
  %7359 = fadd fast float %7358, 4.000000e+00
  %7360 = fmul fast float %7359, 0x3FC5555560000000
  %7361 = fmul fast float %7352, -3.000000e+00
  %7362 = fadd fast float %7351, %7349
  %7363 = fmul fast float %7362, 3.000000e+00
  %7364 = fadd fast float %7361, 1.000000e+00
  %7365 = fadd fast float %7364, %7363
  %7366 = fmul fast float %7352, 0x3FC5555560000000
  %7367 = fmul fast float %7350, %7350
  %7368 = fmul fast float %7367, %7350
  %7369 = fsub fast float 3.000000e+00, %7350
  %7370 = fmul fast float %7367, %7369
  %7371 = fmul fast float %7350, 3.000000e+00
  %7372 = fmul fast float %7368, 3.000000e+00
  %7373 = fmul fast float %7367, 6.000000e+00
  %7374 = fsub fast float %7372, %7373
  %7375 = fadd fast float %7374, 4.000000e+00
  %7376 = fmul fast float %7375, 0x3FC5555560000000
  %7377 = fmul fast float %7368, -3.000000e+00
  %7378 = fadd fast float %7367, %7350
  %7379 = fmul fast float %7378, 3.000000e+00
  %7380 = fadd fast float %7377, 1.000000e+00
  %7381 = fadd fast float %7380, %7379
  %7382 = fmul fast float %7368, 0x3FC5555560000000
  %7383 = fadd fast float %7349, 1.000000e+00
  %7384 = fsub fast float 1.000000e+00, %7355
  %7385 = fadd fast float %7384, %7354
  %7386 = fadd fast float %7385, %7359
  %7387 = fmul fast float %7386, 0x3FC5555560000000
  %7388 = fdiv fast float %7360, %7387
  %7389 = fsub fast float %7383, %7388
  %7390 = fsub fast float 1.000000e+00, %7349
  %7391 = fadd fast float %7365, %7352
  %7392 = fmul fast float %7391, 0x3FC5555560000000
  %7393 = fdiv fast float %7366, %7392
  %7394 = fadd fast float %7390, %7393
  %7395 = fadd fast float %7350, 1.000000e+00
  %7396 = fsub fast float 1.000000e+00, %7371
  %7397 = fadd fast float %7396, %7370
  %7398 = fadd fast float %7397, %7375
  %7399 = fmul fast float %7398, 0x3FC5555560000000
  %7400 = fdiv fast float %7376, %7399
  %7401 = fsub fast float %7395, %7400
  %7402 = fsub fast float 1.000000e+00, %7350
  %7403 = fadd fast float %7381, %7368
  %7404 = fmul fast float %7403, 0x3FC5555560000000
  %7405 = fdiv fast float %7382, %7404
  %7406 = fadd fast float %7405, %7402
  %7407 = fmul fast float %7389, %7343
  %7408 = fsub fast float %7270, %7407
  %7409 = fmul fast float %7394, %7343
  %7410 = fadd fast float %7409, %7270
  %7411 = fmul fast float %7406, %7344
  %7412 = fadd fast float %7411, %7271
  %7413 = fmul fast float %7401, %7344
  %7414 = fsub fast float %7271, %7413
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7408, float %7414, float %7332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7410, float %7414, float %7332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7408, float %7412, float %7332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7424 = extractvalue %dx.types.ResRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.ResRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.ResRet.f32 %7423, 2
  %7427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7410, float %7412, float %7332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = fsub fast float %7424, %7416
  %7432 = fsub fast float %7425, %7417
  %7433 = fsub fast float %7426, %7418
  %7434 = fmul fast float %7431, %7404
  %7435 = fmul fast float %7432, %7404
  %7436 = fmul fast float %7433, %7404
  %7437 = fadd fast float %7434, %7416
  %7438 = fadd fast float %7435, %7417
  %7439 = fadd fast float %7436, %7418
  %7440 = fsub fast float %7428, %7420
  %7441 = fsub fast float %7429, %7421
  %7442 = fsub fast float %7430, %7422
  %7443 = fmul fast float %7440, %7404
  %7444 = fmul fast float %7441, %7404
  %7445 = fmul fast float %7442, %7404
  %7446 = fsub fast float %7420, %7437
  %7447 = fadd fast float %7446, %7443
  %7448 = fsub fast float %7421, %7438
  %7449 = fadd fast float %7448, %7444
  %7450 = fsub fast float %7422, %7439
  %7451 = fadd fast float %7450, %7445
  %7452 = fmul fast float %7447, %7392
  %7453 = fmul fast float %7449, %7392
  %7454 = fmul fast float %7451, %7392
  %7455 = fadd fast float %7452, %7437
  %7456 = fadd fast float %7453, %7438
  %7457 = fadd fast float %7454, %7439
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7460 = fmul fast float %7455, %7459
  %7461 = fmul fast float %7456, %7459
  %7462 = fmul fast float %7457, %7459
  br label %7463

; <label>:7463                                    ; preds = %7295, %7264
  %7464 = phi float [ %7334, %7295 ], [ 1.000000e+00, %7264 ]
  %7465 = phi float [ %7335, %7295 ], [ 1.000000e+00, %7264 ]
  %7466 = phi float [ %7336, %7295 ], [ 1.000000e+00, %7264 ]
  %7467 = phi float [ %7460, %7295 ], [ 0.000000e+00, %7264 ]
  %7468 = phi float [ %7461, %7295 ], [ 0.000000e+00, %7264 ]
  %7469 = phi float [ %7462, %7295 ], [ 0.000000e+00, %7264 ]
  %7470 = fmul fast float %7467, %7249
  %7471 = fmul fast float %7468, %7250
  %7472 = fmul fast float %7469, %7251
  %7473 = call float @dx.op.dot3.f32(i32 55, float %7464, float %7465, float %7466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = call float @dx.op.dot3.f32(i32 55, float %7470, float %7471, float %7472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7475 = select i1 %269, float %7473, float %7464
  %7476 = select i1 %269, float %7473, float %7465
  %7477 = select i1 %269, float 1.000000e+00, float %7466
  %7478 = select i1 %269, float %7474, float %7470
  %7479 = select i1 %269, float 0.000000e+00, float %7471
  %7480 = select i1 %269, float 0.000000e+00, float %7472
  %7481 = fmul fast float %7475, %7254
  %7482 = fmul fast float %7476, %7255
  %7483 = fmul fast float %7477, %7256
  %7484 = fadd fast float %7481, %7478
  %7485 = fadd fast float %7482, %7479
  %7486 = fadd fast float %7480, %7483
  %7487 = fmul fast float %7475, %7218
  %7488 = fmul fast float %7476, %7219
  %7489 = fmul fast float %7477, %7220
  %7490 = fmul fast float %125, %7266
  %7491 = fmul fast float %127, %7267
  %7492 = fsub fast float 1.000000e+00, %7490
  %7493 = fsub fast float 1.000000e+00, %7491
  %7494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.CBufRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.CBufRet.f32 %7494, 2
  %7498 = fmul fast float %7492, %7495
  %7499 = fmul fast float %7492, %7496
  %7500 = fmul fast float %7492, %7497
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7501, 2
  %7505 = fmul fast float %7493, %7502
  %7506 = fmul fast float %7493, %7503
  %7507 = fmul fast float %7493, %7504
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7512 = fadd fast float %7505, %7509
  %7513 = fadd fast float %7512, %7498
  %7514 = fadd fast float %7506, %7510
  %7515 = fadd fast float %7514, %7499
  %7516 = fadd fast float %7507, %7511
  %7517 = fadd fast float %7516, %7500
  %7518 = fmul fast float %7513, %230
  %7519 = fmul fast float %7515, %230
  %7520 = fmul fast float %7517, %230
  br label %7521

; <label>:7521                                    ; preds = %7463, %7217
  %7522 = phi float [ %7518, %7463 ], [ %176, %7217 ]
  %7523 = phi float [ %7519, %7463 ], [ %177, %7217 ]
  %7524 = phi float [ %7520, %7463 ], [ %178, %7217 ]
  %7525 = phi float [ %230, %7463 ], [ %88, %7217 ]
  %7526 = phi float [ %7484, %7463 ], [ %7254, %7217 ]
  %7527 = phi float [ %7485, %7463 ], [ %7255, %7217 ]
  %7528 = phi float [ %7486, %7463 ], [ %7256, %7217 ]
  %7529 = phi float [ %7487, %7463 ], [ %7218, %7217 ]
  %7530 = phi float [ %7488, %7463 ], [ %7219, %7217 ]
  %7531 = phi float [ %7489, %7463 ], [ %7220, %7217 ]
  %7532 = phi float [ %7464, %7463 ], [ 1.000000e+00, %7217 ]
  br i1 %7263, label %8687, label %7533

; <label>:7533                                    ; preds = %7521
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7543 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 0
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 1
  %7547 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7548 = extractvalue %dx.types.CBufRet.f32 %7544, 3
  %7549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7550 = extractvalue %dx.types.CBufRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.CBufRet.f32 %7549, 1
  %7552 = extractvalue %dx.types.CBufRet.f32 %7549, 2
  %7553 = extractvalue %dx.types.CBufRet.f32 %7549, 3
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 3
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 3
  %7558 = extractvalue %dx.types.CBufRet.f32 %7556, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7556, 1
  %7560 = extractvalue %dx.types.CBufRet.f32 %7556, 2
  %7561 = fcmp fast olt float %7560, -5.000000e-01
  %7562 = call float @dx.op.dot3.f32(i32 55, float %7522, float %7523, float %7524, float %7522, float %7523, float %7524)  ; Dot3(ax,ay,az,bx,by,bz)
  %7563 = call float @dx.op.unary.f32(i32 25, float %7562)  ; Rsqrt(value)
  %7564 = fmul fast float %7563, %7562
  %7565 = fmul fast float %7563, %7522
  %7566 = fmul fast float %7563, %7523
  %7567 = fmul fast float %7563, %7524
  %7568 = fadd fast float %7564, %7538
  %7569 = call float @dx.op.dot3.f32(i32 55, float %7565, float %7566, float %7567, float %7535, float %7536, float %7537)  ; Dot3(ax,ay,az,bx,by,bz)
  %7570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.i32 %7570, 1
  %7572 = and i32 %7571, 1
  %7573 = icmp ne i32 %7572, 0
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 2
  %7576 = fcmp fast ogt float %7575, 0.000000e+00
  %7577 = and i1 %7573, %7576
  br i1 %7577, label %7578, label %7984, !dx.controlflow.hints !110

; <label>:7578                                    ; preds = %7533
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 3
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 2
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7585 = fsub fast float %7582, %7584
  %7586 = and i32 %7571, 2
  %7587 = extractvalue %dx.types.CBufRet.i32 %7570, 0
  %7588 = call i32 @dx.op.binary.i32(i32 40, i32 %7587, i32 3)  ; UMin(a,b)
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.CBufRet.f32 %7589, 1
  %7592 = extractvalue %dx.types.CBufRet.f32 %7583, 0
  %7593 = extractvalue %dx.types.CBufRet.f32 %7583, 1
  %7594 = fsub fast float %7590, %7592
  %7595 = fsub fast float %7591, %7593
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = fcmp fast ogt float %7597, 0.000000e+00
  %7599 = fsub fast float -0.000000e+00, %7594
  %7600 = fsub fast float -0.000000e+00, %7595
  %7601 = call float @dx.op.dot2.f32(i32 54, float %7565, float %7566, float %7565, float %7566)  ; Dot2(ax,ay,bx,by)
  %7602 = call float @dx.op.dot2.f32(i32 54, float %7565, float %7566, float %7599, float %7600)  ; Dot2(ax,ay,bx,by)
  %7603 = fmul fast float %7602, 2.000000e+00
  %7604 = call float @dx.op.dot2.f32(i32 54, float %7599, float %7600, float %7599, float %7600)  ; Dot2(ax,ay,bx,by)
  %7605 = fmul fast float %7597, %7597
  %7606 = fsub fast float %7604, %7605
  %7607 = fmul fast float %7603, %7603
  %7608 = fmul fast float %7601, 4.000000e+00
  %7609 = fmul fast float %7608, %7606
  %7610 = fsub fast float %7607, %7609
  %7611 = fcmp fast ogt float %7610, 0.000000e+00
  br i1 %7611, label %7612, label %7627

; <label>:7612                                    ; preds = %7578
  %7613 = fcmp fast ogt float %7603, 0.000000e+00
  %7614 = call float @dx.op.unary.f32(i32 24, float %7610)  ; Sqrt(value)
  %7615 = fsub fast float -0.000000e+00, %7614
  %7616 = select i1 %7613, float %7614, float %7615
  %7617 = fadd fast float %7616, %7603
  %7618 = fmul float %7617, -5.000000e-01
  %7619 = fdiv fast float %7618, %7601
  %7620 = call float @dx.op.binary.f32(i32 35, float %7619, float 0.000000e+00)  ; FMax(a,b)
  %7621 = call float @dx.op.binary.f32(i32 36, float %7564, float %7620)  ; FMin(a,b)
  %7622 = fdiv fast float %7606, %7618
  %7623 = call float @dx.op.binary.f32(i32 35, float %7622, float 0.000000e+00)  ; FMax(a,b)
  %7624 = call float @dx.op.binary.f32(i32 36, float %7564, float %7623)  ; FMin(a,b)
  %7625 = call float @dx.op.binary.f32(i32 36, float %7621, float %7624)  ; FMin(a,b)
  %7626 = call float @dx.op.binary.f32(i32 35, float %7621, float %7624)  ; FMax(a,b)
  br label %7627

; <label>:7627                                    ; preds = %7612, %7578
  %7628 = phi float [ %7626, %7612 ], [ -1.000000e+00, %7578 ]
  %7629 = phi float [ %7625, %7612 ], [ -1.000000e+00, %7578 ]
  %7630 = phi i1 [ true, %7612 ], [ false, %7578 ]
  %7631 = and i1 %7598, %7630
  br i1 %7631, label %7632, label %7634

; <label>:7632                                    ; preds = %7627
  %7633 = fcmp fast oeq float %7629, %7628
  br i1 %7633, label %7937, label %7635

; <label>:7634                                    ; preds = %7627
  br i1 %7598, label %7937, label %7635

; <label>:7635                                    ; preds = %7634, %7632
  %7636 = phi float [ %7564, %7634 ], [ %7628, %7632 ]
  %7637 = phi float [ 0.000000e+00, %7634 ], [ %7629, %7632 ]
  %7638 = icmp ne i32 %7586, 0
  %7639 = fmul fast float %7636, %7567
  %7640 = fadd fast float %7639, %7580
  %7641 = fmul fast float %7640, %7636
  %7642 = select i1 %7638, float 0.000000e+00, float %7641
  %7643 = fcmp fast oeq float %7567, 0.000000e+00
  %7644 = fdiv fast float %7585, %7567
  %7645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7644)  ; FMax(a,b)
  %7646 = select i1 %7643, float %7636, float %7645
  %7647 = call float @dx.op.binary.f32(i32 36, float %7636, float %7646)  ; FMin(a,b)
  %7648 = fcmp fast ogt float %7567, 0.000000e+00
  %7649 = fcmp fast olt float %7585, 0.000000e+00
  br i1 %7648, label %7650, label %7707

; <label>:7650                                    ; preds = %7635
  %7651 = icmp eq i32 %7586, 0
  br i1 %7649, label %7652, label %7696

; <label>:7652                                    ; preds = %7650
  %7653 = select i1 %7651, float %7636, float 0.000000e+00
  %7654 = fsub fast float -0.000000e+00, %7653
  %7655 = call float @dx.op.unary.f32(i32 6, float %7654)  ; FAbs(value)
  %7656 = fmul fast float %7653, %7567
  %7657 = fadd fast float %7656, %7580
  %7658 = fmul fast float %7655, %7657
  %7659 = fsub fast float %7642, %7658
  %7660 = fsub fast float %7636, %7655
  %7661 = select i1 %7651, float %7660, float 0.000000e+00
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.CBufRet.f32 %7662, 2
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7670 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7671, 3
  %7673 = call float @dx.op.binary.f32(i32 36, float %7659, float %7672)  ; FMin(a,b)
  %7674 = fmul fast float %7670, %7661
  %7675 = call float @dx.op.unary.f32(i32 7, float %7674)  ; Saturate(value)
  %7676 = fsub fast float %7667, %7663
  %7677 = fsub fast float %7668, %7664
  %7678 = fsub fast float %7669, %7665
  %7679 = fmul fast float %7675, %7676
  %7680 = fmul fast float %7675, %7677
  %7681 = fmul fast float %7675, %7678
  %7682 = fadd fast float %7679, %7663
  %7683 = fadd fast float %7680, %7664
  %7684 = fadd fast float %7681, %7665
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = fadd fast float %7687, %7686
  %7689 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7691 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7692 = fadd fast float %7691, %7690
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fmul fast float %7689, %7673
  %7695 = fmul fast float %7694, %7693
  br label %7937

; <label>:7696                                    ; preds = %7650
  br i1 %7651, label %7697, label %7718

; <label>:7697                                    ; preds = %7696
  %7698 = call float @dx.op.binary.f32(i32 36, float %7647, float %7637)  ; FMin(a,b)
  %7699 = fsub fast float %7647, %7698
  %7700 = fsub fast float %7699, %7636
  %7701 = call float @dx.op.unary.f32(i32 6, float %7700)  ; FAbs(value)
  %7702 = fadd fast float %7699, %7636
  %7703 = fmul fast float %7702, %7567
  %7704 = fadd fast float %7703, %7580
  %7705 = fmul fast float %7704, %7701
  %7706 = fsub fast float %7642, %7705
  br label %7718

; <label>:7707                                    ; preds = %7635
  br i1 %7649, label %7708, label %7718

; <label>:7708                                    ; preds = %7707
  %7709 = call float @dx.op.binary.f32(i32 35, float %7637, float %7647)  ; FMax(a,b)
  %7710 = icmp eq i32 %7586, 0
  %7711 = select i1 %7710, float %7647, float 0.000000e+00
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = call float @dx.op.unary.f32(i32 6, float %7712)  ; FAbs(value)
  %7714 = fmul fast float %7711, %7567
  %7715 = fadd fast float %7714, %7580
  %7716 = fmul fast float %7713, %7715
  %7717 = fsub fast float %7642, %7716
  br label %7718

; <label>:7718                                    ; preds = %7708, %7707, %7697, %7696
  %7719 = phi float [ %7637, %7696 ], [ %7637, %7697 ], [ %7709, %7708 ], [ %7637, %7707 ]
  %7720 = phi float [ 0.000000e+00, %7696 ], [ %7701, %7697 ], [ %7713, %7708 ], [ 0.000000e+00, %7707 ]
  %7721 = phi float [ %7642, %7696 ], [ %7706, %7697 ], [ %7717, %7708 ], [ %7642, %7707 ]
  %7722 = phi float [ %7647, %7696 ], [ %7647, %7697 ], [ %7636, %7708 ], [ %7636, %7707 ]
  %7723 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7723, align 4, !tbaa !111, !noalias !113
  %7724 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7724, align 4, !tbaa !111, !noalias !113
  %7725 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7725, align 4, !tbaa !111, !noalias !113
  %7726 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7726, align 4, !tbaa !111, !noalias !113
  %7727 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7727, align 4, !tbaa !111, !noalias !113
  %7728 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7728, align 4, !tbaa !111, !noalias !113
  %7729 = icmp sgt i32 %7588, 0
  br i1 %7729, label %7730, label %7791

; <label>:7730                                    ; preds = %7718
  br label %7731

; <label>:7731                                    ; preds = %7780, %7730
  %7732 = phi i32 [ %7781, %7780 ], [ 0, %7730 ]
  %7733 = phi i32 [ %7782, %7780 ], [ 0, %7730 ]
  %7734 = add nuw i32 %7733, 171
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %7734)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 0
  %7737 = extractvalue %dx.types.CBufRet.f32 %7735, 1
  %7738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7739 = extractvalue %dx.types.CBufRet.f32 %7738, 0
  %7740 = extractvalue %dx.types.CBufRet.f32 %7738, 1
  %7741 = fsub fast float %7736, %7739
  %7742 = fsub fast float %7737, %7740
  %7743 = extractvalue %dx.types.CBufRet.f32 %7735, 2
  %7744 = fsub fast float -0.000000e+00, %7741
  %7745 = fsub fast float -0.000000e+00, %7742
  %7746 = call float @dx.op.dot2.f32(i32 54, float %7565, float %7566, float %7744, float %7745)  ; Dot2(ax,ay,bx,by)
  %7747 = fmul fast float %7746, 2.000000e+00
  %7748 = call float @dx.op.dot2.f32(i32 54, float %7744, float %7745, float %7744, float %7745)  ; Dot2(ax,ay,bx,by)
  %7749 = fmul fast float %7743, %7743
  %7750 = fsub fast float %7748, %7749
  %7751 = fmul fast float %7747, %7747
  %7752 = fmul fast float %7608, %7750
  %7753 = fsub fast float %7751, %7752
  %7754 = fcmp fast ogt float %7753, 0.000000e+00
  br i1 %7754, label %7755, label %7770

; <label>:7755                                    ; preds = %7731
  %7756 = fcmp fast ogt float %7747, 0.000000e+00
  %7757 = call float @dx.op.unary.f32(i32 24, float %7753)  ; Sqrt(value)
  %7758 = fsub fast float -0.000000e+00, %7757
  %7759 = select i1 %7756, float %7757, float %7758
  %7760 = fadd fast float %7759, %7747
  %7761 = fmul float %7760, -5.000000e-01
  %7762 = fdiv fast float %7761, %7601
  %7763 = call float @dx.op.binary.f32(i32 35, float %7762, float 0.000000e+00)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7636, float %7763)  ; FMin(a,b)
  %7765 = fdiv fast float %7750, %7761
  %7766 = call float @dx.op.binary.f32(i32 35, float %7765, float 0.000000e+00)  ; FMax(a,b)
  %7767 = call float @dx.op.binary.f32(i32 36, float %7636, float %7766)  ; FMin(a,b)
  %7768 = call float @dx.op.binary.f32(i32 36, float %7764, float %7767)  ; FMin(a,b)
  %7769 = call float @dx.op.binary.f32(i32 35, float %7764, float %7767)  ; FMax(a,b)
  br label %7770

; <label>:7770                                    ; preds = %7755, %7731
  %7771 = phi float [ %7769, %7755 ], [ -1.000000e+00, %7731 ]
  %7772 = phi float [ %7768, %7755 ], [ -1.000000e+00, %7731 ]
  %7773 = phi i1 [ true, %7755 ], [ false, %7731 ]
  br i1 %7773, label %7774, label %7780

; <label>:7774                                    ; preds = %7770
  %7775 = call float @dx.op.binary.f32(i32 35, float %7719, float %7772)  ; FMax(a,b)
  %7776 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7733
  store float %7775, float* %7776, align 4, !tbaa !111, !noalias !113
  %7777 = call float @dx.op.binary.f32(i32 35, float %7719, float %7771)  ; FMax(a,b)
  %7778 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7733
  store float %7777, float* %7778, align 4, !tbaa !111, !noalias !113
  %7779 = add nsw i32 %7732, 1
  br label %7780

; <label>:7780                                    ; preds = %7774, %7770
  %7781 = phi i32 [ %7779, %7774 ], [ %7732, %7770 ]
  %7782 = add nuw nsw i32 %7733, 1
  %7783 = icmp eq i32 %7782, %7588
  br i1 %7783, label %7784, label %7731

; <label>:7784                                    ; preds = %7780
  %7785 = load float, float* %7725, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7786 = load float, float* %7724, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7787 = load float, float* %7723, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7788 = load float, float* %7728, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7789 = load float, float* %7727, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7790 = load float, float* %7726, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7791

; <label>:7791                                    ; preds = %7784, %7718
  %7792 = phi float [ -1.000000e+00, %7718 ], [ %7790, %7784 ]
  %7793 = phi float [ -1.000000e+00, %7718 ], [ %7789, %7784 ]
  %7794 = phi float [ -1.000000e+00, %7718 ], [ %7788, %7784 ]
  %7795 = phi float [ -1.000000e+00, %7718 ], [ %7787, %7784 ]
  %7796 = phi float [ -1.000000e+00, %7718 ], [ %7786, %7784 ]
  %7797 = phi float [ -1.000000e+00, %7718 ], [ %7785, %7784 ]
  %7798 = phi i32 [ 0, %7718 ], [ %7781, %7784 ]
  %7799 = call float @dx.op.binary.f32(i32 36, float %7796, float %7797)  ; FMin(a,b)
  %7800 = call float @dx.op.binary.f32(i32 36, float %7795, float %7799)  ; FMin(a,b)
  %7801 = call float @dx.op.binary.f32(i32 35, float %7795, float %7796)  ; FMax(a,b)
  %7802 = call float @dx.op.binary.f32(i32 36, float %7801, float %7797)  ; FMin(a,b)
  %7803 = call float @dx.op.binary.f32(i32 36, float %7795, float %7796)  ; FMin(a,b)
  %7804 = call float @dx.op.binary.f32(i32 35, float %7803, float %7802)  ; FMax(a,b)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7796, float %7797)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7795, float %7805)  ; FMax(a,b)
  store float %7800, float* %7723, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7804, float* %7724, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7806, float* %7725, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7807 = call float @dx.op.binary.f32(i32 36, float %7793, float %7794)  ; FMin(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7792, float %7807)  ; FMin(a,b)
  %7809 = call float @dx.op.binary.f32(i32 35, float %7792, float %7793)  ; FMax(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7809, float %7794)  ; FMin(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7792, float %7793)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 35, float %7811, float %7810)  ; FMax(a,b)
  %7813 = call float @dx.op.binary.f32(i32 35, float %7793, float %7794)  ; FMax(a,b)
  %7814 = call float @dx.op.binary.f32(i32 35, float %7792, float %7813)  ; FMax(a,b)
  store float %7808, float* %7726, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7812, float* %7727, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7814, float* %7728, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7815 = sub nsw i32 3, %7798
  %7816 = icmp sgt i32 %7815, 2
  br i1 %7816, label %7817, label %7855

; <label>:7817                                    ; preds = %7791
  %7818 = icmp eq i32 %7586, 0
  %7819 = fsub fast float %7636, %7720
  %7820 = select i1 %7818, float %7819, float %7720
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7828 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7829 = extractvalue %dx.types.CBufRet.f32 %7825, 3
  %7830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.f32 %7830, 3
  %7832 = call float @dx.op.binary.f32(i32 36, float %7721, float %7831)  ; FMin(a,b)
  %7833 = fmul fast float %7829, %7820
  %7834 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7835 = fsub fast float %7826, %7822
  %7836 = fsub fast float %7827, %7823
  %7837 = fsub fast float %7828, %7824
  %7838 = fmul fast float %7834, %7835
  %7839 = fmul fast float %7834, %7836
  %7840 = fmul fast float %7834, %7837
  %7841 = fadd fast float %7838, %7822
  %7842 = fadd fast float %7839, %7823
  %7843 = fadd fast float %7840, %7824
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7847 = fadd fast float %7846, %7845
  %7848 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7849 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7850 = extractvalue %dx.types.CBufRet.f32 %7844, 3
  %7851 = fadd fast float %7850, %7849
  %7852 = call float @dx.op.unary.f32(i32 7, float %7851)  ; Saturate(value)
  %7853 = fmul fast float %7848, %7832
  %7854 = fmul fast float %7853, %7852
  br label %7937

; <label>:7855                                    ; preds = %7791
  %7856 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7815
  %7857 = load float, float* %7856, align 4, !tbaa !111, !noalias !113
  %7858 = fcmp fast olt float %7857, %7722
  %7859 = icmp sgt i32 %7798, 0
  %7860 = and i1 %7859, %7858
  br i1 %7860, label %7861, label %7898

; <label>:7861                                    ; preds = %7855
  br label %7862

; <label>:7862                                    ; preds = %7891, %7861
  %7863 = phi float [ %7892, %7891 ], [ %7720, %7861 ]
  %7864 = phi float [ %7893, %7891 ], [ %7721, %7861 ]
  %7865 = phi float [ %7873, %7891 ], [ %7857, %7861 ]
  %7866 = phi i32 [ %7870, %7891 ], [ %7815, %7861 ]
  %7867 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7866
  %7868 = load float, float* %7867, align 4, !tbaa !111, !noalias !113
  %7869 = icmp slt i32 %7866, 2
  %7870 = add nsw i32 %7866, 1
  %7871 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7870
  %7872 = load float, float* %7871, align 4, !tbaa !111, !noalias !113
  %7873 = select i1 %7869, float %7872, float %7636
  %7874 = call float @dx.op.binary.f32(i32 36, float %7873, float %7868)  ; FMin(a,b)
  %7875 = call float @dx.op.binary.f32(i32 36, float %7722, float %7874)  ; FMin(a,b)
  %7876 = icmp eq i32 %7586, 0
  %7877 = fadd fast float %7875, %7865
  %7878 = fmul fast float %7877, %7567
  %7879 = fadd fast float %7878, %7580
  br i1 %7876, label %7885, label %7880

; <label>:7880                                    ; preds = %7862
  %7881 = fsub fast float %7875, %7865
  %7882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7881)  ; FMax(a,b)
  %7883 = fmul fast float %7882, %7879
  %7884 = fadd fast float %7883, %7864
  br label %7891

; <label>:7885                                    ; preds = %7862
  %7886 = fsub fast float %7865, %7875
  %7887 = call float @dx.op.unary.f32(i32 6, float %7886)  ; FAbs(value)
  %7888 = fadd fast float %7887, %7863
  %7889 = fmul fast float %7887, %7879
  %7890 = fsub fast float %7864, %7889
  br label %7891

; <label>:7891                                    ; preds = %7885, %7880
  %7892 = phi float [ %7882, %7880 ], [ %7888, %7885 ]
  %7893 = phi float [ %7884, %7880 ], [ %7890, %7885 ]
  %7894 = fcmp fast olt float %7873, %7722
  %7895 = icmp slt i32 %7870, 3
  %7896 = and i1 %7895, %7894
  br i1 %7896, label %7862, label %7897

; <label>:7897                                    ; preds = %7891
  br label %7898

; <label>:7898                                    ; preds = %7897, %7855
  %7899 = phi float [ %7720, %7855 ], [ %7892, %7897 ]
  %7900 = phi float [ %7721, %7855 ], [ %7893, %7897 ]
  %7901 = fsub fast float %7636, %7899
  %7902 = select i1 %7638, float %7899, float %7901
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7914 = call float @dx.op.binary.f32(i32 36, float %7900, float %7913)  ; FMin(a,b)
  %7915 = fmul fast float %7911, %7902
  %7916 = call float @dx.op.unary.f32(i32 7, float %7915)  ; Saturate(value)
  %7917 = fsub fast float %7908, %7904
  %7918 = fsub fast float %7909, %7905
  %7919 = fsub fast float %7910, %7906
  %7920 = fmul fast float %7916, %7917
  %7921 = fmul fast float %7916, %7918
  %7922 = fmul fast float %7916, %7919
  %7923 = fadd fast float %7920, %7904
  %7924 = fadd fast float %7921, %7905
  %7925 = fadd fast float %7922, %7906
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = fadd fast float %7928, %7927
  %7930 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7932 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7933 = fadd fast float %7932, %7931
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = fmul fast float %7930, %7914
  %7936 = fmul fast float %7935, %7934
  br label %7937

; <label>:7937                                    ; preds = %7898, %7817, %7652, %7634, %7632
  %7938 = phi float [ %7661, %7652 ], [ %7820, %7817 ], [ %7902, %7898 ], [ 0.000000e+00, %7632 ], [ 0.000000e+00, %7634 ]
  %7939 = phi float [ %7695, %7652 ], [ %7854, %7817 ], [ %7936, %7898 ], [ 0.000000e+00, %7632 ], [ 0.000000e+00, %7634 ]
  %7940 = phi float [ %7682, %7652 ], [ %7841, %7817 ], [ %7923, %7898 ], [ 0.000000e+00, %7632 ], [ 0.000000e+00, %7634 ]
  %7941 = phi float [ %7683, %7652 ], [ %7842, %7817 ], [ %7924, %7898 ], [ 0.000000e+00, %7632 ], [ 0.000000e+00, %7634 ]
  %7942 = phi float [ %7684, %7652 ], [ %7843, %7817 ], [ %7925, %7898 ], [ 0.000000e+00, %7632 ], [ 0.000000e+00, %7634 ]
  %7943 = fmul fast float %7575, %7939
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 2
  %7946 = fsub fast float %7582, %7945
  %7947 = fcmp fast olt float %7943, -2.000000e+01
  %7948 = call float @dx.op.unary.f32(i32 21, float %7943)  ; Exp(value)
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 2
  %7951 = extractvalue %dx.types.CBufRet.f32 %7949, 3
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 2
  %7954 = fmul fast float %7951, %7946
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fsub fast float 1.000000e+00, %7955
  %7957 = fmul fast float %7567, 5.000000e-01
  %7958 = fadd fast float %7957, 5.000000e-01
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = fsub fast float 1.000000e+00, %7959
  %7961 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7956)  ; FMax(a,b)
  %7962 = fdiv fast float %7960, %7961
  %7963 = fsub fast float %7946, %7524
  %7964 = call float @dx.op.unary.f32(i32 6, float %7963)  ; FAbs(value)
  %7965 = fmul fast float %7964, %7950
  %7966 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7967 = fsub fast float 1.000000e+00, %7965
  %7968 = fmul fast float %7967, %7966
  %7969 = fadd fast float %7968, %7965
  %7970 = fmul fast float %7953, %7946
  %7971 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7972 = fsub fast float 1.000000e+00, %7969
  %7973 = fmul fast float %7972, %7971
  %7974 = fadd fast float %7973, %7969
  %7975 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7976 = fadd fast float %7948, -1.000000e+00
  %7977 = select i1 %7947, float -1.000000e+00, float %7976
  %7978 = fmul fast float %7975, %7977
  %7979 = fadd fast float %7978, 1.000000e+00
  %7980 = fsub fast float -0.000000e+00, %7978
  %7981 = fmul fast float %7940, %7980
  %7982 = fmul fast float %7941, %7980
  %7983 = fmul fast float %7942, %7980
  br label %7984

; <label>:7984                                    ; preds = %7937, %7533
  %7985 = phi float [ %7938, %7937 ], [ 0.000000e+00, %7533 ]
  %7986 = phi float [ %7979, %7937 ], [ 1.000000e+00, %7533 ]
  %7987 = phi float [ %7981, %7937 ], [ 0.000000e+00, %7533 ]
  %7988 = phi float [ %7982, %7937 ], [ 0.000000e+00, %7533 ]
  %7989 = phi float [ %7983, %7937 ], [ 0.000000e+00, %7533 ]
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7992 = fsub fast float 1.000000e+00, %7986
  %7993 = fmul fast float %7992, %7568
  %7994 = fmul fast float %7993, %7991
  %7995 = fsub fast float %7568, %7994
  br i1 %7561, label %7996, label %8025, !dx.controlflow.hints !149

; <label>:7996                                    ; preds = %7984
  %7997 = fmul fast float %7569, %7558
  %7998 = fadd fast float %7997, %7559
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fmul fast float %7540, %7995
  %8001 = fsub fast float -0.000000e+00, %8000
  %8002 = fmul fast float %7541, %7995
  %8003 = fsub fast float -0.000000e+00, %8002
  %8004 = call float @dx.op.unary.f32(i32 21, float %8001)  ; Exp(value)
  %8005 = call float @dx.op.unary.f32(i32 21, float %8003)  ; Exp(value)
  %8006 = call float @dx.op.binary.f32(i32 35, float %7548, float %8004)  ; FMax(a,b)
  %8007 = call float @dx.op.binary.f32(i32 35, float %7548, float %8005)  ; FMax(a,b)
  %8008 = fsub fast float %8007, %8006
  %8009 = fmul fast float %8008, %7999
  %8010 = fadd fast float %8009, %8006
  %8011 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  %8012 = fsub fast float %7545, %7550
  %8013 = fsub fast float %7546, %7551
  %8014 = fsub fast float %7547, %7552
  %8015 = fmul fast float %7999, %8012
  %8016 = fmul fast float %7999, %8013
  %8017 = fmul fast float %7999, %8014
  %8018 = fadd fast float %8015, %7550
  %8019 = fadd fast float %8016, %7551
  %8020 = fadd fast float %8017, %7552
  %8021 = fsub fast float 1.000000e+00, %8011
  %8022 = fmul fast float %8021, %8018
  %8023 = fmul fast float %8021, %8019
  %8024 = fmul fast float %8021, %8020
  br label %8084

; <label>:8025                                    ; preds = %7984
  %8026 = fmul fast float %7995, %7557
  %8027 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  %8028 = fsub fast float 2.000000e+00, %8027
  %8029 = fmul fast float %8027, 9.921875e-01
  %8030 = fmul fast float %8029, %8028
  %8031 = fadd fast float %8030, 3.906250e-03
  %8032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %8031, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8033 = extractvalue %dx.types.ResRet.f32 %8032, 0
  %8034 = fsub fast float %8027, %8033
  %8035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8034)  ; FMax(a,b)
  %8036 = fmul fast float %7543, %7524
  %8037 = call float @dx.op.unary.f32(i32 6, float %8036)  ; FAbs(value)
  %8038 = fcmp fast ogt float %8037, 0x3EB0C6F7A0000000
  br i1 %8038, label %8039, label %8045, !dx.controlflow.hints !150

; <label>:8039                                    ; preds = %8025
  %8040 = fmul fast float %8036, 0xBFF7154760000000
  %8041 = call float @dx.op.unary.f32(i32 21, float %8040)  ; Exp(value)
  %8042 = fsub fast float 1.000000e+00, %8041
  %8043 = fdiv fast float %8042, %8036
  %8044 = fmul fast float %8043, %7553
  br label %8045

; <label>:8045                                    ; preds = %8039, %8025
  %8046 = phi float [ %8044, %8039 ], [ %7553, %8025 ]
  %8047 = fadd fast float %8046, %7555
  %8048 = fmul fast float %8047, %8035
  %8049 = fmul fast float %7540, %8048
  %8050 = fsub fast float -0.000000e+00, %8049
  %8051 = fmul fast float %7541, %8048
  %8052 = fsub fast float -0.000000e+00, %8051
  %8053 = fmul fast float %7542, %8048
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = call float @dx.op.unary.f32(i32 21, float %8050)  ; Exp(value)
  %8056 = call float @dx.op.unary.f32(i32 21, float %8052)  ; Exp(value)
  %8057 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8058 = fmul fast float %7569, %7569
  %8059 = fadd fast float %8058, 1.000000e+00
  %8060 = fmul fast float %8059, 0x3FAE8EC8A0000000
  %8061 = fmul fast float %8060, %7550
  %8062 = fmul fast float %8060, %7551
  %8063 = fmul fast float %8060, %7552
  %8064 = fmul fast float %7569, %7548
  %8065 = fsub fast float 1.000000e+00, %8064
  %8066 = fmul fast float %7548, %7548
  %8067 = fsub fast float 1.000000e+00, %8066
  %8068 = fmul fast float %8067, 0x3FB45F3060000000
  %8069 = fmul fast float %8065, %8065
  %8070 = fdiv fast float 1.000000e+00, %8069
  %8071 = fmul fast float %8068, %8070
  %8072 = fmul fast float %8071, %7545
  %8073 = fmul fast float %8071, %7546
  %8074 = fmul fast float %8071, %7547
  %8075 = fadd fast float %8072, %8061
  %8076 = fadd fast float %8073, %8062
  %8077 = fadd fast float %8074, %8063
  %8078 = fsub fast float 1.000000e+00, %8055
  %8079 = fsub fast float 1.000000e+00, %8056
  %8080 = fsub fast float 1.000000e+00, %8057
  %8081 = fmul fast float %8075, %8078
  %8082 = fmul fast float %8076, %8079
  %8083 = fmul fast float %8077, %8080
  br label %8084

; <label>:8084                                    ; preds = %8045, %7996
  %8085 = phi float [ %8022, %7996 ], [ %8081, %8045 ]
  %8086 = phi float [ %8023, %7996 ], [ %8082, %8045 ]
  %8087 = phi float [ %8024, %7996 ], [ %8083, %8045 ]
  %8088 = phi float [ %8011, %7996 ], [ %8055, %8045 ]
  %8089 = phi float [ %8011, %7996 ], [ %8056, %8045 ]
  %8090 = phi float [ %8011, %7996 ], [ %8057, %8045 ]
  br i1 %7577, label %8091, label %8289, !dx.controlflow.hints !151

; <label>:8091                                    ; preds = %8084
  %8092 = extractvalue %dx.types.CBufRet.f32 %7990, 0
  %8093 = fmul fast float %8092, %7992
  %8094 = fsub fast float %7987, %8085
  %8095 = fsub fast float %7988, %8086
  %8096 = fsub fast float %7989, %8087
  %8097 = fmul fast float %8093, %8094
  %8098 = fmul fast float %8093, %8095
  %8099 = fmul fast float %8093, %8096
  %8100 = fadd fast float %8097, %8085
  %8101 = fadd fast float %8098, %8086
  %8102 = fadd fast float %8099, %8087
  %8103 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8088)  ; FMax(a,b)
  %8104 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8089)  ; FMax(a,b)
  %8105 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8090)  ; FMax(a,b)
  %8106 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7986)  ; FMax(a,b)
  %8107 = call float @dx.op.binary.f32(i32 35, float %7985, float %7995)  ; FMax(a,b)
  %8108 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8107)  ; FMax(a,b)
  %8109 = fdiv fast float %7985, %8108
  %8110 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8111 = fdiv fast float %7995, %8108
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fcmp fast une float %8106, 1.000000e+00
  br i1 %8113, label %8114, label %8127, !dx.controlflow.hints !152

; <label>:8114                                    ; preds = %8091
  %8115 = call float @dx.op.unary.f32(i32 23, float %8106)  ; Log(value)
  %8116 = fmul fast float %8115, 0x3FE62E4300000000
  %8117 = fmul fast float %7987, %8116
  %8118 = fsub fast float -0.000000e+00, %8117
  %8119 = fmul fast float %7988, %8116
  %8120 = fsub fast float -0.000000e+00, %8119
  %8121 = fmul fast float %7989, %8116
  %8122 = fsub fast float -0.000000e+00, %8121
  %8123 = fsub fast float 1.000000e+00, %8106
  %8124 = fdiv fast float %8118, %8123
  %8125 = fdiv fast float %8120, %8123
  %8126 = fdiv fast float %8122, %8123
  br label %8127

; <label>:8127                                    ; preds = %8114, %8091
  %8128 = phi float [ %8124, %8114 ], [ %7987, %8091 ]
  %8129 = phi float [ %8125, %8114 ], [ %7988, %8091 ]
  %8130 = phi float [ %8126, %8114 ], [ %7989, %8091 ]
  %8131 = phi float [ %8116, %8114 ], [ 0.000000e+00, %8091 ]
  %8132 = fcmp fast une float %8103, 1.000000e+00
  br i1 %8132, label %8133, label %8140, !dx.controlflow.hints !153

; <label>:8133                                    ; preds = %8127
  %8134 = call float @dx.op.unary.f32(i32 23, float %8103)  ; Log(value)
  %8135 = fmul fast float %8134, 0x3FE62E4300000000
  %8136 = fmul fast float %8100, %8135
  %8137 = fsub fast float -0.000000e+00, %8136
  %8138 = fsub fast float 1.000000e+00, %8103
  %8139 = fdiv fast float %8137, %8138
  br label %8140

; <label>:8140                                    ; preds = %8133, %8127
  %8141 = phi float [ %8139, %8133 ], [ %8100, %8127 ]
  %8142 = phi float [ %8135, %8133 ], [ 0.000000e+00, %8127 ]
  %8143 = fcmp fast une float %8104, 1.000000e+00
  br i1 %8143, label %8144, label %8151, !dx.controlflow.hints !153

; <label>:8144                                    ; preds = %8140
  %8145 = call float @dx.op.unary.f32(i32 23, float %8104)  ; Log(value)
  %8146 = fmul fast float %8145, 0x3FE62E4300000000
  %8147 = fmul fast float %8101, %8146
  %8148 = fsub fast float -0.000000e+00, %8147
  %8149 = fsub fast float 1.000000e+00, %8104
  %8150 = fdiv fast float %8148, %8149
  br label %8151

; <label>:8151                                    ; preds = %8144, %8140
  %8152 = phi float [ %8150, %8144 ], [ %8101, %8140 ]
  %8153 = phi float [ %8146, %8144 ], [ 0.000000e+00, %8140 ]
  %8154 = fcmp fast une float %8105, 1.000000e+00
  br i1 %8154, label %8155, label %8162, !dx.controlflow.hints !153

; <label>:8155                                    ; preds = %8151
  %8156 = call float @dx.op.unary.f32(i32 23, float %8105)  ; Log(value)
  %8157 = fmul fast float %8156, 0x3FE62E4300000000
  %8158 = fmul fast float %8102, %8157
  %8159 = fsub fast float -0.000000e+00, %8158
  %8160 = fsub fast float 1.000000e+00, %8105
  %8161 = fdiv fast float %8159, %8160
  br label %8162

; <label>:8162                                    ; preds = %8155, %8151
  %8163 = phi float [ %8161, %8155 ], [ %8102, %8151 ]
  %8164 = phi float [ %8157, %8155 ], [ 0.000000e+00, %8151 ]
  %8165 = fmul fast float %8128, %8112
  %8166 = fmul fast float %8129, %8112
  %8167 = fmul fast float %8130, %8112
  %8168 = fmul fast float %8131, %8112
  %8169 = fmul fast float %8141, %8110
  %8170 = fmul fast float %8152, %8110
  %8171 = fmul fast float %8163, %8110
  %8172 = fmul fast float %8142, %8110
  %8173 = fmul fast float %8153, %8110
  %8174 = fmul fast float %8164, %8110
  %8175 = fadd fast float %8169, %8165
  %8176 = fadd fast float %8170, %8166
  %8177 = fadd fast float %8171, %8167
  %8178 = fadd fast float %8172, %8168
  %8179 = fadd fast float %8173, %8168
  %8180 = fadd fast float %8174, %8168
  %8181 = fcmp fast une float %8178, 0.000000e+00
  br i1 %8181, label %8182, label %8189, !dx.controlflow.hints !154

; <label>:8182                                    ; preds = %8162
  %8183 = fmul fast float %8178, 0x3FF7154760000000
  %8184 = call float @dx.op.unary.f32(i32 21, float %8183)  ; Exp(value)
  %8185 = fsub fast float 1.000000e+00, %8184
  %8186 = fmul fast float %8175, %8185
  %8187 = fsub fast float -0.000000e+00, %8186
  %8188 = fdiv fast float %8187, %8178
  br label %8189

; <label>:8189                                    ; preds = %8182, %8162
  %8190 = phi float [ %8184, %8182 ], [ 1.000000e+00, %8162 ]
  %8191 = phi float [ %8188, %8182 ], [ %8175, %8162 ]
  %8192 = fcmp fast une float %8179, 0.000000e+00
  br i1 %8192, label %8193, label %8200, !dx.controlflow.hints !154

; <label>:8193                                    ; preds = %8189
  %8194 = fmul fast float %8179, 0x3FF7154760000000
  %8195 = call float @dx.op.unary.f32(i32 21, float %8194)  ; Exp(value)
  %8196 = fsub fast float 1.000000e+00, %8195
  %8197 = fmul fast float %8176, %8196
  %8198 = fsub fast float -0.000000e+00, %8197
  %8199 = fdiv fast float %8198, %8179
  br label %8200

; <label>:8200                                    ; preds = %8193, %8189
  %8201 = phi float [ %8195, %8193 ], [ 1.000000e+00, %8189 ]
  %8202 = phi float [ %8199, %8193 ], [ %8176, %8189 ]
  %8203 = fcmp fast une float %8180, 0.000000e+00
  br i1 %8203, label %8204, label %8211, !dx.controlflow.hints !154

; <label>:8204                                    ; preds = %8200
  %8205 = fmul fast float %8180, 0x3FF7154760000000
  %8206 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8207 = fsub fast float 1.000000e+00, %8206
  %8208 = fmul fast float %8177, %8207
  %8209 = fsub fast float -0.000000e+00, %8208
  %8210 = fdiv fast float %8209, %8180
  br label %8211

; <label>:8211                                    ; preds = %8204, %8200
  %8212 = phi float [ %8206, %8204 ], [ 1.000000e+00, %8200 ]
  %8213 = phi float [ %8210, %8204 ], [ %8177, %8200 ]
  %8214 = fcmp fast ogt float %8110, %8112
  br i1 %8214, label %8215, label %8235

; <label>:8215                                    ; preds = %8211
  %8216 = fsub fast float 1.000000e+00, %8112
  %8217 = fmul fast float %8128, %8216
  %8218 = fmul fast float %8129, %8216
  %8219 = fmul fast float %8130, %8216
  %8220 = fmul fast float %8131, %8216
  %8221 = fcmp fast une float %8220, 0.000000e+00
  br i1 %8221, label %8222, label %8273, !dx.controlflow.hints !155

; <label>:8222                                    ; preds = %8215
  %8223 = fmul fast float %8220, 0x3FF7154760000000
  %8224 = call float @dx.op.unary.f32(i32 21, float %8223)  ; Exp(value)
  %8225 = fsub fast float 1.000000e+00, %8224
  %8226 = fmul fast float %8217, %8225
  %8227 = fsub fast float -0.000000e+00, %8226
  %8228 = fmul fast float %8218, %8225
  %8229 = fsub fast float -0.000000e+00, %8228
  %8230 = fmul fast float %8219, %8225
  %8231 = fsub fast float -0.000000e+00, %8230
  %8232 = fdiv fast float %8227, %8220
  %8233 = fdiv fast float %8229, %8220
  %8234 = fdiv fast float %8231, %8220
  br label %8273

; <label>:8235                                    ; preds = %8211
  %8236 = fsub fast float 1.000000e+00, %8110
  %8237 = fmul fast float %8141, %8236
  %8238 = fmul fast float %8152, %8236
  %8239 = fmul fast float %8163, %8236
  %8240 = fmul fast float %8142, %8236
  %8241 = fmul fast float %8153, %8236
  %8242 = fmul fast float %8164, %8236
  %8243 = fcmp fast une float %8240, 0.000000e+00
  br i1 %8243, label %8244, label %8251, !dx.controlflow.hints !154

; <label>:8244                                    ; preds = %8235
  %8245 = fmul fast float %8240, 0x3FF7154760000000
  %8246 = call float @dx.op.unary.f32(i32 21, float %8245)  ; Exp(value)
  %8247 = fsub fast float 1.000000e+00, %8246
  %8248 = fmul fast float %8237, %8247
  %8249 = fsub fast float -0.000000e+00, %8248
  %8250 = fdiv fast float %8249, %8240
  br label %8251

; <label>:8251                                    ; preds = %8244, %8235
  %8252 = phi float [ %8250, %8244 ], [ %8237, %8235 ]
  %8253 = phi float [ %8246, %8244 ], [ 1.000000e+00, %8235 ]
  %8254 = fcmp fast une float %8241, 0.000000e+00
  br i1 %8254, label %8255, label %8262, !dx.controlflow.hints !154

; <label>:8255                                    ; preds = %8251
  %8256 = fmul fast float %8241, 0x3FF7154760000000
  %8257 = call float @dx.op.unary.f32(i32 21, float %8256)  ; Exp(value)
  %8258 = fsub fast float 1.000000e+00, %8257
  %8259 = fmul fast float %8238, %8258
  %8260 = fsub fast float -0.000000e+00, %8259
  %8261 = fdiv fast float %8260, %8241
  br label %8262

; <label>:8262                                    ; preds = %8255, %8251
  %8263 = phi float [ %8261, %8255 ], [ %8238, %8251 ]
  %8264 = phi float [ %8257, %8255 ], [ 1.000000e+00, %8251 ]
  %8265 = fcmp fast une float %8242, 0.000000e+00
  br i1 %8265, label %8266, label %8273, !dx.controlflow.hints !154

; <label>:8266                                    ; preds = %8262
  %8267 = fmul fast float %8242, 0x3FF7154760000000
  %8268 = call float @dx.op.unary.f32(i32 21, float %8267)  ; Exp(value)
  %8269 = fsub fast float 1.000000e+00, %8268
  %8270 = fmul fast float %8239, %8269
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = fdiv fast float %8271, %8242
  br label %8273

; <label>:8273                                    ; preds = %8266, %8262, %8222, %8215
  %8274 = phi float [ %8272, %8266 ], [ %8234, %8222 ], [ %8219, %8215 ], [ %8239, %8262 ]
  %8275 = phi float [ %8263, %8266 ], [ %8233, %8222 ], [ %8218, %8215 ], [ %8263, %8262 ]
  %8276 = phi float [ %8252, %8266 ], [ %8232, %8222 ], [ %8217, %8215 ], [ %8252, %8262 ]
  %8277 = phi float [ %8268, %8266 ], [ %8224, %8222 ], [ 1.000000e+00, %8215 ], [ 1.000000e+00, %8262 ]
  %8278 = phi float [ %8264, %8266 ], [ %8224, %8222 ], [ 1.000000e+00, %8215 ], [ %8264, %8262 ]
  %8279 = phi float [ %8253, %8266 ], [ %8224, %8222 ], [ 1.000000e+00, %8215 ], [ %8253, %8262 ]
  %8280 = fmul fast float %8279, %8191
  %8281 = fmul fast float %8278, %8202
  %8282 = fmul fast float %8277, %8213
  %8283 = fadd fast float %8280, %8276
  %8284 = fadd fast float %8281, %8275
  %8285 = fadd fast float %8282, %8274
  %8286 = fmul fast float %8279, %8190
  %8287 = fmul fast float %8278, %8201
  %8288 = fmul fast float %8277, %8212
  br label %8289

; <label>:8289                                    ; preds = %8273, %8084
  %8290 = phi float [ %8288, %8273 ], [ %8090, %8084 ]
  %8291 = phi float [ %8287, %8273 ], [ %8089, %8084 ]
  %8292 = phi float [ %8286, %8273 ], [ %8088, %8084 ]
  %8293 = phi float [ %8285, %8273 ], [ %8087, %8084 ]
  %8294 = phi float [ %8284, %8273 ], [ %8086, %8084 ]
  %8295 = phi float [ %8283, %8273 ], [ %8085, %8084 ]
  %8296 = fmul fast float %8295, %7249
  %8297 = fmul fast float %8294, %7250
  %8298 = fmul fast float %8293, %7251
  %8299 = fmul fast float %8292, %7532
  %8300 = call float @dx.op.dot3.f32(i32 55, float %8292, float %8291, float %8290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8301 = call float @dx.op.dot3.f32(i32 55, float %8296, float %8297, float %8298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8302 = select i1 %269, float %8300, float %8292
  %8303 = select i1 %269, float %8300, float %8291
  %8304 = select i1 %269, float 1.000000e+00, float %8290
  %8305 = select i1 %269, float %8301, float %8296
  %8306 = select i1 %269, float 0.000000e+00, float %8297
  %8307 = select i1 %269, float 0.000000e+00, float %8298
  %8308 = fmul fast float %8302, %7526
  %8309 = fmul fast float %8303, %7527
  %8310 = fmul fast float %8304, %7528
  %8311 = fadd fast float %8308, %8305
  %8312 = fadd fast float %8309, %8306
  %8313 = fadd fast float %8307, %8310
  %8314 = fmul fast float %8302, %7529
  %8315 = fmul fast float %8303, %7530
  %8316 = fmul fast float %8304, %7531
  %8317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.i32 %8317, 0
  %8319 = icmp eq i32 %8318, 0
  br i1 %8319, label %8687, label %8320, !dx.controlflow.hints !156

; <label>:8320                                    ; preds = %8289
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8323 = extractvalue %dx.types.CBufRet.f32 %8321, 3
  %8324 = fmul fast float %8322, %97
  %8325 = fmul fast float %8323, %98
  %8326 = fmul fast float %8324, 2.000000e+00
  %8327 = fmul fast float %8325, 2.000000e+00
  %8328 = fsub fast float 1.000000e+00, %8326
  %8329 = fsub fast float 1.000000e+00, %8327
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = fmul fast float %8328, %8331
  %8335 = fmul fast float %8328, %8332
  %8336 = fmul fast float %8328, %8333
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.CBufRet.f32 %8337, 2
  %8341 = fmul fast float %8329, %8338
  %8342 = fmul fast float %8329, %8339
  %8343 = fmul fast float %8329, %8340
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = fadd fast float %8341, %8345
  %8349 = fadd fast float %8348, %8334
  %8350 = fadd fast float %8342, %8346
  %8351 = fadd fast float %8350, %8335
  %8352 = fadd fast float %8343, %8347
  %8353 = fadd fast float %8352, %8336
  %8354 = fmul fast float %8349, %7525
  %8355 = fmul fast float %8351, %7525
  %8356 = fmul fast float %8353, %7525
  %8357 = fmul fast float %8354, %8354
  %8358 = fmul fast float %8355, %8355
  %8359 = fadd fast float %8357, %8358
  %8360 = fmul fast float %8356, %8356
  %8361 = fadd fast float %8359, %8360
  %8362 = call float @dx.op.unary.f32(i32 24, float %8361)  ; Sqrt(value)
  %8363 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %8364 = fsub fast float %8362, %8363
  %8365 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %8366 = fmul fast float %8364, %8365
  %8367 = call float @dx.op.unary.f32(i32 7, float %8366)  ; Saturate(value)
  %8368 = fadd fast float %8367, -5.000000e-01
  %8369 = fmul fast float %8368, 2.000000e+00
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8372 = call float @dx.op.binary.f32(i32 36, float %8371, float %8369)  ; FMin(a,b)
  %8373 = fsub fast float -0.000000e+00, %8371
  %8374 = fcmp fast ogt float %8372, %8373
  br i1 %8374, label %8375, label %8687, !dx.controlflow.hints !157

; <label>:8375                                    ; preds = %8320
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 3
  %8378 = fcmp fast ogt float %8377, 0.000000e+00
  br i1 %8378, label %8379, label %8454, !dx.controlflow.hints !158

; <label>:8379                                    ; preds = %8375
  %8380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8381 = extractvalue %dx.types.Dimensions %8380, 0
  %8382 = sitofp i32 %8381 to float
  %8383 = extractvalue %dx.types.Dimensions %8380, 1
  %8384 = sitofp i32 %8383 to float
  %8385 = fmul fast float %8324, %8382
  %8386 = fmul fast float %8325, %8384
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8389 = fsub fast float -0.000000e+00, %8388
  %8390 = fptoui float %8389 to i32
  %8391 = fptoui float %8385 to i32
  %8392 = fptoui float %8386 to i32
  %8393 = and i32 %8390, 31
  %8394 = lshr i32 %8391, %8393
  %8395 = lshr i32 %8392, %8393
  %8396 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8390, i32 %8394, i32 %8395, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8397 = extractvalue %dx.types.ResRet.f32 %8396, 0
  %8398 = fcmp fast olt float %8397, -1.000000e+00
  %8399 = fcmp fast ogt float %8397, -1.000000e+00
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8402 = select i1 %8399, float %8401, float 1.000000e+00
  %8403 = fadd fast float %8397, 1.000000e+00
  %8404 = fmul fast float %8402, %8403
  %8405 = call float @dx.op.unary.f32(i32 6, float %8404)  ; FAbs(value)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8407 = fcmp fast oge float %8405, %8406
  %8408 = select i1 %8407, float 0x4197782600000000, float %8405
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = extractvalue %dx.types.CBufRet.f32 %8409, 1
  %8412 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8413 = select i1 %8398, float %8410, float %8331
  %8414 = select i1 %8398, float %8411, float %8332
  %8415 = select i1 %8398, float %8412, float %8333
  %8416 = fmul fast float %8413, %8328
  %8417 = fmul fast float %8414, %8328
  %8418 = fmul fast float %8415, %8328
  %8419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.CBufRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.CBufRet.f32 %8419, 2
  %8423 = select i1 %8398, float %8420, float %8338
  %8424 = select i1 %8398, float %8421, float %8339
  %8425 = select i1 %8398, float %8422, float %8340
  %8426 = fmul fast float %8423, %8329
  %8427 = fmul fast float %8424, %8329
  %8428 = fmul fast float %8425, %8329
  %8429 = fadd fast float %8426, %8416
  %8430 = fadd fast float %8427, %8417
  %8431 = fadd fast float %8428, %8418
  %8432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.f32 %8432, 0
  %8434 = extractvalue %dx.types.CBufRet.f32 %8432, 1
  %8435 = extractvalue %dx.types.CBufRet.f32 %8432, 2
  %8436 = select i1 %8398, float %8433, float %8345
  %8437 = select i1 %8398, float %8434, float %8346
  %8438 = select i1 %8398, float %8435, float %8347
  %8439 = fadd fast float %8429, %8436
  %8440 = fadd fast float %8430, %8437
  %8441 = fadd fast float %8431, %8438
  %8442 = fmul fast float %8439, %8408
  %8443 = fmul fast float %8440, %8408
  %8444 = fmul fast float %8441, %8408
  %8445 = fmul fast float %8442, %8442
  %8446 = fmul fast float %8443, %8443
  %8447 = fadd fast float %8445, %8446
  %8448 = fmul fast float %8444, %8444
  %8449 = fadd fast float %8447, %8448
  %8450 = call float @dx.op.unary.f32(i32 24, float %8449)  ; Sqrt(value)
  %8451 = fsub fast float %8450, %8363
  %8452 = fmul fast float %8451, %8365
  %8453 = call float @dx.op.unary.f32(i32 7, float %8452)  ; Saturate(value)
  br label %8454

; <label>:8454                                    ; preds = %8379, %8375
  %8455 = phi float [ %8453, %8379 ], [ 1.000000e+00, %8375 ]
  %8456 = fmul fast float %8372, 5.000000e-01
  %8457 = fadd fast float %8456, 5.000000e-01
  %8458 = call float @dx.op.unary.f32(i32 22, float %8457)  ; Frc(value)
  %8459 = call float @dx.op.unary.f32(i32 27, float %8458)  ; Round_ni(value)
  %8460 = call float @dx.op.unary.f32(i32 22, float %8458)  ; Frc(value)
  %8461 = fmul fast float %8460, 2.000000e+00
  %8462 = fadd fast float %8461, -1.000000e+00
  %8463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %8324, float %8325, float %8459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8464 = extractvalue %dx.types.ResRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.ResRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.ResRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.ResRet.f32 %8463, 3
  %8468 = fadd fast float %8464, -5.000000e-01
  %8469 = fadd fast float %8466, -5.000000e-01
  %8470 = fmul fast float %8468, 0xBFD5555560000000
  %8471 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8469, float %8470)  ; FMad(a,b,c)
  %8472 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8465, float 0.000000e+00)  ; FMad(a,b,c)
  %8473 = fadd fast float %8472, %8467
  %8474 = fmul fast float %8468, -7.500000e-01
  %8475 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8469, float %8474)  ; FMad(a,b,c)
  %8476 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8465, float 0.000000e+00)  ; FMad(a,b,c)
  %8477 = fadd fast float %8476, %8467
  %8478 = call float @dx.op.binary.f32(i32 35, float %8471, float -1.000000e+00)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float %8473, float -1.000000e+00)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8475, float -1.000000e+00)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float %8477, float -1.000000e+00)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8478, float 1.000000e+00)  ; FMin(a,b)
  %8483 = call float @dx.op.binary.f32(i32 36, float %8479, float 1.000000e+00)  ; FMin(a,b)
  %8484 = call float @dx.op.binary.f32(i32 36, float %8480, float 1.000000e+00)  ; FMin(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8481, float 1.000000e+00)  ; FMin(a,b)
  %8486 = fcmp fast olt float %8482, 0x3FEFFF8020000000
  br i1 %8486, label %8487, label %8602, !dx.controlflow.hints !159

; <label>:8487                                    ; preds = %8454
  %8488 = extractvalue %dx.types.CBufRet.f32 %8370, 3
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8493 = extractvalue %dx.types.CBufRet.f32 %8489, 3
  %8494 = fsub fast float %8490, %8482
  %8495 = fsub fast float %8491, %8483
  %8496 = fsub fast float %8492, %8484
  %8497 = fsub fast float %8493, %8485
  %8498 = fmul fast float %8494, %8488
  %8499 = fmul fast float %8495, %8488
  %8500 = fmul fast float %8496, %8488
  %8501 = fmul fast float %8497, %8488
  %8502 = fadd fast float %8498, %8482
  %8503 = fadd fast float %8499, %8483
  %8504 = fsub fast float -0.000000e+00, %8503
  %8505 = fadd fast float %8500, %8484
  %8506 = fadd fast float %8501, %8485
  %8507 = fmul fast float %8502, %8502
  %8508 = fsub fast float %8503, %8507
  %8509 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8508)  ; FMax(a,b)
  %8510 = fdiv fast float 1.000000e+00, %8509
  %8511 = fmul fast float %8503, %8502
  %8512 = fsub fast float %8505, %8511
  %8513 = fsub fast float %8462, %8502
  %8514 = fmul fast float %8462, %8462
  %8515 = fsub fast float %8514, %8503
  %8516 = fmul fast float %8513, %8510
  %8517 = fmul fast float %8516, %8512
  %8518 = fsub fast float %8515, %8517
  %8519 = fmul fast float %8503, %8503
  %8520 = fsub fast float %8506, %8519
  %8521 = fmul fast float %8512, %8512
  %8522 = fmul fast float %8521, %8510
  %8523 = fsub fast float %8520, %8522
  %8524 = fdiv fast float %8518, %8523
  %8525 = fmul fast float %8512, %8524
  %8526 = fsub fast float %8513, %8525
  %8527 = fmul fast float %8526, %8510
  %8528 = fmul fast float %8527, %8502
  %8529 = fsub fast float 1.000000e+00, %8528
  %8530 = fmul fast float %8503, %8524
  %8531 = fsub fast float %8529, %8530
  %8532 = fmul fast float %8527, %8527
  %8533 = fmul fast float %8524, 4.000000e+00
  %8534 = fmul fast float %8533, %8531
  %8535 = fsub fast float %8532, %8534
  %8536 = call float @dx.op.unary.f32(i32 24, float %8535)  ; Sqrt(value)
  %8537 = fcmp fast oge float %8527, 0.000000e+00
  %8538 = fsub fast float -0.000000e+00, %8536
  %8539 = select i1 %8537, float %8538, float %8536
  %8540 = fsub fast float %8539, %8527
  %8541 = fdiv fast float %8540, %8524
  %8542 = fdiv fast float %8531, %8540
  %8543 = fmul fast float %8541, 5.000000e-01
  %8544 = fmul fast float %8542, 2.000000e+00
  %8545 = select i1 %8537, float %8543, float %8544
  %8546 = select i1 %8537, float %8544, float %8543
  %8547 = call float @dx.op.binary.f32(i32 35, float %8545, float %8546)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 36, float %8545, float %8546)  ; FMin(a,b)
  %8549 = fcmp fast ogt float %8462, %8548
  br i1 %8549, label %8550, label %8560

; <label>:8550                                    ; preds = %8487
  %8551 = fsub fast float %8462, %8548
  %8552 = fsub fast float %8547, %8548
  %8553 = fmul fast float %8551, %8552
  %8554 = fmul fast float %8547, %8462
  %8555 = fadd fast float %8547, %8462
  %8556 = fmul fast float %8555, %8502
  %8557 = fadd fast float %8554, %8503
  %8558 = fsub fast float %8557, %8556
  %8559 = fdiv fast float %8558, %8553
  br label %8560

; <label>:8560                                    ; preds = %8550, %8487
  %8561 = phi float [ %8559, %8550 ], [ 0.000000e+00, %8487 ]
  %8562 = fcmp fast ogt float %8462, %8547
  %8563 = fsub fast float %8462, %8547
  br i1 %8562, label %8564, label %8574

; <label>:8564                                    ; preds = %8560
  %8565 = fsub fast float %8547, %8548
  %8566 = fmul fast float %8565, %8563
  %8567 = fmul fast float %8548, %8462
  %8568 = fadd fast float %8548, %8462
  %8569 = fmul fast float %8568, %8502
  %8570 = fsub fast float %8504, %8567
  %8571 = fadd fast float %8570, %8569
  %8572 = fdiv fast float %8571, %8566
  %8573 = fadd fast float %8572, %8561
  br label %8574

; <label>:8574                                    ; preds = %8564, %8560
  %8575 = phi float [ %8573, %8564 ], [ %8561, %8560 ]
  %8576 = fsub fast float %8462, %8548
  %8577 = fmul fast float %8576, %8563
  %8578 = fmul fast float %8548, %8547
  %8579 = fadd fast float %8548, %8547
  %8580 = fmul fast float %8579, %8502
  %8581 = fadd fast float %8578, %8503
  %8582 = fsub fast float %8581, %8580
  %8583 = fdiv fast float %8582, %8577
  %8584 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8585 = fcmp fast oeq float %7253, 0.000000e+00
  %8586 = extractvalue %dx.types.CBufRet.f32 %8370, 0
  %8587 = fcmp fast oeq float %8586, 0.000000e+00
  %8588 = or i1 %8585, %8587
  %8589 = fmul fast float %8586, 2.000000e+00
  %8590 = fadd fast float %8371, %8372
  %8591 = fdiv fast float %8590, %8589
  %8592 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8593 = fmul fast float %8592, 2.000000e+00
  %8594 = fsub fast float 3.000000e+00, %8593
  %8595 = fmul fast float %8592, %8592
  %8596 = fmul fast float %8595, %8594
  %8597 = select i1 %8588, float 1.000000e+00, float %8596
  %8598 = fmul fast float %8583, %7253
  %8599 = fadd fast float %8584, %8598
  %8600 = call float @dx.op.unary.f32(i32 7, float %8599)  ; Saturate(value)
  %8601 = fmul fast float %8597, %8600
  br label %8602

; <label>:8602                                    ; preds = %8574, %8454
  %8603 = phi float [ %8601, %8574 ], [ 0.000000e+00, %8454 ]
  %8604 = fsub fast float 1.000000e+00, %8603
  %8605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %8324, float %8325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8606 = extractvalue %dx.types.ResRet.f32 %8605, 0
  %8607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.i32 %8607, 2
  %8609 = icmp eq i32 %8608, 0
  br i1 %8609, label %8615, label %8610

; <label>:8610                                    ; preds = %8602
  %8611 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8612 = fadd fast float %8606, -1.000000e+00
  %8613 = fmul fast float %8611, %8612
  %8614 = fadd fast float %8613, 1.000000e+00
  br label %8615

; <label>:8615                                    ; preds = %8610, %8602
  %8616 = phi float [ %8614, %8610 ], [ %8604, %8602 ]
  br i1 %8378, label %8617, label %8635

; <label>:8617                                    ; preds = %8615
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 1
  %8620 = fsub fast float %8455, %8619
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fsub fast float %8455, %8377
  %8623 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8624 = fsub fast float %8621, %8623
  %8625 = fsub fast float %8457, %8623
  %8626 = fdiv fast float %8625, %8624
  %8627 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8628 = fmul fast float %8627, 2.000000e+00
  %8629 = fsub fast float 3.000000e+00, %8628
  %8630 = fsub fast float %8606, %8616
  %8631 = fmul fast float %8627, %8627
  %8632 = fmul fast float %8631, %8630
  %8633 = fmul fast float %8632, %8629
  %8634 = fadd fast float %8633, %8616
  br label %8635

; <label>:8635                                    ; preds = %8617, %8615
  %8636 = phi float [ %8634, %8617 ], [ %8616, %8615 ]
  %8637 = call float @dx.op.binary.f32(i32 35, float %8606, float %8636)  ; FMax(a,b)
  %8638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.i32 %8638, 2
  %8640 = and i32 %8639, 1
  %8641 = icmp eq i32 %8640, 0
  %8642 = fcmp fast une float %8637, 1.000000e+00
  %8643 = and i1 %8642, %8641
  br i1 %8643, label %8644, label %8663

; <label>:8644                                    ; preds = %8635
  %8645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %8324, float %8325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8646 = extractvalue %dx.types.ResRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.ResRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.ResRet.f32 %8645, 2
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 1
  %8651 = fmul fast float %8650, %8646
  %8652 = fmul fast float %8650, %8647
  %8653 = fmul fast float %8650, %8648
  %8654 = fcmp fast ogt float %8606, 0x3FEFFF2E40000000
  %8655 = fsub fast float 1.000000e+00, %8637
  %8656 = fsub fast float 1.000000e+00, %8606
  %8657 = fdiv fast float %8655, %8656
  %8658 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8659 = select i1 %8654, float 0.000000e+00, float %8658
  %8660 = fmul fast float %8651, %8659
  %8661 = fmul fast float %8652, %8659
  %8662 = fmul fast float %8653, %8659
  br label %8663

; <label>:8663                                    ; preds = %8644, %8635
  %8664 = phi float [ 0.000000e+00, %8635 ], [ %8660, %8644 ]
  %8665 = phi float [ 0.000000e+00, %8635 ], [ %8661, %8644 ]
  %8666 = phi float [ 0.000000e+00, %8635 ], [ %8662, %8644 ]
  %8667 = fmul fast float %8664, %7249
  %8668 = fmul fast float %8665, %7250
  %8669 = fmul fast float %8666, %7251
  %8670 = fmul fast float %8637, %8299
  %8671 = call float @dx.op.dot3.f32(i32 55, float %8637, float %8637, float %8637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8672 = call float @dx.op.dot3.f32(i32 55, float %8667, float %8668, float %8669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8673 = select i1 %269, float %8671, float %8637
  %8674 = select i1 %269, float 1.000000e+00, float %8637
  %8675 = select i1 %269, float %8672, float %8667
  %8676 = select i1 %269, float 0.000000e+00, float %8668
  %8677 = select i1 %269, float 0.000000e+00, float %8669
  %8678 = fmul fast float %8673, %8311
  %8679 = fmul fast float %8673, %8312
  %8680 = fmul fast float %8674, %8313
  %8681 = fadd fast float %8678, %8675
  %8682 = fadd fast float %8679, %8676
  %8683 = fadd fast float %8677, %8680
  %8684 = fmul fast float %8673, %8314
  %8685 = fmul fast float %8673, %8315
  %8686 = fmul fast float %8674, %8316
  br label %8687

; <label>:8687                                    ; preds = %8663, %8320, %8289, %7521
  %8688 = phi float [ %7526, %7521 ], [ %8311, %8289 ], [ %8681, %8663 ], [ %8311, %8320 ]
  %8689 = phi float [ %7527, %7521 ], [ %8312, %8289 ], [ %8682, %8663 ], [ %8312, %8320 ]
  %8690 = phi float [ %7528, %7521 ], [ %8313, %8289 ], [ %8683, %8663 ], [ %8313, %8320 ]
  %8691 = phi float [ %7529, %7521 ], [ %8314, %8289 ], [ %8684, %8663 ], [ %8314, %8320 ]
  %8692 = phi float [ %7530, %7521 ], [ %8315, %8289 ], [ %8685, %8663 ], [ %8315, %8320 ]
  %8693 = phi float [ %7531, %7521 ], [ %8316, %8289 ], [ %8686, %8663 ], [ %8316, %8320 ]
  %8694 = phi float [ %7532, %7521 ], [ %8299, %8289 ], [ %8670, %8663 ], [ %8299, %8320 ]
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 3
  %8698 = fmul fast float %8696, %97
  %8699 = fmul fast float %8697, %98
  %8700 = call float @dx.op.unary.f32(i32 7, float %8698)  ; Saturate(value)
  %8701 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8702 = select i1 %7263, i32 2, i32 0
  %8703 = or i32 %8702, 1
  %8704 = uitofp i32 %8703 to float
  %8705 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8700, float %8701, float %8704, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8706 = extractvalue %dx.types.ResRet.f32 %8705, 0
  %8707 = extractvalue %dx.types.ResRet.f32 %8705, 1
  %8708 = extractvalue %dx.types.ResRet.f32 %8705, 2
  %8709 = extractvalue %dx.types.ResRet.f32 %8705, 3
  %8710 = add nuw nsw i32 %8702, 2
  %8711 = uitofp i32 %8710 to float
  %8712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8700, float %8701, float %8711, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8713 = extractvalue %dx.types.ResRet.f32 %8712, 0
  %8714 = extractvalue %dx.types.ResRet.f32 %8712, 1
  %8715 = extractvalue %dx.types.ResRet.f32 %8712, 2
  %8716 = extractvalue %dx.types.ResRet.f32 %8712, 3
  %8717 = call float @dx.op.binary.f32(i32 35, float %8707, float %8708)  ; FMax(a,b)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8706, float %8717)  ; FMax(a,b)
  %8719 = call float @dx.op.binary.f32(i32 35, float %8718, float %8709)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8714, float %8715)  ; FMin(a,b)
  %8721 = call float @dx.op.binary.f32(i32 36, float %8713, float %8720)  ; FMin(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8721, float %8716)  ; FMin(a,b)
  %8723 = fmul fast float %8719, 2.550000e+02
  %8724 = fadd fast float %8723, 0x3F70101020000000
  %8725 = fptoui float %8724 to i32
  %8726 = fmul fast float %8722, 2.550000e+02
  %8727 = fadd fast float %8726, 0x3F70101020000000
  %8728 = fptoui float %8727 to i32
  %8729 = icmp ult i32 %8725, %8728
  br i1 %8729, label %8730, label %8899

; <label>:8730                                    ; preds = %8687
  %8731 = fcmp fast ogt float %87, 9.843750e-01
  %8732 = fadd fast float %7525, -4.000000e+00
  %8733 = select i1 %8731, float -4.000000e+00, float %8732
  %8734 = call float @dx.op.binary.f32(i32 35, float %8733, float 0.000000e+00)  ; FMax(a,b)
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8737 = fadd fast float %8736, %8734
  %8738 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8739 = fmul fast float %8737, %8738
  %8740 = call float @dx.op.unary.f32(i32 23, float %8739)  ; Log(value)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8735, 3
  %8742 = fmul fast float %8741, %8740
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = fmul fast float %8742, %8744
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = uitofp i32 %8725 to float
  %8748 = uitofp i32 %8728 to float
  %8749 = fadd fast float %8747, 5.000000e-01
  %8750 = fadd fast float %8748, 5.000000e-01
  %8751 = fmul fast float %8744, %8749
  %8752 = fmul fast float %8744, %8750
  %8753 = fadd fast float %8751, 0x3F0FFB4800000000
  %8754 = fadd fast float %8752, 0xBF0FFB4800000000
  %8755 = call float @dx.op.binary.f32(i32 35, float %8746, float %8753)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8755, float %8754)  ; FMin(a,b)
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 1
  %8759 = extractvalue %dx.types.CBufRet.f32 %8757, 2
  %8760 = extractvalue %dx.types.CBufRet.f32 %8757, 0
  %8761 = select i1 %7263, float %8760, float 0.000000e+00
  %8762 = fmul fast float %8758, %8756
  %8763 = fadd fast float %8761, %8762
  %8764 = fadd fast float %8761, %8759
  %8765 = fsub fast float %8758, %8759
  %8766 = fadd fast float %8765, %8761
  %8767 = call float @dx.op.binary.f32(i32 35, float %8763, float %8764)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 36, float %8767, float %8766)  ; FMin(a,b)
  %8769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %8700, float %8701, float %8768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.ResRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.ResRet.f32 %8769, 2
  %8773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.i32 %8773, 0
  %8775 = extractvalue %dx.types.CBufRet.i32 %8773, 1
  %8776 = uitofp i32 %8774 to float
  %8777 = uitofp i32 %8775 to float
  %8778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8778, 0
  %8780 = extractvalue %dx.types.CBufRet.f32 %8778, 1
  %8781 = fmul fast float %8776, %8700
  %8782 = fmul fast float %8777, %8701
  %8783 = fadd fast float %8781, -5.000000e-01
  %8784 = fadd fast float %8782, -5.000000e-01
  %8785 = call float @dx.op.unary.f32(i32 22, float %8783)  ; Frc(value)
  %8786 = call float @dx.op.unary.f32(i32 22, float %8784)  ; Frc(value)
  %8787 = fmul fast float %8785, %8785
  %8788 = fmul fast float %8787, %8785
  %8789 = fsub fast float 3.000000e+00, %8785
  %8790 = fmul fast float %8787, %8789
  %8791 = fmul fast float %8785, 3.000000e+00
  %8792 = fmul fast float %8788, 3.000000e+00
  %8793 = fmul fast float %8787, 6.000000e+00
  %8794 = fsub fast float %8792, %8793
  %8795 = fadd fast float %8794, 4.000000e+00
  %8796 = fmul fast float %8795, 0x3FC5555560000000
  %8797 = fmul fast float %8788, -3.000000e+00
  %8798 = fadd fast float %8787, %8785
  %8799 = fmul fast float %8798, 3.000000e+00
  %8800 = fadd fast float %8797, 1.000000e+00
  %8801 = fadd fast float %8800, %8799
  %8802 = fmul fast float %8788, 0x3FC5555560000000
  %8803 = fmul fast float %8786, %8786
  %8804 = fmul fast float %8803, %8786
  %8805 = fsub fast float 3.000000e+00, %8786
  %8806 = fmul fast float %8803, %8805
  %8807 = fmul fast float %8786, 3.000000e+00
  %8808 = fmul fast float %8804, 3.000000e+00
  %8809 = fmul fast float %8803, 6.000000e+00
  %8810 = fsub fast float %8808, %8809
  %8811 = fadd fast float %8810, 4.000000e+00
  %8812 = fmul fast float %8811, 0x3FC5555560000000
  %8813 = fmul fast float %8804, -3.000000e+00
  %8814 = fadd fast float %8803, %8786
  %8815 = fmul fast float %8814, 3.000000e+00
  %8816 = fadd fast float %8813, 1.000000e+00
  %8817 = fadd fast float %8816, %8815
  %8818 = fmul fast float %8804, 0x3FC5555560000000
  %8819 = fadd fast float %8785, 1.000000e+00
  %8820 = fsub fast float 1.000000e+00, %8791
  %8821 = fadd fast float %8820, %8790
  %8822 = fadd fast float %8821, %8795
  %8823 = fmul fast float %8822, 0x3FC5555560000000
  %8824 = fdiv fast float %8796, %8823
  %8825 = fsub fast float %8819, %8824
  %8826 = fsub fast float 1.000000e+00, %8785
  %8827 = fadd fast float %8801, %8788
  %8828 = fmul fast float %8827, 0x3FC5555560000000
  %8829 = fdiv fast float %8802, %8828
  %8830 = fadd fast float %8826, %8829
  %8831 = fadd fast float %8786, 1.000000e+00
  %8832 = fsub fast float 1.000000e+00, %8807
  %8833 = fadd fast float %8832, %8806
  %8834 = fadd fast float %8833, %8811
  %8835 = fmul fast float %8834, 0x3FC5555560000000
  %8836 = fdiv fast float %8812, %8835
  %8837 = fsub fast float %8831, %8836
  %8838 = fsub fast float 1.000000e+00, %8786
  %8839 = fadd fast float %8817, %8804
  %8840 = fmul fast float %8839, 0x3FC5555560000000
  %8841 = fdiv fast float %8818, %8840
  %8842 = fadd fast float %8841, %8838
  %8843 = fmul fast float %8825, %8779
  %8844 = fsub fast float %8700, %8843
  %8845 = fmul fast float %8830, %8779
  %8846 = fadd fast float %8845, %8700
  %8847 = fmul fast float %8842, %8780
  %8848 = fadd fast float %8847, %8701
  %8849 = fmul fast float %8837, %8780
  %8850 = fsub fast float %8701, %8849
  %8851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8844, float %8850, float %8768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8852 = extractvalue %dx.types.ResRet.f32 %8851, 0
  %8853 = extractvalue %dx.types.ResRet.f32 %8851, 1
  %8854 = extractvalue %dx.types.ResRet.f32 %8851, 2
  %8855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8846, float %8850, float %8768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8856 = extractvalue %dx.types.ResRet.f32 %8855, 0
  %8857 = extractvalue %dx.types.ResRet.f32 %8855, 1
  %8858 = extractvalue %dx.types.ResRet.f32 %8855, 2
  %8859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8844, float %8848, float %8768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8860 = extractvalue %dx.types.ResRet.f32 %8859, 0
  %8861 = extractvalue %dx.types.ResRet.f32 %8859, 1
  %8862 = extractvalue %dx.types.ResRet.f32 %8859, 2
  %8863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8846, float %8848, float %8768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8864 = extractvalue %dx.types.ResRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.ResRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.ResRet.f32 %8863, 2
  %8867 = fsub fast float %8860, %8852
  %8868 = fsub fast float %8861, %8853
  %8869 = fsub fast float %8862, %8854
  %8870 = fmul fast float %8867, %8840
  %8871 = fmul fast float %8868, %8840
  %8872 = fmul fast float %8869, %8840
  %8873 = fadd fast float %8870, %8852
  %8874 = fadd fast float %8871, %8853
  %8875 = fadd fast float %8872, %8854
  %8876 = fsub fast float %8864, %8856
  %8877 = fsub fast float %8865, %8857
  %8878 = fsub fast float %8866, %8858
  %8879 = fmul fast float %8876, %8840
  %8880 = fmul fast float %8877, %8840
  %8881 = fmul fast float %8878, %8840
  %8882 = fsub fast float %8856, %8873
  %8883 = fadd fast float %8882, %8879
  %8884 = fsub fast float %8857, %8874
  %8885 = fadd fast float %8884, %8880
  %8886 = fsub fast float %8858, %8875
  %8887 = fadd fast float %8886, %8881
  %8888 = fmul fast float %8883, %8828
  %8889 = fmul fast float %8885, %8828
  %8890 = fmul fast float %8887, %8828
  %8891 = fadd fast float %8888, %8873
  %8892 = fadd fast float %8889, %8874
  %8893 = fadd fast float %8890, %8875
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8896 = fmul fast float %8891, %8895
  %8897 = fmul fast float %8892, %8895
  %8898 = fmul fast float %8893, %8895
  br label %8899

; <label>:8899                                    ; preds = %8730, %8687
  %8900 = phi float [ %8770, %8730 ], [ 1.000000e+00, %8687 ]
  %8901 = phi float [ %8771, %8730 ], [ 1.000000e+00, %8687 ]
  %8902 = phi float [ %8772, %8730 ], [ 1.000000e+00, %8687 ]
  %8903 = phi float [ %8896, %8730 ], [ 0.000000e+00, %8687 ]
  %8904 = phi float [ %8897, %8730 ], [ 0.000000e+00, %8687 ]
  %8905 = phi float [ %8898, %8730 ], [ 0.000000e+00, %8687 ]
  %8906 = fmul fast float %8903, %7249
  %8907 = fmul fast float %8904, %7250
  %8908 = fmul fast float %8905, %7251
  %8909 = fmul fast float %8900, %8694
  %8910 = call float @dx.op.dot3.f32(i32 55, float %8900, float %8901, float %8902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8911 = call float @dx.op.dot3.f32(i32 55, float %8906, float %8907, float %8908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8912 = select i1 %269, float %8910, float %8900
  %8913 = select i1 %269, float %8910, float %8901
  %8914 = select i1 %269, float 1.000000e+00, float %8902
  %8915 = select i1 %269, float %8911, float %8906
  %8916 = select i1 %269, float 0.000000e+00, float %8907
  %8917 = select i1 %269, float 0.000000e+00, float %8908
  %8918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8919 = extractvalue %dx.types.CBufRet.i32 %8918, 3
  %8920 = and i32 %8919, 3
  %8921 = icmp ne i32 %8920, 0
  %8922 = and i32 %8919, 4
  %8923 = icmp ne i32 %8922, 0
  %8924 = and i1 %8921, %8923
  %8925 = and i1 %269, %8924
  br i1 %8925, label %8926, label %8932

; <label>:8926                                    ; preds = %8899
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 1
  %8929 = fadd fast float %8909, -1.000000e+00
  %8930 = fmul fast float %8928, %8929
  %8931 = fadd fast float %8930, 1.000000e+00
  br label %8932

; <label>:8932                                    ; preds = %8926, %8899
  %8933 = phi float [ %8931, %8926 ], [ %8909, %8899 ]
  %8934 = fadd fast float %8691, %8688
  %8935 = fmul fast float %8912, %8934
  %8936 = fadd fast float %8935, %8915
  %8937 = fadd fast float %8692, %8689
  %8938 = fmul fast float %8913, %8937
  %8939 = fadd fast float %8938, %8916
  %8940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8941 = extractvalue %dx.types.CBufRet.f32 %8940, 0
  br i1 %269, label %8942, label %8957

; <label>:8942                                    ; preds = %8932
  %8943 = fadd fast float %8936, %8939
  %8944 = fmul fast float %8941, %8943
  %8945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8946 = extractvalue %dx.types.CBufRet.f32 %8945, 3
  %8947 = extractvalue %dx.types.CBufRet.f32 %7233, 1
  %8948 = fsub fast float %7238, %7232
  %8949 = fadd fast float %8948, %7239
  %8950 = fsub fast float %8949, %8947
  %8951 = extractvalue %dx.types.CBufRet.f32 %7233, 2
  %8952 = fmul fast float %8950, %8951
  %8953 = call float @dx.op.unary.f32(i32 7, float %8952)  ; Saturate(value)
  %8954 = fsub fast float %8953, %8946
  %8955 = fmul fast float %8954, %8933
  %8956 = fadd fast float %8955, %8946
  br label %8983

; <label>:8957                                    ; preds = %8932
  %8958 = fadd fast float %8693, %8690
  %8959 = fmul fast float %8914, %8958
  %8960 = fadd fast float %8959, %8917
  %8961 = fmul fast float %8941, %8936
  %8962 = fmul fast float %8941, %8939
  %8963 = fmul fast float %8941, %8960
  %8964 = call float @dx.op.binary.f32(i32 35, float %8962, float %8963)  ; FMax(a,b)
  %8965 = call float @dx.op.binary.f32(i32 35, float %8961, float %8964)  ; FMax(a,b)
  %8966 = call float @dx.op.binary.f32(i32 35, float %7250, float %7251)  ; FMax(a,b)
  %8967 = call float @dx.op.binary.f32(i32 35, float %7249, float %8966)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8965, float %8967)  ; FMax(a,b)
  %8969 = fcmp fast ugt float %8968, 0x3F10000000000000
  br i1 %8969, label %8971, label %8970

; <label>:8970                                    ; preds = %8957
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8971

; <label>:8971                                    ; preds = %8970, %8957
  %8972 = add i32 %42, 356
  %8973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %8972, i32 undef)  ; BufferLoad(srv,index,wot)
  %8974 = extractvalue %dx.types.ResRet.i32 %8973, 0
  %8975 = and i32 %8974, 32
  %8976 = icmp eq i32 %8975, 0
  br i1 %8976, label %8983, label %8977

; <label>:8977                                    ; preds = %8971
  %8978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8978, 0
  %8980 = fmul fast float %8979, 0x3FE99999A0000000
  %8981 = fadd fast float %8979, %8961
  %8982 = fadd fast float %8980, %8963
  br label %8983

; <label>:8983                                    ; preds = %8977, %8971, %8942
  %8984 = phi float [ 1.000000e+00, %8942 ], [ %7250, %8977 ], [ %7250, %8971 ]
  %8985 = phi float [ 1.000000e+00, %8942 ], [ %7251, %8977 ], [ %7251, %8971 ]
  %8986 = phi float [ %8944, %8942 ], [ %8981, %8977 ], [ %8961, %8971 ]
  %8987 = phi float [ %8956, %8942 ], [ %8962, %8977 ], [ %8962, %8971 ]
  %8988 = phi float [ 1.000000e+00, %8942 ], [ %8982, %8977 ], [ %8963, %8971 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8989 = call float @dx.op.binary.f32(i32 36, float %8986, float 3.225500e+04)  ; FMin(a,b)
  %8990 = call float @dx.op.binary.f32(i32 36, float %8987, float 3.225500e+04)  ; FMin(a,b)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8988, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8990)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8992 = call float @dx.op.binary.f32(i32 36, float %7249, float 3.225500e+04)  ; FMin(a,b)
  %8993 = call float @dx.op.binary.f32(i32 36, float %8984, float 3.225500e+04)  ; FMin(a,b)
  %8994 = call float @dx.op.binary.f32(i32 36, float %8985, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8992)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8993)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8994)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

