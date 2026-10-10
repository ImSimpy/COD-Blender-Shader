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
;
; shader hash: 1aa4d64310997c3ed02329a78391d439
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %386 = add i32 %41, 488
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
  %662 = add i32 %41, 424
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
  %714 = add i32 %41, 408
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
  %738 = add i32 %41, 360
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
  %761 = add i32 %41, 440
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
  %959 = add i32 %41, 376
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
  %1043 = add i32 %41, 392
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
  %1101 = add i32 %41, 456
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
  %1142 = add i32 %41, 472
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
  %1206 = phi float [ 0.000000e+00, %428 ], [ %1076, %1185 ]
  %1207 = phi float [ 0.000000e+00, %428 ], [ %1077, %1185 ]
  %1208 = phi float [ 0.000000e+00, %428 ], [ %1078, %1185 ]
  %1209 = phi float [ 0.000000e+00, %428 ], [ %948, %1185 ]
  %1210 = phi float [ 0.000000e+00, %428 ], [ %949, %1185 ]
  %1211 = phi float [ 0.000000e+00, %428 ], [ %950, %1185 ]
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
  %1453 = add i32 %41, 428
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
  %1505 = add i32 %41, 412
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
  %1531 = add i32 %41, 364
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
  %1554 = add i32 %41, 444
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
  %1752 = add i32 %41, 380
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
  %1836 = add i32 %41, 396
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
  %1894 = add i32 %41, 460
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
  %1935 = add i32 %41, 476
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
  %2025 = fmul fast float %2022, %1209
  %2026 = fmul fast float %2023, %1210
  %2027 = fmul fast float %2024, %1211
  %2028 = fmul fast float %2022, %1206
  %2029 = fmul fast float %2023, %1207
  %2030 = fmul fast float %2024, %1208
  br label %2031

; <label>:2031                                    ; preds = %1996, %1978
  %2032 = phi float [ %2028, %1996 ], [ %1206, %1978 ]
  %2033 = phi float [ %2029, %1996 ], [ %1207, %1978 ]
  %2034 = phi float [ %2030, %1996 ], [ %1208, %1978 ]
  %2035 = phi float [ %2025, %1996 ], [ %1209, %1978 ]
  %2036 = phi float [ %2026, %1996 ], [ %1210, %1978 ]
  %2037 = phi float [ %2027, %1996 ], [ %1211, %1978 ]
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
  %2051 = fsub fast float %1741, %2035
  %2052 = fsub fast float %1742, %2036
  %2053 = fsub fast float %1743, %2037
  %2054 = fmul fast float %2045, %2051
  %2055 = fmul fast float %2045, %2052
  %2056 = fmul fast float %2045, %2053
  %2057 = fadd fast float %2054, %2035
  %2058 = fadd fast float %2055, %2036
  %2059 = fadd fast float %2056, %2037
  %2060 = fsub fast float %1727, %1218
  %2061 = fmul fast float %2045, %2060
  %2062 = fadd fast float %2061, %1218
  %2063 = fsub fast float %1869, %2032
  %2064 = fsub fast float %1870, %2033
  %2065 = fsub fast float %1871, %2034
  %2066 = fmul fast float %2050, %2063
  %2067 = fmul fast float %2050, %2064
  %2068 = fmul fast float %2050, %2065
  %2069 = fadd fast float %2066, %2032
  %2070 = fadd fast float %2067, %2033
  %2071 = fadd fast float %2068, %2034
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
  %2087 = fmul fast float %2084, %2035
  %2088 = fmul fast float %2085, %2036
  %2089 = fmul fast float %2086, %2037
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
  %2107 = fmul fast float %2106, %2035
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2035
  %2110 = fmul fast float %2103, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2036
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2036
  %2115 = fmul fast float %2104, 2.000000e+00
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = fmul fast float %2116, %2037
  %2118 = fadd fast float %2117, %2115
  %2119 = fmul fast float %2118, %2037
  br label %2120

; <label>:2120                                    ; preds = %2092, %2090, %2077, %2047, %2031
  %2121 = phi float [ %2032, %2031 ], [ %2032, %2092 ], [ %2032, %2090 ], [ %2032, %2077 ], [ %2069, %2047 ]
  %2122 = phi float [ %2033, %2031 ], [ %2033, %2092 ], [ %2033, %2090 ], [ %2033, %2077 ], [ %2070, %2047 ]
  %2123 = phi float [ %2034, %2031 ], [ %2034, %2092 ], [ %2034, %2090 ], [ %2034, %2077 ], [ %2071, %2047 ]
  %2124 = phi float [ %2035, %2031 ], [ %2109, %2092 ], [ %2035, %2090 ], [ %2087, %2077 ], [ %2057, %2047 ]
  %2125 = phi float [ %2036, %2031 ], [ %2114, %2092 ], [ %2036, %2090 ], [ %2088, %2077 ], [ %2058, %2047 ]
  %2126 = phi float [ %2037, %2031 ], [ %2119, %2092 ], [ %2037, %2090 ], [ %2089, %2077 ], [ %2059, %2047 ]
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
  %2510 = add i32 %41, 432
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
  %2562 = add i32 %41, 416
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
  %2588 = add i32 %41, 368
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
  %2611 = add i32 %41, 448
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
  %2809 = add i32 %41, 384
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
  %2893 = add i32 %41, 400
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
  %2951 = add i32 %41, 464
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
  %2992 = add i32 %41, 480
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
  %3082 = fmul fast float %3079, %2267
  %3083 = fmul fast float %3080, %2268
  %3084 = fmul fast float %3081, %2269
  %3085 = fmul fast float %3079, %2264
  %3086 = fmul fast float %3080, %2265
  %3087 = fmul fast float %3081, %2266
  br label %3088

; <label>:3088                                    ; preds = %3053, %3035
  %3089 = phi float [ %3085, %3053 ], [ %2264, %3035 ]
  %3090 = phi float [ %3086, %3053 ], [ %2265, %3035 ]
  %3091 = phi float [ %3087, %3053 ], [ %2266, %3035 ]
  %3092 = phi float [ %3082, %3053 ], [ %2267, %3035 ]
  %3093 = phi float [ %3083, %3053 ], [ %2268, %3035 ]
  %3094 = phi float [ %3084, %3053 ], [ %2269, %3035 ]
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
  %3108 = fsub fast float %2798, %3092
  %3109 = fsub fast float %2799, %3093
  %3110 = fsub fast float %2800, %3094
  %3111 = fmul fast float %3102, %3108
  %3112 = fmul fast float %3102, %3109
  %3113 = fmul fast float %3102, %3110
  %3114 = fadd fast float %3111, %3092
  %3115 = fadd fast float %3112, %3093
  %3116 = fadd fast float %3113, %3094
  %3117 = fsub fast float %2784, %2276
  %3118 = fmul fast float %3102, %3117
  %3119 = fadd fast float %3118, %2276
  %3120 = fsub fast float %2926, %3089
  %3121 = fsub fast float %2927, %3090
  %3122 = fsub fast float %2928, %3091
  %3123 = fmul fast float %3107, %3120
  %3124 = fmul fast float %3107, %3121
  %3125 = fmul fast float %3107, %3122
  %3126 = fadd fast float %3123, %3089
  %3127 = fadd fast float %3124, %3090
  %3128 = fadd fast float %3125, %3091
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
  %3144 = fmul fast float %3141, %3092
  %3145 = fmul fast float %3142, %3093
  %3146 = fmul fast float %3143, %3094
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
  %3164 = fmul fast float %3163, %3092
  %3165 = fadd fast float %3164, %3162
  %3166 = fmul fast float %3165, %3092
  %3167 = fmul fast float %3160, 2.000000e+00
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, %3093
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, %3093
  %3172 = fmul fast float %3161, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3094
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3094
  br label %3177

; <label>:3177                                    ; preds = %3149, %3147, %3134, %3104, %3088
  %3178 = phi float [ %3089, %3088 ], [ %3089, %3149 ], [ %3089, %3147 ], [ %3089, %3134 ], [ %3126, %3104 ]
  %3179 = phi float [ %3090, %3088 ], [ %3090, %3149 ], [ %3090, %3147 ], [ %3090, %3134 ], [ %3127, %3104 ]
  %3180 = phi float [ %3091, %3088 ], [ %3091, %3149 ], [ %3091, %3147 ], [ %3091, %3134 ], [ %3128, %3104 ]
  %3181 = phi float [ %3092, %3088 ], [ %3166, %3149 ], [ %3092, %3147 ], [ %3144, %3134 ], [ %3114, %3104 ]
  %3182 = phi float [ %3093, %3088 ], [ %3171, %3149 ], [ %3093, %3147 ], [ %3145, %3134 ], [ %3115, %3104 ]
  %3183 = phi float [ %3094, %3088 ], [ %3176, %3149 ], [ %3094, %3147 ], [ %3146, %3134 ], [ %3116, %3104 ]
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
  %3567 = add i32 %41, 436
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
  %3619 = add i32 %41, 420
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
  %3645 = add i32 %41, 372
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
  %3668 = add i32 %41, 452
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
  %3866 = add i32 %41, 388
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
  %3950 = add i32 %41, 404
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
  %4008 = add i32 %41, 468
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
  %4049 = add i32 %41, 484
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
  %4139 = fmul fast float %4136, %3324
  %4140 = fmul fast float %4137, %3325
  %4141 = fmul fast float %4138, %3326
  %4142 = fmul fast float %4136, %3321
  %4143 = fmul fast float %4137, %3322
  %4144 = fmul fast float %4138, %3323
  br label %4145

; <label>:4145                                    ; preds = %4110, %4092
  %4146 = phi float [ %4142, %4110 ], [ %3321, %4092 ]
  %4147 = phi float [ %4143, %4110 ], [ %3322, %4092 ]
  %4148 = phi float [ %4144, %4110 ], [ %3323, %4092 ]
  %4149 = phi float [ %4139, %4110 ], [ %3324, %4092 ]
  %4150 = phi float [ %4140, %4110 ], [ %3325, %4092 ]
  %4151 = phi float [ %4141, %4110 ], [ %3326, %4092 ]
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
  %4165 = fsub fast float %3855, %4149
  %4166 = fsub fast float %3856, %4150
  %4167 = fsub fast float %3857, %4151
  %4168 = fmul fast float %4159, %4165
  %4169 = fmul fast float %4159, %4166
  %4170 = fmul fast float %4159, %4167
  %4171 = fadd fast float %4168, %4149
  %4172 = fadd fast float %4169, %4150
  %4173 = fadd fast float %4170, %4151
  %4174 = fsub fast float %3841, %3333
  %4175 = fmul fast float %4159, %4174
  %4176 = fadd fast float %4175, %3333
  %4177 = fsub fast float %3983, %4146
  %4178 = fsub fast float %3984, %4147
  %4179 = fsub fast float %3985, %4148
  %4180 = fmul fast float %4164, %4177
  %4181 = fmul fast float %4164, %4178
  %4182 = fmul fast float %4164, %4179
  %4183 = fadd fast float %4180, %4146
  %4184 = fadd fast float %4181, %4147
  %4185 = fadd fast float %4182, %4148
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
  %4201 = fmul fast float %4198, %4149
  %4202 = fmul fast float %4199, %4150
  %4203 = fmul fast float %4200, %4151
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
  %4221 = fmul fast float %4220, %4149
  %4222 = fadd fast float %4221, %4219
  %4223 = fmul fast float %4222, %4149
  %4224 = fmul fast float %4217, 2.000000e+00
  %4225 = fsub fast float 1.000000e+00, %4224
  %4226 = fmul fast float %4225, %4150
  %4227 = fadd fast float %4226, %4224
  %4228 = fmul fast float %4227, %4150
  %4229 = fmul fast float %4218, 2.000000e+00
  %4230 = fsub fast float 1.000000e+00, %4229
  %4231 = fmul fast float %4230, %4151
  %4232 = fadd fast float %4231, %4229
  %4233 = fmul fast float %4232, %4151
  br label %4234

; <label>:4234                                    ; preds = %4206, %4204, %4191, %4161, %4145
  %4235 = phi float [ %4146, %4145 ], [ %4146, %4206 ], [ %4146, %4204 ], [ %4146, %4191 ], [ %4183, %4161 ]
  %4236 = phi float [ %4147, %4145 ], [ %4147, %4206 ], [ %4147, %4204 ], [ %4147, %4191 ], [ %4184, %4161 ]
  %4237 = phi float [ %4148, %4145 ], [ %4148, %4206 ], [ %4148, %4204 ], [ %4148, %4191 ], [ %4185, %4161 ]
  %4238 = phi float [ %4149, %4145 ], [ %4223, %4206 ], [ %4149, %4204 ], [ %4201, %4191 ], [ %4171, %4161 ]
  %4239 = phi float [ %4150, %4145 ], [ %4228, %4206 ], [ %4150, %4204 ], [ %4202, %4191 ], [ %4172, %4161 ]
  %4240 = phi float [ %4151, %4145 ], [ %4233, %4206 ], [ %4151, %4204 ], [ %4203, %4191 ], [ %4173, %4161 ]
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
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = call float @dx.op.dot2.f32(i32 54, float %4376, float %4377, float %4376, float %4377)  ; Dot2(ax,ay,bx,by)
  %4398 = fmul fast float %4397, 0x3FE3333340000000
  %4399 = fsub fast float 1.000000e+00, %4398
  %4400 = call float @dx.op.dot3.f32(i32 55, float %4376, float %4377, float %4399, float %4376, float %4377, float %4399)  ; Dot3(ax,ay,az,bx,by,bz)
  %4401 = call float @dx.op.unary.f32(i32 25, float %4400)  ; Rsqrt(value)
  %4402 = fmul fast float %4401, %4376
  %4403 = fmul fast float %4401, %4377
  %4404 = fmul fast float %4399, %4401
  %4405 = fmul fast float %4404, %94
  %4406 = fmul fast float %4404, %95
  %4407 = fmul fast float %4404, %96
  %4408 = fmul fast float %4402, %62
  %4409 = fmul fast float %4402, %63
  %4410 = fmul fast float %4402, %64
  %4411 = fadd fast float %4405, %4408
  %4412 = fadd fast float %4406, %4409
  %4413 = fadd fast float %4407, %4410
  %4414 = fmul fast float %106, %4403
  %4415 = fmul fast float %107, %4403
  %4416 = fmul fast float %108, %4403
  %4417 = fadd fast float %4411, %4414
  %4418 = fadd fast float %4412, %4415
  %4419 = fadd fast float %4413, %4416
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4417, float %4418, float %4419, float %4417, float %4418, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 25, float %4420)  ; Rsqrt(value)
  %4422 = fmul fast float %4417, %4421
  %4423 = fmul fast float %4418, %4421
  %4424 = fmul fast float %4419, %4421
  %4425 = and i32 %43, 1
  %4426 = icmp eq i32 %4425, 0
  br i1 %4426, label %4427, label %5023

; <label>:4427                                    ; preds = %4375
  %4428 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %4429 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %4430 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %4431 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %4432 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %4433 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %4434 = fadd fast float %4428, %142
  %4435 = fadd fast float %4429, %143
  %4436 = fadd fast float %4430, %144
  %4437 = fadd fast float %4431, %142
  %4438 = fadd fast float %4432, %143
  %4439 = fadd fast float %4433, %144
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = extractvalue %dx.types.CBufRet.f32 %4444, 3
  %4447 = fmul fast float %4441, %87
  %4448 = fmul fast float %4447, %4445
  %4449 = fmul fast float %4442, %88
  %4450 = fmul fast float %4449, %4446
  %4451 = fptoui float %4448 to i32
  %4452 = fptoui float %4450 to i32
  %4453 = fadd fast float %4441, -1.000000e+00
  %4454 = fadd fast float %4442, -1.000000e+00
  %4455 = fptoui float %4453 to i32
  %4456 = fptoui float %4454 to i32
  %4457 = call i32 @dx.op.binary.i32(i32 40, i32 %4451, i32 %4455)  ; UMin(a,b)
  %4458 = call i32 @dx.op.binary.i32(i32 40, i32 %4452, i32 %4456)  ; UMin(a,b)
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4462 = fmul fast float %4460, %78
  %4463 = fsub fast float %4462, %4461
  %4464 = fadd fast float %4443, -1.000000e+00
  %4465 = call float @dx.op.binary.f32(i32 36, float %4463, float %4464)  ; FMin(a,b)
  %4466 = fptoui float %4465 to i32
  %4467 = fptoui float %4441 to i32
  %4468 = fptoui float %4442 to i32
  %4469 = mul i32 %4466, %4468
  %4470 = add i32 %4469, %4458
  %4471 = mul i32 %4470, %4467
  %4472 = add i32 %4471, %4457
  %4473 = shl i32 %4472, 2
  %4474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4473, i32 undef)  ; BufferLoad(srv,index,wot)
  %4475 = extractvalue %dx.types.ResRet.i32 %4474, 0
  %4476 = and i32 %4475, 1023
  %4477 = lshr i32 %4475, 10
  %4478 = icmp eq i32 %4476, 0
  br i1 %4478, label %4985, label %4479

; <label>:4479                                    ; preds = %4427
  %4480 = and i32 %4475, 1023
  br label %4481

; <label>:4481                                    ; preds = %4614, %4479
  %4482 = phi i32 [ %4564, %4614 ], [ 0, %4479 ]
  %4483 = phi float [ %4615, %4614 ], [ 0.000000e+00, %4479 ]
  %4484 = phi float [ %4616, %4614 ], [ %1219, %4479 ]
  %4485 = phi float [ %4617, %4614 ], [ %4396, %4479 ]
  %4486 = phi float [ %4618, %4614 ], [ %4394, %4479 ]
  %4487 = phi float [ %4619, %4614 ], [ %4387, %4479 ]
  %4488 = phi float [ %4620, %4614 ], [ %4388, %4479 ]
  %4489 = phi float [ %4621, %4614 ], [ %4389, %4479 ]
  %4490 = phi float [ %4622, %4614 ], [ 0.000000e+00, %4479 ]
  %4491 = phi float [ %4623, %4614 ], [ 0.000000e+00, %4479 ]
  %4492 = phi float [ %4624, %4614 ], [ %4384, %4479 ]
  %4493 = phi float [ %4625, %4614 ], [ %4385, %4479 ]
  %4494 = phi float [ %4626, %4614 ], [ %4386, %4479 ]
  %4495 = phi float [ %4627, %4614 ], [ %4378, %4479 ]
  %4496 = phi float [ %4628, %4614 ], [ %4379, %4479 ]
  %4497 = phi float [ %4629, %4614 ], [ %4380, %4479 ]
  %4498 = phi float [ %4630, %4614 ], [ %4422, %4479 ]
  %4499 = phi float [ %4631, %4614 ], [ %4423, %4479 ]
  %4500 = phi float [ %4632, %4614 ], [ %4424, %4479 ]
  %4501 = phi float [ %4633, %4614 ], [ %4392, %4479 ]
  %4502 = phi float [ %4634, %4614 ], [ %4391, %4479 ]
  %4503 = phi float [ %4635, %4614 ], [ 0.000000e+00, %4479 ]
  %4504 = phi float [ %4636, %4614 ], [ %4390, %4479 ]
  %4505 = phi float [ %4637, %4614 ], [ %4381, %4479 ]
  %4506 = phi float [ %4638, %4614 ], [ %4382, %4479 ]
  %4507 = phi float [ %4639, %4614 ], [ %4383, %4479 ]
  %4508 = add nuw nsw i32 %4482, %4477
  %4509 = shl i32 %4508, 2
  %4510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.i32 %4510, 0
  %4512 = shl i32 %4511, 8
  %4513 = or i32 %4512, 48
  %4514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.ResRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.ResRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.ResRet.f32 %4514, 3
  %4519 = or i32 %4512, 64
  %4520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4521 = extractvalue %dx.types.ResRet.i32 %4520, 0
  %4522 = extractvalue %dx.types.ResRet.i32 %4520, 1
  %4523 = or i32 %4512, 80
  %4524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4523, i32 undef)  ; BufferLoad(srv,index,wot)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 3
  %4527 = or i32 %4512, 96
  %4528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.ResRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.ResRet.f32 %4528, 2
  %4532 = extractvalue %dx.types.ResRet.f32 %4528, 3
  %4533 = or i32 %4512, 112
  %4534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4536 = or i32 %4512, 128
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = extractvalue %dx.types.ResRet.f32 %4537, 3
  %4542 = or i32 %4512, 144
  %4543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = or i32 %4512, 160
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = or i32 %4512, 192
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = or i32 %4512, 208
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = or i32 %4512, 248
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = add nuw nsw i32 %4482, 1
  %4565 = bitcast float %4518 to i32
  %4566 = and i32 %4565, 512
  %4567 = icmp eq i32 %4566, 0
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4573 = call float @dx.op.dot4.f32(i32 56, float %4569, float %4570, float %4571, float %4572, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4574 = or i32 %4512, 16
  %4575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = call float @dx.op.dot4.f32(i32 56, float %4576, float %4577, float %4578, float %4579, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4581 = or i32 %4512, 32
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = call float @dx.op.dot4.f32(i32 56, float %4583, float %4584, float %4585, float %4586, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4588 = call float @dx.op.unary.f32(i32 27, float %4573)  ; Round_ni(value)
  %4589 = call float @dx.op.unary.f32(i32 6, float %4588)  ; FAbs(value)
  %4590 = call float @dx.op.unary.f32(i32 27, float %4580)  ; Round_ni(value)
  %4591 = call float @dx.op.unary.f32(i32 6, float %4590)  ; FAbs(value)
  %4592 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4593 = call float @dx.op.unary.f32(i32 27, float %4592)  ; Round_ni(value)
  %4594 = fadd fast float %4591, %4589
  %4595 = fadd fast float %4594, %4593
  %4596 = fcmp fast oeq float %4595, 0.000000e+00
  %4597 = call float @dx.op.dot4.f32(i32 56, float %4569, float %4570, float %4571, float %4572, float %4434, float %4435, float %4436, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4598 = call float @dx.op.dot4.f32(i32 56, float %4576, float %4577, float %4578, float %4579, float %4434, float %4435, float %4436, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4599 = call float @dx.op.dot4.f32(i32 56, float %4569, float %4570, float %4571, float %4572, float %4437, float %4438, float %4439, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4600 = call float @dx.op.dot4.f32(i32 56, float %4576, float %4577, float %4578, float %4579, float %4437, float %4438, float %4439, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4601 = fsub fast float %4597, %4573
  %4602 = fsub fast float %4599, %4573
  %4603 = fsub fast float %4598, %4580
  %4604 = fsub fast float %4600, %4580
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4516, float %4517, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 2
  %4608 = fadd fast float %4607, %4605
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4611 = fcmp fast ogt float %4609, %4610
  %4612 = and i1 %4596, %4611
  %4613 = and i1 %4567, %4612
  br i1 %4613, label %4641, label %4614

; <label>:4614                                    ; preds = %4971, %4722, %4641, %4481
  %4615 = phi float [ %4483, %4641 ], [ %4725, %4722 ], [ %4725, %4971 ], [ %4483, %4481 ]
  %4616 = phi float [ %4484, %4641 ], [ %4484, %4722 ], [ %4947, %4971 ], [ %4484, %4481 ]
  %4617 = phi float [ %4485, %4641 ], [ %4485, %4722 ], [ %4946, %4971 ], [ %4485, %4481 ]
  %4618 = phi float [ %4486, %4641 ], [ %4486, %4722 ], [ %4944, %4971 ], [ %4486, %4481 ]
  %4619 = phi float [ %4487, %4641 ], [ %4487, %4722 ], [ %4922, %4971 ], [ %4487, %4481 ]
  %4620 = phi float [ %4488, %4641 ], [ %4488, %4722 ], [ %4923, %4971 ], [ %4488, %4481 ]
  %4621 = phi float [ %4489, %4641 ], [ %4489, %4722 ], [ %4924, %4971 ], [ %4489, %4481 ]
  %4622 = phi float [ %4490, %4641 ], [ %4490, %4722 ], [ %4849, %4971 ], [ %4490, %4481 ]
  %4623 = phi float [ %4491, %4641 ], [ %4491, %4722 ], [ %4847, %4971 ], [ %4491, %4481 ]
  %4624 = phi float [ %4492, %4641 ], [ %4492, %4722 ], [ %4892, %4971 ], [ %4492, %4481 ]
  %4625 = phi float [ %4493, %4641 ], [ %4493, %4722 ], [ %4893, %4971 ], [ %4493, %4481 ]
  %4626 = phi float [ %4494, %4641 ], [ %4494, %4722 ], [ %4894, %4971 ], [ %4494, %4481 ]
  %4627 = phi float [ %4495, %4641 ], [ %4495, %4722 ], [ %4981, %4971 ], [ %4495, %4481 ]
  %4628 = phi float [ %4496, %4641 ], [ %4496, %4722 ], [ %4982, %4971 ], [ %4496, %4481 ]
  %4629 = phi float [ %4497, %4641 ], [ %4497, %4722 ], [ %4983, %4971 ], [ %4497, %4481 ]
  %4630 = phi float [ %4498, %4641 ], [ %4498, %4722 ], [ %4828, %4971 ], [ %4498, %4481 ]
  %4631 = phi float [ %4499, %4641 ], [ %4499, %4722 ], [ %4829, %4971 ], [ %4499, %4481 ]
  %4632 = phi float [ %4500, %4641 ], [ %4500, %4722 ], [ %4830, %4971 ], [ %4500, %4481 ]
  %4633 = phi float [ %4501, %4641 ], [ %4501, %4722 ], [ %4902, %4971 ], [ %4501, %4481 ]
  %4634 = phi float [ %4502, %4641 ], [ %4502, %4722 ], [ %4899, %4971 ], [ %4502, %4481 ]
  %4635 = phi float [ %4503, %4641 ], [ %4503, %4722 ], [ %4896, %4971 ], [ %4503, %4481 ]
  %4636 = phi float [ %4504, %4641 ], [ %4504, %4722 ], [ %4845, %4971 ], [ %4504, %4481 ]
  %4637 = phi float [ %4505, %4641 ], [ %4505, %4722 ], [ %4840, %4971 ], [ %4505, %4481 ]
  %4638 = phi float [ %4506, %4641 ], [ %4506, %4722 ], [ %4841, %4971 ], [ %4506, %4481 ]
  %4639 = phi float [ %4507, %4641 ], [ %4507, %4722 ], [ %4842, %4971 ], [ %4507, %4481 ]
  %4640 = icmp eq i32 %4564, %4480
  br i1 %4640, label %4984, label %4481

; <label>:4641                                    ; preds = %4481
  %4642 = extractvalue %dx.types.ResRet.f32 %4534, 3
  %4643 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4645 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4646 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4647 = extractvalue %dx.types.ResRet.i32 %4520, 3
  %4648 = extractvalue %dx.types.ResRet.i32 %4520, 2
  %4649 = add i32 %4647, 0
  %4650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4649, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4650, %dx.types.Handle %4651, float %4573, float %4580, float undef, float undef, i32 0, i32 0, i32 undef, float %4601, float %4603, float undef, float %4602, float %4604, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = fmul fast float %4653, %4646
  %4655 = fadd fast float %4654, %4645
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fmul fast float %4573, %4529
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4580, float %4657)  ; FMad(a,b,c)
  %4659 = fadd fast float %4658, %4644
  %4660 = fmul fast float %4573, %4531
  %4661 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4580, float %4660)  ; FMad(a,b,c)
  %4662 = fadd fast float %4661, %4643
  %4663 = fmul fast float %4601, %4529
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4603, float %4663)  ; FMad(a,b,c)
  %4665 = fmul fast float %4601, %4531
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4603, float %4665)  ; FMad(a,b,c)
  %4667 = fmul fast float %4602, %4529
  %4668 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4604, float %4667)  ; FMad(a,b,c)
  %4669 = fmul fast float %4602, %4531
  %4670 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4604, float %4669)  ; FMad(a,b,c)
  %4671 = add i32 %4648, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %4651, float %4659, float %4662, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4666, float undef, float %4668, float %4670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = and i32 %4565, 1024
  %4676 = icmp ne i32 %4675, 0
  %4677 = fcmp fast ogt float %4674, 0x3FE0101020000000
  %4678 = uitofp i1 %4677 to float
  %4679 = select i1 %4676, float %4678, float %4674
  %4680 = and i32 %4565, 8192
  %4681 = icmp ne i32 %4680, 0
  %4682 = select i1 %4681, float %4642, float 1.000000e+00
  %4683 = fmul fast float %4573, 2.000000e+00
  %4684 = fadd fast float %4683, -1.000000e+00
  %4685 = call float @dx.op.unary.f32(i32 6, float %4684)  ; FAbs(value)
  %4686 = fmul fast float %4685, %4562
  %4687 = fsub fast float %4686, %4562
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4580, 2.000000e+00
  %4690 = fadd fast float %4689, -1.000000e+00
  %4691 = call float @dx.op.unary.f32(i32 6, float %4690)  ; FAbs(value)
  %4692 = fmul fast float %4691, %4563
  %4693 = fsub fast float %4692, %4563
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4592, %4525
  %4696 = fsub fast float %4695, %4525
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fmul fast float %4656, %4682
  %4699 = fmul fast float %4698, %4653
  %4700 = fmul fast float %4699, %4688
  %4701 = fmul fast float %4700, %4679
  %4702 = fmul fast float %4701, %4694
  %4703 = fmul fast float %4702, %4697
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4707 = fsub fast float %4609, %4706
  %4708 = fmul fast float %4707, %4705
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4703, %4526
  %4711 = fadd fast float %4703, %4526
  %4712 = fmul fast float %4711, %4535
  %4713 = fsub fast float %4712, %4535
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = and i32 %4565, 128
  %4716 = icmp ne i32 %4715, 0
  %4717 = select i1 %4716, float %4714, float %4710
  %4718 = fmul fast float %4717, %4709
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = fcmp fast ugt float %4718, %4720
  br i1 %4721, label %4722, label %4614

; <label>:4722                                    ; preds = %4641
  %4723 = select i1 %4681, float %4718, float 0.000000e+00
  %4724 = fadd fast float %4723, %4483
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  br i1 %4681, label %4614, label %4726

; <label>:4726                                    ; preds = %4722
  %4727 = and i32 %4565, 4
  %4728 = and i32 %4565, 8
  %4729 = add i32 %4521, 0
  %4730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4729, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4732 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4730, %dx.types.Handle %4731, float %4659, float %4662, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4666, float undef, float %4668, float %4670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4736 = extractvalue %dx.types.ResRet.f32 %4732, 3
  %4737 = bitcast float %4547 to i32
  %4738 = and i32 %4737, 255
  %4739 = uitofp i32 %4738 to float
  %4740 = lshr i32 %4737, 8
  %4741 = and i32 %4740, 255
  %4742 = uitofp i32 %4741 to float
  %4743 = fmul fast float %4736, %4739
  %4744 = fadd fast float %4743, %4742
  %4745 = fmul fast float %4744, 0x3F70101000000000
  %4746 = add i32 %4522, 0
  %4747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4746, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4747, %dx.types.Handle %4731, float %4659, float %4662, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4666, float undef, float %4668, float %4670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = extractvalue %dx.types.ResRet.f32 %4748, 1
  %4751 = extractvalue %dx.types.ResRet.f32 %4748, 2
  %4752 = extractvalue %dx.types.ResRet.f32 %4748, 3
  %4753 = bitcast float %4541 to i32
  %4754 = and i32 %4753, 255
  %4755 = uitofp i32 %4754 to float
  %4756 = lshr i32 %4753, 8
  %4757 = and i32 %4756, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = lshr i32 %4753, 16
  %4760 = and i32 %4759, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = fmul fast float %4761, 0x3F70101000000000
  %4763 = fmul fast float %4749, %4755
  %4764 = fadd fast float %4763, %4758
  %4765 = fmul fast float %4764, 0x3F70101000000000
  %4766 = fadd fast float %4750, -5.000000e-01
  %4767 = fadd fast float %4752, -5.000000e-01
  %4768 = fmul fast float %4766, %4762
  %4769 = fmul fast float %4767, %4762
  %4770 = fadd fast float %4768, 5.000000e-01
  %4771 = fadd fast float %4769, 5.000000e-01
  %4772 = fmul fast float %4733, %4550
  %4773 = fmul fast float %4734, %4551
  %4774 = fmul fast float %4735, %4552
  %4775 = fmul fast float %4770, 2.000000e+00
  %4776 = fadd fast float %4775, -1.000000e+00
  %4777 = fmul fast float %4771, 2.000000e+00
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = fadd fast float %4776, %4778
  %4780 = fmul fast float %4779, 5.000000e-01
  %4781 = fsub fast float %4776, %4778
  %4782 = fmul fast float %4781, 5.000000e-01
  %4783 = call float @dx.op.unary.f32(i32 6, float %4780)  ; FAbs(value)
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = call float @dx.op.unary.f32(i32 6, float %4782)  ; FAbs(value)
  %4786 = fsub fast float %4784, %4785
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4782, float %4786, float %4780, float %4782, float %4786)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 25, float %4787)  ; Rsqrt(value)
  %4789 = fmul fast float %4780, %4788
  %4790 = fmul fast float %4782, %4788
  %4791 = fmul fast float %4788, %4786
  %4792 = fmul fast float %4791, %4515
  %4793 = fmul fast float %4791, %4516
  %4794 = fmul fast float %4791, %4517
  %4795 = fmul fast float %4789, %4538
  %4796 = fmul fast float %4789, %4539
  %4797 = fmul fast float %4789, %4540
  %4798 = fadd fast float %4795, %4792
  %4799 = fadd fast float %4796, %4793
  %4800 = fadd fast float %4797, %4794
  %4801 = fmul fast float %4790, %4544
  %4802 = fmul fast float %4790, %4545
  %4803 = fmul fast float %4790, %4546
  %4804 = fadd fast float %4798, %4801
  %4805 = fadd fast float %4799, %4802
  %4806 = fadd fast float %4800, %4803
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4804, %4808
  %4810 = fmul fast float %4805, %4808
  %4811 = fmul fast float %4806, %4808
  %4812 = icmp ne i32 %4728, 0
  %4813 = select i1 %4812, float 1.000000e+00, float 0.000000e+00
  %4814 = fmul fast float %4718, %4813
  %4815 = and i32 %4565, 1
  %4816 = icmp eq i32 %4815, 0
  br i1 %4816, label %4817, label %4821

