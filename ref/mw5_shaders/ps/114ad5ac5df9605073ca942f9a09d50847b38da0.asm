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
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
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
; shader hash: bb6cfcd71d362a2f213b254d8f43b4ac
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
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
;   [128 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t49,space1     1
;                                   texture    byte         r/o      T7     t50,space1     1
;                                   texture    byte         r/o      T8     t51,space1     1
;                                   texture    byte         r/o      T9     t52,space1     1
;                                   texture    byte         r/o     T10     t16,space1     1
;                                   texture    byte         r/o     T11     t17,space1     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t57,space2     1
;                                   texture    byte         r/o     T15     t69,space1     1
;                                   texture     u32          2d     T16     t56,space2     1
;                                   texture     f32          2d     T17     t34,space2     1
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
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = alloca [4 x i32], align 4
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = alloca [12 x float], align 4
  %80 = alloca [12 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %86, %75
  %88 = fmul fast float %86, %76
  %89 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %66
  %95 = fmul fast float %93, %67
  %96 = fmul fast float %93, %68
  %97 = fmul fast float %67, %64
  %98 = fmul fast float %68, %63
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %68, %62
  %101 = fmul fast float %66, %64
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %66, %63
  %104 = fmul fast float %67, %62
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %99, %65
  %107 = fmul fast float %102, %65
  %108 = fmul fast float %105, %65
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %87, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %88, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %136, %122
  %138 = fadd fast float %130, %134
  %139 = fadd fast float %138, %123
  %140 = fadd fast float %131, %135
  %141 = fadd fast float %140, %124
  %142 = fmul fast float %137, %78
  %143 = fmul fast float %139, %78
  %144 = fmul fast float %141, %78
  %145 = fmul fast float %87, 5.000000e-01
  %146 = fmul fast float %88, 5.000000e-01
  %147 = fptosi float %145 to i32
  %148 = fptosi float %146 to i32
  %149 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 18
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F4C00EBA0000000
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fadd fast float %154, -1.000000e+00
  %156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %157 = extractvalue %dx.types.Dimensions %156, 0
  %158 = sitofp i32 %157 to float
  %159 = extractvalue %dx.types.Dimensions %156, 1
  %160 = sitofp i32 %159 to float
  %161 = fcmp fast oge float %145, %158
  %162 = fcmp fast oge float %146, %160
  %163 = or i1 %161, %162
  %164 = select i1 %163, float 0x4197782600000000, float %155
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %168 = fmul fast float %166, %87
  %169 = fmul fast float %167, %88
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, 114688
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float %168, float 0.000000e+00
  %175 = select i1 %173, float %169, float 0.000000e+00
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.550000e+02
  %179 = fptoui float %178 to i32
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %183 = and i32 %182, 3
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %182, 4
  %186 = icmp ne i32 %185, 0
  %187 = and i1 %184, %186
  br i1 %187, label %188, label %199

; <label>:188                                     ; preds = %0
  %189 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %190 = fmul fast float %189, %88
  %191 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %192 = fmul fast float %191, %87
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %192, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast olt float %195, %197
  br label %202

; <label>:199                                     ; preds = %0
  %200 = icmp eq i32 %185, 0
  %201 = and i1 %184, %200
  br label %202

; <label>:202                                     ; preds = %199, %188
  %203 = phi i1 [ %198, %188 ], [ %201, %199 ]
  %204 = add i32 %41, 156
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %206, 7
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %206, 22
  %214 = shl nuw nsw i32 %213, 5
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %41, 216
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %218, 8
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %218, 16
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = add i32 %41, 36
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %41, 288
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = fmul fast float %241, 0x3F50624DE0000000
  %245 = fmul fast float %243, 0x3F50624DE0000000
  %246 = add i32 %41, 172
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = shl i32 %248, 4
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %248, 7
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %248, 22
  %256 = shl nuw nsw i32 %255, 5
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %41, 232
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %260, 8
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %260, 16
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = add i32 %41, 52
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %274, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %41, 304
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %283, 0x3F50624DE0000000
  %287 = fmul fast float %285, 0x3F50624DE0000000
  %288 = add i32 %41, 188
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = shl i32 %290, 4
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %290, 7
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %290, 22
  %298 = shl nuw nsw i32 %297, 5
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %41, 248
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %302, 8
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %302, 16
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = add i32 %41, 68
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %41, 320
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = fmul fast float %325, 0x3F50624DE0000000
  %329 = fmul fast float %327, 0x3F50624DE0000000
  %330 = add i32 %41, 204
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = shl i32 %332, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %332, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %332, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %41, 264
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %344, 8
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %344, 16
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = add i32 %41, 84
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %41, 336
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = fmul fast float %367, 0x3F50624DE0000000
  %371 = fmul fast float %369, 0x3F50624DE0000000
  %372 = add i32 %41, 348
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 32
  %376 = icmp eq i32 %375, 0
  %377 = and i32 %374, 64
  %378 = icmp eq i32 %377, 0
  %379 = and i32 %374, 128
  %380 = icmp eq i32 %379, 0
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %400, label %385

; <label>:385                                     ; preds = %202
  %386 = add i32 %41, 508
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %388, 0
  %390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %390, %dx.types.Handle %84, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = extractvalue %dx.types.ResRet.f32 %391, 3
  %396 = fmul fast float %395, %71
  %397 = fmul fast float %392, %72
  %398 = fmul fast float %393, %73
  %399 = fmul fast float %394, %74
  br label %400

; <label>:400                                     ; preds = %385, %202
  %401 = phi float [ %74, %202 ], [ %399, %385 ]
  %402 = phi float [ %73, %202 ], [ %398, %385 ]
  %403 = phi float [ %72, %202 ], [ %397, %385 ]
  %404 = phi float [ %71, %202 ], [ %396, %385 ]
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %428, label %409

; <label>:409                                     ; preds = %400
  %410 = add i32 %41, 44
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %403, float 1.000000e+00
  %416 = add i32 %41, 60
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %402, float 1.000000e+00
  %422 = add i32 %41, 76
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 1
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %401, float 1.000000e+00
  br label %428

; <label>:428                                     ; preds = %409, %400
  %429 = phi float [ %401, %400 ], [ %427, %409 ]
  %430 = phi float [ %402, %400 ], [ %421, %409 ]
  %431 = phi float [ %403, %400 ], [ %415, %409 ]
  %432 = lshr i32 %406, 20
  %433 = and i32 %432, 3
  %434 = add nuw nsw i32 %433, 1
  %435 = add i32 %41, 24
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = add i32 %41, 28
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = or i32 %440, %437
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %1203, label %443

; <label>:443                                     ; preds = %428
  %444 = and i32 %437, 262144
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %44, float 1.000000e+00
  %447 = select i1 %445, float %45, float 0.000000e+00
  %448 = select i1 %445, float %46, float 0.000000e+00
  %449 = select i1 %445, float %47, float 1.000000e+00
  %450 = select i1 %445, float %48, float %69
  %451 = select i1 %445, float %49, float %70
  %452 = add i32 %41, 284
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = fmul fast float %456, 0x3F50624DE0000000
  %458 = add i32 %41, 88
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  %463 = lshr i32 %460, 24
  %464 = add i32 %41, 292
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %466, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = add i32 %41, 32
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 22
  %475 = shl nuw nsw i32 %474, 5
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = shl i32 %473, 4
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %473, 7
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %485 = fmul fast float %484, 1.000000e+03
  %486 = fmul fast float %244, %485
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fadd fast float %487, %234
  %489 = fmul fast float %245, %485
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = fadd fast float %490, %236
  %492 = fmul fast float %457, %485
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = fmul fast float %493, 0x401921FB60000000
  %495 = fadd fast float %494, %476
  %496 = call float @dx.op.unary.f32(i32 13, float %495)  ; Sin(value)
  %497 = call float @dx.op.unary.f32(i32 12, float %495)  ; Cos(value)
  %498 = fsub fast float -0.000000e+00, %496
  %499 = fadd fast float %450, -5.000000e-01
  %500 = fadd fast float %451, -5.000000e-01
  %501 = fmul fast float %468, %499
  %502 = fmul fast float %470, %500
  %503 = fadd fast float %501, 5.000000e-01
  %504 = fadd fast float %502, 5.000000e-01
  %505 = fmul fast float %479, %503
  %506 = fmul fast float %482, %504
  %507 = fmul fast float %497, %505
  %508 = call float @dx.op.tertiary.f32(i32 46, float %498, float %506, float %507)  ; FMad(a,b,c)
  %509 = fmul fast float %496, %505
  %510 = call float @dx.op.tertiary.f32(i32 46, float %497, float %506, float %509)  ; FMad(a,b,c)
  %511 = fadd fast float %488, %508
  %512 = fadd fast float %491, %510
  %513 = icmp ugt i32 %462, 1
  %514 = icmp ugt i32 %460, 33554431
  %515 = or i1 %514, %513
  br i1 %515, label %516, label %541

; <label>:516                                     ; preds = %443
  %517 = add i32 %41, 228
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = fmul fast float %484, %521
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = mul nuw nsw i32 %462, %463
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %523, %525
  %527 = call float @dx.op.unary.f32(i32 27, float %526)  ; Round_ni(value)
  %528 = fptoui float %527 to i32
  %529 = urem i32 %528, %462
  %530 = udiv i32 %528, %463
  %531 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %532 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %533 = uitofp i32 %529 to float
  %534 = uitofp i32 %530 to float
  %535 = fadd fast float %531, %533
  %536 = fadd fast float %532, %534
  %537 = uitofp i32 %462 to float
  %538 = uitofp i32 %463 to float
  %539 = fdiv fast float %535, %537
  %540 = fdiv fast float %536, %538
  br label %541

; <label>:541                                     ; preds = %516, %443
  %542 = phi float [ %539, %516 ], [ %511, %443 ]
  %543 = phi float [ %540, %516 ], [ %512, %443 ]
  %544 = and i32 %437, 16777216
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %655, label %546

; <label>:546                                     ; preds = %541
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = fadd fast float %548, %142
  %552 = fadd fast float %549, %143
  %553 = fadd fast float %550, %144
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = icmp eq i32 %42, 65535
  br i1 %557, label %652, label %558

; <label>:558                                     ; preds = %546
  %559 = lshr i32 %42, 1
  %560 = shl i32 %559, 2
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %42, 1
  %564 = icmp ne i32 %563, 0
  %565 = lshr i32 %562, 16
  %566 = and i32 %562, 65535
  %567 = select i1 %564, i32 %565, i32 %566
  %568 = icmp eq i32 %567, 65535
  br i1 %568, label %648, label %569

; <label>:569                                     ; preds = %558
  %570 = mul nuw nsw i32 %567, 40
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = add nuw nsw i32 %570, 12
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = add nuw nsw i32 %570, 24
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = add nuw nsw i32 %570, 36
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = fsub fast float %551, %572
  %589 = fsub fast float %552, %573
  %590 = fsub fast float %553, %574
  %591 = fmul fast float %587, %588
  %592 = fmul fast float %587, %589
  %593 = fmul fast float %587, %590
  %594 = call float @dx.op.unary.f32(i32 27, float %591)  ; Round_ni(value)
  %595 = call float @dx.op.unary.f32(i32 27, float %592)  ; Round_ni(value)
  %596 = call float @dx.op.unary.f32(i32 27, float %593)  ; Round_ni(value)
  %597 = fadd fast float %594, 5.000000e-01
  %598 = fadd fast float %595, 5.000000e-01
  %599 = fadd fast float %596, 5.000000e-01
  %600 = fmul fast float %597, %577
  %601 = fmul fast float %598, %578
  %602 = fmul fast float %599, %579
  %603 = shl i32 %42, 2
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = add i32 %605, 0
  %607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %608 = call float @dx.op.unary.f32(i32 22, float %600)  ; Frc(value)
  %609 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %610 = call float @dx.op.unary.f32(i32 22, float %602)  ; Frc(value)
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %607, %dx.types.Handle %36, float %608, float %609, float %610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = fmul fast float %612, 1.023000e+03
  %616 = fmul fast float %613, 1.023000e+03
  %617 = fmul fast float %614, 1.023000e+03
  %618 = fadd fast float %615, 5.000000e-01
  %619 = fadd fast float %616, 5.000000e-01
  %620 = fadd fast float %617, 5.000000e-01
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = fsub fast float %591, %594
  %625 = fsub fast float %592, %595
  %626 = fsub fast float %593, %596
  %627 = fmul fast float %624, 7.500000e-01
  %628 = fmul fast float %625, 7.500000e-01
  %629 = fmul fast float %626, 7.500000e-01
  %630 = fadd fast float %594, 1.250000e-01
  %631 = fadd fast float %630, %627
  %632 = fadd fast float %631, %621
  %633 = fadd fast float %595, 1.250000e-01
  %634 = fadd fast float %633, %628
  %635 = fadd fast float %634, %622
  %636 = fadd fast float %596, 1.250000e-01
  %637 = fadd fast float %636, %629
  %638 = fadd fast float %637, %623
  %639 = fmul fast float %632, %582
  %640 = fmul fast float %635, %583
  %641 = fmul fast float %638, %584
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = add i32 %643, 0
  %645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %645, %dx.types.Handle %34, float %639, float %640, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  br label %648

; <label>:648                                     ; preds = %569, %558
  %649 = phi float [ %647, %569 ], [ -1.000000e+00, %558 ]
  %650 = fadd fast float %649, %556
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  br label %652

; <label>:652                                     ; preds = %648, %546
  %653 = phi float [ %651, %648 ], [ %556, %546 ]
  %654 = fmul fast float %653, %404
  br label %655

; <label>:655                                     ; preds = %652, %541
  %656 = phi float [ %654, %652 ], [ %404, %541 ]
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = and i32 %658, 256
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %707, label %661

; <label>:661                                     ; preds = %655
  %662 = add i32 %41, 440
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %84, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = add i32 %41, 100
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = shl i32 %671, 4
  %673 = and i32 %672, 32752
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = lshr i32 %671, 7
  %676 = and i32 %675, 32752
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = fsub fast float 1.000000e+00, %656
  %679 = call float @dx.op.binary.f32(i32 35, float %678, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %680 = bitcast float %656 to i32
  %681 = sitofp i32 %680 to float
  %682 = fadd fast float %681, 0xC1CFBF8940000000
  %683 = fmul fast float %677, %682
  %684 = fadd fast float %683, 0x41CFBF8940000000
  %685 = fptosi float %684 to i32
  %686 = bitcast i32 %685 to float
  %687 = bitcast float %679 to i32
  %688 = sitofp i32 %687 to float
  %689 = fadd fast float %688, 0xC1CFBF8940000000
  %690 = fmul fast float %689, %677
  %691 = fadd fast float %690, 0x41CFBF8940000000
  %692 = fptosi float %691 to i32
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %686, %674
  %695 = fmul fast float %693, %674
  %696 = fsub fast float %679, %694
  %697 = fadd fast float %695, %679
  %698 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %699 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %700 = fsub fast float %668, %698
  %701 = fsub fast float %699, %698
  %702 = bitcast float %701 to i32
  %703 = sub nsw i32 2129859010, %702
  %704 = bitcast i32 %703 to float
  %705 = fmul fast float %704, %700
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  br label %707

; <label>:707                                     ; preds = %661, %655
  %708 = phi float [ %706, %661 ], [ %656, %655 ]
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 128
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %729, label %713

; <label>:713                                     ; preds = %707
  %714 = add i32 %41, 424
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %716, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %718, %dx.types.Handle %84, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 524288
  %724 = icmp ne i32 %723, 0
  %725 = fcmp fast ogt float %720, 0x3FE0101020000000
  %726 = select i1 %725, float 1.000000e+00, float 0.000000e+00
  %727 = select i1 %724, float %726, float %720
  %728 = fmul fast float %727, %708
  br label %729

; <label>:729                                     ; preds = %713, %707
  %730 = phi float [ %728, %713 ], [ %708, %707 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 16
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %933, label %735

; <label>:735                                     ; preds = %729
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %41, 376
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %83, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = and i32 %737, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %737, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %747, %749
  %754 = fadd fast float %753, %752
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 512
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %768, label %760

; <label>:760                                     ; preds = %735
  %761 = add i32 %41, 460
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %84, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  br label %768

; <label>:768                                     ; preds = %760, %735
  %769 = phi float [ %767, %760 ], [ 1.000000e+00, %735 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 33554432
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %880, label %774

; <label>:774                                     ; preds = %768
  %775 = add i32 %41, 224
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 65535
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = lshr i32 %777, 16
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = add i32 %41, 228
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = lshr i32 %788, 24
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = and i32 %788, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = lshr i32 %788, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %788, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = add i32 %41, 220
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = lshr i32 %805, 24
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = and i32 %805, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = lshr i32 %805, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = lshr i32 %805, 16
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = bitcast float %744 to i32
  %821 = ashr i32 %820, 1
  %822 = sub nsw i32 1597463174, %821
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %744, 5.000000e-01
  %825 = fmul fast float %823, %823
  %826 = fmul fast float %825, %824
  %827 = fsub fast float 1.500000e+00, %826
  %828 = fmul fast float %823, %744
  %829 = fmul fast float %828, %827
  %830 = bitcast float %745 to i32
  %831 = ashr i32 %830, 1
  %832 = sub nsw i32 1597463174, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %745, 5.000000e-01
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.500000e+00, %836
  %838 = fmul fast float %833, %745
  %839 = fmul fast float %838, %837
  %840 = bitcast float %746 to i32
  %841 = ashr i32 %840, 1
  %842 = sub nsw i32 1597463174, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %746, 5.000000e-01
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %845, %844
  %847 = fsub fast float 1.500000e+00, %846
  %848 = fmul fast float %843, %746
  %849 = fmul fast float %848, %847
  %850 = fsub fast float %829, %811
  %851 = fsub fast float %839, %815
  %852 = fsub fast float %849, %819
  %853 = fmul fast float %850, %779
  %854 = fmul fast float %851, %781
  %855 = fmul fast float %852, %786
  %856 = fadd fast float %853, %794
  %857 = fadd fast float %854, %798
  %858 = fadd fast float %855, %802
  %859 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %860 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %861 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %862 = fmul fast float %859, %859
  %863 = fmul fast float %860, %860
  %864 = fmul fast float %861, %861
  %865 = fsub fast float %862, %744
  %866 = fsub fast float %863, %745
  %867 = fsub fast float %864, %746
  %868 = fmul fast float %865, %769
  %869 = fmul fast float %866, %769
  %870 = fmul fast float %867, %769
  %871 = fadd fast float %868, %744
  %872 = fadd fast float %869, %745
  %873 = fadd fast float %870, %746
  %874 = fadd fast float %791, %755
  %875 = fsub fast float %874, %808
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float %876, %755
  %878 = fmul fast float %877, %769
  %879 = fadd fast float %878, %755
  br label %933

; <label>:880                                     ; preds = %768
  %881 = and i32 %771, 134217728
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %917, label %883

; <label>:883                                     ; preds = %880
  %884 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %885 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %887 = fadd fast float %884, -5.000000e-01
  %888 = fadd fast float %885, -5.000000e-01
  %889 = fadd fast float %886, -5.000000e-01
  %890 = fmul fast float %887, %769
  %891 = fmul fast float %888, %769
  %892 = fmul fast float %889, %769
  %893 = fadd fast float %890, 5.000000e-01
  %894 = fadd fast float %891, 5.000000e-01
  %895 = fadd fast float %892, 5.000000e-01
  %896 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %897 = call float @dx.op.unary.f32(i32 24, float %745)  ; Sqrt(value)
  %898 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %899 = fmul fast float %893, 2.000000e+00
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %896
  %902 = fadd fast float %901, %899
  %903 = fmul fast float %902, %896
  %904 = fmul fast float %894, 2.000000e+00
  %905 = fsub fast float 1.000000e+00, %904
  %906 = fmul fast float %905, %897
  %907 = fadd fast float %906, %904
  %908 = fmul fast float %907, %897
  %909 = fmul fast float %895, 2.000000e+00
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %910, %898
  %912 = fadd fast float %911, %909
  %913 = fmul fast float %912, %898
  %914 = fmul fast float %903, %903
  %915 = fmul fast float %908, %908
  %916 = fmul fast float %913, %913
  br label %933

; <label>:917                                     ; preds = %880
  %918 = fmul fast float %221, %221
  %919 = fmul fast float %225, %225
  %920 = fmul fast float %229, %229
  %921 = fadd fast float %918, -1.000000e+00
  %922 = fadd fast float %919, -1.000000e+00
  %923 = fadd fast float %920, -1.000000e+00
  %924 = fmul fast float %769, %921
  %925 = fmul fast float %769, %922
  %926 = fmul fast float %769, %923
  %927 = fadd fast float %924, 1.000000e+00
  %928 = fadd fast float %925, 1.000000e+00
  %929 = fadd fast float %926, 1.000000e+00
  %930 = fmul fast float %927, %744
  %931 = fmul fast float %928, %745
  %932 = fmul fast float %929, %746
  br label %933

; <label>:933                                     ; preds = %917, %883, %774, %729
  %934 = phi float [ %879, %774 ], [ %755, %883 ], [ %755, %917 ], [ 0x3FA23C0BE0000000, %729 ]
  %935 = phi float [ %871, %774 ], [ %914, %883 ], [ %930, %917 ], [ 1.000000e+00, %729 ]
  %936 = phi float [ %872, %774 ], [ %915, %883 ], [ %931, %917 ], [ 1.000000e+00, %729 ]
  %937 = phi float [ %873, %774 ], [ %916, %883 ], [ %932, %917 ], [ 1.000000e+00, %729 ]
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 1
  %940 = and i32 %939, 1
  %941 = icmp ne i32 %940, 0
  %942 = add i32 %41, 356
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 32
  %946 = icmp ne i32 %945, 0
  %947 = and i1 %941, %946
  %948 = select i1 %947, float 1.000000e+00, float %935
  %949 = select i1 %947, float 0x3FD3333340000000, float %936
  %950 = select i1 %947, float 0x3FD3333340000000, float %937
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1027, label %955

; <label>:955                                     ; preds = %933
  %956 = add i32 %41, 92
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = add i32 %41, 392
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %961, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %963, %dx.types.Handle %83, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = and i32 %958, 255
  %970 = uitofp i32 %969 to float
  %971 = lshr i32 %958, 8
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %958, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101000000000
  %978 = fmul fast float %965, %970
  %979 = fadd fast float %978, %973
  %980 = fmul fast float %979, 0x3F70101000000000
  %981 = fadd fast float %966, -5.000000e-01
  %982 = fadd fast float %968, -5.000000e-01
  %983 = fmul fast float %981, %977
  %984 = fmul fast float %982, %977
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fmul fast float %985, 2.000000e+00
  %988 = fadd fast float %987, -1.000000e+00
  %989 = fmul fast float %986, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fadd fast float %988, %990
  %992 = fmul fast float %991, 5.000000e-01
  %993 = fsub fast float %988, %990
  %994 = fmul fast float %993, 5.000000e-01
  %995 = call float @dx.op.unary.f32(i32 6, float %992)  ; FAbs(value)
  %996 = fsub fast float 1.000000e+00, %995
  %997 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %998 = fsub fast float %996, %997
  %999 = call float @dx.op.dot3.f32(i32 55, float %992, float %994, float %998, float %992, float %994, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %992, %1000
  %1002 = fmul fast float %994, %1000
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 67108864
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1023, label %1007

; <label>:1007                                    ; preds = %955
  %1008 = add i32 %41, 280
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 65535
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1010, 16
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = fsub fast float %980, %1018
  %1020 = fmul fast float %1019, %1012
  %1021 = fadd fast float %1020, %1016
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  br label %1023

; <label>:1023                                    ; preds = %1007, %955
  %1024 = phi float [ %1022, %1007 ], [ %980, %955 ]
  %1025 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %446, float %447)  ; Dot2(ax,ay,bx,by)
  %1026 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  br label %1027

; <label>:1027                                    ; preds = %1023, %933
  %1028 = phi float [ %1024, %1023 ], [ 0x3FD6666660000000, %933 ]
  %1029 = phi float [ %1025, %1023 ], [ 0.000000e+00, %933 ]
  %1030 = phi float [ %1026, %1023 ], [ 0.000000e+00, %933 ]
  %1031 = phi float [ %967, %1023 ], [ 1.000000e+00, %933 ]
  %1032 = add i32 %41, 160
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = lshr i32 %1034, 22
  %1036 = shl nuw nsw i32 %1035, 5
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 64
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1075, label %1042

; <label>:1042                                    ; preds = %1027
  %1043 = add i32 %41, 408
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 131072
  %1051 = icmp eq i32 %1050, 0
  %1052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %83, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = fmul fast float %1053, %209
  %1057 = fmul fast float %1054, %212
  %1058 = fmul fast float %1055, %215
  br i1 %1051, label %1065, label %1059

; <label>:1059                                    ; preds = %1042
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = fmul fast float %1061, %1056
  %1063 = fmul fast float %1061, %1057
  %1064 = fmul fast float %1061, %1058
  br label %1065

; <label>:1065                                    ; preds = %1059, %1042
  %1066 = phi float [ %1062, %1059 ], [ %1056, %1042 ]
  %1067 = phi float [ %1063, %1059 ], [ %1057, %1042 ]
  %1068 = phi float [ %1064, %1059 ], [ %1058, %1042 ]
  %1069 = fmul fast float %1066, %1037
  %1070 = select i1 %203, float %1069, float %1066
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = select i1 %203, float 0.000000e+00, float %1066
  %1073 = select i1 %203, float %1071, float %1067
  %1074 = select i1 %203, float 0.000000e+00, float %1068
  br label %1075

; <label>:1075                                    ; preds = %1065, %1027
  %1076 = phi float [ %1072, %1065 ], [ 0.000000e+00, %1027 ]
  %1077 = phi float [ %1073, %1065 ], [ 0.000000e+00, %1027 ]
  %1078 = phi float [ %1074, %1065 ], [ 0.000000e+00, %1027 ]
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 1024
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1113, label %1083

; <label>:1083                                    ; preds = %1075
  %1084 = add i32 %41, 152
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 255
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1088, 0x3F70101020000000
  %1090 = lshr i32 %1086, 8
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = fmul fast float %1092, 0x3F70101020000000
  %1094 = lshr i32 %1086, 16
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F70101020000000
  %1098 = fmul fast float %1089, %1089
  %1099 = fmul fast float %1093, %1093
  %1100 = fmul fast float %1097, %1097
  %1101 = add i32 %41, 476
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %84, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = fmul fast float %1098, %1107
  %1111 = fmul fast float %1099, %1108
  %1112 = fmul fast float %1100, %1109
  br label %1113

; <label>:1113                                    ; preds = %1083, %1075
  %1114 = phi float [ %1110, %1083 ], [ 0.000000e+00, %1075 ]
  %1115 = phi float [ %1111, %1083 ], [ 0.000000e+00, %1075 ]
  %1116 = phi float [ %1112, %1083 ], [ 0.000000e+00, %1075 ]
  %1117 = fcmp fast ogt float %1114, 0.000000e+00
  %1118 = fcmp fast ogt float %1115, 0.000000e+00
  %1119 = fcmp fast ogt float %1116, 0.000000e+00
  %1120 = call float @dx.op.unary.f32(i32 23, float %1114)  ; Log(value)
  %1121 = call float @dx.op.unary.f32(i32 23, float %1115)  ; Log(value)
  %1122 = call float @dx.op.unary.f32(i32 23, float %1116)  ; Log(value)
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = lshr i32 %1124, 7
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = fmul fast float %1120, 0xBFE62E4300000000
  %1129 = fmul fast float %1128, %1127
  %1130 = fmul fast float %1121, 0xBFE62E4300000000
  %1131 = fmul fast float %1130, %1127
  %1132 = fmul fast float %1122, 0xBFE62E4300000000
  %1133 = fmul fast float %1132, %1127
  %1134 = select i1 %1117, float %1129, float 1.270000e+02
  %1135 = select i1 %1118, float %1131, float 1.270000e+02
  %1136 = select i1 %1119, float %1133, float 1.270000e+02
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 10240
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1185, label %1141

; <label>:1141                                    ; preds = %1113
  %1142 = add i32 %41, 492
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1146, %dx.types.Handle %84, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 3
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 1048576
  %1153 = icmp ne i32 %1152, 0
  %1154 = and i32 %1151, 8192
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1171, label %1156

; <label>:1156                                    ; preds = %1141
  %1157 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1158 = select i1 %1153, float %1157, float %1148
  %1159 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1160 = select i1 %1153, float %1159, float %1148
  %1161 = add i32 %41, 96
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = and i32 %1164, 255
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F80101020000000
  %1168 = fmul fast float %1167, %1160
  %1169 = fmul fast float %1167, %1148
  %1170 = fmul fast float %1167, %1158
  br label %1171

; <label>:1171                                    ; preds = %1156, %1141
  %1172 = phi float [ %1168, %1156 ], [ 0.000000e+00, %1141 ]
  %1173 = phi float [ %1169, %1156 ], [ 0.000000e+00, %1141 ]
  %1174 = phi float [ %1170, %1156 ], [ 0.000000e+00, %1141 ]
  %1175 = and i32 %1151, 2048
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1185, label %1177

; <label>:1177                                    ; preds = %1171
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = shl i32 %1179, 4
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fmul fast float %1182, %1149
  %1184 = call float @dx.op.binary.f32(i32 35, float %1183, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1185

; <label>:1185                                    ; preds = %1177, %1171, %1113
  %1186 = phi float [ %1172, %1177 ], [ %1172, %1171 ], [ 0.000000e+00, %1113 ]
  %1187 = phi float [ %1173, %1177 ], [ %1173, %1171 ], [ 0.000000e+00, %1113 ]
  %1188 = phi float [ %1174, %1177 ], [ %1174, %1171 ], [ 0.000000e+00, %1113 ]
  %1189 = phi float [ %1184, %1177 ], [ 0x3F70101020000000, %1171 ], [ 0x3F70101020000000, %1113 ]
  %1190 = add i32 %41, 96
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = lshr i32 %1192, 8
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = call float @dx.op.dot3.f32(i32 55, float %948, float %949, float %950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = fmul fast float %1197, %1198
  %1200 = fadd fast float %1199, %1194
  %1201 = fmul fast float %1200, 0x3F70101020000000
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  br label %1203

; <label>:1203                                    ; preds = %1185, %428
  %1204 = phi float [ 0.000000e+00, %428 ], [ %1029, %1185 ]
  %1205 = phi float [ 0.000000e+00, %428 ], [ %1030, %1185 ]
  %1206 = phi float [ 0.000000e+00, %428 ], [ %948, %1185 ]
  %1207 = phi float [ 0.000000e+00, %428 ], [ %949, %1185 ]
  %1208 = phi float [ 0.000000e+00, %428 ], [ %950, %1185 ]
  %1209 = phi float [ 0.000000e+00, %428 ], [ %1076, %1185 ]
  %1210 = phi float [ 0.000000e+00, %428 ], [ %1077, %1185 ]
  %1211 = phi float [ 0.000000e+00, %428 ], [ %1078, %1185 ]
  %1212 = phi float [ 0.000000e+00, %428 ], [ %1186, %1185 ]
  %1213 = phi float [ 0.000000e+00, %428 ], [ %1187, %1185 ]
  %1214 = phi float [ 0.000000e+00, %428 ], [ %1188, %1185 ]
  %1215 = phi float [ 0.000000e+00, %428 ], [ %1134, %1185 ]
  %1216 = phi float [ 0.000000e+00, %428 ], [ %1135, %1185 ]
  %1217 = phi float [ 0.000000e+00, %428 ], [ %1136, %1185 ]
  %1218 = phi float [ 0.000000e+00, %428 ], [ %934, %1185 ]
  %1219 = phi float [ 0.000000e+00, %428 ], [ %730, %1185 ]
  %1220 = phi float [ 0.000000e+00, %428 ], [ %1028, %1185 ]
  %1221 = phi float [ 0.000000e+00, %428 ], [ %1031, %1185 ]
  %1222 = phi float [ 0.000000e+00, %428 ], [ %1189, %1185 ]
  %1223 = phi float [ 0.000000e+00, %428 ], [ %1202, %1185 ]
  br i1 %376, label %2261, label %1224

; <label>:1224                                    ; preds = %1203
  %1225 = icmp ult i32 %434, 2
  %1226 = add i32 %41, 40
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = add i32 %41, 44
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = or i32 %1231, %1228
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %2261, label %1234

; <label>:1234                                    ; preds = %1224
  %1235 = and i32 %1228, 262144
  %1236 = icmp ne i32 %1235, 0
  %1237 = select i1 %1236, float %44, float 1.000000e+00
  %1238 = select i1 %1236, float %45, float 0.000000e+00
  %1239 = select i1 %1236, float %46, float 0.000000e+00
  %1240 = select i1 %1236, float %47, float 1.000000e+00
  %1241 = select i1 %1236, float %48, float %69
  %1242 = select i1 %1236, float %49, float %70
  %1243 = add i32 %41, 300
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = lshr i32 %1245, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = fmul fast float %1247, 0x3F50624DE0000000
  %1249 = add i32 %41, 104
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 16
  %1253 = and i32 %1252, 255
  %1254 = lshr i32 %1251, 24
  %1255 = add i32 %41, 308
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 65535
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = lshr i32 %1257, 16
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = add i32 %41, 48
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = lshr i32 %1264, 22
  %1266 = shl nuw nsw i32 %1265, 5
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = shl i32 %1264, 4
  %1269 = and i32 %1268, 32752
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = lshr i32 %1264, 7
  %1272 = and i32 %1271, 32752
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1276 = fmul fast float %1275, 1.000000e+03
  %1277 = fmul fast float %286, %1276
  %1278 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1279 = fadd fast float %1278, %276
  %1280 = fmul fast float %287, %1276
  %1281 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1282 = fadd fast float %1281, %278
  %1283 = fmul fast float %1248, %1276
  %1284 = call float @dx.op.unary.f32(i32 22, float %1283)  ; Frc(value)
  %1285 = fmul fast float %1284, 0x401921FB60000000
  %1286 = fadd fast float %1285, %1267
  %1287 = call float @dx.op.unary.f32(i32 13, float %1286)  ; Sin(value)
  %1288 = call float @dx.op.unary.f32(i32 12, float %1286)  ; Cos(value)
  %1289 = fsub fast float -0.000000e+00, %1287
  %1290 = fadd fast float %1241, -5.000000e-01
  %1291 = fadd fast float %1242, -5.000000e-01
  %1292 = fmul fast float %1259, %1290
  %1293 = fmul fast float %1261, %1291
  %1294 = fadd fast float %1292, 5.000000e-01
  %1295 = fadd fast float %1293, 5.000000e-01
  %1296 = fmul fast float %1270, %1294
  %1297 = fmul fast float %1273, %1295
  %1298 = fmul fast float %1288, %1296
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1297, float %1298)  ; FMad(a,b,c)
  %1300 = fmul fast float %1287, %1296
  %1301 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1297, float %1300)  ; FMad(a,b,c)
  %1302 = fadd fast float %1279, %1299
  %1303 = fadd fast float %1282, %1301
  %1304 = icmp ugt i32 %1253, 1
  %1305 = icmp ugt i32 %1251, 33554431
  %1306 = or i1 %1305, %1304
  br i1 %1306, label %1307, label %1332

; <label>:1307                                    ; preds = %1234
  %1308 = add i32 %41, 244
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 16
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = fmul fast float %1275, %1312
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = mul nuw nsw i32 %1253, %1254
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1314, %1316
  %1318 = call float @dx.op.unary.f32(i32 27, float %1317)  ; Round_ni(value)
  %1319 = fptoui float %1318 to i32
  %1320 = urem i32 %1319, %1253
  %1321 = udiv i32 %1319, %1254
  %1322 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1323 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1324 = uitofp i32 %1320 to float
  %1325 = uitofp i32 %1321 to float
  %1326 = fadd fast float %1322, %1324
  %1327 = fadd fast float %1323, %1325
  %1328 = uitofp i32 %1253 to float
  %1329 = uitofp i32 %1254 to float
  %1330 = fdiv fast float %1326, %1328
  %1331 = fdiv fast float %1327, %1329
  br label %1332

; <label>:1332                                    ; preds = %1307, %1234
  %1333 = phi float [ %1330, %1307 ], [ %1302, %1234 ]
  %1334 = phi float [ %1331, %1307 ], [ %1303, %1234 ]
  %1335 = and i32 %1228, 16777216
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1446, label %1337

; <label>:1337                                    ; preds = %1332
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1342 = fadd fast float %1339, %142
  %1343 = fadd fast float %1340, %143
  %1344 = fadd fast float %1341, %144
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = icmp eq i32 %42, 65535
  br i1 %1348, label %1443, label %1349

; <label>:1349                                    ; preds = %1337
  %1350 = lshr i32 %42, 1
  %1351 = shl i32 %1350, 2
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %42, 1
  %1355 = icmp ne i32 %1354, 0
  %1356 = lshr i32 %1353, 16
  %1357 = and i32 %1353, 65535
  %1358 = select i1 %1355, i32 %1356, i32 %1357
  %1359 = icmp eq i32 %1358, 65535
  br i1 %1359, label %1439, label %1360

; <label>:1360                                    ; preds = %1349
  %1361 = mul nuw nsw i32 %1358, 40
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = add nuw nsw i32 %1361, 12
  %1367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = add nuw nsw i32 %1361, 24
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = add nuw nsw i32 %1361, 36
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = fsub fast float %1342, %1363
  %1380 = fsub fast float %1343, %1364
  %1381 = fsub fast float %1344, %1365
  %1382 = fmul fast float %1378, %1379
  %1383 = fmul fast float %1378, %1380
  %1384 = fmul fast float %1378, %1381
  %1385 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1386 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1387 = call float @dx.op.unary.f32(i32 27, float %1384)  ; Round_ni(value)
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = fmul fast float %1388, %1368
  %1392 = fmul fast float %1389, %1369
  %1393 = fmul fast float %1390, %1370
  %1394 = shl i32 %42, 2
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = add i32 %1396, 0
  %1398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1399 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1400 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1401 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1398, %dx.types.Handle %36, float %1399, float %1400, float %1401, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = fmul fast float %1403, 1.023000e+03
  %1407 = fmul fast float %1404, 1.023000e+03
  %1408 = fmul fast float %1405, 1.023000e+03
  %1409 = fadd fast float %1406, 5.000000e-01
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = call float @dx.op.unary.f32(i32 27, float %1411)  ; Round_ni(value)
  %1415 = fsub fast float %1382, %1385
  %1416 = fsub fast float %1383, %1386
  %1417 = fsub fast float %1384, %1387
  %1418 = fmul fast float %1415, 7.500000e-01
  %1419 = fmul fast float %1416, 7.500000e-01
  %1420 = fmul fast float %1417, 7.500000e-01
  %1421 = fadd fast float %1385, 1.250000e-01
  %1422 = fadd fast float %1421, %1418
  %1423 = fadd fast float %1422, %1412
  %1424 = fadd fast float %1386, 1.250000e-01
  %1425 = fadd fast float %1424, %1419
  %1426 = fadd fast float %1425, %1413
  %1427 = fadd fast float %1387, 1.250000e-01
  %1428 = fadd fast float %1427, %1420
  %1429 = fadd fast float %1428, %1414
  %1430 = fmul fast float %1423, %1373
  %1431 = fmul fast float %1426, %1374
  %1432 = fmul fast float %1429, %1375
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1436, %dx.types.Handle %34, float %1430, float %1431, float %1432, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  br label %1439

; <label>:1439                                    ; preds = %1360, %1349
  %1440 = phi float [ %1438, %1360 ], [ -1.000000e+00, %1349 ]
  %1441 = fadd fast float %1440, %1347
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  br label %1443

; <label>:1443                                    ; preds = %1439, %1337
  %1444 = phi float [ %1442, %1439 ], [ %1347, %1337 ]
  %1445 = fmul fast float %1444, %431
  br label %1446

; <label>:1446                                    ; preds = %1443, %1332
  %1447 = phi float [ %1445, %1443 ], [ %431, %1332 ]
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 256
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1498, label %1452

; <label>:1452                                    ; preds = %1446
  %1453 = add i32 %41, 444
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1455, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1457, %dx.types.Handle %84, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = add i32 %41, 116
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = shl i32 %1462, 4
  %1464 = and i32 %1463, 32752
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = lshr i32 %1462, 7
  %1467 = and i32 %1466, 32752
  %1468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1467)  ; LegacyF16ToF32(value)
  %1469 = fsub fast float 1.000000e+00, %1447
  %1470 = call float @dx.op.binary.f32(i32 35, float %1469, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1471 = bitcast float %1447 to i32
  %1472 = sitofp i32 %1471 to float
  %1473 = fadd fast float %1472, 0xC1CFBF8940000000
  %1474 = fmul fast float %1468, %1473
  %1475 = fadd fast float %1474, 0x41CFBF8940000000
  %1476 = fptosi float %1475 to i32
  %1477 = bitcast i32 %1476 to float
  %1478 = bitcast float %1470 to i32
  %1479 = sitofp i32 %1478 to float
  %1480 = fadd fast float %1479, 0xC1CFBF8940000000
  %1481 = fmul fast float %1480, %1468
  %1482 = fadd fast float %1481, 0x41CFBF8940000000
  %1483 = fptosi float %1482 to i32
  %1484 = bitcast i32 %1483 to float
  %1485 = fmul fast float %1477, %1465
  %1486 = fmul fast float %1484, %1465
  %1487 = fsub fast float %1470, %1485
  %1488 = fadd fast float %1486, %1470
  %1489 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1490 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1491 = fsub fast float %1459, %1489
  %1492 = fsub fast float %1490, %1489
  %1493 = bitcast float %1492 to i32
  %1494 = sub nsw i32 2129859010, %1493
  %1495 = bitcast i32 %1494 to float
  %1496 = fmul fast float %1495, %1491
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  br label %1498

; <label>:1498                                    ; preds = %1452, %1446
  %1499 = phi float [ %1497, %1452 ], [ %1447, %1446 ]
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 128
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1520, label %1504

; <label>:1504                                    ; preds = %1498
  %1505 = add i32 %41, 428
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %84, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 524288
  %1515 = icmp ne i32 %1514, 0
  %1516 = fcmp fast ogt float %1511, 0x3FE0101020000000
  %1517 = select i1 %1516, float 1.000000e+00, float 0.000000e+00
  %1518 = select i1 %1515, float %1517, float %1511
  %1519 = fmul fast float %1518, %1499
  br label %1520

; <label>:1520                                    ; preds = %1504, %1498
  %1521 = phi float [ %1519, %1504 ], [ %1499, %1498 ]
  %1522 = fcmp fast ult float %1521, 0x3F70101020000000
  br i1 %1522, label %2261, label %1523

; <label>:1523                                    ; preds = %1520
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 16
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1726, label %1528

; <label>:1528                                    ; preds = %1523
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = add i32 %41, 380
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %83, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = extractvalue %dx.types.ResRet.f32 %1536, 3
  %1541 = and i32 %1530, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = lshr i32 %1530, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1540, %1542
  %1547 = fadd fast float %1546, %1545
  %1548 = fmul fast float %1547, 0x3F70101000000000
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 512
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1561, label %1553

; <label>:1553                                    ; preds = %1528
  %1554 = add i32 %41, 464
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %84, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  br label %1561

; <label>:1561                                    ; preds = %1553, %1528
  %1562 = phi float [ %1560, %1553 ], [ 1.000000e+00, %1528 ]
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 33554432
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1673, label %1567

; <label>:1567                                    ; preds = %1561
  %1568 = add i32 %41, 240
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 65535
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = lshr i32 %1570, 16
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = add i32 %41, 244
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 65535
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = lshr i32 %1581, 24
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = and i32 %1581, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1581, 8
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = lshr i32 %1581, 16
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101020000000
  %1596 = add i32 %41, 236
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = lshr i32 %1598, 24
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101020000000
  %1602 = and i32 %1598, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1598, 8
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = lshr i32 %1598, 16
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = bitcast float %1537 to i32
  %1614 = ashr i32 %1613, 1
  %1615 = sub nsw i32 1597463174, %1614
  %1616 = bitcast i32 %1615 to float
  %1617 = fmul fast float %1537, 5.000000e-01
  %1618 = fmul fast float %1616, %1616
  %1619 = fmul fast float %1618, %1617
  %1620 = fsub fast float 1.500000e+00, %1619
  %1621 = fmul fast float %1616, %1537
  %1622 = fmul fast float %1621, %1620
  %1623 = bitcast float %1538 to i32
  %1624 = ashr i32 %1623, 1
  %1625 = sub nsw i32 1597463174, %1624
  %1626 = bitcast i32 %1625 to float
  %1627 = fmul fast float %1538, 5.000000e-01
  %1628 = fmul fast float %1626, %1626
  %1629 = fmul fast float %1628, %1627
  %1630 = fsub fast float 1.500000e+00, %1629
  %1631 = fmul fast float %1626, %1538
  %1632 = fmul fast float %1631, %1630
  %1633 = bitcast float %1539 to i32
  %1634 = ashr i32 %1633, 1
  %1635 = sub nsw i32 1597463174, %1634
  %1636 = bitcast i32 %1635 to float
  %1637 = fmul fast float %1539, 5.000000e-01
  %1638 = fmul fast float %1636, %1636
  %1639 = fmul fast float %1638, %1637
  %1640 = fsub fast float 1.500000e+00, %1639
  %1641 = fmul fast float %1636, %1539
  %1642 = fmul fast float %1641, %1640
  %1643 = fsub fast float %1622, %1604
  %1644 = fsub fast float %1632, %1608
  %1645 = fsub fast float %1642, %1612
  %1646 = fmul fast float %1643, %1572
  %1647 = fmul fast float %1644, %1574
  %1648 = fmul fast float %1645, %1579
  %1649 = fadd fast float %1646, %1587
  %1650 = fadd fast float %1647, %1591
  %1651 = fadd fast float %1648, %1595
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1655 = fmul fast float %1652, %1652
  %1656 = fmul fast float %1653, %1653
  %1657 = fmul fast float %1654, %1654
  %1658 = fsub fast float %1655, %1537
  %1659 = fsub fast float %1656, %1538
  %1660 = fsub fast float %1657, %1539
  %1661 = fmul fast float %1658, %1562
  %1662 = fmul fast float %1659, %1562
  %1663 = fmul fast float %1660, %1562
  %1664 = fadd fast float %1661, %1537
  %1665 = fadd fast float %1662, %1538
  %1666 = fadd fast float %1663, %1539
  %1667 = fadd fast float %1584, %1548
  %1668 = fsub fast float %1667, %1601
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fsub fast float %1669, %1548
  %1671 = fmul fast float %1670, %1562
  %1672 = fadd fast float %1671, %1548
  br label %1726

; <label>:1673                                    ; preds = %1561
  %1674 = and i32 %1564, 134217728
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1710, label %1676

; <label>:1676                                    ; preds = %1673
  %1677 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1678 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fadd fast float %1678, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fmul fast float %1680, %1562
  %1684 = fmul fast float %1681, %1562
  %1685 = fmul fast float %1682, %1562
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fadd fast float %1684, 5.000000e-01
  %1688 = fadd fast float %1685, 5.000000e-01
  %1689 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1690 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %1539)  ; Sqrt(value)
  %1692 = fmul fast float %1686, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1689
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1689
  %1697 = fmul fast float %1687, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1690
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1690
  %1702 = fmul fast float %1688, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1691
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1691
  %1707 = fmul fast float %1696, %1696
  %1708 = fmul fast float %1701, %1701
  %1709 = fmul fast float %1706, %1706
  br label %1726

; <label>:1710                                    ; preds = %1673
  %1711 = fmul fast float %263, %263
  %1712 = fmul fast float %267, %267
  %1713 = fmul fast float %271, %271
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = fadd fast float %1713, -1.000000e+00
  %1717 = fmul fast float %1562, %1714
  %1718 = fmul fast float %1562, %1715
  %1719 = fmul fast float %1562, %1716
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fadd fast float %1718, 1.000000e+00
  %1722 = fadd fast float %1719, 1.000000e+00
  %1723 = fmul fast float %1720, %1537
  %1724 = fmul fast float %1721, %1538
  %1725 = fmul fast float %1722, %1539
  br label %1726

; <label>:1726                                    ; preds = %1710, %1676, %1567, %1523
  %1727 = phi float [ %1672, %1567 ], [ %1548, %1676 ], [ %1548, %1710 ], [ 0x3FA23C0BE0000000, %1523 ]
  %1728 = phi float [ %1664, %1567 ], [ %1707, %1676 ], [ %1723, %1710 ], [ 1.000000e+00, %1523 ]
  %1729 = phi float [ %1665, %1567 ], [ %1708, %1676 ], [ %1724, %1710 ], [ 1.000000e+00, %1523 ]
  %1730 = phi float [ %1666, %1567 ], [ %1709, %1676 ], [ %1725, %1710 ], [ 1.000000e+00, %1523 ]
  %1731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.i32 %1731, 1
  %1733 = and i32 %1732, 1
  %1734 = icmp ne i32 %1733, 0
  %1735 = add i32 %41, 356
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %1737, 32
  %1739 = icmp ne i32 %1738, 0
  %1740 = and i1 %1734, %1739
  %1741 = select i1 %1740, float 1.000000e+00, float %1728
  %1742 = select i1 %1740, float 0x3FD3333340000000, float %1729
  %1743 = select i1 %1740, float 0x3FD3333340000000, float %1730
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 32
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1820, label %1748

; <label>:1748                                    ; preds = %1726
  %1749 = add i32 %41, 108
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = add i32 %41, 396
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = add i32 %1754, 0
  %1756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1756, %dx.types.Handle %83, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = extractvalue %dx.types.ResRet.f32 %1757, 3
  %1762 = and i32 %1751, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = lshr i32 %1751, 8
  %1765 = and i32 %1764, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = lshr i32 %1751, 16
  %1768 = and i32 %1767, 255
  %1769 = uitofp i32 %1768 to float
  %1770 = fmul fast float %1769, 0x3F70101000000000
  %1771 = fmul fast float %1758, %1763
  %1772 = fadd fast float %1771, %1766
  %1773 = fmul fast float %1772, 0x3F70101000000000
  %1774 = fadd fast float %1759, -5.000000e-01
  %1775 = fadd fast float %1761, -5.000000e-01
  %1776 = fmul fast float %1774, %1770
  %1777 = fmul fast float %1775, %1770
  %1778 = fadd fast float %1776, 5.000000e-01
  %1779 = fadd fast float %1777, 5.000000e-01
  %1780 = fmul fast float %1778, 2.000000e+00
  %1781 = fadd fast float %1780, -1.000000e+00
  %1782 = fmul fast float %1779, 2.000000e+00
  %1783 = fadd fast float %1782, -1.000000e+00
  %1784 = fadd fast float %1781, %1783
  %1785 = fmul fast float %1784, 5.000000e-01
  %1786 = fsub fast float %1781, %1783
  %1787 = fmul fast float %1786, 5.000000e-01
  %1788 = call float @dx.op.unary.f32(i32 6, float %1785)  ; FAbs(value)
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = call float @dx.op.unary.f32(i32 6, float %1787)  ; FAbs(value)
  %1791 = fsub fast float %1789, %1790
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1785, float %1787, float %1791, float %1785, float %1787, float %1791)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 25, float %1792)  ; Rsqrt(value)
  %1794 = fmul fast float %1785, %1793
  %1795 = fmul fast float %1787, %1793
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 67108864
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1816, label %1800

; <label>:1800                                    ; preds = %1748
  %1801 = add i32 %41, 296
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 65535
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 65535
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = lshr i32 %1803, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fsub fast float %1773, %1811
  %1813 = fmul fast float %1812, %1805
  %1814 = fadd fast float %1813, %1809
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  br label %1816

; <label>:1816                                    ; preds = %1800, %1748
  %1817 = phi float [ %1815, %1800 ], [ %1773, %1748 ]
  %1818 = call float @dx.op.dot2.f32(i32 54, float %1794, float %1795, float %1237, float %1238)  ; Dot2(ax,ay,bx,by)
  %1819 = call float @dx.op.dot2.f32(i32 54, float %1794, float %1795, float %1239, float %1240)  ; Dot2(ax,ay,bx,by)
  br label %1820

; <label>:1820                                    ; preds = %1816, %1726
  %1821 = phi float [ %1817, %1816 ], [ 0x3FD6666660000000, %1726 ]
  %1822 = phi float [ %1818, %1816 ], [ 0.000000e+00, %1726 ]
  %1823 = phi float [ %1819, %1816 ], [ 0.000000e+00, %1726 ]
  %1824 = phi float [ %1760, %1816 ], [ 1.000000e+00, %1726 ]
  %1825 = add i32 %41, 176
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 22
  %1829 = shl nuw nsw i32 %1828, 5
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 64
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1868, label %1835

; <label>:1835                                    ; preds = %1820
  %1836 = add i32 %41, 412
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %1838, 0
  %1840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1839, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 131072
  %1844 = icmp eq i32 %1843, 0
  %1845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1840, %dx.types.Handle %83, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = fmul fast float %1846, %251
  %1850 = fmul fast float %1847, %254
  %1851 = fmul fast float %1848, %257
  br i1 %1844, label %1858, label %1852

; <label>:1852                                    ; preds = %1835
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = fmul fast float %1854, %1849
  %1856 = fmul fast float %1854, %1850
  %1857 = fmul fast float %1854, %1851
  br label %1858

; <label>:1858                                    ; preds = %1852, %1835
  %1859 = phi float [ %1855, %1852 ], [ %1849, %1835 ]
  %1860 = phi float [ %1856, %1852 ], [ %1850, %1835 ]
  %1861 = phi float [ %1857, %1852 ], [ %1851, %1835 ]
  %1862 = fmul fast float %1859, %1830
  %1863 = select i1 %203, float %1862, float %1859
  %1864 = call float @dx.op.dot3.f32(i32 55, float %1863, float %1860, float %1861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1865 = select i1 %203, float 0.000000e+00, float %1859
  %1866 = select i1 %203, float %1864, float %1860
  %1867 = select i1 %203, float 0.000000e+00, float %1861
  br label %1868

; <label>:1868                                    ; preds = %1858, %1820
  %1869 = phi float [ %1865, %1858 ], [ 0.000000e+00, %1820 ]
  %1870 = phi float [ %1866, %1858 ], [ 0.000000e+00, %1820 ]
  %1871 = phi float [ %1867, %1858 ], [ 0.000000e+00, %1820 ]
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 1024
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1906, label %1876

; <label>:1876                                    ; preds = %1868
  %1877 = add i32 %41, 168
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 255
  %1881 = uitofp i32 %1880 to float
  %1882 = fmul fast float %1881, 0x3F70101020000000
  %1883 = lshr i32 %1879, 8
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1885, 0x3F70101020000000
  %1887 = lshr i32 %1879, 16
  %1888 = and i32 %1887, 255
  %1889 = uitofp i32 %1888 to float
  %1890 = fmul fast float %1889, 0x3F70101020000000
  %1891 = fmul fast float %1882, %1882
  %1892 = fmul fast float %1886, %1886
  %1893 = fmul fast float %1890, %1890
  %1894 = add i32 %41, 480
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1898, %dx.types.Handle %84, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = fmul fast float %1891, %1900
  %1904 = fmul fast float %1892, %1901
  %1905 = fmul fast float %1893, %1902
  br label %1906

; <label>:1906                                    ; preds = %1876, %1868
  %1907 = phi float [ %1903, %1876 ], [ 0.000000e+00, %1868 ]
  %1908 = phi float [ %1904, %1876 ], [ 0.000000e+00, %1868 ]
  %1909 = phi float [ %1905, %1876 ], [ 0.000000e+00, %1868 ]
  %1910 = fcmp fast ogt float %1907, 0.000000e+00
  %1911 = fcmp fast ogt float %1908, 0.000000e+00
  %1912 = fcmp fast ogt float %1909, 0.000000e+00
  %1913 = call float @dx.op.unary.f32(i32 23, float %1907)  ; Log(value)
  %1914 = call float @dx.op.unary.f32(i32 23, float %1908)  ; Log(value)
  %1915 = call float @dx.op.unary.f32(i32 23, float %1909)  ; Log(value)
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = lshr i32 %1917, 7
  %1919 = and i32 %1918, 32752
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fmul fast float %1913, 0xBFE62E4300000000
  %1922 = fmul fast float %1921, %1920
  %1923 = fmul fast float %1914, 0xBFE62E4300000000
  %1924 = fmul fast float %1923, %1920
  %1925 = fmul fast float %1915, 0xBFE62E4300000000
  %1926 = fmul fast float %1925, %1920
  %1927 = select i1 %1910, float %1922, float 1.270000e+02
  %1928 = select i1 %1911, float %1924, float 1.270000e+02
  %1929 = select i1 %1912, float %1926, float 1.270000e+02
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 10240
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1978, label %1934

; <label>:1934                                    ; preds = %1906
  %1935 = add i32 %41, 496
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1939, %dx.types.Handle %84, float %1333, float %1334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 3
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 1048576
  %1946 = icmp ne i32 %1945, 0
  %1947 = and i32 %1944, 8192
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1964, label %1949

; <label>:1949                                    ; preds = %1934
  %1950 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1951 = select i1 %1946, float %1950, float %1941
  %1952 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1953 = select i1 %1946, float %1952, float %1941
  %1954 = add i32 %41, 112
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = lshr i32 %1956, 16
  %1958 = and i32 %1957, 255
  %1959 = uitofp i32 %1958 to float
  %1960 = fmul fast float %1959, 0x3F80101020000000
  %1961 = fmul fast float %1960, %1953
  %1962 = fmul fast float %1960, %1941
  %1963 = fmul fast float %1960, %1951
  br label %1964

; <label>:1964                                    ; preds = %1949, %1934
  %1965 = phi float [ %1961, %1949 ], [ 0.000000e+00, %1934 ]
  %1966 = phi float [ %1962, %1949 ], [ 0.000000e+00, %1934 ]
  %1967 = phi float [ %1963, %1949 ], [ 0.000000e+00, %1934 ]
  %1968 = and i32 %1944, 2048
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1978, label %1970

; <label>:1970                                    ; preds = %1964
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = shl i32 %1972, 4
  %1974 = and i32 %1973, 32752
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = fmul fast float %1975, %1942
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1978

; <label>:1978                                    ; preds = %1970, %1964, %1906
  %1979 = phi float [ %1965, %1970 ], [ %1965, %1964 ], [ 0.000000e+00, %1906 ]
  %1980 = phi float [ %1966, %1970 ], [ %1966, %1964 ], [ 0.000000e+00, %1906 ]
  %1981 = phi float [ %1967, %1970 ], [ %1967, %1964 ], [ 0.000000e+00, %1906 ]
  %1982 = phi float [ %1977, %1970 ], [ 0x3F70101020000000, %1964 ], [ 0x3F70101020000000, %1906 ]
  %1983 = add i32 %41, 112
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 255
  %1987 = uitofp i32 %1986 to float
  %1988 = lshr i32 %1985, 8
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = fmul fast float %1990, %1991
  %1993 = fadd fast float %1992, %1987
  %1994 = fmul fast float %1993, 0x3F70101020000000
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  br i1 %1225, label %1996, label %2031

; <label>:1996                                    ; preds = %1978
  %1997 = fmul fast float %1982, 2.000000e+00
  %1998 = fcmp fast olt float %1927, 1.270000e+02
  %1999 = fcmp fast olt float %1928, 1.270000e+02
  %2000 = fcmp fast olt float %1929, 1.270000e+02
  %2001 = fmul fast float %1927, 0xBFF7154760000000
  %2002 = fmul fast float %2001, %1997
  %2003 = fmul fast float %1928, 0xBFF7154760000000
  %2004 = fmul fast float %2003, %1997
  %2005 = fmul fast float %1929, 0xBFF7154760000000
  %2006 = fmul fast float %2005, %1997
  %2007 = call float @dx.op.unary.f32(i32 21, float %2002)  ; Exp(value)
  %2008 = call float @dx.op.unary.f32(i32 21, float %2004)  ; Exp(value)
  %2009 = call float @dx.op.unary.f32(i32 21, float %2006)  ; Exp(value)
  %2010 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2011 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2012 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2013 = fadd fast float %2010, -1.000000e+00
  %2014 = select i1 %1998, float %2013, float -1.000000e+00
  %2015 = fadd fast float %2011, -1.000000e+00
  %2016 = select i1 %1999, float %2015, float -1.000000e+00
  %2017 = fadd fast float %2012, -1.000000e+00
  %2018 = select i1 %2000, float %2017, float -1.000000e+00
  %2019 = fmul fast float %2014, %1521
  %2020 = fmul fast float %2016, %1521
  %2021 = fmul fast float %2018, %1521
  %2022 = fadd fast float %2019, 1.000000e+00
  %2023 = fadd fast float %2020, 1.000000e+00
  %2024 = fadd fast float %2021, 1.000000e+00
  %2025 = fmul fast float %2022, %1206
  %2026 = fmul fast float %2023, %1207
  %2027 = fmul fast float %2024, %1208
  %2028 = fmul fast float %2022, %1209
  %2029 = fmul fast float %2023, %1210
  %2030 = fmul fast float %2024, %1211
  br label %2031

; <label>:2031                                    ; preds = %1996, %1978
  %2032 = phi float [ %2025, %1996 ], [ %1206, %1978 ]
  %2033 = phi float [ %2026, %1996 ], [ %1207, %1978 ]
  %2034 = phi float [ %2027, %1996 ], [ %1208, %1978 ]
  %2035 = phi float [ %2028, %1996 ], [ %1209, %1978 ]
  %2036 = phi float [ %2029, %1996 ], [ %1210, %1978 ]
  %2037 = phi float [ %2030, %1996 ], [ %1211, %1978 ]
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 3
  %2041 = icmp eq i32 %2040, 3
  br i1 %2041, label %2120, label %2042

; <label>:2042                                    ; preds = %2031
  %2043 = and i32 %2039, 16
  %2044 = icmp ne i32 %2043, 0
  %2045 = select i1 %2044, float %1521, float 0.000000e+00
  %2046 = icmp eq i32 %2040, 0
  br i1 %2046, label %2047, label %2075

; <label>:2047                                    ; preds = %2042
  %2048 = and i32 %2039, 64
  %2049 = icmp ne i32 %2048, 0
  %2050 = select i1 %2049, float %1521, float 0.000000e+00
  %2051 = fsub fast float %1741, %2032
  %2052 = fsub fast float %1742, %2033
  %2053 = fsub fast float %1743, %2034
  %2054 = fmul fast float %2045, %2051
  %2055 = fmul fast float %2045, %2052
  %2056 = fmul fast float %2045, %2053
  %2057 = fadd fast float %2054, %2032
  %2058 = fadd fast float %2055, %2033
  %2059 = fadd fast float %2056, %2034
  %2060 = fsub fast float %1727, %1218
  %2061 = fmul fast float %2045, %2060
  %2062 = fadd fast float %2061, %1218
  %2063 = fsub fast float %1869, %2035
  %2064 = fsub fast float %1870, %2036
  %2065 = fsub fast float %1871, %2037
  %2066 = fmul fast float %2050, %2063
  %2067 = fmul fast float %2050, %2064
  %2068 = fmul fast float %2050, %2065
  %2069 = fadd fast float %2066, %2035
  %2070 = fadd fast float %2067, %2036
  %2071 = fadd fast float %2068, %2037
  %2072 = fsub fast float %1995, %1223
  %2073 = fmul fast float %2045, %2072
  %2074 = fadd fast float %2073, %1223
  br label %2120

; <label>:2075                                    ; preds = %2042
  %2076 = icmp eq i32 %2040, 1
  br i1 %2076, label %2077, label %2090

; <label>:2077                                    ; preds = %2075
  %2078 = fadd fast float %1741, -1.000000e+00
  %2079 = fadd fast float %1742, -1.000000e+00
  %2080 = fadd fast float %1743, -1.000000e+00
  %2081 = fmul fast float %2045, %2078
  %2082 = fmul fast float %2045, %2079
  %2083 = fmul fast float %2045, %2080
  %2084 = fadd fast float %2081, 1.000000e+00
  %2085 = fadd fast float %2082, 1.000000e+00
  %2086 = fadd fast float %2083, 1.000000e+00
  %2087 = fmul fast float %2084, %2032
  %2088 = fmul fast float %2085, %2033
  %2089 = fmul fast float %2086, %2034
  br label %2120

; <label>:2090                                    ; preds = %2075
  %2091 = icmp eq i32 %2040, 2
  br i1 %2091, label %2092, label %2120

; <label>:2092                                    ; preds = %2090
  %2093 = call float @dx.op.unary.f32(i32 24, float %1741)  ; Sqrt(value)
  %2094 = call float @dx.op.unary.f32(i32 24, float %1742)  ; Sqrt(value)
  %2095 = call float @dx.op.unary.f32(i32 24, float %1743)  ; Sqrt(value)
  %2096 = fadd fast float %2093, -5.000000e-01
  %2097 = fadd fast float %2094, -5.000000e-01
  %2098 = fadd fast float %2095, -5.000000e-01
  %2099 = fmul fast float %2096, %2045
  %2100 = fmul fast float %2097, %2045
  %2101 = fmul fast float %2098, %2045
  %2102 = fadd fast float %2099, 5.000000e-01
  %2103 = fadd fast float %2100, 5.000000e-01
  %2104 = fadd fast float %2101, 5.000000e-01
  %2105 = fmul fast float %2102, 2.000000e+00
  %2106 = fsub fast float 1.000000e+00, %2105
  %2107 = fmul fast float %2106, %2032
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2032
  %2110 = fmul fast float %2103, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2033
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2033
  %2115 = fmul fast float %2104, 2.000000e+00
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = fmul fast float %2116, %2034
  %2118 = fadd fast float %2117, %2115
  %2119 = fmul fast float %2118, %2034
  br label %2120

; <label>:2120                                    ; preds = %2092, %2090, %2077, %2047, %2031
  %2121 = phi float [ %2032, %2031 ], [ %2109, %2092 ], [ %2032, %2090 ], [ %2087, %2077 ], [ %2057, %2047 ]
  %2122 = phi float [ %2033, %2031 ], [ %2114, %2092 ], [ %2033, %2090 ], [ %2088, %2077 ], [ %2058, %2047 ]
  %2123 = phi float [ %2034, %2031 ], [ %2119, %2092 ], [ %2034, %2090 ], [ %2089, %2077 ], [ %2059, %2047 ]
  %2124 = phi float [ %2035, %2031 ], [ %2035, %2092 ], [ %2035, %2090 ], [ %2035, %2077 ], [ %2069, %2047 ]
  %2125 = phi float [ %2036, %2031 ], [ %2036, %2092 ], [ %2036, %2090 ], [ %2036, %2077 ], [ %2070, %2047 ]
  %2126 = phi float [ %2037, %2031 ], [ %2037, %2092 ], [ %2037, %2090 ], [ %2037, %2077 ], [ %2071, %2047 ]
  %2127 = phi float [ %1218, %2031 ], [ %1218, %2092 ], [ %1218, %2090 ], [ %1218, %2077 ], [ %2062, %2047 ]
  %2128 = phi float [ %1223, %2031 ], [ %1223, %2092 ], [ %1223, %2090 ], [ %1223, %2077 ], [ %2074, %2047 ]
  %2129 = and i32 %2039, 12
  %2130 = icmp eq i32 %2129, 12
  br i1 %2130, label %2261, label %2131

; <label>:2131                                    ; preds = %2120
  %2132 = and i32 %2039, 2097184
  %2133 = icmp eq i32 %2132, 2097184
  %2134 = select i1 %2133, float %1521, float 0.000000e+00
  %2135 = and i32 %2039, 4194336
  %2136 = icmp eq i32 %2135, 4194336
  %2137 = select i1 %2136, float %1521, float 0.000000e+00
  %2138 = and i32 %2039, 8388640
  %2139 = icmp eq i32 %2138, 8388640
  %2140 = select i1 %2139, float %1521, float 0.000000e+00
  %2141 = and i32 %2039, 1024
  %2142 = icmp ne i32 %2141, 0
  %2143 = select i1 %2142, float %1521, float 0.000000e+00
  %2144 = and i32 %2039, 2048
  %2145 = icmp ne i32 %2144, 0
  %2146 = select i1 %2145, float %1521, float 0.000000e+00
  %2147 = and i32 %2039, 8192
  %2148 = icmp ne i32 %2147, 0
  %2149 = select i1 %2148, float %1521, float 0.000000e+00
  %2150 = icmp eq i32 %2129, 0
  br i1 %2150, label %2151, label %2185

; <label>:2151                                    ; preds = %2131
  %2152 = fsub fast float %1822, %1204
  %2153 = fsub fast float %1823, %1205
  %2154 = fmul fast float %2134, %2152
  %2155 = fmul fast float %2134, %2153
  %2156 = fadd fast float %2154, %1204
  %2157 = fadd fast float %2155, %1205
  %2158 = fsub fast float %1824, %1221
  %2159 = fmul fast float %2137, %2158
  %2160 = fadd fast float %2159, %1221
  %2161 = fsub fast float %1821, %1220
  %2162 = fmul fast float %2140, %2161
  %2163 = fadd fast float %2162, %1220
  %2164 = fsub fast float %1927, %1215
  %2165 = fsub fast float %1928, %1216
  %2166 = fsub fast float %1929, %1217
  %2167 = fmul fast float %2143, %2164
  %2168 = fmul fast float %2143, %2165
  %2169 = fmul fast float %2143, %2166
  %2170 = fadd fast float %2167, %1215
  %2171 = fadd fast float %2168, %1216
  %2172 = fadd fast float %2169, %1217
  %2173 = fsub fast float %1982, %1222
  %2174 = fmul fast float %2146, %2173
  %2175 = fadd fast float %2174, %1222
  %2176 = fsub fast float %1979, %1212
  %2177 = fsub fast float %1980, %1213
  %2178 = fsub fast float %1981, %1214
  %2179 = fmul fast float %2149, %2176
  %2180 = fmul fast float %2149, %2177
  %2181 = fmul fast float %2149, %2178
  %2182 = fadd fast float %2179, %1212
  %2183 = fadd fast float %2180, %1213
  %2184 = fadd fast float %2181, %1214
  br label %2261

; <label>:2185                                    ; preds = %2131
  %2186 = icmp eq i32 %2129, 4
  br i1 %2186, label %2187, label %2233

; <label>:2187                                    ; preds = %2185
  %2188 = fmul fast float %2134, %1822
  %2189 = fmul fast float %2134, %1823
  %2190 = fadd fast float %2188, %1204
  %2191 = fadd fast float %2189, %1205
  %2192 = call float @dx.op.binary.f32(i32 36, float %1221, float %1824)  ; FMin(a,b)
  %2193 = fsub fast float %2192, %1221
  %2194 = fmul fast float %2193, %2137
  %2195 = fadd fast float %2194, %1221
  %2196 = fadd fast float %1821, %1220
  %2197 = fmul fast float %2196, 0x3FF337FAE0000000
  %2198 = fmul fast float %1220, %1220
  %2199 = fmul fast float %1821, %1821
  %2200 = fadd fast float %2199, %2198
  %2201 = fmul fast float %2200, 0x3FE5152B00000000
  %2202 = fmul fast float %1220, 0xBFCC1F85E0000000
  %2203 = fmul fast float %2202, %1821
  %2204 = fadd fast float %2203, 0xBFE1363700000000
  %2205 = fadd fast float %2204, %2197
  %2206 = fsub fast float %2205, %2201
  %2207 = fmul fast float %2196, 0x3FBA6F0D00000000
  %2208 = fmul fast float %2200, 0x3FD0432880000000
  %2209 = fmul fast float %1220, 0xBFEF110800000000
  %2210 = fmul fast float %2209, %1821
  %2211 = fadd fast float %2210, 1.000000e+00
  %2212 = fsub fast float %2211, %2207
  %2213 = fadd fast float %2212, %2208
  %2214 = fdiv fast float %2206, %2213
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = fsub fast float %2215, %1220
  %2217 = fmul fast float %2216, %2140
  %2218 = fadd fast float %2217, %1220
  %2219 = fmul fast float %2143, %1927
  %2220 = fmul fast float %2143, %1928
  %2221 = fmul fast float %2143, %1929
  %2222 = fadd fast float %2219, %1215
  %2223 = fadd fast float %2220, %1216
  %2224 = fadd fast float %2221, %1217
  %2225 = fmul fast float %2146, %1982
  %2226 = fadd fast float %2225, %1222
  %2227 = fmul fast float %2149, %1979
  %2228 = fmul fast float %2149, %1980
  %2229 = fmul fast float %2149, %1981
  %2230 = fadd fast float %2227, %1212
  %2231 = fadd fast float %2228, %1213
  %2232 = fadd fast float %2229, %1214
  br label %2261

; <label>:2233                                    ; preds = %2185
  %2234 = icmp eq i32 %2129, 8
  br i1 %2234, label %2235, label %2261

; <label>:2235                                    ; preds = %2233
  %2236 = fmul fast float %2134, %1822
  %2237 = fmul fast float %2134, %1823
  %2238 = fadd fast float %2236, %1204
  %2239 = fadd fast float %2237, %1205
  %2240 = call float @dx.op.binary.f32(i32 36, float %1221, float %1824)  ; FMin(a,b)
  %2241 = fsub fast float %2240, %1221
  %2242 = fmul fast float %2241, %2137
  %2243 = fadd fast float %2242, %1221
  %2244 = fsub fast float %1821, %1220
  %2245 = fmul fast float %2140, %2244
  %2246 = fadd fast float %2245, %1220
  %2247 = fmul fast float %2143, %1927
  %2248 = fmul fast float %2143, %1928
  %2249 = fmul fast float %2143, %1929
  %2250 = fadd fast float %2247, %1215
  %2251 = fadd fast float %2248, %1216
  %2252 = fadd fast float %2249, %1217
  %2253 = fmul fast float %2146, %1982
  %2254 = fadd fast float %2253, %1222
  %2255 = fmul fast float %2149, %1979
  %2256 = fmul fast float %2149, %1980
  %2257 = fmul fast float %2149, %1981
  %2258 = fadd fast float %2255, %1212
  %2259 = fadd fast float %2256, %1213
  %2260 = fadd fast float %2257, %1214
  br label %2261

; <label>:2261                                    ; preds = %2235, %2233, %2187, %2151, %2120, %1520, %1224, %1203
  %2262 = phi float [ %1204, %2120 ], [ %1204, %1520 ], [ %1204, %1203 ], [ %2238, %2235 ], [ %1204, %2233 ], [ %2190, %2187 ], [ %2156, %2151 ], [ %1204, %1224 ]
  %2263 = phi float [ %1205, %2120 ], [ %1205, %1520 ], [ %1205, %1203 ], [ %2239, %2235 ], [ %1205, %2233 ], [ %2191, %2187 ], [ %2157, %2151 ], [ %1205, %1224 ]
  %2264 = phi float [ %2121, %2120 ], [ %1206, %1520 ], [ %1206, %1203 ], [ %2121, %2235 ], [ %2121, %2233 ], [ %2121, %2187 ], [ %2121, %2151 ], [ %1206, %1224 ]
  %2265 = phi float [ %2122, %2120 ], [ %1207, %1520 ], [ %1207, %1203 ], [ %2122, %2235 ], [ %2122, %2233 ], [ %2122, %2187 ], [ %2122, %2151 ], [ %1207, %1224 ]
  %2266 = phi float [ %2123, %2120 ], [ %1208, %1520 ], [ %1208, %1203 ], [ %2123, %2235 ], [ %2123, %2233 ], [ %2123, %2187 ], [ %2123, %2151 ], [ %1208, %1224 ]
  %2267 = phi float [ %2124, %2120 ], [ %1209, %1520 ], [ %1209, %1203 ], [ %2124, %2235 ], [ %2124, %2233 ], [ %2124, %2187 ], [ %2124, %2151 ], [ %1209, %1224 ]
  %2268 = phi float [ %2125, %2120 ], [ %1210, %1520 ], [ %1210, %1203 ], [ %2125, %2235 ], [ %2125, %2233 ], [ %2125, %2187 ], [ %2125, %2151 ], [ %1210, %1224 ]
  %2269 = phi float [ %2126, %2120 ], [ %1211, %1520 ], [ %1211, %1203 ], [ %2126, %2235 ], [ %2126, %2233 ], [ %2126, %2187 ], [ %2126, %2151 ], [ %1211, %1224 ]
  %2270 = phi float [ %1212, %2120 ], [ %1212, %1520 ], [ %1212, %1203 ], [ %2258, %2235 ], [ %1212, %2233 ], [ %2230, %2187 ], [ %2182, %2151 ], [ %1212, %1224 ]
  %2271 = phi float [ %1213, %2120 ], [ %1213, %1520 ], [ %1213, %1203 ], [ %2259, %2235 ], [ %1213, %2233 ], [ %2231, %2187 ], [ %2183, %2151 ], [ %1213, %1224 ]
  %2272 = phi float [ %1214, %2120 ], [ %1214, %1520 ], [ %1214, %1203 ], [ %2260, %2235 ], [ %1214, %2233 ], [ %2232, %2187 ], [ %2184, %2151 ], [ %1214, %1224 ]
  %2273 = phi float [ %1215, %2120 ], [ %1215, %1520 ], [ %1215, %1203 ], [ %2250, %2235 ], [ %1215, %2233 ], [ %2222, %2187 ], [ %2170, %2151 ], [ %1215, %1224 ]
  %2274 = phi float [ %1216, %2120 ], [ %1216, %1520 ], [ %1216, %1203 ], [ %2251, %2235 ], [ %1216, %2233 ], [ %2223, %2187 ], [ %2171, %2151 ], [ %1216, %1224 ]
  %2275 = phi float [ %1217, %2120 ], [ %1217, %1520 ], [ %1217, %1203 ], [ %2252, %2235 ], [ %1217, %2233 ], [ %2224, %2187 ], [ %2172, %2151 ], [ %1217, %1224 ]
  %2276 = phi float [ %2127, %2120 ], [ %1218, %1520 ], [ %1218, %1203 ], [ %2127, %2235 ], [ %2127, %2233 ], [ %2127, %2187 ], [ %2127, %2151 ], [ %1218, %1224 ]
  %2277 = phi float [ %1220, %2120 ], [ %1220, %1520 ], [ %1220, %1203 ], [ %2246, %2235 ], [ %1220, %2233 ], [ %2218, %2187 ], [ %2163, %2151 ], [ %1220, %1224 ]
  %2278 = phi float [ %1221, %2120 ], [ %1221, %1520 ], [ %1221, %1203 ], [ %2243, %2235 ], [ %1221, %2233 ], [ %2195, %2187 ], [ %2160, %2151 ], [ %1221, %1224 ]
  %2279 = phi float [ %1222, %2120 ], [ %1222, %1520 ], [ %1222, %1203 ], [ %2254, %2235 ], [ %1222, %2233 ], [ %2226, %2187 ], [ %2175, %2151 ], [ %1222, %1224 ]
  %2280 = phi float [ %2128, %2120 ], [ %1223, %1520 ], [ %1223, %1203 ], [ %2128, %2235 ], [ %2128, %2233 ], [ %2128, %2187 ], [ %2128, %2151 ], [ %1223, %1224 ]
  br i1 %378, label %3318, label %2281

; <label>:2281                                    ; preds = %2261
  %2282 = icmp ult i32 %434, 3
  %2283 = add i32 %41, 56
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = add i32 %41, 60
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = or i32 %2288, %2285
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %3318, label %2291

; <label>:2291                                    ; preds = %2281
  %2292 = and i32 %2285, 262144
  %2293 = icmp ne i32 %2292, 0
  %2294 = select i1 %2293, float %44, float 1.000000e+00
  %2295 = select i1 %2293, float %45, float 0.000000e+00
  %2296 = select i1 %2293, float %46, float 0.000000e+00
  %2297 = select i1 %2293, float %47, float 1.000000e+00
  %2298 = select i1 %2293, float %48, float %69
  %2299 = select i1 %2293, float %49, float %70
  %2300 = add i32 %41, 316
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = lshr i32 %2302, 16
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = fmul fast float %2304, 0x3F50624DE0000000
  %2306 = add i32 %41, 120
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = lshr i32 %2308, 16
  %2310 = and i32 %2309, 255
  %2311 = lshr i32 %2308, 24
  %2312 = add i32 %41, 324
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 65535
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = lshr i32 %2314, 16
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = add i32 %41, 64
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = lshr i32 %2321, 22
  %2323 = shl nuw nsw i32 %2322, 5
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = shl i32 %2321, 4
  %2326 = and i32 %2325, 32752
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = lshr i32 %2321, 7
  %2329 = and i32 %2328, 32752
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2333 = fmul fast float %2332, 1.000000e+03
  %2334 = fmul fast float %328, %2333
  %2335 = call float @dx.op.unary.f32(i32 22, float %2334)  ; Frc(value)
  %2336 = fadd fast float %2335, %318
  %2337 = fmul fast float %329, %2333
  %2338 = call float @dx.op.unary.f32(i32 22, float %2337)  ; Frc(value)
  %2339 = fadd fast float %2338, %320
  %2340 = fmul fast float %2305, %2333
  %2341 = call float @dx.op.unary.f32(i32 22, float %2340)  ; Frc(value)
  %2342 = fmul fast float %2341, 0x401921FB60000000
  %2343 = fadd fast float %2342, %2324
  %2344 = call float @dx.op.unary.f32(i32 13, float %2343)  ; Sin(value)
  %2345 = call float @dx.op.unary.f32(i32 12, float %2343)  ; Cos(value)
  %2346 = fsub fast float -0.000000e+00, %2344
  %2347 = fadd fast float %2298, -5.000000e-01
  %2348 = fadd fast float %2299, -5.000000e-01
  %2349 = fmul fast float %2316, %2347
  %2350 = fmul fast float %2318, %2348
  %2351 = fadd fast float %2349, 5.000000e-01
  %2352 = fadd fast float %2350, 5.000000e-01
  %2353 = fmul fast float %2327, %2351
  %2354 = fmul fast float %2330, %2352
  %2355 = fmul fast float %2345, %2353
  %2356 = call float @dx.op.tertiary.f32(i32 46, float %2346, float %2354, float %2355)  ; FMad(a,b,c)
  %2357 = fmul fast float %2344, %2353
  %2358 = call float @dx.op.tertiary.f32(i32 46, float %2345, float %2354, float %2357)  ; FMad(a,b,c)
  %2359 = fadd fast float %2336, %2356
  %2360 = fadd fast float %2339, %2358
  %2361 = icmp ugt i32 %2310, 1
  %2362 = icmp ugt i32 %2308, 33554431
  %2363 = or i1 %2362, %2361
  br i1 %2363, label %2364, label %2389

; <label>:2364                                    ; preds = %2291
  %2365 = add i32 %41, 260
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = lshr i32 %2367, 16
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = fmul fast float %2332, %2369
  %2371 = call float @dx.op.unary.f32(i32 22, float %2370)  ; Frc(value)
  %2372 = mul nuw nsw i32 %2310, %2311
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2371, %2373
  %2375 = call float @dx.op.unary.f32(i32 27, float %2374)  ; Round_ni(value)
  %2376 = fptoui float %2375 to i32
  %2377 = urem i32 %2376, %2310
  %2378 = udiv i32 %2376, %2311
  %2379 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2380 = call float @dx.op.unary.f32(i32 22, float %2360)  ; Frc(value)
  %2381 = uitofp i32 %2377 to float
  %2382 = uitofp i32 %2378 to float
  %2383 = fadd fast float %2379, %2381
  %2384 = fadd fast float %2380, %2382
  %2385 = uitofp i32 %2310 to float
  %2386 = uitofp i32 %2311 to float
  %2387 = fdiv fast float %2383, %2385
  %2388 = fdiv fast float %2384, %2386
  br label %2389

; <label>:2389                                    ; preds = %2364, %2291
  %2390 = phi float [ %2387, %2364 ], [ %2359, %2291 ]
  %2391 = phi float [ %2388, %2364 ], [ %2360, %2291 ]
  %2392 = and i32 %2285, 16777216
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2503, label %2394

; <label>:2394                                    ; preds = %2389
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.CBufRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2399 = fadd fast float %2396, %142
  %2400 = fadd fast float %2397, %143
  %2401 = fadd fast float %2398, %144
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = icmp eq i32 %42, 65535
  br i1 %2405, label %2500, label %2406

; <label>:2406                                    ; preds = %2394
  %2407 = lshr i32 %42, 1
  %2408 = shl i32 %2407, 2
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %42, 1
  %2412 = icmp ne i32 %2411, 0
  %2413 = lshr i32 %2410, 16
  %2414 = and i32 %2410, 65535
  %2415 = select i1 %2412, i32 %2413, i32 %2414
  %2416 = icmp eq i32 %2415, 65535
  br i1 %2416, label %2496, label %2417

; <label>:2417                                    ; preds = %2406
  %2418 = mul nuw nsw i32 %2415, 40
  %2419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = add nuw nsw i32 %2418, 12
  %2424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.ResRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.ResRet.f32 %2424, 2
  %2428 = add nuw nsw i32 %2418, 24
  %2429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = add nuw nsw i32 %2418, 36
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = fsub fast float %2399, %2420
  %2437 = fsub fast float %2400, %2421
  %2438 = fsub fast float %2401, %2422
  %2439 = fmul fast float %2435, %2436
  %2440 = fmul fast float %2435, %2437
  %2441 = fmul fast float %2435, %2438
  %2442 = call float @dx.op.unary.f32(i32 27, float %2439)  ; Round_ni(value)
  %2443 = call float @dx.op.unary.f32(i32 27, float %2440)  ; Round_ni(value)
  %2444 = call float @dx.op.unary.f32(i32 27, float %2441)  ; Round_ni(value)
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = fadd fast float %2443, 5.000000e-01
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = fmul fast float %2445, %2425
  %2449 = fmul fast float %2446, %2426
  %2450 = fmul fast float %2447, %2427
  %2451 = shl i32 %42, 2
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = add i32 %2453, 0
  %2455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2456 = call float @dx.op.unary.f32(i32 22, float %2448)  ; Frc(value)
  %2457 = call float @dx.op.unary.f32(i32 22, float %2449)  ; Frc(value)
  %2458 = call float @dx.op.unary.f32(i32 22, float %2450)  ; Frc(value)
  %2459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2455, %dx.types.Handle %36, float %2456, float %2457, float %2458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = fmul fast float %2460, 1.023000e+03
  %2464 = fmul fast float %2461, 1.023000e+03
  %2465 = fmul fast float %2462, 1.023000e+03
  %2466 = fadd fast float %2463, 5.000000e-01
  %2467 = fadd fast float %2464, 5.000000e-01
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = call float @dx.op.unary.f32(i32 27, float %2467)  ; Round_ni(value)
  %2471 = call float @dx.op.unary.f32(i32 27, float %2468)  ; Round_ni(value)
  %2472 = fsub fast float %2439, %2442
  %2473 = fsub fast float %2440, %2443
  %2474 = fsub fast float %2441, %2444
  %2475 = fmul fast float %2472, 7.500000e-01
  %2476 = fmul fast float %2473, 7.500000e-01
  %2477 = fmul fast float %2474, 7.500000e-01
  %2478 = fadd fast float %2442, 1.250000e-01
  %2479 = fadd fast float %2478, %2475
  %2480 = fadd fast float %2479, %2469
  %2481 = fadd fast float %2443, 1.250000e-01
  %2482 = fadd fast float %2481, %2476
  %2483 = fadd fast float %2482, %2470
  %2484 = fadd fast float %2444, 1.250000e-01
  %2485 = fadd fast float %2484, %2477
  %2486 = fadd fast float %2485, %2471
  %2487 = fmul fast float %2480, %2430
  %2488 = fmul fast float %2483, %2431
  %2489 = fmul fast float %2486, %2432
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = add i32 %2491, 0
  %2493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2493, %dx.types.Handle %34, float %2487, float %2488, float %2489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  br label %2496

; <label>:2496                                    ; preds = %2417, %2406
  %2497 = phi float [ %2495, %2417 ], [ -1.000000e+00, %2406 ]
  %2498 = fadd fast float %2497, %2404
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  br label %2500

; <label>:2500                                    ; preds = %2496, %2394
  %2501 = phi float [ %2499, %2496 ], [ %2404, %2394 ]
  %2502 = fmul fast float %2501, %430
  br label %2503

; <label>:2503                                    ; preds = %2500, %2389
  %2504 = phi float [ %2502, %2500 ], [ %430, %2389 ]
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = and i32 %2506, 256
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2555, label %2509

; <label>:2509                                    ; preds = %2503
  %2510 = add i32 %41, 448
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = add i32 %2512, 0
  %2514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2514, %dx.types.Handle %84, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 0
  %2517 = add i32 %41, 132
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = shl i32 %2519, 4
  %2521 = and i32 %2520, 32752
  %2522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2521)  ; LegacyF16ToF32(value)
  %2523 = lshr i32 %2519, 7
  %2524 = and i32 %2523, 32752
  %2525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2524)  ; LegacyF16ToF32(value)
  %2526 = fsub fast float 1.000000e+00, %2504
  %2527 = call float @dx.op.binary.f32(i32 35, float %2526, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2528 = bitcast float %2504 to i32
  %2529 = sitofp i32 %2528 to float
  %2530 = fadd fast float %2529, 0xC1CFBF8940000000
  %2531 = fmul fast float %2525, %2530
  %2532 = fadd fast float %2531, 0x41CFBF8940000000
  %2533 = fptosi float %2532 to i32
  %2534 = bitcast i32 %2533 to float
  %2535 = bitcast float %2527 to i32
  %2536 = sitofp i32 %2535 to float
  %2537 = fadd fast float %2536, 0xC1CFBF8940000000
  %2538 = fmul fast float %2537, %2525
  %2539 = fadd fast float %2538, 0x41CFBF8940000000
  %2540 = fptosi float %2539 to i32
  %2541 = bitcast i32 %2540 to float
  %2542 = fmul fast float %2534, %2522
  %2543 = fmul fast float %2541, %2522
  %2544 = fsub fast float %2527, %2542
  %2545 = fadd fast float %2543, %2527
  %2546 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2547 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2548 = fsub fast float %2516, %2546
  %2549 = fsub fast float %2547, %2546
  %2550 = bitcast float %2549 to i32
  %2551 = sub nsw i32 2129859010, %2550
  %2552 = bitcast i32 %2551 to float
  %2553 = fmul fast float %2552, %2548
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  br label %2555

; <label>:2555                                    ; preds = %2509, %2503
  %2556 = phi float [ %2554, %2509 ], [ %2504, %2503 ]
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 128
  %2560 = icmp eq i32 %2559, 0
  br i1 %2560, label %2577, label %2561

; <label>:2561                                    ; preds = %2555
  %2562 = add i32 %41, 432
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = add i32 %2564, 0
  %2566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2566, %dx.types.Handle %84, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 0
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 524288
  %2572 = icmp ne i32 %2571, 0
  %2573 = fcmp fast ogt float %2568, 0x3FE0101020000000
  %2574 = select i1 %2573, float 1.000000e+00, float 0.000000e+00
  %2575 = select i1 %2572, float %2574, float %2568
  %2576 = fmul fast float %2575, %2556
  br label %2577

; <label>:2577                                    ; preds = %2561, %2555
  %2578 = phi float [ %2576, %2561 ], [ %2556, %2555 ]
  %2579 = fcmp fast ult float %2578, 0x3F70101020000000
  br i1 %2579, label %3318, label %2580

; <label>:2580                                    ; preds = %2577
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 16
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %2783, label %2585

; <label>:2585                                    ; preds = %2580
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = add i32 %41, 384
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %83, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = and i32 %2587, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = lshr i32 %2587, 8
  %2601 = and i32 %2600, 255
  %2602 = uitofp i32 %2601 to float
  %2603 = fmul fast float %2597, %2599
  %2604 = fadd fast float %2603, %2602
  %2605 = fmul fast float %2604, 0x3F70101000000000
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 512
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2618, label %2610

; <label>:2610                                    ; preds = %2585
  %2611 = add i32 %41, 468
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %2613, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2615, %dx.types.Handle %84, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  br label %2618

; <label>:2618                                    ; preds = %2610, %2585
  %2619 = phi float [ %2617, %2610 ], [ 1.000000e+00, %2585 ]
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 33554432
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2730, label %2624

; <label>:2624                                    ; preds = %2618
  %2625 = add i32 %41, 256
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 65535
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = lshr i32 %2627, 16
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = add i32 %41, 260
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 65535
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = lshr i32 %2638, 24
  %2640 = uitofp i32 %2639 to float
  %2641 = fmul fast float %2640, 0x3F70101020000000
  %2642 = and i32 %2638, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = fmul fast float %2643, 0x3F70101020000000
  %2645 = lshr i32 %2638, 8
  %2646 = and i32 %2645, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = lshr i32 %2638, 16
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2651, 0x3F70101020000000
  %2653 = add i32 %41, 252
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 24
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = and i32 %2655, 255
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3F70101020000000
  %2662 = lshr i32 %2655, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2655, 16
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = bitcast float %2594 to i32
  %2671 = ashr i32 %2670, 1
  %2672 = sub nsw i32 1597463174, %2671
  %2673 = bitcast i32 %2672 to float
  %2674 = fmul fast float %2594, 5.000000e-01
  %2675 = fmul fast float %2673, %2673
  %2676 = fmul fast float %2675, %2674
  %2677 = fsub fast float 1.500000e+00, %2676
  %2678 = fmul fast float %2673, %2594
  %2679 = fmul fast float %2678, %2677
  %2680 = bitcast float %2595 to i32
  %2681 = ashr i32 %2680, 1
  %2682 = sub nsw i32 1597463174, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = fmul fast float %2595, 5.000000e-01
  %2685 = fmul fast float %2683, %2683
  %2686 = fmul fast float %2685, %2684
  %2687 = fsub fast float 1.500000e+00, %2686
  %2688 = fmul fast float %2683, %2595
  %2689 = fmul fast float %2688, %2687
  %2690 = bitcast float %2596 to i32
  %2691 = ashr i32 %2690, 1
  %2692 = sub nsw i32 1597463174, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2596, 5.000000e-01
  %2695 = fmul fast float %2693, %2693
  %2696 = fmul fast float %2695, %2694
  %2697 = fsub fast float 1.500000e+00, %2696
  %2698 = fmul fast float %2693, %2596
  %2699 = fmul fast float %2698, %2697
  %2700 = fsub fast float %2679, %2661
  %2701 = fsub fast float %2689, %2665
  %2702 = fsub fast float %2699, %2669
  %2703 = fmul fast float %2700, %2629
  %2704 = fmul fast float %2701, %2631
  %2705 = fmul fast float %2702, %2636
  %2706 = fadd fast float %2703, %2644
  %2707 = fadd fast float %2704, %2648
  %2708 = fadd fast float %2705, %2652
  %2709 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2710 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2711 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2712 = fmul fast float %2709, %2709
  %2713 = fmul fast float %2710, %2710
  %2714 = fmul fast float %2711, %2711
  %2715 = fsub fast float %2712, %2594
  %2716 = fsub fast float %2713, %2595
  %2717 = fsub fast float %2714, %2596
  %2718 = fmul fast float %2715, %2619
  %2719 = fmul fast float %2716, %2619
  %2720 = fmul fast float %2717, %2619
  %2721 = fadd fast float %2718, %2594
  %2722 = fadd fast float %2719, %2595
  %2723 = fadd fast float %2720, %2596
  %2724 = fadd fast float %2641, %2605
  %2725 = fsub fast float %2724, %2658
  %2726 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2727 = fsub fast float %2726, %2605
  %2728 = fmul fast float %2727, %2619
  %2729 = fadd fast float %2728, %2605
  br label %2783

; <label>:2730                                    ; preds = %2618
  %2731 = and i32 %2621, 134217728
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2767, label %2733

; <label>:2733                                    ; preds = %2730
  %2734 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2735 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2736 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %2737 = fadd fast float %2734, -5.000000e-01
  %2738 = fadd fast float %2735, -5.000000e-01
  %2739 = fadd fast float %2736, -5.000000e-01
  %2740 = fmul fast float %2737, %2619
  %2741 = fmul fast float %2738, %2619
  %2742 = fmul fast float %2739, %2619
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = fadd fast float %2741, 5.000000e-01
  %2745 = fadd fast float %2742, 5.000000e-01
  %2746 = call float @dx.op.unary.f32(i32 24, float %2594)  ; Sqrt(value)
  %2747 = call float @dx.op.unary.f32(i32 24, float %2595)  ; Sqrt(value)
  %2748 = call float @dx.op.unary.f32(i32 24, float %2596)  ; Sqrt(value)
  %2749 = fmul fast float %2743, 2.000000e+00
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = fmul fast float %2750, %2746
  %2752 = fadd fast float %2751, %2749
  %2753 = fmul fast float %2752, %2746
  %2754 = fmul fast float %2744, 2.000000e+00
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2755, %2747
  %2757 = fadd fast float %2756, %2754
  %2758 = fmul fast float %2757, %2747
  %2759 = fmul fast float %2745, 2.000000e+00
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2760, %2748
  %2762 = fadd fast float %2761, %2759
  %2763 = fmul fast float %2762, %2748
  %2764 = fmul fast float %2753, %2753
  %2765 = fmul fast float %2758, %2758
  %2766 = fmul fast float %2763, %2763
  br label %2783

; <label>:2767                                    ; preds = %2730
  %2768 = fmul fast float %305, %305
  %2769 = fmul fast float %309, %309
  %2770 = fmul fast float %313, %313
  %2771 = fadd fast float %2768, -1.000000e+00
  %2772 = fadd fast float %2769, -1.000000e+00
  %2773 = fadd fast float %2770, -1.000000e+00
  %2774 = fmul fast float %2619, %2771
  %2775 = fmul fast float %2619, %2772
  %2776 = fmul fast float %2619, %2773
  %2777 = fadd fast float %2774, 1.000000e+00
  %2778 = fadd fast float %2775, 1.000000e+00
  %2779 = fadd fast float %2776, 1.000000e+00
  %2780 = fmul fast float %2777, %2594
  %2781 = fmul fast float %2778, %2595
  %2782 = fmul fast float %2779, %2596
  br label %2783

; <label>:2783                                    ; preds = %2767, %2733, %2624, %2580
  %2784 = phi float [ %2729, %2624 ], [ %2605, %2733 ], [ %2605, %2767 ], [ 0x3FA23C0BE0000000, %2580 ]
  %2785 = phi float [ %2721, %2624 ], [ %2764, %2733 ], [ %2780, %2767 ], [ 1.000000e+00, %2580 ]
  %2786 = phi float [ %2722, %2624 ], [ %2765, %2733 ], [ %2781, %2767 ], [ 1.000000e+00, %2580 ]
  %2787 = phi float [ %2723, %2624 ], [ %2766, %2733 ], [ %2782, %2767 ], [ 1.000000e+00, %2580 ]
  %2788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.i32 %2788, 1
  %2790 = and i32 %2789, 1
  %2791 = icmp ne i32 %2790, 0
  %2792 = add i32 %41, 356
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = and i32 %2794, 32
  %2796 = icmp ne i32 %2795, 0
  %2797 = and i1 %2791, %2796
  %2798 = select i1 %2797, float 1.000000e+00, float %2785
  %2799 = select i1 %2797, float 0x3FD3333340000000, float %2786
  %2800 = select i1 %2797, float 0x3FD3333340000000, float %2787
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = and i32 %2802, 32
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %2877, label %2805

; <label>:2805                                    ; preds = %2783
  %2806 = add i32 %41, 124
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = add i32 %41, 400
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = add i32 %2811, 0
  %2813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2813, %dx.types.Handle %83, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.ResRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.ResRet.f32 %2814, 2
  %2818 = extractvalue %dx.types.ResRet.f32 %2814, 3
  %2819 = and i32 %2808, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = lshr i32 %2808, 8
  %2822 = and i32 %2821, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = lshr i32 %2808, 16
  %2825 = and i32 %2824, 255
  %2826 = uitofp i32 %2825 to float
  %2827 = fmul fast float %2826, 0x3F70101000000000
  %2828 = fmul fast float %2815, %2820
  %2829 = fadd fast float %2828, %2823
  %2830 = fmul fast float %2829, 0x3F70101000000000
  %2831 = fadd fast float %2816, -5.000000e-01
  %2832 = fadd fast float %2818, -5.000000e-01
  %2833 = fmul fast float %2831, %2827
  %2834 = fmul fast float %2832, %2827
  %2835 = fadd fast float %2833, 5.000000e-01
  %2836 = fadd fast float %2834, 5.000000e-01
  %2837 = fmul fast float %2835, 2.000000e+00
  %2838 = fadd fast float %2837, -1.000000e+00
  %2839 = fmul fast float %2836, 2.000000e+00
  %2840 = fadd fast float %2839, -1.000000e+00
  %2841 = fadd fast float %2838, %2840
  %2842 = fmul fast float %2841, 5.000000e-01
  %2843 = fsub fast float %2838, %2840
  %2844 = fmul fast float %2843, 5.000000e-01
  %2845 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = call float @dx.op.unary.f32(i32 6, float %2844)  ; FAbs(value)
  %2848 = fsub fast float %2846, %2847
  %2849 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2844, float %2848, float %2842, float %2844, float %2848)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = call float @dx.op.unary.f32(i32 25, float %2849)  ; Rsqrt(value)
  %2851 = fmul fast float %2842, %2850
  %2852 = fmul fast float %2844, %2850
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, 67108864
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2873, label %2857

; <label>:2857                                    ; preds = %2805
  %2858 = add i32 %41, 312
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 65535
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 65535
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = lshr i32 %2860, 16
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = fsub fast float %2830, %2868
  %2870 = fmul fast float %2869, %2862
  %2871 = fadd fast float %2870, %2866
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  br label %2873

; <label>:2873                                    ; preds = %2857, %2805
  %2874 = phi float [ %2872, %2857 ], [ %2830, %2805 ]
  %2875 = call float @dx.op.dot2.f32(i32 54, float %2851, float %2852, float %2294, float %2295)  ; Dot2(ax,ay,bx,by)
  %2876 = call float @dx.op.dot2.f32(i32 54, float %2851, float %2852, float %2296, float %2297)  ; Dot2(ax,ay,bx,by)
  br label %2877

; <label>:2877                                    ; preds = %2873, %2783
  %2878 = phi float [ %2874, %2873 ], [ 0x3FD6666660000000, %2783 ]
  %2879 = phi float [ %2875, %2873 ], [ 0.000000e+00, %2783 ]
  %2880 = phi float [ %2876, %2873 ], [ 0.000000e+00, %2783 ]
  %2881 = phi float [ %2817, %2873 ], [ 1.000000e+00, %2783 ]
  %2882 = add i32 %41, 192
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = lshr i32 %2884, 22
  %2886 = shl nuw nsw i32 %2885, 5
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 64
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2925, label %2892

; <label>:2892                                    ; preds = %2877
  %2893 = add i32 %41, 416
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %2895, 0
  %2897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 131072
  %2901 = icmp eq i32 %2900, 0
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2897, %dx.types.Handle %83, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = fmul fast float %2903, %293
  %2907 = fmul fast float %2904, %296
  %2908 = fmul fast float %2905, %299
  br i1 %2901, label %2915, label %2909

; <label>:2909                                    ; preds = %2892
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = fmul fast float %2911, %2906
  %2913 = fmul fast float %2911, %2907
  %2914 = fmul fast float %2911, %2908
  br label %2915

; <label>:2915                                    ; preds = %2909, %2892
  %2916 = phi float [ %2912, %2909 ], [ %2906, %2892 ]
  %2917 = phi float [ %2913, %2909 ], [ %2907, %2892 ]
  %2918 = phi float [ %2914, %2909 ], [ %2908, %2892 ]
  %2919 = fmul fast float %2916, %2887
  %2920 = select i1 %203, float %2919, float %2916
  %2921 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2917, float %2918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2922 = select i1 %203, float 0.000000e+00, float %2916
  %2923 = select i1 %203, float %2921, float %2917
  %2924 = select i1 %203, float 0.000000e+00, float %2918
  br label %2925

; <label>:2925                                    ; preds = %2915, %2877
  %2926 = phi float [ %2922, %2915 ], [ 0.000000e+00, %2877 ]
  %2927 = phi float [ %2923, %2915 ], [ 0.000000e+00, %2877 ]
  %2928 = phi float [ %2924, %2915 ], [ 0.000000e+00, %2877 ]
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 1024
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %2963, label %2933

; <label>:2933                                    ; preds = %2925
  %2934 = add i32 %41, 184
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 255
  %2938 = uitofp i32 %2937 to float
  %2939 = fmul fast float %2938, 0x3F70101020000000
  %2940 = lshr i32 %2936, 8
  %2941 = and i32 %2940, 255
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2942, 0x3F70101020000000
  %2944 = lshr i32 %2936, 16
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2946, 0x3F70101020000000
  %2948 = fmul fast float %2939, %2939
  %2949 = fmul fast float %2943, %2943
  %2950 = fmul fast float %2947, %2947
  %2951 = add i32 %41, 484
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = add i32 %2953, 0
  %2955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2955, %dx.types.Handle %84, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.ResRet.f32 %2956, 2
  %2960 = fmul fast float %2948, %2957
  %2961 = fmul fast float %2949, %2958
  %2962 = fmul fast float %2950, %2959
  br label %2963

; <label>:2963                                    ; preds = %2933, %2925
  %2964 = phi float [ %2960, %2933 ], [ 0.000000e+00, %2925 ]
  %2965 = phi float [ %2961, %2933 ], [ 0.000000e+00, %2925 ]
  %2966 = phi float [ %2962, %2933 ], [ 0.000000e+00, %2925 ]
  %2967 = fcmp fast ogt float %2964, 0.000000e+00
  %2968 = fcmp fast ogt float %2965, 0.000000e+00
  %2969 = fcmp fast ogt float %2966, 0.000000e+00
  %2970 = call float @dx.op.unary.f32(i32 23, float %2964)  ; Log(value)
  %2971 = call float @dx.op.unary.f32(i32 23, float %2965)  ; Log(value)
  %2972 = call float @dx.op.unary.f32(i32 23, float %2966)  ; Log(value)
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = lshr i32 %2974, 7
  %2976 = and i32 %2975, 32752
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = fmul fast float %2970, 0xBFE62E4300000000
  %2979 = fmul fast float %2978, %2977
  %2980 = fmul fast float %2971, 0xBFE62E4300000000
  %2981 = fmul fast float %2980, %2977
  %2982 = fmul fast float %2972, 0xBFE62E4300000000
  %2983 = fmul fast float %2982, %2977
  %2984 = select i1 %2967, float %2979, float 1.270000e+02
  %2985 = select i1 %2968, float %2981, float 1.270000e+02
  %2986 = select i1 %2969, float %2983, float 1.270000e+02
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 10240
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3035, label %2991

; <label>:2991                                    ; preds = %2963
  %2992 = add i32 %41, 500
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = add i32 %2994, 0
  %2996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2996, %dx.types.Handle %84, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 3
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 1048576
  %3003 = icmp ne i32 %3002, 0
  %3004 = and i32 %3001, 8192
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3021, label %3006

; <label>:3006                                    ; preds = %2991
  %3007 = extractvalue %dx.types.ResRet.f32 %2997, 2
  %3008 = select i1 %3003, float %3007, float %2998
  %3009 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %3010 = select i1 %3003, float %3009, float %2998
  %3011 = add i32 %41, 128
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = lshr i32 %3013, 16
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F80101020000000
  %3018 = fmul fast float %3017, %3010
  %3019 = fmul fast float %3017, %2998
  %3020 = fmul fast float %3017, %3008
  br label %3021

; <label>:3021                                    ; preds = %3006, %2991
  %3022 = phi float [ %3018, %3006 ], [ 0.000000e+00, %2991 ]
  %3023 = phi float [ %3019, %3006 ], [ 0.000000e+00, %2991 ]
  %3024 = phi float [ %3020, %3006 ], [ 0.000000e+00, %2991 ]
  %3025 = and i32 %3001, 2048
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3035, label %3027

; <label>:3027                                    ; preds = %3021
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = shl i32 %3029, 4
  %3031 = and i32 %3030, 32752
  %3032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3031)  ; LegacyF16ToF32(value)
  %3033 = fmul fast float %3032, %2999
  %3034 = call float @dx.op.binary.f32(i32 35, float %3033, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3035

; <label>:3035                                    ; preds = %3027, %3021, %2963
  %3036 = phi float [ %3022, %3027 ], [ %3022, %3021 ], [ 0.000000e+00, %2963 ]
  %3037 = phi float [ %3023, %3027 ], [ %3023, %3021 ], [ 0.000000e+00, %2963 ]
  %3038 = phi float [ %3024, %3027 ], [ %3024, %3021 ], [ 0.000000e+00, %2963 ]
  %3039 = phi float [ %3034, %3027 ], [ 0x3F70101020000000, %3021 ], [ 0x3F70101020000000, %2963 ]
  %3040 = add i32 %41, 128
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = lshr i32 %3042, 8
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = call float @dx.op.dot3.f32(i32 55, float %2798, float %2799, float %2800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = fmul fast float %3047, %3048
  %3050 = fadd fast float %3049, %3044
  %3051 = fmul fast float %3050, 0x3F70101020000000
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  br i1 %2282, label %3053, label %3088

; <label>:3053                                    ; preds = %3035
  %3054 = fmul fast float %3039, 2.000000e+00
  %3055 = fcmp fast olt float %2984, 1.270000e+02
  %3056 = fcmp fast olt float %2985, 1.270000e+02
  %3057 = fcmp fast olt float %2986, 1.270000e+02
  %3058 = fmul fast float %2984, 0xBFF7154760000000
  %3059 = fmul fast float %3058, %3054
  %3060 = fmul fast float %2985, 0xBFF7154760000000
  %3061 = fmul fast float %3060, %3054
  %3062 = fmul fast float %2986, 0xBFF7154760000000
  %3063 = fmul fast float %3062, %3054
  %3064 = call float @dx.op.unary.f32(i32 21, float %3059)  ; Exp(value)
  %3065 = call float @dx.op.unary.f32(i32 21, float %3061)  ; Exp(value)
  %3066 = call float @dx.op.unary.f32(i32 21, float %3063)  ; Exp(value)
  %3067 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3068 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3069 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3070 = fadd fast float %3067, -1.000000e+00
  %3071 = select i1 %3055, float %3070, float -1.000000e+00
  %3072 = fadd fast float %3068, -1.000000e+00
  %3073 = select i1 %3056, float %3072, float -1.000000e+00
  %3074 = fadd fast float %3069, -1.000000e+00
  %3075 = select i1 %3057, float %3074, float -1.000000e+00
  %3076 = fmul fast float %3071, %2578
  %3077 = fmul fast float %3073, %2578
  %3078 = fmul fast float %3075, %2578
  %3079 = fadd fast float %3076, 1.000000e+00
  %3080 = fadd fast float %3077, 1.000000e+00
  %3081 = fadd fast float %3078, 1.000000e+00
  %3082 = fmul fast float %3079, %2264
  %3083 = fmul fast float %3080, %2265
  %3084 = fmul fast float %3081, %2266
  %3085 = fmul fast float %3079, %2267
  %3086 = fmul fast float %3080, %2268
  %3087 = fmul fast float %3081, %2269
  br label %3088

; <label>:3088                                    ; preds = %3053, %3035
  %3089 = phi float [ %3082, %3053 ], [ %2264, %3035 ]
  %3090 = phi float [ %3083, %3053 ], [ %2265, %3035 ]
  %3091 = phi float [ %3084, %3053 ], [ %2266, %3035 ]
  %3092 = phi float [ %3085, %3053 ], [ %2267, %3035 ]
  %3093 = phi float [ %3086, %3053 ], [ %2268, %3035 ]
  %3094 = phi float [ %3087, %3053 ], [ %2269, %3035 ]
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 3
  %3098 = icmp eq i32 %3097, 3
  br i1 %3098, label %3177, label %3099

; <label>:3099                                    ; preds = %3088
  %3100 = and i32 %3096, 16
  %3101 = icmp ne i32 %3100, 0
  %3102 = select i1 %3101, float %2578, float 0.000000e+00
  %3103 = icmp eq i32 %3097, 0
  br i1 %3103, label %3104, label %3132

; <label>:3104                                    ; preds = %3099
  %3105 = and i32 %3096, 64
  %3106 = icmp ne i32 %3105, 0
  %3107 = select i1 %3106, float %2578, float 0.000000e+00
  %3108 = fsub fast float %2798, %3089
  %3109 = fsub fast float %2799, %3090
  %3110 = fsub fast float %2800, %3091
  %3111 = fmul fast float %3102, %3108
  %3112 = fmul fast float %3102, %3109
  %3113 = fmul fast float %3102, %3110
  %3114 = fadd fast float %3111, %3089
  %3115 = fadd fast float %3112, %3090
  %3116 = fadd fast float %3113, %3091
  %3117 = fsub fast float %2784, %2276
  %3118 = fmul fast float %3102, %3117
  %3119 = fadd fast float %3118, %2276
  %3120 = fsub fast float %2926, %3092
  %3121 = fsub fast float %2927, %3093
  %3122 = fsub fast float %2928, %3094
  %3123 = fmul fast float %3107, %3120
  %3124 = fmul fast float %3107, %3121
  %3125 = fmul fast float %3107, %3122
  %3126 = fadd fast float %3123, %3092
  %3127 = fadd fast float %3124, %3093
  %3128 = fadd fast float %3125, %3094
  %3129 = fsub fast float %3052, %2280
  %3130 = fmul fast float %3102, %3129
  %3131 = fadd fast float %3130, %2280
  br label %3177

; <label>:3132                                    ; preds = %3099
  %3133 = icmp eq i32 %3097, 1
  br i1 %3133, label %3134, label %3147

; <label>:3134                                    ; preds = %3132
  %3135 = fadd fast float %2798, -1.000000e+00
  %3136 = fadd fast float %2799, -1.000000e+00
  %3137 = fadd fast float %2800, -1.000000e+00
  %3138 = fmul fast float %3102, %3135
  %3139 = fmul fast float %3102, %3136
  %3140 = fmul fast float %3102, %3137
  %3141 = fadd fast float %3138, 1.000000e+00
  %3142 = fadd fast float %3139, 1.000000e+00
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fmul fast float %3141, %3089
  %3145 = fmul fast float %3142, %3090
  %3146 = fmul fast float %3143, %3091
  br label %3177

; <label>:3147                                    ; preds = %3132
  %3148 = icmp eq i32 %3097, 2
  br i1 %3148, label %3149, label %3177

; <label>:3149                                    ; preds = %3147
  %3150 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %3151 = call float @dx.op.unary.f32(i32 24, float %2799)  ; Sqrt(value)
  %3152 = call float @dx.op.unary.f32(i32 24, float %2800)  ; Sqrt(value)
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fadd fast float %3151, -5.000000e-01
  %3155 = fadd fast float %3152, -5.000000e-01
  %3156 = fmul fast float %3153, %3102
  %3157 = fmul fast float %3154, %3102
  %3158 = fmul fast float %3155, %3102
  %3159 = fadd fast float %3156, 5.000000e-01
  %3160 = fadd fast float %3157, 5.000000e-01
  %3161 = fadd fast float %3158, 5.000000e-01
  %3162 = fmul fast float %3159, 2.000000e+00
  %3163 = fsub fast float 1.000000e+00, %3162
  %3164 = fmul fast float %3163, %3089
  %3165 = fadd fast float %3164, %3162
  %3166 = fmul fast float %3165, %3089
  %3167 = fmul fast float %3160, 2.000000e+00
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, %3090
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, %3090
  %3172 = fmul fast float %3161, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3091
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3091
  br label %3177

; <label>:3177                                    ; preds = %3149, %3147, %3134, %3104, %3088
  %3178 = phi float [ %3089, %3088 ], [ %3166, %3149 ], [ %3089, %3147 ], [ %3144, %3134 ], [ %3114, %3104 ]
  %3179 = phi float [ %3090, %3088 ], [ %3171, %3149 ], [ %3090, %3147 ], [ %3145, %3134 ], [ %3115, %3104 ]
  %3180 = phi float [ %3091, %3088 ], [ %3176, %3149 ], [ %3091, %3147 ], [ %3146, %3134 ], [ %3116, %3104 ]
  %3181 = phi float [ %3092, %3088 ], [ %3092, %3149 ], [ %3092, %3147 ], [ %3092, %3134 ], [ %3126, %3104 ]
  %3182 = phi float [ %3093, %3088 ], [ %3093, %3149 ], [ %3093, %3147 ], [ %3093, %3134 ], [ %3127, %3104 ]
  %3183 = phi float [ %3094, %3088 ], [ %3094, %3149 ], [ %3094, %3147 ], [ %3094, %3134 ], [ %3128, %3104 ]
  %3184 = phi float [ %2276, %3088 ], [ %2276, %3149 ], [ %2276, %3147 ], [ %2276, %3134 ], [ %3119, %3104 ]
  %3185 = phi float [ %2280, %3088 ], [ %2280, %3149 ], [ %2280, %3147 ], [ %2280, %3134 ], [ %3131, %3104 ]
  %3186 = and i32 %3096, 12
  %3187 = icmp eq i32 %3186, 12
  br i1 %3187, label %3318, label %3188

; <label>:3188                                    ; preds = %3177
  %3189 = and i32 %3096, 2097184
  %3190 = icmp eq i32 %3189, 2097184
  %3191 = select i1 %3190, float %2578, float 0.000000e+00
  %3192 = and i32 %3096, 4194336
  %3193 = icmp eq i32 %3192, 4194336
  %3194 = select i1 %3193, float %2578, float 0.000000e+00
  %3195 = and i32 %3096, 8388640
  %3196 = icmp eq i32 %3195, 8388640
  %3197 = select i1 %3196, float %2578, float 0.000000e+00
  %3198 = and i32 %3096, 1024
  %3199 = icmp ne i32 %3198, 0
  %3200 = select i1 %3199, float %2578, float 0.000000e+00
  %3201 = and i32 %3096, 2048
  %3202 = icmp ne i32 %3201, 0
  %3203 = select i1 %3202, float %2578, float 0.000000e+00
  %3204 = and i32 %3096, 8192
  %3205 = icmp ne i32 %3204, 0
  %3206 = select i1 %3205, float %2578, float 0.000000e+00
  %3207 = icmp eq i32 %3186, 0
  br i1 %3207, label %3208, label %3242

; <label>:3208                                    ; preds = %3188
  %3209 = fsub fast float %2879, %2262
  %3210 = fsub fast float %2880, %2263
  %3211 = fmul fast float %3191, %3209
  %3212 = fmul fast float %3191, %3210
  %3213 = fadd fast float %3211, %2262
  %3214 = fadd fast float %3212, %2263
  %3215 = fsub fast float %2881, %2278
  %3216 = fmul fast float %3194, %3215
  %3217 = fadd fast float %3216, %2278
  %3218 = fsub fast float %2878, %2277
  %3219 = fmul fast float %3197, %3218
  %3220 = fadd fast float %3219, %2277
  %3221 = fsub fast float %2984, %2273
  %3222 = fsub fast float %2985, %2274
  %3223 = fsub fast float %2986, %2275
  %3224 = fmul fast float %3200, %3221
  %3225 = fmul fast float %3200, %3222
  %3226 = fmul fast float %3200, %3223
  %3227 = fadd fast float %3224, %2273
  %3228 = fadd fast float %3225, %2274
  %3229 = fadd fast float %3226, %2275
  %3230 = fsub fast float %3039, %2279
  %3231 = fmul fast float %3203, %3230
  %3232 = fadd fast float %3231, %2279
  %3233 = fsub fast float %3036, %2270
  %3234 = fsub fast float %3037, %2271
  %3235 = fsub fast float %3038, %2272
  %3236 = fmul fast float %3206, %3233
  %3237 = fmul fast float %3206, %3234
  %3238 = fmul fast float %3206, %3235
  %3239 = fadd fast float %3236, %2270
  %3240 = fadd fast float %3237, %2271
  %3241 = fadd fast float %3238, %2272
  br label %3318

; <label>:3242                                    ; preds = %3188
  %3243 = icmp eq i32 %3186, 4
  br i1 %3243, label %3244, label %3290

; <label>:3244                                    ; preds = %3242
  %3245 = fmul fast float %3191, %2879
  %3246 = fmul fast float %3191, %2880
  %3247 = fadd fast float %3245, %2262
  %3248 = fadd fast float %3246, %2263
  %3249 = call float @dx.op.binary.f32(i32 36, float %2278, float %2881)  ; FMin(a,b)
  %3250 = fsub fast float %3249, %2278
  %3251 = fmul fast float %3250, %3194
  %3252 = fadd fast float %3251, %2278
  %3253 = fadd fast float %2878, %2277
  %3254 = fmul fast float %3253, 0x3FF337FAE0000000
  %3255 = fmul fast float %2277, %2277
  %3256 = fmul fast float %2878, %2878
  %3257 = fadd fast float %3256, %3255
  %3258 = fmul fast float %3257, 0x3FE5152B00000000
  %3259 = fmul fast float %2277, 0xBFCC1F85E0000000
  %3260 = fmul fast float %3259, %2878
  %3261 = fadd fast float %3260, 0xBFE1363700000000
  %3262 = fadd fast float %3261, %3254
  %3263 = fsub fast float %3262, %3258
  %3264 = fmul fast float %3253, 0x3FBA6F0D00000000
  %3265 = fmul fast float %3257, 0x3FD0432880000000
  %3266 = fmul fast float %2277, 0xBFEF110800000000
  %3267 = fmul fast float %3266, %2878
  %3268 = fadd fast float %3267, 1.000000e+00
  %3269 = fsub fast float %3268, %3264
  %3270 = fadd fast float %3269, %3265
  %3271 = fdiv fast float %3263, %3270
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = fsub fast float %3272, %2277
  %3274 = fmul fast float %3273, %3197
  %3275 = fadd fast float %3274, %2277
  %3276 = fmul fast float %3200, %2984
  %3277 = fmul fast float %3200, %2985
  %3278 = fmul fast float %3200, %2986
  %3279 = fadd fast float %3276, %2273
  %3280 = fadd fast float %3277, %2274
  %3281 = fadd fast float %3278, %2275
  %3282 = fmul fast float %3203, %3039
  %3283 = fadd fast float %3282, %2279
  %3284 = fmul fast float %3206, %3036
  %3285 = fmul fast float %3206, %3037
  %3286 = fmul fast float %3206, %3038
  %3287 = fadd fast float %3284, %2270
  %3288 = fadd fast float %3285, %2271
  %3289 = fadd fast float %3286, %2272
  br label %3318

; <label>:3290                                    ; preds = %3242
  %3291 = icmp eq i32 %3186, 8
  br i1 %3291, label %3292, label %3318

; <label>:3292                                    ; preds = %3290
  %3293 = fmul fast float %3191, %2879
  %3294 = fmul fast float %3191, %2880
  %3295 = fadd fast float %3293, %2262
  %3296 = fadd fast float %3294, %2263
  %3297 = call float @dx.op.binary.f32(i32 36, float %2278, float %2881)  ; FMin(a,b)
  %3298 = fsub fast float %3297, %2278
  %3299 = fmul fast float %3298, %3194
  %3300 = fadd fast float %3299, %2278
  %3301 = fsub fast float %2878, %2277
  %3302 = fmul fast float %3197, %3301
  %3303 = fadd fast float %3302, %2277
  %3304 = fmul fast float %3200, %2984
  %3305 = fmul fast float %3200, %2985
  %3306 = fmul fast float %3200, %2986
  %3307 = fadd fast float %3304, %2273
  %3308 = fadd fast float %3305, %2274
  %3309 = fadd fast float %3306, %2275
  %3310 = fmul fast float %3203, %3039
  %3311 = fadd fast float %3310, %2279
  %3312 = fmul fast float %3206, %3036
  %3313 = fmul fast float %3206, %3037
  %3314 = fmul fast float %3206, %3038
  %3315 = fadd fast float %3312, %2270
  %3316 = fadd fast float %3313, %2271
  %3317 = fadd fast float %3314, %2272
  br label %3318

; <label>:3318                                    ; preds = %3292, %3290, %3244, %3208, %3177, %2577, %2281, %2261
  %3319 = phi float [ %2262, %3177 ], [ %2262, %2577 ], [ %2262, %2261 ], [ %3295, %3292 ], [ %2262, %3290 ], [ %3247, %3244 ], [ %3213, %3208 ], [ %2262, %2281 ]
  %3320 = phi float [ %2263, %3177 ], [ %2263, %2577 ], [ %2263, %2261 ], [ %3296, %3292 ], [ %2263, %3290 ], [ %3248, %3244 ], [ %3214, %3208 ], [ %2263, %2281 ]
  %3321 = phi float [ %3178, %3177 ], [ %2264, %2577 ], [ %2264, %2261 ], [ %3178, %3292 ], [ %3178, %3290 ], [ %3178, %3244 ], [ %3178, %3208 ], [ %2264, %2281 ]
  %3322 = phi float [ %3179, %3177 ], [ %2265, %2577 ], [ %2265, %2261 ], [ %3179, %3292 ], [ %3179, %3290 ], [ %3179, %3244 ], [ %3179, %3208 ], [ %2265, %2281 ]
  %3323 = phi float [ %3180, %3177 ], [ %2266, %2577 ], [ %2266, %2261 ], [ %3180, %3292 ], [ %3180, %3290 ], [ %3180, %3244 ], [ %3180, %3208 ], [ %2266, %2281 ]
  %3324 = phi float [ %3181, %3177 ], [ %2267, %2577 ], [ %2267, %2261 ], [ %3181, %3292 ], [ %3181, %3290 ], [ %3181, %3244 ], [ %3181, %3208 ], [ %2267, %2281 ]
  %3325 = phi float [ %3182, %3177 ], [ %2268, %2577 ], [ %2268, %2261 ], [ %3182, %3292 ], [ %3182, %3290 ], [ %3182, %3244 ], [ %3182, %3208 ], [ %2268, %2281 ]
  %3326 = phi float [ %3183, %3177 ], [ %2269, %2577 ], [ %2269, %2261 ], [ %3183, %3292 ], [ %3183, %3290 ], [ %3183, %3244 ], [ %3183, %3208 ], [ %2269, %2281 ]
  %3327 = phi float [ %2270, %3177 ], [ %2270, %2577 ], [ %2270, %2261 ], [ %3315, %3292 ], [ %2270, %3290 ], [ %3287, %3244 ], [ %3239, %3208 ], [ %2270, %2281 ]
  %3328 = phi float [ %2271, %3177 ], [ %2271, %2577 ], [ %2271, %2261 ], [ %3316, %3292 ], [ %2271, %3290 ], [ %3288, %3244 ], [ %3240, %3208 ], [ %2271, %2281 ]
  %3329 = phi float [ %2272, %3177 ], [ %2272, %2577 ], [ %2272, %2261 ], [ %3317, %3292 ], [ %2272, %3290 ], [ %3289, %3244 ], [ %3241, %3208 ], [ %2272, %2281 ]
  %3330 = phi float [ %2273, %3177 ], [ %2273, %2577 ], [ %2273, %2261 ], [ %3307, %3292 ], [ %2273, %3290 ], [ %3279, %3244 ], [ %3227, %3208 ], [ %2273, %2281 ]
  %3331 = phi float [ %2274, %3177 ], [ %2274, %2577 ], [ %2274, %2261 ], [ %3308, %3292 ], [ %2274, %3290 ], [ %3280, %3244 ], [ %3228, %3208 ], [ %2274, %2281 ]
  %3332 = phi float [ %2275, %3177 ], [ %2275, %2577 ], [ %2275, %2261 ], [ %3309, %3292 ], [ %2275, %3290 ], [ %3281, %3244 ], [ %3229, %3208 ], [ %2275, %2281 ]
  %3333 = phi float [ %3184, %3177 ], [ %2276, %2577 ], [ %2276, %2261 ], [ %3184, %3292 ], [ %3184, %3290 ], [ %3184, %3244 ], [ %3184, %3208 ], [ %2276, %2281 ]
  %3334 = phi float [ %2277, %3177 ], [ %2277, %2577 ], [ %2277, %2261 ], [ %3303, %3292 ], [ %2277, %3290 ], [ %3275, %3244 ], [ %3220, %3208 ], [ %2277, %2281 ]
  %3335 = phi float [ %2278, %3177 ], [ %2278, %2577 ], [ %2278, %2261 ], [ %3300, %3292 ], [ %2278, %3290 ], [ %3252, %3244 ], [ %3217, %3208 ], [ %2278, %2281 ]
  %3336 = phi float [ %2279, %3177 ], [ %2279, %2577 ], [ %2279, %2261 ], [ %3311, %3292 ], [ %2279, %3290 ], [ %3283, %3244 ], [ %3232, %3208 ], [ %2279, %2281 ]
  %3337 = phi float [ %3185, %3177 ], [ %2280, %2577 ], [ %2280, %2261 ], [ %3185, %3292 ], [ %3185, %3290 ], [ %3185, %3244 ], [ %3185, %3208 ], [ %2280, %2281 ]
  br i1 %380, label %4375, label %3338

; <label>:3338                                    ; preds = %3318
  %3339 = icmp ult i32 %434, 4
  %3340 = add i32 %41, 72
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = add i32 %41, 76
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = or i32 %3345, %3342
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %4375, label %3348

; <label>:3348                                    ; preds = %3338
  %3349 = and i32 %3342, 262144
  %3350 = icmp ne i32 %3349, 0
  %3351 = select i1 %3350, float %44, float 1.000000e+00
  %3352 = select i1 %3350, float %45, float 0.000000e+00
  %3353 = select i1 %3350, float %46, float 0.000000e+00
  %3354 = select i1 %3350, float %47, float 1.000000e+00
  %3355 = select i1 %3350, float %48, float %69
  %3356 = select i1 %3350, float %49, float %70
  %3357 = add i32 %41, 332
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = lshr i32 %3359, 16
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = fmul fast float %3361, 0x3F50624DE0000000
  %3363 = add i32 %41, 136
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = lshr i32 %3365, 16
  %3367 = and i32 %3366, 255
  %3368 = lshr i32 %3365, 24
  %3369 = add i32 %41, 340
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 65535
  %3373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3372)  ; LegacyF16ToF32(value)
  %3374 = lshr i32 %3371, 16
  %3375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3374)  ; LegacyF16ToF32(value)
  %3376 = add i32 %41, 80
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = lshr i32 %3378, 22
  %3380 = shl nuw nsw i32 %3379, 5
  %3381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3380)  ; LegacyF16ToF32(value)
  %3382 = shl i32 %3378, 4
  %3383 = and i32 %3382, 32752
  %3384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3383)  ; LegacyF16ToF32(value)
  %3385 = lshr i32 %3378, 7
  %3386 = and i32 %3385, 32752
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3389 = extractvalue %dx.types.CBufRet.f32 %3388, 3
  %3390 = fmul fast float %3389, 1.000000e+03
  %3391 = fmul fast float %370, %3390
  %3392 = call float @dx.op.unary.f32(i32 22, float %3391)  ; Frc(value)
  %3393 = fadd fast float %3392, %360
  %3394 = fmul fast float %371, %3390
  %3395 = call float @dx.op.unary.f32(i32 22, float %3394)  ; Frc(value)
  %3396 = fadd fast float %3395, %362
  %3397 = fmul fast float %3362, %3390
  %3398 = call float @dx.op.unary.f32(i32 22, float %3397)  ; Frc(value)
  %3399 = fmul fast float %3398, 0x401921FB60000000
  %3400 = fadd fast float %3399, %3381
  %3401 = call float @dx.op.unary.f32(i32 13, float %3400)  ; Sin(value)
  %3402 = call float @dx.op.unary.f32(i32 12, float %3400)  ; Cos(value)
  %3403 = fsub fast float -0.000000e+00, %3401
  %3404 = fadd fast float %3355, -5.000000e-01
  %3405 = fadd fast float %3356, -5.000000e-01
  %3406 = fmul fast float %3373, %3404
  %3407 = fmul fast float %3375, %3405
  %3408 = fadd fast float %3406, 5.000000e-01
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = fmul fast float %3384, %3408
  %3411 = fmul fast float %3387, %3409
  %3412 = fmul fast float %3402, %3410
  %3413 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3411, float %3412)  ; FMad(a,b,c)
  %3414 = fmul fast float %3401, %3410
  %3415 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3411, float %3414)  ; FMad(a,b,c)
  %3416 = fadd fast float %3393, %3413
  %3417 = fadd fast float %3396, %3415
  %3418 = icmp ugt i32 %3367, 1
  %3419 = icmp ugt i32 %3365, 33554431
  %3420 = or i1 %3419, %3418
  br i1 %3420, label %3421, label %3446

; <label>:3421                                    ; preds = %3348
  %3422 = add i32 %41, 276
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = lshr i32 %3424, 16
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = fmul fast float %3389, %3426
  %3428 = call float @dx.op.unary.f32(i32 22, float %3427)  ; Frc(value)
  %3429 = mul nuw nsw i32 %3367, %3368
  %3430 = uitofp i32 %3429 to float
  %3431 = fmul fast float %3428, %3430
  %3432 = call float @dx.op.unary.f32(i32 27, float %3431)  ; Round_ni(value)
  %3433 = fptoui float %3432 to i32
  %3434 = urem i32 %3433, %3367
  %3435 = udiv i32 %3433, %3368
  %3436 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3437 = call float @dx.op.unary.f32(i32 22, float %3417)  ; Frc(value)
  %3438 = uitofp i32 %3434 to float
  %3439 = uitofp i32 %3435 to float
  %3440 = fadd fast float %3436, %3438
  %3441 = fadd fast float %3437, %3439
  %3442 = uitofp i32 %3367 to float
  %3443 = uitofp i32 %3368 to float
  %3444 = fdiv fast float %3440, %3442
  %3445 = fdiv fast float %3441, %3443
  br label %3446

; <label>:3446                                    ; preds = %3421, %3348
  %3447 = phi float [ %3444, %3421 ], [ %3416, %3348 ]
  %3448 = phi float [ %3445, %3421 ], [ %3417, %3348 ]
  %3449 = and i32 %3342, 16777216
  %3450 = icmp eq i32 %3449, 0
  br i1 %3450, label %3560, label %3451

; <label>:3451                                    ; preds = %3446
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.CBufRet.f32 %3452, 1
  %3455 = extractvalue %dx.types.CBufRet.f32 %3452, 2
  %3456 = fadd fast float %3453, %142
  %3457 = fadd fast float %3454, %143
  %3458 = fadd fast float %3455, %144
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = icmp eq i32 %42, 65535
  br i1 %3462, label %3557, label %3463

; <label>:3463                                    ; preds = %3451
  %3464 = lshr i32 %42, 1
  %3465 = shl i32 %3464, 2
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %42, 1
  %3469 = icmp ne i32 %3468, 0
  %3470 = lshr i32 %3467, 16
  %3471 = and i32 %3467, 65535
  %3472 = select i1 %3469, i32 %3470, i32 %3471
  %3473 = icmp eq i32 %3472, 65535
  br i1 %3473, label %3553, label %3474

; <label>:3474                                    ; preds = %3463
  %3475 = mul nuw nsw i32 %3472, 40
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = add nuw nsw i32 %3475, 12
  %3481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = add nuw nsw i32 %3475, 24
  %3486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = add nuw nsw i32 %3475, 36
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = fsub fast float %3456, %3477
  %3494 = fsub fast float %3457, %3478
  %3495 = fsub fast float %3458, %3479
  %3496 = fmul fast float %3492, %3493
  %3497 = fmul fast float %3492, %3494
  %3498 = fmul fast float %3492, %3495
  %3499 = call float @dx.op.unary.f32(i32 27, float %3496)  ; Round_ni(value)
  %3500 = call float @dx.op.unary.f32(i32 27, float %3497)  ; Round_ni(value)
  %3501 = call float @dx.op.unary.f32(i32 27, float %3498)  ; Round_ni(value)
  %3502 = fadd fast float %3499, 5.000000e-01
  %3503 = fadd fast float %3500, 5.000000e-01
  %3504 = fadd fast float %3501, 5.000000e-01
  %3505 = fmul fast float %3502, %3482
  %3506 = fmul fast float %3503, %3483
  %3507 = fmul fast float %3504, %3484
  %3508 = shl i32 %42, 2
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call float @dx.op.unary.f32(i32 22, float %3505)  ; Frc(value)
  %3514 = call float @dx.op.unary.f32(i32 22, float %3506)  ; Frc(value)
  %3515 = call float @dx.op.unary.f32(i32 22, float %3507)  ; Frc(value)
  %3516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3512, %dx.types.Handle %36, float %3513, float %3514, float %3515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = fmul fast float %3517, 1.023000e+03
  %3521 = fmul fast float %3518, 1.023000e+03
  %3522 = fmul fast float %3519, 1.023000e+03
  %3523 = fadd fast float %3520, 5.000000e-01
  %3524 = fadd fast float %3521, 5.000000e-01
  %3525 = fadd fast float %3522, 5.000000e-01
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 27, float %3525)  ; Round_ni(value)
  %3529 = fsub fast float %3496, %3499
  %3530 = fsub fast float %3497, %3500
  %3531 = fsub fast float %3498, %3501
  %3532 = fmul fast float %3529, 7.500000e-01
  %3533 = fmul fast float %3530, 7.500000e-01
  %3534 = fmul fast float %3531, 7.500000e-01
  %3535 = fadd fast float %3499, 1.250000e-01
  %3536 = fadd fast float %3535, %3532
  %3537 = fadd fast float %3536, %3526
  %3538 = fadd fast float %3500, 1.250000e-01
  %3539 = fadd fast float %3538, %3533
  %3540 = fadd fast float %3539, %3527
  %3541 = fadd fast float %3501, 1.250000e-01
  %3542 = fadd fast float %3541, %3534
  %3543 = fadd fast float %3542, %3528
  %3544 = fmul fast float %3537, %3487
  %3545 = fmul fast float %3540, %3488
  %3546 = fmul fast float %3543, %3489
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = add i32 %3548, 0
  %3550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3550, %dx.types.Handle %34, float %3544, float %3545, float %3546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  br label %3553

; <label>:3553                                    ; preds = %3474, %3463
  %3554 = phi float [ %3552, %3474 ], [ -1.000000e+00, %3463 ]
  %3555 = fadd fast float %3554, %3461
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  br label %3557

; <label>:3557                                    ; preds = %3553, %3451
  %3558 = phi float [ %3556, %3553 ], [ %3461, %3451 ]
  %3559 = fmul fast float %3558, %429
  br label %3560

; <label>:3560                                    ; preds = %3557, %3446
  %3561 = phi float [ %3559, %3557 ], [ %429, %3446 ]
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 256
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3612, label %3566

; <label>:3566                                    ; preds = %3560
  %3567 = add i32 %41, 452
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3571, %dx.types.Handle %84, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = add i32 %41, 148
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = shl i32 %3576, 4
  %3578 = and i32 %3577, 32752
  %3579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3578)  ; LegacyF16ToF32(value)
  %3580 = lshr i32 %3576, 7
  %3581 = and i32 %3580, 32752
  %3582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3581)  ; LegacyF16ToF32(value)
  %3583 = fsub fast float 1.000000e+00, %3561
  %3584 = call float @dx.op.binary.f32(i32 35, float %3583, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3585 = bitcast float %3561 to i32
  %3586 = sitofp i32 %3585 to float
  %3587 = fadd fast float %3586, 0xC1CFBF8940000000
  %3588 = fmul fast float %3582, %3587
  %3589 = fadd fast float %3588, 0x41CFBF8940000000
  %3590 = fptosi float %3589 to i32
  %3591 = bitcast i32 %3590 to float
  %3592 = bitcast float %3584 to i32
  %3593 = sitofp i32 %3592 to float
  %3594 = fadd fast float %3593, 0xC1CFBF8940000000
  %3595 = fmul fast float %3594, %3582
  %3596 = fadd fast float %3595, 0x41CFBF8940000000
  %3597 = fptosi float %3596 to i32
  %3598 = bitcast i32 %3597 to float
  %3599 = fmul fast float %3591, %3579
  %3600 = fmul fast float %3598, %3579
  %3601 = fsub fast float %3584, %3599
  %3602 = fadd fast float %3600, %3584
  %3603 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3604 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3605 = fsub fast float %3573, %3603
  %3606 = fsub fast float %3604, %3603
  %3607 = bitcast float %3606 to i32
  %3608 = sub nsw i32 2129859010, %3607
  %3609 = bitcast i32 %3608 to float
  %3610 = fmul fast float %3609, %3605
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  br label %3612

; <label>:3612                                    ; preds = %3566, %3560
  %3613 = phi float [ %3611, %3566 ], [ %3561, %3560 ]
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = and i32 %3615, 128
  %3617 = icmp eq i32 %3616, 0
  br i1 %3617, label %3634, label %3618

; <label>:3618                                    ; preds = %3612
  %3619 = add i32 %41, 436
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = add i32 %3621, 0
  %3623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3623, %dx.types.Handle %84, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = and i32 %3627, 524288
  %3629 = icmp ne i32 %3628, 0
  %3630 = fcmp fast ogt float %3625, 0x3FE0101020000000
  %3631 = select i1 %3630, float 1.000000e+00, float 0.000000e+00
  %3632 = select i1 %3629, float %3631, float %3625
  %3633 = fmul fast float %3632, %3613
  br label %3634

; <label>:3634                                    ; preds = %3618, %3612
  %3635 = phi float [ %3633, %3618 ], [ %3613, %3612 ]
  %3636 = fcmp fast ult float %3635, 0x3F70101020000000
  br i1 %3636, label %4375, label %3637

; <label>:3637                                    ; preds = %3634
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 16
  %3641 = icmp eq i32 %3640, 0
  br i1 %3641, label %3840, label %3642

; <label>:3642                                    ; preds = %3637
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = add i32 %41, 388
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %83, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = and i32 %3644, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = lshr i32 %3644, 8
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = fmul fast float %3654, %3656
  %3661 = fadd fast float %3660, %3659
  %3662 = fmul fast float %3661, 0x3F70101000000000
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 512
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3675, label %3667

; <label>:3667                                    ; preds = %3642
  %3668 = add i32 %41, 472
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %3670, 0
  %3672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3672, %dx.types.Handle %84, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  br label %3675

; <label>:3675                                    ; preds = %3667, %3642
  %3676 = phi float [ %3674, %3667 ], [ 1.000000e+00, %3642 ]
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, 33554432
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3787, label %3681

; <label>:3681                                    ; preds = %3675
  %3682 = add i32 %41, 272
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = and i32 %3684, 65535
  %3686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3685)  ; LegacyF16ToF32(value)
  %3687 = lshr i32 %3684, 16
  %3688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3687)  ; LegacyF16ToF32(value)
  %3689 = add i32 %41, 276
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = and i32 %3691, 65535
  %3693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3692)  ; LegacyF16ToF32(value)
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = lshr i32 %3695, 24
  %3697 = uitofp i32 %3696 to float
  %3698 = fmul fast float %3697, 0x3F70101020000000
  %3699 = and i32 %3695, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = fmul fast float %3700, 0x3F70101020000000
  %3702 = lshr i32 %3695, 8
  %3703 = and i32 %3702, 255
  %3704 = uitofp i32 %3703 to float
  %3705 = fmul fast float %3704, 0x3F70101020000000
  %3706 = lshr i32 %3695, 16
  %3707 = and i32 %3706, 255
  %3708 = uitofp i32 %3707 to float
  %3709 = fmul fast float %3708, 0x3F70101020000000
  %3710 = add i32 %41, 268
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = lshr i32 %3712, 24
  %3714 = uitofp i32 %3713 to float
  %3715 = fmul fast float %3714, 0x3F70101020000000
  %3716 = and i32 %3712, 255
  %3717 = uitofp i32 %3716 to float
  %3718 = fmul fast float %3717, 0x3F70101020000000
  %3719 = lshr i32 %3712, 8
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101020000000
  %3723 = lshr i32 %3712, 16
  %3724 = and i32 %3723, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = bitcast float %3651 to i32
  %3728 = ashr i32 %3727, 1
  %3729 = sub nsw i32 1597463174, %3728
  %3730 = bitcast i32 %3729 to float
  %3731 = fmul fast float %3651, 5.000000e-01
  %3732 = fmul fast float %3730, %3730
  %3733 = fmul fast float %3732, %3731
  %3734 = fsub fast float 1.500000e+00, %3733
  %3735 = fmul fast float %3730, %3651
  %3736 = fmul fast float %3735, %3734
  %3737 = bitcast float %3652 to i32
  %3738 = ashr i32 %3737, 1
  %3739 = sub nsw i32 1597463174, %3738
  %3740 = bitcast i32 %3739 to float
  %3741 = fmul fast float %3652, 5.000000e-01
  %3742 = fmul fast float %3740, %3740
  %3743 = fmul fast float %3742, %3741
  %3744 = fsub fast float 1.500000e+00, %3743
  %3745 = fmul fast float %3740, %3652
  %3746 = fmul fast float %3745, %3744
  %3747 = bitcast float %3653 to i32
  %3748 = ashr i32 %3747, 1
  %3749 = sub nsw i32 1597463174, %3748
  %3750 = bitcast i32 %3749 to float
  %3751 = fmul fast float %3653, 5.000000e-01
  %3752 = fmul fast float %3750, %3750
  %3753 = fmul fast float %3752, %3751
  %3754 = fsub fast float 1.500000e+00, %3753
  %3755 = fmul fast float %3750, %3653
  %3756 = fmul fast float %3755, %3754
  %3757 = fsub fast float %3736, %3718
  %3758 = fsub fast float %3746, %3722
  %3759 = fsub fast float %3756, %3726
  %3760 = fmul fast float %3757, %3686
  %3761 = fmul fast float %3758, %3688
  %3762 = fmul fast float %3759, %3693
  %3763 = fadd fast float %3760, %3701
  %3764 = fadd fast float %3761, %3705
  %3765 = fadd fast float %3762, %3709
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = fmul fast float %3766, %3766
  %3770 = fmul fast float %3767, %3767
  %3771 = fmul fast float %3768, %3768
  %3772 = fsub fast float %3769, %3651
  %3773 = fsub fast float %3770, %3652
  %3774 = fsub fast float %3771, %3653
  %3775 = fmul fast float %3772, %3676
  %3776 = fmul fast float %3773, %3676
  %3777 = fmul fast float %3774, %3676
  %3778 = fadd fast float %3775, %3651
  %3779 = fadd fast float %3776, %3652
  %3780 = fadd fast float %3777, %3653
  %3781 = fadd fast float %3698, %3662
  %3782 = fsub fast float %3781, %3715
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fsub fast float %3783, %3662
  %3785 = fmul fast float %3784, %3676
  %3786 = fadd fast float %3785, %3662
  br label %3840

; <label>:3787                                    ; preds = %3675
  %3788 = and i32 %3678, 134217728
  %3789 = icmp eq i32 %3788, 0
  br i1 %3789, label %3824, label %3790

; <label>:3790                                    ; preds = %3787
  %3791 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3792 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3793 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %3794 = fadd fast float %3791, -5.000000e-01
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fadd fast float %3793, -5.000000e-01
  %3797 = fmul fast float %3794, %3676
  %3798 = fmul fast float %3795, %3676
  %3799 = fmul fast float %3796, %3676
  %3800 = fadd fast float %3797, 5.000000e-01
  %3801 = fadd fast float %3798, 5.000000e-01
  %3802 = fadd fast float %3799, 5.000000e-01
  %3803 = call float @dx.op.unary.f32(i32 24, float %3651)  ; Sqrt(value)
  %3804 = call float @dx.op.unary.f32(i32 24, float %3652)  ; Sqrt(value)
  %3805 = call float @dx.op.unary.f32(i32 24, float %3653)  ; Sqrt(value)
  %3806 = fmul fast float %3800, 2.000000e+00
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = fmul fast float %3807, %3803
  %3809 = fadd fast float %3808, %3806
  %3810 = fmul fast float %3809, %3803
  %3811 = fmul fast float %3801, 2.000000e+00
  %3812 = fsub fast float 1.000000e+00, %3811
  %3813 = fmul fast float %3812, %3804
  %3814 = fadd fast float %3813, %3811
  %3815 = fmul fast float %3814, %3804
  %3816 = fmul fast float %3802, 2.000000e+00
  %3817 = fsub fast float 1.000000e+00, %3816
  %3818 = fmul fast float %3817, %3805
  %3819 = fadd fast float %3818, %3816
  %3820 = fmul fast float %3819, %3805
  %3821 = fmul fast float %3810, %3810
  %3822 = fmul fast float %3815, %3815
  %3823 = fmul fast float %3820, %3820
  br label %3840

; <label>:3824                                    ; preds = %3787
  %3825 = fmul fast float %347, %347
  %3826 = fmul fast float %351, %351
  %3827 = fmul fast float %355, %355
  %3828 = fadd fast float %3825, -1.000000e+00
  %3829 = fadd fast float %3826, -1.000000e+00
  %3830 = fadd fast float %3827, -1.000000e+00
  %3831 = fmul fast float %3676, %3828
  %3832 = fmul fast float %3676, %3829
  %3833 = fmul fast float %3676, %3830
  %3834 = fadd fast float %3831, 1.000000e+00
  %3835 = fadd fast float %3832, 1.000000e+00
  %3836 = fadd fast float %3833, 1.000000e+00
  %3837 = fmul fast float %3834, %3651
  %3838 = fmul fast float %3835, %3652
  %3839 = fmul fast float %3836, %3653
  br label %3840

; <label>:3840                                    ; preds = %3824, %3790, %3681, %3637
  %3841 = phi float [ %3786, %3681 ], [ %3662, %3790 ], [ %3662, %3824 ], [ 0x3FA23C0BE0000000, %3637 ]
  %3842 = phi float [ %3778, %3681 ], [ %3821, %3790 ], [ %3837, %3824 ], [ 1.000000e+00, %3637 ]
  %3843 = phi float [ %3779, %3681 ], [ %3822, %3790 ], [ %3838, %3824 ], [ 1.000000e+00, %3637 ]
  %3844 = phi float [ %3780, %3681 ], [ %3823, %3790 ], [ %3839, %3824 ], [ 1.000000e+00, %3637 ]
  %3845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.i32 %3845, 1
  %3847 = and i32 %3846, 1
  %3848 = icmp ne i32 %3847, 0
  %3849 = add i32 %41, 356
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = and i32 %3851, 32
  %3853 = icmp ne i32 %3852, 0
  %3854 = and i1 %3848, %3853
  %3855 = select i1 %3854, float 1.000000e+00, float %3842
  %3856 = select i1 %3854, float 0x3FD3333340000000, float %3843
  %3857 = select i1 %3854, float 0x3FD3333340000000, float %3844
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = and i32 %3859, 32
  %3861 = icmp eq i32 %3860, 0
  br i1 %3861, label %3934, label %3862

; <label>:3862                                    ; preds = %3840
  %3863 = add i32 %41, 140
  %3864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.i32 %3864, 0
  %3866 = add i32 %41, 404
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = add i32 %3868, 0
  %3870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3870, %dx.types.Handle %83, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = and i32 %3865, 255
  %3877 = uitofp i32 %3876 to float
  %3878 = lshr i32 %3865, 8
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = lshr i32 %3865, 16
  %3882 = and i32 %3881, 255
  %3883 = uitofp i32 %3882 to float
  %3884 = fmul fast float %3883, 0x3F70101000000000
  %3885 = fmul fast float %3872, %3877
  %3886 = fadd fast float %3885, %3880
  %3887 = fmul fast float %3886, 0x3F70101000000000
  %3888 = fadd fast float %3873, -5.000000e-01
  %3889 = fadd fast float %3875, -5.000000e-01
  %3890 = fmul fast float %3888, %3884
  %3891 = fmul fast float %3889, %3884
  %3892 = fadd fast float %3890, 5.000000e-01
  %3893 = fadd fast float %3891, 5.000000e-01
  %3894 = fmul fast float %3892, 2.000000e+00
  %3895 = fadd fast float %3894, -1.000000e+00
  %3896 = fmul fast float %3893, 2.000000e+00
  %3897 = fadd fast float %3896, -1.000000e+00
  %3898 = fadd fast float %3895, %3897
  %3899 = fmul fast float %3898, 5.000000e-01
  %3900 = fsub fast float %3895, %3897
  %3901 = fmul fast float %3900, 5.000000e-01
  %3902 = call float @dx.op.unary.f32(i32 6, float %3899)  ; FAbs(value)
  %3903 = fsub fast float 1.000000e+00, %3902
  %3904 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3905 = fsub fast float %3903, %3904
  %3906 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3901, float %3905, float %3899, float %3901, float %3905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3907 = call float @dx.op.unary.f32(i32 25, float %3906)  ; Rsqrt(value)
  %3908 = fmul fast float %3899, %3907
  %3909 = fmul fast float %3901, %3907
  %3910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.i32 %3910, 0
  %3912 = and i32 %3911, 67108864
  %3913 = icmp eq i32 %3912, 0
  br i1 %3913, label %3930, label %3914

; <label>:3914                                    ; preds = %3862
  %3915 = add i32 %41, 328
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = and i32 %3917, 65535
  %3919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3918)  ; LegacyF16ToF32(value)
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = and i32 %3921, 65535
  %3923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3922)  ; LegacyF16ToF32(value)
  %3924 = lshr i32 %3917, 16
  %3925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3924)  ; LegacyF16ToF32(value)
  %3926 = fsub fast float %3887, %3925
  %3927 = fmul fast float %3926, %3919
  %3928 = fadd fast float %3927, %3923
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  br label %3930

; <label>:3930                                    ; preds = %3914, %3862
  %3931 = phi float [ %3929, %3914 ], [ %3887, %3862 ]
  %3932 = call float @dx.op.dot2.f32(i32 54, float %3908, float %3909, float %3351, float %3352)  ; Dot2(ax,ay,bx,by)
  %3933 = call float @dx.op.dot2.f32(i32 54, float %3908, float %3909, float %3353, float %3354)  ; Dot2(ax,ay,bx,by)
  br label %3934

; <label>:3934                                    ; preds = %3930, %3840
  %3935 = phi float [ %3931, %3930 ], [ 0x3FD6666660000000, %3840 ]
  %3936 = phi float [ %3932, %3930 ], [ 0.000000e+00, %3840 ]
  %3937 = phi float [ %3933, %3930 ], [ 0.000000e+00, %3840 ]
  %3938 = phi float [ %3874, %3930 ], [ 1.000000e+00, %3840 ]
  %3939 = add i32 %41, 208
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = lshr i32 %3941, 22
  %3943 = shl nuw nsw i32 %3942, 5
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 64
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %3982, label %3949

; <label>:3949                                    ; preds = %3934
  %3950 = add i32 %41, 420
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = add i32 %3952, 0
  %3954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = and i32 %3956, 131072
  %3958 = icmp eq i32 %3957, 0
  %3959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3954, %dx.types.Handle %83, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = fmul fast float %3960, %335
  %3964 = fmul fast float %3961, %338
  %3965 = fmul fast float %3962, %341
  br i1 %3958, label %3972, label %3966

; <label>:3966                                    ; preds = %3949
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = fmul fast float %3968, %3963
  %3970 = fmul fast float %3968, %3964
  %3971 = fmul fast float %3968, %3965
  br label %3972

; <label>:3972                                    ; preds = %3966, %3949
  %3973 = phi float [ %3969, %3966 ], [ %3963, %3949 ]
  %3974 = phi float [ %3970, %3966 ], [ %3964, %3949 ]
  %3975 = phi float [ %3971, %3966 ], [ %3965, %3949 ]
  %3976 = fmul fast float %3973, %3944
  %3977 = select i1 %203, float %3976, float %3973
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3974, float %3975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = select i1 %203, float 0.000000e+00, float %3973
  %3980 = select i1 %203, float %3978, float %3974
  %3981 = select i1 %203, float 0.000000e+00, float %3975
  br label %3982

; <label>:3982                                    ; preds = %3972, %3934
  %3983 = phi float [ %3979, %3972 ], [ 0.000000e+00, %3934 ]
  %3984 = phi float [ %3980, %3972 ], [ 0.000000e+00, %3934 ]
  %3985 = phi float [ %3981, %3972 ], [ 0.000000e+00, %3934 ]
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, 1024
  %3989 = icmp eq i32 %3988, 0
  br i1 %3989, label %4020, label %3990

; <label>:3990                                    ; preds = %3982
  %3991 = add i32 %41, 200
  %3992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.i32 %3992, 0
  %3994 = and i32 %3993, 255
  %3995 = uitofp i32 %3994 to float
  %3996 = fmul fast float %3995, 0x3F70101020000000
  %3997 = lshr i32 %3993, 8
  %3998 = and i32 %3997, 255
  %3999 = uitofp i32 %3998 to float
  %4000 = fmul fast float %3999, 0x3F70101020000000
  %4001 = lshr i32 %3993, 16
  %4002 = and i32 %4001, 255
  %4003 = uitofp i32 %4002 to float
  %4004 = fmul fast float %4003, 0x3F70101020000000
  %4005 = fmul fast float %3996, %3996
  %4006 = fmul fast float %4000, %4000
  %4007 = fmul fast float %4004, %4004
  %4008 = add i32 %41, 488
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = add i32 %4010, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4012, %dx.types.Handle %84, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = fmul fast float %4005, %4014
  %4018 = fmul fast float %4006, %4015
  %4019 = fmul fast float %4007, %4016
  br label %4020

; <label>:4020                                    ; preds = %3990, %3982
  %4021 = phi float [ %4017, %3990 ], [ 0.000000e+00, %3982 ]
  %4022 = phi float [ %4018, %3990 ], [ 0.000000e+00, %3982 ]
  %4023 = phi float [ %4019, %3990 ], [ 0.000000e+00, %3982 ]
  %4024 = fcmp fast ogt float %4021, 0.000000e+00
  %4025 = fcmp fast ogt float %4022, 0.000000e+00
  %4026 = fcmp fast ogt float %4023, 0.000000e+00
  %4027 = call float @dx.op.unary.f32(i32 23, float %4021)  ; Log(value)
  %4028 = call float @dx.op.unary.f32(i32 23, float %4022)  ; Log(value)
  %4029 = call float @dx.op.unary.f32(i32 23, float %4023)  ; Log(value)
  %4030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.i32 %4030, 0
  %4032 = lshr i32 %4031, 7
  %4033 = and i32 %4032, 32752
  %4034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4033)  ; LegacyF16ToF32(value)
  %4035 = fmul fast float %4027, 0xBFE62E4300000000
  %4036 = fmul fast float %4035, %4034
  %4037 = fmul fast float %4028, 0xBFE62E4300000000
  %4038 = fmul fast float %4037, %4034
  %4039 = fmul fast float %4029, 0xBFE62E4300000000
  %4040 = fmul fast float %4039, %4034
  %4041 = select i1 %4024, float %4036, float 1.270000e+02
  %4042 = select i1 %4025, float %4038, float 1.270000e+02
  %4043 = select i1 %4026, float %4040, float 1.270000e+02
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = and i32 %4045, 10240
  %4047 = icmp eq i32 %4046, 0
  br i1 %4047, label %4092, label %4048

; <label>:4048                                    ; preds = %4020
  %4049 = add i32 %41, 504
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = add i32 %4051, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4053, %dx.types.Handle %84, float %3447, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 3
  %4057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.i32 %4057, 0
  %4059 = and i32 %4058, 1048576
  %4060 = icmp ne i32 %4059, 0
  %4061 = and i32 %4058, 8192
  %4062 = icmp eq i32 %4061, 0
  br i1 %4062, label %4078, label %4063

; <label>:4063                                    ; preds = %4048
  %4064 = extractvalue %dx.types.ResRet.f32 %4054, 2
  %4065 = select i1 %4060, float %4064, float %4055
  %4066 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4067 = select i1 %4060, float %4066, float %4055
  %4068 = add i32 %41, 144
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = lshr i32 %4070, 16
  %4072 = and i32 %4071, 255
  %4073 = uitofp i32 %4072 to float
  %4074 = fmul fast float %4073, 0x3F80101020000000
  %4075 = fmul fast float %4074, %4067
  %4076 = fmul fast float %4074, %4055
  %4077 = fmul fast float %4074, %4065
  br label %4078

; <label>:4078                                    ; preds = %4063, %4048
  %4079 = phi float [ %4075, %4063 ], [ 0.000000e+00, %4048 ]
  %4080 = phi float [ %4076, %4063 ], [ 0.000000e+00, %4048 ]
  %4081 = phi float [ %4077, %4063 ], [ 0.000000e+00, %4048 ]
  %4082 = and i32 %4058, 2048
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4092, label %4084

; <label>:4084                                    ; preds = %4078
  %4085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.i32 %4085, 0
  %4087 = shl i32 %4086, 4
  %4088 = and i32 %4087, 32752
  %4089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4088)  ; LegacyF16ToF32(value)
  %4090 = fmul fast float %4089, %4056
  %4091 = call float @dx.op.binary.f32(i32 35, float %4090, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4092

; <label>:4092                                    ; preds = %4084, %4078, %4020
  %4093 = phi float [ %4079, %4084 ], [ %4079, %4078 ], [ 0.000000e+00, %4020 ]
  %4094 = phi float [ %4080, %4084 ], [ %4080, %4078 ], [ 0.000000e+00, %4020 ]
  %4095 = phi float [ %4081, %4084 ], [ %4081, %4078 ], [ 0.000000e+00, %4020 ]
  %4096 = phi float [ %4091, %4084 ], [ 0x3F70101020000000, %4078 ], [ 0x3F70101020000000, %4020 ]
  %4097 = add i32 %41, 144
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = and i32 %4099, 255
  %4101 = uitofp i32 %4100 to float
  %4102 = lshr i32 %4099, 8
  %4103 = and i32 %4102, 255
  %4104 = uitofp i32 %4103 to float
  %4105 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = fmul fast float %4104, %4105
  %4107 = fadd fast float %4106, %4101
  %4108 = fmul fast float %4107, 0x3F70101020000000
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  br i1 %3339, label %4110, label %4145

; <label>:4110                                    ; preds = %4092
  %4111 = fmul fast float %4096, 2.000000e+00
  %4112 = fcmp fast olt float %4041, 1.270000e+02
  %4113 = fcmp fast olt float %4042, 1.270000e+02
  %4114 = fcmp fast olt float %4043, 1.270000e+02
  %4115 = fmul fast float %4041, 0xBFF7154760000000
  %4116 = fmul fast float %4115, %4111
  %4117 = fmul fast float %4042, 0xBFF7154760000000
  %4118 = fmul fast float %4117, %4111
  %4119 = fmul fast float %4043, 0xBFF7154760000000
  %4120 = fmul fast float %4119, %4111
  %4121 = call float @dx.op.unary.f32(i32 21, float %4116)  ; Exp(value)
  %4122 = call float @dx.op.unary.f32(i32 21, float %4118)  ; Exp(value)
  %4123 = call float @dx.op.unary.f32(i32 21, float %4120)  ; Exp(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4126 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4127 = fadd fast float %4124, -1.000000e+00
  %4128 = select i1 %4112, float %4127, float -1.000000e+00
  %4129 = fadd fast float %4125, -1.000000e+00
  %4130 = select i1 %4113, float %4129, float -1.000000e+00
  %4131 = fadd fast float %4126, -1.000000e+00
  %4132 = select i1 %4114, float %4131, float -1.000000e+00
  %4133 = fmul fast float %4128, %3635
  %4134 = fmul fast float %4130, %3635
  %4135 = fmul fast float %4132, %3635
  %4136 = fadd fast float %4133, 1.000000e+00
  %4137 = fadd fast float %4134, 1.000000e+00
  %4138 = fadd fast float %4135, 1.000000e+00
  %4139 = fmul fast float %4136, %3321
  %4140 = fmul fast float %4137, %3322
  %4141 = fmul fast float %4138, %3323
  %4142 = fmul fast float %4136, %3324
  %4143 = fmul fast float %4137, %3325
  %4144 = fmul fast float %4138, %3326
  br label %4145

; <label>:4145                                    ; preds = %4110, %4092
  %4146 = phi float [ %4139, %4110 ], [ %3321, %4092 ]
  %4147 = phi float [ %4140, %4110 ], [ %3322, %4092 ]
  %4148 = phi float [ %4141, %4110 ], [ %3323, %4092 ]
  %4149 = phi float [ %4142, %4110 ], [ %3324, %4092 ]
  %4150 = phi float [ %4143, %4110 ], [ %3325, %4092 ]
  %4151 = phi float [ %4144, %4110 ], [ %3326, %4092 ]
  %4152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.i32 %4152, 0
  %4154 = and i32 %4153, 3
  %4155 = icmp eq i32 %4154, 3
  br i1 %4155, label %4234, label %4156

; <label>:4156                                    ; preds = %4145
  %4157 = and i32 %4153, 16
  %4158 = icmp ne i32 %4157, 0
  %4159 = select i1 %4158, float %3635, float 0.000000e+00
  %4160 = icmp eq i32 %4154, 0
  br i1 %4160, label %4161, label %4189

; <label>:4161                                    ; preds = %4156
  %4162 = and i32 %4153, 64
  %4163 = icmp ne i32 %4162, 0
  %4164 = select i1 %4163, float %3635, float 0.000000e+00
  %4165 = fsub fast float %3855, %4146
  %4166 = fsub fast float %3856, %4147
  %4167 = fsub fast float %3857, %4148
  %4168 = fmul fast float %4159, %4165
  %4169 = fmul fast float %4159, %4166
  %4170 = fmul fast float %4159, %4167
  %4171 = fadd fast float %4168, %4146
  %4172 = fadd fast float %4169, %4147
  %4173 = fadd fast float %4170, %4148
  %4174 = fsub fast float %3841, %3333
  %4175 = fmul fast float %4159, %4174
  %4176 = fadd fast float %4175, %3333
  %4177 = fsub fast float %3983, %4149
  %4178 = fsub fast float %3984, %4150
  %4179 = fsub fast float %3985, %4151
  %4180 = fmul fast float %4164, %4177
  %4181 = fmul fast float %4164, %4178
  %4182 = fmul fast float %4164, %4179
  %4183 = fadd fast float %4180, %4149
  %4184 = fadd fast float %4181, %4150
  %4185 = fadd fast float %4182, %4151
  %4186 = fsub fast float %4109, %3337
  %4187 = fmul fast float %4159, %4186
  %4188 = fadd fast float %4187, %3337
  br label %4234

; <label>:4189                                    ; preds = %4156
  %4190 = icmp eq i32 %4154, 1
  br i1 %4190, label %4191, label %4204

; <label>:4191                                    ; preds = %4189
  %4192 = fadd fast float %3855, -1.000000e+00
  %4193 = fadd fast float %3856, -1.000000e+00
  %4194 = fadd fast float %3857, -1.000000e+00
  %4195 = fmul fast float %4159, %4192
  %4196 = fmul fast float %4159, %4193
  %4197 = fmul fast float %4159, %4194
  %4198 = fadd fast float %4195, 1.000000e+00
  %4199 = fadd fast float %4196, 1.000000e+00
  %4200 = fadd fast float %4197, 1.000000e+00
  %4201 = fmul fast float %4198, %4146
  %4202 = fmul fast float %4199, %4147
  %4203 = fmul fast float %4200, %4148
  br label %4234

; <label>:4204                                    ; preds = %4189
  %4205 = icmp eq i32 %4154, 2
  br i1 %4205, label %4206, label %4234

; <label>:4206                                    ; preds = %4204
  %4207 = call float @dx.op.unary.f32(i32 24, float %3855)  ; Sqrt(value)
  %4208 = call float @dx.op.unary.f32(i32 24, float %3856)  ; Sqrt(value)
  %4209 = call float @dx.op.unary.f32(i32 24, float %3857)  ; Sqrt(value)
  %4210 = fadd fast float %4207, -5.000000e-01
  %4211 = fadd fast float %4208, -5.000000e-01
  %4212 = fadd fast float %4209, -5.000000e-01
  %4213 = fmul fast float %4210, %4159
  %4214 = fmul fast float %4211, %4159
  %4215 = fmul fast float %4212, %4159
  %4216 = fadd fast float %4213, 5.000000e-01
  %4217 = fadd fast float %4214, 5.000000e-01
  %4218 = fadd fast float %4215, 5.000000e-01
  %4219 = fmul fast float %4216, 2.000000e+00
  %4220 = fsub fast float 1.000000e+00, %4219
  %4221 = fmul fast float %4220, %4146
  %4222 = fadd fast float %4221, %4219
  %4223 = fmul fast float %4222, %4146
  %4224 = fmul fast float %4217, 2.000000e+00
  %4225 = fsub fast float 1.000000e+00, %4224
  %4226 = fmul fast float %4225, %4147
  %4227 = fadd fast float %4226, %4224
  %4228 = fmul fast float %4227, %4147
  %4229 = fmul fast float %4218, 2.000000e+00
  %4230 = fsub fast float 1.000000e+00, %4229
  %4231 = fmul fast float %4230, %4148
  %4232 = fadd fast float %4231, %4229
  %4233 = fmul fast float %4232, %4148
  br label %4234

; <label>:4234                                    ; preds = %4206, %4204, %4191, %4161, %4145
  %4235 = phi float [ %4146, %4145 ], [ %4223, %4206 ], [ %4146, %4204 ], [ %4201, %4191 ], [ %4171, %4161 ]
  %4236 = phi float [ %4147, %4145 ], [ %4228, %4206 ], [ %4147, %4204 ], [ %4202, %4191 ], [ %4172, %4161 ]
  %4237 = phi float [ %4148, %4145 ], [ %4233, %4206 ], [ %4148, %4204 ], [ %4203, %4191 ], [ %4173, %4161 ]
  %4238 = phi float [ %4149, %4145 ], [ %4149, %4206 ], [ %4149, %4204 ], [ %4149, %4191 ], [ %4183, %4161 ]
  %4239 = phi float [ %4150, %4145 ], [ %4150, %4206 ], [ %4150, %4204 ], [ %4150, %4191 ], [ %4184, %4161 ]
  %4240 = phi float [ %4151, %4145 ], [ %4151, %4206 ], [ %4151, %4204 ], [ %4151, %4191 ], [ %4185, %4161 ]
  %4241 = phi float [ %3333, %4145 ], [ %3333, %4206 ], [ %3333, %4204 ], [ %3333, %4191 ], [ %4176, %4161 ]
  %4242 = phi float [ %3337, %4145 ], [ %3337, %4206 ], [ %3337, %4204 ], [ %3337, %4191 ], [ %4188, %4161 ]
  %4243 = and i32 %4153, 12
  %4244 = icmp eq i32 %4243, 12
  br i1 %4244, label %4375, label %4245

; <label>:4245                                    ; preds = %4234
  %4246 = and i32 %4153, 2097184
  %4247 = icmp eq i32 %4246, 2097184
  %4248 = select i1 %4247, float %3635, float 0.000000e+00
  %4249 = and i32 %4153, 4194336
  %4250 = icmp eq i32 %4249, 4194336
  %4251 = select i1 %4250, float %3635, float 0.000000e+00
  %4252 = and i32 %4153, 8388640
  %4253 = icmp eq i32 %4252, 8388640
  %4254 = select i1 %4253, float %3635, float 0.000000e+00
  %4255 = and i32 %4153, 1024
  %4256 = icmp ne i32 %4255, 0
  %4257 = select i1 %4256, float %3635, float 0.000000e+00
  %4258 = and i32 %4153, 2048
  %4259 = icmp ne i32 %4258, 0
  %4260 = select i1 %4259, float %3635, float 0.000000e+00
  %4261 = and i32 %4153, 8192
  %4262 = icmp ne i32 %4261, 0
  %4263 = select i1 %4262, float %3635, float 0.000000e+00
  %4264 = icmp eq i32 %4243, 0
  br i1 %4264, label %4265, label %4299

; <label>:4265                                    ; preds = %4245
  %4266 = fsub fast float %3936, %3319
  %4267 = fsub fast float %3937, %3320
  %4268 = fmul fast float %4248, %4266
  %4269 = fmul fast float %4248, %4267
  %4270 = fadd fast float %4268, %3319
  %4271 = fadd fast float %4269, %3320
  %4272 = fsub fast float %3938, %3335
  %4273 = fmul fast float %4251, %4272
  %4274 = fadd fast float %4273, %3335
  %4275 = fsub fast float %3935, %3334
  %4276 = fmul fast float %4254, %4275
  %4277 = fadd fast float %4276, %3334
  %4278 = fsub fast float %4041, %3330
  %4279 = fsub fast float %4042, %3331
  %4280 = fsub fast float %4043, %3332
  %4281 = fmul fast float %4257, %4278
  %4282 = fmul fast float %4257, %4279
  %4283 = fmul fast float %4257, %4280
  %4284 = fadd fast float %4281, %3330
  %4285 = fadd fast float %4282, %3331
  %4286 = fadd fast float %4283, %3332
  %4287 = fsub fast float %4096, %3336
  %4288 = fmul fast float %4260, %4287
  %4289 = fadd fast float %4288, %3336
  %4290 = fsub fast float %4093, %3327
  %4291 = fsub fast float %4094, %3328
  %4292 = fsub fast float %4095, %3329
  %4293 = fmul fast float %4263, %4290
  %4294 = fmul fast float %4263, %4291
  %4295 = fmul fast float %4263, %4292
  %4296 = fadd fast float %4293, %3327
  %4297 = fadd fast float %4294, %3328
  %4298 = fadd fast float %4295, %3329
  br label %4375

; <label>:4299                                    ; preds = %4245
  %4300 = icmp eq i32 %4243, 4
  br i1 %4300, label %4301, label %4347

; <label>:4301                                    ; preds = %4299
  %4302 = fmul fast float %4248, %3936
  %4303 = fmul fast float %4248, %3937
  %4304 = fadd fast float %4302, %3319
  %4305 = fadd fast float %4303, %3320
  %4306 = call float @dx.op.binary.f32(i32 36, float %3335, float %3938)  ; FMin(a,b)
  %4307 = fsub fast float %4306, %3335
  %4308 = fmul fast float %4307, %4251
  %4309 = fadd fast float %4308, %3335
  %4310 = fadd fast float %3935, %3334
  %4311 = fmul fast float %4310, 0x3FF337FAE0000000
  %4312 = fmul fast float %3334, %3334
  %4313 = fmul fast float %3935, %3935
  %4314 = fadd fast float %4313, %4312
  %4315 = fmul fast float %4314, 0x3FE5152B00000000
  %4316 = fmul fast float %3334, 0xBFCC1F85E0000000
  %4317 = fmul fast float %4316, %3935
  %4318 = fadd fast float %4317, 0xBFE1363700000000
  %4319 = fadd fast float %4318, %4311
  %4320 = fsub fast float %4319, %4315
  %4321 = fmul fast float %4310, 0x3FBA6F0D00000000
  %4322 = fmul fast float %4314, 0x3FD0432880000000
  %4323 = fmul fast float %3334, 0xBFEF110800000000
  %4324 = fmul fast float %4323, %3935
  %4325 = fadd fast float %4324, 1.000000e+00
  %4326 = fsub fast float %4325, %4321
  %4327 = fadd fast float %4326, %4322
  %4328 = fdiv fast float %4320, %4327
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fsub fast float %4329, %3334
  %4331 = fmul fast float %4330, %4254
  %4332 = fadd fast float %4331, %3334
  %4333 = fmul fast float %4257, %4041
  %4334 = fmul fast float %4257, %4042
  %4335 = fmul fast float %4257, %4043
  %4336 = fadd fast float %4333, %3330
  %4337 = fadd fast float %4334, %3331
  %4338 = fadd fast float %4335, %3332
  %4339 = fmul fast float %4260, %4096
  %4340 = fadd fast float %4339, %3336
  %4341 = fmul fast float %4263, %4093
  %4342 = fmul fast float %4263, %4094
  %4343 = fmul fast float %4263, %4095
  %4344 = fadd fast float %4341, %3327
  %4345 = fadd fast float %4342, %3328
  %4346 = fadd fast float %4343, %3329
  br label %4375

; <label>:4347                                    ; preds = %4299
  %4348 = icmp eq i32 %4243, 8
  br i1 %4348, label %4349, label %4375

; <label>:4349                                    ; preds = %4347
  %4350 = fmul fast float %4248, %3936
  %4351 = fmul fast float %4248, %3937
  %4352 = fadd fast float %4350, %3319
  %4353 = fadd fast float %4351, %3320
  %4354 = call float @dx.op.binary.f32(i32 36, float %3335, float %3938)  ; FMin(a,b)
  %4355 = fsub fast float %4354, %3335
  %4356 = fmul fast float %4355, %4251
  %4357 = fadd fast float %4356, %3335
  %4358 = fsub fast float %3935, %3334
  %4359 = fmul fast float %4254, %4358
  %4360 = fadd fast float %4359, %3334
  %4361 = fmul fast float %4257, %4041
  %4362 = fmul fast float %4257, %4042
  %4363 = fmul fast float %4257, %4043
  %4364 = fadd fast float %4361, %3330
  %4365 = fadd fast float %4362, %3331
  %4366 = fadd fast float %4363, %3332
  %4367 = fmul fast float %4260, %4096
  %4368 = fadd fast float %4367, %3336
  %4369 = fmul fast float %4263, %4093
  %4370 = fmul fast float %4263, %4094
  %4371 = fmul fast float %4263, %4095
  %4372 = fadd fast float %4369, %3327
  %4373 = fadd fast float %4370, %3328
  %4374 = fadd fast float %4371, %3329
  br label %4375

; <label>:4375                                    ; preds = %4349, %4347, %4301, %4265, %4234, %3634, %3338, %3318
  %4376 = phi float [ %3319, %4234 ], [ %3319, %3634 ], [ %3319, %3318 ], [ %3319, %3338 ], [ %4270, %4265 ], [ %4304, %4301 ], [ %3319, %4347 ], [ %4352, %4349 ]
  %4377 = phi float [ %3320, %4234 ], [ %3320, %3634 ], [ %3320, %3318 ], [ %3320, %3338 ], [ %4271, %4265 ], [ %4305, %4301 ], [ %3320, %4347 ], [ %4353, %4349 ]
  %4378 = phi float [ %4235, %4234 ], [ %3321, %3634 ], [ %3321, %3318 ], [ %3321, %3338 ], [ %4235, %4265 ], [ %4235, %4301 ], [ %4235, %4347 ], [ %4235, %4349 ]
  %4379 = phi float [ %4236, %4234 ], [ %3322, %3634 ], [ %3322, %3318 ], [ %3322, %3338 ], [ %4236, %4265 ], [ %4236, %4301 ], [ %4236, %4347 ], [ %4236, %4349 ]
  %4380 = phi float [ %4237, %4234 ], [ %3323, %3634 ], [ %3323, %3318 ], [ %3323, %3338 ], [ %4237, %4265 ], [ %4237, %4301 ], [ %4237, %4347 ], [ %4237, %4349 ]
  %4381 = phi float [ %4238, %4234 ], [ %3324, %3634 ], [ %3324, %3318 ], [ %3324, %3338 ], [ %4238, %4265 ], [ %4238, %4301 ], [ %4238, %4347 ], [ %4238, %4349 ]
  %4382 = phi float [ %4239, %4234 ], [ %3325, %3634 ], [ %3325, %3318 ], [ %3325, %3338 ], [ %4239, %4265 ], [ %4239, %4301 ], [ %4239, %4347 ], [ %4239, %4349 ]
  %4383 = phi float [ %4240, %4234 ], [ %3326, %3634 ], [ %3326, %3318 ], [ %3326, %3338 ], [ %4240, %4265 ], [ %4240, %4301 ], [ %4240, %4347 ], [ %4240, %4349 ]
  %4384 = phi float [ %3327, %4234 ], [ %3327, %3634 ], [ %3327, %3318 ], [ %3327, %3338 ], [ %4296, %4265 ], [ %4344, %4301 ], [ %3327, %4347 ], [ %4372, %4349 ]
  %4385 = phi float [ %3328, %4234 ], [ %3328, %3634 ], [ %3328, %3318 ], [ %3328, %3338 ], [ %4297, %4265 ], [ %4345, %4301 ], [ %3328, %4347 ], [ %4373, %4349 ]
  %4386 = phi float [ %3329, %4234 ], [ %3329, %3634 ], [ %3329, %3318 ], [ %3329, %3338 ], [ %4298, %4265 ], [ %4346, %4301 ], [ %3329, %4347 ], [ %4374, %4349 ]
  %4387 = phi float [ %3330, %4234 ], [ %3330, %3634 ], [ %3330, %3318 ], [ %3330, %3338 ], [ %4284, %4265 ], [ %4336, %4301 ], [ %3330, %4347 ], [ %4364, %4349 ]
  %4388 = phi float [ %3331, %4234 ], [ %3331, %3634 ], [ %3331, %3318 ], [ %3331, %3338 ], [ %4285, %4265 ], [ %4337, %4301 ], [ %3331, %4347 ], [ %4365, %4349 ]
  %4389 = phi float [ %3332, %4234 ], [ %3332, %3634 ], [ %3332, %3318 ], [ %3332, %3338 ], [ %4286, %4265 ], [ %4338, %4301 ], [ %3332, %4347 ], [ %4366, %4349 ]
  %4390 = phi float [ %4241, %4234 ], [ %3333, %3634 ], [ %3333, %3318 ], [ %3333, %3338 ], [ %4241, %4265 ], [ %4241, %4301 ], [ %4241, %4347 ], [ %4241, %4349 ]
  %4391 = phi float [ %3334, %4234 ], [ %3334, %3634 ], [ %3334, %3318 ], [ %3334, %3338 ], [ %4277, %4265 ], [ %4332, %4301 ], [ %3334, %4347 ], [ %4360, %4349 ]
  %4392 = phi float [ %3335, %4234 ], [ %3335, %3634 ], [ %3335, %3318 ], [ %3335, %3338 ], [ %4274, %4265 ], [ %4309, %4301 ], [ %3335, %4347 ], [ %4357, %4349 ]
  %4393 = phi float [ %3336, %4234 ], [ %3336, %3634 ], [ %3336, %3318 ], [ %3336, %3338 ], [ %4289, %4265 ], [ %4340, %4301 ], [ %3336, %4347 ], [ %4368, %4349 ]
  %4394 = phi float [ %4242, %4234 ], [ %3337, %3634 ], [ %3337, %3318 ], [ %3337, %3338 ], [ %4242, %4265 ], [ %4242, %4301 ], [ %4242, %4347 ], [ %4242, %4349 ]
  %4395 = add i32 %41, 360
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.i32 %4396, 1
  %4399 = bitcast i32 %4397 to float
  %4400 = bitcast i32 %4398 to float
  %4401 = fcmp fast oge float %4399, 0.000000e+00
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = select i1 %4401, float %4399, float %4403
  %4405 = add i32 %41, 456
  %4406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.i32 %4406, 0
  %4408 = add i32 %4407, 0
  %4409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4409, %dx.types.Handle %84, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = fmul fast float %4411, %4400
  %4413 = fadd fast float %4412, %4404
  %4414 = call float @dx.op.dot2.f32(i32 54, float %4376, float %4377, float %4376, float %4377)  ; Dot2(ax,ay,bx,by)
  %4415 = fmul fast float %4414, 0x3FE3333340000000
  %4416 = fsub fast float 1.000000e+00, %4415
  %4417 = call float @dx.op.dot3.f32(i32 55, float %4376, float %4377, float %4416, float %4376, float %4377, float %4416)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = call float @dx.op.unary.f32(i32 25, float %4417)  ; Rsqrt(value)
  %4419 = fmul fast float %4418, %4376
  %4420 = fmul fast float %4418, %4377
  %4421 = fmul fast float %4416, %4418
  %4422 = fmul fast float %4421, %94
  %4423 = fmul fast float %4421, %95
  %4424 = fmul fast float %4421, %96
  %4425 = fmul fast float %4419, %62
  %4426 = fmul fast float %4419, %63
  %4427 = fmul fast float %4419, %64
  %4428 = fadd fast float %4422, %4425
  %4429 = fadd fast float %4423, %4426
  %4430 = fadd fast float %4424, %4427
  %4431 = fmul fast float %106, %4420
  %4432 = fmul fast float %107, %4420
  %4433 = fmul fast float %108, %4420
  %4434 = fadd fast float %4428, %4431
  %4435 = fadd fast float %4429, %4432
  %4436 = fadd fast float %4430, %4433
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4434, float %4435, float %4436, float %4434, float %4435, float %4436)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = call float @dx.op.unary.f32(i32 25, float %4437)  ; Rsqrt(value)
  %4439 = fmul fast float %4434, %4438
  %4440 = fmul fast float %4435, %4438
  %4441 = fmul fast float %4436, %4438
  %4442 = and i32 %43, 1
  %4443 = icmp eq i32 %4442, 0
  br i1 %4443, label %4444, label %5036

; <label>:4444                                    ; preds = %4375
  %4445 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %4446 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %4447 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %4448 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %4449 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %4450 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %4451 = fadd fast float %4445, %142
  %4452 = fadd fast float %4446, %143
  %4453 = fadd fast float %4447, %144
  %4454 = fadd fast float %4448, %142
  %4455 = fadd fast float %4449, %143
  %4456 = fadd fast float %4450, %144
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4464 = fmul fast float %4458, %87
  %4465 = fmul fast float %4464, %4462
  %4466 = fmul fast float %4459, %88
  %4467 = fmul fast float %4466, %4463
  %4468 = fptoui float %4465 to i32
  %4469 = fptoui float %4467 to i32
  %4470 = fadd fast float %4458, -1.000000e+00
  %4471 = fadd fast float %4459, -1.000000e+00
  %4472 = fptoui float %4470 to i32
  %4473 = fptoui float %4471 to i32
  %4474 = call i32 @dx.op.binary.i32(i32 40, i32 %4468, i32 %4472)  ; UMin(a,b)
  %4475 = call i32 @dx.op.binary.i32(i32 40, i32 %4469, i32 %4473)  ; UMin(a,b)
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4478 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4479 = fmul fast float %4477, %78
  %4480 = fsub fast float %4479, %4478
  %4481 = fadd fast float %4460, -1.000000e+00
  %4482 = call float @dx.op.binary.f32(i32 36, float %4480, float %4481)  ; FMin(a,b)
  %4483 = fptoui float %4482 to i32
  %4484 = fptoui float %4458 to i32
  %4485 = fptoui float %4459 to i32
  %4486 = mul i32 %4483, %4485
  %4487 = add i32 %4486, %4475
  %4488 = mul i32 %4487, %4484
  %4489 = add i32 %4488, %4474
  %4490 = shl i32 %4489, 2
  %4491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.i32 %4491, 0
  %4493 = and i32 %4492, 1023
  %4494 = lshr i32 %4492, 10
  %4495 = icmp eq i32 %4493, 0
  br i1 %4495, label %4999, label %4496

; <label>:4496                                    ; preds = %4444
  %4497 = and i32 %4492, 1023
  br label %4498

; <label>:4498                                    ; preds = %4630, %4496
  %4499 = phi i32 [ %4580, %4630 ], [ 0, %4496 ]
  %4500 = phi float [ %4631, %4630 ], [ 0.000000e+00, %4496 ]
  %4501 = phi float [ %4632, %4630 ], [ %4413, %4496 ]
  %4502 = phi float [ %4633, %4630 ], [ %4394, %4496 ]
  %4503 = phi float [ %4634, %4630 ], [ %4387, %4496 ]
  %4504 = phi float [ %4635, %4630 ], [ %4388, %4496 ]
  %4505 = phi float [ %4636, %4630 ], [ %4389, %4496 ]
  %4506 = phi float [ %4637, %4630 ], [ 0.000000e+00, %4496 ]
  %4507 = phi float [ %4638, %4630 ], [ 0.000000e+00, %4496 ]
  %4508 = phi float [ %4639, %4630 ], [ %4384, %4496 ]
  %4509 = phi float [ %4640, %4630 ], [ %4385, %4496 ]
  %4510 = phi float [ %4641, %4630 ], [ %4386, %4496 ]
  %4511 = phi float [ %4642, %4630 ], [ %4381, %4496 ]
  %4512 = phi float [ %4643, %4630 ], [ %4382, %4496 ]
  %4513 = phi float [ %4644, %4630 ], [ %4383, %4496 ]
  %4514 = phi float [ %4645, %4630 ], [ %4439, %4496 ]
  %4515 = phi float [ %4646, %4630 ], [ %4440, %4496 ]
  %4516 = phi float [ %4647, %4630 ], [ %4441, %4496 ]
  %4517 = phi float [ %4648, %4630 ], [ %4392, %4496 ]
  %4518 = phi float [ %4649, %4630 ], [ %4391, %4496 ]
  %4519 = phi float [ %4650, %4630 ], [ 0.000000e+00, %4496 ]
  %4520 = phi float [ %4651, %4630 ], [ %4390, %4496 ]
  %4521 = phi float [ %4652, %4630 ], [ %4378, %4496 ]
  %4522 = phi float [ %4653, %4630 ], [ %4379, %4496 ]
  %4523 = phi float [ %4654, %4630 ], [ %4380, %4496 ]
  %4524 = add nuw nsw i32 %4499, %4494
  %4525 = shl i32 %4524, 2
  %4526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4527 = extractvalue %dx.types.ResRet.i32 %4526, 0
  %4528 = shl i32 %4527, 8
  %4529 = or i32 %4528, 48
  %4530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = extractvalue %dx.types.ResRet.f32 %4530, 3
  %4535 = or i32 %4528, 64
  %4536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.i32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.i32 %4536, 1
  %4539 = or i32 %4528, 80
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4543 = or i32 %4528, 96
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4549 = or i32 %4528, 112
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4552 = or i32 %4528, 128
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = or i32 %4528, 144
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4563 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4564 = or i32 %4528, 160
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = extractvalue %dx.types.ResRet.f32 %4565, 3
  %4570 = or i32 %4528, 192
  %4571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.i32 %4571, 0
  %4573 = or i32 %4528, 208
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = or i32 %4528, 248
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = add nuw nsw i32 %4499, 1
  %4581 = bitcast float %4534 to i32
  %4582 = and i32 %4581, 512
  %4583 = icmp eq i32 %4582, 0
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4589 = call float @dx.op.dot4.f32(i32 56, float %4585, float %4586, float %4587, float %4588, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4590 = or i32 %4528, 16
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4597 = or i32 %4528, 32
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4604 = call float @dx.op.unary.f32(i32 27, float %4589)  ; Round_ni(value)
  %4605 = call float @dx.op.unary.f32(i32 6, float %4604)  ; FAbs(value)
  %4606 = call float @dx.op.unary.f32(i32 27, float %4596)  ; Round_ni(value)
  %4607 = call float @dx.op.unary.f32(i32 6, float %4606)  ; FAbs(value)
  %4608 = call float @dx.op.unary.f32(i32 6, float %4603)  ; FAbs(value)
  %4609 = call float @dx.op.unary.f32(i32 27, float %4608)  ; Round_ni(value)
  %4610 = fadd fast float %4607, %4605
  %4611 = fadd fast float %4610, %4609
  %4612 = fcmp fast oeq float %4611, 0.000000e+00
  %4613 = call float @dx.op.dot4.f32(i32 56, float %4585, float %4586, float %4587, float %4588, float %4451, float %4452, float %4453, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4614 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %4451, float %4452, float %4453, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4615 = call float @dx.op.dot4.f32(i32 56, float %4585, float %4586, float %4587, float %4588, float %4454, float %4455, float %4456, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4616 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %4454, float %4455, float %4456, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4617 = fsub fast float %4613, %4589
  %4618 = fsub fast float %4615, %4589
  %4619 = fsub fast float %4614, %4596
  %4620 = fsub fast float %4616, %4596
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4624 = fadd fast float %4623, %4621
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4627 = fcmp fast ogt float %4625, %4626
  %4628 = and i1 %4612, %4627
  %4629 = and i1 %4583, %4628
  br i1 %4629, label %4656, label %4630

; <label>:4630                                    ; preds = %4985, %4737, %4656, %4498
  %4631 = phi float [ %4500, %4656 ], [ %4740, %4737 ], [ %4740, %4985 ], [ %4500, %4498 ]
  %4632 = phi float [ %4501, %4656 ], [ %4501, %4737 ], [ %4961, %4985 ], [ %4501, %4498 ]
  %4633 = phi float [ %4502, %4656 ], [ %4502, %4737 ], [ %4959, %4985 ], [ %4502, %4498 ]
  %4634 = phi float [ %4503, %4656 ], [ %4503, %4737 ], [ %4937, %4985 ], [ %4503, %4498 ]
  %4635 = phi float [ %4504, %4656 ], [ %4504, %4737 ], [ %4938, %4985 ], [ %4504, %4498 ]
  %4636 = phi float [ %4505, %4656 ], [ %4505, %4737 ], [ %4939, %4985 ], [ %4505, %4498 ]
  %4637 = phi float [ %4506, %4656 ], [ %4506, %4737 ], [ %4864, %4985 ], [ %4506, %4498 ]
  %4638 = phi float [ %4507, %4656 ], [ %4507, %4737 ], [ %4862, %4985 ], [ %4507, %4498 ]
  %4639 = phi float [ %4508, %4656 ], [ %4508, %4737 ], [ %4907, %4985 ], [ %4508, %4498 ]
  %4640 = phi float [ %4509, %4656 ], [ %4509, %4737 ], [ %4908, %4985 ], [ %4509, %4498 ]
  %4641 = phi float [ %4510, %4656 ], [ %4510, %4737 ], [ %4909, %4985 ], [ %4510, %4498 ]
  %4642 = phi float [ %4511, %4656 ], [ %4511, %4737 ], [ %4995, %4985 ], [ %4511, %4498 ]
  %4643 = phi float [ %4512, %4656 ], [ %4512, %4737 ], [ %4996, %4985 ], [ %4512, %4498 ]
  %4644 = phi float [ %4513, %4656 ], [ %4513, %4737 ], [ %4997, %4985 ], [ %4513, %4498 ]
  %4645 = phi float [ %4514, %4656 ], [ %4514, %4737 ], [ %4843, %4985 ], [ %4514, %4498 ]
  %4646 = phi float [ %4515, %4656 ], [ %4515, %4737 ], [ %4844, %4985 ], [ %4515, %4498 ]
  %4647 = phi float [ %4516, %4656 ], [ %4516, %4737 ], [ %4845, %4985 ], [ %4516, %4498 ]
  %4648 = phi float [ %4517, %4656 ], [ %4517, %4737 ], [ %4917, %4985 ], [ %4517, %4498 ]
  %4649 = phi float [ %4518, %4656 ], [ %4518, %4737 ], [ %4914, %4985 ], [ %4518, %4498 ]
  %4650 = phi float [ %4519, %4656 ], [ %4519, %4737 ], [ %4911, %4985 ], [ %4519, %4498 ]
  %4651 = phi float [ %4520, %4656 ], [ %4520, %4737 ], [ %4860, %4985 ], [ %4520, %4498 ]
  %4652 = phi float [ %4521, %4656 ], [ %4521, %4737 ], [ %4855, %4985 ], [ %4521, %4498 ]
  %4653 = phi float [ %4522, %4656 ], [ %4522, %4737 ], [ %4856, %4985 ], [ %4522, %4498 ]
  %4654 = phi float [ %4523, %4656 ], [ %4523, %4737 ], [ %4857, %4985 ], [ %4523, %4498 ]
  %4655 = icmp eq i32 %4580, %4497
  br i1 %4655, label %4998, label %4498

; <label>:4656                                    ; preds = %4498
  %4657 = extractvalue %dx.types.ResRet.f32 %4550, 3
  %4658 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4662 = extractvalue %dx.types.ResRet.i32 %4536, 3
  %4663 = extractvalue %dx.types.ResRet.i32 %4536, 2
  %4664 = add i32 %4662, 0
  %4665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4664, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4665, %dx.types.Handle %4666, float %4589, float %4596, float undef, float undef, i32 0, i32 0, i32 undef, float %4617, float %4619, float undef, float %4618, float %4620, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = fmul fast float %4668, %4661
  %4670 = fadd fast float %4669, %4660
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fmul fast float %4589, %4545
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4596, float %4672)  ; FMad(a,b,c)
  %4674 = fadd fast float %4673, %4659
  %4675 = fmul fast float %4589, %4547
  %4676 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4596, float %4675)  ; FMad(a,b,c)
  %4677 = fadd fast float %4676, %4658
  %4678 = fmul fast float %4617, %4545
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4619, float %4678)  ; FMad(a,b,c)
  %4680 = fmul fast float %4617, %4547
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4619, float %4680)  ; FMad(a,b,c)
  %4682 = fmul fast float %4618, %4545
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4620, float %4682)  ; FMad(a,b,c)
  %4684 = fmul fast float %4618, %4547
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4620, float %4684)  ; FMad(a,b,c)
  %4686 = add i32 %4663, 0
  %4687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4686, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4687, %dx.types.Handle %4666, float %4674, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4681, float undef, float %4683, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = and i32 %4581, 1024
  %4691 = icmp ne i32 %4690, 0
  %4692 = fcmp fast ogt float %4689, 0x3FE0101020000000
  %4693 = uitofp i1 %4692 to float
  %4694 = select i1 %4691, float %4693, float %4689
  %4695 = and i32 %4581, 8192
  %4696 = icmp ne i32 %4695, 0
  %4697 = select i1 %4696, float %4657, float 1.000000e+00
  %4698 = fmul fast float %4589, 2.000000e+00
  %4699 = fadd fast float %4698, -1.000000e+00
  %4700 = call float @dx.op.unary.f32(i32 6, float %4699)  ; FAbs(value)
  %4701 = fmul fast float %4700, %4578
  %4702 = fsub fast float %4701, %4578
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4596, 2.000000e+00
  %4705 = fadd fast float %4704, -1.000000e+00
  %4706 = call float @dx.op.unary.f32(i32 6, float %4705)  ; FAbs(value)
  %4707 = fmul fast float %4706, %4579
  %4708 = fsub fast float %4707, %4579
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4608, %4541
  %4711 = fsub fast float %4710, %4541
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4671, %4697
  %4714 = fmul fast float %4713, %4668
  %4715 = fmul fast float %4714, %4703
  %4716 = fmul fast float %4715, %4694
  %4717 = fmul fast float %4716, %4709
  %4718 = fmul fast float %4717, %4712
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 1
  %4721 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4722 = fsub fast float %4625, %4721
  %4723 = fmul fast float %4722, %4720
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4718, %4542
  %4726 = fadd fast float %4718, %4542
  %4727 = fmul fast float %4726, %4551
  %4728 = fsub fast float %4727, %4551
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = and i32 %4581, 128
  %4731 = icmp ne i32 %4730, 0
  %4732 = select i1 %4731, float %4729, float %4725
  %4733 = fmul fast float %4732, %4724
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4736 = fcmp fast ugt float %4733, %4735
  br i1 %4736, label %4737, label %4630

; <label>:4737                                    ; preds = %4656
  %4738 = select i1 %4696, float %4733, float 0.000000e+00
  %4739 = fadd fast float %4738, %4500
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  br i1 %4696, label %4630, label %4741

; <label>:4741                                    ; preds = %4737
  %4742 = and i32 %4581, 4
  %4743 = and i32 %4581, 8
  %4744 = add i32 %4537, 0
  %4745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4744, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4747 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4745, %dx.types.Handle %4746, float %4674, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4681, float undef, float %4683, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.ResRet.f32 %4747, 3
  %4752 = bitcast float %4563 to i32
  %4753 = and i32 %4752, 255
  %4754 = uitofp i32 %4753 to float
  %4755 = lshr i32 %4752, 8
  %4756 = and i32 %4755, 255
  %4757 = uitofp i32 %4756 to float
  %4758 = fmul fast float %4751, %4754
  %4759 = fadd fast float %4758, %4757
  %4760 = fmul fast float %4759, 0x3F70101000000000
  %4761 = add i32 %4538, 0
  %4762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4761, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4762, %dx.types.Handle %4746, float %4674, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4681, float undef, float %4683, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4767 = extractvalue %dx.types.ResRet.f32 %4763, 3
  %4768 = bitcast float %4557 to i32
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = lshr i32 %4768, 8
  %4772 = and i32 %4771, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = lshr i32 %4768, 16
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4776, 0x3F70101000000000
  %4778 = fmul fast float %4764, %4770
  %4779 = fadd fast float %4778, %4773
  %4780 = fmul fast float %4779, 0x3F70101000000000
  %4781 = fadd fast float %4765, -5.000000e-01
  %4782 = fadd fast float %4767, -5.000000e-01
  %4783 = fmul fast float %4781, %4777
  %4784 = fmul fast float %4782, %4777
  %4785 = fadd fast float %4783, 5.000000e-01
  %4786 = fadd fast float %4784, 5.000000e-01
  %4787 = fmul fast float %4748, %4566
  %4788 = fmul fast float %4749, %4567
  %4789 = fmul fast float %4750, %4568
  %4790 = fmul fast float %4785, 2.000000e+00
  %4791 = fadd fast float %4790, -1.000000e+00
  %4792 = fmul fast float %4786, 2.000000e+00
  %4793 = fadd fast float %4792, -1.000000e+00
  %4794 = fadd fast float %4791, %4793
  %4795 = fmul fast float %4794, 5.000000e-01
  %4796 = fsub fast float %4791, %4793
  %4797 = fmul fast float %4796, 5.000000e-01
  %4798 = call float @dx.op.unary.f32(i32 6, float %4795)  ; FAbs(value)
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = call float @dx.op.unary.f32(i32 6, float %4797)  ; FAbs(value)
  %4801 = fsub fast float %4799, %4800
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4797, float %4801, float %4795, float %4797, float %4801)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 25, float %4802)  ; Rsqrt(value)
  %4804 = fmul fast float %4795, %4803
  %4805 = fmul fast float %4797, %4803
  %4806 = fmul fast float %4803, %4801
  %4807 = fmul fast float %4806, %4531
  %4808 = fmul fast float %4806, %4532
  %4809 = fmul fast float %4806, %4533
  %4810 = fmul fast float %4804, %4554
  %4811 = fmul fast float %4804, %4555
  %4812 = fmul fast float %4804, %4556
  %4813 = fadd fast float %4810, %4807
  %4814 = fadd fast float %4811, %4808
  %4815 = fadd fast float %4812, %4809
  %4816 = fmul fast float %4805, %4560
  %4817 = fmul fast float %4805, %4561
  %4818 = fmul fast float %4805, %4562
  %4819 = fadd fast float %4813, %4816
  %4820 = fadd fast float %4814, %4817
  %4821 = fadd fast float %4815, %4818
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float %4819, float %4820, float %4821)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  %4824 = fmul fast float %4819, %4823
  %4825 = fmul fast float %4820, %4823
  %4826 = fmul fast float %4821, %4823
  %4827 = icmp ne i32 %4743, 0
  %4828 = select i1 %4827, float 1.000000e+00, float 0.000000e+00
  %4829 = fmul fast float %4733, %4828
  %4830 = and i32 %4581, 1
  %4831 = icmp eq i32 %4830, 0
  br i1 %4831, label %4832, label %4836

; <label>:4832                                    ; preds = %4741
  %4833 = fsub fast float %4824, %4514
  %4834 = fsub fast float %4825, %4515
  %4835 = fsub fast float %4826, %4516
  br label %4836

; <label>:4836                                    ; preds = %4832, %4741
  %4837 = phi float [ %4833, %4832 ], [ %4824, %4741 ]
  %4838 = phi float [ %4834, %4832 ], [ %4825, %4741 ]
  %4839 = phi float [ %4835, %4832 ], [ %4826, %4741 ]
  %4840 = fmul float %4839, %4829
  %4841 = fmul float %4838, %4829
  %4842 = fmul float %4837, %4829
  %4843 = fadd fast float %4842, %4514
  %4844 = fadd fast float %4841, %4515
  %4845 = fadd fast float %4840, %4516
  %4846 = icmp ne i32 %4742, 0
  %4847 = select i1 %4846, float 1.000000e+00, float 0.000000e+00
  %4848 = fmul fast float %4733, %4847
  %4849 = fsub fast float %4787, %4521
  %4850 = fsub fast float %4788, %4522
  %4851 = fsub fast float %4789, %4523
  %4852 = fmul fast float %4849, %4848
  %4853 = fmul fast float %4850, %4848
  %4854 = fmul fast float %4851, %4848
  %4855 = fadd fast float %4852, %4521
  %4856 = fadd fast float %4853, %4522
  %4857 = fadd fast float %4854, %4523
  %4858 = fsub fast float %4760, %4520
  %4859 = fmul fast float %4858, %4848
  %4860 = fadd fast float %4859, %4520
  %4861 = fmul fast float %4848, %4507
  %4862 = fsub fast float %4507, %4861
  %4863 = fmul fast float %4848, %4506
  %4864 = fsub fast float %4506, %4863
  %4865 = bitcast float %4575 to i32
  %4866 = lshr i32 %4865, 16
  %4867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4866)  ; LegacyF16ToF32(value)
  %4868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4869 = extractvalue %dx.types.ResRet.i32 %4868, 0
  %4870 = and i32 %4869, 1
  %4871 = icmp eq i32 %4870, 0
  br i1 %4871, label %4872, label %4897

; <label>:4872                                    ; preds = %4836
  %4873 = fadd fast float %4760, 0xBFB99999A0000000
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = fmul fast float %4874, 0x3FF1C71C80000000
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = fmul fast float %4877, %4787
  %4879 = fmul fast float %4877, %4788
  %4880 = fmul fast float %4877, %4789
  %4881 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4882, float %4883)  ; FMax(a,b)
  %4885 = call float @dx.op.binary.f32(i32 35, float %4881, float %4884)  ; FMax(a,b)
  %4886 = fcmp fast ogt float %4885, 0.000000e+00
  %4887 = bitcast float %4885 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = select i1 %4886, float %4889, float 0.000000e+00
  %4891 = fmul fast float %4881, %4867
  %4892 = fmul fast float %4882, %4867
  %4893 = fmul fast float %4883, %4867
  %4894 = fmul fast float %4891, %4890
  %4895 = fmul fast float %4892, %4890
  %4896 = fmul fast float %4893, %4890
  br label %4897

; <label>:4897                                    ; preds = %4872, %4836
  %4898 = phi float [ %4867, %4836 ], [ %4894, %4872 ]
  %4899 = phi float [ %4867, %4836 ], [ %4895, %4872 ]
  %4900 = phi float [ %4867, %4836 ], [ %4896, %4872 ]
  %4901 = fsub fast float %4898, %4508
  %4902 = fsub fast float %4899, %4509
  %4903 = fsub fast float %4900, %4510
  %4904 = fmul fast float %4901, %4848
  %4905 = fmul fast float %4902, %4848
  %4906 = fmul fast float %4903, %4848
  %4907 = fadd fast float %4904, %4508
  %4908 = fadd fast float %4905, %4509
  %4909 = fadd fast float %4906, %4510
  %4910 = fadd fast float %4733, %4519
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fsub fast float %4780, %4518
  %4913 = fmul fast float %4912, %4829
  %4914 = fadd fast float %4913, %4518
  %4915 = fsub fast float %4766, %4517
  %4916 = fmul fast float %4915, %4829
  %4917 = fadd fast float %4916, %4517
  br i1 %4831, label %4926, label %4918

; <label>:4918                                    ; preds = %4897
  %4919 = and i32 %4581, 32768
  %4920 = icmp eq i32 %4919, 0
  br i1 %4920, label %4936, label %4921

; <label>:4921                                    ; preds = %4918
  %4922 = fmul fast float %4829, 1.270000e+02
  %4923 = fadd fast float %4922, %4503
  %4924 = fadd fast float %4922, %4504
  %4925 = fadd fast float %4922, %4505
  br label %4936

; <label>:4926                                    ; preds = %4897
  %4927 = fsub fast float 1.270000e+02, %4503
  %4928 = fsub fast float 1.270000e+02, %4504
  %4929 = fsub fast float 1.270000e+02, %4505
  %4930 = fmul fast float %4829, %4927
  %4931 = fmul fast float %4829, %4928
  %4932 = fmul fast float %4829, %4929
  %4933 = fadd fast float %4930, %4503
  %4934 = fadd fast float %4931, %4504
  %4935 = fadd fast float %4932, %4505
  br label %4936

; <label>:4936                                    ; preds = %4926, %4921, %4918
  %4937 = phi float [ %4923, %4921 ], [ %4503, %4918 ], [ %4933, %4926 ]
  %4938 = phi float [ %4924, %4921 ], [ %4504, %4918 ], [ %4934, %4926 ]
  %4939 = phi float [ %4925, %4921 ], [ %4505, %4918 ], [ %4935, %4926 ]
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4944 = fmul fast float %4943, %4940
  %4945 = fadd fast float %4944, %4942
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = bitcast float %4569 to i32
  %4948 = and i32 %4947, 65535
  %4949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4948)  ; LegacyF16ToF32(value)
  %4950 = lshr i32 %4947, 16
  %4951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4950)  ; LegacyF16ToF32(value)
  %4952 = fcmp fast oge float %4949, 0.000000e+00
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = select i1 %4952, float %4949, float %4954
  %4956 = fadd fast float %4955, %4951
  %4957 = fsub fast float %4946, %4502
  %4958 = fmul fast float %4957, %4733
  %4959 = fadd fast float %4958, %4502
  %4960 = fmul fast float %4956, %4733
  %4961 = call float @dx.op.binary.f32(i32 35, float %4501, float %4960)  ; FMax(a,b)
  %4962 = and i32 %4581, 16
  %4963 = icmp eq i32 %4962, 0
  br i1 %4963, label %4985, label %4964

; <label>:4964                                    ; preds = %4936
  %4965 = add i32 %4572, 0
  %4966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4965, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4966, %dx.types.Handle %4746, float %4674, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4681, float undef, float %4683, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.ResRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.ResRet.f32 %4967, 2
  %4971 = and i32 %4865, 65535
  %4972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4971)  ; LegacyF16ToF32(value)
  %4973 = fmul fast float %4968, %4566
  %4974 = fmul fast float %4969, %4567
  %4975 = fmul fast float %4970, %4568
  %4976 = and i32 %4581, 16384
  %4977 = icmp ne i32 %4976, 0
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4980 = select i1 %4977, float %4979, float 1.000000e+00
  %4981 = fmul fast float %4980, %4972
  %4982 = fmul fast float %4973, %4981
  %4983 = fmul fast float %4974, %4981
  %4984 = fmul fast float %4975, %4981
  br label %4985

; <label>:4985                                    ; preds = %4964, %4936
  %4986 = phi float [ %4982, %4964 ], [ 0.000000e+00, %4936 ]
  %4987 = phi float [ %4983, %4964 ], [ 0.000000e+00, %4936 ]
  %4988 = phi float [ %4984, %4964 ], [ 0.000000e+00, %4936 ]
  %4989 = fsub fast float %4986, %4511
  %4990 = fsub fast float %4987, %4512
  %4991 = fsub fast float %4988, %4513
  %4992 = fmul fast float %4989, %4733
  %4993 = fmul fast float %4990, %4733
  %4994 = fmul fast float %4991, %4733
  %4995 = fadd fast float %4992, %4511
  %4996 = fadd fast float %4993, %4512
  %4997 = fadd fast float %4994, %4513
  br label %4630

; <label>:4998                                    ; preds = %4630
  br label %4999

; <label>:4999                                    ; preds = %4998, %4444
  %5000 = phi float [ 0.000000e+00, %4444 ], [ %4631, %4998 ]
  %5001 = phi float [ %4413, %4444 ], [ %4632, %4998 ]
  %5002 = phi float [ %4394, %4444 ], [ %4633, %4998 ]
  %5003 = phi float [ %4387, %4444 ], [ %4634, %4998 ]
  %5004 = phi float [ %4388, %4444 ], [ %4635, %4998 ]
  %5005 = phi float [ %4389, %4444 ], [ %4636, %4998 ]
  %5006 = phi float [ 0.000000e+00, %4444 ], [ %4637, %4998 ]
  %5007 = phi float [ 0.000000e+00, %4444 ], [ %4638, %4998 ]
  %5008 = phi float [ %4384, %4444 ], [ %4639, %4998 ]
  %5009 = phi float [ %4385, %4444 ], [ %4640, %4998 ]
  %5010 = phi float [ %4386, %4444 ], [ %4641, %4998 ]
  %5011 = phi float [ %4381, %4444 ], [ %4642, %4998 ]
  %5012 = phi float [ %4382, %4444 ], [ %4643, %4998 ]
  %5013 = phi float [ %4383, %4444 ], [ %4644, %4998 ]
  %5014 = phi float [ %4439, %4444 ], [ %4645, %4998 ]
  %5015 = phi float [ %4440, %4444 ], [ %4646, %4998 ]
  %5016 = phi float [ %4441, %4444 ], [ %4647, %4998 ]
  %5017 = phi float [ %4392, %4444 ], [ %4648, %4998 ]
  %5018 = phi float [ %4391, %4444 ], [ %4649, %4998 ]
  %5019 = phi float [ 0.000000e+00, %4444 ], [ %4650, %4998 ]
  %5020 = phi float [ %4390, %4444 ], [ %4651, %4998 ]
  %5021 = phi float [ %4378, %4444 ], [ %4652, %4998 ]
  %5022 = phi float [ %4379, %4444 ], [ %4653, %4998 ]
  %5023 = phi float [ %4380, %4444 ], [ %4654, %4998 ]
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5015, float %5016, float %5014, float %5015, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.unary.f32(i32 25, float %5024)  ; Rsqrt(value)
  %5026 = fmul fast float %5025, %5014
  %5027 = fmul fast float %5025, %5015
  %5028 = fmul fast float %5025, %5016
  %5029 = fadd fast float %5019, %1219
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float %5026, float %5027, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.unary.f32(i32 25, float %5031)  ; Rsqrt(value)
  %5033 = fmul fast float %5032, %5026
  %5034 = fmul fast float %5032, %5027
  %5035 = fmul fast float %5032, %5028
  br label %5036

; <label>:5036                                    ; preds = %4999, %4375
  %5037 = phi float [ %5033, %4999 ], [ %4439, %4375 ]
  %5038 = phi float [ %5034, %4999 ], [ %4440, %4375 ]
  %5039 = phi float [ %5035, %4999 ], [ %4441, %4375 ]
  %5040 = phi float [ %5011, %4999 ], [ %4381, %4375 ]
  %5041 = phi float [ %5012, %4999 ], [ %4382, %4375 ]
  %5042 = phi float [ %5013, %4999 ], [ %4383, %4375 ]
  %5043 = phi float [ %5021, %4999 ], [ %4378, %4375 ]
  %5044 = phi float [ %5022, %4999 ], [ %4379, %4375 ]
  %5045 = phi float [ %5023, %4999 ], [ %4380, %4375 ]
  %5046 = phi float [ %5003, %4999 ], [ %4387, %4375 ]
  %5047 = phi float [ %5004, %4999 ], [ %4388, %4375 ]
  %5048 = phi float [ %5005, %4999 ], [ %4389, %4375 ]
  %5049 = phi float [ %5008, %4999 ], [ %4384, %4375 ]
  %5050 = phi float [ %5009, %4999 ], [ %4385, %4375 ]
  %5051 = phi float [ %5010, %4999 ], [ %4386, %4375 ]
  %5052 = phi float [ %5020, %4999 ], [ %4390, %4375 ]
  %5053 = phi float [ %5030, %4999 ], [ %1219, %4375 ]
  %5054 = phi float [ %5018, %4999 ], [ %4391, %4375 ]
  %5055 = phi float [ %5017, %4999 ], [ %4392, %4375 ]
  %5056 = phi float [ %5007, %4999 ], [ 0.000000e+00, %4375 ]
  %5057 = phi float [ %5006, %4999 ], [ 0.000000e+00, %4375 ]
  %5058 = phi float [ %5000, %4999 ], [ 0.000000e+00, %4375 ]
  %5059 = phi float [ %5001, %4999 ], [ %4413, %4375 ]
  %5060 = phi float [ %5002, %4999 ], [ %4394, %4375 ]
  %5061 = fadd fast float %5052, 0xBFB99999A0000000
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, 0x3FF1C71C80000000
  %5064 = call float @dx.op.binary.f32(i32 36, float %5052, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5065 = fsub fast float 1.000000e+00, %5063
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %5066, %5043
  %5068 = fmul fast float %5066, %5044
  %5069 = fmul fast float %5066, %5045
  %5070 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = fmul fast float %5063, %5043
  %5074 = fmul fast float %5063, %5044
  %5075 = fmul fast float %5063, %5045
  %5076 = fadd fast float %5073, %5064
  %5077 = fadd fast float %5074, %5064
  %5078 = fadd fast float %5075, %5064
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = and i32 %5084, 1
  %5086 = icmp eq i32 %5085, 0
  br i1 %5086, label %5101, label %5087

; <label>:5087                                    ; preds = %5036
  %5088 = call float @dx.op.binary.f32(i32 35, float %5071, float %5072)  ; FMax(a,b)
  %5089 = call float @dx.op.binary.f32(i32 35, float %5070, float %5088)  ; FMax(a,b)
  %5090 = fcmp fast ogt float %5089, 0.000000e+00
  %5091 = bitcast float %5089 to i32
  %5092 = sub nsw i32 2129859010, %5091
  %5093 = bitcast i32 %5092 to float
  %5094 = select i1 %5090, float %5093, float 0.000000e+00
  %5095 = fmul fast float %5070, %5049
  %5096 = fmul fast float %5071, %5050
  %5097 = fmul fast float %5072, %5051
  %5098 = fmul fast float %5095, %5094
  %5099 = fmul fast float %5096, %5094
  %5100 = fmul fast float %5097, %5094
  br label %5101

; <label>:5101                                    ; preds = %5087, %5036
  %5102 = phi float [ %5098, %5087 ], [ %5049, %5036 ]
  %5103 = phi float [ %5099, %5087 ], [ %5050, %5036 ]
  %5104 = phi float [ %5100, %5087 ], [ %5051, %5036 ]
  %5105 = call float @dx.op.binary.f32(i32 36, float %5046, float 1.270000e+02)  ; FMin(a,b)
  %5106 = call float @dx.op.binary.f32(i32 36, float %5047, float 1.270000e+02)  ; FMin(a,b)
  %5107 = call float @dx.op.binary.f32(i32 36, float %5048, float 1.270000e+02)  ; FMin(a,b)
  %5108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5109 = extractvalue %dx.types.CBufRet.i32 %5108, 3
  %5110 = and i32 %5109, 8
  %5111 = icmp ne i32 %5110, 0
  %5112 = call float @dx.op.binary.f32(i32 35, float %5070, float %5043)  ; FMax(a,b)
  %5113 = call float @dx.op.binary.f32(i32 35, float %5071, float %5043)  ; FMax(a,b)
  %5114 = call float @dx.op.binary.f32(i32 35, float %5072, float %5043)  ; FMax(a,b)
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = select i1 %203, float %5043, float %5070
  %5117 = select i1 %203, float %5115, float %5071
  %5118 = select i1 %203, float 1.000000e+00, float %5072
  %5119 = select i1 %5111, float %5112, float %5116
  %5120 = select i1 %5111, float %5113, float %5117
  %5121 = select i1 %5111, float %5114, float %5118
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = select i1 %203, float %5122, float %5102
  %5124 = select i1 %203, float %5122, float %5103
  %5125 = select i1 %203, float %5122, float %5104
  %5126 = and i32 %179, 3
  %5127 = select i1 %173, i32 %5126, i32 0
  %5128 = icmp eq i32 %5127, 1
  br i1 %5128, label %5129, label %5205

; <label>:5129                                    ; preds = %5101
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5133 = fadd fast float %5131, %142
  %5134 = fadd fast float %5132, %143
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = fsub fast float %5133, %5136
  %5139 = fsub fast float %5134, %5137
  %5140 = fmul fast float %5138, %5138
  %5141 = fmul fast float %5139, %5139
  %5142 = fadd fast float %5140, %5141
  %5143 = call float @dx.op.unary.f32(i32 24, float %5142)  ; Sqrt(value)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5145 = fcmp fast olt float %5143, %5144
  br i1 %5145, label %5146, label %5199

; <label>:5146                                    ; preds = %5129
  %5147 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5148 = fadd fast float %5147, %144
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5156 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5149, 3
  %5159 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5160 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5161 = fadd fast float %5158, %5133
  %5162 = fadd fast float %5159, %5134
  %5163 = fadd fast float %5148, %5160
  %5164 = fmul fast float %5161, %5150
  %5165 = call float @dx.op.tertiary.f32(i32 46, float %5162, float %5152, float %5164)  ; FMad(a,b,c)
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5163, float %5154, float %5165)  ; FMad(a,b,c)
  %5167 = fmul fast float %5161, %5155
  %5168 = call float @dx.op.tertiary.f32(i32 46, float %5162, float %5156, float %5167)  ; FMad(a,b,c)
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %5163, float %5157, float %5168)  ; FMad(a,b,c)
  %5170 = fsub fast float %5166, %5158
  %5171 = fsub fast float %5169, %5159
  %5172 = fsub fast float %5170, %5136
  %5173 = fadd fast float %5172, %5144
  %5174 = fsub fast float %5171, %5137
  %5175 = fadd fast float %5174, %5144
  %5176 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5177 = fmul fast float %5173, %5176
  %5178 = fmul fast float %5175, %5176
  %5179 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5181 = fsub fast float 1.000000e+00, %5179
  %5182 = fsub fast float 1.000000e+00, %5180
  %5183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5181, float %5182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 0
  %5185 = fcmp fast ugt float %5184, 0.000000e+00
  br i1 %5185, label %5186, label %5199

; <label>:5186                                    ; preds = %5146
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5189 = fmul fast float %5188, %5184
  %5190 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5191 = fadd fast float %5190, %5189
  %5192 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5193 = fadd fast float %5191, %5160
  %5194 = fmul fast float %5166, %5154
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5157, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5192, float %5195)  ; FMad(a,b,c)
  %5197 = fsub fast float %5196, %5160
  %5198 = fsub fast float %5197, %5147
  br label %5199

; <label>:5199                                    ; preds = %5186, %5146, %5129
  %5200 = phi i1 [ true, %5186 ], [ false, %5146 ], [ false, %5129 ]
  %5201 = phi float [ %5198, %5186 ], [ -1.310720e+05, %5146 ], [ -1.310720e+05, %5129 ]
  %5202 = fsub fast float %5201, %144
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = select i1 %5200, float %5203, float 1.000000e+00
  br label %5205

; <label>:5205                                    ; preds = %5199, %5101
  %5206 = phi float [ %5204, %5199 ], [ 0.000000e+00, %5101 ]
  %5207 = icmp eq i32 %5127, 3
  %5208 = select i1 %5207, float 1.000000e+00, float %5206
  %5209 = call float @dx.op.binary.f32(i32 35, float %5058, float %5208)  ; FMax(a,b)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = fcmp fast une float %5210, 0.000000e+00
  %5212 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.unary.f32(i32 25, float %5212)  ; Rsqrt(value)
  br i1 %5211, label %5221, label %5214

; <label>:5214                                    ; preds = %5205
  %5215 = fmul fast float %5213, %142
  %5216 = fmul fast float %5213, %143
  %5217 = fmul fast float %5213, %144
  %5218 = fsub fast float -0.000000e+00, %5215
  %5219 = fsub fast float -0.000000e+00, %5216
  %5220 = fsub fast float -0.000000e+00, %5217
  br label %5389

; <label>:5221                                    ; preds = %5205
  %5222 = fmul fast float %142, %5213
  %5223 = fsub fast float -0.000000e+00, %5222
  %5224 = fmul fast float %143, %5213
  %5225 = fsub fast float -0.000000e+00, %5224
  %5226 = fmul fast float %144, %5213
  %5227 = fsub fast float -0.000000e+00, %5226
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5225, float %5227, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fmul fast float %5210, 2.500000e+00
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fmul fast float %5210, 0x4013FFFFE0000000
  %5232 = fadd fast float %5231, 0xBFFFFFFFE0000000
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5210, 0x4004000020000000
  %5235 = fadd fast float %5234, 0xBFF8000040000000
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5238 = fmul fast float %5061, 1.000000e+01
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5239, 2.000000e+00
  %5241 = fsub fast float 3.000000e+00, %5240
  %5242 = fmul fast float %5239, %5239
  %5243 = fmul fast float %5242, %5241
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fsub fast float 0x3FE3333340000000, %5082
  %5246 = fmul fast float %5245, 0x400AAAAAA0000000
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5244, %5247
  %5249 = fmul fast float %5119, 0x3FEA2B8620000000
  %5250 = fmul fast float %5120, 0x3FEA2B8620000000
  %5251 = fmul fast float %5121, 0x3FEA2B8620000000
  %5252 = fadd fast float %5249, 0x3FC81DFBA0000000
  %5253 = fmul fast float %5252, %5119
  %5254 = fadd fast float %5253, 0x3F910E6020000000
  %5255 = fadd fast float %5250, 0x3FC81DFBA0000000
  %5256 = fmul fast float %5255, %5120
  %5257 = fadd fast float %5256, 0x3F910E6020000000
  %5258 = fadd fast float %5251, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %5121
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = fsub fast float %5261, %5119
  %5265 = fsub fast float %5262, %5120
  %5266 = fsub fast float %5263, %5121
  %5267 = fmul fast float %5264, %5237
  %5268 = fmul fast float %5267, %5248
  %5269 = fmul fast float %5265, %5237
  %5270 = fmul fast float %5269, %5248
  %5271 = fmul fast float %5266, %5237
  %5272 = fmul fast float %5271, %5248
  %5273 = fadd fast float %5268, %5119
  %5274 = fadd fast float %5270, %5120
  %5275 = fadd fast float %5272, %5121
  %5276 = fmul fast float %5055, %5055
  %5277 = fmul fast float %5276, %5276
  %5278 = fadd fast float %5233, 1.000000e+00
  %5279 = fsub fast float %5278, %5248
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5277
  %5284 = call float @dx.op.binary.f32(i32 36, float %5280, float %5283)  ; FMin(a,b)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5284, float %5285)  ; FMax(a,b)
  %5287 = fadd fast float %5282, 0xBFE4CCCCC0000000
  %5288 = fmul fast float %5287, 0x4006DB6DA0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, 2.000000e+00
  %5291 = fsub fast float 3.000000e+00, %5290
  %5292 = bitcast float %5079 to i32
  %5293 = ashr i32 %5292, 1
  %5294 = add nsw i32 %5293, 532487669
  %5295 = bitcast i32 %5294 to float
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = bitcast float %5296 to i32
  %5298 = sub nsw i32 2129859010, %5297
  %5299 = bitcast i32 %5298 to float
  %5300 = fmul fast float %5299, 2.000000e+00
  %5301 = bitcast float %5080 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5081 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = fsub fast float 0x4002A9FBE0000000, %5300
  %5320 = fadd fast float %5300, 0x3FD54FDF00000000
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, %5319
  %5325 = fmul fast float %5324, %5324
  %5326 = fsub fast float 0x4002A9FBE0000000, %5309
  %5327 = fadd fast float %5309, 0x3FD54FDF00000000
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %5326
  %5332 = fmul fast float %5331, %5331
  %5333 = fsub fast float 0x4002A9FBE0000000, %5318
  %5334 = fadd fast float %5318, 0x3FD54FDF00000000
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5338
  %5340 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5325)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5332)  ; FMax(a,b)
  %5342 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5339)  ; FMax(a,b)
  %5343 = fsub fast float 1.000000e+00, %5228
  %5344 = fadd fast float %5343, %5244
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5346 = fsub fast float 1.000000e+00, %5208
  %5347 = fmul fast float %5286, %5346
  %5348 = fmul fast float %5289, %5289
  %5349 = fmul fast float %5348, %5347
  %5350 = fmul fast float %5349, %5291
  %5351 = fmul fast float %5346, 0xBFE99999A0000000
  %5352 = fmul fast float %5351, %5237
  %5353 = fmul fast float %5352, %5248
  %5354 = fadd fast float %5353, 1.000000e+00
  %5355 = fadd fast float %5082, -1.000000e+00
  %5356 = fmul fast float %5354, %5355
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = fsub fast float %5340, %5079
  %5359 = fsub fast float %5341, %5080
  %5360 = fsub fast float %5342, %5081
  %5361 = fmul fast float %5350, %5358
  %5362 = fmul fast float %5350, %5359
  %5363 = fmul fast float %5350, %5360
  %5364 = fadd fast float %5361, %5079
  %5365 = fadd fast float %5362, %5080
  %5366 = fadd fast float %5363, %5081
  %5367 = fsub fast float %94, %5037
  %5368 = fsub fast float %95, %5038
  %5369 = fsub fast float %96, %5039
  %5370 = fmul fast float %5350, %5367
  %5371 = fmul fast float %5350, %5368
  %5372 = fmul fast float %5350, %5369
  %5373 = fadd fast float %5370, %5037
  %5374 = fadd fast float %5371, %5038
  %5375 = fadd fast float %5372, %5039
  %5376 = fmul fast float %5350, %5345
  %5377 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5376, %5378
  %5380 = fadd fast float %5379, %5377
  %5381 = fsub fast float 1.000000e+00, %5055
  %5382 = fmul fast float %5350, %5381
  %5383 = fadd fast float %5382, %5055
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5373, float %5374, float %5375, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5373, %5385
  %5387 = fmul fast float %5374, %5385
  %5388 = fmul fast float %5375, %5385
  br label %5389

; <label>:5389                                    ; preds = %5221, %5214
  %5390 = phi float [ %5220, %5214 ], [ %5227, %5221 ]
  %5391 = phi float [ %5219, %5214 ], [ %5225, %5221 ]
  %5392 = phi float [ %5218, %5214 ], [ %5223, %5221 ]
  %5393 = phi float [ %5217, %5214 ], [ %5226, %5221 ]
  %5394 = phi float [ %5216, %5214 ], [ %5224, %5221 ]
  %5395 = phi float [ %5215, %5214 ], [ %5222, %5221 ]
  %5396 = phi float [ %5037, %5214 ], [ %5386, %5221 ]
  %5397 = phi float [ %5038, %5214 ], [ %5387, %5221 ]
  %5398 = phi float [ %5039, %5214 ], [ %5388, %5221 ]
  %5399 = phi float [ %5079, %5214 ], [ %5364, %5221 ]
  %5400 = phi float [ %5080, %5214 ], [ %5365, %5221 ]
  %5401 = phi float [ %5081, %5214 ], [ %5366, %5221 ]
  %5402 = phi float [ %5119, %5214 ], [ %5273, %5221 ]
  %5403 = phi float [ %5120, %5214 ], [ %5274, %5221 ]
  %5404 = phi float [ %5121, %5214 ], [ %5275, %5221 ]
  %5405 = phi float [ %5082, %5214 ], [ %5380, %5221 ]
  %5406 = phi float [ %5055, %5214 ], [ %5383, %5221 ]
  %5407 = select i1 %203, float 0.000000e+00, float %5401
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5397, float %5398, float %5392, float %5391, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5394, float %5393, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = fmul fast float %5410, 2.000000e+00
  %5412 = fmul fast float %5411, %5396
  %5413 = fmul fast float %5411, %5397
  %5414 = fmul fast float %5411, %5398
  %5415 = fsub fast float %5395, %5412
  %5416 = fsub fast float %5394, %5413
  %5417 = fsub fast float %5393, %5414
  %5418 = call float @dx.op.binary.f32(i32 36, float %5406, float 1.000000e+00)  ; FMin(a,b)
  %5419 = fsub fast float 1.000000e+00, %5406
  %5420 = bitcast float %5419 to i32
  %5421 = sub nsw i32 2129859010, %5420
  %5422 = bitcast i32 %5421 to float
  %5423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5424 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = fcmp fast oeq float %5424, 0.000000e+00
  %5426 = fcmp fast oeq float %5423, 0.000000e+00
  %5427 = or i1 %5426, %5425
  br i1 %5427, label %5457, label %5428

; <label>:5428                                    ; preds = %5389
  %5429 = fsub fast float -0.000000e+00, %61
  %5430 = fsub fast float -0.000000e+00, %59
  %5431 = call float @dx.op.unary.f32(i32 24, float %5424)  ; Sqrt(value)
  %5432 = fdiv fast float %5431, %5423
  %5433 = fcmp fast ogt float %5432, 0x3FFB6F8900000000
  %5434 = select i1 %5433, float 0x3FFB6F8900000000, float %5432
  %5435 = fmul fast float %5434, 0x3FE8A23460000000
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = call float @dx.op.binary.f32(i32 35, float %5434, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5438 = fmul fast float %5436, %5423
  %5439 = fmul fast float %5437, 0x3FF279A740000000
  %5440 = fadd fast float %5439, -1.000000e+00
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %60, float %5429, float %5430, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.unary.f32(i32 25, float %5441)  ; Rsqrt(value)
  %5443 = fmul fast float %5442, %5429
  %5444 = fmul fast float %5442, %5430
  %5445 = fmul fast float %5442, %60
  %5446 = fmul fast float %5440, %5440
  %5447 = fsub fast float 1.000000e+00, %5446
  %5448 = fmul fast float %5437, 0x40005F8BE0000000
  %5449 = fsub fast float 0x400C5BF8A0000000, %5448
  %5450 = fdiv fast float %5438, %5449
  %5451 = fmul fast float %5450, 0x3FEE31C3C0000000
  %5452 = fmul fast float %5451, %5447
  %5453 = fmul fast float %5437, 0x3FDACB7480000000
  %5454 = fadd fast float %5453, 0xBFD7347680000000
  %5455 = fmul fast float %5454, %5450
  %5456 = fmul fast float %5455, %5447
  br label %5457

; <label>:5457                                    ; preds = %5428, %5389
  %5458 = phi float [ %5443, %5428 ], [ 0.000000e+00, %5389 ]
  %5459 = phi float [ %5444, %5428 ], [ 0.000000e+00, %5389 ]
  %5460 = phi float [ %5445, %5428 ], [ 0.000000e+00, %5389 ]
  %5461 = phi float [ %5452, %5428 ], [ 0.000000e+00, %5389 ]
  %5462 = phi float [ %5456, %5428 ], [ 0.000000e+00, %5389 ]
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = fmul fast float %5463, 0x3FDF454380000000
  %5465 = fmul fast float %5463, %5463
  %5466 = fmul fast float %5465, 0x3FEE471020000000
  %5467 = fadd fast float %5466, 0xBFD42F6020000000
  %5468 = fmul fast float %5423, 0x3FD20DD760000000
  %5469 = fmul fast float %5467, %5462
  %5470 = fadd fast float %5469, %5468
  %5471 = fmul fast float %5464, %5461
  %5472 = fadd fast float %5470, %5471
  %5473 = fsub fast float %5470, %5471
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fmul fast float %5474, 0x3FDF454380000000
  %5476 = fmul fast float %5474, %5474
  %5477 = fmul fast float %5476, 0x3FEE471020000000
  %5478 = fadd fast float %5477, 0xBFD42F6020000000
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5461, float %5462, float 0x3FD20DD760000000, float %5475, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fcmp fast oeq float %5481, 0.000000e+00
  %5483 = fcmp fast oeq float %5480, 0.000000e+00
  %5484 = or i1 %5483, %5482
  br i1 %5484, label %5514, label %5485

; <label>:5485                                    ; preds = %5457
  %5486 = fsub fast float -0.000000e+00, %57
  %5487 = fsub fast float -0.000000e+00, %55
  %5488 = call float @dx.op.unary.f32(i32 24, float %5481)  ; Sqrt(value)
  %5489 = fdiv fast float %5488, %5480
  %5490 = fcmp fast ogt float %5489, 0x3FFB6F8900000000
  %5491 = select i1 %5490, float 0x3FFB6F8900000000, float %5489
  %5492 = fmul fast float %5491, 0x3FE8A23460000000
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5491, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5495 = fmul fast float %5493, %5480
  %5496 = fmul fast float %5494, 0x3FF279A740000000
  %5497 = fadd fast float %5496, -1.000000e+00
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5486, float %5487, float %56, float %5486, float %5487, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.unary.f32(i32 25, float %5498)  ; Rsqrt(value)
  %5500 = fmul fast float %5499, %5486
  %5501 = fmul fast float %5499, %5487
  %5502 = fmul fast float %5499, %56
  %5503 = fmul fast float %5497, %5497
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = fmul fast float %5494, 0x40005F8BE0000000
  %5506 = fsub fast float 0x400C5BF8A0000000, %5505
  %5507 = fdiv fast float %5495, %5506
  %5508 = fmul fast float %5507, 0x3FEE31C3C0000000
  %5509 = fmul fast float %5508, %5504
  %5510 = fmul fast float %5494, 0x3FDACB7480000000
  %5511 = fadd fast float %5510, 0xBFD7347680000000
  %5512 = fmul fast float %5511, %5507
  %5513 = fmul fast float %5512, %5504
  br label %5514

; <label>:5514                                    ; preds = %5485, %5457
  %5515 = phi float [ %5500, %5485 ], [ 0.000000e+00, %5457 ]
  %5516 = phi float [ %5501, %5485 ], [ 0.000000e+00, %5457 ]
  %5517 = phi float [ %5502, %5485 ], [ 0.000000e+00, %5457 ]
  %5518 = phi float [ %5509, %5485 ], [ 0.000000e+00, %5457 ]
  %5519 = phi float [ %5513, %5485 ], [ 0.000000e+00, %5457 ]
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5517, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = fmul fast float %5520, 0x3FDF454380000000
  %5522 = fmul fast float %5520, %5520
  %5523 = fmul fast float %5522, 0x3FEE471020000000
  %5524 = fadd fast float %5523, 0xBFD42F6020000000
  %5525 = fmul fast float %5480, 0x3FD20DD760000000
  %5526 = fmul fast float %5524, %5519
  %5527 = fadd fast float %5526, %5525
  %5528 = fmul fast float %5521, %5518
  %5529 = fadd fast float %5527, %5528
  %5530 = fsub fast float %5527, %5528
  %5531 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5517, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = fmul fast float %5531, 0x3FDF454380000000
  %5533 = fmul fast float %5531, %5531
  %5534 = fmul fast float %5533, 0x3FEE471020000000
  %5535 = fadd fast float %5534, 0xBFD42F6020000000
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5518, float %5519, float 0x3FD20DD760000000, float %5532, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5538 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fcmp fast oeq float %5538, 0.000000e+00
  %5540 = fcmp fast oeq float %5537, 0.000000e+00
  %5541 = or i1 %5540, %5539
  br i1 %5541, label %5571, label %5542

; <label>:5542                                    ; preds = %5514
  %5543 = fsub fast float -0.000000e+00, %53
  %5544 = fsub fast float -0.000000e+00, %51
  %5545 = call float @dx.op.unary.f32(i32 24, float %5538)  ; Sqrt(value)
  %5546 = fdiv fast float %5545, %5537
  %5547 = fcmp fast ogt float %5546, 0x3FFB6F8900000000
  %5548 = select i1 %5547, float 0x3FFB6F8900000000, float %5546
  %5549 = fmul fast float %5548, 0x3FE8A23460000000
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = call float @dx.op.binary.f32(i32 35, float %5548, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5552 = fmul fast float %5550, %5537
  %5553 = fmul fast float %5551, 0x3FF279A740000000
  %5554 = fadd fast float %5553, -1.000000e+00
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5543, float %5544, float %52, float %5543, float %5544, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = call float @dx.op.unary.f32(i32 25, float %5555)  ; Rsqrt(value)
  %5557 = fmul fast float %5556, %5543
  %5558 = fmul fast float %5556, %5544
  %5559 = fmul fast float %5556, %52
  %5560 = fmul fast float %5554, %5554
  %5561 = fsub fast float 1.000000e+00, %5560
  %5562 = fmul fast float %5551, 0x40005F8BE0000000
  %5563 = fsub fast float 0x400C5BF8A0000000, %5562
  %5564 = fdiv fast float %5552, %5563
  %5565 = fmul fast float %5564, 0x3FEE31C3C0000000
  %5566 = fmul fast float %5565, %5561
  %5567 = fmul fast float %5551, 0x3FDACB7480000000
  %5568 = fadd fast float %5567, 0xBFD7347680000000
  %5569 = fmul fast float %5568, %5564
  %5570 = fmul fast float %5569, %5561
  br label %5571

; <label>:5571                                    ; preds = %5542, %5514
  %5572 = phi float [ %5557, %5542 ], [ 0.000000e+00, %5514 ]
  %5573 = phi float [ %5558, %5542 ], [ 0.000000e+00, %5514 ]
  %5574 = phi float [ %5559, %5542 ], [ 0.000000e+00, %5514 ]
  %5575 = phi float [ %5566, %5542 ], [ 0.000000e+00, %5514 ]
  %5576 = phi float [ %5570, %5542 ], [ 0.000000e+00, %5514 ]
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5573, float %5574, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = fmul fast float %5577, 0x3FDF454380000000
  %5579 = fmul fast float %5577, %5577
  %5580 = fmul fast float %5579, 0x3FEE471020000000
  %5581 = fadd fast float %5580, 0xBFD42F6020000000
  %5582 = fmul fast float %5537, 0x3FD20DD760000000
  %5583 = fmul fast float %5581, %5576
  %5584 = fadd fast float %5583, %5582
  %5585 = fmul fast float %5578, %5575
  %5586 = fadd fast float %5584, %5585
  %5587 = fsub fast float %5584, %5585
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5573, float %5574, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = fmul fast float %5588, 0x3FDF454380000000
  %5590 = fmul fast float %5588, %5588
  %5591 = fmul fast float %5590, 0x3FEE471020000000
  %5592 = fadd fast float %5591, 0xBFD42F6020000000
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5575, float %5576, float 0x3FD20DD760000000, float %5589, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.binary.f32(i32 35, float %5472, float 0.000000e+00)  ; FMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5596 = call float @dx.op.binary.f32(i32 35, float %5586, float 0.000000e+00)  ; FMax(a,b)
  %5597 = call float @dx.op.binary.f32(i32 35, float %5473, float 0.000000e+00)  ; FMax(a,b)
  %5598 = call float @dx.op.binary.f32(i32 35, float %5530, float 0.000000e+00)  ; FMax(a,b)
  %5599 = call float @dx.op.binary.f32(i32 35, float %5587, float 0.000000e+00)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5479, float 0.000000e+00)  ; FMax(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5536, float 0.000000e+00)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5593, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = call float @dx.op.binary.f32(i32 36, float %5402, float %5604)  ; FMin(a,b)
  %5606 = fsub fast float 1.000000e+00, %5418
  %5607 = fmul fast float %5605, %5606
  %5608 = fsub fast float 1.000000e+00, %5607
  %5609 = bitcast float %5608 to i32
  %5610 = sub nsw i32 2129859010, %5609
  %5611 = bitcast i32 %5610 to float
  %5612 = call float @dx.op.binary.f32(i32 36, float %5403, float %5604)  ; FMin(a,b)
  %5613 = fmul fast float %5612, %5606
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = bitcast float %5614 to i32
  %5616 = sub nsw i32 2129859010, %5615
  %5617 = bitcast i32 %5616 to float
  %5618 = call float @dx.op.binary.f32(i32 36, float %5404, float %5604)  ; FMin(a,b)
  %5619 = fmul fast float %5618, %5606
  %5620 = fsub fast float 1.000000e+00, %5619
  %5621 = bitcast float %5620 to i32
  %5622 = sub nsw i32 2129859010, %5621
  %5623 = bitcast i32 %5622 to float
  %5624 = fmul fast float %5594, %5418
  %5625 = fmul fast float %5624, %5611
  %5626 = fmul fast float %5595, %5418
  %5627 = fmul fast float %5626, %5617
  %5628 = fmul fast float %5596, %5418
  %5629 = fmul fast float %5628, %5623
  %5630 = call float @dx.op.binary.f32(i32 36, float %5399, float %5604)  ; FMin(a,b)
  %5631 = fmul fast float %5630, %5606
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = bitcast float %5632 to i32
  %5634 = sub nsw i32 2129859010, %5633
  %5635 = bitcast i32 %5634 to float
  %5636 = call float @dx.op.binary.f32(i32 36, float %5400, float %5604)  ; FMin(a,b)
  %5637 = fmul fast float %5636, %5606
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = bitcast float %5638 to i32
  %5640 = sub nsw i32 2129859010, %5639
  %5641 = bitcast i32 %5640 to float
  %5642 = call float @dx.op.binary.f32(i32 36, float %5407, float %5604)  ; FMin(a,b)
  %5643 = fmul fast float %5642, %5606
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = bitcast float %5644 to i32
  %5646 = sub nsw i32 2129859010, %5645
  %5647 = bitcast i32 %5646 to float
  %5648 = fmul fast float %5600, %5418
  %5649 = fmul fast float %5648, %5635
  %5650 = fmul fast float %5601, %5418
  %5651 = fmul fast float %5650, %5641
  %5652 = fmul fast float %5602, %5418
  %5653 = fmul fast float %5652, %5647
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5627, float %5629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = select i1 %203, float 0.000000e+00, float %5625
  %5656 = select i1 %203, float %5654, float %5627
  %5657 = select i1 %203, float 0.000000e+00, float %5629
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = select i1 %203, float 0.000000e+00, float %5597
  %5660 = select i1 %203, float %5658, float %5598
  %5661 = select i1 %203, float 0.000000e+00, float %5599
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5651, float %5653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = select i1 %203, float 0.000000e+00, float %5649
  %5664 = select i1 %203, float %5662, float %5651
  %5665 = select i1 %203, float 0.000000e+00, float %5653
  %5666 = fmul fast float %4393, %4393
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5409, 9.843750e-01
  %5669 = fmul fast float %5405, 9.843750e-01
  %5670 = fadd fast float %5668, 7.812500e-03
  %5671 = fadd fast float %5669, 7.812500e-03
  %5672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5670, float %5671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = extractvalue %dx.types.ResRet.f32 %5672, 3
  %5677 = fsub fast float 1.000000e+00, %5667
  %5678 = fsub fast float %5675, %5673
  %5679 = fsub fast float %5676, %5674
  %5680 = fmul fast float %5678, %5677
  %5681 = fmul fast float %5679, %5677
  %5682 = fadd fast float %5680, %5673
  %5683 = fadd fast float %5681, %5674
  %5684 = fmul fast float %5682, %5399
  %5685 = fmul fast float %5682, %5400
  %5686 = fmul fast float %5682, %5407
  %5687 = fadd fast float %5684, %5683
  %5688 = fadd fast float %5685, %5683
  %5689 = fadd fast float %5686, %5683
  %5690 = fcmp fast ogt float %5056, 0.000000e+00
  br i1 %5690, label %5691, label %5717

; <label>:5691                                    ; preds = %5571
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5056, float %5409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = fadd fast float %5693, -5.000000e-01
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fsub fast float 1.000000e+00, %5399
  %5700 = fsub fast float 1.000000e+00, %5400
  %5701 = fsub fast float 1.000000e+00, %5407
  %5702 = fmul fast float %5399, 4.000000e+00
  %5703 = fmul fast float %5702, %5699
  %5704 = fmul fast float %5703, %5696
  %5705 = fmul fast float %5400, 4.000000e+00
  %5706 = fmul fast float %5705, %5700
  %5707 = fmul fast float %5706, %5697
  %5708 = fmul fast float %5407, 4.000000e+00
  %5709 = fmul fast float %5708, %5701
  %5710 = fmul fast float %5709, %5698
  %5711 = fadd fast float %5704, %5687
  %5712 = fadd fast float %5707, %5688
  %5713 = fadd fast float %5710, %5689
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5715 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5716 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  br label %5717

; <label>:5717                                    ; preds = %5691, %5571
  %5718 = phi float [ %5714, %5691 ], [ %5687, %5571 ]
  %5719 = phi float [ %5715, %5691 ], [ %5688, %5571 ]
  %5720 = phi float [ %5716, %5691 ], [ %5689, %5571 ]
  %5721 = call float @dx.op.binary.f32(i32 35, float %5719, float %5720)  ; FMax(a,b)
  %5722 = call float @dx.op.binary.f32(i32 35, float %5718, float %5721)  ; FMax(a,b)
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = fcmp fast ogt float %5724, 0x3E7FF19E20000000
  %5726 = fdiv fast float 1.000000e+00, %5724
  %5727 = select i1 %5725, float %5726, float 0.000000e+00
  %5728 = fmul fast float %5727, %5402
  %5729 = fmul fast float %5727, %5403
  %5730 = fmul fast float %5727, %5404
  %5731 = fadd fast float %5728, -1.000000e+00
  %5732 = fadd fast float %5729, -1.000000e+00
  %5733 = fadd fast float %5730, -1.000000e+00
  %5734 = fmul fast float %5731, 5.000000e-01
  %5735 = fmul fast float %5732, 5.000000e-01
  %5736 = fmul fast float %5733, 5.000000e-01
  %5737 = fadd fast float %5734, 1.000000e+00
  %5738 = fadd fast float %5735, 1.000000e+00
  %5739 = fadd fast float %5736, 1.000000e+00
  %5740 = call float @dx.op.binary.f32(i32 35, float %5409, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5741 = fdiv fast float %4393, %5740
  %5742 = fcmp fast olt float %5105, 1.270000e+02
  %5743 = fcmp fast olt float %5106, 1.270000e+02
  %5744 = fcmp fast olt float %5107, 1.270000e+02
  %5745 = fmul fast float %5105, 0xBFF7154760000000
  %5746 = fmul fast float %5745, %5741
  %5747 = fmul fast float %5106, 0xBFF7154760000000
  %5748 = fmul fast float %5747, %5741
  %5749 = fmul fast float %5107, 0xBFF7154760000000
  %5750 = fmul fast float %5749, %5741
  %5751 = call float @dx.op.unary.f32(i32 21, float %5746)  ; Exp(value)
  %5752 = call float @dx.op.unary.f32(i32 21, float %5748)  ; Exp(value)
  %5753 = call float @dx.op.unary.f32(i32 21, float %5750)  ; Exp(value)
  %5754 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5755 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5756 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5757 = select i1 %5742, float %5754, float 0.000000e+00
  %5758 = select i1 %5743, float %5755, float 0.000000e+00
  %5759 = select i1 %5744, float %5756, float 0.000000e+00
  %5760 = fmul fast float %5757, %5723
  %5761 = fmul fast float %5758, %5723
  %5762 = fmul fast float %5759, %5723
  %5763 = fadd fast float %5760, -1.000000e+00
  %5764 = fadd fast float %5761, -1.000000e+00
  %5765 = fadd fast float %5762, -1.000000e+00
  %5766 = fmul fast float %5763, %5053
  %5767 = fmul fast float %5764, %5053
  %5768 = fmul fast float %5765, %5053
  %5769 = fmul fast float %5718, %5663
  %5770 = fmul fast float %5719, %5664
  %5771 = fmul fast float %5720, %5665
  %5772 = fsub fast float 1.000000e+00, %5409
  %5773 = bitcast float %5772 to i32
  %5774 = sitofp i32 %5773 to float
  %5775 = fmul fast float %5774, 5.000000e+00
  %5776 = fadd fast float %5775, 0xC1EFBF8940000000
  %5777 = fptosi float %5776 to i32
  %5778 = bitcast i32 %5777 to float
  %5779 = fmul fast float %5778, %5057
  %5780 = fmul fast float %5655, %5779
  %5781 = fmul fast float %5780, %5723
  %5782 = fmul fast float %5781, %5737
  %5783 = fmul fast float %5656, %5779
  %5784 = fmul fast float %5783, %5723
  %5785 = fmul fast float %5784, %5738
  %5786 = fmul fast float %5657, %5779
  %5787 = fmul fast float %5786, %5723
  %5788 = fmul fast float %5787, %5739
  %5789 = fadd fast float %5769, %5040
  %5790 = fadd fast float %5789, %5782
  %5791 = fmul fast float %5790, %5053
  %5792 = fadd fast float %5770, %5041
  %5793 = fadd fast float %5792, %5785
  %5794 = fmul fast float %5793, %5053
  %5795 = fadd fast float %5771, %5042
  %5796 = fadd fast float %5795, %5788
  %5797 = fmul fast float %5796, %5053
  %5798 = fmul fast float %5400, 0x4012D0A400000000
  %5799 = fadd fast float %5768, 1.000000e+00
  %5800 = fadd fast float %5767, 1.000000e+00
  %5801 = fadd fast float %5766, 1.000000e+00
  %5802 = fmul fast float %5723, %5657
  %5803 = fmul fast float %5723, %5656
  %5804 = fmul fast float %5723, %5655
  %5805 = fsub fast float 1.000000e+00, %5405
  %5806 = fmul fast float %5805, %5053
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = call float @dx.op.unary.f32(i32 7, float %5807)  ; Saturate(value)
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fadd fast float %5798, 0x3FDB6377A0000000
  %5811 = fmul fast float %5809, %5810
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fadd fast float %5811, %5812
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5814, float 0x3F847AE140000000)  ; FMax(a,b)
  %5816 = fmul fast float %5815, %5815
  %5817 = fmul fast float %5816, %5816
  %5818 = fmul fast float %5817, 0xC00A935000000000
  %5819 = call float @dx.op.unary.f32(i32 21, float %5818)  ; Exp(value)
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = fmul fast float %5801, %5659
  %5822 = fmul fast float %5821, %5820
  %5823 = fmul fast float %5800, %5660
  %5824 = fmul fast float %5823, %5820
  %5825 = fmul fast float %5799, %5661
  %5826 = fmul fast float %5825, %5820
  %5827 = fadd fast float %5822, %5804
  %5828 = fmul fast float %5827, %5053
  %5829 = fadd fast float %5824, %5803
  %5830 = fmul fast float %5829, %5053
  %5831 = fadd fast float %5826, %5802
  %5832 = fmul fast float %5831, %5053
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5835 = fcmp fast oeq float %5834, 0.000000e+00
  br i1 %5835, label %6965, label %5836

; <label>:5836                                    ; preds = %5717
  %5837 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = select i1 %203, float %5845, float %5841
  %5849 = select i1 %203, float %5847, float %5842
  %5850 = select i1 %203, float %5846, float %5843
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5853 = fmul fast float %5852, %94
  %5854 = fmul fast float %5852, %95
  %5855 = fmul fast float %5852, %96
  %5856 = fadd fast float %5853, %142
  %5857 = fadd fast float %5854, %143
  %5858 = fadd fast float %5855, %144
  %5859 = fcmp fast olt float %5834, 0.000000e+00
  br i1 %5859, label %6484, label %5860

; <label>:5860                                    ; preds = %5836
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5876 = fmul fast float %5862, %5856
  %5877 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %5863, float %5876)  ; FMad(a,b,c)
  %5878 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %5864, float %5877)  ; FMad(a,b,c)
  %5879 = fadd fast float %5878, %5865
  %5880 = fmul fast float %5867, %5856
  %5881 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %5868, float %5880)  ; FMad(a,b,c)
  %5882 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %5869, float %5881)  ; FMad(a,b,c)
  %5883 = fadd fast float %5882, %5870
  %5884 = fmul fast float %5872, %5856
  %5885 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %5873, float %5884)  ; FMad(a,b,c)
  %5886 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %5874, float %5885)  ; FMad(a,b,c)
  %5887 = fadd fast float %5886, %5875
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5892 = fmul fast float %5891, %5879
  %5893 = fmul fast float %5891, %5883
  %5894 = fadd fast float %5892, %5889
  %5895 = fadd fast float %5893, %5890
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5900 = fmul fast float %5899, %5879
  %5901 = fmul fast float %5899, %5883
  %5902 = fadd fast float %5900, %5897
  %5903 = fadd fast float %5901, %5898
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5906 = fsub fast float %5905, %5887
  %5907 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5908 = fmul fast float %5906, %5907
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5914 = fadd fast float %5913, %5911
  %5915 = fcmp fast ogt float %5914, 0.000000e+00
  br i1 %5915, label %5916, label %5940

; <label>:5916                                    ; preds = %5860
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = fsub fast float %5902, %5918
  %5921 = fsub fast float %5903, %5919
  %5922 = fcmp fast olt float %5920, 0.000000e+00
  %5923 = fcmp fast olt float %5921, 0.000000e+00
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5929 = select i1 %5922, float %5925, float %5927
  %5930 = select i1 %5923, float %5926, float %5928
  %5931 = fmul fast float %5929, %5920
  %5932 = fmul fast float %5930, %5921
  %5933 = call float @dx.op.unary.f32(i32 6, float %5931)  ; FAbs(value)
  %5934 = call float @dx.op.unary.f32(i32 6, float %5932)  ; FAbs(value)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5936 = call float @dx.op.binary.f32(i32 35, float %5933, float %5934)  ; FMax(a,b)
  %5937 = fsub fast float %5935, %5936
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = fmul fast float %5938, %5910
  br label %5940

; <label>:5940                                    ; preds = %5916, %5860
  %5941 = phi float [ %5939, %5916 ], [ 0.000000e+00, %5860 ]
  %5942 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5943 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5944 = fadd fast float %5943, %5942
  %5945 = fcmp fast ogt float %5944, 0.000000e+00
  %5946 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  br i1 %5945, label %5947, label %5970

; <label>:5947                                    ; preds = %5940
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = fsub fast float %5894, %5949
  %5952 = fsub fast float %5895, %5950
  %5953 = fcmp fast olt float %5951, 0.000000e+00
  %5954 = fcmp fast olt float %5952, 0.000000e+00
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %5960 = select i1 %5953, float %5956, float %5958
  %5961 = select i1 %5954, float %5957, float %5959
  %5962 = fmul fast float %5960, %5951
  %5963 = fmul fast float %5961, %5952
  %5964 = call float @dx.op.unary.f32(i32 6, float %5962)  ; FAbs(value)
  %5965 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5966 = call float @dx.op.binary.f32(i32 35, float %5964, float %5965)  ; FMax(a,b)
  %5967 = fsub fast float %5946, %5966
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fmul fast float %5968, %5910
  br label %5970

; <label>:5970                                    ; preds = %5947, %5940
  %5971 = phi float [ %5969, %5947 ], [ 0.000000e+00, %5940 ]
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5978 = fsub fast float %5879, %5976
  %5979 = fsub fast float %5883, %5977
  %5980 = fcmp fast olt float %5978, 0.000000e+00
  %5981 = fcmp fast olt float %5979, 0.000000e+00
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.CBufRet.f32 %5982, 2
  %5986 = extractvalue %dx.types.CBufRet.f32 %5982, 3
  %5987 = select i1 %5980, float %5983, float %5985
  %5988 = select i1 %5981, float %5984, float %5986
  %5989 = fmul fast float %5987, %5978
  %5990 = fmul fast float %5988, %5979
  %5991 = call float @dx.op.unary.f32(i32 6, float %5989)  ; FAbs(value)
  %5992 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5991, float %5992)  ; FMax(a,b)
  %5994 = fsub fast float %5946, %5993
  %5995 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5996 = call float @dx.op.binary.f32(i32 36, float %5995, float %5974)  ; FMin(a,b)
  %5997 = fmul fast float %5996, %5910
  %5998 = fsub fast float %5971, %5997
  %5999 = fsub fast float %5941, %5971
  %6000 = fsub fast float %5999, %5997
  %6001 = call float @dx.op.binary.f32(i32 35, float %5971, float %5941)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %5997, float %6001)  ; FMax(a,b)
  %6003 = fcmp fast olt float %6002, 1.000000e+00
  br i1 %6003, label %6004, label %6402, !dx.controlflow.hints !80

; <label>:6004                                    ; preds = %5970
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = fcmp fast une float %6006, 0.000000e+00
  br i1 %6007, label %6008, label %6402, !dx.controlflow.hints !81

; <label>:6008                                    ; preds = %6004
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6023 = extractvalue %dx.types.CBufRet.f32 %6019, 3
  %6024 = fmul fast float %6010, %5856
  %6025 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6011, float %6024)  ; FMad(a,b,c)
  %6026 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6012, float %6025)  ; FMad(a,b,c)
  %6027 = fadd fast float %6026, %6013
  %6028 = fmul fast float %6015, %5856
  %6029 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6016, float %6028)  ; FMad(a,b,c)
  %6030 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6017, float %6029)  ; FMad(a,b,c)
  %6031 = fadd fast float %6030, %6018
  %6032 = fmul fast float %6020, %5856
  %6033 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6021, float %6032)  ; FMad(a,b,c)
  %6034 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6022, float %6033)  ; FMad(a,b,c)
  %6035 = fadd fast float %6034, %6023
  %6036 = fcmp fast oge float %6027, 1.000000e+00
  %6037 = fcmp fast oge float %6031, 1.000000e+00
  %6038 = or i1 %6036, %6037
  %6039 = fcmp fast olt float %6027, 0.000000e+00
  %6040 = fcmp fast olt float %6031, 0.000000e+00
  %6041 = or i1 %6039, %6040
  %6042 = or i1 %6038, %6041
  br i1 %6042, label %6402, label %6043, !dx.controlflow.hints !82

; <label>:6043                                    ; preds = %6008
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.i32 %6048, 2
  %6050 = uitofp i32 %6049 to float
  %6051 = extractvalue %dx.types.CBufRet.i32 %6048, 3
  %6052 = uitofp i32 %6051 to float
  %6053 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6054 = fmul fast float %6053, 2.000000e+00
  %6055 = fsub fast float %6027, %6045
  %6056 = fsub fast float %6031, %6046
  %6057 = fmul fast float %6054, %6055
  %6058 = fmul fast float %6054, %6056
  %6059 = fdiv fast float 1.000000e+00, %5839
  %6060 = fmul fast float %6058, %6059
  %6061 = call float @dx.op.unary.f32(i32 6, float %6060)  ; FAbs(value)
  %6062 = fmul fast float %6047, %5858
  %6063 = fmul fast float %6062, %6054
  %6064 = call float @dx.op.unary.f32(i32 6, float %6063)  ; FAbs(value)
  %6065 = call float @dx.op.unary.f32(i32 6, float %6057)  ; FAbs(value)
  %6066 = call float @dx.op.binary.f32(i32 35, float %6064, float %6061)  ; FMax(a,b)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6065, float %6066)  ; FMax(a,b)
  %6068 = fmul fast float %6067, 2.000000e+00
  %6069 = call float @dx.op.unary.f32(i32 23, float %6068)  ; Log(value)
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float %6050)  ; FMax(a,b)
  %6071 = call float @dx.op.unary.f32(i32 22, float %6070)  ; Frc(value)
  %6072 = fadd fast float %6071, 0xBFEA666660000000
  %6073 = fmul fast float %6072, 8.000000e+00
  %6074 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 27, float %6070)  ; Round_ni(value)
  %6076 = fadd fast float %6075, %6074
  %6077 = call float @dx.op.binary.f32(i32 36, float %6076, float %6052)  ; FMin(a,b)
  %6078 = call float @dx.op.unary.f32(i32 27, float %6077)  ; Round_ni(value)
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = call float @dx.op.unary.f32(i32 21, float %6079)  ; Exp(value)
  %6081 = fmul fast float %6080, %6054
  %6082 = fmul fast float %6081, %6027
  %6083 = fmul fast float %6081, %6031
  %6084 = fmul fast float %6082, 2.500000e-01
  %6085 = fmul fast float %6083, 2.500000e-01
  %6086 = fadd fast float %6084, 5.000000e-01
  %6087 = fadd fast float %6085, 5.000000e-01
  %6088 = fsub fast float %6052, %6050
  %6089 = fptoui float %6088 to i32
  %6090 = add i32 %6089, 320
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6090)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = fcmp fast une float %6077, %6052
  %6095 = fsub fast float %6027, %6092
  %6096 = fsub fast float %6031, %6093
  %6097 = call float @dx.op.unary.f32(i32 6, float %6095)  ; FAbs(value)
  %6098 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6099 = fmul fast float %6097, %6081
  %6100 = fmul fast float %6098, %6081
  %6101 = fcmp fast olt float %6099, 1.000000e+00
  %6102 = fcmp fast olt float %6100, 1.000000e+00
  %6103 = and i1 %6101, %6102
  %6104 = or i1 %6094, %6103
  br i1 %6104, label %6105, label %6402, !dx.controlflow.hints !83

; <label>:6105                                    ; preds = %6043
  %6106 = fmul fast float %6083, 5.000000e-01
  %6107 = fmul fast float %6082, 5.000000e-01
  %6108 = fadd fast float %6106, 5.000000e-01
  %6109 = fadd fast float %6107, 5.000000e-01
  %6110 = sitofp i32 %6049 to float
  %6111 = fsub fast float %6077, %6110
  %6112 = call float @dx.op.unary.f32(i32 27, float %6111)  ; Round_ni(value)
  %6113 = call float @dx.op.unary.f32(i32 22, float %6077)  ; Frc(value)
  %6114 = call float @dx.op.unary.f32(i32 22, float %6109)  ; Frc(value)
  %6115 = call float @dx.op.unary.f32(i32 22, float %6108)  ; Frc(value)
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6114, float %6115, float %6112, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.ResRet.f32 %6116, 3
  %6121 = fcmp fast ogt float %6113, 0.000000e+00
  br i1 %6121, label %6122, label %6143, !dx.controlflow.hints !84

; <label>:6122                                    ; preds = %6105
  %6123 = fadd fast float %6112, 1.000000e+00
  %6124 = call float @dx.op.unary.f32(i32 22, float %6086)  ; Frc(value)
  %6125 = call float @dx.op.unary.f32(i32 22, float %6087)  ; Frc(value)
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6124, float %6125, float %6123, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.ResRet.f32 %6126, 3
  %6131 = fsub fast float %6127, %6117
  %6132 = fsub fast float %6128, %6118
  %6133 = fsub fast float %6129, %6119
  %6134 = fsub fast float %6130, %6120
  %6135 = fmul fast float %6131, %6113
  %6136 = fmul fast float %6132, %6113
  %6137 = fmul fast float %6133, %6113
  %6138 = fmul fast float %6134, %6113
  %6139 = fadd fast float %6135, %6117
  %6140 = fadd fast float %6136, %6118
  %6141 = fadd fast float %6137, %6119
  %6142 = fadd fast float %6138, %6120
  br label %6143

; <label>:6143                                    ; preds = %6122, %6105
  %6144 = phi float [ %6139, %6122 ], [ %6117, %6105 ]
  %6145 = phi float [ %6140, %6122 ], [ %6118, %6105 ]
  %6146 = phi float [ %6141, %6122 ], [ %6119, %6105 ]
  %6147 = phi float [ %6142, %6122 ], [ %6120, %6105 ]
  %6148 = fadd fast float %6144, -5.000000e-01
  %6149 = fadd fast float %6146, -5.000000e-01
  %6150 = fmul fast float %6148, 0xBFD5555560000000
  %6151 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6149, float %6150)  ; FMad(a,b,c)
  %6152 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6145, float 0.000000e+00)  ; FMad(a,b,c)
  %6153 = fadd fast float %6152, %6147
  %6154 = fmul fast float %6148, -7.500000e-01
  %6155 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6149, float %6154)  ; FMad(a,b,c)
  %6156 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6145, float 0.000000e+00)  ; FMad(a,b,c)
  %6157 = fadd fast float %6156, %6147
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6164 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6165 = fsub fast float %6161, %6151
  %6166 = fsub fast float %6162, %6153
  %6167 = fsub fast float %6163, %6155
  %6168 = fsub fast float %6164, %6157
  %6169 = fmul fast float %6165, %6159
  %6170 = fmul fast float %6166, %6159
  %6171 = fmul fast float %6167, %6159
  %6172 = fmul fast float %6168, %6159
  %6173 = fadd fast float %6169, %6151
  %6174 = fadd fast float %6170, %6153
  %6175 = fadd fast float %6171, %6155
  %6176 = fadd fast float %6172, %6157
  %6177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.i32 %6177, 0
  %6179 = and i32 %6178, 536870911
  %6180 = uitofp i32 %6179 to float
  %6181 = fmul fast float %6180, %6027
  %6182 = fmul fast float %6180, %6031
  %6183 = fptoui float %6181 to i32
  %6184 = fptoui float %6182 to i32
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = and i32 %6186, 31
  %6188 = lshr i32 %6183, %6187
  %6189 = lshr i32 %6184, %6187
  %6190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6191 = extractvalue %dx.types.ResRet.i32 %6190, 0
  %6192 = and i32 %6191, 31
  %6193 = shl i32 1, %6192
  %6194 = call i32 @dx.op.binary.i32(i32 40, i32 %6193, i32 4)  ; UMin(a,b)
  %6195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.i32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.i32 %6195, 1
  %6198 = icmp eq i32 %6194, 0
  br i1 %6198, label %6240, label %6199

; <label>:6199                                    ; preds = %6143
  br label %6200

; <label>:6200                                    ; preds = %6228, %6199
  %6201 = phi i32 [ %6231, %6228 ], [ 0, %6199 ]
  %6202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.i32 %6202, 0
  %6204 = lshr i32 %6203, 16
  %6205 = and i32 %6204, 31
  %6206 = shl i32 %6189, %6205
  %6207 = add i32 %6206, %6188
  %6208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.i32 %6208, 0
  %6210 = and i32 %6209, 31
  %6211 = shl i32 %6207, %6210
  %6212 = add i32 %6211, %6201
  %6213 = shl i32 %6212, 2
  %6214 = add i32 %6213, 32
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = icmp slt i32 %6216, 0
  %6218 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6201
  %6219 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6201
  %6220 = bitcast float* %6218 to i32*
  %6221 = bitcast float* %6219 to i32*
  br i1 %6217, label %6222, label %6228

; <label>:6222                                    ; preds = %6200
  %6223 = and i32 %6216, 1073741823
  %6224 = add nuw nsw i32 %6223, 20
  %6225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6224, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.i32 %6225, 0
  %6227 = extractvalue %dx.types.ResRet.i32 %6225, 1
  br label %6228

; <label>:6228                                    ; preds = %6222, %6200
  %6229 = phi i32 [ %6226, %6222 ], [ %6196, %6200 ]
  %6230 = phi i32 [ %6227, %6222 ], [ %6197, %6200 ]
  store i32 %6229, i32* %6220, align 4
  store i32 %6230, i32* %6221, align 4
  %6231 = add nuw i32 %6201, 1
  %6232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.i32 %6232, 2
  %6234 = icmp eq i32 %6233, 0
  %6235 = icmp ugt i32 %6216, -1073741825
  %6236 = and i1 %6235, %6234
  %6237 = icmp ult i32 %6231, %6194
  %6238 = and i1 %6236, %6237
  br i1 %6238, label %6200, label %6239

; <label>:6239                                    ; preds = %6228
  br label %6240

; <label>:6240                                    ; preds = %6239, %6143
  %6241 = phi i32 [ 0, %6143 ], [ %6231, %6239 ]
  %6242 = extractvalue %dx.types.CBufRet.f32 %6005, 2
  %6243 = fptoui float %6242 to i32
  %6244 = icmp eq i32 %6243, 0
  br i1 %6244, label %6296, label %6245

; <label>:6245                                    ; preds = %6240
  br label %6246

; <label>:6246                                    ; preds = %6291, %6245
  %6247 = phi i32 [ %6292, %6291 ], [ %6241, %6245 ]
  %6248 = phi i32 [ %6293, %6291 ], [ 0, %6245 ]
  %6249 = lshr i32 %6248, 2
  %6250 = and i32 %6248, 3
  %6251 = add nuw nsw i32 %6249, 83
  %6252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6251)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.i32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.i32 %6252, 1
  %6255 = extractvalue %dx.types.CBufRet.i32 %6252, 2
  %6256 = extractvalue %dx.types.CBufRet.i32 %6252, 3
  %6257 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6253, i32* %6257, align 4
  %6258 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6254, i32* %6258, align 4
  %6259 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6255, i32* %6259, align 4
  %6260 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6256, i32* %6260, align 4
  %6261 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6250
  %6262 = load i32, i32* %6261, align 4, !tbaa !85, !noalias !89
  %6263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.i32 %6263, 0
  %6265 = lshr i32 %6264, 16
  %6266 = and i32 %6265, 31
  %6267 = shl i32 %6189, %6266
  %6268 = add i32 %6267, %6188
  %6269 = shl i32 %6268, 2
  %6270 = add i32 %6269, %6262
  %6271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6270, i32 undef)  ; BufferLoad(srv,index,wot)
  %6272 = extractvalue %dx.types.ResRet.i32 %6271, 0
  %6273 = icmp eq i32 %6272, 0
  br i1 %6273, label %6291, label %6274

; <label>:6274                                    ; preds = %6246
  %6275 = icmp slt i32 %6272, 0
  %6276 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6247
  %6277 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6247
  %6278 = bitcast float* %6276 to i32*
  %6279 = bitcast float* %6277 to i32*
  br i1 %6275, label %6280, label %6287

; <label>:6280                                    ; preds = %6274
  %6281 = and i32 %6272, 1073741823
  %6282 = add i32 %6262, 20
  %6283 = add i32 %6282, %6281
  %6284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6283, i32 undef)  ; BufferLoad(srv,index,wot)
  %6285 = extractvalue %dx.types.ResRet.i32 %6284, 0
  %6286 = extractvalue %dx.types.ResRet.i32 %6284, 1
  br label %6287

; <label>:6287                                    ; preds = %6280, %6274
  %6288 = phi i32 [ %6285, %6280 ], [ %6196, %6274 ]
  %6289 = phi i32 [ %6286, %6280 ], [ %6197, %6274 ]
  store i32 %6288, i32* %6278, align 4
  store i32 %6289, i32* %6279, align 4
  %6290 = add i32 %6247, 1
  br label %6291

; <label>:6291                                    ; preds = %6287, %6246
  %6292 = phi i32 [ %6247, %6246 ], [ %6290, %6287 ]
  %6293 = add nuw i32 %6248, 1
  %6294 = icmp eq i32 %6293, %6243
  br i1 %6294, label %6295, label %6246

; <label>:6295                                    ; preds = %6291
  br label %6296

; <label>:6296                                    ; preds = %6295, %6240
  %6297 = phi i32 [ %6241, %6240 ], [ %6292, %6295 ]
  %6298 = icmp eq i32 %6297, 1
  %6299 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6300 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6298, label %6301, label %6304

; <label>:6301                                    ; preds = %6296
  %6302 = load float, float* %6299, align 4
  %6303 = load float, float* %6300, align 4
  br label %6331

; <label>:6304                                    ; preds = %6296
  %6305 = load float, float* %6299, align 4
  %6306 = load float, float* %6300, align 4
  %6307 = fdiv fast float 1.000000e+00, %6306
  %6308 = fsub fast float %6305, %6307
  %6309 = icmp ugt i32 %6297, 1
  br i1 %6309, label %6310, label %6326

; <label>:6310                                    ; preds = %6304
  br label %6311

; <label>:6311                                    ; preds = %6311, %6310
  %6312 = phi float [ %6321, %6311 ], [ %6308, %6310 ]
  %6313 = phi float [ %6322, %6311 ], [ %6305, %6310 ]
  %6314 = phi i32 [ %6323, %6311 ], [ 1, %6310 ]
  %6315 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6314
  %6316 = load float, float* %6315, align 4
  %6317 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6314
  %6318 = load float, float* %6317, align 4
  %6319 = fdiv fast float 1.000000e+00, %6318
  %6320 = fsub fast float %6316, %6319
  %6321 = call float @dx.op.binary.f32(i32 36, float %6312, float %6320)  ; FMin(a,b)
  %6322 = call float @dx.op.binary.f32(i32 35, float %6313, float %6316)  ; FMax(a,b)
  %6323 = add nuw i32 %6314, 1
  %6324 = icmp eq i32 %6323, %6297
  br i1 %6324, label %6325, label %6311

; <label>:6325                                    ; preds = %6311
  br label %6326

; <label>:6326                                    ; preds = %6325, %6304
  %6327 = phi float [ %6308, %6304 ], [ %6321, %6325 ]
  %6328 = phi float [ %6305, %6304 ], [ %6322, %6325 ]
  %6329 = fsub fast float %6328, %6327
  %6330 = fdiv fast float 1.000000e+00, %6329
  br label %6331

; <label>:6331                                    ; preds = %6326, %6301
  %6332 = phi float [ %6302, %6301 ], [ %6328, %6326 ]
  %6333 = phi float [ %6303, %6301 ], [ %6330, %6326 ]
  %6334 = fadd fast float %6035, %6332
  %6335 = fmul fast float %6334, %6333
  %6336 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6337 = fmul fast float %6336, 2.000000e+00
  %6338 = fsub fast float 1.000000e+00, %6337
  %6339 = fmul fast float %6173, %6173
  %6340 = fsub fast float %6174, %6339
  %6341 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6340)  ; FMax(a,b)
  %6342 = fdiv fast float 1.000000e+00, %6341
  %6343 = fmul fast float %6174, %6173
  %6344 = fsub fast float %6175, %6343
  %6345 = fsub fast float %6338, %6173
  %6346 = fmul fast float %6338, %6338
  %6347 = fsub fast float %6346, %6174
  %6348 = fmul fast float %6342, %6344
  %6349 = fmul fast float %6348, %6345
  %6350 = fsub fast float %6347, %6349
  %6351 = fmul fast float %6174, %6174
  %6352 = fsub fast float %6176, %6351
  %6353 = fmul fast float %6344, %6344
  %6354 = fmul fast float %6353, %6342
  %6355 = fsub fast float %6352, %6354
  %6356 = fdiv fast float %6350, %6355
  %6357 = fmul fast float %6356, %6344
  %6358 = fsub fast float %6345, %6357
  %6359 = fmul fast float %6358, %6342
  %6360 = fmul fast float %6359, %6173
  %6361 = fsub fast float 1.000000e+00, %6360
  %6362 = fmul fast float %6356, %6174
  %6363 = fsub fast float %6361, %6362
  %6364 = fmul fast float %6359, %6359
  %6365 = fmul fast float %6356, 4.000000e+00
  %6366 = fmul fast float %6365, %6363
  %6367 = fsub fast float %6364, %6366
  %6368 = call float @dx.op.unary.f32(i32 24, float %6367)  ; Sqrt(value)
  %6369 = fcmp fast oge float %6359, 0.000000e+00
  %6370 = fsub fast float -0.000000e+00, %6368
  %6371 = select i1 %6369, float %6370, float %6368
  %6372 = fsub fast float %6371, %6359
  %6373 = fdiv fast float %6372, %6356
  %6374 = fdiv fast float %6363, %6372
  %6375 = fmul fast float %6373, 5.000000e-01
  %6376 = fmul fast float %6374, 2.000000e+00
  %6377 = select i1 %6369, float %6375, float %6376
  %6378 = select i1 %6369, float %6376, float %6375
  %6379 = call float @dx.op.binary.f32(i32 35, float %6377, float %6378)  ; FMax(a,b)
  %6380 = call float @dx.op.binary.f32(i32 36, float %6377, float %6378)  ; FMin(a,b)
  %6381 = fcmp fast ogt float %6338, %6379
  %6382 = fsub fast float %6338, %6380
  %6383 = fsub fast float %6338, %6379
  %6384 = fsub fast float %6379, %6380
  %6385 = select i1 %6381, float %6383, float %6384
  %6386 = fmul float %6382, %6385
  %6387 = select i1 %6381, float %6380, float %6338
  %6388 = fcmp fast ogt float %6338, %6380
  %6389 = fmul fast float %6387, %6379
  %6390 = fadd fast float %6387, %6379
  %6391 = fmul fast float %6390, %6173
  %6392 = fadd fast float %6389, %6174
  %6393 = fsub fast float %6392, %6391
  %6394 = fdiv fast float %6393, %6386
  %6395 = select i1 %6388, float %6394, float 0.000000e+00
  %6396 = fsub fast float 1.000000e+00, %6395
  %6397 = select i1 %6381, float %6396, float %6395
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6400 = fmul fast float %6399, %6398
  %6401 = fsub fast float 1.000000e+00, %6400
  br label %6402

; <label>:6402                                    ; preds = %6331, %6043, %6008, %6004, %5970
  %6403 = phi float [ 1.000000e+00, %5970 ], [ %6401, %6331 ], [ 1.000000e+00, %6008 ], [ 1.000000e+00, %6043 ], [ 1.000000e+00, %6004 ]
  %6404 = fcmp fast ogt float %6000, 0.000000e+00
  br i1 %6404, label %6405, label %6411, !dx.controlflow.hints !98

; <label>:6405                                    ; preds = %6402
  %6406 = fadd fast float %5913, %5887
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6408 = fadd fast float %6407, 0x3F10000000000000
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5902, float %5903, float undef, float undef, i32 0, i32 0, i32 undef, float %6408)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  br label %6411

; <label>:6411                                    ; preds = %6405, %6402
  %6412 = phi float [ %6410, %6405 ], [ 1.000000e+00, %6402 ]
  %6413 = fcmp fast ogt float %5998, 0.000000e+00
  br i1 %6413, label %6414, label %6420, !dx.controlflow.hints !99

; <label>:6414                                    ; preds = %6411
  %6415 = fadd fast float %5943, %5887
  %6416 = call float @dx.op.binary.f32(i32 35, float %6415, float 0.000000e+00)  ; FMax(a,b)
  %6417 = fadd fast float %6416, 0x3F10000000000000
  %6418 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5894, float %5895, float undef, float undef, i32 0, i32 0, i32 undef, float %6417)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  br label %6420

; <label>:6420                                    ; preds = %6414, %6411
  %6421 = phi float [ %6419, %6414 ], [ 1.000000e+00, %6411 ]
  %6422 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %6422, label %6423, label %6430, !dx.controlflow.hints !100

; <label>:6423                                    ; preds = %6420
  %6424 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %6425 = fadd fast float %6424, %5887
  %6426 = call float @dx.op.binary.f32(i32 35, float %6425, float 0.000000e+00)  ; FMax(a,b)
  %6427 = fadd fast float %6426, 0x3F10000000000000
  %6428 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5879, float %5883, float undef, float undef, i32 0, i32 0, i32 undef, float %6427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  br label %6430

; <label>:6430                                    ; preds = %6423, %6420
  %6431 = phi float [ %6429, %6423 ], [ 1.000000e+00, %6420 ]
  %6432 = fsub fast float %6412, %6403
  %6433 = fmul fast float %6432, %5941
  %6434 = fadd fast float %6433, %6403
  %6435 = fsub fast float %6421, %6434
  %6436 = fmul fast float %6435, %5971
  %6437 = fadd fast float %6436, %6434
  %6438 = fsub fast float %6431, %6437
  %6439 = fmul fast float %6438, %5997
  %6440 = fadd fast float %6439, %6437
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6443 = fcmp fast ogt float %6442, 0.000000e+00
  br i1 %6443, label %6444, label %6484, !dx.controlflow.hints !101

; <label>:6444                                    ; preds = %6430
  %6445 = fcmp fast ugt float %6442, 0.000000e+00
  br i1 %6445, label %6446, label %6481

; <label>:6446                                    ; preds = %6444
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6447, 3
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6457 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = fadd fast float %6460, %5856
  %6464 = fadd fast float %6461, %5857
  %6465 = fadd fast float %6462, %5858
  %6466 = fmul fast float %6463, %6448
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6464, float %6466)  ; FMad(a,b,c)
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6465, float %6467)  ; FMad(a,b,c)
  %6469 = fadd fast float %6468, %6451
  %6470 = fmul fast float %6463, %6453
  %6471 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6464, float %6470)  ; FMad(a,b,c)
  %6472 = call float @dx.op.tertiary.f32(i32 46, float %6455, float %6465, float %6471)  ; FMad(a,b,c)
  %6473 = fadd fast float %6472, %6456
  %6474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6469, float %6473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = fmul fast float %6475, %6458
  %6477 = fadd fast float %6476, %6457
  %6478 = call float @dx.op.unary.f32(i32 7, float %6477)  ; Saturate(value)
  %6479 = fmul fast float %6478, %6442
  %6480 = fsub fast float 1.000000e+00, %6479
  br label %6481

; <label>:6481                                    ; preds = %6446, %6444
  %6482 = phi float [ %6480, %6446 ], [ 1.000000e+00, %6444 ]
  %6483 = fmul fast float %6482, %6440
  br label %6484

; <label>:6484                                    ; preds = %6481, %6430, %5836
  %6485 = phi float [ 1.000000e+00, %5836 ], [ %6483, %6481 ], [ %6440, %6430 ]
  %6486 = call float @dx.op.binary.f32(i32 36, float %6485, float %6485)  ; FMin(a,b)
  %6487 = call float @dx.op.binary.f32(i32 36, float %6485, float %6486)  ; FMin(a,b)
  %6488 = fcmp fast ogt float %6487, 0.000000e+00
  br i1 %6488, label %6489, label %6650, !dx.controlflow.hints !102

; <label>:6489                                    ; preds = %6484
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6494 = extractvalue %dx.types.CBufRet.f32 %6490, 3
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6505 = fmul fast float %6491, %5856
  %6506 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6492, float %6505)  ; FMad(a,b,c)
  %6507 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6493, float %6506)  ; FMad(a,b,c)
  %6508 = fadd fast float %6507, %6494
  %6509 = fmul fast float %6496, %5856
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6497, float %6509)  ; FMad(a,b,c)
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6498, float %6510)  ; FMad(a,b,c)
  %6512 = fadd fast float %6511, %6499
  %6513 = fmul fast float %6501, %5856
  %6514 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %6502, float %6513)  ; FMad(a,b,c)
  %6515 = call float @dx.op.tertiary.f32(i32 46, float %5858, float %6503, float %6514)  ; FMad(a,b,c)
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6520 = fmul fast float %6519, %6508
  %6521 = fmul fast float %6519, %6512
  %6522 = fadd fast float %6520, %6517
  %6523 = fadd fast float %6521, %6518
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = fsub fast float %6522, %6525
  %6528 = fsub fast float %6523, %6526
  %6529 = fcmp fast olt float %6527, 0.000000e+00
  %6530 = fcmp fast olt float %6528, 0.000000e+00
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = select i1 %6529, float %6532, float %6534
  %6537 = select i1 %6530, float %6533, float %6535
  %6538 = fmul fast float %6536, %6527
  %6539 = fmul fast float %6537, %6528
  %6540 = call float @dx.op.unary.f32(i32 6, float %6538)  ; FAbs(value)
  %6541 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6542 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %6543 = call float @dx.op.binary.f32(i32 35, float %6540, float %6541)  ; FMax(a,b)
  %6544 = fsub fast float %6542, %6543
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fcmp fast ogt float %6545, 0.000000e+00
  br i1 %6546, label %6547, label %6588, !dx.controlflow.hints !103

; <label>:6547                                    ; preds = %6489
  %6548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6522, float %6523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6550 = fcmp fast ogt float %6549, 0.000000e+00
  br i1 %6550, label %6551, label %6583

; <label>:6551                                    ; preds = %6547
  %6552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6522, float %6523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6553 = extractvalue %dx.types.ResRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.ResRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.ResRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.ResRet.f32 %6552, 3
  %6557 = fsub fast float 1.000000e+00, %6504
  %6558 = fsub fast float %6557, %6515
  %6559 = fmul fast float %6558, 0x400921FB60000000
  %6560 = fadd fast float %6559, 0x3FF921FB60000000
  %6561 = call float @dx.op.unary.f32(i32 13, float %6560)  ; Sin(value)
  %6562 = fadd fast float %6561, -1.000000e+00
  %6563 = fmul fast float %6562, 0x3FD45F3060000000
  %6564 = fmul fast float %6558, 0x401921FB60000000
  %6565 = fadd fast float %6564, 0x400921FB60000000
  %6566 = call float @dx.op.unary.f32(i32 13, float %6565)  ; Sin(value)
  %6567 = fadd fast float %6566, 0x3E7777A5C0000000
  %6568 = fmul fast float %6567, 0x3FC45F3060000000
  %6569 = fmul fast float %6558, 0x4022D97C80000000
  %6570 = fadd fast float %6569, 0x4012D97C80000000
  %6571 = call float @dx.op.unary.f32(i32 13, float %6570)  ; Sin(value)
  %6572 = fadd fast float %6571, 1.000000e+00
  %6573 = fmul fast float %6572, 0x3FBB2995E0000000
  %6574 = fmul fast float %6558, 0x402921FB60000000
  %6575 = fadd fast float %6574, 0x401921FB60000000
  %6576 = call float @dx.op.unary.f32(i32 13, float %6575)  ; Sin(value)
  %6577 = fadd fast float %6576, 0xBE8777A5C0000000
  %6578 = fmul fast float %6577, 0x3FB45F3060000000
  %6579 = call float @dx.op.dot4.f32(i32 56, float %6553, float %6554, float %6555, float %6556, float %6563, float %6568, float %6573, float %6578)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6580 = fmul fast float %6579, 0xBFF7154760000000
  %6581 = call float @dx.op.unary.f32(i32 21, float %6580)  ; Exp(value)
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  br label %6583

; <label>:6583                                    ; preds = %6551, %6547
  %6584 = phi float [ %6582, %6551 ], [ 1.000000e+00, %6547 ]
  %6585 = fadd fast float %6584, -1.000000e+00
  %6586 = fmul fast float %6585, %6545
  %6587 = fadd fast float %6586, 1.000000e+00
  br label %6588

; <label>:6588                                    ; preds = %6583, %6489
  %6589 = phi float [ %6587, %6583 ], [ 1.000000e+00, %6489 ]
  %6590 = fmul fast float %6589, %6485
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.CBufRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.CBufRet.f32 %6591, 2
  %6595 = fadd fast float %6592, %142
  %6596 = fadd fast float %6593, %143
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6599 = fsub fast float -0.000000e+00, %6595
  %6600 = fsub fast float -0.000000e+00, %6596
  %6601 = fsub fast float -0.000000e+00, %144
  %6602 = fsub fast float %6601, %6594
  %6603 = fadd fast float %6602, %6598
  %6604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6599, float %6600, float %6603)  ; Dot3(ax,ay,az,bx,by,bz)
  %6605 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6606 = fdiv fast float 1.000000e+00, %6605
  %6607 = fmul fast float %6606, %6604
  %6608 = fmul fast float %5837, %6607
  %6609 = fmul fast float %5838, %6607
  %6610 = fadd fast float %6608, %6595
  %6611 = fadd fast float %6609, %6596
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6615 = fsub fast float %6610, %6613
  %6616 = fsub fast float %6611, %6614
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 2
  %6619 = extractvalue %dx.types.CBufRet.f32 %6617, 3
  %6620 = fmul fast float %6615, %6618
  %6621 = fmul fast float %6616, %6619
  %6622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.i32 %6622, 3
  %6624 = icmp eq i32 %6623, 0
  br i1 %6624, label %6630, label %6625

; <label>:6625                                    ; preds = %6588
  %6626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6620, float %6621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.ResRet.f32 %6626, 2
  br label %6635

; <label>:6630                                    ; preds = %6588
  %6631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6620, float %6621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6632 = extractvalue %dx.types.ResRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.ResRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.ResRet.f32 %6631, 2
  br label %6635

; <label>:6635                                    ; preds = %6630, %6625
  %6636 = phi float [ %6627, %6625 ], [ %6632, %6630 ]
  %6637 = phi float [ %6628, %6625 ], [ %6633, %6630 ]
  %6638 = phi float [ %6629, %6625 ], [ %6634, %6630 ]
  %6639 = extractvalue %dx.types.CBufRet.f32 %6597, 2
  %6640 = fmul fast float %6639, %6636
  %6641 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6642 = fsub fast float %6607, %6641
  %6643 = fsub fast float %6642, %6640
  %6644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6643)  ; FMax(a,b)
  %6645 = fmul fast float %6644, %6637
  %6646 = call float @dx.op.binary.f32(i32 36, float %6638, float %6645)  ; FMin(a,b)
  %6647 = fmul fast float %6646, 0xBFF7154760000000
  %6648 = call float @dx.op.unary.f32(i32 21, float %6647)  ; Exp(value)
  %6649 = fmul fast float %6590, %6648
  br label %6650

; <label>:6650                                    ; preds = %6635, %6484
  %6651 = phi float [ %6649, %6635 ], [ %6485, %6484 ]
  %6652 = call float @dx.op.binary.f32(i32 36, float %6651, float %6651)  ; FMin(a,b)
  %6653 = call float @dx.op.binary.f32(i32 36, float %6651, float %6652)  ; FMin(a,b)
  %6654 = fcmp fast ogt float %6653, 0.000000e+00
  br i1 %6654, label %6655, label %6965, !dx.controlflow.hints !104

; <label>:6655                                    ; preds = %6650
  %6656 = fmul fast float %6651, %5848
  %6657 = fmul fast float %6651, %5849
  %6658 = fmul fast float %6651, %5850
  %6659 = fsub fast float %5837, %5395
  %6660 = fsub fast float %5838, %5394
  %6661 = fsub fast float %5839, %5393
  %6662 = call float @dx.op.dot3.f32(i32 55, float %6659, float %6660, float %6661, float %6659, float %6660, float %6661)  ; Dot3(ax,ay,az,bx,by,bz)
  %6663 = call float @dx.op.unary.f32(i32 25, float %6662)  ; Rsqrt(value)
  %6664 = fmul fast float %6663, %6659
  %6665 = fmul fast float %6663, %6660
  %6666 = fmul fast float %6663, %6661
  %6667 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %5839, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %6668 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5391, float %5390, float %6664, float %6665, float %6666)  ; Dot3(ax,ay,az,bx,by,bz)
  %6669 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6670 = fmul fast float %6669, %6669
  %6671 = fmul fast float %6670, %5422
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = fmul fast float %6672, %6669
  %6674 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5397, float %5398, float %6664, float %6665, float %6666)  ; Dot3(ax,ay,az,bx,by,bz)
  %6675 = fmul fast float %6674, %6674
  %6676 = call float @dx.op.unary.f32(i32 6, float %6667)  ; FAbs(value)
  %6677 = call float @dx.op.binary.f32(i32 35, float %5805, float 0x3F847AE140000000)  ; FMax(a,b)
  %6678 = fmul fast float %6677, %6677
  %6679 = fmul fast float %6678, %6678
  %6680 = fsub fast float 1.000000e+00, %6679
  %6681 = fmul fast float %5409, %5409
  %6682 = fmul fast float %6681, %6680
  %6683 = fadd fast float %6682, %6679
  %6684 = bitcast float %6683 to i32
  %6685 = ashr i32 %6684, 1
  %6686 = add nsw i32 %6685, 532487669
  %6687 = bitcast i32 %6686 to float
  %6688 = fadd fast float %6687, %5409
  %6689 = fmul fast float %6679, %6675
  %6690 = fsub fast float 1.000000e+00, %6675
  %6691 = fadd fast float %6690, %6689
  %6692 = fmul fast float %6676, %6676
  %6693 = fmul fast float %6692, %6680
  %6694 = fadd fast float %6693, %6679
  %6695 = bitcast float %6694 to i32
  %6696 = ashr i32 %6695, 1
  %6697 = add nsw i32 %6696, 532487669
  %6698 = bitcast i32 %6697 to float
  %6699 = fadd fast float %6698, %6676
  %6700 = fmul fast float %6691, %6691
  %6701 = fmul fast float %6700, %6688
  %6702 = fmul fast float %6701, %6699
  %6703 = fdiv fast float 0x3FF0A00000000000, %6702
  %6704 = fmul fast float %6703, %6679
  %6705 = fmul fast float %5667, 0x3FF9999980000000
  %6706 = fsub fast float 5.000000e+00, %6705
  %6707 = call float @dx.op.unary.f32(i32 6, float %6668)  ; FAbs(value)
  %6708 = fsub fast float 1.000000e+00, %6707
  %6709 = fmul fast float %5667, 0x41D9660740000000
  %6710 = fadd fast float %6709, 0xC1EFBF8940000000
  %6711 = bitcast float %6708 to i32
  %6712 = sitofp i32 %6711 to float
  %6713 = fmul fast float %6712, %6706
  %6714 = fadd fast float %6710, %6713
  %6715 = fptosi float %6714 to i32
  %6716 = bitcast i32 %6715 to float
  %6717 = fsub fast float 1.000000e+00, %5399
  %6718 = fsub fast float 1.000000e+00, %5400
  %6719 = fsub fast float 1.000000e+00, %5407
  %6720 = fmul fast float %6716, %6717
  %6721 = fmul fast float %6716, %6718
  %6722 = fmul fast float %6716, %6719
  %6723 = fadd fast float %6720, %5399
  %6724 = fadd fast float %6721, %5400
  %6725 = fadd fast float %6722, %5407
  br i1 %5690, label %6726, label %6749

; <label>:6726                                    ; preds = %6655
  %6727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5056, float %6707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.ResRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.ResRet.f32 %6727, 2
  %6731 = fadd fast float %6728, -5.000000e-01
  %6732 = fadd fast float %6729, -5.000000e-01
  %6733 = fadd fast float %6730, -5.000000e-01
  %6734 = fmul fast float %5399, 4.000000e+00
  %6735 = fmul fast float %6734, %6717
  %6736 = fmul fast float %6735, %6731
  %6737 = fmul fast float %5400, 4.000000e+00
  %6738 = fmul fast float %6737, %6718
  %6739 = fmul fast float %6738, %6732
  %6740 = fmul fast float %5407, 4.000000e+00
  %6741 = fmul fast float %6740, %6719
  %6742 = fmul fast float %6741, %6733
  %6743 = fadd fast float %6736, %6723
  %6744 = fadd fast float %6739, %6724
  %6745 = fadd fast float %6742, %6725
  %6746 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6747 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6748 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  br label %6749

; <label>:6749                                    ; preds = %6726, %6655
  %6750 = phi float [ %6746, %6726 ], [ %6723, %6655 ]
  %6751 = phi float [ %6747, %6726 ], [ %6724, %6655 ]
  %6752 = phi float [ %6748, %6726 ], [ %6725, %6655 ]
  %6753 = fmul fast float %6667, 9.843750e-01
  %6754 = fadd fast float %6753, 7.812500e-03
  %6755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6754, float %5671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6756 = extractvalue %dx.types.ResRet.f32 %6755, 0
  %6757 = extractvalue %dx.types.ResRet.f32 %6755, 1
  %6758 = extractvalue %dx.types.ResRet.f32 %6755, 2
  %6759 = extractvalue %dx.types.ResRet.f32 %6755, 3
  %6760 = fsub fast float %6758, %6756
  %6761 = fsub fast float %6759, %6757
  %6762 = fmul fast float %6760, %5677
  %6763 = fmul fast float %6761, %5677
  %6764 = fadd fast float %6762, %6756
  %6765 = fadd fast float %6763, %6757
  %6766 = fmul fast float %6764, %5399
  %6767 = fmul fast float %6764, %5400
  %6768 = fmul fast float %6764, %5407
  %6769 = fadd fast float %6766, %6765
  %6770 = fadd fast float %6767, %6765
  %6771 = fadd fast float %6768, %6765
  br i1 %5690, label %6772, label %6795

; <label>:6772                                    ; preds = %6749
  %6773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5056, float %6667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6774 = extractvalue %dx.types.ResRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.ResRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.ResRet.f32 %6773, 2
  %6777 = fadd fast float %6774, -5.000000e-01
  %6778 = fadd fast float %6775, -5.000000e-01
  %6779 = fadd fast float %6776, -5.000000e-01
  %6780 = fmul fast float %5399, 4.000000e+00
  %6781 = fmul fast float %6780, %6717
  %6782 = fmul fast float %6781, %6777
  %6783 = fmul fast float %5400, 4.000000e+00
  %6784 = fmul fast float %6783, %6718
  %6785 = fmul fast float %6784, %6778
  %6786 = fmul fast float %5407, 4.000000e+00
  %6787 = fmul fast float %6786, %6719
  %6788 = fmul fast float %6787, %6779
  %6789 = fadd fast float %6782, %6769
  %6790 = fadd fast float %6785, %6770
  %6791 = fadd fast float %6788, %6771
  %6792 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6793 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6794 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  br label %6795

; <label>:6795                                    ; preds = %6772, %6749
  %6796 = phi float [ %6792, %6772 ], [ %6769, %6749 ]
  %6797 = phi float [ %6793, %6772 ], [ %6770, %6749 ]
  %6798 = phi float [ %6794, %6772 ], [ %6771, %6749 ]
  %6799 = call float @dx.op.binary.f32(i32 35, float %6797, float %6798)  ; FMax(a,b)
  %6800 = call float @dx.op.binary.f32(i32 35, float %6796, float %6799)  ; FMax(a,b)
  %6801 = fsub fast float 1.000000e+00, %6800
  %6802 = call float @dx.op.binary.f32(i32 35, float %6676, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6803 = fdiv fast float %4393, %6802
  %6804 = fmul fast float %5745, %6803
  %6805 = fmul fast float %5747, %6803
  %6806 = fmul fast float %5749, %6803
  %6807 = call float @dx.op.unary.f32(i32 21, float %6804)  ; Exp(value)
  %6808 = call float @dx.op.unary.f32(i32 21, float %6805)  ; Exp(value)
  %6809 = call float @dx.op.unary.f32(i32 21, float %6806)  ; Exp(value)
  %6810 = call float @dx.op.unary.f32(i32 7, float %6807)  ; Saturate(value)
  %6811 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6812 = call float @dx.op.unary.f32(i32 7, float %6809)  ; Saturate(value)
  %6813 = select i1 %5742, float %6810, float 0.000000e+00
  %6814 = select i1 %5743, float %6811, float 0.000000e+00
  %6815 = select i1 %5744, float %6812, float 0.000000e+00
  %6816 = fsub fast float -0.000000e+00, %5396
  %6817 = fsub fast float -0.000000e+00, %5397
  %6818 = fsub fast float -0.000000e+00, %5398
  %6819 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %5839, float %6816, float %6817, float %6818)  ; Dot3(ax,ay,az,bx,by,bz)
  %6820 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6821 = fmul fast float %6820, 9.843750e-01
  %6822 = fadd fast float %6821, 7.812500e-03
  %6823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6822, float %5671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.ResRet.f32 %6823, 1
  %6826 = extractvalue %dx.types.ResRet.f32 %6823, 2
  %6827 = extractvalue %dx.types.ResRet.f32 %6823, 3
  %6828 = fsub fast float %6826, %6824
  %6829 = fsub fast float %6827, %6825
  %6830 = fmul fast float %6828, %5677
  %6831 = fmul fast float %6829, %5677
  %6832 = fadd fast float %6830, %6824
  %6833 = fadd fast float %6831, %6825
  %6834 = fmul fast float %6832, %5399
  %6835 = fmul fast float %6832, %5400
  %6836 = fmul fast float %6832, %5407
  %6837 = fadd fast float %6834, %6833
  %6838 = fadd fast float %6835, %6833
  %6839 = fadd fast float %6836, %6833
  br i1 %5690, label %6840, label %6863

; <label>:6840                                    ; preds = %6795
  %6841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5056, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6842 = extractvalue %dx.types.ResRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.ResRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.ResRet.f32 %6841, 2
  %6845 = fadd fast float %6842, -5.000000e-01
  %6846 = fadd fast float %6843, -5.000000e-01
  %6847 = fadd fast float %6844, -5.000000e-01
  %6848 = fmul fast float %5399, 4.000000e+00
  %6849 = fmul fast float %6848, %6717
  %6850 = fmul fast float %6849, %6845
  %6851 = fmul fast float %5400, 4.000000e+00
  %6852 = fmul fast float %6851, %6718
  %6853 = fmul fast float %6852, %6846
  %6854 = fmul fast float %5407, 4.000000e+00
  %6855 = fmul fast float %6854, %6719
  %6856 = fmul fast float %6855, %6847
  %6857 = fadd fast float %6850, %6837
  %6858 = fadd fast float %6853, %6838
  %6859 = fadd fast float %6856, %6839
  %6860 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6861 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6862 = call float @dx.op.unary.f32(i32 7, float %6859)  ; Saturate(value)
  br label %6863

; <label>:6863                                    ; preds = %6840, %6795
  %6864 = phi float [ %6860, %6840 ], [ %6837, %6795 ]
  %6865 = phi float [ %6861, %6840 ], [ %6838, %6795 ]
  %6866 = phi float [ %6862, %6840 ], [ %6839, %6795 ]
  %6867 = call float @dx.op.binary.f32(i32 35, float %6865, float %6866)  ; FMax(a,b)
  %6868 = call float @dx.op.binary.f32(i32 35, float %6864, float %6867)  ; FMax(a,b)
  %6869 = fsub fast float 1.000000e+00, %6868
  %6870 = fmul fast float %5805, %5810
  %6871 = fadd fast float %5812, %6870
  %6872 = call float @dx.op.unary.f32(i32 7, float %6871)  ; Saturate(value)
  %6873 = fsub fast float %5837, %5415
  %6874 = fsub fast float %5838, %5416
  %6875 = fsub fast float %5839, %5417
  %6876 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6875, float %6873, float %6874, float %6875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6877 = call float @dx.op.unary.f32(i32 25, float %6876)  ; Rsqrt(value)
  %6878 = fmul fast float %6877, %6873
  %6879 = fmul fast float %6877, %6874
  %6880 = fmul fast float %6877, %6875
  %6881 = call float @dx.op.dot3.f32(i32 55, float %6816, float %6817, float %6818, float %6878, float %6879, float %6880)  ; Dot3(ax,ay,az,bx,by,bz)
  %6882 = fmul fast float %6881, %6881
  %6883 = call float @dx.op.unary.f32(i32 6, float %6820)  ; FAbs(value)
  %6884 = call float @dx.op.binary.f32(i32 35, float %6872, float 0x3F847AE140000000)  ; FMax(a,b)
  %6885 = fmul fast float %6884, %6884
  %6886 = fmul fast float %6885, %6885
  %6887 = fsub fast float 1.000000e+00, %6886
  %6888 = fmul fast float %6681, %6887
  %6889 = fadd fast float %6888, %6886
  %6890 = bitcast float %6889 to i32
  %6891 = ashr i32 %6890, 1
  %6892 = add nsw i32 %6891, 532487669
  %6893 = bitcast i32 %6892 to float
  %6894 = fadd fast float %6893, %5409
  %6895 = fmul fast float %6886, %6882
  %6896 = fsub fast float 1.000000e+00, %6882
  %6897 = fadd fast float %6896, %6895
  %6898 = fmul fast float %6883, %6883
  %6899 = fmul fast float %6898, %6887
  %6900 = fadd fast float %6899, %6886
  %6901 = bitcast float %6900 to i32
  %6902 = ashr i32 %6901, 1
  %6903 = add nsw i32 %6902, 532487669
  %6904 = bitcast i32 %6903 to float
  %6905 = fadd fast float %6904, %6883
  %6906 = fmul fast float %6897, %6897
  %6907 = fmul fast float %6906, %6894
  %6908 = fmul fast float %6907, %6905
  %6909 = fdiv fast float 0x3FF0A00000000000, %6908
  %6910 = fmul fast float %6909, %6886
  %6911 = fmul fast float %6820, %6813
  %6912 = fmul fast float %6820, %6814
  %6913 = fmul fast float %6820, %6815
  %6914 = fmul fast float %6911, %6869
  %6915 = fmul fast float %6914, %6910
  %6916 = fmul fast float %6912, %6869
  %6917 = fmul fast float %6916, %6910
  %6918 = fmul fast float %6913, %6869
  %6919 = fmul fast float %6918, %6910
  %6920 = fmul fast float %6750, %6704
  %6921 = fmul fast float %6751, %6704
  %6922 = fmul fast float %6752, %6704
  %6923 = fsub fast float 1.000000e+00, %6668
  %6924 = bitcast float %6923 to i32
  %6925 = sitofp i32 %6924 to float
  %6926 = fmul fast float %6925, 5.000000e+00
  %6927 = fadd fast float %6926, 0xC1EFBF8940000000
  %6928 = fptosi float %6927 to i32
  %6929 = bitcast i32 %6928 to float
  %6930 = fmul fast float %6929, %5057
  %6931 = fmul fast float %6801, %6930
  %6932 = fmul fast float %6931, %5737
  %6933 = fmul fast float %6931, %5738
  %6934 = fmul fast float %6931, %5739
  %6935 = fadd fast float %6932, %6920
  %6936 = fadd fast float %6933, %6921
  %6937 = fadd fast float %6934, %6922
  %6938 = fmul fast float %6935, %6673
  %6939 = fmul fast float %6936, %6673
  %6940 = fmul fast float %6937, %6673
  %6941 = fmul fast float %6673, %6656
  %6942 = fmul fast float %6941, %6801
  %6943 = fmul fast float %6673, %6657
  %6944 = fmul fast float %6943, %6801
  %6945 = fmul fast float %6673, %6658
  %6946 = fmul fast float %6945, %6801
  %6947 = fadd fast float %6938, %6915
  %6948 = fadd fast float %6939, %6917
  %6949 = fadd fast float %6940, %6919
  %6950 = fmul fast float %6947, %6656
  %6951 = fmul fast float %6948, %6657
  %6952 = fmul fast float %6949, %6658
  %6953 = fadd fast float %6942, %5827
  %6954 = fmul fast float %6953, %5053
  %6955 = fadd fast float %6944, %5829
  %6956 = fmul fast float %6955, %5053
  %6957 = fadd fast float %6946, %5831
  %6958 = fmul fast float %6957, %5053
  %6959 = fadd fast float %6950, %5790
  %6960 = fmul fast float %6959, %5053
  %6961 = fadd fast float %6951, %5793
  %6962 = fmul fast float %6961, %5053
  %6963 = fadd fast float %6952, %5796
  %6964 = fmul fast float %6963, %5053
  br label %6965

; <label>:6965                                    ; preds = %6863, %6650, %5717
  %6966 = phi float [ %5791, %5717 ], [ %5791, %6650 ], [ %6960, %6863 ]
  %6967 = phi float [ %5794, %5717 ], [ %5794, %6650 ], [ %6962, %6863 ]
  %6968 = phi float [ %5797, %5717 ], [ %5797, %6650 ], [ %6964, %6863 ]
  %6969 = phi float [ %5828, %5717 ], [ %5828, %6650 ], [ %6954, %6863 ]
  %6970 = phi float [ %5830, %5717 ], [ %5830, %6650 ], [ %6956, %6863 ]
  %6971 = phi float [ %5832, %5717 ], [ %5832, %6650 ], [ %6958, %6863 ]
  %6972 = fmul fast float %5053, %5766
  %6973 = fsub fast float -0.000000e+00, %6972
  %6974 = fmul fast float %5053, %5767
  %6975 = fsub fast float -0.000000e+00, %6974
  %6976 = fmul fast float %5053, %5768
  %6977 = fsub fast float -0.000000e+00, %6976
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = fmul fast float %6979, %5772
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6983 = fsub fast float 1.000000e+00, %5060
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fadd fast float %6971, %5059
  %6986 = fmul fast float %6985, %5060
  %6987 = fmul fast float %6984, %6982
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 3
  %6990 = fmul fast float %6969, %5402
  %6991 = fmul fast float %6970, %5403
  %6992 = fmul fast float %6971, %5404
  %6993 = fcmp fast ogt float %78, %164
  %6994 = and i1 %6993, %5128
  %6995 = or i1 %5207, %6994
  %6996 = icmp eq i32 %5127, 2
  %6997 = fcmp fast ole float %78, %164
  %6998 = and i1 %6997, %6996
  %6999 = or i1 %6998, %6995
  br i1 %6994, label %7000, label %7257

; <label>:7000                                    ; preds = %6965
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7004 = fmul fast float %7002, %87
  %7005 = fmul fast float %7003, %88
  %7006 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7007 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7006, float %7007, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = extractvalue %dx.types.ResRet.f32 %7008, 3
  %7013 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7006, float %7007, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7014 = extractvalue %dx.types.ResRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.ResRet.f32 %7013, 1
  %7016 = extractvalue %dx.types.ResRet.f32 %7013, 2
  %7017 = extractvalue %dx.types.ResRet.f32 %7013, 3
  %7018 = call float @dx.op.binary.f32(i32 35, float %7010, float %7011)  ; FMax(a,b)
  %7019 = call float @dx.op.binary.f32(i32 35, float %7009, float %7018)  ; FMax(a,b)
  %7020 = call float @dx.op.binary.f32(i32 35, float %7019, float %7012)  ; FMax(a,b)
  %7021 = call float @dx.op.binary.f32(i32 36, float %7015, float %7016)  ; FMin(a,b)
  %7022 = call float @dx.op.binary.f32(i32 36, float %7014, float %7021)  ; FMin(a,b)
  %7023 = call float @dx.op.binary.f32(i32 36, float %7022, float %7017)  ; FMin(a,b)
  %7024 = fmul fast float %7020, 2.550000e+02
  %7025 = fadd fast float %7024, 0x3F70101020000000
  %7026 = fptoui float %7025 to i32
  %7027 = fmul fast float %7023, 2.550000e+02
  %7028 = fadd fast float %7027, 0x3F70101020000000
  %7029 = fptoui float %7028 to i32
  %7030 = icmp ult i32 %7026, %7029
  br i1 %7030, label %7031, label %7199

; <label>:7031                                    ; preds = %7000
  %7032 = fcmp fast ogt float %77, 9.843750e-01
  %7033 = fadd fast float %78, -4.000000e+00
  %7034 = select i1 %7032, float -4.000000e+00, float %7033
  %7035 = call float @dx.op.binary.f32(i32 35, float %7034, float 0.000000e+00)  ; FMax(a,b)
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7038 = fadd fast float %7037, %7035
  %7039 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %7040 = fmul fast float %7038, %7039
  %7041 = call float @dx.op.unary.f32(i32 23, float %7040)  ; Log(value)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7043 = fmul fast float %7042, %7041
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7046 = fmul fast float %7043, %7045
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = uitofp i32 %7026 to float
  %7049 = uitofp i32 %7029 to float
  %7050 = fadd fast float %7048, 5.000000e-01
  %7051 = fadd fast float %7049, 5.000000e-01
  %7052 = fmul fast float %7045, %7050
  %7053 = fmul fast float %7045, %7051
  %7054 = fadd fast float %7052, 0x3F0FFB4800000000
  %7055 = fadd fast float %7053, 0xBF0FFB4800000000
  %7056 = call float @dx.op.binary.f32(i32 35, float %7047, float %7054)  ; FMax(a,b)
  %7057 = call float @dx.op.binary.f32(i32 36, float %7056, float %7055)  ; FMin(a,b)
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7058, 0
  %7062 = fmul fast float %7059, %7057
  %7063 = fadd fast float %7061, %7062
  %7064 = fadd fast float %7061, %7060
  %7065 = fsub fast float %7059, %7060
  %7066 = fadd fast float %7065, %7061
  %7067 = call float @dx.op.binary.f32(i32 35, float %7063, float %7064)  ; FMax(a,b)
  %7068 = call float @dx.op.binary.f32(i32 36, float %7067, float %7066)  ; FMin(a,b)
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7006, float %7007, float %7068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.i32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.i32 %7073, 1
  %7076 = uitofp i32 %7074 to float
  %7077 = uitofp i32 %7075 to float
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = fmul fast float %7076, %7006
  %7082 = fmul fast float %7077, %7007
  %7083 = fadd fast float %7081, -5.000000e-01
  %7084 = fadd fast float %7082, -5.000000e-01
  %7085 = call float @dx.op.unary.f32(i32 22, float %7083)  ; Frc(value)
  %7086 = call float @dx.op.unary.f32(i32 22, float %7084)  ; Frc(value)
  %7087 = fmul fast float %7085, %7085
  %7088 = fmul fast float %7087, %7085
  %7089 = fsub fast float 3.000000e+00, %7085
  %7090 = fmul fast float %7087, %7089
  %7091 = fmul fast float %7085, 3.000000e+00
  %7092 = fmul fast float %7088, 3.000000e+00
  %7093 = fmul fast float %7087, 6.000000e+00
  %7094 = fsub fast float %7092, %7093
  %7095 = fadd fast float %7094, 4.000000e+00
  %7096 = fmul fast float %7095, 0x3FC5555560000000
  %7097 = fmul fast float %7088, -3.000000e+00
  %7098 = fadd fast float %7087, %7085
  %7099 = fmul fast float %7098, 3.000000e+00
  %7100 = fadd fast float %7097, 1.000000e+00
  %7101 = fadd fast float %7100, %7099
  %7102 = fmul fast float %7088, 0x3FC5555560000000
  %7103 = fmul fast float %7086, %7086
  %7104 = fmul fast float %7103, %7086
  %7105 = fsub fast float 3.000000e+00, %7086
  %7106 = fmul fast float %7103, %7105
  %7107 = fmul fast float %7086, 3.000000e+00
  %7108 = fmul fast float %7104, 3.000000e+00
  %7109 = fmul fast float %7103, 6.000000e+00
  %7110 = fsub fast float %7108, %7109
  %7111 = fadd fast float %7110, 4.000000e+00
  %7112 = fmul fast float %7111, 0x3FC5555560000000
  %7113 = fmul fast float %7104, -3.000000e+00
  %7114 = fadd fast float %7103, %7086
  %7115 = fmul fast float %7114, 3.000000e+00
  %7116 = fadd fast float %7113, 1.000000e+00
  %7117 = fadd fast float %7116, %7115
  %7118 = fmul fast float %7104, 0x3FC5555560000000
  %7119 = fadd fast float %7085, 1.000000e+00
  %7120 = fsub fast float 1.000000e+00, %7091
  %7121 = fadd fast float %7120, %7090
  %7122 = fadd fast float %7121, %7095
  %7123 = fmul fast float %7122, 0x3FC5555560000000
  %7124 = fdiv fast float %7096, %7123
  %7125 = fsub fast float %7119, %7124
  %7126 = fsub fast float 1.000000e+00, %7085
  %7127 = fadd fast float %7101, %7088
  %7128 = fmul fast float %7127, 0x3FC5555560000000
  %7129 = fdiv fast float %7102, %7128
  %7130 = fadd fast float %7126, %7129
  %7131 = fadd fast float %7086, 1.000000e+00
  %7132 = fsub fast float 1.000000e+00, %7107
  %7133 = fadd fast float %7132, %7106
  %7134 = fadd fast float %7133, %7111
  %7135 = fmul fast float %7134, 0x3FC5555560000000
  %7136 = fdiv fast float %7112, %7135
  %7137 = fsub fast float %7131, %7136
  %7138 = fsub fast float 1.000000e+00, %7086
  %7139 = fadd fast float %7117, %7104
  %7140 = fmul fast float %7139, 0x3FC5555560000000
  %7141 = fdiv fast float %7118, %7140
  %7142 = fadd fast float %7141, %7138
  %7143 = fmul fast float %7125, %7079
  %7144 = fsub fast float %7006, %7143
  %7145 = fmul fast float %7130, %7079
  %7146 = fadd fast float %7145, %7006
  %7147 = fmul fast float %7142, %7080
  %7148 = fadd fast float %7147, %7007
  %7149 = fmul fast float %7137, %7080
  %7150 = fsub fast float %7007, %7149
  %7151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7144, float %7150, float %7068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7152 = extractvalue %dx.types.ResRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.ResRet.f32 %7151, 1
  %7154 = extractvalue %dx.types.ResRet.f32 %7151, 2
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7146, float %7150, float %7068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.f32 %7155, 1
  %7158 = extractvalue %dx.types.ResRet.f32 %7155, 2
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7144, float %7148, float %7068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.ResRet.f32 %7159, 2
  %7163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7146, float %7148, float %7068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7164 = extractvalue %dx.types.ResRet.f32 %7163, 0
  %7165 = extractvalue %dx.types.ResRet.f32 %7163, 1
  %7166 = extractvalue %dx.types.ResRet.f32 %7163, 2
  %7167 = fsub fast float %7160, %7152
  %7168 = fsub fast float %7161, %7153
  %7169 = fsub fast float %7162, %7154
  %7170 = fmul fast float %7167, %7140
  %7171 = fmul fast float %7168, %7140
  %7172 = fmul fast float %7169, %7140
  %7173 = fadd fast float %7170, %7152
  %7174 = fadd fast float %7171, %7153
  %7175 = fadd fast float %7172, %7154
  %7176 = fsub fast float %7164, %7156
  %7177 = fsub fast float %7165, %7157
  %7178 = fsub fast float %7166, %7158
  %7179 = fmul fast float %7176, %7140
  %7180 = fmul fast float %7177, %7140
  %7181 = fmul fast float %7178, %7140
  %7182 = fsub fast float %7156, %7173
  %7183 = fadd fast float %7182, %7179
  %7184 = fsub fast float %7157, %7174
  %7185 = fadd fast float %7184, %7180
  %7186 = fsub fast float %7158, %7175
  %7187 = fadd fast float %7186, %7181
  %7188 = fmul fast float %7183, %7128
  %7189 = fmul fast float %7185, %7128
  %7190 = fmul fast float %7187, %7128
  %7191 = fadd fast float %7188, %7173
  %7192 = fadd fast float %7189, %7174
  %7193 = fadd fast float %7190, %7175
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 1
  %7196 = fmul fast float %7191, %7195
  %7197 = fmul fast float %7192, %7195
  %7198 = fmul fast float %7193, %7195
  br label %7199

; <label>:7199                                    ; preds = %7031, %7000
  %7200 = phi float [ %7070, %7031 ], [ 1.000000e+00, %7000 ]
  %7201 = phi float [ %7071, %7031 ], [ 1.000000e+00, %7000 ]
  %7202 = phi float [ %7072, %7031 ], [ 1.000000e+00, %7000 ]
  %7203 = phi float [ %7196, %7031 ], [ 0.000000e+00, %7000 ]
  %7204 = phi float [ %7197, %7031 ], [ 0.000000e+00, %7000 ]
  %7205 = phi float [ %7198, %7031 ], [ 0.000000e+00, %7000 ]
  %7206 = fmul fast float %7203, %6973
  %7207 = fmul fast float %7204, %6975
  %7208 = fmul fast float %7205, %6977
  %7209 = call float @dx.op.dot3.f32(i32 55, float %7200, float %7201, float %7202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7210 = call float @dx.op.dot3.f32(i32 55, float %7206, float %7207, float %7208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = select i1 %203, float %7209, float %7200
  %7212 = select i1 %203, float %7209, float %7201
  %7213 = select i1 %203, float 1.000000e+00, float %7202
  %7214 = select i1 %203, float %7210, float %7206
  %7215 = select i1 %203, float 0.000000e+00, float %7207
  %7216 = select i1 %203, float 0.000000e+00, float %7208
  %7217 = fmul fast float %7211, %6990
  %7218 = fmul fast float %7212, %6991
  %7219 = fmul fast float %7213, %6992
  %7220 = fadd fast float %7217, %7214
  %7221 = fadd fast float %7218, %7215
  %7222 = fadd fast float %7216, %7219
  %7223 = fmul fast float %7211, %6966
  %7224 = fmul fast float %7212, %6967
  %7225 = fmul fast float %7213, %6968
  %7226 = fmul fast float %112, %7002
  %7227 = fmul fast float %114, %7003
  %7228 = fsub fast float 1.000000e+00, %7226
  %7229 = fsub fast float 1.000000e+00, %7227
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7234 = fmul fast float %7228, %7231
  %7235 = fmul fast float %7228, %7232
  %7236 = fmul fast float %7228, %7233
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7240 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7241 = fmul fast float %7229, %7238
  %7242 = fmul fast float %7229, %7239
  %7243 = fmul fast float %7229, %7240
  %7244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.CBufRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.CBufRet.f32 %7244, 2
  %7248 = fadd fast float %7241, %7245
  %7249 = fadd fast float %7248, %7234
  %7250 = fadd fast float %7242, %7246
  %7251 = fadd fast float %7250, %7235
  %7252 = fadd fast float %7243, %7247
  %7253 = fadd fast float %7252, %7236
  %7254 = fmul fast float %7249, %164
  %7255 = fmul fast float %7251, %164
  %7256 = fmul fast float %7253, %164
  br label %7257

; <label>:7257                                    ; preds = %7199, %6965
  %7258 = phi float [ %7254, %7199 ], [ %142, %6965 ]
  %7259 = phi float [ %7255, %7199 ], [ %143, %6965 ]
  %7260 = phi float [ %7256, %7199 ], [ %144, %6965 ]
  %7261 = phi float [ %164, %7199 ], [ %78, %6965 ]
  %7262 = phi float [ %7220, %7199 ], [ %6990, %6965 ]
  %7263 = phi float [ %7221, %7199 ], [ %6991, %6965 ]
  %7264 = phi float [ %7222, %7199 ], [ %6992, %6965 ]
  %7265 = phi float [ %7223, %7199 ], [ %6966, %6965 ]
  %7266 = phi float [ %7224, %7199 ], [ %6967, %6965 ]
  %7267 = phi float [ %7225, %7199 ], [ %6968, %6965 ]
  %7268 = phi float [ %7200, %7199 ], [ 1.000000e+00, %6965 ]
  br i1 %6999, label %8423, label %7269

; <label>:7269                                    ; preds = %7257
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7270, 3
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.CBufRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.CBufRet.f32 %7275, 2
  %7279 = extractvalue %dx.types.CBufRet.f32 %7275, 3
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.CBufRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %7284 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = extractvalue %dx.types.CBufRet.f32 %7285, 3
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 3
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 3
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7295 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7296 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7297 = fcmp fast olt float %7296, -5.000000e-01
  %7298 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7259, float %7260, float %7258, float %7259, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = call float @dx.op.unary.f32(i32 25, float %7298)  ; Rsqrt(value)
  %7300 = fmul fast float %7299, %7298
  %7301 = fmul fast float %7299, %7258
  %7302 = fmul fast float %7299, %7259
  %7303 = fmul fast float %7299, %7260
  %7304 = fadd fast float %7300, %7274
  %7305 = call float @dx.op.dot3.f32(i32 55, float %7301, float %7302, float %7303, float %7271, float %7272, float %7273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.i32 %7306, 1
  %7308 = and i32 %7307, 1
  %7309 = icmp ne i32 %7308, 0
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7312 = fcmp fast ogt float %7311, 0.000000e+00
  %7313 = and i1 %7309, %7312
  br i1 %7313, label %7314, label %7720, !dx.controlflow.hints !105

; <label>:7314                                    ; preds = %7269
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7321 = fsub fast float %7318, %7320
  %7322 = and i32 %7307, 2
  %7323 = extractvalue %dx.types.CBufRet.i32 %7306, 0
  %7324 = call i32 @dx.op.binary.i32(i32 40, i32 %7323, i32 3)  ; UMin(a,b)
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7329 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7330 = fsub fast float %7326, %7328
  %7331 = fsub fast float %7327, %7329
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  %7335 = fsub fast float -0.000000e+00, %7330
  %7336 = fsub fast float -0.000000e+00, %7331
  %7337 = call float @dx.op.dot2.f32(i32 54, float %7301, float %7302, float %7301, float %7302)  ; Dot2(ax,ay,bx,by)
  %7338 = call float @dx.op.dot2.f32(i32 54, float %7301, float %7302, float %7335, float %7336)  ; Dot2(ax,ay,bx,by)
  %7339 = fmul fast float %7338, 2.000000e+00
  %7340 = call float @dx.op.dot2.f32(i32 54, float %7335, float %7336, float %7335, float %7336)  ; Dot2(ax,ay,bx,by)
  %7341 = fmul fast float %7333, %7333
  %7342 = fsub fast float %7340, %7341
  %7343 = fmul fast float %7339, %7339
  %7344 = fmul fast float %7337, 4.000000e+00
  %7345 = fmul fast float %7344, %7342
  %7346 = fsub fast float %7343, %7345
  %7347 = fcmp fast ogt float %7346, 0.000000e+00
  br i1 %7347, label %7348, label %7363

; <label>:7348                                    ; preds = %7314
  %7349 = fcmp fast ogt float %7339, 0.000000e+00
  %7350 = call float @dx.op.unary.f32(i32 24, float %7346)  ; Sqrt(value)
  %7351 = fsub fast float -0.000000e+00, %7350
  %7352 = select i1 %7349, float %7350, float %7351
  %7353 = fadd fast float %7352, %7339
  %7354 = fmul float %7353, -5.000000e-01
  %7355 = fdiv fast float %7354, %7337
  %7356 = call float @dx.op.binary.f32(i32 35, float %7355, float 0.000000e+00)  ; FMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 36, float %7300, float %7356)  ; FMin(a,b)
  %7358 = fdiv fast float %7342, %7354
  %7359 = call float @dx.op.binary.f32(i32 35, float %7358, float 0.000000e+00)  ; FMax(a,b)
  %7360 = call float @dx.op.binary.f32(i32 36, float %7300, float %7359)  ; FMin(a,b)
  %7361 = call float @dx.op.binary.f32(i32 36, float %7357, float %7360)  ; FMin(a,b)
  %7362 = call float @dx.op.binary.f32(i32 35, float %7357, float %7360)  ; FMax(a,b)
  br label %7363

; <label>:7363                                    ; preds = %7348, %7314
  %7364 = phi float [ %7362, %7348 ], [ -1.000000e+00, %7314 ]
  %7365 = phi float [ %7361, %7348 ], [ -1.000000e+00, %7314 ]
  %7366 = phi i1 [ true, %7348 ], [ false, %7314 ]
  %7367 = and i1 %7334, %7366
  br i1 %7367, label %7368, label %7370

; <label>:7368                                    ; preds = %7363
  %7369 = fcmp fast oeq float %7365, %7364
  br i1 %7369, label %7673, label %7371

; <label>:7370                                    ; preds = %7363
  br i1 %7334, label %7673, label %7371

; <label>:7371                                    ; preds = %7370, %7368
  %7372 = phi float [ %7300, %7370 ], [ %7364, %7368 ]
  %7373 = phi float [ 0.000000e+00, %7370 ], [ %7365, %7368 ]
  %7374 = icmp ne i32 %7322, 0
  %7375 = fmul fast float %7372, %7303
  %7376 = fadd fast float %7375, %7316
  %7377 = fmul fast float %7376, %7372
  %7378 = select i1 %7374, float 0.000000e+00, float %7377
  %7379 = fcmp fast oeq float %7303, 0.000000e+00
  %7380 = fdiv fast float %7321, %7303
  %7381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7380)  ; FMax(a,b)
  %7382 = select i1 %7379, float %7372, float %7381
  %7383 = call float @dx.op.binary.f32(i32 36, float %7372, float %7382)  ; FMin(a,b)
  %7384 = fcmp fast ogt float %7303, 0.000000e+00
  %7385 = fcmp fast olt float %7321, 0.000000e+00
  br i1 %7384, label %7386, label %7443

; <label>:7386                                    ; preds = %7371
  %7387 = icmp eq i32 %7322, 0
  br i1 %7385, label %7388, label %7432

; <label>:7388                                    ; preds = %7386
  %7389 = select i1 %7387, float %7372, float 0.000000e+00
  %7390 = fsub fast float -0.000000e+00, %7389
  %7391 = call float @dx.op.unary.f32(i32 6, float %7390)  ; FAbs(value)
  %7392 = fmul fast float %7389, %7303
  %7393 = fadd fast float %7392, %7316
  %7394 = fmul fast float %7391, %7393
  %7395 = fsub fast float %7378, %7394
  %7396 = fsub fast float %7372, %7391
  %7397 = select i1 %7387, float %7396, float 0.000000e+00
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7409 = call float @dx.op.binary.f32(i32 36, float %7395, float %7408)  ; FMin(a,b)
  %7410 = fmul fast float %7406, %7397
  %7411 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7412 = fsub fast float %7403, %7399
  %7413 = fsub fast float %7404, %7400
  %7414 = fsub fast float %7405, %7401
  %7415 = fmul fast float %7411, %7412
  %7416 = fmul fast float %7411, %7413
  %7417 = fmul fast float %7411, %7414
  %7418 = fadd fast float %7415, %7399
  %7419 = fadd fast float %7416, %7400
  %7420 = fadd fast float %7417, %7401
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7424 = fadd fast float %7423, %7422
  %7425 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7427 = extractvalue %dx.types.CBufRet.f32 %7421, 3
  %7428 = fadd fast float %7427, %7426
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7430 = fmul fast float %7425, %7409
  %7431 = fmul fast float %7430, %7429
  br label %7673

; <label>:7432                                    ; preds = %7386
  br i1 %7387, label %7433, label %7454

; <label>:7433                                    ; preds = %7432
  %7434 = call float @dx.op.binary.f32(i32 36, float %7383, float %7373)  ; FMin(a,b)
  %7435 = fsub fast float %7383, %7434
  %7436 = fsub fast float %7435, %7372
  %7437 = call float @dx.op.unary.f32(i32 6, float %7436)  ; FAbs(value)
  %7438 = fadd fast float %7435, %7372
  %7439 = fmul fast float %7438, %7303
  %7440 = fadd fast float %7439, %7316
  %7441 = fmul fast float %7440, %7437
  %7442 = fsub fast float %7378, %7441
  br label %7454

; <label>:7443                                    ; preds = %7371
  br i1 %7385, label %7444, label %7454

; <label>:7444                                    ; preds = %7443
  %7445 = call float @dx.op.binary.f32(i32 35, float %7373, float %7383)  ; FMax(a,b)
  %7446 = icmp eq i32 %7322, 0
  %7447 = select i1 %7446, float %7383, float 0.000000e+00
  %7448 = fsub fast float -0.000000e+00, %7447
  %7449 = call float @dx.op.unary.f32(i32 6, float %7448)  ; FAbs(value)
  %7450 = fmul fast float %7447, %7303
  %7451 = fadd fast float %7450, %7316
  %7452 = fmul fast float %7449, %7451
  %7453 = fsub fast float %7378, %7452
  br label %7454

; <label>:7454                                    ; preds = %7444, %7443, %7433, %7432
  %7455 = phi float [ %7373, %7432 ], [ %7373, %7433 ], [ %7445, %7444 ], [ %7373, %7443 ]
  %7456 = phi float [ 0.000000e+00, %7432 ], [ %7437, %7433 ], [ %7449, %7444 ], [ 0.000000e+00, %7443 ]
  %7457 = phi float [ %7378, %7432 ], [ %7442, %7433 ], [ %7453, %7444 ], [ %7378, %7443 ]
  %7458 = phi float [ %7383, %7432 ], [ %7383, %7433 ], [ %7372, %7444 ], [ %7372, %7443 ]
  %7459 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7459, align 4, !tbaa !106, !noalias !108
  %7460 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7460, align 4, !tbaa !106, !noalias !108
  %7461 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7461, align 4, !tbaa !106, !noalias !108
  %7462 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7462, align 4, !tbaa !106, !noalias !108
  %7463 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7463, align 4, !tbaa !106, !noalias !108
  %7464 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7464, align 4, !tbaa !106, !noalias !108
  %7465 = icmp sgt i32 %7324, 0
  br i1 %7465, label %7466, label %7527

; <label>:7466                                    ; preds = %7454
  br label %7467

; <label>:7467                                    ; preds = %7516, %7466
  %7468 = phi i32 [ %7517, %7516 ], [ 0, %7466 ]
  %7469 = phi i32 [ %7518, %7516 ], [ 0, %7466 ]
  %7470 = add nuw i32 %7469, 171
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7470)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7477 = fsub fast float %7472, %7475
  %7478 = fsub fast float %7473, %7476
  %7479 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7480 = fsub fast float -0.000000e+00, %7477
  %7481 = fsub fast float -0.000000e+00, %7478
  %7482 = call float @dx.op.dot2.f32(i32 54, float %7301, float %7302, float %7480, float %7481)  ; Dot2(ax,ay,bx,by)
  %7483 = fmul fast float %7482, 2.000000e+00
  %7484 = call float @dx.op.dot2.f32(i32 54, float %7480, float %7481, float %7480, float %7481)  ; Dot2(ax,ay,bx,by)
  %7485 = fmul fast float %7479, %7479
  %7486 = fsub fast float %7484, %7485
  %7487 = fmul fast float %7483, %7483
  %7488 = fmul fast float %7344, %7486
  %7489 = fsub fast float %7487, %7488
  %7490 = fcmp fast ogt float %7489, 0.000000e+00
  br i1 %7490, label %7491, label %7506

; <label>:7491                                    ; preds = %7467
  %7492 = fcmp fast ogt float %7483, 0.000000e+00
  %7493 = call float @dx.op.unary.f32(i32 24, float %7489)  ; Sqrt(value)
  %7494 = fsub fast float -0.000000e+00, %7493
  %7495 = select i1 %7492, float %7493, float %7494
  %7496 = fadd fast float %7495, %7483
  %7497 = fmul float %7496, -5.000000e-01
  %7498 = fdiv fast float %7497, %7337
  %7499 = call float @dx.op.binary.f32(i32 35, float %7498, float 0.000000e+00)  ; FMax(a,b)
  %7500 = call float @dx.op.binary.f32(i32 36, float %7372, float %7499)  ; FMin(a,b)
  %7501 = fdiv fast float %7486, %7497
  %7502 = call float @dx.op.binary.f32(i32 35, float %7501, float 0.000000e+00)  ; FMax(a,b)
  %7503 = call float @dx.op.binary.f32(i32 36, float %7372, float %7502)  ; FMin(a,b)
  %7504 = call float @dx.op.binary.f32(i32 36, float %7500, float %7503)  ; FMin(a,b)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7500, float %7503)  ; FMax(a,b)
  br label %7506

; <label>:7506                                    ; preds = %7491, %7467
  %7507 = phi float [ %7505, %7491 ], [ -1.000000e+00, %7467 ]
  %7508 = phi float [ %7504, %7491 ], [ -1.000000e+00, %7467 ]
  %7509 = phi i1 [ true, %7491 ], [ false, %7467 ]
  br i1 %7509, label %7510, label %7516

; <label>:7510                                    ; preds = %7506
  %7511 = call float @dx.op.binary.f32(i32 35, float %7455, float %7508)  ; FMax(a,b)
  %7512 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7469
  store float %7511, float* %7512, align 4, !tbaa !106, !noalias !108
  %7513 = call float @dx.op.binary.f32(i32 35, float %7455, float %7507)  ; FMax(a,b)
  %7514 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7469
  store float %7513, float* %7514, align 4, !tbaa !106, !noalias !108
  %7515 = add nsw i32 %7468, 1
  br label %7516

; <label>:7516                                    ; preds = %7510, %7506
  %7517 = phi i32 [ %7515, %7510 ], [ %7468, %7506 ]
  %7518 = add nuw nsw i32 %7469, 1
  %7519 = icmp eq i32 %7518, %7324
  br i1 %7519, label %7520, label %7467

; <label>:7520                                    ; preds = %7516
  %7521 = load float, float* %7461, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7522 = load float, float* %7460, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %7523 = load float, float* %7459, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %7524 = load float, float* %7464, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7525 = load float, float* %7463, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %7526 = load float, float* %7462, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %7527

; <label>:7527                                    ; preds = %7520, %7454
  %7528 = phi float [ -1.000000e+00, %7454 ], [ %7526, %7520 ]
  %7529 = phi float [ -1.000000e+00, %7454 ], [ %7525, %7520 ]
  %7530 = phi float [ -1.000000e+00, %7454 ], [ %7524, %7520 ]
  %7531 = phi float [ -1.000000e+00, %7454 ], [ %7523, %7520 ]
  %7532 = phi float [ -1.000000e+00, %7454 ], [ %7522, %7520 ]
  %7533 = phi float [ -1.000000e+00, %7454 ], [ %7521, %7520 ]
  %7534 = phi i32 [ 0, %7454 ], [ %7517, %7520 ]
  %7535 = call float @dx.op.binary.f32(i32 36, float %7532, float %7533)  ; FMin(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7531, float %7535)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 35, float %7531, float %7532)  ; FMax(a,b)
  %7538 = call float @dx.op.binary.f32(i32 36, float %7537, float %7533)  ; FMin(a,b)
  %7539 = call float @dx.op.binary.f32(i32 36, float %7531, float %7532)  ; FMin(a,b)
  %7540 = call float @dx.op.binary.f32(i32 35, float %7539, float %7538)  ; FMax(a,b)
  %7541 = call float @dx.op.binary.f32(i32 35, float %7532, float %7533)  ; FMax(a,b)
  %7542 = call float @dx.op.binary.f32(i32 35, float %7531, float %7541)  ; FMax(a,b)
  store float %7536, float* %7459, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %7540, float* %7460, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %7542, float* %7461, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7543 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7528, float %7543)  ; FMin(a,b)
  %7545 = call float @dx.op.binary.f32(i32 35, float %7528, float %7529)  ; FMax(a,b)
  %7546 = call float @dx.op.binary.f32(i32 36, float %7545, float %7530)  ; FMin(a,b)
  %7547 = call float @dx.op.binary.f32(i32 36, float %7528, float %7529)  ; FMin(a,b)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7547, float %7546)  ; FMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 35, float %7529, float %7530)  ; FMax(a,b)
  %7550 = call float @dx.op.binary.f32(i32 35, float %7528, float %7549)  ; FMax(a,b)
  store float %7544, float* %7462, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %7548, float* %7463, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %7550, float* %7464, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7551 = sub nsw i32 3, %7534
  %7552 = icmp sgt i32 %7551, 2
  br i1 %7552, label %7553, label %7591

; <label>:7553                                    ; preds = %7527
  %7554 = icmp eq i32 %7322, 0
  %7555 = fsub fast float %7372, %7456
  %7556 = select i1 %7554, float %7555, float %7456
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.CBufRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.CBufRet.f32 %7561, 2
  %7565 = extractvalue %dx.types.CBufRet.f32 %7561, 3
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 3
  %7568 = call float @dx.op.binary.f32(i32 36, float %7457, float %7567)  ; FMin(a,b)
  %7569 = fmul fast float %7565, %7556
  %7570 = call float @dx.op.unary.f32(i32 7, float %7569)  ; Saturate(value)
  %7571 = fsub fast float %7562, %7558
  %7572 = fsub fast float %7563, %7559
  %7573 = fsub fast float %7564, %7560
  %7574 = fmul fast float %7570, %7571
  %7575 = fmul fast float %7570, %7572
  %7576 = fmul fast float %7570, %7573
  %7577 = fadd fast float %7574, %7558
  %7578 = fadd fast float %7575, %7559
  %7579 = fadd fast float %7576, %7560
  %7580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7580, 0
  %7582 = extractvalue %dx.types.CBufRet.f32 %7580, 1
  %7583 = fadd fast float %7582, %7581
  %7584 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7580, 2
  %7586 = extractvalue %dx.types.CBufRet.f32 %7580, 3
  %7587 = fadd fast float %7586, %7585
  %7588 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7589 = fmul fast float %7584, %7568
  %7590 = fmul fast float %7589, %7588
  br label %7673

; <label>:7591                                    ; preds = %7527
  %7592 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7551
  %7593 = load float, float* %7592, align 4, !tbaa !106, !noalias !108
  %7594 = fcmp fast olt float %7593, %7458
  %7595 = icmp sgt i32 %7534, 0
  %7596 = and i1 %7595, %7594
  br i1 %7596, label %7597, label %7634

; <label>:7597                                    ; preds = %7591
  br label %7598

; <label>:7598                                    ; preds = %7627, %7597
  %7599 = phi float [ %7628, %7627 ], [ %7456, %7597 ]
  %7600 = phi float [ %7629, %7627 ], [ %7457, %7597 ]
  %7601 = phi float [ %7609, %7627 ], [ %7593, %7597 ]
  %7602 = phi i32 [ %7606, %7627 ], [ %7551, %7597 ]
  %7603 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7602
  %7604 = load float, float* %7603, align 4, !tbaa !106, !noalias !108
  %7605 = icmp slt i32 %7602, 2
  %7606 = add nsw i32 %7602, 1
  %7607 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7606
  %7608 = load float, float* %7607, align 4, !tbaa !106, !noalias !108
  %7609 = select i1 %7605, float %7608, float %7372
  %7610 = call float @dx.op.binary.f32(i32 36, float %7609, float %7604)  ; FMin(a,b)
  %7611 = call float @dx.op.binary.f32(i32 36, float %7458, float %7610)  ; FMin(a,b)
  %7612 = icmp eq i32 %7322, 0
  %7613 = fadd fast float %7611, %7601
  %7614 = fmul fast float %7613, %7303
  %7615 = fadd fast float %7614, %7316
  br i1 %7612, label %7621, label %7616

; <label>:7616                                    ; preds = %7598
  %7617 = fsub fast float %7611, %7601
  %7618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7617)  ; FMax(a,b)
  %7619 = fmul fast float %7618, %7615
  %7620 = fadd fast float %7619, %7600
  br label %7627

; <label>:7621                                    ; preds = %7598
  %7622 = fsub fast float %7601, %7611
  %7623 = call float @dx.op.unary.f32(i32 6, float %7622)  ; FAbs(value)
  %7624 = fadd fast float %7623, %7599
  %7625 = fmul fast float %7623, %7615
  %7626 = fsub fast float %7600, %7625
  br label %7627

; <label>:7627                                    ; preds = %7621, %7616
  %7628 = phi float [ %7618, %7616 ], [ %7624, %7621 ]
  %7629 = phi float [ %7620, %7616 ], [ %7626, %7621 ]
  %7630 = fcmp fast olt float %7609, %7458
  %7631 = icmp slt i32 %7606, 3
  %7632 = and i1 %7631, %7630
  br i1 %7632, label %7598, label %7633

; <label>:7633                                    ; preds = %7627
  br label %7634

; <label>:7634                                    ; preds = %7633, %7591
  %7635 = phi float [ %7456, %7591 ], [ %7628, %7633 ]
  %7636 = phi float [ %7457, %7591 ], [ %7629, %7633 ]
  %7637 = fsub fast float %7372, %7635
  %7638 = select i1 %7374, float %7635, float %7637
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.CBufRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.CBufRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.CBufRet.f32 %7643, 2
  %7647 = extractvalue %dx.types.CBufRet.f32 %7643, 3
  %7648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7649 = extractvalue %dx.types.CBufRet.f32 %7648, 3
  %7650 = call float @dx.op.binary.f32(i32 36, float %7636, float %7649)  ; FMin(a,b)
  %7651 = fmul fast float %7647, %7638
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7653 = fsub fast float %7644, %7640
  %7654 = fsub fast float %7645, %7641
  %7655 = fsub fast float %7646, %7642
  %7656 = fmul fast float %7652, %7653
  %7657 = fmul fast float %7652, %7654
  %7658 = fmul fast float %7652, %7655
  %7659 = fadd fast float %7656, %7640
  %7660 = fadd fast float %7657, %7641
  %7661 = fadd fast float %7658, %7642
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7662, 1
  %7665 = fadd fast float %7664, %7663
  %7666 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7662, 2
  %7668 = extractvalue %dx.types.CBufRet.f32 %7662, 3
  %7669 = fadd fast float %7668, %7667
  %7670 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  %7671 = fmul fast float %7666, %7650
  %7672 = fmul fast float %7671, %7670
  br label %7673

; <label>:7673                                    ; preds = %7634, %7553, %7388, %7370, %7368
  %7674 = phi float [ %7397, %7388 ], [ %7556, %7553 ], [ %7638, %7634 ], [ 0.000000e+00, %7368 ], [ 0.000000e+00, %7370 ]
  %7675 = phi float [ %7431, %7388 ], [ %7590, %7553 ], [ %7672, %7634 ], [ 0.000000e+00, %7368 ], [ 0.000000e+00, %7370 ]
  %7676 = phi float [ %7418, %7388 ], [ %7577, %7553 ], [ %7659, %7634 ], [ 0.000000e+00, %7368 ], [ 0.000000e+00, %7370 ]
  %7677 = phi float [ %7419, %7388 ], [ %7578, %7553 ], [ %7660, %7634 ], [ 0.000000e+00, %7368 ], [ 0.000000e+00, %7370 ]
  %7678 = phi float [ %7420, %7388 ], [ %7579, %7553 ], [ %7661, %7634 ], [ 0.000000e+00, %7368 ], [ 0.000000e+00, %7370 ]
  %7679 = fmul fast float %7311, %7675
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7682 = fsub fast float %7318, %7681
  %7683 = fcmp fast olt float %7679, -2.000000e+01
  %7684 = call float @dx.op.unary.f32(i32 21, float %7679)  ; Exp(value)
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7690 = fmul fast float %7687, %7682
  %7691 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7692 = fsub fast float 1.000000e+00, %7691
  %7693 = fmul fast float %7303, 5.000000e-01
  %7694 = fadd fast float %7693, 5.000000e-01
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7696 = fsub fast float 1.000000e+00, %7695
  %7697 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7692)  ; FMax(a,b)
  %7698 = fdiv fast float %7696, %7697
  %7699 = fsub fast float %7682, %7260
  %7700 = call float @dx.op.unary.f32(i32 6, float %7699)  ; FAbs(value)
  %7701 = fmul fast float %7700, %7686
  %7702 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7703 = fsub fast float 1.000000e+00, %7701
  %7704 = fmul fast float %7703, %7702
  %7705 = fadd fast float %7704, %7701
  %7706 = fmul fast float %7689, %7682
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fsub fast float 1.000000e+00, %7705
  %7709 = fmul fast float %7708, %7707
  %7710 = fadd fast float %7709, %7705
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7712 = fadd fast float %7684, -1.000000e+00
  %7713 = select i1 %7683, float -1.000000e+00, float %7712
  %7714 = fmul fast float %7711, %7713
  %7715 = fadd fast float %7714, 1.000000e+00
  %7716 = fsub fast float -0.000000e+00, %7714
  %7717 = fmul fast float %7676, %7716
  %7718 = fmul fast float %7677, %7716
  %7719 = fmul fast float %7678, %7716
  br label %7720

; <label>:7720                                    ; preds = %7673, %7269
  %7721 = phi float [ %7674, %7673 ], [ 0.000000e+00, %7269 ]
  %7722 = phi float [ %7715, %7673 ], [ 1.000000e+00, %7269 ]
  %7723 = phi float [ %7717, %7673 ], [ 0.000000e+00, %7269 ]
  %7724 = phi float [ %7718, %7673 ], [ 0.000000e+00, %7269 ]
  %7725 = phi float [ %7719, %7673 ], [ 0.000000e+00, %7269 ]
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 1
  %7728 = fsub fast float 1.000000e+00, %7722
  %7729 = fmul fast float %7728, %7304
  %7730 = fmul fast float %7729, %7727
  %7731 = fsub fast float %7304, %7730
  br i1 %7297, label %7732, label %7761, !dx.controlflow.hints !144

; <label>:7732                                    ; preds = %7720
  %7733 = fmul fast float %7305, %7294
  %7734 = fadd fast float %7733, %7295
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fmul fast float %7276, %7731
  %7737 = fsub fast float -0.000000e+00, %7736
  %7738 = fmul fast float %7277, %7731
  %7739 = fsub fast float -0.000000e+00, %7738
  %7740 = call float @dx.op.unary.f32(i32 21, float %7737)  ; Exp(value)
  %7741 = call float @dx.op.unary.f32(i32 21, float %7739)  ; Exp(value)
  %7742 = call float @dx.op.binary.f32(i32 35, float %7284, float %7740)  ; FMax(a,b)
  %7743 = call float @dx.op.binary.f32(i32 35, float %7284, float %7741)  ; FMax(a,b)
  %7744 = fsub fast float %7743, %7742
  %7745 = fmul fast float %7744, %7735
  %7746 = fadd fast float %7745, %7742
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fsub fast float %7281, %7286
  %7749 = fsub fast float %7282, %7287
  %7750 = fsub fast float %7283, %7288
  %7751 = fmul fast float %7735, %7748
  %7752 = fmul fast float %7735, %7749
  %7753 = fmul fast float %7735, %7750
  %7754 = fadd fast float %7751, %7286
  %7755 = fadd fast float %7752, %7287
  %7756 = fadd fast float %7753, %7288
  %7757 = fsub fast float 1.000000e+00, %7747
  %7758 = fmul fast float %7757, %7754
  %7759 = fmul fast float %7757, %7755
  %7760 = fmul fast float %7757, %7756
  br label %7820

; <label>:7761                                    ; preds = %7720
  %7762 = fmul fast float %7731, %7293
  %7763 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7764 = fsub fast float 2.000000e+00, %7763
  %7765 = fmul fast float %7763, 9.921875e-01
  %7766 = fmul fast float %7765, %7764
  %7767 = fadd fast float %7766, 3.906250e-03
  %7768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7767, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7769 = extractvalue %dx.types.ResRet.f32 %7768, 0
  %7770 = fsub fast float %7763, %7769
  %7771 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7770)  ; FMax(a,b)
  %7772 = fmul fast float %7279, %7260
  %7773 = call float @dx.op.unary.f32(i32 6, float %7772)  ; FAbs(value)
  %7774 = fcmp fast ogt float %7773, 0x3EB0C6F7A0000000
  br i1 %7774, label %7775, label %7781, !dx.controlflow.hints !145

; <label>:7775                                    ; preds = %7761
  %7776 = fmul fast float %7772, 0xBFF7154760000000
  %7777 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7778 = fsub fast float 1.000000e+00, %7777
  %7779 = fdiv fast float %7778, %7772
  %7780 = fmul fast float %7779, %7289
  br label %7781

; <label>:7781                                    ; preds = %7775, %7761
  %7782 = phi float [ %7780, %7775 ], [ %7289, %7761 ]
  %7783 = fadd fast float %7782, %7291
  %7784 = fmul fast float %7783, %7771
  %7785 = fmul fast float %7276, %7784
  %7786 = fsub fast float -0.000000e+00, %7785
  %7787 = fmul fast float %7277, %7784
  %7788 = fsub fast float -0.000000e+00, %7787
  %7789 = fmul fast float %7278, %7784
  %7790 = fsub fast float -0.000000e+00, %7789
  %7791 = call float @dx.op.unary.f32(i32 21, float %7786)  ; Exp(value)
  %7792 = call float @dx.op.unary.f32(i32 21, float %7788)  ; Exp(value)
  %7793 = call float @dx.op.unary.f32(i32 21, float %7790)  ; Exp(value)
  %7794 = fmul fast float %7305, %7305
  %7795 = fadd fast float %7794, 1.000000e+00
  %7796 = fmul fast float %7795, 0x3FAE8EC8A0000000
  %7797 = fmul fast float %7796, %7286
  %7798 = fmul fast float %7796, %7287
  %7799 = fmul fast float %7796, %7288
  %7800 = fmul fast float %7305, %7284
  %7801 = fsub fast float 1.000000e+00, %7800
  %7802 = fmul fast float %7284, %7284
  %7803 = fsub fast float 1.000000e+00, %7802
  %7804 = fmul fast float %7803, 0x3FB45F3060000000
  %7805 = fmul fast float %7801, %7801
  %7806 = fdiv fast float 1.000000e+00, %7805
  %7807 = fmul fast float %7804, %7806
  %7808 = fmul fast float %7807, %7281
  %7809 = fmul fast float %7807, %7282
  %7810 = fmul fast float %7807, %7283
  %7811 = fadd fast float %7808, %7797
  %7812 = fadd fast float %7809, %7798
  %7813 = fadd fast float %7810, %7799
  %7814 = fsub fast float 1.000000e+00, %7791
  %7815 = fsub fast float 1.000000e+00, %7792
  %7816 = fsub fast float 1.000000e+00, %7793
  %7817 = fmul fast float %7811, %7814
  %7818 = fmul fast float %7812, %7815
  %7819 = fmul fast float %7813, %7816
  br label %7820

; <label>:7820                                    ; preds = %7781, %7732
  %7821 = phi float [ %7758, %7732 ], [ %7817, %7781 ]
  %7822 = phi float [ %7759, %7732 ], [ %7818, %7781 ]
  %7823 = phi float [ %7760, %7732 ], [ %7819, %7781 ]
  %7824 = phi float [ %7747, %7732 ], [ %7791, %7781 ]
  %7825 = phi float [ %7747, %7732 ], [ %7792, %7781 ]
  %7826 = phi float [ %7747, %7732 ], [ %7793, %7781 ]
  br i1 %7313, label %7827, label %8025, !dx.controlflow.hints !146

; <label>:7827                                    ; preds = %7820
  %7828 = extractvalue %dx.types.CBufRet.f32 %7726, 0
  %7829 = fmul fast float %7828, %7728
  %7830 = fsub fast float %7723, %7821
  %7831 = fsub fast float %7724, %7822
  %7832 = fsub fast float %7725, %7823
  %7833 = fmul fast float %7829, %7830
  %7834 = fmul fast float %7829, %7831
  %7835 = fmul fast float %7829, %7832
  %7836 = fadd fast float %7833, %7821
  %7837 = fadd fast float %7834, %7822
  %7838 = fadd fast float %7835, %7823
  %7839 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7824)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7825)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7826)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7722)  ; FMax(a,b)
  %7843 = call float @dx.op.binary.f32(i32 35, float %7721, float %7731)  ; FMax(a,b)
  %7844 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7843)  ; FMax(a,b)
  %7845 = fdiv fast float %7721, %7844
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = fdiv fast float %7731, %7844
  %7848 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7849 = fcmp fast une float %7842, 1.000000e+00
  br i1 %7849, label %7850, label %7863, !dx.controlflow.hints !147

; <label>:7850                                    ; preds = %7827
  %7851 = call float @dx.op.unary.f32(i32 23, float %7842)  ; Log(value)
  %7852 = fmul fast float %7851, 0x3FE62E4300000000
  %7853 = fmul fast float %7723, %7852
  %7854 = fsub fast float -0.000000e+00, %7853
  %7855 = fmul fast float %7724, %7852
  %7856 = fsub fast float -0.000000e+00, %7855
  %7857 = fmul fast float %7725, %7852
  %7858 = fsub fast float -0.000000e+00, %7857
  %7859 = fsub fast float 1.000000e+00, %7842
  %7860 = fdiv fast float %7854, %7859
  %7861 = fdiv fast float %7856, %7859
  %7862 = fdiv fast float %7858, %7859
  br label %7863

; <label>:7863                                    ; preds = %7850, %7827
  %7864 = phi float [ %7860, %7850 ], [ %7723, %7827 ]
  %7865 = phi float [ %7861, %7850 ], [ %7724, %7827 ]
  %7866 = phi float [ %7862, %7850 ], [ %7725, %7827 ]
  %7867 = phi float [ %7852, %7850 ], [ 0.000000e+00, %7827 ]
  %7868 = fcmp fast une float %7839, 1.000000e+00
  br i1 %7868, label %7869, label %7876, !dx.controlflow.hints !148

; <label>:7869                                    ; preds = %7863
  %7870 = call float @dx.op.unary.f32(i32 23, float %7839)  ; Log(value)
  %7871 = fmul fast float %7870, 0x3FE62E4300000000
  %7872 = fmul fast float %7836, %7871
  %7873 = fsub fast float -0.000000e+00, %7872
  %7874 = fsub fast float 1.000000e+00, %7839
  %7875 = fdiv fast float %7873, %7874
  br label %7876

; <label>:7876                                    ; preds = %7869, %7863
  %7877 = phi float [ %7875, %7869 ], [ %7836, %7863 ]
  %7878 = phi float [ %7871, %7869 ], [ 0.000000e+00, %7863 ]
  %7879 = fcmp fast une float %7840, 1.000000e+00
  br i1 %7879, label %7880, label %7887, !dx.controlflow.hints !148

; <label>:7880                                    ; preds = %7876
  %7881 = call float @dx.op.unary.f32(i32 23, float %7840)  ; Log(value)
  %7882 = fmul fast float %7881, 0x3FE62E4300000000
  %7883 = fmul fast float %7837, %7882
  %7884 = fsub fast float -0.000000e+00, %7883
  %7885 = fsub fast float 1.000000e+00, %7840
  %7886 = fdiv fast float %7884, %7885
  br label %7887

; <label>:7887                                    ; preds = %7880, %7876
  %7888 = phi float [ %7886, %7880 ], [ %7837, %7876 ]
  %7889 = phi float [ %7882, %7880 ], [ 0.000000e+00, %7876 ]
  %7890 = fcmp fast une float %7841, 1.000000e+00
  br i1 %7890, label %7891, label %7898, !dx.controlflow.hints !148

; <label>:7891                                    ; preds = %7887
  %7892 = call float @dx.op.unary.f32(i32 23, float %7841)  ; Log(value)
  %7893 = fmul fast float %7892, 0x3FE62E4300000000
  %7894 = fmul fast float %7838, %7893
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fsub fast float 1.000000e+00, %7841
  %7897 = fdiv fast float %7895, %7896
  br label %7898

; <label>:7898                                    ; preds = %7891, %7887
  %7899 = phi float [ %7897, %7891 ], [ %7838, %7887 ]
  %7900 = phi float [ %7893, %7891 ], [ 0.000000e+00, %7887 ]
  %7901 = fmul fast float %7864, %7848
  %7902 = fmul fast float %7865, %7848
  %7903 = fmul fast float %7866, %7848
  %7904 = fmul fast float %7867, %7848
  %7905 = fmul fast float %7877, %7846
  %7906 = fmul fast float %7888, %7846
  %7907 = fmul fast float %7899, %7846
  %7908 = fmul fast float %7878, %7846
  %7909 = fmul fast float %7889, %7846
  %7910 = fmul fast float %7900, %7846
  %7911 = fadd fast float %7905, %7901
  %7912 = fadd fast float %7906, %7902
  %7913 = fadd fast float %7907, %7903
  %7914 = fadd fast float %7908, %7904
  %7915 = fadd fast float %7909, %7904
  %7916 = fadd fast float %7910, %7904
  %7917 = fcmp fast une float %7914, 0.000000e+00
  br i1 %7917, label %7918, label %7925, !dx.controlflow.hints !149

; <label>:7918                                    ; preds = %7898
  %7919 = fmul fast float %7914, 0x3FF7154760000000
  %7920 = call float @dx.op.unary.f32(i32 21, float %7919)  ; Exp(value)
  %7921 = fsub fast float 1.000000e+00, %7920
  %7922 = fmul fast float %7911, %7921
  %7923 = fsub fast float -0.000000e+00, %7922
  %7924 = fdiv fast float %7923, %7914
  br label %7925

; <label>:7925                                    ; preds = %7918, %7898
  %7926 = phi float [ %7920, %7918 ], [ 1.000000e+00, %7898 ]
  %7927 = phi float [ %7924, %7918 ], [ %7911, %7898 ]
  %7928 = fcmp fast une float %7915, 0.000000e+00
  br i1 %7928, label %7929, label %7936, !dx.controlflow.hints !149

; <label>:7929                                    ; preds = %7925
  %7930 = fmul fast float %7915, 0x3FF7154760000000
  %7931 = call float @dx.op.unary.f32(i32 21, float %7930)  ; Exp(value)
  %7932 = fsub fast float 1.000000e+00, %7931
  %7933 = fmul fast float %7912, %7932
  %7934 = fsub fast float -0.000000e+00, %7933
  %7935 = fdiv fast float %7934, %7915
  br label %7936

; <label>:7936                                    ; preds = %7929, %7925
  %7937 = phi float [ %7931, %7929 ], [ 1.000000e+00, %7925 ]
  %7938 = phi float [ %7935, %7929 ], [ %7912, %7925 ]
  %7939 = fcmp fast une float %7916, 0.000000e+00
  br i1 %7939, label %7940, label %7947, !dx.controlflow.hints !149

; <label>:7940                                    ; preds = %7936
  %7941 = fmul fast float %7916, 0x3FF7154760000000
  %7942 = call float @dx.op.unary.f32(i32 21, float %7941)  ; Exp(value)
  %7943 = fsub fast float 1.000000e+00, %7942
  %7944 = fmul fast float %7913, %7943
  %7945 = fsub fast float -0.000000e+00, %7944
  %7946 = fdiv fast float %7945, %7916
  br label %7947

; <label>:7947                                    ; preds = %7940, %7936
  %7948 = phi float [ %7942, %7940 ], [ 1.000000e+00, %7936 ]
  %7949 = phi float [ %7946, %7940 ], [ %7913, %7936 ]
  %7950 = fcmp fast ogt float %7846, %7848
  br i1 %7950, label %7951, label %7971

; <label>:7951                                    ; preds = %7947
  %7952 = fsub fast float 1.000000e+00, %7848
  %7953 = fmul fast float %7864, %7952
  %7954 = fmul fast float %7865, %7952
  %7955 = fmul fast float %7866, %7952
  %7956 = fmul fast float %7867, %7952
  %7957 = fcmp fast une float %7956, 0.000000e+00
  br i1 %7957, label %7958, label %8009, !dx.controlflow.hints !150

; <label>:7958                                    ; preds = %7951
  %7959 = fmul fast float %7956, 0x3FF7154760000000
  %7960 = call float @dx.op.unary.f32(i32 21, float %7959)  ; Exp(value)
  %7961 = fsub fast float 1.000000e+00, %7960
  %7962 = fmul fast float %7953, %7961
  %7963 = fsub fast float -0.000000e+00, %7962
  %7964 = fmul fast float %7954, %7961
  %7965 = fsub fast float -0.000000e+00, %7964
  %7966 = fmul fast float %7955, %7961
  %7967 = fsub fast float -0.000000e+00, %7966
  %7968 = fdiv fast float %7963, %7956
  %7969 = fdiv fast float %7965, %7956
  %7970 = fdiv fast float %7967, %7956
  br label %8009

; <label>:7971                                    ; preds = %7947
  %7972 = fsub fast float 1.000000e+00, %7846
  %7973 = fmul fast float %7877, %7972
  %7974 = fmul fast float %7888, %7972
  %7975 = fmul fast float %7899, %7972
  %7976 = fmul fast float %7878, %7972
  %7977 = fmul fast float %7889, %7972
  %7978 = fmul fast float %7900, %7972
  %7979 = fcmp fast une float %7976, 0.000000e+00
  br i1 %7979, label %7980, label %7987, !dx.controlflow.hints !149

; <label>:7980                                    ; preds = %7971
  %7981 = fmul fast float %7976, 0x3FF7154760000000
  %7982 = call float @dx.op.unary.f32(i32 21, float %7981)  ; Exp(value)
  %7983 = fsub fast float 1.000000e+00, %7982
  %7984 = fmul fast float %7973, %7983
  %7985 = fsub fast float -0.000000e+00, %7984
  %7986 = fdiv fast float %7985, %7976
  br label %7987

; <label>:7987                                    ; preds = %7980, %7971
  %7988 = phi float [ %7986, %7980 ], [ %7973, %7971 ]
  %7989 = phi float [ %7982, %7980 ], [ 1.000000e+00, %7971 ]
  %7990 = fcmp fast une float %7977, 0.000000e+00
  br i1 %7990, label %7991, label %7998, !dx.controlflow.hints !149

; <label>:7991                                    ; preds = %7987
  %7992 = fmul fast float %7977, 0x3FF7154760000000
  %7993 = call float @dx.op.unary.f32(i32 21, float %7992)  ; Exp(value)
  %7994 = fsub fast float 1.000000e+00, %7993
  %7995 = fmul fast float %7974, %7994
  %7996 = fsub fast float -0.000000e+00, %7995
  %7997 = fdiv fast float %7996, %7977
  br label %7998

; <label>:7998                                    ; preds = %7991, %7987
  %7999 = phi float [ %7997, %7991 ], [ %7974, %7987 ]
  %8000 = phi float [ %7993, %7991 ], [ 1.000000e+00, %7987 ]
  %8001 = fcmp fast une float %7978, 0.000000e+00
  br i1 %8001, label %8002, label %8009, !dx.controlflow.hints !149

; <label>:8002                                    ; preds = %7998
  %8003 = fmul fast float %7978, 0x3FF7154760000000
  %8004 = call float @dx.op.unary.f32(i32 21, float %8003)  ; Exp(value)
  %8005 = fsub fast float 1.000000e+00, %8004
  %8006 = fmul fast float %7975, %8005
  %8007 = fsub fast float -0.000000e+00, %8006
  %8008 = fdiv fast float %8007, %7978
  br label %8009

; <label>:8009                                    ; preds = %8002, %7998, %7958, %7951
  %8010 = phi float [ %8008, %8002 ], [ %7970, %7958 ], [ %7955, %7951 ], [ %7975, %7998 ]
  %8011 = phi float [ %7999, %8002 ], [ %7969, %7958 ], [ %7954, %7951 ], [ %7999, %7998 ]
  %8012 = phi float [ %7988, %8002 ], [ %7968, %7958 ], [ %7953, %7951 ], [ %7988, %7998 ]
  %8013 = phi float [ %8004, %8002 ], [ %7960, %7958 ], [ 1.000000e+00, %7951 ], [ 1.000000e+00, %7998 ]
  %8014 = phi float [ %8000, %8002 ], [ %7960, %7958 ], [ 1.000000e+00, %7951 ], [ %8000, %7998 ]
  %8015 = phi float [ %7989, %8002 ], [ %7960, %7958 ], [ 1.000000e+00, %7951 ], [ %7989, %7998 ]
  %8016 = fmul fast float %8015, %7927
  %8017 = fmul fast float %8014, %7938
  %8018 = fmul fast float %8013, %7949
  %8019 = fadd fast float %8016, %8012
  %8020 = fadd fast float %8017, %8011
  %8021 = fadd fast float %8018, %8010
  %8022 = fmul fast float %8015, %7926
  %8023 = fmul fast float %8014, %7937
  %8024 = fmul fast float %8013, %7948
  br label %8025

; <label>:8025                                    ; preds = %8009, %7820
  %8026 = phi float [ %8024, %8009 ], [ %7826, %7820 ]
  %8027 = phi float [ %8023, %8009 ], [ %7825, %7820 ]
  %8028 = phi float [ %8022, %8009 ], [ %7824, %7820 ]
  %8029 = phi float [ %8021, %8009 ], [ %7823, %7820 ]
  %8030 = phi float [ %8020, %8009 ], [ %7822, %7820 ]
  %8031 = phi float [ %8019, %8009 ], [ %7821, %7820 ]
  %8032 = fmul fast float %8031, %6973
  %8033 = fmul fast float %8030, %6975
  %8034 = fmul fast float %8029, %6977
  %8035 = fmul fast float %8028, %7268
  %8036 = call float @dx.op.dot3.f32(i32 55, float %8028, float %8027, float %8026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8037 = call float @dx.op.dot3.f32(i32 55, float %8032, float %8033, float %8034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8038 = select i1 %203, float %8036, float %8028
  %8039 = select i1 %203, float %8036, float %8027
  %8040 = select i1 %203, float 1.000000e+00, float %8026
  %8041 = select i1 %203, float %8037, float %8032
  %8042 = select i1 %203, float 0.000000e+00, float %8033
  %8043 = select i1 %203, float 0.000000e+00, float %8034
  %8044 = fmul fast float %8038, %7262
  %8045 = fmul fast float %8039, %7263
  %8046 = fmul fast float %8040, %7264
  %8047 = fadd fast float %8044, %8041
  %8048 = fadd fast float %8045, %8042
  %8049 = fadd fast float %8043, %8046
  %8050 = fmul fast float %8038, %7265
  %8051 = fmul fast float %8039, %7266
  %8052 = fmul fast float %8040, %7267
  %8053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.i32 %8053, 0
  %8055 = icmp eq i32 %8054, 0
  br i1 %8055, label %8423, label %8056, !dx.controlflow.hints !151

; <label>:8056                                    ; preds = %8025
  %8057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8058 = extractvalue %dx.types.CBufRet.f32 %8057, 2
  %8059 = extractvalue %dx.types.CBufRet.f32 %8057, 3
  %8060 = fmul fast float %8058, %87
  %8061 = fmul fast float %8059, %88
  %8062 = fmul fast float %8060, 2.000000e+00
  %8063 = fmul fast float %8061, 2.000000e+00
  %8064 = fsub fast float 1.000000e+00, %8062
  %8065 = fsub fast float 1.000000e+00, %8063
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 0
  %8068 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8069 = extractvalue %dx.types.CBufRet.f32 %8066, 2
  %8070 = fmul fast float %8064, %8067
  %8071 = fmul fast float %8064, %8068
  %8072 = fmul fast float %8064, %8069
  %8073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.CBufRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.CBufRet.f32 %8073, 2
  %8077 = fmul fast float %8065, %8074
  %8078 = fmul fast float %8065, %8075
  %8079 = fmul fast float %8065, %8076
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.CBufRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.CBufRet.f32 %8080, 2
  %8084 = fadd fast float %8077, %8081
  %8085 = fadd fast float %8084, %8070
  %8086 = fadd fast float %8078, %8082
  %8087 = fadd fast float %8086, %8071
  %8088 = fadd fast float %8079, %8083
  %8089 = fadd fast float %8088, %8072
  %8090 = fmul fast float %8085, %7261
  %8091 = fmul fast float %8087, %7261
  %8092 = fmul fast float %8089, %7261
  %8093 = fmul fast float %8090, %8090
  %8094 = fmul fast float %8091, %8091
  %8095 = fadd fast float %8093, %8094
  %8096 = fmul fast float %8092, %8092
  %8097 = fadd fast float %8095, %8096
  %8098 = call float @dx.op.unary.f32(i32 24, float %8097)  ; Sqrt(value)
  %8099 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %8100 = fsub fast float %8098, %8099
  %8101 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %8102 = fmul fast float %8100, %8101
  %8103 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8104 = fadd fast float %8103, -5.000000e-01
  %8105 = fmul fast float %8104, 2.000000e+00
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8108 = call float @dx.op.binary.f32(i32 36, float %8107, float %8105)  ; FMin(a,b)
  %8109 = fsub fast float -0.000000e+00, %8107
  %8110 = fcmp fast ogt float %8108, %8109
  br i1 %8110, label %8111, label %8423, !dx.controlflow.hints !152

; <label>:8111                                    ; preds = %8056
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8114 = fcmp fast ogt float %8113, 0.000000e+00
  br i1 %8114, label %8115, label %8190, !dx.controlflow.hints !153

; <label>:8115                                    ; preds = %8111
  %8116 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8117 = extractvalue %dx.types.Dimensions %8116, 0
  %8118 = sitofp i32 %8117 to float
  %8119 = extractvalue %dx.types.Dimensions %8116, 1
  %8120 = sitofp i32 %8119 to float
  %8121 = fmul fast float %8060, %8118
  %8122 = fmul fast float %8061, %8120
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 1
  %8125 = fsub fast float -0.000000e+00, %8124
  %8126 = fptoui float %8125 to i32
  %8127 = fptoui float %8121 to i32
  %8128 = fptoui float %8122 to i32
  %8129 = and i32 %8126, 31
  %8130 = lshr i32 %8127, %8129
  %8131 = lshr i32 %8128, %8129
  %8132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8126, i32 %8130, i32 %8131, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8133 = extractvalue %dx.types.ResRet.f32 %8132, 0
  %8134 = fcmp fast olt float %8133, -1.000000e+00
  %8135 = fcmp fast ogt float %8133, -1.000000e+00
  %8136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.f32 %8136, 1
  %8138 = select i1 %8135, float %8137, float 1.000000e+00
  %8139 = fadd fast float %8133, 1.000000e+00
  %8140 = fmul fast float %8138, %8139
  %8141 = call float @dx.op.unary.f32(i32 6, float %8140)  ; FAbs(value)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8136, 3
  %8143 = fcmp fast oge float %8141, %8142
  %8144 = select i1 %8143, float 0x4197782600000000, float %8141
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8149 = select i1 %8134, float %8146, float %8067
  %8150 = select i1 %8134, float %8147, float %8068
  %8151 = select i1 %8134, float %8148, float %8069
  %8152 = fmul fast float %8149, %8064
  %8153 = fmul fast float %8150, %8064
  %8154 = fmul fast float %8151, %8064
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8159 = select i1 %8134, float %8156, float %8074
  %8160 = select i1 %8134, float %8157, float %8075
  %8161 = select i1 %8134, float %8158, float %8076
  %8162 = fmul fast float %8159, %8065
  %8163 = fmul fast float %8160, %8065
  %8164 = fmul fast float %8161, %8065
  %8165 = fadd fast float %8162, %8152
  %8166 = fadd fast float %8163, %8153
  %8167 = fadd fast float %8164, %8154
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = select i1 %8134, float %8169, float %8081
  %8173 = select i1 %8134, float %8170, float %8082
  %8174 = select i1 %8134, float %8171, float %8083
  %8175 = fadd fast float %8165, %8172
  %8176 = fadd fast float %8166, %8173
  %8177 = fadd fast float %8167, %8174
  %8178 = fmul fast float %8175, %8144
  %8179 = fmul fast float %8176, %8144
  %8180 = fmul fast float %8177, %8144
  %8181 = fmul fast float %8178, %8178
  %8182 = fmul fast float %8179, %8179
  %8183 = fadd fast float %8181, %8182
  %8184 = fmul fast float %8180, %8180
  %8185 = fadd fast float %8183, %8184
  %8186 = call float @dx.op.unary.f32(i32 24, float %8185)  ; Sqrt(value)
  %8187 = fsub fast float %8186, %8099
  %8188 = fmul fast float %8187, %8101
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  br label %8190

; <label>:8190                                    ; preds = %8115, %8111
  %8191 = phi float [ %8189, %8115 ], [ 1.000000e+00, %8111 ]
  %8192 = fmul fast float %8108, 5.000000e-01
  %8193 = fadd fast float %8192, 5.000000e-01
  %8194 = call float @dx.op.unary.f32(i32 22, float %8193)  ; Frc(value)
  %8195 = call float @dx.op.unary.f32(i32 27, float %8194)  ; Round_ni(value)
  %8196 = call float @dx.op.unary.f32(i32 22, float %8194)  ; Frc(value)
  %8197 = fmul fast float %8196, 2.000000e+00
  %8198 = fadd fast float %8197, -1.000000e+00
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8060, float %8061, float %8195, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = extractvalue %dx.types.ResRet.f32 %8199, 3
  %8204 = fadd fast float %8200, -5.000000e-01
  %8205 = fadd fast float %8202, -5.000000e-01
  %8206 = fmul fast float %8204, 0xBFD5555560000000
  %8207 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8205, float %8206)  ; FMad(a,b,c)
  %8208 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8201, float 0.000000e+00)  ; FMad(a,b,c)
  %8209 = fadd fast float %8208, %8203
  %8210 = fmul fast float %8204, -7.500000e-01
  %8211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8205, float %8210)  ; FMad(a,b,c)
  %8212 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8201, float 0.000000e+00)  ; FMad(a,b,c)
  %8213 = fadd fast float %8212, %8203
  %8214 = call float @dx.op.binary.f32(i32 35, float %8207, float -1.000000e+00)  ; FMax(a,b)
  %8215 = call float @dx.op.binary.f32(i32 35, float %8209, float -1.000000e+00)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8211, float -1.000000e+00)  ; FMax(a,b)
  %8217 = call float @dx.op.binary.f32(i32 35, float %8213, float -1.000000e+00)  ; FMax(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8214, float 1.000000e+00)  ; FMin(a,b)
  %8219 = call float @dx.op.binary.f32(i32 36, float %8215, float 1.000000e+00)  ; FMin(a,b)
  %8220 = call float @dx.op.binary.f32(i32 36, float %8216, float 1.000000e+00)  ; FMin(a,b)
  %8221 = call float @dx.op.binary.f32(i32 36, float %8217, float 1.000000e+00)  ; FMin(a,b)
  %8222 = fcmp fast olt float %8218, 0x3FEFFF8020000000
  br i1 %8222, label %8223, label %8338, !dx.controlflow.hints !154

; <label>:8223                                    ; preds = %8190
  %8224 = extractvalue %dx.types.CBufRet.f32 %8106, 3
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8225, 3
  %8230 = fsub fast float %8226, %8218
  %8231 = fsub fast float %8227, %8219
  %8232 = fsub fast float %8228, %8220
  %8233 = fsub fast float %8229, %8221
  %8234 = fmul fast float %8230, %8224
  %8235 = fmul fast float %8231, %8224
  %8236 = fmul fast float %8232, %8224
  %8237 = fmul fast float %8233, %8224
  %8238 = fadd fast float %8234, %8218
  %8239 = fadd fast float %8235, %8219
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fadd fast float %8236, %8220
  %8242 = fadd fast float %8237, %8221
  %8243 = fmul fast float %8238, %8238
  %8244 = fsub fast float %8239, %8243
  %8245 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8244)  ; FMax(a,b)
  %8246 = fdiv fast float 1.000000e+00, %8245
  %8247 = fmul fast float %8239, %8238
  %8248 = fsub fast float %8241, %8247
  %8249 = fsub fast float %8198, %8238
  %8250 = fmul fast float %8198, %8198
  %8251 = fsub fast float %8250, %8239
  %8252 = fmul fast float %8249, %8246
  %8253 = fmul fast float %8252, %8248
  %8254 = fsub fast float %8251, %8253
  %8255 = fmul fast float %8239, %8239
  %8256 = fsub fast float %8242, %8255
  %8257 = fmul fast float %8248, %8248
  %8258 = fmul fast float %8257, %8246
  %8259 = fsub fast float %8256, %8258
  %8260 = fdiv fast float %8254, %8259
  %8261 = fmul fast float %8248, %8260
  %8262 = fsub fast float %8249, %8261
  %8263 = fmul fast float %8262, %8246
  %8264 = fmul fast float %8263, %8238
  %8265 = fsub fast float 1.000000e+00, %8264
  %8266 = fmul fast float %8239, %8260
  %8267 = fsub fast float %8265, %8266
  %8268 = fmul fast float %8263, %8263
  %8269 = fmul fast float %8260, 4.000000e+00
  %8270 = fmul fast float %8269, %8267
  %8271 = fsub fast float %8268, %8270
  %8272 = call float @dx.op.unary.f32(i32 24, float %8271)  ; Sqrt(value)
  %8273 = fcmp fast oge float %8263, 0.000000e+00
  %8274 = fsub fast float -0.000000e+00, %8272
  %8275 = select i1 %8273, float %8274, float %8272
  %8276 = fsub fast float %8275, %8263
  %8277 = fdiv fast float %8276, %8260
  %8278 = fdiv fast float %8267, %8276
  %8279 = fmul fast float %8277, 5.000000e-01
  %8280 = fmul fast float %8278, 2.000000e+00
  %8281 = select i1 %8273, float %8279, float %8280
  %8282 = select i1 %8273, float %8280, float %8279
  %8283 = call float @dx.op.binary.f32(i32 35, float %8281, float %8282)  ; FMax(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8281, float %8282)  ; FMin(a,b)
  %8285 = fcmp fast ogt float %8198, %8284
  br i1 %8285, label %8286, label %8296

; <label>:8286                                    ; preds = %8223
  %8287 = fsub fast float %8198, %8284
  %8288 = fsub fast float %8283, %8284
  %8289 = fmul fast float %8287, %8288
  %8290 = fmul fast float %8283, %8198
  %8291 = fadd fast float %8283, %8198
  %8292 = fmul fast float %8291, %8238
  %8293 = fadd fast float %8290, %8239
  %8294 = fsub fast float %8293, %8292
  %8295 = fdiv fast float %8294, %8289
  br label %8296

; <label>:8296                                    ; preds = %8286, %8223
  %8297 = phi float [ %8295, %8286 ], [ 0.000000e+00, %8223 ]
  %8298 = fcmp fast ogt float %8198, %8283
  %8299 = fsub fast float %8198, %8283
  br i1 %8298, label %8300, label %8310

; <label>:8300                                    ; preds = %8296
  %8301 = fsub fast float %8283, %8284
  %8302 = fmul fast float %8301, %8299
  %8303 = fmul fast float %8284, %8198
  %8304 = fadd fast float %8284, %8198
  %8305 = fmul fast float %8304, %8238
  %8306 = fsub fast float %8240, %8303
  %8307 = fadd fast float %8306, %8305
  %8308 = fdiv fast float %8307, %8302
  %8309 = fadd fast float %8308, %8297
  br label %8310

; <label>:8310                                    ; preds = %8300, %8296
  %8311 = phi float [ %8309, %8300 ], [ %8297, %8296 ]
  %8312 = fsub fast float %8198, %8284
  %8313 = fmul fast float %8312, %8299
  %8314 = fmul fast float %8284, %8283
  %8315 = fadd fast float %8284, %8283
  %8316 = fmul fast float %8315, %8238
  %8317 = fadd fast float %8314, %8239
  %8318 = fsub fast float %8317, %8316
  %8319 = fdiv fast float %8318, %8313
  %8320 = call float @dx.op.unary.f32(i32 7, float %8311)  ; Saturate(value)
  %8321 = fcmp fast oeq float %6989, 0.000000e+00
  %8322 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8323 = fcmp fast oeq float %8322, 0.000000e+00
  %8324 = or i1 %8321, %8323
  %8325 = fmul fast float %8322, 2.000000e+00
  %8326 = fadd fast float %8107, %8108
  %8327 = fdiv fast float %8326, %8325
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = fmul fast float %8328, 2.000000e+00
  %8330 = fsub fast float 3.000000e+00, %8329
  %8331 = fmul fast float %8328, %8328
  %8332 = fmul fast float %8331, %8330
  %8333 = select i1 %8324, float 1.000000e+00, float %8332
  %8334 = fmul fast float %8319, %6989
  %8335 = fadd fast float %8320, %8334
  %8336 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8337 = fmul fast float %8333, %8336
  br label %8338

; <label>:8338                                    ; preds = %8310, %8190
  %8339 = phi float [ %8337, %8310 ], [ 0.000000e+00, %8190 ]
  %8340 = fsub fast float 1.000000e+00, %8339
  %8341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8060, float %8061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8342 = extractvalue %dx.types.ResRet.f32 %8341, 0
  %8343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.i32 %8343, 2
  %8345 = icmp eq i32 %8344, 0
  br i1 %8345, label %8351, label %8346

; <label>:8346                                    ; preds = %8338
  %8347 = call float @dx.op.unary.f32(i32 7, float %8339)  ; Saturate(value)
  %8348 = fadd fast float %8342, -1.000000e+00
  %8349 = fmul fast float %8347, %8348
  %8350 = fadd fast float %8349, 1.000000e+00
  br label %8351

; <label>:8351                                    ; preds = %8346, %8338
  %8352 = phi float [ %8350, %8346 ], [ %8340, %8338 ]
  br i1 %8114, label %8353, label %8371

; <label>:8353                                    ; preds = %8351
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8356 = fsub fast float %8191, %8355
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fsub fast float %8191, %8113
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fsub fast float %8357, %8359
  %8361 = fsub fast float %8193, %8359
  %8362 = fdiv fast float %8361, %8360
  %8363 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8364 = fmul fast float %8363, 2.000000e+00
  %8365 = fsub fast float 3.000000e+00, %8364
  %8366 = fsub fast float %8342, %8352
  %8367 = fmul fast float %8363, %8363
  %8368 = fmul fast float %8367, %8366
  %8369 = fmul fast float %8368, %8365
  %8370 = fadd fast float %8369, %8352
  br label %8371

; <label>:8371                                    ; preds = %8353, %8351
  %8372 = phi float [ %8370, %8353 ], [ %8352, %8351 ]
  %8373 = call float @dx.op.binary.f32(i32 35, float %8342, float %8372)  ; FMax(a,b)
  %8374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.i32 %8374, 2
  %8376 = and i32 %8375, 1
  %8377 = icmp eq i32 %8376, 0
  %8378 = fcmp fast une float %8373, 1.000000e+00
  %8379 = and i1 %8378, %8377
  br i1 %8379, label %8380, label %8399

; <label>:8380                                    ; preds = %8371
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8060, float %8061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 1
  %8387 = fmul fast float %8386, %8382
  %8388 = fmul fast float %8386, %8383
  %8389 = fmul fast float %8386, %8384
  %8390 = fcmp fast ogt float %8342, 0x3FEFFF2E40000000
  %8391 = fsub fast float 1.000000e+00, %8373
  %8392 = fsub fast float 1.000000e+00, %8342
  %8393 = fdiv fast float %8391, %8392
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = select i1 %8390, float 0.000000e+00, float %8394
  %8396 = fmul fast float %8387, %8395
  %8397 = fmul fast float %8388, %8395
  %8398 = fmul fast float %8389, %8395
  br label %8399

; <label>:8399                                    ; preds = %8380, %8371
  %8400 = phi float [ 0.000000e+00, %8371 ], [ %8396, %8380 ]
  %8401 = phi float [ 0.000000e+00, %8371 ], [ %8397, %8380 ]
  %8402 = phi float [ 0.000000e+00, %8371 ], [ %8398, %8380 ]
  %8403 = fmul fast float %8400, %6973
  %8404 = fmul fast float %8401, %6975
  %8405 = fmul fast float %8402, %6977
  %8406 = fmul fast float %8373, %8035
  %8407 = call float @dx.op.dot3.f32(i32 55, float %8373, float %8373, float %8373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8408 = call float @dx.op.dot3.f32(i32 55, float %8403, float %8404, float %8405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8409 = select i1 %203, float %8407, float %8373
  %8410 = select i1 %203, float 1.000000e+00, float %8373
  %8411 = select i1 %203, float %8408, float %8403
  %8412 = select i1 %203, float 0.000000e+00, float %8404
  %8413 = select i1 %203, float 0.000000e+00, float %8405
  %8414 = fmul fast float %8409, %8047
  %8415 = fmul fast float %8409, %8048
  %8416 = fmul fast float %8410, %8049
  %8417 = fadd fast float %8414, %8411
  %8418 = fadd fast float %8415, %8412
  %8419 = fadd fast float %8413, %8416
  %8420 = fmul fast float %8409, %8050
  %8421 = fmul fast float %8409, %8051
  %8422 = fmul fast float %8410, %8052
  br label %8423

; <label>:8423                                    ; preds = %8399, %8056, %8025, %7257
  %8424 = phi float [ %7262, %7257 ], [ %8047, %8025 ], [ %8417, %8399 ], [ %8047, %8056 ]
  %8425 = phi float [ %7263, %7257 ], [ %8048, %8025 ], [ %8418, %8399 ], [ %8048, %8056 ]
  %8426 = phi float [ %7264, %7257 ], [ %8049, %8025 ], [ %8419, %8399 ], [ %8049, %8056 ]
  %8427 = phi float [ %7265, %7257 ], [ %8050, %8025 ], [ %8420, %8399 ], [ %8050, %8056 ]
  %8428 = phi float [ %7266, %7257 ], [ %8051, %8025 ], [ %8421, %8399 ], [ %8051, %8056 ]
  %8429 = phi float [ %7267, %7257 ], [ %8052, %8025 ], [ %8422, %8399 ], [ %8052, %8056 ]
  %8430 = phi float [ %7268, %7257 ], [ %8035, %8025 ], [ %8406, %8399 ], [ %8035, %8056 ]
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 3
  %8434 = fmul fast float %8432, %87
  %8435 = fmul fast float %8433, %88
  %8436 = call float @dx.op.unary.f32(i32 7, float %8434)  ; Saturate(value)
  %8437 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8438 = select i1 %6999, i32 2, i32 0
  %8439 = or i32 %8438, 1
  %8440 = uitofp i32 %8439 to float
  %8441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8436, float %8437, float %8440, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.ResRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.ResRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.ResRet.f32 %8441, 3
  %8446 = add nuw nsw i32 %8438, 2
  %8447 = uitofp i32 %8446 to float
  %8448 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8436, float %8437, float %8447, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8449 = extractvalue %dx.types.ResRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.ResRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.ResRet.f32 %8448, 2
  %8452 = extractvalue %dx.types.ResRet.f32 %8448, 3
  %8453 = call float @dx.op.binary.f32(i32 35, float %8443, float %8444)  ; FMax(a,b)
  %8454 = call float @dx.op.binary.f32(i32 35, float %8442, float %8453)  ; FMax(a,b)
  %8455 = call float @dx.op.binary.f32(i32 35, float %8454, float %8445)  ; FMax(a,b)
  %8456 = call float @dx.op.binary.f32(i32 36, float %8450, float %8451)  ; FMin(a,b)
  %8457 = call float @dx.op.binary.f32(i32 36, float %8449, float %8456)  ; FMin(a,b)
  %8458 = call float @dx.op.binary.f32(i32 36, float %8457, float %8452)  ; FMin(a,b)
  %8459 = fmul fast float %8455, 2.550000e+02
  %8460 = fadd fast float %8459, 0x3F70101020000000
  %8461 = fptoui float %8460 to i32
  %8462 = fmul fast float %8458, 2.550000e+02
  %8463 = fadd fast float %8462, 0x3F70101020000000
  %8464 = fptoui float %8463 to i32
  %8465 = icmp ult i32 %8461, %8464
  br i1 %8465, label %8466, label %8635

; <label>:8466                                    ; preds = %8423
  %8467 = fcmp fast ogt float %77, 9.843750e-01
  %8468 = fadd fast float %7261, -4.000000e+00
  %8469 = select i1 %8467, float -4.000000e+00, float %8468
  %8470 = call float @dx.op.binary.f32(i32 35, float %8469, float 0.000000e+00)  ; FMax(a,b)
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 0
  %8473 = fadd fast float %8472, %8470
  %8474 = extractvalue %dx.types.CBufRet.f32 %8471, 2
  %8475 = fmul fast float %8473, %8474
  %8476 = call float @dx.op.unary.f32(i32 23, float %8475)  ; Log(value)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8471, 3
  %8478 = fmul fast float %8477, %8476
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 2
  %8481 = fmul fast float %8478, %8480
  %8482 = call float @dx.op.unary.f32(i32 7, float %8481)  ; Saturate(value)
  %8483 = uitofp i32 %8461 to float
  %8484 = uitofp i32 %8464 to float
  %8485 = fadd fast float %8483, 5.000000e-01
  %8486 = fadd fast float %8484, 5.000000e-01
  %8487 = fmul fast float %8480, %8485
  %8488 = fmul fast float %8480, %8486
  %8489 = fadd fast float %8487, 0x3F0FFB4800000000
  %8490 = fadd fast float %8488, 0xBF0FFB4800000000
  %8491 = call float @dx.op.binary.f32(i32 35, float %8482, float %8489)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 36, float %8491, float %8490)  ; FMin(a,b)
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8493, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8497 = select i1 %6999, float %8496, float 0.000000e+00
  %8498 = fmul fast float %8494, %8492
  %8499 = fadd fast float %8497, %8498
  %8500 = fadd fast float %8497, %8495
  %8501 = fsub fast float %8494, %8495
  %8502 = fadd fast float %8501, %8497
  %8503 = call float @dx.op.binary.f32(i32 35, float %8499, float %8500)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8503, float %8502)  ; FMin(a,b)
  %8505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8436, float %8437, float %8504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8506 = extractvalue %dx.types.ResRet.f32 %8505, 0
  %8507 = extractvalue %dx.types.ResRet.f32 %8505, 1
  %8508 = extractvalue %dx.types.ResRet.f32 %8505, 2
  %8509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.i32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.i32 %8509, 1
  %8512 = uitofp i32 %8510 to float
  %8513 = uitofp i32 %8511 to float
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 0
  %8516 = extractvalue %dx.types.CBufRet.f32 %8514, 1
  %8517 = fmul fast float %8512, %8436
  %8518 = fmul fast float %8513, %8437
  %8519 = fadd fast float %8517, -5.000000e-01
  %8520 = fadd fast float %8518, -5.000000e-01
  %8521 = call float @dx.op.unary.f32(i32 22, float %8519)  ; Frc(value)
  %8522 = call float @dx.op.unary.f32(i32 22, float %8520)  ; Frc(value)
  %8523 = fmul fast float %8521, %8521
  %8524 = fmul fast float %8523, %8521
  %8525 = fsub fast float 3.000000e+00, %8521
  %8526 = fmul fast float %8523, %8525
  %8527 = fmul fast float %8521, 3.000000e+00
  %8528 = fmul fast float %8524, 3.000000e+00
  %8529 = fmul fast float %8523, 6.000000e+00
  %8530 = fsub fast float %8528, %8529
  %8531 = fadd fast float %8530, 4.000000e+00
  %8532 = fmul fast float %8531, 0x3FC5555560000000
  %8533 = fmul fast float %8524, -3.000000e+00
  %8534 = fadd fast float %8523, %8521
  %8535 = fmul fast float %8534, 3.000000e+00
  %8536 = fadd fast float %8533, 1.000000e+00
  %8537 = fadd fast float %8536, %8535
  %8538 = fmul fast float %8524, 0x3FC5555560000000
  %8539 = fmul fast float %8522, %8522
  %8540 = fmul fast float %8539, %8522
  %8541 = fsub fast float 3.000000e+00, %8522
  %8542 = fmul fast float %8539, %8541
  %8543 = fmul fast float %8522, 3.000000e+00
  %8544 = fmul fast float %8540, 3.000000e+00
  %8545 = fmul fast float %8539, 6.000000e+00
  %8546 = fsub fast float %8544, %8545
  %8547 = fadd fast float %8546, 4.000000e+00
  %8548 = fmul fast float %8547, 0x3FC5555560000000
  %8549 = fmul fast float %8540, -3.000000e+00
  %8550 = fadd fast float %8539, %8522
  %8551 = fmul fast float %8550, 3.000000e+00
  %8552 = fadd fast float %8549, 1.000000e+00
  %8553 = fadd fast float %8552, %8551
  %8554 = fmul fast float %8540, 0x3FC5555560000000
  %8555 = fadd fast float %8521, 1.000000e+00
  %8556 = fsub fast float 1.000000e+00, %8527
  %8557 = fadd fast float %8556, %8526
  %8558 = fadd fast float %8557, %8531
  %8559 = fmul fast float %8558, 0x3FC5555560000000
  %8560 = fdiv fast float %8532, %8559
  %8561 = fsub fast float %8555, %8560
  %8562 = fsub fast float 1.000000e+00, %8521
  %8563 = fadd fast float %8537, %8524
  %8564 = fmul fast float %8563, 0x3FC5555560000000
  %8565 = fdiv fast float %8538, %8564
  %8566 = fadd fast float %8562, %8565
  %8567 = fadd fast float %8522, 1.000000e+00
  %8568 = fsub fast float 1.000000e+00, %8543
  %8569 = fadd fast float %8568, %8542
  %8570 = fadd fast float %8569, %8547
  %8571 = fmul fast float %8570, 0x3FC5555560000000
  %8572 = fdiv fast float %8548, %8571
  %8573 = fsub fast float %8567, %8572
  %8574 = fsub fast float 1.000000e+00, %8522
  %8575 = fadd fast float %8553, %8540
  %8576 = fmul fast float %8575, 0x3FC5555560000000
  %8577 = fdiv fast float %8554, %8576
  %8578 = fadd fast float %8577, %8574
  %8579 = fmul fast float %8561, %8515
  %8580 = fsub fast float %8436, %8579
  %8581 = fmul fast float %8566, %8515
  %8582 = fadd fast float %8581, %8436
  %8583 = fmul fast float %8578, %8516
  %8584 = fadd fast float %8583, %8437
  %8585 = fmul fast float %8573, %8516
  %8586 = fsub fast float %8437, %8585
  %8587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8580, float %8586, float %8504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8588 = extractvalue %dx.types.ResRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.ResRet.f32 %8587, 1
  %8590 = extractvalue %dx.types.ResRet.f32 %8587, 2
  %8591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8582, float %8586, float %8504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8592 = extractvalue %dx.types.ResRet.f32 %8591, 0
  %8593 = extractvalue %dx.types.ResRet.f32 %8591, 1
  %8594 = extractvalue %dx.types.ResRet.f32 %8591, 2
  %8595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8580, float %8584, float %8504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8596 = extractvalue %dx.types.ResRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.ResRet.f32 %8595, 1
  %8598 = extractvalue %dx.types.ResRet.f32 %8595, 2
  %8599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8582, float %8584, float %8504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8600 = extractvalue %dx.types.ResRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.ResRet.f32 %8599, 1
  %8602 = extractvalue %dx.types.ResRet.f32 %8599, 2
  %8603 = fsub fast float %8596, %8588
  %8604 = fsub fast float %8597, %8589
  %8605 = fsub fast float %8598, %8590
  %8606 = fmul fast float %8603, %8576
  %8607 = fmul fast float %8604, %8576
  %8608 = fmul fast float %8605, %8576
  %8609 = fadd fast float %8606, %8588
  %8610 = fadd fast float %8607, %8589
  %8611 = fadd fast float %8608, %8590
  %8612 = fsub fast float %8600, %8592
  %8613 = fsub fast float %8601, %8593
  %8614 = fsub fast float %8602, %8594
  %8615 = fmul fast float %8612, %8576
  %8616 = fmul fast float %8613, %8576
  %8617 = fmul fast float %8614, %8576
  %8618 = fsub fast float %8592, %8609
  %8619 = fadd fast float %8618, %8615
  %8620 = fsub fast float %8593, %8610
  %8621 = fadd fast float %8620, %8616
  %8622 = fsub fast float %8594, %8611
  %8623 = fadd fast float %8622, %8617
  %8624 = fmul fast float %8619, %8564
  %8625 = fmul fast float %8621, %8564
  %8626 = fmul fast float %8623, %8564
  %8627 = fadd fast float %8624, %8609
  %8628 = fadd fast float %8625, %8610
  %8629 = fadd fast float %8626, %8611
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8632 = fmul fast float %8627, %8631
  %8633 = fmul fast float %8628, %8631
  %8634 = fmul fast float %8629, %8631
  br label %8635

; <label>:8635                                    ; preds = %8466, %8423
  %8636 = phi float [ %8506, %8466 ], [ 1.000000e+00, %8423 ]
  %8637 = phi float [ %8507, %8466 ], [ 1.000000e+00, %8423 ]
  %8638 = phi float [ %8508, %8466 ], [ 1.000000e+00, %8423 ]
  %8639 = phi float [ %8632, %8466 ], [ 0.000000e+00, %8423 ]
  %8640 = phi float [ %8633, %8466 ], [ 0.000000e+00, %8423 ]
  %8641 = phi float [ %8634, %8466 ], [ 0.000000e+00, %8423 ]
  %8642 = fmul fast float %8639, %6973
  %8643 = fmul fast float %8640, %6975
  %8644 = fmul fast float %8641, %6977
  %8645 = fmul fast float %8636, %8430
  %8646 = call float @dx.op.dot3.f32(i32 55, float %8636, float %8637, float %8638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8647 = call float @dx.op.dot3.f32(i32 55, float %8642, float %8643, float %8644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8648 = select i1 %203, float %8646, float %8636
  %8649 = select i1 %203, float %8646, float %8637
  %8650 = select i1 %203, float 1.000000e+00, float %8638
  %8651 = select i1 %203, float %8647, float %8642
  %8652 = select i1 %203, float 0.000000e+00, float %8643
  %8653 = select i1 %203, float 0.000000e+00, float %8644
  %8654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.i32 %8654, 3
  %8656 = and i32 %8655, 3
  %8657 = icmp ne i32 %8656, 0
  %8658 = and i32 %8655, 4
  %8659 = icmp ne i32 %8658, 0
  %8660 = and i1 %8657, %8659
  %8661 = and i1 %203, %8660
  br i1 %8661, label %8662, label %8668

; <label>:8662                                    ; preds = %8635
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8665 = fadd fast float %8645, -1.000000e+00
  %8666 = fmul fast float %8664, %8665
  %8667 = fadd fast float %8666, 1.000000e+00
  br label %8668

; <label>:8668                                    ; preds = %8662, %8635
  %8669 = phi float [ %8667, %8662 ], [ %8645, %8635 ]
  %8670 = fadd fast float %8427, %8424
  %8671 = fmul fast float %8648, %8670
  %8672 = fadd fast float %8671, %8651
  %8673 = fadd fast float %8428, %8425
  %8674 = fmul fast float %8649, %8673
  %8675 = fadd fast float %8674, %8652
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  br i1 %203, label %8678, label %8693

; <label>:8678                                    ; preds = %8668
  %8679 = fadd fast float %8672, %8675
  %8680 = fmul fast float %8677, %8679
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 3
  %8683 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %8684 = fsub fast float %6986, %6980
  %8685 = fadd fast float %8684, %6987
  %8686 = fsub fast float %8685, %8683
  %8687 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %8688 = fmul fast float %8686, %8687
  %8689 = call float @dx.op.unary.f32(i32 7, float %8688)  ; Saturate(value)
  %8690 = fsub fast float %8689, %8682
  %8691 = fmul fast float %8690, %8669
  %8692 = fadd fast float %8691, %8682
  br label %8719

; <label>:8693                                    ; preds = %8668
  %8694 = fadd fast float %8429, %8426
  %8695 = fmul fast float %8650, %8694
  %8696 = fadd fast float %8695, %8653
  %8697 = fmul fast float %8677, %8672
  %8698 = fmul fast float %8677, %8675
  %8699 = fmul fast float %8677, %8696
  %8700 = call float @dx.op.binary.f32(i32 35, float %8698, float %8699)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8697, float %8700)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %6975, float %6977)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 35, float %6973, float %8702)  ; FMax(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8701, float %8703)  ; FMax(a,b)
  %8705 = fcmp fast ugt float %8704, 0x3F10000000000000
  br i1 %8705, label %8707, label %8706

; <label>:8706                                    ; preds = %8693
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8707

; <label>:8707                                    ; preds = %8706, %8693
  %8708 = add i32 %41, 356
  %8709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8708, i32 undef)  ; BufferLoad(srv,index,wot)
  %8710 = extractvalue %dx.types.ResRet.i32 %8709, 0
  %8711 = and i32 %8710, 32
  %8712 = icmp eq i32 %8711, 0
  br i1 %8712, label %8719, label %8713

; <label>:8713                                    ; preds = %8707
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 0
  %8716 = fmul fast float %8715, 0x3FE99999A0000000
  %8717 = fadd fast float %8715, %8697
  %8718 = fadd fast float %8716, %8699
  br label %8719

; <label>:8719                                    ; preds = %8713, %8707, %8678
  %8720 = phi float [ 1.000000e+00, %8678 ], [ %6975, %8713 ], [ %6975, %8707 ]
  %8721 = phi float [ 1.000000e+00, %8678 ], [ %6977, %8713 ], [ %6977, %8707 ]
  %8722 = phi float [ %8680, %8678 ], [ %8717, %8713 ], [ %8697, %8707 ]
  %8723 = phi float [ %8692, %8678 ], [ %8698, %8713 ], [ %8698, %8707 ]
  %8724 = phi float [ 1.000000e+00, %8678 ], [ %8718, %8713 ], [ %8699, %8707 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8722, float 3.225500e+04)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8723, float 3.225500e+04)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8724, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8728 = call float @dx.op.binary.f32(i32 36, float %6973, float 3.225500e+04)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8720, float 3.225500e+04)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8721, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8728)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8730)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 5}
!25 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
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
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!46 = !{!47, !48, !49, !50, !51, !52, !53}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!54 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !79}
!56 = !{!57, !75, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !72, !74}
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
!70 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 2, i32 8, i8 0, !63}
!71 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 9, i8 0, !60}
!72 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !59, i8 1, i32 1, i8 4, i32 10, i8 0, !73}
!73 = !{i32 3, i32 13}
!74 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76, !77}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!77 = !{i32 1, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 1, i8 0, !60}
!78 = !{i32 1}
!79 = !{i32 0, i64 16}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !92, !94, !96}
!90 = distinct !{!90, !91, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!91 = distinct !{!91, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!92 = distinct !{!92, !93, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!93 = distinct !{!93, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!94 = distinct !{!94, !95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!95 = distinct !{!95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!96 = distinct !{!96, !97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!97 = distinct !{!97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"float", !87, i64 0}
!108 = !{!109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!109 = distinct !{!109, !110, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!110 = distinct !{!110, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!111 = distinct !{!111, !112, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!112 = distinct !{!112, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!113 = distinct !{!113, !112, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!114 = distinct !{!114, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!115 = distinct !{!115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!116 = distinct !{!116, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!117 = distinct !{!117, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!123 = distinct !{!123, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!132 = !{!128}
!133 = !{!129, !125, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!134 = !{!135}
!135 = distinct !{!135, !136, !"\01?sort@@YAXAIAM00@Z: %c"}
!136 = distinct !{!136, !"\01?sort@@YAXAIAM00@Z"}
!137 = !{!138, !139, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!138 = distinct !{!138, !136, !"\01?sort@@YAXAIAM00@Z: %a"}
!139 = distinct !{!139, !136, !"\01?sort@@YAXAIAM00@Z: %b"}
!140 = !{!139}
!141 = !{!138, !135, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!142 = !{!138}
!143 = !{!139, !135, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}

