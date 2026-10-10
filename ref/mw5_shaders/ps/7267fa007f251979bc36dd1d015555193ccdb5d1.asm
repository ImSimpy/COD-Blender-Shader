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
; shader hash: 8475d7a34bca2f145d0b4b93470339f8
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
  %418 = add i32 %41, 552
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
  %694 = add i32 %41, 488
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
  %746 = add i32 %41, 472
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
  %770 = add i32 %41, 424
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
  %793 = add i32 %41, 504
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
  %991 = add i32 %41, 440
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
  %1075 = add i32 %41, 456
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
  %1133 = add i32 %41, 520
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
  %1174 = add i32 %41, 536
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
  %1485 = add i32 %41, 492
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
  %1537 = add i32 %41, 476
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
  %1563 = add i32 %41, 428
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
  %1586 = add i32 %41, 508
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
  %1784 = add i32 %41, 444
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
  %1868 = add i32 %41, 460
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
  %1926 = add i32 %41, 524
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
  %1967 = add i32 %41, 540
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
  %2542 = add i32 %41, 496
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
  %2594 = add i32 %41, 480
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
  %2620 = add i32 %41, 432
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
  %2643 = add i32 %41, 512
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
  %2841 = add i32 %41, 448
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
  %2925 = add i32 %41, 464
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
  %2983 = add i32 %41, 528
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
  %3024 = add i32 %41, 544
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
  %3599 = add i32 %41, 500
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
  %3651 = add i32 %41, 484
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
  %3677 = add i32 %41, 436
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
  %3700 = add i32 %41, 516
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
  %3898 = add i32 %41, 452
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
  %3982 = add i32 %41, 468
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
  %4040 = add i32 %41, 532
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
  %4081 = add i32 %41, 548
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
  %4427 = add i32 %41, 408
  %4428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.i32 %4428, 0
  %4430 = bitcast i32 %4429 to float
  %4431 = fcmp fast oge float %4430, 0.000000e+00
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = select i1 %4431, float %4430, float %4433
  %4435 = call float @dx.op.dot2.f32(i32 54, float %4408, float %4409, float %4408, float %4409)  ; Dot2(ax,ay,bx,by)
  %4436 = fmul fast float %4435, 0x3FE3333340000000
  %4437 = fsub fast float 1.000000e+00, %4436
  %4438 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4437, float %4408, float %4409, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = call float @dx.op.unary.f32(i32 25, float %4438)  ; Rsqrt(value)
  %4440 = fmul fast float %4439, %4408
  %4441 = fmul fast float %4439, %4409
  %4442 = fmul fast float %4437, %4439
  %4443 = fmul fast float %4442, %94
  %4444 = fmul fast float %4442, %95
  %4445 = fmul fast float %4442, %96
  %4446 = fmul fast float %4440, %62
  %4447 = fmul fast float %4440, %63
  %4448 = fmul fast float %4440, %64
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4445, %4448
  %4452 = fmul fast float %106, %4441
  %4453 = fmul fast float %107, %4441
  %4454 = fmul fast float %108, %4441
  %4455 = fadd fast float %4449, %4452
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4451, %4454
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4455, float %4456, float %4457, float %4455, float %4456, float %4457)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call float @dx.op.unary.f32(i32 25, float %4458)  ; Rsqrt(value)
  %4460 = fmul fast float %4455, %4459
  %4461 = fmul fast float %4456, %4459
  %4462 = fmul fast float %4457, %4459
  %4463 = and i32 %43, 1
  %4464 = icmp eq i32 %4463, 0
  br i1 %4464, label %4465, label %5057

; <label>:4465                                    ; preds = %4407
  %4466 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %4468 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %4470 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %4472 = fadd fast float %4466, %142
  %4473 = fadd fast float %4467, %143
  %4474 = fadd fast float %4468, %144
  %4475 = fadd fast float %4469, %142
  %4476 = fadd fast float %4470, %143
  %4477 = fadd fast float %4471, %144
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4485 = fmul fast float %4479, %87
  %4486 = fmul fast float %4485, %4483
  %4487 = fmul fast float %4480, %88
  %4488 = fmul fast float %4487, %4484
  %4489 = fptoui float %4486 to i32
  %4490 = fptoui float %4488 to i32
  %4491 = fadd fast float %4479, -1.000000e+00
  %4492 = fadd fast float %4480, -1.000000e+00
  %4493 = fptoui float %4491 to i32
  %4494 = fptoui float %4492 to i32
  %4495 = call i32 @dx.op.binary.i32(i32 40, i32 %4489, i32 %4493)  ; UMin(a,b)
  %4496 = call i32 @dx.op.binary.i32(i32 40, i32 %4490, i32 %4494)  ; UMin(a,b)
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4500 = fmul fast float %4498, %78
  %4501 = fsub fast float %4500, %4499
  %4502 = fadd fast float %4481, -1.000000e+00
  %4503 = call float @dx.op.binary.f32(i32 36, float %4501, float %4502)  ; FMin(a,b)
  %4504 = fptoui float %4503 to i32
  %4505 = fptoui float %4479 to i32
  %4506 = fptoui float %4480 to i32
  %4507 = mul i32 %4504, %4506
  %4508 = add i32 %4507, %4496
  %4509 = mul i32 %4508, %4505
  %4510 = add i32 %4509, %4495
  %4511 = shl i32 %4510, 2
  %4512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.i32 %4512, 0
  %4514 = and i32 %4513, 1023
  %4515 = lshr i32 %4513, 10
  %4516 = icmp eq i32 %4514, 0
  br i1 %4516, label %5020, label %4517

; <label>:4517                                    ; preds = %4465
  %4518 = and i32 %4513, 1023
  br label %4519

; <label>:4519                                    ; preds = %4651, %4517
  %4520 = phi i32 [ %4601, %4651 ], [ 0, %4517 ]
  %4521 = phi float [ %4652, %4651 ], [ 0.000000e+00, %4517 ]
  %4522 = phi float [ %4653, %4651 ], [ %4434, %4517 ]
  %4523 = phi float [ %4654, %4651 ], [ %4426, %4517 ]
  %4524 = phi float [ %4655, %4651 ], [ %4419, %4517 ]
  %4525 = phi float [ %4656, %4651 ], [ %4420, %4517 ]
  %4526 = phi float [ %4657, %4651 ], [ %4421, %4517 ]
  %4527 = phi float [ %4658, %4651 ], [ 0.000000e+00, %4517 ]
  %4528 = phi float [ %4659, %4651 ], [ 0.000000e+00, %4517 ]
  %4529 = phi float [ %4660, %4651 ], [ %4416, %4517 ]
  %4530 = phi float [ %4661, %4651 ], [ %4417, %4517 ]
  %4531 = phi float [ %4662, %4651 ], [ %4418, %4517 ]
  %4532 = phi float [ %4663, %4651 ], [ %4413, %4517 ]
  %4533 = phi float [ %4664, %4651 ], [ %4414, %4517 ]
  %4534 = phi float [ %4665, %4651 ], [ %4415, %4517 ]
  %4535 = phi float [ %4666, %4651 ], [ %4460, %4517 ]
  %4536 = phi float [ %4667, %4651 ], [ %4461, %4517 ]
  %4537 = phi float [ %4668, %4651 ], [ %4462, %4517 ]
  %4538 = phi float [ %4669, %4651 ], [ %4424, %4517 ]
  %4539 = phi float [ %4670, %4651 ], [ %4423, %4517 ]
  %4540 = phi float [ %4671, %4651 ], [ 0.000000e+00, %4517 ]
  %4541 = phi float [ %4672, %4651 ], [ %4422, %4517 ]
  %4542 = phi float [ %4673, %4651 ], [ %4410, %4517 ]
  %4543 = phi float [ %4674, %4651 ], [ %4411, %4517 ]
  %4544 = phi float [ %4675, %4651 ], [ %4412, %4517 ]
  %4545 = add nuw nsw i32 %4520, %4515
  %4546 = shl i32 %4545, 2
  %4547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.i32 %4547, 0
  %4549 = shl i32 %4548, 8
  %4550 = or i32 %4549, 48
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4551, 3
  %4556 = or i32 %4549, 64
  %4557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.i32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.i32 %4557, 1
  %4560 = or i32 %4549, 80
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4564 = or i32 %4549, 96
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = extractvalue %dx.types.ResRet.f32 %4565, 3
  %4570 = or i32 %4549, 112
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4573 = or i32 %4549, 128
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4549, 144
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4549, 160
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.ResRet.f32 %4586, 2
  %4590 = extractvalue %dx.types.ResRet.f32 %4586, 3
  %4591 = or i32 %4549, 192
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = or i32 %4549, 208
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = or i32 %4549, 248
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = add nuw nsw i32 %4520, 1
  %4602 = bitcast float %4555 to i32
  %4603 = and i32 %4602, 512
  %4604 = icmp eq i32 %4603, 0
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = or i32 %4549, 16
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = or i32 %4549, 32
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4620, float %4621, float %4622, float %4623, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %4625)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %4627)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 6, float %4624)  ; FAbs(value)
  %4630 = call float @dx.op.unary.f32(i32 27, float %4629)  ; Round_ni(value)
  %4631 = fadd fast float %4628, %4626
  %4632 = fadd fast float %4631, %4630
  %4633 = fcmp fast oeq float %4632, 0.000000e+00
  %4634 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4475, float %4476, float %4477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4475, float %4476, float %4477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4638 = fsub fast float %4634, %4610
  %4639 = fsub fast float %4636, %4610
  %4640 = fsub fast float %4635, %4617
  %4641 = fsub fast float %4637, %4617
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = fadd fast float %4644, %4642
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4648 = fcmp fast ogt float %4646, %4647
  %4649 = and i1 %4633, %4648
  %4650 = and i1 %4604, %4649
  br i1 %4650, label %4677, label %4651

; <label>:4651                                    ; preds = %5006, %4758, %4677, %4519
  %4652 = phi float [ %4521, %4677 ], [ %4761, %4758 ], [ %4761, %5006 ], [ %4521, %4519 ]
  %4653 = phi float [ %4522, %4677 ], [ %4522, %4758 ], [ %4982, %5006 ], [ %4522, %4519 ]
  %4654 = phi float [ %4523, %4677 ], [ %4523, %4758 ], [ %4980, %5006 ], [ %4523, %4519 ]
  %4655 = phi float [ %4524, %4677 ], [ %4524, %4758 ], [ %4958, %5006 ], [ %4524, %4519 ]
  %4656 = phi float [ %4525, %4677 ], [ %4525, %4758 ], [ %4959, %5006 ], [ %4525, %4519 ]
  %4657 = phi float [ %4526, %4677 ], [ %4526, %4758 ], [ %4960, %5006 ], [ %4526, %4519 ]
  %4658 = phi float [ %4527, %4677 ], [ %4527, %4758 ], [ %4885, %5006 ], [ %4527, %4519 ]
  %4659 = phi float [ %4528, %4677 ], [ %4528, %4758 ], [ %4883, %5006 ], [ %4528, %4519 ]
  %4660 = phi float [ %4529, %4677 ], [ %4529, %4758 ], [ %4928, %5006 ], [ %4529, %4519 ]
  %4661 = phi float [ %4530, %4677 ], [ %4530, %4758 ], [ %4929, %5006 ], [ %4530, %4519 ]
  %4662 = phi float [ %4531, %4677 ], [ %4531, %4758 ], [ %4930, %5006 ], [ %4531, %4519 ]
  %4663 = phi float [ %4532, %4677 ], [ %4532, %4758 ], [ %5016, %5006 ], [ %4532, %4519 ]
  %4664 = phi float [ %4533, %4677 ], [ %4533, %4758 ], [ %5017, %5006 ], [ %4533, %4519 ]
  %4665 = phi float [ %4534, %4677 ], [ %4534, %4758 ], [ %5018, %5006 ], [ %4534, %4519 ]
  %4666 = phi float [ %4535, %4677 ], [ %4535, %4758 ], [ %4864, %5006 ], [ %4535, %4519 ]
  %4667 = phi float [ %4536, %4677 ], [ %4536, %4758 ], [ %4865, %5006 ], [ %4536, %4519 ]
  %4668 = phi float [ %4537, %4677 ], [ %4537, %4758 ], [ %4866, %5006 ], [ %4537, %4519 ]
  %4669 = phi float [ %4538, %4677 ], [ %4538, %4758 ], [ %4938, %5006 ], [ %4538, %4519 ]
  %4670 = phi float [ %4539, %4677 ], [ %4539, %4758 ], [ %4935, %5006 ], [ %4539, %4519 ]
  %4671 = phi float [ %4540, %4677 ], [ %4540, %4758 ], [ %4932, %5006 ], [ %4540, %4519 ]
  %4672 = phi float [ %4541, %4677 ], [ %4541, %4758 ], [ %4881, %5006 ], [ %4541, %4519 ]
  %4673 = phi float [ %4542, %4677 ], [ %4542, %4758 ], [ %4876, %5006 ], [ %4542, %4519 ]
  %4674 = phi float [ %4543, %4677 ], [ %4543, %4758 ], [ %4877, %5006 ], [ %4543, %4519 ]
  %4675 = phi float [ %4544, %4677 ], [ %4544, %4758 ], [ %4878, %5006 ], [ %4544, %4519 ]
  %4676 = icmp eq i32 %4601, %4518
  br i1 %4676, label %5019, label %4519

; <label>:4677                                    ; preds = %4519
  %4678 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4679 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4683 = extractvalue %dx.types.ResRet.i32 %4557, 3
  %4684 = extractvalue %dx.types.ResRet.i32 %4557, 2
  %4685 = add i32 %4683, 0
  %4686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4685, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4686, %dx.types.Handle %4687, float %4610, float %4617, float undef, float undef, i32 0, i32 0, i32 undef, float %4638, float %4640, float undef, float %4639, float %4641, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4682
  %4691 = fadd fast float %4690, %4681
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4610, %4566
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4617, float %4693)  ; FMad(a,b,c)
  %4695 = fadd fast float %4694, %4680
  %4696 = fmul fast float %4610, %4568
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4617, float %4696)  ; FMad(a,b,c)
  %4698 = fadd fast float %4697, %4679
  %4699 = fmul fast float %4638, %4566
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4640, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4638, %4568
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4640, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4639, %4566
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4641, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4639, %4568
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4641, float %4705)  ; FMad(a,b,c)
  %4707 = add i32 %4684, 0
  %4708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4707, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4708, %dx.types.Handle %4687, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = and i32 %4602, 1024
  %4712 = icmp ne i32 %4711, 0
  %4713 = fcmp fast ogt float %4710, 0x3FE0101020000000
  %4714 = uitofp i1 %4713 to float
  %4715 = select i1 %4712, float %4714, float %4710
  %4716 = and i32 %4602, 8192
  %4717 = icmp ne i32 %4716, 0
  %4718 = select i1 %4717, float %4678, float 1.000000e+00
  %4719 = fmul fast float %4610, 2.000000e+00
  %4720 = fadd fast float %4719, -1.000000e+00
  %4721 = call float @dx.op.unary.f32(i32 6, float %4720)  ; FAbs(value)
  %4722 = fmul fast float %4721, %4599
  %4723 = fsub fast float %4722, %4599
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4617, 2.000000e+00
  %4726 = fadd fast float %4725, -1.000000e+00
  %4727 = call float @dx.op.unary.f32(i32 6, float %4726)  ; FAbs(value)
  %4728 = fmul fast float %4727, %4600
  %4729 = fsub fast float %4728, %4600
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4629, %4562
  %4732 = fsub fast float %4731, %4562
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4692, %4718
  %4735 = fmul fast float %4734, %4689
  %4736 = fmul fast float %4735, %4724
  %4737 = fmul fast float %4736, %4715
  %4738 = fmul fast float %4737, %4730
  %4739 = fmul fast float %4738, %4733
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4743 = fsub fast float %4646, %4742
  %4744 = fmul fast float %4743, %4741
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4739, %4563
  %4747 = fadd fast float %4739, %4563
  %4748 = fmul fast float %4747, %4572
  %4749 = fsub fast float %4748, %4572
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = and i32 %4602, 128
  %4752 = icmp ne i32 %4751, 0
  %4753 = select i1 %4752, float %4750, float %4746
  %4754 = fmul fast float %4753, %4745
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = fcmp fast ugt float %4754, %4756
  br i1 %4757, label %4758, label %4651

; <label>:4758                                    ; preds = %4677
  %4759 = select i1 %4717, float %4754, float 0.000000e+00
  %4760 = fadd fast float %4759, %4521
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  br i1 %4717, label %4651, label %4762

; <label>:4762                                    ; preds = %4758
  %4763 = and i32 %4602, 4
  %4764 = and i32 %4602, 8
  %4765 = add i32 %4558, 0
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4765, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4766, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4768, 3
  %4773 = bitcast float %4584 to i32
  %4774 = and i32 %4773, 255
  %4775 = uitofp i32 %4774 to float
  %4776 = lshr i32 %4773, 8
  %4777 = and i32 %4776, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = fmul fast float %4772, %4775
  %4780 = fadd fast float %4779, %4778
  %4781 = fmul fast float %4780, 0x3F70101000000000
  %4782 = add i32 %4559, 0
  %4783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4782, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4784 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4783, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4785 = extractvalue %dx.types.ResRet.f32 %4784, 0
  %4786 = extractvalue %dx.types.ResRet.f32 %4784, 1
  %4787 = extractvalue %dx.types.ResRet.f32 %4784, 2
  %4788 = extractvalue %dx.types.ResRet.f32 %4784, 3
  %4789 = bitcast float %4578 to i32
  %4790 = and i32 %4789, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = lshr i32 %4789, 8
  %4793 = and i32 %4792, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = lshr i32 %4789, 16
  %4796 = and i32 %4795, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = fmul fast float %4797, 0x3F70101000000000
  %4799 = fmul fast float %4785, %4791
  %4800 = fadd fast float %4799, %4794
  %4801 = fmul fast float %4800, 0x3F70101000000000
  %4802 = fadd fast float %4786, -5.000000e-01
  %4803 = fadd fast float %4788, -5.000000e-01
  %4804 = fmul fast float %4802, %4798
  %4805 = fmul fast float %4803, %4798
  %4806 = fadd fast float %4804, 5.000000e-01
  %4807 = fadd fast float %4805, 5.000000e-01
  %4808 = fmul fast float %4769, %4587
  %4809 = fmul fast float %4770, %4588
  %4810 = fmul fast float %4771, %4589
  %4811 = fmul fast float %4806, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fmul fast float %4807, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = fadd fast float %4812, %4814
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = fsub fast float %4812, %4814
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = call float @dx.op.unary.f32(i32 6, float %4818)  ; FAbs(value)
  %4822 = fsub fast float %4820, %4821
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4818, float %4822, float %4816, float %4818, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 25, float %4823)  ; Rsqrt(value)
  %4825 = fmul fast float %4816, %4824
  %4826 = fmul fast float %4818, %4824
  %4827 = fmul fast float %4824, %4822
  %4828 = fmul fast float %4827, %4552
  %4829 = fmul fast float %4827, %4553
  %4830 = fmul fast float %4827, %4554
  %4831 = fmul fast float %4825, %4575
  %4832 = fmul fast float %4825, %4576
  %4833 = fmul fast float %4825, %4577
  %4834 = fadd fast float %4831, %4828
  %4835 = fadd fast float %4832, %4829
  %4836 = fadd fast float %4833, %4830
  %4837 = fmul fast float %4826, %4581
  %4838 = fmul fast float %4826, %4582
  %4839 = fmul fast float %4826, %4583
  %4840 = fadd fast float %4834, %4837
  %4841 = fadd fast float %4835, %4838
  %4842 = fadd fast float %4836, %4839
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float %4840, float %4841, float %4842)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = call float @dx.op.unary.f32(i32 25, float %4843)  ; Rsqrt(value)
  %4845 = fmul fast float %4840, %4844
  %4846 = fmul fast float %4841, %4844
  %4847 = fmul fast float %4842, %4844
  %4848 = icmp ne i32 %4764, 0
  %4849 = select i1 %4848, float 1.000000e+00, float 0.000000e+00
  %4850 = fmul fast float %4754, %4849
  %4851 = and i32 %4602, 1
  %4852 = icmp eq i32 %4851, 0
  br i1 %4852, label %4853, label %4857

; <label>:4853                                    ; preds = %4762
  %4854 = fsub fast float %4845, %4535
  %4855 = fsub fast float %4846, %4536
  %4856 = fsub fast float %4847, %4537
  br label %4857

; <label>:4857                                    ; preds = %4853, %4762
  %4858 = phi float [ %4854, %4853 ], [ %4845, %4762 ]
  %4859 = phi float [ %4855, %4853 ], [ %4846, %4762 ]
  %4860 = phi float [ %4856, %4853 ], [ %4847, %4762 ]
  %4861 = fmul float %4860, %4850
  %4862 = fmul float %4859, %4850
  %4863 = fmul float %4858, %4850
  %4864 = fadd fast float %4863, %4535
  %4865 = fadd fast float %4862, %4536
  %4866 = fadd fast float %4861, %4537
  %4867 = icmp ne i32 %4763, 0
  %4868 = select i1 %4867, float 1.000000e+00, float 0.000000e+00
  %4869 = fmul fast float %4754, %4868
  %4870 = fsub fast float %4808, %4542
  %4871 = fsub fast float %4809, %4543
  %4872 = fsub fast float %4810, %4544
  %4873 = fmul fast float %4870, %4869
  %4874 = fmul fast float %4871, %4869
  %4875 = fmul fast float %4872, %4869
  %4876 = fadd fast float %4873, %4542
  %4877 = fadd fast float %4874, %4543
  %4878 = fadd fast float %4875, %4544
  %4879 = fsub fast float %4781, %4541
  %4880 = fmul fast float %4879, %4869
  %4881 = fadd fast float %4880, %4541
  %4882 = fmul fast float %4869, %4528
  %4883 = fsub fast float %4528, %4882
  %4884 = fmul fast float %4869, %4527
  %4885 = fsub fast float %4527, %4884
  %4886 = bitcast float %4596 to i32
  %4887 = lshr i32 %4886, 16
  %4888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4887)  ; LegacyF16ToF32(value)
  %4889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4890 = extractvalue %dx.types.ResRet.i32 %4889, 0
  %4891 = and i32 %4890, 1
  %4892 = icmp eq i32 %4891, 0
  br i1 %4892, label %4893, label %4918

; <label>:4893                                    ; preds = %4857
  %4894 = fadd fast float %4781, 0xBFB99999A0000000
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, 0x3FF1C71C80000000
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fmul fast float %4898, %4808
  %4900 = fmul fast float %4898, %4809
  %4901 = fmul fast float %4898, %4810
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = call float @dx.op.binary.f32(i32 35, float %4903, float %4904)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float %4902, float %4905)  ; FMax(a,b)
  %4907 = fcmp fast ogt float %4906, 0.000000e+00
  %4908 = bitcast float %4906 to i32
  %4909 = sub nsw i32 2129859010, %4908
  %4910 = bitcast i32 %4909 to float
  %4911 = select i1 %4907, float %4910, float 0.000000e+00
  %4912 = fmul fast float %4902, %4888
  %4913 = fmul fast float %4903, %4888
  %4914 = fmul fast float %4904, %4888
  %4915 = fmul fast float %4912, %4911
  %4916 = fmul fast float %4913, %4911
  %4917 = fmul fast float %4914, %4911
  br label %4918

; <label>:4918                                    ; preds = %4893, %4857
  %4919 = phi float [ %4888, %4857 ], [ %4915, %4893 ]
  %4920 = phi float [ %4888, %4857 ], [ %4916, %4893 ]
  %4921 = phi float [ %4888, %4857 ], [ %4917, %4893 ]
  %4922 = fsub fast float %4919, %4529
  %4923 = fsub fast float %4920, %4530
  %4924 = fsub fast float %4921, %4531
  %4925 = fmul fast float %4922, %4869
  %4926 = fmul fast float %4923, %4869
  %4927 = fmul fast float %4924, %4869
  %4928 = fadd fast float %4925, %4529
  %4929 = fadd fast float %4926, %4530
  %4930 = fadd fast float %4927, %4531
  %4931 = fadd fast float %4754, %4540
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fsub fast float %4801, %4539
  %4934 = fmul fast float %4933, %4850
  %4935 = fadd fast float %4934, %4539
  %4936 = fsub fast float %4787, %4538
  %4937 = fmul fast float %4936, %4850
  %4938 = fadd fast float %4937, %4538
  br i1 %4852, label %4947, label %4939

; <label>:4939                                    ; preds = %4918
  %4940 = and i32 %4602, 32768
  %4941 = icmp eq i32 %4940, 0
  br i1 %4941, label %4957, label %4942

; <label>:4942                                    ; preds = %4939
  %4943 = fmul fast float %4850, 1.270000e+02
  %4944 = fadd fast float %4943, %4524
  %4945 = fadd fast float %4943, %4525
  %4946 = fadd fast float %4943, %4526
  br label %4957

; <label>:4947                                    ; preds = %4918
  %4948 = fsub fast float 1.270000e+02, %4524
  %4949 = fsub fast float 1.270000e+02, %4525
  %4950 = fsub fast float 1.270000e+02, %4526
  %4951 = fmul fast float %4850, %4948
  %4952 = fmul fast float %4850, %4949
  %4953 = fmul fast float %4850, %4950
  %4954 = fadd fast float %4951, %4524
  %4955 = fadd fast float %4952, %4525
  %4956 = fadd fast float %4953, %4526
  br label %4957

; <label>:4957                                    ; preds = %4947, %4942, %4939
  %4958 = phi float [ %4944, %4942 ], [ %4524, %4939 ], [ %4954, %4947 ]
  %4959 = phi float [ %4945, %4942 ], [ %4525, %4939 ], [ %4955, %4947 ]
  %4960 = phi float [ %4946, %4942 ], [ %4526, %4939 ], [ %4956, %4947 ]
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = fmul fast float %4964, %4961
  %4966 = fadd fast float %4965, %4963
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = bitcast float %4590 to i32
  %4969 = and i32 %4968, 65535
  %4970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4969)  ; LegacyF16ToF32(value)
  %4971 = lshr i32 %4968, 16
  %4972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4971)  ; LegacyF16ToF32(value)
  %4973 = fcmp fast oge float %4970, 0.000000e+00
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = select i1 %4973, float %4970, float %4975
  %4977 = fadd fast float %4976, %4972
  %4978 = fsub fast float %4967, %4523
  %4979 = fmul fast float %4978, %4754
  %4980 = fadd fast float %4979, %4523
  %4981 = fmul fast float %4977, %4754
  %4982 = call float @dx.op.binary.f32(i32 35, float %4522, float %4981)  ; FMax(a,b)
  %4983 = and i32 %4602, 16
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5006, label %4985

; <label>:4985                                    ; preds = %4957
  %4986 = add i32 %4593, 0
  %4987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4987, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = and i32 %4886, 65535
  %4993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4992)  ; LegacyF16ToF32(value)
  %4994 = fmul fast float %4989, %4587
  %4995 = fmul fast float %4990, %4588
  %4996 = fmul fast float %4991, %4589
  %4997 = and i32 %4602, 16384
  %4998 = icmp ne i32 %4997, 0
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = select i1 %4998, float %5000, float 1.000000e+00
  %5002 = fmul fast float %5001, %4993
  %5003 = fmul fast float %4994, %5002
  %5004 = fmul fast float %4995, %5002
  %5005 = fmul fast float %4996, %5002
  br label %5006

