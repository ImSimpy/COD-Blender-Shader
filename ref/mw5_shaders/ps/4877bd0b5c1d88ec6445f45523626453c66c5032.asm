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
; shader hash: d4e349cbfbff2e2252263ff4b985563a
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
  br i1 %4426, label %4427, label %5019

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
  br i1 %4478, label %4982, label %4479

; <label>:4479                                    ; preds = %4427
  %4480 = and i32 %4475, 1023
  br label %4481

; <label>:4481                                    ; preds = %4613, %4479
  %4482 = phi i32 [ %4563, %4613 ], [ 0, %4479 ]
  %4483 = phi float [ %4614, %4613 ], [ 0.000000e+00, %4479 ]
  %4484 = phi float [ %4615, %4613 ], [ %4396, %4479 ]
  %4485 = phi float [ %4616, %4613 ], [ %4394, %4479 ]
  %4486 = phi float [ %4617, %4613 ], [ %4387, %4479 ]
  %4487 = phi float [ %4618, %4613 ], [ %4388, %4479 ]
  %4488 = phi float [ %4619, %4613 ], [ %4389, %4479 ]
  %4489 = phi float [ %4620, %4613 ], [ 0.000000e+00, %4479 ]
  %4490 = phi float [ %4621, %4613 ], [ 0.000000e+00, %4479 ]
  %4491 = phi float [ %4622, %4613 ], [ %4384, %4479 ]
  %4492 = phi float [ %4623, %4613 ], [ %4385, %4479 ]
  %4493 = phi float [ %4624, %4613 ], [ %4386, %4479 ]
  %4494 = phi float [ %4625, %4613 ], [ %4378, %4479 ]
  %4495 = phi float [ %4626, %4613 ], [ %4379, %4479 ]
  %4496 = phi float [ %4627, %4613 ], [ %4380, %4479 ]
  %4497 = phi float [ %4628, %4613 ], [ %4422, %4479 ]
  %4498 = phi float [ %4629, %4613 ], [ %4423, %4479 ]
  %4499 = phi float [ %4630, %4613 ], [ %4424, %4479 ]
  %4500 = phi float [ %4631, %4613 ], [ %4392, %4479 ]
  %4501 = phi float [ %4632, %4613 ], [ %4391, %4479 ]
  %4502 = phi float [ %4633, %4613 ], [ 0.000000e+00, %4479 ]
  %4503 = phi float [ %4634, %4613 ], [ %4390, %4479 ]
  %4504 = phi float [ %4635, %4613 ], [ %4381, %4479 ]
  %4505 = phi float [ %4636, %4613 ], [ %4382, %4479 ]
  %4506 = phi float [ %4637, %4613 ], [ %4383, %4479 ]
  %4507 = add nuw nsw i32 %4482, %4477
  %4508 = shl i32 %4507, 2
  %4509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.i32 %4509, 0
  %4511 = shl i32 %4510, 8
  %4512 = or i32 %4511, 48
  %4513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = extractvalue %dx.types.ResRet.f32 %4513, 3
  %4518 = or i32 %4511, 64
  %4519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.i32 %4519, 1
  %4522 = or i32 %4511, 80
  %4523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4522, i32 undef)  ; BufferLoad(srv,index,wot)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 2
  %4525 = extractvalue %dx.types.ResRet.f32 %4523, 3
  %4526 = or i32 %4511, 96
  %4527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.ResRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.ResRet.f32 %4527, 2
  %4531 = extractvalue %dx.types.ResRet.f32 %4527, 3
  %4532 = or i32 %4511, 112
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4535 = or i32 %4511, 128
  %4536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.ResRet.f32 %4536, 2
  %4540 = extractvalue %dx.types.ResRet.f32 %4536, 3
  %4541 = or i32 %4511, 144
  %4542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = extractvalue %dx.types.ResRet.f32 %4542, 3
  %4547 = or i32 %4511, 160
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4548, 3
  %4553 = or i32 %4511, 192
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = or i32 %4511, 208
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = or i32 %4511, 248
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = add nuw nsw i32 %4482, 1
  %4564 = bitcast float %4517 to i32
  %4565 = and i32 %4564, 512
  %4566 = icmp eq i32 %4565, 0
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = call float @dx.op.dot4.f32(i32 56, float %4568, float %4569, float %4570, float %4571, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4573 = or i32 %4511, 16
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = call float @dx.op.dot4.f32(i32 56, float %4575, float %4576, float %4577, float %4578, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4580 = or i32 %4511, 32
  %4581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.ResRet.f32 %4581, 3
  %4586 = call float @dx.op.dot4.f32(i32 56, float %4582, float %4583, float %4584, float %4585, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4587 = call float @dx.op.unary.f32(i32 27, float %4572)  ; Round_ni(value)
  %4588 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4589 = call float @dx.op.unary.f32(i32 27, float %4579)  ; Round_ni(value)
  %4590 = call float @dx.op.unary.f32(i32 6, float %4589)  ; FAbs(value)
  %4591 = call float @dx.op.unary.f32(i32 6, float %4586)  ; FAbs(value)
  %4592 = call float @dx.op.unary.f32(i32 27, float %4591)  ; Round_ni(value)
  %4593 = fadd fast float %4590, %4588
  %4594 = fadd fast float %4593, %4592
  %4595 = fcmp fast oeq float %4594, 0.000000e+00
  %4596 = call float @dx.op.dot4.f32(i32 56, float %4568, float %4569, float %4570, float %4571, float %4434, float %4435, float %4436, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4597 = call float @dx.op.dot4.f32(i32 56, float %4575, float %4576, float %4577, float %4578, float %4434, float %4435, float %4436, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4598 = call float @dx.op.dot4.f32(i32 56, float %4568, float %4569, float %4570, float %4571, float %4437, float %4438, float %4439, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4599 = call float @dx.op.dot4.f32(i32 56, float %4575, float %4576, float %4577, float %4578, float %4437, float %4438, float %4439, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4600 = fsub fast float %4596, %4572
  %4601 = fsub fast float %4598, %4572
  %4602 = fsub fast float %4597, %4579
  %4603 = fsub fast float %4599, %4579
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4514, float %4515, float %4516, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4607 = fadd fast float %4606, %4604
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4610 = fcmp fast ogt float %4608, %4609
  %4611 = and i1 %4595, %4610
  %4612 = and i1 %4566, %4611
  br i1 %4612, label %4639, label %4613

; <label>:4613                                    ; preds = %4968, %4720, %4639, %4481
  %4614 = phi float [ %4483, %4639 ], [ %4723, %4720 ], [ %4723, %4968 ], [ %4483, %4481 ]
  %4615 = phi float [ %4484, %4639 ], [ %4484, %4720 ], [ %4944, %4968 ], [ %4484, %4481 ]
  %4616 = phi float [ %4485, %4639 ], [ %4485, %4720 ], [ %4942, %4968 ], [ %4485, %4481 ]
  %4617 = phi float [ %4486, %4639 ], [ %4486, %4720 ], [ %4920, %4968 ], [ %4486, %4481 ]
  %4618 = phi float [ %4487, %4639 ], [ %4487, %4720 ], [ %4921, %4968 ], [ %4487, %4481 ]
  %4619 = phi float [ %4488, %4639 ], [ %4488, %4720 ], [ %4922, %4968 ], [ %4488, %4481 ]
  %4620 = phi float [ %4489, %4639 ], [ %4489, %4720 ], [ %4847, %4968 ], [ %4489, %4481 ]
  %4621 = phi float [ %4490, %4639 ], [ %4490, %4720 ], [ %4845, %4968 ], [ %4490, %4481 ]
  %4622 = phi float [ %4491, %4639 ], [ %4491, %4720 ], [ %4890, %4968 ], [ %4491, %4481 ]
  %4623 = phi float [ %4492, %4639 ], [ %4492, %4720 ], [ %4891, %4968 ], [ %4492, %4481 ]
  %4624 = phi float [ %4493, %4639 ], [ %4493, %4720 ], [ %4892, %4968 ], [ %4493, %4481 ]
  %4625 = phi float [ %4494, %4639 ], [ %4494, %4720 ], [ %4978, %4968 ], [ %4494, %4481 ]
  %4626 = phi float [ %4495, %4639 ], [ %4495, %4720 ], [ %4979, %4968 ], [ %4495, %4481 ]
  %4627 = phi float [ %4496, %4639 ], [ %4496, %4720 ], [ %4980, %4968 ], [ %4496, %4481 ]
  %4628 = phi float [ %4497, %4639 ], [ %4497, %4720 ], [ %4826, %4968 ], [ %4497, %4481 ]
  %4629 = phi float [ %4498, %4639 ], [ %4498, %4720 ], [ %4827, %4968 ], [ %4498, %4481 ]
  %4630 = phi float [ %4499, %4639 ], [ %4499, %4720 ], [ %4828, %4968 ], [ %4499, %4481 ]
  %4631 = phi float [ %4500, %4639 ], [ %4500, %4720 ], [ %4900, %4968 ], [ %4500, %4481 ]
  %4632 = phi float [ %4501, %4639 ], [ %4501, %4720 ], [ %4897, %4968 ], [ %4501, %4481 ]
  %4633 = phi float [ %4502, %4639 ], [ %4502, %4720 ], [ %4894, %4968 ], [ %4502, %4481 ]
  %4634 = phi float [ %4503, %4639 ], [ %4503, %4720 ], [ %4843, %4968 ], [ %4503, %4481 ]
  %4635 = phi float [ %4504, %4639 ], [ %4504, %4720 ], [ %4838, %4968 ], [ %4504, %4481 ]
  %4636 = phi float [ %4505, %4639 ], [ %4505, %4720 ], [ %4839, %4968 ], [ %4505, %4481 ]
  %4637 = phi float [ %4506, %4639 ], [ %4506, %4720 ], [ %4840, %4968 ], [ %4506, %4481 ]
  %4638 = icmp eq i32 %4563, %4480
  br i1 %4638, label %4981, label %4481

; <label>:4639                                    ; preds = %4481
  %4640 = extractvalue %dx.types.ResRet.f32 %4533, 3
  %4641 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4643 = extractvalue %dx.types.ResRet.f32 %4523, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4645 = extractvalue %dx.types.ResRet.i32 %4519, 3
  %4646 = extractvalue %dx.types.ResRet.i32 %4519, 2
  %4647 = add i32 %4645, 0
  %4648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4647, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4648, %dx.types.Handle %4649, float %4572, float %4579, float undef, float undef, i32 0, i32 0, i32 undef, float %4600, float %4602, float undef, float %4601, float %4603, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = fmul fast float %4651, %4644
  %4653 = fadd fast float %4652, %4643
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fmul fast float %4572, %4528
  %4656 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4579, float %4655)  ; FMad(a,b,c)
  %4657 = fadd fast float %4656, %4642
  %4658 = fmul fast float %4572, %4530
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4579, float %4658)  ; FMad(a,b,c)
  %4660 = fadd fast float %4659, %4641
  %4661 = fmul fast float %4600, %4528
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4602, float %4661)  ; FMad(a,b,c)
  %4663 = fmul fast float %4600, %4530
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4602, float %4663)  ; FMad(a,b,c)
  %4665 = fmul fast float %4601, %4528
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4603, float %4665)  ; FMad(a,b,c)
  %4667 = fmul fast float %4601, %4530
  %4668 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4603, float %4667)  ; FMad(a,b,c)
  %4669 = add i32 %4646, 0
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4669, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4670, %dx.types.Handle %4649, float %4657, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float %4662, float %4664, float undef, float %4666, float %4668, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = and i32 %4564, 1024
  %4674 = icmp ne i32 %4673, 0
  %4675 = fcmp fast ogt float %4672, 0x3FE0101020000000
  %4676 = uitofp i1 %4675 to float
  %4677 = select i1 %4674, float %4676, float %4672
  %4678 = and i32 %4564, 8192
  %4679 = icmp ne i32 %4678, 0
  %4680 = select i1 %4679, float %4640, float 1.000000e+00
  %4681 = fmul fast float %4572, 2.000000e+00
  %4682 = fadd fast float %4681, -1.000000e+00
  %4683 = call float @dx.op.unary.f32(i32 6, float %4682)  ; FAbs(value)
  %4684 = fmul fast float %4683, %4561
  %4685 = fsub fast float %4684, %4561
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4579, 2.000000e+00
  %4688 = fadd fast float %4687, -1.000000e+00
  %4689 = call float @dx.op.unary.f32(i32 6, float %4688)  ; FAbs(value)
  %4690 = fmul fast float %4689, %4562
  %4691 = fsub fast float %4690, %4562
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4591, %4524
  %4694 = fsub fast float %4693, %4524
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = fmul fast float %4654, %4680
  %4697 = fmul fast float %4696, %4651
  %4698 = fmul fast float %4697, %4686
  %4699 = fmul fast float %4698, %4677
  %4700 = fmul fast float %4699, %4692
  %4701 = fmul fast float %4700, %4695
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4705 = fsub fast float %4608, %4704
  %4706 = fmul fast float %4705, %4703
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4701, %4525
  %4709 = fadd fast float %4701, %4525
  %4710 = fmul fast float %4709, %4534
  %4711 = fsub fast float %4710, %4534
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = and i32 %4564, 128
  %4714 = icmp ne i32 %4713, 0
  %4715 = select i1 %4714, float %4712, float %4708
  %4716 = fmul fast float %4715, %4707
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = fcmp fast ugt float %4716, %4718
  br i1 %4719, label %4720, label %4613

; <label>:4720                                    ; preds = %4639
  %4721 = select i1 %4679, float %4716, float 0.000000e+00
  %4722 = fadd fast float %4721, %4483
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  br i1 %4679, label %4613, label %4724

; <label>:4724                                    ; preds = %4720
  %4725 = and i32 %4564, 4
  %4726 = and i32 %4564, 8
  %4727 = add i32 %4520, 0
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4730 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4728, %dx.types.Handle %4729, float %4657, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float %4662, float %4664, float undef, float %4666, float %4668, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = extractvalue %dx.types.ResRet.f32 %4730, 1
  %4733 = extractvalue %dx.types.ResRet.f32 %4730, 2
  %4734 = extractvalue %dx.types.ResRet.f32 %4730, 3
  %4735 = bitcast float %4546 to i32
  %4736 = and i32 %4735, 255
  %4737 = uitofp i32 %4736 to float
  %4738 = lshr i32 %4735, 8
  %4739 = and i32 %4738, 255
  %4740 = uitofp i32 %4739 to float
  %4741 = fmul fast float %4734, %4737
  %4742 = fadd fast float %4741, %4740
  %4743 = fmul fast float %4742, 0x3F70101000000000
  %4744 = add i32 %4521, 0
  %4745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4744, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4745, %dx.types.Handle %4729, float %4657, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float %4662, float %4664, float undef, float %4666, float %4668, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4750 = extractvalue %dx.types.ResRet.f32 %4746, 3
  %4751 = bitcast float %4540 to i32
  %4752 = and i32 %4751, 255
  %4753 = uitofp i32 %4752 to float
  %4754 = lshr i32 %4751, 8
  %4755 = and i32 %4754, 255
  %4756 = uitofp i32 %4755 to float
  %4757 = lshr i32 %4751, 16
  %4758 = and i32 %4757, 255
  %4759 = uitofp i32 %4758 to float
  %4760 = fmul fast float %4759, 0x3F70101000000000
  %4761 = fmul fast float %4747, %4753
  %4762 = fadd fast float %4761, %4756
  %4763 = fmul fast float %4762, 0x3F70101000000000
  %4764 = fadd fast float %4748, -5.000000e-01
  %4765 = fadd fast float %4750, -5.000000e-01
  %4766 = fmul fast float %4764, %4760
  %4767 = fmul fast float %4765, %4760
  %4768 = fadd fast float %4766, 5.000000e-01
  %4769 = fadd fast float %4767, 5.000000e-01
  %4770 = fmul fast float %4731, %4549
  %4771 = fmul fast float %4732, %4550
  %4772 = fmul fast float %4733, %4551
  %4773 = fmul fast float %4768, 2.000000e+00
  %4774 = fadd fast float %4773, -1.000000e+00
  %4775 = fmul fast float %4769, 2.000000e+00
  %4776 = fadd fast float %4775, -1.000000e+00
  %4777 = fadd fast float %4774, %4776
  %4778 = fmul fast float %4777, 5.000000e-01
  %4779 = fsub fast float %4774, %4776
  %4780 = fmul fast float %4779, 5.000000e-01
  %4781 = call float @dx.op.unary.f32(i32 6, float %4778)  ; FAbs(value)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = call float @dx.op.unary.f32(i32 6, float %4780)  ; FAbs(value)
  %4784 = fsub fast float %4782, %4783
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4780, float %4784, float %4778, float %4780, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.unary.f32(i32 25, float %4785)  ; Rsqrt(value)
  %4787 = fmul fast float %4778, %4786
  %4788 = fmul fast float %4780, %4786
  %4789 = fmul fast float %4786, %4784
  %4790 = fmul fast float %4789, %4514
  %4791 = fmul fast float %4789, %4515
  %4792 = fmul fast float %4789, %4516
  %4793 = fmul fast float %4787, %4537
  %4794 = fmul fast float %4787, %4538
  %4795 = fmul fast float %4787, %4539
  %4796 = fadd fast float %4793, %4790
  %4797 = fadd fast float %4794, %4791
  %4798 = fadd fast float %4795, %4792
  %4799 = fmul fast float %4788, %4543
  %4800 = fmul fast float %4788, %4544
  %4801 = fmul fast float %4788, %4545
  %4802 = fadd fast float %4796, %4799
  %4803 = fadd fast float %4797, %4800
  %4804 = fadd fast float %4798, %4801
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %4802, float %4803, float %4804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.unary.f32(i32 25, float %4805)  ; Rsqrt(value)
  %4807 = fmul fast float %4802, %4806
  %4808 = fmul fast float %4803, %4806
  %4809 = fmul fast float %4804, %4806
  %4810 = icmp ne i32 %4726, 0
  %4811 = select i1 %4810, float 1.000000e+00, float 0.000000e+00
  %4812 = fmul fast float %4716, %4811
  %4813 = and i32 %4564, 1
  %4814 = icmp eq i32 %4813, 0
  br i1 %4814, label %4815, label %4819

; <label>:4815                                    ; preds = %4724
  %4816 = fsub fast float %4807, %4497
  %4817 = fsub fast float %4808, %4498
  %4818 = fsub fast float %4809, %4499
  br label %4819

; <label>:4819                                    ; preds = %4815, %4724
  %4820 = phi float [ %4816, %4815 ], [ %4807, %4724 ]
  %4821 = phi float [ %4817, %4815 ], [ %4808, %4724 ]
  %4822 = phi float [ %4818, %4815 ], [ %4809, %4724 ]
  %4823 = fmul float %4822, %4812
  %4824 = fmul float %4821, %4812
  %4825 = fmul float %4820, %4812
  %4826 = fadd fast float %4825, %4497
  %4827 = fadd fast float %4824, %4498
  %4828 = fadd fast float %4823, %4499
  %4829 = icmp ne i32 %4725, 0
  %4830 = select i1 %4829, float 1.000000e+00, float 0.000000e+00
  %4831 = fmul fast float %4716, %4830
  %4832 = fsub fast float %4770, %4504
  %4833 = fsub fast float %4771, %4505
  %4834 = fsub fast float %4772, %4506
  %4835 = fmul fast float %4832, %4831
  %4836 = fmul fast float %4833, %4831
  %4837 = fmul fast float %4834, %4831
  %4838 = fadd fast float %4835, %4504
  %4839 = fadd fast float %4836, %4505
  %4840 = fadd fast float %4837, %4506
  %4841 = fsub fast float %4743, %4503
  %4842 = fmul fast float %4841, %4831
  %4843 = fadd fast float %4842, %4503
  %4844 = fmul fast float %4831, %4490
  %4845 = fsub fast float %4490, %4844
  %4846 = fmul fast float %4831, %4489
  %4847 = fsub fast float %4489, %4846
  %4848 = bitcast float %4558 to i32
  %4849 = lshr i32 %4848, 16
  %4850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4849)  ; LegacyF16ToF32(value)
  %4851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4852 = extractvalue %dx.types.ResRet.i32 %4851, 0
  %4853 = and i32 %4852, 1
  %4854 = icmp eq i32 %4853, 0
  br i1 %4854, label %4855, label %4880

; <label>:4855                                    ; preds = %4819
  %4856 = fadd fast float %4743, 0xBFB99999A0000000
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4857, 0x3FF1C71C80000000
  %4859 = fsub fast float 1.000000e+00, %4858
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fmul fast float %4860, %4770
  %4862 = fmul fast float %4860, %4771
  %4863 = fmul fast float %4860, %4772
  %4864 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4865 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4865, float %4866)  ; FMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4864, float %4867)  ; FMax(a,b)
  %4869 = fcmp fast ogt float %4868, 0.000000e+00
  %4870 = bitcast float %4868 to i32
  %4871 = sub nsw i32 2129859010, %4870
  %4872 = bitcast i32 %4871 to float
  %4873 = select i1 %4869, float %4872, float 0.000000e+00
  %4874 = fmul fast float %4864, %4850
  %4875 = fmul fast float %4865, %4850
  %4876 = fmul fast float %4866, %4850
  %4877 = fmul fast float %4874, %4873
  %4878 = fmul fast float %4875, %4873
  %4879 = fmul fast float %4876, %4873
  br label %4880

; <label>:4880                                    ; preds = %4855, %4819
  %4881 = phi float [ %4850, %4819 ], [ %4877, %4855 ]
  %4882 = phi float [ %4850, %4819 ], [ %4878, %4855 ]
  %4883 = phi float [ %4850, %4819 ], [ %4879, %4855 ]
  %4884 = fsub fast float %4881, %4491
  %4885 = fsub fast float %4882, %4492
  %4886 = fsub fast float %4883, %4493
  %4887 = fmul fast float %4884, %4831
  %4888 = fmul fast float %4885, %4831
  %4889 = fmul fast float %4886, %4831
  %4890 = fadd fast float %4887, %4491
  %4891 = fadd fast float %4888, %4492
  %4892 = fadd fast float %4889, %4493
  %4893 = fadd fast float %4716, %4502
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fsub fast float %4763, %4501
  %4896 = fmul fast float %4895, %4812
  %4897 = fadd fast float %4896, %4501
  %4898 = fsub fast float %4749, %4500
  %4899 = fmul fast float %4898, %4812
  %4900 = fadd fast float %4899, %4500
  br i1 %4814, label %4909, label %4901

; <label>:4901                                    ; preds = %4880
  %4902 = and i32 %4564, 32768
  %4903 = icmp eq i32 %4902, 0
  br i1 %4903, label %4919, label %4904

; <label>:4904                                    ; preds = %4901
  %4905 = fmul fast float %4812, 1.270000e+02
  %4906 = fadd fast float %4905, %4486
  %4907 = fadd fast float %4905, %4487
  %4908 = fadd fast float %4905, %4488
  br label %4919

; <label>:4909                                    ; preds = %4880
  %4910 = fsub fast float 1.270000e+02, %4486
  %4911 = fsub fast float 1.270000e+02, %4487
  %4912 = fsub fast float 1.270000e+02, %4488
  %4913 = fmul fast float %4812, %4910
  %4914 = fmul fast float %4812, %4911
  %4915 = fmul fast float %4812, %4912
  %4916 = fadd fast float %4913, %4486
  %4917 = fadd fast float %4914, %4487
  %4918 = fadd fast float %4915, %4488
  br label %4919

; <label>:4919                                    ; preds = %4909, %4904, %4901
  %4920 = phi float [ %4906, %4904 ], [ %4486, %4901 ], [ %4916, %4909 ]
  %4921 = phi float [ %4907, %4904 ], [ %4487, %4901 ], [ %4917, %4909 ]
  %4922 = phi float [ %4908, %4904 ], [ %4488, %4901 ], [ %4918, %4909 ]
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = fmul fast float %4926, %4923
  %4928 = fadd fast float %4927, %4925
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = bitcast float %4552 to i32
  %4931 = and i32 %4930, 65535
  %4932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4931)  ; LegacyF16ToF32(value)
  %4933 = lshr i32 %4930, 16
  %4934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4933)  ; LegacyF16ToF32(value)
  %4935 = fcmp fast oge float %4932, 0.000000e+00
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = select i1 %4935, float %4932, float %4937
  %4939 = fadd fast float %4938, %4934
  %4940 = fsub fast float %4929, %4485
  %4941 = fmul fast float %4940, %4716
  %4942 = fadd fast float %4941, %4485
  %4943 = fmul fast float %4939, %4716
  %4944 = call float @dx.op.binary.f32(i32 35, float %4484, float %4943)  ; FMax(a,b)
  %4945 = and i32 %4564, 16
  %4946 = icmp eq i32 %4945, 0
  br i1 %4946, label %4968, label %4947

; <label>:4947                                    ; preds = %4919
  %4948 = add i32 %4555, 0
  %4949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4949, %dx.types.Handle %4729, float %4657, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float %4662, float %4664, float undef, float %4666, float %4668, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.ResRet.f32 %4950, 1
  %4953 = extractvalue %dx.types.ResRet.f32 %4950, 2
  %4954 = and i32 %4848, 65535
  %4955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4954)  ; LegacyF16ToF32(value)
  %4956 = fmul fast float %4951, %4549
  %4957 = fmul fast float %4952, %4550
  %4958 = fmul fast float %4953, %4551
  %4959 = and i32 %4564, 16384
  %4960 = icmp ne i32 %4959, 0
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = select i1 %4960, float %4962, float 1.000000e+00
  %4964 = fmul fast float %4963, %4955
  %4965 = fmul fast float %4956, %4964
  %4966 = fmul fast float %4957, %4964
  %4967 = fmul fast float %4958, %4964
  br label %4968

; <label>:4968                                    ; preds = %4947, %4919
  %4969 = phi float [ %4965, %4947 ], [ 0.000000e+00, %4919 ]
  %4970 = phi float [ %4966, %4947 ], [ 0.000000e+00, %4919 ]
  %4971 = phi float [ %4967, %4947 ], [ 0.000000e+00, %4919 ]
  %4972 = fsub fast float %4969, %4494
  %4973 = fsub fast float %4970, %4495
  %4974 = fsub fast float %4971, %4496
  %4975 = fmul fast float %4972, %4716
  %4976 = fmul fast float %4973, %4716
  %4977 = fmul fast float %4974, %4716
  %4978 = fadd fast float %4975, %4494
  %4979 = fadd fast float %4976, %4495
  %4980 = fadd fast float %4977, %4496
  br label %4613

; <label>:4981                                    ; preds = %4613
  br label %4982

