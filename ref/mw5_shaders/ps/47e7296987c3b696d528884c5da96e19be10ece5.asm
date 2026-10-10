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
; shader hash: 8382f3c29d0386f0314ce88d68b94f0f
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
  %431 = add i32 %42, 488
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
  %592 = add i32 %42, 424
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
  %644 = add i32 %42, 408
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
  %668 = add i32 %42, 360
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
  %691 = add i32 %42, 440
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
  %889 = add i32 %42, 376
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
  %973 = add i32 %42, 392
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
  %1031 = add i32 %42, 456
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
  %1072 = add i32 %42, 472
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
  %1136 = phi float [ 0.000000e+00, %473 ], [ %878, %1115 ]
  %1137 = phi float [ 0.000000e+00, %473 ], [ %879, %1115 ]
  %1138 = phi float [ 0.000000e+00, %473 ], [ %880, %1115 ]
  %1139 = phi float [ 0.000000e+00, %473 ], [ %1116, %1115 ]
  %1140 = phi float [ 0.000000e+00, %473 ], [ %1117, %1115 ]
  %1141 = phi float [ 0.000000e+00, %473 ], [ %1118, %1115 ]
  %1142 = phi float [ 0.000000e+00, %473 ], [ %1006, %1115 ]
  %1143 = phi float [ 0.000000e+00, %473 ], [ %1007, %1115 ]
  %1144 = phi float [ 0.000000e+00, %473 ], [ %1008, %1115 ]
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
  %1268 = add i32 %42, 428
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
  %1320 = add i32 %42, 412
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
  %1346 = add i32 %42, 364
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
  %1369 = add i32 %42, 444
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
  %1567 = add i32 %42, 380
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
  %1651 = add i32 %42, 396
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
  %1709 = add i32 %42, 460
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
  %1750 = add i32 %42, 476
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
  %1840 = fmul fast float %1837, %1136
  %1841 = fmul fast float %1838, %1137
  %1842 = fmul fast float %1839, %1138
  %1843 = fmul fast float %1837, %1142
  %1844 = fmul fast float %1838, %1143
  %1845 = fmul fast float %1839, %1144
  br label %1846

; <label>:1846                                    ; preds = %1811, %1793
  %1847 = phi float [ %1840, %1811 ], [ %1136, %1793 ]
  %1848 = phi float [ %1841, %1811 ], [ %1137, %1793 ]
  %1849 = phi float [ %1842, %1811 ], [ %1138, %1793 ]
  %1850 = phi float [ %1843, %1811 ], [ %1142, %1793 ]
  %1851 = phi float [ %1844, %1811 ], [ %1143, %1793 ]
  %1852 = phi float [ %1845, %1811 ], [ %1144, %1793 ]
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
  %1866 = fsub fast float %1556, %1847
  %1867 = fsub fast float %1557, %1848
  %1868 = fsub fast float %1558, %1849
  %1869 = fmul fast float %1860, %1866
  %1870 = fmul fast float %1860, %1867
  %1871 = fmul fast float %1860, %1868
  %1872 = fadd fast float %1869, %1847
  %1873 = fadd fast float %1870, %1848
  %1874 = fadd fast float %1871, %1849
  %1875 = fsub fast float %1542, %1148
  %1876 = fmul fast float %1860, %1875
  %1877 = fadd fast float %1876, %1148
  %1878 = fsub fast float %1684, %1850
  %1879 = fsub fast float %1685, %1851
  %1880 = fsub fast float %1686, %1852
  %1881 = fmul fast float %1865, %1878
  %1882 = fmul fast float %1865, %1879
  %1883 = fmul fast float %1865, %1880
  %1884 = fadd fast float %1881, %1850
  %1885 = fadd fast float %1882, %1851
  %1886 = fadd fast float %1883, %1852
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
  %1902 = fmul fast float %1899, %1847
  %1903 = fmul fast float %1900, %1848
  %1904 = fmul fast float %1901, %1849
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
  %1922 = fmul fast float %1921, %1847
  %1923 = fadd fast float %1922, %1920
  %1924 = fmul fast float %1923, %1847
  %1925 = fmul fast float %1918, 2.000000e+00
  %1926 = fsub fast float 1.000000e+00, %1925
  %1927 = fmul fast float %1926, %1848
  %1928 = fadd fast float %1927, %1925
  %1929 = fmul fast float %1928, %1848
  %1930 = fmul fast float %1919, 2.000000e+00
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = fmul fast float %1931, %1849
  %1933 = fadd fast float %1932, %1930
  %1934 = fmul fast float %1933, %1849
  br label %1935

; <label>:1935                                    ; preds = %1907, %1905, %1892, %1862, %1846
  %1936 = phi float [ %1847, %1846 ], [ %1924, %1907 ], [ %1847, %1905 ], [ %1902, %1892 ], [ %1872, %1862 ]
  %1937 = phi float [ %1848, %1846 ], [ %1929, %1907 ], [ %1848, %1905 ], [ %1903, %1892 ], [ %1873, %1862 ]
  %1938 = phi float [ %1849, %1846 ], [ %1934, %1907 ], [ %1849, %1905 ], [ %1904, %1892 ], [ %1874, %1862 ]
  %1939 = phi float [ %1850, %1846 ], [ %1850, %1907 ], [ %1850, %1905 ], [ %1850, %1892 ], [ %1884, %1862 ]
  %1940 = phi float [ %1851, %1846 ], [ %1851, %1907 ], [ %1851, %1905 ], [ %1851, %1892 ], [ %1885, %1862 ]
  %1941 = phi float [ %1852, %1846 ], [ %1852, %1907 ], [ %1852, %1905 ], [ %1852, %1892 ], [ %1886, %1862 ]
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
  %1991 = fsub fast float %1794, %1139
  %1992 = fsub fast float %1795, %1140
  %1993 = fsub fast float %1796, %1141
  %1994 = fmul fast float %1964, %1991
  %1995 = fmul fast float %1964, %1992
  %1996 = fmul fast float %1964, %1993
  %1997 = fadd fast float %1994, %1139
  %1998 = fadd fast float %1995, %1140
  %1999 = fadd fast float %1996, %1141
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
  %2045 = fadd fast float %2042, %1139
  %2046 = fadd fast float %2043, %1140
  %2047 = fadd fast float %2044, %1141
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
  %2073 = fadd fast float %2070, %1139
  %2074 = fadd fast float %2071, %1140
  %2075 = fadd fast float %2072, %1141
  br label %2076

; <label>:2076                                    ; preds = %2050, %2048, %2002, %1966, %1935, %1335, %1154, %1133
  %2077 = phi float [ %1134, %1935 ], [ %1134, %1335 ], [ %1134, %1133 ], [ %2053, %2050 ], [ %1134, %2048 ], [ %2005, %2002 ], [ %1971, %1966 ], [ %1134, %1154 ]
  %2078 = phi float [ %1135, %1935 ], [ %1135, %1335 ], [ %1135, %1133 ], [ %2054, %2050 ], [ %1135, %2048 ], [ %2006, %2002 ], [ %1972, %1966 ], [ %1135, %1154 ]
  %2079 = phi float [ %1936, %1935 ], [ %1136, %1335 ], [ %1136, %1133 ], [ %1936, %2050 ], [ %1936, %2048 ], [ %1936, %2002 ], [ %1936, %1966 ], [ %1136, %1154 ]
  %2080 = phi float [ %1937, %1935 ], [ %1137, %1335 ], [ %1137, %1133 ], [ %1937, %2050 ], [ %1937, %2048 ], [ %1937, %2002 ], [ %1937, %1966 ], [ %1137, %1154 ]
  %2081 = phi float [ %1938, %1935 ], [ %1138, %1335 ], [ %1138, %1133 ], [ %1938, %2050 ], [ %1938, %2048 ], [ %1938, %2002 ], [ %1938, %1966 ], [ %1138, %1154 ]
  %2082 = phi float [ %1139, %1935 ], [ %1139, %1335 ], [ %1139, %1133 ], [ %2073, %2050 ], [ %1139, %2048 ], [ %2045, %2002 ], [ %1997, %1966 ], [ %1139, %1154 ]
  %2083 = phi float [ %1140, %1935 ], [ %1140, %1335 ], [ %1140, %1133 ], [ %2074, %2050 ], [ %1140, %2048 ], [ %2046, %2002 ], [ %1998, %1966 ], [ %1140, %1154 ]
  %2084 = phi float [ %1141, %1935 ], [ %1141, %1335 ], [ %1141, %1133 ], [ %2075, %2050 ], [ %1141, %2048 ], [ %2047, %2002 ], [ %1999, %1966 ], [ %1141, %1154 ]
  %2085 = phi float [ %1939, %1935 ], [ %1142, %1335 ], [ %1142, %1133 ], [ %1939, %2050 ], [ %1939, %2048 ], [ %1939, %2002 ], [ %1939, %1966 ], [ %1142, %1154 ]
  %2086 = phi float [ %1940, %1935 ], [ %1143, %1335 ], [ %1143, %1133 ], [ %1940, %2050 ], [ %1940, %2048 ], [ %1940, %2002 ], [ %1940, %1966 ], [ %1143, %1154 ]
  %2087 = phi float [ %1941, %1935 ], [ %1144, %1335 ], [ %1144, %1133 ], [ %1941, %2050 ], [ %1941, %2048 ], [ %1941, %2002 ], [ %1941, %1966 ], [ %1144, %1154 ]
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
  %2210 = add i32 %42, 432
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
  %2262 = add i32 %42, 416
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
  %2288 = add i32 %42, 368
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
  %2311 = add i32 %42, 448
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
  %2509 = add i32 %42, 384
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
  %2593 = add i32 %42, 400
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
  %2651 = add i32 %42, 464
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
  %2692 = add i32 %42, 480
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
  %2782 = fmul fast float %2779, %2079
  %2783 = fmul fast float %2780, %2080
  %2784 = fmul fast float %2781, %2081
  %2785 = fmul fast float %2779, %2085
  %2786 = fmul fast float %2780, %2086
  %2787 = fmul fast float %2781, %2087
  br label %2788

; <label>:2788                                    ; preds = %2753, %2735
  %2789 = phi float [ %2782, %2753 ], [ %2079, %2735 ]
  %2790 = phi float [ %2783, %2753 ], [ %2080, %2735 ]
  %2791 = phi float [ %2784, %2753 ], [ %2081, %2735 ]
  %2792 = phi float [ %2785, %2753 ], [ %2085, %2735 ]
  %2793 = phi float [ %2786, %2753 ], [ %2086, %2735 ]
  %2794 = phi float [ %2787, %2753 ], [ %2087, %2735 ]
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
  %2808 = fsub fast float %2498, %2789
  %2809 = fsub fast float %2499, %2790
  %2810 = fsub fast float %2500, %2791
  %2811 = fmul fast float %2802, %2808
  %2812 = fmul fast float %2802, %2809
  %2813 = fmul fast float %2802, %2810
  %2814 = fadd fast float %2811, %2789
  %2815 = fadd fast float %2812, %2790
  %2816 = fadd fast float %2813, %2791
  %2817 = fsub fast float %2484, %2091
  %2818 = fmul fast float %2802, %2817
  %2819 = fadd fast float %2818, %2091
  %2820 = fsub fast float %2626, %2792
  %2821 = fsub fast float %2627, %2793
  %2822 = fsub fast float %2628, %2794
  %2823 = fmul fast float %2807, %2820
  %2824 = fmul fast float %2807, %2821
  %2825 = fmul fast float %2807, %2822
  %2826 = fadd fast float %2823, %2792
  %2827 = fadd fast float %2824, %2793
  %2828 = fadd fast float %2825, %2794
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
  %2844 = fmul fast float %2841, %2789
  %2845 = fmul fast float %2842, %2790
  %2846 = fmul fast float %2843, %2791
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
  %2864 = fmul fast float %2863, %2789
  %2865 = fadd fast float %2864, %2862
  %2866 = fmul fast float %2865, %2789
  %2867 = fmul fast float %2860, 2.000000e+00
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = fmul fast float %2868, %2790
  %2870 = fadd fast float %2869, %2867
  %2871 = fmul fast float %2870, %2790
  %2872 = fmul fast float %2861, 2.000000e+00
  %2873 = fsub fast float 1.000000e+00, %2872
  %2874 = fmul fast float %2873, %2791
  %2875 = fadd fast float %2874, %2872
  %2876 = fmul fast float %2875, %2791
  br label %2877

; <label>:2877                                    ; preds = %2849, %2847, %2834, %2804, %2788
  %2878 = phi float [ %2789, %2788 ], [ %2866, %2849 ], [ %2789, %2847 ], [ %2844, %2834 ], [ %2814, %2804 ]
  %2879 = phi float [ %2790, %2788 ], [ %2871, %2849 ], [ %2790, %2847 ], [ %2845, %2834 ], [ %2815, %2804 ]
  %2880 = phi float [ %2791, %2788 ], [ %2876, %2849 ], [ %2791, %2847 ], [ %2846, %2834 ], [ %2816, %2804 ]
  %2881 = phi float [ %2792, %2788 ], [ %2792, %2849 ], [ %2792, %2847 ], [ %2792, %2834 ], [ %2826, %2804 ]
  %2882 = phi float [ %2793, %2788 ], [ %2793, %2849 ], [ %2793, %2847 ], [ %2793, %2834 ], [ %2827, %2804 ]
  %2883 = phi float [ %2794, %2788 ], [ %2794, %2849 ], [ %2794, %2847 ], [ %2794, %2834 ], [ %2828, %2804 ]
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
  %2933 = fsub fast float %2736, %2082
  %2934 = fsub fast float %2737, %2083
  %2935 = fsub fast float %2738, %2084
  %2936 = fmul fast float %2906, %2933
  %2937 = fmul fast float %2906, %2934
  %2938 = fmul fast float %2906, %2935
  %2939 = fadd fast float %2936, %2082
  %2940 = fadd fast float %2937, %2083
  %2941 = fadd fast float %2938, %2084
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
  %2987 = fadd fast float %2984, %2082
  %2988 = fadd fast float %2985, %2083
  %2989 = fadd fast float %2986, %2084
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
  %3015 = fadd fast float %3012, %2082
  %3016 = fadd fast float %3013, %2083
  %3017 = fadd fast float %3014, %2084
  br label %3018

; <label>:3018                                    ; preds = %2992, %2990, %2944, %2908, %2877, %2277, %2096, %2076
  %3019 = phi float [ %2077, %2877 ], [ %2077, %2277 ], [ %2077, %2076 ], [ %2995, %2992 ], [ %2077, %2990 ], [ %2947, %2944 ], [ %2913, %2908 ], [ %2077, %2096 ]
  %3020 = phi float [ %2078, %2877 ], [ %2078, %2277 ], [ %2078, %2076 ], [ %2996, %2992 ], [ %2078, %2990 ], [ %2948, %2944 ], [ %2914, %2908 ], [ %2078, %2096 ]
  %3021 = phi float [ %2878, %2877 ], [ %2079, %2277 ], [ %2079, %2076 ], [ %2878, %2992 ], [ %2878, %2990 ], [ %2878, %2944 ], [ %2878, %2908 ], [ %2079, %2096 ]
  %3022 = phi float [ %2879, %2877 ], [ %2080, %2277 ], [ %2080, %2076 ], [ %2879, %2992 ], [ %2879, %2990 ], [ %2879, %2944 ], [ %2879, %2908 ], [ %2080, %2096 ]
  %3023 = phi float [ %2880, %2877 ], [ %2081, %2277 ], [ %2081, %2076 ], [ %2880, %2992 ], [ %2880, %2990 ], [ %2880, %2944 ], [ %2880, %2908 ], [ %2081, %2096 ]
  %3024 = phi float [ %2082, %2877 ], [ %2082, %2277 ], [ %2082, %2076 ], [ %3015, %2992 ], [ %2082, %2990 ], [ %2987, %2944 ], [ %2939, %2908 ], [ %2082, %2096 ]
  %3025 = phi float [ %2083, %2877 ], [ %2083, %2277 ], [ %2083, %2076 ], [ %3016, %2992 ], [ %2083, %2990 ], [ %2988, %2944 ], [ %2940, %2908 ], [ %2083, %2096 ]
  %3026 = phi float [ %2084, %2877 ], [ %2084, %2277 ], [ %2084, %2076 ], [ %3017, %2992 ], [ %2084, %2990 ], [ %2989, %2944 ], [ %2941, %2908 ], [ %2084, %2096 ]
  %3027 = phi float [ %2881, %2877 ], [ %2085, %2277 ], [ %2085, %2076 ], [ %2881, %2992 ], [ %2881, %2990 ], [ %2881, %2944 ], [ %2881, %2908 ], [ %2085, %2096 ]
  %3028 = phi float [ %2882, %2877 ], [ %2086, %2277 ], [ %2086, %2076 ], [ %2882, %2992 ], [ %2882, %2990 ], [ %2882, %2944 ], [ %2882, %2908 ], [ %2086, %2096 ]
  %3029 = phi float [ %2883, %2877 ], [ %2087, %2277 ], [ %2087, %2076 ], [ %2883, %2992 ], [ %2883, %2990 ], [ %2883, %2944 ], [ %2883, %2908 ], [ %2087, %2096 ]
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
  %3152 = add i32 %42, 436
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
  %3204 = add i32 %42, 420
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
  %3230 = add i32 %42, 372
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
  %3253 = add i32 %42, 452
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
  %3451 = add i32 %42, 388
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
  %3535 = add i32 %42, 404
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
  %3593 = add i32 %42, 468
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
  %3634 = add i32 %42, 484
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
  %3724 = fmul fast float %3721, %3021
  %3725 = fmul fast float %3722, %3022
  %3726 = fmul fast float %3723, %3023
  %3727 = fmul fast float %3721, %3027
  %3728 = fmul fast float %3722, %3028
  %3729 = fmul fast float %3723, %3029
  br label %3730

; <label>:3730                                    ; preds = %3695, %3677
  %3731 = phi float [ %3724, %3695 ], [ %3021, %3677 ]
  %3732 = phi float [ %3725, %3695 ], [ %3022, %3677 ]
  %3733 = phi float [ %3726, %3695 ], [ %3023, %3677 ]
  %3734 = phi float [ %3727, %3695 ], [ %3027, %3677 ]
  %3735 = phi float [ %3728, %3695 ], [ %3028, %3677 ]
  %3736 = phi float [ %3729, %3695 ], [ %3029, %3677 ]
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
  %3750 = fsub fast float %3440, %3731
  %3751 = fsub fast float %3441, %3732
  %3752 = fsub fast float %3442, %3733
  %3753 = fmul fast float %3744, %3750
  %3754 = fmul fast float %3744, %3751
  %3755 = fmul fast float %3744, %3752
  %3756 = fadd fast float %3753, %3731
  %3757 = fadd fast float %3754, %3732
  %3758 = fadd fast float %3755, %3733
  %3759 = fsub fast float %3426, %3033
  %3760 = fmul fast float %3744, %3759
  %3761 = fadd fast float %3760, %3033
  %3762 = fsub fast float %3568, %3734
  %3763 = fsub fast float %3569, %3735
  %3764 = fsub fast float %3570, %3736
  %3765 = fmul fast float %3749, %3762
  %3766 = fmul fast float %3749, %3763
  %3767 = fmul fast float %3749, %3764
  %3768 = fadd fast float %3765, %3734
  %3769 = fadd fast float %3766, %3735
  %3770 = fadd fast float %3767, %3736
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
  %3786 = fmul fast float %3783, %3731
  %3787 = fmul fast float %3784, %3732
  %3788 = fmul fast float %3785, %3733
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
  %3806 = fmul fast float %3805, %3731
  %3807 = fadd fast float %3806, %3804
  %3808 = fmul fast float %3807, %3731
  %3809 = fmul fast float %3802, 2.000000e+00
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = fmul fast float %3810, %3732
  %3812 = fadd fast float %3811, %3809
  %3813 = fmul fast float %3812, %3732
  %3814 = fmul fast float %3803, 2.000000e+00
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = fmul fast float %3815, %3733
  %3817 = fadd fast float %3816, %3814
  %3818 = fmul fast float %3817, %3733
  br label %3819

; <label>:3819                                    ; preds = %3791, %3789, %3776, %3746, %3730
  %3820 = phi float [ %3731, %3730 ], [ %3808, %3791 ], [ %3731, %3789 ], [ %3786, %3776 ], [ %3756, %3746 ]
  %3821 = phi float [ %3732, %3730 ], [ %3813, %3791 ], [ %3732, %3789 ], [ %3787, %3776 ], [ %3757, %3746 ]
  %3822 = phi float [ %3733, %3730 ], [ %3818, %3791 ], [ %3733, %3789 ], [ %3788, %3776 ], [ %3758, %3746 ]
  %3823 = phi float [ %3734, %3730 ], [ %3734, %3791 ], [ %3734, %3789 ], [ %3734, %3776 ], [ %3768, %3746 ]
  %3824 = phi float [ %3735, %3730 ], [ %3735, %3791 ], [ %3735, %3789 ], [ %3735, %3776 ], [ %3769, %3746 ]
  %3825 = phi float [ %3736, %3730 ], [ %3736, %3791 ], [ %3736, %3789 ], [ %3736, %3776 ], [ %3770, %3746 ]
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
  %3875 = fsub fast float %3678, %3024
  %3876 = fsub fast float %3679, %3025
  %3877 = fsub fast float %3680, %3026
  %3878 = fmul fast float %3848, %3875
  %3879 = fmul fast float %3848, %3876
  %3880 = fmul fast float %3848, %3877
  %3881 = fadd fast float %3878, %3024
  %3882 = fadd fast float %3879, %3025
  %3883 = fadd fast float %3880, %3026
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
  %3929 = fadd fast float %3926, %3024
  %3930 = fadd fast float %3927, %3025
  %3931 = fadd fast float %3928, %3026
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
  %3957 = fadd fast float %3954, %3024
  %3958 = fadd fast float %3955, %3025
  %3959 = fadd fast float %3956, %3026
  br label %3960

; <label>:3960                                    ; preds = %3934, %3932, %3886, %3850, %3819, %3219, %3038, %3018
  %3961 = phi float [ %3019, %3819 ], [ %3019, %3219 ], [ %3019, %3018 ], [ %3019, %3038 ], [ %3855, %3850 ], [ %3889, %3886 ], [ %3019, %3932 ], [ %3937, %3934 ]
  %3962 = phi float [ %3020, %3819 ], [ %3020, %3219 ], [ %3020, %3018 ], [ %3020, %3038 ], [ %3856, %3850 ], [ %3890, %3886 ], [ %3020, %3932 ], [ %3938, %3934 ]
  %3963 = phi float [ %3820, %3819 ], [ %3021, %3219 ], [ %3021, %3018 ], [ %3021, %3038 ], [ %3820, %3850 ], [ %3820, %3886 ], [ %3820, %3932 ], [ %3820, %3934 ]
  %3964 = phi float [ %3821, %3819 ], [ %3022, %3219 ], [ %3022, %3018 ], [ %3022, %3038 ], [ %3821, %3850 ], [ %3821, %3886 ], [ %3821, %3932 ], [ %3821, %3934 ]
  %3965 = phi float [ %3822, %3819 ], [ %3023, %3219 ], [ %3023, %3018 ], [ %3023, %3038 ], [ %3822, %3850 ], [ %3822, %3886 ], [ %3822, %3932 ], [ %3822, %3934 ]
  %3966 = phi float [ %3024, %3819 ], [ %3024, %3219 ], [ %3024, %3018 ], [ %3024, %3038 ], [ %3881, %3850 ], [ %3929, %3886 ], [ %3024, %3932 ], [ %3957, %3934 ]
  %3967 = phi float [ %3025, %3819 ], [ %3025, %3219 ], [ %3025, %3018 ], [ %3025, %3038 ], [ %3882, %3850 ], [ %3930, %3886 ], [ %3025, %3932 ], [ %3958, %3934 ]
  %3968 = phi float [ %3026, %3819 ], [ %3026, %3219 ], [ %3026, %3018 ], [ %3026, %3038 ], [ %3883, %3850 ], [ %3931, %3886 ], [ %3026, %3932 ], [ %3959, %3934 ]
  %3969 = phi float [ %3823, %3819 ], [ %3027, %3219 ], [ %3027, %3018 ], [ %3027, %3038 ], [ %3823, %3850 ], [ %3823, %3886 ], [ %3823, %3932 ], [ %3823, %3934 ]
  %3970 = phi float [ %3824, %3819 ], [ %3028, %3219 ], [ %3028, %3018 ], [ %3028, %3038 ], [ %3824, %3850 ], [ %3824, %3886 ], [ %3824, %3932 ], [ %3824, %3934 ]
  %3971 = phi float [ %3825, %3819 ], [ %3029, %3219 ], [ %3029, %3018 ], [ %3029, %3038 ], [ %3825, %3850 ], [ %3825, %3886 ], [ %3825, %3932 ], [ %3825, %3934 ]
  %3972 = phi float [ %3030, %3819 ], [ %3030, %3219 ], [ %3030, %3018 ], [ %3030, %3038 ], [ %3869, %3850 ], [ %3921, %3886 ], [ %3030, %3932 ], [ %3949, %3934 ]
  %3973 = phi float [ %3031, %3819 ], [ %3031, %3219 ], [ %3031, %3018 ], [ %3031, %3038 ], [ %3870, %3850 ], [ %3922, %3886 ], [ %3031, %3932 ], [ %3950, %3934 ]
  %3974 = phi float [ %3032, %3819 ], [ %3032, %3219 ], [ %3032, %3018 ], [ %3032, %3038 ], [ %3871, %3850 ], [ %3923, %3886 ], [ %3032, %3932 ], [ %3951, %3934 ]
  %3975 = phi float [ %3826, %3819 ], [ %3033, %3219 ], [ %3033, %3018 ], [ %3033, %3038 ], [ %3826, %3850 ], [ %3826, %3886 ], [ %3826, %3932 ], [ %3826, %3934 ]
  %3976 = phi float [ %3034, %3819 ], [ %3034, %3219 ], [ %3034, %3018 ], [ %3034, %3038 ], [ %3862, %3850 ], [ %3917, %3886 ], [ %3034, %3932 ], [ %3945, %3934 ]
  %3977 = phi float [ %3035, %3819 ], [ %3035, %3219 ], [ %3035, %3018 ], [ %3035, %3038 ], [ %3859, %3850 ], [ %3894, %3886 ], [ %3035, %3932 ], [ %3942, %3934 ]
  %3978 = phi float [ %3036, %3819 ], [ %3036, %3219 ], [ %3036, %3018 ], [ %3036, %3038 ], [ %3874, %3850 ], [ %3925, %3886 ], [ %3036, %3932 ], [ %3953, %3934 ]
  %3979 = phi float [ %3827, %3819 ], [ %3037, %3219 ], [ %3037, %3018 ], [ %3037, %3038 ], [ %3827, %3850 ], [ %3827, %3886 ], [ %3827, %3932 ], [ %3827, %3934 ]
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = call float @dx.op.dot2.f32(i32 54, float %3961, float %3962, float %3961, float %3962)  ; Dot2(ax,ay,bx,by)
  %3983 = fmul fast float %3982, 0x3FE3333340000000
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3984, float %3961, float %3962, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = call float @dx.op.unary.f32(i32 25, float %3985)  ; Rsqrt(value)
  %3987 = fmul fast float %3986, %3961
  %3988 = fmul fast float %3986, %3962
  %3989 = fmul fast float %3984, %3986
  %3990 = fmul fast float %3989, %104
  %3991 = fmul fast float %3989, %105
  %3992 = fmul fast float %3989, %106
  %3993 = fmul fast float %3987, %72
  %3994 = fmul fast float %3987, %73
  %3995 = fmul fast float %3987, %74
  %3996 = fadd fast float %3990, %3993
  %3997 = fadd fast float %3991, %3994
  %3998 = fadd fast float %3992, %3995
  %3999 = fmul fast float %116, %3988
  %4000 = fmul fast float %117, %3988
  %4001 = fmul fast float %118, %3988
  %4002 = fadd fast float %3996, %3999
  %4003 = fadd fast float %3997, %4000
  %4004 = fadd fast float %3998, %4001
  %4005 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4003, float %4004, float %4002, float %4003, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %4002, %4006
  %4008 = fmul fast float %4003, %4006
  %4009 = fmul fast float %4004, %4006
  %4010 = icmp eq i32 %43, 65535
  br i1 %4010, label %4609, label %4011

; <label>:4011                                    ; preds = %3960
  %4012 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %4013 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %4014 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %4015 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %4016 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %4017 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %4018 = fadd fast float %4012, %44
  %4019 = fadd fast float %4013, %45
  %4020 = fadd fast float %4014, %46
  %4021 = fadd fast float %4015, %44
  %4022 = fadd fast float %4016, %45
  %4023 = fadd fast float %4017, %46
  %4024 = mul i32 %43, 48
  %4025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = add i32 %4024, 16
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = add i32 %4024, 32
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = bitcast float %4039 to i32
  %4041 = fmul fast float %4026, %44
  %4042 = fmul fast float %4027, %45
  %4043 = fmul fast float %4028, %46
  %4044 = fsub fast float %4041, %4031
  %4045 = fsub fast float %4042, %4032
  %4046 = fsub fast float %4043, %4033
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = fmul fast float %4047, %4036
  %4051 = fmul fast float %4048, %4037
  %4052 = fmul fast float %4049, %4038
  %4053 = fadd fast float %4036, -1.000000e+00
  %4054 = fadd fast float %4037, -1.000000e+00
  %4055 = fadd fast float %4038, -1.000000e+00
  %4056 = call float @dx.op.unary.f32(i32 27, float %4050)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 27, float %4051)  ; Round_ni(value)
  %4058 = call float @dx.op.unary.f32(i32 27, float %4052)  ; Round_ni(value)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4056, float %4053)  ; FMin(a,b)
  %4060 = call float @dx.op.binary.f32(i32 36, float %4057, float %4054)  ; FMin(a,b)
  %4061 = call float @dx.op.binary.f32(i32 36, float %4058, float %4055)  ; FMin(a,b)
  %4062 = fmul fast float %4061, %4037
  %4063 = fadd fast float %4062, %4060
  %4064 = fmul fast float %4063, %4036
  %4065 = fadd fast float %4064, %4059
  %4066 = fptosi float %4065 to i32
  %4067 = add nsw i32 %4066, %4040
  %4068 = shl nsw i32 %4067, 2
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = lshr i32 %4070, 16
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4572, label %4073

; <label>:4073                                    ; preds = %4011
  br label %4074