; <label>:5006                                    ; preds = %4985, %4957
  %5007 = phi float [ %5003, %4985 ], [ 0.000000e+00, %4957 ]
  %5008 = phi float [ %5004, %4985 ], [ 0.000000e+00, %4957 ]
  %5009 = phi float [ %5005, %4985 ], [ 0.000000e+00, %4957 ]
  %5010 = fsub fast float %5007, %4532
  %5011 = fsub fast float %5008, %4533
  %5012 = fsub fast float %5009, %4534
  %5013 = fmul fast float %5010, %4754
  %5014 = fmul fast float %5011, %4754
  %5015 = fmul fast float %5012, %4754
  %5016 = fadd fast float %5013, %4532
  %5017 = fadd fast float %5014, %4533
  %5018 = fadd fast float %5015, %4534
  br label %4651

; <label>:5019                                    ; preds = %4651
  br label %5020

; <label>:5020                                    ; preds = %5019, %4465
  %5021 = phi float [ 0.000000e+00, %4465 ], [ %4652, %5019 ]
  %5022 = phi float [ %4434, %4465 ], [ %4653, %5019 ]
  %5023 = phi float [ %4426, %4465 ], [ %4654, %5019 ]
  %5024 = phi float [ %4419, %4465 ], [ %4655, %5019 ]
  %5025 = phi float [ %4420, %4465 ], [ %4656, %5019 ]
  %5026 = phi float [ %4421, %4465 ], [ %4657, %5019 ]
  %5027 = phi float [ 0.000000e+00, %4465 ], [ %4658, %5019 ]
  %5028 = phi float [ 0.000000e+00, %4465 ], [ %4659, %5019 ]
  %5029 = phi float [ %4416, %4465 ], [ %4660, %5019 ]
  %5030 = phi float [ %4417, %4465 ], [ %4661, %5019 ]
  %5031 = phi float [ %4418, %4465 ], [ %4662, %5019 ]
  %5032 = phi float [ %4413, %4465 ], [ %4663, %5019 ]
  %5033 = phi float [ %4414, %4465 ], [ %4664, %5019 ]
  %5034 = phi float [ %4415, %4465 ], [ %4665, %5019 ]
  %5035 = phi float [ %4460, %4465 ], [ %4666, %5019 ]
  %5036 = phi float [ %4461, %4465 ], [ %4667, %5019 ]
  %5037 = phi float [ %4462, %4465 ], [ %4668, %5019 ]
  %5038 = phi float [ %4424, %4465 ], [ %4669, %5019 ]
  %5039 = phi float [ %4423, %4465 ], [ %4670, %5019 ]
  %5040 = phi float [ 0.000000e+00, %4465 ], [ %4671, %5019 ]
  %5041 = phi float [ %4422, %4465 ], [ %4672, %5019 ]
  %5042 = phi float [ %4410, %4465 ], [ %4673, %5019 ]
  %5043 = phi float [ %4411, %4465 ], [ %4674, %5019 ]
  %5044 = phi float [ %4412, %4465 ], [ %4675, %5019 ]
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5035
  %5048 = fmul fast float %5046, %5036
  %5049 = fmul fast float %5046, %5037
  %5050 = fadd fast float %5040, %1251
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5047
  %5055 = fmul fast float %5053, %5048
  %5056 = fmul fast float %5053, %5049
  br label %5057

; <label>:5057                                    ; preds = %5020, %4407
  %5058 = phi float [ %5054, %5020 ], [ %4460, %4407 ]
  %5059 = phi float [ %5055, %5020 ], [ %4461, %4407 ]
  %5060 = phi float [ %5056, %5020 ], [ %4462, %4407 ]
  %5061 = phi float [ %5042, %5020 ], [ %4410, %4407 ]
  %5062 = phi float [ %5043, %5020 ], [ %4411, %4407 ]
  %5063 = phi float [ %5044, %5020 ], [ %4412, %4407 ]
  %5064 = phi float [ %5029, %5020 ], [ %4416, %4407 ]
  %5065 = phi float [ %5030, %5020 ], [ %4417, %4407 ]
  %5066 = phi float [ %5031, %5020 ], [ %4418, %4407 ]
  %5067 = phi float [ %5032, %5020 ], [ %4413, %4407 ]
  %5068 = phi float [ %5033, %5020 ], [ %4414, %4407 ]
  %5069 = phi float [ %5034, %5020 ], [ %4415, %4407 ]
  %5070 = phi float [ %5024, %5020 ], [ %4419, %4407 ]
  %5071 = phi float [ %5025, %5020 ], [ %4420, %4407 ]
  %5072 = phi float [ %5026, %5020 ], [ %4421, %4407 ]
  %5073 = phi float [ %5041, %5020 ], [ %4422, %4407 ]
  %5074 = phi float [ %5051, %5020 ], [ %1251, %4407 ]
  %5075 = phi float [ %5039, %5020 ], [ %4423, %4407 ]
  %5076 = phi float [ %5038, %5020 ], [ %4424, %4407 ]
  %5077 = phi float [ %5028, %5020 ], [ 0.000000e+00, %4407 ]
  %5078 = phi float [ %5027, %5020 ], [ 0.000000e+00, %4407 ]
  %5079 = phi float [ %5021, %5020 ], [ 0.000000e+00, %4407 ]
  %5080 = phi float [ %5022, %5020 ], [ %4434, %4407 ]
  %5081 = phi float [ %5023, %5020 ], [ %4426, %4407 ]
  %5082 = add i32 %41, 392
  %5083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.i32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.i32 %5083, 2
  %5087 = extractvalue %dx.types.ResRet.i32 %5083, 3
  %5088 = bitcast i32 %5084 to float
  %5089 = bitcast i32 %5085 to float
  %5090 = bitcast i32 %5086 to float
  %5091 = bitcast i32 %5087 to float
  %5092 = fsub fast float %5061, %5088
  %5093 = fsub fast float %5062, %5089
  %5094 = fsub fast float %5063, %5090
  %5095 = fmul fast float %5092, %176
  %5096 = fmul fast float %5093, %176
  %5097 = fmul fast float %5094, %176
  %5098 = fadd fast float %5095, %5088
  %5099 = fadd fast float %5096, %5089
  %5100 = fadd fast float %5097, %5090
  %5101 = fsub fast float %5074, %5091
  %5102 = fmul fast float %5101, %176
  %5103 = fadd fast float %5102, %5091
  %5104 = fadd fast float %5073, 0xBFB99999A0000000
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %5105, 0x3FF1C71C80000000
  %5107 = call float @dx.op.binary.f32(i32 36, float %5073, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5108 = fsub fast float 1.000000e+00, %5106
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5098, %5109
  %5111 = fmul fast float %5099, %5109
  %5112 = fmul fast float %5100, %5109
  %5113 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = fmul fast float %5098, %5106
  %5117 = fmul fast float %5099, %5106
  %5118 = fmul fast float %5100, %5106
  %5119 = fadd fast float %5116, %5107
  %5120 = fadd fast float %5117, %5107
  %5121 = fadd fast float %5118, %5107
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.i32 %5126, 0
  %5128 = and i32 %5127, 1
  %5129 = icmp eq i32 %5128, 0
  br i1 %5129, label %5144, label %5130

; <label>:5130                                    ; preds = %5057
  %5131 = call float @dx.op.binary.f32(i32 35, float %5114, float %5115)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5113, float %5131)  ; FMax(a,b)
  %5133 = fcmp fast ogt float %5132, 0.000000e+00
  %5134 = bitcast float %5132 to i32
  %5135 = sub nsw i32 2129859010, %5134
  %5136 = bitcast i32 %5135 to float
  %5137 = select i1 %5133, float %5136, float 0.000000e+00
  %5138 = fmul fast float %5113, %5064
  %5139 = fmul fast float %5114, %5065
  %5140 = fmul fast float %5115, %5066
  %5141 = fmul fast float %5138, %5137
  %5142 = fmul fast float %5139, %5137
  %5143 = fmul fast float %5140, %5137
  br label %5144

; <label>:5144                                    ; preds = %5130, %5057
  %5145 = phi float [ %5141, %5130 ], [ %5064, %5057 ]
  %5146 = phi float [ %5142, %5130 ], [ %5065, %5057 ]
  %5147 = phi float [ %5143, %5130 ], [ %5066, %5057 ]
  %5148 = call float @dx.op.binary.f32(i32 36, float %5070, float 1.270000e+02)  ; FMin(a,b)
  %5149 = call float @dx.op.binary.f32(i32 36, float %5071, float 1.270000e+02)  ; FMin(a,b)
  %5150 = call float @dx.op.binary.f32(i32 36, float %5072, float 1.270000e+02)  ; FMin(a,b)
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 3
  %5153 = and i32 %5152, 8
  %5154 = icmp ne i32 %5153, 0
  %5155 = call float @dx.op.binary.f32(i32 35, float %5113, float %5098)  ; FMax(a,b)
  %5156 = call float @dx.op.binary.f32(i32 35, float %5114, float %5098)  ; FMax(a,b)
  %5157 = call float @dx.op.binary.f32(i32 35, float %5115, float %5098)  ; FMax(a,b)
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5114, float %5115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = select i1 %235, float %5098, float %5113
  %5160 = select i1 %235, float %5158, float %5114
  %5161 = select i1 %235, float 1.000000e+00, float %5115
  %5162 = select i1 %5154, float %5155, float %5159
  %5163 = select i1 %5154, float %5156, float %5160
  %5164 = select i1 %5154, float %5157, float %5161
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = select i1 %235, float %5165, float %5145
  %5167 = select i1 %235, float %5165, float %5146
  %5168 = select i1 %235, float %5165, float %5147
  %5169 = and i32 %211, 3
  %5170 = select i1 %205, i32 %5169, i32 0
  %5171 = icmp eq i32 %5170, 1
  br i1 %5171, label %5172, label %5248

; <label>:5172                                    ; preds = %5144
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5176 = fadd fast float %5174, %142
  %5177 = fadd fast float %5175, %143
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.CBufRet.f32 %5178, 1
  %5181 = fsub fast float %5176, %5179
  %5182 = fsub fast float %5177, %5180
  %5183 = fmul fast float %5181, %5181
  %5184 = fmul fast float %5182, %5182
  %5185 = fadd fast float %5183, %5184
  %5186 = call float @dx.op.unary.f32(i32 24, float %5185)  ; Sqrt(value)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5178, 2
  %5188 = fcmp fast olt float %5186, %5187
  br i1 %5188, label %5189, label %5242

; <label>:5189                                    ; preds = %5172
  %5190 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5191 = fadd fast float %5190, %144
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 0
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.CBufRet.f32 %5192, 1
  %5199 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5200 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5192, 3
  %5202 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5203 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5204 = fadd fast float %5201, %5176
  %5205 = fadd fast float %5202, %5177
  %5206 = fadd fast float %5191, %5203
  %5207 = fmul fast float %5204, %5193
  %5208 = call float @dx.op.tertiary.f32(i32 46, float %5205, float %5195, float %5207)  ; FMad(a,b,c)
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %5206, float %5197, float %5208)  ; FMad(a,b,c)
  %5210 = fmul fast float %5204, %5198
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5205, float %5199, float %5210)  ; FMad(a,b,c)
  %5212 = call float @dx.op.tertiary.f32(i32 46, float %5206, float %5200, float %5211)  ; FMad(a,b,c)
  %5213 = fsub fast float %5209, %5201
  %5214 = fsub fast float %5212, %5202
  %5215 = fsub fast float %5213, %5179
  %5216 = fadd fast float %5215, %5187
  %5217 = fsub fast float %5214, %5180
  %5218 = fadd fast float %5217, %5187
  %5219 = extractvalue %dx.types.CBufRet.f32 %5178, 3
  %5220 = fmul fast float %5216, %5219
  %5221 = fmul fast float %5218, %5219
  %5222 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5224 = fsub fast float 1.000000e+00, %5222
  %5225 = fsub fast float 1.000000e+00, %5223
  %5226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = fcmp fast ugt float %5227, 0.000000e+00
  br i1 %5228, label %5229, label %5242

; <label>:5229                                    ; preds = %5189
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5232 = fmul fast float %5231, %5227
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5234 = fadd fast float %5233, %5232
  %5235 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5236 = fadd fast float %5234, %5203
  %5237 = fmul fast float %5209, %5197
  %5238 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5200, float %5237)  ; FMad(a,b,c)
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5235, float %5238)  ; FMad(a,b,c)
  %5240 = fsub fast float %5239, %5203
  %5241 = fsub fast float %5240, %5190
  br label %5242

; <label>:5242                                    ; preds = %5229, %5189, %5172
  %5243 = phi i1 [ true, %5229 ], [ false, %5189 ], [ false, %5172 ]
  %5244 = phi float [ %5241, %5229 ], [ -1.310720e+05, %5189 ], [ -1.310720e+05, %5172 ]
  %5245 = fsub fast float %5244, %144
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = select i1 %5243, float %5246, float 1.000000e+00
  br label %5248

; <label>:5248                                    ; preds = %5242, %5144
  %5249 = phi float [ %5247, %5242 ], [ 0.000000e+00, %5144 ]
  %5250 = icmp eq i32 %5170, 3
  %5251 = select i1 %5250, float 1.000000e+00, float %5249
  %5252 = call float @dx.op.binary.f32(i32 35, float %5079, float %5251)  ; FMax(a,b)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fcmp fast une float %5253, 0.000000e+00
  %5255 = fsub fast float -0.000000e+00, %162
  %5256 = fsub fast float -0.000000e+00, %163
  %5257 = fsub fast float -0.000000e+00, %164
  br i1 %5254, label %5258, label %5420

; <label>:5258                                    ; preds = %5248
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fmul fast float %5253, 2.500000e+00
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fmul fast float %5253, 0x4013FFFFE0000000
  %5263 = fadd fast float %5262, 0xBFFFFFFFE0000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5253, 0x4004000020000000
  %5266 = fadd fast float %5265, 0xBFF8000040000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5269 = fmul fast float %5104, 1.000000e+01
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5270, 2.000000e+00
  %5272 = fsub fast float 3.000000e+00, %5271
  %5273 = fmul fast float %5270, %5270
  %5274 = fmul fast float %5273, %5272
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = fsub fast float 0x3FE3333340000000, %5125
  %5277 = fmul fast float %5276, 0x400AAAAAA0000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = fmul fast float %5275, %5278
  %5280 = fmul fast float %5162, 0x3FEA2B8620000000
  %5281 = fmul fast float %5163, 0x3FEA2B8620000000
  %5282 = fmul fast float %5164, 0x3FEA2B8620000000
  %5283 = fadd fast float %5280, 0x3FC81DFBA0000000
  %5284 = fmul fast float %5283, %5162
  %5285 = fadd fast float %5284, 0x3F910E6020000000
  %5286 = fadd fast float %5281, 0x3FC81DFBA0000000
  %5287 = fmul fast float %5286, %5163
  %5288 = fadd fast float %5287, 0x3F910E6020000000
  %5289 = fadd fast float %5282, 0x3FC81DFBA0000000
  %5290 = fmul fast float %5289, %5164
  %5291 = fadd fast float %5290, 0x3F910E6020000000
  %5292 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = fsub fast float %5292, %5162
  %5296 = fsub fast float %5293, %5163
  %5297 = fsub fast float %5294, %5164
  %5298 = fmul fast float %5295, %5268
  %5299 = fmul fast float %5298, %5279
  %5300 = fmul fast float %5296, %5268
  %5301 = fmul fast float %5300, %5279
  %5302 = fmul fast float %5297, %5268
  %5303 = fmul fast float %5302, %5279
  %5304 = fadd fast float %5299, %5162
  %5305 = fadd fast float %5301, %5163
  %5306 = fadd fast float %5303, %5164
  %5307 = fmul fast float %5076, %5076
  %5308 = fmul fast float %5307, %5307
  %5309 = fadd fast float %5264, 1.000000e+00
  %5310 = fsub fast float %5309, %5279
  %5311 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5312 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5308
  %5315 = call float @dx.op.binary.f32(i32 36, float %5311, float %5314)  ; FMin(a,b)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5315, float %5316)  ; FMax(a,b)
  %5318 = fadd fast float %5313, 0xBFE4CCCCC0000000
  %5319 = fmul fast float %5318, 0x4006DB6DA0000000
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = fsub fast float 3.000000e+00, %5321
  %5323 = bitcast float %5122 to i32
  %5324 = ashr i32 %5323, 1
  %5325 = add nsw i32 %5324, 532487669
  %5326 = bitcast i32 %5325 to float
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, 2.000000e+00
  %5332 = bitcast float %5123 to i32
  %5333 = ashr i32 %5332, 1
  %5334 = add nsw i32 %5333, 532487669
  %5335 = bitcast i32 %5334 to float
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, 2.000000e+00
  %5341 = bitcast float %5124 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fsub fast float 0x4002A9FBE0000000, %5331
  %5351 = fadd fast float %5331, 0x3FD54FDF00000000
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, %5350
  %5356 = fmul fast float %5355, %5355
  %5357 = fsub fast float 0x4002A9FBE0000000, %5340
  %5358 = fadd fast float %5340, 0x3FD54FDF00000000
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5362, %5362
  %5364 = fsub fast float 0x4002A9FBE0000000, %5349
  %5365 = fadd fast float %5349, 0x3FD54FDF00000000
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5369, %5369
  %5371 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5356)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5363)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5370)  ; FMax(a,b)
  %5374 = fsub fast float 1.000000e+00, %5259
  %5375 = fadd fast float %5374, %5275
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fsub fast float 1.000000e+00, %5251
  %5378 = fmul fast float %5317, %5377
  %5379 = fmul fast float %5320, %5320
  %5380 = fmul fast float %5379, %5378
  %5381 = fmul fast float %5380, %5322
  %5382 = fmul fast float %5377, 0xBFE99999A0000000
  %5383 = fmul fast float %5382, %5268
  %5384 = fmul fast float %5383, %5279
  %5385 = fadd fast float %5384, 1.000000e+00
  %5386 = fadd fast float %5125, -1.000000e+00
  %5387 = fmul fast float %5385, %5386
  %5388 = fadd fast float %5387, 1.000000e+00
  %5389 = fsub fast float %5371, %5122
  %5390 = fsub fast float %5372, %5123
  %5391 = fsub fast float %5373, %5124
  %5392 = fmul fast float %5381, %5389
  %5393 = fmul fast float %5381, %5390
  %5394 = fmul fast float %5381, %5391
  %5395 = fadd fast float %5392, %5122
  %5396 = fadd fast float %5393, %5123
  %5397 = fadd fast float %5394, %5124
  %5398 = fsub fast float %94, %5058
  %5399 = fsub fast float %95, %5059
  %5400 = fsub fast float %96, %5060
  %5401 = fmul fast float %5381, %5398
  %5402 = fmul fast float %5381, %5399
  %5403 = fmul fast float %5381, %5400
  %5404 = fadd fast float %5401, %5058
  %5405 = fadd fast float %5402, %5059
  %5406 = fadd fast float %5403, %5060
  %5407 = fmul fast float %5381, %5376
  %5408 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5407, %5409
  %5411 = fadd fast float %5410, %5408
  %5412 = fsub fast float 1.000000e+00, %5076
  %5413 = fmul fast float %5381, %5412
  %5414 = fadd fast float %5413, %5076
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.unary.f32(i32 25, float %5415)  ; Rsqrt(value)
  %5417 = fmul fast float %5404, %5416
  %5418 = fmul fast float %5405, %5416
  %5419 = fmul fast float %5406, %5416
  br label %5420

; <label>:5420                                    ; preds = %5258, %5248
  %5421 = phi float [ %5304, %5258 ], [ %5162, %5248 ]
  %5422 = phi float [ %5305, %5258 ], [ %5163, %5248 ]
  %5423 = phi float [ %5306, %5258 ], [ %5164, %5248 ]
  %5424 = phi float [ %5417, %5258 ], [ %5058, %5248 ]
  %5425 = phi float [ %5418, %5258 ], [ %5059, %5248 ]
  %5426 = phi float [ %5419, %5258 ], [ %5060, %5248 ]
  %5427 = phi float [ %5395, %5258 ], [ %5122, %5248 ]
  %5428 = phi float [ %5396, %5258 ], [ %5123, %5248 ]
  %5429 = phi float [ %5397, %5258 ], [ %5124, %5248 ]
  %5430 = phi float [ %5411, %5258 ], [ %5125, %5248 ]
  %5431 = phi float [ %5414, %5258 ], [ %5076, %5248 ]
  %5432 = select i1 %235, float 0.000000e+00, float %5429
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5435 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = fmul fast float %5435, 2.000000e+00
  %5437 = fmul fast float %5436, %5424
  %5438 = fmul fast float %5436, %5425
  %5439 = fmul fast float %5436, %5426
  %5440 = fsub fast float %162, %5437
  %5441 = fsub fast float %163, %5438
  %5442 = fsub fast float %164, %5439
  %5443 = call float @dx.op.binary.f32(i32 36, float %5431, float 1.000000e+00)  ; FMin(a,b)
  %5444 = fsub fast float 1.000000e+00, %5431
  %5445 = bitcast float %5444 to i32
  %5446 = sub nsw i32 2129859010, %5445
  %5447 = bitcast i32 %5446 to float
  %5448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5449 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = fcmp fast oeq float %5449, 0.000000e+00
  %5451 = fcmp fast oeq float %5448, 0.000000e+00
  %5452 = or i1 %5451, %5450
  br i1 %5452, label %5482, label %5453

; <label>:5453                                    ; preds = %5420
  %5454 = fsub fast float -0.000000e+00, %61
  %5455 = fsub fast float -0.000000e+00, %59
  %5456 = call float @dx.op.unary.f32(i32 24, float %5449)  ; Sqrt(value)
  %5457 = fdiv fast float %5456, %5448
  %5458 = fcmp fast ogt float %5457, 0x3FFB6F8900000000
  %5459 = select i1 %5458, float 0x3FFB6F8900000000, float %5457
  %5460 = fmul fast float %5459, 0x3FE8A23460000000
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = call float @dx.op.binary.f32(i32 35, float %5459, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5463 = fmul fast float %5461, %5448
  %5464 = fmul fast float %5462, 0x3FF279A740000000
  %5465 = fadd fast float %5464, -1.000000e+00
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %60, float %5454, float %5455, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 25, float %5466)  ; Rsqrt(value)
  %5468 = fmul fast float %5467, %5454
  %5469 = fmul fast float %5467, %5455
  %5470 = fmul fast float %5467, %60
  %5471 = fmul fast float %5465, %5465
  %5472 = fsub fast float 1.000000e+00, %5471
  %5473 = fmul fast float %5462, 0x40005F8BE0000000
  %5474 = fsub fast float 0x400C5BF8A0000000, %5473
  %5475 = fdiv fast float %5463, %5474
  %5476 = fmul fast float %5475, 0x3FEE31C3C0000000
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5462, 0x3FDACB7480000000
  %5479 = fadd fast float %5478, 0xBFD7347680000000
  %5480 = fmul fast float %5479, %5475
  %5481 = fmul fast float %5480, %5472
  br label %5482

; <label>:5482                                    ; preds = %5453, %5420
  %5483 = phi float [ %5468, %5453 ], [ 0.000000e+00, %5420 ]
  %5484 = phi float [ %5469, %5453 ], [ 0.000000e+00, %5420 ]
  %5485 = phi float [ %5470, %5453 ], [ 0.000000e+00, %5420 ]
  %5486 = phi float [ %5477, %5453 ], [ 0.000000e+00, %5420 ]
  %5487 = phi float [ %5481, %5453 ], [ 0.000000e+00, %5420 ]
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fmul fast float %5488, 0x3FDF454380000000
  %5490 = fmul fast float %5488, %5488
  %5491 = fmul fast float %5490, 0x3FEE471020000000
  %5492 = fadd fast float %5491, 0xBFD42F6020000000
  %5493 = fmul fast float %5448, 0x3FD20DD760000000
  %5494 = fmul fast float %5492, %5487
  %5495 = fadd fast float %5494, %5493
  %5496 = fmul fast float %5489, %5486
  %5497 = fadd fast float %5495, %5496
  %5498 = fsub fast float %5495, %5496
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5440, float %5441, float %5442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fmul fast float %5499, 0x3FDF454380000000
  %5501 = fmul fast float %5499, %5499
  %5502 = fmul fast float %5501, 0x3FEE471020000000
  %5503 = fadd fast float %5502, 0xBFD42F6020000000
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5486, float %5487, float 0x3FD20DD760000000, float %5500, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5506 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fcmp fast oeq float %5506, 0.000000e+00
  %5508 = fcmp fast oeq float %5505, 0.000000e+00
  %5509 = or i1 %5508, %5507
  br i1 %5509, label %5539, label %5510

