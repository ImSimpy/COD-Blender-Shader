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
; shader hash: e0331e7bcab232afd72611731ebebd1f
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14             t1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t57,space2     1
;                                   texture    byte         r/o     T17     t69,space1     1
;                                   texture     u32          2d     T18     t56,space2     1
;                                   texture     f32          2d     T19     t34,space2     1
;                                   texture     f32          2d     T20      t2,space2     1
;                                   texture     f32          2d     T21      t3,space2     1
;                                   texture     f32          2d     T22      t4,space2     1
;                                   textureunorm_f32     2darray     T23     t80,space2     1
;                                   texture    byte         r/o     T24     t67,space1     1
;                                   texture     f32          2d     T25      t7,space2     1
;                                   texture     f32          2d     T26      t6,space2     1
;                                   texture     f32          2d     T27      t5,space2     1
;                                   texture     f32          2d     T28     t38,space2     1
;                                   texture     f32          1d     T29     t30,space2     1
;                                   texture     f32          3d     T30     t44,space2     1
;                                   texture     f32          3d     T31     t45,space2     1
;                                   texture     f32     2darray     T32     t47,space2     1
;                                   textureunorm_f32     2darray     T33     t85,space2     1
;                                   texture     f32          2d     T34     t83,space2     1
;                                   texture     f32          2d     T35     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = alloca [4 x i32], align 4
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = alloca [12 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %78
  %91 = fmul fast float %89, %79
  %92 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %96, %69
  %98 = fmul fast float %96, %70
  %99 = fmul fast float %96, %71
  %100 = fmul fast float %70, %67
  %101 = fmul fast float %71, %66
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %71, %65
  %104 = fmul fast float %69, %67
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %69, %66
  %107 = fmul fast float %70, %65
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %68
  %110 = fmul fast float %105, %68
  %111 = fmul fast float %108, %68
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %90, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %91, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %81
  %146 = fmul fast float %142, %81
  %147 = fmul fast float %144, %81
  %148 = fmul fast float %90, 5.000000e-01
  %149 = fmul fast float %91, 5.000000e-01
  %150 = fptosi float %148 to i32
  %151 = fptosi float %149 to i32
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = lshr i32 %153, 18
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F4C00EBA0000000
  %157 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %158 = fadd fast float %157, -1.000000e+00
  %159 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %160 = extractvalue %dx.types.Dimensions %159, 0
  %161 = sitofp i32 %160 to float
  %162 = extractvalue %dx.types.Dimensions %159, 1
  %163 = sitofp i32 %162 to float
  %164 = fcmp fast oge float %148, %161
  %165 = fcmp fast oge float %149, %163
  %166 = or i1 %164, %165
  %167 = select i1 %166, float 0x4197782600000000, float %158
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %90
  %172 = fmul fast float %170, %91
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = and i32 %185, 3
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %185, 4
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %202

; <label>:191                                     ; preds = %0
  %192 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %193 = fmul fast float %192, %91
  %194 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %195 = fmul fast float %194, %90
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %195, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = fcmp fast olt float %198, %200
  br label %205

; <label>:202                                     ; preds = %0
  %203 = icmp eq i32 %188, 0
  %204 = and i1 %187, %203
  br label %205

; <label>:205                                     ; preds = %202, %191
  %206 = phi i1 [ %201, %191 ], [ %204, %202 ]
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %90, 2.560000e+02
  %211 = frem fast float %91, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = fadd fast float %215, %209
  %218 = fadd fast float %216, %209
  %219 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %221 = add i32 %44, 156
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = shl i32 %223, 4
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %223, 7
  %228 = and i32 %227, 32752
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %223, 22
  %231 = shl nuw nsw i32 %230, 5
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %44, 216
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %235, 8
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %235, 16
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = add i32 %44, 36
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %44, 288
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = fmul fast float %258, 0x3F50624DE0000000
  %262 = fmul fast float %260, 0x3F50624DE0000000
  %263 = add i32 %44, 172
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = shl i32 %265, 4
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %265, 7
  %270 = and i32 %269, 32752
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %265, 22
  %273 = shl nuw nsw i32 %272, 5
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %44, 232
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %277, 8
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %277, 16
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = add i32 %44, 52
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %44, 304
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = fmul fast float %300, 0x3F50624DE0000000
  %304 = fmul fast float %302, 0x3F50624DE0000000
  %305 = add i32 %44, 188
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = shl i32 %307, 4
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %307, 7
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %307, 22
  %315 = shl nuw nsw i32 %314, 5
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %44, 248
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %319, 8
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %319, 16
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = add i32 %44, 68
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %44, 320
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = fmul fast float %342, 0x3F50624DE0000000
  %346 = fmul fast float %344, 0x3F50624DE0000000
  %347 = add i32 %44, 204
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = shl i32 %349, 4
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %349, 7
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %349, 22
  %357 = shl nuw nsw i32 %356, 5
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %44, 264
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %361, 8
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %361, 16
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = add i32 %44, 84
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = add i32 %44, 336
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fmul fast float %384, 0x3F50624DE0000000
  %388 = fmul fast float %386, 0x3F50624DE0000000
  %389 = add i32 %44, 348
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 32
  %393 = icmp eq i32 %392, 0
  %394 = and i32 %391, 64
  %395 = icmp eq i32 %394, 0
  %396 = and i32 %391, 128
  %397 = icmp eq i32 %396, 0
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %417, label %402

; <label>:402                                     ; preds = %205
  %403 = add i32 %44, 508
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = add i32 %405, 0
  %407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %407, %dx.types.Handle %87, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = fmul fast float %412, %74
  %414 = fmul fast float %409, %75
  %415 = fmul fast float %410, %76
  %416 = fmul fast float %411, %77
  br label %417

; <label>:417                                     ; preds = %402, %205
  %418 = phi float [ %77, %205 ], [ %416, %402 ]
  %419 = phi float [ %76, %205 ], [ %415, %402 ]
  %420 = phi float [ %75, %205 ], [ %414, %402 ]
  %421 = phi float [ %74, %205 ], [ %413, %402 ]
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %445, label %426

; <label>:426                                     ; preds = %417
  %427 = add i32 %44, 44
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 1
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %420, float 1.000000e+00
  %433 = add i32 %44, 60
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %419, float 1.000000e+00
  %439 = add i32 %44, 76
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %418, float 1.000000e+00
  br label %445

; <label>:445                                     ; preds = %426, %417
  %446 = phi float [ %418, %417 ], [ %444, %426 ]
  %447 = phi float [ %419, %417 ], [ %438, %426 ]
  %448 = phi float [ %420, %417 ], [ %432, %426 ]
  %449 = lshr i32 %423, 20
  %450 = and i32 %449, 3
  %451 = add nuw nsw i32 %450, 1
  %452 = add i32 %44, 24
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = add i32 %44, 28
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = or i32 %457, %454
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %1220, label %460

; <label>:460                                     ; preds = %445
  %461 = and i32 %454, 262144
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %47, float 1.000000e+00
  %464 = select i1 %462, float %48, float 0.000000e+00
  %465 = select i1 %462, float %49, float 0.000000e+00
  %466 = select i1 %462, float %50, float 1.000000e+00
  %467 = select i1 %462, float %51, float %72
  %468 = select i1 %462, float %52, float %73
  %469 = add i32 %44, 284
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = fmul fast float %473, 0x3F50624DE0000000
  %475 = add i32 %44, 88
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 16
  %479 = and i32 %478, 255
  %480 = lshr i32 %477, 24
  %481 = add i32 %44, 292
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 65535
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %483, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = add i32 %44, 32
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = shl i32 %490, 4
  %495 = and i32 %494, 32752
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %490, 7
  %498 = and i32 %497, 32752
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %502 = fmul fast float %501, 1.000000e+03
  %503 = fmul fast float %261, %502
  %504 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %505 = fadd fast float %504, %251
  %506 = fmul fast float %262, %502
  %507 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %508 = fadd fast float %507, %253
  %509 = fmul fast float %474, %502
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fmul fast float %510, 0x401921FB60000000
  %512 = fadd fast float %511, %493
  %513 = call float @dx.op.unary.f32(i32 13, float %512)  ; Sin(value)
  %514 = call float @dx.op.unary.f32(i32 12, float %512)  ; Cos(value)
  %515 = fsub fast float -0.000000e+00, %513
  %516 = fadd fast float %467, -5.000000e-01
  %517 = fadd fast float %468, -5.000000e-01
  %518 = fmul fast float %485, %516
  %519 = fmul fast float %487, %517
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fadd fast float %519, 5.000000e-01
  %522 = fmul fast float %496, %520
  %523 = fmul fast float %499, %521
  %524 = fmul fast float %514, %522
  %525 = call float @dx.op.tertiary.f32(i32 46, float %515, float %523, float %524)  ; FMad(a,b,c)
  %526 = fmul fast float %513, %522
  %527 = call float @dx.op.tertiary.f32(i32 46, float %514, float %523, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %505, %525
  %529 = fadd fast float %508, %527
  %530 = icmp ugt i32 %479, 1
  %531 = icmp ugt i32 %477, 33554431
  %532 = or i1 %531, %530
  br i1 %532, label %533, label %558

; <label>:533                                     ; preds = %460
  %534 = add i32 %44, 228
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = fmul fast float %501, %538
  %540 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %541 = mul nuw nsw i32 %479, %480
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %540, %542
  %544 = call float @dx.op.unary.f32(i32 27, float %543)  ; Round_ni(value)
  %545 = fptoui float %544 to i32
  %546 = urem i32 %545, %479
  %547 = udiv i32 %545, %480
  %548 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %549 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %550 = uitofp i32 %546 to float
  %551 = uitofp i32 %547 to float
  %552 = fadd fast float %548, %550
  %553 = fadd fast float %549, %551
  %554 = uitofp i32 %479 to float
  %555 = uitofp i32 %480 to float
  %556 = fdiv fast float %552, %554
  %557 = fdiv fast float %553, %555
  br label %558

; <label>:558                                     ; preds = %533, %460
  %559 = phi float [ %556, %533 ], [ %528, %460 ]
  %560 = phi float [ %557, %533 ], [ %529, %460 ]
  %561 = and i32 %454, 16777216
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %672, label %563

; <label>:563                                     ; preds = %558
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = fadd fast float %565, %145
  %569 = fadd fast float %566, %146
  %570 = fadd fast float %567, %147
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %574 = icmp eq i32 %45, 65535
  br i1 %574, label %669, label %575

; <label>:575                                     ; preds = %563
  %576 = lshr i32 %45, 1
  %577 = shl i32 %576, 2
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %45, 1
  %581 = icmp ne i32 %580, 0
  %582 = lshr i32 %579, 16
  %583 = and i32 %579, 65535
  %584 = select i1 %581, i32 %582, i32 %583
  %585 = icmp eq i32 %584, 65535
  br i1 %585, label %665, label %586

; <label>:586                                     ; preds = %575
  %587 = mul nuw nsw i32 %584, 40
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = add nuw nsw i32 %587, 12
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = add nuw nsw i32 %587, 24
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = add nuw nsw i32 %587, 36
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fsub fast float %568, %589
  %606 = fsub fast float %569, %590
  %607 = fsub fast float %570, %591
  %608 = fmul fast float %604, %605
  %609 = fmul fast float %604, %606
  %610 = fmul fast float %604, %607
  %611 = call float @dx.op.unary.f32(i32 27, float %608)  ; Round_ni(value)
  %612 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %613 = call float @dx.op.unary.f32(i32 27, float %610)  ; Round_ni(value)
  %614 = fadd fast float %611, 5.000000e-01
  %615 = fadd fast float %612, 5.000000e-01
  %616 = fadd fast float %613, 5.000000e-01
  %617 = fmul fast float %614, %594
  %618 = fmul fast float %615, %595
  %619 = fmul fast float %616, %596
  %620 = shl i32 %45, 2
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %626 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %627 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %624, %dx.types.Handle %39, float %625, float %626, float %627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = fmul fast float %629, 1.023000e+03
  %633 = fmul fast float %630, 1.023000e+03
  %634 = fmul fast float %631, 1.023000e+03
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = call float @dx.op.unary.f32(i32 27, float %635)  ; Round_ni(value)
  %639 = call float @dx.op.unary.f32(i32 27, float %636)  ; Round_ni(value)
  %640 = call float @dx.op.unary.f32(i32 27, float %637)  ; Round_ni(value)
  %641 = fsub fast float %608, %611
  %642 = fsub fast float %609, %612
  %643 = fsub fast float %610, %613
  %644 = fmul fast float %641, 7.500000e-01
  %645 = fmul fast float %642, 7.500000e-01
  %646 = fmul fast float %643, 7.500000e-01
  %647 = fadd fast float %611, 1.250000e-01
  %648 = fadd fast float %647, %644
  %649 = fadd fast float %648, %638
  %650 = fadd fast float %612, 1.250000e-01
  %651 = fadd fast float %650, %645
  %652 = fadd fast float %651, %639
  %653 = fadd fast float %613, 1.250000e-01
  %654 = fadd fast float %653, %646
  %655 = fadd fast float %654, %640
  %656 = fmul fast float %649, %599
  %657 = fmul fast float %652, %600
  %658 = fmul fast float %655, %601
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %662, %dx.types.Handle %37, float %656, float %657, float %658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  br label %665

; <label>:665                                     ; preds = %586, %575
  %666 = phi float [ %664, %586 ], [ -1.000000e+00, %575 ]
  %667 = fadd fast float %666, %573
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %665, %563
  %670 = phi float [ %668, %665 ], [ %573, %563 ]
  %671 = fmul fast float %670, %421
  br label %672

; <label>:672                                     ; preds = %669, %558
  %673 = phi float [ %671, %669 ], [ %421, %558 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 256
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %724, label %678

; <label>:678                                     ; preds = %672
  %679 = add i32 %44, 440
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %681, 0
  %683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %683, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = add i32 %44, 100
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = shl i32 %688, 4
  %690 = and i32 %689, 32752
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = lshr i32 %688, 7
  %693 = and i32 %692, 32752
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = fsub fast float 1.000000e+00, %673
  %696 = call float @dx.op.binary.f32(i32 35, float %695, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %697 = bitcast float %673 to i32
  %698 = sitofp i32 %697 to float
  %699 = fadd fast float %698, 0xC1CFBF8940000000
  %700 = fmul fast float %694, %699
  %701 = fadd fast float %700, 0x41CFBF8940000000
  %702 = fptosi float %701 to i32
  %703 = bitcast i32 %702 to float
  %704 = bitcast float %696 to i32
  %705 = sitofp i32 %704 to float
  %706 = fadd fast float %705, 0xC1CFBF8940000000
  %707 = fmul fast float %706, %694
  %708 = fadd fast float %707, 0x41CFBF8940000000
  %709 = fptosi float %708 to i32
  %710 = bitcast i32 %709 to float
  %711 = fmul fast float %703, %691
  %712 = fmul fast float %710, %691
  %713 = fsub fast float %696, %711
  %714 = fadd fast float %712, %696
  %715 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %716 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %717 = fsub fast float %685, %715
  %718 = fsub fast float %716, %715
  %719 = bitcast float %718 to i32
  %720 = sub nsw i32 2129859010, %719
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %721, %717
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  br label %724

; <label>:724                                     ; preds = %678, %672
  %725 = phi float [ %723, %678 ], [ %673, %672 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 128
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %746, label %730

; <label>:730                                     ; preds = %724
  %731 = add i32 %44, 424
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 524288
  %741 = icmp ne i32 %740, 0
  %742 = fcmp fast ogt float %737, 0x3FE0101020000000
  %743 = select i1 %742, float 1.000000e+00, float 0.000000e+00
  %744 = select i1 %741, float %743, float %737
  %745 = fmul fast float %744, %725
  br label %746

; <label>:746                                     ; preds = %730, %724
  %747 = phi float [ %745, %730 ], [ %725, %724 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 16
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %950, label %752

; <label>:752                                     ; preds = %746
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %44, 376
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = add i32 %757, 0
  %759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %759, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = and i32 %754, 255
  %766 = uitofp i32 %765 to float
  %767 = lshr i32 %754, 8
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %764, %766
  %771 = fadd fast float %770, %769
  %772 = fmul fast float %771, 0x3F70101000000000
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 512
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %785, label %777

; <label>:777                                     ; preds = %752
  %778 = add i32 %44, 460
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  br label %785

; <label>:785                                     ; preds = %777, %752
  %786 = phi float [ %784, %777 ], [ 1.000000e+00, %752 ]
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 33554432
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %897, label %791

; <label>:791                                     ; preds = %785
  %792 = add i32 %44, 224
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %794, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = add i32 %44, 228
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %820 = add i32 %44, 220
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 24
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = and i32 %822, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %822, 8
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = lshr i32 %822, 16
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = bitcast float %761 to i32
  %838 = ashr i32 %837, 1
  %839 = sub nsw i32 1597463174, %838
  %840 = bitcast i32 %839 to float
  %841 = fmul fast float %761, 5.000000e-01
  %842 = fmul fast float %840, %840
  %843 = fmul fast float %842, %841
  %844 = fsub fast float 1.500000e+00, %843
  %845 = fmul fast float %840, %761
  %846 = fmul fast float %845, %844
  %847 = bitcast float %762 to i32
  %848 = ashr i32 %847, 1
  %849 = sub nsw i32 1597463174, %848
  %850 = bitcast i32 %849 to float
  %851 = fmul fast float %762, 5.000000e-01
  %852 = fmul fast float %850, %850
  %853 = fmul fast float %852, %851
  %854 = fsub fast float 1.500000e+00, %853
  %855 = fmul fast float %850, %762
  %856 = fmul fast float %855, %854
  %857 = bitcast float %763 to i32
  %858 = ashr i32 %857, 1
  %859 = sub nsw i32 1597463174, %858
  %860 = bitcast i32 %859 to float
  %861 = fmul fast float %763, 5.000000e-01
  %862 = fmul fast float %860, %860
  %863 = fmul fast float %862, %861
  %864 = fsub fast float 1.500000e+00, %863
  %865 = fmul fast float %860, %763
  %866 = fmul fast float %865, %864
  %867 = fsub fast float %846, %828
  %868 = fsub fast float %856, %832
  %869 = fsub fast float %866, %836
  %870 = fmul fast float %867, %796
  %871 = fmul fast float %868, %798
  %872 = fmul fast float %869, %803
  %873 = fadd fast float %870, %811
  %874 = fadd fast float %871, %815
  %875 = fadd fast float %872, %819
  %876 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %877 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %878 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %879 = fmul fast float %876, %876
  %880 = fmul fast float %877, %877
  %881 = fmul fast float %878, %878
  %882 = fsub fast float %879, %761
  %883 = fsub fast float %880, %762
  %884 = fsub fast float %881, %763
  %885 = fmul fast float %882, %786
  %886 = fmul fast float %883, %786
  %887 = fmul fast float %884, %786
  %888 = fadd fast float %885, %761
  %889 = fadd fast float %886, %762
  %890 = fadd fast float %887, %763
  %891 = fadd fast float %808, %772
  %892 = fsub fast float %891, %825
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fsub fast float %893, %772
  %895 = fmul fast float %894, %786
  %896 = fadd fast float %895, %772
  br label %950

; <label>:897                                     ; preds = %785
  %898 = and i32 %788, 134217728
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %934, label %900

; <label>:900                                     ; preds = %897
  %901 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %902 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %903 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %904 = fadd fast float %901, -5.000000e-01
  %905 = fadd fast float %902, -5.000000e-01
  %906 = fadd fast float %903, -5.000000e-01
  %907 = fmul fast float %904, %786
  %908 = fmul fast float %905, %786
  %909 = fmul fast float %906, %786
  %910 = fadd fast float %907, 5.000000e-01
  %911 = fadd fast float %908, 5.000000e-01
  %912 = fadd fast float %909, 5.000000e-01
  %913 = call float @dx.op.unary.f32(i32 24, float %761)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %762)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %763)  ; Sqrt(value)
  %916 = fmul fast float %910, 2.000000e+00
  %917 = fsub fast float 1.000000e+00, %916
  %918 = fmul fast float %917, %913
  %919 = fadd fast float %918, %916
  %920 = fmul fast float %919, %913
  %921 = fmul fast float %911, 2.000000e+00
  %922 = fsub fast float 1.000000e+00, %921
  %923 = fmul fast float %922, %914
  %924 = fadd fast float %923, %921
  %925 = fmul fast float %924, %914
  %926 = fmul fast float %912, 2.000000e+00
  %927 = fsub fast float 1.000000e+00, %926
  %928 = fmul fast float %927, %915
  %929 = fadd fast float %928, %926
  %930 = fmul fast float %929, %915
  %931 = fmul fast float %920, %920
  %932 = fmul fast float %925, %925
  %933 = fmul fast float %930, %930
  br label %950

; <label>:934                                     ; preds = %897
  %935 = fmul fast float %238, %238
  %936 = fmul fast float %242, %242
  %937 = fmul fast float %246, %246
  %938 = fadd fast float %935, -1.000000e+00
  %939 = fadd fast float %936, -1.000000e+00
  %940 = fadd fast float %937, -1.000000e+00
  %941 = fmul fast float %786, %938
  %942 = fmul fast float %786, %939
  %943 = fmul fast float %786, %940
  %944 = fadd fast float %941, 1.000000e+00
  %945 = fadd fast float %942, 1.000000e+00
  %946 = fadd fast float %943, 1.000000e+00
  %947 = fmul fast float %944, %761
  %948 = fmul fast float %945, %762
  %949 = fmul fast float %946, %763
  br label %950

; <label>:950                                     ; preds = %934, %900, %791, %746
  %951 = phi float [ %896, %791 ], [ %772, %900 ], [ %772, %934 ], [ 0x3FA23C0BE0000000, %746 ]
  %952 = phi float [ %888, %791 ], [ %931, %900 ], [ %947, %934 ], [ 1.000000e+00, %746 ]
  %953 = phi float [ %889, %791 ], [ %932, %900 ], [ %948, %934 ], [ 1.000000e+00, %746 ]
  %954 = phi float [ %890, %791 ], [ %933, %900 ], [ %949, %934 ], [ 1.000000e+00, %746 ]
  %955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.i32 %955, 1
  %957 = and i32 %956, 1
  %958 = icmp ne i32 %957, 0
  %959 = add i32 %44, 356
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 32
  %963 = icmp ne i32 %962, 0
  %964 = and i1 %958, %963
  %965 = select i1 %964, float 1.000000e+00, float %952
  %966 = select i1 %964, float 0x3FD3333340000000, float %953
  %967 = select i1 %964, float 0x3FD3333340000000, float %954
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1044, label %972

; <label>:972                                     ; preds = %950
  %973 = add i32 %44, 92
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = add i32 %44, 392
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %978, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %980, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  %985 = extractvalue %dx.types.ResRet.f32 %981, 3
  %986 = and i32 %975, 255
  %987 = uitofp i32 %986 to float
  %988 = lshr i32 %975, 8
  %989 = and i32 %988, 255
  %990 = uitofp i32 %989 to float
  %991 = lshr i32 %975, 16
  %992 = and i32 %991, 255
  %993 = uitofp i32 %992 to float
  %994 = fmul fast float %993, 0x3F70101000000000
  %995 = fmul fast float %982, %987
  %996 = fadd fast float %995, %990
  %997 = fmul fast float %996, 0x3F70101000000000
  %998 = fadd fast float %983, -5.000000e-01
  %999 = fadd fast float %985, -5.000000e-01
  %1000 = fmul fast float %998, %994
  %1001 = fmul fast float %999, %994
  %1002 = fadd fast float %1000, 5.000000e-01
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fmul fast float %1002, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = fmul fast float %1003, 2.000000e+00
  %1007 = fadd fast float %1006, -1.000000e+00
  %1008 = fadd fast float %1005, %1007
  %1009 = fmul fast float %1008, 5.000000e-01
  %1010 = fsub fast float %1005, %1007
  %1011 = fmul fast float %1010, 5.000000e-01
  %1012 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1013 = fsub fast float 1.000000e+00, %1012
  %1014 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1015 = fsub fast float %1013, %1014
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1009, float %1011, float %1015, float %1009, float %1011, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.unary.f32(i32 25, float %1016)  ; Rsqrt(value)
  %1018 = fmul fast float %1009, %1017
  %1019 = fmul fast float %1011, %1017
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 67108864
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1040, label %1024

; <label>:1024                                    ; preds = %972
  %1025 = add i32 %44, 280
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 65535
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 65535
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = lshr i32 %1027, 16
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = fsub fast float %997, %1035
  %1037 = fmul fast float %1036, %1029
  %1038 = fadd fast float %1037, %1033
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  br label %1040

; <label>:1040                                    ; preds = %1024, %972
  %1041 = phi float [ %1039, %1024 ], [ %997, %972 ]
  %1042 = call float @dx.op.dot2.f32(i32 54, float %1018, float %1019, float %463, float %464)  ; Dot2(ax,ay,bx,by)
  %1043 = call float @dx.op.dot2.f32(i32 54, float %1018, float %1019, float %465, float %466)  ; Dot2(ax,ay,bx,by)
  br label %1044

; <label>:1044                                    ; preds = %1040, %950
  %1045 = phi float [ %1041, %1040 ], [ 0x3FD6666660000000, %950 ]
  %1046 = phi float [ %1042, %1040 ], [ 0.000000e+00, %950 ]
  %1047 = phi float [ %1043, %1040 ], [ 0.000000e+00, %950 ]
  %1048 = phi float [ %984, %1040 ], [ 1.000000e+00, %950 ]
  %1049 = add i32 %44, 160
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = lshr i32 %1051, 22
  %1053 = shl nuw nsw i32 %1052, 5
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 64
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1092, label %1059

; <label>:1059                                    ; preds = %1044
  %1060 = add i32 %44, 408
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = add i32 %1062, 0
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 131072
  %1068 = icmp eq i32 %1067, 0
  %1069 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1064, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = fmul fast float %1070, %226
  %1074 = fmul fast float %1071, %229
  %1075 = fmul fast float %1072, %232
  br i1 %1068, label %1082, label %1076

; <label>:1076                                    ; preds = %1059
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1079 = fmul fast float %1078, %1073
  %1080 = fmul fast float %1078, %1074
  %1081 = fmul fast float %1078, %1075
  br label %1082

; <label>:1082                                    ; preds = %1076, %1059
  %1083 = phi float [ %1079, %1076 ], [ %1073, %1059 ]
  %1084 = phi float [ %1080, %1076 ], [ %1074, %1059 ]
  %1085 = phi float [ %1081, %1076 ], [ %1075, %1059 ]
  %1086 = fmul fast float %1083, %1054
  %1087 = select i1 %206, float %1086, float %1083
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1084, float %1085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = select i1 %206, float 0.000000e+00, float %1083
  %1090 = select i1 %206, float %1088, float %1084
  %1091 = select i1 %206, float 0.000000e+00, float %1085
  br label %1092

; <label>:1092                                    ; preds = %1082, %1044
  %1093 = phi float [ %1089, %1082 ], [ 0.000000e+00, %1044 ]
  %1094 = phi float [ %1090, %1082 ], [ 0.000000e+00, %1044 ]
  %1095 = phi float [ %1091, %1082 ], [ 0.000000e+00, %1044 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 1024
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1130, label %1100

; <label>:1100                                    ; preds = %1092
  %1101 = add i32 %44, 152
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F70101020000000
  %1107 = lshr i32 %1103, 8
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = lshr i32 %1103, 16
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = fmul fast float %1106, %1106
  %1116 = fmul fast float %1110, %1110
  %1117 = fmul fast float %1114, %1114
  %1118 = add i32 %44, 476
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1122, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = fmul fast float %1115, %1124
  %1128 = fmul fast float %1116, %1125
  %1129 = fmul fast float %1117, %1126
  br label %1130

; <label>:1130                                    ; preds = %1100, %1092
  %1131 = phi float [ %1127, %1100 ], [ 0.000000e+00, %1092 ]
  %1132 = phi float [ %1128, %1100 ], [ 0.000000e+00, %1092 ]
  %1133 = phi float [ %1129, %1100 ], [ 0.000000e+00, %1092 ]
  %1134 = fcmp fast ogt float %1131, 0.000000e+00
  %1135 = fcmp fast ogt float %1132, 0.000000e+00
  %1136 = fcmp fast ogt float %1133, 0.000000e+00
  %1137 = call float @dx.op.unary.f32(i32 23, float %1131)  ; Log(value)
  %1138 = call float @dx.op.unary.f32(i32 23, float %1132)  ; Log(value)
  %1139 = call float @dx.op.unary.f32(i32 23, float %1133)  ; Log(value)
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = lshr i32 %1141, 7
  %1143 = and i32 %1142, 32752
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = fmul fast float %1137, 0xBFE62E4300000000
  %1146 = fmul fast float %1145, %1144
  %1147 = fmul fast float %1138, 0xBFE62E4300000000
  %1148 = fmul fast float %1147, %1144
  %1149 = fmul fast float %1139, 0xBFE62E4300000000
  %1150 = fmul fast float %1149, %1144
  %1151 = select i1 %1134, float %1146, float 1.270000e+02
  %1152 = select i1 %1135, float %1148, float 1.270000e+02
  %1153 = select i1 %1136, float %1150, float 1.270000e+02
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 10240
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1202, label %1158

; <label>:1158                                    ; preds = %1130
  %1159 = add i32 %44, 492
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1163, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 1048576
  %1170 = icmp ne i32 %1169, 0
  %1171 = and i32 %1168, 8192
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1188, label %1173

; <label>:1173                                    ; preds = %1158
  %1174 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1175 = select i1 %1170, float %1174, float %1165
  %1176 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1177 = select i1 %1170, float %1176, float %1165
  %1178 = add i32 %44, 96
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = lshr i32 %1180, 16
  %1182 = and i32 %1181, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F80101020000000
  %1185 = fmul fast float %1184, %1177
  %1186 = fmul fast float %1184, %1165
  %1187 = fmul fast float %1184, %1175
  br label %1188

; <label>:1188                                    ; preds = %1173, %1158
  %1189 = phi float [ %1185, %1173 ], [ 0.000000e+00, %1158 ]
  %1190 = phi float [ %1186, %1173 ], [ 0.000000e+00, %1158 ]
  %1191 = phi float [ %1187, %1173 ], [ 0.000000e+00, %1158 ]
  %1192 = and i32 %1168, 2048
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1202, label %1194

; <label>:1194                                    ; preds = %1188
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = shl i32 %1196, 4
  %1198 = and i32 %1197, 32752
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = fmul fast float %1199, %1166
  %1201 = call float @dx.op.binary.f32(i32 35, float %1200, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1202

; <label>:1202                                    ; preds = %1194, %1188, %1130
  %1203 = phi float [ %1189, %1194 ], [ %1189, %1188 ], [ 0.000000e+00, %1130 ]
  %1204 = phi float [ %1190, %1194 ], [ %1190, %1188 ], [ 0.000000e+00, %1130 ]
  %1205 = phi float [ %1191, %1194 ], [ %1191, %1188 ], [ 0.000000e+00, %1130 ]
  %1206 = phi float [ %1201, %1194 ], [ 0x3F70101020000000, %1188 ], [ 0x3F70101020000000, %1130 ]
  %1207 = add i32 %44, 96
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 255
  %1211 = uitofp i32 %1210 to float
  %1212 = lshr i32 %1209, 8
  %1213 = and i32 %1212, 255
  %1214 = uitofp i32 %1213 to float
  %1215 = call float @dx.op.dot3.f32(i32 55, float %965, float %966, float %967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1216 = fmul fast float %1214, %1215
  %1217 = fadd fast float %1216, %1211
  %1218 = fmul fast float %1217, 0x3F70101020000000
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  br label %1220

; <label>:1220                                    ; preds = %1202, %445
  %1221 = phi float [ 0.000000e+00, %445 ], [ %1046, %1202 ]
  %1222 = phi float [ 0.000000e+00, %445 ], [ %1047, %1202 ]
  %1223 = phi float [ 0.000000e+00, %445 ], [ %965, %1202 ]
  %1224 = phi float [ 0.000000e+00, %445 ], [ %966, %1202 ]
  %1225 = phi float [ 0.000000e+00, %445 ], [ %967, %1202 ]
  %1226 = phi float [ 0.000000e+00, %445 ], [ %1093, %1202 ]
  %1227 = phi float [ 0.000000e+00, %445 ], [ %1094, %1202 ]
  %1228 = phi float [ 0.000000e+00, %445 ], [ %1095, %1202 ]
  %1229 = phi float [ 0.000000e+00, %445 ], [ %1203, %1202 ]
  %1230 = phi float [ 0.000000e+00, %445 ], [ %1204, %1202 ]
  %1231 = phi float [ 0.000000e+00, %445 ], [ %1205, %1202 ]
  %1232 = phi float [ 0.000000e+00, %445 ], [ %1151, %1202 ]
  %1233 = phi float [ 0.000000e+00, %445 ], [ %1152, %1202 ]
  %1234 = phi float [ 0.000000e+00, %445 ], [ %1153, %1202 ]
  %1235 = phi float [ 0.000000e+00, %445 ], [ %951, %1202 ]
  %1236 = phi float [ 0.000000e+00, %445 ], [ %747, %1202 ]
  %1237 = phi float [ 0.000000e+00, %445 ], [ %1045, %1202 ]
  %1238 = phi float [ 0.000000e+00, %445 ], [ %1048, %1202 ]
  %1239 = phi float [ 0.000000e+00, %445 ], [ %1206, %1202 ]
  %1240 = phi float [ 0.000000e+00, %445 ], [ %1219, %1202 ]
  br i1 %393, label %2278, label %1241

; <label>:1241                                    ; preds = %1220
  %1242 = icmp ult i32 %451, 2
  %1243 = add i32 %44, 40
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %44, 44
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = or i32 %1248, %1245
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %2278, label %1251

; <label>:1251                                    ; preds = %1241
  %1252 = and i32 %1245, 262144
  %1253 = icmp ne i32 %1252, 0
  %1254 = select i1 %1253, float %47, float 1.000000e+00
  %1255 = select i1 %1253, float %48, float 0.000000e+00
  %1256 = select i1 %1253, float %49, float 0.000000e+00
  %1257 = select i1 %1253, float %50, float 1.000000e+00
  %1258 = select i1 %1253, float %51, float %72
  %1259 = select i1 %1253, float %52, float %73
  %1260 = add i32 %44, 300
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = lshr i32 %1262, 16
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = fmul fast float %1264, 0x3F50624DE0000000
  %1266 = add i32 %44, 104
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 16
  %1270 = and i32 %1269, 255
  %1271 = lshr i32 %1268, 24
  %1272 = add i32 %44, 308
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 65535
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = lshr i32 %1274, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = add i32 %44, 48
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 22
  %1283 = shl nuw nsw i32 %1282, 5
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = shl i32 %1281, 4
  %1286 = and i32 %1285, 32752
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1281, 7
  %1289 = and i32 %1288, 32752
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1293 = fmul fast float %1292, 1.000000e+03
  %1294 = fmul fast float %303, %1293
  %1295 = call float @dx.op.unary.f32(i32 22, float %1294)  ; Frc(value)
  %1296 = fadd fast float %1295, %293
  %1297 = fmul fast float %304, %1293
  %1298 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1299 = fadd fast float %1298, %295
  %1300 = fmul fast float %1265, %1293
  %1301 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1302 = fmul fast float %1301, 0x401921FB60000000
  %1303 = fadd fast float %1302, %1284
  %1304 = call float @dx.op.unary.f32(i32 13, float %1303)  ; Sin(value)
  %1305 = call float @dx.op.unary.f32(i32 12, float %1303)  ; Cos(value)
  %1306 = fsub fast float -0.000000e+00, %1304
  %1307 = fadd fast float %1258, -5.000000e-01
  %1308 = fadd fast float %1259, -5.000000e-01
  %1309 = fmul fast float %1276, %1307
  %1310 = fmul fast float %1278, %1308
  %1311 = fadd fast float %1309, 5.000000e-01
  %1312 = fadd fast float %1310, 5.000000e-01
  %1313 = fmul fast float %1287, %1311
  %1314 = fmul fast float %1290, %1312
  %1315 = fmul fast float %1305, %1313
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %1314, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1304, %1313
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %1314, float %1317)  ; FMad(a,b,c)
  %1319 = fadd fast float %1296, %1316
  %1320 = fadd fast float %1299, %1318
  %1321 = icmp ugt i32 %1270, 1
  %1322 = icmp ugt i32 %1268, 33554431
  %1323 = or i1 %1322, %1321
  br i1 %1323, label %1324, label %1349

; <label>:1324                                    ; preds = %1251
  %1325 = add i32 %44, 244
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = lshr i32 %1327, 16
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = fmul fast float %1292, %1329
  %1331 = call float @dx.op.unary.f32(i32 22, float %1330)  ; Frc(value)
  %1332 = mul nuw nsw i32 %1270, %1271
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1331, %1333
  %1335 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1336 = fptoui float %1335 to i32
  %1337 = urem i32 %1336, %1270
  %1338 = udiv i32 %1336, %1271
  %1339 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1340 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1341 = uitofp i32 %1337 to float
  %1342 = uitofp i32 %1338 to float
  %1343 = fadd fast float %1339, %1341
  %1344 = fadd fast float %1340, %1342
  %1345 = uitofp i32 %1270 to float
  %1346 = uitofp i32 %1271 to float
  %1347 = fdiv fast float %1343, %1345
  %1348 = fdiv fast float %1344, %1346
  br label %1349

; <label>:1349                                    ; preds = %1324, %1251
  %1350 = phi float [ %1347, %1324 ], [ %1319, %1251 ]
  %1351 = phi float [ %1348, %1324 ], [ %1320, %1251 ]
  %1352 = and i32 %1245, 16777216
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1463, label %1354

; <label>:1354                                    ; preds = %1349
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1359 = fadd fast float %1356, %145
  %1360 = fadd fast float %1357, %146
  %1361 = fadd fast float %1358, %147
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = icmp eq i32 %45, 65535
  br i1 %1365, label %1460, label %1366

; <label>:1366                                    ; preds = %1354
  %1367 = lshr i32 %45, 1
  %1368 = shl i32 %1367, 2
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %45, 1
  %1372 = icmp ne i32 %1371, 0
  %1373 = lshr i32 %1370, 16
  %1374 = and i32 %1370, 65535
  %1375 = select i1 %1372, i32 %1373, i32 %1374
  %1376 = icmp eq i32 %1375, 65535
  br i1 %1376, label %1456, label %1377

; <label>:1377                                    ; preds = %1366
  %1378 = mul nuw nsw i32 %1375, 40
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = add nuw nsw i32 %1378, 12
  %1384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.ResRet.f32 %1384, 2
  %1388 = add nuw nsw i32 %1378, 24
  %1389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = add nuw nsw i32 %1378, 36
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = fsub fast float %1359, %1380
  %1397 = fsub fast float %1360, %1381
  %1398 = fsub fast float %1361, %1382
  %1399 = fmul fast float %1395, %1396
  %1400 = fmul fast float %1395, %1397
  %1401 = fmul fast float %1395, %1398
  %1402 = call float @dx.op.unary.f32(i32 27, float %1399)  ; Round_ni(value)
  %1403 = call float @dx.op.unary.f32(i32 27, float %1400)  ; Round_ni(value)
  %1404 = call float @dx.op.unary.f32(i32 27, float %1401)  ; Round_ni(value)
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = fmul fast float %1405, %1385
  %1409 = fmul fast float %1406, %1386
  %1410 = fmul fast float %1407, %1387
  %1411 = shl i32 %45, 2
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call float @dx.op.unary.f32(i32 22, float %1408)  ; Frc(value)
  %1417 = call float @dx.op.unary.f32(i32 22, float %1409)  ; Frc(value)
  %1418 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1415, %dx.types.Handle %39, float %1416, float %1417, float %1418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = fmul fast float %1420, 1.023000e+03
  %1424 = fmul fast float %1421, 1.023000e+03
  %1425 = fmul fast float %1422, 1.023000e+03
  %1426 = fadd fast float %1423, 5.000000e-01
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = call float @dx.op.unary.f32(i32 27, float %1426)  ; Round_ni(value)
  %1430 = call float @dx.op.unary.f32(i32 27, float %1427)  ; Round_ni(value)
  %1431 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1432 = fsub fast float %1399, %1402
  %1433 = fsub fast float %1400, %1403
  %1434 = fsub fast float %1401, %1404
  %1435 = fmul fast float %1432, 7.500000e-01
  %1436 = fmul fast float %1433, 7.500000e-01
  %1437 = fmul fast float %1434, 7.500000e-01
  %1438 = fadd fast float %1402, 1.250000e-01
  %1439 = fadd fast float %1438, %1435
  %1440 = fadd fast float %1439, %1429
  %1441 = fadd fast float %1403, 1.250000e-01
  %1442 = fadd fast float %1441, %1436
  %1443 = fadd fast float %1442, %1430
  %1444 = fadd fast float %1404, 1.250000e-01
  %1445 = fadd fast float %1444, %1437
  %1446 = fadd fast float %1445, %1431
  %1447 = fmul fast float %1440, %1390
  %1448 = fmul fast float %1443, %1391
  %1449 = fmul fast float %1446, %1392
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1453, %dx.types.Handle %37, float %1447, float %1448, float %1449, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  br label %1456

; <label>:1456                                    ; preds = %1377, %1366
  %1457 = phi float [ %1455, %1377 ], [ -1.000000e+00, %1366 ]
  %1458 = fadd fast float %1457, %1364
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  br label %1460

; <label>:1460                                    ; preds = %1456, %1354
  %1461 = phi float [ %1459, %1456 ], [ %1364, %1354 ]
  %1462 = fmul fast float %1461, %448
  br label %1463

; <label>:1463                                    ; preds = %1460, %1349
  %1464 = phi float [ %1462, %1460 ], [ %448, %1349 ]
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 256
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1515, label %1469

; <label>:1469                                    ; preds = %1463
  %1470 = add i32 %44, 444
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %1472, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1474, %dx.types.Handle %87, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = add i32 %44, 116
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = shl i32 %1479, 4
  %1481 = and i32 %1480, 32752
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1479, 7
  %1484 = and i32 %1483, 32752
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = fsub fast float 1.000000e+00, %1464
  %1487 = call float @dx.op.binary.f32(i32 35, float %1486, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1488 = bitcast float %1464 to i32
  %1489 = sitofp i32 %1488 to float
  %1490 = fadd fast float %1489, 0xC1CFBF8940000000
  %1491 = fmul fast float %1485, %1490
  %1492 = fadd fast float %1491, 0x41CFBF8940000000
  %1493 = fptosi float %1492 to i32
  %1494 = bitcast i32 %1493 to float
  %1495 = bitcast float %1487 to i32
  %1496 = sitofp i32 %1495 to float
  %1497 = fadd fast float %1496, 0xC1CFBF8940000000
  %1498 = fmul fast float %1497, %1485
  %1499 = fadd fast float %1498, 0x41CFBF8940000000
  %1500 = fptosi float %1499 to i32
  %1501 = bitcast i32 %1500 to float
  %1502 = fmul fast float %1494, %1482
  %1503 = fmul fast float %1501, %1482
  %1504 = fsub fast float %1487, %1502
  %1505 = fadd fast float %1503, %1487
  %1506 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1507 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1508 = fsub fast float %1476, %1506
  %1509 = fsub fast float %1507, %1506
  %1510 = bitcast float %1509 to i32
  %1511 = sub nsw i32 2129859010, %1510
  %1512 = bitcast i32 %1511 to float
  %1513 = fmul fast float %1512, %1508
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  br label %1515

; <label>:1515                                    ; preds = %1469, %1463
  %1516 = phi float [ %1514, %1469 ], [ %1464, %1463 ]
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 128
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1537, label %1521

; <label>:1521                                    ; preds = %1515
  %1522 = add i32 %44, 428
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %1524, 0
  %1526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1526, %dx.types.Handle %87, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 524288
  %1532 = icmp ne i32 %1531, 0
  %1533 = fcmp fast ogt float %1528, 0x3FE0101020000000
  %1534 = select i1 %1533, float 1.000000e+00, float 0.000000e+00
  %1535 = select i1 %1532, float %1534, float %1528
  %1536 = fmul fast float %1535, %1516
  br label %1537

; <label>:1537                                    ; preds = %1521, %1515
  %1538 = phi float [ %1536, %1521 ], [ %1516, %1515 ]
  %1539 = fcmp fast ult float %1538, 0x3F70101020000000
  br i1 %1539, label %2278, label %1540

; <label>:1540                                    ; preds = %1537
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 16
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1743, label %1545

; <label>:1545                                    ; preds = %1540
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = add i32 %44, 380
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %86, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1553, 2
  %1557 = extractvalue %dx.types.ResRet.f32 %1553, 3
  %1558 = and i32 %1547, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = lshr i32 %1547, 8
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1557, %1559
  %1564 = fadd fast float %1563, %1562
  %1565 = fmul fast float %1564, 0x3F70101000000000
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 512
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1578, label %1570

; <label>:1570                                    ; preds = %1545
  %1571 = add i32 %44, 464
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = add i32 %1573, 0
  %1575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1575, %dx.types.Handle %87, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  br label %1578

; <label>:1578                                    ; preds = %1570, %1545
  %1579 = phi float [ %1577, %1570 ], [ 1.000000e+00, %1545 ]
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 33554432
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1690, label %1584

; <label>:1584                                    ; preds = %1578
  %1585 = add i32 %44, 240
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 65535
  %1589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1588)  ; LegacyF16ToF32(value)
  %1590 = lshr i32 %1587, 16
  %1591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1590)  ; LegacyF16ToF32(value)
  %1592 = add i32 %44, 244
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 65535
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1613 = add i32 %44, 236
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 24
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = and i32 %1615, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1615, 8
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = lshr i32 %1615, 16
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = bitcast float %1554 to i32
  %1631 = ashr i32 %1630, 1
  %1632 = sub nsw i32 1597463174, %1631
  %1633 = bitcast i32 %1632 to float
  %1634 = fmul fast float %1554, 5.000000e-01
  %1635 = fmul fast float %1633, %1633
  %1636 = fmul fast float %1635, %1634
  %1637 = fsub fast float 1.500000e+00, %1636
  %1638 = fmul fast float %1633, %1554
  %1639 = fmul fast float %1638, %1637
  %1640 = bitcast float %1555 to i32
  %1641 = ashr i32 %1640, 1
  %1642 = sub nsw i32 1597463174, %1641
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1555, 5.000000e-01
  %1645 = fmul fast float %1643, %1643
  %1646 = fmul fast float %1645, %1644
  %1647 = fsub fast float 1.500000e+00, %1646
  %1648 = fmul fast float %1643, %1555
  %1649 = fmul fast float %1648, %1647
  %1650 = bitcast float %1556 to i32
  %1651 = ashr i32 %1650, 1
  %1652 = sub nsw i32 1597463174, %1651
  %1653 = bitcast i32 %1652 to float
  %1654 = fmul fast float %1556, 5.000000e-01
  %1655 = fmul fast float %1653, %1653
  %1656 = fmul fast float %1655, %1654
  %1657 = fsub fast float 1.500000e+00, %1656
  %1658 = fmul fast float %1653, %1556
  %1659 = fmul fast float %1658, %1657
  %1660 = fsub fast float %1639, %1621
  %1661 = fsub fast float %1649, %1625
  %1662 = fsub fast float %1659, %1629
  %1663 = fmul fast float %1660, %1589
  %1664 = fmul fast float %1661, %1591
  %1665 = fmul fast float %1662, %1596
  %1666 = fadd fast float %1663, %1604
  %1667 = fadd fast float %1664, %1608
  %1668 = fadd fast float %1665, %1612
  %1669 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1670 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1671 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1672 = fmul fast float %1669, %1669
  %1673 = fmul fast float %1670, %1670
  %1674 = fmul fast float %1671, %1671
  %1675 = fsub fast float %1672, %1554
  %1676 = fsub fast float %1673, %1555
  %1677 = fsub fast float %1674, %1556
  %1678 = fmul fast float %1675, %1579
  %1679 = fmul fast float %1676, %1579
  %1680 = fmul fast float %1677, %1579
  %1681 = fadd fast float %1678, %1554
  %1682 = fadd fast float %1679, %1555
  %1683 = fadd fast float %1680, %1556
  %1684 = fadd fast float %1601, %1565
  %1685 = fsub fast float %1684, %1618
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1687 = fsub fast float %1686, %1565
  %1688 = fmul fast float %1687, %1579
  %1689 = fadd fast float %1688, %1565
  br label %1743

; <label>:1690                                    ; preds = %1578
  %1691 = and i32 %1581, 134217728
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1727, label %1693

; <label>:1693                                    ; preds = %1690
  %1694 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1695 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1696 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1697 = fadd fast float %1694, -5.000000e-01
  %1698 = fadd fast float %1695, -5.000000e-01
  %1699 = fadd fast float %1696, -5.000000e-01
  %1700 = fmul fast float %1697, %1579
  %1701 = fmul fast float %1698, %1579
  %1702 = fmul fast float %1699, %1579
  %1703 = fadd fast float %1700, 5.000000e-01
  %1704 = fadd fast float %1701, 5.000000e-01
  %1705 = fadd fast float %1702, 5.000000e-01
  %1706 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1707 = call float @dx.op.unary.f32(i32 24, float %1555)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1709 = fmul fast float %1703, 2.000000e+00
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1706
  %1712 = fadd fast float %1711, %1709
  %1713 = fmul fast float %1712, %1706
  %1714 = fmul fast float %1704, 2.000000e+00
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1715, %1707
  %1717 = fadd fast float %1716, %1714
  %1718 = fmul fast float %1717, %1707
  %1719 = fmul fast float %1705, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1708
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1708
  %1724 = fmul fast float %1713, %1713
  %1725 = fmul fast float %1718, %1718
  %1726 = fmul fast float %1723, %1723
  br label %1743

; <label>:1727                                    ; preds = %1690
  %1728 = fmul fast float %280, %280
  %1729 = fmul fast float %284, %284
  %1730 = fmul fast float %288, %288
  %1731 = fadd fast float %1728, -1.000000e+00
  %1732 = fadd fast float %1729, -1.000000e+00
  %1733 = fadd fast float %1730, -1.000000e+00
  %1734 = fmul fast float %1579, %1731
  %1735 = fmul fast float %1579, %1732
  %1736 = fmul fast float %1579, %1733
  %1737 = fadd fast float %1734, 1.000000e+00
  %1738 = fadd fast float %1735, 1.000000e+00
  %1739 = fadd fast float %1736, 1.000000e+00
  %1740 = fmul fast float %1737, %1554
  %1741 = fmul fast float %1738, %1555
  %1742 = fmul fast float %1739, %1556
  br label %1743

; <label>:1743                                    ; preds = %1727, %1693, %1584, %1540
  %1744 = phi float [ %1689, %1584 ], [ %1565, %1693 ], [ %1565, %1727 ], [ 0x3FA23C0BE0000000, %1540 ]
  %1745 = phi float [ %1681, %1584 ], [ %1724, %1693 ], [ %1740, %1727 ], [ 1.000000e+00, %1540 ]
  %1746 = phi float [ %1682, %1584 ], [ %1725, %1693 ], [ %1741, %1727 ], [ 1.000000e+00, %1540 ]
  %1747 = phi float [ %1683, %1584 ], [ %1726, %1693 ], [ %1742, %1727 ], [ 1.000000e+00, %1540 ]
  %1748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.i32 %1748, 1
  %1750 = and i32 %1749, 1
  %1751 = icmp ne i32 %1750, 0
  %1752 = add i32 %44, 356
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 32
  %1756 = icmp ne i32 %1755, 0
  %1757 = and i1 %1751, %1756
  %1758 = select i1 %1757, float 1.000000e+00, float %1745
  %1759 = select i1 %1757, float 0x3FD3333340000000, float %1746
  %1760 = select i1 %1757, float 0x3FD3333340000000, float %1747
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1837, label %1765

; <label>:1765                                    ; preds = %1743
  %1766 = add i32 %44, 108
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %44, 396
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %1771, 0
  %1773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1773, %dx.types.Handle %86, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = extractvalue %dx.types.ResRet.f32 %1774, 3
  %1779 = and i32 %1768, 255
  %1780 = uitofp i32 %1779 to float
  %1781 = lshr i32 %1768, 8
  %1782 = and i32 %1781, 255
  %1783 = uitofp i32 %1782 to float
  %1784 = lshr i32 %1768, 16
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = fmul fast float %1786, 0x3F70101000000000
  %1788 = fmul fast float %1775, %1780
  %1789 = fadd fast float %1788, %1783
  %1790 = fmul fast float %1789, 0x3F70101000000000
  %1791 = fadd fast float %1776, -5.000000e-01
  %1792 = fadd fast float %1778, -5.000000e-01
  %1793 = fmul fast float %1791, %1787
  %1794 = fmul fast float %1792, %1787
  %1795 = fadd fast float %1793, 5.000000e-01
  %1796 = fadd fast float %1794, 5.000000e-01
  %1797 = fmul fast float %1795, 2.000000e+00
  %1798 = fadd fast float %1797, -1.000000e+00
  %1799 = fmul fast float %1796, 2.000000e+00
  %1800 = fadd fast float %1799, -1.000000e+00
  %1801 = fadd fast float %1798, %1800
  %1802 = fmul fast float %1801, 5.000000e-01
  %1803 = fsub fast float %1798, %1800
  %1804 = fmul fast float %1803, 5.000000e-01
  %1805 = call float @dx.op.unary.f32(i32 6, float %1802)  ; FAbs(value)
  %1806 = fsub fast float 1.000000e+00, %1805
  %1807 = call float @dx.op.unary.f32(i32 6, float %1804)  ; FAbs(value)
  %1808 = fsub fast float %1806, %1807
  %1809 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1804, float %1808, float %1802, float %1804, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1810 = call float @dx.op.unary.f32(i32 25, float %1809)  ; Rsqrt(value)
  %1811 = fmul fast float %1802, %1810
  %1812 = fmul fast float %1804, %1810
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 67108864
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1833, label %1817

; <label>:1817                                    ; preds = %1765
  %1818 = add i32 %44, 296
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 65535
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 65535
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = lshr i32 %1820, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = fsub fast float %1790, %1828
  %1830 = fmul fast float %1829, %1822
  %1831 = fadd fast float %1830, %1826
  %1832 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  br label %1833

; <label>:1833                                    ; preds = %1817, %1765
  %1834 = phi float [ %1832, %1817 ], [ %1790, %1765 ]
  %1835 = call float @dx.op.dot2.f32(i32 54, float %1811, float %1812, float %1254, float %1255)  ; Dot2(ax,ay,bx,by)
  %1836 = call float @dx.op.dot2.f32(i32 54, float %1811, float %1812, float %1256, float %1257)  ; Dot2(ax,ay,bx,by)
  br label %1837

; <label>:1837                                    ; preds = %1833, %1743
  %1838 = phi float [ %1834, %1833 ], [ 0x3FD6666660000000, %1743 ]
  %1839 = phi float [ %1835, %1833 ], [ 0.000000e+00, %1743 ]
  %1840 = phi float [ %1836, %1833 ], [ 0.000000e+00, %1743 ]
  %1841 = phi float [ %1777, %1833 ], [ 1.000000e+00, %1743 ]
  %1842 = add i32 %44, 176
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 22
  %1846 = shl nuw nsw i32 %1845, 5
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 64
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1885, label %1852

; <label>:1852                                    ; preds = %1837
  %1853 = add i32 %44, 412
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %1855, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = and i32 %1859, 131072
  %1861 = icmp eq i32 %1860, 0
  %1862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1857, %dx.types.Handle %86, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = fmul fast float %1863, %268
  %1867 = fmul fast float %1864, %271
  %1868 = fmul fast float %1865, %274
  br i1 %1861, label %1875, label %1869

; <label>:1869                                    ; preds = %1852
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = fmul fast float %1871, %1866
  %1873 = fmul fast float %1871, %1867
  %1874 = fmul fast float %1871, %1868
  br label %1875

; <label>:1875                                    ; preds = %1869, %1852
  %1876 = phi float [ %1872, %1869 ], [ %1866, %1852 ]
  %1877 = phi float [ %1873, %1869 ], [ %1867, %1852 ]
  %1878 = phi float [ %1874, %1869 ], [ %1868, %1852 ]
  %1879 = fmul fast float %1876, %1847
  %1880 = select i1 %206, float %1879, float %1876
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1880, float %1877, float %1878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = select i1 %206, float 0.000000e+00, float %1876
  %1883 = select i1 %206, float %1881, float %1877
  %1884 = select i1 %206, float 0.000000e+00, float %1878
  br label %1885

; <label>:1885                                    ; preds = %1875, %1837
  %1886 = phi float [ %1882, %1875 ], [ 0.000000e+00, %1837 ]
  %1887 = phi float [ %1883, %1875 ], [ 0.000000e+00, %1837 ]
  %1888 = phi float [ %1884, %1875 ], [ 0.000000e+00, %1837 ]
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 1024
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %1923, label %1893

; <label>:1893                                    ; preds = %1885
  %1894 = add i32 %44, 168
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 255
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1898, 0x3F70101020000000
  %1900 = lshr i32 %1896, 8
  %1901 = and i32 %1900, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = lshr i32 %1896, 16
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = fmul fast float %1899, %1899
  %1909 = fmul fast float %1903, %1903
  %1910 = fmul fast float %1907, %1907
  %1911 = add i32 %44, 480
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %1913, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1915, %dx.types.Handle %87, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = fmul fast float %1908, %1917
  %1921 = fmul fast float %1909, %1918
  %1922 = fmul fast float %1910, %1919
  br label %1923

; <label>:1923                                    ; preds = %1893, %1885
  %1924 = phi float [ %1920, %1893 ], [ 0.000000e+00, %1885 ]
  %1925 = phi float [ %1921, %1893 ], [ 0.000000e+00, %1885 ]
  %1926 = phi float [ %1922, %1893 ], [ 0.000000e+00, %1885 ]
  %1927 = fcmp fast ogt float %1924, 0.000000e+00
  %1928 = fcmp fast ogt float %1925, 0.000000e+00
  %1929 = fcmp fast ogt float %1926, 0.000000e+00
  %1930 = call float @dx.op.unary.f32(i32 23, float %1924)  ; Log(value)
  %1931 = call float @dx.op.unary.f32(i32 23, float %1925)  ; Log(value)
  %1932 = call float @dx.op.unary.f32(i32 23, float %1926)  ; Log(value)
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = lshr i32 %1934, 7
  %1936 = and i32 %1935, 32752
  %1937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1936)  ; LegacyF16ToF32(value)
  %1938 = fmul fast float %1930, 0xBFE62E4300000000
  %1939 = fmul fast float %1938, %1937
  %1940 = fmul fast float %1931, 0xBFE62E4300000000
  %1941 = fmul fast float %1940, %1937
  %1942 = fmul fast float %1932, 0xBFE62E4300000000
  %1943 = fmul fast float %1942, %1937
  %1944 = select i1 %1927, float %1939, float 1.270000e+02
  %1945 = select i1 %1928, float %1941, float 1.270000e+02
  %1946 = select i1 %1929, float %1943, float 1.270000e+02
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = and i32 %1948, 10240
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1995, label %1951

; <label>:1951                                    ; preds = %1923
  %1952 = add i32 %44, 496
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = add i32 %1954, 0
  %1956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1956, %dx.types.Handle %87, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 3
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 1048576
  %1963 = icmp ne i32 %1962, 0
  %1964 = and i32 %1961, 8192
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %1981, label %1966

; <label>:1966                                    ; preds = %1951
  %1967 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1968 = select i1 %1963, float %1967, float %1958
  %1969 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1970 = select i1 %1963, float %1969, float %1958
  %1971 = add i32 %44, 112
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = lshr i32 %1973, 16
  %1975 = and i32 %1974, 255
  %1976 = uitofp i32 %1975 to float
  %1977 = fmul fast float %1976, 0x3F80101020000000
  %1978 = fmul fast float %1977, %1970
  %1979 = fmul fast float %1977, %1958
  %1980 = fmul fast float %1977, %1968
  br label %1981

; <label>:1981                                    ; preds = %1966, %1951
  %1982 = phi float [ %1978, %1966 ], [ 0.000000e+00, %1951 ]
  %1983 = phi float [ %1979, %1966 ], [ 0.000000e+00, %1951 ]
  %1984 = phi float [ %1980, %1966 ], [ 0.000000e+00, %1951 ]
  %1985 = and i32 %1961, 2048
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %1995, label %1987

; <label>:1987                                    ; preds = %1981
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = shl i32 %1989, 4
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = fmul fast float %1992, %1959
  %1994 = call float @dx.op.binary.f32(i32 35, float %1993, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1995

; <label>:1995                                    ; preds = %1987, %1981, %1923
  %1996 = phi float [ %1982, %1987 ], [ %1982, %1981 ], [ 0.000000e+00, %1923 ]
  %1997 = phi float [ %1983, %1987 ], [ %1983, %1981 ], [ 0.000000e+00, %1923 ]
  %1998 = phi float [ %1984, %1987 ], [ %1984, %1981 ], [ 0.000000e+00, %1923 ]
  %1999 = phi float [ %1994, %1987 ], [ 0x3F70101020000000, %1981 ], [ 0x3F70101020000000, %1923 ]
  %2000 = add i32 %44, 112
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 255
  %2004 = uitofp i32 %2003 to float
  %2005 = lshr i32 %2002, 8
  %2006 = and i32 %2005, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1759, float %1760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = fmul fast float %2007, %2008
  %2010 = fadd fast float %2009, %2004
  %2011 = fmul fast float %2010, 0x3F70101020000000
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  br i1 %1242, label %2013, label %2048

; <label>:2013                                    ; preds = %1995
  %2014 = fmul fast float %1999, 2.000000e+00
  %2015 = fcmp fast olt float %1944, 1.270000e+02
  %2016 = fcmp fast olt float %1945, 1.270000e+02
  %2017 = fcmp fast olt float %1946, 1.270000e+02
  %2018 = fmul fast float %1944, 0xBFF7154760000000
  %2019 = fmul fast float %2018, %2014
  %2020 = fmul fast float %1945, 0xBFF7154760000000
  %2021 = fmul fast float %2020, %2014
  %2022 = fmul fast float %1946, 0xBFF7154760000000
  %2023 = fmul fast float %2022, %2014
  %2024 = call float @dx.op.unary.f32(i32 21, float %2019)  ; Exp(value)
  %2025 = call float @dx.op.unary.f32(i32 21, float %2021)  ; Exp(value)
  %2026 = call float @dx.op.unary.f32(i32 21, float %2023)  ; Exp(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2028 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2030 = fadd fast float %2027, -1.000000e+00
  %2031 = select i1 %2015, float %2030, float -1.000000e+00
  %2032 = fadd fast float %2028, -1.000000e+00
  %2033 = select i1 %2016, float %2032, float -1.000000e+00
  %2034 = fadd fast float %2029, -1.000000e+00
  %2035 = select i1 %2017, float %2034, float -1.000000e+00
  %2036 = fmul fast float %2031, %1538
  %2037 = fmul fast float %2033, %1538
  %2038 = fmul fast float %2035, %1538
  %2039 = fadd fast float %2036, 1.000000e+00
  %2040 = fadd fast float %2037, 1.000000e+00
  %2041 = fadd fast float %2038, 1.000000e+00
  %2042 = fmul fast float %2039, %1223
  %2043 = fmul fast float %2040, %1224
  %2044 = fmul fast float %2041, %1225
  %2045 = fmul fast float %2039, %1226
  %2046 = fmul fast float %2040, %1227
  %2047 = fmul fast float %2041, %1228
  br label %2048

; <label>:2048                                    ; preds = %2013, %1995
  %2049 = phi float [ %2042, %2013 ], [ %1223, %1995 ]
  %2050 = phi float [ %2043, %2013 ], [ %1224, %1995 ]
  %2051 = phi float [ %2044, %2013 ], [ %1225, %1995 ]
  %2052 = phi float [ %2045, %2013 ], [ %1226, %1995 ]
  %2053 = phi float [ %2046, %2013 ], [ %1227, %1995 ]
  %2054 = phi float [ %2047, %2013 ], [ %1228, %1995 ]
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 3
  %2058 = icmp eq i32 %2057, 3
  br i1 %2058, label %2137, label %2059

; <label>:2059                                    ; preds = %2048
  %2060 = and i32 %2056, 16
  %2061 = icmp ne i32 %2060, 0
  %2062 = select i1 %2061, float %1538, float 0.000000e+00
  %2063 = icmp eq i32 %2057, 0
  br i1 %2063, label %2064, label %2092

; <label>:2064                                    ; preds = %2059
  %2065 = and i32 %2056, 64
  %2066 = icmp ne i32 %2065, 0
  %2067 = select i1 %2066, float %1538, float 0.000000e+00
  %2068 = fsub fast float %1758, %2049
  %2069 = fsub fast float %1759, %2050
  %2070 = fsub fast float %1760, %2051
  %2071 = fmul fast float %2062, %2068
  %2072 = fmul fast float %2062, %2069
  %2073 = fmul fast float %2062, %2070
  %2074 = fadd fast float %2071, %2049
  %2075 = fadd fast float %2072, %2050
  %2076 = fadd fast float %2073, %2051
  %2077 = fsub fast float %1744, %1235
  %2078 = fmul fast float %2062, %2077
  %2079 = fadd fast float %2078, %1235
  %2080 = fsub fast float %1886, %2052
  %2081 = fsub fast float %1887, %2053
  %2082 = fsub fast float %1888, %2054
  %2083 = fmul fast float %2067, %2080
  %2084 = fmul fast float %2067, %2081
  %2085 = fmul fast float %2067, %2082
  %2086 = fadd fast float %2083, %2052
  %2087 = fadd fast float %2084, %2053
  %2088 = fadd fast float %2085, %2054
  %2089 = fsub fast float %2012, %1240
  %2090 = fmul fast float %2062, %2089
  %2091 = fadd fast float %2090, %1240
  br label %2137

; <label>:2092                                    ; preds = %2059
  %2093 = icmp eq i32 %2057, 1
  br i1 %2093, label %2094, label %2107

; <label>:2094                                    ; preds = %2092
  %2095 = fadd fast float %1758, -1.000000e+00
  %2096 = fadd fast float %1759, -1.000000e+00
  %2097 = fadd fast float %1760, -1.000000e+00
  %2098 = fmul fast float %2062, %2095
  %2099 = fmul fast float %2062, %2096
  %2100 = fmul fast float %2062, %2097
  %2101 = fadd fast float %2098, 1.000000e+00
  %2102 = fadd fast float %2099, 1.000000e+00
  %2103 = fadd fast float %2100, 1.000000e+00
  %2104 = fmul fast float %2101, %2049
  %2105 = fmul fast float %2102, %2050
  %2106 = fmul fast float %2103, %2051
  br label %2137

; <label>:2107                                    ; preds = %2092
  %2108 = icmp eq i32 %2057, 2
  br i1 %2108, label %2109, label %2137

; <label>:2109                                    ; preds = %2107
  %2110 = call float @dx.op.unary.f32(i32 24, float %1758)  ; Sqrt(value)
  %2111 = call float @dx.op.unary.f32(i32 24, float %1759)  ; Sqrt(value)
  %2112 = call float @dx.op.unary.f32(i32 24, float %1760)  ; Sqrt(value)
  %2113 = fadd fast float %2110, -5.000000e-01
  %2114 = fadd fast float %2111, -5.000000e-01
  %2115 = fadd fast float %2112, -5.000000e-01
  %2116 = fmul fast float %2113, %2062
  %2117 = fmul fast float %2114, %2062
  %2118 = fmul fast float %2115, %2062
  %2119 = fadd fast float %2116, 5.000000e-01
  %2120 = fadd fast float %2117, 5.000000e-01
  %2121 = fadd fast float %2118, 5.000000e-01
  %2122 = fmul fast float %2119, 2.000000e+00
  %2123 = fsub fast float 1.000000e+00, %2122
  %2124 = fmul fast float %2123, %2049
  %2125 = fadd fast float %2124, %2122
  %2126 = fmul fast float %2125, %2049
  %2127 = fmul fast float %2120, 2.000000e+00
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = fmul fast float %2128, %2050
  %2130 = fadd fast float %2129, %2127
  %2131 = fmul fast float %2130, %2050
  %2132 = fmul fast float %2121, 2.000000e+00
  %2133 = fsub fast float 1.000000e+00, %2132
  %2134 = fmul fast float %2133, %2051
  %2135 = fadd fast float %2134, %2132
  %2136 = fmul fast float %2135, %2051
  br label %2137

; <label>:2137                                    ; preds = %2109, %2107, %2094, %2064, %2048
  %2138 = phi float [ %2049, %2048 ], [ %2126, %2109 ], [ %2049, %2107 ], [ %2104, %2094 ], [ %2074, %2064 ]
  %2139 = phi float [ %2050, %2048 ], [ %2131, %2109 ], [ %2050, %2107 ], [ %2105, %2094 ], [ %2075, %2064 ]
  %2140 = phi float [ %2051, %2048 ], [ %2136, %2109 ], [ %2051, %2107 ], [ %2106, %2094 ], [ %2076, %2064 ]
  %2141 = phi float [ %2052, %2048 ], [ %2052, %2109 ], [ %2052, %2107 ], [ %2052, %2094 ], [ %2086, %2064 ]
  %2142 = phi float [ %2053, %2048 ], [ %2053, %2109 ], [ %2053, %2107 ], [ %2053, %2094 ], [ %2087, %2064 ]
  %2143 = phi float [ %2054, %2048 ], [ %2054, %2109 ], [ %2054, %2107 ], [ %2054, %2094 ], [ %2088, %2064 ]
  %2144 = phi float [ %1235, %2048 ], [ %1235, %2109 ], [ %1235, %2107 ], [ %1235, %2094 ], [ %2079, %2064 ]
  %2145 = phi float [ %1240, %2048 ], [ %1240, %2109 ], [ %1240, %2107 ], [ %1240, %2094 ], [ %2091, %2064 ]
  %2146 = and i32 %2056, 12
  %2147 = icmp eq i32 %2146, 12
  br i1 %2147, label %2278, label %2148

; <label>:2148                                    ; preds = %2137
  %2149 = and i32 %2056, 2097184
  %2150 = icmp eq i32 %2149, 2097184
  %2151 = select i1 %2150, float %1538, float 0.000000e+00
  %2152 = and i32 %2056, 4194336
  %2153 = icmp eq i32 %2152, 4194336
  %2154 = select i1 %2153, float %1538, float 0.000000e+00
  %2155 = and i32 %2056, 8388640
  %2156 = icmp eq i32 %2155, 8388640
  %2157 = select i1 %2156, float %1538, float 0.000000e+00
  %2158 = and i32 %2056, 1024
  %2159 = icmp ne i32 %2158, 0
  %2160 = select i1 %2159, float %1538, float 0.000000e+00
  %2161 = and i32 %2056, 2048
  %2162 = icmp ne i32 %2161, 0
  %2163 = select i1 %2162, float %1538, float 0.000000e+00
  %2164 = and i32 %2056, 8192
  %2165 = icmp ne i32 %2164, 0
  %2166 = select i1 %2165, float %1538, float 0.000000e+00
  %2167 = icmp eq i32 %2146, 0
  br i1 %2167, label %2168, label %2202

; <label>:2168                                    ; preds = %2148
  %2169 = fsub fast float %1839, %1221
  %2170 = fsub fast float %1840, %1222
  %2171 = fmul fast float %2151, %2169
  %2172 = fmul fast float %2151, %2170
  %2173 = fadd fast float %2171, %1221
  %2174 = fadd fast float %2172, %1222
  %2175 = fsub fast float %1841, %1238
  %2176 = fmul fast float %2154, %2175
  %2177 = fadd fast float %2176, %1238
  %2178 = fsub fast float %1838, %1237
  %2179 = fmul fast float %2157, %2178
  %2180 = fadd fast float %2179, %1237
  %2181 = fsub fast float %1944, %1232
  %2182 = fsub fast float %1945, %1233
  %2183 = fsub fast float %1946, %1234
  %2184 = fmul fast float %2160, %2181
  %2185 = fmul fast float %2160, %2182
  %2186 = fmul fast float %2160, %2183
  %2187 = fadd fast float %2184, %1232
  %2188 = fadd fast float %2185, %1233
  %2189 = fadd fast float %2186, %1234
  %2190 = fsub fast float %1999, %1239
  %2191 = fmul fast float %2163, %2190
  %2192 = fadd fast float %2191, %1239
  %2193 = fsub fast float %1996, %1229
  %2194 = fsub fast float %1997, %1230
  %2195 = fsub fast float %1998, %1231
  %2196 = fmul fast float %2166, %2193
  %2197 = fmul fast float %2166, %2194
  %2198 = fmul fast float %2166, %2195
  %2199 = fadd fast float %2196, %1229
  %2200 = fadd fast float %2197, %1230
  %2201 = fadd fast float %2198, %1231
  br label %2278

; <label>:2202                                    ; preds = %2148
  %2203 = icmp eq i32 %2146, 4
  br i1 %2203, label %2204, label %2250

; <label>:2204                                    ; preds = %2202
  %2205 = fmul fast float %2151, %1839
  %2206 = fmul fast float %2151, %1840
  %2207 = fadd fast float %2205, %1221
  %2208 = fadd fast float %2206, %1222
  %2209 = call float @dx.op.binary.f32(i32 36, float %1238, float %1841)  ; FMin(a,b)
  %2210 = fsub fast float %2209, %1238
  %2211 = fmul fast float %2210, %2154
  %2212 = fadd fast float %2211, %1238
  %2213 = fadd fast float %1838, %1237
  %2214 = fmul fast float %2213, 0x3FF337FAE0000000
  %2215 = fmul fast float %1237, %1237
  %2216 = fmul fast float %1838, %1838
  %2217 = fadd fast float %2216, %2215
  %2218 = fmul fast float %2217, 0x3FE5152B00000000
  %2219 = fmul fast float %1237, 0xBFCC1F85E0000000
  %2220 = fmul fast float %2219, %1838
  %2221 = fadd fast float %2220, 0xBFE1363700000000
  %2222 = fadd fast float %2221, %2214
  %2223 = fsub fast float %2222, %2218
  %2224 = fmul fast float %2213, 0x3FBA6F0D00000000
  %2225 = fmul fast float %2217, 0x3FD0432880000000
  %2226 = fmul fast float %1237, 0xBFEF110800000000
  %2227 = fmul fast float %2226, %1838
  %2228 = fadd fast float %2227, 1.000000e+00
  %2229 = fsub fast float %2228, %2224
  %2230 = fadd fast float %2229, %2225
  %2231 = fdiv fast float %2223, %2230
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fsub fast float %2232, %1237
  %2234 = fmul fast float %2233, %2157
  %2235 = fadd fast float %2234, %1237
  %2236 = fmul fast float %2160, %1944
  %2237 = fmul fast float %2160, %1945
  %2238 = fmul fast float %2160, %1946
  %2239 = fadd fast float %2236, %1232
  %2240 = fadd fast float %2237, %1233
  %2241 = fadd fast float %2238, %1234
  %2242 = fmul fast float %2163, %1999
  %2243 = fadd fast float %2242, %1239
  %2244 = fmul fast float %2166, %1996
  %2245 = fmul fast float %2166, %1997
  %2246 = fmul fast float %2166, %1998
  %2247 = fadd fast float %2244, %1229
  %2248 = fadd fast float %2245, %1230
  %2249 = fadd fast float %2246, %1231
  br label %2278

; <label>:2250                                    ; preds = %2202
  %2251 = icmp eq i32 %2146, 8
  br i1 %2251, label %2252, label %2278

; <label>:2252                                    ; preds = %2250
  %2253 = fmul fast float %2151, %1839
  %2254 = fmul fast float %2151, %1840
  %2255 = fadd fast float %2253, %1221
  %2256 = fadd fast float %2254, %1222
  %2257 = call float @dx.op.binary.f32(i32 36, float %1238, float %1841)  ; FMin(a,b)
  %2258 = fsub fast float %2257, %1238
  %2259 = fmul fast float %2258, %2154
  %2260 = fadd fast float %2259, %1238
  %2261 = fsub fast float %1838, %1237
  %2262 = fmul fast float %2157, %2261
  %2263 = fadd fast float %2262, %1237
  %2264 = fmul fast float %2160, %1944
  %2265 = fmul fast float %2160, %1945
  %2266 = fmul fast float %2160, %1946
  %2267 = fadd fast float %2264, %1232
  %2268 = fadd fast float %2265, %1233
  %2269 = fadd fast float %2266, %1234
  %2270 = fmul fast float %2163, %1999
  %2271 = fadd fast float %2270, %1239
  %2272 = fmul fast float %2166, %1996
  %2273 = fmul fast float %2166, %1997
  %2274 = fmul fast float %2166, %1998
  %2275 = fadd fast float %2272, %1229
  %2276 = fadd fast float %2273, %1230
  %2277 = fadd fast float %2274, %1231
  br label %2278

; <label>:2278                                    ; preds = %2252, %2250, %2204, %2168, %2137, %1537, %1241, %1220
  %2279 = phi float [ %1221, %2137 ], [ %1221, %1537 ], [ %1221, %1220 ], [ %2255, %2252 ], [ %1221, %2250 ], [ %2207, %2204 ], [ %2173, %2168 ], [ %1221, %1241 ]
  %2280 = phi float [ %1222, %2137 ], [ %1222, %1537 ], [ %1222, %1220 ], [ %2256, %2252 ], [ %1222, %2250 ], [ %2208, %2204 ], [ %2174, %2168 ], [ %1222, %1241 ]
  %2281 = phi float [ %2138, %2137 ], [ %1223, %1537 ], [ %1223, %1220 ], [ %2138, %2252 ], [ %2138, %2250 ], [ %2138, %2204 ], [ %2138, %2168 ], [ %1223, %1241 ]
  %2282 = phi float [ %2139, %2137 ], [ %1224, %1537 ], [ %1224, %1220 ], [ %2139, %2252 ], [ %2139, %2250 ], [ %2139, %2204 ], [ %2139, %2168 ], [ %1224, %1241 ]
  %2283 = phi float [ %2140, %2137 ], [ %1225, %1537 ], [ %1225, %1220 ], [ %2140, %2252 ], [ %2140, %2250 ], [ %2140, %2204 ], [ %2140, %2168 ], [ %1225, %1241 ]
  %2284 = phi float [ %2141, %2137 ], [ %1226, %1537 ], [ %1226, %1220 ], [ %2141, %2252 ], [ %2141, %2250 ], [ %2141, %2204 ], [ %2141, %2168 ], [ %1226, %1241 ]
  %2285 = phi float [ %2142, %2137 ], [ %1227, %1537 ], [ %1227, %1220 ], [ %2142, %2252 ], [ %2142, %2250 ], [ %2142, %2204 ], [ %2142, %2168 ], [ %1227, %1241 ]
  %2286 = phi float [ %2143, %2137 ], [ %1228, %1537 ], [ %1228, %1220 ], [ %2143, %2252 ], [ %2143, %2250 ], [ %2143, %2204 ], [ %2143, %2168 ], [ %1228, %1241 ]
  %2287 = phi float [ %1229, %2137 ], [ %1229, %1537 ], [ %1229, %1220 ], [ %2275, %2252 ], [ %1229, %2250 ], [ %2247, %2204 ], [ %2199, %2168 ], [ %1229, %1241 ]
  %2288 = phi float [ %1230, %2137 ], [ %1230, %1537 ], [ %1230, %1220 ], [ %2276, %2252 ], [ %1230, %2250 ], [ %2248, %2204 ], [ %2200, %2168 ], [ %1230, %1241 ]
  %2289 = phi float [ %1231, %2137 ], [ %1231, %1537 ], [ %1231, %1220 ], [ %2277, %2252 ], [ %1231, %2250 ], [ %2249, %2204 ], [ %2201, %2168 ], [ %1231, %1241 ]
  %2290 = phi float [ %1232, %2137 ], [ %1232, %1537 ], [ %1232, %1220 ], [ %2267, %2252 ], [ %1232, %2250 ], [ %2239, %2204 ], [ %2187, %2168 ], [ %1232, %1241 ]
  %2291 = phi float [ %1233, %2137 ], [ %1233, %1537 ], [ %1233, %1220 ], [ %2268, %2252 ], [ %1233, %2250 ], [ %2240, %2204 ], [ %2188, %2168 ], [ %1233, %1241 ]
  %2292 = phi float [ %1234, %2137 ], [ %1234, %1537 ], [ %1234, %1220 ], [ %2269, %2252 ], [ %1234, %2250 ], [ %2241, %2204 ], [ %2189, %2168 ], [ %1234, %1241 ]
  %2293 = phi float [ %2144, %2137 ], [ %1235, %1537 ], [ %1235, %1220 ], [ %2144, %2252 ], [ %2144, %2250 ], [ %2144, %2204 ], [ %2144, %2168 ], [ %1235, %1241 ]
  %2294 = phi float [ %1237, %2137 ], [ %1237, %1537 ], [ %1237, %1220 ], [ %2263, %2252 ], [ %1237, %2250 ], [ %2235, %2204 ], [ %2180, %2168 ], [ %1237, %1241 ]
  %2295 = phi float [ %1238, %2137 ], [ %1238, %1537 ], [ %1238, %1220 ], [ %2260, %2252 ], [ %1238, %2250 ], [ %2212, %2204 ], [ %2177, %2168 ], [ %1238, %1241 ]
  %2296 = phi float [ %1239, %2137 ], [ %1239, %1537 ], [ %1239, %1220 ], [ %2271, %2252 ], [ %1239, %2250 ], [ %2243, %2204 ], [ %2192, %2168 ], [ %1239, %1241 ]
  %2297 = phi float [ %2145, %2137 ], [ %1240, %1537 ], [ %1240, %1220 ], [ %2145, %2252 ], [ %2145, %2250 ], [ %2145, %2204 ], [ %2145, %2168 ], [ %1240, %1241 ]
  br i1 %395, label %3335, label %2298

; <label>:2298                                    ; preds = %2278
  %2299 = icmp ult i32 %451, 3
  %2300 = add i32 %44, 56
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %44, 60
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = or i32 %2305, %2302
  %2307 = icmp eq i32 %2306, 0
  br i1 %2307, label %3335, label %2308

; <label>:2308                                    ; preds = %2298
  %2309 = and i32 %2302, 262144
  %2310 = icmp ne i32 %2309, 0
  %2311 = select i1 %2310, float %47, float 1.000000e+00
  %2312 = select i1 %2310, float %48, float 0.000000e+00
  %2313 = select i1 %2310, float %49, float 0.000000e+00
  %2314 = select i1 %2310, float %50, float 1.000000e+00
  %2315 = select i1 %2310, float %51, float %72
  %2316 = select i1 %2310, float %52, float %73
  %2317 = add i32 %44, 316
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = lshr i32 %2319, 16
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = fmul fast float %2321, 0x3F50624DE0000000
  %2323 = add i32 %44, 120
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = lshr i32 %2325, 16
  %2327 = and i32 %2326, 255
  %2328 = lshr i32 %2325, 24
  %2329 = add i32 %44, 324
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 65535
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = lshr i32 %2331, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = add i32 %44, 64
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 22
  %2340 = shl nuw nsw i32 %2339, 5
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = shl i32 %2338, 4
  %2343 = and i32 %2342, 32752
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2338, 7
  %2346 = and i32 %2345, 32752
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2350 = fmul fast float %2349, 1.000000e+03
  %2351 = fmul fast float %345, %2350
  %2352 = call float @dx.op.unary.f32(i32 22, float %2351)  ; Frc(value)
  %2353 = fadd fast float %2352, %335
  %2354 = fmul fast float %346, %2350
  %2355 = call float @dx.op.unary.f32(i32 22, float %2354)  ; Frc(value)
  %2356 = fadd fast float %2355, %337
  %2357 = fmul fast float %2322, %2350
  %2358 = call float @dx.op.unary.f32(i32 22, float %2357)  ; Frc(value)
  %2359 = fmul fast float %2358, 0x401921FB60000000
  %2360 = fadd fast float %2359, %2341
  %2361 = call float @dx.op.unary.f32(i32 13, float %2360)  ; Sin(value)
  %2362 = call float @dx.op.unary.f32(i32 12, float %2360)  ; Cos(value)
  %2363 = fsub fast float -0.000000e+00, %2361
  %2364 = fadd fast float %2315, -5.000000e-01
  %2365 = fadd fast float %2316, -5.000000e-01
  %2366 = fmul fast float %2333, %2364
  %2367 = fmul fast float %2335, %2365
  %2368 = fadd fast float %2366, 5.000000e-01
  %2369 = fadd fast float %2367, 5.000000e-01
  %2370 = fmul fast float %2344, %2368
  %2371 = fmul fast float %2347, %2369
  %2372 = fmul fast float %2362, %2370
  %2373 = call float @dx.op.tertiary.f32(i32 46, float %2363, float %2371, float %2372)  ; FMad(a,b,c)
  %2374 = fmul fast float %2361, %2370
  %2375 = call float @dx.op.tertiary.f32(i32 46, float %2362, float %2371, float %2374)  ; FMad(a,b,c)
  %2376 = fadd fast float %2353, %2373
  %2377 = fadd fast float %2356, %2375
  %2378 = icmp ugt i32 %2327, 1
  %2379 = icmp ugt i32 %2325, 33554431
  %2380 = or i1 %2379, %2378
  br i1 %2380, label %2381, label %2406

; <label>:2381                                    ; preds = %2308
  %2382 = add i32 %44, 260
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = lshr i32 %2384, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = fmul fast float %2349, %2386
  %2388 = call float @dx.op.unary.f32(i32 22, float %2387)  ; Frc(value)
  %2389 = mul nuw nsw i32 %2327, %2328
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2388, %2390
  %2392 = call float @dx.op.unary.f32(i32 27, float %2391)  ; Round_ni(value)
  %2393 = fptoui float %2392 to i32
  %2394 = urem i32 %2393, %2327
  %2395 = udiv i32 %2393, %2328
  %2396 = call float @dx.op.unary.f32(i32 22, float %2376)  ; Frc(value)
  %2397 = call float @dx.op.unary.f32(i32 22, float %2377)  ; Frc(value)
  %2398 = uitofp i32 %2394 to float
  %2399 = uitofp i32 %2395 to float
  %2400 = fadd fast float %2396, %2398
  %2401 = fadd fast float %2397, %2399
  %2402 = uitofp i32 %2327 to float
  %2403 = uitofp i32 %2328 to float
  %2404 = fdiv fast float %2400, %2402
  %2405 = fdiv fast float %2401, %2403
  br label %2406

; <label>:2406                                    ; preds = %2381, %2308
  %2407 = phi float [ %2404, %2381 ], [ %2376, %2308 ]
  %2408 = phi float [ %2405, %2381 ], [ %2377, %2308 ]
  %2409 = and i32 %2302, 16777216
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2520, label %2411

; <label>:2411                                    ; preds = %2406
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.CBufRet.f32 %2412, 2
  %2416 = fadd fast float %2413, %145
  %2417 = fadd fast float %2414, %146
  %2418 = fadd fast float %2415, %147
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2422 = icmp eq i32 %45, 65535
  br i1 %2422, label %2517, label %2423

; <label>:2423                                    ; preds = %2411
  %2424 = lshr i32 %45, 1
  %2425 = shl i32 %2424, 2
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %45, 1
  %2429 = icmp ne i32 %2428, 0
  %2430 = lshr i32 %2427, 16
  %2431 = and i32 %2427, 65535
  %2432 = select i1 %2429, i32 %2430, i32 %2431
  %2433 = icmp eq i32 %2432, 65535
  br i1 %2433, label %2513, label %2434

; <label>:2434                                    ; preds = %2423
  %2435 = mul nuw nsw i32 %2432, 40
  %2436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  %2440 = add nuw nsw i32 %2435, 12
  %2441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = add nuw nsw i32 %2435, 24
  %2446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.ResRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.ResRet.f32 %2446, 2
  %2450 = add nuw nsw i32 %2435, 36
  %2451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = fsub fast float %2416, %2437
  %2454 = fsub fast float %2417, %2438
  %2455 = fsub fast float %2418, %2439
  %2456 = fmul fast float %2452, %2453
  %2457 = fmul fast float %2452, %2454
  %2458 = fmul fast float %2452, %2455
  %2459 = call float @dx.op.unary.f32(i32 27, float %2456)  ; Round_ni(value)
  %2460 = call float @dx.op.unary.f32(i32 27, float %2457)  ; Round_ni(value)
  %2461 = call float @dx.op.unary.f32(i32 27, float %2458)  ; Round_ni(value)
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fmul fast float %2462, %2442
  %2466 = fmul fast float %2463, %2443
  %2467 = fmul fast float %2464, %2444
  %2468 = shl i32 %45, 2
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = add i32 %2470, 0
  %2472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2473 = call float @dx.op.unary.f32(i32 22, float %2465)  ; Frc(value)
  %2474 = call float @dx.op.unary.f32(i32 22, float %2466)  ; Frc(value)
  %2475 = call float @dx.op.unary.f32(i32 22, float %2467)  ; Frc(value)
  %2476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2472, %dx.types.Handle %39, float %2473, float %2474, float %2475, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.ResRet.f32 %2476, 1
  %2479 = extractvalue %dx.types.ResRet.f32 %2476, 2
  %2480 = fmul fast float %2477, 1.023000e+03
  %2481 = fmul fast float %2478, 1.023000e+03
  %2482 = fmul fast float %2479, 1.023000e+03
  %2483 = fadd fast float %2480, 5.000000e-01
  %2484 = fadd fast float %2481, 5.000000e-01
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = call float @dx.op.unary.f32(i32 27, float %2483)  ; Round_ni(value)
  %2487 = call float @dx.op.unary.f32(i32 27, float %2484)  ; Round_ni(value)
  %2488 = call float @dx.op.unary.f32(i32 27, float %2485)  ; Round_ni(value)
  %2489 = fsub fast float %2456, %2459
  %2490 = fsub fast float %2457, %2460
  %2491 = fsub fast float %2458, %2461
  %2492 = fmul fast float %2489, 7.500000e-01
  %2493 = fmul fast float %2490, 7.500000e-01
  %2494 = fmul fast float %2491, 7.500000e-01
  %2495 = fadd fast float %2459, 1.250000e-01
  %2496 = fadd fast float %2495, %2492
  %2497 = fadd fast float %2496, %2486
  %2498 = fadd fast float %2460, 1.250000e-01
  %2499 = fadd fast float %2498, %2493
  %2500 = fadd fast float %2499, %2487
  %2501 = fadd fast float %2461, 1.250000e-01
  %2502 = fadd fast float %2501, %2494
  %2503 = fadd fast float %2502, %2488
  %2504 = fmul fast float %2497, %2447
  %2505 = fmul fast float %2500, %2448
  %2506 = fmul fast float %2503, %2449
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2510, %dx.types.Handle %37, float %2504, float %2505, float %2506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  br label %2513

; <label>:2513                                    ; preds = %2434, %2423
  %2514 = phi float [ %2512, %2434 ], [ -1.000000e+00, %2423 ]
  %2515 = fadd fast float %2514, %2421
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  br label %2517

; <label>:2517                                    ; preds = %2513, %2411
  %2518 = phi float [ %2516, %2513 ], [ %2421, %2411 ]
  %2519 = fmul fast float %2518, %447
  br label %2520

; <label>:2520                                    ; preds = %2517, %2406
  %2521 = phi float [ %2519, %2517 ], [ %447, %2406 ]
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 256
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2572, label %2526

; <label>:2526                                    ; preds = %2520
  %2527 = add i32 %44, 448
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %87, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = add i32 %44, 132
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = shl i32 %2536, 4
  %2538 = and i32 %2537, 32752
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = lshr i32 %2536, 7
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = fsub fast float 1.000000e+00, %2521
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2545 = bitcast float %2521 to i32
  %2546 = sitofp i32 %2545 to float
  %2547 = fadd fast float %2546, 0xC1CFBF8940000000
  %2548 = fmul fast float %2542, %2547
  %2549 = fadd fast float %2548, 0x41CFBF8940000000
  %2550 = fptosi float %2549 to i32
  %2551 = bitcast i32 %2550 to float
  %2552 = bitcast float %2544 to i32
  %2553 = sitofp i32 %2552 to float
  %2554 = fadd fast float %2553, 0xC1CFBF8940000000
  %2555 = fmul fast float %2554, %2542
  %2556 = fadd fast float %2555, 0x41CFBF8940000000
  %2557 = fptosi float %2556 to i32
  %2558 = bitcast i32 %2557 to float
  %2559 = fmul fast float %2551, %2539
  %2560 = fmul fast float %2558, %2539
  %2561 = fsub fast float %2544, %2559
  %2562 = fadd fast float %2560, %2544
  %2563 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2564 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2565 = fsub fast float %2533, %2563
  %2566 = fsub fast float %2564, %2563
  %2567 = bitcast float %2566 to i32
  %2568 = sub nsw i32 2129859010, %2567
  %2569 = bitcast i32 %2568 to float
  %2570 = fmul fast float %2569, %2565
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  br label %2572

; <label>:2572                                    ; preds = %2526, %2520
  %2573 = phi float [ %2571, %2526 ], [ %2521, %2520 ]
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 128
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2594, label %2578

; <label>:2578                                    ; preds = %2572
  %2579 = add i32 %44, 432
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %2581, 0
  %2583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2583, %dx.types.Handle %87, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 524288
  %2589 = icmp ne i32 %2588, 0
  %2590 = fcmp fast ogt float %2585, 0x3FE0101020000000
  %2591 = select i1 %2590, float 1.000000e+00, float 0.000000e+00
  %2592 = select i1 %2589, float %2591, float %2585
  %2593 = fmul fast float %2592, %2573
  br label %2594

; <label>:2594                                    ; preds = %2578, %2572
  %2595 = phi float [ %2593, %2578 ], [ %2573, %2572 ]
  %2596 = fcmp fast ult float %2595, 0x3F70101020000000
  br i1 %2596, label %3335, label %2597

; <label>:2597                                    ; preds = %2594
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 16
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2800, label %2602

; <label>:2602                                    ; preds = %2597
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %44, 384
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %2607, 0
  %2609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2609, %dx.types.Handle %86, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2613 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2614 = extractvalue %dx.types.ResRet.f32 %2610, 3
  %2615 = and i32 %2604, 255
  %2616 = uitofp i32 %2615 to float
  %2617 = lshr i32 %2604, 8
  %2618 = and i32 %2617, 255
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2614, %2616
  %2621 = fadd fast float %2620, %2619
  %2622 = fmul fast float %2621, 0x3F70101000000000
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 512
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2635, label %2627

; <label>:2627                                    ; preds = %2602
  %2628 = add i32 %44, 468
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %87, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  br label %2635

; <label>:2635                                    ; preds = %2627, %2602
  %2636 = phi float [ %2634, %2627 ], [ 1.000000e+00, %2602 ]
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 33554432
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2747, label %2641

; <label>:2641                                    ; preds = %2635
  %2642 = add i32 %44, 256
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 65535
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = lshr i32 %2644, 16
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = add i32 %44, 260
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2670 = add i32 %44, 252
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 24
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = and i32 %2672, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2672, 8
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = lshr i32 %2672, 16
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = bitcast float %2611 to i32
  %2688 = ashr i32 %2687, 1
  %2689 = sub nsw i32 1597463174, %2688
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2611, 5.000000e-01
  %2692 = fmul fast float %2690, %2690
  %2693 = fmul fast float %2692, %2691
  %2694 = fsub fast float 1.500000e+00, %2693
  %2695 = fmul fast float %2690, %2611
  %2696 = fmul fast float %2695, %2694
  %2697 = bitcast float %2612 to i32
  %2698 = ashr i32 %2697, 1
  %2699 = sub nsw i32 1597463174, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2612, 5.000000e-01
  %2702 = fmul fast float %2700, %2700
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float 1.500000e+00, %2703
  %2705 = fmul fast float %2700, %2612
  %2706 = fmul fast float %2705, %2704
  %2707 = bitcast float %2613 to i32
  %2708 = ashr i32 %2707, 1
  %2709 = sub nsw i32 1597463174, %2708
  %2710 = bitcast i32 %2709 to float
  %2711 = fmul fast float %2613, 5.000000e-01
  %2712 = fmul fast float %2710, %2710
  %2713 = fmul fast float %2712, %2711
  %2714 = fsub fast float 1.500000e+00, %2713
  %2715 = fmul fast float %2710, %2613
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float %2696, %2678
  %2718 = fsub fast float %2706, %2682
  %2719 = fsub fast float %2716, %2686
  %2720 = fmul fast float %2717, %2646
  %2721 = fmul fast float %2718, %2648
  %2722 = fmul fast float %2719, %2653
  %2723 = fadd fast float %2720, %2661
  %2724 = fadd fast float %2721, %2665
  %2725 = fadd fast float %2722, %2669
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = fmul fast float %2726, %2726
  %2730 = fmul fast float %2727, %2727
  %2731 = fmul fast float %2728, %2728
  %2732 = fsub fast float %2729, %2611
  %2733 = fsub fast float %2730, %2612
  %2734 = fsub fast float %2731, %2613
  %2735 = fmul fast float %2732, %2636
  %2736 = fmul fast float %2733, %2636
  %2737 = fmul fast float %2734, %2636
  %2738 = fadd fast float %2735, %2611
  %2739 = fadd fast float %2736, %2612
  %2740 = fadd fast float %2737, %2613
  %2741 = fadd fast float %2658, %2622
  %2742 = fsub fast float %2741, %2675
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fsub fast float %2743, %2622
  %2745 = fmul fast float %2744, %2636
  %2746 = fadd fast float %2745, %2622
  br label %2800

; <label>:2747                                    ; preds = %2635
  %2748 = and i32 %2638, 134217728
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2784, label %2750

; <label>:2750                                    ; preds = %2747
  %2751 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2636
  %2758 = fmul fast float %2755, %2636
  %2759 = fmul fast float %2756, %2636
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2612)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2766 = fmul fast float %2760, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2763
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2763
  %2771 = fmul fast float %2761, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2764
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2764
  %2776 = fmul fast float %2762, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2765
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2765
  %2781 = fmul fast float %2770, %2770
  %2782 = fmul fast float %2775, %2775
  %2783 = fmul fast float %2780, %2780
  br label %2800

; <label>:2784                                    ; preds = %2747
  %2785 = fmul fast float %322, %322
  %2786 = fmul fast float %326, %326
  %2787 = fmul fast float %330, %330
  %2788 = fadd fast float %2785, -1.000000e+00
  %2789 = fadd fast float %2786, -1.000000e+00
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fmul fast float %2636, %2788
  %2792 = fmul fast float %2636, %2789
  %2793 = fmul fast float %2636, %2790
  %2794 = fadd fast float %2791, 1.000000e+00
  %2795 = fadd fast float %2792, 1.000000e+00
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fmul fast float %2794, %2611
  %2798 = fmul fast float %2795, %2612
  %2799 = fmul fast float %2796, %2613
  br label %2800

; <label>:2800                                    ; preds = %2784, %2750, %2641, %2597
  %2801 = phi float [ %2746, %2641 ], [ %2622, %2750 ], [ %2622, %2784 ], [ 0x3FA23C0BE0000000, %2597 ]
  %2802 = phi float [ %2738, %2641 ], [ %2781, %2750 ], [ %2797, %2784 ], [ 1.000000e+00, %2597 ]
  %2803 = phi float [ %2739, %2641 ], [ %2782, %2750 ], [ %2798, %2784 ], [ 1.000000e+00, %2597 ]
  %2804 = phi float [ %2740, %2641 ], [ %2783, %2750 ], [ %2799, %2784 ], [ 1.000000e+00, %2597 ]
  %2805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.i32 %2805, 1
  %2807 = and i32 %2806, 1
  %2808 = icmp ne i32 %2807, 0
  %2809 = add i32 %44, 356
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 32
  %2813 = icmp ne i32 %2812, 0
  %2814 = and i1 %2808, %2813
  %2815 = select i1 %2814, float 1.000000e+00, float %2802
  %2816 = select i1 %2814, float 0x3FD3333340000000, float %2803
  %2817 = select i1 %2814, float 0x3FD3333340000000, float %2804
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2894, label %2822

; <label>:2822                                    ; preds = %2800
  %2823 = add i32 %44, 124
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = add i32 %44, 400
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %2828, 0
  %2830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2830, %dx.types.Handle %86, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = and i32 %2825, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = lshr i32 %2825, 8
  %2839 = and i32 %2838, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = lshr i32 %2825, 16
  %2842 = and i32 %2841, 255
  %2843 = uitofp i32 %2842 to float
  %2844 = fmul fast float %2843, 0x3F70101000000000
  %2845 = fmul fast float %2832, %2837
  %2846 = fadd fast float %2845, %2840
  %2847 = fmul fast float %2846, 0x3F70101000000000
  %2848 = fadd fast float %2833, -5.000000e-01
  %2849 = fadd fast float %2835, -5.000000e-01
  %2850 = fmul fast float %2848, %2844
  %2851 = fmul fast float %2849, %2844
  %2852 = fadd fast float %2850, 5.000000e-01
  %2853 = fadd fast float %2851, 5.000000e-01
  %2854 = fmul fast float %2852, 2.000000e+00
  %2855 = fadd fast float %2854, -1.000000e+00
  %2856 = fmul fast float %2853, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fadd fast float %2855, %2857
  %2859 = fmul fast float %2858, 5.000000e-01
  %2860 = fsub fast float %2855, %2857
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float %2863, %2864
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2861, float %2865, float %2859, float %2861, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2859, %2867
  %2869 = fmul fast float %2861, %2867
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 67108864
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2890, label %2874

; <label>:2874                                    ; preds = %2822
  %2875 = add i32 %44, 312
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = lshr i32 %2877, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fsub fast float %2847, %2885
  %2887 = fmul fast float %2886, %2879
  %2888 = fadd fast float %2887, %2883
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2890

; <label>:2890                                    ; preds = %2874, %2822
  %2891 = phi float [ %2889, %2874 ], [ %2847, %2822 ]
  %2892 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2311, float %2312)  ; Dot2(ax,ay,bx,by)
  %2893 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2313, float %2314)  ; Dot2(ax,ay,bx,by)
  br label %2894

; <label>:2894                                    ; preds = %2890, %2800
  %2895 = phi float [ %2891, %2890 ], [ 0x3FD6666660000000, %2800 ]
  %2896 = phi float [ %2892, %2890 ], [ 0.000000e+00, %2800 ]
  %2897 = phi float [ %2893, %2890 ], [ 0.000000e+00, %2800 ]
  %2898 = phi float [ %2834, %2890 ], [ 1.000000e+00, %2800 ]
  %2899 = add i32 %44, 192
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 22
  %2903 = shl nuw nsw i32 %2902, 5
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 64
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2942, label %2909

; <label>:2909                                    ; preds = %2894
  %2910 = add i32 %44, 416
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 131072
  %2918 = icmp eq i32 %2917, 0
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %86, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = fmul fast float %2920, %310
  %2924 = fmul fast float %2921, %313
  %2925 = fmul fast float %2922, %316
  br i1 %2918, label %2932, label %2926

; <label>:2926                                    ; preds = %2909
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = fmul fast float %2928, %2923
  %2930 = fmul fast float %2928, %2924
  %2931 = fmul fast float %2928, %2925
  br label %2932

; <label>:2932                                    ; preds = %2926, %2909
  %2933 = phi float [ %2929, %2926 ], [ %2923, %2909 ]
  %2934 = phi float [ %2930, %2926 ], [ %2924, %2909 ]
  %2935 = phi float [ %2931, %2926 ], [ %2925, %2909 ]
  %2936 = fmul fast float %2933, %2904
  %2937 = select i1 %206, float %2936, float %2933
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2937, float %2934, float %2935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = select i1 %206, float 0.000000e+00, float %2933
  %2940 = select i1 %206, float %2938, float %2934
  %2941 = select i1 %206, float 0.000000e+00, float %2935
  br label %2942

; <label>:2942                                    ; preds = %2932, %2894
  %2943 = phi float [ %2939, %2932 ], [ 0.000000e+00, %2894 ]
  %2944 = phi float [ %2940, %2932 ], [ 0.000000e+00, %2894 ]
  %2945 = phi float [ %2941, %2932 ], [ 0.000000e+00, %2894 ]
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 1024
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2980, label %2950

; <label>:2950                                    ; preds = %2942
  %2951 = add i32 %44, 184
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = lshr i32 %2953, 8
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = lshr i32 %2953, 16
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = fmul fast float %2956, %2956
  %2966 = fmul fast float %2960, %2960
  %2967 = fmul fast float %2964, %2964
  %2968 = add i32 %44, 484
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2970, 0
  %2972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2972, %dx.types.Handle %87, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = fmul fast float %2965, %2974
  %2978 = fmul fast float %2966, %2975
  %2979 = fmul fast float %2967, %2976
  br label %2980

; <label>:2980                                    ; preds = %2950, %2942
  %2981 = phi float [ %2977, %2950 ], [ 0.000000e+00, %2942 ]
  %2982 = phi float [ %2978, %2950 ], [ 0.000000e+00, %2942 ]
  %2983 = phi float [ %2979, %2950 ], [ 0.000000e+00, %2942 ]
  %2984 = fcmp fast ogt float %2981, 0.000000e+00
  %2985 = fcmp fast ogt float %2982, 0.000000e+00
  %2986 = fcmp fast ogt float %2983, 0.000000e+00
  %2987 = call float @dx.op.unary.f32(i32 23, float %2981)  ; Log(value)
  %2988 = call float @dx.op.unary.f32(i32 23, float %2982)  ; Log(value)
  %2989 = call float @dx.op.unary.f32(i32 23, float %2983)  ; Log(value)
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = lshr i32 %2991, 7
  %2993 = and i32 %2992, 32752
  %2994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2993)  ; LegacyF16ToF32(value)
  %2995 = fmul fast float %2987, 0xBFE62E4300000000
  %2996 = fmul fast float %2995, %2994
  %2997 = fmul fast float %2988, 0xBFE62E4300000000
  %2998 = fmul fast float %2997, %2994
  %2999 = fmul fast float %2989, 0xBFE62E4300000000
  %3000 = fmul fast float %2999, %2994
  %3001 = select i1 %2984, float %2996, float 1.270000e+02
  %3002 = select i1 %2985, float %2998, float 1.270000e+02
  %3003 = select i1 %2986, float %3000, float 1.270000e+02
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 10240
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3052, label %3008

; <label>:3008                                    ; preds = %2980
  %3009 = add i32 %44, 500
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = add i32 %3011, 0
  %3013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3013, %dx.types.Handle %87, float %2407, float %2408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3014, 3
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 1048576
  %3020 = icmp ne i32 %3019, 0
  %3021 = and i32 %3018, 8192
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3038, label %3023

; <label>:3023                                    ; preds = %3008
  %3024 = extractvalue %dx.types.ResRet.f32 %3014, 2
  %3025 = select i1 %3020, float %3024, float %3015
  %3026 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3027 = select i1 %3020, float %3026, float %3015
  %3028 = add i32 %44, 128
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = lshr i32 %3030, 16
  %3032 = and i32 %3031, 255
  %3033 = uitofp i32 %3032 to float
  %3034 = fmul fast float %3033, 0x3F80101020000000
  %3035 = fmul fast float %3034, %3027
  %3036 = fmul fast float %3034, %3015
  %3037 = fmul fast float %3034, %3025
  br label %3038

; <label>:3038                                    ; preds = %3023, %3008
  %3039 = phi float [ %3035, %3023 ], [ 0.000000e+00, %3008 ]
  %3040 = phi float [ %3036, %3023 ], [ 0.000000e+00, %3008 ]
  %3041 = phi float [ %3037, %3023 ], [ 0.000000e+00, %3008 ]
  %3042 = and i32 %3018, 2048
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3052, label %3044

; <label>:3044                                    ; preds = %3038
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = shl i32 %3046, 4
  %3048 = and i32 %3047, 32752
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = fmul fast float %3049, %3016
  %3051 = call float @dx.op.binary.f32(i32 35, float %3050, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3052

; <label>:3052                                    ; preds = %3044, %3038, %2980
  %3053 = phi float [ %3039, %3044 ], [ %3039, %3038 ], [ 0.000000e+00, %2980 ]
  %3054 = phi float [ %3040, %3044 ], [ %3040, %3038 ], [ 0.000000e+00, %2980 ]
  %3055 = phi float [ %3041, %3044 ], [ %3041, %3038 ], [ 0.000000e+00, %2980 ]
  %3056 = phi float [ %3051, %3044 ], [ 0x3F70101020000000, %3038 ], [ 0x3F70101020000000, %2980 ]
  %3057 = add i32 %44, 128
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 255
  %3061 = uitofp i32 %3060 to float
  %3062 = lshr i32 %3059, 8
  %3063 = and i32 %3062, 255
  %3064 = uitofp i32 %3063 to float
  %3065 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3066 = fmul fast float %3064, %3065
  %3067 = fadd fast float %3066, %3061
  %3068 = fmul fast float %3067, 0x3F70101020000000
  %3069 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  br i1 %2299, label %3070, label %3105

; <label>:3070                                    ; preds = %3052
  %3071 = fmul fast float %3056, 2.000000e+00
  %3072 = fcmp fast olt float %3001, 1.270000e+02
  %3073 = fcmp fast olt float %3002, 1.270000e+02
  %3074 = fcmp fast olt float %3003, 1.270000e+02
  %3075 = fmul fast float %3001, 0xBFF7154760000000
  %3076 = fmul fast float %3075, %3071
  %3077 = fmul fast float %3002, 0xBFF7154760000000
  %3078 = fmul fast float %3077, %3071
  %3079 = fmul fast float %3003, 0xBFF7154760000000
  %3080 = fmul fast float %3079, %3071
  %3081 = call float @dx.op.unary.f32(i32 21, float %3076)  ; Exp(value)
  %3082 = call float @dx.op.unary.f32(i32 21, float %3078)  ; Exp(value)
  %3083 = call float @dx.op.unary.f32(i32 21, float %3080)  ; Exp(value)
  %3084 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3085 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3086 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3087 = fadd fast float %3084, -1.000000e+00
  %3088 = select i1 %3072, float %3087, float -1.000000e+00
  %3089 = fadd fast float %3085, -1.000000e+00
  %3090 = select i1 %3073, float %3089, float -1.000000e+00
  %3091 = fadd fast float %3086, -1.000000e+00
  %3092 = select i1 %3074, float %3091, float -1.000000e+00
  %3093 = fmul fast float %3088, %2595
  %3094 = fmul fast float %3090, %2595
  %3095 = fmul fast float %3092, %2595
  %3096 = fadd fast float %3093, 1.000000e+00
  %3097 = fadd fast float %3094, 1.000000e+00
  %3098 = fadd fast float %3095, 1.000000e+00
  %3099 = fmul fast float %3096, %2281
  %3100 = fmul fast float %3097, %2282
  %3101 = fmul fast float %3098, %2283
  %3102 = fmul fast float %3096, %2284
  %3103 = fmul fast float %3097, %2285
  %3104 = fmul fast float %3098, %2286
  br label %3105

; <label>:3105                                    ; preds = %3070, %3052
  %3106 = phi float [ %3099, %3070 ], [ %2281, %3052 ]
  %3107 = phi float [ %3100, %3070 ], [ %2282, %3052 ]
  %3108 = phi float [ %3101, %3070 ], [ %2283, %3052 ]
  %3109 = phi float [ %3102, %3070 ], [ %2284, %3052 ]
  %3110 = phi float [ %3103, %3070 ], [ %2285, %3052 ]
  %3111 = phi float [ %3104, %3070 ], [ %2286, %3052 ]
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 3
  %3115 = icmp eq i32 %3114, 3
  br i1 %3115, label %3194, label %3116

; <label>:3116                                    ; preds = %3105
  %3117 = and i32 %3113, 16
  %3118 = icmp ne i32 %3117, 0
  %3119 = select i1 %3118, float %2595, float 0.000000e+00
  %3120 = icmp eq i32 %3114, 0
  br i1 %3120, label %3121, label %3149

; <label>:3121                                    ; preds = %3116
  %3122 = and i32 %3113, 64
  %3123 = icmp ne i32 %3122, 0
  %3124 = select i1 %3123, float %2595, float 0.000000e+00
  %3125 = fsub fast float %2815, %3106
  %3126 = fsub fast float %2816, %3107
  %3127 = fsub fast float %2817, %3108
  %3128 = fmul fast float %3119, %3125
  %3129 = fmul fast float %3119, %3126
  %3130 = fmul fast float %3119, %3127
  %3131 = fadd fast float %3128, %3106
  %3132 = fadd fast float %3129, %3107
  %3133 = fadd fast float %3130, %3108
  %3134 = fsub fast float %2801, %2293
  %3135 = fmul fast float %3119, %3134
  %3136 = fadd fast float %3135, %2293
  %3137 = fsub fast float %2943, %3109
  %3138 = fsub fast float %2944, %3110
  %3139 = fsub fast float %2945, %3111
  %3140 = fmul fast float %3124, %3137
  %3141 = fmul fast float %3124, %3138
  %3142 = fmul fast float %3124, %3139
  %3143 = fadd fast float %3140, %3109
  %3144 = fadd fast float %3141, %3110
  %3145 = fadd fast float %3142, %3111
  %3146 = fsub fast float %3069, %2297
  %3147 = fmul fast float %3119, %3146
  %3148 = fadd fast float %3147, %2297
  br label %3194

; <label>:3149                                    ; preds = %3116
  %3150 = icmp eq i32 %3114, 1
  br i1 %3150, label %3151, label %3164

; <label>:3151                                    ; preds = %3149
  %3152 = fadd fast float %2815, -1.000000e+00
  %3153 = fadd fast float %2816, -1.000000e+00
  %3154 = fadd fast float %2817, -1.000000e+00
  %3155 = fmul fast float %3119, %3152
  %3156 = fmul fast float %3119, %3153
  %3157 = fmul fast float %3119, %3154
  %3158 = fadd fast float %3155, 1.000000e+00
  %3159 = fadd fast float %3156, 1.000000e+00
  %3160 = fadd fast float %3157, 1.000000e+00
  %3161 = fmul fast float %3158, %3106
  %3162 = fmul fast float %3159, %3107
  %3163 = fmul fast float %3160, %3108
  br label %3194

; <label>:3164                                    ; preds = %3149
  %3165 = icmp eq i32 %3114, 2
  br i1 %3165, label %3166, label %3194

; <label>:3166                                    ; preds = %3164
  %3167 = call float @dx.op.unary.f32(i32 24, float %2815)  ; Sqrt(value)
  %3168 = call float @dx.op.unary.f32(i32 24, float %2816)  ; Sqrt(value)
  %3169 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %3170 = fadd fast float %3167, -5.000000e-01
  %3171 = fadd fast float %3168, -5.000000e-01
  %3172 = fadd fast float %3169, -5.000000e-01
  %3173 = fmul fast float %3170, %3119
  %3174 = fmul fast float %3171, %3119
  %3175 = fmul fast float %3172, %3119
  %3176 = fadd fast float %3173, 5.000000e-01
  %3177 = fadd fast float %3174, 5.000000e-01
  %3178 = fadd fast float %3175, 5.000000e-01
  %3179 = fmul fast float %3176, 2.000000e+00
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = fmul fast float %3180, %3106
  %3182 = fadd fast float %3181, %3179
  %3183 = fmul fast float %3182, %3106
  %3184 = fmul fast float %3177, 2.000000e+00
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3185, %3107
  %3187 = fadd fast float %3186, %3184
  %3188 = fmul fast float %3187, %3107
  %3189 = fmul fast float %3178, 2.000000e+00
  %3190 = fsub fast float 1.000000e+00, %3189
  %3191 = fmul fast float %3190, %3108
  %3192 = fadd fast float %3191, %3189
  %3193 = fmul fast float %3192, %3108
  br label %3194

; <label>:3194                                    ; preds = %3166, %3164, %3151, %3121, %3105
  %3195 = phi float [ %3106, %3105 ], [ %3183, %3166 ], [ %3106, %3164 ], [ %3161, %3151 ], [ %3131, %3121 ]
  %3196 = phi float [ %3107, %3105 ], [ %3188, %3166 ], [ %3107, %3164 ], [ %3162, %3151 ], [ %3132, %3121 ]
  %3197 = phi float [ %3108, %3105 ], [ %3193, %3166 ], [ %3108, %3164 ], [ %3163, %3151 ], [ %3133, %3121 ]
  %3198 = phi float [ %3109, %3105 ], [ %3109, %3166 ], [ %3109, %3164 ], [ %3109, %3151 ], [ %3143, %3121 ]
  %3199 = phi float [ %3110, %3105 ], [ %3110, %3166 ], [ %3110, %3164 ], [ %3110, %3151 ], [ %3144, %3121 ]
  %3200 = phi float [ %3111, %3105 ], [ %3111, %3166 ], [ %3111, %3164 ], [ %3111, %3151 ], [ %3145, %3121 ]
  %3201 = phi float [ %2293, %3105 ], [ %2293, %3166 ], [ %2293, %3164 ], [ %2293, %3151 ], [ %3136, %3121 ]
  %3202 = phi float [ %2297, %3105 ], [ %2297, %3166 ], [ %2297, %3164 ], [ %2297, %3151 ], [ %3148, %3121 ]
  %3203 = and i32 %3113, 12
  %3204 = icmp eq i32 %3203, 12
  br i1 %3204, label %3335, label %3205

; <label>:3205                                    ; preds = %3194
  %3206 = and i32 %3113, 2097184
  %3207 = icmp eq i32 %3206, 2097184
  %3208 = select i1 %3207, float %2595, float 0.000000e+00
  %3209 = and i32 %3113, 4194336
  %3210 = icmp eq i32 %3209, 4194336
  %3211 = select i1 %3210, float %2595, float 0.000000e+00
  %3212 = and i32 %3113, 8388640
  %3213 = icmp eq i32 %3212, 8388640
  %3214 = select i1 %3213, float %2595, float 0.000000e+00
  %3215 = and i32 %3113, 1024
  %3216 = icmp ne i32 %3215, 0
  %3217 = select i1 %3216, float %2595, float 0.000000e+00
  %3218 = and i32 %3113, 2048
  %3219 = icmp ne i32 %3218, 0
  %3220 = select i1 %3219, float %2595, float 0.000000e+00
  %3221 = and i32 %3113, 8192
  %3222 = icmp ne i32 %3221, 0
  %3223 = select i1 %3222, float %2595, float 0.000000e+00
  %3224 = icmp eq i32 %3203, 0
  br i1 %3224, label %3225, label %3259

; <label>:3225                                    ; preds = %3205
  %3226 = fsub fast float %2896, %2279
  %3227 = fsub fast float %2897, %2280
  %3228 = fmul fast float %3208, %3226
  %3229 = fmul fast float %3208, %3227
  %3230 = fadd fast float %3228, %2279
  %3231 = fadd fast float %3229, %2280
  %3232 = fsub fast float %2898, %2295
  %3233 = fmul fast float %3211, %3232
  %3234 = fadd fast float %3233, %2295
  %3235 = fsub fast float %2895, %2294
  %3236 = fmul fast float %3214, %3235
  %3237 = fadd fast float %3236, %2294
  %3238 = fsub fast float %3001, %2290
  %3239 = fsub fast float %3002, %2291
  %3240 = fsub fast float %3003, %2292
  %3241 = fmul fast float %3217, %3238
  %3242 = fmul fast float %3217, %3239
  %3243 = fmul fast float %3217, %3240
  %3244 = fadd fast float %3241, %2290
  %3245 = fadd fast float %3242, %2291
  %3246 = fadd fast float %3243, %2292
  %3247 = fsub fast float %3056, %2296
  %3248 = fmul fast float %3220, %3247
  %3249 = fadd fast float %3248, %2296
  %3250 = fsub fast float %3053, %2287
  %3251 = fsub fast float %3054, %2288
  %3252 = fsub fast float %3055, %2289
  %3253 = fmul fast float %3223, %3250
  %3254 = fmul fast float %3223, %3251
  %3255 = fmul fast float %3223, %3252
  %3256 = fadd fast float %3253, %2287
  %3257 = fadd fast float %3254, %2288
  %3258 = fadd fast float %3255, %2289
  br label %3335

; <label>:3259                                    ; preds = %3205
  %3260 = icmp eq i32 %3203, 4
  br i1 %3260, label %3261, label %3307

; <label>:3261                                    ; preds = %3259
  %3262 = fmul fast float %3208, %2896
  %3263 = fmul fast float %3208, %2897
  %3264 = fadd fast float %3262, %2279
  %3265 = fadd fast float %3263, %2280
  %3266 = call float @dx.op.binary.f32(i32 36, float %2295, float %2898)  ; FMin(a,b)
  %3267 = fsub fast float %3266, %2295
  %3268 = fmul fast float %3267, %3211
  %3269 = fadd fast float %3268, %2295
  %3270 = fadd fast float %2895, %2294
  %3271 = fmul fast float %3270, 0x3FF337FAE0000000
  %3272 = fmul fast float %2294, %2294
  %3273 = fmul fast float %2895, %2895
  %3274 = fadd fast float %3273, %3272
  %3275 = fmul fast float %3274, 0x3FE5152B00000000
  %3276 = fmul fast float %2294, 0xBFCC1F85E0000000
  %3277 = fmul fast float %3276, %2895
  %3278 = fadd fast float %3277, 0xBFE1363700000000
  %3279 = fadd fast float %3278, %3271
  %3280 = fsub fast float %3279, %3275
  %3281 = fmul fast float %3270, 0x3FBA6F0D00000000
  %3282 = fmul fast float %3274, 0x3FD0432880000000
  %3283 = fmul fast float %2294, 0xBFEF110800000000
  %3284 = fmul fast float %3283, %2895
  %3285 = fadd fast float %3284, 1.000000e+00
  %3286 = fsub fast float %3285, %3281
  %3287 = fadd fast float %3286, %3282
  %3288 = fdiv fast float %3280, %3287
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3290 = fsub fast float %3289, %2294
  %3291 = fmul fast float %3290, %3214
  %3292 = fadd fast float %3291, %2294
  %3293 = fmul fast float %3217, %3001
  %3294 = fmul fast float %3217, %3002
  %3295 = fmul fast float %3217, %3003
  %3296 = fadd fast float %3293, %2290
  %3297 = fadd fast float %3294, %2291
  %3298 = fadd fast float %3295, %2292
  %3299 = fmul fast float %3220, %3056
  %3300 = fadd fast float %3299, %2296
  %3301 = fmul fast float %3223, %3053
  %3302 = fmul fast float %3223, %3054
  %3303 = fmul fast float %3223, %3055
  %3304 = fadd fast float %3301, %2287
  %3305 = fadd fast float %3302, %2288
  %3306 = fadd fast float %3303, %2289
  br label %3335

; <label>:3307                                    ; preds = %3259
  %3308 = icmp eq i32 %3203, 8
  br i1 %3308, label %3309, label %3335

; <label>:3309                                    ; preds = %3307
  %3310 = fmul fast float %3208, %2896
  %3311 = fmul fast float %3208, %2897
  %3312 = fadd fast float %3310, %2279
  %3313 = fadd fast float %3311, %2280
  %3314 = call float @dx.op.binary.f32(i32 36, float %2295, float %2898)  ; FMin(a,b)
  %3315 = fsub fast float %3314, %2295
  %3316 = fmul fast float %3315, %3211
  %3317 = fadd fast float %3316, %2295
  %3318 = fsub fast float %2895, %2294
  %3319 = fmul fast float %3214, %3318
  %3320 = fadd fast float %3319, %2294
  %3321 = fmul fast float %3217, %3001
  %3322 = fmul fast float %3217, %3002
  %3323 = fmul fast float %3217, %3003
  %3324 = fadd fast float %3321, %2290
  %3325 = fadd fast float %3322, %2291
  %3326 = fadd fast float %3323, %2292
  %3327 = fmul fast float %3220, %3056
  %3328 = fadd fast float %3327, %2296
  %3329 = fmul fast float %3223, %3053
  %3330 = fmul fast float %3223, %3054
  %3331 = fmul fast float %3223, %3055
  %3332 = fadd fast float %3329, %2287
  %3333 = fadd fast float %3330, %2288
  %3334 = fadd fast float %3331, %2289
  br label %3335

; <label>:3335                                    ; preds = %3309, %3307, %3261, %3225, %3194, %2594, %2298, %2278
  %3336 = phi float [ %2279, %3194 ], [ %2279, %2594 ], [ %2279, %2278 ], [ %3312, %3309 ], [ %2279, %3307 ], [ %3264, %3261 ], [ %3230, %3225 ], [ %2279, %2298 ]
  %3337 = phi float [ %2280, %3194 ], [ %2280, %2594 ], [ %2280, %2278 ], [ %3313, %3309 ], [ %2280, %3307 ], [ %3265, %3261 ], [ %3231, %3225 ], [ %2280, %2298 ]
  %3338 = phi float [ %3195, %3194 ], [ %2281, %2594 ], [ %2281, %2278 ], [ %3195, %3309 ], [ %3195, %3307 ], [ %3195, %3261 ], [ %3195, %3225 ], [ %2281, %2298 ]
  %3339 = phi float [ %3196, %3194 ], [ %2282, %2594 ], [ %2282, %2278 ], [ %3196, %3309 ], [ %3196, %3307 ], [ %3196, %3261 ], [ %3196, %3225 ], [ %2282, %2298 ]
  %3340 = phi float [ %3197, %3194 ], [ %2283, %2594 ], [ %2283, %2278 ], [ %3197, %3309 ], [ %3197, %3307 ], [ %3197, %3261 ], [ %3197, %3225 ], [ %2283, %2298 ]
  %3341 = phi float [ %3198, %3194 ], [ %2284, %2594 ], [ %2284, %2278 ], [ %3198, %3309 ], [ %3198, %3307 ], [ %3198, %3261 ], [ %3198, %3225 ], [ %2284, %2298 ]
  %3342 = phi float [ %3199, %3194 ], [ %2285, %2594 ], [ %2285, %2278 ], [ %3199, %3309 ], [ %3199, %3307 ], [ %3199, %3261 ], [ %3199, %3225 ], [ %2285, %2298 ]
  %3343 = phi float [ %3200, %3194 ], [ %2286, %2594 ], [ %2286, %2278 ], [ %3200, %3309 ], [ %3200, %3307 ], [ %3200, %3261 ], [ %3200, %3225 ], [ %2286, %2298 ]
  %3344 = phi float [ %2287, %3194 ], [ %2287, %2594 ], [ %2287, %2278 ], [ %3332, %3309 ], [ %2287, %3307 ], [ %3304, %3261 ], [ %3256, %3225 ], [ %2287, %2298 ]
  %3345 = phi float [ %2288, %3194 ], [ %2288, %2594 ], [ %2288, %2278 ], [ %3333, %3309 ], [ %2288, %3307 ], [ %3305, %3261 ], [ %3257, %3225 ], [ %2288, %2298 ]
  %3346 = phi float [ %2289, %3194 ], [ %2289, %2594 ], [ %2289, %2278 ], [ %3334, %3309 ], [ %2289, %3307 ], [ %3306, %3261 ], [ %3258, %3225 ], [ %2289, %2298 ]
  %3347 = phi float [ %2290, %3194 ], [ %2290, %2594 ], [ %2290, %2278 ], [ %3324, %3309 ], [ %2290, %3307 ], [ %3296, %3261 ], [ %3244, %3225 ], [ %2290, %2298 ]
  %3348 = phi float [ %2291, %3194 ], [ %2291, %2594 ], [ %2291, %2278 ], [ %3325, %3309 ], [ %2291, %3307 ], [ %3297, %3261 ], [ %3245, %3225 ], [ %2291, %2298 ]
  %3349 = phi float [ %2292, %3194 ], [ %2292, %2594 ], [ %2292, %2278 ], [ %3326, %3309 ], [ %2292, %3307 ], [ %3298, %3261 ], [ %3246, %3225 ], [ %2292, %2298 ]
  %3350 = phi float [ %3201, %3194 ], [ %2293, %2594 ], [ %2293, %2278 ], [ %3201, %3309 ], [ %3201, %3307 ], [ %3201, %3261 ], [ %3201, %3225 ], [ %2293, %2298 ]
  %3351 = phi float [ %2294, %3194 ], [ %2294, %2594 ], [ %2294, %2278 ], [ %3320, %3309 ], [ %2294, %3307 ], [ %3292, %3261 ], [ %3237, %3225 ], [ %2294, %2298 ]
  %3352 = phi float [ %2295, %3194 ], [ %2295, %2594 ], [ %2295, %2278 ], [ %3317, %3309 ], [ %2295, %3307 ], [ %3269, %3261 ], [ %3234, %3225 ], [ %2295, %2298 ]
  %3353 = phi float [ %2296, %3194 ], [ %2296, %2594 ], [ %2296, %2278 ], [ %3328, %3309 ], [ %2296, %3307 ], [ %3300, %3261 ], [ %3249, %3225 ], [ %2296, %2298 ]
  %3354 = phi float [ %3202, %3194 ], [ %2297, %2594 ], [ %2297, %2278 ], [ %3202, %3309 ], [ %3202, %3307 ], [ %3202, %3261 ], [ %3202, %3225 ], [ %2297, %2298 ]
  br i1 %397, label %4392, label %3355

; <label>:3355                                    ; preds = %3335
  %3356 = icmp ult i32 %451, 4
  %3357 = add i32 %44, 72
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = add i32 %44, 76
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = or i32 %3362, %3359
  %3364 = icmp eq i32 %3363, 0
  br i1 %3364, label %4392, label %3365

; <label>:3365                                    ; preds = %3355
  %3366 = and i32 %3359, 262144
  %3367 = icmp ne i32 %3366, 0
  %3368 = select i1 %3367, float %47, float 1.000000e+00
  %3369 = select i1 %3367, float %48, float 0.000000e+00
  %3370 = select i1 %3367, float %49, float 0.000000e+00
  %3371 = select i1 %3367, float %50, float 1.000000e+00
  %3372 = select i1 %3367, float %51, float %72
  %3373 = select i1 %3367, float %52, float %73
  %3374 = add i32 %44, 332
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = lshr i32 %3376, 16
  %3378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3377)  ; LegacyF16ToF32(value)
  %3379 = fmul fast float %3378, 0x3F50624DE0000000
  %3380 = add i32 %44, 136
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = lshr i32 %3382, 16
  %3384 = and i32 %3383, 255
  %3385 = lshr i32 %3382, 24
  %3386 = add i32 %44, 340
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 65535
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = lshr i32 %3388, 16
  %3392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3391)  ; LegacyF16ToF32(value)
  %3393 = add i32 %44, 80
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 22
  %3397 = shl nuw nsw i32 %3396, 5
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = shl i32 %3395, 4
  %3400 = and i32 %3399, 32752
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = lshr i32 %3395, 7
  %3403 = and i32 %3402, 32752
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3405, 3
  %3407 = fmul fast float %3406, 1.000000e+03
  %3408 = fmul fast float %387, %3407
  %3409 = call float @dx.op.unary.f32(i32 22, float %3408)  ; Frc(value)
  %3410 = fadd fast float %3409, %377
  %3411 = fmul fast float %388, %3407
  %3412 = call float @dx.op.unary.f32(i32 22, float %3411)  ; Frc(value)
  %3413 = fadd fast float %3412, %379
  %3414 = fmul fast float %3379, %3407
  %3415 = call float @dx.op.unary.f32(i32 22, float %3414)  ; Frc(value)
  %3416 = fmul fast float %3415, 0x401921FB60000000
  %3417 = fadd fast float %3416, %3398
  %3418 = call float @dx.op.unary.f32(i32 13, float %3417)  ; Sin(value)
  %3419 = call float @dx.op.unary.f32(i32 12, float %3417)  ; Cos(value)
  %3420 = fsub fast float -0.000000e+00, %3418
  %3421 = fadd fast float %3372, -5.000000e-01
  %3422 = fadd fast float %3373, -5.000000e-01
  %3423 = fmul fast float %3390, %3421
  %3424 = fmul fast float %3392, %3422
  %3425 = fadd fast float %3423, 5.000000e-01
  %3426 = fadd fast float %3424, 5.000000e-01
  %3427 = fmul fast float %3401, %3425
  %3428 = fmul fast float %3404, %3426
  %3429 = fmul fast float %3419, %3427
  %3430 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3428, float %3429)  ; FMad(a,b,c)
  %3431 = fmul fast float %3418, %3427
  %3432 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3428, float %3431)  ; FMad(a,b,c)
  %3433 = fadd fast float %3410, %3430
  %3434 = fadd fast float %3413, %3432
  %3435 = icmp ugt i32 %3384, 1
  %3436 = icmp ugt i32 %3382, 33554431
  %3437 = or i1 %3436, %3435
  br i1 %3437, label %3438, label %3463

; <label>:3438                                    ; preds = %3365
  %3439 = add i32 %44, 276
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = lshr i32 %3441, 16
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = fmul fast float %3406, %3443
  %3445 = call float @dx.op.unary.f32(i32 22, float %3444)  ; Frc(value)
  %3446 = mul nuw nsw i32 %3384, %3385
  %3447 = uitofp i32 %3446 to float
  %3448 = fmul fast float %3445, %3447
  %3449 = call float @dx.op.unary.f32(i32 27, float %3448)  ; Round_ni(value)
  %3450 = fptoui float %3449 to i32
  %3451 = urem i32 %3450, %3384
  %3452 = udiv i32 %3450, %3385
  %3453 = call float @dx.op.unary.f32(i32 22, float %3433)  ; Frc(value)
  %3454 = call float @dx.op.unary.f32(i32 22, float %3434)  ; Frc(value)
  %3455 = uitofp i32 %3451 to float
  %3456 = uitofp i32 %3452 to float
  %3457 = fadd fast float %3453, %3455
  %3458 = fadd fast float %3454, %3456
  %3459 = uitofp i32 %3384 to float
  %3460 = uitofp i32 %3385 to float
  %3461 = fdiv fast float %3457, %3459
  %3462 = fdiv fast float %3458, %3460
  br label %3463

; <label>:3463                                    ; preds = %3438, %3365
  %3464 = phi float [ %3461, %3438 ], [ %3433, %3365 ]
  %3465 = phi float [ %3462, %3438 ], [ %3434, %3365 ]
  %3466 = and i32 %3359, 16777216
  %3467 = icmp eq i32 %3466, 0
  br i1 %3467, label %3577, label %3468

; <label>:3468                                    ; preds = %3463
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.CBufRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %3473 = fadd fast float %3470, %145
  %3474 = fadd fast float %3471, %146
  %3475 = fadd fast float %3472, %147
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = icmp eq i32 %45, 65535
  br i1 %3479, label %3574, label %3480

; <label>:3480                                    ; preds = %3468
  %3481 = lshr i32 %45, 1
  %3482 = shl i32 %3481, 2
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %45, 1
  %3486 = icmp ne i32 %3485, 0
  %3487 = lshr i32 %3484, 16
  %3488 = and i32 %3484, 65535
  %3489 = select i1 %3486, i32 %3487, i32 %3488
  %3490 = icmp eq i32 %3489, 65535
  br i1 %3490, label %3570, label %3491

; <label>:3491                                    ; preds = %3480
  %3492 = mul nuw nsw i32 %3489, 40
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = add nuw nsw i32 %3492, 12
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = add nuw nsw i32 %3492, 24
  %3503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3507 = add nuw nsw i32 %3492, 36
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = fsub fast float %3473, %3494
  %3511 = fsub fast float %3474, %3495
  %3512 = fsub fast float %3475, %3496
  %3513 = fmul fast float %3509, %3510
  %3514 = fmul fast float %3509, %3511
  %3515 = fmul fast float %3509, %3512
  %3516 = call float @dx.op.unary.f32(i32 27, float %3513)  ; Round_ni(value)
  %3517 = call float @dx.op.unary.f32(i32 27, float %3514)  ; Round_ni(value)
  %3518 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3519 = fadd fast float %3516, 5.000000e-01
  %3520 = fadd fast float %3517, 5.000000e-01
  %3521 = fadd fast float %3518, 5.000000e-01
  %3522 = fmul fast float %3519, %3499
  %3523 = fmul fast float %3520, %3500
  %3524 = fmul fast float %3521, %3501
  %3525 = shl i32 %45, 2
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = add i32 %3527, 0
  %3529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3530 = call float @dx.op.unary.f32(i32 22, float %3522)  ; Frc(value)
  %3531 = call float @dx.op.unary.f32(i32 22, float %3523)  ; Frc(value)
  %3532 = call float @dx.op.unary.f32(i32 22, float %3524)  ; Frc(value)
  %3533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3529, %dx.types.Handle %39, float %3530, float %3531, float %3532, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.ResRet.f32 %3533, 2
  %3537 = fmul fast float %3534, 1.023000e+03
  %3538 = fmul fast float %3535, 1.023000e+03
  %3539 = fmul fast float %3536, 1.023000e+03
  %3540 = fadd fast float %3537, 5.000000e-01
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = call float @dx.op.unary.f32(i32 27, float %3540)  ; Round_ni(value)
  %3544 = call float @dx.op.unary.f32(i32 27, float %3541)  ; Round_ni(value)
  %3545 = call float @dx.op.unary.f32(i32 27, float %3542)  ; Round_ni(value)
  %3546 = fsub fast float %3513, %3516
  %3547 = fsub fast float %3514, %3517
  %3548 = fsub fast float %3515, %3518
  %3549 = fmul fast float %3546, 7.500000e-01
  %3550 = fmul fast float %3547, 7.500000e-01
  %3551 = fmul fast float %3548, 7.500000e-01
  %3552 = fadd fast float %3516, 1.250000e-01
  %3553 = fadd fast float %3552, %3549
  %3554 = fadd fast float %3553, %3543
  %3555 = fadd fast float %3517, 1.250000e-01
  %3556 = fadd fast float %3555, %3550
  %3557 = fadd fast float %3556, %3544
  %3558 = fadd fast float %3518, 1.250000e-01
  %3559 = fadd fast float %3558, %3551
  %3560 = fadd fast float %3559, %3545
  %3561 = fmul fast float %3554, %3504
  %3562 = fmul fast float %3557, %3505
  %3563 = fmul fast float %3560, %3506
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = add i32 %3565, 0
  %3567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3567, %dx.types.Handle %37, float %3561, float %3562, float %3563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3569 = extractvalue %dx.types.ResRet.f32 %3568, 0
  br label %3570

; <label>:3570                                    ; preds = %3491, %3480
  %3571 = phi float [ %3569, %3491 ], [ -1.000000e+00, %3480 ]
  %3572 = fadd fast float %3571, %3478
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  br label %3574

; <label>:3574                                    ; preds = %3570, %3468
  %3575 = phi float [ %3573, %3570 ], [ %3478, %3468 ]
  %3576 = fmul fast float %3575, %446
  br label %3577

; <label>:3577                                    ; preds = %3574, %3463
  %3578 = phi float [ %3576, %3574 ], [ %446, %3463 ]
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = and i32 %3580, 256
  %3582 = icmp eq i32 %3581, 0
  br i1 %3582, label %3629, label %3583

; <label>:3583                                    ; preds = %3577
  %3584 = add i32 %44, 452
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = add i32 %3586, 0
  %3588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3588, %dx.types.Handle %87, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = add i32 %44, 148
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = shl i32 %3593, 4
  %3595 = and i32 %3594, 32752
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = lshr i32 %3593, 7
  %3598 = and i32 %3597, 32752
  %3599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3598)  ; LegacyF16ToF32(value)
  %3600 = fsub fast float 1.000000e+00, %3578
  %3601 = call float @dx.op.binary.f32(i32 35, float %3600, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3602 = bitcast float %3578 to i32
  %3603 = sitofp i32 %3602 to float
  %3604 = fadd fast float %3603, 0xC1CFBF8940000000
  %3605 = fmul fast float %3599, %3604
  %3606 = fadd fast float %3605, 0x41CFBF8940000000
  %3607 = fptosi float %3606 to i32
  %3608 = bitcast i32 %3607 to float
  %3609 = bitcast float %3601 to i32
  %3610 = sitofp i32 %3609 to float
  %3611 = fadd fast float %3610, 0xC1CFBF8940000000
  %3612 = fmul fast float %3611, %3599
  %3613 = fadd fast float %3612, 0x41CFBF8940000000
  %3614 = fptosi float %3613 to i32
  %3615 = bitcast i32 %3614 to float
  %3616 = fmul fast float %3608, %3596
  %3617 = fmul fast float %3615, %3596
  %3618 = fsub fast float %3601, %3616
  %3619 = fadd fast float %3617, %3601
  %3620 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3621 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3622 = fsub fast float %3590, %3620
  %3623 = fsub fast float %3621, %3620
  %3624 = bitcast float %3623 to i32
  %3625 = sub nsw i32 2129859010, %3624
  %3626 = bitcast i32 %3625 to float
  %3627 = fmul fast float %3626, %3622
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  br label %3629

; <label>:3629                                    ; preds = %3583, %3577
  %3630 = phi float [ %3628, %3583 ], [ %3578, %3577 ]
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 128
  %3634 = icmp eq i32 %3633, 0
  br i1 %3634, label %3651, label %3635

; <label>:3635                                    ; preds = %3629
  %3636 = add i32 %44, 436
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = add i32 %3638, 0
  %3640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3640, %dx.types.Handle %87, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = and i32 %3644, 524288
  %3646 = icmp ne i32 %3645, 0
  %3647 = fcmp fast ogt float %3642, 0x3FE0101020000000
  %3648 = select i1 %3647, float 1.000000e+00, float 0.000000e+00
  %3649 = select i1 %3646, float %3648, float %3642
  %3650 = fmul fast float %3649, %3630
  br label %3651

; <label>:3651                                    ; preds = %3635, %3629
  %3652 = phi float [ %3650, %3635 ], [ %3630, %3629 ]
  %3653 = fcmp fast ult float %3652, 0x3F70101020000000
  br i1 %3653, label %4392, label %3654

; <label>:3654                                    ; preds = %3651
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = and i32 %3656, 16
  %3658 = icmp eq i32 %3657, 0
  br i1 %3658, label %3857, label %3659

; <label>:3659                                    ; preds = %3654
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = add i32 %44, 388
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = add i32 %3664, 0
  %3666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3666, %dx.types.Handle %86, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3672 = and i32 %3661, 255
  %3673 = uitofp i32 %3672 to float
  %3674 = lshr i32 %3661, 8
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = fmul fast float %3671, %3673
  %3678 = fadd fast float %3677, %3676
  %3679 = fmul fast float %3678, 0x3F70101000000000
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = and i32 %3681, 512
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3692, label %3684

; <label>:3684                                    ; preds = %3659
  %3685 = add i32 %44, 472
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = add i32 %3687, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3689, %dx.types.Handle %87, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  br label %3692

; <label>:3692                                    ; preds = %3684, %3659
  %3693 = phi float [ %3691, %3684 ], [ 1.000000e+00, %3659 ]
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 33554432
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3804, label %3698

; <label>:3698                                    ; preds = %3692
  %3699 = add i32 %44, 272
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = and i32 %3701, 65535
  %3703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3702)  ; LegacyF16ToF32(value)
  %3704 = lshr i32 %3701, 16
  %3705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3704)  ; LegacyF16ToF32(value)
  %3706 = add i32 %44, 276
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 65535
  %3710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3709)  ; LegacyF16ToF32(value)
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3727 = add i32 %44, 268
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = lshr i32 %3729, 24
  %3731 = uitofp i32 %3730 to float
  %3732 = fmul fast float %3731, 0x3F70101020000000
  %3733 = and i32 %3729, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = lshr i32 %3729, 8
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = lshr i32 %3729, 16
  %3741 = and i32 %3740, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = bitcast float %3668 to i32
  %3745 = ashr i32 %3744, 1
  %3746 = sub nsw i32 1597463174, %3745
  %3747 = bitcast i32 %3746 to float
  %3748 = fmul fast float %3668, 5.000000e-01
  %3749 = fmul fast float %3747, %3747
  %3750 = fmul fast float %3749, %3748
  %3751 = fsub fast float 1.500000e+00, %3750
  %3752 = fmul fast float %3747, %3668
  %3753 = fmul fast float %3752, %3751
  %3754 = bitcast float %3669 to i32
  %3755 = ashr i32 %3754, 1
  %3756 = sub nsw i32 1597463174, %3755
  %3757 = bitcast i32 %3756 to float
  %3758 = fmul fast float %3669, 5.000000e-01
  %3759 = fmul fast float %3757, %3757
  %3760 = fmul fast float %3759, %3758
  %3761 = fsub fast float 1.500000e+00, %3760
  %3762 = fmul fast float %3757, %3669
  %3763 = fmul fast float %3762, %3761
  %3764 = bitcast float %3670 to i32
  %3765 = ashr i32 %3764, 1
  %3766 = sub nsw i32 1597463174, %3765
  %3767 = bitcast i32 %3766 to float
  %3768 = fmul fast float %3670, 5.000000e-01
  %3769 = fmul fast float %3767, %3767
  %3770 = fmul fast float %3769, %3768
  %3771 = fsub fast float 1.500000e+00, %3770
  %3772 = fmul fast float %3767, %3670
  %3773 = fmul fast float %3772, %3771
  %3774 = fsub fast float %3753, %3735
  %3775 = fsub fast float %3763, %3739
  %3776 = fsub fast float %3773, %3743
  %3777 = fmul fast float %3774, %3703
  %3778 = fmul fast float %3775, %3705
  %3779 = fmul fast float %3776, %3710
  %3780 = fadd fast float %3777, %3718
  %3781 = fadd fast float %3778, %3722
  %3782 = fadd fast float %3779, %3726
  %3783 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3784 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3785 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3786 = fmul fast float %3783, %3783
  %3787 = fmul fast float %3784, %3784
  %3788 = fmul fast float %3785, %3785
  %3789 = fsub fast float %3786, %3668
  %3790 = fsub fast float %3787, %3669
  %3791 = fsub fast float %3788, %3670
  %3792 = fmul fast float %3789, %3693
  %3793 = fmul fast float %3790, %3693
  %3794 = fmul fast float %3791, %3693
  %3795 = fadd fast float %3792, %3668
  %3796 = fadd fast float %3793, %3669
  %3797 = fadd fast float %3794, %3670
  %3798 = fadd fast float %3715, %3679
  %3799 = fsub fast float %3798, %3732
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = fsub fast float %3800, %3679
  %3802 = fmul fast float %3801, %3693
  %3803 = fadd fast float %3802, %3679
  br label %3857

; <label>:3804                                    ; preds = %3692
  %3805 = and i32 %3695, 134217728
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3841, label %3807

; <label>:3807                                    ; preds = %3804
  %3808 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %3809 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3810 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3811 = fadd fast float %3808, -5.000000e-01
  %3812 = fadd fast float %3809, -5.000000e-01
  %3813 = fadd fast float %3810, -5.000000e-01
  %3814 = fmul fast float %3811, %3693
  %3815 = fmul fast float %3812, %3693
  %3816 = fmul fast float %3813, %3693
  %3817 = fadd fast float %3814, 5.000000e-01
  %3818 = fadd fast float %3815, 5.000000e-01
  %3819 = fadd fast float %3816, 5.000000e-01
  %3820 = call float @dx.op.unary.f32(i32 24, float %3668)  ; Sqrt(value)
  %3821 = call float @dx.op.unary.f32(i32 24, float %3669)  ; Sqrt(value)
  %3822 = call float @dx.op.unary.f32(i32 24, float %3670)  ; Sqrt(value)
  %3823 = fmul fast float %3817, 2.000000e+00
  %3824 = fsub fast float 1.000000e+00, %3823
  %3825 = fmul fast float %3824, %3820
  %3826 = fadd fast float %3825, %3823
  %3827 = fmul fast float %3826, %3820
  %3828 = fmul fast float %3818, 2.000000e+00
  %3829 = fsub fast float 1.000000e+00, %3828
  %3830 = fmul fast float %3829, %3821
  %3831 = fadd fast float %3830, %3828
  %3832 = fmul fast float %3831, %3821
  %3833 = fmul fast float %3819, 2.000000e+00
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = fmul fast float %3834, %3822
  %3836 = fadd fast float %3835, %3833
  %3837 = fmul fast float %3836, %3822
  %3838 = fmul fast float %3827, %3827
  %3839 = fmul fast float %3832, %3832
  %3840 = fmul fast float %3837, %3837
  br label %3857

; <label>:3841                                    ; preds = %3804
  %3842 = fmul fast float %364, %364
  %3843 = fmul fast float %368, %368
  %3844 = fmul fast float %372, %372
  %3845 = fadd fast float %3842, -1.000000e+00
  %3846 = fadd fast float %3843, -1.000000e+00
  %3847 = fadd fast float %3844, -1.000000e+00
  %3848 = fmul fast float %3693, %3845
  %3849 = fmul fast float %3693, %3846
  %3850 = fmul fast float %3693, %3847
  %3851 = fadd fast float %3848, 1.000000e+00
  %3852 = fadd fast float %3849, 1.000000e+00
  %3853 = fadd fast float %3850, 1.000000e+00
  %3854 = fmul fast float %3851, %3668
  %3855 = fmul fast float %3852, %3669
  %3856 = fmul fast float %3853, %3670
  br label %3857

; <label>:3857                                    ; preds = %3841, %3807, %3698, %3654
  %3858 = phi float [ %3803, %3698 ], [ %3679, %3807 ], [ %3679, %3841 ], [ 0x3FA23C0BE0000000, %3654 ]
  %3859 = phi float [ %3795, %3698 ], [ %3838, %3807 ], [ %3854, %3841 ], [ 1.000000e+00, %3654 ]
  %3860 = phi float [ %3796, %3698 ], [ %3839, %3807 ], [ %3855, %3841 ], [ 1.000000e+00, %3654 ]
  %3861 = phi float [ %3797, %3698 ], [ %3840, %3807 ], [ %3856, %3841 ], [ 1.000000e+00, %3654 ]
  %3862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.i32 %3862, 1
  %3864 = and i32 %3863, 1
  %3865 = icmp ne i32 %3864, 0
  %3866 = add i32 %44, 356
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = and i32 %3868, 32
  %3870 = icmp ne i32 %3869, 0
  %3871 = and i1 %3865, %3870
  %3872 = select i1 %3871, float 1.000000e+00, float %3859
  %3873 = select i1 %3871, float 0x3FD3333340000000, float %3860
  %3874 = select i1 %3871, float 0x3FD3333340000000, float %3861
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = and i32 %3876, 32
  %3878 = icmp eq i32 %3877, 0
  br i1 %3878, label %3951, label %3879

; <label>:3879                                    ; preds = %3857
  %3880 = add i32 %44, 140
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = add i32 %44, 404
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = add i32 %3885, 0
  %3887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3887, %dx.types.Handle %86, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = and i32 %3882, 255
  %3894 = uitofp i32 %3893 to float
  %3895 = lshr i32 %3882, 8
  %3896 = and i32 %3895, 255
  %3897 = uitofp i32 %3896 to float
  %3898 = lshr i32 %3882, 16
  %3899 = and i32 %3898, 255
  %3900 = uitofp i32 %3899 to float
  %3901 = fmul fast float %3900, 0x3F70101000000000
  %3902 = fmul fast float %3889, %3894
  %3903 = fadd fast float %3902, %3897
  %3904 = fmul fast float %3903, 0x3F70101000000000
  %3905 = fadd fast float %3890, -5.000000e-01
  %3906 = fadd fast float %3892, -5.000000e-01
  %3907 = fmul fast float %3905, %3901
  %3908 = fmul fast float %3906, %3901
  %3909 = fadd fast float %3907, 5.000000e-01
  %3910 = fadd fast float %3908, 5.000000e-01
  %3911 = fmul fast float %3909, 2.000000e+00
  %3912 = fadd fast float %3911, -1.000000e+00
  %3913 = fmul fast float %3910, 2.000000e+00
  %3914 = fadd fast float %3913, -1.000000e+00
  %3915 = fadd fast float %3912, %3914
  %3916 = fmul fast float %3915, 5.000000e-01
  %3917 = fsub fast float %3912, %3914
  %3918 = fmul fast float %3917, 5.000000e-01
  %3919 = call float @dx.op.unary.f32(i32 6, float %3916)  ; FAbs(value)
  %3920 = fsub fast float 1.000000e+00, %3919
  %3921 = call float @dx.op.unary.f32(i32 6, float %3918)  ; FAbs(value)
  %3922 = fsub fast float %3920, %3921
  %3923 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3918, float %3922, float %3916, float %3918, float %3922)  ; Dot3(ax,ay,az,bx,by,bz)
  %3924 = call float @dx.op.unary.f32(i32 25, float %3923)  ; Rsqrt(value)
  %3925 = fmul fast float %3916, %3924
  %3926 = fmul fast float %3918, %3924
  %3927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.i32 %3927, 0
  %3929 = and i32 %3928, 67108864
  %3930 = icmp eq i32 %3929, 0
  br i1 %3930, label %3947, label %3931

; <label>:3931                                    ; preds = %3879
  %3932 = add i32 %44, 328
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = and i32 %3934, 65535
  %3936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3935)  ; LegacyF16ToF32(value)
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = and i32 %3938, 65535
  %3940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3939)  ; LegacyF16ToF32(value)
  %3941 = lshr i32 %3934, 16
  %3942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3941)  ; LegacyF16ToF32(value)
  %3943 = fsub fast float %3904, %3942
  %3944 = fmul fast float %3943, %3936
  %3945 = fadd fast float %3944, %3940
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  br label %3947

; <label>:3947                                    ; preds = %3931, %3879
  %3948 = phi float [ %3946, %3931 ], [ %3904, %3879 ]
  %3949 = call float @dx.op.dot2.f32(i32 54, float %3925, float %3926, float %3368, float %3369)  ; Dot2(ax,ay,bx,by)
  %3950 = call float @dx.op.dot2.f32(i32 54, float %3925, float %3926, float %3370, float %3371)  ; Dot2(ax,ay,bx,by)
  br label %3951

; <label>:3951                                    ; preds = %3947, %3857
  %3952 = phi float [ %3948, %3947 ], [ 0x3FD6666660000000, %3857 ]
  %3953 = phi float [ %3949, %3947 ], [ 0.000000e+00, %3857 ]
  %3954 = phi float [ %3950, %3947 ], [ 0.000000e+00, %3857 ]
  %3955 = phi float [ %3891, %3947 ], [ 1.000000e+00, %3857 ]
  %3956 = add i32 %44, 208
  %3957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.i32 %3957, 0
  %3959 = lshr i32 %3958, 22
  %3960 = shl nuw nsw i32 %3959, 5
  %3961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3960)  ; LegacyF16ToF32(value)
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = and i32 %3963, 64
  %3965 = icmp eq i32 %3964, 0
  br i1 %3965, label %3999, label %3966

; <label>:3966                                    ; preds = %3951
  %3967 = add i32 %44, 420
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = add i32 %3969, 0
  %3971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = and i32 %3973, 131072
  %3975 = icmp eq i32 %3974, 0
  %3976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3971, %dx.types.Handle %86, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = fmul fast float %3977, %352
  %3981 = fmul fast float %3978, %355
  %3982 = fmul fast float %3979, %358
  br i1 %3975, label %3989, label %3983

; <label>:3983                                    ; preds = %3966
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = fmul fast float %3985, %3980
  %3987 = fmul fast float %3985, %3981
  %3988 = fmul fast float %3985, %3982
  br label %3989

; <label>:3989                                    ; preds = %3983, %3966
  %3990 = phi float [ %3986, %3983 ], [ %3980, %3966 ]
  %3991 = phi float [ %3987, %3983 ], [ %3981, %3966 ]
  %3992 = phi float [ %3988, %3983 ], [ %3982, %3966 ]
  %3993 = fmul fast float %3990, %3961
  %3994 = select i1 %206, float %3993, float %3990
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3991, float %3992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = select i1 %206, float 0.000000e+00, float %3990
  %3997 = select i1 %206, float %3995, float %3991
  %3998 = select i1 %206, float 0.000000e+00, float %3992
  br label %3999

; <label>:3999                                    ; preds = %3989, %3951
  %4000 = phi float [ %3996, %3989 ], [ 0.000000e+00, %3951 ]
  %4001 = phi float [ %3997, %3989 ], [ 0.000000e+00, %3951 ]
  %4002 = phi float [ %3998, %3989 ], [ 0.000000e+00, %3951 ]
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = and i32 %4004, 1024
  %4006 = icmp eq i32 %4005, 0
  br i1 %4006, label %4037, label %4007

; <label>:4007                                    ; preds = %3999
  %4008 = add i32 %44, 200
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = and i32 %4010, 255
  %4012 = uitofp i32 %4011 to float
  %4013 = fmul fast float %4012, 0x3F70101020000000
  %4014 = lshr i32 %4010, 8
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = fmul fast float %4016, 0x3F70101020000000
  %4018 = lshr i32 %4010, 16
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = fmul fast float %4020, 0x3F70101020000000
  %4022 = fmul fast float %4013, %4013
  %4023 = fmul fast float %4017, %4017
  %4024 = fmul fast float %4021, %4021
  %4025 = add i32 %44, 488
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = add i32 %4027, 0
  %4029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4029, %dx.types.Handle %87, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = fmul fast float %4022, %4031
  %4035 = fmul fast float %4023, %4032
  %4036 = fmul fast float %4024, %4033
  br label %4037

; <label>:4037                                    ; preds = %4007, %3999
  %4038 = phi float [ %4034, %4007 ], [ 0.000000e+00, %3999 ]
  %4039 = phi float [ %4035, %4007 ], [ 0.000000e+00, %3999 ]
  %4040 = phi float [ %4036, %4007 ], [ 0.000000e+00, %3999 ]
  %4041 = fcmp fast ogt float %4038, 0.000000e+00
  %4042 = fcmp fast ogt float %4039, 0.000000e+00
  %4043 = fcmp fast ogt float %4040, 0.000000e+00
  %4044 = call float @dx.op.unary.f32(i32 23, float %4038)  ; Log(value)
  %4045 = call float @dx.op.unary.f32(i32 23, float %4039)  ; Log(value)
  %4046 = call float @dx.op.unary.f32(i32 23, float %4040)  ; Log(value)
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = lshr i32 %4048, 7
  %4050 = and i32 %4049, 32752
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = fmul fast float %4044, 0xBFE62E4300000000
  %4053 = fmul fast float %4052, %4051
  %4054 = fmul fast float %4045, 0xBFE62E4300000000
  %4055 = fmul fast float %4054, %4051
  %4056 = fmul fast float %4046, 0xBFE62E4300000000
  %4057 = fmul fast float %4056, %4051
  %4058 = select i1 %4041, float %4053, float 1.270000e+02
  %4059 = select i1 %4042, float %4055, float 1.270000e+02
  %4060 = select i1 %4043, float %4057, float 1.270000e+02
  %4061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.i32 %4061, 0
  %4063 = and i32 %4062, 10240
  %4064 = icmp eq i32 %4063, 0
  br i1 %4064, label %4109, label %4065

; <label>:4065                                    ; preds = %4037
  %4066 = add i32 %44, 504
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = add i32 %4068, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4070, %dx.types.Handle %87, float %3464, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 3
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = and i32 %4075, 1048576
  %4077 = icmp ne i32 %4076, 0
  %4078 = and i32 %4075, 8192
  %4079 = icmp eq i32 %4078, 0
  br i1 %4079, label %4095, label %4080

; <label>:4080                                    ; preds = %4065
  %4081 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4082 = select i1 %4077, float %4081, float %4072
  %4083 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4084 = select i1 %4077, float %4083, float %4072
  %4085 = add i32 %44, 144
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = lshr i32 %4087, 16
  %4089 = and i32 %4088, 255
  %4090 = uitofp i32 %4089 to float
  %4091 = fmul fast float %4090, 0x3F80101020000000
  %4092 = fmul fast float %4091, %4084
  %4093 = fmul fast float %4091, %4072
  %4094 = fmul fast float %4091, %4082
  br label %4095

; <label>:4095                                    ; preds = %4080, %4065
  %4096 = phi float [ %4092, %4080 ], [ 0.000000e+00, %4065 ]
  %4097 = phi float [ %4093, %4080 ], [ 0.000000e+00, %4065 ]
  %4098 = phi float [ %4094, %4080 ], [ 0.000000e+00, %4065 ]
  %4099 = and i32 %4075, 2048
  %4100 = icmp eq i32 %4099, 0
  br i1 %4100, label %4109, label %4101

; <label>:4101                                    ; preds = %4095
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = shl i32 %4103, 4
  %4105 = and i32 %4104, 32752
  %4106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4105)  ; LegacyF16ToF32(value)
  %4107 = fmul fast float %4106, %4073
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4109

; <label>:4109                                    ; preds = %4101, %4095, %4037
  %4110 = phi float [ %4096, %4101 ], [ %4096, %4095 ], [ 0.000000e+00, %4037 ]
  %4111 = phi float [ %4097, %4101 ], [ %4097, %4095 ], [ 0.000000e+00, %4037 ]
  %4112 = phi float [ %4098, %4101 ], [ %4098, %4095 ], [ 0.000000e+00, %4037 ]
  %4113 = phi float [ %4108, %4101 ], [ 0x3F70101020000000, %4095 ], [ 0x3F70101020000000, %4037 ]
  %4114 = add i32 %44, 144
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = and i32 %4116, 255
  %4118 = uitofp i32 %4117 to float
  %4119 = lshr i32 %4116, 8
  %4120 = and i32 %4119, 255
  %4121 = uitofp i32 %4120 to float
  %4122 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = fmul fast float %4121, %4122
  %4124 = fadd fast float %4123, %4118
  %4125 = fmul fast float %4124, 0x3F70101020000000
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  br i1 %3356, label %4127, label %4162

; <label>:4127                                    ; preds = %4109
  %4128 = fmul fast float %4113, 2.000000e+00
  %4129 = fcmp fast olt float %4058, 1.270000e+02
  %4130 = fcmp fast olt float %4059, 1.270000e+02
  %4131 = fcmp fast olt float %4060, 1.270000e+02
  %4132 = fmul fast float %4058, 0xBFF7154760000000
  %4133 = fmul fast float %4132, %4128
  %4134 = fmul fast float %4059, 0xBFF7154760000000
  %4135 = fmul fast float %4134, %4128
  %4136 = fmul fast float %4060, 0xBFF7154760000000
  %4137 = fmul fast float %4136, %4128
  %4138 = call float @dx.op.unary.f32(i32 21, float %4133)  ; Exp(value)
  %4139 = call float @dx.op.unary.f32(i32 21, float %4135)  ; Exp(value)
  %4140 = call float @dx.op.unary.f32(i32 21, float %4137)  ; Exp(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = fadd fast float %4141, -1.000000e+00
  %4145 = select i1 %4129, float %4144, float -1.000000e+00
  %4146 = fadd fast float %4142, -1.000000e+00
  %4147 = select i1 %4130, float %4146, float -1.000000e+00
  %4148 = fadd fast float %4143, -1.000000e+00
  %4149 = select i1 %4131, float %4148, float -1.000000e+00
  %4150 = fmul fast float %4145, %3652
  %4151 = fmul fast float %4147, %3652
  %4152 = fmul fast float %4149, %3652
  %4153 = fadd fast float %4150, 1.000000e+00
  %4154 = fadd fast float %4151, 1.000000e+00
  %4155 = fadd fast float %4152, 1.000000e+00
  %4156 = fmul fast float %4153, %3338
  %4157 = fmul fast float %4154, %3339
  %4158 = fmul fast float %4155, %3340
  %4159 = fmul fast float %4153, %3341
  %4160 = fmul fast float %4154, %3342
  %4161 = fmul fast float %4155, %3343
  br label %4162

; <label>:4162                                    ; preds = %4127, %4109
  %4163 = phi float [ %4156, %4127 ], [ %3338, %4109 ]
  %4164 = phi float [ %4157, %4127 ], [ %3339, %4109 ]
  %4165 = phi float [ %4158, %4127 ], [ %3340, %4109 ]
  %4166 = phi float [ %4159, %4127 ], [ %3341, %4109 ]
  %4167 = phi float [ %4160, %4127 ], [ %3342, %4109 ]
  %4168 = phi float [ %4161, %4127 ], [ %3343, %4109 ]
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = and i32 %4170, 3
  %4172 = icmp eq i32 %4171, 3
  br i1 %4172, label %4251, label %4173

; <label>:4173                                    ; preds = %4162
  %4174 = and i32 %4170, 16
  %4175 = icmp ne i32 %4174, 0
  %4176 = select i1 %4175, float %3652, float 0.000000e+00
  %4177 = icmp eq i32 %4171, 0
  br i1 %4177, label %4178, label %4206

; <label>:4178                                    ; preds = %4173
  %4179 = and i32 %4170, 64
  %4180 = icmp ne i32 %4179, 0
  %4181 = select i1 %4180, float %3652, float 0.000000e+00
  %4182 = fsub fast float %3872, %4163
  %4183 = fsub fast float %3873, %4164
  %4184 = fsub fast float %3874, %4165
  %4185 = fmul fast float %4176, %4182
  %4186 = fmul fast float %4176, %4183
  %4187 = fmul fast float %4176, %4184
  %4188 = fadd fast float %4185, %4163
  %4189 = fadd fast float %4186, %4164
  %4190 = fadd fast float %4187, %4165
  %4191 = fsub fast float %3858, %3350
  %4192 = fmul fast float %4176, %4191
  %4193 = fadd fast float %4192, %3350
  %4194 = fsub fast float %4000, %4166
  %4195 = fsub fast float %4001, %4167
  %4196 = fsub fast float %4002, %4168
  %4197 = fmul fast float %4181, %4194
  %4198 = fmul fast float %4181, %4195
  %4199 = fmul fast float %4181, %4196
  %4200 = fadd fast float %4197, %4166
  %4201 = fadd fast float %4198, %4167
  %4202 = fadd fast float %4199, %4168
  %4203 = fsub fast float %4126, %3354
  %4204 = fmul fast float %4176, %4203
  %4205 = fadd fast float %4204, %3354
  br label %4251

; <label>:4206                                    ; preds = %4173
  %4207 = icmp eq i32 %4171, 1
  br i1 %4207, label %4208, label %4221

; <label>:4208                                    ; preds = %4206
  %4209 = fadd fast float %3872, -1.000000e+00
  %4210 = fadd fast float %3873, -1.000000e+00
  %4211 = fadd fast float %3874, -1.000000e+00
  %4212 = fmul fast float %4176, %4209
  %4213 = fmul fast float %4176, %4210
  %4214 = fmul fast float %4176, %4211
  %4215 = fadd fast float %4212, 1.000000e+00
  %4216 = fadd fast float %4213, 1.000000e+00
  %4217 = fadd fast float %4214, 1.000000e+00
  %4218 = fmul fast float %4215, %4163
  %4219 = fmul fast float %4216, %4164
  %4220 = fmul fast float %4217, %4165
  br label %4251

; <label>:4221                                    ; preds = %4206
  %4222 = icmp eq i32 %4171, 2
  br i1 %4222, label %4223, label %4251

; <label>:4223                                    ; preds = %4221
  %4224 = call float @dx.op.unary.f32(i32 24, float %3872)  ; Sqrt(value)
  %4225 = call float @dx.op.unary.f32(i32 24, float %3873)  ; Sqrt(value)
  %4226 = call float @dx.op.unary.f32(i32 24, float %3874)  ; Sqrt(value)
  %4227 = fadd fast float %4224, -5.000000e-01
  %4228 = fadd fast float %4225, -5.000000e-01
  %4229 = fadd fast float %4226, -5.000000e-01
  %4230 = fmul fast float %4227, %4176
  %4231 = fmul fast float %4228, %4176
  %4232 = fmul fast float %4229, %4176
  %4233 = fadd fast float %4230, 5.000000e-01
  %4234 = fadd fast float %4231, 5.000000e-01
  %4235 = fadd fast float %4232, 5.000000e-01
  %4236 = fmul fast float %4233, 2.000000e+00
  %4237 = fsub fast float 1.000000e+00, %4236
  %4238 = fmul fast float %4237, %4163
  %4239 = fadd fast float %4238, %4236
  %4240 = fmul fast float %4239, %4163
  %4241 = fmul fast float %4234, 2.000000e+00
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = fmul fast float %4242, %4164
  %4244 = fadd fast float %4243, %4241
  %4245 = fmul fast float %4244, %4164
  %4246 = fmul fast float %4235, 2.000000e+00
  %4247 = fsub fast float 1.000000e+00, %4246
  %4248 = fmul fast float %4247, %4165
  %4249 = fadd fast float %4248, %4246
  %4250 = fmul fast float %4249, %4165
  br label %4251

; <label>:4251                                    ; preds = %4223, %4221, %4208, %4178, %4162
  %4252 = phi float [ %4163, %4162 ], [ %4240, %4223 ], [ %4163, %4221 ], [ %4218, %4208 ], [ %4188, %4178 ]
  %4253 = phi float [ %4164, %4162 ], [ %4245, %4223 ], [ %4164, %4221 ], [ %4219, %4208 ], [ %4189, %4178 ]
  %4254 = phi float [ %4165, %4162 ], [ %4250, %4223 ], [ %4165, %4221 ], [ %4220, %4208 ], [ %4190, %4178 ]
  %4255 = phi float [ %4166, %4162 ], [ %4166, %4223 ], [ %4166, %4221 ], [ %4166, %4208 ], [ %4200, %4178 ]
  %4256 = phi float [ %4167, %4162 ], [ %4167, %4223 ], [ %4167, %4221 ], [ %4167, %4208 ], [ %4201, %4178 ]
  %4257 = phi float [ %4168, %4162 ], [ %4168, %4223 ], [ %4168, %4221 ], [ %4168, %4208 ], [ %4202, %4178 ]
  %4258 = phi float [ %3350, %4162 ], [ %3350, %4223 ], [ %3350, %4221 ], [ %3350, %4208 ], [ %4193, %4178 ]
  %4259 = phi float [ %3354, %4162 ], [ %3354, %4223 ], [ %3354, %4221 ], [ %3354, %4208 ], [ %4205, %4178 ]
  %4260 = and i32 %4170, 12
  %4261 = icmp eq i32 %4260, 12
  br i1 %4261, label %4392, label %4262

; <label>:4262                                    ; preds = %4251
  %4263 = and i32 %4170, 2097184
  %4264 = icmp eq i32 %4263, 2097184
  %4265 = select i1 %4264, float %3652, float 0.000000e+00
  %4266 = and i32 %4170, 4194336
  %4267 = icmp eq i32 %4266, 4194336
  %4268 = select i1 %4267, float %3652, float 0.000000e+00
  %4269 = and i32 %4170, 8388640
  %4270 = icmp eq i32 %4269, 8388640
  %4271 = select i1 %4270, float %3652, float 0.000000e+00
  %4272 = and i32 %4170, 1024
  %4273 = icmp ne i32 %4272, 0
  %4274 = select i1 %4273, float %3652, float 0.000000e+00
  %4275 = and i32 %4170, 2048
  %4276 = icmp ne i32 %4275, 0
  %4277 = select i1 %4276, float %3652, float 0.000000e+00
  %4278 = and i32 %4170, 8192
  %4279 = icmp ne i32 %4278, 0
  %4280 = select i1 %4279, float %3652, float 0.000000e+00
  %4281 = icmp eq i32 %4260, 0
  br i1 %4281, label %4282, label %4316

; <label>:4282                                    ; preds = %4262
  %4283 = fsub fast float %3953, %3336
  %4284 = fsub fast float %3954, %3337
  %4285 = fmul fast float %4265, %4283
  %4286 = fmul fast float %4265, %4284
  %4287 = fadd fast float %4285, %3336
  %4288 = fadd fast float %4286, %3337
  %4289 = fsub fast float %3955, %3352
  %4290 = fmul fast float %4268, %4289
  %4291 = fadd fast float %4290, %3352
  %4292 = fsub fast float %3952, %3351
  %4293 = fmul fast float %4271, %4292
  %4294 = fadd fast float %4293, %3351
  %4295 = fsub fast float %4058, %3347
  %4296 = fsub fast float %4059, %3348
  %4297 = fsub fast float %4060, %3349
  %4298 = fmul fast float %4274, %4295
  %4299 = fmul fast float %4274, %4296
  %4300 = fmul fast float %4274, %4297
  %4301 = fadd fast float %4298, %3347
  %4302 = fadd fast float %4299, %3348
  %4303 = fadd fast float %4300, %3349
  %4304 = fsub fast float %4113, %3353
  %4305 = fmul fast float %4277, %4304
  %4306 = fadd fast float %4305, %3353
  %4307 = fsub fast float %4110, %3344
  %4308 = fsub fast float %4111, %3345
  %4309 = fsub fast float %4112, %3346
  %4310 = fmul fast float %4280, %4307
  %4311 = fmul fast float %4280, %4308
  %4312 = fmul fast float %4280, %4309
  %4313 = fadd fast float %4310, %3344
  %4314 = fadd fast float %4311, %3345
  %4315 = fadd fast float %4312, %3346
  br label %4392

; <label>:4316                                    ; preds = %4262
  %4317 = icmp eq i32 %4260, 4
  br i1 %4317, label %4318, label %4364

; <label>:4318                                    ; preds = %4316
  %4319 = fmul fast float %4265, %3953
  %4320 = fmul fast float %4265, %3954
  %4321 = fadd fast float %4319, %3336
  %4322 = fadd fast float %4320, %3337
  %4323 = call float @dx.op.binary.f32(i32 36, float %3352, float %3955)  ; FMin(a,b)
  %4324 = fsub fast float %4323, %3352
  %4325 = fmul fast float %4324, %4268
  %4326 = fadd fast float %4325, %3352
  %4327 = fadd fast float %3952, %3351
  %4328 = fmul fast float %4327, 0x3FF337FAE0000000
  %4329 = fmul fast float %3351, %3351
  %4330 = fmul fast float %3952, %3952
  %4331 = fadd fast float %4330, %4329
  %4332 = fmul fast float %4331, 0x3FE5152B00000000
  %4333 = fmul fast float %3351, 0xBFCC1F85E0000000
  %4334 = fmul fast float %4333, %3952
  %4335 = fadd fast float %4334, 0xBFE1363700000000
  %4336 = fadd fast float %4335, %4328
  %4337 = fsub fast float %4336, %4332
  %4338 = fmul fast float %4327, 0x3FBA6F0D00000000
  %4339 = fmul fast float %4331, 0x3FD0432880000000
  %4340 = fmul fast float %3351, 0xBFEF110800000000
  %4341 = fmul fast float %4340, %3952
  %4342 = fadd fast float %4341, 1.000000e+00
  %4343 = fsub fast float %4342, %4338
  %4344 = fadd fast float %4343, %4339
  %4345 = fdiv fast float %4337, %4344
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fsub fast float %4346, %3351
  %4348 = fmul fast float %4347, %4271
  %4349 = fadd fast float %4348, %3351
  %4350 = fmul fast float %4274, %4058
  %4351 = fmul fast float %4274, %4059
  %4352 = fmul fast float %4274, %4060
  %4353 = fadd fast float %4350, %3347
  %4354 = fadd fast float %4351, %3348
  %4355 = fadd fast float %4352, %3349
  %4356 = fmul fast float %4277, %4113
  %4357 = fadd fast float %4356, %3353
  %4358 = fmul fast float %4280, %4110
  %4359 = fmul fast float %4280, %4111
  %4360 = fmul fast float %4280, %4112
  %4361 = fadd fast float %4358, %3344
  %4362 = fadd fast float %4359, %3345
  %4363 = fadd fast float %4360, %3346
  br label %4392

; <label>:4364                                    ; preds = %4316
  %4365 = icmp eq i32 %4260, 8
  br i1 %4365, label %4366, label %4392

; <label>:4366                                    ; preds = %4364
  %4367 = fmul fast float %4265, %3953
  %4368 = fmul fast float %4265, %3954
  %4369 = fadd fast float %4367, %3336
  %4370 = fadd fast float %4368, %3337
  %4371 = call float @dx.op.binary.f32(i32 36, float %3352, float %3955)  ; FMin(a,b)
  %4372 = fsub fast float %4371, %3352
  %4373 = fmul fast float %4372, %4268
  %4374 = fadd fast float %4373, %3352
  %4375 = fsub fast float %3952, %3351
  %4376 = fmul fast float %4271, %4375
  %4377 = fadd fast float %4376, %3351
  %4378 = fmul fast float %4274, %4058
  %4379 = fmul fast float %4274, %4059
  %4380 = fmul fast float %4274, %4060
  %4381 = fadd fast float %4378, %3347
  %4382 = fadd fast float %4379, %3348
  %4383 = fadd fast float %4380, %3349
  %4384 = fmul fast float %4277, %4113
  %4385 = fadd fast float %4384, %3353
  %4386 = fmul fast float %4280, %4110
  %4387 = fmul fast float %4280, %4111
  %4388 = fmul fast float %4280, %4112
  %4389 = fadd fast float %4386, %3344
  %4390 = fadd fast float %4387, %3345
  %4391 = fadd fast float %4388, %3346
  br label %4392

; <label>:4392                                    ; preds = %4366, %4364, %4318, %4282, %4251, %3651, %3355, %3335
  %4393 = phi float [ %3336, %4251 ], [ %3336, %3651 ], [ %3336, %3335 ], [ %3336, %3355 ], [ %4287, %4282 ], [ %4321, %4318 ], [ %3336, %4364 ], [ %4369, %4366 ]
  %4394 = phi float [ %3337, %4251 ], [ %3337, %3651 ], [ %3337, %3335 ], [ %3337, %3355 ], [ %4288, %4282 ], [ %4322, %4318 ], [ %3337, %4364 ], [ %4370, %4366 ]
  %4395 = phi float [ %4252, %4251 ], [ %3338, %3651 ], [ %3338, %3335 ], [ %3338, %3355 ], [ %4252, %4282 ], [ %4252, %4318 ], [ %4252, %4364 ], [ %4252, %4366 ]
  %4396 = phi float [ %4253, %4251 ], [ %3339, %3651 ], [ %3339, %3335 ], [ %3339, %3355 ], [ %4253, %4282 ], [ %4253, %4318 ], [ %4253, %4364 ], [ %4253, %4366 ]
  %4397 = phi float [ %4254, %4251 ], [ %3340, %3651 ], [ %3340, %3335 ], [ %3340, %3355 ], [ %4254, %4282 ], [ %4254, %4318 ], [ %4254, %4364 ], [ %4254, %4366 ]
  %4398 = phi float [ %4255, %4251 ], [ %3341, %3651 ], [ %3341, %3335 ], [ %3341, %3355 ], [ %4255, %4282 ], [ %4255, %4318 ], [ %4255, %4364 ], [ %4255, %4366 ]
  %4399 = phi float [ %4256, %4251 ], [ %3342, %3651 ], [ %3342, %3335 ], [ %3342, %3355 ], [ %4256, %4282 ], [ %4256, %4318 ], [ %4256, %4364 ], [ %4256, %4366 ]
  %4400 = phi float [ %4257, %4251 ], [ %3343, %3651 ], [ %3343, %3335 ], [ %3343, %3355 ], [ %4257, %4282 ], [ %4257, %4318 ], [ %4257, %4364 ], [ %4257, %4366 ]
  %4401 = phi float [ %3344, %4251 ], [ %3344, %3651 ], [ %3344, %3335 ], [ %3344, %3355 ], [ %4313, %4282 ], [ %4361, %4318 ], [ %3344, %4364 ], [ %4389, %4366 ]
  %4402 = phi float [ %3345, %4251 ], [ %3345, %3651 ], [ %3345, %3335 ], [ %3345, %3355 ], [ %4314, %4282 ], [ %4362, %4318 ], [ %3345, %4364 ], [ %4390, %4366 ]
  %4403 = phi float [ %3346, %4251 ], [ %3346, %3651 ], [ %3346, %3335 ], [ %3346, %3355 ], [ %4315, %4282 ], [ %4363, %4318 ], [ %3346, %4364 ], [ %4391, %4366 ]
  %4404 = phi float [ %3347, %4251 ], [ %3347, %3651 ], [ %3347, %3335 ], [ %3347, %3355 ], [ %4301, %4282 ], [ %4353, %4318 ], [ %3347, %4364 ], [ %4381, %4366 ]
  %4405 = phi float [ %3348, %4251 ], [ %3348, %3651 ], [ %3348, %3335 ], [ %3348, %3355 ], [ %4302, %4282 ], [ %4354, %4318 ], [ %3348, %4364 ], [ %4382, %4366 ]
  %4406 = phi float [ %3349, %4251 ], [ %3349, %3651 ], [ %3349, %3335 ], [ %3349, %3355 ], [ %4303, %4282 ], [ %4355, %4318 ], [ %3349, %4364 ], [ %4383, %4366 ]
  %4407 = phi float [ %4258, %4251 ], [ %3350, %3651 ], [ %3350, %3335 ], [ %3350, %3355 ], [ %4258, %4282 ], [ %4258, %4318 ], [ %4258, %4364 ], [ %4258, %4366 ]
  %4408 = phi float [ %3351, %4251 ], [ %3351, %3651 ], [ %3351, %3335 ], [ %3351, %3355 ], [ %4294, %4282 ], [ %4349, %4318 ], [ %3351, %4364 ], [ %4377, %4366 ]
  %4409 = phi float [ %3352, %4251 ], [ %3352, %3651 ], [ %3352, %3335 ], [ %3352, %3355 ], [ %4291, %4282 ], [ %4326, %4318 ], [ %3352, %4364 ], [ %4374, %4366 ]
  %4410 = phi float [ %3353, %4251 ], [ %3353, %3651 ], [ %3353, %3335 ], [ %3353, %3355 ], [ %4306, %4282 ], [ %4357, %4318 ], [ %3353, %4364 ], [ %4385, %4366 ]
  %4411 = phi float [ %4259, %4251 ], [ %3354, %3651 ], [ %3354, %3335 ], [ %3354, %3355 ], [ %4259, %4282 ], [ %4259, %4318 ], [ %4259, %4364 ], [ %4259, %4366 ]
  %4412 = add i32 %44, 360
  %4413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.i32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.i32 %4413, 1
  %4416 = bitcast i32 %4414 to float
  %4417 = bitcast i32 %4415 to float
  %4418 = fcmp fast oge float %4416, 0.000000e+00
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = select i1 %4418, float %4416, float %4420
  %4422 = add i32 %44, 456
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = add i32 %4424, 0
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4426, %dx.types.Handle %87, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = fmul fast float %4428, %4417
  %4430 = fadd fast float %4429, %4421
  %4431 = call float @dx.op.dot2.f32(i32 54, float %4393, float %4394, float %4393, float %4394)  ; Dot2(ax,ay,bx,by)
  %4432 = fmul fast float %4431, 0x3FE3333340000000
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = call float @dx.op.dot3.f32(i32 55, float %4393, float %4394, float %4433, float %4393, float %4394, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = call float @dx.op.unary.f32(i32 25, float %4434)  ; Rsqrt(value)
  %4436 = fmul fast float %4435, %4393
  %4437 = fmul fast float %4435, %4394
  %4438 = fmul fast float %4433, %4435
  %4439 = fmul fast float %4438, %97
  %4440 = fmul fast float %4438, %98
  %4441 = fmul fast float %4438, %99
  %4442 = fmul fast float %4436, %65
  %4443 = fmul fast float %4436, %66
  %4444 = fmul fast float %4436, %67
  %4445 = fadd fast float %4439, %4442
  %4446 = fadd fast float %4440, %4443
  %4447 = fadd fast float %4441, %4444
  %4448 = fmul fast float %109, %4437
  %4449 = fmul fast float %110, %4437
  %4450 = fmul fast float %111, %4437
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %4451, float %4452, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  %4456 = fmul fast float %4451, %4455
  %4457 = fmul fast float %4452, %4455
  %4458 = fmul fast float %4453, %4455
  %4459 = and i32 %46, 1
  %4460 = icmp eq i32 %4459, 0
  br i1 %4460, label %4461, label %5053

; <label>:4461                                    ; preds = %4392
  %4462 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %4463 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %4464 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %4468 = fadd fast float %4462, %145
  %4469 = fadd fast float %4463, %146
  %4470 = fadd fast float %4464, %147
  %4471 = fadd fast float %4465, %145
  %4472 = fadd fast float %4466, %146
  %4473 = fadd fast float %4467, %147
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4481 = fmul fast float %4475, %90
  %4482 = fmul fast float %4481, %4479
  %4483 = fmul fast float %4476, %91
  %4484 = fmul fast float %4483, %4480
  %4485 = fptoui float %4482 to i32
  %4486 = fptoui float %4484 to i32
  %4487 = fadd fast float %4475, -1.000000e+00
  %4488 = fadd fast float %4476, -1.000000e+00
  %4489 = fptoui float %4487 to i32
  %4490 = fptoui float %4488 to i32
  %4491 = call i32 @dx.op.binary.i32(i32 40, i32 %4485, i32 %4489)  ; UMin(a,b)
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 %4490)  ; UMin(a,b)
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4496 = fmul fast float %4494, %81
  %4497 = fsub fast float %4496, %4495
  %4498 = fadd fast float %4477, -1.000000e+00
  %4499 = call float @dx.op.binary.f32(i32 36, float %4497, float %4498)  ; FMin(a,b)
  %4500 = fptoui float %4499 to i32
  %4501 = fptoui float %4475 to i32
  %4502 = fptoui float %4476 to i32
  %4503 = mul i32 %4500, %4502
  %4504 = add i32 %4503, %4492
  %4505 = mul i32 %4504, %4501
  %4506 = add i32 %4505, %4491
  %4507 = shl i32 %4506, 2
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = and i32 %4509, 1023
  %4511 = lshr i32 %4509, 10
  %4512 = icmp eq i32 %4510, 0
  br i1 %4512, label %5016, label %4513

; <label>:4513                                    ; preds = %4461
  %4514 = and i32 %4509, 1023
  br label %4515

; <label>:4515                                    ; preds = %4647, %4513
  %4516 = phi i32 [ %4597, %4647 ], [ 0, %4513 ]
  %4517 = phi float [ %4648, %4647 ], [ 0.000000e+00, %4513 ]
  %4518 = phi float [ %4649, %4647 ], [ %4430, %4513 ]
  %4519 = phi float [ %4650, %4647 ], [ %4411, %4513 ]
  %4520 = phi float [ %4651, %4647 ], [ %4404, %4513 ]
  %4521 = phi float [ %4652, %4647 ], [ %4405, %4513 ]
  %4522 = phi float [ %4653, %4647 ], [ %4406, %4513 ]
  %4523 = phi float [ %4654, %4647 ], [ 0.000000e+00, %4513 ]
  %4524 = phi float [ %4655, %4647 ], [ 0.000000e+00, %4513 ]
  %4525 = phi float [ %4656, %4647 ], [ %4401, %4513 ]
  %4526 = phi float [ %4657, %4647 ], [ %4402, %4513 ]
  %4527 = phi float [ %4658, %4647 ], [ %4403, %4513 ]
  %4528 = phi float [ %4659, %4647 ], [ %4398, %4513 ]
  %4529 = phi float [ %4660, %4647 ], [ %4399, %4513 ]
  %4530 = phi float [ %4661, %4647 ], [ %4400, %4513 ]
  %4531 = phi float [ %4662, %4647 ], [ %4456, %4513 ]
  %4532 = phi float [ %4663, %4647 ], [ %4457, %4513 ]
  %4533 = phi float [ %4664, %4647 ], [ %4458, %4513 ]
  %4534 = phi float [ %4665, %4647 ], [ %4409, %4513 ]
  %4535 = phi float [ %4666, %4647 ], [ %4408, %4513 ]
  %4536 = phi float [ %4667, %4647 ], [ 0.000000e+00, %4513 ]
  %4537 = phi float [ %4668, %4647 ], [ %4407, %4513 ]
  %4538 = phi float [ %4669, %4647 ], [ %4395, %4513 ]
  %4539 = phi float [ %4670, %4647 ], [ %4396, %4513 ]
  %4540 = phi float [ %4671, %4647 ], [ %4397, %4513 ]
  %4541 = add nuw nsw i32 %4516, %4511
  %4542 = shl i32 %4541, 2
  %4543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.i32 %4543, 0
  %4545 = shl i32 %4544, 8
  %4546 = or i32 %4545, 48
  %4547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.ResRet.f32 %4547, 1
  %4550 = extractvalue %dx.types.ResRet.f32 %4547, 2
  %4551 = extractvalue %dx.types.ResRet.f32 %4547, 3
  %4552 = or i32 %4545, 64
  %4553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.i32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.i32 %4553, 1
  %4556 = or i32 %4545, 80
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4560 = or i32 %4545, 96
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4566 = or i32 %4545, 112
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4569 = or i32 %4545, 128
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = or i32 %4545, 144
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4545, 160
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = or i32 %4545, 192
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = or i32 %4545, 208
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = or i32 %4545, 248
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = add nuw nsw i32 %4516, 1
  %4598 = bitcast float %4551 to i32
  %4599 = and i32 %4598, 512
  %4600 = icmp eq i32 %4599, 0
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4607 = or i32 %4545, 16
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4614 = or i32 %4545, 32
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4616, float %4617, float %4618, float %4619, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = call float @dx.op.unary.f32(i32 27, float %4606)  ; Round_ni(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4621)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4613)  ; Round_ni(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 27, float %4625)  ; Round_ni(value)
  %4627 = fadd fast float %4624, %4622
  %4628 = fadd fast float %4627, %4626
  %4629 = fcmp fast oeq float %4628, 0.000000e+00
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4632 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4471, float %4472, float %4473, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4633 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %4471, float %4472, float %4473, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4634 = fsub fast float %4630, %4606
  %4635 = fsub fast float %4632, %4606
  %4636 = fsub fast float %4631, %4613
  %4637 = fsub fast float %4633, %4613
  %4638 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4641 = fadd fast float %4640, %4638
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4644 = fcmp fast ogt float %4642, %4643
  %4645 = and i1 %4629, %4644
  %4646 = and i1 %4600, %4645
  br i1 %4646, label %4673, label %4647

; <label>:4647                                    ; preds = %5002, %4754, %4673, %4515
  %4648 = phi float [ %4517, %4673 ], [ %4757, %4754 ], [ %4757, %5002 ], [ %4517, %4515 ]
  %4649 = phi float [ %4518, %4673 ], [ %4518, %4754 ], [ %4978, %5002 ], [ %4518, %4515 ]
  %4650 = phi float [ %4519, %4673 ], [ %4519, %4754 ], [ %4976, %5002 ], [ %4519, %4515 ]
  %4651 = phi float [ %4520, %4673 ], [ %4520, %4754 ], [ %4954, %5002 ], [ %4520, %4515 ]
  %4652 = phi float [ %4521, %4673 ], [ %4521, %4754 ], [ %4955, %5002 ], [ %4521, %4515 ]
  %4653 = phi float [ %4522, %4673 ], [ %4522, %4754 ], [ %4956, %5002 ], [ %4522, %4515 ]
  %4654 = phi float [ %4523, %4673 ], [ %4523, %4754 ], [ %4881, %5002 ], [ %4523, %4515 ]
  %4655 = phi float [ %4524, %4673 ], [ %4524, %4754 ], [ %4879, %5002 ], [ %4524, %4515 ]
  %4656 = phi float [ %4525, %4673 ], [ %4525, %4754 ], [ %4924, %5002 ], [ %4525, %4515 ]
  %4657 = phi float [ %4526, %4673 ], [ %4526, %4754 ], [ %4925, %5002 ], [ %4526, %4515 ]
  %4658 = phi float [ %4527, %4673 ], [ %4527, %4754 ], [ %4926, %5002 ], [ %4527, %4515 ]
  %4659 = phi float [ %4528, %4673 ], [ %4528, %4754 ], [ %5012, %5002 ], [ %4528, %4515 ]
  %4660 = phi float [ %4529, %4673 ], [ %4529, %4754 ], [ %5013, %5002 ], [ %4529, %4515 ]
  %4661 = phi float [ %4530, %4673 ], [ %4530, %4754 ], [ %5014, %5002 ], [ %4530, %4515 ]
  %4662 = phi float [ %4531, %4673 ], [ %4531, %4754 ], [ %4860, %5002 ], [ %4531, %4515 ]
  %4663 = phi float [ %4532, %4673 ], [ %4532, %4754 ], [ %4861, %5002 ], [ %4532, %4515 ]
  %4664 = phi float [ %4533, %4673 ], [ %4533, %4754 ], [ %4862, %5002 ], [ %4533, %4515 ]
  %4665 = phi float [ %4534, %4673 ], [ %4534, %4754 ], [ %4934, %5002 ], [ %4534, %4515 ]
  %4666 = phi float [ %4535, %4673 ], [ %4535, %4754 ], [ %4931, %5002 ], [ %4535, %4515 ]
  %4667 = phi float [ %4536, %4673 ], [ %4536, %4754 ], [ %4928, %5002 ], [ %4536, %4515 ]
  %4668 = phi float [ %4537, %4673 ], [ %4537, %4754 ], [ %4877, %5002 ], [ %4537, %4515 ]
  %4669 = phi float [ %4538, %4673 ], [ %4538, %4754 ], [ %4872, %5002 ], [ %4538, %4515 ]
  %4670 = phi float [ %4539, %4673 ], [ %4539, %4754 ], [ %4873, %5002 ], [ %4539, %4515 ]
  %4671 = phi float [ %4540, %4673 ], [ %4540, %4754 ], [ %4874, %5002 ], [ %4540, %4515 ]
  %4672 = icmp eq i32 %4597, %4514
  br i1 %4672, label %5015, label %4515

; <label>:4673                                    ; preds = %4515
  %4674 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4675 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4679 = extractvalue %dx.types.ResRet.i32 %4553, 3
  %4680 = extractvalue %dx.types.ResRet.i32 %4553, 2
  %4681 = add i32 %4679, 0
  %4682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4681, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4682, %dx.types.Handle %4683, float %4606, float %4613, float undef, float undef, i32 0, i32 0, i32 undef, float %4634, float %4636, float undef, float %4635, float %4637, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = fmul fast float %4685, %4678
  %4687 = fadd fast float %4686, %4677
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4606, %4562
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4613, float %4689)  ; FMad(a,b,c)
  %4691 = fadd fast float %4690, %4676
  %4692 = fmul fast float %4606, %4564
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4613, float %4692)  ; FMad(a,b,c)
  %4694 = fadd fast float %4693, %4675
  %4695 = fmul fast float %4634, %4562
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4636, float %4695)  ; FMad(a,b,c)
  %4697 = fmul fast float %4634, %4564
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4636, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4635, %4562
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4637, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4635, %4564
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4637, float %4701)  ; FMad(a,b,c)
  %4703 = add i32 %4680, 0
  %4704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4703, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4704, %dx.types.Handle %4683, float %4691, float %4694, float undef, float undef, i32 0, i32 0, i32 undef, float %4696, float %4698, float undef, float %4700, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = and i32 %4598, 1024
  %4708 = icmp ne i32 %4707, 0
  %4709 = fcmp fast ogt float %4706, 0x3FE0101020000000
  %4710 = uitofp i1 %4709 to float
  %4711 = select i1 %4708, float %4710, float %4706
  %4712 = and i32 %4598, 8192
  %4713 = icmp ne i32 %4712, 0
  %4714 = select i1 %4713, float %4674, float 1.000000e+00
  %4715 = fmul fast float %4606, 2.000000e+00
  %4716 = fadd fast float %4715, -1.000000e+00
  %4717 = call float @dx.op.unary.f32(i32 6, float %4716)  ; FAbs(value)
  %4718 = fmul fast float %4717, %4595
  %4719 = fsub fast float %4718, %4595
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4613, 2.000000e+00
  %4722 = fadd fast float %4721, -1.000000e+00
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fmul fast float %4723, %4596
  %4725 = fsub fast float %4724, %4596
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4625, %4558
  %4728 = fsub fast float %4727, %4558
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4688, %4714
  %4731 = fmul fast float %4730, %4685
  %4732 = fmul fast float %4731, %4720
  %4733 = fmul fast float %4732, %4711
  %4734 = fmul fast float %4733, %4726
  %4735 = fmul fast float %4734, %4729
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4738 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4739 = fsub fast float %4642, %4738
  %4740 = fmul fast float %4739, %4737
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4735, %4559
  %4743 = fadd fast float %4735, %4559
  %4744 = fmul fast float %4743, %4568
  %4745 = fsub fast float %4744, %4568
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = and i32 %4598, 128
  %4748 = icmp ne i32 %4747, 0
  %4749 = select i1 %4748, float %4746, float %4742
  %4750 = fmul fast float %4749, %4741
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = fcmp fast ugt float %4750, %4752
  br i1 %4753, label %4754, label %4647

; <label>:4754                                    ; preds = %4673
  %4755 = select i1 %4713, float %4750, float 0.000000e+00
  %4756 = fadd fast float %4755, %4517
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  br i1 %4713, label %4647, label %4758

; <label>:4758                                    ; preds = %4754
  %4759 = and i32 %4598, 4
  %4760 = and i32 %4598, 8
  %4761 = add i32 %4554, 0
  %4762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4761, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4762, %dx.types.Handle %4763, float %4691, float %4694, float undef, float undef, i32 0, i32 0, i32 undef, float %4696, float %4698, float undef, float %4700, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4769 = bitcast float %4580 to i32
  %4770 = and i32 %4769, 255
  %4771 = uitofp i32 %4770 to float
  %4772 = lshr i32 %4769, 8
  %4773 = and i32 %4772, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = fmul fast float %4768, %4771
  %4776 = fadd fast float %4775, %4774
  %4777 = fmul fast float %4776, 0x3F70101000000000
  %4778 = add i32 %4555, 0
  %4779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4779, %dx.types.Handle %4763, float %4691, float %4694, float undef, float undef, i32 0, i32 0, i32 undef, float %4696, float %4698, float undef, float %4700, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = extractvalue %dx.types.ResRet.f32 %4780, 3
  %4785 = bitcast float %4574 to i32
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = lshr i32 %4785, 8
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = lshr i32 %4785, 16
  %4792 = and i32 %4791, 255
  %4793 = uitofp i32 %4792 to float
  %4794 = fmul fast float %4793, 0x3F70101000000000
  %4795 = fmul fast float %4781, %4787
  %4796 = fadd fast float %4795, %4790
  %4797 = fmul fast float %4796, 0x3F70101000000000
  %4798 = fadd fast float %4782, -5.000000e-01
  %4799 = fadd fast float %4784, -5.000000e-01
  %4800 = fmul fast float %4798, %4794
  %4801 = fmul fast float %4799, %4794
  %4802 = fadd fast float %4800, 5.000000e-01
  %4803 = fadd fast float %4801, 5.000000e-01
  %4804 = fmul fast float %4765, %4583
  %4805 = fmul fast float %4766, %4584
  %4806 = fmul fast float %4767, %4585
  %4807 = fmul fast float %4802, 2.000000e+00
  %4808 = fadd fast float %4807, -1.000000e+00
  %4809 = fmul fast float %4803, 2.000000e+00
  %4810 = fadd fast float %4809, -1.000000e+00
  %4811 = fadd fast float %4808, %4810
  %4812 = fmul fast float %4811, 5.000000e-01
  %4813 = fsub fast float %4808, %4810
  %4814 = fmul fast float %4813, 5.000000e-01
  %4815 = call float @dx.op.unary.f32(i32 6, float %4812)  ; FAbs(value)
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4818 = fsub fast float %4816, %4817
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4814, float %4818, float %4812, float %4814, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 25, float %4819)  ; Rsqrt(value)
  %4821 = fmul fast float %4812, %4820
  %4822 = fmul fast float %4814, %4820
  %4823 = fmul fast float %4820, %4818
  %4824 = fmul fast float %4823, %4548
  %4825 = fmul fast float %4823, %4549
  %4826 = fmul fast float %4823, %4550
  %4827 = fmul fast float %4821, %4571
  %4828 = fmul fast float %4821, %4572
  %4829 = fmul fast float %4821, %4573
  %4830 = fadd fast float %4827, %4824
  %4831 = fadd fast float %4828, %4825
  %4832 = fadd fast float %4829, %4826
  %4833 = fmul fast float %4822, %4577
  %4834 = fmul fast float %4822, %4578
  %4835 = fmul fast float %4822, %4579
  %4836 = fadd fast float %4830, %4833
  %4837 = fadd fast float %4831, %4834
  %4838 = fadd fast float %4832, %4835
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float %4836, float %4837, float %4838)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = call float @dx.op.unary.f32(i32 25, float %4839)  ; Rsqrt(value)
  %4841 = fmul fast float %4836, %4840
  %4842 = fmul fast float %4837, %4840
  %4843 = fmul fast float %4838, %4840
  %4844 = icmp ne i32 %4760, 0
  %4845 = select i1 %4844, float 1.000000e+00, float 0.000000e+00
  %4846 = fmul fast float %4750, %4845
  %4847 = and i32 %4598, 1
  %4848 = icmp eq i32 %4847, 0
  br i1 %4848, label %4849, label %4853

; <label>:4849                                    ; preds = %4758
  %4850 = fsub fast float %4841, %4531
  %4851 = fsub fast float %4842, %4532
  %4852 = fsub fast float %4843, %4533
  br label %4853

; <label>:4853                                    ; preds = %4849, %4758
  %4854 = phi float [ %4850, %4849 ], [ %4841, %4758 ]
  %4855 = phi float [ %4851, %4849 ], [ %4842, %4758 ]
  %4856 = phi float [ %4852, %4849 ], [ %4843, %4758 ]
  %4857 = fmul float %4856, %4846
  %4858 = fmul float %4855, %4846
  %4859 = fmul float %4854, %4846
  %4860 = fadd fast float %4859, %4531
  %4861 = fadd fast float %4858, %4532
  %4862 = fadd fast float %4857, %4533
  %4863 = icmp ne i32 %4759, 0
  %4864 = select i1 %4863, float 1.000000e+00, float 0.000000e+00
  %4865 = fmul fast float %4750, %4864
  %4866 = fsub fast float %4804, %4538
  %4867 = fsub fast float %4805, %4539
  %4868 = fsub fast float %4806, %4540
  %4869 = fmul fast float %4866, %4865
  %4870 = fmul fast float %4867, %4865
  %4871 = fmul fast float %4868, %4865
  %4872 = fadd fast float %4869, %4538
  %4873 = fadd fast float %4870, %4539
  %4874 = fadd fast float %4871, %4540
  %4875 = fsub fast float %4777, %4537
  %4876 = fmul fast float %4875, %4865
  %4877 = fadd fast float %4876, %4537
  %4878 = fmul fast float %4865, %4524
  %4879 = fsub fast float %4524, %4878
  %4880 = fmul fast float %4865, %4523
  %4881 = fsub fast float %4523, %4880
  %4882 = bitcast float %4592 to i32
  %4883 = lshr i32 %4882, 16
  %4884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4883)  ; LegacyF16ToF32(value)
  %4885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4886 = extractvalue %dx.types.ResRet.i32 %4885, 0
  %4887 = and i32 %4886, 1
  %4888 = icmp eq i32 %4887, 0
  br i1 %4888, label %4889, label %4914

; <label>:4889                                    ; preds = %4853
  %4890 = fadd fast float %4777, 0xBFB99999A0000000
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, 0x3FF1C71C80000000
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, %4804
  %4896 = fmul fast float %4894, %4805
  %4897 = fmul fast float %4894, %4806
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.binary.f32(i32 35, float %4899, float %4900)  ; FMax(a,b)
  %4902 = call float @dx.op.binary.f32(i32 35, float %4898, float %4901)  ; FMax(a,b)
  %4903 = fcmp fast ogt float %4902, 0.000000e+00
  %4904 = bitcast float %4902 to i32
  %4905 = sub nsw i32 2129859010, %4904
  %4906 = bitcast i32 %4905 to float
  %4907 = select i1 %4903, float %4906, float 0.000000e+00
  %4908 = fmul fast float %4898, %4884
  %4909 = fmul fast float %4899, %4884
  %4910 = fmul fast float %4900, %4884
  %4911 = fmul fast float %4908, %4907
  %4912 = fmul fast float %4909, %4907
  %4913 = fmul fast float %4910, %4907
  br label %4914

; <label>:4914                                    ; preds = %4889, %4853
  %4915 = phi float [ %4884, %4853 ], [ %4911, %4889 ]
  %4916 = phi float [ %4884, %4853 ], [ %4912, %4889 ]
  %4917 = phi float [ %4884, %4853 ], [ %4913, %4889 ]
  %4918 = fsub fast float %4915, %4525
  %4919 = fsub fast float %4916, %4526
  %4920 = fsub fast float %4917, %4527
  %4921 = fmul fast float %4918, %4865
  %4922 = fmul fast float %4919, %4865
  %4923 = fmul fast float %4920, %4865
  %4924 = fadd fast float %4921, %4525
  %4925 = fadd fast float %4922, %4526
  %4926 = fadd fast float %4923, %4527
  %4927 = fadd fast float %4750, %4536
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fsub fast float %4797, %4535
  %4930 = fmul fast float %4929, %4846
  %4931 = fadd fast float %4930, %4535
  %4932 = fsub fast float %4783, %4534
  %4933 = fmul fast float %4932, %4846
  %4934 = fadd fast float %4933, %4534
  br i1 %4848, label %4943, label %4935

; <label>:4935                                    ; preds = %4914
  %4936 = and i32 %4598, 32768
  %4937 = icmp eq i32 %4936, 0
  br i1 %4937, label %4953, label %4938

; <label>:4938                                    ; preds = %4935
  %4939 = fmul fast float %4846, 1.270000e+02
  %4940 = fadd fast float %4939, %4520
  %4941 = fadd fast float %4939, %4521
  %4942 = fadd fast float %4939, %4522
  br label %4953

; <label>:4943                                    ; preds = %4914
  %4944 = fsub fast float 1.270000e+02, %4520
  %4945 = fsub fast float 1.270000e+02, %4521
  %4946 = fsub fast float 1.270000e+02, %4522
  %4947 = fmul fast float %4846, %4944
  %4948 = fmul fast float %4846, %4945
  %4949 = fmul fast float %4846, %4946
  %4950 = fadd fast float %4947, %4520
  %4951 = fadd fast float %4948, %4521
  %4952 = fadd fast float %4949, %4522
  br label %4953

; <label>:4953                                    ; preds = %4943, %4938, %4935
  %4954 = phi float [ %4940, %4938 ], [ %4520, %4935 ], [ %4950, %4943 ]
  %4955 = phi float [ %4941, %4938 ], [ %4521, %4935 ], [ %4951, %4943 ]
  %4956 = phi float [ %4942, %4938 ], [ %4522, %4935 ], [ %4952, %4943 ]
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.CBufRet.f32 %4958, 1
  %4961 = fmul fast float %4960, %4957
  %4962 = fadd fast float %4961, %4959
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = bitcast float %4586 to i32
  %4965 = and i32 %4964, 65535
  %4966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4965)  ; LegacyF16ToF32(value)
  %4967 = lshr i32 %4964, 16
  %4968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4967)  ; LegacyF16ToF32(value)
  %4969 = fcmp fast oge float %4966, 0.000000e+00
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4972 = select i1 %4969, float %4966, float %4971
  %4973 = fadd fast float %4972, %4968
  %4974 = fsub fast float %4963, %4519
  %4975 = fmul fast float %4974, %4750
  %4976 = fadd fast float %4975, %4519
  %4977 = fmul fast float %4973, %4750
  %4978 = call float @dx.op.binary.f32(i32 35, float %4518, float %4977)  ; FMax(a,b)
  %4979 = and i32 %4598, 16
  %4980 = icmp eq i32 %4979, 0
  br i1 %4980, label %5002, label %4981

; <label>:4981                                    ; preds = %4953
  %4982 = add i32 %4589, 0
  %4983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4982, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4983, %dx.types.Handle %4763, float %4691, float %4694, float undef, float undef, i32 0, i32 0, i32 undef, float %4696, float %4698, float undef, float %4700, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4988 = and i32 %4882, 65535
  %4989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4988)  ; LegacyF16ToF32(value)
  %4990 = fmul fast float %4985, %4583
  %4991 = fmul fast float %4986, %4584
  %4992 = fmul fast float %4987, %4585
  %4993 = and i32 %4598, 16384
  %4994 = icmp ne i32 %4993, 0
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = select i1 %4994, float %4996, float 1.000000e+00
  %4998 = fmul fast float %4997, %4989
  %4999 = fmul fast float %4990, %4998
  %5000 = fmul fast float %4991, %4998
  %5001 = fmul fast float %4992, %4998
  br label %5002

; <label>:5002                                    ; preds = %4981, %4953
  %5003 = phi float [ %4999, %4981 ], [ 0.000000e+00, %4953 ]
  %5004 = phi float [ %5000, %4981 ], [ 0.000000e+00, %4953 ]
  %5005 = phi float [ %5001, %4981 ], [ 0.000000e+00, %4953 ]
  %5006 = fsub fast float %5003, %4528
  %5007 = fsub fast float %5004, %4529
  %5008 = fsub fast float %5005, %4530
  %5009 = fmul fast float %5006, %4750
  %5010 = fmul fast float %5007, %4750
  %5011 = fmul fast float %5008, %4750
  %5012 = fadd fast float %5009, %4528
  %5013 = fadd fast float %5010, %4529
  %5014 = fadd fast float %5011, %4530
  br label %4647

; <label>:5015                                    ; preds = %4647
  br label %5016

; <label>:5016                                    ; preds = %5015, %4461
  %5017 = phi float [ 0.000000e+00, %4461 ], [ %4648, %5015 ]
  %5018 = phi float [ %4430, %4461 ], [ %4649, %5015 ]
  %5019 = phi float [ %4411, %4461 ], [ %4650, %5015 ]
  %5020 = phi float [ %4404, %4461 ], [ %4651, %5015 ]
  %5021 = phi float [ %4405, %4461 ], [ %4652, %5015 ]
  %5022 = phi float [ %4406, %4461 ], [ %4653, %5015 ]
  %5023 = phi float [ 0.000000e+00, %4461 ], [ %4654, %5015 ]
  %5024 = phi float [ 0.000000e+00, %4461 ], [ %4655, %5015 ]
  %5025 = phi float [ %4401, %4461 ], [ %4656, %5015 ]
  %5026 = phi float [ %4402, %4461 ], [ %4657, %5015 ]
  %5027 = phi float [ %4403, %4461 ], [ %4658, %5015 ]
  %5028 = phi float [ %4398, %4461 ], [ %4659, %5015 ]
  %5029 = phi float [ %4399, %4461 ], [ %4660, %5015 ]
  %5030 = phi float [ %4400, %4461 ], [ %4661, %5015 ]
  %5031 = phi float [ %4456, %4461 ], [ %4662, %5015 ]
  %5032 = phi float [ %4457, %4461 ], [ %4663, %5015 ]
  %5033 = phi float [ %4458, %4461 ], [ %4664, %5015 ]
  %5034 = phi float [ %4409, %4461 ], [ %4665, %5015 ]
  %5035 = phi float [ %4408, %4461 ], [ %4666, %5015 ]
  %5036 = phi float [ 0.000000e+00, %4461 ], [ %4667, %5015 ]
  %5037 = phi float [ %4407, %4461 ], [ %4668, %5015 ]
  %5038 = phi float [ %4395, %4461 ], [ %4669, %5015 ]
  %5039 = phi float [ %4396, %4461 ], [ %4670, %5015 ]
  %5040 = phi float [ %4397, %4461 ], [ %4671, %5015 ]
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5033, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 25, float %5041)  ; Rsqrt(value)
  %5043 = fmul fast float %5042, %5031
  %5044 = fmul fast float %5042, %5032
  %5045 = fmul fast float %5042, %5033
  %5046 = fadd fast float %5036, %1236
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.unary.f32(i32 25, float %5048)  ; Rsqrt(value)
  %5050 = fmul fast float %5049, %5043
  %5051 = fmul fast float %5049, %5044
  %5052 = fmul fast float %5049, %5045
  br label %5053

; <label>:5053                                    ; preds = %5016, %4392
  %5054 = phi float [ %5050, %5016 ], [ %4456, %4392 ]
  %5055 = phi float [ %5051, %5016 ], [ %4457, %4392 ]
  %5056 = phi float [ %5052, %5016 ], [ %4458, %4392 ]
  %5057 = phi float [ %5038, %5016 ], [ %4395, %4392 ]
  %5058 = phi float [ %5039, %5016 ], [ %4396, %4392 ]
  %5059 = phi float [ %5040, %5016 ], [ %4397, %4392 ]
  %5060 = phi float [ %5028, %5016 ], [ %4398, %4392 ]
  %5061 = phi float [ %5029, %5016 ], [ %4399, %4392 ]
  %5062 = phi float [ %5030, %5016 ], [ %4400, %4392 ]
  %5063 = phi float [ %5025, %5016 ], [ %4401, %4392 ]
  %5064 = phi float [ %5026, %5016 ], [ %4402, %4392 ]
  %5065 = phi float [ %5027, %5016 ], [ %4403, %4392 ]
  %5066 = phi float [ %5020, %5016 ], [ %4404, %4392 ]
  %5067 = phi float [ %5021, %5016 ], [ %4405, %4392 ]
  %5068 = phi float [ %5022, %5016 ], [ %4406, %4392 ]
  %5069 = phi float [ %5037, %5016 ], [ %4407, %4392 ]
  %5070 = phi float [ %5047, %5016 ], [ %1236, %4392 ]
  %5071 = phi float [ %5035, %5016 ], [ %4408, %4392 ]
  %5072 = phi float [ %5034, %5016 ], [ %4409, %4392 ]
  %5073 = phi float [ %5024, %5016 ], [ 0.000000e+00, %4392 ]
  %5074 = phi float [ %5023, %5016 ], [ 0.000000e+00, %4392 ]
  %5075 = phi float [ %5017, %5016 ], [ 0.000000e+00, %4392 ]
  %5076 = phi float [ %5018, %5016 ], [ %4430, %4392 ]
  %5077 = phi float [ %5019, %5016 ], [ %4411, %4392 ]
  %5078 = fadd fast float %5069, 0xBFB99999A0000000
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, 0x3FF1C71C80000000
  %5081 = call float @dx.op.binary.f32(i32 36, float %5069, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5082 = fsub fast float 1.000000e+00, %5080
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, %5057
  %5085 = fmul fast float %5083, %5058
  %5086 = fmul fast float %5083, %5059
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = fmul fast float %5080, %5057
  %5091 = fmul fast float %5080, %5058
  %5092 = fmul fast float %5080, %5059
  %5093 = fadd fast float %5090, %5081
  %5094 = fadd fast float %5091, %5081
  %5095 = fadd fast float %5092, %5081
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5101 = extractvalue %dx.types.ResRet.i32 %5100, 0
  %5102 = and i32 %5101, 1
  %5103 = icmp eq i32 %5102, 0
  br i1 %5103, label %5118, label %5104

; <label>:5104                                    ; preds = %5053
  %5105 = call float @dx.op.binary.f32(i32 35, float %5088, float %5089)  ; FMax(a,b)
  %5106 = call float @dx.op.binary.f32(i32 35, float %5087, float %5105)  ; FMax(a,b)
  %5107 = fcmp fast ogt float %5106, 0.000000e+00
  %5108 = bitcast float %5106 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = select i1 %5107, float %5110, float 0.000000e+00
  %5112 = fmul fast float %5087, %5063
  %5113 = fmul fast float %5088, %5064
  %5114 = fmul fast float %5089, %5065
  %5115 = fmul fast float %5112, %5111
  %5116 = fmul fast float %5113, %5111
  %5117 = fmul fast float %5114, %5111
  br label %5118

; <label>:5118                                    ; preds = %5104, %5053
  %5119 = phi float [ %5115, %5104 ], [ %5063, %5053 ]
  %5120 = phi float [ %5116, %5104 ], [ %5064, %5053 ]
  %5121 = phi float [ %5117, %5104 ], [ %5065, %5053 ]
  %5122 = call float @dx.op.binary.f32(i32 36, float %5066, float 1.270000e+02)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5067, float 1.270000e+02)  ; FMin(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5068, float 1.270000e+02)  ; FMin(a,b)
  %5125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.i32 %5125, 3
  %5127 = and i32 %5126, 8
  %5128 = icmp ne i32 %5127, 0
  %5129 = call float @dx.op.binary.f32(i32 35, float %5087, float %5057)  ; FMax(a,b)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5088, float %5057)  ; FMax(a,b)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5089, float %5057)  ; FMax(a,b)
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = select i1 %206, float %5057, float %5087
  %5134 = select i1 %206, float %5132, float %5088
  %5135 = select i1 %206, float 1.000000e+00, float %5089
  %5136 = select i1 %5128, float %5129, float %5133
  %5137 = select i1 %5128, float %5130, float %5134
  %5138 = select i1 %5128, float %5131, float %5135
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = select i1 %206, float %5139, float %5119
  %5141 = select i1 %206, float %5139, float %5120
  %5142 = select i1 %206, float %5139, float %5121
  %5143 = and i32 %182, 3
  %5144 = select i1 %176, i32 %5143, i32 0
  %5145 = icmp eq i32 %5144, 1
  br i1 %5145, label %5146, label %5222

; <label>:5146                                    ; preds = %5118
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5150 = fadd fast float %5148, %145
  %5151 = fadd fast float %5149, %146
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5155 = fsub fast float %5150, %5153
  %5156 = fsub fast float %5151, %5154
  %5157 = fmul fast float %5155, %5155
  %5158 = fmul fast float %5156, %5156
  %5159 = fadd fast float %5157, %5158
  %5160 = call float @dx.op.unary.f32(i32 24, float %5159)  ; Sqrt(value)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5162 = fcmp fast olt float %5160, %5161
  br i1 %5162, label %5163, label %5216

; <label>:5163                                    ; preds = %5146
  %5164 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5165 = fadd fast float %5164, %147
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5174 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5176 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5177 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5178 = fadd fast float %5175, %5150
  %5179 = fadd fast float %5176, %5151
  %5180 = fadd fast float %5165, %5177
  %5181 = fmul fast float %5178, %5167
  %5182 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5169, float %5181)  ; FMad(a,b,c)
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5171, float %5182)  ; FMad(a,b,c)
  %5184 = fmul fast float %5178, %5172
  %5185 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5173, float %5184)  ; FMad(a,b,c)
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5174, float %5185)  ; FMad(a,b,c)
  %5187 = fsub fast float %5183, %5175
  %5188 = fsub fast float %5186, %5176
  %5189 = fsub fast float %5187, %5153
  %5190 = fadd fast float %5189, %5161
  %5191 = fsub fast float %5188, %5154
  %5192 = fadd fast float %5191, %5161
  %5193 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5194 = fmul fast float %5190, %5193
  %5195 = fmul fast float %5192, %5193
  %5196 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5198 = fsub fast float 1.000000e+00, %5196
  %5199 = fsub fast float 1.000000e+00, %5197
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %5198, float %5199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = fcmp fast ugt float %5201, 0.000000e+00
  br i1 %5202, label %5203, label %5216

; <label>:5203                                    ; preds = %5163
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5206 = fmul fast float %5205, %5201
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5208 = fadd fast float %5207, %5206
  %5209 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5210 = fadd fast float %5208, %5177
  %5211 = fmul fast float %5183, %5171
  %5212 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5174, float %5211)  ; FMad(a,b,c)
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5210, float %5209, float %5212)  ; FMad(a,b,c)
  %5214 = fsub fast float %5213, %5177
  %5215 = fsub fast float %5214, %5164
  br label %5216

; <label>:5216                                    ; preds = %5203, %5163, %5146
  %5217 = phi i1 [ true, %5203 ], [ false, %5163 ], [ false, %5146 ]
  %5218 = phi float [ %5215, %5203 ], [ -1.310720e+05, %5163 ], [ -1.310720e+05, %5146 ]
  %5219 = fsub fast float %5218, %147
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = select i1 %5217, float %5220, float 1.000000e+00
  br label %5222

; <label>:5222                                    ; preds = %5216, %5118
  %5223 = phi float [ %5221, %5216 ], [ 0.000000e+00, %5118 ]
  %5224 = icmp eq i32 %5144, 3
  %5225 = select i1 %5224, float 1.000000e+00, float %5223
  %5226 = call float @dx.op.binary.f32(i32 35, float %5075, float %5225)  ; FMax(a,b)
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fcmp fast une float %5227, 0.000000e+00
  %5229 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.unary.f32(i32 25, float %5229)  ; Rsqrt(value)
  br i1 %5228, label %5238, label %5231

; <label>:5231                                    ; preds = %5222
  %5232 = fmul fast float %5230, %145
  %5233 = fmul fast float %5230, %146
  %5234 = fmul fast float %5230, %147
  %5235 = fsub fast float -0.000000e+00, %5232
  %5236 = fsub fast float -0.000000e+00, %5233
  %5237 = fsub fast float -0.000000e+00, %5234
  br label %5406

; <label>:5238                                    ; preds = %5222
  %5239 = fmul fast float %145, %5230
  %5240 = fsub fast float -0.000000e+00, %5239
  %5241 = fmul fast float %146, %5230
  %5242 = fsub fast float -0.000000e+00, %5241
  %5243 = fmul fast float %147, %5230
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5240, float %5242, float %5244, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fmul fast float %5227, 2.500000e+00
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5227, 0x4013FFFFE0000000
  %5249 = fadd fast float %5248, 0xBFFFFFFFE0000000
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = fmul fast float %5227, 0x4004000020000000
  %5252 = fadd fast float %5251, 0xBFF8000040000000
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5255 = fmul fast float %5078, 1.000000e+01
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5256, 2.000000e+00
  %5258 = fsub fast float 3.000000e+00, %5257
  %5259 = fmul fast float %5256, %5256
  %5260 = fmul fast float %5259, %5258
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fsub fast float 0x3FE3333340000000, %5099
  %5263 = fmul fast float %5262, 0x400AAAAAA0000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5261, %5264
  %5266 = fmul fast float %5136, 0x3FEA2B8620000000
  %5267 = fmul fast float %5137, 0x3FEA2B8620000000
  %5268 = fmul fast float %5138, 0x3FEA2B8620000000
  %5269 = fadd fast float %5266, 0x3FC81DFBA0000000
  %5270 = fmul fast float %5269, %5136
  %5271 = fadd fast float %5270, 0x3F910E6020000000
  %5272 = fadd fast float %5267, 0x3FC81DFBA0000000
  %5273 = fmul fast float %5272, %5137
  %5274 = fadd fast float %5273, 0x3F910E6020000000
  %5275 = fadd fast float %5268, 0x3FC81DFBA0000000
  %5276 = fmul fast float %5275, %5138
  %5277 = fadd fast float %5276, 0x3F910E6020000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5279 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5280 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5281 = fsub fast float %5278, %5136
  %5282 = fsub fast float %5279, %5137
  %5283 = fsub fast float %5280, %5138
  %5284 = fmul fast float %5281, %5254
  %5285 = fmul fast float %5284, %5265
  %5286 = fmul fast float %5282, %5254
  %5287 = fmul fast float %5286, %5265
  %5288 = fmul fast float %5283, %5254
  %5289 = fmul fast float %5288, %5265
  %5290 = fadd fast float %5285, %5136
  %5291 = fadd fast float %5287, %5137
  %5292 = fadd fast float %5289, %5138
  %5293 = fmul fast float %5072, %5072
  %5294 = fmul fast float %5293, %5293
  %5295 = fadd fast float %5250, 1.000000e+00
  %5296 = fsub fast float %5295, %5265
  %5297 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5298 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fsub fast float 1.000000e+00, %5294
  %5301 = call float @dx.op.binary.f32(i32 36, float %5297, float %5300)  ; FMin(a,b)
  %5302 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5303 = call float @dx.op.binary.f32(i32 35, float %5301, float %5302)  ; FMax(a,b)
  %5304 = fadd fast float %5299, 0xBFE4CCCCC0000000
  %5305 = fmul fast float %5304, 0x4006DB6DA0000000
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = fmul fast float %5306, 2.000000e+00
  %5308 = fsub fast float 3.000000e+00, %5307
  %5309 = bitcast float %5096 to i32
  %5310 = ashr i32 %5309, 1
  %5311 = add nsw i32 %5310, 532487669
  %5312 = bitcast i32 %5311 to float
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = bitcast float %5313 to i32
  %5315 = sub nsw i32 2129859010, %5314
  %5316 = bitcast i32 %5315 to float
  %5317 = fmul fast float %5316, 2.000000e+00
  %5318 = bitcast float %5097 to i32
  %5319 = ashr i32 %5318, 1
  %5320 = add nsw i32 %5319, 532487669
  %5321 = bitcast i32 %5320 to float
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = bitcast float %5322 to i32
  %5324 = sub nsw i32 2129859010, %5323
  %5325 = bitcast i32 %5324 to float
  %5326 = fmul fast float %5325, 2.000000e+00
  %5327 = bitcast float %5098 to i32
  %5328 = ashr i32 %5327, 1
  %5329 = add nsw i32 %5328, 532487669
  %5330 = bitcast i32 %5329 to float
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5334, 2.000000e+00
  %5336 = fsub fast float 0x4002A9FBE0000000, %5317
  %5337 = fadd fast float %5317, 0x3FD54FDF00000000
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = fmul fast float %5340, %5336
  %5342 = fmul fast float %5341, %5341
  %5343 = fsub fast float 0x4002A9FBE0000000, %5326
  %5344 = fadd fast float %5326, 0x3FD54FDF00000000
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = fmul fast float %5347, %5343
  %5349 = fmul fast float %5348, %5348
  %5350 = fsub fast float 0x4002A9FBE0000000, %5335
  %5351 = fadd fast float %5335, 0x3FD54FDF00000000
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, %5350
  %5356 = fmul fast float %5355, %5355
  %5357 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5342)  ; FMax(a,b)
  %5358 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5349)  ; FMax(a,b)
  %5359 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5356)  ; FMax(a,b)
  %5360 = fsub fast float 1.000000e+00, %5245
  %5361 = fadd fast float %5360, %5261
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fsub fast float 1.000000e+00, %5225
  %5364 = fmul fast float %5303, %5363
  %5365 = fmul fast float %5306, %5306
  %5366 = fmul fast float %5365, %5364
  %5367 = fmul fast float %5366, %5308
  %5368 = fmul fast float %5363, 0xBFE99999A0000000
  %5369 = fmul fast float %5368, %5254
  %5370 = fmul fast float %5369, %5265
  %5371 = fadd fast float %5370, 1.000000e+00
  %5372 = fadd fast float %5099, -1.000000e+00
  %5373 = fmul fast float %5371, %5372
  %5374 = fadd fast float %5373, 1.000000e+00
  %5375 = fsub fast float %5357, %5096
  %5376 = fsub fast float %5358, %5097
  %5377 = fsub fast float %5359, %5098
  %5378 = fmul fast float %5367, %5375
  %5379 = fmul fast float %5367, %5376
  %5380 = fmul fast float %5367, %5377
  %5381 = fadd fast float %5378, %5096
  %5382 = fadd fast float %5379, %5097
  %5383 = fadd fast float %5380, %5098
  %5384 = fsub fast float %97, %5054
  %5385 = fsub fast float %98, %5055
  %5386 = fsub fast float %99, %5056
  %5387 = fmul fast float %5367, %5384
  %5388 = fmul fast float %5367, %5385
  %5389 = fmul fast float %5367, %5386
  %5390 = fadd fast float %5387, %5054
  %5391 = fadd fast float %5388, %5055
  %5392 = fadd fast float %5389, %5056
  %5393 = fmul fast float %5367, %5362
  %5394 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5395 = fsub fast float 1.000000e+00, %5394
  %5396 = fmul fast float %5393, %5395
  %5397 = fadd fast float %5396, %5394
  %5398 = fsub fast float 1.000000e+00, %5072
  %5399 = fmul fast float %5367, %5398
  %5400 = fadd fast float %5399, %5072
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = call float @dx.op.unary.f32(i32 25, float %5401)  ; Rsqrt(value)
  %5403 = fmul fast float %5390, %5402
  %5404 = fmul fast float %5391, %5402
  %5405 = fmul fast float %5392, %5402
  br label %5406

; <label>:5406                                    ; preds = %5238, %5231
  %5407 = phi float [ %5237, %5231 ], [ %5244, %5238 ]
  %5408 = phi float [ %5236, %5231 ], [ %5242, %5238 ]
  %5409 = phi float [ %5235, %5231 ], [ %5240, %5238 ]
  %5410 = phi float [ %5234, %5231 ], [ %5243, %5238 ]
  %5411 = phi float [ %5233, %5231 ], [ %5241, %5238 ]
  %5412 = phi float [ %5232, %5231 ], [ %5239, %5238 ]
  %5413 = phi float [ %5096, %5231 ], [ %5381, %5238 ]
  %5414 = phi float [ %5097, %5231 ], [ %5382, %5238 ]
  %5415 = phi float [ %5098, %5231 ], [ %5383, %5238 ]
  %5416 = phi float [ %5054, %5231 ], [ %5403, %5238 ]
  %5417 = phi float [ %5055, %5231 ], [ %5404, %5238 ]
  %5418 = phi float [ %5056, %5231 ], [ %5405, %5238 ]
  %5419 = phi float [ %5136, %5231 ], [ %5290, %5238 ]
  %5420 = phi float [ %5137, %5231 ], [ %5291, %5238 ]
  %5421 = phi float [ %5138, %5231 ], [ %5292, %5238 ]
  %5422 = phi float [ %5099, %5231 ], [ %5397, %5238 ]
  %5423 = phi float [ %5072, %5231 ], [ %5400, %5238 ]
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 3
  %5427 = fmul fast float %115, %5425
  %5428 = fmul fast float %117, %5426
  %5429 = fsub fast float 1.000000e+00, %5427
  %5430 = fsub fast float 1.000000e+00, %5428
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5435 = fmul fast float %5429, %5432
  %5436 = fmul fast float %5429, %5433
  %5437 = fmul fast float %5429, %5434
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = fmul fast float %5430, %5439
  %5443 = fmul fast float %5430, %5440
  %5444 = fmul fast float %5430, %5441
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = fadd fast float %5442, %5446
  %5450 = fadd fast float %5449, %5435
  %5451 = fadd fast float %5443, %5447
  %5452 = fadd fast float %5451, %5436
  %5453 = fadd fast float %5444, %5448
  %5454 = fadd fast float %5453, %5437
  %5455 = fmul fast float %5450, %81
  %5456 = fmul fast float %5452, %81
  %5457 = fmul fast float %5454, %81
  %5458 = select i1 %206, float 0.000000e+00, float %5415
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5409, float %5408, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5411, float %5410, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = fmul fast float %5461, 2.000000e+00
  %5463 = fmul fast float %5462, %5416
  %5464 = fmul fast float %5462, %5417
  %5465 = fmul fast float %5462, %5418
  %5466 = fsub fast float %5412, %5463
  %5467 = fsub fast float %5411, %5464
  %5468 = fsub fast float %5410, %5465
  %5469 = call float @dx.op.binary.f32(i32 36, float %5423, float 1.000000e+00)  ; FMin(a,b)
  %5470 = fsub fast float 1.000000e+00, %5423
  %5471 = bitcast float %5470 to i32
  %5472 = sub nsw i32 2129859010, %5471
  %5473 = bitcast i32 %5472 to float
  %5474 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5475 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fcmp fast oeq float %5475, 0.000000e+00
  %5477 = fcmp fast oeq float %5474, 0.000000e+00
  %5478 = or i1 %5477, %5476
  br i1 %5478, label %5508, label %5479

; <label>:5479                                    ; preds = %5406
  %5480 = fsub fast float -0.000000e+00, %64
  %5481 = fsub fast float -0.000000e+00, %62
  %5482 = call float @dx.op.unary.f32(i32 24, float %5475)  ; Sqrt(value)
  %5483 = fdiv fast float %5482, %5474
  %5484 = fcmp fast ogt float %5483, 0x3FFB6F8900000000
  %5485 = select i1 %5484, float 0x3FFB6F8900000000, float %5483
  %5486 = fmul fast float %5485, 0x3FE8A23460000000
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5485, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5489 = fmul fast float %5487, %5474
  %5490 = fmul fast float %5488, 0x3FF279A740000000
  %5491 = fadd fast float %5490, -1.000000e+00
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %63, float %5480, float %5481, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 25, float %5492)  ; Rsqrt(value)
  %5494 = fmul fast float %5493, %5480
  %5495 = fmul fast float %5493, %5481
  %5496 = fmul fast float %5493, %63
  %5497 = fmul fast float %5491, %5491
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = fmul fast float %5488, 0x40005F8BE0000000
  %5500 = fsub fast float 0x400C5BF8A0000000, %5499
  %5501 = fdiv fast float %5489, %5500
  %5502 = fmul fast float %5501, 0x3FEE31C3C0000000
  %5503 = fmul fast float %5502, %5498
  %5504 = fmul fast float %5488, 0x3FDACB7480000000
  %5505 = fadd fast float %5504, 0xBFD7347680000000
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %5506, %5498
  br label %5508

; <label>:5508                                    ; preds = %5479, %5406
  %5509 = phi float [ %5494, %5479 ], [ 0.000000e+00, %5406 ]
  %5510 = phi float [ %5495, %5479 ], [ 0.000000e+00, %5406 ]
  %5511 = phi float [ %5496, %5479 ], [ 0.000000e+00, %5406 ]
  %5512 = phi float [ %5503, %5479 ], [ 0.000000e+00, %5406 ]
  %5513 = phi float [ %5507, %5479 ], [ 0.000000e+00, %5406 ]
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = fmul fast float %5514, %5514
  %5516 = fmul fast float %5515, 0x3FEE471020000000
  %5517 = fadd fast float %5516, 0xBFD42F6020000000
  %5518 = fmul fast float %5474, 0x3FD20DD760000000
  %5519 = fmul fast float %5517, %5513
  %5520 = fmul fast float %5512, 0x3FDF454380000000
  %5521 = fmul fast float %5520, %5514
  %5522 = fadd fast float %5521, %5518
  %5523 = fadd fast float %5522, %5519
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fmul fast float %5524, 0x3FDF454380000000
  %5526 = fmul fast float %5524, %5524
  %5527 = fmul fast float %5526, 0x3FEE471020000000
  %5528 = fadd fast float %5527, 0xBFD42F6020000000
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5512, float %5513, float 0x3FD20DD760000000, float %5525, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5531 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = fcmp fast oeq float %5531, 0.000000e+00
  %5533 = fcmp fast oeq float %5530, 0.000000e+00
  %5534 = or i1 %5533, %5532
  br i1 %5534, label %5564, label %5535

; <label>:5535                                    ; preds = %5508
  %5536 = fsub fast float -0.000000e+00, %60
  %5537 = fsub fast float -0.000000e+00, %58
  %5538 = call float @dx.op.unary.f32(i32 24, float %5531)  ; Sqrt(value)
  %5539 = fdiv fast float %5538, %5530
  %5540 = fcmp fast ogt float %5539, 0x3FFB6F8900000000
  %5541 = select i1 %5540, float 0x3FFB6F8900000000, float %5539
  %5542 = fmul fast float %5541, 0x3FE8A23460000000
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = call float @dx.op.binary.f32(i32 35, float %5541, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5545 = fmul fast float %5543, %5530
  %5546 = fmul fast float %5544, 0x3FF279A740000000
  %5547 = fadd fast float %5546, -1.000000e+00
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %59, float %5536, float %5537, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 25, float %5548)  ; Rsqrt(value)
  %5550 = fmul fast float %5549, %5536
  %5551 = fmul fast float %5549, %5537
  %5552 = fmul fast float %5549, %59
  %5553 = fmul fast float %5547, %5547
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5544, 0x40005F8BE0000000
  %5556 = fsub fast float 0x400C5BF8A0000000, %5555
  %5557 = fdiv fast float %5545, %5556
  %5558 = fmul fast float %5557, 0x3FEE31C3C0000000
  %5559 = fmul fast float %5558, %5554
  %5560 = fmul fast float %5544, 0x3FDACB7480000000
  %5561 = fadd fast float %5560, 0xBFD7347680000000
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %5562, %5554
  br label %5564

; <label>:5564                                    ; preds = %5535, %5508
  %5565 = phi float [ %5550, %5535 ], [ 0.000000e+00, %5508 ]
  %5566 = phi float [ %5551, %5535 ], [ 0.000000e+00, %5508 ]
  %5567 = phi float [ %5552, %5535 ], [ 0.000000e+00, %5508 ]
  %5568 = phi float [ %5559, %5535 ], [ 0.000000e+00, %5508 ]
  %5569 = phi float [ %5563, %5535 ], [ 0.000000e+00, %5508 ]
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = fmul fast float %5570, %5570
  %5572 = fmul fast float %5571, 0x3FEE471020000000
  %5573 = fadd fast float %5572, 0xBFD42F6020000000
  %5574 = fmul fast float %5530, 0x3FD20DD760000000
  %5575 = fmul fast float %5573, %5569
  %5576 = fmul fast float %5568, 0x3FDF454380000000
  %5577 = fmul fast float %5576, %5570
  %5578 = fadd fast float %5577, %5574
  %5579 = fadd fast float %5578, %5575
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = fmul fast float %5580, 0x3FDF454380000000
  %5582 = fmul fast float %5580, %5580
  %5583 = fmul fast float %5582, 0x3FEE471020000000
  %5584 = fadd fast float %5583, 0xBFD42F6020000000
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5568, float %5569, float 0x3FD20DD760000000, float %5581, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %5587 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = fcmp fast oeq float %5587, 0.000000e+00
  %5589 = fcmp fast oeq float %5586, 0.000000e+00
  %5590 = or i1 %5589, %5588
  br i1 %5590, label %5620, label %5591

; <label>:5591                                    ; preds = %5564
  %5592 = fsub fast float -0.000000e+00, %56
  %5593 = fsub fast float -0.000000e+00, %54
  %5594 = call float @dx.op.unary.f32(i32 24, float %5587)  ; Sqrt(value)
  %5595 = fdiv fast float %5594, %5586
  %5596 = fcmp fast ogt float %5595, 0x3FFB6F8900000000
  %5597 = select i1 %5596, float 0x3FFB6F8900000000, float %5595
  %5598 = fmul fast float %5597, 0x3FE8A23460000000
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5597, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5601 = fmul fast float %5599, %5586
  %5602 = fmul fast float %5600, 0x3FF279A740000000
  %5603 = fadd fast float %5602, -1.000000e+00
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %55, float %5592, float %5593, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 25, float %5604)  ; Rsqrt(value)
  %5606 = fmul fast float %5605, %5592
  %5607 = fmul fast float %5605, %5593
  %5608 = fmul fast float %5605, %55
  %5609 = fmul fast float %5603, %5603
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = fmul fast float %5600, 0x40005F8BE0000000
  %5612 = fsub fast float 0x400C5BF8A0000000, %5611
  %5613 = fdiv fast float %5601, %5612
  %5614 = fmul fast float %5613, 0x3FEE31C3C0000000
  %5615 = fmul fast float %5614, %5610
  %5616 = fmul fast float %5600, 0x3FDACB7480000000
  %5617 = fadd fast float %5616, 0xBFD7347680000000
  %5618 = fmul fast float %5617, %5613
  %5619 = fmul fast float %5618, %5610
  br label %5620

; <label>:5620                                    ; preds = %5591, %5564
  %5621 = phi float [ %5606, %5591 ], [ 0.000000e+00, %5564 ]
  %5622 = phi float [ %5607, %5591 ], [ 0.000000e+00, %5564 ]
  %5623 = phi float [ %5608, %5591 ], [ 0.000000e+00, %5564 ]
  %5624 = phi float [ %5615, %5591 ], [ 0.000000e+00, %5564 ]
  %5625 = phi float [ %5619, %5591 ], [ 0.000000e+00, %5564 ]
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = fmul fast float %5626, %5626
  %5628 = fmul fast float %5627, 0x3FEE471020000000
  %5629 = fadd fast float %5628, 0xBFD42F6020000000
  %5630 = fmul fast float %5586, 0x3FD20DD760000000
  %5631 = fmul fast float %5629, %5625
  %5632 = fmul fast float %5624, 0x3FDF454380000000
  %5633 = fmul fast float %5632, %5626
  %5634 = fadd fast float %5633, %5630
  %5635 = fadd fast float %5634, %5631
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fmul fast float %5636, 0x3FDF454380000000
  %5638 = fmul fast float %5636, %5636
  %5639 = fmul fast float %5638, 0x3FEE471020000000
  %5640 = fadd fast float %5639, 0xBFD42F6020000000
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5624, float %5625, float 0x3FD20DD760000000, float %5637, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5523, float 0.000000e+00)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5579, float 0.000000e+00)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5635, float 0.000000e+00)  ; FMax(a,b)
  %5645 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float %5585, float 0.000000e+00)  ; FMax(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5641, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = call float @dx.op.binary.f32(i32 36, float %5419, float %5649)  ; FMin(a,b)
  %5651 = fsub fast float 1.000000e+00, %5469
  %5652 = fmul fast float %5650, %5651
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = bitcast float %5653 to i32
  %5655 = sub nsw i32 2129859010, %5654
  %5656 = bitcast i32 %5655 to float
  %5657 = call float @dx.op.binary.f32(i32 36, float %5420, float %5649)  ; FMin(a,b)
  %5658 = fmul fast float %5657, %5651
  %5659 = fsub fast float 1.000000e+00, %5658
  %5660 = bitcast float %5659 to i32
  %5661 = sub nsw i32 2129859010, %5660
  %5662 = bitcast i32 %5661 to float
  %5663 = call float @dx.op.binary.f32(i32 36, float %5421, float %5649)  ; FMin(a,b)
  %5664 = fmul fast float %5663, %5651
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5642, %5469
  %5670 = fmul fast float %5669, %5656
  %5671 = fmul fast float %5643, %5469
  %5672 = fmul fast float %5671, %5662
  %5673 = fmul fast float %5644, %5469
  %5674 = fmul fast float %5673, %5668
  %5675 = call float @dx.op.binary.f32(i32 36, float %5413, float %5649)  ; FMin(a,b)
  %5676 = fmul fast float %5675, %5651
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = call float @dx.op.binary.f32(i32 36, float %5414, float %5649)  ; FMin(a,b)
  %5682 = fmul fast float %5681, %5651
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = call float @dx.op.binary.f32(i32 36, float %5458, float %5649)  ; FMin(a,b)
  %5688 = fmul fast float %5687, %5651
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = bitcast float %5689 to i32
  %5691 = sub nsw i32 2129859010, %5690
  %5692 = bitcast i32 %5691 to float
  %5693 = fmul fast float %5645, %5469
  %5694 = fmul fast float %5693, %5680
  %5695 = fmul fast float %5646, %5469
  %5696 = fmul fast float %5695, %5686
  %5697 = fmul fast float %5647, %5469
  %5698 = fmul fast float %5697, %5692
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5672, float %5674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = select i1 %206, float 0.000000e+00, float %5670
  %5701 = select i1 %206, float %5699, float %5672
  %5702 = select i1 %206, float 0.000000e+00, float %5674
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5696, float %5698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = select i1 %206, float 0.000000e+00, float %5694
  %5705 = select i1 %206, float %5703, float %5696
  %5706 = select i1 %206, float 0.000000e+00, float %5698
  %5707 = fmul fast float %4410, %4410
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = fmul fast float %5460, 9.843750e-01
  %5710 = fmul fast float %5422, 9.843750e-01
  %5711 = fadd fast float %5709, 7.812500e-03
  %5712 = fadd fast float %5710, 7.812500e-03
  %5713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %5711, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = extractvalue %dx.types.ResRet.f32 %5713, 3
  %5718 = fsub fast float 1.000000e+00, %5708
  %5719 = fsub fast float %5716, %5714
  %5720 = fsub fast float %5717, %5715
  %5721 = fmul fast float %5719, %5718
  %5722 = fmul fast float %5720, %5718
  %5723 = fadd fast float %5721, %5714
  %5724 = fadd fast float %5722, %5715
  %5725 = fmul fast float %5723, %5413
  %5726 = fmul fast float %5723, %5414
  %5727 = fmul fast float %5723, %5458
  %5728 = fadd fast float %5725, %5724
  %5729 = fadd fast float %5726, %5724
  %5730 = fadd fast float %5727, %5724
  %5731 = fcmp fast ogt float %5073, 0.000000e+00
  br i1 %5731, label %5732, label %5758

; <label>:5732                                    ; preds = %5620
  %5733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5073, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5737 = fadd fast float %5734, -5.000000e-01
  %5738 = fadd fast float %5735, -5.000000e-01
  %5739 = fadd fast float %5736, -5.000000e-01
  %5740 = fsub fast float 1.000000e+00, %5413
  %5741 = fsub fast float 1.000000e+00, %5414
  %5742 = fsub fast float 1.000000e+00, %5458
  %5743 = fmul fast float %5413, 4.000000e+00
  %5744 = fmul fast float %5743, %5740
  %5745 = fmul fast float %5744, %5737
  %5746 = fmul fast float %5414, 4.000000e+00
  %5747 = fmul fast float %5746, %5741
  %5748 = fmul fast float %5747, %5738
  %5749 = fmul fast float %5458, 4.000000e+00
  %5750 = fmul fast float %5749, %5742
  %5751 = fmul fast float %5750, %5739
  %5752 = fadd fast float %5745, %5728
  %5753 = fadd fast float %5748, %5729
  %5754 = fadd fast float %5751, %5730
  %5755 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5756 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  br label %5758

; <label>:5758                                    ; preds = %5732, %5620
  %5759 = phi float [ %5755, %5732 ], [ %5728, %5620 ]
  %5760 = phi float [ %5756, %5732 ], [ %5729, %5620 ]
  %5761 = phi float [ %5757, %5732 ], [ %5730, %5620 ]
  %5762 = call float @dx.op.binary.f32(i32 35, float %5760, float %5761)  ; FMax(a,b)
  %5763 = call float @dx.op.binary.f32(i32 35, float %5759, float %5762)  ; FMax(a,b)
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5764, %5700
  %5766 = fmul fast float %5764, %5701
  %5767 = fmul fast float %5764, %5702
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fcmp fast ogt float %5768, 0x3E7FF19E20000000
  %5770 = fdiv fast float 1.000000e+00, %5768
  %5771 = select i1 %5769, float %5770, float 0.000000e+00
  %5772 = fmul fast float %5771, %5419
  %5773 = fmul fast float %5771, %5420
  %5774 = fmul fast float %5771, %5421
  %5775 = fadd fast float %5772, -1.000000e+00
  %5776 = fadd fast float %5773, -1.000000e+00
  %5777 = fadd fast float %5774, -1.000000e+00
  %5778 = fmul fast float %5775, 5.000000e-01
  %5779 = fmul fast float %5776, 5.000000e-01
  %5780 = fmul fast float %5777, 5.000000e-01
  %5781 = fadd fast float %5778, 1.000000e+00
  %5782 = fadd fast float %5779, 1.000000e+00
  %5783 = fadd fast float %5780, 1.000000e+00
  %5784 = call float @dx.op.binary.f32(i32 35, float %5460, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5785 = fdiv fast float %4410, %5784
  %5786 = fcmp fast olt float %5122, 1.270000e+02
  %5787 = fcmp fast olt float %5123, 1.270000e+02
  %5788 = fcmp fast olt float %5124, 1.270000e+02
  %5789 = fmul fast float %5122, 0xBFF7154760000000
  %5790 = fmul fast float %5789, %5785
  %5791 = fmul fast float %5123, 0xBFF7154760000000
  %5792 = fmul fast float %5791, %5785
  %5793 = fmul fast float %5124, 0xBFF7154760000000
  %5794 = fmul fast float %5793, %5785
  %5795 = call float @dx.op.unary.f32(i32 21, float %5790)  ; Exp(value)
  %5796 = call float @dx.op.unary.f32(i32 21, float %5792)  ; Exp(value)
  %5797 = call float @dx.op.unary.f32(i32 21, float %5794)  ; Exp(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5799 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5800 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5801 = select i1 %5786, float %5798, float 0.000000e+00
  %5802 = select i1 %5787, float %5799, float 0.000000e+00
  %5803 = select i1 %5788, float %5800, float 0.000000e+00
  %5804 = fmul fast float %5801, %5764
  %5805 = fmul fast float %5802, %5764
  %5806 = fmul fast float %5803, %5764
  %5807 = fadd fast float %5804, -1.000000e+00
  %5808 = fadd fast float %5805, -1.000000e+00
  %5809 = fadd fast float %5806, -1.000000e+00
  %5810 = fmul fast float %5807, %5070
  %5811 = fmul fast float %5808, %5070
  %5812 = fmul fast float %5809, %5070
  %5813 = fadd fast float %5810, 1.000000e+00
  %5814 = fadd fast float %5811, 1.000000e+00
  %5815 = fadd fast float %5812, 1.000000e+00
  %5816 = fmul fast float %5414, 0x401CF23780000000
  %5817 = fadd fast float %5816, 0x3FF32641C0000000
  %5818 = fdiv fast float 1.000000e+00, %5817
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5408, float %5407, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fmul fast float %5818, %5818
  %5821 = fmul fast float %5819, %5819
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = fmul fast float %5820, %5822
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fcmp fast oge float %5824, 0.000000e+00
  %5826 = fmul fast float %5818, %5409
  %5827 = fmul fast float %5818, %5408
  %5828 = fmul fast float %5818, %5407
  %5829 = call float @dx.op.unary.f32(i32 24, float %5824)  ; Sqrt(value)
  %5830 = fmul fast float %5819, %5818
  %5831 = fadd fast float %5830, %5829
  %5832 = fmul fast float %5831, %5416
  %5833 = fmul fast float %5831, %5417
  %5834 = fmul fast float %5831, %5418
  %5835 = fsub fast float %5826, %5832
  %5836 = fsub fast float %5827, %5833
  %5837 = fsub fast float %5828, %5834
  %5838 = select i1 %5825, float %5835, float 0.000000e+00
  %5839 = select i1 %5825, float %5836, float 0.000000e+00
  %5840 = select i1 %5825, float %5837, float 0.000000e+00
  %5841 = fmul fast float %5838, %4410
  %5842 = fmul fast float %5839, %4410
  %5843 = fmul fast float %5840, %4410
  %5844 = fadd fast float %5841, %5455
  %5845 = fadd fast float %5842, %5456
  %5846 = fadd fast float %5843, %5457
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fsub fast float 1.000000e+00, %5422
  %5849 = fmul fast float %5848, %5070
  %5850 = fsub fast float 1.000000e+00, %5849
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fsub fast float 1.000000e+00, %5851
  %5853 = fmul fast float %5414, 0x4012D0A400000000
  %5854 = fadd fast float %5853, 0x3FDB6377A0000000
  %5855 = fmul fast float %5852, %5854
  %5856 = fadd fast float %5855, %5847
  %5857 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5858 = fmul fast float %5759, %5704
  %5859 = fmul fast float %5760, %5705
  %5860 = fmul fast float %5761, %5706
  %5861 = fsub fast float 1.000000e+00, %5460
  %5862 = bitcast float %5861 to i32
  %5863 = sitofp i32 %5862 to float
  %5864 = fmul fast float %5863, 5.000000e+00
  %5865 = fadd fast float %5864, 0xC1EFBF8940000000
  %5866 = fptosi float %5865 to i32
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5867, %5074
  %5869 = fmul fast float %5700, %5868
  %5870 = fmul fast float %5869, %5764
  %5871 = fmul fast float %5870, %5781
  %5872 = fmul fast float %5701, %5868
  %5873 = fmul fast float %5872, %5764
  %5874 = fmul fast float %5873, %5782
  %5875 = fmul fast float %5702, %5868
  %5876 = fmul fast float %5875, %5764
  %5877 = fmul fast float %5876, %5783
  %5878 = fmul fast float %5765, %5070
  %5879 = fmul fast float %5766, %5070
  %5880 = fmul fast float %5767, %5070
  %5881 = fsub fast float 1.000000e+00, %5857
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.CBufRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5896 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5897 = fmul fast float %5844, %5883
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5884, float %5897)  ; FMad(a,b,c)
  %5899 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5885, float %5898)  ; FMad(a,b,c)
  %5900 = fadd fast float %5899, %5886
  %5901 = fmul fast float %5844, %5888
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5889, float %5901)  ; FMad(a,b,c)
  %5903 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5890, float %5902)  ; FMad(a,b,c)
  %5904 = fadd fast float %5903, %5891
  %5905 = fmul fast float %5844, %5893
  %5906 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5894, float %5905)  ; FMad(a,b,c)
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5895, float %5906)  ; FMad(a,b,c)
  %5908 = fadd fast float %5907, %5896
  %5909 = fdiv fast float %5900, %5908
  %5910 = fdiv fast float %5904, %5908
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = fmul fast float %5912, %5909
  %5915 = fmul fast float %5913, %5910
  %5916 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5917 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5918 = fadd fast float %5914, %5916
  %5919 = fadd fast float %5915, %5917
  %5920 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5921 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5925 = fmul fast float %5923, %5920
  %5926 = fmul fast float %5924, %5921
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5930 = fsub fast float %5928, %5929
  %5931 = fmul fast float %5930, %5881
  %5932 = fadd fast float %5931, %5929
  %5933 = fmul fast float %219, 2.000000e+00
  %5934 = fmul fast float %220, 2.000000e+00
  %5935 = fadd fast float %5933, -1.000000e+00
  %5936 = fadd fast float %5934, -1.000000e+00
  %5937 = fmul fast float %5932, %5935
  %5938 = fmul fast float %5932, %5936
  %5939 = fadd fast float %5937, %5925
  %5940 = fadd fast float %5938, %5926
  %5941 = extractvalue %dx.types.CBufRet.f32 %5922, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5922, 3
  %5943 = fmul fast float %5939, %5941
  %5944 = fmul fast float %5940, %5942
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %5943, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = fcmp fast ogt float %5946, -1.000000e+00
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5950 = select i1 %5947, float %5949, float 1.000000e+00
  %5951 = fadd fast float %5946, 1.000000e+00
  %5952 = fmul fast float %5950, %5951
  %5953 = call float @dx.op.unary.f32(i32 6, float %5952)  ; FAbs(value)
  %5954 = fsub fast float %5953, %5908
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5957 = fmul fast float %5956, %5953
  %5958 = fdiv fast float 1.600000e+02, %5957
  %5959 = fmul fast float %5857, %5857
  %5960 = fmul fast float %5959, 0xBFB5B17960000000
  %5961 = fmul fast float %5960, %5954
  %5962 = fmul fast float %5961, %5958
  %5963 = call float @dx.op.unary.f32(i32 21, float %5962)  ; Exp(value)
  %5964 = fmul fast float %5963, 0x3FF04B2960000000
  %5965 = fsub fast float 0x3FF04B2960000000, %5964
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fmul fast float %5966, 4.000000e+00
  %5968 = fadd fast float %219, -5.000000e-01
  %5969 = fadd fast float %220, -5.000000e-01
  %5970 = fmul fast float %5966, 0x3FBEB851E0000000
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = fmul fast float %5971, %5968
  %5973 = fmul fast float %5971, %5969
  %5974 = fadd fast float %5972, %5918
  %5975 = fadd fast float %5973, %5919
  %5976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.i32 %5976, 0
  %5978 = icmp eq i32 %5977, 0
  br i1 %5978, label %5984, label %5979, !dx.controlflow.hints !83

; <label>:5979                                    ; preds = %5758
  %5980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %5974, float %5975, float undef, float undef, i32 0, i32 0, i32 undef, float %5967)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.ResRet.f32 %5980, 2
  br label %5989

; <label>:5984                                    ; preds = %5758
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5974, float %5975, float undef, float undef, i32 0, i32 0, i32 undef, float %5967)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  br label %5989

; <label>:5989                                    ; preds = %5984, %5979
  %5990 = phi float [ %5981, %5979 ], [ %5986, %5984 ]
  %5991 = phi float [ %5982, %5979 ], [ %5987, %5984 ]
  %5992 = phi float [ %5983, %5979 ], [ %5988, %5984 ]
  %5993 = select i1 %206, float 0.000000e+00, float %5991
  %5994 = select i1 %206, float 0.000000e+00, float %5992
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5997 = fmul fast float %5990, %5813
  %5998 = fmul fast float %5997, %5996
  %5999 = fmul fast float %5993, %5814
  %6000 = fmul fast float %5999, %5996
  %6001 = fmul fast float %5994, %5815
  %6002 = fmul fast float %6001, %5996
  %6003 = fadd fast float %5858, %5060
  %6004 = fadd fast float %6003, %5871
  %6005 = fadd fast float %6004, %5998
  %6006 = fmul fast float %6005, %5070
  %6007 = fadd fast float %5859, %5061
  %6008 = fadd fast float %6007, %5874
  %6009 = fadd fast float %6008, %6000
  %6010 = fmul fast float %6009, %5070
  %6011 = fadd fast float %5860, %5062
  %6012 = fadd fast float %6011, %5877
  %6013 = fadd fast float %6012, %6002
  %6014 = fmul fast float %6013, %5070
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6017 = fcmp fast oeq float %6016, 0.000000e+00
  br i1 %6017, label %7147, label %6018

; <label>:6018                                    ; preds = %5989
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6020 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6021 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6023, float %6024, float %6025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = select i1 %206, float %6027, float %6023
  %6031 = select i1 %206, float %6029, float %6024
  %6032 = select i1 %206, float %6028, float %6025
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 2
  %6035 = fmul fast float %6034, %97
  %6036 = fmul fast float %6034, %98
  %6037 = fmul fast float %6034, %99
  %6038 = fadd fast float %6035, %145
  %6039 = fadd fast float %6036, %146
  %6040 = fadd fast float %6037, %147
  %6041 = fcmp fast olt float %6016, 0.000000e+00
  br i1 %6041, label %6666, label %6042

; <label>:6042                                    ; preds = %6018
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.CBufRet.f32 %6043, 2
  %6047 = extractvalue %dx.types.CBufRet.f32 %6043, 3
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6058 = fmul fast float %6044, %6038
  %6059 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6045, float %6058)  ; FMad(a,b,c)
  %6060 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6046, float %6059)  ; FMad(a,b,c)
  %6061 = fadd fast float %6060, %6047
  %6062 = fmul fast float %6049, %6038
  %6063 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6050, float %6062)  ; FMad(a,b,c)
  %6064 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6051, float %6063)  ; FMad(a,b,c)
  %6065 = fadd fast float %6064, %6052
  %6066 = fmul fast float %6054, %6038
  %6067 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6055, float %6066)  ; FMad(a,b,c)
  %6068 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6056, float %6067)  ; FMad(a,b,c)
  %6069 = fadd fast float %6068, %6057
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6074 = fmul fast float %6073, %6061
  %6075 = fmul fast float %6073, %6065
  %6076 = fadd fast float %6074, %6071
  %6077 = fadd fast float %6075, %6072
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.CBufRet.f32 %6078, 3
  %6082 = fmul fast float %6081, %6061
  %6083 = fmul fast float %6081, %6065
  %6084 = fadd fast float %6082, %6079
  %6085 = fadd fast float %6083, %6080
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 1
  %6088 = fsub fast float %6087, %6069
  %6089 = extractvalue %dx.types.CBufRet.f32 %6086, 2
  %6090 = fmul fast float %6088, %6089
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6078, 2
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6096 = fadd fast float %6095, %6093
  %6097 = fcmp fast ogt float %6096, 0.000000e+00
  br i1 %6097, label %6098, label %6122

; <label>:6098                                    ; preds = %6042
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = fsub fast float %6084, %6100
  %6103 = fsub fast float %6085, %6101
  %6104 = fcmp fast olt float %6102, 0.000000e+00
  %6105 = fcmp fast olt float %6103, 0.000000e+00
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6110 = extractvalue %dx.types.CBufRet.f32 %6106, 3
  %6111 = select i1 %6104, float %6107, float %6109
  %6112 = select i1 %6105, float %6108, float %6110
  %6113 = fmul fast float %6111, %6102
  %6114 = fmul fast float %6112, %6103
  %6115 = call float @dx.op.unary.f32(i32 6, float %6113)  ; FAbs(value)
  %6116 = call float @dx.op.unary.f32(i32 6, float %6114)  ; FAbs(value)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6118 = call float @dx.op.binary.f32(i32 35, float %6115, float %6116)  ; FMax(a,b)
  %6119 = fsub fast float %6117, %6118
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = fmul fast float %6120, %6092
  br label %6122

; <label>:6122                                    ; preds = %6098, %6042
  %6123 = phi float [ %6121, %6098 ], [ 0.000000e+00, %6042 ]
  %6124 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6125 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6126 = fadd fast float %6125, %6124
  %6127 = fcmp fast ogt float %6126, 0.000000e+00
  %6128 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  br i1 %6127, label %6129, label %6152

; <label>:6129                                    ; preds = %6122
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6133 = fsub fast float %6076, %6131
  %6134 = fsub fast float %6077, %6132
  %6135 = fcmp fast olt float %6133, 0.000000e+00
  %6136 = fcmp fast olt float %6134, 0.000000e+00
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6141 = extractvalue %dx.types.CBufRet.f32 %6137, 3
  %6142 = select i1 %6135, float %6138, float %6140
  %6143 = select i1 %6136, float %6139, float %6141
  %6144 = fmul fast float %6142, %6133
  %6145 = fmul fast float %6143, %6134
  %6146 = call float @dx.op.unary.f32(i32 6, float %6144)  ; FAbs(value)
  %6147 = call float @dx.op.unary.f32(i32 6, float %6145)  ; FAbs(value)
  %6148 = call float @dx.op.binary.f32(i32 35, float %6146, float %6147)  ; FMax(a,b)
  %6149 = fsub fast float %6128, %6148
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = fmul fast float %6150, %6092
  br label %6152

; <label>:6152                                    ; preds = %6129, %6122
  %6153 = phi float [ %6151, %6129 ], [ 0.000000e+00, %6122 ]
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = fsub fast float %6061, %6158
  %6161 = fsub fast float %6065, %6159
  %6162 = fcmp fast olt float %6160, 0.000000e+00
  %6163 = fcmp fast olt float %6161, 0.000000e+00
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6169 = select i1 %6162, float %6165, float %6167
  %6170 = select i1 %6163, float %6166, float %6168
  %6171 = fmul fast float %6169, %6160
  %6172 = fmul fast float %6170, %6161
  %6173 = call float @dx.op.unary.f32(i32 6, float %6171)  ; FAbs(value)
  %6174 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6175 = call float @dx.op.binary.f32(i32 35, float %6173, float %6174)  ; FMax(a,b)
  %6176 = fsub fast float %6128, %6175
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = call float @dx.op.binary.f32(i32 36, float %6177, float %6156)  ; FMin(a,b)
  %6179 = fmul fast float %6178, %6092
  %6180 = fsub fast float %6153, %6179
  %6181 = fsub fast float %6123, %6153
  %6182 = fsub fast float %6181, %6179
  %6183 = call float @dx.op.binary.f32(i32 35, float %6153, float %6123)  ; FMax(a,b)
  %6184 = call float @dx.op.binary.f32(i32 35, float %6179, float %6183)  ; FMax(a,b)
  %6185 = fcmp fast olt float %6184, 1.000000e+00
  br i1 %6185, label %6186, label %6584, !dx.controlflow.hints !84

; <label>:6186                                    ; preds = %6152
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = fcmp fast une float %6188, 0.000000e+00
  br i1 %6189, label %6190, label %6584, !dx.controlflow.hints !85

; <label>:6190                                    ; preds = %6186
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6195 = extractvalue %dx.types.CBufRet.f32 %6191, 3
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6200 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6206 = fmul fast float %6192, %6038
  %6207 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6193, float %6206)  ; FMad(a,b,c)
  %6208 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6194, float %6207)  ; FMad(a,b,c)
  %6209 = fadd fast float %6208, %6195
  %6210 = fmul fast float %6197, %6038
  %6211 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6198, float %6210)  ; FMad(a,b,c)
  %6212 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6199, float %6211)  ; FMad(a,b,c)
  %6213 = fadd fast float %6212, %6200
  %6214 = fmul fast float %6202, %6038
  %6215 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6203, float %6214)  ; FMad(a,b,c)
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6204, float %6215)  ; FMad(a,b,c)
  %6217 = fadd fast float %6216, %6205
  %6218 = fcmp fast oge float %6209, 1.000000e+00
  %6219 = fcmp fast oge float %6213, 1.000000e+00
  %6220 = or i1 %6218, %6219
  %6221 = fcmp fast olt float %6209, 0.000000e+00
  %6222 = fcmp fast olt float %6213, 0.000000e+00
  %6223 = or i1 %6221, %6222
  %6224 = or i1 %6220, %6223
  br i1 %6224, label %6584, label %6225, !dx.controlflow.hints !86

; <label>:6225                                    ; preds = %6190
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.i32 %6230, 2
  %6232 = uitofp i32 %6231 to float
  %6233 = extractvalue %dx.types.CBufRet.i32 %6230, 3
  %6234 = uitofp i32 %6233 to float
  %6235 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6236 = fmul fast float %6235, 2.000000e+00
  %6237 = fsub fast float %6209, %6227
  %6238 = fsub fast float %6213, %6228
  %6239 = fmul fast float %6236, %6237
  %6240 = fmul fast float %6236, %6238
  %6241 = fdiv fast float 1.000000e+00, %6021
  %6242 = fmul fast float %6240, %6241
  %6243 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6244 = fmul fast float %6229, %6040
  %6245 = fmul fast float %6244, %6236
  %6246 = call float @dx.op.unary.f32(i32 6, float %6245)  ; FAbs(value)
  %6247 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6248 = call float @dx.op.binary.f32(i32 35, float %6246, float %6243)  ; FMax(a,b)
  %6249 = call float @dx.op.binary.f32(i32 35, float %6247, float %6248)  ; FMax(a,b)
  %6250 = fmul fast float %6249, 2.000000e+00
  %6251 = call float @dx.op.unary.f32(i32 23, float %6250)  ; Log(value)
  %6252 = call float @dx.op.binary.f32(i32 35, float %6251, float %6232)  ; FMax(a,b)
  %6253 = call float @dx.op.unary.f32(i32 22, float %6252)  ; Frc(value)
  %6254 = fadd fast float %6253, 0xBFEA666660000000
  %6255 = fmul fast float %6254, 8.000000e+00
  %6256 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6257 = call float @dx.op.unary.f32(i32 27, float %6252)  ; Round_ni(value)
  %6258 = fadd fast float %6257, %6256
  %6259 = call float @dx.op.binary.f32(i32 36, float %6258, float %6234)  ; FMin(a,b)
  %6260 = call float @dx.op.unary.f32(i32 27, float %6259)  ; Round_ni(value)
  %6261 = fsub fast float -0.000000e+00, %6260
  %6262 = call float @dx.op.unary.f32(i32 21, float %6261)  ; Exp(value)
  %6263 = fmul fast float %6262, %6236
  %6264 = fmul fast float %6263, %6209
  %6265 = fmul fast float %6263, %6213
  %6266 = fmul fast float %6264, 2.500000e-01
  %6267 = fmul fast float %6265, 2.500000e-01
  %6268 = fadd fast float %6266, 5.000000e-01
  %6269 = fadd fast float %6267, 5.000000e-01
  %6270 = fsub fast float %6234, %6232
  %6271 = fptoui float %6270 to i32
  %6272 = add i32 %6271, 320
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %6272)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = fcmp fast une float %6259, %6234
  %6277 = fsub fast float %6209, %6274
  %6278 = fsub fast float %6213, %6275
  %6279 = call float @dx.op.unary.f32(i32 6, float %6277)  ; FAbs(value)
  %6280 = call float @dx.op.unary.f32(i32 6, float %6278)  ; FAbs(value)
  %6281 = fmul fast float %6279, %6263
  %6282 = fmul fast float %6280, %6263
  %6283 = fcmp fast olt float %6281, 1.000000e+00
  %6284 = fcmp fast olt float %6282, 1.000000e+00
  %6285 = and i1 %6283, %6284
  %6286 = or i1 %6276, %6285
  br i1 %6286, label %6287, label %6584, !dx.controlflow.hints !87

; <label>:6287                                    ; preds = %6225
  %6288 = fmul fast float %6265, 5.000000e-01
  %6289 = fmul fast float %6264, 5.000000e-01
  %6290 = fadd fast float %6288, 5.000000e-01
  %6291 = fadd fast float %6289, 5.000000e-01
  %6292 = sitofp i32 %6231 to float
  %6293 = fsub fast float %6259, %6292
  %6294 = call float @dx.op.unary.f32(i32 27, float %6293)  ; Round_ni(value)
  %6295 = call float @dx.op.unary.f32(i32 22, float %6259)  ; Frc(value)
  %6296 = call float @dx.op.unary.f32(i32 22, float %6291)  ; Frc(value)
  %6297 = call float @dx.op.unary.f32(i32 22, float %6290)  ; Frc(value)
  %6298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %6296, float %6297, float %6294, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = extractvalue %dx.types.ResRet.f32 %6298, 3
  %6303 = fcmp fast ogt float %6295, 0.000000e+00
  br i1 %6303, label %6304, label %6325, !dx.controlflow.hints !88

; <label>:6304                                    ; preds = %6287
  %6305 = fadd fast float %6294, 1.000000e+00
  %6306 = call float @dx.op.unary.f32(i32 22, float %6268)  ; Frc(value)
  %6307 = call float @dx.op.unary.f32(i32 22, float %6269)  ; Frc(value)
  %6308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %6306, float %6307, float %6305, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6309 = extractvalue %dx.types.ResRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.ResRet.f32 %6308, 1
  %6311 = extractvalue %dx.types.ResRet.f32 %6308, 2
  %6312 = extractvalue %dx.types.ResRet.f32 %6308, 3
  %6313 = fsub fast float %6309, %6299
  %6314 = fsub fast float %6310, %6300
  %6315 = fsub fast float %6311, %6301
  %6316 = fsub fast float %6312, %6302
  %6317 = fmul fast float %6313, %6295
  %6318 = fmul fast float %6314, %6295
  %6319 = fmul fast float %6315, %6295
  %6320 = fmul fast float %6316, %6295
  %6321 = fadd fast float %6317, %6299
  %6322 = fadd fast float %6318, %6300
  %6323 = fadd fast float %6319, %6301
  %6324 = fadd fast float %6320, %6302
  br label %6325

; <label>:6325                                    ; preds = %6304, %6287
  %6326 = phi float [ %6321, %6304 ], [ %6299, %6287 ]
  %6327 = phi float [ %6322, %6304 ], [ %6300, %6287 ]
  %6328 = phi float [ %6323, %6304 ], [ %6301, %6287 ]
  %6329 = phi float [ %6324, %6304 ], [ %6302, %6287 ]
  %6330 = fadd fast float %6326, -5.000000e-01
  %6331 = fadd fast float %6328, -5.000000e-01
  %6332 = fmul fast float %6330, 0xBFD5555560000000
  %6333 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6331, float %6332)  ; FMad(a,b,c)
  %6334 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6327, float 0.000000e+00)  ; FMad(a,b,c)
  %6335 = fadd fast float %6334, %6329
  %6336 = fmul fast float %6330, -7.500000e-01
  %6337 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6331, float %6336)  ; FMad(a,b,c)
  %6338 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6327, float 0.000000e+00)  ; FMad(a,b,c)
  %6339 = fadd fast float %6338, %6329
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6346 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6347 = fsub fast float %6343, %6333
  %6348 = fsub fast float %6344, %6335
  %6349 = fsub fast float %6345, %6337
  %6350 = fsub fast float %6346, %6339
  %6351 = fmul fast float %6347, %6341
  %6352 = fmul fast float %6348, %6341
  %6353 = fmul fast float %6349, %6341
  %6354 = fmul fast float %6350, %6341
  %6355 = fadd fast float %6351, %6333
  %6356 = fadd fast float %6352, %6335
  %6357 = fadd fast float %6353, %6337
  %6358 = fadd fast float %6354, %6339
  %6359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6360 = extractvalue %dx.types.ResRet.i32 %6359, 0
  %6361 = and i32 %6360, 536870911
  %6362 = uitofp i32 %6361 to float
  %6363 = fmul fast float %6362, %6209
  %6364 = fmul fast float %6362, %6213
  %6365 = fptoui float %6363 to i32
  %6366 = fptoui float %6364 to i32
  %6367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6368 = extractvalue %dx.types.ResRet.i32 %6367, 0
  %6369 = and i32 %6368, 31
  %6370 = lshr i32 %6365, %6369
  %6371 = lshr i32 %6366, %6369
  %6372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6373 = extractvalue %dx.types.ResRet.i32 %6372, 0
  %6374 = and i32 %6373, 31
  %6375 = shl i32 1, %6374
  %6376 = call i32 @dx.op.binary.i32(i32 40, i32 %6375, i32 4)  ; UMin(a,b)
  %6377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6378 = extractvalue %dx.types.ResRet.i32 %6377, 0
  %6379 = extractvalue %dx.types.ResRet.i32 %6377, 1
  %6380 = icmp eq i32 %6376, 0
  br i1 %6380, label %6422, label %6381

; <label>:6381                                    ; preds = %6325
  br label %6382

; <label>:6382                                    ; preds = %6410, %6381
  %6383 = phi i32 [ %6413, %6410 ], [ 0, %6381 ]
  %6384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6385 = extractvalue %dx.types.ResRet.i32 %6384, 0
  %6386 = lshr i32 %6385, 16
  %6387 = and i32 %6386, 31
  %6388 = shl i32 %6371, %6387
  %6389 = add i32 %6388, %6370
  %6390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6391 = extractvalue %dx.types.ResRet.i32 %6390, 0
  %6392 = and i32 %6391, 31
  %6393 = shl i32 %6389, %6392
  %6394 = add i32 %6393, %6383
  %6395 = shl i32 %6394, 2
  %6396 = add i32 %6395, 32
  %6397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6396, i32 undef)  ; BufferLoad(srv,index,wot)
  %6398 = extractvalue %dx.types.ResRet.i32 %6397, 0
  %6399 = icmp slt i32 %6398, 0
  %6400 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6383
  %6401 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6383
  %6402 = bitcast float* %6400 to i32*
  %6403 = bitcast float* %6401 to i32*
  br i1 %6399, label %6404, label %6410

; <label>:6404                                    ; preds = %6382
  %6405 = and i32 %6398, 1073741823
  %6406 = add nuw nsw i32 %6405, 20
  %6407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.i32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.i32 %6407, 1
  br label %6410

; <label>:6410                                    ; preds = %6404, %6382
  %6411 = phi i32 [ %6408, %6404 ], [ %6378, %6382 ]
  %6412 = phi i32 [ %6409, %6404 ], [ %6379, %6382 ]
  store i32 %6411, i32* %6402, align 4
  store i32 %6412, i32* %6403, align 4
  %6413 = add nuw i32 %6383, 1
  %6414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.i32 %6414, 2
  %6416 = icmp eq i32 %6415, 0
  %6417 = icmp ugt i32 %6398, -1073741825
  %6418 = and i1 %6417, %6416
  %6419 = icmp ult i32 %6413, %6376
  %6420 = and i1 %6418, %6419
  br i1 %6420, label %6382, label %6421

; <label>:6421                                    ; preds = %6410
  br label %6422

; <label>:6422                                    ; preds = %6421, %6325
  %6423 = phi i32 [ 0, %6325 ], [ %6413, %6421 ]
  %6424 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6425 = fptoui float %6424 to i32
  %6426 = icmp eq i32 %6425, 0
  br i1 %6426, label %6478, label %6427

; <label>:6427                                    ; preds = %6422
  br label %6428

; <label>:6428                                    ; preds = %6473, %6427
  %6429 = phi i32 [ %6474, %6473 ], [ %6423, %6427 ]
  %6430 = phi i32 [ %6475, %6473 ], [ 0, %6427 ]
  %6431 = lshr i32 %6430, 2
  %6432 = and i32 %6430, 3
  %6433 = add nuw nsw i32 %6431, 83
  %6434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %6433)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.i32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.i32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.i32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.i32 %6434, 3
  %6439 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %6435, i32* %6439, align 4
  %6440 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %6436, i32* %6440, align 4
  %6441 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %6437, i32* %6441, align 4
  %6442 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %6438, i32* %6442, align 4
  %6443 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %6432
  %6444 = load i32, i32* %6443, align 4, !tbaa !89, !noalias !93
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = lshr i32 %6446, 16
  %6448 = and i32 %6447, 31
  %6449 = shl i32 %6371, %6448
  %6450 = add i32 %6449, %6370
  %6451 = shl i32 %6450, 2
  %6452 = add i32 %6451, %6444
  %6453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6452, i32 undef)  ; BufferLoad(srv,index,wot)
  %6454 = extractvalue %dx.types.ResRet.i32 %6453, 0
  %6455 = icmp eq i32 %6454, 0
  br i1 %6455, label %6473, label %6456

; <label>:6456                                    ; preds = %6428
  %6457 = icmp slt i32 %6454, 0
  %6458 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6429
  %6459 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6429
  %6460 = bitcast float* %6458 to i32*
  %6461 = bitcast float* %6459 to i32*
  br i1 %6457, label %6462, label %6469

; <label>:6462                                    ; preds = %6456
  %6463 = and i32 %6454, 1073741823
  %6464 = add i32 %6444, 20
  %6465 = add i32 %6464, %6463
  %6466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.i32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.i32 %6466, 1
  br label %6469

; <label>:6469                                    ; preds = %6462, %6456
  %6470 = phi i32 [ %6467, %6462 ], [ %6378, %6456 ]
  %6471 = phi i32 [ %6468, %6462 ], [ %6379, %6456 ]
  store i32 %6470, i32* %6460, align 4
  store i32 %6471, i32* %6461, align 4
  %6472 = add i32 %6429, 1
  br label %6473

; <label>:6473                                    ; preds = %6469, %6428
  %6474 = phi i32 [ %6429, %6428 ], [ %6472, %6469 ]
  %6475 = add nuw i32 %6430, 1
  %6476 = icmp eq i32 %6475, %6425
  br i1 %6476, label %6477, label %6428

; <label>:6477                                    ; preds = %6473
  br label %6478

; <label>:6478                                    ; preds = %6477, %6422
  %6479 = phi i32 [ %6423, %6422 ], [ %6474, %6477 ]
  %6480 = icmp eq i32 %6479, 1
  %6481 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %6482 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %6480, label %6483, label %6486

; <label>:6483                                    ; preds = %6478
  %6484 = load float, float* %6481, align 4
  %6485 = load float, float* %6482, align 4
  br label %6513

; <label>:6486                                    ; preds = %6478
  %6487 = load float, float* %6481, align 4
  %6488 = load float, float* %6482, align 4
  %6489 = fdiv fast float 1.000000e+00, %6488
  %6490 = fsub fast float %6487, %6489
  %6491 = icmp ugt i32 %6479, 1
  br i1 %6491, label %6492, label %6508

; <label>:6492                                    ; preds = %6486
  br label %6493

; <label>:6493                                    ; preds = %6493, %6492
  %6494 = phi float [ %6503, %6493 ], [ %6490, %6492 ]
  %6495 = phi float [ %6504, %6493 ], [ %6487, %6492 ]
  %6496 = phi i32 [ %6505, %6493 ], [ 1, %6492 ]
  %6497 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6496
  %6498 = load float, float* %6497, align 4
  %6499 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6496
  %6500 = load float, float* %6499, align 4
  %6501 = fdiv fast float 1.000000e+00, %6500
  %6502 = fsub fast float %6498, %6501
  %6503 = call float @dx.op.binary.f32(i32 36, float %6494, float %6502)  ; FMin(a,b)
  %6504 = call float @dx.op.binary.f32(i32 35, float %6495, float %6498)  ; FMax(a,b)
  %6505 = add nuw i32 %6496, 1
  %6506 = icmp eq i32 %6505, %6479
  br i1 %6506, label %6507, label %6493

; <label>:6507                                    ; preds = %6493
  br label %6508

; <label>:6508                                    ; preds = %6507, %6486
  %6509 = phi float [ %6490, %6486 ], [ %6503, %6507 ]
  %6510 = phi float [ %6487, %6486 ], [ %6504, %6507 ]
  %6511 = fsub fast float %6510, %6509
  %6512 = fdiv fast float 1.000000e+00, %6511
  br label %6513

; <label>:6513                                    ; preds = %6508, %6483
  %6514 = phi float [ %6484, %6483 ], [ %6510, %6508 ]
  %6515 = phi float [ %6485, %6483 ], [ %6512, %6508 ]
  %6516 = fadd fast float %6217, %6514
  %6517 = fmul fast float %6516, %6515
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = fmul fast float %6518, 2.000000e+00
  %6520 = fsub fast float 1.000000e+00, %6519
  %6521 = fmul fast float %6355, %6355
  %6522 = fsub fast float %6356, %6521
  %6523 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6522)  ; FMax(a,b)
  %6524 = fdiv fast float 1.000000e+00, %6523
  %6525 = fmul fast float %6356, %6355
  %6526 = fsub fast float %6357, %6525
  %6527 = fsub fast float %6520, %6355
  %6528 = fmul fast float %6520, %6520
  %6529 = fsub fast float %6528, %6356
  %6530 = fmul fast float %6524, %6526
  %6531 = fmul fast float %6530, %6527
  %6532 = fsub fast float %6529, %6531
  %6533 = fmul fast float %6356, %6356
  %6534 = fsub fast float %6358, %6533
  %6535 = fmul fast float %6526, %6526
  %6536 = fmul fast float %6535, %6524
  %6537 = fsub fast float %6534, %6536
  %6538 = fdiv fast float %6532, %6537
  %6539 = fmul fast float %6538, %6526
  %6540 = fsub fast float %6527, %6539
  %6541 = fmul fast float %6540, %6524
  %6542 = fmul fast float %6541, %6355
  %6543 = fsub fast float 1.000000e+00, %6542
  %6544 = fmul fast float %6538, %6356
  %6545 = fsub fast float %6543, %6544
  %6546 = fmul fast float %6541, %6541
  %6547 = fmul fast float %6538, 4.000000e+00
  %6548 = fmul fast float %6547, %6545
  %6549 = fsub fast float %6546, %6548
  %6550 = call float @dx.op.unary.f32(i32 24, float %6549)  ; Sqrt(value)
  %6551 = fcmp fast oge float %6541, 0.000000e+00
  %6552 = fsub fast float -0.000000e+00, %6550
  %6553 = select i1 %6551, float %6552, float %6550
  %6554 = fsub fast float %6553, %6541
  %6555 = fdiv fast float %6554, %6538
  %6556 = fdiv fast float %6545, %6554
  %6557 = fmul fast float %6555, 5.000000e-01
  %6558 = fmul fast float %6556, 2.000000e+00
  %6559 = select i1 %6551, float %6557, float %6558
  %6560 = select i1 %6551, float %6558, float %6557
  %6561 = call float @dx.op.binary.f32(i32 35, float %6559, float %6560)  ; FMax(a,b)
  %6562 = call float @dx.op.binary.f32(i32 36, float %6559, float %6560)  ; FMin(a,b)
  %6563 = fcmp fast ogt float %6520, %6561
  %6564 = fsub fast float %6520, %6562
  %6565 = fsub fast float %6520, %6561
  %6566 = fsub fast float %6561, %6562
  %6567 = select i1 %6563, float %6565, float %6566
  %6568 = fmul float %6564, %6567
  %6569 = select i1 %6563, float %6562, float %6520
  %6570 = fcmp fast ogt float %6520, %6562
  %6571 = fmul fast float %6569, %6561
  %6572 = fadd fast float %6569, %6561
  %6573 = fmul fast float %6572, %6355
  %6574 = fadd fast float %6571, %6356
  %6575 = fsub fast float %6574, %6573
  %6576 = fdiv fast float %6575, %6568
  %6577 = select i1 %6570, float %6576, float 0.000000e+00
  %6578 = fsub fast float 1.000000e+00, %6577
  %6579 = select i1 %6563, float %6578, float %6577
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6340, 3
  %6582 = fmul fast float %6581, %6580
  %6583 = fsub fast float 1.000000e+00, %6582
  br label %6584

; <label>:6584                                    ; preds = %6513, %6225, %6190, %6186, %6152
  %6585 = phi float [ 1.000000e+00, %6152 ], [ %6583, %6513 ], [ 1.000000e+00, %6190 ], [ 1.000000e+00, %6225 ], [ 1.000000e+00, %6186 ]
  %6586 = fcmp fast ogt float %6182, 0.000000e+00
  br i1 %6586, label %6587, label %6593, !dx.controlflow.hints !102

; <label>:6587                                    ; preds = %6584
  %6588 = fadd fast float %6095, %6069
  %6589 = call float @dx.op.binary.f32(i32 35, float %6588, float 0.000000e+00)  ; FMax(a,b)
  %6590 = fadd fast float %6589, 0x3F10000000000000
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %6084, float %6085, float undef, float undef, i32 0, i32 0, i32 undef, float %6590)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  br label %6593

; <label>:6593                                    ; preds = %6587, %6584
  %6594 = phi float [ %6592, %6587 ], [ 1.000000e+00, %6584 ]
  %6595 = fcmp fast ogt float %6180, 0.000000e+00
  br i1 %6595, label %6596, label %6602, !dx.controlflow.hints !103

; <label>:6596                                    ; preds = %6593
  %6597 = fadd fast float %6125, %6069
  %6598 = call float @dx.op.binary.f32(i32 35, float %6597, float 0.000000e+00)  ; FMax(a,b)
  %6599 = fadd fast float %6598, 0x3F10000000000000
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %6076, float %6077, float undef, float undef, i32 0, i32 0, i32 undef, float %6599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  br label %6602

; <label>:6602                                    ; preds = %6596, %6593
  %6603 = phi float [ %6601, %6596 ], [ 1.000000e+00, %6593 ]
  %6604 = fcmp fast ogt float %6179, 0.000000e+00
  br i1 %6604, label %6605, label %6612, !dx.controlflow.hints !104

; <label>:6605                                    ; preds = %6602
  %6606 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6607 = fadd fast float %6606, %6069
  %6608 = call float @dx.op.binary.f32(i32 35, float %6607, float 0.000000e+00)  ; FMax(a,b)
  %6609 = fadd fast float %6608, 0x3F10000000000000
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %6061, float %6065, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  br label %6612

; <label>:6612                                    ; preds = %6605, %6602
  %6613 = phi float [ %6611, %6605 ], [ 1.000000e+00, %6602 ]
  %6614 = fsub fast float %6594, %6585
  %6615 = fmul fast float %6614, %6123
  %6616 = fadd fast float %6615, %6585
  %6617 = fsub fast float %6603, %6616
  %6618 = fmul fast float %6617, %6153
  %6619 = fadd fast float %6618, %6616
  %6620 = fsub fast float %6613, %6619
  %6621 = fmul fast float %6620, %6179
  %6622 = fadd fast float %6621, %6619
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 2
  %6625 = fcmp fast ogt float %6624, 0.000000e+00
  br i1 %6625, label %6626, label %6666, !dx.controlflow.hints !105

; <label>:6626                                    ; preds = %6612
  %6627 = fcmp fast ugt float %6624, 0.000000e+00
  br i1 %6627, label %6628, label %6663

; <label>:6628                                    ; preds = %6626
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 0
  %6631 = extractvalue %dx.types.CBufRet.f32 %6629, 1
  %6632 = extractvalue %dx.types.CBufRet.f32 %6629, 2
  %6633 = extractvalue %dx.types.CBufRet.f32 %6629, 3
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6637 = extractvalue %dx.types.CBufRet.f32 %6634, 2
  %6638 = extractvalue %dx.types.CBufRet.f32 %6634, 3
  %6639 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6640 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6645 = fadd fast float %6642, %6038
  %6646 = fadd fast float %6643, %6039
  %6647 = fadd fast float %6644, %6040
  %6648 = fmul fast float %6645, %6630
  %6649 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6646, float %6648)  ; FMad(a,b,c)
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6647, float %6649)  ; FMad(a,b,c)
  %6651 = fadd fast float %6650, %6633
  %6652 = fmul fast float %6645, %6635
  %6653 = call float @dx.op.tertiary.f32(i32 46, float %6636, float %6646, float %6652)  ; FMad(a,b,c)
  %6654 = call float @dx.op.tertiary.f32(i32 46, float %6637, float %6647, float %6653)  ; FMad(a,b,c)
  %6655 = fadd fast float %6654, %6638
  %6656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %6651, float %6655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = fmul fast float %6657, %6640
  %6659 = fadd fast float %6658, %6639
  %6660 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6661 = fmul fast float %6660, %6624
  %6662 = fsub fast float 1.000000e+00, %6661
  br label %6663

; <label>:6663                                    ; preds = %6628, %6626
  %6664 = phi float [ %6662, %6628 ], [ 1.000000e+00, %6626 ]
  %6665 = fmul fast float %6664, %6622
  br label %6666

; <label>:6666                                    ; preds = %6663, %6612, %6018
  %6667 = phi float [ 1.000000e+00, %6018 ], [ %6665, %6663 ], [ %6622, %6612 ]
  %6668 = call float @dx.op.binary.f32(i32 36, float %6667, float %6667)  ; FMin(a,b)
  %6669 = call float @dx.op.binary.f32(i32 36, float %6667, float %6668)  ; FMin(a,b)
  %6670 = fcmp fast ogt float %6669, 0.000000e+00
  br i1 %6670, label %6671, label %6832, !dx.controlflow.hints !106

; <label>:6671                                    ; preds = %6666
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6675 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6676 = extractvalue %dx.types.CBufRet.f32 %6672, 3
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6680 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6681 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.CBufRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6686 = extractvalue %dx.types.CBufRet.f32 %6682, 3
  %6687 = fmul fast float %6673, %6038
  %6688 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6674, float %6687)  ; FMad(a,b,c)
  %6689 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6675, float %6688)  ; FMad(a,b,c)
  %6690 = fadd fast float %6689, %6676
  %6691 = fmul fast float %6678, %6038
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6679, float %6691)  ; FMad(a,b,c)
  %6693 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6680, float %6692)  ; FMad(a,b,c)
  %6694 = fadd fast float %6693, %6681
  %6695 = fmul fast float %6683, %6038
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6039, float %6684, float %6695)  ; FMad(a,b,c)
  %6697 = call float @dx.op.tertiary.f32(i32 46, float %6040, float %6685, float %6696)  ; FMad(a,b,c)
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.CBufRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.CBufRet.f32 %6698, 3
  %6702 = fmul fast float %6701, %6690
  %6703 = fmul fast float %6701, %6694
  %6704 = fadd fast float %6702, %6699
  %6705 = fadd fast float %6703, %6700
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = fsub fast float %6704, %6707
  %6710 = fsub fast float %6705, %6708
  %6711 = fcmp fast olt float %6709, 0.000000e+00
  %6712 = fcmp fast olt float %6710, 0.000000e+00
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.CBufRet.f32 %6713, 2
  %6717 = extractvalue %dx.types.CBufRet.f32 %6713, 3
  %6718 = select i1 %6711, float %6714, float %6716
  %6719 = select i1 %6712, float %6715, float %6717
  %6720 = fmul fast float %6718, %6709
  %6721 = fmul fast float %6719, %6710
  %6722 = call float @dx.op.unary.f32(i32 6, float %6720)  ; FAbs(value)
  %6723 = call float @dx.op.unary.f32(i32 6, float %6721)  ; FAbs(value)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6725 = call float @dx.op.binary.f32(i32 35, float %6722, float %6723)  ; FMax(a,b)
  %6726 = fsub fast float %6724, %6725
  %6727 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  %6728 = fcmp fast ogt float %6727, 0.000000e+00
  br i1 %6728, label %6729, label %6770, !dx.controlflow.hints !107

; <label>:6729                                    ; preds = %6671
  %6730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %6704, float %6705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6731 = extractvalue %dx.types.ResRet.f32 %6730, 1
  %6732 = fcmp fast ogt float %6731, 0.000000e+00
  br i1 %6732, label %6733, label %6765

; <label>:6733                                    ; preds = %6729
  %6734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %6704, float %6705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.ResRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.ResRet.f32 %6734, 2
  %6738 = extractvalue %dx.types.ResRet.f32 %6734, 3
  %6739 = fsub fast float 1.000000e+00, %6686
  %6740 = fsub fast float %6739, %6697
  %6741 = fmul fast float %6740, 0x400921FB60000000
  %6742 = fadd fast float %6741, 0x3FF921FB60000000
  %6743 = call float @dx.op.unary.f32(i32 13, float %6742)  ; Sin(value)
  %6744 = fadd fast float %6743, -1.000000e+00
  %6745 = fmul fast float %6744, 0x3FD45F3060000000
  %6746 = fmul fast float %6740, 0x401921FB60000000
  %6747 = fadd fast float %6746, 0x400921FB60000000
  %6748 = call float @dx.op.unary.f32(i32 13, float %6747)  ; Sin(value)
  %6749 = fadd fast float %6748, 0x3E7777A5C0000000
  %6750 = fmul fast float %6749, 0x3FC45F3060000000
  %6751 = fmul fast float %6740, 0x4022D97C80000000
  %6752 = fadd fast float %6751, 0x4012D97C80000000
  %6753 = call float @dx.op.unary.f32(i32 13, float %6752)  ; Sin(value)
  %6754 = fadd fast float %6753, 1.000000e+00
  %6755 = fmul fast float %6754, 0x3FBB2995E0000000
  %6756 = fmul fast float %6740, 0x402921FB60000000
  %6757 = fadd fast float %6756, 0x401921FB60000000
  %6758 = call float @dx.op.unary.f32(i32 13, float %6757)  ; Sin(value)
  %6759 = fadd fast float %6758, 0xBE8777A5C0000000
  %6760 = fmul fast float %6759, 0x3FB45F3060000000
  %6761 = call float @dx.op.dot4.f32(i32 56, float %6735, float %6736, float %6737, float %6738, float %6745, float %6750, float %6755, float %6760)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6762 = fmul fast float %6761, 0xBFF7154760000000
  %6763 = call float @dx.op.unary.f32(i32 21, float %6762)  ; Exp(value)
  %6764 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  br label %6765

; <label>:6765                                    ; preds = %6733, %6729
  %6766 = phi float [ %6764, %6733 ], [ 1.000000e+00, %6729 ]
  %6767 = fadd fast float %6766, -1.000000e+00
  %6768 = fmul fast float %6767, %6727
  %6769 = fadd fast float %6768, 1.000000e+00
  br label %6770

; <label>:6770                                    ; preds = %6765, %6671
  %6771 = phi float [ %6769, %6765 ], [ 1.000000e+00, %6671 ]
  %6772 = fmul fast float %6771, %6667
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.CBufRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %6777 = fadd fast float %6774, %145
  %6778 = fadd fast float %6775, %146
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6781 = fsub fast float -0.000000e+00, %6777
  %6782 = fsub fast float -0.000000e+00, %6778
  %6783 = fsub fast float -0.000000e+00, %147
  %6784 = fsub fast float %6783, %6776
  %6785 = fadd fast float %6784, %6780
  %6786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6781, float %6782, float %6785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6788 = fdiv fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6788, %6786
  %6790 = fmul fast float %6019, %6789
  %6791 = fmul fast float %6020, %6789
  %6792 = fadd fast float %6790, %6777
  %6793 = fadd fast float %6791, %6778
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = fsub fast float %6792, %6795
  %6798 = fsub fast float %6793, %6796
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 2
  %6801 = extractvalue %dx.types.CBufRet.f32 %6799, 3
  %6802 = fmul fast float %6797, %6800
  %6803 = fmul fast float %6798, %6801
  %6804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.i32 %6804, 3
  %6806 = icmp eq i32 %6805, 0
  br i1 %6806, label %6812, label %6807

; <label>:6807                                    ; preds = %6770
  %6808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6802, float %6803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = extractvalue %dx.types.ResRet.f32 %6808, 1
  %6811 = extractvalue %dx.types.ResRet.f32 %6808, 2
  br label %6817

; <label>:6812                                    ; preds = %6770
  %6813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6802, float %6803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6814 = extractvalue %dx.types.ResRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.ResRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.ResRet.f32 %6813, 2
  br label %6817

; <label>:6817                                    ; preds = %6812, %6807
  %6818 = phi float [ %6809, %6807 ], [ %6814, %6812 ]
  %6819 = phi float [ %6810, %6807 ], [ %6815, %6812 ]
  %6820 = phi float [ %6811, %6807 ], [ %6816, %6812 ]
  %6821 = extractvalue %dx.types.CBufRet.f32 %6779, 2
  %6822 = fmul fast float %6821, %6818
  %6823 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6824 = fsub fast float %6789, %6823
  %6825 = fsub fast float %6824, %6822
  %6826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6825)  ; FMax(a,b)
  %6827 = fmul fast float %6826, %6819
  %6828 = call float @dx.op.binary.f32(i32 36, float %6820, float %6827)  ; FMin(a,b)
  %6829 = fmul fast float %6828, 0xBFF7154760000000
  %6830 = call float @dx.op.unary.f32(i32 21, float %6829)  ; Exp(value)
  %6831 = fmul fast float %6772, %6830
  br label %6832

; <label>:6832                                    ; preds = %6817, %6666
  %6833 = phi float [ %6831, %6817 ], [ %6667, %6666 ]
  %6834 = call float @dx.op.binary.f32(i32 36, float %6833, float %6833)  ; FMin(a,b)
  %6835 = call float @dx.op.binary.f32(i32 36, float %6833, float %6834)  ; FMin(a,b)
  %6836 = fcmp fast ogt float %6835, 0.000000e+00
  br i1 %6836, label %6837, label %7147, !dx.controlflow.hints !108

; <label>:6837                                    ; preds = %6832
  %6838 = fmul fast float %6833, %6030
  %6839 = fmul fast float %6833, %6031
  %6840 = fmul fast float %6833, %6032
  %6841 = fsub fast float %6019, %5412
  %6842 = fsub fast float %6020, %5411
  %6843 = fsub fast float %6021, %5410
  %6844 = call float @dx.op.dot3.f32(i32 55, float %6841, float %6842, float %6843, float %6841, float %6842, float %6843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6845 = call float @dx.op.unary.f32(i32 25, float %6844)  ; Rsqrt(value)
  %6846 = fmul fast float %6845, %6841
  %6847 = fmul fast float %6845, %6842
  %6848 = fmul fast float %6845, %6843
  %6849 = call float @dx.op.dot3.f32(i32 55, float %6019, float %6020, float %6021, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %6850 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5408, float %5407, float %6846, float %6847, float %6848)  ; Dot3(ax,ay,az,bx,by,bz)
  %6851 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6852 = fmul fast float %6851, %6851
  %6853 = fmul fast float %6852, %5473
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = fmul fast float %6854, %6851
  %6856 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %6846, float %6847, float %6848)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = fmul fast float %6856, %6856
  %6858 = call float @dx.op.unary.f32(i32 6, float %6849)  ; FAbs(value)
  %6859 = call float @dx.op.binary.f32(i32 35, float %5848, float 0x3F847AE140000000)  ; FMax(a,b)
  %6860 = fmul fast float %6859, %6859
  %6861 = fmul fast float %6860, %6860
  %6862 = fsub fast float 1.000000e+00, %6861
  %6863 = fmul fast float %5460, %5460
  %6864 = fmul fast float %6863, %6862
  %6865 = fadd fast float %6864, %6861
  %6866 = bitcast float %6865 to i32
  %6867 = ashr i32 %6866, 1
  %6868 = add nsw i32 %6867, 532487669
  %6869 = bitcast i32 %6868 to float
  %6870 = fadd fast float %6869, %5460
  %6871 = fmul fast float %6861, %6857
  %6872 = fsub fast float 1.000000e+00, %6857
  %6873 = fadd fast float %6872, %6871
  %6874 = fmul fast float %6858, %6858
  %6875 = fmul fast float %6874, %6862
  %6876 = fadd fast float %6875, %6861
  %6877 = bitcast float %6876 to i32
  %6878 = ashr i32 %6877, 1
  %6879 = add nsw i32 %6878, 532487669
  %6880 = bitcast i32 %6879 to float
  %6881 = fadd fast float %6880, %6858
  %6882 = fmul fast float %6873, %6873
  %6883 = fmul fast float %6882, %6870
  %6884 = fmul fast float %6883, %6881
  %6885 = fdiv fast float 0x3FF0A00000000000, %6884
  %6886 = fmul fast float %6885, %6861
  %6887 = fmul fast float %5708, 0x3FF9999980000000
  %6888 = fsub fast float 5.000000e+00, %6887
  %6889 = call float @dx.op.unary.f32(i32 6, float %6850)  ; FAbs(value)
  %6890 = fsub fast float 1.000000e+00, %6889
  %6891 = fmul fast float %5708, 0x41D9660740000000
  %6892 = fadd fast float %6891, 0xC1EFBF8940000000
  %6893 = bitcast float %6890 to i32
  %6894 = sitofp i32 %6893 to float
  %6895 = fmul fast float %6894, %6888
  %6896 = fadd fast float %6892, %6895
  %6897 = fptosi float %6896 to i32
  %6898 = bitcast i32 %6897 to float
  %6899 = fsub fast float 1.000000e+00, %5413
  %6900 = fsub fast float 1.000000e+00, %5414
  %6901 = fsub fast float 1.000000e+00, %5458
  %6902 = fmul fast float %6898, %6899
  %6903 = fmul fast float %6898, %6900
  %6904 = fmul fast float %6898, %6901
  %6905 = fadd fast float %6902, %5413
  %6906 = fadd fast float %6903, %5414
  %6907 = fadd fast float %6904, %5458
  br i1 %5731, label %6908, label %6931

; <label>:6908                                    ; preds = %6837
  %6909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5073, float %6889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6910 = extractvalue %dx.types.ResRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.ResRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.ResRet.f32 %6909, 2
  %6913 = fadd fast float %6910, -5.000000e-01
  %6914 = fadd fast float %6911, -5.000000e-01
  %6915 = fadd fast float %6912, -5.000000e-01
  %6916 = fmul fast float %5413, 4.000000e+00
  %6917 = fmul fast float %6916, %6899
  %6918 = fmul fast float %6917, %6913
  %6919 = fmul fast float %5414, 4.000000e+00
  %6920 = fmul fast float %6919, %6900
  %6921 = fmul fast float %6920, %6914
  %6922 = fmul fast float %5458, 4.000000e+00
  %6923 = fmul fast float %6922, %6901
  %6924 = fmul fast float %6923, %6915
  %6925 = fadd fast float %6918, %6905
  %6926 = fadd fast float %6921, %6906
  %6927 = fadd fast float %6924, %6907
  %6928 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6929 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  br label %6931

; <label>:6931                                    ; preds = %6908, %6837
  %6932 = phi float [ %6928, %6908 ], [ %6905, %6837 ]
  %6933 = phi float [ %6929, %6908 ], [ %6906, %6837 ]
  %6934 = phi float [ %6930, %6908 ], [ %6907, %6837 ]
  %6935 = fmul fast float %6849, 9.843750e-01
  %6936 = fadd fast float %6935, 7.812500e-03
  %6937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %6936, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.ResRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.ResRet.f32 %6937, 2
  %6941 = extractvalue %dx.types.ResRet.f32 %6937, 3
  %6942 = fsub fast float %6940, %6938
  %6943 = fsub fast float %6941, %6939
  %6944 = fmul fast float %6942, %5718
  %6945 = fmul fast float %6943, %5718
  %6946 = fadd fast float %6944, %6938
  %6947 = fadd fast float %6945, %6939
  %6948 = fmul fast float %6946, %5413
  %6949 = fmul fast float %6946, %5414
  %6950 = fmul fast float %6946, %5458
  %6951 = fadd fast float %6948, %6947
  %6952 = fadd fast float %6949, %6947
  %6953 = fadd fast float %6950, %6947
  br i1 %5731, label %6954, label %6977

; <label>:6954                                    ; preds = %6931
  %6955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5073, float %6849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.ResRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.ResRet.f32 %6955, 2
  %6959 = fadd fast float %6956, -5.000000e-01
  %6960 = fadd fast float %6957, -5.000000e-01
  %6961 = fadd fast float %6958, -5.000000e-01
  %6962 = fmul fast float %5413, 4.000000e+00
  %6963 = fmul fast float %6962, %6899
  %6964 = fmul fast float %6963, %6959
  %6965 = fmul fast float %5414, 4.000000e+00
  %6966 = fmul fast float %6965, %6900
  %6967 = fmul fast float %6966, %6960
  %6968 = fmul fast float %5458, 4.000000e+00
  %6969 = fmul fast float %6968, %6901
  %6970 = fmul fast float %6969, %6961
  %6971 = fadd fast float %6964, %6951
  %6972 = fadd fast float %6967, %6952
  %6973 = fadd fast float %6970, %6953
  %6974 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  %6975 = call float @dx.op.unary.f32(i32 7, float %6972)  ; Saturate(value)
  %6976 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  br label %6977

; <label>:6977                                    ; preds = %6954, %6931
  %6978 = phi float [ %6974, %6954 ], [ %6951, %6931 ]
  %6979 = phi float [ %6975, %6954 ], [ %6952, %6931 ]
  %6980 = phi float [ %6976, %6954 ], [ %6953, %6931 ]
  %6981 = call float @dx.op.binary.f32(i32 35, float %6979, float %6980)  ; FMax(a,b)
  %6982 = call float @dx.op.binary.f32(i32 35, float %6978, float %6981)  ; FMax(a,b)
  %6983 = fsub fast float 1.000000e+00, %6982
  %6984 = call float @dx.op.binary.f32(i32 35, float %6858, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6985 = fdiv fast float %4410, %6984
  %6986 = fmul fast float %5789, %6985
  %6987 = fmul fast float %5791, %6985
  %6988 = fmul fast float %5793, %6985
  %6989 = call float @dx.op.unary.f32(i32 21, float %6986)  ; Exp(value)
  %6990 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6991 = call float @dx.op.unary.f32(i32 21, float %6988)  ; Exp(value)
  %6992 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6993 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6994 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6995 = select i1 %5786, float %6992, float 0.000000e+00
  %6996 = select i1 %5787, float %6993, float 0.000000e+00
  %6997 = select i1 %5788, float %6994, float 0.000000e+00
  %6998 = fsub fast float -0.000000e+00, %5416
  %6999 = fsub fast float -0.000000e+00, %5417
  %7000 = fsub fast float -0.000000e+00, %5418
  %7001 = call float @dx.op.dot3.f32(i32 55, float %6019, float %6020, float %6021, float %6998, float %6999, float %7000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7002 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7003 = fmul fast float %7002, 9.843750e-01
  %7004 = fadd fast float %7003, 7.812500e-03
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %7004, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = extractvalue %dx.types.ResRet.f32 %7005, 1
  %7008 = extractvalue %dx.types.ResRet.f32 %7005, 2
  %7009 = extractvalue %dx.types.ResRet.f32 %7005, 3
  %7010 = fsub fast float %7008, %7006
  %7011 = fsub fast float %7009, %7007
  %7012 = fmul fast float %7010, %5718
  %7013 = fmul fast float %7011, %5718
  %7014 = fadd fast float %7012, %7006
  %7015 = fadd fast float %7013, %7007
  %7016 = fmul fast float %7014, %5413
  %7017 = fmul fast float %7014, %5414
  %7018 = fmul fast float %7014, %5458
  %7019 = fadd fast float %7016, %7015
  %7020 = fadd fast float %7017, %7015
  %7021 = fadd fast float %7018, %7015
  br i1 %5731, label %7022, label %7045

; <label>:7022                                    ; preds = %6977
  %7023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5073, float %7002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.ResRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.ResRet.f32 %7023, 2
  %7027 = fadd fast float %7024, -5.000000e-01
  %7028 = fadd fast float %7025, -5.000000e-01
  %7029 = fadd fast float %7026, -5.000000e-01
  %7030 = fmul fast float %5413, 4.000000e+00
  %7031 = fmul fast float %7030, %6899
  %7032 = fmul fast float %7031, %7027
  %7033 = fmul fast float %5414, 4.000000e+00
  %7034 = fmul fast float %7033, %6900
  %7035 = fmul fast float %7034, %7028
  %7036 = fmul fast float %5458, 4.000000e+00
  %7037 = fmul fast float %7036, %6901
  %7038 = fmul fast float %7037, %7029
  %7039 = fadd fast float %7032, %7019
  %7040 = fadd fast float %7035, %7020
  %7041 = fadd fast float %7038, %7021
  %7042 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7043 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7044 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  br label %7045

; <label>:7045                                    ; preds = %7022, %6977
  %7046 = phi float [ %7042, %7022 ], [ %7019, %6977 ]
  %7047 = phi float [ %7043, %7022 ], [ %7020, %6977 ]
  %7048 = phi float [ %7044, %7022 ], [ %7021, %6977 ]
  %7049 = call float @dx.op.binary.f32(i32 35, float %7047, float %7048)  ; FMax(a,b)
  %7050 = call float @dx.op.binary.f32(i32 35, float %7046, float %7049)  ; FMax(a,b)
  %7051 = fsub fast float 1.000000e+00, %7050
  %7052 = fmul fast float %5848, %5854
  %7053 = fadd fast float %5847, %7052
  %7054 = call float @dx.op.unary.f32(i32 7, float %7053)  ; Saturate(value)
  %7055 = fsub fast float %6019, %5466
  %7056 = fsub fast float %6020, %5467
  %7057 = fsub fast float %6021, %5468
  %7058 = call float @dx.op.dot3.f32(i32 55, float %7055, float %7056, float %7057, float %7055, float %7056, float %7057)  ; Dot3(ax,ay,az,bx,by,bz)
  %7059 = call float @dx.op.unary.f32(i32 25, float %7058)  ; Rsqrt(value)
  %7060 = fmul fast float %7059, %7055
  %7061 = fmul fast float %7059, %7056
  %7062 = fmul fast float %7059, %7057
  %7063 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7000, float %7060, float %7061, float %7062)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = fmul fast float %7063, %7063
  %7065 = call float @dx.op.unary.f32(i32 6, float %7002)  ; FAbs(value)
  %7066 = call float @dx.op.binary.f32(i32 35, float %7054, float 0x3F847AE140000000)  ; FMax(a,b)
  %7067 = fmul fast float %7066, %7066
  %7068 = fmul fast float %7067, %7067
  %7069 = fsub fast float 1.000000e+00, %7068
  %7070 = fmul fast float %6863, %7069
  %7071 = fadd fast float %7070, %7068
  %7072 = bitcast float %7071 to i32
  %7073 = ashr i32 %7072, 1
  %7074 = add nsw i32 %7073, 532487669
  %7075 = bitcast i32 %7074 to float
  %7076 = fadd fast float %7075, %5460
  %7077 = fmul fast float %7068, %7064
  %7078 = fsub fast float 1.000000e+00, %7064
  %7079 = fadd fast float %7078, %7077
  %7080 = fmul fast float %7065, %7065
  %7081 = fmul fast float %7080, %7069
  %7082 = fadd fast float %7081, %7068
  %7083 = bitcast float %7082 to i32
  %7084 = ashr i32 %7083, 1
  %7085 = add nsw i32 %7084, 532487669
  %7086 = bitcast i32 %7085 to float
  %7087 = fadd fast float %7086, %7065
  %7088 = fmul fast float %7079, %7079
  %7089 = fmul fast float %7088, %7076
  %7090 = fmul fast float %7089, %7087
  %7091 = fdiv fast float 0x3FF0A00000000000, %7090
  %7092 = fmul fast float %7091, %7068
  %7093 = fmul fast float %7002, %6995
  %7094 = fmul fast float %7002, %6996
  %7095 = fmul fast float %7002, %6997
  %7096 = fmul fast float %7093, %7051
  %7097 = fmul fast float %7096, %7092
  %7098 = fmul fast float %7094, %7051
  %7099 = fmul fast float %7098, %7092
  %7100 = fmul fast float %7095, %7051
  %7101 = fmul fast float %7100, %7092
  %7102 = fmul fast float %6932, %6886
  %7103 = fmul fast float %6933, %6886
  %7104 = fmul fast float %6934, %6886
  %7105 = fsub fast float 1.000000e+00, %6850
  %7106 = bitcast float %7105 to i32
  %7107 = sitofp i32 %7106 to float
  %7108 = fmul fast float %7107, 5.000000e+00
  %7109 = fadd fast float %7108, 0xC1EFBF8940000000
  %7110 = fptosi float %7109 to i32
  %7111 = bitcast i32 %7110 to float
  %7112 = fmul fast float %7111, %5074
  %7113 = fmul fast float %6983, %7112
  %7114 = fmul fast float %7113, %5781
  %7115 = fmul fast float %7113, %5782
  %7116 = fmul fast float %7113, %5783
  %7117 = fadd fast float %7114, %7102
  %7118 = fadd fast float %7115, %7103
  %7119 = fadd fast float %7116, %7104
  %7120 = fmul fast float %7117, %6855
  %7121 = fmul fast float %7118, %6855
  %7122 = fmul fast float %7119, %6855
  %7123 = fmul fast float %6855, %6838
  %7124 = fmul fast float %7123, %6983
  %7125 = fmul fast float %6855, %6839
  %7126 = fmul fast float %7125, %6983
  %7127 = fmul fast float %6855, %6840
  %7128 = fmul fast float %7127, %6983
  %7129 = fadd fast float %7120, %7097
  %7130 = fadd fast float %7121, %7099
  %7131 = fadd fast float %7122, %7101
  %7132 = fmul fast float %7129, %6838
  %7133 = fmul fast float %7130, %6839
  %7134 = fmul fast float %7131, %6840
  %7135 = fadd fast float %7124, %5765
  %7136 = fmul fast float %7135, %5070
  %7137 = fadd fast float %7126, %5766
  %7138 = fmul fast float %7137, %5070
  %7139 = fadd fast float %7128, %5767
  %7140 = fmul fast float %7139, %5070
  %7141 = fadd fast float %7132, %6005
  %7142 = fmul fast float %7141, %5070
  %7143 = fadd fast float %7133, %6009
  %7144 = fmul fast float %7143, %5070
  %7145 = fadd fast float %7134, %6013
  %7146 = fmul fast float %7145, %5070
  br label %7147

; <label>:7147                                    ; preds = %7045, %6832, %5989
  %7148 = phi float [ %6006, %5989 ], [ %6006, %6832 ], [ %7142, %7045 ]
  %7149 = phi float [ %6010, %5989 ], [ %6010, %6832 ], [ %7144, %7045 ]
  %7150 = phi float [ %6014, %5989 ], [ %6014, %6832 ], [ %7146, %7045 ]
  %7151 = phi float [ %5878, %5989 ], [ %5878, %6832 ], [ %7136, %7045 ]
  %7152 = phi float [ %5879, %5989 ], [ %5879, %6832 ], [ %7138, %7045 ]
  %7153 = phi float [ %5880, %5989 ], [ %5880, %6832 ], [ %7140, %7045 ]
  %7154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7155 = extractvalue %dx.types.CBufRet.f32 %7154, 0
  %7156 = fmul fast float %7155, %5861
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 3
  %7159 = fsub fast float 1.000000e+00, %5077
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = fadd fast float %7153, %5076
  %7162 = fmul fast float %7161, %5077
  %7163 = fmul fast float %7160, %7158
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 3
  %7166 = fmul fast float %7151, %5419
  %7167 = fmul fast float %7152, %5420
  %7168 = fmul fast float %7153, %5421
  %7169 = fcmp fast ogt float %81, %167
  %7170 = and i1 %7169, %5145
  %7171 = or i1 %5224, %7170
  %7172 = icmp eq i32 %5144, 2
  %7173 = fcmp fast ole float %81, %167
  %7174 = and i1 %7173, %7172
  %7175 = or i1 %7174, %7171
  br i1 %7170, label %7176, label %7425

; <label>:7176                                    ; preds = %7147
  %7177 = fmul fast float %5941, %90
  %7178 = fmul fast float %5942, %91
  %7179 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7180 = call float @dx.op.unary.f32(i32 7, float %7178)  ; Saturate(value)
  %7181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %7179, float %7180, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7182 = extractvalue %dx.types.ResRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.ResRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.ResRet.f32 %7181, 2
  %7185 = extractvalue %dx.types.ResRet.f32 %7181, 3
  %7186 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %7179, float %7180, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.ResRet.f32 %7186, 1
  %7189 = extractvalue %dx.types.ResRet.f32 %7186, 2
  %7190 = extractvalue %dx.types.ResRet.f32 %7186, 3
  %7191 = call float @dx.op.binary.f32(i32 35, float %7183, float %7184)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 35, float %7182, float %7191)  ; FMax(a,b)
  %7193 = call float @dx.op.binary.f32(i32 35, float %7192, float %7185)  ; FMax(a,b)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7188, float %7189)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 36, float %7187, float %7194)  ; FMin(a,b)
  %7196 = call float @dx.op.binary.f32(i32 36, float %7195, float %7190)  ; FMin(a,b)
  %7197 = fmul fast float %7193, 2.550000e+02
  %7198 = fadd fast float %7197, 0x3F70101020000000
  %7199 = fptoui float %7198 to i32
  %7200 = fmul fast float %7196, 2.550000e+02
  %7201 = fadd fast float %7200, 0x3F70101020000000
  %7202 = fptoui float %7201 to i32
  %7203 = icmp ult i32 %7199, %7202
  br i1 %7203, label %7204, label %7370

; <label>:7204                                    ; preds = %7176
  %7205 = fcmp fast ogt float %80, 9.843750e-01
  %7206 = fadd fast float %81, -4.000000e+00
  %7207 = select i1 %7205, float -4.000000e+00, float %7206
  %7208 = call float @dx.op.binary.f32(i32 35, float %7207, float 0.000000e+00)  ; FMax(a,b)
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = fadd fast float %7210, %7208
  %7212 = extractvalue %dx.types.CBufRet.f32 %7209, 2
  %7213 = fmul fast float %7211, %7212
  %7214 = call float @dx.op.unary.f32(i32 23, float %7213)  ; Log(value)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7209, 3
  %7216 = fmul fast float %7215, %7214
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7219 = fmul fast float %7216, %7218
  %7220 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7221 = uitofp i32 %7199 to float
  %7222 = uitofp i32 %7202 to float
  %7223 = fadd fast float %7221, 5.000000e-01
  %7224 = fadd fast float %7222, 5.000000e-01
  %7225 = fmul fast float %7218, %7223
  %7226 = fmul fast float %7218, %7224
  %7227 = fadd fast float %7225, 0x3F0FFB4800000000
  %7228 = fadd fast float %7226, 0xBF0FFB4800000000
  %7229 = call float @dx.op.binary.f32(i32 35, float %7220, float %7227)  ; FMax(a,b)
  %7230 = call float @dx.op.binary.f32(i32 36, float %7229, float %7228)  ; FMin(a,b)
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %7235 = fmul fast float %7232, %7230
  %7236 = fadd fast float %7234, %7235
  %7237 = fadd fast float %7234, %7233
  %7238 = fsub fast float %7232, %7233
  %7239 = fadd fast float %7238, %7234
  %7240 = call float @dx.op.binary.f32(i32 35, float %7236, float %7237)  ; FMax(a,b)
  %7241 = call float @dx.op.binary.f32(i32 36, float %7240, float %7239)  ; FMin(a,b)
  %7242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %7179, float %7180, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7247 = extractvalue %dx.types.CBufRet.i32 %7246, 0
  %7248 = extractvalue %dx.types.CBufRet.i32 %7246, 1
  %7249 = uitofp i32 %7247 to float
  %7250 = uitofp i32 %7248 to float
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7254 = fmul fast float %7249, %7179
  %7255 = fmul fast float %7250, %7180
  %7256 = fadd fast float %7254, -5.000000e-01
  %7257 = fadd fast float %7255, -5.000000e-01
  %7258 = call float @dx.op.unary.f32(i32 22, float %7256)  ; Frc(value)
  %7259 = call float @dx.op.unary.f32(i32 22, float %7257)  ; Frc(value)
  %7260 = fmul fast float %7258, %7258
  %7261 = fmul fast float %7260, %7258
  %7262 = fsub fast float 3.000000e+00, %7258
  %7263 = fmul fast float %7260, %7262
  %7264 = fmul fast float %7258, 3.000000e+00
  %7265 = fmul fast float %7261, 3.000000e+00
  %7266 = fmul fast float %7260, 6.000000e+00
  %7267 = fsub fast float %7265, %7266
  %7268 = fadd fast float %7267, 4.000000e+00
  %7269 = fmul fast float %7268, 0x3FC5555560000000
  %7270 = fmul fast float %7261, -3.000000e+00
  %7271 = fadd fast float %7260, %7258
  %7272 = fmul fast float %7271, 3.000000e+00
  %7273 = fadd fast float %7270, 1.000000e+00
  %7274 = fadd fast float %7273, %7272
  %7275 = fmul fast float %7261, 0x3FC5555560000000
  %7276 = fmul fast float %7259, %7259
  %7277 = fmul fast float %7276, %7259
  %7278 = fsub fast float 3.000000e+00, %7259
  %7279 = fmul fast float %7276, %7278
  %7280 = fmul fast float %7259, 3.000000e+00
  %7281 = fmul fast float %7277, 3.000000e+00
  %7282 = fmul fast float %7276, 6.000000e+00
  %7283 = fsub fast float %7281, %7282
  %7284 = fadd fast float %7283, 4.000000e+00
  %7285 = fmul fast float %7284, 0x3FC5555560000000
  %7286 = fmul fast float %7277, -3.000000e+00
  %7287 = fadd fast float %7276, %7259
  %7288 = fmul fast float %7287, 3.000000e+00
  %7289 = fadd fast float %7286, 1.000000e+00
  %7290 = fadd fast float %7289, %7288
  %7291 = fmul fast float %7277, 0x3FC5555560000000
  %7292 = fadd fast float %7258, 1.000000e+00
  %7293 = fsub fast float 1.000000e+00, %7264
  %7294 = fadd fast float %7293, %7263
  %7295 = fadd fast float %7294, %7268
  %7296 = fmul fast float %7295, 0x3FC5555560000000
  %7297 = fdiv fast float %7269, %7296
  %7298 = fsub fast float %7292, %7297
  %7299 = fsub fast float 1.000000e+00, %7258
  %7300 = fadd fast float %7274, %7261
  %7301 = fmul fast float %7300, 0x3FC5555560000000
  %7302 = fdiv fast float %7275, %7301
  %7303 = fadd fast float %7299, %7302
  %7304 = fadd fast float %7259, 1.000000e+00
  %7305 = fsub fast float 1.000000e+00, %7280
  %7306 = fadd fast float %7305, %7279
  %7307 = fadd fast float %7306, %7284
  %7308 = fmul fast float %7307, 0x3FC5555560000000
  %7309 = fdiv fast float %7285, %7308
  %7310 = fsub fast float %7304, %7309
  %7311 = fsub fast float 1.000000e+00, %7259
  %7312 = fadd fast float %7290, %7277
  %7313 = fmul fast float %7312, 0x3FC5555560000000
  %7314 = fdiv fast float %7291, %7313
  %7315 = fadd fast float %7314, %7311
  %7316 = fmul fast float %7298, %7252
  %7317 = fsub fast float %7179, %7316
  %7318 = fmul fast float %7303, %7252
  %7319 = fadd fast float %7318, %7179
  %7320 = fmul fast float %7315, %7253
  %7321 = fadd fast float %7320, %7180
  %7322 = fmul fast float %7310, %7253
  %7323 = fsub fast float %7180, %7322
  %7324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7317, float %7323, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7325 = extractvalue %dx.types.ResRet.f32 %7324, 0
  %7326 = extractvalue %dx.types.ResRet.f32 %7324, 1
  %7327 = extractvalue %dx.types.ResRet.f32 %7324, 2
  %7328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7319, float %7323, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.ResRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.ResRet.f32 %7328, 2
  %7332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7317, float %7321, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7333 = extractvalue %dx.types.ResRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.ResRet.f32 %7332, 1
  %7335 = extractvalue %dx.types.ResRet.f32 %7332, 2
  %7336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7319, float %7321, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7337 = extractvalue %dx.types.ResRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.ResRet.f32 %7336, 1
  %7339 = extractvalue %dx.types.ResRet.f32 %7336, 2
  %7340 = fsub fast float %7333, %7325
  %7341 = fsub fast float %7334, %7326
  %7342 = fsub fast float %7335, %7327
  %7343 = fmul fast float %7340, %7313
  %7344 = fmul fast float %7341, %7313
  %7345 = fmul fast float %7342, %7313
  %7346 = fadd fast float %7343, %7325
  %7347 = fadd fast float %7344, %7326
  %7348 = fadd fast float %7345, %7327
  %7349 = fsub fast float %7337, %7329
  %7350 = fsub fast float %7338, %7330
  %7351 = fsub fast float %7339, %7331
  %7352 = fmul fast float %7349, %7313
  %7353 = fmul fast float %7350, %7313
  %7354 = fmul fast float %7351, %7313
  %7355 = fsub fast float %7329, %7346
  %7356 = fadd fast float %7355, %7352
  %7357 = fsub fast float %7330, %7347
  %7358 = fadd fast float %7357, %7353
  %7359 = fsub fast float %7331, %7348
  %7360 = fadd fast float %7359, %7354
  %7361 = fmul fast float %7356, %7301
  %7362 = fmul fast float %7358, %7301
  %7363 = fmul fast float %7360, %7301
  %7364 = fadd fast float %7361, %7346
  %7365 = fadd fast float %7362, %7347
  %7366 = fadd fast float %7363, %7348
  %7367 = fmul fast float %7364, %5996
  %7368 = fmul fast float %7365, %5996
  %7369 = fmul fast float %7366, %5996
  br label %7370

; <label>:7370                                    ; preds = %7204, %7176
  %7371 = phi float [ %7243, %7204 ], [ 1.000000e+00, %7176 ]
  %7372 = phi float [ %7244, %7204 ], [ 1.000000e+00, %7176 ]
  %7373 = phi float [ %7245, %7204 ], [ 1.000000e+00, %7176 ]
  %7374 = phi float [ %7367, %7204 ], [ 0.000000e+00, %7176 ]
  %7375 = phi float [ %7368, %7204 ], [ 0.000000e+00, %7176 ]
  %7376 = phi float [ %7369, %7204 ], [ 0.000000e+00, %7176 ]
  %7377 = call float @dx.op.dot3.f32(i32 55, float %7371, float %7372, float %7373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7378 = call float @dx.op.dot3.f32(i32 55, float %7374, float %7375, float %7376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7379 = select i1 %206, float %7377, float %7371
  %7380 = select i1 %206, float %7377, float %7372
  %7381 = select i1 %206, float 1.000000e+00, float %7373
  %7382 = select i1 %206, float %7378, float %7374
  %7383 = select i1 %206, float 0.000000e+00, float %7375
  %7384 = select i1 %206, float 0.000000e+00, float %7376
  %7385 = fmul fast float %7379, %7166
  %7386 = fmul fast float %7380, %7167
  %7387 = fmul fast float %7381, %7168
  %7388 = fadd fast float %7385, %7382
  %7389 = fadd fast float %7386, %7383
  %7390 = fadd fast float %7384, %7387
  %7391 = fmul fast float %7379, %7148
  %7392 = fmul fast float %7380, %7149
  %7393 = fmul fast float %7381, %7150
  %7394 = fmul fast float %115, %5941
  %7395 = fmul fast float %117, %5942
  %7396 = fsub fast float 1.000000e+00, %7394
  %7397 = fsub fast float 1.000000e+00, %7395
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7402 = fmul fast float %7396, %7399
  %7403 = fmul fast float %7396, %7400
  %7404 = fmul fast float %7396, %7401
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.CBufRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.CBufRet.f32 %7405, 2
  %7409 = fmul fast float %7397, %7406
  %7410 = fmul fast float %7397, %7407
  %7411 = fmul fast float %7397, %7408
  %7412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.CBufRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.CBufRet.f32 %7412, 2
  %7416 = fadd fast float %7409, %7413
  %7417 = fadd fast float %7416, %7402
  %7418 = fadd fast float %7410, %7414
  %7419 = fadd fast float %7418, %7403
  %7420 = fadd fast float %7411, %7415
  %7421 = fadd fast float %7420, %7404
  %7422 = fmul fast float %7417, %167
  %7423 = fmul fast float %7419, %167
  %7424 = fmul fast float %7421, %167
  br label %7425

; <label>:7425                                    ; preds = %7370, %7147
  %7426 = phi float [ %7422, %7370 ], [ %145, %7147 ]
  %7427 = phi float [ %7423, %7370 ], [ %146, %7147 ]
  %7428 = phi float [ %7424, %7370 ], [ %147, %7147 ]
  %7429 = phi float [ %167, %7370 ], [ %81, %7147 ]
  %7430 = phi float [ %7388, %7370 ], [ %7166, %7147 ]
  %7431 = phi float [ %7389, %7370 ], [ %7167, %7147 ]
  %7432 = phi float [ %7390, %7370 ], [ %7168, %7147 ]
  %7433 = phi float [ %7391, %7370 ], [ %7148, %7147 ]
  %7434 = phi float [ %7392, %7370 ], [ %7149, %7147 ]
  %7435 = phi float [ %7393, %7370 ], [ %7150, %7147 ]
  %7436 = phi float [ %7371, %7370 ], [ 1.000000e+00, %7147 ]
  br i1 %7175, label %8578, label %7437

; <label>:7437                                    ; preds = %7425
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = extractvalue %dx.types.CBufRet.f32 %7438, 3
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7447 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7450 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7451 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7452 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.CBufRet.f32 %7453, 2
  %7457 = extractvalue %dx.types.CBufRet.f32 %7453, 3
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 3
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7464 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7465 = fcmp fast olt float %7464, -5.000000e-01
  %7466 = call float @dx.op.dot3.f32(i32 55, float %7426, float %7427, float %7428, float %7426, float %7427, float %7428)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = call float @dx.op.unary.f32(i32 25, float %7466)  ; Rsqrt(value)
  %7468 = fmul fast float %7467, %7466
  %7469 = fmul fast float %7467, %7426
  %7470 = fmul fast float %7467, %7427
  %7471 = fmul fast float %7467, %7428
  %7472 = fadd fast float %7468, %7442
  %7473 = call float @dx.op.dot3.f32(i32 55, float %7469, float %7470, float %7471, float %7439, float %7440, float %7441)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.i32 %7474, 1
  %7476 = and i32 %7475, 1
  %7477 = icmp ne i32 %7476, 0
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7480 = fcmp fast ogt float %7479, 0.000000e+00
  %7481 = and i1 %7477, %7480
  br i1 %7481, label %7482, label %7888, !dx.controlflow.hints !109

; <label>:7482                                    ; preds = %7437
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 3
  %7485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7486 = extractvalue %dx.types.CBufRet.f32 %7485, 2
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7489 = fsub fast float %7486, %7488
  %7490 = and i32 %7475, 2
  %7491 = extractvalue %dx.types.CBufRet.i32 %7474, 0
  %7492 = call i32 @dx.op.binary.i32(i32 40, i32 %7491, i32 3)  ; UMin(a,b)
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7497 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7498 = fsub fast float %7494, %7496
  %7499 = fsub fast float %7495, %7497
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7502 = fcmp fast ogt float %7501, 0.000000e+00
  %7503 = fsub fast float -0.000000e+00, %7498
  %7504 = fsub fast float -0.000000e+00, %7499
  %7505 = call float @dx.op.dot2.f32(i32 54, float %7469, float %7470, float %7469, float %7470)  ; Dot2(ax,ay,bx,by)
  %7506 = call float @dx.op.dot2.f32(i32 54, float %7469, float %7470, float %7503, float %7504)  ; Dot2(ax,ay,bx,by)
  %7507 = fmul fast float %7506, 2.000000e+00
  %7508 = call float @dx.op.dot2.f32(i32 54, float %7503, float %7504, float %7503, float %7504)  ; Dot2(ax,ay,bx,by)
  %7509 = fmul fast float %7501, %7501
  %7510 = fsub fast float %7508, %7509
  %7511 = fmul fast float %7507, %7507
  %7512 = fmul fast float %7505, 4.000000e+00
  %7513 = fmul fast float %7512, %7510
  %7514 = fsub fast float %7511, %7513
  %7515 = fcmp fast ogt float %7514, 0.000000e+00
  br i1 %7515, label %7516, label %7531

; <label>:7516                                    ; preds = %7482
  %7517 = fcmp fast ogt float %7507, 0.000000e+00
  %7518 = call float @dx.op.unary.f32(i32 24, float %7514)  ; Sqrt(value)
  %7519 = fsub fast float -0.000000e+00, %7518
  %7520 = select i1 %7517, float %7518, float %7519
  %7521 = fadd fast float %7520, %7507
  %7522 = fmul float %7521, -5.000000e-01
  %7523 = fdiv fast float %7522, %7505
  %7524 = call float @dx.op.binary.f32(i32 35, float %7523, float 0.000000e+00)  ; FMax(a,b)
  %7525 = call float @dx.op.binary.f32(i32 36, float %7468, float %7524)  ; FMin(a,b)
  %7526 = fdiv fast float %7510, %7522
  %7527 = call float @dx.op.binary.f32(i32 35, float %7526, float 0.000000e+00)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7468, float %7527)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7525, float %7528)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7525, float %7528)  ; FMax(a,b)
  br label %7531

; <label>:7531                                    ; preds = %7516, %7482
  %7532 = phi float [ %7530, %7516 ], [ -1.000000e+00, %7482 ]
  %7533 = phi float [ %7529, %7516 ], [ -1.000000e+00, %7482 ]
  %7534 = phi i1 [ true, %7516 ], [ false, %7482 ]
  %7535 = and i1 %7502, %7534
  br i1 %7535, label %7536, label %7538

; <label>:7536                                    ; preds = %7531
  %7537 = fcmp fast oeq float %7533, %7532
  br i1 %7537, label %7841, label %7539

; <label>:7538                                    ; preds = %7531
  br i1 %7502, label %7841, label %7539

; <label>:7539                                    ; preds = %7538, %7536
  %7540 = phi float [ %7468, %7538 ], [ %7532, %7536 ]
  %7541 = phi float [ 0.000000e+00, %7538 ], [ %7533, %7536 ]
  %7542 = icmp ne i32 %7490, 0
  %7543 = fmul fast float %7540, %7471
  %7544 = fadd fast float %7543, %7484
  %7545 = fmul fast float %7544, %7540
  %7546 = select i1 %7542, float 0.000000e+00, float %7545
  %7547 = fcmp fast oeq float %7471, 0.000000e+00
  %7548 = fdiv fast float %7489, %7471
  %7549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7548)  ; FMax(a,b)
  %7550 = select i1 %7547, float %7540, float %7549
  %7551 = call float @dx.op.binary.f32(i32 36, float %7540, float %7550)  ; FMin(a,b)
  %7552 = fcmp fast ogt float %7471, 0.000000e+00
  %7553 = fcmp fast olt float %7489, 0.000000e+00
  br i1 %7552, label %7554, label %7611

; <label>:7554                                    ; preds = %7539
  %7555 = icmp eq i32 %7490, 0
  br i1 %7553, label %7556, label %7600

; <label>:7556                                    ; preds = %7554
  %7557 = select i1 %7555, float %7540, float 0.000000e+00
  %7558 = fsub fast float -0.000000e+00, %7557
  %7559 = call float @dx.op.unary.f32(i32 6, float %7558)  ; FAbs(value)
  %7560 = fmul fast float %7557, %7471
  %7561 = fadd fast float %7560, %7484
  %7562 = fmul fast float %7559, %7561
  %7563 = fsub fast float %7546, %7562
  %7564 = fsub fast float %7540, %7559
  %7565 = select i1 %7555, float %7564, float 0.000000e+00
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7574 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 3
  %7577 = call float @dx.op.binary.f32(i32 36, float %7563, float %7576)  ; FMin(a,b)
  %7578 = fmul fast float %7574, %7565
  %7579 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7580 = fsub fast float %7571, %7567
  %7581 = fsub fast float %7572, %7568
  %7582 = fsub fast float %7573, %7569
  %7583 = fmul fast float %7579, %7580
  %7584 = fmul fast float %7579, %7581
  %7585 = fmul fast float %7579, %7582
  %7586 = fadd fast float %7583, %7567
  %7587 = fadd fast float %7584, %7568
  %7588 = fadd fast float %7585, %7569
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.CBufRet.f32 %7589, 1
  %7592 = fadd fast float %7591, %7590
  %7593 = call float @dx.op.unary.f32(i32 7, float %7592)  ; Saturate(value)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7589, 2
  %7595 = extractvalue %dx.types.CBufRet.f32 %7589, 3
  %7596 = fadd fast float %7595, %7594
  %7597 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7598 = fmul fast float %7593, %7577
  %7599 = fmul fast float %7598, %7597
  br label %7841

; <label>:7600                                    ; preds = %7554
  br i1 %7555, label %7601, label %7622

; <label>:7601                                    ; preds = %7600
  %7602 = call float @dx.op.binary.f32(i32 36, float %7551, float %7541)  ; FMin(a,b)
  %7603 = fsub fast float %7551, %7602
  %7604 = fsub fast float %7603, %7540
  %7605 = call float @dx.op.unary.f32(i32 6, float %7604)  ; FAbs(value)
  %7606 = fadd fast float %7603, %7540
  %7607 = fmul fast float %7606, %7471
  %7608 = fadd fast float %7607, %7484
  %7609 = fmul fast float %7608, %7605
  %7610 = fsub fast float %7546, %7609
  br label %7622

; <label>:7611                                    ; preds = %7539
  br i1 %7553, label %7612, label %7622

; <label>:7612                                    ; preds = %7611
  %7613 = call float @dx.op.binary.f32(i32 35, float %7541, float %7551)  ; FMax(a,b)
  %7614 = icmp eq i32 %7490, 0
  %7615 = select i1 %7614, float %7551, float 0.000000e+00
  %7616 = fsub fast float -0.000000e+00, %7615
  %7617 = call float @dx.op.unary.f32(i32 6, float %7616)  ; FAbs(value)
  %7618 = fmul fast float %7615, %7471
  %7619 = fadd fast float %7618, %7484
  %7620 = fmul fast float %7617, %7619
  %7621 = fsub fast float %7546, %7620
  br label %7622

; <label>:7622                                    ; preds = %7612, %7611, %7601, %7600
  %7623 = phi float [ %7541, %7600 ], [ %7541, %7601 ], [ %7613, %7612 ], [ %7541, %7611 ]
  %7624 = phi float [ 0.000000e+00, %7600 ], [ %7605, %7601 ], [ %7617, %7612 ], [ 0.000000e+00, %7611 ]
  %7625 = phi float [ %7546, %7600 ], [ %7610, %7601 ], [ %7621, %7612 ], [ %7546, %7611 ]
  %7626 = phi float [ %7551, %7600 ], [ %7551, %7601 ], [ %7540, %7612 ], [ %7540, %7611 ]
  %7627 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %7627, align 4, !tbaa !110, !noalias !112
  %7628 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %7628, align 4, !tbaa !110, !noalias !112
  %7629 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %7629, align 4, !tbaa !110, !noalias !112
  %7630 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %7630, align 4, !tbaa !110, !noalias !112
  %7631 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %7631, align 4, !tbaa !110, !noalias !112
  %7632 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %7632, align 4, !tbaa !110, !noalias !112
  %7633 = icmp sgt i32 %7492, 0
  br i1 %7633, label %7634, label %7695

; <label>:7634                                    ; preds = %7622
  br label %7635

; <label>:7635                                    ; preds = %7684, %7634
  %7636 = phi i32 [ %7685, %7684 ], [ 0, %7634 ]
  %7637 = phi i32 [ %7686, %7684 ], [ 0, %7634 ]
  %7638 = add nuw i32 %7637, 171
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %7638)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.CBufRet.f32 %7639, 1
  %7642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7643 = extractvalue %dx.types.CBufRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.CBufRet.f32 %7642, 1
  %7645 = fsub fast float %7640, %7643
  %7646 = fsub fast float %7641, %7644
  %7647 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7648 = fsub fast float -0.000000e+00, %7645
  %7649 = fsub fast float -0.000000e+00, %7646
  %7650 = call float @dx.op.dot2.f32(i32 54, float %7469, float %7470, float %7648, float %7649)  ; Dot2(ax,ay,bx,by)
  %7651 = fmul fast float %7650, 2.000000e+00
  %7652 = call float @dx.op.dot2.f32(i32 54, float %7648, float %7649, float %7648, float %7649)  ; Dot2(ax,ay,bx,by)
  %7653 = fmul fast float %7647, %7647
  %7654 = fsub fast float %7652, %7653
  %7655 = fmul fast float %7651, %7651
  %7656 = fmul fast float %7512, %7654
  %7657 = fsub fast float %7655, %7656
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  br i1 %7658, label %7659, label %7674

; <label>:7659                                    ; preds = %7635
  %7660 = fcmp fast ogt float %7651, 0.000000e+00
  %7661 = call float @dx.op.unary.f32(i32 24, float %7657)  ; Sqrt(value)
  %7662 = fsub fast float -0.000000e+00, %7661
  %7663 = select i1 %7660, float %7661, float %7662
  %7664 = fadd fast float %7663, %7651
  %7665 = fmul float %7664, -5.000000e-01
  %7666 = fdiv fast float %7665, %7505
  %7667 = call float @dx.op.binary.f32(i32 35, float %7666, float 0.000000e+00)  ; FMax(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7540, float %7667)  ; FMin(a,b)
  %7669 = fdiv fast float %7654, %7665
  %7670 = call float @dx.op.binary.f32(i32 35, float %7669, float 0.000000e+00)  ; FMax(a,b)
  %7671 = call float @dx.op.binary.f32(i32 36, float %7540, float %7670)  ; FMin(a,b)
  %7672 = call float @dx.op.binary.f32(i32 36, float %7668, float %7671)  ; FMin(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7668, float %7671)  ; FMax(a,b)
  br label %7674

; <label>:7674                                    ; preds = %7659, %7635
  %7675 = phi float [ %7673, %7659 ], [ -1.000000e+00, %7635 ]
  %7676 = phi float [ %7672, %7659 ], [ -1.000000e+00, %7635 ]
  %7677 = phi i1 [ true, %7659 ], [ false, %7635 ]
  br i1 %7677, label %7678, label %7684

; <label>:7678                                    ; preds = %7674
  %7679 = call float @dx.op.binary.f32(i32 35, float %7623, float %7676)  ; FMax(a,b)
  %7680 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7637
  store float %7679, float* %7680, align 4, !tbaa !110, !noalias !112
  %7681 = call float @dx.op.binary.f32(i32 35, float %7623, float %7675)  ; FMax(a,b)
  %7682 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7637
  store float %7681, float* %7682, align 4, !tbaa !110, !noalias !112
  %7683 = add nsw i32 %7636, 1
  br label %7684

; <label>:7684                                    ; preds = %7678, %7674
  %7685 = phi i32 [ %7683, %7678 ], [ %7636, %7674 ]
  %7686 = add nuw nsw i32 %7637, 1
  %7687 = icmp eq i32 %7686, %7492
  br i1 %7687, label %7688, label %7635

; <label>:7688                                    ; preds = %7684
  %7689 = load float, float* %7629, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %7690 = load float, float* %7628, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  %7691 = load float, float* %7627, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  %7692 = load float, float* %7632, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %7693 = load float, float* %7631, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  %7694 = load float, float* %7630, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  br label %7695

; <label>:7695                                    ; preds = %7688, %7622
  %7696 = phi float [ -1.000000e+00, %7622 ], [ %7694, %7688 ]
  %7697 = phi float [ -1.000000e+00, %7622 ], [ %7693, %7688 ]
  %7698 = phi float [ -1.000000e+00, %7622 ], [ %7692, %7688 ]
  %7699 = phi float [ -1.000000e+00, %7622 ], [ %7691, %7688 ]
  %7700 = phi float [ -1.000000e+00, %7622 ], [ %7690, %7688 ]
  %7701 = phi float [ -1.000000e+00, %7622 ], [ %7689, %7688 ]
  %7702 = phi i32 [ 0, %7622 ], [ %7685, %7688 ]
  %7703 = call float @dx.op.binary.f32(i32 36, float %7700, float %7701)  ; FMin(a,b)
  %7704 = call float @dx.op.binary.f32(i32 36, float %7699, float %7703)  ; FMin(a,b)
  %7705 = call float @dx.op.binary.f32(i32 35, float %7699, float %7700)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7705, float %7701)  ; FMin(a,b)
  %7707 = call float @dx.op.binary.f32(i32 36, float %7699, float %7700)  ; FMin(a,b)
  %7708 = call float @dx.op.binary.f32(i32 35, float %7707, float %7706)  ; FMax(a,b)
  %7709 = call float @dx.op.binary.f32(i32 35, float %7700, float %7701)  ; FMax(a,b)
  %7710 = call float @dx.op.binary.f32(i32 35, float %7699, float %7709)  ; FMax(a,b)
  store float %7704, float* %7627, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  store float %7708, float* %7628, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  store float %7710, float* %7629, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %7711 = call float @dx.op.binary.f32(i32 36, float %7697, float %7698)  ; FMin(a,b)
  %7712 = call float @dx.op.binary.f32(i32 36, float %7696, float %7711)  ; FMin(a,b)
  %7713 = call float @dx.op.binary.f32(i32 35, float %7696, float %7697)  ; FMax(a,b)
  %7714 = call float @dx.op.binary.f32(i32 36, float %7713, float %7698)  ; FMin(a,b)
  %7715 = call float @dx.op.binary.f32(i32 36, float %7696, float %7697)  ; FMin(a,b)
  %7716 = call float @dx.op.binary.f32(i32 35, float %7715, float %7714)  ; FMax(a,b)
  %7717 = call float @dx.op.binary.f32(i32 35, float %7697, float %7698)  ; FMax(a,b)
  %7718 = call float @dx.op.binary.f32(i32 35, float %7696, float %7717)  ; FMax(a,b)
  store float %7712, float* %7630, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  store float %7716, float* %7631, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  store float %7718, float* %7632, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %7719 = sub nsw i32 3, %7702
  %7720 = icmp sgt i32 %7719, 2
  br i1 %7720, label %7721, label %7759

; <label>:7721                                    ; preds = %7695
  %7722 = icmp eq i32 %7490, 0
  %7723 = fsub fast float %7540, %7624
  %7724 = select i1 %7722, float %7723, float %7624
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.CBufRet.f32 %7729, 1
  %7732 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7733 = extractvalue %dx.types.CBufRet.f32 %7729, 3
  %7734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7734, 3
  %7736 = call float @dx.op.binary.f32(i32 36, float %7625, float %7735)  ; FMin(a,b)
  %7737 = fmul fast float %7733, %7724
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7739 = fsub fast float %7730, %7726
  %7740 = fsub fast float %7731, %7727
  %7741 = fsub fast float %7732, %7728
  %7742 = fmul fast float %7738, %7739
  %7743 = fmul fast float %7738, %7740
  %7744 = fmul fast float %7738, %7741
  %7745 = fadd fast float %7742, %7726
  %7746 = fadd fast float %7743, %7727
  %7747 = fadd fast float %7744, %7728
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7751 = fadd fast float %7750, %7749
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7754 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7755 = fadd fast float %7754, %7753
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7757 = fmul fast float %7752, %7736
  %7758 = fmul fast float %7757, %7756
  br label %7841

; <label>:7759                                    ; preds = %7695
  %7760 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7719
  %7761 = load float, float* %7760, align 4, !tbaa !110, !noalias !112
  %7762 = fcmp fast olt float %7761, %7626
  %7763 = icmp sgt i32 %7702, 0
  %7764 = and i1 %7763, %7762
  br i1 %7764, label %7765, label %7802

; <label>:7765                                    ; preds = %7759
  br label %7766

; <label>:7766                                    ; preds = %7795, %7765
  %7767 = phi float [ %7796, %7795 ], [ %7624, %7765 ]
  %7768 = phi float [ %7797, %7795 ], [ %7625, %7765 ]
  %7769 = phi float [ %7777, %7795 ], [ %7761, %7765 ]
  %7770 = phi i32 [ %7774, %7795 ], [ %7719, %7765 ]
  %7771 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7770
  %7772 = load float, float* %7771, align 4, !tbaa !110, !noalias !112
  %7773 = icmp slt i32 %7770, 2
  %7774 = add nsw i32 %7770, 1
  %7775 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7774
  %7776 = load float, float* %7775, align 4, !tbaa !110, !noalias !112
  %7777 = select i1 %7773, float %7776, float %7540
  %7778 = call float @dx.op.binary.f32(i32 36, float %7777, float %7772)  ; FMin(a,b)
  %7779 = call float @dx.op.binary.f32(i32 36, float %7626, float %7778)  ; FMin(a,b)
  %7780 = icmp eq i32 %7490, 0
  %7781 = fadd fast float %7779, %7769
  %7782 = fmul fast float %7781, %7471
  %7783 = fadd fast float %7782, %7484
  br i1 %7780, label %7789, label %7784

; <label>:7784                                    ; preds = %7766
  %7785 = fsub fast float %7779, %7769
  %7786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7785)  ; FMax(a,b)
  %7787 = fmul fast float %7786, %7783
  %7788 = fadd fast float %7787, %7768
  br label %7795

; <label>:7789                                    ; preds = %7766
  %7790 = fsub fast float %7769, %7779
  %7791 = call float @dx.op.unary.f32(i32 6, float %7790)  ; FAbs(value)
  %7792 = fadd fast float %7791, %7767
  %7793 = fmul fast float %7791, %7783
  %7794 = fsub fast float %7768, %7793
  br label %7795

; <label>:7795                                    ; preds = %7789, %7784
  %7796 = phi float [ %7786, %7784 ], [ %7792, %7789 ]
  %7797 = phi float [ %7788, %7784 ], [ %7794, %7789 ]
  %7798 = fcmp fast olt float %7777, %7626
  %7799 = icmp slt i32 %7774, 3
  %7800 = and i1 %7799, %7798
  br i1 %7800, label %7766, label %7801

; <label>:7801                                    ; preds = %7795
  br label %7802

; <label>:7802                                    ; preds = %7801, %7759
  %7803 = phi float [ %7624, %7759 ], [ %7796, %7801 ]
  %7804 = phi float [ %7625, %7759 ], [ %7797, %7801 ]
  %7805 = fsub fast float %7540, %7803
  %7806 = select i1 %7542, float %7803, float %7805
  %7807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7808 = extractvalue %dx.types.CBufRet.f32 %7807, 0
  %7809 = extractvalue %dx.types.CBufRet.f32 %7807, 1
  %7810 = extractvalue %dx.types.CBufRet.f32 %7807, 2
  %7811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7812 = extractvalue %dx.types.CBufRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.CBufRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.CBufRet.f32 %7811, 2
  %7815 = extractvalue %dx.types.CBufRet.f32 %7811, 3
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7818 = call float @dx.op.binary.f32(i32 36, float %7804, float %7817)  ; FMin(a,b)
  %7819 = fmul fast float %7815, %7806
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = fsub fast float %7812, %7808
  %7822 = fsub fast float %7813, %7809
  %7823 = fsub fast float %7814, %7810
  %7824 = fmul fast float %7820, %7821
  %7825 = fmul fast float %7820, %7822
  %7826 = fmul fast float %7820, %7823
  %7827 = fadd fast float %7824, %7808
  %7828 = fadd fast float %7825, %7809
  %7829 = fadd fast float %7826, %7810
  %7830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.CBufRet.f32 %7830, 1
  %7833 = fadd fast float %7832, %7831
  %7834 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7830, 2
  %7836 = extractvalue %dx.types.CBufRet.f32 %7830, 3
  %7837 = fadd fast float %7836, %7835
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  %7839 = fmul fast float %7834, %7818
  %7840 = fmul fast float %7839, %7838
  br label %7841

; <label>:7841                                    ; preds = %7802, %7721, %7556, %7538, %7536
  %7842 = phi float [ %7565, %7556 ], [ %7724, %7721 ], [ %7806, %7802 ], [ 0.000000e+00, %7536 ], [ 0.000000e+00, %7538 ]
  %7843 = phi float [ %7599, %7556 ], [ %7758, %7721 ], [ %7840, %7802 ], [ 0.000000e+00, %7536 ], [ 0.000000e+00, %7538 ]
  %7844 = phi float [ %7586, %7556 ], [ %7745, %7721 ], [ %7827, %7802 ], [ 0.000000e+00, %7536 ], [ 0.000000e+00, %7538 ]
  %7845 = phi float [ %7587, %7556 ], [ %7746, %7721 ], [ %7828, %7802 ], [ 0.000000e+00, %7536 ], [ 0.000000e+00, %7538 ]
  %7846 = phi float [ %7588, %7556 ], [ %7747, %7721 ], [ %7829, %7802 ], [ 0.000000e+00, %7536 ], [ 0.000000e+00, %7538 ]
  %7847 = fmul fast float %7479, %7843
  %7848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7849 = extractvalue %dx.types.CBufRet.f32 %7848, 2
  %7850 = fsub fast float %7486, %7849
  %7851 = fcmp fast olt float %7847, -2.000000e+01
  %7852 = call float @dx.op.unary.f32(i32 21, float %7847)  ; Exp(value)
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7855 = extractvalue %dx.types.CBufRet.f32 %7853, 3
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7858 = fmul fast float %7855, %7850
  %7859 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7860 = fsub fast float 1.000000e+00, %7859
  %7861 = fmul fast float %7471, 5.000000e-01
  %7862 = fadd fast float %7861, 5.000000e-01
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7860)  ; FMax(a,b)
  %7866 = fdiv fast float %7864, %7865
  %7867 = fsub fast float %7850, %7428
  %7868 = call float @dx.op.unary.f32(i32 6, float %7867)  ; FAbs(value)
  %7869 = fmul fast float %7868, %7854
  %7870 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7871 = fsub fast float 1.000000e+00, %7869
  %7872 = fmul fast float %7871, %7870
  %7873 = fadd fast float %7872, %7869
  %7874 = fmul fast float %7857, %7850
  %7875 = call float @dx.op.unary.f32(i32 7, float %7874)  ; Saturate(value)
  %7876 = fsub fast float 1.000000e+00, %7873
  %7877 = fmul fast float %7876, %7875
  %7878 = fadd fast float %7877, %7873
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = fadd fast float %7852, -1.000000e+00
  %7881 = select i1 %7851, float -1.000000e+00, float %7880
  %7882 = fmul fast float %7879, %7881
  %7883 = fadd fast float %7882, 1.000000e+00
  %7884 = fsub fast float -0.000000e+00, %7882
  %7885 = fmul fast float %7844, %7884
  %7886 = fmul fast float %7845, %7884
  %7887 = fmul fast float %7846, %7884
  br label %7888

; <label>:7888                                    ; preds = %7841, %7437
  %7889 = phi float [ %7842, %7841 ], [ 0.000000e+00, %7437 ]
  %7890 = phi float [ %7883, %7841 ], [ 1.000000e+00, %7437 ]
  %7891 = phi float [ %7885, %7841 ], [ 0.000000e+00, %7437 ]
  %7892 = phi float [ %7886, %7841 ], [ 0.000000e+00, %7437 ]
  %7893 = phi float [ %7887, %7841 ], [ 0.000000e+00, %7437 ]
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 1
  %7896 = fsub fast float 1.000000e+00, %7890
  %7897 = fmul fast float %7896, %7472
  %7898 = fmul fast float %7897, %7895
  %7899 = fsub fast float %7472, %7898
  br i1 %7465, label %7900, label %7929, !dx.controlflow.hints !148

; <label>:7900                                    ; preds = %7888
  %7901 = fmul fast float %7473, %7462
  %7902 = fadd fast float %7901, %7463
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = fmul fast float %7444, %7899
  %7905 = fsub fast float -0.000000e+00, %7904
  %7906 = fmul fast float %7445, %7899
  %7907 = fsub fast float -0.000000e+00, %7906
  %7908 = call float @dx.op.unary.f32(i32 21, float %7905)  ; Exp(value)
  %7909 = call float @dx.op.unary.f32(i32 21, float %7907)  ; Exp(value)
  %7910 = call float @dx.op.binary.f32(i32 35, float %7452, float %7908)  ; FMax(a,b)
  %7911 = call float @dx.op.binary.f32(i32 35, float %7452, float %7909)  ; FMax(a,b)
  %7912 = fsub fast float %7911, %7910
  %7913 = fmul fast float %7912, %7903
  %7914 = fadd fast float %7913, %7910
  %7915 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7916 = fsub fast float %7449, %7454
  %7917 = fsub fast float %7450, %7455
  %7918 = fsub fast float %7451, %7456
  %7919 = fmul fast float %7903, %7916
  %7920 = fmul fast float %7903, %7917
  %7921 = fmul fast float %7903, %7918
  %7922 = fadd fast float %7919, %7454
  %7923 = fadd fast float %7920, %7455
  %7924 = fadd fast float %7921, %7456
  %7925 = fsub fast float 1.000000e+00, %7915
  %7926 = fmul fast float %7925, %7922
  %7927 = fmul fast float %7925, %7923
  %7928 = fmul fast float %7925, %7924
  br label %7988

; <label>:7929                                    ; preds = %7888
  %7930 = fmul fast float %7899, %7461
  %7931 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7932 = fsub fast float 2.000000e+00, %7931
  %7933 = fmul fast float %7931, 9.921875e-01
  %7934 = fmul fast float %7933, %7932
  %7935 = fadd fast float %7934, 3.906250e-03
  %7936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %7935, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = fsub fast float %7931, %7937
  %7939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7938)  ; FMax(a,b)
  %7940 = fmul fast float %7447, %7428
  %7941 = call float @dx.op.unary.f32(i32 6, float %7940)  ; FAbs(value)
  %7942 = fcmp fast ogt float %7941, 0x3EB0C6F7A0000000
  br i1 %7942, label %7943, label %7949, !dx.controlflow.hints !149

; <label>:7943                                    ; preds = %7929
  %7944 = fmul fast float %7940, 0xBFF7154760000000
  %7945 = call float @dx.op.unary.f32(i32 21, float %7944)  ; Exp(value)
  %7946 = fsub fast float 1.000000e+00, %7945
  %7947 = fdiv fast float %7946, %7940
  %7948 = fmul fast float %7947, %7457
  br label %7949

; <label>:7949                                    ; preds = %7943, %7929
  %7950 = phi float [ %7948, %7943 ], [ %7457, %7929 ]
  %7951 = fadd fast float %7950, %7459
  %7952 = fmul fast float %7951, %7939
  %7953 = fmul fast float %7444, %7952
  %7954 = fsub fast float -0.000000e+00, %7953
  %7955 = fmul fast float %7445, %7952
  %7956 = fsub fast float -0.000000e+00, %7955
  %7957 = fmul fast float %7446, %7952
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7960 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7961 = call float @dx.op.unary.f32(i32 21, float %7958)  ; Exp(value)
  %7962 = fmul fast float %7473, %7473
  %7963 = fadd fast float %7962, 1.000000e+00
  %7964 = fmul fast float %7963, 0x3FAE8EC8A0000000
  %7965 = fmul fast float %7964, %7454
  %7966 = fmul fast float %7964, %7455
  %7967 = fmul fast float %7964, %7456
  %7968 = fmul fast float %7473, %7452
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %7452, %7452
  %7971 = fsub fast float 1.000000e+00, %7970
  %7972 = fmul fast float %7971, 0x3FB45F3060000000
  %7973 = fmul fast float %7969, %7969
  %7974 = fdiv fast float 1.000000e+00, %7973
  %7975 = fmul fast float %7972, %7974
  %7976 = fmul fast float %7975, %7449
  %7977 = fmul fast float %7975, %7450
  %7978 = fmul fast float %7975, %7451
  %7979 = fadd fast float %7976, %7965
  %7980 = fadd fast float %7977, %7966
  %7981 = fadd fast float %7978, %7967
  %7982 = fsub fast float 1.000000e+00, %7959
  %7983 = fsub fast float 1.000000e+00, %7960
  %7984 = fsub fast float 1.000000e+00, %7961
  %7985 = fmul fast float %7979, %7982
  %7986 = fmul fast float %7980, %7983
  %7987 = fmul fast float %7981, %7984
  br label %7988

; <label>:7988                                    ; preds = %7949, %7900
  %7989 = phi float [ %7926, %7900 ], [ %7985, %7949 ]
  %7990 = phi float [ %7927, %7900 ], [ %7986, %7949 ]
  %7991 = phi float [ %7928, %7900 ], [ %7987, %7949 ]
  %7992 = phi float [ %7915, %7900 ], [ %7959, %7949 ]
  %7993 = phi float [ %7915, %7900 ], [ %7960, %7949 ]
  %7994 = phi float [ %7915, %7900 ], [ %7961, %7949 ]
  br i1 %7481, label %7995, label %8193, !dx.controlflow.hints !150

; <label>:7995                                    ; preds = %7988
  %7996 = extractvalue %dx.types.CBufRet.f32 %7894, 0
  %7997 = fmul fast float %7996, %7896
  %7998 = fsub fast float %7891, %7989
  %7999 = fsub fast float %7892, %7990
  %8000 = fsub fast float %7893, %7991
  %8001 = fmul fast float %7997, %7998
  %8002 = fmul fast float %7997, %7999
  %8003 = fmul fast float %7997, %8000
  %8004 = fadd fast float %8001, %7989
  %8005 = fadd fast float %8002, %7990
  %8006 = fadd fast float %8003, %7991
  %8007 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7992)  ; FMax(a,b)
  %8008 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7993)  ; FMax(a,b)
  %8009 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7994)  ; FMax(a,b)
  %8010 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7890)  ; FMax(a,b)
  %8011 = call float @dx.op.binary.f32(i32 35, float %7889, float %7899)  ; FMax(a,b)
  %8012 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8011)  ; FMax(a,b)
  %8013 = fdiv fast float %7889, %8012
  %8014 = call float @dx.op.unary.f32(i32 7, float %8013)  ; Saturate(value)
  %8015 = fdiv fast float %7899, %8012
  %8016 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8017 = fcmp fast une float %8010, 1.000000e+00
  br i1 %8017, label %8018, label %8031, !dx.controlflow.hints !151

; <label>:8018                                    ; preds = %7995
  %8019 = call float @dx.op.unary.f32(i32 23, float %8010)  ; Log(value)
  %8020 = fmul fast float %8019, 0x3FE62E4300000000
  %8021 = fmul fast float %7891, %8020
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = fmul fast float %7892, %8020
  %8024 = fsub fast float -0.000000e+00, %8023
  %8025 = fmul fast float %7893, %8020
  %8026 = fsub fast float -0.000000e+00, %8025
  %8027 = fsub fast float 1.000000e+00, %8010
  %8028 = fdiv fast float %8022, %8027
  %8029 = fdiv fast float %8024, %8027
  %8030 = fdiv fast float %8026, %8027
  br label %8031

; <label>:8031                                    ; preds = %8018, %7995
  %8032 = phi float [ %8028, %8018 ], [ %7891, %7995 ]
  %8033 = phi float [ %8029, %8018 ], [ %7892, %7995 ]
  %8034 = phi float [ %8030, %8018 ], [ %7893, %7995 ]
  %8035 = phi float [ %8020, %8018 ], [ 0.000000e+00, %7995 ]
  %8036 = fcmp fast une float %8007, 1.000000e+00
  br i1 %8036, label %8037, label %8044, !dx.controlflow.hints !152

; <label>:8037                                    ; preds = %8031
  %8038 = call float @dx.op.unary.f32(i32 23, float %8007)  ; Log(value)
  %8039 = fmul fast float %8038, 0x3FE62E4300000000
  %8040 = fmul fast float %8004, %8039
  %8041 = fsub fast float -0.000000e+00, %8040
  %8042 = fsub fast float 1.000000e+00, %8007
  %8043 = fdiv fast float %8041, %8042
  br label %8044

; <label>:8044                                    ; preds = %8037, %8031
  %8045 = phi float [ %8043, %8037 ], [ %8004, %8031 ]
  %8046 = phi float [ %8039, %8037 ], [ 0.000000e+00, %8031 ]
  %8047 = fcmp fast une float %8008, 1.000000e+00
  br i1 %8047, label %8048, label %8055, !dx.controlflow.hints !152

; <label>:8048                                    ; preds = %8044
  %8049 = call float @dx.op.unary.f32(i32 23, float %8008)  ; Log(value)
  %8050 = fmul fast float %8049, 0x3FE62E4300000000
  %8051 = fmul fast float %8005, %8050
  %8052 = fsub fast float -0.000000e+00, %8051
  %8053 = fsub fast float 1.000000e+00, %8008
  %8054 = fdiv fast float %8052, %8053
  br label %8055

; <label>:8055                                    ; preds = %8048, %8044
  %8056 = phi float [ %8054, %8048 ], [ %8005, %8044 ]
  %8057 = phi float [ %8050, %8048 ], [ 0.000000e+00, %8044 ]
  %8058 = fcmp fast une float %8009, 1.000000e+00
  br i1 %8058, label %8059, label %8066, !dx.controlflow.hints !152

; <label>:8059                                    ; preds = %8055
  %8060 = call float @dx.op.unary.f32(i32 23, float %8009)  ; Log(value)
  %8061 = fmul fast float %8060, 0x3FE62E4300000000
  %8062 = fmul fast float %8006, %8061
  %8063 = fsub fast float -0.000000e+00, %8062
  %8064 = fsub fast float 1.000000e+00, %8009
  %8065 = fdiv fast float %8063, %8064
  br label %8066

; <label>:8066                                    ; preds = %8059, %8055
  %8067 = phi float [ %8065, %8059 ], [ %8006, %8055 ]
  %8068 = phi float [ %8061, %8059 ], [ 0.000000e+00, %8055 ]
  %8069 = fmul fast float %8032, %8016
  %8070 = fmul fast float %8033, %8016
  %8071 = fmul fast float %8034, %8016
  %8072 = fmul fast float %8035, %8016
  %8073 = fmul fast float %8045, %8014
  %8074 = fmul fast float %8056, %8014
  %8075 = fmul fast float %8067, %8014
  %8076 = fmul fast float %8046, %8014
  %8077 = fmul fast float %8057, %8014
  %8078 = fmul fast float %8068, %8014
  %8079 = fadd fast float %8073, %8069
  %8080 = fadd fast float %8074, %8070
  %8081 = fadd fast float %8075, %8071
  %8082 = fadd fast float %8076, %8072
  %8083 = fadd fast float %8077, %8072
  %8084 = fadd fast float %8078, %8072
  %8085 = fcmp fast une float %8082, 0.000000e+00
  br i1 %8085, label %8086, label %8093, !dx.controlflow.hints !153

; <label>:8086                                    ; preds = %8066
  %8087 = fmul fast float %8082, 0x3FF7154760000000
  %8088 = call float @dx.op.unary.f32(i32 21, float %8087)  ; Exp(value)
  %8089 = fsub fast float 1.000000e+00, %8088
  %8090 = fmul fast float %8079, %8089
  %8091 = fsub fast float -0.000000e+00, %8090
  %8092 = fdiv fast float %8091, %8082
  br label %8093

; <label>:8093                                    ; preds = %8086, %8066
  %8094 = phi float [ %8088, %8086 ], [ 1.000000e+00, %8066 ]
  %8095 = phi float [ %8092, %8086 ], [ %8079, %8066 ]
  %8096 = fcmp fast une float %8083, 0.000000e+00
  br i1 %8096, label %8097, label %8104, !dx.controlflow.hints !153

; <label>:8097                                    ; preds = %8093
  %8098 = fmul fast float %8083, 0x3FF7154760000000
  %8099 = call float @dx.op.unary.f32(i32 21, float %8098)  ; Exp(value)
  %8100 = fsub fast float 1.000000e+00, %8099
  %8101 = fmul fast float %8080, %8100
  %8102 = fsub fast float -0.000000e+00, %8101
  %8103 = fdiv fast float %8102, %8083
  br label %8104

; <label>:8104                                    ; preds = %8097, %8093
  %8105 = phi float [ %8099, %8097 ], [ 1.000000e+00, %8093 ]
  %8106 = phi float [ %8103, %8097 ], [ %8080, %8093 ]
  %8107 = fcmp fast une float %8084, 0.000000e+00
  br i1 %8107, label %8108, label %8115, !dx.controlflow.hints !153

; <label>:8108                                    ; preds = %8104
  %8109 = fmul fast float %8084, 0x3FF7154760000000
  %8110 = call float @dx.op.unary.f32(i32 21, float %8109)  ; Exp(value)
  %8111 = fsub fast float 1.000000e+00, %8110
  %8112 = fmul fast float %8081, %8111
  %8113 = fsub fast float -0.000000e+00, %8112
  %8114 = fdiv fast float %8113, %8084
  br label %8115

; <label>:8115                                    ; preds = %8108, %8104
  %8116 = phi float [ %8110, %8108 ], [ 1.000000e+00, %8104 ]
  %8117 = phi float [ %8114, %8108 ], [ %8081, %8104 ]
  %8118 = fcmp fast ogt float %8014, %8016
  br i1 %8118, label %8119, label %8139

; <label>:8119                                    ; preds = %8115
  %8120 = fsub fast float 1.000000e+00, %8016
  %8121 = fmul fast float %8032, %8120
  %8122 = fmul fast float %8033, %8120
  %8123 = fmul fast float %8034, %8120
  %8124 = fmul fast float %8035, %8120
  %8125 = fcmp fast une float %8124, 0.000000e+00
  br i1 %8125, label %8126, label %8177, !dx.controlflow.hints !154

; <label>:8126                                    ; preds = %8119
  %8127 = fmul fast float %8124, 0x3FF7154760000000
  %8128 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8129 = fsub fast float 1.000000e+00, %8128
  %8130 = fmul fast float %8121, %8129
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = fmul fast float %8122, %8129
  %8133 = fsub fast float -0.000000e+00, %8132
  %8134 = fmul fast float %8123, %8129
  %8135 = fsub fast float -0.000000e+00, %8134
  %8136 = fdiv fast float %8131, %8124
  %8137 = fdiv fast float %8133, %8124
  %8138 = fdiv fast float %8135, %8124
  br label %8177

; <label>:8139                                    ; preds = %8115
  %8140 = fsub fast float 1.000000e+00, %8014
  %8141 = fmul fast float %8045, %8140
  %8142 = fmul fast float %8056, %8140
  %8143 = fmul fast float %8067, %8140
  %8144 = fmul fast float %8046, %8140
  %8145 = fmul fast float %8057, %8140
  %8146 = fmul fast float %8068, %8140
  %8147 = fcmp fast une float %8144, 0.000000e+00
  br i1 %8147, label %8148, label %8155, !dx.controlflow.hints !153

; <label>:8148                                    ; preds = %8139
  %8149 = fmul fast float %8144, 0x3FF7154760000000
  %8150 = call float @dx.op.unary.f32(i32 21, float %8149)  ; Exp(value)
  %8151 = fsub fast float 1.000000e+00, %8150
  %8152 = fmul fast float %8141, %8151
  %8153 = fsub fast float -0.000000e+00, %8152
  %8154 = fdiv fast float %8153, %8144
  br label %8155

; <label>:8155                                    ; preds = %8148, %8139
  %8156 = phi float [ %8154, %8148 ], [ %8141, %8139 ]
  %8157 = phi float [ %8150, %8148 ], [ 1.000000e+00, %8139 ]
  %8158 = fcmp fast une float %8145, 0.000000e+00
  br i1 %8158, label %8159, label %8166, !dx.controlflow.hints !153

; <label>:8159                                    ; preds = %8155
  %8160 = fmul fast float %8145, 0x3FF7154760000000
  %8161 = call float @dx.op.unary.f32(i32 21, float %8160)  ; Exp(value)
  %8162 = fsub fast float 1.000000e+00, %8161
  %8163 = fmul fast float %8142, %8162
  %8164 = fsub fast float -0.000000e+00, %8163
  %8165 = fdiv fast float %8164, %8145
  br label %8166

; <label>:8166                                    ; preds = %8159, %8155
  %8167 = phi float [ %8165, %8159 ], [ %8142, %8155 ]
  %8168 = phi float [ %8161, %8159 ], [ 1.000000e+00, %8155 ]
  %8169 = fcmp fast une float %8146, 0.000000e+00
  br i1 %8169, label %8170, label %8177, !dx.controlflow.hints !153

; <label>:8170                                    ; preds = %8166
  %8171 = fmul fast float %8146, 0x3FF7154760000000
  %8172 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8173 = fsub fast float 1.000000e+00, %8172
  %8174 = fmul fast float %8143, %8173
  %8175 = fsub fast float -0.000000e+00, %8174
  %8176 = fdiv fast float %8175, %8146
  br label %8177

; <label>:8177                                    ; preds = %8170, %8166, %8126, %8119
  %8178 = phi float [ %8176, %8170 ], [ %8138, %8126 ], [ %8123, %8119 ], [ %8143, %8166 ]
  %8179 = phi float [ %8167, %8170 ], [ %8137, %8126 ], [ %8122, %8119 ], [ %8167, %8166 ]
  %8180 = phi float [ %8156, %8170 ], [ %8136, %8126 ], [ %8121, %8119 ], [ %8156, %8166 ]
  %8181 = phi float [ %8172, %8170 ], [ %8128, %8126 ], [ 1.000000e+00, %8119 ], [ 1.000000e+00, %8166 ]
  %8182 = phi float [ %8168, %8170 ], [ %8128, %8126 ], [ 1.000000e+00, %8119 ], [ %8168, %8166 ]
  %8183 = phi float [ %8157, %8170 ], [ %8128, %8126 ], [ 1.000000e+00, %8119 ], [ %8157, %8166 ]
  %8184 = fmul fast float %8183, %8095
  %8185 = fmul fast float %8182, %8106
  %8186 = fmul fast float %8181, %8117
  %8187 = fadd fast float %8184, %8180
  %8188 = fadd fast float %8185, %8179
  %8189 = fadd fast float %8186, %8178
  %8190 = fmul fast float %8183, %8094
  %8191 = fmul fast float %8182, %8105
  %8192 = fmul fast float %8181, %8116
  br label %8193

; <label>:8193                                    ; preds = %8177, %7988
  %8194 = phi float [ %8192, %8177 ], [ %7994, %7988 ]
  %8195 = phi float [ %8191, %8177 ], [ %7993, %7988 ]
  %8196 = phi float [ %8190, %8177 ], [ %7992, %7988 ]
  %8197 = phi float [ %8189, %8177 ], [ %7991, %7988 ]
  %8198 = phi float [ %8188, %8177 ], [ %7990, %7988 ]
  %8199 = phi float [ %8187, %8177 ], [ %7989, %7988 ]
  %8200 = fmul fast float %8196, %7436
  %8201 = call float @dx.op.dot3.f32(i32 55, float %8196, float %8195, float %8194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8202 = call float @dx.op.dot3.f32(i32 55, float %8199, float %8198, float %8197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8203 = select i1 %206, float %8201, float %8196
  %8204 = select i1 %206, float %8201, float %8195
  %8205 = select i1 %206, float 1.000000e+00, float %8194
  %8206 = select i1 %206, float %8202, float %8199
  %8207 = select i1 %206, float 0.000000e+00, float %8198
  %8208 = select i1 %206, float 0.000000e+00, float %8197
  %8209 = fmul fast float %8203, %7430
  %8210 = fmul fast float %8204, %7431
  %8211 = fmul fast float %8205, %7432
  %8212 = fadd fast float %8209, %8206
  %8213 = fadd fast float %8210, %8207
  %8214 = fadd fast float %8208, %8211
  %8215 = fmul fast float %8203, %7433
  %8216 = fmul fast float %8204, %7434
  %8217 = fmul fast float %8205, %7435
  %8218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.i32 %8218, 0
  %8220 = icmp eq i32 %8219, 0
  br i1 %8220, label %8578, label %8221, !dx.controlflow.hints !155

; <label>:8221                                    ; preds = %8193
  %8222 = fmul fast float %5941, %90
  %8223 = fmul fast float %5942, %91
  %8224 = fmul fast float %8222, 2.000000e+00
  %8225 = fmul fast float %8223, 2.000000e+00
  %8226 = fsub fast float 1.000000e+00, %8224
  %8227 = fsub fast float 1.000000e+00, %8225
  %8228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8229 = extractvalue %dx.types.CBufRet.f32 %8228, 0
  %8230 = extractvalue %dx.types.CBufRet.f32 %8228, 1
  %8231 = extractvalue %dx.types.CBufRet.f32 %8228, 2
  %8232 = fmul fast float %8226, %8229
  %8233 = fmul fast float %8226, %8230
  %8234 = fmul fast float %8226, %8231
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.CBufRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8235, 2
  %8239 = fmul fast float %8227, %8236
  %8240 = fmul fast float %8227, %8237
  %8241 = fmul fast float %8227, %8238
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.CBufRet.f32 %8242, 2
  %8246 = fadd fast float %8239, %8243
  %8247 = fadd fast float %8246, %8232
  %8248 = fadd fast float %8240, %8244
  %8249 = fadd fast float %8248, %8233
  %8250 = fadd fast float %8241, %8245
  %8251 = fadd fast float %8250, %8234
  %8252 = fmul fast float %8247, %7429
  %8253 = fmul fast float %8249, %7429
  %8254 = fmul fast float %8251, %7429
  %8255 = fmul fast float %8252, %8252
  %8256 = fmul fast float %8253, %8253
  %8257 = fadd fast float %8255, %8256
  %8258 = fmul fast float %8254, %8254
  %8259 = fadd fast float %8257, %8258
  %8260 = call float @dx.op.unary.f32(i32 24, float %8259)  ; Sqrt(value)
  %8261 = extractvalue %dx.types.CBufRet.f32 %7164, 0
  %8262 = fsub fast float %8260, %8261
  %8263 = extractvalue %dx.types.CBufRet.f32 %7164, 2
  %8264 = fmul fast float %8262, %8263
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = fadd fast float %8265, -5.000000e-01
  %8267 = fmul fast float %8266, 2.000000e+00
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8270 = call float @dx.op.binary.f32(i32 36, float %8269, float %8267)  ; FMin(a,b)
  %8271 = fsub fast float -0.000000e+00, %8269
  %8272 = fcmp fast ogt float %8270, %8271
  br i1 %8272, label %8273, label %8578, !dx.controlflow.hints !156

; <label>:8273                                    ; preds = %8221
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 3
  %8276 = fcmp fast ogt float %8275, 0.000000e+00
  br i1 %8276, label %8277, label %8350, !dx.controlflow.hints !157

; <label>:8277                                    ; preds = %8273
  %8278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8279 = extractvalue %dx.types.Dimensions %8278, 0
  %8280 = sitofp i32 %8279 to float
  %8281 = extractvalue %dx.types.Dimensions %8278, 1
  %8282 = sitofp i32 %8281 to float
  %8283 = fmul fast float %8222, %8280
  %8284 = fmul fast float %8223, %8282
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 1
  %8287 = fsub fast float -0.000000e+00, %8286
  %8288 = fptoui float %8287 to i32
  %8289 = fptoui float %8283 to i32
  %8290 = fptoui float %8284 to i32
  %8291 = and i32 %8288, 31
  %8292 = lshr i32 %8289, %8291
  %8293 = lshr i32 %8290, %8291
  %8294 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8288, i32 %8292, i32 %8293, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = fcmp fast olt float %8295, -1.000000e+00
  %8297 = fcmp fast ogt float %8295, -1.000000e+00
  %8298 = select i1 %8297, float %5949, float 1.000000e+00
  %8299 = fadd fast float %8295, 1.000000e+00
  %8300 = fmul fast float %8298, %8299
  %8301 = call float @dx.op.unary.f32(i32 6, float %8300)  ; FAbs(value)
  %8302 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %8303 = fcmp fast oge float %8301, %8302
  %8304 = select i1 %8303, float 0x4197782600000000, float %8301
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.CBufRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8309 = select i1 %8296, float %8306, float %8229
  %8310 = select i1 %8296, float %8307, float %8230
  %8311 = select i1 %8296, float %8308, float %8231
  %8312 = fmul fast float %8309, %8226
  %8313 = fmul fast float %8310, %8226
  %8314 = fmul fast float %8311, %8226
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.CBufRet.f32 %8315, 1
  %8318 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8319 = select i1 %8296, float %8316, float %8236
  %8320 = select i1 %8296, float %8317, float %8237
  %8321 = select i1 %8296, float %8318, float %8238
  %8322 = fmul fast float %8319, %8227
  %8323 = fmul fast float %8320, %8227
  %8324 = fmul fast float %8321, %8227
  %8325 = fadd fast float %8322, %8312
  %8326 = fadd fast float %8323, %8313
  %8327 = fadd fast float %8324, %8314
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %8332 = select i1 %8296, float %8329, float %8243
  %8333 = select i1 %8296, float %8330, float %8244
  %8334 = select i1 %8296, float %8331, float %8245
  %8335 = fadd fast float %8325, %8332
  %8336 = fadd fast float %8326, %8333
  %8337 = fadd fast float %8327, %8334
  %8338 = fmul fast float %8335, %8304
  %8339 = fmul fast float %8336, %8304
  %8340 = fmul fast float %8337, %8304
  %8341 = fmul fast float %8338, %8338
  %8342 = fmul fast float %8339, %8339
  %8343 = fadd fast float %8341, %8342
  %8344 = fmul fast float %8340, %8340
  %8345 = fadd fast float %8343, %8344
  %8346 = call float @dx.op.unary.f32(i32 24, float %8345)  ; Sqrt(value)
  %8347 = fsub fast float %8346, %8261
  %8348 = fmul fast float %8347, %8263
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  br label %8350

; <label>:8350                                    ; preds = %8277, %8273
  %8351 = phi float [ %8349, %8277 ], [ 1.000000e+00, %8273 ]
  %8352 = fmul fast float %8270, 5.000000e-01
  %8353 = fadd fast float %8352, 5.000000e-01
  %8354 = call float @dx.op.unary.f32(i32 22, float %8353)  ; Frc(value)
  %8355 = call float @dx.op.unary.f32(i32 27, float %8354)  ; Round_ni(value)
  %8356 = call float @dx.op.unary.f32(i32 22, float %8354)  ; Frc(value)
  %8357 = fmul fast float %8356, 2.000000e+00
  %8358 = fadd fast float %8357, -1.000000e+00
  %8359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %8222, float %8223, float %8355, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = extractvalue %dx.types.ResRet.f32 %8359, 3
  %8364 = fadd fast float %8360, -5.000000e-01
  %8365 = fadd fast float %8362, -5.000000e-01
  %8366 = fmul fast float %8364, 0xBFD5555560000000
  %8367 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8365, float %8366)  ; FMad(a,b,c)
  %8368 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8361, float 0.000000e+00)  ; FMad(a,b,c)
  %8369 = fadd fast float %8368, %8363
  %8370 = fmul fast float %8364, -7.500000e-01
  %8371 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8365, float %8370)  ; FMad(a,b,c)
  %8372 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8361, float 0.000000e+00)  ; FMad(a,b,c)
  %8373 = fadd fast float %8372, %8363
  %8374 = call float @dx.op.binary.f32(i32 35, float %8367, float -1.000000e+00)  ; FMax(a,b)
  %8375 = call float @dx.op.binary.f32(i32 35, float %8369, float -1.000000e+00)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 35, float %8371, float -1.000000e+00)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %8373, float -1.000000e+00)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8374, float 1.000000e+00)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8375, float 1.000000e+00)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 36, float %8376, float 1.000000e+00)  ; FMin(a,b)
  %8381 = call float @dx.op.binary.f32(i32 36, float %8377, float 1.000000e+00)  ; FMin(a,b)
  %8382 = fcmp fast olt float %8378, 0x3FEFFF8020000000
  br i1 %8382, label %8383, label %8498, !dx.controlflow.hints !158

; <label>:8383                                    ; preds = %8350
  %8384 = extractvalue %dx.types.CBufRet.f32 %8268, 3
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.CBufRet.f32 %8385, 1
  %8388 = extractvalue %dx.types.CBufRet.f32 %8385, 2
  %8389 = extractvalue %dx.types.CBufRet.f32 %8385, 3
  %8390 = fsub fast float %8386, %8378
  %8391 = fsub fast float %8387, %8379
  %8392 = fsub fast float %8388, %8380
  %8393 = fsub fast float %8389, %8381
  %8394 = fmul fast float %8390, %8384
  %8395 = fmul fast float %8391, %8384
  %8396 = fmul fast float %8392, %8384
  %8397 = fmul fast float %8393, %8384
  %8398 = fadd fast float %8394, %8378
  %8399 = fadd fast float %8395, %8379
  %8400 = fsub fast float -0.000000e+00, %8399
  %8401 = fadd fast float %8396, %8380
  %8402 = fadd fast float %8397, %8381
  %8403 = fmul fast float %8398, %8398
  %8404 = fsub fast float %8399, %8403
  %8405 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8404)  ; FMax(a,b)
  %8406 = fdiv fast float 1.000000e+00, %8405
  %8407 = fmul fast float %8399, %8398
  %8408 = fsub fast float %8401, %8407
  %8409 = fsub fast float %8358, %8398
  %8410 = fmul fast float %8358, %8358
  %8411 = fsub fast float %8410, %8399
  %8412 = fmul fast float %8409, %8406
  %8413 = fmul fast float %8412, %8408
  %8414 = fsub fast float %8411, %8413
  %8415 = fmul fast float %8399, %8399
  %8416 = fsub fast float %8402, %8415
  %8417 = fmul fast float %8408, %8408
  %8418 = fmul fast float %8417, %8406
  %8419 = fsub fast float %8416, %8418
  %8420 = fdiv fast float %8414, %8419
  %8421 = fmul fast float %8408, %8420
  %8422 = fsub fast float %8409, %8421
  %8423 = fmul fast float %8422, %8406
  %8424 = fmul fast float %8423, %8398
  %8425 = fsub fast float 1.000000e+00, %8424
  %8426 = fmul fast float %8399, %8420
  %8427 = fsub fast float %8425, %8426
  %8428 = fmul fast float %8423, %8423
  %8429 = fmul fast float %8420, 4.000000e+00
  %8430 = fmul fast float %8429, %8427
  %8431 = fsub fast float %8428, %8430
  %8432 = call float @dx.op.unary.f32(i32 24, float %8431)  ; Sqrt(value)
  %8433 = fcmp fast oge float %8423, 0.000000e+00
  %8434 = fsub fast float -0.000000e+00, %8432
  %8435 = select i1 %8433, float %8434, float %8432
  %8436 = fsub fast float %8435, %8423
  %8437 = fdiv fast float %8436, %8420
  %8438 = fdiv fast float %8427, %8436
  %8439 = fmul fast float %8437, 5.000000e-01
  %8440 = fmul fast float %8438, 2.000000e+00
  %8441 = select i1 %8433, float %8439, float %8440
  %8442 = select i1 %8433, float %8440, float %8439
  %8443 = call float @dx.op.binary.f32(i32 35, float %8441, float %8442)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 36, float %8441, float %8442)  ; FMin(a,b)
  %8445 = fcmp fast ogt float %8358, %8444
  br i1 %8445, label %8446, label %8456

; <label>:8446                                    ; preds = %8383
  %8447 = fsub fast float %8358, %8444
  %8448 = fsub fast float %8443, %8444
  %8449 = fmul fast float %8447, %8448
  %8450 = fmul fast float %8443, %8358
  %8451 = fadd fast float %8443, %8358
  %8452 = fmul fast float %8451, %8398
  %8453 = fadd fast float %8450, %8399
  %8454 = fsub fast float %8453, %8452
  %8455 = fdiv fast float %8454, %8449
  br label %8456

; <label>:8456                                    ; preds = %8446, %8383
  %8457 = phi float [ %8455, %8446 ], [ 0.000000e+00, %8383 ]
  %8458 = fcmp fast ogt float %8358, %8443
  %8459 = fsub fast float %8358, %8443
  br i1 %8458, label %8460, label %8470

; <label>:8460                                    ; preds = %8456
  %8461 = fsub fast float %8443, %8444
  %8462 = fmul fast float %8461, %8459
  %8463 = fmul fast float %8444, %8358
  %8464 = fadd fast float %8444, %8358
  %8465 = fmul fast float %8464, %8398
  %8466 = fsub fast float %8400, %8463
  %8467 = fadd fast float %8466, %8465
  %8468 = fdiv fast float %8467, %8462
  %8469 = fadd fast float %8468, %8457
  br label %8470

; <label>:8470                                    ; preds = %8460, %8456
  %8471 = phi float [ %8469, %8460 ], [ %8457, %8456 ]
  %8472 = fsub fast float %8358, %8444
  %8473 = fmul fast float %8472, %8459
  %8474 = fmul fast float %8444, %8443
  %8475 = fadd fast float %8444, %8443
  %8476 = fmul fast float %8475, %8398
  %8477 = fadd fast float %8474, %8399
  %8478 = fsub fast float %8477, %8476
  %8479 = fdiv fast float %8478, %8473
  %8480 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8481 = fcmp fast oeq float %7165, 0.000000e+00
  %8482 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8483 = fcmp fast oeq float %8482, 0.000000e+00
  %8484 = or i1 %8481, %8483
  %8485 = fmul fast float %8482, 2.000000e+00
  %8486 = fadd fast float %8269, %8270
  %8487 = fdiv fast float %8486, %8485
  %8488 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8489 = fmul fast float %8488, 2.000000e+00
  %8490 = fsub fast float 3.000000e+00, %8489
  %8491 = fmul fast float %8488, %8488
  %8492 = fmul fast float %8491, %8490
  %8493 = select i1 %8484, float 1.000000e+00, float %8492
  %8494 = fmul fast float %8479, %7165
  %8495 = fadd fast float %8480, %8494
  %8496 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8497 = fmul fast float %8493, %8496
  br label %8498

; <label>:8498                                    ; preds = %8470, %8350
  %8499 = phi float [ %8497, %8470 ], [ 0.000000e+00, %8350 ]
  %8500 = fsub fast float 1.000000e+00, %8499
  %8501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %8222, float %8223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.i32 %8503, 2
  %8505 = icmp eq i32 %8504, 0
  br i1 %8505, label %8511, label %8506

; <label>:8506                                    ; preds = %8498
  %8507 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  %8508 = fadd fast float %8502, -1.000000e+00
  %8509 = fmul fast float %8507, %8508
  %8510 = fadd fast float %8509, 1.000000e+00
  br label %8511

; <label>:8511                                    ; preds = %8506, %8498
  %8512 = phi float [ %8510, %8506 ], [ %8500, %8498 ]
  br i1 %8276, label %8513, label %8531

; <label>:8513                                    ; preds = %8511
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 1
  %8516 = fsub fast float %8351, %8515
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = fsub fast float %8351, %8275
  %8519 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8520 = fsub fast float %8517, %8519
  %8521 = fsub fast float %8353, %8519
  %8522 = fdiv fast float %8521, %8520
  %8523 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8524 = fmul fast float %8523, 2.000000e+00
  %8525 = fsub fast float 3.000000e+00, %8524
  %8526 = fsub fast float %8502, %8512
  %8527 = fmul fast float %8523, %8523
  %8528 = fmul fast float %8527, %8526
  %8529 = fmul fast float %8528, %8525
  %8530 = fadd fast float %8529, %8512
  br label %8531

; <label>:8531                                    ; preds = %8513, %8511
  %8532 = phi float [ %8530, %8513 ], [ %8512, %8511 ]
  %8533 = call float @dx.op.binary.f32(i32 35, float %8502, float %8532)  ; FMax(a,b)
  %8534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.i32 %8534, 2
  %8536 = and i32 %8535, 1
  %8537 = icmp eq i32 %8536, 0
  %8538 = fcmp fast une float %8533, 1.000000e+00
  %8539 = and i1 %8538, %8537
  br i1 %8539, label %8540, label %8557

; <label>:8540                                    ; preds = %8531
  %8541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %8222, float %8223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.ResRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.ResRet.f32 %8541, 2
  %8545 = fmul fast float %5996, %8542
  %8546 = fmul fast float %5996, %8543
  %8547 = fmul fast float %5996, %8544
  %8548 = fcmp fast ogt float %8502, 0x3FEFFF2E40000000
  %8549 = fsub fast float 1.000000e+00, %8533
  %8550 = fsub fast float 1.000000e+00, %8502
  %8551 = fdiv fast float %8549, %8550
  %8552 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8553 = select i1 %8548, float 0.000000e+00, float %8552
  %8554 = fmul fast float %8545, %8553
  %8555 = fmul fast float %8546, %8553
  %8556 = fmul fast float %8547, %8553
  br label %8557

; <label>:8557                                    ; preds = %8540, %8531
  %8558 = phi float [ 0.000000e+00, %8531 ], [ %8554, %8540 ]
  %8559 = phi float [ 0.000000e+00, %8531 ], [ %8555, %8540 ]
  %8560 = phi float [ 0.000000e+00, %8531 ], [ %8556, %8540 ]
  %8561 = fmul fast float %8533, %8200
  %8562 = call float @dx.op.dot3.f32(i32 55, float %8533, float %8533, float %8533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8563 = call float @dx.op.dot3.f32(i32 55, float %8558, float %8559, float %8560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8564 = select i1 %206, float %8562, float %8533
  %8565 = select i1 %206, float 1.000000e+00, float %8533
  %8566 = select i1 %206, float %8563, float %8558
  %8567 = select i1 %206, float 0.000000e+00, float %8559
  %8568 = select i1 %206, float 0.000000e+00, float %8560
  %8569 = fmul fast float %8564, %8212
  %8570 = fmul fast float %8564, %8213
  %8571 = fmul fast float %8565, %8214
  %8572 = fadd fast float %8569, %8566
  %8573 = fadd fast float %8570, %8567
  %8574 = fadd fast float %8568, %8571
  %8575 = fmul fast float %8564, %8215
  %8576 = fmul fast float %8564, %8216
  %8577 = fmul fast float %8565, %8217
  br label %8578

; <label>:8578                                    ; preds = %8557, %8221, %8193, %7425
  %8579 = phi float [ %7430, %7425 ], [ %8212, %8193 ], [ %8572, %8557 ], [ %8212, %8221 ]
  %8580 = phi float [ %7431, %7425 ], [ %8213, %8193 ], [ %8573, %8557 ], [ %8213, %8221 ]
  %8581 = phi float [ %7432, %7425 ], [ %8214, %8193 ], [ %8574, %8557 ], [ %8214, %8221 ]
  %8582 = phi float [ %7433, %7425 ], [ %8215, %8193 ], [ %8575, %8557 ], [ %8215, %8221 ]
  %8583 = phi float [ %7434, %7425 ], [ %8216, %8193 ], [ %8576, %8557 ], [ %8216, %8221 ]
  %8584 = phi float [ %7435, %7425 ], [ %8217, %8193 ], [ %8577, %8557 ], [ %8217, %8221 ]
  %8585 = phi float [ %7436, %7425 ], [ %8200, %8193 ], [ %8561, %8557 ], [ %8200, %8221 ]
  %8586 = fmul fast float %5941, %90
  %8587 = fmul fast float %5942, %91
  %8588 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8589 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  %8590 = select i1 %7175, i32 2, i32 0
  %8591 = or i32 %8590, 1
  %8592 = uitofp i32 %8591 to float
  %8593 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8588, float %8589, float %8592, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.ResRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.ResRet.f32 %8593, 2
  %8597 = extractvalue %dx.types.ResRet.f32 %8593, 3
  %8598 = add nuw nsw i32 %8590, 2
  %8599 = uitofp i32 %8598 to float
  %8600 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8588, float %8589, float %8599, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.ResRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.ResRet.f32 %8600, 2
  %8604 = extractvalue %dx.types.ResRet.f32 %8600, 3
  %8605 = call float @dx.op.binary.f32(i32 35, float %8595, float %8596)  ; FMax(a,b)
  %8606 = call float @dx.op.binary.f32(i32 35, float %8594, float %8605)  ; FMax(a,b)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8606, float %8597)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 36, float %8602, float %8603)  ; FMin(a,b)
  %8609 = call float @dx.op.binary.f32(i32 36, float %8601, float %8608)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 36, float %8609, float %8604)  ; FMin(a,b)
  %8611 = fmul fast float %8607, 2.550000e+02
  %8612 = fadd fast float %8611, 0x3F70101020000000
  %8613 = fptoui float %8612 to i32
  %8614 = fmul fast float %8610, 2.550000e+02
  %8615 = fadd fast float %8614, 0x3F70101020000000
  %8616 = fptoui float %8615 to i32
  %8617 = icmp ult i32 %8613, %8616
  br i1 %8617, label %8618, label %8785

; <label>:8618                                    ; preds = %8578
  %8619 = fcmp fast ogt float %80, 9.843750e-01
  %8620 = fadd fast float %7429, -4.000000e+00
  %8621 = select i1 %8619, float -4.000000e+00, float %8620
  %8622 = call float @dx.op.binary.f32(i32 35, float %8621, float 0.000000e+00)  ; FMax(a,b)
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = fadd fast float %8624, %8622
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = fmul fast float %8625, %8626
  %8628 = call float @dx.op.unary.f32(i32 23, float %8627)  ; Log(value)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8630 = fmul fast float %8629, %8628
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8633 = fmul fast float %8630, %8632
  %8634 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8635 = uitofp i32 %8613 to float
  %8636 = uitofp i32 %8616 to float
  %8637 = fadd fast float %8635, 5.000000e-01
  %8638 = fadd fast float %8636, 5.000000e-01
  %8639 = fmul fast float %8632, %8637
  %8640 = fmul fast float %8632, %8638
  %8641 = fadd fast float %8639, 0x3F0FFB4800000000
  %8642 = fadd fast float %8640, 0xBF0FFB4800000000
  %8643 = call float @dx.op.binary.f32(i32 35, float %8634, float %8641)  ; FMax(a,b)
  %8644 = call float @dx.op.binary.f32(i32 36, float %8643, float %8642)  ; FMin(a,b)
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8649 = select i1 %7175, float %8648, float 0.000000e+00
  %8650 = fmul fast float %8646, %8644
  %8651 = fadd fast float %8649, %8650
  %8652 = fadd fast float %8649, %8647
  %8653 = fsub fast float %8646, %8647
  %8654 = fadd fast float %8653, %8649
  %8655 = call float @dx.op.binary.f32(i32 35, float %8651, float %8652)  ; FMax(a,b)
  %8656 = call float @dx.op.binary.f32(i32 36, float %8655, float %8654)  ; FMin(a,b)
  %8657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %8588, float %8589, float %8656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8658 = extractvalue %dx.types.ResRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.ResRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.ResRet.f32 %8657, 2
  %8661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.i32 %8661, 0
  %8663 = extractvalue %dx.types.CBufRet.i32 %8661, 1
  %8664 = uitofp i32 %8662 to float
  %8665 = uitofp i32 %8663 to float
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 0
  %8668 = extractvalue %dx.types.CBufRet.f32 %8666, 1
  %8669 = fmul fast float %8664, %8588
  %8670 = fmul fast float %8665, %8589
  %8671 = fadd fast float %8669, -5.000000e-01
  %8672 = fadd fast float %8670, -5.000000e-01
  %8673 = call float @dx.op.unary.f32(i32 22, float %8671)  ; Frc(value)
  %8674 = call float @dx.op.unary.f32(i32 22, float %8672)  ; Frc(value)
  %8675 = fmul fast float %8673, %8673
  %8676 = fmul fast float %8675, %8673
  %8677 = fsub fast float 3.000000e+00, %8673
  %8678 = fmul fast float %8675, %8677
  %8679 = fmul fast float %8673, 3.000000e+00
  %8680 = fmul fast float %8676, 3.000000e+00
  %8681 = fmul fast float %8675, 6.000000e+00
  %8682 = fsub fast float %8680, %8681
  %8683 = fadd fast float %8682, 4.000000e+00
  %8684 = fmul fast float %8683, 0x3FC5555560000000
  %8685 = fmul fast float %8676, -3.000000e+00
  %8686 = fadd fast float %8675, %8673
  %8687 = fmul fast float %8686, 3.000000e+00
  %8688 = fadd fast float %8685, 1.000000e+00
  %8689 = fadd fast float %8688, %8687
  %8690 = fmul fast float %8676, 0x3FC5555560000000
  %8691 = fmul fast float %8674, %8674
  %8692 = fmul fast float %8691, %8674
  %8693 = fsub fast float 3.000000e+00, %8674
  %8694 = fmul fast float %8691, %8693
  %8695 = fmul fast float %8674, 3.000000e+00
  %8696 = fmul fast float %8692, 3.000000e+00
  %8697 = fmul fast float %8691, 6.000000e+00
  %8698 = fsub fast float %8696, %8697
  %8699 = fadd fast float %8698, 4.000000e+00
  %8700 = fmul fast float %8699, 0x3FC5555560000000
  %8701 = fmul fast float %8692, -3.000000e+00
  %8702 = fadd fast float %8691, %8674
  %8703 = fmul fast float %8702, 3.000000e+00
  %8704 = fadd fast float %8701, 1.000000e+00
  %8705 = fadd fast float %8704, %8703
  %8706 = fmul fast float %8692, 0x3FC5555560000000
  %8707 = fadd fast float %8673, 1.000000e+00
  %8708 = fsub fast float 1.000000e+00, %8679
  %8709 = fadd fast float %8708, %8678
  %8710 = fadd fast float %8709, %8683
  %8711 = fmul fast float %8710, 0x3FC5555560000000
  %8712 = fdiv fast float %8684, %8711
  %8713 = fsub fast float %8707, %8712
  %8714 = fsub fast float 1.000000e+00, %8673
  %8715 = fadd fast float %8689, %8676
  %8716 = fmul fast float %8715, 0x3FC5555560000000
  %8717 = fdiv fast float %8690, %8716
  %8718 = fadd fast float %8714, %8717
  %8719 = fadd fast float %8674, 1.000000e+00
  %8720 = fsub fast float 1.000000e+00, %8695
  %8721 = fadd fast float %8720, %8694
  %8722 = fadd fast float %8721, %8699
  %8723 = fmul fast float %8722, 0x3FC5555560000000
  %8724 = fdiv fast float %8700, %8723
  %8725 = fsub fast float %8719, %8724
  %8726 = fsub fast float 1.000000e+00, %8674
  %8727 = fadd fast float %8705, %8692
  %8728 = fmul fast float %8727, 0x3FC5555560000000
  %8729 = fdiv fast float %8706, %8728
  %8730 = fadd fast float %8729, %8726
  %8731 = fmul fast float %8713, %8667
  %8732 = fsub fast float %8588, %8731
  %8733 = fmul fast float %8718, %8667
  %8734 = fadd fast float %8733, %8588
  %8735 = fmul fast float %8730, %8668
  %8736 = fadd fast float %8735, %8589
  %8737 = fmul fast float %8725, %8668
  %8738 = fsub fast float %8589, %8737
  %8739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8732, float %8738, float %8656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8740 = extractvalue %dx.types.ResRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.ResRet.f32 %8739, 1
  %8742 = extractvalue %dx.types.ResRet.f32 %8739, 2
  %8743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8734, float %8738, float %8656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8744 = extractvalue %dx.types.ResRet.f32 %8743, 0
  %8745 = extractvalue %dx.types.ResRet.f32 %8743, 1
  %8746 = extractvalue %dx.types.ResRet.f32 %8743, 2
  %8747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8732, float %8736, float %8656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8748 = extractvalue %dx.types.ResRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.ResRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.ResRet.f32 %8747, 2
  %8751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8734, float %8736, float %8656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8752 = extractvalue %dx.types.ResRet.f32 %8751, 0
  %8753 = extractvalue %dx.types.ResRet.f32 %8751, 1
  %8754 = extractvalue %dx.types.ResRet.f32 %8751, 2
  %8755 = fsub fast float %8748, %8740
  %8756 = fsub fast float %8749, %8741
  %8757 = fsub fast float %8750, %8742
  %8758 = fmul fast float %8755, %8728
  %8759 = fmul fast float %8756, %8728
  %8760 = fmul fast float %8757, %8728
  %8761 = fadd fast float %8758, %8740
  %8762 = fadd fast float %8759, %8741
  %8763 = fadd fast float %8760, %8742
  %8764 = fsub fast float %8752, %8744
  %8765 = fsub fast float %8753, %8745
  %8766 = fsub fast float %8754, %8746
  %8767 = fmul fast float %8764, %8728
  %8768 = fmul fast float %8765, %8728
  %8769 = fmul fast float %8766, %8728
  %8770 = fsub fast float %8744, %8761
  %8771 = fadd fast float %8770, %8767
  %8772 = fsub fast float %8745, %8762
  %8773 = fadd fast float %8772, %8768
  %8774 = fsub fast float %8746, %8763
  %8775 = fadd fast float %8774, %8769
  %8776 = fmul fast float %8771, %8716
  %8777 = fmul fast float %8773, %8716
  %8778 = fmul fast float %8775, %8716
  %8779 = fadd fast float %8776, %8761
  %8780 = fadd fast float %8777, %8762
  %8781 = fadd fast float %8778, %8763
  %8782 = fmul fast float %8779, %5996
  %8783 = fmul fast float %8780, %5996
  %8784 = fmul fast float %8781, %5996
  br label %8785

; <label>:8785                                    ; preds = %8618, %8578
  %8786 = phi float [ %8658, %8618 ], [ 1.000000e+00, %8578 ]
  %8787 = phi float [ %8659, %8618 ], [ 1.000000e+00, %8578 ]
  %8788 = phi float [ %8660, %8618 ], [ 1.000000e+00, %8578 ]
  %8789 = phi float [ %8782, %8618 ], [ 0.000000e+00, %8578 ]
  %8790 = phi float [ %8783, %8618 ], [ 0.000000e+00, %8578 ]
  %8791 = phi float [ %8784, %8618 ], [ 0.000000e+00, %8578 ]
  %8792 = fmul fast float %8786, %8585
  %8793 = call float @dx.op.dot3.f32(i32 55, float %8786, float %8787, float %8788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8794 = call float @dx.op.dot3.f32(i32 55, float %8789, float %8790, float %8791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8795 = select i1 %206, float %8793, float %8786
  %8796 = select i1 %206, float %8793, float %8787
  %8797 = select i1 %206, float 1.000000e+00, float %8788
  %8798 = select i1 %206, float %8794, float %8789
  %8799 = select i1 %206, float 0.000000e+00, float %8790
  %8800 = select i1 %206, float 0.000000e+00, float %8791
  %8801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.i32 %8801, 3
  %8803 = and i32 %8802, 3
  %8804 = icmp ne i32 %8803, 0
  %8805 = and i32 %8802, 4
  %8806 = icmp ne i32 %8805, 0
  %8807 = and i1 %8804, %8806
  %8808 = and i1 %206, %8807
  br i1 %8808, label %8809, label %8815

; <label>:8809                                    ; preds = %8785
  %8810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8810, 1
  %8812 = fadd fast float %8792, -1.000000e+00
  %8813 = fmul fast float %8811, %8812
  %8814 = fadd fast float %8813, 1.000000e+00
  br label %8815

; <label>:8815                                    ; preds = %8809, %8785
  %8816 = phi float [ %8814, %8809 ], [ %8792, %8785 ]
  %8817 = fadd fast float %8582, %8579
  %8818 = fmul fast float %8795, %8817
  %8819 = fadd fast float %8818, %8798
  %8820 = fadd fast float %8583, %8580
  %8821 = fmul fast float %8796, %8820
  %8822 = fadd fast float %8821, %8799
  %8823 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  br i1 %206, label %8824, label %8839

; <label>:8824                                    ; preds = %8815
  %8825 = fadd fast float %8819, %8822
  %8826 = fmul fast float %8823, %8825
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 3
  %8829 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %8830 = fsub fast float %7162, %7156
  %8831 = fadd fast float %8830, %7163
  %8832 = fsub fast float %8831, %8829
  %8833 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %8834 = fmul fast float %8832, %8833
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fsub fast float %8835, %8828
  %8837 = fmul fast float %8836, %8816
  %8838 = fadd fast float %8837, %8828
  br label %8863

; <label>:8839                                    ; preds = %8815
  %8840 = fadd fast float %8584, %8581
  %8841 = fmul fast float %8797, %8840
  %8842 = fadd fast float %8841, %8800
  %8843 = fmul fast float %8823, %8819
  %8844 = fmul fast float %8823, %8822
  %8845 = fmul fast float %8823, %8842
  %8846 = call float @dx.op.binary.f32(i32 35, float %8844, float %8845)  ; FMax(a,b)
  %8847 = call float @dx.op.binary.f32(i32 35, float %8843, float %8846)  ; FMax(a,b)
  %8848 = call float @dx.op.binary.f32(i32 35, float %8847, float 1.000000e+00)  ; FMax(a,b)
  %8849 = fcmp fast ugt float %8848, 0x3F10000000000000
  br i1 %8849, label %8851, label %8850

; <label>:8850                                    ; preds = %8839
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8851

; <label>:8851                                    ; preds = %8850, %8839
  %8852 = add i32 %44, 356
  %8853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8852, i32 undef)  ; BufferLoad(srv,index,wot)
  %8854 = extractvalue %dx.types.ResRet.i32 %8853, 0
  %8855 = and i32 %8854, 32
  %8856 = icmp eq i32 %8855, 0
  br i1 %8856, label %8863, label %8857

; <label>:8857                                    ; preds = %8851
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 0
  %8860 = fmul fast float %8859, 0x3FE99999A0000000
  %8861 = fadd fast float %8859, %8843
  %8862 = fadd fast float %8860, %8845
  br label %8863

; <label>:8863                                    ; preds = %8857, %8851, %8824
  %8864 = phi float [ %8826, %8824 ], [ %8861, %8857 ], [ %8843, %8851 ]
  %8865 = phi float [ %8838, %8824 ], [ %8844, %8857 ], [ %8844, %8851 ]
  %8866 = phi float [ 1.000000e+00, %8824 ], [ %8862, %8857 ], [ %8845, %8851 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8867 = call float @dx.op.binary.f32(i32 36, float %8864, float 3.225500e+04)  ; FMin(a,b)
  %8868 = call float @dx.op.binary.f32(i32 36, float %8865, float 3.225500e+04)  ; FMin(a,b)
  %8869 = call float @dx.op.binary.f32(i32 36, float %8866, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8867)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8868)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8869)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
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
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 19, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !32}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!45 = !{!46, !47}
!46 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!47 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!50 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!57 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !82}
!59 = !{!60, !78, null}
!60 = !{!61, !64, !65, !67, !69, !70, !71, !72, !73, !74, !75, !77}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 15}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !63}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !63}
!70 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !63}
!71 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !63}
!72 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !63}
!73 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 8, i8 0, !66}
!74 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !63}
!75 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !76}
!76 = !{i32 3, i32 13}
!77 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79, !80}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!80 = !{i32 1, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 1, i8 0, !63}
!81 = !{i32 1}
!82 = !{i32 0, i64 16}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
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
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !91, i64 0}
!112 = !{!113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!113 = distinct !{!113, !114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!114 = distinct !{!114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!115 = distinct !{!115, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!116 = distinct !{!116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!117 = distinct !{!117, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!123 = distinct !{!123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!124 = distinct !{!124, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!125 = distinct !{!125, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!126 = distinct !{!126, !127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!127 = distinct !{!127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"\01?sort@@YAXAIAM00@Z: %c"}
!130 = distinct !{!130, !"\01?sort@@YAXAIAM00@Z"}
!131 = !{!132, !133, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!132 = distinct !{!132, !130, !"\01?sort@@YAXAIAM00@Z: %a"}
!133 = distinct !{!133, !130, !"\01?sort@@YAXAIAM00@Z: %b"}
!134 = !{!133}
!135 = !{!132, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!136 = !{!132}
!137 = !{!133, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!146 = !{!142}
!147 = !{!143, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}