; <label>:4074                                    ; preds = %4201, %4073
  %4075 = phi i32 [ %4103, %4201 ], [ %4071, %4073 ]
  %4076 = phi float [ %4202, %4201 ], [ 0.000000e+00, %4073 ]
  %4077 = phi float [ %4203, %4201 ], [ %3981, %4073 ]
  %4078 = phi float [ %4204, %4201 ], [ %3979, %4073 ]
  %4079 = phi float [ %4205, %4201 ], [ %3972, %4073 ]
  %4080 = phi float [ %4206, %4201 ], [ %3973, %4073 ]
  %4081 = phi float [ %4207, %4201 ], [ %3974, %4073 ]
  %4082 = phi float [ %4208, %4201 ], [ 0.000000e+00, %4073 ]
  %4083 = phi float [ %4209, %4201 ], [ 0.000000e+00, %4073 ]
  %4084 = phi float [ %4210, %4201 ], [ %3966, %4073 ]
  %4085 = phi float [ %4211, %4201 ], [ %3967, %4073 ]
  %4086 = phi float [ %4212, %4201 ], [ %3968, %4073 ]
  %4087 = phi float [ %4213, %4201 ], [ %3969, %4073 ]
  %4088 = phi float [ %4214, %4201 ], [ %3970, %4073 ]
  %4089 = phi float [ %4215, %4201 ], [ %3971, %4073 ]
  %4090 = phi float [ %4216, %4201 ], [ %4007, %4073 ]
  %4091 = phi float [ %4217, %4201 ], [ %4008, %4073 ]
  %4092 = phi float [ %4218, %4201 ], [ %4009, %4073 ]
  %4093 = phi float [ %4219, %4201 ], [ %3977, %4073 ]
  %4094 = phi float [ %4220, %4201 ], [ %3976, %4073 ]
  %4095 = phi float [ %4221, %4201 ], [ 0.000000e+00, %4073 ]
  %4096 = phi float [ %4222, %4201 ], [ %3975, %4073 ]
  %4097 = phi float [ %4223, %4201 ], [ %3963, %4073 ]
  %4098 = phi float [ %4224, %4201 ], [ %3964, %4073 ]
  %4099 = phi float [ %4225, %4201 ], [ %3965, %4073 ]
  %4100 = shl nuw nsw i32 %4075, 2
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = lshr i32 %4102, 16
  %4104 = shl i32 %4102, 8
  %4105 = and i32 %4104, 16776960
  %4106 = or i32 %4105, 48
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.ResRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.ResRet.f32 %4107, 2
  %4111 = or i32 %4105, 64
  %4112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.i32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.i32 %4112, 1
  %4115 = or i32 %4105, 80
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4119 = or i32 %4105, 96
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = extractvalue %dx.types.ResRet.f32 %4120, 3
  %4125 = or i32 %4105, 112
  %4126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4128 = or i32 %4105, 128
  %4129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.ResRet.f32 %4129, 3
  %4134 = or i32 %4105, 144
  %4135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.ResRet.f32 %4135, 3
  %4140 = or i32 %4105, 160
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = or i32 %4105, 192
  %4147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.i32 %4147, 0
  %4149 = or i32 %4105, 208
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = or i32 %4105, 248
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4160 = extractvalue %dx.types.ResRet.f32 %4156, 3
  %4161 = call float @dx.op.dot4.f32(i32 56, float %4157, float %4158, float %4159, float %4160, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4162 = or i32 %4105, 16
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4168 = call float @dx.op.dot4.f32(i32 56, float %4164, float %4165, float %4166, float %4167, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4169 = or i32 %4105, 32
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.ResRet.f32 %4170, 3
  %4175 = call float @dx.op.dot4.f32(i32 56, float %4171, float %4172, float %4173, float %4174, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4176 = call float @dx.op.unary.f32(i32 27, float %4161)  ; Round_ni(value)
  %4177 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4178 = call float @dx.op.unary.f32(i32 27, float %4168)  ; Round_ni(value)
  %4179 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4180 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4181 = call float @dx.op.unary.f32(i32 27, float %4180)  ; Round_ni(value)
  %4182 = fadd fast float %4179, %4177
  %4183 = fadd fast float %4182, %4181
  %4184 = fcmp fast oeq float %4183, 0.000000e+00
  %4185 = call float @dx.op.dot4.f32(i32 56, float %4157, float %4158, float %4159, float %4160, float %4018, float %4019, float %4020, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4186 = call float @dx.op.dot4.f32(i32 56, float %4164, float %4165, float %4166, float %4167, float %4018, float %4019, float %4020, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4187 = call float @dx.op.dot4.f32(i32 56, float %4157, float %4158, float %4159, float %4160, float %4021, float %4022, float %4023, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4188 = call float @dx.op.dot4.f32(i32 56, float %4164, float %4165, float %4166, float %4167, float %4021, float %4022, float %4023, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4189 = fsub fast float %4185, %4161
  %4190 = fsub fast float %4187, %4161
  %4191 = fsub fast float %4186, %4168
  %4192 = fsub fast float %4188, %4168
  %4193 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4109, float %4110, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fadd fast float %4195, %4193
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4199 = fcmp fast ogt float %4197, %4198
  %4200 = and i1 %4184, %4199
  br i1 %4200, label %4227, label %4201

; <label>:4201                                    ; preds = %4558, %4310, %4227, %4074
  %4202 = phi float [ %4076, %4227 ], [ %4313, %4310 ], [ %4313, %4558 ], [ %4076, %4074 ]
  %4203 = phi float [ %4077, %4227 ], [ %4077, %4310 ], [ %4534, %4558 ], [ %4077, %4074 ]
  %4204 = phi float [ %4078, %4227 ], [ %4078, %4310 ], [ %4532, %4558 ], [ %4078, %4074 ]
  %4205 = phi float [ %4079, %4227 ], [ %4079, %4310 ], [ %4510, %4558 ], [ %4079, %4074 ]
  %4206 = phi float [ %4080, %4227 ], [ %4080, %4310 ], [ %4511, %4558 ], [ %4080, %4074 ]
  %4207 = phi float [ %4081, %4227 ], [ %4081, %4310 ], [ %4512, %4558 ], [ %4081, %4074 ]
  %4208 = phi float [ %4082, %4227 ], [ %4082, %4310 ], [ %4437, %4558 ], [ %4082, %4074 ]
  %4209 = phi float [ %4083, %4227 ], [ %4083, %4310 ], [ %4435, %4558 ], [ %4083, %4074 ]
  %4210 = phi float [ %4084, %4227 ], [ %4084, %4310 ], [ %4480, %4558 ], [ %4084, %4074 ]
  %4211 = phi float [ %4085, %4227 ], [ %4085, %4310 ], [ %4481, %4558 ], [ %4085, %4074 ]
  %4212 = phi float [ %4086, %4227 ], [ %4086, %4310 ], [ %4482, %4558 ], [ %4086, %4074 ]
  %4213 = phi float [ %4087, %4227 ], [ %4087, %4310 ], [ %4568, %4558 ], [ %4087, %4074 ]
  %4214 = phi float [ %4088, %4227 ], [ %4088, %4310 ], [ %4569, %4558 ], [ %4088, %4074 ]
  %4215 = phi float [ %4089, %4227 ], [ %4089, %4310 ], [ %4570, %4558 ], [ %4089, %4074 ]
  %4216 = phi float [ %4090, %4227 ], [ %4090, %4310 ], [ %4416, %4558 ], [ %4090, %4074 ]
  %4217 = phi float [ %4091, %4227 ], [ %4091, %4310 ], [ %4417, %4558 ], [ %4091, %4074 ]
  %4218 = phi float [ %4092, %4227 ], [ %4092, %4310 ], [ %4418, %4558 ], [ %4092, %4074 ]
  %4219 = phi float [ %4093, %4227 ], [ %4093, %4310 ], [ %4490, %4558 ], [ %4093, %4074 ]
  %4220 = phi float [ %4094, %4227 ], [ %4094, %4310 ], [ %4487, %4558 ], [ %4094, %4074 ]
  %4221 = phi float [ %4095, %4227 ], [ %4095, %4310 ], [ %4484, %4558 ], [ %4095, %4074 ]
  %4222 = phi float [ %4096, %4227 ], [ %4096, %4310 ], [ %4433, %4558 ], [ %4096, %4074 ]
  %4223 = phi float [ %4097, %4227 ], [ %4097, %4310 ], [ %4428, %4558 ], [ %4097, %4074 ]
  %4224 = phi float [ %4098, %4227 ], [ %4098, %4310 ], [ %4429, %4558 ], [ %4098, %4074 ]
  %4225 = phi float [ %4099, %4227 ], [ %4099, %4310 ], [ %4430, %4558 ], [ %4099, %4074 ]
  %4226 = icmp eq i32 %4103, 0
  br i1 %4226, label %4571, label %4074

; <label>:4227                                    ; preds = %4074
  %4228 = extractvalue %dx.types.ResRet.f32 %4107, 3
  %4229 = extractvalue %dx.types.ResRet.f32 %4126, 3
  %4230 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4234 = extractvalue %dx.types.ResRet.i32 %4112, 3
  %4235 = extractvalue %dx.types.ResRet.i32 %4112, 2
  %4236 = bitcast float %4228 to i32
  %4237 = add i32 %4234, 0
  %4238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4237, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4238, %dx.types.Handle %4239, float %4161, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4189, float %4191, float undef, float %4190, float %4192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = fmul fast float %4241, %4233
  %4243 = fadd fast float %4242, %4232
  %4244 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4245 = fmul fast float %4161, %4121
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4168, float %4245)  ; FMad(a,b,c)
  %4247 = fadd fast float %4246, %4231
  %4248 = fmul fast float %4161, %4123
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4168, float %4248)  ; FMad(a,b,c)
  %4250 = fadd fast float %4249, %4230
  %4251 = fmul fast float %4189, %4121
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4191, float %4251)  ; FMad(a,b,c)
  %4253 = fmul fast float %4189, %4123
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4191, float %4253)  ; FMad(a,b,c)
  %4255 = fmul fast float %4190, %4121
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4192, float %4255)  ; FMad(a,b,c)
  %4257 = fmul fast float %4190, %4123
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4192, float %4257)  ; FMad(a,b,c)
  %4259 = add i32 %4235, 0
  %4260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4260, %dx.types.Handle %4239, float %4247, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4252, float %4254, float undef, float %4256, float %4258, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = and i32 %4236, 1024
  %4264 = icmp ne i32 %4263, 0
  %4265 = fcmp fast ogt float %4262, 0x3FE0101020000000
  %4266 = uitofp i1 %4265 to float
  %4267 = select i1 %4264, float %4266, float %4262
  %4268 = and i32 %4236, 8192
  %4269 = icmp ne i32 %4268, 0
  %4270 = select i1 %4269, float %4229, float 1.000000e+00
  %4271 = fmul fast float %4161, 2.000000e+00
  %4272 = fadd fast float %4271, -1.000000e+00
  %4273 = call float @dx.op.unary.f32(i32 6, float %4272)  ; FAbs(value)
  %4274 = fmul fast float %4273, %4154
  %4275 = fsub fast float %4274, %4154
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4168, 2.000000e+00
  %4278 = fadd fast float %4277, -1.000000e+00
  %4279 = call float @dx.op.unary.f32(i32 6, float %4278)  ; FAbs(value)
  %4280 = fmul fast float %4279, %4155
  %4281 = fsub fast float %4280, %4155
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4180, %4117
  %4284 = fsub fast float %4283, %4117
  %4285 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4286 = fmul fast float %4244, %4270
  %4287 = fmul fast float %4286, %4241
  %4288 = fmul fast float %4287, %4276
  %4289 = fmul fast float %4288, %4267
  %4290 = fmul fast float %4289, %4282
  %4291 = fmul fast float %4290, %4285
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4292, 0
  %4295 = fsub fast float %4197, %4294
  %4296 = fmul fast float %4295, %4293
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4291, %4118
  %4299 = fadd fast float %4291, %4118
  %4300 = fmul fast float %4299, %4127
  %4301 = fsub fast float %4300, %4127
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = and i32 %4236, 128
  %4304 = icmp ne i32 %4303, 0
  %4305 = select i1 %4304, float %4302, float %4298
  %4306 = fmul fast float %4305, %4297
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = fcmp fast ugt float %4306, %4308
  br i1 %4309, label %4310, label %4201

; <label>:4310                                    ; preds = %4227
  %4311 = select i1 %4269, float %4306, float 0.000000e+00
  %4312 = fadd fast float %4311, %4076
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  br i1 %4269, label %4201, label %4314

; <label>:4314                                    ; preds = %4310
  %4315 = and i32 %4236, 4
  %4316 = and i32 %4236, 8
  %4317 = add i32 %4113, 0
  %4318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4317, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4318, %dx.types.Handle %4319, float %4247, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4252, float %4254, float undef, float %4256, float %4258, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.ResRet.f32 %4320, 3
  %4325 = bitcast float %4139 to i32
  %4326 = and i32 %4325, 255
  %4327 = uitofp i32 %4326 to float
  %4328 = lshr i32 %4325, 8
  %4329 = and i32 %4328, 255
  %4330 = uitofp i32 %4329 to float
  %4331 = fmul fast float %4324, %4327
  %4332 = fadd fast float %4331, %4330
  %4333 = fmul fast float %4332, 0x3F70101000000000
  %4334 = add i32 %4114, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4335, %dx.types.Handle %4319, float %4247, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4252, float %4254, float undef, float %4256, float %4258, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = extractvalue %dx.types.ResRet.f32 %4336, 1
  %4339 = extractvalue %dx.types.ResRet.f32 %4336, 2
  %4340 = extractvalue %dx.types.ResRet.f32 %4336, 3
  %4341 = bitcast float %4133 to i32
  %4342 = and i32 %4341, 255
  %4343 = uitofp i32 %4342 to float
  %4344 = lshr i32 %4341, 8
  %4345 = and i32 %4344, 255
  %4346 = uitofp i32 %4345 to float
  %4347 = lshr i32 %4341, 16
  %4348 = and i32 %4347, 255
  %4349 = uitofp i32 %4348 to float
  %4350 = fmul fast float %4349, 0x3F70101000000000
  %4351 = fmul fast float %4337, %4343
  %4352 = fadd fast float %4351, %4346
  %4353 = fmul fast float %4352, 0x3F70101000000000
  %4354 = fadd fast float %4338, -5.000000e-01
  %4355 = fadd fast float %4340, -5.000000e-01
  %4356 = fmul fast float %4354, %4350
  %4357 = fmul fast float %4355, %4350
  %4358 = fadd fast float %4356, 5.000000e-01
  %4359 = fadd fast float %4357, 5.000000e-01
  %4360 = fmul fast float %4321, %4142
  %4361 = fmul fast float %4322, %4143
  %4362 = fmul fast float %4323, %4144
  %4363 = fmul fast float %4358, 2.000000e+00
  %4364 = fadd fast float %4363, -1.000000e+00
  %4365 = fmul fast float %4359, 2.000000e+00
  %4366 = fadd fast float %4365, -1.000000e+00
  %4367 = fadd fast float %4364, %4366
  %4368 = fmul fast float %4367, 5.000000e-01
  %4369 = fsub fast float %4364, %4366
  %4370 = fmul fast float %4369, 5.000000e-01
  %4371 = call float @dx.op.unary.f32(i32 6, float %4368)  ; FAbs(value)
  %4372 = fsub fast float 1.000000e+00, %4371
  %4373 = call float @dx.op.unary.f32(i32 6, float %4370)  ; FAbs(value)
  %4374 = fsub fast float %4372, %4373
  %4375 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4370, float %4374, float %4368, float %4370, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 25, float %4375)  ; Rsqrt(value)
  %4377 = fmul fast float %4368, %4376
  %4378 = fmul fast float %4370, %4376
  %4379 = fmul fast float %4376, %4374
  %4380 = fmul fast float %4379, %4108
  %4381 = fmul fast float %4379, %4109
  %4382 = fmul fast float %4379, %4110
  %4383 = fmul fast float %4377, %4130
  %4384 = fmul fast float %4377, %4131
  %4385 = fmul fast float %4377, %4132
  %4386 = fadd fast float %4383, %4380
  %4387 = fadd fast float %4384, %4381
  %4388 = fadd fast float %4385, %4382
  %4389 = fmul fast float %4378, %4136
  %4390 = fmul fast float %4378, %4137
  %4391 = fmul fast float %4378, %4138
  %4392 = fadd fast float %4386, %4389
  %4393 = fadd fast float %4387, %4390
  %4394 = fadd fast float %4388, %4391
  %4395 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = call float @dx.op.unary.f32(i32 25, float %4395)  ; Rsqrt(value)
  %4397 = fmul fast float %4392, %4396
  %4398 = fmul fast float %4393, %4396
  %4399 = fmul fast float %4394, %4396
  %4400 = icmp ne i32 %4316, 0
  %4401 = select i1 %4400, float 1.000000e+00, float 0.000000e+00
  %4402 = fmul fast float %4306, %4401
  %4403 = and i32 %4236, 1
  %4404 = icmp eq i32 %4403, 0
  br i1 %4404, label %4405, label %4409

; <label>:4405                                    ; preds = %4314
  %4406 = fsub fast float %4397, %4090
  %4407 = fsub fast float %4398, %4091
  %4408 = fsub fast float %4399, %4092
  br label %4409

; <label>:4409                                    ; preds = %4405, %4314
  %4410 = phi float [ %4406, %4405 ], [ %4397, %4314 ]
  %4411 = phi float [ %4407, %4405 ], [ %4398, %4314 ]
  %4412 = phi float [ %4408, %4405 ], [ %4399, %4314 ]
  %4413 = fmul float %4412, %4402
  %4414 = fmul float %4411, %4402
  %4415 = fmul float %4410, %4402
  %4416 = fadd fast float %4415, %4090
  %4417 = fadd fast float %4414, %4091
  %4418 = fadd fast float %4413, %4092
  %4419 = icmp ne i32 %4315, 0
  %4420 = select i1 %4419, float 1.000000e+00, float 0.000000e+00
  %4421 = fmul fast float %4306, %4420
  %4422 = fsub fast float %4360, %4097
  %4423 = fsub fast float %4361, %4098
  %4424 = fsub fast float %4362, %4099
  %4425 = fmul fast float %4422, %4421
  %4426 = fmul fast float %4423, %4421
  %4427 = fmul fast float %4424, %4421
  %4428 = fadd fast float %4425, %4097
  %4429 = fadd fast float %4426, %4098
  %4430 = fadd fast float %4427, %4099
  %4431 = fsub fast float %4333, %4096
  %4432 = fmul fast float %4431, %4421
  %4433 = fadd fast float %4432, %4096
  %4434 = fmul fast float %4421, %4083
  %4435 = fsub fast float %4083, %4434
  %4436 = fmul fast float %4421, %4082
  %4437 = fsub fast float %4082, %4436
  %4438 = bitcast float %4151 to i32
  %4439 = lshr i32 %4438, 16
  %4440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4439)  ; LegacyF16ToF32(value)
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = and i32 %4442, 1
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4445, label %4470

; <label>:4445                                    ; preds = %4409
  %4446 = fadd fast float %4333, 0xBFB99999A0000000
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fmul fast float %4447, 0x3FF1C71C80000000
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4451 = fmul fast float %4450, %4360
  %4452 = fmul fast float %4450, %4361
  %4453 = fmul fast float %4450, %4362
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.binary.f32(i32 35, float %4455, float %4456)  ; FMax(a,b)
  %4458 = call float @dx.op.binary.f32(i32 35, float %4454, float %4457)  ; FMax(a,b)
  %4459 = fcmp fast ogt float %4458, 0.000000e+00
  %4460 = bitcast float %4458 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = select i1 %4459, float %4462, float 0.000000e+00
  %4464 = fmul fast float %4454, %4440
  %4465 = fmul fast float %4455, %4440
  %4466 = fmul fast float %4456, %4440
  %4467 = fmul fast float %4464, %4463
  %4468 = fmul fast float %4465, %4463
  %4469 = fmul fast float %4466, %4463
  br label %4470

; <label>:4470                                    ; preds = %4445, %4409
  %4471 = phi float [ %4440, %4409 ], [ %4467, %4445 ]
  %4472 = phi float [ %4440, %4409 ], [ %4468, %4445 ]
  %4473 = phi float [ %4440, %4409 ], [ %4469, %4445 ]
  %4474 = fsub fast float %4471, %4084
  %4475 = fsub fast float %4472, %4085
  %4476 = fsub fast float %4473, %4086
  %4477 = fmul fast float %4474, %4421
  %4478 = fmul fast float %4475, %4421
  %4479 = fmul fast float %4476, %4421
  %4480 = fadd fast float %4477, %4084
  %4481 = fadd fast float %4478, %4085
  %4482 = fadd fast float %4479, %4086
  %4483 = fadd fast float %4306, %4095
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fsub fast float %4353, %4094
  %4486 = fmul fast float %4485, %4402
  %4487 = fadd fast float %4486, %4094
  %4488 = fsub fast float %4339, %4093
  %4489 = fmul fast float %4488, %4402
  %4490 = fadd fast float %4489, %4093
  br i1 %4404, label %4499, label %4491

; <label>:4491                                    ; preds = %4470
  %4492 = and i32 %4236, 32768
  %4493 = icmp eq i32 %4492, 0
  br i1 %4493, label %4509, label %4494

; <label>:4494                                    ; preds = %4491
  %4495 = fmul fast float %4402, 1.270000e+02
  %4496 = fadd fast float %4495, %4079
  %4497 = fadd fast float %4495, %4080
  %4498 = fadd fast float %4495, %4081
  br label %4509

; <label>:4499                                    ; preds = %4470
  %4500 = fsub fast float 1.270000e+02, %4079
  %4501 = fsub fast float 1.270000e+02, %4080
  %4502 = fsub fast float 1.270000e+02, %4081
  %4503 = fmul fast float %4402, %4500
  %4504 = fmul fast float %4402, %4501
  %4505 = fmul fast float %4402, %4502
  %4506 = fadd fast float %4503, %4079
  %4507 = fadd fast float %4504, %4080
  %4508 = fadd fast float %4505, %4081
  br label %4509

; <label>:4509                                    ; preds = %4499, %4494, %4491
  %4510 = phi float [ %4496, %4494 ], [ %4079, %4491 ], [ %4506, %4499 ]
  %4511 = phi float [ %4497, %4494 ], [ %4080, %4491 ], [ %4507, %4499 ]
  %4512 = phi float [ %4498, %4494 ], [ %4081, %4491 ], [ %4508, %4499 ]
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = fmul fast float %4516, %4513
  %4518 = fadd fast float %4517, %4515
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = bitcast float %4145 to i32
  %4521 = and i32 %4520, 65535
  %4522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4521)  ; LegacyF16ToF32(value)
  %4523 = lshr i32 %4520, 16
  %4524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4523)  ; LegacyF16ToF32(value)
  %4525 = fcmp fast oge float %4522, 0.000000e+00
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = select i1 %4525, float %4522, float %4527
  %4529 = fadd fast float %4528, %4524
  %4530 = fsub fast float %4519, %4078
  %4531 = fmul fast float %4530, %4306
  %4532 = fadd fast float %4531, %4078
  %4533 = fmul fast float %4529, %4306
  %4534 = call float @dx.op.binary.f32(i32 35, float %4077, float %4533)  ; FMax(a,b)
  %4535 = and i32 %4236, 16
  %4536 = icmp eq i32 %4535, 0
  br i1 %4536, label %4558, label %4537

; <label>:4537                                    ; preds = %4509
  %4538 = add i32 %4148, 0
  %4539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4539, %dx.types.Handle %4319, float %4247, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4252, float %4254, float undef, float %4256, float %4258, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = and i32 %4438, 65535
  %4545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4544)  ; LegacyF16ToF32(value)
  %4546 = fmul fast float %4541, %4142
  %4547 = fmul fast float %4542, %4143
  %4548 = fmul fast float %4543, %4144
  %4549 = and i32 %4236, 16384
  %4550 = icmp ne i32 %4549, 0
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = select i1 %4550, float %4552, float 1.000000e+00
  %4554 = fmul fast float %4553, %4545
  %4555 = fmul fast float %4546, %4554
  %4556 = fmul fast float %4547, %4554
  %4557 = fmul fast float %4548, %4554
  br label %4558

; <label>:4558                                    ; preds = %4537, %4509
  %4559 = phi float [ %4555, %4537 ], [ 0.000000e+00, %4509 ]
  %4560 = phi float [ %4556, %4537 ], [ 0.000000e+00, %4509 ]
  %4561 = phi float [ %4557, %4537 ], [ 0.000000e+00, %4509 ]
  %4562 = fsub fast float %4559, %4087
  %4563 = fsub fast float %4560, %4088
  %4564 = fsub fast float %4561, %4089
  %4565 = fmul fast float %4562, %4306
  %4566 = fmul fast float %4563, %4306
  %4567 = fmul fast float %4564, %4306
  %4568 = fadd fast float %4565, %4087
  %4569 = fadd fast float %4566, %4088
  %4570 = fadd fast float %4567, %4089
  br label %4201

; <label>:4571                                    ; preds = %4201
  br label %4572

; <label>:4572                                    ; preds = %4571, %4011
  %4573 = phi float [ 0.000000e+00, %4011 ], [ %4202, %4571 ]
  %4574 = phi float [ %3981, %4011 ], [ %4203, %4571 ]
  %4575 = phi float [ %3979, %4011 ], [ %4204, %4571 ]
  %4576 = phi float [ %3972, %4011 ], [ %4205, %4571 ]
  %4577 = phi float [ %3973, %4011 ], [ %4206, %4571 ]
  %4578 = phi float [ %3974, %4011 ], [ %4207, %4571 ]
  %4579 = phi float [ 0.000000e+00, %4011 ], [ %4208, %4571 ]
  %4580 = phi float [ 0.000000e+00, %4011 ], [ %4209, %4571 ]
  %4581 = phi float [ %3966, %4011 ], [ %4210, %4571 ]
  %4582 = phi float [ %3967, %4011 ], [ %4211, %4571 ]
  %4583 = phi float [ %3968, %4011 ], [ %4212, %4571 ]
  %4584 = phi float [ %3969, %4011 ], [ %4213, %4571 ]
  %4585 = phi float [ %3970, %4011 ], [ %4214, %4571 ]
  %4586 = phi float [ %3971, %4011 ], [ %4215, %4571 ]
  %4587 = phi float [ %4007, %4011 ], [ %4216, %4571 ]
  %4588 = phi float [ %4008, %4011 ], [ %4217, %4571 ]
  %4589 = phi float [ %4009, %4011 ], [ %4218, %4571 ]
  %4590 = phi float [ %3977, %4011 ], [ %4219, %4571 ]
  %4591 = phi float [ %3976, %4011 ], [ %4220, %4571 ]
  %4592 = phi float [ 0.000000e+00, %4011 ], [ %4221, %4571 ]
  %4593 = phi float [ %3975, %4011 ], [ %4222, %4571 ]
  %4594 = phi float [ %3963, %4011 ], [ %4223, %4571 ]
  %4595 = phi float [ %3964, %4011 ], [ %4224, %4571 ]
  %4596 = phi float [ %3965, %4011 ], [ %4225, %4571 ]
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4588, float %4589, float %4587, float %4588, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = call float @dx.op.unary.f32(i32 25, float %4597)  ; Rsqrt(value)
  %4599 = fmul fast float %4598, %4587
  %4600 = fmul fast float %4598, %4588
  %4601 = fmul fast float %4598, %4589
  %4602 = fadd fast float %4592, %1149
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4600, float %4601, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 25, float %4604)  ; Rsqrt(value)
  %4606 = fmul fast float %4605, %4599
  %4607 = fmul fast float %4605, %4600
  %4608 = fmul fast float %4605, %4601
  br label %4609

; <label>:4609                                    ; preds = %4572, %3960
  %4610 = phi float [ %4606, %4572 ], [ %4007, %3960 ]
  %4611 = phi float [ %4607, %4572 ], [ %4008, %3960 ]
  %4612 = phi float [ %4608, %4572 ], [ %4009, %3960 ]
  %4613 = phi float [ %4594, %4572 ], [ %3963, %3960 ]
  %4614 = phi float [ %4595, %4572 ], [ %3964, %3960 ]
  %4615 = phi float [ %4596, %4572 ], [ %3965, %3960 ]
  %4616 = phi float [ %4581, %4572 ], [ %3966, %3960 ]
  %4617 = phi float [ %4582, %4572 ], [ %3967, %3960 ]
  %4618 = phi float [ %4583, %4572 ], [ %3968, %3960 ]
  %4619 = phi float [ %4584, %4572 ], [ %3969, %3960 ]
  %4620 = phi float [ %4585, %4572 ], [ %3970, %3960 ]
  %4621 = phi float [ %4586, %4572 ], [ %3971, %3960 ]
  %4622 = phi float [ %4576, %4572 ], [ %3972, %3960 ]
  %4623 = phi float [ %4577, %4572 ], [ %3973, %3960 ]
  %4624 = phi float [ %4578, %4572 ], [ %3974, %3960 ]
  %4625 = phi float [ %4593, %4572 ], [ %3975, %3960 ]
  %4626 = phi float [ %4603, %4572 ], [ %1149, %3960 ]
  %4627 = phi float [ %4591, %4572 ], [ %3976, %3960 ]
  %4628 = phi float [ %4590, %4572 ], [ %3977, %3960 ]
  %4629 = phi float [ %4580, %4572 ], [ 0.000000e+00, %3960 ]
  %4630 = phi float [ %4579, %4572 ], [ 0.000000e+00, %3960 ]
  %4631 = phi float [ %4573, %4572 ], [ 0.000000e+00, %3960 ]
  %4632 = phi float [ %4574, %4572 ], [ %3981, %3960 ]
  %4633 = phi float [ %4575, %4572 ], [ %3979, %3960 ]
  %4634 = fadd fast float %4625, 0xBFB99999A0000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, 0x3FF1C71C80000000
  %4637 = call float @dx.op.binary.f32(i32 36, float %4625, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4638 = fsub fast float 1.000000e+00, %4636
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, %4613
  %4641 = fmul fast float %4639, %4614
  %4642 = fmul fast float %4639, %4615
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = fmul fast float %4636, %4613
  %4647 = fmul fast float %4636, %4614
  %4648 = fmul fast float %4636, %4615
  %4649 = fadd fast float %4646, %4637
  %4650 = fadd fast float %4647, %4637
  %4651 = fadd fast float %4648, %4637
  %4652 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.i32 %4656, 0
  %4658 = and i32 %4657, 1
  %4659 = icmp eq i32 %4658, 0
  br i1 %4659, label %4674, label %4660

; <label>:4660                                    ; preds = %4609
  %4661 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4643, float %4661)  ; FMax(a,b)
  %4663 = fcmp fast ogt float %4662, 0.000000e+00
  %4664 = bitcast float %4662 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = select i1 %4663, float %4666, float 0.000000e+00
  %4668 = fmul fast float %4643, %4616
  %4669 = fmul fast float %4644, %4617
  %4670 = fmul fast float %4645, %4618
  %4671 = fmul fast float %4668, %4667
  %4672 = fmul fast float %4669, %4667
  %4673 = fmul fast float %4670, %4667
  br label %4674

; <label>:4674                                    ; preds = %4660, %4609
  %4675 = phi float [ %4671, %4660 ], [ %4616, %4609 ]
  %4676 = phi float [ %4672, %4660 ], [ %4617, %4609 ]
  %4677 = phi float [ %4673, %4660 ], [ %4618, %4609 ]
  %4678 = call float @dx.op.binary.f32(i32 36, float %4622, float 1.270000e+02)  ; FMin(a,b)
  %4679 = call float @dx.op.binary.f32(i32 36, float %4623, float 1.270000e+02)  ; FMin(a,b)
  %4680 = call float @dx.op.binary.f32(i32 36, float %4624, float 1.270000e+02)  ; FMin(a,b)
  %4681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.i32 %4681, 3
  %4683 = and i32 %4682, 8
  %4684 = icmp ne i32 %4683, 0
  %4685 = call float @dx.op.binary.f32(i32 35, float %4643, float %4613)  ; FMax(a,b)
  %4686 = call float @dx.op.binary.f32(i32 35, float %4644, float %4613)  ; FMax(a,b)
  %4687 = call float @dx.op.binary.f32(i32 35, float %4645, float %4613)  ; FMax(a,b)
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = select i1 %237, float %4613, float %4643
  %4690 = select i1 %237, float %4688, float %4644
  %4691 = select i1 %237, float 1.000000e+00, float %4645
  %4692 = select i1 %4684, float %4685, float %4689
  %4693 = select i1 %4684, float %4686, float %4690
  %4694 = select i1 %4684, float %4687, float %4691
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = select i1 %237, float %4695, float %4675
  %4697 = select i1 %237, float %4695, float %4676
  %4698 = select i1 %237, float %4695, float %4677
  %4699 = and i32 %213, 3
  %4700 = select i1 %207, i32 %4699, i32 0
  %4701 = icmp eq i32 %4700, 1
  br i1 %4701, label %4702, label %4778

; <label>:4702                                    ; preds = %4674
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fadd fast float %4704, %176
  %4707 = fadd fast float %4705, %177
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = fsub fast float %4706, %4709
  %4712 = fsub fast float %4707, %4710
  %4713 = fmul fast float %4711, %4711
  %4714 = fmul fast float %4712, %4712
  %4715 = fadd fast float %4713, %4714
  %4716 = call float @dx.op.unary.f32(i32 24, float %4715)  ; Sqrt(value)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4718 = fcmp fast olt float %4716, %4717
  br i1 %4718, label %4719, label %4772

; <label>:4719                                    ; preds = %4702
  %4720 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4721 = fadd fast float %4720, %178
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4728 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4726, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4722, 3
  %4732 = extractvalue %dx.types.CBufRet.f32 %4724, 3
  %4733 = extractvalue %dx.types.CBufRet.f32 %4726, 3
  %4734 = fadd fast float %4731, %4706
  %4735 = fadd fast float %4732, %4707
  %4736 = fadd fast float %4721, %4733
  %4737 = fmul fast float %4734, %4723
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4725, float %4737)  ; FMad(a,b,c)
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4727, float %4738)  ; FMad(a,b,c)
  %4740 = fmul fast float %4734, %4728
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4729, float %4740)  ; FMad(a,b,c)
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4730, float %4741)  ; FMad(a,b,c)
  %4743 = fsub fast float %4739, %4731
  %4744 = fsub fast float %4742, %4732
  %4745 = fsub fast float %4743, %4709
  %4746 = fadd fast float %4745, %4717
  %4747 = fsub fast float %4744, %4710
  %4748 = fadd fast float %4747, %4717
  %4749 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4750 = fmul fast float %4746, %4749
  %4751 = fmul fast float %4748, %4749
  %4752 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4754 = fsub fast float 1.000000e+00, %4752
  %4755 = fsub fast float 1.000000e+00, %4753
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %4754, float %4755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = fcmp fast ugt float %4757, 0.000000e+00
  br i1 %4758, label %4759, label %4772

; <label>:4759                                    ; preds = %4719
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4762 = fmul fast float %4761, %4757
  %4763 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4764 = fadd fast float %4763, %4762
  %4765 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4766 = fadd fast float %4764, %4733
  %4767 = fmul fast float %4739, %4727
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4742, float %4730, float %4767)  ; FMad(a,b,c)
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4766, float %4765, float %4768)  ; FMad(a,b,c)
  %4770 = fsub fast float %4769, %4733
  %4771 = fsub fast float %4770, %4720
  br label %4772

; <label>:4772                                    ; preds = %4759, %4719, %4702
  %4773 = phi i1 [ true, %4759 ], [ false, %4719 ], [ false, %4702 ]
  %4774 = phi float [ %4771, %4759 ], [ -1.310720e+05, %4719 ], [ -1.310720e+05, %4702 ]
  %4775 = fsub fast float %4774, %178
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = select i1 %4773, float %4776, float 1.000000e+00
  br label %4778

; <label>:4778                                    ; preds = %4772, %4674
  %4779 = phi float [ %4777, %4772 ], [ 0.000000e+00, %4674 ]
  %4780 = icmp eq i32 %4700, 3
  %4781 = select i1 %4780, float 1.000000e+00, float %4779
  %4782 = call float @dx.op.binary.f32(i32 35, float %4631, float %4781)  ; FMax(a,b)
  %4783 = fcmp fast olt float %4781, 1.000000e+00
  %4784 = fcmp uge float %57, 0.000000e+00
  %4785 = and i1 %4784, %4783
  br i1 %4785, label %4786, label %4796

; <label>:4786                                    ; preds = %4778
  %4787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.ResRet.f32 %4787, 2
  %4791 = fadd fast float %4788, %4782
  %4792 = fcmp ule float %56, 0.000000e+00
  %4793 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = select i1 %4792, float %4793, float 1.000000e+00
  %4795 = fmul fast float %4794, %4790
  br label %4796

; <label>:4796                                    ; preds = %4786, %4778
  %4797 = phi float [ %4791, %4786 ], [ %4782, %4778 ]
  %4798 = phi float [ %4789, %4786 ], [ 0.000000e+00, %4778 ]
  %4799 = phi float [ %4795, %4786 ], [ 0.000000e+00, %4778 ]
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = fcmp fast une float %4801, 0.000000e+00
  %4804 = fcmp fast une float %4802, 0.000000e+00
  %4805 = or i1 %4803, %4804
  br i1 %4805, label %4806, label %5381

; <label>:4806                                    ; preds = %4796
  br i1 %4803, label %4807, label %5080

; <label>:4807                                    ; preds = %4806
  %4808 = call float @dx.op.unary.f32(i32 23, float %4628)  ; Log(value)
  %4809 = fmul fast float %4808, 4.000000e+00
  %4810 = call float @dx.op.unary.f32(i32 21, float %4809)  ; Exp(value)
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = fmul fast float %4812, %44
  %4814 = fmul fast float %4812, %45
  %4815 = fmul fast float %4812, %46
  %4816 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4817 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4818 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4819 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4820 = call float @dx.op.unary.f32(i32 23, float %4817)  ; Log(value)
  %4821 = call float @dx.op.unary.f32(i32 23, float %4818)  ; Log(value)
  %4822 = fmul fast float %4819, 4.000000e+00
  %4823 = fmul fast float %4820, 4.000000e+00
  %4824 = fmul fast float %4821, 4.000000e+00
  %4825 = call float @dx.op.unary.f32(i32 21, float %4822)  ; Exp(value)
  %4826 = call float @dx.op.unary.f32(i32 21, float %4823)  ; Exp(value)
  %4827 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4828 = fadd fast float %4826, %4825
  %4829 = fadd fast float %4828, %4827
  %4830 = fdiv fast float 1.000000e+00, %4829
  %4831 = fmul fast float %4830, %4825
  %4832 = fcmp fast ogt float %53, 0.000000e+00
  %4833 = fcmp fast ogt float %54, 0.000000e+00
  %4834 = fcmp fast ogt float %55, 0.000000e+00
  %4835 = fcmp fast olt float %53, 0.000000e+00
  %4836 = fcmp fast olt float %54, 0.000000e+00
  %4837 = fcmp fast olt float %55, 0.000000e+00
  %4838 = zext i1 %4832 to i32
  %4839 = zext i1 %4833 to i32
  %4840 = zext i1 %4834 to i32
  %4841 = zext i1 %4835 to i32
  %4842 = zext i1 %4836 to i32
  %4843 = zext i1 %4837 to i32
  %4844 = sub nsw i32 %4838, %4841
  %4845 = sub nsw i32 %4839, %4842
  %4846 = sub nsw i32 %4840, %4843
  %4847 = call float @dx.op.unary.f32(i32 83, float %4813)  ; DerivCoarseX(value)
  %4848 = call float @dx.op.unary.f32(i32 83, float %4814)  ; DerivCoarseX(value)
  %4849 = call float @dx.op.unary.f32(i32 83, float %4815)  ; DerivCoarseX(value)
  %4850 = call float @dx.op.unary.f32(i32 84, float %4813)  ; DerivCoarseY(value)
  %4851 = call float @dx.op.unary.f32(i32 84, float %4814)  ; DerivCoarseY(value)
  %4852 = call float @dx.op.unary.f32(i32 84, float %4815)  ; DerivCoarseY(value)
  %4853 = fcmp fast ole float %248, %4831
  %4854 = fmul fast float %4830, %4828
  %4855 = fcmp fast ole float %248, %4854
  %4856 = select i1 %4855, float %4815, float %4813
  %4857 = select i1 %4855, float %4813, float %4814
  %4858 = select i1 %4853, float %4814, float %4856
  %4859 = select i1 %4853, float %4815, float %4857
  %4860 = select i1 %4855, float %4849, float %4847
  %4861 = select i1 %4855, float %4847, float %4848
  %4862 = select i1 %4853, float %4848, float %4860
  %4863 = select i1 %4853, float %4849, float %4861
  %4864 = select i1 %4855, float %4852, float %4850
  %4865 = select i1 %4855, float %4850, float %4851
  %4866 = select i1 %4853, float %4851, float %4864
  %4867 = select i1 %4853, float %4852, float %4865
  %4868 = call float @dx.op.unary.f32(i32 27, float %4858)  ; Round_ni(value)
  %4869 = call float @dx.op.unary.f32(i32 27, float %4859)  ; Round_ni(value)
  %4870 = fptosi float %4868 to i32
  %4871 = fptosi float %4869 to i32
  %4872 = xor i32 %4871, %4870
  %4873 = sitofp i32 %4872 to float
  %4874 = fptosi float %4873 to i32
  %4875 = sitofp i32 %4874 to float
  %4876 = fmul fast float %4875, 0x3FE3C6EF40000000
  %4877 = frem fast float %4868, 2.560000e+02
  %4878 = frem fast float %4869, 2.560000e+02
  %4879 = fptoui float %4877 to i32
  %4880 = fptoui float %4878 to i32
  %4881 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4879, i32 %4880, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.ResRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.ResRet.f32 %4881, 2
  %4885 = fadd fast float %4882, %4876
  %4886 = fadd fast float %4883, %4876
  %4887 = fadd fast float %4884, %4876
  %4888 = call float @dx.op.unary.f32(i32 22, float %4885)  ; Frc(value)
  %4889 = call float @dx.op.unary.f32(i32 22, float %4886)  ; Frc(value)
  %4890 = call float @dx.op.unary.f32(i32 22, float %4887)  ; Frc(value)
  %4891 = fmul fast float %4890, 0x401921FB60000000
  %4892 = call float @dx.op.unary.f32(i32 13, float %4891)  ; Sin(value)
  %4893 = call float @dx.op.unary.f32(i32 12, float %4891)  ; Cos(value)
  %4894 = fsub fast float -0.000000e+00, %4893
  %4895 = fmul fast float %4893, %4858
  %4896 = call float @dx.op.tertiary.f32(i32 46, float %4892, float %4859, float %4895)  ; FMad(a,b,c)
  %4897 = fmul fast float %4892, %4858
  %4898 = call float @dx.op.tertiary.f32(i32 46, float %4894, float %4859, float %4897)  ; FMad(a,b,c)
  %4899 = fadd fast float %4896, %4888
  %4900 = fadd fast float %4898, %4889
  %4901 = extractvalue %dx.types.CBufRet.f32 %4811, 3
  %4902 = bitcast float %4901 to i32
  %4903 = icmp eq i32 %4902, 0
  br i1 %4903, label %4942, label %4904