; <label>:5510                                    ; preds = %5482
  %5511 = fsub fast float -0.000000e+00, %57
  %5512 = fsub fast float -0.000000e+00, %55
  %5513 = call float @dx.op.unary.f32(i32 24, float %5506)  ; Sqrt(value)
  %5514 = fdiv fast float %5513, %5505
  %5515 = fcmp fast ogt float %5514, 0x3FFB6F8900000000
  %5516 = select i1 %5515, float 0x3FFB6F8900000000, float %5514
  %5517 = fmul fast float %5516, 0x3FE8A23460000000
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = call float @dx.op.binary.f32(i32 35, float %5516, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5520 = fmul fast float %5518, %5505
  %5521 = fmul fast float %5519, 0x3FF279A740000000
  %5522 = fadd fast float %5521, -1.000000e+00
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %56, float %5511, float %5512, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = call float @dx.op.unary.f32(i32 25, float %5523)  ; Rsqrt(value)
  %5525 = fmul fast float %5524, %5511
  %5526 = fmul fast float %5524, %5512
  %5527 = fmul fast float %5524, %56
  %5528 = fmul fast float %5522, %5522
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = fmul fast float %5519, 0x40005F8BE0000000
  %5531 = fsub fast float 0x400C5BF8A0000000, %5530
  %5532 = fdiv fast float %5520, %5531
  %5533 = fmul fast float %5532, 0x3FEE31C3C0000000
  %5534 = fmul fast float %5533, %5529
  %5535 = fmul fast float %5519, 0x3FDACB7480000000
  %5536 = fadd fast float %5535, 0xBFD7347680000000
  %5537 = fmul fast float %5536, %5532
  %5538 = fmul fast float %5537, %5529
  br label %5539

; <label>:5539                                    ; preds = %5510, %5482
  %5540 = phi float [ %5525, %5510 ], [ 0.000000e+00, %5482 ]
  %5541 = phi float [ %5526, %5510 ], [ 0.000000e+00, %5482 ]
  %5542 = phi float [ %5527, %5510 ], [ 0.000000e+00, %5482 ]
  %5543 = phi float [ %5534, %5510 ], [ 0.000000e+00, %5482 ]
  %5544 = phi float [ %5538, %5510 ], [ 0.000000e+00, %5482 ]
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fmul fast float %5545, 0x3FDF454380000000
  %5547 = fmul fast float %5545, %5545
  %5548 = fmul fast float %5547, 0x3FEE471020000000
  %5549 = fadd fast float %5548, 0xBFD42F6020000000
  %5550 = fmul fast float %5505, 0x3FD20DD760000000
  %5551 = fmul fast float %5549, %5544
  %5552 = fadd fast float %5551, %5550
  %5553 = fmul fast float %5546, %5543
  %5554 = fadd fast float %5552, %5553
  %5555 = fsub fast float %5552, %5553
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5440, float %5441, float %5442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fmul fast float %5556, 0x3FDF454380000000
  %5558 = fmul fast float %5556, %5556
  %5559 = fmul fast float %5558, 0x3FEE471020000000
  %5560 = fadd fast float %5559, 0xBFD42F6020000000
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5543, float %5544, float 0x3FD20DD760000000, float %5557, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5563 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = fcmp fast oeq float %5563, 0.000000e+00
  %5565 = fcmp fast oeq float %5562, 0.000000e+00
  %5566 = or i1 %5565, %5564
  br i1 %5566, label %5596, label %5567

; <label>:5567                                    ; preds = %5539
  %5568 = fsub fast float -0.000000e+00, %53
  %5569 = fsub fast float -0.000000e+00, %51
  %5570 = call float @dx.op.unary.f32(i32 24, float %5563)  ; Sqrt(value)
  %5571 = fdiv fast float %5570, %5562
  %5572 = fcmp fast ogt float %5571, 0x3FFB6F8900000000
  %5573 = select i1 %5572, float 0x3FFB6F8900000000, float %5571
  %5574 = fmul fast float %5573, 0x3FE8A23460000000
  %5575 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5576 = call float @dx.op.binary.f32(i32 35, float %5573, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5577 = fmul fast float %5575, %5562
  %5578 = fmul fast float %5576, 0x3FF279A740000000
  %5579 = fadd fast float %5578, -1.000000e+00
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %52, float %5568, float %5569, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = call float @dx.op.unary.f32(i32 25, float %5580)  ; Rsqrt(value)
  %5582 = fmul fast float %5581, %5568
  %5583 = fmul fast float %5581, %5569
  %5584 = fmul fast float %5581, %52
  %5585 = fmul fast float %5579, %5579
  %5586 = fsub fast float 1.000000e+00, %5585
  %5587 = fmul fast float %5576, 0x40005F8BE0000000
  %5588 = fsub fast float 0x400C5BF8A0000000, %5587
  %5589 = fdiv fast float %5577, %5588
  %5590 = fmul fast float %5589, 0x3FEE31C3C0000000
  %5591 = fmul fast float %5590, %5586
  %5592 = fmul fast float %5576, 0x3FDACB7480000000
  %5593 = fadd fast float %5592, 0xBFD7347680000000
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5594, %5586
  br label %5596

; <label>:5596                                    ; preds = %5567, %5539
  %5597 = phi float [ %5582, %5567 ], [ 0.000000e+00, %5539 ]
  %5598 = phi float [ %5583, %5567 ], [ 0.000000e+00, %5539 ]
  %5599 = phi float [ %5584, %5567 ], [ 0.000000e+00, %5539 ]
  %5600 = phi float [ %5591, %5567 ], [ 0.000000e+00, %5539 ]
  %5601 = phi float [ %5595, %5567 ], [ 0.000000e+00, %5539 ]
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = fmul fast float %5602, 0x3FDF454380000000
  %5604 = fmul fast float %5602, %5602
  %5605 = fmul fast float %5604, 0x3FEE471020000000
  %5606 = fadd fast float %5605, 0xBFD42F6020000000
  %5607 = fmul fast float %5562, 0x3FD20DD760000000
  %5608 = fmul fast float %5606, %5601
  %5609 = fadd fast float %5608, %5607
  %5610 = fmul fast float %5603, %5600
  %5611 = fadd fast float %5609, %5610
  %5612 = fsub fast float %5609, %5610
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5440, float %5441, float %5442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = fmul fast float %5613, 0x3FDF454380000000
  %5615 = fmul fast float %5613, %5613
  %5616 = fmul fast float %5615, 0x3FEE471020000000
  %5617 = fadd fast float %5616, 0xBFD42F6020000000
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5600, float %5601, float 0x3FD20DD760000000, float %5614, float %5617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5497, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5554, float 0.000000e+00)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5611, float 0.000000e+00)  ; FMax(a,b)
  %5622 = call float @dx.op.binary.f32(i32 35, float %5498, float 0.000000e+00)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5555, float 0.000000e+00)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5504, float 0.000000e+00)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5561, float 0.000000e+00)  ; FMax(a,b)
  %5627 = call float @dx.op.binary.f32(i32 35, float %5618, float 0.000000e+00)  ; FMax(a,b)
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = call float @dx.op.binary.f32(i32 36, float %5421, float %5629)  ; FMin(a,b)
  %5631 = fsub fast float 1.000000e+00, %5443
  %5632 = fmul fast float %5630, %5631
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = bitcast float %5633 to i32
  %5635 = sub nsw i32 2129859010, %5634
  %5636 = bitcast i32 %5635 to float
  %5637 = call float @dx.op.binary.f32(i32 36, float %5422, float %5629)  ; FMin(a,b)
  %5638 = fmul fast float %5637, %5631
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = call float @dx.op.binary.f32(i32 36, float %5423, float %5629)  ; FMin(a,b)
  %5644 = fmul fast float %5643, %5631
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = bitcast float %5645 to i32
  %5647 = sub nsw i32 2129859010, %5646
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5619, %5443
  %5650 = fmul fast float %5649, %5636
  %5651 = fmul fast float %5620, %5443
  %5652 = fmul fast float %5651, %5642
  %5653 = fmul fast float %5621, %5443
  %5654 = fmul fast float %5653, %5648
  %5655 = call float @dx.op.binary.f32(i32 36, float %5427, float %5629)  ; FMin(a,b)
  %5656 = fmul fast float %5655, %5631
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = bitcast float %5657 to i32
  %5659 = sub nsw i32 2129859010, %5658
  %5660 = bitcast i32 %5659 to float
  %5661 = call float @dx.op.binary.f32(i32 36, float %5428, float %5629)  ; FMin(a,b)
  %5662 = fmul fast float %5661, %5631
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = call float @dx.op.binary.f32(i32 36, float %5432, float %5629)  ; FMin(a,b)
  %5668 = fmul fast float %5667, %5631
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = bitcast float %5669 to i32
  %5671 = sub nsw i32 2129859010, %5670
  %5672 = bitcast i32 %5671 to float
  %5673 = fmul fast float %5625, %5443
  %5674 = fmul fast float %5673, %5660
  %5675 = fmul fast float %5626, %5443
  %5676 = fmul fast float %5675, %5666
  %5677 = fmul fast float %5627, %5443
  %5678 = fmul fast float %5677, %5672
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5652, float %5654, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = select i1 %235, float 0.000000e+00, float %5650
  %5681 = select i1 %235, float %5679, float %5652
  %5682 = select i1 %235, float 0.000000e+00, float %5654
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5622, float %5623, float %5624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = select i1 %235, float 0.000000e+00, float %5622
  %5685 = select i1 %235, float %5683, float %5623
  %5686 = select i1 %235, float 0.000000e+00, float %5624
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5676, float %5678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = select i1 %235, float 0.000000e+00, float %5674
  %5689 = select i1 %235, float %5687, float %5676
  %5690 = select i1 %235, float 0.000000e+00, float %5678
  %5691 = fmul fast float %4425, %4425
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5434, 9.843750e-01
  %5694 = fmul fast float %5430, 9.843750e-01
  %5695 = fadd fast float %5693, 7.812500e-03
  %5696 = fadd fast float %5694, 7.812500e-03
  %5697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5695, float %5696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.ResRet.f32 %5697, 2
  %5701 = extractvalue %dx.types.ResRet.f32 %5697, 3
  %5702 = fsub fast float 1.000000e+00, %5692
  %5703 = fsub fast float %5700, %5698
  %5704 = fsub fast float %5701, %5699
  %5705 = fmul fast float %5703, %5702
  %5706 = fmul fast float %5704, %5702
  %5707 = fadd fast float %5705, %5698
  %5708 = fadd fast float %5706, %5699
  %5709 = fmul fast float %5707, %5427
  %5710 = fmul fast float %5707, %5428
  %5711 = fmul fast float %5707, %5432
  %5712 = fadd fast float %5709, %5708
  %5713 = fadd fast float %5710, %5708
  %5714 = fadd fast float %5711, %5708
  %5715 = fcmp fast ogt float %5077, 0.000000e+00
  br i1 %5715, label %5716, label %5742

; <label>:5716                                    ; preds = %5596
  %5717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5077, float %5434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.ResRet.f32 %5717, 2
  %5721 = fadd fast float %5718, -5.000000e-01
  %5722 = fadd fast float %5719, -5.000000e-01
  %5723 = fadd fast float %5720, -5.000000e-01
  %5724 = fsub fast float 1.000000e+00, %5427
  %5725 = fsub fast float 1.000000e+00, %5428
  %5726 = fsub fast float 1.000000e+00, %5432
  %5727 = fmul fast float %5427, 4.000000e+00
  %5728 = fmul fast float %5727, %5724
  %5729 = fmul fast float %5728, %5721
  %5730 = fmul fast float %5428, 4.000000e+00
  %5731 = fmul fast float %5730, %5725
  %5732 = fmul fast float %5731, %5722
  %5733 = fmul fast float %5432, 4.000000e+00
  %5734 = fmul fast float %5733, %5726
  %5735 = fmul fast float %5734, %5723
  %5736 = fadd fast float %5729, %5712
  %5737 = fadd fast float %5732, %5713
  %5738 = fadd fast float %5735, %5714
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5740 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5741 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  br label %5742

; <label>:5742                                    ; preds = %5716, %5596
  %5743 = phi float [ %5739, %5716 ], [ %5712, %5596 ]
  %5744 = phi float [ %5740, %5716 ], [ %5713, %5596 ]
  %5745 = phi float [ %5741, %5716 ], [ %5714, %5596 ]
  %5746 = call float @dx.op.binary.f32(i32 35, float %5744, float %5745)  ; FMax(a,b)
  %5747 = call float @dx.op.binary.f32(i32 35, float %5743, float %5746)  ; FMax(a,b)
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fcmp fast ogt float %5749, 0x3E7FF19E20000000
  %5751 = fdiv fast float 1.000000e+00, %5749
  %5752 = select i1 %5750, float %5751, float 0.000000e+00
  %5753 = fmul fast float %5752, %5421
  %5754 = fmul fast float %5752, %5422
  %5755 = fmul fast float %5752, %5423
  %5756 = fadd fast float %5753, -1.000000e+00
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fadd fast float %5755, -1.000000e+00
  %5759 = fmul fast float %5756, 5.000000e-01
  %5760 = fmul fast float %5757, 5.000000e-01
  %5761 = fmul fast float %5758, 5.000000e-01
  %5762 = fadd fast float %5759, 1.000000e+00
  %5763 = fadd fast float %5760, 1.000000e+00
  %5764 = fadd fast float %5761, 1.000000e+00
  %5765 = call float @dx.op.binary.f32(i32 35, float %5434, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5766 = fdiv fast float %4425, %5765
  %5767 = fcmp fast olt float %5148, 1.270000e+02
  %5768 = fcmp fast olt float %5149, 1.270000e+02
  %5769 = fcmp fast olt float %5150, 1.270000e+02
  %5770 = fmul fast float %5148, 0xBFF7154760000000
  %5771 = fmul fast float %5770, %5766
  %5772 = fmul fast float %5149, 0xBFF7154760000000
  %5773 = fmul fast float %5772, %5766
  %5774 = fmul fast float %5150, 0xBFF7154760000000
  %5775 = fmul fast float %5774, %5766
  %5776 = call float @dx.op.unary.f32(i32 21, float %5771)  ; Exp(value)
  %5777 = call float @dx.op.unary.f32(i32 21, float %5773)  ; Exp(value)
  %5778 = call float @dx.op.unary.f32(i32 21, float %5775)  ; Exp(value)
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5781 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5782 = select i1 %5767, float %5779, float 0.000000e+00
  %5783 = select i1 %5768, float %5780, float 0.000000e+00
  %5784 = select i1 %5769, float %5781, float 0.000000e+00
  %5785 = fmul fast float %5782, %5748
  %5786 = fmul fast float %5783, %5748
  %5787 = fmul fast float %5784, %5748
  %5788 = fadd fast float %5785, -1.000000e+00
  %5789 = fadd fast float %5786, -1.000000e+00
  %5790 = fadd fast float %5787, -1.000000e+00
  %5791 = fmul fast float %5788, %5103
  %5792 = fmul fast float %5789, %5103
  %5793 = fmul fast float %5790, %5103
  %5794 = fmul fast float %5743, %5688
  %5795 = fmul fast float %5744, %5689
  %5796 = fmul fast float %5745, %5690
  %5797 = fsub fast float 1.000000e+00, %5434
  %5798 = bitcast float %5797 to i32
  %5799 = sitofp i32 %5798 to float
  %5800 = fmul fast float %5799, 5.000000e+00
  %5801 = fadd fast float %5800, 0xC1EFBF8940000000
  %5802 = fptosi float %5801 to i32
  %5803 = bitcast i32 %5802 to float
  %5804 = fmul fast float %5803, %5078
  %5805 = fmul fast float %5680, %5804
  %5806 = fmul fast float %5805, %5748
  %5807 = fmul fast float %5806, %5762
  %5808 = fmul fast float %5681, %5804
  %5809 = fmul fast float %5808, %5748
  %5810 = fmul fast float %5809, %5763
  %5811 = fmul fast float %5682, %5804
  %5812 = fmul fast float %5811, %5748
  %5813 = fmul fast float %5812, %5764
  %5814 = fadd fast float %5794, %5067
  %5815 = fadd fast float %5814, %5807
  %5816 = fmul fast float %5815, %5103
  %5817 = fadd fast float %5795, %5068
  %5818 = fadd fast float %5817, %5810
  %5819 = fmul fast float %5818, %5103
  %5820 = fadd fast float %5796, %5069
  %5821 = fadd fast float %5820, %5813
  %5822 = fmul fast float %5821, %5103
  %5823 = fmul fast float %5428, 0x4012D0A400000000
  %5824 = fadd fast float %5793, 1.000000e+00
  %5825 = fadd fast float %5792, 1.000000e+00
  %5826 = fadd fast float %5791, 1.000000e+00
  %5827 = fmul fast float %5748, %5682
  %5828 = fmul fast float %5748, %5681
  %5829 = fmul fast float %5748, %5680
  %5830 = fsub fast float 1.000000e+00, %5430
  %5831 = fmul fast float %5830, %5103
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = fsub fast float 1.000000e+00, %5833
  %5835 = fadd fast float %5823, 0x3FDB6377A0000000
  %5836 = fmul fast float %5834, %5835
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %5168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fadd fast float %5836, %5837
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5839, float 0x3F847AE140000000)  ; FMax(a,b)
  %5841 = fmul fast float %5840, %5840
  %5842 = fmul fast float %5841, %5841
  %5843 = fmul fast float %5842, 0xC00A935000000000
  %5844 = call float @dx.op.unary.f32(i32 21, float %5843)  ; Exp(value)
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5826, %5684
  %5847 = fmul fast float %5846, %5845
  %5848 = fmul fast float %5825, %5685
  %5849 = fmul fast float %5848, %5845
  %5850 = fmul fast float %5824, %5686
  %5851 = fmul fast float %5850, %5845
  %5852 = fadd fast float %5847, %5829
  %5853 = fmul fast float %5852, %5103
  %5854 = fadd fast float %5849, %5828
  %5855 = fmul fast float %5854, %5103
  %5856 = fadd fast float %5851, %5827
  %5857 = fmul fast float %5856, %5103
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5860 = fcmp fast oeq float %5859, 0.000000e+00
  br i1 %5860, label %6990, label %5861

; <label>:5861                                    ; preds = %5742
  %5862 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = select i1 %235, float %5870, float %5866
  %5874 = select i1 %235, float %5872, float %5867
  %5875 = select i1 %235, float %5871, float %5868
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5878 = fmul fast float %5877, %94
  %5879 = fmul fast float %5877, %95
  %5880 = fmul fast float %5877, %96
  %5881 = fadd fast float %5878, %142
  %5882 = fadd fast float %5879, %143
  %5883 = fadd fast float %5880, %144
  %5884 = fcmp fast olt float %5859, 0.000000e+00
  br i1 %5884, label %6509, label %5885

; <label>:5885                                    ; preds = %5861
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5890 = extractvalue %dx.types.CBufRet.f32 %5886, 3
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5901 = fmul fast float %5887, %5881
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5888, float %5901)  ; FMad(a,b,c)
  %5903 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5889, float %5902)  ; FMad(a,b,c)
  %5904 = fadd fast float %5903, %5890
  %5905 = fmul fast float %5892, %5881
  %5906 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5893, float %5905)  ; FMad(a,b,c)
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5894, float %5906)  ; FMad(a,b,c)
  %5908 = fadd fast float %5907, %5895
  %5909 = fmul fast float %5897, %5881
  %5910 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5898, float %5909)  ; FMad(a,b,c)
  %5911 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5899, float %5910)  ; FMad(a,b,c)
  %5912 = fadd fast float %5911, %5900
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5917 = fmul fast float %5916, %5904
  %5918 = fmul fast float %5916, %5908
  %5919 = fadd fast float %5917, %5914
  %5920 = fadd fast float %5918, %5915
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5925 = fmul fast float %5924, %5904
  %5926 = fmul fast float %5924, %5908
  %5927 = fadd fast float %5925, %5922
  %5928 = fadd fast float %5926, %5923
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5931 = fsub fast float %5930, %5912
  %5932 = extractvalue %dx.types.CBufRet.f32 %5929, 2
  %5933 = fmul fast float %5931, %5932
  %5934 = fsub fast float 1.000000e+00, %5933
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 2
  %5939 = fadd fast float %5938, %5936
  %5940 = fcmp fast ogt float %5939, 0.000000e+00
  br i1 %5940, label %5941, label %5965

; <label>:5941                                    ; preds = %5885
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = fsub fast float %5927, %5943
  %5946 = fsub fast float %5928, %5944
  %5947 = fcmp fast olt float %5945, 0.000000e+00
  %5948 = fcmp fast olt float %5946, 0.000000e+00
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = select i1 %5947, float %5950, float %5952
  %5955 = select i1 %5948, float %5951, float %5953
  %5956 = fmul fast float %5954, %5945
  %5957 = fmul fast float %5955, %5946
  %5958 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5961 = call float @dx.op.binary.f32(i32 35, float %5958, float %5959)  ; FMax(a,b)
  %5962 = fsub fast float %5960, %5961
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fmul fast float %5963, %5935
  br label %5965

; <label>:5965                                    ; preds = %5941, %5885
  %5966 = phi float [ %5964, %5941 ], [ 0.000000e+00, %5885 ]
  %5967 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5968 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5969 = fadd fast float %5968, %5967
  %5970 = fcmp fast ogt float %5969, 0.000000e+00
  %5971 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  br i1 %5970, label %5972, label %5995

; <label>:5972                                    ; preds = %5965
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = fsub fast float %5919, %5974
  %5977 = fsub fast float %5920, %5975
  %5978 = fcmp fast olt float %5976, 0.000000e+00
  %5979 = fcmp fast olt float %5977, 0.000000e+00
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5991 = call float @dx.op.binary.f32(i32 35, float %5989, float %5990)  ; FMax(a,b)
  %5992 = fsub fast float %5971, %5991
  %5993 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5994 = fmul fast float %5993, %5935
  br label %5995

; <label>:5995                                    ; preds = %5972, %5965
  %5996 = phi float [ %5994, %5972 ], [ 0.000000e+00, %5965 ]
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = fsub fast float %5904, %6001
  %6004 = fsub fast float %5908, %6002
  %6005 = fcmp fast olt float %6003, 0.000000e+00
  %6006 = fcmp fast olt float %6004, 0.000000e+00
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6012 = select i1 %6005, float %6008, float %6010
  %6013 = select i1 %6006, float %6009, float %6011
  %6014 = fmul fast float %6012, %6003
  %6015 = fmul fast float %6013, %6004
  %6016 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6018 = call float @dx.op.binary.f32(i32 35, float %6016, float %6017)  ; FMax(a,b)
  %6019 = fsub fast float %5971, %6018
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = call float @dx.op.binary.f32(i32 36, float %6020, float %5999)  ; FMin(a,b)
  %6022 = fmul fast float %6021, %5935
  %6023 = fsub fast float %5996, %6022
  %6024 = fsub fast float %5966, %5996
  %6025 = fsub fast float %6024, %6022
  %6026 = call float @dx.op.binary.f32(i32 35, float %5996, float %5966)  ; FMax(a,b)
  %6027 = call float @dx.op.binary.f32(i32 35, float %6022, float %6026)  ; FMax(a,b)
  %6028 = fcmp fast olt float %6027, 1.000000e+00
  br i1 %6028, label %6029, label %6427, !dx.controlflow.hints !80

; <label>:6029                                    ; preds = %5995
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = fcmp fast une float %6031, 0.000000e+00
  br i1 %6032, label %6033, label %6427, !dx.controlflow.hints !81

; <label>:6033                                    ; preds = %6029
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6038 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6049 = fmul fast float %6035, %5881
  %6050 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6036, float %6049)  ; FMad(a,b,c)
  %6051 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6037, float %6050)  ; FMad(a,b,c)
  %6052 = fadd fast float %6051, %6038
  %6053 = fmul fast float %6040, %5881
  %6054 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6041, float %6053)  ; FMad(a,b,c)
  %6055 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6042, float %6054)  ; FMad(a,b,c)
  %6056 = fadd fast float %6055, %6043
  %6057 = fmul fast float %6045, %5881
  %6058 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6046, float %6057)  ; FMad(a,b,c)
  %6059 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6047, float %6058)  ; FMad(a,b,c)
  %6060 = fadd fast float %6059, %6048
  %6061 = fcmp fast oge float %6052, 1.000000e+00
  %6062 = fcmp fast oge float %6056, 1.000000e+00
  %6063 = or i1 %6061, %6062
  %6064 = fcmp fast olt float %6052, 0.000000e+00
  %6065 = fcmp fast olt float %6056, 0.000000e+00
  %6066 = or i1 %6064, %6065
  %6067 = or i1 %6063, %6066
  br i1 %6067, label %6427, label %6068, !dx.controlflow.hints !82

; <label>:6068                                    ; preds = %6033
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.i32 %6073, 2
  %6075 = uitofp i32 %6074 to float
  %6076 = extractvalue %dx.types.CBufRet.i32 %6073, 3
  %6077 = uitofp i32 %6076 to float
  %6078 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6079 = fmul fast float %6078, 2.000000e+00
  %6080 = fsub fast float %6052, %6070
  %6081 = fsub fast float %6056, %6071
  %6082 = fmul fast float %6079, %6080
  %6083 = fmul fast float %6079, %6081
  %6084 = fdiv fast float 1.000000e+00, %5864
  %6085 = fmul fast float %6083, %6084
  %6086 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6087 = fmul fast float %6072, %5883
  %6088 = fmul fast float %6087, %6079
  %6089 = call float @dx.op.unary.f32(i32 6, float %6088)  ; FAbs(value)
  %6090 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6091 = call float @dx.op.binary.f32(i32 35, float %6089, float %6086)  ; FMax(a,b)
  %6092 = call float @dx.op.binary.f32(i32 35, float %6090, float %6091)  ; FMax(a,b)
  %6093 = fmul fast float %6092, 2.000000e+00
  %6094 = call float @dx.op.unary.f32(i32 23, float %6093)  ; Log(value)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6094, float %6075)  ; FMax(a,b)
  %6096 = call float @dx.op.unary.f32(i32 22, float %6095)  ; Frc(value)
  %6097 = fadd fast float %6096, 0xBFEA666660000000
  %6098 = fmul fast float %6097, 8.000000e+00
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6100 = call float @dx.op.unary.f32(i32 27, float %6095)  ; Round_ni(value)
  %6101 = fadd fast float %6100, %6099
  %6102 = call float @dx.op.binary.f32(i32 36, float %6101, float %6077)  ; FMin(a,b)
  %6103 = call float @dx.op.unary.f32(i32 27, float %6102)  ; Round_ni(value)
  %6104 = fsub fast float -0.000000e+00, %6103
  %6105 = call float @dx.op.unary.f32(i32 21, float %6104)  ; Exp(value)
  %6106 = fmul fast float %6105, %6079
  %6107 = fmul fast float %6106, %6052
  %6108 = fmul fast float %6106, %6056
  %6109 = fmul fast float %6107, 2.500000e-01
  %6110 = fmul fast float %6108, 2.500000e-01
  %6111 = fadd fast float %6109, 5.000000e-01
  %6112 = fadd fast float %6110, 5.000000e-01
  %6113 = fsub fast float %6077, %6075
  %6114 = fptoui float %6113 to i32
  %6115 = add i32 %6114, 320
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6115)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = fcmp fast une float %6102, %6077
  %6120 = fsub fast float %6052, %6117
  %6121 = fsub fast float %6056, %6118
  %6122 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = fmul fast float %6122, %6106
  %6125 = fmul fast float %6123, %6106
  %6126 = fcmp fast olt float %6124, 1.000000e+00
  %6127 = fcmp fast olt float %6125, 1.000000e+00
  %6128 = and i1 %6126, %6127
  %6129 = or i1 %6119, %6128
  br i1 %6129, label %6130, label %6427, !dx.controlflow.hints !83

; <label>:6130                                    ; preds = %6068
  %6131 = fmul fast float %6108, 5.000000e-01
  %6132 = fmul fast float %6107, 5.000000e-01
  %6133 = fadd fast float %6131, 5.000000e-01
  %6134 = fadd fast float %6132, 5.000000e-01
  %6135 = sitofp i32 %6074 to float
  %6136 = fsub fast float %6102, %6135
  %6137 = call float @dx.op.unary.f32(i32 27, float %6136)  ; Round_ni(value)
  %6138 = call float @dx.op.unary.f32(i32 22, float %6102)  ; Frc(value)
  %6139 = call float @dx.op.unary.f32(i32 22, float %6134)  ; Frc(value)
  %6140 = call float @dx.op.unary.f32(i32 22, float %6133)  ; Frc(value)
  %6141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6139, float %6140, float %6137, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.ResRet.f32 %6141, 2
  %6145 = extractvalue %dx.types.ResRet.f32 %6141, 3
  %6146 = fcmp fast ogt float %6138, 0.000000e+00
  br i1 %6146, label %6147, label %6168, !dx.controlflow.hints !84

; <label>:6147                                    ; preds = %6130
  %6148 = fadd fast float %6137, 1.000000e+00
  %6149 = call float @dx.op.unary.f32(i32 22, float %6111)  ; Frc(value)
  %6150 = call float @dx.op.unary.f32(i32 22, float %6112)  ; Frc(value)
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6149, float %6150, float %6148, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.ResRet.f32 %6151, 3
  %6156 = fsub fast float %6152, %6142
  %6157 = fsub fast float %6153, %6143
  %6158 = fsub fast float %6154, %6144
  %6159 = fsub fast float %6155, %6145
  %6160 = fmul fast float %6156, %6138
  %6161 = fmul fast float %6157, %6138
  %6162 = fmul fast float %6158, %6138
  %6163 = fmul fast float %6159, %6138
  %6164 = fadd fast float %6160, %6142
  %6165 = fadd fast float %6161, %6143
  %6166 = fadd fast float %6162, %6144
  %6167 = fadd fast float %6163, %6145
  br label %6168

