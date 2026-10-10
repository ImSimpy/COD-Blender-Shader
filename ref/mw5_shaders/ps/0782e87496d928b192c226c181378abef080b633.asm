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
; shader hash: 7d231ec6243c65bc80cfadfeaf35427a
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
  %145 = add i32 %41, 360
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = extractvalue %dx.types.ResRet.i32 %146, 1
  %149 = extractvalue %dx.types.ResRet.i32 %146, 2
  %150 = extractvalue %dx.types.ResRet.i32 %146, 3
  %151 = bitcast i32 %147 to float
  %152 = bitcast i32 %148 to float
  %153 = bitcast i32 %149 to float
  %154 = bitcast i32 %150 to float
  %155 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = call float @dx.op.unary.f32(i32 25, float %155)  ; Rsqrt(value)
  %157 = fmul fast float %156, %94
  %158 = fmul fast float %156, %95
  %159 = fmul fast float %156, %96
  %160 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %161 = call float @dx.op.unary.f32(i32 25, float %160)  ; Rsqrt(value)
  %162 = fmul fast float %161, %142
  %163 = fmul fast float %161, %143
  %164 = fmul fast float %161, %144
  %165 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %166 = fmul fast float %165, %165
  %167 = fmul fast float %166, %153
  %168 = fadd fast float %167, %154
  %169 = call float @dx.op.unary.f32(i32 7, float %168)  ; Saturate(value)
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %172 = fmul fast float %171, %160
  %173 = fsub fast float %151, %172
  %174 = fmul fast float %173, %152
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fmul fast float %175, %169
  %177 = fmul fast float %87, 5.000000e-01
  %178 = fmul fast float %88, 5.000000e-01
  %179 = fptosi float %177 to i32
  %180 = fptosi float %178 to i32
  %181 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %179, i32 %180, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = lshr i32 %182, 18
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F4C00EBA0000000
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fadd fast float %186, -1.000000e+00
  %188 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %189 = extractvalue %dx.types.Dimensions %188, 0
  %190 = sitofp i32 %189 to float
  %191 = extractvalue %dx.types.Dimensions %188, 1
  %192 = sitofp i32 %191 to float
  %193 = fcmp fast oge float %177, %190
  %194 = fcmp fast oge float %178, %192
  %195 = or i1 %193, %194
  %196 = select i1 %195, float 0x4197782600000000, float %187
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %200 = fmul fast float %198, %87
  %201 = fmul fast float %199, %88
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 114688
  %205 = icmp ne i32 %204, 0
  %206 = select i1 %205, float %200, float 0.000000e+00
  %207 = select i1 %205, float %201, float 0.000000e+00
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fmul fast float %209, 2.550000e+02
  %211 = fptoui float %210 to i32
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.i32 %213, 3
  %215 = and i32 %214, 3
  %216 = icmp ne i32 %215, 0
  %217 = and i32 %214, 4
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %216, %218
  br i1 %219, label %220, label %231

; <label>:220                                     ; preds = %0
  %221 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %222 = fmul fast float %221, %88
  %223 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %224 = fmul fast float %223, %87
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %224, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float 1.000000e+00, %226
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = fcmp fast olt float %227, %229
  br label %234

; <label>:231                                     ; preds = %0
  %232 = icmp eq i32 %217, 0
  %233 = and i1 %216, %232
  br label %234

; <label>:234                                     ; preds = %231, %220
  %235 = phi i1 [ %230, %220 ], [ %233, %231 ]
  %236 = add i32 %41, 156
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = shl i32 %238, 4
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %238, 7
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 22
  %246 = shl nuw nsw i32 %245, 5
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %41, 216
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %250, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %250, 16
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = add i32 %41, 36
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %41, 288
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %273, 0x3F50624DE0000000
  %277 = fmul fast float %275, 0x3F50624DE0000000
  %278 = add i32 %41, 172
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = shl i32 %280, 4
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %280, 7
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 22
  %288 = shl nuw nsw i32 %287, 5
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %41, 232
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %41, 52
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %41, 304
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = add i32 %41, 188
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %41, 248
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %41, 68
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %41, 320
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = fmul fast float %357, 0x3F50624DE0000000
  %361 = fmul fast float %359, 0x3F50624DE0000000
  %362 = add i32 %41, 204
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = shl i32 %364, 4
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %364, 7
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %364, 22
  %372 = shl nuw nsw i32 %371, 5
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %41, 264
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %376, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %376, 16
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = add i32 %41, 84
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = add i32 %41, 336
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = fmul fast float %399, 0x3F50624DE0000000
  %403 = fmul fast float %401, 0x3F50624DE0000000
  %404 = add i32 %41, 348
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 32
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %406, 64
  %410 = icmp eq i32 %409, 0
  %411 = and i32 %406, 128
  %412 = icmp eq i32 %411, 0
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %432, label %417

; <label>:417                                     ; preds = %234
  %418 = add i32 %41, 536
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = add i32 %420, 0
  %422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %422, %dx.types.Handle %84, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = fmul fast float %427, %71
  %429 = fmul fast float %424, %72
  %430 = fmul fast float %425, %73
  %431 = fmul fast float %426, %74
  br label %432

; <label>:432                                     ; preds = %417, %234
  %433 = phi float [ %74, %234 ], [ %431, %417 ]
  %434 = phi float [ %73, %234 ], [ %430, %417 ]
  %435 = phi float [ %72, %234 ], [ %429, %417 ]
  %436 = phi float [ %71, %234 ], [ %428, %417 ]
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 2
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %460, label %441

; <label>:441                                     ; preds = %432
  %442 = add i32 %41, 44
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %435, float 1.000000e+00
  %448 = add i32 %41, 60
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %434, float 1.000000e+00
  %454 = add i32 %41, 76
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 1
  %458 = icmp ne i32 %457, 0
  %459 = select i1 %458, float %433, float 1.000000e+00
  br label %460

; <label>:460                                     ; preds = %441, %432
  %461 = phi float [ %433, %432 ], [ %459, %441 ]
  %462 = phi float [ %434, %432 ], [ %453, %441 ]
  %463 = phi float [ %435, %432 ], [ %447, %441 ]
  %464 = lshr i32 %438, 20
  %465 = and i32 %464, 3
  %466 = add nuw nsw i32 %465, 1
  %467 = add i32 %41, 24
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = add i32 %41, 28
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = or i32 %472, %469
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %1235, label %475

; <label>:475                                     ; preds = %460
  %476 = and i32 %469, 262144
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %44, float 1.000000e+00
  %479 = select i1 %477, float %45, float 0.000000e+00
  %480 = select i1 %477, float %46, float 0.000000e+00
  %481 = select i1 %477, float %47, float 1.000000e+00
  %482 = select i1 %477, float %48, float %69
  %483 = select i1 %477, float %49, float %70
  %484 = add i32 %41, 284
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = fmul fast float %488, 0x3F50624DE0000000
  %490 = add i32 %41, 88
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = lshr i32 %492, 16
  %494 = and i32 %493, 255
  %495 = lshr i32 %492, 24
  %496 = add i32 %41, 292
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 65535
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %498, 16
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = add i32 %41, 32
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = shl i32 %505, 4
  %510 = and i32 %509, 32752
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = lshr i32 %505, 7
  %513 = and i32 %512, 32752
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %517 = fmul fast float %516, 1.000000e+03
  %518 = fmul fast float %276, %517
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fadd fast float %519, %266
  %521 = fmul fast float %277, %517
  %522 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %523 = fadd fast float %522, %268
  %524 = fmul fast float %489, %517
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = fmul fast float %525, 0x401921FB60000000
  %527 = fadd fast float %526, %508
  %528 = call float @dx.op.unary.f32(i32 13, float %527)  ; Sin(value)
  %529 = call float @dx.op.unary.f32(i32 12, float %527)  ; Cos(value)
  %530 = fsub fast float -0.000000e+00, %528
  %531 = fadd fast float %482, -5.000000e-01
  %532 = fadd fast float %483, -5.000000e-01
  %533 = fmul fast float %500, %531
  %534 = fmul fast float %502, %532
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fadd fast float %534, 5.000000e-01
  %537 = fmul fast float %511, %535
  %538 = fmul fast float %514, %536
  %539 = fmul fast float %529, %537
  %540 = call float @dx.op.tertiary.f32(i32 46, float %530, float %538, float %539)  ; FMad(a,b,c)
  %541 = fmul fast float %528, %537
  %542 = call float @dx.op.tertiary.f32(i32 46, float %529, float %538, float %541)  ; FMad(a,b,c)
  %543 = fadd fast float %520, %540
  %544 = fadd fast float %523, %542
  %545 = icmp ugt i32 %494, 1
  %546 = icmp ugt i32 %492, 33554431
  %547 = or i1 %546, %545
  br i1 %547, label %548, label %573

; <label>:548                                     ; preds = %475
  %549 = add i32 %41, 228
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = lshr i32 %551, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = fmul fast float %516, %553
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = mul nuw nsw i32 %494, %495
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %555, %557
  %559 = call float @dx.op.unary.f32(i32 27, float %558)  ; Round_ni(value)
  %560 = fptoui float %559 to i32
  %561 = urem i32 %560, %494
  %562 = udiv i32 %560, %495
  %563 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %564 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %565 = uitofp i32 %561 to float
  %566 = uitofp i32 %562 to float
  %567 = fadd fast float %563, %565
  %568 = fadd fast float %564, %566
  %569 = uitofp i32 %494 to float
  %570 = uitofp i32 %495 to float
  %571 = fdiv fast float %567, %569
  %572 = fdiv fast float %568, %570
  br label %573

; <label>:573                                     ; preds = %548, %475
  %574 = phi float [ %571, %548 ], [ %543, %475 ]
  %575 = phi float [ %572, %548 ], [ %544, %475 ]
  %576 = and i32 %469, 16777216
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %687, label %578

; <label>:578                                     ; preds = %573
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = fadd fast float %580, %142
  %584 = fadd fast float %581, %143
  %585 = fadd fast float %582, %144
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = icmp eq i32 %42, 65535
  br i1 %589, label %684, label %590

; <label>:590                                     ; preds = %578
  %591 = lshr i32 %42, 1
  %592 = shl i32 %591, 2
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %42, 1
  %596 = icmp ne i32 %595, 0
  %597 = lshr i32 %594, 16
  %598 = and i32 %594, 65535
  %599 = select i1 %596, i32 %597, i32 %598
  %600 = icmp eq i32 %599, 65535
  br i1 %600, label %680, label %601

; <label>:601                                     ; preds = %590
  %602 = mul nuw nsw i32 %599, 40
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = add nuw nsw i32 %602, 12
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = add nuw nsw i32 %602, 24
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = add nuw nsw i32 %602, 36
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = fsub fast float %583, %604
  %621 = fsub fast float %584, %605
  %622 = fsub fast float %585, %606
  %623 = fmul fast float %619, %620
  %624 = fmul fast float %619, %621
  %625 = fmul fast float %619, %622
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fadd fast float %628, 5.000000e-01
  %632 = fmul fast float %629, %609
  %633 = fmul fast float %630, %610
  %634 = fmul fast float %631, %611
  %635 = shl i32 %42, 2
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = add i32 %637, 0
  %639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %639, %dx.types.Handle %36, float %640, float %641, float %642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fmul fast float %646, 1.023000e+03
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = fsub fast float %623, %626
  %657 = fsub fast float %624, %627
  %658 = fsub fast float %625, %628
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fmul fast float %658, 7.500000e-01
  %662 = fadd fast float %626, 1.250000e-01
  %663 = fadd fast float %662, %659
  %664 = fadd fast float %663, %653
  %665 = fadd fast float %627, 1.250000e-01
  %666 = fadd fast float %665, %660
  %667 = fadd fast float %666, %654
  %668 = fadd fast float %628, 1.250000e-01
  %669 = fadd fast float %668, %661
  %670 = fadd fast float %669, %655
  %671 = fmul fast float %664, %614
  %672 = fmul fast float %667, %615
  %673 = fmul fast float %670, %616
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = add i32 %675, 0
  %677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %677, %dx.types.Handle %34, float %671, float %672, float %673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  br label %680

; <label>:680                                     ; preds = %601, %590
  %681 = phi float [ %679, %601 ], [ -1.000000e+00, %590 ]
  %682 = fadd fast float %681, %588
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  br label %684

; <label>:684                                     ; preds = %680, %578
  %685 = phi float [ %683, %680 ], [ %588, %578 ]
  %686 = fmul fast float %685, %436
  br label %687

; <label>:687                                     ; preds = %684, %573
  %688 = phi float [ %686, %684 ], [ %436, %573 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 256
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %739, label %693

; <label>:693                                     ; preds = %687
  %694 = add i32 %41, 472
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %84, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = add i32 %41, 100
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = shl i32 %703, 4
  %705 = and i32 %704, 32752
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = lshr i32 %703, 7
  %708 = and i32 %707, 32752
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = fsub fast float 1.000000e+00, %688
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %712 = bitcast float %688 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %709, %714
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = bitcast float %711 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %721, %709
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = fmul fast float %718, %706
  %727 = fmul fast float %725, %706
  %728 = fsub fast float %711, %726
  %729 = fadd fast float %727, %711
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %732 = fsub fast float %700, %730
  %733 = fsub fast float %731, %730
  %734 = bitcast float %733 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %732
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  br label %739

; <label>:739                                     ; preds = %693, %687
  %740 = phi float [ %738, %693 ], [ %688, %687 ]
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 128
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %761, label %745

; <label>:745                                     ; preds = %739
  %746 = add i32 %41, 456
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %84, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 524288
  %756 = icmp ne i32 %755, 0
  %757 = fcmp fast ogt float %752, 0x3FE0101020000000
  %758 = select i1 %757, float 1.000000e+00, float 0.000000e+00
  %759 = select i1 %756, float %758, float %752
  %760 = fmul fast float %759, %740
  br label %761

; <label>:761                                     ; preds = %745, %739
  %762 = phi float [ %760, %745 ], [ %740, %739 ]
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 16
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %965, label %767

; <label>:767                                     ; preds = %761
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %41, 408
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %772, 0
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %774, %dx.types.Handle %83, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = and i32 %769, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %769, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %779, %781
  %786 = fadd fast float %785, %784
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 512
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %800, label %792

; <label>:792                                     ; preds = %767
  %793 = add i32 %41, 488
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %795, 0
  %797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %797, %dx.types.Handle %84, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  br label %800

; <label>:800                                     ; preds = %792, %767
  %801 = phi float [ %799, %792 ], [ 1.000000e+00, %767 ]
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 33554432
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %912, label %806

; <label>:806                                     ; preds = %800
  %807 = add i32 %41, 224
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = lshr i32 %809, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = add i32 %41, 228
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = lshr i32 %820, 24
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = and i32 %820, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %820, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = lshr i32 %820, 16
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = add i32 %41, 220
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 24
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = and i32 %837, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %837, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %837, 16
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = bitcast float %776 to i32
  %853 = ashr i32 %852, 1
  %854 = sub nsw i32 1597463174, %853
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %776, 5.000000e-01
  %857 = fmul fast float %855, %855
  %858 = fmul fast float %857, %856
  %859 = fsub fast float 1.500000e+00, %858
  %860 = fmul fast float %855, %776
  %861 = fmul fast float %860, %859
  %862 = bitcast float %777 to i32
  %863 = ashr i32 %862, 1
  %864 = sub nsw i32 1597463174, %863
  %865 = bitcast i32 %864 to float
  %866 = fmul fast float %777, 5.000000e-01
  %867 = fmul fast float %865, %865
  %868 = fmul fast float %867, %866
  %869 = fsub fast float 1.500000e+00, %868
  %870 = fmul fast float %865, %777
  %871 = fmul fast float %870, %869
  %872 = bitcast float %778 to i32
  %873 = ashr i32 %872, 1
  %874 = sub nsw i32 1597463174, %873
  %875 = bitcast i32 %874 to float
  %876 = fmul fast float %778, 5.000000e-01
  %877 = fmul fast float %875, %875
  %878 = fmul fast float %877, %876
  %879 = fsub fast float 1.500000e+00, %878
  %880 = fmul fast float %875, %778
  %881 = fmul fast float %880, %879
  %882 = fsub fast float %861, %843
  %883 = fsub fast float %871, %847
  %884 = fsub fast float %881, %851
  %885 = fmul fast float %882, %811
  %886 = fmul fast float %883, %813
  %887 = fmul fast float %884, %818
  %888 = fadd fast float %885, %826
  %889 = fadd fast float %886, %830
  %890 = fadd fast float %887, %834
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %894 = fmul fast float %891, %891
  %895 = fmul fast float %892, %892
  %896 = fmul fast float %893, %893
  %897 = fsub fast float %894, %776
  %898 = fsub fast float %895, %777
  %899 = fsub fast float %896, %778
  %900 = fmul fast float %897, %801
  %901 = fmul fast float %898, %801
  %902 = fmul fast float %899, %801
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %902, %778
  %906 = fadd fast float %823, %787
  %907 = fsub fast float %906, %840
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = fsub fast float %908, %787
  %910 = fmul fast float %909, %801
  %911 = fadd fast float %910, %787
  br label %965

; <label>:912                                     ; preds = %800
  %913 = and i32 %803, 134217728
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %949, label %915

; <label>:915                                     ; preds = %912
  %916 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %918 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fadd fast float %918, -5.000000e-01
  %922 = fmul fast float %919, %801
  %923 = fmul fast float %920, %801
  %924 = fmul fast float %921, %801
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = fadd fast float %924, 5.000000e-01
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %931 = fmul fast float %925, 2.000000e+00
  %932 = fsub fast float 1.000000e+00, %931
  %933 = fmul fast float %932, %928
  %934 = fadd fast float %933, %931
  %935 = fmul fast float %934, %928
  %936 = fmul fast float %926, 2.000000e+00
  %937 = fsub fast float 1.000000e+00, %936
  %938 = fmul fast float %937, %929
  %939 = fadd fast float %938, %936
  %940 = fmul fast float %939, %929
  %941 = fmul fast float %927, 2.000000e+00
  %942 = fsub fast float 1.000000e+00, %941
  %943 = fmul fast float %942, %930
  %944 = fadd fast float %943, %941
  %945 = fmul fast float %944, %930
  %946 = fmul fast float %935, %935
  %947 = fmul fast float %940, %940
  %948 = fmul fast float %945, %945
  br label %965

; <label>:949                                     ; preds = %912
  %950 = fmul fast float %253, %253
  %951 = fmul fast float %257, %257
  %952 = fmul fast float %261, %261
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fadd fast float %952, -1.000000e+00
  %956 = fmul fast float %801, %953
  %957 = fmul fast float %801, %954
  %958 = fmul fast float %801, %955
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fadd fast float %958, 1.000000e+00
  %962 = fmul fast float %959, %776
  %963 = fmul fast float %960, %777
  %964 = fmul fast float %961, %778
  br label %965

; <label>:965                                     ; preds = %949, %915, %806, %761
  %966 = phi float [ %911, %806 ], [ %787, %915 ], [ %787, %949 ], [ 0x3FA23C0BE0000000, %761 ]
  %967 = phi float [ %903, %806 ], [ %946, %915 ], [ %962, %949 ], [ 1.000000e+00, %761 ]
  %968 = phi float [ %904, %806 ], [ %947, %915 ], [ %963, %949 ], [ 1.000000e+00, %761 ]
  %969 = phi float [ %905, %806 ], [ %948, %915 ], [ %964, %949 ], [ 1.000000e+00, %761 ]
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 1
  %972 = and i32 %971, 1
  %973 = icmp ne i32 %972, 0
  %974 = add i32 %41, 356
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 32
  %978 = icmp ne i32 %977, 0
  %979 = and i1 %973, %978
  %980 = select i1 %979, float 1.000000e+00, float %967
  %981 = select i1 %979, float 0x3FD3333340000000, float %968
  %982 = select i1 %979, float 0x3FD3333340000000, float %969
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 32
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1059, label %987

; <label>:987                                     ; preds = %965
  %988 = add i32 %41, 92
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = add i32 %41, 424
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = add i32 %993, 0
  %995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %995, %dx.types.Handle %83, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %996, 3
  %1001 = and i32 %990, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = lshr i32 %990, 8
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = lshr i32 %990, 16
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = fmul fast float %1008, 0x3F70101000000000
  %1010 = fmul fast float %997, %1002
  %1011 = fadd fast float %1010, %1005
  %1012 = fmul fast float %1011, 0x3F70101000000000
  %1013 = fadd fast float %998, -5.000000e-01
  %1014 = fadd fast float %1000, -5.000000e-01
  %1015 = fmul fast float %1013, %1009
  %1016 = fmul fast float %1014, %1009
  %1017 = fadd fast float %1015, 5.000000e-01
  %1018 = fadd fast float %1016, 5.000000e-01
  %1019 = fmul fast float %1017, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fmul fast float %1018, 2.000000e+00
  %1022 = fadd fast float %1021, -1.000000e+00
  %1023 = fadd fast float %1020, %1022
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = fsub fast float %1020, %1022
  %1026 = fmul fast float %1025, 5.000000e-01
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float 1.000000e+00, %1027
  %1029 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1030 = fsub fast float %1028, %1029
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1024, float %1026, float %1030, float %1024, float %1026, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 25, float %1031)  ; Rsqrt(value)
  %1033 = fmul fast float %1024, %1032
  %1034 = fmul fast float %1026, %1032
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 67108864
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1055, label %1039

; <label>:1039                                    ; preds = %987
  %1040 = add i32 %41, 280
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1042, 16
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = fsub fast float %1012, %1050
  %1052 = fmul fast float %1051, %1044
  %1053 = fadd fast float %1052, %1048
  %1054 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  br label %1055

; <label>:1055                                    ; preds = %1039, %987
  %1056 = phi float [ %1054, %1039 ], [ %1012, %987 ]
  %1057 = call float @dx.op.dot2.f32(i32 54, float %1033, float %1034, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  %1058 = call float @dx.op.dot2.f32(i32 54, float %1033, float %1034, float %480, float %481)  ; Dot2(ax,ay,bx,by)
  br label %1059

; <label>:1059                                    ; preds = %1055, %965
  %1060 = phi float [ %1056, %1055 ], [ 0x3FD6666660000000, %965 ]
  %1061 = phi float [ %1057, %1055 ], [ 0.000000e+00, %965 ]
  %1062 = phi float [ %1058, %1055 ], [ 0.000000e+00, %965 ]
  %1063 = phi float [ %999, %1055 ], [ 1.000000e+00, %965 ]
  %1064 = add i32 %41, 160
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = lshr i32 %1066, 22
  %1068 = shl nuw nsw i32 %1067, 5
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 64
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1107, label %1074

; <label>:1074                                    ; preds = %1059
  %1075 = add i32 %41, 440
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 131072
  %1083 = icmp eq i32 %1082, 0
  %1084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1079, %dx.types.Handle %83, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = fmul fast float %1085, %241
  %1089 = fmul fast float %1086, %244
  %1090 = fmul fast float %1087, %247
  br i1 %1083, label %1097, label %1091

; <label>:1091                                    ; preds = %1074
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = fmul fast float %1093, %1088
  %1095 = fmul fast float %1093, %1089
  %1096 = fmul fast float %1093, %1090
  br label %1097

; <label>:1097                                    ; preds = %1091, %1074
  %1098 = phi float [ %1094, %1091 ], [ %1088, %1074 ]
  %1099 = phi float [ %1095, %1091 ], [ %1089, %1074 ]
  %1100 = phi float [ %1096, %1091 ], [ %1090, %1074 ]
  %1101 = fmul fast float %1098, %1069
  %1102 = select i1 %235, float %1101, float %1098
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1099, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = select i1 %235, float 0.000000e+00, float %1098
  %1105 = select i1 %235, float %1103, float %1099
  %1106 = select i1 %235, float 0.000000e+00, float %1100
  br label %1107

; <label>:1107                                    ; preds = %1097, %1059
  %1108 = phi float [ %1104, %1097 ], [ 0.000000e+00, %1059 ]
  %1109 = phi float [ %1105, %1097 ], [ 0.000000e+00, %1059 ]
  %1110 = phi float [ %1106, %1097 ], [ 0.000000e+00, %1059 ]
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 1024
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1145, label %1115

; <label>:1115                                    ; preds = %1107
  %1116 = add i32 %41, 152
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = lshr i32 %1118, 8
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = lshr i32 %1118, 16
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = fmul fast float %1121, %1121
  %1131 = fmul fast float %1125, %1125
  %1132 = fmul fast float %1129, %1129
  %1133 = add i32 %41, 504
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %1135, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %84, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = fmul fast float %1130, %1139
  %1143 = fmul fast float %1131, %1140
  %1144 = fmul fast float %1132, %1141
  br label %1145

; <label>:1145                                    ; preds = %1115, %1107
  %1146 = phi float [ %1142, %1115 ], [ 0.000000e+00, %1107 ]
  %1147 = phi float [ %1143, %1115 ], [ 0.000000e+00, %1107 ]
  %1148 = phi float [ %1144, %1115 ], [ 0.000000e+00, %1107 ]
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = fcmp fast ogt float %1147, 0.000000e+00
  %1151 = fcmp fast ogt float %1148, 0.000000e+00
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1154 = call float @dx.op.unary.f32(i32 23, float %1148)  ; Log(value)
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = lshr i32 %1156, 7
  %1158 = and i32 %1157, 32752
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fmul fast float %1152, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1159
  %1162 = fmul fast float %1153, 0xBFE62E4300000000
  %1163 = fmul fast float %1162, %1159
  %1164 = fmul fast float %1154, 0xBFE62E4300000000
  %1165 = fmul fast float %1164, %1159
  %1166 = select i1 %1149, float %1161, float 1.270000e+02
  %1167 = select i1 %1150, float %1163, float 1.270000e+02
  %1168 = select i1 %1151, float %1165, float 1.270000e+02
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 10240
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1217, label %1173

; <label>:1173                                    ; preds = %1145
  %1174 = add i32 %41, 520
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %84, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 1048576
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i32 %1183, 8192
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1203, label %1188

; <label>:1188                                    ; preds = %1173
  %1189 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1190 = select i1 %1185, float %1189, float %1180
  %1191 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1192 = select i1 %1185, float %1191, float %1180
  %1193 = add i32 %41, 96
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 16
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F80101020000000
  %1200 = fmul fast float %1199, %1192
  %1201 = fmul fast float %1199, %1180
  %1202 = fmul fast float %1199, %1190
  br label %1203

; <label>:1203                                    ; preds = %1188, %1173
  %1204 = phi float [ %1200, %1188 ], [ 0.000000e+00, %1173 ]
  %1205 = phi float [ %1201, %1188 ], [ 0.000000e+00, %1173 ]
  %1206 = phi float [ %1202, %1188 ], [ 0.000000e+00, %1173 ]
  %1207 = and i32 %1183, 2048
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1217, label %1209

; <label>:1209                                    ; preds = %1203
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = shl i32 %1211, 4
  %1213 = and i32 %1212, 32752
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = fmul fast float %1214, %1181
  %1216 = call float @dx.op.binary.f32(i32 35, float %1215, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1217

; <label>:1217                                    ; preds = %1209, %1203, %1145
  %1218 = phi float [ %1204, %1209 ], [ %1204, %1203 ], [ 0.000000e+00, %1145 ]
  %1219 = phi float [ %1205, %1209 ], [ %1205, %1203 ], [ 0.000000e+00, %1145 ]
  %1220 = phi float [ %1206, %1209 ], [ %1206, %1203 ], [ 0.000000e+00, %1145 ]
  %1221 = phi float [ %1216, %1209 ], [ 0x3F70101020000000, %1203 ], [ 0x3F70101020000000, %1145 ]
  %1222 = add i32 %41, 96
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = lshr i32 %1224, 8
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = call float @dx.op.dot3.f32(i32 55, float %980, float %981, float %982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = fmul fast float %1229, %1230
  %1232 = fadd fast float %1231, %1226
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  br label %1235

; <label>:1235                                    ; preds = %1217, %460
  %1236 = phi float [ 0.000000e+00, %460 ], [ %1061, %1217 ]
  %1237 = phi float [ 0.000000e+00, %460 ], [ %1062, %1217 ]
  %1238 = phi float [ 0.000000e+00, %460 ], [ %980, %1217 ]
  %1239 = phi float [ 0.000000e+00, %460 ], [ %981, %1217 ]
  %1240 = phi float [ 0.000000e+00, %460 ], [ %982, %1217 ]
  %1241 = phi float [ 0.000000e+00, %460 ], [ %1108, %1217 ]
  %1242 = phi float [ 0.000000e+00, %460 ], [ %1109, %1217 ]
  %1243 = phi float [ 0.000000e+00, %460 ], [ %1110, %1217 ]
  %1244 = phi float [ 0.000000e+00, %460 ], [ %1218, %1217 ]
  %1245 = phi float [ 0.000000e+00, %460 ], [ %1219, %1217 ]
  %1246 = phi float [ 0.000000e+00, %460 ], [ %1220, %1217 ]
  %1247 = phi float [ 0.000000e+00, %460 ], [ %1166, %1217 ]
  %1248 = phi float [ 0.000000e+00, %460 ], [ %1167, %1217 ]
  %1249 = phi float [ 0.000000e+00, %460 ], [ %1168, %1217 ]
  %1250 = phi float [ 0.000000e+00, %460 ], [ %966, %1217 ]
  %1251 = phi float [ 0.000000e+00, %460 ], [ %762, %1217 ]
  %1252 = phi float [ 0.000000e+00, %460 ], [ %1060, %1217 ]
  %1253 = phi float [ 0.000000e+00, %460 ], [ %1063, %1217 ]
  %1254 = phi float [ 0.000000e+00, %460 ], [ %1221, %1217 ]
  %1255 = phi float [ 0.000000e+00, %460 ], [ %1234, %1217 ]
  br i1 %408, label %2293, label %1256

; <label>:1256                                    ; preds = %1235
  %1257 = icmp ult i32 %466, 2
  %1258 = add i32 %41, 40
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = add i32 %41, 44
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = or i32 %1263, %1260
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %2293, label %1266

; <label>:1266                                    ; preds = %1256
  %1267 = and i32 %1260, 262144
  %1268 = icmp ne i32 %1267, 0
  %1269 = select i1 %1268, float %44, float 1.000000e+00
  %1270 = select i1 %1268, float %45, float 0.000000e+00
  %1271 = select i1 %1268, float %46, float 0.000000e+00
  %1272 = select i1 %1268, float %47, float 1.000000e+00
  %1273 = select i1 %1268, float %48, float %69
  %1274 = select i1 %1268, float %49, float %70
  %1275 = add i32 %41, 300
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 16
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = fmul fast float %1279, 0x3F50624DE0000000
  %1281 = add i32 %41, 104
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = lshr i32 %1283, 16
  %1285 = and i32 %1284, 255
  %1286 = lshr i32 %1283, 24
  %1287 = add i32 %41, 308
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1289, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = add i32 %41, 48
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = lshr i32 %1296, 22
  %1298 = shl nuw nsw i32 %1297, 5
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = shl i32 %1296, 4
  %1301 = and i32 %1300, 32752
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = lshr i32 %1296, 7
  %1304 = and i32 %1303, 32752
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1308 = fmul fast float %1307, 1.000000e+03
  %1309 = fmul fast float %318, %1308
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = fadd fast float %1310, %308
  %1312 = fmul fast float %319, %1308
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = fadd fast float %1313, %310
  %1315 = fmul fast float %1280, %1308
  %1316 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1317 = fmul fast float %1316, 0x401921FB60000000
  %1318 = fadd fast float %1317, %1299
  %1319 = call float @dx.op.unary.f32(i32 13, float %1318)  ; Sin(value)
  %1320 = call float @dx.op.unary.f32(i32 12, float %1318)  ; Cos(value)
  %1321 = fsub fast float -0.000000e+00, %1319
  %1322 = fadd fast float %1273, -5.000000e-01
  %1323 = fadd fast float %1274, -5.000000e-01
  %1324 = fmul fast float %1291, %1322
  %1325 = fmul fast float %1293, %1323
  %1326 = fadd fast float %1324, 5.000000e-01
  %1327 = fadd fast float %1325, 5.000000e-01
  %1328 = fmul fast float %1302, %1326
  %1329 = fmul fast float %1305, %1327
  %1330 = fmul fast float %1320, %1328
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1329, float %1330)  ; FMad(a,b,c)
  %1332 = fmul fast float %1319, %1328
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1329, float %1332)  ; FMad(a,b,c)
  %1334 = fadd fast float %1311, %1331
  %1335 = fadd fast float %1314, %1333
  %1336 = icmp ugt i32 %1285, 1
  %1337 = icmp ugt i32 %1283, 33554431
  %1338 = or i1 %1337, %1336
  br i1 %1338, label %1339, label %1364

; <label>:1339                                    ; preds = %1266
  %1340 = add i32 %41, 244
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 16
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fmul fast float %1307, %1344
  %1346 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1347 = mul nuw nsw i32 %1285, %1286
  %1348 = uitofp i32 %1347 to float
  %1349 = fmul fast float %1346, %1348
  %1350 = call float @dx.op.unary.f32(i32 27, float %1349)  ; Round_ni(value)
  %1351 = fptoui float %1350 to i32
  %1352 = urem i32 %1351, %1285
  %1353 = udiv i32 %1351, %1286
  %1354 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1355 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1356 = uitofp i32 %1352 to float
  %1357 = uitofp i32 %1353 to float
  %1358 = fadd fast float %1354, %1356
  %1359 = fadd fast float %1355, %1357
  %1360 = uitofp i32 %1285 to float
  %1361 = uitofp i32 %1286 to float
  %1362 = fdiv fast float %1358, %1360
  %1363 = fdiv fast float %1359, %1361
  br label %1364

; <label>:1364                                    ; preds = %1339, %1266
  %1365 = phi float [ %1362, %1339 ], [ %1334, %1266 ]
  %1366 = phi float [ %1363, %1339 ], [ %1335, %1266 ]
  %1367 = and i32 %1260, 16777216
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1478, label %1369

; <label>:1369                                    ; preds = %1364
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1374 = fadd fast float %1371, %142
  %1375 = fadd fast float %1372, %143
  %1376 = fadd fast float %1373, %144
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = icmp eq i32 %42, 65535
  br i1 %1380, label %1475, label %1381

; <label>:1381                                    ; preds = %1369
  %1382 = lshr i32 %42, 1
  %1383 = shl i32 %1382, 2
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %42, 1
  %1387 = icmp ne i32 %1386, 0
  %1388 = lshr i32 %1385, 16
  %1389 = and i32 %1385, 65535
  %1390 = select i1 %1387, i32 %1388, i32 %1389
  %1391 = icmp eq i32 %1390, 65535
  br i1 %1391, label %1471, label %1392

; <label>:1392                                    ; preds = %1381
  %1393 = mul nuw nsw i32 %1390, 40
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = add nuw nsw i32 %1393, 12
  %1399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.ResRet.f32 %1399, 1
  %1402 = extractvalue %dx.types.ResRet.f32 %1399, 2
  %1403 = add nuw nsw i32 %1393, 24
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = add nuw nsw i32 %1393, 36
  %1409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = fsub fast float %1374, %1395
  %1412 = fsub fast float %1375, %1396
  %1413 = fsub fast float %1376, %1397
  %1414 = fmul fast float %1410, %1411
  %1415 = fmul fast float %1410, %1412
  %1416 = fmul fast float %1410, %1413
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = fmul fast float %1420, %1400
  %1424 = fmul fast float %1421, %1401
  %1425 = fmul fast float %1422, %1402
  %1426 = shl i32 %42, 2
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1433 = call float @dx.op.unary.f32(i32 22, float %1425)  ; Frc(value)
  %1434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1430, %dx.types.Handle %36, float %1431, float %1432, float %1433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = fmul fast float %1435, 1.023000e+03
  %1439 = fmul fast float %1436, 1.023000e+03
  %1440 = fmul fast float %1437, 1.023000e+03
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = fadd fast float %1439, 5.000000e-01
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = call float @dx.op.unary.f32(i32 27, float %1443)  ; Round_ni(value)
  %1447 = fsub fast float %1414, %1417
  %1448 = fsub fast float %1415, %1418
  %1449 = fsub fast float %1416, %1419
  %1450 = fmul fast float %1447, 7.500000e-01
  %1451 = fmul fast float %1448, 7.500000e-01
  %1452 = fmul fast float %1449, 7.500000e-01
  %1453 = fadd fast float %1417, 1.250000e-01
  %1454 = fadd fast float %1453, %1450
  %1455 = fadd fast float %1454, %1444
  %1456 = fadd fast float %1418, 1.250000e-01
  %1457 = fadd fast float %1456, %1451
  %1458 = fadd fast float %1457, %1445
  %1459 = fadd fast float %1419, 1.250000e-01
  %1460 = fadd fast float %1459, %1452
  %1461 = fadd fast float %1460, %1446
  %1462 = fmul fast float %1455, %1405
  %1463 = fmul fast float %1458, %1406
  %1464 = fmul fast float %1461, %1407
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1468, %dx.types.Handle %34, float %1462, float %1463, float %1464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  br label %1471

; <label>:1471                                    ; preds = %1392, %1381
  %1472 = phi float [ %1470, %1392 ], [ -1.000000e+00, %1381 ]
  %1473 = fadd fast float %1472, %1379
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  br label %1475

; <label>:1475                                    ; preds = %1471, %1369
  %1476 = phi float [ %1474, %1471 ], [ %1379, %1369 ]
  %1477 = fmul fast float %1476, %463
  br label %1478

; <label>:1478                                    ; preds = %1475, %1364
  %1479 = phi float [ %1477, %1475 ], [ %463, %1364 ]
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 256
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1530, label %1484

; <label>:1484                                    ; preds = %1478
  %1485 = add i32 %41, 476
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %84, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = add i32 %41, 116
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = shl i32 %1494, 4
  %1496 = and i32 %1495, 32752
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = lshr i32 %1494, 7
  %1499 = and i32 %1498, 32752
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = fsub fast float 1.000000e+00, %1479
  %1502 = call float @dx.op.binary.f32(i32 35, float %1501, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1503 = bitcast float %1479 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fadd fast float %1504, 0xC1CFBF8940000000
  %1506 = fmul fast float %1500, %1505
  %1507 = fadd fast float %1506, 0x41CFBF8940000000
  %1508 = fptosi float %1507 to i32
  %1509 = bitcast i32 %1508 to float
  %1510 = bitcast float %1502 to i32
  %1511 = sitofp i32 %1510 to float
  %1512 = fadd fast float %1511, 0xC1CFBF8940000000
  %1513 = fmul fast float %1512, %1500
  %1514 = fadd fast float %1513, 0x41CFBF8940000000
  %1515 = fptosi float %1514 to i32
  %1516 = bitcast i32 %1515 to float
  %1517 = fmul fast float %1509, %1497
  %1518 = fmul fast float %1516, %1497
  %1519 = fsub fast float %1502, %1517
  %1520 = fadd fast float %1518, %1502
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1523 = fsub fast float %1491, %1521
  %1524 = fsub fast float %1522, %1521
  %1525 = bitcast float %1524 to i32
  %1526 = sub nsw i32 2129859010, %1525
  %1527 = bitcast i32 %1526 to float
  %1528 = fmul fast float %1527, %1523
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  br label %1530

; <label>:1530                                    ; preds = %1484, %1478
  %1531 = phi float [ %1529, %1484 ], [ %1479, %1478 ]
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 128
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1552, label %1536

; <label>:1536                                    ; preds = %1530
  %1537 = add i32 %41, 460
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %1539, 0
  %1541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1541, %dx.types.Handle %84, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 524288
  %1547 = icmp ne i32 %1546, 0
  %1548 = fcmp fast ogt float %1543, 0x3FE0101020000000
  %1549 = select i1 %1548, float 1.000000e+00, float 0.000000e+00
  %1550 = select i1 %1547, float %1549, float %1543
  %1551 = fmul fast float %1550, %1531
  br label %1552

; <label>:1552                                    ; preds = %1536, %1530
  %1553 = phi float [ %1551, %1536 ], [ %1531, %1530 ]
  %1554 = fcmp fast ult float %1553, 0x3F70101020000000
  br i1 %1554, label %2293, label %1555

; <label>:1555                                    ; preds = %1552
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 16
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1758, label %1560

; <label>:1560                                    ; preds = %1555
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %41, 412
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %83, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = extractvalue %dx.types.ResRet.f32 %1568, 3
  %1573 = and i32 %1562, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = lshr i32 %1562, 8
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1572, %1574
  %1579 = fadd fast float %1578, %1577
  %1580 = fmul fast float %1579, 0x3F70101000000000
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 512
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1593, label %1585

; <label>:1585                                    ; preds = %1560
  %1586 = add i32 %41, 492
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %84, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  br label %1593

; <label>:1593                                    ; preds = %1585, %1560
  %1594 = phi float [ %1592, %1585 ], [ 1.000000e+00, %1560 ]
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 33554432
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1705, label %1599

; <label>:1599                                    ; preds = %1593
  %1600 = add i32 %41, 240
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = lshr i32 %1602, 16
  %1606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1605)  ; LegacyF16ToF32(value)
  %1607 = add i32 %41, 244
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 65535
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = lshr i32 %1613, 24
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = and i32 %1613, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = lshr i32 %1613, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = lshr i32 %1613, 16
  %1625 = and i32 %1624, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = add i32 %41, 236
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = lshr i32 %1630, 24
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = and i32 %1630, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = lshr i32 %1630, 8
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = lshr i32 %1630, 16
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F70101020000000
  %1645 = bitcast float %1569 to i32
  %1646 = ashr i32 %1645, 1
  %1647 = sub nsw i32 1597463174, %1646
  %1648 = bitcast i32 %1647 to float
  %1649 = fmul fast float %1569, 5.000000e-01
  %1650 = fmul fast float %1648, %1648
  %1651 = fmul fast float %1650, %1649
  %1652 = fsub fast float 1.500000e+00, %1651
  %1653 = fmul fast float %1648, %1569
  %1654 = fmul fast float %1653, %1652
  %1655 = bitcast float %1570 to i32
  %1656 = ashr i32 %1655, 1
  %1657 = sub nsw i32 1597463174, %1656
  %1658 = bitcast i32 %1657 to float
  %1659 = fmul fast float %1570, 5.000000e-01
  %1660 = fmul fast float %1658, %1658
  %1661 = fmul fast float %1660, %1659
  %1662 = fsub fast float 1.500000e+00, %1661
  %1663 = fmul fast float %1658, %1570
  %1664 = fmul fast float %1663, %1662
  %1665 = bitcast float %1571 to i32
  %1666 = ashr i32 %1665, 1
  %1667 = sub nsw i32 1597463174, %1666
  %1668 = bitcast i32 %1667 to float
  %1669 = fmul fast float %1571, 5.000000e-01
  %1670 = fmul fast float %1668, %1668
  %1671 = fmul fast float %1670, %1669
  %1672 = fsub fast float 1.500000e+00, %1671
  %1673 = fmul fast float %1668, %1571
  %1674 = fmul fast float %1673, %1672
  %1675 = fsub fast float %1654, %1636
  %1676 = fsub fast float %1664, %1640
  %1677 = fsub fast float %1674, %1644
  %1678 = fmul fast float %1675, %1604
  %1679 = fmul fast float %1676, %1606
  %1680 = fmul fast float %1677, %1611
  %1681 = fadd fast float %1678, %1619
  %1682 = fadd fast float %1679, %1623
  %1683 = fadd fast float %1680, %1627
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1686, %1686
  %1690 = fsub fast float %1687, %1569
  %1691 = fsub fast float %1688, %1570
  %1692 = fsub fast float %1689, %1571
  %1693 = fmul fast float %1690, %1594
  %1694 = fmul fast float %1691, %1594
  %1695 = fmul fast float %1692, %1594
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1695, %1571
  %1699 = fadd fast float %1616, %1580
  %1700 = fsub fast float %1699, %1633
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = fsub fast float %1701, %1580
  %1703 = fmul fast float %1702, %1594
  %1704 = fadd fast float %1703, %1580
  br label %1758

; <label>:1705                                    ; preds = %1593
  %1706 = and i32 %1596, 134217728
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1742, label %1708

; <label>:1708                                    ; preds = %1705
  %1709 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1711 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fmul fast float %1712, %1594
  %1716 = fmul fast float %1713, %1594
  %1717 = fmul fast float %1714, %1594
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1724 = fmul fast float %1718, 2.000000e+00
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1725, %1721
  %1727 = fadd fast float %1726, %1724
  %1728 = fmul fast float %1727, %1721
  %1729 = fmul fast float %1719, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1722
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1722
  %1734 = fmul fast float %1720, 2.000000e+00
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1735, %1723
  %1737 = fadd fast float %1736, %1734
  %1738 = fmul fast float %1737, %1723
  %1739 = fmul fast float %1728, %1728
  %1740 = fmul fast float %1733, %1733
  %1741 = fmul fast float %1738, %1738
  br label %1758

; <label>:1742                                    ; preds = %1705
  %1743 = fmul fast float %295, %295
  %1744 = fmul fast float %299, %299
  %1745 = fmul fast float %303, %303
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fadd fast float %1745, -1.000000e+00
  %1749 = fmul fast float %1594, %1746
  %1750 = fmul fast float %1594, %1747
  %1751 = fmul fast float %1594, %1748
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fadd fast float %1751, 1.000000e+00
  %1755 = fmul fast float %1752, %1569
  %1756 = fmul fast float %1753, %1570
  %1757 = fmul fast float %1754, %1571
  br label %1758

; <label>:1758                                    ; preds = %1742, %1708, %1599, %1555
  %1759 = phi float [ %1704, %1599 ], [ %1580, %1708 ], [ %1580, %1742 ], [ 0x3FA23C0BE0000000, %1555 ]
  %1760 = phi float [ %1696, %1599 ], [ %1739, %1708 ], [ %1755, %1742 ], [ 1.000000e+00, %1555 ]
  %1761 = phi float [ %1697, %1599 ], [ %1740, %1708 ], [ %1756, %1742 ], [ 1.000000e+00, %1555 ]
  %1762 = phi float [ %1698, %1599 ], [ %1741, %1708 ], [ %1757, %1742 ], [ 1.000000e+00, %1555 ]
  %1763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.i32 %1763, 1
  %1765 = and i32 %1764, 1
  %1766 = icmp ne i32 %1765, 0
  %1767 = add i32 %41, 356
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 32
  %1771 = icmp ne i32 %1770, 0
  %1772 = and i1 %1766, %1771
  %1773 = select i1 %1772, float 1.000000e+00, float %1760
  %1774 = select i1 %1772, float 0x3FD3333340000000, float %1761
  %1775 = select i1 %1772, float 0x3FD3333340000000, float %1762
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = and i32 %1777, 32
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1852, label %1780

; <label>:1780                                    ; preds = %1758
  %1781 = add i32 %41, 108
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = add i32 %41, 428
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = add i32 %1786, 0
  %1788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1788, %dx.types.Handle %83, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.ResRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.ResRet.f32 %1789, 2
  %1793 = extractvalue %dx.types.ResRet.f32 %1789, 3
  %1794 = and i32 %1783, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = lshr i32 %1783, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = lshr i32 %1783, 16
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = fmul fast float %1801, 0x3F70101000000000
  %1803 = fmul fast float %1790, %1795
  %1804 = fadd fast float %1803, %1798
  %1805 = fmul fast float %1804, 0x3F70101000000000
  %1806 = fadd fast float %1791, -5.000000e-01
  %1807 = fadd fast float %1793, -5.000000e-01
  %1808 = fmul fast float %1806, %1802
  %1809 = fmul fast float %1807, %1802
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fadd fast float %1809, 5.000000e-01
  %1812 = fmul fast float %1810, 2.000000e+00
  %1813 = fadd fast float %1812, -1.000000e+00
  %1814 = fmul fast float %1811, 2.000000e+00
  %1815 = fadd fast float %1814, -1.000000e+00
  %1816 = fadd fast float %1813, %1815
  %1817 = fmul fast float %1816, 5.000000e-01
  %1818 = fsub fast float %1813, %1815
  %1819 = fmul fast float %1818, 5.000000e-01
  %1820 = call float @dx.op.unary.f32(i32 6, float %1817)  ; FAbs(value)
  %1821 = fsub fast float 1.000000e+00, %1820
  %1822 = call float @dx.op.unary.f32(i32 6, float %1819)  ; FAbs(value)
  %1823 = fsub fast float %1821, %1822
  %1824 = call float @dx.op.dot3.f32(i32 55, float %1817, float %1819, float %1823, float %1817, float %1819, float %1823)  ; Dot3(ax,ay,az,bx,by,bz)
  %1825 = call float @dx.op.unary.f32(i32 25, float %1824)  ; Rsqrt(value)
  %1826 = fmul fast float %1817, %1825
  %1827 = fmul fast float %1819, %1825
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 67108864
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1848, label %1832

; <label>:1832                                    ; preds = %1780
  %1833 = add i32 %41, 296
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 65535
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1835, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = fsub fast float %1805, %1843
  %1845 = fmul fast float %1844, %1837
  %1846 = fadd fast float %1845, %1841
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  br label %1848

; <label>:1848                                    ; preds = %1832, %1780
  %1849 = phi float [ %1847, %1832 ], [ %1805, %1780 ]
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1826, float %1827, float %1269, float %1270)  ; Dot2(ax,ay,bx,by)
  %1851 = call float @dx.op.dot2.f32(i32 54, float %1826, float %1827, float %1271, float %1272)  ; Dot2(ax,ay,bx,by)
  br label %1852

; <label>:1852                                    ; preds = %1848, %1758
  %1853 = phi float [ %1849, %1848 ], [ 0x3FD6666660000000, %1758 ]
  %1854 = phi float [ %1850, %1848 ], [ 0.000000e+00, %1758 ]
  %1855 = phi float [ %1851, %1848 ], [ 0.000000e+00, %1758 ]
  %1856 = phi float [ %1792, %1848 ], [ 1.000000e+00, %1758 ]
  %1857 = add i32 %41, 176
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = lshr i32 %1859, 22
  %1861 = shl nuw nsw i32 %1860, 5
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %1864, 64
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %1900, label %1867

; <label>:1867                                    ; preds = %1852
  %1868 = add i32 %41, 444
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = add i32 %1870, 0
  %1872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 131072
  %1876 = icmp eq i32 %1875, 0
  %1877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1872, %dx.types.Handle %83, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = fmul fast float %1878, %283
  %1882 = fmul fast float %1879, %286
  %1883 = fmul fast float %1880, %289
  br i1 %1876, label %1890, label %1884

; <label>:1884                                    ; preds = %1867
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = fmul fast float %1886, %1881
  %1888 = fmul fast float %1886, %1882
  %1889 = fmul fast float %1886, %1883
  br label %1890

; <label>:1890                                    ; preds = %1884, %1867
  %1891 = phi float [ %1887, %1884 ], [ %1881, %1867 ]
  %1892 = phi float [ %1888, %1884 ], [ %1882, %1867 ]
  %1893 = phi float [ %1889, %1884 ], [ %1883, %1867 ]
  %1894 = fmul fast float %1891, %1862
  %1895 = select i1 %235, float %1894, float %1891
  %1896 = call float @dx.op.dot3.f32(i32 55, float %1895, float %1892, float %1893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1897 = select i1 %235, float 0.000000e+00, float %1891
  %1898 = select i1 %235, float %1896, float %1892
  %1899 = select i1 %235, float 0.000000e+00, float %1893
  br label %1900

; <label>:1900                                    ; preds = %1890, %1852
  %1901 = phi float [ %1897, %1890 ], [ 0.000000e+00, %1852 ]
  %1902 = phi float [ %1898, %1890 ], [ 0.000000e+00, %1852 ]
  %1903 = phi float [ %1899, %1890 ], [ 0.000000e+00, %1852 ]
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 1024
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1938, label %1908

; <label>:1908                                    ; preds = %1900
  %1909 = add i32 %41, 168
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = lshr i32 %1911, 8
  %1916 = and i32 %1915, 255
  %1917 = uitofp i32 %1916 to float
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = lshr i32 %1911, 16
  %1920 = and i32 %1919, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3F70101020000000
  %1923 = fmul fast float %1914, %1914
  %1924 = fmul fast float %1918, %1918
  %1925 = fmul fast float %1922, %1922
  %1926 = add i32 %41, 508
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = add i32 %1928, 0
  %1930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1930, %dx.types.Handle %84, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.ResRet.f32 %1931, 1
  %1934 = extractvalue %dx.types.ResRet.f32 %1931, 2
  %1935 = fmul fast float %1923, %1932
  %1936 = fmul fast float %1924, %1933
  %1937 = fmul fast float %1925, %1934
  br label %1938

; <label>:1938                                    ; preds = %1908, %1900
  %1939 = phi float [ %1935, %1908 ], [ 0.000000e+00, %1900 ]
  %1940 = phi float [ %1936, %1908 ], [ 0.000000e+00, %1900 ]
  %1941 = phi float [ %1937, %1908 ], [ 0.000000e+00, %1900 ]
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = fcmp fast ogt float %1941, 0.000000e+00
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call float @dx.op.unary.f32(i32 23, float %1941)  ; Log(value)
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = lshr i32 %1949, 7
  %1951 = and i32 %1950, 32752
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = fmul fast float %1945, 0xBFE62E4300000000
  %1954 = fmul fast float %1953, %1952
  %1955 = fmul fast float %1946, 0xBFE62E4300000000
  %1956 = fmul fast float %1955, %1952
  %1957 = fmul fast float %1947, 0xBFE62E4300000000
  %1958 = fmul fast float %1957, %1952
  %1959 = select i1 %1942, float %1954, float 1.270000e+02
  %1960 = select i1 %1943, float %1956, float 1.270000e+02
  %1961 = select i1 %1944, float %1958, float 1.270000e+02
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %1963, 10240
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %2010, label %1966

; <label>:1966                                    ; preds = %1938
  %1967 = add i32 %41, 524
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %84, float %1365, float %1366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 3
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %1976, 1048576
  %1978 = icmp ne i32 %1977, 0
  %1979 = and i32 %1976, 8192
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %1996, label %1981

; <label>:1981                                    ; preds = %1966
  %1982 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1983 = select i1 %1978, float %1982, float %1973
  %1984 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1985 = select i1 %1978, float %1984, float %1973
  %1986 = add i32 %41, 112
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = lshr i32 %1988, 16
  %1990 = and i32 %1989, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = fmul fast float %1991, 0x3F80101020000000
  %1993 = fmul fast float %1992, %1985
  %1994 = fmul fast float %1992, %1973
  %1995 = fmul fast float %1992, %1983
  br label %1996

; <label>:1996                                    ; preds = %1981, %1966
  %1997 = phi float [ %1993, %1981 ], [ 0.000000e+00, %1966 ]
  %1998 = phi float [ %1994, %1981 ], [ 0.000000e+00, %1966 ]
  %1999 = phi float [ %1995, %1981 ], [ 0.000000e+00, %1966 ]
  %2000 = and i32 %1976, 2048
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2010, label %2002

; <label>:2002                                    ; preds = %1996
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = shl i32 %2004, 4
  %2006 = and i32 %2005, 32752
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = fmul fast float %2007, %1974
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2010

; <label>:2010                                    ; preds = %2002, %1996, %1938
  %2011 = phi float [ %1997, %2002 ], [ %1997, %1996 ], [ 0.000000e+00, %1938 ]
  %2012 = phi float [ %1998, %2002 ], [ %1998, %1996 ], [ 0.000000e+00, %1938 ]
  %2013 = phi float [ %1999, %2002 ], [ %1999, %1996 ], [ 0.000000e+00, %1938 ]
  %2014 = phi float [ %2009, %2002 ], [ 0x3F70101020000000, %1996 ], [ 0x3F70101020000000, %1938 ]
  %2015 = add i32 %41, 112
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = lshr i32 %2017, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = fmul fast float %2022, %2023
  %2025 = fadd fast float %2024, %2019
  %2026 = fmul fast float %2025, 0x3F70101020000000
  %2027 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  br i1 %1257, label %2028, label %2063

; <label>:2028                                    ; preds = %2010
  %2029 = fmul fast float %2014, 2.000000e+00
  %2030 = fcmp fast olt float %1959, 1.270000e+02
  %2031 = fcmp fast olt float %1960, 1.270000e+02
  %2032 = fcmp fast olt float %1961, 1.270000e+02
  %2033 = fmul fast float %1959, 0xBFF7154760000000
  %2034 = fmul fast float %2033, %2029
  %2035 = fmul fast float %1960, 0xBFF7154760000000
  %2036 = fmul fast float %2035, %2029
  %2037 = fmul fast float %1961, 0xBFF7154760000000
  %2038 = fmul fast float %2037, %2029
  %2039 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2040 = call float @dx.op.unary.f32(i32 21, float %2036)  ; Exp(value)
  %2041 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2044 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2045 = fadd fast float %2042, -1.000000e+00
  %2046 = select i1 %2030, float %2045, float -1.000000e+00
  %2047 = fadd fast float %2043, -1.000000e+00
  %2048 = select i1 %2031, float %2047, float -1.000000e+00
  %2049 = fadd fast float %2044, -1.000000e+00
  %2050 = select i1 %2032, float %2049, float -1.000000e+00
  %2051 = fmul fast float %2046, %1553
  %2052 = fmul fast float %2048, %1553
  %2053 = fmul fast float %2050, %1553
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fmul fast float %2054, %1238
  %2058 = fmul fast float %2055, %1239
  %2059 = fmul fast float %2056, %1240
  %2060 = fmul fast float %2054, %1241
  %2061 = fmul fast float %2055, %1242
  %2062 = fmul fast float %2056, %1243
  br label %2063

; <label>:2063                                    ; preds = %2028, %2010
  %2064 = phi float [ %2057, %2028 ], [ %1238, %2010 ]
  %2065 = phi float [ %2058, %2028 ], [ %1239, %2010 ]
  %2066 = phi float [ %2059, %2028 ], [ %1240, %2010 ]
  %2067 = phi float [ %2060, %2028 ], [ %1241, %2010 ]
  %2068 = phi float [ %2061, %2028 ], [ %1242, %2010 ]
  %2069 = phi float [ %2062, %2028 ], [ %1243, %2010 ]
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 3
  %2073 = icmp eq i32 %2072, 3
  br i1 %2073, label %2152, label %2074

; <label>:2074                                    ; preds = %2063
  %2075 = and i32 %2071, 16
  %2076 = icmp ne i32 %2075, 0
  %2077 = select i1 %2076, float %1553, float 0.000000e+00
  %2078 = icmp eq i32 %2072, 0
  br i1 %2078, label %2079, label %2107

; <label>:2079                                    ; preds = %2074
  %2080 = and i32 %2071, 64
  %2081 = icmp ne i32 %2080, 0
  %2082 = select i1 %2081, float %1553, float 0.000000e+00
  %2083 = fsub fast float %1773, %2064
  %2084 = fsub fast float %1774, %2065
  %2085 = fsub fast float %1775, %2066
  %2086 = fmul fast float %2077, %2083
  %2087 = fmul fast float %2077, %2084
  %2088 = fmul fast float %2077, %2085
  %2089 = fadd fast float %2086, %2064
  %2090 = fadd fast float %2087, %2065
  %2091 = fadd fast float %2088, %2066
  %2092 = fsub fast float %1759, %1250
  %2093 = fmul fast float %2077, %2092
  %2094 = fadd fast float %2093, %1250
  %2095 = fsub fast float %1901, %2067
  %2096 = fsub fast float %1902, %2068
  %2097 = fsub fast float %1903, %2069
  %2098 = fmul fast float %2082, %2095
  %2099 = fmul fast float %2082, %2096
  %2100 = fmul fast float %2082, %2097
  %2101 = fadd fast float %2098, %2067
  %2102 = fadd fast float %2099, %2068
  %2103 = fadd fast float %2100, %2069
  %2104 = fsub fast float %2027, %1255
  %2105 = fmul fast float %2077, %2104
  %2106 = fadd fast float %2105, %1255
  br label %2152

; <label>:2107                                    ; preds = %2074
  %2108 = icmp eq i32 %2072, 1
  br i1 %2108, label %2109, label %2122

; <label>:2109                                    ; preds = %2107
  %2110 = fadd fast float %1773, -1.000000e+00
  %2111 = fadd fast float %1774, -1.000000e+00
  %2112 = fadd fast float %1775, -1.000000e+00
  %2113 = fmul fast float %2077, %2110
  %2114 = fmul fast float %2077, %2111
  %2115 = fmul fast float %2077, %2112
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fadd fast float %2115, 1.000000e+00
  %2119 = fmul fast float %2116, %2064
  %2120 = fmul fast float %2117, %2065
  %2121 = fmul fast float %2118, %2066
  br label %2152

; <label>:2122                                    ; preds = %2107
  %2123 = icmp eq i32 %2072, 2
  br i1 %2123, label %2124, label %2152

; <label>:2124                                    ; preds = %2122
  %2125 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2126 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %1775)  ; Sqrt(value)
  %2128 = fadd fast float %2125, -5.000000e-01
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fmul fast float %2128, %2077
  %2132 = fmul fast float %2129, %2077
  %2133 = fmul fast float %2130, %2077
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fmul fast float %2134, 2.000000e+00
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = fmul fast float %2138, %2064
  %2140 = fadd fast float %2139, %2137
  %2141 = fmul fast float %2140, %2064
  %2142 = fmul fast float %2135, 2.000000e+00
  %2143 = fsub fast float 1.000000e+00, %2142
  %2144 = fmul fast float %2143, %2065
  %2145 = fadd fast float %2144, %2142
  %2146 = fmul fast float %2145, %2065
  %2147 = fmul fast float %2136, 2.000000e+00
  %2148 = fsub fast float 1.000000e+00, %2147
  %2149 = fmul fast float %2148, %2066
  %2150 = fadd fast float %2149, %2147
  %2151 = fmul fast float %2150, %2066
  br label %2152

; <label>:2152                                    ; preds = %2124, %2122, %2109, %2079, %2063
  %2153 = phi float [ %2064, %2063 ], [ %2141, %2124 ], [ %2064, %2122 ], [ %2119, %2109 ], [ %2089, %2079 ]
  %2154 = phi float [ %2065, %2063 ], [ %2146, %2124 ], [ %2065, %2122 ], [ %2120, %2109 ], [ %2090, %2079 ]
  %2155 = phi float [ %2066, %2063 ], [ %2151, %2124 ], [ %2066, %2122 ], [ %2121, %2109 ], [ %2091, %2079 ]
  %2156 = phi float [ %2067, %2063 ], [ %2067, %2124 ], [ %2067, %2122 ], [ %2067, %2109 ], [ %2101, %2079 ]
  %2157 = phi float [ %2068, %2063 ], [ %2068, %2124 ], [ %2068, %2122 ], [ %2068, %2109 ], [ %2102, %2079 ]
  %2158 = phi float [ %2069, %2063 ], [ %2069, %2124 ], [ %2069, %2122 ], [ %2069, %2109 ], [ %2103, %2079 ]
  %2159 = phi float [ %1250, %2063 ], [ %1250, %2124 ], [ %1250, %2122 ], [ %1250, %2109 ], [ %2094, %2079 ]
  %2160 = phi float [ %1255, %2063 ], [ %1255, %2124 ], [ %1255, %2122 ], [ %1255, %2109 ], [ %2106, %2079 ]
  %2161 = and i32 %2071, 12
  %2162 = icmp eq i32 %2161, 12
  br i1 %2162, label %2293, label %2163

; <label>:2163                                    ; preds = %2152
  %2164 = and i32 %2071, 2097184
  %2165 = icmp eq i32 %2164, 2097184
  %2166 = select i1 %2165, float %1553, float 0.000000e+00
  %2167 = and i32 %2071, 4194336
  %2168 = icmp eq i32 %2167, 4194336
  %2169 = select i1 %2168, float %1553, float 0.000000e+00
  %2170 = and i32 %2071, 8388640
  %2171 = icmp eq i32 %2170, 8388640
  %2172 = select i1 %2171, float %1553, float 0.000000e+00
  %2173 = and i32 %2071, 1024
  %2174 = icmp ne i32 %2173, 0
  %2175 = select i1 %2174, float %1553, float 0.000000e+00
  %2176 = and i32 %2071, 2048
  %2177 = icmp ne i32 %2176, 0
  %2178 = select i1 %2177, float %1553, float 0.000000e+00
  %2179 = and i32 %2071, 8192
  %2180 = icmp ne i32 %2179, 0
  %2181 = select i1 %2180, float %1553, float 0.000000e+00
  %2182 = icmp eq i32 %2161, 0
  br i1 %2182, label %2183, label %2217

; <label>:2183                                    ; preds = %2163
  %2184 = fsub fast float %1854, %1236
  %2185 = fsub fast float %1855, %1237
  %2186 = fmul fast float %2166, %2184
  %2187 = fmul fast float %2166, %2185
  %2188 = fadd fast float %2186, %1236
  %2189 = fadd fast float %2187, %1237
  %2190 = fsub fast float %1856, %1253
  %2191 = fmul fast float %2169, %2190
  %2192 = fadd fast float %2191, %1253
  %2193 = fsub fast float %1853, %1252
  %2194 = fmul fast float %2172, %2193
  %2195 = fadd fast float %2194, %1252
  %2196 = fsub fast float %1959, %1247
  %2197 = fsub fast float %1960, %1248
  %2198 = fsub fast float %1961, %1249
  %2199 = fmul fast float %2175, %2196
  %2200 = fmul fast float %2175, %2197
  %2201 = fmul fast float %2175, %2198
  %2202 = fadd fast float %2199, %1247
  %2203 = fadd fast float %2200, %1248
  %2204 = fadd fast float %2201, %1249
  %2205 = fsub fast float %2014, %1254
  %2206 = fmul fast float %2178, %2205
  %2207 = fadd fast float %2206, %1254
  %2208 = fsub fast float %2011, %1244
  %2209 = fsub fast float %2012, %1245
  %2210 = fsub fast float %2013, %1246
  %2211 = fmul fast float %2181, %2208
  %2212 = fmul fast float %2181, %2209
  %2213 = fmul fast float %2181, %2210
  %2214 = fadd fast float %2211, %1244
  %2215 = fadd fast float %2212, %1245
  %2216 = fadd fast float %2213, %1246
  br label %2293

; <label>:2217                                    ; preds = %2163
  %2218 = icmp eq i32 %2161, 4
  br i1 %2218, label %2219, label %2265

; <label>:2219                                    ; preds = %2217
  %2220 = fmul fast float %2166, %1854
  %2221 = fmul fast float %2166, %1855
  %2222 = fadd fast float %2220, %1236
  %2223 = fadd fast float %2221, %1237
  %2224 = call float @dx.op.binary.f32(i32 36, float %1253, float %1856)  ; FMin(a,b)
  %2225 = fsub fast float %2224, %1253
  %2226 = fmul fast float %2225, %2169
  %2227 = fadd fast float %2226, %1253
  %2228 = fadd fast float %1853, %1252
  %2229 = fmul fast float %2228, 0x3FF337FAE0000000
  %2230 = fmul fast float %1252, %1252
  %2231 = fmul fast float %1853, %1853
  %2232 = fadd fast float %2231, %2230
  %2233 = fmul fast float %2232, 0x3FE5152B00000000
  %2234 = fmul fast float %1252, 0xBFCC1F85E0000000
  %2235 = fmul fast float %2234, %1853
  %2236 = fadd fast float %2235, 0xBFE1363700000000
  %2237 = fadd fast float %2236, %2229
  %2238 = fsub fast float %2237, %2233
  %2239 = fmul fast float %2228, 0x3FBA6F0D00000000
  %2240 = fmul fast float %2232, 0x3FD0432880000000
  %2241 = fmul fast float %1252, 0xBFEF110800000000
  %2242 = fmul fast float %2241, %1853
  %2243 = fadd fast float %2242, 1.000000e+00
  %2244 = fsub fast float %2243, %2239
  %2245 = fadd fast float %2244, %2240
  %2246 = fdiv fast float %2238, %2245
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fsub fast float %2247, %1252
  %2249 = fmul fast float %2248, %2172
  %2250 = fadd fast float %2249, %1252
  %2251 = fmul fast float %2175, %1959
  %2252 = fmul fast float %2175, %1960
  %2253 = fmul fast float %2175, %1961
  %2254 = fadd fast float %2251, %1247
  %2255 = fadd fast float %2252, %1248
  %2256 = fadd fast float %2253, %1249
  %2257 = fmul fast float %2178, %2014
  %2258 = fadd fast float %2257, %1254
  %2259 = fmul fast float %2181, %2011
  %2260 = fmul fast float %2181, %2012
  %2261 = fmul fast float %2181, %2013
  %2262 = fadd fast float %2259, %1244
  %2263 = fadd fast float %2260, %1245
  %2264 = fadd fast float %2261, %1246
  br label %2293

; <label>:2265                                    ; preds = %2217
  %2266 = icmp eq i32 %2161, 8
  br i1 %2266, label %2267, label %2293

; <label>:2267                                    ; preds = %2265
  %2268 = fmul fast float %2166, %1854
  %2269 = fmul fast float %2166, %1855
  %2270 = fadd fast float %2268, %1236
  %2271 = fadd fast float %2269, %1237
  %2272 = call float @dx.op.binary.f32(i32 36, float %1253, float %1856)  ; FMin(a,b)
  %2273 = fsub fast float %2272, %1253
  %2274 = fmul fast float %2273, %2169
  %2275 = fadd fast float %2274, %1253
  %2276 = fsub fast float %1853, %1252
  %2277 = fmul fast float %2172, %2276
  %2278 = fadd fast float %2277, %1252
  %2279 = fmul fast float %2175, %1959
  %2280 = fmul fast float %2175, %1960
  %2281 = fmul fast float %2175, %1961
  %2282 = fadd fast float %2279, %1247
  %2283 = fadd fast float %2280, %1248
  %2284 = fadd fast float %2281, %1249
  %2285 = fmul fast float %2178, %2014
  %2286 = fadd fast float %2285, %1254
  %2287 = fmul fast float %2181, %2011
  %2288 = fmul fast float %2181, %2012
  %2289 = fmul fast float %2181, %2013
  %2290 = fadd fast float %2287, %1244
  %2291 = fadd fast float %2288, %1245
  %2292 = fadd fast float %2289, %1246
  br label %2293

; <label>:2293                                    ; preds = %2267, %2265, %2219, %2183, %2152, %1552, %1256, %1235
  %2294 = phi float [ %1236, %2152 ], [ %1236, %1552 ], [ %1236, %1235 ], [ %2270, %2267 ], [ %1236, %2265 ], [ %2222, %2219 ], [ %2188, %2183 ], [ %1236, %1256 ]
  %2295 = phi float [ %1237, %2152 ], [ %1237, %1552 ], [ %1237, %1235 ], [ %2271, %2267 ], [ %1237, %2265 ], [ %2223, %2219 ], [ %2189, %2183 ], [ %1237, %1256 ]
  %2296 = phi float [ %2153, %2152 ], [ %1238, %1552 ], [ %1238, %1235 ], [ %2153, %2267 ], [ %2153, %2265 ], [ %2153, %2219 ], [ %2153, %2183 ], [ %1238, %1256 ]
  %2297 = phi float [ %2154, %2152 ], [ %1239, %1552 ], [ %1239, %1235 ], [ %2154, %2267 ], [ %2154, %2265 ], [ %2154, %2219 ], [ %2154, %2183 ], [ %1239, %1256 ]
  %2298 = phi float [ %2155, %2152 ], [ %1240, %1552 ], [ %1240, %1235 ], [ %2155, %2267 ], [ %2155, %2265 ], [ %2155, %2219 ], [ %2155, %2183 ], [ %1240, %1256 ]
  %2299 = phi float [ %2156, %2152 ], [ %1241, %1552 ], [ %1241, %1235 ], [ %2156, %2267 ], [ %2156, %2265 ], [ %2156, %2219 ], [ %2156, %2183 ], [ %1241, %1256 ]
  %2300 = phi float [ %2157, %2152 ], [ %1242, %1552 ], [ %1242, %1235 ], [ %2157, %2267 ], [ %2157, %2265 ], [ %2157, %2219 ], [ %2157, %2183 ], [ %1242, %1256 ]
  %2301 = phi float [ %2158, %2152 ], [ %1243, %1552 ], [ %1243, %1235 ], [ %2158, %2267 ], [ %2158, %2265 ], [ %2158, %2219 ], [ %2158, %2183 ], [ %1243, %1256 ]
  %2302 = phi float [ %1244, %2152 ], [ %1244, %1552 ], [ %1244, %1235 ], [ %2290, %2267 ], [ %1244, %2265 ], [ %2262, %2219 ], [ %2214, %2183 ], [ %1244, %1256 ]
  %2303 = phi float [ %1245, %2152 ], [ %1245, %1552 ], [ %1245, %1235 ], [ %2291, %2267 ], [ %1245, %2265 ], [ %2263, %2219 ], [ %2215, %2183 ], [ %1245, %1256 ]
  %2304 = phi float [ %1246, %2152 ], [ %1246, %1552 ], [ %1246, %1235 ], [ %2292, %2267 ], [ %1246, %2265 ], [ %2264, %2219 ], [ %2216, %2183 ], [ %1246, %1256 ]
  %2305 = phi float [ %1247, %2152 ], [ %1247, %1552 ], [ %1247, %1235 ], [ %2282, %2267 ], [ %1247, %2265 ], [ %2254, %2219 ], [ %2202, %2183 ], [ %1247, %1256 ]
  %2306 = phi float [ %1248, %2152 ], [ %1248, %1552 ], [ %1248, %1235 ], [ %2283, %2267 ], [ %1248, %2265 ], [ %2255, %2219 ], [ %2203, %2183 ], [ %1248, %1256 ]
  %2307 = phi float [ %1249, %2152 ], [ %1249, %1552 ], [ %1249, %1235 ], [ %2284, %2267 ], [ %1249, %2265 ], [ %2256, %2219 ], [ %2204, %2183 ], [ %1249, %1256 ]
  %2308 = phi float [ %2159, %2152 ], [ %1250, %1552 ], [ %1250, %1235 ], [ %2159, %2267 ], [ %2159, %2265 ], [ %2159, %2219 ], [ %2159, %2183 ], [ %1250, %1256 ]
  %2309 = phi float [ %1252, %2152 ], [ %1252, %1552 ], [ %1252, %1235 ], [ %2278, %2267 ], [ %1252, %2265 ], [ %2250, %2219 ], [ %2195, %2183 ], [ %1252, %1256 ]
  %2310 = phi float [ %1253, %2152 ], [ %1253, %1552 ], [ %1253, %1235 ], [ %2275, %2267 ], [ %1253, %2265 ], [ %2227, %2219 ], [ %2192, %2183 ], [ %1253, %1256 ]
  %2311 = phi float [ %1254, %2152 ], [ %1254, %1552 ], [ %1254, %1235 ], [ %2286, %2267 ], [ %1254, %2265 ], [ %2258, %2219 ], [ %2207, %2183 ], [ %1254, %1256 ]
  %2312 = phi float [ %2160, %2152 ], [ %1255, %1552 ], [ %1255, %1235 ], [ %2160, %2267 ], [ %2160, %2265 ], [ %2160, %2219 ], [ %2160, %2183 ], [ %1255, %1256 ]
  br i1 %410, label %3350, label %2313

; <label>:2313                                    ; preds = %2293
  %2314 = icmp ult i32 %466, 3
  %2315 = add i32 %41, 56
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = add i32 %41, 60
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = or i32 %2320, %2317
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %3350, label %2323

; <label>:2323                                    ; preds = %2313
  %2324 = and i32 %2317, 262144
  %2325 = icmp ne i32 %2324, 0
  %2326 = select i1 %2325, float %44, float 1.000000e+00
  %2327 = select i1 %2325, float %45, float 0.000000e+00
  %2328 = select i1 %2325, float %46, float 0.000000e+00
  %2329 = select i1 %2325, float %47, float 1.000000e+00
  %2330 = select i1 %2325, float %48, float %69
  %2331 = select i1 %2325, float %49, float %70
  %2332 = add i32 %41, 316
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 16
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = fmul fast float %2336, 0x3F50624DE0000000
  %2338 = add i32 %41, 120
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = lshr i32 %2340, 16
  %2342 = and i32 %2341, 255
  %2343 = lshr i32 %2340, 24
  %2344 = add i32 %41, 324
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 65535
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = lshr i32 %2346, 16
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = add i32 %41, 64
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = lshr i32 %2353, 22
  %2355 = shl nuw nsw i32 %2354, 5
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = shl i32 %2353, 4
  %2358 = and i32 %2357, 32752
  %2359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2358)  ; LegacyF16ToF32(value)
  %2360 = lshr i32 %2353, 7
  %2361 = and i32 %2360, 32752
  %2362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2361)  ; LegacyF16ToF32(value)
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2365 = fmul fast float %2364, 1.000000e+03
  %2366 = fmul fast float %360, %2365
  %2367 = call float @dx.op.unary.f32(i32 22, float %2366)  ; Frc(value)
  %2368 = fadd fast float %2367, %350
  %2369 = fmul fast float %361, %2365
  %2370 = call float @dx.op.unary.f32(i32 22, float %2369)  ; Frc(value)
  %2371 = fadd fast float %2370, %352
  %2372 = fmul fast float %2337, %2365
  %2373 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2374 = fmul fast float %2373, 0x401921FB60000000
  %2375 = fadd fast float %2374, %2356
  %2376 = call float @dx.op.unary.f32(i32 13, float %2375)  ; Sin(value)
  %2377 = call float @dx.op.unary.f32(i32 12, float %2375)  ; Cos(value)
  %2378 = fsub fast float -0.000000e+00, %2376
  %2379 = fadd fast float %2330, -5.000000e-01
  %2380 = fadd fast float %2331, -5.000000e-01
  %2381 = fmul fast float %2348, %2379
  %2382 = fmul fast float %2350, %2380
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = fadd fast float %2382, 5.000000e-01
  %2385 = fmul fast float %2359, %2383
  %2386 = fmul fast float %2362, %2384
  %2387 = fmul fast float %2377, %2385
  %2388 = call float @dx.op.tertiary.f32(i32 46, float %2378, float %2386, float %2387)  ; FMad(a,b,c)
  %2389 = fmul fast float %2376, %2385
  %2390 = call float @dx.op.tertiary.f32(i32 46, float %2377, float %2386, float %2389)  ; FMad(a,b,c)
  %2391 = fadd fast float %2368, %2388
  %2392 = fadd fast float %2371, %2390
  %2393 = icmp ugt i32 %2342, 1
  %2394 = icmp ugt i32 %2340, 33554431
  %2395 = or i1 %2394, %2393
  br i1 %2395, label %2396, label %2421

; <label>:2396                                    ; preds = %2323
  %2397 = add i32 %41, 260
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = lshr i32 %2399, 16
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = fmul fast float %2364, %2401
  %2403 = call float @dx.op.unary.f32(i32 22, float %2402)  ; Frc(value)
  %2404 = mul nuw nsw i32 %2342, %2343
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2403, %2405
  %2407 = call float @dx.op.unary.f32(i32 27, float %2406)  ; Round_ni(value)
  %2408 = fptoui float %2407 to i32
  %2409 = urem i32 %2408, %2342
  %2410 = udiv i32 %2408, %2343
  %2411 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2412 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2413 = uitofp i32 %2409 to float
  %2414 = uitofp i32 %2410 to float
  %2415 = fadd fast float %2411, %2413
  %2416 = fadd fast float %2412, %2414
  %2417 = uitofp i32 %2342 to float
  %2418 = uitofp i32 %2343 to float
  %2419 = fdiv fast float %2415, %2417
  %2420 = fdiv fast float %2416, %2418
  br label %2421

; <label>:2421                                    ; preds = %2396, %2323
  %2422 = phi float [ %2419, %2396 ], [ %2391, %2323 ]
  %2423 = phi float [ %2420, %2396 ], [ %2392, %2323 ]
  %2424 = and i32 %2317, 16777216
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2535, label %2426

; <label>:2426                                    ; preds = %2421
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2431 = fadd fast float %2428, %142
  %2432 = fadd fast float %2429, %143
  %2433 = fadd fast float %2430, %144
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = icmp eq i32 %42, 65535
  br i1 %2437, label %2532, label %2438

; <label>:2438                                    ; preds = %2426
  %2439 = lshr i32 %42, 1
  %2440 = shl i32 %2439, 2
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %42, 1
  %2444 = icmp ne i32 %2443, 0
  %2445 = lshr i32 %2442, 16
  %2446 = and i32 %2442, 65535
  %2447 = select i1 %2444, i32 %2445, i32 %2446
  %2448 = icmp eq i32 %2447, 65535
  br i1 %2448, label %2528, label %2449

; <label>:2449                                    ; preds = %2438
  %2450 = mul nuw nsw i32 %2447, 40
  %2451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.ResRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.ResRet.f32 %2451, 2
  %2455 = add nuw nsw i32 %2450, 12
  %2456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.f32 %2456, 0
  %2458 = extractvalue %dx.types.ResRet.f32 %2456, 1
  %2459 = extractvalue %dx.types.ResRet.f32 %2456, 2
  %2460 = add nuw nsw i32 %2450, 24
  %2461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.ResRet.f32 %2461, 1
  %2464 = extractvalue %dx.types.ResRet.f32 %2461, 2
  %2465 = add nuw nsw i32 %2450, 36
  %2466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.f32 %2466, 0
  %2468 = fsub fast float %2431, %2452
  %2469 = fsub fast float %2432, %2453
  %2470 = fsub fast float %2433, %2454
  %2471 = fmul fast float %2467, %2468
  %2472 = fmul fast float %2467, %2469
  %2473 = fmul fast float %2467, %2470
  %2474 = call float @dx.op.unary.f32(i32 27, float %2471)  ; Round_ni(value)
  %2475 = call float @dx.op.unary.f32(i32 27, float %2472)  ; Round_ni(value)
  %2476 = call float @dx.op.unary.f32(i32 27, float %2473)  ; Round_ni(value)
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fmul fast float %2477, %2457
  %2481 = fmul fast float %2478, %2458
  %2482 = fmul fast float %2479, %2459
  %2483 = shl i32 %42, 2
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %2485, 0
  %2487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2489 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2490 = call float @dx.op.unary.f32(i32 22, float %2482)  ; Frc(value)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2487, %dx.types.Handle %36, float %2488, float %2489, float %2490, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fmul fast float %2493, 1.023000e+03
  %2497 = fmul fast float %2494, 1.023000e+03
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2503 = call float @dx.op.unary.f32(i32 27, float %2500)  ; Round_ni(value)
  %2504 = fsub fast float %2471, %2474
  %2505 = fsub fast float %2472, %2475
  %2506 = fsub fast float %2473, %2476
  %2507 = fmul fast float %2504, 7.500000e-01
  %2508 = fmul fast float %2505, 7.500000e-01
  %2509 = fmul fast float %2506, 7.500000e-01
  %2510 = fadd fast float %2474, 1.250000e-01
  %2511 = fadd fast float %2510, %2507
  %2512 = fadd fast float %2511, %2501
  %2513 = fadd fast float %2475, 1.250000e-01
  %2514 = fadd fast float %2513, %2508
  %2515 = fadd fast float %2514, %2502
  %2516 = fadd fast float %2476, 1.250000e-01
  %2517 = fadd fast float %2516, %2509
  %2518 = fadd fast float %2517, %2503
  %2519 = fmul fast float %2512, %2462
  %2520 = fmul fast float %2515, %2463
  %2521 = fmul fast float %2518, %2464
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %2523, 0
  %2525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2525, %dx.types.Handle %34, float %2519, float %2520, float %2521, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  br label %2528

; <label>:2528                                    ; preds = %2449, %2438
  %2529 = phi float [ %2527, %2449 ], [ -1.000000e+00, %2438 ]
  %2530 = fadd fast float %2529, %2436
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br label %2532

; <label>:2532                                    ; preds = %2528, %2426
  %2533 = phi float [ %2531, %2528 ], [ %2436, %2426 ]
  %2534 = fmul fast float %2533, %462
  br label %2535

; <label>:2535                                    ; preds = %2532, %2421
  %2536 = phi float [ %2534, %2532 ], [ %462, %2421 ]
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 256
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2587, label %2541

; <label>:2541                                    ; preds = %2535
  %2542 = add i32 %41, 480
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = add i32 %2544, 0
  %2546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2547 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2546, %dx.types.Handle %84, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  %2549 = add i32 %41, 132
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = shl i32 %2551, 4
  %2553 = and i32 %2552, 32752
  %2554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2553)  ; LegacyF16ToF32(value)
  %2555 = lshr i32 %2551, 7
  %2556 = and i32 %2555, 32752
  %2557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2556)  ; LegacyF16ToF32(value)
  %2558 = fsub fast float 1.000000e+00, %2536
  %2559 = call float @dx.op.binary.f32(i32 35, float %2558, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2560 = bitcast float %2536 to i32
  %2561 = sitofp i32 %2560 to float
  %2562 = fadd fast float %2561, 0xC1CFBF8940000000
  %2563 = fmul fast float %2557, %2562
  %2564 = fadd fast float %2563, 0x41CFBF8940000000
  %2565 = fptosi float %2564 to i32
  %2566 = bitcast i32 %2565 to float
  %2567 = bitcast float %2559 to i32
  %2568 = sitofp i32 %2567 to float
  %2569 = fadd fast float %2568, 0xC1CFBF8940000000
  %2570 = fmul fast float %2569, %2557
  %2571 = fadd fast float %2570, 0x41CFBF8940000000
  %2572 = fptosi float %2571 to i32
  %2573 = bitcast i32 %2572 to float
  %2574 = fmul fast float %2566, %2554
  %2575 = fmul fast float %2573, %2554
  %2576 = fsub fast float %2559, %2574
  %2577 = fadd fast float %2575, %2559
  %2578 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2579 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2580 = fsub fast float %2548, %2578
  %2581 = fsub fast float %2579, %2578
  %2582 = bitcast float %2581 to i32
  %2583 = sub nsw i32 2129859010, %2582
  %2584 = bitcast i32 %2583 to float
  %2585 = fmul fast float %2584, %2580
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  br label %2587

; <label>:2587                                    ; preds = %2541, %2535
  %2588 = phi float [ %2586, %2541 ], [ %2536, %2535 ]
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 128
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2609, label %2593

; <label>:2593                                    ; preds = %2587
  %2594 = add i32 %41, 464
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = add i32 %2596, 0
  %2598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2598, %dx.types.Handle %84, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2600 = extractvalue %dx.types.ResRet.f32 %2599, 0
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 524288
  %2604 = icmp ne i32 %2603, 0
  %2605 = fcmp fast ogt float %2600, 0x3FE0101020000000
  %2606 = select i1 %2605, float 1.000000e+00, float 0.000000e+00
  %2607 = select i1 %2604, float %2606, float %2600
  %2608 = fmul fast float %2607, %2588
  br label %2609

; <label>:2609                                    ; preds = %2593, %2587
  %2610 = phi float [ %2608, %2593 ], [ %2588, %2587 ]
  %2611 = fcmp fast ult float %2610, 0x3F70101020000000
  br i1 %2611, label %3350, label %2612

; <label>:2612                                    ; preds = %2609
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 16
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2815, label %2617

; <label>:2617                                    ; preds = %2612
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = add i32 %41, 416
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %2622, 0
  %2624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2624, %dx.types.Handle %83, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.ResRet.f32 %2625, 1
  %2628 = extractvalue %dx.types.ResRet.f32 %2625, 2
  %2629 = extractvalue %dx.types.ResRet.f32 %2625, 3
  %2630 = and i32 %2619, 255
  %2631 = uitofp i32 %2630 to float
  %2632 = lshr i32 %2619, 8
  %2633 = and i32 %2632, 255
  %2634 = uitofp i32 %2633 to float
  %2635 = fmul fast float %2629, %2631
  %2636 = fadd fast float %2635, %2634
  %2637 = fmul fast float %2636, 0x3F70101000000000
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 512
  %2641 = icmp eq i32 %2640, 0
  br i1 %2641, label %2650, label %2642

; <label>:2642                                    ; preds = %2617
  %2643 = add i32 %41, 496
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = add i32 %2645, 0
  %2647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2647, %dx.types.Handle %84, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2649 = extractvalue %dx.types.ResRet.f32 %2648, 0
  br label %2650

; <label>:2650                                    ; preds = %2642, %2617
  %2651 = phi float [ %2649, %2642 ], [ 1.000000e+00, %2617 ]
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 33554432
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2762, label %2656

; <label>:2656                                    ; preds = %2650
  %2657 = add i32 %41, 256
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 65535
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = lshr i32 %2659, 16
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = add i32 %41, 260
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 65535
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = lshr i32 %2670, 24
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = and i32 %2670, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = lshr i32 %2670, 8
  %2678 = and i32 %2677, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = lshr i32 %2670, 16
  %2682 = and i32 %2681, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = add i32 %41, 252
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = lshr i32 %2687, 24
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = and i32 %2687, 255
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = lshr i32 %2687, 8
  %2695 = and i32 %2694, 255
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = lshr i32 %2687, 16
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = bitcast float %2626 to i32
  %2703 = ashr i32 %2702, 1
  %2704 = sub nsw i32 1597463174, %2703
  %2705 = bitcast i32 %2704 to float
  %2706 = fmul fast float %2626, 5.000000e-01
  %2707 = fmul fast float %2705, %2705
  %2708 = fmul fast float %2707, %2706
  %2709 = fsub fast float 1.500000e+00, %2708
  %2710 = fmul fast float %2705, %2626
  %2711 = fmul fast float %2710, %2709
  %2712 = bitcast float %2627 to i32
  %2713 = ashr i32 %2712, 1
  %2714 = sub nsw i32 1597463174, %2713
  %2715 = bitcast i32 %2714 to float
  %2716 = fmul fast float %2627, 5.000000e-01
  %2717 = fmul fast float %2715, %2715
  %2718 = fmul fast float %2717, %2716
  %2719 = fsub fast float 1.500000e+00, %2718
  %2720 = fmul fast float %2715, %2627
  %2721 = fmul fast float %2720, %2719
  %2722 = bitcast float %2628 to i32
  %2723 = ashr i32 %2722, 1
  %2724 = sub nsw i32 1597463174, %2723
  %2725 = bitcast i32 %2724 to float
  %2726 = fmul fast float %2628, 5.000000e-01
  %2727 = fmul fast float %2725, %2725
  %2728 = fmul fast float %2727, %2726
  %2729 = fsub fast float 1.500000e+00, %2728
  %2730 = fmul fast float %2725, %2628
  %2731 = fmul fast float %2730, %2729
  %2732 = fsub fast float %2711, %2693
  %2733 = fsub fast float %2721, %2697
  %2734 = fsub fast float %2731, %2701
  %2735 = fmul fast float %2732, %2661
  %2736 = fmul fast float %2733, %2663
  %2737 = fmul fast float %2734, %2668
  %2738 = fadd fast float %2735, %2676
  %2739 = fadd fast float %2736, %2680
  %2740 = fadd fast float %2737, %2684
  %2741 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2742 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2743 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2744 = fmul fast float %2741, %2741
  %2745 = fmul fast float %2742, %2742
  %2746 = fmul fast float %2743, %2743
  %2747 = fsub fast float %2744, %2626
  %2748 = fsub fast float %2745, %2627
  %2749 = fsub fast float %2746, %2628
  %2750 = fmul fast float %2747, %2651
  %2751 = fmul fast float %2748, %2651
  %2752 = fmul fast float %2749, %2651
  %2753 = fadd fast float %2750, %2626
  %2754 = fadd fast float %2751, %2627
  %2755 = fadd fast float %2752, %2628
  %2756 = fadd fast float %2673, %2637
  %2757 = fsub fast float %2756, %2690
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2759 = fsub fast float %2758, %2637
  %2760 = fmul fast float %2759, %2651
  %2761 = fadd fast float %2760, %2637
  br label %2815

; <label>:2762                                    ; preds = %2650
  %2763 = and i32 %2653, 134217728
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2799, label %2765

; <label>:2765                                    ; preds = %2762
  %2766 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fmul fast float %2769, %2651
  %2773 = fmul fast float %2770, %2651
  %2774 = fmul fast float %2771, %2651
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2779 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2780 = call float @dx.op.unary.f32(i32 24, float %2628)  ; Sqrt(value)
  %2781 = fmul fast float %2775, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fmul fast float %2782, %2778
  %2784 = fadd fast float %2783, %2781
  %2785 = fmul fast float %2784, %2778
  %2786 = fmul fast float %2776, 2.000000e+00
  %2787 = fsub fast float 1.000000e+00, %2786
  %2788 = fmul fast float %2787, %2779
  %2789 = fadd fast float %2788, %2786
  %2790 = fmul fast float %2789, %2779
  %2791 = fmul fast float %2777, 2.000000e+00
  %2792 = fsub fast float 1.000000e+00, %2791
  %2793 = fmul fast float %2792, %2780
  %2794 = fadd fast float %2793, %2791
  %2795 = fmul fast float %2794, %2780
  %2796 = fmul fast float %2785, %2785
  %2797 = fmul fast float %2790, %2790
  %2798 = fmul fast float %2795, %2795
  br label %2815

; <label>:2799                                    ; preds = %2762
  %2800 = fmul fast float %337, %337
  %2801 = fmul fast float %341, %341
  %2802 = fmul fast float %345, %345
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fadd fast float %2801, -1.000000e+00
  %2805 = fadd fast float %2802, -1.000000e+00
  %2806 = fmul fast float %2651, %2803
  %2807 = fmul fast float %2651, %2804
  %2808 = fmul fast float %2651, %2805
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fadd fast float %2807, 1.000000e+00
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fmul fast float %2809, %2626
  %2813 = fmul fast float %2810, %2627
  %2814 = fmul fast float %2811, %2628
  br label %2815

; <label>:2815                                    ; preds = %2799, %2765, %2656, %2612
  %2816 = phi float [ %2761, %2656 ], [ %2637, %2765 ], [ %2637, %2799 ], [ 0x3FA23C0BE0000000, %2612 ]
  %2817 = phi float [ %2753, %2656 ], [ %2796, %2765 ], [ %2812, %2799 ], [ 1.000000e+00, %2612 ]
  %2818 = phi float [ %2754, %2656 ], [ %2797, %2765 ], [ %2813, %2799 ], [ 1.000000e+00, %2612 ]
  %2819 = phi float [ %2755, %2656 ], [ %2798, %2765 ], [ %2814, %2799 ], [ 1.000000e+00, %2612 ]
  %2820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.i32 %2820, 1
  %2822 = and i32 %2821, 1
  %2823 = icmp ne i32 %2822, 0
  %2824 = add i32 %41, 356
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 32
  %2828 = icmp ne i32 %2827, 0
  %2829 = and i1 %2823, %2828
  %2830 = select i1 %2829, float 1.000000e+00, float %2817
  %2831 = select i1 %2829, float 0x3FD3333340000000, float %2818
  %2832 = select i1 %2829, float 0x3FD3333340000000, float %2819
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = and i32 %2834, 32
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %2909, label %2837

; <label>:2837                                    ; preds = %2815
  %2838 = add i32 %41, 124
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = add i32 %41, 432
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %83, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2851 = and i32 %2840, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = lshr i32 %2840, 8
  %2854 = and i32 %2853, 255
  %2855 = uitofp i32 %2854 to float
  %2856 = lshr i32 %2840, 16
  %2857 = and i32 %2856, 255
  %2858 = uitofp i32 %2857 to float
  %2859 = fmul fast float %2858, 0x3F70101000000000
  %2860 = fmul fast float %2847, %2852
  %2861 = fadd fast float %2860, %2855
  %2862 = fmul fast float %2861, 0x3F70101000000000
  %2863 = fadd fast float %2848, -5.000000e-01
  %2864 = fadd fast float %2850, -5.000000e-01
  %2865 = fmul fast float %2863, %2859
  %2866 = fmul fast float %2864, %2859
  %2867 = fadd fast float %2865, 5.000000e-01
  %2868 = fadd fast float %2866, 5.000000e-01
  %2869 = fmul fast float %2867, 2.000000e+00
  %2870 = fadd fast float %2869, -1.000000e+00
  %2871 = fmul fast float %2868, 2.000000e+00
  %2872 = fadd fast float %2871, -1.000000e+00
  %2873 = fadd fast float %2870, %2872
  %2874 = fmul fast float %2873, 5.000000e-01
  %2875 = fsub fast float %2870, %2872
  %2876 = fmul fast float %2875, 5.000000e-01
  %2877 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = call float @dx.op.unary.f32(i32 6, float %2876)  ; FAbs(value)
  %2880 = fsub fast float %2878, %2879
  %2881 = call float @dx.op.dot3.f32(i32 55, float %2874, float %2876, float %2880, float %2874, float %2876, float %2880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2882 = call float @dx.op.unary.f32(i32 25, float %2881)  ; Rsqrt(value)
  %2883 = fmul fast float %2874, %2882
  %2884 = fmul fast float %2876, %2882
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 67108864
  %2888 = icmp eq i32 %2887, 0
  br i1 %2888, label %2905, label %2889

; <label>:2889                                    ; preds = %2837
  %2890 = add i32 %41, 312
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 65535
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 65535
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = lshr i32 %2892, 16
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = fsub fast float %2862, %2900
  %2902 = fmul fast float %2901, %2894
  %2903 = fadd fast float %2902, %2898
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  br label %2905

; <label>:2905                                    ; preds = %2889, %2837
  %2906 = phi float [ %2904, %2889 ], [ %2862, %2837 ]
  %2907 = call float @dx.op.dot2.f32(i32 54, float %2883, float %2884, float %2326, float %2327)  ; Dot2(ax,ay,bx,by)
  %2908 = call float @dx.op.dot2.f32(i32 54, float %2883, float %2884, float %2328, float %2329)  ; Dot2(ax,ay,bx,by)
  br label %2909

; <label>:2909                                    ; preds = %2905, %2815
  %2910 = phi float [ %2906, %2905 ], [ 0x3FD6666660000000, %2815 ]
  %2911 = phi float [ %2907, %2905 ], [ 0.000000e+00, %2815 ]
  %2912 = phi float [ %2908, %2905 ], [ 0.000000e+00, %2815 ]
  %2913 = phi float [ %2849, %2905 ], [ 1.000000e+00, %2815 ]
  %2914 = add i32 %41, 192
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = lshr i32 %2916, 22
  %2918 = shl nuw nsw i32 %2917, 5
  %2919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2918)  ; LegacyF16ToF32(value)
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 64
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %2957, label %2924

; <label>:2924                                    ; preds = %2909
  %2925 = add i32 %41, 448
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %2927, 0
  %2929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 131072
  %2933 = icmp eq i32 %2932, 0
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2929, %dx.types.Handle %83, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.ResRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.ResRet.f32 %2934, 2
  %2938 = fmul fast float %2935, %325
  %2939 = fmul fast float %2936, %328
  %2940 = fmul fast float %2937, %331
  br i1 %2933, label %2947, label %2941

; <label>:2941                                    ; preds = %2924
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = fmul fast float %2943, %2938
  %2945 = fmul fast float %2943, %2939
  %2946 = fmul fast float %2943, %2940
  br label %2947

; <label>:2947                                    ; preds = %2941, %2924
  %2948 = phi float [ %2944, %2941 ], [ %2938, %2924 ]
  %2949 = phi float [ %2945, %2941 ], [ %2939, %2924 ]
  %2950 = phi float [ %2946, %2941 ], [ %2940, %2924 ]
  %2951 = fmul fast float %2948, %2919
  %2952 = select i1 %235, float %2951, float %2948
  %2953 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2949, float %2950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2954 = select i1 %235, float 0.000000e+00, float %2948
  %2955 = select i1 %235, float %2953, float %2949
  %2956 = select i1 %235, float 0.000000e+00, float %2950
  br label %2957

; <label>:2957                                    ; preds = %2947, %2909
  %2958 = phi float [ %2954, %2947 ], [ 0.000000e+00, %2909 ]
  %2959 = phi float [ %2955, %2947 ], [ 0.000000e+00, %2909 ]
  %2960 = phi float [ %2956, %2947 ], [ 0.000000e+00, %2909 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 1024
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %2995, label %2965

; <label>:2965                                    ; preds = %2957
  %2966 = add i32 %41, 184
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2968, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2968, 16
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = fmul fast float %2971, %2971
  %2981 = fmul fast float %2975, %2975
  %2982 = fmul fast float %2979, %2979
  %2983 = add i32 %41, 512
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %2985, 0
  %2987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2987, %dx.types.Handle %84, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.ResRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.ResRet.f32 %2988, 2
  %2992 = fmul fast float %2980, %2989
  %2993 = fmul fast float %2981, %2990
  %2994 = fmul fast float %2982, %2991
  br label %2995

; <label>:2995                                    ; preds = %2965, %2957
  %2996 = phi float [ %2992, %2965 ], [ 0.000000e+00, %2957 ]
  %2997 = phi float [ %2993, %2965 ], [ 0.000000e+00, %2957 ]
  %2998 = phi float [ %2994, %2965 ], [ 0.000000e+00, %2957 ]
  %2999 = fcmp fast ogt float %2996, 0.000000e+00
  %3000 = fcmp fast ogt float %2997, 0.000000e+00
  %3001 = fcmp fast ogt float %2998, 0.000000e+00
  %3002 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %3003 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %3004 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = lshr i32 %3006, 7
  %3008 = and i32 %3007, 32752
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = fmul fast float %3002, 0xBFE62E4300000000
  %3011 = fmul fast float %3010, %3009
  %3012 = fmul fast float %3003, 0xBFE62E4300000000
  %3013 = fmul fast float %3012, %3009
  %3014 = fmul fast float %3004, 0xBFE62E4300000000
  %3015 = fmul fast float %3014, %3009
  %3016 = select i1 %2999, float %3011, float 1.270000e+02
  %3017 = select i1 %3000, float %3013, float 1.270000e+02
  %3018 = select i1 %3001, float %3015, float 1.270000e+02
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 10240
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3067, label %3023

; <label>:3023                                    ; preds = %2995
  %3024 = add i32 %41, 528
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = add i32 %3026, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3028, %dx.types.Handle %84, float %2422, float %2423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 3
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 1048576
  %3035 = icmp ne i32 %3034, 0
  %3036 = and i32 %3033, 8192
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3053, label %3038

; <label>:3038                                    ; preds = %3023
  %3039 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3040 = select i1 %3035, float %3039, float %3030
  %3041 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3042 = select i1 %3035, float %3041, float %3030
  %3043 = add i32 %41, 128
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 16
  %3047 = and i32 %3046, 255
  %3048 = uitofp i32 %3047 to float
  %3049 = fmul fast float %3048, 0x3F80101020000000
  %3050 = fmul fast float %3049, %3042
  %3051 = fmul fast float %3049, %3030
  %3052 = fmul fast float %3049, %3040
  br label %3053

; <label>:3053                                    ; preds = %3038, %3023
  %3054 = phi float [ %3050, %3038 ], [ 0.000000e+00, %3023 ]
  %3055 = phi float [ %3051, %3038 ], [ 0.000000e+00, %3023 ]
  %3056 = phi float [ %3052, %3038 ], [ 0.000000e+00, %3023 ]
  %3057 = and i32 %3033, 2048
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3067, label %3059

; <label>:3059                                    ; preds = %3053
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = shl i32 %3061, 4
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = fmul fast float %3064, %3031
  %3066 = call float @dx.op.binary.f32(i32 35, float %3065, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3067

; <label>:3067                                    ; preds = %3059, %3053, %2995
  %3068 = phi float [ %3054, %3059 ], [ %3054, %3053 ], [ 0.000000e+00, %2995 ]
  %3069 = phi float [ %3055, %3059 ], [ %3055, %3053 ], [ 0.000000e+00, %2995 ]
  %3070 = phi float [ %3056, %3059 ], [ %3056, %3053 ], [ 0.000000e+00, %2995 ]
  %3071 = phi float [ %3066, %3059 ], [ 0x3F70101020000000, %3053 ], [ 0x3F70101020000000, %2995 ]
  %3072 = add i32 %41, 128
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = lshr i32 %3074, 8
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = call float @dx.op.dot3.f32(i32 55, float %2830, float %2831, float %2832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = fmul fast float %3079, %3080
  %3082 = fadd fast float %3081, %3076
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  br i1 %2314, label %3085, label %3120

; <label>:3085                                    ; preds = %3067
  %3086 = fmul fast float %3071, 2.000000e+00
  %3087 = fcmp fast olt float %3016, 1.270000e+02
  %3088 = fcmp fast olt float %3017, 1.270000e+02
  %3089 = fcmp fast olt float %3018, 1.270000e+02
  %3090 = fmul fast float %3016, 0xBFF7154760000000
  %3091 = fmul fast float %3090, %3086
  %3092 = fmul fast float %3017, 0xBFF7154760000000
  %3093 = fmul fast float %3092, %3086
  %3094 = fmul fast float %3018, 0xBFF7154760000000
  %3095 = fmul fast float %3094, %3086
  %3096 = call float @dx.op.unary.f32(i32 21, float %3091)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 21, float %3093)  ; Exp(value)
  %3098 = call float @dx.op.unary.f32(i32 21, float %3095)  ; Exp(value)
  %3099 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3101 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = select i1 %3087, float %3102, float -1.000000e+00
  %3104 = fadd fast float %3100, -1.000000e+00
  %3105 = select i1 %3088, float %3104, float -1.000000e+00
  %3106 = fadd fast float %3101, -1.000000e+00
  %3107 = select i1 %3089, float %3106, float -1.000000e+00
  %3108 = fmul fast float %3103, %2610
  %3109 = fmul fast float %3105, %2610
  %3110 = fmul fast float %3107, %2610
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fmul fast float %3111, %2296
  %3115 = fmul fast float %3112, %2297
  %3116 = fmul fast float %3113, %2298
  %3117 = fmul fast float %3111, %2299
  %3118 = fmul fast float %3112, %2300
  %3119 = fmul fast float %3113, %2301
  br label %3120

; <label>:3120                                    ; preds = %3085, %3067
  %3121 = phi float [ %3114, %3085 ], [ %2296, %3067 ]
  %3122 = phi float [ %3115, %3085 ], [ %2297, %3067 ]
  %3123 = phi float [ %3116, %3085 ], [ %2298, %3067 ]
  %3124 = phi float [ %3117, %3085 ], [ %2299, %3067 ]
  %3125 = phi float [ %3118, %3085 ], [ %2300, %3067 ]
  %3126 = phi float [ %3119, %3085 ], [ %2301, %3067 ]
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 3
  %3130 = icmp eq i32 %3129, 3
  br i1 %3130, label %3209, label %3131

; <label>:3131                                    ; preds = %3120
  %3132 = and i32 %3128, 16
  %3133 = icmp ne i32 %3132, 0
  %3134 = select i1 %3133, float %2610, float 0.000000e+00
  %3135 = icmp eq i32 %3129, 0
  br i1 %3135, label %3136, label %3164

; <label>:3136                                    ; preds = %3131
  %3137 = and i32 %3128, 64
  %3138 = icmp ne i32 %3137, 0
  %3139 = select i1 %3138, float %2610, float 0.000000e+00
  %3140 = fsub fast float %2830, %3121
  %3141 = fsub fast float %2831, %3122
  %3142 = fsub fast float %2832, %3123
  %3143 = fmul fast float %3134, %3140
  %3144 = fmul fast float %3134, %3141
  %3145 = fmul fast float %3134, %3142
  %3146 = fadd fast float %3143, %3121
  %3147 = fadd fast float %3144, %3122
  %3148 = fadd fast float %3145, %3123
  %3149 = fsub fast float %2816, %2308
  %3150 = fmul fast float %3134, %3149
  %3151 = fadd fast float %3150, %2308
  %3152 = fsub fast float %2958, %3124
  %3153 = fsub fast float %2959, %3125
  %3154 = fsub fast float %2960, %3126
  %3155 = fmul fast float %3139, %3152
  %3156 = fmul fast float %3139, %3153
  %3157 = fmul fast float %3139, %3154
  %3158 = fadd fast float %3155, %3124
  %3159 = fadd fast float %3156, %3125
  %3160 = fadd fast float %3157, %3126
  %3161 = fsub fast float %3084, %2312
  %3162 = fmul fast float %3134, %3161
  %3163 = fadd fast float %3162, %2312
  br label %3209

; <label>:3164                                    ; preds = %3131
  %3165 = icmp eq i32 %3129, 1
  br i1 %3165, label %3166, label %3179

; <label>:3166                                    ; preds = %3164
  %3167 = fadd fast float %2830, -1.000000e+00
  %3168 = fadd fast float %2831, -1.000000e+00
  %3169 = fadd fast float %2832, -1.000000e+00
  %3170 = fmul fast float %3134, %3167
  %3171 = fmul fast float %3134, %3168
  %3172 = fmul fast float %3134, %3169
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fadd fast float %3171, 1.000000e+00
  %3175 = fadd fast float %3172, 1.000000e+00
  %3176 = fmul fast float %3173, %3121
  %3177 = fmul fast float %3174, %3122
  %3178 = fmul fast float %3175, %3123
  br label %3209

; <label>:3179                                    ; preds = %3164
  %3180 = icmp eq i32 %3129, 2
  br i1 %3180, label %3181, label %3209

; <label>:3181                                    ; preds = %3179
  %3182 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %3183 = call float @dx.op.unary.f32(i32 24, float %2831)  ; Sqrt(value)
  %3184 = call float @dx.op.unary.f32(i32 24, float %2832)  ; Sqrt(value)
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fadd fast float %3184, -5.000000e-01
  %3188 = fmul fast float %3185, %3134
  %3189 = fmul fast float %3186, %3134
  %3190 = fmul fast float %3187, %3134
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = fadd fast float %3190, 5.000000e-01
  %3194 = fmul fast float %3191, 2.000000e+00
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3195, %3121
  %3197 = fadd fast float %3196, %3194
  %3198 = fmul fast float %3197, %3121
  %3199 = fmul fast float %3192, 2.000000e+00
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = fmul fast float %3200, %3122
  %3202 = fadd fast float %3201, %3199
  %3203 = fmul fast float %3202, %3122
  %3204 = fmul fast float %3193, 2.000000e+00
  %3205 = fsub fast float 1.000000e+00, %3204
  %3206 = fmul fast float %3205, %3123
  %3207 = fadd fast float %3206, %3204
  %3208 = fmul fast float %3207, %3123
  br label %3209

; <label>:3209                                    ; preds = %3181, %3179, %3166, %3136, %3120
  %3210 = phi float [ %3121, %3120 ], [ %3198, %3181 ], [ %3121, %3179 ], [ %3176, %3166 ], [ %3146, %3136 ]
  %3211 = phi float [ %3122, %3120 ], [ %3203, %3181 ], [ %3122, %3179 ], [ %3177, %3166 ], [ %3147, %3136 ]
  %3212 = phi float [ %3123, %3120 ], [ %3208, %3181 ], [ %3123, %3179 ], [ %3178, %3166 ], [ %3148, %3136 ]
  %3213 = phi float [ %3124, %3120 ], [ %3124, %3181 ], [ %3124, %3179 ], [ %3124, %3166 ], [ %3158, %3136 ]
  %3214 = phi float [ %3125, %3120 ], [ %3125, %3181 ], [ %3125, %3179 ], [ %3125, %3166 ], [ %3159, %3136 ]
  %3215 = phi float [ %3126, %3120 ], [ %3126, %3181 ], [ %3126, %3179 ], [ %3126, %3166 ], [ %3160, %3136 ]
  %3216 = phi float [ %2308, %3120 ], [ %2308, %3181 ], [ %2308, %3179 ], [ %2308, %3166 ], [ %3151, %3136 ]
  %3217 = phi float [ %2312, %3120 ], [ %2312, %3181 ], [ %2312, %3179 ], [ %2312, %3166 ], [ %3163, %3136 ]
  %3218 = and i32 %3128, 12
  %3219 = icmp eq i32 %3218, 12
  br i1 %3219, label %3350, label %3220

; <label>:3220                                    ; preds = %3209
  %3221 = and i32 %3128, 2097184
  %3222 = icmp eq i32 %3221, 2097184
  %3223 = select i1 %3222, float %2610, float 0.000000e+00
  %3224 = and i32 %3128, 4194336
  %3225 = icmp eq i32 %3224, 4194336
  %3226 = select i1 %3225, float %2610, float 0.000000e+00
  %3227 = and i32 %3128, 8388640
  %3228 = icmp eq i32 %3227, 8388640
  %3229 = select i1 %3228, float %2610, float 0.000000e+00
  %3230 = and i32 %3128, 1024
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2610, float 0.000000e+00
  %3233 = and i32 %3128, 2048
  %3234 = icmp ne i32 %3233, 0
  %3235 = select i1 %3234, float %2610, float 0.000000e+00
  %3236 = and i32 %3128, 8192
  %3237 = icmp ne i32 %3236, 0
  %3238 = select i1 %3237, float %2610, float 0.000000e+00
  %3239 = icmp eq i32 %3218, 0
  br i1 %3239, label %3240, label %3274

; <label>:3240                                    ; preds = %3220
  %3241 = fsub fast float %2911, %2294
  %3242 = fsub fast float %2912, %2295
  %3243 = fmul fast float %3223, %3241
  %3244 = fmul fast float %3223, %3242
  %3245 = fadd fast float %3243, %2294
  %3246 = fadd fast float %3244, %2295
  %3247 = fsub fast float %2913, %2310
  %3248 = fmul fast float %3226, %3247
  %3249 = fadd fast float %3248, %2310
  %3250 = fsub fast float %2910, %2309
  %3251 = fmul fast float %3229, %3250
  %3252 = fadd fast float %3251, %2309
  %3253 = fsub fast float %3016, %2305
  %3254 = fsub fast float %3017, %2306
  %3255 = fsub fast float %3018, %2307
  %3256 = fmul fast float %3232, %3253
  %3257 = fmul fast float %3232, %3254
  %3258 = fmul fast float %3232, %3255
  %3259 = fadd fast float %3256, %2305
  %3260 = fadd fast float %3257, %2306
  %3261 = fadd fast float %3258, %2307
  %3262 = fsub fast float %3071, %2311
  %3263 = fmul fast float %3235, %3262
  %3264 = fadd fast float %3263, %2311
  %3265 = fsub fast float %3068, %2302
  %3266 = fsub fast float %3069, %2303
  %3267 = fsub fast float %3070, %2304
  %3268 = fmul fast float %3238, %3265
  %3269 = fmul fast float %3238, %3266
  %3270 = fmul fast float %3238, %3267
  %3271 = fadd fast float %3268, %2302
  %3272 = fadd fast float %3269, %2303
  %3273 = fadd fast float %3270, %2304
  br label %3350

; <label>:3274                                    ; preds = %3220
  %3275 = icmp eq i32 %3218, 4
  br i1 %3275, label %3276, label %3322

; <label>:3276                                    ; preds = %3274
  %3277 = fmul fast float %3223, %2911
  %3278 = fmul fast float %3223, %2912
  %3279 = fadd fast float %3277, %2294
  %3280 = fadd fast float %3278, %2295
  %3281 = call float @dx.op.binary.f32(i32 36, float %2310, float %2913)  ; FMin(a,b)
  %3282 = fsub fast float %3281, %2310
  %3283 = fmul fast float %3282, %3226
  %3284 = fadd fast float %3283, %2310
  %3285 = fadd fast float %2910, %2309
  %3286 = fmul fast float %3285, 0x3FF337FAE0000000
  %3287 = fmul fast float %2309, %2309
  %3288 = fmul fast float %2910, %2910
  %3289 = fadd fast float %3288, %3287
  %3290 = fmul fast float %3289, 0x3FE5152B00000000
  %3291 = fmul fast float %2309, 0xBFCC1F85E0000000
  %3292 = fmul fast float %3291, %2910
  %3293 = fadd fast float %3292, 0xBFE1363700000000
  %3294 = fadd fast float %3293, %3286
  %3295 = fsub fast float %3294, %3290
  %3296 = fmul fast float %3285, 0x3FBA6F0D00000000
  %3297 = fmul fast float %3289, 0x3FD0432880000000
  %3298 = fmul fast float %2309, 0xBFEF110800000000
  %3299 = fmul fast float %3298, %2910
  %3300 = fadd fast float %3299, 1.000000e+00
  %3301 = fsub fast float %3300, %3296
  %3302 = fadd fast float %3301, %3297
  %3303 = fdiv fast float %3295, %3302
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  %3305 = fsub fast float %3304, %2309
  %3306 = fmul fast float %3305, %3229
  %3307 = fadd fast float %3306, %2309
  %3308 = fmul fast float %3232, %3016
  %3309 = fmul fast float %3232, %3017
  %3310 = fmul fast float %3232, %3018
  %3311 = fadd fast float %3308, %2305
  %3312 = fadd fast float %3309, %2306
  %3313 = fadd fast float %3310, %2307
  %3314 = fmul fast float %3235, %3071
  %3315 = fadd fast float %3314, %2311
  %3316 = fmul fast float %3238, %3068
  %3317 = fmul fast float %3238, %3069
  %3318 = fmul fast float %3238, %3070
  %3319 = fadd fast float %3316, %2302
  %3320 = fadd fast float %3317, %2303
  %3321 = fadd fast float %3318, %2304
  br label %3350

; <label>:3322                                    ; preds = %3274
  %3323 = icmp eq i32 %3218, 8
  br i1 %3323, label %3324, label %3350

; <label>:3324                                    ; preds = %3322
  %3325 = fmul fast float %3223, %2911
  %3326 = fmul fast float %3223, %2912
  %3327 = fadd fast float %3325, %2294
  %3328 = fadd fast float %3326, %2295
  %3329 = call float @dx.op.binary.f32(i32 36, float %2310, float %2913)  ; FMin(a,b)
  %3330 = fsub fast float %3329, %2310
  %3331 = fmul fast float %3330, %3226
  %3332 = fadd fast float %3331, %2310
  %3333 = fsub fast float %2910, %2309
  %3334 = fmul fast float %3229, %3333
  %3335 = fadd fast float %3334, %2309
  %3336 = fmul fast float %3232, %3016
  %3337 = fmul fast float %3232, %3017
  %3338 = fmul fast float %3232, %3018
  %3339 = fadd fast float %3336, %2305
  %3340 = fadd fast float %3337, %2306
  %3341 = fadd fast float %3338, %2307
  %3342 = fmul fast float %3235, %3071
  %3343 = fadd fast float %3342, %2311
  %3344 = fmul fast float %3238, %3068
  %3345 = fmul fast float %3238, %3069
  %3346 = fmul fast float %3238, %3070
  %3347 = fadd fast float %3344, %2302
  %3348 = fadd fast float %3345, %2303
  %3349 = fadd fast float %3346, %2304
  br label %3350

; <label>:3350                                    ; preds = %3324, %3322, %3276, %3240, %3209, %2609, %2313, %2293
  %3351 = phi float [ %2294, %3209 ], [ %2294, %2609 ], [ %2294, %2293 ], [ %3327, %3324 ], [ %2294, %3322 ], [ %3279, %3276 ], [ %3245, %3240 ], [ %2294, %2313 ]
  %3352 = phi float [ %2295, %3209 ], [ %2295, %2609 ], [ %2295, %2293 ], [ %3328, %3324 ], [ %2295, %3322 ], [ %3280, %3276 ], [ %3246, %3240 ], [ %2295, %2313 ]
  %3353 = phi float [ %3210, %3209 ], [ %2296, %2609 ], [ %2296, %2293 ], [ %3210, %3324 ], [ %3210, %3322 ], [ %3210, %3276 ], [ %3210, %3240 ], [ %2296, %2313 ]
  %3354 = phi float [ %3211, %3209 ], [ %2297, %2609 ], [ %2297, %2293 ], [ %3211, %3324 ], [ %3211, %3322 ], [ %3211, %3276 ], [ %3211, %3240 ], [ %2297, %2313 ]
  %3355 = phi float [ %3212, %3209 ], [ %2298, %2609 ], [ %2298, %2293 ], [ %3212, %3324 ], [ %3212, %3322 ], [ %3212, %3276 ], [ %3212, %3240 ], [ %2298, %2313 ]
  %3356 = phi float [ %3213, %3209 ], [ %2299, %2609 ], [ %2299, %2293 ], [ %3213, %3324 ], [ %3213, %3322 ], [ %3213, %3276 ], [ %3213, %3240 ], [ %2299, %2313 ]
  %3357 = phi float [ %3214, %3209 ], [ %2300, %2609 ], [ %2300, %2293 ], [ %3214, %3324 ], [ %3214, %3322 ], [ %3214, %3276 ], [ %3214, %3240 ], [ %2300, %2313 ]
  %3358 = phi float [ %3215, %3209 ], [ %2301, %2609 ], [ %2301, %2293 ], [ %3215, %3324 ], [ %3215, %3322 ], [ %3215, %3276 ], [ %3215, %3240 ], [ %2301, %2313 ]
  %3359 = phi float [ %2302, %3209 ], [ %2302, %2609 ], [ %2302, %2293 ], [ %3347, %3324 ], [ %2302, %3322 ], [ %3319, %3276 ], [ %3271, %3240 ], [ %2302, %2313 ]
  %3360 = phi float [ %2303, %3209 ], [ %2303, %2609 ], [ %2303, %2293 ], [ %3348, %3324 ], [ %2303, %3322 ], [ %3320, %3276 ], [ %3272, %3240 ], [ %2303, %2313 ]
  %3361 = phi float [ %2304, %3209 ], [ %2304, %2609 ], [ %2304, %2293 ], [ %3349, %3324 ], [ %2304, %3322 ], [ %3321, %3276 ], [ %3273, %3240 ], [ %2304, %2313 ]
  %3362 = phi float [ %2305, %3209 ], [ %2305, %2609 ], [ %2305, %2293 ], [ %3339, %3324 ], [ %2305, %3322 ], [ %3311, %3276 ], [ %3259, %3240 ], [ %2305, %2313 ]
  %3363 = phi float [ %2306, %3209 ], [ %2306, %2609 ], [ %2306, %2293 ], [ %3340, %3324 ], [ %2306, %3322 ], [ %3312, %3276 ], [ %3260, %3240 ], [ %2306, %2313 ]
  %3364 = phi float [ %2307, %3209 ], [ %2307, %2609 ], [ %2307, %2293 ], [ %3341, %3324 ], [ %2307, %3322 ], [ %3313, %3276 ], [ %3261, %3240 ], [ %2307, %2313 ]
  %3365 = phi float [ %3216, %3209 ], [ %2308, %2609 ], [ %2308, %2293 ], [ %3216, %3324 ], [ %3216, %3322 ], [ %3216, %3276 ], [ %3216, %3240 ], [ %2308, %2313 ]
  %3366 = phi float [ %2309, %3209 ], [ %2309, %2609 ], [ %2309, %2293 ], [ %3335, %3324 ], [ %2309, %3322 ], [ %3307, %3276 ], [ %3252, %3240 ], [ %2309, %2313 ]
  %3367 = phi float [ %2310, %3209 ], [ %2310, %2609 ], [ %2310, %2293 ], [ %3332, %3324 ], [ %2310, %3322 ], [ %3284, %3276 ], [ %3249, %3240 ], [ %2310, %2313 ]
  %3368 = phi float [ %2311, %3209 ], [ %2311, %2609 ], [ %2311, %2293 ], [ %3343, %3324 ], [ %2311, %3322 ], [ %3315, %3276 ], [ %3264, %3240 ], [ %2311, %2313 ]
  %3369 = phi float [ %3217, %3209 ], [ %2312, %2609 ], [ %2312, %2293 ], [ %3217, %3324 ], [ %3217, %3322 ], [ %3217, %3276 ], [ %3217, %3240 ], [ %2312, %2313 ]
  br i1 %412, label %4407, label %3370

; <label>:3370                                    ; preds = %3350
  %3371 = icmp ult i32 %466, 4
  %3372 = add i32 %41, 72
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = add i32 %41, 76
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = or i32 %3377, %3374
  %3379 = icmp eq i32 %3378, 0
  br i1 %3379, label %4407, label %3380

; <label>:3380                                    ; preds = %3370
  %3381 = and i32 %3374, 262144
  %3382 = icmp ne i32 %3381, 0
  %3383 = select i1 %3382, float %44, float 1.000000e+00
  %3384 = select i1 %3382, float %45, float 0.000000e+00
  %3385 = select i1 %3382, float %46, float 0.000000e+00
  %3386 = select i1 %3382, float %47, float 1.000000e+00
  %3387 = select i1 %3382, float %48, float %69
  %3388 = select i1 %3382, float %49, float %70
  %3389 = add i32 %41, 332
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 16
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = fmul fast float %3393, 0x3F50624DE0000000
  %3395 = add i32 %41, 136
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = lshr i32 %3397, 16
  %3399 = and i32 %3398, 255
  %3400 = lshr i32 %3397, 24
  %3401 = add i32 %41, 340
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 65535
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = lshr i32 %3403, 16
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = add i32 %41, 80
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = lshr i32 %3410, 22
  %3412 = shl nuw nsw i32 %3411, 5
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = shl i32 %3410, 4
  %3415 = and i32 %3414, 32752
  %3416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3415)  ; LegacyF16ToF32(value)
  %3417 = lshr i32 %3410, 7
  %3418 = and i32 %3417, 32752
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3421 = extractvalue %dx.types.CBufRet.f32 %3420, 3
  %3422 = fmul fast float %3421, 1.000000e+03
  %3423 = fmul fast float %402, %3422
  %3424 = call float @dx.op.unary.f32(i32 22, float %3423)  ; Frc(value)
  %3425 = fadd fast float %3424, %392
  %3426 = fmul fast float %403, %3422
  %3427 = call float @dx.op.unary.f32(i32 22, float %3426)  ; Frc(value)
  %3428 = fadd fast float %3427, %394
  %3429 = fmul fast float %3394, %3422
  %3430 = call float @dx.op.unary.f32(i32 22, float %3429)  ; Frc(value)
  %3431 = fmul fast float %3430, 0x401921FB60000000
  %3432 = fadd fast float %3431, %3413
  %3433 = call float @dx.op.unary.f32(i32 13, float %3432)  ; Sin(value)
  %3434 = call float @dx.op.unary.f32(i32 12, float %3432)  ; Cos(value)
  %3435 = fsub fast float -0.000000e+00, %3433
  %3436 = fadd fast float %3387, -5.000000e-01
  %3437 = fadd fast float %3388, -5.000000e-01
  %3438 = fmul fast float %3405, %3436
  %3439 = fmul fast float %3407, %3437
  %3440 = fadd fast float %3438, 5.000000e-01
  %3441 = fadd fast float %3439, 5.000000e-01
  %3442 = fmul fast float %3416, %3440
  %3443 = fmul fast float %3419, %3441
  %3444 = fmul fast float %3434, %3442
  %3445 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3443, float %3444)  ; FMad(a,b,c)
  %3446 = fmul fast float %3433, %3442
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3443, float %3446)  ; FMad(a,b,c)
  %3448 = fadd fast float %3425, %3445
  %3449 = fadd fast float %3428, %3447
  %3450 = icmp ugt i32 %3399, 1
  %3451 = icmp ugt i32 %3397, 33554431
  %3452 = or i1 %3451, %3450
  br i1 %3452, label %3453, label %3478

; <label>:3453                                    ; preds = %3380
  %3454 = add i32 %41, 276
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = lshr i32 %3456, 16
  %3458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3457)  ; LegacyF16ToF32(value)
  %3459 = fmul fast float %3421, %3458
  %3460 = call float @dx.op.unary.f32(i32 22, float %3459)  ; Frc(value)
  %3461 = mul nuw nsw i32 %3399, %3400
  %3462 = uitofp i32 %3461 to float
  %3463 = fmul fast float %3460, %3462
  %3464 = call float @dx.op.unary.f32(i32 27, float %3463)  ; Round_ni(value)
  %3465 = fptoui float %3464 to i32
  %3466 = urem i32 %3465, %3399
  %3467 = udiv i32 %3465, %3400
  %3468 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3469 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3470 = uitofp i32 %3466 to float
  %3471 = uitofp i32 %3467 to float
  %3472 = fadd fast float %3468, %3470
  %3473 = fadd fast float %3469, %3471
  %3474 = uitofp i32 %3399 to float
  %3475 = uitofp i32 %3400 to float
  %3476 = fdiv fast float %3472, %3474
  %3477 = fdiv fast float %3473, %3475
  br label %3478

; <label>:3478                                    ; preds = %3453, %3380
  %3479 = phi float [ %3476, %3453 ], [ %3448, %3380 ]
  %3480 = phi float [ %3477, %3453 ], [ %3449, %3380 ]
  %3481 = and i32 %3374, 16777216
  %3482 = icmp eq i32 %3481, 0
  br i1 %3482, label %3592, label %3483

; <label>:3483                                    ; preds = %3478
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3488 = fadd fast float %3485, %142
  %3489 = fadd fast float %3486, %143
  %3490 = fadd fast float %3487, %144
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = icmp eq i32 %42, 65535
  br i1 %3494, label %3589, label %3495

; <label>:3495                                    ; preds = %3483
  %3496 = lshr i32 %42, 1
  %3497 = shl i32 %3496, 2
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %42, 1
  %3501 = icmp ne i32 %3500, 0
  %3502 = lshr i32 %3499, 16
  %3503 = and i32 %3499, 65535
  %3504 = select i1 %3501, i32 %3502, i32 %3503
  %3505 = icmp eq i32 %3504, 65535
  br i1 %3505, label %3585, label %3506

; <label>:3506                                    ; preds = %3495
  %3507 = mul nuw nsw i32 %3504, 40
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = add nuw nsw i32 %3507, 12
  %3513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = add nuw nsw i32 %3507, 24
  %3518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3517, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = add nuw nsw i32 %3507, 36
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = fsub fast float %3488, %3509
  %3526 = fsub fast float %3489, %3510
  %3527 = fsub fast float %3490, %3511
  %3528 = fmul fast float %3524, %3525
  %3529 = fmul fast float %3524, %3526
  %3530 = fmul fast float %3524, %3527
  %3531 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3533 = call float @dx.op.unary.f32(i32 27, float %3530)  ; Round_ni(value)
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = fadd fast float %3532, 5.000000e-01
  %3536 = fadd fast float %3533, 5.000000e-01
  %3537 = fmul fast float %3534, %3514
  %3538 = fmul fast float %3535, %3515
  %3539 = fmul fast float %3536, %3516
  %3540 = shl i32 %42, 2
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = add i32 %3542, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3546 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3547 = call float @dx.op.unary.f32(i32 22, float %3539)  ; Frc(value)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3544, %dx.types.Handle %36, float %3545, float %3546, float %3547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = fmul fast float %3549, 1.023000e+03
  %3553 = fmul fast float %3550, 1.023000e+03
  %3554 = fmul fast float %3551, 1.023000e+03
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3560 = call float @dx.op.unary.f32(i32 27, float %3557)  ; Round_ni(value)
  %3561 = fsub fast float %3528, %3531
  %3562 = fsub fast float %3529, %3532
  %3563 = fsub fast float %3530, %3533
  %3564 = fmul fast float %3561, 7.500000e-01
  %3565 = fmul fast float %3562, 7.500000e-01
  %3566 = fmul fast float %3563, 7.500000e-01
  %3567 = fadd fast float %3531, 1.250000e-01
  %3568 = fadd fast float %3567, %3564
  %3569 = fadd fast float %3568, %3558
  %3570 = fadd fast float %3532, 1.250000e-01
  %3571 = fadd fast float %3570, %3565
  %3572 = fadd fast float %3571, %3559
  %3573 = fadd fast float %3533, 1.250000e-01
  %3574 = fadd fast float %3573, %3566
  %3575 = fadd fast float %3574, %3560
  %3576 = fmul fast float %3569, %3519
  %3577 = fmul fast float %3572, %3520
  %3578 = fmul fast float %3575, %3521
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = add i32 %3580, 0
  %3582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3582, %dx.types.Handle %34, float %3576, float %3577, float %3578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  br label %3585

; <label>:3585                                    ; preds = %3506, %3495
  %3586 = phi float [ %3584, %3506 ], [ -1.000000e+00, %3495 ]
  %3587 = fadd fast float %3586, %3493
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  br label %3589

; <label>:3589                                    ; preds = %3585, %3483
  %3590 = phi float [ %3588, %3585 ], [ %3493, %3483 ]
  %3591 = fmul fast float %3590, %461
  br label %3592

; <label>:3592                                    ; preds = %3589, %3478
  %3593 = phi float [ %3591, %3589 ], [ %461, %3478 ]
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = and i32 %3595, 256
  %3597 = icmp eq i32 %3596, 0
  br i1 %3597, label %3644, label %3598

; <label>:3598                                    ; preds = %3592
  %3599 = add i32 %41, 484
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %3601, 0
  %3603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3603, %dx.types.Handle %84, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = add i32 %41, 148
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = shl i32 %3608, 4
  %3610 = and i32 %3609, 32752
  %3611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3610)  ; LegacyF16ToF32(value)
  %3612 = lshr i32 %3608, 7
  %3613 = and i32 %3612, 32752
  %3614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3613)  ; LegacyF16ToF32(value)
  %3615 = fsub fast float 1.000000e+00, %3593
  %3616 = call float @dx.op.binary.f32(i32 35, float %3615, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3617 = bitcast float %3593 to i32
  %3618 = sitofp i32 %3617 to float
  %3619 = fadd fast float %3618, 0xC1CFBF8940000000
  %3620 = fmul fast float %3614, %3619
  %3621 = fadd fast float %3620, 0x41CFBF8940000000
  %3622 = fptosi float %3621 to i32
  %3623 = bitcast i32 %3622 to float
  %3624 = bitcast float %3616 to i32
  %3625 = sitofp i32 %3624 to float
  %3626 = fadd fast float %3625, 0xC1CFBF8940000000
  %3627 = fmul fast float %3626, %3614
  %3628 = fadd fast float %3627, 0x41CFBF8940000000
  %3629 = fptosi float %3628 to i32
  %3630 = bitcast i32 %3629 to float
  %3631 = fmul fast float %3623, %3611
  %3632 = fmul fast float %3630, %3611
  %3633 = fsub fast float %3616, %3631
  %3634 = fadd fast float %3632, %3616
  %3635 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3636 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3637 = fsub fast float %3605, %3635
  %3638 = fsub fast float %3636, %3635
  %3639 = bitcast float %3638 to i32
  %3640 = sub nsw i32 2129859010, %3639
  %3641 = bitcast i32 %3640 to float
  %3642 = fmul fast float %3641, %3637
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  br label %3644

; <label>:3644                                    ; preds = %3598, %3592
  %3645 = phi float [ %3643, %3598 ], [ %3593, %3592 ]
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = and i32 %3647, 128
  %3649 = icmp eq i32 %3648, 0
  br i1 %3649, label %3666, label %3650

; <label>:3650                                    ; preds = %3644
  %3651 = add i32 %41, 468
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = add i32 %3653, 0
  %3655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3655, %dx.types.Handle %84, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3659, 524288
  %3661 = icmp ne i32 %3660, 0
  %3662 = fcmp fast ogt float %3657, 0x3FE0101020000000
  %3663 = select i1 %3662, float 1.000000e+00, float 0.000000e+00
  %3664 = select i1 %3661, float %3663, float %3657
  %3665 = fmul fast float %3664, %3645
  br label %3666

; <label>:3666                                    ; preds = %3650, %3644
  %3667 = phi float [ %3665, %3650 ], [ %3645, %3644 ]
  %3668 = fcmp fast ult float %3667, 0x3F70101020000000
  br i1 %3668, label %4407, label %3669

; <label>:3669                                    ; preds = %3666
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = and i32 %3671, 16
  %3673 = icmp eq i32 %3672, 0
  br i1 %3673, label %3872, label %3674

; <label>:3674                                    ; preds = %3669
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = add i32 %41, 420
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = add i32 %3679, 0
  %3681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3681, %dx.types.Handle %83, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = and i32 %3676, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = lshr i32 %3676, 8
  %3690 = and i32 %3689, 255
  %3691 = uitofp i32 %3690 to float
  %3692 = fmul fast float %3686, %3688
  %3693 = fadd fast float %3692, %3691
  %3694 = fmul fast float %3693, 0x3F70101000000000
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 512
  %3698 = icmp eq i32 %3697, 0
  br i1 %3698, label %3707, label %3699

; <label>:3699                                    ; preds = %3674
  %3700 = add i32 %41, 500
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = add i32 %3702, 0
  %3704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3704, %dx.types.Handle %84, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  br label %3707

; <label>:3707                                    ; preds = %3699, %3674
  %3708 = phi float [ %3706, %3699 ], [ 1.000000e+00, %3674 ]
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 33554432
  %3712 = icmp eq i32 %3711, 0
  br i1 %3712, label %3819, label %3713

; <label>:3713                                    ; preds = %3707
  %3714 = add i32 %41, 272
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 65535
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = lshr i32 %3716, 16
  %3720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3719)  ; LegacyF16ToF32(value)
  %3721 = add i32 %41, 276
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 65535
  %3725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3724)  ; LegacyF16ToF32(value)
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = lshr i32 %3727, 24
  %3729 = uitofp i32 %3728 to float
  %3730 = fmul fast float %3729, 0x3F70101020000000
  %3731 = and i32 %3727, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101020000000
  %3734 = lshr i32 %3727, 8
  %3735 = and i32 %3734, 255
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3736, 0x3F70101020000000
  %3738 = lshr i32 %3727, 16
  %3739 = and i32 %3738, 255
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = add i32 %41, 268
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = lshr i32 %3744, 24
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = and i32 %3744, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = lshr i32 %3744, 8
  %3752 = and i32 %3751, 255
  %3753 = uitofp i32 %3752 to float
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = lshr i32 %3744, 16
  %3756 = and i32 %3755, 255
  %3757 = uitofp i32 %3756 to float
  %3758 = fmul fast float %3757, 0x3F70101020000000
  %3759 = bitcast float %3683 to i32
  %3760 = ashr i32 %3759, 1
  %3761 = sub nsw i32 1597463174, %3760
  %3762 = bitcast i32 %3761 to float
  %3763 = fmul fast float %3683, 5.000000e-01
  %3764 = fmul fast float %3762, %3762
  %3765 = fmul fast float %3764, %3763
  %3766 = fsub fast float 1.500000e+00, %3765
  %3767 = fmul fast float %3762, %3683
  %3768 = fmul fast float %3767, %3766
  %3769 = bitcast float %3684 to i32
  %3770 = ashr i32 %3769, 1
  %3771 = sub nsw i32 1597463174, %3770
  %3772 = bitcast i32 %3771 to float
  %3773 = fmul fast float %3684, 5.000000e-01
  %3774 = fmul fast float %3772, %3772
  %3775 = fmul fast float %3774, %3773
  %3776 = fsub fast float 1.500000e+00, %3775
  %3777 = fmul fast float %3772, %3684
  %3778 = fmul fast float %3777, %3776
  %3779 = bitcast float %3685 to i32
  %3780 = ashr i32 %3779, 1
  %3781 = sub nsw i32 1597463174, %3780
  %3782 = bitcast i32 %3781 to float
  %3783 = fmul fast float %3685, 5.000000e-01
  %3784 = fmul fast float %3782, %3782
  %3785 = fmul fast float %3784, %3783
  %3786 = fsub fast float 1.500000e+00, %3785
  %3787 = fmul fast float %3782, %3685
  %3788 = fmul fast float %3787, %3786
  %3789 = fsub fast float %3768, %3750
  %3790 = fsub fast float %3778, %3754
  %3791 = fsub fast float %3788, %3758
  %3792 = fmul fast float %3789, %3718
  %3793 = fmul fast float %3790, %3720
  %3794 = fmul fast float %3791, %3725
  %3795 = fadd fast float %3792, %3733
  %3796 = fadd fast float %3793, %3737
  %3797 = fadd fast float %3794, %3741
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3801 = fmul fast float %3798, %3798
  %3802 = fmul fast float %3799, %3799
  %3803 = fmul fast float %3800, %3800
  %3804 = fsub fast float %3801, %3683
  %3805 = fsub fast float %3802, %3684
  %3806 = fsub fast float %3803, %3685
  %3807 = fmul fast float %3804, %3708
  %3808 = fmul fast float %3805, %3708
  %3809 = fmul fast float %3806, %3708
  %3810 = fadd fast float %3807, %3683
  %3811 = fadd fast float %3808, %3684
  %3812 = fadd fast float %3809, %3685
  %3813 = fadd fast float %3730, %3694
  %3814 = fsub fast float %3813, %3747
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fsub fast float %3815, %3694
  %3817 = fmul fast float %3816, %3708
  %3818 = fadd fast float %3817, %3694
  br label %3872

; <label>:3819                                    ; preds = %3707
  %3820 = and i32 %3710, 134217728
  %3821 = icmp eq i32 %3820, 0
  br i1 %3821, label %3856, label %3822

; <label>:3822                                    ; preds = %3819
  %3823 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3824 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3825 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fadd fast float %3825, -5.000000e-01
  %3829 = fmul fast float %3826, %3708
  %3830 = fmul fast float %3827, %3708
  %3831 = fmul fast float %3828, %3708
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = fadd fast float %3831, 5.000000e-01
  %3835 = call float @dx.op.unary.f32(i32 24, float %3683)  ; Sqrt(value)
  %3836 = call float @dx.op.unary.f32(i32 24, float %3684)  ; Sqrt(value)
  %3837 = call float @dx.op.unary.f32(i32 24, float %3685)  ; Sqrt(value)
  %3838 = fmul fast float %3832, 2.000000e+00
  %3839 = fsub fast float 1.000000e+00, %3838
  %3840 = fmul fast float %3839, %3835
  %3841 = fadd fast float %3840, %3838
  %3842 = fmul fast float %3841, %3835
  %3843 = fmul fast float %3833, 2.000000e+00
  %3844 = fsub fast float 1.000000e+00, %3843
  %3845 = fmul fast float %3844, %3836
  %3846 = fadd fast float %3845, %3843
  %3847 = fmul fast float %3846, %3836
  %3848 = fmul fast float %3834, 2.000000e+00
  %3849 = fsub fast float 1.000000e+00, %3848
  %3850 = fmul fast float %3849, %3837
  %3851 = fadd fast float %3850, %3848
  %3852 = fmul fast float %3851, %3837
  %3853 = fmul fast float %3842, %3842
  %3854 = fmul fast float %3847, %3847
  %3855 = fmul fast float %3852, %3852
  br label %3872

; <label>:3856                                    ; preds = %3819
  %3857 = fmul fast float %379, %379
  %3858 = fmul fast float %383, %383
  %3859 = fmul fast float %387, %387
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fadd fast float %3859, -1.000000e+00
  %3863 = fmul fast float %3708, %3860
  %3864 = fmul fast float %3708, %3861
  %3865 = fmul fast float %3708, %3862
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fadd fast float %3864, 1.000000e+00
  %3868 = fadd fast float %3865, 1.000000e+00
  %3869 = fmul fast float %3866, %3683
  %3870 = fmul fast float %3867, %3684
  %3871 = fmul fast float %3868, %3685
  br label %3872

; <label>:3872                                    ; preds = %3856, %3822, %3713, %3669
  %3873 = phi float [ %3818, %3713 ], [ %3694, %3822 ], [ %3694, %3856 ], [ 0x3FA23C0BE0000000, %3669 ]
  %3874 = phi float [ %3810, %3713 ], [ %3853, %3822 ], [ %3869, %3856 ], [ 1.000000e+00, %3669 ]
  %3875 = phi float [ %3811, %3713 ], [ %3854, %3822 ], [ %3870, %3856 ], [ 1.000000e+00, %3669 ]
  %3876 = phi float [ %3812, %3713 ], [ %3855, %3822 ], [ %3871, %3856 ], [ 1.000000e+00, %3669 ]
  %3877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.i32 %3877, 1
  %3879 = and i32 %3878, 1
  %3880 = icmp ne i32 %3879, 0
  %3881 = add i32 %41, 356
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 32
  %3885 = icmp ne i32 %3884, 0
  %3886 = and i1 %3880, %3885
  %3887 = select i1 %3886, float 1.000000e+00, float %3874
  %3888 = select i1 %3886, float 0x3FD3333340000000, float %3875
  %3889 = select i1 %3886, float 0x3FD3333340000000, float %3876
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = and i32 %3891, 32
  %3893 = icmp eq i32 %3892, 0
  br i1 %3893, label %3966, label %3894

; <label>:3894                                    ; preds = %3872
  %3895 = add i32 %41, 140
  %3896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.i32 %3896, 0
  %3898 = add i32 %41, 436
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = add i32 %3900, 0
  %3902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3902, %dx.types.Handle %83, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = extractvalue %dx.types.ResRet.f32 %3903, 3
  %3908 = and i32 %3897, 255
  %3909 = uitofp i32 %3908 to float
  %3910 = lshr i32 %3897, 8
  %3911 = and i32 %3910, 255
  %3912 = uitofp i32 %3911 to float
  %3913 = lshr i32 %3897, 16
  %3914 = and i32 %3913, 255
  %3915 = uitofp i32 %3914 to float
  %3916 = fmul fast float %3915, 0x3F70101000000000
  %3917 = fmul fast float %3904, %3909
  %3918 = fadd fast float %3917, %3912
  %3919 = fmul fast float %3918, 0x3F70101000000000
  %3920 = fadd fast float %3905, -5.000000e-01
  %3921 = fadd fast float %3907, -5.000000e-01
  %3922 = fmul fast float %3920, %3916
  %3923 = fmul fast float %3921, %3916
  %3924 = fadd fast float %3922, 5.000000e-01
  %3925 = fadd fast float %3923, 5.000000e-01
  %3926 = fmul fast float %3924, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = fmul fast float %3925, 2.000000e+00
  %3929 = fadd fast float %3928, -1.000000e+00
  %3930 = fadd fast float %3927, %3929
  %3931 = fmul fast float %3930, 5.000000e-01
  %3932 = fsub fast float %3927, %3929
  %3933 = fmul fast float %3932, 5.000000e-01
  %3934 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3935 = fsub fast float 1.000000e+00, %3934
  %3936 = call float @dx.op.unary.f32(i32 6, float %3933)  ; FAbs(value)
  %3937 = fsub fast float %3935, %3936
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3931, float %3933, float %3937, float %3931, float %3933, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.unary.f32(i32 25, float %3938)  ; Rsqrt(value)
  %3940 = fmul fast float %3931, %3939
  %3941 = fmul fast float %3933, %3939
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 67108864
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %3962, label %3946

; <label>:3946                                    ; preds = %3894
  %3947 = add i32 %41, 328
  %3948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.i32 %3948, 0
  %3950 = and i32 %3949, 65535
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.i32 %3952, 0
  %3954 = and i32 %3953, 65535
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = lshr i32 %3949, 16
  %3957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3956)  ; LegacyF16ToF32(value)
  %3958 = fsub fast float %3919, %3957
  %3959 = fmul fast float %3958, %3951
  %3960 = fadd fast float %3959, %3955
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  br label %3962

; <label>:3962                                    ; preds = %3946, %3894
  %3963 = phi float [ %3961, %3946 ], [ %3919, %3894 ]
  %3964 = call float @dx.op.dot2.f32(i32 54, float %3940, float %3941, float %3383, float %3384)  ; Dot2(ax,ay,bx,by)
  %3965 = call float @dx.op.dot2.f32(i32 54, float %3940, float %3941, float %3385, float %3386)  ; Dot2(ax,ay,bx,by)
  br label %3966

; <label>:3966                                    ; preds = %3962, %3872
  %3967 = phi float [ %3963, %3962 ], [ 0x3FD6666660000000, %3872 ]
  %3968 = phi float [ %3964, %3962 ], [ 0.000000e+00, %3872 ]
  %3969 = phi float [ %3965, %3962 ], [ 0.000000e+00, %3872 ]
  %3970 = phi float [ %3906, %3962 ], [ 1.000000e+00, %3872 ]
  %3971 = add i32 %41, 208
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = lshr i32 %3973, 22
  %3975 = shl nuw nsw i32 %3974, 5
  %3976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3975)  ; LegacyF16ToF32(value)
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = and i32 %3978, 64
  %3980 = icmp eq i32 %3979, 0
  br i1 %3980, label %4014, label %3981

; <label>:3981                                    ; preds = %3966
  %3982 = add i32 %41, 452
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = add i32 %3984, 0
  %3986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.i32 %3987, 0
  %3989 = and i32 %3988, 131072
  %3990 = icmp eq i32 %3989, 0
  %3991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3986, %dx.types.Handle %83, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = fmul fast float %3992, %367
  %3996 = fmul fast float %3993, %370
  %3997 = fmul fast float %3994, %373
  br i1 %3990, label %4004, label %3998

; <label>:3998                                    ; preds = %3981
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = fmul fast float %4000, %3995
  %4002 = fmul fast float %4000, %3996
  %4003 = fmul fast float %4000, %3997
  br label %4004

; <label>:4004                                    ; preds = %3998, %3981
  %4005 = phi float [ %4001, %3998 ], [ %3995, %3981 ]
  %4006 = phi float [ %4002, %3998 ], [ %3996, %3981 ]
  %4007 = phi float [ %4003, %3998 ], [ %3997, %3981 ]
  %4008 = fmul fast float %4005, %3976
  %4009 = select i1 %235, float %4008, float %4005
  %4010 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4006, float %4007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4011 = select i1 %235, float 0.000000e+00, float %4005
  %4012 = select i1 %235, float %4010, float %4006
  %4013 = select i1 %235, float 0.000000e+00, float %4007
  br label %4014

; <label>:4014                                    ; preds = %4004, %3966
  %4015 = phi float [ %4011, %4004 ], [ 0.000000e+00, %3966 ]
  %4016 = phi float [ %4012, %4004 ], [ 0.000000e+00, %3966 ]
  %4017 = phi float [ %4013, %4004 ], [ 0.000000e+00, %3966 ]
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = and i32 %4019, 1024
  %4021 = icmp eq i32 %4020, 0
  br i1 %4021, label %4052, label %4022

; <label>:4022                                    ; preds = %4014
  %4023 = add i32 %41, 200
  %4024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.i32 %4024, 0
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = fmul fast float %4027, 0x3F70101020000000
  %4029 = lshr i32 %4025, 8
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4031, 0x3F70101020000000
  %4033 = lshr i32 %4025, 16
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = fmul fast float %4035, 0x3F70101020000000
  %4037 = fmul fast float %4028, %4028
  %4038 = fmul fast float %4032, %4032
  %4039 = fmul fast float %4036, %4036
  %4040 = add i32 %41, 516
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = add i32 %4042, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4044, %dx.types.Handle %84, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = fmul fast float %4037, %4046
  %4050 = fmul fast float %4038, %4047
  %4051 = fmul fast float %4039, %4048
  br label %4052

; <label>:4052                                    ; preds = %4022, %4014
  %4053 = phi float [ %4049, %4022 ], [ 0.000000e+00, %4014 ]
  %4054 = phi float [ %4050, %4022 ], [ 0.000000e+00, %4014 ]
  %4055 = phi float [ %4051, %4022 ], [ 0.000000e+00, %4014 ]
  %4056 = fcmp fast ogt float %4053, 0.000000e+00
  %4057 = fcmp fast ogt float %4054, 0.000000e+00
  %4058 = fcmp fast ogt float %4055, 0.000000e+00
  %4059 = call float @dx.op.unary.f32(i32 23, float %4053)  ; Log(value)
  %4060 = call float @dx.op.unary.f32(i32 23, float %4054)  ; Log(value)
  %4061 = call float @dx.op.unary.f32(i32 23, float %4055)  ; Log(value)
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = lshr i32 %4063, 7
  %4065 = and i32 %4064, 32752
  %4066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4065)  ; LegacyF16ToF32(value)
  %4067 = fmul fast float %4059, 0xBFE62E4300000000
  %4068 = fmul fast float %4067, %4066
  %4069 = fmul fast float %4060, 0xBFE62E4300000000
  %4070 = fmul fast float %4069, %4066
  %4071 = fmul fast float %4061, 0xBFE62E4300000000
  %4072 = fmul fast float %4071, %4066
  %4073 = select i1 %4056, float %4068, float 1.270000e+02
  %4074 = select i1 %4057, float %4070, float 1.270000e+02
  %4075 = select i1 %4058, float %4072, float 1.270000e+02
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = and i32 %4077, 10240
  %4079 = icmp eq i32 %4078, 0
  br i1 %4079, label %4124, label %4080

; <label>:4080                                    ; preds = %4052
  %4081 = add i32 %41, 532
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = add i32 %4083, 0
  %4085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4085, %dx.types.Handle %84, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 1
  %4088 = extractvalue %dx.types.ResRet.f32 %4086, 3
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = and i32 %4090, 1048576
  %4092 = icmp ne i32 %4091, 0
  %4093 = and i32 %4090, 8192
  %4094 = icmp eq i32 %4093, 0
  br i1 %4094, label %4110, label %4095

; <label>:4095                                    ; preds = %4080
  %4096 = extractvalue %dx.types.ResRet.f32 %4086, 2
  %4097 = select i1 %4092, float %4096, float %4087
  %4098 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4099 = select i1 %4092, float %4098, float %4087
  %4100 = add i32 %41, 144
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = lshr i32 %4102, 16
  %4104 = and i32 %4103, 255
  %4105 = uitofp i32 %4104 to float
  %4106 = fmul fast float %4105, 0x3F80101020000000
  %4107 = fmul fast float %4106, %4099
  %4108 = fmul fast float %4106, %4087
  %4109 = fmul fast float %4106, %4097
  br label %4110

; <label>:4110                                    ; preds = %4095, %4080
  %4111 = phi float [ %4107, %4095 ], [ 0.000000e+00, %4080 ]
  %4112 = phi float [ %4108, %4095 ], [ 0.000000e+00, %4080 ]
  %4113 = phi float [ %4109, %4095 ], [ 0.000000e+00, %4080 ]
  %4114 = and i32 %4090, 2048
  %4115 = icmp eq i32 %4114, 0
  br i1 %4115, label %4124, label %4116

; <label>:4116                                    ; preds = %4110
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = shl i32 %4118, 4
  %4120 = and i32 %4119, 32752
  %4121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4120)  ; LegacyF16ToF32(value)
  %4122 = fmul fast float %4121, %4088
  %4123 = call float @dx.op.binary.f32(i32 35, float %4122, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4124

; <label>:4124                                    ; preds = %4116, %4110, %4052
  %4125 = phi float [ %4111, %4116 ], [ %4111, %4110 ], [ 0.000000e+00, %4052 ]
  %4126 = phi float [ %4112, %4116 ], [ %4112, %4110 ], [ 0.000000e+00, %4052 ]
  %4127 = phi float [ %4113, %4116 ], [ %4113, %4110 ], [ 0.000000e+00, %4052 ]
  %4128 = phi float [ %4123, %4116 ], [ 0x3F70101020000000, %4110 ], [ 0x3F70101020000000, %4052 ]
  %4129 = add i32 %41, 144
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = and i32 %4131, 255
  %4133 = uitofp i32 %4132 to float
  %4134 = lshr i32 %4131, 8
  %4135 = and i32 %4134, 255
  %4136 = uitofp i32 %4135 to float
  %4137 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4138 = fmul fast float %4136, %4137
  %4139 = fadd fast float %4138, %4133
  %4140 = fmul fast float %4139, 0x3F70101020000000
  %4141 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  br i1 %3371, label %4142, label %4177

; <label>:4142                                    ; preds = %4124
  %4143 = fmul fast float %4128, 2.000000e+00
  %4144 = fcmp fast olt float %4073, 1.270000e+02
  %4145 = fcmp fast olt float %4074, 1.270000e+02
  %4146 = fcmp fast olt float %4075, 1.270000e+02
  %4147 = fmul fast float %4073, 0xBFF7154760000000
  %4148 = fmul fast float %4147, %4143
  %4149 = fmul fast float %4074, 0xBFF7154760000000
  %4150 = fmul fast float %4149, %4143
  %4151 = fmul fast float %4075, 0xBFF7154760000000
  %4152 = fmul fast float %4151, %4143
  %4153 = call float @dx.op.unary.f32(i32 21, float %4148)  ; Exp(value)
  %4154 = call float @dx.op.unary.f32(i32 21, float %4150)  ; Exp(value)
  %4155 = call float @dx.op.unary.f32(i32 21, float %4152)  ; Exp(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = fadd fast float %4156, -1.000000e+00
  %4160 = select i1 %4144, float %4159, float -1.000000e+00
  %4161 = fadd fast float %4157, -1.000000e+00
  %4162 = select i1 %4145, float %4161, float -1.000000e+00
  %4163 = fadd fast float %4158, -1.000000e+00
  %4164 = select i1 %4146, float %4163, float -1.000000e+00
  %4165 = fmul fast float %4160, %3667
  %4166 = fmul fast float %4162, %3667
  %4167 = fmul fast float %4164, %3667
  %4168 = fadd fast float %4165, 1.000000e+00
  %4169 = fadd fast float %4166, 1.000000e+00
  %4170 = fadd fast float %4167, 1.000000e+00
  %4171 = fmul fast float %4168, %3353
  %4172 = fmul fast float %4169, %3354
  %4173 = fmul fast float %4170, %3355
  %4174 = fmul fast float %4168, %3356
  %4175 = fmul fast float %4169, %3357
  %4176 = fmul fast float %4170, %3358
  br label %4177

; <label>:4177                                    ; preds = %4142, %4124
  %4178 = phi float [ %4171, %4142 ], [ %3353, %4124 ]
  %4179 = phi float [ %4172, %4142 ], [ %3354, %4124 ]
  %4180 = phi float [ %4173, %4142 ], [ %3355, %4124 ]
  %4181 = phi float [ %4174, %4142 ], [ %3356, %4124 ]
  %4182 = phi float [ %4175, %4142 ], [ %3357, %4124 ]
  %4183 = phi float [ %4176, %4142 ], [ %3358, %4124 ]
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = and i32 %4185, 3
  %4187 = icmp eq i32 %4186, 3
  br i1 %4187, label %4266, label %4188

; <label>:4188                                    ; preds = %4177
  %4189 = and i32 %4185, 16
  %4190 = icmp ne i32 %4189, 0
  %4191 = select i1 %4190, float %3667, float 0.000000e+00
  %4192 = icmp eq i32 %4186, 0
  br i1 %4192, label %4193, label %4221

; <label>:4193                                    ; preds = %4188
  %4194 = and i32 %4185, 64
  %4195 = icmp ne i32 %4194, 0
  %4196 = select i1 %4195, float %3667, float 0.000000e+00
  %4197 = fsub fast float %3887, %4178
  %4198 = fsub fast float %3888, %4179
  %4199 = fsub fast float %3889, %4180
  %4200 = fmul fast float %4191, %4197
  %4201 = fmul fast float %4191, %4198
  %4202 = fmul fast float %4191, %4199
  %4203 = fadd fast float %4200, %4178
  %4204 = fadd fast float %4201, %4179
  %4205 = fadd fast float %4202, %4180
  %4206 = fsub fast float %3873, %3365
  %4207 = fmul fast float %4191, %4206
  %4208 = fadd fast float %4207, %3365
  %4209 = fsub fast float %4015, %4181
  %4210 = fsub fast float %4016, %4182
  %4211 = fsub fast float %4017, %4183
  %4212 = fmul fast float %4196, %4209
  %4213 = fmul fast float %4196, %4210
  %4214 = fmul fast float %4196, %4211
  %4215 = fadd fast float %4212, %4181
  %4216 = fadd fast float %4213, %4182
  %4217 = fadd fast float %4214, %4183
  %4218 = fsub fast float %4141, %3369
  %4219 = fmul fast float %4191, %4218
  %4220 = fadd fast float %4219, %3369
  br label %4266

; <label>:4221                                    ; preds = %4188
  %4222 = icmp eq i32 %4186, 1
  br i1 %4222, label %4223, label %4236

; <label>:4223                                    ; preds = %4221
  %4224 = fadd fast float %3887, -1.000000e+00
  %4225 = fadd fast float %3888, -1.000000e+00
  %4226 = fadd fast float %3889, -1.000000e+00
  %4227 = fmul fast float %4191, %4224
  %4228 = fmul fast float %4191, %4225
  %4229 = fmul fast float %4191, %4226
  %4230 = fadd fast float %4227, 1.000000e+00
  %4231 = fadd fast float %4228, 1.000000e+00
  %4232 = fadd fast float %4229, 1.000000e+00
  %4233 = fmul fast float %4230, %4178
  %4234 = fmul fast float %4231, %4179
  %4235 = fmul fast float %4232, %4180
  br label %4266

; <label>:4236                                    ; preds = %4221
  %4237 = icmp eq i32 %4186, 2
  br i1 %4237, label %4238, label %4266

; <label>:4238                                    ; preds = %4236
  %4239 = call float @dx.op.unary.f32(i32 24, float %3887)  ; Sqrt(value)
  %4240 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %4241 = call float @dx.op.unary.f32(i32 24, float %3889)  ; Sqrt(value)
  %4242 = fadd fast float %4239, -5.000000e-01
  %4243 = fadd fast float %4240, -5.000000e-01
  %4244 = fadd fast float %4241, -5.000000e-01
  %4245 = fmul fast float %4242, %4191
  %4246 = fmul fast float %4243, %4191
  %4247 = fmul fast float %4244, %4191
  %4248 = fadd fast float %4245, 5.000000e-01
  %4249 = fadd fast float %4246, 5.000000e-01
  %4250 = fadd fast float %4247, 5.000000e-01
  %4251 = fmul fast float %4248, 2.000000e+00
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = fmul fast float %4252, %4178
  %4254 = fadd fast float %4253, %4251
  %4255 = fmul fast float %4254, %4178
  %4256 = fmul fast float %4249, 2.000000e+00
  %4257 = fsub fast float 1.000000e+00, %4256
  %4258 = fmul fast float %4257, %4179
  %4259 = fadd fast float %4258, %4256
  %4260 = fmul fast float %4259, %4179
  %4261 = fmul fast float %4250, 2.000000e+00
  %4262 = fsub fast float 1.000000e+00, %4261
  %4263 = fmul fast float %4262, %4180
  %4264 = fadd fast float %4263, %4261
  %4265 = fmul fast float %4264, %4180
  br label %4266

; <label>:4266                                    ; preds = %4238, %4236, %4223, %4193, %4177
  %4267 = phi float [ %4178, %4177 ], [ %4255, %4238 ], [ %4178, %4236 ], [ %4233, %4223 ], [ %4203, %4193 ]
  %4268 = phi float [ %4179, %4177 ], [ %4260, %4238 ], [ %4179, %4236 ], [ %4234, %4223 ], [ %4204, %4193 ]
  %4269 = phi float [ %4180, %4177 ], [ %4265, %4238 ], [ %4180, %4236 ], [ %4235, %4223 ], [ %4205, %4193 ]
  %4270 = phi float [ %4181, %4177 ], [ %4181, %4238 ], [ %4181, %4236 ], [ %4181, %4223 ], [ %4215, %4193 ]
  %4271 = phi float [ %4182, %4177 ], [ %4182, %4238 ], [ %4182, %4236 ], [ %4182, %4223 ], [ %4216, %4193 ]
  %4272 = phi float [ %4183, %4177 ], [ %4183, %4238 ], [ %4183, %4236 ], [ %4183, %4223 ], [ %4217, %4193 ]
  %4273 = phi float [ %3365, %4177 ], [ %3365, %4238 ], [ %3365, %4236 ], [ %3365, %4223 ], [ %4208, %4193 ]
  %4274 = phi float [ %3369, %4177 ], [ %3369, %4238 ], [ %3369, %4236 ], [ %3369, %4223 ], [ %4220, %4193 ]
  %4275 = and i32 %4185, 12
  %4276 = icmp eq i32 %4275, 12
  br i1 %4276, label %4407, label %4277

; <label>:4277                                    ; preds = %4266
  %4278 = and i32 %4185, 2097184
  %4279 = icmp eq i32 %4278, 2097184
  %4280 = select i1 %4279, float %3667, float 0.000000e+00
  %4281 = and i32 %4185, 4194336
  %4282 = icmp eq i32 %4281, 4194336
  %4283 = select i1 %4282, float %3667, float 0.000000e+00
  %4284 = and i32 %4185, 8388640
  %4285 = icmp eq i32 %4284, 8388640
  %4286 = select i1 %4285, float %3667, float 0.000000e+00
  %4287 = and i32 %4185, 1024
  %4288 = icmp ne i32 %4287, 0
  %4289 = select i1 %4288, float %3667, float 0.000000e+00
  %4290 = and i32 %4185, 2048
  %4291 = icmp ne i32 %4290, 0
  %4292 = select i1 %4291, float %3667, float 0.000000e+00
  %4293 = and i32 %4185, 8192
  %4294 = icmp ne i32 %4293, 0
  %4295 = select i1 %4294, float %3667, float 0.000000e+00
  %4296 = icmp eq i32 %4275, 0
  br i1 %4296, label %4297, label %4331

; <label>:4297                                    ; preds = %4277
  %4298 = fsub fast float %3968, %3351
  %4299 = fsub fast float %3969, %3352
  %4300 = fmul fast float %4280, %4298
  %4301 = fmul fast float %4280, %4299
  %4302 = fadd fast float %4300, %3351
  %4303 = fadd fast float %4301, %3352
  %4304 = fsub fast float %3970, %3367
  %4305 = fmul fast float %4283, %4304
  %4306 = fadd fast float %4305, %3367
  %4307 = fsub fast float %3967, %3366
  %4308 = fmul fast float %4286, %4307
  %4309 = fadd fast float %4308, %3366
  %4310 = fsub fast float %4073, %3362
  %4311 = fsub fast float %4074, %3363
  %4312 = fsub fast float %4075, %3364
  %4313 = fmul fast float %4289, %4310
  %4314 = fmul fast float %4289, %4311
  %4315 = fmul fast float %4289, %4312
  %4316 = fadd fast float %4313, %3362
  %4317 = fadd fast float %4314, %3363
  %4318 = fadd fast float %4315, %3364
  %4319 = fsub fast float %4128, %3368
  %4320 = fmul fast float %4292, %4319
  %4321 = fadd fast float %4320, %3368
  %4322 = fsub fast float %4125, %3359
  %4323 = fsub fast float %4126, %3360
  %4324 = fsub fast float %4127, %3361
  %4325 = fmul fast float %4295, %4322
  %4326 = fmul fast float %4295, %4323
  %4327 = fmul fast float %4295, %4324
  %4328 = fadd fast float %4325, %3359
  %4329 = fadd fast float %4326, %3360
  %4330 = fadd fast float %4327, %3361
  br label %4407

; <label>:4331                                    ; preds = %4277
  %4332 = icmp eq i32 %4275, 4
  br i1 %4332, label %4333, label %4379

; <label>:4333                                    ; preds = %4331
  %4334 = fmul fast float %4280, %3968
  %4335 = fmul fast float %4280, %3969
  %4336 = fadd fast float %4334, %3351
  %4337 = fadd fast float %4335, %3352
  %4338 = call float @dx.op.binary.f32(i32 36, float %3367, float %3970)  ; FMin(a,b)
  %4339 = fsub fast float %4338, %3367
  %4340 = fmul fast float %4339, %4283
  %4341 = fadd fast float %4340, %3367
  %4342 = fadd fast float %3967, %3366
  %4343 = fmul fast float %4342, 0x3FF337FAE0000000
  %4344 = fmul fast float %3366, %3366
  %4345 = fmul fast float %3967, %3967
  %4346 = fadd fast float %4345, %4344
  %4347 = fmul fast float %4346, 0x3FE5152B00000000
  %4348 = fmul fast float %3366, 0xBFCC1F85E0000000
  %4349 = fmul fast float %4348, %3967
  %4350 = fadd fast float %4349, 0xBFE1363700000000
  %4351 = fadd fast float %4350, %4343
  %4352 = fsub fast float %4351, %4347
  %4353 = fmul fast float %4342, 0x3FBA6F0D00000000
  %4354 = fmul fast float %4346, 0x3FD0432880000000
  %4355 = fmul fast float %3366, 0xBFEF110800000000
  %4356 = fmul fast float %4355, %3967
  %4357 = fadd fast float %4356, 1.000000e+00
  %4358 = fsub fast float %4357, %4353
  %4359 = fadd fast float %4358, %4354
  %4360 = fdiv fast float %4352, %4359
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fsub fast float %4361, %3366
  %4363 = fmul fast float %4362, %4286
  %4364 = fadd fast float %4363, %3366
  %4365 = fmul fast float %4289, %4073
  %4366 = fmul fast float %4289, %4074
  %4367 = fmul fast float %4289, %4075
  %4368 = fadd fast float %4365, %3362
  %4369 = fadd fast float %4366, %3363
  %4370 = fadd fast float %4367, %3364
  %4371 = fmul fast float %4292, %4128
  %4372 = fadd fast float %4371, %3368
  %4373 = fmul fast float %4295, %4125
  %4374 = fmul fast float %4295, %4126
  %4375 = fmul fast float %4295, %4127
  %4376 = fadd fast float %4373, %3359
  %4377 = fadd fast float %4374, %3360
  %4378 = fadd fast float %4375, %3361
  br label %4407

; <label>:4379                                    ; preds = %4331
  %4380 = icmp eq i32 %4275, 8
  br i1 %4380, label %4381, label %4407

; <label>:4381                                    ; preds = %4379
  %4382 = fmul fast float %4280, %3968
  %4383 = fmul fast float %4280, %3969
  %4384 = fadd fast float %4382, %3351
  %4385 = fadd fast float %4383, %3352
  %4386 = call float @dx.op.binary.f32(i32 36, float %3367, float %3970)  ; FMin(a,b)
  %4387 = fsub fast float %4386, %3367
  %4388 = fmul fast float %4387, %4283
  %4389 = fadd fast float %4388, %3367
  %4390 = fsub fast float %3967, %3366
  %4391 = fmul fast float %4286, %4390
  %4392 = fadd fast float %4391, %3366
  %4393 = fmul fast float %4289, %4073
  %4394 = fmul fast float %4289, %4074
  %4395 = fmul fast float %4289, %4075
  %4396 = fadd fast float %4393, %3362
  %4397 = fadd fast float %4394, %3363
  %4398 = fadd fast float %4395, %3364
  %4399 = fmul fast float %4292, %4128
  %4400 = fadd fast float %4399, %3368
  %4401 = fmul fast float %4295, %4125
  %4402 = fmul fast float %4295, %4126
  %4403 = fmul fast float %4295, %4127
  %4404 = fadd fast float %4401, %3359
  %4405 = fadd fast float %4402, %3360
  %4406 = fadd fast float %4403, %3361
  br label %4407

; <label>:4407                                    ; preds = %4381, %4379, %4333, %4297, %4266, %3666, %3370, %3350
  %4408 = phi float [ %3351, %4266 ], [ %3351, %3666 ], [ %3351, %3350 ], [ %3351, %3370 ], [ %4302, %4297 ], [ %4336, %4333 ], [ %3351, %4379 ], [ %4384, %4381 ]
  %4409 = phi float [ %3352, %4266 ], [ %3352, %3666 ], [ %3352, %3350 ], [ %3352, %3370 ], [ %4303, %4297 ], [ %4337, %4333 ], [ %3352, %4379 ], [ %4385, %4381 ]
  %4410 = phi float [ %4267, %4266 ], [ %3353, %3666 ], [ %3353, %3350 ], [ %3353, %3370 ], [ %4267, %4297 ], [ %4267, %4333 ], [ %4267, %4379 ], [ %4267, %4381 ]
  %4411 = phi float [ %4268, %4266 ], [ %3354, %3666 ], [ %3354, %3350 ], [ %3354, %3370 ], [ %4268, %4297 ], [ %4268, %4333 ], [ %4268, %4379 ], [ %4268, %4381 ]
  %4412 = phi float [ %4269, %4266 ], [ %3355, %3666 ], [ %3355, %3350 ], [ %3355, %3370 ], [ %4269, %4297 ], [ %4269, %4333 ], [ %4269, %4379 ], [ %4269, %4381 ]
  %4413 = phi float [ %4270, %4266 ], [ %3356, %3666 ], [ %3356, %3350 ], [ %3356, %3370 ], [ %4270, %4297 ], [ %4270, %4333 ], [ %4270, %4379 ], [ %4270, %4381 ]
  %4414 = phi float [ %4271, %4266 ], [ %3357, %3666 ], [ %3357, %3350 ], [ %3357, %3370 ], [ %4271, %4297 ], [ %4271, %4333 ], [ %4271, %4379 ], [ %4271, %4381 ]
  %4415 = phi float [ %4272, %4266 ], [ %3358, %3666 ], [ %3358, %3350 ], [ %3358, %3370 ], [ %4272, %4297 ], [ %4272, %4333 ], [ %4272, %4379 ], [ %4272, %4381 ]
  %4416 = phi float [ %3359, %4266 ], [ %3359, %3666 ], [ %3359, %3350 ], [ %3359, %3370 ], [ %4328, %4297 ], [ %4376, %4333 ], [ %3359, %4379 ], [ %4404, %4381 ]
  %4417 = phi float [ %3360, %4266 ], [ %3360, %3666 ], [ %3360, %3350 ], [ %3360, %3370 ], [ %4329, %4297 ], [ %4377, %4333 ], [ %3360, %4379 ], [ %4405, %4381 ]
  %4418 = phi float [ %3361, %4266 ], [ %3361, %3666 ], [ %3361, %3350 ], [ %3361, %3370 ], [ %4330, %4297 ], [ %4378, %4333 ], [ %3361, %4379 ], [ %4406, %4381 ]
  %4419 = phi float [ %3362, %4266 ], [ %3362, %3666 ], [ %3362, %3350 ], [ %3362, %3370 ], [ %4316, %4297 ], [ %4368, %4333 ], [ %3362, %4379 ], [ %4396, %4381 ]
  %4420 = phi float [ %3363, %4266 ], [ %3363, %3666 ], [ %3363, %3350 ], [ %3363, %3370 ], [ %4317, %4297 ], [ %4369, %4333 ], [ %3363, %4379 ], [ %4397, %4381 ]
  %4421 = phi float [ %3364, %4266 ], [ %3364, %3666 ], [ %3364, %3350 ], [ %3364, %3370 ], [ %4318, %4297 ], [ %4370, %4333 ], [ %3364, %4379 ], [ %4398, %4381 ]
  %4422 = phi float [ %4273, %4266 ], [ %3365, %3666 ], [ %3365, %3350 ], [ %3365, %3370 ], [ %4273, %4297 ], [ %4273, %4333 ], [ %4273, %4379 ], [ %4273, %4381 ]
  %4423 = phi float [ %3366, %4266 ], [ %3366, %3666 ], [ %3366, %3350 ], [ %3366, %3370 ], [ %4309, %4297 ], [ %4364, %4333 ], [ %3366, %4379 ], [ %4392, %4381 ]
  %4424 = phi float [ %3367, %4266 ], [ %3367, %3666 ], [ %3367, %3350 ], [ %3367, %3370 ], [ %4306, %4297 ], [ %4341, %4333 ], [ %3367, %4379 ], [ %4389, %4381 ]
  %4425 = phi float [ %3368, %4266 ], [ %3368, %3666 ], [ %3368, %3350 ], [ %3368, %3370 ], [ %4321, %4297 ], [ %4372, %4333 ], [ %3368, %4379 ], [ %4400, %4381 ]
  %4426 = phi float [ %4274, %4266 ], [ %3369, %3666 ], [ %3369, %3350 ], [ %3369, %3370 ], [ %4274, %4297 ], [ %4274, %4333 ], [ %4274, %4379 ], [ %4274, %4381 ]
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = call float @dx.op.dot2.f32(i32 54, float %4408, float %4409, float %4408, float %4409)  ; Dot2(ax,ay,bx,by)
  %4430 = fmul fast float %4429, 0x3FE3333340000000
  %4431 = fsub fast float 1.000000e+00, %4430
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4431, float %4408, float %4409, float %4431)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.unary.f32(i32 25, float %4432)  ; Rsqrt(value)
  %4434 = fmul fast float %4433, %4408
  %4435 = fmul fast float %4433, %4409
  %4436 = fmul fast float %4431, %4433
  %4437 = fmul fast float %4436, %94
  %4438 = fmul fast float %4436, %95
  %4439 = fmul fast float %4436, %96
  %4440 = fmul fast float %4434, %62
  %4441 = fmul fast float %4434, %63
  %4442 = fmul fast float %4434, %64
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = fmul fast float %106, %4435
  %4447 = fmul fast float %107, %4435
  %4448 = fmul fast float %108, %4435
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4445, %4448
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %4449, float %4450, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = call float @dx.op.unary.f32(i32 25, float %4452)  ; Rsqrt(value)
  %4454 = fmul fast float %4449, %4453
  %4455 = fmul fast float %4450, %4453
  %4456 = fmul fast float %4451, %4453
  %4457 = and i32 %43, 1
  %4458 = icmp eq i32 %4457, 0
  br i1 %4458, label %4459, label %5051

; <label>:4459                                    ; preds = %4407
  %4460 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %4462 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %4464 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %4465 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %4466 = fadd fast float %4460, %142
  %4467 = fadd fast float %4461, %143
  %4468 = fadd fast float %4462, %144
  %4469 = fadd fast float %4463, %142
  %4470 = fadd fast float %4464, %143
  %4471 = fadd fast float %4465, %144
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4472, 2
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4478 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4479 = fmul fast float %4473, %87
  %4480 = fmul fast float %4479, %4477
  %4481 = fmul fast float %4474, %88
  %4482 = fmul fast float %4481, %4478
  %4483 = fptoui float %4480 to i32
  %4484 = fptoui float %4482 to i32
  %4485 = fadd fast float %4473, -1.000000e+00
  %4486 = fadd fast float %4474, -1.000000e+00
  %4487 = fptoui float %4485 to i32
  %4488 = fptoui float %4486 to i32
  %4489 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4487)  ; UMin(a,b)
  %4490 = call i32 @dx.op.binary.i32(i32 40, i32 %4484, i32 %4488)  ; UMin(a,b)
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4494 = fmul fast float %4492, %78
  %4495 = fsub fast float %4494, %4493
  %4496 = fadd fast float %4475, -1.000000e+00
  %4497 = call float @dx.op.binary.f32(i32 36, float %4495, float %4496)  ; FMin(a,b)
  %4498 = fptoui float %4497 to i32
  %4499 = fptoui float %4473 to i32
  %4500 = fptoui float %4474 to i32
  %4501 = mul i32 %4498, %4500
  %4502 = add i32 %4501, %4490
  %4503 = mul i32 %4502, %4499
  %4504 = add i32 %4503, %4489
  %4505 = shl i32 %4504, 2
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.i32 %4506, 0
  %4508 = and i32 %4507, 1023
  %4509 = lshr i32 %4507, 10
  %4510 = icmp eq i32 %4508, 0
  br i1 %4510, label %5014, label %4511

; <label>:4511                                    ; preds = %4459
  %4512 = and i32 %4507, 1023
  br label %4513

; <label>:4513                                    ; preds = %4645, %4511
  %4514 = phi i32 [ %4595, %4645 ], [ 0, %4511 ]
  %4515 = phi float [ %4646, %4645 ], [ 0.000000e+00, %4511 ]
  %4516 = phi float [ %4647, %4645 ], [ %4428, %4511 ]
  %4517 = phi float [ %4648, %4645 ], [ %4426, %4511 ]
  %4518 = phi float [ %4649, %4645 ], [ %4419, %4511 ]
  %4519 = phi float [ %4650, %4645 ], [ %4420, %4511 ]
  %4520 = phi float [ %4651, %4645 ], [ %4421, %4511 ]
  %4521 = phi float [ %4652, %4645 ], [ 0.000000e+00, %4511 ]
  %4522 = phi float [ %4653, %4645 ], [ 0.000000e+00, %4511 ]
  %4523 = phi float [ %4654, %4645 ], [ %4416, %4511 ]
  %4524 = phi float [ %4655, %4645 ], [ %4417, %4511 ]
  %4525 = phi float [ %4656, %4645 ], [ %4418, %4511 ]
  %4526 = phi float [ %4657, %4645 ], [ %4413, %4511 ]
  %4527 = phi float [ %4658, %4645 ], [ %4414, %4511 ]
  %4528 = phi float [ %4659, %4645 ], [ %4415, %4511 ]
  %4529 = phi float [ %4660, %4645 ], [ %4454, %4511 ]
  %4530 = phi float [ %4661, %4645 ], [ %4455, %4511 ]
  %4531 = phi float [ %4662, %4645 ], [ %4456, %4511 ]
  %4532 = phi float [ %4663, %4645 ], [ %4424, %4511 ]
  %4533 = phi float [ %4664, %4645 ], [ %4423, %4511 ]
  %4534 = phi float [ %4665, %4645 ], [ 0.000000e+00, %4511 ]
  %4535 = phi float [ %4666, %4645 ], [ %4422, %4511 ]
  %4536 = phi float [ %4667, %4645 ], [ %4410, %4511 ]
  %4537 = phi float [ %4668, %4645 ], [ %4411, %4511 ]
  %4538 = phi float [ %4669, %4645 ], [ %4412, %4511 ]
  %4539 = add nuw nsw i32 %4514, %4509
  %4540 = shl i32 %4539, 2
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = shl i32 %4542, 8
  %4544 = or i32 %4543, 48
  %4545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = extractvalue %dx.types.ResRet.f32 %4545, 3
  %4550 = or i32 %4543, 64
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.i32 %4551, 1
  %4554 = or i32 %4543, 80
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4555, 3
  %4558 = or i32 %4543, 96
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4563 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4564 = or i32 %4543, 112
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4567 = or i32 %4543, 128
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4573 = or i32 %4543, 144
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4543, 160
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4543, 192
  %4586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.i32 %4586, 0
  %4588 = or i32 %4543, 208
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = or i32 %4543, 248
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = add nuw nsw i32 %4514, 1
  %4596 = bitcast float %4549 to i32
  %4597 = and i32 %4596, 512
  %4598 = icmp eq i32 %4597, 0
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4605 = or i32 %4543, 16
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = call float @dx.op.dot4.f32(i32 56, float %4607, float %4608, float %4609, float %4610, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4612 = or i32 %4543, 32
  %4613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.ResRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.ResRet.f32 %4613, 2
  %4617 = extractvalue %dx.types.ResRet.f32 %4613, 3
  %4618 = call float @dx.op.dot4.f32(i32 56, float %4614, float %4615, float %4616, float %4617, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4604)  ; Round_ni(value)
  %4620 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4621 = call float @dx.op.unary.f32(i32 27, float %4611)  ; Round_ni(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4621)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4624 = call float @dx.op.unary.f32(i32 27, float %4623)  ; Round_ni(value)
  %4625 = fadd fast float %4622, %4620
  %4626 = fadd fast float %4625, %4624
  %4627 = fcmp fast oeq float %4626, 0.000000e+00
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %4466, float %4467, float %4468, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4607, float %4608, float %4609, float %4610, float %4466, float %4467, float %4468, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %4469, float %4470, float %4471, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = call float @dx.op.dot4.f32(i32 56, float %4607, float %4608, float %4609, float %4610, float %4469, float %4470, float %4471, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4632 = fsub fast float %4628, %4604
  %4633 = fsub fast float %4630, %4604
  %4634 = fsub fast float %4629, %4611
  %4635 = fsub fast float %4631, %4611
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4547, float %4548, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 2
  %4639 = fadd fast float %4638, %4636
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4642 = fcmp fast ogt float %4640, %4641
  %4643 = and i1 %4627, %4642
  %4644 = and i1 %4598, %4643
  br i1 %4644, label %4671, label %4645

; <label>:4645                                    ; preds = %5000, %4752, %4671, %4513
  %4646 = phi float [ %4515, %4671 ], [ %4755, %4752 ], [ %4755, %5000 ], [ %4515, %4513 ]
  %4647 = phi float [ %4516, %4671 ], [ %4516, %4752 ], [ %4976, %5000 ], [ %4516, %4513 ]
  %4648 = phi float [ %4517, %4671 ], [ %4517, %4752 ], [ %4974, %5000 ], [ %4517, %4513 ]
  %4649 = phi float [ %4518, %4671 ], [ %4518, %4752 ], [ %4952, %5000 ], [ %4518, %4513 ]
  %4650 = phi float [ %4519, %4671 ], [ %4519, %4752 ], [ %4953, %5000 ], [ %4519, %4513 ]
  %4651 = phi float [ %4520, %4671 ], [ %4520, %4752 ], [ %4954, %5000 ], [ %4520, %4513 ]
  %4652 = phi float [ %4521, %4671 ], [ %4521, %4752 ], [ %4879, %5000 ], [ %4521, %4513 ]
  %4653 = phi float [ %4522, %4671 ], [ %4522, %4752 ], [ %4877, %5000 ], [ %4522, %4513 ]
  %4654 = phi float [ %4523, %4671 ], [ %4523, %4752 ], [ %4922, %5000 ], [ %4523, %4513 ]
  %4655 = phi float [ %4524, %4671 ], [ %4524, %4752 ], [ %4923, %5000 ], [ %4524, %4513 ]
  %4656 = phi float [ %4525, %4671 ], [ %4525, %4752 ], [ %4924, %5000 ], [ %4525, %4513 ]
  %4657 = phi float [ %4526, %4671 ], [ %4526, %4752 ], [ %5010, %5000 ], [ %4526, %4513 ]
  %4658 = phi float [ %4527, %4671 ], [ %4527, %4752 ], [ %5011, %5000 ], [ %4527, %4513 ]
  %4659 = phi float [ %4528, %4671 ], [ %4528, %4752 ], [ %5012, %5000 ], [ %4528, %4513 ]
  %4660 = phi float [ %4529, %4671 ], [ %4529, %4752 ], [ %4858, %5000 ], [ %4529, %4513 ]
  %4661 = phi float [ %4530, %4671 ], [ %4530, %4752 ], [ %4859, %5000 ], [ %4530, %4513 ]
  %4662 = phi float [ %4531, %4671 ], [ %4531, %4752 ], [ %4860, %5000 ], [ %4531, %4513 ]
  %4663 = phi float [ %4532, %4671 ], [ %4532, %4752 ], [ %4932, %5000 ], [ %4532, %4513 ]
  %4664 = phi float [ %4533, %4671 ], [ %4533, %4752 ], [ %4929, %5000 ], [ %4533, %4513 ]
  %4665 = phi float [ %4534, %4671 ], [ %4534, %4752 ], [ %4926, %5000 ], [ %4534, %4513 ]
  %4666 = phi float [ %4535, %4671 ], [ %4535, %4752 ], [ %4875, %5000 ], [ %4535, %4513 ]
  %4667 = phi float [ %4536, %4671 ], [ %4536, %4752 ], [ %4870, %5000 ], [ %4536, %4513 ]
  %4668 = phi float [ %4537, %4671 ], [ %4537, %4752 ], [ %4871, %5000 ], [ %4537, %4513 ]
  %4669 = phi float [ %4538, %4671 ], [ %4538, %4752 ], [ %4872, %5000 ], [ %4538, %4513 ]
  %4670 = icmp eq i32 %4595, %4512
  br i1 %4670, label %5013, label %4513

; <label>:4671                                    ; preds = %4513
  %4672 = extractvalue %dx.types.ResRet.f32 %4565, 3
  %4673 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4677 = extractvalue %dx.types.ResRet.i32 %4551, 3
  %4678 = extractvalue %dx.types.ResRet.i32 %4551, 2
  %4679 = add i32 %4677, 0
  %4680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4679, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4680, %dx.types.Handle %4681, float %4604, float %4611, float undef, float undef, i32 0, i32 0, i32 undef, float %4632, float %4634, float undef, float %4633, float %4635, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = fmul fast float %4683, %4676
  %4685 = fadd fast float %4684, %4675
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4604, %4560
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4611, float %4687)  ; FMad(a,b,c)
  %4689 = fadd fast float %4688, %4674
  %4690 = fmul fast float %4604, %4562
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4611, float %4690)  ; FMad(a,b,c)
  %4692 = fadd fast float %4691, %4673
  %4693 = fmul fast float %4632, %4560
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4634, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4632, %4562
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4634, float %4695)  ; FMad(a,b,c)
  %4697 = fmul fast float %4633, %4560
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4635, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4633, %4562
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4635, float %4699)  ; FMad(a,b,c)
  %4701 = add i32 %4678, 0
  %4702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4701, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4703 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4702, %dx.types.Handle %4681, float %4689, float %4692, float undef, float undef, i32 0, i32 0, i32 undef, float %4694, float %4696, float undef, float %4698, float %4700, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = and i32 %4596, 1024
  %4706 = icmp ne i32 %4705, 0
  %4707 = fcmp fast ogt float %4704, 0x3FE0101020000000
  %4708 = uitofp i1 %4707 to float
  %4709 = select i1 %4706, float %4708, float %4704
  %4710 = and i32 %4596, 8192
  %4711 = icmp ne i32 %4710, 0
  %4712 = select i1 %4711, float %4672, float 1.000000e+00
  %4713 = fmul fast float %4604, 2.000000e+00
  %4714 = fadd fast float %4713, -1.000000e+00
  %4715 = call float @dx.op.unary.f32(i32 6, float %4714)  ; FAbs(value)
  %4716 = fmul fast float %4715, %4593
  %4717 = fsub fast float %4716, %4593
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4611, 2.000000e+00
  %4720 = fadd fast float %4719, -1.000000e+00
  %4721 = call float @dx.op.unary.f32(i32 6, float %4720)  ; FAbs(value)
  %4722 = fmul fast float %4721, %4594
  %4723 = fsub fast float %4722, %4594
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4623, %4556
  %4726 = fsub fast float %4725, %4556
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fmul fast float %4686, %4712
  %4729 = fmul fast float %4728, %4683
  %4730 = fmul fast float %4729, %4718
  %4731 = fmul fast float %4730, %4709
  %4732 = fmul fast float %4731, %4724
  %4733 = fmul fast float %4732, %4727
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4737 = fsub fast float %4640, %4736
  %4738 = fmul fast float %4737, %4735
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4733, %4557
  %4741 = fadd fast float %4733, %4557
  %4742 = fmul fast float %4741, %4566
  %4743 = fsub fast float %4742, %4566
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = and i32 %4596, 128
  %4746 = icmp ne i32 %4745, 0
  %4747 = select i1 %4746, float %4744, float %4740
  %4748 = fmul fast float %4747, %4739
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4751 = fcmp fast ugt float %4748, %4750
  br i1 %4751, label %4752, label %4645

; <label>:4752                                    ; preds = %4671
  %4753 = select i1 %4711, float %4748, float 0.000000e+00
  %4754 = fadd fast float %4753, %4515
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  br i1 %4711, label %4645, label %4756

; <label>:4756                                    ; preds = %4752
  %4757 = and i32 %4596, 4
  %4758 = and i32 %4596, 8
  %4759 = add i32 %4552, 0
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4759, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4762 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4760, %dx.types.Handle %4761, float %4689, float %4692, float undef, float undef, i32 0, i32 0, i32 undef, float %4694, float %4696, float undef, float %4698, float %4700, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4762, 2
  %4766 = extractvalue %dx.types.ResRet.f32 %4762, 3
  %4767 = bitcast float %4578 to i32
  %4768 = and i32 %4767, 255
  %4769 = uitofp i32 %4768 to float
  %4770 = lshr i32 %4767, 8
  %4771 = and i32 %4770, 255
  %4772 = uitofp i32 %4771 to float
  %4773 = fmul fast float %4766, %4769
  %4774 = fadd fast float %4773, %4772
  %4775 = fmul fast float %4774, 0x3F70101000000000
  %4776 = add i32 %4553, 0
  %4777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4777, %dx.types.Handle %4761, float %4689, float %4692, float undef, float undef, i32 0, i32 0, i32 undef, float %4694, float %4696, float undef, float %4698, float %4700, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.ResRet.f32 %4778, 2
  %4782 = extractvalue %dx.types.ResRet.f32 %4778, 3
  %4783 = bitcast float %4572 to i32
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = lshr i32 %4783, 8
  %4787 = and i32 %4786, 255
  %4788 = uitofp i32 %4787 to float
  %4789 = lshr i32 %4783, 16
  %4790 = and i32 %4789, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = fmul fast float %4791, 0x3F70101000000000
  %4793 = fmul fast float %4779, %4785
  %4794 = fadd fast float %4793, %4788
  %4795 = fmul fast float %4794, 0x3F70101000000000
  %4796 = fadd fast float %4780, -5.000000e-01
  %4797 = fadd fast float %4782, -5.000000e-01
  %4798 = fmul fast float %4796, %4792
  %4799 = fmul fast float %4797, %4792
  %4800 = fadd fast float %4798, 5.000000e-01
  %4801 = fadd fast float %4799, 5.000000e-01
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4764, %4582
  %4804 = fmul fast float %4765, %4583
  %4805 = fmul fast float %4800, 2.000000e+00
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = fmul fast float %4801, 2.000000e+00
  %4808 = fadd fast float %4807, -1.000000e+00
  %4809 = fadd fast float %4806, %4808
  %4810 = fmul fast float %4809, 5.000000e-01
  %4811 = fsub fast float %4806, %4808
  %4812 = fmul fast float %4811, 5.000000e-01
  %4813 = call float @dx.op.unary.f32(i32 6, float %4810)  ; FAbs(value)
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = call float @dx.op.unary.f32(i32 6, float %4812)  ; FAbs(value)
  %4816 = fsub fast float %4814, %4815
  %4817 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4812, float %4816, float %4810, float %4812, float %4816)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call float @dx.op.unary.f32(i32 25, float %4817)  ; Rsqrt(value)
  %4819 = fmul fast float %4810, %4818
  %4820 = fmul fast float %4812, %4818
  %4821 = fmul fast float %4818, %4816
  %4822 = fmul fast float %4821, %4546
  %4823 = fmul fast float %4821, %4547
  %4824 = fmul fast float %4821, %4548
  %4825 = fmul fast float %4819, %4569
  %4826 = fmul fast float %4819, %4570
  %4827 = fmul fast float %4819, %4571
  %4828 = fadd fast float %4825, %4822
  %4829 = fadd fast float %4826, %4823
  %4830 = fadd fast float %4827, %4824
  %4831 = fmul fast float %4820, %4575
  %4832 = fmul fast float %4820, %4576
  %4833 = fmul fast float %4820, %4577
  %4834 = fadd fast float %4828, %4831
  %4835 = fadd fast float %4829, %4832
  %4836 = fadd fast float %4830, %4833
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.unary.f32(i32 25, float %4837)  ; Rsqrt(value)
  %4839 = fmul fast float %4834, %4838
  %4840 = fmul fast float %4835, %4838
  %4841 = fmul fast float %4836, %4838
  %4842 = icmp ne i32 %4758, 0
  %4843 = select i1 %4842, float 1.000000e+00, float 0.000000e+00
  %4844 = fmul fast float %4748, %4843
  %4845 = and i32 %4596, 1
  %4846 = icmp eq i32 %4845, 0
  br i1 %4846, label %4847, label %4851

; <label>:4847                                    ; preds = %4756
  %4848 = fsub fast float %4839, %4529
  %4849 = fsub fast float %4840, %4530
  %4850 = fsub fast float %4841, %4531
  br label %4851

; <label>:4851                                    ; preds = %4847, %4756
  %4852 = phi float [ %4848, %4847 ], [ %4839, %4756 ]
  %4853 = phi float [ %4849, %4847 ], [ %4840, %4756 ]
  %4854 = phi float [ %4850, %4847 ], [ %4841, %4756 ]
  %4855 = fmul float %4854, %4844
  %4856 = fmul float %4853, %4844
  %4857 = fmul float %4852, %4844
  %4858 = fadd fast float %4857, %4529
  %4859 = fadd fast float %4856, %4530
  %4860 = fadd fast float %4855, %4531
  %4861 = icmp ne i32 %4757, 0
  %4862 = select i1 %4861, float 1.000000e+00, float 0.000000e+00
  %4863 = fmul fast float %4748, %4862
  %4864 = fsub fast float %4802, %4536
  %4865 = fsub fast float %4803, %4537
  %4866 = fsub fast float %4804, %4538
  %4867 = fmul fast float %4864, %4863
  %4868 = fmul fast float %4865, %4863
  %4869 = fmul fast float %4866, %4863
  %4870 = fadd fast float %4867, %4536
  %4871 = fadd fast float %4868, %4537
  %4872 = fadd fast float %4869, %4538
  %4873 = fsub fast float %4775, %4535
  %4874 = fmul fast float %4873, %4863
  %4875 = fadd fast float %4874, %4535
  %4876 = fmul fast float %4863, %4522
  %4877 = fsub fast float %4522, %4876
  %4878 = fmul fast float %4863, %4521
  %4879 = fsub fast float %4521, %4878
  %4880 = bitcast float %4590 to i32
  %4881 = lshr i32 %4880, 16
  %4882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4881)  ; LegacyF16ToF32(value)
  %4883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4884 = extractvalue %dx.types.ResRet.i32 %4883, 0
  %4885 = and i32 %4884, 1
  %4886 = icmp eq i32 %4885, 0
  br i1 %4886, label %4887, label %4912

; <label>:4887                                    ; preds = %4851
  %4888 = fadd fast float %4775, 0xBFB99999A0000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4889, 0x3FF1C71C80000000
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, %4802
  %4894 = fmul fast float %4892, %4803
  %4895 = fmul fast float %4892, %4804
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4897, float %4898)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4896, float %4899)  ; FMax(a,b)
  %4901 = fcmp fast ogt float %4900, 0.000000e+00
  %4902 = bitcast float %4900 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = select i1 %4901, float %4904, float 0.000000e+00
  %4906 = fmul fast float %4896, %4882
  %4907 = fmul fast float %4897, %4882
  %4908 = fmul fast float %4898, %4882
  %4909 = fmul fast float %4906, %4905
  %4910 = fmul fast float %4907, %4905
  %4911 = fmul fast float %4908, %4905
  br label %4912

; <label>:4912                                    ; preds = %4887, %4851
  %4913 = phi float [ %4882, %4851 ], [ %4909, %4887 ]
  %4914 = phi float [ %4882, %4851 ], [ %4910, %4887 ]
  %4915 = phi float [ %4882, %4851 ], [ %4911, %4887 ]
  %4916 = fsub fast float %4913, %4523
  %4917 = fsub fast float %4914, %4524
  %4918 = fsub fast float %4915, %4525
  %4919 = fmul fast float %4916, %4863
  %4920 = fmul fast float %4917, %4863
  %4921 = fmul fast float %4918, %4863
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4920, %4524
  %4924 = fadd fast float %4921, %4525
  %4925 = fadd fast float %4748, %4534
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fsub fast float %4795, %4533
  %4928 = fmul fast float %4927, %4844
  %4929 = fadd fast float %4928, %4533
  %4930 = fsub fast float %4781, %4532
  %4931 = fmul fast float %4930, %4844
  %4932 = fadd fast float %4931, %4532
  br i1 %4846, label %4941, label %4933

; <label>:4933                                    ; preds = %4912
  %4934 = and i32 %4596, 32768
  %4935 = icmp eq i32 %4934, 0
  br i1 %4935, label %4951, label %4936

; <label>:4936                                    ; preds = %4933
  %4937 = fmul fast float %4844, 1.270000e+02
  %4938 = fadd fast float %4937, %4518
  %4939 = fadd fast float %4937, %4519
  %4940 = fadd fast float %4937, %4520
  br label %4951

; <label>:4941                                    ; preds = %4912
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fsub fast float 1.270000e+02, %4519
  %4944 = fsub fast float 1.270000e+02, %4520
  %4945 = fmul fast float %4844, %4942
  %4946 = fmul fast float %4844, %4943
  %4947 = fmul fast float %4844, %4944
  %4948 = fadd fast float %4945, %4518
  %4949 = fadd fast float %4946, %4519
  %4950 = fadd fast float %4947, %4520
  br label %4951

; <label>:4951                                    ; preds = %4941, %4936, %4933
  %4952 = phi float [ %4938, %4936 ], [ %4518, %4933 ], [ %4948, %4941 ]
  %4953 = phi float [ %4939, %4936 ], [ %4519, %4933 ], [ %4949, %4941 ]
  %4954 = phi float [ %4940, %4936 ], [ %4520, %4933 ], [ %4950, %4941 ]
  %4955 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.CBufRet.f32 %4956, 1
  %4959 = fmul fast float %4958, %4955
  %4960 = fadd fast float %4959, %4957
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = bitcast float %4584 to i32
  %4963 = and i32 %4962, 65535
  %4964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4963)  ; LegacyF16ToF32(value)
  %4965 = lshr i32 %4962, 16
  %4966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4965)  ; LegacyF16ToF32(value)
  %4967 = fcmp fast oge float %4964, 0.000000e+00
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = select i1 %4967, float %4964, float %4969
  %4971 = fadd fast float %4970, %4966
  %4972 = fsub fast float %4961, %4517
  %4973 = fmul fast float %4972, %4748
  %4974 = fadd fast float %4973, %4517
  %4975 = fmul fast float %4971, %4748
  %4976 = call float @dx.op.binary.f32(i32 35, float %4516, float %4975)  ; FMax(a,b)
  %4977 = and i32 %4596, 16
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %5000, label %4979

; <label>:4979                                    ; preds = %4951
  %4980 = add i32 %4587, 0
  %4981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4981, %dx.types.Handle %4761, float %4689, float %4692, float undef, float undef, i32 0, i32 0, i32 undef, float %4694, float %4696, float undef, float %4698, float %4700, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4983 = extractvalue %dx.types.ResRet.f32 %4982, 0
  %4984 = extractvalue %dx.types.ResRet.f32 %4982, 1
  %4985 = extractvalue %dx.types.ResRet.f32 %4982, 2
  %4986 = and i32 %4880, 65535
  %4987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4986)  ; LegacyF16ToF32(value)
  %4988 = fmul fast float %4983, %4581
  %4989 = fmul fast float %4984, %4582
  %4990 = fmul fast float %4985, %4583
  %4991 = and i32 %4596, 16384
  %4992 = icmp ne i32 %4991, 0
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = select i1 %4992, float %4994, float 1.000000e+00
  %4996 = fmul fast float %4995, %4987
  %4997 = fmul fast float %4988, %4996
  %4998 = fmul fast float %4989, %4996
  %4999 = fmul fast float %4990, %4996
  br label %5000

; <label>:5000                                    ; preds = %4979, %4951
  %5001 = phi float [ %4997, %4979 ], [ 0.000000e+00, %4951 ]
  %5002 = phi float [ %4998, %4979 ], [ 0.000000e+00, %4951 ]
  %5003 = phi float [ %4999, %4979 ], [ 0.000000e+00, %4951 ]
  %5004 = fsub fast float %5001, %4526
  %5005 = fsub fast float %5002, %4527
  %5006 = fsub fast float %5003, %4528
  %5007 = fmul fast float %5004, %4748
  %5008 = fmul fast float %5005, %4748
  %5009 = fmul fast float %5006, %4748
  %5010 = fadd fast float %5007, %4526
  %5011 = fadd fast float %5008, %4527
  %5012 = fadd fast float %5009, %4528
  br label %4645

; <label>:5013                                    ; preds = %4645
  br label %5014

; <label>:5014                                    ; preds = %5013, %4459
  %5015 = phi float [ 0.000000e+00, %4459 ], [ %4646, %5013 ]
  %5016 = phi float [ %4428, %4459 ], [ %4647, %5013 ]
  %5017 = phi float [ %4426, %4459 ], [ %4648, %5013 ]
  %5018 = phi float [ %4419, %4459 ], [ %4649, %5013 ]
  %5019 = phi float [ %4420, %4459 ], [ %4650, %5013 ]
  %5020 = phi float [ %4421, %4459 ], [ %4651, %5013 ]
  %5021 = phi float [ 0.000000e+00, %4459 ], [ %4652, %5013 ]
  %5022 = phi float [ 0.000000e+00, %4459 ], [ %4653, %5013 ]
  %5023 = phi float [ %4416, %4459 ], [ %4654, %5013 ]
  %5024 = phi float [ %4417, %4459 ], [ %4655, %5013 ]
  %5025 = phi float [ %4418, %4459 ], [ %4656, %5013 ]
  %5026 = phi float [ %4413, %4459 ], [ %4657, %5013 ]
  %5027 = phi float [ %4414, %4459 ], [ %4658, %5013 ]
  %5028 = phi float [ %4415, %4459 ], [ %4659, %5013 ]
  %5029 = phi float [ %4454, %4459 ], [ %4660, %5013 ]
  %5030 = phi float [ %4455, %4459 ], [ %4661, %5013 ]
  %5031 = phi float [ %4456, %4459 ], [ %4662, %5013 ]
  %5032 = phi float [ %4424, %4459 ], [ %4663, %5013 ]
  %5033 = phi float [ %4423, %4459 ], [ %4664, %5013 ]
  %5034 = phi float [ 0.000000e+00, %4459 ], [ %4665, %5013 ]
  %5035 = phi float [ %4422, %4459 ], [ %4666, %5013 ]
  %5036 = phi float [ %4410, %4459 ], [ %4667, %5013 ]
  %5037 = phi float [ %4411, %4459 ], [ %4668, %5013 ]
  %5038 = phi float [ %4412, %4459 ], [ %4669, %5013 ]
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %5029, float %5030, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5040, %5029
  %5042 = fmul fast float %5040, %5030
  %5043 = fmul fast float %5040, %5031
  %5044 = fadd fast float %5034, %1251
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call float @dx.op.unary.f32(i32 25, float %5046)  ; Rsqrt(value)
  %5048 = fmul fast float %5047, %5041
  %5049 = fmul fast float %5047, %5042
  %5050 = fmul fast float %5047, %5043
  br label %5051

; <label>:5051                                    ; preds = %5014, %4407
  %5052 = phi float [ %5048, %5014 ], [ %4454, %4407 ]
  %5053 = phi float [ %5049, %5014 ], [ %4455, %4407 ]
  %5054 = phi float [ %5050, %5014 ], [ %4456, %4407 ]
  %5055 = phi float [ %5036, %5014 ], [ %4410, %4407 ]
  %5056 = phi float [ %5037, %5014 ], [ %4411, %4407 ]
  %5057 = phi float [ %5038, %5014 ], [ %4412, %4407 ]
  %5058 = phi float [ %5023, %5014 ], [ %4416, %4407 ]
  %5059 = phi float [ %5024, %5014 ], [ %4417, %4407 ]
  %5060 = phi float [ %5025, %5014 ], [ %4418, %4407 ]
  %5061 = phi float [ %5026, %5014 ], [ %4413, %4407 ]
  %5062 = phi float [ %5027, %5014 ], [ %4414, %4407 ]
  %5063 = phi float [ %5028, %5014 ], [ %4415, %4407 ]
  %5064 = phi float [ %5018, %5014 ], [ %4419, %4407 ]
  %5065 = phi float [ %5019, %5014 ], [ %4420, %4407 ]
  %5066 = phi float [ %5020, %5014 ], [ %4421, %4407 ]
  %5067 = phi float [ %5035, %5014 ], [ %4422, %4407 ]
  %5068 = phi float [ %5045, %5014 ], [ %1251, %4407 ]
  %5069 = phi float [ %5033, %5014 ], [ %4423, %4407 ]
  %5070 = phi float [ %5032, %5014 ], [ %4424, %4407 ]
  %5071 = phi float [ %5022, %5014 ], [ 0.000000e+00, %4407 ]
  %5072 = phi float [ %5021, %5014 ], [ 0.000000e+00, %4407 ]
  %5073 = phi float [ %5015, %5014 ], [ 0.000000e+00, %4407 ]
  %5074 = phi float [ %5016, %5014 ], [ %4428, %4407 ]
  %5075 = phi float [ %5017, %5014 ], [ %4426, %4407 ]
  %5076 = add i32 %41, 392
  %5077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %5078 = extractvalue %dx.types.ResRet.i32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.i32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.i32 %5077, 2
  %5081 = extractvalue %dx.types.ResRet.i32 %5077, 3
  %5082 = bitcast i32 %5078 to float
  %5083 = bitcast i32 %5079 to float
  %5084 = bitcast i32 %5080 to float
  %5085 = bitcast i32 %5081 to float
  %5086 = fsub fast float %5055, %5082
  %5087 = fsub fast float %5056, %5083
  %5088 = fsub fast float %5057, %5084
  %5089 = fmul fast float %5086, %176
  %5090 = fmul fast float %5087, %176
  %5091 = fmul fast float %5088, %176
  %5092 = fadd fast float %5089, %5082
  %5093 = fadd fast float %5090, %5083
  %5094 = fadd fast float %5091, %5084
  %5095 = fsub fast float %5068, %5085
  %5096 = fmul fast float %5095, %176
  %5097 = fadd fast float %5096, %5085
  %5098 = fadd fast float %5067, 0xBFB99999A0000000
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = fmul fast float %5099, 0x3FF1C71C80000000
  %5101 = call float @dx.op.binary.f32(i32 36, float %5067, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5102 = fsub fast float 1.000000e+00, %5100
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %5092, %5103
  %5105 = fmul fast float %5093, %5103
  %5106 = fmul fast float %5094, %5103
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = fmul fast float %5092, %5100
  %5111 = fmul fast float %5093, %5100
  %5112 = fmul fast float %5094, %5100
  %5113 = fadd fast float %5110, %5101
  %5114 = fadd fast float %5111, %5101
  %5115 = fadd fast float %5112, %5101
  %5116 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5118 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5119 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5121 = extractvalue %dx.types.ResRet.i32 %5120, 0
  %5122 = and i32 %5121, 1
  %5123 = icmp eq i32 %5122, 0
  br i1 %5123, label %5138, label %5124

; <label>:5124                                    ; preds = %5051
  %5125 = call float @dx.op.binary.f32(i32 35, float %5108, float %5109)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %5107, float %5125)  ; FMax(a,b)
  %5127 = fcmp fast ogt float %5126, 0.000000e+00
  %5128 = bitcast float %5126 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = select i1 %5127, float %5130, float 0.000000e+00
  %5132 = fmul fast float %5107, %5058
  %5133 = fmul fast float %5108, %5059
  %5134 = fmul fast float %5109, %5060
  %5135 = fmul fast float %5132, %5131
  %5136 = fmul fast float %5133, %5131
  %5137 = fmul fast float %5134, %5131
  br label %5138

; <label>:5138                                    ; preds = %5124, %5051
  %5139 = phi float [ %5135, %5124 ], [ %5058, %5051 ]
  %5140 = phi float [ %5136, %5124 ], [ %5059, %5051 ]
  %5141 = phi float [ %5137, %5124 ], [ %5060, %5051 ]
  %5142 = call float @dx.op.binary.f32(i32 36, float %5064, float 1.270000e+02)  ; FMin(a,b)
  %5143 = call float @dx.op.binary.f32(i32 36, float %5065, float 1.270000e+02)  ; FMin(a,b)
  %5144 = call float @dx.op.binary.f32(i32 36, float %5066, float 1.270000e+02)  ; FMin(a,b)
  %5145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.i32 %5145, 3
  %5147 = and i32 %5146, 8
  %5148 = icmp ne i32 %5147, 0
  %5149 = call float @dx.op.binary.f32(i32 35, float %5107, float %5092)  ; FMax(a,b)
  %5150 = call float @dx.op.binary.f32(i32 35, float %5108, float %5092)  ; FMax(a,b)
  %5151 = call float @dx.op.binary.f32(i32 35, float %5109, float %5092)  ; FMax(a,b)
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = select i1 %235, float %5092, float %5107
  %5154 = select i1 %235, float %5152, float %5108
  %5155 = select i1 %235, float 1.000000e+00, float %5109
  %5156 = select i1 %5148, float %5149, float %5153
  %5157 = select i1 %5148, float %5150, float %5154
  %5158 = select i1 %5148, float %5151, float %5155
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = select i1 %235, float %5159, float %5139
  %5161 = select i1 %235, float %5159, float %5140
  %5162 = select i1 %235, float %5159, float %5141
  %5163 = and i32 %211, 3
  %5164 = select i1 %205, i32 %5163, i32 0
  %5165 = icmp eq i32 %5164, 1
  br i1 %5165, label %5166, label %5242

; <label>:5166                                    ; preds = %5138
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = fadd fast float %5168, %142
  %5171 = fadd fast float %5169, %143
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = fsub fast float %5170, %5173
  %5176 = fsub fast float %5171, %5174
  %5177 = fmul fast float %5175, %5175
  %5178 = fmul fast float %5176, %5176
  %5179 = fadd fast float %5177, %5178
  %5180 = call float @dx.op.unary.f32(i32 24, float %5179)  ; Sqrt(value)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5182 = fcmp fast olt float %5180, %5181
  br i1 %5182, label %5183, label %5236

; <label>:5183                                    ; preds = %5166
  %5184 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5185 = fadd fast float %5184, %144
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 0
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.CBufRet.f32 %5186, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5194 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5195 = extractvalue %dx.types.CBufRet.f32 %5186, 3
  %5196 = extractvalue %dx.types.CBufRet.f32 %5188, 3
  %5197 = extractvalue %dx.types.CBufRet.f32 %5190, 3
  %5198 = fadd fast float %5195, %5170
  %5199 = fadd fast float %5196, %5171
  %5200 = fadd fast float %5185, %5197
  %5201 = fmul fast float %5198, %5187
  %5202 = call float @dx.op.tertiary.f32(i32 46, float %5199, float %5189, float %5201)  ; FMad(a,b,c)
  %5203 = call float @dx.op.tertiary.f32(i32 46, float %5200, float %5191, float %5202)  ; FMad(a,b,c)
  %5204 = fmul fast float %5198, %5192
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5199, float %5193, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5200, float %5194, float %5205)  ; FMad(a,b,c)
  %5207 = fsub fast float %5203, %5195
  %5208 = fsub fast float %5206, %5196
  %5209 = fsub fast float %5207, %5173
  %5210 = fadd fast float %5209, %5181
  %5211 = fsub fast float %5208, %5174
  %5212 = fadd fast float %5211, %5181
  %5213 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5214 = fmul fast float %5210, %5213
  %5215 = fmul fast float %5212, %5213
  %5216 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5218 = fsub fast float 1.000000e+00, %5216
  %5219 = fsub fast float 1.000000e+00, %5217
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5218, float %5219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = fcmp fast ugt float %5221, 0.000000e+00
  br i1 %5222, label %5223, label %5236

; <label>:5223                                    ; preds = %5183
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5226 = fmul fast float %5225, %5221
  %5227 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5228 = fadd fast float %5227, %5226
  %5229 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5230 = fadd fast float %5228, %5197
  %5231 = fmul fast float %5203, %5191
  %5232 = call float @dx.op.tertiary.f32(i32 46, float %5206, float %5194, float %5231)  ; FMad(a,b,c)
  %5233 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5229, float %5232)  ; FMad(a,b,c)
  %5234 = fsub fast float %5233, %5197
  %5235 = fsub fast float %5234, %5184
  br label %5236

; <label>:5236                                    ; preds = %5223, %5183, %5166
  %5237 = phi i1 [ true, %5223 ], [ false, %5183 ], [ false, %5166 ]
  %5238 = phi float [ %5235, %5223 ], [ -1.310720e+05, %5183 ], [ -1.310720e+05, %5166 ]
  %5239 = fsub fast float %5238, %144
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = select i1 %5237, float %5240, float 1.000000e+00
  br label %5242

; <label>:5242                                    ; preds = %5236, %5138
  %5243 = phi float [ %5241, %5236 ], [ 0.000000e+00, %5138 ]
  %5244 = icmp eq i32 %5164, 3
  %5245 = select i1 %5244, float 1.000000e+00, float %5243
  %5246 = call float @dx.op.binary.f32(i32 35, float %5073, float %5245)  ; FMax(a,b)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fcmp fast une float %5247, 0.000000e+00
  %5249 = fsub fast float -0.000000e+00, %162
  %5250 = fsub fast float -0.000000e+00, %163
  %5251 = fsub fast float -0.000000e+00, %164
  br i1 %5248, label %5252, label %5414

; <label>:5252                                    ; preds = %5242
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = fmul fast float %5247, 2.500000e+00
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fmul fast float %5247, 0x4013FFFFE0000000
  %5257 = fadd fast float %5256, 0xBFFFFFFFE0000000
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = fmul fast float %5247, 0x4004000020000000
  %5260 = fadd fast float %5259, 0xBFF8000040000000
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5263 = fmul fast float %5098, 1.000000e+01
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5264, 2.000000e+00
  %5266 = fsub fast float 3.000000e+00, %5265
  %5267 = fmul fast float %5264, %5264
  %5268 = fmul fast float %5267, %5266
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = fsub fast float 0x3FE3333340000000, %5119
  %5271 = fmul fast float %5270, 0x400AAAAAA0000000
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5269, %5272
  %5274 = fmul fast float %5156, 0x3FEA2B8620000000
  %5275 = fmul fast float %5157, 0x3FEA2B8620000000
  %5276 = fmul fast float %5158, 0x3FEA2B8620000000
  %5277 = fadd fast float %5274, 0x3FC81DFBA0000000
  %5278 = fmul fast float %5277, %5156
  %5279 = fadd fast float %5278, 0x3F910E6020000000
  %5280 = fadd fast float %5275, 0x3FC81DFBA0000000
  %5281 = fmul fast float %5280, %5157
  %5282 = fadd fast float %5281, 0x3F910E6020000000
  %5283 = fadd fast float %5276, 0x3FC81DFBA0000000
  %5284 = fmul fast float %5283, %5158
  %5285 = fadd fast float %5284, 0x3F910E6020000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5287 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5289 = fsub fast float %5286, %5156
  %5290 = fsub fast float %5287, %5157
  %5291 = fsub fast float %5288, %5158
  %5292 = fmul fast float %5289, %5262
  %5293 = fmul fast float %5292, %5273
  %5294 = fmul fast float %5290, %5262
  %5295 = fmul fast float %5294, %5273
  %5296 = fmul fast float %5291, %5262
  %5297 = fmul fast float %5296, %5273
  %5298 = fadd fast float %5293, %5156
  %5299 = fadd fast float %5295, %5157
  %5300 = fadd fast float %5297, %5158
  %5301 = fmul fast float %5070, %5070
  %5302 = fmul fast float %5301, %5301
  %5303 = fadd fast float %5258, 1.000000e+00
  %5304 = fsub fast float %5303, %5273
  %5305 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5306 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fsub fast float 1.000000e+00, %5302
  %5309 = call float @dx.op.binary.f32(i32 36, float %5305, float %5308)  ; FMin(a,b)
  %5310 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5309, float %5310)  ; FMax(a,b)
  %5312 = fadd fast float %5307, 0xBFE4CCCCC0000000
  %5313 = fmul fast float %5312, 0x4006DB6DA0000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = fsub fast float 3.000000e+00, %5315
  %5317 = bitcast float %5116 to i32
  %5318 = ashr i32 %5317, 1
  %5319 = add nsw i32 %5318, 532487669
  %5320 = bitcast i32 %5319 to float
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = bitcast float %5321 to i32
  %5323 = sub nsw i32 2129859010, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = bitcast float %5117 to i32
  %5327 = ashr i32 %5326, 1
  %5328 = add nsw i32 %5327, 532487669
  %5329 = bitcast i32 %5328 to float
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5333, 2.000000e+00
  %5335 = bitcast float %5118 to i32
  %5336 = ashr i32 %5335, 1
  %5337 = add nsw i32 %5336, 532487669
  %5338 = bitcast i32 %5337 to float
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = bitcast float %5339 to i32
  %5341 = sub nsw i32 2129859010, %5340
  %5342 = bitcast i32 %5341 to float
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = fsub fast float 0x4002A9FBE0000000, %5325
  %5345 = fadd fast float %5325, 0x3FD54FDF00000000
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, %5344
  %5350 = fmul fast float %5349, %5349
  %5351 = fsub fast float 0x4002A9FBE0000000, %5334
  %5352 = fadd fast float %5334, 0x3FD54FDF00000000
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5355, %5351
  %5357 = fmul fast float %5356, %5356
  %5358 = fsub fast float 0x4002A9FBE0000000, %5343
  %5359 = fadd fast float %5343, 0x3FD54FDF00000000
  %5360 = bitcast float %5359 to i32
  %5361 = sub nsw i32 2129859010, %5360
  %5362 = bitcast i32 %5361 to float
  %5363 = fmul fast float %5362, %5358
  %5364 = fmul fast float %5363, %5363
  %5365 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5350)  ; FMax(a,b)
  %5366 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5357)  ; FMax(a,b)
  %5367 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5364)  ; FMax(a,b)
  %5368 = fsub fast float 1.000000e+00, %5253
  %5369 = fadd fast float %5368, %5269
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fsub fast float 1.000000e+00, %5245
  %5372 = fmul fast float %5311, %5371
  %5373 = fmul fast float %5314, %5314
  %5374 = fmul fast float %5373, %5372
  %5375 = fmul fast float %5374, %5316
  %5376 = fmul fast float %5371, 0xBFE99999A0000000
  %5377 = fmul fast float %5376, %5262
  %5378 = fmul fast float %5377, %5273
  %5379 = fadd fast float %5378, 1.000000e+00
  %5380 = fadd fast float %5119, -1.000000e+00
  %5381 = fmul fast float %5379, %5380
  %5382 = fadd fast float %5381, 1.000000e+00
  %5383 = fsub fast float %5365, %5116
  %5384 = fsub fast float %5366, %5117
  %5385 = fsub fast float %5367, %5118
  %5386 = fmul fast float %5375, %5383
  %5387 = fmul fast float %5375, %5384
  %5388 = fmul fast float %5375, %5385
  %5389 = fadd fast float %5386, %5116
  %5390 = fadd fast float %5387, %5117
  %5391 = fadd fast float %5388, %5118
  %5392 = fsub fast float %94, %5052
  %5393 = fsub fast float %95, %5053
  %5394 = fsub fast float %96, %5054
  %5395 = fmul fast float %5375, %5392
  %5396 = fmul fast float %5375, %5393
  %5397 = fmul fast float %5375, %5394
  %5398 = fadd fast float %5395, %5052
  %5399 = fadd fast float %5396, %5053
  %5400 = fadd fast float %5397, %5054
  %5401 = fmul fast float %5375, %5370
  %5402 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5403 = fsub fast float 1.000000e+00, %5402
  %5404 = fmul fast float %5401, %5403
  %5405 = fadd fast float %5404, %5402
  %5406 = fsub fast float 1.000000e+00, %5070
  %5407 = fmul fast float %5375, %5406
  %5408 = fadd fast float %5407, %5070
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call float @dx.op.unary.f32(i32 25, float %5409)  ; Rsqrt(value)
  %5411 = fmul fast float %5398, %5410
  %5412 = fmul fast float %5399, %5410
  %5413 = fmul fast float %5400, %5410
  br label %5414

; <label>:5414                                    ; preds = %5252, %5242
  %5415 = phi float [ %5389, %5252 ], [ %5116, %5242 ]
  %5416 = phi float [ %5390, %5252 ], [ %5117, %5242 ]
  %5417 = phi float [ %5391, %5252 ], [ %5118, %5242 ]
  %5418 = phi float [ %5298, %5252 ], [ %5156, %5242 ]
  %5419 = phi float [ %5299, %5252 ], [ %5157, %5242 ]
  %5420 = phi float [ %5300, %5252 ], [ %5158, %5242 ]
  %5421 = phi float [ %5411, %5252 ], [ %5052, %5242 ]
  %5422 = phi float [ %5412, %5252 ], [ %5053, %5242 ]
  %5423 = phi float [ %5413, %5252 ], [ %5054, %5242 ]
  %5424 = phi float [ %5405, %5252 ], [ %5119, %5242 ]
  %5425 = phi float [ %5408, %5252 ], [ %5070, %5242 ]
  %5426 = select i1 %235, float 0.000000e+00, float %5417
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = fmul fast float %5429, 2.000000e+00
  %5431 = fmul fast float %5430, %5421
  %5432 = fmul fast float %5430, %5422
  %5433 = fmul fast float %5430, %5423
  %5434 = fsub fast float %162, %5431
  %5435 = fsub fast float %163, %5432
  %5436 = fsub fast float %164, %5433
  %5437 = call float @dx.op.binary.f32(i32 36, float %5425, float 1.000000e+00)  ; FMin(a,b)
  %5438 = fsub fast float 1.000000e+00, %5425
  %5439 = bitcast float %5438 to i32
  %5440 = sub nsw i32 2129859010, %5439
  %5441 = bitcast i32 %5440 to float
  %5442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5443 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = fcmp fast oeq float %5443, 0.000000e+00
  %5445 = fcmp fast oeq float %5442, 0.000000e+00
  %5446 = or i1 %5445, %5444
  br i1 %5446, label %5476, label %5447

; <label>:5447                                    ; preds = %5414
  %5448 = fsub fast float -0.000000e+00, %61
  %5449 = fsub fast float -0.000000e+00, %59
  %5450 = call float @dx.op.unary.f32(i32 24, float %5443)  ; Sqrt(value)
  %5451 = fdiv fast float %5450, %5442
  %5452 = fcmp fast ogt float %5451, 0x3FFB6F8900000000
  %5453 = select i1 %5452, float 0x3FFB6F8900000000, float %5451
  %5454 = fmul fast float %5453, 0x3FE8A23460000000
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = call float @dx.op.binary.f32(i32 35, float %5453, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5457 = fmul fast float %5455, %5442
  %5458 = fmul fast float %5456, 0x3FF279A740000000
  %5459 = fadd fast float %5458, -1.000000e+00
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %60, float %5448, float %5449, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = call float @dx.op.unary.f32(i32 25, float %5460)  ; Rsqrt(value)
  %5462 = fmul fast float %5461, %5448
  %5463 = fmul fast float %5461, %5449
  %5464 = fmul fast float %5461, %60
  %5465 = fmul fast float %5459, %5459
  %5466 = fsub fast float 1.000000e+00, %5465
  %5467 = fmul fast float %5456, 0x40005F8BE0000000
  %5468 = fsub fast float 0x400C5BF8A0000000, %5467
  %5469 = fdiv fast float %5457, %5468
  %5470 = fmul fast float %5469, 0x3FEE31C3C0000000
  %5471 = fmul fast float %5470, %5466
  %5472 = fmul fast float %5456, 0x3FDACB7480000000
  %5473 = fadd fast float %5472, 0xBFD7347680000000
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5474, %5466
  br label %5476

; <label>:5476                                    ; preds = %5447, %5414
  %5477 = phi float [ %5462, %5447 ], [ 0.000000e+00, %5414 ]
  %5478 = phi float [ %5463, %5447 ], [ 0.000000e+00, %5414 ]
  %5479 = phi float [ %5464, %5447 ], [ 0.000000e+00, %5414 ]
  %5480 = phi float [ %5471, %5447 ], [ 0.000000e+00, %5414 ]
  %5481 = phi float [ %5475, %5447 ], [ 0.000000e+00, %5414 ]
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = fmul fast float %5482, 0x3FDF454380000000
  %5484 = fmul fast float %5482, %5482
  %5485 = fmul fast float %5484, 0x3FEE471020000000
  %5486 = fadd fast float %5485, 0xBFD42F6020000000
  %5487 = fmul fast float %5442, 0x3FD20DD760000000
  %5488 = fmul fast float %5486, %5481
  %5489 = fadd fast float %5488, %5487
  %5490 = fmul fast float %5483, %5480
  %5491 = fadd fast float %5489, %5490
  %5492 = fsub fast float %5489, %5490
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fmul fast float %5493, 0x3FDF454380000000
  %5495 = fmul fast float %5493, %5493
  %5496 = fmul fast float %5495, 0x3FEE471020000000
  %5497 = fadd fast float %5496, 0xBFD42F6020000000
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5480, float %5481, float 0x3FD20DD760000000, float %5494, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5500 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fcmp fast oeq float %5500, 0.000000e+00
  %5502 = fcmp fast oeq float %5499, 0.000000e+00
  %5503 = or i1 %5502, %5501
  br i1 %5503, label %5533, label %5504

; <label>:5504                                    ; preds = %5476
  %5505 = fsub fast float -0.000000e+00, %57
  %5506 = fsub fast float -0.000000e+00, %55
  %5507 = call float @dx.op.unary.f32(i32 24, float %5500)  ; Sqrt(value)
  %5508 = fdiv fast float %5507, %5499
  %5509 = fcmp fast ogt float %5508, 0x3FFB6F8900000000
  %5510 = select i1 %5509, float 0x3FFB6F8900000000, float %5508
  %5511 = fmul fast float %5510, 0x3FE8A23460000000
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = call float @dx.op.binary.f32(i32 35, float %5510, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5514 = fmul fast float %5512, %5499
  %5515 = fmul fast float %5513, 0x3FF279A740000000
  %5516 = fadd fast float %5515, -1.000000e+00
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %56, float %5505, float %5506, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 25, float %5517)  ; Rsqrt(value)
  %5519 = fmul fast float %5518, %5505
  %5520 = fmul fast float %5518, %5506
  %5521 = fmul fast float %5518, %56
  %5522 = fmul fast float %5516, %5516
  %5523 = fsub fast float 1.000000e+00, %5522
  %5524 = fmul fast float %5513, 0x40005F8BE0000000
  %5525 = fsub fast float 0x400C5BF8A0000000, %5524
  %5526 = fdiv fast float %5514, %5525
  %5527 = fmul fast float %5526, 0x3FEE31C3C0000000
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %5513, 0x3FDACB7480000000
  %5530 = fadd fast float %5529, 0xBFD7347680000000
  %5531 = fmul fast float %5530, %5526
  %5532 = fmul fast float %5531, %5523
  br label %5533

; <label>:5533                                    ; preds = %5504, %5476
  %5534 = phi float [ %5519, %5504 ], [ 0.000000e+00, %5476 ]
  %5535 = phi float [ %5520, %5504 ], [ 0.000000e+00, %5476 ]
  %5536 = phi float [ %5521, %5504 ], [ 0.000000e+00, %5476 ]
  %5537 = phi float [ %5528, %5504 ], [ 0.000000e+00, %5476 ]
  %5538 = phi float [ %5532, %5504 ], [ 0.000000e+00, %5476 ]
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fmul fast float %5539, 0x3FDF454380000000
  %5541 = fmul fast float %5539, %5539
  %5542 = fmul fast float %5541, 0x3FEE471020000000
  %5543 = fadd fast float %5542, 0xBFD42F6020000000
  %5544 = fmul fast float %5499, 0x3FD20DD760000000
  %5545 = fmul fast float %5543, %5538
  %5546 = fadd fast float %5545, %5544
  %5547 = fmul fast float %5540, %5537
  %5548 = fadd fast float %5546, %5547
  %5549 = fsub fast float %5546, %5547
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fmul fast float %5550, 0x3FDF454380000000
  %5552 = fmul fast float %5550, %5550
  %5553 = fmul fast float %5552, 0x3FEE471020000000
  %5554 = fadd fast float %5553, 0xBFD42F6020000000
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5537, float %5538, float 0x3FD20DD760000000, float %5551, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5557 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5558 = fcmp fast oeq float %5557, 0.000000e+00
  %5559 = fcmp fast oeq float %5556, 0.000000e+00
  %5560 = or i1 %5559, %5558
  br i1 %5560, label %5590, label %5561

; <label>:5561                                    ; preds = %5533
  %5562 = fsub fast float -0.000000e+00, %53
  %5563 = fsub fast float -0.000000e+00, %51
  %5564 = call float @dx.op.unary.f32(i32 24, float %5557)  ; Sqrt(value)
  %5565 = fdiv fast float %5564, %5556
  %5566 = fcmp fast ogt float %5565, 0x3FFB6F8900000000
  %5567 = select i1 %5566, float 0x3FFB6F8900000000, float %5565
  %5568 = fmul fast float %5567, 0x3FE8A23460000000
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5567, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5571 = fmul fast float %5569, %5556
  %5572 = fmul fast float %5570, 0x3FF279A740000000
  %5573 = fadd fast float %5572, -1.000000e+00
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %52, float %5562, float %5563, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.unary.f32(i32 25, float %5574)  ; Rsqrt(value)
  %5576 = fmul fast float %5575, %5562
  %5577 = fmul fast float %5575, %5563
  %5578 = fmul fast float %5575, %52
  %5579 = fmul fast float %5573, %5573
  %5580 = fsub fast float 1.000000e+00, %5579
  %5581 = fmul fast float %5570, 0x40005F8BE0000000
  %5582 = fsub fast float 0x400C5BF8A0000000, %5581
  %5583 = fdiv fast float %5571, %5582
  %5584 = fmul fast float %5583, 0x3FEE31C3C0000000
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5570, 0x3FDACB7480000000
  %5587 = fadd fast float %5586, 0xBFD7347680000000
  %5588 = fmul fast float %5587, %5583
  %5589 = fmul fast float %5588, %5580
  br label %5590

; <label>:5590                                    ; preds = %5561, %5533
  %5591 = phi float [ %5576, %5561 ], [ 0.000000e+00, %5533 ]
  %5592 = phi float [ %5577, %5561 ], [ 0.000000e+00, %5533 ]
  %5593 = phi float [ %5578, %5561 ], [ 0.000000e+00, %5533 ]
  %5594 = phi float [ %5585, %5561 ], [ 0.000000e+00, %5533 ]
  %5595 = phi float [ %5589, %5561 ], [ 0.000000e+00, %5533 ]
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fmul fast float %5596, 0x3FDF454380000000
  %5598 = fmul fast float %5596, %5596
  %5599 = fmul fast float %5598, 0x3FEE471020000000
  %5600 = fadd fast float %5599, 0xBFD42F6020000000
  %5601 = fmul fast float %5556, 0x3FD20DD760000000
  %5602 = fmul fast float %5600, %5595
  %5603 = fadd fast float %5602, %5601
  %5604 = fmul fast float %5597, %5594
  %5605 = fadd fast float %5603, %5604
  %5606 = fsub fast float %5603, %5604
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fmul fast float %5607, 0x3FDF454380000000
  %5609 = fmul fast float %5607, %5607
  %5610 = fmul fast float %5609, 0x3FEE471020000000
  %5611 = fadd fast float %5610, 0xBFD42F6020000000
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5594, float %5595, float 0x3FD20DD760000000, float %5608, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5491, float 0.000000e+00)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float %5605, float 0.000000e+00)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5492, float 0.000000e+00)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5549, float 0.000000e+00)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5606, float 0.000000e+00)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5498, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5555, float 0.000000e+00)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = call float @dx.op.binary.f32(i32 36, float %5418, float %5623)  ; FMin(a,b)
  %5625 = fsub fast float 1.000000e+00, %5437
  %5626 = fmul fast float %5624, %5625
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = bitcast float %5627 to i32
  %5629 = sub nsw i32 2129859010, %5628
  %5630 = bitcast i32 %5629 to float
  %5631 = call float @dx.op.binary.f32(i32 36, float %5419, float %5623)  ; FMin(a,b)
  %5632 = fmul fast float %5631, %5625
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = bitcast float %5633 to i32
  %5635 = sub nsw i32 2129859010, %5634
  %5636 = bitcast i32 %5635 to float
  %5637 = call float @dx.op.binary.f32(i32 36, float %5420, float %5623)  ; FMin(a,b)
  %5638 = fmul fast float %5637, %5625
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5613, %5437
  %5644 = fmul fast float %5643, %5630
  %5645 = fmul fast float %5614, %5437
  %5646 = fmul fast float %5645, %5636
  %5647 = fmul fast float %5615, %5437
  %5648 = fmul fast float %5647, %5642
  %5649 = call float @dx.op.binary.f32(i32 36, float %5415, float %5623)  ; FMin(a,b)
  %5650 = fmul fast float %5649, %5625
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = bitcast float %5651 to i32
  %5653 = sub nsw i32 2129859010, %5652
  %5654 = bitcast i32 %5653 to float
  %5655 = call float @dx.op.binary.f32(i32 36, float %5416, float %5623)  ; FMin(a,b)
  %5656 = fmul fast float %5655, %5625
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = bitcast float %5657 to i32
  %5659 = sub nsw i32 2129859010, %5658
  %5660 = bitcast i32 %5659 to float
  %5661 = call float @dx.op.binary.f32(i32 36, float %5426, float %5623)  ; FMin(a,b)
  %5662 = fmul fast float %5661, %5625
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = fmul fast float %5619, %5437
  %5668 = fmul fast float %5667, %5654
  %5669 = fmul fast float %5620, %5437
  %5670 = fmul fast float %5669, %5660
  %5671 = fmul fast float %5621, %5437
  %5672 = fmul fast float %5671, %5666
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5646, float %5648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = select i1 %235, float 0.000000e+00, float %5644
  %5675 = select i1 %235, float %5673, float %5646
  %5676 = select i1 %235, float 0.000000e+00, float %5648
  %5677 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = select i1 %235, float 0.000000e+00, float %5616
  %5679 = select i1 %235, float %5677, float %5617
  %5680 = select i1 %235, float 0.000000e+00, float %5618
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5670, float %5672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = select i1 %235, float 0.000000e+00, float %5668
  %5683 = select i1 %235, float %5681, float %5670
  %5684 = select i1 %235, float 0.000000e+00, float %5672
  %5685 = fmul fast float %4425, %4425
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = fmul fast float %5428, 9.843750e-01
  %5688 = fmul fast float %5424, 9.843750e-01
  %5689 = fadd fast float %5687, 7.812500e-03
  %5690 = fadd fast float %5688, 7.812500e-03
  %5691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5689, float %5690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.ResRet.f32 %5691, 2
  %5695 = extractvalue %dx.types.ResRet.f32 %5691, 3
  %5696 = fsub fast float 1.000000e+00, %5686
  %5697 = fsub fast float %5694, %5692
  %5698 = fsub fast float %5695, %5693
  %5699 = fmul fast float %5697, %5696
  %5700 = fmul fast float %5698, %5696
  %5701 = fadd fast float %5699, %5692
  %5702 = fadd fast float %5700, %5693
  %5703 = fmul fast float %5701, %5415
  %5704 = fmul fast float %5701, %5416
  %5705 = fmul fast float %5701, %5426
  %5706 = fadd fast float %5703, %5702
  %5707 = fadd fast float %5704, %5702
  %5708 = fadd fast float %5705, %5702
  %5709 = fcmp fast ogt float %5071, 0.000000e+00
  br i1 %5709, label %5710, label %5736

; <label>:5710                                    ; preds = %5590
  %5711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5071, float %5428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5712 = extractvalue %dx.types.ResRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.ResRet.f32 %5711, 1
  %5714 = extractvalue %dx.types.ResRet.f32 %5711, 2
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fsub fast float 1.000000e+00, %5415
  %5719 = fsub fast float 1.000000e+00, %5416
  %5720 = fsub fast float 1.000000e+00, %5426
  %5721 = fmul fast float %5415, 4.000000e+00
  %5722 = fmul fast float %5721, %5718
  %5723 = fmul fast float %5722, %5715
  %5724 = fmul fast float %5416, 4.000000e+00
  %5725 = fmul fast float %5724, %5719
  %5726 = fmul fast float %5725, %5716
  %5727 = fmul fast float %5426, 4.000000e+00
  %5728 = fmul fast float %5727, %5720
  %5729 = fmul fast float %5728, %5717
  %5730 = fadd fast float %5723, %5706
  %5731 = fadd fast float %5726, %5707
  %5732 = fadd fast float %5729, %5708
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5734 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  br label %5736

; <label>:5736                                    ; preds = %5710, %5590
  %5737 = phi float [ %5733, %5710 ], [ %5706, %5590 ]
  %5738 = phi float [ %5734, %5710 ], [ %5707, %5590 ]
  %5739 = phi float [ %5735, %5710 ], [ %5708, %5590 ]
  %5740 = call float @dx.op.binary.f32(i32 35, float %5738, float %5739)  ; FMax(a,b)
  %5741 = call float @dx.op.binary.f32(i32 35, float %5737, float %5740)  ; FMax(a,b)
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fcmp fast ogt float %5743, 0x3E7FF19E20000000
  %5745 = fdiv fast float 1.000000e+00, %5743
  %5746 = select i1 %5744, float %5745, float 0.000000e+00
  %5747 = fmul fast float %5746, %5418
  %5748 = fmul fast float %5746, %5419
  %5749 = fmul fast float %5746, %5420
  %5750 = fadd fast float %5747, -1.000000e+00
  %5751 = fadd fast float %5748, -1.000000e+00
  %5752 = fadd fast float %5749, -1.000000e+00
  %5753 = fmul fast float %5750, 5.000000e-01
  %5754 = fmul fast float %5751, 5.000000e-01
  %5755 = fmul fast float %5752, 5.000000e-01
  %5756 = fadd fast float %5753, 1.000000e+00
  %5757 = fadd fast float %5754, 1.000000e+00
  %5758 = fadd fast float %5755, 1.000000e+00
  %5759 = call float @dx.op.binary.f32(i32 35, float %5428, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5760 = fdiv fast float %4425, %5759
  %5761 = fcmp fast olt float %5142, 1.270000e+02
  %5762 = fcmp fast olt float %5143, 1.270000e+02
  %5763 = fcmp fast olt float %5144, 1.270000e+02
  %5764 = fmul fast float %5142, 0xBFF7154760000000
  %5765 = fmul fast float %5764, %5760
  %5766 = fmul fast float %5143, 0xBFF7154760000000
  %5767 = fmul fast float %5766, %5760
  %5768 = fmul fast float %5144, 0xBFF7154760000000
  %5769 = fmul fast float %5768, %5760
  %5770 = call float @dx.op.unary.f32(i32 21, float %5765)  ; Exp(value)
  %5771 = call float @dx.op.unary.f32(i32 21, float %5767)  ; Exp(value)
  %5772 = call float @dx.op.unary.f32(i32 21, float %5769)  ; Exp(value)
  %5773 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5774 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5775 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5776 = select i1 %5761, float %5773, float 0.000000e+00
  %5777 = select i1 %5762, float %5774, float 0.000000e+00
  %5778 = select i1 %5763, float %5775, float 0.000000e+00
  %5779 = fmul fast float %5776, %5742
  %5780 = fmul fast float %5777, %5742
  %5781 = fmul fast float %5778, %5742
  %5782 = fadd fast float %5779, -1.000000e+00
  %5783 = fadd fast float %5780, -1.000000e+00
  %5784 = fadd fast float %5781, -1.000000e+00
  %5785 = fmul fast float %5782, %5097
  %5786 = fmul fast float %5783, %5097
  %5787 = fmul fast float %5784, %5097
  %5788 = fmul fast float %5737, %5682
  %5789 = fmul fast float %5738, %5683
  %5790 = fmul fast float %5739, %5684
  %5791 = fsub fast float 1.000000e+00, %5428
  %5792 = bitcast float %5791 to i32
  %5793 = sitofp i32 %5792 to float
  %5794 = fmul fast float %5793, 5.000000e+00
  %5795 = fadd fast float %5794, 0xC1EFBF8940000000
  %5796 = fptosi float %5795 to i32
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5797, %5072
  %5799 = fmul fast float %5674, %5798
  %5800 = fmul fast float %5799, %5742
  %5801 = fmul fast float %5800, %5756
  %5802 = fmul fast float %5675, %5798
  %5803 = fmul fast float %5802, %5742
  %5804 = fmul fast float %5803, %5757
  %5805 = fmul fast float %5676, %5798
  %5806 = fmul fast float %5805, %5742
  %5807 = fmul fast float %5806, %5758
  %5808 = fadd fast float %5788, %5061
  %5809 = fadd fast float %5808, %5801
  %5810 = fmul fast float %5809, %5097
  %5811 = fadd fast float %5789, %5062
  %5812 = fadd fast float %5811, %5804
  %5813 = fmul fast float %5812, %5097
  %5814 = fadd fast float %5790, %5063
  %5815 = fadd fast float %5814, %5807
  %5816 = fmul fast float %5815, %5097
  %5817 = fmul fast float %5416, 0x4012D0A400000000
  %5818 = fadd fast float %5787, 1.000000e+00
  %5819 = fadd fast float %5786, 1.000000e+00
  %5820 = fadd fast float %5785, 1.000000e+00
  %5821 = fmul fast float %5742, %5676
  %5822 = fmul fast float %5742, %5675
  %5823 = fmul fast float %5742, %5674
  %5824 = fsub fast float 1.000000e+00, %5424
  %5825 = fmul fast float %5824, %5097
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = fadd fast float %5817, 0x3FDB6377A0000000
  %5830 = fmul fast float %5828, %5829
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fadd fast float %5830, %5831
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5833, float 0x3F847AE140000000)  ; FMax(a,b)
  %5835 = fmul fast float %5834, %5834
  %5836 = fmul fast float %5835, %5835
  %5837 = fmul fast float %5836, 0xC00A935000000000
  %5838 = call float @dx.op.unary.f32(i32 21, float %5837)  ; Exp(value)
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5820, %5678
  %5841 = fmul fast float %5840, %5839
  %5842 = fmul fast float %5819, %5679
  %5843 = fmul fast float %5842, %5839
  %5844 = fmul fast float %5818, %5680
  %5845 = fmul fast float %5844, %5839
  %5846 = fadd fast float %5841, %5823
  %5847 = fmul fast float %5846, %5097
  %5848 = fadd fast float %5843, %5822
  %5849 = fmul fast float %5848, %5097
  %5850 = fadd fast float %5845, %5821
  %5851 = fmul fast float %5850, %5097
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5854 = fcmp fast oeq float %5853, 0.000000e+00
  br i1 %5854, label %6984, label %5855

; <label>:5855                                    ; preds = %5736
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5860, float %5861, float %5862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = select i1 %235, float %5864, float %5860
  %5868 = select i1 %235, float %5866, float %5861
  %5869 = select i1 %235, float %5865, float %5862
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5872 = fmul fast float %5871, %94
  %5873 = fmul fast float %5871, %95
  %5874 = fmul fast float %5871, %96
  %5875 = fadd fast float %5872, %142
  %5876 = fadd fast float %5873, %143
  %5877 = fadd fast float %5874, %144
  %5878 = fcmp fast olt float %5853, 0.000000e+00
  br i1 %5878, label %6503, label %5879

; <label>:5879                                    ; preds = %5855
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5884 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5889 = extractvalue %dx.types.CBufRet.f32 %5885, 3
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 3
  %5895 = fmul fast float %5881, %5875
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5882, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5883, float %5896)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5884
  %5899 = fmul fast float %5886, %5875
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5887, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5888, float %5900)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5889
  %5903 = fmul fast float %5891, %5875
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5892, float %5903)  ; FMad(a,b,c)
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5893, float %5904)  ; FMad(a,b,c)
  %5906 = fadd fast float %5905, %5894
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5911 = fmul fast float %5910, %5898
  %5912 = fmul fast float %5910, %5902
  %5913 = fadd fast float %5911, %5908
  %5914 = fadd fast float %5912, %5909
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.CBufRet.f32 %5915, 3
  %5919 = fmul fast float %5918, %5898
  %5920 = fmul fast float %5918, %5902
  %5921 = fadd fast float %5919, %5916
  %5922 = fadd fast float %5920, %5917
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5925 = fsub fast float %5924, %5906
  %5926 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5927 = fmul fast float %5925, %5926
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5933 = fadd fast float %5932, %5930
  %5934 = fcmp fast ogt float %5933, 0.000000e+00
  br i1 %5934, label %5935, label %5959

; <label>:5935                                    ; preds = %5879
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = fsub fast float %5921, %5937
  %5940 = fsub fast float %5922, %5938
  %5941 = fcmp fast olt float %5939, 0.000000e+00
  %5942 = fcmp fast olt float %5940, 0.000000e+00
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.CBufRet.f32 %5943, 3
  %5948 = select i1 %5941, float %5944, float %5946
  %5949 = select i1 %5942, float %5945, float %5947
  %5950 = fmul fast float %5948, %5939
  %5951 = fmul fast float %5949, %5940
  %5952 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5953 = call float @dx.op.unary.f32(i32 6, float %5951)  ; FAbs(value)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5955 = call float @dx.op.binary.f32(i32 35, float %5952, float %5953)  ; FMax(a,b)
  %5956 = fsub fast float %5954, %5955
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = fmul fast float %5957, %5929
  br label %5959

; <label>:5959                                    ; preds = %5935, %5879
  %5960 = phi float [ %5958, %5935 ], [ 0.000000e+00, %5879 ]
  %5961 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5962 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5963 = fadd fast float %5962, %5961
  %5964 = fcmp fast ogt float %5963, 0.000000e+00
  %5965 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  br i1 %5964, label %5966, label %5989

; <label>:5966                                    ; preds = %5959
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = fsub fast float %5913, %5968
  %5971 = fsub fast float %5914, %5969
  %5972 = fcmp fast olt float %5970, 0.000000e+00
  %5973 = fcmp fast olt float %5971, 0.000000e+00
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %5979 = select i1 %5972, float %5975, float %5977
  %5980 = select i1 %5973, float %5976, float %5978
  %5981 = fmul fast float %5979, %5970
  %5982 = fmul fast float %5980, %5971
  %5983 = call float @dx.op.unary.f32(i32 6, float %5981)  ; FAbs(value)
  %5984 = call float @dx.op.unary.f32(i32 6, float %5982)  ; FAbs(value)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5983, float %5984)  ; FMax(a,b)
  %5986 = fsub fast float %5965, %5985
  %5987 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5988 = fmul fast float %5987, %5929
  br label %5989

; <label>:5989                                    ; preds = %5966, %5959
  %5990 = phi float [ %5988, %5966 ], [ 0.000000e+00, %5959 ]
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5993 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5997 = fsub fast float %5898, %5995
  %5998 = fsub fast float %5902, %5996
  %5999 = fcmp fast olt float %5997, 0.000000e+00
  %6000 = fcmp fast olt float %5998, 0.000000e+00
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6006 = select i1 %5999, float %6002, float %6004
  %6007 = select i1 %6000, float %6003, float %6005
  %6008 = fmul fast float %6006, %5997
  %6009 = fmul fast float %6007, %5998
  %6010 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6011 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6012 = call float @dx.op.binary.f32(i32 35, float %6010, float %6011)  ; FMax(a,b)
  %6013 = fsub fast float %5965, %6012
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = call float @dx.op.binary.f32(i32 36, float %6014, float %5993)  ; FMin(a,b)
  %6016 = fmul fast float %6015, %5929
  %6017 = fsub fast float %5990, %6016
  %6018 = fsub fast float %5960, %5990
  %6019 = fsub fast float %6018, %6016
  %6020 = call float @dx.op.binary.f32(i32 35, float %5990, float %5960)  ; FMax(a,b)
  %6021 = call float @dx.op.binary.f32(i32 35, float %6016, float %6020)  ; FMax(a,b)
  %6022 = fcmp fast olt float %6021, 1.000000e+00
  br i1 %6022, label %6023, label %6421, !dx.controlflow.hints !80

; <label>:6023                                    ; preds = %5989
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  %6026 = fcmp fast une float %6025, 0.000000e+00
  br i1 %6026, label %6027, label %6421, !dx.controlflow.hints !81

; <label>:6027                                    ; preds = %6023
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.CBufRet.f32 %6028, 1
  %6031 = extractvalue %dx.types.CBufRet.f32 %6028, 2
  %6032 = extractvalue %dx.types.CBufRet.f32 %6028, 3
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6035 = extractvalue %dx.types.CBufRet.f32 %6033, 1
  %6036 = extractvalue %dx.types.CBufRet.f32 %6033, 2
  %6037 = extractvalue %dx.types.CBufRet.f32 %6033, 3
  %6038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.CBufRet.f32 %6038, 1
  %6041 = extractvalue %dx.types.CBufRet.f32 %6038, 2
  %6042 = extractvalue %dx.types.CBufRet.f32 %6038, 3
  %6043 = fmul fast float %6029, %5875
  %6044 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6030, float %6043)  ; FMad(a,b,c)
  %6045 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6031, float %6044)  ; FMad(a,b,c)
  %6046 = fadd fast float %6045, %6032
  %6047 = fmul fast float %6034, %5875
  %6048 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6035, float %6047)  ; FMad(a,b,c)
  %6049 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6036, float %6048)  ; FMad(a,b,c)
  %6050 = fadd fast float %6049, %6037
  %6051 = fmul fast float %6039, %5875
  %6052 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6040, float %6051)  ; FMad(a,b,c)
  %6053 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6041, float %6052)  ; FMad(a,b,c)
  %6054 = fadd fast float %6053, %6042
  %6055 = fcmp fast oge float %6046, 1.000000e+00
  %6056 = fcmp fast oge float %6050, 1.000000e+00
  %6057 = or i1 %6055, %6056
  %6058 = fcmp fast olt float %6046, 0.000000e+00
  %6059 = fcmp fast olt float %6050, 0.000000e+00
  %6060 = or i1 %6058, %6059
  %6061 = or i1 %6057, %6060
  br i1 %6061, label %6421, label %6062, !dx.controlflow.hints !82

; <label>:6062                                    ; preds = %6027
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.i32 %6067, 2
  %6069 = uitofp i32 %6068 to float
  %6070 = extractvalue %dx.types.CBufRet.i32 %6067, 3
  %6071 = uitofp i32 %6070 to float
  %6072 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6073 = fmul fast float %6072, 2.000000e+00
  %6074 = fsub fast float %6046, %6064
  %6075 = fsub fast float %6050, %6065
  %6076 = fmul fast float %6073, %6074
  %6077 = fmul fast float %6073, %6075
  %6078 = fdiv fast float 1.000000e+00, %5858
  %6079 = fmul fast float %6077, %6078
  %6080 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6081 = fmul fast float %6066, %5877
  %6082 = fmul fast float %6081, %6073
  %6083 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6084 = call float @dx.op.unary.f32(i32 6, float %6076)  ; FAbs(value)
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6080)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6084, float %6085)  ; FMax(a,b)
  %6087 = fmul fast float %6086, 2.000000e+00
  %6088 = call float @dx.op.unary.f32(i32 23, float %6087)  ; Log(value)
  %6089 = call float @dx.op.binary.f32(i32 35, float %6088, float %6069)  ; FMax(a,b)
  %6090 = call float @dx.op.unary.f32(i32 22, float %6089)  ; Frc(value)
  %6091 = fadd fast float %6090, 0xBFEA666660000000
  %6092 = fmul fast float %6091, 8.000000e+00
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = call float @dx.op.unary.f32(i32 27, float %6089)  ; Round_ni(value)
  %6095 = fadd fast float %6094, %6093
  %6096 = call float @dx.op.binary.f32(i32 36, float %6095, float %6071)  ; FMin(a,b)
  %6097 = call float @dx.op.unary.f32(i32 27, float %6096)  ; Round_ni(value)
  %6098 = fsub fast float -0.000000e+00, %6097
  %6099 = call float @dx.op.unary.f32(i32 21, float %6098)  ; Exp(value)
  %6100 = fmul fast float %6099, %6073
  %6101 = fmul fast float %6100, %6046
  %6102 = fmul fast float %6100, %6050
  %6103 = fmul fast float %6101, 2.500000e-01
  %6104 = fmul fast float %6102, 2.500000e-01
  %6105 = fadd fast float %6103, 5.000000e-01
  %6106 = fadd fast float %6104, 5.000000e-01
  %6107 = fsub fast float %6071, %6069
  %6108 = fptoui float %6107 to i32
  %6109 = add i32 %6108, 320
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6109)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = fcmp fast une float %6096, %6071
  %6114 = fsub fast float %6046, %6111
  %6115 = fsub fast float %6050, %6112
  %6116 = call float @dx.op.unary.f32(i32 6, float %6114)  ; FAbs(value)
  %6117 = call float @dx.op.unary.f32(i32 6, float %6115)  ; FAbs(value)
  %6118 = fmul fast float %6116, %6100
  %6119 = fmul fast float %6117, %6100
  %6120 = fcmp fast olt float %6118, 1.000000e+00
  %6121 = fcmp fast olt float %6119, 1.000000e+00
  %6122 = and i1 %6120, %6121
  %6123 = or i1 %6113, %6122
  br i1 %6123, label %6124, label %6421, !dx.controlflow.hints !83

; <label>:6124                                    ; preds = %6062
  %6125 = fmul fast float %6102, 5.000000e-01
  %6126 = fmul fast float %6101, 5.000000e-01
  %6127 = fadd fast float %6125, 5.000000e-01
  %6128 = fadd fast float %6126, 5.000000e-01
  %6129 = sitofp i32 %6068 to float
  %6130 = fsub fast float %6096, %6129
  %6131 = call float @dx.op.unary.f32(i32 27, float %6130)  ; Round_ni(value)
  %6132 = call float @dx.op.unary.f32(i32 22, float %6096)  ; Frc(value)
  %6133 = call float @dx.op.unary.f32(i32 22, float %6128)  ; Frc(value)
  %6134 = call float @dx.op.unary.f32(i32 22, float %6127)  ; Frc(value)
  %6135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6133, float %6134, float %6131, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6139 = extractvalue %dx.types.ResRet.f32 %6135, 3
  %6140 = fcmp fast ogt float %6132, 0.000000e+00
  br i1 %6140, label %6141, label %6162, !dx.controlflow.hints !84

; <label>:6141                                    ; preds = %6124
  %6142 = fadd fast float %6131, 1.000000e+00
  %6143 = call float @dx.op.unary.f32(i32 22, float %6105)  ; Frc(value)
  %6144 = call float @dx.op.unary.f32(i32 22, float %6106)  ; Frc(value)
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6143, float %6144, float %6142, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.ResRet.f32 %6145, 3
  %6150 = fsub fast float %6146, %6136
  %6151 = fsub fast float %6147, %6137
  %6152 = fsub fast float %6148, %6138
  %6153 = fsub fast float %6149, %6139
  %6154 = fmul fast float %6150, %6132
  %6155 = fmul fast float %6151, %6132
  %6156 = fmul fast float %6152, %6132
  %6157 = fmul fast float %6153, %6132
  %6158 = fadd fast float %6154, %6136
  %6159 = fadd fast float %6155, %6137
  %6160 = fadd fast float %6156, %6138
  %6161 = fadd fast float %6157, %6139
  br label %6162

; <label>:6162                                    ; preds = %6141, %6124
  %6163 = phi float [ %6158, %6141 ], [ %6136, %6124 ]
  %6164 = phi float [ %6159, %6141 ], [ %6137, %6124 ]
  %6165 = phi float [ %6160, %6141 ], [ %6138, %6124 ]
  %6166 = phi float [ %6161, %6141 ], [ %6139, %6124 ]
  %6167 = fadd fast float %6163, -5.000000e-01
  %6168 = fadd fast float %6165, -5.000000e-01
  %6169 = fmul fast float %6167, 0xBFD5555560000000
  %6170 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6168, float %6169)  ; FMad(a,b,c)
  %6171 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6164, float 0.000000e+00)  ; FMad(a,b,c)
  %6172 = fadd fast float %6171, %6166
  %6173 = fmul fast float %6167, -7.500000e-01
  %6174 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6168, float %6173)  ; FMad(a,b,c)
  %6175 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6164, float 0.000000e+00)  ; FMad(a,b,c)
  %6176 = fadd fast float %6175, %6166
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 0
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6184 = fsub fast float %6180, %6170
  %6185 = fsub fast float %6181, %6172
  %6186 = fsub fast float %6182, %6174
  %6187 = fsub fast float %6183, %6176
  %6188 = fmul fast float %6184, %6178
  %6189 = fmul fast float %6185, %6178
  %6190 = fmul fast float %6186, %6178
  %6191 = fmul fast float %6187, %6178
  %6192 = fadd fast float %6188, %6170
  %6193 = fadd fast float %6189, %6172
  %6194 = fadd fast float %6190, %6174
  %6195 = fadd fast float %6191, %6176
  %6196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.i32 %6196, 0
  %6198 = and i32 %6197, 536870911
  %6199 = uitofp i32 %6198 to float
  %6200 = fmul fast float %6199, %6046
  %6201 = fmul fast float %6199, %6050
  %6202 = fptoui float %6200 to i32
  %6203 = fptoui float %6201 to i32
  %6204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.i32 %6204, 0
  %6206 = and i32 %6205, 31
  %6207 = lshr i32 %6202, %6206
  %6208 = lshr i32 %6203, %6206
  %6209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.i32 %6209, 0
  %6211 = and i32 %6210, 31
  %6212 = shl i32 1, %6211
  %6213 = call i32 @dx.op.binary.i32(i32 40, i32 %6212, i32 4)  ; UMin(a,b)
  %6214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.i32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.i32 %6214, 1
  %6217 = icmp eq i32 %6213, 0
  br i1 %6217, label %6259, label %6218

; <label>:6218                                    ; preds = %6162
  br label %6219

; <label>:6219                                    ; preds = %6247, %6218
  %6220 = phi i32 [ %6250, %6247 ], [ 0, %6218 ]
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = lshr i32 %6222, 16
  %6224 = and i32 %6223, 31
  %6225 = shl i32 %6208, %6224
  %6226 = add i32 %6225, %6207
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = and i32 %6228, 31
  %6230 = shl i32 %6226, %6229
  %6231 = add i32 %6230, %6220
  %6232 = shl i32 %6231, 2
  %6233 = add i32 %6232, 32
  %6234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.i32 %6234, 0
  %6236 = icmp slt i32 %6235, 0
  %6237 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6220
  %6238 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6220
  %6239 = bitcast float* %6237 to i32*
  %6240 = bitcast float* %6238 to i32*
  br i1 %6236, label %6241, label %6247

; <label>:6241                                    ; preds = %6219
  %6242 = and i32 %6235, 1073741823
  %6243 = add nuw nsw i32 %6242, 20
  %6244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.i32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.i32 %6244, 1
  br label %6247

; <label>:6247                                    ; preds = %6241, %6219
  %6248 = phi i32 [ %6245, %6241 ], [ %6215, %6219 ]
  %6249 = phi i32 [ %6246, %6241 ], [ %6216, %6219 ]
  store i32 %6248, i32* %6239, align 4
  store i32 %6249, i32* %6240, align 4
  %6250 = add nuw i32 %6220, 1
  %6251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.i32 %6251, 2
  %6253 = icmp eq i32 %6252, 0
  %6254 = icmp ugt i32 %6235, -1073741825
  %6255 = and i1 %6254, %6253
  %6256 = icmp ult i32 %6250, %6213
  %6257 = and i1 %6255, %6256
  br i1 %6257, label %6219, label %6258

; <label>:6258                                    ; preds = %6247
  br label %6259

; <label>:6259                                    ; preds = %6258, %6162
  %6260 = phi i32 [ 0, %6162 ], [ %6250, %6258 ]
  %6261 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6262 = fptoui float %6261 to i32
  %6263 = icmp eq i32 %6262, 0
  br i1 %6263, label %6315, label %6264

; <label>:6264                                    ; preds = %6259
  br label %6265

; <label>:6265                                    ; preds = %6310, %6264
  %6266 = phi i32 [ %6311, %6310 ], [ %6260, %6264 ]
  %6267 = phi i32 [ %6312, %6310 ], [ 0, %6264 ]
  %6268 = lshr i32 %6267, 2
  %6269 = and i32 %6267, 3
  %6270 = add nuw nsw i32 %6268, 83
  %6271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6270)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.i32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.i32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.i32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.i32 %6271, 3
  %6276 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6272, i32* %6276, align 4
  %6277 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6273, i32* %6277, align 4
  %6278 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6274, i32* %6278, align 4
  %6279 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6275, i32* %6279, align 4
  %6280 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6269
  %6281 = load i32, i32* %6280, align 4, !tbaa !85, !noalias !89
  %6282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6283 = extractvalue %dx.types.ResRet.i32 %6282, 0
  %6284 = lshr i32 %6283, 16
  %6285 = and i32 %6284, 31
  %6286 = shl i32 %6208, %6285
  %6287 = add i32 %6286, %6207
  %6288 = shl i32 %6287, 2
  %6289 = add i32 %6288, %6281
  %6290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.i32 %6290, 0
  %6292 = icmp eq i32 %6291, 0
  br i1 %6292, label %6310, label %6293

; <label>:6293                                    ; preds = %6265
  %6294 = icmp slt i32 %6291, 0
  %6295 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6266
  %6296 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6266
  %6297 = bitcast float* %6295 to i32*
  %6298 = bitcast float* %6296 to i32*
  br i1 %6294, label %6299, label %6306

; <label>:6299                                    ; preds = %6293
  %6300 = and i32 %6291, 1073741823
  %6301 = add i32 %6281, 20
  %6302 = add i32 %6301, %6300
  %6303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6302, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.i32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.i32 %6303, 1
  br label %6306

; <label>:6306                                    ; preds = %6299, %6293
  %6307 = phi i32 [ %6304, %6299 ], [ %6215, %6293 ]
  %6308 = phi i32 [ %6305, %6299 ], [ %6216, %6293 ]
  store i32 %6307, i32* %6297, align 4
  store i32 %6308, i32* %6298, align 4
  %6309 = add i32 %6266, 1
  br label %6310

; <label>:6310                                    ; preds = %6306, %6265
  %6311 = phi i32 [ %6266, %6265 ], [ %6309, %6306 ]
  %6312 = add nuw i32 %6267, 1
  %6313 = icmp eq i32 %6312, %6262
  br i1 %6313, label %6314, label %6265

; <label>:6314                                    ; preds = %6310
  br label %6315

; <label>:6315                                    ; preds = %6314, %6259
  %6316 = phi i32 [ %6260, %6259 ], [ %6311, %6314 ]
  %6317 = icmp eq i32 %6316, 1
  %6318 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6319 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6317, label %6320, label %6323

; <label>:6320                                    ; preds = %6315
  %6321 = load float, float* %6318, align 4
  %6322 = load float, float* %6319, align 4
  br label %6350

; <label>:6323                                    ; preds = %6315
  %6324 = load float, float* %6318, align 4
  %6325 = load float, float* %6319, align 4
  %6326 = fdiv fast float 1.000000e+00, %6325
  %6327 = fsub fast float %6324, %6326
  %6328 = icmp ugt i32 %6316, 1
  br i1 %6328, label %6329, label %6345

; <label>:6329                                    ; preds = %6323
  br label %6330

; <label>:6330                                    ; preds = %6330, %6329
  %6331 = phi float [ %6340, %6330 ], [ %6327, %6329 ]
  %6332 = phi float [ %6341, %6330 ], [ %6324, %6329 ]
  %6333 = phi i32 [ %6342, %6330 ], [ 1, %6329 ]
  %6334 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6333
  %6335 = load float, float* %6334, align 4
  %6336 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6333
  %6337 = load float, float* %6336, align 4
  %6338 = fdiv fast float 1.000000e+00, %6337
  %6339 = fsub fast float %6335, %6338
  %6340 = call float @dx.op.binary.f32(i32 36, float %6331, float %6339)  ; FMin(a,b)
  %6341 = call float @dx.op.binary.f32(i32 35, float %6332, float %6335)  ; FMax(a,b)
  %6342 = add nuw i32 %6333, 1
  %6343 = icmp eq i32 %6342, %6316
  br i1 %6343, label %6344, label %6330

; <label>:6344                                    ; preds = %6330
  br label %6345

; <label>:6345                                    ; preds = %6344, %6323
  %6346 = phi float [ %6327, %6323 ], [ %6340, %6344 ]
  %6347 = phi float [ %6324, %6323 ], [ %6341, %6344 ]
  %6348 = fsub fast float %6347, %6346
  %6349 = fdiv fast float 1.000000e+00, %6348
  br label %6350

; <label>:6350                                    ; preds = %6345, %6320
  %6351 = phi float [ %6321, %6320 ], [ %6347, %6345 ]
  %6352 = phi float [ %6322, %6320 ], [ %6349, %6345 ]
  %6353 = fadd fast float %6054, %6351
  %6354 = fmul fast float %6353, %6352
  %6355 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6356 = fmul fast float %6355, 2.000000e+00
  %6357 = fsub fast float 1.000000e+00, %6356
  %6358 = fmul fast float %6192, %6192
  %6359 = fsub fast float %6193, %6358
  %6360 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6359)  ; FMax(a,b)
  %6361 = fdiv fast float 1.000000e+00, %6360
  %6362 = fmul fast float %6193, %6192
  %6363 = fsub fast float %6194, %6362
  %6364 = fsub fast float %6357, %6192
  %6365 = fmul fast float %6357, %6357
  %6366 = fsub fast float %6365, %6193
  %6367 = fmul fast float %6361, %6363
  %6368 = fmul fast float %6367, %6364
  %6369 = fsub fast float %6366, %6368
  %6370 = fmul fast float %6193, %6193
  %6371 = fsub fast float %6195, %6370
  %6372 = fmul fast float %6363, %6363
  %6373 = fmul fast float %6372, %6361
  %6374 = fsub fast float %6371, %6373
  %6375 = fdiv fast float %6369, %6374
  %6376 = fmul fast float %6375, %6363
  %6377 = fsub fast float %6364, %6376
  %6378 = fmul fast float %6377, %6361
  %6379 = fmul fast float %6378, %6192
  %6380 = fsub fast float 1.000000e+00, %6379
  %6381 = fmul fast float %6375, %6193
  %6382 = fsub fast float %6380, %6381
  %6383 = fmul fast float %6378, %6378
  %6384 = fmul fast float %6375, 4.000000e+00
  %6385 = fmul fast float %6384, %6382
  %6386 = fsub fast float %6383, %6385
  %6387 = call float @dx.op.unary.f32(i32 24, float %6386)  ; Sqrt(value)
  %6388 = fcmp fast oge float %6378, 0.000000e+00
  %6389 = fsub fast float -0.000000e+00, %6387
  %6390 = select i1 %6388, float %6389, float %6387
  %6391 = fsub fast float %6390, %6378
  %6392 = fdiv fast float %6391, %6375
  %6393 = fdiv fast float %6382, %6391
  %6394 = fmul fast float %6392, 5.000000e-01
  %6395 = fmul fast float %6393, 2.000000e+00
  %6396 = select i1 %6388, float %6394, float %6395
  %6397 = select i1 %6388, float %6395, float %6394
  %6398 = call float @dx.op.binary.f32(i32 35, float %6396, float %6397)  ; FMax(a,b)
  %6399 = call float @dx.op.binary.f32(i32 36, float %6396, float %6397)  ; FMin(a,b)
  %6400 = fcmp fast ogt float %6357, %6398
  %6401 = fsub fast float %6357, %6399
  %6402 = fsub fast float %6357, %6398
  %6403 = fsub fast float %6398, %6399
  %6404 = select i1 %6400, float %6402, float %6403
  %6405 = fmul float %6401, %6404
  %6406 = select i1 %6400, float %6399, float %6357
  %6407 = fcmp fast ogt float %6357, %6399
  %6408 = fmul fast float %6406, %6398
  %6409 = fadd fast float %6406, %6398
  %6410 = fmul fast float %6409, %6192
  %6411 = fadd fast float %6408, %6193
  %6412 = fsub fast float %6411, %6410
  %6413 = fdiv fast float %6412, %6405
  %6414 = select i1 %6407, float %6413, float 0.000000e+00
  %6415 = fsub fast float 1.000000e+00, %6414
  %6416 = select i1 %6400, float %6415, float %6414
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6177, 3
  %6419 = fmul fast float %6418, %6417
  %6420 = fsub fast float 1.000000e+00, %6419
  br label %6421

; <label>:6421                                    ; preds = %6350, %6062, %6027, %6023, %5989
  %6422 = phi float [ 1.000000e+00, %5989 ], [ %6420, %6350 ], [ 1.000000e+00, %6027 ], [ 1.000000e+00, %6062 ], [ 1.000000e+00, %6023 ]
  %6423 = fcmp fast ogt float %6019, 0.000000e+00
  br i1 %6423, label %6424, label %6430, !dx.controlflow.hints !98

; <label>:6424                                    ; preds = %6421
  %6425 = fadd fast float %5932, %5906
  %6426 = call float @dx.op.binary.f32(i32 35, float %6425, float 0.000000e+00)  ; FMax(a,b)
  %6427 = fadd fast float %6426, 0x3F10000000000000
  %6428 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5921, float %5922, float undef, float undef, i32 0, i32 0, i32 undef, float %6427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  br label %6430

; <label>:6430                                    ; preds = %6424, %6421
  %6431 = phi float [ %6429, %6424 ], [ 1.000000e+00, %6421 ]
  %6432 = fcmp fast ogt float %6017, 0.000000e+00
  br i1 %6432, label %6433, label %6439, !dx.controlflow.hints !99

; <label>:6433                                    ; preds = %6430
  %6434 = fadd fast float %5962, %5906
  %6435 = call float @dx.op.binary.f32(i32 35, float %6434, float 0.000000e+00)  ; FMax(a,b)
  %6436 = fadd fast float %6435, 0x3F10000000000000
  %6437 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5913, float %5914, float undef, float undef, i32 0, i32 0, i32 undef, float %6436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  br label %6439

; <label>:6439                                    ; preds = %6433, %6430
  %6440 = phi float [ %6438, %6433 ], [ 1.000000e+00, %6430 ]
  %6441 = fcmp fast ogt float %6016, 0.000000e+00
  br i1 %6441, label %6442, label %6449, !dx.controlflow.hints !100

; <label>:6442                                    ; preds = %6439
  %6443 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %6444 = fadd fast float %6443, %5906
  %6445 = call float @dx.op.binary.f32(i32 35, float %6444, float 0.000000e+00)  ; FMax(a,b)
  %6446 = fadd fast float %6445, 0x3F10000000000000
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5898, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float %6446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  br label %6449

; <label>:6449                                    ; preds = %6442, %6439
  %6450 = phi float [ %6448, %6442 ], [ 1.000000e+00, %6439 ]
  %6451 = fsub fast float %6431, %6422
  %6452 = fmul fast float %6451, %5960
  %6453 = fadd fast float %6452, %6422
  %6454 = fsub fast float %6440, %6453
  %6455 = fmul fast float %6454, %5990
  %6456 = fadd fast float %6455, %6453
  %6457 = fsub fast float %6450, %6456
  %6458 = fmul fast float %6457, %6016
  %6459 = fadd fast float %6458, %6456
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6462 = fcmp fast ogt float %6461, 0.000000e+00
  br i1 %6462, label %6463, label %6503, !dx.controlflow.hints !101

; <label>:6463                                    ; preds = %6449
  %6464 = fcmp fast ugt float %6461, 0.000000e+00
  br i1 %6464, label %6465, label %6500

; <label>:6465                                    ; preds = %6463
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.CBufRet.f32 %6471, 3
  %6476 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6477 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = fadd fast float %6479, %5875
  %6483 = fadd fast float %6480, %5876
  %6484 = fadd fast float %6481, %5877
  %6485 = fmul fast float %6482, %6467
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6483, float %6485)  ; FMad(a,b,c)
  %6487 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6484, float %6486)  ; FMad(a,b,c)
  %6488 = fadd fast float %6487, %6470
  %6489 = fmul fast float %6482, %6472
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %6473, float %6483, float %6489)  ; FMad(a,b,c)
  %6491 = call float @dx.op.tertiary.f32(i32 46, float %6474, float %6484, float %6490)  ; FMad(a,b,c)
  %6492 = fadd fast float %6491, %6475
  %6493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6488, float %6492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6494 = extractvalue %dx.types.ResRet.f32 %6493, 0
  %6495 = fmul fast float %6494, %6477
  %6496 = fadd fast float %6495, %6476
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = fmul fast float %6497, %6461
  %6499 = fsub fast float 1.000000e+00, %6498
  br label %6500

; <label>:6500                                    ; preds = %6465, %6463
  %6501 = phi float [ %6499, %6465 ], [ 1.000000e+00, %6463 ]
  %6502 = fmul fast float %6501, %6459
  br label %6503

; <label>:6503                                    ; preds = %6500, %6449, %5855
  %6504 = phi float [ 1.000000e+00, %5855 ], [ %6502, %6500 ], [ %6459, %6449 ]
  %6505 = call float @dx.op.binary.f32(i32 36, float %6504, float %6504)  ; FMin(a,b)
  %6506 = call float @dx.op.binary.f32(i32 36, float %6504, float %6505)  ; FMin(a,b)
  %6507 = fcmp fast ogt float %6506, 0.000000e+00
  br i1 %6507, label %6508, label %6669, !dx.controlflow.hints !102

; <label>:6508                                    ; preds = %6503
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.CBufRet.f32 %6509, 2
  %6513 = extractvalue %dx.types.CBufRet.f32 %6509, 3
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 0
  %6521 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6522 = extractvalue %dx.types.CBufRet.f32 %6519, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6519, 3
  %6524 = fmul fast float %6510, %5875
  %6525 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6511, float %6524)  ; FMad(a,b,c)
  %6526 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6512, float %6525)  ; FMad(a,b,c)
  %6527 = fadd fast float %6526, %6513
  %6528 = fmul fast float %6515, %5875
  %6529 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6516, float %6528)  ; FMad(a,b,c)
  %6530 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6517, float %6529)  ; FMad(a,b,c)
  %6531 = fadd fast float %6530, %6518
  %6532 = fmul fast float %6520, %5875
  %6533 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6521, float %6532)  ; FMad(a,b,c)
  %6534 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6522, float %6533)  ; FMad(a,b,c)
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6539 = fmul fast float %6538, %6527
  %6540 = fmul fast float %6538, %6531
  %6541 = fadd fast float %6539, %6536
  %6542 = fadd fast float %6540, %6537
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6546 = fsub fast float %6541, %6544
  %6547 = fsub fast float %6542, %6545
  %6548 = fcmp fast olt float %6546, 0.000000e+00
  %6549 = fcmp fast olt float %6547, 0.000000e+00
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6555 = select i1 %6548, float %6551, float %6553
  %6556 = select i1 %6549, float %6552, float %6554
  %6557 = fmul fast float %6555, %6546
  %6558 = fmul fast float %6556, %6547
  %6559 = call float @dx.op.unary.f32(i32 6, float %6557)  ; FAbs(value)
  %6560 = call float @dx.op.unary.f32(i32 6, float %6558)  ; FAbs(value)
  %6561 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %6562 = call float @dx.op.binary.f32(i32 35, float %6559, float %6560)  ; FMax(a,b)
  %6563 = fsub fast float %6561, %6562
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %6565, label %6566, label %6607, !dx.controlflow.hints !103

; <label>:6566                                    ; preds = %6508
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6541, float %6542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 1
  %6569 = fcmp fast ogt float %6568, 0.000000e+00
  br i1 %6569, label %6570, label %6602

; <label>:6570                                    ; preds = %6566
  %6571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6541, float %6542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6572 = extractvalue %dx.types.ResRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.ResRet.f32 %6571, 1
  %6574 = extractvalue %dx.types.ResRet.f32 %6571, 2
  %6575 = extractvalue %dx.types.ResRet.f32 %6571, 3
  %6576 = fsub fast float 1.000000e+00, %6523
  %6577 = fsub fast float %6576, %6534
  %6578 = fmul fast float %6577, 0x400921FB60000000
  %6579 = fadd fast float %6578, 0x3FF921FB60000000
  %6580 = call float @dx.op.unary.f32(i32 13, float %6579)  ; Sin(value)
  %6581 = fadd fast float %6580, -1.000000e+00
  %6582 = fmul fast float %6581, 0x3FD45F3060000000
  %6583 = fmul fast float %6577, 0x401921FB60000000
  %6584 = fadd fast float %6583, 0x400921FB60000000
  %6585 = call float @dx.op.unary.f32(i32 13, float %6584)  ; Sin(value)
  %6586 = fadd fast float %6585, 0x3E7777A5C0000000
  %6587 = fmul fast float %6586, 0x3FC45F3060000000
  %6588 = fmul fast float %6577, 0x4022D97C80000000
  %6589 = fadd fast float %6588, 0x4012D97C80000000
  %6590 = call float @dx.op.unary.f32(i32 13, float %6589)  ; Sin(value)
  %6591 = fadd fast float %6590, 1.000000e+00
  %6592 = fmul fast float %6591, 0x3FBB2995E0000000
  %6593 = fmul fast float %6577, 0x402921FB60000000
  %6594 = fadd fast float %6593, 0x401921FB60000000
  %6595 = call float @dx.op.unary.f32(i32 13, float %6594)  ; Sin(value)
  %6596 = fadd fast float %6595, 0xBE8777A5C0000000
  %6597 = fmul fast float %6596, 0x3FB45F3060000000
  %6598 = call float @dx.op.dot4.f32(i32 56, float %6572, float %6573, float %6574, float %6575, float %6582, float %6587, float %6592, float %6597)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6599 = fmul fast float %6598, 0xBFF7154760000000
  %6600 = call float @dx.op.unary.f32(i32 21, float %6599)  ; Exp(value)
  %6601 = call float @dx.op.unary.f32(i32 7, float %6600)  ; Saturate(value)
  br label %6602

; <label>:6602                                    ; preds = %6570, %6566
  %6603 = phi float [ %6601, %6570 ], [ 1.000000e+00, %6566 ]
  %6604 = fadd fast float %6603, -1.000000e+00
  %6605 = fmul fast float %6604, %6564
  %6606 = fadd fast float %6605, 1.000000e+00
  br label %6607

; <label>:6607                                    ; preds = %6602, %6508
  %6608 = phi float [ %6606, %6602 ], [ 1.000000e+00, %6508 ]
  %6609 = fmul fast float %6608, %6504
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.CBufRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.CBufRet.f32 %6610, 2
  %6614 = fadd fast float %6611, %142
  %6615 = fadd fast float %6612, %143
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6618 = fsub fast float -0.000000e+00, %6614
  %6619 = fsub fast float -0.000000e+00, %6615
  %6620 = fsub fast float -0.000000e+00, %144
  %6621 = fsub fast float %6620, %6613
  %6622 = fadd fast float %6621, %6617
  %6623 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6618, float %6619, float %6622)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5856, float %5857, float %5858)  ; Dot3(ax,ay,az,bx,by,bz)
  %6625 = fdiv fast float 1.000000e+00, %6624
  %6626 = fmul fast float %6625, %6623
  %6627 = fmul fast float %5856, %6626
  %6628 = fmul fast float %5857, %6626
  %6629 = fadd fast float %6627, %6614
  %6630 = fadd fast float %6628, %6615
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = fsub fast float %6629, %6632
  %6635 = fsub fast float %6630, %6633
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6639 = fmul fast float %6634, %6637
  %6640 = fmul fast float %6635, %6638
  %6641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.i32 %6641, 3
  %6643 = icmp eq i32 %6642, 0
  br i1 %6643, label %6649, label %6644

; <label>:6644                                    ; preds = %6607
  %6645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6639, float %6640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6646 = extractvalue %dx.types.ResRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.ResRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.ResRet.f32 %6645, 2
  br label %6654

; <label>:6649                                    ; preds = %6607
  %6650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6639, float %6640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6651 = extractvalue %dx.types.ResRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.ResRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.ResRet.f32 %6650, 2
  br label %6654

; <label>:6654                                    ; preds = %6649, %6644
  %6655 = phi float [ %6646, %6644 ], [ %6651, %6649 ]
  %6656 = phi float [ %6647, %6644 ], [ %6652, %6649 ]
  %6657 = phi float [ %6648, %6644 ], [ %6653, %6649 ]
  %6658 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6659 = fmul fast float %6658, %6655
  %6660 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6661 = fsub fast float %6626, %6660
  %6662 = fsub fast float %6661, %6659
  %6663 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6662)  ; FMax(a,b)
  %6664 = fmul fast float %6663, %6656
  %6665 = call float @dx.op.binary.f32(i32 36, float %6657, float %6664)  ; FMin(a,b)
  %6666 = fmul fast float %6665, 0xBFF7154760000000
  %6667 = call float @dx.op.unary.f32(i32 21, float %6666)  ; Exp(value)
  %6668 = fmul fast float %6609, %6667
  br label %6669

; <label>:6669                                    ; preds = %6654, %6503
  %6670 = phi float [ %6668, %6654 ], [ %6504, %6503 ]
  %6671 = call float @dx.op.binary.f32(i32 36, float %6670, float %6670)  ; FMin(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6670, float %6671)  ; FMin(a,b)
  %6673 = fcmp fast ogt float %6672, 0.000000e+00
  br i1 %6673, label %6674, label %6984, !dx.controlflow.hints !104

; <label>:6674                                    ; preds = %6669
  %6675 = fmul fast float %6670, %5867
  %6676 = fmul fast float %6670, %5868
  %6677 = fmul fast float %6670, %5869
  %6678 = fsub fast float %5856, %162
  %6679 = fsub fast float %5857, %163
  %6680 = fsub fast float %5858, %164
  %6681 = call float @dx.op.dot3.f32(i32 55, float %6678, float %6679, float %6680, float %6678, float %6679, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = call float @dx.op.unary.f32(i32 25, float %6681)  ; Rsqrt(value)
  %6683 = fmul fast float %6682, %6678
  %6684 = fmul fast float %6682, %6679
  %6685 = fmul fast float %6682, %6680
  %6686 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %6687 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %6683, float %6684, float %6685)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6689 = fmul fast float %6688, %6688
  %6690 = fmul fast float %6689, %5441
  %6691 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6692 = fmul fast float %6691, %6688
  %6693 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %6683, float %6684, float %6685)  ; Dot3(ax,ay,az,bx,by,bz)
  %6694 = fmul fast float %6693, %6693
  %6695 = call float @dx.op.unary.f32(i32 6, float %6686)  ; FAbs(value)
  %6696 = call float @dx.op.binary.f32(i32 35, float %5824, float 0x3F847AE140000000)  ; FMax(a,b)
  %6697 = fmul fast float %6696, %6696
  %6698 = fmul fast float %6697, %6697
  %6699 = fsub fast float 1.000000e+00, %6698
  %6700 = fmul fast float %5428, %5428
  %6701 = fmul fast float %6700, %6699
  %6702 = fadd fast float %6701, %6698
  %6703 = bitcast float %6702 to i32
  %6704 = ashr i32 %6703, 1
  %6705 = add nsw i32 %6704, 532487669
  %6706 = bitcast i32 %6705 to float
  %6707 = fadd fast float %6706, %5428
  %6708 = fmul fast float %6698, %6694
  %6709 = fsub fast float 1.000000e+00, %6694
  %6710 = fadd fast float %6709, %6708
  %6711 = fmul fast float %6695, %6695
  %6712 = fmul fast float %6711, %6699
  %6713 = fadd fast float %6712, %6698
  %6714 = bitcast float %6713 to i32
  %6715 = ashr i32 %6714, 1
  %6716 = add nsw i32 %6715, 532487669
  %6717 = bitcast i32 %6716 to float
  %6718 = fadd fast float %6717, %6695
  %6719 = fmul fast float %6710, %6710
  %6720 = fmul fast float %6719, %6707
  %6721 = fmul fast float %6720, %6718
  %6722 = fdiv fast float 0x3FF0A00000000000, %6721
  %6723 = fmul fast float %6722, %6698
  %6724 = fmul fast float %5686, 0x3FF9999980000000
  %6725 = fsub fast float 5.000000e+00, %6724
  %6726 = call float @dx.op.unary.f32(i32 6, float %6687)  ; FAbs(value)
  %6727 = fsub fast float 1.000000e+00, %6726
  %6728 = fmul fast float %5686, 0x41D9660740000000
  %6729 = fadd fast float %6728, 0xC1EFBF8940000000
  %6730 = bitcast float %6727 to i32
  %6731 = sitofp i32 %6730 to float
  %6732 = fmul fast float %6731, %6725
  %6733 = fadd fast float %6729, %6732
  %6734 = fptosi float %6733 to i32
  %6735 = bitcast i32 %6734 to float
  %6736 = fsub fast float 1.000000e+00, %5415
  %6737 = fsub fast float 1.000000e+00, %5416
  %6738 = fsub fast float 1.000000e+00, %5426
  %6739 = fmul fast float %6735, %6736
  %6740 = fmul fast float %6735, %6737
  %6741 = fmul fast float %6735, %6738
  %6742 = fadd fast float %6739, %5415
  %6743 = fadd fast float %6740, %5416
  %6744 = fadd fast float %6741, %5426
  br i1 %5709, label %6745, label %6768

; <label>:6745                                    ; preds = %6674
  %6746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5071, float %6726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6747 = extractvalue %dx.types.ResRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.ResRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.ResRet.f32 %6746, 2
  %6750 = fadd fast float %6747, -5.000000e-01
  %6751 = fadd fast float %6748, -5.000000e-01
  %6752 = fadd fast float %6749, -5.000000e-01
  %6753 = fmul fast float %5415, 4.000000e+00
  %6754 = fmul fast float %6753, %6736
  %6755 = fmul fast float %6754, %6750
  %6756 = fmul fast float %5416, 4.000000e+00
  %6757 = fmul fast float %6756, %6737
  %6758 = fmul fast float %6757, %6751
  %6759 = fmul fast float %5426, 4.000000e+00
  %6760 = fmul fast float %6759, %6738
  %6761 = fmul fast float %6760, %6752
  %6762 = fadd fast float %6755, %6742
  %6763 = fadd fast float %6758, %6743
  %6764 = fadd fast float %6761, %6744
  %6765 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6766 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6767 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  br label %6768

; <label>:6768                                    ; preds = %6745, %6674
  %6769 = phi float [ %6765, %6745 ], [ %6742, %6674 ]
  %6770 = phi float [ %6766, %6745 ], [ %6743, %6674 ]
  %6771 = phi float [ %6767, %6745 ], [ %6744, %6674 ]
  %6772 = fmul fast float %6686, 9.843750e-01
  %6773 = fadd fast float %6772, 7.812500e-03
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6773, float %5690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6778 = extractvalue %dx.types.ResRet.f32 %6774, 3
  %6779 = fsub fast float %6777, %6775
  %6780 = fsub fast float %6778, %6776
  %6781 = fmul fast float %6779, %5696
  %6782 = fmul fast float %6780, %5696
  %6783 = fadd fast float %6781, %6775
  %6784 = fadd fast float %6782, %6776
  %6785 = fmul fast float %6783, %5415
  %6786 = fmul fast float %6783, %5416
  %6787 = fmul fast float %6783, %5426
  %6788 = fadd fast float %6785, %6784
  %6789 = fadd fast float %6786, %6784
  %6790 = fadd fast float %6787, %6784
  br i1 %5709, label %6791, label %6814

; <label>:6791                                    ; preds = %6768
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5071, float %6686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = fadd fast float %6793, -5.000000e-01
  %6797 = fadd fast float %6794, -5.000000e-01
  %6798 = fadd fast float %6795, -5.000000e-01
  %6799 = fmul fast float %5415, 4.000000e+00
  %6800 = fmul fast float %6799, %6736
  %6801 = fmul fast float %6800, %6796
  %6802 = fmul fast float %5416, 4.000000e+00
  %6803 = fmul fast float %6802, %6737
  %6804 = fmul fast float %6803, %6797
  %6805 = fmul fast float %5426, 4.000000e+00
  %6806 = fmul fast float %6805, %6738
  %6807 = fmul fast float %6806, %6798
  %6808 = fadd fast float %6801, %6788
  %6809 = fadd fast float %6804, %6789
  %6810 = fadd fast float %6807, %6790
  %6811 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6812 = call float @dx.op.unary.f32(i32 7, float %6809)  ; Saturate(value)
  %6813 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  br label %6814

; <label>:6814                                    ; preds = %6791, %6768
  %6815 = phi float [ %6811, %6791 ], [ %6788, %6768 ]
  %6816 = phi float [ %6812, %6791 ], [ %6789, %6768 ]
  %6817 = phi float [ %6813, %6791 ], [ %6790, %6768 ]
  %6818 = call float @dx.op.binary.f32(i32 35, float %6816, float %6817)  ; FMax(a,b)
  %6819 = call float @dx.op.binary.f32(i32 35, float %6815, float %6818)  ; FMax(a,b)
  %6820 = fsub fast float 1.000000e+00, %6819
  %6821 = call float @dx.op.binary.f32(i32 35, float %6695, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6822 = fdiv fast float %4425, %6821
  %6823 = fmul fast float %5764, %6822
  %6824 = fmul fast float %5766, %6822
  %6825 = fmul fast float %5768, %6822
  %6826 = call float @dx.op.unary.f32(i32 21, float %6823)  ; Exp(value)
  %6827 = call float @dx.op.unary.f32(i32 21, float %6824)  ; Exp(value)
  %6828 = call float @dx.op.unary.f32(i32 21, float %6825)  ; Exp(value)
  %6829 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  %6830 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  %6831 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6832 = select i1 %5761, float %6829, float 0.000000e+00
  %6833 = select i1 %5762, float %6830, float 0.000000e+00
  %6834 = select i1 %5763, float %6831, float 0.000000e+00
  %6835 = fsub fast float -0.000000e+00, %5421
  %6836 = fsub fast float -0.000000e+00, %5422
  %6837 = fsub fast float -0.000000e+00, %5423
  %6838 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %6835, float %6836, float %6837)  ; Dot3(ax,ay,az,bx,by,bz)
  %6839 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6840 = fmul fast float %6839, 9.843750e-01
  %6841 = fadd fast float %6840, 7.812500e-03
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6841, float %5690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6846 = extractvalue %dx.types.ResRet.f32 %6842, 3
  %6847 = fsub fast float %6845, %6843
  %6848 = fsub fast float %6846, %6844
  %6849 = fmul fast float %6847, %5696
  %6850 = fmul fast float %6848, %5696
  %6851 = fadd fast float %6849, %6843
  %6852 = fadd fast float %6850, %6844
  %6853 = fmul fast float %6851, %5415
  %6854 = fmul fast float %6851, %5416
  %6855 = fmul fast float %6851, %5426
  %6856 = fadd fast float %6853, %6852
  %6857 = fadd fast float %6854, %6852
  %6858 = fadd fast float %6855, %6852
  br i1 %5709, label %6859, label %6882

; <label>:6859                                    ; preds = %6814
  %6860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5071, float %6839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6861 = extractvalue %dx.types.ResRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.ResRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.ResRet.f32 %6860, 2
  %6864 = fadd fast float %6861, -5.000000e-01
  %6865 = fadd fast float %6862, -5.000000e-01
  %6866 = fadd fast float %6863, -5.000000e-01
  %6867 = fmul fast float %5415, 4.000000e+00
  %6868 = fmul fast float %6867, %6736
  %6869 = fmul fast float %6868, %6864
  %6870 = fmul fast float %5416, 4.000000e+00
  %6871 = fmul fast float %6870, %6737
  %6872 = fmul fast float %6871, %6865
  %6873 = fmul fast float %5426, 4.000000e+00
  %6874 = fmul fast float %6873, %6738
  %6875 = fmul fast float %6874, %6866
  %6876 = fadd fast float %6869, %6856
  %6877 = fadd fast float %6872, %6857
  %6878 = fadd fast float %6875, %6858
  %6879 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6880 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6881 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  br label %6882

; <label>:6882                                    ; preds = %6859, %6814
  %6883 = phi float [ %6879, %6859 ], [ %6856, %6814 ]
  %6884 = phi float [ %6880, %6859 ], [ %6857, %6814 ]
  %6885 = phi float [ %6881, %6859 ], [ %6858, %6814 ]
  %6886 = call float @dx.op.binary.f32(i32 35, float %6884, float %6885)  ; FMax(a,b)
  %6887 = call float @dx.op.binary.f32(i32 35, float %6883, float %6886)  ; FMax(a,b)
  %6888 = fsub fast float 1.000000e+00, %6887
  %6889 = fmul fast float %5824, %5829
  %6890 = fadd fast float %5831, %6889
  %6891 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  %6892 = fsub fast float %5856, %5434
  %6893 = fsub fast float %5857, %5435
  %6894 = fsub fast float %5858, %5436
  %6895 = call float @dx.op.dot3.f32(i32 55, float %6892, float %6893, float %6894, float %6892, float %6893, float %6894)  ; Dot3(ax,ay,az,bx,by,bz)
  %6896 = call float @dx.op.unary.f32(i32 25, float %6895)  ; Rsqrt(value)
  %6897 = fmul fast float %6896, %6892
  %6898 = fmul fast float %6896, %6893
  %6899 = fmul fast float %6896, %6894
  %6900 = call float @dx.op.dot3.f32(i32 55, float %6835, float %6836, float %6837, float %6897, float %6898, float %6899)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fmul fast float %6900, %6900
  %6902 = call float @dx.op.unary.f32(i32 6, float %6839)  ; FAbs(value)
  %6903 = call float @dx.op.binary.f32(i32 35, float %6891, float 0x3F847AE140000000)  ; FMax(a,b)
  %6904 = fmul fast float %6903, %6903
  %6905 = fmul fast float %6904, %6904
  %6906 = fsub fast float 1.000000e+00, %6905
  %6907 = fmul fast float %6700, %6906
  %6908 = fadd fast float %6907, %6905
  %6909 = bitcast float %6908 to i32
  %6910 = ashr i32 %6909, 1
  %6911 = add nsw i32 %6910, 532487669
  %6912 = bitcast i32 %6911 to float
  %6913 = fadd fast float %6912, %5428
  %6914 = fmul fast float %6905, %6901
  %6915 = fsub fast float 1.000000e+00, %6901
  %6916 = fadd fast float %6915, %6914
  %6917 = fmul fast float %6902, %6902
  %6918 = fmul fast float %6917, %6906
  %6919 = fadd fast float %6918, %6905
  %6920 = bitcast float %6919 to i32
  %6921 = ashr i32 %6920, 1
  %6922 = add nsw i32 %6921, 532487669
  %6923 = bitcast i32 %6922 to float
  %6924 = fadd fast float %6923, %6902
  %6925 = fmul fast float %6916, %6916
  %6926 = fmul fast float %6925, %6913
  %6927 = fmul fast float %6926, %6924
  %6928 = fdiv fast float 0x3FF0A00000000000, %6927
  %6929 = fmul fast float %6928, %6905
  %6930 = fmul fast float %6839, %6832
  %6931 = fmul fast float %6839, %6833
  %6932 = fmul fast float %6839, %6834
  %6933 = fmul fast float %6930, %6888
  %6934 = fmul fast float %6933, %6929
  %6935 = fmul fast float %6931, %6888
  %6936 = fmul fast float %6935, %6929
  %6937 = fmul fast float %6932, %6888
  %6938 = fmul fast float %6937, %6929
  %6939 = fmul fast float %6769, %6723
  %6940 = fmul fast float %6770, %6723
  %6941 = fmul fast float %6771, %6723
  %6942 = fsub fast float 1.000000e+00, %6687
  %6943 = bitcast float %6942 to i32
  %6944 = sitofp i32 %6943 to float
  %6945 = fmul fast float %6944, 5.000000e+00
  %6946 = fadd fast float %6945, 0xC1EFBF8940000000
  %6947 = fptosi float %6946 to i32
  %6948 = bitcast i32 %6947 to float
  %6949 = fmul fast float %6948, %5072
  %6950 = fmul fast float %6820, %6949
  %6951 = fmul fast float %6950, %5756
  %6952 = fmul fast float %6950, %5757
  %6953 = fmul fast float %6950, %5758
  %6954 = fadd fast float %6951, %6939
  %6955 = fadd fast float %6952, %6940
  %6956 = fadd fast float %6953, %6941
  %6957 = fmul fast float %6954, %6692
  %6958 = fmul fast float %6955, %6692
  %6959 = fmul fast float %6956, %6692
  %6960 = fmul fast float %6692, %6675
  %6961 = fmul fast float %6960, %6820
  %6962 = fmul fast float %6692, %6676
  %6963 = fmul fast float %6962, %6820
  %6964 = fmul fast float %6692, %6677
  %6965 = fmul fast float %6964, %6820
  %6966 = fadd fast float %6957, %6934
  %6967 = fadd fast float %6958, %6936
  %6968 = fadd fast float %6959, %6938
  %6969 = fmul fast float %6966, %6675
  %6970 = fmul fast float %6967, %6676
  %6971 = fmul fast float %6968, %6677
  %6972 = fadd fast float %6961, %5846
  %6973 = fmul fast float %6972, %5097
  %6974 = fadd fast float %6963, %5848
  %6975 = fmul fast float %6974, %5097
  %6976 = fadd fast float %6965, %5850
  %6977 = fmul fast float %6976, %5097
  %6978 = fadd fast float %6969, %5809
  %6979 = fmul fast float %6978, %5097
  %6980 = fadd fast float %6970, %5812
  %6981 = fmul fast float %6980, %5097
  %6982 = fadd fast float %6971, %5815
  %6983 = fmul fast float %6982, %5097
  br label %6984

; <label>:6984                                    ; preds = %6882, %6669, %5736
  %6985 = phi float [ %5810, %5736 ], [ %5810, %6669 ], [ %6979, %6882 ]
  %6986 = phi float [ %5813, %5736 ], [ %5813, %6669 ], [ %6981, %6882 ]
  %6987 = phi float [ %5816, %5736 ], [ %5816, %6669 ], [ %6983, %6882 ]
  %6988 = phi float [ %5847, %5736 ], [ %5847, %6669 ], [ %6973, %6882 ]
  %6989 = phi float [ %5849, %5736 ], [ %5849, %6669 ], [ %6975, %6882 ]
  %6990 = phi float [ %5851, %5736 ], [ %5851, %6669 ], [ %6977, %6882 ]
  %6991 = fmul fast float %5097, %5785
  %6992 = fsub fast float -0.000000e+00, %6991
  %6993 = fmul fast float %5097, %5786
  %6994 = fsub fast float -0.000000e+00, %6993
  %6995 = fmul fast float %5097, %5787
  %6996 = fsub fast float -0.000000e+00, %6995
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 0
  %6999 = fmul fast float %6998, %5791
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 3
  %7002 = fsub fast float 1.000000e+00, %5075
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fadd fast float %6990, %5074
  %7005 = fmul fast float %7004, %5075
  %7006 = fmul fast float %7003, %7001
  %7007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %7008 = extractvalue %dx.types.ResRet.i32 %7007, 3
  %7009 = bitcast i32 %7008 to float
  %7010 = fsub fast float %6992, %7009
  %7011 = fsub fast float %6994, %7009
  %7012 = fsub fast float %6996, %7009
  %7013 = fmul fast float %7010, %176
  %7014 = fmul fast float %7011, %176
  %7015 = fmul fast float %7012, %176
  %7016 = fadd fast float %7013, %7009
  %7017 = fadd fast float %7014, %7009
  %7018 = fadd fast float %7015, %7009
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 3
  %7021 = fmul fast float %6988, %5418
  %7022 = fmul fast float %6989, %5419
  %7023 = fmul fast float %6990, %5420
  %7024 = fcmp fast ogt float %78, %196
  %7025 = and i1 %7024, %5165
  %7026 = or i1 %5244, %7025
  %7027 = icmp eq i32 %5164, 2
  %7028 = fcmp fast ole float %78, %196
  %7029 = and i1 %7028, %7027
  %7030 = or i1 %7029, %7026
  br i1 %7025, label %7031, label %7288

; <label>:7031                                    ; preds = %6984
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7035 = fmul fast float %7033, %87
  %7036 = fmul fast float %7034, %88
  %7037 = call float @dx.op.unary.f32(i32 7, float %7035)  ; Saturate(value)
  %7038 = call float @dx.op.unary.f32(i32 7, float %7036)  ; Saturate(value)
  %7039 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7037, float %7038, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.ResRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.ResRet.f32 %7039, 2
  %7043 = extractvalue %dx.types.ResRet.f32 %7039, 3
  %7044 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7037, float %7038, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7045 = extractvalue %dx.types.ResRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.ResRet.f32 %7044, 2
  %7048 = extractvalue %dx.types.ResRet.f32 %7044, 3
  %7049 = call float @dx.op.binary.f32(i32 35, float %7041, float %7042)  ; FMax(a,b)
  %7050 = call float @dx.op.binary.f32(i32 35, float %7040, float %7049)  ; FMax(a,b)
  %7051 = call float @dx.op.binary.f32(i32 35, float %7050, float %7043)  ; FMax(a,b)
  %7052 = call float @dx.op.binary.f32(i32 36, float %7046, float %7047)  ; FMin(a,b)
  %7053 = call float @dx.op.binary.f32(i32 36, float %7045, float %7052)  ; FMin(a,b)
  %7054 = call float @dx.op.binary.f32(i32 36, float %7053, float %7048)  ; FMin(a,b)
  %7055 = fmul fast float %7051, 2.550000e+02
  %7056 = fadd fast float %7055, 0x3F70101020000000
  %7057 = fptoui float %7056 to i32
  %7058 = fmul fast float %7054, 2.550000e+02
  %7059 = fadd fast float %7058, 0x3F70101020000000
  %7060 = fptoui float %7059 to i32
  %7061 = icmp ult i32 %7057, %7060
  br i1 %7061, label %7062, label %7230

; <label>:7062                                    ; preds = %7031
  %7063 = fcmp fast ogt float %77, 9.843750e-01
  %7064 = fadd fast float %78, -4.000000e+00
  %7065 = select i1 %7063, float -4.000000e+00, float %7064
  %7066 = call float @dx.op.binary.f32(i32 35, float %7065, float 0.000000e+00)  ; FMax(a,b)
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = fadd fast float %7068, %7066
  %7070 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7071 = fmul fast float %7069, %7070
  %7072 = call float @dx.op.unary.f32(i32 23, float %7071)  ; Log(value)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7067, 3
  %7074 = fmul fast float %7073, %7072
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %7077 = fmul fast float %7074, %7076
  %7078 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7079 = uitofp i32 %7057 to float
  %7080 = uitofp i32 %7060 to float
  %7081 = fadd fast float %7079, 5.000000e-01
  %7082 = fadd fast float %7080, 5.000000e-01
  %7083 = fmul fast float %7076, %7081
  %7084 = fmul fast float %7076, %7082
  %7085 = fadd fast float %7083, 0x3F0FFB4800000000
  %7086 = fadd fast float %7084, 0xBF0FFB4800000000
  %7087 = call float @dx.op.binary.f32(i32 35, float %7078, float %7085)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 36, float %7087, float %7086)  ; FMin(a,b)
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %7092 = extractvalue %dx.types.CBufRet.f32 %7089, 0
  %7093 = fmul fast float %7090, %7088
  %7094 = fadd fast float %7092, %7093
  %7095 = fadd fast float %7092, %7091
  %7096 = fsub fast float %7090, %7091
  %7097 = fadd fast float %7096, %7092
  %7098 = call float @dx.op.binary.f32(i32 35, float %7094, float %7095)  ; FMax(a,b)
  %7099 = call float @dx.op.binary.f32(i32 36, float %7098, float %7097)  ; FMin(a,b)
  %7100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7037, float %7038, float %7099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.ResRet.f32 %7100, 2
  %7104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.i32 %7104, 0
  %7106 = extractvalue %dx.types.CBufRet.i32 %7104, 1
  %7107 = uitofp i32 %7105 to float
  %7108 = uitofp i32 %7106 to float
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = fmul fast float %7107, %7037
  %7113 = fmul fast float %7108, %7038
  %7114 = fadd fast float %7112, -5.000000e-01
  %7115 = fadd fast float %7113, -5.000000e-01
  %7116 = call float @dx.op.unary.f32(i32 22, float %7114)  ; Frc(value)
  %7117 = call float @dx.op.unary.f32(i32 22, float %7115)  ; Frc(value)
  %7118 = fmul fast float %7116, %7116
  %7119 = fmul fast float %7118, %7116
  %7120 = fsub fast float 3.000000e+00, %7116
  %7121 = fmul fast float %7118, %7120
  %7122 = fmul fast float %7116, 3.000000e+00
  %7123 = fmul fast float %7119, 3.000000e+00
  %7124 = fmul fast float %7118, 6.000000e+00
  %7125 = fsub fast float %7123, %7124
  %7126 = fadd fast float %7125, 4.000000e+00
  %7127 = fmul fast float %7126, 0x3FC5555560000000
  %7128 = fmul fast float %7119, -3.000000e+00
  %7129 = fadd fast float %7118, %7116
  %7130 = fmul fast float %7129, 3.000000e+00
  %7131 = fadd fast float %7128, 1.000000e+00
  %7132 = fadd fast float %7131, %7130
  %7133 = fmul fast float %7119, 0x3FC5555560000000
  %7134 = fmul fast float %7117, %7117
  %7135 = fmul fast float %7134, %7117
  %7136 = fsub fast float 3.000000e+00, %7117
  %7137 = fmul fast float %7134, %7136
  %7138 = fmul fast float %7117, 3.000000e+00
  %7139 = fmul fast float %7135, 3.000000e+00
  %7140 = fmul fast float %7134, 6.000000e+00
  %7141 = fsub fast float %7139, %7140
  %7142 = fadd fast float %7141, 4.000000e+00
  %7143 = fmul fast float %7142, 0x3FC5555560000000
  %7144 = fmul fast float %7135, -3.000000e+00
  %7145 = fadd fast float %7134, %7117
  %7146 = fmul fast float %7145, 3.000000e+00
  %7147 = fadd fast float %7144, 1.000000e+00
  %7148 = fadd fast float %7147, %7146
  %7149 = fmul fast float %7135, 0x3FC5555560000000
  %7150 = fadd fast float %7116, 1.000000e+00
  %7151 = fsub fast float 1.000000e+00, %7122
  %7152 = fadd fast float %7151, %7121
  %7153 = fadd fast float %7152, %7126
  %7154 = fmul fast float %7153, 0x3FC5555560000000
  %7155 = fdiv fast float %7127, %7154
  %7156 = fsub fast float %7150, %7155
  %7157 = fsub fast float 1.000000e+00, %7116
  %7158 = fadd fast float %7132, %7119
  %7159 = fmul fast float %7158, 0x3FC5555560000000
  %7160 = fdiv fast float %7133, %7159
  %7161 = fadd fast float %7157, %7160
  %7162 = fadd fast float %7117, 1.000000e+00
  %7163 = fsub fast float 1.000000e+00, %7138
  %7164 = fadd fast float %7163, %7137
  %7165 = fadd fast float %7164, %7142
  %7166 = fmul fast float %7165, 0x3FC5555560000000
  %7167 = fdiv fast float %7143, %7166
  %7168 = fsub fast float %7162, %7167
  %7169 = fsub fast float 1.000000e+00, %7117
  %7170 = fadd fast float %7148, %7135
  %7171 = fmul fast float %7170, 0x3FC5555560000000
  %7172 = fdiv fast float %7149, %7171
  %7173 = fadd fast float %7172, %7169
  %7174 = fmul fast float %7156, %7110
  %7175 = fsub fast float %7037, %7174
  %7176 = fmul fast float %7161, %7110
  %7177 = fadd fast float %7176, %7037
  %7178 = fmul fast float %7173, %7111
  %7179 = fadd fast float %7178, %7038
  %7180 = fmul fast float %7168, %7111
  %7181 = fsub fast float %7038, %7180
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7175, float %7181, float %7099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.ResRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.ResRet.f32 %7182, 2
  %7186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7177, float %7181, float %7099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.ResRet.f32 %7186, 1
  %7189 = extractvalue %dx.types.ResRet.f32 %7186, 2
  %7190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7175, float %7179, float %7099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7191 = extractvalue %dx.types.ResRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.ResRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.ResRet.f32 %7190, 2
  %7194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7177, float %7179, float %7099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.ResRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.ResRet.f32 %7194, 2
  %7198 = fsub fast float %7191, %7183
  %7199 = fsub fast float %7192, %7184
  %7200 = fsub fast float %7193, %7185
  %7201 = fmul fast float %7198, %7171
  %7202 = fmul fast float %7199, %7171
  %7203 = fmul fast float %7200, %7171
  %7204 = fadd fast float %7201, %7183
  %7205 = fadd fast float %7202, %7184
  %7206 = fadd fast float %7203, %7185
  %7207 = fsub fast float %7195, %7187
  %7208 = fsub fast float %7196, %7188
  %7209 = fsub fast float %7197, %7189
  %7210 = fmul fast float %7207, %7171
  %7211 = fmul fast float %7208, %7171
  %7212 = fmul fast float %7209, %7171
  %7213 = fsub fast float %7187, %7204
  %7214 = fadd fast float %7213, %7210
  %7215 = fsub fast float %7188, %7205
  %7216 = fadd fast float %7215, %7211
  %7217 = fsub fast float %7189, %7206
  %7218 = fadd fast float %7217, %7212
  %7219 = fmul fast float %7214, %7159
  %7220 = fmul fast float %7216, %7159
  %7221 = fmul fast float %7218, %7159
  %7222 = fadd fast float %7219, %7204
  %7223 = fadd fast float %7220, %7205
  %7224 = fadd fast float %7221, %7206
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7227 = fmul fast float %7222, %7226
  %7228 = fmul fast float %7223, %7226
  %7229 = fmul fast float %7224, %7226
  br label %7230

; <label>:7230                                    ; preds = %7062, %7031
  %7231 = phi float [ %7101, %7062 ], [ 1.000000e+00, %7031 ]
  %7232 = phi float [ %7102, %7062 ], [ 1.000000e+00, %7031 ]
  %7233 = phi float [ %7103, %7062 ], [ 1.000000e+00, %7031 ]
  %7234 = phi float [ %7227, %7062 ], [ 0.000000e+00, %7031 ]
  %7235 = phi float [ %7228, %7062 ], [ 0.000000e+00, %7031 ]
  %7236 = phi float [ %7229, %7062 ], [ 0.000000e+00, %7031 ]
  %7237 = fmul fast float %7234, %7016
  %7238 = fmul fast float %7235, %7017
  %7239 = fmul fast float %7236, %7018
  %7240 = call float @dx.op.dot3.f32(i32 55, float %7231, float %7232, float %7233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7241 = call float @dx.op.dot3.f32(i32 55, float %7237, float %7238, float %7239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7242 = select i1 %235, float %7240, float %7231
  %7243 = select i1 %235, float %7240, float %7232
  %7244 = select i1 %235, float 1.000000e+00, float %7233
  %7245 = select i1 %235, float %7241, float %7237
  %7246 = select i1 %235, float 0.000000e+00, float %7238
  %7247 = select i1 %235, float 0.000000e+00, float %7239
  %7248 = fmul fast float %7242, %7021
  %7249 = fmul fast float %7243, %7022
  %7250 = fmul fast float %7244, %7023
  %7251 = fadd fast float %7248, %7245
  %7252 = fadd fast float %7249, %7246
  %7253 = fadd fast float %7247, %7250
  %7254 = fmul fast float %7242, %6985
  %7255 = fmul fast float %7243, %6986
  %7256 = fmul fast float %7244, %6987
  %7257 = fmul fast float %112, %7033
  %7258 = fmul fast float %114, %7034
  %7259 = fsub fast float 1.000000e+00, %7257
  %7260 = fsub fast float 1.000000e+00, %7258
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.CBufRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.CBufRet.f32 %7261, 2
  %7265 = fmul fast float %7259, %7262
  %7266 = fmul fast float %7259, %7263
  %7267 = fmul fast float %7259, %7264
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.CBufRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.CBufRet.f32 %7268, 2
  %7272 = fmul fast float %7260, %7269
  %7273 = fmul fast float %7260, %7270
  %7274 = fmul fast float %7260, %7271
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.CBufRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.CBufRet.f32 %7275, 2
  %7279 = fadd fast float %7272, %7276
  %7280 = fadd fast float %7279, %7265
  %7281 = fadd fast float %7273, %7277
  %7282 = fadd fast float %7281, %7266
  %7283 = fadd fast float %7274, %7278
  %7284 = fadd fast float %7283, %7267
  %7285 = fmul fast float %7280, %196
  %7286 = fmul fast float %7282, %196
  %7287 = fmul fast float %7284, %196
  br label %7288

; <label>:7288                                    ; preds = %7230, %6984
  %7289 = phi float [ %7285, %7230 ], [ %142, %6984 ]
  %7290 = phi float [ %7286, %7230 ], [ %143, %6984 ]
  %7291 = phi float [ %7287, %7230 ], [ %144, %6984 ]
  %7292 = phi float [ %196, %7230 ], [ %78, %6984 ]
  %7293 = phi float [ %7251, %7230 ], [ %7021, %6984 ]
  %7294 = phi float [ %7252, %7230 ], [ %7022, %6984 ]
  %7295 = phi float [ %7253, %7230 ], [ %7023, %6984 ]
  %7296 = phi float [ %7254, %7230 ], [ %6985, %6984 ]
  %7297 = phi float [ %7255, %7230 ], [ %6986, %6984 ]
  %7298 = phi float [ %7256, %7230 ], [ %6987, %6984 ]
  %7299 = phi float [ %7231, %7230 ], [ 1.000000e+00, %6984 ]
  br i1 %7030, label %8454, label %7300

; <label>:7300                                    ; preds = %7288
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 0
  %7303 = extractvalue %dx.types.CBufRet.f32 %7301, 1
  %7304 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7305 = extractvalue %dx.types.CBufRet.f32 %7301, 3
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 0
  %7308 = extractvalue %dx.types.CBufRet.f32 %7306, 1
  %7309 = extractvalue %dx.types.CBufRet.f32 %7306, 2
  %7310 = extractvalue %dx.types.CBufRet.f32 %7306, 3
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7314 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7315 = extractvalue %dx.types.CBufRet.f32 %7311, 3
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.CBufRet.f32 %7316, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7316, 3
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7326 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7327 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7328 = fcmp fast olt float %7327, -5.000000e-01
  %7329 = call float @dx.op.dot3.f32(i32 55, float %7289, float %7290, float %7291, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = call float @dx.op.unary.f32(i32 25, float %7329)  ; Rsqrt(value)
  %7331 = fmul fast float %7330, %7329
  %7332 = fmul fast float %7330, %7289
  %7333 = fmul fast float %7330, %7290
  %7334 = fmul fast float %7330, %7291
  %7335 = fadd fast float %7331, %7305
  %7336 = call float @dx.op.dot3.f32(i32 55, float %7332, float %7333, float %7334, float %7302, float %7303, float %7304)  ; Dot3(ax,ay,az,bx,by,bz)
  %7337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.i32 %7337, 1
  %7339 = and i32 %7338, 1
  %7340 = icmp ne i32 %7339, 0
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7343 = fcmp fast ogt float %7342, 0.000000e+00
  %7344 = and i1 %7340, %7343
  br i1 %7344, label %7345, label %7751, !dx.controlflow.hints !105

; <label>:7345                                    ; preds = %7300
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = fsub fast float %7349, %7351
  %7353 = and i32 %7338, 2
  %7354 = extractvalue %dx.types.CBufRet.i32 %7337, 0
  %7355 = call i32 @dx.op.binary.i32(i32 40, i32 %7354, i32 3)  ; UMin(a,b)
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7361 = fsub fast float %7357, %7359
  %7362 = fsub fast float %7358, %7360
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = fcmp fast ogt float %7364, 0.000000e+00
  %7366 = fsub fast float -0.000000e+00, %7361
  %7367 = fsub fast float -0.000000e+00, %7362
  %7368 = call float @dx.op.dot2.f32(i32 54, float %7332, float %7333, float %7332, float %7333)  ; Dot2(ax,ay,bx,by)
  %7369 = call float @dx.op.dot2.f32(i32 54, float %7332, float %7333, float %7366, float %7367)  ; Dot2(ax,ay,bx,by)
  %7370 = fmul fast float %7369, 2.000000e+00
  %7371 = call float @dx.op.dot2.f32(i32 54, float %7366, float %7367, float %7366, float %7367)  ; Dot2(ax,ay,bx,by)
  %7372 = fmul fast float %7364, %7364
  %7373 = fsub fast float %7371, %7372
  %7374 = fmul fast float %7370, %7370
  %7375 = fmul fast float %7368, 4.000000e+00
  %7376 = fmul fast float %7375, %7373
  %7377 = fsub fast float %7374, %7376
  %7378 = fcmp fast ogt float %7377, 0.000000e+00
  br i1 %7378, label %7379, label %7394

; <label>:7379                                    ; preds = %7345
  %7380 = fcmp fast ogt float %7370, 0.000000e+00
  %7381 = call float @dx.op.unary.f32(i32 24, float %7377)  ; Sqrt(value)
  %7382 = fsub fast float -0.000000e+00, %7381
  %7383 = select i1 %7380, float %7381, float %7382
  %7384 = fadd fast float %7383, %7370
  %7385 = fmul float %7384, -5.000000e-01
  %7386 = fdiv fast float %7385, %7368
  %7387 = call float @dx.op.binary.f32(i32 35, float %7386, float 0.000000e+00)  ; FMax(a,b)
  %7388 = call float @dx.op.binary.f32(i32 36, float %7331, float %7387)  ; FMin(a,b)
  %7389 = fdiv fast float %7373, %7385
  %7390 = call float @dx.op.binary.f32(i32 35, float %7389, float 0.000000e+00)  ; FMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 36, float %7331, float %7390)  ; FMin(a,b)
  %7392 = call float @dx.op.binary.f32(i32 36, float %7388, float %7391)  ; FMin(a,b)
  %7393 = call float @dx.op.binary.f32(i32 35, float %7388, float %7391)  ; FMax(a,b)
  br label %7394

; <label>:7394                                    ; preds = %7379, %7345
  %7395 = phi float [ %7393, %7379 ], [ -1.000000e+00, %7345 ]
  %7396 = phi float [ %7392, %7379 ], [ -1.000000e+00, %7345 ]
  %7397 = phi i1 [ true, %7379 ], [ false, %7345 ]
  %7398 = and i1 %7365, %7397
  br i1 %7398, label %7399, label %7401

; <label>:7399                                    ; preds = %7394
  %7400 = fcmp fast oeq float %7396, %7395
  br i1 %7400, label %7704, label %7402

; <label>:7401                                    ; preds = %7394
  br i1 %7365, label %7704, label %7402

; <label>:7402                                    ; preds = %7401, %7399
  %7403 = phi float [ %7331, %7401 ], [ %7395, %7399 ]
  %7404 = phi float [ 0.000000e+00, %7401 ], [ %7396, %7399 ]
  %7405 = icmp ne i32 %7353, 0
  %7406 = fmul fast float %7403, %7334
  %7407 = fadd fast float %7406, %7347
  %7408 = fmul fast float %7407, %7403
  %7409 = select i1 %7405, float 0.000000e+00, float %7408
  %7410 = fcmp fast oeq float %7334, 0.000000e+00
  %7411 = fdiv fast float %7352, %7334
  %7412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7411)  ; FMax(a,b)
  %7413 = select i1 %7410, float %7403, float %7412
  %7414 = call float @dx.op.binary.f32(i32 36, float %7403, float %7413)  ; FMin(a,b)
  %7415 = fcmp fast ogt float %7334, 0.000000e+00
  %7416 = fcmp fast olt float %7352, 0.000000e+00
  br i1 %7415, label %7417, label %7474

; <label>:7417                                    ; preds = %7402
  %7418 = icmp eq i32 %7353, 0
  br i1 %7416, label %7419, label %7463

; <label>:7419                                    ; preds = %7417
  %7420 = select i1 %7418, float %7403, float 0.000000e+00
  %7421 = fsub fast float -0.000000e+00, %7420
  %7422 = call float @dx.op.unary.f32(i32 6, float %7421)  ; FAbs(value)
  %7423 = fmul fast float %7420, %7334
  %7424 = fadd fast float %7423, %7347
  %7425 = fmul fast float %7422, %7424
  %7426 = fsub fast float %7409, %7425
  %7427 = fsub fast float %7403, %7422
  %7428 = select i1 %7418, float %7427, float 0.000000e+00
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.CBufRet.f32 %7429, 2
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.CBufRet.f32 %7433, 3
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 3
  %7440 = call float @dx.op.binary.f32(i32 36, float %7426, float %7439)  ; FMin(a,b)
  %7441 = fmul fast float %7437, %7428
  %7442 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7443 = fsub fast float %7434, %7430
  %7444 = fsub fast float %7435, %7431
  %7445 = fsub fast float %7436, %7432
  %7446 = fmul fast float %7442, %7443
  %7447 = fmul fast float %7442, %7444
  %7448 = fmul fast float %7442, %7445
  %7449 = fadd fast float %7446, %7430
  %7450 = fadd fast float %7447, %7431
  %7451 = fadd fast float %7448, %7432
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.CBufRet.f32 %7452, 1
  %7455 = fadd fast float %7454, %7453
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7452, 2
  %7458 = extractvalue %dx.types.CBufRet.f32 %7452, 3
  %7459 = fadd fast float %7458, %7457
  %7460 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7461 = fmul fast float %7456, %7440
  %7462 = fmul fast float %7461, %7460
  br label %7704

; <label>:7463                                    ; preds = %7417
  br i1 %7418, label %7464, label %7485

; <label>:7464                                    ; preds = %7463
  %7465 = call float @dx.op.binary.f32(i32 36, float %7414, float %7404)  ; FMin(a,b)
  %7466 = fsub fast float %7414, %7465
  %7467 = fsub fast float %7466, %7403
  %7468 = call float @dx.op.unary.f32(i32 6, float %7467)  ; FAbs(value)
  %7469 = fadd fast float %7466, %7403
  %7470 = fmul fast float %7469, %7334
  %7471 = fadd fast float %7470, %7347
  %7472 = fmul fast float %7471, %7468
  %7473 = fsub fast float %7409, %7472
  br label %7485

; <label>:7474                                    ; preds = %7402
  br i1 %7416, label %7475, label %7485

; <label>:7475                                    ; preds = %7474
  %7476 = call float @dx.op.binary.f32(i32 35, float %7404, float %7414)  ; FMax(a,b)
  %7477 = icmp eq i32 %7353, 0
  %7478 = select i1 %7477, float %7414, float 0.000000e+00
  %7479 = fsub fast float -0.000000e+00, %7478
  %7480 = call float @dx.op.unary.f32(i32 6, float %7479)  ; FAbs(value)
  %7481 = fmul fast float %7478, %7334
  %7482 = fadd fast float %7481, %7347
  %7483 = fmul fast float %7480, %7482
  %7484 = fsub fast float %7409, %7483
  br label %7485

; <label>:7485                                    ; preds = %7475, %7474, %7464, %7463
  %7486 = phi float [ %7404, %7463 ], [ %7404, %7464 ], [ %7476, %7475 ], [ %7404, %7474 ]
  %7487 = phi float [ 0.000000e+00, %7463 ], [ %7468, %7464 ], [ %7480, %7475 ], [ 0.000000e+00, %7474 ]
  %7488 = phi float [ %7409, %7463 ], [ %7473, %7464 ], [ %7484, %7475 ], [ %7409, %7474 ]
  %7489 = phi float [ %7414, %7463 ], [ %7414, %7464 ], [ %7403, %7475 ], [ %7403, %7474 ]
  %7490 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7490, align 4, !tbaa !106, !noalias !108
  %7491 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7491, align 4, !tbaa !106, !noalias !108
  %7492 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7492, align 4, !tbaa !106, !noalias !108
  %7493 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7493, align 4, !tbaa !106, !noalias !108
  %7494 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7494, align 4, !tbaa !106, !noalias !108
  %7495 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7495, align 4, !tbaa !106, !noalias !108
  %7496 = icmp sgt i32 %7355, 0
  br i1 %7496, label %7497, label %7558

; <label>:7497                                    ; preds = %7485
  br label %7498

; <label>:7498                                    ; preds = %7547, %7497
  %7499 = phi i32 [ %7548, %7547 ], [ 0, %7497 ]
  %7500 = phi i32 [ %7549, %7547 ], [ 0, %7497 ]
  %7501 = add nuw i32 %7500, 171
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7501)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.CBufRet.f32 %7505, 1
  %7508 = fsub fast float %7503, %7506
  %7509 = fsub fast float %7504, %7507
  %7510 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7511 = fsub fast float -0.000000e+00, %7508
  %7512 = fsub fast float -0.000000e+00, %7509
  %7513 = call float @dx.op.dot2.f32(i32 54, float %7332, float %7333, float %7511, float %7512)  ; Dot2(ax,ay,bx,by)
  %7514 = fmul fast float %7513, 2.000000e+00
  %7515 = call float @dx.op.dot2.f32(i32 54, float %7511, float %7512, float %7511, float %7512)  ; Dot2(ax,ay,bx,by)
  %7516 = fmul fast float %7510, %7510
  %7517 = fsub fast float %7515, %7516
  %7518 = fmul fast float %7514, %7514
  %7519 = fmul fast float %7375, %7517
  %7520 = fsub fast float %7518, %7519
  %7521 = fcmp fast ogt float %7520, 0.000000e+00
  br i1 %7521, label %7522, label %7537

; <label>:7522                                    ; preds = %7498
  %7523 = fcmp fast ogt float %7514, 0.000000e+00
  %7524 = call float @dx.op.unary.f32(i32 24, float %7520)  ; Sqrt(value)
  %7525 = fsub fast float -0.000000e+00, %7524
  %7526 = select i1 %7523, float %7524, float %7525
  %7527 = fadd fast float %7526, %7514
  %7528 = fmul float %7527, -5.000000e-01
  %7529 = fdiv fast float %7528, %7368
  %7530 = call float @dx.op.binary.f32(i32 35, float %7529, float 0.000000e+00)  ; FMax(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7403, float %7530)  ; FMin(a,b)
  %7532 = fdiv fast float %7517, %7528
  %7533 = call float @dx.op.binary.f32(i32 35, float %7532, float 0.000000e+00)  ; FMax(a,b)
  %7534 = call float @dx.op.binary.f32(i32 36, float %7403, float %7533)  ; FMin(a,b)
  %7535 = call float @dx.op.binary.f32(i32 36, float %7531, float %7534)  ; FMin(a,b)
  %7536 = call float @dx.op.binary.f32(i32 35, float %7531, float %7534)  ; FMax(a,b)
  br label %7537

; <label>:7537                                    ; preds = %7522, %7498
  %7538 = phi float [ %7536, %7522 ], [ -1.000000e+00, %7498 ]
  %7539 = phi float [ %7535, %7522 ], [ -1.000000e+00, %7498 ]
  %7540 = phi i1 [ true, %7522 ], [ false, %7498 ]
  br i1 %7540, label %7541, label %7547

; <label>:7541                                    ; preds = %7537
  %7542 = call float @dx.op.binary.f32(i32 35, float %7486, float %7539)  ; FMax(a,b)
  %7543 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7500
  store float %7542, float* %7543, align 4, !tbaa !106, !noalias !108
  %7544 = call float @dx.op.binary.f32(i32 35, float %7486, float %7538)  ; FMax(a,b)
  %7545 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7500
  store float %7544, float* %7545, align 4, !tbaa !106, !noalias !108
  %7546 = add nsw i32 %7499, 1
  br label %7547

; <label>:7547                                    ; preds = %7541, %7537
  %7548 = phi i32 [ %7546, %7541 ], [ %7499, %7537 ]
  %7549 = add nuw nsw i32 %7500, 1
  %7550 = icmp eq i32 %7549, %7355
  br i1 %7550, label %7551, label %7498

; <label>:7551                                    ; preds = %7547
  %7552 = load float, float* %7492, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7553 = load float, float* %7491, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %7554 = load float, float* %7490, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %7555 = load float, float* %7495, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7556 = load float, float* %7494, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %7557 = load float, float* %7493, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %7558

; <label>:7558                                    ; preds = %7551, %7485
  %7559 = phi float [ -1.000000e+00, %7485 ], [ %7557, %7551 ]
  %7560 = phi float [ -1.000000e+00, %7485 ], [ %7556, %7551 ]
  %7561 = phi float [ -1.000000e+00, %7485 ], [ %7555, %7551 ]
  %7562 = phi float [ -1.000000e+00, %7485 ], [ %7554, %7551 ]
  %7563 = phi float [ -1.000000e+00, %7485 ], [ %7553, %7551 ]
  %7564 = phi float [ -1.000000e+00, %7485 ], [ %7552, %7551 ]
  %7565 = phi i32 [ 0, %7485 ], [ %7548, %7551 ]
  %7566 = call float @dx.op.binary.f32(i32 36, float %7563, float %7564)  ; FMin(a,b)
  %7567 = call float @dx.op.binary.f32(i32 36, float %7562, float %7566)  ; FMin(a,b)
  %7568 = call float @dx.op.binary.f32(i32 35, float %7562, float %7563)  ; FMax(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7568, float %7564)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 36, float %7562, float %7563)  ; FMin(a,b)
  %7571 = call float @dx.op.binary.f32(i32 35, float %7570, float %7569)  ; FMax(a,b)
  %7572 = call float @dx.op.binary.f32(i32 35, float %7563, float %7564)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %7562, float %7572)  ; FMax(a,b)
  store float %7567, float* %7490, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %7571, float* %7491, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %7573, float* %7492, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7574 = call float @dx.op.binary.f32(i32 36, float %7560, float %7561)  ; FMin(a,b)
  %7575 = call float @dx.op.binary.f32(i32 36, float %7559, float %7574)  ; FMin(a,b)
  %7576 = call float @dx.op.binary.f32(i32 35, float %7559, float %7560)  ; FMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7576, float %7561)  ; FMin(a,b)
  %7578 = call float @dx.op.binary.f32(i32 36, float %7559, float %7560)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 35, float %7578, float %7577)  ; FMax(a,b)
  %7580 = call float @dx.op.binary.f32(i32 35, float %7560, float %7561)  ; FMax(a,b)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7559, float %7580)  ; FMax(a,b)
  store float %7575, float* %7493, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %7579, float* %7494, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %7581, float* %7495, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7582 = sub nsw i32 3, %7565
  %7583 = icmp sgt i32 %7582, 2
  br i1 %7583, label %7584, label %7622

; <label>:7584                                    ; preds = %7558
  %7585 = icmp eq i32 %7353, 0
  %7586 = fsub fast float %7403, %7487
  %7587 = select i1 %7585, float %7586, float %7487
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7596 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7599 = call float @dx.op.binary.f32(i32 36, float %7488, float %7598)  ; FMin(a,b)
  %7600 = fmul fast float %7596, %7587
  %7601 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  %7602 = fsub fast float %7593, %7589
  %7603 = fsub fast float %7594, %7590
  %7604 = fsub fast float %7595, %7591
  %7605 = fmul fast float %7601, %7602
  %7606 = fmul fast float %7601, %7603
  %7607 = fmul fast float %7601, %7604
  %7608 = fadd fast float %7605, %7589
  %7609 = fadd fast float %7606, %7590
  %7610 = fadd fast float %7607, %7591
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7614 = fadd fast float %7613, %7612
  %7615 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7617 = extractvalue %dx.types.CBufRet.f32 %7611, 3
  %7618 = fadd fast float %7617, %7616
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = fmul fast float %7615, %7599
  %7621 = fmul fast float %7620, %7619
  br label %7704

; <label>:7622                                    ; preds = %7558
  %7623 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7582
  %7624 = load float, float* %7623, align 4, !tbaa !106, !noalias !108
  %7625 = fcmp fast olt float %7624, %7489
  %7626 = icmp sgt i32 %7565, 0
  %7627 = and i1 %7626, %7625
  br i1 %7627, label %7628, label %7665

; <label>:7628                                    ; preds = %7622
  br label %7629

; <label>:7629                                    ; preds = %7658, %7628
  %7630 = phi float [ %7659, %7658 ], [ %7487, %7628 ]
  %7631 = phi float [ %7660, %7658 ], [ %7488, %7628 ]
  %7632 = phi float [ %7640, %7658 ], [ %7624, %7628 ]
  %7633 = phi i32 [ %7637, %7658 ], [ %7582, %7628 ]
  %7634 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7633
  %7635 = load float, float* %7634, align 4, !tbaa !106, !noalias !108
  %7636 = icmp slt i32 %7633, 2
  %7637 = add nsw i32 %7633, 1
  %7638 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7637
  %7639 = load float, float* %7638, align 4, !tbaa !106, !noalias !108
  %7640 = select i1 %7636, float %7639, float %7403
  %7641 = call float @dx.op.binary.f32(i32 36, float %7640, float %7635)  ; FMin(a,b)
  %7642 = call float @dx.op.binary.f32(i32 36, float %7489, float %7641)  ; FMin(a,b)
  %7643 = icmp eq i32 %7353, 0
  %7644 = fadd fast float %7642, %7632
  %7645 = fmul fast float %7644, %7334
  %7646 = fadd fast float %7645, %7347
  br i1 %7643, label %7652, label %7647

; <label>:7647                                    ; preds = %7629
  %7648 = fsub fast float %7642, %7632
  %7649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7648)  ; FMax(a,b)
  %7650 = fmul fast float %7649, %7646
  %7651 = fadd fast float %7650, %7631
  br label %7658

; <label>:7652                                    ; preds = %7629
  %7653 = fsub fast float %7632, %7642
  %7654 = call float @dx.op.unary.f32(i32 6, float %7653)  ; FAbs(value)
  %7655 = fadd fast float %7654, %7630
  %7656 = fmul fast float %7654, %7646
  %7657 = fsub fast float %7631, %7656
  br label %7658

; <label>:7658                                    ; preds = %7652, %7647
  %7659 = phi float [ %7649, %7647 ], [ %7655, %7652 ]
  %7660 = phi float [ %7651, %7647 ], [ %7657, %7652 ]
  %7661 = fcmp fast olt float %7640, %7489
  %7662 = icmp slt i32 %7637, 3
  %7663 = and i1 %7662, %7661
  br i1 %7663, label %7629, label %7664

; <label>:7664                                    ; preds = %7658
  br label %7665

; <label>:7665                                    ; preds = %7664, %7622
  %7666 = phi float [ %7487, %7622 ], [ %7659, %7664 ]
  %7667 = phi float [ %7488, %7622 ], [ %7660, %7664 ]
  %7668 = fsub fast float %7403, %7666
  %7669 = select i1 %7405, float %7666, float %7668
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.CBufRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.CBufRet.f32 %7674, 2
  %7678 = extractvalue %dx.types.CBufRet.f32 %7674, 3
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 3
  %7681 = call float @dx.op.binary.f32(i32 36, float %7667, float %7680)  ; FMin(a,b)
  %7682 = fmul fast float %7678, %7669
  %7683 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7684 = fsub fast float %7675, %7671
  %7685 = fsub fast float %7676, %7672
  %7686 = fsub fast float %7677, %7673
  %7687 = fmul fast float %7683, %7684
  %7688 = fmul fast float %7683, %7685
  %7689 = fmul fast float %7683, %7686
  %7690 = fadd fast float %7687, %7671
  %7691 = fadd fast float %7688, %7672
  %7692 = fadd fast float %7689, %7673
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = fadd fast float %7695, %7694
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7699 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7700 = fadd fast float %7699, %7698
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fmul fast float %7697, %7681
  %7703 = fmul fast float %7702, %7701
  br label %7704

; <label>:7704                                    ; preds = %7665, %7584, %7419, %7401, %7399
  %7705 = phi float [ %7428, %7419 ], [ %7587, %7584 ], [ %7669, %7665 ], [ 0.000000e+00, %7399 ], [ 0.000000e+00, %7401 ]
  %7706 = phi float [ %7462, %7419 ], [ %7621, %7584 ], [ %7703, %7665 ], [ 0.000000e+00, %7399 ], [ 0.000000e+00, %7401 ]
  %7707 = phi float [ %7449, %7419 ], [ %7608, %7584 ], [ %7690, %7665 ], [ 0.000000e+00, %7399 ], [ 0.000000e+00, %7401 ]
  %7708 = phi float [ %7450, %7419 ], [ %7609, %7584 ], [ %7691, %7665 ], [ 0.000000e+00, %7399 ], [ 0.000000e+00, %7401 ]
  %7709 = phi float [ %7451, %7419 ], [ %7610, %7584 ], [ %7692, %7665 ], [ 0.000000e+00, %7399 ], [ 0.000000e+00, %7401 ]
  %7710 = fmul fast float %7342, %7706
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 2
  %7713 = fsub fast float %7349, %7712
  %7714 = fcmp fast olt float %7710, -2.000000e+01
  %7715 = call float @dx.op.unary.f32(i32 21, float %7710)  ; Exp(value)
  %7716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7717 = extractvalue %dx.types.CBufRet.f32 %7716, 2
  %7718 = extractvalue %dx.types.CBufRet.f32 %7716, 3
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7721 = fmul fast float %7718, %7713
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fsub fast float 1.000000e+00, %7722
  %7724 = fmul fast float %7334, 5.000000e-01
  %7725 = fadd fast float %7724, 5.000000e-01
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = fsub fast float 1.000000e+00, %7726
  %7728 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7723)  ; FMax(a,b)
  %7729 = fdiv fast float %7727, %7728
  %7730 = fsub fast float %7713, %7291
  %7731 = call float @dx.op.unary.f32(i32 6, float %7730)  ; FAbs(value)
  %7732 = fmul fast float %7731, %7717
  %7733 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7734 = fsub fast float 1.000000e+00, %7732
  %7735 = fmul fast float %7734, %7733
  %7736 = fadd fast float %7735, %7732
  %7737 = fmul fast float %7720, %7713
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7739 = fsub fast float 1.000000e+00, %7736
  %7740 = fmul fast float %7739, %7738
  %7741 = fadd fast float %7740, %7736
  %7742 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7743 = fadd fast float %7715, -1.000000e+00
  %7744 = select i1 %7714, float -1.000000e+00, float %7743
  %7745 = fmul fast float %7742, %7744
  %7746 = fadd fast float %7745, 1.000000e+00
  %7747 = fsub fast float -0.000000e+00, %7745
  %7748 = fmul fast float %7707, %7747
  %7749 = fmul fast float %7708, %7747
  %7750 = fmul fast float %7709, %7747
  br label %7751

; <label>:7751                                    ; preds = %7704, %7300
  %7752 = phi float [ %7705, %7704 ], [ 0.000000e+00, %7300 ]
  %7753 = phi float [ %7746, %7704 ], [ 1.000000e+00, %7300 ]
  %7754 = phi float [ %7748, %7704 ], [ 0.000000e+00, %7300 ]
  %7755 = phi float [ %7749, %7704 ], [ 0.000000e+00, %7300 ]
  %7756 = phi float [ %7750, %7704 ], [ 0.000000e+00, %7300 ]
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7759 = fsub fast float 1.000000e+00, %7753
  %7760 = fmul fast float %7759, %7335
  %7761 = fmul fast float %7760, %7758
  %7762 = fsub fast float %7335, %7761
  br i1 %7328, label %7763, label %7792, !dx.controlflow.hints !144

; <label>:7763                                    ; preds = %7751
  %7764 = fmul fast float %7336, %7325
  %7765 = fadd fast float %7764, %7326
  %7766 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7767 = fmul fast float %7307, %7762
  %7768 = fsub fast float -0.000000e+00, %7767
  %7769 = fmul fast float %7308, %7762
  %7770 = fsub fast float -0.000000e+00, %7769
  %7771 = call float @dx.op.unary.f32(i32 21, float %7768)  ; Exp(value)
  %7772 = call float @dx.op.unary.f32(i32 21, float %7770)  ; Exp(value)
  %7773 = call float @dx.op.binary.f32(i32 35, float %7315, float %7771)  ; FMax(a,b)
  %7774 = call float @dx.op.binary.f32(i32 35, float %7315, float %7772)  ; FMax(a,b)
  %7775 = fsub fast float %7774, %7773
  %7776 = fmul fast float %7775, %7766
  %7777 = fadd fast float %7776, %7773
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fsub fast float %7312, %7317
  %7780 = fsub fast float %7313, %7318
  %7781 = fsub fast float %7314, %7319
  %7782 = fmul fast float %7766, %7779
  %7783 = fmul fast float %7766, %7780
  %7784 = fmul fast float %7766, %7781
  %7785 = fadd fast float %7782, %7317
  %7786 = fadd fast float %7783, %7318
  %7787 = fadd fast float %7784, %7319
  %7788 = fsub fast float 1.000000e+00, %7778
  %7789 = fmul fast float %7788, %7785
  %7790 = fmul fast float %7788, %7786
  %7791 = fmul fast float %7788, %7787
  br label %7851

; <label>:7792                                    ; preds = %7751
  %7793 = fmul fast float %7762, %7324
  %7794 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7795 = fsub fast float 2.000000e+00, %7794
  %7796 = fmul fast float %7794, 9.921875e-01
  %7797 = fmul fast float %7796, %7795
  %7798 = fadd fast float %7797, 3.906250e-03
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7798, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = fsub fast float %7794, %7800
  %7802 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7801)  ; FMax(a,b)
  %7803 = fmul fast float %7310, %7291
  %7804 = call float @dx.op.unary.f32(i32 6, float %7803)  ; FAbs(value)
  %7805 = fcmp fast ogt float %7804, 0x3EB0C6F7A0000000
  br i1 %7805, label %7806, label %7812, !dx.controlflow.hints !145

; <label>:7806                                    ; preds = %7792
  %7807 = fmul fast float %7803, 0xBFF7154760000000
  %7808 = call float @dx.op.unary.f32(i32 21, float %7807)  ; Exp(value)
  %7809 = fsub fast float 1.000000e+00, %7808
  %7810 = fdiv fast float %7809, %7803
  %7811 = fmul fast float %7810, %7320
  br label %7812

; <label>:7812                                    ; preds = %7806, %7792
  %7813 = phi float [ %7811, %7806 ], [ %7320, %7792 ]
  %7814 = fadd fast float %7813, %7322
  %7815 = fmul fast float %7814, %7802
  %7816 = fmul fast float %7307, %7815
  %7817 = fsub fast float -0.000000e+00, %7816
  %7818 = fmul fast float %7308, %7815
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = fmul fast float %7309, %7815
  %7821 = fsub fast float -0.000000e+00, %7820
  %7822 = call float @dx.op.unary.f32(i32 21, float %7817)  ; Exp(value)
  %7823 = call float @dx.op.unary.f32(i32 21, float %7819)  ; Exp(value)
  %7824 = call float @dx.op.unary.f32(i32 21, float %7821)  ; Exp(value)
  %7825 = fmul fast float %7336, %7336
  %7826 = fadd fast float %7825, 1.000000e+00
  %7827 = fmul fast float %7826, 0x3FAE8EC8A0000000
  %7828 = fmul fast float %7827, %7317
  %7829 = fmul fast float %7827, %7318
  %7830 = fmul fast float %7827, %7319
  %7831 = fmul fast float %7336, %7315
  %7832 = fsub fast float 1.000000e+00, %7831
  %7833 = fmul fast float %7315, %7315
  %7834 = fsub fast float 1.000000e+00, %7833
  %7835 = fmul fast float %7834, 0x3FB45F3060000000
  %7836 = fmul fast float %7832, %7832
  %7837 = fdiv fast float 1.000000e+00, %7836
  %7838 = fmul fast float %7835, %7837
  %7839 = fmul fast float %7838, %7312
  %7840 = fmul fast float %7838, %7313
  %7841 = fmul fast float %7838, %7314
  %7842 = fadd fast float %7839, %7828
  %7843 = fadd fast float %7840, %7829
  %7844 = fadd fast float %7841, %7830
  %7845 = fsub fast float 1.000000e+00, %7822
  %7846 = fsub fast float 1.000000e+00, %7823
  %7847 = fsub fast float 1.000000e+00, %7824
  %7848 = fmul fast float %7842, %7845
  %7849 = fmul fast float %7843, %7846
  %7850 = fmul fast float %7844, %7847
  br label %7851

; <label>:7851                                    ; preds = %7812, %7763
  %7852 = phi float [ %7789, %7763 ], [ %7848, %7812 ]
  %7853 = phi float [ %7790, %7763 ], [ %7849, %7812 ]
  %7854 = phi float [ %7791, %7763 ], [ %7850, %7812 ]
  %7855 = phi float [ %7778, %7763 ], [ %7822, %7812 ]
  %7856 = phi float [ %7778, %7763 ], [ %7823, %7812 ]
  %7857 = phi float [ %7778, %7763 ], [ %7824, %7812 ]
  br i1 %7344, label %7858, label %8056, !dx.controlflow.hints !146

; <label>:7858                                    ; preds = %7851
  %7859 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7860 = fmul fast float %7859, %7759
  %7861 = fsub fast float %7754, %7852
  %7862 = fsub fast float %7755, %7853
  %7863 = fsub fast float %7756, %7854
  %7864 = fmul fast float %7860, %7861
  %7865 = fmul fast float %7860, %7862
  %7866 = fmul fast float %7860, %7863
  %7867 = fadd fast float %7864, %7852
  %7868 = fadd fast float %7865, %7853
  %7869 = fadd fast float %7866, %7854
  %7870 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7855)  ; FMax(a,b)
  %7871 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7856)  ; FMax(a,b)
  %7872 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7857)  ; FMax(a,b)
  %7873 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7753)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7752, float %7762)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7874)  ; FMax(a,b)
  %7876 = fdiv fast float %7752, %7875
  %7877 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7878 = fdiv fast float %7762, %7875
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = fcmp fast une float %7873, 1.000000e+00
  br i1 %7880, label %7881, label %7894, !dx.controlflow.hints !147

; <label>:7881                                    ; preds = %7858
  %7882 = call float @dx.op.unary.f32(i32 23, float %7873)  ; Log(value)
  %7883 = fmul fast float %7882, 0x3FE62E4300000000
  %7884 = fmul fast float %7754, %7883
  %7885 = fsub fast float -0.000000e+00, %7884
  %7886 = fmul fast float %7755, %7883
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = fmul fast float %7756, %7883
  %7889 = fsub fast float -0.000000e+00, %7888
  %7890 = fsub fast float 1.000000e+00, %7873
  %7891 = fdiv fast float %7885, %7890
  %7892 = fdiv fast float %7887, %7890
  %7893 = fdiv fast float %7889, %7890
  br label %7894

; <label>:7894                                    ; preds = %7881, %7858
  %7895 = phi float [ %7891, %7881 ], [ %7754, %7858 ]
  %7896 = phi float [ %7892, %7881 ], [ %7755, %7858 ]
  %7897 = phi float [ %7893, %7881 ], [ %7756, %7858 ]
  %7898 = phi float [ %7883, %7881 ], [ 0.000000e+00, %7858 ]
  %7899 = fcmp fast une float %7870, 1.000000e+00
  br i1 %7899, label %7900, label %7907, !dx.controlflow.hints !148

; <label>:7900                                    ; preds = %7894
  %7901 = call float @dx.op.unary.f32(i32 23, float %7870)  ; Log(value)
  %7902 = fmul fast float %7901, 0x3FE62E4300000000
  %7903 = fmul fast float %7867, %7902
  %7904 = fsub fast float -0.000000e+00, %7903
  %7905 = fsub fast float 1.000000e+00, %7870
  %7906 = fdiv fast float %7904, %7905
  br label %7907

; <label>:7907                                    ; preds = %7900, %7894
  %7908 = phi float [ %7906, %7900 ], [ %7867, %7894 ]
  %7909 = phi float [ %7902, %7900 ], [ 0.000000e+00, %7894 ]
  %7910 = fcmp fast une float %7871, 1.000000e+00
  br i1 %7910, label %7911, label %7918, !dx.controlflow.hints !148

; <label>:7911                                    ; preds = %7907
  %7912 = call float @dx.op.unary.f32(i32 23, float %7871)  ; Log(value)
  %7913 = fmul fast float %7912, 0x3FE62E4300000000
  %7914 = fmul fast float %7868, %7913
  %7915 = fsub fast float -0.000000e+00, %7914
  %7916 = fsub fast float 1.000000e+00, %7871
  %7917 = fdiv fast float %7915, %7916
  br label %7918

; <label>:7918                                    ; preds = %7911, %7907
  %7919 = phi float [ %7917, %7911 ], [ %7868, %7907 ]
  %7920 = phi float [ %7913, %7911 ], [ 0.000000e+00, %7907 ]
  %7921 = fcmp fast une float %7872, 1.000000e+00
  br i1 %7921, label %7922, label %7929, !dx.controlflow.hints !148

; <label>:7922                                    ; preds = %7918
  %7923 = call float @dx.op.unary.f32(i32 23, float %7872)  ; Log(value)
  %7924 = fmul fast float %7923, 0x3FE62E4300000000
  %7925 = fmul fast float %7869, %7924
  %7926 = fsub fast float -0.000000e+00, %7925
  %7927 = fsub fast float 1.000000e+00, %7872
  %7928 = fdiv fast float %7926, %7927
  br label %7929

; <label>:7929                                    ; preds = %7922, %7918
  %7930 = phi float [ %7928, %7922 ], [ %7869, %7918 ]
  %7931 = phi float [ %7924, %7922 ], [ 0.000000e+00, %7918 ]
  %7932 = fmul fast float %7895, %7879
  %7933 = fmul fast float %7896, %7879
  %7934 = fmul fast float %7897, %7879
  %7935 = fmul fast float %7898, %7879
  %7936 = fmul fast float %7908, %7877
  %7937 = fmul fast float %7919, %7877
  %7938 = fmul fast float %7930, %7877
  %7939 = fmul fast float %7909, %7877
  %7940 = fmul fast float %7920, %7877
  %7941 = fmul fast float %7931, %7877
  %7942 = fadd fast float %7936, %7932
  %7943 = fadd fast float %7937, %7933
  %7944 = fadd fast float %7938, %7934
  %7945 = fadd fast float %7939, %7935
  %7946 = fadd fast float %7940, %7935
  %7947 = fadd fast float %7941, %7935
  %7948 = fcmp fast une float %7945, 0.000000e+00
  br i1 %7948, label %7949, label %7956, !dx.controlflow.hints !149

; <label>:7949                                    ; preds = %7929
  %7950 = fmul fast float %7945, 0x3FF7154760000000
  %7951 = call float @dx.op.unary.f32(i32 21, float %7950)  ; Exp(value)
  %7952 = fsub fast float 1.000000e+00, %7951
  %7953 = fmul fast float %7942, %7952
  %7954 = fsub fast float -0.000000e+00, %7953
  %7955 = fdiv fast float %7954, %7945
  br label %7956

; <label>:7956                                    ; preds = %7949, %7929
  %7957 = phi float [ %7951, %7949 ], [ 1.000000e+00, %7929 ]
  %7958 = phi float [ %7955, %7949 ], [ %7942, %7929 ]
  %7959 = fcmp fast une float %7946, 0.000000e+00
  br i1 %7959, label %7960, label %7967, !dx.controlflow.hints !149

; <label>:7960                                    ; preds = %7956
  %7961 = fmul fast float %7946, 0x3FF7154760000000
  %7962 = call float @dx.op.unary.f32(i32 21, float %7961)  ; Exp(value)
  %7963 = fsub fast float 1.000000e+00, %7962
  %7964 = fmul fast float %7943, %7963
  %7965 = fsub fast float -0.000000e+00, %7964
  %7966 = fdiv fast float %7965, %7946
  br label %7967

; <label>:7967                                    ; preds = %7960, %7956
  %7968 = phi float [ %7962, %7960 ], [ 1.000000e+00, %7956 ]
  %7969 = phi float [ %7966, %7960 ], [ %7943, %7956 ]
  %7970 = fcmp fast une float %7947, 0.000000e+00
  br i1 %7970, label %7971, label %7978, !dx.controlflow.hints !149

; <label>:7971                                    ; preds = %7967
  %7972 = fmul fast float %7947, 0x3FF7154760000000
  %7973 = call float @dx.op.unary.f32(i32 21, float %7972)  ; Exp(value)
  %7974 = fsub fast float 1.000000e+00, %7973
  %7975 = fmul fast float %7944, %7974
  %7976 = fsub fast float -0.000000e+00, %7975
  %7977 = fdiv fast float %7976, %7947
  br label %7978

; <label>:7978                                    ; preds = %7971, %7967
  %7979 = phi float [ %7973, %7971 ], [ 1.000000e+00, %7967 ]
  %7980 = phi float [ %7977, %7971 ], [ %7944, %7967 ]
  %7981 = fcmp fast ogt float %7877, %7879
  br i1 %7981, label %7982, label %8002

; <label>:7982                                    ; preds = %7978
  %7983 = fsub fast float 1.000000e+00, %7879
  %7984 = fmul fast float %7895, %7983
  %7985 = fmul fast float %7896, %7983
  %7986 = fmul fast float %7897, %7983
  %7987 = fmul fast float %7898, %7983
  %7988 = fcmp fast une float %7987, 0.000000e+00
  br i1 %7988, label %7989, label %8040, !dx.controlflow.hints !150

; <label>:7989                                    ; preds = %7982
  %7990 = fmul fast float %7987, 0x3FF7154760000000
  %7991 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7992 = fsub fast float 1.000000e+00, %7991
  %7993 = fmul fast float %7984, %7992
  %7994 = fsub fast float -0.000000e+00, %7993
  %7995 = fmul fast float %7985, %7992
  %7996 = fsub fast float -0.000000e+00, %7995
  %7997 = fmul fast float %7986, %7992
  %7998 = fsub fast float -0.000000e+00, %7997
  %7999 = fdiv fast float %7994, %7987
  %8000 = fdiv fast float %7996, %7987
  %8001 = fdiv fast float %7998, %7987
  br label %8040

; <label>:8002                                    ; preds = %7978
  %8003 = fsub fast float 1.000000e+00, %7877
  %8004 = fmul fast float %7908, %8003
  %8005 = fmul fast float %7919, %8003
  %8006 = fmul fast float %7930, %8003
  %8007 = fmul fast float %7909, %8003
  %8008 = fmul fast float %7920, %8003
  %8009 = fmul fast float %7931, %8003
  %8010 = fcmp fast une float %8007, 0.000000e+00
  br i1 %8010, label %8011, label %8018, !dx.controlflow.hints !149

; <label>:8011                                    ; preds = %8002
  %8012 = fmul fast float %8007, 0x3FF7154760000000
  %8013 = call float @dx.op.unary.f32(i32 21, float %8012)  ; Exp(value)
  %8014 = fsub fast float 1.000000e+00, %8013
  %8015 = fmul fast float %8004, %8014
  %8016 = fsub fast float -0.000000e+00, %8015
  %8017 = fdiv fast float %8016, %8007
  br label %8018

; <label>:8018                                    ; preds = %8011, %8002
  %8019 = phi float [ %8017, %8011 ], [ %8004, %8002 ]
  %8020 = phi float [ %8013, %8011 ], [ 1.000000e+00, %8002 ]
  %8021 = fcmp fast une float %8008, 0.000000e+00
  br i1 %8021, label %8022, label %8029, !dx.controlflow.hints !149

; <label>:8022                                    ; preds = %8018
  %8023 = fmul fast float %8008, 0x3FF7154760000000
  %8024 = call float @dx.op.unary.f32(i32 21, float %8023)  ; Exp(value)
  %8025 = fsub fast float 1.000000e+00, %8024
  %8026 = fmul fast float %8005, %8025
  %8027 = fsub fast float -0.000000e+00, %8026
  %8028 = fdiv fast float %8027, %8008
  br label %8029

; <label>:8029                                    ; preds = %8022, %8018
  %8030 = phi float [ %8028, %8022 ], [ %8005, %8018 ]
  %8031 = phi float [ %8024, %8022 ], [ 1.000000e+00, %8018 ]
  %8032 = fcmp fast une float %8009, 0.000000e+00
  br i1 %8032, label %8033, label %8040, !dx.controlflow.hints !149

; <label>:8033                                    ; preds = %8029
  %8034 = fmul fast float %8009, 0x3FF7154760000000
  %8035 = call float @dx.op.unary.f32(i32 21, float %8034)  ; Exp(value)
  %8036 = fsub fast float 1.000000e+00, %8035
  %8037 = fmul fast float %8006, %8036
  %8038 = fsub fast float -0.000000e+00, %8037
  %8039 = fdiv fast float %8038, %8009
  br label %8040

; <label>:8040                                    ; preds = %8033, %8029, %7989, %7982
  %8041 = phi float [ %8039, %8033 ], [ %8001, %7989 ], [ %7986, %7982 ], [ %8006, %8029 ]
  %8042 = phi float [ %8030, %8033 ], [ %8000, %7989 ], [ %7985, %7982 ], [ %8030, %8029 ]
  %8043 = phi float [ %8019, %8033 ], [ %7999, %7989 ], [ %7984, %7982 ], [ %8019, %8029 ]
  %8044 = phi float [ %8035, %8033 ], [ %7991, %7989 ], [ 1.000000e+00, %7982 ], [ 1.000000e+00, %8029 ]
  %8045 = phi float [ %8031, %8033 ], [ %7991, %7989 ], [ 1.000000e+00, %7982 ], [ %8031, %8029 ]
  %8046 = phi float [ %8020, %8033 ], [ %7991, %7989 ], [ 1.000000e+00, %7982 ], [ %8020, %8029 ]
  %8047 = fmul fast float %8046, %7958
  %8048 = fmul fast float %8045, %7969
  %8049 = fmul fast float %8044, %7980
  %8050 = fadd fast float %8047, %8043
  %8051 = fadd fast float %8048, %8042
  %8052 = fadd fast float %8049, %8041
  %8053 = fmul fast float %8046, %7957
  %8054 = fmul fast float %8045, %7968
  %8055 = fmul fast float %8044, %7979
  br label %8056

; <label>:8056                                    ; preds = %8040, %7851
  %8057 = phi float [ %8055, %8040 ], [ %7857, %7851 ]
  %8058 = phi float [ %8054, %8040 ], [ %7856, %7851 ]
  %8059 = phi float [ %8053, %8040 ], [ %7855, %7851 ]
  %8060 = phi float [ %8052, %8040 ], [ %7854, %7851 ]
  %8061 = phi float [ %8051, %8040 ], [ %7853, %7851 ]
  %8062 = phi float [ %8050, %8040 ], [ %7852, %7851 ]
  %8063 = fmul fast float %8062, %7016
  %8064 = fmul fast float %8061, %7017
  %8065 = fmul fast float %8060, %7018
  %8066 = fmul fast float %8059, %7299
  %8067 = call float @dx.op.dot3.f32(i32 55, float %8059, float %8058, float %8057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8068 = call float @dx.op.dot3.f32(i32 55, float %8063, float %8064, float %8065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = select i1 %235, float %8067, float %8059
  %8070 = select i1 %235, float %8067, float %8058
  %8071 = select i1 %235, float 1.000000e+00, float %8057
  %8072 = select i1 %235, float %8068, float %8063
  %8073 = select i1 %235, float 0.000000e+00, float %8064
  %8074 = select i1 %235, float 0.000000e+00, float %8065
  %8075 = fmul fast float %8069, %7293
  %8076 = fmul fast float %8070, %7294
  %8077 = fmul fast float %8071, %7295
  %8078 = fadd fast float %8075, %8072
  %8079 = fadd fast float %8076, %8073
  %8080 = fadd fast float %8074, %8077
  %8081 = fmul fast float %8069, %7296
  %8082 = fmul fast float %8070, %7297
  %8083 = fmul fast float %8071, %7298
  %8084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.i32 %8084, 0
  %8086 = icmp eq i32 %8085, 0
  br i1 %8086, label %8454, label %8087, !dx.controlflow.hints !151

; <label>:8087                                    ; preds = %8056
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 2
  %8090 = extractvalue %dx.types.CBufRet.f32 %8088, 3
  %8091 = fmul fast float %8089, %87
  %8092 = fmul fast float %8090, %88
  %8093 = fmul fast float %8091, 2.000000e+00
  %8094 = fmul fast float %8092, 2.000000e+00
  %8095 = fsub fast float 1.000000e+00, %8093
  %8096 = fsub fast float 1.000000e+00, %8094
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8101 = fmul fast float %8095, %8098
  %8102 = fmul fast float %8095, %8099
  %8103 = fmul fast float %8095, %8100
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.CBufRet.f32 %8104, 1
  %8107 = extractvalue %dx.types.CBufRet.f32 %8104, 2
  %8108 = fmul fast float %8096, %8105
  %8109 = fmul fast float %8096, %8106
  %8110 = fmul fast float %8096, %8107
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %8115 = fadd fast float %8108, %8112
  %8116 = fadd fast float %8115, %8101
  %8117 = fadd fast float %8109, %8113
  %8118 = fadd fast float %8117, %8102
  %8119 = fadd fast float %8110, %8114
  %8120 = fadd fast float %8119, %8103
  %8121 = fmul fast float %8116, %7292
  %8122 = fmul fast float %8118, %7292
  %8123 = fmul fast float %8120, %7292
  %8124 = fmul fast float %8121, %8121
  %8125 = fmul fast float %8122, %8122
  %8126 = fadd fast float %8124, %8125
  %8127 = fmul fast float %8123, %8123
  %8128 = fadd fast float %8126, %8127
  %8129 = call float @dx.op.unary.f32(i32 24, float %8128)  ; Sqrt(value)
  %8130 = extractvalue %dx.types.CBufRet.f32 %7019, 0
  %8131 = fsub fast float %8129, %8130
  %8132 = extractvalue %dx.types.CBufRet.f32 %7019, 2
  %8133 = fmul fast float %8131, %8132
  %8134 = call float @dx.op.unary.f32(i32 7, float %8133)  ; Saturate(value)
  %8135 = fadd fast float %8134, -5.000000e-01
  %8136 = fmul fast float %8135, 2.000000e+00
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8139 = call float @dx.op.binary.f32(i32 36, float %8138, float %8136)  ; FMin(a,b)
  %8140 = fsub fast float -0.000000e+00, %8138
  %8141 = fcmp fast ogt float %8139, %8140
  br i1 %8141, label %8142, label %8454, !dx.controlflow.hints !152

; <label>:8142                                    ; preds = %8087
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 3
  %8145 = fcmp fast ogt float %8144, 0.000000e+00
  br i1 %8145, label %8146, label %8221, !dx.controlflow.hints !153

; <label>:8146                                    ; preds = %8142
  %8147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8148 = extractvalue %dx.types.Dimensions %8147, 0
  %8149 = sitofp i32 %8148 to float
  %8150 = extractvalue %dx.types.Dimensions %8147, 1
  %8151 = sitofp i32 %8150 to float
  %8152 = fmul fast float %8091, %8149
  %8153 = fmul fast float %8092, %8151
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8156 = fsub fast float -0.000000e+00, %8155
  %8157 = fptoui float %8156 to i32
  %8158 = fptoui float %8152 to i32
  %8159 = fptoui float %8153 to i32
  %8160 = and i32 %8157, 31
  %8161 = lshr i32 %8158, %8160
  %8162 = lshr i32 %8159, %8160
  %8163 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8157, i32 %8161, i32 %8162, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8164 = extractvalue %dx.types.ResRet.f32 %8163, 0
  %8165 = fcmp fast olt float %8164, -1.000000e+00
  %8166 = fcmp fast ogt float %8164, -1.000000e+00
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 1
  %8169 = select i1 %8166, float %8168, float 1.000000e+00
  %8170 = fadd fast float %8164, 1.000000e+00
  %8171 = fmul fast float %8169, %8170
  %8172 = call float @dx.op.unary.f32(i32 6, float %8171)  ; FAbs(value)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8167, 3
  %8174 = fcmp fast oge float %8172, %8173
  %8175 = select i1 %8174, float 0x4197782600000000, float %8172
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %8180 = select i1 %8165, float %8177, float %8098
  %8181 = select i1 %8165, float %8178, float %8099
  %8182 = select i1 %8165, float %8179, float %8100
  %8183 = fmul fast float %8180, %8095
  %8184 = fmul fast float %8181, %8095
  %8185 = fmul fast float %8182, %8095
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8190 = select i1 %8165, float %8187, float %8105
  %8191 = select i1 %8165, float %8188, float %8106
  %8192 = select i1 %8165, float %8189, float %8107
  %8193 = fmul fast float %8190, %8096
  %8194 = fmul fast float %8191, %8096
  %8195 = fmul fast float %8192, %8096
  %8196 = fadd fast float %8193, %8183
  %8197 = fadd fast float %8194, %8184
  %8198 = fadd fast float %8195, %8185
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8203 = select i1 %8165, float %8200, float %8112
  %8204 = select i1 %8165, float %8201, float %8113
  %8205 = select i1 %8165, float %8202, float %8114
  %8206 = fadd fast float %8196, %8203
  %8207 = fadd fast float %8197, %8204
  %8208 = fadd fast float %8198, %8205
  %8209 = fmul fast float %8206, %8175
  %8210 = fmul fast float %8207, %8175
  %8211 = fmul fast float %8208, %8175
  %8212 = fmul fast float %8209, %8209
  %8213 = fmul fast float %8210, %8210
  %8214 = fadd fast float %8212, %8213
  %8215 = fmul fast float %8211, %8211
  %8216 = fadd fast float %8214, %8215
  %8217 = call float @dx.op.unary.f32(i32 24, float %8216)  ; Sqrt(value)
  %8218 = fsub fast float %8217, %8130
  %8219 = fmul fast float %8218, %8132
  %8220 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  br label %8221

; <label>:8221                                    ; preds = %8146, %8142
  %8222 = phi float [ %8220, %8146 ], [ 1.000000e+00, %8142 ]
  %8223 = fmul fast float %8139, 5.000000e-01
  %8224 = fadd fast float %8223, 5.000000e-01
  %8225 = call float @dx.op.unary.f32(i32 22, float %8224)  ; Frc(value)
  %8226 = call float @dx.op.unary.f32(i32 27, float %8225)  ; Round_ni(value)
  %8227 = call float @dx.op.unary.f32(i32 22, float %8225)  ; Frc(value)
  %8228 = fmul fast float %8227, 2.000000e+00
  %8229 = fadd fast float %8228, -1.000000e+00
  %8230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8091, float %8092, float %8226, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.ResRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.ResRet.f32 %8230, 3
  %8235 = fadd fast float %8231, -5.000000e-01
  %8236 = fadd fast float %8233, -5.000000e-01
  %8237 = fmul fast float %8235, 0xBFD5555560000000
  %8238 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8236, float %8237)  ; FMad(a,b,c)
  %8239 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8232, float 0.000000e+00)  ; FMad(a,b,c)
  %8240 = fadd fast float %8239, %8234
  %8241 = fmul fast float %8235, -7.500000e-01
  %8242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8236, float %8241)  ; FMad(a,b,c)
  %8243 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8232, float 0.000000e+00)  ; FMad(a,b,c)
  %8244 = fadd fast float %8243, %8234
  %8245 = call float @dx.op.binary.f32(i32 35, float %8238, float -1.000000e+00)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8240, float -1.000000e+00)  ; FMax(a,b)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8242, float -1.000000e+00)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 35, float %8244, float -1.000000e+00)  ; FMax(a,b)
  %8249 = call float @dx.op.binary.f32(i32 36, float %8245, float 1.000000e+00)  ; FMin(a,b)
  %8250 = call float @dx.op.binary.f32(i32 36, float %8246, float 1.000000e+00)  ; FMin(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8247, float 1.000000e+00)  ; FMin(a,b)
  %8252 = call float @dx.op.binary.f32(i32 36, float %8248, float 1.000000e+00)  ; FMin(a,b)
  %8253 = fcmp fast olt float %8249, 0x3FEFFF8020000000
  br i1 %8253, label %8254, label %8369, !dx.controlflow.hints !154

; <label>:8254                                    ; preds = %8221
  %8255 = extractvalue %dx.types.CBufRet.f32 %8137, 3
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8260 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8261 = fsub fast float %8257, %8249
  %8262 = fsub fast float %8258, %8250
  %8263 = fsub fast float %8259, %8251
  %8264 = fsub fast float %8260, %8252
  %8265 = fmul fast float %8261, %8255
  %8266 = fmul fast float %8262, %8255
  %8267 = fmul fast float %8263, %8255
  %8268 = fmul fast float %8264, %8255
  %8269 = fadd fast float %8265, %8249
  %8270 = fadd fast float %8266, %8250
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = fadd fast float %8267, %8251
  %8273 = fadd fast float %8268, %8252
  %8274 = fmul fast float %8269, %8269
  %8275 = fsub fast float %8270, %8274
  %8276 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8275)  ; FMax(a,b)
  %8277 = fdiv fast float 1.000000e+00, %8276
  %8278 = fmul fast float %8270, %8269
  %8279 = fsub fast float %8272, %8278
  %8280 = fsub fast float %8229, %8269
  %8281 = fmul fast float %8229, %8229
  %8282 = fsub fast float %8281, %8270
  %8283 = fmul fast float %8280, %8277
  %8284 = fmul fast float %8283, %8279
  %8285 = fsub fast float %8282, %8284
  %8286 = fmul fast float %8270, %8270
  %8287 = fsub fast float %8273, %8286
  %8288 = fmul fast float %8279, %8279
  %8289 = fmul fast float %8288, %8277
  %8290 = fsub fast float %8287, %8289
  %8291 = fdiv fast float %8285, %8290
  %8292 = fmul fast float %8279, %8291
  %8293 = fsub fast float %8280, %8292
  %8294 = fmul fast float %8293, %8277
  %8295 = fmul fast float %8294, %8269
  %8296 = fsub fast float 1.000000e+00, %8295
  %8297 = fmul fast float %8270, %8291
  %8298 = fsub fast float %8296, %8297
  %8299 = fmul fast float %8294, %8294
  %8300 = fmul fast float %8291, 4.000000e+00
  %8301 = fmul fast float %8300, %8298
  %8302 = fsub fast float %8299, %8301
  %8303 = call float @dx.op.unary.f32(i32 24, float %8302)  ; Sqrt(value)
  %8304 = fcmp fast oge float %8294, 0.000000e+00
  %8305 = fsub fast float -0.000000e+00, %8303
  %8306 = select i1 %8304, float %8305, float %8303
  %8307 = fsub fast float %8306, %8294
  %8308 = fdiv fast float %8307, %8291
  %8309 = fdiv fast float %8298, %8307
  %8310 = fmul fast float %8308, 5.000000e-01
  %8311 = fmul fast float %8309, 2.000000e+00
  %8312 = select i1 %8304, float %8310, float %8311
  %8313 = select i1 %8304, float %8311, float %8310
  %8314 = call float @dx.op.binary.f32(i32 35, float %8312, float %8313)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 36, float %8312, float %8313)  ; FMin(a,b)
  %8316 = fcmp fast ogt float %8229, %8315
  br i1 %8316, label %8317, label %8327

; <label>:8317                                    ; preds = %8254
  %8318 = fsub fast float %8229, %8315
  %8319 = fsub fast float %8314, %8315
  %8320 = fmul fast float %8318, %8319
  %8321 = fmul fast float %8314, %8229
  %8322 = fadd fast float %8314, %8229
  %8323 = fmul fast float %8322, %8269
  %8324 = fadd fast float %8321, %8270
  %8325 = fsub fast float %8324, %8323
  %8326 = fdiv fast float %8325, %8320
  br label %8327

; <label>:8327                                    ; preds = %8317, %8254
  %8328 = phi float [ %8326, %8317 ], [ 0.000000e+00, %8254 ]
  %8329 = fcmp fast ogt float %8229, %8314
  %8330 = fsub fast float %8229, %8314
  br i1 %8329, label %8331, label %8341

; <label>:8331                                    ; preds = %8327
  %8332 = fsub fast float %8314, %8315
  %8333 = fmul fast float %8332, %8330
  %8334 = fmul fast float %8315, %8229
  %8335 = fadd fast float %8315, %8229
  %8336 = fmul fast float %8335, %8269
  %8337 = fsub fast float %8271, %8334
  %8338 = fadd fast float %8337, %8336
  %8339 = fdiv fast float %8338, %8333
  %8340 = fadd fast float %8339, %8328
  br label %8341

; <label>:8341                                    ; preds = %8331, %8327
  %8342 = phi float [ %8340, %8331 ], [ %8328, %8327 ]
  %8343 = fsub fast float %8229, %8315
  %8344 = fmul fast float %8343, %8330
  %8345 = fmul fast float %8315, %8314
  %8346 = fadd fast float %8315, %8314
  %8347 = fmul fast float %8346, %8269
  %8348 = fadd fast float %8345, %8270
  %8349 = fsub fast float %8348, %8347
  %8350 = fdiv fast float %8349, %8344
  %8351 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8352 = fcmp fast oeq float %7020, 0.000000e+00
  %8353 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8354 = fcmp fast oeq float %8353, 0.000000e+00
  %8355 = or i1 %8352, %8354
  %8356 = fmul fast float %8353, 2.000000e+00
  %8357 = fadd fast float %8138, %8139
  %8358 = fdiv fast float %8357, %8356
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fmul fast float %8359, 2.000000e+00
  %8361 = fsub fast float 3.000000e+00, %8360
  %8362 = fmul fast float %8359, %8359
  %8363 = fmul fast float %8362, %8361
  %8364 = select i1 %8355, float 1.000000e+00, float %8363
  %8365 = fmul fast float %8350, %7020
  %8366 = fadd fast float %8351, %8365
  %8367 = call float @dx.op.unary.f32(i32 7, float %8366)  ; Saturate(value)
  %8368 = fmul fast float %8364, %8367
  br label %8369

; <label>:8369                                    ; preds = %8341, %8221
  %8370 = phi float [ %8368, %8341 ], [ 0.000000e+00, %8221 ]
  %8371 = fsub fast float 1.000000e+00, %8370
  %8372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8091, float %8092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8373 = extractvalue %dx.types.ResRet.f32 %8372, 0
  %8374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.i32 %8374, 2
  %8376 = icmp eq i32 %8375, 0
  br i1 %8376, label %8382, label %8377

; <label>:8377                                    ; preds = %8369
  %8378 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8379 = fadd fast float %8373, -1.000000e+00
  %8380 = fmul fast float %8378, %8379
  %8381 = fadd fast float %8380, 1.000000e+00
  br label %8382

; <label>:8382                                    ; preds = %8377, %8369
  %8383 = phi float [ %8381, %8377 ], [ %8371, %8369 ]
  br i1 %8145, label %8384, label %8402

; <label>:8384                                    ; preds = %8382
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 1
  %8387 = fsub fast float %8222, %8386
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = fsub fast float %8222, %8144
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fsub fast float %8388, %8390
  %8392 = fsub fast float %8224, %8390
  %8393 = fdiv fast float %8392, %8391
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = fmul fast float %8394, 2.000000e+00
  %8396 = fsub fast float 3.000000e+00, %8395
  %8397 = fsub fast float %8373, %8383
  %8398 = fmul fast float %8394, %8394
  %8399 = fmul fast float %8398, %8397
  %8400 = fmul fast float %8399, %8396
  %8401 = fadd fast float %8400, %8383
  br label %8402

; <label>:8402                                    ; preds = %8384, %8382
  %8403 = phi float [ %8401, %8384 ], [ %8383, %8382 ]
  %8404 = call float @dx.op.binary.f32(i32 35, float %8373, float %8403)  ; FMax(a,b)
  %8405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.i32 %8405, 2
  %8407 = and i32 %8406, 1
  %8408 = icmp eq i32 %8407, 0
  %8409 = fcmp fast une float %8404, 1.000000e+00
  %8410 = and i1 %8409, %8408
  br i1 %8410, label %8411, label %8430

; <label>:8411                                    ; preds = %8402
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8091, float %8092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8418 = fmul fast float %8417, %8413
  %8419 = fmul fast float %8417, %8414
  %8420 = fmul fast float %8417, %8415
  %8421 = fcmp fast ogt float %8373, 0x3FEFFF2E40000000
  %8422 = fsub fast float 1.000000e+00, %8404
  %8423 = fsub fast float 1.000000e+00, %8373
  %8424 = fdiv fast float %8422, %8423
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = select i1 %8421, float 0.000000e+00, float %8425
  %8427 = fmul fast float %8418, %8426
  %8428 = fmul fast float %8419, %8426
  %8429 = fmul fast float %8420, %8426
  br label %8430

; <label>:8430                                    ; preds = %8411, %8402
  %8431 = phi float [ 0.000000e+00, %8402 ], [ %8427, %8411 ]
  %8432 = phi float [ 0.000000e+00, %8402 ], [ %8428, %8411 ]
  %8433 = phi float [ 0.000000e+00, %8402 ], [ %8429, %8411 ]
  %8434 = fmul fast float %8431, %7016
  %8435 = fmul fast float %8432, %7017
  %8436 = fmul fast float %8433, %7018
  %8437 = fmul fast float %8404, %8066
  %8438 = call float @dx.op.dot3.f32(i32 55, float %8404, float %8404, float %8404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8439 = call float @dx.op.dot3.f32(i32 55, float %8434, float %8435, float %8436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8440 = select i1 %235, float %8438, float %8404
  %8441 = select i1 %235, float 1.000000e+00, float %8404
  %8442 = select i1 %235, float %8439, float %8434
  %8443 = select i1 %235, float 0.000000e+00, float %8435
  %8444 = select i1 %235, float 0.000000e+00, float %8436
  %8445 = fmul fast float %8440, %8078
  %8446 = fmul fast float %8440, %8079
  %8447 = fmul fast float %8441, %8080
  %8448 = fadd fast float %8445, %8442
  %8449 = fadd fast float %8446, %8443
  %8450 = fadd fast float %8444, %8447
  %8451 = fmul fast float %8440, %8081
  %8452 = fmul fast float %8440, %8082
  %8453 = fmul fast float %8441, %8083
  br label %8454

; <label>:8454                                    ; preds = %8430, %8087, %8056, %7288
  %8455 = phi float [ %7293, %7288 ], [ %8078, %8056 ], [ %8448, %8430 ], [ %8078, %8087 ]
  %8456 = phi float [ %7294, %7288 ], [ %8079, %8056 ], [ %8449, %8430 ], [ %8079, %8087 ]
  %8457 = phi float [ %7295, %7288 ], [ %8080, %8056 ], [ %8450, %8430 ], [ %8080, %8087 ]
  %8458 = phi float [ %7296, %7288 ], [ %8081, %8056 ], [ %8451, %8430 ], [ %8081, %8087 ]
  %8459 = phi float [ %7297, %7288 ], [ %8082, %8056 ], [ %8452, %8430 ], [ %8082, %8087 ]
  %8460 = phi float [ %7298, %7288 ], [ %8083, %8056 ], [ %8453, %8430 ], [ %8083, %8087 ]
  %8461 = phi float [ %7299, %7288 ], [ %8066, %8056 ], [ %8437, %8430 ], [ %8066, %8087 ]
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 2
  %8464 = extractvalue %dx.types.CBufRet.f32 %8462, 3
  %8465 = fmul fast float %8463, %87
  %8466 = fmul fast float %8464, %88
  %8467 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8468 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8469 = select i1 %7030, i32 2, i32 0
  %8470 = or i32 %8469, 1
  %8471 = uitofp i32 %8470 to float
  %8472 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8467, float %8468, float %8471, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8473 = extractvalue %dx.types.ResRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.ResRet.f32 %8472, 1
  %8475 = extractvalue %dx.types.ResRet.f32 %8472, 2
  %8476 = extractvalue %dx.types.ResRet.f32 %8472, 3
  %8477 = add nuw nsw i32 %8469, 2
  %8478 = uitofp i32 %8477 to float
  %8479 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8467, float %8468, float %8478, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8480 = extractvalue %dx.types.ResRet.f32 %8479, 0
  %8481 = extractvalue %dx.types.ResRet.f32 %8479, 1
  %8482 = extractvalue %dx.types.ResRet.f32 %8479, 2
  %8483 = extractvalue %dx.types.ResRet.f32 %8479, 3
  %8484 = call float @dx.op.binary.f32(i32 35, float %8474, float %8475)  ; FMax(a,b)
  %8485 = call float @dx.op.binary.f32(i32 35, float %8473, float %8484)  ; FMax(a,b)
  %8486 = call float @dx.op.binary.f32(i32 35, float %8485, float %8476)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8481, float %8482)  ; FMin(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8480, float %8487)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8488, float %8483)  ; FMin(a,b)
  %8490 = fmul fast float %8486, 2.550000e+02
  %8491 = fadd fast float %8490, 0x3F70101020000000
  %8492 = fptoui float %8491 to i32
  %8493 = fmul fast float %8489, 2.550000e+02
  %8494 = fadd fast float %8493, 0x3F70101020000000
  %8495 = fptoui float %8494 to i32
  %8496 = icmp ult i32 %8492, %8495
  br i1 %8496, label %8497, label %8666

; <label>:8497                                    ; preds = %8454
  %8498 = fcmp fast ogt float %77, 9.843750e-01
  %8499 = fadd fast float %7292, -4.000000e+00
  %8500 = select i1 %8498, float -4.000000e+00, float %8499
  %8501 = call float @dx.op.binary.f32(i32 35, float %8500, float 0.000000e+00)  ; FMax(a,b)
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = fadd fast float %8503, %8501
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8506 = fmul fast float %8504, %8505
  %8507 = call float @dx.op.unary.f32(i32 23, float %8506)  ; Log(value)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8509 = fmul fast float %8508, %8507
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 2
  %8512 = fmul fast float %8509, %8511
  %8513 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8514 = uitofp i32 %8492 to float
  %8515 = uitofp i32 %8495 to float
  %8516 = fadd fast float %8514, 5.000000e-01
  %8517 = fadd fast float %8515, 5.000000e-01
  %8518 = fmul fast float %8511, %8516
  %8519 = fmul fast float %8511, %8517
  %8520 = fadd fast float %8518, 0x3F0FFB4800000000
  %8521 = fadd fast float %8519, 0xBF0FFB4800000000
  %8522 = call float @dx.op.binary.f32(i32 35, float %8513, float %8520)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 36, float %8522, float %8521)  ; FMin(a,b)
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8527 = extractvalue %dx.types.CBufRet.f32 %8524, 0
  %8528 = select i1 %7030, float %8527, float 0.000000e+00
  %8529 = fmul fast float %8525, %8523
  %8530 = fadd fast float %8528, %8529
  %8531 = fadd fast float %8528, %8526
  %8532 = fsub fast float %8525, %8526
  %8533 = fadd fast float %8532, %8528
  %8534 = call float @dx.op.binary.f32(i32 35, float %8530, float %8531)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 36, float %8534, float %8533)  ; FMin(a,b)
  %8536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8467, float %8468, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.i32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.i32 %8540, 1
  %8543 = uitofp i32 %8541 to float
  %8544 = uitofp i32 %8542 to float
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = fmul fast float %8543, %8467
  %8549 = fmul fast float %8544, %8468
  %8550 = fadd fast float %8548, -5.000000e-01
  %8551 = fadd fast float %8549, -5.000000e-01
  %8552 = call float @dx.op.unary.f32(i32 22, float %8550)  ; Frc(value)
  %8553 = call float @dx.op.unary.f32(i32 22, float %8551)  ; Frc(value)
  %8554 = fmul fast float %8552, %8552
  %8555 = fmul fast float %8554, %8552
  %8556 = fsub fast float 3.000000e+00, %8552
  %8557 = fmul fast float %8554, %8556
  %8558 = fmul fast float %8552, 3.000000e+00
  %8559 = fmul fast float %8555, 3.000000e+00
  %8560 = fmul fast float %8554, 6.000000e+00
  %8561 = fsub fast float %8559, %8560
  %8562 = fadd fast float %8561, 4.000000e+00
  %8563 = fmul fast float %8562, 0x3FC5555560000000
  %8564 = fmul fast float %8555, -3.000000e+00
  %8565 = fadd fast float %8554, %8552
  %8566 = fmul fast float %8565, 3.000000e+00
  %8567 = fadd fast float %8564, 1.000000e+00
  %8568 = fadd fast float %8567, %8566
  %8569 = fmul fast float %8555, 0x3FC5555560000000
  %8570 = fmul fast float %8553, %8553
  %8571 = fmul fast float %8570, %8553
  %8572 = fsub fast float 3.000000e+00, %8553
  %8573 = fmul fast float %8570, %8572
  %8574 = fmul fast float %8553, 3.000000e+00
  %8575 = fmul fast float %8571, 3.000000e+00
  %8576 = fmul fast float %8570, 6.000000e+00
  %8577 = fsub fast float %8575, %8576
  %8578 = fadd fast float %8577, 4.000000e+00
  %8579 = fmul fast float %8578, 0x3FC5555560000000
  %8580 = fmul fast float %8571, -3.000000e+00
  %8581 = fadd fast float %8570, %8553
  %8582 = fmul fast float %8581, 3.000000e+00
  %8583 = fadd fast float %8580, 1.000000e+00
  %8584 = fadd fast float %8583, %8582
  %8585 = fmul fast float %8571, 0x3FC5555560000000
  %8586 = fadd fast float %8552, 1.000000e+00
  %8587 = fsub fast float 1.000000e+00, %8558
  %8588 = fadd fast float %8587, %8557
  %8589 = fadd fast float %8588, %8562
  %8590 = fmul fast float %8589, 0x3FC5555560000000
  %8591 = fdiv fast float %8563, %8590
  %8592 = fsub fast float %8586, %8591
  %8593 = fsub fast float 1.000000e+00, %8552
  %8594 = fadd fast float %8568, %8555
  %8595 = fmul fast float %8594, 0x3FC5555560000000
  %8596 = fdiv fast float %8569, %8595
  %8597 = fadd fast float %8593, %8596
  %8598 = fadd fast float %8553, 1.000000e+00
  %8599 = fsub fast float 1.000000e+00, %8574
  %8600 = fadd fast float %8599, %8573
  %8601 = fadd fast float %8600, %8578
  %8602 = fmul fast float %8601, 0x3FC5555560000000
  %8603 = fdiv fast float %8579, %8602
  %8604 = fsub fast float %8598, %8603
  %8605 = fsub fast float 1.000000e+00, %8553
  %8606 = fadd fast float %8584, %8571
  %8607 = fmul fast float %8606, 0x3FC5555560000000
  %8608 = fdiv fast float %8585, %8607
  %8609 = fadd fast float %8608, %8605
  %8610 = fmul fast float %8592, %8546
  %8611 = fsub fast float %8467, %8610
  %8612 = fmul fast float %8597, %8546
  %8613 = fadd fast float %8612, %8467
  %8614 = fmul fast float %8609, %8547
  %8615 = fadd fast float %8614, %8468
  %8616 = fmul fast float %8604, %8547
  %8617 = fsub fast float %8468, %8616
  %8618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8611, float %8617, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8619 = extractvalue %dx.types.ResRet.f32 %8618, 0
  %8620 = extractvalue %dx.types.ResRet.f32 %8618, 1
  %8621 = extractvalue %dx.types.ResRet.f32 %8618, 2
  %8622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8613, float %8617, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.ResRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8622, 2
  %8626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8611, float %8615, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8613, float %8615, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8631 = extractvalue %dx.types.ResRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.ResRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.ResRet.f32 %8630, 2
  %8634 = fsub fast float %8627, %8619
  %8635 = fsub fast float %8628, %8620
  %8636 = fsub fast float %8629, %8621
  %8637 = fmul fast float %8634, %8607
  %8638 = fmul fast float %8635, %8607
  %8639 = fmul fast float %8636, %8607
  %8640 = fadd fast float %8637, %8619
  %8641 = fadd fast float %8638, %8620
  %8642 = fadd fast float %8639, %8621
  %8643 = fsub fast float %8631, %8623
  %8644 = fsub fast float %8632, %8624
  %8645 = fsub fast float %8633, %8625
  %8646 = fmul fast float %8643, %8607
  %8647 = fmul fast float %8644, %8607
  %8648 = fmul fast float %8645, %8607
  %8649 = fsub fast float %8623, %8640
  %8650 = fadd fast float %8649, %8646
  %8651 = fsub fast float %8624, %8641
  %8652 = fadd fast float %8651, %8647
  %8653 = fsub fast float %8625, %8642
  %8654 = fadd fast float %8653, %8648
  %8655 = fmul fast float %8650, %8595
  %8656 = fmul fast float %8652, %8595
  %8657 = fmul fast float %8654, %8595
  %8658 = fadd fast float %8655, %8640
  %8659 = fadd fast float %8656, %8641
  %8660 = fadd fast float %8657, %8642
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8663 = fmul fast float %8658, %8662
  %8664 = fmul fast float %8659, %8662
  %8665 = fmul fast float %8660, %8662
  br label %8666

; <label>:8666                                    ; preds = %8497, %8454
  %8667 = phi float [ %8537, %8497 ], [ 1.000000e+00, %8454 ]
  %8668 = phi float [ %8538, %8497 ], [ 1.000000e+00, %8454 ]
  %8669 = phi float [ %8539, %8497 ], [ 1.000000e+00, %8454 ]
  %8670 = phi float [ %8663, %8497 ], [ 0.000000e+00, %8454 ]
  %8671 = phi float [ %8664, %8497 ], [ 0.000000e+00, %8454 ]
  %8672 = phi float [ %8665, %8497 ], [ 0.000000e+00, %8454 ]
  %8673 = fmul fast float %8670, %7016
  %8674 = fmul fast float %8671, %7017
  %8675 = fmul fast float %8672, %7018
  %8676 = fmul fast float %8667, %8461
  %8677 = call float @dx.op.dot3.f32(i32 55, float %8667, float %8668, float %8669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8678 = call float @dx.op.dot3.f32(i32 55, float %8673, float %8674, float %8675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8679 = select i1 %235, float %8677, float %8667
  %8680 = select i1 %235, float %8677, float %8668
  %8681 = select i1 %235, float 1.000000e+00, float %8669
  %8682 = select i1 %235, float %8678, float %8673
  %8683 = select i1 %235, float 0.000000e+00, float %8674
  %8684 = select i1 %235, float 0.000000e+00, float %8675
  %8685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.i32 %8685, 3
  %8687 = and i32 %8686, 3
  %8688 = icmp ne i32 %8687, 0
  %8689 = and i32 %8686, 4
  %8690 = icmp ne i32 %8689, 0
  %8691 = and i1 %8688, %8690
  %8692 = and i1 %235, %8691
  br i1 %8692, label %8693, label %8699

; <label>:8693                                    ; preds = %8666
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8696 = fadd fast float %8676, -1.000000e+00
  %8697 = fmul fast float %8695, %8696
  %8698 = fadd fast float %8697, 1.000000e+00
  br label %8699

; <label>:8699                                    ; preds = %8693, %8666
  %8700 = phi float [ %8698, %8693 ], [ %8676, %8666 ]
  %8701 = fadd fast float %8458, %8455
  %8702 = fmul fast float %8679, %8701
  %8703 = fadd fast float %8702, %8682
  %8704 = fadd fast float %8459, %8456
  %8705 = fmul fast float %8680, %8704
  %8706 = fadd fast float %8705, %8683
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 0
  br i1 %235, label %8709, label %8724

; <label>:8709                                    ; preds = %8699
  %8710 = fadd fast float %8703, %8706
  %8711 = fmul fast float %8708, %8710
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 3
  %8714 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %8715 = fsub fast float %7005, %6999
  %8716 = fadd fast float %8715, %7006
  %8717 = fsub fast float %8716, %8714
  %8718 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %8719 = fmul fast float %8717, %8718
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fsub fast float %8720, %8713
  %8722 = fmul fast float %8721, %8700
  %8723 = fadd fast float %8722, %8713
  br label %8750

; <label>:8724                                    ; preds = %8699
  %8725 = fadd fast float %8460, %8457
  %8726 = fmul fast float %8681, %8725
  %8727 = fadd fast float %8726, %8684
  %8728 = fmul fast float %8708, %8703
  %8729 = fmul fast float %8708, %8706
  %8730 = fmul fast float %8708, %8727
  %8731 = call float @dx.op.binary.f32(i32 35, float %8729, float %8730)  ; FMax(a,b)
  %8732 = call float @dx.op.binary.f32(i32 35, float %8728, float %8731)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 35, float %7017, float %7018)  ; FMax(a,b)
  %8734 = call float @dx.op.binary.f32(i32 35, float %7016, float %8733)  ; FMax(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8732, float %8734)  ; FMax(a,b)
  %8736 = fcmp fast ugt float %8735, 0x3F10000000000000
  br i1 %8736, label %8738, label %8737

; <label>:8737                                    ; preds = %8724
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8738

; <label>:8738                                    ; preds = %8737, %8724
  %8739 = add i32 %41, 356
  %8740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8739, i32 undef)  ; BufferLoad(srv,index,wot)
  %8741 = extractvalue %dx.types.ResRet.i32 %8740, 0
  %8742 = and i32 %8741, 32
  %8743 = icmp eq i32 %8742, 0
  br i1 %8743, label %8750, label %8744

; <label>:8744                                    ; preds = %8738
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = fmul fast float %8746, 0x3FE99999A0000000
  %8748 = fadd fast float %8746, %8728
  %8749 = fadd fast float %8747, %8730
  br label %8750

; <label>:8750                                    ; preds = %8744, %8738, %8709
  %8751 = phi float [ 1.000000e+00, %8709 ], [ %7017, %8744 ], [ %7017, %8738 ]
  %8752 = phi float [ 1.000000e+00, %8709 ], [ %7018, %8744 ], [ %7018, %8738 ]
  %8753 = phi float [ %8711, %8709 ], [ %8748, %8744 ], [ %8728, %8738 ]
  %8754 = phi float [ %8723, %8709 ], [ %8729, %8744 ], [ %8729, %8738 ]
  %8755 = phi float [ 1.000000e+00, %8709 ], [ %8749, %8744 ], [ %8730, %8738 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8753, float 3.225500e+04)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8754, float 3.225500e+04)  ; FMin(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8755, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8756)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8757)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8758)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8759 = call float @dx.op.binary.f32(i32 36, float %7016, float 3.225500e+04)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 36, float %8751, float 3.225500e+04)  ; FMin(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8752, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8759)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