; <label>:4817                                    ; preds = %4726
  %4818 = fsub fast float %4809, %4498
  %4819 = fsub fast float %4810, %4499
  %4820 = fsub fast float %4811, %4500
  br label %4821

; <label>:4821                                    ; preds = %4817, %4726
  %4822 = phi float [ %4818, %4817 ], [ %4809, %4726 ]
  %4823 = phi float [ %4819, %4817 ], [ %4810, %4726 ]
  %4824 = phi float [ %4820, %4817 ], [ %4811, %4726 ]
  %4825 = fmul float %4824, %4814
  %4826 = fmul float %4823, %4814
  %4827 = fmul float %4822, %4814
  %4828 = fadd fast float %4827, %4498
  %4829 = fadd fast float %4826, %4499
  %4830 = fadd fast float %4825, %4500
  %4831 = icmp ne i32 %4727, 0
  %4832 = select i1 %4831, float 1.000000e+00, float 0.000000e+00
  %4833 = fmul fast float %4718, %4832
  %4834 = fsub fast float %4772, %4505
  %4835 = fsub fast float %4773, %4506
  %4836 = fsub fast float %4774, %4507
  %4837 = fmul fast float %4834, %4833
  %4838 = fmul fast float %4835, %4833
  %4839 = fmul fast float %4836, %4833
  %4840 = fadd fast float %4837, %4505
  %4841 = fadd fast float %4838, %4506
  %4842 = fadd fast float %4839, %4507
  %4843 = fsub fast float %4745, %4504
  %4844 = fmul fast float %4843, %4833
  %4845 = fadd fast float %4844, %4504
  %4846 = fmul fast float %4833, %4491
  %4847 = fsub fast float %4491, %4846
  %4848 = fmul fast float %4833, %4490
  %4849 = fsub fast float %4490, %4848
  %4850 = bitcast float %4559 to i32
  %4851 = lshr i32 %4850, 16
  %4852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4851)  ; LegacyF16ToF32(value)
  %4853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4854 = extractvalue %dx.types.ResRet.i32 %4853, 0
  %4855 = and i32 %4854, 1
  %4856 = icmp eq i32 %4855, 0
  br i1 %4856, label %4857, label %4882

; <label>:4857                                    ; preds = %4821
  %4858 = fadd fast float %4745, 0xBFB99999A0000000
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, 0x3FF1C71C80000000
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4862, %4772
  %4864 = fmul fast float %4862, %4773
  %4865 = fmul fast float %4862, %4774
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.binary.f32(i32 35, float %4867, float %4868)  ; FMax(a,b)
  %4870 = call float @dx.op.binary.f32(i32 35, float %4866, float %4869)  ; FMax(a,b)
  %4871 = fcmp fast ogt float %4870, 0.000000e+00
  %4872 = bitcast float %4870 to i32
  %4873 = sub nsw i32 2129859010, %4872
  %4874 = bitcast i32 %4873 to float
  %4875 = select i1 %4871, float %4874, float 0.000000e+00
  %4876 = fmul fast float %4866, %4852
  %4877 = fmul fast float %4867, %4852
  %4878 = fmul fast float %4868, %4852
  %4879 = fmul fast float %4876, %4875
  %4880 = fmul fast float %4877, %4875
  %4881 = fmul fast float %4878, %4875
  br label %4882

; <label>:4882                                    ; preds = %4857, %4821
  %4883 = phi float [ %4852, %4821 ], [ %4879, %4857 ]
  %4884 = phi float [ %4852, %4821 ], [ %4880, %4857 ]
  %4885 = phi float [ %4852, %4821 ], [ %4881, %4857 ]
  %4886 = fsub fast float %4883, %4492
  %4887 = fsub fast float %4884, %4493
  %4888 = fsub fast float %4885, %4494
  %4889 = fmul fast float %4886, %4833
  %4890 = fmul fast float %4887, %4833
  %4891 = fmul fast float %4888, %4833
  %4892 = fadd fast float %4889, %4492
  %4893 = fadd fast float %4890, %4493
  %4894 = fadd fast float %4891, %4494
  %4895 = fadd fast float %4718, %4503
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fsub fast float %4765, %4502
  %4898 = fmul fast float %4897, %4814
  %4899 = fadd fast float %4898, %4502
  %4900 = fsub fast float %4751, %4501
  %4901 = fmul fast float %4900, %4814
  %4902 = fadd fast float %4901, %4501
  br i1 %4816, label %4911, label %4903

; <label>:4903                                    ; preds = %4882
  %4904 = and i32 %4565, 32768
  %4905 = icmp eq i32 %4904, 0
  br i1 %4905, label %4921, label %4906

; <label>:4906                                    ; preds = %4903
  %4907 = fmul fast float %4814, 1.270000e+02
  %4908 = fadd fast float %4907, %4487
  %4909 = fadd fast float %4907, %4488
  %4910 = fadd fast float %4907, %4489
  br label %4921

; <label>:4911                                    ; preds = %4882
  %4912 = fsub fast float 1.270000e+02, %4487
  %4913 = fsub fast float 1.270000e+02, %4488
  %4914 = fsub fast float 1.270000e+02, %4489
  %4915 = fmul fast float %4814, %4912
  %4916 = fmul fast float %4814, %4913
  %4917 = fmul fast float %4814, %4914
  %4918 = fadd fast float %4915, %4487
  %4919 = fadd fast float %4916, %4488
  %4920 = fadd fast float %4917, %4489
  br label %4921

; <label>:4921                                    ; preds = %4911, %4906, %4903
  %4922 = phi float [ %4908, %4906 ], [ %4487, %4903 ], [ %4918, %4911 ]
  %4923 = phi float [ %4909, %4906 ], [ %4488, %4903 ], [ %4919, %4911 ]
  %4924 = phi float [ %4910, %4906 ], [ %4489, %4903 ], [ %4920, %4911 ]
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4773, float %4774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4929 = fmul fast float %4928, %4925
  %4930 = fadd fast float %4929, %4927
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = bitcast float %4553 to i32
  %4933 = and i32 %4932, 65535
  %4934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4933)  ; LegacyF16ToF32(value)
  %4935 = lshr i32 %4932, 16
  %4936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4935)  ; LegacyF16ToF32(value)
  %4937 = fcmp fast oge float %4934, 0.000000e+00
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = select i1 %4937, float %4934, float %4939
  %4941 = fadd fast float %4940, %4936
  %4942 = fsub fast float %4931, %4486
  %4943 = fmul fast float %4942, %4718
  %4944 = fadd fast float %4943, %4486
  %4945 = fmul fast float %4941, %4718
  %4946 = call float @dx.op.binary.f32(i32 35, float %4485, float %4945)  ; FMax(a,b)
  %4947 = call float @dx.op.binary.f32(i32 35, float %4484, float %4718)  ; FMax(a,b)
  %4948 = and i32 %4565, 16
  %4949 = icmp eq i32 %4948, 0
  br i1 %4949, label %4971, label %4950

; <label>:4950                                    ; preds = %4921
  %4951 = add i32 %4556, 0
  %4952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4952, %dx.types.Handle %4731, float %4659, float %4662, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4666, float undef, float %4668, float %4670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = and i32 %4850, 65535
  %4958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4957)  ; LegacyF16ToF32(value)
  %4959 = fmul fast float %4954, %4550
  %4960 = fmul fast float %4955, %4551
  %4961 = fmul fast float %4956, %4552
  %4962 = and i32 %4565, 16384
  %4963 = icmp ne i32 %4962, 0
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = select i1 %4963, float %4965, float 1.000000e+00
  %4967 = fmul fast float %4966, %4958
  %4968 = fmul fast float %4959, %4967
  %4969 = fmul fast float %4960, %4967
  %4970 = fmul fast float %4961, %4967
  br label %4971

; <label>:4971                                    ; preds = %4950, %4921
  %4972 = phi float [ %4968, %4950 ], [ 0.000000e+00, %4921 ]
  %4973 = phi float [ %4969, %4950 ], [ 0.000000e+00, %4921 ]
  %4974 = phi float [ %4970, %4950 ], [ 0.000000e+00, %4921 ]
  %4975 = fsub fast float %4972, %4495
  %4976 = fsub fast float %4973, %4496
  %4977 = fsub fast float %4974, %4497
  %4978 = fmul fast float %4975, %4718
  %4979 = fmul fast float %4976, %4718
  %4980 = fmul fast float %4977, %4718
  %4981 = fadd fast float %4978, %4495
  %4982 = fadd fast float %4979, %4496
  %4983 = fadd fast float %4980, %4497
  br label %4614

; <label>:4984                                    ; preds = %4614
  br label %4985

; <label>:4985                                    ; preds = %4984, %4427
  %4986 = phi float [ 0.000000e+00, %4427 ], [ %4615, %4984 ]
  %4987 = phi float [ %1219, %4427 ], [ %4616, %4984 ]
  %4988 = phi float [ %4396, %4427 ], [ %4617, %4984 ]
  %4989 = phi float [ %4394, %4427 ], [ %4618, %4984 ]
  %4990 = phi float [ %4387, %4427 ], [ %4619, %4984 ]
  %4991 = phi float [ %4388, %4427 ], [ %4620, %4984 ]
  %4992 = phi float [ %4389, %4427 ], [ %4621, %4984 ]
  %4993 = phi float [ 0.000000e+00, %4427 ], [ %4622, %4984 ]
  %4994 = phi float [ 0.000000e+00, %4427 ], [ %4623, %4984 ]
  %4995 = phi float [ %4384, %4427 ], [ %4624, %4984 ]
  %4996 = phi float [ %4385, %4427 ], [ %4625, %4984 ]
  %4997 = phi float [ %4386, %4427 ], [ %4626, %4984 ]
  %4998 = phi float [ %4378, %4427 ], [ %4627, %4984 ]
  %4999 = phi float [ %4379, %4427 ], [ %4628, %4984 ]
  %5000 = phi float [ %4380, %4427 ], [ %4629, %4984 ]
  %5001 = phi float [ %4422, %4427 ], [ %4630, %4984 ]
  %5002 = phi float [ %4423, %4427 ], [ %4631, %4984 ]
  %5003 = phi float [ %4424, %4427 ], [ %4632, %4984 ]
  %5004 = phi float [ %4392, %4427 ], [ %4633, %4984 ]
  %5005 = phi float [ %4391, %4427 ], [ %4634, %4984 ]
  %5006 = phi float [ 0.000000e+00, %4427 ], [ %4635, %4984 ]
  %5007 = phi float [ %4390, %4427 ], [ %4636, %4984 ]
  %5008 = phi float [ %4381, %4427 ], [ %4637, %4984 ]
  %5009 = phi float [ %4382, %4427 ], [ %4638, %4984 ]
  %5010 = phi float [ %4383, %4427 ], [ %4639, %4984 ]
  %5011 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float %5001, float %5002, float %5003)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 25, float %5011)  ; Rsqrt(value)
  %5013 = fmul fast float %5012, %5001
  %5014 = fmul fast float %5012, %5002
  %5015 = fmul fast float %5012, %5003
  %5016 = fadd fast float %5006, %1219
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %5013, float %5014, float %5015)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = call float @dx.op.unary.f32(i32 25, float %5018)  ; Rsqrt(value)
  %5020 = fmul fast float %5019, %5013
  %5021 = fmul fast float %5019, %5014
  %5022 = fmul fast float %5019, %5015
  br label %5023

; <label>:5023                                    ; preds = %4985, %4375
  %5024 = phi float [ %5020, %4985 ], [ %4422, %4375 ]
  %5025 = phi float [ %5021, %4985 ], [ %4423, %4375 ]
  %5026 = phi float [ %5022, %4985 ], [ %4424, %4375 ]
  %5027 = phi float [ %4998, %4985 ], [ %4378, %4375 ]
  %5028 = phi float [ %4999, %4985 ], [ %4379, %4375 ]
  %5029 = phi float [ %5000, %4985 ], [ %4380, %4375 ]
  %5030 = phi float [ %4995, %4985 ], [ %4384, %4375 ]
  %5031 = phi float [ %4996, %4985 ], [ %4385, %4375 ]
  %5032 = phi float [ %4997, %4985 ], [ %4386, %4375 ]
  %5033 = phi float [ %4990, %4985 ], [ %4387, %4375 ]
  %5034 = phi float [ %4991, %4985 ], [ %4388, %4375 ]
  %5035 = phi float [ %4992, %4985 ], [ %4389, %4375 ]
  %5036 = phi float [ %5008, %4985 ], [ %4381, %4375 ]
  %5037 = phi float [ %5009, %4985 ], [ %4382, %4375 ]
  %5038 = phi float [ %5010, %4985 ], [ %4383, %4375 ]
  %5039 = phi float [ %5007, %4985 ], [ %4390, %4375 ]
  %5040 = phi float [ %5017, %4985 ], [ %1219, %4375 ]
  %5041 = phi float [ %5005, %4985 ], [ %4391, %4375 ]
  %5042 = phi float [ %5004, %4985 ], [ %4392, %4375 ]
  %5043 = phi float [ %4994, %4985 ], [ 0.000000e+00, %4375 ]
  %5044 = phi float [ %4993, %4985 ], [ 0.000000e+00, %4375 ]
  %5045 = phi float [ %4986, %4985 ], [ 0.000000e+00, %4375 ]
  %5046 = phi float [ %4988, %4985 ], [ %4396, %4375 ]
  %5047 = phi float [ %4987, %4985 ], [ %1219, %4375 ]
  %5048 = phi float [ %4989, %4985 ], [ %4394, %4375 ]
  %5049 = fadd fast float %5039, 0xBFB99999A0000000
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fmul fast float %5050, 0x3FF1C71C80000000
  %5052 = call float @dx.op.binary.f32(i32 36, float %5039, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5053 = fsub fast float 1.000000e+00, %5051
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, %5036
  %5056 = fmul fast float %5054, %5037
  %5057 = fmul fast float %5054, %5038
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = fmul fast float %5051, %5036
  %5062 = fmul fast float %5051, %5037
  %5063 = fmul fast float %5051, %5038
  %5064 = fadd fast float %5061, %5052
  %5065 = fadd fast float %5062, %5052
  %5066 = fadd fast float %5063, %5052
  %5067 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.i32 %5071, 0
  %5073 = and i32 %5072, 1
  %5074 = icmp eq i32 %5073, 0
  br i1 %5074, label %5089, label %5075

; <label>:5075                                    ; preds = %5023
  %5076 = call float @dx.op.binary.f32(i32 35, float %5059, float %5060)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float %5058, float %5076)  ; FMax(a,b)
  %5078 = fcmp fast ogt float %5077, 0.000000e+00
  %5079 = bitcast float %5077 to i32
  %5080 = sub nsw i32 2129859010, %5079
  %5081 = bitcast i32 %5080 to float
  %5082 = select i1 %5078, float %5081, float 0.000000e+00
  %5083 = fmul fast float %5058, %5030
  %5084 = fmul fast float %5059, %5031
  %5085 = fmul fast float %5060, %5032
  %5086 = fmul fast float %5083, %5082
  %5087 = fmul fast float %5084, %5082
  %5088 = fmul fast float %5085, %5082
  br label %5089

; <label>:5089                                    ; preds = %5075, %5023
  %5090 = phi float [ %5086, %5075 ], [ %5030, %5023 ]
  %5091 = phi float [ %5087, %5075 ], [ %5031, %5023 ]
  %5092 = phi float [ %5088, %5075 ], [ %5032, %5023 ]
  %5093 = call float @dx.op.binary.f32(i32 36, float %5033, float 1.270000e+02)  ; FMin(a,b)
  %5094 = call float @dx.op.binary.f32(i32 36, float %5034, float 1.270000e+02)  ; FMin(a,b)
  %5095 = call float @dx.op.binary.f32(i32 36, float %5035, float 1.270000e+02)  ; FMin(a,b)
  %5096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.i32 %5096, 3
  %5098 = and i32 %5097, 8
  %5099 = icmp ne i32 %5098, 0
  %5100 = call float @dx.op.binary.f32(i32 35, float %5058, float %5036)  ; FMax(a,b)
  %5101 = call float @dx.op.binary.f32(i32 35, float %5059, float %5036)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5060, float %5036)  ; FMax(a,b)
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = select i1 %203, float %5036, float %5058
  %5105 = select i1 %203, float %5103, float %5059
  %5106 = select i1 %203, float 1.000000e+00, float %5060
  %5107 = select i1 %5099, float %5100, float %5104
  %5108 = select i1 %5099, float %5101, float %5105
  %5109 = select i1 %5099, float %5102, float %5106
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = select i1 %203, float %5110, float %5090
  %5112 = select i1 %203, float %5110, float %5091
  %5113 = select i1 %203, float %5110, float %5092
  %5114 = and i32 %179, 3
  %5115 = select i1 %173, i32 %5114, i32 0
  %5116 = icmp eq i32 %5115, 1
  br i1 %5116, label %5117, label %5193

; <label>:5117                                    ; preds = %5089
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = fadd fast float %5119, %142
  %5122 = fadd fast float %5120, %143
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.CBufRet.f32 %5123, 1
  %5126 = fsub fast float %5121, %5124
  %5127 = fsub fast float %5122, %5125
  %5128 = fmul fast float %5126, %5126
  %5129 = fmul fast float %5127, %5127
  %5130 = fadd fast float %5128, %5129
  %5131 = call float @dx.op.unary.f32(i32 24, float %5130)  ; Sqrt(value)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5123, 2
  %5133 = fcmp fast olt float %5131, %5132
  br i1 %5133, label %5134, label %5187

; <label>:5134                                    ; preds = %5117
  %5135 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5136 = fadd fast float %5135, %144
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5144 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5145 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5146 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5147 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5148 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5149 = fadd fast float %5146, %5121
  %5150 = fadd fast float %5147, %5122
  %5151 = fadd fast float %5136, %5148
  %5152 = fmul fast float %5149, %5138
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %5150, float %5140, float %5152)  ; FMad(a,b,c)
  %5154 = call float @dx.op.tertiary.f32(i32 46, float %5151, float %5142, float %5153)  ; FMad(a,b,c)
  %5155 = fmul fast float %5149, %5143
  %5156 = call float @dx.op.tertiary.f32(i32 46, float %5150, float %5144, float %5155)  ; FMad(a,b,c)
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %5151, float %5145, float %5156)  ; FMad(a,b,c)
  %5158 = fsub fast float %5154, %5146
  %5159 = fsub fast float %5157, %5147
  %5160 = fsub fast float %5158, %5124
  %5161 = fadd fast float %5160, %5132
  %5162 = fsub fast float %5159, %5125
  %5163 = fadd fast float %5162, %5132
  %5164 = extractvalue %dx.types.CBufRet.f32 %5123, 3
  %5165 = fmul fast float %5161, %5164
  %5166 = fmul fast float %5163, %5164
  %5167 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5169 = fsub fast float 1.000000e+00, %5167
  %5170 = fsub fast float 1.000000e+00, %5168
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5169, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = fcmp fast ugt float %5172, 0.000000e+00
  br i1 %5173, label %5174, label %5187

; <label>:5174                                    ; preds = %5134
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5177 = fmul fast float %5176, %5172
  %5178 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5179 = fadd fast float %5178, %5177
  %5180 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5181 = fadd fast float %5179, %5148
  %5182 = fmul fast float %5154, %5142
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5157, float %5145, float %5182)  ; FMad(a,b,c)
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5180, float %5183)  ; FMad(a,b,c)
  %5185 = fsub fast float %5184, %5148
  %5186 = fsub fast float %5185, %5135
  br label %5187

; <label>:5187                                    ; preds = %5174, %5134, %5117
  %5188 = phi i1 [ true, %5174 ], [ false, %5134 ], [ false, %5117 ]
  %5189 = phi float [ %5186, %5174 ], [ -1.310720e+05, %5134 ], [ -1.310720e+05, %5117 ]
  %5190 = fsub fast float %5189, %144
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = select i1 %5188, float %5191, float 1.000000e+00
  br label %5193

; <label>:5193                                    ; preds = %5187, %5089
  %5194 = phi float [ %5192, %5187 ], [ 0.000000e+00, %5089 ]
  %5195 = icmp eq i32 %5115, 3
  %5196 = select i1 %5195, float 1.000000e+00, float %5194
  %5197 = call float @dx.op.binary.f32(i32 35, float %5045, float %5196)  ; FMax(a,b)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fcmp fast une float %5198, 0.000000e+00
  %5200 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = call float @dx.op.unary.f32(i32 25, float %5200)  ; Rsqrt(value)
  br i1 %5199, label %5209, label %5202

; <label>:5202                                    ; preds = %5193
  %5203 = fmul fast float %5201, %142
  %5204 = fmul fast float %5201, %143
  %5205 = fmul fast float %5201, %144
  %5206 = fsub fast float -0.000000e+00, %5203
  %5207 = fsub fast float -0.000000e+00, %5204
  %5208 = fsub fast float -0.000000e+00, %5205
  br label %5377

; <label>:5209                                    ; preds = %5193
  %5210 = fmul fast float %142, %5201
  %5211 = fsub fast float -0.000000e+00, %5210
  %5212 = fmul fast float %143, %5201
  %5213 = fsub fast float -0.000000e+00, %5212
  %5214 = fmul fast float %144, %5201
  %5215 = fsub fast float -0.000000e+00, %5214
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5213, float %5215, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = fmul fast float %5198, 2.500000e+00
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fmul fast float %5198, 0x4013FFFFE0000000
  %5220 = fadd fast float %5219, 0xBFFFFFFFE0000000
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fmul fast float %5198, 0x4004000020000000
  %5223 = fadd fast float %5222, 0xBFF8000040000000
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5226 = fmul fast float %5049, 1.000000e+01
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fmul fast float %5227, 2.000000e+00
  %5229 = fsub fast float 3.000000e+00, %5228
  %5230 = fmul fast float %5227, %5227
  %5231 = fmul fast float %5230, %5229
  %5232 = fsub fast float 1.000000e+00, %5231
  %5233 = fsub fast float 0x3FE3333340000000, %5070
  %5234 = fmul fast float %5233, 0x400AAAAAA0000000
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fmul fast float %5232, %5235
  %5237 = fmul fast float %5107, 0x3FEA2B8620000000
  %5238 = fmul fast float %5108, 0x3FEA2B8620000000
  %5239 = fmul fast float %5109, 0x3FEA2B8620000000
  %5240 = fadd fast float %5237, 0x3FC81DFBA0000000
  %5241 = fmul fast float %5240, %5107
  %5242 = fadd fast float %5241, 0x3F910E6020000000
  %5243 = fadd fast float %5238, 0x3FC81DFBA0000000
  %5244 = fmul fast float %5243, %5108
  %5245 = fadd fast float %5244, 0x3F910E6020000000
  %5246 = fadd fast float %5239, 0x3FC81DFBA0000000
  %5247 = fmul fast float %5246, %5109
  %5248 = fadd fast float %5247, 0x3F910E6020000000
  %5249 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = fsub fast float %5249, %5107
  %5253 = fsub fast float %5250, %5108
  %5254 = fsub fast float %5251, %5109
  %5255 = fmul fast float %5252, %5225
  %5256 = fmul fast float %5255, %5236
  %5257 = fmul fast float %5253, %5225
  %5258 = fmul fast float %5257, %5236
  %5259 = fmul fast float %5254, %5225
  %5260 = fmul fast float %5259, %5236
  %5261 = fadd fast float %5256, %5107
  %5262 = fadd fast float %5258, %5108
  %5263 = fadd fast float %5260, %5109
  %5264 = fmul fast float %5042, %5042
  %5265 = fmul fast float %5264, %5264
  %5266 = fadd fast float %5221, 1.000000e+00
  %5267 = fsub fast float %5266, %5236
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fsub fast float 1.000000e+00, %5265
  %5272 = call float @dx.op.binary.f32(i32 36, float %5268, float %5271)  ; FMin(a,b)
  %5273 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5274 = call float @dx.op.binary.f32(i32 35, float %5272, float %5273)  ; FMax(a,b)
  %5275 = fadd fast float %5270, 0xBFE4CCCCC0000000
  %5276 = fmul fast float %5275, 0x4006DB6DA0000000
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %5277, 2.000000e+00
  %5279 = fsub fast float 3.000000e+00, %5278
  %5280 = bitcast float %5067 to i32
  %5281 = ashr i32 %5280, 1
  %5282 = add nsw i32 %5281, 532487669
  %5283 = bitcast i32 %5282 to float
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = bitcast float %5284 to i32
  %5286 = sub nsw i32 2129859010, %5285
  %5287 = bitcast i32 %5286 to float
  %5288 = fmul fast float %5287, 2.000000e+00
  %5289 = bitcast float %5068 to i32
  %5290 = ashr i32 %5289, 1
  %5291 = add nsw i32 %5290, 532487669
  %5292 = bitcast i32 %5291 to float
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = bitcast float %5293 to i32
  %5295 = sub nsw i32 2129859010, %5294
  %5296 = bitcast i32 %5295 to float
  %5297 = fmul fast float %5296, 2.000000e+00
  %5298 = bitcast float %5069 to i32
  %5299 = ashr i32 %5298, 1
  %5300 = add nsw i32 %5299, 532487669
  %5301 = bitcast i32 %5300 to float
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sub nsw i32 2129859010, %5303
  %5305 = bitcast i32 %5304 to float
  %5306 = fmul fast float %5305, 2.000000e+00
  %5307 = fsub fast float 0x4002A9FBE0000000, %5288
  %5308 = fadd fast float %5288, 0x3FD54FDF00000000
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5311, %5307
  %5313 = fmul fast float %5312, %5312
  %5314 = fsub fast float 0x4002A9FBE0000000, %5297
  %5315 = fadd fast float %5297, 0x3FD54FDF00000000
  %5316 = bitcast float %5315 to i32
  %5317 = sub nsw i32 2129859010, %5316
  %5318 = bitcast i32 %5317 to float
  %5319 = fmul fast float %5318, %5314
  %5320 = fmul fast float %5319, %5319
  %5321 = fsub fast float 0x4002A9FBE0000000, %5306
  %5322 = fadd fast float %5306, 0x3FD54FDF00000000
  %5323 = bitcast float %5322 to i32
  %5324 = sub nsw i32 2129859010, %5323
  %5325 = bitcast i32 %5324 to float
  %5326 = fmul fast float %5325, %5321
  %5327 = fmul fast float %5326, %5326
  %5328 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5313)  ; FMax(a,b)
  %5329 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5320)  ; FMax(a,b)
  %5330 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5327)  ; FMax(a,b)
  %5331 = fsub fast float 1.000000e+00, %5216
  %5332 = fadd fast float %5331, %5232
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fsub fast float 1.000000e+00, %5196
  %5335 = fmul fast float %5274, %5334
  %5336 = fmul fast float %5277, %5277
  %5337 = fmul fast float %5336, %5335
  %5338 = fmul fast float %5337, %5279
  %5339 = fmul fast float %5334, 0xBFE99999A0000000
  %5340 = fmul fast float %5339, %5225
  %5341 = fmul fast float %5340, %5236
  %5342 = fadd fast float %5341, 1.000000e+00
  %5343 = fadd fast float %5070, -1.000000e+00
  %5344 = fmul fast float %5342, %5343
  %5345 = fadd fast float %5344, 1.000000e+00
  %5346 = fsub fast float %5328, %5067
  %5347 = fsub fast float %5329, %5068
  %5348 = fsub fast float %5330, %5069
  %5349 = fmul fast float %5338, %5346
  %5350 = fmul fast float %5338, %5347
  %5351 = fmul fast float %5338, %5348
  %5352 = fadd fast float %5349, %5067
  %5353 = fadd fast float %5350, %5068
  %5354 = fadd fast float %5351, %5069
  %5355 = fsub fast float %94, %5024
  %5356 = fsub fast float %95, %5025
  %5357 = fsub fast float %96, %5026
  %5358 = fmul fast float %5338, %5355
  %5359 = fmul fast float %5338, %5356
  %5360 = fmul fast float %5338, %5357
  %5361 = fadd fast float %5358, %5024
  %5362 = fadd fast float %5359, %5025
  %5363 = fadd fast float %5360, %5026
  %5364 = fmul fast float %5338, %5333
  %5365 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = fmul fast float %5364, %5366
  %5368 = fadd fast float %5367, %5365
  %5369 = fsub fast float 1.000000e+00, %5042
  %5370 = fmul fast float %5338, %5369
  %5371 = fadd fast float %5370, %5042
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5362, float %5363, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = call float @dx.op.unary.f32(i32 25, float %5372)  ; Rsqrt(value)
  %5374 = fmul fast float %5361, %5373
  %5375 = fmul fast float %5362, %5373
  %5376 = fmul fast float %5363, %5373
  br label %5377