; <label>:6168                                    ; preds = %6147, %6130
  %6169 = phi float [ %6164, %6147 ], [ %6142, %6130 ]
  %6170 = phi float [ %6165, %6147 ], [ %6143, %6130 ]
  %6171 = phi float [ %6166, %6147 ], [ %6144, %6130 ]
  %6172 = phi float [ %6167, %6147 ], [ %6145, %6130 ]
  %6173 = fadd fast float %6169, -5.000000e-01
  %6174 = fadd fast float %6171, -5.000000e-01
  %6175 = fmul fast float %6173, 0xBFD5555560000000
  %6176 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6174, float %6175)  ; FMad(a,b,c)
  %6177 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6170, float 0.000000e+00)  ; FMad(a,b,c)
  %6178 = fadd fast float %6177, %6172
  %6179 = fmul fast float %6173, -7.500000e-01
  %6180 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6174, float %6179)  ; FMad(a,b,c)
  %6181 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6170, float 0.000000e+00)  ; FMad(a,b,c)
  %6182 = fadd fast float %6181, %6172
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6189 = extractvalue %dx.types.CBufRet.f32 %6185, 3
  %6190 = fsub fast float %6186, %6176
  %6191 = fsub fast float %6187, %6178
  %6192 = fsub fast float %6188, %6180
  %6193 = fsub fast float %6189, %6182
  %6194 = fmul fast float %6190, %6184
  %6195 = fmul fast float %6191, %6184
  %6196 = fmul fast float %6192, %6184
  %6197 = fmul fast float %6193, %6184
  %6198 = fadd fast float %6194, %6176
  %6199 = fadd fast float %6195, %6178
  %6200 = fadd fast float %6196, %6180
  %6201 = fadd fast float %6197, %6182
  %6202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.i32 %6202, 0
  %6204 = and i32 %6203, 536870911
  %6205 = uitofp i32 %6204 to float
  %6206 = fmul fast float %6205, %6052
  %6207 = fmul fast float %6205, %6056
  %6208 = fptoui float %6206 to i32
  %6209 = fptoui float %6207 to i32
  %6210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6211 = extractvalue %dx.types.ResRet.i32 %6210, 0
  %6212 = and i32 %6211, 31
  %6213 = lshr i32 %6208, %6212
  %6214 = lshr i32 %6209, %6212
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = and i32 %6216, 31
  %6218 = shl i32 1, %6217
  %6219 = call i32 @dx.op.binary.i32(i32 40, i32 %6218, i32 4)  ; UMin(a,b)
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.i32 %6220, 1
  %6223 = icmp eq i32 %6219, 0
  br i1 %6223, label %6265, label %6224

; <label>:6224                                    ; preds = %6168
  br label %6225

; <label>:6225                                    ; preds = %6253, %6224
  %6226 = phi i32 [ %6256, %6253 ], [ 0, %6224 ]
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = lshr i32 %6228, 16
  %6230 = and i32 %6229, 31
  %6231 = shl i32 %6214, %6230
  %6232 = add i32 %6231, %6213
  %6233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.i32 %6233, 0
  %6235 = and i32 %6234, 31
  %6236 = shl i32 %6232, %6235
  %6237 = add i32 %6236, %6226
  %6238 = shl i32 %6237, 2
  %6239 = add i32 %6238, 32
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = icmp slt i32 %6241, 0
  %6243 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6226
  %6244 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6226
  %6245 = bitcast float* %6243 to i32*
  %6246 = bitcast float* %6244 to i32*
  br i1 %6242, label %6247, label %6253

; <label>:6247                                    ; preds = %6225
  %6248 = and i32 %6241, 1073741823
  %6249 = add nuw nsw i32 %6248, 20
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.i32 %6250, 1
  br label %6253

; <label>:6253                                    ; preds = %6247, %6225
  %6254 = phi i32 [ %6251, %6247 ], [ %6221, %6225 ]
  %6255 = phi i32 [ %6252, %6247 ], [ %6222, %6225 ]
  store i32 %6254, i32* %6245, align 4
  store i32 %6255, i32* %6246, align 4
  %6256 = add nuw i32 %6226, 1
  %6257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.i32 %6257, 2
  %6259 = icmp eq i32 %6258, 0
  %6260 = icmp ugt i32 %6241, -1073741825
  %6261 = and i1 %6260, %6259
  %6262 = icmp ult i32 %6256, %6219
  %6263 = and i1 %6261, %6262
  br i1 %6263, label %6225, label %6264

; <label>:6264                                    ; preds = %6253
  br label %6265

; <label>:6265                                    ; preds = %6264, %6168
  %6266 = phi i32 [ 0, %6168 ], [ %6256, %6264 ]
  %6267 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6268 = fptoui float %6267 to i32
  %6269 = icmp eq i32 %6268, 0
  br i1 %6269, label %6321, label %6270

; <label>:6270                                    ; preds = %6265
  br label %6271

; <label>:6271                                    ; preds = %6316, %6270
  %6272 = phi i32 [ %6317, %6316 ], [ %6266, %6270 ]
  %6273 = phi i32 [ %6318, %6316 ], [ 0, %6270 ]
  %6274 = lshr i32 %6273, 2
  %6275 = and i32 %6273, 3
  %6276 = add nuw nsw i32 %6274, 83
  %6277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6276)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.i32 %6277, 0
  %6279 = extractvalue %dx.types.CBufRet.i32 %6277, 1
  %6280 = extractvalue %dx.types.CBufRet.i32 %6277, 2
  %6281 = extractvalue %dx.types.CBufRet.i32 %6277, 3
  %6282 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6278, i32* %6282, align 4
  %6283 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6279, i32* %6283, align 4
  %6284 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6280, i32* %6284, align 4
  %6285 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6281, i32* %6285, align 4
  %6286 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6275
  %6287 = load i32, i32* %6286, align 4, !tbaa !85, !noalias !89
  %6288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6289 = extractvalue %dx.types.ResRet.i32 %6288, 0
  %6290 = lshr i32 %6289, 16
  %6291 = and i32 %6290, 31
  %6292 = shl i32 %6214, %6291
  %6293 = add i32 %6292, %6213
  %6294 = shl i32 %6293, 2
  %6295 = add i32 %6294, %6287
  %6296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6297 = extractvalue %dx.types.ResRet.i32 %6296, 0
  %6298 = icmp eq i32 %6297, 0
  br i1 %6298, label %6316, label %6299

; <label>:6299                                    ; preds = %6271
  %6300 = icmp slt i32 %6297, 0
  %6301 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6272
  %6302 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6272
  %6303 = bitcast float* %6301 to i32*
  %6304 = bitcast float* %6302 to i32*
  br i1 %6300, label %6305, label %6312

; <label>:6305                                    ; preds = %6299
  %6306 = and i32 %6297, 1073741823
  %6307 = add i32 %6287, 20
  %6308 = add i32 %6307, %6306
  %6309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.i32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.i32 %6309, 1
  br label %6312

; <label>:6312                                    ; preds = %6305, %6299
  %6313 = phi i32 [ %6310, %6305 ], [ %6221, %6299 ]
  %6314 = phi i32 [ %6311, %6305 ], [ %6222, %6299 ]
  store i32 %6313, i32* %6303, align 4
  store i32 %6314, i32* %6304, align 4
  %6315 = add i32 %6272, 1
  br label %6316

; <label>:6316                                    ; preds = %6312, %6271
  %6317 = phi i32 [ %6272, %6271 ], [ %6315, %6312 ]
  %6318 = add nuw i32 %6273, 1
  %6319 = icmp eq i32 %6318, %6268
  br i1 %6319, label %6320, label %6271

; <label>:6320                                    ; preds = %6316
  br label %6321

; <label>:6321                                    ; preds = %6320, %6265
  %6322 = phi i32 [ %6266, %6265 ], [ %6317, %6320 ]
  %6323 = icmp eq i32 %6322, 1
  %6324 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6325 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6323, label %6326, label %6329

; <label>:6326                                    ; preds = %6321
  %6327 = load float, float* %6324, align 4
  %6328 = load float, float* %6325, align 4
  br label %6356

; <label>:6329                                    ; preds = %6321
  %6330 = load float, float* %6324, align 4
  %6331 = load float, float* %6325, align 4
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fsub fast float %6330, %6332
  %6334 = icmp ugt i32 %6322, 1
  br i1 %6334, label %6335, label %6351

; <label>:6335                                    ; preds = %6329
  br label %6336

; <label>:6336                                    ; preds = %6336, %6335
  %6337 = phi float [ %6346, %6336 ], [ %6333, %6335 ]
  %6338 = phi float [ %6347, %6336 ], [ %6330, %6335 ]
  %6339 = phi i32 [ %6348, %6336 ], [ 1, %6335 ]
  %6340 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6339
  %6341 = load float, float* %6340, align 4
  %6342 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6339
  %6343 = load float, float* %6342, align 4
  %6344 = fdiv fast float 1.000000e+00, %6343
  %6345 = fsub fast float %6341, %6344
  %6346 = call float @dx.op.binary.f32(i32 36, float %6337, float %6345)  ; FMin(a,b)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6338, float %6341)  ; FMax(a,b)
  %6348 = add nuw i32 %6339, 1
  %6349 = icmp eq i32 %6348, %6322
  br i1 %6349, label %6350, label %6336

; <label>:6350                                    ; preds = %6336
  br label %6351

; <label>:6351                                    ; preds = %6350, %6329
  %6352 = phi float [ %6333, %6329 ], [ %6346, %6350 ]
  %6353 = phi float [ %6330, %6329 ], [ %6347, %6350 ]
  %6354 = fsub fast float %6353, %6352
  %6355 = fdiv fast float 1.000000e+00, %6354
  br label %6356

; <label>:6356                                    ; preds = %6351, %6326
  %6357 = phi float [ %6327, %6326 ], [ %6353, %6351 ]
  %6358 = phi float [ %6328, %6326 ], [ %6355, %6351 ]
  %6359 = fadd fast float %6060, %6357
  %6360 = fmul fast float %6359, %6358
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6198, %6198
  %6365 = fsub fast float %6199, %6364
  %6366 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6365)  ; FMax(a,b)
  %6367 = fdiv fast float 1.000000e+00, %6366
  %6368 = fmul fast float %6199, %6198
  %6369 = fsub fast float %6200, %6368
  %6370 = fsub fast float %6363, %6198
  %6371 = fmul fast float %6363, %6363
  %6372 = fsub fast float %6371, %6199
  %6373 = fmul fast float %6367, %6369
  %6374 = fmul fast float %6373, %6370
  %6375 = fsub fast float %6372, %6374
  %6376 = fmul fast float %6199, %6199
  %6377 = fsub fast float %6201, %6376
  %6378 = fmul fast float %6369, %6369
  %6379 = fmul fast float %6378, %6367
  %6380 = fsub fast float %6377, %6379
  %6381 = fdiv fast float %6375, %6380
  %6382 = fmul fast float %6381, %6369
  %6383 = fsub fast float %6370, %6382
  %6384 = fmul fast float %6383, %6367
  %6385 = fmul fast float %6384, %6198
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6381, %6199
  %6388 = fsub fast float %6386, %6387
  %6389 = fmul fast float %6384, %6384
  %6390 = fmul fast float %6381, 4.000000e+00
  %6391 = fmul fast float %6390, %6388
  %6392 = fsub fast float %6389, %6391
  %6393 = call float @dx.op.unary.f32(i32 24, float %6392)  ; Sqrt(value)
  %6394 = fcmp fast oge float %6384, 0.000000e+00
  %6395 = fsub fast float -0.000000e+00, %6393
  %6396 = select i1 %6394, float %6395, float %6393
  %6397 = fsub fast float %6396, %6384
  %6398 = fdiv fast float %6397, %6381
  %6399 = fdiv fast float %6388, %6397
  %6400 = fmul fast float %6398, 5.000000e-01
  %6401 = fmul fast float %6399, 2.000000e+00
  %6402 = select i1 %6394, float %6400, float %6401
  %6403 = select i1 %6394, float %6401, float %6400
  %6404 = call float @dx.op.binary.f32(i32 35, float %6402, float %6403)  ; FMax(a,b)
  %6405 = call float @dx.op.binary.f32(i32 36, float %6402, float %6403)  ; FMin(a,b)
  %6406 = fcmp fast ogt float %6363, %6404
  %6407 = fsub fast float %6363, %6405
  %6408 = fsub fast float %6363, %6404
  %6409 = fsub fast float %6404, %6405
  %6410 = select i1 %6406, float %6408, float %6409
  %6411 = fmul float %6407, %6410
  %6412 = select i1 %6406, float %6405, float %6363
  %6413 = fcmp fast ogt float %6363, %6405
  %6414 = fmul fast float %6412, %6404
  %6415 = fadd fast float %6412, %6404
  %6416 = fmul fast float %6415, %6198
  %6417 = fadd fast float %6414, %6199
  %6418 = fsub fast float %6417, %6416
  %6419 = fdiv fast float %6418, %6411
  %6420 = select i1 %6413, float %6419, float 0.000000e+00
  %6421 = fsub fast float 1.000000e+00, %6420
  %6422 = select i1 %6406, float %6421, float %6420
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6425 = fmul fast float %6424, %6423
  %6426 = fsub fast float 1.000000e+00, %6425
  br label %6427

; <label>:6427                                    ; preds = %6356, %6068, %6033, %6029, %5995
  %6428 = phi float [ 1.000000e+00, %5995 ], [ %6426, %6356 ], [ 1.000000e+00, %6033 ], [ 1.000000e+00, %6068 ], [ 1.000000e+00, %6029 ]
  %6429 = fcmp fast ogt float %6025, 0.000000e+00
  br i1 %6429, label %6430, label %6436, !dx.controlflow.hints !98

; <label>:6430                                    ; preds = %6427
  %6431 = fadd fast float %5938, %5912
  %6432 = call float @dx.op.binary.f32(i32 35, float %6431, float 0.000000e+00)  ; FMax(a,b)
  %6433 = fadd fast float %6432, 0x3F10000000000000
  %6434 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5927, float %5928, float undef, float undef, i32 0, i32 0, i32 undef, float %6433)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6435 = extractvalue %dx.types.ResRet.f32 %6434, 0
  br label %6436

; <label>:6436                                    ; preds = %6430, %6427
  %6437 = phi float [ %6435, %6430 ], [ 1.000000e+00, %6427 ]
  %6438 = fcmp fast ogt float %6023, 0.000000e+00
  br i1 %6438, label %6439, label %6445, !dx.controlflow.hints !99

; <label>:6439                                    ; preds = %6436
  %6440 = fadd fast float %5968, %5912
  %6441 = call float @dx.op.binary.f32(i32 35, float %6440, float 0.000000e+00)  ; FMax(a,b)
  %6442 = fadd fast float %6441, 0x3F10000000000000
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5919, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float %6442)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  br label %6445

; <label>:6445                                    ; preds = %6439, %6436
  %6446 = phi float [ %6444, %6439 ], [ 1.000000e+00, %6436 ]
  %6447 = fcmp fast ogt float %6022, 0.000000e+00
  br i1 %6447, label %6448, label %6455, !dx.controlflow.hints !100

; <label>:6448                                    ; preds = %6445
  %6449 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %6450 = fadd fast float %6449, %5912
  %6451 = call float @dx.op.binary.f32(i32 35, float %6450, float 0.000000e+00)  ; FMax(a,b)
  %6452 = fadd fast float %6451, 0x3F10000000000000
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5904, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float %6452)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  br label %6455

; <label>:6455                                    ; preds = %6448, %6445
  %6456 = phi float [ %6454, %6448 ], [ 1.000000e+00, %6445 ]
  %6457 = fsub fast float %6437, %6428
  %6458 = fmul fast float %6457, %5966
  %6459 = fadd fast float %6458, %6428
  %6460 = fsub fast float %6446, %6459
  %6461 = fmul fast float %6460, %5996
  %6462 = fadd fast float %6461, %6459
  %6463 = fsub fast float %6456, %6462
  %6464 = fmul fast float %6463, %6022
  %6465 = fadd fast float %6464, %6462
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6468 = fcmp fast ogt float %6467, 0.000000e+00
  br i1 %6468, label %6469, label %6509, !dx.controlflow.hints !101

; <label>:6469                                    ; preds = %6455
  %6470 = fcmp fast ugt float %6467, 0.000000e+00
  br i1 %6470, label %6471, label %6506

; <label>:6471                                    ; preds = %6469
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6476 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6481 = extractvalue %dx.types.CBufRet.f32 %6477, 3
  %6482 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6483 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = fadd fast float %6485, %5881
  %6489 = fadd fast float %6486, %5882
  %6490 = fadd fast float %6487, %5883
  %6491 = fmul fast float %6488, %6473
  %6492 = call float @dx.op.tertiary.f32(i32 46, float %6474, float %6489, float %6491)  ; FMad(a,b,c)
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %6475, float %6490, float %6492)  ; FMad(a,b,c)
  %6494 = fadd fast float %6493, %6476
  %6495 = fmul fast float %6488, %6478
  %6496 = call float @dx.op.tertiary.f32(i32 46, float %6479, float %6489, float %6495)  ; FMad(a,b,c)
  %6497 = call float @dx.op.tertiary.f32(i32 46, float %6480, float %6490, float %6496)  ; FMad(a,b,c)
  %6498 = fadd fast float %6497, %6481
  %6499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6494, float %6498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = fmul fast float %6500, %6483
  %6502 = fadd fast float %6501, %6482
  %6503 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6504 = fmul fast float %6503, %6467
  %6505 = fsub fast float 1.000000e+00, %6504
  br label %6506

; <label>:6506                                    ; preds = %6471, %6469
  %6507 = phi float [ %6505, %6471 ], [ 1.000000e+00, %6469 ]
  %6508 = fmul fast float %6507, %6465
  br label %6509

; <label>:6509                                    ; preds = %6506, %6455, %5861
  %6510 = phi float [ 1.000000e+00, %5861 ], [ %6508, %6506 ], [ %6465, %6455 ]
  %6511 = call float @dx.op.binary.f32(i32 36, float %6510, float %6510)  ; FMin(a,b)
  %6512 = call float @dx.op.binary.f32(i32 36, float %6510, float %6511)  ; FMin(a,b)
  %6513 = fcmp fast ogt float %6512, 0.000000e+00
  br i1 %6513, label %6514, label %6675, !dx.controlflow.hints !102

; <label>:6514                                    ; preds = %6509
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.CBufRet.f32 %6525, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6525, 3
  %6530 = fmul fast float %6516, %5881
  %6531 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6517, float %6530)  ; FMad(a,b,c)
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6518, float %6531)  ; FMad(a,b,c)
  %6533 = fadd fast float %6532, %6519
  %6534 = fmul fast float %6521, %5881
  %6535 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6522, float %6534)  ; FMad(a,b,c)
  %6536 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6523, float %6535)  ; FMad(a,b,c)
  %6537 = fadd fast float %6536, %6524
  %6538 = fmul fast float %6526, %5881
  %6539 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6527, float %6538)  ; FMad(a,b,c)
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6528, float %6539)  ; FMad(a,b,c)
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6545 = fmul fast float %6544, %6533
  %6546 = fmul fast float %6544, %6537
  %6547 = fadd fast float %6545, %6542
  %6548 = fadd fast float %6546, %6543
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6552 = fsub fast float %6547, %6550
  %6553 = fsub fast float %6548, %6551
  %6554 = fcmp fast olt float %6552, 0.000000e+00
  %6555 = fcmp fast olt float %6553, 0.000000e+00
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6561 = select i1 %6554, float %6557, float %6559
  %6562 = select i1 %6555, float %6558, float %6560
  %6563 = fmul fast float %6561, %6552
  %6564 = fmul fast float %6562, %6553
  %6565 = call float @dx.op.unary.f32(i32 6, float %6563)  ; FAbs(value)
  %6566 = call float @dx.op.unary.f32(i32 6, float %6564)  ; FAbs(value)
  %6567 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %6568 = call float @dx.op.binary.f32(i32 35, float %6565, float %6566)  ; FMax(a,b)
  %6569 = fsub fast float %6567, %6568
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = fcmp fast ogt float %6570, 0.000000e+00
  br i1 %6571, label %6572, label %6613, !dx.controlflow.hints !103

; <label>:6572                                    ; preds = %6514
  %6573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6547, float %6548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6574 = extractvalue %dx.types.ResRet.f32 %6573, 1
  %6575 = fcmp fast ogt float %6574, 0.000000e+00
  br i1 %6575, label %6576, label %6608

; <label>:6576                                    ; preds = %6572
  %6577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6547, float %6548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = extractvalue %dx.types.ResRet.f32 %6577, 1
  %6580 = extractvalue %dx.types.ResRet.f32 %6577, 2
  %6581 = extractvalue %dx.types.ResRet.f32 %6577, 3
  %6582 = fsub fast float 1.000000e+00, %6529
  %6583 = fsub fast float %6582, %6540
  %6584 = fmul fast float %6583, 0x400921FB60000000
  %6585 = fadd fast float %6584, 0x3FF921FB60000000
  %6586 = call float @dx.op.unary.f32(i32 13, float %6585)  ; Sin(value)
  %6587 = fadd fast float %6586, -1.000000e+00
  %6588 = fmul fast float %6587, 0x3FD45F3060000000
  %6589 = fmul fast float %6583, 0x401921FB60000000
  %6590 = fadd fast float %6589, 0x400921FB60000000
  %6591 = call float @dx.op.unary.f32(i32 13, float %6590)  ; Sin(value)
  %6592 = fadd fast float %6591, 0x3E7777A5C0000000
  %6593 = fmul fast float %6592, 0x3FC45F3060000000
  %6594 = fmul fast float %6583, 0x4022D97C80000000
  %6595 = fadd fast float %6594, 0x4012D97C80000000
  %6596 = call float @dx.op.unary.f32(i32 13, float %6595)  ; Sin(value)
  %6597 = fadd fast float %6596, 1.000000e+00
  %6598 = fmul fast float %6597, 0x3FBB2995E0000000
  %6599 = fmul fast float %6583, 0x402921FB60000000
  %6600 = fadd fast float %6599, 0x401921FB60000000
  %6601 = call float @dx.op.unary.f32(i32 13, float %6600)  ; Sin(value)
  %6602 = fadd fast float %6601, 0xBE8777A5C0000000
  %6603 = fmul fast float %6602, 0x3FB45F3060000000
  %6604 = call float @dx.op.dot4.f32(i32 56, float %6578, float %6579, float %6580, float %6581, float %6588, float %6593, float %6598, float %6603)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6605 = fmul fast float %6604, 0xBFF7154760000000
  %6606 = call float @dx.op.unary.f32(i32 21, float %6605)  ; Exp(value)
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  br label %6608

; <label>:6608                                    ; preds = %6576, %6572
  %6609 = phi float [ %6607, %6576 ], [ 1.000000e+00, %6572 ]
  %6610 = fadd fast float %6609, -1.000000e+00
  %6611 = fmul fast float %6610, %6570
  %6612 = fadd fast float %6611, 1.000000e+00
  br label %6613

; <label>:6613                                    ; preds = %6608, %6514
  %6614 = phi float [ %6612, %6608 ], [ 1.000000e+00, %6514 ]
  %6615 = fmul fast float %6614, %6510
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6619 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6620 = fadd fast float %6617, %142
  %6621 = fadd fast float %6618, %143
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6624 = fsub fast float -0.000000e+00, %6620
  %6625 = fsub fast float -0.000000e+00, %6621
  %6626 = fsub fast float -0.000000e+00, %144
  %6627 = fsub fast float %6626, %6619
  %6628 = fadd fast float %6627, %6623
  %6629 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6624, float %6625, float %6628)  ; Dot3(ax,ay,az,bx,by,bz)
  %6630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5862, float %5863, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = fdiv fast float 1.000000e+00, %6630
  %6632 = fmul fast float %6631, %6629
  %6633 = fmul fast float %5862, %6632
  %6634 = fmul fast float %5863, %6632
  %6635 = fadd fast float %6633, %6620
  %6636 = fadd fast float %6634, %6621
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.CBufRet.f32 %6637, 1
  %6640 = fsub fast float %6635, %6638
  %6641 = fsub fast float %6636, %6639
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6644 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6645 = fmul fast float %6640, %6643
  %6646 = fmul fast float %6641, %6644
  %6647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.i32 %6647, 3
  %6649 = icmp eq i32 %6648, 0
  br i1 %6649, label %6655, label %6650

; <label>:6650                                    ; preds = %6613
  %6651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6645, float %6646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6652 = extractvalue %dx.types.ResRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.ResRet.f32 %6651, 1
  %6654 = extractvalue %dx.types.ResRet.f32 %6651, 2
  br label %6660

; <label>:6655                                    ; preds = %6613
  %6656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6645, float %6646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.ResRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.ResRet.f32 %6656, 2
  br label %6660

; <label>:6660                                    ; preds = %6655, %6650
  %6661 = phi float [ %6652, %6650 ], [ %6657, %6655 ]
  %6662 = phi float [ %6653, %6650 ], [ %6658, %6655 ]
  %6663 = phi float [ %6654, %6650 ], [ %6659, %6655 ]
  %6664 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6665 = fmul fast float %6664, %6661
  %6666 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6667 = fsub fast float %6632, %6666
  %6668 = fsub fast float %6667, %6665
  %6669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6668)  ; FMax(a,b)
  %6670 = fmul fast float %6669, %6662
  %6671 = call float @dx.op.binary.f32(i32 36, float %6663, float %6670)  ; FMin(a,b)
  %6672 = fmul fast float %6671, 0xBFF7154760000000
  %6673 = call float @dx.op.unary.f32(i32 21, float %6672)  ; Exp(value)
  %6674 = fmul fast float %6615, %6673
  br label %6675

; <label>:6675                                    ; preds = %6660, %6509
  %6676 = phi float [ %6674, %6660 ], [ %6510, %6509 ]
  %6677 = call float @dx.op.binary.f32(i32 36, float %6676, float %6676)  ; FMin(a,b)
  %6678 = call float @dx.op.binary.f32(i32 36, float %6676, float %6677)  ; FMin(a,b)
  %6679 = fcmp fast ogt float %6678, 0.000000e+00
  br i1 %6679, label %6680, label %6990, !dx.controlflow.hints !104

; <label>:6680                                    ; preds = %6675
  %6681 = fmul fast float %6676, %5873
  %6682 = fmul fast float %6676, %5874
  %6683 = fmul fast float %6676, %5875
  %6684 = fsub fast float %5862, %162
  %6685 = fsub fast float %5863, %163
  %6686 = fsub fast float %5864, %164
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float %6684, float %6685, float %6686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.unary.f32(i32 25, float %6687)  ; Rsqrt(value)
  %6689 = fmul fast float %6688, %6684
  %6690 = fmul fast float %6688, %6685
  %6691 = fmul fast float %6688, %6686
  %6692 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5863, float %5864, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %6689, float %6690, float %6691)  ; Dot3(ax,ay,az,bx,by,bz)
  %6694 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6695 = fmul fast float %6694, %6694
  %6696 = fmul fast float %6695, %5447
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = fmul fast float %6697, %6694
  %6699 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %6689, float %6690, float %6691)  ; Dot3(ax,ay,az,bx,by,bz)
  %6700 = fmul fast float %6699, %6699
  %6701 = call float @dx.op.unary.f32(i32 6, float %6692)  ; FAbs(value)
  %6702 = call float @dx.op.binary.f32(i32 35, float %5830, float 0x3F847AE140000000)  ; FMax(a,b)
  %6703 = fmul fast float %6702, %6702
  %6704 = fmul fast float %6703, %6703
  %6705 = fsub fast float 1.000000e+00, %6704
  %6706 = fmul fast float %5434, %5434
  %6707 = fmul fast float %6706, %6705
  %6708 = fadd fast float %6707, %6704
  %6709 = bitcast float %6708 to i32
  %6710 = ashr i32 %6709, 1
  %6711 = add nsw i32 %6710, 532487669
  %6712 = bitcast i32 %6711 to float
  %6713 = fadd fast float %6712, %5434
  %6714 = fmul fast float %6704, %6700
  %6715 = fsub fast float 1.000000e+00, %6700
  %6716 = fadd fast float %6715, %6714
  %6717 = fmul fast float %6701, %6701
  %6718 = fmul fast float %6717, %6705
  %6719 = fadd fast float %6718, %6704
  %6720 = bitcast float %6719 to i32
  %6721 = ashr i32 %6720, 1
  %6722 = add nsw i32 %6721, 532487669
  %6723 = bitcast i32 %6722 to float
  %6724 = fadd fast float %6723, %6701
  %6725 = fmul fast float %6716, %6716
  %6726 = fmul fast float %6725, %6713
  %6727 = fmul fast float %6726, %6724
  %6728 = fdiv fast float 0x3FF0A00000000000, %6727
  %6729 = fmul fast float %6728, %6704
  %6730 = fmul fast float %5692, 0x3FF9999980000000
  %6731 = fsub fast float 5.000000e+00, %6730
  %6732 = call float @dx.op.unary.f32(i32 6, float %6693)  ; FAbs(value)
  %6733 = fsub fast float 1.000000e+00, %6732
  %6734 = fmul fast float %5692, 0x41D9660740000000
  %6735 = fadd fast float %6734, 0xC1EFBF8940000000
  %6736 = bitcast float %6733 to i32
  %6737 = sitofp i32 %6736 to float
  %6738 = fmul fast float %6737, %6731
  %6739 = fadd fast float %6735, %6738
  %6740 = fptosi float %6739 to i32
  %6741 = bitcast i32 %6740 to float
  %6742 = fsub fast float 1.000000e+00, %5427
  %6743 = fsub fast float 1.000000e+00, %5428
  %6744 = fsub fast float 1.000000e+00, %5432
  %6745 = fmul fast float %6741, %6742
  %6746 = fmul fast float %6741, %6743
  %6747 = fmul fast float %6741, %6744
  %6748 = fadd fast float %6745, %5427
  %6749 = fadd fast float %6746, %5428
  %6750 = fadd fast float %6747, %5432
  br i1 %5715, label %6751, label %6774