; <label>:4982                                    ; preds = %4981, %4427
  %4983 = phi float [ 0.000000e+00, %4427 ], [ %4614, %4981 ]
  %4984 = phi float [ %4396, %4427 ], [ %4615, %4981 ]
  %4985 = phi float [ %4394, %4427 ], [ %4616, %4981 ]
  %4986 = phi float [ %4387, %4427 ], [ %4617, %4981 ]
  %4987 = phi float [ %4388, %4427 ], [ %4618, %4981 ]
  %4988 = phi float [ %4389, %4427 ], [ %4619, %4981 ]
  %4989 = phi float [ 0.000000e+00, %4427 ], [ %4620, %4981 ]
  %4990 = phi float [ 0.000000e+00, %4427 ], [ %4621, %4981 ]
  %4991 = phi float [ %4384, %4427 ], [ %4622, %4981 ]
  %4992 = phi float [ %4385, %4427 ], [ %4623, %4981 ]
  %4993 = phi float [ %4386, %4427 ], [ %4624, %4981 ]
  %4994 = phi float [ %4378, %4427 ], [ %4625, %4981 ]
  %4995 = phi float [ %4379, %4427 ], [ %4626, %4981 ]
  %4996 = phi float [ %4380, %4427 ], [ %4627, %4981 ]
  %4997 = phi float [ %4422, %4427 ], [ %4628, %4981 ]
  %4998 = phi float [ %4423, %4427 ], [ %4629, %4981 ]
  %4999 = phi float [ %4424, %4427 ], [ %4630, %4981 ]
  %5000 = phi float [ %4392, %4427 ], [ %4631, %4981 ]
  %5001 = phi float [ %4391, %4427 ], [ %4632, %4981 ]
  %5002 = phi float [ 0.000000e+00, %4427 ], [ %4633, %4981 ]
  %5003 = phi float [ %4390, %4427 ], [ %4634, %4981 ]
  %5004 = phi float [ %4381, %4427 ], [ %4635, %4981 ]
  %5005 = phi float [ %4382, %4427 ], [ %4636, %4981 ]
  %5006 = phi float [ %4383, %4427 ], [ %4637, %4981 ]
  %5007 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.unary.f32(i32 25, float %5007)  ; Rsqrt(value)
  %5009 = fmul fast float %5008, %4997
  %5010 = fmul fast float %5008, %4998
  %5011 = fmul fast float %5008, %4999
  %5012 = fadd fast float %5002, %1219
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float %5009, float %5010, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = call float @dx.op.unary.f32(i32 25, float %5014)  ; Rsqrt(value)
  %5016 = fmul fast float %5015, %5009
  %5017 = fmul fast float %5015, %5010
  %5018 = fmul fast float %5015, %5011
  br label %5019

; <label>:5019                                    ; preds = %4982, %4375
  %5020 = phi float [ %5016, %4982 ], [ %4422, %4375 ]
  %5021 = phi float [ %5017, %4982 ], [ %4423, %4375 ]
  %5022 = phi float [ %5018, %4982 ], [ %4424, %4375 ]
  %5023 = phi float [ %4994, %4982 ], [ %4378, %4375 ]
  %5024 = phi float [ %4995, %4982 ], [ %4379, %4375 ]
  %5025 = phi float [ %4996, %4982 ], [ %4380, %4375 ]
  %5026 = phi float [ %4991, %4982 ], [ %4384, %4375 ]
  %5027 = phi float [ %4992, %4982 ], [ %4385, %4375 ]
  %5028 = phi float [ %4993, %4982 ], [ %4386, %4375 ]
  %5029 = phi float [ %4986, %4982 ], [ %4387, %4375 ]
  %5030 = phi float [ %4987, %4982 ], [ %4388, %4375 ]
  %5031 = phi float [ %4988, %4982 ], [ %4389, %4375 ]
  %5032 = phi float [ %5004, %4982 ], [ %4381, %4375 ]
  %5033 = phi float [ %5005, %4982 ], [ %4382, %4375 ]
  %5034 = phi float [ %5006, %4982 ], [ %4383, %4375 ]
  %5035 = phi float [ %5003, %4982 ], [ %4390, %4375 ]
  %5036 = phi float [ %5013, %4982 ], [ %1219, %4375 ]
  %5037 = phi float [ %5001, %4982 ], [ %4391, %4375 ]
  %5038 = phi float [ %5000, %4982 ], [ %4392, %4375 ]
  %5039 = phi float [ %4990, %4982 ], [ 0.000000e+00, %4375 ]
  %5040 = phi float [ %4989, %4982 ], [ 0.000000e+00, %4375 ]
  %5041 = phi float [ %4983, %4982 ], [ 0.000000e+00, %4375 ]
  %5042 = phi float [ %4984, %4982 ], [ %4396, %4375 ]
  %5043 = phi float [ %4985, %4982 ], [ %4394, %4375 ]
  %5044 = fadd fast float %5035, 0xBFB99999A0000000
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, 0x3FF1C71C80000000
  %5047 = call float @dx.op.binary.f32(i32 36, float %5035, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5048 = fsub fast float 1.000000e+00, %5046
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fmul fast float %5049, %5032
  %5051 = fmul fast float %5049, %5033
  %5052 = fmul fast float %5049, %5034
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5056 = fmul fast float %5046, %5032
  %5057 = fmul fast float %5046, %5033
  %5058 = fmul fast float %5046, %5034
  %5059 = fadd fast float %5056, %5047
  %5060 = fadd fast float %5057, %5047
  %5061 = fadd fast float %5058, %5047
  %5062 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5063 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5064 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5065 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = and i32 %5067, 1
  %5069 = icmp eq i32 %5068, 0
  br i1 %5069, label %5084, label %5070

; <label>:5070                                    ; preds = %5019
  %5071 = call float @dx.op.binary.f32(i32 35, float %5054, float %5055)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float %5053, float %5071)  ; FMax(a,b)
  %5073 = fcmp fast ogt float %5072, 0.000000e+00
  %5074 = bitcast float %5072 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = bitcast i32 %5075 to float
  %5077 = select i1 %5073, float %5076, float 0.000000e+00
  %5078 = fmul fast float %5053, %5026
  %5079 = fmul fast float %5054, %5027
  %5080 = fmul fast float %5055, %5028
  %5081 = fmul fast float %5078, %5077
  %5082 = fmul fast float %5079, %5077
  %5083 = fmul fast float %5080, %5077
  br label %5084

; <label>:5084                                    ; preds = %5070, %5019
  %5085 = phi float [ %5081, %5070 ], [ %5026, %5019 ]
  %5086 = phi float [ %5082, %5070 ], [ %5027, %5019 ]
  %5087 = phi float [ %5083, %5070 ], [ %5028, %5019 ]
  %5088 = call float @dx.op.binary.f32(i32 36, float %5029, float 1.270000e+02)  ; FMin(a,b)
  %5089 = call float @dx.op.binary.f32(i32 36, float %5030, float 1.270000e+02)  ; FMin(a,b)
  %5090 = call float @dx.op.binary.f32(i32 36, float %5031, float 1.270000e+02)  ; FMin(a,b)
  %5091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.i32 %5091, 3
  %5093 = and i32 %5092, 8
  %5094 = icmp ne i32 %5093, 0
  %5095 = call float @dx.op.binary.f32(i32 35, float %5053, float %5032)  ; FMax(a,b)
  %5096 = call float @dx.op.binary.f32(i32 35, float %5054, float %5032)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5055, float %5032)  ; FMax(a,b)
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = select i1 %203, float %5032, float %5053
  %5100 = select i1 %203, float %5098, float %5054
  %5101 = select i1 %203, float 1.000000e+00, float %5055
  %5102 = select i1 %5094, float %5095, float %5099
  %5103 = select i1 %5094, float %5096, float %5100
  %5104 = select i1 %5094, float %5097, float %5101
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = select i1 %203, float %5105, float %5085
  %5107 = select i1 %203, float %5105, float %5086
  %5108 = select i1 %203, float %5105, float %5087
  %5109 = and i32 %179, 3
  %5110 = select i1 %173, i32 %5109, i32 0
  %5111 = icmp eq i32 %5110, 1
  br i1 %5111, label %5112, label %5188

; <label>:5112                                    ; preds = %5084
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = fadd fast float %5114, %142
  %5117 = fadd fast float %5115, %143
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = fsub fast float %5116, %5119
  %5122 = fsub fast float %5117, %5120
  %5123 = fmul fast float %5121, %5121
  %5124 = fmul fast float %5122, %5122
  %5125 = fadd fast float %5123, %5124
  %5126 = call float @dx.op.unary.f32(i32 24, float %5125)  ; Sqrt(value)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5128 = fcmp fast olt float %5126, %5127
  br i1 %5128, label %5129, label %5182

; <label>:5129                                    ; preds = %5112
  %5130 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5131 = fadd fast float %5130, %144
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5139 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5142 = extractvalue %dx.types.CBufRet.f32 %5134, 3
  %5143 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5144 = fadd fast float %5141, %5116
  %5145 = fadd fast float %5142, %5117
  %5146 = fadd fast float %5131, %5143
  %5147 = fmul fast float %5144, %5133
  %5148 = call float @dx.op.tertiary.f32(i32 46, float %5145, float %5135, float %5147)  ; FMad(a,b,c)
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5137, float %5148)  ; FMad(a,b,c)
  %5150 = fmul fast float %5144, %5138
  %5151 = call float @dx.op.tertiary.f32(i32 46, float %5145, float %5139, float %5150)  ; FMad(a,b,c)
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5140, float %5151)  ; FMad(a,b,c)
  %5153 = fsub fast float %5149, %5141
  %5154 = fsub fast float %5152, %5142
  %5155 = fsub fast float %5153, %5119
  %5156 = fadd fast float %5155, %5127
  %5157 = fsub fast float %5154, %5120
  %5158 = fadd fast float %5157, %5127
  %5159 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5160 = fmul fast float %5156, %5159
  %5161 = fmul fast float %5158, %5159
  %5162 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5164 = fsub fast float 1.000000e+00, %5162
  %5165 = fsub fast float 1.000000e+00, %5163
  %5166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5164, float %5165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = fcmp fast ugt float %5167, 0.000000e+00
  br i1 %5168, label %5169, label %5182

; <label>:5169                                    ; preds = %5129
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5172 = fmul fast float %5171, %5167
  %5173 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5174 = fadd fast float %5173, %5172
  %5175 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5176 = fadd fast float %5174, %5143
  %5177 = fmul fast float %5149, %5137
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5152, float %5140, float %5177)  ; FMad(a,b,c)
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5175, float %5178)  ; FMad(a,b,c)
  %5180 = fsub fast float %5179, %5143
  %5181 = fsub fast float %5180, %5130
  br label %5182

; <label>:5182                                    ; preds = %5169, %5129, %5112
  %5183 = phi i1 [ true, %5169 ], [ false, %5129 ], [ false, %5112 ]
  %5184 = phi float [ %5181, %5169 ], [ -1.310720e+05, %5129 ], [ -1.310720e+05, %5112 ]
  %5185 = fsub fast float %5184, %144
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = select i1 %5183, float %5186, float 1.000000e+00
  br label %5188

; <label>:5188                                    ; preds = %5182, %5084
  %5189 = phi float [ %5187, %5182 ], [ 0.000000e+00, %5084 ]
  %5190 = icmp eq i32 %5110, 3
  %5191 = select i1 %5190, float 1.000000e+00, float %5189
  %5192 = call float @dx.op.binary.f32(i32 35, float %5041, float %5191)  ; FMax(a,b)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fcmp fast une float %5193, 0.000000e+00
  %5195 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = call float @dx.op.unary.f32(i32 25, float %5195)  ; Rsqrt(value)
  br i1 %5194, label %5204, label %5197

; <label>:5197                                    ; preds = %5188
  %5198 = fmul fast float %5196, %142
  %5199 = fmul fast float %5196, %143
  %5200 = fmul fast float %5196, %144
  %5201 = fsub fast float -0.000000e+00, %5198
  %5202 = fsub fast float -0.000000e+00, %5199
  %5203 = fsub fast float -0.000000e+00, %5200
  br label %5372

; <label>:5204                                    ; preds = %5188
  %5205 = fmul fast float %142, %5196
  %5206 = fsub fast float -0.000000e+00, %5205
  %5207 = fmul fast float %143, %5196
  %5208 = fsub fast float -0.000000e+00, %5207
  %5209 = fmul fast float %144, %5196
  %5210 = fsub fast float -0.000000e+00, %5209
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5208, float %5210, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fmul fast float %5193, 2.500000e+00
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fmul fast float %5193, 0x4013FFFFE0000000
  %5215 = fadd fast float %5214, 0xBFFFFFFFE0000000
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fmul fast float %5193, 0x4004000020000000
  %5218 = fadd fast float %5217, 0xBFF8000040000000
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5221 = fmul fast float %5044, 1.000000e+01
  %5222 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5223 = fmul fast float %5222, 2.000000e+00
  %5224 = fsub fast float 3.000000e+00, %5223
  %5225 = fmul fast float %5222, %5222
  %5226 = fmul fast float %5225, %5224
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = fsub fast float 0x3FE3333340000000, %5065
  %5229 = fmul fast float %5228, 0x400AAAAAA0000000
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fmul fast float %5227, %5230
  %5232 = fmul fast float %5102, 0x3FEA2B8620000000
  %5233 = fmul fast float %5103, 0x3FEA2B8620000000
  %5234 = fmul fast float %5104, 0x3FEA2B8620000000
  %5235 = fadd fast float %5232, 0x3FC81DFBA0000000
  %5236 = fmul fast float %5235, %5102
  %5237 = fadd fast float %5236, 0x3F910E6020000000
  %5238 = fadd fast float %5233, 0x3FC81DFBA0000000
  %5239 = fmul fast float %5238, %5103
  %5240 = fadd fast float %5239, 0x3F910E6020000000
  %5241 = fadd fast float %5234, 0x3FC81DFBA0000000
  %5242 = fmul fast float %5241, %5104
  %5243 = fadd fast float %5242, 0x3F910E6020000000
  %5244 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5247 = fsub fast float %5244, %5102
  %5248 = fsub fast float %5245, %5103
  %5249 = fsub fast float %5246, %5104
  %5250 = fmul fast float %5247, %5220
  %5251 = fmul fast float %5250, %5231
  %5252 = fmul fast float %5248, %5220
  %5253 = fmul fast float %5252, %5231
  %5254 = fmul fast float %5249, %5220
  %5255 = fmul fast float %5254, %5231
  %5256 = fadd fast float %5251, %5102
  %5257 = fadd fast float %5253, %5103
  %5258 = fadd fast float %5255, %5104
  %5259 = fmul fast float %5038, %5038
  %5260 = fmul fast float %5259, %5259
  %5261 = fadd fast float %5216, 1.000000e+00
  %5262 = fsub fast float %5261, %5231
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fsub fast float 1.000000e+00, %5260
  %5267 = call float @dx.op.binary.f32(i32 36, float %5263, float %5266)  ; FMin(a,b)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5269 = call float @dx.op.binary.f32(i32 35, float %5267, float %5268)  ; FMax(a,b)
  %5270 = fadd fast float %5265, 0xBFE4CCCCC0000000
  %5271 = fmul fast float %5270, 0x4006DB6DA0000000
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5272, 2.000000e+00
  %5274 = fsub fast float 3.000000e+00, %5273
  %5275 = bitcast float %5062 to i32
  %5276 = ashr i32 %5275, 1
  %5277 = add nsw i32 %5276, 532487669
  %5278 = bitcast i32 %5277 to float
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %5282, 2.000000e+00
  %5284 = bitcast float %5063 to i32
  %5285 = ashr i32 %5284, 1
  %5286 = add nsw i32 %5285, 532487669
  %5287 = bitcast i32 %5286 to float
  %5288 = fsub fast float 1.000000e+00, %5287
  %5289 = bitcast float %5288 to i32
  %5290 = sub nsw i32 2129859010, %5289
  %5291 = bitcast i32 %5290 to float
  %5292 = fmul fast float %5291, 2.000000e+00
  %5293 = bitcast float %5064 to i32
  %5294 = ashr i32 %5293, 1
  %5295 = add nsw i32 %5294, 532487669
  %5296 = bitcast i32 %5295 to float
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = bitcast float %5297 to i32
  %5299 = sub nsw i32 2129859010, %5298
  %5300 = bitcast i32 %5299 to float
  %5301 = fmul fast float %5300, 2.000000e+00
  %5302 = fsub fast float 0x4002A9FBE0000000, %5283
  %5303 = fadd fast float %5283, 0x3FD54FDF00000000
  %5304 = bitcast float %5303 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5306, %5302
  %5308 = fmul fast float %5307, %5307
  %5309 = fsub fast float 0x4002A9FBE0000000, %5292
  %5310 = fadd fast float %5292, 0x3FD54FDF00000000
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5313, %5309
  %5315 = fmul fast float %5314, %5314
  %5316 = fsub fast float 0x4002A9FBE0000000, %5301
  %5317 = fadd fast float %5301, 0x3FD54FDF00000000
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = fmul fast float %5320, %5316
  %5322 = fmul fast float %5321, %5321
  %5323 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5308)  ; FMax(a,b)
  %5324 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5315)  ; FMax(a,b)
  %5325 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5322)  ; FMax(a,b)
  %5326 = fsub fast float 1.000000e+00, %5211
  %5327 = fadd fast float %5326, %5227
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fsub fast float 1.000000e+00, %5191
  %5330 = fmul fast float %5269, %5329
  %5331 = fmul fast float %5272, %5272
  %5332 = fmul fast float %5331, %5330
  %5333 = fmul fast float %5332, %5274
  %5334 = fmul fast float %5329, 0xBFE99999A0000000
  %5335 = fmul fast float %5334, %5220
  %5336 = fmul fast float %5335, %5231
  %5337 = fadd fast float %5336, 1.000000e+00
  %5338 = fadd fast float %5065, -1.000000e+00
  %5339 = fmul fast float %5337, %5338
  %5340 = fadd fast float %5339, 1.000000e+00
  %5341 = fsub fast float %5323, %5062
  %5342 = fsub fast float %5324, %5063
  %5343 = fsub fast float %5325, %5064
  %5344 = fmul fast float %5333, %5341
  %5345 = fmul fast float %5333, %5342
  %5346 = fmul fast float %5333, %5343
  %5347 = fadd fast float %5344, %5062
  %5348 = fadd fast float %5345, %5063
  %5349 = fadd fast float %5346, %5064
  %5350 = fsub fast float %94, %5020
  %5351 = fsub fast float %95, %5021
  %5352 = fsub fast float %96, %5022
  %5353 = fmul fast float %5333, %5350
  %5354 = fmul fast float %5333, %5351
  %5355 = fmul fast float %5333, %5352
  %5356 = fadd fast float %5353, %5020
  %5357 = fadd fast float %5354, %5021
  %5358 = fadd fast float %5355, %5022
  %5359 = fmul fast float %5333, %5328
  %5360 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5361 = fsub fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5359, %5361
  %5363 = fadd fast float %5362, %5360
  %5364 = fsub fast float 1.000000e+00, %5038
  %5365 = fmul fast float %5333, %5364
  %5366 = fadd fast float %5365, %5038
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = call float @dx.op.unary.f32(i32 25, float %5367)  ; Rsqrt(value)
  %5369 = fmul fast float %5356, %5368
  %5370 = fmul fast float %5357, %5368
  %5371 = fmul fast float %5358, %5368
  br label %5372

; <label>:5372                                    ; preds = %5204, %5197
  %5373 = phi float [ %5203, %5197 ], [ %5210, %5204 ]
  %5374 = phi float [ %5202, %5197 ], [ %5208, %5204 ]
  %5375 = phi float [ %5201, %5197 ], [ %5206, %5204 ]
  %5376 = phi float [ %5200, %5197 ], [ %5209, %5204 ]
  %5377 = phi float [ %5199, %5197 ], [ %5207, %5204 ]
  %5378 = phi float [ %5198, %5197 ], [ %5205, %5204 ]
  %5379 = phi float [ %5102, %5197 ], [ %5256, %5204 ]
  %5380 = phi float [ %5103, %5197 ], [ %5257, %5204 ]
  %5381 = phi float [ %5104, %5197 ], [ %5258, %5204 ]
  %5382 = phi float [ %5062, %5197 ], [ %5347, %5204 ]
  %5383 = phi float [ %5063, %5197 ], [ %5348, %5204 ]
  %5384 = phi float [ %5064, %5197 ], [ %5349, %5204 ]
  %5385 = phi float [ %5020, %5197 ], [ %5369, %5204 ]
  %5386 = phi float [ %5021, %5197 ], [ %5370, %5204 ]
  %5387 = phi float [ %5022, %5197 ], [ %5371, %5204 ]
  %5388 = phi float [ %5065, %5197 ], [ %5363, %5204 ]
  %5389 = phi float [ %5038, %5197 ], [ %5366, %5204 ]
  %5390 = select i1 %203, float 0.000000e+00, float %5384
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5385, float %5386, float %5387, float %5375, float %5374, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5377, float %5376, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fmul fast float %5393, 2.000000e+00
  %5395 = fmul fast float %5394, %5385
  %5396 = fmul fast float %5394, %5386
  %5397 = fmul fast float %5394, %5387
  %5398 = fsub fast float %5378, %5395
  %5399 = fsub fast float %5377, %5396
  %5400 = fsub fast float %5376, %5397
  %5401 = call float @dx.op.binary.f32(i32 36, float %5389, float 1.000000e+00)  ; FMin(a,b)
  %5402 = fsub fast float 1.000000e+00, %5389
  %5403 = bitcast float %5402 to i32
  %5404 = sub nsw i32 2129859010, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5407 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = fcmp fast oeq float %5407, 0.000000e+00
  %5409 = fcmp fast oeq float %5406, 0.000000e+00
  %5410 = or i1 %5409, %5408
  br i1 %5410, label %5440, label %5411

; <label>:5411                                    ; preds = %5372
  %5412 = fsub fast float -0.000000e+00, %61
  %5413 = fsub fast float -0.000000e+00, %59
  %5414 = call float @dx.op.unary.f32(i32 24, float %5407)  ; Sqrt(value)
  %5415 = fdiv fast float %5414, %5406
  %5416 = fcmp fast ogt float %5415, 0x3FFB6F8900000000
  %5417 = select i1 %5416, float 0x3FFB6F8900000000, float %5415
  %5418 = fmul fast float %5417, 0x3FE8A23460000000
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = call float @dx.op.binary.f32(i32 35, float %5417, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5421 = fmul fast float %5419, %5406
  %5422 = fmul fast float %5420, 0x3FF279A740000000
  %5423 = fadd fast float %5422, -1.000000e+00
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %60, float %5412, float %5413, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 25, float %5424)  ; Rsqrt(value)
  %5426 = fmul fast float %5425, %5412
  %5427 = fmul fast float %5425, %5413
  %5428 = fmul fast float %5425, %60
  %5429 = fmul fast float %5423, %5423
  %5430 = fsub fast float 1.000000e+00, %5429
  %5431 = fmul fast float %5420, 0x40005F8BE0000000
  %5432 = fsub fast float 0x400C5BF8A0000000, %5431
  %5433 = fdiv fast float %5421, %5432
  %5434 = fmul fast float %5433, 0x3FEE31C3C0000000
  %5435 = fmul fast float %5434, %5430
  %5436 = fmul fast float %5420, 0x3FDACB7480000000
  %5437 = fadd fast float %5436, 0xBFD7347680000000
  %5438 = fmul fast float %5437, %5433
  %5439 = fmul fast float %5438, %5430
  br label %5440

; <label>:5440                                    ; preds = %5411, %5372
  %5441 = phi float [ %5426, %5411 ], [ 0.000000e+00, %5372 ]
  %5442 = phi float [ %5427, %5411 ], [ 0.000000e+00, %5372 ]
  %5443 = phi float [ %5428, %5411 ], [ 0.000000e+00, %5372 ]
  %5444 = phi float [ %5435, %5411 ], [ 0.000000e+00, %5372 ]
  %5445 = phi float [ %5439, %5411 ], [ 0.000000e+00, %5372 ]
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fmul fast float %5446, 0x3FDF454380000000
  %5448 = fmul fast float %5446, %5446
  %5449 = fmul fast float %5448, 0x3FEE471020000000
  %5450 = fadd fast float %5449, 0xBFD42F6020000000
  %5451 = fmul fast float %5406, 0x3FD20DD760000000
  %5452 = fmul fast float %5450, %5445
  %5453 = fadd fast float %5452, %5451
  %5454 = fmul fast float %5447, %5444
  %5455 = fadd fast float %5453, %5454
  %5456 = fsub fast float %5453, %5454
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = fmul fast float %5457, 0x3FDF454380000000
  %5459 = fmul fast float %5457, %5457
  %5460 = fmul fast float %5459, 0x3FEE471020000000
  %5461 = fadd fast float %5460, 0xBFD42F6020000000
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5444, float %5445, float 0x3FD20DD760000000, float %5458, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5464 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = fcmp fast oeq float %5464, 0.000000e+00
  %5466 = fcmp fast oeq float %5463, 0.000000e+00
  %5467 = or i1 %5466, %5465
  br i1 %5467, label %5497, label %5468

; <label>:5468                                    ; preds = %5440
  %5469 = fsub fast float -0.000000e+00, %57
  %5470 = fsub fast float -0.000000e+00, %55
  %5471 = call float @dx.op.unary.f32(i32 24, float %5464)  ; Sqrt(value)
  %5472 = fdiv fast float %5471, %5463
  %5473 = fcmp fast ogt float %5472, 0x3FFB6F8900000000
  %5474 = select i1 %5473, float 0x3FFB6F8900000000, float %5472
  %5475 = fmul fast float %5474, 0x3FE8A23460000000
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5474, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5478 = fmul fast float %5476, %5463
  %5479 = fmul fast float %5477, 0x3FF279A740000000
  %5480 = fadd fast float %5479, -1.000000e+00
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5469, float %5470, float %56, float %5469, float %5470, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 25, float %5481)  ; Rsqrt(value)
  %5483 = fmul fast float %5482, %5469
  %5484 = fmul fast float %5482, %5470
  %5485 = fmul fast float %5482, %56
  %5486 = fmul fast float %5480, %5480
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = fmul fast float %5477, 0x40005F8BE0000000
  %5489 = fsub fast float 0x400C5BF8A0000000, %5488
  %5490 = fdiv fast float %5478, %5489
  %5491 = fmul fast float %5490, 0x3FEE31C3C0000000
  %5492 = fmul fast float %5491, %5487
  %5493 = fmul fast float %5477, 0x3FDACB7480000000
  %5494 = fadd fast float %5493, 0xBFD7347680000000
  %5495 = fmul fast float %5494, %5490
  %5496 = fmul fast float %5495, %5487
  br label %5497

; <label>:5497                                    ; preds = %5468, %5440
  %5498 = phi float [ %5483, %5468 ], [ 0.000000e+00, %5440 ]
  %5499 = phi float [ %5484, %5468 ], [ 0.000000e+00, %5440 ]
  %5500 = phi float [ %5485, %5468 ], [ 0.000000e+00, %5440 ]
  %5501 = phi float [ %5492, %5468 ], [ 0.000000e+00, %5440 ]
  %5502 = phi float [ %5496, %5468 ], [ 0.000000e+00, %5440 ]
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fmul fast float %5503, 0x3FDF454380000000
  %5505 = fmul fast float %5503, %5503
  %5506 = fmul fast float %5505, 0x3FEE471020000000
  %5507 = fadd fast float %5506, 0xBFD42F6020000000
  %5508 = fmul fast float %5463, 0x3FD20DD760000000
  %5509 = fmul fast float %5507, %5502
  %5510 = fadd fast float %5509, %5508
  %5511 = fmul fast float %5504, %5501
  %5512 = fadd fast float %5510, %5511
  %5513 = fsub fast float %5510, %5511
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = fmul fast float %5514, 0x3FDF454380000000
  %5516 = fmul fast float %5514, %5514
  %5517 = fmul fast float %5516, 0x3FEE471020000000
  %5518 = fadd fast float %5517, 0xBFD42F6020000000
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5501, float %5502, float 0x3FD20DD760000000, float %5515, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5521 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fcmp fast oeq float %5521, 0.000000e+00
  %5523 = fcmp fast oeq float %5520, 0.000000e+00
  %5524 = or i1 %5523, %5522
  br i1 %5524, label %5554, label %5525