; <label>:5377                                    ; preds = %5209, %5202
  %5378 = phi float [ %5208, %5202 ], [ %5215, %5209 ]
  %5379 = phi float [ %5207, %5202 ], [ %5213, %5209 ]
  %5380 = phi float [ %5206, %5202 ], [ %5211, %5209 ]
  %5381 = phi float [ %5205, %5202 ], [ %5214, %5209 ]
  %5382 = phi float [ %5204, %5202 ], [ %5212, %5209 ]
  %5383 = phi float [ %5203, %5202 ], [ %5210, %5209 ]
  %5384 = phi float [ %5107, %5202 ], [ %5261, %5209 ]
  %5385 = phi float [ %5108, %5202 ], [ %5262, %5209 ]
  %5386 = phi float [ %5109, %5202 ], [ %5263, %5209 ]
  %5387 = phi float [ %5067, %5202 ], [ %5352, %5209 ]
  %5388 = phi float [ %5068, %5202 ], [ %5353, %5209 ]
  %5389 = phi float [ %5069, %5202 ], [ %5354, %5209 ]
  %5390 = phi float [ %5024, %5202 ], [ %5374, %5209 ]
  %5391 = phi float [ %5025, %5202 ], [ %5375, %5209 ]
  %5392 = phi float [ %5026, %5202 ], [ %5376, %5209 ]
  %5393 = phi float [ %5070, %5202 ], [ %5368, %5209 ]
  %5394 = phi float [ %5042, %5202 ], [ %5371, %5209 ]
  %5395 = select i1 %203, float 0.000000e+00, float %5389
  %5396 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %5380, float %5379, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5382, float %5381, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fmul fast float %5398, 2.000000e+00
  %5400 = fmul fast float %5399, %5390
  %5401 = fmul fast float %5399, %5391
  %5402 = fmul fast float %5399, %5392
  %5403 = fsub fast float %5383, %5400
  %5404 = fsub fast float %5382, %5401
  %5405 = fsub fast float %5381, %5402
  %5406 = call float @dx.op.binary.f32(i32 36, float %5394, float 1.000000e+00)  ; FMin(a,b)
  %5407 = fsub fast float 1.000000e+00, %5394
  %5408 = bitcast float %5407 to i32
  %5409 = sub nsw i32 2129859010, %5408
  %5410 = bitcast i32 %5409 to float
  %5411 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5412 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fcmp fast oeq float %5412, 0.000000e+00
  %5414 = fcmp fast oeq float %5411, 0.000000e+00
  %5415 = or i1 %5414, %5413
  br i1 %5415, label %5445, label %5416

; <label>:5416                                    ; preds = %5377
  %5417 = fsub fast float -0.000000e+00, %61
  %5418 = fsub fast float -0.000000e+00, %59
  %5419 = call float @dx.op.unary.f32(i32 24, float %5412)  ; Sqrt(value)
  %5420 = fdiv fast float %5419, %5411
  %5421 = fcmp fast ogt float %5420, 0x3FFB6F8900000000
  %5422 = select i1 %5421, float 0x3FFB6F8900000000, float %5420
  %5423 = fmul fast float %5422, 0x3FE8A23460000000
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = call float @dx.op.binary.f32(i32 35, float %5422, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5426 = fmul fast float %5424, %5411
  %5427 = fmul fast float %5425, 0x3FF279A740000000
  %5428 = fadd fast float %5427, -1.000000e+00
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %60, float %5417, float %5418, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 25, float %5429)  ; Rsqrt(value)
  %5431 = fmul fast float %5430, %5417
  %5432 = fmul fast float %5430, %5418
  %5433 = fmul fast float %5430, %60
  %5434 = fmul fast float %5428, %5428
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = fmul fast float %5425, 0x40005F8BE0000000
  %5437 = fsub fast float 0x400C5BF8A0000000, %5436
  %5438 = fdiv fast float %5426, %5437
  %5439 = fmul fast float %5438, 0x3FEE31C3C0000000
  %5440 = fmul fast float %5439, %5435
  %5441 = fmul fast float %5425, 0x3FDACB7480000000
  %5442 = fadd fast float %5441, 0xBFD7347680000000
  %5443 = fmul fast float %5442, %5438
  %5444 = fmul fast float %5443, %5435
  br label %5445

; <label>:5445                                    ; preds = %5416, %5377
  %5446 = phi float [ %5431, %5416 ], [ 0.000000e+00, %5377 ]
  %5447 = phi float [ %5432, %5416 ], [ 0.000000e+00, %5377 ]
  %5448 = phi float [ %5433, %5416 ], [ 0.000000e+00, %5377 ]
  %5449 = phi float [ %5440, %5416 ], [ 0.000000e+00, %5377 ]
  %5450 = phi float [ %5444, %5416 ], [ 0.000000e+00, %5377 ]
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = fmul fast float %5451, 0x3FDF454380000000
  %5453 = fmul fast float %5451, %5451
  %5454 = fmul fast float %5453, 0x3FEE471020000000
  %5455 = fadd fast float %5454, 0xBFD42F6020000000
  %5456 = fmul fast float %5411, 0x3FD20DD760000000
  %5457 = fmul fast float %5455, %5450
  %5458 = fadd fast float %5457, %5456
  %5459 = fmul fast float %5452, %5449
  %5460 = fadd fast float %5458, %5459
  %5461 = fsub fast float %5458, %5459
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = fmul fast float %5462, 0x3FDF454380000000
  %5464 = fmul fast float %5462, %5462
  %5465 = fmul fast float %5464, 0x3FEE471020000000
  %5466 = fadd fast float %5465, 0xBFD42F6020000000
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5449, float %5450, float 0x3FD20DD760000000, float %5463, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5469 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = fcmp fast oeq float %5469, 0.000000e+00
  %5471 = fcmp fast oeq float %5468, 0.000000e+00
  %5472 = or i1 %5471, %5470
  br i1 %5472, label %5502, label %5473

; <label>:5473                                    ; preds = %5445
  %5474 = fsub fast float -0.000000e+00, %57
  %5475 = fsub fast float -0.000000e+00, %55
  %5476 = call float @dx.op.unary.f32(i32 24, float %5469)  ; Sqrt(value)
  %5477 = fdiv fast float %5476, %5468
  %5478 = fcmp fast ogt float %5477, 0x3FFB6F8900000000
  %5479 = select i1 %5478, float 0x3FFB6F8900000000, float %5477
  %5480 = fmul fast float %5479, 0x3FE8A23460000000
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = call float @dx.op.binary.f32(i32 35, float %5479, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5483 = fmul fast float %5481, %5468
  %5484 = fmul fast float %5482, 0x3FF279A740000000
  %5485 = fadd fast float %5484, -1.000000e+00
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %56, float %5474, float %5475, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 25, float %5486)  ; Rsqrt(value)
  %5488 = fmul fast float %5487, %5474
  %5489 = fmul fast float %5487, %5475
  %5490 = fmul fast float %5487, %56
  %5491 = fmul fast float %5485, %5485
  %5492 = fsub fast float 1.000000e+00, %5491
  %5493 = fmul fast float %5482, 0x40005F8BE0000000
  %5494 = fsub fast float 0x400C5BF8A0000000, %5493
  %5495 = fdiv fast float %5483, %5494
  %5496 = fmul fast float %5495, 0x3FEE31C3C0000000
  %5497 = fmul fast float %5496, %5492
  %5498 = fmul fast float %5482, 0x3FDACB7480000000
  %5499 = fadd fast float %5498, 0xBFD7347680000000
  %5500 = fmul fast float %5499, %5495
  %5501 = fmul fast float %5500, %5492
  br label %5502

; <label>:5502                                    ; preds = %5473, %5445
  %5503 = phi float [ %5488, %5473 ], [ 0.000000e+00, %5445 ]
  %5504 = phi float [ %5489, %5473 ], [ 0.000000e+00, %5445 ]
  %5505 = phi float [ %5490, %5473 ], [ 0.000000e+00, %5445 ]
  %5506 = phi float [ %5497, %5473 ], [ 0.000000e+00, %5445 ]
  %5507 = phi float [ %5501, %5473 ], [ 0.000000e+00, %5445 ]
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %5505, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fmul fast float %5508, 0x3FDF454380000000
  %5510 = fmul fast float %5508, %5508
  %5511 = fmul fast float %5510, 0x3FEE471020000000
  %5512 = fadd fast float %5511, 0xBFD42F6020000000
  %5513 = fmul fast float %5468, 0x3FD20DD760000000
  %5514 = fmul fast float %5512, %5507
  %5515 = fadd fast float %5514, %5513
  %5516 = fmul fast float %5509, %5506
  %5517 = fadd fast float %5515, %5516
  %5518 = fsub fast float %5515, %5516
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %5505, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fmul fast float %5519, 0x3FDF454380000000
  %5521 = fmul fast float %5519, %5519
  %5522 = fmul fast float %5521, 0x3FEE471020000000
  %5523 = fadd fast float %5522, 0xBFD42F6020000000
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5506, float %5507, float 0x3FD20DD760000000, float %5520, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5526 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fcmp fast oeq float %5526, 0.000000e+00
  %5528 = fcmp fast oeq float %5525, 0.000000e+00
  %5529 = or i1 %5528, %5527
  br i1 %5529, label %5559, label %5530

; <label>:5530                                    ; preds = %5502
  %5531 = fsub fast float -0.000000e+00, %53
  %5532 = fsub fast float -0.000000e+00, %51
  %5533 = call float @dx.op.unary.f32(i32 24, float %5526)  ; Sqrt(value)
  %5534 = fdiv fast float %5533, %5525
  %5535 = fcmp fast ogt float %5534, 0x3FFB6F8900000000
  %5536 = select i1 %5535, float 0x3FFB6F8900000000, float %5534
  %5537 = fmul fast float %5536, 0x3FE8A23460000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5536, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5540 = fmul fast float %5538, %5525
  %5541 = fmul fast float %5539, 0x3FF279A740000000
  %5542 = fadd fast float %5541, -1.000000e+00
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5532, float %52, float %5531, float %5532, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.unary.f32(i32 25, float %5543)  ; Rsqrt(value)
  %5545 = fmul fast float %5544, %5531
  %5546 = fmul fast float %5544, %5532
  %5547 = fmul fast float %5544, %52
  %5548 = fmul fast float %5542, %5542
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = fmul fast float %5539, 0x40005F8BE0000000
  %5551 = fsub fast float 0x400C5BF8A0000000, %5550
  %5552 = fdiv fast float %5540, %5551
  %5553 = fmul fast float %5552, 0x3FEE31C3C0000000
  %5554 = fmul fast float %5553, %5549
  %5555 = fmul fast float %5539, 0x3FDACB7480000000
  %5556 = fadd fast float %5555, 0xBFD7347680000000
  %5557 = fmul fast float %5556, %5552
  %5558 = fmul fast float %5557, %5549
  br label %5559

; <label>:5559                                    ; preds = %5530, %5502
  %5560 = phi float [ %5545, %5530 ], [ 0.000000e+00, %5502 ]
  %5561 = phi float [ %5546, %5530 ], [ 0.000000e+00, %5502 ]
  %5562 = phi float [ %5547, %5530 ], [ 0.000000e+00, %5502 ]
  %5563 = phi float [ %5554, %5530 ], [ 0.000000e+00, %5502 ]
  %5564 = phi float [ %5558, %5530 ], [ 0.000000e+00, %5502 ]
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %5562, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = fmul fast float %5565, 0x3FDF454380000000
  %5567 = fmul fast float %5565, %5565
  %5568 = fmul fast float %5567, 0x3FEE471020000000
  %5569 = fadd fast float %5568, 0xBFD42F6020000000
  %5570 = fmul fast float %5525, 0x3FD20DD760000000
  %5571 = fmul fast float %5569, %5564
  %5572 = fadd fast float %5571, %5570
  %5573 = fmul fast float %5566, %5563
  %5574 = fadd fast float %5572, %5573
  %5575 = fsub fast float %5572, %5573
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %5562, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = fmul fast float %5576, 0x3FDF454380000000
  %5578 = fmul fast float %5576, %5576
  %5579 = fmul fast float %5578, 0x3FEE471020000000
  %5580 = fadd fast float %5579, 0xBFD42F6020000000
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5525, float %5563, float %5564, float 0x3FD20DD760000000, float %5577, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = call float @dx.op.binary.f32(i32 35, float %5460, float 0.000000e+00)  ; FMax(a,b)
  %5583 = call float @dx.op.binary.f32(i32 35, float %5517, float 0.000000e+00)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5574, float 0.000000e+00)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5461, float 0.000000e+00)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5518, float 0.000000e+00)  ; FMax(a,b)
  %5587 = call float @dx.op.binary.f32(i32 35, float %5575, float 0.000000e+00)  ; FMax(a,b)
  %5588 = call float @dx.op.binary.f32(i32 35, float %5467, float 0.000000e+00)  ; FMax(a,b)
  %5589 = call float @dx.op.binary.f32(i32 35, float %5524, float 0.000000e+00)  ; FMax(a,b)
  %5590 = call float @dx.op.binary.f32(i32 35, float %5581, float 0.000000e+00)  ; FMax(a,b)
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = call float @dx.op.binary.f32(i32 36, float %5384, float %5592)  ; FMin(a,b)
  %5594 = fsub fast float 1.000000e+00, %5406
  %5595 = fmul fast float %5593, %5594
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = bitcast float %5596 to i32
  %5598 = sub nsw i32 2129859010, %5597
  %5599 = bitcast i32 %5598 to float
  %5600 = call float @dx.op.binary.f32(i32 36, float %5385, float %5592)  ; FMin(a,b)
  %5601 = fmul fast float %5600, %5594
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = bitcast float %5602 to i32
  %5604 = sub nsw i32 2129859010, %5603
  %5605 = bitcast i32 %5604 to float
  %5606 = call float @dx.op.binary.f32(i32 36, float %5386, float %5592)  ; FMin(a,b)
  %5607 = fmul fast float %5606, %5594
  %5608 = fsub fast float 1.000000e+00, %5607
  %5609 = bitcast float %5608 to i32
  %5610 = sub nsw i32 2129859010, %5609
  %5611 = bitcast i32 %5610 to float
  %5612 = fmul fast float %5582, %5406
  %5613 = fmul fast float %5612, %5599
  %5614 = fmul fast float %5583, %5406
  %5615 = fmul fast float %5614, %5605
  %5616 = fmul fast float %5584, %5406
  %5617 = fmul fast float %5616, %5611
  %5618 = call float @dx.op.binary.f32(i32 36, float %5387, float %5592)  ; FMin(a,b)
  %5619 = fmul fast float %5618, %5594
  %5620 = fsub fast float 1.000000e+00, %5619
  %5621 = bitcast float %5620 to i32
  %5622 = sub nsw i32 2129859010, %5621
  %5623 = bitcast i32 %5622 to float
  %5624 = call float @dx.op.binary.f32(i32 36, float %5388, float %5592)  ; FMin(a,b)
  %5625 = fmul fast float %5624, %5594
  %5626 = fsub fast float 1.000000e+00, %5625
  %5627 = bitcast float %5626 to i32
  %5628 = sub nsw i32 2129859010, %5627
  %5629 = bitcast i32 %5628 to float
  %5630 = call float @dx.op.binary.f32(i32 36, float %5395, float %5592)  ; FMin(a,b)
  %5631 = fmul fast float %5630, %5594
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = bitcast float %5632 to i32
  %5634 = sub nsw i32 2129859010, %5633
  %5635 = bitcast i32 %5634 to float
  %5636 = fmul fast float %5588, %5406
  %5637 = fmul fast float %5636, %5623
  %5638 = fmul fast float %5589, %5406
  %5639 = fmul fast float %5638, %5629
  %5640 = fmul fast float %5590, %5406
  %5641 = fmul fast float %5640, %5635
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5615, float %5617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = select i1 %203, float 0.000000e+00, float %5613
  %5644 = select i1 %203, float %5642, float %5615
  %5645 = select i1 %203, float 0.000000e+00, float %5617
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = select i1 %203, float 0.000000e+00, float %5585
  %5648 = select i1 %203, float %5646, float %5586
  %5649 = select i1 %203, float 0.000000e+00, float %5587
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5639, float %5641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = select i1 %203, float 0.000000e+00, float %5637
  %5652 = select i1 %203, float %5650, float %5639
  %5653 = select i1 %203, float 0.000000e+00, float %5641
  %5654 = fmul fast float %4393, %4393
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fmul fast float %5397, 9.843750e-01
  %5657 = fmul fast float %5393, 9.843750e-01
  %5658 = fadd fast float %5656, 7.812500e-03
  %5659 = fadd fast float %5657, 7.812500e-03
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5658, float %5659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = extractvalue %dx.types.ResRet.f32 %5660, 3
  %5665 = fsub fast float 1.000000e+00, %5655
  %5666 = fsub fast float %5663, %5661
  %5667 = fsub fast float %5664, %5662
  %5668 = fmul fast float %5666, %5665
  %5669 = fmul fast float %5667, %5665
  %5670 = fadd fast float %5668, %5661
  %5671 = fadd fast float %5669, %5662
  %5672 = fmul fast float %5670, %5387
  %5673 = fmul fast float %5670, %5388
  %5674 = fmul fast float %5670, %5395
  %5675 = fadd fast float %5672, %5671
  %5676 = fadd fast float %5673, %5671
  %5677 = fadd fast float %5674, %5671
  %5678 = fcmp fast ogt float %5043, 0.000000e+00
  br i1 %5678, label %5679, label %5705

; <label>:5679                                    ; preds = %5559
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5043, float %5397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fadd fast float %5682, -5.000000e-01
  %5686 = fadd fast float %5683, -5.000000e-01
  %5687 = fsub fast float 1.000000e+00, %5387
  %5688 = fsub fast float 1.000000e+00, %5388
  %5689 = fsub fast float 1.000000e+00, %5395
  %5690 = fmul fast float %5387, 4.000000e+00
  %5691 = fmul fast float %5690, %5687
  %5692 = fmul fast float %5691, %5684
  %5693 = fmul fast float %5388, 4.000000e+00
  %5694 = fmul fast float %5693, %5688
  %5695 = fmul fast float %5694, %5685
  %5696 = fmul fast float %5395, 4.000000e+00
  %5697 = fmul fast float %5696, %5689
  %5698 = fmul fast float %5697, %5686
  %5699 = fadd fast float %5692, %5675
  %5700 = fadd fast float %5695, %5676
  %5701 = fadd fast float %5698, %5677
  %5702 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5703 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5704 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  br label %5705

; <label>:5705                                    ; preds = %5679, %5559
  %5706 = phi float [ %5702, %5679 ], [ %5675, %5559 ]
  %5707 = phi float [ %5703, %5679 ], [ %5676, %5559 ]
  %5708 = phi float [ %5704, %5679 ], [ %5677, %5559 ]
  %5709 = call float @dx.op.binary.f32(i32 35, float %5707, float %5708)  ; FMax(a,b)
  %5710 = call float @dx.op.binary.f32(i32 35, float %5706, float %5709)  ; FMax(a,b)
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5385, float %5386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = fcmp fast ogt float %5712, 0x3E7FF19E20000000
  %5714 = fdiv fast float 1.000000e+00, %5712
  %5715 = select i1 %5713, float %5714, float 0.000000e+00
  %5716 = fmul fast float %5715, %5384
  %5717 = fmul fast float %5715, %5385
  %5718 = fmul fast float %5715, %5386
  %5719 = fadd fast float %5716, -1.000000e+00
  %5720 = fadd fast float %5717, -1.000000e+00
  %5721 = fadd fast float %5718, -1.000000e+00
  %5722 = fmul fast float %5719, 5.000000e-01
  %5723 = fmul fast float %5720, 5.000000e-01
  %5724 = fmul fast float %5721, 5.000000e-01
  %5725 = fadd fast float %5722, 1.000000e+00
  %5726 = fadd fast float %5723, 1.000000e+00
  %5727 = fadd fast float %5724, 1.000000e+00
  %5728 = call float @dx.op.binary.f32(i32 35, float %5397, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5729 = fdiv fast float %4393, %5728
  %5730 = fcmp fast olt float %5093, 1.270000e+02
  %5731 = fcmp fast olt float %5094, 1.270000e+02
  %5732 = fcmp fast olt float %5095, 1.270000e+02
  %5733 = fmul fast float %5093, 0xBFF7154760000000
  %5734 = fmul fast float %5733, %5729
  %5735 = fmul fast float %5094, 0xBFF7154760000000
  %5736 = fmul fast float %5735, %5729
  %5737 = fmul fast float %5095, 0xBFF7154760000000
  %5738 = fmul fast float %5737, %5729
  %5739 = call float @dx.op.unary.f32(i32 21, float %5734)  ; Exp(value)
  %5740 = call float @dx.op.unary.f32(i32 21, float %5736)  ; Exp(value)
  %5741 = call float @dx.op.unary.f32(i32 21, float %5738)  ; Exp(value)
  %5742 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5743 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5744 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5745 = select i1 %5730, float %5742, float 0.000000e+00
  %5746 = select i1 %5731, float %5743, float 0.000000e+00
  %5747 = select i1 %5732, float %5744, float 0.000000e+00
  %5748 = fmul fast float %5745, %5711
  %5749 = fmul fast float %5746, %5711
  %5750 = fmul fast float %5747, %5711
  %5751 = fadd fast float %5748, -1.000000e+00
  %5752 = fadd fast float %5749, -1.000000e+00
  %5753 = fadd fast float %5750, -1.000000e+00
  %5754 = fmul fast float %5751, %5040
  %5755 = fmul fast float %5752, %5040
  %5756 = fmul fast float %5753, %5040
  %5757 = fmul fast float %5706, %5651
  %5758 = fmul fast float %5707, %5652
  %5759 = fmul fast float %5708, %5653
  %5760 = fsub fast float 1.000000e+00, %5397
  %5761 = bitcast float %5760 to i32
  %5762 = sitofp i32 %5761 to float
  %5763 = fmul fast float %5762, 5.000000e+00
  %5764 = fadd fast float %5763, 0xC1EFBF8940000000
  %5765 = fptosi float %5764 to i32
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5766, %5044
  %5768 = fmul fast float %5643, %5767
  %5769 = fmul fast float %5768, %5711
  %5770 = fmul fast float %5769, %5725
  %5771 = fmul fast float %5644, %5767
  %5772 = fmul fast float %5771, %5711
  %5773 = fmul fast float %5772, %5726
  %5774 = fmul fast float %5645, %5767
  %5775 = fmul fast float %5774, %5711
  %5776 = fmul fast float %5775, %5727
  %5777 = fadd fast float %5757, %5027
  %5778 = fadd fast float %5777, %5770
  %5779 = fmul fast float %5778, %5040
  %5780 = fadd fast float %5758, %5028
  %5781 = fadd fast float %5780, %5773
  %5782 = fmul fast float %5781, %5040
  %5783 = fadd fast float %5759, %5029
  %5784 = fadd fast float %5783, %5776
  %5785 = fmul fast float %5784, %5040
  %5786 = fmul fast float %5388, 0x4012D0A400000000
  %5787 = fadd fast float %5756, 1.000000e+00
  %5788 = fadd fast float %5755, 1.000000e+00
  %5789 = fadd fast float %5754, 1.000000e+00
  %5790 = fmul fast float %5711, %5645
  %5791 = fmul fast float %5711, %5644
  %5792 = fmul fast float %5711, %5643
  %5793 = fsub fast float 1.000000e+00, %5393
  %5794 = fmul fast float %5793, %5040
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = fadd fast float %5786, 0x3FDB6377A0000000
  %5799 = fmul fast float %5797, %5798
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = fadd fast float %5799, %5800
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5802, float 0x3F847AE140000000)  ; FMax(a,b)
  %5804 = fmul fast float %5803, %5803
  %5805 = fmul fast float %5804, %5804
  %5806 = fmul fast float %5805, 0xC00A935000000000
  %5807 = call float @dx.op.unary.f32(i32 21, float %5806)  ; Exp(value)
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = fmul fast float %5789, %5647
  %5810 = fmul fast float %5809, %5808
  %5811 = fmul fast float %5788, %5648
  %5812 = fmul fast float %5811, %5808
  %5813 = fmul fast float %5787, %5649
  %5814 = fmul fast float %5813, %5808
  %5815 = fadd fast float %5810, %5792
  %5816 = fmul fast float %5815, %5040
  %5817 = fadd fast float %5812, %5791
  %5818 = fmul fast float %5817, %5040
  %5819 = fadd fast float %5814, %5790
  %5820 = fmul fast float %5819, %5040
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 3
  %5823 = fcmp fast oeq float %5822, 0.000000e+00
  br i1 %5823, label %6953, label %5824

; <label>:5824                                    ; preds = %5705
  %5825 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5826 = extractvalue %dx.types.CBufRet.f32 %5821, 1
  %5827 = extractvalue %dx.types.CBufRet.f32 %5821, 2
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5828, 2
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = select i1 %203, float %5833, float %5829
  %5837 = select i1 %203, float %5835, float %5830
  %5838 = select i1 %203, float %5834, float %5831
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5841 = fmul fast float %5840, %94
  %5842 = fmul fast float %5840, %95
  %5843 = fmul fast float %5840, %96
  %5844 = fadd fast float %5841, %142
  %5845 = fadd fast float %5842, %143
  %5846 = fadd fast float %5843, %144
  %5847 = fcmp fast olt float %5822, 0.000000e+00
  br i1 %5847, label %6472, label %5848

; <label>:5848                                    ; preds = %5824
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5864 = fmul fast float %5850, %5844
  %5865 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5851, float %5864)  ; FMad(a,b,c)
  %5866 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5852, float %5865)  ; FMad(a,b,c)
  %5867 = fadd fast float %5866, %5853
  %5868 = fmul fast float %5855, %5844
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5856, float %5868)  ; FMad(a,b,c)
  %5870 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5857, float %5869)  ; FMad(a,b,c)
  %5871 = fadd fast float %5870, %5858
  %5872 = fmul fast float %5860, %5844
  %5873 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5861, float %5872)  ; FMad(a,b,c)
  %5874 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5862, float %5873)  ; FMad(a,b,c)
  %5875 = fadd fast float %5874, %5863
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5880 = fmul fast float %5879, %5867
  %5881 = fmul fast float %5879, %5871
  %5882 = fadd fast float %5880, %5877
  %5883 = fadd fast float %5881, %5878
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5888 = fmul fast float %5887, %5867
  %5889 = fmul fast float %5887, %5871
  %5890 = fadd fast float %5888, %5885
  %5891 = fadd fast float %5889, %5886
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5894 = fsub fast float %5893, %5875
  %5895 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5896 = fmul fast float %5894, %5895
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5902 = fadd fast float %5901, %5899
  %5903 = fcmp fast ogt float %5902, 0.000000e+00
  br i1 %5903, label %5904, label %5928

; <label>:5904                                    ; preds = %5848
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = fsub fast float %5890, %5906
  %5909 = fsub fast float %5891, %5907
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = fcmp fast olt float %5909, 0.000000e+00
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5917 = select i1 %5910, float %5913, float %5915
  %5918 = select i1 %5911, float %5914, float %5916
  %5919 = fmul fast float %5917, %5908
  %5920 = fmul fast float %5918, %5909
  %5921 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5922 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5924 = call float @dx.op.binary.f32(i32 35, float %5921, float %5922)  ; FMax(a,b)
  %5925 = fsub fast float %5923, %5924
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = fmul fast float %5926, %5898
  br label %5928