; <label>:6751                                    ; preds = %6680
  %6752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5077, float %6732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.ResRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.ResRet.f32 %6752, 2
  %6756 = fadd fast float %6753, -5.000000e-01
  %6757 = fadd fast float %6754, -5.000000e-01
  %6758 = fadd fast float %6755, -5.000000e-01
  %6759 = fmul fast float %5427, 4.000000e+00
  %6760 = fmul fast float %6759, %6742
  %6761 = fmul fast float %6760, %6756
  %6762 = fmul fast float %5428, 4.000000e+00
  %6763 = fmul fast float %6762, %6743
  %6764 = fmul fast float %6763, %6757
  %6765 = fmul fast float %5432, 4.000000e+00
  %6766 = fmul fast float %6765, %6744
  %6767 = fmul fast float %6766, %6758
  %6768 = fadd fast float %6761, %6748
  %6769 = fadd fast float %6764, %6749
  %6770 = fadd fast float %6767, %6750
  %6771 = call float @dx.op.unary.f32(i32 7, float %6768)  ; Saturate(value)
  %6772 = call float @dx.op.unary.f32(i32 7, float %6769)  ; Saturate(value)
  %6773 = call float @dx.op.unary.f32(i32 7, float %6770)  ; Saturate(value)
  br label %6774

; <label>:6774                                    ; preds = %6751, %6680
  %6775 = phi float [ %6771, %6751 ], [ %6748, %6680 ]
  %6776 = phi float [ %6772, %6751 ], [ %6749, %6680 ]
  %6777 = phi float [ %6773, %6751 ], [ %6750, %6680 ]
  %6778 = fmul fast float %6692, 9.843750e-01
  %6779 = fadd fast float %6778, 7.812500e-03
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6779, float %5696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.ResRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.ResRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.ResRet.f32 %6780, 3
  %6785 = fsub fast float %6783, %6781
  %6786 = fsub fast float %6784, %6782
  %6787 = fmul fast float %6785, %5702
  %6788 = fmul fast float %6786, %5702
  %6789 = fadd fast float %6787, %6781
  %6790 = fadd fast float %6788, %6782
  %6791 = fmul fast float %6789, %5427
  %6792 = fmul fast float %6789, %5428
  %6793 = fmul fast float %6789, %5432
  %6794 = fadd fast float %6791, %6790
  %6795 = fadd fast float %6792, %6790
  %6796 = fadd fast float %6793, %6790
  br i1 %5715, label %6797, label %6820

; <label>:6797                                    ; preds = %6774
  %6798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5077, float %6692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.ResRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.ResRet.f32 %6798, 2
  %6802 = fadd fast float %6799, -5.000000e-01
  %6803 = fadd fast float %6800, -5.000000e-01
  %6804 = fadd fast float %6801, -5.000000e-01
  %6805 = fmul fast float %5427, 4.000000e+00
  %6806 = fmul fast float %6805, %6742
  %6807 = fmul fast float %6806, %6802
  %6808 = fmul fast float %5428, 4.000000e+00
  %6809 = fmul fast float %6808, %6743
  %6810 = fmul fast float %6809, %6803
  %6811 = fmul fast float %5432, 4.000000e+00
  %6812 = fmul fast float %6811, %6744
  %6813 = fmul fast float %6812, %6804
  %6814 = fadd fast float %6807, %6794
  %6815 = fadd fast float %6810, %6795
  %6816 = fadd fast float %6813, %6796
  %6817 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6818 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6819 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  br label %6820

; <label>:6820                                    ; preds = %6797, %6774
  %6821 = phi float [ %6817, %6797 ], [ %6794, %6774 ]
  %6822 = phi float [ %6818, %6797 ], [ %6795, %6774 ]
  %6823 = phi float [ %6819, %6797 ], [ %6796, %6774 ]
  %6824 = call float @dx.op.binary.f32(i32 35, float %6822, float %6823)  ; FMax(a,b)
  %6825 = call float @dx.op.binary.f32(i32 35, float %6821, float %6824)  ; FMax(a,b)
  %6826 = fsub fast float 1.000000e+00, %6825
  %6827 = call float @dx.op.binary.f32(i32 35, float %6701, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6828 = fdiv fast float %4425, %6827
  %6829 = fmul fast float %5770, %6828
  %6830 = fmul fast float %5772, %6828
  %6831 = fmul fast float %5774, %6828
  %6832 = call float @dx.op.unary.f32(i32 21, float %6829)  ; Exp(value)
  %6833 = call float @dx.op.unary.f32(i32 21, float %6830)  ; Exp(value)
  %6834 = call float @dx.op.unary.f32(i32 21, float %6831)  ; Exp(value)
  %6835 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6836 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6837 = call float @dx.op.unary.f32(i32 7, float %6834)  ; Saturate(value)
  %6838 = select i1 %5767, float %6835, float 0.000000e+00
  %6839 = select i1 %5768, float %6836, float 0.000000e+00
  %6840 = select i1 %5769, float %6837, float 0.000000e+00
  %6841 = fsub fast float -0.000000e+00, %5424
  %6842 = fsub fast float -0.000000e+00, %5425
  %6843 = fsub fast float -0.000000e+00, %5426
  %6844 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5863, float %5864, float %6841, float %6842, float %6843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = fmul fast float %6845, 9.843750e-01
  %6847 = fadd fast float %6846, 7.812500e-03
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6847, float %5696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.ResRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.ResRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.ResRet.f32 %6848, 3
  %6853 = fsub fast float %6851, %6849
  %6854 = fsub fast float %6852, %6850
  %6855 = fmul fast float %6853, %5702
  %6856 = fmul fast float %6854, %5702
  %6857 = fadd fast float %6855, %6849
  %6858 = fadd fast float %6856, %6850
  %6859 = fmul fast float %6857, %5427
  %6860 = fmul fast float %6857, %5428
  %6861 = fmul fast float %6857, %5432
  %6862 = fadd fast float %6859, %6858
  %6863 = fadd fast float %6860, %6858
  %6864 = fadd fast float %6861, %6858
  br i1 %5715, label %6865, label %6888

; <label>:6865                                    ; preds = %6820
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5077, float %6845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  %6870 = fadd fast float %6867, -5.000000e-01
  %6871 = fadd fast float %6868, -5.000000e-01
  %6872 = fadd fast float %6869, -5.000000e-01
  %6873 = fmul fast float %5427, 4.000000e+00
  %6874 = fmul fast float %6873, %6742
  %6875 = fmul fast float %6874, %6870
  %6876 = fmul fast float %5428, 4.000000e+00
  %6877 = fmul fast float %6876, %6743
  %6878 = fmul fast float %6877, %6871
  %6879 = fmul fast float %5432, 4.000000e+00
  %6880 = fmul fast float %6879, %6744
  %6881 = fmul fast float %6880, %6872
  %6882 = fadd fast float %6875, %6862
  %6883 = fadd fast float %6878, %6863
  %6884 = fadd fast float %6881, %6864
  %6885 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6886 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6887 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  br label %6888

; <label>:6888                                    ; preds = %6865, %6820
  %6889 = phi float [ %6885, %6865 ], [ %6862, %6820 ]
  %6890 = phi float [ %6886, %6865 ], [ %6863, %6820 ]
  %6891 = phi float [ %6887, %6865 ], [ %6864, %6820 ]
  %6892 = call float @dx.op.binary.f32(i32 35, float %6890, float %6891)  ; FMax(a,b)
  %6893 = call float @dx.op.binary.f32(i32 35, float %6889, float %6892)  ; FMax(a,b)
  %6894 = fsub fast float 1.000000e+00, %6893
  %6895 = fmul fast float %5830, %5835
  %6896 = fadd fast float %5837, %6895
  %6897 = call float @dx.op.unary.f32(i32 7, float %6896)  ; Saturate(value)
  %6898 = fsub fast float %5862, %5440
  %6899 = fsub fast float %5863, %5441
  %6900 = fsub fast float %5864, %5442
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6898, float %6899, float %6900, float %6898, float %6899, float %6900)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = call float @dx.op.unary.f32(i32 25, float %6901)  ; Rsqrt(value)
  %6903 = fmul fast float %6902, %6898
  %6904 = fmul fast float %6902, %6899
  %6905 = fmul fast float %6902, %6900
  %6906 = call float @dx.op.dot3.f32(i32 55, float %6841, float %6842, float %6843, float %6903, float %6904, float %6905)  ; Dot3(ax,ay,az,bx,by,bz)
  %6907 = fmul fast float %6906, %6906
  %6908 = call float @dx.op.unary.f32(i32 6, float %6845)  ; FAbs(value)
  %6909 = call float @dx.op.binary.f32(i32 35, float %6897, float 0x3F847AE140000000)  ; FMax(a,b)
  %6910 = fmul fast float %6909, %6909
  %6911 = fmul fast float %6910, %6910
  %6912 = fsub fast float 1.000000e+00, %6911
  %6913 = fmul fast float %6706, %6912
  %6914 = fadd fast float %6913, %6911
  %6915 = bitcast float %6914 to i32
  %6916 = ashr i32 %6915, 1
  %6917 = add nsw i32 %6916, 532487669
  %6918 = bitcast i32 %6917 to float
  %6919 = fadd fast float %6918, %5434
  %6920 = fmul fast float %6911, %6907
  %6921 = fsub fast float 1.000000e+00, %6907
  %6922 = fadd fast float %6921, %6920
  %6923 = fmul fast float %6908, %6908
  %6924 = fmul fast float %6923, %6912
  %6925 = fadd fast float %6924, %6911
  %6926 = bitcast float %6925 to i32
  %6927 = ashr i32 %6926, 1
  %6928 = add nsw i32 %6927, 532487669
  %6929 = bitcast i32 %6928 to float
  %6930 = fadd fast float %6929, %6908
  %6931 = fmul fast float %6922, %6922
  %6932 = fmul fast float %6931, %6919
  %6933 = fmul fast float %6932, %6930
  %6934 = fdiv fast float 0x3FF0A00000000000, %6933
  %6935 = fmul fast float %6934, %6911
  %6936 = fmul fast float %6845, %6838
  %6937 = fmul fast float %6845, %6839
  %6938 = fmul fast float %6845, %6840
  %6939 = fmul fast float %6936, %6894
  %6940 = fmul fast float %6939, %6935
  %6941 = fmul fast float %6937, %6894
  %6942 = fmul fast float %6941, %6935
  %6943 = fmul fast float %6938, %6894
  %6944 = fmul fast float %6943, %6935
  %6945 = fmul fast float %6775, %6729
  %6946 = fmul fast float %6776, %6729
  %6947 = fmul fast float %6777, %6729
  %6948 = fsub fast float 1.000000e+00, %6693
  %6949 = bitcast float %6948 to i32
  %6950 = sitofp i32 %6949 to float
  %6951 = fmul fast float %6950, 5.000000e+00
  %6952 = fadd fast float %6951, 0xC1EFBF8940000000
  %6953 = fptosi float %6952 to i32
  %6954 = bitcast i32 %6953 to float
  %6955 = fmul fast float %6954, %5078
  %6956 = fmul fast float %6826, %6955
  %6957 = fmul fast float %6956, %5762
  %6958 = fmul fast float %6956, %5763
  %6959 = fmul fast float %6956, %5764
  %6960 = fadd fast float %6957, %6945
  %6961 = fadd fast float %6958, %6946
  %6962 = fadd fast float %6959, %6947
  %6963 = fmul fast float %6960, %6698
  %6964 = fmul fast float %6961, %6698
  %6965 = fmul fast float %6962, %6698
  %6966 = fmul fast float %6698, %6681
  %6967 = fmul fast float %6966, %6826
  %6968 = fmul fast float %6698, %6682
  %6969 = fmul fast float %6968, %6826
  %6970 = fmul fast float %6698, %6683
  %6971 = fmul fast float %6970, %6826
  %6972 = fadd fast float %6963, %6940
  %6973 = fadd fast float %6964, %6942
  %6974 = fadd fast float %6965, %6944
  %6975 = fmul fast float %6972, %6681
  %6976 = fmul fast float %6973, %6682
  %6977 = fmul fast float %6974, %6683
  %6978 = fadd fast float %6967, %5852
  %6979 = fmul fast float %6978, %5103
  %6980 = fadd fast float %6969, %5854
  %6981 = fmul fast float %6980, %5103
  %6982 = fadd fast float %6971, %5856
  %6983 = fmul fast float %6982, %5103
  %6984 = fadd fast float %6975, %5815
  %6985 = fmul fast float %6984, %5103
  %6986 = fadd fast float %6976, %5818
  %6987 = fmul fast float %6986, %5103
  %6988 = fadd fast float %6977, %5821
  %6989 = fmul fast float %6988, %5103
  br label %6990

; <label>:6990                                    ; preds = %6888, %6675, %5742
  %6991 = phi float [ %5816, %5742 ], [ %5816, %6675 ], [ %6985, %6888 ]
  %6992 = phi float [ %5819, %5742 ], [ %5819, %6675 ], [ %6987, %6888 ]
  %6993 = phi float [ %5822, %5742 ], [ %5822, %6675 ], [ %6989, %6888 ]
  %6994 = phi float [ %5853, %5742 ], [ %5853, %6675 ], [ %6979, %6888 ]
  %6995 = phi float [ %5855, %5742 ], [ %5855, %6675 ], [ %6981, %6888 ]
  %6996 = phi float [ %5857, %5742 ], [ %5857, %6675 ], [ %6983, %6888 ]
  %6997 = fmul fast float %5103, %5791
  %6998 = fsub fast float -0.000000e+00, %6997
  %6999 = fmul fast float %5103, %5792
  %7000 = fsub fast float -0.000000e+00, %6999
  %7001 = fmul fast float %5103, %5793
  %7002 = fsub fast float -0.000000e+00, %7001
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = fmul fast float %7004, %5797
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 3
  %7008 = fsub fast float 1.000000e+00, %5081
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7010 = fadd fast float %6996, %5080
  %7011 = fmul fast float %7010, %5081
  %7012 = fmul fast float %7009, %7007
  %7013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %7014 = extractvalue %dx.types.ResRet.i32 %7013, 3
  %7015 = bitcast i32 %7014 to float
  %7016 = fsub fast float %6998, %7015
  %7017 = fsub fast float %7000, %7015
  %7018 = fsub fast float %7002, %7015
  %7019 = fmul fast float %7016, %176
  %7020 = fmul fast float %7017, %176
  %7021 = fmul fast float %7018, %176
  %7022 = fadd fast float %7019, %7015
  %7023 = fadd fast float %7020, %7015
  %7024 = fadd fast float %7021, %7015
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 3
  %7027 = fmul fast float %6994, %5421
  %7028 = fmul fast float %6995, %5422
  %7029 = fmul fast float %6996, %5423
  %7030 = fcmp fast ogt float %78, %196
  %7031 = and i1 %7030, %5171
  %7032 = or i1 %5250, %7031
  %7033 = icmp eq i32 %5170, 2
  %7034 = fcmp fast ole float %78, %196
  %7035 = and i1 %7034, %7033
  %7036 = or i1 %7035, %7032
  br i1 %7031, label %7037, label %7294

; <label>:7037                                    ; preds = %6990
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7041 = fmul fast float %7039, %87
  %7042 = fmul fast float %7040, %88
  %7043 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7044 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7045 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7043, float %7044, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7046 = extractvalue %dx.types.ResRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.ResRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.ResRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.ResRet.f32 %7045, 3
  %7050 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7043, float %7044, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7051 = extractvalue %dx.types.ResRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.ResRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.ResRet.f32 %7050, 2
  %7054 = extractvalue %dx.types.ResRet.f32 %7050, 3
  %7055 = call float @dx.op.binary.f32(i32 35, float %7047, float %7048)  ; FMax(a,b)
  %7056 = call float @dx.op.binary.f32(i32 35, float %7046, float %7055)  ; FMax(a,b)
  %7057 = call float @dx.op.binary.f32(i32 35, float %7056, float %7049)  ; FMax(a,b)
  %7058 = call float @dx.op.binary.f32(i32 36, float %7052, float %7053)  ; FMin(a,b)
  %7059 = call float @dx.op.binary.f32(i32 36, float %7051, float %7058)  ; FMin(a,b)
  %7060 = call float @dx.op.binary.f32(i32 36, float %7059, float %7054)  ; FMin(a,b)
  %7061 = fmul fast float %7057, 2.550000e+02
  %7062 = fadd fast float %7061, 0x3F70101020000000
  %7063 = fptoui float %7062 to i32
  %7064 = fmul fast float %7060, 2.550000e+02
  %7065 = fadd fast float %7064, 0x3F70101020000000
  %7066 = fptoui float %7065 to i32
  %7067 = icmp ult i32 %7063, %7066
  br i1 %7067, label %7068, label %7236

; <label>:7068                                    ; preds = %7037
  %7069 = fcmp fast ogt float %77, 9.843750e-01
  %7070 = fadd fast float %78, -4.000000e+00
  %7071 = select i1 %7069, float -4.000000e+00, float %7070
  %7072 = call float @dx.op.binary.f32(i32 35, float %7071, float 0.000000e+00)  ; FMax(a,b)
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = fadd fast float %7074, %7072
  %7076 = extractvalue %dx.types.CBufRet.f32 %7073, 2
  %7077 = fmul fast float %7075, %7076
  %7078 = call float @dx.op.unary.f32(i32 23, float %7077)  ; Log(value)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7073, 3
  %7080 = fmul fast float %7079, %7078
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 2
  %7083 = fmul fast float %7080, %7082
  %7084 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7085 = uitofp i32 %7063 to float
  %7086 = uitofp i32 %7066 to float
  %7087 = fadd fast float %7085, 5.000000e-01
  %7088 = fadd fast float %7086, 5.000000e-01
  %7089 = fmul fast float %7082, %7087
  %7090 = fmul fast float %7082, %7088
  %7091 = fadd fast float %7089, 0x3F0FFB4800000000
  %7092 = fadd fast float %7090, 0xBF0FFB4800000000
  %7093 = call float @dx.op.binary.f32(i32 35, float %7084, float %7091)  ; FMax(a,b)
  %7094 = call float @dx.op.binary.f32(i32 36, float %7093, float %7092)  ; FMin(a,b)
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7099 = fmul fast float %7096, %7094
  %7100 = fadd fast float %7098, %7099
  %7101 = fadd fast float %7098, %7097
  %7102 = fsub fast float %7096, %7097
  %7103 = fadd fast float %7102, %7098
  %7104 = call float @dx.op.binary.f32(i32 35, float %7100, float %7101)  ; FMax(a,b)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7104, float %7103)  ; FMin(a,b)
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7043, float %7044, float %7105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.ResRet.f32 %7106, 2
  %7110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7111 = extractvalue %dx.types.CBufRet.i32 %7110, 0
  %7112 = extractvalue %dx.types.CBufRet.i32 %7110, 1
  %7113 = uitofp i32 %7111 to float
  %7114 = uitofp i32 %7112 to float
  %7115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7116 = extractvalue %dx.types.CBufRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.CBufRet.f32 %7115, 1
  %7118 = fmul fast float %7113, %7043
  %7119 = fmul fast float %7114, %7044
  %7120 = fadd fast float %7118, -5.000000e-01
  %7121 = fadd fast float %7119, -5.000000e-01
  %7122 = call float @dx.op.unary.f32(i32 22, float %7120)  ; Frc(value)
  %7123 = call float @dx.op.unary.f32(i32 22, float %7121)  ; Frc(value)
  %7124 = fmul fast float %7122, %7122
  %7125 = fmul fast float %7124, %7122
  %7126 = fsub fast float 3.000000e+00, %7122
  %7127 = fmul fast float %7124, %7126
  %7128 = fmul fast float %7122, 3.000000e+00
  %7129 = fmul fast float %7125, 3.000000e+00
  %7130 = fmul fast float %7124, 6.000000e+00
  %7131 = fsub fast float %7129, %7130
  %7132 = fadd fast float %7131, 4.000000e+00
  %7133 = fmul fast float %7132, 0x3FC5555560000000
  %7134 = fmul fast float %7125, -3.000000e+00
  %7135 = fadd fast float %7124, %7122
  %7136 = fmul fast float %7135, 3.000000e+00
  %7137 = fadd fast float %7134, 1.000000e+00
  %7138 = fadd fast float %7137, %7136
  %7139 = fmul fast float %7125, 0x3FC5555560000000
  %7140 = fmul fast float %7123, %7123
  %7141 = fmul fast float %7140, %7123
  %7142 = fsub fast float 3.000000e+00, %7123
  %7143 = fmul fast float %7140, %7142
  %7144 = fmul fast float %7123, 3.000000e+00
  %7145 = fmul fast float %7141, 3.000000e+00
  %7146 = fmul fast float %7140, 6.000000e+00
  %7147 = fsub fast float %7145, %7146
  %7148 = fadd fast float %7147, 4.000000e+00
  %7149 = fmul fast float %7148, 0x3FC5555560000000
  %7150 = fmul fast float %7141, -3.000000e+00
  %7151 = fadd fast float %7140, %7123
  %7152 = fmul fast float %7151, 3.000000e+00
  %7153 = fadd fast float %7150, 1.000000e+00
  %7154 = fadd fast float %7153, %7152
  %7155 = fmul fast float %7141, 0x3FC5555560000000
  %7156 = fadd fast float %7122, 1.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7128
  %7158 = fadd fast float %7157, %7127
  %7159 = fadd fast float %7158, %7132
  %7160 = fmul fast float %7159, 0x3FC5555560000000
  %7161 = fdiv fast float %7133, %7160
  %7162 = fsub fast float %7156, %7161
  %7163 = fsub fast float 1.000000e+00, %7122
  %7164 = fadd fast float %7138, %7125
  %7165 = fmul fast float %7164, 0x3FC5555560000000
  %7166 = fdiv fast float %7139, %7165
  %7167 = fadd fast float %7163, %7166
  %7168 = fadd fast float %7123, 1.000000e+00
  %7169 = fsub fast float 1.000000e+00, %7144
  %7170 = fadd fast float %7169, %7143
  %7171 = fadd fast float %7170, %7148
  %7172 = fmul fast float %7171, 0x3FC5555560000000
  %7173 = fdiv fast float %7149, %7172
  %7174 = fsub fast float %7168, %7173
  %7175 = fsub fast float 1.000000e+00, %7123
  %7176 = fadd fast float %7154, %7141
  %7177 = fmul fast float %7176, 0x3FC5555560000000
  %7178 = fdiv fast float %7155, %7177
  %7179 = fadd fast float %7178, %7175
  %7180 = fmul fast float %7162, %7116
  %7181 = fsub fast float %7043, %7180
  %7182 = fmul fast float %7167, %7116
  %7183 = fadd fast float %7182, %7043
  %7184 = fmul fast float %7179, %7117
  %7185 = fadd fast float %7184, %7044
  %7186 = fmul fast float %7174, %7117
  %7187 = fsub fast float %7044, %7186
  %7188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7181, float %7187, float %7105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.ResRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.ResRet.f32 %7188, 2
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7183, float %7187, float %7105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  %7196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7181, float %7185, float %7105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7197 = extractvalue %dx.types.ResRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.ResRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.ResRet.f32 %7196, 2
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7183, float %7185, float %7105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.ResRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.ResRet.f32 %7200, 2
  %7204 = fsub fast float %7197, %7189
  %7205 = fsub fast float %7198, %7190
  %7206 = fsub fast float %7199, %7191
  %7207 = fmul fast float %7204, %7177
  %7208 = fmul fast float %7205, %7177
  %7209 = fmul fast float %7206, %7177
  %7210 = fadd fast float %7207, %7189
  %7211 = fadd fast float %7208, %7190
  %7212 = fadd fast float %7209, %7191
  %7213 = fsub fast float %7201, %7193
  %7214 = fsub fast float %7202, %7194
  %7215 = fsub fast float %7203, %7195
  %7216 = fmul fast float %7213, %7177
  %7217 = fmul fast float %7214, %7177
  %7218 = fmul fast float %7215, %7177
  %7219 = fsub fast float %7193, %7210
  %7220 = fadd fast float %7219, %7216
  %7221 = fsub fast float %7194, %7211
  %7222 = fadd fast float %7221, %7217
  %7223 = fsub fast float %7195, %7212
  %7224 = fadd fast float %7223, %7218
  %7225 = fmul fast float %7220, %7165
  %7226 = fmul fast float %7222, %7165
  %7227 = fmul fast float %7224, %7165
  %7228 = fadd fast float %7225, %7210
  %7229 = fadd fast float %7226, %7211
  %7230 = fadd fast float %7227, %7212
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7233 = fmul fast float %7228, %7232
  %7234 = fmul fast float %7229, %7232
  %7235 = fmul fast float %7230, %7232
  br label %7236