; <label>:4904                                    ; preds = %4807
  %4905 = add i32 %4902, 0
  %4906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4906, %dx.types.Handle %94, float %4899, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float %4862, float %4863, float undef, float %4866, float %4867, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4912 = fsub fast float 1.000000e+00, %4801
  %4913 = call float @dx.op.binary.f32(i32 35, float %4912, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4914 = bitcast float %4801 to i32
  %4915 = sitofp i32 %4914 to float
  %4916 = fadd fast float %4915, 0xC1CFBF8940000000
  %4917 = fmul fast float %4911, %4916
  %4918 = fadd fast float %4917, 0x41CFBF8940000000
  %4919 = fptosi float %4918 to i32
  %4920 = bitcast i32 %4919 to float
  %4921 = bitcast float %4913 to i32
  %4922 = sitofp i32 %4921 to float
  %4923 = fadd fast float %4922, 0xC1CFBF8940000000
  %4924 = fmul fast float %4923, %4911
  %4925 = fadd fast float %4924, 0x41CFBF8940000000
  %4926 = fptosi float %4925 to i32
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4920, %4910
  %4929 = fmul fast float %4927, %4910
  %4930 = fsub fast float %4913, %4928
  %4931 = fadd fast float %4929, %4913
  %4932 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4934 = fsub fast float %4908, %4932
  %4935 = fsub fast float %4933, %4932
  %4936 = bitcast float %4935 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4938, %4934
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fcmp fast olt float %4940, 0x3F70101020000000
  br i1 %4941, label %5080, label %4942

; <label>:4942                                    ; preds = %4904, %4807
  %4943 = phi float [ %4940, %4904 ], [ %4801, %4807 ]
  %4944 = fmul fast float %4943, %4810
  %4945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.i32 %4945, 1
  %4947 = extractvalue %dx.types.CBufRet.i32 %4945, 0
  %4948 = add i32 %4947, 0
  %4949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4949, %dx.types.Handle %93, float %4899, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float %4862, float %4863, float undef, float %4866, float %4867, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.ResRet.f32 %4950, 1
  %4953 = extractvalue %dx.types.ResRet.f32 %4950, 2
  %4954 = extractvalue %dx.types.ResRet.f32 %4950, 3
  %4955 = and i32 %4946, 255
  %4956 = uitofp i32 %4955 to float
  %4957 = lshr i32 %4946, 8
  %4958 = and i32 %4957, 255
  %4959 = uitofp i32 %4958 to float
  %4960 = fmul fast float %4954, %4956
  %4961 = fadd fast float %4960, %4959
  %4962 = fmul fast float %4961, 0x3F70101000000000
  %4963 = fadd fast float %4962, 0xBFB99999A0000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 0x3FF1C71C80000000
  %4966 = call float @dx.op.binary.f32(i32 36, float %4962, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4967 = fsub fast float 1.000000e+00, %4965
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, %4951
  %4970 = fmul fast float %4968, %4952
  %4971 = fmul fast float %4968, %4953
  %4972 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = fmul fast float %4965, %4951
  %4976 = fmul fast float %4965, %4952
  %4977 = fmul fast float %4965, %4953
  %4978 = fadd fast float %4975, %4966
  %4979 = fadd fast float %4976, %4966
  %4980 = fadd fast float %4977, %4966
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.i32 %4984, 3
  %4986 = extractvalue %dx.types.CBufRet.i32 %4984, 2
  %4987 = add i32 %4986, 0
  %4988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4988, %dx.types.Handle %93, float %4899, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float %4862, float %4863, float undef, float %4866, float %4867, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %4992 = extractvalue %dx.types.ResRet.f32 %4989, 2
  %4993 = extractvalue %dx.types.ResRet.f32 %4989, 3
  %4994 = and i32 %4985, 255
  %4995 = uitofp i32 %4994 to float
  %4996 = lshr i32 %4985, 8
  %4997 = and i32 %4996, 255
  %4998 = uitofp i32 %4997 to float
  %4999 = lshr i32 %4985, 16
  %5000 = and i32 %4999, 255
  %5001 = uitofp i32 %5000 to float
  %5002 = fmul fast float %5001, 0x3F70101000000000
  %5003 = fmul fast float %4990, %4995
  %5004 = fadd fast float %5003, %4998
  %5005 = fmul fast float %5004, 0x3F70101000000000
  %5006 = fadd fast float %4991, -5.000000e-01
  %5007 = fadd fast float %4993, -5.000000e-01
  %5008 = fmul fast float %5006, %5002
  %5009 = fmul fast float %5007, %5002
  %5010 = fadd fast float %5008, 5.000000e-01
  %5011 = fadd fast float %5009, 5.000000e-01
  %5012 = fmul fast float %5010, 2.000000e+00
  %5013 = fadd fast float %5012, -1.000000e+00
  %5014 = fmul fast float %5011, 2.000000e+00
  %5015 = fadd fast float %5014, -1.000000e+00
  %5016 = fadd fast float %5013, %5015
  %5017 = fmul fast float %5016, 5.000000e-01
  %5018 = fsub fast float %5013, %5015
  %5019 = fmul fast float %5018, 5.000000e-01
  %5020 = call float @dx.op.unary.f32(i32 6, float %5017)  ; FAbs(value)
  %5021 = fsub fast float 1.000000e+00, %5020
  %5022 = call float @dx.op.unary.f32(i32 6, float %5019)  ; FAbs(value)
  %5023 = fsub fast float %5021, %5022
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5017, float %5019, float %5023, float %5017, float %5019, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.unary.f32(i32 25, float %5024)  ; Rsqrt(value)
  %5026 = fmul fast float %5017, %5025
  %5027 = fmul fast float %5019, %5025
  %5028 = select i1 %4855, i32 %4845, i32 %4846
  %5029 = select i1 %4853, i32 %4844, i32 %5028
  %5030 = sitofp i32 %5029 to float
  %5031 = fmul fast float %5023, %5030
  %5032 = fmul fast float %5031, %5025
  %5033 = select i1 %4855, float %5032, float %5027
  %5034 = select i1 %4855, float %5027, float %5032
  %5035 = select i1 %4853, float %5032, float %5026
  %5036 = select i1 %4853, float %5027, float %5033
  %5037 = select i1 %4853, float %5026, float %5034
  %5038 = fsub fast float %4972, %4692
  %5039 = fsub fast float %4973, %4693
  %5040 = fsub fast float %4974, %4694
  %5041 = fmul fast float %5038, %4944
  %5042 = fmul fast float %5039, %4944
  %5043 = fmul fast float %5040, %4944
  %5044 = fadd fast float %5041, %4692
  %5045 = fadd fast float %5042, %4693
  %5046 = fadd fast float %5043, %4694
  %5047 = fsub fast float %4981, %4652
  %5048 = fsub fast float %4982, %4653
  %5049 = fsub fast float %4983, %4654
  %5050 = fmul fast float %5047, %4944
  %5051 = fmul fast float %5048, %4944
  %5052 = fmul fast float %5049, %4944
  %5053 = fadd fast float %5050, %4652
  %5054 = fadd fast float %5051, %4653
  %5055 = fadd fast float %5052, %4654
  %5056 = fadd fast float %5035, %4610
  %5057 = fadd fast float %5036, %4611
  %5058 = fadd fast float %5037, %4612
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 25, float %5059)  ; Rsqrt(value)
  %5061 = fmul fast float %5056, %5060
  %5062 = fmul fast float %5057, %5060
  %5063 = fmul fast float %5058, %5060
  %5064 = fsub fast float %5061, %4610
  %5065 = fsub fast float %5062, %4611
  %5066 = fsub fast float %5063, %4612
  %5067 = fmul fast float %5064, %4944
  %5068 = fmul fast float %5065, %4944
  %5069 = fmul fast float %5066, %4944
  %5070 = fadd fast float %5067, %4610
  %5071 = fadd fast float %5068, %4611
  %5072 = fadd fast float %5069, %4612
  %5073 = call float @dx.op.binary.f32(i32 36, float %4628, float %4992)  ; FMin(a,b)
  %5074 = fsub fast float %5073, %4628
  %5075 = fmul fast float %5074, %4944
  %5076 = fadd fast float %5075, %4628
  %5077 = fsub fast float %5005, %4655
  %5078 = fmul fast float %5077, %4944
  %5079 = fadd fast float %5078, %4655
  br label %5080

; <label>:5080                                    ; preds = %4942, %4904, %4806
  %5081 = phi float [ %5053, %4942 ], [ %4652, %4904 ], [ %4652, %4806 ]
  %5082 = phi float [ %5054, %4942 ], [ %4653, %4904 ], [ %4653, %4806 ]
  %5083 = phi float [ %5055, %4942 ], [ %4654, %4904 ], [ %4654, %4806 ]
  %5084 = phi float [ %5070, %4942 ], [ %4610, %4904 ], [ %4610, %4806 ]
  %5085 = phi float [ %5071, %4942 ], [ %4611, %4904 ], [ %4611, %4806 ]
  %5086 = phi float [ %5072, %4942 ], [ %4612, %4904 ], [ %4612, %4806 ]
  %5087 = phi float [ %5044, %4942 ], [ %4692, %4904 ], [ %4692, %4806 ]
  %5088 = phi float [ %5045, %4942 ], [ %4693, %4904 ], [ %4693, %4806 ]
  %5089 = phi float [ %5046, %4942 ], [ %4694, %4904 ], [ %4694, %4806 ]
  %5090 = phi float [ %5079, %4942 ], [ %4655, %4904 ], [ %4655, %4806 ]
  %5091 = phi float [ %5076, %4942 ], [ %4628, %4904 ], [ %4628, %4806 ]
  br i1 %4804, label %5092, label %5381

; <label>:5092                                    ; preds = %5080
  %5093 = call float @dx.op.unary.f32(i32 23, float %5091)  ; Log(value)
  %5094 = fmul fast float %5093, 4.000000e+00
  %5095 = call float @dx.op.unary.f32(i32 21, float %5094)  ; Exp(value)
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 0
  %5098 = fmul fast float %5097, %44
  %5099 = fmul fast float %5097, %45
  %5100 = fmul fast float %5097, %46
  %5101 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %5102 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %5103 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %5104 = call float @dx.op.unary.f32(i32 23, float %5101)  ; Log(value)
  %5105 = call float @dx.op.unary.f32(i32 23, float %5102)  ; Log(value)
  %5106 = call float @dx.op.unary.f32(i32 23, float %5103)  ; Log(value)
  %5107 = fmul fast float %5104, 4.000000e+00
  %5108 = fmul fast float %5105, 4.000000e+00
  %5109 = fmul fast float %5106, 4.000000e+00
  %5110 = call float @dx.op.unary.f32(i32 21, float %5107)  ; Exp(value)
  %5111 = call float @dx.op.unary.f32(i32 21, float %5108)  ; Exp(value)
  %5112 = call float @dx.op.unary.f32(i32 21, float %5109)  ; Exp(value)
  %5113 = fadd fast float %5111, %5110
  %5114 = fadd fast float %5113, %5112
  %5115 = fdiv fast float 1.000000e+00, %5114
  %5116 = fmul fast float %5115, %5110
  %5117 = fcmp fast ogt float %53, 0.000000e+00
  %5118 = fcmp fast ogt float %54, 0.000000e+00
  %5119 = fcmp fast ogt float %55, 0.000000e+00
  %5120 = fcmp fast olt float %53, 0.000000e+00
  %5121 = fcmp fast olt float %54, 0.000000e+00
  %5122 = fcmp fast olt float %55, 0.000000e+00
  %5123 = zext i1 %5117 to i32
  %5124 = zext i1 %5118 to i32
  %5125 = zext i1 %5119 to i32
  %5126 = zext i1 %5120 to i32
  %5127 = zext i1 %5121 to i32
  %5128 = zext i1 %5122 to i32
  %5129 = sub nsw i32 %5123, %5126
  %5130 = sub nsw i32 %5124, %5127
  %5131 = sub nsw i32 %5125, %5128
  %5132 = call float @dx.op.unary.f32(i32 83, float %5098)  ; DerivCoarseX(value)
  %5133 = call float @dx.op.unary.f32(i32 83, float %5099)  ; DerivCoarseX(value)
  %5134 = call float @dx.op.unary.f32(i32 83, float %5100)  ; DerivCoarseX(value)
  %5135 = call float @dx.op.unary.f32(i32 84, float %5098)  ; DerivCoarseY(value)
  %5136 = call float @dx.op.unary.f32(i32 84, float %5099)  ; DerivCoarseY(value)
  %5137 = call float @dx.op.unary.f32(i32 84, float %5100)  ; DerivCoarseY(value)
  %5138 = fcmp fast ole float %248, %5116
  %5139 = fmul fast float %5115, %5113
  %5140 = fcmp fast ole float %248, %5139
  %5141 = select i1 %5140, float %5100, float %5098
  %5142 = select i1 %5140, float %5098, float %5099
  %5143 = select i1 %5138, float %5099, float %5141
  %5144 = select i1 %5138, float %5100, float %5142
  %5145 = select i1 %5140, float %5134, float %5132
  %5146 = select i1 %5140, float %5132, float %5133
  %5147 = select i1 %5138, float %5133, float %5145
  %5148 = select i1 %5138, float %5134, float %5146
  %5149 = select i1 %5140, float %5137, float %5135
  %5150 = select i1 %5140, float %5135, float %5136
  %5151 = select i1 %5138, float %5136, float %5149
  %5152 = select i1 %5138, float %5137, float %5150
  %5153 = call float @dx.op.unary.f32(i32 27, float %5143)  ; Round_ni(value)
  %5154 = call float @dx.op.unary.f32(i32 27, float %5144)  ; Round_ni(value)
  %5155 = fptosi float %5153 to i32
  %5156 = fptosi float %5154 to i32
  %5157 = xor i32 %5156, %5155
  %5158 = sitofp i32 %5157 to float
  %5159 = fptosi float %5158 to i32
  %5160 = sitofp i32 %5159 to float
  %5161 = fmul fast float %5160, 0x3FE3C6EF40000000
  %5162 = frem fast float %5153, 2.560000e+02
  %5163 = frem fast float %5154, 2.560000e+02
  %5164 = fptoui float %5162 to i32
  %5165 = fptoui float %5163 to i32
  %5166 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %5164, i32 %5165, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.ResRet.f32 %5166, 1
  %5169 = extractvalue %dx.types.ResRet.f32 %5166, 2
  %5170 = fadd fast float %5167, %5161
  %5171 = fadd fast float %5168, %5161
  %5172 = fadd fast float %5169, %5161
  %5173 = call float @dx.op.unary.f32(i32 22, float %5170)  ; Frc(value)
  %5174 = call float @dx.op.unary.f32(i32 22, float %5171)  ; Frc(value)
  %5175 = call float @dx.op.unary.f32(i32 22, float %5172)  ; Frc(value)
  %5176 = fmul fast float %5175, 0x401921FB60000000
  %5177 = call float @dx.op.unary.f32(i32 13, float %5176)  ; Sin(value)
  %5178 = call float @dx.op.unary.f32(i32 12, float %5176)  ; Cos(value)
  %5179 = fsub fast float -0.000000e+00, %5178
  %5180 = fmul fast float %5178, %5143
  %5181 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5144, float %5180)  ; FMad(a,b,c)
  %5182 = fmul fast float %5177, %5143
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5144, float %5182)  ; FMad(a,b,c)
  %5184 = fadd fast float %5181, %5173
  %5185 = fadd fast float %5183, %5174
  %5186 = extractvalue %dx.types.CBufRet.f32 %5096, 3
  %5187 = bitcast float %5186 to i32
  %5188 = icmp eq i32 %5187, 0
  br i1 %5188, label %5227, label %5189

; <label>:5189                                    ; preds = %5092
  %5190 = add i32 %5187, 0
  %5191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5191, %dx.types.Handle %94, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float %5147, float %5148, float undef, float %5151, float %5152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5197 = fsub fast float 1.000000e+00, %4802
  %5198 = call float @dx.op.binary.f32(i32 35, float %5197, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5199 = bitcast float %4802 to i32
  %5200 = sitofp i32 %5199 to float
  %5201 = fadd fast float %5200, 0xC1CFBF8940000000
  %5202 = fmul fast float %5196, %5201
  %5203 = fadd fast float %5202, 0x41CFBF8940000000
  %5204 = fptosi float %5203 to i32
  %5205 = bitcast i32 %5204 to float
  %5206 = bitcast float %5198 to i32
  %5207 = sitofp i32 %5206 to float
  %5208 = fadd fast float %5207, 0xC1CFBF8940000000
  %5209 = fmul fast float %5208, %5196
  %5210 = fadd fast float %5209, 0x41CFBF8940000000
  %5211 = fptosi float %5210 to i32
  %5212 = bitcast i32 %5211 to float
  %5213 = fmul fast float %5205, %5195
  %5214 = fmul fast float %5212, %5195
  %5215 = fsub fast float %5198, %5213
  %5216 = fadd fast float %5214, %5198
  %5217 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5219 = fsub fast float %5193, %5217
  %5220 = fsub fast float %5218, %5217
  %5221 = bitcast float %5220 to i32
  %5222 = sub nsw i32 2129859010, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5223, %5219
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fcmp fast olt float %5225, 0x3F70101020000000
  br i1 %5226, label %5381, label %5227

; <label>:5227                                    ; preds = %5189, %5092
  %5228 = phi float [ %5225, %5189 ], [ %4802, %5092 ]
  %5229 = fmul fast float %5228, %5095
  %5230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.i32 %5230, 1
  %5232 = extractvalue %dx.types.CBufRet.i32 %5230, 0
  %5233 = add i32 %5232, 0
  %5234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5234, %dx.types.Handle %93, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float %5147, float %5148, float undef, float %5151, float %5152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = and i32 %5231, 255
  %5241 = uitofp i32 %5240 to float
  %5242 = lshr i32 %5231, 8
  %5243 = and i32 %5242, 255
  %5244 = uitofp i32 %5243 to float
  %5245 = fmul fast float %5239, %5241
  %5246 = fadd fast float %5245, %5244
  %5247 = fmul fast float %5246, 0x3F70101000000000
  %5248 = fadd fast float %5247, 0xBFB99999A0000000
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5249, 0x3FF1C71C80000000
  %5251 = call float @dx.op.binary.f32(i32 36, float %5247, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5252 = fsub fast float 1.000000e+00, %5250
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, %5236
  %5255 = fmul fast float %5253, %5237
  %5256 = fmul fast float %5253, %5238
  %5257 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5259 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5260 = fmul fast float %5250, %5236
  %5261 = fmul fast float %5250, %5237
  %5262 = fmul fast float %5250, %5238
  %5263 = fadd fast float %5260, %5251
  %5264 = fadd fast float %5261, %5251
  %5265 = fadd fast float %5262, %5251
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.i32 %5269, 3
  %5271 = extractvalue %dx.types.CBufRet.i32 %5269, 2
  %5272 = add i32 %5271, 0
  %5273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5274 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5273, %dx.types.Handle %93, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float %5147, float %5148, float undef, float %5151, float %5152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = extractvalue %dx.types.ResRet.f32 %5274, 3
  %5279 = and i32 %5270, 255
  %5280 = uitofp i32 %5279 to float
  %5281 = lshr i32 %5270, 8
  %5282 = and i32 %5281, 255
  %5283 = uitofp i32 %5282 to float
  %5284 = lshr i32 %5270, 16
  %5285 = and i32 %5284, 255
  %5286 = uitofp i32 %5285 to float
  %5287 = fmul fast float %5286, 0x3F70101000000000
  %5288 = fmul fast float %5275, %5280
  %5289 = fadd fast float %5288, %5283
  %5290 = fmul fast float %5289, 0x3F70101000000000
  %5291 = fadd fast float %5276, -5.000000e-01
  %5292 = fadd fast float %5278, -5.000000e-01
  %5293 = fmul fast float %5291, %5287
  %5294 = fmul fast float %5292, %5287
  %5295 = fadd fast float %5293, 5.000000e-01
  %5296 = fadd fast float %5294, 5.000000e-01
  %5297 = fmul fast float %5295, 2.000000e+00
  %5298 = fadd fast float %5297, -1.000000e+00
  %5299 = fmul fast float %5296, 2.000000e+00
  %5300 = fadd fast float %5299, -1.000000e+00
  %5301 = fadd fast float %5298, %5300
  %5302 = fmul fast float %5301, 5.000000e-01
  %5303 = fsub fast float %5298, %5300
  %5304 = fmul fast float %5303, 5.000000e-01
  %5305 = call float @dx.op.unary.f32(i32 6, float %5302)  ; FAbs(value)
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = call float @dx.op.unary.f32(i32 6, float %5304)  ; FAbs(value)
  %5308 = fsub fast float %5306, %5307
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5304, float %5308, float %5302, float %5304, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 25, float %5309)  ; Rsqrt(value)
  %5311 = fmul fast float %5302, %5310
  %5312 = fmul fast float %5304, %5310
  %5313 = select i1 %5140, i32 %5130, i32 %5131
  %5314 = select i1 %5138, i32 %5129, i32 %5313
  %5315 = sitofp i32 %5314 to float
  %5316 = fmul fast float %5308, %5315
  %5317 = fmul fast float %5316, %5310
  %5318 = select i1 %5140, float %5317, float %5312
  %5319 = select i1 %5140, float %5312, float %5317
  %5320 = select i1 %5138, float %5317, float %5311
  %5321 = select i1 %5138, float %5312, float %5318
  %5322 = select i1 %5138, float %5311, float %5319
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = fptoui float %5324 to i32
  %5326 = add i32 %5325, 0
  %5327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5327, %dx.types.Handle %93, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float %5147, float %5148, float undef, float %5151, float %5152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = fsub fast float %5257, %5087
  %5331 = fsub fast float %5258, %5088
  %5332 = fsub fast float %5259, %5089
  %5333 = fmul fast float %5330, %5229
  %5334 = fmul fast float %5331, %5229
  %5335 = fmul fast float %5332, %5229
  %5336 = fadd fast float %5333, %5087
  %5337 = fadd fast float %5334, %5088
  %5338 = fadd fast float %5335, %5089
  %5339 = fsub fast float %5266, %5081
  %5340 = fsub fast float %5267, %5082
  %5341 = fsub fast float %5268, %5083
  %5342 = fmul fast float %5339, %5229
  %5343 = fmul fast float %5340, %5229
  %5344 = fmul fast float %5341, %5229
  %5345 = fadd fast float %5342, %5081
  %5346 = fadd fast float %5343, %5082
  %5347 = fadd fast float %5344, %5083
  %5348 = fadd fast float %5320, %5084
  %5349 = fadd fast float %5321, %5085
  %5350 = fadd fast float %5322, %5086
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 25, float %5351)  ; Rsqrt(value)
  %5353 = fmul fast float %5352, %5348
  %5354 = fmul fast float %5352, %5349
  %5355 = fmul fast float %5352, %5350
  %5356 = fsub fast float %5353, %5084
  %5357 = fsub fast float %5354, %5085
  %5358 = fsub fast float %5355, %5086
  %5359 = fmul fast float %5356, %5229
  %5360 = fmul fast float %5357, %5229
  %5361 = fmul fast float %5358, %5229
  %5362 = fadd fast float %5359, %5084
  %5363 = fadd fast float %5360, %5085
  %5364 = fadd fast float %5361, %5086
  %5365 = call float @dx.op.binary.f32(i32 36, float %5091, float %5277)  ; FMin(a,b)
  %5366 = fsub fast float %5365, %5091
  %5367 = fmul fast float %5366, %5229
  %5368 = fadd fast float %5367, %5091
  %5369 = fsub fast float %5290, %5090
  %5370 = fmul fast float %5369, %5229
  %5371 = fadd fast float %5370, %5090
  %5372 = fsub fast float %5329, %4696
  %5373 = fsub fast float %5329, %4697
  %5374 = fsub fast float %5329, %4698
  %5375 = fmul fast float %5372, %5229
  %5376 = fmul fast float %5373, %5229
  %5377 = fmul fast float %5374, %5229
  %5378 = fadd fast float %5375, %4696
  %5379 = fadd fast float %5376, %4697
  %5380 = fadd fast float %5377, %4698
  br label %5381

; <label>:5381                                    ; preds = %5227, %5189, %5080, %4796
  %5382 = phi float [ %5345, %5227 ], [ %5081, %5189 ], [ %5081, %5080 ], [ %4652, %4796 ]
  %5383 = phi float [ %5346, %5227 ], [ %5082, %5189 ], [ %5082, %5080 ], [ %4653, %4796 ]
  %5384 = phi float [ %5347, %5227 ], [ %5083, %5189 ], [ %5083, %5080 ], [ %4654, %4796 ]
  %5385 = phi float [ %5362, %5227 ], [ %5084, %5189 ], [ %5084, %5080 ], [ %4610, %4796 ]
  %5386 = phi float [ %5363, %5227 ], [ %5085, %5189 ], [ %5085, %5080 ], [ %4611, %4796 ]
  %5387 = phi float [ %5364, %5227 ], [ %5086, %5189 ], [ %5086, %5080 ], [ %4612, %4796 ]
  %5388 = phi float [ %5336, %5227 ], [ %5087, %5189 ], [ %5087, %5080 ], [ %4692, %4796 ]
  %5389 = phi float [ %5337, %5227 ], [ %5088, %5189 ], [ %5088, %5080 ], [ %4693, %4796 ]
  %5390 = phi float [ %5338, %5227 ], [ %5089, %5189 ], [ %5089, %5080 ], [ %4694, %4796 ]
  %5391 = phi float [ %5378, %5227 ], [ %4696, %5189 ], [ %4696, %5080 ], [ %4696, %4796 ]
  %5392 = phi float [ %5379, %5227 ], [ %4697, %5189 ], [ %4697, %5080 ], [ %4697, %4796 ]
  %5393 = phi float [ %5380, %5227 ], [ %4698, %5189 ], [ %4698, %5080 ], [ %4698, %4796 ]
  %5394 = phi float [ %5371, %5227 ], [ %5090, %5189 ], [ %5090, %5080 ], [ %4655, %4796 ]
  %5395 = phi float [ %5368, %5227 ], [ %5091, %5189 ], [ %5091, %5080 ], [ %4628, %4796 ]
  %5396 = fcmp fast une float %4800, 0.000000e+00
  %5397 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %176, float %177, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = call float @dx.op.unary.f32(i32 25, float %5397)  ; Rsqrt(value)
  br i1 %5396, label %5406, label %5399

; <label>:5399                                    ; preds = %5381
  %5400 = fmul fast float %5398, %176
  %5401 = fmul fast float %5398, %177
  %5402 = fmul fast float %5398, %178
  %5403 = fsub fast float -0.000000e+00, %5400
  %5404 = fsub fast float -0.000000e+00, %5401
  %5405 = fsub fast float -0.000000e+00, %5402
  br label %5573

; <label>:5406                                    ; preds = %5381
  %5407 = fmul fast float %176, %5398
  %5408 = fsub fast float -0.000000e+00, %5407
  %5409 = fmul fast float %177, %5398
  %5410 = fsub fast float -0.000000e+00, %5409
  %5411 = fmul fast float %178, %5398
  %5412 = fsub fast float -0.000000e+00, %5411
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5410, float %5412, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = fmul fast float %4800, 2.500000e+00
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = fmul fast float %4800, 0x4013FFFFE0000000
  %5417 = fadd fast float %5416, 0xBFFFFFFFE0000000
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fmul fast float %4800, 0x4004000020000000
  %5420 = fadd fast float %5419, 0xBFF8000040000000
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fmul fast float %4634, 1.000000e+01
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = fmul fast float %5423, 2.000000e+00
  %5425 = fsub fast float 3.000000e+00, %5424
  %5426 = fmul fast float %5423, %5423
  %5427 = fmul fast float %5426, %5425
  %5428 = fsub fast float 1.000000e+00, %5427
  %5429 = fsub fast float 0x3FE3333340000000, %5394
  %5430 = fmul fast float %5429, 0x400AAAAAA0000000
  %5431 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5432 = fmul fast float %5428, %5431
  %5433 = fmul fast float %5388, 0x3FEA2B8620000000
  %5434 = fmul fast float %5389, 0x3FEA2B8620000000
  %5435 = fmul fast float %5390, 0x3FEA2B8620000000
  %5436 = fadd fast float %5433, 0x3FC81DFBA0000000
  %5437 = fmul fast float %5436, %5388
  %5438 = fadd fast float %5437, 0x3F910E6020000000
  %5439 = fadd fast float %5434, 0x3FC81DFBA0000000
  %5440 = fmul fast float %5439, %5389
  %5441 = fadd fast float %5440, 0x3F910E6020000000
  %5442 = fadd fast float %5435, 0x3FC81DFBA0000000
  %5443 = fmul fast float %5442, %5390
  %5444 = fadd fast float %5443, 0x3F910E6020000000
  %5445 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5448 = fsub fast float %5445, %5388
  %5449 = fsub fast float %5446, %5389
  %5450 = fsub fast float %5447, %5390
  %5451 = fmul fast float %5448, %5415
  %5452 = fmul fast float %5451, %5432
  %5453 = fmul fast float %5449, %5415
  %5454 = fmul fast float %5453, %5432
  %5455 = fmul fast float %5450, %5415
  %5456 = fmul fast float %5455, %5432
  %5457 = fadd fast float %5452, %5388
  %5458 = fadd fast float %5454, %5389
  %5459 = fadd fast float %5456, %5390
  %5460 = fmul fast float %5395, %5395
  %5461 = fmul fast float %5460, %5460
  %5462 = fadd fast float %5418, 1.000000e+00
  %5463 = fsub fast float %5462, %5432
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = fsub fast float 1.000000e+00, %5461
  %5468 = call float @dx.op.binary.f32(i32 36, float %5464, float %5467)  ; FMin(a,b)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5470 = call float @dx.op.binary.f32(i32 35, float %5468, float %5469)  ; FMax(a,b)
  %5471 = fadd fast float %5466, 0xBFE4CCCCC0000000
  %5472 = fmul fast float %5471, 0x4006DB6DA0000000
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fmul fast float %5473, 2.000000e+00
  %5475 = fsub fast float 3.000000e+00, %5474
  %5476 = bitcast float %5382 to i32
  %5477 = ashr i32 %5476, 1
  %5478 = add nsw i32 %5477, 532487669
  %5479 = bitcast i32 %5478 to float
  %5480 = fsub fast float 1.000000e+00, %5479
  %5481 = bitcast float %5480 to i32
  %5482 = sub nsw i32 2129859010, %5481
  %5483 = bitcast i32 %5482 to float
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = bitcast float %5383 to i32
  %5486 = ashr i32 %5485, 1
  %5487 = add nsw i32 %5486, 532487669
  %5488 = bitcast i32 %5487 to float
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = bitcast float %5489 to i32
  %5491 = sub nsw i32 2129859010, %5490
  %5492 = bitcast i32 %5491 to float
  %5493 = fmul fast float %5492, 2.000000e+00
  %5494 = bitcast float %5384 to i32
  %5495 = ashr i32 %5494, 1
  %5496 = add nsw i32 %5495, 532487669
  %5497 = bitcast i32 %5496 to float
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = bitcast float %5498 to i32
  %5500 = sub nsw i32 2129859010, %5499
  %5501 = bitcast i32 %5500 to float
  %5502 = fmul fast float %5501, 2.000000e+00
  %5503 = fsub fast float 0x4002A9FBE0000000, %5484
  %5504 = fadd fast float %5484, 0x3FD54FDF00000000
  %5505 = bitcast float %5504 to i32
  %5506 = sub nsw i32 2129859010, %5505
  %5507 = bitcast i32 %5506 to float
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5508, %5508
  %5510 = fsub fast float 0x4002A9FBE0000000, %5493
  %5511 = fadd fast float %5493, 0x3FD54FDF00000000
  %5512 = bitcast float %5511 to i32
  %5513 = sub nsw i32 2129859010, %5512
  %5514 = bitcast i32 %5513 to float
  %5515 = fmul fast float %5514, %5510
  %5516 = fmul fast float %5515, %5515
  %5517 = fsub fast float 0x4002A9FBE0000000, %5502
  %5518 = fadd fast float %5502, 0x3FD54FDF00000000
  %5519 = bitcast float %5518 to i32
  %5520 = sub nsw i32 2129859010, %5519
  %5521 = bitcast i32 %5520 to float
  %5522 = fmul fast float %5521, %5517
  %5523 = fmul fast float %5522, %5522
  %5524 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5509)  ; FMax(a,b)
  %5525 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5516)  ; FMax(a,b)
  %5526 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5523)  ; FMax(a,b)
  %5527 = fsub fast float 1.000000e+00, %5413
  %5528 = fadd fast float %5527, %5428
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fsub fast float 1.000000e+00, %4781
  %5531 = fmul fast float %5470, %5530
  %5532 = fmul fast float %5473, %5473
  %5533 = fmul fast float %5532, %5531
  %5534 = fmul fast float %5533, %5475
  %5535 = fmul fast float %5530, 0xBFE99999A0000000
  %5536 = fmul fast float %5535, %5415
  %5537 = fmul fast float %5536, %5432
  %5538 = fadd fast float %5537, 1.000000e+00
  %5539 = fadd fast float %5394, -1.000000e+00
  %5540 = fmul fast float %5538, %5539
  %5541 = fadd fast float %5540, 1.000000e+00
  %5542 = fsub fast float %5524, %5382
  %5543 = fsub fast float %5525, %5383
  %5544 = fsub fast float %5526, %5384
  %5545 = fmul fast float %5534, %5542
  %5546 = fmul fast float %5534, %5543
  %5547 = fmul fast float %5534, %5544
  %5548 = fadd fast float %5545, %5382
  %5549 = fadd fast float %5546, %5383
  %5550 = fadd fast float %5547, %5384
  %5551 = fsub fast float %104, %5385
  %5552 = fsub fast float %105, %5386
  %5553 = fsub fast float %106, %5387
  %5554 = fmul fast float %5534, %5551
  %5555 = fmul fast float %5534, %5552
  %5556 = fmul fast float %5534, %5553
  %5557 = fadd fast float %5554, %5385
  %5558 = fadd fast float %5555, %5386
  %5559 = fadd fast float %5556, %5387
  %5560 = fmul fast float %5534, %5529
  %5561 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5562 = fsub fast float 1.000000e+00, %5561
  %5563 = fmul fast float %5560, %5562
  %5564 = fadd fast float %5563, %5561
  %5565 = fsub fast float 1.000000e+00, %5395
  %5566 = fmul fast float %5534, %5565
  %5567 = fadd fast float %5566, %5395
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5557, float %5558, float %5559, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = call float @dx.op.unary.f32(i32 25, float %5568)  ; Rsqrt(value)
  %5570 = fmul fast float %5557, %5569
  %5571 = fmul fast float %5558, %5569
  %5572 = fmul fast float %5559, %5569
  br label %5573