; <label>:5928                                    ; preds = %5904, %5848
  %5929 = phi float [ %5927, %5904 ], [ 0.000000e+00, %5848 ]
  %5930 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5931 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5932 = fadd fast float %5931, %5930
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  %5934 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  br i1 %5933, label %5935, label %5958

; <label>:5935                                    ; preds = %5928
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = fsub fast float %5882, %5937
  %5940 = fsub fast float %5883, %5938
  %5941 = fcmp fast olt float %5939, 0.000000e+00
  %5942 = fcmp fast olt float %5940, 0.000000e+00
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5954 = call float @dx.op.binary.f32(i32 35, float %5952, float %5953)  ; FMax(a,b)
  %5955 = fsub fast float %5934, %5954
  %5956 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5957 = fmul fast float %5956, %5898
  br label %5958

; <label>:5958                                    ; preds = %5935, %5928
  %5959 = phi float [ %5957, %5935 ], [ 0.000000e+00, %5928 ]
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5966 = fsub fast float %5867, %5964
  %5967 = fsub fast float %5871, %5965
  %5968 = fcmp fast olt float %5966, 0.000000e+00
  %5969 = fcmp fast olt float %5967, 0.000000e+00
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5974 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5975 = select i1 %5968, float %5971, float %5973
  %5976 = select i1 %5969, float %5972, float %5974
  %5977 = fmul fast float %5975, %5966
  %5978 = fmul fast float %5976, %5967
  %5979 = call float @dx.op.unary.f32(i32 6, float %5977)  ; FAbs(value)
  %5980 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5979, float %5980)  ; FMax(a,b)
  %5982 = fsub fast float %5934, %5981
  %5983 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5984 = call float @dx.op.binary.f32(i32 36, float %5983, float %5962)  ; FMin(a,b)
  %5985 = fmul fast float %5984, %5898
  %5986 = fsub fast float %5959, %5985
  %5987 = fsub fast float %5929, %5959
  %5988 = fsub fast float %5987, %5985
  %5989 = call float @dx.op.binary.f32(i32 35, float %5959, float %5929)  ; FMax(a,b)
  %5990 = call float @dx.op.binary.f32(i32 35, float %5985, float %5989)  ; FMax(a,b)
  %5991 = fcmp fast olt float %5990, 1.000000e+00
  br i1 %5991, label %5992, label %6390, !dx.controlflow.hints !78

; <label>:5992                                    ; preds = %5958
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = fcmp fast une float %5994, 0.000000e+00
  br i1 %5995, label %5996, label %6390, !dx.controlflow.hints !79

; <label>:5996                                    ; preds = %5992
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %6001 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6004 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6005 = extractvalue %dx.types.CBufRet.f32 %6002, 2
  %6006 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6012 = fmul fast float %5998, %5844
  %6013 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5999, float %6012)  ; FMad(a,b,c)
  %6014 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6000, float %6013)  ; FMad(a,b,c)
  %6015 = fadd fast float %6014, %6001
  %6016 = fmul fast float %6003, %5844
  %6017 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %6004, float %6016)  ; FMad(a,b,c)
  %6018 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6005, float %6017)  ; FMad(a,b,c)
  %6019 = fadd fast float %6018, %6006
  %6020 = fmul fast float %6008, %5844
  %6021 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %6009, float %6020)  ; FMad(a,b,c)
  %6022 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6010, float %6021)  ; FMad(a,b,c)
  %6023 = fadd fast float %6022, %6011
  %6024 = fcmp fast oge float %6015, 1.000000e+00
  %6025 = fcmp fast oge float %6019, 1.000000e+00
  %6026 = or i1 %6024, %6025
  %6027 = fcmp fast olt float %6015, 0.000000e+00
  %6028 = fcmp fast olt float %6019, 0.000000e+00
  %6029 = or i1 %6027, %6028
  %6030 = or i1 %6026, %6029
  br i1 %6030, label %6390, label %6031, !dx.controlflow.hints !80

; <label>:6031                                    ; preds = %5996
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.i32 %6036, 2
  %6038 = uitofp i32 %6037 to float
  %6039 = extractvalue %dx.types.CBufRet.i32 %6036, 3
  %6040 = uitofp i32 %6039 to float
  %6041 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6042 = fmul fast float %6041, 2.000000e+00
  %6043 = fsub fast float %6015, %6033
  %6044 = fsub fast float %6019, %6034
  %6045 = fmul fast float %6042, %6043
  %6046 = fmul fast float %6042, %6044
  %6047 = fdiv fast float 1.000000e+00, %5827
  %6048 = fmul fast float %6046, %6047
  %6049 = call float @dx.op.unary.f32(i32 6, float %6048)  ; FAbs(value)
  %6050 = fmul fast float %6035, %5846
  %6051 = fmul fast float %6050, %6042
  %6052 = call float @dx.op.unary.f32(i32 6, float %6051)  ; FAbs(value)
  %6053 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6054 = call float @dx.op.binary.f32(i32 35, float %6052, float %6049)  ; FMax(a,b)
  %6055 = call float @dx.op.binary.f32(i32 35, float %6053, float %6054)  ; FMax(a,b)
  %6056 = fmul fast float %6055, 2.000000e+00
  %6057 = call float @dx.op.unary.f32(i32 23, float %6056)  ; Log(value)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6057, float %6038)  ; FMax(a,b)
  %6059 = call float @dx.op.unary.f32(i32 22, float %6058)  ; Frc(value)
  %6060 = fadd fast float %6059, 0xBFEA666660000000
  %6061 = fmul fast float %6060, 8.000000e+00
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = call float @dx.op.unary.f32(i32 27, float %6058)  ; Round_ni(value)
  %6064 = fadd fast float %6063, %6062
  %6065 = call float @dx.op.binary.f32(i32 36, float %6064, float %6040)  ; FMin(a,b)
  %6066 = call float @dx.op.unary.f32(i32 27, float %6065)  ; Round_ni(value)
  %6067 = fsub fast float -0.000000e+00, %6066
  %6068 = call float @dx.op.unary.f32(i32 21, float %6067)  ; Exp(value)
  %6069 = fmul fast float %6068, %6042
  %6070 = fmul fast float %6069, %6015
  %6071 = fmul fast float %6069, %6019
  %6072 = fmul fast float %6070, 2.500000e-01
  %6073 = fmul fast float %6071, 2.500000e-01
  %6074 = fadd fast float %6072, 5.000000e-01
  %6075 = fadd fast float %6073, 5.000000e-01
  %6076 = fsub fast float %6040, %6038
  %6077 = fptoui float %6076 to i32
  %6078 = add i32 %6077, 320
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6078)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.CBufRet.f32 %6079, 1
  %6082 = fcmp fast une float %6065, %6040
  %6083 = fsub fast float %6015, %6080
  %6084 = fsub fast float %6019, %6081
  %6085 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6086 = call float @dx.op.unary.f32(i32 6, float %6084)  ; FAbs(value)
  %6087 = fmul fast float %6085, %6069
  %6088 = fmul fast float %6086, %6069
  %6089 = fcmp fast olt float %6087, 1.000000e+00
  %6090 = fcmp fast olt float %6088, 1.000000e+00
  %6091 = and i1 %6089, %6090
  %6092 = or i1 %6082, %6091
  br i1 %6092, label %6093, label %6390, !dx.controlflow.hints !81

; <label>:6093                                    ; preds = %6031
  %6094 = fmul fast float %6071, 5.000000e-01
  %6095 = fmul fast float %6070, 5.000000e-01
  %6096 = fadd fast float %6094, 5.000000e-01
  %6097 = fadd fast float %6095, 5.000000e-01
  %6098 = sitofp i32 %6037 to float
  %6099 = fsub fast float %6065, %6098
  %6100 = call float @dx.op.unary.f32(i32 27, float %6099)  ; Round_ni(value)
  %6101 = call float @dx.op.unary.f32(i32 22, float %6065)  ; Frc(value)
  %6102 = call float @dx.op.unary.f32(i32 22, float %6097)  ; Frc(value)
  %6103 = call float @dx.op.unary.f32(i32 22, float %6096)  ; Frc(value)
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6102, float %6103, float %6100, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.ResRet.f32 %6104, 3
  %6109 = fcmp fast ogt float %6101, 0.000000e+00
  br i1 %6109, label %6110, label %6131, !dx.controlflow.hints !82

; <label>:6110                                    ; preds = %6093
  %6111 = fadd fast float %6100, 1.000000e+00
  %6112 = call float @dx.op.unary.f32(i32 22, float %6074)  ; Frc(value)
  %6113 = call float @dx.op.unary.f32(i32 22, float %6075)  ; Frc(value)
  %6114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6112, float %6113, float %6111, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.ResRet.f32 %6114, 3
  %6119 = fsub fast float %6115, %6105
  %6120 = fsub fast float %6116, %6106
  %6121 = fsub fast float %6117, %6107
  %6122 = fsub fast float %6118, %6108
  %6123 = fmul fast float %6119, %6101
  %6124 = fmul fast float %6120, %6101
  %6125 = fmul fast float %6121, %6101
  %6126 = fmul fast float %6122, %6101
  %6127 = fadd fast float %6123, %6105
  %6128 = fadd fast float %6124, %6106
  %6129 = fadd fast float %6125, %6107
  %6130 = fadd fast float %6126, %6108
  br label %6131

; <label>:6131                                    ; preds = %6110, %6093
  %6132 = phi float [ %6127, %6110 ], [ %6105, %6093 ]
  %6133 = phi float [ %6128, %6110 ], [ %6106, %6093 ]
  %6134 = phi float [ %6129, %6110 ], [ %6107, %6093 ]
  %6135 = phi float [ %6130, %6110 ], [ %6108, %6093 ]
  %6136 = fadd fast float %6132, -5.000000e-01
  %6137 = fadd fast float %6134, -5.000000e-01
  %6138 = fmul fast float %6136, 0xBFD5555560000000
  %6139 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6137, float %6138)  ; FMad(a,b,c)
  %6140 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6133, float 0.000000e+00)  ; FMad(a,b,c)
  %6141 = fadd fast float %6140, %6135
  %6142 = fmul fast float %6136, -7.500000e-01
  %6143 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6137, float %6142)  ; FMad(a,b,c)
  %6144 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6133, float 0.000000e+00)  ; FMad(a,b,c)
  %6145 = fadd fast float %6144, %6135
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6153 = fsub fast float %6149, %6139
  %6154 = fsub fast float %6150, %6141
  %6155 = fsub fast float %6151, %6143
  %6156 = fsub fast float %6152, %6145
  %6157 = fmul fast float %6153, %6147
  %6158 = fmul fast float %6154, %6147
  %6159 = fmul fast float %6155, %6147
  %6160 = fmul fast float %6156, %6147
  %6161 = fadd fast float %6157, %6139
  %6162 = fadd fast float %6158, %6141
  %6163 = fadd fast float %6159, %6143
  %6164 = fadd fast float %6160, %6145
  %6165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6166 = extractvalue %dx.types.ResRet.i32 %6165, 0
  %6167 = and i32 %6166, 536870911
  %6168 = uitofp i32 %6167 to float
  %6169 = fmul fast float %6168, %6015
  %6170 = fmul fast float %6168, %6019
  %6171 = fptoui float %6169 to i32
  %6172 = fptoui float %6170 to i32
  %6173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.i32 %6173, 0
  %6175 = and i32 %6174, 31
  %6176 = lshr i32 %6171, %6175
  %6177 = lshr i32 %6172, %6175
  %6178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.i32 %6178, 0
  %6180 = and i32 %6179, 31
  %6181 = shl i32 1, %6180
  %6182 = call i32 @dx.op.binary.i32(i32 40, i32 %6181, i32 4)  ; UMin(a,b)
  %6183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.i32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.i32 %6183, 1
  %6186 = icmp eq i32 %6182, 0
  br i1 %6186, label %6228, label %6187

; <label>:6187                                    ; preds = %6131
  br label %6188

; <label>:6188                                    ; preds = %6216, %6187
  %6189 = phi i32 [ %6219, %6216 ], [ 0, %6187 ]
  %6190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6191 = extractvalue %dx.types.ResRet.i32 %6190, 0
  %6192 = lshr i32 %6191, 16
  %6193 = and i32 %6192, 31
  %6194 = shl i32 %6177, %6193
  %6195 = add i32 %6194, %6176
  %6196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.i32 %6196, 0
  %6198 = and i32 %6197, 31
  %6199 = shl i32 %6195, %6198
  %6200 = add i32 %6199, %6189
  %6201 = shl i32 %6200, 2
  %6202 = add i32 %6201, 32
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = icmp slt i32 %6204, 0
  %6206 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6189
  %6207 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6189
  %6208 = bitcast float* %6206 to i32*
  %6209 = bitcast float* %6207 to i32*
  br i1 %6205, label %6210, label %6216

; <label>:6210                                    ; preds = %6188
  %6211 = and i32 %6204, 1073741823
  %6212 = add nuw nsw i32 %6211, 20
  %6213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6212, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.i32 %6213, 0
  %6215 = extractvalue %dx.types.ResRet.i32 %6213, 1
  br label %6216

; <label>:6216                                    ; preds = %6210, %6188
  %6217 = phi i32 [ %6214, %6210 ], [ %6184, %6188 ]
  %6218 = phi i32 [ %6215, %6210 ], [ %6185, %6188 ]
  store i32 %6217, i32* %6208, align 4
  store i32 %6218, i32* %6209, align 4
  %6219 = add nuw i32 %6189, 1
  %6220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.i32 %6220, 2
  %6222 = icmp eq i32 %6221, 0
  %6223 = icmp ugt i32 %6204, -1073741825
  %6224 = and i1 %6223, %6222
  %6225 = icmp ult i32 %6219, %6182
  %6226 = and i1 %6224, %6225
  br i1 %6226, label %6188, label %6227

; <label>:6227                                    ; preds = %6216
  br label %6228

; <label>:6228                                    ; preds = %6227, %6131
  %6229 = phi i32 [ 0, %6131 ], [ %6219, %6227 ]
  %6230 = extractvalue %dx.types.CBufRet.f32 %5993, 2
  %6231 = fptoui float %6230 to i32
  %6232 = icmp eq i32 %6231, 0
  br i1 %6232, label %6284, label %6233

; <label>:6233                                    ; preds = %6228
  br label %6234

; <label>:6234                                    ; preds = %6279, %6233
  %6235 = phi i32 [ %6280, %6279 ], [ %6229, %6233 ]
  %6236 = phi i32 [ %6281, %6279 ], [ 0, %6233 ]
  %6237 = lshr i32 %6236, 2
  %6238 = and i32 %6236, 3
  %6239 = add nuw nsw i32 %6237, 83
  %6240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6239)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.i32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.i32 %6240, 1
  %6243 = extractvalue %dx.types.CBufRet.i32 %6240, 2
  %6244 = extractvalue %dx.types.CBufRet.i32 %6240, 3
  %6245 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6241, i32* %6245, align 4
  %6246 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6242, i32* %6246, align 4
  %6247 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6243, i32* %6247, align 4
  %6248 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6244, i32* %6248, align 4
  %6249 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6238
  %6250 = load i32, i32* %6249, align 4, !tbaa !83, !noalias !87
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = lshr i32 %6252, 16
  %6254 = and i32 %6253, 31
  %6255 = shl i32 %6177, %6254
  %6256 = add i32 %6255, %6176
  %6257 = shl i32 %6256, 2
  %6258 = add i32 %6257, %6250
  %6259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.i32 %6259, 0
  %6261 = icmp eq i32 %6260, 0
  br i1 %6261, label %6279, label %6262

; <label>:6262                                    ; preds = %6234
  %6263 = icmp slt i32 %6260, 0
  %6264 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6235
  %6265 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6235
  %6266 = bitcast float* %6264 to i32*
  %6267 = bitcast float* %6265 to i32*
  br i1 %6263, label %6268, label %6275

; <label>:6268                                    ; preds = %6262
  %6269 = and i32 %6260, 1073741823
  %6270 = add i32 %6250, 20
  %6271 = add i32 %6270, %6269
  %6272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.i32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.i32 %6272, 1
  br label %6275

; <label>:6275                                    ; preds = %6268, %6262
  %6276 = phi i32 [ %6273, %6268 ], [ %6184, %6262 ]
  %6277 = phi i32 [ %6274, %6268 ], [ %6185, %6262 ]
  store i32 %6276, i32* %6266, align 4
  store i32 %6277, i32* %6267, align 4
  %6278 = add i32 %6235, 1
  br label %6279

; <label>:6279                                    ; preds = %6275, %6234
  %6280 = phi i32 [ %6235, %6234 ], [ %6278, %6275 ]
  %6281 = add nuw i32 %6236, 1
  %6282 = icmp eq i32 %6281, %6231
  br i1 %6282, label %6283, label %6234

; <label>:6283                                    ; preds = %6279
  br label %6284

; <label>:6284                                    ; preds = %6283, %6228
  %6285 = phi i32 [ %6229, %6228 ], [ %6280, %6283 ]
  %6286 = icmp eq i32 %6285, 1
  %6287 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6288 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6286, label %6289, label %6292

; <label>:6289                                    ; preds = %6284
  %6290 = load float, float* %6287, align 4
  %6291 = load float, float* %6288, align 4
  br label %6319

; <label>:6292                                    ; preds = %6284
  %6293 = load float, float* %6287, align 4
  %6294 = load float, float* %6288, align 4
  %6295 = fdiv fast float 1.000000e+00, %6294
  %6296 = fsub fast float %6293, %6295
  %6297 = icmp ugt i32 %6285, 1
  br i1 %6297, label %6298, label %6314

; <label>:6298                                    ; preds = %6292
  br label %6299

; <label>:6299                                    ; preds = %6299, %6298
  %6300 = phi float [ %6309, %6299 ], [ %6296, %6298 ]
  %6301 = phi float [ %6310, %6299 ], [ %6293, %6298 ]
  %6302 = phi i32 [ %6311, %6299 ], [ 1, %6298 ]
  %6303 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6302
  %6304 = load float, float* %6303, align 4
  %6305 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6302
  %6306 = load float, float* %6305, align 4
  %6307 = fdiv fast float 1.000000e+00, %6306
  %6308 = fsub fast float %6304, %6307
  %6309 = call float @dx.op.binary.f32(i32 36, float %6300, float %6308)  ; FMin(a,b)
  %6310 = call float @dx.op.binary.f32(i32 35, float %6301, float %6304)  ; FMax(a,b)
  %6311 = add nuw i32 %6302, 1
  %6312 = icmp eq i32 %6311, %6285
  br i1 %6312, label %6313, label %6299

; <label>:6313                                    ; preds = %6299
  br label %6314

; <label>:6314                                    ; preds = %6313, %6292
  %6315 = phi float [ %6296, %6292 ], [ %6309, %6313 ]
  %6316 = phi float [ %6293, %6292 ], [ %6310, %6313 ]
  %6317 = fsub fast float %6316, %6315
  %6318 = fdiv fast float 1.000000e+00, %6317
  br label %6319

; <label>:6319                                    ; preds = %6314, %6289
  %6320 = phi float [ %6290, %6289 ], [ %6316, %6314 ]
  %6321 = phi float [ %6291, %6289 ], [ %6318, %6314 ]
  %6322 = fadd fast float %6023, %6320
  %6323 = fmul fast float %6322, %6321
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = fmul fast float %6324, 2.000000e+00
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = fmul fast float %6161, %6161
  %6328 = fsub fast float %6162, %6327
  %6329 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6328)  ; FMax(a,b)
  %6330 = fdiv fast float 1.000000e+00, %6329
  %6331 = fmul fast float %6162, %6161
  %6332 = fsub fast float %6163, %6331
  %6333 = fsub fast float %6326, %6161
  %6334 = fmul fast float %6326, %6326
  %6335 = fsub fast float %6334, %6162
  %6336 = fmul fast float %6330, %6332
  %6337 = fmul fast float %6336, %6333
  %6338 = fsub fast float %6335, %6337
  %6339 = fmul fast float %6162, %6162
  %6340 = fsub fast float %6164, %6339
  %6341 = fmul fast float %6332, %6332
  %6342 = fmul fast float %6341, %6330
  %6343 = fsub fast float %6340, %6342
  %6344 = fdiv fast float %6338, %6343
  %6345 = fmul fast float %6344, %6332
  %6346 = fsub fast float %6333, %6345
  %6347 = fmul fast float %6346, %6330
  %6348 = fmul fast float %6347, %6161
  %6349 = fsub fast float 1.000000e+00, %6348
  %6350 = fmul fast float %6344, %6162
  %6351 = fsub fast float %6349, %6350
  %6352 = fmul fast float %6347, %6347
  %6353 = fmul fast float %6344, 4.000000e+00
  %6354 = fmul fast float %6353, %6351
  %6355 = fsub fast float %6352, %6354
  %6356 = call float @dx.op.unary.f32(i32 24, float %6355)  ; Sqrt(value)
  %6357 = fcmp fast oge float %6347, 0.000000e+00
  %6358 = fsub fast float -0.000000e+00, %6356
  %6359 = select i1 %6357, float %6358, float %6356
  %6360 = fsub fast float %6359, %6347
  %6361 = fdiv fast float %6360, %6344
  %6362 = fdiv fast float %6351, %6360
  %6363 = fmul fast float %6361, 5.000000e-01
  %6364 = fmul fast float %6362, 2.000000e+00
  %6365 = select i1 %6357, float %6363, float %6364
  %6366 = select i1 %6357, float %6364, float %6363
  %6367 = call float @dx.op.binary.f32(i32 35, float %6365, float %6366)  ; FMax(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6365, float %6366)  ; FMin(a,b)
  %6369 = fcmp fast ogt float %6326, %6367
  %6370 = fsub fast float %6326, %6368
  %6371 = fsub fast float %6326, %6367
  %6372 = fsub fast float %6367, %6368
  %6373 = select i1 %6369, float %6371, float %6372
  %6374 = fmul float %6370, %6373
  %6375 = select i1 %6369, float %6368, float %6326
  %6376 = fcmp fast ogt float %6326, %6368
  %6377 = fmul fast float %6375, %6367
  %6378 = fadd fast float %6375, %6367
  %6379 = fmul fast float %6378, %6161
  %6380 = fadd fast float %6377, %6162
  %6381 = fsub fast float %6380, %6379
  %6382 = fdiv fast float %6381, %6374
  %6383 = select i1 %6376, float %6382, float 0.000000e+00
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = select i1 %6369, float %6384, float %6383
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6388 = fmul fast float %6387, %6386
  %6389 = fsub fast float 1.000000e+00, %6388
  br label %6390

; <label>:6390                                    ; preds = %6319, %6031, %5996, %5992, %5958
  %6391 = phi float [ 1.000000e+00, %5958 ], [ %6389, %6319 ], [ 1.000000e+00, %5996 ], [ 1.000000e+00, %6031 ], [ 1.000000e+00, %5992 ]
  %6392 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %6392, label %6393, label %6399, !dx.controlflow.hints !96

; <label>:6393                                    ; preds = %6390
  %6394 = fadd fast float %5901, %5875
  %6395 = call float @dx.op.binary.f32(i32 35, float %6394, float 0.000000e+00)  ; FMax(a,b)
  %6396 = fadd fast float %6395, 0x3F10000000000000
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5890, float %5891, float undef, float undef, i32 0, i32 0, i32 undef, float %6396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  br label %6399

; <label>:6399                                    ; preds = %6393, %6390
  %6400 = phi float [ %6398, %6393 ], [ 1.000000e+00, %6390 ]
  %6401 = fcmp fast ogt float %5986, 0.000000e+00
  br i1 %6401, label %6402, label %6408, !dx.controlflow.hints !97

; <label>:6402                                    ; preds = %6399
  %6403 = fadd fast float %5931, %5875
  %6404 = call float @dx.op.binary.f32(i32 35, float %6403, float 0.000000e+00)  ; FMax(a,b)
  %6405 = fadd fast float %6404, 0x3F10000000000000
  %6406 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5882, float %5883, float undef, float undef, i32 0, i32 0, i32 undef, float %6405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  br label %6408

; <label>:6408                                    ; preds = %6402, %6399
  %6409 = phi float [ %6407, %6402 ], [ 1.000000e+00, %6399 ]
  %6410 = fcmp fast ogt float %5985, 0.000000e+00
  br i1 %6410, label %6411, label %6418, !dx.controlflow.hints !98

; <label>:6411                                    ; preds = %6408
  %6412 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %6413 = fadd fast float %6412, %5875
  %6414 = call float @dx.op.binary.f32(i32 35, float %6413, float 0.000000e+00)  ; FMax(a,b)
  %6415 = fadd fast float %6414, 0x3F10000000000000
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5867, float %5871, float undef, float undef, i32 0, i32 0, i32 undef, float %6415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  br label %6418

; <label>:6418                                    ; preds = %6411, %6408
  %6419 = phi float [ %6417, %6411 ], [ 1.000000e+00, %6408 ]
  %6420 = fsub fast float %6400, %6391
  %6421 = fmul fast float %6420, %5929
  %6422 = fadd fast float %6421, %6391
  %6423 = fsub fast float %6409, %6422
  %6424 = fmul fast float %6423, %5959
  %6425 = fadd fast float %6424, %6422
  %6426 = fsub fast float %6419, %6425
  %6427 = fmul fast float %6426, %5985
  %6428 = fadd fast float %6427, %6425
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6431 = fcmp fast ogt float %6430, 0.000000e+00
  br i1 %6431, label %6432, label %6472, !dx.controlflow.hints !99

; <label>:6432                                    ; preds = %6418
  %6433 = fcmp fast ugt float %6430, 0.000000e+00
  br i1 %6433, label %6434, label %6469

; <label>:6434                                    ; preds = %6432
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6439 = extractvalue %dx.types.CBufRet.f32 %6435, 3
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6444 = extractvalue %dx.types.CBufRet.f32 %6440, 3
  %6445 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6451 = fadd fast float %6448, %5844
  %6452 = fadd fast float %6449, %5845
  %6453 = fadd fast float %6450, %5846
  %6454 = fmul fast float %6451, %6436
  %6455 = call float @dx.op.tertiary.f32(i32 46, float %6437, float %6452, float %6454)  ; FMad(a,b,c)
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %6438, float %6453, float %6455)  ; FMad(a,b,c)
  %6457 = fadd fast float %6456, %6439
  %6458 = fmul fast float %6451, %6441
  %6459 = call float @dx.op.tertiary.f32(i32 46, float %6442, float %6452, float %6458)  ; FMad(a,b,c)
  %6460 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6453, float %6459)  ; FMad(a,b,c)
  %6461 = fadd fast float %6460, %6444
  %6462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6457, float %6461, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = fmul fast float %6463, %6446
  %6465 = fadd fast float %6464, %6445
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = fmul fast float %6466, %6430
  %6468 = fsub fast float 1.000000e+00, %6467
  br label %6469

; <label>:6469                                    ; preds = %6434, %6432
  %6470 = phi float [ %6468, %6434 ], [ 1.000000e+00, %6432 ]
  %6471 = fmul fast float %6470, %6428
  br label %6472

; <label>:6472                                    ; preds = %6469, %6418, %5824
  %6473 = phi float [ 1.000000e+00, %5824 ], [ %6471, %6469 ], [ %6428, %6418 ]
  %6474 = call float @dx.op.binary.f32(i32 36, float %6473, float %6473)  ; FMin(a,b)
  %6475 = call float @dx.op.binary.f32(i32 36, float %6473, float %6474)  ; FMin(a,b)
  %6476 = fcmp fast ogt float %6475, 0.000000e+00
  br i1 %6476, label %6477, label %6638, !dx.controlflow.hints !100

; <label>:6477                                    ; preds = %6472
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6488, 3
  %6493 = fmul fast float %6479, %5844
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %6480, float %6493)  ; FMad(a,b,c)
  %6495 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6481, float %6494)  ; FMad(a,b,c)
  %6496 = fadd fast float %6495, %6482
  %6497 = fmul fast float %6484, %5844
  %6498 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %6485, float %6497)  ; FMad(a,b,c)
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6486, float %6498)  ; FMad(a,b,c)
  %6500 = fadd fast float %6499, %6487
  %6501 = fmul fast float %6489, %5844
  %6502 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %6490, float %6501)  ; FMad(a,b,c)
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6491, float %6502)  ; FMad(a,b,c)
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.CBufRet.f32 %6504, 3
  %6508 = fmul fast float %6507, %6496
  %6509 = fmul fast float %6507, %6500
  %6510 = fadd fast float %6508, %6505
  %6511 = fadd fast float %6509, %6506
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = fsub fast float %6510, %6513
  %6516 = fsub fast float %6511, %6514
  %6517 = fcmp fast olt float %6515, 0.000000e+00
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 0
  %6521 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6522 = extractvalue %dx.types.CBufRet.f32 %6519, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6519, 3
  %6524 = select i1 %6517, float %6520, float %6522
  %6525 = select i1 %6518, float %6521, float %6523
  %6526 = fmul fast float %6524, %6515
  %6527 = fmul fast float %6525, %6516
  %6528 = call float @dx.op.unary.f32(i32 6, float %6526)  ; FAbs(value)
  %6529 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6530 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %6531 = call float @dx.op.binary.f32(i32 35, float %6528, float %6529)  ; FMax(a,b)
  %6532 = fsub fast float %6530, %6531
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = fcmp fast ogt float %6533, 0.000000e+00
  br i1 %6534, label %6535, label %6576, !dx.controlflow.hints !101

; <label>:6535                                    ; preds = %6477
  %6536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6510, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 1
  %6538 = fcmp fast ogt float %6537, 0.000000e+00
  br i1 %6538, label %6539, label %6571