; <label>:5525                                    ; preds = %5497
  %5526 = fsub fast float -0.000000e+00, %53
  %5527 = fsub fast float -0.000000e+00, %51
  %5528 = call float @dx.op.unary.f32(i32 24, float %5521)  ; Sqrt(value)
  %5529 = fdiv fast float %5528, %5520
  %5530 = fcmp fast ogt float %5529, 0x3FFB6F8900000000
  %5531 = select i1 %5530, float 0x3FFB6F8900000000, float %5529
  %5532 = fmul fast float %5531, 0x3FE8A23460000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5531, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5535 = fmul fast float %5533, %5520
  %5536 = fmul fast float %5534, 0x3FF279A740000000
  %5537 = fadd fast float %5536, -1.000000e+00
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %52, float %5526, float %5527, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = call float @dx.op.unary.f32(i32 25, float %5538)  ; Rsqrt(value)
  %5540 = fmul fast float %5539, %5526
  %5541 = fmul fast float %5539, %5527
  %5542 = fmul fast float %5539, %52
  %5543 = fmul fast float %5537, %5537
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = fmul fast float %5534, 0x40005F8BE0000000
  %5546 = fsub fast float 0x400C5BF8A0000000, %5545
  %5547 = fdiv fast float %5535, %5546
  %5548 = fmul fast float %5547, 0x3FEE31C3C0000000
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %5534, 0x3FDACB7480000000
  %5551 = fadd fast float %5550, 0xBFD7347680000000
  %5552 = fmul fast float %5551, %5547
  %5553 = fmul fast float %5552, %5544
  br label %5554

; <label>:5554                                    ; preds = %5525, %5497
  %5555 = phi float [ %5540, %5525 ], [ 0.000000e+00, %5497 ]
  %5556 = phi float [ %5541, %5525 ], [ 0.000000e+00, %5497 ]
  %5557 = phi float [ %5542, %5525 ], [ 0.000000e+00, %5497 ]
  %5558 = phi float [ %5549, %5525 ], [ 0.000000e+00, %5497 ]
  %5559 = phi float [ %5553, %5525 ], [ 0.000000e+00, %5497 ]
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %5557, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fmul fast float %5560, 0x3FDF454380000000
  %5562 = fmul fast float %5560, %5560
  %5563 = fmul fast float %5562, 0x3FEE471020000000
  %5564 = fadd fast float %5563, 0xBFD42F6020000000
  %5565 = fmul fast float %5520, 0x3FD20DD760000000
  %5566 = fmul fast float %5564, %5559
  %5567 = fadd fast float %5566, %5565
  %5568 = fmul fast float %5561, %5558
  %5569 = fadd fast float %5567, %5568
  %5570 = fsub fast float %5567, %5568
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %5557, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = fmul fast float %5571, 0x3FDF454380000000
  %5573 = fmul fast float %5571, %5571
  %5574 = fmul fast float %5573, 0x3FEE471020000000
  %5575 = fadd fast float %5574, 0xBFD42F6020000000
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5558, float %5559, float 0x3FD20DD760000000, float %5572, float %5575)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = call float @dx.op.binary.f32(i32 35, float %5455, float 0.000000e+00)  ; FMax(a,b)
  %5578 = call float @dx.op.binary.f32(i32 35, float %5512, float 0.000000e+00)  ; FMax(a,b)
  %5579 = call float @dx.op.binary.f32(i32 35, float %5569, float 0.000000e+00)  ; FMax(a,b)
  %5580 = call float @dx.op.binary.f32(i32 35, float %5456, float 0.000000e+00)  ; FMax(a,b)
  %5581 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5582 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5583 = call float @dx.op.binary.f32(i32 35, float %5462, float 0.000000e+00)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5519, float 0.000000e+00)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5576, float 0.000000e+00)  ; FMax(a,b)
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5588 = call float @dx.op.binary.f32(i32 36, float %5379, float %5587)  ; FMin(a,b)
  %5589 = fsub fast float 1.000000e+00, %5401
  %5590 = fmul fast float %5588, %5589
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = bitcast float %5591 to i32
  %5593 = sub nsw i32 2129859010, %5592
  %5594 = bitcast i32 %5593 to float
  %5595 = call float @dx.op.binary.f32(i32 36, float %5380, float %5587)  ; FMin(a,b)
  %5596 = fmul fast float %5595, %5589
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = bitcast float %5597 to i32
  %5599 = sub nsw i32 2129859010, %5598
  %5600 = bitcast i32 %5599 to float
  %5601 = call float @dx.op.binary.f32(i32 36, float %5381, float %5587)  ; FMin(a,b)
  %5602 = fmul fast float %5601, %5589
  %5603 = fsub fast float 1.000000e+00, %5602
  %5604 = bitcast float %5603 to i32
  %5605 = sub nsw i32 2129859010, %5604
  %5606 = bitcast i32 %5605 to float
  %5607 = fmul fast float %5577, %5401
  %5608 = fmul fast float %5607, %5594
  %5609 = fmul fast float %5578, %5401
  %5610 = fmul fast float %5609, %5600
  %5611 = fmul fast float %5579, %5401
  %5612 = fmul fast float %5611, %5606
  %5613 = call float @dx.op.binary.f32(i32 36, float %5382, float %5587)  ; FMin(a,b)
  %5614 = fmul fast float %5613, %5589
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = call float @dx.op.binary.f32(i32 36, float %5383, float %5587)  ; FMin(a,b)
  %5620 = fmul fast float %5619, %5589
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = call float @dx.op.binary.f32(i32 36, float %5390, float %5587)  ; FMin(a,b)
  %5626 = fmul fast float %5625, %5589
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = bitcast float %5627 to i32
  %5629 = sub nsw i32 2129859010, %5628
  %5630 = bitcast i32 %5629 to float
  %5631 = fmul fast float %5583, %5401
  %5632 = fmul fast float %5631, %5618
  %5633 = fmul fast float %5584, %5401
  %5634 = fmul fast float %5633, %5624
  %5635 = fmul fast float %5585, %5401
  %5636 = fmul fast float %5635, %5630
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5610, float %5612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = select i1 %203, float 0.000000e+00, float %5608
  %5639 = select i1 %203, float %5637, float %5610
  %5640 = select i1 %203, float 0.000000e+00, float %5612
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = select i1 %203, float 0.000000e+00, float %5580
  %5643 = select i1 %203, float %5641, float %5581
  %5644 = select i1 %203, float 0.000000e+00, float %5582
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5634, float %5636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = select i1 %203, float 0.000000e+00, float %5632
  %5647 = select i1 %203, float %5645, float %5634
  %5648 = select i1 %203, float 0.000000e+00, float %5636
  %5649 = fmul fast float %4393, %4393
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5392, 9.843750e-01
  %5652 = fmul fast float %5388, 9.843750e-01
  %5653 = fadd fast float %5651, 7.812500e-03
  %5654 = fadd fast float %5652, 7.812500e-03
  %5655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5653, float %5654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = extractvalue %dx.types.ResRet.f32 %5655, 3
  %5660 = fsub fast float 1.000000e+00, %5650
  %5661 = fsub fast float %5658, %5656
  %5662 = fsub fast float %5659, %5657
  %5663 = fmul fast float %5661, %5660
  %5664 = fmul fast float %5662, %5660
  %5665 = fadd fast float %5663, %5656
  %5666 = fadd fast float %5664, %5657
  %5667 = fmul fast float %5665, %5382
  %5668 = fmul fast float %5665, %5383
  %5669 = fmul fast float %5665, %5390
  %5670 = fadd fast float %5667, %5666
  %5671 = fadd fast float %5668, %5666
  %5672 = fadd fast float %5669, %5666
  %5673 = fcmp fast ogt float %5039, 0.000000e+00
  br i1 %5673, label %5674, label %5700

; <label>:5674                                    ; preds = %5554
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %5392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = fadd fast float %5676, -5.000000e-01
  %5680 = fadd fast float %5677, -5.000000e-01
  %5681 = fadd fast float %5678, -5.000000e-01
  %5682 = fsub fast float 1.000000e+00, %5382
  %5683 = fsub fast float 1.000000e+00, %5383
  %5684 = fsub fast float 1.000000e+00, %5390
  %5685 = fmul fast float %5382, 4.000000e+00
  %5686 = fmul fast float %5685, %5682
  %5687 = fmul fast float %5686, %5679
  %5688 = fmul fast float %5383, 4.000000e+00
  %5689 = fmul fast float %5688, %5683
  %5690 = fmul fast float %5689, %5680
  %5691 = fmul fast float %5390, 4.000000e+00
  %5692 = fmul fast float %5691, %5684
  %5693 = fmul fast float %5692, %5681
  %5694 = fadd fast float %5687, %5670
  %5695 = fadd fast float %5690, %5671
  %5696 = fadd fast float %5693, %5672
  %5697 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  br label %5700

; <label>:5700                                    ; preds = %5674, %5554
  %5701 = phi float [ %5697, %5674 ], [ %5670, %5554 ]
  %5702 = phi float [ %5698, %5674 ], [ %5671, %5554 ]
  %5703 = phi float [ %5699, %5674 ], [ %5672, %5554 ]
  %5704 = call float @dx.op.binary.f32(i32 35, float %5702, float %5703)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5701, float %5704)  ; FMax(a,b)
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5380, float %5381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = fcmp fast ogt float %5707, 0x3E7FF19E20000000
  %5709 = fdiv fast float 1.000000e+00, %5707
  %5710 = select i1 %5708, float %5709, float 0.000000e+00
  %5711 = fmul fast float %5710, %5379
  %5712 = fmul fast float %5710, %5380
  %5713 = fmul fast float %5710, %5381
  %5714 = fadd fast float %5711, -1.000000e+00
  %5715 = fadd fast float %5712, -1.000000e+00
  %5716 = fadd fast float %5713, -1.000000e+00
  %5717 = fmul fast float %5714, 5.000000e-01
  %5718 = fmul fast float %5715, 5.000000e-01
  %5719 = fmul fast float %5716, 5.000000e-01
  %5720 = fadd fast float %5717, 1.000000e+00
  %5721 = fadd fast float %5718, 1.000000e+00
  %5722 = fadd fast float %5719, 1.000000e+00
  %5723 = call float @dx.op.binary.f32(i32 35, float %5392, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5724 = fdiv fast float %4393, %5723
  %5725 = fcmp fast olt float %5088, 1.270000e+02
  %5726 = fcmp fast olt float %5089, 1.270000e+02
  %5727 = fcmp fast olt float %5090, 1.270000e+02
  %5728 = fmul fast float %5088, 0xBFF7154760000000
  %5729 = fmul fast float %5728, %5724
  %5730 = fmul fast float %5089, 0xBFF7154760000000
  %5731 = fmul fast float %5730, %5724
  %5732 = fmul fast float %5090, 0xBFF7154760000000
  %5733 = fmul fast float %5732, %5724
  %5734 = call float @dx.op.unary.f32(i32 21, float %5729)  ; Exp(value)
  %5735 = call float @dx.op.unary.f32(i32 21, float %5731)  ; Exp(value)
  %5736 = call float @dx.op.unary.f32(i32 21, float %5733)  ; Exp(value)
  %5737 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5740 = select i1 %5725, float %5737, float 0.000000e+00
  %5741 = select i1 %5726, float %5738, float 0.000000e+00
  %5742 = select i1 %5727, float %5739, float 0.000000e+00
  %5743 = fmul fast float %5740, %5706
  %5744 = fmul fast float %5741, %5706
  %5745 = fmul fast float %5742, %5706
  %5746 = fadd fast float %5743, -1.000000e+00
  %5747 = fadd fast float %5744, -1.000000e+00
  %5748 = fadd fast float %5745, -1.000000e+00
  %5749 = fmul fast float %5746, %5036
  %5750 = fmul fast float %5747, %5036
  %5751 = fmul fast float %5748, %5036
  %5752 = fmul fast float %5701, %5646
  %5753 = fmul fast float %5702, %5647
  %5754 = fmul fast float %5703, %5648
  %5755 = fsub fast float 1.000000e+00, %5392
  %5756 = bitcast float %5755 to i32
  %5757 = sitofp i32 %5756 to float
  %5758 = fmul fast float %5757, 5.000000e+00
  %5759 = fadd fast float %5758, 0xC1EFBF8940000000
  %5760 = fptosi float %5759 to i32
  %5761 = bitcast i32 %5760 to float
  %5762 = fmul fast float %5761, %5040
  %5763 = fmul fast float %5638, %5762
  %5764 = fmul fast float %5763, %5706
  %5765 = fmul fast float %5764, %5720
  %5766 = fmul fast float %5639, %5762
  %5767 = fmul fast float %5766, %5706
  %5768 = fmul fast float %5767, %5721
  %5769 = fmul fast float %5640, %5762
  %5770 = fmul fast float %5769, %5706
  %5771 = fmul fast float %5770, %5722
  %5772 = fadd fast float %5752, %5023
  %5773 = fadd fast float %5772, %5765
  %5774 = fmul fast float %5773, %5036
  %5775 = fadd fast float %5753, %5024
  %5776 = fadd fast float %5775, %5768
  %5777 = fmul fast float %5776, %5036
  %5778 = fadd fast float %5754, %5025
  %5779 = fadd fast float %5778, %5771
  %5780 = fmul fast float %5779, %5036
  %5781 = fmul fast float %5383, 0x4012D0A400000000
  %5782 = fadd fast float %5751, 1.000000e+00
  %5783 = fadd fast float %5750, 1.000000e+00
  %5784 = fadd fast float %5749, 1.000000e+00
  %5785 = fmul fast float %5706, %5640
  %5786 = fmul fast float %5706, %5639
  %5787 = fmul fast float %5706, %5638
  %5788 = fsub fast float 1.000000e+00, %5388
  %5789 = fmul fast float %5788, %5036
  %5790 = fsub fast float 1.000000e+00, %5789
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fadd fast float %5781, 0x3FDB6377A0000000
  %5794 = fmul fast float %5792, %5793
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fadd fast float %5794, %5795
  %5797 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5798 = call float @dx.op.binary.f32(i32 35, float %5797, float 0x3F847AE140000000)  ; FMax(a,b)
  %5799 = fmul fast float %5798, %5798
  %5800 = fmul fast float %5799, %5799
  %5801 = fmul fast float %5800, 0xC00A935000000000
  %5802 = call float @dx.op.unary.f32(i32 21, float %5801)  ; Exp(value)
  %5803 = fsub fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5784, %5642
  %5805 = fmul fast float %5804, %5803
  %5806 = fmul fast float %5783, %5643
  %5807 = fmul fast float %5806, %5803
  %5808 = fmul fast float %5782, %5644
  %5809 = fmul fast float %5808, %5803
  %5810 = fadd fast float %5805, %5787
  %5811 = fmul fast float %5810, %5036
  %5812 = fadd fast float %5807, %5786
  %5813 = fmul fast float %5812, %5036
  %5814 = fadd fast float %5809, %5785
  %5815 = fmul fast float %5814, %5036
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5818 = fcmp fast oeq float %5817, 0.000000e+00
  br i1 %5818, label %6948, label %5819

; <label>:5819                                    ; preds = %5700
  %5820 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5821 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5822 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = select i1 %203, float %5828, float %5824
  %5832 = select i1 %203, float %5830, float %5825
  %5833 = select i1 %203, float %5829, float %5826
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5836 = fmul fast float %5835, %94
  %5837 = fmul fast float %5835, %95
  %5838 = fmul fast float %5835, %96
  %5839 = fadd fast float %5836, %142
  %5840 = fadd fast float %5837, %143
  %5841 = fadd fast float %5838, %144
  %5842 = fcmp fast olt float %5817, 0.000000e+00
  br i1 %5842, label %6467, label %5843

; <label>:5843                                    ; preds = %5819
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5848 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5859 = fmul fast float %5845, %5839
  %5860 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5846, float %5859)  ; FMad(a,b,c)
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5847, float %5860)  ; FMad(a,b,c)
  %5862 = fadd fast float %5861, %5848
  %5863 = fmul fast float %5850, %5839
  %5864 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5851, float %5863)  ; FMad(a,b,c)
  %5865 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5852, float %5864)  ; FMad(a,b,c)
  %5866 = fadd fast float %5865, %5853
  %5867 = fmul fast float %5855, %5839
  %5868 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5856, float %5867)  ; FMad(a,b,c)
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5857, float %5868)  ; FMad(a,b,c)
  %5870 = fadd fast float %5869, %5858
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5875 = fmul fast float %5874, %5862
  %5876 = fmul fast float %5874, %5866
  %5877 = fadd fast float %5875, %5872
  %5878 = fadd fast float %5876, %5873
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.CBufRet.f32 %5879, 1
  %5882 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5883 = fmul fast float %5882, %5862
  %5884 = fmul fast float %5882, %5866
  %5885 = fadd fast float %5883, %5880
  %5886 = fadd fast float %5884, %5881
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 1
  %5889 = fsub fast float %5888, %5870
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = fmul fast float %5889, %5890
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5879, 2
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5897 = fadd fast float %5896, %5894
  %5898 = fcmp fast ogt float %5897, 0.000000e+00
  br i1 %5898, label %5899, label %5923

; <label>:5899                                    ; preds = %5843
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = fsub fast float %5885, %5901
  %5904 = fsub fast float %5886, %5902
  %5905 = fcmp fast olt float %5903, 0.000000e+00
  %5906 = fcmp fast olt float %5904, 0.000000e+00
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = select i1 %5905, float %5908, float %5910
  %5913 = select i1 %5906, float %5909, float %5911
  %5914 = fmul fast float %5912, %5903
  %5915 = fmul fast float %5913, %5904
  %5916 = call float @dx.op.unary.f32(i32 6, float %5914)  ; FAbs(value)
  %5917 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5919 = call float @dx.op.binary.f32(i32 35, float %5916, float %5917)  ; FMax(a,b)
  %5920 = fsub fast float %5918, %5919
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = fmul fast float %5921, %5893
  br label %5923

; <label>:5923                                    ; preds = %5899, %5843
  %5924 = phi float [ %5922, %5899 ], [ 0.000000e+00, %5843 ]
  %5925 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5926 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5927 = fadd fast float %5926, %5925
  %5928 = fcmp fast ogt float %5927, 0.000000e+00
  %5929 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  br i1 %5928, label %5930, label %5953

; <label>:5930                                    ; preds = %5923
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = fsub fast float %5877, %5932
  %5935 = fsub fast float %5878, %5933
  %5936 = fcmp fast olt float %5934, 0.000000e+00
  %5937 = fcmp fast olt float %5935, 0.000000e+00
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = select i1 %5936, float %5939, float %5941
  %5944 = select i1 %5937, float %5940, float %5942
  %5945 = fmul fast float %5943, %5934
  %5946 = fmul fast float %5944, %5935
  %5947 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5948 = call float @dx.op.unary.f32(i32 6, float %5946)  ; FAbs(value)
  %5949 = call float @dx.op.binary.f32(i32 35, float %5947, float %5948)  ; FMax(a,b)
  %5950 = fsub fast float %5929, %5949
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fmul fast float %5951, %5893
  br label %5953

; <label>:5953                                    ; preds = %5930, %5923
  %5954 = phi float [ %5952, %5930 ], [ 0.000000e+00, %5923 ]
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5961 = fsub fast float %5862, %5959
  %5962 = fsub fast float %5866, %5960
  %5963 = fcmp fast olt float %5961, 0.000000e+00
  %5964 = fcmp fast olt float %5962, 0.000000e+00
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5969 = extractvalue %dx.types.CBufRet.f32 %5965, 3
  %5970 = select i1 %5963, float %5966, float %5968
  %5971 = select i1 %5964, float %5967, float %5969
  %5972 = fmul fast float %5970, %5961
  %5973 = fmul fast float %5971, %5962
  %5974 = call float @dx.op.unary.f32(i32 6, float %5972)  ; FAbs(value)
  %5975 = call float @dx.op.unary.f32(i32 6, float %5973)  ; FAbs(value)
  %5976 = call float @dx.op.binary.f32(i32 35, float %5974, float %5975)  ; FMax(a,b)
  %5977 = fsub fast float %5929, %5976
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = call float @dx.op.binary.f32(i32 36, float %5978, float %5957)  ; FMin(a,b)
  %5980 = fmul fast float %5979, %5893
  %5981 = fsub fast float %5954, %5980
  %5982 = fsub fast float %5924, %5954
  %5983 = fsub fast float %5982, %5980
  %5984 = call float @dx.op.binary.f32(i32 35, float %5954, float %5924)  ; FMax(a,b)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5980, float %5984)  ; FMax(a,b)
  %5986 = fcmp fast olt float %5985, 1.000000e+00
  br i1 %5986, label %5987, label %6385, !dx.controlflow.hints !78

; <label>:5987                                    ; preds = %5953
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = fcmp fast une float %5989, 0.000000e+00
  br i1 %5990, label %5991, label %6385, !dx.controlflow.hints !79

; <label>:5991                                    ; preds = %5987
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.CBufRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %5996 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %6001 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6004 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6005 = extractvalue %dx.types.CBufRet.f32 %6002, 2
  %6006 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6007 = fmul fast float %5993, %5839
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5994, float %6007)  ; FMad(a,b,c)
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5995, float %6008)  ; FMad(a,b,c)
  %6010 = fadd fast float %6009, %5996
  %6011 = fmul fast float %5998, %5839
  %6012 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5999, float %6011)  ; FMad(a,b,c)
  %6013 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6000, float %6012)  ; FMad(a,b,c)
  %6014 = fadd fast float %6013, %6001
  %6015 = fmul fast float %6003, %5839
  %6016 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %6004, float %6015)  ; FMad(a,b,c)
  %6017 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6005, float %6016)  ; FMad(a,b,c)
  %6018 = fadd fast float %6017, %6006
  %6019 = fcmp fast oge float %6010, 1.000000e+00
  %6020 = fcmp fast oge float %6014, 1.000000e+00
  %6021 = or i1 %6019, %6020
  %6022 = fcmp fast olt float %6010, 0.000000e+00
  %6023 = fcmp fast olt float %6014, 0.000000e+00
  %6024 = or i1 %6022, %6023
  %6025 = or i1 %6021, %6024
  br i1 %6025, label %6385, label %6026, !dx.controlflow.hints !80

; <label>:6026                                    ; preds = %5991
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.CBufRet.f32 %6027, 2
  %6031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.i32 %6031, 2
  %6033 = uitofp i32 %6032 to float
  %6034 = extractvalue %dx.types.CBufRet.i32 %6031, 3
  %6035 = uitofp i32 %6034 to float
  %6036 = extractvalue %dx.types.CBufRet.f32 %6027, 3
  %6037 = fmul fast float %6036, 2.000000e+00
  %6038 = fsub fast float %6010, %6028
  %6039 = fsub fast float %6014, %6029
  %6040 = fmul fast float %6037, %6038
  %6041 = fmul fast float %6037, %6039
  %6042 = fdiv fast float 1.000000e+00, %5822
  %6043 = fmul fast float %6041, %6042
  %6044 = call float @dx.op.unary.f32(i32 6, float %6043)  ; FAbs(value)
  %6045 = fmul fast float %6030, %5841
  %6046 = fmul fast float %6045, %6037
  %6047 = call float @dx.op.unary.f32(i32 6, float %6046)  ; FAbs(value)
  %6048 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6049 = call float @dx.op.binary.f32(i32 35, float %6047, float %6044)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float %6048, float %6049)  ; FMax(a,b)
  %6051 = fmul fast float %6050, 2.000000e+00
  %6052 = call float @dx.op.unary.f32(i32 23, float %6051)  ; Log(value)
  %6053 = call float @dx.op.binary.f32(i32 35, float %6052, float %6033)  ; FMax(a,b)
  %6054 = call float @dx.op.unary.f32(i32 22, float %6053)  ; Frc(value)
  %6055 = fadd fast float %6054, 0xBFEA666660000000
  %6056 = fmul fast float %6055, 8.000000e+00
  %6057 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6058 = call float @dx.op.unary.f32(i32 27, float %6053)  ; Round_ni(value)
  %6059 = fadd fast float %6058, %6057
  %6060 = call float @dx.op.binary.f32(i32 36, float %6059, float %6035)  ; FMin(a,b)
  %6061 = call float @dx.op.unary.f32(i32 27, float %6060)  ; Round_ni(value)
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6064 = fmul fast float %6063, %6037
  %6065 = fmul fast float %6064, %6010
  %6066 = fmul fast float %6064, %6014
  %6067 = fmul fast float %6065, 2.500000e-01
  %6068 = fmul fast float %6066, 2.500000e-01
  %6069 = fadd fast float %6067, 5.000000e-01
  %6070 = fadd fast float %6068, 5.000000e-01
  %6071 = fsub fast float %6035, %6033
  %6072 = fptoui float %6071 to i32
  %6073 = add i32 %6072, 320
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6073)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = fcmp fast une float %6060, %6035
  %6078 = fsub fast float %6010, %6075
  %6079 = fsub fast float %6014, %6076
  %6080 = call float @dx.op.unary.f32(i32 6, float %6078)  ; FAbs(value)
  %6081 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6082 = fmul fast float %6080, %6064
  %6083 = fmul fast float %6081, %6064
  %6084 = fcmp fast olt float %6082, 1.000000e+00
  %6085 = fcmp fast olt float %6083, 1.000000e+00
  %6086 = and i1 %6084, %6085
  %6087 = or i1 %6077, %6086
  br i1 %6087, label %6088, label %6385, !dx.controlflow.hints !81

; <label>:6088                                    ; preds = %6026
  %6089 = fmul fast float %6066, 5.000000e-01
  %6090 = fmul fast float %6065, 5.000000e-01
  %6091 = fadd fast float %6089, 5.000000e-01
  %6092 = fadd fast float %6090, 5.000000e-01
  %6093 = sitofp i32 %6032 to float
  %6094 = fsub fast float %6060, %6093
  %6095 = call float @dx.op.unary.f32(i32 27, float %6094)  ; Round_ni(value)
  %6096 = call float @dx.op.unary.f32(i32 22, float %6060)  ; Frc(value)
  %6097 = call float @dx.op.unary.f32(i32 22, float %6092)  ; Frc(value)
  %6098 = call float @dx.op.unary.f32(i32 22, float %6091)  ; Frc(value)
  %6099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6097, float %6098, float %6095, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.ResRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.ResRet.f32 %6099, 3
  %6104 = fcmp fast ogt float %6096, 0.000000e+00
  br i1 %6104, label %6105, label %6126, !dx.controlflow.hints !82

; <label>:6105                                    ; preds = %6088
  %6106 = fadd fast float %6095, 1.000000e+00
  %6107 = call float @dx.op.unary.f32(i32 22, float %6069)  ; Frc(value)
  %6108 = call float @dx.op.unary.f32(i32 22, float %6070)  ; Frc(value)
  %6109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6107, float %6108, float %6106, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = extractvalue %dx.types.ResRet.f32 %6109, 3
  %6114 = fsub fast float %6110, %6100
  %6115 = fsub fast float %6111, %6101
  %6116 = fsub fast float %6112, %6102
  %6117 = fsub fast float %6113, %6103
  %6118 = fmul fast float %6114, %6096
  %6119 = fmul fast float %6115, %6096
  %6120 = fmul fast float %6116, %6096
  %6121 = fmul fast float %6117, %6096
  %6122 = fadd fast float %6118, %6100
  %6123 = fadd fast float %6119, %6101
  %6124 = fadd fast float %6120, %6102
  %6125 = fadd fast float %6121, %6103
  br label %6126