; <label>:7236                                    ; preds = %7068, %7037
  %7237 = phi float [ %7107, %7068 ], [ 1.000000e+00, %7037 ]
  %7238 = phi float [ %7108, %7068 ], [ 1.000000e+00, %7037 ]
  %7239 = phi float [ %7109, %7068 ], [ 1.000000e+00, %7037 ]
  %7240 = phi float [ %7233, %7068 ], [ 0.000000e+00, %7037 ]
  %7241 = phi float [ %7234, %7068 ], [ 0.000000e+00, %7037 ]
  %7242 = phi float [ %7235, %7068 ], [ 0.000000e+00, %7037 ]
  %7243 = fmul fast float %7240, %7022
  %7244 = fmul fast float %7241, %7023
  %7245 = fmul fast float %7242, %7024
  %7246 = call float @dx.op.dot3.f32(i32 55, float %7237, float %7238, float %7239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7247 = call float @dx.op.dot3.f32(i32 55, float %7243, float %7244, float %7245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7248 = select i1 %235, float %7246, float %7237
  %7249 = select i1 %235, float %7246, float %7238
  %7250 = select i1 %235, float 1.000000e+00, float %7239
  %7251 = select i1 %235, float %7247, float %7243
  %7252 = select i1 %235, float 0.000000e+00, float %7244
  %7253 = select i1 %235, float 0.000000e+00, float %7245
  %7254 = fmul fast float %7248, %7027
  %7255 = fmul fast float %7249, %7028
  %7256 = fmul fast float %7250, %7029
  %7257 = fadd fast float %7254, %7251
  %7258 = fadd fast float %7255, %7252
  %7259 = fadd fast float %7253, %7256
  %7260 = fmul fast float %7248, %6991
  %7261 = fmul fast float %7249, %6992
  %7262 = fmul fast float %7250, %6993
  %7263 = fmul fast float %112, %7039
  %7264 = fmul fast float %114, %7040
  %7265 = fsub fast float 1.000000e+00, %7263
  %7266 = fsub fast float 1.000000e+00, %7264
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7271 = fmul fast float %7265, %7268
  %7272 = fmul fast float %7265, %7269
  %7273 = fmul fast float %7265, %7270
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7278 = fmul fast float %7266, %7275
  %7279 = fmul fast float %7266, %7276
  %7280 = fmul fast float %7266, %7277
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.CBufRet.f32 %7281, 2
  %7285 = fadd fast float %7278, %7282
  %7286 = fadd fast float %7285, %7271
  %7287 = fadd fast float %7279, %7283
  %7288 = fadd fast float %7287, %7272
  %7289 = fadd fast float %7280, %7284
  %7290 = fadd fast float %7289, %7273
  %7291 = fmul fast float %7286, %196
  %7292 = fmul fast float %7288, %196
  %7293 = fmul fast float %7290, %196
  br label %7294

; <label>:7294                                    ; preds = %7236, %6990
  %7295 = phi float [ %7291, %7236 ], [ %142, %6990 ]
  %7296 = phi float [ %7292, %7236 ], [ %143, %6990 ]
  %7297 = phi float [ %7293, %7236 ], [ %144, %6990 ]
  %7298 = phi float [ %196, %7236 ], [ %78, %6990 ]
  %7299 = phi float [ %7257, %7236 ], [ %7027, %6990 ]
  %7300 = phi float [ %7258, %7236 ], [ %7028, %6990 ]
  %7301 = phi float [ %7259, %7236 ], [ %7029, %6990 ]
  %7302 = phi float [ %7260, %7236 ], [ %6991, %6990 ]
  %7303 = phi float [ %7261, %7236 ], [ %6992, %6990 ]
  %7304 = phi float [ %7262, %7236 ], [ %6993, %6990 ]
  %7305 = phi float [ %7237, %7236 ], [ 1.000000e+00, %6990 ]
  br i1 %7036, label %8460, label %7306

; <label>:7306                                    ; preds = %7294
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7309 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7310 = extractvalue %dx.types.CBufRet.f32 %7307, 2
  %7311 = extractvalue %dx.types.CBufRet.f32 %7307, 3
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7316 = extractvalue %dx.types.CBufRet.f32 %7312, 3
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7320 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7321 = extractvalue %dx.types.CBufRet.f32 %7317, 3
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7325 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7326 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 3
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 3
  %7331 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7329, 1
  %7333 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %7334 = fcmp fast olt float %7333, -5.000000e-01
  %7335 = call float @dx.op.dot3.f32(i32 55, float %7295, float %7296, float %7297, float %7295, float %7296, float %7297)  ; Dot3(ax,ay,az,bx,by,bz)
  %7336 = call float @dx.op.unary.f32(i32 25, float %7335)  ; Rsqrt(value)
  %7337 = fmul fast float %7336, %7335
  %7338 = fmul fast float %7336, %7295
  %7339 = fmul fast float %7336, %7296
  %7340 = fmul fast float %7336, %7297
  %7341 = fadd fast float %7337, %7311
  %7342 = call float @dx.op.dot3.f32(i32 55, float %7338, float %7339, float %7340, float %7308, float %7309, float %7310)  ; Dot3(ax,ay,az,bx,by,bz)
  %7343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.i32 %7343, 1
  %7345 = and i32 %7344, 1
  %7346 = icmp ne i32 %7345, 0
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  %7350 = and i1 %7346, %7349
  br i1 %7350, label %7351, label %7757, !dx.controlflow.hints !105

; <label>:7351                                    ; preds = %7306
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 3
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7358 = fsub fast float %7355, %7357
  %7359 = and i32 %7344, 2
  %7360 = extractvalue %dx.types.CBufRet.i32 %7343, 0
  %7361 = call i32 @dx.op.binary.i32(i32 40, i32 %7360, i32 3)  ; UMin(a,b)
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.CBufRet.f32 %7356, 0
  %7366 = extractvalue %dx.types.CBufRet.f32 %7356, 1
  %7367 = fsub fast float %7363, %7365
  %7368 = fsub fast float %7364, %7366
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7371 = fcmp fast ogt float %7370, 0.000000e+00
  %7372 = fsub fast float -0.000000e+00, %7367
  %7373 = fsub fast float -0.000000e+00, %7368
  %7374 = call float @dx.op.dot2.f32(i32 54, float %7338, float %7339, float %7338, float %7339)  ; Dot2(ax,ay,bx,by)
  %7375 = call float @dx.op.dot2.f32(i32 54, float %7338, float %7339, float %7372, float %7373)  ; Dot2(ax,ay,bx,by)
  %7376 = fmul fast float %7375, 2.000000e+00
  %7377 = call float @dx.op.dot2.f32(i32 54, float %7372, float %7373, float %7372, float %7373)  ; Dot2(ax,ay,bx,by)
  %7378 = fmul fast float %7370, %7370
  %7379 = fsub fast float %7377, %7378
  %7380 = fmul fast float %7376, %7376
  %7381 = fmul fast float %7374, 4.000000e+00
  %7382 = fmul fast float %7381, %7379
  %7383 = fsub fast float %7380, %7382
  %7384 = fcmp fast ogt float %7383, 0.000000e+00
  br i1 %7384, label %7385, label %7400

; <label>:7385                                    ; preds = %7351
  %7386 = fcmp fast ogt float %7376, 0.000000e+00
  %7387 = call float @dx.op.unary.f32(i32 24, float %7383)  ; Sqrt(value)
  %7388 = fsub fast float -0.000000e+00, %7387
  %7389 = select i1 %7386, float %7387, float %7388
  %7390 = fadd fast float %7389, %7376
  %7391 = fmul float %7390, -5.000000e-01
  %7392 = fdiv fast float %7391, %7374
  %7393 = call float @dx.op.binary.f32(i32 35, float %7392, float 0.000000e+00)  ; FMax(a,b)
  %7394 = call float @dx.op.binary.f32(i32 36, float %7337, float %7393)  ; FMin(a,b)
  %7395 = fdiv fast float %7379, %7391
  %7396 = call float @dx.op.binary.f32(i32 35, float %7395, float 0.000000e+00)  ; FMax(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7337, float %7396)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7394, float %7397)  ; FMin(a,b)
  %7399 = call float @dx.op.binary.f32(i32 35, float %7394, float %7397)  ; FMax(a,b)
  br label %7400

; <label>:7400                                    ; preds = %7385, %7351
  %7401 = phi float [ %7399, %7385 ], [ -1.000000e+00, %7351 ]
  %7402 = phi float [ %7398, %7385 ], [ -1.000000e+00, %7351 ]
  %7403 = phi i1 [ true, %7385 ], [ false, %7351 ]
  %7404 = and i1 %7371, %7403
  br i1 %7404, label %7405, label %7407

; <label>:7405                                    ; preds = %7400
  %7406 = fcmp fast oeq float %7402, %7401
  br i1 %7406, label %7710, label %7408

; <label>:7407                                    ; preds = %7400
  br i1 %7371, label %7710, label %7408

; <label>:7408                                    ; preds = %7407, %7405
  %7409 = phi float [ %7337, %7407 ], [ %7401, %7405 ]
  %7410 = phi float [ 0.000000e+00, %7407 ], [ %7402, %7405 ]
  %7411 = icmp ne i32 %7359, 0
  %7412 = fmul fast float %7409, %7340
  %7413 = fadd fast float %7412, %7353
  %7414 = fmul fast float %7413, %7409
  %7415 = select i1 %7411, float 0.000000e+00, float %7414
  %7416 = fcmp fast oeq float %7340, 0.000000e+00
  %7417 = fdiv fast float %7358, %7340
  %7418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7417)  ; FMax(a,b)
  %7419 = select i1 %7416, float %7409, float %7418
  %7420 = call float @dx.op.binary.f32(i32 36, float %7409, float %7419)  ; FMin(a,b)
  %7421 = fcmp fast ogt float %7340, 0.000000e+00
  %7422 = fcmp fast olt float %7358, 0.000000e+00
  br i1 %7421, label %7423, label %7480

; <label>:7423                                    ; preds = %7408
  %7424 = icmp eq i32 %7359, 0
  br i1 %7422, label %7425, label %7469

; <label>:7425                                    ; preds = %7423
  %7426 = select i1 %7424, float %7409, float 0.000000e+00
  %7427 = fsub fast float -0.000000e+00, %7426
  %7428 = call float @dx.op.unary.f32(i32 6, float %7427)  ; FAbs(value)
  %7429 = fmul fast float %7426, %7340
  %7430 = fadd fast float %7429, %7353
  %7431 = fmul fast float %7428, %7430
  %7432 = fsub fast float %7415, %7431
  %7433 = fsub fast float %7409, %7428
  %7434 = select i1 %7424, float %7433, float 0.000000e+00
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.CBufRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.CBufRet.f32 %7439, 2
  %7443 = extractvalue %dx.types.CBufRet.f32 %7439, 3
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 3
  %7446 = call float @dx.op.binary.f32(i32 36, float %7432, float %7445)  ; FMin(a,b)
  %7447 = fmul fast float %7443, %7434
  %7448 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7449 = fsub fast float %7440, %7436
  %7450 = fsub fast float %7441, %7437
  %7451 = fsub fast float %7442, %7438
  %7452 = fmul fast float %7448, %7449
  %7453 = fmul fast float %7448, %7450
  %7454 = fmul fast float %7448, %7451
  %7455 = fadd fast float %7452, %7436
  %7456 = fadd fast float %7453, %7437
  %7457 = fadd fast float %7454, %7438
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7461 = fadd fast float %7460, %7459
  %7462 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7458, 2
  %7464 = extractvalue %dx.types.CBufRet.f32 %7458, 3
  %7465 = fadd fast float %7464, %7463
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = fmul fast float %7462, %7446
  %7468 = fmul fast float %7467, %7466
  br label %7710

; <label>:7469                                    ; preds = %7423
  br i1 %7424, label %7470, label %7491

; <label>:7470                                    ; preds = %7469
  %7471 = call float @dx.op.binary.f32(i32 36, float %7420, float %7410)  ; FMin(a,b)
  %7472 = fsub fast float %7420, %7471
  %7473 = fsub fast float %7472, %7409
  %7474 = call float @dx.op.unary.f32(i32 6, float %7473)  ; FAbs(value)
  %7475 = fadd fast float %7472, %7409
  %7476 = fmul fast float %7475, %7340
  %7477 = fadd fast float %7476, %7353
  %7478 = fmul fast float %7477, %7474
  %7479 = fsub fast float %7415, %7478
  br label %7491

; <label>:7480                                    ; preds = %7408
  br i1 %7422, label %7481, label %7491

; <label>:7481                                    ; preds = %7480
  %7482 = call float @dx.op.binary.f32(i32 35, float %7410, float %7420)  ; FMax(a,b)
  %7483 = icmp eq i32 %7359, 0
  %7484 = select i1 %7483, float %7420, float 0.000000e+00
  %7485 = fsub fast float -0.000000e+00, %7484
  %7486 = call float @dx.op.unary.f32(i32 6, float %7485)  ; FAbs(value)
  %7487 = fmul fast float %7484, %7340
  %7488 = fadd fast float %7487, %7353
  %7489 = fmul fast float %7486, %7488
  %7490 = fsub fast float %7415, %7489
  br label %7491

; <label>:7491                                    ; preds = %7481, %7480, %7470, %7469
  %7492 = phi float [ %7410, %7469 ], [ %7410, %7470 ], [ %7482, %7481 ], [ %7410, %7480 ]
  %7493 = phi float [ 0.000000e+00, %7469 ], [ %7474, %7470 ], [ %7486, %7481 ], [ 0.000000e+00, %7480 ]
  %7494 = phi float [ %7415, %7469 ], [ %7479, %7470 ], [ %7490, %7481 ], [ %7415, %7480 ]
  %7495 = phi float [ %7420, %7469 ], [ %7420, %7470 ], [ %7409, %7481 ], [ %7409, %7480 ]
  %7496 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7496, align 4, !tbaa !106, !noalias !108
  %7497 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7497, align 4, !tbaa !106, !noalias !108
  %7498 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7498, align 4, !tbaa !106, !noalias !108
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7499, align 4, !tbaa !106, !noalias !108
  %7500 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7500, align 4, !tbaa !106, !noalias !108
  %7501 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7501, align 4, !tbaa !106, !noalias !108
  %7502 = icmp sgt i32 %7361, 0
  br i1 %7502, label %7503, label %7564

; <label>:7503                                    ; preds = %7491
  br label %7504

; <label>:7504                                    ; preds = %7553, %7503
  %7505 = phi i32 [ %7554, %7553 ], [ 0, %7503 ]
  %7506 = phi i32 [ %7555, %7553 ], [ 0, %7503 ]
  %7507 = add nuw i32 %7506, 171
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7507)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 0
  %7513 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %7514 = fsub fast float %7509, %7512
  %7515 = fsub fast float %7510, %7513
  %7516 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7517 = fsub fast float -0.000000e+00, %7514
  %7518 = fsub fast float -0.000000e+00, %7515
  %7519 = call float @dx.op.dot2.f32(i32 54, float %7338, float %7339, float %7517, float %7518)  ; Dot2(ax,ay,bx,by)
  %7520 = fmul fast float %7519, 2.000000e+00
  %7521 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7517, float %7518)  ; Dot2(ax,ay,bx,by)
  %7522 = fmul fast float %7516, %7516
  %7523 = fsub fast float %7521, %7522
  %7524 = fmul fast float %7520, %7520
  %7525 = fmul fast float %7381, %7523
  %7526 = fsub fast float %7524, %7525
  %7527 = fcmp fast ogt float %7526, 0.000000e+00
  br i1 %7527, label %7528, label %7543

; <label>:7528                                    ; preds = %7504
  %7529 = fcmp fast ogt float %7520, 0.000000e+00
  %7530 = call float @dx.op.unary.f32(i32 24, float %7526)  ; Sqrt(value)
  %7531 = fsub fast float -0.000000e+00, %7530
  %7532 = select i1 %7529, float %7530, float %7531
  %7533 = fadd fast float %7532, %7520
  %7534 = fmul float %7533, -5.000000e-01
  %7535 = fdiv fast float %7534, %7374
  %7536 = call float @dx.op.binary.f32(i32 35, float %7535, float 0.000000e+00)  ; FMax(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7409, float %7536)  ; FMin(a,b)
  %7538 = fdiv fast float %7523, %7534
  %7539 = call float @dx.op.binary.f32(i32 35, float %7538, float 0.000000e+00)  ; FMax(a,b)
  %7540 = call float @dx.op.binary.f32(i32 36, float %7409, float %7539)  ; FMin(a,b)
  %7541 = call float @dx.op.binary.f32(i32 36, float %7537, float %7540)  ; FMin(a,b)
  %7542 = call float @dx.op.binary.f32(i32 35, float %7537, float %7540)  ; FMax(a,b)
  br label %7543

; <label>:7543                                    ; preds = %7528, %7504
  %7544 = phi float [ %7542, %7528 ], [ -1.000000e+00, %7504 ]
  %7545 = phi float [ %7541, %7528 ], [ -1.000000e+00, %7504 ]
  %7546 = phi i1 [ true, %7528 ], [ false, %7504 ]
  br i1 %7546, label %7547, label %7553

; <label>:7547                                    ; preds = %7543
  %7548 = call float @dx.op.binary.f32(i32 35, float %7492, float %7545)  ; FMax(a,b)
  %7549 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7506
  store float %7548, float* %7549, align 4, !tbaa !106, !noalias !108
  %7550 = call float @dx.op.binary.f32(i32 35, float %7492, float %7544)  ; FMax(a,b)
  %7551 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7506
  store float %7550, float* %7551, align 4, !tbaa !106, !noalias !108
  %7552 = add nsw i32 %7505, 1
  br label %7553

; <label>:7553                                    ; preds = %7547, %7543
  %7554 = phi i32 [ %7552, %7547 ], [ %7505, %7543 ]
  %7555 = add nuw nsw i32 %7506, 1
  %7556 = icmp eq i32 %7555, %7361
  br i1 %7556, label %7557, label %7504

; <label>:7557                                    ; preds = %7553
  %7558 = load float, float* %7498, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7559 = load float, float* %7497, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %7560 = load float, float* %7496, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %7561 = load float, float* %7501, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7562 = load float, float* %7500, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %7563 = load float, float* %7499, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %7564

; <label>:7564                                    ; preds = %7557, %7491
  %7565 = phi float [ -1.000000e+00, %7491 ], [ %7563, %7557 ]
  %7566 = phi float [ -1.000000e+00, %7491 ], [ %7562, %7557 ]
  %7567 = phi float [ -1.000000e+00, %7491 ], [ %7561, %7557 ]
  %7568 = phi float [ -1.000000e+00, %7491 ], [ %7560, %7557 ]
  %7569 = phi float [ -1.000000e+00, %7491 ], [ %7559, %7557 ]
  %7570 = phi float [ -1.000000e+00, %7491 ], [ %7558, %7557 ]
  %7571 = phi i32 [ 0, %7491 ], [ %7554, %7557 ]
  %7572 = call float @dx.op.binary.f32(i32 36, float %7569, float %7570)  ; FMin(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7568, float %7572)  ; FMin(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %7568, float %7569)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 36, float %7574, float %7570)  ; FMin(a,b)
  %7576 = call float @dx.op.binary.f32(i32 36, float %7568, float %7569)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %7576, float %7575)  ; FMax(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7569, float %7570)  ; FMax(a,b)
  %7579 = call float @dx.op.binary.f32(i32 35, float %7568, float %7578)  ; FMax(a,b)
  store float %7573, float* %7496, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %7577, float* %7497, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %7579, float* %7498, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7580 = call float @dx.op.binary.f32(i32 36, float %7566, float %7567)  ; FMin(a,b)
  %7581 = call float @dx.op.binary.f32(i32 36, float %7565, float %7580)  ; FMin(a,b)
  %7582 = call float @dx.op.binary.f32(i32 35, float %7565, float %7566)  ; FMax(a,b)
  %7583 = call float @dx.op.binary.f32(i32 36, float %7582, float %7567)  ; FMin(a,b)
  %7584 = call float @dx.op.binary.f32(i32 36, float %7565, float %7566)  ; FMin(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7584, float %7583)  ; FMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 35, float %7566, float %7567)  ; FMax(a,b)
  %7587 = call float @dx.op.binary.f32(i32 35, float %7565, float %7586)  ; FMax(a,b)
  store float %7581, float* %7499, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %7585, float* %7500, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %7587, float* %7501, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7588 = sub nsw i32 3, %7571
  %7589 = icmp sgt i32 %7588, 2
  br i1 %7589, label %7590, label %7628

; <label>:7590                                    ; preds = %7564
  %7591 = icmp eq i32 %7359, 0
  %7592 = fsub fast float %7409, %7493
  %7593 = select i1 %7591, float %7592, float %7493
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7602 = extractvalue %dx.types.CBufRet.f32 %7598, 3
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 3
  %7605 = call float @dx.op.binary.f32(i32 36, float %7494, float %7604)  ; FMin(a,b)
  %7606 = fmul fast float %7602, %7593
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = fsub fast float %7599, %7595
  %7609 = fsub fast float %7600, %7596
  %7610 = fsub fast float %7601, %7597
  %7611 = fmul fast float %7607, %7608
  %7612 = fmul fast float %7607, %7609
  %7613 = fmul fast float %7607, %7610
  %7614 = fadd fast float %7611, %7595
  %7615 = fadd fast float %7612, %7596
  %7616 = fadd fast float %7613, %7597
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = fadd fast float %7619, %7618
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7623 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7624 = fadd fast float %7623, %7622
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = fmul fast float %7621, %7605
  %7627 = fmul fast float %7626, %7625
  br label %7710

; <label>:7628                                    ; preds = %7564
  %7629 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7588
  %7630 = load float, float* %7629, align 4, !tbaa !106, !noalias !108
  %7631 = fcmp fast olt float %7630, %7495
  %7632 = icmp sgt i32 %7571, 0
  %7633 = and i1 %7632, %7631
  br i1 %7633, label %7634, label %7671

; <label>:7634                                    ; preds = %7628
  br label %7635

; <label>:7635                                    ; preds = %7664, %7634
  %7636 = phi float [ %7665, %7664 ], [ %7493, %7634 ]
  %7637 = phi float [ %7666, %7664 ], [ %7494, %7634 ]
  %7638 = phi float [ %7646, %7664 ], [ %7630, %7634 ]
  %7639 = phi i32 [ %7643, %7664 ], [ %7588, %7634 ]
  %7640 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7639
  %7641 = load float, float* %7640, align 4, !tbaa !106, !noalias !108
  %7642 = icmp slt i32 %7639, 2
  %7643 = add nsw i32 %7639, 1
  %7644 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7643
  %7645 = load float, float* %7644, align 4, !tbaa !106, !noalias !108
  %7646 = select i1 %7642, float %7645, float %7409
  %7647 = call float @dx.op.binary.f32(i32 36, float %7646, float %7641)  ; FMin(a,b)
  %7648 = call float @dx.op.binary.f32(i32 36, float %7495, float %7647)  ; FMin(a,b)
  %7649 = icmp eq i32 %7359, 0
  %7650 = fadd fast float %7648, %7638
  %7651 = fmul fast float %7650, %7340
  %7652 = fadd fast float %7651, %7353
  br i1 %7649, label %7658, label %7653

; <label>:7653                                    ; preds = %7635
  %7654 = fsub fast float %7648, %7638
  %7655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7654)  ; FMax(a,b)
  %7656 = fmul fast float %7655, %7652
  %7657 = fadd fast float %7656, %7637
  br label %7664

; <label>:7658                                    ; preds = %7635
  %7659 = fsub fast float %7638, %7648
  %7660 = call float @dx.op.unary.f32(i32 6, float %7659)  ; FAbs(value)
  %7661 = fadd fast float %7660, %7636
  %7662 = fmul fast float %7660, %7652
  %7663 = fsub fast float %7637, %7662
  br label %7664

; <label>:7664                                    ; preds = %7658, %7653
  %7665 = phi float [ %7655, %7653 ], [ %7661, %7658 ]
  %7666 = phi float [ %7657, %7653 ], [ %7663, %7658 ]
  %7667 = fcmp fast olt float %7646, %7495
  %7668 = icmp slt i32 %7643, 3
  %7669 = and i1 %7668, %7667
  br i1 %7669, label %7635, label %7670

; <label>:7670                                    ; preds = %7664
  br label %7671

; <label>:7671                                    ; preds = %7670, %7628
  %7672 = phi float [ %7493, %7628 ], [ %7665, %7670 ]
  %7673 = phi float [ %7494, %7628 ], [ %7666, %7670 ]
  %7674 = fsub fast float %7409, %7672
  %7675 = select i1 %7411, float %7672, float %7674
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.CBufRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7684 = extractvalue %dx.types.CBufRet.f32 %7680, 3
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7687 = call float @dx.op.binary.f32(i32 36, float %7673, float %7686)  ; FMin(a,b)
  %7688 = fmul fast float %7684, %7675
  %7689 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7690 = fsub fast float %7681, %7677
  %7691 = fsub fast float %7682, %7678
  %7692 = fsub fast float %7683, %7679
  %7693 = fmul fast float %7689, %7690
  %7694 = fmul fast float %7689, %7691
  %7695 = fmul fast float %7689, %7692
  %7696 = fadd fast float %7693, %7677
  %7697 = fadd fast float %7694, %7678
  %7698 = fadd fast float %7695, %7679
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.CBufRet.f32 %7699, 1
  %7702 = fadd fast float %7701, %7700
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7699, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7706 = fadd fast float %7705, %7704
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fmul fast float %7703, %7687
  %7709 = fmul fast float %7708, %7707
  br label %7710

; <label>:7710                                    ; preds = %7671, %7590, %7425, %7407, %7405
  %7711 = phi float [ %7434, %7425 ], [ %7593, %7590 ], [ %7675, %7671 ], [ 0.000000e+00, %7405 ], [ 0.000000e+00, %7407 ]
  %7712 = phi float [ %7468, %7425 ], [ %7627, %7590 ], [ %7709, %7671 ], [ 0.000000e+00, %7405 ], [ 0.000000e+00, %7407 ]
  %7713 = phi float [ %7455, %7425 ], [ %7614, %7590 ], [ %7696, %7671 ], [ 0.000000e+00, %7405 ], [ 0.000000e+00, %7407 ]
  %7714 = phi float [ %7456, %7425 ], [ %7615, %7590 ], [ %7697, %7671 ], [ 0.000000e+00, %7405 ], [ 0.000000e+00, %7407 ]
  %7715 = phi float [ %7457, %7425 ], [ %7616, %7590 ], [ %7698, %7671 ], [ 0.000000e+00, %7405 ], [ 0.000000e+00, %7407 ]
  %7716 = fmul fast float %7348, %7712
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 2
  %7719 = fsub fast float %7355, %7718
  %7720 = fcmp fast olt float %7716, -2.000000e+01
  %7721 = call float @dx.op.unary.f32(i32 21, float %7716)  ; Exp(value)
  %7722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7723 = extractvalue %dx.types.CBufRet.f32 %7722, 2
  %7724 = extractvalue %dx.types.CBufRet.f32 %7722, 3
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7727 = fmul fast float %7724, %7719
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = fmul fast float %7340, 5.000000e-01
  %7731 = fadd fast float %7730, 5.000000e-01
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fsub fast float 1.000000e+00, %7732
  %7734 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7729)  ; FMax(a,b)
  %7735 = fdiv fast float %7733, %7734
  %7736 = fsub fast float %7719, %7297
  %7737 = call float @dx.op.unary.f32(i32 6, float %7736)  ; FAbs(value)
  %7738 = fmul fast float %7737, %7723
  %7739 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7740 = fsub fast float 1.000000e+00, %7738
  %7741 = fmul fast float %7740, %7739
  %7742 = fadd fast float %7741, %7738
  %7743 = fmul fast float %7726, %7719
  %7744 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7745 = fsub fast float 1.000000e+00, %7742
  %7746 = fmul fast float %7745, %7744
  %7747 = fadd fast float %7746, %7742
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7749 = fadd fast float %7721, -1.000000e+00
  %7750 = select i1 %7720, float -1.000000e+00, float %7749
  %7751 = fmul fast float %7748, %7750
  %7752 = fadd fast float %7751, 1.000000e+00
  %7753 = fsub fast float -0.000000e+00, %7751
  %7754 = fmul fast float %7713, %7753
  %7755 = fmul fast float %7714, %7753
  %7756 = fmul fast float %7715, %7753
  br label %7757

; <label>:7757                                    ; preds = %7710, %7306
  %7758 = phi float [ %7711, %7710 ], [ 0.000000e+00, %7306 ]
  %7759 = phi float [ %7752, %7710 ], [ 1.000000e+00, %7306 ]
  %7760 = phi float [ %7754, %7710 ], [ 0.000000e+00, %7306 ]
  %7761 = phi float [ %7755, %7710 ], [ 0.000000e+00, %7306 ]
  %7762 = phi float [ %7756, %7710 ], [ 0.000000e+00, %7306 ]
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7765 = fsub fast float 1.000000e+00, %7759
  %7766 = fmul fast float %7765, %7341
  %7767 = fmul fast float %7766, %7764
  %7768 = fsub fast float %7341, %7767
  br i1 %7334, label %7769, label %7798, !dx.controlflow.hints !144