; <label>:6539                                    ; preds = %6535
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6510, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.ResRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.ResRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.ResRet.f32 %6540, 3
  %6545 = fsub fast float 1.000000e+00, %6492
  %6546 = fsub fast float %6545, %6503
  %6547 = fmul fast float %6546, 0x400921FB60000000
  %6548 = fadd fast float %6547, 0x3FF921FB60000000
  %6549 = call float @dx.op.unary.f32(i32 13, float %6548)  ; Sin(value)
  %6550 = fadd fast float %6549, -1.000000e+00
  %6551 = fmul fast float %6550, 0x3FD45F3060000000
  %6552 = fmul fast float %6546, 0x401921FB60000000
  %6553 = fadd fast float %6552, 0x400921FB60000000
  %6554 = call float @dx.op.unary.f32(i32 13, float %6553)  ; Sin(value)
  %6555 = fadd fast float %6554, 0x3E7777A5C0000000
  %6556 = fmul fast float %6555, 0x3FC45F3060000000
  %6557 = fmul fast float %6546, 0x4022D97C80000000
  %6558 = fadd fast float %6557, 0x4012D97C80000000
  %6559 = call float @dx.op.unary.f32(i32 13, float %6558)  ; Sin(value)
  %6560 = fadd fast float %6559, 1.000000e+00
  %6561 = fmul fast float %6560, 0x3FBB2995E0000000
  %6562 = fmul fast float %6546, 0x402921FB60000000
  %6563 = fadd fast float %6562, 0x401921FB60000000
  %6564 = call float @dx.op.unary.f32(i32 13, float %6563)  ; Sin(value)
  %6565 = fadd fast float %6564, 0xBE8777A5C0000000
  %6566 = fmul fast float %6565, 0x3FB45F3060000000
  %6567 = call float @dx.op.dot4.f32(i32 56, float %6541, float %6542, float %6543, float %6544, float %6551, float %6556, float %6561, float %6566)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6568 = fmul fast float %6567, 0xBFF7154760000000
  %6569 = call float @dx.op.unary.f32(i32 21, float %6568)  ; Exp(value)
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  br label %6571

; <label>:6571                                    ; preds = %6539, %6535
  %6572 = phi float [ %6570, %6539 ], [ 1.000000e+00, %6535 ]
  %6573 = fadd fast float %6572, -1.000000e+00
  %6574 = fmul fast float %6573, %6533
  %6575 = fadd fast float %6574, 1.000000e+00
  br label %6576

; <label>:6576                                    ; preds = %6571, %6477
  %6577 = phi float [ %6575, %6571 ], [ 1.000000e+00, %6477 ]
  %6578 = fmul fast float %6577, %6473
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.CBufRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.CBufRet.f32 %6579, 2
  %6583 = fadd fast float %6580, %142
  %6584 = fadd fast float %6581, %143
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 1
  %6587 = fsub fast float -0.000000e+00, %6583
  %6588 = fsub fast float -0.000000e+00, %6584
  %6589 = fsub fast float -0.000000e+00, %144
  %6590 = fsub fast float %6589, %6582
  %6591 = fadd fast float %6590, %6586
  %6592 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6587, float %6588, float %6591)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = fdiv fast float 1.000000e+00, %6593
  %6595 = fmul fast float %6594, %6592
  %6596 = fmul fast float %5825, %6595
  %6597 = fmul fast float %5826, %6595
  %6598 = fadd fast float %6596, %6583
  %6599 = fadd fast float %6597, %6584
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = fsub fast float %6598, %6601
  %6604 = fsub fast float %6599, %6602
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6608 = fmul fast float %6603, %6606
  %6609 = fmul fast float %6604, %6607
  %6610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.i32 %6610, 3
  %6612 = icmp eq i32 %6611, 0
  br i1 %6612, label %6618, label %6613

; <label>:6613                                    ; preds = %6576
  %6614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6608, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  br label %6623

; <label>:6618                                    ; preds = %6576
  %6619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6608, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  br label %6623

; <label>:6623                                    ; preds = %6618, %6613
  %6624 = phi float [ %6615, %6613 ], [ %6620, %6618 ]
  %6625 = phi float [ %6616, %6613 ], [ %6621, %6618 ]
  %6626 = phi float [ %6617, %6613 ], [ %6622, %6618 ]
  %6627 = extractvalue %dx.types.CBufRet.f32 %6585, 2
  %6628 = fmul fast float %6627, %6624
  %6629 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6630 = fsub fast float %6595, %6629
  %6631 = fsub fast float %6630, %6628
  %6632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6631)  ; FMax(a,b)
  %6633 = fmul fast float %6632, %6625
  %6634 = call float @dx.op.binary.f32(i32 36, float %6626, float %6633)  ; FMin(a,b)
  %6635 = fmul fast float %6634, 0xBFF7154760000000
  %6636 = call float @dx.op.unary.f32(i32 21, float %6635)  ; Exp(value)
  %6637 = fmul fast float %6578, %6636
  br label %6638

; <label>:6638                                    ; preds = %6623, %6472
  %6639 = phi float [ %6637, %6623 ], [ %6473, %6472 ]
  %6640 = call float @dx.op.binary.f32(i32 36, float %6639, float %6639)  ; FMin(a,b)
  %6641 = call float @dx.op.binary.f32(i32 36, float %6639, float %6640)  ; FMin(a,b)
  %6642 = fcmp fast ogt float %6641, 0.000000e+00
  br i1 %6642, label %6643, label %6953, !dx.controlflow.hints !102

; <label>:6643                                    ; preds = %6638
  %6644 = fmul fast float %6639, %5836
  %6645 = fmul fast float %6639, %5837
  %6646 = fmul fast float %6639, %5838
  %6647 = fsub fast float %5825, %5383
  %6648 = fsub fast float %5826, %5382
  %6649 = fsub fast float %5827, %5381
  %6650 = call float @dx.op.dot3.f32(i32 55, float %6647, float %6648, float %6649, float %6647, float %6648, float %6649)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.unary.f32(i32 25, float %6650)  ; Rsqrt(value)
  %6652 = fmul fast float %6651, %6647
  %6653 = fmul fast float %6651, %6648
  %6654 = fmul fast float %6651, %6649
  %6655 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6656 = call float @dx.op.dot3.f32(i32 55, float %5380, float %5379, float %5378, float %6652, float %6653, float %6654)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6658 = fmul fast float %6657, %6657
  %6659 = fmul fast float %6658, %5410
  %6660 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6661 = fmul fast float %6660, %6657
  %6662 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %6652, float %6653, float %6654)  ; Dot3(ax,ay,az,bx,by,bz)
  %6663 = fmul fast float %6662, %6662
  %6664 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6665 = call float @dx.op.binary.f32(i32 35, float %5793, float 0x3F847AE140000000)  ; FMax(a,b)
  %6666 = fmul fast float %6665, %6665
  %6667 = fmul fast float %6666, %6666
  %6668 = fsub fast float 1.000000e+00, %6667
  %6669 = fmul fast float %5397, %5397
  %6670 = fmul fast float %6669, %6668
  %6671 = fadd fast float %6670, %6667
  %6672 = bitcast float %6671 to i32
  %6673 = ashr i32 %6672, 1
  %6674 = add nsw i32 %6673, 532487669
  %6675 = bitcast i32 %6674 to float
  %6676 = fadd fast float %6675, %5397
  %6677 = fmul fast float %6667, %6663
  %6678 = fsub fast float 1.000000e+00, %6663
  %6679 = fadd fast float %6678, %6677
  %6680 = fmul fast float %6664, %6664
  %6681 = fmul fast float %6680, %6668
  %6682 = fadd fast float %6681, %6667
  %6683 = bitcast float %6682 to i32
  %6684 = ashr i32 %6683, 1
  %6685 = add nsw i32 %6684, 532487669
  %6686 = bitcast i32 %6685 to float
  %6687 = fadd fast float %6686, %6664
  %6688 = fmul fast float %6679, %6679
  %6689 = fmul fast float %6688, %6676
  %6690 = fmul fast float %6689, %6687
  %6691 = fdiv fast float 0x3FF0A00000000000, %6690
  %6692 = fmul fast float %6691, %6667
  %6693 = fmul fast float %5655, 0x3FF9999980000000
  %6694 = fsub fast float 5.000000e+00, %6693
  %6695 = call float @dx.op.unary.f32(i32 6, float %6656)  ; FAbs(value)
  %6696 = fsub fast float 1.000000e+00, %6695
  %6697 = fmul fast float %5655, 0x41D9660740000000
  %6698 = fadd fast float %6697, 0xC1EFBF8940000000
  %6699 = bitcast float %6696 to i32
  %6700 = sitofp i32 %6699 to float
  %6701 = fmul fast float %6700, %6694
  %6702 = fadd fast float %6698, %6701
  %6703 = fptosi float %6702 to i32
  %6704 = bitcast i32 %6703 to float
  %6705 = fsub fast float 1.000000e+00, %5387
  %6706 = fsub fast float 1.000000e+00, %5388
  %6707 = fsub fast float 1.000000e+00, %5395
  %6708 = fmul fast float %6704, %6705
  %6709 = fmul fast float %6704, %6706
  %6710 = fmul fast float %6704, %6707
  %6711 = fadd fast float %6708, %5387
  %6712 = fadd fast float %6709, %5388
  %6713 = fadd fast float %6710, %5395
  br i1 %5678, label %6714, label %6737

; <label>:6714                                    ; preds = %6643
  %6715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5043, float %6695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6716 = extractvalue %dx.types.ResRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.ResRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.ResRet.f32 %6715, 2
  %6719 = fadd fast float %6716, -5.000000e-01
  %6720 = fadd fast float %6717, -5.000000e-01
  %6721 = fadd fast float %6718, -5.000000e-01
  %6722 = fmul fast float %5387, 4.000000e+00
  %6723 = fmul fast float %6722, %6705
  %6724 = fmul fast float %6723, %6719
  %6725 = fmul fast float %5388, 4.000000e+00
  %6726 = fmul fast float %6725, %6706
  %6727 = fmul fast float %6726, %6720
  %6728 = fmul fast float %5395, 4.000000e+00
  %6729 = fmul fast float %6728, %6707
  %6730 = fmul fast float %6729, %6721
  %6731 = fadd fast float %6724, %6711
  %6732 = fadd fast float %6727, %6712
  %6733 = fadd fast float %6730, %6713
  %6734 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6735 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  %6736 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  br label %6737

; <label>:6737                                    ; preds = %6714, %6643
  %6738 = phi float [ %6734, %6714 ], [ %6711, %6643 ]
  %6739 = phi float [ %6735, %6714 ], [ %6712, %6643 ]
  %6740 = phi float [ %6736, %6714 ], [ %6713, %6643 ]
  %6741 = fmul fast float %6655, 9.843750e-01
  %6742 = fadd fast float %6741, 7.812500e-03
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6742, float %5659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = extractvalue %dx.types.ResRet.f32 %6743, 3
  %6748 = fsub fast float %6746, %6744
  %6749 = fsub fast float %6747, %6745
  %6750 = fmul fast float %6748, %5665
  %6751 = fmul fast float %6749, %5665
  %6752 = fadd fast float %6750, %6744
  %6753 = fadd fast float %6751, %6745
  %6754 = fmul fast float %6752, %5387
  %6755 = fmul fast float %6752, %5388
  %6756 = fmul fast float %6752, %5395
  %6757 = fadd fast float %6754, %6753
  %6758 = fadd fast float %6755, %6753
  %6759 = fadd fast float %6756, %6753
  br i1 %5678, label %6760, label %6783

; <label>:6760                                    ; preds = %6737
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5043, float %6655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.ResRet.f32 %6761, 2
  %6765 = fadd fast float %6762, -5.000000e-01
  %6766 = fadd fast float %6763, -5.000000e-01
  %6767 = fadd fast float %6764, -5.000000e-01
  %6768 = fmul fast float %5387, 4.000000e+00
  %6769 = fmul fast float %6768, %6705
  %6770 = fmul fast float %6769, %6765
  %6771 = fmul fast float %5388, 4.000000e+00
  %6772 = fmul fast float %6771, %6706
  %6773 = fmul fast float %6772, %6766
  %6774 = fmul fast float %5395, 4.000000e+00
  %6775 = fmul fast float %6774, %6707
  %6776 = fmul fast float %6775, %6767
  %6777 = fadd fast float %6770, %6757
  %6778 = fadd fast float %6773, %6758
  %6779 = fadd fast float %6776, %6759
  %6780 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  br label %6783

; <label>:6783                                    ; preds = %6760, %6737
  %6784 = phi float [ %6780, %6760 ], [ %6757, %6737 ]
  %6785 = phi float [ %6781, %6760 ], [ %6758, %6737 ]
  %6786 = phi float [ %6782, %6760 ], [ %6759, %6737 ]
  %6787 = call float @dx.op.binary.f32(i32 35, float %6785, float %6786)  ; FMax(a,b)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6784, float %6787)  ; FMax(a,b)
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = call float @dx.op.binary.f32(i32 35, float %6664, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6791 = fdiv fast float %4393, %6790
  %6792 = fmul fast float %5733, %6791
  %6793 = fmul fast float %5735, %6791
  %6794 = fmul fast float %5737, %6791
  %6795 = call float @dx.op.unary.f32(i32 21, float %6792)  ; Exp(value)
  %6796 = call float @dx.op.unary.f32(i32 21, float %6793)  ; Exp(value)
  %6797 = call float @dx.op.unary.f32(i32 21, float %6794)  ; Exp(value)
  %6798 = call float @dx.op.unary.f32(i32 7, float %6795)  ; Saturate(value)
  %6799 = call float @dx.op.unary.f32(i32 7, float %6796)  ; Saturate(value)
  %6800 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6801 = select i1 %5730, float %6798, float 0.000000e+00
  %6802 = select i1 %5731, float %6799, float 0.000000e+00
  %6803 = select i1 %5732, float %6800, float 0.000000e+00
  %6804 = fsub fast float -0.000000e+00, %5390
  %6805 = fsub fast float -0.000000e+00, %5391
  %6806 = fsub fast float -0.000000e+00, %5392
  %6807 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %6804, float %6805, float %6806)  ; Dot3(ax,ay,az,bx,by,bz)
  %6808 = call float @dx.op.unary.f32(i32 7, float %6807)  ; Saturate(value)
  %6809 = fmul fast float %6808, 9.843750e-01
  %6810 = fadd fast float %6809, 7.812500e-03
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6810, float %5659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.ResRet.f32 %6811, 3
  %6816 = fsub fast float %6814, %6812
  %6817 = fsub fast float %6815, %6813
  %6818 = fmul fast float %6816, %5665
  %6819 = fmul fast float %6817, %5665
  %6820 = fadd fast float %6818, %6812
  %6821 = fadd fast float %6819, %6813
  %6822 = fmul fast float %6820, %5387
  %6823 = fmul fast float %6820, %5388
  %6824 = fmul fast float %6820, %5395
  %6825 = fadd fast float %6822, %6821
  %6826 = fadd fast float %6823, %6821
  %6827 = fadd fast float %6824, %6821
  br i1 %5678, label %6828, label %6851

; <label>:6828                                    ; preds = %6783
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5043, float %6808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.ResRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.ResRet.f32 %6829, 2
  %6833 = fadd fast float %6830, -5.000000e-01
  %6834 = fadd fast float %6831, -5.000000e-01
  %6835 = fadd fast float %6832, -5.000000e-01
  %6836 = fmul fast float %5387, 4.000000e+00
  %6837 = fmul fast float %6836, %6705
  %6838 = fmul fast float %6837, %6833
  %6839 = fmul fast float %5388, 4.000000e+00
  %6840 = fmul fast float %6839, %6706
  %6841 = fmul fast float %6840, %6834
  %6842 = fmul fast float %5395, 4.000000e+00
  %6843 = fmul fast float %6842, %6707
  %6844 = fmul fast float %6843, %6835
  %6845 = fadd fast float %6838, %6825
  %6846 = fadd fast float %6841, %6826
  %6847 = fadd fast float %6844, %6827
  %6848 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6849 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6850 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  br label %6851

; <label>:6851                                    ; preds = %6828, %6783
  %6852 = phi float [ %6848, %6828 ], [ %6825, %6783 ]
  %6853 = phi float [ %6849, %6828 ], [ %6826, %6783 ]
  %6854 = phi float [ %6850, %6828 ], [ %6827, %6783 ]
  %6855 = call float @dx.op.binary.f32(i32 35, float %6853, float %6854)  ; FMax(a,b)
  %6856 = call float @dx.op.binary.f32(i32 35, float %6852, float %6855)  ; FMax(a,b)
  %6857 = fsub fast float 1.000000e+00, %6856
  %6858 = fmul fast float %5793, %5798
  %6859 = fadd fast float %5800, %6858
  %6860 = call float @dx.op.unary.f32(i32 7, float %6859)  ; Saturate(value)
  %6861 = fsub fast float %5825, %5403
  %6862 = fsub fast float %5826, %5404
  %6863 = fsub fast float %5827, %5405
  %6864 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %6863, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = call float @dx.op.unary.f32(i32 25, float %6864)  ; Rsqrt(value)
  %6866 = fmul fast float %6865, %6861
  %6867 = fmul fast float %6865, %6862
  %6868 = fmul fast float %6865, %6863
  %6869 = call float @dx.op.dot3.f32(i32 55, float %6804, float %6805, float %6806, float %6866, float %6867, float %6868)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = fmul fast float %6869, %6869
  %6871 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6872 = call float @dx.op.binary.f32(i32 35, float %6860, float 0x3F847AE140000000)  ; FMax(a,b)
  %6873 = fmul fast float %6872, %6872
  %6874 = fmul fast float %6873, %6873
  %6875 = fsub fast float 1.000000e+00, %6874
  %6876 = fmul fast float %6669, %6875
  %6877 = fadd fast float %6876, %6874
  %6878 = bitcast float %6877 to i32
  %6879 = ashr i32 %6878, 1
  %6880 = add nsw i32 %6879, 532487669
  %6881 = bitcast i32 %6880 to float
  %6882 = fadd fast float %6881, %5397
  %6883 = fmul fast float %6874, %6870
  %6884 = fsub fast float 1.000000e+00, %6870
  %6885 = fadd fast float %6884, %6883
  %6886 = fmul fast float %6871, %6871
  %6887 = fmul fast float %6886, %6875
  %6888 = fadd fast float %6887, %6874
  %6889 = bitcast float %6888 to i32
  %6890 = ashr i32 %6889, 1
  %6891 = add nsw i32 %6890, 532487669
  %6892 = bitcast i32 %6891 to float
  %6893 = fadd fast float %6892, %6871
  %6894 = fmul fast float %6885, %6885
  %6895 = fmul fast float %6894, %6882
  %6896 = fmul fast float %6895, %6893
  %6897 = fdiv fast float 0x3FF0A00000000000, %6896
  %6898 = fmul fast float %6897, %6874
  %6899 = fmul fast float %6808, %6801
  %6900 = fmul fast float %6808, %6802
  %6901 = fmul fast float %6808, %6803
  %6902 = fmul fast float %6899, %6857
  %6903 = fmul fast float %6902, %6898
  %6904 = fmul fast float %6900, %6857
  %6905 = fmul fast float %6904, %6898
  %6906 = fmul fast float %6901, %6857
  %6907 = fmul fast float %6906, %6898
  %6908 = fmul fast float %6738, %6692
  %6909 = fmul fast float %6739, %6692
  %6910 = fmul fast float %6740, %6692
  %6911 = fsub fast float 1.000000e+00, %6656
  %6912 = bitcast float %6911 to i32
  %6913 = sitofp i32 %6912 to float
  %6914 = fmul fast float %6913, 5.000000e+00
  %6915 = fadd fast float %6914, 0xC1EFBF8940000000
  %6916 = fptosi float %6915 to i32
  %6917 = bitcast i32 %6916 to float
  %6918 = fmul fast float %6917, %5044
  %6919 = fmul fast float %6789, %6918
  %6920 = fmul fast float %6919, %5725
  %6921 = fmul fast float %6919, %5726
  %6922 = fmul fast float %6919, %5727
  %6923 = fadd fast float %6920, %6908
  %6924 = fadd fast float %6921, %6909
  %6925 = fadd fast float %6922, %6910
  %6926 = fmul fast float %6923, %6661
  %6927 = fmul fast float %6924, %6661
  %6928 = fmul fast float %6925, %6661
  %6929 = fmul fast float %6661, %6644
  %6930 = fmul fast float %6929, %6789
  %6931 = fmul fast float %6661, %6645
  %6932 = fmul fast float %6931, %6789
  %6933 = fmul fast float %6661, %6646
  %6934 = fmul fast float %6933, %6789
  %6935 = fadd fast float %6926, %6903
  %6936 = fadd fast float %6927, %6905
  %6937 = fadd fast float %6928, %6907
  %6938 = fmul fast float %6935, %6644
  %6939 = fmul fast float %6936, %6645
  %6940 = fmul fast float %6937, %6646
  %6941 = fadd fast float %6930, %5815
  %6942 = fmul fast float %6941, %5040
  %6943 = fadd fast float %6932, %5817
  %6944 = fmul fast float %6943, %5040
  %6945 = fadd fast float %6934, %5819
  %6946 = fmul fast float %6945, %5040
  %6947 = fadd fast float %6938, %5778
  %6948 = fmul fast float %6947, %5040
  %6949 = fadd fast float %6939, %5781
  %6950 = fmul fast float %6949, %5040
  %6951 = fadd fast float %6940, %5784
  %6952 = fmul fast float %6951, %5040
  br label %6953