; <label>:6126                                    ; preds = %6105, %6088
  %6127 = phi float [ %6122, %6105 ], [ %6100, %6088 ]
  %6128 = phi float [ %6123, %6105 ], [ %6101, %6088 ]
  %6129 = phi float [ %6124, %6105 ], [ %6102, %6088 ]
  %6130 = phi float [ %6125, %6105 ], [ %6103, %6088 ]
  %6131 = fadd fast float %6127, -5.000000e-01
  %6132 = fadd fast float %6129, -5.000000e-01
  %6133 = fmul fast float %6131, 0xBFD5555560000000
  %6134 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6132, float %6133)  ; FMad(a,b,c)
  %6135 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6128, float 0.000000e+00)  ; FMad(a,b,c)
  %6136 = fadd fast float %6135, %6130
  %6137 = fmul fast float %6131, -7.500000e-01
  %6138 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6132, float %6137)  ; FMad(a,b,c)
  %6139 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6128, float 0.000000e+00)  ; FMad(a,b,c)
  %6140 = fadd fast float %6139, %6130
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6147 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6148 = fsub fast float %6144, %6134
  %6149 = fsub fast float %6145, %6136
  %6150 = fsub fast float %6146, %6138
  %6151 = fsub fast float %6147, %6140
  %6152 = fmul fast float %6148, %6142
  %6153 = fmul fast float %6149, %6142
  %6154 = fmul fast float %6150, %6142
  %6155 = fmul fast float %6151, %6142
  %6156 = fadd fast float %6152, %6134
  %6157 = fadd fast float %6153, %6136
  %6158 = fadd fast float %6154, %6138
  %6159 = fadd fast float %6155, %6140
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = and i32 %6161, 536870911
  %6163 = uitofp i32 %6162 to float
  %6164 = fmul fast float %6163, %6010
  %6165 = fmul fast float %6163, %6014
  %6166 = fptoui float %6164 to i32
  %6167 = fptoui float %6165 to i32
  %6168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6169 = extractvalue %dx.types.ResRet.i32 %6168, 0
  %6170 = and i32 %6169, 31
  %6171 = lshr i32 %6166, %6170
  %6172 = lshr i32 %6167, %6170
  %6173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.i32 %6173, 0
  %6175 = and i32 %6174, 31
  %6176 = shl i32 1, %6175
  %6177 = call i32 @dx.op.binary.i32(i32 40, i32 %6176, i32 4)  ; UMin(a,b)
  %6178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.i32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.i32 %6178, 1
  %6181 = icmp eq i32 %6177, 0
  br i1 %6181, label %6223, label %6182

; <label>:6182                                    ; preds = %6126
  br label %6183

; <label>:6183                                    ; preds = %6211, %6182
  %6184 = phi i32 [ %6214, %6211 ], [ 0, %6182 ]
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = lshr i32 %6186, 16
  %6188 = and i32 %6187, 31
  %6189 = shl i32 %6172, %6188
  %6190 = add i32 %6189, %6171
  %6191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6192 = extractvalue %dx.types.ResRet.i32 %6191, 0
  %6193 = and i32 %6192, 31
  %6194 = shl i32 %6190, %6193
  %6195 = add i32 %6194, %6184
  %6196 = shl i32 %6195, 2
  %6197 = add i32 %6196, 32
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = icmp slt i32 %6199, 0
  %6201 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6184
  %6202 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6184
  %6203 = bitcast float* %6201 to i32*
  %6204 = bitcast float* %6202 to i32*
  br i1 %6200, label %6205, label %6211

; <label>:6205                                    ; preds = %6183
  %6206 = and i32 %6199, 1073741823
  %6207 = add nuw nsw i32 %6206, 20
  %6208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6207, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.i32 %6208, 0
  %6210 = extractvalue %dx.types.ResRet.i32 %6208, 1
  br label %6211

; <label>:6211                                    ; preds = %6205, %6183
  %6212 = phi i32 [ %6209, %6205 ], [ %6179, %6183 ]
  %6213 = phi i32 [ %6210, %6205 ], [ %6180, %6183 ]
  store i32 %6212, i32* %6203, align 4
  store i32 %6213, i32* %6204, align 4
  %6214 = add nuw i32 %6184, 1
  %6215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.i32 %6215, 2
  %6217 = icmp eq i32 %6216, 0
  %6218 = icmp ugt i32 %6199, -1073741825
  %6219 = and i1 %6218, %6217
  %6220 = icmp ult i32 %6214, %6177
  %6221 = and i1 %6219, %6220
  br i1 %6221, label %6183, label %6222

; <label>:6222                                    ; preds = %6211
  br label %6223

; <label>:6223                                    ; preds = %6222, %6126
  %6224 = phi i32 [ 0, %6126 ], [ %6214, %6222 ]
  %6225 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %6226 = fptoui float %6225 to i32
  %6227 = icmp eq i32 %6226, 0
  br i1 %6227, label %6279, label %6228

; <label>:6228                                    ; preds = %6223
  br label %6229

; <label>:6229                                    ; preds = %6274, %6228
  %6230 = phi i32 [ %6275, %6274 ], [ %6224, %6228 ]
  %6231 = phi i32 [ %6276, %6274 ], [ 0, %6228 ]
  %6232 = lshr i32 %6231, 2
  %6233 = and i32 %6231, 3
  %6234 = add nuw nsw i32 %6232, 83
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6234)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.i32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.i32 %6235, 2
  %6239 = extractvalue %dx.types.CBufRet.i32 %6235, 3
  %6240 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6236, i32* %6240, align 4
  %6241 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6237, i32* %6241, align 4
  %6242 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6238, i32* %6242, align 4
  %6243 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6239, i32* %6243, align 4
  %6244 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6233
  %6245 = load i32, i32* %6244, align 4, !tbaa !83, !noalias !87
  %6246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.i32 %6246, 0
  %6248 = lshr i32 %6247, 16
  %6249 = and i32 %6248, 31
  %6250 = shl i32 %6172, %6249
  %6251 = add i32 %6250, %6171
  %6252 = shl i32 %6251, 2
  %6253 = add i32 %6252, %6245
  %6254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.i32 %6254, 0
  %6256 = icmp eq i32 %6255, 0
  br i1 %6256, label %6274, label %6257

; <label>:6257                                    ; preds = %6229
  %6258 = icmp slt i32 %6255, 0
  %6259 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6230
  %6260 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6230
  %6261 = bitcast float* %6259 to i32*
  %6262 = bitcast float* %6260 to i32*
  br i1 %6258, label %6263, label %6270

; <label>:6263                                    ; preds = %6257
  %6264 = and i32 %6255, 1073741823
  %6265 = add i32 %6245, 20
  %6266 = add i32 %6265, %6264
  %6267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.i32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.i32 %6267, 1
  br label %6270

; <label>:6270                                    ; preds = %6263, %6257
  %6271 = phi i32 [ %6268, %6263 ], [ %6179, %6257 ]
  %6272 = phi i32 [ %6269, %6263 ], [ %6180, %6257 ]
  store i32 %6271, i32* %6261, align 4
  store i32 %6272, i32* %6262, align 4
  %6273 = add i32 %6230, 1
  br label %6274

; <label>:6274                                    ; preds = %6270, %6229
  %6275 = phi i32 [ %6230, %6229 ], [ %6273, %6270 ]
  %6276 = add nuw i32 %6231, 1
  %6277 = icmp eq i32 %6276, %6226
  br i1 %6277, label %6278, label %6229

; <label>:6278                                    ; preds = %6274
  br label %6279

; <label>:6279                                    ; preds = %6278, %6223
  %6280 = phi i32 [ %6224, %6223 ], [ %6275, %6278 ]
  %6281 = icmp eq i32 %6280, 1
  %6282 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6283 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6281, label %6284, label %6287

; <label>:6284                                    ; preds = %6279
  %6285 = load float, float* %6282, align 4
  %6286 = load float, float* %6283, align 4
  br label %6314

; <label>:6287                                    ; preds = %6279
  %6288 = load float, float* %6282, align 4
  %6289 = load float, float* %6283, align 4
  %6290 = fdiv fast float 1.000000e+00, %6289
  %6291 = fsub fast float %6288, %6290
  %6292 = icmp ugt i32 %6280, 1
  br i1 %6292, label %6293, label %6309

; <label>:6293                                    ; preds = %6287
  br label %6294

; <label>:6294                                    ; preds = %6294, %6293
  %6295 = phi float [ %6304, %6294 ], [ %6291, %6293 ]
  %6296 = phi float [ %6305, %6294 ], [ %6288, %6293 ]
  %6297 = phi i32 [ %6306, %6294 ], [ 1, %6293 ]
  %6298 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6297
  %6299 = load float, float* %6298, align 4
  %6300 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6297
  %6301 = load float, float* %6300, align 4
  %6302 = fdiv fast float 1.000000e+00, %6301
  %6303 = fsub fast float %6299, %6302
  %6304 = call float @dx.op.binary.f32(i32 36, float %6295, float %6303)  ; FMin(a,b)
  %6305 = call float @dx.op.binary.f32(i32 35, float %6296, float %6299)  ; FMax(a,b)
  %6306 = add nuw i32 %6297, 1
  %6307 = icmp eq i32 %6306, %6280
  br i1 %6307, label %6308, label %6294

; <label>:6308                                    ; preds = %6294
  br label %6309

; <label>:6309                                    ; preds = %6308, %6287
  %6310 = phi float [ %6291, %6287 ], [ %6304, %6308 ]
  %6311 = phi float [ %6288, %6287 ], [ %6305, %6308 ]
  %6312 = fsub fast float %6311, %6310
  %6313 = fdiv fast float 1.000000e+00, %6312
  br label %6314

; <label>:6314                                    ; preds = %6309, %6284
  %6315 = phi float [ %6285, %6284 ], [ %6311, %6309 ]
  %6316 = phi float [ %6286, %6284 ], [ %6313, %6309 ]
  %6317 = fadd fast float %6018, %6315
  %6318 = fmul fast float %6317, %6316
  %6319 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6320 = fmul fast float %6319, 2.000000e+00
  %6321 = fsub fast float 1.000000e+00, %6320
  %6322 = fmul fast float %6156, %6156
  %6323 = fsub fast float %6157, %6322
  %6324 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6323)  ; FMax(a,b)
  %6325 = fdiv fast float 1.000000e+00, %6324
  %6326 = fmul fast float %6157, %6156
  %6327 = fsub fast float %6158, %6326
  %6328 = fsub fast float %6321, %6156
  %6329 = fmul fast float %6321, %6321
  %6330 = fsub fast float %6329, %6157
  %6331 = fmul fast float %6325, %6327
  %6332 = fmul fast float %6331, %6328
  %6333 = fsub fast float %6330, %6332
  %6334 = fmul fast float %6157, %6157
  %6335 = fsub fast float %6159, %6334
  %6336 = fmul fast float %6327, %6327
  %6337 = fmul fast float %6336, %6325
  %6338 = fsub fast float %6335, %6337
  %6339 = fdiv fast float %6333, %6338
  %6340 = fmul fast float %6339, %6327
  %6341 = fsub fast float %6328, %6340
  %6342 = fmul fast float %6341, %6325
  %6343 = fmul fast float %6342, %6156
  %6344 = fsub fast float 1.000000e+00, %6343
  %6345 = fmul fast float %6339, %6157
  %6346 = fsub fast float %6344, %6345
  %6347 = fmul fast float %6342, %6342
  %6348 = fmul fast float %6339, 4.000000e+00
  %6349 = fmul fast float %6348, %6346
  %6350 = fsub fast float %6347, %6349
  %6351 = call float @dx.op.unary.f32(i32 24, float %6350)  ; Sqrt(value)
  %6352 = fcmp fast oge float %6342, 0.000000e+00
  %6353 = fsub fast float -0.000000e+00, %6351
  %6354 = select i1 %6352, float %6353, float %6351
  %6355 = fsub fast float %6354, %6342
  %6356 = fdiv fast float %6355, %6339
  %6357 = fdiv fast float %6346, %6355
  %6358 = fmul fast float %6356, 5.000000e-01
  %6359 = fmul fast float %6357, 2.000000e+00
  %6360 = select i1 %6352, float %6358, float %6359
  %6361 = select i1 %6352, float %6359, float %6358
  %6362 = call float @dx.op.binary.f32(i32 35, float %6360, float %6361)  ; FMax(a,b)
  %6363 = call float @dx.op.binary.f32(i32 36, float %6360, float %6361)  ; FMin(a,b)
  %6364 = fcmp fast ogt float %6321, %6362
  %6365 = fsub fast float %6321, %6363
  %6366 = fsub fast float %6321, %6362
  %6367 = fsub fast float %6362, %6363
  %6368 = select i1 %6364, float %6366, float %6367
  %6369 = fmul float %6365, %6368
  %6370 = select i1 %6364, float %6363, float %6321
  %6371 = fcmp fast ogt float %6321, %6363
  %6372 = fmul fast float %6370, %6362
  %6373 = fadd fast float %6370, %6362
  %6374 = fmul fast float %6373, %6156
  %6375 = fadd fast float %6372, %6157
  %6376 = fsub fast float %6375, %6374
  %6377 = fdiv fast float %6376, %6369
  %6378 = select i1 %6371, float %6377, float 0.000000e+00
  %6379 = fsub fast float 1.000000e+00, %6378
  %6380 = select i1 %6364, float %6379, float %6378
  %6381 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6383 = fmul fast float %6382, %6381
  %6384 = fsub fast float 1.000000e+00, %6383
  br label %6385

; <label>:6385                                    ; preds = %6314, %6026, %5991, %5987, %5953
  %6386 = phi float [ 1.000000e+00, %5953 ], [ %6384, %6314 ], [ 1.000000e+00, %5991 ], [ 1.000000e+00, %6026 ], [ 1.000000e+00, %5987 ]
  %6387 = fcmp fast ogt float %5983, 0.000000e+00
  br i1 %6387, label %6388, label %6394, !dx.controlflow.hints !96

; <label>:6388                                    ; preds = %6385
  %6389 = fadd fast float %5896, %5870
  %6390 = call float @dx.op.binary.f32(i32 35, float %6389, float 0.000000e+00)  ; FMax(a,b)
  %6391 = fadd fast float %6390, 0x3F10000000000000
  %6392 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5885, float %5886, float undef, float undef, i32 0, i32 0, i32 undef, float %6391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  br label %6394

; <label>:6394                                    ; preds = %6388, %6385
  %6395 = phi float [ %6393, %6388 ], [ 1.000000e+00, %6385 ]
  %6396 = fcmp fast ogt float %5981, 0.000000e+00
  br i1 %6396, label %6397, label %6403, !dx.controlflow.hints !97

; <label>:6397                                    ; preds = %6394
  %6398 = fadd fast float %5926, %5870
  %6399 = call float @dx.op.binary.f32(i32 35, float %6398, float 0.000000e+00)  ; FMax(a,b)
  %6400 = fadd fast float %6399, 0x3F10000000000000
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5877, float %5878, float undef, float undef, i32 0, i32 0, i32 undef, float %6400)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  br label %6403

; <label>:6403                                    ; preds = %6397, %6394
  %6404 = phi float [ %6402, %6397 ], [ 1.000000e+00, %6394 ]
  %6405 = fcmp fast ogt float %5980, 0.000000e+00
  br i1 %6405, label %6406, label %6413, !dx.controlflow.hints !98

; <label>:6406                                    ; preds = %6403
  %6407 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %6408 = fadd fast float %6407, %5870
  %6409 = call float @dx.op.binary.f32(i32 35, float %6408, float 0.000000e+00)  ; FMax(a,b)
  %6410 = fadd fast float %6409, 0x3F10000000000000
  %6411 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5862, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float %6410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  br label %6413

; <label>:6413                                    ; preds = %6406, %6403
  %6414 = phi float [ %6412, %6406 ], [ 1.000000e+00, %6403 ]
  %6415 = fsub fast float %6395, %6386
  %6416 = fmul fast float %6415, %5924
  %6417 = fadd fast float %6416, %6386
  %6418 = fsub fast float %6404, %6417
  %6419 = fmul fast float %6418, %5954
  %6420 = fadd fast float %6419, %6417
  %6421 = fsub fast float %6414, %6420
  %6422 = fmul fast float %6421, %5980
  %6423 = fadd fast float %6422, %6420
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6426 = fcmp fast ogt float %6425, 0.000000e+00
  br i1 %6426, label %6427, label %6467, !dx.controlflow.hints !99

; <label>:6427                                    ; preds = %6413
  %6428 = fcmp fast ugt float %6425, 0.000000e+00
  br i1 %6428, label %6429, label %6464

; <label>:6429                                    ; preds = %6427
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6434 = extractvalue %dx.types.CBufRet.f32 %6430, 3
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6439 = extractvalue %dx.types.CBufRet.f32 %6435, 3
  %6440 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6446 = fadd fast float %6443, %5839
  %6447 = fadd fast float %6444, %5840
  %6448 = fadd fast float %6445, %5841
  %6449 = fmul fast float %6446, %6431
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6432, float %6447, float %6449)  ; FMad(a,b,c)
  %6451 = call float @dx.op.tertiary.f32(i32 46, float %6433, float %6448, float %6450)  ; FMad(a,b,c)
  %6452 = fadd fast float %6451, %6434
  %6453 = fmul fast float %6446, %6436
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6437, float %6447, float %6453)  ; FMad(a,b,c)
  %6455 = call float @dx.op.tertiary.f32(i32 46, float %6438, float %6448, float %6454)  ; FMad(a,b,c)
  %6456 = fadd fast float %6455, %6439
  %6457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6452, float %6456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = fmul fast float %6458, %6441
  %6460 = fadd fast float %6459, %6440
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = fmul fast float %6461, %6425
  %6463 = fsub fast float 1.000000e+00, %6462
  br label %6464

; <label>:6464                                    ; preds = %6429, %6427
  %6465 = phi float [ %6463, %6429 ], [ 1.000000e+00, %6427 ]
  %6466 = fmul fast float %6465, %6423
  br label %6467

; <label>:6467                                    ; preds = %6464, %6413, %5819
  %6468 = phi float [ 1.000000e+00, %5819 ], [ %6466, %6464 ], [ %6423, %6413 ]
  %6469 = call float @dx.op.binary.f32(i32 36, float %6468, float %6468)  ; FMin(a,b)
  %6470 = call float @dx.op.binary.f32(i32 36, float %6468, float %6469)  ; FMin(a,b)
  %6471 = fcmp fast ogt float %6470, 0.000000e+00
  br i1 %6471, label %6472, label %6633, !dx.controlflow.hints !100

; <label>:6472                                    ; preds = %6467
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6476 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6477 = extractvalue %dx.types.CBufRet.f32 %6473, 3
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6488 = fmul fast float %6474, %5839
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %6475, float %6488)  ; FMad(a,b,c)
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6476, float %6489)  ; FMad(a,b,c)
  %6491 = fadd fast float %6490, %6477
  %6492 = fmul fast float %6479, %5839
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %6480, float %6492)  ; FMad(a,b,c)
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6481, float %6493)  ; FMad(a,b,c)
  %6495 = fadd fast float %6494, %6482
  %6496 = fmul fast float %6484, %5839
  %6497 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %6485, float %6496)  ; FMad(a,b,c)
  %6498 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6486, float %6497)  ; FMad(a,b,c)
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 3
  %6503 = fmul fast float %6502, %6491
  %6504 = fmul fast float %6502, %6495
  %6505 = fadd fast float %6503, %6500
  %6506 = fadd fast float %6504, %6501
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = fsub fast float %6505, %6508
  %6511 = fsub fast float %6506, %6509
  %6512 = fcmp fast olt float %6510, 0.000000e+00
  %6513 = fcmp fast olt float %6511, 0.000000e+00
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6519 = select i1 %6512, float %6515, float %6517
  %6520 = select i1 %6513, float %6516, float %6518
  %6521 = fmul fast float %6519, %6510
  %6522 = fmul fast float %6520, %6511
  %6523 = call float @dx.op.unary.f32(i32 6, float %6521)  ; FAbs(value)
  %6524 = call float @dx.op.unary.f32(i32 6, float %6522)  ; FAbs(value)
  %6525 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %6526 = call float @dx.op.binary.f32(i32 35, float %6523, float %6524)  ; FMax(a,b)
  %6527 = fsub fast float %6525, %6526
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6529 = fcmp fast ogt float %6528, 0.000000e+00
  br i1 %6529, label %6530, label %6571, !dx.controlflow.hints !101

; <label>:6530                                    ; preds = %6472
  %6531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6505, float %6506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6533 = fcmp fast ogt float %6532, 0.000000e+00
  br i1 %6533, label %6534, label %6566

; <label>:6534                                    ; preds = %6530
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6505, float %6506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.ResRet.f32 %6535, 2
  %6539 = extractvalue %dx.types.ResRet.f32 %6535, 3
  %6540 = fsub fast float 1.000000e+00, %6487
  %6541 = fsub fast float %6540, %6498
  %6542 = fmul fast float %6541, 0x400921FB60000000
  %6543 = fadd fast float %6542, 0x3FF921FB60000000
  %6544 = call float @dx.op.unary.f32(i32 13, float %6543)  ; Sin(value)
  %6545 = fadd fast float %6544, -1.000000e+00
  %6546 = fmul fast float %6545, 0x3FD45F3060000000
  %6547 = fmul fast float %6541, 0x401921FB60000000
  %6548 = fadd fast float %6547, 0x400921FB60000000
  %6549 = call float @dx.op.unary.f32(i32 13, float %6548)  ; Sin(value)
  %6550 = fadd fast float %6549, 0x3E7777A5C0000000
  %6551 = fmul fast float %6550, 0x3FC45F3060000000
  %6552 = fmul fast float %6541, 0x4022D97C80000000
  %6553 = fadd fast float %6552, 0x4012D97C80000000
  %6554 = call float @dx.op.unary.f32(i32 13, float %6553)  ; Sin(value)
  %6555 = fadd fast float %6554, 1.000000e+00
  %6556 = fmul fast float %6555, 0x3FBB2995E0000000
  %6557 = fmul fast float %6541, 0x402921FB60000000
  %6558 = fadd fast float %6557, 0x401921FB60000000
  %6559 = call float @dx.op.unary.f32(i32 13, float %6558)  ; Sin(value)
  %6560 = fadd fast float %6559, 0xBE8777A5C0000000
  %6561 = fmul fast float %6560, 0x3FB45F3060000000
  %6562 = call float @dx.op.dot4.f32(i32 56, float %6536, float %6537, float %6538, float %6539, float %6546, float %6551, float %6556, float %6561)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6563 = fmul fast float %6562, 0xBFF7154760000000
  %6564 = call float @dx.op.unary.f32(i32 21, float %6563)  ; Exp(value)
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  br label %6566

; <label>:6566                                    ; preds = %6534, %6530
  %6567 = phi float [ %6565, %6534 ], [ 1.000000e+00, %6530 ]
  %6568 = fadd fast float %6567, -1.000000e+00
  %6569 = fmul fast float %6568, %6528
  %6570 = fadd fast float %6569, 1.000000e+00
  br label %6571

; <label>:6571                                    ; preds = %6566, %6472
  %6572 = phi float [ %6570, %6566 ], [ 1.000000e+00, %6472 ]
  %6573 = fmul fast float %6572, %6468
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = fadd fast float %6575, %142
  %6579 = fadd fast float %6576, %143
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6582 = fsub fast float -0.000000e+00, %6578
  %6583 = fsub fast float -0.000000e+00, %6579
  %6584 = fsub fast float -0.000000e+00, %144
  %6585 = fsub fast float %6584, %6577
  %6586 = fadd fast float %6585, %6581
  %6587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6582, float %6583, float %6586)  ; Dot3(ax,ay,az,bx,by,bz)
  %6588 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5820, float %5821, float %5822)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = fdiv fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6589, %6587
  %6591 = fmul fast float %5820, %6590
  %6592 = fmul fast float %5821, %6590
  %6593 = fadd fast float %6591, %6578
  %6594 = fadd fast float %6592, %6579
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = fsub fast float %6593, %6596
  %6599 = fsub fast float %6594, %6597
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6603 = fmul fast float %6598, %6601
  %6604 = fmul fast float %6599, %6602
  %6605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.i32 %6605, 3
  %6607 = icmp eq i32 %6606, 0
  br i1 %6607, label %6613, label %6608

; <label>:6608                                    ; preds = %6571
  %6609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6603, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  br label %6618

; <label>:6613                                    ; preds = %6571
  %6614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6603, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  br label %6618

; <label>:6618                                    ; preds = %6613, %6608
  %6619 = phi float [ %6610, %6608 ], [ %6615, %6613 ]
  %6620 = phi float [ %6611, %6608 ], [ %6616, %6613 ]
  %6621 = phi float [ %6612, %6608 ], [ %6617, %6613 ]
  %6622 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6623 = fmul fast float %6622, %6619
  %6624 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6625 = fsub fast float %6590, %6624
  %6626 = fsub fast float %6625, %6623
  %6627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6626)  ; FMax(a,b)
  %6628 = fmul fast float %6627, %6620
  %6629 = call float @dx.op.binary.f32(i32 36, float %6621, float %6628)  ; FMin(a,b)
  %6630 = fmul fast float %6629, 0xBFF7154760000000
  %6631 = call float @dx.op.unary.f32(i32 21, float %6630)  ; Exp(value)
  %6632 = fmul fast float %6573, %6631
  br label %6633

; <label>:6633                                    ; preds = %6618, %6467
  %6634 = phi float [ %6632, %6618 ], [ %6468, %6467 ]
  %6635 = call float @dx.op.binary.f32(i32 36, float %6634, float %6634)  ; FMin(a,b)
  %6636 = call float @dx.op.binary.f32(i32 36, float %6634, float %6635)  ; FMin(a,b)
  %6637 = fcmp fast ogt float %6636, 0.000000e+00
  br i1 %6637, label %6638, label %6948, !dx.controlflow.hints !102

; <label>:6638                                    ; preds = %6633
  %6639 = fmul fast float %6634, %5831
  %6640 = fmul fast float %6634, %5832
  %6641 = fmul fast float %6634, %5833
  %6642 = fsub fast float %5820, %5378
  %6643 = fsub fast float %5821, %5377
  %6644 = fsub fast float %5822, %5376
  %6645 = call float @dx.op.dot3.f32(i32 55, float %6642, float %6643, float %6644, float %6642, float %6643, float %6644)  ; Dot3(ax,ay,az,bx,by,bz)
  %6646 = call float @dx.op.unary.f32(i32 25, float %6645)  ; Rsqrt(value)
  %6647 = fmul fast float %6646, %6642
  %6648 = fmul fast float %6646, %6643
  %6649 = fmul fast float %6646, %6644
  %6650 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5374, float %5373, float %6647, float %6648, float %6649)  ; Dot3(ax,ay,az,bx,by,bz)
  %6652 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6653 = fmul fast float %6652, %6652
  %6654 = fmul fast float %6653, %5405
  %6655 = call float @dx.op.unary.f32(i32 7, float %6654)  ; Saturate(value)
  %6656 = fmul fast float %6655, %6652
  %6657 = call float @dx.op.dot3.f32(i32 55, float %5385, float %5386, float %5387, float %6647, float %6648, float %6649)  ; Dot3(ax,ay,az,bx,by,bz)
  %6658 = fmul fast float %6657, %6657
  %6659 = call float @dx.op.unary.f32(i32 6, float %6650)  ; FAbs(value)
  %6660 = call float @dx.op.binary.f32(i32 35, float %5788, float 0x3F847AE140000000)  ; FMax(a,b)
  %6661 = fmul fast float %6660, %6660
  %6662 = fmul fast float %6661, %6661
  %6663 = fsub fast float 1.000000e+00, %6662
  %6664 = fmul fast float %5392, %5392
  %6665 = fmul fast float %6664, %6663
  %6666 = fadd fast float %6665, %6662
  %6667 = bitcast float %6666 to i32
  %6668 = ashr i32 %6667, 1
  %6669 = add nsw i32 %6668, 532487669
  %6670 = bitcast i32 %6669 to float
  %6671 = fadd fast float %6670, %5392
  %6672 = fmul fast float %6662, %6658
  %6673 = fsub fast float 1.000000e+00, %6658
  %6674 = fadd fast float %6673, %6672
  %6675 = fmul fast float %6659, %6659
  %6676 = fmul fast float %6675, %6663
  %6677 = fadd fast float %6676, %6662
  %6678 = bitcast float %6677 to i32
  %6679 = ashr i32 %6678, 1
  %6680 = add nsw i32 %6679, 532487669
  %6681 = bitcast i32 %6680 to float
  %6682 = fadd fast float %6681, %6659
  %6683 = fmul fast float %6674, %6674
  %6684 = fmul fast float %6683, %6671
  %6685 = fmul fast float %6684, %6682
  %6686 = fdiv fast float 0x3FF0A00000000000, %6685
  %6687 = fmul fast float %6686, %6662
  %6688 = fmul fast float %5650, 0x3FF9999980000000
  %6689 = fsub fast float 5.000000e+00, %6688
  %6690 = call float @dx.op.unary.f32(i32 6, float %6651)  ; FAbs(value)
  %6691 = fsub fast float 1.000000e+00, %6690
  %6692 = fmul fast float %5650, 0x41D9660740000000
  %6693 = fadd fast float %6692, 0xC1EFBF8940000000
  %6694 = bitcast float %6691 to i32
  %6695 = sitofp i32 %6694 to float
  %6696 = fmul fast float %6695, %6689
  %6697 = fadd fast float %6693, %6696
  %6698 = fptosi float %6697 to i32
  %6699 = bitcast i32 %6698 to float
  %6700 = fsub fast float 1.000000e+00, %5382
  %6701 = fsub fast float 1.000000e+00, %5383
  %6702 = fsub fast float 1.000000e+00, %5390
  %6703 = fmul fast float %6699, %6700
  %6704 = fmul fast float %6699, %6701
  %6705 = fmul fast float %6699, %6702
  %6706 = fadd fast float %6703, %5382
  %6707 = fadd fast float %6704, %5383
  %6708 = fadd fast float %6705, %5390
  br i1 %5673, label %6709, label %6732