; <label>:5573                                    ; preds = %5406, %5399
  %5574 = phi float [ %5405, %5399 ], [ %5412, %5406 ]
  %5575 = phi float [ %5404, %5399 ], [ %5410, %5406 ]
  %5576 = phi float [ %5403, %5399 ], [ %5408, %5406 ]
  %5577 = phi float [ %5402, %5399 ], [ %5411, %5406 ]
  %5578 = phi float [ %5401, %5399 ], [ %5409, %5406 ]
  %5579 = phi float [ %5400, %5399 ], [ %5407, %5406 ]
  %5580 = phi float [ %5382, %5399 ], [ %5548, %5406 ]
  %5581 = phi float [ %5383, %5399 ], [ %5549, %5406 ]
  %5582 = phi float [ %5384, %5399 ], [ %5550, %5406 ]
  %5583 = phi float [ %5385, %5399 ], [ %5570, %5406 ]
  %5584 = phi float [ %5386, %5399 ], [ %5571, %5406 ]
  %5585 = phi float [ %5387, %5399 ], [ %5572, %5406 ]
  %5586 = phi float [ %5388, %5399 ], [ %5457, %5406 ]
  %5587 = phi float [ %5389, %5399 ], [ %5458, %5406 ]
  %5588 = phi float [ %5390, %5399 ], [ %5459, %5406 ]
  %5589 = phi float [ %5394, %5399 ], [ %5564, %5406 ]
  %5590 = phi float [ %5395, %5399 ], [ %5567, %5406 ]
  %5591 = select i1 %237, float 0.000000e+00, float %5582
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %5576, float %5575, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5578, float %5577, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fmul fast float %5594, 2.000000e+00
  %5596 = fmul fast float %5595, %5583
  %5597 = fmul fast float %5595, %5584
  %5598 = fmul fast float %5595, %5585
  %5599 = fsub fast float %5579, %5596
  %5600 = fsub fast float %5578, %5597
  %5601 = fsub fast float %5577, %5598
  %5602 = call float @dx.op.binary.f32(i32 36, float %5590, float 1.000000e+00)  ; FMin(a,b)
  %5603 = fsub fast float 1.000000e+00, %5590
  %5604 = bitcast float %5603 to i32
  %5605 = sub nsw i32 2129859010, %5604
  %5606 = bitcast i32 %5605 to float
  %5607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5608 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fcmp fast oeq float %5608, 0.000000e+00
  %5610 = fcmp fast oeq float %5607, 0.000000e+00
  %5611 = or i1 %5610, %5609
  br i1 %5611, label %5641, label %5612

; <label>:5612                                    ; preds = %5573
  %5613 = fsub fast float -0.000000e+00, %71
  %5614 = fsub fast float -0.000000e+00, %69
  %5615 = call float @dx.op.unary.f32(i32 24, float %5608)  ; Sqrt(value)
  %5616 = fdiv fast float %5615, %5607
  %5617 = fcmp fast ogt float %5616, 0x3FFB6F8900000000
  %5618 = select i1 %5617, float 0x3FFB6F8900000000, float %5616
  %5619 = fmul fast float %5618, 0x3FE8A23460000000
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5618, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5622 = fmul fast float %5620, %5607
  %5623 = fmul fast float %5621, 0x3FF279A740000000
  %5624 = fadd fast float %5623, -1.000000e+00
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %70, float %5613, float %5614, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = call float @dx.op.unary.f32(i32 25, float %5625)  ; Rsqrt(value)
  %5627 = fmul fast float %5626, %5613
  %5628 = fmul fast float %5626, %5614
  %5629 = fmul fast float %5626, %70
  %5630 = fmul fast float %5624, %5624
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5621, 0x40005F8BE0000000
  %5633 = fsub fast float 0x400C5BF8A0000000, %5632
  %5634 = fdiv fast float %5622, %5633
  %5635 = fmul fast float %5634, 0x3FEE31C3C0000000
  %5636 = fmul fast float %5635, %5631
  %5637 = fmul fast float %5621, 0x3FDACB7480000000
  %5638 = fadd fast float %5637, 0xBFD7347680000000
  %5639 = fmul fast float %5638, %5634
  %5640 = fmul fast float %5639, %5631
  br label %5641

; <label>:5641                                    ; preds = %5612, %5573
  %5642 = phi float [ %5627, %5612 ], [ 0.000000e+00, %5573 ]
  %5643 = phi float [ %5628, %5612 ], [ 0.000000e+00, %5573 ]
  %5644 = phi float [ %5629, %5612 ], [ 0.000000e+00, %5573 ]
  %5645 = phi float [ %5636, %5612 ], [ 0.000000e+00, %5573 ]
  %5646 = phi float [ %5640, %5612 ], [ 0.000000e+00, %5573 ]
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5643, float %5644, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fmul fast float %5647, 0x3FDF454380000000
  %5649 = fmul fast float %5647, %5647
  %5650 = fmul fast float %5649, 0x3FEE471020000000
  %5651 = fadd fast float %5650, 0xBFD42F6020000000
  %5652 = fmul fast float %5607, 0x3FD20DD760000000
  %5653 = fmul fast float %5651, %5646
  %5654 = fadd fast float %5653, %5652
  %5655 = fmul fast float %5648, %5645
  %5656 = fadd fast float %5654, %5655
  %5657 = fsub fast float %5654, %5655
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5643, float %5644, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = fmul fast float %5658, 0x3FDF454380000000
  %5660 = fmul fast float %5658, %5658
  %5661 = fmul fast float %5660, 0x3FEE471020000000
  %5662 = fadd fast float %5661, 0xBFD42F6020000000
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5645, float %5646, float 0x3FD20DD760000000, float %5659, float %5662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5665 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = fcmp fast oeq float %5665, 0.000000e+00
  %5667 = fcmp fast oeq float %5664, 0.000000e+00
  %5668 = or i1 %5667, %5666
  br i1 %5668, label %5698, label %5669

; <label>:5669                                    ; preds = %5641
  %5670 = fsub fast float -0.000000e+00, %67
  %5671 = fsub fast float -0.000000e+00, %65
  %5672 = call float @dx.op.unary.f32(i32 24, float %5665)  ; Sqrt(value)
  %5673 = fdiv fast float %5672, %5664
  %5674 = fcmp fast ogt float %5673, 0x3FFB6F8900000000
  %5675 = select i1 %5674, float 0x3FFB6F8900000000, float %5673
  %5676 = fmul fast float %5675, 0x3FE8A23460000000
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = call float @dx.op.binary.f32(i32 35, float %5675, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5679 = fmul fast float %5677, %5664
  %5680 = fmul fast float %5678, 0x3FF279A740000000
  %5681 = fadd fast float %5680, -1.000000e+00
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %66, float %5670, float %5671, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = call float @dx.op.unary.f32(i32 25, float %5682)  ; Rsqrt(value)
  %5684 = fmul fast float %5683, %5670
  %5685 = fmul fast float %5683, %5671
  %5686 = fmul fast float %5683, %66
  %5687 = fmul fast float %5681, %5681
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = fmul fast float %5678, 0x40005F8BE0000000
  %5690 = fsub fast float 0x400C5BF8A0000000, %5689
  %5691 = fdiv fast float %5679, %5690
  %5692 = fmul fast float %5691, 0x3FEE31C3C0000000
  %5693 = fmul fast float %5692, %5688
  %5694 = fmul fast float %5678, 0x3FDACB7480000000
  %5695 = fadd fast float %5694, 0xBFD7347680000000
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %5696, %5688
  br label %5698

; <label>:5698                                    ; preds = %5669, %5641
  %5699 = phi float [ %5684, %5669 ], [ 0.000000e+00, %5641 ]
  %5700 = phi float [ %5685, %5669 ], [ 0.000000e+00, %5641 ]
  %5701 = phi float [ %5686, %5669 ], [ 0.000000e+00, %5641 ]
  %5702 = phi float [ %5693, %5669 ], [ 0.000000e+00, %5641 ]
  %5703 = phi float [ %5697, %5669 ], [ 0.000000e+00, %5641 ]
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fmul fast float %5704, 0x3FDF454380000000
  %5706 = fmul fast float %5704, %5704
  %5707 = fmul fast float %5706, 0x3FEE471020000000
  %5708 = fadd fast float %5707, 0xBFD42F6020000000
  %5709 = fmul fast float %5664, 0x3FD20DD760000000
  %5710 = fmul fast float %5708, %5703
  %5711 = fadd fast float %5710, %5709
  %5712 = fmul fast float %5705, %5702
  %5713 = fadd fast float %5711, %5712
  %5714 = fsub fast float %5711, %5712
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = fmul fast float %5715, 0x3FDF454380000000
  %5717 = fmul fast float %5715, %5715
  %5718 = fmul fast float %5717, 0x3FEE471020000000
  %5719 = fadd fast float %5718, 0xBFD42F6020000000
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5702, float %5703, float 0x3FD20DD760000000, float %5716, float %5719)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5722 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = fcmp fast oeq float %5722, 0.000000e+00
  %5724 = fcmp fast oeq float %5721, 0.000000e+00
  %5725 = or i1 %5724, %5723
  br i1 %5725, label %5755, label %5726

; <label>:5726                                    ; preds = %5698
  %5727 = fsub fast float -0.000000e+00, %63
  %5728 = fsub fast float -0.000000e+00, %61
  %5729 = call float @dx.op.unary.f32(i32 24, float %5722)  ; Sqrt(value)
  %5730 = fdiv fast float %5729, %5721
  %5731 = fcmp fast ogt float %5730, 0x3FFB6F8900000000
  %5732 = select i1 %5731, float 0x3FFB6F8900000000, float %5730
  %5733 = fmul fast float %5732, 0x3FE8A23460000000
  %5734 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5735 = call float @dx.op.binary.f32(i32 35, float %5732, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5736 = fmul fast float %5734, %5721
  %5737 = fmul fast float %5735, 0x3FF279A740000000
  %5738 = fadd fast float %5737, -1.000000e+00
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %62, float %5727, float %5728, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 25, float %5739)  ; Rsqrt(value)
  %5741 = fmul fast float %5740, %5727
  %5742 = fmul fast float %5740, %5728
  %5743 = fmul fast float %5740, %62
  %5744 = fmul fast float %5738, %5738
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = fmul fast float %5735, 0x40005F8BE0000000
  %5747 = fsub fast float 0x400C5BF8A0000000, %5746
  %5748 = fdiv fast float %5736, %5747
  %5749 = fmul fast float %5748, 0x3FEE31C3C0000000
  %5750 = fmul fast float %5749, %5745
  %5751 = fmul fast float %5735, 0x3FDACB7480000000
  %5752 = fadd fast float %5751, 0xBFD7347680000000
  %5753 = fmul fast float %5752, %5748
  %5754 = fmul fast float %5753, %5745
  br label %5755

; <label>:5755                                    ; preds = %5726, %5698
  %5756 = phi float [ %5741, %5726 ], [ 0.000000e+00, %5698 ]
  %5757 = phi float [ %5742, %5726 ], [ 0.000000e+00, %5698 ]
  %5758 = phi float [ %5743, %5726 ], [ 0.000000e+00, %5698 ]
  %5759 = phi float [ %5750, %5726 ], [ 0.000000e+00, %5698 ]
  %5760 = phi float [ %5754, %5726 ], [ 0.000000e+00, %5698 ]
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fmul fast float %5761, 0x3FDF454380000000
  %5763 = fmul fast float %5761, %5761
  %5764 = fmul fast float %5763, 0x3FEE471020000000
  %5765 = fadd fast float %5764, 0xBFD42F6020000000
  %5766 = fmul fast float %5721, 0x3FD20DD760000000
  %5767 = fmul fast float %5765, %5760
  %5768 = fadd fast float %5767, %5766
  %5769 = fmul fast float %5762, %5759
  %5770 = fadd fast float %5768, %5769
  %5771 = fsub fast float %5768, %5769
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fmul fast float %5772, 0x3FDF454380000000
  %5774 = fmul fast float %5772, %5772
  %5775 = fmul fast float %5774, 0x3FEE471020000000
  %5776 = fadd fast float %5775, 0xBFD42F6020000000
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5759, float %5760, float 0x3FD20DD760000000, float %5773, float %5776)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = call float @dx.op.binary.f32(i32 35, float %5656, float 0.000000e+00)  ; FMax(a,b)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5713, float 0.000000e+00)  ; FMax(a,b)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5770, float 0.000000e+00)  ; FMax(a,b)
  %5781 = call float @dx.op.binary.f32(i32 35, float %5657, float 0.000000e+00)  ; FMax(a,b)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5714, float 0.000000e+00)  ; FMax(a,b)
  %5783 = call float @dx.op.binary.f32(i32 35, float %5771, float 0.000000e+00)  ; FMax(a,b)
  %5784 = call float @dx.op.binary.f32(i32 35, float %5663, float 0.000000e+00)  ; FMax(a,b)
  %5785 = call float @dx.op.binary.f32(i32 35, float %5720, float 0.000000e+00)  ; FMax(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float %5777, float 0.000000e+00)  ; FMax(a,b)
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = call float @dx.op.binary.f32(i32 36, float %5586, float %5788)  ; FMin(a,b)
  %5790 = fsub fast float 1.000000e+00, %5602
  %5791 = fmul fast float %5789, %5790
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = bitcast float %5792 to i32
  %5794 = sub nsw i32 2129859010, %5793
  %5795 = bitcast i32 %5794 to float
  %5796 = call float @dx.op.binary.f32(i32 36, float %5587, float %5788)  ; FMin(a,b)
  %5797 = fmul fast float %5796, %5790
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = bitcast float %5798 to i32
  %5800 = sub nsw i32 2129859010, %5799
  %5801 = bitcast i32 %5800 to float
  %5802 = call float @dx.op.binary.f32(i32 36, float %5588, float %5788)  ; FMin(a,b)
  %5803 = fmul fast float %5802, %5790
  %5804 = fsub fast float 1.000000e+00, %5803
  %5805 = bitcast float %5804 to i32
  %5806 = sub nsw i32 2129859010, %5805
  %5807 = bitcast i32 %5806 to float
  %5808 = fmul fast float %5778, %5602
  %5809 = fmul fast float %5808, %5795
  %5810 = fmul fast float %5779, %5602
  %5811 = fmul fast float %5810, %5801
  %5812 = fmul fast float %5780, %5602
  %5813 = fmul fast float %5812, %5807
  %5814 = call float @dx.op.binary.f32(i32 36, float %5580, float %5788)  ; FMin(a,b)
  %5815 = fmul fast float %5814, %5790
  %5816 = fsub fast float 1.000000e+00, %5815
  %5817 = bitcast float %5816 to i32
  %5818 = sub nsw i32 2129859010, %5817
  %5819 = bitcast i32 %5818 to float
  %5820 = call float @dx.op.binary.f32(i32 36, float %5581, float %5788)  ; FMin(a,b)
  %5821 = fmul fast float %5820, %5790
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = bitcast float %5822 to i32
  %5824 = sub nsw i32 2129859010, %5823
  %5825 = bitcast i32 %5824 to float
  %5826 = call float @dx.op.binary.f32(i32 36, float %5591, float %5788)  ; FMin(a,b)
  %5827 = fmul fast float %5826, %5790
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = bitcast float %5828 to i32
  %5830 = sub nsw i32 2129859010, %5829
  %5831 = bitcast i32 %5830 to float
  %5832 = fmul fast float %5784, %5602
  %5833 = fmul fast float %5832, %5819
  %5834 = fmul fast float %5785, %5602
  %5835 = fmul fast float %5834, %5825
  %5836 = fmul fast float %5786, %5602
  %5837 = fmul fast float %5836, %5831
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5811, float %5813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = select i1 %237, float 0.000000e+00, float %5809
  %5840 = select i1 %237, float %5838, float %5811
  %5841 = select i1 %237, float 0.000000e+00, float %5813
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = select i1 %237, float 0.000000e+00, float %5781
  %5844 = select i1 %237, float %5842, float %5782
  %5845 = select i1 %237, float 0.000000e+00, float %5783
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5835, float %5837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = select i1 %237, float 0.000000e+00, float %5833
  %5848 = select i1 %237, float %5846, float %5835
  %5849 = select i1 %237, float 0.000000e+00, float %5837
  %5850 = fmul fast float %3978, %3978
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fmul fast float %5593, 9.843750e-01
  %5853 = fmul fast float %5589, 9.843750e-01
  %5854 = fadd fast float %5852, 7.812500e-03
  %5855 = fadd fast float %5853, 7.812500e-03
  %5856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5854, float %5855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5857 = extractvalue %dx.types.ResRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.ResRet.f32 %5856, 1
  %5859 = extractvalue %dx.types.ResRet.f32 %5856, 2
  %5860 = extractvalue %dx.types.ResRet.f32 %5856, 3
  %5861 = fsub fast float 1.000000e+00, %5851
  %5862 = fsub fast float %5859, %5857
  %5863 = fsub fast float %5860, %5858
  %5864 = fmul fast float %5862, %5861
  %5865 = fmul fast float %5863, %5861
  %5866 = fadd fast float %5864, %5857
  %5867 = fadd fast float %5865, %5858
  %5868 = fmul fast float %5866, %5580
  %5869 = fmul fast float %5866, %5581
  %5870 = fmul fast float %5866, %5591
  %5871 = fadd fast float %5868, %5867
  %5872 = fadd fast float %5869, %5867
  %5873 = fadd fast float %5870, %5867
  %5874 = fcmp fast ogt float %4629, 0.000000e+00
  br i1 %5874, label %5875, label %5901

; <label>:5875                                    ; preds = %5755
  %5876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4629, float %5593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5877 = extractvalue %dx.types.ResRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.ResRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.ResRet.f32 %5876, 2
  %5880 = fadd fast float %5877, -5.000000e-01
  %5881 = fadd fast float %5878, -5.000000e-01
  %5882 = fadd fast float %5879, -5.000000e-01
  %5883 = fsub fast float 1.000000e+00, %5580
  %5884 = fsub fast float 1.000000e+00, %5581
  %5885 = fsub fast float 1.000000e+00, %5591
  %5886 = fmul fast float %5580, 4.000000e+00
  %5887 = fmul fast float %5886, %5883
  %5888 = fmul fast float %5887, %5880
  %5889 = fmul fast float %5581, 4.000000e+00
  %5890 = fmul fast float %5889, %5884
  %5891 = fmul fast float %5890, %5881
  %5892 = fmul fast float %5591, 4.000000e+00
  %5893 = fmul fast float %5892, %5885
  %5894 = fmul fast float %5893, %5882
  %5895 = fadd fast float %5888, %5871
  %5896 = fadd fast float %5891, %5872
  %5897 = fadd fast float %5894, %5873
  %5898 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5899 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5900 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  br label %5901

; <label>:5901                                    ; preds = %5875, %5755
  %5902 = phi float [ %5898, %5875 ], [ %5871, %5755 ]
  %5903 = phi float [ %5899, %5875 ], [ %5872, %5755 ]
  %5904 = phi float [ %5900, %5875 ], [ %5873, %5755 ]
  %5905 = call float @dx.op.binary.f32(i32 35, float %5903, float %5904)  ; FMax(a,b)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5902, float %5905)  ; FMax(a,b)
  %5907 = fsub fast float 1.000000e+00, %5906
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = fcmp fast ogt float %5908, 0x3E7FF19E20000000
  %5910 = fdiv fast float 1.000000e+00, %5908
  %5911 = select i1 %5909, float %5910, float 0.000000e+00
  %5912 = fmul fast float %5911, %5586
  %5913 = fmul fast float %5911, %5587
  %5914 = fmul fast float %5911, %5588
  %5915 = fadd fast float %5912, -1.000000e+00
  %5916 = fadd fast float %5913, -1.000000e+00
  %5917 = fadd fast float %5914, -1.000000e+00
  %5918 = fmul fast float %5915, 5.000000e-01
  %5919 = fmul fast float %5916, 5.000000e-01
  %5920 = fmul fast float %5917, 5.000000e-01
  %5921 = fadd fast float %5918, 1.000000e+00
  %5922 = fadd fast float %5919, 1.000000e+00
  %5923 = fadd fast float %5920, 1.000000e+00
  %5924 = call float @dx.op.binary.f32(i32 35, float %5593, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5925 = fdiv fast float %3978, %5924
  %5926 = fcmp fast olt float %4678, 1.270000e+02
  %5927 = fcmp fast olt float %4679, 1.270000e+02
  %5928 = fcmp fast olt float %4680, 1.270000e+02
  %5929 = fmul fast float %4678, 0xBFF7154760000000
  %5930 = fmul fast float %5929, %5925
  %5931 = fmul fast float %4679, 0xBFF7154760000000
  %5932 = fmul fast float %5931, %5925
  %5933 = fmul fast float %4680, 0xBFF7154760000000
  %5934 = fmul fast float %5933, %5925
  %5935 = call float @dx.op.unary.f32(i32 21, float %5930)  ; Exp(value)
  %5936 = call float @dx.op.unary.f32(i32 21, float %5932)  ; Exp(value)
  %5937 = call float @dx.op.unary.f32(i32 21, float %5934)  ; Exp(value)
  %5938 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5939 = call float @dx.op.unary.f32(i32 7, float %5936)  ; Saturate(value)
  %5940 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5941 = select i1 %5926, float %5938, float 0.000000e+00
  %5942 = select i1 %5927, float %5939, float 0.000000e+00
  %5943 = select i1 %5928, float %5940, float 0.000000e+00
  %5944 = fmul fast float %5941, %5907
  %5945 = fmul fast float %5942, %5907
  %5946 = fmul fast float %5943, %5907
  %5947 = fadd fast float %5944, -1.000000e+00
  %5948 = fadd fast float %5945, -1.000000e+00
  %5949 = fadd fast float %5946, -1.000000e+00
  %5950 = fmul fast float %5947, %4626
  %5951 = fmul fast float %5948, %4626
  %5952 = fmul fast float %5949, %4626
  %5953 = fmul fast float %5902, %5847
  %5954 = fmul fast float %5903, %5848
  %5955 = fmul fast float %5904, %5849
  %5956 = fsub fast float 1.000000e+00, %5593
  %5957 = bitcast float %5956 to i32
  %5958 = sitofp i32 %5957 to float
  %5959 = fmul fast float %5958, 5.000000e+00
  %5960 = fadd fast float %5959, 0xC1EFBF8940000000
  %5961 = fptosi float %5960 to i32
  %5962 = bitcast i32 %5961 to float
  %5963 = fmul fast float %5962, %4630
  %5964 = fmul fast float %5839, %5963
  %5965 = fmul fast float %5964, %5907
  %5966 = fmul fast float %5965, %5921
  %5967 = fmul fast float %5840, %5963
  %5968 = fmul fast float %5967, %5907
  %5969 = fmul fast float %5968, %5922
  %5970 = fmul fast float %5841, %5963
  %5971 = fmul fast float %5970, %5907
  %5972 = fmul fast float %5971, %5923
  %5973 = fadd fast float %5953, %4619
  %5974 = fadd fast float %5973, %5966
  %5975 = fmul fast float %5974, %4626
  %5976 = fadd fast float %5954, %4620
  %5977 = fadd fast float %5976, %5969
  %5978 = fmul fast float %5977, %4626
  %5979 = fadd fast float %5955, %4621
  %5980 = fadd fast float %5979, %5972
  %5981 = fmul fast float %5980, %4626
  %5982 = fmul fast float %5581, 0x4012D0A400000000
  %5983 = fadd fast float %5952, 1.000000e+00
  %5984 = fadd fast float %5951, 1.000000e+00
  %5985 = fadd fast float %5950, 1.000000e+00
  %5986 = fmul fast float %5907, %5841
  %5987 = fmul fast float %5907, %5840
  %5988 = fmul fast float %5907, %5839
  %5989 = fsub fast float 1.000000e+00, %5589
  %5990 = fmul fast float %5989, %4626
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = fsub fast float 1.000000e+00, %5992
  %5994 = fadd fast float %5982, 0x3FDB6377A0000000
  %5995 = fmul fast float %5993, %5994
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fadd fast float %5995, %5996
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = call float @dx.op.binary.f32(i32 35, float %5998, float 0x3F847AE140000000)  ; FMax(a,b)
  %6000 = fmul fast float %5999, %5999
  %6001 = fmul fast float %6000, %6000
  %6002 = fmul fast float %6001, 0xC00A935000000000
  %6003 = call float @dx.op.unary.f32(i32 21, float %6002)  ; Exp(value)
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = fmul fast float %5985, %5843
  %6006 = fmul fast float %6005, %6004
  %6007 = fmul fast float %5984, %5844
  %6008 = fmul fast float %6007, %6004
  %6009 = fmul fast float %5983, %5845
  %6010 = fmul fast float %6009, %6004
  %6011 = fadd fast float %6006, %5988
  %6012 = fmul fast float %6011, %4626
  %6013 = fadd fast float %6008, %5987
  %6014 = fmul fast float %6013, %4626
  %6015 = fadd fast float %6010, %5986
  %6016 = fmul fast float %6015, %4626
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6019 = fcmp fast oeq float %6018, 0.000000e+00
  br i1 %6019, label %7164, label %6020

; <label>:6020                                    ; preds = %5901
  %6021 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6022 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6023 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.CBufRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.CBufRet.f32 %6028, 1
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = select i1 %237, float %6029, float %6025
  %6033 = select i1 %237, float %6031, float %6026
  %6034 = select i1 %237, float %6030, float %6027
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6037 = fmul fast float %6036, %104
  %6038 = fmul fast float %6036, %105
  %6039 = fmul fast float %6036, %106
  %6040 = fadd fast float %6037, %176
  %6041 = fadd fast float %6038, %177
  %6042 = fadd fast float %6039, %178
  %6043 = fcmp fast olt float %6018, 0.000000e+00
  br i1 %6043, label %6683, label %6044

; <label>:6044                                    ; preds = %6020
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6059 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6060 = fmul fast float %6046, %6040
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6047, float %6060)  ; FMad(a,b,c)
  %6062 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6048, float %6061)  ; FMad(a,b,c)
  %6063 = fadd fast float %6062, %6049
  %6064 = fmul fast float %6051, %6040
  %6065 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6052, float %6064)  ; FMad(a,b,c)
  %6066 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6053, float %6065)  ; FMad(a,b,c)
  %6067 = fadd fast float %6066, %6054
  %6068 = fmul fast float %6056, %6040
  %6069 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6057, float %6068)  ; FMad(a,b,c)
  %6070 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6058, float %6069)  ; FMad(a,b,c)
  %6071 = fadd fast float %6070, %6059
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = fcmp fast une float %6073, 0.000000e+00
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6079 = fmul fast float %6078, %6063
  %6080 = fmul fast float %6078, %6067
  %6081 = fadd fast float %6079, %6076
  %6082 = fadd fast float %6080, %6077
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6087 = fmul fast float %6086, %6063
  %6088 = fmul fast float %6086, %6067
  %6089 = fadd fast float %6087, %6084
  %6090 = fadd fast float %6088, %6085
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6093 = fsub fast float %6092, %6071
  %6094 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6095 = fmul fast float %6093, %6094
  %6096 = fsub fast float 1.000000e+00, %6095
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  br i1 %6074, label %6158, label %6098

; <label>:6098                                    ; preds = %6044
  %6099 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6102 = fadd fast float %6101, %6099
  %6103 = fcmp fast ogt float %6102, 0.000000e+00
  br i1 %6103, label %6104, label %6128

; <label>:6104                                    ; preds = %6098
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = fsub fast float %6089, %6106
  %6109 = fsub fast float %6090, %6107
  %6110 = fcmp fast olt float %6108, 0.000000e+00
  %6111 = fcmp fast olt float %6109, 0.000000e+00
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6117 = select i1 %6110, float %6113, float %6115
  %6118 = select i1 %6111, float %6114, float %6116
  %6119 = fmul fast float %6117, %6108
  %6120 = fmul fast float %6118, %6109
  %6121 = call float @dx.op.unary.f32(i32 6, float %6119)  ; FAbs(value)
  %6122 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6124 = call float @dx.op.binary.f32(i32 35, float %6121, float %6122)  ; FMax(a,b)
  %6125 = fsub fast float %6123, %6124
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %6126, %6097
  br label %6128

; <label>:6128                                    ; preds = %6104, %6098
  %6129 = phi float [ %6127, %6104 ], [ 0.000000e+00, %6098 ]
  %6130 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6131 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6132 = fadd fast float %6131, %6130
  %6133 = fcmp fast ogt float %6132, 0.000000e+00
  br i1 %6133, label %6134, label %6158

; <label>:6134                                    ; preds = %6128
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = fsub fast float %6081, %6136
  %6139 = fsub fast float %6082, %6137
  %6140 = fcmp fast olt float %6138, 0.000000e+00
  %6141 = fcmp fast olt float %6139, 0.000000e+00
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6147 = select i1 %6140, float %6143, float %6145
  %6148 = select i1 %6141, float %6144, float %6146
  %6149 = fmul fast float %6147, %6138
  %6150 = fmul fast float %6148, %6139
  %6151 = call float @dx.op.unary.f32(i32 6, float %6149)  ; FAbs(value)
  %6152 = call float @dx.op.unary.f32(i32 6, float %6150)  ; FAbs(value)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6154 = call float @dx.op.binary.f32(i32 35, float %6151, float %6152)  ; FMax(a,b)
  %6155 = fsub fast float %6153, %6154
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = fmul fast float %6156, %6097
  br label %6158

; <label>:6158                                    ; preds = %6134, %6128, %6044
  %6159 = phi float [ 0.000000e+00, %6044 ], [ %6157, %6134 ], [ 0.000000e+00, %6128 ]
  %6160 = phi float [ 0.000000e+00, %6044 ], [ %6129, %6134 ], [ %6129, %6128 ]
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = fsub fast float %6063, %6165
  %6168 = fsub fast float %6067, %6166
  %6169 = fcmp fast olt float %6167, 0.000000e+00
  %6170 = fcmp fast olt float %6168, 0.000000e+00
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = select i1 %6169, float %6172, float %6174
  %6177 = select i1 %6170, float %6173, float %6175
  %6178 = fmul fast float %6176, %6167
  %6179 = fmul fast float %6177, %6168
  %6180 = call float @dx.op.unary.f32(i32 6, float %6178)  ; FAbs(value)
  %6181 = call float @dx.op.unary.f32(i32 6, float %6179)  ; FAbs(value)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6183 = call float @dx.op.binary.f32(i32 35, float %6180, float %6181)  ; FMax(a,b)
  %6184 = fsub fast float %6182, %6183
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  %6186 = call float @dx.op.binary.f32(i32 36, float %6185, float %6163)  ; FMin(a,b)
  %6187 = fmul fast float %6186, %6097
  %6188 = fsub fast float %6159, %6187
  %6189 = fsub fast float %6160, %6159
  %6190 = fsub fast float %6189, %6187
  %6191 = call float @dx.op.binary.f32(i32 35, float %6159, float %6160)  ; FMax(a,b)
  %6192 = call float @dx.op.binary.f32(i32 35, float %6187, float %6191)  ; FMax(a,b)
  %6193 = fcmp fast olt float %6192, 1.000000e+00
  br i1 %6193, label %6194, label %6592, !dx.controlflow.hints !84

; <label>:6194                                    ; preds = %6158
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = fcmp fast une float %6196, 0.000000e+00
  br i1 %6197, label %6198, label %6592, !dx.controlflow.hints !85

; <label>:6198                                    ; preds = %6194
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6202 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6203 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = extractvalue %dx.types.CBufRet.f32 %6204, 3
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6213 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6214 = fmul fast float %6200, %6040
  %6215 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6201, float %6214)  ; FMad(a,b,c)
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6202, float %6215)  ; FMad(a,b,c)
  %6217 = fadd fast float %6216, %6203
  %6218 = fmul fast float %6205, %6040
  %6219 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6206, float %6218)  ; FMad(a,b,c)
  %6220 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6207, float %6219)  ; FMad(a,b,c)
  %6221 = fadd fast float %6220, %6208
  %6222 = fmul fast float %6210, %6040
  %6223 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6211, float %6222)  ; FMad(a,b,c)
  %6224 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6212, float %6223)  ; FMad(a,b,c)
  %6225 = fadd fast float %6224, %6213
  %6226 = fcmp fast oge float %6217, 1.000000e+00
  %6227 = fcmp fast oge float %6221, 1.000000e+00
  %6228 = or i1 %6226, %6227
  %6229 = fcmp fast olt float %6217, 0.000000e+00
  %6230 = fcmp fast olt float %6221, 0.000000e+00
  %6231 = or i1 %6229, %6230
  %6232 = or i1 %6228, %6231
  br i1 %6232, label %6592, label %6233, !dx.controlflow.hints !86

; <label>:6233                                    ; preds = %6198
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.i32 %6238, 2
  %6240 = uitofp i32 %6239 to float
  %6241 = extractvalue %dx.types.CBufRet.i32 %6238, 3
  %6242 = uitofp i32 %6241 to float
  %6243 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6244 = fmul fast float %6243, 2.000000e+00
  %6245 = fsub fast float %6217, %6235
  %6246 = fsub fast float %6221, %6236
  %6247 = fmul fast float %6244, %6245
  %6248 = fmul fast float %6244, %6246
  %6249 = fdiv fast float 1.000000e+00, %6023
  %6250 = fmul fast float %6248, %6249
  %6251 = call float @dx.op.unary.f32(i32 6, float %6250)  ; FAbs(value)
  %6252 = fmul fast float %6237, %6042
  %6253 = fmul fast float %6252, %6244
  %6254 = call float @dx.op.unary.f32(i32 6, float %6253)  ; FAbs(value)
  %6255 = call float @dx.op.unary.f32(i32 6, float %6247)  ; FAbs(value)
  %6256 = call float @dx.op.binary.f32(i32 35, float %6254, float %6251)  ; FMax(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6255, float %6256)  ; FMax(a,b)
  %6258 = fmul fast float %6257, 2.000000e+00
  %6259 = call float @dx.op.unary.f32(i32 23, float %6258)  ; Log(value)
  %6260 = call float @dx.op.binary.f32(i32 35, float %6259, float %6240)  ; FMax(a,b)
  %6261 = call float @dx.op.unary.f32(i32 22, float %6260)  ; Frc(value)
  %6262 = fadd fast float %6261, 0xBFEA666660000000
  %6263 = fmul fast float %6262, 8.000000e+00
  %6264 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6265 = call float @dx.op.unary.f32(i32 27, float %6260)  ; Round_ni(value)
  %6266 = fadd fast float %6265, %6264
  %6267 = call float @dx.op.binary.f32(i32 36, float %6266, float %6242)  ; FMin(a,b)
  %6268 = call float @dx.op.unary.f32(i32 27, float %6267)  ; Round_ni(value)
  %6269 = fsub fast float -0.000000e+00, %6268
  %6270 = call float @dx.op.unary.f32(i32 21, float %6269)  ; Exp(value)
  %6271 = fmul fast float %6270, %6244
  %6272 = fmul fast float %6271, %6217
  %6273 = fmul fast float %6271, %6221
  %6274 = fmul fast float %6272, 2.500000e-01
  %6275 = fmul fast float %6273, 2.500000e-01
  %6276 = fadd fast float %6274, 5.000000e-01
  %6277 = fadd fast float %6275, 5.000000e-01
  %6278 = fsub fast float %6242, %6240
  %6279 = fptoui float %6278 to i32
  %6280 = add i32 %6279, 320
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %6280)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = fcmp fast une float %6267, %6242
  %6285 = fsub fast float %6217, %6282
  %6286 = fsub fast float %6221, %6283
  %6287 = call float @dx.op.unary.f32(i32 6, float %6285)  ; FAbs(value)
  %6288 = call float @dx.op.unary.f32(i32 6, float %6286)  ; FAbs(value)
  %6289 = fmul fast float %6287, %6271
  %6290 = fmul fast float %6288, %6271
  %6291 = fcmp fast olt float %6289, 1.000000e+00
  %6292 = fcmp fast olt float %6290, 1.000000e+00
  %6293 = and i1 %6291, %6292
  %6294 = or i1 %6284, %6293
  br i1 %6294, label %6295, label %6592, !dx.controlflow.hints !87