; <label>:6953                                    ; preds = %6851, %6638, %5705
  %6954 = phi float [ %5779, %5705 ], [ %5779, %6638 ], [ %6948, %6851 ]
  %6955 = phi float [ %5782, %5705 ], [ %5782, %6638 ], [ %6950, %6851 ]
  %6956 = phi float [ %5785, %5705 ], [ %5785, %6638 ], [ %6952, %6851 ]
  %6957 = phi float [ %5816, %5705 ], [ %5816, %6638 ], [ %6942, %6851 ]
  %6958 = phi float [ %5818, %5705 ], [ %5818, %6638 ], [ %6944, %6851 ]
  %6959 = phi float [ %5820, %5705 ], [ %5820, %6638 ], [ %6946, %6851 ]
  %6960 = fmul fast float %5754, %5040
  %6961 = fmul fast float %5755, %5040
  %6962 = fmul fast float %5756, %5040
  %6963 = fadd fast float %6960, 1.000000e+00
  %6964 = fadd fast float %6961, 1.000000e+00
  %6965 = fadd fast float %6962, 1.000000e+00
  %6966 = call float @dx.op.dot3.f32(i32 55, float %6963, float %6964, float %6965, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = fsub fast float 1.000000e+00, %6966
  %6968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6969 = extractvalue %dx.types.CBufRet.f32 %6968, 0
  %6970 = fmul fast float %6969, %5760
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 3
  %6973 = fsub fast float 1.000000e+00, %5048
  %6974 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  %6975 = fadd fast float %6959, %5046
  %6976 = fmul fast float %6975, %5048
  %6977 = fmul fast float %6974, %6972
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 3
  %6980 = fmul fast float %6957, %5384
  %6981 = fmul fast float %6958, %5385
  %6982 = fmul fast float %6959, %5386
  %6983 = fcmp fast ogt float %78, %164
  %6984 = and i1 %6983, %5116
  %6985 = or i1 %5195, %6984
  %6986 = icmp eq i32 %5115, 2
  %6987 = fcmp fast ole float %78, %164
  %6988 = and i1 %6987, %6986
  %6989 = or i1 %6988, %6985
  br i1 %6984, label %6990, label %7247

; <label>:6990                                    ; preds = %6953
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6993 = extractvalue %dx.types.CBufRet.f32 %6991, 3
  %6994 = fmul fast float %6992, %87
  %6995 = fmul fast float %6993, %88
  %6996 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6997 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6996, float %6997, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6999 = extractvalue %dx.types.ResRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.ResRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.ResRet.f32 %6998, 2
  %7002 = extractvalue %dx.types.ResRet.f32 %6998, 3
  %7003 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6996, float %6997, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7004 = extractvalue %dx.types.ResRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.ResRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.ResRet.f32 %7003, 2
  %7007 = extractvalue %dx.types.ResRet.f32 %7003, 3
  %7008 = call float @dx.op.binary.f32(i32 35, float %7000, float %7001)  ; FMax(a,b)
  %7009 = call float @dx.op.binary.f32(i32 35, float %6999, float %7008)  ; FMax(a,b)
  %7010 = call float @dx.op.binary.f32(i32 35, float %7009, float %7002)  ; FMax(a,b)
  %7011 = call float @dx.op.binary.f32(i32 36, float %7005, float %7006)  ; FMin(a,b)
  %7012 = call float @dx.op.binary.f32(i32 36, float %7004, float %7011)  ; FMin(a,b)
  %7013 = call float @dx.op.binary.f32(i32 36, float %7012, float %7007)  ; FMin(a,b)
  %7014 = fmul fast float %7010, 2.550000e+02
  %7015 = fadd fast float %7014, 0x3F70101020000000
  %7016 = fptoui float %7015 to i32
  %7017 = fmul fast float %7013, 2.550000e+02
  %7018 = fadd fast float %7017, 0x3F70101020000000
  %7019 = fptoui float %7018 to i32
  %7020 = icmp ult i32 %7016, %7019
  br i1 %7020, label %7021, label %7189

; <label>:7021                                    ; preds = %6990
  %7022 = fcmp fast ogt float %77, 9.843750e-01
  %7023 = fadd fast float %78, -4.000000e+00
  %7024 = select i1 %7022, float -4.000000e+00, float %7023
  %7025 = call float @dx.op.binary.f32(i32 35, float %7024, float 0.000000e+00)  ; FMax(a,b)
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = fadd fast float %7027, %7025
  %7029 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7030 = fmul fast float %7028, %7029
  %7031 = call float @dx.op.unary.f32(i32 23, float %7030)  ; Log(value)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7033 = fmul fast float %7032, %7031
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7036 = fmul fast float %7033, %7035
  %7037 = call float @dx.op.unary.f32(i32 7, float %7036)  ; Saturate(value)
  %7038 = uitofp i32 %7016 to float
  %7039 = uitofp i32 %7019 to float
  %7040 = fadd fast float %7038, 5.000000e-01
  %7041 = fadd fast float %7039, 5.000000e-01
  %7042 = fmul fast float %7035, %7040
  %7043 = fmul fast float %7035, %7041
  %7044 = fadd fast float %7042, 0x3F0FFB4800000000
  %7045 = fadd fast float %7043, 0xBF0FFB4800000000
  %7046 = call float @dx.op.binary.f32(i32 35, float %7037, float %7044)  ; FMax(a,b)
  %7047 = call float @dx.op.binary.f32(i32 36, float %7046, float %7045)  ; FMin(a,b)
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 1
  %7050 = extractvalue %dx.types.CBufRet.f32 %7048, 2
  %7051 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7052 = fmul fast float %7049, %7047
  %7053 = fadd fast float %7051, %7052
  %7054 = fadd fast float %7051, %7050
  %7055 = fsub fast float %7049, %7050
  %7056 = fadd fast float %7055, %7051
  %7057 = call float @dx.op.binary.f32(i32 35, float %7053, float %7054)  ; FMax(a,b)
  %7058 = call float @dx.op.binary.f32(i32 36, float %7057, float %7056)  ; FMin(a,b)
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %6996, float %6997, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.i32 %7063, 0
  %7065 = extractvalue %dx.types.CBufRet.i32 %7063, 1
  %7066 = uitofp i32 %7064 to float
  %7067 = uitofp i32 %7065 to float
  %7068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7069 = extractvalue %dx.types.CBufRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.CBufRet.f32 %7068, 1
  %7071 = fmul fast float %7066, %6996
  %7072 = fmul fast float %7067, %6997
  %7073 = fadd fast float %7071, -5.000000e-01
  %7074 = fadd fast float %7072, -5.000000e-01
  %7075 = call float @dx.op.unary.f32(i32 22, float %7073)  ; Frc(value)
  %7076 = call float @dx.op.unary.f32(i32 22, float %7074)  ; Frc(value)
  %7077 = fmul fast float %7075, %7075
  %7078 = fmul fast float %7077, %7075
  %7079 = fsub fast float 3.000000e+00, %7075
  %7080 = fmul fast float %7077, %7079
  %7081 = fmul fast float %7075, 3.000000e+00
  %7082 = fmul fast float %7078, 3.000000e+00
  %7083 = fmul fast float %7077, 6.000000e+00
  %7084 = fsub fast float %7082, %7083
  %7085 = fadd fast float %7084, 4.000000e+00
  %7086 = fmul fast float %7085, 0x3FC5555560000000
  %7087 = fmul fast float %7078, -3.000000e+00
  %7088 = fadd fast float %7077, %7075
  %7089 = fmul fast float %7088, 3.000000e+00
  %7090 = fadd fast float %7087, 1.000000e+00
  %7091 = fadd fast float %7090, %7089
  %7092 = fmul fast float %7078, 0x3FC5555560000000
  %7093 = fmul fast float %7076, %7076
  %7094 = fmul fast float %7093, %7076
  %7095 = fsub fast float 3.000000e+00, %7076
  %7096 = fmul fast float %7093, %7095
  %7097 = fmul fast float %7076, 3.000000e+00
  %7098 = fmul fast float %7094, 3.000000e+00
  %7099 = fmul fast float %7093, 6.000000e+00
  %7100 = fsub fast float %7098, %7099
  %7101 = fadd fast float %7100, 4.000000e+00
  %7102 = fmul fast float %7101, 0x3FC5555560000000
  %7103 = fmul fast float %7094, -3.000000e+00
  %7104 = fadd fast float %7093, %7076
  %7105 = fmul fast float %7104, 3.000000e+00
  %7106 = fadd fast float %7103, 1.000000e+00
  %7107 = fadd fast float %7106, %7105
  %7108 = fmul fast float %7094, 0x3FC5555560000000
  %7109 = fadd fast float %7075, 1.000000e+00
  %7110 = fsub fast float 1.000000e+00, %7081
  %7111 = fadd fast float %7110, %7080
  %7112 = fadd fast float %7111, %7085
  %7113 = fmul fast float %7112, 0x3FC5555560000000
  %7114 = fdiv fast float %7086, %7113
  %7115 = fsub fast float %7109, %7114
  %7116 = fsub fast float 1.000000e+00, %7075
  %7117 = fadd fast float %7091, %7078
  %7118 = fmul fast float %7117, 0x3FC5555560000000
  %7119 = fdiv fast float %7092, %7118
  %7120 = fadd fast float %7116, %7119
  %7121 = fadd fast float %7076, 1.000000e+00
  %7122 = fsub fast float 1.000000e+00, %7097
  %7123 = fadd fast float %7122, %7096
  %7124 = fadd fast float %7123, %7101
  %7125 = fmul fast float %7124, 0x3FC5555560000000
  %7126 = fdiv fast float %7102, %7125
  %7127 = fsub fast float %7121, %7126
  %7128 = fsub fast float 1.000000e+00, %7076
  %7129 = fadd fast float %7107, %7094
  %7130 = fmul fast float %7129, 0x3FC5555560000000
  %7131 = fdiv fast float %7108, %7130
  %7132 = fadd fast float %7131, %7128
  %7133 = fmul fast float %7115, %7069
  %7134 = fsub fast float %6996, %7133
  %7135 = fmul fast float %7120, %7069
  %7136 = fadd fast float %7135, %6996
  %7137 = fmul fast float %7132, %7070
  %7138 = fadd fast float %7137, %6997
  %7139 = fmul fast float %7127, %7070
  %7140 = fsub fast float %6997, %7139
  %7141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7134, float %7140, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7142 = extractvalue %dx.types.ResRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.ResRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.ResRet.f32 %7141, 2
  %7145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7136, float %7140, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7146 = extractvalue %dx.types.ResRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.ResRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.ResRet.f32 %7145, 2
  %7149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7134, float %7138, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7150 = extractvalue %dx.types.ResRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.ResRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.ResRet.f32 %7149, 2
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7136, float %7138, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = fsub fast float %7150, %7142
  %7158 = fsub fast float %7151, %7143
  %7159 = fsub fast float %7152, %7144
  %7160 = fmul fast float %7157, %7130
  %7161 = fmul fast float %7158, %7130
  %7162 = fmul fast float %7159, %7130
  %7163 = fadd fast float %7160, %7142
  %7164 = fadd fast float %7161, %7143
  %7165 = fadd fast float %7162, %7144
  %7166 = fsub fast float %7154, %7146
  %7167 = fsub fast float %7155, %7147
  %7168 = fsub fast float %7156, %7148
  %7169 = fmul fast float %7166, %7130
  %7170 = fmul fast float %7167, %7130
  %7171 = fmul fast float %7168, %7130
  %7172 = fsub fast float %7146, %7163
  %7173 = fadd fast float %7172, %7169
  %7174 = fsub fast float %7147, %7164
  %7175 = fadd fast float %7174, %7170
  %7176 = fsub fast float %7148, %7165
  %7177 = fadd fast float %7176, %7171
  %7178 = fmul fast float %7173, %7118
  %7179 = fmul fast float %7175, %7118
  %7180 = fmul fast float %7177, %7118
  %7181 = fadd fast float %7178, %7163
  %7182 = fadd fast float %7179, %7164
  %7183 = fadd fast float %7180, %7165
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7186 = fmul fast float %7181, %7185
  %7187 = fmul fast float %7182, %7185
  %7188 = fmul fast float %7183, %7185
  br label %7189

; <label>:7189                                    ; preds = %7021, %6990
  %7190 = phi float [ %7060, %7021 ], [ 1.000000e+00, %6990 ]
  %7191 = phi float [ %7061, %7021 ], [ 1.000000e+00, %6990 ]
  %7192 = phi float [ %7062, %7021 ], [ 1.000000e+00, %6990 ]
  %7193 = phi float [ %7186, %7021 ], [ 0.000000e+00, %6990 ]
  %7194 = phi float [ %7187, %7021 ], [ 0.000000e+00, %6990 ]
  %7195 = phi float [ %7188, %7021 ], [ 0.000000e+00, %6990 ]
  %7196 = fmul fast float %7193, %6967
  %7197 = fmul fast float %7194, %6967
  %7198 = fmul fast float %7195, %6967
  %7199 = call float @dx.op.dot3.f32(i32 55, float %7190, float %7191, float %7192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = call float @dx.op.dot3.f32(i32 55, float %7196, float %7197, float %7198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7201 = select i1 %203, float %7199, float %7190
  %7202 = select i1 %203, float %7199, float %7191
  %7203 = select i1 %203, float 1.000000e+00, float %7192
  %7204 = select i1 %203, float %7200, float %7196
  %7205 = select i1 %203, float 0.000000e+00, float %7197
  %7206 = select i1 %203, float 0.000000e+00, float %7198
  %7207 = fmul fast float %7201, %6980
  %7208 = fmul fast float %7202, %6981
  %7209 = fmul fast float %7203, %6982
  %7210 = fadd fast float %7207, %7204
  %7211 = fadd fast float %7208, %7205
  %7212 = fadd fast float %7206, %7209
  %7213 = fmul fast float %7201, %6954
  %7214 = fmul fast float %7202, %6955
  %7215 = fmul fast float %7203, %6956
  %7216 = fmul fast float %112, %6992
  %7217 = fmul fast float %114, %6993
  %7218 = fsub fast float 1.000000e+00, %7216
  %7219 = fsub fast float 1.000000e+00, %7217
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7224 = fmul fast float %7218, %7221
  %7225 = fmul fast float %7218, %7222
  %7226 = fmul fast float %7218, %7223
  %7227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7228 = extractvalue %dx.types.CBufRet.f32 %7227, 0
  %7229 = extractvalue %dx.types.CBufRet.f32 %7227, 1
  %7230 = extractvalue %dx.types.CBufRet.f32 %7227, 2
  %7231 = fmul fast float %7219, %7228
  %7232 = fmul fast float %7219, %7229
  %7233 = fmul fast float %7219, %7230
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.CBufRet.f32 %7234, 2
  %7238 = fadd fast float %7231, %7235
  %7239 = fadd fast float %7238, %7224
  %7240 = fadd fast float %7232, %7236
  %7241 = fadd fast float %7240, %7225
  %7242 = fadd fast float %7233, %7237
  %7243 = fadd fast float %7242, %7226
  %7244 = fmul fast float %7239, %164
  %7245 = fmul fast float %7241, %164
  %7246 = fmul fast float %7243, %164
  br label %7247

; <label>:7247                                    ; preds = %7189, %6953
  %7248 = phi float [ %7244, %7189 ], [ %142, %6953 ]
  %7249 = phi float [ %7245, %7189 ], [ %143, %6953 ]
  %7250 = phi float [ %7246, %7189 ], [ %144, %6953 ]
  %7251 = phi float [ %164, %7189 ], [ %78, %6953 ]
  %7252 = phi float [ %7210, %7189 ], [ %6980, %6953 ]
  %7253 = phi float [ %7211, %7189 ], [ %6981, %6953 ]
  %7254 = phi float [ %7212, %7189 ], [ %6982, %6953 ]
  %7255 = phi float [ %7213, %7189 ], [ %6954, %6953 ]
  %7256 = phi float [ %7214, %7189 ], [ %6955, %6953 ]
  %7257 = phi float [ %7215, %7189 ], [ %6956, %6953 ]
  %7258 = phi float [ %7190, %7189 ], [ 1.000000e+00, %6953 ]
  br i1 %6989, label %8413, label %7259

; <label>:7259                                    ; preds = %7247
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7269 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7270, 3
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.CBufRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.CBufRet.f32 %7275, 2
  %7279 = extractvalue %dx.types.CBufRet.f32 %7275, 3
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7285 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7287 = fcmp fast olt float %7286, -5.000000e-01
  %7288 = call float @dx.op.dot3.f32(i32 55, float %7248, float %7249, float %7250, float %7248, float %7249, float %7250)  ; Dot3(ax,ay,az,bx,by,bz)
  %7289 = call float @dx.op.unary.f32(i32 25, float %7288)  ; Rsqrt(value)
  %7290 = fmul fast float %7289, %7288
  %7291 = fmul fast float %7289, %7248
  %7292 = fmul fast float %7289, %7249
  %7293 = fmul fast float %7289, %7250
  %7294 = fadd fast float %7290, %7264
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7291, float %7292, float %7293, float %7261, float %7262, float %7263)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7297 = extractvalue %dx.types.CBufRet.i32 %7296, 1
  %7298 = and i32 %7297, 1
  %7299 = icmp ne i32 %7298, 0
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7302 = fcmp fast ogt float %7301, 0.000000e+00
  %7303 = and i1 %7299, %7302
  br i1 %7303, label %7304, label %7710, !dx.controlflow.hints !103

; <label>:7304                                    ; preds = %7259
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 2
  %7309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.f32 %7309, 2
  %7311 = fsub fast float %7308, %7310
  %7312 = and i32 %7297, 2
  %7313 = extractvalue %dx.types.CBufRet.i32 %7296, 0
  %7314 = call i32 @dx.op.binary.i32(i32 40, i32 %7313, i32 3)  ; UMin(a,b)
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7309, 1
  %7320 = fsub fast float %7316, %7318
  %7321 = fsub fast float %7317, %7319
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = fcmp fast ogt float %7323, 0.000000e+00
  %7325 = fsub fast float -0.000000e+00, %7320
  %7326 = fsub fast float -0.000000e+00, %7321
  %7327 = call float @dx.op.dot2.f32(i32 54, float %7291, float %7292, float %7291, float %7292)  ; Dot2(ax,ay,bx,by)
  %7328 = call float @dx.op.dot2.f32(i32 54, float %7291, float %7292, float %7325, float %7326)  ; Dot2(ax,ay,bx,by)
  %7329 = fmul fast float %7328, 2.000000e+00
  %7330 = call float @dx.op.dot2.f32(i32 54, float %7325, float %7326, float %7325, float %7326)  ; Dot2(ax,ay,bx,by)
  %7331 = fmul fast float %7323, %7323
  %7332 = fsub fast float %7330, %7331
  %7333 = fmul fast float %7329, %7329
  %7334 = fmul fast float %7327, 4.000000e+00
  %7335 = fmul fast float %7334, %7332
  %7336 = fsub fast float %7333, %7335
  %7337 = fcmp fast ogt float %7336, 0.000000e+00
  br i1 %7337, label %7338, label %7353

; <label>:7338                                    ; preds = %7304
  %7339 = fcmp fast ogt float %7329, 0.000000e+00
  %7340 = call float @dx.op.unary.f32(i32 24, float %7336)  ; Sqrt(value)
  %7341 = fsub fast float -0.000000e+00, %7340
  %7342 = select i1 %7339, float %7340, float %7341
  %7343 = fadd fast float %7342, %7329
  %7344 = fmul float %7343, -5.000000e-01
  %7345 = fdiv fast float %7344, %7327
  %7346 = call float @dx.op.binary.f32(i32 35, float %7345, float 0.000000e+00)  ; FMax(a,b)
  %7347 = call float @dx.op.binary.f32(i32 36, float %7290, float %7346)  ; FMin(a,b)
  %7348 = fdiv fast float %7332, %7344
  %7349 = call float @dx.op.binary.f32(i32 35, float %7348, float 0.000000e+00)  ; FMax(a,b)
  %7350 = call float @dx.op.binary.f32(i32 36, float %7290, float %7349)  ; FMin(a,b)
  %7351 = call float @dx.op.binary.f32(i32 36, float %7347, float %7350)  ; FMin(a,b)
  %7352 = call float @dx.op.binary.f32(i32 35, float %7347, float %7350)  ; FMax(a,b)
  br label %7353

; <label>:7353                                    ; preds = %7338, %7304
  %7354 = phi float [ %7352, %7338 ], [ -1.000000e+00, %7304 ]
  %7355 = phi float [ %7351, %7338 ], [ -1.000000e+00, %7304 ]
  %7356 = phi i1 [ true, %7338 ], [ false, %7304 ]
  %7357 = and i1 %7324, %7356
  br i1 %7357, label %7358, label %7360

; <label>:7358                                    ; preds = %7353
  %7359 = fcmp fast oeq float %7355, %7354
  br i1 %7359, label %7663, label %7361

; <label>:7360                                    ; preds = %7353
  br i1 %7324, label %7663, label %7361

; <label>:7361                                    ; preds = %7360, %7358
  %7362 = phi float [ %7290, %7360 ], [ %7354, %7358 ]
  %7363 = phi float [ 0.000000e+00, %7360 ], [ %7355, %7358 ]
  %7364 = icmp ne i32 %7312, 0
  %7365 = fmul fast float %7362, %7293
  %7366 = fadd fast float %7365, %7306
  %7367 = fmul fast float %7366, %7362
  %7368 = select i1 %7364, float 0.000000e+00, float %7367
  %7369 = fcmp fast oeq float %7293, 0.000000e+00
  %7370 = fdiv fast float %7311, %7293
  %7371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7370)  ; FMax(a,b)
  %7372 = select i1 %7369, float %7362, float %7371
  %7373 = call float @dx.op.binary.f32(i32 36, float %7362, float %7372)  ; FMin(a,b)
  %7374 = fcmp fast ogt float %7293, 0.000000e+00
  %7375 = fcmp fast olt float %7311, 0.000000e+00
  br i1 %7374, label %7376, label %7433

; <label>:7376                                    ; preds = %7361
  %7377 = icmp eq i32 %7312, 0
  br i1 %7375, label %7378, label %7422

; <label>:7378                                    ; preds = %7376
  %7379 = select i1 %7377, float %7362, float 0.000000e+00
  %7380 = fsub fast float -0.000000e+00, %7379
  %7381 = call float @dx.op.unary.f32(i32 6, float %7380)  ; FAbs(value)
  %7382 = fmul fast float %7379, %7293
  %7383 = fadd fast float %7382, %7306
  %7384 = fmul fast float %7381, %7383
  %7385 = fsub fast float %7368, %7384
  %7386 = fsub fast float %7362, %7381
  %7387 = select i1 %7377, float %7386, float 0.000000e+00
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.CBufRet.f32 %7388, 2
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.CBufRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7399 = call float @dx.op.binary.f32(i32 36, float %7385, float %7398)  ; FMin(a,b)
  %7400 = fmul fast float %7396, %7387
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = fsub fast float %7393, %7389
  %7403 = fsub fast float %7394, %7390
  %7404 = fsub fast float %7395, %7391
  %7405 = fmul fast float %7401, %7402
  %7406 = fmul fast float %7401, %7403
  %7407 = fmul fast float %7401, %7404
  %7408 = fadd fast float %7405, %7389
  %7409 = fadd fast float %7406, %7390
  %7410 = fadd fast float %7407, %7391
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 1
  %7414 = fadd fast float %7413, %7412
  %7415 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7417 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7418 = fadd fast float %7417, %7416
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = fmul fast float %7415, %7399
  %7421 = fmul fast float %7420, %7419
  br label %7663

; <label>:7422                                    ; preds = %7376
  br i1 %7377, label %7423, label %7444

; <label>:7423                                    ; preds = %7422
  %7424 = call float @dx.op.binary.f32(i32 36, float %7373, float %7363)  ; FMin(a,b)
  %7425 = fsub fast float %7373, %7424
  %7426 = fsub fast float %7425, %7362
  %7427 = call float @dx.op.unary.f32(i32 6, float %7426)  ; FAbs(value)
  %7428 = fadd fast float %7425, %7362
  %7429 = fmul fast float %7428, %7293
  %7430 = fadd fast float %7429, %7306
  %7431 = fmul fast float %7430, %7427
  %7432 = fsub fast float %7368, %7431
  br label %7444

; <label>:7433                                    ; preds = %7361
  br i1 %7375, label %7434, label %7444

; <label>:7434                                    ; preds = %7433
  %7435 = call float @dx.op.binary.f32(i32 35, float %7363, float %7373)  ; FMax(a,b)
  %7436 = icmp eq i32 %7312, 0
  %7437 = select i1 %7436, float %7373, float 0.000000e+00
  %7438 = fsub fast float -0.000000e+00, %7437
  %7439 = call float @dx.op.unary.f32(i32 6, float %7438)  ; FAbs(value)
  %7440 = fmul fast float %7437, %7293
  %7441 = fadd fast float %7440, %7306
  %7442 = fmul fast float %7439, %7441
  %7443 = fsub fast float %7368, %7442
  br label %7444

; <label>:7444                                    ; preds = %7434, %7433, %7423, %7422
  %7445 = phi float [ %7363, %7422 ], [ %7363, %7423 ], [ %7435, %7434 ], [ %7363, %7433 ]
  %7446 = phi float [ 0.000000e+00, %7422 ], [ %7427, %7423 ], [ %7439, %7434 ], [ 0.000000e+00, %7433 ]
  %7447 = phi float [ %7368, %7422 ], [ %7432, %7423 ], [ %7443, %7434 ], [ %7368, %7433 ]
  %7448 = phi float [ %7373, %7422 ], [ %7373, %7423 ], [ %7362, %7434 ], [ %7362, %7433 ]
  %7449 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7449, align 4, !tbaa !104, !noalias !106
  %7450 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7450, align 4, !tbaa !104, !noalias !106
  %7451 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7451, align 4, !tbaa !104, !noalias !106
  %7452 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7452, align 4, !tbaa !104, !noalias !106
  %7453 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7453, align 4, !tbaa !104, !noalias !106
  %7454 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7454, align 4, !tbaa !104, !noalias !106
  %7455 = icmp sgt i32 %7314, 0
  br i1 %7455, label %7456, label %7517

; <label>:7456                                    ; preds = %7444
  br label %7457

; <label>:7457                                    ; preds = %7506, %7456
  %7458 = phi i32 [ %7507, %7506 ], [ 0, %7456 ]
  %7459 = phi i32 [ %7508, %7506 ], [ 0, %7456 ]
  %7460 = add nuw i32 %7459, 171
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7460)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 0
  %7466 = extractvalue %dx.types.CBufRet.f32 %7464, 1
  %7467 = fsub fast float %7462, %7465
  %7468 = fsub fast float %7463, %7466
  %7469 = extractvalue %dx.types.CBufRet.f32 %7461, 2
  %7470 = fsub fast float -0.000000e+00, %7467
  %7471 = fsub fast float -0.000000e+00, %7468
  %7472 = call float @dx.op.dot2.f32(i32 54, float %7291, float %7292, float %7470, float %7471)  ; Dot2(ax,ay,bx,by)
  %7473 = fmul fast float %7472, 2.000000e+00
  %7474 = call float @dx.op.dot2.f32(i32 54, float %7470, float %7471, float %7470, float %7471)  ; Dot2(ax,ay,bx,by)
  %7475 = fmul fast float %7469, %7469
  %7476 = fsub fast float %7474, %7475
  %7477 = fmul fast float %7473, %7473
  %7478 = fmul fast float %7334, %7476
  %7479 = fsub fast float %7477, %7478
  %7480 = fcmp fast ogt float %7479, 0.000000e+00
  br i1 %7480, label %7481, label %7496

; <label>:7481                                    ; preds = %7457
  %7482 = fcmp fast ogt float %7473, 0.000000e+00
  %7483 = call float @dx.op.unary.f32(i32 24, float %7479)  ; Sqrt(value)
  %7484 = fsub fast float -0.000000e+00, %7483
  %7485 = select i1 %7482, float %7483, float %7484
  %7486 = fadd fast float %7485, %7473
  %7487 = fmul float %7486, -5.000000e-01
  %7488 = fdiv fast float %7487, %7327
  %7489 = call float @dx.op.binary.f32(i32 35, float %7488, float 0.000000e+00)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 36, float %7362, float %7489)  ; FMin(a,b)
  %7491 = fdiv fast float %7476, %7487
  %7492 = call float @dx.op.binary.f32(i32 35, float %7491, float 0.000000e+00)  ; FMax(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7362, float %7492)  ; FMin(a,b)
  %7494 = call float @dx.op.binary.f32(i32 36, float %7490, float %7493)  ; FMin(a,b)
  %7495 = call float @dx.op.binary.f32(i32 35, float %7490, float %7493)  ; FMax(a,b)
  br label %7496

; <label>:7496                                    ; preds = %7481, %7457
  %7497 = phi float [ %7495, %7481 ], [ -1.000000e+00, %7457 ]
  %7498 = phi float [ %7494, %7481 ], [ -1.000000e+00, %7457 ]
  %7499 = phi i1 [ true, %7481 ], [ false, %7457 ]
  br i1 %7499, label %7500, label %7506

; <label>:7500                                    ; preds = %7496
  %7501 = call float @dx.op.binary.f32(i32 35, float %7445, float %7498)  ; FMax(a,b)
  %7502 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7459
  store float %7501, float* %7502, align 4, !tbaa !104, !noalias !106
  %7503 = call float @dx.op.binary.f32(i32 35, float %7445, float %7497)  ; FMax(a,b)
  %7504 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7459
  store float %7503, float* %7504, align 4, !tbaa !104, !noalias !106
  %7505 = add nsw i32 %7458, 1
  br label %7506

; <label>:7506                                    ; preds = %7500, %7496
  %7507 = phi i32 [ %7505, %7500 ], [ %7458, %7496 ]
  %7508 = add nuw nsw i32 %7459, 1
  %7509 = icmp eq i32 %7508, %7314
  br i1 %7509, label %7510, label %7457

; <label>:7510                                    ; preds = %7506
  %7511 = load float, float* %7451, align 4, !tbaa !104, !alias.scope !122, !noalias !125
  %7512 = load float, float* %7450, align 4, !tbaa !104, !alias.scope !128, !noalias !129
  %7513 = load float, float* %7449, align 4, !tbaa !104, !alias.scope !130, !noalias !131
  %7514 = load float, float* %7454, align 4, !tbaa !104, !alias.scope !132, !noalias !135
  %7515 = load float, float* %7453, align 4, !tbaa !104, !alias.scope !138, !noalias !139
  %7516 = load float, float* %7452, align 4, !tbaa !104, !alias.scope !140, !noalias !141
  br label %7517

; <label>:7517                                    ; preds = %7510, %7444
  %7518 = phi float [ -1.000000e+00, %7444 ], [ %7516, %7510 ]
  %7519 = phi float [ -1.000000e+00, %7444 ], [ %7515, %7510 ]
  %7520 = phi float [ -1.000000e+00, %7444 ], [ %7514, %7510 ]
  %7521 = phi float [ -1.000000e+00, %7444 ], [ %7513, %7510 ]
  %7522 = phi float [ -1.000000e+00, %7444 ], [ %7512, %7510 ]
  %7523 = phi float [ -1.000000e+00, %7444 ], [ %7511, %7510 ]
  %7524 = phi i32 [ 0, %7444 ], [ %7507, %7510 ]
  %7525 = call float @dx.op.binary.f32(i32 36, float %7522, float %7523)  ; FMin(a,b)
  %7526 = call float @dx.op.binary.f32(i32 36, float %7521, float %7525)  ; FMin(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %7521, float %7522)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7527, float %7523)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7521, float %7522)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7529, float %7528)  ; FMax(a,b)
  %7531 = call float @dx.op.binary.f32(i32 35, float %7522, float %7523)  ; FMax(a,b)
  %7532 = call float @dx.op.binary.f32(i32 35, float %7521, float %7531)  ; FMax(a,b)
  store float %7526, float* %7449, align 4, !tbaa !104, !alias.scope !130, !noalias !131
  store float %7530, float* %7450, align 4, !tbaa !104, !alias.scope !128, !noalias !129
  store float %7532, float* %7451, align 4, !tbaa !104, !alias.scope !122, !noalias !125
  %7533 = call float @dx.op.binary.f32(i32 36, float %7519, float %7520)  ; FMin(a,b)
  %7534 = call float @dx.op.binary.f32(i32 36, float %7518, float %7533)  ; FMin(a,b)
  %7535 = call float @dx.op.binary.f32(i32 35, float %7518, float %7519)  ; FMax(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7535, float %7520)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7518, float %7519)  ; FMin(a,b)
  %7538 = call float @dx.op.binary.f32(i32 35, float %7537, float %7536)  ; FMax(a,b)
  %7539 = call float @dx.op.binary.f32(i32 35, float %7519, float %7520)  ; FMax(a,b)
  %7540 = call float @dx.op.binary.f32(i32 35, float %7518, float %7539)  ; FMax(a,b)
  store float %7534, float* %7452, align 4, !tbaa !104, !alias.scope !140, !noalias !141
  store float %7538, float* %7453, align 4, !tbaa !104, !alias.scope !138, !noalias !139
  store float %7540, float* %7454, align 4, !tbaa !104, !alias.scope !132, !noalias !135
  %7541 = sub nsw i32 3, %7524
  %7542 = icmp sgt i32 %7541, 2
  br i1 %7542, label %7543, label %7581

; <label>:7543                                    ; preds = %7517
  %7544 = icmp eq i32 %7312, 0
  %7545 = fsub fast float %7362, %7446
  %7546 = select i1 %7544, float %7545, float %7446
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.CBufRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7555 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 3
  %7558 = call float @dx.op.binary.f32(i32 36, float %7447, float %7557)  ; FMin(a,b)
  %7559 = fmul fast float %7555, %7546
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fsub fast float %7552, %7548
  %7562 = fsub fast float %7553, %7549
  %7563 = fsub fast float %7554, %7550
  %7564 = fmul fast float %7560, %7561
  %7565 = fmul fast float %7560, %7562
  %7566 = fmul fast float %7560, %7563
  %7567 = fadd fast float %7564, %7548
  %7568 = fadd fast float %7565, %7549
  %7569 = fadd fast float %7566, %7550
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 1
  %7573 = fadd fast float %7572, %7571
  %7574 = call float @dx.op.unary.f32(i32 7, float %7573)  ; Saturate(value)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7576 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7577 = fadd fast float %7576, %7575
  %7578 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7579 = fmul fast float %7574, %7558
  %7580 = fmul fast float %7579, %7578
  br label %7663

; <label>:7581                                    ; preds = %7517
  %7582 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7541
  %7583 = load float, float* %7582, align 4, !tbaa !104, !noalias !106
  %7584 = fcmp fast olt float %7583, %7448
  %7585 = icmp sgt i32 %7524, 0
  %7586 = and i1 %7585, %7584
  br i1 %7586, label %7587, label %7624

; <label>:7587                                    ; preds = %7581
  br label %7588

; <label>:7588                                    ; preds = %7617, %7587
  %7589 = phi float [ %7618, %7617 ], [ %7446, %7587 ]
  %7590 = phi float [ %7619, %7617 ], [ %7447, %7587 ]
  %7591 = phi float [ %7599, %7617 ], [ %7583, %7587 ]
  %7592 = phi i32 [ %7596, %7617 ], [ %7541, %7587 ]
  %7593 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7592
  %7594 = load float, float* %7593, align 4, !tbaa !104, !noalias !106
  %7595 = icmp slt i32 %7592, 2
  %7596 = add nsw i32 %7592, 1
  %7597 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7596
  %7598 = load float, float* %7597, align 4, !tbaa !104, !noalias !106
  %7599 = select i1 %7595, float %7598, float %7362
  %7600 = call float @dx.op.binary.f32(i32 36, float %7599, float %7594)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7448, float %7600)  ; FMin(a,b)
  %7602 = icmp eq i32 %7312, 0
  %7603 = fadd fast float %7601, %7591
  %7604 = fmul fast float %7603, %7293
  %7605 = fadd fast float %7604, %7306
  br i1 %7602, label %7611, label %7606

; <label>:7606                                    ; preds = %7588
  %7607 = fsub fast float %7601, %7591
  %7608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7607)  ; FMax(a,b)
  %7609 = fmul fast float %7608, %7605
  %7610 = fadd fast float %7609, %7590
  br label %7617

; <label>:7611                                    ; preds = %7588
  %7612 = fsub fast float %7591, %7601
  %7613 = call float @dx.op.unary.f32(i32 6, float %7612)  ; FAbs(value)
  %7614 = fadd fast float %7613, %7589
  %7615 = fmul fast float %7613, %7605
  %7616 = fsub fast float %7590, %7615
  br label %7617

; <label>:7617                                    ; preds = %7611, %7606
  %7618 = phi float [ %7608, %7606 ], [ %7614, %7611 ]
  %7619 = phi float [ %7610, %7606 ], [ %7616, %7611 ]
  %7620 = fcmp fast olt float %7599, %7448
  %7621 = icmp slt i32 %7596, 3
  %7622 = and i1 %7621, %7620
  br i1 %7622, label %7588, label %7623

; <label>:7623                                    ; preds = %7617
  br label %7624

; <label>:7624                                    ; preds = %7623, %7581
  %7625 = phi float [ %7446, %7581 ], [ %7618, %7623 ]
  %7626 = phi float [ %7447, %7581 ], [ %7619, %7623 ]
  %7627 = fsub fast float %7362, %7625
  %7628 = select i1 %7364, float %7625, float %7627
  %7629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.CBufRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.CBufRet.f32 %7629, 2
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 0
  %7635 = extractvalue %dx.types.CBufRet.f32 %7633, 1
  %7636 = extractvalue %dx.types.CBufRet.f32 %7633, 2
  %7637 = extractvalue %dx.types.CBufRet.f32 %7633, 3
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 3
  %7640 = call float @dx.op.binary.f32(i32 36, float %7626, float %7639)  ; FMin(a,b)
  %7641 = fmul fast float %7637, %7628
  %7642 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7643 = fsub fast float %7634, %7630
  %7644 = fsub fast float %7635, %7631
  %7645 = fsub fast float %7636, %7632
  %7646 = fmul fast float %7642, %7643
  %7647 = fmul fast float %7642, %7644
  %7648 = fmul fast float %7642, %7645
  %7649 = fadd fast float %7646, %7630
  %7650 = fadd fast float %7647, %7631
  %7651 = fadd fast float %7648, %7632
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7655 = fadd fast float %7654, %7653
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7658 = extractvalue %dx.types.CBufRet.f32 %7652, 3
  %7659 = fadd fast float %7658, %7657
  %7660 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7661 = fmul fast float %7656, %7640
  %7662 = fmul fast float %7661, %7660
  br label %7663