; <label>:6709                                    ; preds = %6638
  %6710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6711 = extractvalue %dx.types.ResRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.ResRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.ResRet.f32 %6710, 2
  %6714 = fadd fast float %6711, -5.000000e-01
  %6715 = fadd fast float %6712, -5.000000e-01
  %6716 = fadd fast float %6713, -5.000000e-01
  %6717 = fmul fast float %5382, 4.000000e+00
  %6718 = fmul fast float %6717, %6700
  %6719 = fmul fast float %6718, %6714
  %6720 = fmul fast float %5383, 4.000000e+00
  %6721 = fmul fast float %6720, %6701
  %6722 = fmul fast float %6721, %6715
  %6723 = fmul fast float %5390, 4.000000e+00
  %6724 = fmul fast float %6723, %6702
  %6725 = fmul fast float %6724, %6716
  %6726 = fadd fast float %6719, %6706
  %6727 = fadd fast float %6722, %6707
  %6728 = fadd fast float %6725, %6708
  %6729 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  %6730 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6731 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  br label %6732

; <label>:6732                                    ; preds = %6709, %6638
  %6733 = phi float [ %6729, %6709 ], [ %6706, %6638 ]
  %6734 = phi float [ %6730, %6709 ], [ %6707, %6638 ]
  %6735 = phi float [ %6731, %6709 ], [ %6708, %6638 ]
  %6736 = fmul fast float %6650, 9.843750e-01
  %6737 = fadd fast float %6736, 7.812500e-03
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6737, float %5654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = extractvalue %dx.types.ResRet.f32 %6738, 3
  %6743 = fsub fast float %6741, %6739
  %6744 = fsub fast float %6742, %6740
  %6745 = fmul fast float %6743, %5660
  %6746 = fmul fast float %6744, %5660
  %6747 = fadd fast float %6745, %6739
  %6748 = fadd fast float %6746, %6740
  %6749 = fmul fast float %6747, %5382
  %6750 = fmul fast float %6747, %5383
  %6751 = fmul fast float %6747, %5390
  %6752 = fadd fast float %6749, %6748
  %6753 = fadd fast float %6750, %6748
  %6754 = fadd fast float %6751, %6748
  br i1 %5673, label %6755, label %6778

; <label>:6755                                    ; preds = %6732
  %6756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6757 = extractvalue %dx.types.ResRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.ResRet.f32 %6756, 1
  %6759 = extractvalue %dx.types.ResRet.f32 %6756, 2
  %6760 = fadd fast float %6757, -5.000000e-01
  %6761 = fadd fast float %6758, -5.000000e-01
  %6762 = fadd fast float %6759, -5.000000e-01
  %6763 = fmul fast float %5382, 4.000000e+00
  %6764 = fmul fast float %6763, %6700
  %6765 = fmul fast float %6764, %6760
  %6766 = fmul fast float %5383, 4.000000e+00
  %6767 = fmul fast float %6766, %6701
  %6768 = fmul fast float %6767, %6761
  %6769 = fmul fast float %5390, 4.000000e+00
  %6770 = fmul fast float %6769, %6702
  %6771 = fmul fast float %6770, %6762
  %6772 = fadd fast float %6765, %6752
  %6773 = fadd fast float %6768, %6753
  %6774 = fadd fast float %6771, %6754
  %6775 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6776 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6777 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  br label %6778

; <label>:6778                                    ; preds = %6755, %6732
  %6779 = phi float [ %6775, %6755 ], [ %6752, %6732 ]
  %6780 = phi float [ %6776, %6755 ], [ %6753, %6732 ]
  %6781 = phi float [ %6777, %6755 ], [ %6754, %6732 ]
  %6782 = call float @dx.op.binary.f32(i32 35, float %6780, float %6781)  ; FMax(a,b)
  %6783 = call float @dx.op.binary.f32(i32 35, float %6779, float %6782)  ; FMax(a,b)
  %6784 = fsub fast float 1.000000e+00, %6783
  %6785 = call float @dx.op.binary.f32(i32 35, float %6659, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6786 = fdiv fast float %4393, %6785
  %6787 = fmul fast float %5728, %6786
  %6788 = fmul fast float %5730, %6786
  %6789 = fmul fast float %5732, %6786
  %6790 = call float @dx.op.unary.f32(i32 21, float %6787)  ; Exp(value)
  %6791 = call float @dx.op.unary.f32(i32 21, float %6788)  ; Exp(value)
  %6792 = call float @dx.op.unary.f32(i32 21, float %6789)  ; Exp(value)
  %6793 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6794 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6795 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6796 = select i1 %5725, float %6793, float 0.000000e+00
  %6797 = select i1 %5726, float %6794, float 0.000000e+00
  %6798 = select i1 %5727, float %6795, float 0.000000e+00
  %6799 = fsub fast float -0.000000e+00, %5385
  %6800 = fsub fast float -0.000000e+00, %5386
  %6801 = fsub fast float -0.000000e+00, %5387
  %6802 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %6799, float %6800, float %6801)  ; Dot3(ax,ay,az,bx,by,bz)
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = fmul fast float %6803, 9.843750e-01
  %6805 = fadd fast float %6804, 7.812500e-03
  %6806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6805, float %5654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6807 = extractvalue %dx.types.ResRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.ResRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.ResRet.f32 %6806, 2
  %6810 = extractvalue %dx.types.ResRet.f32 %6806, 3
  %6811 = fsub fast float %6809, %6807
  %6812 = fsub fast float %6810, %6808
  %6813 = fmul fast float %6811, %5660
  %6814 = fmul fast float %6812, %5660
  %6815 = fadd fast float %6813, %6807
  %6816 = fadd fast float %6814, %6808
  %6817 = fmul fast float %6815, %5382
  %6818 = fmul fast float %6815, %5383
  %6819 = fmul fast float %6815, %5390
  %6820 = fadd fast float %6817, %6816
  %6821 = fadd fast float %6818, %6816
  %6822 = fadd fast float %6819, %6816
  br i1 %5673, label %6823, label %6846

; <label>:6823                                    ; preds = %6778
  %6824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6825 = extractvalue %dx.types.ResRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.ResRet.f32 %6824, 1
  %6827 = extractvalue %dx.types.ResRet.f32 %6824, 2
  %6828 = fadd fast float %6825, -5.000000e-01
  %6829 = fadd fast float %6826, -5.000000e-01
  %6830 = fadd fast float %6827, -5.000000e-01
  %6831 = fmul fast float %5382, 4.000000e+00
  %6832 = fmul fast float %6831, %6700
  %6833 = fmul fast float %6832, %6828
  %6834 = fmul fast float %5383, 4.000000e+00
  %6835 = fmul fast float %6834, %6701
  %6836 = fmul fast float %6835, %6829
  %6837 = fmul fast float %5390, 4.000000e+00
  %6838 = fmul fast float %6837, %6702
  %6839 = fmul fast float %6838, %6830
  %6840 = fadd fast float %6833, %6820
  %6841 = fadd fast float %6836, %6821
  %6842 = fadd fast float %6839, %6822
  %6843 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6844 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6845 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  br label %6846

; <label>:6846                                    ; preds = %6823, %6778
  %6847 = phi float [ %6843, %6823 ], [ %6820, %6778 ]
  %6848 = phi float [ %6844, %6823 ], [ %6821, %6778 ]
  %6849 = phi float [ %6845, %6823 ], [ %6822, %6778 ]
  %6850 = call float @dx.op.binary.f32(i32 35, float %6848, float %6849)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6847, float %6850)  ; FMax(a,b)
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = fmul fast float %5788, %5793
  %6854 = fadd fast float %5795, %6853
  %6855 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6856 = fsub fast float %5820, %5398
  %6857 = fsub fast float %5821, %5399
  %6858 = fsub fast float %5822, %5400
  %6859 = call float @dx.op.dot3.f32(i32 55, float %6856, float %6857, float %6858, float %6856, float %6857, float %6858)  ; Dot3(ax,ay,az,bx,by,bz)
  %6860 = call float @dx.op.unary.f32(i32 25, float %6859)  ; Rsqrt(value)
  %6861 = fmul fast float %6860, %6856
  %6862 = fmul fast float %6860, %6857
  %6863 = fmul fast float %6860, %6858
  %6864 = call float @dx.op.dot3.f32(i32 55, float %6799, float %6800, float %6801, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = fmul fast float %6864, %6864
  %6866 = call float @dx.op.unary.f32(i32 6, float %6803)  ; FAbs(value)
  %6867 = call float @dx.op.binary.f32(i32 35, float %6855, float 0x3F847AE140000000)  ; FMax(a,b)
  %6868 = fmul fast float %6867, %6867
  %6869 = fmul fast float %6868, %6868
  %6870 = fsub fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6664, %6870
  %6872 = fadd fast float %6871, %6869
  %6873 = bitcast float %6872 to i32
  %6874 = ashr i32 %6873, 1
  %6875 = add nsw i32 %6874, 532487669
  %6876 = bitcast i32 %6875 to float
  %6877 = fadd fast float %6876, %5392
  %6878 = fmul fast float %6869, %6865
  %6879 = fsub fast float 1.000000e+00, %6865
  %6880 = fadd fast float %6879, %6878
  %6881 = fmul fast float %6866, %6866
  %6882 = fmul fast float %6881, %6870
  %6883 = fadd fast float %6882, %6869
  %6884 = bitcast float %6883 to i32
  %6885 = ashr i32 %6884, 1
  %6886 = add nsw i32 %6885, 532487669
  %6887 = bitcast i32 %6886 to float
  %6888 = fadd fast float %6887, %6866
  %6889 = fmul fast float %6880, %6880
  %6890 = fmul fast float %6889, %6877
  %6891 = fmul fast float %6890, %6888
  %6892 = fdiv fast float 0x3FF0A00000000000, %6891
  %6893 = fmul fast float %6892, %6869
  %6894 = fmul fast float %6803, %6796
  %6895 = fmul fast float %6803, %6797
  %6896 = fmul fast float %6803, %6798
  %6897 = fmul fast float %6894, %6852
  %6898 = fmul fast float %6897, %6893
  %6899 = fmul fast float %6895, %6852
  %6900 = fmul fast float %6899, %6893
  %6901 = fmul fast float %6896, %6852
  %6902 = fmul fast float %6901, %6893
  %6903 = fmul fast float %6733, %6687
  %6904 = fmul fast float %6734, %6687
  %6905 = fmul fast float %6735, %6687
  %6906 = fsub fast float 1.000000e+00, %6651
  %6907 = bitcast float %6906 to i32
  %6908 = sitofp i32 %6907 to float
  %6909 = fmul fast float %6908, 5.000000e+00
  %6910 = fadd fast float %6909, 0xC1EFBF8940000000
  %6911 = fptosi float %6910 to i32
  %6912 = bitcast i32 %6911 to float
  %6913 = fmul fast float %6912, %5040
  %6914 = fmul fast float %6784, %6913
  %6915 = fmul fast float %6914, %5720
  %6916 = fmul fast float %6914, %5721
  %6917 = fmul fast float %6914, %5722
  %6918 = fadd fast float %6915, %6903
  %6919 = fadd fast float %6916, %6904
  %6920 = fadd fast float %6917, %6905
  %6921 = fmul fast float %6918, %6656
  %6922 = fmul fast float %6919, %6656
  %6923 = fmul fast float %6920, %6656
  %6924 = fmul fast float %6656, %6639
  %6925 = fmul fast float %6924, %6784
  %6926 = fmul fast float %6656, %6640
  %6927 = fmul fast float %6926, %6784
  %6928 = fmul fast float %6656, %6641
  %6929 = fmul fast float %6928, %6784
  %6930 = fadd fast float %6921, %6898
  %6931 = fadd fast float %6922, %6900
  %6932 = fadd fast float %6923, %6902
  %6933 = fmul fast float %6930, %6639
  %6934 = fmul fast float %6931, %6640
  %6935 = fmul fast float %6932, %6641
  %6936 = fadd fast float %6925, %5810
  %6937 = fmul fast float %6936, %5036
  %6938 = fadd fast float %6927, %5812
  %6939 = fmul fast float %6938, %5036
  %6940 = fadd fast float %6929, %5814
  %6941 = fmul fast float %6940, %5036
  %6942 = fadd fast float %6933, %5773
  %6943 = fmul fast float %6942, %5036
  %6944 = fadd fast float %6934, %5776
  %6945 = fmul fast float %6944, %5036
  %6946 = fadd fast float %6935, %5779
  %6947 = fmul fast float %6946, %5036
  br label %6948

; <label>:6948                                    ; preds = %6846, %6633, %5700
  %6949 = phi float [ %5774, %5700 ], [ %5774, %6633 ], [ %6943, %6846 ]
  %6950 = phi float [ %5777, %5700 ], [ %5777, %6633 ], [ %6945, %6846 ]
  %6951 = phi float [ %5780, %5700 ], [ %5780, %6633 ], [ %6947, %6846 ]
  %6952 = phi float [ %5811, %5700 ], [ %5811, %6633 ], [ %6937, %6846 ]
  %6953 = phi float [ %5813, %5700 ], [ %5813, %6633 ], [ %6939, %6846 ]
  %6954 = phi float [ %5815, %5700 ], [ %5815, %6633 ], [ %6941, %6846 ]
  %6955 = fmul fast float %5749, %5036
  %6956 = fmul fast float %5750, %5036
  %6957 = fmul fast float %5751, %5036
  %6958 = fadd fast float %6955, 1.000000e+00
  %6959 = fadd fast float %6956, 1.000000e+00
  %6960 = fadd fast float %6957, 1.000000e+00
  %6961 = call float @dx.op.dot3.f32(i32 55, float %6958, float %6959, float %6960, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 0
  %6965 = fmul fast float %6964, %5755
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6968 = fsub fast float 1.000000e+00, %5043
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = fadd fast float %6954, %5042
  %6971 = fmul fast float %6970, %5043
  %6972 = fmul fast float %6969, %6967
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 3
  %6975 = fmul fast float %6952, %5379
  %6976 = fmul fast float %6953, %5380
  %6977 = fmul fast float %6954, %5381
  %6978 = fcmp fast ogt float %78, %164
  %6979 = and i1 %6978, %5111
  %6980 = or i1 %5190, %6979
  %6981 = icmp eq i32 %5110, 2
  %6982 = fcmp fast ole float %78, %164
  %6983 = and i1 %6982, %6981
  %6984 = or i1 %6983, %6980
  br i1 %6979, label %6985, label %7242

; <label>:6985                                    ; preds = %6948
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 2
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6989 = fmul fast float %6987, %87
  %6990 = fmul fast float %6988, %88
  %6991 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6992 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6991, float %6992, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6994 = extractvalue %dx.types.ResRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.ResRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.ResRet.f32 %6993, 2
  %6997 = extractvalue %dx.types.ResRet.f32 %6993, 3
  %6998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6991, float %6992, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6999 = extractvalue %dx.types.ResRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.ResRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.ResRet.f32 %6998, 2
  %7002 = extractvalue %dx.types.ResRet.f32 %6998, 3
  %7003 = call float @dx.op.binary.f32(i32 35, float %6995, float %6996)  ; FMax(a,b)
  %7004 = call float @dx.op.binary.f32(i32 35, float %6994, float %7003)  ; FMax(a,b)
  %7005 = call float @dx.op.binary.f32(i32 35, float %7004, float %6997)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %7000, float %7001)  ; FMin(a,b)
  %7007 = call float @dx.op.binary.f32(i32 36, float %6999, float %7006)  ; FMin(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %7007, float %7002)  ; FMin(a,b)
  %7009 = fmul fast float %7005, 2.550000e+02
  %7010 = fadd fast float %7009, 0x3F70101020000000
  %7011 = fptoui float %7010 to i32
  %7012 = fmul fast float %7008, 2.550000e+02
  %7013 = fadd fast float %7012, 0x3F70101020000000
  %7014 = fptoui float %7013 to i32
  %7015 = icmp ult i32 %7011, %7014
  br i1 %7015, label %7016, label %7184

; <label>:7016                                    ; preds = %6985
  %7017 = fcmp fast ogt float %77, 9.843750e-01
  %7018 = fadd fast float %78, -4.000000e+00
  %7019 = select i1 %7017, float -4.000000e+00, float %7018
  %7020 = call float @dx.op.binary.f32(i32 35, float %7019, float 0.000000e+00)  ; FMax(a,b)
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = fadd fast float %7022, %7020
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = fmul fast float %7023, %7024
  %7026 = call float @dx.op.unary.f32(i32 23, float %7025)  ; Log(value)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7028 = fmul fast float %7027, %7026
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 2
  %7031 = fmul fast float %7028, %7030
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = uitofp i32 %7011 to float
  %7034 = uitofp i32 %7014 to float
  %7035 = fadd fast float %7033, 5.000000e-01
  %7036 = fadd fast float %7034, 5.000000e-01
  %7037 = fmul fast float %7030, %7035
  %7038 = fmul fast float %7030, %7036
  %7039 = fadd fast float %7037, 0x3F0FFB4800000000
  %7040 = fadd fast float %7038, 0xBF0FFB4800000000
  %7041 = call float @dx.op.binary.f32(i32 35, float %7032, float %7039)  ; FMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %7041, float %7040)  ; FMin(a,b)
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7047 = fmul fast float %7044, %7042
  %7048 = fadd fast float %7046, %7047
  %7049 = fadd fast float %7046, %7045
  %7050 = fsub fast float %7044, %7045
  %7051 = fadd fast float %7050, %7046
  %7052 = call float @dx.op.binary.f32(i32 35, float %7048, float %7049)  ; FMax(a,b)
  %7053 = call float @dx.op.binary.f32(i32 36, float %7052, float %7051)  ; FMin(a,b)
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %6991, float %6992, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.i32 %7058, 0
  %7060 = extractvalue %dx.types.CBufRet.i32 %7058, 1
  %7061 = uitofp i32 %7059 to float
  %7062 = uitofp i32 %7060 to float
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.CBufRet.f32 %7063, 1
  %7066 = fmul fast float %7061, %6991
  %7067 = fmul fast float %7062, %6992
  %7068 = fadd fast float %7066, -5.000000e-01
  %7069 = fadd fast float %7067, -5.000000e-01
  %7070 = call float @dx.op.unary.f32(i32 22, float %7068)  ; Frc(value)
  %7071 = call float @dx.op.unary.f32(i32 22, float %7069)  ; Frc(value)
  %7072 = fmul fast float %7070, %7070
  %7073 = fmul fast float %7072, %7070
  %7074 = fsub fast float 3.000000e+00, %7070
  %7075 = fmul fast float %7072, %7074
  %7076 = fmul fast float %7070, 3.000000e+00
  %7077 = fmul fast float %7073, 3.000000e+00
  %7078 = fmul fast float %7072, 6.000000e+00
  %7079 = fsub fast float %7077, %7078
  %7080 = fadd fast float %7079, 4.000000e+00
  %7081 = fmul fast float %7080, 0x3FC5555560000000
  %7082 = fmul fast float %7073, -3.000000e+00
  %7083 = fadd fast float %7072, %7070
  %7084 = fmul fast float %7083, 3.000000e+00
  %7085 = fadd fast float %7082, 1.000000e+00
  %7086 = fadd fast float %7085, %7084
  %7087 = fmul fast float %7073, 0x3FC5555560000000
  %7088 = fmul fast float %7071, %7071
  %7089 = fmul fast float %7088, %7071
  %7090 = fsub fast float 3.000000e+00, %7071
  %7091 = fmul fast float %7088, %7090
  %7092 = fmul fast float %7071, 3.000000e+00
  %7093 = fmul fast float %7089, 3.000000e+00
  %7094 = fmul fast float %7088, 6.000000e+00
  %7095 = fsub fast float %7093, %7094
  %7096 = fadd fast float %7095, 4.000000e+00
  %7097 = fmul fast float %7096, 0x3FC5555560000000
  %7098 = fmul fast float %7089, -3.000000e+00
  %7099 = fadd fast float %7088, %7071
  %7100 = fmul fast float %7099, 3.000000e+00
  %7101 = fadd fast float %7098, 1.000000e+00
  %7102 = fadd fast float %7101, %7100
  %7103 = fmul fast float %7089, 0x3FC5555560000000
  %7104 = fadd fast float %7070, 1.000000e+00
  %7105 = fsub fast float 1.000000e+00, %7076
  %7106 = fadd fast float %7105, %7075
  %7107 = fadd fast float %7106, %7080
  %7108 = fmul fast float %7107, 0x3FC5555560000000
  %7109 = fdiv fast float %7081, %7108
  %7110 = fsub fast float %7104, %7109
  %7111 = fsub fast float 1.000000e+00, %7070
  %7112 = fadd fast float %7086, %7073
  %7113 = fmul fast float %7112, 0x3FC5555560000000
  %7114 = fdiv fast float %7087, %7113
  %7115 = fadd fast float %7111, %7114
  %7116 = fadd fast float %7071, 1.000000e+00
  %7117 = fsub fast float 1.000000e+00, %7092
  %7118 = fadd fast float %7117, %7091
  %7119 = fadd fast float %7118, %7096
  %7120 = fmul fast float %7119, 0x3FC5555560000000
  %7121 = fdiv fast float %7097, %7120
  %7122 = fsub fast float %7116, %7121
  %7123 = fsub fast float 1.000000e+00, %7071
  %7124 = fadd fast float %7102, %7089
  %7125 = fmul fast float %7124, 0x3FC5555560000000
  %7126 = fdiv fast float %7103, %7125
  %7127 = fadd fast float %7126, %7123
  %7128 = fmul fast float %7110, %7064
  %7129 = fsub fast float %6991, %7128
  %7130 = fmul fast float %7115, %7064
  %7131 = fadd fast float %7130, %6991
  %7132 = fmul fast float %7127, %7065
  %7133 = fadd fast float %7132, %6992
  %7134 = fmul fast float %7122, %7065
  %7135 = fsub fast float %6992, %7134
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7129, float %7135, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7131, float %7135, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7141 = extractvalue %dx.types.ResRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.ResRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.ResRet.f32 %7140, 2
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7129, float %7133, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7131, float %7133, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7152 = fsub fast float %7145, %7137
  %7153 = fsub fast float %7146, %7138
  %7154 = fsub fast float %7147, %7139
  %7155 = fmul fast float %7152, %7125
  %7156 = fmul fast float %7153, %7125
  %7157 = fmul fast float %7154, %7125
  %7158 = fadd fast float %7155, %7137
  %7159 = fadd fast float %7156, %7138
  %7160 = fadd fast float %7157, %7139
  %7161 = fsub fast float %7149, %7141
  %7162 = fsub fast float %7150, %7142
  %7163 = fsub fast float %7151, %7143
  %7164 = fmul fast float %7161, %7125
  %7165 = fmul fast float %7162, %7125
  %7166 = fmul fast float %7163, %7125
  %7167 = fsub fast float %7141, %7158
  %7168 = fadd fast float %7167, %7164
  %7169 = fsub fast float %7142, %7159
  %7170 = fadd fast float %7169, %7165
  %7171 = fsub fast float %7143, %7160
  %7172 = fadd fast float %7171, %7166
  %7173 = fmul fast float %7168, %7113
  %7174 = fmul fast float %7170, %7113
  %7175 = fmul fast float %7172, %7113
  %7176 = fadd fast float %7173, %7158
  %7177 = fadd fast float %7174, %7159
  %7178 = fadd fast float %7175, %7160
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7181 = fmul fast float %7176, %7180
  %7182 = fmul fast float %7177, %7180
  %7183 = fmul fast float %7178, %7180
  br label %7184

; <label>:7184                                    ; preds = %7016, %6985
  %7185 = phi float [ %7055, %7016 ], [ 1.000000e+00, %6985 ]
  %7186 = phi float [ %7056, %7016 ], [ 1.000000e+00, %6985 ]
  %7187 = phi float [ %7057, %7016 ], [ 1.000000e+00, %6985 ]
  %7188 = phi float [ %7181, %7016 ], [ 0.000000e+00, %6985 ]
  %7189 = phi float [ %7182, %7016 ], [ 0.000000e+00, %6985 ]
  %7190 = phi float [ %7183, %7016 ], [ 0.000000e+00, %6985 ]
  %7191 = fmul fast float %7188, %6962
  %7192 = fmul fast float %7189, %6962
  %7193 = fmul fast float %7190, %6962
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7185, float %7186, float %7187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = call float @dx.op.dot3.f32(i32 55, float %7191, float %7192, float %7193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7196 = select i1 %203, float %7194, float %7185
  %7197 = select i1 %203, float %7194, float %7186
  %7198 = select i1 %203, float 1.000000e+00, float %7187
  %7199 = select i1 %203, float %7195, float %7191
  %7200 = select i1 %203, float 0.000000e+00, float %7192
  %7201 = select i1 %203, float 0.000000e+00, float %7193
  %7202 = fmul fast float %7196, %6975
  %7203 = fmul fast float %7197, %6976
  %7204 = fmul fast float %7198, %6977
  %7205 = fadd fast float %7202, %7199
  %7206 = fadd fast float %7203, %7200
  %7207 = fadd fast float %7201, %7204
  %7208 = fmul fast float %7196, %6949
  %7209 = fmul fast float %7197, %6950
  %7210 = fmul fast float %7198, %6951
  %7211 = fmul fast float %112, %6987
  %7212 = fmul fast float %114, %6988
  %7213 = fsub fast float 1.000000e+00, %7211
  %7214 = fsub fast float 1.000000e+00, %7212
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7219 = fmul fast float %7213, %7216
  %7220 = fmul fast float %7213, %7217
  %7221 = fmul fast float %7213, %7218
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7226 = fmul fast float %7214, %7223
  %7227 = fmul fast float %7214, %7224
  %7228 = fmul fast float %7214, %7225
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7233 = fadd fast float %7226, %7230
  %7234 = fadd fast float %7233, %7219
  %7235 = fadd fast float %7227, %7231
  %7236 = fadd fast float %7235, %7220
  %7237 = fadd fast float %7228, %7232
  %7238 = fadd fast float %7237, %7221
  %7239 = fmul fast float %7234, %164
  %7240 = fmul fast float %7236, %164
  %7241 = fmul fast float %7238, %164
  br label %7242

; <label>:7242                                    ; preds = %7184, %6948
  %7243 = phi float [ %7239, %7184 ], [ %142, %6948 ]
  %7244 = phi float [ %7240, %7184 ], [ %143, %6948 ]
  %7245 = phi float [ %7241, %7184 ], [ %144, %6948 ]
  %7246 = phi float [ %164, %7184 ], [ %78, %6948 ]
  %7247 = phi float [ %7205, %7184 ], [ %6975, %6948 ]
  %7248 = phi float [ %7206, %7184 ], [ %6976, %6948 ]
  %7249 = phi float [ %7207, %7184 ], [ %6977, %6948 ]
  %7250 = phi float [ %7208, %7184 ], [ %6949, %6948 ]
  %7251 = phi float [ %7209, %7184 ], [ %6950, %6948 ]
  %7252 = phi float [ %7210, %7184 ], [ %6951, %6948 ]
  %7253 = phi float [ %7185, %7184 ], [ 1.000000e+00, %6948 ]
  br i1 %6984, label %8408, label %7254

; <label>:7254                                    ; preds = %7242
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7269 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7270, 3
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 3
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 3
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7282 = fcmp fast olt float %7281, -5.000000e-01
  %7283 = call float @dx.op.dot3.f32(i32 55, float %7243, float %7244, float %7245, float %7243, float %7244, float %7245)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = call float @dx.op.unary.f32(i32 25, float %7283)  ; Rsqrt(value)
  %7285 = fmul fast float %7284, %7283
  %7286 = fmul fast float %7284, %7243
  %7287 = fmul fast float %7284, %7244
  %7288 = fmul fast float %7284, %7245
  %7289 = fadd fast float %7285, %7259
  %7290 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7287, float %7288, float %7256, float %7257, float %7258)  ; Dot3(ax,ay,az,bx,by,bz)
  %7291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.i32 %7291, 1
  %7293 = and i32 %7292, 1
  %7294 = icmp ne i32 %7293, 0
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7297 = fcmp fast ogt float %7296, 0.000000e+00
  %7298 = and i1 %7294, %7297
  br i1 %7298, label %7299, label %7705, !dx.controlflow.hints !103