; <label>:6295                                    ; preds = %6233
  %6296 = fmul fast float %6273, 5.000000e-01
  %6297 = fmul fast float %6272, 5.000000e-01
  %6298 = fadd fast float %6296, 5.000000e-01
  %6299 = fadd fast float %6297, 5.000000e-01
  %6300 = sitofp i32 %6239 to float
  %6301 = fsub fast float %6267, %6300
  %6302 = call float @dx.op.unary.f32(i32 27, float %6301)  ; Round_ni(value)
  %6303 = call float @dx.op.unary.f32(i32 22, float %6267)  ; Frc(value)
  %6304 = call float @dx.op.unary.f32(i32 22, float %6299)  ; Frc(value)
  %6305 = call float @dx.op.unary.f32(i32 22, float %6298)  ; Frc(value)
  %6306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6304, float %6305, float %6302, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.ResRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.ResRet.f32 %6306, 2
  %6310 = extractvalue %dx.types.ResRet.f32 %6306, 3
  %6311 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6311, label %6312, label %6333, !dx.controlflow.hints !88

; <label>:6312                                    ; preds = %6295
  %6313 = fadd fast float %6302, 1.000000e+00
  %6314 = call float @dx.op.unary.f32(i32 22, float %6276)  ; Frc(value)
  %6315 = call float @dx.op.unary.f32(i32 22, float %6277)  ; Frc(value)
  %6316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %6314, float %6315, float %6313, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6317 = extractvalue %dx.types.ResRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.ResRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.ResRet.f32 %6316, 2
  %6320 = extractvalue %dx.types.ResRet.f32 %6316, 3
  %6321 = fsub fast float %6317, %6307
  %6322 = fsub fast float %6318, %6308
  %6323 = fsub fast float %6319, %6309
  %6324 = fsub fast float %6320, %6310
  %6325 = fmul fast float %6321, %6303
  %6326 = fmul fast float %6322, %6303
  %6327 = fmul fast float %6323, %6303
  %6328 = fmul fast float %6324, %6303
  %6329 = fadd fast float %6325, %6307
  %6330 = fadd fast float %6326, %6308
  %6331 = fadd fast float %6327, %6309
  %6332 = fadd fast float %6328, %6310
  br label %6333

; <label>:6333                                    ; preds = %6312, %6295
  %6334 = phi float [ %6329, %6312 ], [ %6307, %6295 ]
  %6335 = phi float [ %6330, %6312 ], [ %6308, %6295 ]
  %6336 = phi float [ %6331, %6312 ], [ %6309, %6295 ]
  %6337 = phi float [ %6332, %6312 ], [ %6310, %6295 ]
  %6338 = fadd fast float %6334, -5.000000e-01
  %6339 = fadd fast float %6336, -5.000000e-01
  %6340 = fmul fast float %6338, 0xBFD5555560000000
  %6341 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6339, float %6340)  ; FMad(a,b,c)
  %6342 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6335, float 0.000000e+00)  ; FMad(a,b,c)
  %6343 = fadd fast float %6342, %6337
  %6344 = fmul fast float %6338, -7.500000e-01
  %6345 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6339, float %6344)  ; FMad(a,b,c)
  %6346 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6335, float 0.000000e+00)  ; FMad(a,b,c)
  %6347 = fadd fast float %6346, %6337
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = fsub fast float %6351, %6341
  %6356 = fsub fast float %6352, %6343
  %6357 = fsub fast float %6353, %6345
  %6358 = fsub fast float %6354, %6347
  %6359 = fmul fast float %6355, %6349
  %6360 = fmul fast float %6356, %6349
  %6361 = fmul fast float %6357, %6349
  %6362 = fmul fast float %6358, %6349
  %6363 = fadd fast float %6359, %6341
  %6364 = fadd fast float %6360, %6343
  %6365 = fadd fast float %6361, %6345
  %6366 = fadd fast float %6362, %6347
  %6367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6368 = extractvalue %dx.types.ResRet.i32 %6367, 0
  %6369 = and i32 %6368, 536870911
  %6370 = uitofp i32 %6369 to float
  %6371 = fmul fast float %6370, %6217
  %6372 = fmul fast float %6370, %6221
  %6373 = fptoui float %6371 to i32
  %6374 = fptoui float %6372 to i32
  %6375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6376 = extractvalue %dx.types.ResRet.i32 %6375, 0
  %6377 = and i32 %6376, 31
  %6378 = lshr i32 %6373, %6377
  %6379 = lshr i32 %6374, %6377
  %6380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6381 = extractvalue %dx.types.ResRet.i32 %6380, 0
  %6382 = and i32 %6381, 31
  %6383 = shl i32 1, %6382
  %6384 = call i32 @dx.op.binary.i32(i32 40, i32 %6383, i32 4)  ; UMin(a,b)
  %6385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6386 = extractvalue %dx.types.ResRet.i32 %6385, 0
  %6387 = extractvalue %dx.types.ResRet.i32 %6385, 1
  %6388 = icmp eq i32 %6384, 0
  br i1 %6388, label %6430, label %6389

; <label>:6389                                    ; preds = %6333
  br label %6390

; <label>:6390                                    ; preds = %6418, %6389
  %6391 = phi i32 [ %6421, %6418 ], [ 0, %6389 ]
  %6392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.i32 %6392, 0
  %6394 = lshr i32 %6393, 16
  %6395 = and i32 %6394, 31
  %6396 = shl i32 %6379, %6395
  %6397 = add i32 %6396, %6378
  %6398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.i32 %6398, 0
  %6400 = and i32 %6399, 31
  %6401 = shl i32 %6397, %6400
  %6402 = add i32 %6401, %6391
  %6403 = shl i32 %6402, 2
  %6404 = add i32 %6403, 32
  %6405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6404, i32 undef)  ; BufferLoad(srv,index,wot)
  %6406 = extractvalue %dx.types.ResRet.i32 %6405, 0
  %6407 = icmp slt i32 %6406, 0
  %6408 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6391
  %6409 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6391
  %6410 = bitcast float* %6408 to i32*
  %6411 = bitcast float* %6409 to i32*
  br i1 %6407, label %6412, label %6418

; <label>:6412                                    ; preds = %6390
  %6413 = and i32 %6406, 1073741823
  %6414 = add nuw nsw i32 %6413, 20
  %6415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6414, i32 undef)  ; BufferLoad(srv,index,wot)
  %6416 = extractvalue %dx.types.ResRet.i32 %6415, 0
  %6417 = extractvalue %dx.types.ResRet.i32 %6415, 1
  br label %6418

; <label>:6418                                    ; preds = %6412, %6390
  %6419 = phi i32 [ %6416, %6412 ], [ %6386, %6390 ]
  %6420 = phi i32 [ %6417, %6412 ], [ %6387, %6390 ]
  store i32 %6419, i32* %6410, align 4
  store i32 %6420, i32* %6411, align 4
  %6421 = add nuw i32 %6391, 1
  %6422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.i32 %6422, 2
  %6424 = icmp eq i32 %6423, 0
  %6425 = icmp ugt i32 %6406, -1073741825
  %6426 = and i1 %6425, %6424
  %6427 = icmp ult i32 %6421, %6384
  %6428 = and i1 %6426, %6427
  br i1 %6428, label %6390, label %6429

; <label>:6429                                    ; preds = %6418
  br label %6430

; <label>:6430                                    ; preds = %6429, %6333
  %6431 = phi i32 [ 0, %6333 ], [ %6421, %6429 ]
  %6432 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6433 = fptoui float %6432 to i32
  %6434 = icmp eq i32 %6433, 0
  br i1 %6434, label %6486, label %6435

; <label>:6435                                    ; preds = %6430
  br label %6436

; <label>:6436                                    ; preds = %6481, %6435
  %6437 = phi i32 [ %6482, %6481 ], [ %6431, %6435 ]
  %6438 = phi i32 [ %6483, %6481 ], [ 0, %6435 ]
  %6439 = lshr i32 %6438, 2
  %6440 = and i32 %6438, 3
  %6441 = add nuw nsw i32 %6439, 83
  %6442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %6441)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.i32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.i32 %6442, 1
  %6445 = extractvalue %dx.types.CBufRet.i32 %6442, 2
  %6446 = extractvalue %dx.types.CBufRet.i32 %6442, 3
  %6447 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %6443, i32* %6447, align 4
  %6448 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %6444, i32* %6448, align 4
  %6449 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %6445, i32* %6449, align 4
  %6450 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %6446, i32* %6450, align 4
  %6451 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %6440
  %6452 = load i32, i32* %6451, align 4, !tbaa !89, !noalias !93
  %6453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6454 = extractvalue %dx.types.ResRet.i32 %6453, 0
  %6455 = lshr i32 %6454, 16
  %6456 = and i32 %6455, 31
  %6457 = shl i32 %6379, %6456
  %6458 = add i32 %6457, %6378
  %6459 = shl i32 %6458, 2
  %6460 = add i32 %6459, %6452
  %6461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6460, i32 undef)  ; BufferLoad(srv,index,wot)
  %6462 = extractvalue %dx.types.ResRet.i32 %6461, 0
  %6463 = icmp eq i32 %6462, 0
  br i1 %6463, label %6481, label %6464

; <label>:6464                                    ; preds = %6436
  %6465 = icmp slt i32 %6462, 0
  %6466 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6437
  %6467 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6437
  %6468 = bitcast float* %6466 to i32*
  %6469 = bitcast float* %6467 to i32*
  br i1 %6465, label %6470, label %6477

; <label>:6470                                    ; preds = %6464
  %6471 = and i32 %6462, 1073741823
  %6472 = add i32 %6452, 20
  %6473 = add i32 %6472, %6471
  %6474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6473, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.i32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.i32 %6474, 1
  br label %6477

; <label>:6477                                    ; preds = %6470, %6464
  %6478 = phi i32 [ %6475, %6470 ], [ %6386, %6464 ]
  %6479 = phi i32 [ %6476, %6470 ], [ %6387, %6464 ]
  store i32 %6478, i32* %6468, align 4
  store i32 %6479, i32* %6469, align 4
  %6480 = add i32 %6437, 1
  br label %6481

; <label>:6481                                    ; preds = %6477, %6436
  %6482 = phi i32 [ %6437, %6436 ], [ %6480, %6477 ]
  %6483 = add nuw i32 %6438, 1
  %6484 = icmp eq i32 %6483, %6433
  br i1 %6484, label %6485, label %6436

; <label>:6485                                    ; preds = %6481
  br label %6486

; <label>:6486                                    ; preds = %6485, %6430
  %6487 = phi i32 [ %6431, %6430 ], [ %6482, %6485 ]
  %6488 = icmp eq i32 %6487, 1
  %6489 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %6490 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %6488, label %6491, label %6494

; <label>:6491                                    ; preds = %6486
  %6492 = load float, float* %6489, align 4
  %6493 = load float, float* %6490, align 4
  br label %6521

; <label>:6494                                    ; preds = %6486
  %6495 = load float, float* %6489, align 4
  %6496 = load float, float* %6490, align 4
  %6497 = fdiv fast float 1.000000e+00, %6496
  %6498 = fsub fast float %6495, %6497
  %6499 = icmp ugt i32 %6487, 1
  br i1 %6499, label %6500, label %6516

; <label>:6500                                    ; preds = %6494
  br label %6501

; <label>:6501                                    ; preds = %6501, %6500
  %6502 = phi float [ %6511, %6501 ], [ %6498, %6500 ]
  %6503 = phi float [ %6512, %6501 ], [ %6495, %6500 ]
  %6504 = phi i32 [ %6513, %6501 ], [ 1, %6500 ]
  %6505 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6504
  %6506 = load float, float* %6505, align 4
  %6507 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6504
  %6508 = load float, float* %6507, align 4
  %6509 = fdiv fast float 1.000000e+00, %6508
  %6510 = fsub fast float %6506, %6509
  %6511 = call float @dx.op.binary.f32(i32 36, float %6502, float %6510)  ; FMin(a,b)
  %6512 = call float @dx.op.binary.f32(i32 35, float %6503, float %6506)  ; FMax(a,b)
  %6513 = add nuw i32 %6504, 1
  %6514 = icmp eq i32 %6513, %6487
  br i1 %6514, label %6515, label %6501

; <label>:6515                                    ; preds = %6501
  br label %6516

; <label>:6516                                    ; preds = %6515, %6494
  %6517 = phi float [ %6498, %6494 ], [ %6511, %6515 ]
  %6518 = phi float [ %6495, %6494 ], [ %6512, %6515 ]
  %6519 = fsub fast float %6518, %6517
  %6520 = fdiv fast float 1.000000e+00, %6519
  br label %6521

; <label>:6521                                    ; preds = %6516, %6491
  %6522 = phi float [ %6492, %6491 ], [ %6518, %6516 ]
  %6523 = phi float [ %6493, %6491 ], [ %6520, %6516 ]
  %6524 = fadd fast float %6225, %6522
  %6525 = fmul fast float %6524, %6523
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = fmul fast float %6526, 2.000000e+00
  %6528 = fsub fast float 1.000000e+00, %6527
  %6529 = fmul fast float %6363, %6363
  %6530 = fsub fast float %6364, %6529
  %6531 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6530)  ; FMax(a,b)
  %6532 = fdiv fast float 1.000000e+00, %6531
  %6533 = fmul fast float %6364, %6363
  %6534 = fsub fast float %6365, %6533
  %6535 = fsub fast float %6528, %6363
  %6536 = fmul fast float %6528, %6528
  %6537 = fsub fast float %6536, %6364
  %6538 = fmul fast float %6532, %6534
  %6539 = fmul fast float %6538, %6535
  %6540 = fsub fast float %6537, %6539
  %6541 = fmul fast float %6364, %6364
  %6542 = fsub fast float %6366, %6541
  %6543 = fmul fast float %6534, %6534
  %6544 = fmul fast float %6543, %6532
  %6545 = fsub fast float %6542, %6544
  %6546 = fdiv fast float %6540, %6545
  %6547 = fmul fast float %6546, %6534
  %6548 = fsub fast float %6535, %6547
  %6549 = fmul fast float %6548, %6532
  %6550 = fmul fast float %6549, %6363
  %6551 = fsub fast float 1.000000e+00, %6550
  %6552 = fmul fast float %6546, %6364
  %6553 = fsub fast float %6551, %6552
  %6554 = fmul fast float %6549, %6549
  %6555 = fmul fast float %6546, 4.000000e+00
  %6556 = fmul fast float %6555, %6553
  %6557 = fsub fast float %6554, %6556
  %6558 = call float @dx.op.unary.f32(i32 24, float %6557)  ; Sqrt(value)
  %6559 = fcmp fast oge float %6549, 0.000000e+00
  %6560 = fsub fast float -0.000000e+00, %6558
  %6561 = select i1 %6559, float %6560, float %6558
  %6562 = fsub fast float %6561, %6549
  %6563 = fdiv fast float %6562, %6546
  %6564 = fdiv fast float %6553, %6562
  %6565 = fmul fast float %6563, 5.000000e-01
  %6566 = fmul fast float %6564, 2.000000e+00
  %6567 = select i1 %6559, float %6565, float %6566
  %6568 = select i1 %6559, float %6566, float %6565
  %6569 = call float @dx.op.binary.f32(i32 35, float %6567, float %6568)  ; FMax(a,b)
  %6570 = call float @dx.op.binary.f32(i32 36, float %6567, float %6568)  ; FMin(a,b)
  %6571 = fcmp fast ogt float %6528, %6569
  %6572 = fsub fast float %6528, %6570
  %6573 = fsub fast float %6528, %6569
  %6574 = fsub fast float %6569, %6570
  %6575 = select i1 %6571, float %6573, float %6574
  %6576 = fmul float %6572, %6575
  %6577 = select i1 %6571, float %6570, float %6528
  %6578 = fcmp fast ogt float %6528, %6570
  %6579 = fmul fast float %6577, %6569
  %6580 = fadd fast float %6577, %6569
  %6581 = fmul fast float %6580, %6363
  %6582 = fadd fast float %6579, %6364
  %6583 = fsub fast float %6582, %6581
  %6584 = fdiv fast float %6583, %6576
  %6585 = select i1 %6578, float %6584, float 0.000000e+00
  %6586 = fsub fast float 1.000000e+00, %6585
  %6587 = select i1 %6571, float %6586, float %6585
  %6588 = call float @dx.op.unary.f32(i32 7, float %6587)  ; Saturate(value)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6590 = fmul fast float %6589, %6588
  %6591 = fsub fast float 1.000000e+00, %6590
  br label %6592

; <label>:6592                                    ; preds = %6521, %6233, %6198, %6194, %6158
  %6593 = phi float [ 1.000000e+00, %6158 ], [ %6591, %6521 ], [ 1.000000e+00, %6198 ], [ 1.000000e+00, %6233 ], [ 1.000000e+00, %6194 ]
  %6594 = fcmp fast ogt float %6190, 0.000000e+00
  br i1 %6594, label %6595, label %6603, !dx.controlflow.hints !102

; <label>:6595                                    ; preds = %6592
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 2
  %6598 = fadd fast float %6597, %6071
  %6599 = call float @dx.op.binary.f32(i32 35, float %6598, float 0.000000e+00)  ; FMax(a,b)
  %6600 = fadd fast float %6599, 0x3F10000000000000
  %6601 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %6089, float %6090, float undef, float undef, i32 0, i32 0, i32 undef, float %6600)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  br label %6603

; <label>:6603                                    ; preds = %6595, %6592
  %6604 = phi float [ %6602, %6595 ], [ 1.000000e+00, %6592 ]
  %6605 = fcmp fast ogt float %6188, 0.000000e+00
  br i1 %6605, label %6606, label %6614, !dx.controlflow.hints !103

; <label>:6606                                    ; preds = %6603
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 1
  %6609 = fadd fast float %6608, %6071
  %6610 = call float @dx.op.binary.f32(i32 35, float %6609, float 0.000000e+00)  ; FMax(a,b)
  %6611 = fadd fast float %6610, 0x3F10000000000000
  %6612 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %6081, float %6082, float undef, float undef, i32 0, i32 0, i32 undef, float %6611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6613 = extractvalue %dx.types.ResRet.f32 %6612, 0
  br label %6614

; <label>:6614                                    ; preds = %6606, %6603
  %6615 = phi float [ %6613, %6606 ], [ 1.000000e+00, %6603 ]
  %6616 = fcmp fast ogt float %6187, 0.000000e+00
  br i1 %6616, label %6617, label %6629, !dx.controlflow.hints !104

; <label>:6617                                    ; preds = %6614
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6620 = fadd fast float %6619, %6071
  %6621 = call float @dx.op.binary.f32(i32 35, float %6620, float 0.000000e+00)  ; FMax(a,b)
  %6622 = fadd fast float %6621, 0x3F10000000000000
  br i1 %6074, label %6623, label %6626, !dx.controlflow.hints !105

; <label>:6623                                    ; preds = %6617
  %6624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %6063, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  br label %6629

; <label>:6626                                    ; preds = %6617
  %6627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %6063, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  br label %6629

; <label>:6629                                    ; preds = %6626, %6623, %6614
  %6630 = phi float [ %6625, %6623 ], [ %6628, %6626 ], [ 1.000000e+00, %6614 ]
  %6631 = fsub fast float %6604, %6593
  %6632 = fmul fast float %6631, %6160
  %6633 = fadd fast float %6632, %6593
  %6634 = fsub fast float %6615, %6633
  %6635 = fmul fast float %6634, %6159
  %6636 = fadd fast float %6635, %6633
  %6637 = fsub fast float %6630, %6636
  %6638 = fmul fast float %6637, %6187
  %6639 = fadd fast float %6638, %6636
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6642 = fcmp fast ogt float %6641, 0.000000e+00
  br i1 %6642, label %6643, label %6683, !dx.controlflow.hints !106

; <label>:6643                                    ; preds = %6629
  %6644 = fcmp fast ugt float %6641, 0.000000e+00
  br i1 %6644, label %6645, label %6680

; <label>:6645                                    ; preds = %6643
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.CBufRet.f32 %6646, 2
  %6650 = extractvalue %dx.types.CBufRet.f32 %6646, 3
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.CBufRet.f32 %6651, 1
  %6654 = extractvalue %dx.types.CBufRet.f32 %6651, 2
  %6655 = extractvalue %dx.types.CBufRet.f32 %6651, 3
  %6656 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = fadd fast float %6659, %6040
  %6663 = fadd fast float %6660, %6041
  %6664 = fadd fast float %6661, %6042
  %6665 = fmul fast float %6662, %6647
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6663, float %6665)  ; FMad(a,b,c)
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6649, float %6664, float %6666)  ; FMad(a,b,c)
  %6668 = fadd fast float %6667, %6650
  %6669 = fmul fast float %6662, %6652
  %6670 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6663, float %6669)  ; FMad(a,b,c)
  %6671 = call float @dx.op.tertiary.f32(i32 46, float %6654, float %6664, float %6670)  ; FMad(a,b,c)
  %6672 = fadd fast float %6671, %6655
  %6673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %6668, float %6672, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = fmul fast float %6674, %6657
  %6676 = fadd fast float %6675, %6656
  %6677 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6678 = fmul fast float %6677, %6641
  %6679 = fsub fast float 1.000000e+00, %6678
  br label %6680

; <label>:6680                                    ; preds = %6645, %6643
  %6681 = phi float [ %6679, %6645 ], [ 1.000000e+00, %6643 ]
  %6682 = fmul fast float %6681, %6639
  br label %6683

; <label>:6683                                    ; preds = %6680, %6629, %6020
  %6684 = phi float [ 1.000000e+00, %6020 ], [ %6682, %6680 ], [ %6639, %6629 ]
  %6685 = call float @dx.op.binary.f32(i32 36, float %6684, float %6684)  ; FMin(a,b)
  %6686 = call float @dx.op.binary.f32(i32 36, float %6684, float %6685)  ; FMin(a,b)
  %6687 = fcmp fast ogt float %6686, 0.000000e+00
  br i1 %6687, label %6688, label %6849, !dx.controlflow.hints !107

; <label>:6688                                    ; preds = %6683
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = extractvalue %dx.types.CBufRet.f32 %6694, 3
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6704 = fmul fast float %6690, %6040
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6691, float %6704)  ; FMad(a,b,c)
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6692, float %6705)  ; FMad(a,b,c)
  %6707 = fadd fast float %6706, %6693
  %6708 = fmul fast float %6695, %6040
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6696, float %6708)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6697, float %6709)  ; FMad(a,b,c)
  %6711 = fadd fast float %6710, %6698
  %6712 = fmul fast float %6700, %6040
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6041, float %6701, float %6712)  ; FMad(a,b,c)
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6702, float %6713)  ; FMad(a,b,c)
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6719 = fmul fast float %6718, %6707
  %6720 = fmul fast float %6718, %6711
  %6721 = fadd fast float %6719, %6716
  %6722 = fadd fast float %6720, %6717
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6726 = fsub fast float %6721, %6724
  %6727 = fsub fast float %6722, %6725
  %6728 = fcmp fast olt float %6726, 0.000000e+00
  %6729 = fcmp fast olt float %6727, 0.000000e+00
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.CBufRet.f32 %6730, 2
  %6734 = extractvalue %dx.types.CBufRet.f32 %6730, 3
  %6735 = select i1 %6728, float %6731, float %6733
  %6736 = select i1 %6729, float %6732, float %6734
  %6737 = fmul fast float %6735, %6726
  %6738 = fmul fast float %6736, %6727
  %6739 = call float @dx.op.unary.f32(i32 6, float %6737)  ; FAbs(value)
  %6740 = call float @dx.op.unary.f32(i32 6, float %6738)  ; FAbs(value)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6742 = call float @dx.op.binary.f32(i32 35, float %6739, float %6740)  ; FMax(a,b)
  %6743 = fsub fast float %6741, %6742
  %6744 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6745 = fcmp fast ogt float %6744, 0.000000e+00
  br i1 %6745, label %6746, label %6787, !dx.controlflow.hints !108

; <label>:6746                                    ; preds = %6688
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %6721, float %6722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 1
  %6749 = fcmp fast ogt float %6748, 0.000000e+00
  br i1 %6749, label %6750, label %6782

; <label>:6750                                    ; preds = %6746
  %6751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %6721, float %6722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = extractvalue %dx.types.ResRet.f32 %6751, 3
  %6756 = fsub fast float 1.000000e+00, %6703
  %6757 = fsub fast float %6756, %6714
  %6758 = fmul fast float %6757, 0x400921FB60000000
  %6759 = fadd fast float %6758, 0x3FF921FB60000000
  %6760 = call float @dx.op.unary.f32(i32 13, float %6759)  ; Sin(value)
  %6761 = fadd fast float %6760, -1.000000e+00
  %6762 = fmul fast float %6761, 0x3FD45F3060000000
  %6763 = fmul fast float %6757, 0x401921FB60000000
  %6764 = fadd fast float %6763, 0x400921FB60000000
  %6765 = call float @dx.op.unary.f32(i32 13, float %6764)  ; Sin(value)
  %6766 = fadd fast float %6765, 0x3E7777A5C0000000
  %6767 = fmul fast float %6766, 0x3FC45F3060000000
  %6768 = fmul fast float %6757, 0x4022D97C80000000
  %6769 = fadd fast float %6768, 0x4012D97C80000000
  %6770 = call float @dx.op.unary.f32(i32 13, float %6769)  ; Sin(value)
  %6771 = fadd fast float %6770, 1.000000e+00
  %6772 = fmul fast float %6771, 0x3FBB2995E0000000
  %6773 = fmul fast float %6757, 0x402921FB60000000
  %6774 = fadd fast float %6773, 0x401921FB60000000
  %6775 = call float @dx.op.unary.f32(i32 13, float %6774)  ; Sin(value)
  %6776 = fadd fast float %6775, 0xBE8777A5C0000000
  %6777 = fmul fast float %6776, 0x3FB45F3060000000
  %6778 = call float @dx.op.dot4.f32(i32 56, float %6752, float %6753, float %6754, float %6755, float %6762, float %6767, float %6772, float %6777)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6779 = fmul fast float %6778, 0xBFF7154760000000
  %6780 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  br label %6782

; <label>:6782                                    ; preds = %6750, %6746
  %6783 = phi float [ %6781, %6750 ], [ 1.000000e+00, %6746 ]
  %6784 = fadd fast float %6783, -1.000000e+00
  %6785 = fmul fast float %6784, %6744
  %6786 = fadd fast float %6785, 1.000000e+00
  br label %6787

; <label>:6787                                    ; preds = %6782, %6688
  %6788 = phi float [ %6786, %6782 ], [ 1.000000e+00, %6688 ]
  %6789 = fmul fast float %6788, %6684
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = fadd fast float %6791, %176
  %6795 = fadd fast float %6792, %177
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6798 = fsub fast float -0.000000e+00, %6794
  %6799 = fsub fast float -0.000000e+00, %6795
  %6800 = fsub fast float -0.000000e+00, %178
  %6801 = fsub fast float %6800, %6793
  %6802 = fadd fast float %6801, %6797
  %6803 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6798, float %6799, float %6802)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6021, float %6022, float %6023)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = fdiv fast float 1.000000e+00, %6804
  %6806 = fmul fast float %6805, %6803
  %6807 = fmul fast float %6021, %6806
  %6808 = fmul fast float %6022, %6806
  %6809 = fadd fast float %6807, %6794
  %6810 = fadd fast float %6808, %6795
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = fsub fast float %6809, %6812
  %6815 = fsub fast float %6810, %6813
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6819 = fmul fast float %6814, %6817
  %6820 = fmul fast float %6815, %6818
  %6821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.i32 %6821, 3
  %6823 = icmp eq i32 %6822, 0
  br i1 %6823, label %6829, label %6824

; <label>:6824                                    ; preds = %6787
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6819, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  br label %6834

; <label>:6829                                    ; preds = %6787
  %6830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6819, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.ResRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.ResRet.f32 %6830, 2
  br label %6834

; <label>:6834                                    ; preds = %6829, %6824
  %6835 = phi float [ %6826, %6824 ], [ %6831, %6829 ]
  %6836 = phi float [ %6827, %6824 ], [ %6832, %6829 ]
  %6837 = phi float [ %6828, %6824 ], [ %6833, %6829 ]
  %6838 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6839 = fmul fast float %6838, %6835
  %6840 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6841 = fsub fast float %6806, %6840
  %6842 = fsub fast float %6841, %6839
  %6843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6842)  ; FMax(a,b)
  %6844 = fmul fast float %6843, %6836
  %6845 = call float @dx.op.binary.f32(i32 36, float %6837, float %6844)  ; FMin(a,b)
  %6846 = fmul fast float %6845, 0xBFF7154760000000
  %6847 = call float @dx.op.unary.f32(i32 21, float %6846)  ; Exp(value)
  %6848 = fmul fast float %6789, %6847
  br label %6849

; <label>:6849                                    ; preds = %6834, %6683
  %6850 = phi float [ %6848, %6834 ], [ %6684, %6683 ]
  %6851 = call float @dx.op.binary.f32(i32 36, float %6850, float %6850)  ; FMin(a,b)
  %6852 = call float @dx.op.binary.f32(i32 36, float %6850, float %6851)  ; FMin(a,b)
  %6853 = fcmp fast ogt float %6852, 0.000000e+00
  br i1 %6853, label %6854, label %7164, !dx.controlflow.hints !109

; <label>:6854                                    ; preds = %6849
  %6855 = fmul fast float %6850, %6032
  %6856 = fmul fast float %6850, %6033
  %6857 = fmul fast float %6850, %6034
  %6858 = fsub fast float %6021, %5579
  %6859 = fsub fast float %6022, %5578
  %6860 = fsub fast float %6023, %5577
  %6861 = call float @dx.op.dot3.f32(i32 55, float %6858, float %6859, float %6860, float %6858, float %6859, float %6860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = call float @dx.op.unary.f32(i32 25, float %6861)  ; Rsqrt(value)
  %6863 = fmul fast float %6862, %6858
  %6864 = fmul fast float %6862, %6859
  %6865 = fmul fast float %6862, %6860
  %6866 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6022, float %6023, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6867 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5575, float %5574, float %6863, float %6864, float %6865)  ; Dot3(ax,ay,az,bx,by,bz)
  %6868 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6869 = fmul fast float %6868, %6868
  %6870 = fmul fast float %6869, %5606
  %6871 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  %6872 = fmul fast float %6871, %6868
  %6873 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %6863, float %6864, float %6865)  ; Dot3(ax,ay,az,bx,by,bz)
  %6874 = fmul fast float %6873, %6873
  %6875 = call float @dx.op.unary.f32(i32 6, float %6866)  ; FAbs(value)
  %6876 = call float @dx.op.binary.f32(i32 35, float %5989, float 0x3F847AE140000000)  ; FMax(a,b)
  %6877 = fmul fast float %6876, %6876
  %6878 = fmul fast float %6877, %6877
  %6879 = fsub fast float 1.000000e+00, %6878
  %6880 = fmul fast float %5593, %5593
  %6881 = fmul fast float %6880, %6879
  %6882 = fadd fast float %6881, %6878
  %6883 = bitcast float %6882 to i32
  %6884 = ashr i32 %6883, 1
  %6885 = add nsw i32 %6884, 532487669
  %6886 = bitcast i32 %6885 to float
  %6887 = fadd fast float %6886, %5593
  %6888 = fmul fast float %6878, %6874
  %6889 = fsub fast float 1.000000e+00, %6874
  %6890 = fadd fast float %6889, %6888
  %6891 = fmul fast float %6875, %6875
  %6892 = fmul fast float %6891, %6879
  %6893 = fadd fast float %6892, %6878
  %6894 = bitcast float %6893 to i32
  %6895 = ashr i32 %6894, 1
  %6896 = add nsw i32 %6895, 532487669
  %6897 = bitcast i32 %6896 to float
  %6898 = fadd fast float %6897, %6875
  %6899 = fmul fast float %6890, %6890
  %6900 = fmul fast float %6899, %6887
  %6901 = fmul fast float %6900, %6898
  %6902 = fdiv fast float 0x3FF0A00000000000, %6901
  %6903 = fmul fast float %6902, %6878
  %6904 = fmul fast float %5851, 0x3FF9999980000000
  %6905 = fsub fast float 5.000000e+00, %6904
  %6906 = call float @dx.op.unary.f32(i32 6, float %6867)  ; FAbs(value)
  %6907 = fsub fast float 1.000000e+00, %6906
  %6908 = fmul fast float %5851, 0x41D9660740000000
  %6909 = fadd fast float %6908, 0xC1EFBF8940000000
  %6910 = bitcast float %6907 to i32
  %6911 = sitofp i32 %6910 to float
  %6912 = fmul fast float %6911, %6905
  %6913 = fadd fast float %6909, %6912
  %6914 = fptosi float %6913 to i32
  %6915 = bitcast i32 %6914 to float
  %6916 = fsub fast float 1.000000e+00, %5580
  %6917 = fsub fast float 1.000000e+00, %5581
  %6918 = fsub fast float 1.000000e+00, %5591
  %6919 = fmul fast float %6915, %6916
  %6920 = fmul fast float %6915, %6917
  %6921 = fmul fast float %6915, %6918
  %6922 = fadd fast float %6919, %5580
  %6923 = fadd fast float %6920, %5581
  %6924 = fadd fast float %6921, %5591
  br i1 %5874, label %6925, label %6948

; <label>:6925                                    ; preds = %6854
  %6926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4629, float %6906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6927 = extractvalue %dx.types.ResRet.f32 %6926, 0
  %6928 = extractvalue %dx.types.ResRet.f32 %6926, 1
  %6929 = extractvalue %dx.types.ResRet.f32 %6926, 2
  %6930 = fadd fast float %6927, -5.000000e-01
  %6931 = fadd fast float %6928, -5.000000e-01
  %6932 = fadd fast float %6929, -5.000000e-01
  %6933 = fmul fast float %5580, 4.000000e+00
  %6934 = fmul fast float %6933, %6916
  %6935 = fmul fast float %6934, %6930
  %6936 = fmul fast float %5581, 4.000000e+00
  %6937 = fmul fast float %6936, %6917
  %6938 = fmul fast float %6937, %6931
  %6939 = fmul fast float %5591, 4.000000e+00
  %6940 = fmul fast float %6939, %6918
  %6941 = fmul fast float %6940, %6932
  %6942 = fadd fast float %6935, %6922
  %6943 = fadd fast float %6938, %6923
  %6944 = fadd fast float %6941, %6924
  %6945 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6946 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  %6947 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  br label %6948

; <label>:6948                                    ; preds = %6925, %6854
  %6949 = phi float [ %6945, %6925 ], [ %6922, %6854 ]
  %6950 = phi float [ %6946, %6925 ], [ %6923, %6854 ]
  %6951 = phi float [ %6947, %6925 ], [ %6924, %6854 ]
  %6952 = fmul fast float %6866, 9.843750e-01
  %6953 = fadd fast float %6952, 7.812500e-03
  %6954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %6953, float %5855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6955 = extractvalue %dx.types.ResRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.ResRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.ResRet.f32 %6954, 2
  %6958 = extractvalue %dx.types.ResRet.f32 %6954, 3
  %6959 = fsub fast float %6957, %6955
  %6960 = fsub fast float %6958, %6956
  %6961 = fmul fast float %6959, %5861
  %6962 = fmul fast float %6960, %5861
  %6963 = fadd fast float %6961, %6955
  %6964 = fadd fast float %6962, %6956
  %6965 = fmul fast float %6963, %5580
  %6966 = fmul fast float %6963, %5581
  %6967 = fmul fast float %6963, %5591
  %6968 = fadd fast float %6965, %6964
  %6969 = fadd fast float %6966, %6964
  %6970 = fadd fast float %6967, %6964
  br i1 %5874, label %6971, label %6994