; <label>:7769                                    ; preds = %7757
  %7770 = fmul fast float %7342, %7331
  %7771 = fadd fast float %7770, %7332
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fmul fast float %7313, %7768
  %7774 = fsub fast float -0.000000e+00, %7773
  %7775 = fmul fast float %7314, %7768
  %7776 = fsub fast float -0.000000e+00, %7775
  %7777 = call float @dx.op.unary.f32(i32 21, float %7774)  ; Exp(value)
  %7778 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7779 = call float @dx.op.binary.f32(i32 35, float %7321, float %7777)  ; FMax(a,b)
  %7780 = call float @dx.op.binary.f32(i32 35, float %7321, float %7778)  ; FMax(a,b)
  %7781 = fsub fast float %7780, %7779
  %7782 = fmul fast float %7781, %7772
  %7783 = fadd fast float %7782, %7779
  %7784 = call float @dx.op.unary.f32(i32 7, float %7783)  ; Saturate(value)
  %7785 = fsub fast float %7318, %7323
  %7786 = fsub fast float %7319, %7324
  %7787 = fsub fast float %7320, %7325
  %7788 = fmul fast float %7772, %7785
  %7789 = fmul fast float %7772, %7786
  %7790 = fmul fast float %7772, %7787
  %7791 = fadd fast float %7788, %7323
  %7792 = fadd fast float %7789, %7324
  %7793 = fadd fast float %7790, %7325
  %7794 = fsub fast float 1.000000e+00, %7784
  %7795 = fmul fast float %7794, %7791
  %7796 = fmul fast float %7794, %7792
  %7797 = fmul fast float %7794, %7793
  br label %7857

; <label>:7798                                    ; preds = %7757
  %7799 = fmul fast float %7768, %7330
  %7800 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7801 = fsub fast float 2.000000e+00, %7800
  %7802 = fmul fast float %7800, 9.921875e-01
  %7803 = fmul fast float %7802, %7801
  %7804 = fadd fast float %7803, 3.906250e-03
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7804, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 0
  %7807 = fsub fast float %7800, %7806
  %7808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7807)  ; FMax(a,b)
  %7809 = fmul fast float %7316, %7297
  %7810 = call float @dx.op.unary.f32(i32 6, float %7809)  ; FAbs(value)
  %7811 = fcmp fast ogt float %7810, 0x3EB0C6F7A0000000
  br i1 %7811, label %7812, label %7818, !dx.controlflow.hints !145

; <label>:7812                                    ; preds = %7798
  %7813 = fmul fast float %7809, 0xBFF7154760000000
  %7814 = call float @dx.op.unary.f32(i32 21, float %7813)  ; Exp(value)
  %7815 = fsub fast float 1.000000e+00, %7814
  %7816 = fdiv fast float %7815, %7809
  %7817 = fmul fast float %7816, %7326
  br label %7818

; <label>:7818                                    ; preds = %7812, %7798
  %7819 = phi float [ %7817, %7812 ], [ %7326, %7798 ]
  %7820 = fadd fast float %7819, %7328
  %7821 = fmul fast float %7820, %7808
  %7822 = fmul fast float %7313, %7821
  %7823 = fsub fast float -0.000000e+00, %7822
  %7824 = fmul fast float %7314, %7821
  %7825 = fsub fast float -0.000000e+00, %7824
  %7826 = fmul fast float %7315, %7821
  %7827 = fsub fast float -0.000000e+00, %7826
  %7828 = call float @dx.op.unary.f32(i32 21, float %7823)  ; Exp(value)
  %7829 = call float @dx.op.unary.f32(i32 21, float %7825)  ; Exp(value)
  %7830 = call float @dx.op.unary.f32(i32 21, float %7827)  ; Exp(value)
  %7831 = fmul fast float %7342, %7342
  %7832 = fadd fast float %7831, 1.000000e+00
  %7833 = fmul fast float %7832, 0x3FAE8EC8A0000000
  %7834 = fmul fast float %7833, %7323
  %7835 = fmul fast float %7833, %7324
  %7836 = fmul fast float %7833, %7325
  %7837 = fmul fast float %7342, %7321
  %7838 = fsub fast float 1.000000e+00, %7837
  %7839 = fmul fast float %7321, %7321
  %7840 = fsub fast float 1.000000e+00, %7839
  %7841 = fmul fast float %7840, 0x3FB45F3060000000
  %7842 = fmul fast float %7838, %7838
  %7843 = fdiv fast float 1.000000e+00, %7842
  %7844 = fmul fast float %7841, %7843
  %7845 = fmul fast float %7844, %7318
  %7846 = fmul fast float %7844, %7319
  %7847 = fmul fast float %7844, %7320
  %7848 = fadd fast float %7845, %7834
  %7849 = fadd fast float %7846, %7835
  %7850 = fadd fast float %7847, %7836
  %7851 = fsub fast float 1.000000e+00, %7828
  %7852 = fsub fast float 1.000000e+00, %7829
  %7853 = fsub fast float 1.000000e+00, %7830
  %7854 = fmul fast float %7848, %7851
  %7855 = fmul fast float %7849, %7852
  %7856 = fmul fast float %7850, %7853
  br label %7857

; <label>:7857                                    ; preds = %7818, %7769
  %7858 = phi float [ %7795, %7769 ], [ %7854, %7818 ]
  %7859 = phi float [ %7796, %7769 ], [ %7855, %7818 ]
  %7860 = phi float [ %7797, %7769 ], [ %7856, %7818 ]
  %7861 = phi float [ %7784, %7769 ], [ %7828, %7818 ]
  %7862 = phi float [ %7784, %7769 ], [ %7829, %7818 ]
  %7863 = phi float [ %7784, %7769 ], [ %7830, %7818 ]
  br i1 %7350, label %7864, label %8062, !dx.controlflow.hints !146

; <label>:7864                                    ; preds = %7857
  %7865 = extractvalue %dx.types.CBufRet.f32 %7763, 0
  %7866 = fmul fast float %7865, %7765
  %7867 = fsub fast float %7760, %7858
  %7868 = fsub fast float %7761, %7859
  %7869 = fsub fast float %7762, %7860
  %7870 = fmul fast float %7866, %7867
  %7871 = fmul fast float %7866, %7868
  %7872 = fmul fast float %7866, %7869
  %7873 = fadd fast float %7870, %7858
  %7874 = fadd fast float %7871, %7859
  %7875 = fadd fast float %7872, %7860
  %7876 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7861)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7862)  ; FMax(a,b)
  %7878 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7863)  ; FMax(a,b)
  %7879 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7759)  ; FMax(a,b)
  %7880 = call float @dx.op.binary.f32(i32 35, float %7758, float %7768)  ; FMax(a,b)
  %7881 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7880)  ; FMax(a,b)
  %7882 = fdiv fast float %7758, %7881
  %7883 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7884 = fdiv fast float %7768, %7881
  %7885 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7886 = fcmp fast une float %7879, 1.000000e+00
  br i1 %7886, label %7887, label %7900, !dx.controlflow.hints !147

; <label>:7887                                    ; preds = %7864
  %7888 = call float @dx.op.unary.f32(i32 23, float %7879)  ; Log(value)
  %7889 = fmul fast float %7888, 0x3FE62E4300000000
  %7890 = fmul fast float %7760, %7889
  %7891 = fsub fast float -0.000000e+00, %7890
  %7892 = fmul fast float %7761, %7889
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fmul fast float %7762, %7889
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fsub fast float 1.000000e+00, %7879
  %7897 = fdiv fast float %7891, %7896
  %7898 = fdiv fast float %7893, %7896
  %7899 = fdiv fast float %7895, %7896
  br label %7900

; <label>:7900                                    ; preds = %7887, %7864
  %7901 = phi float [ %7897, %7887 ], [ %7760, %7864 ]
  %7902 = phi float [ %7898, %7887 ], [ %7761, %7864 ]
  %7903 = phi float [ %7899, %7887 ], [ %7762, %7864 ]
  %7904 = phi float [ %7889, %7887 ], [ 0.000000e+00, %7864 ]
  %7905 = fcmp fast une float %7876, 1.000000e+00
  br i1 %7905, label %7906, label %7913, !dx.controlflow.hints !148

; <label>:7906                                    ; preds = %7900
  %7907 = call float @dx.op.unary.f32(i32 23, float %7876)  ; Log(value)
  %7908 = fmul fast float %7907, 0x3FE62E4300000000
  %7909 = fmul fast float %7873, %7908
  %7910 = fsub fast float -0.000000e+00, %7909
  %7911 = fsub fast float 1.000000e+00, %7876
  %7912 = fdiv fast float %7910, %7911
  br label %7913

; <label>:7913                                    ; preds = %7906, %7900
  %7914 = phi float [ %7912, %7906 ], [ %7873, %7900 ]
  %7915 = phi float [ %7908, %7906 ], [ 0.000000e+00, %7900 ]
  %7916 = fcmp fast une float %7877, 1.000000e+00
  br i1 %7916, label %7917, label %7924, !dx.controlflow.hints !148

; <label>:7917                                    ; preds = %7913
  %7918 = call float @dx.op.unary.f32(i32 23, float %7877)  ; Log(value)
  %7919 = fmul fast float %7918, 0x3FE62E4300000000
  %7920 = fmul fast float %7874, %7919
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fsub fast float 1.000000e+00, %7877
  %7923 = fdiv fast float %7921, %7922
  br label %7924

; <label>:7924                                    ; preds = %7917, %7913
  %7925 = phi float [ %7923, %7917 ], [ %7874, %7913 ]
  %7926 = phi float [ %7919, %7917 ], [ 0.000000e+00, %7913 ]
  %7927 = fcmp fast une float %7878, 1.000000e+00
  br i1 %7927, label %7928, label %7935, !dx.controlflow.hints !148

; <label>:7928                                    ; preds = %7924
  %7929 = call float @dx.op.unary.f32(i32 23, float %7878)  ; Log(value)
  %7930 = fmul fast float %7929, 0x3FE62E4300000000
  %7931 = fmul fast float %7875, %7930
  %7932 = fsub fast float -0.000000e+00, %7931
  %7933 = fsub fast float 1.000000e+00, %7878
  %7934 = fdiv fast float %7932, %7933
  br label %7935

; <label>:7935                                    ; preds = %7928, %7924
  %7936 = phi float [ %7934, %7928 ], [ %7875, %7924 ]
  %7937 = phi float [ %7930, %7928 ], [ 0.000000e+00, %7924 ]
  %7938 = fmul fast float %7901, %7885
  %7939 = fmul fast float %7902, %7885
  %7940 = fmul fast float %7903, %7885
  %7941 = fmul fast float %7904, %7885
  %7942 = fmul fast float %7914, %7883
  %7943 = fmul fast float %7925, %7883
  %7944 = fmul fast float %7936, %7883
  %7945 = fmul fast float %7915, %7883
  %7946 = fmul fast float %7926, %7883
  %7947 = fmul fast float %7937, %7883
  %7948 = fadd fast float %7942, %7938
  %7949 = fadd fast float %7943, %7939
  %7950 = fadd fast float %7944, %7940
  %7951 = fadd fast float %7945, %7941
  %7952 = fadd fast float %7946, %7941
  %7953 = fadd fast float %7947, %7941
  %7954 = fcmp fast une float %7951, 0.000000e+00
  br i1 %7954, label %7955, label %7962, !dx.controlflow.hints !149

; <label>:7955                                    ; preds = %7935
  %7956 = fmul fast float %7951, 0x3FF7154760000000
  %7957 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7958 = fsub fast float 1.000000e+00, %7957
  %7959 = fmul fast float %7948, %7958
  %7960 = fsub fast float -0.000000e+00, %7959
  %7961 = fdiv fast float %7960, %7951
  br label %7962

; <label>:7962                                    ; preds = %7955, %7935
  %7963 = phi float [ %7957, %7955 ], [ 1.000000e+00, %7935 ]
  %7964 = phi float [ %7961, %7955 ], [ %7948, %7935 ]
  %7965 = fcmp fast une float %7952, 0.000000e+00
  br i1 %7965, label %7966, label %7973, !dx.controlflow.hints !149

; <label>:7966                                    ; preds = %7962
  %7967 = fmul fast float %7952, 0x3FF7154760000000
  %7968 = call float @dx.op.unary.f32(i32 21, float %7967)  ; Exp(value)
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %7949, %7969
  %7971 = fsub fast float -0.000000e+00, %7970
  %7972 = fdiv fast float %7971, %7952
  br label %7973

; <label>:7973                                    ; preds = %7966, %7962
  %7974 = phi float [ %7968, %7966 ], [ 1.000000e+00, %7962 ]
  %7975 = phi float [ %7972, %7966 ], [ %7949, %7962 ]
  %7976 = fcmp fast une float %7953, 0.000000e+00
  br i1 %7976, label %7977, label %7984, !dx.controlflow.hints !149

; <label>:7977                                    ; preds = %7973
  %7978 = fmul fast float %7953, 0x3FF7154760000000
  %7979 = call float @dx.op.unary.f32(i32 21, float %7978)  ; Exp(value)
  %7980 = fsub fast float 1.000000e+00, %7979
  %7981 = fmul fast float %7950, %7980
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = fdiv fast float %7982, %7953
  br label %7984

; <label>:7984                                    ; preds = %7977, %7973
  %7985 = phi float [ %7979, %7977 ], [ 1.000000e+00, %7973 ]
  %7986 = phi float [ %7983, %7977 ], [ %7950, %7973 ]
  %7987 = fcmp fast ogt float %7883, %7885
  br i1 %7987, label %7988, label %8008

; <label>:7988                                    ; preds = %7984
  %7989 = fsub fast float 1.000000e+00, %7885
  %7990 = fmul fast float %7901, %7989
  %7991 = fmul fast float %7902, %7989
  %7992 = fmul fast float %7903, %7989
  %7993 = fmul fast float %7904, %7989
  %7994 = fcmp fast une float %7993, 0.000000e+00
  br i1 %7994, label %7995, label %8046, !dx.controlflow.hints !150

; <label>:7995                                    ; preds = %7988
  %7996 = fmul fast float %7993, 0x3FF7154760000000
  %7997 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %7998 = fsub fast float 1.000000e+00, %7997
  %7999 = fmul fast float %7990, %7998
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fmul fast float %7991, %7998
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fmul fast float %7992, %7998
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fdiv fast float %8000, %7993
  %8006 = fdiv fast float %8002, %7993
  %8007 = fdiv fast float %8004, %7993
  br label %8046

; <label>:8008                                    ; preds = %7984
  %8009 = fsub fast float 1.000000e+00, %7883
  %8010 = fmul fast float %7914, %8009
  %8011 = fmul fast float %7925, %8009
  %8012 = fmul fast float %7936, %8009
  %8013 = fmul fast float %7915, %8009
  %8014 = fmul fast float %7926, %8009
  %8015 = fmul fast float %7937, %8009
  %8016 = fcmp fast une float %8013, 0.000000e+00
  br i1 %8016, label %8017, label %8024, !dx.controlflow.hints !149

; <label>:8017                                    ; preds = %8008
  %8018 = fmul fast float %8013, 0x3FF7154760000000
  %8019 = call float @dx.op.unary.f32(i32 21, float %8018)  ; Exp(value)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fmul fast float %8010, %8020
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = fdiv fast float %8022, %8013
  br label %8024

; <label>:8024                                    ; preds = %8017, %8008
  %8025 = phi float [ %8023, %8017 ], [ %8010, %8008 ]
  %8026 = phi float [ %8019, %8017 ], [ 1.000000e+00, %8008 ]
  %8027 = fcmp fast une float %8014, 0.000000e+00
  br i1 %8027, label %8028, label %8035, !dx.controlflow.hints !149

; <label>:8028                                    ; preds = %8024
  %8029 = fmul fast float %8014, 0x3FF7154760000000
  %8030 = call float @dx.op.unary.f32(i32 21, float %8029)  ; Exp(value)
  %8031 = fsub fast float 1.000000e+00, %8030
  %8032 = fmul fast float %8011, %8031
  %8033 = fsub fast float -0.000000e+00, %8032
  %8034 = fdiv fast float %8033, %8014
  br label %8035

; <label>:8035                                    ; preds = %8028, %8024
  %8036 = phi float [ %8034, %8028 ], [ %8011, %8024 ]
  %8037 = phi float [ %8030, %8028 ], [ 1.000000e+00, %8024 ]
  %8038 = fcmp fast une float %8015, 0.000000e+00
  br i1 %8038, label %8039, label %8046, !dx.controlflow.hints !149

; <label>:8039                                    ; preds = %8035
  %8040 = fmul fast float %8015, 0x3FF7154760000000
  %8041 = call float @dx.op.unary.f32(i32 21, float %8040)  ; Exp(value)
  %8042 = fsub fast float 1.000000e+00, %8041
  %8043 = fmul fast float %8012, %8042
  %8044 = fsub fast float -0.000000e+00, %8043
  %8045 = fdiv fast float %8044, %8015
  br label %8046

; <label>:8046                                    ; preds = %8039, %8035, %7995, %7988
  %8047 = phi float [ %8045, %8039 ], [ %8007, %7995 ], [ %7992, %7988 ], [ %8012, %8035 ]
  %8048 = phi float [ %8036, %8039 ], [ %8006, %7995 ], [ %7991, %7988 ], [ %8036, %8035 ]
  %8049 = phi float [ %8025, %8039 ], [ %8005, %7995 ], [ %7990, %7988 ], [ %8025, %8035 ]
  %8050 = phi float [ %8041, %8039 ], [ %7997, %7995 ], [ 1.000000e+00, %7988 ], [ 1.000000e+00, %8035 ]
  %8051 = phi float [ %8037, %8039 ], [ %7997, %7995 ], [ 1.000000e+00, %7988 ], [ %8037, %8035 ]
  %8052 = phi float [ %8026, %8039 ], [ %7997, %7995 ], [ 1.000000e+00, %7988 ], [ %8026, %8035 ]
  %8053 = fmul fast float %8052, %7964
  %8054 = fmul fast float %8051, %7975
  %8055 = fmul fast float %8050, %7986
  %8056 = fadd fast float %8053, %8049
  %8057 = fadd fast float %8054, %8048
  %8058 = fadd fast float %8055, %8047
  %8059 = fmul fast float %8052, %7963
  %8060 = fmul fast float %8051, %7974
  %8061 = fmul fast float %8050, %7985
  br label %8062

; <label>:8062                                    ; preds = %8046, %7857
  %8063 = phi float [ %8061, %8046 ], [ %7863, %7857 ]
  %8064 = phi float [ %8060, %8046 ], [ %7862, %7857 ]
  %8065 = phi float [ %8059, %8046 ], [ %7861, %7857 ]
  %8066 = phi float [ %8058, %8046 ], [ %7860, %7857 ]
  %8067 = phi float [ %8057, %8046 ], [ %7859, %7857 ]
  %8068 = phi float [ %8056, %8046 ], [ %7858, %7857 ]
  %8069 = fmul fast float %8068, %7022
  %8070 = fmul fast float %8067, %7023
  %8071 = fmul fast float %8066, %7024
  %8072 = fmul fast float %8065, %7305
  %8073 = call float @dx.op.dot3.f32(i32 55, float %8065, float %8064, float %8063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8074 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8070, float %8071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8075 = select i1 %235, float %8073, float %8065
  %8076 = select i1 %235, float %8073, float %8064
  %8077 = select i1 %235, float 1.000000e+00, float %8063
  %8078 = select i1 %235, float %8074, float %8069
  %8079 = select i1 %235, float 0.000000e+00, float %8070
  %8080 = select i1 %235, float 0.000000e+00, float %8071
  %8081 = fmul fast float %8075, %7299
  %8082 = fmul fast float %8076, %7300
  %8083 = fmul fast float %8077, %7301
  %8084 = fadd fast float %8081, %8078
  %8085 = fadd fast float %8082, %8079
  %8086 = fadd fast float %8080, %8083
  %8087 = fmul fast float %8075, %7302
  %8088 = fmul fast float %8076, %7303
  %8089 = fmul fast float %8077, %7304
  %8090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.i32 %8090, 0
  %8092 = icmp eq i32 %8091, 0
  br i1 %8092, label %8460, label %8093, !dx.controlflow.hints !151

; <label>:8093                                    ; preds = %8062
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8097 = fmul fast float %8095, %87
  %8098 = fmul fast float %8096, %88
  %8099 = fmul fast float %8097, 2.000000e+00
  %8100 = fmul fast float %8098, 2.000000e+00
  %8101 = fsub fast float 1.000000e+00, %8099
  %8102 = fsub fast float 1.000000e+00, %8100
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %8106 = extractvalue %dx.types.CBufRet.f32 %8103, 2
  %8107 = fmul fast float %8101, %8104
  %8108 = fmul fast float %8101, %8105
  %8109 = fmul fast float %8101, %8106
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8114 = fmul fast float %8102, %8111
  %8115 = fmul fast float %8102, %8112
  %8116 = fmul fast float %8102, %8113
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8121 = fadd fast float %8114, %8118
  %8122 = fadd fast float %8121, %8107
  %8123 = fadd fast float %8115, %8119
  %8124 = fadd fast float %8123, %8108
  %8125 = fadd fast float %8116, %8120
  %8126 = fadd fast float %8125, %8109
  %8127 = fmul fast float %8122, %7298
  %8128 = fmul fast float %8124, %7298
  %8129 = fmul fast float %8126, %7298
  %8130 = fmul fast float %8127, %8127
  %8131 = fmul fast float %8128, %8128
  %8132 = fadd fast float %8130, %8131
  %8133 = fmul fast float %8129, %8129
  %8134 = fadd fast float %8132, %8133
  %8135 = call float @dx.op.unary.f32(i32 24, float %8134)  ; Sqrt(value)
  %8136 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %8137 = fsub fast float %8135, %8136
  %8138 = extractvalue %dx.types.CBufRet.f32 %7025, 2
  %8139 = fmul fast float %8137, %8138
  %8140 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8141 = fadd fast float %8140, -5.000000e-01
  %8142 = fmul fast float %8141, 2.000000e+00
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8145 = call float @dx.op.binary.f32(i32 36, float %8144, float %8142)  ; FMin(a,b)
  %8146 = fsub fast float -0.000000e+00, %8144
  %8147 = fcmp fast ogt float %8145, %8146
  br i1 %8147, label %8148, label %8460, !dx.controlflow.hints !152

; <label>:8148                                    ; preds = %8093
  %8149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8149, 3
  %8151 = fcmp fast ogt float %8150, 0.000000e+00
  br i1 %8151, label %8152, label %8227, !dx.controlflow.hints !153

; <label>:8152                                    ; preds = %8148
  %8153 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8154 = extractvalue %dx.types.Dimensions %8153, 0
  %8155 = sitofp i32 %8154 to float
  %8156 = extractvalue %dx.types.Dimensions %8153, 1
  %8157 = sitofp i32 %8156 to float
  %8158 = fmul fast float %8097, %8155
  %8159 = fmul fast float %8098, %8157
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8162 = fsub fast float -0.000000e+00, %8161
  %8163 = fptoui float %8162 to i32
  %8164 = fptoui float %8158 to i32
  %8165 = fptoui float %8159 to i32
  %8166 = and i32 %8163, 31
  %8167 = lshr i32 %8164, %8166
  %8168 = lshr i32 %8165, %8166
  %8169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8163, i32 %8167, i32 %8168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8170 = extractvalue %dx.types.ResRet.f32 %8169, 0
  %8171 = fcmp fast olt float %8170, -1.000000e+00
  %8172 = fcmp fast ogt float %8170, -1.000000e+00
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8175 = select i1 %8172, float %8174, float 1.000000e+00
  %8176 = fadd fast float %8170, 1.000000e+00
  %8177 = fmul fast float %8175, %8176
  %8178 = call float @dx.op.unary.f32(i32 6, float %8177)  ; FAbs(value)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8180 = fcmp fast oge float %8178, %8179
  %8181 = select i1 %8180, float 0x4197782600000000, float %8178
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8185 = extractvalue %dx.types.CBufRet.f32 %8182, 2
  %8186 = select i1 %8171, float %8183, float %8104
  %8187 = select i1 %8171, float %8184, float %8105
  %8188 = select i1 %8171, float %8185, float %8106
  %8189 = fmul fast float %8186, %8101
  %8190 = fmul fast float %8187, %8101
  %8191 = fmul fast float %8188, %8101
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 0
  %8194 = extractvalue %dx.types.CBufRet.f32 %8192, 1
  %8195 = extractvalue %dx.types.CBufRet.f32 %8192, 2
  %8196 = select i1 %8171, float %8193, float %8111
  %8197 = select i1 %8171, float %8194, float %8112
  %8198 = select i1 %8171, float %8195, float %8113
  %8199 = fmul fast float %8196, %8102
  %8200 = fmul fast float %8197, %8102
  %8201 = fmul fast float %8198, %8102
  %8202 = fadd fast float %8199, %8189
  %8203 = fadd fast float %8200, %8190
  %8204 = fadd fast float %8201, %8191
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = extractvalue %dx.types.CBufRet.f32 %8205, 2
  %8209 = select i1 %8171, float %8206, float %8118
  %8210 = select i1 %8171, float %8207, float %8119
  %8211 = select i1 %8171, float %8208, float %8120
  %8212 = fadd fast float %8202, %8209
  %8213 = fadd fast float %8203, %8210
  %8214 = fadd fast float %8204, %8211
  %8215 = fmul fast float %8212, %8181
  %8216 = fmul fast float %8213, %8181
  %8217 = fmul fast float %8214, %8181
  %8218 = fmul fast float %8215, %8215
  %8219 = fmul fast float %8216, %8216
  %8220 = fadd fast float %8218, %8219
  %8221 = fmul fast float %8217, %8217
  %8222 = fadd fast float %8220, %8221
  %8223 = call float @dx.op.unary.f32(i32 24, float %8222)  ; Sqrt(value)
  %8224 = fsub fast float %8223, %8136
  %8225 = fmul fast float %8224, %8138
  %8226 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  br label %8227

; <label>:8227                                    ; preds = %8152, %8148
  %8228 = phi float [ %8226, %8152 ], [ 1.000000e+00, %8148 ]
  %8229 = fmul fast float %8145, 5.000000e-01
  %8230 = fadd fast float %8229, 5.000000e-01
  %8231 = call float @dx.op.unary.f32(i32 22, float %8230)  ; Frc(value)
  %8232 = call float @dx.op.unary.f32(i32 27, float %8231)  ; Round_ni(value)
  %8233 = call float @dx.op.unary.f32(i32 22, float %8231)  ; Frc(value)
  %8234 = fmul fast float %8233, 2.000000e+00
  %8235 = fadd fast float %8234, -1.000000e+00
  %8236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8097, float %8098, float %8232, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8237 = extractvalue %dx.types.ResRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.ResRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.ResRet.f32 %8236, 2
  %8240 = extractvalue %dx.types.ResRet.f32 %8236, 3
  %8241 = fadd fast float %8237, -5.000000e-01
  %8242 = fadd fast float %8239, -5.000000e-01
  %8243 = fmul fast float %8241, 0xBFD5555560000000
  %8244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8242, float %8243)  ; FMad(a,b,c)
  %8245 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8238, float 0.000000e+00)  ; FMad(a,b,c)
  %8246 = fadd fast float %8245, %8240
  %8247 = fmul fast float %8241, -7.500000e-01
  %8248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8242, float %8247)  ; FMad(a,b,c)
  %8249 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8238, float 0.000000e+00)  ; FMad(a,b,c)
  %8250 = fadd fast float %8249, %8240
  %8251 = call float @dx.op.binary.f32(i32 35, float %8244, float -1.000000e+00)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8246, float -1.000000e+00)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 35, float %8248, float -1.000000e+00)  ; FMax(a,b)
  %8254 = call float @dx.op.binary.f32(i32 35, float %8250, float -1.000000e+00)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 36, float %8251, float 1.000000e+00)  ; FMin(a,b)
  %8256 = call float @dx.op.binary.f32(i32 36, float %8252, float 1.000000e+00)  ; FMin(a,b)
  %8257 = call float @dx.op.binary.f32(i32 36, float %8253, float 1.000000e+00)  ; FMin(a,b)
  %8258 = call float @dx.op.binary.f32(i32 36, float %8254, float 1.000000e+00)  ; FMin(a,b)
  %8259 = fcmp fast olt float %8255, 0x3FEFFF8020000000
  br i1 %8259, label %8260, label %8375, !dx.controlflow.hints !154