; <label>:7299                                    ; preds = %7254
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 3
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %7304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.f32 %7304, 2
  %7306 = fsub fast float %7303, %7305
  %7307 = and i32 %7292, 2
  %7308 = extractvalue %dx.types.CBufRet.i32 %7291, 0
  %7309 = call i32 @dx.op.binary.i32(i32 40, i32 %7308, i32 3)  ; UMin(a,b)
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7304, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7304, 1
  %7315 = fsub fast float %7311, %7313
  %7316 = fsub fast float %7312, %7314
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7319 = fcmp fast ogt float %7318, 0.000000e+00
  %7320 = fsub fast float -0.000000e+00, %7315
  %7321 = fsub fast float -0.000000e+00, %7316
  %7322 = call float @dx.op.dot2.f32(i32 54, float %7286, float %7287, float %7286, float %7287)  ; Dot2(ax,ay,bx,by)
  %7323 = call float @dx.op.dot2.f32(i32 54, float %7286, float %7287, float %7320, float %7321)  ; Dot2(ax,ay,bx,by)
  %7324 = fmul fast float %7323, 2.000000e+00
  %7325 = call float @dx.op.dot2.f32(i32 54, float %7320, float %7321, float %7320, float %7321)  ; Dot2(ax,ay,bx,by)
  %7326 = fmul fast float %7318, %7318
  %7327 = fsub fast float %7325, %7326
  %7328 = fmul fast float %7324, %7324
  %7329 = fmul fast float %7322, 4.000000e+00
  %7330 = fmul fast float %7329, %7327
  %7331 = fsub fast float %7328, %7330
  %7332 = fcmp fast ogt float %7331, 0.000000e+00
  br i1 %7332, label %7333, label %7348

; <label>:7333                                    ; preds = %7299
  %7334 = fcmp fast ogt float %7324, 0.000000e+00
  %7335 = call float @dx.op.unary.f32(i32 24, float %7331)  ; Sqrt(value)
  %7336 = fsub fast float -0.000000e+00, %7335
  %7337 = select i1 %7334, float %7335, float %7336
  %7338 = fadd fast float %7337, %7324
  %7339 = fmul float %7338, -5.000000e-01
  %7340 = fdiv fast float %7339, %7322
  %7341 = call float @dx.op.binary.f32(i32 35, float %7340, float 0.000000e+00)  ; FMax(a,b)
  %7342 = call float @dx.op.binary.f32(i32 36, float %7285, float %7341)  ; FMin(a,b)
  %7343 = fdiv fast float %7327, %7339
  %7344 = call float @dx.op.binary.f32(i32 35, float %7343, float 0.000000e+00)  ; FMax(a,b)
  %7345 = call float @dx.op.binary.f32(i32 36, float %7285, float %7344)  ; FMin(a,b)
  %7346 = call float @dx.op.binary.f32(i32 36, float %7342, float %7345)  ; FMin(a,b)
  %7347 = call float @dx.op.binary.f32(i32 35, float %7342, float %7345)  ; FMax(a,b)
  br label %7348

; <label>:7348                                    ; preds = %7333, %7299
  %7349 = phi float [ %7347, %7333 ], [ -1.000000e+00, %7299 ]
  %7350 = phi float [ %7346, %7333 ], [ -1.000000e+00, %7299 ]
  %7351 = phi i1 [ true, %7333 ], [ false, %7299 ]
  %7352 = and i1 %7319, %7351
  br i1 %7352, label %7353, label %7355

; <label>:7353                                    ; preds = %7348
  %7354 = fcmp fast oeq float %7350, %7349
  br i1 %7354, label %7658, label %7356

; <label>:7355                                    ; preds = %7348
  br i1 %7319, label %7658, label %7356

; <label>:7356                                    ; preds = %7355, %7353
  %7357 = phi float [ %7285, %7355 ], [ %7349, %7353 ]
  %7358 = phi float [ 0.000000e+00, %7355 ], [ %7350, %7353 ]
  %7359 = icmp ne i32 %7307, 0
  %7360 = fmul fast float %7357, %7288
  %7361 = fadd fast float %7360, %7301
  %7362 = fmul fast float %7361, %7357
  %7363 = select i1 %7359, float 0.000000e+00, float %7362
  %7364 = fcmp fast oeq float %7288, 0.000000e+00
  %7365 = fdiv fast float %7306, %7288
  %7366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7365)  ; FMax(a,b)
  %7367 = select i1 %7364, float %7357, float %7366
  %7368 = call float @dx.op.binary.f32(i32 36, float %7357, float %7367)  ; FMin(a,b)
  %7369 = fcmp fast ogt float %7288, 0.000000e+00
  %7370 = fcmp fast olt float %7306, 0.000000e+00
  br i1 %7369, label %7371, label %7428

; <label>:7371                                    ; preds = %7356
  %7372 = icmp eq i32 %7307, 0
  br i1 %7370, label %7373, label %7417

; <label>:7373                                    ; preds = %7371
  %7374 = select i1 %7372, float %7357, float 0.000000e+00
  %7375 = fsub fast float -0.000000e+00, %7374
  %7376 = call float @dx.op.unary.f32(i32 6, float %7375)  ; FAbs(value)
  %7377 = fmul fast float %7374, %7288
  %7378 = fadd fast float %7377, %7301
  %7379 = fmul fast float %7376, %7378
  %7380 = fsub fast float %7363, %7379
  %7381 = fsub fast float %7357, %7376
  %7382 = select i1 %7372, float %7381, float 0.000000e+00
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 0
  %7385 = extractvalue %dx.types.CBufRet.f32 %7383, 1
  %7386 = extractvalue %dx.types.CBufRet.f32 %7383, 2
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.CBufRet.f32 %7387, 3
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7394 = call float @dx.op.binary.f32(i32 36, float %7380, float %7393)  ; FMin(a,b)
  %7395 = fmul fast float %7391, %7382
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = fsub fast float %7388, %7384
  %7398 = fsub fast float %7389, %7385
  %7399 = fsub fast float %7390, %7386
  %7400 = fmul fast float %7396, %7397
  %7401 = fmul fast float %7396, %7398
  %7402 = fmul fast float %7396, %7399
  %7403 = fadd fast float %7400, %7384
  %7404 = fadd fast float %7401, %7385
  %7405 = fadd fast float %7402, %7386
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 0
  %7408 = extractvalue %dx.types.CBufRet.f32 %7406, 1
  %7409 = fadd fast float %7408, %7407
  %7410 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7406, 2
  %7412 = extractvalue %dx.types.CBufRet.f32 %7406, 3
  %7413 = fadd fast float %7412, %7411
  %7414 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7415 = fmul fast float %7410, %7394
  %7416 = fmul fast float %7415, %7414
  br label %7658

; <label>:7417                                    ; preds = %7371
  br i1 %7372, label %7418, label %7439

; <label>:7418                                    ; preds = %7417
  %7419 = call float @dx.op.binary.f32(i32 36, float %7368, float %7358)  ; FMin(a,b)
  %7420 = fsub fast float %7368, %7419
  %7421 = fsub fast float %7420, %7357
  %7422 = call float @dx.op.unary.f32(i32 6, float %7421)  ; FAbs(value)
  %7423 = fadd fast float %7420, %7357
  %7424 = fmul fast float %7423, %7288
  %7425 = fadd fast float %7424, %7301
  %7426 = fmul fast float %7425, %7422
  %7427 = fsub fast float %7363, %7426
  br label %7439

; <label>:7428                                    ; preds = %7356
  br i1 %7370, label %7429, label %7439

; <label>:7429                                    ; preds = %7428
  %7430 = call float @dx.op.binary.f32(i32 35, float %7358, float %7368)  ; FMax(a,b)
  %7431 = icmp eq i32 %7307, 0
  %7432 = select i1 %7431, float %7368, float 0.000000e+00
  %7433 = fsub fast float -0.000000e+00, %7432
  %7434 = call float @dx.op.unary.f32(i32 6, float %7433)  ; FAbs(value)
  %7435 = fmul fast float %7432, %7288
  %7436 = fadd fast float %7435, %7301
  %7437 = fmul fast float %7434, %7436
  %7438 = fsub fast float %7363, %7437
  br label %7439

; <label>:7439                                    ; preds = %7429, %7428, %7418, %7417
  %7440 = phi float [ %7358, %7417 ], [ %7358, %7418 ], [ %7430, %7429 ], [ %7358, %7428 ]
  %7441 = phi float [ 0.000000e+00, %7417 ], [ %7422, %7418 ], [ %7434, %7429 ], [ 0.000000e+00, %7428 ]
  %7442 = phi float [ %7363, %7417 ], [ %7427, %7418 ], [ %7438, %7429 ], [ %7363, %7428 ]
  %7443 = phi float [ %7368, %7417 ], [ %7368, %7418 ], [ %7357, %7429 ], [ %7357, %7428 ]
  %7444 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7444, align 4, !tbaa !104, !noalias !106
  %7445 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7445, align 4, !tbaa !104, !noalias !106
  %7446 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7446, align 4, !tbaa !104, !noalias !106
  %7447 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7447, align 4, !tbaa !104, !noalias !106
  %7448 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7448, align 4, !tbaa !104, !noalias !106
  %7449 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7449, align 4, !tbaa !104, !noalias !106
  %7450 = icmp sgt i32 %7309, 0
  br i1 %7450, label %7451, label %7512

; <label>:7451                                    ; preds = %7439
  br label %7452

; <label>:7452                                    ; preds = %7501, %7451
  %7453 = phi i32 [ %7502, %7501 ], [ 0, %7451 ]
  %7454 = phi i32 [ %7503, %7501 ], [ 0, %7451 ]
  %7455 = add nuw i32 %7454, 171
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7455)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = fsub fast float %7457, %7460
  %7463 = fsub fast float %7458, %7461
  %7464 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7465 = fsub fast float -0.000000e+00, %7462
  %7466 = fsub fast float -0.000000e+00, %7463
  %7467 = call float @dx.op.dot2.f32(i32 54, float %7286, float %7287, float %7465, float %7466)  ; Dot2(ax,ay,bx,by)
  %7468 = fmul fast float %7467, 2.000000e+00
  %7469 = call float @dx.op.dot2.f32(i32 54, float %7465, float %7466, float %7465, float %7466)  ; Dot2(ax,ay,bx,by)
  %7470 = fmul fast float %7464, %7464
  %7471 = fsub fast float %7469, %7470
  %7472 = fmul fast float %7468, %7468
  %7473 = fmul fast float %7329, %7471
  %7474 = fsub fast float %7472, %7473
  %7475 = fcmp fast ogt float %7474, 0.000000e+00
  br i1 %7475, label %7476, label %7491

; <label>:7476                                    ; preds = %7452
  %7477 = fcmp fast ogt float %7468, 0.000000e+00
  %7478 = call float @dx.op.unary.f32(i32 24, float %7474)  ; Sqrt(value)
  %7479 = fsub fast float -0.000000e+00, %7478
  %7480 = select i1 %7477, float %7478, float %7479
  %7481 = fadd fast float %7480, %7468
  %7482 = fmul float %7481, -5.000000e-01
  %7483 = fdiv fast float %7482, %7322
  %7484 = call float @dx.op.binary.f32(i32 35, float %7483, float 0.000000e+00)  ; FMax(a,b)
  %7485 = call float @dx.op.binary.f32(i32 36, float %7357, float %7484)  ; FMin(a,b)
  %7486 = fdiv fast float %7471, %7482
  %7487 = call float @dx.op.binary.f32(i32 35, float %7486, float 0.000000e+00)  ; FMax(a,b)
  %7488 = call float @dx.op.binary.f32(i32 36, float %7357, float %7487)  ; FMin(a,b)
  %7489 = call float @dx.op.binary.f32(i32 36, float %7485, float %7488)  ; FMin(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float %7485, float %7488)  ; FMax(a,b)
  br label %7491

; <label>:7491                                    ; preds = %7476, %7452
  %7492 = phi float [ %7490, %7476 ], [ -1.000000e+00, %7452 ]
  %7493 = phi float [ %7489, %7476 ], [ -1.000000e+00, %7452 ]
  %7494 = phi i1 [ true, %7476 ], [ false, %7452 ]
  br i1 %7494, label %7495, label %7501

; <label>:7495                                    ; preds = %7491
  %7496 = call float @dx.op.binary.f32(i32 35, float %7440, float %7493)  ; FMax(a,b)
  %7497 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7454
  store float %7496, float* %7497, align 4, !tbaa !104, !noalias !106
  %7498 = call float @dx.op.binary.f32(i32 35, float %7440, float %7492)  ; FMax(a,b)
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7454
  store float %7498, float* %7499, align 4, !tbaa !104, !noalias !106
  %7500 = add nsw i32 %7453, 1
  br label %7501

; <label>:7501                                    ; preds = %7495, %7491
  %7502 = phi i32 [ %7500, %7495 ], [ %7453, %7491 ]
  %7503 = add nuw nsw i32 %7454, 1
  %7504 = icmp eq i32 %7503, %7309
  br i1 %7504, label %7505, label %7452

; <label>:7505                                    ; preds = %7501
  %7506 = load float, float* %7446, align 4, !tbaa !104, !alias.scope !122, !noalias !125
  %7507 = load float, float* %7445, align 4, !tbaa !104, !alias.scope !128, !noalias !129
  %7508 = load float, float* %7444, align 4, !tbaa !104, !alias.scope !130, !noalias !131
  %7509 = load float, float* %7449, align 4, !tbaa !104, !alias.scope !132, !noalias !135
  %7510 = load float, float* %7448, align 4, !tbaa !104, !alias.scope !138, !noalias !139
  %7511 = load float, float* %7447, align 4, !tbaa !104, !alias.scope !140, !noalias !141
  br label %7512

; <label>:7512                                    ; preds = %7505, %7439
  %7513 = phi float [ -1.000000e+00, %7439 ], [ %7511, %7505 ]
  %7514 = phi float [ -1.000000e+00, %7439 ], [ %7510, %7505 ]
  %7515 = phi float [ -1.000000e+00, %7439 ], [ %7509, %7505 ]
  %7516 = phi float [ -1.000000e+00, %7439 ], [ %7508, %7505 ]
  %7517 = phi float [ -1.000000e+00, %7439 ], [ %7507, %7505 ]
  %7518 = phi float [ -1.000000e+00, %7439 ], [ %7506, %7505 ]
  %7519 = phi i32 [ 0, %7439 ], [ %7502, %7505 ]
  %7520 = call float @dx.op.binary.f32(i32 36, float %7517, float %7518)  ; FMin(a,b)
  %7521 = call float @dx.op.binary.f32(i32 36, float %7516, float %7520)  ; FMin(a,b)
  %7522 = call float @dx.op.binary.f32(i32 35, float %7516, float %7517)  ; FMax(a,b)
  %7523 = call float @dx.op.binary.f32(i32 36, float %7522, float %7518)  ; FMin(a,b)
  %7524 = call float @dx.op.binary.f32(i32 36, float %7516, float %7517)  ; FMin(a,b)
  %7525 = call float @dx.op.binary.f32(i32 35, float %7524, float %7523)  ; FMax(a,b)
  %7526 = call float @dx.op.binary.f32(i32 35, float %7517, float %7518)  ; FMax(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %7516, float %7526)  ; FMax(a,b)
  store float %7521, float* %7444, align 4, !tbaa !104, !alias.scope !130, !noalias !131
  store float %7525, float* %7445, align 4, !tbaa !104, !alias.scope !128, !noalias !129
  store float %7527, float* %7446, align 4, !tbaa !104, !alias.scope !122, !noalias !125
  %7528 = call float @dx.op.binary.f32(i32 36, float %7514, float %7515)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7513, float %7528)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7513, float %7514)  ; FMax(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7530, float %7515)  ; FMin(a,b)
  %7532 = call float @dx.op.binary.f32(i32 36, float %7513, float %7514)  ; FMin(a,b)
  %7533 = call float @dx.op.binary.f32(i32 35, float %7532, float %7531)  ; FMax(a,b)
  %7534 = call float @dx.op.binary.f32(i32 35, float %7514, float %7515)  ; FMax(a,b)
  %7535 = call float @dx.op.binary.f32(i32 35, float %7513, float %7534)  ; FMax(a,b)
  store float %7529, float* %7447, align 4, !tbaa !104, !alias.scope !140, !noalias !141
  store float %7533, float* %7448, align 4, !tbaa !104, !alias.scope !138, !noalias !139
  store float %7535, float* %7449, align 4, !tbaa !104, !alias.scope !132, !noalias !135
  %7536 = sub nsw i32 3, %7519
  %7537 = icmp sgt i32 %7536, 2
  br i1 %7537, label %7538, label %7576

; <label>:7538                                    ; preds = %7512
  %7539 = icmp eq i32 %7307, 0
  %7540 = fsub fast float %7357, %7441
  %7541 = select i1 %7539, float %7540, float %7441
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.CBufRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7553 = call float @dx.op.binary.f32(i32 36, float %7442, float %7552)  ; FMin(a,b)
  %7554 = fmul fast float %7550, %7541
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = fsub fast float %7547, %7543
  %7557 = fsub fast float %7548, %7544
  %7558 = fsub fast float %7549, %7545
  %7559 = fmul fast float %7555, %7556
  %7560 = fmul fast float %7555, %7557
  %7561 = fmul fast float %7555, %7558
  %7562 = fadd fast float %7559, %7543
  %7563 = fadd fast float %7560, %7544
  %7564 = fadd fast float %7561, %7545
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7568 = fadd fast float %7567, %7566
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7570 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7571 = extractvalue %dx.types.CBufRet.f32 %7565, 3
  %7572 = fadd fast float %7571, %7570
  %7573 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7574 = fmul fast float %7569, %7553
  %7575 = fmul fast float %7574, %7573
  br label %7658

; <label>:7576                                    ; preds = %7512
  %7577 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7536
  %7578 = load float, float* %7577, align 4, !tbaa !104, !noalias !106
  %7579 = fcmp fast olt float %7578, %7443
  %7580 = icmp sgt i32 %7519, 0
  %7581 = and i1 %7580, %7579
  br i1 %7581, label %7582, label %7619

; <label>:7582                                    ; preds = %7576
  br label %7583

; <label>:7583                                    ; preds = %7612, %7582
  %7584 = phi float [ %7613, %7612 ], [ %7441, %7582 ]
  %7585 = phi float [ %7614, %7612 ], [ %7442, %7582 ]
  %7586 = phi float [ %7594, %7612 ], [ %7578, %7582 ]
  %7587 = phi i32 [ %7591, %7612 ], [ %7536, %7582 ]
  %7588 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7587
  %7589 = load float, float* %7588, align 4, !tbaa !104, !noalias !106
  %7590 = icmp slt i32 %7587, 2
  %7591 = add nsw i32 %7587, 1
  %7592 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7591
  %7593 = load float, float* %7592, align 4, !tbaa !104, !noalias !106
  %7594 = select i1 %7590, float %7593, float %7357
  %7595 = call float @dx.op.binary.f32(i32 36, float %7594, float %7589)  ; FMin(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7443, float %7595)  ; FMin(a,b)
  %7597 = icmp eq i32 %7307, 0
  %7598 = fadd fast float %7596, %7586
  %7599 = fmul fast float %7598, %7288
  %7600 = fadd fast float %7599, %7301
  br i1 %7597, label %7606, label %7601

; <label>:7601                                    ; preds = %7583
  %7602 = fsub fast float %7596, %7586
  %7603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7602)  ; FMax(a,b)
  %7604 = fmul fast float %7603, %7600
  %7605 = fadd fast float %7604, %7585
  br label %7612

; <label>:7606                                    ; preds = %7583
  %7607 = fsub fast float %7586, %7596
  %7608 = call float @dx.op.unary.f32(i32 6, float %7607)  ; FAbs(value)
  %7609 = fadd fast float %7608, %7584
  %7610 = fmul fast float %7608, %7600
  %7611 = fsub fast float %7585, %7610
  br label %7612

; <label>:7612                                    ; preds = %7606, %7601
  %7613 = phi float [ %7603, %7601 ], [ %7609, %7606 ]
  %7614 = phi float [ %7605, %7601 ], [ %7611, %7606 ]
  %7615 = fcmp fast olt float %7594, %7443
  %7616 = icmp slt i32 %7591, 3
  %7617 = and i1 %7616, %7615
  br i1 %7617, label %7583, label %7618

; <label>:7618                                    ; preds = %7612
  br label %7619

; <label>:7619                                    ; preds = %7618, %7576
  %7620 = phi float [ %7441, %7576 ], [ %7613, %7618 ]
  %7621 = phi float [ %7442, %7576 ], [ %7614, %7618 ]
  %7622 = fsub fast float %7357, %7620
  %7623 = select i1 %7359, float %7620, float %7622
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.CBufRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.CBufRet.f32 %7624, 2
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7632 = extractvalue %dx.types.CBufRet.f32 %7628, 3
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 3
  %7635 = call float @dx.op.binary.f32(i32 36, float %7621, float %7634)  ; FMin(a,b)
  %7636 = fmul fast float %7632, %7623
  %7637 = call float @dx.op.unary.f32(i32 7, float %7636)  ; Saturate(value)
  %7638 = fsub fast float %7629, %7625
  %7639 = fsub fast float %7630, %7626
  %7640 = fsub fast float %7631, %7627
  %7641 = fmul fast float %7637, %7638
  %7642 = fmul fast float %7637, %7639
  %7643 = fmul fast float %7637, %7640
  %7644 = fadd fast float %7641, %7625
  %7645 = fadd fast float %7642, %7626
  %7646 = fadd fast float %7643, %7627
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 1
  %7650 = fadd fast float %7649, %7648
  %7651 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7653 = extractvalue %dx.types.CBufRet.f32 %7647, 3
  %7654 = fadd fast float %7653, %7652
  %7655 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7656 = fmul fast float %7651, %7635
  %7657 = fmul fast float %7656, %7655
  br label %7658

; <label>:7658                                    ; preds = %7619, %7538, %7373, %7355, %7353
  %7659 = phi float [ %7382, %7373 ], [ %7541, %7538 ], [ %7623, %7619 ], [ 0.000000e+00, %7353 ], [ 0.000000e+00, %7355 ]
  %7660 = phi float [ %7416, %7373 ], [ %7575, %7538 ], [ %7657, %7619 ], [ 0.000000e+00, %7353 ], [ 0.000000e+00, %7355 ]
  %7661 = phi float [ %7403, %7373 ], [ %7562, %7538 ], [ %7644, %7619 ], [ 0.000000e+00, %7353 ], [ 0.000000e+00, %7355 ]
  %7662 = phi float [ %7404, %7373 ], [ %7563, %7538 ], [ %7645, %7619 ], [ 0.000000e+00, %7353 ], [ 0.000000e+00, %7355 ]
  %7663 = phi float [ %7405, %7373 ], [ %7564, %7538 ], [ %7646, %7619 ], [ 0.000000e+00, %7353 ], [ 0.000000e+00, %7355 ]
  %7664 = fmul fast float %7296, %7660
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7667 = fsub fast float %7303, %7666
  %7668 = fcmp fast olt float %7664, -2.000000e+01
  %7669 = call float @dx.op.unary.f32(i32 21, float %7664)  ; Exp(value)
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7675 = fmul fast float %7672, %7667
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fsub fast float 1.000000e+00, %7676
  %7678 = fmul fast float %7288, 5.000000e-01
  %7679 = fadd fast float %7678, 5.000000e-01
  %7680 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  %7681 = fsub fast float 1.000000e+00, %7680
  %7682 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7677)  ; FMax(a,b)
  %7683 = fdiv fast float %7681, %7682
  %7684 = fsub fast float %7667, %7245
  %7685 = call float @dx.op.unary.f32(i32 6, float %7684)  ; FAbs(value)
  %7686 = fmul fast float %7685, %7671
  %7687 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7688 = fsub fast float 1.000000e+00, %7686
  %7689 = fmul fast float %7688, %7687
  %7690 = fadd fast float %7689, %7686
  %7691 = fmul fast float %7674, %7667
  %7692 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7693 = fsub fast float 1.000000e+00, %7690
  %7694 = fmul fast float %7693, %7692
  %7695 = fadd fast float %7694, %7690
  %7696 = call float @dx.op.unary.f32(i32 7, float %7695)  ; Saturate(value)
  %7697 = fadd fast float %7669, -1.000000e+00
  %7698 = select i1 %7668, float -1.000000e+00, float %7697
  %7699 = fmul fast float %7696, %7698
  %7700 = fadd fast float %7699, 1.000000e+00
  %7701 = fsub fast float -0.000000e+00, %7699
  %7702 = fmul fast float %7661, %7701
  %7703 = fmul fast float %7662, %7701
  %7704 = fmul fast float %7663, %7701
  br label %7705

; <label>:7705                                    ; preds = %7658, %7254
  %7706 = phi float [ %7659, %7658 ], [ 0.000000e+00, %7254 ]
  %7707 = phi float [ %7700, %7658 ], [ 1.000000e+00, %7254 ]
  %7708 = phi float [ %7702, %7658 ], [ 0.000000e+00, %7254 ]
  %7709 = phi float [ %7703, %7658 ], [ 0.000000e+00, %7254 ]
  %7710 = phi float [ %7704, %7658 ], [ 0.000000e+00, %7254 ]
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 1
  %7713 = fsub fast float 1.000000e+00, %7707
  %7714 = fmul fast float %7713, %7289
  %7715 = fmul fast float %7714, %7712
  %7716 = fsub fast float %7289, %7715
  br i1 %7282, label %7717, label %7746, !dx.controlflow.hints !142

; <label>:7717                                    ; preds = %7705
  %7718 = fmul fast float %7290, %7279
  %7719 = fadd fast float %7718, %7280
  %7720 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  %7721 = fmul fast float %7261, %7716
  %7722 = fsub fast float -0.000000e+00, %7721
  %7723 = fmul fast float %7262, %7716
  %7724 = fsub fast float -0.000000e+00, %7723
  %7725 = call float @dx.op.unary.f32(i32 21, float %7722)  ; Exp(value)
  %7726 = call float @dx.op.unary.f32(i32 21, float %7724)  ; Exp(value)
  %7727 = call float @dx.op.binary.f32(i32 35, float %7269, float %7725)  ; FMax(a,b)
  %7728 = call float @dx.op.binary.f32(i32 35, float %7269, float %7726)  ; FMax(a,b)
  %7729 = fsub fast float %7728, %7727
  %7730 = fmul fast float %7729, %7720
  %7731 = fadd fast float %7730, %7727
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fsub fast float %7266, %7271
  %7734 = fsub fast float %7267, %7272
  %7735 = fsub fast float %7268, %7273
  %7736 = fmul fast float %7720, %7733
  %7737 = fmul fast float %7720, %7734
  %7738 = fmul fast float %7720, %7735
  %7739 = fadd fast float %7736, %7271
  %7740 = fadd fast float %7737, %7272
  %7741 = fadd fast float %7738, %7273
  %7742 = fsub fast float 1.000000e+00, %7732
  %7743 = fmul fast float %7742, %7739
  %7744 = fmul fast float %7742, %7740
  %7745 = fmul fast float %7742, %7741
  br label %7805