; <label>:7663                                    ; preds = %7624, %7543, %7378, %7360, %7358
  %7664 = phi float [ %7387, %7378 ], [ %7546, %7543 ], [ %7628, %7624 ], [ 0.000000e+00, %7358 ], [ 0.000000e+00, %7360 ]
  %7665 = phi float [ %7421, %7378 ], [ %7580, %7543 ], [ %7662, %7624 ], [ 0.000000e+00, %7358 ], [ 0.000000e+00, %7360 ]
  %7666 = phi float [ %7408, %7378 ], [ %7567, %7543 ], [ %7649, %7624 ], [ 0.000000e+00, %7358 ], [ 0.000000e+00, %7360 ]
  %7667 = phi float [ %7409, %7378 ], [ %7568, %7543 ], [ %7650, %7624 ], [ 0.000000e+00, %7358 ], [ 0.000000e+00, %7360 ]
  %7668 = phi float [ %7410, %7378 ], [ %7569, %7543 ], [ %7651, %7624 ], [ 0.000000e+00, %7358 ], [ 0.000000e+00, %7360 ]
  %7669 = fmul fast float %7301, %7665
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7672 = fsub fast float %7308, %7671
  %7673 = fcmp fast olt float %7669, -2.000000e+01
  %7674 = call float @dx.op.unary.f32(i32 21, float %7669)  ; Exp(value)
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 2
  %7677 = extractvalue %dx.types.CBufRet.f32 %7675, 3
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7680 = fmul fast float %7677, %7672
  %7681 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7682 = fsub fast float 1.000000e+00, %7681
  %7683 = fmul fast float %7293, 5.000000e-01
  %7684 = fadd fast float %7683, 5.000000e-01
  %7685 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7686 = fsub fast float 1.000000e+00, %7685
  %7687 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7682)  ; FMax(a,b)
  %7688 = fdiv fast float %7686, %7687
  %7689 = fsub fast float %7672, %7250
  %7690 = call float @dx.op.unary.f32(i32 6, float %7689)  ; FAbs(value)
  %7691 = fmul fast float %7690, %7676
  %7692 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7693 = fsub fast float 1.000000e+00, %7691
  %7694 = fmul fast float %7693, %7692
  %7695 = fadd fast float %7694, %7691
  %7696 = fmul fast float %7679, %7672
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = fsub fast float 1.000000e+00, %7695
  %7699 = fmul fast float %7698, %7697
  %7700 = fadd fast float %7699, %7695
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fadd fast float %7674, -1.000000e+00
  %7703 = select i1 %7673, float -1.000000e+00, float %7702
  %7704 = fmul fast float %7701, %7703
  %7705 = fadd fast float %7704, 1.000000e+00
  %7706 = fsub fast float -0.000000e+00, %7704
  %7707 = fmul fast float %7666, %7706
  %7708 = fmul fast float %7667, %7706
  %7709 = fmul fast float %7668, %7706
  br label %7710

; <label>:7710                                    ; preds = %7663, %7259
  %7711 = phi float [ %7664, %7663 ], [ 0.000000e+00, %7259 ]
  %7712 = phi float [ %7705, %7663 ], [ 1.000000e+00, %7259 ]
  %7713 = phi float [ %7707, %7663 ], [ 0.000000e+00, %7259 ]
  %7714 = phi float [ %7708, %7663 ], [ 0.000000e+00, %7259 ]
  %7715 = phi float [ %7709, %7663 ], [ 0.000000e+00, %7259 ]
  %7716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7717 = extractvalue %dx.types.CBufRet.f32 %7716, 1
  %7718 = fsub fast float 1.000000e+00, %7712
  %7719 = fmul fast float %7718, %7294
  %7720 = fmul fast float %7719, %7717
  %7721 = fsub fast float %7294, %7720
  br i1 %7287, label %7722, label %7751, !dx.controlflow.hints !142

; <label>:7722                                    ; preds = %7710
  %7723 = fmul fast float %7295, %7284
  %7724 = fadd fast float %7723, %7285
  %7725 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7726 = fmul fast float %7266, %7721
  %7727 = fsub fast float -0.000000e+00, %7726
  %7728 = fmul fast float %7267, %7721
  %7729 = fsub fast float -0.000000e+00, %7728
  %7730 = call float @dx.op.unary.f32(i32 21, float %7727)  ; Exp(value)
  %7731 = call float @dx.op.unary.f32(i32 21, float %7729)  ; Exp(value)
  %7732 = call float @dx.op.binary.f32(i32 35, float %7274, float %7730)  ; FMax(a,b)
  %7733 = call float @dx.op.binary.f32(i32 35, float %7274, float %7731)  ; FMax(a,b)
  %7734 = fsub fast float %7733, %7732
  %7735 = fmul fast float %7734, %7725
  %7736 = fadd fast float %7735, %7732
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = fsub fast float %7271, %7276
  %7739 = fsub fast float %7272, %7277
  %7740 = fsub fast float %7273, %7278
  %7741 = fmul fast float %7725, %7738
  %7742 = fmul fast float %7725, %7739
  %7743 = fmul fast float %7725, %7740
  %7744 = fadd fast float %7741, %7276
  %7745 = fadd fast float %7742, %7277
  %7746 = fadd fast float %7743, %7278
  %7747 = fsub fast float 1.000000e+00, %7737
  %7748 = fmul fast float %7747, %7744
  %7749 = fmul fast float %7747, %7745
  %7750 = fmul fast float %7747, %7746
  br label %7810

; <label>:7751                                    ; preds = %7710
  %7752 = fmul fast float %7721, %7283
  %7753 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  %7754 = fsub fast float 2.000000e+00, %7753
  %7755 = fmul fast float %7753, 9.921875e-01
  %7756 = fmul fast float %7755, %7754
  %7757 = fadd fast float %7756, 3.906250e-03
  %7758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7757, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = fsub fast float %7753, %7759
  %7761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7760)  ; FMax(a,b)
  %7762 = fmul fast float %7269, %7250
  %7763 = call float @dx.op.unary.f32(i32 6, float %7762)  ; FAbs(value)
  %7764 = fcmp fast ogt float %7763, 0x3EB0C6F7A0000000
  br i1 %7764, label %7765, label %7771, !dx.controlflow.hints !143

; <label>:7765                                    ; preds = %7751
  %7766 = fmul fast float %7762, 0xBFF7154760000000
  %7767 = call float @dx.op.unary.f32(i32 21, float %7766)  ; Exp(value)
  %7768 = fsub fast float 1.000000e+00, %7767
  %7769 = fdiv fast float %7768, %7762
  %7770 = fmul fast float %7769, %7279
  br label %7771

; <label>:7771                                    ; preds = %7765, %7751
  %7772 = phi float [ %7770, %7765 ], [ %7279, %7751 ]
  %7773 = fadd fast float %7772, %7281
  %7774 = fmul fast float %7773, %7761
  %7775 = fmul fast float %7266, %7774
  %7776 = fsub fast float -0.000000e+00, %7775
  %7777 = fmul fast float %7267, %7774
  %7778 = fsub fast float -0.000000e+00, %7777
  %7779 = fmul fast float %7268, %7774
  %7780 = fsub fast float -0.000000e+00, %7779
  %7781 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7782 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7783 = call float @dx.op.unary.f32(i32 21, float %7780)  ; Exp(value)
  %7784 = fmul fast float %7295, %7295
  %7785 = fadd fast float %7784, 1.000000e+00
  %7786 = fmul fast float %7785, 0x3FAE8EC8A0000000
  %7787 = fmul fast float %7786, %7276
  %7788 = fmul fast float %7786, %7277
  %7789 = fmul fast float %7786, %7278
  %7790 = fmul fast float %7295, %7274
  %7791 = fsub fast float 1.000000e+00, %7790
  %7792 = fmul fast float %7274, %7274
  %7793 = fsub fast float 1.000000e+00, %7792
  %7794 = fmul fast float %7793, 0x3FB45F3060000000
  %7795 = fmul fast float %7791, %7791
  %7796 = fdiv fast float 1.000000e+00, %7795
  %7797 = fmul fast float %7794, %7796
  %7798 = fmul fast float %7797, %7271
  %7799 = fmul fast float %7797, %7272
  %7800 = fmul fast float %7797, %7273
  %7801 = fadd fast float %7798, %7787
  %7802 = fadd fast float %7799, %7788
  %7803 = fadd fast float %7800, %7789
  %7804 = fsub fast float 1.000000e+00, %7781
  %7805 = fsub fast float 1.000000e+00, %7782
  %7806 = fsub fast float 1.000000e+00, %7783
  %7807 = fmul fast float %7801, %7804
  %7808 = fmul fast float %7802, %7805
  %7809 = fmul fast float %7803, %7806
  br label %7810

; <label>:7810                                    ; preds = %7771, %7722
  %7811 = phi float [ %7748, %7722 ], [ %7807, %7771 ]
  %7812 = phi float [ %7749, %7722 ], [ %7808, %7771 ]
  %7813 = phi float [ %7750, %7722 ], [ %7809, %7771 ]
  %7814 = phi float [ %7737, %7722 ], [ %7781, %7771 ]
  %7815 = phi float [ %7737, %7722 ], [ %7782, %7771 ]
  %7816 = phi float [ %7737, %7722 ], [ %7783, %7771 ]
  br i1 %7303, label %7817, label %8015, !dx.controlflow.hints !144

; <label>:7817                                    ; preds = %7810
  %7818 = extractvalue %dx.types.CBufRet.f32 %7716, 0
  %7819 = fmul fast float %7818, %7718
  %7820 = fsub fast float %7713, %7811
  %7821 = fsub fast float %7714, %7812
  %7822 = fsub fast float %7715, %7813
  %7823 = fmul fast float %7819, %7820
  %7824 = fmul fast float %7819, %7821
  %7825 = fmul fast float %7819, %7822
  %7826 = fadd fast float %7823, %7811
  %7827 = fadd fast float %7824, %7812
  %7828 = fadd fast float %7825, %7813
  %7829 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7814)  ; FMax(a,b)
  %7830 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7815)  ; FMax(a,b)
  %7831 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7816)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7712)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7711, float %7721)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7833)  ; FMax(a,b)
  %7835 = fdiv fast float %7711, %7834
  %7836 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7837 = fdiv fast float %7721, %7834
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  %7839 = fcmp fast une float %7832, 1.000000e+00
  br i1 %7839, label %7840, label %7853, !dx.controlflow.hints !145

; <label>:7840                                    ; preds = %7817
  %7841 = call float @dx.op.unary.f32(i32 23, float %7832)  ; Log(value)
  %7842 = fmul fast float %7841, 0x3FE62E4300000000
  %7843 = fmul fast float %7713, %7842
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = fmul fast float %7714, %7842
  %7846 = fsub fast float -0.000000e+00, %7845
  %7847 = fmul fast float %7715, %7842
  %7848 = fsub fast float -0.000000e+00, %7847
  %7849 = fsub fast float 1.000000e+00, %7832
  %7850 = fdiv fast float %7844, %7849
  %7851 = fdiv fast float %7846, %7849
  %7852 = fdiv fast float %7848, %7849
  br label %7853

; <label>:7853                                    ; preds = %7840, %7817
  %7854 = phi float [ %7850, %7840 ], [ %7713, %7817 ]
  %7855 = phi float [ %7851, %7840 ], [ %7714, %7817 ]
  %7856 = phi float [ %7852, %7840 ], [ %7715, %7817 ]
  %7857 = phi float [ %7842, %7840 ], [ 0.000000e+00, %7817 ]
  %7858 = fcmp fast une float %7829, 1.000000e+00
  br i1 %7858, label %7859, label %7866, !dx.controlflow.hints !146

; <label>:7859                                    ; preds = %7853
  %7860 = call float @dx.op.unary.f32(i32 23, float %7829)  ; Log(value)
  %7861 = fmul fast float %7860, 0x3FE62E4300000000
  %7862 = fmul fast float %7826, %7861
  %7863 = fsub fast float -0.000000e+00, %7862
  %7864 = fsub fast float 1.000000e+00, %7829
  %7865 = fdiv fast float %7863, %7864
  br label %7866

; <label>:7866                                    ; preds = %7859, %7853
  %7867 = phi float [ %7865, %7859 ], [ %7826, %7853 ]
  %7868 = phi float [ %7861, %7859 ], [ 0.000000e+00, %7853 ]
  %7869 = fcmp fast une float %7830, 1.000000e+00
  br i1 %7869, label %7870, label %7877, !dx.controlflow.hints !146

; <label>:7870                                    ; preds = %7866
  %7871 = call float @dx.op.unary.f32(i32 23, float %7830)  ; Log(value)
  %7872 = fmul fast float %7871, 0x3FE62E4300000000
  %7873 = fmul fast float %7827, %7872
  %7874 = fsub fast float -0.000000e+00, %7873
  %7875 = fsub fast float 1.000000e+00, %7830
  %7876 = fdiv fast float %7874, %7875
  br label %7877

; <label>:7877                                    ; preds = %7870, %7866
  %7878 = phi float [ %7876, %7870 ], [ %7827, %7866 ]
  %7879 = phi float [ %7872, %7870 ], [ 0.000000e+00, %7866 ]
  %7880 = fcmp fast une float %7831, 1.000000e+00
  br i1 %7880, label %7881, label %7888, !dx.controlflow.hints !146

; <label>:7881                                    ; preds = %7877
  %7882 = call float @dx.op.unary.f32(i32 23, float %7831)  ; Log(value)
  %7883 = fmul fast float %7882, 0x3FE62E4300000000
  %7884 = fmul fast float %7828, %7883
  %7885 = fsub fast float -0.000000e+00, %7884
  %7886 = fsub fast float 1.000000e+00, %7831
  %7887 = fdiv fast float %7885, %7886
  br label %7888

; <label>:7888                                    ; preds = %7881, %7877
  %7889 = phi float [ %7887, %7881 ], [ %7828, %7877 ]
  %7890 = phi float [ %7883, %7881 ], [ 0.000000e+00, %7877 ]
  %7891 = fmul fast float %7854, %7838
  %7892 = fmul fast float %7855, %7838
  %7893 = fmul fast float %7856, %7838
  %7894 = fmul fast float %7857, %7838
  %7895 = fmul fast float %7867, %7836
  %7896 = fmul fast float %7878, %7836
  %7897 = fmul fast float %7889, %7836
  %7898 = fmul fast float %7868, %7836
  %7899 = fmul fast float %7879, %7836
  %7900 = fmul fast float %7890, %7836
  %7901 = fadd fast float %7895, %7891
  %7902 = fadd fast float %7896, %7892
  %7903 = fadd fast float %7897, %7893
  %7904 = fadd fast float %7898, %7894
  %7905 = fadd fast float %7899, %7894
  %7906 = fadd fast float %7900, %7894
  %7907 = fcmp fast une float %7904, 0.000000e+00
  br i1 %7907, label %7908, label %7915, !dx.controlflow.hints !147

; <label>:7908                                    ; preds = %7888
  %7909 = fmul fast float %7904, 0x3FF7154760000000
  %7910 = call float @dx.op.unary.f32(i32 21, float %7909)  ; Exp(value)
  %7911 = fsub fast float 1.000000e+00, %7910
  %7912 = fmul fast float %7901, %7911
  %7913 = fsub fast float -0.000000e+00, %7912
  %7914 = fdiv fast float %7913, %7904
  br label %7915

; <label>:7915                                    ; preds = %7908, %7888
  %7916 = phi float [ %7910, %7908 ], [ 1.000000e+00, %7888 ]
  %7917 = phi float [ %7914, %7908 ], [ %7901, %7888 ]
  %7918 = fcmp fast une float %7905, 0.000000e+00
  br i1 %7918, label %7919, label %7926, !dx.controlflow.hints !147

; <label>:7919                                    ; preds = %7915
  %7920 = fmul fast float %7905, 0x3FF7154760000000
  %7921 = call float @dx.op.unary.f32(i32 21, float %7920)  ; Exp(value)
  %7922 = fsub fast float 1.000000e+00, %7921
  %7923 = fmul fast float %7902, %7922
  %7924 = fsub fast float -0.000000e+00, %7923
  %7925 = fdiv fast float %7924, %7905
  br label %7926

; <label>:7926                                    ; preds = %7919, %7915
  %7927 = phi float [ %7921, %7919 ], [ 1.000000e+00, %7915 ]
  %7928 = phi float [ %7925, %7919 ], [ %7902, %7915 ]
  %7929 = fcmp fast une float %7906, 0.000000e+00
  br i1 %7929, label %7930, label %7937, !dx.controlflow.hints !147

; <label>:7930                                    ; preds = %7926
  %7931 = fmul fast float %7906, 0x3FF7154760000000
  %7932 = call float @dx.op.unary.f32(i32 21, float %7931)  ; Exp(value)
  %7933 = fsub fast float 1.000000e+00, %7932
  %7934 = fmul fast float %7903, %7933
  %7935 = fsub fast float -0.000000e+00, %7934
  %7936 = fdiv fast float %7935, %7906
  br label %7937

; <label>:7937                                    ; preds = %7930, %7926
  %7938 = phi float [ %7932, %7930 ], [ 1.000000e+00, %7926 ]
  %7939 = phi float [ %7936, %7930 ], [ %7903, %7926 ]
  %7940 = fcmp fast ogt float %7836, %7838
  br i1 %7940, label %7941, label %7961

; <label>:7941                                    ; preds = %7937
  %7942 = fsub fast float 1.000000e+00, %7838
  %7943 = fmul fast float %7854, %7942
  %7944 = fmul fast float %7855, %7942
  %7945 = fmul fast float %7856, %7942
  %7946 = fmul fast float %7857, %7942
  %7947 = fcmp fast une float %7946, 0.000000e+00
  br i1 %7947, label %7948, label %7999, !dx.controlflow.hints !148

; <label>:7948                                    ; preds = %7941
  %7949 = fmul fast float %7946, 0x3FF7154760000000
  %7950 = call float @dx.op.unary.f32(i32 21, float %7949)  ; Exp(value)
  %7951 = fsub fast float 1.000000e+00, %7950
  %7952 = fmul fast float %7943, %7951
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fmul fast float %7944, %7951
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = fmul fast float %7945, %7951
  %7957 = fsub fast float -0.000000e+00, %7956
  %7958 = fdiv fast float %7953, %7946
  %7959 = fdiv fast float %7955, %7946
  %7960 = fdiv fast float %7957, %7946
  br label %7999

; <label>:7961                                    ; preds = %7937
  %7962 = fsub fast float 1.000000e+00, %7836
  %7963 = fmul fast float %7867, %7962
  %7964 = fmul fast float %7878, %7962
  %7965 = fmul fast float %7889, %7962
  %7966 = fmul fast float %7868, %7962
  %7967 = fmul fast float %7879, %7962
  %7968 = fmul fast float %7890, %7962
  %7969 = fcmp fast une float %7966, 0.000000e+00
  br i1 %7969, label %7970, label %7977, !dx.controlflow.hints !147

; <label>:7970                                    ; preds = %7961
  %7971 = fmul fast float %7966, 0x3FF7154760000000
  %7972 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7973 = fsub fast float 1.000000e+00, %7972
  %7974 = fmul fast float %7963, %7973
  %7975 = fsub fast float -0.000000e+00, %7974
  %7976 = fdiv fast float %7975, %7966
  br label %7977

; <label>:7977                                    ; preds = %7970, %7961
  %7978 = phi float [ %7976, %7970 ], [ %7963, %7961 ]
  %7979 = phi float [ %7972, %7970 ], [ 1.000000e+00, %7961 ]
  %7980 = fcmp fast une float %7967, 0.000000e+00
  br i1 %7980, label %7981, label %7988, !dx.controlflow.hints !147

; <label>:7981                                    ; preds = %7977
  %7982 = fmul fast float %7967, 0x3FF7154760000000
  %7983 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7984 = fsub fast float 1.000000e+00, %7983
  %7985 = fmul fast float %7964, %7984
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = fdiv fast float %7986, %7967
  br label %7988

; <label>:7988                                    ; preds = %7981, %7977
  %7989 = phi float [ %7987, %7981 ], [ %7964, %7977 ]
  %7990 = phi float [ %7983, %7981 ], [ 1.000000e+00, %7977 ]
  %7991 = fcmp fast une float %7968, 0.000000e+00
  br i1 %7991, label %7992, label %7999, !dx.controlflow.hints !147

; <label>:7992                                    ; preds = %7988
  %7993 = fmul fast float %7968, 0x3FF7154760000000
  %7994 = call float @dx.op.unary.f32(i32 21, float %7993)  ; Exp(value)
  %7995 = fsub fast float 1.000000e+00, %7994
  %7996 = fmul fast float %7965, %7995
  %7997 = fsub fast float -0.000000e+00, %7996
  %7998 = fdiv fast float %7997, %7968
  br label %7999

; <label>:7999                                    ; preds = %7992, %7988, %7948, %7941
  %8000 = phi float [ %7998, %7992 ], [ %7960, %7948 ], [ %7945, %7941 ], [ %7965, %7988 ]
  %8001 = phi float [ %7989, %7992 ], [ %7959, %7948 ], [ %7944, %7941 ], [ %7989, %7988 ]
  %8002 = phi float [ %7978, %7992 ], [ %7958, %7948 ], [ %7943, %7941 ], [ %7978, %7988 ]
  %8003 = phi float [ %7994, %7992 ], [ %7950, %7948 ], [ 1.000000e+00, %7941 ], [ 1.000000e+00, %7988 ]
  %8004 = phi float [ %7990, %7992 ], [ %7950, %7948 ], [ 1.000000e+00, %7941 ], [ %7990, %7988 ]
  %8005 = phi float [ %7979, %7992 ], [ %7950, %7948 ], [ 1.000000e+00, %7941 ], [ %7979, %7988 ]
  %8006 = fmul fast float %8005, %7917
  %8007 = fmul fast float %8004, %7928
  %8008 = fmul fast float %8003, %7939
  %8009 = fadd fast float %8006, %8002
  %8010 = fadd fast float %8007, %8001
  %8011 = fadd fast float %8008, %8000
  %8012 = fmul fast float %8005, %7916
  %8013 = fmul fast float %8004, %7927
  %8014 = fmul fast float %8003, %7938
  br label %8015

; <label>:8015                                    ; preds = %7999, %7810
  %8016 = phi float [ %8014, %7999 ], [ %7816, %7810 ]
  %8017 = phi float [ %8013, %7999 ], [ %7815, %7810 ]
  %8018 = phi float [ %8012, %7999 ], [ %7814, %7810 ]
  %8019 = phi float [ %8011, %7999 ], [ %7813, %7810 ]
  %8020 = phi float [ %8010, %7999 ], [ %7812, %7810 ]
  %8021 = phi float [ %8009, %7999 ], [ %7811, %7810 ]
  %8022 = fmul fast float %8021, %6967
  %8023 = fmul fast float %8020, %6967
  %8024 = fmul fast float %8019, %6967
  %8025 = fmul fast float %8018, %7258
  %8026 = call float @dx.op.dot3.f32(i32 55, float %8018, float %8017, float %8016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8027 = call float @dx.op.dot3.f32(i32 55, float %8022, float %8023, float %8024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8028 = select i1 %203, float %8026, float %8018
  %8029 = select i1 %203, float %8026, float %8017
  %8030 = select i1 %203, float 1.000000e+00, float %8016
  %8031 = select i1 %203, float %8027, float %8022
  %8032 = select i1 %203, float 0.000000e+00, float %8023
  %8033 = select i1 %203, float 0.000000e+00, float %8024
  %8034 = fmul fast float %8028, %7252
  %8035 = fmul fast float %8029, %7253
  %8036 = fmul fast float %8030, %7254
  %8037 = fadd fast float %8034, %8031
  %8038 = fadd fast float %8035, %8032
  %8039 = fadd fast float %8033, %8036
  %8040 = fmul fast float %8028, %7255
  %8041 = fmul fast float %8029, %7256
  %8042 = fmul fast float %8030, %7257
  %8043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.i32 %8043, 0
  %8045 = icmp eq i32 %8044, 0
  br i1 %8045, label %8413, label %8046, !dx.controlflow.hints !149

; <label>:8046                                    ; preds = %8015
  %8047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8047, 2
  %8049 = extractvalue %dx.types.CBufRet.f32 %8047, 3
  %8050 = fmul fast float %8048, %87
  %8051 = fmul fast float %8049, %88
  %8052 = fmul fast float %8050, 2.000000e+00
  %8053 = fmul fast float %8051, 2.000000e+00
  %8054 = fsub fast float 1.000000e+00, %8052
  %8055 = fsub fast float 1.000000e+00, %8053
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %8060 = fmul fast float %8054, %8057
  %8061 = fmul fast float %8054, %8058
  %8062 = fmul fast float %8054, %8059
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 1
  %8066 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %8067 = fmul fast float %8055, %8064
  %8068 = fmul fast float %8055, %8065
  %8069 = fmul fast float %8055, %8066
  %8070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8071 = extractvalue %dx.types.CBufRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.CBufRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.CBufRet.f32 %8070, 2
  %8074 = fadd fast float %8067, %8071
  %8075 = fadd fast float %8074, %8060
  %8076 = fadd fast float %8068, %8072
  %8077 = fadd fast float %8076, %8061
  %8078 = fadd fast float %8069, %8073
  %8079 = fadd fast float %8078, %8062
  %8080 = fmul fast float %8075, %7251
  %8081 = fmul fast float %8077, %7251
  %8082 = fmul fast float %8079, %7251
  %8083 = fmul fast float %8080, %8080
  %8084 = fmul fast float %8081, %8081
  %8085 = fadd fast float %8083, %8084
  %8086 = fmul fast float %8082, %8082
  %8087 = fadd fast float %8085, %8086
  %8088 = call float @dx.op.unary.f32(i32 24, float %8087)  ; Sqrt(value)
  %8089 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %8090 = fsub fast float %8088, %8089
  %8091 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %8092 = fmul fast float %8090, %8091
  %8093 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8094 = fadd fast float %8093, -5.000000e-01
  %8095 = fmul fast float %8094, 2.000000e+00
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 2
  %8098 = call float @dx.op.binary.f32(i32 36, float %8097, float %8095)  ; FMin(a,b)
  %8099 = fsub fast float -0.000000e+00, %8097
  %8100 = fcmp fast ogt float %8098, %8099
  br i1 %8100, label %8101, label %8413, !dx.controlflow.hints !150

; <label>:8101                                    ; preds = %8046
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8104 = fcmp fast ogt float %8103, 0.000000e+00
  br i1 %8104, label %8105, label %8180, !dx.controlflow.hints !151

; <label>:8105                                    ; preds = %8101
  %8106 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8107 = extractvalue %dx.types.Dimensions %8106, 0
  %8108 = sitofp i32 %8107 to float
  %8109 = extractvalue %dx.types.Dimensions %8106, 1
  %8110 = sitofp i32 %8109 to float
  %8111 = fmul fast float %8050, %8108
  %8112 = fmul fast float %8051, %8110
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8115 = fsub fast float -0.000000e+00, %8114
  %8116 = fptoui float %8115 to i32
  %8117 = fptoui float %8111 to i32
  %8118 = fptoui float %8112 to i32
  %8119 = and i32 %8116, 31
  %8120 = lshr i32 %8117, %8119
  %8121 = lshr i32 %8118, %8119
  %8122 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8116, i32 %8120, i32 %8121, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8123 = extractvalue %dx.types.ResRet.f32 %8122, 0
  %8124 = fcmp fast olt float %8123, -1.000000e+00
  %8125 = fcmp fast ogt float %8123, -1.000000e+00
  %8126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.f32 %8126, 1
  %8128 = select i1 %8125, float %8127, float 1.000000e+00
  %8129 = fadd fast float %8123, 1.000000e+00
  %8130 = fmul fast float %8128, %8129
  %8131 = call float @dx.op.unary.f32(i32 6, float %8130)  ; FAbs(value)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8126, 3
  %8133 = fcmp fast oge float %8131, %8132
  %8134 = select i1 %8133, float 0x4197782600000000, float %8131
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 0
  %8137 = extractvalue %dx.types.CBufRet.f32 %8135, 1
  %8138 = extractvalue %dx.types.CBufRet.f32 %8135, 2
  %8139 = select i1 %8124, float %8136, float %8057
  %8140 = select i1 %8124, float %8137, float %8058
  %8141 = select i1 %8124, float %8138, float %8059
  %8142 = fmul fast float %8139, %8054
  %8143 = fmul fast float %8140, %8054
  %8144 = fmul fast float %8141, %8054
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8149 = select i1 %8124, float %8146, float %8064
  %8150 = select i1 %8124, float %8147, float %8065
  %8151 = select i1 %8124, float %8148, float %8066
  %8152 = fmul fast float %8149, %8055
  %8153 = fmul fast float %8150, %8055
  %8154 = fmul fast float %8151, %8055
  %8155 = fadd fast float %8152, %8142
  %8156 = fadd fast float %8153, %8143
  %8157 = fadd fast float %8154, %8144
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.CBufRet.f32 %8158, 1
  %8161 = extractvalue %dx.types.CBufRet.f32 %8158, 2
  %8162 = select i1 %8124, float %8159, float %8071
  %8163 = select i1 %8124, float %8160, float %8072
  %8164 = select i1 %8124, float %8161, float %8073
  %8165 = fadd fast float %8155, %8162
  %8166 = fadd fast float %8156, %8163
  %8167 = fadd fast float %8157, %8164
  %8168 = fmul fast float %8165, %8134
  %8169 = fmul fast float %8166, %8134
  %8170 = fmul fast float %8167, %8134
  %8171 = fmul fast float %8168, %8168
  %8172 = fmul fast float %8169, %8169
  %8173 = fadd fast float %8171, %8172
  %8174 = fmul fast float %8170, %8170
  %8175 = fadd fast float %8173, %8174
  %8176 = call float @dx.op.unary.f32(i32 24, float %8175)  ; Sqrt(value)
  %8177 = fsub fast float %8176, %8089
  %8178 = fmul fast float %8177, %8091
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  br label %8180

; <label>:8180                                    ; preds = %8105, %8101
  %8181 = phi float [ %8179, %8105 ], [ 1.000000e+00, %8101 ]
  %8182 = fmul fast float %8098, 5.000000e-01
  %8183 = fadd fast float %8182, 5.000000e-01
  %8184 = call float @dx.op.unary.f32(i32 22, float %8183)  ; Frc(value)
  %8185 = call float @dx.op.unary.f32(i32 27, float %8184)  ; Round_ni(value)
  %8186 = call float @dx.op.unary.f32(i32 22, float %8184)  ; Frc(value)
  %8187 = fmul fast float %8186, 2.000000e+00
  %8188 = fadd fast float %8187, -1.000000e+00
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8050, float %8051, float %8185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8194 = fadd fast float %8190, -5.000000e-01
  %8195 = fadd fast float %8192, -5.000000e-01
  %8196 = fmul fast float %8194, 0xBFD5555560000000
  %8197 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8195, float %8196)  ; FMad(a,b,c)
  %8198 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8191, float 0.000000e+00)  ; FMad(a,b,c)
  %8199 = fadd fast float %8198, %8193
  %8200 = fmul fast float %8194, -7.500000e-01
  %8201 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8195, float %8200)  ; FMad(a,b,c)
  %8202 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8191, float 0.000000e+00)  ; FMad(a,b,c)
  %8203 = fadd fast float %8202, %8193
  %8204 = call float @dx.op.binary.f32(i32 35, float %8197, float -1.000000e+00)  ; FMax(a,b)
  %8205 = call float @dx.op.binary.f32(i32 35, float %8199, float -1.000000e+00)  ; FMax(a,b)
  %8206 = call float @dx.op.binary.f32(i32 35, float %8201, float -1.000000e+00)  ; FMax(a,b)
  %8207 = call float @dx.op.binary.f32(i32 35, float %8203, float -1.000000e+00)  ; FMax(a,b)
  %8208 = call float @dx.op.binary.f32(i32 36, float %8204, float 1.000000e+00)  ; FMin(a,b)
  %8209 = call float @dx.op.binary.f32(i32 36, float %8205, float 1.000000e+00)  ; FMin(a,b)
  %8210 = call float @dx.op.binary.f32(i32 36, float %8206, float 1.000000e+00)  ; FMin(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8207, float 1.000000e+00)  ; FMin(a,b)
  %8212 = fcmp fast olt float %8208, 0x3FEFFF8020000000
  br i1 %8212, label %8213, label %8328, !dx.controlflow.hints !152