; <label>:6971                                    ; preds = %6948
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4629, float %6866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = fadd fast float %6973, -5.000000e-01
  %6977 = fadd fast float %6974, -5.000000e-01
  %6978 = fadd fast float %6975, -5.000000e-01
  %6979 = fmul fast float %5580, 4.000000e+00
  %6980 = fmul fast float %6979, %6916
  %6981 = fmul fast float %6980, %6976
  %6982 = fmul fast float %5581, 4.000000e+00
  %6983 = fmul fast float %6982, %6917
  %6984 = fmul fast float %6983, %6977
  %6985 = fmul fast float %5591, 4.000000e+00
  %6986 = fmul fast float %6985, %6918
  %6987 = fmul fast float %6986, %6978
  %6988 = fadd fast float %6981, %6968
  %6989 = fadd fast float %6984, %6969
  %6990 = fadd fast float %6987, %6970
  %6991 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  %6992 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6993 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  br label %6994

; <label>:6994                                    ; preds = %6971, %6948
  %6995 = phi float [ %6991, %6971 ], [ %6968, %6948 ]
  %6996 = phi float [ %6992, %6971 ], [ %6969, %6948 ]
  %6997 = phi float [ %6993, %6971 ], [ %6970, %6948 ]
  %6998 = call float @dx.op.binary.f32(i32 35, float %6996, float %6997)  ; FMax(a,b)
  %6999 = call float @dx.op.binary.f32(i32 35, float %6995, float %6998)  ; FMax(a,b)
  %7000 = fsub fast float 1.000000e+00, %6999
  %7001 = call float @dx.op.binary.f32(i32 35, float %6875, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7002 = fdiv fast float %3978, %7001
  %7003 = fmul fast float %5929, %7002
  %7004 = fmul fast float %5931, %7002
  %7005 = fmul fast float %5933, %7002
  %7006 = call float @dx.op.unary.f32(i32 21, float %7003)  ; Exp(value)
  %7007 = call float @dx.op.unary.f32(i32 21, float %7004)  ; Exp(value)
  %7008 = call float @dx.op.unary.f32(i32 21, float %7005)  ; Exp(value)
  %7009 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7010 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  %7011 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7012 = select i1 %5926, float %7009, float 0.000000e+00
  %7013 = select i1 %5927, float %7010, float 0.000000e+00
  %7014 = select i1 %5928, float %7011, float 0.000000e+00
  %7015 = fsub fast float -0.000000e+00, %5583
  %7016 = fsub fast float -0.000000e+00, %5584
  %7017 = fsub fast float -0.000000e+00, %5585
  %7018 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6022, float %6023, float %7015, float %7016, float %7017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = fmul fast float %7019, 9.843750e-01
  %7021 = fadd fast float %7020, 7.812500e-03
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %7021, float %5855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = extractvalue %dx.types.ResRet.f32 %7022, 3
  %7027 = fsub fast float %7025, %7023
  %7028 = fsub fast float %7026, %7024
  %7029 = fmul fast float %7027, %5861
  %7030 = fmul fast float %7028, %5861
  %7031 = fadd fast float %7029, %7023
  %7032 = fadd fast float %7030, %7024
  %7033 = fmul fast float %7031, %5580
  %7034 = fmul fast float %7031, %5581
  %7035 = fmul fast float %7031, %5591
  %7036 = fadd fast float %7033, %7032
  %7037 = fadd fast float %7034, %7032
  %7038 = fadd fast float %7035, %7032
  br i1 %5874, label %7039, label %7062

; <label>:7039                                    ; preds = %6994
  %7040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4629, float %7019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.ResRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.ResRet.f32 %7040, 2
  %7044 = fadd fast float %7041, -5.000000e-01
  %7045 = fadd fast float %7042, -5.000000e-01
  %7046 = fadd fast float %7043, -5.000000e-01
  %7047 = fmul fast float %5580, 4.000000e+00
  %7048 = fmul fast float %7047, %6916
  %7049 = fmul fast float %7048, %7044
  %7050 = fmul fast float %5581, 4.000000e+00
  %7051 = fmul fast float %7050, %6917
  %7052 = fmul fast float %7051, %7045
  %7053 = fmul fast float %5591, 4.000000e+00
  %7054 = fmul fast float %7053, %6918
  %7055 = fmul fast float %7054, %7046
  %7056 = fadd fast float %7049, %7036
  %7057 = fadd fast float %7052, %7037
  %7058 = fadd fast float %7055, %7038
  %7059 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7060 = call float @dx.op.unary.f32(i32 7, float %7057)  ; Saturate(value)
  %7061 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  br label %7062

; <label>:7062                                    ; preds = %7039, %6994
  %7063 = phi float [ %7059, %7039 ], [ %7036, %6994 ]
  %7064 = phi float [ %7060, %7039 ], [ %7037, %6994 ]
  %7065 = phi float [ %7061, %7039 ], [ %7038, %6994 ]
  %7066 = call float @dx.op.binary.f32(i32 35, float %7064, float %7065)  ; FMax(a,b)
  %7067 = call float @dx.op.binary.f32(i32 35, float %7063, float %7066)  ; FMax(a,b)
  %7068 = fsub fast float 1.000000e+00, %7067
  %7069 = fmul fast float %5989, %5994
  %7070 = fadd fast float %5996, %7069
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = fsub fast float %6021, %5599
  %7073 = fsub fast float %6022, %5600
  %7074 = fsub fast float %6023, %5601
  %7075 = call float @dx.op.dot3.f32(i32 55, float %7072, float %7073, float %7074, float %7072, float %7073, float %7074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7076 = call float @dx.op.unary.f32(i32 25, float %7075)  ; Rsqrt(value)
  %7077 = fmul fast float %7076, %7072
  %7078 = fmul fast float %7076, %7073
  %7079 = fmul fast float %7076, %7074
  %7080 = call float @dx.op.dot3.f32(i32 55, float %7015, float %7016, float %7017, float %7077, float %7078, float %7079)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = fmul fast float %7080, %7080
  %7082 = call float @dx.op.unary.f32(i32 6, float %7019)  ; FAbs(value)
  %7083 = call float @dx.op.binary.f32(i32 35, float %7071, float 0x3F847AE140000000)  ; FMax(a,b)
  %7084 = fmul fast float %7083, %7083
  %7085 = fmul fast float %7084, %7084
  %7086 = fsub fast float 1.000000e+00, %7085
  %7087 = fmul fast float %6880, %7086
  %7088 = fadd fast float %7087, %7085
  %7089 = bitcast float %7088 to i32
  %7090 = ashr i32 %7089, 1
  %7091 = add nsw i32 %7090, 532487669
  %7092 = bitcast i32 %7091 to float
  %7093 = fadd fast float %7092, %5593
  %7094 = fmul fast float %7085, %7081
  %7095 = fsub fast float 1.000000e+00, %7081
  %7096 = fadd fast float %7095, %7094
  %7097 = fmul fast float %7082, %7082
  %7098 = fmul fast float %7097, %7086
  %7099 = fadd fast float %7098, %7085
  %7100 = bitcast float %7099 to i32
  %7101 = ashr i32 %7100, 1
  %7102 = add nsw i32 %7101, 532487669
  %7103 = bitcast i32 %7102 to float
  %7104 = fadd fast float %7103, %7082
  %7105 = fmul fast float %7096, %7096
  %7106 = fmul fast float %7105, %7093
  %7107 = fmul fast float %7106, %7104
  %7108 = fdiv fast float 0x3FF0A00000000000, %7107
  %7109 = fmul fast float %7108, %7085
  %7110 = fmul fast float %7019, %7012
  %7111 = fmul fast float %7019, %7013
  %7112 = fmul fast float %7019, %7014
  %7113 = fmul fast float %7110, %7068
  %7114 = fmul fast float %7113, %7109
  %7115 = fmul fast float %7111, %7068
  %7116 = fmul fast float %7115, %7109
  %7117 = fmul fast float %7112, %7068
  %7118 = fmul fast float %7117, %7109
  %7119 = fmul fast float %6949, %6903
  %7120 = fmul fast float %6950, %6903
  %7121 = fmul fast float %6951, %6903
  %7122 = fsub fast float 1.000000e+00, %6867
  %7123 = bitcast float %7122 to i32
  %7124 = sitofp i32 %7123 to float
  %7125 = fmul fast float %7124, 5.000000e+00
  %7126 = fadd fast float %7125, 0xC1EFBF8940000000
  %7127 = fptosi float %7126 to i32
  %7128 = bitcast i32 %7127 to float
  %7129 = fmul fast float %7128, %4630
  %7130 = fmul fast float %7000, %7129
  %7131 = fmul fast float %7130, %5921
  %7132 = fmul fast float %7130, %5922
  %7133 = fmul fast float %7130, %5923
  %7134 = fadd fast float %7131, %7119
  %7135 = fadd fast float %7132, %7120
  %7136 = fadd fast float %7133, %7121
  %7137 = fmul fast float %7134, %6872
  %7138 = fmul fast float %7135, %6872
  %7139 = fmul fast float %7136, %6872
  %7140 = fmul fast float %6872, %6855
  %7141 = fmul fast float %7140, %7000
  %7142 = fmul fast float %6872, %6856
  %7143 = fmul fast float %7142, %7000
  %7144 = fmul fast float %6872, %6857
  %7145 = fmul fast float %7144, %7000
  %7146 = fadd fast float %7137, %7114
  %7147 = fadd fast float %7138, %7116
  %7148 = fadd fast float %7139, %7118
  %7149 = fmul fast float %7146, %6855
  %7150 = fmul fast float %7147, %6856
  %7151 = fmul fast float %7148, %6857
  %7152 = fadd fast float %7141, %6011
  %7153 = fmul fast float %7152, %4626
  %7154 = fadd fast float %7143, %6013
  %7155 = fmul fast float %7154, %4626
  %7156 = fadd fast float %7145, %6015
  %7157 = fmul fast float %7156, %4626
  %7158 = fadd fast float %7149, %5974
  %7159 = fmul fast float %7158, %4626
  %7160 = fadd fast float %7150, %5977
  %7161 = fmul fast float %7160, %4626
  %7162 = fadd fast float %7151, %5980
  %7163 = fmul fast float %7162, %4626
  br label %7164

; <label>:7164                                    ; preds = %7062, %6849, %5901
  %7165 = phi float [ %5975, %5901 ], [ %5975, %6849 ], [ %7159, %7062 ]
  %7166 = phi float [ %5978, %5901 ], [ %5978, %6849 ], [ %7161, %7062 ]
  %7167 = phi float [ %5981, %5901 ], [ %5981, %6849 ], [ %7163, %7062 ]
  %7168 = phi float [ %6012, %5901 ], [ %6012, %6849 ], [ %7153, %7062 ]
  %7169 = phi float [ %6014, %5901 ], [ %6014, %6849 ], [ %7155, %7062 ]
  %7170 = phi float [ %6016, %5901 ], [ %6016, %6849 ], [ %7157, %7062 ]
  %7171 = fmul fast float %4626, %5950
  %7172 = fsub fast float -0.000000e+00, %7171
  %7173 = fmul fast float %4626, %5951
  %7174 = fsub fast float -0.000000e+00, %7173
  %7175 = fmul fast float %4626, %5952
  %7176 = fsub fast float -0.000000e+00, %7175
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 0
  %7179 = fmul fast float %7178, %5956
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7182 = fsub fast float 1.000000e+00, %4633
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fadd fast float %7170, %4632
  %7185 = fmul fast float %7184, %4633
  %7186 = fmul fast float %7183, %7181
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 3
  %7189 = fmul fast float %7168, %5586
  %7190 = fmul fast float %7169, %5587
  %7191 = fmul fast float %7170, %5588
  %7192 = fcmp fast ogt float %88, %198
  %7193 = and i1 %7192, %4701
  %7194 = or i1 %4780, %7193
  %7195 = icmp eq i32 %4700, 2
  %7196 = fcmp fast ole float %88, %198
  %7197 = and i1 %7196, %7195
  %7198 = or i1 %7197, %7194
  br i1 %7193, label %7199, label %7456

; <label>:7199                                    ; preds = %7164
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 2
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 3
  %7203 = fmul fast float %7201, %97
  %7204 = fmul fast float %7202, %98
  %7205 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7206 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7205, float %7206, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.ResRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.ResRet.f32 %7207, 2
  %7211 = extractvalue %dx.types.ResRet.f32 %7207, 3
  %7212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7205, float %7206, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.ResRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.ResRet.f32 %7212, 2
  %7216 = extractvalue %dx.types.ResRet.f32 %7212, 3
  %7217 = call float @dx.op.binary.f32(i32 35, float %7209, float %7210)  ; FMax(a,b)
  %7218 = call float @dx.op.binary.f32(i32 35, float %7208, float %7217)  ; FMax(a,b)
  %7219 = call float @dx.op.binary.f32(i32 35, float %7218, float %7211)  ; FMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 36, float %7214, float %7215)  ; FMin(a,b)
  %7221 = call float @dx.op.binary.f32(i32 36, float %7213, float %7220)  ; FMin(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7221, float %7216)  ; FMin(a,b)
  %7223 = fmul fast float %7219, 2.550000e+02
  %7224 = fadd fast float %7223, 0x3F70101020000000
  %7225 = fptoui float %7224 to i32
  %7226 = fmul fast float %7222, 2.550000e+02
  %7227 = fadd fast float %7226, 0x3F70101020000000
  %7228 = fptoui float %7227 to i32
  %7229 = icmp ult i32 %7225, %7228
  br i1 %7229, label %7230, label %7398

; <label>:7230                                    ; preds = %7199
  %7231 = fcmp fast ogt float %87, 9.843750e-01
  %7232 = fadd fast float %88, -4.000000e+00
  %7233 = select i1 %7231, float -4.000000e+00, float %7232
  %7234 = call float @dx.op.binary.f32(i32 35, float %7233, float 0.000000e+00)  ; FMax(a,b)
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 0
  %7237 = fadd fast float %7236, %7234
  %7238 = extractvalue %dx.types.CBufRet.f32 %7235, 2
  %7239 = fmul fast float %7237, %7238
  %7240 = call float @dx.op.unary.f32(i32 23, float %7239)  ; Log(value)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7235, 3
  %7242 = fmul fast float %7241, %7240
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 2
  %7245 = fmul fast float %7242, %7244
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = uitofp i32 %7225 to float
  %7248 = uitofp i32 %7228 to float
  %7249 = fadd fast float %7247, 5.000000e-01
  %7250 = fadd fast float %7248, 5.000000e-01
  %7251 = fmul fast float %7244, %7249
  %7252 = fmul fast float %7244, %7250
  %7253 = fadd fast float %7251, 0x3F0FFB4800000000
  %7254 = fadd fast float %7252, 0xBF0FFB4800000000
  %7255 = call float @dx.op.binary.f32(i32 35, float %7246, float %7253)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 36, float %7255, float %7254)  ; FMin(a,b)
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7260 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7261 = fmul fast float %7258, %7256
  %7262 = fadd fast float %7260, %7261
  %7263 = fadd fast float %7260, %7259
  %7264 = fsub fast float %7258, %7259
  %7265 = fadd fast float %7264, %7260
  %7266 = call float @dx.op.binary.f32(i32 35, float %7262, float %7263)  ; FMax(a,b)
  %7267 = call float @dx.op.binary.f32(i32 36, float %7266, float %7265)  ; FMin(a,b)
  %7268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %7205, float %7206, float %7267, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.ResRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.ResRet.f32 %7268, 2
  %7272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.i32 %7272, 0
  %7274 = extractvalue %dx.types.CBufRet.i32 %7272, 1
  %7275 = uitofp i32 %7273 to float
  %7276 = uitofp i32 %7274 to float
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7280 = fmul fast float %7275, %7205
  %7281 = fmul fast float %7276, %7206
  %7282 = fadd fast float %7280, -5.000000e-01
  %7283 = fadd fast float %7281, -5.000000e-01
  %7284 = call float @dx.op.unary.f32(i32 22, float %7282)  ; Frc(value)
  %7285 = call float @dx.op.unary.f32(i32 22, float %7283)  ; Frc(value)
  %7286 = fmul fast float %7284, %7284
  %7287 = fmul fast float %7286, %7284
  %7288 = fsub fast float 3.000000e+00, %7284
  %7289 = fmul fast float %7286, %7288
  %7290 = fmul fast float %7284, 3.000000e+00
  %7291 = fmul fast float %7287, 3.000000e+00
  %7292 = fmul fast float %7286, 6.000000e+00
  %7293 = fsub fast float %7291, %7292
  %7294 = fadd fast float %7293, 4.000000e+00
  %7295 = fmul fast float %7294, 0x3FC5555560000000
  %7296 = fmul fast float %7287, -3.000000e+00
  %7297 = fadd fast float %7286, %7284
  %7298 = fmul fast float %7297, 3.000000e+00
  %7299 = fadd fast float %7296, 1.000000e+00
  %7300 = fadd fast float %7299, %7298
  %7301 = fmul fast float %7287, 0x3FC5555560000000
  %7302 = fmul fast float %7285, %7285
  %7303 = fmul fast float %7302, %7285
  %7304 = fsub fast float 3.000000e+00, %7285
  %7305 = fmul fast float %7302, %7304
  %7306 = fmul fast float %7285, 3.000000e+00
  %7307 = fmul fast float %7303, 3.000000e+00
  %7308 = fmul fast float %7302, 6.000000e+00
  %7309 = fsub fast float %7307, %7308
  %7310 = fadd fast float %7309, 4.000000e+00
  %7311 = fmul fast float %7310, 0x3FC5555560000000
  %7312 = fmul fast float %7303, -3.000000e+00
  %7313 = fadd fast float %7302, %7285
  %7314 = fmul fast float %7313, 3.000000e+00
  %7315 = fadd fast float %7312, 1.000000e+00
  %7316 = fadd fast float %7315, %7314
  %7317 = fmul fast float %7303, 0x3FC5555560000000
  %7318 = fadd fast float %7284, 1.000000e+00
  %7319 = fsub fast float 1.000000e+00, %7290
  %7320 = fadd fast float %7319, %7289
  %7321 = fadd fast float %7320, %7294
  %7322 = fmul fast float %7321, 0x3FC5555560000000
  %7323 = fdiv fast float %7295, %7322
  %7324 = fsub fast float %7318, %7323
  %7325 = fsub fast float 1.000000e+00, %7284
  %7326 = fadd fast float %7300, %7287
  %7327 = fmul fast float %7326, 0x3FC5555560000000
  %7328 = fdiv fast float %7301, %7327
  %7329 = fadd fast float %7325, %7328
  %7330 = fadd fast float %7285, 1.000000e+00
  %7331 = fsub fast float 1.000000e+00, %7306
  %7332 = fadd fast float %7331, %7305
  %7333 = fadd fast float %7332, %7310
  %7334 = fmul fast float %7333, 0x3FC5555560000000
  %7335 = fdiv fast float %7311, %7334
  %7336 = fsub fast float %7330, %7335
  %7337 = fsub fast float 1.000000e+00, %7285
  %7338 = fadd fast float %7316, %7303
  %7339 = fmul fast float %7338, 0x3FC5555560000000
  %7340 = fdiv fast float %7317, %7339
  %7341 = fadd fast float %7340, %7337
  %7342 = fmul fast float %7324, %7278
  %7343 = fsub fast float %7205, %7342
  %7344 = fmul fast float %7329, %7278
  %7345 = fadd fast float %7344, %7205
  %7346 = fmul fast float %7341, %7279
  %7347 = fadd fast float %7346, %7206
  %7348 = fmul fast float %7336, %7279
  %7349 = fsub fast float %7206, %7348
  %7350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7343, float %7349, float %7267, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = extractvalue %dx.types.ResRet.f32 %7350, 1
  %7353 = extractvalue %dx.types.ResRet.f32 %7350, 2
  %7354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7345, float %7349, float %7267, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.ResRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.ResRet.f32 %7354, 2
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7343, float %7347, float %7267, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.ResRet.f32 %7358, 2
  %7362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7345, float %7347, float %7267, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.ResRet.f32 %7362, 2
  %7366 = fsub fast float %7359, %7351
  %7367 = fsub fast float %7360, %7352
  %7368 = fsub fast float %7361, %7353
  %7369 = fmul fast float %7366, %7339
  %7370 = fmul fast float %7367, %7339
  %7371 = fmul fast float %7368, %7339
  %7372 = fadd fast float %7369, %7351
  %7373 = fadd fast float %7370, %7352
  %7374 = fadd fast float %7371, %7353
  %7375 = fsub fast float %7363, %7355
  %7376 = fsub fast float %7364, %7356
  %7377 = fsub fast float %7365, %7357
  %7378 = fmul fast float %7375, %7339
  %7379 = fmul fast float %7376, %7339
  %7380 = fmul fast float %7377, %7339
  %7381 = fsub fast float %7355, %7372
  %7382 = fadd fast float %7381, %7378
  %7383 = fsub fast float %7356, %7373
  %7384 = fadd fast float %7383, %7379
  %7385 = fsub fast float %7357, %7374
  %7386 = fadd fast float %7385, %7380
  %7387 = fmul fast float %7382, %7327
  %7388 = fmul fast float %7384, %7327
  %7389 = fmul fast float %7386, %7327
  %7390 = fadd fast float %7387, %7372
  %7391 = fadd fast float %7388, %7373
  %7392 = fadd fast float %7389, %7374
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7395 = fmul fast float %7390, %7394
  %7396 = fmul fast float %7391, %7394
  %7397 = fmul fast float %7392, %7394
  br label %7398

; <label>:7398                                    ; preds = %7230, %7199
  %7399 = phi float [ %7269, %7230 ], [ 1.000000e+00, %7199 ]
  %7400 = phi float [ %7270, %7230 ], [ 1.000000e+00, %7199 ]
  %7401 = phi float [ %7271, %7230 ], [ 1.000000e+00, %7199 ]
  %7402 = phi float [ %7395, %7230 ], [ 0.000000e+00, %7199 ]
  %7403 = phi float [ %7396, %7230 ], [ 0.000000e+00, %7199 ]
  %7404 = phi float [ %7397, %7230 ], [ 0.000000e+00, %7199 ]
  %7405 = fmul fast float %7402, %7172
  %7406 = fmul fast float %7403, %7174
  %7407 = fmul fast float %7404, %7176
  %7408 = call float @dx.op.dot3.f32(i32 55, float %7399, float %7400, float %7401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7409 = call float @dx.op.dot3.f32(i32 55, float %7405, float %7406, float %7407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7410 = select i1 %237, float %7408, float %7399
  %7411 = select i1 %237, float %7408, float %7400
  %7412 = select i1 %237, float 1.000000e+00, float %7401
  %7413 = select i1 %237, float %7409, float %7405
  %7414 = select i1 %237, float 0.000000e+00, float %7406
  %7415 = select i1 %237, float 0.000000e+00, float %7407
  %7416 = fmul fast float %7410, %7189
  %7417 = fmul fast float %7411, %7190
  %7418 = fmul fast float %7412, %7191
  %7419 = fadd fast float %7416, %7413
  %7420 = fadd fast float %7417, %7414
  %7421 = fadd fast float %7415, %7418
  %7422 = fmul fast float %7410, %7165
  %7423 = fmul fast float %7411, %7166
  %7424 = fmul fast float %7412, %7167
  %7425 = fmul fast float %125, %7201
  %7426 = fmul fast float %127, %7202
  %7427 = fsub fast float 1.000000e+00, %7425
  %7428 = fsub fast float 1.000000e+00, %7426
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.CBufRet.f32 %7429, 2
  %7433 = fmul fast float %7427, %7430
  %7434 = fmul fast float %7427, %7431
  %7435 = fmul fast float %7427, %7432
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7440 = fmul fast float %7428, %7437
  %7441 = fmul fast float %7428, %7438
  %7442 = fmul fast float %7428, %7439
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7447 = fadd fast float %7440, %7444
  %7448 = fadd fast float %7447, %7433
  %7449 = fadd fast float %7441, %7445
  %7450 = fadd fast float %7449, %7434
  %7451 = fadd fast float %7442, %7446
  %7452 = fadd fast float %7451, %7435
  %7453 = fmul fast float %7448, %198
  %7454 = fmul fast float %7450, %198
  %7455 = fmul fast float %7452, %198
  br label %7456

; <label>:7456                                    ; preds = %7398, %7164
  %7457 = phi float [ %7453, %7398 ], [ %176, %7164 ]
  %7458 = phi float [ %7454, %7398 ], [ %177, %7164 ]
  %7459 = phi float [ %7455, %7398 ], [ %178, %7164 ]
  %7460 = phi float [ %198, %7398 ], [ %88, %7164 ]
  %7461 = phi float [ %7419, %7398 ], [ %7189, %7164 ]
  %7462 = phi float [ %7420, %7398 ], [ %7190, %7164 ]
  %7463 = phi float [ %7421, %7398 ], [ %7191, %7164 ]
  %7464 = phi float [ %7422, %7398 ], [ %7165, %7164 ]
  %7465 = phi float [ %7423, %7398 ], [ %7166, %7164 ]
  %7466 = phi float [ %7424, %7398 ], [ %7167, %7164 ]
  %7467 = phi float [ %7399, %7398 ], [ 1.000000e+00, %7164 ]
  br i1 %7198, label %8622, label %7468

; <label>:7468                                    ; preds = %7456
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7473 = extractvalue %dx.types.CBufRet.f32 %7469, 3
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.CBufRet.f32 %7474, 2
  %7478 = extractvalue %dx.types.CBufRet.f32 %7474, 3
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7483 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7487 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7488 = extractvalue %dx.types.CBufRet.f32 %7484, 3
  %7489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7490 = extractvalue %dx.types.CBufRet.f32 %7489, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7495 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7496 = fcmp fast olt float %7495, -5.000000e-01
  %7497 = call float @dx.op.dot3.f32(i32 55, float %7457, float %7458, float %7459, float %7457, float %7458, float %7459)  ; Dot3(ax,ay,az,bx,by,bz)
  %7498 = call float @dx.op.unary.f32(i32 25, float %7497)  ; Rsqrt(value)
  %7499 = fmul fast float %7498, %7497
  %7500 = fmul fast float %7498, %7457
  %7501 = fmul fast float %7498, %7458
  %7502 = fmul fast float %7498, %7459
  %7503 = fadd fast float %7499, %7473
  %7504 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7502, float %7470, float %7471, float %7472)  ; Dot3(ax,ay,az,bx,by,bz)
  %7505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.i32 %7505, 1
  %7507 = and i32 %7506, 1
  %7508 = icmp ne i32 %7507, 0
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7511 = fcmp fast ogt float %7510, 0.000000e+00
  %7512 = and i1 %7508, %7511
  br i1 %7512, label %7513, label %7919, !dx.controlflow.hints !110

; <label>:7513                                    ; preds = %7468
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 3
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7519 = extractvalue %dx.types.CBufRet.f32 %7518, 2
  %7520 = fsub fast float %7517, %7519
  %7521 = and i32 %7506, 2
  %7522 = extractvalue %dx.types.CBufRet.i32 %7505, 0
  %7523 = call i32 @dx.op.binary.i32(i32 40, i32 %7522, i32 3)  ; UMin(a,b)
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.CBufRet.f32 %7524, 1
  %7527 = extractvalue %dx.types.CBufRet.f32 %7518, 0
  %7528 = extractvalue %dx.types.CBufRet.f32 %7518, 1
  %7529 = fsub fast float %7525, %7527
  %7530 = fsub fast float %7526, %7528
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 0
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  %7534 = fsub fast float -0.000000e+00, %7529
  %7535 = fsub fast float -0.000000e+00, %7530
  %7536 = call float @dx.op.dot2.f32(i32 54, float %7500, float %7501, float %7500, float %7501)  ; Dot2(ax,ay,bx,by)
  %7537 = call float @dx.op.dot2.f32(i32 54, float %7500, float %7501, float %7534, float %7535)  ; Dot2(ax,ay,bx,by)
  %7538 = fmul fast float %7537, 2.000000e+00
  %7539 = call float @dx.op.dot2.f32(i32 54, float %7534, float %7535, float %7534, float %7535)  ; Dot2(ax,ay,bx,by)
  %7540 = fmul fast float %7532, %7532
  %7541 = fsub fast float %7539, %7540
  %7542 = fmul fast float %7538, %7538
  %7543 = fmul fast float %7536, 4.000000e+00
  %7544 = fmul fast float %7543, %7541
  %7545 = fsub fast float %7542, %7544
  %7546 = fcmp fast ogt float %7545, 0.000000e+00
  br i1 %7546, label %7547, label %7562

; <label>:7547                                    ; preds = %7513
  %7548 = fcmp fast ogt float %7538, 0.000000e+00
  %7549 = call float @dx.op.unary.f32(i32 24, float %7545)  ; Sqrt(value)
  %7550 = fsub fast float -0.000000e+00, %7549
  %7551 = select i1 %7548, float %7549, float %7550
  %7552 = fadd fast float %7551, %7538
  %7553 = fmul float %7552, -5.000000e-01
  %7554 = fdiv fast float %7553, %7536
  %7555 = call float @dx.op.binary.f32(i32 35, float %7554, float 0.000000e+00)  ; FMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 36, float %7499, float %7555)  ; FMin(a,b)
  %7557 = fdiv fast float %7541, %7553
  %7558 = call float @dx.op.binary.f32(i32 35, float %7557, float 0.000000e+00)  ; FMax(a,b)
  %7559 = call float @dx.op.binary.f32(i32 36, float %7499, float %7558)  ; FMin(a,b)
  %7560 = call float @dx.op.binary.f32(i32 36, float %7556, float %7559)  ; FMin(a,b)
  %7561 = call float @dx.op.binary.f32(i32 35, float %7556, float %7559)  ; FMax(a,b)
  br label %7562

; <label>:7562                                    ; preds = %7547, %7513
  %7563 = phi float [ %7561, %7547 ], [ -1.000000e+00, %7513 ]
  %7564 = phi float [ %7560, %7547 ], [ -1.000000e+00, %7513 ]
  %7565 = phi i1 [ true, %7547 ], [ false, %7513 ]
  %7566 = and i1 %7533, %7565
  br i1 %7566, label %7567, label %7569

; <label>:7567                                    ; preds = %7562
  %7568 = fcmp fast oeq float %7564, %7563
  br i1 %7568, label %7872, label %7570

; <label>:7569                                    ; preds = %7562
  br i1 %7533, label %7872, label %7570

; <label>:7570                                    ; preds = %7569, %7567
  %7571 = phi float [ %7499, %7569 ], [ %7563, %7567 ]
  %7572 = phi float [ 0.000000e+00, %7569 ], [ %7564, %7567 ]
  %7573 = icmp ne i32 %7521, 0
  %7574 = fmul fast float %7571, %7502
  %7575 = fadd fast float %7574, %7515
  %7576 = fmul fast float %7575, %7571
  %7577 = select i1 %7573, float 0.000000e+00, float %7576
  %7578 = fcmp fast oeq float %7502, 0.000000e+00
  %7579 = fdiv fast float %7520, %7502
  %7580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7579)  ; FMax(a,b)
  %7581 = select i1 %7578, float %7571, float %7580
  %7582 = call float @dx.op.binary.f32(i32 36, float %7571, float %7581)  ; FMin(a,b)
  %7583 = fcmp fast ogt float %7502, 0.000000e+00
  %7584 = fcmp fast olt float %7520, 0.000000e+00
  br i1 %7583, label %7585, label %7642

; <label>:7585                                    ; preds = %7570
  %7586 = icmp eq i32 %7521, 0
  br i1 %7584, label %7587, label %7631

; <label>:7587                                    ; preds = %7585
  %7588 = select i1 %7586, float %7571, float 0.000000e+00
  %7589 = fsub fast float -0.000000e+00, %7588
  %7590 = call float @dx.op.unary.f32(i32 6, float %7589)  ; FAbs(value)
  %7591 = fmul fast float %7588, %7502
  %7592 = fadd fast float %7591, %7515
  %7593 = fmul fast float %7590, %7592
  %7594 = fsub fast float %7577, %7593
  %7595 = fsub fast float %7571, %7590
  %7596 = select i1 %7586, float %7595, float 0.000000e+00
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.CBufRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7605 = extractvalue %dx.types.CBufRet.f32 %7601, 3
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 3
  %7608 = call float @dx.op.binary.f32(i32 36, float %7594, float %7607)  ; FMin(a,b)
  %7609 = fmul fast float %7605, %7596
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fsub fast float %7602, %7598
  %7612 = fsub fast float %7603, %7599
  %7613 = fsub fast float %7604, %7600
  %7614 = fmul fast float %7610, %7611
  %7615 = fmul fast float %7610, %7612
  %7616 = fmul fast float %7610, %7613
  %7617 = fadd fast float %7614, %7598
  %7618 = fadd fast float %7615, %7599
  %7619 = fadd fast float %7616, %7600
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = fadd fast float %7622, %7621
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7627 = fadd fast float %7626, %7625
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fmul fast float %7624, %7608
  %7630 = fmul fast float %7629, %7628
  br label %7872

; <label>:7631                                    ; preds = %7585
  br i1 %7586, label %7632, label %7653

; <label>:7632                                    ; preds = %7631
  %7633 = call float @dx.op.binary.f32(i32 36, float %7582, float %7572)  ; FMin(a,b)
  %7634 = fsub fast float %7582, %7633
  %7635 = fsub fast float %7634, %7571
  %7636 = call float @dx.op.unary.f32(i32 6, float %7635)  ; FAbs(value)
  %7637 = fadd fast float %7634, %7571
  %7638 = fmul fast float %7637, %7502
  %7639 = fadd fast float %7638, %7515
  %7640 = fmul fast float %7639, %7636
  %7641 = fsub fast float %7577, %7640
  br label %7653

; <label>:7642                                    ; preds = %7570
  br i1 %7584, label %7643, label %7653

; <label>:7643                                    ; preds = %7642
  %7644 = call float @dx.op.binary.f32(i32 35, float %7572, float %7582)  ; FMax(a,b)
  %7645 = icmp eq i32 %7521, 0
  %7646 = select i1 %7645, float %7582, float 0.000000e+00
  %7647 = fsub fast float -0.000000e+00, %7646
  %7648 = call float @dx.op.unary.f32(i32 6, float %7647)  ; FAbs(value)
  %7649 = fmul fast float %7646, %7502
  %7650 = fadd fast float %7649, %7515
  %7651 = fmul fast float %7648, %7650
  %7652 = fsub fast float %7577, %7651
  br label %7653

; <label>:7653                                    ; preds = %7643, %7642, %7632, %7631
  %7654 = phi float [ %7572, %7631 ], [ %7572, %7632 ], [ %7644, %7643 ], [ %7572, %7642 ]
  %7655 = phi float [ 0.000000e+00, %7631 ], [ %7636, %7632 ], [ %7648, %7643 ], [ 0.000000e+00, %7642 ]
  %7656 = phi float [ %7577, %7631 ], [ %7641, %7632 ], [ %7652, %7643 ], [ %7577, %7642 ]
  %7657 = phi float [ %7582, %7631 ], [ %7582, %7632 ], [ %7571, %7643 ], [ %7571, %7642 ]
  %7658 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7658, align 4, !tbaa !111, !noalias !113
  %7659 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7659, align 4, !tbaa !111, !noalias !113
  %7660 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7660, align 4, !tbaa !111, !noalias !113
  %7661 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7661, align 4, !tbaa !111, !noalias !113
  %7662 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7662, align 4, !tbaa !111, !noalias !113
  %7663 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7663, align 4, !tbaa !111, !noalias !113
  %7664 = icmp sgt i32 %7523, 0
  br i1 %7664, label %7665, label %7726

; <label>:7665                                    ; preds = %7653
  br label %7666

; <label>:7666                                    ; preds = %7715, %7665
  %7667 = phi i32 [ %7716, %7715 ], [ 0, %7665 ]
  %7668 = phi i32 [ %7717, %7715 ], [ 0, %7665 ]
  %7669 = add nuw i32 %7668, 171
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %7669)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7676 = fsub fast float %7671, %7674
  %7677 = fsub fast float %7672, %7675
  %7678 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7679 = fsub fast float -0.000000e+00, %7676
  %7680 = fsub fast float -0.000000e+00, %7677
  %7681 = call float @dx.op.dot2.f32(i32 54, float %7500, float %7501, float %7679, float %7680)  ; Dot2(ax,ay,bx,by)
  %7682 = fmul fast float %7681, 2.000000e+00
  %7683 = call float @dx.op.dot2.f32(i32 54, float %7679, float %7680, float %7679, float %7680)  ; Dot2(ax,ay,bx,by)
  %7684 = fmul fast float %7678, %7678
  %7685 = fsub fast float %7683, %7684
  %7686 = fmul fast float %7682, %7682
  %7687 = fmul fast float %7543, %7685
  %7688 = fsub fast float %7686, %7687
  %7689 = fcmp fast ogt float %7688, 0.000000e+00
  br i1 %7689, label %7690, label %7705