; <label>:7746                                    ; preds = %7705
  %7747 = fmul fast float %7716, %7278
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7749 = fsub fast float 2.000000e+00, %7748
  %7750 = fmul fast float %7748, 9.921875e-01
  %7751 = fmul fast float %7750, %7749
  %7752 = fadd fast float %7751, 3.906250e-03
  %7753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7752, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = fsub fast float %7748, %7754
  %7756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7755)  ; FMax(a,b)
  %7757 = fmul fast float %7264, %7245
  %7758 = call float @dx.op.unary.f32(i32 6, float %7757)  ; FAbs(value)
  %7759 = fcmp fast ogt float %7758, 0x3EB0C6F7A0000000
  br i1 %7759, label %7760, label %7766, !dx.controlflow.hints !143

; <label>:7760                                    ; preds = %7746
  %7761 = fmul fast float %7757, 0xBFF7154760000000
  %7762 = call float @dx.op.unary.f32(i32 21, float %7761)  ; Exp(value)
  %7763 = fsub fast float 1.000000e+00, %7762
  %7764 = fdiv fast float %7763, %7757
  %7765 = fmul fast float %7764, %7274
  br label %7766

; <label>:7766                                    ; preds = %7760, %7746
  %7767 = phi float [ %7765, %7760 ], [ %7274, %7746 ]
  %7768 = fadd fast float %7767, %7276
  %7769 = fmul fast float %7768, %7756
  %7770 = fmul fast float %7261, %7769
  %7771 = fsub fast float -0.000000e+00, %7770
  %7772 = fmul fast float %7262, %7769
  %7773 = fsub fast float -0.000000e+00, %7772
  %7774 = fmul fast float %7263, %7769
  %7775 = fsub fast float -0.000000e+00, %7774
  %7776 = call float @dx.op.unary.f32(i32 21, float %7771)  ; Exp(value)
  %7777 = call float @dx.op.unary.f32(i32 21, float %7773)  ; Exp(value)
  %7778 = call float @dx.op.unary.f32(i32 21, float %7775)  ; Exp(value)
  %7779 = fmul fast float %7290, %7290
  %7780 = fadd fast float %7779, 1.000000e+00
  %7781 = fmul fast float %7780, 0x3FAE8EC8A0000000
  %7782 = fmul fast float %7781, %7271
  %7783 = fmul fast float %7781, %7272
  %7784 = fmul fast float %7781, %7273
  %7785 = fmul fast float %7290, %7269
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = fmul fast float %7269, %7269
  %7788 = fsub fast float 1.000000e+00, %7787
  %7789 = fmul fast float %7788, 0x3FB45F3060000000
  %7790 = fmul fast float %7786, %7786
  %7791 = fdiv fast float 1.000000e+00, %7790
  %7792 = fmul fast float %7789, %7791
  %7793 = fmul fast float %7792, %7266
  %7794 = fmul fast float %7792, %7267
  %7795 = fmul fast float %7792, %7268
  %7796 = fadd fast float %7793, %7782
  %7797 = fadd fast float %7794, %7783
  %7798 = fadd fast float %7795, %7784
  %7799 = fsub fast float 1.000000e+00, %7776
  %7800 = fsub fast float 1.000000e+00, %7777
  %7801 = fsub fast float 1.000000e+00, %7778
  %7802 = fmul fast float %7796, %7799
  %7803 = fmul fast float %7797, %7800
  %7804 = fmul fast float %7798, %7801
  br label %7805

; <label>:7805                                    ; preds = %7766, %7717
  %7806 = phi float [ %7743, %7717 ], [ %7802, %7766 ]
  %7807 = phi float [ %7744, %7717 ], [ %7803, %7766 ]
  %7808 = phi float [ %7745, %7717 ], [ %7804, %7766 ]
  %7809 = phi float [ %7732, %7717 ], [ %7776, %7766 ]
  %7810 = phi float [ %7732, %7717 ], [ %7777, %7766 ]
  %7811 = phi float [ %7732, %7717 ], [ %7778, %7766 ]
  br i1 %7298, label %7812, label %8010, !dx.controlflow.hints !144

; <label>:7812                                    ; preds = %7805
  %7813 = extractvalue %dx.types.CBufRet.f32 %7711, 0
  %7814 = fmul fast float %7813, %7713
  %7815 = fsub fast float %7708, %7806
  %7816 = fsub fast float %7709, %7807
  %7817 = fsub fast float %7710, %7808
  %7818 = fmul fast float %7814, %7815
  %7819 = fmul fast float %7814, %7816
  %7820 = fmul fast float %7814, %7817
  %7821 = fadd fast float %7818, %7806
  %7822 = fadd fast float %7819, %7807
  %7823 = fadd fast float %7820, %7808
  %7824 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7809)  ; FMax(a,b)
  %7825 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7810)  ; FMax(a,b)
  %7826 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7811)  ; FMax(a,b)
  %7827 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7707)  ; FMax(a,b)
  %7828 = call float @dx.op.binary.f32(i32 35, float %7706, float %7716)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7828)  ; FMax(a,b)
  %7830 = fdiv fast float %7706, %7829
  %7831 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7832 = fdiv fast float %7716, %7829
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = fcmp fast une float %7827, 1.000000e+00
  br i1 %7834, label %7835, label %7848, !dx.controlflow.hints !145

; <label>:7835                                    ; preds = %7812
  %7836 = call float @dx.op.unary.f32(i32 23, float %7827)  ; Log(value)
  %7837 = fmul fast float %7836, 0x3FE62E4300000000
  %7838 = fmul fast float %7708, %7837
  %7839 = fsub fast float -0.000000e+00, %7838
  %7840 = fmul fast float %7709, %7837
  %7841 = fsub fast float -0.000000e+00, %7840
  %7842 = fmul fast float %7710, %7837
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = fsub fast float 1.000000e+00, %7827
  %7845 = fdiv fast float %7839, %7844
  %7846 = fdiv fast float %7841, %7844
  %7847 = fdiv fast float %7843, %7844
  br label %7848

; <label>:7848                                    ; preds = %7835, %7812
  %7849 = phi float [ %7845, %7835 ], [ %7708, %7812 ]
  %7850 = phi float [ %7846, %7835 ], [ %7709, %7812 ]
  %7851 = phi float [ %7847, %7835 ], [ %7710, %7812 ]
  %7852 = phi float [ %7837, %7835 ], [ 0.000000e+00, %7812 ]
  %7853 = fcmp fast une float %7824, 1.000000e+00
  br i1 %7853, label %7854, label %7861, !dx.controlflow.hints !146

; <label>:7854                                    ; preds = %7848
  %7855 = call float @dx.op.unary.f32(i32 23, float %7824)  ; Log(value)
  %7856 = fmul fast float %7855, 0x3FE62E4300000000
  %7857 = fmul fast float %7821, %7856
  %7858 = fsub fast float -0.000000e+00, %7857
  %7859 = fsub fast float 1.000000e+00, %7824
  %7860 = fdiv fast float %7858, %7859
  br label %7861

; <label>:7861                                    ; preds = %7854, %7848
  %7862 = phi float [ %7860, %7854 ], [ %7821, %7848 ]
  %7863 = phi float [ %7856, %7854 ], [ 0.000000e+00, %7848 ]
  %7864 = fcmp fast une float %7825, 1.000000e+00
  br i1 %7864, label %7865, label %7872, !dx.controlflow.hints !146

; <label>:7865                                    ; preds = %7861
  %7866 = call float @dx.op.unary.f32(i32 23, float %7825)  ; Log(value)
  %7867 = fmul fast float %7866, 0x3FE62E4300000000
  %7868 = fmul fast float %7822, %7867
  %7869 = fsub fast float -0.000000e+00, %7868
  %7870 = fsub fast float 1.000000e+00, %7825
  %7871 = fdiv fast float %7869, %7870
  br label %7872

; <label>:7872                                    ; preds = %7865, %7861
  %7873 = phi float [ %7871, %7865 ], [ %7822, %7861 ]
  %7874 = phi float [ %7867, %7865 ], [ 0.000000e+00, %7861 ]
  %7875 = fcmp fast une float %7826, 1.000000e+00
  br i1 %7875, label %7876, label %7883, !dx.controlflow.hints !146

; <label>:7876                                    ; preds = %7872
  %7877 = call float @dx.op.unary.f32(i32 23, float %7826)  ; Log(value)
  %7878 = fmul fast float %7877, 0x3FE62E4300000000
  %7879 = fmul fast float %7823, %7878
  %7880 = fsub fast float -0.000000e+00, %7879
  %7881 = fsub fast float 1.000000e+00, %7826
  %7882 = fdiv fast float %7880, %7881
  br label %7883

; <label>:7883                                    ; preds = %7876, %7872
  %7884 = phi float [ %7882, %7876 ], [ %7823, %7872 ]
  %7885 = phi float [ %7878, %7876 ], [ 0.000000e+00, %7872 ]
  %7886 = fmul fast float %7849, %7833
  %7887 = fmul fast float %7850, %7833
  %7888 = fmul fast float %7851, %7833
  %7889 = fmul fast float %7852, %7833
  %7890 = fmul fast float %7862, %7831
  %7891 = fmul fast float %7873, %7831
  %7892 = fmul fast float %7884, %7831
  %7893 = fmul fast float %7863, %7831
  %7894 = fmul fast float %7874, %7831
  %7895 = fmul fast float %7885, %7831
  %7896 = fadd fast float %7890, %7886
  %7897 = fadd fast float %7891, %7887
  %7898 = fadd fast float %7892, %7888
  %7899 = fadd fast float %7893, %7889
  %7900 = fadd fast float %7894, %7889
  %7901 = fadd fast float %7895, %7889
  %7902 = fcmp fast une float %7899, 0.000000e+00
  br i1 %7902, label %7903, label %7910, !dx.controlflow.hints !147

; <label>:7903                                    ; preds = %7883
  %7904 = fmul fast float %7899, 0x3FF7154760000000
  %7905 = call float @dx.op.unary.f32(i32 21, float %7904)  ; Exp(value)
  %7906 = fsub fast float 1.000000e+00, %7905
  %7907 = fmul fast float %7896, %7906
  %7908 = fsub fast float -0.000000e+00, %7907
  %7909 = fdiv fast float %7908, %7899
  br label %7910

; <label>:7910                                    ; preds = %7903, %7883
  %7911 = phi float [ %7905, %7903 ], [ 1.000000e+00, %7883 ]
  %7912 = phi float [ %7909, %7903 ], [ %7896, %7883 ]
  %7913 = fcmp fast une float %7900, 0.000000e+00
  br i1 %7913, label %7914, label %7921, !dx.controlflow.hints !147

; <label>:7914                                    ; preds = %7910
  %7915 = fmul fast float %7900, 0x3FF7154760000000
  %7916 = call float @dx.op.unary.f32(i32 21, float %7915)  ; Exp(value)
  %7917 = fsub fast float 1.000000e+00, %7916
  %7918 = fmul fast float %7897, %7917
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fdiv fast float %7919, %7900
  br label %7921

; <label>:7921                                    ; preds = %7914, %7910
  %7922 = phi float [ %7916, %7914 ], [ 1.000000e+00, %7910 ]
  %7923 = phi float [ %7920, %7914 ], [ %7897, %7910 ]
  %7924 = fcmp fast une float %7901, 0.000000e+00
  br i1 %7924, label %7925, label %7932, !dx.controlflow.hints !147

; <label>:7925                                    ; preds = %7921
  %7926 = fmul fast float %7901, 0x3FF7154760000000
  %7927 = call float @dx.op.unary.f32(i32 21, float %7926)  ; Exp(value)
  %7928 = fsub fast float 1.000000e+00, %7927
  %7929 = fmul fast float %7898, %7928
  %7930 = fsub fast float -0.000000e+00, %7929
  %7931 = fdiv fast float %7930, %7901
  br label %7932

; <label>:7932                                    ; preds = %7925, %7921
  %7933 = phi float [ %7927, %7925 ], [ 1.000000e+00, %7921 ]
  %7934 = phi float [ %7931, %7925 ], [ %7898, %7921 ]
  %7935 = fcmp fast ogt float %7831, %7833
  br i1 %7935, label %7936, label %7956

; <label>:7936                                    ; preds = %7932
  %7937 = fsub fast float 1.000000e+00, %7833
  %7938 = fmul fast float %7849, %7937
  %7939 = fmul fast float %7850, %7937
  %7940 = fmul fast float %7851, %7937
  %7941 = fmul fast float %7852, %7937
  %7942 = fcmp fast une float %7941, 0.000000e+00
  br i1 %7942, label %7943, label %7994, !dx.controlflow.hints !148

; <label>:7943                                    ; preds = %7936
  %7944 = fmul fast float %7941, 0x3FF7154760000000
  %7945 = call float @dx.op.unary.f32(i32 21, float %7944)  ; Exp(value)
  %7946 = fsub fast float 1.000000e+00, %7945
  %7947 = fmul fast float %7938, %7946
  %7948 = fsub fast float -0.000000e+00, %7947
  %7949 = fmul fast float %7939, %7946
  %7950 = fsub fast float -0.000000e+00, %7949
  %7951 = fmul fast float %7940, %7946
  %7952 = fsub fast float -0.000000e+00, %7951
  %7953 = fdiv fast float %7948, %7941
  %7954 = fdiv fast float %7950, %7941
  %7955 = fdiv fast float %7952, %7941
  br label %7994

; <label>:7956                                    ; preds = %7932
  %7957 = fsub fast float 1.000000e+00, %7831
  %7958 = fmul fast float %7862, %7957
  %7959 = fmul fast float %7873, %7957
  %7960 = fmul fast float %7884, %7957
  %7961 = fmul fast float %7863, %7957
  %7962 = fmul fast float %7874, %7957
  %7963 = fmul fast float %7885, %7957
  %7964 = fcmp fast une float %7961, 0.000000e+00
  br i1 %7964, label %7965, label %7972, !dx.controlflow.hints !147

; <label>:7965                                    ; preds = %7956
  %7966 = fmul fast float %7961, 0x3FF7154760000000
  %7967 = call float @dx.op.unary.f32(i32 21, float %7966)  ; Exp(value)
  %7968 = fsub fast float 1.000000e+00, %7967
  %7969 = fmul fast float %7958, %7968
  %7970 = fsub fast float -0.000000e+00, %7969
  %7971 = fdiv fast float %7970, %7961
  br label %7972

; <label>:7972                                    ; preds = %7965, %7956
  %7973 = phi float [ %7971, %7965 ], [ %7958, %7956 ]
  %7974 = phi float [ %7967, %7965 ], [ 1.000000e+00, %7956 ]
  %7975 = fcmp fast une float %7962, 0.000000e+00
  br i1 %7975, label %7976, label %7983, !dx.controlflow.hints !147

; <label>:7976                                    ; preds = %7972
  %7977 = fmul fast float %7962, 0x3FF7154760000000
  %7978 = call float @dx.op.unary.f32(i32 21, float %7977)  ; Exp(value)
  %7979 = fsub fast float 1.000000e+00, %7978
  %7980 = fmul fast float %7959, %7979
  %7981 = fsub fast float -0.000000e+00, %7980
  %7982 = fdiv fast float %7981, %7962
  br label %7983

; <label>:7983                                    ; preds = %7976, %7972
  %7984 = phi float [ %7982, %7976 ], [ %7959, %7972 ]
  %7985 = phi float [ %7978, %7976 ], [ 1.000000e+00, %7972 ]
  %7986 = fcmp fast une float %7963, 0.000000e+00
  br i1 %7986, label %7987, label %7994, !dx.controlflow.hints !147

; <label>:7987                                    ; preds = %7983
  %7988 = fmul fast float %7963, 0x3FF7154760000000
  %7989 = call float @dx.op.unary.f32(i32 21, float %7988)  ; Exp(value)
  %7990 = fsub fast float 1.000000e+00, %7989
  %7991 = fmul fast float %7960, %7990
  %7992 = fsub fast float -0.000000e+00, %7991
  %7993 = fdiv fast float %7992, %7963
  br label %7994

; <label>:7994                                    ; preds = %7987, %7983, %7943, %7936
  %7995 = phi float [ %7993, %7987 ], [ %7955, %7943 ], [ %7940, %7936 ], [ %7960, %7983 ]
  %7996 = phi float [ %7984, %7987 ], [ %7954, %7943 ], [ %7939, %7936 ], [ %7984, %7983 ]
  %7997 = phi float [ %7973, %7987 ], [ %7953, %7943 ], [ %7938, %7936 ], [ %7973, %7983 ]
  %7998 = phi float [ %7989, %7987 ], [ %7945, %7943 ], [ 1.000000e+00, %7936 ], [ 1.000000e+00, %7983 ]
  %7999 = phi float [ %7985, %7987 ], [ %7945, %7943 ], [ 1.000000e+00, %7936 ], [ %7985, %7983 ]
  %8000 = phi float [ %7974, %7987 ], [ %7945, %7943 ], [ 1.000000e+00, %7936 ], [ %7974, %7983 ]
  %8001 = fmul fast float %8000, %7912
  %8002 = fmul fast float %7999, %7923
  %8003 = fmul fast float %7998, %7934
  %8004 = fadd fast float %8001, %7997
  %8005 = fadd fast float %8002, %7996
  %8006 = fadd fast float %8003, %7995
  %8007 = fmul fast float %8000, %7911
  %8008 = fmul fast float %7999, %7922
  %8009 = fmul fast float %7998, %7933
  br label %8010

; <label>:8010                                    ; preds = %7994, %7805
  %8011 = phi float [ %8009, %7994 ], [ %7811, %7805 ]
  %8012 = phi float [ %8008, %7994 ], [ %7810, %7805 ]
  %8013 = phi float [ %8007, %7994 ], [ %7809, %7805 ]
  %8014 = phi float [ %8006, %7994 ], [ %7808, %7805 ]
  %8015 = phi float [ %8005, %7994 ], [ %7807, %7805 ]
  %8016 = phi float [ %8004, %7994 ], [ %7806, %7805 ]
  %8017 = fmul fast float %8016, %6962
  %8018 = fmul fast float %8015, %6962
  %8019 = fmul fast float %8014, %6962
  %8020 = fmul fast float %8013, %7253
  %8021 = call float @dx.op.dot3.f32(i32 55, float %8013, float %8012, float %8011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = call float @dx.op.dot3.f32(i32 55, float %8017, float %8018, float %8019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8023 = select i1 %203, float %8021, float %8013
  %8024 = select i1 %203, float %8021, float %8012
  %8025 = select i1 %203, float 1.000000e+00, float %8011
  %8026 = select i1 %203, float %8022, float %8017
  %8027 = select i1 %203, float 0.000000e+00, float %8018
  %8028 = select i1 %203, float 0.000000e+00, float %8019
  %8029 = fmul fast float %8023, %7247
  %8030 = fmul fast float %8024, %7248
  %8031 = fmul fast float %8025, %7249
  %8032 = fadd fast float %8029, %8026
  %8033 = fadd fast float %8030, %8027
  %8034 = fadd fast float %8028, %8031
  %8035 = fmul fast float %8023, %7250
  %8036 = fmul fast float %8024, %7251
  %8037 = fmul fast float %8025, %7252
  %8038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8039 = extractvalue %dx.types.CBufRet.i32 %8038, 0
  %8040 = icmp eq i32 %8039, 0
  br i1 %8040, label %8408, label %8041, !dx.controlflow.hints !149

; <label>:8041                                    ; preds = %8010
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 2
  %8044 = extractvalue %dx.types.CBufRet.f32 %8042, 3
  %8045 = fmul fast float %8043, %87
  %8046 = fmul fast float %8044, %88
  %8047 = fmul fast float %8045, 2.000000e+00
  %8048 = fmul fast float %8046, 2.000000e+00
  %8049 = fsub fast float 1.000000e+00, %8047
  %8050 = fsub fast float 1.000000e+00, %8048
  %8051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8052 = extractvalue %dx.types.CBufRet.f32 %8051, 0
  %8053 = extractvalue %dx.types.CBufRet.f32 %8051, 1
  %8054 = extractvalue %dx.types.CBufRet.f32 %8051, 2
  %8055 = fmul fast float %8049, %8052
  %8056 = fmul fast float %8049, %8053
  %8057 = fmul fast float %8049, %8054
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8062 = fmul fast float %8050, %8059
  %8063 = fmul fast float %8050, %8060
  %8064 = fmul fast float %8050, %8061
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.CBufRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8069 = fadd fast float %8062, %8066
  %8070 = fadd fast float %8069, %8055
  %8071 = fadd fast float %8063, %8067
  %8072 = fadd fast float %8071, %8056
  %8073 = fadd fast float %8064, %8068
  %8074 = fadd fast float %8073, %8057
  %8075 = fmul fast float %8070, %7246
  %8076 = fmul fast float %8072, %7246
  %8077 = fmul fast float %8074, %7246
  %8078 = fmul fast float %8075, %8075
  %8079 = fmul fast float %8076, %8076
  %8080 = fadd fast float %8078, %8079
  %8081 = fmul fast float %8077, %8077
  %8082 = fadd fast float %8080, %8081
  %8083 = call float @dx.op.unary.f32(i32 24, float %8082)  ; Sqrt(value)
  %8084 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %8085 = fsub fast float %8083, %8084
  %8086 = extractvalue %dx.types.CBufRet.f32 %6973, 2
  %8087 = fmul fast float %8085, %8086
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fadd fast float %8088, -5.000000e-01
  %8090 = fmul fast float %8089, 2.000000e+00
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8093 = call float @dx.op.binary.f32(i32 36, float %8092, float %8090)  ; FMin(a,b)
  %8094 = fsub fast float -0.000000e+00, %8092
  %8095 = fcmp fast ogt float %8093, %8094
  br i1 %8095, label %8096, label %8408, !dx.controlflow.hints !150

; <label>:8096                                    ; preds = %8041
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8099 = fcmp fast ogt float %8098, 0.000000e+00
  br i1 %8099, label %8100, label %8175, !dx.controlflow.hints !151

; <label>:8100                                    ; preds = %8096
  %8101 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8102 = extractvalue %dx.types.Dimensions %8101, 0
  %8103 = sitofp i32 %8102 to float
  %8104 = extractvalue %dx.types.Dimensions %8101, 1
  %8105 = sitofp i32 %8104 to float
  %8106 = fmul fast float %8045, %8103
  %8107 = fmul fast float %8046, %8105
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8110 = fsub fast float -0.000000e+00, %8109
  %8111 = fptoui float %8110 to i32
  %8112 = fptoui float %8106 to i32
  %8113 = fptoui float %8107 to i32
  %8114 = and i32 %8111, 31
  %8115 = lshr i32 %8112, %8114
  %8116 = lshr i32 %8113, %8114
  %8117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8111, i32 %8115, i32 %8116, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 0
  %8119 = fcmp fast olt float %8118, -1.000000e+00
  %8120 = fcmp fast ogt float %8118, -1.000000e+00
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8123 = select i1 %8120, float %8122, float 1.000000e+00
  %8124 = fadd fast float %8118, 1.000000e+00
  %8125 = fmul fast float %8123, %8124
  %8126 = call float @dx.op.unary.f32(i32 6, float %8125)  ; FAbs(value)
  %8127 = extractvalue %dx.types.CBufRet.f32 %8121, 3
  %8128 = fcmp fast oge float %8126, %8127
  %8129 = select i1 %8128, float 0x4197782600000000, float %8126
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.CBufRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8134 = select i1 %8119, float %8131, float %8052
  %8135 = select i1 %8119, float %8132, float %8053
  %8136 = select i1 %8119, float %8133, float %8054
  %8137 = fmul fast float %8134, %8049
  %8138 = fmul fast float %8135, %8049
  %8139 = fmul fast float %8136, %8049
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.CBufRet.f32 %8140, 2
  %8144 = select i1 %8119, float %8141, float %8059
  %8145 = select i1 %8119, float %8142, float %8060
  %8146 = select i1 %8119, float %8143, float %8061
  %8147 = fmul fast float %8144, %8050
  %8148 = fmul fast float %8145, %8050
  %8149 = fmul fast float %8146, %8050
  %8150 = fadd fast float %8147, %8137
  %8151 = fadd fast float %8148, %8138
  %8152 = fadd fast float %8149, %8139
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = select i1 %8119, float %8154, float %8066
  %8158 = select i1 %8119, float %8155, float %8067
  %8159 = select i1 %8119, float %8156, float %8068
  %8160 = fadd fast float %8150, %8157
  %8161 = fadd fast float %8151, %8158
  %8162 = fadd fast float %8152, %8159
  %8163 = fmul fast float %8160, %8129
  %8164 = fmul fast float %8161, %8129
  %8165 = fmul fast float %8162, %8129
  %8166 = fmul fast float %8163, %8163
  %8167 = fmul fast float %8164, %8164
  %8168 = fadd fast float %8166, %8167
  %8169 = fmul fast float %8165, %8165
  %8170 = fadd fast float %8168, %8169
  %8171 = call float @dx.op.unary.f32(i32 24, float %8170)  ; Sqrt(value)
  %8172 = fsub fast float %8171, %8084
  %8173 = fmul fast float %8172, %8086
  %8174 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  br label %8175

; <label>:8175                                    ; preds = %8100, %8096
  %8176 = phi float [ %8174, %8100 ], [ 1.000000e+00, %8096 ]
  %8177 = fmul fast float %8093, 5.000000e-01
  %8178 = fadd fast float %8177, 5.000000e-01
  %8179 = call float @dx.op.unary.f32(i32 22, float %8178)  ; Frc(value)
  %8180 = call float @dx.op.unary.f32(i32 27, float %8179)  ; Round_ni(value)
  %8181 = call float @dx.op.unary.f32(i32 22, float %8179)  ; Frc(value)
  %8182 = fmul fast float %8181, 2.000000e+00
  %8183 = fadd fast float %8182, -1.000000e+00
  %8184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8045, float %8046, float %8180, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8185 = extractvalue %dx.types.ResRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.ResRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.ResRet.f32 %8184, 2
  %8188 = extractvalue %dx.types.ResRet.f32 %8184, 3
  %8189 = fadd fast float %8185, -5.000000e-01
  %8190 = fadd fast float %8187, -5.000000e-01
  %8191 = fmul fast float %8189, 0xBFD5555560000000
  %8192 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8190, float %8191)  ; FMad(a,b,c)
  %8193 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8186, float 0.000000e+00)  ; FMad(a,b,c)
  %8194 = fadd fast float %8193, %8188
  %8195 = fmul fast float %8189, -7.500000e-01
  %8196 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8190, float %8195)  ; FMad(a,b,c)
  %8197 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8186, float 0.000000e+00)  ; FMad(a,b,c)
  %8198 = fadd fast float %8197, %8188
  %8199 = call float @dx.op.binary.f32(i32 35, float %8192, float -1.000000e+00)  ; FMax(a,b)
  %8200 = call float @dx.op.binary.f32(i32 35, float %8194, float -1.000000e+00)  ; FMax(a,b)
  %8201 = call float @dx.op.binary.f32(i32 35, float %8196, float -1.000000e+00)  ; FMax(a,b)
  %8202 = call float @dx.op.binary.f32(i32 35, float %8198, float -1.000000e+00)  ; FMax(a,b)
  %8203 = call float @dx.op.binary.f32(i32 36, float %8199, float 1.000000e+00)  ; FMin(a,b)
  %8204 = call float @dx.op.binary.f32(i32 36, float %8200, float 1.000000e+00)  ; FMin(a,b)
  %8205 = call float @dx.op.binary.f32(i32 36, float %8201, float 1.000000e+00)  ; FMin(a,b)
  %8206 = call float @dx.op.binary.f32(i32 36, float %8202, float 1.000000e+00)  ; FMin(a,b)
  %8207 = fcmp fast olt float %8203, 0x3FEFFF8020000000
  br i1 %8207, label %8208, label %8323, !dx.controlflow.hints !152

