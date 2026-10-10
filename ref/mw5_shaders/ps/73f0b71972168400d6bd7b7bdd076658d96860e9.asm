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
;
; shader hash: b2aab051ad9bc5dbc9bee8d43e60dca4
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
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
;                                   texture     f32          2d     T14     t59,space2     1
;                                   texture     f32          2d     T15     t60,space2     1
;                                   texture    byte         r/o     T16     t45,space1     1
;                                   texture    byte         r/o     T17     t46,space1     1
;                                   texture    byte         r/o     T18     t47,space1     1
;                                   texture    byte         r/o     T19     t48,space1     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25      t1,space1     1
;                                   texture     f32          1d     T26     t32,space2     1
;                                   texture     f32     2darray     T27      t8,space2     1
;                                   texture     f32          2d     T28      t1,space2     1
;                                   texture     f32          2d     T29      t2,space2     1
;                                   texture     f32          2d     T30      t3,space2     1
;                                   texture     f32          2d     T31      t4,space2     1
;                                   textureunorm_f32     2darray     T32     t80,space2     1
;                                   texture    byte         r/o     T33     t67,space1     1
;                                   texture     f32          2d     T34      t7,space2     1
;                                   texture     f32          2d     T35      t6,space2     1
;                                   texture     f32          2d     T36      t5,space2     1
;                                   texture     f32          2d     T37     t38,space2     1
;                                   texture    byte         r/o     T38     t12,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;                                   texture     f32          1d     T40     t30,space2     1
;                                   texture     f32          3d     T41     t44,space2     1
;                                   texture     f32          3d     T42     t45,space2     1
;                                   texture     f32     2darray     T43     t47,space2     1
;                                   textureunorm_f32     2darray     T44     t85,space2     1
;                                   texture     f32          2d     T45     t83,space2     1
;                                   texture     f32          2d     T46     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = alloca [12 x float], align 4
  %102 = alloca [12 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fmul fast float %108, %97
  %110 = fmul fast float %108, %98
  %111 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %115, %88
  %117 = fmul fast float %115, %89
  %118 = fmul fast float %115, %90
  %119 = fmul fast float %89, %86
  %120 = fmul fast float %90, %85
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %90, %84
  %123 = fmul fast float %88, %86
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %88, %85
  %126 = fmul fast float %89, %84
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %87
  %129 = fmul fast float %124, %87
  %130 = fmul fast float %127, %87
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %133, float %158, float %162
  %166 = select i1 %133, float %159, float %163
  %167 = select i1 %133, float %160, float %164
  %168 = fmul fast float %165, %142
  %169 = fmul fast float %166, %142
  %170 = fmul fast float %167, %142
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %133, float %175, float %179
  %183 = select i1 %133, float %176, float %180
  %184 = select i1 %133, float %177, float %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fmul fast float %185, %100
  %189 = fmul fast float %186, %100
  %190 = fmul fast float %187, %100
  %191 = fmul fast float %109, 5.000000e-01
  %192 = fmul fast float %110, 5.000000e-01
  %193 = fptosi float %191 to i32
  %194 = fptosi float %192 to i32
  %195 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %193, i32 %194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = lshr i32 %196, 18
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F4C00EBA0000000
  %200 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %201 = fadd fast float %200, -1.000000e+00
  %202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %203 = extractvalue %dx.types.Dimensions %202, 0
  %204 = sitofp i32 %203 to float
  %205 = extractvalue %dx.types.Dimensions %202, 1
  %206 = sitofp i32 %205 to float
  %207 = fcmp fast oge float %191, %204
  %208 = fcmp fast oge float %192, %206
  %209 = or i1 %207, %208
  %210 = select i1 %209, float 0x4197782600000000, float %201
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %214 = fmul fast float %212, %109
  %215 = fmul fast float %213, %110
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 114688
  %219 = icmp ne i32 %218, 0
  %220 = select i1 %219, float %214, float 0.000000e+00
  %221 = select i1 %219, float %215, float 0.000000e+00
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %220, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fmul fast float %223, 2.550000e+02
  %225 = fptoui float %224 to i32
  %226 = select i1 %219, i32 %225, i32 0
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 3
  %229 = and i32 %228, 3
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, 4
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %243

; <label>:234                                     ; preds = %0
  %235 = fmul fast float %136, %110
  %236 = fmul fast float %135, %109
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %236, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fcmp fast olt float %239, %241
  br label %246

; <label>:243                                     ; preds = %0
  %244 = icmp eq i32 %231, 0
  %245 = and i1 %230, %244
  br label %246

; <label>:246                                     ; preds = %243, %234
  %247 = phi i1 [ %242, %234 ], [ %245, %243 ]
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = fmul fast float %249, 0x3FE3C6EF40000000
  %251 = frem fast float %109, 2.560000e+02
  %252 = frem fast float %110, 2.560000e+02
  %253 = fptoui float %251 to i32
  %254 = fptoui float %252 to i32
  %255 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %253, i32 %254, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fadd fast float %256, %250
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = add i32 %54, 156
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %54, 216
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %54, 36
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %54, 288
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %54, 172
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %54, 232
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %54, 52
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %54, 304
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %54, 188
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %345, 7
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %345, 22
  %353 = shl nuw nsw i32 %352, 5
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %54, 248
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %357, 8
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %357, 16
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = add i32 %54, 68
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %54, 320
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %380, 0x3F50624DE0000000
  %384 = fmul fast float %382, 0x3F50624DE0000000
  %385 = add i32 %54, 204
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %54, 264
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 255
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3F70101020000000
  %403 = lshr i32 %399, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %399, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = add i32 %54, 84
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %54, 336
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fmul fast float %422, 0x3F50624DE0000000
  %426 = fmul fast float %424, 0x3F50624DE0000000
  %427 = add i32 %54, 348
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 32
  %431 = icmp eq i32 %430, 0
  %432 = and i32 %429, 64
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %429, 128
  %435 = icmp eq i32 %434, 0
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %455, label %440

; <label>:440                                     ; preds = %246
  %441 = add i32 %54, 472
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = add i32 %443, 0
  %445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %445, %dx.types.Handle %106, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = fmul fast float %450, %93
  %452 = fmul fast float %447, %94
  %453 = fmul fast float %448, %95
  %454 = fmul fast float %449, %96
  br label %455

; <label>:455                                     ; preds = %440, %246
  %456 = phi float [ %96, %246 ], [ %454, %440 ]
  %457 = phi float [ %95, %246 ], [ %453, %440 ]
  %458 = phi float [ %94, %246 ], [ %452, %440 ]
  %459 = phi float [ %93, %246 ], [ %451, %440 ]
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 2
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %483, label %464

; <label>:464                                     ; preds = %455
  %465 = add i32 %54, 44
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 1
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %458, float 1.000000e+00
  %471 = add i32 %54, 60
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %457, float 1.000000e+00
  %477 = add i32 %54, 76
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %456, float 1.000000e+00
  br label %483

; <label>:483                                     ; preds = %464, %455
  %484 = phi float [ %456, %455 ], [ %482, %464 ]
  %485 = phi float [ %457, %455 ], [ %476, %464 ]
  %486 = phi float [ %458, %455 ], [ %470, %464 ]
  %487 = lshr i32 %461, 20
  %488 = and i32 %487, 3
  %489 = add nuw nsw i32 %488, 1
  %490 = add i32 %54, 24
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %54, 28
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = or i32 %495, %492
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %1085, label %498

; <label>:498                                     ; preds = %483
  %499 = and i32 %492, 262144
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, float %59, float 1.000000e+00
  %502 = select i1 %500, float %60, float 0.000000e+00
  %503 = select i1 %500, float %61, float 0.000000e+00
  %504 = select i1 %500, float %62, float 1.000000e+00
  %505 = select i1 %500, float %63, float %91
  %506 = select i1 %500, float %64, float %92
  %507 = add i32 %54, 284
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = fmul fast float %511, 0x3F50624DE0000000
  %513 = add i32 %54, 88
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  %518 = lshr i32 %515, 24
  %519 = add i32 %54, 292
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = add i32 %54, 32
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = lshr i32 %528, 22
  %530 = shl nuw nsw i32 %529, 5
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = shl i32 %528, 4
  %533 = and i32 %532, 32752
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = lshr i32 %528, 7
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %540 = fmul fast float %539, 1.000000e+03
  %541 = fmul fast float %299, %540
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = fadd fast float %542, %289
  %544 = fmul fast float %300, %540
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %291
  %547 = fmul fast float %512, %540
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fmul fast float %548, 0x401921FB60000000
  %550 = fadd fast float %549, %531
  %551 = call float @dx.op.unary.f32(i32 13, float %550)  ; Sin(value)
  %552 = call float @dx.op.unary.f32(i32 12, float %550)  ; Cos(value)
  %553 = fsub fast float -0.000000e+00, %551
  %554 = fadd fast float %505, -5.000000e-01
  %555 = fadd fast float %506, -5.000000e-01
  %556 = fmul fast float %523, %554
  %557 = fmul fast float %525, %555
  %558 = fadd fast float %556, 5.000000e-01
  %559 = fadd fast float %557, 5.000000e-01
  %560 = fmul fast float %534, %558
  %561 = fmul fast float %537, %559
  %562 = fmul fast float %552, %560
  %563 = call float @dx.op.tertiary.f32(i32 46, float %553, float %561, float %562)  ; FMad(a,b,c)
  %564 = fmul fast float %551, %560
  %565 = call float @dx.op.tertiary.f32(i32 46, float %552, float %561, float %564)  ; FMad(a,b,c)
  %566 = fadd fast float %543, %563
  %567 = fadd fast float %546, %565
  %568 = icmp ugt i32 %517, 1
  %569 = icmp ugt i32 %515, 33554431
  %570 = or i1 %569, %568
  br i1 %570, label %571, label %596

; <label>:571                                     ; preds = %498
  %572 = add i32 %54, 228
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = lshr i32 %574, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fmul fast float %539, %576
  %578 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %579 = mul nuw nsw i32 %517, %518
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %578, %580
  %582 = call float @dx.op.unary.f32(i32 27, float %581)  ; Round_ni(value)
  %583 = fptoui float %582 to i32
  %584 = urem i32 %583, %517
  %585 = udiv i32 %583, %518
  %586 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %587 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %588 = uitofp i32 %584 to float
  %589 = uitofp i32 %585 to float
  %590 = fadd fast float %586, %588
  %591 = fadd fast float %587, %589
  %592 = uitofp i32 %517 to float
  %593 = uitofp i32 %518 to float
  %594 = fdiv fast float %590, %592
  %595 = fdiv fast float %591, %593
  br label %596

; <label>:596                                     ; preds = %571, %498
  %597 = phi float [ %594, %571 ], [ %566, %498 ]
  %598 = phi float [ %595, %571 ], [ %567, %498 ]
  %599 = and i32 %492, 256
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %647, label %601

; <label>:601                                     ; preds = %596
  %602 = add i32 %54, 424
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %604, 0
  %606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %606, %dx.types.Handle %106, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = add i32 %54, 100
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = shl i32 %611, 4
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %611, 7
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = fsub fast float 1.000000e+00, %459
  %619 = call float @dx.op.binary.f32(i32 35, float %618, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %620 = bitcast float %459 to i32
  %621 = sitofp i32 %620 to float
  %622 = fadd fast float %621, 0xC1CFBF8940000000
  %623 = fmul fast float %617, %622
  %624 = fadd fast float %623, 0x41CFBF8940000000
  %625 = fptosi float %624 to i32
  %626 = bitcast i32 %625 to float
  %627 = bitcast float %619 to i32
  %628 = sitofp i32 %627 to float
  %629 = fadd fast float %628, 0xC1CFBF8940000000
  %630 = fmul fast float %629, %617
  %631 = fadd fast float %630, 0x41CFBF8940000000
  %632 = fptosi float %631 to i32
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %626, %614
  %635 = fmul fast float %633, %614
  %636 = fsub fast float %619, %634
  %637 = fadd fast float %635, %619
  %638 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %640 = fsub fast float %608, %638
  %641 = fsub fast float %639, %638
  %642 = bitcast float %641 to i32
  %643 = sub nsw i32 2129859010, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %644, %640
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  br label %647

; <label>:647                                     ; preds = %601, %596
  %648 = phi float [ %646, %601 ], [ %459, %596 ]
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 128
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %669, label %653

; <label>:653                                     ; preds = %647
  %654 = add i32 %54, 408
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %106, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 524288
  %664 = icmp ne i32 %663, 0
  %665 = fcmp fast ogt float %660, 0x3FE0101020000000
  %666 = select i1 %665, float 1.000000e+00, float 0.000000e+00
  %667 = select i1 %664, float %666, float %660
  %668 = fmul fast float %667, %648
  br label %669

; <label>:669                                     ; preds = %653, %647
  %670 = phi float [ %668, %653 ], [ %648, %647 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 16
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %873, label %675

; <label>:675                                     ; preds = %669
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %54, 360
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %682, %dx.types.Handle %105, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = extractvalue %dx.types.ResRet.f32 %683, 3
  %688 = and i32 %677, 255
  %689 = uitofp i32 %688 to float
  %690 = lshr i32 %677, 8
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %687, %689
  %694 = fadd fast float %693, %692
  %695 = fmul fast float %694, 0x3F70101000000000
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 512
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %708, label %700

; <label>:700                                     ; preds = %675
  %701 = add i32 %54, 440
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %106, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  br label %708

; <label>:708                                     ; preds = %700, %675
  %709 = phi float [ %707, %700 ], [ 1.000000e+00, %675 ]
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 33554432
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %820, label %714

; <label>:714                                     ; preds = %708
  %715 = add i32 %54, 224
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 65535
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = lshr i32 %717, 16
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = add i32 %54, 228
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 24
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %730, 0x3F70101020000000
  %732 = and i32 %728, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = lshr i32 %728, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = lshr i32 %728, 16
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = add i32 %54, 220
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 24
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = and i32 %745, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = lshr i32 %745, 8
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = lshr i32 %745, 16
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = bitcast float %684 to i32
  %761 = ashr i32 %760, 1
  %762 = sub nsw i32 1597463174, %761
  %763 = bitcast i32 %762 to float
  %764 = fmul fast float %684, 5.000000e-01
  %765 = fmul fast float %763, %763
  %766 = fmul fast float %765, %764
  %767 = fsub fast float 1.500000e+00, %766
  %768 = fmul fast float %763, %684
  %769 = fmul fast float %768, %767
  %770 = bitcast float %685 to i32
  %771 = ashr i32 %770, 1
  %772 = sub nsw i32 1597463174, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %685, 5.000000e-01
  %775 = fmul fast float %773, %773
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.500000e+00, %776
  %778 = fmul fast float %773, %685
  %779 = fmul fast float %778, %777
  %780 = bitcast float %686 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %686, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %686
  %789 = fmul fast float %788, %787
  %790 = fsub fast float %769, %751
  %791 = fsub fast float %779, %755
  %792 = fsub fast float %789, %759
  %793 = fmul fast float %790, %719
  %794 = fmul fast float %791, %721
  %795 = fmul fast float %792, %726
  %796 = fadd fast float %793, %734
  %797 = fadd fast float %794, %738
  %798 = fadd fast float %795, %742
  %799 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = fmul fast float %799, %799
  %803 = fmul fast float %800, %800
  %804 = fmul fast float %801, %801
  %805 = fsub fast float %802, %684
  %806 = fsub fast float %803, %685
  %807 = fsub fast float %804, %686
  %808 = fmul fast float %805, %709
  %809 = fmul fast float %806, %709
  %810 = fmul fast float %807, %709
  %811 = fadd fast float %808, %684
  %812 = fadd fast float %809, %685
  %813 = fadd fast float %810, %686
  %814 = fadd fast float %731, %695
  %815 = fsub fast float %814, %748
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fsub fast float %816, %695
  %818 = fmul fast float %817, %709
  %819 = fadd fast float %818, %695
  br label %873

; <label>:820                                     ; preds = %708
  %821 = and i32 %711, 134217728
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %857, label %823

; <label>:823                                     ; preds = %820
  %824 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %825 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %826 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %827 = fadd fast float %824, -5.000000e-01
  %828 = fadd fast float %825, -5.000000e-01
  %829 = fadd fast float %826, -5.000000e-01
  %830 = fmul fast float %827, %709
  %831 = fmul fast float %828, %709
  %832 = fmul fast float %829, %709
  %833 = fadd fast float %830, 5.000000e-01
  %834 = fadd fast float %831, 5.000000e-01
  %835 = fadd fast float %832, 5.000000e-01
  %836 = call float @dx.op.unary.f32(i32 24, float %684)  ; Sqrt(value)
  %837 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %686)  ; Sqrt(value)
  %839 = fmul fast float %833, 2.000000e+00
  %840 = fsub fast float 1.000000e+00, %839
  %841 = fmul fast float %840, %836
  %842 = fadd fast float %841, %839
  %843 = fmul fast float %842, %836
  %844 = fmul fast float %834, 2.000000e+00
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %837
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %837
  %849 = fmul fast float %835, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %838
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %838
  %854 = fmul fast float %843, %843
  %855 = fmul fast float %848, %848
  %856 = fmul fast float %853, %853
  br label %873

; <label>:857                                     ; preds = %820
  %858 = fmul fast float %276, %276
  %859 = fmul fast float %280, %280
  %860 = fmul fast float %284, %284
  %861 = fadd fast float %858, -1.000000e+00
  %862 = fadd fast float %859, -1.000000e+00
  %863 = fadd fast float %860, -1.000000e+00
  %864 = fmul fast float %709, %861
  %865 = fmul fast float %709, %862
  %866 = fmul fast float %709, %863
  %867 = fadd fast float %864, 1.000000e+00
  %868 = fadd fast float %865, 1.000000e+00
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fmul fast float %867, %684
  %871 = fmul fast float %868, %685
  %872 = fmul fast float %869, %686
  br label %873

; <label>:873                                     ; preds = %857, %823, %714, %669
  %874 = phi float [ %819, %714 ], [ %695, %823 ], [ %695, %857 ], [ 0x3FA23C0BE0000000, %669 ]
  %875 = phi float [ %811, %714 ], [ %854, %823 ], [ %870, %857 ], [ 1.000000e+00, %669 ]
  %876 = phi float [ %812, %714 ], [ %855, %823 ], [ %871, %857 ], [ 1.000000e+00, %669 ]
  %877 = phi float [ %813, %714 ], [ %856, %823 ], [ %872, %857 ], [ 1.000000e+00, %669 ]
  %878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.i32 %878, 1
  %880 = and i32 %879, 1
  %881 = icmp ne i32 %880, 0
  %882 = add i32 %54, 356
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 32
  %886 = icmp ne i32 %885, 0
  %887 = and i1 %881, %886
  %888 = select i1 %887, float 1.000000e+00, float %875
  %889 = select i1 %887, float 0x3FD3333340000000, float %876
  %890 = select i1 %887, float 0x3FD3333340000000, float %877
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 32
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %967, label %895

; <label>:895                                     ; preds = %873
  %896 = add i32 %54, 92
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %54, 376
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %901, 0
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %903, %dx.types.Handle %105, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = extractvalue %dx.types.ResRet.f32 %904, 2
  %908 = extractvalue %dx.types.ResRet.f32 %904, 3
  %909 = and i32 %898, 255
  %910 = uitofp i32 %909 to float
  %911 = lshr i32 %898, 8
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %898, 16
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %916, 0x3F70101000000000
  %918 = fmul fast float %905, %910
  %919 = fadd fast float %918, %913
  %920 = fmul fast float %919, 0x3F70101000000000
  %921 = fadd fast float %906, -5.000000e-01
  %922 = fadd fast float %908, -5.000000e-01
  %923 = fmul fast float %921, %917
  %924 = fmul fast float %922, %917
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fadd fast float %924, 5.000000e-01
  %927 = fmul fast float %925, 2.000000e+00
  %928 = fadd fast float %927, -1.000000e+00
  %929 = fmul fast float %926, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = fadd fast float %928, %930
  %932 = fmul fast float %931, 5.000000e-01
  %933 = fsub fast float %928, %930
  %934 = fmul fast float %933, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %936 = fsub fast float 1.000000e+00, %935
  %937 = call float @dx.op.unary.f32(i32 6, float %934)  ; FAbs(value)
  %938 = fsub fast float %936, %937
  %939 = call float @dx.op.dot3.f32(i32 55, float %932, float %934, float %938, float %932, float %934, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %932, %940
  %942 = fmul fast float %934, %940
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 67108864
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %963, label %947

; <label>:947                                     ; preds = %895
  %948 = add i32 %54, 280
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %950, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fsub fast float %920, %958
  %960 = fmul fast float %959, %952
  %961 = fadd fast float %960, %956
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  br label %963

; <label>:963                                     ; preds = %947, %895
  %964 = phi float [ %962, %947 ], [ %920, %895 ]
  %965 = call float @dx.op.dot2.f32(i32 54, float %941, float %942, float %501, float %502)  ; Dot2(ax,ay,bx,by)
  %966 = call float @dx.op.dot2.f32(i32 54, float %941, float %942, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  br label %967

; <label>:967                                     ; preds = %963, %873
  %968 = phi float [ %964, %963 ], [ 0x3FD6666660000000, %873 ]
  %969 = phi float [ %965, %963 ], [ 0.000000e+00, %873 ]
  %970 = phi float [ %966, %963 ], [ 0.000000e+00, %873 ]
  %971 = phi float [ %907, %963 ], [ 1.000000e+00, %873 ]
  %972 = add i32 %54, 160
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = lshr i32 %974, 22
  %976 = shl nuw nsw i32 %975, 5
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 64
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1015, label %982

; <label>:982                                     ; preds = %967
  %983 = add i32 %54, 392
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 131072
  %991 = icmp eq i32 %990, 0
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %105, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = fmul fast float %993, %264
  %997 = fmul fast float %994, %267
  %998 = fmul fast float %995, %270
  br i1 %991, label %1005, label %999

; <label>:999                                     ; preds = %982
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = fmul fast float %1001, %996
  %1003 = fmul fast float %1001, %997
  %1004 = fmul fast float %1001, %998
  br label %1005

; <label>:1005                                    ; preds = %999, %982
  %1006 = phi float [ %1002, %999 ], [ %996, %982 ]
  %1007 = phi float [ %1003, %999 ], [ %997, %982 ]
  %1008 = phi float [ %1004, %999 ], [ %998, %982 ]
  %1009 = fmul fast float %1006, %977
  %1010 = select i1 %247, float %1009, float %1006
  %1011 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = select i1 %247, float 0.000000e+00, float %1006
  %1013 = select i1 %247, float %1011, float %1007
  %1014 = select i1 %247, float 0.000000e+00, float %1008
  br label %1015

; <label>:1015                                    ; preds = %1005, %967
  %1016 = phi float [ %1012, %1005 ], [ 0.000000e+00, %967 ]
  %1017 = phi float [ %1013, %1005 ], [ 0.000000e+00, %967 ]
  %1018 = phi float [ %1014, %1005 ], [ 0.000000e+00, %967 ]
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 10240
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1067, label %1023

; <label>:1023                                    ; preds = %1015
  %1024 = add i32 %54, 456
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = add i32 %1026, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1028, %dx.types.Handle %106, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 1048576
  %1035 = icmp ne i32 %1034, 0
  %1036 = and i32 %1033, 8192
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1053, label %1038

; <label>:1038                                    ; preds = %1023
  %1039 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1040 = select i1 %1035, float %1039, float %1030
  %1041 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1042 = select i1 %1035, float %1041, float %1030
  %1043 = add i32 %54, 96
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = lshr i32 %1045, 16
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1048, 0x3F80101020000000
  %1050 = fmul fast float %1049, %1042
  %1051 = fmul fast float %1049, %1030
  %1052 = fmul fast float %1049, %1040
  br label %1053

; <label>:1053                                    ; preds = %1038, %1023
  %1054 = phi float [ %1050, %1038 ], [ 0.000000e+00, %1023 ]
  %1055 = phi float [ %1051, %1038 ], [ 0.000000e+00, %1023 ]
  %1056 = phi float [ %1052, %1038 ], [ 0.000000e+00, %1023 ]
  %1057 = and i32 %1033, 2048
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1067, label %1059

; <label>:1059                                    ; preds = %1053
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = shl i32 %1061, 4
  %1063 = and i32 %1062, 32752
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fmul fast float %1064, %1031
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1067

; <label>:1067                                    ; preds = %1059, %1053, %1015
  %1068 = phi float [ %1054, %1059 ], [ %1054, %1053 ], [ 0.000000e+00, %1015 ]
  %1069 = phi float [ %1055, %1059 ], [ %1055, %1053 ], [ 0.000000e+00, %1015 ]
  %1070 = phi float [ %1056, %1059 ], [ %1056, %1053 ], [ 0.000000e+00, %1015 ]
  %1071 = phi float [ %1066, %1059 ], [ 0x3F70101020000000, %1053 ], [ 0x3F70101020000000, %1015 ]
  %1072 = add i32 %54, 96
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 255
  %1076 = uitofp i32 %1075 to float
  %1077 = lshr i32 %1074, 8
  %1078 = and i32 %1077, 255
  %1079 = uitofp i32 %1078 to float
  %1080 = call float @dx.op.dot3.f32(i32 55, float %888, float %889, float %890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = fmul fast float %1079, %1080
  %1082 = fadd fast float %1081, %1076
  %1083 = fmul fast float %1082, 0x3F70101020000000
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  br label %1085

; <label>:1085                                    ; preds = %1067, %483
  %1086 = phi float [ 0.000000e+00, %483 ], [ %969, %1067 ]
  %1087 = phi float [ 0.000000e+00, %483 ], [ %970, %1067 ]
  %1088 = phi float [ 0.000000e+00, %483 ], [ %888, %1067 ]
  %1089 = phi float [ 0.000000e+00, %483 ], [ %889, %1067 ]
  %1090 = phi float [ 0.000000e+00, %483 ], [ %890, %1067 ]
  %1091 = phi float [ 0.000000e+00, %483 ], [ %1016, %1067 ]
  %1092 = phi float [ 0.000000e+00, %483 ], [ %1017, %1067 ]
  %1093 = phi float [ 0.000000e+00, %483 ], [ %1018, %1067 ]
  %1094 = phi float [ 0.000000e+00, %483 ], [ %1068, %1067 ]
  %1095 = phi float [ 0.000000e+00, %483 ], [ %1069, %1067 ]
  %1096 = phi float [ 0.000000e+00, %483 ], [ %1070, %1067 ]
  %1097 = phi float [ 0.000000e+00, %483 ], [ %874, %1067 ]
  %1098 = phi float [ 0.000000e+00, %483 ], [ %670, %1067 ]
  %1099 = phi float [ 0.000000e+00, %483 ], [ %968, %1067 ]
  %1100 = phi float [ 0.000000e+00, %483 ], [ %971, %1067 ]
  %1101 = phi float [ 0.000000e+00, %483 ], [ %1071, %1067 ]
  %1102 = phi float [ 0.000000e+00, %483 ], [ %1084, %1067 ]
  br i1 %431, label %1916, label %1103

; <label>:1103                                    ; preds = %1085
  %1104 = icmp ult i32 %489, 2
  %1105 = add i32 %54, 40
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %54, 44
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = or i32 %1110, %1107
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1916, label %1113

; <label>:1113                                    ; preds = %1103
  %1114 = and i32 %1107, 262144
  %1115 = icmp ne i32 %1114, 0
  %1116 = select i1 %1115, float %59, float 1.000000e+00
  %1117 = select i1 %1115, float %60, float 0.000000e+00
  %1118 = select i1 %1115, float %61, float 0.000000e+00
  %1119 = select i1 %1115, float %62, float 1.000000e+00
  %1120 = select i1 %1115, float %63, float %91
  %1121 = select i1 %1115, float %64, float %92
  %1122 = add i32 %54, 300
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = lshr i32 %1124, 16
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fmul fast float %1126, 0x3F50624DE0000000
  %1128 = add i32 %54, 104
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = lshr i32 %1130, 16
  %1132 = and i32 %1131, 255
  %1133 = lshr i32 %1130, 24
  %1134 = add i32 %54, 308
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 65535
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = lshr i32 %1136, 16
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = add i32 %54, 48
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = lshr i32 %1143, 22
  %1145 = shl nuw nsw i32 %1144, 5
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = shl i32 %1143, 4
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1143, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1155 = fmul fast float %1154, 1.000000e+03
  %1156 = fmul fast float %341, %1155
  %1157 = call float @dx.op.unary.f32(i32 22, float %1156)  ; Frc(value)
  %1158 = fadd fast float %1157, %331
  %1159 = fmul fast float %342, %1155
  %1160 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1161 = fadd fast float %1160, %333
  %1162 = fmul fast float %1127, %1155
  %1163 = call float @dx.op.unary.f32(i32 22, float %1162)  ; Frc(value)
  %1164 = fmul fast float %1163, 0x401921FB60000000
  %1165 = fadd fast float %1164, %1146
  %1166 = call float @dx.op.unary.f32(i32 13, float %1165)  ; Sin(value)
  %1167 = call float @dx.op.unary.f32(i32 12, float %1165)  ; Cos(value)
  %1168 = fsub fast float -0.000000e+00, %1166
  %1169 = fadd fast float %1120, -5.000000e-01
  %1170 = fadd fast float %1121, -5.000000e-01
  %1171 = fmul fast float %1138, %1169
  %1172 = fmul fast float %1140, %1170
  %1173 = fadd fast float %1171, 5.000000e-01
  %1174 = fadd fast float %1172, 5.000000e-01
  %1175 = fmul fast float %1149, %1173
  %1176 = fmul fast float %1152, %1174
  %1177 = fmul fast float %1167, %1175
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %1176, float %1177)  ; FMad(a,b,c)
  %1179 = fmul fast float %1166, %1175
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1176, float %1179)  ; FMad(a,b,c)
  %1181 = fadd fast float %1158, %1178
  %1182 = fadd fast float %1161, %1180
  %1183 = icmp ugt i32 %1132, 1
  %1184 = icmp ugt i32 %1130, 33554431
  %1185 = or i1 %1184, %1183
  br i1 %1185, label %1186, label %1211

; <label>:1186                                    ; preds = %1113
  %1187 = add i32 %54, 244
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 16
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = fmul fast float %1154, %1191
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = mul nuw nsw i32 %1132, %1133
  %1195 = uitofp i32 %1194 to float
  %1196 = fmul fast float %1193, %1195
  %1197 = call float @dx.op.unary.f32(i32 27, float %1196)  ; Round_ni(value)
  %1198 = fptoui float %1197 to i32
  %1199 = urem i32 %1198, %1132
  %1200 = udiv i32 %1198, %1133
  %1201 = call float @dx.op.unary.f32(i32 22, float %1181)  ; Frc(value)
  %1202 = call float @dx.op.unary.f32(i32 22, float %1182)  ; Frc(value)
  %1203 = uitofp i32 %1199 to float
  %1204 = uitofp i32 %1200 to float
  %1205 = fadd fast float %1201, %1203
  %1206 = fadd fast float %1202, %1204
  %1207 = uitofp i32 %1132 to float
  %1208 = uitofp i32 %1133 to float
  %1209 = fdiv fast float %1205, %1207
  %1210 = fdiv fast float %1206, %1208
  br label %1211

; <label>:1211                                    ; preds = %1186, %1113
  %1212 = phi float [ %1209, %1186 ], [ %1181, %1113 ]
  %1213 = phi float [ %1210, %1186 ], [ %1182, %1113 ]
  %1214 = and i32 %1107, 256
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1262, label %1216

; <label>:1216                                    ; preds = %1211
  %1217 = add i32 %54, 428
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %106, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = add i32 %54, 116
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = shl i32 %1226, 4
  %1228 = and i32 %1227, 32752
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = lshr i32 %1226, 7
  %1231 = and i32 %1230, 32752
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = fsub fast float 1.000000e+00, %486
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1235 = bitcast float %486 to i32
  %1236 = sitofp i32 %1235 to float
  %1237 = fadd fast float %1236, 0xC1CFBF8940000000
  %1238 = fmul fast float %1232, %1237
  %1239 = fadd fast float %1238, 0x41CFBF8940000000
  %1240 = fptosi float %1239 to i32
  %1241 = bitcast i32 %1240 to float
  %1242 = bitcast float %1234 to i32
  %1243 = sitofp i32 %1242 to float
  %1244 = fadd fast float %1243, 0xC1CFBF8940000000
  %1245 = fmul fast float %1244, %1232
  %1246 = fadd fast float %1245, 0x41CFBF8940000000
  %1247 = fptosi float %1246 to i32
  %1248 = bitcast i32 %1247 to float
  %1249 = fmul fast float %1241, %1229
  %1250 = fmul fast float %1248, %1229
  %1251 = fsub fast float %1234, %1249
  %1252 = fadd fast float %1250, %1234
  %1253 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1254 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1255 = fsub fast float %1223, %1253
  %1256 = fsub fast float %1254, %1253
  %1257 = bitcast float %1256 to i32
  %1258 = sub nsw i32 2129859010, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1259, %1255
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  br label %1262

; <label>:1262                                    ; preds = %1216, %1211
  %1263 = phi float [ %1261, %1216 ], [ %486, %1211 ]
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 128
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1284, label %1268

; <label>:1268                                    ; preds = %1262
  %1269 = add i32 %54, 412
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %106, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 524288
  %1279 = icmp ne i32 %1278, 0
  %1280 = fcmp fast ogt float %1275, 0x3FE0101020000000
  %1281 = select i1 %1280, float 1.000000e+00, float 0.000000e+00
  %1282 = select i1 %1279, float %1281, float %1275
  %1283 = fmul fast float %1282, %1263
  br label %1284

; <label>:1284                                    ; preds = %1268, %1262
  %1285 = phi float [ %1283, %1268 ], [ %1263, %1262 ]
  %1286 = fcmp fast ult float %1285, 0x3F70101020000000
  br i1 %1286, label %1916, label %1287

; <label>:1287                                    ; preds = %1284
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 16
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1490, label %1292

; <label>:1292                                    ; preds = %1287
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %54, 364
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %1297, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1299, %dx.types.Handle %105, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = extractvalue %dx.types.ResRet.f32 %1300, 3
  %1305 = and i32 %1294, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = lshr i32 %1294, 8
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1304, %1306
  %1311 = fadd fast float %1310, %1309
  %1312 = fmul fast float %1311, 0x3F70101000000000
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 512
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1325, label %1317

; <label>:1317                                    ; preds = %1292
  %1318 = add i32 %54, 444
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1322, %dx.types.Handle %106, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  br label %1325

; <label>:1325                                    ; preds = %1317, %1292
  %1326 = phi float [ %1324, %1317 ], [ 1.000000e+00, %1292 ]
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 33554432
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1437, label %1331

; <label>:1331                                    ; preds = %1325
  %1332 = add i32 %54, 240
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = lshr i32 %1334, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = add i32 %54, 244
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 65535
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = lshr i32 %1345, 24
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = and i32 %1345, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = fmul fast float %1350, 0x3F70101020000000
  %1352 = lshr i32 %1345, 8
  %1353 = and i32 %1352, 255
  %1354 = uitofp i32 %1353 to float
  %1355 = fmul fast float %1354, 0x3F70101020000000
  %1356 = lshr i32 %1345, 16
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1358, 0x3F70101020000000
  %1360 = add i32 %54, 236
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = lshr i32 %1362, 24
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = and i32 %1362, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101020000000
  %1369 = lshr i32 %1362, 8
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = lshr i32 %1362, 16
  %1374 = and i32 %1373, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = fmul fast float %1375, 0x3F70101020000000
  %1377 = bitcast float %1301 to i32
  %1378 = ashr i32 %1377, 1
  %1379 = sub nsw i32 1597463174, %1378
  %1380 = bitcast i32 %1379 to float
  %1381 = fmul fast float %1301, 5.000000e-01
  %1382 = fmul fast float %1380, %1380
  %1383 = fmul fast float %1382, %1381
  %1384 = fsub fast float 1.500000e+00, %1383
  %1385 = fmul fast float %1380, %1301
  %1386 = fmul fast float %1385, %1384
  %1387 = bitcast float %1302 to i32
  %1388 = ashr i32 %1387, 1
  %1389 = sub nsw i32 1597463174, %1388
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1302, 5.000000e-01
  %1392 = fmul fast float %1390, %1390
  %1393 = fmul fast float %1392, %1391
  %1394 = fsub fast float 1.500000e+00, %1393
  %1395 = fmul fast float %1390, %1302
  %1396 = fmul fast float %1395, %1394
  %1397 = bitcast float %1303 to i32
  %1398 = ashr i32 %1397, 1
  %1399 = sub nsw i32 1597463174, %1398
  %1400 = bitcast i32 %1399 to float
  %1401 = fmul fast float %1303, 5.000000e-01
  %1402 = fmul fast float %1400, %1400
  %1403 = fmul fast float %1402, %1401
  %1404 = fsub fast float 1.500000e+00, %1403
  %1405 = fmul fast float %1400, %1303
  %1406 = fmul fast float %1405, %1404
  %1407 = fsub fast float %1386, %1368
  %1408 = fsub fast float %1396, %1372
  %1409 = fsub fast float %1406, %1376
  %1410 = fmul fast float %1407, %1336
  %1411 = fmul fast float %1408, %1338
  %1412 = fmul fast float %1409, %1343
  %1413 = fadd fast float %1410, %1351
  %1414 = fadd fast float %1411, %1355
  %1415 = fadd fast float %1412, %1359
  %1416 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1417 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1418 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1419 = fmul fast float %1416, %1416
  %1420 = fmul fast float %1417, %1417
  %1421 = fmul fast float %1418, %1418
  %1422 = fsub fast float %1419, %1301
  %1423 = fsub fast float %1420, %1302
  %1424 = fsub fast float %1421, %1303
  %1425 = fmul fast float %1422, %1326
  %1426 = fmul fast float %1423, %1326
  %1427 = fmul fast float %1424, %1326
  %1428 = fadd fast float %1425, %1301
  %1429 = fadd fast float %1426, %1302
  %1430 = fadd fast float %1427, %1303
  %1431 = fadd fast float %1348, %1312
  %1432 = fsub fast float %1431, %1365
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fsub fast float %1433, %1312
  %1435 = fmul fast float %1434, %1326
  %1436 = fadd fast float %1435, %1312
  br label %1490

; <label>:1437                                    ; preds = %1325
  %1438 = and i32 %1328, 134217728
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1474, label %1440

; <label>:1440                                    ; preds = %1437
  %1441 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %1442 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %1443 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %1444 = fadd fast float %1441, -5.000000e-01
  %1445 = fadd fast float %1442, -5.000000e-01
  %1446 = fadd fast float %1443, -5.000000e-01
  %1447 = fmul fast float %1444, %1326
  %1448 = fmul fast float %1445, %1326
  %1449 = fmul fast float %1446, %1326
  %1450 = fadd fast float %1447, 5.000000e-01
  %1451 = fadd fast float %1448, 5.000000e-01
  %1452 = fadd fast float %1449, 5.000000e-01
  %1453 = call float @dx.op.unary.f32(i32 24, float %1301)  ; Sqrt(value)
  %1454 = call float @dx.op.unary.f32(i32 24, float %1302)  ; Sqrt(value)
  %1455 = call float @dx.op.unary.f32(i32 24, float %1303)  ; Sqrt(value)
  %1456 = fmul fast float %1450, 2.000000e+00
  %1457 = fsub fast float 1.000000e+00, %1456
  %1458 = fmul fast float %1457, %1453
  %1459 = fadd fast float %1458, %1456
  %1460 = fmul fast float %1459, %1453
  %1461 = fmul fast float %1451, 2.000000e+00
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = fmul fast float %1462, %1454
  %1464 = fadd fast float %1463, %1461
  %1465 = fmul fast float %1464, %1454
  %1466 = fmul fast float %1452, 2.000000e+00
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul fast float %1467, %1455
  %1469 = fadd fast float %1468, %1466
  %1470 = fmul fast float %1469, %1455
  %1471 = fmul fast float %1460, %1460
  %1472 = fmul fast float %1465, %1465
  %1473 = fmul fast float %1470, %1470
  br label %1490

; <label>:1474                                    ; preds = %1437
  %1475 = fmul fast float %318, %318
  %1476 = fmul fast float %322, %322
  %1477 = fmul fast float %326, %326
  %1478 = fadd fast float %1475, -1.000000e+00
  %1479 = fadd fast float %1476, -1.000000e+00
  %1480 = fadd fast float %1477, -1.000000e+00
  %1481 = fmul fast float %1326, %1478
  %1482 = fmul fast float %1326, %1479
  %1483 = fmul fast float %1326, %1480
  %1484 = fadd fast float %1481, 1.000000e+00
  %1485 = fadd fast float %1482, 1.000000e+00
  %1486 = fadd fast float %1483, 1.000000e+00
  %1487 = fmul fast float %1484, %1301
  %1488 = fmul fast float %1485, %1302
  %1489 = fmul fast float %1486, %1303
  br label %1490

; <label>:1490                                    ; preds = %1474, %1440, %1331, %1287
  %1491 = phi float [ %1436, %1331 ], [ %1312, %1440 ], [ %1312, %1474 ], [ 0x3FA23C0BE0000000, %1287 ]
  %1492 = phi float [ %1428, %1331 ], [ %1471, %1440 ], [ %1487, %1474 ], [ 1.000000e+00, %1287 ]
  %1493 = phi float [ %1429, %1331 ], [ %1472, %1440 ], [ %1488, %1474 ], [ 1.000000e+00, %1287 ]
  %1494 = phi float [ %1430, %1331 ], [ %1473, %1440 ], [ %1489, %1474 ], [ 1.000000e+00, %1287 ]
  %1495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.i32 %1495, 1
  %1497 = and i32 %1496, 1
  %1498 = icmp ne i32 %1497, 0
  %1499 = add i32 %54, 356
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 32
  %1503 = icmp ne i32 %1502, 0
  %1504 = and i1 %1498, %1503
  %1505 = select i1 %1504, float 1.000000e+00, float %1492
  %1506 = select i1 %1504, float 0x3FD3333340000000, float %1493
  %1507 = select i1 %1504, float 0x3FD3333340000000, float %1494
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 32
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1584, label %1512

; <label>:1512                                    ; preds = %1490
  %1513 = add i32 %54, 108
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %54, 380
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %105, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = extractvalue %dx.types.ResRet.f32 %1521, 3
  %1526 = and i32 %1515, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = lshr i32 %1515, 8
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = lshr i32 %1515, 16
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = fmul fast float %1533, 0x3F70101000000000
  %1535 = fmul fast float %1522, %1527
  %1536 = fadd fast float %1535, %1530
  %1537 = fmul fast float %1536, 0x3F70101000000000
  %1538 = fadd fast float %1523, -5.000000e-01
  %1539 = fadd fast float %1525, -5.000000e-01
  %1540 = fmul fast float %1538, %1534
  %1541 = fmul fast float %1539, %1534
  %1542 = fadd fast float %1540, 5.000000e-01
  %1543 = fadd fast float %1541, 5.000000e-01
  %1544 = fmul fast float %1542, 2.000000e+00
  %1545 = fadd fast float %1544, -1.000000e+00
  %1546 = fmul fast float %1543, 2.000000e+00
  %1547 = fadd fast float %1546, -1.000000e+00
  %1548 = fadd fast float %1545, %1547
  %1549 = fmul fast float %1548, 5.000000e-01
  %1550 = fsub fast float %1545, %1547
  %1551 = fmul fast float %1550, 5.000000e-01
  %1552 = call float @dx.op.unary.f32(i32 6, float %1549)  ; FAbs(value)
  %1553 = fsub fast float 1.000000e+00, %1552
  %1554 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1555 = fsub fast float %1553, %1554
  %1556 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1551, float %1555, float %1549, float %1551, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = call float @dx.op.unary.f32(i32 25, float %1556)  ; Rsqrt(value)
  %1558 = fmul fast float %1549, %1557
  %1559 = fmul fast float %1551, %1557
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 67108864
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1580, label %1564

; <label>:1564                                    ; preds = %1512
  %1565 = add i32 %54, 296
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 65535
  %1569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1568)  ; LegacyF16ToF32(value)
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 65535
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  %1574 = lshr i32 %1567, 16
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = fsub fast float %1537, %1575
  %1577 = fmul fast float %1576, %1569
  %1578 = fadd fast float %1577, %1573
  %1579 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  br label %1580

; <label>:1580                                    ; preds = %1564, %1512
  %1581 = phi float [ %1579, %1564 ], [ %1537, %1512 ]
  %1582 = call float @dx.op.dot2.f32(i32 54, float %1558, float %1559, float %1116, float %1117)  ; Dot2(ax,ay,bx,by)
  %1583 = call float @dx.op.dot2.f32(i32 54, float %1558, float %1559, float %1118, float %1119)  ; Dot2(ax,ay,bx,by)
  br label %1584

; <label>:1584                                    ; preds = %1580, %1490
  %1585 = phi float [ %1581, %1580 ], [ 0x3FD6666660000000, %1490 ]
  %1586 = phi float [ %1582, %1580 ], [ 0.000000e+00, %1490 ]
  %1587 = phi float [ %1583, %1580 ], [ 0.000000e+00, %1490 ]
  %1588 = phi float [ %1524, %1580 ], [ 1.000000e+00, %1490 ]
  %1589 = add i32 %54, 176
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = lshr i32 %1591, 22
  %1593 = shl nuw nsw i32 %1592, 5
  %1594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1593)  ; LegacyF16ToF32(value)
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 64
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1632, label %1599

; <label>:1599                                    ; preds = %1584
  %1600 = add i32 %54, 396
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 131072
  %1608 = icmp eq i32 %1607, 0
  %1609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %105, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.ResRet.f32 %1609, 1
  %1612 = extractvalue %dx.types.ResRet.f32 %1609, 2
  %1613 = fmul fast float %1610, %306
  %1614 = fmul fast float %1611, %309
  %1615 = fmul fast float %1612, %312
  br i1 %1608, label %1622, label %1616

; <label>:1616                                    ; preds = %1599
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = fmul fast float %1618, %1613
  %1620 = fmul fast float %1618, %1614
  %1621 = fmul fast float %1618, %1615
  br label %1622

; <label>:1622                                    ; preds = %1616, %1599
  %1623 = phi float [ %1619, %1616 ], [ %1613, %1599 ]
  %1624 = phi float [ %1620, %1616 ], [ %1614, %1599 ]
  %1625 = phi float [ %1621, %1616 ], [ %1615, %1599 ]
  %1626 = fmul fast float %1623, %1594
  %1627 = select i1 %247, float %1626, float %1623
  %1628 = call float @dx.op.dot3.f32(i32 55, float %1627, float %1624, float %1625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1629 = select i1 %247, float 0.000000e+00, float %1623
  %1630 = select i1 %247, float %1628, float %1624
  %1631 = select i1 %247, float 0.000000e+00, float %1625
  br label %1632

; <label>:1632                                    ; preds = %1622, %1584
  %1633 = phi float [ %1629, %1622 ], [ 0.000000e+00, %1584 ]
  %1634 = phi float [ %1630, %1622 ], [ 0.000000e+00, %1584 ]
  %1635 = phi float [ %1631, %1622 ], [ 0.000000e+00, %1584 ]
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 10240
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1684, label %1640

; <label>:1640                                    ; preds = %1632
  %1641 = add i32 %54, 460
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = add i32 %1643, 0
  %1645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1645, %dx.types.Handle %106, float %1212, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1646, 3
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 1048576
  %1652 = icmp ne i32 %1651, 0
  %1653 = and i32 %1650, 8192
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1670, label %1655

; <label>:1655                                    ; preds = %1640
  %1656 = extractvalue %dx.types.ResRet.f32 %1646, 2
  %1657 = select i1 %1652, float %1656, float %1647
  %1658 = extractvalue %dx.types.ResRet.f32 %1646, 0
  %1659 = select i1 %1652, float %1658, float %1647
  %1660 = add i32 %54, 112
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = lshr i32 %1662, 16
  %1664 = and i32 %1663, 255
  %1665 = uitofp i32 %1664 to float
  %1666 = fmul fast float %1665, 0x3F80101020000000
  %1667 = fmul fast float %1666, %1659
  %1668 = fmul fast float %1666, %1647
  %1669 = fmul fast float %1666, %1657
  br label %1670

; <label>:1670                                    ; preds = %1655, %1640
  %1671 = phi float [ %1667, %1655 ], [ 0.000000e+00, %1640 ]
  %1672 = phi float [ %1668, %1655 ], [ 0.000000e+00, %1640 ]
  %1673 = phi float [ %1669, %1655 ], [ 0.000000e+00, %1640 ]
  %1674 = and i32 %1650, 2048
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1684, label %1676

; <label>:1676                                    ; preds = %1670
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = shl i32 %1678, 4
  %1680 = and i32 %1679, 32752
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = fmul fast float %1681, %1648
  %1683 = call float @dx.op.binary.f32(i32 35, float %1682, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1684

; <label>:1684                                    ; preds = %1676, %1670, %1632
  %1685 = phi float [ %1671, %1676 ], [ %1671, %1670 ], [ 0.000000e+00, %1632 ]
  %1686 = phi float [ %1672, %1676 ], [ %1672, %1670 ], [ 0.000000e+00, %1632 ]
  %1687 = phi float [ %1673, %1676 ], [ %1673, %1670 ], [ 0.000000e+00, %1632 ]
  %1688 = phi float [ %1683, %1676 ], [ 0x3F70101020000000, %1670 ], [ 0x3F70101020000000, %1632 ]
  %1689 = add i32 %54, 112
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = lshr i32 %1691, 8
  %1695 = and i32 %1694, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1505, float %1506, float %1507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = fmul fast float %1696, %1697
  %1699 = fadd fast float %1698, %1693
  %1700 = fmul fast float %1699, 0x3F70101020000000
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  br i1 %1104, label %1702, label %1710

; <label>:1702                                    ; preds = %1684
  %1703 = fsub fast float 1.000000e+00, %1285
  %1704 = fmul fast float %1703, %1088
  %1705 = fmul fast float %1703, %1089
  %1706 = fmul fast float %1703, %1090
  %1707 = fmul fast float %1703, %1091
  %1708 = fmul fast float %1703, %1092
  %1709 = fmul fast float %1703, %1093
  br label %1710

; <label>:1710                                    ; preds = %1702, %1684
  %1711 = phi float [ %1704, %1702 ], [ %1088, %1684 ]
  %1712 = phi float [ %1705, %1702 ], [ %1089, %1684 ]
  %1713 = phi float [ %1706, %1702 ], [ %1090, %1684 ]
  %1714 = phi float [ %1707, %1702 ], [ %1091, %1684 ]
  %1715 = phi float [ %1708, %1702 ], [ %1092, %1684 ]
  %1716 = phi float [ %1709, %1702 ], [ %1093, %1684 ]
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 3
  %1720 = icmp eq i32 %1719, 3
  br i1 %1720, label %1799, label %1721

; <label>:1721                                    ; preds = %1710
  %1722 = and i32 %1718, 16
  %1723 = icmp ne i32 %1722, 0
  %1724 = select i1 %1723, float %1285, float 0.000000e+00
  %1725 = icmp eq i32 %1719, 0
  br i1 %1725, label %1726, label %1754

; <label>:1726                                    ; preds = %1721
  %1727 = and i32 %1718, 64
  %1728 = icmp ne i32 %1727, 0
  %1729 = select i1 %1728, float %1285, float 0.000000e+00
  %1730 = fsub fast float %1505, %1711
  %1731 = fsub fast float %1506, %1712
  %1732 = fsub fast float %1507, %1713
  %1733 = fmul fast float %1724, %1730
  %1734 = fmul fast float %1724, %1731
  %1735 = fmul fast float %1724, %1732
  %1736 = fadd fast float %1733, %1711
  %1737 = fadd fast float %1734, %1712
  %1738 = fadd fast float %1735, %1713
  %1739 = fsub fast float %1491, %1097
  %1740 = fmul fast float %1724, %1739
  %1741 = fadd fast float %1740, %1097
  %1742 = fsub fast float %1633, %1714
  %1743 = fsub fast float %1634, %1715
  %1744 = fsub fast float %1635, %1716
  %1745 = fmul fast float %1729, %1742
  %1746 = fmul fast float %1729, %1743
  %1747 = fmul fast float %1729, %1744
  %1748 = fadd fast float %1745, %1714
  %1749 = fadd fast float %1746, %1715
  %1750 = fadd fast float %1747, %1716
  %1751 = fsub fast float %1701, %1102
  %1752 = fmul fast float %1724, %1751
  %1753 = fadd fast float %1752, %1102
  br label %1799

; <label>:1754                                    ; preds = %1721
  %1755 = icmp eq i32 %1719, 1
  br i1 %1755, label %1756, label %1769

; <label>:1756                                    ; preds = %1754
  %1757 = fadd fast float %1505, -1.000000e+00
  %1758 = fadd fast float %1506, -1.000000e+00
  %1759 = fadd fast float %1507, -1.000000e+00
  %1760 = fmul fast float %1724, %1757
  %1761 = fmul fast float %1724, %1758
  %1762 = fmul fast float %1724, %1759
  %1763 = fadd fast float %1760, 1.000000e+00
  %1764 = fadd fast float %1761, 1.000000e+00
  %1765 = fadd fast float %1762, 1.000000e+00
  %1766 = fmul fast float %1763, %1711
  %1767 = fmul fast float %1764, %1712
  %1768 = fmul fast float %1765, %1713
  br label %1799

; <label>:1769                                    ; preds = %1754
  %1770 = icmp eq i32 %1719, 2
  br i1 %1770, label %1771, label %1799

; <label>:1771                                    ; preds = %1769
  %1772 = call float @dx.op.unary.f32(i32 24, float %1505)  ; Sqrt(value)
  %1773 = call float @dx.op.unary.f32(i32 24, float %1506)  ; Sqrt(value)
  %1774 = call float @dx.op.unary.f32(i32 24, float %1507)  ; Sqrt(value)
  %1775 = fadd fast float %1772, -5.000000e-01
  %1776 = fadd fast float %1773, -5.000000e-01
  %1777 = fadd fast float %1774, -5.000000e-01
  %1778 = fmul fast float %1775, %1724
  %1779 = fmul fast float %1776, %1724
  %1780 = fmul fast float %1777, %1724
  %1781 = fadd fast float %1778, 5.000000e-01
  %1782 = fadd fast float %1779, 5.000000e-01
  %1783 = fadd fast float %1780, 5.000000e-01
  %1784 = fmul fast float %1781, 2.000000e+00
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1785, %1711
  %1787 = fadd fast float %1786, %1784
  %1788 = fmul fast float %1787, %1711
  %1789 = fmul fast float %1782, 2.000000e+00
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = fmul fast float %1790, %1712
  %1792 = fadd fast float %1791, %1789
  %1793 = fmul fast float %1792, %1712
  %1794 = fmul fast float %1783, 2.000000e+00
  %1795 = fsub fast float 1.000000e+00, %1794
  %1796 = fmul fast float %1795, %1713
  %1797 = fadd fast float %1796, %1794
  %1798 = fmul fast float %1797, %1713
  br label %1799

; <label>:1799                                    ; preds = %1771, %1769, %1756, %1726, %1710
  %1800 = phi float [ %1711, %1710 ], [ %1788, %1771 ], [ %1711, %1769 ], [ %1766, %1756 ], [ %1736, %1726 ]
  %1801 = phi float [ %1712, %1710 ], [ %1793, %1771 ], [ %1712, %1769 ], [ %1767, %1756 ], [ %1737, %1726 ]
  %1802 = phi float [ %1713, %1710 ], [ %1798, %1771 ], [ %1713, %1769 ], [ %1768, %1756 ], [ %1738, %1726 ]
  %1803 = phi float [ %1714, %1710 ], [ %1714, %1771 ], [ %1714, %1769 ], [ %1714, %1756 ], [ %1748, %1726 ]
  %1804 = phi float [ %1715, %1710 ], [ %1715, %1771 ], [ %1715, %1769 ], [ %1715, %1756 ], [ %1749, %1726 ]
  %1805 = phi float [ %1716, %1710 ], [ %1716, %1771 ], [ %1716, %1769 ], [ %1716, %1756 ], [ %1750, %1726 ]
  %1806 = phi float [ %1097, %1710 ], [ %1097, %1771 ], [ %1097, %1769 ], [ %1097, %1756 ], [ %1741, %1726 ]
  %1807 = phi float [ %1102, %1710 ], [ %1102, %1771 ], [ %1102, %1769 ], [ %1102, %1756 ], [ %1753, %1726 ]
  %1808 = and i32 %1718, 12
  %1809 = icmp eq i32 %1808, 12
  br i1 %1809, label %1916, label %1810

; <label>:1810                                    ; preds = %1799
  %1811 = and i32 %1718, 2097184
  %1812 = icmp eq i32 %1811, 2097184
  %1813 = select i1 %1812, float %1285, float 0.000000e+00
  %1814 = and i32 %1718, 4194336
  %1815 = icmp eq i32 %1814, 4194336
  %1816 = select i1 %1815, float %1285, float 0.000000e+00
  %1817 = and i32 %1718, 8388640
  %1818 = icmp eq i32 %1817, 8388640
  %1819 = select i1 %1818, float %1285, float 0.000000e+00
  %1820 = and i32 %1718, 2048
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %1285, float 0.000000e+00
  %1823 = and i32 %1718, 8192
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %1285, float 0.000000e+00
  %1826 = icmp eq i32 %1808, 0
  br i1 %1826, label %1827, label %1852

; <label>:1827                                    ; preds = %1810
  %1828 = fsub fast float %1586, %1086
  %1829 = fsub fast float %1587, %1087
  %1830 = fmul fast float %1813, %1828
  %1831 = fmul fast float %1813, %1829
  %1832 = fadd fast float %1830, %1086
  %1833 = fadd fast float %1831, %1087
  %1834 = fsub fast float %1588, %1100
  %1835 = fmul fast float %1816, %1834
  %1836 = fadd fast float %1835, %1100
  %1837 = fsub fast float %1585, %1099
  %1838 = fmul fast float %1819, %1837
  %1839 = fadd fast float %1838, %1099
  %1840 = fsub fast float %1688, %1101
  %1841 = fmul fast float %1822, %1840
  %1842 = fadd fast float %1841, %1101
  %1843 = fsub fast float %1685, %1094
  %1844 = fsub fast float %1686, %1095
  %1845 = fsub fast float %1687, %1096
  %1846 = fmul fast float %1825, %1843
  %1847 = fmul fast float %1825, %1844
  %1848 = fmul fast float %1825, %1845
  %1849 = fadd fast float %1846, %1094
  %1850 = fadd fast float %1847, %1095
  %1851 = fadd fast float %1848, %1096
  br label %1916

; <label>:1852                                    ; preds = %1810
  %1853 = icmp eq i32 %1808, 4
  br i1 %1853, label %1854, label %1894

; <label>:1854                                    ; preds = %1852
  %1855 = fmul fast float %1813, %1586
  %1856 = fmul fast float %1813, %1587
  %1857 = fadd fast float %1855, %1086
  %1858 = fadd fast float %1856, %1087
  %1859 = call float @dx.op.binary.f32(i32 36, float %1100, float %1588)  ; FMin(a,b)
  %1860 = fsub fast float %1859, %1100
  %1861 = fmul fast float %1860, %1816
  %1862 = fadd fast float %1861, %1100
  %1863 = fadd fast float %1585, %1099
  %1864 = fmul fast float %1863, 0x3FF337FAE0000000
  %1865 = fmul fast float %1099, %1099
  %1866 = fmul fast float %1585, %1585
  %1867 = fadd fast float %1866, %1865
  %1868 = fmul fast float %1867, 0x3FE5152B00000000
  %1869 = fmul fast float %1099, 0xBFCC1F85E0000000
  %1870 = fmul fast float %1869, %1585
  %1871 = fadd fast float %1870, 0xBFE1363700000000
  %1872 = fadd fast float %1871, %1864
  %1873 = fsub fast float %1872, %1868
  %1874 = fmul fast float %1863, 0x3FBA6F0D00000000
  %1875 = fmul fast float %1867, 0x3FD0432880000000
  %1876 = fmul fast float %1099, 0xBFEF110800000000
  %1877 = fmul fast float %1876, %1585
  %1878 = fadd fast float %1877, 1.000000e+00
  %1879 = fsub fast float %1878, %1874
  %1880 = fadd fast float %1879, %1875
  %1881 = fdiv fast float %1873, %1880
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fsub fast float %1882, %1099
  %1884 = fmul fast float %1883, %1819
  %1885 = fadd fast float %1884, %1099
  %1886 = fmul fast float %1822, %1688
  %1887 = fadd fast float %1886, %1101
  %1888 = fmul fast float %1825, %1685
  %1889 = fmul fast float %1825, %1686
  %1890 = fmul fast float %1825, %1687
  %1891 = fadd fast float %1888, %1094
  %1892 = fadd fast float %1889, %1095
  %1893 = fadd fast float %1890, %1096
  br label %1916

; <label>:1894                                    ; preds = %1852
  %1895 = icmp eq i32 %1808, 8
  br i1 %1895, label %1896, label %1916

; <label>:1896                                    ; preds = %1894
  %1897 = fmul fast float %1813, %1586
  %1898 = fmul fast float %1813, %1587
  %1899 = fadd fast float %1897, %1086
  %1900 = fadd fast float %1898, %1087
  %1901 = call float @dx.op.binary.f32(i32 36, float %1100, float %1588)  ; FMin(a,b)
  %1902 = fsub fast float %1901, %1100
  %1903 = fmul fast float %1902, %1816
  %1904 = fadd fast float %1903, %1100
  %1905 = fsub fast float %1585, %1099
  %1906 = fmul fast float %1819, %1905
  %1907 = fadd fast float %1906, %1099
  %1908 = fmul fast float %1822, %1688
  %1909 = fadd fast float %1908, %1101
  %1910 = fmul fast float %1825, %1685
  %1911 = fmul fast float %1825, %1686
  %1912 = fmul fast float %1825, %1687
  %1913 = fadd fast float %1910, %1094
  %1914 = fadd fast float %1911, %1095
  %1915 = fadd fast float %1912, %1096
  br label %1916

; <label>:1916                                    ; preds = %1896, %1894, %1854, %1827, %1799, %1284, %1103, %1085
  %1917 = phi float [ %1086, %1799 ], [ %1086, %1284 ], [ %1086, %1085 ], [ %1899, %1896 ], [ %1086, %1894 ], [ %1857, %1854 ], [ %1832, %1827 ], [ %1086, %1103 ]
  %1918 = phi float [ %1087, %1799 ], [ %1087, %1284 ], [ %1087, %1085 ], [ %1900, %1896 ], [ %1087, %1894 ], [ %1858, %1854 ], [ %1833, %1827 ], [ %1087, %1103 ]
  %1919 = phi float [ %1800, %1799 ], [ %1088, %1284 ], [ %1088, %1085 ], [ %1800, %1896 ], [ %1800, %1894 ], [ %1800, %1854 ], [ %1800, %1827 ], [ %1088, %1103 ]
  %1920 = phi float [ %1801, %1799 ], [ %1089, %1284 ], [ %1089, %1085 ], [ %1801, %1896 ], [ %1801, %1894 ], [ %1801, %1854 ], [ %1801, %1827 ], [ %1089, %1103 ]
  %1921 = phi float [ %1802, %1799 ], [ %1090, %1284 ], [ %1090, %1085 ], [ %1802, %1896 ], [ %1802, %1894 ], [ %1802, %1854 ], [ %1802, %1827 ], [ %1090, %1103 ]
  %1922 = phi float [ %1803, %1799 ], [ %1091, %1284 ], [ %1091, %1085 ], [ %1803, %1896 ], [ %1803, %1894 ], [ %1803, %1854 ], [ %1803, %1827 ], [ %1091, %1103 ]
  %1923 = phi float [ %1804, %1799 ], [ %1092, %1284 ], [ %1092, %1085 ], [ %1804, %1896 ], [ %1804, %1894 ], [ %1804, %1854 ], [ %1804, %1827 ], [ %1092, %1103 ]
  %1924 = phi float [ %1805, %1799 ], [ %1093, %1284 ], [ %1093, %1085 ], [ %1805, %1896 ], [ %1805, %1894 ], [ %1805, %1854 ], [ %1805, %1827 ], [ %1093, %1103 ]
  %1925 = phi float [ %1094, %1799 ], [ %1094, %1284 ], [ %1094, %1085 ], [ %1913, %1896 ], [ %1094, %1894 ], [ %1891, %1854 ], [ %1849, %1827 ], [ %1094, %1103 ]
  %1926 = phi float [ %1095, %1799 ], [ %1095, %1284 ], [ %1095, %1085 ], [ %1914, %1896 ], [ %1095, %1894 ], [ %1892, %1854 ], [ %1850, %1827 ], [ %1095, %1103 ]
  %1927 = phi float [ %1096, %1799 ], [ %1096, %1284 ], [ %1096, %1085 ], [ %1915, %1896 ], [ %1096, %1894 ], [ %1893, %1854 ], [ %1851, %1827 ], [ %1096, %1103 ]
  %1928 = phi float [ %1806, %1799 ], [ %1097, %1284 ], [ %1097, %1085 ], [ %1806, %1896 ], [ %1806, %1894 ], [ %1806, %1854 ], [ %1806, %1827 ], [ %1097, %1103 ]
  %1929 = phi float [ %1099, %1799 ], [ %1099, %1284 ], [ %1099, %1085 ], [ %1907, %1896 ], [ %1099, %1894 ], [ %1885, %1854 ], [ %1839, %1827 ], [ %1099, %1103 ]
  %1930 = phi float [ %1100, %1799 ], [ %1100, %1284 ], [ %1100, %1085 ], [ %1904, %1896 ], [ %1100, %1894 ], [ %1862, %1854 ], [ %1836, %1827 ], [ %1100, %1103 ]
  %1931 = phi float [ %1101, %1799 ], [ %1101, %1284 ], [ %1101, %1085 ], [ %1909, %1896 ], [ %1101, %1894 ], [ %1887, %1854 ], [ %1842, %1827 ], [ %1101, %1103 ]
  %1932 = phi float [ %1807, %1799 ], [ %1102, %1284 ], [ %1102, %1085 ], [ %1807, %1896 ], [ %1807, %1894 ], [ %1807, %1854 ], [ %1807, %1827 ], [ %1102, %1103 ]
  br i1 %433, label %2746, label %1933

; <label>:1933                                    ; preds = %1916
  %1934 = icmp ult i32 %489, 3
  %1935 = add i32 %54, 56
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %54, 60
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = or i32 %1940, %1937
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %2746, label %1943

; <label>:1943                                    ; preds = %1933
  %1944 = and i32 %1937, 262144
  %1945 = icmp ne i32 %1944, 0
  %1946 = select i1 %1945, float %59, float 1.000000e+00
  %1947 = select i1 %1945, float %60, float 0.000000e+00
  %1948 = select i1 %1945, float %61, float 0.000000e+00
  %1949 = select i1 %1945, float %62, float 1.000000e+00
  %1950 = select i1 %1945, float %63, float %91
  %1951 = select i1 %1945, float %64, float %92
  %1952 = add i32 %54, 316
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = lshr i32 %1954, 16
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = fmul fast float %1956, 0x3F50624DE0000000
  %1958 = add i32 %54, 120
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = lshr i32 %1960, 16
  %1962 = and i32 %1961, 255
  %1963 = lshr i32 %1960, 24
  %1964 = add i32 %54, 324
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 65535
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = lshr i32 %1966, 16
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = add i32 %54, 64
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = lshr i32 %1973, 22
  %1975 = shl nuw nsw i32 %1974, 5
  %1976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1975)  ; LegacyF16ToF32(value)
  %1977 = shl i32 %1973, 4
  %1978 = and i32 %1977, 32752
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = lshr i32 %1973, 7
  %1981 = and i32 %1980, 32752
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 3
  %1985 = fmul fast float %1984, 1.000000e+03
  %1986 = fmul fast float %383, %1985
  %1987 = call float @dx.op.unary.f32(i32 22, float %1986)  ; Frc(value)
  %1988 = fadd fast float %1987, %373
  %1989 = fmul fast float %384, %1985
  %1990 = call float @dx.op.unary.f32(i32 22, float %1989)  ; Frc(value)
  %1991 = fadd fast float %1990, %375
  %1992 = fmul fast float %1957, %1985
  %1993 = call float @dx.op.unary.f32(i32 22, float %1992)  ; Frc(value)
  %1994 = fmul fast float %1993, 0x401921FB60000000
  %1995 = fadd fast float %1994, %1976
  %1996 = call float @dx.op.unary.f32(i32 13, float %1995)  ; Sin(value)
  %1997 = call float @dx.op.unary.f32(i32 12, float %1995)  ; Cos(value)
  %1998 = fsub fast float -0.000000e+00, %1996
  %1999 = fadd fast float %1950, -5.000000e-01
  %2000 = fadd fast float %1951, -5.000000e-01
  %2001 = fmul fast float %1968, %1999
  %2002 = fmul fast float %1970, %2000
  %2003 = fadd fast float %2001, 5.000000e-01
  %2004 = fadd fast float %2002, 5.000000e-01
  %2005 = fmul fast float %1979, %2003
  %2006 = fmul fast float %1982, %2004
  %2007 = fmul fast float %1997, %2005
  %2008 = call float @dx.op.tertiary.f32(i32 46, float %1998, float %2006, float %2007)  ; FMad(a,b,c)
  %2009 = fmul fast float %1996, %2005
  %2010 = call float @dx.op.tertiary.f32(i32 46, float %1997, float %2006, float %2009)  ; FMad(a,b,c)
  %2011 = fadd fast float %1988, %2008
  %2012 = fadd fast float %1991, %2010
  %2013 = icmp ugt i32 %1962, 1
  %2014 = icmp ugt i32 %1960, 33554431
  %2015 = or i1 %2014, %2013
  br i1 %2015, label %2016, label %2041

; <label>:2016                                    ; preds = %1943
  %2017 = add i32 %54, 260
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = lshr i32 %2019, 16
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %1984, %2021
  %2023 = call float @dx.op.unary.f32(i32 22, float %2022)  ; Frc(value)
  %2024 = mul nuw nsw i32 %1962, %1963
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2023, %2025
  %2027 = call float @dx.op.unary.f32(i32 27, float %2026)  ; Round_ni(value)
  %2028 = fptoui float %2027 to i32
  %2029 = urem i32 %2028, %1962
  %2030 = udiv i32 %2028, %1963
  %2031 = call float @dx.op.unary.f32(i32 22, float %2011)  ; Frc(value)
  %2032 = call float @dx.op.unary.f32(i32 22, float %2012)  ; Frc(value)
  %2033 = uitofp i32 %2029 to float
  %2034 = uitofp i32 %2030 to float
  %2035 = fadd fast float %2031, %2033
  %2036 = fadd fast float %2032, %2034
  %2037 = uitofp i32 %1962 to float
  %2038 = uitofp i32 %1963 to float
  %2039 = fdiv fast float %2035, %2037
  %2040 = fdiv fast float %2036, %2038
  br label %2041

; <label>:2041                                    ; preds = %2016, %1943
  %2042 = phi float [ %2039, %2016 ], [ %2011, %1943 ]
  %2043 = phi float [ %2040, %2016 ], [ %2012, %1943 ]
  %2044 = and i32 %1937, 256
  %2045 = icmp eq i32 %2044, 0
  br i1 %2045, label %2092, label %2046

; <label>:2046                                    ; preds = %2041
  %2047 = add i32 %54, 432
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = add i32 %2049, 0
  %2051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2051, %dx.types.Handle %106, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = add i32 %54, 132
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = shl i32 %2056, 4
  %2058 = and i32 %2057, 32752
  %2059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2058)  ; LegacyF16ToF32(value)
  %2060 = lshr i32 %2056, 7
  %2061 = and i32 %2060, 32752
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = fsub fast float 1.000000e+00, %485
  %2064 = call float @dx.op.binary.f32(i32 35, float %2063, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2065 = bitcast float %485 to i32
  %2066 = sitofp i32 %2065 to float
  %2067 = fadd fast float %2066, 0xC1CFBF8940000000
  %2068 = fmul fast float %2062, %2067
  %2069 = fadd fast float %2068, 0x41CFBF8940000000
  %2070 = fptosi float %2069 to i32
  %2071 = bitcast i32 %2070 to float
  %2072 = bitcast float %2064 to i32
  %2073 = sitofp i32 %2072 to float
  %2074 = fadd fast float %2073, 0xC1CFBF8940000000
  %2075 = fmul fast float %2074, %2062
  %2076 = fadd fast float %2075, 0x41CFBF8940000000
  %2077 = fptosi float %2076 to i32
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %2071, %2059
  %2080 = fmul fast float %2078, %2059
  %2081 = fsub fast float %2064, %2079
  %2082 = fadd fast float %2080, %2064
  %2083 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2084 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2085 = fsub fast float %2053, %2083
  %2086 = fsub fast float %2084, %2083
  %2087 = bitcast float %2086 to i32
  %2088 = sub nsw i32 2129859010, %2087
  %2089 = bitcast i32 %2088 to float
  %2090 = fmul fast float %2089, %2085
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  br label %2092

; <label>:2092                                    ; preds = %2046, %2041
  %2093 = phi float [ %2091, %2046 ], [ %485, %2041 ]
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = and i32 %2095, 128
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %2114, label %2098

; <label>:2098                                    ; preds = %2092
  %2099 = add i32 %54, 416
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %2101, 0
  %2103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2103, %dx.types.Handle %106, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 524288
  %2109 = icmp ne i32 %2108, 0
  %2110 = fcmp fast ogt float %2105, 0x3FE0101020000000
  %2111 = select i1 %2110, float 1.000000e+00, float 0.000000e+00
  %2112 = select i1 %2109, float %2111, float %2105
  %2113 = fmul fast float %2112, %2093
  br label %2114

; <label>:2114                                    ; preds = %2098, %2092
  %2115 = phi float [ %2113, %2098 ], [ %2093, %2092 ]
  %2116 = fcmp fast ult float %2115, 0x3F70101020000000
  br i1 %2116, label %2746, label %2117

; <label>:2117                                    ; preds = %2114
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 16
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2320, label %2122

; <label>:2122                                    ; preds = %2117
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = add i32 %54, 368
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2129, %dx.types.Handle %105, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = extractvalue %dx.types.ResRet.f32 %2130, 3
  %2135 = and i32 %2124, 255
  %2136 = uitofp i32 %2135 to float
  %2137 = lshr i32 %2124, 8
  %2138 = and i32 %2137, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2134, %2136
  %2141 = fadd fast float %2140, %2139
  %2142 = fmul fast float %2141, 0x3F70101000000000
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 512
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2155, label %2147

; <label>:2147                                    ; preds = %2122
  %2148 = add i32 %54, 448
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = add i32 %2150, 0
  %2152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2152, %dx.types.Handle %106, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  br label %2155

; <label>:2155                                    ; preds = %2147, %2122
  %2156 = phi float [ %2154, %2147 ], [ 1.000000e+00, %2122 ]
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 33554432
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2267, label %2161

; <label>:2161                                    ; preds = %2155
  %2162 = add i32 %54, 256
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 65535
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = lshr i32 %2164, 16
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = add i32 %54, 260
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 65535
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = lshr i32 %2175, 24
  %2177 = uitofp i32 %2176 to float
  %2178 = fmul fast float %2177, 0x3F70101020000000
  %2179 = and i32 %2175, 255
  %2180 = uitofp i32 %2179 to float
  %2181 = fmul fast float %2180, 0x3F70101020000000
  %2182 = lshr i32 %2175, 8
  %2183 = and i32 %2182, 255
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2184, 0x3F70101020000000
  %2186 = lshr i32 %2175, 16
  %2187 = and i32 %2186, 255
  %2188 = uitofp i32 %2187 to float
  %2189 = fmul fast float %2188, 0x3F70101020000000
  %2190 = add i32 %54, 252
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = lshr i32 %2192, 24
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = and i32 %2192, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = fmul fast float %2197, 0x3F70101020000000
  %2199 = lshr i32 %2192, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = fmul fast float %2201, 0x3F70101020000000
  %2203 = lshr i32 %2192, 16
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = fmul fast float %2205, 0x3F70101020000000
  %2207 = bitcast float %2131 to i32
  %2208 = ashr i32 %2207, 1
  %2209 = sub nsw i32 1597463174, %2208
  %2210 = bitcast i32 %2209 to float
  %2211 = fmul fast float %2131, 5.000000e-01
  %2212 = fmul fast float %2210, %2210
  %2213 = fmul fast float %2212, %2211
  %2214 = fsub fast float 1.500000e+00, %2213
  %2215 = fmul fast float %2210, %2131
  %2216 = fmul fast float %2215, %2214
  %2217 = bitcast float %2132 to i32
  %2218 = ashr i32 %2217, 1
  %2219 = sub nsw i32 1597463174, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2132, 5.000000e-01
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float 1.500000e+00, %2223
  %2225 = fmul fast float %2220, %2132
  %2226 = fmul fast float %2225, %2224
  %2227 = bitcast float %2133 to i32
  %2228 = ashr i32 %2227, 1
  %2229 = sub nsw i32 1597463174, %2228
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2133, 5.000000e-01
  %2232 = fmul fast float %2230, %2230
  %2233 = fmul fast float %2232, %2231
  %2234 = fsub fast float 1.500000e+00, %2233
  %2235 = fmul fast float %2230, %2133
  %2236 = fmul fast float %2235, %2234
  %2237 = fsub fast float %2216, %2198
  %2238 = fsub fast float %2226, %2202
  %2239 = fsub fast float %2236, %2206
  %2240 = fmul fast float %2237, %2166
  %2241 = fmul fast float %2238, %2168
  %2242 = fmul fast float %2239, %2173
  %2243 = fadd fast float %2240, %2181
  %2244 = fadd fast float %2241, %2185
  %2245 = fadd fast float %2242, %2189
  %2246 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2247 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2248 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2249 = fmul fast float %2246, %2246
  %2250 = fmul fast float %2247, %2247
  %2251 = fmul fast float %2248, %2248
  %2252 = fsub fast float %2249, %2131
  %2253 = fsub fast float %2250, %2132
  %2254 = fsub fast float %2251, %2133
  %2255 = fmul fast float %2252, %2156
  %2256 = fmul fast float %2253, %2156
  %2257 = fmul fast float %2254, %2156
  %2258 = fadd fast float %2255, %2131
  %2259 = fadd fast float %2256, %2132
  %2260 = fadd fast float %2257, %2133
  %2261 = fadd fast float %2178, %2142
  %2262 = fsub fast float %2261, %2195
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fsub fast float %2263, %2142
  %2265 = fmul fast float %2264, %2156
  %2266 = fadd fast float %2265, %2142
  br label %2320

; <label>:2267                                    ; preds = %2155
  %2268 = and i32 %2158, 134217728
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2304, label %2270

; <label>:2270                                    ; preds = %2267
  %2271 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %2273 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2274 = fadd fast float %2271, -5.000000e-01
  %2275 = fadd fast float %2272, -5.000000e-01
  %2276 = fadd fast float %2273, -5.000000e-01
  %2277 = fmul fast float %2274, %2156
  %2278 = fmul fast float %2275, %2156
  %2279 = fmul fast float %2276, %2156
  %2280 = fadd fast float %2277, 5.000000e-01
  %2281 = fadd fast float %2278, 5.000000e-01
  %2282 = fadd fast float %2279, 5.000000e-01
  %2283 = call float @dx.op.unary.f32(i32 24, float %2131)  ; Sqrt(value)
  %2284 = call float @dx.op.unary.f32(i32 24, float %2132)  ; Sqrt(value)
  %2285 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2286 = fmul fast float %2280, 2.000000e+00
  %2287 = fsub fast float 1.000000e+00, %2286
  %2288 = fmul fast float %2287, %2283
  %2289 = fadd fast float %2288, %2286
  %2290 = fmul fast float %2289, %2283
  %2291 = fmul fast float %2281, 2.000000e+00
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = fmul fast float %2292, %2284
  %2294 = fadd fast float %2293, %2291
  %2295 = fmul fast float %2294, %2284
  %2296 = fmul fast float %2282, 2.000000e+00
  %2297 = fsub fast float 1.000000e+00, %2296
  %2298 = fmul fast float %2297, %2285
  %2299 = fadd fast float %2298, %2296
  %2300 = fmul fast float %2299, %2285
  %2301 = fmul fast float %2290, %2290
  %2302 = fmul fast float %2295, %2295
  %2303 = fmul fast float %2300, %2300
  br label %2320

; <label>:2304                                    ; preds = %2267
  %2305 = fmul fast float %360, %360
  %2306 = fmul fast float %364, %364
  %2307 = fmul fast float %368, %368
  %2308 = fadd fast float %2305, -1.000000e+00
  %2309 = fadd fast float %2306, -1.000000e+00
  %2310 = fadd fast float %2307, -1.000000e+00
  %2311 = fmul fast float %2156, %2308
  %2312 = fmul fast float %2156, %2309
  %2313 = fmul fast float %2156, %2310
  %2314 = fadd fast float %2311, 1.000000e+00
  %2315 = fadd fast float %2312, 1.000000e+00
  %2316 = fadd fast float %2313, 1.000000e+00
  %2317 = fmul fast float %2314, %2131
  %2318 = fmul fast float %2315, %2132
  %2319 = fmul fast float %2316, %2133
  br label %2320

; <label>:2320                                    ; preds = %2304, %2270, %2161, %2117
  %2321 = phi float [ %2266, %2161 ], [ %2142, %2270 ], [ %2142, %2304 ], [ 0x3FA23C0BE0000000, %2117 ]
  %2322 = phi float [ %2258, %2161 ], [ %2301, %2270 ], [ %2317, %2304 ], [ 1.000000e+00, %2117 ]
  %2323 = phi float [ %2259, %2161 ], [ %2302, %2270 ], [ %2318, %2304 ], [ 1.000000e+00, %2117 ]
  %2324 = phi float [ %2260, %2161 ], [ %2303, %2270 ], [ %2319, %2304 ], [ 1.000000e+00, %2117 ]
  %2325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.i32 %2325, 1
  %2327 = and i32 %2326, 1
  %2328 = icmp ne i32 %2327, 0
  %2329 = add i32 %54, 356
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 32
  %2333 = icmp ne i32 %2332, 0
  %2334 = and i1 %2328, %2333
  %2335 = select i1 %2334, float 1.000000e+00, float %2322
  %2336 = select i1 %2334, float 0x3FD3333340000000, float %2323
  %2337 = select i1 %2334, float 0x3FD3333340000000, float %2324
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 32
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2414, label %2342

; <label>:2342                                    ; preds = %2320
  %2343 = add i32 %54, 124
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %54, 384
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = add i32 %2348, 0
  %2350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2350, %dx.types.Handle %105, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.ResRet.f32 %2351, 3
  %2356 = and i32 %2345, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = lshr i32 %2345, 8
  %2359 = and i32 %2358, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = lshr i32 %2345, 16
  %2362 = and i32 %2361, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101000000000
  %2365 = fmul fast float %2352, %2357
  %2366 = fadd fast float %2365, %2360
  %2367 = fmul fast float %2366, 0x3F70101000000000
  %2368 = fadd fast float %2353, -5.000000e-01
  %2369 = fadd fast float %2355, -5.000000e-01
  %2370 = fmul fast float %2368, %2364
  %2371 = fmul fast float %2369, %2364
  %2372 = fadd fast float %2370, 5.000000e-01
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = fmul fast float %2372, 2.000000e+00
  %2375 = fadd fast float %2374, -1.000000e+00
  %2376 = fmul fast float %2373, 2.000000e+00
  %2377 = fadd fast float %2376, -1.000000e+00
  %2378 = fadd fast float %2375, %2377
  %2379 = fmul fast float %2378, 5.000000e-01
  %2380 = fsub fast float %2375, %2377
  %2381 = fmul fast float %2380, 5.000000e-01
  %2382 = call float @dx.op.unary.f32(i32 6, float %2379)  ; FAbs(value)
  %2383 = fsub fast float 1.000000e+00, %2382
  %2384 = call float @dx.op.unary.f32(i32 6, float %2381)  ; FAbs(value)
  %2385 = fsub fast float %2383, %2384
  %2386 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2381, float %2385, float %2379, float %2381, float %2385)  ; Dot3(ax,ay,az,bx,by,bz)
  %2387 = call float @dx.op.unary.f32(i32 25, float %2386)  ; Rsqrt(value)
  %2388 = fmul fast float %2379, %2387
  %2389 = fmul fast float %2381, %2387
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 67108864
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2410, label %2394

; <label>:2394                                    ; preds = %2342
  %2395 = add i32 %54, 312
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 65535
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 65535
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = lshr i32 %2397, 16
  %2405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2404)  ; LegacyF16ToF32(value)
  %2406 = fsub fast float %2367, %2405
  %2407 = fmul fast float %2406, %2399
  %2408 = fadd fast float %2407, %2403
  %2409 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  br label %2410

; <label>:2410                                    ; preds = %2394, %2342
  %2411 = phi float [ %2409, %2394 ], [ %2367, %2342 ]
  %2412 = call float @dx.op.dot2.f32(i32 54, float %2388, float %2389, float %1946, float %1947)  ; Dot2(ax,ay,bx,by)
  %2413 = call float @dx.op.dot2.f32(i32 54, float %2388, float %2389, float %1948, float %1949)  ; Dot2(ax,ay,bx,by)
  br label %2414

; <label>:2414                                    ; preds = %2410, %2320
  %2415 = phi float [ %2411, %2410 ], [ 0x3FD6666660000000, %2320 ]
  %2416 = phi float [ %2412, %2410 ], [ 0.000000e+00, %2320 ]
  %2417 = phi float [ %2413, %2410 ], [ 0.000000e+00, %2320 ]
  %2418 = phi float [ %2354, %2410 ], [ 1.000000e+00, %2320 ]
  %2419 = add i32 %54, 192
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 22
  %2423 = shl nuw nsw i32 %2422, 5
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 64
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2462, label %2429

; <label>:2429                                    ; preds = %2414
  %2430 = add i32 %54, 400
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = add i32 %2432, 0
  %2434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 131072
  %2438 = icmp eq i32 %2437, 0
  %2439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2434, %dx.types.Handle %105, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = fmul fast float %2440, %348
  %2444 = fmul fast float %2441, %351
  %2445 = fmul fast float %2442, %354
  br i1 %2438, label %2452, label %2446

; <label>:2446                                    ; preds = %2429
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2449 = fmul fast float %2448, %2443
  %2450 = fmul fast float %2448, %2444
  %2451 = fmul fast float %2448, %2445
  br label %2452

; <label>:2452                                    ; preds = %2446, %2429
  %2453 = phi float [ %2449, %2446 ], [ %2443, %2429 ]
  %2454 = phi float [ %2450, %2446 ], [ %2444, %2429 ]
  %2455 = phi float [ %2451, %2446 ], [ %2445, %2429 ]
  %2456 = fmul fast float %2453, %2424
  %2457 = select i1 %247, float %2456, float %2453
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2454, float %2455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = select i1 %247, float 0.000000e+00, float %2453
  %2460 = select i1 %247, float %2458, float %2454
  %2461 = select i1 %247, float 0.000000e+00, float %2455
  br label %2462

; <label>:2462                                    ; preds = %2452, %2414
  %2463 = phi float [ %2459, %2452 ], [ 0.000000e+00, %2414 ]
  %2464 = phi float [ %2460, %2452 ], [ 0.000000e+00, %2414 ]
  %2465 = phi float [ %2461, %2452 ], [ 0.000000e+00, %2414 ]
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 10240
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2514, label %2470

; <label>:2470                                    ; preds = %2462
  %2471 = add i32 %54, 464
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = add i32 %2473, 0
  %2475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2475, %dx.types.Handle %106, float %2042, float %2043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 1
  %2478 = extractvalue %dx.types.ResRet.f32 %2476, 3
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 1048576
  %2482 = icmp ne i32 %2481, 0
  %2483 = and i32 %2480, 8192
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2500, label %2485

; <label>:2485                                    ; preds = %2470
  %2486 = extractvalue %dx.types.ResRet.f32 %2476, 2
  %2487 = select i1 %2482, float %2486, float %2477
  %2488 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2489 = select i1 %2482, float %2488, float %2477
  %2490 = add i32 %54, 128
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = lshr i32 %2492, 16
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F80101020000000
  %2497 = fmul fast float %2496, %2489
  %2498 = fmul fast float %2496, %2477
  %2499 = fmul fast float %2496, %2487
  br label %2500

; <label>:2500                                    ; preds = %2485, %2470
  %2501 = phi float [ %2497, %2485 ], [ 0.000000e+00, %2470 ]
  %2502 = phi float [ %2498, %2485 ], [ 0.000000e+00, %2470 ]
  %2503 = phi float [ %2499, %2485 ], [ 0.000000e+00, %2470 ]
  %2504 = and i32 %2480, 2048
  %2505 = icmp eq i32 %2504, 0
  br i1 %2505, label %2514, label %2506

; <label>:2506                                    ; preds = %2500
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = shl i32 %2508, 4
  %2510 = and i32 %2509, 32752
  %2511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2510)  ; LegacyF16ToF32(value)
  %2512 = fmul fast float %2511, %2478
  %2513 = call float @dx.op.binary.f32(i32 35, float %2512, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2514

; <label>:2514                                    ; preds = %2506, %2500, %2462
  %2515 = phi float [ %2501, %2506 ], [ %2501, %2500 ], [ 0.000000e+00, %2462 ]
  %2516 = phi float [ %2502, %2506 ], [ %2502, %2500 ], [ 0.000000e+00, %2462 ]
  %2517 = phi float [ %2503, %2506 ], [ %2503, %2500 ], [ 0.000000e+00, %2462 ]
  %2518 = phi float [ %2513, %2506 ], [ 0x3F70101020000000, %2500 ], [ 0x3F70101020000000, %2462 ]
  %2519 = add i32 %54, 128
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2521, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2335, float %2336, float %2337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2526, %2527
  %2529 = fadd fast float %2528, %2523
  %2530 = fmul fast float %2529, 0x3F70101020000000
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br i1 %1934, label %2532, label %2540

; <label>:2532                                    ; preds = %2514
  %2533 = fsub fast float 1.000000e+00, %2115
  %2534 = fmul fast float %2533, %1919
  %2535 = fmul fast float %2533, %1920
  %2536 = fmul fast float %2533, %1921
  %2537 = fmul fast float %2533, %1922
  %2538 = fmul fast float %2533, %1923
  %2539 = fmul fast float %2533, %1924
  br label %2540

; <label>:2540                                    ; preds = %2532, %2514
  %2541 = phi float [ %2534, %2532 ], [ %1919, %2514 ]
  %2542 = phi float [ %2535, %2532 ], [ %1920, %2514 ]
  %2543 = phi float [ %2536, %2532 ], [ %1921, %2514 ]
  %2544 = phi float [ %2537, %2532 ], [ %1922, %2514 ]
  %2545 = phi float [ %2538, %2532 ], [ %1923, %2514 ]
  %2546 = phi float [ %2539, %2532 ], [ %1924, %2514 ]
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 3
  %2550 = icmp eq i32 %2549, 3
  br i1 %2550, label %2629, label %2551

; <label>:2551                                    ; preds = %2540
  %2552 = and i32 %2548, 16
  %2553 = icmp ne i32 %2552, 0
  %2554 = select i1 %2553, float %2115, float 0.000000e+00
  %2555 = icmp eq i32 %2549, 0
  br i1 %2555, label %2556, label %2584

; <label>:2556                                    ; preds = %2551
  %2557 = and i32 %2548, 64
  %2558 = icmp ne i32 %2557, 0
  %2559 = select i1 %2558, float %2115, float 0.000000e+00
  %2560 = fsub fast float %2335, %2541
  %2561 = fsub fast float %2336, %2542
  %2562 = fsub fast float %2337, %2543
  %2563 = fmul fast float %2554, %2560
  %2564 = fmul fast float %2554, %2561
  %2565 = fmul fast float %2554, %2562
  %2566 = fadd fast float %2563, %2541
  %2567 = fadd fast float %2564, %2542
  %2568 = fadd fast float %2565, %2543
  %2569 = fsub fast float %2321, %1928
  %2570 = fmul fast float %2554, %2569
  %2571 = fadd fast float %2570, %1928
  %2572 = fsub fast float %2463, %2544
  %2573 = fsub fast float %2464, %2545
  %2574 = fsub fast float %2465, %2546
  %2575 = fmul fast float %2559, %2572
  %2576 = fmul fast float %2559, %2573
  %2577 = fmul fast float %2559, %2574
  %2578 = fadd fast float %2575, %2544
  %2579 = fadd fast float %2576, %2545
  %2580 = fadd fast float %2577, %2546
  %2581 = fsub fast float %2531, %1932
  %2582 = fmul fast float %2554, %2581
  %2583 = fadd fast float %2582, %1932
  br label %2629

; <label>:2584                                    ; preds = %2551
  %2585 = icmp eq i32 %2549, 1
  br i1 %2585, label %2586, label %2599

; <label>:2586                                    ; preds = %2584
  %2587 = fadd fast float %2335, -1.000000e+00
  %2588 = fadd fast float %2336, -1.000000e+00
  %2589 = fadd fast float %2337, -1.000000e+00
  %2590 = fmul fast float %2554, %2587
  %2591 = fmul fast float %2554, %2588
  %2592 = fmul fast float %2554, %2589
  %2593 = fadd fast float %2590, 1.000000e+00
  %2594 = fadd fast float %2591, 1.000000e+00
  %2595 = fadd fast float %2592, 1.000000e+00
  %2596 = fmul fast float %2593, %2541
  %2597 = fmul fast float %2594, %2542
  %2598 = fmul fast float %2595, %2543
  br label %2629

; <label>:2599                                    ; preds = %2584
  %2600 = icmp eq i32 %2549, 2
  br i1 %2600, label %2601, label %2629

; <label>:2601                                    ; preds = %2599
  %2602 = call float @dx.op.unary.f32(i32 24, float %2335)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %2336)  ; Sqrt(value)
  %2604 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fadd fast float %2604, -5.000000e-01
  %2608 = fmul fast float %2605, %2554
  %2609 = fmul fast float %2606, %2554
  %2610 = fmul fast float %2607, %2554
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = fadd fast float %2610, 5.000000e-01
  %2614 = fmul fast float %2611, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2541
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2541
  %2619 = fmul fast float %2612, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2620, %2542
  %2622 = fadd fast float %2621, %2619
  %2623 = fmul fast float %2622, %2542
  %2624 = fmul fast float %2613, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2543
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2543
  br label %2629

; <label>:2629                                    ; preds = %2601, %2599, %2586, %2556, %2540
  %2630 = phi float [ %2541, %2540 ], [ %2618, %2601 ], [ %2541, %2599 ], [ %2596, %2586 ], [ %2566, %2556 ]
  %2631 = phi float [ %2542, %2540 ], [ %2623, %2601 ], [ %2542, %2599 ], [ %2597, %2586 ], [ %2567, %2556 ]
  %2632 = phi float [ %2543, %2540 ], [ %2628, %2601 ], [ %2543, %2599 ], [ %2598, %2586 ], [ %2568, %2556 ]
  %2633 = phi float [ %2544, %2540 ], [ %2544, %2601 ], [ %2544, %2599 ], [ %2544, %2586 ], [ %2578, %2556 ]
  %2634 = phi float [ %2545, %2540 ], [ %2545, %2601 ], [ %2545, %2599 ], [ %2545, %2586 ], [ %2579, %2556 ]
  %2635 = phi float [ %2546, %2540 ], [ %2546, %2601 ], [ %2546, %2599 ], [ %2546, %2586 ], [ %2580, %2556 ]
  %2636 = phi float [ %1928, %2540 ], [ %1928, %2601 ], [ %1928, %2599 ], [ %1928, %2586 ], [ %2571, %2556 ]
  %2637 = phi float [ %1932, %2540 ], [ %1932, %2601 ], [ %1932, %2599 ], [ %1932, %2586 ], [ %2583, %2556 ]
  %2638 = and i32 %2548, 12
  %2639 = icmp eq i32 %2638, 12
  br i1 %2639, label %2746, label %2640

; <label>:2640                                    ; preds = %2629
  %2641 = and i32 %2548, 2097184
  %2642 = icmp eq i32 %2641, 2097184
  %2643 = select i1 %2642, float %2115, float 0.000000e+00
  %2644 = and i32 %2548, 4194336
  %2645 = icmp eq i32 %2644, 4194336
  %2646 = select i1 %2645, float %2115, float 0.000000e+00
  %2647 = and i32 %2548, 8388640
  %2648 = icmp eq i32 %2647, 8388640
  %2649 = select i1 %2648, float %2115, float 0.000000e+00
  %2650 = and i32 %2548, 2048
  %2651 = icmp ne i32 %2650, 0
  %2652 = select i1 %2651, float %2115, float 0.000000e+00
  %2653 = and i32 %2548, 8192
  %2654 = icmp ne i32 %2653, 0
  %2655 = select i1 %2654, float %2115, float 0.000000e+00
  %2656 = icmp eq i32 %2638, 0
  br i1 %2656, label %2657, label %2682

; <label>:2657                                    ; preds = %2640
  %2658 = fsub fast float %2416, %1917
  %2659 = fsub fast float %2417, %1918
  %2660 = fmul fast float %2643, %2658
  %2661 = fmul fast float %2643, %2659
  %2662 = fadd fast float %2660, %1917
  %2663 = fadd fast float %2661, %1918
  %2664 = fsub fast float %2418, %1930
  %2665 = fmul fast float %2646, %2664
  %2666 = fadd fast float %2665, %1930
  %2667 = fsub fast float %2415, %1929
  %2668 = fmul fast float %2649, %2667
  %2669 = fadd fast float %2668, %1929
  %2670 = fsub fast float %2518, %1931
  %2671 = fmul fast float %2652, %2670
  %2672 = fadd fast float %2671, %1931
  %2673 = fsub fast float %2515, %1925
  %2674 = fsub fast float %2516, %1926
  %2675 = fsub fast float %2517, %1927
  %2676 = fmul fast float %2655, %2673
  %2677 = fmul fast float %2655, %2674
  %2678 = fmul fast float %2655, %2675
  %2679 = fadd fast float %2676, %1925
  %2680 = fadd fast float %2677, %1926
  %2681 = fadd fast float %2678, %1927
  br label %2746

; <label>:2682                                    ; preds = %2640
  %2683 = icmp eq i32 %2638, 4
  br i1 %2683, label %2684, label %2724

; <label>:2684                                    ; preds = %2682
  %2685 = fmul fast float %2643, %2416
  %2686 = fmul fast float %2643, %2417
  %2687 = fadd fast float %2685, %1917
  %2688 = fadd fast float %2686, %1918
  %2689 = call float @dx.op.binary.f32(i32 36, float %1930, float %2418)  ; FMin(a,b)
  %2690 = fsub fast float %2689, %1930
  %2691 = fmul fast float %2690, %2646
  %2692 = fadd fast float %2691, %1930
  %2693 = fadd fast float %2415, %1929
  %2694 = fmul fast float %2693, 0x3FF337FAE0000000
  %2695 = fmul fast float %1929, %1929
  %2696 = fmul fast float %2415, %2415
  %2697 = fadd fast float %2696, %2695
  %2698 = fmul fast float %2697, 0x3FE5152B00000000
  %2699 = fmul fast float %1929, 0xBFCC1F85E0000000
  %2700 = fmul fast float %2699, %2415
  %2701 = fadd fast float %2700, 0xBFE1363700000000
  %2702 = fadd fast float %2701, %2694
  %2703 = fsub fast float %2702, %2698
  %2704 = fmul fast float %2693, 0x3FBA6F0D00000000
  %2705 = fmul fast float %2697, 0x3FD0432880000000
  %2706 = fmul fast float %1929, 0xBFEF110800000000
  %2707 = fmul fast float %2706, %2415
  %2708 = fadd fast float %2707, 1.000000e+00
  %2709 = fsub fast float %2708, %2704
  %2710 = fadd fast float %2709, %2705
  %2711 = fdiv fast float %2703, %2710
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fsub fast float %2712, %1929
  %2714 = fmul fast float %2713, %2649
  %2715 = fadd fast float %2714, %1929
  %2716 = fmul fast float %2652, %2518
  %2717 = fadd fast float %2716, %1931
  %2718 = fmul fast float %2655, %2515
  %2719 = fmul fast float %2655, %2516
  %2720 = fmul fast float %2655, %2517
  %2721 = fadd fast float %2718, %1925
  %2722 = fadd fast float %2719, %1926
  %2723 = fadd fast float %2720, %1927
  br label %2746

; <label>:2724                                    ; preds = %2682
  %2725 = icmp eq i32 %2638, 8
  br i1 %2725, label %2726, label %2746

; <label>:2726                                    ; preds = %2724
  %2727 = fmul fast float %2643, %2416
  %2728 = fmul fast float %2643, %2417
  %2729 = fadd fast float %2727, %1917
  %2730 = fadd fast float %2728, %1918
  %2731 = call float @dx.op.binary.f32(i32 36, float %1930, float %2418)  ; FMin(a,b)
  %2732 = fsub fast float %2731, %1930
  %2733 = fmul fast float %2732, %2646
  %2734 = fadd fast float %2733, %1930
  %2735 = fsub fast float %2415, %1929
  %2736 = fmul fast float %2649, %2735
  %2737 = fadd fast float %2736, %1929
  %2738 = fmul fast float %2652, %2518
  %2739 = fadd fast float %2738, %1931
  %2740 = fmul fast float %2655, %2515
  %2741 = fmul fast float %2655, %2516
  %2742 = fmul fast float %2655, %2517
  %2743 = fadd fast float %2740, %1925
  %2744 = fadd fast float %2741, %1926
  %2745 = fadd fast float %2742, %1927
  br label %2746

; <label>:2746                                    ; preds = %2726, %2724, %2684, %2657, %2629, %2114, %1933, %1916
  %2747 = phi float [ %1917, %2629 ], [ %1917, %2114 ], [ %1917, %1916 ], [ %2729, %2726 ], [ %1917, %2724 ], [ %2687, %2684 ], [ %2662, %2657 ], [ %1917, %1933 ]
  %2748 = phi float [ %1918, %2629 ], [ %1918, %2114 ], [ %1918, %1916 ], [ %2730, %2726 ], [ %1918, %2724 ], [ %2688, %2684 ], [ %2663, %2657 ], [ %1918, %1933 ]
  %2749 = phi float [ %2630, %2629 ], [ %1919, %2114 ], [ %1919, %1916 ], [ %2630, %2726 ], [ %2630, %2724 ], [ %2630, %2684 ], [ %2630, %2657 ], [ %1919, %1933 ]
  %2750 = phi float [ %2631, %2629 ], [ %1920, %2114 ], [ %1920, %1916 ], [ %2631, %2726 ], [ %2631, %2724 ], [ %2631, %2684 ], [ %2631, %2657 ], [ %1920, %1933 ]
  %2751 = phi float [ %2632, %2629 ], [ %1921, %2114 ], [ %1921, %1916 ], [ %2632, %2726 ], [ %2632, %2724 ], [ %2632, %2684 ], [ %2632, %2657 ], [ %1921, %1933 ]
  %2752 = phi float [ %2633, %2629 ], [ %1922, %2114 ], [ %1922, %1916 ], [ %2633, %2726 ], [ %2633, %2724 ], [ %2633, %2684 ], [ %2633, %2657 ], [ %1922, %1933 ]
  %2753 = phi float [ %2634, %2629 ], [ %1923, %2114 ], [ %1923, %1916 ], [ %2634, %2726 ], [ %2634, %2724 ], [ %2634, %2684 ], [ %2634, %2657 ], [ %1923, %1933 ]
  %2754 = phi float [ %2635, %2629 ], [ %1924, %2114 ], [ %1924, %1916 ], [ %2635, %2726 ], [ %2635, %2724 ], [ %2635, %2684 ], [ %2635, %2657 ], [ %1924, %1933 ]
  %2755 = phi float [ %1925, %2629 ], [ %1925, %2114 ], [ %1925, %1916 ], [ %2743, %2726 ], [ %1925, %2724 ], [ %2721, %2684 ], [ %2679, %2657 ], [ %1925, %1933 ]
  %2756 = phi float [ %1926, %2629 ], [ %1926, %2114 ], [ %1926, %1916 ], [ %2744, %2726 ], [ %1926, %2724 ], [ %2722, %2684 ], [ %2680, %2657 ], [ %1926, %1933 ]
  %2757 = phi float [ %1927, %2629 ], [ %1927, %2114 ], [ %1927, %1916 ], [ %2745, %2726 ], [ %1927, %2724 ], [ %2723, %2684 ], [ %2681, %2657 ], [ %1927, %1933 ]
  %2758 = phi float [ %2636, %2629 ], [ %1928, %2114 ], [ %1928, %1916 ], [ %2636, %2726 ], [ %2636, %2724 ], [ %2636, %2684 ], [ %2636, %2657 ], [ %1928, %1933 ]
  %2759 = phi float [ %1929, %2629 ], [ %1929, %2114 ], [ %1929, %1916 ], [ %2737, %2726 ], [ %1929, %2724 ], [ %2715, %2684 ], [ %2669, %2657 ], [ %1929, %1933 ]
  %2760 = phi float [ %1930, %2629 ], [ %1930, %2114 ], [ %1930, %1916 ], [ %2734, %2726 ], [ %1930, %2724 ], [ %2692, %2684 ], [ %2666, %2657 ], [ %1930, %1933 ]
  %2761 = phi float [ %1931, %2629 ], [ %1931, %2114 ], [ %1931, %1916 ], [ %2739, %2726 ], [ %1931, %2724 ], [ %2717, %2684 ], [ %2672, %2657 ], [ %1931, %1933 ]
  %2762 = phi float [ %2637, %2629 ], [ %1932, %2114 ], [ %1932, %1916 ], [ %2637, %2726 ], [ %2637, %2724 ], [ %2637, %2684 ], [ %2637, %2657 ], [ %1932, %1933 ]
  br i1 %435, label %3576, label %2763

; <label>:2763                                    ; preds = %2746
  %2764 = icmp ult i32 %489, 4
  %2765 = add i32 %54, 72
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %54, 76
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = or i32 %2770, %2767
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %3576, label %2773

; <label>:2773                                    ; preds = %2763
  %2774 = and i32 %2767, 262144
  %2775 = icmp ne i32 %2774, 0
  %2776 = select i1 %2775, float %59, float 1.000000e+00
  %2777 = select i1 %2775, float %60, float 0.000000e+00
  %2778 = select i1 %2775, float %61, float 0.000000e+00
  %2779 = select i1 %2775, float %62, float 1.000000e+00
  %2780 = select i1 %2775, float %63, float %91
  %2781 = select i1 %2775, float %64, float %92
  %2782 = add i32 %54, 332
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = lshr i32 %2784, 16
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = fmul fast float %2786, 0x3F50624DE0000000
  %2788 = add i32 %54, 136
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = lshr i32 %2790, 16
  %2792 = and i32 %2791, 255
  %2793 = lshr i32 %2790, 24
  %2794 = add i32 %54, 340
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = and i32 %2796, 65535
  %2798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2797)  ; LegacyF16ToF32(value)
  %2799 = lshr i32 %2796, 16
  %2800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2799)  ; LegacyF16ToF32(value)
  %2801 = add i32 %54, 80
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 22
  %2805 = shl nuw nsw i32 %2804, 5
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = shl i32 %2803, 4
  %2808 = and i32 %2807, 32752
  %2809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2808)  ; LegacyF16ToF32(value)
  %2810 = lshr i32 %2803, 7
  %2811 = and i32 %2810, 32752
  %2812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2811)  ; LegacyF16ToF32(value)
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 3
  %2815 = fmul fast float %2814, 1.000000e+03
  %2816 = fmul fast float %425, %2815
  %2817 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2818 = fadd fast float %2817, %415
  %2819 = fmul fast float %426, %2815
  %2820 = call float @dx.op.unary.f32(i32 22, float %2819)  ; Frc(value)
  %2821 = fadd fast float %2820, %417
  %2822 = fmul fast float %2787, %2815
  %2823 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2824 = fmul fast float %2823, 0x401921FB60000000
  %2825 = fadd fast float %2824, %2806
  %2826 = call float @dx.op.unary.f32(i32 13, float %2825)  ; Sin(value)
  %2827 = call float @dx.op.unary.f32(i32 12, float %2825)  ; Cos(value)
  %2828 = fsub fast float -0.000000e+00, %2826
  %2829 = fadd fast float %2780, -5.000000e-01
  %2830 = fadd fast float %2781, -5.000000e-01
  %2831 = fmul fast float %2798, %2829
  %2832 = fmul fast float %2800, %2830
  %2833 = fadd fast float %2831, 5.000000e-01
  %2834 = fadd fast float %2832, 5.000000e-01
  %2835 = fmul fast float %2809, %2833
  %2836 = fmul fast float %2812, %2834
  %2837 = fmul fast float %2827, %2835
  %2838 = call float @dx.op.tertiary.f32(i32 46, float %2828, float %2836, float %2837)  ; FMad(a,b,c)
  %2839 = fmul fast float %2826, %2835
  %2840 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2836, float %2839)  ; FMad(a,b,c)
  %2841 = fadd fast float %2818, %2838
  %2842 = fadd fast float %2821, %2840
  %2843 = icmp ugt i32 %2792, 1
  %2844 = icmp ugt i32 %2790, 33554431
  %2845 = or i1 %2844, %2843
  br i1 %2845, label %2846, label %2871

; <label>:2846                                    ; preds = %2773
  %2847 = add i32 %54, 276
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = lshr i32 %2849, 16
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = fmul fast float %2814, %2851
  %2853 = call float @dx.op.unary.f32(i32 22, float %2852)  ; Frc(value)
  %2854 = mul nuw nsw i32 %2792, %2793
  %2855 = uitofp i32 %2854 to float
  %2856 = fmul fast float %2853, %2855
  %2857 = call float @dx.op.unary.f32(i32 27, float %2856)  ; Round_ni(value)
  %2858 = fptoui float %2857 to i32
  %2859 = urem i32 %2858, %2792
  %2860 = udiv i32 %2858, %2793
  %2861 = call float @dx.op.unary.f32(i32 22, float %2841)  ; Frc(value)
  %2862 = call float @dx.op.unary.f32(i32 22, float %2842)  ; Frc(value)
  %2863 = uitofp i32 %2859 to float
  %2864 = uitofp i32 %2860 to float
  %2865 = fadd fast float %2861, %2863
  %2866 = fadd fast float %2862, %2864
  %2867 = uitofp i32 %2792 to float
  %2868 = uitofp i32 %2793 to float
  %2869 = fdiv fast float %2865, %2867
  %2870 = fdiv fast float %2866, %2868
  br label %2871

; <label>:2871                                    ; preds = %2846, %2773
  %2872 = phi float [ %2869, %2846 ], [ %2841, %2773 ]
  %2873 = phi float [ %2870, %2846 ], [ %2842, %2773 ]
  %2874 = and i32 %2767, 256
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2922, label %2876

; <label>:2876                                    ; preds = %2871
  %2877 = add i32 %54, 436
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %2879, 0
  %2881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2881, %dx.types.Handle %106, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = add i32 %54, 148
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = shl i32 %2886, 4
  %2888 = and i32 %2887, 32752
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = lshr i32 %2886, 7
  %2891 = and i32 %2890, 32752
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = fsub fast float 1.000000e+00, %484
  %2894 = call float @dx.op.binary.f32(i32 35, float %2893, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2895 = bitcast float %484 to i32
  %2896 = sitofp i32 %2895 to float
  %2897 = fadd fast float %2896, 0xC1CFBF8940000000
  %2898 = fmul fast float %2892, %2897
  %2899 = fadd fast float %2898, 0x41CFBF8940000000
  %2900 = fptosi float %2899 to i32
  %2901 = bitcast i32 %2900 to float
  %2902 = bitcast float %2894 to i32
  %2903 = sitofp i32 %2902 to float
  %2904 = fadd fast float %2903, 0xC1CFBF8940000000
  %2905 = fmul fast float %2904, %2892
  %2906 = fadd fast float %2905, 0x41CFBF8940000000
  %2907 = fptosi float %2906 to i32
  %2908 = bitcast i32 %2907 to float
  %2909 = fmul fast float %2901, %2889
  %2910 = fmul fast float %2908, %2889
  %2911 = fsub fast float %2894, %2909
  %2912 = fadd fast float %2910, %2894
  %2913 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2914 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  %2915 = fsub fast float %2883, %2913
  %2916 = fsub fast float %2914, %2913
  %2917 = bitcast float %2916 to i32
  %2918 = sub nsw i32 2129859010, %2917
  %2919 = bitcast i32 %2918 to float
  %2920 = fmul fast float %2919, %2915
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  br label %2922

; <label>:2922                                    ; preds = %2876, %2871
  %2923 = phi float [ %2921, %2876 ], [ %484, %2871 ]
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 128
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2944, label %2928

; <label>:2928                                    ; preds = %2922
  %2929 = add i32 %54, 420
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %106, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 524288
  %2939 = icmp ne i32 %2938, 0
  %2940 = fcmp fast ogt float %2935, 0x3FE0101020000000
  %2941 = select i1 %2940, float 1.000000e+00, float 0.000000e+00
  %2942 = select i1 %2939, float %2941, float %2935
  %2943 = fmul fast float %2942, %2923
  br label %2944

; <label>:2944                                    ; preds = %2928, %2922
  %2945 = phi float [ %2943, %2928 ], [ %2923, %2922 ]
  %2946 = fcmp fast ult float %2945, 0x3F70101020000000
  br i1 %2946, label %3576, label %2947

; <label>:2947                                    ; preds = %2944
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 16
  %2951 = icmp eq i32 %2950, 0
  br i1 %2951, label %3150, label %2952

; <label>:2952                                    ; preds = %2947
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = add i32 %54, 372
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %105, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = extractvalue %dx.types.ResRet.f32 %2960, 3
  %2965 = and i32 %2954, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = lshr i32 %2954, 8
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2964, %2966
  %2971 = fadd fast float %2970, %2969
  %2972 = fmul fast float %2971, 0x3F70101000000000
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 512
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %2985, label %2977

; <label>:2977                                    ; preds = %2952
  %2978 = add i32 %54, 452
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = add i32 %2980, 0
  %2982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2982, %dx.types.Handle %106, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  br label %2985

; <label>:2985                                    ; preds = %2977, %2952
  %2986 = phi float [ %2984, %2977 ], [ 1.000000e+00, %2952 ]
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 33554432
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3097, label %2991

; <label>:2991                                    ; preds = %2985
  %2992 = add i32 %54, 272
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 65535
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = lshr i32 %2994, 16
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = add i32 %54, 276
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 65535
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = lshr i32 %3005, 24
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = and i32 %3005, 255
  %3010 = uitofp i32 %3009 to float
  %3011 = fmul fast float %3010, 0x3F70101020000000
  %3012 = lshr i32 %3005, 8
  %3013 = and i32 %3012, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101020000000
  %3016 = lshr i32 %3005, 16
  %3017 = and i32 %3016, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = fmul fast float %3018, 0x3F70101020000000
  %3020 = add i32 %54, 268
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = lshr i32 %3022, 24
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = and i32 %3022, 255
  %3027 = uitofp i32 %3026 to float
  %3028 = fmul fast float %3027, 0x3F70101020000000
  %3029 = lshr i32 %3022, 8
  %3030 = and i32 %3029, 255
  %3031 = uitofp i32 %3030 to float
  %3032 = fmul fast float %3031, 0x3F70101020000000
  %3033 = lshr i32 %3022, 16
  %3034 = and i32 %3033, 255
  %3035 = uitofp i32 %3034 to float
  %3036 = fmul fast float %3035, 0x3F70101020000000
  %3037 = bitcast float %2961 to i32
  %3038 = ashr i32 %3037, 1
  %3039 = sub nsw i32 1597463174, %3038
  %3040 = bitcast i32 %3039 to float
  %3041 = fmul fast float %2961, 5.000000e-01
  %3042 = fmul fast float %3040, %3040
  %3043 = fmul fast float %3042, %3041
  %3044 = fsub fast float 1.500000e+00, %3043
  %3045 = fmul fast float %3040, %2961
  %3046 = fmul fast float %3045, %3044
  %3047 = bitcast float %2962 to i32
  %3048 = ashr i32 %3047, 1
  %3049 = sub nsw i32 1597463174, %3048
  %3050 = bitcast i32 %3049 to float
  %3051 = fmul fast float %2962, 5.000000e-01
  %3052 = fmul fast float %3050, %3050
  %3053 = fmul fast float %3052, %3051
  %3054 = fsub fast float 1.500000e+00, %3053
  %3055 = fmul fast float %3050, %2962
  %3056 = fmul fast float %3055, %3054
  %3057 = bitcast float %2963 to i32
  %3058 = ashr i32 %3057, 1
  %3059 = sub nsw i32 1597463174, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = fmul fast float %2963, 5.000000e-01
  %3062 = fmul fast float %3060, %3060
  %3063 = fmul fast float %3062, %3061
  %3064 = fsub fast float 1.500000e+00, %3063
  %3065 = fmul fast float %3060, %2963
  %3066 = fmul fast float %3065, %3064
  %3067 = fsub fast float %3046, %3028
  %3068 = fsub fast float %3056, %3032
  %3069 = fsub fast float %3066, %3036
  %3070 = fmul fast float %3067, %2996
  %3071 = fmul fast float %3068, %2998
  %3072 = fmul fast float %3069, %3003
  %3073 = fadd fast float %3070, %3011
  %3074 = fadd fast float %3071, %3015
  %3075 = fadd fast float %3072, %3019
  %3076 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3077 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3079 = fmul fast float %3076, %3076
  %3080 = fmul fast float %3077, %3077
  %3081 = fmul fast float %3078, %3078
  %3082 = fsub fast float %3079, %2961
  %3083 = fsub fast float %3080, %2962
  %3084 = fsub fast float %3081, %2963
  %3085 = fmul fast float %3082, %2986
  %3086 = fmul fast float %3083, %2986
  %3087 = fmul fast float %3084, %2986
  %3088 = fadd fast float %3085, %2961
  %3089 = fadd fast float %3086, %2962
  %3090 = fadd fast float %3087, %2963
  %3091 = fadd fast float %3008, %2972
  %3092 = fsub fast float %3091, %3025
  %3093 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3094 = fsub fast float %3093, %2972
  %3095 = fmul fast float %3094, %2986
  %3096 = fadd fast float %3095, %2972
  br label %3150

; <label>:3097                                    ; preds = %2985
  %3098 = and i32 %2988, 134217728
  %3099 = icmp eq i32 %3098, 0
  br i1 %3099, label %3134, label %3100

; <label>:3100                                    ; preds = %3097
  %3101 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %3102 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %3103 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %3104 = fadd fast float %3101, -5.000000e-01
  %3105 = fadd fast float %3102, -5.000000e-01
  %3106 = fadd fast float %3103, -5.000000e-01
  %3107 = fmul fast float %3104, %2986
  %3108 = fmul fast float %3105, %2986
  %3109 = fmul fast float %3106, %2986
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = fadd fast float %3108, 5.000000e-01
  %3112 = fadd fast float %3109, 5.000000e-01
  %3113 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %3114 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %3115 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %3116 = fmul fast float %3110, 2.000000e+00
  %3117 = fsub fast float 1.000000e+00, %3116
  %3118 = fmul fast float %3117, %3113
  %3119 = fadd fast float %3118, %3116
  %3120 = fmul fast float %3119, %3113
  %3121 = fmul fast float %3111, 2.000000e+00
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3122, %3114
  %3124 = fadd fast float %3123, %3121
  %3125 = fmul fast float %3124, %3114
  %3126 = fmul fast float %3112, 2.000000e+00
  %3127 = fsub fast float 1.000000e+00, %3126
  %3128 = fmul fast float %3127, %3115
  %3129 = fadd fast float %3128, %3126
  %3130 = fmul fast float %3129, %3115
  %3131 = fmul fast float %3120, %3120
  %3132 = fmul fast float %3125, %3125
  %3133 = fmul fast float %3130, %3130
  br label %3150

; <label>:3134                                    ; preds = %3097
  %3135 = fmul fast float %402, %402
  %3136 = fmul fast float %406, %406
  %3137 = fmul fast float %410, %410
  %3138 = fadd fast float %3135, -1.000000e+00
  %3139 = fadd fast float %3136, -1.000000e+00
  %3140 = fadd fast float %3137, -1.000000e+00
  %3141 = fmul fast float %2986, %3138
  %3142 = fmul fast float %2986, %3139
  %3143 = fmul fast float %2986, %3140
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fmul fast float %3144, %2961
  %3148 = fmul fast float %3145, %2962
  %3149 = fmul fast float %3146, %2963
  br label %3150

; <label>:3150                                    ; preds = %3134, %3100, %2991, %2947
  %3151 = phi float [ %3096, %2991 ], [ %2972, %3100 ], [ %2972, %3134 ], [ 0x3FA23C0BE0000000, %2947 ]
  %3152 = phi float [ %3088, %2991 ], [ %3131, %3100 ], [ %3147, %3134 ], [ 1.000000e+00, %2947 ]
  %3153 = phi float [ %3089, %2991 ], [ %3132, %3100 ], [ %3148, %3134 ], [ 1.000000e+00, %2947 ]
  %3154 = phi float [ %3090, %2991 ], [ %3133, %3100 ], [ %3149, %3134 ], [ 1.000000e+00, %2947 ]
  %3155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.i32 %3155, 1
  %3157 = and i32 %3156, 1
  %3158 = icmp ne i32 %3157, 0
  %3159 = add i32 %54, 356
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 32
  %3163 = icmp ne i32 %3162, 0
  %3164 = and i1 %3158, %3163
  %3165 = select i1 %3164, float 1.000000e+00, float %3152
  %3166 = select i1 %3164, float 0x3FD3333340000000, float %3153
  %3167 = select i1 %3164, float 0x3FD3333340000000, float %3154
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 32
  %3171 = icmp eq i32 %3170, 0
  br i1 %3171, label %3244, label %3172

; <label>:3172                                    ; preds = %3150
  %3173 = add i32 %54, 140
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = add i32 %54, 388
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = add i32 %3178, 0
  %3180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3180, %dx.types.Handle %105, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.ResRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.ResRet.f32 %3181, 2
  %3185 = extractvalue %dx.types.ResRet.f32 %3181, 3
  %3186 = and i32 %3175, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = lshr i32 %3175, 8
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = lshr i32 %3175, 16
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101000000000
  %3195 = fmul fast float %3182, %3187
  %3196 = fadd fast float %3195, %3190
  %3197 = fmul fast float %3196, 0x3F70101000000000
  %3198 = fadd fast float %3183, -5.000000e-01
  %3199 = fadd fast float %3185, -5.000000e-01
  %3200 = fmul fast float %3198, %3194
  %3201 = fmul fast float %3199, %3194
  %3202 = fadd fast float %3200, 5.000000e-01
  %3203 = fadd fast float %3201, 5.000000e-01
  %3204 = fmul fast float %3202, 2.000000e+00
  %3205 = fadd fast float %3204, -1.000000e+00
  %3206 = fmul fast float %3203, 2.000000e+00
  %3207 = fadd fast float %3206, -1.000000e+00
  %3208 = fadd fast float %3205, %3207
  %3209 = fmul fast float %3208, 5.000000e-01
  %3210 = fsub fast float %3205, %3207
  %3211 = fmul fast float %3210, 5.000000e-01
  %3212 = call float @dx.op.unary.f32(i32 6, float %3209)  ; FAbs(value)
  %3213 = fsub fast float 1.000000e+00, %3212
  %3214 = call float @dx.op.unary.f32(i32 6, float %3211)  ; FAbs(value)
  %3215 = fsub fast float %3213, %3214
  %3216 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3211, float %3215, float %3209, float %3211, float %3215)  ; Dot3(ax,ay,az,bx,by,bz)
  %3217 = call float @dx.op.unary.f32(i32 25, float %3216)  ; Rsqrt(value)
  %3218 = fmul fast float %3209, %3217
  %3219 = fmul fast float %3211, %3217
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 67108864
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3240, label %3224

; <label>:3224                                    ; preds = %3172
  %3225 = add i32 %54, 328
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 65535
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 65535
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = lshr i32 %3227, 16
  %3235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3234)  ; LegacyF16ToF32(value)
  %3236 = fsub fast float %3197, %3235
  %3237 = fmul fast float %3236, %3229
  %3238 = fadd fast float %3237, %3233
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  br label %3240

; <label>:3240                                    ; preds = %3224, %3172
  %3241 = phi float [ %3239, %3224 ], [ %3197, %3172 ]
  %3242 = call float @dx.op.dot2.f32(i32 54, float %3218, float %3219, float %2776, float %2777)  ; Dot2(ax,ay,bx,by)
  %3243 = call float @dx.op.dot2.f32(i32 54, float %3218, float %3219, float %2778, float %2779)  ; Dot2(ax,ay,bx,by)
  br label %3244

; <label>:3244                                    ; preds = %3240, %3150
  %3245 = phi float [ %3241, %3240 ], [ 0x3FD6666660000000, %3150 ]
  %3246 = phi float [ %3242, %3240 ], [ 0.000000e+00, %3150 ]
  %3247 = phi float [ %3243, %3240 ], [ 0.000000e+00, %3150 ]
  %3248 = phi float [ %3184, %3240 ], [ 1.000000e+00, %3150 ]
  %3249 = add i32 %54, 208
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = lshr i32 %3251, 22
  %3253 = shl nuw nsw i32 %3252, 5
  %3254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3253)  ; LegacyF16ToF32(value)
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 64
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3292, label %3259

; <label>:3259                                    ; preds = %3244
  %3260 = add i32 %54, 404
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = add i32 %3262, 0
  %3264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 131072
  %3268 = icmp eq i32 %3267, 0
  %3269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3264, %dx.types.Handle %105, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3273 = fmul fast float %3270, %390
  %3274 = fmul fast float %3271, %393
  %3275 = fmul fast float %3272, %396
  br i1 %3268, label %3282, label %3276

; <label>:3276                                    ; preds = %3259
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = fmul fast float %3278, %3273
  %3280 = fmul fast float %3278, %3274
  %3281 = fmul fast float %3278, %3275
  br label %3282

; <label>:3282                                    ; preds = %3276, %3259
  %3283 = phi float [ %3279, %3276 ], [ %3273, %3259 ]
  %3284 = phi float [ %3280, %3276 ], [ %3274, %3259 ]
  %3285 = phi float [ %3281, %3276 ], [ %3275, %3259 ]
  %3286 = fmul fast float %3283, %3254
  %3287 = select i1 %247, float %3286, float %3283
  %3288 = call float @dx.op.dot3.f32(i32 55, float %3287, float %3284, float %3285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3289 = select i1 %247, float 0.000000e+00, float %3283
  %3290 = select i1 %247, float %3288, float %3284
  %3291 = select i1 %247, float 0.000000e+00, float %3285
  br label %3292

; <label>:3292                                    ; preds = %3282, %3244
  %3293 = phi float [ %3289, %3282 ], [ 0.000000e+00, %3244 ]
  %3294 = phi float [ %3290, %3282 ], [ 0.000000e+00, %3244 ]
  %3295 = phi float [ %3291, %3282 ], [ 0.000000e+00, %3244 ]
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = and i32 %3297, 10240
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3344, label %3300

; <label>:3300                                    ; preds = %3292
  %3301 = add i32 %54, 468
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = add i32 %3303, 0
  %3305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3305, %dx.types.Handle %106, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 1048576
  %3312 = icmp ne i32 %3311, 0
  %3313 = and i32 %3310, 8192
  %3314 = icmp eq i32 %3313, 0
  br i1 %3314, label %3330, label %3315

; <label>:3315                                    ; preds = %3300
  %3316 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3317 = select i1 %3312, float %3316, float %3307
  %3318 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3319 = select i1 %3312, float %3318, float %3307
  %3320 = add i32 %54, 144
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 16
  %3324 = and i32 %3323, 255
  %3325 = uitofp i32 %3324 to float
  %3326 = fmul fast float %3325, 0x3F80101020000000
  %3327 = fmul fast float %3326, %3319
  %3328 = fmul fast float %3326, %3307
  %3329 = fmul fast float %3326, %3317
  br label %3330

; <label>:3330                                    ; preds = %3315, %3300
  %3331 = phi float [ %3327, %3315 ], [ 0.000000e+00, %3300 ]
  %3332 = phi float [ %3328, %3315 ], [ 0.000000e+00, %3300 ]
  %3333 = phi float [ %3329, %3315 ], [ 0.000000e+00, %3300 ]
  %3334 = and i32 %3310, 2048
  %3335 = icmp eq i32 %3334, 0
  br i1 %3335, label %3344, label %3336

; <label>:3336                                    ; preds = %3330
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = shl i32 %3338, 4
  %3340 = and i32 %3339, 32752
  %3341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3340)  ; LegacyF16ToF32(value)
  %3342 = fmul fast float %3341, %3308
  %3343 = call float @dx.op.binary.f32(i32 35, float %3342, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3344

; <label>:3344                                    ; preds = %3336, %3330, %3292
  %3345 = phi float [ %3331, %3336 ], [ %3331, %3330 ], [ 0.000000e+00, %3292 ]
  %3346 = phi float [ %3332, %3336 ], [ %3332, %3330 ], [ 0.000000e+00, %3292 ]
  %3347 = phi float [ %3333, %3336 ], [ %3333, %3330 ], [ 0.000000e+00, %3292 ]
  %3348 = phi float [ %3343, %3336 ], [ 0x3F70101020000000, %3330 ], [ 0x3F70101020000000, %3292 ]
  %3349 = add i32 %54, 144
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = lshr i32 %3351, 8
  %3355 = and i32 %3354, 255
  %3356 = uitofp i32 %3355 to float
  %3357 = call float @dx.op.dot3.f32(i32 55, float %3165, float %3166, float %3167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3358 = fmul fast float %3356, %3357
  %3359 = fadd fast float %3358, %3353
  %3360 = fmul fast float %3359, 0x3F70101020000000
  %3361 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  br i1 %2764, label %3362, label %3370

; <label>:3362                                    ; preds = %3344
  %3363 = fsub fast float 1.000000e+00, %2945
  %3364 = fmul fast float %3363, %2749
  %3365 = fmul fast float %3363, %2750
  %3366 = fmul fast float %3363, %2751
  %3367 = fmul fast float %3363, %2752
  %3368 = fmul fast float %3363, %2753
  %3369 = fmul fast float %3363, %2754
  br label %3370

; <label>:3370                                    ; preds = %3362, %3344
  %3371 = phi float [ %3364, %3362 ], [ %2749, %3344 ]
  %3372 = phi float [ %3365, %3362 ], [ %2750, %3344 ]
  %3373 = phi float [ %3366, %3362 ], [ %2751, %3344 ]
  %3374 = phi float [ %3367, %3362 ], [ %2752, %3344 ]
  %3375 = phi float [ %3368, %3362 ], [ %2753, %3344 ]
  %3376 = phi float [ %3369, %3362 ], [ %2754, %3344 ]
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, 3
  %3380 = icmp eq i32 %3379, 3
  br i1 %3380, label %3459, label %3381

; <label>:3381                                    ; preds = %3370
  %3382 = and i32 %3378, 16
  %3383 = icmp ne i32 %3382, 0
  %3384 = select i1 %3383, float %2945, float 0.000000e+00
  %3385 = icmp eq i32 %3379, 0
  br i1 %3385, label %3386, label %3414

; <label>:3386                                    ; preds = %3381
  %3387 = and i32 %3378, 64
  %3388 = icmp ne i32 %3387, 0
  %3389 = select i1 %3388, float %2945, float 0.000000e+00
  %3390 = fsub fast float %3165, %3371
  %3391 = fsub fast float %3166, %3372
  %3392 = fsub fast float %3167, %3373
  %3393 = fmul fast float %3384, %3390
  %3394 = fmul fast float %3384, %3391
  %3395 = fmul fast float %3384, %3392
  %3396 = fadd fast float %3393, %3371
  %3397 = fadd fast float %3394, %3372
  %3398 = fadd fast float %3395, %3373
  %3399 = fsub fast float %3151, %2758
  %3400 = fmul fast float %3384, %3399
  %3401 = fadd fast float %3400, %2758
  %3402 = fsub fast float %3293, %3374
  %3403 = fsub fast float %3294, %3375
  %3404 = fsub fast float %3295, %3376
  %3405 = fmul fast float %3389, %3402
  %3406 = fmul fast float %3389, %3403
  %3407 = fmul fast float %3389, %3404
  %3408 = fadd fast float %3405, %3374
  %3409 = fadd fast float %3406, %3375
  %3410 = fadd fast float %3407, %3376
  %3411 = fsub fast float %3361, %2762
  %3412 = fmul fast float %3384, %3411
  %3413 = fadd fast float %3412, %2762
  br label %3459

; <label>:3414                                    ; preds = %3381
  %3415 = icmp eq i32 %3379, 1
  br i1 %3415, label %3416, label %3429

; <label>:3416                                    ; preds = %3414
  %3417 = fadd fast float %3165, -1.000000e+00
  %3418 = fadd fast float %3166, -1.000000e+00
  %3419 = fadd fast float %3167, -1.000000e+00
  %3420 = fmul fast float %3384, %3417
  %3421 = fmul fast float %3384, %3418
  %3422 = fmul fast float %3384, %3419
  %3423 = fadd fast float %3420, 1.000000e+00
  %3424 = fadd fast float %3421, 1.000000e+00
  %3425 = fadd fast float %3422, 1.000000e+00
  %3426 = fmul fast float %3423, %3371
  %3427 = fmul fast float %3424, %3372
  %3428 = fmul fast float %3425, %3373
  br label %3459

; <label>:3429                                    ; preds = %3414
  %3430 = icmp eq i32 %3379, 2
  br i1 %3430, label %3431, label %3459

; <label>:3431                                    ; preds = %3429
  %3432 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3433 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3434 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3435 = fadd fast float %3432, -5.000000e-01
  %3436 = fadd fast float %3433, -5.000000e-01
  %3437 = fadd fast float %3434, -5.000000e-01
  %3438 = fmul fast float %3435, %3384
  %3439 = fmul fast float %3436, %3384
  %3440 = fmul fast float %3437, %3384
  %3441 = fadd fast float %3438, 5.000000e-01
  %3442 = fadd fast float %3439, 5.000000e-01
  %3443 = fadd fast float %3440, 5.000000e-01
  %3444 = fmul fast float %3441, 2.000000e+00
  %3445 = fsub fast float 1.000000e+00, %3444
  %3446 = fmul fast float %3445, %3371
  %3447 = fadd fast float %3446, %3444
  %3448 = fmul fast float %3447, %3371
  %3449 = fmul fast float %3442, 2.000000e+00
  %3450 = fsub fast float 1.000000e+00, %3449
  %3451 = fmul fast float %3450, %3372
  %3452 = fadd fast float %3451, %3449
  %3453 = fmul fast float %3452, %3372
  %3454 = fmul fast float %3443, 2.000000e+00
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fmul fast float %3455, %3373
  %3457 = fadd fast float %3456, %3454
  %3458 = fmul fast float %3457, %3373
  br label %3459

; <label>:3459                                    ; preds = %3431, %3429, %3416, %3386, %3370
  %3460 = phi float [ %3371, %3370 ], [ %3448, %3431 ], [ %3371, %3429 ], [ %3426, %3416 ], [ %3396, %3386 ]
  %3461 = phi float [ %3372, %3370 ], [ %3453, %3431 ], [ %3372, %3429 ], [ %3427, %3416 ], [ %3397, %3386 ]
  %3462 = phi float [ %3373, %3370 ], [ %3458, %3431 ], [ %3373, %3429 ], [ %3428, %3416 ], [ %3398, %3386 ]
  %3463 = phi float [ %3374, %3370 ], [ %3374, %3431 ], [ %3374, %3429 ], [ %3374, %3416 ], [ %3408, %3386 ]
  %3464 = phi float [ %3375, %3370 ], [ %3375, %3431 ], [ %3375, %3429 ], [ %3375, %3416 ], [ %3409, %3386 ]
  %3465 = phi float [ %3376, %3370 ], [ %3376, %3431 ], [ %3376, %3429 ], [ %3376, %3416 ], [ %3410, %3386 ]
  %3466 = phi float [ %2758, %3370 ], [ %2758, %3431 ], [ %2758, %3429 ], [ %2758, %3416 ], [ %3401, %3386 ]
  %3467 = phi float [ %2762, %3370 ], [ %2762, %3431 ], [ %2762, %3429 ], [ %2762, %3416 ], [ %3413, %3386 ]
  %3468 = and i32 %3378, 12
  %3469 = icmp eq i32 %3468, 12
  br i1 %3469, label %3576, label %3470

; <label>:3470                                    ; preds = %3459
  %3471 = and i32 %3378, 2097184
  %3472 = icmp eq i32 %3471, 2097184
  %3473 = select i1 %3472, float %2945, float 0.000000e+00
  %3474 = and i32 %3378, 4194336
  %3475 = icmp eq i32 %3474, 4194336
  %3476 = select i1 %3475, float %2945, float 0.000000e+00
  %3477 = and i32 %3378, 8388640
  %3478 = icmp eq i32 %3477, 8388640
  %3479 = select i1 %3478, float %2945, float 0.000000e+00
  %3480 = and i32 %3378, 2048
  %3481 = icmp ne i32 %3480, 0
  %3482 = select i1 %3481, float %2945, float 0.000000e+00
  %3483 = and i32 %3378, 8192
  %3484 = icmp ne i32 %3483, 0
  %3485 = select i1 %3484, float %2945, float 0.000000e+00
  %3486 = icmp eq i32 %3468, 0
  br i1 %3486, label %3487, label %3512

; <label>:3487                                    ; preds = %3470
  %3488 = fsub fast float %3246, %2747
  %3489 = fsub fast float %3247, %2748
  %3490 = fmul fast float %3473, %3488
  %3491 = fmul fast float %3473, %3489
  %3492 = fadd fast float %3490, %2747
  %3493 = fadd fast float %3491, %2748
  %3494 = fsub fast float %3248, %2760
  %3495 = fmul fast float %3476, %3494
  %3496 = fadd fast float %3495, %2760
  %3497 = fsub fast float %3245, %2759
  %3498 = fmul fast float %3479, %3497
  %3499 = fadd fast float %3498, %2759
  %3500 = fsub fast float %3348, %2761
  %3501 = fmul fast float %3482, %3500
  %3502 = fadd fast float %3501, %2761
  %3503 = fsub fast float %3345, %2755
  %3504 = fsub fast float %3346, %2756
  %3505 = fsub fast float %3347, %2757
  %3506 = fmul fast float %3485, %3503
  %3507 = fmul fast float %3485, %3504
  %3508 = fmul fast float %3485, %3505
  %3509 = fadd fast float %3506, %2755
  %3510 = fadd fast float %3507, %2756
  %3511 = fadd fast float %3508, %2757
  br label %3576

; <label>:3512                                    ; preds = %3470
  %3513 = icmp eq i32 %3468, 4
  br i1 %3513, label %3514, label %3554

; <label>:3514                                    ; preds = %3512
  %3515 = fmul fast float %3473, %3246
  %3516 = fmul fast float %3473, %3247
  %3517 = fadd fast float %3515, %2747
  %3518 = fadd fast float %3516, %2748
  %3519 = call float @dx.op.binary.f32(i32 36, float %2760, float %3248)  ; FMin(a,b)
  %3520 = fsub fast float %3519, %2760
  %3521 = fmul fast float %3520, %3476
  %3522 = fadd fast float %3521, %2760
  %3523 = fadd fast float %3245, %2759
  %3524 = fmul fast float %3523, 0x3FF337FAE0000000
  %3525 = fmul fast float %2759, %2759
  %3526 = fmul fast float %3245, %3245
  %3527 = fadd fast float %3526, %3525
  %3528 = fmul fast float %3527, 0x3FE5152B00000000
  %3529 = fmul fast float %2759, 0xBFCC1F85E0000000
  %3530 = fmul fast float %3529, %3245
  %3531 = fadd fast float %3530, 0xBFE1363700000000
  %3532 = fadd fast float %3531, %3524
  %3533 = fsub fast float %3532, %3528
  %3534 = fmul fast float %3523, 0x3FBA6F0D00000000
  %3535 = fmul fast float %3527, 0x3FD0432880000000
  %3536 = fmul fast float %2759, 0xBFEF110800000000
  %3537 = fmul fast float %3536, %3245
  %3538 = fadd fast float %3537, 1.000000e+00
  %3539 = fsub fast float %3538, %3534
  %3540 = fadd fast float %3539, %3535
  %3541 = fdiv fast float %3533, %3540
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3543 = fsub fast float %3542, %2759
  %3544 = fmul fast float %3543, %3479
  %3545 = fadd fast float %3544, %2759
  %3546 = fmul fast float %3482, %3348
  %3547 = fadd fast float %3546, %2761
  %3548 = fmul fast float %3485, %3345
  %3549 = fmul fast float %3485, %3346
  %3550 = fmul fast float %3485, %3347
  %3551 = fadd fast float %3548, %2755
  %3552 = fadd fast float %3549, %2756
  %3553 = fadd fast float %3550, %2757
  br label %3576

; <label>:3554                                    ; preds = %3512
  %3555 = icmp eq i32 %3468, 8
  br i1 %3555, label %3556, label %3576

; <label>:3556                                    ; preds = %3554
  %3557 = fmul fast float %3473, %3246
  %3558 = fmul fast float %3473, %3247
  %3559 = fadd fast float %3557, %2747
  %3560 = fadd fast float %3558, %2748
  %3561 = call float @dx.op.binary.f32(i32 36, float %2760, float %3248)  ; FMin(a,b)
  %3562 = fsub fast float %3561, %2760
  %3563 = fmul fast float %3562, %3476
  %3564 = fadd fast float %3563, %2760
  %3565 = fsub fast float %3245, %2759
  %3566 = fmul fast float %3479, %3565
  %3567 = fadd fast float %3566, %2759
  %3568 = fmul fast float %3482, %3348
  %3569 = fadd fast float %3568, %2761
  %3570 = fmul fast float %3485, %3345
  %3571 = fmul fast float %3485, %3346
  %3572 = fmul fast float %3485, %3347
  %3573 = fadd fast float %3570, %2755
  %3574 = fadd fast float %3571, %2756
  %3575 = fadd fast float %3572, %2757
  br label %3576

; <label>:3576                                    ; preds = %3556, %3554, %3514, %3487, %3459, %2944, %2763, %2746
  %3577 = phi float [ %2747, %3459 ], [ %2747, %2944 ], [ %2747, %2746 ], [ %2747, %2763 ], [ %3492, %3487 ], [ %3517, %3514 ], [ %2747, %3554 ], [ %3559, %3556 ]
  %3578 = phi float [ %2748, %3459 ], [ %2748, %2944 ], [ %2748, %2746 ], [ %2748, %2763 ], [ %3493, %3487 ], [ %3518, %3514 ], [ %2748, %3554 ], [ %3560, %3556 ]
  %3579 = phi float [ %3460, %3459 ], [ %2749, %2944 ], [ %2749, %2746 ], [ %2749, %2763 ], [ %3460, %3487 ], [ %3460, %3514 ], [ %3460, %3554 ], [ %3460, %3556 ]
  %3580 = phi float [ %3461, %3459 ], [ %2750, %2944 ], [ %2750, %2746 ], [ %2750, %2763 ], [ %3461, %3487 ], [ %3461, %3514 ], [ %3461, %3554 ], [ %3461, %3556 ]
  %3581 = phi float [ %3462, %3459 ], [ %2751, %2944 ], [ %2751, %2746 ], [ %2751, %2763 ], [ %3462, %3487 ], [ %3462, %3514 ], [ %3462, %3554 ], [ %3462, %3556 ]
  %3582 = phi float [ %3463, %3459 ], [ %2752, %2944 ], [ %2752, %2746 ], [ %2752, %2763 ], [ %3463, %3487 ], [ %3463, %3514 ], [ %3463, %3554 ], [ %3463, %3556 ]
  %3583 = phi float [ %3464, %3459 ], [ %2753, %2944 ], [ %2753, %2746 ], [ %2753, %2763 ], [ %3464, %3487 ], [ %3464, %3514 ], [ %3464, %3554 ], [ %3464, %3556 ]
  %3584 = phi float [ %3465, %3459 ], [ %2754, %2944 ], [ %2754, %2746 ], [ %2754, %2763 ], [ %3465, %3487 ], [ %3465, %3514 ], [ %3465, %3554 ], [ %3465, %3556 ]
  %3585 = phi float [ %2755, %3459 ], [ %2755, %2944 ], [ %2755, %2746 ], [ %2755, %2763 ], [ %3509, %3487 ], [ %3551, %3514 ], [ %2755, %3554 ], [ %3573, %3556 ]
  %3586 = phi float [ %2756, %3459 ], [ %2756, %2944 ], [ %2756, %2746 ], [ %2756, %2763 ], [ %3510, %3487 ], [ %3552, %3514 ], [ %2756, %3554 ], [ %3574, %3556 ]
  %3587 = phi float [ %2757, %3459 ], [ %2757, %2944 ], [ %2757, %2746 ], [ %2757, %2763 ], [ %3511, %3487 ], [ %3553, %3514 ], [ %2757, %3554 ], [ %3575, %3556 ]
  %3588 = phi float [ %3466, %3459 ], [ %2758, %2944 ], [ %2758, %2746 ], [ %2758, %2763 ], [ %3466, %3487 ], [ %3466, %3514 ], [ %3466, %3554 ], [ %3466, %3556 ]
  %3589 = phi float [ %2759, %3459 ], [ %2759, %2944 ], [ %2759, %2746 ], [ %2759, %2763 ], [ %3499, %3487 ], [ %3545, %3514 ], [ %2759, %3554 ], [ %3567, %3556 ]
  %3590 = phi float [ %2760, %3459 ], [ %2760, %2944 ], [ %2760, %2746 ], [ %2760, %2763 ], [ %3496, %3487 ], [ %3522, %3514 ], [ %2760, %3554 ], [ %3564, %3556 ]
  %3591 = phi float [ %2761, %3459 ], [ %2761, %2944 ], [ %2761, %2746 ], [ %2761, %2763 ], [ %3502, %3487 ], [ %3547, %3514 ], [ %2761, %3554 ], [ %3569, %3556 ]
  %3592 = phi float [ %3467, %3459 ], [ %2762, %2944 ], [ %2762, %2746 ], [ %2762, %2763 ], [ %3467, %3487 ], [ %3467, %3514 ], [ %3467, %3554 ], [ %3467, %3556 ]
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = call float @dx.op.dot2.f32(i32 54, float %3577, float %3578, float %3577, float %3578)  ; Dot2(ax,ay,bx,by)
  %3596 = fmul fast float %3595, 0x3FE3333340000000
  %3597 = fsub fast float 1.000000e+00, %3596
  %3598 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3578, float %3597, float %3577, float %3578, float %3597)  ; Dot3(ax,ay,az,bx,by,bz)
  %3599 = call float @dx.op.unary.f32(i32 25, float %3598)  ; Rsqrt(value)
  %3600 = fmul fast float %3599, %3577
  %3601 = fmul fast float %3599, %3578
  %3602 = fmul fast float %3597, %3599
  %3603 = fmul fast float %3602, %116
  %3604 = fmul fast float %3602, %117
  %3605 = fmul fast float %3602, %118
  %3606 = fmul fast float %3600, %84
  %3607 = fmul fast float %3600, %85
  %3608 = fmul fast float %3600, %86
  %3609 = fadd fast float %3603, %3606
  %3610 = fadd fast float %3604, %3607
  %3611 = fadd fast float %3605, %3608
  %3612 = fmul fast float %128, %3601
  %3613 = fmul fast float %129, %3601
  %3614 = fmul fast float %130, %3601
  %3615 = fadd fast float %3609, %3612
  %3616 = fadd fast float %3610, %3613
  %3617 = fadd fast float %3611, %3614
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3615, float %3616, float %3617)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = call float @dx.op.unary.f32(i32 25, float %3618)  ; Rsqrt(value)
  %3620 = fmul fast float %3615, %3619
  %3621 = fmul fast float %3616, %3619
  %3622 = fmul fast float %3617, %3619
  %3623 = icmp eq i32 %55, 65535
  br i1 %3623, label %4191, label %3624

; <label>:3624                                    ; preds = %3576
  %3625 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3626 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3627 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3628 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3629 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3630 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3631 = fadd fast float %3625, %56
  %3632 = fadd fast float %3626, %57
  %3633 = fadd fast float %3627, %58
  %3634 = fadd fast float %3628, %56
  %3635 = fadd fast float %3629, %57
  %3636 = fadd fast float %3630, %58
  %3637 = mul i32 %55, 48
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = add i32 %3637, 16
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = add i32 %3637, 32
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = bitcast float %3652 to i32
  %3654 = fmul fast float %3639, %56
  %3655 = fmul fast float %3640, %57
  %3656 = fmul fast float %3641, %58
  %3657 = fsub fast float %3654, %3644
  %3658 = fsub fast float %3655, %3645
  %3659 = fsub fast float %3656, %3646
  %3660 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3663 = fmul fast float %3660, %3649
  %3664 = fmul fast float %3661, %3650
  %3665 = fmul fast float %3662, %3651
  %3666 = fadd fast float %3649, -1.000000e+00
  %3667 = fadd fast float %3650, -1.000000e+00
  %3668 = fadd fast float %3651, -1.000000e+00
  %3669 = call float @dx.op.unary.f32(i32 27, float %3663)  ; Round_ni(value)
  %3670 = call float @dx.op.unary.f32(i32 27, float %3664)  ; Round_ni(value)
  %3671 = call float @dx.op.unary.f32(i32 27, float %3665)  ; Round_ni(value)
  %3672 = call float @dx.op.binary.f32(i32 36, float %3669, float %3666)  ; FMin(a,b)
  %3673 = call float @dx.op.binary.f32(i32 36, float %3670, float %3667)  ; FMin(a,b)
  %3674 = call float @dx.op.binary.f32(i32 36, float %3671, float %3668)  ; FMin(a,b)
  %3675 = fmul fast float %3674, %3650
  %3676 = fadd fast float %3675, %3673
  %3677 = fmul fast float %3676, %3649
  %3678 = fadd fast float %3677, %3672
  %3679 = fptosi float %3678 to i32
  %3680 = add nsw i32 %3679, %3653
  %3681 = shl nsw i32 %3680, 2
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = lshr i32 %3683, 16
  %3685 = icmp eq i32 %3684, 0
  br i1 %3685, label %4157, label %3686

; <label>:3686                                    ; preds = %3624
  br label %3687

; <label>:3687                                    ; preds = %3811, %3686
  %3688 = phi i32 [ %3713, %3811 ], [ %3684, %3686 ]
  %3689 = phi float [ %3812, %3811 ], [ 0.000000e+00, %3686 ]
  %3690 = phi float [ %3813, %3811 ], [ %3594, %3686 ]
  %3691 = phi float [ %3814, %3811 ], [ %3592, %3686 ]
  %3692 = phi float [ %3815, %3811 ], [ 0.000000e+00, %3686 ]
  %3693 = phi float [ %3816, %3811 ], [ 0.000000e+00, %3686 ]
  %3694 = phi float [ %3817, %3811 ], [ %3585, %3686 ]
  %3695 = phi float [ %3818, %3811 ], [ %3586, %3686 ]
  %3696 = phi float [ %3819, %3811 ], [ %3587, %3686 ]
  %3697 = phi float [ %3820, %3811 ], [ %3582, %3686 ]
  %3698 = phi float [ %3821, %3811 ], [ %3583, %3686 ]
  %3699 = phi float [ %3822, %3811 ], [ %3584, %3686 ]
  %3700 = phi float [ %3823, %3811 ], [ %3620, %3686 ]
  %3701 = phi float [ %3824, %3811 ], [ %3621, %3686 ]
  %3702 = phi float [ %3825, %3811 ], [ %3622, %3686 ]
  %3703 = phi float [ %3826, %3811 ], [ %3590, %3686 ]
  %3704 = phi float [ %3827, %3811 ], [ %3589, %3686 ]
  %3705 = phi float [ %3828, %3811 ], [ 0.000000e+00, %3686 ]
  %3706 = phi float [ %3829, %3811 ], [ %3588, %3686 ]
  %3707 = phi float [ %3830, %3811 ], [ %3579, %3686 ]
  %3708 = phi float [ %3831, %3811 ], [ %3580, %3686 ]
  %3709 = phi float [ %3832, %3811 ], [ %3581, %3686 ]
  %3710 = shl nuw nsw i32 %3688, 2
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = lshr i32 %3712, 16
  %3714 = shl i32 %3712, 8
  %3715 = and i32 %3714, 16776960
  %3716 = or i32 %3715, 48
  %3717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = or i32 %3715, 64
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = extractvalue %dx.types.ResRet.i32 %3722, 1
  %3725 = or i32 %3715, 80
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 3
  %3729 = or i32 %3715, 96
  %3730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = extractvalue %dx.types.ResRet.f32 %3730, 3
  %3735 = or i32 %3715, 112
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3738 = or i32 %3715, 128
  %3739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.ResRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.ResRet.f32 %3739, 2
  %3743 = extractvalue %dx.types.ResRet.f32 %3739, 3
  %3744 = or i32 %3715, 144
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3745, 2
  %3749 = extractvalue %dx.types.ResRet.f32 %3745, 3
  %3750 = or i32 %3715, 160
  %3751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3755 = extractvalue %dx.types.ResRet.f32 %3751, 3
  %3756 = or i32 %3715, 192
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = or i32 %3715, 208
  %3760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = or i32 %3715, 248
  %3763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.ResRet.f32 %3763, 1
  %3766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.ResRet.f32 %3766, 3
  %3771 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3772 = or i32 %3715, 16
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = call float @dx.op.dot4.f32(i32 56, float %3774, float %3775, float %3776, float %3777, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3779 = or i32 %3715, 32
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3784 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3785 = call float @dx.op.dot4.f32(i32 56, float %3781, float %3782, float %3783, float %3784, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3786 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3787 = call float @dx.op.unary.f32(i32 6, float %3786)  ; FAbs(value)
  %3788 = call float @dx.op.unary.f32(i32 27, float %3778)  ; Round_ni(value)
  %3789 = call float @dx.op.unary.f32(i32 6, float %3788)  ; FAbs(value)
  %3790 = call float @dx.op.unary.f32(i32 6, float %3785)  ; FAbs(value)
  %3791 = call float @dx.op.unary.f32(i32 27, float %3790)  ; Round_ni(value)
  %3792 = fadd fast float %3789, %3787
  %3793 = fadd fast float %3792, %3791
  %3794 = fcmp fast oeq float %3793, 0.000000e+00
  %3795 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %3631, float %3632, float %3633, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3796 = call float @dx.op.dot4.f32(i32 56, float %3774, float %3775, float %3776, float %3777, float %3631, float %3632, float %3633, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3797 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %3634, float %3635, float %3636, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3798 = call float @dx.op.dot4.f32(i32 56, float %3774, float %3775, float %3776, float %3777, float %3634, float %3635, float %3636, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3799 = fsub fast float %3795, %3771
  %3800 = fsub fast float %3797, %3771
  %3801 = fsub fast float %3796, %3778
  %3802 = fsub fast float %3798, %3778
  %3803 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3806 = fadd fast float %3805, %3803
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3809 = fcmp fast ogt float %3807, %3808
  %3810 = and i1 %3794, %3809
  br i1 %3810, label %3834, label %3811

; <label>:3811                                    ; preds = %4143, %3917, %3834, %3687
  %3812 = phi float [ %3689, %3834 ], [ %3920, %3917 ], [ %3920, %4143 ], [ %3689, %3687 ]
  %3813 = phi float [ %3690, %3834 ], [ %3690, %3917 ], [ %4119, %4143 ], [ %3690, %3687 ]
  %3814 = phi float [ %3691, %3834 ], [ %3691, %3917 ], [ %4117, %4143 ], [ %3691, %3687 ]
  %3815 = phi float [ %3692, %3834 ], [ %3692, %3917 ], [ %4044, %4143 ], [ %3692, %3687 ]
  %3816 = phi float [ %3693, %3834 ], [ %3693, %3917 ], [ %4042, %4143 ], [ %3693, %3687 ]
  %3817 = phi float [ %3694, %3834 ], [ %3694, %3917 ], [ %4087, %4143 ], [ %3694, %3687 ]
  %3818 = phi float [ %3695, %3834 ], [ %3695, %3917 ], [ %4088, %4143 ], [ %3695, %3687 ]
  %3819 = phi float [ %3696, %3834 ], [ %3696, %3917 ], [ %4089, %4143 ], [ %3696, %3687 ]
  %3820 = phi float [ %3697, %3834 ], [ %3697, %3917 ], [ %4153, %4143 ], [ %3697, %3687 ]
  %3821 = phi float [ %3698, %3834 ], [ %3698, %3917 ], [ %4154, %4143 ], [ %3698, %3687 ]
  %3822 = phi float [ %3699, %3834 ], [ %3699, %3917 ], [ %4155, %4143 ], [ %3699, %3687 ]
  %3823 = phi float [ %3700, %3834 ], [ %3700, %3917 ], [ %4023, %4143 ], [ %3700, %3687 ]
  %3824 = phi float [ %3701, %3834 ], [ %3701, %3917 ], [ %4024, %4143 ], [ %3701, %3687 ]
  %3825 = phi float [ %3702, %3834 ], [ %3702, %3917 ], [ %4025, %4143 ], [ %3702, %3687 ]
  %3826 = phi float [ %3703, %3834 ], [ %3703, %3917 ], [ %4097, %4143 ], [ %3703, %3687 ]
  %3827 = phi float [ %3704, %3834 ], [ %3704, %3917 ], [ %4094, %4143 ], [ %3704, %3687 ]
  %3828 = phi float [ %3705, %3834 ], [ %3705, %3917 ], [ %4091, %4143 ], [ %3705, %3687 ]
  %3829 = phi float [ %3706, %3834 ], [ %3706, %3917 ], [ %4040, %4143 ], [ %3706, %3687 ]
  %3830 = phi float [ %3707, %3834 ], [ %3707, %3917 ], [ %4035, %4143 ], [ %3707, %3687 ]
  %3831 = phi float [ %3708, %3834 ], [ %3708, %3917 ], [ %4036, %4143 ], [ %3708, %3687 ]
  %3832 = phi float [ %3709, %3834 ], [ %3709, %3917 ], [ %4037, %4143 ], [ %3709, %3687 ]
  %3833 = icmp eq i32 %3713, 0
  br i1 %3833, label %4156, label %3687

; <label>:3834                                    ; preds = %3687
  %3835 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3836 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3837 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3841 = extractvalue %dx.types.ResRet.i32 %3722, 3
  %3842 = extractvalue %dx.types.ResRet.i32 %3722, 2
  %3843 = bitcast float %3835 to i32
  %3844 = add i32 %3841, 0
  %3845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3844, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3847 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3845, %dx.types.Handle %3846, float %3771, float %3778, float undef, float undef, i32 0, i32 0, i32 undef, float %3799, float %3801, float undef, float %3800, float %3802, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = fmul fast float %3848, %3840
  %3850 = fadd fast float %3849, %3839
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3852 = fmul fast float %3771, %3731
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3732, float %3778, float %3852)  ; FMad(a,b,c)
  %3854 = fadd fast float %3853, %3838
  %3855 = fmul fast float %3771, %3733
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3734, float %3778, float %3855)  ; FMad(a,b,c)
  %3857 = fadd fast float %3856, %3837
  %3858 = fmul fast float %3799, %3731
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3732, float %3801, float %3858)  ; FMad(a,b,c)
  %3860 = fmul fast float %3799, %3733
  %3861 = call float @dx.op.tertiary.f32(i32 46, float %3734, float %3801, float %3860)  ; FMad(a,b,c)
  %3862 = fmul fast float %3800, %3731
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3732, float %3802, float %3862)  ; FMad(a,b,c)
  %3864 = fmul fast float %3800, %3733
  %3865 = call float @dx.op.tertiary.f32(i32 46, float %3734, float %3802, float %3864)  ; FMad(a,b,c)
  %3866 = add i32 %3842, 0
  %3867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3866, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3868 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3867, %dx.types.Handle %3846, float %3854, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float %3859, float %3861, float undef, float %3863, float %3865, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = and i32 %3843, 1024
  %3871 = icmp ne i32 %3870, 0
  %3872 = fcmp fast ogt float %3869, 0x3FE0101020000000
  %3873 = uitofp i1 %3872 to float
  %3874 = select i1 %3871, float %3873, float %3869
  %3875 = and i32 %3843, 8192
  %3876 = icmp ne i32 %3875, 0
  %3877 = select i1 %3876, float %3836, float 1.000000e+00
  %3878 = fmul fast float %3771, 2.000000e+00
  %3879 = fadd fast float %3878, -1.000000e+00
  %3880 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3881 = fmul fast float %3880, %3764
  %3882 = fsub fast float %3881, %3764
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = fmul fast float %3778, 2.000000e+00
  %3885 = fadd fast float %3884, -1.000000e+00
  %3886 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3887 = fmul fast float %3886, %3765
  %3888 = fsub fast float %3887, %3765
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = fmul fast float %3790, %3727
  %3891 = fsub fast float %3890, %3727
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = fmul fast float %3851, %3877
  %3894 = fmul fast float %3893, %3848
  %3895 = fmul fast float %3894, %3883
  %3896 = fmul fast float %3895, %3874
  %3897 = fmul fast float %3896, %3889
  %3898 = fmul fast float %3897, %3892
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3901 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3902 = fsub fast float %3807, %3901
  %3903 = fmul fast float %3902, %3900
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fmul fast float %3898, %3728
  %3906 = fadd fast float %3898, %3728
  %3907 = fmul fast float %3906, %3737
  %3908 = fsub fast float %3907, %3737
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = and i32 %3843, 128
  %3911 = icmp ne i32 %3910, 0
  %3912 = select i1 %3911, float %3909, float %3905
  %3913 = fmul fast float %3912, %3904
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = fcmp fast ugt float %3913, %3915
  br i1 %3916, label %3917, label %3811

; <label>:3917                                    ; preds = %3834
  %3918 = select i1 %3876, float %3913, float 0.000000e+00
  %3919 = fadd fast float %3918, %3689
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  br i1 %3876, label %3811, label %3921

; <label>:3921                                    ; preds = %3917
  %3922 = and i32 %3843, 4
  %3923 = and i32 %3843, 8
  %3924 = add i32 %3723, 0
  %3925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3924, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3925, %dx.types.Handle %3926, float %3854, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float %3859, float %3861, float undef, float %3863, float %3865, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = bitcast float %3749 to i32
  %3933 = and i32 %3932, 255
  %3934 = uitofp i32 %3933 to float
  %3935 = lshr i32 %3932, 8
  %3936 = and i32 %3935, 255
  %3937 = uitofp i32 %3936 to float
  %3938 = fmul fast float %3931, %3934
  %3939 = fadd fast float %3938, %3937
  %3940 = fmul fast float %3939, 0x3F70101000000000
  %3941 = add i32 %3724, 0
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3942, %dx.types.Handle %3926, float %3854, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float %3859, float %3861, float undef, float %3863, float %3865, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = bitcast float %3743 to i32
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = lshr i32 %3948, 8
  %3952 = and i32 %3951, 255
  %3953 = uitofp i32 %3952 to float
  %3954 = lshr i32 %3948, 16
  %3955 = and i32 %3954, 255
  %3956 = uitofp i32 %3955 to float
  %3957 = fmul fast float %3956, 0x3F70101000000000
  %3958 = fmul fast float %3944, %3950
  %3959 = fadd fast float %3958, %3953
  %3960 = fmul fast float %3959, 0x3F70101000000000
  %3961 = fadd fast float %3945, -5.000000e-01
  %3962 = fadd fast float %3947, -5.000000e-01
  %3963 = fmul fast float %3961, %3957
  %3964 = fmul fast float %3962, %3957
  %3965 = fadd fast float %3963, 5.000000e-01
  %3966 = fadd fast float %3964, 5.000000e-01
  %3967 = fmul fast float %3928, %3752
  %3968 = fmul fast float %3929, %3753
  %3969 = fmul fast float %3930, %3754
  %3970 = fmul fast float %3965, 2.000000e+00
  %3971 = fadd fast float %3970, -1.000000e+00
  %3972 = fmul fast float %3966, 2.000000e+00
  %3973 = fadd fast float %3972, -1.000000e+00
  %3974 = fadd fast float %3971, %3973
  %3975 = fmul fast float %3974, 5.000000e-01
  %3976 = fsub fast float %3971, %3973
  %3977 = fmul fast float %3976, 5.000000e-01
  %3978 = call float @dx.op.unary.f32(i32 6, float %3975)  ; FAbs(value)
  %3979 = fsub fast float 1.000000e+00, %3978
  %3980 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3981 = fsub fast float %3979, %3980
  %3982 = call float @dx.op.dot3.f32(i32 55, float %3975, float %3977, float %3981, float %3975, float %3977, float %3981)  ; Dot3(ax,ay,az,bx,by,bz)
  %3983 = call float @dx.op.unary.f32(i32 25, float %3982)  ; Rsqrt(value)
  %3984 = fmul fast float %3975, %3983
  %3985 = fmul fast float %3977, %3983
  %3986 = fmul fast float %3983, %3981
  %3987 = fmul fast float %3986, %3718
  %3988 = fmul fast float %3986, %3719
  %3989 = fmul fast float %3986, %3720
  %3990 = fmul fast float %3984, %3740
  %3991 = fmul fast float %3984, %3741
  %3992 = fmul fast float %3984, %3742
  %3993 = fadd fast float %3990, %3987
  %3994 = fadd fast float %3991, %3988
  %3995 = fadd fast float %3992, %3989
  %3996 = fmul fast float %3985, %3746
  %3997 = fmul fast float %3985, %3747
  %3998 = fmul fast float %3985, %3748
  %3999 = fadd fast float %3993, %3996
  %4000 = fadd fast float %3994, %3997
  %4001 = fadd fast float %3995, %3998
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float %3999, float %4000, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %3999, %4003
  %4005 = fmul fast float %4000, %4003
  %4006 = fmul fast float %4001, %4003
  %4007 = icmp ne i32 %3923, 0
  %4008 = select i1 %4007, float 1.000000e+00, float 0.000000e+00
  %4009 = fmul fast float %3913, %4008
  %4010 = and i32 %3843, 1
  %4011 = icmp eq i32 %4010, 0
  br i1 %4011, label %4012, label %4016

; <label>:4012                                    ; preds = %3921
  %4013 = fsub fast float %4004, %3700
  %4014 = fsub fast float %4005, %3701
  %4015 = fsub fast float %4006, %3702
  br label %4016

; <label>:4016                                    ; preds = %4012, %3921
  %4017 = phi float [ %4013, %4012 ], [ %4004, %3921 ]
  %4018 = phi float [ %4014, %4012 ], [ %4005, %3921 ]
  %4019 = phi float [ %4015, %4012 ], [ %4006, %3921 ]
  %4020 = fmul float %4019, %4009
  %4021 = fmul float %4018, %4009
  %4022 = fmul float %4017, %4009
  %4023 = fadd fast float %4022, %3700
  %4024 = fadd fast float %4021, %3701
  %4025 = fadd fast float %4020, %3702
  %4026 = icmp ne i32 %3922, 0
  %4027 = select i1 %4026, float 1.000000e+00, float 0.000000e+00
  %4028 = fmul fast float %3913, %4027
  %4029 = fsub fast float %3967, %3707
  %4030 = fsub fast float %3968, %3708
  %4031 = fsub fast float %3969, %3709
  %4032 = fmul fast float %4029, %4028
  %4033 = fmul fast float %4030, %4028
  %4034 = fmul fast float %4031, %4028
  %4035 = fadd fast float %4032, %3707
  %4036 = fadd fast float %4033, %3708
  %4037 = fadd fast float %4034, %3709
  %4038 = fsub fast float %3940, %3706
  %4039 = fmul fast float %4038, %4028
  %4040 = fadd fast float %4039, %3706
  %4041 = fmul fast float %4028, %3693
  %4042 = fsub fast float %3693, %4041
  %4043 = fmul fast float %4028, %3692
  %4044 = fsub fast float %3692, %4043
  %4045 = bitcast float %3761 to i32
  %4046 = lshr i32 %4045, 16
  %4047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4046)  ; LegacyF16ToF32(value)
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = and i32 %4049, 1
  %4051 = icmp eq i32 %4050, 0
  br i1 %4051, label %4052, label %4077

; <label>:4052                                    ; preds = %4016
  %4053 = fadd fast float %3940, 0xBFB99999A0000000
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fmul fast float %4054, 0x3FF1C71C80000000
  %4056 = fsub fast float 1.000000e+00, %4055
  %4057 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4058 = fmul fast float %4057, %3967
  %4059 = fmul fast float %4057, %3968
  %4060 = fmul fast float %4057, %3969
  %4061 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = call float @dx.op.binary.f32(i32 35, float %4062, float %4063)  ; FMax(a,b)
  %4065 = call float @dx.op.binary.f32(i32 35, float %4061, float %4064)  ; FMax(a,b)
  %4066 = fcmp fast ogt float %4065, 0.000000e+00
  %4067 = bitcast float %4065 to i32
  %4068 = sub nsw i32 2129859010, %4067
  %4069 = bitcast i32 %4068 to float
  %4070 = select i1 %4066, float %4069, float 0.000000e+00
  %4071 = fmul fast float %4061, %4047
  %4072 = fmul fast float %4062, %4047
  %4073 = fmul fast float %4063, %4047
  %4074 = fmul fast float %4071, %4070
  %4075 = fmul fast float %4072, %4070
  %4076 = fmul fast float %4073, %4070
  br label %4077

; <label>:4077                                    ; preds = %4052, %4016
  %4078 = phi float [ %4047, %4016 ], [ %4074, %4052 ]
  %4079 = phi float [ %4047, %4016 ], [ %4075, %4052 ]
  %4080 = phi float [ %4047, %4016 ], [ %4076, %4052 ]
  %4081 = fsub fast float %4078, %3694
  %4082 = fsub fast float %4079, %3695
  %4083 = fsub fast float %4080, %3696
  %4084 = fmul fast float %4081, %4028
  %4085 = fmul fast float %4082, %4028
  %4086 = fmul fast float %4083, %4028
  %4087 = fadd fast float %4084, %3694
  %4088 = fadd fast float %4085, %3695
  %4089 = fadd fast float %4086, %3696
  %4090 = fadd fast float %3913, %3705
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fsub fast float %3960, %3704
  %4093 = fmul fast float %4092, %4009
  %4094 = fadd fast float %4093, %3704
  %4095 = fsub fast float %3946, %3703
  %4096 = fmul fast float %4095, %4009
  %4097 = fadd fast float %4096, %3703
  %4098 = call float @dx.op.dot3.f32(i32 55, float %3967, float %3968, float %3969, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4102 = fmul fast float %4101, %4098
  %4103 = fadd fast float %4102, %4100
  %4104 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4105 = bitcast float %3755 to i32
  %4106 = and i32 %4105, 65535
  %4107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4106)  ; LegacyF16ToF32(value)
  %4108 = lshr i32 %4105, 16
  %4109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4108)  ; LegacyF16ToF32(value)
  %4110 = fcmp fast oge float %4107, 0.000000e+00
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = select i1 %4110, float %4107, float %4112
  %4114 = fadd fast float %4113, %4109
  %4115 = fsub fast float %4104, %3691
  %4116 = fmul fast float %4115, %3913
  %4117 = fadd fast float %4116, %3691
  %4118 = fmul fast float %4114, %3913
  %4119 = call float @dx.op.binary.f32(i32 35, float %3690, float %4118)  ; FMax(a,b)
  %4120 = and i32 %3843, 16
  %4121 = icmp eq i32 %4120, 0
  br i1 %4121, label %4143, label %4122

; <label>:4122                                    ; preds = %4077
  %4123 = add i32 %3758, 0
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4124, %dx.types.Handle %3926, float %3854, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float %3859, float %3861, float undef, float %3863, float %3865, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = and i32 %4045, 65535
  %4130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4129)  ; LegacyF16ToF32(value)
  %4131 = fmul fast float %4126, %3752
  %4132 = fmul fast float %4127, %3753
  %4133 = fmul fast float %4128, %3754
  %4134 = and i32 %3843, 16384
  %4135 = icmp ne i32 %4134, 0
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = select i1 %4135, float %4137, float 1.000000e+00
  %4139 = fmul fast float %4138, %4130
  %4140 = fmul fast float %4131, %4139
  %4141 = fmul fast float %4132, %4139
  %4142 = fmul fast float %4133, %4139
  br label %4143

; <label>:4143                                    ; preds = %4122, %4077
  %4144 = phi float [ %4140, %4122 ], [ 0.000000e+00, %4077 ]
  %4145 = phi float [ %4141, %4122 ], [ 0.000000e+00, %4077 ]
  %4146 = phi float [ %4142, %4122 ], [ 0.000000e+00, %4077 ]
  %4147 = fsub fast float %4144, %3697
  %4148 = fsub fast float %4145, %3698
  %4149 = fsub fast float %4146, %3699
  %4150 = fmul fast float %4147, %3913
  %4151 = fmul fast float %4148, %3913
  %4152 = fmul fast float %4149, %3913
  %4153 = fadd fast float %4150, %3697
  %4154 = fadd fast float %4151, %3698
  %4155 = fadd fast float %4152, %3699
  br label %3811

; <label>:4156                                    ; preds = %3811
  br label %4157

; <label>:4157                                    ; preds = %4156, %3624
  %4158 = phi float [ 0.000000e+00, %3624 ], [ %3812, %4156 ]
  %4159 = phi float [ %3594, %3624 ], [ %3813, %4156 ]
  %4160 = phi float [ %3592, %3624 ], [ %3814, %4156 ]
  %4161 = phi float [ 0.000000e+00, %3624 ], [ %3815, %4156 ]
  %4162 = phi float [ 0.000000e+00, %3624 ], [ %3816, %4156 ]
  %4163 = phi float [ %3585, %3624 ], [ %3817, %4156 ]
  %4164 = phi float [ %3586, %3624 ], [ %3818, %4156 ]
  %4165 = phi float [ %3587, %3624 ], [ %3819, %4156 ]
  %4166 = phi float [ %3582, %3624 ], [ %3820, %4156 ]
  %4167 = phi float [ %3583, %3624 ], [ %3821, %4156 ]
  %4168 = phi float [ %3584, %3624 ], [ %3822, %4156 ]
  %4169 = phi float [ %3620, %3624 ], [ %3823, %4156 ]
  %4170 = phi float [ %3621, %3624 ], [ %3824, %4156 ]
  %4171 = phi float [ %3622, %3624 ], [ %3825, %4156 ]
  %4172 = phi float [ %3590, %3624 ], [ %3826, %4156 ]
  %4173 = phi float [ %3589, %3624 ], [ %3827, %4156 ]
  %4174 = phi float [ 0.000000e+00, %3624 ], [ %3828, %4156 ]
  %4175 = phi float [ %3588, %3624 ], [ %3829, %4156 ]
  %4176 = phi float [ %3579, %3624 ], [ %3830, %4156 ]
  %4177 = phi float [ %3580, %3624 ], [ %3831, %4156 ]
  %4178 = phi float [ %3581, %3624 ], [ %3832, %4156 ]
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float %4169, float %4170, float %4171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 25, float %4179)  ; Rsqrt(value)
  %4181 = fmul fast float %4180, %4169
  %4182 = fmul fast float %4180, %4170
  %4183 = fmul fast float %4180, %4171
  %4184 = fadd fast float %4174, %1098
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float %4181, float %4182, float %4183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = call float @dx.op.unary.f32(i32 25, float %4186)  ; Rsqrt(value)
  %4188 = fmul fast float %4187, %4181
  %4189 = fmul fast float %4187, %4182
  %4190 = fmul fast float %4187, %4183
  br label %4191

; <label>:4191                                    ; preds = %4157, %3576
  %4192 = phi float [ %4188, %4157 ], [ %3620, %3576 ]
  %4193 = phi float [ %4189, %4157 ], [ %3621, %3576 ]
  %4194 = phi float [ %4190, %4157 ], [ %3622, %3576 ]
  %4195 = phi float [ %4176, %4157 ], [ %3579, %3576 ]
  %4196 = phi float [ %4177, %4157 ], [ %3580, %3576 ]
  %4197 = phi float [ %4178, %4157 ], [ %3581, %3576 ]
  %4198 = phi float [ %4166, %4157 ], [ %3582, %3576 ]
  %4199 = phi float [ %4167, %4157 ], [ %3583, %3576 ]
  %4200 = phi float [ %4168, %4157 ], [ %3584, %3576 ]
  %4201 = phi float [ %4163, %4157 ], [ %3585, %3576 ]
  %4202 = phi float [ %4164, %4157 ], [ %3586, %3576 ]
  %4203 = phi float [ %4165, %4157 ], [ %3587, %3576 ]
  %4204 = phi float [ %4175, %4157 ], [ %3588, %3576 ]
  %4205 = phi float [ %4185, %4157 ], [ %1098, %3576 ]
  %4206 = phi float [ %4173, %4157 ], [ %3589, %3576 ]
  %4207 = phi float [ %4172, %4157 ], [ %3590, %3576 ]
  %4208 = phi float [ %4162, %4157 ], [ 0.000000e+00, %3576 ]
  %4209 = phi float [ %4161, %4157 ], [ 0.000000e+00, %3576 ]
  %4210 = phi float [ %4158, %4157 ], [ 0.000000e+00, %3576 ]
  %4211 = phi float [ %4159, %4157 ], [ %3594, %3576 ]
  %4212 = phi float [ %4160, %4157 ], [ %3592, %3576 ]
  %4213 = fadd fast float %4204, 0xBFB99999A0000000
  %4214 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4215 = fmul fast float %4214, 0x3FF1C71C80000000
  %4216 = call float @dx.op.binary.f32(i32 36, float %4204, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4217 = fsub fast float 1.000000e+00, %4215
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %4218, %4195
  %4220 = fmul fast float %4218, %4196
  %4221 = fmul fast float %4218, %4197
  %4222 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4224 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4225 = fmul fast float %4215, %4195
  %4226 = fmul fast float %4215, %4196
  %4227 = fmul fast float %4215, %4197
  %4228 = fadd fast float %4225, %4216
  %4229 = fadd fast float %4226, %4216
  %4230 = fadd fast float %4227, %4216
  %4231 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = and i32 %4236, 1
  %4238 = icmp eq i32 %4237, 0
  br i1 %4238, label %4253, label %4239

; <label>:4239                                    ; preds = %4191
  %4240 = call float @dx.op.binary.f32(i32 35, float %4223, float %4224)  ; FMax(a,b)
  %4241 = call float @dx.op.binary.f32(i32 35, float %4222, float %4240)  ; FMax(a,b)
  %4242 = fcmp fast ogt float %4241, 0.000000e+00
  %4243 = bitcast float %4241 to i32
  %4244 = sub nsw i32 2129859010, %4243
  %4245 = bitcast i32 %4244 to float
  %4246 = select i1 %4242, float %4245, float 0.000000e+00
  %4247 = fmul fast float %4222, %4201
  %4248 = fmul fast float %4223, %4202
  %4249 = fmul fast float %4224, %4203
  %4250 = fmul fast float %4247, %4246
  %4251 = fmul fast float %4248, %4246
  %4252 = fmul fast float %4249, %4246
  br label %4253

; <label>:4253                                    ; preds = %4239, %4191
  %4254 = phi float [ %4250, %4239 ], [ %4201, %4191 ]
  %4255 = phi float [ %4251, %4239 ], [ %4202, %4191 ]
  %4256 = phi float [ %4252, %4239 ], [ %4203, %4191 ]
  %4257 = fadd fast float %4222, 0xBFD51EB860000000
  %4258 = fadd fast float %4223, 0xBFD51EB860000000
  %4259 = fadd fast float %4224, 0xBFD51EB860000000
  %4260 = fmul fast float %4257, %4257
  %4261 = fmul fast float %4258, %4258
  %4262 = fmul fast float %4259, %4259
  %4263 = fmul fast float %4260, %4260
  %4264 = fmul fast float %4263, 1.000000e+02
  %4265 = fmul fast float %4261, %4261
  %4266 = fmul fast float %4265, 1.000000e+02
  %4267 = fmul fast float %4262, %4262
  %4268 = fmul fast float %4267, 1.000000e+02
  %4269 = fadd fast float %4264, 3.500000e+00
  %4270 = fadd fast float %4266, 3.500000e+00
  %4271 = fadd fast float %4268, 3.500000e+00
  %4272 = call float @dx.op.binary.f32(i32 35, float %4254, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4273 = call float @dx.op.binary.f32(i32 35, float %4255, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4274 = call float @dx.op.binary.f32(i32 35, float %4256, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4275 = fdiv fast float %4269, %4272
  %4276 = fdiv fast float %4270, %4273
  %4277 = fdiv fast float %4271, %4274
  %4278 = fmul fast float %3591, 0xBFF7154760000000
  %4279 = fmul fast float %4278, %4275
  %4280 = call float @dx.op.unary.f32(i32 21, float %4279)  ; Exp(value)
  %4281 = fmul fast float %4280, 2.500000e-01
  %4282 = fmul fast float %3591, 0xBFDEC709E0000000
  %4283 = fmul fast float %4282, %4275
  %4284 = call float @dx.op.unary.f32(i32 21, float %4283)  ; Exp(value)
  %4285 = fmul fast float %4284, 7.500000e-01
  %4286 = fmul fast float %4278, %4276
  %4287 = call float @dx.op.unary.f32(i32 21, float %4286)  ; Exp(value)
  %4288 = fmul fast float %4287, 2.500000e-01
  %4289 = fmul fast float %4282, %4276
  %4290 = call float @dx.op.unary.f32(i32 21, float %4289)  ; Exp(value)
  %4291 = fmul fast float %4290, 7.500000e-01
  %4292 = fmul fast float %4278, %4277
  %4293 = call float @dx.op.unary.f32(i32 21, float %4292)  ; Exp(value)
  %4294 = fmul fast float %4293, 2.500000e-01
  %4295 = fmul fast float %4282, %4277
  %4296 = call float @dx.op.unary.f32(i32 21, float %4295)  ; Exp(value)
  %4297 = fmul fast float %4296, 7.500000e-01
  %4298 = fadd fast float %4281, %4285
  %4299 = fadd fast float %4288, %4291
  %4300 = fadd fast float %4294, %4297
  %4301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.i32 %4301, 3
  %4303 = and i32 %4302, 8
  %4304 = icmp ne i32 %4303, 0
  %4305 = call float @dx.op.binary.f32(i32 35, float %4222, float %4195)  ; FMax(a,b)
  %4306 = call float @dx.op.binary.f32(i32 35, float %4223, float %4195)  ; FMax(a,b)
  %4307 = call float @dx.op.binary.f32(i32 35, float %4224, float %4195)  ; FMax(a,b)
  %4308 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = select i1 %247, float %4195, float %4222
  %4310 = select i1 %247, float %4308, float %4223
  %4311 = select i1 %247, float 1.000000e+00, float %4224
  %4312 = select i1 %4304, float %4305, float %4309
  %4313 = select i1 %4304, float %4306, float %4310
  %4314 = select i1 %4304, float %4307, float %4311
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4319 = fadd fast float %4316, %188
  %4320 = fadd fast float %4317, %189
  %4321 = fadd fast float %4318, %190
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4325 = fsub fast float %4319, %4323
  %4326 = fsub fast float %4320, %4324
  %4327 = fmul fast float %4325, %4325
  %4328 = fmul fast float %4326, %4326
  %4329 = fadd fast float %4327, %4328
  %4330 = call float @dx.op.unary.f32(i32 24, float %4329)  ; Sqrt(value)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4322, 2
  %4332 = fcmp fast olt float %4330, %4331
  br i1 %4332, label %4333, label %4400

; <label>:4333                                    ; preds = %4253
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4341 = extractvalue %dx.types.CBufRet.f32 %4336, 1
  %4342 = extractvalue %dx.types.CBufRet.f32 %4338, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4334, 3
  %4344 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4345 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4346 = fadd fast float %4343, %4319
  %4347 = fadd fast float %4344, %4320
  %4348 = fadd fast float %4345, %4321
  %4349 = fmul fast float %4346, %4335
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4337, float %4349)  ; FMad(a,b,c)
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4348, float %4339, float %4350)  ; FMad(a,b,c)
  %4352 = fmul fast float %4346, %4340
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4341, float %4352)  ; FMad(a,b,c)
  %4354 = call float @dx.op.tertiary.f32(i32 46, float %4348, float %4342, float %4353)  ; FMad(a,b,c)
  %4355 = fsub fast float %4351, %4343
  %4356 = fsub fast float %4354, %4344
  %4357 = fsub fast float %4355, %4323
  %4358 = fadd fast float %4357, %4331
  %4359 = fsub fast float %4356, %4324
  %4360 = fadd fast float %4359, %4331
  %4361 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4362 = fmul fast float %4358, %4361
  %4363 = fmul fast float %4360, %4361
  %4364 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4365 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4366 = fsub fast float 1.000000e+00, %4364
  %4367 = fsub fast float 1.000000e+00, %4365
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %4366, float %4367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = fcmp fast ugt float %4369, 0.000000e+00
  br i1 %4370, label %4371, label %4674

; <label>:4371                                    ; preds = %4333
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4374 = fmul fast float %4373, %4369
  %4375 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4376 = fadd fast float %4375, %4374
  %4377 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4378 = fadd fast float %4376, %4345
  %4379 = fmul fast float %4351, %4339
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4342, float %4379)  ; FMad(a,b,c)
  %4381 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4377, float %4380)  ; FMad(a,b,c)
  %4382 = fsub fast float %4381, %4345
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 2
  %4385 = fsub fast float %4382, %4384
  %4386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4366, float %4367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4366, float %4367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = fadd fast float %4391, %4387
  %4395 = fmul fast float %4394, 0x3F847AE140000000
  %4396 = fadd fast float %4392, %4388
  %4397 = fmul fast float %4396, 0x3F847AE140000000
  %4398 = fadd fast float %4393, %4389
  %4399 = fmul fast float %4398, 0x3F847AE140000000
  br label %4674

; <label>:4400                                    ; preds = %4253
  %4401 = and i32 %226, 1
  %4402 = icmp eq i32 %4401, 0
  br i1 %4402, label %4674, label %4403

; <label>:4403                                    ; preds = %4400
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4404, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4413 = extractvalue %dx.types.CBufRet.f32 %4404, 3
  %4414 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4415 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4416 = fadd fast float %4413, %4319
  %4417 = fadd fast float %4414, %4320
  %4418 = fadd fast float %4415, %4321
  %4419 = fmul fast float %4416, %4405
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4407, float %4419)  ; FMad(a,b,c)
  %4421 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4409, float %4420)  ; FMad(a,b,c)
  %4422 = fmul fast float %4416, %4410
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4411, float %4422)  ; FMad(a,b,c)
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4412, float %4423)  ; FMad(a,b,c)
  %4425 = fsub fast float %4421, %4413
  %4426 = fsub fast float %4424, %4414
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.i32 %4434, 0
  %4436 = extractvalue %dx.types.CBufRet.i32 %4434, 1
  %4437 = udiv i32 %4436, %4435
  %4438 = fsub fast float %4425, %4428
  %4439 = fsub fast float %4426, %4429
  %4440 = call float @dx.op.binary.f32(i32 35, float %4438, float 0.000000e+00)  ; FMax(a,b)
  %4441 = call float @dx.op.binary.f32(i32 35, float %4439, float 0.000000e+00)  ; FMax(a,b)
  %4442 = call float @dx.op.binary.f32(i32 36, float %4440, float %4430)  ; FMin(a,b)
  %4443 = call float @dx.op.binary.f32(i32 36, float %4441, float %4431)  ; FMin(a,b)
  %4444 = add i32 %4435, -1
  %4445 = add i32 %4437, -1
  %4446 = fmul fast float %4442, %4433
  %4447 = fmul fast float %4443, %4433
  %4448 = fptoui float %4446 to i32
  %4449 = fptoui float %4447 to i32
  %4450 = call i32 @dx.op.binary.i32(i32 40, i32 %4448, i32 %4444)  ; UMin(a,b)
  %4451 = call i32 @dx.op.binary.i32(i32 40, i32 %4449, i32 %4445)  ; UMin(a,b)
  %4452 = mul i32 %4451, %4435
  %4453 = add i32 %4452, %4450
  %4454 = shl i32 %4453, 2
  %4455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4454, i32 undef)  ; BufferLoad(srv,index,wot)
  %4456 = extractvalue %dx.types.ResRet.i32 %4455, 0
  %4457 = icmp eq i32 %4456, -1
  br i1 %4457, label %4674, label %4458

; <label>:4458                                    ; preds = %4403
  %4459 = mul i32 %4456, 148
  %4460 = add i32 %4459, 4
  %4461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = add i32 %4459, 8
  %4464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = add i32 %4459, 36
  %4467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4466, i32 undef)  ; BufferLoad(srv,index,wot)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = add i32 %4459, 60
  %4470 = add i32 %4459, 92
  %4471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4470, i32 undef)  ; BufferLoad(srv,index,wot)
  %4472 = extractvalue %dx.types.ResRet.i32 %4471, 0
  %4473 = add i32 %4459, 116
  %4474 = fsub fast float %4425, %4462
  %4475 = fsub fast float %4426, %4465
  %4476 = fmul fast float %4433, %4474
  %4477 = fmul fast float %4433, %4475
  %4478 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4480 = fsub fast float 1.000000e+00, %4479
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = call float @dx.op.unary.f32(i32 83, float %4478)  ; DerivCoarseX(value)
  %4484 = call float @dx.op.unary.f32(i32 83, float %4480)  ; DerivCoarseX(value)
  %4485 = call float @dx.op.unary.f32(i32 84, float %4478)  ; DerivCoarseY(value)
  %4486 = call float @dx.op.unary.f32(i32 84, float %4480)  ; DerivCoarseY(value)
  %4487 = fmul fast float %4483, %4482
  %4488 = fmul fast float %4484, %4482
  %4489 = fmul fast float %4485, %4482
  %4490 = fmul fast float %4486, %4482
  %4491 = call float @dx.op.dot2.f32(i32 54, float %4489, float %4490, float %4489, float %4490)  ; Dot2(ax,ay,bx,by)
  %4492 = call float @dx.op.dot2.f32(i32 54, float %4487, float %4488, float %4487, float %4488)  ; Dot2(ax,ay,bx,by)
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float %4491)  ; FMax(a,b)
  %4494 = call float @dx.op.unary.f32(i32 23, float %4493)  ; Log(value)
  %4495 = fmul fast float %4494, 5.000000e-01
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4498 = fadd fast float %4497, %4495
  %4499 = call float @dx.op.binary.f32(i32 35, float %4498, float 0.000000e+00)  ; FMax(a,b)
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4502 = fadd fast float %4501, %4499
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4505 = fadd fast float %4502, %4504
  %4506 = add i32 %4472, 0
  %4507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4506, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4508 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4507, i32 0)  ; GetDimensions(handle,mipLevel)
  %4509 = extractvalue %dx.types.Dimensions %4508, 0
  %4510 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4509)  ; FirstbitLo(value)
  %4511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.i32 %4511, 1
  %4513 = sub nsw i32 %4512, %4510
  %4514 = sitofp i32 %4513 to float
  %4515 = fsub fast float %4505, %4514
  %4516 = call float @dx.op.binary.f32(i32 35, float %4515, float 0.000000e+00)  ; FMax(a,b)
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4507, %dx.types.Handle %46, float %4478, float %4480, float %4468, float undef, i32 0, i32 0, i32 undef, float %4516)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = fcmp ule float %4518, 0x3FE0101020000000
  %4520 = extractvalue %dx.types.CBufRet.i32 %4511, 0
  %4521 = and i32 %4520, 128
  %4522 = icmp ne i32 %4521, 0
  %4523 = and i1 %4519, %4522
  br i1 %4523, label %4674, label %4524

; <label>:4524                                    ; preds = %4458
  %4525 = add i32 %4459, 20
  %4526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = add i32 %4459, 24
  %4529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = add i32 %4459, 40
  %4532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = add i32 %4459, 96
  %4535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.i32 %4535, 0
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4539 = fmul fast float %4538, %4478
  %4540 = fmul fast float %4538, %4480
  %4541 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4542 = fadd fast float %4539, %4541
  %4543 = fadd fast float %4540, %4541
  %4544 = add i32 %4536, 0
  %4545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4544, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4546 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4545, i32 0)  ; GetDimensions(handle,mipLevel)
  %4547 = extractvalue %dx.types.Dimensions %4546, 0
  %4548 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4547)  ; FirstbitLo(value)
  %4549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.i32 %4549, 1
  %4551 = sub nsw i32 %4550, %4548
  %4552 = sitofp i32 %4551 to float
  %4553 = fsub fast float %4502, %4552
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float 0.000000e+00)  ; FMax(a,b)
  %4555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4545, %dx.types.Handle %46, float %4542, float %4543, float %4533, float undef, i32 0, i32 0, i32 undef, float %4554)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4557 = fmul fast float %4556, %4527
  %4558 = fadd fast float %4557, %4530
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4559, 2
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 3
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4567 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4568 = fadd fast float %4564, %4425
  %4569 = fadd fast float %4566, %4426
  %4570 = fadd fast float %4558, %4567
  %4571 = fmul fast float %4568, %4560
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4561, float %4571)  ; FMad(a,b,c)
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4562, float %4572)  ; FMad(a,b,c)
  %4574 = fsub fast float %4573, %4567
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 2
  %4577 = fsub fast float %4574, %4576
  %4578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.i32 %4578, 0
  %4580 = call i32 @dx.op.binary.i32(i32 40, i32 %4456, i32 %4579)  ; UMin(a,b)
  %4581 = mul i32 %4580, 36
  %4582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.i32 %4582, 0
  %4584 = add i32 %4581, 4
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = fmul fast float %4586, %4478
  %4588 = fmul fast float %4586, %4480
  %4589 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4590 = fadd fast float %4587, %4589
  %4591 = fadd fast float %4588, %4589
  %4592 = icmp eq i32 %4583, 0
  br i1 %4592, label %4661, label %4593

; <label>:4593                                    ; preds = %4524
  br label %4594

; <label>:4594                                    ; preds = %4651, %4593
  %4595 = phi float [ %4652, %4651 ], [ 0.000000e+00, %4593 ]
  %4596 = phi float [ %4653, %4651 ], [ 0.000000e+00, %4593 ]
  %4597 = phi float [ %4654, %4651 ], [ 0.000000e+00, %4593 ]
  %4598 = phi float [ %4655, %4651 ], [ 0.000000e+00, %4593 ]
  %4599 = phi float [ %4656, %4651 ], [ 0.000000e+00, %4593 ]
  %4600 = phi float [ %4657, %4651 ], [ 0.000000e+00, %4593 ]
  %4601 = phi i32 [ %4658, %4651 ], [ 0, %4593 ]
  %4602 = shl i32 %4601, 2
  %4603 = add i32 %4469, %4602
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = add i32 %4473, %4602
  %4607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.i32 %4607, 0
  %4609 = add i32 %4608, 0
  %4610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4609, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4611 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4610, i32 0)  ; GetDimensions(handle,mipLevel)
  %4612 = extractvalue %dx.types.Dimensions %4611, 0
  %4613 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4612)  ; FirstbitLo(value)
  %4614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.i32 %4614, 1
  %4616 = sub nsw i32 %4615, %4613
  %4617 = sitofp i32 %4616 to float
  %4618 = fsub fast float %4502, %4617
  %4619 = call float @dx.op.binary.f32(i32 35, float %4618, float 0.000000e+00)  ; FMax(a,b)
  %4620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4610, %dx.types.Handle %46, float %4590, float %4591, float %4605, float undef, i32 0, i32 0, i32 undef, float %4619)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = fcmp fast ogt float %4621, 0.000000e+00
  br i1 %4622, label %4623, label %4651

; <label>:4623                                    ; preds = %4594
  %4624 = add i32 %4584, %4602
  %4625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.i32 %4625, 0
  %4627 = and i32 %4626, 32767
  %4628 = mul nuw nsw i32 %4627, 928
  %4629 = add nuw nsw i32 %4628, 48
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = add nuw nsw i32 %4628, 60
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.ResRet.f32 %4635, 2
  %4639 = fmul fast float %4631, %4621
  %4640 = fmul fast float %4632, %4621
  %4641 = fmul fast float %4633, %4621
  %4642 = fadd fast float %4639, %4595
  %4643 = fadd fast float %4640, %4596
  %4644 = fadd fast float %4641, %4597
  %4645 = fmul fast float %4636, %4621
  %4646 = fmul fast float %4637, %4621
  %4647 = fmul fast float %4638, %4621
  %4648 = fadd fast float %4645, %4598
  %4649 = fadd fast float %4646, %4599
  %4650 = fadd fast float %4647, %4600
  br label %4651

; <label>:4651                                    ; preds = %4623, %4594
  %4652 = phi float [ %4642, %4623 ], [ %4595, %4594 ]
  %4653 = phi float [ %4643, %4623 ], [ %4596, %4594 ]
  %4654 = phi float [ %4644, %4623 ], [ %4597, %4594 ]
  %4655 = phi float [ %4648, %4623 ], [ %4598, %4594 ]
  %4656 = phi float [ %4649, %4623 ], [ %4599, %4594 ]
  %4657 = phi float [ %4650, %4623 ], [ %4600, %4594 ]
  %4658 = add nuw i32 %4601, 1
  %4659 = icmp eq i32 %4658, %4583
  br i1 %4659, label %4660, label %4594

; <label>:4660                                    ; preds = %4651
  br label %4661

; <label>:4661                                    ; preds = %4660, %4524
  %4662 = phi float [ 0.000000e+00, %4524 ], [ %4652, %4660 ]
  %4663 = phi float [ 0.000000e+00, %4524 ], [ %4653, %4660 ]
  %4664 = phi float [ 0.000000e+00, %4524 ], [ %4654, %4660 ]
  %4665 = phi float [ 0.000000e+00, %4524 ], [ %4655, %4660 ]
  %4666 = phi float [ 0.000000e+00, %4524 ], [ %4656, %4660 ]
  %4667 = phi float [ 0.000000e+00, %4524 ], [ %4657, %4660 ]
  %4668 = fadd fast float %4665, %4662
  %4669 = fmul fast float %4668, 0x3F847AE140000000
  %4670 = fadd fast float %4666, %4663
  %4671 = fmul fast float %4670, 0x3F847AE140000000
  %4672 = fadd fast float %4667, %4664
  %4673 = fmul fast float %4672, 0x3F847AE140000000
  br label %4674

; <label>:4674                                    ; preds = %4661, %4458, %4403, %4400, %4371, %4333
  %4675 = phi float [ %4385, %4371 ], [ -1.310720e+05, %4333 ], [ %4577, %4661 ], [ -1.310720e+05, %4403 ], [ -1.310720e+05, %4458 ], [ -1.310720e+05, %4400 ]
  %4676 = phi float [ %4395, %4371 ], [ 0.000000e+00, %4333 ], [ %4669, %4661 ], [ 0.000000e+00, %4403 ], [ 0.000000e+00, %4458 ], [ 0.000000e+00, %4400 ]
  %4677 = phi float [ %4397, %4371 ], [ 0.000000e+00, %4333 ], [ %4671, %4661 ], [ 0.000000e+00, %4403 ], [ 0.000000e+00, %4458 ], [ 0.000000e+00, %4400 ]
  %4678 = phi float [ %4399, %4371 ], [ 0.000000e+00, %4333 ], [ %4673, %4661 ], [ 0.000000e+00, %4403 ], [ 0.000000e+00, %4458 ], [ 0.000000e+00, %4400 ]
  %4679 = phi i1 [ true, %4371 ], [ false, %4333 ], [ true, %4661 ], [ false, %4403 ], [ false, %4458 ], [ false, %4400 ]
  %4680 = and i32 %226, 3
  %4681 = icmp eq i32 %4680, 1
  %4682 = select i1 %4681, float 1.000000e+00, float 0.000000e+00
  %4683 = fsub fast float %4675, %190
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = select i1 %4679, float %4684, float 1.000000e+00
  %4686 = fmul fast float %4685, %4682
  %4687 = icmp eq i32 %4680, 3
  %4688 = select i1 %4687, float 1.000000e+00, float %4686
  %4689 = call float @dx.op.binary.f32(i32 35, float %4210, float %4688)  ; FMax(a,b)
  %4690 = fcmp fast olt float %4688, 1.000000e+00
  %4691 = fcmp uge float %69, 0.000000e+00
  %4692 = and i1 %4691, %4690
  br i1 %4692, label %4693, label %4703

; <label>:4693                                    ; preds = %4674
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = fadd fast float %4695, %4689
  %4699 = fcmp ule float %68, 0.000000e+00
  %4700 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = select i1 %4699, float %4700, float 1.000000e+00
  %4702 = fmul fast float %4701, %4697
  br label %4703

; <label>:4703                                    ; preds = %4693, %4674
  %4704 = phi float [ %4698, %4693 ], [ %4689, %4674 ]
  %4705 = phi float [ %4696, %4693 ], [ 0.000000e+00, %4674 ]
  %4706 = phi float [ %4702, %4693 ], [ 0.000000e+00, %4674 ]
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = fcmp fast une float %4708, 0.000000e+00
  %4711 = fcmp fast une float %4709, 0.000000e+00
  %4712 = or i1 %4710, %4711
  br i1 %4712, label %4713, label %5272

; <label>:4713                                    ; preds = %4703
  br i1 %4710, label %4714, label %4987

; <label>:4714                                    ; preds = %4713
  %4715 = call float @dx.op.unary.f32(i32 23, float %4207)  ; Log(value)
  %4716 = fmul fast float %4715, 4.000000e+00
  %4717 = call float @dx.op.unary.f32(i32 21, float %4716)  ; Exp(value)
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = fmul fast float %4719, %56
  %4721 = fmul fast float %4719, %57
  %4722 = fmul fast float %4719, %58
  %4723 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4724 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4725 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4726 = call float @dx.op.unary.f32(i32 23, float %4723)  ; Log(value)
  %4727 = call float @dx.op.unary.f32(i32 23, float %4724)  ; Log(value)
  %4728 = call float @dx.op.unary.f32(i32 23, float %4725)  ; Log(value)
  %4729 = fmul fast float %4726, 4.000000e+00
  %4730 = fmul fast float %4727, 4.000000e+00
  %4731 = fmul fast float %4728, 4.000000e+00
  %4732 = call float @dx.op.unary.f32(i32 21, float %4729)  ; Exp(value)
  %4733 = call float @dx.op.unary.f32(i32 21, float %4730)  ; Exp(value)
  %4734 = call float @dx.op.unary.f32(i32 21, float %4731)  ; Exp(value)
  %4735 = fadd fast float %4733, %4732
  %4736 = fadd fast float %4735, %4734
  %4737 = fdiv fast float 1.000000e+00, %4736
  %4738 = fmul fast float %4737, %4732
  %4739 = fcmp fast ogt float %65, 0.000000e+00
  %4740 = fcmp fast ogt float %66, 0.000000e+00
  %4741 = fcmp fast ogt float %67, 0.000000e+00
  %4742 = fcmp fast olt float %65, 0.000000e+00
  %4743 = fcmp fast olt float %66, 0.000000e+00
  %4744 = fcmp fast olt float %67, 0.000000e+00
  %4745 = zext i1 %4739 to i32
  %4746 = zext i1 %4740 to i32
  %4747 = zext i1 %4741 to i32
  %4748 = zext i1 %4742 to i32
  %4749 = zext i1 %4743 to i32
  %4750 = zext i1 %4744 to i32
  %4751 = sub nsw i32 %4745, %4748
  %4752 = sub nsw i32 %4746, %4749
  %4753 = sub nsw i32 %4747, %4750
  %4754 = call float @dx.op.unary.f32(i32 83, float %4720)  ; DerivCoarseX(value)
  %4755 = call float @dx.op.unary.f32(i32 83, float %4721)  ; DerivCoarseX(value)
  %4756 = call float @dx.op.unary.f32(i32 83, float %4722)  ; DerivCoarseX(value)
  %4757 = call float @dx.op.unary.f32(i32 84, float %4720)  ; DerivCoarseY(value)
  %4758 = call float @dx.op.unary.f32(i32 84, float %4721)  ; DerivCoarseY(value)
  %4759 = call float @dx.op.unary.f32(i32 84, float %4722)  ; DerivCoarseY(value)
  %4760 = fcmp fast ole float %258, %4738
  %4761 = fmul fast float %4737, %4735
  %4762 = fcmp fast ole float %258, %4761
  %4763 = select i1 %4762, float %4722, float %4720
  %4764 = select i1 %4762, float %4720, float %4721
  %4765 = select i1 %4760, float %4721, float %4763
  %4766 = select i1 %4760, float %4722, float %4764
  %4767 = select i1 %4762, float %4756, float %4754
  %4768 = select i1 %4762, float %4754, float %4755
  %4769 = select i1 %4760, float %4755, float %4767
  %4770 = select i1 %4760, float %4756, float %4768
  %4771 = select i1 %4762, float %4759, float %4757
  %4772 = select i1 %4762, float %4757, float %4758
  %4773 = select i1 %4760, float %4758, float %4771
  %4774 = select i1 %4760, float %4759, float %4772
  %4775 = call float @dx.op.unary.f32(i32 27, float %4765)  ; Round_ni(value)
  %4776 = call float @dx.op.unary.f32(i32 27, float %4766)  ; Round_ni(value)
  %4777 = fptosi float %4775 to i32
  %4778 = fptosi float %4776 to i32
  %4779 = xor i32 %4778, %4777
  %4780 = sitofp i32 %4779 to float
  %4781 = fptosi float %4780 to i32
  %4782 = sitofp i32 %4781 to float
  %4783 = fmul fast float %4782, 0x3FE3C6EF40000000
  %4784 = frem fast float %4775, 2.560000e+02
  %4785 = frem fast float %4776, 2.560000e+02
  %4786 = fptoui float %4784 to i32
  %4787 = fptoui float %4785 to i32
  %4788 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4786, i32 %4787, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = fadd fast float %4789, %4783
  %4793 = fadd fast float %4790, %4783
  %4794 = fadd fast float %4791, %4783
  %4795 = call float @dx.op.unary.f32(i32 22, float %4792)  ; Frc(value)
  %4796 = call float @dx.op.unary.f32(i32 22, float %4793)  ; Frc(value)
  %4797 = call float @dx.op.unary.f32(i32 22, float %4794)  ; Frc(value)
  %4798 = fmul fast float %4797, 0x401921FB60000000
  %4799 = call float @dx.op.unary.f32(i32 13, float %4798)  ; Sin(value)
  %4800 = call float @dx.op.unary.f32(i32 12, float %4798)  ; Cos(value)
  %4801 = fsub fast float -0.000000e+00, %4800
  %4802 = fmul fast float %4800, %4765
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4799, float %4766, float %4802)  ; FMad(a,b,c)
  %4804 = fmul fast float %4799, %4765
  %4805 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4766, float %4804)  ; FMad(a,b,c)
  %4806 = fadd fast float %4803, %4795
  %4807 = fadd fast float %4805, %4796
  %4808 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4809 = bitcast float %4808 to i32
  %4810 = icmp eq i32 %4809, 0
  br i1 %4810, label %4849, label %4811

; <label>:4811                                    ; preds = %4714
  %4812 = add i32 %4809, 0
  %4813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4814 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4813, %dx.types.Handle %106, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float %4769, float %4770, float undef, float %4773, float %4774, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4816, 2
  %4819 = fsub fast float 1.000000e+00, %4708
  %4820 = call float @dx.op.binary.f32(i32 35, float %4819, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4821 = bitcast float %4708 to i32
  %4822 = sitofp i32 %4821 to float
  %4823 = fadd fast float %4822, 0xC1CFBF8940000000
  %4824 = fmul fast float %4818, %4823
  %4825 = fadd fast float %4824, 0x41CFBF8940000000
  %4826 = fptosi float %4825 to i32
  %4827 = bitcast i32 %4826 to float
  %4828 = bitcast float %4820 to i32
  %4829 = sitofp i32 %4828 to float
  %4830 = fadd fast float %4829, 0xC1CFBF8940000000
  %4831 = fmul fast float %4830, %4818
  %4832 = fadd fast float %4831, 0x41CFBF8940000000
  %4833 = fptosi float %4832 to i32
  %4834 = bitcast i32 %4833 to float
  %4835 = fmul fast float %4827, %4817
  %4836 = fmul fast float %4834, %4817
  %4837 = fsub fast float %4820, %4835
  %4838 = fadd fast float %4836, %4820
  %4839 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4841 = fsub fast float %4815, %4839
  %4842 = fsub fast float %4840, %4839
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = fmul fast float %4845, %4841
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fcmp fast olt float %4847, 0x3F70101020000000
  br i1 %4848, label %4987, label %4849

; <label>:4849                                    ; preds = %4811, %4714
  %4850 = phi float [ %4847, %4811 ], [ %4708, %4714 ]
  %4851 = fmul fast float %4850, %4717
  %4852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.i32 %4852, 1
  %4854 = extractvalue %dx.types.CBufRet.i32 %4852, 0
  %4855 = add i32 %4854, 0
  %4856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4856, %dx.types.Handle %105, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float %4769, float %4770, float undef, float %4773, float %4774, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4857, 3
  %4862 = and i32 %4853, 255
  %4863 = uitofp i32 %4862 to float
  %4864 = lshr i32 %4853, 8
  %4865 = and i32 %4864, 255
  %4866 = uitofp i32 %4865 to float
  %4867 = fmul fast float %4861, %4863
  %4868 = fadd fast float %4867, %4866
  %4869 = fmul fast float %4868, 0x3F70101000000000
  %4870 = fadd fast float %4869, 0xBFB99999A0000000
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = fmul fast float %4871, 0x3FF1C71C80000000
  %4873 = call float @dx.op.binary.f32(i32 36, float %4869, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4874 = fsub fast float 1.000000e+00, %4872
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %4875, %4858
  %4877 = fmul fast float %4875, %4859
  %4878 = fmul fast float %4875, %4860
  %4879 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4880 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4881 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4882 = fmul fast float %4872, %4858
  %4883 = fmul fast float %4872, %4859
  %4884 = fmul fast float %4872, %4860
  %4885 = fadd fast float %4882, %4873
  %4886 = fadd fast float %4883, %4873
  %4887 = fadd fast float %4884, %4873
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.i32 %4891, 3
  %4893 = extractvalue %dx.types.CBufRet.i32 %4891, 2
  %4894 = add i32 %4893, 0
  %4895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4895, %dx.types.Handle %105, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float %4769, float %4770, float undef, float %4773, float %4774, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = extractvalue %dx.types.ResRet.f32 %4896, 3
  %4901 = and i32 %4892, 255
  %4902 = uitofp i32 %4901 to float
  %4903 = lshr i32 %4892, 8
  %4904 = and i32 %4903, 255
  %4905 = uitofp i32 %4904 to float
  %4906 = lshr i32 %4892, 16
  %4907 = and i32 %4906, 255
  %4908 = uitofp i32 %4907 to float
  %4909 = fmul fast float %4908, 0x3F70101000000000
  %4910 = fmul fast float %4897, %4902
  %4911 = fadd fast float %4910, %4905
  %4912 = fmul fast float %4911, 0x3F70101000000000
  %4913 = fadd fast float %4898, -5.000000e-01
  %4914 = fadd fast float %4900, -5.000000e-01
  %4915 = fmul fast float %4913, %4909
  %4916 = fmul fast float %4914, %4909
  %4917 = fadd fast float %4915, 5.000000e-01
  %4918 = fadd fast float %4916, 5.000000e-01
  %4919 = fmul fast float %4917, 2.000000e+00
  %4920 = fadd fast float %4919, -1.000000e+00
  %4921 = fmul fast float %4918, 2.000000e+00
  %4922 = fadd fast float %4921, -1.000000e+00
  %4923 = fadd fast float %4920, %4922
  %4924 = fmul fast float %4923, 5.000000e-01
  %4925 = fsub fast float %4920, %4922
  %4926 = fmul fast float %4925, 5.000000e-01
  %4927 = call float @dx.op.unary.f32(i32 6, float %4924)  ; FAbs(value)
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = call float @dx.op.unary.f32(i32 6, float %4926)  ; FAbs(value)
  %4930 = fsub fast float %4928, %4929
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4926, float %4930, float %4924, float %4926, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.unary.f32(i32 25, float %4931)  ; Rsqrt(value)
  %4933 = fmul fast float %4924, %4932
  %4934 = fmul fast float %4926, %4932
  %4935 = select i1 %4762, i32 %4752, i32 %4753
  %4936 = select i1 %4760, i32 %4751, i32 %4935
  %4937 = sitofp i32 %4936 to float
  %4938 = fmul fast float %4930, %4937
  %4939 = fmul fast float %4938, %4932
  %4940 = select i1 %4762, float %4939, float %4934
  %4941 = select i1 %4762, float %4934, float %4939
  %4942 = select i1 %4760, float %4939, float %4933
  %4943 = select i1 %4760, float %4934, float %4940
  %4944 = select i1 %4760, float %4933, float %4941
  %4945 = fsub fast float %4879, %4312
  %4946 = fsub fast float %4880, %4313
  %4947 = fsub fast float %4881, %4314
  %4948 = fmul fast float %4945, %4851
  %4949 = fmul fast float %4946, %4851
  %4950 = fmul fast float %4947, %4851
  %4951 = fadd fast float %4948, %4312
  %4952 = fadd fast float %4949, %4313
  %4953 = fadd fast float %4950, %4314
  %4954 = fsub fast float %4888, %4231
  %4955 = fsub fast float %4889, %4232
  %4956 = fsub fast float %4890, %4233
  %4957 = fmul fast float %4954, %4851
  %4958 = fmul fast float %4955, %4851
  %4959 = fmul fast float %4956, %4851
  %4960 = fadd fast float %4957, %4231
  %4961 = fadd fast float %4958, %4232
  %4962 = fadd fast float %4959, %4233
  %4963 = fadd fast float %4942, %4192
  %4964 = fadd fast float %4943, %4193
  %4965 = fadd fast float %4944, %4194
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.unary.f32(i32 25, float %4966)  ; Rsqrt(value)
  %4968 = fmul fast float %4963, %4967
  %4969 = fmul fast float %4964, %4967
  %4970 = fmul fast float %4965, %4967
  %4971 = fsub fast float %4968, %4192
  %4972 = fsub fast float %4969, %4193
  %4973 = fsub fast float %4970, %4194
  %4974 = fmul fast float %4971, %4851
  %4975 = fmul fast float %4972, %4851
  %4976 = fmul fast float %4973, %4851
  %4977 = fadd fast float %4974, %4192
  %4978 = fadd fast float %4975, %4193
  %4979 = fadd fast float %4976, %4194
  %4980 = call float @dx.op.binary.f32(i32 36, float %4207, float %4899)  ; FMin(a,b)
  %4981 = fsub fast float %4980, %4207
  %4982 = fmul fast float %4981, %4851
  %4983 = fadd fast float %4982, %4207
  %4984 = fsub fast float %4912, %4234
  %4985 = fmul fast float %4984, %4851
  %4986 = fadd fast float %4985, %4234
  br label %4987

; <label>:4987                                    ; preds = %4849, %4811, %4713
  %4988 = phi float [ %4977, %4849 ], [ %4192, %4811 ], [ %4192, %4713 ]
  %4989 = phi float [ %4978, %4849 ], [ %4193, %4811 ], [ %4193, %4713 ]
  %4990 = phi float [ %4979, %4849 ], [ %4194, %4811 ], [ %4194, %4713 ]
  %4991 = phi float [ %4951, %4849 ], [ %4312, %4811 ], [ %4312, %4713 ]
  %4992 = phi float [ %4952, %4849 ], [ %4313, %4811 ], [ %4313, %4713 ]
  %4993 = phi float [ %4953, %4849 ], [ %4314, %4811 ], [ %4314, %4713 ]
  %4994 = phi float [ %4960, %4849 ], [ %4231, %4811 ], [ %4231, %4713 ]
  %4995 = phi float [ %4961, %4849 ], [ %4232, %4811 ], [ %4232, %4713 ]
  %4996 = phi float [ %4962, %4849 ], [ %4233, %4811 ], [ %4233, %4713 ]
  %4997 = phi float [ %4986, %4849 ], [ %4234, %4811 ], [ %4234, %4713 ]
  %4998 = phi float [ %4983, %4849 ], [ %4207, %4811 ], [ %4207, %4713 ]
  br i1 %4711, label %4999, label %5272

; <label>:4999                                    ; preds = %4987
  %5000 = call float @dx.op.unary.f32(i32 23, float %4998)  ; Log(value)
  %5001 = fmul fast float %5000, 4.000000e+00
  %5002 = call float @dx.op.unary.f32(i32 21, float %5001)  ; Exp(value)
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = fmul fast float %5004, %56
  %5006 = fmul fast float %5004, %57
  %5007 = fmul fast float %5004, %58
  %5008 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5009 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5010 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5011 = call float @dx.op.unary.f32(i32 23, float %5008)  ; Log(value)
  %5012 = call float @dx.op.unary.f32(i32 23, float %5009)  ; Log(value)
  %5013 = call float @dx.op.unary.f32(i32 23, float %5010)  ; Log(value)
  %5014 = fmul fast float %5011, 4.000000e+00
  %5015 = fmul fast float %5012, 4.000000e+00
  %5016 = fmul fast float %5013, 4.000000e+00
  %5017 = call float @dx.op.unary.f32(i32 21, float %5014)  ; Exp(value)
  %5018 = call float @dx.op.unary.f32(i32 21, float %5015)  ; Exp(value)
  %5019 = call float @dx.op.unary.f32(i32 21, float %5016)  ; Exp(value)
  %5020 = fadd fast float %5018, %5017
  %5021 = fadd fast float %5020, %5019
  %5022 = fdiv fast float 1.000000e+00, %5021
  %5023 = fmul fast float %5022, %5017
  %5024 = fcmp fast ogt float %65, 0.000000e+00
  %5025 = fcmp fast ogt float %66, 0.000000e+00
  %5026 = fcmp fast ogt float %67, 0.000000e+00
  %5027 = fcmp fast olt float %65, 0.000000e+00
  %5028 = fcmp fast olt float %66, 0.000000e+00
  %5029 = fcmp fast olt float %67, 0.000000e+00
  %5030 = zext i1 %5024 to i32
  %5031 = zext i1 %5025 to i32
  %5032 = zext i1 %5026 to i32
  %5033 = zext i1 %5027 to i32
  %5034 = zext i1 %5028 to i32
  %5035 = zext i1 %5029 to i32
  %5036 = sub nsw i32 %5030, %5033
  %5037 = sub nsw i32 %5031, %5034
  %5038 = sub nsw i32 %5032, %5035
  %5039 = call float @dx.op.unary.f32(i32 83, float %5005)  ; DerivCoarseX(value)
  %5040 = call float @dx.op.unary.f32(i32 83, float %5006)  ; DerivCoarseX(value)
  %5041 = call float @dx.op.unary.f32(i32 83, float %5007)  ; DerivCoarseX(value)
  %5042 = call float @dx.op.unary.f32(i32 84, float %5005)  ; DerivCoarseY(value)
  %5043 = call float @dx.op.unary.f32(i32 84, float %5006)  ; DerivCoarseY(value)
  %5044 = call float @dx.op.unary.f32(i32 84, float %5007)  ; DerivCoarseY(value)
  %5045 = fcmp fast ole float %258, %5023
  %5046 = fmul fast float %5022, %5020
  %5047 = fcmp fast ole float %258, %5046
  %5048 = select i1 %5047, float %5007, float %5005
  %5049 = select i1 %5047, float %5005, float %5006
  %5050 = select i1 %5045, float %5006, float %5048
  %5051 = select i1 %5045, float %5007, float %5049
  %5052 = select i1 %5047, float %5041, float %5039
  %5053 = select i1 %5047, float %5039, float %5040
  %5054 = select i1 %5045, float %5040, float %5052
  %5055 = select i1 %5045, float %5041, float %5053
  %5056 = select i1 %5047, float %5044, float %5042
  %5057 = select i1 %5047, float %5042, float %5043
  %5058 = select i1 %5045, float %5043, float %5056
  %5059 = select i1 %5045, float %5044, float %5057
  %5060 = call float @dx.op.unary.f32(i32 27, float %5050)  ; Round_ni(value)
  %5061 = call float @dx.op.unary.f32(i32 27, float %5051)  ; Round_ni(value)
  %5062 = fptosi float %5060 to i32
  %5063 = fptosi float %5061 to i32
  %5064 = xor i32 %5063, %5062
  %5065 = sitofp i32 %5064 to float
  %5066 = fptosi float %5065 to i32
  %5067 = sitofp i32 %5066 to float
  %5068 = fmul fast float %5067, 0x3FE3C6EF40000000
  %5069 = frem fast float %5060, 2.560000e+02
  %5070 = frem fast float %5061, 2.560000e+02
  %5071 = fptoui float %5069 to i32
  %5072 = fptoui float %5070 to i32
  %5073 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5071, i32 %5072, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5074 = extractvalue %dx.types.ResRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.ResRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.ResRet.f32 %5073, 2
  %5077 = fadd fast float %5074, %5068
  %5078 = fadd fast float %5075, %5068
  %5079 = fadd fast float %5076, %5068
  %5080 = call float @dx.op.unary.f32(i32 22, float %5077)  ; Frc(value)
  %5081 = call float @dx.op.unary.f32(i32 22, float %5078)  ; Frc(value)
  %5082 = call float @dx.op.unary.f32(i32 22, float %5079)  ; Frc(value)
  %5083 = fmul fast float %5082, 0x401921FB60000000
  %5084 = call float @dx.op.unary.f32(i32 13, float %5083)  ; Sin(value)
  %5085 = call float @dx.op.unary.f32(i32 12, float %5083)  ; Cos(value)
  %5086 = fsub fast float -0.000000e+00, %5085
  %5087 = fmul fast float %5085, %5050
  %5088 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5051, float %5087)  ; FMad(a,b,c)
  %5089 = fmul fast float %5084, %5050
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5086, float %5051, float %5089)  ; FMad(a,b,c)
  %5091 = fadd fast float %5088, %5080
  %5092 = fadd fast float %5090, %5081
  %5093 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5094 = bitcast float %5093 to i32
  %5095 = icmp eq i32 %5094, 0
  br i1 %5095, label %5134, label %5096

; <label>:5096                                    ; preds = %4999
  %5097 = add i32 %5094, 0
  %5098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5098, %dx.types.Handle %106, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5104 = fsub fast float 1.000000e+00, %4709
  %5105 = call float @dx.op.binary.f32(i32 35, float %5104, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5106 = bitcast float %4709 to i32
  %5107 = sitofp i32 %5106 to float
  %5108 = fadd fast float %5107, 0xC1CFBF8940000000
  %5109 = fmul fast float %5103, %5108
  %5110 = fadd fast float %5109, 0x41CFBF8940000000
  %5111 = fptosi float %5110 to i32
  %5112 = bitcast i32 %5111 to float
  %5113 = bitcast float %5105 to i32
  %5114 = sitofp i32 %5113 to float
  %5115 = fadd fast float %5114, 0xC1CFBF8940000000
  %5116 = fmul fast float %5115, %5103
  %5117 = fadd fast float %5116, 0x41CFBF8940000000
  %5118 = fptosi float %5117 to i32
  %5119 = bitcast i32 %5118 to float
  %5120 = fmul fast float %5112, %5102
  %5121 = fmul fast float %5119, %5102
  %5122 = fsub fast float %5105, %5120
  %5123 = fadd fast float %5121, %5105
  %5124 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5126 = fsub fast float %5100, %5124
  %5127 = fsub fast float %5125, %5124
  %5128 = bitcast float %5127 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5130, %5126
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fcmp fast olt float %5132, 0x3F70101020000000
  br i1 %5133, label %5272, label %5134

; <label>:5134                                    ; preds = %5096, %4999
  %5135 = phi float [ %5132, %5096 ], [ %4709, %4999 ]
  %5136 = fmul fast float %5135, %5002
  %5137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.i32 %5137, 1
  %5139 = extractvalue %dx.types.CBufRet.i32 %5137, 0
  %5140 = add i32 %5139, 0
  %5141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5141, %dx.types.Handle %105, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5146 = extractvalue %dx.types.ResRet.f32 %5142, 3
  %5147 = and i32 %5138, 255
  %5148 = uitofp i32 %5147 to float
  %5149 = lshr i32 %5138, 8
  %5150 = and i32 %5149, 255
  %5151 = uitofp i32 %5150 to float
  %5152 = fmul fast float %5146, %5148
  %5153 = fadd fast float %5152, %5151
  %5154 = fmul fast float %5153, 0x3F70101000000000
  %5155 = fadd fast float %5154, 0xBFB99999A0000000
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = fmul fast float %5156, 0x3FF1C71C80000000
  %5158 = call float @dx.op.binary.f32(i32 36, float %5154, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5159 = fsub fast float 1.000000e+00, %5157
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fmul fast float %5160, %5143
  %5162 = fmul fast float %5160, %5144
  %5163 = fmul fast float %5160, %5145
  %5164 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5167 = fmul fast float %5157, %5143
  %5168 = fmul fast float %5157, %5144
  %5169 = fmul fast float %5157, %5145
  %5170 = fadd fast float %5167, %5158
  %5171 = fadd fast float %5168, %5158
  %5172 = fadd fast float %5169, %5158
  %5173 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.i32 %5176, 3
  %5178 = extractvalue %dx.types.CBufRet.i32 %5176, 2
  %5179 = add i32 %5178, 0
  %5180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5180, %dx.types.Handle %105, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.ResRet.f32 %5181, 2
  %5185 = extractvalue %dx.types.ResRet.f32 %5181, 3
  %5186 = and i32 %5177, 255
  %5187 = uitofp i32 %5186 to float
  %5188 = lshr i32 %5177, 8
  %5189 = and i32 %5188, 255
  %5190 = uitofp i32 %5189 to float
  %5191 = lshr i32 %5177, 16
  %5192 = and i32 %5191, 255
  %5193 = uitofp i32 %5192 to float
  %5194 = fmul fast float %5193, 0x3F70101000000000
  %5195 = fmul fast float %5182, %5187
  %5196 = fadd fast float %5195, %5190
  %5197 = fmul fast float %5196, 0x3F70101000000000
  %5198 = fadd fast float %5183, -5.000000e-01
  %5199 = fadd fast float %5185, -5.000000e-01
  %5200 = fmul fast float %5198, %5194
  %5201 = fmul fast float %5199, %5194
  %5202 = fadd fast float %5200, 5.000000e-01
  %5203 = fadd fast float %5201, 5.000000e-01
  %5204 = fmul fast float %5202, 2.000000e+00
  %5205 = fadd fast float %5204, -1.000000e+00
  %5206 = fmul fast float %5203, 2.000000e+00
  %5207 = fadd fast float %5206, -1.000000e+00
  %5208 = fadd fast float %5205, %5207
  %5209 = fmul fast float %5208, 5.000000e-01
  %5210 = fsub fast float %5205, %5207
  %5211 = fmul fast float %5210, 5.000000e-01
  %5212 = call float @dx.op.unary.f32(i32 6, float %5209)  ; FAbs(value)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5215 = fsub fast float %5213, %5214
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5211, float %5215, float %5209, float %5211, float %5215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  %5218 = fmul fast float %5209, %5217
  %5219 = fmul fast float %5211, %5217
  %5220 = select i1 %5047, i32 %5037, i32 %5038
  %5221 = select i1 %5045, i32 %5036, i32 %5220
  %5222 = sitofp i32 %5221 to float
  %5223 = fmul fast float %5215, %5222
  %5224 = fmul fast float %5223, %5217
  %5225 = select i1 %5047, float %5224, float %5219
  %5226 = select i1 %5047, float %5219, float %5224
  %5227 = select i1 %5045, float %5224, float %5218
  %5228 = select i1 %5045, float %5219, float %5225
  %5229 = select i1 %5045, float %5218, float %5226
  %5230 = fsub fast float %5164, %4991
  %5231 = fsub fast float %5165, %4992
  %5232 = fsub fast float %5166, %4993
  %5233 = fmul fast float %5230, %5136
  %5234 = fmul fast float %5231, %5136
  %5235 = fmul fast float %5232, %5136
  %5236 = fadd fast float %5233, %4991
  %5237 = fadd fast float %5234, %4992
  %5238 = fadd fast float %5235, %4993
  %5239 = fsub fast float %5173, %4994
  %5240 = fsub fast float %5174, %4995
  %5241 = fsub fast float %5175, %4996
  %5242 = fmul fast float %5239, %5136
  %5243 = fmul fast float %5240, %5136
  %5244 = fmul fast float %5241, %5136
  %5245 = fadd fast float %5242, %4994
  %5246 = fadd fast float %5243, %4995
  %5247 = fadd fast float %5244, %4996
  %5248 = fadd fast float %5227, %4988
  %5249 = fadd fast float %5228, %4989
  %5250 = fadd fast float %5229, %4990
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %5248, float %5249, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = call float @dx.op.unary.f32(i32 25, float %5251)  ; Rsqrt(value)
  %5253 = fmul fast float %5248, %5252
  %5254 = fmul fast float %5249, %5252
  %5255 = fmul fast float %5250, %5252
  %5256 = fsub fast float %5253, %4988
  %5257 = fsub fast float %5254, %4989
  %5258 = fsub fast float %5255, %4990
  %5259 = fmul fast float %5256, %5136
  %5260 = fmul fast float %5257, %5136
  %5261 = fmul fast float %5258, %5136
  %5262 = fadd fast float %5259, %4988
  %5263 = fadd fast float %5260, %4989
  %5264 = fadd fast float %5261, %4990
  %5265 = call float @dx.op.binary.f32(i32 36, float %4998, float %5184)  ; FMin(a,b)
  %5266 = fsub fast float %5265, %4998
  %5267 = fmul fast float %5266, %5136
  %5268 = fadd fast float %5267, %4998
  %5269 = fsub fast float %5197, %4997
  %5270 = fmul fast float %5269, %5136
  %5271 = fadd fast float %5270, %4997
  br label %5272

; <label>:5272                                    ; preds = %5134, %5096, %4987, %4703
  %5273 = phi float [ %5262, %5134 ], [ %4988, %5096 ], [ %4988, %4987 ], [ %4192, %4703 ]
  %5274 = phi float [ %5263, %5134 ], [ %4989, %5096 ], [ %4989, %4987 ], [ %4193, %4703 ]
  %5275 = phi float [ %5264, %5134 ], [ %4990, %5096 ], [ %4990, %4987 ], [ %4194, %4703 ]
  %5276 = phi float [ %5236, %5134 ], [ %4991, %5096 ], [ %4991, %4987 ], [ %4312, %4703 ]
  %5277 = phi float [ %5237, %5134 ], [ %4992, %5096 ], [ %4992, %4987 ], [ %4313, %4703 ]
  %5278 = phi float [ %5238, %5134 ], [ %4993, %5096 ], [ %4993, %4987 ], [ %4314, %4703 ]
  %5279 = phi float [ %5245, %5134 ], [ %4994, %5096 ], [ %4994, %4987 ], [ %4231, %4703 ]
  %5280 = phi float [ %5246, %5134 ], [ %4995, %5096 ], [ %4995, %4987 ], [ %4232, %4703 ]
  %5281 = phi float [ %5247, %5134 ], [ %4996, %5096 ], [ %4996, %4987 ], [ %4233, %4703 ]
  %5282 = phi float [ %5271, %5134 ], [ %4997, %5096 ], [ %4997, %4987 ], [ %4234, %4703 ]
  %5283 = phi float [ %5268, %5134 ], [ %4998, %5096 ], [ %4998, %4987 ], [ %4207, %4703 ]
  %5284 = fcmp fast une float %4707, 0.000000e+00
  %5285 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.unary.f32(i32 25, float %5285)  ; Rsqrt(value)
  br i1 %5284, label %5294, label %5287

; <label>:5287                                    ; preds = %5272
  %5288 = fmul fast float %5286, %188
  %5289 = fmul fast float %5286, %189
  %5290 = fmul fast float %5286, %190
  %5291 = fsub fast float -0.000000e+00, %5288
  %5292 = fsub fast float -0.000000e+00, %5289
  %5293 = fsub fast float -0.000000e+00, %5290
  br label %5461

; <label>:5294                                    ; preds = %5272
  %5295 = fmul fast float %188, %5286
  %5296 = fsub fast float -0.000000e+00, %5295
  %5297 = fmul fast float %189, %5286
  %5298 = fsub fast float -0.000000e+00, %5297
  %5299 = fmul fast float %190, %5286
  %5300 = fsub fast float -0.000000e+00, %5299
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5298, float %5300, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = fmul fast float %4707, 2.500000e+00
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %4707, 0x4013FFFFE0000000
  %5305 = fadd fast float %5304, 0xBFFFFFFFE0000000
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = fmul fast float %4707, 0x4004000020000000
  %5308 = fadd fast float %5307, 0xBFF8000040000000
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %4213, 1.000000e+01
  %5311 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5312 = fmul fast float %5311, 2.000000e+00
  %5313 = fsub fast float 3.000000e+00, %5312
  %5314 = fmul fast float %5311, %5311
  %5315 = fmul fast float %5314, %5313
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = fsub fast float 0x3FE3333340000000, %5282
  %5318 = fmul fast float %5317, 0x400AAAAAA0000000
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fmul fast float %5316, %5319
  %5321 = fmul fast float %5276, 0x3FEA2B8620000000
  %5322 = fmul fast float %5277, 0x3FEA2B8620000000
  %5323 = fmul fast float %5278, 0x3FEA2B8620000000
  %5324 = fadd fast float %5321, 0x3FC81DFBA0000000
  %5325 = fmul fast float %5324, %5276
  %5326 = fadd fast float %5325, 0x3F910E6020000000
  %5327 = fadd fast float %5322, 0x3FC81DFBA0000000
  %5328 = fmul fast float %5327, %5277
  %5329 = fadd fast float %5328, 0x3F910E6020000000
  %5330 = fadd fast float %5323, 0x3FC81DFBA0000000
  %5331 = fmul fast float %5330, %5278
  %5332 = fadd fast float %5331, 0x3F910E6020000000
  %5333 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5336 = fsub fast float %5333, %5276
  %5337 = fsub fast float %5334, %5277
  %5338 = fsub fast float %5335, %5278
  %5339 = fmul fast float %5336, %5303
  %5340 = fmul fast float %5339, %5320
  %5341 = fmul fast float %5337, %5303
  %5342 = fmul fast float %5341, %5320
  %5343 = fmul fast float %5338, %5303
  %5344 = fmul fast float %5343, %5320
  %5345 = fadd fast float %5340, %5276
  %5346 = fadd fast float %5342, %5277
  %5347 = fadd fast float %5344, %5278
  %5348 = fmul fast float %5283, %5283
  %5349 = fmul fast float %5348, %5348
  %5350 = fadd fast float %5306, 1.000000e+00
  %5351 = fsub fast float %5350, %5320
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fsub fast float 1.000000e+00, %5349
  %5356 = call float @dx.op.binary.f32(i32 36, float %5352, float %5355)  ; FMin(a,b)
  %5357 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5358 = call float @dx.op.binary.f32(i32 35, float %5356, float %5357)  ; FMax(a,b)
  %5359 = fadd fast float %5354, 0xBFE4CCCCC0000000
  %5360 = fmul fast float %5359, 0x4006DB6DA0000000
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = fsub fast float 3.000000e+00, %5362
  %5364 = bitcast float %5279 to i32
  %5365 = ashr i32 %5364, 1
  %5366 = add nsw i32 %5365, 532487669
  %5367 = bitcast i32 %5366 to float
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = bitcast float %5368 to i32
  %5370 = sub nsw i32 2129859010, %5369
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = bitcast float %5280 to i32
  %5374 = ashr i32 %5373, 1
  %5375 = add nsw i32 %5374, 532487669
  %5376 = bitcast i32 %5375 to float
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = bitcast float %5377 to i32
  %5379 = sub nsw i32 2129859010, %5378
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, 2.000000e+00
  %5382 = bitcast float %5281 to i32
  %5383 = ashr i32 %5382, 1
  %5384 = add nsw i32 %5383, 532487669
  %5385 = bitcast i32 %5384 to float
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = bitcast float %5386 to i32
  %5388 = sub nsw i32 2129859010, %5387
  %5389 = bitcast i32 %5388 to float
  %5390 = fmul fast float %5389, 2.000000e+00
  %5391 = fsub fast float 0x4002A9FBE0000000, %5372
  %5392 = fadd fast float %5372, 0x3FD54FDF00000000
  %5393 = bitcast float %5392 to i32
  %5394 = sub nsw i32 2129859010, %5393
  %5395 = bitcast i32 %5394 to float
  %5396 = fmul fast float %5395, %5391
  %5397 = fmul fast float %5396, %5396
  %5398 = fsub fast float 0x4002A9FBE0000000, %5381
  %5399 = fadd fast float %5381, 0x3FD54FDF00000000
  %5400 = bitcast float %5399 to i32
  %5401 = sub nsw i32 2129859010, %5400
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5402, %5398
  %5404 = fmul fast float %5403, %5403
  %5405 = fsub fast float 0x4002A9FBE0000000, %5390
  %5406 = fadd fast float %5390, 0x3FD54FDF00000000
  %5407 = bitcast float %5406 to i32
  %5408 = sub nsw i32 2129859010, %5407
  %5409 = bitcast i32 %5408 to float
  %5410 = fmul fast float %5409, %5405
  %5411 = fmul fast float %5410, %5410
  %5412 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5397)  ; FMax(a,b)
  %5413 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5404)  ; FMax(a,b)
  %5414 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5411)  ; FMax(a,b)
  %5415 = fsub fast float 1.000000e+00, %5301
  %5416 = fadd fast float %5415, %5316
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = fsub fast float 1.000000e+00, %4688
  %5419 = fmul fast float %5358, %5418
  %5420 = fmul fast float %5361, %5361
  %5421 = fmul fast float %5420, %5419
  %5422 = fmul fast float %5421, %5363
  %5423 = fmul fast float %5418, 0xBFE99999A0000000
  %5424 = fmul fast float %5423, %5303
  %5425 = fmul fast float %5424, %5320
  %5426 = fadd fast float %5425, 1.000000e+00
  %5427 = fadd fast float %5282, -1.000000e+00
  %5428 = fmul fast float %5426, %5427
  %5429 = fadd fast float %5428, 1.000000e+00
  %5430 = fsub fast float %5412, %5279
  %5431 = fsub fast float %5413, %5280
  %5432 = fsub fast float %5414, %5281
  %5433 = fmul fast float %5422, %5430
  %5434 = fmul fast float %5422, %5431
  %5435 = fmul fast float %5422, %5432
  %5436 = fadd fast float %5433, %5279
  %5437 = fadd fast float %5434, %5280
  %5438 = fadd fast float %5435, %5281
  %5439 = fsub fast float %116, %5273
  %5440 = fsub fast float %117, %5274
  %5441 = fsub fast float %118, %5275
  %5442 = fmul fast float %5422, %5439
  %5443 = fmul fast float %5422, %5440
  %5444 = fmul fast float %5422, %5441
  %5445 = fadd fast float %5442, %5273
  %5446 = fadd fast float %5443, %5274
  %5447 = fadd fast float %5444, %5275
  %5448 = fmul fast float %5422, %5417
  %5449 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5450 = fsub fast float 1.000000e+00, %5449
  %5451 = fmul fast float %5448, %5450
  %5452 = fadd fast float %5451, %5449
  %5453 = fsub fast float 1.000000e+00, %5283
  %5454 = fmul fast float %5422, %5453
  %5455 = fadd fast float %5454, %5283
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %5445, float %5446, float %5447)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 25, float %5456)  ; Rsqrt(value)
  %5458 = fmul fast float %5445, %5457
  %5459 = fmul fast float %5446, %5457
  %5460 = fmul fast float %5447, %5457
  br label %5461

; <label>:5461                                    ; preds = %5294, %5287
  %5462 = phi float [ %5293, %5287 ], [ %5300, %5294 ]
  %5463 = phi float [ %5292, %5287 ], [ %5298, %5294 ]
  %5464 = phi float [ %5291, %5287 ], [ %5296, %5294 ]
  %5465 = phi float [ %5290, %5287 ], [ %5299, %5294 ]
  %5466 = phi float [ %5289, %5287 ], [ %5297, %5294 ]
  %5467 = phi float [ %5288, %5287 ], [ %5295, %5294 ]
  %5468 = phi float [ %5273, %5287 ], [ %5458, %5294 ]
  %5469 = phi float [ %5274, %5287 ], [ %5459, %5294 ]
  %5470 = phi float [ %5275, %5287 ], [ %5460, %5294 ]
  %5471 = phi float [ %5276, %5287 ], [ %5345, %5294 ]
  %5472 = phi float [ %5277, %5287 ], [ %5346, %5294 ]
  %5473 = phi float [ %5278, %5287 ], [ %5347, %5294 ]
  %5474 = phi float [ %5279, %5287 ], [ %5436, %5294 ]
  %5475 = phi float [ %5280, %5287 ], [ %5437, %5294 ]
  %5476 = phi float [ %5281, %5287 ], [ %5438, %5294 ]
  %5477 = phi float [ %5282, %5287 ], [ %5452, %5294 ]
  %5478 = phi float [ %5283, %5287 ], [ %5455, %5294 ]
  %5479 = fsub fast float -0.000000e+00, %190
  %5480 = select i1 %247, float 0.000000e+00, float %5476
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5464, float %5463, float %5462)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5466, float %5465, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = fmul fast float %5484, %5468
  %5486 = fmul fast float %5484, %5469
  %5487 = fmul fast float %5484, %5470
  %5488 = fsub fast float %5467, %5485
  %5489 = fsub fast float %5466, %5486
  %5490 = fsub fast float %5465, %5487
  %5491 = call float @dx.op.binary.f32(i32 36, float %5478, float 1.000000e+00)  ; FMin(a,b)
  %5492 = fsub fast float 1.000000e+00, %5478
  %5493 = bitcast float %5492 to i32
  %5494 = sub nsw i32 2129859010, %5493
  %5495 = bitcast i32 %5494 to float
  %5496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5497 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fcmp fast oeq float %5497, 0.000000e+00
  %5499 = fcmp fast oeq float %5496, 0.000000e+00
  %5500 = or i1 %5499, %5498
  br i1 %5500, label %5530, label %5501

; <label>:5501                                    ; preds = %5461
  %5502 = fsub fast float -0.000000e+00, %83
  %5503 = fsub fast float -0.000000e+00, %81
  %5504 = call float @dx.op.unary.f32(i32 24, float %5497)  ; Sqrt(value)
  %5505 = fdiv fast float %5504, %5496
  %5506 = fcmp fast ogt float %5505, 0x3FFB6F8900000000
  %5507 = select i1 %5506, float 0x3FFB6F8900000000, float %5505
  %5508 = fmul fast float %5507, 0x3FE8A23460000000
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = call float @dx.op.binary.f32(i32 35, float %5507, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5511 = fmul fast float %5509, %5496
  %5512 = fmul fast float %5510, 0x3FF279A740000000
  %5513 = fadd fast float %5512, -1.000000e+00
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5503, float %82, float %5502, float %5503, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  %5516 = fmul fast float %5515, %5502
  %5517 = fmul fast float %5515, %5503
  %5518 = fmul fast float %5515, %82
  %5519 = fmul fast float %5513, %5513
  %5520 = fsub fast float 1.000000e+00, %5519
  %5521 = fmul fast float %5510, 0x40005F8BE0000000
  %5522 = fsub fast float 0x400C5BF8A0000000, %5521
  %5523 = fdiv fast float %5511, %5522
  %5524 = fmul fast float %5523, 0x3FEE31C3C0000000
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5510, 0x3FDACB7480000000
  %5527 = fadd fast float %5526, 0xBFD7347680000000
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %5528, %5520
  br label %5530

; <label>:5530                                    ; preds = %5501, %5461
  %5531 = phi float [ %5516, %5501 ], [ 0.000000e+00, %5461 ]
  %5532 = phi float [ %5517, %5501 ], [ 0.000000e+00, %5461 ]
  %5533 = phi float [ %5518, %5501 ], [ 0.000000e+00, %5461 ]
  %5534 = phi float [ %5525, %5501 ], [ 0.000000e+00, %5461 ]
  %5535 = phi float [ %5529, %5501 ], [ 0.000000e+00, %5461 ]
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5532, float %5533, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fmul fast float %5536, 0x3FDF454380000000
  %5538 = fmul fast float %5536, %5536
  %5539 = fmul fast float %5538, 0x3FEE471020000000
  %5540 = fadd fast float %5539, 0xBFD42F6020000000
  %5541 = fmul fast float %5496, 0x3FD20DD760000000
  %5542 = fmul fast float %5540, %5535
  %5543 = fadd fast float %5542, %5541
  %5544 = fmul fast float %5537, %5534
  %5545 = fadd fast float %5543, %5544
  %5546 = fsub fast float %5543, %5544
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5532, float %5533, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fmul fast float %5547, 0x3FDF454380000000
  %5549 = fmul fast float %5547, %5547
  %5550 = fmul fast float %5549, 0x3FEE471020000000
  %5551 = fadd fast float %5550, 0xBFD42F6020000000
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5534, float %5535, float 0x3FD20DD760000000, float %5548, float %5551)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5554 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fcmp fast oeq float %5554, 0.000000e+00
  %5556 = fcmp fast oeq float %5553, 0.000000e+00
  %5557 = or i1 %5556, %5555
  br i1 %5557, label %5587, label %5558

; <label>:5558                                    ; preds = %5530
  %5559 = fsub fast float -0.000000e+00, %79
  %5560 = fsub fast float -0.000000e+00, %77
  %5561 = call float @dx.op.unary.f32(i32 24, float %5554)  ; Sqrt(value)
  %5562 = fdiv fast float %5561, %5553
  %5563 = fcmp fast ogt float %5562, 0x3FFB6F8900000000
  %5564 = select i1 %5563, float 0x3FFB6F8900000000, float %5562
  %5565 = fmul fast float %5564, 0x3FE8A23460000000
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5564, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5568 = fmul fast float %5566, %5553
  %5569 = fmul fast float %5567, 0x3FF279A740000000
  %5570 = fadd fast float %5569, -1.000000e+00
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %78, float %5559, float %5560, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = call float @dx.op.unary.f32(i32 25, float %5571)  ; Rsqrt(value)
  %5573 = fmul fast float %5572, %5559
  %5574 = fmul fast float %5572, %5560
  %5575 = fmul fast float %5572, %78
  %5576 = fmul fast float %5570, %5570
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = fmul fast float %5567, 0x40005F8BE0000000
  %5579 = fsub fast float 0x400C5BF8A0000000, %5578
  %5580 = fdiv fast float %5568, %5579
  %5581 = fmul fast float %5580, 0x3FEE31C3C0000000
  %5582 = fmul fast float %5581, %5577
  %5583 = fmul fast float %5567, 0x3FDACB7480000000
  %5584 = fadd fast float %5583, 0xBFD7347680000000
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5585, %5577
  br label %5587

; <label>:5587                                    ; preds = %5558, %5530
  %5588 = phi float [ %5573, %5558 ], [ 0.000000e+00, %5530 ]
  %5589 = phi float [ %5574, %5558 ], [ 0.000000e+00, %5530 ]
  %5590 = phi float [ %5575, %5558 ], [ 0.000000e+00, %5530 ]
  %5591 = phi float [ %5582, %5558 ], [ 0.000000e+00, %5530 ]
  %5592 = phi float [ %5586, %5558 ], [ 0.000000e+00, %5530 ]
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fmul fast float %5593, 0x3FDF454380000000
  %5595 = fmul fast float %5593, %5593
  %5596 = fmul fast float %5595, 0x3FEE471020000000
  %5597 = fadd fast float %5596, 0xBFD42F6020000000
  %5598 = fmul fast float %5553, 0x3FD20DD760000000
  %5599 = fmul fast float %5597, %5592
  %5600 = fadd fast float %5599, %5598
  %5601 = fmul fast float %5594, %5591
  %5602 = fadd fast float %5600, %5601
  %5603 = fsub fast float %5600, %5601
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fmul fast float %5604, 0x3FDF454380000000
  %5606 = fmul fast float %5604, %5604
  %5607 = fmul fast float %5606, 0x3FEE471020000000
  %5608 = fadd fast float %5607, 0xBFD42F6020000000
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5591, float %5592, float 0x3FD20DD760000000, float %5605, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5611 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fcmp fast oeq float %5611, 0.000000e+00
  %5613 = fcmp fast oeq float %5610, 0.000000e+00
  %5614 = or i1 %5613, %5612
  br i1 %5614, label %5644, label %5615

; <label>:5615                                    ; preds = %5587
  %5616 = fsub fast float -0.000000e+00, %75
  %5617 = fsub fast float -0.000000e+00, %73
  %5618 = call float @dx.op.unary.f32(i32 24, float %5611)  ; Sqrt(value)
  %5619 = fdiv fast float %5618, %5610
  %5620 = fcmp fast ogt float %5619, 0x3FFB6F8900000000
  %5621 = select i1 %5620, float 0x3FFB6F8900000000, float %5619
  %5622 = fmul fast float %5621, 0x3FE8A23460000000
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5621, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5625 = fmul fast float %5623, %5610
  %5626 = fmul fast float %5624, 0x3FF279A740000000
  %5627 = fadd fast float %5626, -1.000000e+00
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %74, float %5616, float %5617, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 25, float %5628)  ; Rsqrt(value)
  %5630 = fmul fast float %5629, %5616
  %5631 = fmul fast float %5629, %5617
  %5632 = fmul fast float %5629, %74
  %5633 = fmul fast float %5627, %5627
  %5634 = fsub fast float 1.000000e+00, %5633
  %5635 = fmul fast float %5624, 0x40005F8BE0000000
  %5636 = fsub fast float 0x400C5BF8A0000000, %5635
  %5637 = fdiv fast float %5625, %5636
  %5638 = fmul fast float %5637, 0x3FEE31C3C0000000
  %5639 = fmul fast float %5638, %5634
  %5640 = fmul fast float %5624, 0x3FDACB7480000000
  %5641 = fadd fast float %5640, 0xBFD7347680000000
  %5642 = fmul fast float %5641, %5637
  %5643 = fmul fast float %5642, %5634
  br label %5644

; <label>:5644                                    ; preds = %5615, %5587
  %5645 = phi float [ %5630, %5615 ], [ 0.000000e+00, %5587 ]
  %5646 = phi float [ %5631, %5615 ], [ 0.000000e+00, %5587 ]
  %5647 = phi float [ %5632, %5615 ], [ 0.000000e+00, %5587 ]
  %5648 = phi float [ %5639, %5615 ], [ 0.000000e+00, %5587 ]
  %5649 = phi float [ %5643, %5615 ], [ 0.000000e+00, %5587 ]
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = fmul fast float %5650, 0x3FDF454380000000
  %5652 = fmul fast float %5650, %5650
  %5653 = fmul fast float %5652, 0x3FEE471020000000
  %5654 = fadd fast float %5653, 0xBFD42F6020000000
  %5655 = fmul fast float %5610, 0x3FD20DD760000000
  %5656 = fmul fast float %5654, %5649
  %5657 = fadd fast float %5656, %5655
  %5658 = fmul fast float %5651, %5648
  %5659 = fadd fast float %5657, %5658
  %5660 = fsub fast float %5657, %5658
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fmul fast float %5661, 0x3FDF454380000000
  %5663 = fmul fast float %5661, %5661
  %5664 = fmul fast float %5663, 0x3FEE471020000000
  %5665 = fadd fast float %5664, 0xBFD42F6020000000
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5648, float %5649, float 0x3FD20DD760000000, float %5662, float %5665)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.binary.f32(i32 35, float %5545, float 0.000000e+00)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5602, float 0.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5659, float 0.000000e+00)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5546, float 0.000000e+00)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5603, float 0.000000e+00)  ; FMax(a,b)
  %5672 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5673 = call float @dx.op.binary.f32(i32 35, float %5552, float 0.000000e+00)  ; FMax(a,b)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5675 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 0
  %5678 = call float @dx.op.binary.f32(i32 36, float %5471, float %5677)  ; FMin(a,b)
  %5679 = fsub fast float 1.000000e+00, %5491
  %5680 = fmul fast float %5678, %5679
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = bitcast float %5681 to i32
  %5683 = sub nsw i32 2129859010, %5682
  %5684 = bitcast i32 %5683 to float
  %5685 = call float @dx.op.binary.f32(i32 36, float %5472, float %5677)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5679
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5473, float %5677)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5679
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = fmul fast float %5667, %5491
  %5698 = fmul fast float %5697, %5684
  %5699 = fmul fast float %5668, %5491
  %5700 = fmul fast float %5699, %5690
  %5701 = fmul fast float %5669, %5491
  %5702 = fmul fast float %5701, %5696
  %5703 = call float @dx.op.binary.f32(i32 36, float %5474, float %5677)  ; FMin(a,b)
  %5704 = fmul fast float %5703, %5679
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = call float @dx.op.binary.f32(i32 36, float %5475, float %5677)  ; FMin(a,b)
  %5710 = fmul fast float %5709, %5679
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = bitcast float %5711 to i32
  %5713 = sub nsw i32 2129859010, %5712
  %5714 = bitcast i32 %5713 to float
  %5715 = call float @dx.op.binary.f32(i32 36, float %5480, float %5677)  ; FMin(a,b)
  %5716 = fmul fast float %5715, %5679
  %5717 = fsub fast float 1.000000e+00, %5716
  %5718 = bitcast float %5717 to i32
  %5719 = sub nsw i32 2129859010, %5718
  %5720 = bitcast i32 %5719 to float
  %5721 = fmul fast float %5673, %5491
  %5722 = fmul fast float %5721, %5708
  %5723 = fmul fast float %5674, %5491
  %5724 = fmul fast float %5723, %5714
  %5725 = fmul fast float %5675, %5491
  %5726 = fmul fast float %5725, %5720
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5700, float %5702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = select i1 %247, float 0.000000e+00, float %5698
  %5729 = select i1 %247, float %5727, float %5700
  %5730 = select i1 %247, float 0.000000e+00, float %5702
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %5672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = select i1 %247, float 0.000000e+00, float %5670
  %5733 = select i1 %247, float %5731, float %5671
  %5734 = select i1 %247, float 0.000000e+00, float %5672
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5724, float %5726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = select i1 %247, float 0.000000e+00, float %5722
  %5737 = select i1 %247, float %5735, float %5724
  %5738 = select i1 %247, float 0.000000e+00, float %5726
  %5739 = fmul fast float %5482, 9.843750e-01
  %5740 = fmul fast float %5477, 9.843750e-01
  %5741 = fadd fast float %5739, 7.812500e-03
  %5742 = fadd fast float %5740, 7.812500e-03
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5741, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 3
  %5746 = fmul fast float %5744, %5474
  %5747 = fmul fast float %5744, %5475
  %5748 = fmul fast float %5744, %5480
  %5749 = fadd fast float %5746, %5745
  %5750 = fadd fast float %5747, %5745
  %5751 = fadd fast float %5748, %5745
  %5752 = fcmp fast ogt float %4208, 0.000000e+00
  br i1 %5752, label %5753, label %5779

; <label>:5753                                    ; preds = %5644
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %5482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5758 = fadd fast float %5755, -5.000000e-01
  %5759 = fadd fast float %5756, -5.000000e-01
  %5760 = fadd fast float %5757, -5.000000e-01
  %5761 = fsub fast float 1.000000e+00, %5474
  %5762 = fsub fast float 1.000000e+00, %5475
  %5763 = fsub fast float 1.000000e+00, %5480
  %5764 = fmul fast float %5474, 4.000000e+00
  %5765 = fmul fast float %5764, %5761
  %5766 = fmul fast float %5765, %5758
  %5767 = fmul fast float %5475, 4.000000e+00
  %5768 = fmul fast float %5767, %5762
  %5769 = fmul fast float %5768, %5759
  %5770 = fmul fast float %5480, 4.000000e+00
  %5771 = fmul fast float %5770, %5763
  %5772 = fmul fast float %5771, %5760
  %5773 = fadd fast float %5766, %5749
  %5774 = fadd fast float %5769, %5750
  %5775 = fadd fast float %5772, %5751
  %5776 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5777 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  br label %5779

; <label>:5779                                    ; preds = %5753, %5644
  %5780 = phi float [ %5776, %5753 ], [ %5749, %5644 ]
  %5781 = phi float [ %5777, %5753 ], [ %5750, %5644 ]
  %5782 = phi float [ %5778, %5753 ], [ %5751, %5644 ]
  %5783 = call float @dx.op.binary.f32(i32 35, float %5781, float %5782)  ; FMax(a,b)
  %5784 = call float @dx.op.binary.f32(i32 35, float %5780, float %5783)  ; FMax(a,b)
  %5785 = fsub fast float 1.000000e+00, %5784
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fcmp fast ogt float %5786, 0x3E7FF19E20000000
  %5788 = fdiv fast float 1.000000e+00, %5786
  %5789 = select i1 %5787, float %5788, float 0.000000e+00
  %5790 = fmul fast float %5789, %5471
  %5791 = fmul fast float %5789, %5472
  %5792 = fmul fast float %5789, %5473
  %5793 = fadd fast float %5790, -1.000000e+00
  %5794 = fadd fast float %5791, -1.000000e+00
  %5795 = fadd fast float %5792, -1.000000e+00
  %5796 = fmul fast float %5793, 5.000000e-01
  %5797 = fmul fast float %5794, 5.000000e-01
  %5798 = fmul fast float %5795, 5.000000e-01
  %5799 = fadd fast float %5796, 1.000000e+00
  %5800 = fadd fast float %5797, 1.000000e+00
  %5801 = fadd fast float %5798, 1.000000e+00
  %5802 = fmul fast float %5785, %4298
  %5803 = fmul fast float %5785, %4299
  %5804 = fmul fast float %5785, %4300
  %5805 = fadd fast float %5802, -1.000000e+00
  %5806 = fadd fast float %5803, -1.000000e+00
  %5807 = fadd fast float %5804, -1.000000e+00
  %5808 = fmul fast float %5805, %4205
  %5809 = fmul fast float %5806, %4205
  %5810 = fmul fast float %5807, %4205
  %5811 = fmul fast float %5780, %5736
  %5812 = fmul fast float %5781, %5737
  %5813 = fmul fast float %5782, %5738
  %5814 = fsub fast float 1.000000e+00, %5482
  %5815 = bitcast float %5814 to i32
  %5816 = sitofp i32 %5815 to float
  %5817 = fmul fast float %5816, 5.000000e+00
  %5818 = fadd fast float %5817, 0xC1EFBF8940000000
  %5819 = fptosi float %5818 to i32
  %5820 = bitcast i32 %5819 to float
  %5821 = fmul fast float %5820, %4209
  %5822 = fmul fast float %5728, %5821
  %5823 = fmul fast float %5822, %5785
  %5824 = fmul fast float %5823, %5799
  %5825 = fmul fast float %5729, %5821
  %5826 = fmul fast float %5825, %5785
  %5827 = fmul fast float %5826, %5800
  %5828 = fmul fast float %5730, %5821
  %5829 = fmul fast float %5828, %5785
  %5830 = fmul fast float %5829, %5801
  %5831 = fadd fast float %5811, %4198
  %5832 = fadd fast float %5831, %5824
  %5833 = fmul fast float %5832, %4205
  %5834 = fadd fast float %5812, %4199
  %5835 = fadd fast float %5834, %5827
  %5836 = fmul fast float %5835, %4205
  %5837 = fadd fast float %5813, %4200
  %5838 = fadd fast float %5837, %5830
  %5839 = fmul fast float %5838, %4205
  %5840 = fadd fast float %5810, 1.000000e+00
  %5841 = fadd fast float %5809, 1.000000e+00
  %5842 = fadd fast float %5808, 1.000000e+00
  %5843 = fmul fast float %5785, %5730
  %5844 = fmul fast float %5785, %5729
  %5845 = fmul fast float %5785, %5728
  %5846 = fmul fast float %5842, %5732
  %5847 = fmul fast float %5841, %5733
  %5848 = fmul fast float %5840, %5734
  %5849 = fadd fast float %5846, %5845
  %5850 = fmul fast float %5849, %4205
  %5851 = fadd fast float %5847, %5844
  %5852 = fmul fast float %5851, %4205
  %5853 = fadd fast float %5848, %5843
  %5854 = fmul fast float %5853, %4205
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5857 = fcmp fast oeq float %5856, 0.000000e+00
  br i1 %5857, label %6996, label %5858

; <label>:5858                                    ; preds = %5779
  %5859 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5870 = select i1 %247, float %5867, float %5863
  %5871 = select i1 %247, float %5869, float %5864
  %5872 = select i1 %247, float %5868, float %5865
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5875 = fmul fast float %5874, %116
  %5876 = fmul fast float %5874, %117
  %5877 = fmul fast float %5874, %118
  %5878 = fadd fast float %5875, %188
  %5879 = fadd fast float %5876, %189
  %5880 = fadd fast float %5877, %190
  %5881 = fcmp fast olt float %5856, 0.000000e+00
  br i1 %5881, label %6521, label %5882

; <label>:5882                                    ; preds = %5858
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5892 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %5897 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5898 = fmul fast float %5884, %5878
  %5899 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %5885, float %5898)  ; FMad(a,b,c)
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5886, float %5899)  ; FMad(a,b,c)
  %5901 = fadd fast float %5900, %5887
  %5902 = fmul fast float %5889, %5878
  %5903 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %5890, float %5902)  ; FMad(a,b,c)
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5891, float %5903)  ; FMad(a,b,c)
  %5905 = fadd fast float %5904, %5892
  %5906 = fmul fast float %5894, %5878
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %5895, float %5906)  ; FMad(a,b,c)
  %5908 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5896, float %5907)  ; FMad(a,b,c)
  %5909 = fadd fast float %5908, %5897
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = fcmp fast une float %5911, 0.000000e+00
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5917 = fmul fast float %5916, %5901
  %5918 = fmul fast float %5916, %5905
  %5919 = fadd fast float %5917, %5914
  %5920 = fadd fast float %5918, %5915
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5925 = fmul fast float %5924, %5901
  %5926 = fmul fast float %5924, %5905
  %5927 = fadd fast float %5925, %5922
  %5928 = fadd fast float %5926, %5923
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5931 = fsub fast float %5930, %5909
  %5932 = extractvalue %dx.types.CBufRet.f32 %5929, 2
  %5933 = fmul fast float %5931, %5932
  %5934 = fsub fast float 1.000000e+00, %5933
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  br i1 %5912, label %5996, label %5936

; <label>:5936                                    ; preds = %5882
  %5937 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5940 = fadd fast float %5939, %5937
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  br i1 %5941, label %5942, label %5966

; <label>:5942                                    ; preds = %5936
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = fsub fast float %5927, %5944
  %5947 = fsub fast float %5928, %5945
  %5948 = fcmp fast olt float %5946, 0.000000e+00
  %5949 = fcmp fast olt float %5947, 0.000000e+00
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = select i1 %5948, float %5951, float %5953
  %5956 = select i1 %5949, float %5952, float %5954
  %5957 = fmul fast float %5955, %5946
  %5958 = fmul fast float %5956, %5947
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5962 = call float @dx.op.binary.f32(i32 35, float %5959, float %5960)  ; FMax(a,b)
  %5963 = fsub fast float %5961, %5962
  %5964 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5965 = fmul fast float %5964, %5935
  br label %5966

; <label>:5966                                    ; preds = %5942, %5936
  %5967 = phi float [ %5965, %5942 ], [ 0.000000e+00, %5936 ]
  %5968 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5969 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5970 = fadd fast float %5969, %5968
  %5971 = fcmp fast ogt float %5970, 0.000000e+00
  br i1 %5971, label %5972, label %5996

; <label>:5972                                    ; preds = %5966
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = fsub fast float %5919, %5974
  %5977 = fsub fast float %5920, %5975
  %5978 = fcmp fast olt float %5976, 0.000000e+00
  %5979 = fcmp fast olt float %5977, 0.000000e+00
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %5984 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5985 = select i1 %5978, float %5981, float %5983
  %5986 = select i1 %5979, float %5982, float %5984
  %5987 = fmul fast float %5985, %5976
  %5988 = fmul fast float %5986, %5977
  %5989 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5990 = call float @dx.op.unary.f32(i32 6, float %5988)  ; FAbs(value)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5992 = call float @dx.op.binary.f32(i32 35, float %5989, float %5990)  ; FMax(a,b)
  %5993 = fsub fast float %5991, %5992
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = fmul fast float %5994, %5935
  br label %5996

; <label>:5996                                    ; preds = %5972, %5966, %5882
  %5997 = phi float [ 0.000000e+00, %5882 ], [ %5995, %5972 ], [ 0.000000e+00, %5966 ]
  %5998 = phi float [ 0.000000e+00, %5882 ], [ %5967, %5972 ], [ %5967, %5966 ]
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 1
  %6001 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6004 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6005 = fsub fast float %5901, %6003
  %6006 = fsub fast float %5905, %6004
  %6007 = fcmp fast olt float %6005, 0.000000e+00
  %6008 = fcmp fast olt float %6006, 0.000000e+00
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6014 = select i1 %6007, float %6010, float %6012
  %6015 = select i1 %6008, float %6011, float %6013
  %6016 = fmul fast float %6014, %6005
  %6017 = fmul fast float %6015, %6006
  %6018 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6019 = call float @dx.op.unary.f32(i32 6, float %6017)  ; FAbs(value)
  %6020 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %6021 = call float @dx.op.binary.f32(i32 35, float %6018, float %6019)  ; FMax(a,b)
  %6022 = fsub fast float %6020, %6021
  %6023 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6024 = call float @dx.op.binary.f32(i32 36, float %6023, float %6001)  ; FMin(a,b)
  %6025 = fmul fast float %6024, %5935
  %6026 = fsub fast float %5997, %6025
  %6027 = fsub fast float %5998, %5997
  %6028 = fsub fast float %6027, %6025
  %6029 = call float @dx.op.binary.f32(i32 35, float %5997, float %5998)  ; FMax(a,b)
  %6030 = call float @dx.op.binary.f32(i32 35, float %6025, float %6029)  ; FMax(a,b)
  %6031 = fcmp fast olt float %6030, 1.000000e+00
  br i1 %6031, label %6032, label %6430, !dx.controlflow.hints !95

; <label>:6032                                    ; preds = %5996
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6035 = fcmp fast une float %6034, 0.000000e+00
  br i1 %6035, label %6036, label %6430, !dx.controlflow.hints !96

; <label>:6036                                    ; preds = %6032
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6037, 1
  %6040 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6041 = extractvalue %dx.types.CBufRet.f32 %6037, 3
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6046 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6051 = extractvalue %dx.types.CBufRet.f32 %6047, 3
  %6052 = fmul fast float %6038, %5878
  %6053 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6039, float %6052)  ; FMad(a,b,c)
  %6054 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6040, float %6053)  ; FMad(a,b,c)
  %6055 = fadd fast float %6054, %6041
  %6056 = fmul fast float %6043, %5878
  %6057 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6044, float %6056)  ; FMad(a,b,c)
  %6058 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6045, float %6057)  ; FMad(a,b,c)
  %6059 = fadd fast float %6058, %6046
  %6060 = fmul fast float %6048, %5878
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6049, float %6060)  ; FMad(a,b,c)
  %6062 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6050, float %6061)  ; FMad(a,b,c)
  %6063 = fadd fast float %6062, %6051
  %6064 = fcmp fast oge float %6055, 1.000000e+00
  %6065 = fcmp fast oge float %6059, 1.000000e+00
  %6066 = or i1 %6064, %6065
  %6067 = fcmp fast olt float %6055, 0.000000e+00
  %6068 = fcmp fast olt float %6059, 0.000000e+00
  %6069 = or i1 %6067, %6068
  %6070 = or i1 %6066, %6069
  br i1 %6070, label %6430, label %6071, !dx.controlflow.hints !97

; <label>:6071                                    ; preds = %6036
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.i32 %6076, 2
  %6078 = uitofp i32 %6077 to float
  %6079 = extractvalue %dx.types.CBufRet.i32 %6076, 3
  %6080 = uitofp i32 %6079 to float
  %6081 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6082 = fmul fast float %6081, 2.000000e+00
  %6083 = fsub fast float %6055, %6073
  %6084 = fsub fast float %6059, %6074
  %6085 = fmul fast float %6082, %6083
  %6086 = fmul fast float %6082, %6084
  %6087 = fdiv fast float 1.000000e+00, %5861
  %6088 = fmul fast float %6086, %6087
  %6089 = call float @dx.op.unary.f32(i32 6, float %6088)  ; FAbs(value)
  %6090 = fmul fast float %6075, %5880
  %6091 = fmul fast float %6090, %6082
  %6092 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6093 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6094 = call float @dx.op.binary.f32(i32 35, float %6092, float %6089)  ; FMax(a,b)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6093, float %6094)  ; FMax(a,b)
  %6096 = fmul fast float %6095, 2.000000e+00
  %6097 = call float @dx.op.unary.f32(i32 23, float %6096)  ; Log(value)
  %6098 = call float @dx.op.binary.f32(i32 35, float %6097, float %6078)  ; FMax(a,b)
  %6099 = call float @dx.op.unary.f32(i32 22, float %6098)  ; Frc(value)
  %6100 = fadd fast float %6099, 0xBFEA666660000000
  %6101 = fmul fast float %6100, 8.000000e+00
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 27, float %6098)  ; Round_ni(value)
  %6104 = fadd fast float %6103, %6102
  %6105 = call float @dx.op.binary.f32(i32 36, float %6104, float %6080)  ; FMin(a,b)
  %6106 = call float @dx.op.unary.f32(i32 27, float %6105)  ; Round_ni(value)
  %6107 = fsub fast float -0.000000e+00, %6106
  %6108 = call float @dx.op.unary.f32(i32 21, float %6107)  ; Exp(value)
  %6109 = fmul fast float %6108, %6082
  %6110 = fmul fast float %6109, %6055
  %6111 = fmul fast float %6109, %6059
  %6112 = fmul fast float %6110, 2.500000e-01
  %6113 = fmul fast float %6111, 2.500000e-01
  %6114 = fadd fast float %6112, 5.000000e-01
  %6115 = fadd fast float %6113, 5.000000e-01
  %6116 = fsub fast float %6080, %6078
  %6117 = fptoui float %6116 to i32
  %6118 = add i32 %6117, 320
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6118)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = fcmp fast une float %6105, %6080
  %6123 = fsub fast float %6055, %6120
  %6124 = fsub fast float %6059, %6121
  %6125 = call float @dx.op.unary.f32(i32 6, float %6123)  ; FAbs(value)
  %6126 = call float @dx.op.unary.f32(i32 6, float %6124)  ; FAbs(value)
  %6127 = fmul fast float %6125, %6109
  %6128 = fmul fast float %6126, %6109
  %6129 = fcmp fast olt float %6127, 1.000000e+00
  %6130 = fcmp fast olt float %6128, 1.000000e+00
  %6131 = and i1 %6129, %6130
  %6132 = or i1 %6122, %6131
  br i1 %6132, label %6133, label %6430, !dx.controlflow.hints !98

; <label>:6133                                    ; preds = %6071
  %6134 = fmul fast float %6111, 5.000000e-01
  %6135 = fmul fast float %6110, 5.000000e-01
  %6136 = fadd fast float %6134, 5.000000e-01
  %6137 = fadd fast float %6135, 5.000000e-01
  %6138 = sitofp i32 %6077 to float
  %6139 = fsub fast float %6105, %6138
  %6140 = call float @dx.op.unary.f32(i32 27, float %6139)  ; Round_ni(value)
  %6141 = call float @dx.op.unary.f32(i32 22, float %6105)  ; Frc(value)
  %6142 = call float @dx.op.unary.f32(i32 22, float %6137)  ; Frc(value)
  %6143 = call float @dx.op.unary.f32(i32 22, float %6136)  ; Frc(value)
  %6144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6142, float %6143, float %6140, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6145 = extractvalue %dx.types.ResRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.ResRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.ResRet.f32 %6144, 2
  %6148 = extractvalue %dx.types.ResRet.f32 %6144, 3
  %6149 = fcmp fast ogt float %6141, 0.000000e+00
  br i1 %6149, label %6150, label %6171, !dx.controlflow.hints !99

; <label>:6150                                    ; preds = %6133
  %6151 = fadd fast float %6140, 1.000000e+00
  %6152 = call float @dx.op.unary.f32(i32 22, float %6114)  ; Frc(value)
  %6153 = call float @dx.op.unary.f32(i32 22, float %6115)  ; Frc(value)
  %6154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6152, float %6153, float %6151, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6155 = extractvalue %dx.types.ResRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.ResRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.ResRet.f32 %6154, 2
  %6158 = extractvalue %dx.types.ResRet.f32 %6154, 3
  %6159 = fsub fast float %6155, %6145
  %6160 = fsub fast float %6156, %6146
  %6161 = fsub fast float %6157, %6147
  %6162 = fsub fast float %6158, %6148
  %6163 = fmul fast float %6159, %6141
  %6164 = fmul fast float %6160, %6141
  %6165 = fmul fast float %6161, %6141
  %6166 = fmul fast float %6162, %6141
  %6167 = fadd fast float %6163, %6145
  %6168 = fadd fast float %6164, %6146
  %6169 = fadd fast float %6165, %6147
  %6170 = fadd fast float %6166, %6148
  br label %6171

; <label>:6171                                    ; preds = %6150, %6133
  %6172 = phi float [ %6167, %6150 ], [ %6145, %6133 ]
  %6173 = phi float [ %6168, %6150 ], [ %6146, %6133 ]
  %6174 = phi float [ %6169, %6150 ], [ %6147, %6133 ]
  %6175 = phi float [ %6170, %6150 ], [ %6148, %6133 ]
  %6176 = fadd fast float %6172, -5.000000e-01
  %6177 = fadd fast float %6174, -5.000000e-01
  %6178 = fmul fast float %6176, 0xBFD5555560000000
  %6179 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6177, float %6178)  ; FMad(a,b,c)
  %6180 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6173, float 0.000000e+00)  ; FMad(a,b,c)
  %6181 = fadd fast float %6180, %6175
  %6182 = fmul fast float %6176, -7.500000e-01
  %6183 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6177, float %6182)  ; FMad(a,b,c)
  %6184 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6173, float 0.000000e+00)  ; FMad(a,b,c)
  %6185 = fadd fast float %6184, %6175
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6188, 2
  %6192 = extractvalue %dx.types.CBufRet.f32 %6188, 3
  %6193 = fsub fast float %6189, %6179
  %6194 = fsub fast float %6190, %6181
  %6195 = fsub fast float %6191, %6183
  %6196 = fsub fast float %6192, %6185
  %6197 = fmul fast float %6193, %6187
  %6198 = fmul fast float %6194, %6187
  %6199 = fmul fast float %6195, %6187
  %6200 = fmul fast float %6196, %6187
  %6201 = fadd fast float %6197, %6179
  %6202 = fadd fast float %6198, %6181
  %6203 = fadd fast float %6199, %6183
  %6204 = fadd fast float %6200, %6185
  %6205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.i32 %6205, 0
  %6207 = and i32 %6206, 536870911
  %6208 = uitofp i32 %6207 to float
  %6209 = fmul fast float %6208, %6055
  %6210 = fmul fast float %6208, %6059
  %6211 = fptoui float %6209 to i32
  %6212 = fptoui float %6210 to i32
  %6213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.i32 %6213, 0
  %6215 = and i32 %6214, 31
  %6216 = lshr i32 %6211, %6215
  %6217 = lshr i32 %6212, %6215
  %6218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.i32 %6218, 0
  %6220 = and i32 %6219, 31
  %6221 = shl i32 1, %6220
  %6222 = call i32 @dx.op.binary.i32(i32 40, i32 %6221, i32 4)  ; UMin(a,b)
  %6223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6224 = extractvalue %dx.types.ResRet.i32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.i32 %6223, 1
  %6226 = icmp eq i32 %6222, 0
  br i1 %6226, label %6268, label %6227

; <label>:6227                                    ; preds = %6171
  br label %6228

; <label>:6228                                    ; preds = %6256, %6227
  %6229 = phi i32 [ %6259, %6256 ], [ 0, %6227 ]
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = lshr i32 %6231, 16
  %6233 = and i32 %6232, 31
  %6234 = shl i32 %6217, %6233
  %6235 = add i32 %6234, %6216
  %6236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.i32 %6236, 0
  %6238 = and i32 %6237, 31
  %6239 = shl i32 %6235, %6238
  %6240 = add i32 %6239, %6229
  %6241 = shl i32 %6240, 2
  %6242 = add i32 %6241, 32
  %6243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6242, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.i32 %6243, 0
  %6245 = icmp slt i32 %6244, 0
  %6246 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6229
  %6247 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6229
  %6248 = bitcast float* %6246 to i32*
  %6249 = bitcast float* %6247 to i32*
  br i1 %6245, label %6250, label %6256

; <label>:6250                                    ; preds = %6228
  %6251 = and i32 %6244, 1073741823
  %6252 = add nuw nsw i32 %6251, 20
  %6253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6252, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.i32 %6253, 0
  %6255 = extractvalue %dx.types.ResRet.i32 %6253, 1
  br label %6256

; <label>:6256                                    ; preds = %6250, %6228
  %6257 = phi i32 [ %6254, %6250 ], [ %6224, %6228 ]
  %6258 = phi i32 [ %6255, %6250 ], [ %6225, %6228 ]
  store i32 %6257, i32* %6248, align 4
  store i32 %6258, i32* %6249, align 4
  %6259 = add nuw i32 %6229, 1
  %6260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.i32 %6260, 2
  %6262 = icmp eq i32 %6261, 0
  %6263 = icmp ugt i32 %6244, -1073741825
  %6264 = and i1 %6263, %6262
  %6265 = icmp ult i32 %6259, %6222
  %6266 = and i1 %6264, %6265
  br i1 %6266, label %6228, label %6267

; <label>:6267                                    ; preds = %6256
  br label %6268

; <label>:6268                                    ; preds = %6267, %6171
  %6269 = phi i32 [ 0, %6171 ], [ %6259, %6267 ]
  %6270 = extractvalue %dx.types.CBufRet.f32 %6033, 2
  %6271 = fptoui float %6270 to i32
  %6272 = icmp eq i32 %6271, 0
  br i1 %6272, label %6324, label %6273

; <label>:6273                                    ; preds = %6268
  br label %6274

; <label>:6274                                    ; preds = %6319, %6273
  %6275 = phi i32 [ %6320, %6319 ], [ %6269, %6273 ]
  %6276 = phi i32 [ %6321, %6319 ], [ 0, %6273 ]
  %6277 = lshr i32 %6276, 2
  %6278 = and i32 %6276, 3
  %6279 = add nuw nsw i32 %6277, 83
  %6280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6279)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.i32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.i32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.i32 %6280, 2
  %6284 = extractvalue %dx.types.CBufRet.i32 %6280, 3
  %6285 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6281, i32* %6285, align 4
  %6286 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6282, i32* %6286, align 4
  %6287 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6283, i32* %6287, align 4
  %6288 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6284, i32* %6288, align 4
  %6289 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6278
  %6290 = load i32, i32* %6289, align 4, !tbaa !100, !noalias !104
  %6291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.i32 %6291, 0
  %6293 = lshr i32 %6292, 16
  %6294 = and i32 %6293, 31
  %6295 = shl i32 %6217, %6294
  %6296 = add i32 %6295, %6216
  %6297 = shl i32 %6296, 2
  %6298 = add i32 %6297, %6290
  %6299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6298, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.i32 %6299, 0
  %6301 = icmp eq i32 %6300, 0
  br i1 %6301, label %6319, label %6302

; <label>:6302                                    ; preds = %6274
  %6303 = icmp slt i32 %6300, 0
  %6304 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6275
  %6305 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6275
  %6306 = bitcast float* %6304 to i32*
  %6307 = bitcast float* %6305 to i32*
  br i1 %6303, label %6308, label %6315

; <label>:6308                                    ; preds = %6302
  %6309 = and i32 %6300, 1073741823
  %6310 = add i32 %6290, 20
  %6311 = add i32 %6310, %6309
  %6312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6311, i32 undef)  ; BufferLoad(srv,index,wot)
  %6313 = extractvalue %dx.types.ResRet.i32 %6312, 0
  %6314 = extractvalue %dx.types.ResRet.i32 %6312, 1
  br label %6315

; <label>:6315                                    ; preds = %6308, %6302
  %6316 = phi i32 [ %6313, %6308 ], [ %6224, %6302 ]
  %6317 = phi i32 [ %6314, %6308 ], [ %6225, %6302 ]
  store i32 %6316, i32* %6306, align 4
  store i32 %6317, i32* %6307, align 4
  %6318 = add i32 %6275, 1
  br label %6319

; <label>:6319                                    ; preds = %6315, %6274
  %6320 = phi i32 [ %6275, %6274 ], [ %6318, %6315 ]
  %6321 = add nuw i32 %6276, 1
  %6322 = icmp eq i32 %6321, %6271
  br i1 %6322, label %6323, label %6274

; <label>:6323                                    ; preds = %6319
  br label %6324

; <label>:6324                                    ; preds = %6323, %6268
  %6325 = phi i32 [ %6269, %6268 ], [ %6320, %6323 ]
  %6326 = icmp eq i32 %6325, 1
  %6327 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  %6328 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  br i1 %6326, label %6329, label %6332

; <label>:6329                                    ; preds = %6324
  %6330 = load float, float* %6327, align 4
  %6331 = load float, float* %6328, align 4
  br label %6359

; <label>:6332                                    ; preds = %6324
  %6333 = load float, float* %6327, align 4
  %6334 = load float, float* %6328, align 4
  %6335 = fdiv fast float 1.000000e+00, %6334
  %6336 = fsub fast float %6333, %6335
  %6337 = icmp ugt i32 %6325, 1
  br i1 %6337, label %6338, label %6354

; <label>:6338                                    ; preds = %6332
  br label %6339

; <label>:6339                                    ; preds = %6339, %6338
  %6340 = phi float [ %6349, %6339 ], [ %6336, %6338 ]
  %6341 = phi float [ %6350, %6339 ], [ %6333, %6338 ]
  %6342 = phi i32 [ %6351, %6339 ], [ 1, %6338 ]
  %6343 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6342
  %6344 = load float, float* %6343, align 4
  %6345 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6342
  %6346 = load float, float* %6345, align 4
  %6347 = fdiv fast float 1.000000e+00, %6346
  %6348 = fsub fast float %6344, %6347
  %6349 = call float @dx.op.binary.f32(i32 36, float %6340, float %6348)  ; FMin(a,b)
  %6350 = call float @dx.op.binary.f32(i32 35, float %6341, float %6344)  ; FMax(a,b)
  %6351 = add nuw i32 %6342, 1
  %6352 = icmp eq i32 %6351, %6325
  br i1 %6352, label %6353, label %6339

; <label>:6353                                    ; preds = %6339
  br label %6354

; <label>:6354                                    ; preds = %6353, %6332
  %6355 = phi float [ %6336, %6332 ], [ %6349, %6353 ]
  %6356 = phi float [ %6333, %6332 ], [ %6350, %6353 ]
  %6357 = fsub fast float %6356, %6355
  %6358 = fdiv fast float 1.000000e+00, %6357
  br label %6359

; <label>:6359                                    ; preds = %6354, %6329
  %6360 = phi float [ %6330, %6329 ], [ %6356, %6354 ]
  %6361 = phi float [ %6331, %6329 ], [ %6358, %6354 ]
  %6362 = fadd fast float %6063, %6360
  %6363 = fmul fast float %6362, %6361
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fmul fast float %6364, 2.000000e+00
  %6366 = fsub fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6201, %6201
  %6368 = fsub fast float %6202, %6367
  %6369 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6368)  ; FMax(a,b)
  %6370 = fdiv fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6202, %6201
  %6372 = fsub fast float %6203, %6371
  %6373 = fsub fast float %6366, %6201
  %6374 = fmul fast float %6366, %6366
  %6375 = fsub fast float %6374, %6202
  %6376 = fmul fast float %6370, %6372
  %6377 = fmul fast float %6376, %6373
  %6378 = fsub fast float %6375, %6377
  %6379 = fmul fast float %6202, %6202
  %6380 = fsub fast float %6204, %6379
  %6381 = fmul fast float %6372, %6372
  %6382 = fmul fast float %6381, %6370
  %6383 = fsub fast float %6380, %6382
  %6384 = fdiv fast float %6378, %6383
  %6385 = fmul fast float %6384, %6372
  %6386 = fsub fast float %6373, %6385
  %6387 = fmul fast float %6386, %6370
  %6388 = fmul fast float %6387, %6201
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %6384, %6202
  %6391 = fsub fast float %6389, %6390
  %6392 = fmul fast float %6387, %6387
  %6393 = fmul fast float %6384, 4.000000e+00
  %6394 = fmul fast float %6393, %6391
  %6395 = fsub fast float %6392, %6394
  %6396 = call float @dx.op.unary.f32(i32 24, float %6395)  ; Sqrt(value)
  %6397 = fcmp fast oge float %6387, 0.000000e+00
  %6398 = fsub fast float -0.000000e+00, %6396
  %6399 = select i1 %6397, float %6398, float %6396
  %6400 = fsub fast float %6399, %6387
  %6401 = fdiv fast float %6400, %6384
  %6402 = fdiv fast float %6391, %6400
  %6403 = fmul fast float %6401, 5.000000e-01
  %6404 = fmul fast float %6402, 2.000000e+00
  %6405 = select i1 %6397, float %6403, float %6404
  %6406 = select i1 %6397, float %6404, float %6403
  %6407 = call float @dx.op.binary.f32(i32 35, float %6405, float %6406)  ; FMax(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %6405, float %6406)  ; FMin(a,b)
  %6409 = fcmp fast ogt float %6366, %6407
  %6410 = fsub fast float %6366, %6408
  %6411 = fsub fast float %6366, %6407
  %6412 = fsub fast float %6407, %6408
  %6413 = select i1 %6409, float %6411, float %6412
  %6414 = fmul float %6410, %6413
  %6415 = select i1 %6409, float %6408, float %6366
  %6416 = fcmp fast ogt float %6366, %6408
  %6417 = fmul fast float %6415, %6407
  %6418 = fadd fast float %6415, %6407
  %6419 = fmul fast float %6418, %6201
  %6420 = fadd fast float %6417, %6202
  %6421 = fsub fast float %6420, %6419
  %6422 = fdiv fast float %6421, %6414
  %6423 = select i1 %6416, float %6422, float 0.000000e+00
  %6424 = fsub fast float 1.000000e+00, %6423
  %6425 = select i1 %6409, float %6424, float %6423
  %6426 = call float @dx.op.unary.f32(i32 7, float %6425)  ; Saturate(value)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6428 = fmul fast float %6427, %6426
  %6429 = fsub fast float 1.000000e+00, %6428
  br label %6430

; <label>:6430                                    ; preds = %6359, %6071, %6036, %6032, %5996
  %6431 = phi float [ 1.000000e+00, %5996 ], [ %6429, %6359 ], [ 1.000000e+00, %6036 ], [ 1.000000e+00, %6071 ], [ 1.000000e+00, %6032 ]
  %6432 = fcmp fast ogt float %6028, 0.000000e+00
  br i1 %6432, label %6433, label %6441, !dx.controlflow.hints !113

; <label>:6433                                    ; preds = %6430
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6436 = fadd fast float %6435, %5909
  %6437 = call float @dx.op.binary.f32(i32 35, float %6436, float 0.000000e+00)  ; FMax(a,b)
  %6438 = fadd fast float %6437, 0x3F10000000000000
  %6439 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5927, float %5928, float undef, float undef, i32 0, i32 0, i32 undef, float %6438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  br label %6441

; <label>:6441                                    ; preds = %6433, %6430
  %6442 = phi float [ %6440, %6433 ], [ 1.000000e+00, %6430 ]
  %6443 = fcmp fast ogt float %6026, 0.000000e+00
  br i1 %6443, label %6444, label %6452, !dx.controlflow.hints !114

; <label>:6444                                    ; preds = %6441
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6447 = fadd fast float %6446, %5909
  %6448 = call float @dx.op.binary.f32(i32 35, float %6447, float 0.000000e+00)  ; FMax(a,b)
  %6449 = fadd fast float %6448, 0x3F10000000000000
  %6450 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5919, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float %6449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6451 = extractvalue %dx.types.ResRet.f32 %6450, 0
  br label %6452

; <label>:6452                                    ; preds = %6444, %6441
  %6453 = phi float [ %6451, %6444 ], [ 1.000000e+00, %6441 ]
  %6454 = fcmp fast ogt float %6025, 0.000000e+00
  br i1 %6454, label %6455, label %6467, !dx.controlflow.hints !115

; <label>:6455                                    ; preds = %6452
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = fadd fast float %6457, %5909
  %6459 = call float @dx.op.binary.f32(i32 35, float %6458, float 0.000000e+00)  ; FMax(a,b)
  %6460 = fadd fast float %6459, 0x3F10000000000000
  br i1 %5912, label %6461, label %6464, !dx.controlflow.hints !116

; <label>:6461                                    ; preds = %6455
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5901, float %5905, float undef, float undef, i32 0, i32 0, i32 undef, float %6460)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  br label %6467

; <label>:6464                                    ; preds = %6455
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5901, float %5905, float undef, float undef, i32 0, i32 0, i32 undef, float %6460)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  br label %6467

; <label>:6467                                    ; preds = %6464, %6461, %6452
  %6468 = phi float [ %6463, %6461 ], [ %6466, %6464 ], [ 1.000000e+00, %6452 ]
  %6469 = fsub fast float %6442, %6431
  %6470 = fmul fast float %6469, %5998
  %6471 = fadd fast float %6470, %6431
  %6472 = fsub fast float %6453, %6471
  %6473 = fmul fast float %6472, %5997
  %6474 = fadd fast float %6473, %6471
  %6475 = fsub fast float %6468, %6474
  %6476 = fmul fast float %6475, %6025
  %6477 = fadd fast float %6476, %6474
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6480 = fcmp fast ogt float %6479, 0.000000e+00
  br i1 %6480, label %6481, label %6521, !dx.controlflow.hints !117

; <label>:6481                                    ; preds = %6467
  %6482 = fcmp fast ugt float %6479, 0.000000e+00
  br i1 %6482, label %6483, label %6518

; <label>:6483                                    ; preds = %6481
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6500 = fadd fast float %6497, %5878
  %6501 = fadd fast float %6498, %5879
  %6502 = fadd fast float %6499, %5880
  %6503 = fmul fast float %6500, %6485
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6486, float %6501, float %6503)  ; FMad(a,b,c)
  %6505 = call float @dx.op.tertiary.f32(i32 46, float %6487, float %6502, float %6504)  ; FMad(a,b,c)
  %6506 = fadd fast float %6505, %6488
  %6507 = fmul fast float %6500, %6490
  %6508 = call float @dx.op.tertiary.f32(i32 46, float %6491, float %6501, float %6507)  ; FMad(a,b,c)
  %6509 = call float @dx.op.tertiary.f32(i32 46, float %6492, float %6502, float %6508)  ; FMad(a,b,c)
  %6510 = fadd fast float %6509, %6493
  %6511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6506, float %6510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = fmul fast float %6512, %6495
  %6514 = fadd fast float %6513, %6494
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6515, %6479
  %6517 = fsub fast float 1.000000e+00, %6516
  br label %6518

; <label>:6518                                    ; preds = %6483, %6481
  %6519 = phi float [ %6517, %6483 ], [ 1.000000e+00, %6481 ]
  %6520 = fmul fast float %6519, %6477
  br label %6521

; <label>:6521                                    ; preds = %6518, %6467, %5858
  %6522 = phi float [ 1.000000e+00, %5858 ], [ %6520, %6518 ], [ %6477, %6467 ]
  %6523 = call float @dx.op.binary.f32(i32 36, float %6522, float %6522)  ; FMin(a,b)
  %6524 = call float @dx.op.binary.f32(i32 36, float %6522, float %6523)  ; FMin(a,b)
  %6525 = fcmp fast ogt float %6524, 0.000000e+00
  br i1 %6525, label %6526, label %6686, !dx.controlflow.hints !118

; <label>:6526                                    ; preds = %6521
  %6527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.f32 %6527, 0
  %6529 = extractvalue %dx.types.CBufRet.f32 %6527, 1
  %6530 = extractvalue %dx.types.CBufRet.f32 %6527, 2
  %6531 = extractvalue %dx.types.CBufRet.f32 %6527, 3
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.CBufRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.CBufRet.f32 %6532, 3
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6541 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6542 = fmul fast float %6528, %5878
  %6543 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6529, float %6542)  ; FMad(a,b,c)
  %6544 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6530, float %6543)  ; FMad(a,b,c)
  %6545 = fadd fast float %6544, %6531
  %6546 = fmul fast float %6533, %5878
  %6547 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6534, float %6546)  ; FMad(a,b,c)
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6535, float %6547)  ; FMad(a,b,c)
  %6549 = fadd fast float %6548, %6536
  %6550 = fmul fast float %6538, %5878
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %6539, float %6550)  ; FMad(a,b,c)
  %6552 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %6540, float %6551)  ; FMad(a,b,c)
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 3
  %6557 = fmul fast float %6556, %6545
  %6558 = fmul fast float %6556, %6549
  %6559 = fadd fast float %6557, %6554
  %6560 = fadd fast float %6558, %6555
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = fsub fast float %6559, %6562
  %6565 = fsub fast float %6560, %6563
  %6566 = fcmp fast olt float %6564, 0.000000e+00
  %6567 = fcmp fast olt float %6565, 0.000000e+00
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = select i1 %6566, float %6569, float %6571
  %6574 = select i1 %6567, float %6570, float %6572
  %6575 = fmul fast float %6573, %6564
  %6576 = fmul fast float %6574, %6565
  %6577 = call float @dx.op.unary.f32(i32 6, float %6575)  ; FAbs(value)
  %6578 = call float @dx.op.unary.f32(i32 6, float %6576)  ; FAbs(value)
  %6579 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %6580 = call float @dx.op.binary.f32(i32 35, float %6577, float %6578)  ; FMax(a,b)
  %6581 = fsub fast float %6579, %6580
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6583 = fcmp fast ogt float %6582, 0.000000e+00
  br i1 %6583, label %6584, label %6625, !dx.controlflow.hints !119

; <label>:6584                                    ; preds = %6526
  %6585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6559, float %6560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 1
  %6587 = fcmp fast ogt float %6586, 0.000000e+00
  br i1 %6587, label %6588, label %6620

; <label>:6588                                    ; preds = %6584
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6559, float %6560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.ResRet.f32 %6589, 2
  %6593 = extractvalue %dx.types.ResRet.f32 %6589, 3
  %6594 = fsub fast float 1.000000e+00, %6541
  %6595 = fsub fast float %6594, %6552
  %6596 = fmul fast float %6595, 0x400921FB60000000
  %6597 = fadd fast float %6596, 0x3FF921FB60000000
  %6598 = call float @dx.op.unary.f32(i32 13, float %6597)  ; Sin(value)
  %6599 = fadd fast float %6598, -1.000000e+00
  %6600 = fmul fast float %6599, 0x3FD45F3060000000
  %6601 = fmul fast float %6595, 0x401921FB60000000
  %6602 = fadd fast float %6601, 0x400921FB60000000
  %6603 = call float @dx.op.unary.f32(i32 13, float %6602)  ; Sin(value)
  %6604 = fadd fast float %6603, 0x3E7777A5C0000000
  %6605 = fmul fast float %6604, 0x3FC45F3060000000
  %6606 = fmul fast float %6595, 0x4022D97C80000000
  %6607 = fadd fast float %6606, 0x4012D97C80000000
  %6608 = call float @dx.op.unary.f32(i32 13, float %6607)  ; Sin(value)
  %6609 = fadd fast float %6608, 1.000000e+00
  %6610 = fmul fast float %6609, 0x3FBB2995E0000000
  %6611 = fmul fast float %6595, 0x402921FB60000000
  %6612 = fadd fast float %6611, 0x401921FB60000000
  %6613 = call float @dx.op.unary.f32(i32 13, float %6612)  ; Sin(value)
  %6614 = fadd fast float %6613, 0xBE8777A5C0000000
  %6615 = fmul fast float %6614, 0x3FB45F3060000000
  %6616 = call float @dx.op.dot4.f32(i32 56, float %6590, float %6591, float %6592, float %6593, float %6600, float %6605, float %6610, float %6615)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6617 = fmul fast float %6616, 0xBFF7154760000000
  %6618 = call float @dx.op.unary.f32(i32 21, float %6617)  ; Exp(value)
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  br label %6620

; <label>:6620                                    ; preds = %6588, %6584
  %6621 = phi float [ %6619, %6588 ], [ 1.000000e+00, %6584 ]
  %6622 = fadd fast float %6621, -1.000000e+00
  %6623 = fmul fast float %6622, %6582
  %6624 = fadd fast float %6623, 1.000000e+00
  br label %6625

; <label>:6625                                    ; preds = %6620, %6526
  %6626 = phi float [ %6624, %6620 ], [ 1.000000e+00, %6526 ]
  %6627 = fmul fast float %6626, %6522
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = fadd fast float %6629, %188
  %6633 = fadd fast float %6630, %189
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6636 = fsub fast float -0.000000e+00, %6632
  %6637 = fsub fast float -0.000000e+00, %6633
  %6638 = fsub fast float %5479, %6631
  %6639 = fadd fast float %6638, %6635
  %6640 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6636, float %6637, float %6639)  ; Dot3(ax,ay,az,bx,by,bz)
  %6641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5859, float %5860, float %5861)  ; Dot3(ax,ay,az,bx,by,bz)
  %6642 = fdiv fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6642, %6640
  %6644 = fmul fast float %5859, %6643
  %6645 = fmul fast float %5860, %6643
  %6646 = fadd fast float %6644, %6632
  %6647 = fadd fast float %6645, %6633
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = fsub fast float %6646, %6649
  %6652 = fsub fast float %6647, %6650
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6656 = fmul fast float %6651, %6654
  %6657 = fmul fast float %6652, %6655
  %6658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.i32 %6658, 3
  %6660 = icmp eq i32 %6659, 0
  br i1 %6660, label %6666, label %6661

; <label>:6661                                    ; preds = %6625
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.ResRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.ResRet.f32 %6662, 2
  br label %6671

; <label>:6666                                    ; preds = %6625
  %6667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6668 = extractvalue %dx.types.ResRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.ResRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.ResRet.f32 %6667, 2
  br label %6671

; <label>:6671                                    ; preds = %6666, %6661
  %6672 = phi float [ %6663, %6661 ], [ %6668, %6666 ]
  %6673 = phi float [ %6664, %6661 ], [ %6669, %6666 ]
  %6674 = phi float [ %6665, %6661 ], [ %6670, %6666 ]
  %6675 = extractvalue %dx.types.CBufRet.f32 %6634, 2
  %6676 = fmul fast float %6675, %6672
  %6677 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6678 = fsub fast float %6643, %6677
  %6679 = fsub fast float %6678, %6676
  %6680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6679)  ; FMax(a,b)
  %6681 = fmul fast float %6680, %6673
  %6682 = call float @dx.op.binary.f32(i32 36, float %6674, float %6681)  ; FMin(a,b)
  %6683 = fmul fast float %6682, 0xBFF7154760000000
  %6684 = call float @dx.op.unary.f32(i32 21, float %6683)  ; Exp(value)
  %6685 = fmul fast float %6627, %6684
  br label %6686

; <label>:6686                                    ; preds = %6671, %6521
  %6687 = phi float [ %6685, %6671 ], [ %6522, %6521 ]
  %6688 = call float @dx.op.binary.f32(i32 36, float %6687, float %6687)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6687, float %6688)  ; FMin(a,b)
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  br i1 %6690, label %6691, label %6996, !dx.controlflow.hints !120

; <label>:6691                                    ; preds = %6686
  %6692 = fmul fast float %6687, %5870
  %6693 = fmul fast float %6687, %5871
  %6694 = fmul fast float %6687, %5872
  %6695 = fsub fast float %190, %4675
  %6696 = fcmp fast ogt float %6695, 0.000000e+00
  %6697 = fmul fast float %5859, 5.120000e+02
  %6698 = fmul fast float %5860, 5.120000e+02
  %6699 = fmul fast float %5861, 5.120000e+02
  %6700 = fadd fast float %6699, %190
  %6701 = fsub fast float %4675, %6700
  %6702 = fmul fast float %6701, 2.000000e+00
  %6703 = fadd fast float %6702, %6700
  %6704 = select i1 %6696, float %6703, float %6700
  %6705 = fsub fast float %6704, %190
  %6706 = call float @dx.op.dot3.f32(i32 55, float %6697, float %6698, float %6705, float %6697, float %6698, float %6705)  ; Dot3(ax,ay,az,bx,by,bz)
  %6707 = call float @dx.op.unary.f32(i32 25, float %6706)  ; Rsqrt(value)
  %6708 = fmul fast float %6707, %6697
  %6709 = fmul fast float %6707, %6698
  %6710 = fmul fast float %6707, %6705
  %6711 = fsub fast float %4675, %190
  %6712 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6711)  ; Dot3(ax,ay,az,bx,by,bz)
  %6713 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6708, float %6709, float %6710)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = fdiv fast float 1.000000e+00, %6713
  %6715 = fmul fast float %6714, %6712
  %6716 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6695, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6717 = fcmp fast ogt float %6716, 0.000000e+00
  %6718 = fcmp fast olt float %6716, 0.000000e+00
  %6719 = zext i1 %6717 to i32
  %6720 = zext i1 %6718 to i32
  %6721 = sub nsw i32 %6719, %6720
  %6722 = sitofp i32 %6721 to float
  %6723 = fsub fast float %6704, %4675
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6697, float %6698, float %6723, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = fcmp fast ogt float %6724, 0.000000e+00
  %6726 = fcmp fast olt float %6724, 0.000000e+00
  %6727 = zext i1 %6725 to i32
  %6728 = zext i1 %6726 to i32
  %6729 = sub nsw i32 %6727, %6728
  %6730 = sitofp i32 %6729 to float
  %6731 = fcmp fast une float %6722, %6730
  br i1 %6731, label %6732, label %6742

; <label>:6732                                    ; preds = %6691
  %6733 = fmul fast float %6715, %6710
  %6734 = fmul fast float %6715, %6709
  %6735 = fmul fast float %6715, %6708
  %6736 = fmul fast float %6735, %6735
  %6737 = fmul fast float %6734, %6734
  %6738 = fadd fast float %6736, %6737
  %6739 = fmul fast float %6733, %6733
  %6740 = fadd fast float %6738, %6739
  %6741 = call float @dx.op.unary.f32(i32 24, float %6740)  ; Sqrt(value)
  br label %6752

; <label>:6742                                    ; preds = %6691
  %6743 = icmp slt i32 %6721, 0
  br i1 %6743, label %6744, label %6752

; <label>:6744                                    ; preds = %6742
  %6745 = fsub fast float %190, %6704
  %6746 = fmul fast float %6697, %6697
  %6747 = fmul fast float %6698, %6698
  %6748 = fadd fast float %6746, %6747
  %6749 = fmul fast float %6745, %6745
  %6750 = fadd fast float %6748, %6749
  %6751 = call float @dx.op.unary.f32(i32 24, float %6750)  ; Sqrt(value)
  br label %6752

; <label>:6752                                    ; preds = %6744, %6742, %6732
  %6753 = phi float [ %6741, %6732 ], [ %6751, %6744 ], [ 0.000000e+00, %6742 ]
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = select i1 %6696, float -0.000000e+00, float %6754
  %6756 = fmul fast float %4676, 0x3FF7154760000000
  %6757 = fmul fast float %6756, %6755
  %6758 = fmul fast float %4677, 0x3FF7154760000000
  %6759 = fmul fast float %6758, %6755
  %6760 = fmul fast float %4678, 0x3FF7154760000000
  %6761 = fmul fast float %6760, %6755
  %6762 = call float @dx.op.unary.f32(i32 21, float %6757)  ; Exp(value)
  %6763 = call float @dx.op.unary.f32(i32 21, float %6759)  ; Exp(value)
  %6764 = call float @dx.op.unary.f32(i32 21, float %6761)  ; Exp(value)
  %6765 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6766 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6767 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6768 = fmul fast float %6692, %6765
  %6769 = fmul fast float %6693, %6766
  %6770 = fmul fast float %6694, %6767
  %6771 = fsub fast float %5859, %5467
  %6772 = fsub fast float %5860, %5466
  %6773 = fsub fast float %5861, %5465
  %6774 = call float @dx.op.dot3.f32(i32 55, float %6771, float %6772, float %6773, float %6771, float %6772, float %6773)  ; Dot3(ax,ay,az,bx,by,bz)
  %6775 = call float @dx.op.unary.f32(i32 25, float %6774)  ; Rsqrt(value)
  %6776 = fmul fast float %6775, %6771
  %6777 = fmul fast float %6775, %6772
  %6778 = fmul fast float %6775, %6773
  %6779 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %6780 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5463, float %5462, float %6776, float %6777, float %6778)  ; Dot3(ax,ay,az,bx,by,bz)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6782 = fmul fast float %6781, %6781
  %6783 = fmul fast float %6782, %5495
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fmul fast float %6784, %6781
  %6786 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %6776, float %6777, float %6778)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = fmul fast float %6786, %6786
  %6788 = call float @dx.op.unary.f32(i32 6, float %6779)  ; FAbs(value)
  %6789 = fsub fast float 1.000000e+00, %5477
  %6790 = call float @dx.op.binary.f32(i32 35, float %6789, float 0x3F847AE140000000)  ; FMax(a,b)
  %6791 = fmul fast float %6790, %6790
  %6792 = fmul fast float %6791, %6791
  %6793 = fsub fast float 1.000000e+00, %6792
  %6794 = fmul fast float %5482, %5482
  %6795 = fmul fast float %6794, %6793
  %6796 = fadd fast float %6795, %6792
  %6797 = bitcast float %6796 to i32
  %6798 = ashr i32 %6797, 1
  %6799 = add nsw i32 %6798, 532487669
  %6800 = bitcast i32 %6799 to float
  %6801 = fadd fast float %6800, %5482
  %6802 = fmul fast float %6792, %6787
  %6803 = fsub fast float 1.000000e+00, %6787
  %6804 = fadd fast float %6803, %6802
  %6805 = fmul fast float %6788, %6788
  %6806 = fmul fast float %6805, %6793
  %6807 = fadd fast float %6806, %6792
  %6808 = bitcast float %6807 to i32
  %6809 = ashr i32 %6808, 1
  %6810 = add nsw i32 %6809, 532487669
  %6811 = bitcast i32 %6810 to float
  %6812 = fadd fast float %6811, %6788
  %6813 = fmul fast float %6804, %6804
  %6814 = fmul fast float %6813, %6801
  %6815 = fmul fast float %6814, %6812
  %6816 = fdiv fast float 0x3FF0A00000000000, %6815
  %6817 = fmul fast float %6816, %6792
  %6818 = call float @dx.op.unary.f32(i32 6, float %6780)  ; FAbs(value)
  %6819 = fsub fast float 1.000000e+00, %6818
  %6820 = bitcast float %6819 to i32
  %6821 = sitofp i32 %6820 to float
  %6822 = fmul fast float %6821, 5.000000e+00
  %6823 = fadd fast float %6822, 0xC1EFBF8940000000
  %6824 = fptosi float %6823 to i32
  %6825 = bitcast i32 %6824 to float
  %6826 = fsub fast float 1.000000e+00, %5474
  %6827 = fsub fast float 1.000000e+00, %5475
  %6828 = fsub fast float 1.000000e+00, %5480
  %6829 = fmul fast float %6825, %6826
  %6830 = fmul fast float %6825, %6827
  %6831 = fmul fast float %6825, %6828
  %6832 = fadd fast float %6829, %5474
  %6833 = fadd fast float %6830, %5475
  %6834 = fadd fast float %6831, %5480
  br i1 %5752, label %6835, label %6858

; <label>:6835                                    ; preds = %6752
  %6836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %6818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.ResRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.ResRet.f32 %6836, 2
  %6840 = fadd fast float %6837, -5.000000e-01
  %6841 = fadd fast float %6838, -5.000000e-01
  %6842 = fadd fast float %6839, -5.000000e-01
  %6843 = fmul fast float %5474, 4.000000e+00
  %6844 = fmul fast float %6843, %6826
  %6845 = fmul fast float %6844, %6840
  %6846 = fmul fast float %5475, 4.000000e+00
  %6847 = fmul fast float %6846, %6827
  %6848 = fmul fast float %6847, %6841
  %6849 = fmul fast float %5480, 4.000000e+00
  %6850 = fmul fast float %6849, %6828
  %6851 = fmul fast float %6850, %6842
  %6852 = fadd fast float %6845, %6832
  %6853 = fadd fast float %6848, %6833
  %6854 = fadd fast float %6851, %6834
  %6855 = call float @dx.op.unary.f32(i32 7, float %6852)  ; Saturate(value)
  %6856 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6857 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  br label %6858

; <label>:6858                                    ; preds = %6835, %6752
  %6859 = phi float [ %6855, %6835 ], [ %6832, %6752 ]
  %6860 = phi float [ %6856, %6835 ], [ %6833, %6752 ]
  %6861 = phi float [ %6857, %6835 ], [ %6834, %6752 ]
  %6862 = fmul fast float %6779, 9.843750e-01
  %6863 = fadd fast float %6862, 7.812500e-03
  %6864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6863, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6865 = extractvalue %dx.types.ResRet.f32 %6864, 2
  %6866 = extractvalue %dx.types.ResRet.f32 %6864, 3
  %6867 = fmul fast float %6865, %5474
  %6868 = fmul fast float %6865, %5475
  %6869 = fmul fast float %6865, %5480
  %6870 = fadd fast float %6867, %6866
  %6871 = fadd fast float %6868, %6866
  %6872 = fadd fast float %6869, %6866
  br i1 %5752, label %6873, label %6896

; <label>:6873                                    ; preds = %6858
  %6874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6875 = extractvalue %dx.types.ResRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.ResRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.ResRet.f32 %6874, 2
  %6878 = fadd fast float %6875, -5.000000e-01
  %6879 = fadd fast float %6876, -5.000000e-01
  %6880 = fadd fast float %6877, -5.000000e-01
  %6881 = fmul fast float %5474, 4.000000e+00
  %6882 = fmul fast float %6881, %6826
  %6883 = fmul fast float %6882, %6878
  %6884 = fmul fast float %5475, 4.000000e+00
  %6885 = fmul fast float %6884, %6827
  %6886 = fmul fast float %6885, %6879
  %6887 = fmul fast float %5480, 4.000000e+00
  %6888 = fmul fast float %6887, %6828
  %6889 = fmul fast float %6888, %6880
  %6890 = fadd fast float %6883, %6870
  %6891 = fadd fast float %6886, %6871
  %6892 = fadd fast float %6889, %6872
  %6893 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  %6894 = call float @dx.op.unary.f32(i32 7, float %6891)  ; Saturate(value)
  %6895 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  br label %6896

; <label>:6896                                    ; preds = %6873, %6858
  %6897 = phi float [ %6893, %6873 ], [ %6870, %6858 ]
  %6898 = phi float [ %6894, %6873 ], [ %6871, %6858 ]
  %6899 = phi float [ %6895, %6873 ], [ %6872, %6858 ]
  %6900 = call float @dx.op.binary.f32(i32 35, float %6898, float %6899)  ; FMax(a,b)
  %6901 = call float @dx.op.binary.f32(i32 35, float %6897, float %6900)  ; FMax(a,b)
  %6902 = fsub fast float 1.000000e+00, %6901
  %6903 = fsub fast float -0.000000e+00, %5468
  %6904 = fsub fast float -0.000000e+00, %5469
  %6905 = fsub fast float -0.000000e+00, %5470
  %6906 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %6903, float %6904, float %6905)  ; Dot3(ax,ay,az,bx,by,bz)
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, 9.843750e-01
  %6909 = fadd fast float %6908, 7.812500e-03
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6909, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 3
  %6913 = fmul fast float %6911, %5474
  %6914 = fmul fast float %6911, %5475
  %6915 = fmul fast float %6911, %5480
  %6916 = fadd fast float %6913, %6912
  %6917 = fadd fast float %6914, %6912
  %6918 = fadd fast float %6915, %6912
  br i1 %5752, label %6919, label %6942

; <label>:6919                                    ; preds = %6896
  %6920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %6907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.ResRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.ResRet.f32 %6920, 2
  %6924 = fadd fast float %6921, -5.000000e-01
  %6925 = fadd fast float %6922, -5.000000e-01
  %6926 = fadd fast float %6923, -5.000000e-01
  %6927 = fmul fast float %5474, 4.000000e+00
  %6928 = fmul fast float %6927, %6826
  %6929 = fmul fast float %6928, %6924
  %6930 = fmul fast float %5475, 4.000000e+00
  %6931 = fmul fast float %6930, %6827
  %6932 = fmul fast float %6931, %6925
  %6933 = fmul fast float %5480, 4.000000e+00
  %6934 = fmul fast float %6933, %6828
  %6935 = fmul fast float %6934, %6926
  %6936 = fadd fast float %6929, %6916
  %6937 = fadd fast float %6932, %6917
  %6938 = fadd fast float %6935, %6918
  %6939 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6940 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6941 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  br label %6942

; <label>:6942                                    ; preds = %6919, %6896
  %6943 = phi float [ %6939, %6919 ], [ %6916, %6896 ]
  %6944 = phi float [ %6940, %6919 ], [ %6917, %6896 ]
  %6945 = phi float [ %6941, %6919 ], [ %6918, %6896 ]
  %6946 = call float @dx.op.binary.f32(i32 35, float %6944, float %6945)  ; FMax(a,b)
  %6947 = call float @dx.op.binary.f32(i32 35, float %6943, float %6946)  ; FMax(a,b)
  %6948 = fsub fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6948, %6907
  %6950 = fmul fast float %6949, %4298
  %6951 = fmul fast float %6949, %4299
  %6952 = fmul fast float %6949, %4300
  %6953 = fmul fast float %6859, %6817
  %6954 = fmul fast float %6860, %6817
  %6955 = fmul fast float %6861, %6817
  %6956 = fsub fast float 1.000000e+00, %6780
  %6957 = bitcast float %6956 to i32
  %6958 = sitofp i32 %6957 to float
  %6959 = fmul fast float %6958, 5.000000e+00
  %6960 = fadd fast float %6959, 0xC1EFBF8940000000
  %6961 = fptosi float %6960 to i32
  %6962 = bitcast i32 %6961 to float
  %6963 = fmul fast float %6962, %4209
  %6964 = fmul fast float %6902, %6963
  %6965 = fmul fast float %6964, %5799
  %6966 = fmul fast float %6964, %5800
  %6967 = fmul fast float %6964, %5801
  %6968 = fmul fast float %6902, %6785
  %6969 = fadd fast float %6965, %6953
  %6970 = fadd fast float %6966, %6954
  %6971 = fadd fast float %6967, %6955
  %6972 = fadd fast float %6950, %6968
  %6973 = fadd fast float %6951, %6968
  %6974 = fadd fast float %6952, %6968
  %6975 = fmul fast float %6972, %6768
  %6976 = fmul fast float %6973, %6769
  %6977 = fmul fast float %6974, %6770
  %6978 = fmul fast float %6785, %6768
  %6979 = fmul fast float %6978, %6969
  %6980 = fmul fast float %6785, %6769
  %6981 = fmul fast float %6980, %6970
  %6982 = fmul fast float %6785, %6770
  %6983 = fmul fast float %6982, %6971
  %6984 = fadd fast float %6975, %5849
  %6985 = fmul fast float %6984, %4205
  %6986 = fadd fast float %6976, %5851
  %6987 = fmul fast float %6986, %4205
  %6988 = fadd fast float %6977, %5853
  %6989 = fmul fast float %6988, %4205
  %6990 = fadd fast float %6979, %5832
  %6991 = fmul fast float %6990, %4205
  %6992 = fadd fast float %6981, %5835
  %6993 = fmul fast float %6992, %4205
  %6994 = fadd fast float %6983, %5838
  %6995 = fmul fast float %6994, %4205
  br label %6996

; <label>:6996                                    ; preds = %6942, %6686, %5779
  %6997 = phi float [ %5833, %5779 ], [ %5833, %6686 ], [ %6991, %6942 ]
  %6998 = phi float [ %5836, %5779 ], [ %5836, %6686 ], [ %6993, %6942 ]
  %6999 = phi float [ %5839, %5779 ], [ %5839, %6686 ], [ %6995, %6942 ]
  %7000 = phi float [ %5850, %5779 ], [ %5850, %6686 ], [ %6985, %6942 ]
  %7001 = phi float [ %5852, %5779 ], [ %5852, %6686 ], [ %6987, %6942 ]
  %7002 = phi float [ %5854, %5779 ], [ %5854, %6686 ], [ %6989, %6942 ]
  %7003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.i32 %7003, 0
  %7005 = icmp eq i32 %7004, 0
  br i1 %7005, label %7681, label %7006

; <label>:7006                                    ; preds = %6996
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 2
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7010 = fmul fast float %7008, %109
  %7011 = fmul fast float %7009, %110
  %7012 = fptoui float %7010 to i32
  %7013 = fptoui float %7011 to i32
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %7017 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7018 = fadd fast float %100, -4.000000e+00
  %7019 = call float @dx.op.binary.f32(i32 35, float %7018, float 0.000000e+00)  ; FMax(a,b)
  %7020 = fadd fast float %7019, %7015
  %7021 = fmul fast float %7020, %7016
  %7022 = call float @dx.op.unary.f32(i32 23, float %7021)  ; Log(value)
  %7023 = fmul fast float %7022, %7017
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 2
  %7026 = fmul fast float %7023, %7025
  %7027 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.i32 %7028, 1
  %7030 = add i32 %7029, -1
  %7031 = uitofp i32 %7029 to float
  %7032 = fmul fast float %7031, %7027
  %7033 = fptoui float %7032 to i32
  %7034 = call i32 @dx.op.binary.i32(i32 40, i32 %7033, i32 %7030)  ; UMin(a,b)
  %7035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.i32 %7035, 2
  %7037 = extractvalue %dx.types.CBufRet.i32 %7035, 3
  %7038 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7013, i32 %7036, i32 %7012)  ; UMad(a,b,c)
  %7039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7034, i32 %7037, i32 %7038)  ; UMad(a,b,c)
  %7040 = add nsw i32 %7004, -1
  %7041 = call i32 @dx.op.binary.i32(i32 37, i32 %7040, i32 0)  ; IMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %7043 = fptoui float %7042 to i32
  %7044 = lshr i32 %7043, 5
  %7045 = call i32 @dx.op.binary.i32(i32 40, i32 %7044, i32 8191)  ; UMin(a,b)
  %7046 = shl i32 %7045, 2
  %7047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7046, i32 undef)  ; BufferLoad(srv,index,wot)
  %7048 = extractvalue %dx.types.ResRet.i32 %7047, 0
  %7049 = lshr i32 %7048, 16
  %7050 = and i32 %7048, 65535
  %7051 = lshr i32 %7048, 21
  %7052 = lshr i32 %7050, 5
  %7053 = call i32 @dx.op.binary.i32(i32 40, i32 %7052, i32 %7041)  ; UMin(a,b)
  %7054 = icmp ugt i32 %7051, %7053
  br i1 %7054, label %7681, label %7055

; <label>:7055                                    ; preds = %7006
  br label %7056

; <label>:7056                                    ; preds = %7671, %7055
  %7057 = phi i32 [ %7678, %7671 ], [ %7051, %7055 ]
  %7058 = phi float [ %7672, %7671 ], [ %6997, %7055 ]
  %7059 = phi float [ %7673, %7671 ], [ %6998, %7055 ]
  %7060 = phi float [ %7674, %7671 ], [ %6999, %7055 ]
  %7061 = phi float [ %7675, %7671 ], [ %7000, %7055 ]
  %7062 = phi float [ %7676, %7671 ], [ %7001, %7055 ]
  %7063 = phi float [ %7677, %7671 ], [ %7002, %7055 ]
  %7064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.i32 %7064, 0
  %7066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7039, i32 %7065, i32 %7057)  ; UMad(a,b,c)
  %7067 = shl i32 %7066, 2
  %7068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7067, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.i32 %7068, 0
  %7070 = shl i32 %7057, 5
  %7071 = sub nsw i32 %7049, %7070
  %7072 = call i32 @dx.op.binary.i32(i32 37, i32 %7071, i32 0)  ; IMax(a,b)
  %7073 = call i32 @dx.op.binary.i32(i32 38, i32 %7072, i32 31)  ; IMin(a,b)
  %7074 = sub nsw i32 1, %7049
  %7075 = add nsw i32 %7074, %7050
  %7076 = call i32 @dx.op.binary.i32(i32 37, i32 %7075, i32 0)  ; IMax(a,b)
  %7077 = call i32 @dx.op.binary.i32(i32 38, i32 %7076, i32 32)  ; IMin(a,b)
  %7078 = and i32 %7077, 31
  %7079 = shl i32 -1, %7078
  %7080 = xor i32 %7079, -1
  %7081 = and i32 %7073, 31
  %7082 = shl i32 %7080, %7081
  %7083 = icmp eq i32 %7077, 32
  %7084 = select i1 %7083, i32 -1, i32 %7082
  %7085 = and i32 %7084, %7069
  %7086 = icmp eq i32 %7085, 0
  br i1 %7086, label %7671, label %7087

; <label>:7087                                    ; preds = %7056
  br label %7088

; <label>:7088                                    ; preds = %7222, %7087
  %7089 = phi i32 [ %7100, %7222 ], [ %7085, %7087 ]
  %7090 = phi float [ %7223, %7222 ], [ %7058, %7087 ]
  %7091 = phi float [ %7224, %7222 ], [ %7059, %7087 ]
  %7092 = phi float [ %7225, %7222 ], [ %7060, %7087 ]
  %7093 = phi float [ %7226, %7222 ], [ %7061, %7087 ]
  %7094 = phi float [ %7227, %7222 ], [ %7062, %7087 ]
  %7095 = phi float [ %7228, %7222 ], [ %7063, %7087 ]
  %7096 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7089)  ; FirstbitLo(value)
  %7097 = add i32 %7096, %7070
  %7098 = and i32 %7096, 31
  %7099 = shl i32 1, %7098
  %7100 = xor i32 %7099, %7089
  %7101 = mul i32 %7097, 112
  %7102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7101, i32 undef)  ; BufferLoad(srv,index,wot)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.ResRet.f32 %7102, 2
  %7106 = or i32 %7101, 12
  %7107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7106, i32 undef)  ; BufferLoad(srv,index,wot)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = add i32 %7101, 16
  %7110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7109, i32 undef)  ; BufferLoad(srv,index,wot)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = extractvalue %dx.types.ResRet.f32 %7110, 1
  %7113 = extractvalue %dx.types.ResRet.f32 %7110, 2
  %7114 = add i32 %7101, 28
  %7115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7114, i32 undef)  ; BufferLoad(srv,index,wot)
  %7116 = extractvalue %dx.types.ResRet.i32 %7115, 0
  %7117 = add i32 %7101, 44
  %7118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7117, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = add i32 %7101, 48
  %7121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7120, i32 undef)  ; BufferLoad(srv,index,wot)
  %7122 = extractvalue %dx.types.ResRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.ResRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.ResRet.f32 %7121, 2
  %7125 = extractvalue %dx.types.ResRet.f32 %7121, 3
  %7126 = add i32 %7101, 64
  %7127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.ResRet.f32 %7127, 1
  %7130 = extractvalue %dx.types.ResRet.f32 %7127, 2
  %7131 = extractvalue %dx.types.ResRet.f32 %7127, 3
  %7132 = add i32 %7101, 80
  %7133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7132, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.f32 %7133, 1
  %7135 = extractvalue %dx.types.ResRet.f32 %7133, 2
  %7136 = add i32 %7101, 92
  %7137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7136, i32 undef)  ; BufferLoad(srv,index,wot)
  %7138 = extractvalue %dx.types.ResRet.i32 %7137, 0
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = select i1 %247, float %7134, float %7103
  %7141 = select i1 %247, float %7139, float %7104
  %7142 = select i1 %247, float %7135, float %7105
  %7143 = and i32 %7138, 65535
  %7144 = uitofp i32 %7143 to float
  %7145 = lshr i32 %7138, 16
  %7146 = uitofp i32 %7145 to float
  %7147 = and i32 %7116, 65535
  %7148 = and i32 %7116, 50331648
  %7149 = icmp eq i32 %7148, 33554432
  %7150 = fsub fast float %7122, %188
  %7151 = fsub fast float %7123, %189
  %7152 = fsub fast float %7124, %190
  %7153 = call float @dx.op.dot3.f32(i32 55, float %7150, float %7151, float %7152, float %7150, float %7151, float %7152)  ; Dot3(ax,ay,az,bx,by,bz)
  %7154 = call float @dx.op.unary.f32(i32 24, float %7153)  ; Sqrt(value)
  %7155 = fdiv fast float 1.000000e+00, %7154
  %7156 = fmul fast float %7155, %7150
  %7157 = fmul fast float %7155, %7151
  %7158 = fmul fast float %7155, %7152
  %7159 = fadd fast float %7154, %7108
  %7160 = fdiv fast float 1.000000e+00, %7159
  %7161 = fmul float %7119, %7160
  %7162 = fmul float %7161, %7161
  %7163 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  br i1 %7149, label %7164, label %7185

; <label>:7164                                    ; preds = %7088
  %7165 = fmul fast float %7130, %7111
  %7166 = fmul fast float %7130, %7112
  %7167 = fmul fast float %7130, %7113
  %7168 = fadd fast float %7150, %7165
  %7169 = fadd fast float %7151, %7166
  %7170 = fadd fast float %7152, %7167
  %7171 = call float @dx.op.dot3.f32(i32 55, float %7168, float %7169, float %7170, float %7168, float %7169, float %7170)  ; Dot3(ax,ay,az,bx,by,bz)
  %7172 = call float @dx.op.unary.f32(i32 25, float %7171)  ; Rsqrt(value)
  %7173 = fmul fast float %7172, %7168
  %7174 = fmul fast float %7172, %7169
  %7175 = fmul fast float %7172, %7170
  %7176 = fsub fast float %188, %7122
  %7177 = fsub fast float %189, %7123
  %7178 = fsub fast float %190, %7124
  %7179 = fsub fast float -0.000000e+00, %7176
  %7180 = fsub fast float -0.000000e+00, %7177
  %7181 = fsub fast float -0.000000e+00, %7178
  %7182 = call float @dx.op.dot3.f32(i32 55, float %7179, float %7180, float %7181, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7183 = fcmp fast ogt float %7182, 0.000000e+00
  %7184 = uitofp i1 %7183 to float
  br label %7185

; <label>:7185                                    ; preds = %7164, %7088
  %7186 = phi float [ %7184, %7164 ], [ 1.000000e+00, %7088 ]
  %7187 = phi float [ %7173, %7164 ], [ %7156, %7088 ]
  %7188 = phi float [ %7174, %7164 ], [ %7157, %7088 ]
  %7189 = phi float [ %7175, %7164 ], [ %7158, %7088 ]
  %7190 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float %7187, float %7188, float %7189)  ; Dot3(ax,ay,az,bx,by,bz)
  %7191 = fmul fast float %7190, %7190
  %7192 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = fmul fast float %7193, 5.000000e-01
  %7195 = fcmp fast ogt float %7190, 0.000000e+00
  %7196 = fsub fast float 1.000000e+00, %7194
  %7197 = select i1 %7195, float %7194, float %7196
  %7198 = fmul fast float %7197, %7146
  %7199 = fadd fast float %7198, %7144
  %7200 = fmul fast float %7199, 0x3EF0001000000000
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %7200, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = fmul fast float %7190, %7128
  %7204 = fadd fast float %7203, %7129
  %7205 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7206 = select i1 %7149, float 1.000000e+00, float %7205
  %7207 = select i1 %7149, float %7205, float 1.000000e+00
  %7208 = fmul fast float %7154, %7125
  %7209 = fsub fast float 1.000000e+00, %7208
  %7210 = fmul fast float %7209, %7131
  %7211 = call float @dx.op.unary.f32(i32 7, float %7210)  ; Saturate(value)
  %7212 = fmul fast float %7211, %7207
  %7213 = fmul fast float %7212, 2.000000e+00
  %7214 = fsub fast float 3.000000e+00, %7213
  %7215 = fmul fast float %7202, %7186
  %7216 = fmul fast float %7212, %7212
  %7217 = fmul fast float %7216, %7215
  %7218 = fmul fast float %7217, %7214
  %7219 = call float @dx.op.binary.f32(i32 36, float %7218, float %7218)  ; FMin(a,b)
  %7220 = call float @dx.op.binary.f32(i32 36, float %7218, float %7219)  ; FMin(a,b)
  %7221 = fcmp fast ogt float %7220, 0.000000e+00
  br i1 %7221, label %7230, label %7222, !dx.controlflow.hints !121

; <label>:7222                                    ; preds = %7619, %7330, %7185
  %7223 = phi float [ %7090, %7330 ], [ %7090, %7185 ], [ %7667, %7619 ]
  %7224 = phi float [ %7091, %7330 ], [ %7091, %7185 ], [ %7668, %7619 ]
  %7225 = phi float [ %7092, %7330 ], [ %7092, %7185 ], [ %7669, %7619 ]
  %7226 = phi float [ %7093, %7330 ], [ %7093, %7185 ], [ %7658, %7619 ]
  %7227 = phi float [ %7094, %7330 ], [ %7094, %7185 ], [ %7659, %7619 ]
  %7228 = phi float [ %7095, %7330 ], [ %7095, %7185 ], [ %7660, %7619 ]
  %7229 = icmp eq i32 %7089, %7099
  br i1 %7229, label %7670, label %7088

; <label>:7230                                    ; preds = %7185
  %7231 = icmp eq i32 %7147, 255
  br i1 %7231, label %7330, label %7232, !dx.controlflow.hints !122

; <label>:7232                                    ; preds = %7230
  %7233 = mul nuw nsw i32 %7147, 176
  %7234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7233, i32 undef)  ; BufferLoad(srv,index,wot)
  %7235 = extractvalue %dx.types.ResRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.ResRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.ResRet.f32 %7234, 2
  %7238 = extractvalue %dx.types.ResRet.f32 %7234, 3
  %7239 = add nuw nsw i32 %7233, 16
  %7240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7239, i32 undef)  ; BufferLoad(srv,index,wot)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = extractvalue %dx.types.ResRet.f32 %7240, 1
  %7243 = add nuw nsw i32 %7233, 32
  %7244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.ResRet.f32 %7244, 2
  %7248 = add nuw nsw i32 %7233, 48
  %7249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7248, i32 undef)  ; BufferLoad(srv,index,wot)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7252 = extractvalue %dx.types.ResRet.f32 %7249, 2
  %7253 = extractvalue %dx.types.ResRet.f32 %7249, 3
  %7254 = add nuw nsw i32 %7233, 64
  %7255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.ResRet.f32 %7255, 3
  %7260 = add nuw nsw i32 %7233, 80
  %7261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7260, i32 undef)  ; BufferLoad(srv,index,wot)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.ResRet.f32 %7261, 3
  %7266 = add nuw nsw i32 %7233, 96
  %7267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7266, i32 undef)  ; BufferLoad(srv,index,wot)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7271 = extractvalue %dx.types.ResRet.f32 %7267, 3
  %7272 = bitcast float %7242 to i32
  %7273 = fmul fast float %7247, %116
  %7274 = fmul fast float %7247, %117
  %7275 = fmul fast float %7247, %118
  %7276 = fadd fast float %7273, %188
  %7277 = fadd fast float %7274, %189
  %7278 = fadd fast float %7275, %190
  %7279 = fmul fast float %7276, %7250
  %7280 = call float @dx.op.tertiary.f32(i32 46, float %7277, float %7256, float %7279)  ; FMad(a,b,c)
  %7281 = call float @dx.op.tertiary.f32(i32 46, float %7278, float %7262, float %7280)  ; FMad(a,b,c)
  %7282 = fadd fast float %7281, %7268
  %7283 = fmul fast float %7276, %7251
  %7284 = call float @dx.op.tertiary.f32(i32 46, float %7277, float %7257, float %7283)  ; FMad(a,b,c)
  %7285 = call float @dx.op.tertiary.f32(i32 46, float %7278, float %7263, float %7284)  ; FMad(a,b,c)
  %7286 = fadd fast float %7285, %7269
  %7287 = fmul fast float %7276, %7252
  %7288 = call float @dx.op.tertiary.f32(i32 46, float %7277, float %7258, float %7287)  ; FMad(a,b,c)
  %7289 = call float @dx.op.tertiary.f32(i32 46, float %7278, float %7264, float %7288)  ; FMad(a,b,c)
  %7290 = fadd fast float %7289, %7270
  %7291 = fmul fast float %7276, %7253
  %7292 = call float @dx.op.tertiary.f32(i32 46, float %7277, float %7259, float %7291)  ; FMad(a,b,c)
  %7293 = call float @dx.op.tertiary.f32(i32 46, float %7278, float %7265, float %7292)  ; FMad(a,b,c)
  %7294 = fadd fast float %7293, %7271
  %7295 = fdiv fast float %7282, %7294
  %7296 = fdiv fast float %7286, %7294
  %7297 = fdiv fast float %7290, %7294
  %7298 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7297)  ; FMax(a,b)
  %7299 = fmul fast float %258, 0x401921FB60000000
  %7300 = call float @dx.op.unary.f32(i32 13, float %7299)  ; Sin(value)
  %7301 = call float @dx.op.unary.f32(i32 12, float %7299)  ; Cos(value)
  %7302 = fsub fast float -0.000000e+00, %7300
  %7303 = fmul fast float %7237, 5.000000e-01
  %7304 = call float @dx.op.dot2.f32(i32 54, float %258, float %258, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7305 = call float @dx.op.unary.f32(i32 22, float %7304)  ; Frc(value)
  %7306 = fmul fast float %7305, 0x404A7DD040000000
  %7307 = call float @dx.op.unary.f32(i32 22, float %7306)  ; Frc(value)
  %7308 = fmul fast float %7307, %7246
  %7309 = fadd fast float %7308, %7303
  %7310 = call float @dx.op.tertiary.f32(i32 46, float %7309, float %7302, float 0.000000e+00)  ; FMad(a,b,c)
  %7311 = call float @dx.op.tertiary.f32(i32 46, float %7309, float %7301, float 0.000000e+00)  ; FMad(a,b,c)
  %7312 = fadd fast float %7310, %7295
  %7313 = fadd fast float %7311, %7296
  %7314 = fmul fast float %7312, %7241
  %7315 = fmul fast float %7313, %7241
  %7316 = call float @dx.op.binary.f32(i32 35, float %7314, float %7237)  ; FMax(a,b)
  %7317 = call float @dx.op.binary.f32(i32 35, float %7315, float %7237)  ; FMax(a,b)
  %7318 = call float @dx.op.binary.f32(i32 36, float %7316, float %7238)  ; FMin(a,b)
  %7319 = call float @dx.op.binary.f32(i32 36, float %7317, float %7238)  ; FMin(a,b)
  %7320 = fadd fast float %7318, %7235
  %7321 = fadd fast float %7319, %7236
  %7322 = uitofp i32 %7272 to float
  %7323 = fadd fast float %7298, %7245
  %7324 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %7320, float %7321, float %7322, float undef, i32 0, i32 0, i32 undef, float %7323)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7325 = extractvalue %dx.types.ResRet.f32 %7324, 0
  %7326 = fadd fast float %7325, -1.000000e+00
  %7327 = fmul fast float %7326, %7206
  %7328 = fadd fast float %7327, 1.000000e+00
  %7329 = fmul fast float %7328, %7218
  br label %7330

; <label>:7330                                    ; preds = %7232, %7230
  %7331 = phi float [ %7329, %7232 ], [ %7218, %7230 ]
  %7332 = call float @dx.op.binary.f32(i32 36, float %7331, float %7331)  ; FMin(a,b)
  %7333 = call float @dx.op.binary.f32(i32 36, float %7331, float %7332)  ; FMin(a,b)
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  br i1 %7334, label %7335, label %7222, !dx.controlflow.hints !123

; <label>:7335                                    ; preds = %7330
  %7336 = fmul fast float %7331, %7140
  %7337 = fmul fast float %7331, %7141
  %7338 = fmul fast float %7331, %7142
  %7339 = fsub fast float %7124, %4675
  %7340 = fcmp fast ogt float %7339, 0.000000e+00
  %7341 = fsub fast float %190, %4675
  %7342 = fcmp fast ogt float %7341, 0.000000e+00
  %7343 = xor i1 %7342, %7340
  %7344 = fsub fast float %4675, %7124
  %7345 = fmul fast float %7344, 2.000000e+00
  %7346 = fadd fast float %7345, %7124
  %7347 = select i1 %7343, float %7124, float %7346
  %7348 = fsub fast float %7347, %190
  %7349 = call float @dx.op.dot3.f32(i32 55, float %7150, float %7151, float %7348, float %7150, float %7151, float %7348)  ; Dot3(ax,ay,az,bx,by,bz)
  %7350 = call float @dx.op.unary.f32(i32 25, float %7349)  ; Rsqrt(value)
  %7351 = fmul fast float %7350, %7150
  %7352 = fmul fast float %7350, %7151
  %7353 = fmul fast float %7350, %7348
  %7354 = fsub fast float %4675, %190
  %7355 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7354)  ; Dot3(ax,ay,az,bx,by,bz)
  %7356 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7351, float %7352, float %7353)  ; Dot3(ax,ay,az,bx,by,bz)
  %7357 = fdiv fast float 1.000000e+00, %7356
  %7358 = fmul fast float %7357, %7355
  %7359 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7341, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7360 = fcmp fast ogt float %7359, 0.000000e+00
  %7361 = fcmp fast olt float %7359, 0.000000e+00
  %7362 = zext i1 %7360 to i32
  %7363 = zext i1 %7361 to i32
  %7364 = sub nsw i32 %7362, %7363
  %7365 = sitofp i32 %7364 to float
  %7366 = fsub fast float %7347, %4675
  %7367 = call float @dx.op.dot3.f32(i32 55, float %7150, float %7151, float %7366, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7368 = fcmp fast ogt float %7367, 0.000000e+00
  %7369 = fcmp fast olt float %7367, 0.000000e+00
  %7370 = zext i1 %7368 to i32
  %7371 = zext i1 %7369 to i32
  %7372 = sub nsw i32 %7370, %7371
  %7373 = sitofp i32 %7372 to float
  %7374 = fcmp fast une float %7365, %7373
  br i1 %7374, label %7375, label %7385

; <label>:7375                                    ; preds = %7335
  %7376 = fmul fast float %7358, %7353
  %7377 = fmul fast float %7358, %7352
  %7378 = fmul fast float %7358, %7351
  %7379 = fmul fast float %7378, %7378
  %7380 = fmul fast float %7377, %7377
  %7381 = fadd fast float %7379, %7380
  %7382 = fmul fast float %7376, %7376
  %7383 = fadd fast float %7381, %7382
  %7384 = call float @dx.op.unary.f32(i32 24, float %7383)  ; Sqrt(value)
  br label %7397

; <label>:7385                                    ; preds = %7335
  %7386 = icmp slt i32 %7364, 0
  br i1 %7386, label %7387, label %7397

; <label>:7387                                    ; preds = %7385
  %7388 = fsub fast float %188, %7122
  %7389 = fsub fast float %189, %7123
  %7390 = fsub fast float %190, %7347
  %7391 = fmul fast float %7388, %7388
  %7392 = fmul fast float %7389, %7389
  %7393 = fadd fast float %7391, %7392
  %7394 = fmul fast float %7390, %7390
  %7395 = fadd fast float %7393, %7394
  %7396 = call float @dx.op.unary.f32(i32 24, float %7395)  ; Sqrt(value)
  br label %7397

; <label>:7397                                    ; preds = %7387, %7385, %7375
  %7398 = phi float [ %7384, %7375 ], [ %7396, %7387 ], [ 0.000000e+00, %7385 ]
  %7399 = and i1 %7342, %7340
  %7400 = fsub fast float -0.000000e+00, %7398
  %7401 = select i1 %7399, float -0.000000e+00, float %7400
  %7402 = fmul fast float %4676, 0x3FF7154760000000
  %7403 = fmul fast float %7402, %7401
  %7404 = fmul fast float %4677, 0x3FF7154760000000
  %7405 = fmul fast float %7404, %7401
  %7406 = fmul fast float %4678, 0x3FF7154760000000
  %7407 = fmul fast float %7406, %7401
  %7408 = call float @dx.op.unary.f32(i32 21, float %7403)  ; Exp(value)
  %7409 = call float @dx.op.unary.f32(i32 21, float %7405)  ; Exp(value)
  %7410 = call float @dx.op.unary.f32(i32 21, float %7407)  ; Exp(value)
  %7411 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7412 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7413 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7414 = fmul fast float %7336, %7411
  %7415 = fmul fast float %7337, %7412
  %7416 = fmul fast float %7338, %7413
  %7417 = fsub fast float %7156, %5467
  %7418 = fsub fast float %7157, %5466
  %7419 = fsub fast float %7158, %5465
  %7420 = call float @dx.op.dot3.f32(i32 55, float %7417, float %7418, float %7419, float %7417, float %7418, float %7419)  ; Dot3(ax,ay,az,bx,by,bz)
  %7421 = call float @dx.op.unary.f32(i32 25, float %7420)  ; Rsqrt(value)
  %7422 = fmul fast float %7421, %7417
  %7423 = fmul fast float %7421, %7418
  %7424 = fmul fast float %7421, %7419
  %7425 = call float @dx.op.dot3.f32(i32 55, float %7156, float %7157, float %7158, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %7426 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5463, float %5462, float %7422, float %7423, float %7424)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7428 = fmul fast float %7427, %7163
  %7429 = fmul fast float %7427, %7427
  %7430 = fmul fast float %7429, %5495
  %7431 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7432 = fmul fast float %7428, %7431
  %7433 = bitcast float %7153 to i32
  %7434 = ashr i32 %7433, 1
  %7435 = sub nsw i32 1597463007, %7434
  %7436 = bitcast i32 %7435 to float
  %7437 = fmul fast float %7436, %7150
  %7438 = fmul fast float %7436, %7151
  %7439 = fmul fast float %7436, %7152
  %7440 = fsub fast float %7437, %5467
  %7441 = fsub fast float %7438, %5466
  %7442 = fsub fast float %7439, %5465
  %7443 = call float @dx.op.dot3.f32(i32 55, float %7440, float %7441, float %7442, float %7440, float %7441, float %7442)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = call float @dx.op.unary.f32(i32 25, float %7443)  ; Rsqrt(value)
  %7445 = fmul fast float %7440, %7444
  %7446 = fmul fast float %7441, %7444
  %7447 = fmul fast float %7442, %7444
  %7448 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %7445, float %7446, float %7447)  ; Dot3(ax,ay,az,bx,by,bz)
  %7449 = fmul fast float %7448, %7448
  %7450 = call float @dx.op.unary.f32(i32 6, float %7425)  ; FAbs(value)
  %7451 = fsub fast float 1.000000e+00, %5477
  %7452 = call float @dx.op.binary.f32(i32 35, float %7451, float 0x3F847AE140000000)  ; FMax(a,b)
  %7453 = fmul fast float %7452, %7452
  %7454 = fmul fast float %7453, %7453
  %7455 = fsub fast float 1.000000e+00, %7454
  %7456 = fmul fast float %5482, %5482
  %7457 = fmul fast float %7456, %7455
  %7458 = fadd fast float %7457, %7454
  %7459 = bitcast float %7458 to i32
  %7460 = ashr i32 %7459, 1
  %7461 = add nsw i32 %7460, 532487669
  %7462 = bitcast i32 %7461 to float
  %7463 = fadd fast float %7462, %5482
  %7464 = fmul fast float %7454, %7449
  %7465 = fsub fast float 1.000000e+00, %7449
  %7466 = fadd fast float %7465, %7464
  %7467 = fmul fast float %7450, %7450
  %7468 = fmul fast float %7467, %7455
  %7469 = fadd fast float %7468, %7454
  %7470 = bitcast float %7469 to i32
  %7471 = ashr i32 %7470, 1
  %7472 = add nsw i32 %7471, 532487669
  %7473 = bitcast i32 %7472 to float
  %7474 = fadd fast float %7473, %7450
  %7475 = fmul fast float %7466, %7466
  %7476 = fmul fast float %7475, %7463
  %7477 = fmul fast float %7476, %7474
  %7478 = fdiv fast float 1.000000e+00, %7477
  %7479 = bitcast float %7454 to i32
  %7480 = sitofp i32 %7479 to float
  %7481 = fmul fast float %7480, 0x3FE7F73180000000
  %7482 = fadd fast float %7481, 0x41AFE27C40000000
  %7483 = fptosi float %7482 to i32
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7119, 0x3FD80E9D60000000
  %7486 = fmul fast float %7485, %7436
  %7487 = fadd fast float %7484, %7486
  %7488 = bitcast float %7487 to i32
  %7489 = sub nsw i32 2129859010, %7488
  %7490 = bitcast i32 %7489 to float
  %7491 = fmul fast float %7454, %7478
  %7492 = fmul fast float %7491, %7484
  %7493 = fmul fast float %7492, %7490
  %7494 = call float @dx.op.unary.f32(i32 6, float %7426)  ; FAbs(value)
  %7495 = fsub fast float 1.000000e+00, %7494
  %7496 = bitcast float %7495 to i32
  %7497 = sitofp i32 %7496 to float
  %7498 = fmul fast float %7497, 5.000000e+00
  %7499 = fadd fast float %7498, 0xC1EFBF8940000000
  %7500 = fptosi float %7499 to i32
  %7501 = bitcast i32 %7500 to float
  %7502 = fsub fast float 1.000000e+00, %5474
  %7503 = fsub fast float 1.000000e+00, %5475
  %7504 = fsub fast float 1.000000e+00, %5480
  %7505 = fmul fast float %7501, %7502
  %7506 = fmul fast float %7501, %7503
  %7507 = fmul fast float %7501, %7504
  %7508 = fadd fast float %7505, %5474
  %7509 = fadd fast float %7506, %5475
  %7510 = fadd fast float %7507, %5480
  br i1 %5752, label %7511, label %7534

; <label>:7511                                    ; preds = %7397
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %7494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = fadd fast float %7513, -5.000000e-01
  %7517 = fadd fast float %7514, -5.000000e-01
  %7518 = fadd fast float %7515, -5.000000e-01
  %7519 = fmul fast float %5474, 4.000000e+00
  %7520 = fmul fast float %7519, %7502
  %7521 = fmul fast float %7520, %7516
  %7522 = fmul fast float %5475, 4.000000e+00
  %7523 = fmul fast float %7522, %7503
  %7524 = fmul fast float %7523, %7517
  %7525 = fmul fast float %5480, 4.000000e+00
  %7526 = fmul fast float %7525, %7504
  %7527 = fmul fast float %7526, %7518
  %7528 = fadd fast float %7521, %7508
  %7529 = fadd fast float %7524, %7509
  %7530 = fadd fast float %7527, %7510
  %7531 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7532 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7533 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  br label %7534

; <label>:7534                                    ; preds = %7511, %7397
  %7535 = phi float [ %7531, %7511 ], [ %7508, %7397 ]
  %7536 = phi float [ %7532, %7511 ], [ %7509, %7397 ]
  %7537 = phi float [ %7533, %7511 ], [ %7510, %7397 ]
  %7538 = fmul fast float %7425, 9.843750e-01
  %7539 = fadd fast float %7538, 7.812500e-03
  %7540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7539, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7543 = fmul fast float %7541, %5474
  %7544 = fmul fast float %7541, %5475
  %7545 = fmul fast float %7541, %5480
  %7546 = fadd fast float %7543, %7542
  %7547 = fadd fast float %7544, %7542
  %7548 = fadd fast float %7545, %7542
  br i1 %5752, label %7549, label %7572

; <label>:7549                                    ; preds = %7534
  %7550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %7425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = fadd fast float %7551, -5.000000e-01
  %7555 = fadd fast float %7552, -5.000000e-01
  %7556 = fadd fast float %7553, -5.000000e-01
  %7557 = fmul fast float %5474, 4.000000e+00
  %7558 = fmul fast float %7557, %7502
  %7559 = fmul fast float %7558, %7554
  %7560 = fmul fast float %5475, 4.000000e+00
  %7561 = fmul fast float %7560, %7503
  %7562 = fmul fast float %7561, %7555
  %7563 = fmul fast float %5480, 4.000000e+00
  %7564 = fmul fast float %7563, %7504
  %7565 = fmul fast float %7564, %7556
  %7566 = fadd fast float %7559, %7546
  %7567 = fadd fast float %7562, %7547
  %7568 = fadd fast float %7565, %7548
  %7569 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7570 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7571 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  br label %7572

; <label>:7572                                    ; preds = %7549, %7534
  %7573 = phi float [ %7569, %7549 ], [ %7546, %7534 ]
  %7574 = phi float [ %7570, %7549 ], [ %7547, %7534 ]
  %7575 = phi float [ %7571, %7549 ], [ %7548, %7534 ]
  %7576 = call float @dx.op.binary.f32(i32 35, float %7574, float %7575)  ; FMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %7573, float %7576)  ; FMax(a,b)
  %7578 = fsub fast float 1.000000e+00, %7577
  %7579 = fsub fast float -0.000000e+00, %5468
  %7580 = fsub fast float -0.000000e+00, %5469
  %7581 = fsub fast float -0.000000e+00, %5470
  %7582 = call float @dx.op.dot3.f32(i32 55, float %7156, float %7157, float %7158, float %7579, float %7580, float %7581)  ; Dot3(ax,ay,az,bx,by,bz)
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7583, %7163
  %7585 = fmul fast float %7583, 9.843750e-01
  %7586 = fadd fast float %7585, 7.812500e-03
  %7587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7586, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7588 = extractvalue %dx.types.ResRet.f32 %7587, 2
  %7589 = extractvalue %dx.types.ResRet.f32 %7587, 3
  %7590 = fmul fast float %7588, %5474
  %7591 = fmul fast float %7588, %5475
  %7592 = fmul fast float %7588, %5480
  %7593 = fadd fast float %7590, %7589
  %7594 = fadd fast float %7591, %7589
  %7595 = fadd fast float %7592, %7589
  br i1 %5752, label %7596, label %7619

; <label>:7596                                    ; preds = %7572
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4208, float %7583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.ResRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.ResRet.f32 %7597, 2
  %7601 = fadd fast float %7598, -5.000000e-01
  %7602 = fadd fast float %7599, -5.000000e-01
  %7603 = fadd fast float %7600, -5.000000e-01
  %7604 = fmul fast float %5474, 4.000000e+00
  %7605 = fmul fast float %7604, %7502
  %7606 = fmul fast float %7605, %7601
  %7607 = fmul fast float %5475, 4.000000e+00
  %7608 = fmul fast float %7607, %7503
  %7609 = fmul fast float %7608, %7602
  %7610 = fmul fast float %5480, 4.000000e+00
  %7611 = fmul fast float %7610, %7504
  %7612 = fmul fast float %7611, %7603
  %7613 = fadd fast float %7606, %7593
  %7614 = fadd fast float %7609, %7594
  %7615 = fadd fast float %7612, %7595
  %7616 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7617 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7618 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  br label %7619

; <label>:7619                                    ; preds = %7596, %7572
  %7620 = phi float [ %7616, %7596 ], [ %7593, %7572 ]
  %7621 = phi float [ %7617, %7596 ], [ %7594, %7572 ]
  %7622 = phi float [ %7618, %7596 ], [ %7595, %7572 ]
  %7623 = call float @dx.op.binary.f32(i32 35, float %7621, float %7622)  ; FMax(a,b)
  %7624 = call float @dx.op.binary.f32(i32 35, float %7620, float %7623)  ; FMax(a,b)
  %7625 = fsub fast float 1.000000e+00, %7624
  %7626 = fmul fast float %7584, %7625
  %7627 = fmul fast float %7626, %4298
  %7628 = fmul fast float %7626, %4299
  %7629 = fmul fast float %7626, %4300
  %7630 = fmul fast float %7535, %7493
  %7631 = fmul fast float %7536, %7493
  %7632 = fmul fast float %7537, %7493
  %7633 = fsub fast float 1.000000e+00, %7426
  %7634 = bitcast float %7633 to i32
  %7635 = sitofp i32 %7634 to float
  %7636 = fmul fast float %7635, 5.000000e+00
  %7637 = fadd fast float %7636, 0xC1EFBF8940000000
  %7638 = fptosi float %7637 to i32
  %7639 = bitcast i32 %7638 to float
  %7640 = fmul fast float %7639, %4209
  %7641 = fmul fast float %7578, %7640
  %7642 = fmul fast float %7641, %5799
  %7643 = fmul fast float %7641, %5800
  %7644 = fmul fast float %7641, %5801
  %7645 = fmul fast float %7578, %7432
  %7646 = fadd fast float %7642, %7630
  %7647 = fadd fast float %7643, %7631
  %7648 = fadd fast float %7644, %7632
  %7649 = fadd fast float %7627, %7645
  %7650 = fadd fast float %7628, %7645
  %7651 = fadd fast float %7629, %7645
  %7652 = fmul fast float %7414, %4205
  %7653 = fmul fast float %7652, %7649
  %7654 = fmul fast float %7415, %4205
  %7655 = fmul fast float %7654, %7650
  %7656 = fmul fast float %7416, %4205
  %7657 = fmul fast float %7656, %7651
  %7658 = fadd fast float %7653, %7093
  %7659 = fadd fast float %7655, %7094
  %7660 = fadd fast float %7657, %7095
  %7661 = fmul fast float %7652, %7432
  %7662 = fmul fast float %7661, %7646
  %7663 = fmul fast float %7654, %7432
  %7664 = fmul fast float %7663, %7647
  %7665 = fmul fast float %7656, %7432
  %7666 = fmul fast float %7665, %7648
  %7667 = fadd fast float %7662, %7090
  %7668 = fadd fast float %7664, %7091
  %7669 = fadd fast float %7666, %7092
  br label %7222

; <label>:7670                                    ; preds = %7222
  br label %7671

; <label>:7671                                    ; preds = %7670, %7056
  %7672 = phi float [ %7058, %7056 ], [ %7223, %7670 ]
  %7673 = phi float [ %7059, %7056 ], [ %7224, %7670 ]
  %7674 = phi float [ %7060, %7056 ], [ %7225, %7670 ]
  %7675 = phi float [ %7061, %7056 ], [ %7226, %7670 ]
  %7676 = phi float [ %7062, %7056 ], [ %7227, %7670 ]
  %7677 = phi float [ %7063, %7056 ], [ %7228, %7670 ]
  %7678 = add i32 %7057, 1
  %7679 = icmp ugt i32 %7678, %7053
  br i1 %7679, label %7680, label %7056

; <label>:7680                                    ; preds = %7671
  br label %7681

; <label>:7681                                    ; preds = %7680, %7006, %6996
  %7682 = phi float [ %6997, %6996 ], [ %6997, %7006 ], [ %7672, %7680 ]
  %7683 = phi float [ %6998, %6996 ], [ %6998, %7006 ], [ %7673, %7680 ]
  %7684 = phi float [ %6999, %6996 ], [ %6999, %7006 ], [ %7674, %7680 ]
  %7685 = phi float [ %7000, %6996 ], [ %7000, %7006 ], [ %7675, %7680 ]
  %7686 = phi float [ %7001, %6996 ], [ %7001, %7006 ], [ %7676, %7680 ]
  %7687 = phi float [ %7002, %6996 ], [ %7002, %7006 ], [ %7677, %7680 ]
  %7688 = fmul fast float %5808, %4205
  %7689 = fmul fast float %5809, %4205
  %7690 = fmul fast float %5810, %4205
  %7691 = fadd fast float %7688, 1.000000e+00
  %7692 = fadd fast float %7689, 1.000000e+00
  %7693 = fadd fast float %7690, 1.000000e+00
  %7694 = call float @dx.op.dot3.f32(i32 55, float %7691, float %7692, float %7693, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7695 = fsub fast float 1.000000e+00, %7694
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = fmul fast float %7697, %5814
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7701 = fsub fast float 1.000000e+00, %4212
  %7702 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7703 = fadd fast float %7687, %4211
  %7704 = fmul fast float %7703, %4212
  %7705 = fmul fast float %7702, %7700
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7708 = fmul fast float %7685, %5471
  %7709 = fmul fast float %7686, %5472
  %7710 = fmul fast float %7687, %5473
  %7711 = fcmp fast ogt float %100, %210
  %7712 = and i1 %7711, %4681
  %7713 = or i1 %4687, %7712
  %7714 = icmp eq i32 %4680, 2
  %7715 = fcmp fast ole float %100, %210
  %7716 = and i1 %7715, %7714
  %7717 = or i1 %7716, %7713
  br i1 %7712, label %7718, label %7975

; <label>:7718                                    ; preds = %7681
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7721 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7722 = fmul fast float %7720, %109
  %7723 = fmul fast float %7721, %110
  %7724 = call float @dx.op.unary.f32(i32 7, float %7722)  ; Saturate(value)
  %7725 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7726 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7724, float %7725, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7727 = extractvalue %dx.types.ResRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.ResRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.ResRet.f32 %7726, 2
  %7730 = extractvalue %dx.types.ResRet.f32 %7726, 3
  %7731 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7724, float %7725, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.ResRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.ResRet.f32 %7731, 2
  %7735 = extractvalue %dx.types.ResRet.f32 %7731, 3
  %7736 = call float @dx.op.binary.f32(i32 35, float %7728, float %7729)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float %7727, float %7736)  ; FMax(a,b)
  %7738 = call float @dx.op.binary.f32(i32 35, float %7737, float %7730)  ; FMax(a,b)
  %7739 = call float @dx.op.binary.f32(i32 36, float %7733, float %7734)  ; FMin(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7732, float %7739)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7740, float %7735)  ; FMin(a,b)
  %7742 = fmul fast float %7738, 2.550000e+02
  %7743 = fadd fast float %7742, 0x3F70101020000000
  %7744 = fptoui float %7743 to i32
  %7745 = fmul fast float %7741, 2.550000e+02
  %7746 = fadd fast float %7745, 0x3F70101020000000
  %7747 = fptoui float %7746 to i32
  %7748 = icmp ult i32 %7744, %7747
  br i1 %7748, label %7749, label %7917

; <label>:7749                                    ; preds = %7718
  %7750 = fcmp fast ogt float %99, 9.843750e-01
  %7751 = fadd fast float %100, -4.000000e+00
  %7752 = select i1 %7750, float -4.000000e+00, float %7751
  %7753 = call float @dx.op.binary.f32(i32 35, float %7752, float 0.000000e+00)  ; FMax(a,b)
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = fadd fast float %7755, %7753
  %7757 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7758 = fmul fast float %7756, %7757
  %7759 = call float @dx.op.unary.f32(i32 23, float %7758)  ; Log(value)
  %7760 = extractvalue %dx.types.CBufRet.f32 %7754, 3
  %7761 = fmul fast float %7760, %7759
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7764 = fmul fast float %7761, %7763
  %7765 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  %7766 = uitofp i32 %7744 to float
  %7767 = uitofp i32 %7747 to float
  %7768 = fadd fast float %7766, 5.000000e-01
  %7769 = fadd fast float %7767, 5.000000e-01
  %7770 = fmul fast float %7763, %7768
  %7771 = fmul fast float %7763, %7769
  %7772 = fadd fast float %7770, 0x3F0FFB4800000000
  %7773 = fadd fast float %7771, 0xBF0FFB4800000000
  %7774 = call float @dx.op.binary.f32(i32 35, float %7765, float %7772)  ; FMax(a,b)
  %7775 = call float @dx.op.binary.f32(i32 36, float %7774, float %7773)  ; FMin(a,b)
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7778 = extractvalue %dx.types.CBufRet.f32 %7776, 2
  %7779 = extractvalue %dx.types.CBufRet.f32 %7776, 0
  %7780 = fmul fast float %7777, %7775
  %7781 = fadd fast float %7779, %7780
  %7782 = fadd fast float %7779, %7778
  %7783 = fsub fast float %7777, %7778
  %7784 = fadd fast float %7783, %7779
  %7785 = call float @dx.op.binary.f32(i32 35, float %7781, float %7782)  ; FMax(a,b)
  %7786 = call float @dx.op.binary.f32(i32 36, float %7785, float %7784)  ; FMin(a,b)
  %7787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7724, float %7725, float %7786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7788 = extractvalue %dx.types.ResRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.ResRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.ResRet.f32 %7787, 2
  %7791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.i32 %7791, 0
  %7793 = extractvalue %dx.types.CBufRet.i32 %7791, 1
  %7794 = uitofp i32 %7792 to float
  %7795 = uitofp i32 %7793 to float
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = fmul fast float %7794, %7724
  %7800 = fmul fast float %7795, %7725
  %7801 = fadd fast float %7799, -5.000000e-01
  %7802 = fadd fast float %7800, -5.000000e-01
  %7803 = call float @dx.op.unary.f32(i32 22, float %7801)  ; Frc(value)
  %7804 = call float @dx.op.unary.f32(i32 22, float %7802)  ; Frc(value)
  %7805 = fmul fast float %7803, %7803
  %7806 = fmul fast float %7805, %7803
  %7807 = fsub fast float 3.000000e+00, %7803
  %7808 = fmul fast float %7805, %7807
  %7809 = fmul fast float %7803, 3.000000e+00
  %7810 = fmul fast float %7806, 3.000000e+00
  %7811 = fmul fast float %7805, 6.000000e+00
  %7812 = fsub fast float %7810, %7811
  %7813 = fadd fast float %7812, 4.000000e+00
  %7814 = fmul fast float %7813, 0x3FC5555560000000
  %7815 = fmul fast float %7806, -3.000000e+00
  %7816 = fadd fast float %7805, %7803
  %7817 = fmul fast float %7816, 3.000000e+00
  %7818 = fadd fast float %7815, 1.000000e+00
  %7819 = fadd fast float %7818, %7817
  %7820 = fmul fast float %7806, 0x3FC5555560000000
  %7821 = fmul fast float %7804, %7804
  %7822 = fmul fast float %7821, %7804
  %7823 = fsub fast float 3.000000e+00, %7804
  %7824 = fmul fast float %7821, %7823
  %7825 = fmul fast float %7804, 3.000000e+00
  %7826 = fmul fast float %7822, 3.000000e+00
  %7827 = fmul fast float %7821, 6.000000e+00
  %7828 = fsub fast float %7826, %7827
  %7829 = fadd fast float %7828, 4.000000e+00
  %7830 = fmul fast float %7829, 0x3FC5555560000000
  %7831 = fmul fast float %7822, -3.000000e+00
  %7832 = fadd fast float %7821, %7804
  %7833 = fmul fast float %7832, 3.000000e+00
  %7834 = fadd fast float %7831, 1.000000e+00
  %7835 = fadd fast float %7834, %7833
  %7836 = fmul fast float %7822, 0x3FC5555560000000
  %7837 = fadd fast float %7803, 1.000000e+00
  %7838 = fsub fast float 1.000000e+00, %7809
  %7839 = fadd fast float %7838, %7808
  %7840 = fadd fast float %7839, %7813
  %7841 = fmul fast float %7840, 0x3FC5555560000000
  %7842 = fdiv fast float %7814, %7841
  %7843 = fsub fast float %7837, %7842
  %7844 = fsub fast float 1.000000e+00, %7803
  %7845 = fadd fast float %7819, %7806
  %7846 = fmul fast float %7845, 0x3FC5555560000000
  %7847 = fdiv fast float %7820, %7846
  %7848 = fadd fast float %7844, %7847
  %7849 = fadd fast float %7804, 1.000000e+00
  %7850 = fsub fast float 1.000000e+00, %7825
  %7851 = fadd fast float %7850, %7824
  %7852 = fadd fast float %7851, %7829
  %7853 = fmul fast float %7852, 0x3FC5555560000000
  %7854 = fdiv fast float %7830, %7853
  %7855 = fsub fast float %7849, %7854
  %7856 = fsub fast float 1.000000e+00, %7804
  %7857 = fadd fast float %7835, %7822
  %7858 = fmul fast float %7857, 0x3FC5555560000000
  %7859 = fdiv fast float %7836, %7858
  %7860 = fadd fast float %7859, %7856
  %7861 = fmul fast float %7843, %7797
  %7862 = fsub fast float %7724, %7861
  %7863 = fmul fast float %7848, %7797
  %7864 = fadd fast float %7863, %7724
  %7865 = fmul fast float %7860, %7798
  %7866 = fadd fast float %7865, %7725
  %7867 = fmul fast float %7855, %7798
  %7868 = fsub fast float %7725, %7867
  %7869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7862, float %7868, float %7786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 0
  %7871 = extractvalue %dx.types.ResRet.f32 %7869, 1
  %7872 = extractvalue %dx.types.ResRet.f32 %7869, 2
  %7873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7864, float %7868, float %7786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = extractvalue %dx.types.ResRet.f32 %7873, 1
  %7876 = extractvalue %dx.types.ResRet.f32 %7873, 2
  %7877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7862, float %7866, float %7786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7864, float %7866, float %7786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.ResRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.ResRet.f32 %7881, 2
  %7885 = fsub fast float %7878, %7870
  %7886 = fsub fast float %7879, %7871
  %7887 = fsub fast float %7880, %7872
  %7888 = fmul fast float %7885, %7858
  %7889 = fmul fast float %7886, %7858
  %7890 = fmul fast float %7887, %7858
  %7891 = fadd fast float %7888, %7870
  %7892 = fadd fast float %7889, %7871
  %7893 = fadd fast float %7890, %7872
  %7894 = fsub fast float %7882, %7874
  %7895 = fsub fast float %7883, %7875
  %7896 = fsub fast float %7884, %7876
  %7897 = fmul fast float %7894, %7858
  %7898 = fmul fast float %7895, %7858
  %7899 = fmul fast float %7896, %7858
  %7900 = fsub fast float %7874, %7891
  %7901 = fadd fast float %7900, %7897
  %7902 = fsub fast float %7875, %7892
  %7903 = fadd fast float %7902, %7898
  %7904 = fsub fast float %7876, %7893
  %7905 = fadd fast float %7904, %7899
  %7906 = fmul fast float %7901, %7846
  %7907 = fmul fast float %7903, %7846
  %7908 = fmul fast float %7905, %7846
  %7909 = fadd fast float %7906, %7891
  %7910 = fadd fast float %7907, %7892
  %7911 = fadd fast float %7908, %7893
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7914 = fmul fast float %7909, %7913
  %7915 = fmul fast float %7910, %7913
  %7916 = fmul fast float %7911, %7913
  br label %7917

; <label>:7917                                    ; preds = %7749, %7718
  %7918 = phi float [ %7788, %7749 ], [ 1.000000e+00, %7718 ]
  %7919 = phi float [ %7789, %7749 ], [ 1.000000e+00, %7718 ]
  %7920 = phi float [ %7790, %7749 ], [ 1.000000e+00, %7718 ]
  %7921 = phi float [ %7914, %7749 ], [ 0.000000e+00, %7718 ]
  %7922 = phi float [ %7915, %7749 ], [ 0.000000e+00, %7718 ]
  %7923 = phi float [ %7916, %7749 ], [ 0.000000e+00, %7718 ]
  %7924 = fmul fast float %7921, %7695
  %7925 = fmul fast float %7922, %7695
  %7926 = fmul fast float %7923, %7695
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7918, float %7919, float %7920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.dot3.f32(i32 55, float %7924, float %7925, float %7926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = select i1 %247, float %7927, float %7918
  %7930 = select i1 %247, float %7927, float %7919
  %7931 = select i1 %247, float 1.000000e+00, float %7920
  %7932 = select i1 %247, float %7928, float %7924
  %7933 = select i1 %247, float 0.000000e+00, float %7925
  %7934 = select i1 %247, float 0.000000e+00, float %7926
  %7935 = fmul fast float %7929, %7708
  %7936 = fmul fast float %7930, %7709
  %7937 = fmul fast float %7931, %7710
  %7938 = fadd fast float %7935, %7932
  %7939 = fadd fast float %7936, %7933
  %7940 = fadd fast float %7934, %7937
  %7941 = fmul fast float %7929, %7682
  %7942 = fmul fast float %7930, %7683
  %7943 = fmul fast float %7931, %7684
  %7944 = fmul fast float %137, %7720
  %7945 = fmul fast float %139, %7721
  %7946 = fsub fast float 1.000000e+00, %7944
  %7947 = fsub fast float 1.000000e+00, %7945
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7950 = extractvalue %dx.types.CBufRet.f32 %7948, 1
  %7951 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7952 = fmul fast float %7946, %7949
  %7953 = fmul fast float %7946, %7950
  %7954 = fmul fast float %7946, %7951
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7959 = fmul fast float %7947, %7956
  %7960 = fmul fast float %7947, %7957
  %7961 = fmul fast float %7947, %7958
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7966 = fadd fast float %7959, %7963
  %7967 = fadd fast float %7966, %7952
  %7968 = fadd fast float %7960, %7964
  %7969 = fadd fast float %7968, %7953
  %7970 = fadd fast float %7961, %7965
  %7971 = fadd fast float %7970, %7954
  %7972 = fmul fast float %7967, %210
  %7973 = fmul fast float %7969, %210
  %7974 = fmul fast float %7971, %210
  br label %7975

; <label>:7975                                    ; preds = %7917, %7681
  %7976 = phi float [ %7972, %7917 ], [ %188, %7681 ]
  %7977 = phi float [ %7973, %7917 ], [ %189, %7681 ]
  %7978 = phi float [ %7974, %7917 ], [ %190, %7681 ]
  %7979 = phi float [ %210, %7917 ], [ %100, %7681 ]
  %7980 = phi float [ %7938, %7917 ], [ %7708, %7681 ]
  %7981 = phi float [ %7939, %7917 ], [ %7709, %7681 ]
  %7982 = phi float [ %7940, %7917 ], [ %7710, %7681 ]
  %7983 = phi float [ %7941, %7917 ], [ %7682, %7681 ]
  %7984 = phi float [ %7942, %7917 ], [ %7683, %7681 ]
  %7985 = phi float [ %7943, %7917 ], [ %7684, %7681 ]
  %7986 = phi float [ %7918, %7917 ], [ 1.000000e+00, %7681 ]
  br i1 %7717, label %9141, label %7987

; <label>:7987                                    ; preds = %7975
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.CBufRet.f32 %7988, 2
  %7992 = extractvalue %dx.types.CBufRet.f32 %7988, 3
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.CBufRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.CBufRet.f32 %7993, 2
  %7997 = extractvalue %dx.types.CBufRet.f32 %7993, 3
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %8002 = extractvalue %dx.types.CBufRet.f32 %7998, 3
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.CBufRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8007 = extractvalue %dx.types.CBufRet.f32 %8003, 3
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 3
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 3
  %8012 = extractvalue %dx.types.CBufRet.f32 %8010, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8010, 1
  %8014 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8015 = fcmp fast olt float %8014, -5.000000e-01
  %8016 = call float @dx.op.dot3.f32(i32 55, float %7976, float %7977, float %7978, float %7976, float %7977, float %7978)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = call float @dx.op.unary.f32(i32 25, float %8016)  ; Rsqrt(value)
  %8018 = fmul fast float %8017, %8016
  %8019 = fmul fast float %8017, %7976
  %8020 = fmul fast float %8017, %7977
  %8021 = fmul fast float %8017, %7978
  %8022 = fadd fast float %8018, %7992
  %8023 = call float @dx.op.dot3.f32(i32 55, float %8019, float %8020, float %8021, float %7989, float %7990, float %7991)  ; Dot3(ax,ay,az,bx,by,bz)
  %8024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.i32 %8024, 1
  %8026 = and i32 %8025, 1
  %8027 = icmp ne i32 %8026, 0
  %8028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.f32 %8028, 2
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  %8031 = and i1 %8027, %8030
  br i1 %8031, label %8032, label %8438, !dx.controlflow.hints !124

; <label>:8032                                    ; preds = %7987
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 3
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 2
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 2
  %8039 = fsub fast float %8036, %8038
  %8040 = and i32 %8025, 2
  %8041 = extractvalue %dx.types.CBufRet.i32 %8024, 0
  %8042 = call i32 @dx.op.binary.i32(i32 40, i32 %8041, i32 3)  ; UMin(a,b)
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.CBufRet.f32 %8037, 0
  %8047 = extractvalue %dx.types.CBufRet.f32 %8037, 1
  %8048 = fsub fast float %8044, %8046
  %8049 = fsub fast float %8045, %8047
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = fcmp fast ogt float %8051, 0.000000e+00
  %8053 = fsub fast float -0.000000e+00, %8048
  %8054 = fsub fast float -0.000000e+00, %8049
  %8055 = call float @dx.op.dot2.f32(i32 54, float %8019, float %8020, float %8019, float %8020)  ; Dot2(ax,ay,bx,by)
  %8056 = call float @dx.op.dot2.f32(i32 54, float %8019, float %8020, float %8053, float %8054)  ; Dot2(ax,ay,bx,by)
  %8057 = fmul fast float %8056, 2.000000e+00
  %8058 = call float @dx.op.dot2.f32(i32 54, float %8053, float %8054, float %8053, float %8054)  ; Dot2(ax,ay,bx,by)
  %8059 = fmul fast float %8051, %8051
  %8060 = fsub fast float %8058, %8059
  %8061 = fmul fast float %8057, %8057
  %8062 = fmul fast float %8055, 4.000000e+00
  %8063 = fmul fast float %8062, %8060
  %8064 = fsub fast float %8061, %8063
  %8065 = fcmp fast ogt float %8064, 0.000000e+00
  br i1 %8065, label %8066, label %8081

; <label>:8066                                    ; preds = %8032
  %8067 = fcmp fast ogt float %8057, 0.000000e+00
  %8068 = call float @dx.op.unary.f32(i32 24, float %8064)  ; Sqrt(value)
  %8069 = fsub fast float -0.000000e+00, %8068
  %8070 = select i1 %8067, float %8068, float %8069
  %8071 = fadd fast float %8070, %8057
  %8072 = fmul float %8071, -5.000000e-01
  %8073 = fdiv fast float %8072, %8055
  %8074 = call float @dx.op.binary.f32(i32 35, float %8073, float 0.000000e+00)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 36, float %8018, float %8074)  ; FMin(a,b)
  %8076 = fdiv fast float %8060, %8072
  %8077 = call float @dx.op.binary.f32(i32 35, float %8076, float 0.000000e+00)  ; FMax(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8018, float %8077)  ; FMin(a,b)
  %8079 = call float @dx.op.binary.f32(i32 36, float %8075, float %8078)  ; FMin(a,b)
  %8080 = call float @dx.op.binary.f32(i32 35, float %8075, float %8078)  ; FMax(a,b)
  br label %8081

; <label>:8081                                    ; preds = %8066, %8032
  %8082 = phi float [ %8080, %8066 ], [ -1.000000e+00, %8032 ]
  %8083 = phi float [ %8079, %8066 ], [ -1.000000e+00, %8032 ]
  %8084 = phi i1 [ true, %8066 ], [ false, %8032 ]
  %8085 = and i1 %8052, %8084
  br i1 %8085, label %8086, label %8088

; <label>:8086                                    ; preds = %8081
  %8087 = fcmp fast oeq float %8083, %8082
  br i1 %8087, label %8391, label %8089

; <label>:8088                                    ; preds = %8081
  br i1 %8052, label %8391, label %8089

; <label>:8089                                    ; preds = %8088, %8086
  %8090 = phi float [ %8018, %8088 ], [ %8082, %8086 ]
  %8091 = phi float [ 0.000000e+00, %8088 ], [ %8083, %8086 ]
  %8092 = icmp ne i32 %8040, 0
  %8093 = fmul fast float %8090, %8021
  %8094 = fadd fast float %8093, %8034
  %8095 = fmul fast float %8094, %8090
  %8096 = select i1 %8092, float 0.000000e+00, float %8095
  %8097 = fcmp fast oeq float %8021, 0.000000e+00
  %8098 = fdiv fast float %8039, %8021
  %8099 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8098)  ; FMax(a,b)
  %8100 = select i1 %8097, float %8090, float %8099
  %8101 = call float @dx.op.binary.f32(i32 36, float %8090, float %8100)  ; FMin(a,b)
  %8102 = fcmp fast ogt float %8021, 0.000000e+00
  %8103 = fcmp fast olt float %8039, 0.000000e+00
  br i1 %8102, label %8104, label %8161

; <label>:8104                                    ; preds = %8089
  %8105 = icmp eq i32 %8040, 0
  br i1 %8103, label %8106, label %8150

; <label>:8106                                    ; preds = %8104
  %8107 = select i1 %8105, float %8090, float 0.000000e+00
  %8108 = fsub fast float -0.000000e+00, %8107
  %8109 = call float @dx.op.unary.f32(i32 6, float %8108)  ; FAbs(value)
  %8110 = fmul fast float %8107, %8021
  %8111 = fadd fast float %8110, %8034
  %8112 = fmul fast float %8109, %8111
  %8113 = fsub fast float %8096, %8112
  %8114 = fsub fast float %8090, %8109
  %8115 = select i1 %8105, float %8114, float 0.000000e+00
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.CBufRet.f32 %8116, 1
  %8119 = extractvalue %dx.types.CBufRet.f32 %8116, 2
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8127 = call float @dx.op.binary.f32(i32 36, float %8113, float %8126)  ; FMin(a,b)
  %8128 = fmul fast float %8124, %8115
  %8129 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8130 = fsub fast float %8121, %8117
  %8131 = fsub fast float %8122, %8118
  %8132 = fsub fast float %8123, %8119
  %8133 = fmul fast float %8129, %8130
  %8134 = fmul fast float %8129, %8131
  %8135 = fmul fast float %8129, %8132
  %8136 = fadd fast float %8133, %8117
  %8137 = fadd fast float %8134, %8118
  %8138 = fadd fast float %8135, %8119
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8142 = fadd fast float %8141, %8140
  %8143 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8145 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8146 = fadd fast float %8145, %8144
  %8147 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8148 = fmul fast float %8143, %8127
  %8149 = fmul fast float %8148, %8147
  br label %8391

; <label>:8150                                    ; preds = %8104
  br i1 %8105, label %8151, label %8172

; <label>:8151                                    ; preds = %8150
  %8152 = call float @dx.op.binary.f32(i32 36, float %8101, float %8091)  ; FMin(a,b)
  %8153 = fsub fast float %8101, %8152
  %8154 = fsub fast float %8153, %8090
  %8155 = call float @dx.op.unary.f32(i32 6, float %8154)  ; FAbs(value)
  %8156 = fadd fast float %8153, %8090
  %8157 = fmul fast float %8156, %8021
  %8158 = fadd fast float %8157, %8034
  %8159 = fmul fast float %8158, %8155
  %8160 = fsub fast float %8096, %8159
  br label %8172

; <label>:8161                                    ; preds = %8089
  br i1 %8103, label %8162, label %8172

; <label>:8162                                    ; preds = %8161
  %8163 = call float @dx.op.binary.f32(i32 35, float %8091, float %8101)  ; FMax(a,b)
  %8164 = icmp eq i32 %8040, 0
  %8165 = select i1 %8164, float %8101, float 0.000000e+00
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = call float @dx.op.unary.f32(i32 6, float %8166)  ; FAbs(value)
  %8168 = fmul fast float %8165, %8021
  %8169 = fadd fast float %8168, %8034
  %8170 = fmul fast float %8167, %8169
  %8171 = fsub fast float %8096, %8170
  br label %8172

; <label>:8172                                    ; preds = %8162, %8161, %8151, %8150
  %8173 = phi float [ %8091, %8150 ], [ %8091, %8151 ], [ %8163, %8162 ], [ %8091, %8161 ]
  %8174 = phi float [ 0.000000e+00, %8150 ], [ %8155, %8151 ], [ %8167, %8162 ], [ 0.000000e+00, %8161 ]
  %8175 = phi float [ %8096, %8150 ], [ %8160, %8151 ], [ %8171, %8162 ], [ %8096, %8161 ]
  %8176 = phi float [ %8101, %8150 ], [ %8101, %8151 ], [ %8090, %8162 ], [ %8090, %8161 ]
  %8177 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8177, align 4, !tbaa !125, !noalias !127
  %8178 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8178, align 4, !tbaa !125, !noalias !127
  %8179 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8179, align 4, !tbaa !125, !noalias !127
  %8180 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8180, align 4, !tbaa !125, !noalias !127
  %8181 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8181, align 4, !tbaa !125, !noalias !127
  %8182 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8182, align 4, !tbaa !125, !noalias !127
  %8183 = icmp sgt i32 %8042, 0
  br i1 %8183, label %8184, label %8245

; <label>:8184                                    ; preds = %8172
  br label %8185

; <label>:8185                                    ; preds = %8234, %8184
  %8186 = phi i32 [ %8235, %8234 ], [ 0, %8184 ]
  %8187 = phi i32 [ %8236, %8234 ], [ 0, %8184 ]
  %8188 = add nuw i32 %8187, 171
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8188)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 0
  %8194 = extractvalue %dx.types.CBufRet.f32 %8192, 1
  %8195 = fsub fast float %8190, %8193
  %8196 = fsub fast float %8191, %8194
  %8197 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8198 = fsub fast float -0.000000e+00, %8195
  %8199 = fsub fast float -0.000000e+00, %8196
  %8200 = call float @dx.op.dot2.f32(i32 54, float %8019, float %8020, float %8198, float %8199)  ; Dot2(ax,ay,bx,by)
  %8201 = fmul fast float %8200, 2.000000e+00
  %8202 = call float @dx.op.dot2.f32(i32 54, float %8198, float %8199, float %8198, float %8199)  ; Dot2(ax,ay,bx,by)
  %8203 = fmul fast float %8197, %8197
  %8204 = fsub fast float %8202, %8203
  %8205 = fmul fast float %8201, %8201
  %8206 = fmul fast float %8062, %8204
  %8207 = fsub fast float %8205, %8206
  %8208 = fcmp fast ogt float %8207, 0.000000e+00
  br i1 %8208, label %8209, label %8224

; <label>:8209                                    ; preds = %8185
  %8210 = fcmp fast ogt float %8201, 0.000000e+00
  %8211 = call float @dx.op.unary.f32(i32 24, float %8207)  ; Sqrt(value)
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = select i1 %8210, float %8211, float %8212
  %8214 = fadd fast float %8213, %8201
  %8215 = fmul float %8214, -5.000000e-01
  %8216 = fdiv fast float %8215, %8055
  %8217 = call float @dx.op.binary.f32(i32 35, float %8216, float 0.000000e+00)  ; FMax(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8090, float %8217)  ; FMin(a,b)
  %8219 = fdiv fast float %8204, %8215
  %8220 = call float @dx.op.binary.f32(i32 35, float %8219, float 0.000000e+00)  ; FMax(a,b)
  %8221 = call float @dx.op.binary.f32(i32 36, float %8090, float %8220)  ; FMin(a,b)
  %8222 = call float @dx.op.binary.f32(i32 36, float %8218, float %8221)  ; FMin(a,b)
  %8223 = call float @dx.op.binary.f32(i32 35, float %8218, float %8221)  ; FMax(a,b)
  br label %8224

; <label>:8224                                    ; preds = %8209, %8185
  %8225 = phi float [ %8223, %8209 ], [ -1.000000e+00, %8185 ]
  %8226 = phi float [ %8222, %8209 ], [ -1.000000e+00, %8185 ]
  %8227 = phi i1 [ true, %8209 ], [ false, %8185 ]
  br i1 %8227, label %8228, label %8234

; <label>:8228                                    ; preds = %8224
  %8229 = call float @dx.op.binary.f32(i32 35, float %8173, float %8226)  ; FMax(a,b)
  %8230 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8187
  store float %8229, float* %8230, align 4, !tbaa !125, !noalias !127
  %8231 = call float @dx.op.binary.f32(i32 35, float %8173, float %8225)  ; FMax(a,b)
  %8232 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8187
  store float %8231, float* %8232, align 4, !tbaa !125, !noalias !127
  %8233 = add nsw i32 %8186, 1
  br label %8234

; <label>:8234                                    ; preds = %8228, %8224
  %8235 = phi i32 [ %8233, %8228 ], [ %8186, %8224 ]
  %8236 = add nuw nsw i32 %8187, 1
  %8237 = icmp eq i32 %8236, %8042
  br i1 %8237, label %8238, label %8185

; <label>:8238                                    ; preds = %8234
  %8239 = load float, float* %8179, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8240 = load float, float* %8178, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %8241 = load float, float* %8177, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %8242 = load float, float* %8182, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8243 = load float, float* %8181, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %8244 = load float, float* %8180, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %8245

; <label>:8245                                    ; preds = %8238, %8172
  %8246 = phi float [ -1.000000e+00, %8172 ], [ %8244, %8238 ]
  %8247 = phi float [ -1.000000e+00, %8172 ], [ %8243, %8238 ]
  %8248 = phi float [ -1.000000e+00, %8172 ], [ %8242, %8238 ]
  %8249 = phi float [ -1.000000e+00, %8172 ], [ %8241, %8238 ]
  %8250 = phi float [ -1.000000e+00, %8172 ], [ %8240, %8238 ]
  %8251 = phi float [ -1.000000e+00, %8172 ], [ %8239, %8238 ]
  %8252 = phi i32 [ 0, %8172 ], [ %8235, %8238 ]
  %8253 = call float @dx.op.binary.f32(i32 36, float %8250, float %8251)  ; FMin(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8249, float %8253)  ; FMin(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float %8249, float %8250)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 36, float %8255, float %8251)  ; FMin(a,b)
  %8257 = call float @dx.op.binary.f32(i32 36, float %8249, float %8250)  ; FMin(a,b)
  %8258 = call float @dx.op.binary.f32(i32 35, float %8257, float %8256)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 35, float %8250, float %8251)  ; FMax(a,b)
  %8260 = call float @dx.op.binary.f32(i32 35, float %8249, float %8259)  ; FMax(a,b)
  store float %8254, float* %8177, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %8258, float* %8178, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %8260, float* %8179, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8261 = call float @dx.op.binary.f32(i32 36, float %8247, float %8248)  ; FMin(a,b)
  %8262 = call float @dx.op.binary.f32(i32 36, float %8246, float %8261)  ; FMin(a,b)
  %8263 = call float @dx.op.binary.f32(i32 35, float %8246, float %8247)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 36, float %8263, float %8248)  ; FMin(a,b)
  %8265 = call float @dx.op.binary.f32(i32 36, float %8246, float %8247)  ; FMin(a,b)
  %8266 = call float @dx.op.binary.f32(i32 35, float %8265, float %8264)  ; FMax(a,b)
  %8267 = call float @dx.op.binary.f32(i32 35, float %8247, float %8248)  ; FMax(a,b)
  %8268 = call float @dx.op.binary.f32(i32 35, float %8246, float %8267)  ; FMax(a,b)
  store float %8262, float* %8180, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %8266, float* %8181, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %8268, float* %8182, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8269 = sub nsw i32 3, %8252
  %8270 = icmp sgt i32 %8269, 2
  br i1 %8270, label %8271, label %8309

; <label>:8271                                    ; preds = %8245
  %8272 = icmp eq i32 %8040, 0
  %8273 = fsub fast float %8090, %8174
  %8274 = select i1 %8272, float %8273, float %8174
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = extractvalue %dx.types.CBufRet.f32 %8279, 3
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 3
  %8286 = call float @dx.op.binary.f32(i32 36, float %8175, float %8285)  ; FMin(a,b)
  %8287 = fmul fast float %8283, %8274
  %8288 = call float @dx.op.unary.f32(i32 7, float %8287)  ; Saturate(value)
  %8289 = fsub fast float %8280, %8276
  %8290 = fsub fast float %8281, %8277
  %8291 = fsub fast float %8282, %8278
  %8292 = fmul fast float %8288, %8289
  %8293 = fmul fast float %8288, %8290
  %8294 = fmul fast float %8288, %8291
  %8295 = fadd fast float %8292, %8276
  %8296 = fadd fast float %8293, %8277
  %8297 = fadd fast float %8294, %8278
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 0
  %8300 = extractvalue %dx.types.CBufRet.f32 %8298, 1
  %8301 = fadd fast float %8300, %8299
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8298, 2
  %8304 = extractvalue %dx.types.CBufRet.f32 %8298, 3
  %8305 = fadd fast float %8304, %8303
  %8306 = call float @dx.op.unary.f32(i32 7, float %8305)  ; Saturate(value)
  %8307 = fmul fast float %8302, %8286
  %8308 = fmul fast float %8307, %8306
  br label %8391

; <label>:8309                                    ; preds = %8245
  %8310 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8269
  %8311 = load float, float* %8310, align 4, !tbaa !125, !noalias !127
  %8312 = fcmp fast olt float %8311, %8176
  %8313 = icmp sgt i32 %8252, 0
  %8314 = and i1 %8313, %8312
  br i1 %8314, label %8315, label %8352

; <label>:8315                                    ; preds = %8309
  br label %8316

; <label>:8316                                    ; preds = %8345, %8315
  %8317 = phi float [ %8346, %8345 ], [ %8174, %8315 ]
  %8318 = phi float [ %8347, %8345 ], [ %8175, %8315 ]
  %8319 = phi float [ %8327, %8345 ], [ %8311, %8315 ]
  %8320 = phi i32 [ %8324, %8345 ], [ %8269, %8315 ]
  %8321 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8320
  %8322 = load float, float* %8321, align 4, !tbaa !125, !noalias !127
  %8323 = icmp slt i32 %8320, 2
  %8324 = add nsw i32 %8320, 1
  %8325 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8324
  %8326 = load float, float* %8325, align 4, !tbaa !125, !noalias !127
  %8327 = select i1 %8323, float %8326, float %8090
  %8328 = call float @dx.op.binary.f32(i32 36, float %8327, float %8322)  ; FMin(a,b)
  %8329 = call float @dx.op.binary.f32(i32 36, float %8176, float %8328)  ; FMin(a,b)
  %8330 = icmp eq i32 %8040, 0
  %8331 = fadd fast float %8329, %8319
  %8332 = fmul fast float %8331, %8021
  %8333 = fadd fast float %8332, %8034
  br i1 %8330, label %8339, label %8334

; <label>:8334                                    ; preds = %8316
  %8335 = fsub fast float %8329, %8319
  %8336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8335)  ; FMax(a,b)
  %8337 = fmul fast float %8336, %8333
  %8338 = fadd fast float %8337, %8318
  br label %8345

; <label>:8339                                    ; preds = %8316
  %8340 = fsub fast float %8319, %8329
  %8341 = call float @dx.op.unary.f32(i32 6, float %8340)  ; FAbs(value)
  %8342 = fadd fast float %8341, %8317
  %8343 = fmul fast float %8341, %8333
  %8344 = fsub fast float %8318, %8343
  br label %8345

; <label>:8345                                    ; preds = %8339, %8334
  %8346 = phi float [ %8336, %8334 ], [ %8342, %8339 ]
  %8347 = phi float [ %8338, %8334 ], [ %8344, %8339 ]
  %8348 = fcmp fast olt float %8327, %8176
  %8349 = icmp slt i32 %8324, 3
  %8350 = and i1 %8349, %8348
  br i1 %8350, label %8316, label %8351

; <label>:8351                                    ; preds = %8345
  br label %8352

; <label>:8352                                    ; preds = %8351, %8309
  %8353 = phi float [ %8174, %8309 ], [ %8346, %8351 ]
  %8354 = phi float [ %8175, %8309 ], [ %8347, %8351 ]
  %8355 = fsub fast float %8090, %8353
  %8356 = select i1 %8092, float %8353, float %8355
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8368 = call float @dx.op.binary.f32(i32 36, float %8354, float %8367)  ; FMin(a,b)
  %8369 = fmul fast float %8365, %8356
  %8370 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8371 = fsub fast float %8362, %8358
  %8372 = fsub fast float %8363, %8359
  %8373 = fsub fast float %8364, %8360
  %8374 = fmul fast float %8370, %8371
  %8375 = fmul fast float %8370, %8372
  %8376 = fmul fast float %8370, %8373
  %8377 = fadd fast float %8374, %8358
  %8378 = fadd fast float %8375, %8359
  %8379 = fadd fast float %8376, %8360
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8383 = fadd fast float %8382, %8381
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8386 = extractvalue %dx.types.CBufRet.f32 %8380, 3
  %8387 = fadd fast float %8386, %8385
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = fmul fast float %8384, %8368
  %8390 = fmul fast float %8389, %8388
  br label %8391

; <label>:8391                                    ; preds = %8352, %8271, %8106, %8088, %8086
  %8392 = phi float [ %8115, %8106 ], [ %8274, %8271 ], [ %8356, %8352 ], [ 0.000000e+00, %8086 ], [ 0.000000e+00, %8088 ]
  %8393 = phi float [ %8149, %8106 ], [ %8308, %8271 ], [ %8390, %8352 ], [ 0.000000e+00, %8086 ], [ 0.000000e+00, %8088 ]
  %8394 = phi float [ %8136, %8106 ], [ %8295, %8271 ], [ %8377, %8352 ], [ 0.000000e+00, %8086 ], [ 0.000000e+00, %8088 ]
  %8395 = phi float [ %8137, %8106 ], [ %8296, %8271 ], [ %8378, %8352 ], [ 0.000000e+00, %8086 ], [ 0.000000e+00, %8088 ]
  %8396 = phi float [ %8138, %8106 ], [ %8297, %8271 ], [ %8379, %8352 ], [ 0.000000e+00, %8086 ], [ 0.000000e+00, %8088 ]
  %8397 = fmul fast float %8029, %8393
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 2
  %8400 = fsub fast float %8036, %8399
  %8401 = fcmp fast olt float %8397, -2.000000e+01
  %8402 = call float @dx.op.unary.f32(i32 21, float %8397)  ; Exp(value)
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 3
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8408 = fmul fast float %8405, %8400
  %8409 = call float @dx.op.unary.f32(i32 7, float %8408)  ; Saturate(value)
  %8410 = fsub fast float 1.000000e+00, %8409
  %8411 = fmul fast float %8021, 5.000000e-01
  %8412 = fadd fast float %8411, 5.000000e-01
  %8413 = call float @dx.op.unary.f32(i32 7, float %8412)  ; Saturate(value)
  %8414 = fsub fast float 1.000000e+00, %8413
  %8415 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8410)  ; FMax(a,b)
  %8416 = fdiv fast float %8414, %8415
  %8417 = fsub fast float %8400, %7978
  %8418 = call float @dx.op.unary.f32(i32 6, float %8417)  ; FAbs(value)
  %8419 = fmul fast float %8418, %8404
  %8420 = call float @dx.op.unary.f32(i32 7, float %8416)  ; Saturate(value)
  %8421 = fsub fast float 1.000000e+00, %8419
  %8422 = fmul fast float %8421, %8420
  %8423 = fadd fast float %8422, %8419
  %8424 = fmul fast float %8407, %8400
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = fsub fast float 1.000000e+00, %8423
  %8427 = fmul fast float %8426, %8425
  %8428 = fadd fast float %8427, %8423
  %8429 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8430 = fadd fast float %8402, -1.000000e+00
  %8431 = select i1 %8401, float -1.000000e+00, float %8430
  %8432 = fmul fast float %8429, %8431
  %8433 = fadd fast float %8432, 1.000000e+00
  %8434 = fsub fast float -0.000000e+00, %8432
  %8435 = fmul fast float %8394, %8434
  %8436 = fmul fast float %8395, %8434
  %8437 = fmul fast float %8396, %8434
  br label %8438

; <label>:8438                                    ; preds = %8391, %7987
  %8439 = phi float [ %8392, %8391 ], [ 0.000000e+00, %7987 ]
  %8440 = phi float [ %8433, %8391 ], [ 1.000000e+00, %7987 ]
  %8441 = phi float [ %8435, %8391 ], [ 0.000000e+00, %7987 ]
  %8442 = phi float [ %8436, %8391 ], [ 0.000000e+00, %7987 ]
  %8443 = phi float [ %8437, %8391 ], [ 0.000000e+00, %7987 ]
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8446 = fsub fast float 1.000000e+00, %8440
  %8447 = fmul fast float %8446, %8022
  %8448 = fmul fast float %8447, %8445
  %8449 = fsub fast float %8022, %8448
  br i1 %8015, label %8450, label %8479, !dx.controlflow.hints !163

; <label>:8450                                    ; preds = %8438
  %8451 = fmul fast float %8023, %8012
  %8452 = fadd fast float %8451, %8013
  %8453 = call float @dx.op.unary.f32(i32 7, float %8452)  ; Saturate(value)
  %8454 = fmul fast float %7994, %8449
  %8455 = fsub fast float -0.000000e+00, %8454
  %8456 = fmul fast float %7995, %8449
  %8457 = fsub fast float -0.000000e+00, %8456
  %8458 = call float @dx.op.unary.f32(i32 21, float %8455)  ; Exp(value)
  %8459 = call float @dx.op.unary.f32(i32 21, float %8457)  ; Exp(value)
  %8460 = call float @dx.op.binary.f32(i32 35, float %8002, float %8458)  ; FMax(a,b)
  %8461 = call float @dx.op.binary.f32(i32 35, float %8002, float %8459)  ; FMax(a,b)
  %8462 = fsub fast float %8461, %8460
  %8463 = fmul fast float %8462, %8453
  %8464 = fadd fast float %8463, %8460
  %8465 = call float @dx.op.unary.f32(i32 7, float %8464)  ; Saturate(value)
  %8466 = fsub fast float %7999, %8004
  %8467 = fsub fast float %8000, %8005
  %8468 = fsub fast float %8001, %8006
  %8469 = fmul fast float %8453, %8466
  %8470 = fmul fast float %8453, %8467
  %8471 = fmul fast float %8453, %8468
  %8472 = fadd fast float %8469, %8004
  %8473 = fadd fast float %8470, %8005
  %8474 = fadd fast float %8471, %8006
  %8475 = fsub fast float 1.000000e+00, %8465
  %8476 = fmul fast float %8475, %8472
  %8477 = fmul fast float %8475, %8473
  %8478 = fmul fast float %8475, %8474
  br label %8538

; <label>:8479                                    ; preds = %8438
  %8480 = fmul fast float %8449, %8011
  %8481 = call float @dx.op.unary.f32(i32 7, float %8480)  ; Saturate(value)
  %8482 = fsub fast float 2.000000e+00, %8481
  %8483 = fmul fast float %8481, 9.921875e-01
  %8484 = fmul fast float %8483, %8482
  %8485 = fadd fast float %8484, 3.906250e-03
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8485, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = fsub fast float %8481, %8487
  %8489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8488)  ; FMax(a,b)
  %8490 = fmul fast float %7997, %7978
  %8491 = call float @dx.op.unary.f32(i32 6, float %8490)  ; FAbs(value)
  %8492 = fcmp fast ogt float %8491, 0x3EB0C6F7A0000000
  br i1 %8492, label %8493, label %8499, !dx.controlflow.hints !164

; <label>:8493                                    ; preds = %8479
  %8494 = fmul fast float %8490, 0xBFF7154760000000
  %8495 = call float @dx.op.unary.f32(i32 21, float %8494)  ; Exp(value)
  %8496 = fsub fast float 1.000000e+00, %8495
  %8497 = fdiv fast float %8496, %8490
  %8498 = fmul fast float %8497, %8007
  br label %8499

; <label>:8499                                    ; preds = %8493, %8479
  %8500 = phi float [ %8498, %8493 ], [ %8007, %8479 ]
  %8501 = fadd fast float %8500, %8009
  %8502 = fmul fast float %8501, %8489
  %8503 = fmul fast float %7994, %8502
  %8504 = fsub fast float -0.000000e+00, %8503
  %8505 = fmul fast float %7995, %8502
  %8506 = fsub fast float -0.000000e+00, %8505
  %8507 = fmul fast float %7996, %8502
  %8508 = fsub fast float -0.000000e+00, %8507
  %8509 = call float @dx.op.unary.f32(i32 21, float %8504)  ; Exp(value)
  %8510 = call float @dx.op.unary.f32(i32 21, float %8506)  ; Exp(value)
  %8511 = call float @dx.op.unary.f32(i32 21, float %8508)  ; Exp(value)
  %8512 = fmul fast float %8023, %8023
  %8513 = fadd fast float %8512, 1.000000e+00
  %8514 = fmul fast float %8513, 0x3FAE8EC8A0000000
  %8515 = fmul fast float %8514, %8004
  %8516 = fmul fast float %8514, %8005
  %8517 = fmul fast float %8514, %8006
  %8518 = fmul fast float %8023, %8002
  %8519 = fsub fast float 1.000000e+00, %8518
  %8520 = fmul fast float %8002, %8002
  %8521 = fsub fast float 1.000000e+00, %8520
  %8522 = fmul fast float %8521, 0x3FB45F3060000000
  %8523 = fmul fast float %8519, %8519
  %8524 = fdiv fast float 1.000000e+00, %8523
  %8525 = fmul fast float %8522, %8524
  %8526 = fmul fast float %8525, %7999
  %8527 = fmul fast float %8525, %8000
  %8528 = fmul fast float %8525, %8001
  %8529 = fadd fast float %8526, %8515
  %8530 = fadd fast float %8527, %8516
  %8531 = fadd fast float %8528, %8517
  %8532 = fsub fast float 1.000000e+00, %8509
  %8533 = fsub fast float 1.000000e+00, %8510
  %8534 = fsub fast float 1.000000e+00, %8511
  %8535 = fmul fast float %8529, %8532
  %8536 = fmul fast float %8530, %8533
  %8537 = fmul fast float %8531, %8534
  br label %8538

; <label>:8538                                    ; preds = %8499, %8450
  %8539 = phi float [ %8476, %8450 ], [ %8535, %8499 ]
  %8540 = phi float [ %8477, %8450 ], [ %8536, %8499 ]
  %8541 = phi float [ %8478, %8450 ], [ %8537, %8499 ]
  %8542 = phi float [ %8465, %8450 ], [ %8509, %8499 ]
  %8543 = phi float [ %8465, %8450 ], [ %8510, %8499 ]
  %8544 = phi float [ %8465, %8450 ], [ %8511, %8499 ]
  br i1 %8031, label %8545, label %8743, !dx.controlflow.hints !165

; <label>:8545                                    ; preds = %8538
  %8546 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8547 = fmul fast float %8546, %8446
  %8548 = fsub fast float %8441, %8539
  %8549 = fsub fast float %8442, %8540
  %8550 = fsub fast float %8443, %8541
  %8551 = fmul fast float %8547, %8548
  %8552 = fmul fast float %8547, %8549
  %8553 = fmul fast float %8547, %8550
  %8554 = fadd fast float %8551, %8539
  %8555 = fadd fast float %8552, %8540
  %8556 = fadd fast float %8553, %8541
  %8557 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8542)  ; FMax(a,b)
  %8558 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8543)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8544)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8440)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 35, float %8439, float %8449)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8561)  ; FMax(a,b)
  %8563 = fdiv fast float %8439, %8562
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = fdiv fast float %8449, %8562
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fcmp fast une float %8560, 1.000000e+00
  br i1 %8567, label %8568, label %8581, !dx.controlflow.hints !166

; <label>:8568                                    ; preds = %8545
  %8569 = call float @dx.op.unary.f32(i32 23, float %8560)  ; Log(value)
  %8570 = fmul fast float %8569, 0x3FE62E4300000000
  %8571 = fmul fast float %8441, %8570
  %8572 = fsub fast float -0.000000e+00, %8571
  %8573 = fmul fast float %8442, %8570
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = fmul fast float %8443, %8570
  %8576 = fsub fast float -0.000000e+00, %8575
  %8577 = fsub fast float 1.000000e+00, %8560
  %8578 = fdiv fast float %8572, %8577
  %8579 = fdiv fast float %8574, %8577
  %8580 = fdiv fast float %8576, %8577
  br label %8581

; <label>:8581                                    ; preds = %8568, %8545
  %8582 = phi float [ %8578, %8568 ], [ %8441, %8545 ]
  %8583 = phi float [ %8579, %8568 ], [ %8442, %8545 ]
  %8584 = phi float [ %8580, %8568 ], [ %8443, %8545 ]
  %8585 = phi float [ %8570, %8568 ], [ 0.000000e+00, %8545 ]
  %8586 = fcmp fast une float %8557, 1.000000e+00
  br i1 %8586, label %8587, label %8594, !dx.controlflow.hints !167

; <label>:8587                                    ; preds = %8581
  %8588 = call float @dx.op.unary.f32(i32 23, float %8557)  ; Log(value)
  %8589 = fmul fast float %8588, 0x3FE62E4300000000
  %8590 = fmul fast float %8554, %8589
  %8591 = fsub fast float -0.000000e+00, %8590
  %8592 = fsub fast float 1.000000e+00, %8557
  %8593 = fdiv fast float %8591, %8592
  br label %8594

; <label>:8594                                    ; preds = %8587, %8581
  %8595 = phi float [ %8593, %8587 ], [ %8554, %8581 ]
  %8596 = phi float [ %8589, %8587 ], [ 0.000000e+00, %8581 ]
  %8597 = fcmp fast une float %8558, 1.000000e+00
  br i1 %8597, label %8598, label %8605, !dx.controlflow.hints !167

; <label>:8598                                    ; preds = %8594
  %8599 = call float @dx.op.unary.f32(i32 23, float %8558)  ; Log(value)
  %8600 = fmul fast float %8599, 0x3FE62E4300000000
  %8601 = fmul fast float %8555, %8600
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fsub fast float 1.000000e+00, %8558
  %8604 = fdiv fast float %8602, %8603
  br label %8605

; <label>:8605                                    ; preds = %8598, %8594
  %8606 = phi float [ %8604, %8598 ], [ %8555, %8594 ]
  %8607 = phi float [ %8600, %8598 ], [ 0.000000e+00, %8594 ]
  %8608 = fcmp fast une float %8559, 1.000000e+00
  br i1 %8608, label %8609, label %8616, !dx.controlflow.hints !167

; <label>:8609                                    ; preds = %8605
  %8610 = call float @dx.op.unary.f32(i32 23, float %8559)  ; Log(value)
  %8611 = fmul fast float %8610, 0x3FE62E4300000000
  %8612 = fmul fast float %8556, %8611
  %8613 = fsub fast float -0.000000e+00, %8612
  %8614 = fsub fast float 1.000000e+00, %8559
  %8615 = fdiv fast float %8613, %8614
  br label %8616

; <label>:8616                                    ; preds = %8609, %8605
  %8617 = phi float [ %8615, %8609 ], [ %8556, %8605 ]
  %8618 = phi float [ %8611, %8609 ], [ 0.000000e+00, %8605 ]
  %8619 = fmul fast float %8582, %8566
  %8620 = fmul fast float %8583, %8566
  %8621 = fmul fast float %8584, %8566
  %8622 = fmul fast float %8585, %8566
  %8623 = fmul fast float %8595, %8564
  %8624 = fmul fast float %8606, %8564
  %8625 = fmul fast float %8617, %8564
  %8626 = fmul fast float %8596, %8564
  %8627 = fmul fast float %8607, %8564
  %8628 = fmul fast float %8618, %8564
  %8629 = fadd fast float %8623, %8619
  %8630 = fadd fast float %8624, %8620
  %8631 = fadd fast float %8625, %8621
  %8632 = fadd fast float %8626, %8622
  %8633 = fadd fast float %8627, %8622
  %8634 = fadd fast float %8628, %8622
  %8635 = fcmp fast une float %8632, 0.000000e+00
  br i1 %8635, label %8636, label %8643, !dx.controlflow.hints !168

; <label>:8636                                    ; preds = %8616
  %8637 = fmul fast float %8632, 0x3FF7154760000000
  %8638 = call float @dx.op.unary.f32(i32 21, float %8637)  ; Exp(value)
  %8639 = fsub fast float 1.000000e+00, %8638
  %8640 = fmul fast float %8629, %8639
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = fdiv fast float %8641, %8632
  br label %8643

; <label>:8643                                    ; preds = %8636, %8616
  %8644 = phi float [ %8638, %8636 ], [ 1.000000e+00, %8616 ]
  %8645 = phi float [ %8642, %8636 ], [ %8629, %8616 ]
  %8646 = fcmp fast une float %8633, 0.000000e+00
  br i1 %8646, label %8647, label %8654, !dx.controlflow.hints !168

; <label>:8647                                    ; preds = %8643
  %8648 = fmul fast float %8633, 0x3FF7154760000000
  %8649 = call float @dx.op.unary.f32(i32 21, float %8648)  ; Exp(value)
  %8650 = fsub fast float 1.000000e+00, %8649
  %8651 = fmul fast float %8630, %8650
  %8652 = fsub fast float -0.000000e+00, %8651
  %8653 = fdiv fast float %8652, %8633
  br label %8654

; <label>:8654                                    ; preds = %8647, %8643
  %8655 = phi float [ %8649, %8647 ], [ 1.000000e+00, %8643 ]
  %8656 = phi float [ %8653, %8647 ], [ %8630, %8643 ]
  %8657 = fcmp fast une float %8634, 0.000000e+00
  br i1 %8657, label %8658, label %8665, !dx.controlflow.hints !168

; <label>:8658                                    ; preds = %8654
  %8659 = fmul fast float %8634, 0x3FF7154760000000
  %8660 = call float @dx.op.unary.f32(i32 21, float %8659)  ; Exp(value)
  %8661 = fsub fast float 1.000000e+00, %8660
  %8662 = fmul fast float %8631, %8661
  %8663 = fsub fast float -0.000000e+00, %8662
  %8664 = fdiv fast float %8663, %8634
  br label %8665

; <label>:8665                                    ; preds = %8658, %8654
  %8666 = phi float [ %8660, %8658 ], [ 1.000000e+00, %8654 ]
  %8667 = phi float [ %8664, %8658 ], [ %8631, %8654 ]
  %8668 = fcmp fast ogt float %8564, %8566
  br i1 %8668, label %8669, label %8689

; <label>:8669                                    ; preds = %8665
  %8670 = fsub fast float 1.000000e+00, %8566
  %8671 = fmul fast float %8582, %8670
  %8672 = fmul fast float %8583, %8670
  %8673 = fmul fast float %8584, %8670
  %8674 = fmul fast float %8585, %8670
  %8675 = fcmp fast une float %8674, 0.000000e+00
  br i1 %8675, label %8676, label %8727, !dx.controlflow.hints !169

; <label>:8676                                    ; preds = %8669
  %8677 = fmul fast float %8674, 0x3FF7154760000000
  %8678 = call float @dx.op.unary.f32(i32 21, float %8677)  ; Exp(value)
  %8679 = fsub fast float 1.000000e+00, %8678
  %8680 = fmul fast float %8671, %8679
  %8681 = fsub fast float -0.000000e+00, %8680
  %8682 = fmul fast float %8672, %8679
  %8683 = fsub fast float -0.000000e+00, %8682
  %8684 = fmul fast float %8673, %8679
  %8685 = fsub fast float -0.000000e+00, %8684
  %8686 = fdiv fast float %8681, %8674
  %8687 = fdiv fast float %8683, %8674
  %8688 = fdiv fast float %8685, %8674
  br label %8727

; <label>:8689                                    ; preds = %8665
  %8690 = fsub fast float 1.000000e+00, %8564
  %8691 = fmul fast float %8595, %8690
  %8692 = fmul fast float %8606, %8690
  %8693 = fmul fast float %8617, %8690
  %8694 = fmul fast float %8596, %8690
  %8695 = fmul fast float %8607, %8690
  %8696 = fmul fast float %8618, %8690
  %8697 = fcmp fast une float %8694, 0.000000e+00
  br i1 %8697, label %8698, label %8705, !dx.controlflow.hints !168

; <label>:8698                                    ; preds = %8689
  %8699 = fmul fast float %8694, 0x3FF7154760000000
  %8700 = call float @dx.op.unary.f32(i32 21, float %8699)  ; Exp(value)
  %8701 = fsub fast float 1.000000e+00, %8700
  %8702 = fmul fast float %8691, %8701
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = fdiv fast float %8703, %8694
  br label %8705

; <label>:8705                                    ; preds = %8698, %8689
  %8706 = phi float [ %8704, %8698 ], [ %8691, %8689 ]
  %8707 = phi float [ %8700, %8698 ], [ 1.000000e+00, %8689 ]
  %8708 = fcmp fast une float %8695, 0.000000e+00
  br i1 %8708, label %8709, label %8716, !dx.controlflow.hints !168

; <label>:8709                                    ; preds = %8705
  %8710 = fmul fast float %8695, 0x3FF7154760000000
  %8711 = call float @dx.op.unary.f32(i32 21, float %8710)  ; Exp(value)
  %8712 = fsub fast float 1.000000e+00, %8711
  %8713 = fmul fast float %8692, %8712
  %8714 = fsub fast float -0.000000e+00, %8713
  %8715 = fdiv fast float %8714, %8695
  br label %8716

; <label>:8716                                    ; preds = %8709, %8705
  %8717 = phi float [ %8715, %8709 ], [ %8692, %8705 ]
  %8718 = phi float [ %8711, %8709 ], [ 1.000000e+00, %8705 ]
  %8719 = fcmp fast une float %8696, 0.000000e+00
  br i1 %8719, label %8720, label %8727, !dx.controlflow.hints !168

; <label>:8720                                    ; preds = %8716
  %8721 = fmul fast float %8696, 0x3FF7154760000000
  %8722 = call float @dx.op.unary.f32(i32 21, float %8721)  ; Exp(value)
  %8723 = fsub fast float 1.000000e+00, %8722
  %8724 = fmul fast float %8693, %8723
  %8725 = fsub fast float -0.000000e+00, %8724
  %8726 = fdiv fast float %8725, %8696
  br label %8727

; <label>:8727                                    ; preds = %8720, %8716, %8676, %8669
  %8728 = phi float [ %8726, %8720 ], [ %8688, %8676 ], [ %8673, %8669 ], [ %8693, %8716 ]
  %8729 = phi float [ %8717, %8720 ], [ %8687, %8676 ], [ %8672, %8669 ], [ %8717, %8716 ]
  %8730 = phi float [ %8706, %8720 ], [ %8686, %8676 ], [ %8671, %8669 ], [ %8706, %8716 ]
  %8731 = phi float [ %8722, %8720 ], [ %8678, %8676 ], [ 1.000000e+00, %8669 ], [ 1.000000e+00, %8716 ]
  %8732 = phi float [ %8718, %8720 ], [ %8678, %8676 ], [ 1.000000e+00, %8669 ], [ %8718, %8716 ]
  %8733 = phi float [ %8707, %8720 ], [ %8678, %8676 ], [ 1.000000e+00, %8669 ], [ %8707, %8716 ]
  %8734 = fmul fast float %8733, %8645
  %8735 = fmul fast float %8732, %8656
  %8736 = fmul fast float %8731, %8667
  %8737 = fadd fast float %8734, %8730
  %8738 = fadd fast float %8735, %8729
  %8739 = fadd fast float %8736, %8728
  %8740 = fmul fast float %8733, %8644
  %8741 = fmul fast float %8732, %8655
  %8742 = fmul fast float %8731, %8666
  br label %8743

; <label>:8743                                    ; preds = %8727, %8538
  %8744 = phi float [ %8742, %8727 ], [ %8544, %8538 ]
  %8745 = phi float [ %8741, %8727 ], [ %8543, %8538 ]
  %8746 = phi float [ %8740, %8727 ], [ %8542, %8538 ]
  %8747 = phi float [ %8739, %8727 ], [ %8541, %8538 ]
  %8748 = phi float [ %8738, %8727 ], [ %8540, %8538 ]
  %8749 = phi float [ %8737, %8727 ], [ %8539, %8538 ]
  %8750 = fmul fast float %8749, %7695
  %8751 = fmul fast float %8748, %7695
  %8752 = fmul fast float %8747, %7695
  %8753 = fmul fast float %8746, %7986
  %8754 = call float @dx.op.dot3.f32(i32 55, float %8746, float %8745, float %8744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8755 = call float @dx.op.dot3.f32(i32 55, float %8750, float %8751, float %8752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8756 = select i1 %247, float %8754, float %8746
  %8757 = select i1 %247, float %8754, float %8745
  %8758 = select i1 %247, float 1.000000e+00, float %8744
  %8759 = select i1 %247, float %8755, float %8750
  %8760 = select i1 %247, float 0.000000e+00, float %8751
  %8761 = select i1 %247, float 0.000000e+00, float %8752
  %8762 = fmul fast float %8756, %7980
  %8763 = fmul fast float %8757, %7981
  %8764 = fmul fast float %8758, %7982
  %8765 = fadd fast float %8762, %8759
  %8766 = fadd fast float %8763, %8760
  %8767 = fadd fast float %8761, %8764
  %8768 = fmul fast float %8756, %7983
  %8769 = fmul fast float %8757, %7984
  %8770 = fmul fast float %8758, %7985
  %8771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.i32 %8771, 0
  %8773 = icmp eq i32 %8772, 0
  br i1 %8773, label %9141, label %8774, !dx.controlflow.hints !170

; <label>:8774                                    ; preds = %8743
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 2
  %8777 = extractvalue %dx.types.CBufRet.f32 %8775, 3
  %8778 = fmul fast float %8776, %109
  %8779 = fmul fast float %8777, %110
  %8780 = fmul fast float %8778, 2.000000e+00
  %8781 = fmul fast float %8779, 2.000000e+00
  %8782 = fsub fast float 1.000000e+00, %8780
  %8783 = fsub fast float 1.000000e+00, %8781
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  %8786 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8787 = extractvalue %dx.types.CBufRet.f32 %8784, 2
  %8788 = fmul fast float %8782, %8785
  %8789 = fmul fast float %8782, %8786
  %8790 = fmul fast float %8782, %8787
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 0
  %8793 = extractvalue %dx.types.CBufRet.f32 %8791, 1
  %8794 = extractvalue %dx.types.CBufRet.f32 %8791, 2
  %8795 = fmul fast float %8783, %8792
  %8796 = fmul fast float %8783, %8793
  %8797 = fmul fast float %8783, %8794
  %8798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8798, 0
  %8800 = extractvalue %dx.types.CBufRet.f32 %8798, 1
  %8801 = extractvalue %dx.types.CBufRet.f32 %8798, 2
  %8802 = fadd fast float %8795, %8799
  %8803 = fadd fast float %8802, %8788
  %8804 = fadd fast float %8796, %8800
  %8805 = fadd fast float %8804, %8789
  %8806 = fadd fast float %8797, %8801
  %8807 = fadd fast float %8806, %8790
  %8808 = fmul fast float %8803, %7979
  %8809 = fmul fast float %8805, %7979
  %8810 = fmul fast float %8807, %7979
  %8811 = fmul fast float %8808, %8808
  %8812 = fmul fast float %8809, %8809
  %8813 = fadd fast float %8811, %8812
  %8814 = fmul fast float %8810, %8810
  %8815 = fadd fast float %8813, %8814
  %8816 = call float @dx.op.unary.f32(i32 24, float %8815)  ; Sqrt(value)
  %8817 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %8818 = fsub fast float %8816, %8817
  %8819 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %8820 = fmul fast float %8818, %8819
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fadd fast float %8821, -5.000000e-01
  %8823 = fmul fast float %8822, 2.000000e+00
  %8824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8824, 2
  %8826 = call float @dx.op.binary.f32(i32 36, float %8825, float %8823)  ; FMin(a,b)
  %8827 = fsub fast float -0.000000e+00, %8825
  %8828 = fcmp fast ogt float %8826, %8827
  br i1 %8828, label %8829, label %9141, !dx.controlflow.hints !171

; <label>:8829                                    ; preds = %8774
  %8830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8830, 3
  %8832 = fcmp fast ogt float %8831, 0.000000e+00
  br i1 %8832, label %8833, label %8908, !dx.controlflow.hints !172

; <label>:8833                                    ; preds = %8829
  %8834 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8835 = extractvalue %dx.types.Dimensions %8834, 0
  %8836 = sitofp i32 %8835 to float
  %8837 = extractvalue %dx.types.Dimensions %8834, 1
  %8838 = sitofp i32 %8837 to float
  %8839 = fmul fast float %8778, %8836
  %8840 = fmul fast float %8779, %8838
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 1
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fptoui float %8843 to i32
  %8845 = fptoui float %8839 to i32
  %8846 = fptoui float %8840 to i32
  %8847 = and i32 %8844, 31
  %8848 = lshr i32 %8845, %8847
  %8849 = lshr i32 %8846, %8847
  %8850 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8844, i32 %8848, i32 %8849, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8851 = extractvalue %dx.types.ResRet.f32 %8850, 0
  %8852 = fcmp fast olt float %8851, -1.000000e+00
  %8853 = fcmp fast ogt float %8851, -1.000000e+00
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8856 = select i1 %8853, float %8855, float 1.000000e+00
  %8857 = fadd fast float %8851, 1.000000e+00
  %8858 = fmul fast float %8856, %8857
  %8859 = call float @dx.op.unary.f32(i32 6, float %8858)  ; FAbs(value)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8861 = fcmp fast oge float %8859, %8860
  %8862 = select i1 %8861, float 0x4197782600000000, float %8859
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8867 = select i1 %8852, float %8864, float %8785
  %8868 = select i1 %8852, float %8865, float %8786
  %8869 = select i1 %8852, float %8866, float %8787
  %8870 = fmul fast float %8867, %8782
  %8871 = fmul fast float %8868, %8782
  %8872 = fmul fast float %8869, %8782
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 0
  %8875 = extractvalue %dx.types.CBufRet.f32 %8873, 1
  %8876 = extractvalue %dx.types.CBufRet.f32 %8873, 2
  %8877 = select i1 %8852, float %8874, float %8792
  %8878 = select i1 %8852, float %8875, float %8793
  %8879 = select i1 %8852, float %8876, float %8794
  %8880 = fmul fast float %8877, %8783
  %8881 = fmul fast float %8878, %8783
  %8882 = fmul fast float %8879, %8783
  %8883 = fadd fast float %8880, %8870
  %8884 = fadd fast float %8881, %8871
  %8885 = fadd fast float %8882, %8872
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8890 = select i1 %8852, float %8887, float %8799
  %8891 = select i1 %8852, float %8888, float %8800
  %8892 = select i1 %8852, float %8889, float %8801
  %8893 = fadd fast float %8883, %8890
  %8894 = fadd fast float %8884, %8891
  %8895 = fadd fast float %8885, %8892
  %8896 = fmul fast float %8893, %8862
  %8897 = fmul fast float %8894, %8862
  %8898 = fmul fast float %8895, %8862
  %8899 = fmul fast float %8896, %8896
  %8900 = fmul fast float %8897, %8897
  %8901 = fadd fast float %8899, %8900
  %8902 = fmul fast float %8898, %8898
  %8903 = fadd fast float %8901, %8902
  %8904 = call float @dx.op.unary.f32(i32 24, float %8903)  ; Sqrt(value)
  %8905 = fsub fast float %8904, %8817
  %8906 = fmul fast float %8905, %8819
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  br label %8908

; <label>:8908                                    ; preds = %8833, %8829
  %8909 = phi float [ %8907, %8833 ], [ 1.000000e+00, %8829 ]
  %8910 = fmul fast float %8826, 5.000000e-01
  %8911 = fadd fast float %8910, 5.000000e-01
  %8912 = call float @dx.op.unary.f32(i32 22, float %8911)  ; Frc(value)
  %8913 = call float @dx.op.unary.f32(i32 27, float %8912)  ; Round_ni(value)
  %8914 = call float @dx.op.unary.f32(i32 22, float %8912)  ; Frc(value)
  %8915 = fmul fast float %8914, 2.000000e+00
  %8916 = fadd fast float %8915, -1.000000e+00
  %8917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8778, float %8779, float %8913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8918 = extractvalue %dx.types.ResRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.ResRet.f32 %8917, 1
  %8920 = extractvalue %dx.types.ResRet.f32 %8917, 2
  %8921 = extractvalue %dx.types.ResRet.f32 %8917, 3
  %8922 = fadd fast float %8918, -5.000000e-01
  %8923 = fadd fast float %8920, -5.000000e-01
  %8924 = fmul fast float %8922, 0xBFD5555560000000
  %8925 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8923, float %8924)  ; FMad(a,b,c)
  %8926 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8919, float 0.000000e+00)  ; FMad(a,b,c)
  %8927 = fadd fast float %8926, %8921
  %8928 = fmul fast float %8922, -7.500000e-01
  %8929 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8923, float %8928)  ; FMad(a,b,c)
  %8930 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8919, float 0.000000e+00)  ; FMad(a,b,c)
  %8931 = fadd fast float %8930, %8921
  %8932 = call float @dx.op.binary.f32(i32 35, float %8925, float -1.000000e+00)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 35, float %8927, float -1.000000e+00)  ; FMax(a,b)
  %8934 = call float @dx.op.binary.f32(i32 35, float %8929, float -1.000000e+00)  ; FMax(a,b)
  %8935 = call float @dx.op.binary.f32(i32 35, float %8931, float -1.000000e+00)  ; FMax(a,b)
  %8936 = call float @dx.op.binary.f32(i32 36, float %8932, float 1.000000e+00)  ; FMin(a,b)
  %8937 = call float @dx.op.binary.f32(i32 36, float %8933, float 1.000000e+00)  ; FMin(a,b)
  %8938 = call float @dx.op.binary.f32(i32 36, float %8934, float 1.000000e+00)  ; FMin(a,b)
  %8939 = call float @dx.op.binary.f32(i32 36, float %8935, float 1.000000e+00)  ; FMin(a,b)
  %8940 = fcmp fast olt float %8936, 0x3FEFFF8020000000
  br i1 %8940, label %8941, label %9056, !dx.controlflow.hints !173

; <label>:8941                                    ; preds = %8908
  %8942 = extractvalue %dx.types.CBufRet.f32 %8824, 3
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8946 = extractvalue %dx.types.CBufRet.f32 %8943, 2
  %8947 = extractvalue %dx.types.CBufRet.f32 %8943, 3
  %8948 = fsub fast float %8944, %8936
  %8949 = fsub fast float %8945, %8937
  %8950 = fsub fast float %8946, %8938
  %8951 = fsub fast float %8947, %8939
  %8952 = fmul fast float %8948, %8942
  %8953 = fmul fast float %8949, %8942
  %8954 = fmul fast float %8950, %8942
  %8955 = fmul fast float %8951, %8942
  %8956 = fadd fast float %8952, %8936
  %8957 = fadd fast float %8953, %8937
  %8958 = fsub fast float -0.000000e+00, %8957
  %8959 = fadd fast float %8954, %8938
  %8960 = fadd fast float %8955, %8939
  %8961 = fmul fast float %8956, %8956
  %8962 = fsub fast float %8957, %8961
  %8963 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8962)  ; FMax(a,b)
  %8964 = fdiv fast float 1.000000e+00, %8963
  %8965 = fmul fast float %8957, %8956
  %8966 = fsub fast float %8959, %8965
  %8967 = fsub fast float %8916, %8956
  %8968 = fmul fast float %8916, %8916
  %8969 = fsub fast float %8968, %8957
  %8970 = fmul fast float %8967, %8964
  %8971 = fmul fast float %8970, %8966
  %8972 = fsub fast float %8969, %8971
  %8973 = fmul fast float %8957, %8957
  %8974 = fsub fast float %8960, %8973
  %8975 = fmul fast float %8966, %8966
  %8976 = fmul fast float %8975, %8964
  %8977 = fsub fast float %8974, %8976
  %8978 = fdiv fast float %8972, %8977
  %8979 = fmul fast float %8966, %8978
  %8980 = fsub fast float %8967, %8979
  %8981 = fmul fast float %8980, %8964
  %8982 = fmul fast float %8981, %8956
  %8983 = fsub fast float 1.000000e+00, %8982
  %8984 = fmul fast float %8957, %8978
  %8985 = fsub fast float %8983, %8984
  %8986 = fmul fast float %8981, %8981
  %8987 = fmul fast float %8978, 4.000000e+00
  %8988 = fmul fast float %8987, %8985
  %8989 = fsub fast float %8986, %8988
  %8990 = call float @dx.op.unary.f32(i32 24, float %8989)  ; Sqrt(value)
  %8991 = fcmp fast oge float %8981, 0.000000e+00
  %8992 = fsub fast float -0.000000e+00, %8990
  %8993 = select i1 %8991, float %8992, float %8990
  %8994 = fsub fast float %8993, %8981
  %8995 = fdiv fast float %8994, %8978
  %8996 = fdiv fast float %8985, %8994
  %8997 = fmul fast float %8995, 5.000000e-01
  %8998 = fmul fast float %8996, 2.000000e+00
  %8999 = select i1 %8991, float %8997, float %8998
  %9000 = select i1 %8991, float %8998, float %8997
  %9001 = call float @dx.op.binary.f32(i32 35, float %8999, float %9000)  ; FMax(a,b)
  %9002 = call float @dx.op.binary.f32(i32 36, float %8999, float %9000)  ; FMin(a,b)
  %9003 = fcmp fast ogt float %8916, %9002
  br i1 %9003, label %9004, label %9014

; <label>:9004                                    ; preds = %8941
  %9005 = fsub fast float %8916, %9002
  %9006 = fsub fast float %9001, %9002
  %9007 = fmul fast float %9005, %9006
  %9008 = fmul fast float %9001, %8916
  %9009 = fadd fast float %9001, %8916
  %9010 = fmul fast float %9009, %8956
  %9011 = fadd fast float %9008, %8957
  %9012 = fsub fast float %9011, %9010
  %9013 = fdiv fast float %9012, %9007
  br label %9014

; <label>:9014                                    ; preds = %9004, %8941
  %9015 = phi float [ %9013, %9004 ], [ 0.000000e+00, %8941 ]
  %9016 = fcmp fast ogt float %8916, %9001
  %9017 = fsub fast float %8916, %9001
  br i1 %9016, label %9018, label %9028

; <label>:9018                                    ; preds = %9014
  %9019 = fsub fast float %9001, %9002
  %9020 = fmul fast float %9019, %9017
  %9021 = fmul fast float %9002, %8916
  %9022 = fadd fast float %9002, %8916
  %9023 = fmul fast float %9022, %8956
  %9024 = fsub fast float %8958, %9021
  %9025 = fadd fast float %9024, %9023
  %9026 = fdiv fast float %9025, %9020
  %9027 = fadd fast float %9026, %9015
  br label %9028

; <label>:9028                                    ; preds = %9018, %9014
  %9029 = phi float [ %9027, %9018 ], [ %9015, %9014 ]
  %9030 = fsub fast float %8916, %9002
  %9031 = fmul fast float %9030, %9017
  %9032 = fmul fast float %9002, %9001
  %9033 = fadd fast float %9002, %9001
  %9034 = fmul fast float %9033, %8956
  %9035 = fadd fast float %9032, %8957
  %9036 = fsub fast float %9035, %9034
  %9037 = fdiv fast float %9036, %9031
  %9038 = call float @dx.op.unary.f32(i32 7, float %9029)  ; Saturate(value)
  %9039 = fcmp fast oeq float %7707, 0.000000e+00
  %9040 = extractvalue %dx.types.CBufRet.f32 %8824, 0
  %9041 = fcmp fast oeq float %9040, 0.000000e+00
  %9042 = or i1 %9039, %9041
  %9043 = fmul fast float %9040, 2.000000e+00
  %9044 = fadd fast float %8825, %8826
  %9045 = fdiv fast float %9044, %9043
  %9046 = call float @dx.op.unary.f32(i32 7, float %9045)  ; Saturate(value)
  %9047 = fmul fast float %9046, 2.000000e+00
  %9048 = fsub fast float 3.000000e+00, %9047
  %9049 = fmul fast float %9046, %9046
  %9050 = fmul fast float %9049, %9048
  %9051 = select i1 %9042, float 1.000000e+00, float %9050
  %9052 = fmul fast float %9037, %7707
  %9053 = fadd fast float %9038, %9052
  %9054 = call float @dx.op.unary.f32(i32 7, float %9053)  ; Saturate(value)
  %9055 = fmul fast float %9051, %9054
  br label %9056

; <label>:9056                                    ; preds = %9028, %8908
  %9057 = phi float [ %9055, %9028 ], [ 0.000000e+00, %8908 ]
  %9058 = fsub fast float 1.000000e+00, %9057
  %9059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8778, float %8779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9060 = extractvalue %dx.types.ResRet.f32 %9059, 0
  %9061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.i32 %9061, 2
  %9063 = icmp eq i32 %9062, 0
  br i1 %9063, label %9069, label %9064

; <label>:9064                                    ; preds = %9056
  %9065 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9066 = fadd fast float %9060, -1.000000e+00
  %9067 = fmul fast float %9065, %9066
  %9068 = fadd fast float %9067, 1.000000e+00
  br label %9069

; <label>:9069                                    ; preds = %9064, %9056
  %9070 = phi float [ %9068, %9064 ], [ %9058, %9056 ]
  br i1 %8832, label %9071, label %9089

; <label>:9071                                    ; preds = %9069
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 1
  %9074 = fsub fast float %8909, %9073
  %9075 = call float @dx.op.unary.f32(i32 7, float %9074)  ; Saturate(value)
  %9076 = fsub fast float %8909, %8831
  %9077 = call float @dx.op.unary.f32(i32 7, float %9076)  ; Saturate(value)
  %9078 = fsub fast float %9075, %9077
  %9079 = fsub fast float %8911, %9077
  %9080 = fdiv fast float %9079, %9078
  %9081 = call float @dx.op.unary.f32(i32 7, float %9080)  ; Saturate(value)
  %9082 = fmul fast float %9081, 2.000000e+00
  %9083 = fsub fast float 3.000000e+00, %9082
  %9084 = fsub fast float %9060, %9070
  %9085 = fmul fast float %9081, %9081
  %9086 = fmul fast float %9085, %9084
  %9087 = fmul fast float %9086, %9083
  %9088 = fadd fast float %9087, %9070
  br label %9089

; <label>:9089                                    ; preds = %9071, %9069
  %9090 = phi float [ %9088, %9071 ], [ %9070, %9069 ]
  %9091 = call float @dx.op.binary.f32(i32 35, float %9060, float %9090)  ; FMax(a,b)
  %9092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.i32 %9092, 2
  %9094 = and i32 %9093, 1
  %9095 = icmp eq i32 %9094, 0
  %9096 = fcmp fast une float %9091, 1.000000e+00
  %9097 = and i1 %9096, %9095
  br i1 %9097, label %9098, label %9117

; <label>:9098                                    ; preds = %9089
  %9099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8778, float %8779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9100 = extractvalue %dx.types.ResRet.f32 %9099, 0
  %9101 = extractvalue %dx.types.ResRet.f32 %9099, 1
  %9102 = extractvalue %dx.types.ResRet.f32 %9099, 2
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9105 = fmul fast float %9104, %9100
  %9106 = fmul fast float %9104, %9101
  %9107 = fmul fast float %9104, %9102
  %9108 = fcmp fast ogt float %9060, 0x3FEFFF2E40000000
  %9109 = fsub fast float 1.000000e+00, %9091
  %9110 = fsub fast float 1.000000e+00, %9060
  %9111 = fdiv fast float %9109, %9110
  %9112 = call float @dx.op.unary.f32(i32 7, float %9111)  ; Saturate(value)
  %9113 = select i1 %9108, float 0.000000e+00, float %9112
  %9114 = fmul fast float %9105, %9113
  %9115 = fmul fast float %9106, %9113
  %9116 = fmul fast float %9107, %9113
  br label %9117

; <label>:9117                                    ; preds = %9098, %9089
  %9118 = phi float [ 0.000000e+00, %9089 ], [ %9114, %9098 ]
  %9119 = phi float [ 0.000000e+00, %9089 ], [ %9115, %9098 ]
  %9120 = phi float [ 0.000000e+00, %9089 ], [ %9116, %9098 ]
  %9121 = fmul fast float %9118, %7695
  %9122 = fmul fast float %9119, %7695
  %9123 = fmul fast float %9120, %7695
  %9124 = fmul fast float %9091, %8753
  %9125 = call float @dx.op.dot3.f32(i32 55, float %9091, float %9091, float %9091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9126 = call float @dx.op.dot3.f32(i32 55, float %9121, float %9122, float %9123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9127 = select i1 %247, float %9125, float %9091
  %9128 = select i1 %247, float 1.000000e+00, float %9091
  %9129 = select i1 %247, float %9126, float %9121
  %9130 = select i1 %247, float 0.000000e+00, float %9122
  %9131 = select i1 %247, float 0.000000e+00, float %9123
  %9132 = fmul fast float %9127, %8765
  %9133 = fmul fast float %9127, %8766
  %9134 = fmul fast float %9128, %8767
  %9135 = fadd fast float %9132, %9129
  %9136 = fadd fast float %9133, %9130
  %9137 = fadd fast float %9131, %9134
  %9138 = fmul fast float %9127, %8768
  %9139 = fmul fast float %9127, %8769
  %9140 = fmul fast float %9128, %8770
  br label %9141

; <label>:9141                                    ; preds = %9117, %8774, %8743, %7975
  %9142 = phi float [ %7980, %7975 ], [ %8765, %8743 ], [ %9135, %9117 ], [ %8765, %8774 ]
  %9143 = phi float [ %7981, %7975 ], [ %8766, %8743 ], [ %9136, %9117 ], [ %8766, %8774 ]
  %9144 = phi float [ %7982, %7975 ], [ %8767, %8743 ], [ %9137, %9117 ], [ %8767, %8774 ]
  %9145 = phi float [ %7983, %7975 ], [ %8768, %8743 ], [ %9138, %9117 ], [ %8768, %8774 ]
  %9146 = phi float [ %7984, %7975 ], [ %8769, %8743 ], [ %9139, %9117 ], [ %8769, %8774 ]
  %9147 = phi float [ %7985, %7975 ], [ %8770, %8743 ], [ %9140, %9117 ], [ %8770, %8774 ]
  %9148 = phi float [ %7986, %7975 ], [ %8753, %8743 ], [ %9124, %9117 ], [ %8753, %8774 ]
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 2
  %9151 = extractvalue %dx.types.CBufRet.f32 %9149, 3
  %9152 = fmul fast float %9150, %109
  %9153 = fmul fast float %9151, %110
  %9154 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9155 = call float @dx.op.unary.f32(i32 7, float %9153)  ; Saturate(value)
  %9156 = select i1 %7717, i32 2, i32 0
  %9157 = or i32 %9156, 1
  %9158 = uitofp i32 %9157 to float
  %9159 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9154, float %9155, float %9158, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9160 = extractvalue %dx.types.ResRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.ResRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.ResRet.f32 %9159, 2
  %9163 = extractvalue %dx.types.ResRet.f32 %9159, 3
  %9164 = add nuw nsw i32 %9156, 2
  %9165 = uitofp i32 %9164 to float
  %9166 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9154, float %9155, float %9165, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9167 = extractvalue %dx.types.ResRet.f32 %9166, 0
  %9168 = extractvalue %dx.types.ResRet.f32 %9166, 1
  %9169 = extractvalue %dx.types.ResRet.f32 %9166, 2
  %9170 = extractvalue %dx.types.ResRet.f32 %9166, 3
  %9171 = call float @dx.op.binary.f32(i32 35, float %9161, float %9162)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 35, float %9160, float %9171)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 35, float %9172, float %9163)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9168, float %9169)  ; FMin(a,b)
  %9175 = call float @dx.op.binary.f32(i32 36, float %9167, float %9174)  ; FMin(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9175, float %9170)  ; FMin(a,b)
  %9177 = fmul fast float %9173, 2.550000e+02
  %9178 = fadd fast float %9177, 0x3F70101020000000
  %9179 = fptoui float %9178 to i32
  %9180 = fmul fast float %9176, 2.550000e+02
  %9181 = fadd fast float %9180, 0x3F70101020000000
  %9182 = fptoui float %9181 to i32
  %9183 = icmp ult i32 %9179, %9182
  br i1 %9183, label %9184, label %9353

; <label>:9184                                    ; preds = %9141
  %9185 = fcmp fast ogt float %99, 9.843750e-01
  %9186 = fadd fast float %7979, -4.000000e+00
  %9187 = select i1 %9185, float -4.000000e+00, float %9186
  %9188 = call float @dx.op.binary.f32(i32 35, float %9187, float 0.000000e+00)  ; FMax(a,b)
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 0
  %9191 = fadd fast float %9190, %9188
  %9192 = extractvalue %dx.types.CBufRet.f32 %9189, 2
  %9193 = fmul fast float %9191, %9192
  %9194 = call float @dx.op.unary.f32(i32 23, float %9193)  ; Log(value)
  %9195 = extractvalue %dx.types.CBufRet.f32 %9189, 3
  %9196 = fmul fast float %9195, %9194
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9199 = fmul fast float %9196, %9198
  %9200 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  %9201 = uitofp i32 %9179 to float
  %9202 = uitofp i32 %9182 to float
  %9203 = fadd fast float %9201, 5.000000e-01
  %9204 = fadd fast float %9202, 5.000000e-01
  %9205 = fmul fast float %9198, %9203
  %9206 = fmul fast float %9198, %9204
  %9207 = fadd fast float %9205, 0x3F0FFB4800000000
  %9208 = fadd fast float %9206, 0xBF0FFB4800000000
  %9209 = call float @dx.op.binary.f32(i32 35, float %9200, float %9207)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 36, float %9209, float %9208)  ; FMin(a,b)
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9214 = extractvalue %dx.types.CBufRet.f32 %9211, 0
  %9215 = select i1 %7717, float %9214, float 0.000000e+00
  %9216 = fmul fast float %9212, %9210
  %9217 = fadd fast float %9215, %9216
  %9218 = fadd fast float %9215, %9213
  %9219 = fsub fast float %9212, %9213
  %9220 = fadd fast float %9219, %9215
  %9221 = call float @dx.op.binary.f32(i32 35, float %9217, float %9218)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9221, float %9220)  ; FMin(a,b)
  %9223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9154, float %9155, float %9222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9224 = extractvalue %dx.types.ResRet.f32 %9223, 0
  %9225 = extractvalue %dx.types.ResRet.f32 %9223, 1
  %9226 = extractvalue %dx.types.ResRet.f32 %9223, 2
  %9227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9228 = extractvalue %dx.types.CBufRet.i32 %9227, 0
  %9229 = extractvalue %dx.types.CBufRet.i32 %9227, 1
  %9230 = uitofp i32 %9228 to float
  %9231 = uitofp i32 %9229 to float
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9235 = fmul fast float %9230, %9154
  %9236 = fmul fast float %9231, %9155
  %9237 = fadd fast float %9235, -5.000000e-01
  %9238 = fadd fast float %9236, -5.000000e-01
  %9239 = call float @dx.op.unary.f32(i32 22, float %9237)  ; Frc(value)
  %9240 = call float @dx.op.unary.f32(i32 22, float %9238)  ; Frc(value)
  %9241 = fmul fast float %9239, %9239
  %9242 = fmul fast float %9241, %9239
  %9243 = fsub fast float 3.000000e+00, %9239
  %9244 = fmul fast float %9241, %9243
  %9245 = fmul fast float %9239, 3.000000e+00
  %9246 = fmul fast float %9242, 3.000000e+00
  %9247 = fmul fast float %9241, 6.000000e+00
  %9248 = fsub fast float %9246, %9247
  %9249 = fadd fast float %9248, 4.000000e+00
  %9250 = fmul fast float %9249, 0x3FC5555560000000
  %9251 = fmul fast float %9242, -3.000000e+00
  %9252 = fadd fast float %9241, %9239
  %9253 = fmul fast float %9252, 3.000000e+00
  %9254 = fadd fast float %9251, 1.000000e+00
  %9255 = fadd fast float %9254, %9253
  %9256 = fmul fast float %9242, 0x3FC5555560000000
  %9257 = fmul fast float %9240, %9240
  %9258 = fmul fast float %9257, %9240
  %9259 = fsub fast float 3.000000e+00, %9240
  %9260 = fmul fast float %9257, %9259
  %9261 = fmul fast float %9240, 3.000000e+00
  %9262 = fmul fast float %9258, 3.000000e+00
  %9263 = fmul fast float %9257, 6.000000e+00
  %9264 = fsub fast float %9262, %9263
  %9265 = fadd fast float %9264, 4.000000e+00
  %9266 = fmul fast float %9265, 0x3FC5555560000000
  %9267 = fmul fast float %9258, -3.000000e+00
  %9268 = fadd fast float %9257, %9240
  %9269 = fmul fast float %9268, 3.000000e+00
  %9270 = fadd fast float %9267, 1.000000e+00
  %9271 = fadd fast float %9270, %9269
  %9272 = fmul fast float %9258, 0x3FC5555560000000
  %9273 = fadd fast float %9239, 1.000000e+00
  %9274 = fsub fast float 1.000000e+00, %9245
  %9275 = fadd fast float %9274, %9244
  %9276 = fadd fast float %9275, %9249
  %9277 = fmul fast float %9276, 0x3FC5555560000000
  %9278 = fdiv fast float %9250, %9277
  %9279 = fsub fast float %9273, %9278
  %9280 = fsub fast float 1.000000e+00, %9239
  %9281 = fadd fast float %9255, %9242
  %9282 = fmul fast float %9281, 0x3FC5555560000000
  %9283 = fdiv fast float %9256, %9282
  %9284 = fadd fast float %9280, %9283
  %9285 = fadd fast float %9240, 1.000000e+00
  %9286 = fsub fast float 1.000000e+00, %9261
  %9287 = fadd fast float %9286, %9260
  %9288 = fadd fast float %9287, %9265
  %9289 = fmul fast float %9288, 0x3FC5555560000000
  %9290 = fdiv fast float %9266, %9289
  %9291 = fsub fast float %9285, %9290
  %9292 = fsub fast float 1.000000e+00, %9240
  %9293 = fadd fast float %9271, %9258
  %9294 = fmul fast float %9293, 0x3FC5555560000000
  %9295 = fdiv fast float %9272, %9294
  %9296 = fadd fast float %9295, %9292
  %9297 = fmul fast float %9279, %9233
  %9298 = fsub fast float %9154, %9297
  %9299 = fmul fast float %9284, %9233
  %9300 = fadd fast float %9299, %9154
  %9301 = fmul fast float %9296, %9234
  %9302 = fadd fast float %9301, %9155
  %9303 = fmul fast float %9291, %9234
  %9304 = fsub fast float %9155, %9303
  %9305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9298, float %9304, float %9222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9306 = extractvalue %dx.types.ResRet.f32 %9305, 0
  %9307 = extractvalue %dx.types.ResRet.f32 %9305, 1
  %9308 = extractvalue %dx.types.ResRet.f32 %9305, 2
  %9309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9300, float %9304, float %9222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9310 = extractvalue %dx.types.ResRet.f32 %9309, 0
  %9311 = extractvalue %dx.types.ResRet.f32 %9309, 1
  %9312 = extractvalue %dx.types.ResRet.f32 %9309, 2
  %9313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9298, float %9302, float %9222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9314 = extractvalue %dx.types.ResRet.f32 %9313, 0
  %9315 = extractvalue %dx.types.ResRet.f32 %9313, 1
  %9316 = extractvalue %dx.types.ResRet.f32 %9313, 2
  %9317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9300, float %9302, float %9222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9318 = extractvalue %dx.types.ResRet.f32 %9317, 0
  %9319 = extractvalue %dx.types.ResRet.f32 %9317, 1
  %9320 = extractvalue %dx.types.ResRet.f32 %9317, 2
  %9321 = fsub fast float %9314, %9306
  %9322 = fsub fast float %9315, %9307
  %9323 = fsub fast float %9316, %9308
  %9324 = fmul fast float %9321, %9294
  %9325 = fmul fast float %9322, %9294
  %9326 = fmul fast float %9323, %9294
  %9327 = fadd fast float %9324, %9306
  %9328 = fadd fast float %9325, %9307
  %9329 = fadd fast float %9326, %9308
  %9330 = fsub fast float %9318, %9310
  %9331 = fsub fast float %9319, %9311
  %9332 = fsub fast float %9320, %9312
  %9333 = fmul fast float %9330, %9294
  %9334 = fmul fast float %9331, %9294
  %9335 = fmul fast float %9332, %9294
  %9336 = fsub fast float %9310, %9327
  %9337 = fadd fast float %9336, %9333
  %9338 = fsub fast float %9311, %9328
  %9339 = fadd fast float %9338, %9334
  %9340 = fsub fast float %9312, %9329
  %9341 = fadd fast float %9340, %9335
  %9342 = fmul fast float %9337, %9282
  %9343 = fmul fast float %9339, %9282
  %9344 = fmul fast float %9341, %9282
  %9345 = fadd fast float %9342, %9327
  %9346 = fadd fast float %9343, %9328
  %9347 = fadd fast float %9344, %9329
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 1
  %9350 = fmul fast float %9345, %9349
  %9351 = fmul fast float %9346, %9349
  %9352 = fmul fast float %9347, %9349
  br label %9353

; <label>:9353                                    ; preds = %9184, %9141
  %9354 = phi float [ %9224, %9184 ], [ 1.000000e+00, %9141 ]
  %9355 = phi float [ %9225, %9184 ], [ 1.000000e+00, %9141 ]
  %9356 = phi float [ %9226, %9184 ], [ 1.000000e+00, %9141 ]
  %9357 = phi float [ %9350, %9184 ], [ 0.000000e+00, %9141 ]
  %9358 = phi float [ %9351, %9184 ], [ 0.000000e+00, %9141 ]
  %9359 = phi float [ %9352, %9184 ], [ 0.000000e+00, %9141 ]
  %9360 = fmul fast float %9357, %7695
  %9361 = fmul fast float %9358, %7695
  %9362 = fmul fast float %9359, %7695
  %9363 = fmul fast float %9354, %9148
  %9364 = call float @dx.op.dot3.f32(i32 55, float %9354, float %9355, float %9356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9365 = call float @dx.op.dot3.f32(i32 55, float %9360, float %9361, float %9362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9366 = select i1 %247, float %9364, float %9354
  %9367 = select i1 %247, float %9364, float %9355
  %9368 = select i1 %247, float 1.000000e+00, float %9356
  %9369 = select i1 %247, float %9365, float %9360
  %9370 = select i1 %247, float 0.000000e+00, float %9361
  %9371 = select i1 %247, float 0.000000e+00, float %9362
  %9372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.i32 %9372, 3
  %9374 = and i32 %9373, 3
  %9375 = icmp ne i32 %9374, 0
  %9376 = and i32 %9373, 4
  %9377 = icmp ne i32 %9376, 0
  %9378 = and i1 %9375, %9377
  %9379 = and i1 %247, %9378
  br i1 %9379, label %9380, label %9386

; <label>:9380                                    ; preds = %9353
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 1
  %9383 = fadd fast float %9363, -1.000000e+00
  %9384 = fmul fast float %9382, %9383
  %9385 = fadd fast float %9384, 1.000000e+00
  br label %9386

; <label>:9386                                    ; preds = %9380, %9353
  %9387 = phi float [ %9385, %9380 ], [ %9363, %9353 ]
  %9388 = fadd fast float %9145, %9142
  %9389 = fmul fast float %9366, %9388
  %9390 = fadd fast float %9389, %9369
  %9391 = fadd fast float %9146, %9143
  %9392 = fmul fast float %9367, %9391
  %9393 = fadd fast float %9392, %9370
  %9394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9394, 0
  br i1 %247, label %9396, label %9419

; <label>:9396                                    ; preds = %9386
  %9397 = fadd fast float %9390, %9393
  %9398 = fmul fast float %9395, %9397
  %9399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9399, 3
  %9401 = extractvalue %dx.types.CBufRet.f32 %7699, 1
  %9402 = fsub fast float %7704, %7698
  %9403 = fadd fast float %9402, %7705
  %9404 = fsub fast float %9403, %9401
  %9405 = extractvalue %dx.types.CBufRet.f32 %7699, 2
  %9406 = fmul fast float %9404, %9405
  %9407 = call float @dx.op.unary.f32(i32 7, float %9406)  ; Saturate(value)
  %9408 = fsub fast float %9407, %9400
  %9409 = fmul fast float %9408, %9387
  %9410 = fadd fast float %9409, %9400
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 0
  %9413 = fsub fast float %9410, %9412
  %9414 = fmul fast float %9413, 1.000000e+01
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fmul fast float %9415, %7694
  %9417 = fadd fast float %9416, %7695
  %9418 = fmul fast float %9417, %9410
  br label %9443

; <label>:9419                                    ; preds = %9386
  %9420 = fadd fast float %9147, %9144
  %9421 = fmul fast float %9368, %9420
  %9422 = fadd fast float %9421, %9371
  %9423 = fmul fast float %9395, %9390
  %9424 = fmul fast float %9395, %9393
  %9425 = fmul fast float %9395, %9422
  %9426 = call float @dx.op.binary.f32(i32 35, float %9424, float %9425)  ; FMax(a,b)
  %9427 = call float @dx.op.binary.f32(i32 35, float %9423, float %9426)  ; FMax(a,b)
  %9428 = call float @dx.op.binary.f32(i32 35, float %9427, float %7695)  ; FMax(a,b)
  %9429 = fcmp fast ugt float %9428, 0x3F10000000000000
  br i1 %9429, label %9431, label %9430

; <label>:9430                                    ; preds = %9419
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9431

; <label>:9431                                    ; preds = %9430, %9419
  %9432 = add i32 %54, 356
  %9433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9432, i32 undef)  ; BufferLoad(srv,index,wot)
  %9434 = extractvalue %dx.types.ResRet.i32 %9433, 0
  %9435 = and i32 %9434, 32
  %9436 = icmp eq i32 %9435, 0
  br i1 %9436, label %9443, label %9437

; <label>:9437                                    ; preds = %9431
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  %9440 = fmul fast float %9439, 0x3FE99999A0000000
  %9441 = fadd fast float %9439, %9423
  %9442 = fadd fast float %9440, %9425
  br label %9443

; <label>:9443                                    ; preds = %9437, %9431, %9396
  %9444 = phi float [ %9398, %9396 ], [ %9441, %9437 ], [ %9423, %9431 ]
  %9445 = phi float [ %9418, %9396 ], [ %9424, %9437 ], [ %9424, %9431 ]
  %9446 = phi float [ %9417, %9396 ], [ %9442, %9437 ], [ %9425, %9431 ]
  %9447 = phi float [ %9417, %9396 ], [ %7695, %9437 ], [ %7695, %9431 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9448 = call float @dx.op.binary.f32(i32 36, float %9444, float 3.225500e+04)  ; FMin(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9445, float 3.225500e+04)  ; FMin(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9446, float 3.225500e+04)  ; FMin(a,b)
  %9451 = call float @dx.op.binary.f32(i32 36, float %9447, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9450)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9451)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!67}
!dx.entryPoints = !{!68}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !56, !59}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !41}
!41 = !{i32 0, i32 14}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!50 = !{i32 41, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !41}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!56 = !{!57, !58}
!57 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!65 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!66 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!67 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !94}
!69 = !{!70, !92, null}
!70 = !{!71, !74, !75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91}
!71 = !{i32 0, !"SV_Position", i8 9, i8 3, !72, i8 4, i32 1, i8 4, i32 0, i8 0, !73}
!72 = !{i32 0}
!73 = !{i32 3, i32 15}
!74 = !{i32 1, !"COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 1, i8 0, !73}
!75 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 2, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 3, !"NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 3, i8 0, !78}
!78 = !{i32 3, i32 7}
!79 = !{i32 4, !"TANGENT", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 4, i8 0, !73}
!80 = !{i32 5, !"SH_RED", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 5, i8 0, !73}
!81 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 6, i8 0, !73}
!82 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 7, i8 0, !73}
!83 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 8, i8 0, !78}
!84 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 9, i8 0, !73}
!85 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 2, i32 10, i8 0, !76}
!86 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 11, i8 0, !73}
!87 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 12, i8 0, !78}
!88 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !72, i8 1, i32 1, i8 1, i32 13, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !72, i8 1, i32 1, i8 4, i32 14, i8 0, !89}
!91 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !72, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!92 = !{!93}
!93 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
!94 = !{i32 0, i64 16}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !102, i64 0}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