; <label>:8260                                    ; preds = %8227
  %8261 = extractvalue %dx.types.CBufRet.f32 %8143, 3
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8266 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8267 = fsub fast float %8263, %8255
  %8268 = fsub fast float %8264, %8256
  %8269 = fsub fast float %8265, %8257
  %8270 = fsub fast float %8266, %8258
  %8271 = fmul fast float %8267, %8261
  %8272 = fmul fast float %8268, %8261
  %8273 = fmul fast float %8269, %8261
  %8274 = fmul fast float %8270, %8261
  %8275 = fadd fast float %8271, %8255
  %8276 = fadd fast float %8272, %8256
  %8277 = fsub fast float -0.000000e+00, %8276
  %8278 = fadd fast float %8273, %8257
  %8279 = fadd fast float %8274, %8258
  %8280 = fmul fast float %8275, %8275
  %8281 = fsub fast float %8276, %8280
  %8282 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8281)  ; FMax(a,b)
  %8283 = fdiv fast float 1.000000e+00, %8282
  %8284 = fmul fast float %8276, %8275
  %8285 = fsub fast float %8278, %8284
  %8286 = fsub fast float %8235, %8275
  %8287 = fmul fast float %8235, %8235
  %8288 = fsub fast float %8287, %8276
  %8289 = fmul fast float %8286, %8283
  %8290 = fmul fast float %8289, %8285
  %8291 = fsub fast float %8288, %8290
  %8292 = fmul fast float %8276, %8276
  %8293 = fsub fast float %8279, %8292
  %8294 = fmul fast float %8285, %8285
  %8295 = fmul fast float %8294, %8283
  %8296 = fsub fast float %8293, %8295
  %8297 = fdiv fast float %8291, %8296
  %8298 = fmul fast float %8285, %8297
  %8299 = fsub fast float %8286, %8298
  %8300 = fmul fast float %8299, %8283
  %8301 = fmul fast float %8300, %8275
  %8302 = fsub fast float 1.000000e+00, %8301
  %8303 = fmul fast float %8276, %8297
  %8304 = fsub fast float %8302, %8303
  %8305 = fmul fast float %8300, %8300
  %8306 = fmul fast float %8297, 4.000000e+00
  %8307 = fmul fast float %8306, %8304
  %8308 = fsub fast float %8305, %8307
  %8309 = call float @dx.op.unary.f32(i32 24, float %8308)  ; Sqrt(value)
  %8310 = fcmp fast oge float %8300, 0.000000e+00
  %8311 = fsub fast float -0.000000e+00, %8309
  %8312 = select i1 %8310, float %8311, float %8309
  %8313 = fsub fast float %8312, %8300
  %8314 = fdiv fast float %8313, %8297
  %8315 = fdiv fast float %8304, %8313
  %8316 = fmul fast float %8314, 5.000000e-01
  %8317 = fmul fast float %8315, 2.000000e+00
  %8318 = select i1 %8310, float %8316, float %8317
  %8319 = select i1 %8310, float %8317, float %8316
  %8320 = call float @dx.op.binary.f32(i32 35, float %8318, float %8319)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8318, float %8319)  ; FMin(a,b)
  %8322 = fcmp fast ogt float %8235, %8321
  br i1 %8322, label %8323, label %8333

; <label>:8323                                    ; preds = %8260
  %8324 = fsub fast float %8235, %8321
  %8325 = fsub fast float %8320, %8321
  %8326 = fmul fast float %8324, %8325
  %8327 = fmul fast float %8320, %8235
  %8328 = fadd fast float %8320, %8235
  %8329 = fmul fast float %8328, %8275
  %8330 = fadd fast float %8327, %8276
  %8331 = fsub fast float %8330, %8329
  %8332 = fdiv fast float %8331, %8326
  br label %8333

; <label>:8333                                    ; preds = %8323, %8260
  %8334 = phi float [ %8332, %8323 ], [ 0.000000e+00, %8260 ]
  %8335 = fcmp fast ogt float %8235, %8320
  %8336 = fsub fast float %8235, %8320
  br i1 %8335, label %8337, label %8347

; <label>:8337                                    ; preds = %8333
  %8338 = fsub fast float %8320, %8321
  %8339 = fmul fast float %8338, %8336
  %8340 = fmul fast float %8321, %8235
  %8341 = fadd fast float %8321, %8235
  %8342 = fmul fast float %8341, %8275
  %8343 = fsub fast float %8277, %8340
  %8344 = fadd fast float %8343, %8342
  %8345 = fdiv fast float %8344, %8339
  %8346 = fadd fast float %8345, %8334
  br label %8347

; <label>:8347                                    ; preds = %8337, %8333
  %8348 = phi float [ %8346, %8337 ], [ %8334, %8333 ]
  %8349 = fsub fast float %8235, %8321
  %8350 = fmul fast float %8349, %8336
  %8351 = fmul fast float %8321, %8320
  %8352 = fadd fast float %8321, %8320
  %8353 = fmul fast float %8352, %8275
  %8354 = fadd fast float %8351, %8276
  %8355 = fsub fast float %8354, %8353
  %8356 = fdiv fast float %8355, %8350
  %8357 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8358 = fcmp fast oeq float %7026, 0.000000e+00
  %8359 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8360 = fcmp fast oeq float %8359, 0.000000e+00
  %8361 = or i1 %8358, %8360
  %8362 = fmul fast float %8359, 2.000000e+00
  %8363 = fadd fast float %8144, %8145
  %8364 = fdiv fast float %8363, %8362
  %8365 = call float @dx.op.unary.f32(i32 7, float %8364)  ; Saturate(value)
  %8366 = fmul fast float %8365, 2.000000e+00
  %8367 = fsub fast float 3.000000e+00, %8366
  %8368 = fmul fast float %8365, %8365
  %8369 = fmul fast float %8368, %8367
  %8370 = select i1 %8361, float 1.000000e+00, float %8369
  %8371 = fmul fast float %8356, %7026
  %8372 = fadd fast float %8357, %8371
  %8373 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8374 = fmul fast float %8370, %8373
  br label %8375

; <label>:8375                                    ; preds = %8347, %8227
  %8376 = phi float [ %8374, %8347 ], [ 0.000000e+00, %8227 ]
  %8377 = fsub fast float 1.000000e+00, %8376
  %8378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8097, float %8098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.i32 %8380, 2
  %8382 = icmp eq i32 %8381, 0
  br i1 %8382, label %8388, label %8383

; <label>:8383                                    ; preds = %8375
  %8384 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8385 = fadd fast float %8379, -1.000000e+00
  %8386 = fmul fast float %8384, %8385
  %8387 = fadd fast float %8386, 1.000000e+00
  br label %8388

; <label>:8388                                    ; preds = %8383, %8375
  %8389 = phi float [ %8387, %8383 ], [ %8377, %8375 ]
  br i1 %8151, label %8390, label %8408

; <label>:8390                                    ; preds = %8388
  %8391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.f32 %8391, 1
  %8393 = fsub fast float %8228, %8392
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = fsub fast float %8228, %8150
  %8396 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  %8397 = fsub fast float %8394, %8396
  %8398 = fsub fast float %8230, %8396
  %8399 = fdiv fast float %8398, %8397
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fmul fast float %8400, 2.000000e+00
  %8402 = fsub fast float 3.000000e+00, %8401
  %8403 = fsub fast float %8379, %8389
  %8404 = fmul fast float %8400, %8400
  %8405 = fmul fast float %8404, %8403
  %8406 = fmul fast float %8405, %8402
  %8407 = fadd fast float %8406, %8389
  br label %8408

; <label>:8408                                    ; preds = %8390, %8388
  %8409 = phi float [ %8407, %8390 ], [ %8389, %8388 ]
  %8410 = call float @dx.op.binary.f32(i32 35, float %8379, float %8409)  ; FMax(a,b)
  %8411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.i32 %8411, 2
  %8413 = and i32 %8412, 1
  %8414 = icmp eq i32 %8413, 0
  %8415 = fcmp fast une float %8410, 1.000000e+00
  %8416 = and i1 %8415, %8414
  br i1 %8416, label %8417, label %8436

; <label>:8417                                    ; preds = %8408
  %8418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8097, float %8098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8424 = fmul fast float %8423, %8419
  %8425 = fmul fast float %8423, %8420
  %8426 = fmul fast float %8423, %8421
  %8427 = fcmp fast ogt float %8379, 0x3FEFFF2E40000000
  %8428 = fsub fast float 1.000000e+00, %8410
  %8429 = fsub fast float 1.000000e+00, %8379
  %8430 = fdiv fast float %8428, %8429
  %8431 = call float @dx.op.unary.f32(i32 7, float %8430)  ; Saturate(value)
  %8432 = select i1 %8427, float 0.000000e+00, float %8431
  %8433 = fmul fast float %8424, %8432
  %8434 = fmul fast float %8425, %8432
  %8435 = fmul fast float %8426, %8432
  br label %8436

; <label>:8436                                    ; preds = %8417, %8408
  %8437 = phi float [ 0.000000e+00, %8408 ], [ %8433, %8417 ]
  %8438 = phi float [ 0.000000e+00, %8408 ], [ %8434, %8417 ]
  %8439 = phi float [ 0.000000e+00, %8408 ], [ %8435, %8417 ]
  %8440 = fmul fast float %8437, %7022
  %8441 = fmul fast float %8438, %7023
  %8442 = fmul fast float %8439, %7024
  %8443 = fmul fast float %8410, %8072
  %8444 = call float @dx.op.dot3.f32(i32 55, float %8410, float %8410, float %8410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8445 = call float @dx.op.dot3.f32(i32 55, float %8440, float %8441, float %8442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8446 = select i1 %235, float %8444, float %8410
  %8447 = select i1 %235, float 1.000000e+00, float %8410
  %8448 = select i1 %235, float %8445, float %8440
  %8449 = select i1 %235, float 0.000000e+00, float %8441
  %8450 = select i1 %235, float 0.000000e+00, float %8442
  %8451 = fmul fast float %8446, %8084
  %8452 = fmul fast float %8446, %8085
  %8453 = fmul fast float %8447, %8086
  %8454 = fadd fast float %8451, %8448
  %8455 = fadd fast float %8452, %8449
  %8456 = fadd fast float %8450, %8453
  %8457 = fmul fast float %8446, %8087
  %8458 = fmul fast float %8446, %8088
  %8459 = fmul fast float %8447, %8089
  br label %8460

; <label>:8460                                    ; preds = %8436, %8093, %8062, %7294
  %8461 = phi float [ %7299, %7294 ], [ %8084, %8062 ], [ %8454, %8436 ], [ %8084, %8093 ]
  %8462 = phi float [ %7300, %7294 ], [ %8085, %8062 ], [ %8455, %8436 ], [ %8085, %8093 ]
  %8463 = phi float [ %7301, %7294 ], [ %8086, %8062 ], [ %8456, %8436 ], [ %8086, %8093 ]
  %8464 = phi float [ %7302, %7294 ], [ %8087, %8062 ], [ %8457, %8436 ], [ %8087, %8093 ]
  %8465 = phi float [ %7303, %7294 ], [ %8088, %8062 ], [ %8458, %8436 ], [ %8088, %8093 ]
  %8466 = phi float [ %7304, %7294 ], [ %8089, %8062 ], [ %8459, %8436 ], [ %8089, %8093 ]
  %8467 = phi float [ %7305, %7294 ], [ %8072, %8062 ], [ %8443, %8436 ], [ %8072, %8093 ]
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8471 = fmul fast float %8469, %87
  %8472 = fmul fast float %8470, %88
  %8473 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8474 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8475 = select i1 %7036, i32 2, i32 0
  %8476 = or i32 %8475, 1
  %8477 = uitofp i32 %8476 to float
  %8478 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8473, float %8474, float %8477, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8479 = extractvalue %dx.types.ResRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.ResRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.ResRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.ResRet.f32 %8478, 3
  %8483 = add nuw nsw i32 %8475, 2
  %8484 = uitofp i32 %8483 to float
  %8485 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8473, float %8474, float %8484, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8486 = extractvalue %dx.types.ResRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.ResRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.ResRet.f32 %8485, 2
  %8489 = extractvalue %dx.types.ResRet.f32 %8485, 3
  %8490 = call float @dx.op.binary.f32(i32 35, float %8480, float %8481)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8479, float %8490)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8491, float %8482)  ; FMax(a,b)
  %8493 = call float @dx.op.binary.f32(i32 36, float %8487, float %8488)  ; FMin(a,b)
  %8494 = call float @dx.op.binary.f32(i32 36, float %8486, float %8493)  ; FMin(a,b)
  %8495 = call float @dx.op.binary.f32(i32 36, float %8494, float %8489)  ; FMin(a,b)
  %8496 = fmul fast float %8492, 2.550000e+02
  %8497 = fadd fast float %8496, 0x3F70101020000000
  %8498 = fptoui float %8497 to i32
  %8499 = fmul fast float %8495, 2.550000e+02
  %8500 = fadd fast float %8499, 0x3F70101020000000
  %8501 = fptoui float %8500 to i32
  %8502 = icmp ult i32 %8498, %8501
  br i1 %8502, label %8503, label %8672

; <label>:8503                                    ; preds = %8460
  %8504 = fcmp fast ogt float %77, 9.843750e-01
  %8505 = fadd fast float %7298, -4.000000e+00
  %8506 = select i1 %8504, float -4.000000e+00, float %8505
  %8507 = call float @dx.op.binary.f32(i32 35, float %8506, float 0.000000e+00)  ; FMax(a,b)
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 0
  %8510 = fadd fast float %8509, %8507
  %8511 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8512 = fmul fast float %8510, %8511
  %8513 = call float @dx.op.unary.f32(i32 23, float %8512)  ; Log(value)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8508, 3
  %8515 = fmul fast float %8514, %8513
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8518 = fmul fast float %8515, %8517
  %8519 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8520 = uitofp i32 %8498 to float
  %8521 = uitofp i32 %8501 to float
  %8522 = fadd fast float %8520, 5.000000e-01
  %8523 = fadd fast float %8521, 5.000000e-01
  %8524 = fmul fast float %8517, %8522
  %8525 = fmul fast float %8517, %8523
  %8526 = fadd fast float %8524, 0x3F0FFB4800000000
  %8527 = fadd fast float %8525, 0xBF0FFB4800000000
  %8528 = call float @dx.op.binary.f32(i32 35, float %8519, float %8526)  ; FMax(a,b)
  %8529 = call float @dx.op.binary.f32(i32 36, float %8528, float %8527)  ; FMin(a,b)
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 1
  %8532 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8533 = extractvalue %dx.types.CBufRet.f32 %8530, 0
  %8534 = select i1 %7036, float %8533, float 0.000000e+00
  %8535 = fmul fast float %8531, %8529
  %8536 = fadd fast float %8534, %8535
  %8537 = fadd fast float %8534, %8532
  %8538 = fsub fast float %8531, %8532
  %8539 = fadd fast float %8538, %8534
  %8540 = call float @dx.op.binary.f32(i32 35, float %8536, float %8537)  ; FMax(a,b)
  %8541 = call float @dx.op.binary.f32(i32 36, float %8540, float %8539)  ; FMin(a,b)
  %8542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8473, float %8474, float %8541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8543 = extractvalue %dx.types.ResRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.ResRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.ResRet.f32 %8542, 2
  %8546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.i32 %8546, 0
  %8548 = extractvalue %dx.types.CBufRet.i32 %8546, 1
  %8549 = uitofp i32 %8547 to float
  %8550 = uitofp i32 %8548 to float
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8554 = fmul fast float %8549, %8473
  %8555 = fmul fast float %8550, %8474
  %8556 = fadd fast float %8554, -5.000000e-01
  %8557 = fadd fast float %8555, -5.000000e-01
  %8558 = call float @dx.op.unary.f32(i32 22, float %8556)  ; Frc(value)
  %8559 = call float @dx.op.unary.f32(i32 22, float %8557)  ; Frc(value)
  %8560 = fmul fast float %8558, %8558
  %8561 = fmul fast float %8560, %8558
  %8562 = fsub fast float 3.000000e+00, %8558
  %8563 = fmul fast float %8560, %8562
  %8564 = fmul fast float %8558, 3.000000e+00
  %8565 = fmul fast float %8561, 3.000000e+00
  %8566 = fmul fast float %8560, 6.000000e+00
  %8567 = fsub fast float %8565, %8566
  %8568 = fadd fast float %8567, 4.000000e+00
  %8569 = fmul fast float %8568, 0x3FC5555560000000
  %8570 = fmul fast float %8561, -3.000000e+00
  %8571 = fadd fast float %8560, %8558
  %8572 = fmul fast float %8571, 3.000000e+00
  %8573 = fadd fast float %8570, 1.000000e+00
  %8574 = fadd fast float %8573, %8572
  %8575 = fmul fast float %8561, 0x3FC5555560000000
  %8576 = fmul fast float %8559, %8559
  %8577 = fmul fast float %8576, %8559
  %8578 = fsub fast float 3.000000e+00, %8559
  %8579 = fmul fast float %8576, %8578
  %8580 = fmul fast float %8559, 3.000000e+00
  %8581 = fmul fast float %8577, 3.000000e+00
  %8582 = fmul fast float %8576, 6.000000e+00
  %8583 = fsub fast float %8581, %8582
  %8584 = fadd fast float %8583, 4.000000e+00
  %8585 = fmul fast float %8584, 0x3FC5555560000000
  %8586 = fmul fast float %8577, -3.000000e+00
  %8587 = fadd fast float %8576, %8559
  %8588 = fmul fast float %8587, 3.000000e+00
  %8589 = fadd fast float %8586, 1.000000e+00
  %8590 = fadd fast float %8589, %8588
  %8591 = fmul fast float %8577, 0x3FC5555560000000
  %8592 = fadd fast float %8558, 1.000000e+00
  %8593 = fsub fast float 1.000000e+00, %8564
  %8594 = fadd fast float %8593, %8563
  %8595 = fadd fast float %8594, %8568
  %8596 = fmul fast float %8595, 0x3FC5555560000000
  %8597 = fdiv fast float %8569, %8596
  %8598 = fsub fast float %8592, %8597
  %8599 = fsub fast float 1.000000e+00, %8558
  %8600 = fadd fast float %8574, %8561
  %8601 = fmul fast float %8600, 0x3FC5555560000000
  %8602 = fdiv fast float %8575, %8601
  %8603 = fadd fast float %8599, %8602
  %8604 = fadd fast float %8559, 1.000000e+00
  %8605 = fsub fast float 1.000000e+00, %8580
  %8606 = fadd fast float %8605, %8579
  %8607 = fadd fast float %8606, %8584
  %8608 = fmul fast float %8607, 0x3FC5555560000000
  %8609 = fdiv fast float %8585, %8608
  %8610 = fsub fast float %8604, %8609
  %8611 = fsub fast float 1.000000e+00, %8559
  %8612 = fadd fast float %8590, %8577
  %8613 = fmul fast float %8612, 0x3FC5555560000000
  %8614 = fdiv fast float %8591, %8613
  %8615 = fadd fast float %8614, %8611
  %8616 = fmul fast float %8598, %8552
  %8617 = fsub fast float %8473, %8616
  %8618 = fmul fast float %8603, %8552
  %8619 = fadd fast float %8618, %8473
  %8620 = fmul fast float %8615, %8553
  %8621 = fadd fast float %8620, %8474
  %8622 = fmul fast float %8610, %8553
  %8623 = fsub fast float %8474, %8622
  %8624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8617, float %8623, float %8541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.ResRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.ResRet.f32 %8624, 2
  %8628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8619, float %8623, float %8541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8617, float %8621, float %8541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8633 = extractvalue %dx.types.ResRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.ResRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.ResRet.f32 %8632, 2
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8619, float %8621, float %8541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.ResRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.ResRet.f32 %8636, 2
  %8640 = fsub fast float %8633, %8625
  %8641 = fsub fast float %8634, %8626
  %8642 = fsub fast float %8635, %8627
  %8643 = fmul fast float %8640, %8613
  %8644 = fmul fast float %8641, %8613
  %8645 = fmul fast float %8642, %8613
  %8646 = fadd fast float %8643, %8625
  %8647 = fadd fast float %8644, %8626
  %8648 = fadd fast float %8645, %8627
  %8649 = fsub fast float %8637, %8629
  %8650 = fsub fast float %8638, %8630
  %8651 = fsub fast float %8639, %8631
  %8652 = fmul fast float %8649, %8613
  %8653 = fmul fast float %8650, %8613
  %8654 = fmul fast float %8651, %8613
  %8655 = fsub fast float %8629, %8646
  %8656 = fadd fast float %8655, %8652
  %8657 = fsub fast float %8630, %8647
  %8658 = fadd fast float %8657, %8653
  %8659 = fsub fast float %8631, %8648
  %8660 = fadd fast float %8659, %8654
  %8661 = fmul fast float %8656, %8601
  %8662 = fmul fast float %8658, %8601
  %8663 = fmul fast float %8660, %8601
  %8664 = fadd fast float %8661, %8646
  %8665 = fadd fast float %8662, %8647
  %8666 = fadd fast float %8663, %8648
  %8667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8667, 1
  %8669 = fmul fast float %8664, %8668
  %8670 = fmul fast float %8665, %8668
  %8671 = fmul fast float %8666, %8668
  br label %8672

; <label>:8672                                    ; preds = %8503, %8460
  %8673 = phi float [ %8543, %8503 ], [ 1.000000e+00, %8460 ]
  %8674 = phi float [ %8544, %8503 ], [ 1.000000e+00, %8460 ]
  %8675 = phi float [ %8545, %8503 ], [ 1.000000e+00, %8460 ]
  %8676 = phi float [ %8669, %8503 ], [ 0.000000e+00, %8460 ]
  %8677 = phi float [ %8670, %8503 ], [ 0.000000e+00, %8460 ]
  %8678 = phi float [ %8671, %8503 ], [ 0.000000e+00, %8460 ]
  %8679 = fmul fast float %8676, %7022
  %8680 = fmul fast float %8677, %7023
  %8681 = fmul fast float %8678, %7024
  %8682 = fmul fast float %8673, %8467
  %8683 = call float @dx.op.dot3.f32(i32 55, float %8673, float %8674, float %8675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8684 = call float @dx.op.dot3.f32(i32 55, float %8679, float %8680, float %8681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8685 = select i1 %235, float %8683, float %8673
  %8686 = select i1 %235, float %8683, float %8674
  %8687 = select i1 %235, float 1.000000e+00, float %8675
  %8688 = select i1 %235, float %8684, float %8679
  %8689 = select i1 %235, float 0.000000e+00, float %8680
  %8690 = select i1 %235, float 0.000000e+00, float %8681
  %8691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.i32 %8691, 3
  %8693 = and i32 %8692, 3
  %8694 = icmp ne i32 %8693, 0
  %8695 = and i32 %8692, 4
  %8696 = icmp ne i32 %8695, 0
  %8697 = and i1 %8694, %8696
  %8698 = and i1 %235, %8697
  br i1 %8698, label %8699, label %8705

; <label>:8699                                    ; preds = %8672
  %8700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8701 = extractvalue %dx.types.CBufRet.f32 %8700, 1
  %8702 = fadd fast float %8682, -1.000000e+00
  %8703 = fmul fast float %8701, %8702
  %8704 = fadd fast float %8703, 1.000000e+00
  br label %8705

; <label>:8705                                    ; preds = %8699, %8672
  %8706 = phi float [ %8704, %8699 ], [ %8682, %8672 ]
  %8707 = fadd fast float %8464, %8461
  %8708 = fmul fast float %8685, %8707
  %8709 = fadd fast float %8708, %8688
  %8710 = fadd fast float %8465, %8462
  %8711 = fmul fast float %8686, %8710
  %8712 = fadd fast float %8711, %8689
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  br i1 %235, label %8715, label %8730

; <label>:8715                                    ; preds = %8705
  %8716 = fadd fast float %8709, %8712
  %8717 = fmul fast float %8714, %8716
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 3
  %8720 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %8721 = fsub fast float %7011, %7005
  %8722 = fadd fast float %8721, %7012
  %8723 = fsub fast float %8722, %8720
  %8724 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %8725 = fmul fast float %8723, %8724
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float %8726, %8719
  %8728 = fmul fast float %8727, %8706
  %8729 = fadd fast float %8728, %8719
  br label %8756

; <label>:8730                                    ; preds = %8705
  %8731 = fadd fast float %8466, %8463
  %8732 = fmul fast float %8687, %8731
  %8733 = fadd fast float %8732, %8690
  %8734 = fmul fast float %8714, %8709
  %8735 = fmul fast float %8714, %8712
  %8736 = fmul fast float %8714, %8733
  %8737 = call float @dx.op.binary.f32(i32 35, float %8735, float %8736)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float %8734, float %8737)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 35, float %7023, float %7024)  ; FMax(a,b)
  %8740 = call float @dx.op.binary.f32(i32 35, float %7022, float %8739)  ; FMax(a,b)
  %8741 = call float @dx.op.binary.f32(i32 35, float %8738, float %8740)  ; FMax(a,b)
  %8742 = fcmp fast ugt float %8741, 0x3F10000000000000
  br i1 %8742, label %8744, label %8743

; <label>:8743                                    ; preds = %8730
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8744

; <label>:8744                                    ; preds = %8743, %8730
  %8745 = add i32 %41, 356
  %8746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8745, i32 undef)  ; BufferLoad(srv,index,wot)
  %8747 = extractvalue %dx.types.ResRet.i32 %8746, 0
  %8748 = and i32 %8747, 32
  %8749 = icmp eq i32 %8748, 0
  br i1 %8749, label %8756, label %8750

; <label>:8750                                    ; preds = %8744
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 0
  %8753 = fmul fast float %8752, 0x3FE99999A0000000
  %8754 = fadd fast float %8752, %8734
  %8755 = fadd fast float %8753, %8736
  br label %8756

; <label>:8756                                    ; preds = %8750, %8744, %8715
  %8757 = phi float [ 1.000000e+00, %8715 ], [ %7023, %8750 ], [ %7023, %8744 ]
  %8758 = phi float [ 1.000000e+00, %8715 ], [ %7024, %8750 ], [ %7024, %8744 ]
  %8759 = phi float [ %8717, %8715 ], [ %8754, %8750 ], [ %8734, %8744 ]
  %8760 = phi float [ %8729, %8715 ], [ %8735, %8750 ], [ %8735, %8744 ]
  %8761 = phi float [ 1.000000e+00, %8715 ], [ %8755, %8750 ], [ %8736, %8744 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8759, float 3.225500e+04)  ; FMin(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8760, float 3.225500e+04)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8761, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8762)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8765 = call float @dx.op.binary.f32(i32 36, float %7022, float 3.225500e+04)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8757, float 3.225500e+04)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8758, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8767)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