; <label>:8208                                    ; preds = %8175
  %8209 = extractvalue %dx.types.CBufRet.f32 %8091, 3
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.CBufRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.CBufRet.f32 %8210, 2
  %8214 = extractvalue %dx.types.CBufRet.f32 %8210, 3
  %8215 = fsub fast float %8211, %8203
  %8216 = fsub fast float %8212, %8204
  %8217 = fsub fast float %8213, %8205
  %8218 = fsub fast float %8214, %8206
  %8219 = fmul fast float %8215, %8209
  %8220 = fmul fast float %8216, %8209
  %8221 = fmul fast float %8217, %8209
  %8222 = fmul fast float %8218, %8209
  %8223 = fadd fast float %8219, %8203
  %8224 = fadd fast float %8220, %8204
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = fadd fast float %8221, %8205
  %8227 = fadd fast float %8222, %8206
  %8228 = fmul fast float %8223, %8223
  %8229 = fsub fast float %8224, %8228
  %8230 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8229)  ; FMax(a,b)
  %8231 = fdiv fast float 1.000000e+00, %8230
  %8232 = fmul fast float %8224, %8223
  %8233 = fsub fast float %8226, %8232
  %8234 = fsub fast float %8183, %8223
  %8235 = fmul fast float %8183, %8183
  %8236 = fsub fast float %8235, %8224
  %8237 = fmul fast float %8234, %8231
  %8238 = fmul fast float %8237, %8233
  %8239 = fsub fast float %8236, %8238
  %8240 = fmul fast float %8224, %8224
  %8241 = fsub fast float %8227, %8240
  %8242 = fmul fast float %8233, %8233
  %8243 = fmul fast float %8242, %8231
  %8244 = fsub fast float %8241, %8243
  %8245 = fdiv fast float %8239, %8244
  %8246 = fmul fast float %8233, %8245
  %8247 = fsub fast float %8234, %8246
  %8248 = fmul fast float %8247, %8231
  %8249 = fmul fast float %8248, %8223
  %8250 = fsub fast float 1.000000e+00, %8249
  %8251 = fmul fast float %8224, %8245
  %8252 = fsub fast float %8250, %8251
  %8253 = fmul fast float %8248, %8248
  %8254 = fmul fast float %8245, 4.000000e+00
  %8255 = fmul fast float %8254, %8252
  %8256 = fsub fast float %8253, %8255
  %8257 = call float @dx.op.unary.f32(i32 24, float %8256)  ; Sqrt(value)
  %8258 = fcmp fast oge float %8248, 0.000000e+00
  %8259 = fsub fast float -0.000000e+00, %8257
  %8260 = select i1 %8258, float %8259, float %8257
  %8261 = fsub fast float %8260, %8248
  %8262 = fdiv fast float %8261, %8245
  %8263 = fdiv fast float %8252, %8261
  %8264 = fmul fast float %8262, 5.000000e-01
  %8265 = fmul fast float %8263, 2.000000e+00
  %8266 = select i1 %8258, float %8264, float %8265
  %8267 = select i1 %8258, float %8265, float %8264
  %8268 = call float @dx.op.binary.f32(i32 35, float %8266, float %8267)  ; FMax(a,b)
  %8269 = call float @dx.op.binary.f32(i32 36, float %8266, float %8267)  ; FMin(a,b)
  %8270 = fcmp fast ogt float %8183, %8269
  br i1 %8270, label %8271, label %8281

; <label>:8271                                    ; preds = %8208
  %8272 = fsub fast float %8183, %8269
  %8273 = fsub fast float %8268, %8269
  %8274 = fmul fast float %8272, %8273
  %8275 = fmul fast float %8268, %8183
  %8276 = fadd fast float %8268, %8183
  %8277 = fmul fast float %8276, %8223
  %8278 = fadd fast float %8275, %8224
  %8279 = fsub fast float %8278, %8277
  %8280 = fdiv fast float %8279, %8274
  br label %8281

; <label>:8281                                    ; preds = %8271, %8208
  %8282 = phi float [ %8280, %8271 ], [ 0.000000e+00, %8208 ]
  %8283 = fcmp fast ogt float %8183, %8268
  %8284 = fsub fast float %8183, %8268
  br i1 %8283, label %8285, label %8295

; <label>:8285                                    ; preds = %8281
  %8286 = fsub fast float %8268, %8269
  %8287 = fmul fast float %8286, %8284
  %8288 = fmul fast float %8269, %8183
  %8289 = fadd fast float %8269, %8183
  %8290 = fmul fast float %8289, %8223
  %8291 = fsub fast float %8225, %8288
  %8292 = fadd fast float %8291, %8290
  %8293 = fdiv fast float %8292, %8287
  %8294 = fadd fast float %8293, %8282
  br label %8295

; <label>:8295                                    ; preds = %8285, %8281
  %8296 = phi float [ %8294, %8285 ], [ %8282, %8281 ]
  %8297 = fsub fast float %8183, %8269
  %8298 = fmul fast float %8297, %8284
  %8299 = fmul fast float %8269, %8268
  %8300 = fadd fast float %8269, %8268
  %8301 = fmul fast float %8300, %8223
  %8302 = fadd fast float %8299, %8224
  %8303 = fsub fast float %8302, %8301
  %8304 = fdiv fast float %8303, %8298
  %8305 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8306 = fcmp fast oeq float %6974, 0.000000e+00
  %8307 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8308 = fcmp fast oeq float %8307, 0.000000e+00
  %8309 = or i1 %8306, %8308
  %8310 = fmul fast float %8307, 2.000000e+00
  %8311 = fadd fast float %8092, %8093
  %8312 = fdiv fast float %8311, %8310
  %8313 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8314 = fmul fast float %8313, 2.000000e+00
  %8315 = fsub fast float 3.000000e+00, %8314
  %8316 = fmul fast float %8313, %8313
  %8317 = fmul fast float %8316, %8315
  %8318 = select i1 %8309, float 1.000000e+00, float %8317
  %8319 = fmul fast float %8304, %6974
  %8320 = fadd fast float %8305, %8319
  %8321 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8322 = fmul fast float %8318, %8321
  br label %8323

; <label>:8323                                    ; preds = %8295, %8175
  %8324 = phi float [ %8322, %8295 ], [ 0.000000e+00, %8175 ]
  %8325 = fsub fast float 1.000000e+00, %8324
  %8326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8045, float %8046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8327 = extractvalue %dx.types.ResRet.f32 %8326, 0
  %8328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.i32 %8328, 2
  %8330 = icmp eq i32 %8329, 0
  br i1 %8330, label %8336, label %8331

; <label>:8331                                    ; preds = %8323
  %8332 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  %8333 = fadd fast float %8327, -1.000000e+00
  %8334 = fmul fast float %8332, %8333
  %8335 = fadd fast float %8334, 1.000000e+00
  br label %8336

; <label>:8336                                    ; preds = %8331, %8323
  %8337 = phi float [ %8335, %8331 ], [ %8325, %8323 ]
  br i1 %8099, label %8338, label %8356

; <label>:8338                                    ; preds = %8336
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8341 = fsub fast float %8176, %8340
  %8342 = call float @dx.op.unary.f32(i32 7, float %8341)  ; Saturate(value)
  %8343 = fsub fast float %8176, %8098
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fsub fast float %8342, %8344
  %8346 = fsub fast float %8178, %8344
  %8347 = fdiv fast float %8346, %8345
  %8348 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8349 = fmul fast float %8348, 2.000000e+00
  %8350 = fsub fast float 3.000000e+00, %8349
  %8351 = fsub fast float %8327, %8337
  %8352 = fmul fast float %8348, %8348
  %8353 = fmul fast float %8352, %8351
  %8354 = fmul fast float %8353, %8350
  %8355 = fadd fast float %8354, %8337
  br label %8356

; <label>:8356                                    ; preds = %8338, %8336
  %8357 = phi float [ %8355, %8338 ], [ %8337, %8336 ]
  %8358 = call float @dx.op.binary.f32(i32 35, float %8327, float %8357)  ; FMax(a,b)
  %8359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.i32 %8359, 2
  %8361 = and i32 %8360, 1
  %8362 = icmp eq i32 %8361, 0
  %8363 = fcmp fast une float %8358, 1.000000e+00
  %8364 = and i1 %8363, %8362
  br i1 %8364, label %8365, label %8384

; <label>:8365                                    ; preds = %8356
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8045, float %8046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.ResRet.f32 %8366, 1
  %8369 = extractvalue %dx.types.ResRet.f32 %8366, 2
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 1
  %8372 = fmul fast float %8371, %8367
  %8373 = fmul fast float %8371, %8368
  %8374 = fmul fast float %8371, %8369
  %8375 = fcmp fast ogt float %8327, 0x3FEFFF2E40000000
  %8376 = fsub fast float 1.000000e+00, %8358
  %8377 = fsub fast float 1.000000e+00, %8327
  %8378 = fdiv fast float %8376, %8377
  %8379 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8380 = select i1 %8375, float 0.000000e+00, float %8379
  %8381 = fmul fast float %8372, %8380
  %8382 = fmul fast float %8373, %8380
  %8383 = fmul fast float %8374, %8380
  br label %8384

; <label>:8384                                    ; preds = %8365, %8356
  %8385 = phi float [ 0.000000e+00, %8356 ], [ %8381, %8365 ]
  %8386 = phi float [ 0.000000e+00, %8356 ], [ %8382, %8365 ]
  %8387 = phi float [ 0.000000e+00, %8356 ], [ %8383, %8365 ]
  %8388 = fmul fast float %8385, %6962
  %8389 = fmul fast float %8386, %6962
  %8390 = fmul fast float %8387, %6962
  %8391 = fmul fast float %8358, %8020
  %8392 = call float @dx.op.dot3.f32(i32 55, float %8358, float %8358, float %8358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8393 = call float @dx.op.dot3.f32(i32 55, float %8388, float %8389, float %8390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8394 = select i1 %203, float %8392, float %8358
  %8395 = select i1 %203, float 1.000000e+00, float %8358
  %8396 = select i1 %203, float %8393, float %8388
  %8397 = select i1 %203, float 0.000000e+00, float %8389
  %8398 = select i1 %203, float 0.000000e+00, float %8390
  %8399 = fmul fast float %8394, %8032
  %8400 = fmul fast float %8394, %8033
  %8401 = fmul fast float %8395, %8034
  %8402 = fadd fast float %8399, %8396
  %8403 = fadd fast float %8400, %8397
  %8404 = fadd fast float %8398, %8401
  %8405 = fmul fast float %8394, %8035
  %8406 = fmul fast float %8394, %8036
  %8407 = fmul fast float %8395, %8037
  br label %8408

; <label>:8408                                    ; preds = %8384, %8041, %8010, %7242
  %8409 = phi float [ %7247, %7242 ], [ %8032, %8010 ], [ %8402, %8384 ], [ %8032, %8041 ]
  %8410 = phi float [ %7248, %7242 ], [ %8033, %8010 ], [ %8403, %8384 ], [ %8033, %8041 ]
  %8411 = phi float [ %7249, %7242 ], [ %8034, %8010 ], [ %8404, %8384 ], [ %8034, %8041 ]
  %8412 = phi float [ %7250, %7242 ], [ %8035, %8010 ], [ %8405, %8384 ], [ %8035, %8041 ]
  %8413 = phi float [ %7251, %7242 ], [ %8036, %8010 ], [ %8406, %8384 ], [ %8036, %8041 ]
  %8414 = phi float [ %7252, %7242 ], [ %8037, %8010 ], [ %8407, %8384 ], [ %8037, %8041 ]
  %8415 = phi float [ %7253, %7242 ], [ %8020, %8010 ], [ %8391, %8384 ], [ %8020, %8041 ]
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 3
  %8419 = fmul fast float %8417, %87
  %8420 = fmul fast float %8418, %88
  %8421 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8422 = call float @dx.op.unary.f32(i32 7, float %8420)  ; Saturate(value)
  %8423 = select i1 %6984, i32 2, i32 0
  %8424 = or i32 %8423, 1
  %8425 = uitofp i32 %8424 to float
  %8426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8421, float %8422, float %8425, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8427 = extractvalue %dx.types.ResRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.ResRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.ResRet.f32 %8426, 2
  %8430 = extractvalue %dx.types.ResRet.f32 %8426, 3
  %8431 = add nuw nsw i32 %8423, 2
  %8432 = uitofp i32 %8431 to float
  %8433 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8421, float %8422, float %8432, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8434 = extractvalue %dx.types.ResRet.f32 %8433, 0
  %8435 = extractvalue %dx.types.ResRet.f32 %8433, 1
  %8436 = extractvalue %dx.types.ResRet.f32 %8433, 2
  %8437 = extractvalue %dx.types.ResRet.f32 %8433, 3
  %8438 = call float @dx.op.binary.f32(i32 35, float %8428, float %8429)  ; FMax(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8427, float %8438)  ; FMax(a,b)
  %8440 = call float @dx.op.binary.f32(i32 35, float %8439, float %8430)  ; FMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8435, float %8436)  ; FMin(a,b)
  %8442 = call float @dx.op.binary.f32(i32 36, float %8434, float %8441)  ; FMin(a,b)
  %8443 = call float @dx.op.binary.f32(i32 36, float %8442, float %8437)  ; FMin(a,b)
  %8444 = fmul fast float %8440, 2.550000e+02
  %8445 = fadd fast float %8444, 0x3F70101020000000
  %8446 = fptoui float %8445 to i32
  %8447 = fmul fast float %8443, 2.550000e+02
  %8448 = fadd fast float %8447, 0x3F70101020000000
  %8449 = fptoui float %8448 to i32
  %8450 = icmp ult i32 %8446, %8449
  br i1 %8450, label %8451, label %8620

; <label>:8451                                    ; preds = %8408
  %8452 = fcmp fast ogt float %77, 9.843750e-01
  %8453 = fadd fast float %7246, -4.000000e+00
  %8454 = select i1 %8452, float -4.000000e+00, float %8453
  %8455 = call float @dx.op.binary.f32(i32 35, float %8454, float 0.000000e+00)  ; FMax(a,b)
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = fadd fast float %8457, %8455
  %8459 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8460 = fmul fast float %8458, %8459
  %8461 = call float @dx.op.unary.f32(i32 23, float %8460)  ; Log(value)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8463 = fmul fast float %8462, %8461
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8466 = fmul fast float %8463, %8465
  %8467 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8468 = uitofp i32 %8446 to float
  %8469 = uitofp i32 %8449 to float
  %8470 = fadd fast float %8468, 5.000000e-01
  %8471 = fadd fast float %8469, 5.000000e-01
  %8472 = fmul fast float %8465, %8470
  %8473 = fmul fast float %8465, %8471
  %8474 = fadd fast float %8472, 0x3F0FFB4800000000
  %8475 = fadd fast float %8473, 0xBF0FFB4800000000
  %8476 = call float @dx.op.binary.f32(i32 35, float %8467, float %8474)  ; FMax(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8476, float %8475)  ; FMin(a,b)
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8482 = select i1 %6984, float %8481, float 0.000000e+00
  %8483 = fmul fast float %8479, %8477
  %8484 = fadd fast float %8482, %8483
  %8485 = fadd fast float %8482, %8480
  %8486 = fsub fast float %8479, %8480
  %8487 = fadd fast float %8486, %8482
  %8488 = call float @dx.op.binary.f32(i32 35, float %8484, float %8485)  ; FMax(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8488, float %8487)  ; FMin(a,b)
  %8490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8421, float %8422, float %8489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.ResRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.ResRet.f32 %8490, 2
  %8494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.i32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.i32 %8494, 1
  %8497 = uitofp i32 %8495 to float
  %8498 = uitofp i32 %8496 to float
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = fmul fast float %8497, %8421
  %8503 = fmul fast float %8498, %8422
  %8504 = fadd fast float %8502, -5.000000e-01
  %8505 = fadd fast float %8503, -5.000000e-01
  %8506 = call float @dx.op.unary.f32(i32 22, float %8504)  ; Frc(value)
  %8507 = call float @dx.op.unary.f32(i32 22, float %8505)  ; Frc(value)
  %8508 = fmul fast float %8506, %8506
  %8509 = fmul fast float %8508, %8506
  %8510 = fsub fast float 3.000000e+00, %8506
  %8511 = fmul fast float %8508, %8510
  %8512 = fmul fast float %8506, 3.000000e+00
  %8513 = fmul fast float %8509, 3.000000e+00
  %8514 = fmul fast float %8508, 6.000000e+00
  %8515 = fsub fast float %8513, %8514
  %8516 = fadd fast float %8515, 4.000000e+00
  %8517 = fmul fast float %8516, 0x3FC5555560000000
  %8518 = fmul fast float %8509, -3.000000e+00
  %8519 = fadd fast float %8508, %8506
  %8520 = fmul fast float %8519, 3.000000e+00
  %8521 = fadd fast float %8518, 1.000000e+00
  %8522 = fadd fast float %8521, %8520
  %8523 = fmul fast float %8509, 0x3FC5555560000000
  %8524 = fmul fast float %8507, %8507
  %8525 = fmul fast float %8524, %8507
  %8526 = fsub fast float 3.000000e+00, %8507
  %8527 = fmul fast float %8524, %8526
  %8528 = fmul fast float %8507, 3.000000e+00
  %8529 = fmul fast float %8525, 3.000000e+00
  %8530 = fmul fast float %8524, 6.000000e+00
  %8531 = fsub fast float %8529, %8530
  %8532 = fadd fast float %8531, 4.000000e+00
  %8533 = fmul fast float %8532, 0x3FC5555560000000
  %8534 = fmul fast float %8525, -3.000000e+00
  %8535 = fadd fast float %8524, %8507
  %8536 = fmul fast float %8535, 3.000000e+00
  %8537 = fadd fast float %8534, 1.000000e+00
  %8538 = fadd fast float %8537, %8536
  %8539 = fmul fast float %8525, 0x3FC5555560000000
  %8540 = fadd fast float %8506, 1.000000e+00
  %8541 = fsub fast float 1.000000e+00, %8512
  %8542 = fadd fast float %8541, %8511
  %8543 = fadd fast float %8542, %8516
  %8544 = fmul fast float %8543, 0x3FC5555560000000
  %8545 = fdiv fast float %8517, %8544
  %8546 = fsub fast float %8540, %8545
  %8547 = fsub fast float 1.000000e+00, %8506
  %8548 = fadd fast float %8522, %8509
  %8549 = fmul fast float %8548, 0x3FC5555560000000
  %8550 = fdiv fast float %8523, %8549
  %8551 = fadd fast float %8547, %8550
  %8552 = fadd fast float %8507, 1.000000e+00
  %8553 = fsub fast float 1.000000e+00, %8528
  %8554 = fadd fast float %8553, %8527
  %8555 = fadd fast float %8554, %8532
  %8556 = fmul fast float %8555, 0x3FC5555560000000
  %8557 = fdiv fast float %8533, %8556
  %8558 = fsub fast float %8552, %8557
  %8559 = fsub fast float 1.000000e+00, %8507
  %8560 = fadd fast float %8538, %8525
  %8561 = fmul fast float %8560, 0x3FC5555560000000
  %8562 = fdiv fast float %8539, %8561
  %8563 = fadd fast float %8562, %8559
  %8564 = fmul fast float %8546, %8500
  %8565 = fsub fast float %8421, %8564
  %8566 = fmul fast float %8551, %8500
  %8567 = fadd fast float %8566, %8421
  %8568 = fmul fast float %8563, %8501
  %8569 = fadd fast float %8568, %8422
  %8570 = fmul fast float %8558, %8501
  %8571 = fsub fast float %8422, %8570
  %8572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8565, float %8571, float %8489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8573 = extractvalue %dx.types.ResRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.ResRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.ResRet.f32 %8572, 2
  %8576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8567, float %8571, float %8489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8577 = extractvalue %dx.types.ResRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.ResRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.ResRet.f32 %8576, 2
  %8580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8565, float %8569, float %8489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.ResRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.ResRet.f32 %8580, 2
  %8584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8567, float %8569, float %8489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8585 = extractvalue %dx.types.ResRet.f32 %8584, 0
  %8586 = extractvalue %dx.types.ResRet.f32 %8584, 1
  %8587 = extractvalue %dx.types.ResRet.f32 %8584, 2
  %8588 = fsub fast float %8581, %8573
  %8589 = fsub fast float %8582, %8574
  %8590 = fsub fast float %8583, %8575
  %8591 = fmul fast float %8588, %8561
  %8592 = fmul fast float %8589, %8561
  %8593 = fmul fast float %8590, %8561
  %8594 = fadd fast float %8591, %8573
  %8595 = fadd fast float %8592, %8574
  %8596 = fadd fast float %8593, %8575
  %8597 = fsub fast float %8585, %8577
  %8598 = fsub fast float %8586, %8578
  %8599 = fsub fast float %8587, %8579
  %8600 = fmul fast float %8597, %8561
  %8601 = fmul fast float %8598, %8561
  %8602 = fmul fast float %8599, %8561
  %8603 = fsub fast float %8577, %8594
  %8604 = fadd fast float %8603, %8600
  %8605 = fsub fast float %8578, %8595
  %8606 = fadd fast float %8605, %8601
  %8607 = fsub fast float %8579, %8596
  %8608 = fadd fast float %8607, %8602
  %8609 = fmul fast float %8604, %8549
  %8610 = fmul fast float %8606, %8549
  %8611 = fmul fast float %8608, %8549
  %8612 = fadd fast float %8609, %8594
  %8613 = fadd fast float %8610, %8595
  %8614 = fadd fast float %8611, %8596
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8617 = fmul fast float %8612, %8616
  %8618 = fmul fast float %8613, %8616
  %8619 = fmul fast float %8614, %8616
  br label %8620

; <label>:8620                                    ; preds = %8451, %8408
  %8621 = phi float [ %8491, %8451 ], [ 1.000000e+00, %8408 ]
  %8622 = phi float [ %8492, %8451 ], [ 1.000000e+00, %8408 ]
  %8623 = phi float [ %8493, %8451 ], [ 1.000000e+00, %8408 ]
  %8624 = phi float [ %8617, %8451 ], [ 0.000000e+00, %8408 ]
  %8625 = phi float [ %8618, %8451 ], [ 0.000000e+00, %8408 ]
  %8626 = phi float [ %8619, %8451 ], [ 0.000000e+00, %8408 ]
  %8627 = fmul fast float %8624, %6962
  %8628 = fmul fast float %8625, %6962
  %8629 = fmul fast float %8626, %6962
  %8630 = fmul fast float %8621, %8415
  %8631 = call float @dx.op.dot3.f32(i32 55, float %8621, float %8622, float %8623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8632 = call float @dx.op.dot3.f32(i32 55, float %8627, float %8628, float %8629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8633 = select i1 %203, float %8631, float %8621
  %8634 = select i1 %203, float %8631, float %8622
  %8635 = select i1 %203, float 1.000000e+00, float %8623
  %8636 = select i1 %203, float %8632, float %8627
  %8637 = select i1 %203, float 0.000000e+00, float %8628
  %8638 = select i1 %203, float 0.000000e+00, float %8629
  %8639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.i32 %8639, 3
  %8641 = and i32 %8640, 3
  %8642 = icmp ne i32 %8641, 0
  %8643 = and i32 %8640, 4
  %8644 = icmp ne i32 %8643, 0
  %8645 = and i1 %8642, %8644
  %8646 = and i1 %203, %8645
  br i1 %8646, label %8647, label %8653

; <label>:8647                                    ; preds = %8620
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8650 = fadd fast float %8630, -1.000000e+00
  %8651 = fmul fast float %8649, %8650
  %8652 = fadd fast float %8651, 1.000000e+00
  br label %8653

; <label>:8653                                    ; preds = %8647, %8620
  %8654 = phi float [ %8652, %8647 ], [ %8630, %8620 ]
  %8655 = fadd fast float %8412, %8409
  %8656 = fmul fast float %8633, %8655
  %8657 = fadd fast float %8656, %8636
  %8658 = fadd fast float %8413, %8410
  %8659 = fmul fast float %8634, %8658
  %8660 = fadd fast float %8659, %8637
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 0
  br i1 %203, label %8663, label %8686

; <label>:8663                                    ; preds = %8653
  %8664 = fadd fast float %8657, %8660
  %8665 = fmul fast float %8662, %8664
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 3
  %8668 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %8669 = fsub fast float %6971, %6965
  %8670 = fadd fast float %8669, %6972
  %8671 = fsub fast float %8670, %8668
  %8672 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %8673 = fmul fast float %8671, %8672
  %8674 = call float @dx.op.unary.f32(i32 7, float %8673)  ; Saturate(value)
  %8675 = fsub fast float %8674, %8667
  %8676 = fmul fast float %8675, %8654
  %8677 = fadd fast float %8676, %8667
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = fsub fast float %8677, %8679
  %8681 = fmul fast float %8680, 1.000000e+01
  %8682 = call float @dx.op.unary.f32(i32 7, float %8681)  ; Saturate(value)
  %8683 = fmul fast float %8682, %6961
  %8684 = fadd fast float %8683, %6962
  %8685 = fmul fast float %8684, %8677
  br label %8710

; <label>:8686                                    ; preds = %8653
  %8687 = fadd fast float %8414, %8411
  %8688 = fmul fast float %8635, %8687
  %8689 = fadd fast float %8688, %8638
  %8690 = fmul fast float %8662, %8657
  %8691 = fmul fast float %8662, %8660
  %8692 = fmul fast float %8662, %8689
  %8693 = call float @dx.op.binary.f32(i32 35, float %8691, float %8692)  ; FMax(a,b)
  %8694 = call float @dx.op.binary.f32(i32 35, float %8690, float %8693)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float %8694, float %6962)  ; FMax(a,b)
  %8696 = fcmp fast ugt float %8695, 0x3F10000000000000
  br i1 %8696, label %8698, label %8697

; <label>:8697                                    ; preds = %8686
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8698

; <label>:8698                                    ; preds = %8697, %8686
  %8699 = add i32 %41, 356
  %8700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8699, i32 undef)  ; BufferLoad(srv,index,wot)
  %8701 = extractvalue %dx.types.ResRet.i32 %8700, 0
  %8702 = and i32 %8701, 32
  %8703 = icmp eq i32 %8702, 0
  br i1 %8703, label %8710, label %8704

; <label>:8704                                    ; preds = %8698
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = fmul fast float %8706, 0x3FE99999A0000000
  %8708 = fadd fast float %8706, %8690
  %8709 = fadd fast float %8707, %8692
  br label %8710

; <label>:8710                                    ; preds = %8704, %8698, %8663
  %8711 = phi float [ %8665, %8663 ], [ %8708, %8704 ], [ %8690, %8698 ]
  %8712 = phi float [ %8685, %8663 ], [ %8691, %8704 ], [ %8691, %8698 ]
  %8713 = phi float [ %8684, %8663 ], [ %8709, %8704 ], [ %8692, %8698 ]
  %8714 = phi float [ %8684, %8663 ], [ %6962, %8704 ], [ %6962, %8698 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8711, float 3.225500e+04)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8712, float 3.225500e+04)  ; FMin(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8713, float 3.225500e+04)  ; FMin(a,b)
  %8718 = call float @dx.op.binary.f32(i32 36, float %8714, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8715)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8716)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8717)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8718)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