; <label>:7690                                    ; preds = %7666
  %7691 = fcmp fast ogt float %7682, 0.000000e+00
  %7692 = call float @dx.op.unary.f32(i32 24, float %7688)  ; Sqrt(value)
  %7693 = fsub fast float -0.000000e+00, %7692
  %7694 = select i1 %7691, float %7692, float %7693
  %7695 = fadd fast float %7694, %7682
  %7696 = fmul float %7695, -5.000000e-01
  %7697 = fdiv fast float %7696, %7536
  %7698 = call float @dx.op.binary.f32(i32 35, float %7697, float 0.000000e+00)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7571, float %7698)  ; FMin(a,b)
  %7700 = fdiv fast float %7685, %7696
  %7701 = call float @dx.op.binary.f32(i32 35, float %7700, float 0.000000e+00)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 36, float %7571, float %7701)  ; FMin(a,b)
  %7703 = call float @dx.op.binary.f32(i32 36, float %7699, float %7702)  ; FMin(a,b)
  %7704 = call float @dx.op.binary.f32(i32 35, float %7699, float %7702)  ; FMax(a,b)
  br label %7705

; <label>:7705                                    ; preds = %7690, %7666
  %7706 = phi float [ %7704, %7690 ], [ -1.000000e+00, %7666 ]
  %7707 = phi float [ %7703, %7690 ], [ -1.000000e+00, %7666 ]
  %7708 = phi i1 [ true, %7690 ], [ false, %7666 ]
  br i1 %7708, label %7709, label %7715

; <label>:7709                                    ; preds = %7705
  %7710 = call float @dx.op.binary.f32(i32 35, float %7654, float %7707)  ; FMax(a,b)
  %7711 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7668
  store float %7710, float* %7711, align 4, !tbaa !111, !noalias !113
  %7712 = call float @dx.op.binary.f32(i32 35, float %7654, float %7706)  ; FMax(a,b)
  %7713 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7668
  store float %7712, float* %7713, align 4, !tbaa !111, !noalias !113
  %7714 = add nsw i32 %7667, 1
  br label %7715

; <label>:7715                                    ; preds = %7709, %7705
  %7716 = phi i32 [ %7714, %7709 ], [ %7667, %7705 ]
  %7717 = add nuw nsw i32 %7668, 1
  %7718 = icmp eq i32 %7717, %7523
  br i1 %7718, label %7719, label %7666

; <label>:7719                                    ; preds = %7715
  %7720 = load float, float* %7660, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7721 = load float, float* %7659, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  %7722 = load float, float* %7658, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  %7723 = load float, float* %7663, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7724 = load float, float* %7662, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %7725 = load float, float* %7661, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  br label %7726

; <label>:7726                                    ; preds = %7719, %7653
  %7727 = phi float [ -1.000000e+00, %7653 ], [ %7725, %7719 ]
  %7728 = phi float [ -1.000000e+00, %7653 ], [ %7724, %7719 ]
  %7729 = phi float [ -1.000000e+00, %7653 ], [ %7723, %7719 ]
  %7730 = phi float [ -1.000000e+00, %7653 ], [ %7722, %7719 ]
  %7731 = phi float [ -1.000000e+00, %7653 ], [ %7721, %7719 ]
  %7732 = phi float [ -1.000000e+00, %7653 ], [ %7720, %7719 ]
  %7733 = phi i32 [ 0, %7653 ], [ %7716, %7719 ]
  %7734 = call float @dx.op.binary.f32(i32 36, float %7731, float %7732)  ; FMin(a,b)
  %7735 = call float @dx.op.binary.f32(i32 36, float %7730, float %7734)  ; FMin(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7730, float %7731)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 36, float %7736, float %7732)  ; FMin(a,b)
  %7738 = call float @dx.op.binary.f32(i32 36, float %7730, float %7731)  ; FMin(a,b)
  %7739 = call float @dx.op.binary.f32(i32 35, float %7738, float %7737)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 35, float %7731, float %7732)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float %7730, float %7740)  ; FMax(a,b)
  store float %7735, float* %7658, align 4, !tbaa !111, !alias.scope !137, !noalias !138
  store float %7739, float* %7659, align 4, !tbaa !111, !alias.scope !135, !noalias !136
  store float %7741, float* %7660, align 4, !tbaa !111, !alias.scope !129, !noalias !132
  %7742 = call float @dx.op.binary.f32(i32 36, float %7728, float %7729)  ; FMin(a,b)
  %7743 = call float @dx.op.binary.f32(i32 36, float %7727, float %7742)  ; FMin(a,b)
  %7744 = call float @dx.op.binary.f32(i32 35, float %7727, float %7728)  ; FMax(a,b)
  %7745 = call float @dx.op.binary.f32(i32 36, float %7744, float %7729)  ; FMin(a,b)
  %7746 = call float @dx.op.binary.f32(i32 36, float %7727, float %7728)  ; FMin(a,b)
  %7747 = call float @dx.op.binary.f32(i32 35, float %7746, float %7745)  ; FMax(a,b)
  %7748 = call float @dx.op.binary.f32(i32 35, float %7728, float %7729)  ; FMax(a,b)
  %7749 = call float @dx.op.binary.f32(i32 35, float %7727, float %7748)  ; FMax(a,b)
  store float %7743, float* %7661, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %7747, float* %7662, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %7749, float* %7663, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %7750 = sub nsw i32 3, %7733
  %7751 = icmp sgt i32 %7750, 2
  br i1 %7751, label %7752, label %7790

; <label>:7752                                    ; preds = %7726
  %7753 = icmp eq i32 %7521, 0
  %7754 = fsub fast float %7571, %7655
  %7755 = select i1 %7753, float %7754, float %7655
  %7756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.CBufRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.CBufRet.f32 %7756, 2
  %7760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7761 = extractvalue %dx.types.CBufRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.CBufRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.CBufRet.f32 %7760, 2
  %7764 = extractvalue %dx.types.CBufRet.f32 %7760, 3
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 3
  %7767 = call float @dx.op.binary.f32(i32 36, float %7656, float %7766)  ; FMin(a,b)
  %7768 = fmul fast float %7764, %7755
  %7769 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  %7770 = fsub fast float %7761, %7757
  %7771 = fsub fast float %7762, %7758
  %7772 = fsub fast float %7763, %7759
  %7773 = fmul fast float %7769, %7770
  %7774 = fmul fast float %7769, %7771
  %7775 = fmul fast float %7769, %7772
  %7776 = fadd fast float %7773, %7757
  %7777 = fadd fast float %7774, %7758
  %7778 = fadd fast float %7775, %7759
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = fadd fast float %7781, %7780
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7785 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7786 = fadd fast float %7785, %7784
  %7787 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7788 = fmul fast float %7783, %7767
  %7789 = fmul fast float %7788, %7787
  br label %7872

; <label>:7790                                    ; preds = %7726
  %7791 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7750
  %7792 = load float, float* %7791, align 4, !tbaa !111, !noalias !113
  %7793 = fcmp fast olt float %7792, %7657
  %7794 = icmp sgt i32 %7733, 0
  %7795 = and i1 %7794, %7793
  br i1 %7795, label %7796, label %7833

; <label>:7796                                    ; preds = %7790
  br label %7797

; <label>:7797                                    ; preds = %7826, %7796
  %7798 = phi float [ %7827, %7826 ], [ %7655, %7796 ]
  %7799 = phi float [ %7828, %7826 ], [ %7656, %7796 ]
  %7800 = phi float [ %7808, %7826 ], [ %7792, %7796 ]
  %7801 = phi i32 [ %7805, %7826 ], [ %7750, %7796 ]
  %7802 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7801
  %7803 = load float, float* %7802, align 4, !tbaa !111, !noalias !113
  %7804 = icmp slt i32 %7801, 2
  %7805 = add nsw i32 %7801, 1
  %7806 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7805
  %7807 = load float, float* %7806, align 4, !tbaa !111, !noalias !113
  %7808 = select i1 %7804, float %7807, float %7571
  %7809 = call float @dx.op.binary.f32(i32 36, float %7808, float %7803)  ; FMin(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7657, float %7809)  ; FMin(a,b)
  %7811 = icmp eq i32 %7521, 0
  %7812 = fadd fast float %7810, %7800
  %7813 = fmul fast float %7812, %7502
  %7814 = fadd fast float %7813, %7515
  br i1 %7811, label %7820, label %7815

; <label>:7815                                    ; preds = %7797
  %7816 = fsub fast float %7810, %7800
  %7817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7816)  ; FMax(a,b)
  %7818 = fmul fast float %7817, %7814
  %7819 = fadd fast float %7818, %7799
  br label %7826

; <label>:7820                                    ; preds = %7797
  %7821 = fsub fast float %7800, %7810
  %7822 = call float @dx.op.unary.f32(i32 6, float %7821)  ; FAbs(value)
  %7823 = fadd fast float %7822, %7798
  %7824 = fmul fast float %7822, %7814
  %7825 = fsub fast float %7799, %7824
  br label %7826

; <label>:7826                                    ; preds = %7820, %7815
  %7827 = phi float [ %7817, %7815 ], [ %7823, %7820 ]
  %7828 = phi float [ %7819, %7815 ], [ %7825, %7820 ]
  %7829 = fcmp fast olt float %7808, %7657
  %7830 = icmp slt i32 %7805, 3
  %7831 = and i1 %7830, %7829
  br i1 %7831, label %7797, label %7832

; <label>:7832                                    ; preds = %7826
  br label %7833

; <label>:7833                                    ; preds = %7832, %7790
  %7834 = phi float [ %7655, %7790 ], [ %7827, %7832 ]
  %7835 = phi float [ %7656, %7790 ], [ %7828, %7832 ]
  %7836 = fsub fast float %7571, %7834
  %7837 = select i1 %7573, float %7834, float %7836
  %7838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.CBufRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.CBufRet.f32 %7838, 2
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7846 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 3
  %7849 = call float @dx.op.binary.f32(i32 36, float %7835, float %7848)  ; FMin(a,b)
  %7850 = fmul fast float %7846, %7837
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = fsub fast float %7843, %7839
  %7853 = fsub fast float %7844, %7840
  %7854 = fsub fast float %7845, %7841
  %7855 = fmul fast float %7851, %7852
  %7856 = fmul fast float %7851, %7853
  %7857 = fmul fast float %7851, %7854
  %7858 = fadd fast float %7855, %7839
  %7859 = fadd fast float %7856, %7840
  %7860 = fadd fast float %7857, %7841
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7861, 1
  %7864 = fadd fast float %7863, %7862
  %7865 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7866 = extractvalue %dx.types.CBufRet.f32 %7861, 2
  %7867 = extractvalue %dx.types.CBufRet.f32 %7861, 3
  %7868 = fadd fast float %7867, %7866
  %7869 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  %7870 = fmul fast float %7865, %7849
  %7871 = fmul fast float %7870, %7869
  br label %7872

; <label>:7872                                    ; preds = %7833, %7752, %7587, %7569, %7567
  %7873 = phi float [ %7596, %7587 ], [ %7755, %7752 ], [ %7837, %7833 ], [ 0.000000e+00, %7567 ], [ 0.000000e+00, %7569 ]
  %7874 = phi float [ %7630, %7587 ], [ %7789, %7752 ], [ %7871, %7833 ], [ 0.000000e+00, %7567 ], [ 0.000000e+00, %7569 ]
  %7875 = phi float [ %7617, %7587 ], [ %7776, %7752 ], [ %7858, %7833 ], [ 0.000000e+00, %7567 ], [ 0.000000e+00, %7569 ]
  %7876 = phi float [ %7618, %7587 ], [ %7777, %7752 ], [ %7859, %7833 ], [ 0.000000e+00, %7567 ], [ 0.000000e+00, %7569 ]
  %7877 = phi float [ %7619, %7587 ], [ %7778, %7752 ], [ %7860, %7833 ], [ 0.000000e+00, %7567 ], [ 0.000000e+00, %7569 ]
  %7878 = fmul fast float %7510, %7874
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7881 = fsub fast float %7517, %7880
  %7882 = fcmp fast olt float %7878, -2.000000e+01
  %7883 = call float @dx.op.unary.f32(i32 21, float %7878)  ; Exp(value)
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7886 = extractvalue %dx.types.CBufRet.f32 %7884, 3
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 2
  %7889 = fmul fast float %7886, %7881
  %7890 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7891 = fsub fast float 1.000000e+00, %7890
  %7892 = fmul fast float %7502, 5.000000e-01
  %7893 = fadd fast float %7892, 5.000000e-01
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fsub fast float 1.000000e+00, %7894
  %7896 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7891)  ; FMax(a,b)
  %7897 = fdiv fast float %7895, %7896
  %7898 = fsub fast float %7881, %7459
  %7899 = call float @dx.op.unary.f32(i32 6, float %7898)  ; FAbs(value)
  %7900 = fmul fast float %7899, %7885
  %7901 = call float @dx.op.unary.f32(i32 7, float %7897)  ; Saturate(value)
  %7902 = fsub fast float 1.000000e+00, %7900
  %7903 = fmul fast float %7902, %7901
  %7904 = fadd fast float %7903, %7900
  %7905 = fmul fast float %7888, %7881
  %7906 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7907 = fsub fast float 1.000000e+00, %7904
  %7908 = fmul fast float %7907, %7906
  %7909 = fadd fast float %7908, %7904
  %7910 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  %7911 = fadd fast float %7883, -1.000000e+00
  %7912 = select i1 %7882, float -1.000000e+00, float %7911
  %7913 = fmul fast float %7910, %7912
  %7914 = fadd fast float %7913, 1.000000e+00
  %7915 = fsub fast float -0.000000e+00, %7913
  %7916 = fmul fast float %7875, %7915
  %7917 = fmul fast float %7876, %7915
  %7918 = fmul fast float %7877, %7915
  br label %7919

; <label>:7919                                    ; preds = %7872, %7468
  %7920 = phi float [ %7873, %7872 ], [ 0.000000e+00, %7468 ]
  %7921 = phi float [ %7914, %7872 ], [ 1.000000e+00, %7468 ]
  %7922 = phi float [ %7916, %7872 ], [ 0.000000e+00, %7468 ]
  %7923 = phi float [ %7917, %7872 ], [ 0.000000e+00, %7468 ]
  %7924 = phi float [ %7918, %7872 ], [ 0.000000e+00, %7468 ]
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7927 = fsub fast float 1.000000e+00, %7921
  %7928 = fmul fast float %7927, %7503
  %7929 = fmul fast float %7928, %7926
  %7930 = fsub fast float %7503, %7929
  br i1 %7496, label %7931, label %7960, !dx.controlflow.hints !149

; <label>:7931                                    ; preds = %7919
  %7932 = fmul fast float %7504, %7493
  %7933 = fadd fast float %7932, %7494
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = fmul fast float %7475, %7930
  %7936 = fsub fast float -0.000000e+00, %7935
  %7937 = fmul fast float %7476, %7930
  %7938 = fsub fast float -0.000000e+00, %7937
  %7939 = call float @dx.op.unary.f32(i32 21, float %7936)  ; Exp(value)
  %7940 = call float @dx.op.unary.f32(i32 21, float %7938)  ; Exp(value)
  %7941 = call float @dx.op.binary.f32(i32 35, float %7483, float %7939)  ; FMax(a,b)
  %7942 = call float @dx.op.binary.f32(i32 35, float %7483, float %7940)  ; FMax(a,b)
  %7943 = fsub fast float %7942, %7941
  %7944 = fmul fast float %7943, %7934
  %7945 = fadd fast float %7944, %7941
  %7946 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7947 = fsub fast float %7480, %7485
  %7948 = fsub fast float %7481, %7486
  %7949 = fsub fast float %7482, %7487
  %7950 = fmul fast float %7934, %7947
  %7951 = fmul fast float %7934, %7948
  %7952 = fmul fast float %7934, %7949
  %7953 = fadd fast float %7950, %7485
  %7954 = fadd fast float %7951, %7486
  %7955 = fadd fast float %7952, %7487
  %7956 = fsub fast float 1.000000e+00, %7946
  %7957 = fmul fast float %7956, %7953
  %7958 = fmul fast float %7956, %7954
  %7959 = fmul fast float %7956, %7955
  br label %8019

; <label>:7960                                    ; preds = %7919
  %7961 = fmul fast float %7930, %7492
  %7962 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7963 = fsub fast float 2.000000e+00, %7962
  %7964 = fmul fast float %7962, 9.921875e-01
  %7965 = fmul fast float %7964, %7963
  %7966 = fadd fast float %7965, 3.906250e-03
  %7967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %7966, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7968 = extractvalue %dx.types.ResRet.f32 %7967, 0
  %7969 = fsub fast float %7962, %7968
  %7970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7969)  ; FMax(a,b)
  %7971 = fmul fast float %7478, %7459
  %7972 = call float @dx.op.unary.f32(i32 6, float %7971)  ; FAbs(value)
  %7973 = fcmp fast ogt float %7972, 0x3EB0C6F7A0000000
  br i1 %7973, label %7974, label %7980, !dx.controlflow.hints !150

; <label>:7974                                    ; preds = %7960
  %7975 = fmul fast float %7971, 0xBFF7154760000000
  %7976 = call float @dx.op.unary.f32(i32 21, float %7975)  ; Exp(value)
  %7977 = fsub fast float 1.000000e+00, %7976
  %7978 = fdiv fast float %7977, %7971
  %7979 = fmul fast float %7978, %7488
  br label %7980

; <label>:7980                                    ; preds = %7974, %7960
  %7981 = phi float [ %7979, %7974 ], [ %7488, %7960 ]
  %7982 = fadd fast float %7981, %7490
  %7983 = fmul fast float %7982, %7970
  %7984 = fmul fast float %7475, %7983
  %7985 = fsub fast float -0.000000e+00, %7984
  %7986 = fmul fast float %7476, %7983
  %7987 = fsub fast float -0.000000e+00, %7986
  %7988 = fmul fast float %7477, %7983
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = call float @dx.op.unary.f32(i32 21, float %7985)  ; Exp(value)
  %7991 = call float @dx.op.unary.f32(i32 21, float %7987)  ; Exp(value)
  %7992 = call float @dx.op.unary.f32(i32 21, float %7989)  ; Exp(value)
  %7993 = fmul fast float %7504, %7504
  %7994 = fadd fast float %7993, 1.000000e+00
  %7995 = fmul fast float %7994, 0x3FAE8EC8A0000000
  %7996 = fmul fast float %7995, %7485
  %7997 = fmul fast float %7995, %7486
  %7998 = fmul fast float %7995, %7487
  %7999 = fmul fast float %7504, %7483
  %8000 = fsub fast float 1.000000e+00, %7999
  %8001 = fmul fast float %7483, %7483
  %8002 = fsub fast float 1.000000e+00, %8001
  %8003 = fmul fast float %8002, 0x3FB45F3060000000
  %8004 = fmul fast float %8000, %8000
  %8005 = fdiv fast float 1.000000e+00, %8004
  %8006 = fmul fast float %8003, %8005
  %8007 = fmul fast float %8006, %7480
  %8008 = fmul fast float %8006, %7481
  %8009 = fmul fast float %8006, %7482
  %8010 = fadd fast float %8007, %7996
  %8011 = fadd fast float %8008, %7997
  %8012 = fadd fast float %8009, %7998
  %8013 = fsub fast float 1.000000e+00, %7990
  %8014 = fsub fast float 1.000000e+00, %7991
  %8015 = fsub fast float 1.000000e+00, %7992
  %8016 = fmul fast float %8010, %8013
  %8017 = fmul fast float %8011, %8014
  %8018 = fmul fast float %8012, %8015
  br label %8019

; <label>:8019                                    ; preds = %7980, %7931
  %8020 = phi float [ %7957, %7931 ], [ %8016, %7980 ]
  %8021 = phi float [ %7958, %7931 ], [ %8017, %7980 ]
  %8022 = phi float [ %7959, %7931 ], [ %8018, %7980 ]
  %8023 = phi float [ %7946, %7931 ], [ %7990, %7980 ]
  %8024 = phi float [ %7946, %7931 ], [ %7991, %7980 ]
  %8025 = phi float [ %7946, %7931 ], [ %7992, %7980 ]
  br i1 %7512, label %8026, label %8224, !dx.controlflow.hints !151

; <label>:8026                                    ; preds = %8019
  %8027 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %8028 = fmul fast float %8027, %7927
  %8029 = fsub fast float %7922, %8020
  %8030 = fsub fast float %7923, %8021
  %8031 = fsub fast float %7924, %8022
  %8032 = fmul fast float %8028, %8029
  %8033 = fmul fast float %8028, %8030
  %8034 = fmul fast float %8028, %8031
  %8035 = fadd fast float %8032, %8020
  %8036 = fadd fast float %8033, %8021
  %8037 = fadd fast float %8034, %8022
  %8038 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8023)  ; FMax(a,b)
  %8039 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8024)  ; FMax(a,b)
  %8040 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8025)  ; FMax(a,b)
  %8041 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7921)  ; FMax(a,b)
  %8042 = call float @dx.op.binary.f32(i32 35, float %7920, float %7930)  ; FMax(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8042)  ; FMax(a,b)
  %8044 = fdiv fast float %7920, %8043
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = fdiv fast float %7930, %8043
  %8047 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8048 = fcmp fast une float %8041, 1.000000e+00
  br i1 %8048, label %8049, label %8062, !dx.controlflow.hints !152

; <label>:8049                                    ; preds = %8026
  %8050 = call float @dx.op.unary.f32(i32 23, float %8041)  ; Log(value)
  %8051 = fmul fast float %8050, 0x3FE62E4300000000
  %8052 = fmul fast float %7922, %8051
  %8053 = fsub fast float -0.000000e+00, %8052
  %8054 = fmul fast float %7923, %8051
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fmul fast float %7924, %8051
  %8057 = fsub fast float -0.000000e+00, %8056
  %8058 = fsub fast float 1.000000e+00, %8041
  %8059 = fdiv fast float %8053, %8058
  %8060 = fdiv fast float %8055, %8058
  %8061 = fdiv fast float %8057, %8058
  br label %8062

; <label>:8062                                    ; preds = %8049, %8026
  %8063 = phi float [ %8059, %8049 ], [ %7922, %8026 ]
  %8064 = phi float [ %8060, %8049 ], [ %7923, %8026 ]
  %8065 = phi float [ %8061, %8049 ], [ %7924, %8026 ]
  %8066 = phi float [ %8051, %8049 ], [ 0.000000e+00, %8026 ]
  %8067 = fcmp fast une float %8038, 1.000000e+00
  br i1 %8067, label %8068, label %8075, !dx.controlflow.hints !153

; <label>:8068                                    ; preds = %8062
  %8069 = call float @dx.op.unary.f32(i32 23, float %8038)  ; Log(value)
  %8070 = fmul fast float %8069, 0x3FE62E4300000000
  %8071 = fmul fast float %8035, %8070
  %8072 = fsub fast float -0.000000e+00, %8071
  %8073 = fsub fast float 1.000000e+00, %8038
  %8074 = fdiv fast float %8072, %8073
  br label %8075

; <label>:8075                                    ; preds = %8068, %8062
  %8076 = phi float [ %8074, %8068 ], [ %8035, %8062 ]
  %8077 = phi float [ %8070, %8068 ], [ 0.000000e+00, %8062 ]
  %8078 = fcmp fast une float %8039, 1.000000e+00
  br i1 %8078, label %8079, label %8086, !dx.controlflow.hints !153

; <label>:8079                                    ; preds = %8075
  %8080 = call float @dx.op.unary.f32(i32 23, float %8039)  ; Log(value)
  %8081 = fmul fast float %8080, 0x3FE62E4300000000
  %8082 = fmul fast float %8036, %8081
  %8083 = fsub fast float -0.000000e+00, %8082
  %8084 = fsub fast float 1.000000e+00, %8039
  %8085 = fdiv fast float %8083, %8084
  br label %8086

; <label>:8086                                    ; preds = %8079, %8075
  %8087 = phi float [ %8085, %8079 ], [ %8036, %8075 ]
  %8088 = phi float [ %8081, %8079 ], [ 0.000000e+00, %8075 ]
  %8089 = fcmp fast une float %8040, 1.000000e+00
  br i1 %8089, label %8090, label %8097, !dx.controlflow.hints !153

; <label>:8090                                    ; preds = %8086
  %8091 = call float @dx.op.unary.f32(i32 23, float %8040)  ; Log(value)
  %8092 = fmul fast float %8091, 0x3FE62E4300000000
  %8093 = fmul fast float %8037, %8092
  %8094 = fsub fast float -0.000000e+00, %8093
  %8095 = fsub fast float 1.000000e+00, %8040
  %8096 = fdiv fast float %8094, %8095
  br label %8097

; <label>:8097                                    ; preds = %8090, %8086
  %8098 = phi float [ %8096, %8090 ], [ %8037, %8086 ]
  %8099 = phi float [ %8092, %8090 ], [ 0.000000e+00, %8086 ]
  %8100 = fmul fast float %8063, %8047
  %8101 = fmul fast float %8064, %8047
  %8102 = fmul fast float %8065, %8047
  %8103 = fmul fast float %8066, %8047
  %8104 = fmul fast float %8076, %8045
  %8105 = fmul fast float %8087, %8045
  %8106 = fmul fast float %8098, %8045
  %8107 = fmul fast float %8077, %8045
  %8108 = fmul fast float %8088, %8045
  %8109 = fmul fast float %8099, %8045
  %8110 = fadd fast float %8104, %8100
  %8111 = fadd fast float %8105, %8101
  %8112 = fadd fast float %8106, %8102
  %8113 = fadd fast float %8107, %8103
  %8114 = fadd fast float %8108, %8103
  %8115 = fadd fast float %8109, %8103
  %8116 = fcmp fast une float %8113, 0.000000e+00
  br i1 %8116, label %8117, label %8124, !dx.controlflow.hints !154

; <label>:8117                                    ; preds = %8097
  %8118 = fmul fast float %8113, 0x3FF7154760000000
  %8119 = call float @dx.op.unary.f32(i32 21, float %8118)  ; Exp(value)
  %8120 = fsub fast float 1.000000e+00, %8119
  %8121 = fmul fast float %8110, %8120
  %8122 = fsub fast float -0.000000e+00, %8121
  %8123 = fdiv fast float %8122, %8113
  br label %8124

; <label>:8124                                    ; preds = %8117, %8097
  %8125 = phi float [ %8119, %8117 ], [ 1.000000e+00, %8097 ]
  %8126 = phi float [ %8123, %8117 ], [ %8110, %8097 ]
  %8127 = fcmp fast une float %8114, 0.000000e+00
  br i1 %8127, label %8128, label %8135, !dx.controlflow.hints !154

; <label>:8128                                    ; preds = %8124
  %8129 = fmul fast float %8114, 0x3FF7154760000000
  %8130 = call float @dx.op.unary.f32(i32 21, float %8129)  ; Exp(value)
  %8131 = fsub fast float 1.000000e+00, %8130
  %8132 = fmul fast float %8111, %8131
  %8133 = fsub fast float -0.000000e+00, %8132
  %8134 = fdiv fast float %8133, %8114
  br label %8135

; <label>:8135                                    ; preds = %8128, %8124
  %8136 = phi float [ %8130, %8128 ], [ 1.000000e+00, %8124 ]
  %8137 = phi float [ %8134, %8128 ], [ %8111, %8124 ]
  %8138 = fcmp fast une float %8115, 0.000000e+00
  br i1 %8138, label %8139, label %8146, !dx.controlflow.hints !154

; <label>:8139                                    ; preds = %8135
  %8140 = fmul fast float %8115, 0x3FF7154760000000
  %8141 = call float @dx.op.unary.f32(i32 21, float %8140)  ; Exp(value)
  %8142 = fsub fast float 1.000000e+00, %8141
  %8143 = fmul fast float %8112, %8142
  %8144 = fsub fast float -0.000000e+00, %8143
  %8145 = fdiv fast float %8144, %8115
  br label %8146

; <label>:8146                                    ; preds = %8139, %8135
  %8147 = phi float [ %8141, %8139 ], [ 1.000000e+00, %8135 ]
  %8148 = phi float [ %8145, %8139 ], [ %8112, %8135 ]
  %8149 = fcmp fast ogt float %8045, %8047
  br i1 %8149, label %8150, label %8170

; <label>:8150                                    ; preds = %8146
  %8151 = fsub fast float 1.000000e+00, %8047
  %8152 = fmul fast float %8063, %8151
  %8153 = fmul fast float %8064, %8151
  %8154 = fmul fast float %8065, %8151
  %8155 = fmul fast float %8066, %8151
  %8156 = fcmp fast une float %8155, 0.000000e+00
  br i1 %8156, label %8157, label %8208, !dx.controlflow.hints !155

; <label>:8157                                    ; preds = %8150
  %8158 = fmul fast float %8155, 0x3FF7154760000000
  %8159 = call float @dx.op.unary.f32(i32 21, float %8158)  ; Exp(value)
  %8160 = fsub fast float 1.000000e+00, %8159
  %8161 = fmul fast float %8152, %8160
  %8162 = fsub fast float -0.000000e+00, %8161
  %8163 = fmul fast float %8153, %8160
  %8164 = fsub fast float -0.000000e+00, %8163
  %8165 = fmul fast float %8154, %8160
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = fdiv fast float %8162, %8155
  %8168 = fdiv fast float %8164, %8155
  %8169 = fdiv fast float %8166, %8155
  br label %8208

; <label>:8170                                    ; preds = %8146
  %8171 = fsub fast float 1.000000e+00, %8045
  %8172 = fmul fast float %8076, %8171
  %8173 = fmul fast float %8087, %8171
  %8174 = fmul fast float %8098, %8171
  %8175 = fmul fast float %8077, %8171
  %8176 = fmul fast float %8088, %8171
  %8177 = fmul fast float %8099, %8171
  %8178 = fcmp fast une float %8175, 0.000000e+00
  br i1 %8178, label %8179, label %8186, !dx.controlflow.hints !154

; <label>:8179                                    ; preds = %8170
  %8180 = fmul fast float %8175, 0x3FF7154760000000
  %8181 = call float @dx.op.unary.f32(i32 21, float %8180)  ; Exp(value)
  %8182 = fsub fast float 1.000000e+00, %8181
  %8183 = fmul fast float %8172, %8182
  %8184 = fsub fast float -0.000000e+00, %8183
  %8185 = fdiv fast float %8184, %8175
  br label %8186

; <label>:8186                                    ; preds = %8179, %8170
  %8187 = phi float [ %8185, %8179 ], [ %8172, %8170 ]
  %8188 = phi float [ %8181, %8179 ], [ 1.000000e+00, %8170 ]
  %8189 = fcmp fast une float %8176, 0.000000e+00
  br i1 %8189, label %8190, label %8197, !dx.controlflow.hints !154

; <label>:8190                                    ; preds = %8186
  %8191 = fmul fast float %8176, 0x3FF7154760000000
  %8192 = call float @dx.op.unary.f32(i32 21, float %8191)  ; Exp(value)
  %8193 = fsub fast float 1.000000e+00, %8192
  %8194 = fmul fast float %8173, %8193
  %8195 = fsub fast float -0.000000e+00, %8194
  %8196 = fdiv fast float %8195, %8176
  br label %8197

; <label>:8197                                    ; preds = %8190, %8186
  %8198 = phi float [ %8196, %8190 ], [ %8173, %8186 ]
  %8199 = phi float [ %8192, %8190 ], [ 1.000000e+00, %8186 ]
  %8200 = fcmp fast une float %8177, 0.000000e+00
  br i1 %8200, label %8201, label %8208, !dx.controlflow.hints !154

; <label>:8201                                    ; preds = %8197
  %8202 = fmul fast float %8177, 0x3FF7154760000000
  %8203 = call float @dx.op.unary.f32(i32 21, float %8202)  ; Exp(value)
  %8204 = fsub fast float 1.000000e+00, %8203
  %8205 = fmul fast float %8174, %8204
  %8206 = fsub fast float -0.000000e+00, %8205
  %8207 = fdiv fast float %8206, %8177
  br label %8208

; <label>:8208                                    ; preds = %8201, %8197, %8157, %8150
  %8209 = phi float [ %8207, %8201 ], [ %8169, %8157 ], [ %8154, %8150 ], [ %8174, %8197 ]
  %8210 = phi float [ %8198, %8201 ], [ %8168, %8157 ], [ %8153, %8150 ], [ %8198, %8197 ]
  %8211 = phi float [ %8187, %8201 ], [ %8167, %8157 ], [ %8152, %8150 ], [ %8187, %8197 ]
  %8212 = phi float [ %8203, %8201 ], [ %8159, %8157 ], [ 1.000000e+00, %8150 ], [ 1.000000e+00, %8197 ]
  %8213 = phi float [ %8199, %8201 ], [ %8159, %8157 ], [ 1.000000e+00, %8150 ], [ %8199, %8197 ]
  %8214 = phi float [ %8188, %8201 ], [ %8159, %8157 ], [ 1.000000e+00, %8150 ], [ %8188, %8197 ]
  %8215 = fmul fast float %8214, %8126
  %8216 = fmul fast float %8213, %8137
  %8217 = fmul fast float %8212, %8148
  %8218 = fadd fast float %8215, %8211
  %8219 = fadd fast float %8216, %8210
  %8220 = fadd fast float %8217, %8209
  %8221 = fmul fast float %8214, %8125
  %8222 = fmul fast float %8213, %8136
  %8223 = fmul fast float %8212, %8147
  br label %8224