; <label>:8213                                    ; preds = %8180
  %8214 = extractvalue %dx.types.CBufRet.f32 %8096, 3
  %8215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8216 = extractvalue %dx.types.CBufRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.CBufRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.CBufRet.f32 %8215, 2
  %8219 = extractvalue %dx.types.CBufRet.f32 %8215, 3
  %8220 = fsub fast float %8216, %8208
  %8221 = fsub fast float %8217, %8209
  %8222 = fsub fast float %8218, %8210
  %8223 = fsub fast float %8219, %8211
  %8224 = fmul fast float %8220, %8214
  %8225 = fmul fast float %8221, %8214
  %8226 = fmul fast float %8222, %8214
  %8227 = fmul fast float %8223, %8214
  %8228 = fadd fast float %8224, %8208
  %8229 = fadd fast float %8225, %8209
  %8230 = fsub fast float -0.000000e+00, %8229
  %8231 = fadd fast float %8226, %8210
  %8232 = fadd fast float %8227, %8211
  %8233 = fmul fast float %8228, %8228
  %8234 = fsub fast float %8229, %8233
  %8235 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8234)  ; FMax(a,b)
  %8236 = fdiv fast float 1.000000e+00, %8235
  %8237 = fmul fast float %8229, %8228
  %8238 = fsub fast float %8231, %8237
  %8239 = fsub fast float %8188, %8228
  %8240 = fmul fast float %8188, %8188
  %8241 = fsub fast float %8240, %8229
  %8242 = fmul fast float %8239, %8236
  %8243 = fmul fast float %8242, %8238
  %8244 = fsub fast float %8241, %8243
  %8245 = fmul fast float %8229, %8229
  %8246 = fsub fast float %8232, %8245
  %8247 = fmul fast float %8238, %8238
  %8248 = fmul fast float %8247, %8236
  %8249 = fsub fast float %8246, %8248
  %8250 = fdiv fast float %8244, %8249
  %8251 = fmul fast float %8238, %8250
  %8252 = fsub fast float %8239, %8251
  %8253 = fmul fast float %8252, %8236
  %8254 = fmul fast float %8253, %8228
  %8255 = fsub fast float 1.000000e+00, %8254
  %8256 = fmul fast float %8229, %8250
  %8257 = fsub fast float %8255, %8256
  %8258 = fmul fast float %8253, %8253
  %8259 = fmul fast float %8250, 4.000000e+00
  %8260 = fmul fast float %8259, %8257
  %8261 = fsub fast float %8258, %8260
  %8262 = call float @dx.op.unary.f32(i32 24, float %8261)  ; Sqrt(value)
  %8263 = fcmp fast oge float %8253, 0.000000e+00
  %8264 = fsub fast float -0.000000e+00, %8262
  %8265 = select i1 %8263, float %8264, float %8262
  %8266 = fsub fast float %8265, %8253
  %8267 = fdiv fast float %8266, %8250
  %8268 = fdiv fast float %8257, %8266
  %8269 = fmul fast float %8267, 5.000000e-01
  %8270 = fmul fast float %8268, 2.000000e+00
  %8271 = select i1 %8263, float %8269, float %8270
  %8272 = select i1 %8263, float %8270, float %8269
  %8273 = call float @dx.op.binary.f32(i32 35, float %8271, float %8272)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 36, float %8271, float %8272)  ; FMin(a,b)
  %8275 = fcmp fast ogt float %8188, %8274
  br i1 %8275, label %8276, label %8286

; <label>:8276                                    ; preds = %8213
  %8277 = fsub fast float %8188, %8274
  %8278 = fsub fast float %8273, %8274
  %8279 = fmul fast float %8277, %8278
  %8280 = fmul fast float %8273, %8188
  %8281 = fadd fast float %8273, %8188
  %8282 = fmul fast float %8281, %8228
  %8283 = fadd fast float %8280, %8229
  %8284 = fsub fast float %8283, %8282
  %8285 = fdiv fast float %8284, %8279
  br label %8286

; <label>:8286                                    ; preds = %8276, %8213
  %8287 = phi float [ %8285, %8276 ], [ 0.000000e+00, %8213 ]
  %8288 = fcmp fast ogt float %8188, %8273
  %8289 = fsub fast float %8188, %8273
  br i1 %8288, label %8290, label %8300

; <label>:8290                                    ; preds = %8286
  %8291 = fsub fast float %8273, %8274
  %8292 = fmul fast float %8291, %8289
  %8293 = fmul fast float %8274, %8188
  %8294 = fadd fast float %8274, %8188
  %8295 = fmul fast float %8294, %8228
  %8296 = fsub fast float %8230, %8293
  %8297 = fadd fast float %8296, %8295
  %8298 = fdiv fast float %8297, %8292
  %8299 = fadd fast float %8298, %8287
  br label %8300

; <label>:8300                                    ; preds = %8290, %8286
  %8301 = phi float [ %8299, %8290 ], [ %8287, %8286 ]
  %8302 = fsub fast float %8188, %8274
  %8303 = fmul fast float %8302, %8289
  %8304 = fmul fast float %8274, %8273
  %8305 = fadd fast float %8274, %8273
  %8306 = fmul fast float %8305, %8228
  %8307 = fadd fast float %8304, %8229
  %8308 = fsub fast float %8307, %8306
  %8309 = fdiv fast float %8308, %8303
  %8310 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8311 = fcmp fast oeq float %6979, 0.000000e+00
  %8312 = extractvalue %dx.types.CBufRet.f32 %8096, 0
  %8313 = fcmp fast oeq float %8312, 0.000000e+00
  %8314 = or i1 %8311, %8313
  %8315 = fmul fast float %8312, 2.000000e+00
  %8316 = fadd fast float %8097, %8098
  %8317 = fdiv fast float %8316, %8315
  %8318 = call float @dx.op.unary.f32(i32 7, float %8317)  ; Saturate(value)
  %8319 = fmul fast float %8318, 2.000000e+00
  %8320 = fsub fast float 3.000000e+00, %8319
  %8321 = fmul fast float %8318, %8318
  %8322 = fmul fast float %8321, %8320
  %8323 = select i1 %8314, float 1.000000e+00, float %8322
  %8324 = fmul fast float %8309, %6979
  %8325 = fadd fast float %8310, %8324
  %8326 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8327 = fmul fast float %8323, %8326
  br label %8328

; <label>:8328                                    ; preds = %8300, %8180
  %8329 = phi float [ %8327, %8300 ], [ 0.000000e+00, %8180 ]
  %8330 = fsub fast float 1.000000e+00, %8329
  %8331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8050, float %8051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8332 = extractvalue %dx.types.ResRet.f32 %8331, 0
  %8333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.i32 %8333, 2
  %8335 = icmp eq i32 %8334, 0
  br i1 %8335, label %8341, label %8336

; <label>:8336                                    ; preds = %8328
  %8337 = call float @dx.op.unary.f32(i32 7, float %8329)  ; Saturate(value)
  %8338 = fadd fast float %8332, -1.000000e+00
  %8339 = fmul fast float %8337, %8338
  %8340 = fadd fast float %8339, 1.000000e+00
  br label %8341

; <label>:8341                                    ; preds = %8336, %8328
  %8342 = phi float [ %8340, %8336 ], [ %8330, %8328 ]
  br i1 %8104, label %8343, label %8361

; <label>:8343                                    ; preds = %8341
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8346 = fsub fast float %8181, %8345
  %8347 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8348 = fsub fast float %8181, %8103
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8350 = fsub fast float %8347, %8349
  %8351 = fsub fast float %8183, %8349
  %8352 = fdiv fast float %8351, %8350
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = fmul fast float %8353, 2.000000e+00
  %8355 = fsub fast float 3.000000e+00, %8354
  %8356 = fsub fast float %8332, %8342
  %8357 = fmul fast float %8353, %8353
  %8358 = fmul fast float %8357, %8356
  %8359 = fmul fast float %8358, %8355
  %8360 = fadd fast float %8359, %8342
  br label %8361

; <label>:8361                                    ; preds = %8343, %8341
  %8362 = phi float [ %8360, %8343 ], [ %8342, %8341 ]
  %8363 = call float @dx.op.binary.f32(i32 35, float %8332, float %8362)  ; FMax(a,b)
  %8364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.i32 %8364, 2
  %8366 = and i32 %8365, 1
  %8367 = icmp eq i32 %8366, 0
  %8368 = fcmp fast une float %8363, 1.000000e+00
  %8369 = and i1 %8368, %8367
  br i1 %8369, label %8370, label %8389

; <label>:8370                                    ; preds = %8361
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8050, float %8051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8375, 1
  %8377 = fmul fast float %8376, %8372
  %8378 = fmul fast float %8376, %8373
  %8379 = fmul fast float %8376, %8374
  %8380 = fcmp fast ogt float %8332, 0x3FEFFF2E40000000
  %8381 = fsub fast float 1.000000e+00, %8363
  %8382 = fsub fast float 1.000000e+00, %8332
  %8383 = fdiv fast float %8381, %8382
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = select i1 %8380, float 0.000000e+00, float %8384
  %8386 = fmul fast float %8377, %8385
  %8387 = fmul fast float %8378, %8385
  %8388 = fmul fast float %8379, %8385
  br label %8389

; <label>:8389                                    ; preds = %8370, %8361
  %8390 = phi float [ 0.000000e+00, %8361 ], [ %8386, %8370 ]
  %8391 = phi float [ 0.000000e+00, %8361 ], [ %8387, %8370 ]
  %8392 = phi float [ 0.000000e+00, %8361 ], [ %8388, %8370 ]
  %8393 = fmul fast float %8390, %6967
  %8394 = fmul fast float %8391, %6967
  %8395 = fmul fast float %8392, %6967
  %8396 = fmul fast float %8363, %8025
  %8397 = call float @dx.op.dot3.f32(i32 55, float %8363, float %8363, float %8363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8398 = call float @dx.op.dot3.f32(i32 55, float %8393, float %8394, float %8395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8399 = select i1 %203, float %8397, float %8363
  %8400 = select i1 %203, float 1.000000e+00, float %8363
  %8401 = select i1 %203, float %8398, float %8393
  %8402 = select i1 %203, float 0.000000e+00, float %8394
  %8403 = select i1 %203, float 0.000000e+00, float %8395
  %8404 = fmul fast float %8399, %8037
  %8405 = fmul fast float %8399, %8038
  %8406 = fmul fast float %8400, %8039
  %8407 = fadd fast float %8404, %8401
  %8408 = fadd fast float %8405, %8402
  %8409 = fadd fast float %8403, %8406
  %8410 = fmul fast float %8399, %8040
  %8411 = fmul fast float %8399, %8041
  %8412 = fmul fast float %8400, %8042
  br label %8413

; <label>:8413                                    ; preds = %8389, %8046, %8015, %7247
  %8414 = phi float [ %7252, %7247 ], [ %8037, %8015 ], [ %8407, %8389 ], [ %8037, %8046 ]
  %8415 = phi float [ %7253, %7247 ], [ %8038, %8015 ], [ %8408, %8389 ], [ %8038, %8046 ]
  %8416 = phi float [ %7254, %7247 ], [ %8039, %8015 ], [ %8409, %8389 ], [ %8039, %8046 ]
  %8417 = phi float [ %7255, %7247 ], [ %8040, %8015 ], [ %8410, %8389 ], [ %8040, %8046 ]
  %8418 = phi float [ %7256, %7247 ], [ %8041, %8015 ], [ %8411, %8389 ], [ %8041, %8046 ]
  %8419 = phi float [ %7257, %7247 ], [ %8042, %8015 ], [ %8412, %8389 ], [ %8042, %8046 ]
  %8420 = phi float [ %7258, %7247 ], [ %8025, %8015 ], [ %8396, %8389 ], [ %8025, %8046 ]
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 3
  %8424 = fmul fast float %8422, %87
  %8425 = fmul fast float %8423, %88
  %8426 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8427 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8428 = select i1 %6989, i32 2, i32 0
  %8429 = or i32 %8428, 1
  %8430 = uitofp i32 %8429 to float
  %8431 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8426, float %8427, float %8430, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8432 = extractvalue %dx.types.ResRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.ResRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.ResRet.f32 %8431, 2
  %8435 = extractvalue %dx.types.ResRet.f32 %8431, 3
  %8436 = add nuw nsw i32 %8428, 2
  %8437 = uitofp i32 %8436 to float
  %8438 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8426, float %8427, float %8437, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8439 = extractvalue %dx.types.ResRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.ResRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.ResRet.f32 %8438, 2
  %8442 = extractvalue %dx.types.ResRet.f32 %8438, 3
  %8443 = call float @dx.op.binary.f32(i32 35, float %8433, float %8434)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 35, float %8432, float %8443)  ; FMax(a,b)
  %8445 = call float @dx.op.binary.f32(i32 35, float %8444, float %8435)  ; FMax(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8440, float %8441)  ; FMin(a,b)
  %8447 = call float @dx.op.binary.f32(i32 36, float %8439, float %8446)  ; FMin(a,b)
  %8448 = call float @dx.op.binary.f32(i32 36, float %8447, float %8442)  ; FMin(a,b)
  %8449 = fmul fast float %8445, 2.550000e+02
  %8450 = fadd fast float %8449, 0x3F70101020000000
  %8451 = fptoui float %8450 to i32
  %8452 = fmul fast float %8448, 2.550000e+02
  %8453 = fadd fast float %8452, 0x3F70101020000000
  %8454 = fptoui float %8453 to i32
  %8455 = icmp ult i32 %8451, %8454
  br i1 %8455, label %8456, label %8625

; <label>:8456                                    ; preds = %8413
  %8457 = fcmp fast ogt float %77, 9.843750e-01
  %8458 = fadd fast float %7251, -4.000000e+00
  %8459 = select i1 %8457, float -4.000000e+00, float %8458
  %8460 = call float @dx.op.binary.f32(i32 35, float %8459, float 0.000000e+00)  ; FMax(a,b)
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 0
  %8463 = fadd fast float %8462, %8460
  %8464 = extractvalue %dx.types.CBufRet.f32 %8461, 2
  %8465 = fmul fast float %8463, %8464
  %8466 = call float @dx.op.unary.f32(i32 23, float %8465)  ; Log(value)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8461, 3
  %8468 = fmul fast float %8467, %8466
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8471 = fmul fast float %8468, %8470
  %8472 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8473 = uitofp i32 %8451 to float
  %8474 = uitofp i32 %8454 to float
  %8475 = fadd fast float %8473, 5.000000e-01
  %8476 = fadd fast float %8474, 5.000000e-01
  %8477 = fmul fast float %8470, %8475
  %8478 = fmul fast float %8470, %8476
  %8479 = fadd fast float %8477, 0x3F0FFB4800000000
  %8480 = fadd fast float %8478, 0xBF0FFB4800000000
  %8481 = call float @dx.op.binary.f32(i32 35, float %8472, float %8479)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8481, float %8480)  ; FMin(a,b)
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8487 = select i1 %6989, float %8486, float 0.000000e+00
  %8488 = fmul fast float %8484, %8482
  %8489 = fadd fast float %8487, %8488
  %8490 = fadd fast float %8487, %8485
  %8491 = fsub fast float %8484, %8485
  %8492 = fadd fast float %8491, %8487
  %8493 = call float @dx.op.binary.f32(i32 35, float %8489, float %8490)  ; FMax(a,b)
  %8494 = call float @dx.op.binary.f32(i32 36, float %8493, float %8492)  ; FMin(a,b)
  %8495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8426, float %8427, float %8494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8496 = extractvalue %dx.types.ResRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.ResRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.ResRet.f32 %8495, 2
  %8499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.i32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.i32 %8499, 1
  %8502 = uitofp i32 %8500 to float
  %8503 = uitofp i32 %8501 to float
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = fmul fast float %8502, %8426
  %8508 = fmul fast float %8503, %8427
  %8509 = fadd fast float %8507, -5.000000e-01
  %8510 = fadd fast float %8508, -5.000000e-01
  %8511 = call float @dx.op.unary.f32(i32 22, float %8509)  ; Frc(value)
  %8512 = call float @dx.op.unary.f32(i32 22, float %8510)  ; Frc(value)
  %8513 = fmul fast float %8511, %8511
  %8514 = fmul fast float %8513, %8511
  %8515 = fsub fast float 3.000000e+00, %8511
  %8516 = fmul fast float %8513, %8515
  %8517 = fmul fast float %8511, 3.000000e+00
  %8518 = fmul fast float %8514, 3.000000e+00
  %8519 = fmul fast float %8513, 6.000000e+00
  %8520 = fsub fast float %8518, %8519
  %8521 = fadd fast float %8520, 4.000000e+00
  %8522 = fmul fast float %8521, 0x3FC5555560000000
  %8523 = fmul fast float %8514, -3.000000e+00
  %8524 = fadd fast float %8513, %8511
  %8525 = fmul fast float %8524, 3.000000e+00
  %8526 = fadd fast float %8523, 1.000000e+00
  %8527 = fadd fast float %8526, %8525
  %8528 = fmul fast float %8514, 0x3FC5555560000000
  %8529 = fmul fast float %8512, %8512
  %8530 = fmul fast float %8529, %8512
  %8531 = fsub fast float 3.000000e+00, %8512
  %8532 = fmul fast float %8529, %8531
  %8533 = fmul fast float %8512, 3.000000e+00
  %8534 = fmul fast float %8530, 3.000000e+00
  %8535 = fmul fast float %8529, 6.000000e+00
  %8536 = fsub fast float %8534, %8535
  %8537 = fadd fast float %8536, 4.000000e+00
  %8538 = fmul fast float %8537, 0x3FC5555560000000
  %8539 = fmul fast float %8530, -3.000000e+00
  %8540 = fadd fast float %8529, %8512
  %8541 = fmul fast float %8540, 3.000000e+00
  %8542 = fadd fast float %8539, 1.000000e+00
  %8543 = fadd fast float %8542, %8541
  %8544 = fmul fast float %8530, 0x3FC5555560000000
  %8545 = fadd fast float %8511, 1.000000e+00
  %8546 = fsub fast float 1.000000e+00, %8517
  %8547 = fadd fast float %8546, %8516
  %8548 = fadd fast float %8547, %8521
  %8549 = fmul fast float %8548, 0x3FC5555560000000
  %8550 = fdiv fast float %8522, %8549
  %8551 = fsub fast float %8545, %8550
  %8552 = fsub fast float 1.000000e+00, %8511
  %8553 = fadd fast float %8527, %8514
  %8554 = fmul fast float %8553, 0x3FC5555560000000
  %8555 = fdiv fast float %8528, %8554
  %8556 = fadd fast float %8552, %8555
  %8557 = fadd fast float %8512, 1.000000e+00
  %8558 = fsub fast float 1.000000e+00, %8533
  %8559 = fadd fast float %8558, %8532
  %8560 = fadd fast float %8559, %8537
  %8561 = fmul fast float %8560, 0x3FC5555560000000
  %8562 = fdiv fast float %8538, %8561
  %8563 = fsub fast float %8557, %8562
  %8564 = fsub fast float 1.000000e+00, %8512
  %8565 = fadd fast float %8543, %8530
  %8566 = fmul fast float %8565, 0x3FC5555560000000
  %8567 = fdiv fast float %8544, %8566
  %8568 = fadd fast float %8567, %8564
  %8569 = fmul fast float %8551, %8505
  %8570 = fsub fast float %8426, %8569
  %8571 = fmul fast float %8556, %8505
  %8572 = fadd fast float %8571, %8426
  %8573 = fmul fast float %8568, %8506
  %8574 = fadd fast float %8573, %8427
  %8575 = fmul fast float %8563, %8506
  %8576 = fsub fast float %8427, %8575
  %8577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8570, float %8576, float %8494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8578 = extractvalue %dx.types.ResRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.ResRet.f32 %8577, 1
  %8580 = extractvalue %dx.types.ResRet.f32 %8577, 2
  %8581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8572, float %8576, float %8494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.ResRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.ResRet.f32 %8581, 2
  %8585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8570, float %8574, float %8494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8586 = extractvalue %dx.types.ResRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.ResRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.ResRet.f32 %8585, 2
  %8589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8572, float %8574, float %8494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8590 = extractvalue %dx.types.ResRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.ResRet.f32 %8589, 1
  %8592 = extractvalue %dx.types.ResRet.f32 %8589, 2
  %8593 = fsub fast float %8586, %8578
  %8594 = fsub fast float %8587, %8579
  %8595 = fsub fast float %8588, %8580
  %8596 = fmul fast float %8593, %8566
  %8597 = fmul fast float %8594, %8566
  %8598 = fmul fast float %8595, %8566
  %8599 = fadd fast float %8596, %8578
  %8600 = fadd fast float %8597, %8579
  %8601 = fadd fast float %8598, %8580
  %8602 = fsub fast float %8590, %8582
  %8603 = fsub fast float %8591, %8583
  %8604 = fsub fast float %8592, %8584
  %8605 = fmul fast float %8602, %8566
  %8606 = fmul fast float %8603, %8566
  %8607 = fmul fast float %8604, %8566
  %8608 = fsub fast float %8582, %8599
  %8609 = fadd fast float %8608, %8605
  %8610 = fsub fast float %8583, %8600
  %8611 = fadd fast float %8610, %8606
  %8612 = fsub fast float %8584, %8601
  %8613 = fadd fast float %8612, %8607
  %8614 = fmul fast float %8609, %8554
  %8615 = fmul fast float %8611, %8554
  %8616 = fmul fast float %8613, %8554
  %8617 = fadd fast float %8614, %8599
  %8618 = fadd fast float %8615, %8600
  %8619 = fadd fast float %8616, %8601
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 1
  %8622 = fmul fast float %8617, %8621
  %8623 = fmul fast float %8618, %8621
  %8624 = fmul fast float %8619, %8621
  br label %8625

; <label>:8625                                    ; preds = %8456, %8413
  %8626 = phi float [ %8496, %8456 ], [ 1.000000e+00, %8413 ]
  %8627 = phi float [ %8497, %8456 ], [ 1.000000e+00, %8413 ]
  %8628 = phi float [ %8498, %8456 ], [ 1.000000e+00, %8413 ]
  %8629 = phi float [ %8622, %8456 ], [ 0.000000e+00, %8413 ]
  %8630 = phi float [ %8623, %8456 ], [ 0.000000e+00, %8413 ]
  %8631 = phi float [ %8624, %8456 ], [ 0.000000e+00, %8413 ]
  %8632 = fmul fast float %8629, %6967
  %8633 = fmul fast float %8630, %6967
  %8634 = fmul fast float %8631, %6967
  %8635 = fmul fast float %8626, %8420
  %8636 = call float @dx.op.dot3.f32(i32 55, float %8626, float %8627, float %8628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8637 = call float @dx.op.dot3.f32(i32 55, float %8632, float %8633, float %8634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8638 = select i1 %203, float %8636, float %8626
  %8639 = select i1 %203, float %8636, float %8627
  %8640 = select i1 %203, float 1.000000e+00, float %8628
  %8641 = select i1 %203, float %8637, float %8632
  %8642 = select i1 %203, float 0.000000e+00, float %8633
  %8643 = select i1 %203, float 0.000000e+00, float %8634
  %8644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.i32 %8644, 3
  %8646 = and i32 %8645, 3
  %8647 = icmp ne i32 %8646, 0
  %8648 = and i32 %8645, 4
  %8649 = icmp ne i32 %8648, 0
  %8650 = and i1 %8647, %8649
  %8651 = and i1 %203, %8650
  br i1 %8651, label %8652, label %8658

; <label>:8652                                    ; preds = %8625
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8655 = fadd fast float %8635, -1.000000e+00
  %8656 = fmul fast float %8654, %8655
  %8657 = fadd fast float %8656, 1.000000e+00
  br label %8658

; <label>:8658                                    ; preds = %8652, %8625
  %8659 = phi float [ %8657, %8652 ], [ %8635, %8625 ]
  %8660 = fadd fast float %8417, %8414
  %8661 = fmul fast float %8638, %8660
  %8662 = fadd fast float %8661, %8641
  %8663 = fadd fast float %8418, %8415
  %8664 = fmul fast float %8639, %8663
  %8665 = fadd fast float %8664, %8642
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 0
  br i1 %203, label %8668, label %8692

; <label>:8668                                    ; preds = %8658
  %8669 = fadd fast float %8662, %8665
  %8670 = fmul fast float %8667, %8669
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 3
  %8673 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %8674 = fsub fast float %6976, %6970
  %8675 = fadd fast float %8674, %6977
  %8676 = fsub fast float %8675, %8673
  %8677 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %8678 = fmul fast float %8676, %8677
  %8679 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8680 = fsub fast float %8679, %8672
  %8681 = fmul fast float %8680, %8659
  %8682 = fadd fast float %8681, %8672
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 0
  %8685 = fsub fast float %8682, %8684
  %8686 = fmul fast float %8685, 1.000000e+01
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = fsub fast float %5047, %6967
  %8689 = fmul fast float %8687, %8688
  %8690 = fadd fast float %8689, %6967
  %8691 = fmul fast float %8690, %8682
  br label %8716

; <label>:8692                                    ; preds = %8658
  %8693 = fadd fast float %8419, %8416
  %8694 = fmul fast float %8640, %8693
  %8695 = fadd fast float %8694, %8643
  %8696 = fmul fast float %8667, %8662
  %8697 = fmul fast float %8667, %8665
  %8698 = fmul fast float %8667, %8695
  %8699 = call float @dx.op.binary.f32(i32 35, float %8697, float %8698)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 35, float %8696, float %8699)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8700, float %6967)  ; FMax(a,b)
  %8702 = fcmp fast ugt float %8701, 0x3F10000000000000
  br i1 %8702, label %8704, label %8703

; <label>:8703                                    ; preds = %8692
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8704

; <label>:8704                                    ; preds = %8703, %8692
  %8705 = add i32 %41, 356
  %8706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8705, i32 undef)  ; BufferLoad(srv,index,wot)
  %8707 = extractvalue %dx.types.ResRet.i32 %8706, 0
  %8708 = and i32 %8707, 32
  %8709 = icmp eq i32 %8708, 0
  br i1 %8709, label %8716, label %8710

; <label>:8710                                    ; preds = %8704
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8713 = fmul fast float %8712, 0x3FE99999A0000000
  %8714 = fadd fast float %8712, %8696
  %8715 = fadd fast float %8713, %8698
  br label %8716

; <label>:8716                                    ; preds = %8710, %8704, %8668
  %8717 = phi float [ %8670, %8668 ], [ %8714, %8710 ], [ %8696, %8704 ]
  %8718 = phi float [ %8691, %8668 ], [ %8697, %8710 ], [ %8697, %8704 ]
  %8719 = phi float [ %8690, %8668 ], [ %8715, %8710 ], [ %8698, %8704 ]
  %8720 = phi float [ %8690, %8668 ], [ %6967, %8710 ], [ %6967, %8704 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8721 = call float @dx.op.binary.f32(i32 36, float %8717, float 3.225500e+04)  ; FMin(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8718, float 3.225500e+04)  ; FMin(a,b)
  %8723 = call float @dx.op.binary.f32(i32 36, float %8719, float 3.225500e+04)  ; FMin(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8720, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8721)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8722)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !77}
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
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!77 = !{i32 0, i64 16}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = !{!84, !84, i64 0}
!84 = !{!"int", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !94}
!88 = distinct !{!88, !89, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!89 = distinct !{!89, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!90 = distinct !{!90, !91, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!91 = distinct !{!91, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!92 = distinct !{!92, !93, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!93 = distinct !{!93, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!94 = distinct !{!94, !95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!95 = distinct !{!95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"float", !85, i64 0}
!106 = !{!107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!107 = distinct !{!107, !108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!108 = distinct !{!108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!109 = distinct !{!109, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!110 = distinct !{!110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!111 = distinct !{!111, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!112 = distinct !{!112, !113, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!113 = distinct !{!113, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!114 = distinct !{!114, !113, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!115 = distinct !{!115, !113, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!116 = distinct !{!116, !117, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!117 = distinct !{!117, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!118 = distinct !{!118, !117, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!119 = distinct !{!119, !117, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!120 = distinct !{!120, !121, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!121 = distinct !{!121, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!130 = !{!126}
!131 = !{!127, !123, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!132 = !{!133}
!133 = distinct !{!133, !134, !"\01?sort@@YAXAIAM00@Z: %c"}
!134 = distinct !{!134, !"\01?sort@@YAXAIAM00@Z"}
!135 = !{!136, !137, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!136 = distinct !{!136, !134, !"\01?sort@@YAXAIAM00@Z: %a"}
!137 = distinct !{!137, !134, !"\01?sort@@YAXAIAM00@Z: %b"}
!138 = !{!137}
!139 = !{!136, !133, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!140 = !{!136}
!141 = !{!137, !133, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}