; <label>:8224                                    ; preds = %8208, %8019
  %8225 = phi float [ %8223, %8208 ], [ %8025, %8019 ]
  %8226 = phi float [ %8222, %8208 ], [ %8024, %8019 ]
  %8227 = phi float [ %8221, %8208 ], [ %8023, %8019 ]
  %8228 = phi float [ %8220, %8208 ], [ %8022, %8019 ]
  %8229 = phi float [ %8219, %8208 ], [ %8021, %8019 ]
  %8230 = phi float [ %8218, %8208 ], [ %8020, %8019 ]
  %8231 = fmul fast float %8230, %7172
  %8232 = fmul fast float %8229, %7174
  %8233 = fmul fast float %8228, %7176
  %8234 = fmul fast float %8227, %7467
  %8235 = call float @dx.op.dot3.f32(i32 55, float %8227, float %8226, float %8225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8236 = call float @dx.op.dot3.f32(i32 55, float %8231, float %8232, float %8233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8237 = select i1 %237, float %8235, float %8227
  %8238 = select i1 %237, float %8235, float %8226
  %8239 = select i1 %237, float 1.000000e+00, float %8225
  %8240 = select i1 %237, float %8236, float %8231
  %8241 = select i1 %237, float 0.000000e+00, float %8232
  %8242 = select i1 %237, float 0.000000e+00, float %8233
  %8243 = fmul fast float %8237, %7461
  %8244 = fmul fast float %8238, %7462
  %8245 = fmul fast float %8239, %7463
  %8246 = fadd fast float %8243, %8240
  %8247 = fadd fast float %8244, %8241
  %8248 = fadd fast float %8242, %8245
  %8249 = fmul fast float %8237, %7464
  %8250 = fmul fast float %8238, %7465
  %8251 = fmul fast float %8239, %7466
  %8252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.i32 %8252, 0
  %8254 = icmp eq i32 %8253, 0
  br i1 %8254, label %8622, label %8255, !dx.controlflow.hints !156

; <label>:8255                                    ; preds = %8224
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8259 = fmul fast float %8257, %97
  %8260 = fmul fast float %8258, %98
  %8261 = fmul fast float %8259, 2.000000e+00
  %8262 = fmul fast float %8260, 2.000000e+00
  %8263 = fsub fast float 1.000000e+00, %8261
  %8264 = fsub fast float 1.000000e+00, %8262
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = fmul fast float %8263, %8266
  %8270 = fmul fast float %8263, %8267
  %8271 = fmul fast float %8263, %8268
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8276 = fmul fast float %8264, %8273
  %8277 = fmul fast float %8264, %8274
  %8278 = fmul fast float %8264, %8275
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = fadd fast float %8276, %8280
  %8284 = fadd fast float %8283, %8269
  %8285 = fadd fast float %8277, %8281
  %8286 = fadd fast float %8285, %8270
  %8287 = fadd fast float %8278, %8282
  %8288 = fadd fast float %8287, %8271
  %8289 = fmul fast float %8284, %7460
  %8290 = fmul fast float %8286, %7460
  %8291 = fmul fast float %8288, %7460
  %8292 = fmul fast float %8289, %8289
  %8293 = fmul fast float %8290, %8290
  %8294 = fadd fast float %8292, %8293
  %8295 = fmul fast float %8291, %8291
  %8296 = fadd fast float %8294, %8295
  %8297 = call float @dx.op.unary.f32(i32 24, float %8296)  ; Sqrt(value)
  %8298 = extractvalue %dx.types.CBufRet.f32 %7187, 0
  %8299 = fsub fast float %8297, %8298
  %8300 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %8301 = fmul fast float %8299, %8300
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = fadd fast float %8302, -5.000000e-01
  %8304 = fmul fast float %8303, 2.000000e+00
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8307 = call float @dx.op.binary.f32(i32 36, float %8306, float %8304)  ; FMin(a,b)
  %8308 = fsub fast float -0.000000e+00, %8306
  %8309 = fcmp fast ogt float %8307, %8308
  br i1 %8309, label %8310, label %8622, !dx.controlflow.hints !157

; <label>:8310                                    ; preds = %8255
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 3
  %8313 = fcmp fast ogt float %8312, 0.000000e+00
  br i1 %8313, label %8314, label %8389, !dx.controlflow.hints !158

; <label>:8314                                    ; preds = %8310
  %8315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8316 = extractvalue %dx.types.Dimensions %8315, 0
  %8317 = sitofp i32 %8316 to float
  %8318 = extractvalue %dx.types.Dimensions %8315, 1
  %8319 = sitofp i32 %8318 to float
  %8320 = fmul fast float %8259, %8317
  %8321 = fmul fast float %8260, %8319
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 1
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = fptoui float %8324 to i32
  %8326 = fptoui float %8320 to i32
  %8327 = fptoui float %8321 to i32
  %8328 = and i32 %8325, 31
  %8329 = lshr i32 %8326, %8328
  %8330 = lshr i32 %8327, %8328
  %8331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8325, i32 %8329, i32 %8330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8332 = extractvalue %dx.types.ResRet.f32 %8331, 0
  %8333 = fcmp fast olt float %8332, -1.000000e+00
  %8334 = fcmp fast ogt float %8332, -1.000000e+00
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8337 = select i1 %8334, float %8336, float 1.000000e+00
  %8338 = fadd fast float %8332, 1.000000e+00
  %8339 = fmul fast float %8337, %8338
  %8340 = call float @dx.op.unary.f32(i32 6, float %8339)  ; FAbs(value)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8335, 3
  %8342 = fcmp fast oge float %8340, %8341
  %8343 = select i1 %8342, float 0x4197782600000000, float %8340
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = select i1 %8333, float %8345, float %8266
  %8349 = select i1 %8333, float %8346, float %8267
  %8350 = select i1 %8333, float %8347, float %8268
  %8351 = fmul fast float %8348, %8263
  %8352 = fmul fast float %8349, %8263
  %8353 = fmul fast float %8350, %8263
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8357 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8358 = select i1 %8333, float %8355, float %8273
  %8359 = select i1 %8333, float %8356, float %8274
  %8360 = select i1 %8333, float %8357, float %8275
  %8361 = fmul fast float %8358, %8264
  %8362 = fmul fast float %8359, %8264
  %8363 = fmul fast float %8360, %8264
  %8364 = fadd fast float %8361, %8351
  %8365 = fadd fast float %8362, %8352
  %8366 = fadd fast float %8363, %8353
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = select i1 %8333, float %8368, float %8280
  %8372 = select i1 %8333, float %8369, float %8281
  %8373 = select i1 %8333, float %8370, float %8282
  %8374 = fadd fast float %8364, %8371
  %8375 = fadd fast float %8365, %8372
  %8376 = fadd fast float %8366, %8373
  %8377 = fmul fast float %8374, %8343
  %8378 = fmul fast float %8375, %8343
  %8379 = fmul fast float %8376, %8343
  %8380 = fmul fast float %8377, %8377
  %8381 = fmul fast float %8378, %8378
  %8382 = fadd fast float %8380, %8381
  %8383 = fmul fast float %8379, %8379
  %8384 = fadd fast float %8382, %8383
  %8385 = call float @dx.op.unary.f32(i32 24, float %8384)  ; Sqrt(value)
  %8386 = fsub fast float %8385, %8298
  %8387 = fmul fast float %8386, %8300
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  br label %8389

; <label>:8389                                    ; preds = %8314, %8310
  %8390 = phi float [ %8388, %8314 ], [ 1.000000e+00, %8310 ]
  %8391 = fmul fast float %8307, 5.000000e-01
  %8392 = fadd fast float %8391, 5.000000e-01
  %8393 = call float @dx.op.unary.f32(i32 22, float %8392)  ; Frc(value)
  %8394 = call float @dx.op.unary.f32(i32 27, float %8393)  ; Round_ni(value)
  %8395 = call float @dx.op.unary.f32(i32 22, float %8393)  ; Frc(value)
  %8396 = fmul fast float %8395, 2.000000e+00
  %8397 = fadd fast float %8396, -1.000000e+00
  %8398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %8259, float %8260, float %8394, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8399 = extractvalue %dx.types.ResRet.f32 %8398, 0
  %8400 = extractvalue %dx.types.ResRet.f32 %8398, 1
  %8401 = extractvalue %dx.types.ResRet.f32 %8398, 2
  %8402 = extractvalue %dx.types.ResRet.f32 %8398, 3
  %8403 = fadd fast float %8399, -5.000000e-01
  %8404 = fadd fast float %8401, -5.000000e-01
  %8405 = fmul fast float %8403, 0xBFD5555560000000
  %8406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8404, float %8405)  ; FMad(a,b,c)
  %8407 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8400, float 0.000000e+00)  ; FMad(a,b,c)
  %8408 = fadd fast float %8407, %8402
  %8409 = fmul fast float %8403, -7.500000e-01
  %8410 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8404, float %8409)  ; FMad(a,b,c)
  %8411 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8400, float 0.000000e+00)  ; FMad(a,b,c)
  %8412 = fadd fast float %8411, %8402
  %8413 = call float @dx.op.binary.f32(i32 35, float %8406, float -1.000000e+00)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 35, float %8408, float -1.000000e+00)  ; FMax(a,b)
  %8415 = call float @dx.op.binary.f32(i32 35, float %8410, float -1.000000e+00)  ; FMax(a,b)
  %8416 = call float @dx.op.binary.f32(i32 35, float %8412, float -1.000000e+00)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8413, float 1.000000e+00)  ; FMin(a,b)
  %8418 = call float @dx.op.binary.f32(i32 36, float %8414, float 1.000000e+00)  ; FMin(a,b)
  %8419 = call float @dx.op.binary.f32(i32 36, float %8415, float 1.000000e+00)  ; FMin(a,b)
  %8420 = call float @dx.op.binary.f32(i32 36, float %8416, float 1.000000e+00)  ; FMin(a,b)
  %8421 = fcmp fast olt float %8417, 0x3FEFFF8020000000
  br i1 %8421, label %8422, label %8537, !dx.controlflow.hints !159

; <label>:8422                                    ; preds = %8389
  %8423 = extractvalue %dx.types.CBufRet.f32 %8305, 3
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 0
  %8426 = extractvalue %dx.types.CBufRet.f32 %8424, 1
  %8427 = extractvalue %dx.types.CBufRet.f32 %8424, 2
  %8428 = extractvalue %dx.types.CBufRet.f32 %8424, 3
  %8429 = fsub fast float %8425, %8417
  %8430 = fsub fast float %8426, %8418
  %8431 = fsub fast float %8427, %8419
  %8432 = fsub fast float %8428, %8420
  %8433 = fmul fast float %8429, %8423
  %8434 = fmul fast float %8430, %8423
  %8435 = fmul fast float %8431, %8423
  %8436 = fmul fast float %8432, %8423
  %8437 = fadd fast float %8433, %8417
  %8438 = fadd fast float %8434, %8418
  %8439 = fsub fast float -0.000000e+00, %8438
  %8440 = fadd fast float %8435, %8419
  %8441 = fadd fast float %8436, %8420
  %8442 = fmul fast float %8437, %8437
  %8443 = fsub fast float %8438, %8442
  %8444 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8443)  ; FMax(a,b)
  %8445 = fdiv fast float 1.000000e+00, %8444
  %8446 = fmul fast float %8438, %8437
  %8447 = fsub fast float %8440, %8446
  %8448 = fsub fast float %8397, %8437
  %8449 = fmul fast float %8397, %8397
  %8450 = fsub fast float %8449, %8438
  %8451 = fmul fast float %8448, %8445
  %8452 = fmul fast float %8451, %8447
  %8453 = fsub fast float %8450, %8452
  %8454 = fmul fast float %8438, %8438
  %8455 = fsub fast float %8441, %8454
  %8456 = fmul fast float %8447, %8447
  %8457 = fmul fast float %8456, %8445
  %8458 = fsub fast float %8455, %8457
  %8459 = fdiv fast float %8453, %8458
  %8460 = fmul fast float %8447, %8459
  %8461 = fsub fast float %8448, %8460
  %8462 = fmul fast float %8461, %8445
  %8463 = fmul fast float %8462, %8437
  %8464 = fsub fast float 1.000000e+00, %8463
  %8465 = fmul fast float %8438, %8459
  %8466 = fsub fast float %8464, %8465
  %8467 = fmul fast float %8462, %8462
  %8468 = fmul fast float %8459, 4.000000e+00
  %8469 = fmul fast float %8468, %8466
  %8470 = fsub fast float %8467, %8469
  %8471 = call float @dx.op.unary.f32(i32 24, float %8470)  ; Sqrt(value)
  %8472 = fcmp fast oge float %8462, 0.000000e+00
  %8473 = fsub fast float -0.000000e+00, %8471
  %8474 = select i1 %8472, float %8473, float %8471
  %8475 = fsub fast float %8474, %8462
  %8476 = fdiv fast float %8475, %8459
  %8477 = fdiv fast float %8466, %8475
  %8478 = fmul fast float %8476, 5.000000e-01
  %8479 = fmul fast float %8477, 2.000000e+00
  %8480 = select i1 %8472, float %8478, float %8479
  %8481 = select i1 %8472, float %8479, float %8478
  %8482 = call float @dx.op.binary.f32(i32 35, float %8480, float %8481)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 36, float %8480, float %8481)  ; FMin(a,b)
  %8484 = fcmp fast ogt float %8397, %8483
  br i1 %8484, label %8485, label %8495

; <label>:8485                                    ; preds = %8422
  %8486 = fsub fast float %8397, %8483
  %8487 = fsub fast float %8482, %8483
  %8488 = fmul fast float %8486, %8487
  %8489 = fmul fast float %8482, %8397
  %8490 = fadd fast float %8482, %8397
  %8491 = fmul fast float %8490, %8437
  %8492 = fadd fast float %8489, %8438
  %8493 = fsub fast float %8492, %8491
  %8494 = fdiv fast float %8493, %8488
  br label %8495

; <label>:8495                                    ; preds = %8485, %8422
  %8496 = phi float [ %8494, %8485 ], [ 0.000000e+00, %8422 ]
  %8497 = fcmp fast ogt float %8397, %8482
  %8498 = fsub fast float %8397, %8482
  br i1 %8497, label %8499, label %8509

; <label>:8499                                    ; preds = %8495
  %8500 = fsub fast float %8482, %8483
  %8501 = fmul fast float %8500, %8498
  %8502 = fmul fast float %8483, %8397
  %8503 = fadd fast float %8483, %8397
  %8504 = fmul fast float %8503, %8437
  %8505 = fsub fast float %8439, %8502
  %8506 = fadd fast float %8505, %8504
  %8507 = fdiv fast float %8506, %8501
  %8508 = fadd fast float %8507, %8496
  br label %8509

; <label>:8509                                    ; preds = %8499, %8495
  %8510 = phi float [ %8508, %8499 ], [ %8496, %8495 ]
  %8511 = fsub fast float %8397, %8483
  %8512 = fmul fast float %8511, %8498
  %8513 = fmul fast float %8483, %8482
  %8514 = fadd fast float %8483, %8482
  %8515 = fmul fast float %8514, %8437
  %8516 = fadd fast float %8513, %8438
  %8517 = fsub fast float %8516, %8515
  %8518 = fdiv fast float %8517, %8512
  %8519 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  %8520 = fcmp fast oeq float %7188, 0.000000e+00
  %8521 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8522 = fcmp fast oeq float %8521, 0.000000e+00
  %8523 = or i1 %8520, %8522
  %8524 = fmul fast float %8521, 2.000000e+00
  %8525 = fadd fast float %8306, %8307
  %8526 = fdiv fast float %8525, %8524
  %8527 = call float @dx.op.unary.f32(i32 7, float %8526)  ; Saturate(value)
  %8528 = fmul fast float %8527, 2.000000e+00
  %8529 = fsub fast float 3.000000e+00, %8528
  %8530 = fmul fast float %8527, %8527
  %8531 = fmul fast float %8530, %8529
  %8532 = select i1 %8523, float 1.000000e+00, float %8531
  %8533 = fmul fast float %8518, %7188
  %8534 = fadd fast float %8519, %8533
  %8535 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8536 = fmul fast float %8532, %8535
  br label %8537

; <label>:8537                                    ; preds = %8509, %8389
  %8538 = phi float [ %8536, %8509 ], [ 0.000000e+00, %8389 ]
  %8539 = fsub fast float 1.000000e+00, %8538
  %8540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %8259, float %8260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8541 = extractvalue %dx.types.ResRet.f32 %8540, 0
  %8542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.i32 %8542, 2
  %8544 = icmp eq i32 %8543, 0
  br i1 %8544, label %8550, label %8545

; <label>:8545                                    ; preds = %8537
  %8546 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8547 = fadd fast float %8541, -1.000000e+00
  %8548 = fmul fast float %8546, %8547
  %8549 = fadd fast float %8548, 1.000000e+00
  br label %8550

; <label>:8550                                    ; preds = %8545, %8537
  %8551 = phi float [ %8549, %8545 ], [ %8539, %8537 ]
  br i1 %8313, label %8552, label %8570

; <label>:8552                                    ; preds = %8550
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 1
  %8555 = fsub fast float %8390, %8554
  %8556 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8557 = fsub fast float %8390, %8312
  %8558 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  %8559 = fsub fast float %8556, %8558
  %8560 = fsub fast float %8392, %8558
  %8561 = fdiv fast float %8560, %8559
  %8562 = call float @dx.op.unary.f32(i32 7, float %8561)  ; Saturate(value)
  %8563 = fmul fast float %8562, 2.000000e+00
  %8564 = fsub fast float 3.000000e+00, %8563
  %8565 = fsub fast float %8541, %8551
  %8566 = fmul fast float %8562, %8562
  %8567 = fmul fast float %8566, %8565
  %8568 = fmul fast float %8567, %8564
  %8569 = fadd fast float %8568, %8551
  br label %8570

; <label>:8570                                    ; preds = %8552, %8550
  %8571 = phi float [ %8569, %8552 ], [ %8551, %8550 ]
  %8572 = call float @dx.op.binary.f32(i32 35, float %8541, float %8571)  ; FMax(a,b)
  %8573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.i32 %8573, 2
  %8575 = and i32 %8574, 1
  %8576 = icmp eq i32 %8575, 0
  %8577 = fcmp fast une float %8572, 1.000000e+00
  %8578 = and i1 %8577, %8576
  br i1 %8578, label %8579, label %8598

; <label>:8579                                    ; preds = %8570
  %8580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %8259, float %8260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.ResRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.ResRet.f32 %8580, 2
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 1
  %8586 = fmul fast float %8585, %8581
  %8587 = fmul fast float %8585, %8582
  %8588 = fmul fast float %8585, %8583
  %8589 = fcmp fast ogt float %8541, 0x3FEFFF2E40000000
  %8590 = fsub fast float 1.000000e+00, %8572
  %8591 = fsub fast float 1.000000e+00, %8541
  %8592 = fdiv fast float %8590, %8591
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = select i1 %8589, float 0.000000e+00, float %8593
  %8595 = fmul fast float %8586, %8594
  %8596 = fmul fast float %8587, %8594
  %8597 = fmul fast float %8588, %8594
  br label %8598

; <label>:8598                                    ; preds = %8579, %8570
  %8599 = phi float [ 0.000000e+00, %8570 ], [ %8595, %8579 ]
  %8600 = phi float [ 0.000000e+00, %8570 ], [ %8596, %8579 ]
  %8601 = phi float [ 0.000000e+00, %8570 ], [ %8597, %8579 ]
  %8602 = fmul fast float %8599, %7172
  %8603 = fmul fast float %8600, %7174
  %8604 = fmul fast float %8601, %7176
  %8605 = fmul fast float %8572, %8234
  %8606 = call float @dx.op.dot3.f32(i32 55, float %8572, float %8572, float %8572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8607 = call float @dx.op.dot3.f32(i32 55, float %8602, float %8603, float %8604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8608 = select i1 %237, float %8606, float %8572
  %8609 = select i1 %237, float 1.000000e+00, float %8572
  %8610 = select i1 %237, float %8607, float %8602
  %8611 = select i1 %237, float 0.000000e+00, float %8603
  %8612 = select i1 %237, float 0.000000e+00, float %8604
  %8613 = fmul fast float %8608, %8246
  %8614 = fmul fast float %8608, %8247
  %8615 = fmul fast float %8609, %8248
  %8616 = fadd fast float %8613, %8610
  %8617 = fadd fast float %8614, %8611
  %8618 = fadd fast float %8612, %8615
  %8619 = fmul fast float %8608, %8249
  %8620 = fmul fast float %8608, %8250
  %8621 = fmul fast float %8609, %8251
  br label %8622

; <label>:8622                                    ; preds = %8598, %8255, %8224, %7456
  %8623 = phi float [ %7461, %7456 ], [ %8246, %8224 ], [ %8616, %8598 ], [ %8246, %8255 ]
  %8624 = phi float [ %7462, %7456 ], [ %8247, %8224 ], [ %8617, %8598 ], [ %8247, %8255 ]
  %8625 = phi float [ %7463, %7456 ], [ %8248, %8224 ], [ %8618, %8598 ], [ %8248, %8255 ]
  %8626 = phi float [ %7464, %7456 ], [ %8249, %8224 ], [ %8619, %8598 ], [ %8249, %8255 ]
  %8627 = phi float [ %7465, %7456 ], [ %8250, %8224 ], [ %8620, %8598 ], [ %8250, %8255 ]
  %8628 = phi float [ %7466, %7456 ], [ %8251, %8224 ], [ %8621, %8598 ], [ %8251, %8255 ]
  %8629 = phi float [ %7467, %7456 ], [ %8234, %8224 ], [ %8605, %8598 ], [ %8234, %8255 ]
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 3
  %8633 = fmul fast float %8631, %97
  %8634 = fmul fast float %8632, %98
  %8635 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8636 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8637 = select i1 %7198, i32 2, i32 0
  %8638 = or i32 %8637, 1
  %8639 = uitofp i32 %8638 to float
  %8640 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8635, float %8636, float %8639, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8641 = extractvalue %dx.types.ResRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.ResRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.ResRet.f32 %8640, 2
  %8644 = extractvalue %dx.types.ResRet.f32 %8640, 3
  %8645 = add nuw nsw i32 %8637, 2
  %8646 = uitofp i32 %8645 to float
  %8647 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8635, float %8636, float %8646, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8648 = extractvalue %dx.types.ResRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.ResRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.ResRet.f32 %8647, 2
  %8651 = extractvalue %dx.types.ResRet.f32 %8647, 3
  %8652 = call float @dx.op.binary.f32(i32 35, float %8642, float %8643)  ; FMax(a,b)
  %8653 = call float @dx.op.binary.f32(i32 35, float %8641, float %8652)  ; FMax(a,b)
  %8654 = call float @dx.op.binary.f32(i32 35, float %8653, float %8644)  ; FMax(a,b)
  %8655 = call float @dx.op.binary.f32(i32 36, float %8649, float %8650)  ; FMin(a,b)
  %8656 = call float @dx.op.binary.f32(i32 36, float %8648, float %8655)  ; FMin(a,b)
  %8657 = call float @dx.op.binary.f32(i32 36, float %8656, float %8651)  ; FMin(a,b)
  %8658 = fmul fast float %8654, 2.550000e+02
  %8659 = fadd fast float %8658, 0x3F70101020000000
  %8660 = fptoui float %8659 to i32
  %8661 = fmul fast float %8657, 2.550000e+02
  %8662 = fadd fast float %8661, 0x3F70101020000000
  %8663 = fptoui float %8662 to i32
  %8664 = icmp ult i32 %8660, %8663
  br i1 %8664, label %8665, label %8834

; <label>:8665                                    ; preds = %8622
  %8666 = fcmp fast ogt float %87, 9.843750e-01
  %8667 = fadd fast float %7460, -4.000000e+00
  %8668 = select i1 %8666, float -4.000000e+00, float %8667
  %8669 = call float @dx.op.binary.f32(i32 35, float %8668, float 0.000000e+00)  ; FMax(a,b)
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 0
  %8672 = fadd fast float %8671, %8669
  %8673 = extractvalue %dx.types.CBufRet.f32 %8670, 2
  %8674 = fmul fast float %8672, %8673
  %8675 = call float @dx.op.unary.f32(i32 23, float %8674)  ; Log(value)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8670, 3
  %8677 = fmul fast float %8676, %8675
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8680 = fmul fast float %8677, %8679
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = uitofp i32 %8660 to float
  %8683 = uitofp i32 %8663 to float
  %8684 = fadd fast float %8682, 5.000000e-01
  %8685 = fadd fast float %8683, 5.000000e-01
  %8686 = fmul fast float %8679, %8684
  %8687 = fmul fast float %8679, %8685
  %8688 = fadd fast float %8686, 0x3F0FFB4800000000
  %8689 = fadd fast float %8687, 0xBF0FFB4800000000
  %8690 = call float @dx.op.binary.f32(i32 35, float %8681, float %8688)  ; FMax(a,b)
  %8691 = call float @dx.op.binary.f32(i32 36, float %8690, float %8689)  ; FMin(a,b)
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 1
  %8694 = extractvalue %dx.types.CBufRet.f32 %8692, 2
  %8695 = extractvalue %dx.types.CBufRet.f32 %8692, 0
  %8696 = select i1 %7198, float %8695, float 0.000000e+00
  %8697 = fmul fast float %8693, %8691
  %8698 = fadd fast float %8696, %8697
  %8699 = fadd fast float %8696, %8694
  %8700 = fsub fast float %8693, %8694
  %8701 = fadd fast float %8700, %8696
  %8702 = call float @dx.op.binary.f32(i32 35, float %8698, float %8699)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8702, float %8701)  ; FMin(a,b)
  %8704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %8635, float %8636, float %8703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8705 = extractvalue %dx.types.ResRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.ResRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.ResRet.f32 %8704, 2
  %8708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.i32 %8708, 0
  %8710 = extractvalue %dx.types.CBufRet.i32 %8708, 1
  %8711 = uitofp i32 %8709 to float
  %8712 = uitofp i32 %8710 to float
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = fmul fast float %8711, %8635
  %8717 = fmul fast float %8712, %8636
  %8718 = fadd fast float %8716, -5.000000e-01
  %8719 = fadd fast float %8717, -5.000000e-01
  %8720 = call float @dx.op.unary.f32(i32 22, float %8718)  ; Frc(value)
  %8721 = call float @dx.op.unary.f32(i32 22, float %8719)  ; Frc(value)
  %8722 = fmul fast float %8720, %8720
  %8723 = fmul fast float %8722, %8720
  %8724 = fsub fast float 3.000000e+00, %8720
  %8725 = fmul fast float %8722, %8724
  %8726 = fmul fast float %8720, 3.000000e+00
  %8727 = fmul fast float %8723, 3.000000e+00
  %8728 = fmul fast float %8722, 6.000000e+00
  %8729 = fsub fast float %8727, %8728
  %8730 = fadd fast float %8729, 4.000000e+00
  %8731 = fmul fast float %8730, 0x3FC5555560000000
  %8732 = fmul fast float %8723, -3.000000e+00
  %8733 = fadd fast float %8722, %8720
  %8734 = fmul fast float %8733, 3.000000e+00
  %8735 = fadd fast float %8732, 1.000000e+00
  %8736 = fadd fast float %8735, %8734
  %8737 = fmul fast float %8723, 0x3FC5555560000000
  %8738 = fmul fast float %8721, %8721
  %8739 = fmul fast float %8738, %8721
  %8740 = fsub fast float 3.000000e+00, %8721
  %8741 = fmul fast float %8738, %8740
  %8742 = fmul fast float %8721, 3.000000e+00
  %8743 = fmul fast float %8739, 3.000000e+00
  %8744 = fmul fast float %8738, 6.000000e+00
  %8745 = fsub fast float %8743, %8744
  %8746 = fadd fast float %8745, 4.000000e+00
  %8747 = fmul fast float %8746, 0x3FC5555560000000
  %8748 = fmul fast float %8739, -3.000000e+00
  %8749 = fadd fast float %8738, %8721
  %8750 = fmul fast float %8749, 3.000000e+00
  %8751 = fadd fast float %8748, 1.000000e+00
  %8752 = fadd fast float %8751, %8750
  %8753 = fmul fast float %8739, 0x3FC5555560000000
  %8754 = fadd fast float %8720, 1.000000e+00
  %8755 = fsub fast float 1.000000e+00, %8726
  %8756 = fadd fast float %8755, %8725
  %8757 = fadd fast float %8756, %8730
  %8758 = fmul fast float %8757, 0x3FC5555560000000
  %8759 = fdiv fast float %8731, %8758
  %8760 = fsub fast float %8754, %8759
  %8761 = fsub fast float 1.000000e+00, %8720
  %8762 = fadd fast float %8736, %8723
  %8763 = fmul fast float %8762, 0x3FC5555560000000
  %8764 = fdiv fast float %8737, %8763
  %8765 = fadd fast float %8761, %8764
  %8766 = fadd fast float %8721, 1.000000e+00
  %8767 = fsub fast float 1.000000e+00, %8742
  %8768 = fadd fast float %8767, %8741
  %8769 = fadd fast float %8768, %8746
  %8770 = fmul fast float %8769, 0x3FC5555560000000
  %8771 = fdiv fast float %8747, %8770
  %8772 = fsub fast float %8766, %8771
  %8773 = fsub fast float 1.000000e+00, %8721
  %8774 = fadd fast float %8752, %8739
  %8775 = fmul fast float %8774, 0x3FC5555560000000
  %8776 = fdiv fast float %8753, %8775
  %8777 = fadd fast float %8776, %8773
  %8778 = fmul fast float %8760, %8714
  %8779 = fsub fast float %8635, %8778
  %8780 = fmul fast float %8765, %8714
  %8781 = fadd fast float %8780, %8635
  %8782 = fmul fast float %8777, %8715
  %8783 = fadd fast float %8782, %8636
  %8784 = fmul fast float %8772, %8715
  %8785 = fsub fast float %8636, %8784
  %8786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8779, float %8785, float %8703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8787 = extractvalue %dx.types.ResRet.f32 %8786, 0
  %8788 = extractvalue %dx.types.ResRet.f32 %8786, 1
  %8789 = extractvalue %dx.types.ResRet.f32 %8786, 2
  %8790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8781, float %8785, float %8703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8791 = extractvalue %dx.types.ResRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.ResRet.f32 %8790, 1
  %8793 = extractvalue %dx.types.ResRet.f32 %8790, 2
  %8794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8779, float %8783, float %8703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8795 = extractvalue %dx.types.ResRet.f32 %8794, 0
  %8796 = extractvalue %dx.types.ResRet.f32 %8794, 1
  %8797 = extractvalue %dx.types.ResRet.f32 %8794, 2
  %8798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8781, float %8783, float %8703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8799 = extractvalue %dx.types.ResRet.f32 %8798, 0
  %8800 = extractvalue %dx.types.ResRet.f32 %8798, 1
  %8801 = extractvalue %dx.types.ResRet.f32 %8798, 2
  %8802 = fsub fast float %8795, %8787
  %8803 = fsub fast float %8796, %8788
  %8804 = fsub fast float %8797, %8789
  %8805 = fmul fast float %8802, %8775
  %8806 = fmul fast float %8803, %8775
  %8807 = fmul fast float %8804, %8775
  %8808 = fadd fast float %8805, %8787
  %8809 = fadd fast float %8806, %8788
  %8810 = fadd fast float %8807, %8789
  %8811 = fsub fast float %8799, %8791
  %8812 = fsub fast float %8800, %8792
  %8813 = fsub fast float %8801, %8793
  %8814 = fmul fast float %8811, %8775
  %8815 = fmul fast float %8812, %8775
  %8816 = fmul fast float %8813, %8775
  %8817 = fsub fast float %8791, %8808
  %8818 = fadd fast float %8817, %8814
  %8819 = fsub fast float %8792, %8809
  %8820 = fadd fast float %8819, %8815
  %8821 = fsub fast float %8793, %8810
  %8822 = fadd fast float %8821, %8816
  %8823 = fmul fast float %8818, %8763
  %8824 = fmul fast float %8820, %8763
  %8825 = fmul fast float %8822, %8763
  %8826 = fadd fast float %8823, %8808
  %8827 = fadd fast float %8824, %8809
  %8828 = fadd fast float %8825, %8810
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8831 = fmul fast float %8826, %8830
  %8832 = fmul fast float %8827, %8830
  %8833 = fmul fast float %8828, %8830
  br label %8834

; <label>:8834                                    ; preds = %8665, %8622
  %8835 = phi float [ %8705, %8665 ], [ 1.000000e+00, %8622 ]
  %8836 = phi float [ %8706, %8665 ], [ 1.000000e+00, %8622 ]
  %8837 = phi float [ %8707, %8665 ], [ 1.000000e+00, %8622 ]
  %8838 = phi float [ %8831, %8665 ], [ 0.000000e+00, %8622 ]
  %8839 = phi float [ %8832, %8665 ], [ 0.000000e+00, %8622 ]
  %8840 = phi float [ %8833, %8665 ], [ 0.000000e+00, %8622 ]
  %8841 = fmul fast float %8838, %7172
  %8842 = fmul fast float %8839, %7174
  %8843 = fmul fast float %8840, %7176
  %8844 = fmul fast float %8835, %8629
  %8845 = call float @dx.op.dot3.f32(i32 55, float %8835, float %8836, float %8837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = call float @dx.op.dot3.f32(i32 55, float %8841, float %8842, float %8843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8847 = select i1 %237, float %8845, float %8835
  %8848 = select i1 %237, float %8845, float %8836
  %8849 = select i1 %237, float 1.000000e+00, float %8837
  %8850 = select i1 %237, float %8846, float %8841
  %8851 = select i1 %237, float 0.000000e+00, float %8842
  %8852 = select i1 %237, float 0.000000e+00, float %8843
  %8853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.i32 %8853, 3
  %8855 = and i32 %8854, 3
  %8856 = icmp ne i32 %8855, 0
  %8857 = and i32 %8854, 4
  %8858 = icmp ne i32 %8857, 0
  %8859 = and i1 %8856, %8858
  %8860 = and i1 %237, %8859
  br i1 %8860, label %8861, label %8867

; <label>:8861                                    ; preds = %8834
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8864 = fadd fast float %8844, -1.000000e+00
  %8865 = fmul fast float %8863, %8864
  %8866 = fadd fast float %8865, 1.000000e+00
  br label %8867

; <label>:8867                                    ; preds = %8861, %8834
  %8868 = phi float [ %8866, %8861 ], [ %8844, %8834 ]
  %8869 = fadd fast float %8626, %8623
  %8870 = fmul fast float %8847, %8869
  %8871 = fadd fast float %8870, %8850
  %8872 = fadd fast float %8627, %8624
  %8873 = fmul fast float %8848, %8872
  %8874 = fadd fast float %8873, %8851
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  br i1 %237, label %8877, label %8892

; <label>:8877                                    ; preds = %8867
  %8878 = fadd fast float %8871, %8874
  %8879 = fmul fast float %8876, %8878
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 3
  %8882 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %8883 = fsub fast float %7185, %7179
  %8884 = fadd fast float %8883, %7186
  %8885 = fsub fast float %8884, %8882
  %8886 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %8887 = fmul fast float %8885, %8886
  %8888 = call float @dx.op.unary.f32(i32 7, float %8887)  ; Saturate(value)
  %8889 = fsub fast float %8888, %8881
  %8890 = fmul fast float %8889, %8868
  %8891 = fadd fast float %8890, %8881
  br label %8918

; <label>:8892                                    ; preds = %8867
  %8893 = fadd fast float %8628, %8625
  %8894 = fmul fast float %8849, %8893
  %8895 = fadd fast float %8894, %8852
  %8896 = fmul fast float %8876, %8871
  %8897 = fmul fast float %8876, %8874
  %8898 = fmul fast float %8876, %8895
  %8899 = call float @dx.op.binary.f32(i32 35, float %8897, float %8898)  ; FMax(a,b)
  %8900 = call float @dx.op.binary.f32(i32 35, float %8896, float %8899)  ; FMax(a,b)
  %8901 = call float @dx.op.binary.f32(i32 35, float %7174, float %7176)  ; FMax(a,b)
  %8902 = call float @dx.op.binary.f32(i32 35, float %7172, float %8901)  ; FMax(a,b)
  %8903 = call float @dx.op.binary.f32(i32 35, float %8900, float %8902)  ; FMax(a,b)
  %8904 = fcmp fast ugt float %8903, 0x3F10000000000000
  br i1 %8904, label %8906, label %8905

; <label>:8905                                    ; preds = %8892
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8906

; <label>:8906                                    ; preds = %8905, %8892
  %8907 = add i32 %42, 356
  %8908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %8907, i32 undef)  ; BufferLoad(srv,index,wot)
  %8909 = extractvalue %dx.types.ResRet.i32 %8908, 0
  %8910 = and i32 %8909, 32
  %8911 = icmp eq i32 %8910, 0
  br i1 %8911, label %8918, label %8912

; <label>:8912                                    ; preds = %8906
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 0
  %8915 = fmul fast float %8914, 0x3FE99999A0000000
  %8916 = fadd fast float %8914, %8896
  %8917 = fadd fast float %8915, %8898
  br label %8918

; <label>:8918                                    ; preds = %8912, %8906, %8877
  %8919 = phi float [ 1.000000e+00, %8877 ], [ %7174, %8912 ], [ %7174, %8906 ]
  %8920 = phi float [ 1.000000e+00, %8877 ], [ %7176, %8912 ], [ %7176, %8906 ]
  %8921 = phi float [ %8879, %8877 ], [ %8916, %8912 ], [ %8896, %8906 ]
  %8922 = phi float [ %8891, %8877 ], [ %8897, %8912 ], [ %8897, %8906 ]
  %8923 = phi float [ 1.000000e+00, %8877 ], [ %8917, %8912 ], [ %8898, %8906 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8924 = call float @dx.op.binary.f32(i32 36, float %8921, float 3.225500e+04)  ; FMin(a,b)
  %8925 = call float @dx.op.binary.f32(i32 36, float %8922, float 3.225500e+04)  ; FMin(a,b)
  %8926 = call float @dx.op.binary.f32(i32 36, float %8923, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8924)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8925)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8927 = call float @dx.op.binary.f32(i32 36, float %7172, float 3.225500e+04)  ; FMin(a,b)
  %8928 = call float @dx.op.binary.f32(i32 36, float %8919, float 3.225500e+04)  ; FMin(a,b)
  %8929 = call float @dx.op.binary.f32(i32 36, float %8920, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

