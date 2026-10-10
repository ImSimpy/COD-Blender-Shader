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
; shader hash: 31cb6537ddaee83831696e0ca0454034
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
  %418 = add i32 %41, 556
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
  %793 = add i32 %41, 508
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
  %1133 = add i32 %41, 524
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
  %1174 = add i32 %41, 540
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
  %1586 = add i32 %41, 512
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
  %1926 = add i32 %41, 528
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
  %1967 = add i32 %41, 544
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
  %2643 = add i32 %41, 516
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
  %2983 = add i32 %41, 532
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
  %3024 = add i32 %41, 548
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
  %3700 = add i32 %41, 520
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
  %4040 = add i32 %41, 536
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
  %4081 = add i32 %41, 552
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
  %4430 = extractvalue %dx.types.ResRet.i32 %4428, 1
  %4431 = bitcast i32 %4429 to float
  %4432 = bitcast i32 %4430 to float
  %4433 = fcmp fast oge float %4431, 0.000000e+00
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4436 = select i1 %4433, float %4431, float %4435
  %4437 = add i32 %41, 504
  %4438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.i32 %4438, 0
  %4440 = add i32 %4439, 0
  %4441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4441, %dx.types.Handle %84, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = fmul fast float %4443, %4432
  %4445 = fadd fast float %4444, %4436
  %4446 = call float @dx.op.dot2.f32(i32 54, float %4408, float %4409, float %4408, float %4409)  ; Dot2(ax,ay,bx,by)
  %4447 = fmul fast float %4446, 0x3FE3333340000000
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4448, float %4408, float %4409, float %4448)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = call float @dx.op.unary.f32(i32 25, float %4449)  ; Rsqrt(value)
  %4451 = fmul fast float %4450, %4408
  %4452 = fmul fast float %4450, %4409
  %4453 = fmul fast float %4448, %4450
  %4454 = fmul fast float %4453, %94
  %4455 = fmul fast float %4453, %95
  %4456 = fmul fast float %4453, %96
  %4457 = fmul fast float %4451, %62
  %4458 = fmul fast float %4451, %63
  %4459 = fmul fast float %4451, %64
  %4460 = fadd fast float %4454, %4457
  %4461 = fadd fast float %4455, %4458
  %4462 = fadd fast float %4456, %4459
  %4463 = fmul fast float %106, %4452
  %4464 = fmul fast float %107, %4452
  %4465 = fmul fast float %108, %4452
  %4466 = fadd fast float %4460, %4463
  %4467 = fadd fast float %4461, %4464
  %4468 = fadd fast float %4462, %4465
  %4469 = call float @dx.op.dot3.f32(i32 55, float %4466, float %4467, float %4468, float %4466, float %4467, float %4468)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call float @dx.op.unary.f32(i32 25, float %4469)  ; Rsqrt(value)
  %4471 = fmul fast float %4466, %4470
  %4472 = fmul fast float %4467, %4470
  %4473 = fmul fast float %4468, %4470
  %4474 = and i32 %43, 1
  %4475 = icmp eq i32 %4474, 0
  br i1 %4475, label %4476, label %5068

; <label>:4476                                    ; preds = %4407
  %4477 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %4478 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %4479 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %4480 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %4481 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %4483 = fadd fast float %4477, %142
  %4484 = fadd fast float %4478, %143
  %4485 = fadd fast float %4479, %144
  %4486 = fadd fast float %4480, %142
  %4487 = fadd fast float %4481, %143
  %4488 = fadd fast float %4482, %144
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4496 = fmul fast float %4490, %87
  %4497 = fmul fast float %4496, %4494
  %4498 = fmul fast float %4491, %88
  %4499 = fmul fast float %4498, %4495
  %4500 = fptoui float %4497 to i32
  %4501 = fptoui float %4499 to i32
  %4502 = fadd fast float %4490, -1.000000e+00
  %4503 = fadd fast float %4491, -1.000000e+00
  %4504 = fptoui float %4502 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = call i32 @dx.op.binary.i32(i32 40, i32 %4500, i32 %4504)  ; UMin(a,b)
  %4507 = call i32 @dx.op.binary.i32(i32 40, i32 %4501, i32 %4505)  ; UMin(a,b)
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4511 = fmul fast float %4509, %78
  %4512 = fsub fast float %4511, %4510
  %4513 = fadd fast float %4492, -1.000000e+00
  %4514 = call float @dx.op.binary.f32(i32 36, float %4512, float %4513)  ; FMin(a,b)
  %4515 = fptoui float %4514 to i32
  %4516 = fptoui float %4490 to i32
  %4517 = fptoui float %4491 to i32
  %4518 = mul i32 %4515, %4517
  %4519 = add i32 %4518, %4507
  %4520 = mul i32 %4519, %4516
  %4521 = add i32 %4520, %4506
  %4522 = shl i32 %4521, 2
  %4523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4522, i32 undef)  ; BufferLoad(srv,index,wot)
  %4524 = extractvalue %dx.types.ResRet.i32 %4523, 0
  %4525 = and i32 %4524, 1023
  %4526 = lshr i32 %4524, 10
  %4527 = icmp eq i32 %4525, 0
  br i1 %4527, label %5031, label %4528

; <label>:4528                                    ; preds = %4476
  %4529 = and i32 %4524, 1023
  br label %4530

; <label>:4530                                    ; preds = %4662, %4528
  %4531 = phi i32 [ %4612, %4662 ], [ 0, %4528 ]
  %4532 = phi float [ %4663, %4662 ], [ 0.000000e+00, %4528 ]
  %4533 = phi float [ %4664, %4662 ], [ %4445, %4528 ]
  %4534 = phi float [ %4665, %4662 ], [ %4426, %4528 ]
  %4535 = phi float [ %4666, %4662 ], [ %4419, %4528 ]
  %4536 = phi float [ %4667, %4662 ], [ %4420, %4528 ]
  %4537 = phi float [ %4668, %4662 ], [ %4421, %4528 ]
  %4538 = phi float [ %4669, %4662 ], [ 0.000000e+00, %4528 ]
  %4539 = phi float [ %4670, %4662 ], [ 0.000000e+00, %4528 ]
  %4540 = phi float [ %4671, %4662 ], [ %4416, %4528 ]
  %4541 = phi float [ %4672, %4662 ], [ %4417, %4528 ]
  %4542 = phi float [ %4673, %4662 ], [ %4418, %4528 ]
  %4543 = phi float [ %4674, %4662 ], [ %4413, %4528 ]
  %4544 = phi float [ %4675, %4662 ], [ %4414, %4528 ]
  %4545 = phi float [ %4676, %4662 ], [ %4415, %4528 ]
  %4546 = phi float [ %4677, %4662 ], [ %4471, %4528 ]
  %4547 = phi float [ %4678, %4662 ], [ %4472, %4528 ]
  %4548 = phi float [ %4679, %4662 ], [ %4473, %4528 ]
  %4549 = phi float [ %4680, %4662 ], [ %4424, %4528 ]
  %4550 = phi float [ %4681, %4662 ], [ %4423, %4528 ]
  %4551 = phi float [ %4682, %4662 ], [ 0.000000e+00, %4528 ]
  %4552 = phi float [ %4683, %4662 ], [ %4422, %4528 ]
  %4553 = phi float [ %4684, %4662 ], [ %4410, %4528 ]
  %4554 = phi float [ %4685, %4662 ], [ %4411, %4528 ]
  %4555 = phi float [ %4686, %4662 ], [ %4412, %4528 ]
  %4556 = add nuw nsw i32 %4531, %4526
  %4557 = shl i32 %4556, 2
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = shl i32 %4559, 8
  %4561 = or i32 %4560, 48
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = or i32 %4560, 64
  %4568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.i32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.i32 %4568, 1
  %4571 = or i32 %4560, 80
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4575 = or i32 %4560, 96
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4560, 112
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4584 = or i32 %4560, 128
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = or i32 %4560, 144
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = or i32 %4560, 160
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = or i32 %4560, 192
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = or i32 %4560, 208
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = or i32 %4560, 248
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = add nuw nsw i32 %4531, 1
  %4613 = bitcast float %4566 to i32
  %4614 = and i32 %4613, 512
  %4615 = icmp eq i32 %4614, 0
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = or i32 %4560, 16
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.ResRet.f32 %4623, 3
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = or i32 %4560, 32
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4631, float %4632, float %4633, float %4634, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = call float @dx.op.unary.f32(i32 27, float %4621)  ; Round_ni(value)
  %4637 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4638 = call float @dx.op.unary.f32(i32 27, float %4628)  ; Round_ni(value)
  %4639 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4640 = call float @dx.op.unary.f32(i32 6, float %4635)  ; FAbs(value)
  %4641 = call float @dx.op.unary.f32(i32 27, float %4640)  ; Round_ni(value)
  %4642 = fadd fast float %4639, %4637
  %4643 = fadd fast float %4642, %4641
  %4644 = fcmp fast oeq float %4643, 0.000000e+00
  %4645 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4483, float %4484, float %4485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4646 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %4483, float %4484, float %4485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4647 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4486, float %4487, float %4488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4648 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %4486, float %4487, float %4488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4649 = fsub fast float %4645, %4621
  %4650 = fsub fast float %4647, %4621
  %4651 = fsub fast float %4646, %4628
  %4652 = fsub fast float %4648, %4628
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4656 = fadd fast float %4655, %4653
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4659 = fcmp fast ogt float %4657, %4658
  %4660 = and i1 %4644, %4659
  %4661 = and i1 %4615, %4660
  br i1 %4661, label %4688, label %4662

; <label>:4662                                    ; preds = %5017, %4769, %4688, %4530
  %4663 = phi float [ %4532, %4688 ], [ %4772, %4769 ], [ %4772, %5017 ], [ %4532, %4530 ]
  %4664 = phi float [ %4533, %4688 ], [ %4533, %4769 ], [ %4993, %5017 ], [ %4533, %4530 ]
  %4665 = phi float [ %4534, %4688 ], [ %4534, %4769 ], [ %4991, %5017 ], [ %4534, %4530 ]
  %4666 = phi float [ %4535, %4688 ], [ %4535, %4769 ], [ %4969, %5017 ], [ %4535, %4530 ]
  %4667 = phi float [ %4536, %4688 ], [ %4536, %4769 ], [ %4970, %5017 ], [ %4536, %4530 ]
  %4668 = phi float [ %4537, %4688 ], [ %4537, %4769 ], [ %4971, %5017 ], [ %4537, %4530 ]
  %4669 = phi float [ %4538, %4688 ], [ %4538, %4769 ], [ %4896, %5017 ], [ %4538, %4530 ]
  %4670 = phi float [ %4539, %4688 ], [ %4539, %4769 ], [ %4894, %5017 ], [ %4539, %4530 ]
  %4671 = phi float [ %4540, %4688 ], [ %4540, %4769 ], [ %4939, %5017 ], [ %4540, %4530 ]
  %4672 = phi float [ %4541, %4688 ], [ %4541, %4769 ], [ %4940, %5017 ], [ %4541, %4530 ]
  %4673 = phi float [ %4542, %4688 ], [ %4542, %4769 ], [ %4941, %5017 ], [ %4542, %4530 ]
  %4674 = phi float [ %4543, %4688 ], [ %4543, %4769 ], [ %5027, %5017 ], [ %4543, %4530 ]
  %4675 = phi float [ %4544, %4688 ], [ %4544, %4769 ], [ %5028, %5017 ], [ %4544, %4530 ]
  %4676 = phi float [ %4545, %4688 ], [ %4545, %4769 ], [ %5029, %5017 ], [ %4545, %4530 ]
  %4677 = phi float [ %4546, %4688 ], [ %4546, %4769 ], [ %4875, %5017 ], [ %4546, %4530 ]
  %4678 = phi float [ %4547, %4688 ], [ %4547, %4769 ], [ %4876, %5017 ], [ %4547, %4530 ]
  %4679 = phi float [ %4548, %4688 ], [ %4548, %4769 ], [ %4877, %5017 ], [ %4548, %4530 ]
  %4680 = phi float [ %4549, %4688 ], [ %4549, %4769 ], [ %4949, %5017 ], [ %4549, %4530 ]
  %4681 = phi float [ %4550, %4688 ], [ %4550, %4769 ], [ %4946, %5017 ], [ %4550, %4530 ]
  %4682 = phi float [ %4551, %4688 ], [ %4551, %4769 ], [ %4943, %5017 ], [ %4551, %4530 ]
  %4683 = phi float [ %4552, %4688 ], [ %4552, %4769 ], [ %4892, %5017 ], [ %4552, %4530 ]
  %4684 = phi float [ %4553, %4688 ], [ %4553, %4769 ], [ %4887, %5017 ], [ %4553, %4530 ]
  %4685 = phi float [ %4554, %4688 ], [ %4554, %4769 ], [ %4888, %5017 ], [ %4554, %4530 ]
  %4686 = phi float [ %4555, %4688 ], [ %4555, %4769 ], [ %4889, %5017 ], [ %4555, %4530 ]
  %4687 = icmp eq i32 %4612, %4529
  br i1 %4687, label %5030, label %4530

; <label>:4688                                    ; preds = %4530
  %4689 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4690 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4694 = extractvalue %dx.types.ResRet.i32 %4568, 3
  %4695 = extractvalue %dx.types.ResRet.i32 %4568, 2
  %4696 = add i32 %4694, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4697, %dx.types.Handle %4698, float %4621, float %4628, float undef, float undef, i32 0, i32 0, i32 undef, float %4649, float %4651, float undef, float %4650, float %4652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %4693
  %4702 = fadd fast float %4701, %4692
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4621, %4577
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4628, float %4704)  ; FMad(a,b,c)
  %4706 = fadd fast float %4705, %4691
  %4707 = fmul fast float %4621, %4579
  %4708 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4628, float %4707)  ; FMad(a,b,c)
  %4709 = fadd fast float %4708, %4690
  %4710 = fmul fast float %4649, %4577
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4651, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4649, %4579
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4651, float %4712)  ; FMad(a,b,c)
  %4714 = fmul fast float %4650, %4577
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4652, float %4714)  ; FMad(a,b,c)
  %4716 = fmul fast float %4650, %4579
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4652, float %4716)  ; FMad(a,b,c)
  %4718 = add i32 %4695, 0
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4719, %dx.types.Handle %4698, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = and i32 %4613, 1024
  %4723 = icmp ne i32 %4722, 0
  %4724 = fcmp fast ogt float %4721, 0x3FE0101020000000
  %4725 = uitofp i1 %4724 to float
  %4726 = select i1 %4723, float %4725, float %4721
  %4727 = and i32 %4613, 8192
  %4728 = icmp ne i32 %4727, 0
  %4729 = select i1 %4728, float %4689, float 1.000000e+00
  %4730 = fmul fast float %4621, 2.000000e+00
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = call float @dx.op.unary.f32(i32 6, float %4731)  ; FAbs(value)
  %4733 = fmul fast float %4732, %4610
  %4734 = fsub fast float %4733, %4610
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4628, 2.000000e+00
  %4737 = fadd fast float %4736, -1.000000e+00
  %4738 = call float @dx.op.unary.f32(i32 6, float %4737)  ; FAbs(value)
  %4739 = fmul fast float %4738, %4611
  %4740 = fsub fast float %4739, %4611
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4640, %4573
  %4743 = fsub fast float %4742, %4573
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4703, %4729
  %4746 = fmul fast float %4745, %4700
  %4747 = fmul fast float %4746, %4735
  %4748 = fmul fast float %4747, %4726
  %4749 = fmul fast float %4748, %4741
  %4750 = fmul fast float %4749, %4744
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4754 = fsub fast float %4657, %4753
  %4755 = fmul fast float %4754, %4752
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4750, %4574
  %4758 = fadd fast float %4750, %4574
  %4759 = fmul fast float %4758, %4583
  %4760 = fsub fast float %4759, %4583
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = and i32 %4613, 128
  %4763 = icmp ne i32 %4762, 0
  %4764 = select i1 %4763, float %4761, float %4757
  %4765 = fmul fast float %4764, %4756
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = fcmp fast ugt float %4765, %4767
  br i1 %4768, label %4769, label %4662

; <label>:4769                                    ; preds = %4688
  %4770 = select i1 %4728, float %4765, float 0.000000e+00
  %4771 = fadd fast float %4770, %4532
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  br i1 %4728, label %4662, label %4773

; <label>:4773                                    ; preds = %4769
  %4774 = and i32 %4613, 4
  %4775 = and i32 %4613, 8
  %4776 = add i32 %4569, 0
  %4777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4777, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = bitcast float %4595 to i32
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = lshr i32 %4784, 8
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = fmul fast float %4783, %4786
  %4791 = fadd fast float %4790, %4789
  %4792 = fmul fast float %4791, 0x3F70101000000000
  %4793 = add i32 %4570, 0
  %4794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4794, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4799 = extractvalue %dx.types.ResRet.f32 %4795, 3
  %4800 = bitcast float %4589 to i32
  %4801 = and i32 %4800, 255
  %4802 = uitofp i32 %4801 to float
  %4803 = lshr i32 %4800, 8
  %4804 = and i32 %4803, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = lshr i32 %4800, 16
  %4807 = and i32 %4806, 255
  %4808 = uitofp i32 %4807 to float
  %4809 = fmul fast float %4808, 0x3F70101000000000
  %4810 = fmul fast float %4796, %4802
  %4811 = fadd fast float %4810, %4805
  %4812 = fmul fast float %4811, 0x3F70101000000000
  %4813 = fadd fast float %4797, -5.000000e-01
  %4814 = fadd fast float %4799, -5.000000e-01
  %4815 = fmul fast float %4813, %4809
  %4816 = fmul fast float %4814, %4809
  %4817 = fadd fast float %4815, 5.000000e-01
  %4818 = fadd fast float %4816, 5.000000e-01
  %4819 = fmul fast float %4780, %4598
  %4820 = fmul fast float %4781, %4599
  %4821 = fmul fast float %4782, %4600
  %4822 = fmul fast float %4817, 2.000000e+00
  %4823 = fadd fast float %4822, -1.000000e+00
  %4824 = fmul fast float %4818, 2.000000e+00
  %4825 = fadd fast float %4824, -1.000000e+00
  %4826 = fadd fast float %4823, %4825
  %4827 = fmul fast float %4826, 5.000000e-01
  %4828 = fsub fast float %4823, %4825
  %4829 = fmul fast float %4828, 5.000000e-01
  %4830 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = call float @dx.op.unary.f32(i32 6, float %4829)  ; FAbs(value)
  %4833 = fsub fast float %4831, %4832
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4829, float %4833, float %4827, float %4829, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.unary.f32(i32 25, float %4834)  ; Rsqrt(value)
  %4836 = fmul fast float %4827, %4835
  %4837 = fmul fast float %4829, %4835
  %4838 = fmul fast float %4835, %4833
  %4839 = fmul fast float %4838, %4563
  %4840 = fmul fast float %4838, %4564
  %4841 = fmul fast float %4838, %4565
  %4842 = fmul fast float %4836, %4586
  %4843 = fmul fast float %4836, %4587
  %4844 = fmul fast float %4836, %4588
  %4845 = fadd fast float %4842, %4839
  %4846 = fadd fast float %4843, %4840
  %4847 = fadd fast float %4844, %4841
  %4848 = fmul fast float %4837, %4592
  %4849 = fmul fast float %4837, %4593
  %4850 = fmul fast float %4837, %4594
  %4851 = fadd fast float %4845, %4848
  %4852 = fadd fast float %4846, %4849
  %4853 = fadd fast float %4847, %4850
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 25, float %4854)  ; Rsqrt(value)
  %4856 = fmul fast float %4851, %4855
  %4857 = fmul fast float %4852, %4855
  %4858 = fmul fast float %4853, %4855
  %4859 = icmp ne i32 %4775, 0
  %4860 = select i1 %4859, float 1.000000e+00, float 0.000000e+00
  %4861 = fmul fast float %4765, %4860
  %4862 = and i32 %4613, 1
  %4863 = icmp eq i32 %4862, 0
  br i1 %4863, label %4864, label %4868

; <label>:4864                                    ; preds = %4773
  %4865 = fsub fast float %4856, %4546
  %4866 = fsub fast float %4857, %4547
  %4867 = fsub fast float %4858, %4548
  br label %4868

; <label>:4868                                    ; preds = %4864, %4773
  %4869 = phi float [ %4865, %4864 ], [ %4856, %4773 ]
  %4870 = phi float [ %4866, %4864 ], [ %4857, %4773 ]
  %4871 = phi float [ %4867, %4864 ], [ %4858, %4773 ]
  %4872 = fmul float %4871, %4861
  %4873 = fmul float %4870, %4861
  %4874 = fmul float %4869, %4861
  %4875 = fadd fast float %4874, %4546
  %4876 = fadd fast float %4873, %4547
  %4877 = fadd fast float %4872, %4548
  %4878 = icmp ne i32 %4774, 0
  %4879 = select i1 %4878, float 1.000000e+00, float 0.000000e+00
  %4880 = fmul fast float %4765, %4879
  %4881 = fsub fast float %4819, %4553
  %4882 = fsub fast float %4820, %4554
  %4883 = fsub fast float %4821, %4555
  %4884 = fmul fast float %4881, %4880
  %4885 = fmul fast float %4882, %4880
  %4886 = fmul fast float %4883, %4880
  %4887 = fadd fast float %4884, %4553
  %4888 = fadd fast float %4885, %4554
  %4889 = fadd fast float %4886, %4555
  %4890 = fsub fast float %4792, %4552
  %4891 = fmul fast float %4890, %4880
  %4892 = fadd fast float %4891, %4552
  %4893 = fmul fast float %4880, %4539
  %4894 = fsub fast float %4539, %4893
  %4895 = fmul fast float %4880, %4538
  %4896 = fsub fast float %4538, %4895
  %4897 = bitcast float %4607 to i32
  %4898 = lshr i32 %4897, 16
  %4899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4898)  ; LegacyF16ToF32(value)
  %4900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.i32 %4900, 0
  %4902 = and i32 %4901, 1
  %4903 = icmp eq i32 %4902, 0
  br i1 %4903, label %4904, label %4929

; <label>:4904                                    ; preds = %4868
  %4905 = fadd fast float %4792, 0xBFB99999A0000000
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 0x3FF1C71C80000000
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, %4819
  %4911 = fmul fast float %4909, %4820
  %4912 = fmul fast float %4909, %4821
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4914, float %4915)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4913, float %4916)  ; FMax(a,b)
  %4918 = fcmp fast ogt float %4917, 0.000000e+00
  %4919 = bitcast float %4917 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = bitcast i32 %4920 to float
  %4922 = select i1 %4918, float %4921, float 0.000000e+00
  %4923 = fmul fast float %4913, %4899
  %4924 = fmul fast float %4914, %4899
  %4925 = fmul fast float %4915, %4899
  %4926 = fmul fast float %4923, %4922
  %4927 = fmul fast float %4924, %4922
  %4928 = fmul fast float %4925, %4922
  br label %4929

; <label>:4929                                    ; preds = %4904, %4868
  %4930 = phi float [ %4899, %4868 ], [ %4926, %4904 ]
  %4931 = phi float [ %4899, %4868 ], [ %4927, %4904 ]
  %4932 = phi float [ %4899, %4868 ], [ %4928, %4904 ]
  %4933 = fsub fast float %4930, %4540
  %4934 = fsub fast float %4931, %4541
  %4935 = fsub fast float %4932, %4542
  %4936 = fmul fast float %4933, %4880
  %4937 = fmul fast float %4934, %4880
  %4938 = fmul fast float %4935, %4880
  %4939 = fadd fast float %4936, %4540
  %4940 = fadd fast float %4937, %4541
  %4941 = fadd fast float %4938, %4542
  %4942 = fadd fast float %4765, %4551
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fsub fast float %4812, %4550
  %4945 = fmul fast float %4944, %4861
  %4946 = fadd fast float %4945, %4550
  %4947 = fsub fast float %4798, %4549
  %4948 = fmul fast float %4947, %4861
  %4949 = fadd fast float %4948, %4549
  br i1 %4863, label %4958, label %4950

; <label>:4950                                    ; preds = %4929
  %4951 = and i32 %4613, 32768
  %4952 = icmp eq i32 %4951, 0
  br i1 %4952, label %4968, label %4953

; <label>:4953                                    ; preds = %4950
  %4954 = fmul fast float %4861, 1.270000e+02
  %4955 = fadd fast float %4954, %4535
  %4956 = fadd fast float %4954, %4536
  %4957 = fadd fast float %4954, %4537
  br label %4968

; <label>:4958                                    ; preds = %4929
  %4959 = fsub fast float 1.270000e+02, %4535
  %4960 = fsub fast float 1.270000e+02, %4536
  %4961 = fsub fast float 1.270000e+02, %4537
  %4962 = fmul fast float %4861, %4959
  %4963 = fmul fast float %4861, %4960
  %4964 = fmul fast float %4861, %4961
  %4965 = fadd fast float %4962, %4535
  %4966 = fadd fast float %4963, %4536
  %4967 = fadd fast float %4964, %4537
  br label %4968

; <label>:4968                                    ; preds = %4958, %4953, %4950
  %4969 = phi float [ %4955, %4953 ], [ %4535, %4950 ], [ %4965, %4958 ]
  %4970 = phi float [ %4956, %4953 ], [ %4536, %4950 ], [ %4966, %4958 ]
  %4971 = phi float [ %4957, %4953 ], [ %4537, %4950 ], [ %4967, %4958 ]
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.CBufRet.f32 %4973, 1
  %4976 = fmul fast float %4975, %4972
  %4977 = fadd fast float %4976, %4974
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = bitcast float %4601 to i32
  %4980 = and i32 %4979, 65535
  %4981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4980)  ; LegacyF16ToF32(value)
  %4982 = lshr i32 %4979, 16
  %4983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4982)  ; LegacyF16ToF32(value)
  %4984 = fcmp fast oge float %4981, 0.000000e+00
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = select i1 %4984, float %4981, float %4986
  %4988 = fadd fast float %4987, %4983
  %4989 = fsub fast float %4978, %4534
  %4990 = fmul fast float %4989, %4765
  %4991 = fadd fast float %4990, %4534
  %4992 = fmul fast float %4988, %4765
  %4993 = call float @dx.op.binary.f32(i32 35, float %4533, float %4992)  ; FMax(a,b)
  %4994 = and i32 %4613, 16
  %4995 = icmp eq i32 %4994, 0
  br i1 %4995, label %5017, label %4996

; <label>:4996                                    ; preds = %4968
  %4997 = add i32 %4604, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = and i32 %4897, 65535
  %5004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5003)  ; LegacyF16ToF32(value)
  %5005 = fmul fast float %5000, %4598
  %5006 = fmul fast float %5001, %4599
  %5007 = fmul fast float %5002, %4600
  %5008 = and i32 %4613, 16384
  %5009 = icmp ne i32 %5008, 0
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = select i1 %5009, float %5011, float 1.000000e+00
  %5013 = fmul fast float %5012, %5004
  %5014 = fmul fast float %5005, %5013
  %5015 = fmul fast float %5006, %5013
  %5016 = fmul fast float %5007, %5013
  br label %5017

; <label>:5017                                    ; preds = %4996, %4968
  %5018 = phi float [ %5014, %4996 ], [ 0.000000e+00, %4968 ]
  %5019 = phi float [ %5015, %4996 ], [ 0.000000e+00, %4968 ]
  %5020 = phi float [ %5016, %4996 ], [ 0.000000e+00, %4968 ]
  %5021 = fsub fast float %5018, %4543
  %5022 = fsub fast float %5019, %4544
  %5023 = fsub fast float %5020, %4545
  %5024 = fmul fast float %5021, %4765
  %5025 = fmul fast float %5022, %4765
  %5026 = fmul fast float %5023, %4765
  %5027 = fadd fast float %5024, %4543
  %5028 = fadd fast float %5025, %4544
  %5029 = fadd fast float %5026, %4545
  br label %4662

; <label>:5030                                    ; preds = %4662
  br label %5031

; <label>:5031                                    ; preds = %5030, %4476
  %5032 = phi float [ 0.000000e+00, %4476 ], [ %4663, %5030 ]
  %5033 = phi float [ %4445, %4476 ], [ %4664, %5030 ]
  %5034 = phi float [ %4426, %4476 ], [ %4665, %5030 ]
  %5035 = phi float [ %4419, %4476 ], [ %4666, %5030 ]
  %5036 = phi float [ %4420, %4476 ], [ %4667, %5030 ]
  %5037 = phi float [ %4421, %4476 ], [ %4668, %5030 ]
  %5038 = phi float [ 0.000000e+00, %4476 ], [ %4669, %5030 ]
  %5039 = phi float [ 0.000000e+00, %4476 ], [ %4670, %5030 ]
  %5040 = phi float [ %4416, %4476 ], [ %4671, %5030 ]
  %5041 = phi float [ %4417, %4476 ], [ %4672, %5030 ]
  %5042 = phi float [ %4418, %4476 ], [ %4673, %5030 ]
  %5043 = phi float [ %4413, %4476 ], [ %4674, %5030 ]
  %5044 = phi float [ %4414, %4476 ], [ %4675, %5030 ]
  %5045 = phi float [ %4415, %4476 ], [ %4676, %5030 ]
  %5046 = phi float [ %4471, %4476 ], [ %4677, %5030 ]
  %5047 = phi float [ %4472, %4476 ], [ %4678, %5030 ]
  %5048 = phi float [ %4473, %4476 ], [ %4679, %5030 ]
  %5049 = phi float [ %4424, %4476 ], [ %4680, %5030 ]
  %5050 = phi float [ %4423, %4476 ], [ %4681, %5030 ]
  %5051 = phi float [ 0.000000e+00, %4476 ], [ %4682, %5030 ]
  %5052 = phi float [ %4422, %4476 ], [ %4683, %5030 ]
  %5053 = phi float [ %4410, %4476 ], [ %4684, %5030 ]
  %5054 = phi float [ %4411, %4476 ], [ %4685, %5030 ]
  %5055 = phi float [ %4412, %4476 ], [ %4686, %5030 ]
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float %5046, float %5047, float %5048)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 25, float %5056)  ; Rsqrt(value)
  %5058 = fmul fast float %5057, %5046
  %5059 = fmul fast float %5057, %5047
  %5060 = fmul fast float %5057, %5048
  %5061 = fadd fast float %5051, %1251
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %5058, float %5059, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = call float @dx.op.unary.f32(i32 25, float %5063)  ; Rsqrt(value)
  %5065 = fmul fast float %5064, %5058
  %5066 = fmul fast float %5064, %5059
  %5067 = fmul fast float %5064, %5060
  br label %5068

; <label>:5068                                    ; preds = %5031, %4407
  %5069 = phi float [ %5065, %5031 ], [ %4471, %4407 ]
  %5070 = phi float [ %5066, %5031 ], [ %4472, %4407 ]
  %5071 = phi float [ %5067, %5031 ], [ %4473, %4407 ]
  %5072 = phi float [ %5053, %5031 ], [ %4410, %4407 ]
  %5073 = phi float [ %5054, %5031 ], [ %4411, %4407 ]
  %5074 = phi float [ %5055, %5031 ], [ %4412, %4407 ]
  %5075 = phi float [ %5043, %5031 ], [ %4413, %4407 ]
  %5076 = phi float [ %5044, %5031 ], [ %4414, %4407 ]
  %5077 = phi float [ %5045, %5031 ], [ %4415, %4407 ]
  %5078 = phi float [ %5035, %5031 ], [ %4419, %4407 ]
  %5079 = phi float [ %5036, %5031 ], [ %4420, %4407 ]
  %5080 = phi float [ %5037, %5031 ], [ %4421, %4407 ]
  %5081 = phi float [ %5040, %5031 ], [ %4416, %4407 ]
  %5082 = phi float [ %5041, %5031 ], [ %4417, %4407 ]
  %5083 = phi float [ %5042, %5031 ], [ %4418, %4407 ]
  %5084 = phi float [ %5052, %5031 ], [ %4422, %4407 ]
  %5085 = phi float [ %5062, %5031 ], [ %1251, %4407 ]
  %5086 = phi float [ %5050, %5031 ], [ %4423, %4407 ]
  %5087 = phi float [ %5049, %5031 ], [ %4424, %4407 ]
  %5088 = phi float [ %5039, %5031 ], [ 0.000000e+00, %4407 ]
  %5089 = phi float [ %5038, %5031 ], [ 0.000000e+00, %4407 ]
  %5090 = phi float [ %5032, %5031 ], [ 0.000000e+00, %4407 ]
  %5091 = phi float [ %5033, %5031 ], [ %4445, %4407 ]
  %5092 = phi float [ %5034, %5031 ], [ %4426, %4407 ]
  %5093 = add i32 %41, 392
  %5094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5093, i32 undef)  ; BufferLoad(srv,index,wot)
  %5095 = extractvalue %dx.types.ResRet.i32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.i32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.i32 %5094, 2
  %5098 = extractvalue %dx.types.ResRet.i32 %5094, 3
  %5099 = bitcast i32 %5095 to float
  %5100 = bitcast i32 %5096 to float
  %5101 = bitcast i32 %5097 to float
  %5102 = bitcast i32 %5098 to float
  %5103 = fsub fast float %5072, %5099
  %5104 = fsub fast float %5073, %5100
  %5105 = fsub fast float %5074, %5101
  %5106 = fmul fast float %5103, %176
  %5107 = fmul fast float %5104, %176
  %5108 = fmul fast float %5105, %176
  %5109 = fadd fast float %5106, %5099
  %5110 = fadd fast float %5107, %5100
  %5111 = fadd fast float %5108, %5101
  %5112 = fsub fast float %5085, %5102
  %5113 = fmul fast float %5112, %176
  %5114 = fadd fast float %5113, %5102
  %5115 = fadd fast float %5084, 0xBFB99999A0000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %5116, 0x3FF1C71C80000000
  %5118 = call float @dx.op.binary.f32(i32 36, float %5084, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5119 = fsub fast float 1.000000e+00, %5117
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5109, %5120
  %5122 = fmul fast float %5110, %5120
  %5123 = fmul fast float %5111, %5120
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5127 = fmul fast float %5109, %5117
  %5128 = fmul fast float %5110, %5117
  %5129 = fmul fast float %5111, %5117
  %5130 = fadd fast float %5127, %5118
  %5131 = fadd fast float %5128, %5118
  %5132 = fadd fast float %5129, %5118
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.i32 %5137, 0
  %5139 = and i32 %5138, 1
  %5140 = icmp eq i32 %5139, 0
  br i1 %5140, label %5155, label %5141

; <label>:5141                                    ; preds = %5068
  %5142 = call float @dx.op.binary.f32(i32 35, float %5125, float %5126)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5124, float %5142)  ; FMax(a,b)
  %5144 = fcmp fast ogt float %5143, 0.000000e+00
  %5145 = bitcast float %5143 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = select i1 %5144, float %5147, float 0.000000e+00
  %5149 = fmul fast float %5124, %5081
  %5150 = fmul fast float %5125, %5082
  %5151 = fmul fast float %5126, %5083
  %5152 = fmul fast float %5149, %5148
  %5153 = fmul fast float %5150, %5148
  %5154 = fmul fast float %5151, %5148
  br label %5155

; <label>:5155                                    ; preds = %5141, %5068
  %5156 = phi float [ %5152, %5141 ], [ %5081, %5068 ]
  %5157 = phi float [ %5153, %5141 ], [ %5082, %5068 ]
  %5158 = phi float [ %5154, %5141 ], [ %5083, %5068 ]
  %5159 = call float @dx.op.binary.f32(i32 36, float %5078, float 1.270000e+02)  ; FMin(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5079, float 1.270000e+02)  ; FMin(a,b)
  %5161 = call float @dx.op.binary.f32(i32 36, float %5080, float 1.270000e+02)  ; FMin(a,b)
  %5162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.i32 %5162, 3
  %5164 = and i32 %5163, 8
  %5165 = icmp ne i32 %5164, 0
  %5166 = call float @dx.op.binary.f32(i32 35, float %5124, float %5109)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5125, float %5109)  ; FMax(a,b)
  %5168 = call float @dx.op.binary.f32(i32 35, float %5126, float %5109)  ; FMax(a,b)
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = select i1 %235, float %5109, float %5124
  %5171 = select i1 %235, float %5169, float %5125
  %5172 = select i1 %235, float 1.000000e+00, float %5126
  %5173 = select i1 %5165, float %5166, float %5170
  %5174 = select i1 %5165, float %5167, float %5171
  %5175 = select i1 %5165, float %5168, float %5172
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = select i1 %235, float %5176, float %5156
  %5178 = select i1 %235, float %5176, float %5157
  %5179 = select i1 %235, float %5176, float %5158
  %5180 = and i32 %211, 3
  %5181 = select i1 %205, i32 %5180, i32 0
  %5182 = icmp eq i32 %5181, 1
  br i1 %5182, label %5183, label %5259

; <label>:5183                                    ; preds = %5155
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5187 = fadd fast float %5185, %142
  %5188 = fadd fast float %5186, %143
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = fsub fast float %5187, %5190
  %5193 = fsub fast float %5188, %5191
  %5194 = fmul fast float %5192, %5192
  %5195 = fmul fast float %5193, %5193
  %5196 = fadd fast float %5194, %5195
  %5197 = call float @dx.op.unary.f32(i32 24, float %5196)  ; Sqrt(value)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5199 = fcmp fast olt float %5197, %5198
  br i1 %5199, label %5200, label %5253

; <label>:5200                                    ; preds = %5183
  %5201 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5202 = fadd fast float %5201, %144
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5210 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5212 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5213 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5214 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5215 = fadd fast float %5212, %5187
  %5216 = fadd fast float %5213, %5188
  %5217 = fadd fast float %5202, %5214
  %5218 = fmul fast float %5215, %5204
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5206, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5208, float %5219)  ; FMad(a,b,c)
  %5221 = fmul fast float %5215, %5209
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5210, float %5221)  ; FMad(a,b,c)
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5211, float %5222)  ; FMad(a,b,c)
  %5224 = fsub fast float %5220, %5212
  %5225 = fsub fast float %5223, %5213
  %5226 = fsub fast float %5224, %5190
  %5227 = fadd fast float %5226, %5198
  %5228 = fsub fast float %5225, %5191
  %5229 = fadd fast float %5228, %5198
  %5230 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5231 = fmul fast float %5227, %5230
  %5232 = fmul fast float %5229, %5230
  %5233 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5234 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5235 = fsub fast float 1.000000e+00, %5233
  %5236 = fsub fast float 1.000000e+00, %5234
  %5237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = fcmp fast ugt float %5238, 0.000000e+00
  br i1 %5239, label %5240, label %5253

; <label>:5240                                    ; preds = %5200
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5243 = fmul fast float %5242, %5238
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5245 = fadd fast float %5244, %5243
  %5246 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5247 = fadd fast float %5245, %5214
  %5248 = fmul fast float %5220, %5208
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5223, float %5211, float %5248)  ; FMad(a,b,c)
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5246, float %5249)  ; FMad(a,b,c)
  %5251 = fsub fast float %5250, %5214
  %5252 = fsub fast float %5251, %5201
  br label %5253

; <label>:5253                                    ; preds = %5240, %5200, %5183
  %5254 = phi i1 [ true, %5240 ], [ false, %5200 ], [ false, %5183 ]
  %5255 = phi float [ %5252, %5240 ], [ -1.310720e+05, %5200 ], [ -1.310720e+05, %5183 ]
  %5256 = fsub fast float %5255, %144
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5254, float %5257, float 1.000000e+00
  br label %5259

; <label>:5259                                    ; preds = %5253, %5155
  %5260 = phi float [ %5258, %5253 ], [ 0.000000e+00, %5155 ]
  %5261 = icmp eq i32 %5181, 3
  %5262 = select i1 %5261, float 1.000000e+00, float %5260
  %5263 = call float @dx.op.binary.f32(i32 35, float %5090, float %5262)  ; FMax(a,b)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fcmp fast une float %5264, 0.000000e+00
  %5266 = fsub fast float -0.000000e+00, %162
  %5267 = fsub fast float -0.000000e+00, %163
  %5268 = fsub fast float -0.000000e+00, %164
  br i1 %5265, label %5269, label %5431

; <label>:5269                                    ; preds = %5259
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = fmul fast float %5264, 2.500000e+00
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5264, 0x4013FFFFE0000000
  %5274 = fadd fast float %5273, 0xBFFFFFFFE0000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5264, 0x4004000020000000
  %5277 = fadd fast float %5276, 0xBFF8000040000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5280 = fmul fast float %5115, 1.000000e+01
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = fmul fast float %5281, 2.000000e+00
  %5283 = fsub fast float 3.000000e+00, %5282
  %5284 = fmul fast float %5281, %5281
  %5285 = fmul fast float %5284, %5283
  %5286 = fsub fast float 1.000000e+00, %5285
  %5287 = fsub fast float 0x3FE3333340000000, %5136
  %5288 = fmul fast float %5287, 0x400AAAAAA0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5286, %5289
  %5291 = fmul fast float %5173, 0x3FEA2B8620000000
  %5292 = fmul fast float %5174, 0x3FEA2B8620000000
  %5293 = fmul fast float %5175, 0x3FEA2B8620000000
  %5294 = fadd fast float %5291, 0x3FC81DFBA0000000
  %5295 = fmul fast float %5294, %5173
  %5296 = fadd fast float %5295, 0x3F910E6020000000
  %5297 = fadd fast float %5292, 0x3FC81DFBA0000000
  %5298 = fmul fast float %5297, %5174
  %5299 = fadd fast float %5298, 0x3F910E6020000000
  %5300 = fadd fast float %5293, 0x3FC81DFBA0000000
  %5301 = fmul fast float %5300, %5175
  %5302 = fadd fast float %5301, 0x3F910E6020000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5306 = fsub fast float %5303, %5173
  %5307 = fsub fast float %5304, %5174
  %5308 = fsub fast float %5305, %5175
  %5309 = fmul fast float %5306, %5279
  %5310 = fmul fast float %5309, %5290
  %5311 = fmul fast float %5307, %5279
  %5312 = fmul fast float %5311, %5290
  %5313 = fmul fast float %5308, %5279
  %5314 = fmul fast float %5313, %5290
  %5315 = fadd fast float %5310, %5173
  %5316 = fadd fast float %5312, %5174
  %5317 = fadd fast float %5314, %5175
  %5318 = fmul fast float %5087, %5087
  %5319 = fmul fast float %5318, %5318
  %5320 = fadd fast float %5275, 1.000000e+00
  %5321 = fsub fast float %5320, %5290
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fsub fast float 1.000000e+00, %5319
  %5326 = call float @dx.op.binary.f32(i32 36, float %5322, float %5325)  ; FMin(a,b)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5326, float %5327)  ; FMax(a,b)
  %5329 = fadd fast float %5324, 0xBFE4CCCCC0000000
  %5330 = fmul fast float %5329, 0x4006DB6DA0000000
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fmul fast float %5331, 2.000000e+00
  %5333 = fsub fast float 3.000000e+00, %5332
  %5334 = bitcast float %5133 to i32
  %5335 = ashr i32 %5334, 1
  %5336 = add nsw i32 %5335, 532487669
  %5337 = bitcast i32 %5336 to float
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = bitcast float %5134 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = fmul fast float %5350, 2.000000e+00
  %5352 = bitcast float %5135 to i32
  %5353 = ashr i32 %5352, 1
  %5354 = add nsw i32 %5353, 532487669
  %5355 = bitcast i32 %5354 to float
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = bitcast float %5356 to i32
  %5358 = sub nsw i32 2129859010, %5357
  %5359 = bitcast i32 %5358 to float
  %5360 = fmul fast float %5359, 2.000000e+00
  %5361 = fsub fast float 0x4002A9FBE0000000, %5342
  %5362 = fadd fast float %5342, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 0x4002A9FBE0000000, %5351
  %5369 = fadd fast float %5351, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = fsub fast float 0x4002A9FBE0000000, %5360
  %5376 = fadd fast float %5360, 0x3FD54FDF00000000
  %5377 = bitcast float %5376 to i32
  %5378 = sub nsw i32 2129859010, %5377
  %5379 = bitcast i32 %5378 to float
  %5380 = fmul fast float %5379, %5375
  %5381 = fmul fast float %5380, %5380
  %5382 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5384 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5381)  ; FMax(a,b)
  %5385 = fsub fast float 1.000000e+00, %5270
  %5386 = fadd fast float %5385, %5286
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float 1.000000e+00, %5262
  %5389 = fmul fast float %5328, %5388
  %5390 = fmul fast float %5331, %5331
  %5391 = fmul fast float %5390, %5389
  %5392 = fmul fast float %5391, %5333
  %5393 = fmul fast float %5388, 0xBFE99999A0000000
  %5394 = fmul fast float %5393, %5279
  %5395 = fmul fast float %5394, %5290
  %5396 = fadd fast float %5395, 1.000000e+00
  %5397 = fadd fast float %5136, -1.000000e+00
  %5398 = fmul fast float %5396, %5397
  %5399 = fadd fast float %5398, 1.000000e+00
  %5400 = fsub fast float %5382, %5133
  %5401 = fsub fast float %5383, %5134
  %5402 = fsub fast float %5384, %5135
  %5403 = fmul fast float %5392, %5400
  %5404 = fmul fast float %5392, %5401
  %5405 = fmul fast float %5392, %5402
  %5406 = fadd fast float %5403, %5133
  %5407 = fadd fast float %5404, %5134
  %5408 = fadd fast float %5405, %5135
  %5409 = fsub fast float %94, %5069
  %5410 = fsub fast float %95, %5070
  %5411 = fsub fast float %96, %5071
  %5412 = fmul fast float %5392, %5409
  %5413 = fmul fast float %5392, %5410
  %5414 = fmul fast float %5392, %5411
  %5415 = fadd fast float %5412, %5069
  %5416 = fadd fast float %5413, %5070
  %5417 = fadd fast float %5414, %5071
  %5418 = fmul fast float %5392, %5387
  %5419 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = fmul fast float %5418, %5420
  %5422 = fadd fast float %5421, %5419
  %5423 = fsub fast float 1.000000e+00, %5087
  %5424 = fmul fast float %5392, %5423
  %5425 = fadd fast float %5424, %5087
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5415, %5427
  %5429 = fmul fast float %5416, %5427
  %5430 = fmul fast float %5417, %5427
  br label %5431

; <label>:5431                                    ; preds = %5269, %5259
  %5432 = phi float [ %5406, %5269 ], [ %5133, %5259 ]
  %5433 = phi float [ %5407, %5269 ], [ %5134, %5259 ]
  %5434 = phi float [ %5408, %5269 ], [ %5135, %5259 ]
  %5435 = phi float [ %5315, %5269 ], [ %5173, %5259 ]
  %5436 = phi float [ %5316, %5269 ], [ %5174, %5259 ]
  %5437 = phi float [ %5317, %5269 ], [ %5175, %5259 ]
  %5438 = phi float [ %5428, %5269 ], [ %5069, %5259 ]
  %5439 = phi float [ %5429, %5269 ], [ %5070, %5259 ]
  %5440 = phi float [ %5430, %5269 ], [ %5071, %5259 ]
  %5441 = phi float [ %5422, %5269 ], [ %5136, %5259 ]
  %5442 = phi float [ %5425, %5269 ], [ %5087, %5259 ]
  %5443 = select i1 %235, float 0.000000e+00, float %5434
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fmul fast float %5446, 2.000000e+00
  %5448 = fmul fast float %5447, %5438
  %5449 = fmul fast float %5447, %5439
  %5450 = fmul fast float %5447, %5440
  %5451 = fsub fast float %162, %5448
  %5452 = fsub fast float %163, %5449
  %5453 = fsub fast float %164, %5450
  %5454 = call float @dx.op.binary.f32(i32 36, float %5442, float 1.000000e+00)  ; FMin(a,b)
  %5455 = fsub fast float 1.000000e+00, %5442
  %5456 = bitcast float %5455 to i32
  %5457 = sub nsw i32 2129859010, %5456
  %5458 = bitcast i32 %5457 to float
  %5459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5460 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = fcmp fast oeq float %5460, 0.000000e+00
  %5462 = fcmp fast oeq float %5459, 0.000000e+00
  %5463 = or i1 %5462, %5461
  br i1 %5463, label %5493, label %5464

; <label>:5464                                    ; preds = %5431
  %5465 = fsub fast float -0.000000e+00, %61
  %5466 = fsub fast float -0.000000e+00, %59
  %5467 = call float @dx.op.unary.f32(i32 24, float %5460)  ; Sqrt(value)
  %5468 = fdiv fast float %5467, %5459
  %5469 = fcmp fast ogt float %5468, 0x3FFB6F8900000000
  %5470 = select i1 %5469, float 0x3FFB6F8900000000, float %5468
  %5471 = fmul fast float %5470, 0x3FE8A23460000000
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = call float @dx.op.binary.f32(i32 35, float %5470, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5474 = fmul fast float %5472, %5459
  %5475 = fmul fast float %5473, 0x3FF279A740000000
  %5476 = fadd fast float %5475, -1.000000e+00
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %60, float %5465, float %5466, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.unary.f32(i32 25, float %5477)  ; Rsqrt(value)
  %5479 = fmul fast float %5478, %5465
  %5480 = fmul fast float %5478, %5466
  %5481 = fmul fast float %5478, %60
  %5482 = fmul fast float %5476, %5476
  %5483 = fsub fast float 1.000000e+00, %5482
  %5484 = fmul fast float %5473, 0x40005F8BE0000000
  %5485 = fsub fast float 0x400C5BF8A0000000, %5484
  %5486 = fdiv fast float %5474, %5485
  %5487 = fmul fast float %5486, 0x3FEE31C3C0000000
  %5488 = fmul fast float %5487, %5483
  %5489 = fmul fast float %5473, 0x3FDACB7480000000
  %5490 = fadd fast float %5489, 0xBFD7347680000000
  %5491 = fmul fast float %5490, %5486
  %5492 = fmul fast float %5491, %5483
  br label %5493

; <label>:5493                                    ; preds = %5464, %5431
  %5494 = phi float [ %5479, %5464 ], [ 0.000000e+00, %5431 ]
  %5495 = phi float [ %5480, %5464 ], [ 0.000000e+00, %5431 ]
  %5496 = phi float [ %5481, %5464 ], [ 0.000000e+00, %5431 ]
  %5497 = phi float [ %5488, %5464 ], [ 0.000000e+00, %5431 ]
  %5498 = phi float [ %5492, %5464 ], [ 0.000000e+00, %5431 ]
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fmul fast float %5499, 0x3FDF454380000000
  %5501 = fmul fast float %5499, %5499
  %5502 = fmul fast float %5501, 0x3FEE471020000000
  %5503 = fadd fast float %5502, 0xBFD42F6020000000
  %5504 = fmul fast float %5459, 0x3FD20DD760000000
  %5505 = fmul fast float %5503, %5498
  %5506 = fadd fast float %5505, %5504
  %5507 = fmul fast float %5500, %5497
  %5508 = fadd fast float %5506, %5507
  %5509 = fsub fast float %5506, %5507
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = fmul fast float %5510, 0x3FDF454380000000
  %5512 = fmul fast float %5510, %5510
  %5513 = fmul fast float %5512, 0x3FEE471020000000
  %5514 = fadd fast float %5513, 0xBFD42F6020000000
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5497, float %5498, float 0x3FD20DD760000000, float %5511, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5517 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fcmp fast oeq float %5517, 0.000000e+00
  %5519 = fcmp fast oeq float %5516, 0.000000e+00
  %5520 = or i1 %5519, %5518
  br i1 %5520, label %5550, label %5521

; <label>:5521                                    ; preds = %5493
  %5522 = fsub fast float -0.000000e+00, %57
  %5523 = fsub fast float -0.000000e+00, %55
  %5524 = call float @dx.op.unary.f32(i32 24, float %5517)  ; Sqrt(value)
  %5525 = fdiv fast float %5524, %5516
  %5526 = fcmp fast ogt float %5525, 0x3FFB6F8900000000
  %5527 = select i1 %5526, float 0x3FFB6F8900000000, float %5525
  %5528 = fmul fast float %5527, 0x3FE8A23460000000
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = call float @dx.op.binary.f32(i32 35, float %5527, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5531 = fmul fast float %5529, %5516
  %5532 = fmul fast float %5530, 0x3FF279A740000000
  %5533 = fadd fast float %5532, -1.000000e+00
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %56, float %5522, float %5523, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = call float @dx.op.unary.f32(i32 25, float %5534)  ; Rsqrt(value)
  %5536 = fmul fast float %5535, %5522
  %5537 = fmul fast float %5535, %5523
  %5538 = fmul fast float %5535, %56
  %5539 = fmul fast float %5533, %5533
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = fmul fast float %5530, 0x40005F8BE0000000
  %5542 = fsub fast float 0x400C5BF8A0000000, %5541
  %5543 = fdiv fast float %5531, %5542
  %5544 = fmul fast float %5543, 0x3FEE31C3C0000000
  %5545 = fmul fast float %5544, %5540
  %5546 = fmul fast float %5530, 0x3FDACB7480000000
  %5547 = fadd fast float %5546, 0xBFD7347680000000
  %5548 = fmul fast float %5547, %5543
  %5549 = fmul fast float %5548, %5540
  br label %5550

; <label>:5550                                    ; preds = %5521, %5493
  %5551 = phi float [ %5536, %5521 ], [ 0.000000e+00, %5493 ]
  %5552 = phi float [ %5537, %5521 ], [ 0.000000e+00, %5493 ]
  %5553 = phi float [ %5538, %5521 ], [ 0.000000e+00, %5493 ]
  %5554 = phi float [ %5545, %5521 ], [ 0.000000e+00, %5493 ]
  %5555 = phi float [ %5549, %5521 ], [ 0.000000e+00, %5493 ]
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fmul fast float %5556, 0x3FDF454380000000
  %5558 = fmul fast float %5556, %5556
  %5559 = fmul fast float %5558, 0x3FEE471020000000
  %5560 = fadd fast float %5559, 0xBFD42F6020000000
  %5561 = fmul fast float %5516, 0x3FD20DD760000000
  %5562 = fmul fast float %5560, %5555
  %5563 = fadd fast float %5562, %5561
  %5564 = fmul fast float %5557, %5554
  %5565 = fadd fast float %5563, %5564
  %5566 = fsub fast float %5563, %5564
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = fmul fast float %5567, 0x3FDF454380000000
  %5569 = fmul fast float %5567, %5567
  %5570 = fmul fast float %5569, 0x3FEE471020000000
  %5571 = fadd fast float %5570, 0xBFD42F6020000000
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5554, float %5555, float 0x3FD20DD760000000, float %5568, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5574 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = fcmp fast oeq float %5574, 0.000000e+00
  %5576 = fcmp fast oeq float %5573, 0.000000e+00
  %5577 = or i1 %5576, %5575
  br i1 %5577, label %5607, label %5578

; <label>:5578                                    ; preds = %5550
  %5579 = fsub fast float -0.000000e+00, %53
  %5580 = fsub fast float -0.000000e+00, %51
  %5581 = call float @dx.op.unary.f32(i32 24, float %5574)  ; Sqrt(value)
  %5582 = fdiv fast float %5581, %5573
  %5583 = fcmp fast ogt float %5582, 0x3FFB6F8900000000
  %5584 = select i1 %5583, float 0x3FFB6F8900000000, float %5582
  %5585 = fmul fast float %5584, 0x3FE8A23460000000
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = call float @dx.op.binary.f32(i32 35, float %5584, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5588 = fmul fast float %5586, %5573
  %5589 = fmul fast float %5587, 0x3FF279A740000000
  %5590 = fadd fast float %5589, -1.000000e+00
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %52, float %5579, float %5580, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 25, float %5591)  ; Rsqrt(value)
  %5593 = fmul fast float %5592, %5579
  %5594 = fmul fast float %5592, %5580
  %5595 = fmul fast float %5592, %52
  %5596 = fmul fast float %5590, %5590
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = fmul fast float %5587, 0x40005F8BE0000000
  %5599 = fsub fast float 0x400C5BF8A0000000, %5598
  %5600 = fdiv fast float %5588, %5599
  %5601 = fmul fast float %5600, 0x3FEE31C3C0000000
  %5602 = fmul fast float %5601, %5597
  %5603 = fmul fast float %5587, 0x3FDACB7480000000
  %5604 = fadd fast float %5603, 0xBFD7347680000000
  %5605 = fmul fast float %5604, %5600
  %5606 = fmul fast float %5605, %5597
  br label %5607

; <label>:5607                                    ; preds = %5578, %5550
  %5608 = phi float [ %5593, %5578 ], [ 0.000000e+00, %5550 ]
  %5609 = phi float [ %5594, %5578 ], [ 0.000000e+00, %5550 ]
  %5610 = phi float [ %5595, %5578 ], [ 0.000000e+00, %5550 ]
  %5611 = phi float [ %5602, %5578 ], [ 0.000000e+00, %5550 ]
  %5612 = phi float [ %5606, %5578 ], [ 0.000000e+00, %5550 ]
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = fmul fast float %5613, 0x3FDF454380000000
  %5615 = fmul fast float %5613, %5613
  %5616 = fmul fast float %5615, 0x3FEE471020000000
  %5617 = fadd fast float %5616, 0xBFD42F6020000000
  %5618 = fmul fast float %5573, 0x3FD20DD760000000
  %5619 = fmul fast float %5617, %5612
  %5620 = fadd fast float %5619, %5618
  %5621 = fmul fast float %5614, %5611
  %5622 = fadd fast float %5620, %5621
  %5623 = fsub fast float %5620, %5621
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = fmul fast float %5624, 0x3FDF454380000000
  %5626 = fmul fast float %5624, %5624
  %5627 = fmul fast float %5626, 0x3FEE471020000000
  %5628 = fadd fast float %5627, 0xBFD42F6020000000
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5573, float %5611, float %5612, float 0x3FD20DD760000000, float %5625, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5565, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5622, float 0.000000e+00)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float %5509, float 0.000000e+00)  ; FMax(a,b)
  %5634 = call float @dx.op.binary.f32(i32 35, float %5566, float 0.000000e+00)  ; FMax(a,b)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5623, float 0.000000e+00)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5515, float 0.000000e+00)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5572, float 0.000000e+00)  ; FMax(a,b)
  %5638 = call float @dx.op.binary.f32(i32 35, float %5629, float 0.000000e+00)  ; FMax(a,b)
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = call float @dx.op.binary.f32(i32 36, float %5435, float %5640)  ; FMin(a,b)
  %5642 = fsub fast float 1.000000e+00, %5454
  %5643 = fmul fast float %5641, %5642
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = bitcast float %5644 to i32
  %5646 = sub nsw i32 2129859010, %5645
  %5647 = bitcast i32 %5646 to float
  %5648 = call float @dx.op.binary.f32(i32 36, float %5436, float %5640)  ; FMin(a,b)
  %5649 = fmul fast float %5648, %5642
  %5650 = fsub fast float 1.000000e+00, %5649
  %5651 = bitcast float %5650 to i32
  %5652 = sub nsw i32 2129859010, %5651
  %5653 = bitcast i32 %5652 to float
  %5654 = call float @dx.op.binary.f32(i32 36, float %5437, float %5640)  ; FMin(a,b)
  %5655 = fmul fast float %5654, %5642
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5630, %5454
  %5661 = fmul fast float %5660, %5647
  %5662 = fmul fast float %5631, %5454
  %5663 = fmul fast float %5662, %5653
  %5664 = fmul fast float %5632, %5454
  %5665 = fmul fast float %5664, %5659
  %5666 = call float @dx.op.binary.f32(i32 36, float %5432, float %5640)  ; FMin(a,b)
  %5667 = fmul fast float %5666, %5642
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = call float @dx.op.binary.f32(i32 36, float %5433, float %5640)  ; FMin(a,b)
  %5673 = fmul fast float %5672, %5642
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = bitcast float %5674 to i32
  %5676 = sub nsw i32 2129859010, %5675
  %5677 = bitcast i32 %5676 to float
  %5678 = call float @dx.op.binary.f32(i32 36, float %5443, float %5640)  ; FMin(a,b)
  %5679 = fmul fast float %5678, %5642
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = bitcast float %5680 to i32
  %5682 = sub nsw i32 2129859010, %5681
  %5683 = bitcast i32 %5682 to float
  %5684 = fmul fast float %5636, %5454
  %5685 = fmul fast float %5684, %5671
  %5686 = fmul fast float %5637, %5454
  %5687 = fmul fast float %5686, %5677
  %5688 = fmul fast float %5638, %5454
  %5689 = fmul fast float %5688, %5683
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5663, float %5665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = select i1 %235, float 0.000000e+00, float %5661
  %5692 = select i1 %235, float %5690, float %5663
  %5693 = select i1 %235, float 0.000000e+00, float %5665
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = select i1 %235, float 0.000000e+00, float %5633
  %5696 = select i1 %235, float %5694, float %5634
  %5697 = select i1 %235, float 0.000000e+00, float %5635
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5685, float %5687, float %5689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = select i1 %235, float 0.000000e+00, float %5685
  %5700 = select i1 %235, float %5698, float %5687
  %5701 = select i1 %235, float 0.000000e+00, float %5689
  %5702 = fmul fast float %4425, %4425
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fmul fast float %5445, 9.843750e-01
  %5705 = fmul fast float %5441, 9.843750e-01
  %5706 = fadd fast float %5704, 7.812500e-03
  %5707 = fadd fast float %5705, 7.812500e-03
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5706, float %5707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.f32 %5708, 2
  %5712 = extractvalue %dx.types.ResRet.f32 %5708, 3
  %5713 = fsub fast float 1.000000e+00, %5703
  %5714 = fsub fast float %5711, %5709
  %5715 = fsub fast float %5712, %5710
  %5716 = fmul fast float %5714, %5713
  %5717 = fmul fast float %5715, %5713
  %5718 = fadd fast float %5716, %5709
  %5719 = fadd fast float %5717, %5710
  %5720 = fmul fast float %5718, %5432
  %5721 = fmul fast float %5718, %5433
  %5722 = fmul fast float %5718, %5443
  %5723 = fadd fast float %5720, %5719
  %5724 = fadd fast float %5721, %5719
  %5725 = fadd fast float %5722, %5719
  %5726 = fcmp fast ogt float %5088, 0.000000e+00
  br i1 %5726, label %5727, label %5753

; <label>:5727                                    ; preds = %5607
  %5728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5088, float %5445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5729 = extractvalue %dx.types.ResRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.ResRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.ResRet.f32 %5728, 2
  %5732 = fadd fast float %5729, -5.000000e-01
  %5733 = fadd fast float %5730, -5.000000e-01
  %5734 = fadd fast float %5731, -5.000000e-01
  %5735 = fsub fast float 1.000000e+00, %5432
  %5736 = fsub fast float 1.000000e+00, %5433
  %5737 = fsub fast float 1.000000e+00, %5443
  %5738 = fmul fast float %5432, 4.000000e+00
  %5739 = fmul fast float %5738, %5735
  %5740 = fmul fast float %5739, %5732
  %5741 = fmul fast float %5433, 4.000000e+00
  %5742 = fmul fast float %5741, %5736
  %5743 = fmul fast float %5742, %5733
  %5744 = fmul fast float %5443, 4.000000e+00
  %5745 = fmul fast float %5744, %5737
  %5746 = fmul fast float %5745, %5734
  %5747 = fadd fast float %5740, %5723
  %5748 = fadd fast float %5743, %5724
  %5749 = fadd fast float %5746, %5725
  %5750 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5751 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5752 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  br label %5753

; <label>:5753                                    ; preds = %5727, %5607
  %5754 = phi float [ %5750, %5727 ], [ %5723, %5607 ]
  %5755 = phi float [ %5751, %5727 ], [ %5724, %5607 ]
  %5756 = phi float [ %5752, %5727 ], [ %5725, %5607 ]
  %5757 = call float @dx.op.binary.f32(i32 35, float %5755, float %5756)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5754, float %5757)  ; FMax(a,b)
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = fcmp fast ogt float %5760, 0x3E7FF19E20000000
  %5762 = fdiv fast float 1.000000e+00, %5760
  %5763 = select i1 %5761, float %5762, float 0.000000e+00
  %5764 = fmul fast float %5763, %5435
  %5765 = fmul fast float %5763, %5436
  %5766 = fmul fast float %5763, %5437
  %5767 = fadd fast float %5764, -1.000000e+00
  %5768 = fadd fast float %5765, -1.000000e+00
  %5769 = fadd fast float %5766, -1.000000e+00
  %5770 = fmul fast float %5767, 5.000000e-01
  %5771 = fmul fast float %5768, 5.000000e-01
  %5772 = fmul fast float %5769, 5.000000e-01
  %5773 = fadd fast float %5770, 1.000000e+00
  %5774 = fadd fast float %5771, 1.000000e+00
  %5775 = fadd fast float %5772, 1.000000e+00
  %5776 = call float @dx.op.binary.f32(i32 35, float %5445, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5777 = fdiv fast float %4425, %5776
  %5778 = fcmp fast olt float %5159, 1.270000e+02
  %5779 = fcmp fast olt float %5160, 1.270000e+02
  %5780 = fcmp fast olt float %5161, 1.270000e+02
  %5781 = fmul fast float %5159, 0xBFF7154760000000
  %5782 = fmul fast float %5781, %5777
  %5783 = fmul fast float %5160, 0xBFF7154760000000
  %5784 = fmul fast float %5783, %5777
  %5785 = fmul fast float %5161, 0xBFF7154760000000
  %5786 = fmul fast float %5785, %5777
  %5787 = call float @dx.op.unary.f32(i32 21, float %5782)  ; Exp(value)
  %5788 = call float @dx.op.unary.f32(i32 21, float %5784)  ; Exp(value)
  %5789 = call float @dx.op.unary.f32(i32 21, float %5786)  ; Exp(value)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5791 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5792 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5793 = select i1 %5778, float %5790, float 0.000000e+00
  %5794 = select i1 %5779, float %5791, float 0.000000e+00
  %5795 = select i1 %5780, float %5792, float 0.000000e+00
  %5796 = fmul fast float %5793, %5759
  %5797 = fmul fast float %5794, %5759
  %5798 = fmul fast float %5795, %5759
  %5799 = fadd fast float %5796, -1.000000e+00
  %5800 = fadd fast float %5797, -1.000000e+00
  %5801 = fadd fast float %5798, -1.000000e+00
  %5802 = fmul fast float %5799, %5114
  %5803 = fmul fast float %5800, %5114
  %5804 = fmul fast float %5801, %5114
  %5805 = fmul fast float %5754, %5699
  %5806 = fmul fast float %5755, %5700
  %5807 = fmul fast float %5756, %5701
  %5808 = fsub fast float 1.000000e+00, %5445
  %5809 = bitcast float %5808 to i32
  %5810 = sitofp i32 %5809 to float
  %5811 = fmul fast float %5810, 5.000000e+00
  %5812 = fadd fast float %5811, 0xC1EFBF8940000000
  %5813 = fptosi float %5812 to i32
  %5814 = bitcast i32 %5813 to float
  %5815 = fmul fast float %5814, %5089
  %5816 = fmul fast float %5691, %5815
  %5817 = fmul fast float %5816, %5759
  %5818 = fmul fast float %5817, %5773
  %5819 = fmul fast float %5692, %5815
  %5820 = fmul fast float %5819, %5759
  %5821 = fmul fast float %5820, %5774
  %5822 = fmul fast float %5693, %5815
  %5823 = fmul fast float %5822, %5759
  %5824 = fmul fast float %5823, %5775
  %5825 = fadd fast float %5805, %5075
  %5826 = fadd fast float %5825, %5818
  %5827 = fmul fast float %5826, %5114
  %5828 = fadd fast float %5806, %5076
  %5829 = fadd fast float %5828, %5821
  %5830 = fmul fast float %5829, %5114
  %5831 = fadd fast float %5807, %5077
  %5832 = fadd fast float %5831, %5824
  %5833 = fmul fast float %5832, %5114
  %5834 = fmul fast float %5433, 0x4012D0A400000000
  %5835 = fadd fast float %5804, 1.000000e+00
  %5836 = fadd fast float %5803, 1.000000e+00
  %5837 = fadd fast float %5802, 1.000000e+00
  %5838 = fmul fast float %5759, %5693
  %5839 = fmul fast float %5759, %5692
  %5840 = fmul fast float %5759, %5691
  %5841 = fsub fast float 1.000000e+00, %5441
  %5842 = fmul fast float %5841, %5114
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fadd fast float %5834, 0x3FDB6377A0000000
  %5847 = fmul fast float %5845, %5846
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fadd fast float %5847, %5848
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = call float @dx.op.binary.f32(i32 35, float %5850, float 0x3F847AE140000000)  ; FMax(a,b)
  %5852 = fmul fast float %5851, %5851
  %5853 = fmul fast float %5852, %5852
  %5854 = fmul fast float %5853, 0xC00A935000000000
  %5855 = call float @dx.op.unary.f32(i32 21, float %5854)  ; Exp(value)
  %5856 = fsub fast float 1.000000e+00, %5855
  %5857 = fmul fast float %5837, %5695
  %5858 = fmul fast float %5857, %5856
  %5859 = fmul fast float %5836, %5696
  %5860 = fmul fast float %5859, %5856
  %5861 = fmul fast float %5835, %5697
  %5862 = fmul fast float %5861, %5856
  %5863 = fadd fast float %5858, %5840
  %5864 = fmul fast float %5863, %5114
  %5865 = fadd fast float %5860, %5839
  %5866 = fmul fast float %5865, %5114
  %5867 = fadd fast float %5862, %5838
  %5868 = fmul fast float %5867, %5114
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 3
  %5871 = fcmp fast oeq float %5870, 0.000000e+00
  br i1 %5871, label %7001, label %5872

; <label>:5872                                    ; preds = %5753
  %5873 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5875 = extractvalue %dx.types.CBufRet.f32 %5869, 2
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %5879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = select i1 %235, float %5881, float %5877
  %5885 = select i1 %235, float %5883, float %5878
  %5886 = select i1 %235, float %5882, float %5879
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5889 = fmul fast float %5888, %94
  %5890 = fmul fast float %5888, %95
  %5891 = fmul fast float %5888, %96
  %5892 = fadd fast float %5889, %142
  %5893 = fadd fast float %5890, %143
  %5894 = fadd fast float %5891, %144
  %5895 = fcmp fast olt float %5870, 0.000000e+00
  br i1 %5895, label %6520, label %5896

; <label>:5896                                    ; preds = %5872
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.CBufRet.f32 %5897, 2
  %5901 = extractvalue %dx.types.CBufRet.f32 %5897, 3
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = fmul fast float %5898, %5892
  %5913 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5899, float %5912)  ; FMad(a,b,c)
  %5914 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %5900, float %5913)  ; FMad(a,b,c)
  %5915 = fadd fast float %5914, %5901
  %5916 = fmul fast float %5903, %5892
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5904, float %5916)  ; FMad(a,b,c)
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %5905, float %5917)  ; FMad(a,b,c)
  %5919 = fadd fast float %5918, %5906
  %5920 = fmul fast float %5908, %5892
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5909, float %5920)  ; FMad(a,b,c)
  %5922 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %5910, float %5921)  ; FMad(a,b,c)
  %5923 = fadd fast float %5922, %5911
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5928 = fmul fast float %5927, %5915
  %5929 = fmul fast float %5927, %5919
  %5930 = fadd fast float %5928, %5925
  %5931 = fadd fast float %5929, %5926
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 3
  %5936 = fmul fast float %5935, %5915
  %5937 = fmul fast float %5935, %5919
  %5938 = fadd fast float %5936, %5933
  %5939 = fadd fast float %5937, %5934
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5942 = fsub fast float %5941, %5923
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = fmul fast float %5942, %5943
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5950 = fadd fast float %5949, %5947
  %5951 = fcmp fast ogt float %5950, 0.000000e+00
  br i1 %5951, label %5952, label %5976

; <label>:5952                                    ; preds = %5896
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = fsub fast float %5938, %5954
  %5957 = fsub fast float %5939, %5955
  %5958 = fcmp fast olt float %5956, 0.000000e+00
  %5959 = fcmp fast olt float %5957, 0.000000e+00
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5965 = select i1 %5958, float %5961, float %5963
  %5966 = select i1 %5959, float %5962, float %5964
  %5967 = fmul fast float %5965, %5956
  %5968 = fmul fast float %5966, %5957
  %5969 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5970 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5972 = call float @dx.op.binary.f32(i32 35, float %5969, float %5970)  ; FMax(a,b)
  %5973 = fsub fast float %5971, %5972
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = fmul fast float %5974, %5946
  br label %5976

; <label>:5976                                    ; preds = %5952, %5896
  %5977 = phi float [ %5975, %5952 ], [ 0.000000e+00, %5896 ]
  %5978 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5979 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5980 = fadd fast float %5979, %5978
  %5981 = fcmp fast ogt float %5980, 0.000000e+00
  %5982 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  br i1 %5981, label %5983, label %6006

; <label>:5983                                    ; preds = %5976
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5987 = fsub fast float %5930, %5985
  %5988 = fsub fast float %5931, %5986
  %5989 = fcmp fast olt float %5987, 0.000000e+00
  %5990 = fcmp fast olt float %5988, 0.000000e+00
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5995 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %5996 = select i1 %5989, float %5992, float %5994
  %5997 = select i1 %5990, float %5993, float %5995
  %5998 = fmul fast float %5996, %5987
  %5999 = fmul fast float %5997, %5988
  %6000 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6001 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6002 = call float @dx.op.binary.f32(i32 35, float %6000, float %6001)  ; FMax(a,b)
  %6003 = fsub fast float %5982, %6002
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = fmul fast float %6004, %5946
  br label %6006

; <label>:6006                                    ; preds = %5983, %5976
  %6007 = phi float [ %6005, %5983 ], [ 0.000000e+00, %5976 ]
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6014 = fsub fast float %5915, %6012
  %6015 = fsub fast float %5919, %6013
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = fcmp fast olt float %6015, 0.000000e+00
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.CBufRet.f32 %6018, 2
  %6022 = extractvalue %dx.types.CBufRet.f32 %6018, 3
  %6023 = select i1 %6016, float %6019, float %6021
  %6024 = select i1 %6017, float %6020, float %6022
  %6025 = fmul fast float %6023, %6014
  %6026 = fmul fast float %6024, %6015
  %6027 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6028 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6029 = call float @dx.op.binary.f32(i32 35, float %6027, float %6028)  ; FMax(a,b)
  %6030 = fsub fast float %5982, %6029
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = call float @dx.op.binary.f32(i32 36, float %6031, float %6010)  ; FMin(a,b)
  %6033 = fmul fast float %6032, %5946
  %6034 = fsub fast float %6007, %6033
  %6035 = fsub fast float %5977, %6007
  %6036 = fsub fast float %6035, %6033
  %6037 = call float @dx.op.binary.f32(i32 35, float %6007, float %5977)  ; FMax(a,b)
  %6038 = call float @dx.op.binary.f32(i32 35, float %6033, float %6037)  ; FMax(a,b)
  %6039 = fcmp fast olt float %6038, 1.000000e+00
  br i1 %6039, label %6040, label %6438, !dx.controlflow.hints !80

; <label>:6040                                    ; preds = %6006
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = fcmp fast une float %6042, 0.000000e+00
  br i1 %6043, label %6044, label %6438, !dx.controlflow.hints !81

; <label>:6044                                    ; preds = %6040
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6059 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6060 = fmul fast float %6046, %5892
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6047, float %6060)  ; FMad(a,b,c)
  %6062 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6048, float %6061)  ; FMad(a,b,c)
  %6063 = fadd fast float %6062, %6049
  %6064 = fmul fast float %6051, %5892
  %6065 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6052, float %6064)  ; FMad(a,b,c)
  %6066 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6053, float %6065)  ; FMad(a,b,c)
  %6067 = fadd fast float %6066, %6054
  %6068 = fmul fast float %6056, %5892
  %6069 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6057, float %6068)  ; FMad(a,b,c)
  %6070 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6058, float %6069)  ; FMad(a,b,c)
  %6071 = fadd fast float %6070, %6059
  %6072 = fcmp fast oge float %6063, 1.000000e+00
  %6073 = fcmp fast oge float %6067, 1.000000e+00
  %6074 = or i1 %6072, %6073
  %6075 = fcmp fast olt float %6063, 0.000000e+00
  %6076 = fcmp fast olt float %6067, 0.000000e+00
  %6077 = or i1 %6075, %6076
  %6078 = or i1 %6074, %6077
  br i1 %6078, label %6438, label %6079, !dx.controlflow.hints !82

; <label>:6079                                    ; preds = %6044
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.i32 %6084, 2
  %6086 = uitofp i32 %6085 to float
  %6087 = extractvalue %dx.types.CBufRet.i32 %6084, 3
  %6088 = uitofp i32 %6087 to float
  %6089 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6090 = fmul fast float %6089, 2.000000e+00
  %6091 = fsub fast float %6063, %6081
  %6092 = fsub fast float %6067, %6082
  %6093 = fmul fast float %6090, %6091
  %6094 = fmul fast float %6090, %6092
  %6095 = fdiv fast float 1.000000e+00, %5875
  %6096 = fmul fast float %6094, %6095
  %6097 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6098 = fmul fast float %6083, %5894
  %6099 = fmul fast float %6098, %6090
  %6100 = call float @dx.op.unary.f32(i32 6, float %6099)  ; FAbs(value)
  %6101 = call float @dx.op.unary.f32(i32 6, float %6093)  ; FAbs(value)
  %6102 = call float @dx.op.binary.f32(i32 35, float %6100, float %6097)  ; FMax(a,b)
  %6103 = call float @dx.op.binary.f32(i32 35, float %6101, float %6102)  ; FMax(a,b)
  %6104 = fmul fast float %6103, 2.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 23, float %6104)  ; Log(value)
  %6106 = call float @dx.op.binary.f32(i32 35, float %6105, float %6086)  ; FMax(a,b)
  %6107 = call float @dx.op.unary.f32(i32 22, float %6106)  ; Frc(value)
  %6108 = fadd fast float %6107, 0xBFEA666660000000
  %6109 = fmul fast float %6108, 8.000000e+00
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6111 = call float @dx.op.unary.f32(i32 27, float %6106)  ; Round_ni(value)
  %6112 = fadd fast float %6111, %6110
  %6113 = call float @dx.op.binary.f32(i32 36, float %6112, float %6088)  ; FMin(a,b)
  %6114 = call float @dx.op.unary.f32(i32 27, float %6113)  ; Round_ni(value)
  %6115 = fsub fast float -0.000000e+00, %6114
  %6116 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6117 = fmul fast float %6116, %6090
  %6118 = fmul fast float %6117, %6063
  %6119 = fmul fast float %6117, %6067
  %6120 = fmul fast float %6118, 2.500000e-01
  %6121 = fmul fast float %6119, 2.500000e-01
  %6122 = fadd fast float %6120, 5.000000e-01
  %6123 = fadd fast float %6121, 5.000000e-01
  %6124 = fsub fast float %6088, %6086
  %6125 = fptoui float %6124 to i32
  %6126 = add i32 %6125, 320
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6126)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = fcmp fast une float %6113, %6088
  %6131 = fsub fast float %6063, %6128
  %6132 = fsub fast float %6067, %6129
  %6133 = call float @dx.op.unary.f32(i32 6, float %6131)  ; FAbs(value)
  %6134 = call float @dx.op.unary.f32(i32 6, float %6132)  ; FAbs(value)
  %6135 = fmul fast float %6133, %6117
  %6136 = fmul fast float %6134, %6117
  %6137 = fcmp fast olt float %6135, 1.000000e+00
  %6138 = fcmp fast olt float %6136, 1.000000e+00
  %6139 = and i1 %6137, %6138
  %6140 = or i1 %6130, %6139
  br i1 %6140, label %6141, label %6438, !dx.controlflow.hints !83

; <label>:6141                                    ; preds = %6079
  %6142 = fmul fast float %6119, 5.000000e-01
  %6143 = fmul fast float %6118, 5.000000e-01
  %6144 = fadd fast float %6142, 5.000000e-01
  %6145 = fadd fast float %6143, 5.000000e-01
  %6146 = sitofp i32 %6085 to float
  %6147 = fsub fast float %6113, %6146
  %6148 = call float @dx.op.unary.f32(i32 27, float %6147)  ; Round_ni(value)
  %6149 = call float @dx.op.unary.f32(i32 22, float %6113)  ; Frc(value)
  %6150 = call float @dx.op.unary.f32(i32 22, float %6145)  ; Frc(value)
  %6151 = call float @dx.op.unary.f32(i32 22, float %6144)  ; Frc(value)
  %6152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6150, float %6151, float %6148, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.ResRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.ResRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.ResRet.f32 %6152, 3
  %6157 = fcmp fast ogt float %6149, 0.000000e+00
  br i1 %6157, label %6158, label %6179, !dx.controlflow.hints !84

; <label>:6158                                    ; preds = %6141
  %6159 = fadd fast float %6148, 1.000000e+00
  %6160 = call float @dx.op.unary.f32(i32 22, float %6122)  ; Frc(value)
  %6161 = call float @dx.op.unary.f32(i32 22, float %6123)  ; Frc(value)
  %6162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6160, float %6161, float %6159, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.ResRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.ResRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.ResRet.f32 %6162, 3
  %6167 = fsub fast float %6163, %6153
  %6168 = fsub fast float %6164, %6154
  %6169 = fsub fast float %6165, %6155
  %6170 = fsub fast float %6166, %6156
  %6171 = fmul fast float %6167, %6149
  %6172 = fmul fast float %6168, %6149
  %6173 = fmul fast float %6169, %6149
  %6174 = fmul fast float %6170, %6149
  %6175 = fadd fast float %6171, %6153
  %6176 = fadd fast float %6172, %6154
  %6177 = fadd fast float %6173, %6155
  %6178 = fadd fast float %6174, %6156
  br label %6179

; <label>:6179                                    ; preds = %6158, %6141
  %6180 = phi float [ %6175, %6158 ], [ %6153, %6141 ]
  %6181 = phi float [ %6176, %6158 ], [ %6154, %6141 ]
  %6182 = phi float [ %6177, %6158 ], [ %6155, %6141 ]
  %6183 = phi float [ %6178, %6158 ], [ %6156, %6141 ]
  %6184 = fadd fast float %6180, -5.000000e-01
  %6185 = fadd fast float %6182, -5.000000e-01
  %6186 = fmul fast float %6184, 0xBFD5555560000000
  %6187 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6185, float %6186)  ; FMad(a,b,c)
  %6188 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6181, float 0.000000e+00)  ; FMad(a,b,c)
  %6189 = fadd fast float %6188, %6183
  %6190 = fmul fast float %6184, -7.500000e-01
  %6191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6185, float %6190)  ; FMad(a,b,c)
  %6192 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6181, float 0.000000e+00)  ; FMad(a,b,c)
  %6193 = fadd fast float %6192, %6183
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 0
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6200 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6201 = fsub fast float %6197, %6187
  %6202 = fsub fast float %6198, %6189
  %6203 = fsub fast float %6199, %6191
  %6204 = fsub fast float %6200, %6193
  %6205 = fmul fast float %6201, %6195
  %6206 = fmul fast float %6202, %6195
  %6207 = fmul fast float %6203, %6195
  %6208 = fmul fast float %6204, %6195
  %6209 = fadd fast float %6205, %6187
  %6210 = fadd fast float %6206, %6189
  %6211 = fadd fast float %6207, %6191
  %6212 = fadd fast float %6208, %6193
  %6213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.i32 %6213, 0
  %6215 = and i32 %6214, 536870911
  %6216 = uitofp i32 %6215 to float
  %6217 = fmul fast float %6216, %6063
  %6218 = fmul fast float %6216, %6067
  %6219 = fptoui float %6217 to i32
  %6220 = fptoui float %6218 to i32
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = and i32 %6222, 31
  %6224 = lshr i32 %6219, %6223
  %6225 = lshr i32 %6220, %6223
  %6226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.i32 %6226, 0
  %6228 = and i32 %6227, 31
  %6229 = shl i32 1, %6228
  %6230 = call i32 @dx.op.binary.i32(i32 40, i32 %6229, i32 4)  ; UMin(a,b)
  %6231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.i32 %6231, 0
  %6233 = extractvalue %dx.types.ResRet.i32 %6231, 1
  %6234 = icmp eq i32 %6230, 0
  br i1 %6234, label %6276, label %6235

; <label>:6235                                    ; preds = %6179
  br label %6236

; <label>:6236                                    ; preds = %6264, %6235
  %6237 = phi i32 [ %6267, %6264 ], [ 0, %6235 ]
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = lshr i32 %6239, 16
  %6241 = and i32 %6240, 31
  %6242 = shl i32 %6225, %6241
  %6243 = add i32 %6242, %6224
  %6244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.i32 %6244, 0
  %6246 = and i32 %6245, 31
  %6247 = shl i32 %6243, %6246
  %6248 = add i32 %6247, %6237
  %6249 = shl i32 %6248, 2
  %6250 = add i32 %6249, 32
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = icmp slt i32 %6252, 0
  %6254 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6237
  %6255 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6237
  %6256 = bitcast float* %6254 to i32*
  %6257 = bitcast float* %6255 to i32*
  br i1 %6253, label %6258, label %6264

; <label>:6258                                    ; preds = %6236
  %6259 = and i32 %6252, 1073741823
  %6260 = add nuw nsw i32 %6259, 20
  %6261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.i32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.i32 %6261, 1
  br label %6264

; <label>:6264                                    ; preds = %6258, %6236
  %6265 = phi i32 [ %6262, %6258 ], [ %6232, %6236 ]
  %6266 = phi i32 [ %6263, %6258 ], [ %6233, %6236 ]
  store i32 %6265, i32* %6256, align 4
  store i32 %6266, i32* %6257, align 4
  %6267 = add nuw i32 %6237, 1
  %6268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.i32 %6268, 2
  %6270 = icmp eq i32 %6269, 0
  %6271 = icmp ugt i32 %6252, -1073741825
  %6272 = and i1 %6271, %6270
  %6273 = icmp ult i32 %6267, %6230
  %6274 = and i1 %6272, %6273
  br i1 %6274, label %6236, label %6275

; <label>:6275                                    ; preds = %6264
  br label %6276

; <label>:6276                                    ; preds = %6275, %6179
  %6277 = phi i32 [ 0, %6179 ], [ %6267, %6275 ]
  %6278 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6279 = fptoui float %6278 to i32
  %6280 = icmp eq i32 %6279, 0
  br i1 %6280, label %6332, label %6281

; <label>:6281                                    ; preds = %6276
  br label %6282

; <label>:6282                                    ; preds = %6327, %6281
  %6283 = phi i32 [ %6328, %6327 ], [ %6277, %6281 ]
  %6284 = phi i32 [ %6329, %6327 ], [ 0, %6281 ]
  %6285 = lshr i32 %6284, 2
  %6286 = and i32 %6284, 3
  %6287 = add nuw nsw i32 %6285, 83
  %6288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6287)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.i32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.i32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.i32 %6288, 2
  %6292 = extractvalue %dx.types.CBufRet.i32 %6288, 3
  %6293 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6289, i32* %6293, align 4
  %6294 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6290, i32* %6294, align 4
  %6295 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6291, i32* %6295, align 4
  %6296 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6292, i32* %6296, align 4
  %6297 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6286
  %6298 = load i32, i32* %6297, align 4, !tbaa !85, !noalias !89
  %6299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.i32 %6299, 0
  %6301 = lshr i32 %6300, 16
  %6302 = and i32 %6301, 31
  %6303 = shl i32 %6225, %6302
  %6304 = add i32 %6303, %6224
  %6305 = shl i32 %6304, 2
  %6306 = add i32 %6305, %6298
  %6307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.i32 %6307, 0
  %6309 = icmp eq i32 %6308, 0
  br i1 %6309, label %6327, label %6310

; <label>:6310                                    ; preds = %6282
  %6311 = icmp slt i32 %6308, 0
  %6312 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6283
  %6313 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6283
  %6314 = bitcast float* %6312 to i32*
  %6315 = bitcast float* %6313 to i32*
  br i1 %6311, label %6316, label %6323

; <label>:6316                                    ; preds = %6310
  %6317 = and i32 %6308, 1073741823
  %6318 = add i32 %6298, 20
  %6319 = add i32 %6318, %6317
  %6320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6319, i32 undef)  ; BufferLoad(srv,index,wot)
  %6321 = extractvalue %dx.types.ResRet.i32 %6320, 0
  %6322 = extractvalue %dx.types.ResRet.i32 %6320, 1
  br label %6323

; <label>:6323                                    ; preds = %6316, %6310
  %6324 = phi i32 [ %6321, %6316 ], [ %6232, %6310 ]
  %6325 = phi i32 [ %6322, %6316 ], [ %6233, %6310 ]
  store i32 %6324, i32* %6314, align 4
  store i32 %6325, i32* %6315, align 4
  %6326 = add i32 %6283, 1
  br label %6327

; <label>:6327                                    ; preds = %6323, %6282
  %6328 = phi i32 [ %6283, %6282 ], [ %6326, %6323 ]
  %6329 = add nuw i32 %6284, 1
  %6330 = icmp eq i32 %6329, %6279
  br i1 %6330, label %6331, label %6282

; <label>:6331                                    ; preds = %6327
  br label %6332

; <label>:6332                                    ; preds = %6331, %6276
  %6333 = phi i32 [ %6277, %6276 ], [ %6328, %6331 ]
  %6334 = icmp eq i32 %6333, 1
  %6335 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6336 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6334, label %6337, label %6340

; <label>:6337                                    ; preds = %6332
  %6338 = load float, float* %6335, align 4
  %6339 = load float, float* %6336, align 4
  br label %6367

; <label>:6340                                    ; preds = %6332
  %6341 = load float, float* %6335, align 4
  %6342 = load float, float* %6336, align 4
  %6343 = fdiv fast float 1.000000e+00, %6342
  %6344 = fsub fast float %6341, %6343
  %6345 = icmp ugt i32 %6333, 1
  br i1 %6345, label %6346, label %6362

; <label>:6346                                    ; preds = %6340
  br label %6347

; <label>:6347                                    ; preds = %6347, %6346
  %6348 = phi float [ %6357, %6347 ], [ %6344, %6346 ]
  %6349 = phi float [ %6358, %6347 ], [ %6341, %6346 ]
  %6350 = phi i32 [ %6359, %6347 ], [ 1, %6346 ]
  %6351 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6350
  %6352 = load float, float* %6351, align 4
  %6353 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6350
  %6354 = load float, float* %6353, align 4
  %6355 = fdiv fast float 1.000000e+00, %6354
  %6356 = fsub fast float %6352, %6355
  %6357 = call float @dx.op.binary.f32(i32 36, float %6348, float %6356)  ; FMin(a,b)
  %6358 = call float @dx.op.binary.f32(i32 35, float %6349, float %6352)  ; FMax(a,b)
  %6359 = add nuw i32 %6350, 1
  %6360 = icmp eq i32 %6359, %6333
  br i1 %6360, label %6361, label %6347

; <label>:6361                                    ; preds = %6347
  br label %6362

; <label>:6362                                    ; preds = %6361, %6340
  %6363 = phi float [ %6344, %6340 ], [ %6357, %6361 ]
  %6364 = phi float [ %6341, %6340 ], [ %6358, %6361 ]
  %6365 = fsub fast float %6364, %6363
  %6366 = fdiv fast float 1.000000e+00, %6365
  br label %6367

; <label>:6367                                    ; preds = %6362, %6337
  %6368 = phi float [ %6338, %6337 ], [ %6364, %6362 ]
  %6369 = phi float [ %6339, %6337 ], [ %6366, %6362 ]
  %6370 = fadd fast float %6071, %6368
  %6371 = fmul fast float %6370, %6369
  %6372 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6373 = fmul fast float %6372, 2.000000e+00
  %6374 = fsub fast float 1.000000e+00, %6373
  %6375 = fmul fast float %6209, %6209
  %6376 = fsub fast float %6210, %6375
  %6377 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6376)  ; FMax(a,b)
  %6378 = fdiv fast float 1.000000e+00, %6377
  %6379 = fmul fast float %6210, %6209
  %6380 = fsub fast float %6211, %6379
  %6381 = fsub fast float %6374, %6209
  %6382 = fmul fast float %6374, %6374
  %6383 = fsub fast float %6382, %6210
  %6384 = fmul fast float %6378, %6380
  %6385 = fmul fast float %6384, %6381
  %6386 = fsub fast float %6383, %6385
  %6387 = fmul fast float %6210, %6210
  %6388 = fsub fast float %6212, %6387
  %6389 = fmul fast float %6380, %6380
  %6390 = fmul fast float %6389, %6378
  %6391 = fsub fast float %6388, %6390
  %6392 = fdiv fast float %6386, %6391
  %6393 = fmul fast float %6392, %6380
  %6394 = fsub fast float %6381, %6393
  %6395 = fmul fast float %6394, %6378
  %6396 = fmul fast float %6395, %6209
  %6397 = fsub fast float 1.000000e+00, %6396
  %6398 = fmul fast float %6392, %6210
  %6399 = fsub fast float %6397, %6398
  %6400 = fmul fast float %6395, %6395
  %6401 = fmul fast float %6392, 4.000000e+00
  %6402 = fmul fast float %6401, %6399
  %6403 = fsub fast float %6400, %6402
  %6404 = call float @dx.op.unary.f32(i32 24, float %6403)  ; Sqrt(value)
  %6405 = fcmp fast oge float %6395, 0.000000e+00
  %6406 = fsub fast float -0.000000e+00, %6404
  %6407 = select i1 %6405, float %6406, float %6404
  %6408 = fsub fast float %6407, %6395
  %6409 = fdiv fast float %6408, %6392
  %6410 = fdiv fast float %6399, %6408
  %6411 = fmul fast float %6409, 5.000000e-01
  %6412 = fmul fast float %6410, 2.000000e+00
  %6413 = select i1 %6405, float %6411, float %6412
  %6414 = select i1 %6405, float %6412, float %6411
  %6415 = call float @dx.op.binary.f32(i32 35, float %6413, float %6414)  ; FMax(a,b)
  %6416 = call float @dx.op.binary.f32(i32 36, float %6413, float %6414)  ; FMin(a,b)
  %6417 = fcmp fast ogt float %6374, %6415
  %6418 = fsub fast float %6374, %6416
  %6419 = fsub fast float %6374, %6415
  %6420 = fsub fast float %6415, %6416
  %6421 = select i1 %6417, float %6419, float %6420
  %6422 = fmul float %6418, %6421
  %6423 = select i1 %6417, float %6416, float %6374
  %6424 = fcmp fast ogt float %6374, %6416
  %6425 = fmul fast float %6423, %6415
  %6426 = fadd fast float %6423, %6415
  %6427 = fmul fast float %6426, %6209
  %6428 = fadd fast float %6425, %6210
  %6429 = fsub fast float %6428, %6427
  %6430 = fdiv fast float %6429, %6422
  %6431 = select i1 %6424, float %6430, float 0.000000e+00
  %6432 = fsub fast float 1.000000e+00, %6431
  %6433 = select i1 %6417, float %6432, float %6431
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6436 = fmul fast float %6435, %6434
  %6437 = fsub fast float 1.000000e+00, %6436
  br label %6438

; <label>:6438                                    ; preds = %6367, %6079, %6044, %6040, %6006
  %6439 = phi float [ 1.000000e+00, %6006 ], [ %6437, %6367 ], [ 1.000000e+00, %6044 ], [ 1.000000e+00, %6079 ], [ 1.000000e+00, %6040 ]
  %6440 = fcmp fast ogt float %6036, 0.000000e+00
  br i1 %6440, label %6441, label %6447, !dx.controlflow.hints !98

; <label>:6441                                    ; preds = %6438
  %6442 = fadd fast float %5949, %5923
  %6443 = call float @dx.op.binary.f32(i32 35, float %6442, float 0.000000e+00)  ; FMax(a,b)
  %6444 = fadd fast float %6443, 0x3F10000000000000
  %6445 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5938, float %5939, float undef, float undef, i32 0, i32 0, i32 undef, float %6444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6446 = extractvalue %dx.types.ResRet.f32 %6445, 0
  br label %6447

; <label>:6447                                    ; preds = %6441, %6438
  %6448 = phi float [ %6446, %6441 ], [ 1.000000e+00, %6438 ]
  %6449 = fcmp fast ogt float %6034, 0.000000e+00
  br i1 %6449, label %6450, label %6456, !dx.controlflow.hints !99

; <label>:6450                                    ; preds = %6447
  %6451 = fadd fast float %5979, %5923
  %6452 = call float @dx.op.binary.f32(i32 35, float %6451, float 0.000000e+00)  ; FMax(a,b)
  %6453 = fadd fast float %6452, 0x3F10000000000000
  %6454 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5930, float %5931, float undef, float undef, i32 0, i32 0, i32 undef, float %6453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  br label %6456

; <label>:6456                                    ; preds = %6450, %6447
  %6457 = phi float [ %6455, %6450 ], [ 1.000000e+00, %6447 ]
  %6458 = fcmp fast ogt float %6033, 0.000000e+00
  br i1 %6458, label %6459, label %6466, !dx.controlflow.hints !100

; <label>:6459                                    ; preds = %6456
  %6460 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %6461 = fadd fast float %6460, %5923
  %6462 = call float @dx.op.binary.f32(i32 35, float %6461, float 0.000000e+00)  ; FMax(a,b)
  %6463 = fadd fast float %6462, 0x3F10000000000000
  %6464 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5915, float %5919, float undef, float undef, i32 0, i32 0, i32 undef, float %6463)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6465 = extractvalue %dx.types.ResRet.f32 %6464, 0
  br label %6466

; <label>:6466                                    ; preds = %6459, %6456
  %6467 = phi float [ %6465, %6459 ], [ 1.000000e+00, %6456 ]
  %6468 = fsub fast float %6448, %6439
  %6469 = fmul fast float %6468, %5977
  %6470 = fadd fast float %6469, %6439
  %6471 = fsub fast float %6457, %6470
  %6472 = fmul fast float %6471, %6007
  %6473 = fadd fast float %6472, %6470
  %6474 = fsub fast float %6467, %6473
  %6475 = fmul fast float %6474, %6033
  %6476 = fadd fast float %6475, %6473
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6479 = fcmp fast ogt float %6478, 0.000000e+00
  br i1 %6479, label %6480, label %6520, !dx.controlflow.hints !101

; <label>:6480                                    ; preds = %6466
  %6481 = fcmp fast ugt float %6478, 0.000000e+00
  br i1 %6481, label %6482, label %6517

; <label>:6482                                    ; preds = %6480
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6488, 3
  %6493 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = fadd fast float %6496, %5892
  %6500 = fadd fast float %6497, %5893
  %6501 = fadd fast float %6498, %5894
  %6502 = fmul fast float %6499, %6484
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %6485, float %6500, float %6502)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6486, float %6501, float %6503)  ; FMad(a,b,c)
  %6505 = fadd fast float %6504, %6487
  %6506 = fmul fast float %6499, %6489
  %6507 = call float @dx.op.tertiary.f32(i32 46, float %6490, float %6500, float %6506)  ; FMad(a,b,c)
  %6508 = call float @dx.op.tertiary.f32(i32 46, float %6491, float %6501, float %6507)  ; FMad(a,b,c)
  %6509 = fadd fast float %6508, %6492
  %6510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6505, float %6509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6511 = extractvalue %dx.types.ResRet.f32 %6510, 0
  %6512 = fmul fast float %6511, %6494
  %6513 = fadd fast float %6512, %6493
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = fmul fast float %6514, %6478
  %6516 = fsub fast float 1.000000e+00, %6515
  br label %6517

; <label>:6517                                    ; preds = %6482, %6480
  %6518 = phi float [ %6516, %6482 ], [ 1.000000e+00, %6480 ]
  %6519 = fmul fast float %6518, %6476
  br label %6520

; <label>:6520                                    ; preds = %6517, %6466, %5872
  %6521 = phi float [ 1.000000e+00, %5872 ], [ %6519, %6517 ], [ %6476, %6466 ]
  %6522 = call float @dx.op.binary.f32(i32 36, float %6521, float %6521)  ; FMin(a,b)
  %6523 = call float @dx.op.binary.f32(i32 36, float %6521, float %6522)  ; FMin(a,b)
  %6524 = fcmp fast ogt float %6523, 0.000000e+00
  br i1 %6524, label %6525, label %6686, !dx.controlflow.hints !102

; <label>:6525                                    ; preds = %6520
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6541 = fmul fast float %6527, %5892
  %6542 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6528, float %6541)  ; FMad(a,b,c)
  %6543 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6529, float %6542)  ; FMad(a,b,c)
  %6544 = fadd fast float %6543, %6530
  %6545 = fmul fast float %6532, %5892
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6533, float %6545)  ; FMad(a,b,c)
  %6547 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6534, float %6546)  ; FMad(a,b,c)
  %6548 = fadd fast float %6547, %6535
  %6549 = fmul fast float %6537, %5892
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6538, float %6549)  ; FMad(a,b,c)
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %6539, float %6550)  ; FMad(a,b,c)
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6556 = fmul fast float %6555, %6544
  %6557 = fmul fast float %6555, %6548
  %6558 = fadd fast float %6556, %6553
  %6559 = fadd fast float %6557, %6554
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6563 = fsub fast float %6558, %6561
  %6564 = fsub fast float %6559, %6562
  %6565 = fcmp fast olt float %6563, 0.000000e+00
  %6566 = fcmp fast olt float %6564, 0.000000e+00
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6571 = extractvalue %dx.types.CBufRet.f32 %6567, 3
  %6572 = select i1 %6565, float %6568, float %6570
  %6573 = select i1 %6566, float %6569, float %6571
  %6574 = fmul fast float %6572, %6563
  %6575 = fmul fast float %6573, %6564
  %6576 = call float @dx.op.unary.f32(i32 6, float %6574)  ; FAbs(value)
  %6577 = call float @dx.op.unary.f32(i32 6, float %6575)  ; FAbs(value)
  %6578 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %6579 = call float @dx.op.binary.f32(i32 35, float %6576, float %6577)  ; FMax(a,b)
  %6580 = fsub fast float %6578, %6579
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  br i1 %6582, label %6583, label %6624, !dx.controlflow.hints !103

; <label>:6583                                    ; preds = %6525
  %6584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6558, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6585 = extractvalue %dx.types.ResRet.f32 %6584, 1
  %6586 = fcmp fast ogt float %6585, 0.000000e+00
  br i1 %6586, label %6587, label %6619

; <label>:6587                                    ; preds = %6583
  %6588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6558, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.ResRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.ResRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.ResRet.f32 %6588, 3
  %6593 = fsub fast float 1.000000e+00, %6540
  %6594 = fsub fast float %6593, %6551
  %6595 = fmul fast float %6594, 0x400921FB60000000
  %6596 = fadd fast float %6595, 0x3FF921FB60000000
  %6597 = call float @dx.op.unary.f32(i32 13, float %6596)  ; Sin(value)
  %6598 = fadd fast float %6597, -1.000000e+00
  %6599 = fmul fast float %6598, 0x3FD45F3060000000
  %6600 = fmul fast float %6594, 0x401921FB60000000
  %6601 = fadd fast float %6600, 0x400921FB60000000
  %6602 = call float @dx.op.unary.f32(i32 13, float %6601)  ; Sin(value)
  %6603 = fadd fast float %6602, 0x3E7777A5C0000000
  %6604 = fmul fast float %6603, 0x3FC45F3060000000
  %6605 = fmul fast float %6594, 0x4022D97C80000000
  %6606 = fadd fast float %6605, 0x4012D97C80000000
  %6607 = call float @dx.op.unary.f32(i32 13, float %6606)  ; Sin(value)
  %6608 = fadd fast float %6607, 1.000000e+00
  %6609 = fmul fast float %6608, 0x3FBB2995E0000000
  %6610 = fmul fast float %6594, 0x402921FB60000000
  %6611 = fadd fast float %6610, 0x401921FB60000000
  %6612 = call float @dx.op.unary.f32(i32 13, float %6611)  ; Sin(value)
  %6613 = fadd fast float %6612, 0xBE8777A5C0000000
  %6614 = fmul fast float %6613, 0x3FB45F3060000000
  %6615 = call float @dx.op.dot4.f32(i32 56, float %6589, float %6590, float %6591, float %6592, float %6599, float %6604, float %6609, float %6614)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6616 = fmul fast float %6615, 0xBFF7154760000000
  %6617 = call float @dx.op.unary.f32(i32 21, float %6616)  ; Exp(value)
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  br label %6619

; <label>:6619                                    ; preds = %6587, %6583
  %6620 = phi float [ %6618, %6587 ], [ 1.000000e+00, %6583 ]
  %6621 = fadd fast float %6620, -1.000000e+00
  %6622 = fmul fast float %6621, %6581
  %6623 = fadd fast float %6622, 1.000000e+00
  br label %6624

; <label>:6624                                    ; preds = %6619, %6525
  %6625 = phi float [ %6623, %6619 ], [ 1.000000e+00, %6525 ]
  %6626 = fmul fast float %6625, %6521
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.CBufRet.f32 %6627, 1
  %6630 = extractvalue %dx.types.CBufRet.f32 %6627, 2
  %6631 = fadd fast float %6628, %142
  %6632 = fadd fast float %6629, %143
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6635 = fsub fast float -0.000000e+00, %6631
  %6636 = fsub fast float -0.000000e+00, %6632
  %6637 = fsub fast float -0.000000e+00, %144
  %6638 = fsub fast float %6637, %6630
  %6639 = fadd fast float %6638, %6634
  %6640 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6635, float %6636, float %6639)  ; Dot3(ax,ay,az,bx,by,bz)
  %6641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5873, float %5874, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6642 = fdiv fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6642, %6640
  %6644 = fmul fast float %5873, %6643
  %6645 = fmul fast float %5874, %6643
  %6646 = fadd fast float %6644, %6631
  %6647 = fadd fast float %6645, %6632
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = fsub fast float %6646, %6649
  %6652 = fsub fast float %6647, %6650
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6656 = fmul fast float %6651, %6654
  %6657 = fmul fast float %6652, %6655
  %6658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.i32 %6658, 3
  %6660 = icmp eq i32 %6659, 0
  br i1 %6660, label %6666, label %6661

; <label>:6661                                    ; preds = %6624
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.ResRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.ResRet.f32 %6662, 2
  br label %6671

; <label>:6666                                    ; preds = %6624
  %6667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6668 = extractvalue %dx.types.ResRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.ResRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.ResRet.f32 %6667, 2
  br label %6671

; <label>:6671                                    ; preds = %6666, %6661
  %6672 = phi float [ %6663, %6661 ], [ %6668, %6666 ]
  %6673 = phi float [ %6664, %6661 ], [ %6669, %6666 ]
  %6674 = phi float [ %6665, %6661 ], [ %6670, %6666 ]
  %6675 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6676 = fmul fast float %6675, %6672
  %6677 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6678 = fsub fast float %6643, %6677
  %6679 = fsub fast float %6678, %6676
  %6680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6679)  ; FMax(a,b)
  %6681 = fmul fast float %6680, %6673
  %6682 = call float @dx.op.binary.f32(i32 36, float %6674, float %6681)  ; FMin(a,b)
  %6683 = fmul fast float %6682, 0xBFF7154760000000
  %6684 = call float @dx.op.unary.f32(i32 21, float %6683)  ; Exp(value)
  %6685 = fmul fast float %6626, %6684
  br label %6686

; <label>:6686                                    ; preds = %6671, %6520
  %6687 = phi float [ %6685, %6671 ], [ %6521, %6520 ]
  %6688 = call float @dx.op.binary.f32(i32 36, float %6687, float %6687)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6687, float %6688)  ; FMin(a,b)
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  br i1 %6690, label %6691, label %7001, !dx.controlflow.hints !104

; <label>:6691                                    ; preds = %6686
  %6692 = fmul fast float %6687, %5884
  %6693 = fmul fast float %6687, %5885
  %6694 = fmul fast float %6687, %5886
  %6695 = fsub fast float %5873, %162
  %6696 = fsub fast float %5874, %163
  %6697 = fsub fast float %5875, %164
  %6698 = call float @dx.op.dot3.f32(i32 55, float %6695, float %6696, float %6697, float %6695, float %6696, float %6697)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = call float @dx.op.unary.f32(i32 25, float %6698)  ; Rsqrt(value)
  %6700 = fmul fast float %6699, %6695
  %6701 = fmul fast float %6699, %6696
  %6702 = fmul fast float %6699, %6697
  %6703 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6705 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6706 = fmul fast float %6705, %6705
  %6707 = fmul fast float %6706, %5458
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = fmul fast float %6708, %6705
  %6710 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = fmul fast float %6710, %6710
  %6712 = call float @dx.op.unary.f32(i32 6, float %6703)  ; FAbs(value)
  %6713 = call float @dx.op.binary.f32(i32 35, float %5841, float 0x3F847AE140000000)  ; FMax(a,b)
  %6714 = fmul fast float %6713, %6713
  %6715 = fmul fast float %6714, %6714
  %6716 = fsub fast float 1.000000e+00, %6715
  %6717 = fmul fast float %5445, %5445
  %6718 = fmul fast float %6717, %6716
  %6719 = fadd fast float %6718, %6715
  %6720 = bitcast float %6719 to i32
  %6721 = ashr i32 %6720, 1
  %6722 = add nsw i32 %6721, 532487669
  %6723 = bitcast i32 %6722 to float
  %6724 = fadd fast float %6723, %5445
  %6725 = fmul fast float %6715, %6711
  %6726 = fsub fast float 1.000000e+00, %6711
  %6727 = fadd fast float %6726, %6725
  %6728 = fmul fast float %6712, %6712
  %6729 = fmul fast float %6728, %6716
  %6730 = fadd fast float %6729, %6715
  %6731 = bitcast float %6730 to i32
  %6732 = ashr i32 %6731, 1
  %6733 = add nsw i32 %6732, 532487669
  %6734 = bitcast i32 %6733 to float
  %6735 = fadd fast float %6734, %6712
  %6736 = fmul fast float %6727, %6727
  %6737 = fmul fast float %6736, %6724
  %6738 = fmul fast float %6737, %6735
  %6739 = fdiv fast float 0x3FF0A00000000000, %6738
  %6740 = fmul fast float %6739, %6715
  %6741 = fmul fast float %5703, 0x3FF9999980000000
  %6742 = fsub fast float 5.000000e+00, %6741
  %6743 = call float @dx.op.unary.f32(i32 6, float %6704)  ; FAbs(value)
  %6744 = fsub fast float 1.000000e+00, %6743
  %6745 = fmul fast float %5703, 0x41D9660740000000
  %6746 = fadd fast float %6745, 0xC1EFBF8940000000
  %6747 = bitcast float %6744 to i32
  %6748 = sitofp i32 %6747 to float
  %6749 = fmul fast float %6748, %6742
  %6750 = fadd fast float %6746, %6749
  %6751 = fptosi float %6750 to i32
  %6752 = bitcast i32 %6751 to float
  %6753 = fsub fast float 1.000000e+00, %5432
  %6754 = fsub fast float 1.000000e+00, %5433
  %6755 = fsub fast float 1.000000e+00, %5443
  %6756 = fmul fast float %6752, %6753
  %6757 = fmul fast float %6752, %6754
  %6758 = fmul fast float %6752, %6755
  %6759 = fadd fast float %6756, %5432
  %6760 = fadd fast float %6757, %5433
  %6761 = fadd fast float %6758, %5443
  br i1 %5726, label %6762, label %6785

; <label>:6762                                    ; preds = %6691
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5088, float %6743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.ResRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.ResRet.f32 %6763, 2
  %6767 = fadd fast float %6764, -5.000000e-01
  %6768 = fadd fast float %6765, -5.000000e-01
  %6769 = fadd fast float %6766, -5.000000e-01
  %6770 = fmul fast float %5432, 4.000000e+00
  %6771 = fmul fast float %6770, %6753
  %6772 = fmul fast float %6771, %6767
  %6773 = fmul fast float %5433, 4.000000e+00
  %6774 = fmul fast float %6773, %6754
  %6775 = fmul fast float %6774, %6768
  %6776 = fmul fast float %5443, 4.000000e+00
  %6777 = fmul fast float %6776, %6755
  %6778 = fmul fast float %6777, %6769
  %6779 = fadd fast float %6772, %6759
  %6780 = fadd fast float %6775, %6760
  %6781 = fadd fast float %6778, %6761
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6784 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  br label %6785

; <label>:6785                                    ; preds = %6762, %6691
  %6786 = phi float [ %6782, %6762 ], [ %6759, %6691 ]
  %6787 = phi float [ %6783, %6762 ], [ %6760, %6691 ]
  %6788 = phi float [ %6784, %6762 ], [ %6761, %6691 ]
  %6789 = fmul fast float %6703, 9.843750e-01
  %6790 = fadd fast float %6789, 7.812500e-03
  %6791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6790, float %5707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.f32 %6791, 1
  %6794 = extractvalue %dx.types.ResRet.f32 %6791, 2
  %6795 = extractvalue %dx.types.ResRet.f32 %6791, 3
  %6796 = fsub fast float %6794, %6792
  %6797 = fsub fast float %6795, %6793
  %6798 = fmul fast float %6796, %5713
  %6799 = fmul fast float %6797, %5713
  %6800 = fadd fast float %6798, %6792
  %6801 = fadd fast float %6799, %6793
  %6802 = fmul fast float %6800, %5432
  %6803 = fmul fast float %6800, %5433
  %6804 = fmul fast float %6800, %5443
  %6805 = fadd fast float %6802, %6801
  %6806 = fadd fast float %6803, %6801
  %6807 = fadd fast float %6804, %6801
  br i1 %5726, label %6808, label %6831

; <label>:6808                                    ; preds = %6785
  %6809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5088, float %6703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = fadd fast float %6810, -5.000000e-01
  %6814 = fadd fast float %6811, -5.000000e-01
  %6815 = fadd fast float %6812, -5.000000e-01
  %6816 = fmul fast float %5432, 4.000000e+00
  %6817 = fmul fast float %6816, %6753
  %6818 = fmul fast float %6817, %6813
  %6819 = fmul fast float %5433, 4.000000e+00
  %6820 = fmul fast float %6819, %6754
  %6821 = fmul fast float %6820, %6814
  %6822 = fmul fast float %5443, 4.000000e+00
  %6823 = fmul fast float %6822, %6755
  %6824 = fmul fast float %6823, %6815
  %6825 = fadd fast float %6818, %6805
  %6826 = fadd fast float %6821, %6806
  %6827 = fadd fast float %6824, %6807
  %6828 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6829 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  %6830 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  br label %6831

; <label>:6831                                    ; preds = %6808, %6785
  %6832 = phi float [ %6828, %6808 ], [ %6805, %6785 ]
  %6833 = phi float [ %6829, %6808 ], [ %6806, %6785 ]
  %6834 = phi float [ %6830, %6808 ], [ %6807, %6785 ]
  %6835 = call float @dx.op.binary.f32(i32 35, float %6833, float %6834)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 35, float %6832, float %6835)  ; FMax(a,b)
  %6837 = fsub fast float 1.000000e+00, %6836
  %6838 = call float @dx.op.binary.f32(i32 35, float %6712, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6839 = fdiv fast float %4425, %6838
  %6840 = fmul fast float %5781, %6839
  %6841 = fmul fast float %5783, %6839
  %6842 = fmul fast float %5785, %6839
  %6843 = call float @dx.op.unary.f32(i32 21, float %6840)  ; Exp(value)
  %6844 = call float @dx.op.unary.f32(i32 21, float %6841)  ; Exp(value)
  %6845 = call float @dx.op.unary.f32(i32 21, float %6842)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6847 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6849 = select i1 %5778, float %6846, float 0.000000e+00
  %6850 = select i1 %5779, float %6847, float 0.000000e+00
  %6851 = select i1 %5780, float %6848, float 0.000000e+00
  %6852 = fsub fast float -0.000000e+00, %5438
  %6853 = fsub fast float -0.000000e+00, %5439
  %6854 = fsub fast float -0.000000e+00, %5440
  %6855 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %6852, float %6853, float %6854)  ; Dot3(ax,ay,az,bx,by,bz)
  %6856 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  %6857 = fmul fast float %6856, 9.843750e-01
  %6858 = fadd fast float %6857, 7.812500e-03
  %6859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6858, float %5707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.ResRet.f32 %6859, 1
  %6862 = extractvalue %dx.types.ResRet.f32 %6859, 2
  %6863 = extractvalue %dx.types.ResRet.f32 %6859, 3
  %6864 = fsub fast float %6862, %6860
  %6865 = fsub fast float %6863, %6861
  %6866 = fmul fast float %6864, %5713
  %6867 = fmul fast float %6865, %5713
  %6868 = fadd fast float %6866, %6860
  %6869 = fadd fast float %6867, %6861
  %6870 = fmul fast float %6868, %5432
  %6871 = fmul fast float %6868, %5433
  %6872 = fmul fast float %6868, %5443
  %6873 = fadd fast float %6870, %6869
  %6874 = fadd fast float %6871, %6869
  %6875 = fadd fast float %6872, %6869
  br i1 %5726, label %6876, label %6899

; <label>:6876                                    ; preds = %6831
  %6877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5088, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6878 = extractvalue %dx.types.ResRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.ResRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.ResRet.f32 %6877, 2
  %6881 = fadd fast float %6878, -5.000000e-01
  %6882 = fadd fast float %6879, -5.000000e-01
  %6883 = fadd fast float %6880, -5.000000e-01
  %6884 = fmul fast float %5432, 4.000000e+00
  %6885 = fmul fast float %6884, %6753
  %6886 = fmul fast float %6885, %6881
  %6887 = fmul fast float %5433, 4.000000e+00
  %6888 = fmul fast float %6887, %6754
  %6889 = fmul fast float %6888, %6882
  %6890 = fmul fast float %5443, 4.000000e+00
  %6891 = fmul fast float %6890, %6755
  %6892 = fmul fast float %6891, %6883
  %6893 = fadd fast float %6886, %6873
  %6894 = fadd fast float %6889, %6874
  %6895 = fadd fast float %6892, %6875
  %6896 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6897 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6898 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  br label %6899

; <label>:6899                                    ; preds = %6876, %6831
  %6900 = phi float [ %6896, %6876 ], [ %6873, %6831 ]
  %6901 = phi float [ %6897, %6876 ], [ %6874, %6831 ]
  %6902 = phi float [ %6898, %6876 ], [ %6875, %6831 ]
  %6903 = call float @dx.op.binary.f32(i32 35, float %6901, float %6902)  ; FMax(a,b)
  %6904 = call float @dx.op.binary.f32(i32 35, float %6900, float %6903)  ; FMax(a,b)
  %6905 = fsub fast float 1.000000e+00, %6904
  %6906 = fmul fast float %5841, %5846
  %6907 = fadd fast float %5848, %6906
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fsub fast float %5873, %5451
  %6910 = fsub fast float %5874, %5452
  %6911 = fsub fast float %5875, %5453
  %6912 = call float @dx.op.dot3.f32(i32 55, float %6909, float %6910, float %6911, float %6909, float %6910, float %6911)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = call float @dx.op.unary.f32(i32 25, float %6912)  ; Rsqrt(value)
  %6914 = fmul fast float %6913, %6909
  %6915 = fmul fast float %6913, %6910
  %6916 = fmul fast float %6913, %6911
  %6917 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float %6914, float %6915, float %6916)  ; Dot3(ax,ay,az,bx,by,bz)
  %6918 = fmul fast float %6917, %6917
  %6919 = call float @dx.op.unary.f32(i32 6, float %6856)  ; FAbs(value)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6908, float 0x3F847AE140000000)  ; FMax(a,b)
  %6921 = fmul fast float %6920, %6920
  %6922 = fmul fast float %6921, %6921
  %6923 = fsub fast float 1.000000e+00, %6922
  %6924 = fmul fast float %6717, %6923
  %6925 = fadd fast float %6924, %6922
  %6926 = bitcast float %6925 to i32
  %6927 = ashr i32 %6926, 1
  %6928 = add nsw i32 %6927, 532487669
  %6929 = bitcast i32 %6928 to float
  %6930 = fadd fast float %6929, %5445
  %6931 = fmul fast float %6922, %6918
  %6932 = fsub fast float 1.000000e+00, %6918
  %6933 = fadd fast float %6932, %6931
  %6934 = fmul fast float %6919, %6919
  %6935 = fmul fast float %6934, %6923
  %6936 = fadd fast float %6935, %6922
  %6937 = bitcast float %6936 to i32
  %6938 = ashr i32 %6937, 1
  %6939 = add nsw i32 %6938, 532487669
  %6940 = bitcast i32 %6939 to float
  %6941 = fadd fast float %6940, %6919
  %6942 = fmul fast float %6933, %6933
  %6943 = fmul fast float %6942, %6930
  %6944 = fmul fast float %6943, %6941
  %6945 = fdiv fast float 0x3FF0A00000000000, %6944
  %6946 = fmul fast float %6945, %6922
  %6947 = fmul fast float %6856, %6849
  %6948 = fmul fast float %6856, %6850
  %6949 = fmul fast float %6856, %6851
  %6950 = fmul fast float %6947, %6905
  %6951 = fmul fast float %6950, %6946
  %6952 = fmul fast float %6948, %6905
  %6953 = fmul fast float %6952, %6946
  %6954 = fmul fast float %6949, %6905
  %6955 = fmul fast float %6954, %6946
  %6956 = fmul fast float %6786, %6740
  %6957 = fmul fast float %6787, %6740
  %6958 = fmul fast float %6788, %6740
  %6959 = fsub fast float 1.000000e+00, %6704
  %6960 = bitcast float %6959 to i32
  %6961 = sitofp i32 %6960 to float
  %6962 = fmul fast float %6961, 5.000000e+00
  %6963 = fadd fast float %6962, 0xC1EFBF8940000000
  %6964 = fptosi float %6963 to i32
  %6965 = bitcast i32 %6964 to float
  %6966 = fmul fast float %6965, %5089
  %6967 = fmul fast float %6837, %6966
  %6968 = fmul fast float %6967, %5773
  %6969 = fmul fast float %6967, %5774
  %6970 = fmul fast float %6967, %5775
  %6971 = fadd fast float %6968, %6956
  %6972 = fadd fast float %6969, %6957
  %6973 = fadd fast float %6970, %6958
  %6974 = fmul fast float %6971, %6709
  %6975 = fmul fast float %6972, %6709
  %6976 = fmul fast float %6973, %6709
  %6977 = fmul fast float %6709, %6692
  %6978 = fmul fast float %6977, %6837
  %6979 = fmul fast float %6709, %6693
  %6980 = fmul fast float %6979, %6837
  %6981 = fmul fast float %6709, %6694
  %6982 = fmul fast float %6981, %6837
  %6983 = fadd fast float %6974, %6951
  %6984 = fadd fast float %6975, %6953
  %6985 = fadd fast float %6976, %6955
  %6986 = fmul fast float %6983, %6692
  %6987 = fmul fast float %6984, %6693
  %6988 = fmul fast float %6985, %6694
  %6989 = fadd fast float %6978, %5863
  %6990 = fmul fast float %6989, %5114
  %6991 = fadd fast float %6980, %5865
  %6992 = fmul fast float %6991, %5114
  %6993 = fadd fast float %6982, %5867
  %6994 = fmul fast float %6993, %5114
  %6995 = fadd fast float %6986, %5826
  %6996 = fmul fast float %6995, %5114
  %6997 = fadd fast float %6987, %5829
  %6998 = fmul fast float %6997, %5114
  %6999 = fadd fast float %6988, %5832
  %7000 = fmul fast float %6999, %5114
  br label %7001

; <label>:7001                                    ; preds = %6899, %6686, %5753
  %7002 = phi float [ %5827, %5753 ], [ %5827, %6686 ], [ %6996, %6899 ]
  %7003 = phi float [ %5830, %5753 ], [ %5830, %6686 ], [ %6998, %6899 ]
  %7004 = phi float [ %5833, %5753 ], [ %5833, %6686 ], [ %7000, %6899 ]
  %7005 = phi float [ %5864, %5753 ], [ %5864, %6686 ], [ %6990, %6899 ]
  %7006 = phi float [ %5866, %5753 ], [ %5866, %6686 ], [ %6992, %6899 ]
  %7007 = phi float [ %5868, %5753 ], [ %5868, %6686 ], [ %6994, %6899 ]
  %7008 = fmul fast float %5114, %5802
  %7009 = fsub fast float -0.000000e+00, %7008
  %7010 = fmul fast float %5114, %5803
  %7011 = fsub fast float -0.000000e+00, %7010
  %7012 = fmul fast float %5114, %5804
  %7013 = fsub fast float -0.000000e+00, %7012
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = fmul fast float %7015, %5808
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 3
  %7019 = fsub fast float 1.000000e+00, %5092
  %7020 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7021 = fadd fast float %7007, %5091
  %7022 = fmul fast float %7021, %5092
  %7023 = fmul fast float %7020, %7018
  %7024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5093, i32 undef)  ; BufferLoad(srv,index,wot)
  %7025 = extractvalue %dx.types.ResRet.i32 %7024, 3
  %7026 = bitcast i32 %7025 to float
  %7027 = fsub fast float %7009, %7026
  %7028 = fsub fast float %7011, %7026
  %7029 = fsub fast float %7013, %7026
  %7030 = fmul fast float %7027, %176
  %7031 = fmul fast float %7028, %176
  %7032 = fmul fast float %7029, %176
  %7033 = fadd fast float %7030, %7026
  %7034 = fadd fast float %7031, %7026
  %7035 = fadd fast float %7032, %7026
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7038 = fmul fast float %7005, %5435
  %7039 = fmul fast float %7006, %5436
  %7040 = fmul fast float %7007, %5437
  %7041 = fcmp fast ogt float %78, %196
  %7042 = and i1 %7041, %5182
  %7043 = or i1 %5261, %7042
  %7044 = icmp eq i32 %5181, 2
  %7045 = fcmp fast ole float %78, %196
  %7046 = and i1 %7045, %7044
  %7047 = or i1 %7046, %7043
  br i1 %7042, label %7048, label %7305

; <label>:7048                                    ; preds = %7001
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 3
  %7052 = fmul fast float %7050, %87
  %7053 = fmul fast float %7051, %88
  %7054 = call float @dx.op.unary.f32(i32 7, float %7052)  ; Saturate(value)
  %7055 = call float @dx.op.unary.f32(i32 7, float %7053)  ; Saturate(value)
  %7056 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7054, float %7055, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.ResRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.ResRet.f32 %7056, 2
  %7060 = extractvalue %dx.types.ResRet.f32 %7056, 3
  %7061 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7054, float %7055, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7062 = extractvalue %dx.types.ResRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.ResRet.f32 %7061, 1
  %7064 = extractvalue %dx.types.ResRet.f32 %7061, 2
  %7065 = extractvalue %dx.types.ResRet.f32 %7061, 3
  %7066 = call float @dx.op.binary.f32(i32 35, float %7058, float %7059)  ; FMax(a,b)
  %7067 = call float @dx.op.binary.f32(i32 35, float %7057, float %7066)  ; FMax(a,b)
  %7068 = call float @dx.op.binary.f32(i32 35, float %7067, float %7060)  ; FMax(a,b)
  %7069 = call float @dx.op.binary.f32(i32 36, float %7063, float %7064)  ; FMin(a,b)
  %7070 = call float @dx.op.binary.f32(i32 36, float %7062, float %7069)  ; FMin(a,b)
  %7071 = call float @dx.op.binary.f32(i32 36, float %7070, float %7065)  ; FMin(a,b)
  %7072 = fmul fast float %7068, 2.550000e+02
  %7073 = fadd fast float %7072, 0x3F70101020000000
  %7074 = fptoui float %7073 to i32
  %7075 = fmul fast float %7071, 2.550000e+02
  %7076 = fadd fast float %7075, 0x3F70101020000000
  %7077 = fptoui float %7076 to i32
  %7078 = icmp ult i32 %7074, %7077
  br i1 %7078, label %7079, label %7247

; <label>:7079                                    ; preds = %7048
  %7080 = fcmp fast ogt float %77, 9.843750e-01
  %7081 = fadd fast float %78, -4.000000e+00
  %7082 = select i1 %7080, float -4.000000e+00, float %7081
  %7083 = call float @dx.op.binary.f32(i32 35, float %7082, float 0.000000e+00)  ; FMax(a,b)
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7086 = fadd fast float %7085, %7083
  %7087 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7088 = fmul fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 23, float %7088)  ; Log(value)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7084, 3
  %7091 = fmul fast float %7090, %7089
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 2
  %7094 = fmul fast float %7091, %7093
  %7095 = call float @dx.op.unary.f32(i32 7, float %7094)  ; Saturate(value)
  %7096 = uitofp i32 %7074 to float
  %7097 = uitofp i32 %7077 to float
  %7098 = fadd fast float %7096, 5.000000e-01
  %7099 = fadd fast float %7097, 5.000000e-01
  %7100 = fmul fast float %7093, %7098
  %7101 = fmul fast float %7093, %7099
  %7102 = fadd fast float %7100, 0x3F0FFB4800000000
  %7103 = fadd fast float %7101, 0xBF0FFB4800000000
  %7104 = call float @dx.op.binary.f32(i32 35, float %7095, float %7102)  ; FMax(a,b)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7104, float %7103)  ; FMin(a,b)
  %7106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.f32 %7106, 1
  %7108 = extractvalue %dx.types.CBufRet.f32 %7106, 2
  %7109 = extractvalue %dx.types.CBufRet.f32 %7106, 0
  %7110 = fmul fast float %7107, %7105
  %7111 = fadd fast float %7109, %7110
  %7112 = fadd fast float %7109, %7108
  %7113 = fsub fast float %7107, %7108
  %7114 = fadd fast float %7113, %7109
  %7115 = call float @dx.op.binary.f32(i32 35, float %7111, float %7112)  ; FMax(a,b)
  %7116 = call float @dx.op.binary.f32(i32 36, float %7115, float %7114)  ; FMin(a,b)
  %7117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7054, float %7055, float %7116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7118 = extractvalue %dx.types.ResRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.ResRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.ResRet.f32 %7117, 2
  %7121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.i32 %7121, 0
  %7123 = extractvalue %dx.types.CBufRet.i32 %7121, 1
  %7124 = uitofp i32 %7122 to float
  %7125 = uitofp i32 %7123 to float
  %7126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7126, 0
  %7128 = extractvalue %dx.types.CBufRet.f32 %7126, 1
  %7129 = fmul fast float %7124, %7054
  %7130 = fmul fast float %7125, %7055
  %7131 = fadd fast float %7129, -5.000000e-01
  %7132 = fadd fast float %7130, -5.000000e-01
  %7133 = call float @dx.op.unary.f32(i32 22, float %7131)  ; Frc(value)
  %7134 = call float @dx.op.unary.f32(i32 22, float %7132)  ; Frc(value)
  %7135 = fmul fast float %7133, %7133
  %7136 = fmul fast float %7135, %7133
  %7137 = fsub fast float 3.000000e+00, %7133
  %7138 = fmul fast float %7135, %7137
  %7139 = fmul fast float %7133, 3.000000e+00
  %7140 = fmul fast float %7136, 3.000000e+00
  %7141 = fmul fast float %7135, 6.000000e+00
  %7142 = fsub fast float %7140, %7141
  %7143 = fadd fast float %7142, 4.000000e+00
  %7144 = fmul fast float %7143, 0x3FC5555560000000
  %7145 = fmul fast float %7136, -3.000000e+00
  %7146 = fadd fast float %7135, %7133
  %7147 = fmul fast float %7146, 3.000000e+00
  %7148 = fadd fast float %7145, 1.000000e+00
  %7149 = fadd fast float %7148, %7147
  %7150 = fmul fast float %7136, 0x3FC5555560000000
  %7151 = fmul fast float %7134, %7134
  %7152 = fmul fast float %7151, %7134
  %7153 = fsub fast float 3.000000e+00, %7134
  %7154 = fmul fast float %7151, %7153
  %7155 = fmul fast float %7134, 3.000000e+00
  %7156 = fmul fast float %7152, 3.000000e+00
  %7157 = fmul fast float %7151, 6.000000e+00
  %7158 = fsub fast float %7156, %7157
  %7159 = fadd fast float %7158, 4.000000e+00
  %7160 = fmul fast float %7159, 0x3FC5555560000000
  %7161 = fmul fast float %7152, -3.000000e+00
  %7162 = fadd fast float %7151, %7134
  %7163 = fmul fast float %7162, 3.000000e+00
  %7164 = fadd fast float %7161, 1.000000e+00
  %7165 = fadd fast float %7164, %7163
  %7166 = fmul fast float %7152, 0x3FC5555560000000
  %7167 = fadd fast float %7133, 1.000000e+00
  %7168 = fsub fast float 1.000000e+00, %7139
  %7169 = fadd fast float %7168, %7138
  %7170 = fadd fast float %7169, %7143
  %7171 = fmul fast float %7170, 0x3FC5555560000000
  %7172 = fdiv fast float %7144, %7171
  %7173 = fsub fast float %7167, %7172
  %7174 = fsub fast float 1.000000e+00, %7133
  %7175 = fadd fast float %7149, %7136
  %7176 = fmul fast float %7175, 0x3FC5555560000000
  %7177 = fdiv fast float %7150, %7176
  %7178 = fadd fast float %7174, %7177
  %7179 = fadd fast float %7134, 1.000000e+00
  %7180 = fsub fast float 1.000000e+00, %7155
  %7181 = fadd fast float %7180, %7154
  %7182 = fadd fast float %7181, %7159
  %7183 = fmul fast float %7182, 0x3FC5555560000000
  %7184 = fdiv fast float %7160, %7183
  %7185 = fsub fast float %7179, %7184
  %7186 = fsub fast float 1.000000e+00, %7134
  %7187 = fadd fast float %7165, %7152
  %7188 = fmul fast float %7187, 0x3FC5555560000000
  %7189 = fdiv fast float %7166, %7188
  %7190 = fadd fast float %7189, %7186
  %7191 = fmul fast float %7173, %7127
  %7192 = fsub fast float %7054, %7191
  %7193 = fmul fast float %7178, %7127
  %7194 = fadd fast float %7193, %7054
  %7195 = fmul fast float %7190, %7128
  %7196 = fadd fast float %7195, %7055
  %7197 = fmul fast float %7185, %7128
  %7198 = fsub fast float %7055, %7197
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7192, float %7198, float %7116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.ResRet.f32 %7199, 2
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7194, float %7198, float %7116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7192, float %7196, float %7116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.ResRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.ResRet.f32 %7207, 2
  %7211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7194, float %7196, float %7116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7212 = extractvalue %dx.types.ResRet.f32 %7211, 0
  %7213 = extractvalue %dx.types.ResRet.f32 %7211, 1
  %7214 = extractvalue %dx.types.ResRet.f32 %7211, 2
  %7215 = fsub fast float %7208, %7200
  %7216 = fsub fast float %7209, %7201
  %7217 = fsub fast float %7210, %7202
  %7218 = fmul fast float %7215, %7188
  %7219 = fmul fast float %7216, %7188
  %7220 = fmul fast float %7217, %7188
  %7221 = fadd fast float %7218, %7200
  %7222 = fadd fast float %7219, %7201
  %7223 = fadd fast float %7220, %7202
  %7224 = fsub fast float %7212, %7204
  %7225 = fsub fast float %7213, %7205
  %7226 = fsub fast float %7214, %7206
  %7227 = fmul fast float %7224, %7188
  %7228 = fmul fast float %7225, %7188
  %7229 = fmul fast float %7226, %7188
  %7230 = fsub fast float %7204, %7221
  %7231 = fadd fast float %7230, %7227
  %7232 = fsub fast float %7205, %7222
  %7233 = fadd fast float %7232, %7228
  %7234 = fsub fast float %7206, %7223
  %7235 = fadd fast float %7234, %7229
  %7236 = fmul fast float %7231, %7176
  %7237 = fmul fast float %7233, %7176
  %7238 = fmul fast float %7235, %7176
  %7239 = fadd fast float %7236, %7221
  %7240 = fadd fast float %7237, %7222
  %7241 = fadd fast float %7238, %7223
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 1
  %7244 = fmul fast float %7239, %7243
  %7245 = fmul fast float %7240, %7243
  %7246 = fmul fast float %7241, %7243
  br label %7247

; <label>:7247                                    ; preds = %7079, %7048
  %7248 = phi float [ %7118, %7079 ], [ 1.000000e+00, %7048 ]
  %7249 = phi float [ %7119, %7079 ], [ 1.000000e+00, %7048 ]
  %7250 = phi float [ %7120, %7079 ], [ 1.000000e+00, %7048 ]
  %7251 = phi float [ %7244, %7079 ], [ 0.000000e+00, %7048 ]
  %7252 = phi float [ %7245, %7079 ], [ 0.000000e+00, %7048 ]
  %7253 = phi float [ %7246, %7079 ], [ 0.000000e+00, %7048 ]
  %7254 = fmul fast float %7251, %7033
  %7255 = fmul fast float %7252, %7034
  %7256 = fmul fast float %7253, %7035
  %7257 = call float @dx.op.dot3.f32(i32 55, float %7248, float %7249, float %7250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = call float @dx.op.dot3.f32(i32 55, float %7254, float %7255, float %7256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7259 = select i1 %235, float %7257, float %7248
  %7260 = select i1 %235, float %7257, float %7249
  %7261 = select i1 %235, float 1.000000e+00, float %7250
  %7262 = select i1 %235, float %7258, float %7254
  %7263 = select i1 %235, float 0.000000e+00, float %7255
  %7264 = select i1 %235, float 0.000000e+00, float %7256
  %7265 = fmul fast float %7259, %7038
  %7266 = fmul fast float %7260, %7039
  %7267 = fmul fast float %7261, %7040
  %7268 = fadd fast float %7265, %7262
  %7269 = fadd fast float %7266, %7263
  %7270 = fadd fast float %7264, %7267
  %7271 = fmul fast float %7259, %7002
  %7272 = fmul fast float %7260, %7003
  %7273 = fmul fast float %7261, %7004
  %7274 = fmul fast float %112, %7050
  %7275 = fmul fast float %114, %7051
  %7276 = fsub fast float 1.000000e+00, %7274
  %7277 = fsub fast float 1.000000e+00, %7275
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7282 = fmul fast float %7276, %7279
  %7283 = fmul fast float %7276, %7280
  %7284 = fmul fast float %7276, %7281
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = fmul fast float %7277, %7286
  %7290 = fmul fast float %7277, %7287
  %7291 = fmul fast float %7277, %7288
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7296 = fadd fast float %7289, %7293
  %7297 = fadd fast float %7296, %7282
  %7298 = fadd fast float %7290, %7294
  %7299 = fadd fast float %7298, %7283
  %7300 = fadd fast float %7291, %7295
  %7301 = fadd fast float %7300, %7284
  %7302 = fmul fast float %7297, %196
  %7303 = fmul fast float %7299, %196
  %7304 = fmul fast float %7301, %196
  br label %7305

; <label>:7305                                    ; preds = %7247, %7001
  %7306 = phi float [ %7302, %7247 ], [ %142, %7001 ]
  %7307 = phi float [ %7303, %7247 ], [ %143, %7001 ]
  %7308 = phi float [ %7304, %7247 ], [ %144, %7001 ]
  %7309 = phi float [ %196, %7247 ], [ %78, %7001 ]
  %7310 = phi float [ %7268, %7247 ], [ %7038, %7001 ]
  %7311 = phi float [ %7269, %7247 ], [ %7039, %7001 ]
  %7312 = phi float [ %7270, %7247 ], [ %7040, %7001 ]
  %7313 = phi float [ %7271, %7247 ], [ %7002, %7001 ]
  %7314 = phi float [ %7272, %7247 ], [ %7003, %7001 ]
  %7315 = phi float [ %7273, %7247 ], [ %7004, %7001 ]
  %7316 = phi float [ %7248, %7247 ], [ 1.000000e+00, %7001 ]
  br i1 %7047, label %8471, label %7317

; <label>:7317                                    ; preds = %7305
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7322 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7327 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7337 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 3
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 3
  %7342 = extractvalue %dx.types.CBufRet.f32 %7340, 0
  %7343 = extractvalue %dx.types.CBufRet.f32 %7340, 1
  %7344 = extractvalue %dx.types.CBufRet.f32 %7340, 2
  %7345 = fcmp fast olt float %7344, -5.000000e-01
  %7346 = call float @dx.op.dot3.f32(i32 55, float %7306, float %7307, float %7308, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7347 = call float @dx.op.unary.f32(i32 25, float %7346)  ; Rsqrt(value)
  %7348 = fmul fast float %7347, %7346
  %7349 = fmul fast float %7347, %7306
  %7350 = fmul fast float %7347, %7307
  %7351 = fmul fast float %7347, %7308
  %7352 = fadd fast float %7348, %7322
  %7353 = call float @dx.op.dot3.f32(i32 55, float %7349, float %7350, float %7351, float %7319, float %7320, float %7321)  ; Dot3(ax,ay,az,bx,by,bz)
  %7354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.i32 %7354, 1
  %7356 = and i32 %7355, 1
  %7357 = icmp ne i32 %7356, 0
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7360 = fcmp fast ogt float %7359, 0.000000e+00
  %7361 = and i1 %7357, %7360
  br i1 %7361, label %7362, label %7768, !dx.controlflow.hints !105

; <label>:7362                                    ; preds = %7317
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7369 = fsub fast float %7366, %7368
  %7370 = and i32 %7355, 2
  %7371 = extractvalue %dx.types.CBufRet.i32 %7354, 0
  %7372 = call i32 @dx.op.binary.i32(i32 40, i32 %7371, i32 3)  ; UMin(a,b)
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7377 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7378 = fsub fast float %7374, %7376
  %7379 = fsub fast float %7375, %7377
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7382 = fcmp fast ogt float %7381, 0.000000e+00
  %7383 = fsub fast float -0.000000e+00, %7378
  %7384 = fsub fast float -0.000000e+00, %7379
  %7385 = call float @dx.op.dot2.f32(i32 54, float %7349, float %7350, float %7349, float %7350)  ; Dot2(ax,ay,bx,by)
  %7386 = call float @dx.op.dot2.f32(i32 54, float %7349, float %7350, float %7383, float %7384)  ; Dot2(ax,ay,bx,by)
  %7387 = fmul fast float %7386, 2.000000e+00
  %7388 = call float @dx.op.dot2.f32(i32 54, float %7383, float %7384, float %7383, float %7384)  ; Dot2(ax,ay,bx,by)
  %7389 = fmul fast float %7381, %7381
  %7390 = fsub fast float %7388, %7389
  %7391 = fmul fast float %7387, %7387
  %7392 = fmul fast float %7385, 4.000000e+00
  %7393 = fmul fast float %7392, %7390
  %7394 = fsub fast float %7391, %7393
  %7395 = fcmp fast ogt float %7394, 0.000000e+00
  br i1 %7395, label %7396, label %7411

; <label>:7396                                    ; preds = %7362
  %7397 = fcmp fast ogt float %7387, 0.000000e+00
  %7398 = call float @dx.op.unary.f32(i32 24, float %7394)  ; Sqrt(value)
  %7399 = fsub fast float -0.000000e+00, %7398
  %7400 = select i1 %7397, float %7398, float %7399
  %7401 = fadd fast float %7400, %7387
  %7402 = fmul float %7401, -5.000000e-01
  %7403 = fdiv fast float %7402, %7385
  %7404 = call float @dx.op.binary.f32(i32 35, float %7403, float 0.000000e+00)  ; FMax(a,b)
  %7405 = call float @dx.op.binary.f32(i32 36, float %7348, float %7404)  ; FMin(a,b)
  %7406 = fdiv fast float %7390, %7402
  %7407 = call float @dx.op.binary.f32(i32 35, float %7406, float 0.000000e+00)  ; FMax(a,b)
  %7408 = call float @dx.op.binary.f32(i32 36, float %7348, float %7407)  ; FMin(a,b)
  %7409 = call float @dx.op.binary.f32(i32 36, float %7405, float %7408)  ; FMin(a,b)
  %7410 = call float @dx.op.binary.f32(i32 35, float %7405, float %7408)  ; FMax(a,b)
  br label %7411

; <label>:7411                                    ; preds = %7396, %7362
  %7412 = phi float [ %7410, %7396 ], [ -1.000000e+00, %7362 ]
  %7413 = phi float [ %7409, %7396 ], [ -1.000000e+00, %7362 ]
  %7414 = phi i1 [ true, %7396 ], [ false, %7362 ]
  %7415 = and i1 %7382, %7414
  br i1 %7415, label %7416, label %7418

; <label>:7416                                    ; preds = %7411
  %7417 = fcmp fast oeq float %7413, %7412
  br i1 %7417, label %7721, label %7419

; <label>:7418                                    ; preds = %7411
  br i1 %7382, label %7721, label %7419

; <label>:7419                                    ; preds = %7418, %7416
  %7420 = phi float [ %7348, %7418 ], [ %7412, %7416 ]
  %7421 = phi float [ 0.000000e+00, %7418 ], [ %7413, %7416 ]
  %7422 = icmp ne i32 %7370, 0
  %7423 = fmul fast float %7420, %7351
  %7424 = fadd fast float %7423, %7364
  %7425 = fmul fast float %7424, %7420
  %7426 = select i1 %7422, float 0.000000e+00, float %7425
  %7427 = fcmp fast oeq float %7351, 0.000000e+00
  %7428 = fdiv fast float %7369, %7351
  %7429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7428)  ; FMax(a,b)
  %7430 = select i1 %7427, float %7420, float %7429
  %7431 = call float @dx.op.binary.f32(i32 36, float %7420, float %7430)  ; FMin(a,b)
  %7432 = fcmp fast ogt float %7351, 0.000000e+00
  %7433 = fcmp fast olt float %7369, 0.000000e+00
  br i1 %7432, label %7434, label %7491

; <label>:7434                                    ; preds = %7419
  %7435 = icmp eq i32 %7370, 0
  br i1 %7433, label %7436, label %7480

; <label>:7436                                    ; preds = %7434
  %7437 = select i1 %7435, float %7420, float 0.000000e+00
  %7438 = fsub fast float -0.000000e+00, %7437
  %7439 = call float @dx.op.unary.f32(i32 6, float %7438)  ; FAbs(value)
  %7440 = fmul fast float %7437, %7351
  %7441 = fadd fast float %7440, %7364
  %7442 = fmul fast float %7439, %7441
  %7443 = fsub fast float %7426, %7442
  %7444 = fsub fast float %7420, %7439
  %7445 = select i1 %7435, float %7444, float 0.000000e+00
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.CBufRet.f32 %7450, 3
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 3
  %7457 = call float @dx.op.binary.f32(i32 36, float %7443, float %7456)  ; FMin(a,b)
  %7458 = fmul fast float %7454, %7445
  %7459 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7460 = fsub fast float %7451, %7447
  %7461 = fsub fast float %7452, %7448
  %7462 = fsub fast float %7453, %7449
  %7463 = fmul fast float %7459, %7460
  %7464 = fmul fast float %7459, %7461
  %7465 = fmul fast float %7459, %7462
  %7466 = fadd fast float %7463, %7447
  %7467 = fadd fast float %7464, %7448
  %7468 = fadd fast float %7465, %7449
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7472 = fadd fast float %7471, %7470
  %7473 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7474 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7475 = extractvalue %dx.types.CBufRet.f32 %7469, 3
  %7476 = fadd fast float %7475, %7474
  %7477 = call float @dx.op.unary.f32(i32 7, float %7476)  ; Saturate(value)
  %7478 = fmul fast float %7473, %7457
  %7479 = fmul fast float %7478, %7477
  br label %7721

; <label>:7480                                    ; preds = %7434
  br i1 %7435, label %7481, label %7502

; <label>:7481                                    ; preds = %7480
  %7482 = call float @dx.op.binary.f32(i32 36, float %7431, float %7421)  ; FMin(a,b)
  %7483 = fsub fast float %7431, %7482
  %7484 = fsub fast float %7483, %7420
  %7485 = call float @dx.op.unary.f32(i32 6, float %7484)  ; FAbs(value)
  %7486 = fadd fast float %7483, %7420
  %7487 = fmul fast float %7486, %7351
  %7488 = fadd fast float %7487, %7364
  %7489 = fmul fast float %7488, %7485
  %7490 = fsub fast float %7426, %7489
  br label %7502

; <label>:7491                                    ; preds = %7419
  br i1 %7433, label %7492, label %7502

; <label>:7492                                    ; preds = %7491
  %7493 = call float @dx.op.binary.f32(i32 35, float %7421, float %7431)  ; FMax(a,b)
  %7494 = icmp eq i32 %7370, 0
  %7495 = select i1 %7494, float %7431, float 0.000000e+00
  %7496 = fsub fast float -0.000000e+00, %7495
  %7497 = call float @dx.op.unary.f32(i32 6, float %7496)  ; FAbs(value)
  %7498 = fmul fast float %7495, %7351
  %7499 = fadd fast float %7498, %7364
  %7500 = fmul fast float %7497, %7499
  %7501 = fsub fast float %7426, %7500
  br label %7502

; <label>:7502                                    ; preds = %7492, %7491, %7481, %7480
  %7503 = phi float [ %7421, %7480 ], [ %7421, %7481 ], [ %7493, %7492 ], [ %7421, %7491 ]
  %7504 = phi float [ 0.000000e+00, %7480 ], [ %7485, %7481 ], [ %7497, %7492 ], [ 0.000000e+00, %7491 ]
  %7505 = phi float [ %7426, %7480 ], [ %7490, %7481 ], [ %7501, %7492 ], [ %7426, %7491 ]
  %7506 = phi float [ %7431, %7480 ], [ %7431, %7481 ], [ %7420, %7492 ], [ %7420, %7491 ]
  %7507 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7507, align 4, !tbaa !106, !noalias !108
  %7508 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7508, align 4, !tbaa !106, !noalias !108
  %7509 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7509, align 4, !tbaa !106, !noalias !108
  %7510 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7510, align 4, !tbaa !106, !noalias !108
  %7511 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7511, align 4, !tbaa !106, !noalias !108
  %7512 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7512, align 4, !tbaa !106, !noalias !108
  %7513 = icmp sgt i32 %7372, 0
  br i1 %7513, label %7514, label %7575

; <label>:7514                                    ; preds = %7502
  br label %7515

; <label>:7515                                    ; preds = %7564, %7514
  %7516 = phi i32 [ %7565, %7564 ], [ 0, %7514 ]
  %7517 = phi i32 [ %7566, %7564 ], [ 0, %7514 ]
  %7518 = add nuw i32 %7517, 171
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7518)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.CBufRet.f32 %7522, 1
  %7525 = fsub fast float %7520, %7523
  %7526 = fsub fast float %7521, %7524
  %7527 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7528 = fsub fast float -0.000000e+00, %7525
  %7529 = fsub fast float -0.000000e+00, %7526
  %7530 = call float @dx.op.dot2.f32(i32 54, float %7349, float %7350, float %7528, float %7529)  ; Dot2(ax,ay,bx,by)
  %7531 = fmul fast float %7530, 2.000000e+00
  %7532 = call float @dx.op.dot2.f32(i32 54, float %7528, float %7529, float %7528, float %7529)  ; Dot2(ax,ay,bx,by)
  %7533 = fmul fast float %7527, %7527
  %7534 = fsub fast float %7532, %7533
  %7535 = fmul fast float %7531, %7531
  %7536 = fmul fast float %7392, %7534
  %7537 = fsub fast float %7535, %7536
  %7538 = fcmp fast ogt float %7537, 0.000000e+00
  br i1 %7538, label %7539, label %7554

; <label>:7539                                    ; preds = %7515
  %7540 = fcmp fast ogt float %7531, 0.000000e+00
  %7541 = call float @dx.op.unary.f32(i32 24, float %7537)  ; Sqrt(value)
  %7542 = fsub fast float -0.000000e+00, %7541
  %7543 = select i1 %7540, float %7541, float %7542
  %7544 = fadd fast float %7543, %7531
  %7545 = fmul float %7544, -5.000000e-01
  %7546 = fdiv fast float %7545, %7385
  %7547 = call float @dx.op.binary.f32(i32 35, float %7546, float 0.000000e+00)  ; FMax(a,b)
  %7548 = call float @dx.op.binary.f32(i32 36, float %7420, float %7547)  ; FMin(a,b)
  %7549 = fdiv fast float %7534, %7545
  %7550 = call float @dx.op.binary.f32(i32 35, float %7549, float 0.000000e+00)  ; FMax(a,b)
  %7551 = call float @dx.op.binary.f32(i32 36, float %7420, float %7550)  ; FMin(a,b)
  %7552 = call float @dx.op.binary.f32(i32 36, float %7548, float %7551)  ; FMin(a,b)
  %7553 = call float @dx.op.binary.f32(i32 35, float %7548, float %7551)  ; FMax(a,b)
  br label %7554

; <label>:7554                                    ; preds = %7539, %7515
  %7555 = phi float [ %7553, %7539 ], [ -1.000000e+00, %7515 ]
  %7556 = phi float [ %7552, %7539 ], [ -1.000000e+00, %7515 ]
  %7557 = phi i1 [ true, %7539 ], [ false, %7515 ]
  br i1 %7557, label %7558, label %7564

; <label>:7558                                    ; preds = %7554
  %7559 = call float @dx.op.binary.f32(i32 35, float %7503, float %7556)  ; FMax(a,b)
  %7560 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7517
  store float %7559, float* %7560, align 4, !tbaa !106, !noalias !108
  %7561 = call float @dx.op.binary.f32(i32 35, float %7503, float %7555)  ; FMax(a,b)
  %7562 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7517
  store float %7561, float* %7562, align 4, !tbaa !106, !noalias !108
  %7563 = add nsw i32 %7516, 1
  br label %7564

; <label>:7564                                    ; preds = %7558, %7554
  %7565 = phi i32 [ %7563, %7558 ], [ %7516, %7554 ]
  %7566 = add nuw nsw i32 %7517, 1
  %7567 = icmp eq i32 %7566, %7372
  br i1 %7567, label %7568, label %7515

; <label>:7568                                    ; preds = %7564
  %7569 = load float, float* %7509, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7570 = load float, float* %7508, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %7571 = load float, float* %7507, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %7572 = load float, float* %7512, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7573 = load float, float* %7511, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %7574 = load float, float* %7510, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %7575

; <label>:7575                                    ; preds = %7568, %7502
  %7576 = phi float [ -1.000000e+00, %7502 ], [ %7574, %7568 ]
  %7577 = phi float [ -1.000000e+00, %7502 ], [ %7573, %7568 ]
  %7578 = phi float [ -1.000000e+00, %7502 ], [ %7572, %7568 ]
  %7579 = phi float [ -1.000000e+00, %7502 ], [ %7571, %7568 ]
  %7580 = phi float [ -1.000000e+00, %7502 ], [ %7570, %7568 ]
  %7581 = phi float [ -1.000000e+00, %7502 ], [ %7569, %7568 ]
  %7582 = phi i32 [ 0, %7502 ], [ %7565, %7568 ]
  %7583 = call float @dx.op.binary.f32(i32 36, float %7580, float %7581)  ; FMin(a,b)
  %7584 = call float @dx.op.binary.f32(i32 36, float %7579, float %7583)  ; FMin(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7579, float %7580)  ; FMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 36, float %7585, float %7581)  ; FMin(a,b)
  %7587 = call float @dx.op.binary.f32(i32 36, float %7579, float %7580)  ; FMin(a,b)
  %7588 = call float @dx.op.binary.f32(i32 35, float %7587, float %7586)  ; FMax(a,b)
  %7589 = call float @dx.op.binary.f32(i32 35, float %7580, float %7581)  ; FMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float %7579, float %7589)  ; FMax(a,b)
  store float %7584, float* %7507, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %7588, float* %7508, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %7590, float* %7509, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7591 = call float @dx.op.binary.f32(i32 36, float %7577, float %7578)  ; FMin(a,b)
  %7592 = call float @dx.op.binary.f32(i32 36, float %7576, float %7591)  ; FMin(a,b)
  %7593 = call float @dx.op.binary.f32(i32 35, float %7576, float %7577)  ; FMax(a,b)
  %7594 = call float @dx.op.binary.f32(i32 36, float %7593, float %7578)  ; FMin(a,b)
  %7595 = call float @dx.op.binary.f32(i32 36, float %7576, float %7577)  ; FMin(a,b)
  %7596 = call float @dx.op.binary.f32(i32 35, float %7595, float %7594)  ; FMax(a,b)
  %7597 = call float @dx.op.binary.f32(i32 35, float %7577, float %7578)  ; FMax(a,b)
  %7598 = call float @dx.op.binary.f32(i32 35, float %7576, float %7597)  ; FMax(a,b)
  store float %7592, float* %7510, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %7596, float* %7511, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %7598, float* %7512, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7599 = sub nsw i32 3, %7582
  %7600 = icmp sgt i32 %7599, 2
  br i1 %7600, label %7601, label %7639

; <label>:7601                                    ; preds = %7575
  %7602 = icmp eq i32 %7370, 0
  %7603 = fsub fast float %7420, %7504
  %7604 = select i1 %7602, float %7603, float %7504
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.CBufRet.f32 %7605, 2
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 0
  %7611 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7612 = extractvalue %dx.types.CBufRet.f32 %7609, 2
  %7613 = extractvalue %dx.types.CBufRet.f32 %7609, 3
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 3
  %7616 = call float @dx.op.binary.f32(i32 36, float %7505, float %7615)  ; FMin(a,b)
  %7617 = fmul fast float %7613, %7604
  %7618 = call float @dx.op.unary.f32(i32 7, float %7617)  ; Saturate(value)
  %7619 = fsub fast float %7610, %7606
  %7620 = fsub fast float %7611, %7607
  %7621 = fsub fast float %7612, %7608
  %7622 = fmul fast float %7618, %7619
  %7623 = fmul fast float %7618, %7620
  %7624 = fmul fast float %7618, %7621
  %7625 = fadd fast float %7622, %7606
  %7626 = fadd fast float %7623, %7607
  %7627 = fadd fast float %7624, %7608
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7631 = fadd fast float %7630, %7629
  %7632 = call float @dx.op.unary.f32(i32 7, float %7631)  ; Saturate(value)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7634 = extractvalue %dx.types.CBufRet.f32 %7628, 3
  %7635 = fadd fast float %7634, %7633
  %7636 = call float @dx.op.unary.f32(i32 7, float %7635)  ; Saturate(value)
  %7637 = fmul fast float %7632, %7616
  %7638 = fmul fast float %7637, %7636
  br label %7721

; <label>:7639                                    ; preds = %7575
  %7640 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7599
  %7641 = load float, float* %7640, align 4, !tbaa !106, !noalias !108
  %7642 = fcmp fast olt float %7641, %7506
  %7643 = icmp sgt i32 %7582, 0
  %7644 = and i1 %7643, %7642
  br i1 %7644, label %7645, label %7682

; <label>:7645                                    ; preds = %7639
  br label %7646

; <label>:7646                                    ; preds = %7675, %7645
  %7647 = phi float [ %7676, %7675 ], [ %7504, %7645 ]
  %7648 = phi float [ %7677, %7675 ], [ %7505, %7645 ]
  %7649 = phi float [ %7657, %7675 ], [ %7641, %7645 ]
  %7650 = phi i32 [ %7654, %7675 ], [ %7599, %7645 ]
  %7651 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7650
  %7652 = load float, float* %7651, align 4, !tbaa !106, !noalias !108
  %7653 = icmp slt i32 %7650, 2
  %7654 = add nsw i32 %7650, 1
  %7655 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7654
  %7656 = load float, float* %7655, align 4, !tbaa !106, !noalias !108
  %7657 = select i1 %7653, float %7656, float %7420
  %7658 = call float @dx.op.binary.f32(i32 36, float %7657, float %7652)  ; FMin(a,b)
  %7659 = call float @dx.op.binary.f32(i32 36, float %7506, float %7658)  ; FMin(a,b)
  %7660 = icmp eq i32 %7370, 0
  %7661 = fadd fast float %7659, %7649
  %7662 = fmul fast float %7661, %7351
  %7663 = fadd fast float %7662, %7364
  br i1 %7660, label %7669, label %7664

; <label>:7664                                    ; preds = %7646
  %7665 = fsub fast float %7659, %7649
  %7666 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7665)  ; FMax(a,b)
  %7667 = fmul fast float %7666, %7663
  %7668 = fadd fast float %7667, %7648
  br label %7675

; <label>:7669                                    ; preds = %7646
  %7670 = fsub fast float %7649, %7659
  %7671 = call float @dx.op.unary.f32(i32 6, float %7670)  ; FAbs(value)
  %7672 = fadd fast float %7671, %7647
  %7673 = fmul fast float %7671, %7663
  %7674 = fsub fast float %7648, %7673
  br label %7675

; <label>:7675                                    ; preds = %7669, %7664
  %7676 = phi float [ %7666, %7664 ], [ %7672, %7669 ]
  %7677 = phi float [ %7668, %7664 ], [ %7674, %7669 ]
  %7678 = fcmp fast olt float %7657, %7506
  %7679 = icmp slt i32 %7654, 3
  %7680 = and i1 %7679, %7678
  br i1 %7680, label %7646, label %7681

; <label>:7681                                    ; preds = %7675
  br label %7682

; <label>:7682                                    ; preds = %7681, %7639
  %7683 = phi float [ %7504, %7639 ], [ %7676, %7681 ]
  %7684 = phi float [ %7505, %7639 ], [ %7677, %7681 ]
  %7685 = fsub fast float %7420, %7683
  %7686 = select i1 %7422, float %7683, float %7685
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.CBufRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.CBufRet.f32 %7691, 2
  %7695 = extractvalue %dx.types.CBufRet.f32 %7691, 3
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7698 = call float @dx.op.binary.f32(i32 36, float %7684, float %7697)  ; FMin(a,b)
  %7699 = fmul fast float %7695, %7686
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fsub fast float %7692, %7688
  %7702 = fsub fast float %7693, %7689
  %7703 = fsub fast float %7694, %7690
  %7704 = fmul fast float %7700, %7701
  %7705 = fmul fast float %7700, %7702
  %7706 = fmul fast float %7700, %7703
  %7707 = fadd fast float %7704, %7688
  %7708 = fadd fast float %7705, %7689
  %7709 = fadd fast float %7706, %7690
  %7710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7711 = extractvalue %dx.types.CBufRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.CBufRet.f32 %7710, 1
  %7713 = fadd fast float %7712, %7711
  %7714 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7710, 2
  %7716 = extractvalue %dx.types.CBufRet.f32 %7710, 3
  %7717 = fadd fast float %7716, %7715
  %7718 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7719 = fmul fast float %7714, %7698
  %7720 = fmul fast float %7719, %7718
  br label %7721

; <label>:7721                                    ; preds = %7682, %7601, %7436, %7418, %7416
  %7722 = phi float [ %7445, %7436 ], [ %7604, %7601 ], [ %7686, %7682 ], [ 0.000000e+00, %7416 ], [ 0.000000e+00, %7418 ]
  %7723 = phi float [ %7479, %7436 ], [ %7638, %7601 ], [ %7720, %7682 ], [ 0.000000e+00, %7416 ], [ 0.000000e+00, %7418 ]
  %7724 = phi float [ %7466, %7436 ], [ %7625, %7601 ], [ %7707, %7682 ], [ 0.000000e+00, %7416 ], [ 0.000000e+00, %7418 ]
  %7725 = phi float [ %7467, %7436 ], [ %7626, %7601 ], [ %7708, %7682 ], [ 0.000000e+00, %7416 ], [ 0.000000e+00, %7418 ]
  %7726 = phi float [ %7468, %7436 ], [ %7627, %7601 ], [ %7709, %7682 ], [ 0.000000e+00, %7416 ], [ 0.000000e+00, %7418 ]
  %7727 = fmul fast float %7359, %7723
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7730 = fsub fast float %7366, %7729
  %7731 = fcmp fast olt float %7727, -2.000000e+01
  %7732 = call float @dx.op.unary.f32(i32 21, float %7727)  ; Exp(value)
  %7733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7734 = extractvalue %dx.types.CBufRet.f32 %7733, 2
  %7735 = extractvalue %dx.types.CBufRet.f32 %7733, 3
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7738 = fmul fast float %7735, %7730
  %7739 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7740 = fsub fast float 1.000000e+00, %7739
  %7741 = fmul fast float %7351, 5.000000e-01
  %7742 = fadd fast float %7741, 5.000000e-01
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = fsub fast float 1.000000e+00, %7743
  %7745 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7740)  ; FMax(a,b)
  %7746 = fdiv fast float %7744, %7745
  %7747 = fsub fast float %7730, %7308
  %7748 = call float @dx.op.unary.f32(i32 6, float %7747)  ; FAbs(value)
  %7749 = fmul fast float %7748, %7734
  %7750 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7751 = fsub fast float 1.000000e+00, %7749
  %7752 = fmul fast float %7751, %7750
  %7753 = fadd fast float %7752, %7749
  %7754 = fmul fast float %7737, %7730
  %7755 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7756 = fsub fast float 1.000000e+00, %7753
  %7757 = fmul fast float %7756, %7755
  %7758 = fadd fast float %7757, %7753
  %7759 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7760 = fadd fast float %7732, -1.000000e+00
  %7761 = select i1 %7731, float -1.000000e+00, float %7760
  %7762 = fmul fast float %7759, %7761
  %7763 = fadd fast float %7762, 1.000000e+00
  %7764 = fsub fast float -0.000000e+00, %7762
  %7765 = fmul fast float %7724, %7764
  %7766 = fmul fast float %7725, %7764
  %7767 = fmul fast float %7726, %7764
  br label %7768

; <label>:7768                                    ; preds = %7721, %7317
  %7769 = phi float [ %7722, %7721 ], [ 0.000000e+00, %7317 ]
  %7770 = phi float [ %7763, %7721 ], [ 1.000000e+00, %7317 ]
  %7771 = phi float [ %7765, %7721 ], [ 0.000000e+00, %7317 ]
  %7772 = phi float [ %7766, %7721 ], [ 0.000000e+00, %7317 ]
  %7773 = phi float [ %7767, %7721 ], [ 0.000000e+00, %7317 ]
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7776 = fsub fast float 1.000000e+00, %7770
  %7777 = fmul fast float %7776, %7352
  %7778 = fmul fast float %7777, %7775
  %7779 = fsub fast float %7352, %7778
  br i1 %7345, label %7780, label %7809, !dx.controlflow.hints !144

; <label>:7780                                    ; preds = %7768
  %7781 = fmul fast float %7353, %7342
  %7782 = fadd fast float %7781, %7343
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = fmul fast float %7324, %7779
  %7785 = fsub fast float -0.000000e+00, %7784
  %7786 = fmul fast float %7325, %7779
  %7787 = fsub fast float -0.000000e+00, %7786
  %7788 = call float @dx.op.unary.f32(i32 21, float %7785)  ; Exp(value)
  %7789 = call float @dx.op.unary.f32(i32 21, float %7787)  ; Exp(value)
  %7790 = call float @dx.op.binary.f32(i32 35, float %7332, float %7788)  ; FMax(a,b)
  %7791 = call float @dx.op.binary.f32(i32 35, float %7332, float %7789)  ; FMax(a,b)
  %7792 = fsub fast float %7791, %7790
  %7793 = fmul fast float %7792, %7783
  %7794 = fadd fast float %7793, %7790
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fsub fast float %7329, %7334
  %7797 = fsub fast float %7330, %7335
  %7798 = fsub fast float %7331, %7336
  %7799 = fmul fast float %7783, %7796
  %7800 = fmul fast float %7783, %7797
  %7801 = fmul fast float %7783, %7798
  %7802 = fadd fast float %7799, %7334
  %7803 = fadd fast float %7800, %7335
  %7804 = fadd fast float %7801, %7336
  %7805 = fsub fast float 1.000000e+00, %7795
  %7806 = fmul fast float %7805, %7802
  %7807 = fmul fast float %7805, %7803
  %7808 = fmul fast float %7805, %7804
  br label %7868

; <label>:7809                                    ; preds = %7768
  %7810 = fmul fast float %7779, %7341
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = fsub fast float 2.000000e+00, %7811
  %7813 = fmul fast float %7811, 9.921875e-01
  %7814 = fmul fast float %7813, %7812
  %7815 = fadd fast float %7814, 3.906250e-03
  %7816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7815, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7817 = extractvalue %dx.types.ResRet.f32 %7816, 0
  %7818 = fsub fast float %7811, %7817
  %7819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7818)  ; FMax(a,b)
  %7820 = fmul fast float %7327, %7308
  %7821 = call float @dx.op.unary.f32(i32 6, float %7820)  ; FAbs(value)
  %7822 = fcmp fast ogt float %7821, 0x3EB0C6F7A0000000
  br i1 %7822, label %7823, label %7829, !dx.controlflow.hints !145

; <label>:7823                                    ; preds = %7809
  %7824 = fmul fast float %7820, 0xBFF7154760000000
  %7825 = call float @dx.op.unary.f32(i32 21, float %7824)  ; Exp(value)
  %7826 = fsub fast float 1.000000e+00, %7825
  %7827 = fdiv fast float %7826, %7820
  %7828 = fmul fast float %7827, %7337
  br label %7829

; <label>:7829                                    ; preds = %7823, %7809
  %7830 = phi float [ %7828, %7823 ], [ %7337, %7809 ]
  %7831 = fadd fast float %7830, %7339
  %7832 = fmul fast float %7831, %7819
  %7833 = fmul fast float %7324, %7832
  %7834 = fsub fast float -0.000000e+00, %7833
  %7835 = fmul fast float %7325, %7832
  %7836 = fsub fast float -0.000000e+00, %7835
  %7837 = fmul fast float %7326, %7832
  %7838 = fsub fast float -0.000000e+00, %7837
  %7839 = call float @dx.op.unary.f32(i32 21, float %7834)  ; Exp(value)
  %7840 = call float @dx.op.unary.f32(i32 21, float %7836)  ; Exp(value)
  %7841 = call float @dx.op.unary.f32(i32 21, float %7838)  ; Exp(value)
  %7842 = fmul fast float %7353, %7353
  %7843 = fadd fast float %7842, 1.000000e+00
  %7844 = fmul fast float %7843, 0x3FAE8EC8A0000000
  %7845 = fmul fast float %7844, %7334
  %7846 = fmul fast float %7844, %7335
  %7847 = fmul fast float %7844, %7336
  %7848 = fmul fast float %7353, %7332
  %7849 = fsub fast float 1.000000e+00, %7848
  %7850 = fmul fast float %7332, %7332
  %7851 = fsub fast float 1.000000e+00, %7850
  %7852 = fmul fast float %7851, 0x3FB45F3060000000
  %7853 = fmul fast float %7849, %7849
  %7854 = fdiv fast float 1.000000e+00, %7853
  %7855 = fmul fast float %7852, %7854
  %7856 = fmul fast float %7855, %7329
  %7857 = fmul fast float %7855, %7330
  %7858 = fmul fast float %7855, %7331
  %7859 = fadd fast float %7856, %7845
  %7860 = fadd fast float %7857, %7846
  %7861 = fadd fast float %7858, %7847
  %7862 = fsub fast float 1.000000e+00, %7839
  %7863 = fsub fast float 1.000000e+00, %7840
  %7864 = fsub fast float 1.000000e+00, %7841
  %7865 = fmul fast float %7859, %7862
  %7866 = fmul fast float %7860, %7863
  %7867 = fmul fast float %7861, %7864
  br label %7868

; <label>:7868                                    ; preds = %7829, %7780
  %7869 = phi float [ %7806, %7780 ], [ %7865, %7829 ]
  %7870 = phi float [ %7807, %7780 ], [ %7866, %7829 ]
  %7871 = phi float [ %7808, %7780 ], [ %7867, %7829 ]
  %7872 = phi float [ %7795, %7780 ], [ %7839, %7829 ]
  %7873 = phi float [ %7795, %7780 ], [ %7840, %7829 ]
  %7874 = phi float [ %7795, %7780 ], [ %7841, %7829 ]
  br i1 %7361, label %7875, label %8073, !dx.controlflow.hints !146

; <label>:7875                                    ; preds = %7868
  %7876 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7877 = fmul fast float %7876, %7776
  %7878 = fsub fast float %7771, %7869
  %7879 = fsub fast float %7772, %7870
  %7880 = fsub fast float %7773, %7871
  %7881 = fmul fast float %7877, %7878
  %7882 = fmul fast float %7877, %7879
  %7883 = fmul fast float %7877, %7880
  %7884 = fadd fast float %7881, %7869
  %7885 = fadd fast float %7882, %7870
  %7886 = fadd fast float %7883, %7871
  %7887 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7872)  ; FMax(a,b)
  %7888 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7873)  ; FMax(a,b)
  %7889 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7874)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7770)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 35, float %7769, float %7779)  ; FMax(a,b)
  %7892 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7891)  ; FMax(a,b)
  %7893 = fdiv fast float %7769, %7892
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fdiv fast float %7779, %7892
  %7896 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7897 = fcmp fast une float %7890, 1.000000e+00
  br i1 %7897, label %7898, label %7911, !dx.controlflow.hints !147

; <label>:7898                                    ; preds = %7875
  %7899 = call float @dx.op.unary.f32(i32 23, float %7890)  ; Log(value)
  %7900 = fmul fast float %7899, 0x3FE62E4300000000
  %7901 = fmul fast float %7771, %7900
  %7902 = fsub fast float -0.000000e+00, %7901
  %7903 = fmul fast float %7772, %7900
  %7904 = fsub fast float -0.000000e+00, %7903
  %7905 = fmul fast float %7773, %7900
  %7906 = fsub fast float -0.000000e+00, %7905
  %7907 = fsub fast float 1.000000e+00, %7890
  %7908 = fdiv fast float %7902, %7907
  %7909 = fdiv fast float %7904, %7907
  %7910 = fdiv fast float %7906, %7907
  br label %7911

; <label>:7911                                    ; preds = %7898, %7875
  %7912 = phi float [ %7908, %7898 ], [ %7771, %7875 ]
  %7913 = phi float [ %7909, %7898 ], [ %7772, %7875 ]
  %7914 = phi float [ %7910, %7898 ], [ %7773, %7875 ]
  %7915 = phi float [ %7900, %7898 ], [ 0.000000e+00, %7875 ]
  %7916 = fcmp fast une float %7887, 1.000000e+00
  br i1 %7916, label %7917, label %7924, !dx.controlflow.hints !148

; <label>:7917                                    ; preds = %7911
  %7918 = call float @dx.op.unary.f32(i32 23, float %7887)  ; Log(value)
  %7919 = fmul fast float %7918, 0x3FE62E4300000000
  %7920 = fmul fast float %7884, %7919
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fsub fast float 1.000000e+00, %7887
  %7923 = fdiv fast float %7921, %7922
  br label %7924

; <label>:7924                                    ; preds = %7917, %7911
  %7925 = phi float [ %7923, %7917 ], [ %7884, %7911 ]
  %7926 = phi float [ %7919, %7917 ], [ 0.000000e+00, %7911 ]
  %7927 = fcmp fast une float %7888, 1.000000e+00
  br i1 %7927, label %7928, label %7935, !dx.controlflow.hints !148

; <label>:7928                                    ; preds = %7924
  %7929 = call float @dx.op.unary.f32(i32 23, float %7888)  ; Log(value)
  %7930 = fmul fast float %7929, 0x3FE62E4300000000
  %7931 = fmul fast float %7885, %7930
  %7932 = fsub fast float -0.000000e+00, %7931
  %7933 = fsub fast float 1.000000e+00, %7888
  %7934 = fdiv fast float %7932, %7933
  br label %7935

; <label>:7935                                    ; preds = %7928, %7924
  %7936 = phi float [ %7934, %7928 ], [ %7885, %7924 ]
  %7937 = phi float [ %7930, %7928 ], [ 0.000000e+00, %7924 ]
  %7938 = fcmp fast une float %7889, 1.000000e+00
  br i1 %7938, label %7939, label %7946, !dx.controlflow.hints !148

; <label>:7939                                    ; preds = %7935
  %7940 = call float @dx.op.unary.f32(i32 23, float %7889)  ; Log(value)
  %7941 = fmul fast float %7940, 0x3FE62E4300000000
  %7942 = fmul fast float %7886, %7941
  %7943 = fsub fast float -0.000000e+00, %7942
  %7944 = fsub fast float 1.000000e+00, %7889
  %7945 = fdiv fast float %7943, %7944
  br label %7946

; <label>:7946                                    ; preds = %7939, %7935
  %7947 = phi float [ %7945, %7939 ], [ %7886, %7935 ]
  %7948 = phi float [ %7941, %7939 ], [ 0.000000e+00, %7935 ]
  %7949 = fmul fast float %7912, %7896
  %7950 = fmul fast float %7913, %7896
  %7951 = fmul fast float %7914, %7896
  %7952 = fmul fast float %7915, %7896
  %7953 = fmul fast float %7925, %7894
  %7954 = fmul fast float %7936, %7894
  %7955 = fmul fast float %7947, %7894
  %7956 = fmul fast float %7926, %7894
  %7957 = fmul fast float %7937, %7894
  %7958 = fmul fast float %7948, %7894
  %7959 = fadd fast float %7953, %7949
  %7960 = fadd fast float %7954, %7950
  %7961 = fadd fast float %7955, %7951
  %7962 = fadd fast float %7956, %7952
  %7963 = fadd fast float %7957, %7952
  %7964 = fadd fast float %7958, %7952
  %7965 = fcmp fast une float %7962, 0.000000e+00
  br i1 %7965, label %7966, label %7973, !dx.controlflow.hints !149

; <label>:7966                                    ; preds = %7946
  %7967 = fmul fast float %7962, 0x3FF7154760000000
  %7968 = call float @dx.op.unary.f32(i32 21, float %7967)  ; Exp(value)
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %7959, %7969
  %7971 = fsub fast float -0.000000e+00, %7970
  %7972 = fdiv fast float %7971, %7962
  br label %7973

; <label>:7973                                    ; preds = %7966, %7946
  %7974 = phi float [ %7968, %7966 ], [ 1.000000e+00, %7946 ]
  %7975 = phi float [ %7972, %7966 ], [ %7959, %7946 ]
  %7976 = fcmp fast une float %7963, 0.000000e+00
  br i1 %7976, label %7977, label %7984, !dx.controlflow.hints !149

; <label>:7977                                    ; preds = %7973
  %7978 = fmul fast float %7963, 0x3FF7154760000000
  %7979 = call float @dx.op.unary.f32(i32 21, float %7978)  ; Exp(value)
  %7980 = fsub fast float 1.000000e+00, %7979
  %7981 = fmul fast float %7960, %7980
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = fdiv fast float %7982, %7963
  br label %7984

; <label>:7984                                    ; preds = %7977, %7973
  %7985 = phi float [ %7979, %7977 ], [ 1.000000e+00, %7973 ]
  %7986 = phi float [ %7983, %7977 ], [ %7960, %7973 ]
  %7987 = fcmp fast une float %7964, 0.000000e+00
  br i1 %7987, label %7988, label %7995, !dx.controlflow.hints !149

; <label>:7988                                    ; preds = %7984
  %7989 = fmul fast float %7964, 0x3FF7154760000000
  %7990 = call float @dx.op.unary.f32(i32 21, float %7989)  ; Exp(value)
  %7991 = fsub fast float 1.000000e+00, %7990
  %7992 = fmul fast float %7961, %7991
  %7993 = fsub fast float -0.000000e+00, %7992
  %7994 = fdiv fast float %7993, %7964
  br label %7995

; <label>:7995                                    ; preds = %7988, %7984
  %7996 = phi float [ %7990, %7988 ], [ 1.000000e+00, %7984 ]
  %7997 = phi float [ %7994, %7988 ], [ %7961, %7984 ]
  %7998 = fcmp fast ogt float %7894, %7896
  br i1 %7998, label %7999, label %8019

; <label>:7999                                    ; preds = %7995
  %8000 = fsub fast float 1.000000e+00, %7896
  %8001 = fmul fast float %7912, %8000
  %8002 = fmul fast float %7913, %8000
  %8003 = fmul fast float %7914, %8000
  %8004 = fmul fast float %7915, %8000
  %8005 = fcmp fast une float %8004, 0.000000e+00
  br i1 %8005, label %8006, label %8057, !dx.controlflow.hints !150

; <label>:8006                                    ; preds = %7999
  %8007 = fmul fast float %8004, 0x3FF7154760000000
  %8008 = call float @dx.op.unary.f32(i32 21, float %8007)  ; Exp(value)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = fmul fast float %8001, %8009
  %8011 = fsub fast float -0.000000e+00, %8010
  %8012 = fmul fast float %8002, %8009
  %8013 = fsub fast float -0.000000e+00, %8012
  %8014 = fmul fast float %8003, %8009
  %8015 = fsub fast float -0.000000e+00, %8014
  %8016 = fdiv fast float %8011, %8004
  %8017 = fdiv fast float %8013, %8004
  %8018 = fdiv fast float %8015, %8004
  br label %8057

; <label>:8019                                    ; preds = %7995
  %8020 = fsub fast float 1.000000e+00, %7894
  %8021 = fmul fast float %7925, %8020
  %8022 = fmul fast float %7936, %8020
  %8023 = fmul fast float %7947, %8020
  %8024 = fmul fast float %7926, %8020
  %8025 = fmul fast float %7937, %8020
  %8026 = fmul fast float %7948, %8020
  %8027 = fcmp fast une float %8024, 0.000000e+00
  br i1 %8027, label %8028, label %8035, !dx.controlflow.hints !149

; <label>:8028                                    ; preds = %8019
  %8029 = fmul fast float %8024, 0x3FF7154760000000
  %8030 = call float @dx.op.unary.f32(i32 21, float %8029)  ; Exp(value)
  %8031 = fsub fast float 1.000000e+00, %8030
  %8032 = fmul fast float %8021, %8031
  %8033 = fsub fast float -0.000000e+00, %8032
  %8034 = fdiv fast float %8033, %8024
  br label %8035

; <label>:8035                                    ; preds = %8028, %8019
  %8036 = phi float [ %8034, %8028 ], [ %8021, %8019 ]
  %8037 = phi float [ %8030, %8028 ], [ 1.000000e+00, %8019 ]
  %8038 = fcmp fast une float %8025, 0.000000e+00
  br i1 %8038, label %8039, label %8046, !dx.controlflow.hints !149

; <label>:8039                                    ; preds = %8035
  %8040 = fmul fast float %8025, 0x3FF7154760000000
  %8041 = call float @dx.op.unary.f32(i32 21, float %8040)  ; Exp(value)
  %8042 = fsub fast float 1.000000e+00, %8041
  %8043 = fmul fast float %8022, %8042
  %8044 = fsub fast float -0.000000e+00, %8043
  %8045 = fdiv fast float %8044, %8025
  br label %8046

; <label>:8046                                    ; preds = %8039, %8035
  %8047 = phi float [ %8045, %8039 ], [ %8022, %8035 ]
  %8048 = phi float [ %8041, %8039 ], [ 1.000000e+00, %8035 ]
  %8049 = fcmp fast une float %8026, 0.000000e+00
  br i1 %8049, label %8050, label %8057, !dx.controlflow.hints !149

; <label>:8050                                    ; preds = %8046
  %8051 = fmul fast float %8026, 0x3FF7154760000000
  %8052 = call float @dx.op.unary.f32(i32 21, float %8051)  ; Exp(value)
  %8053 = fsub fast float 1.000000e+00, %8052
  %8054 = fmul fast float %8023, %8053
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fdiv fast float %8055, %8026
  br label %8057

; <label>:8057                                    ; preds = %8050, %8046, %8006, %7999
  %8058 = phi float [ %8056, %8050 ], [ %8018, %8006 ], [ %8003, %7999 ], [ %8023, %8046 ]
  %8059 = phi float [ %8047, %8050 ], [ %8017, %8006 ], [ %8002, %7999 ], [ %8047, %8046 ]
  %8060 = phi float [ %8036, %8050 ], [ %8016, %8006 ], [ %8001, %7999 ], [ %8036, %8046 ]
  %8061 = phi float [ %8052, %8050 ], [ %8008, %8006 ], [ 1.000000e+00, %7999 ], [ 1.000000e+00, %8046 ]
  %8062 = phi float [ %8048, %8050 ], [ %8008, %8006 ], [ 1.000000e+00, %7999 ], [ %8048, %8046 ]
  %8063 = phi float [ %8037, %8050 ], [ %8008, %8006 ], [ 1.000000e+00, %7999 ], [ %8037, %8046 ]
  %8064 = fmul fast float %8063, %7975
  %8065 = fmul fast float %8062, %7986
  %8066 = fmul fast float %8061, %7997
  %8067 = fadd fast float %8064, %8060
  %8068 = fadd fast float %8065, %8059
  %8069 = fadd fast float %8066, %8058
  %8070 = fmul fast float %8063, %7974
  %8071 = fmul fast float %8062, %7985
  %8072 = fmul fast float %8061, %7996
  br label %8073

; <label>:8073                                    ; preds = %8057, %7868
  %8074 = phi float [ %8072, %8057 ], [ %7874, %7868 ]
  %8075 = phi float [ %8071, %8057 ], [ %7873, %7868 ]
  %8076 = phi float [ %8070, %8057 ], [ %7872, %7868 ]
  %8077 = phi float [ %8069, %8057 ], [ %7871, %7868 ]
  %8078 = phi float [ %8068, %8057 ], [ %7870, %7868 ]
  %8079 = phi float [ %8067, %8057 ], [ %7869, %7868 ]
  %8080 = fmul fast float %8079, %7033
  %8081 = fmul fast float %8078, %7034
  %8082 = fmul fast float %8077, %7035
  %8083 = fmul fast float %8076, %7316
  %8084 = call float @dx.op.dot3.f32(i32 55, float %8076, float %8075, float %8074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = call float @dx.op.dot3.f32(i32 55, float %8080, float %8081, float %8082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8086 = select i1 %235, float %8084, float %8076
  %8087 = select i1 %235, float %8084, float %8075
  %8088 = select i1 %235, float 1.000000e+00, float %8074
  %8089 = select i1 %235, float %8085, float %8080
  %8090 = select i1 %235, float 0.000000e+00, float %8081
  %8091 = select i1 %235, float 0.000000e+00, float %8082
  %8092 = fmul fast float %8086, %7310
  %8093 = fmul fast float %8087, %7311
  %8094 = fmul fast float %8088, %7312
  %8095 = fadd fast float %8092, %8089
  %8096 = fadd fast float %8093, %8090
  %8097 = fadd fast float %8091, %8094
  %8098 = fmul fast float %8086, %7313
  %8099 = fmul fast float %8087, %7314
  %8100 = fmul fast float %8088, %7315
  %8101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.i32 %8101, 0
  %8103 = icmp eq i32 %8102, 0
  br i1 %8103, label %8471, label %8104, !dx.controlflow.hints !151

; <label>:8104                                    ; preds = %8073
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8108 = fmul fast float %8106, %87
  %8109 = fmul fast float %8107, %88
  %8110 = fmul fast float %8108, 2.000000e+00
  %8111 = fmul fast float %8109, 2.000000e+00
  %8112 = fsub fast float 1.000000e+00, %8110
  %8113 = fsub fast float 1.000000e+00, %8111
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8118 = fmul fast float %8112, %8115
  %8119 = fmul fast float %8112, %8116
  %8120 = fmul fast float %8112, %8117
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.CBufRet.f32 %8121, 2
  %8125 = fmul fast float %8113, %8122
  %8126 = fmul fast float %8113, %8123
  %8127 = fmul fast float %8113, %8124
  %8128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.f32 %8128, 0
  %8130 = extractvalue %dx.types.CBufRet.f32 %8128, 1
  %8131 = extractvalue %dx.types.CBufRet.f32 %8128, 2
  %8132 = fadd fast float %8125, %8129
  %8133 = fadd fast float %8132, %8118
  %8134 = fadd fast float %8126, %8130
  %8135 = fadd fast float %8134, %8119
  %8136 = fadd fast float %8127, %8131
  %8137 = fadd fast float %8136, %8120
  %8138 = fmul fast float %8133, %7309
  %8139 = fmul fast float %8135, %7309
  %8140 = fmul fast float %8137, %7309
  %8141 = fmul fast float %8138, %8138
  %8142 = fmul fast float %8139, %8139
  %8143 = fadd fast float %8141, %8142
  %8144 = fmul fast float %8140, %8140
  %8145 = fadd fast float %8143, %8144
  %8146 = call float @dx.op.unary.f32(i32 24, float %8145)  ; Sqrt(value)
  %8147 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %8148 = fsub fast float %8146, %8147
  %8149 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %8150 = fmul fast float %8148, %8149
  %8151 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  %8152 = fadd fast float %8151, -5.000000e-01
  %8153 = fmul fast float %8152, 2.000000e+00
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8156 = call float @dx.op.binary.f32(i32 36, float %8155, float %8153)  ; FMin(a,b)
  %8157 = fsub fast float -0.000000e+00, %8155
  %8158 = fcmp fast ogt float %8156, %8157
  br i1 %8158, label %8159, label %8471, !dx.controlflow.hints !152

; <label>:8159                                    ; preds = %8104
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8162 = fcmp fast ogt float %8161, 0.000000e+00
  br i1 %8162, label %8163, label %8238, !dx.controlflow.hints !153

; <label>:8163                                    ; preds = %8159
  %8164 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8165 = extractvalue %dx.types.Dimensions %8164, 0
  %8166 = sitofp i32 %8165 to float
  %8167 = extractvalue %dx.types.Dimensions %8164, 1
  %8168 = sitofp i32 %8167 to float
  %8169 = fmul fast float %8108, %8166
  %8170 = fmul fast float %8109, %8168
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %8173 = fsub fast float -0.000000e+00, %8172
  %8174 = fptoui float %8173 to i32
  %8175 = fptoui float %8169 to i32
  %8176 = fptoui float %8170 to i32
  %8177 = and i32 %8174, 31
  %8178 = lshr i32 %8175, %8177
  %8179 = lshr i32 %8176, %8177
  %8180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8174, i32 %8178, i32 %8179, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = fcmp fast olt float %8181, -1.000000e+00
  %8183 = fcmp fast ogt float %8181, -1.000000e+00
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 1
  %8186 = select i1 %8183, float %8185, float 1.000000e+00
  %8187 = fadd fast float %8181, 1.000000e+00
  %8188 = fmul fast float %8186, %8187
  %8189 = call float @dx.op.unary.f32(i32 6, float %8188)  ; FAbs(value)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8191 = fcmp fast oge float %8189, %8190
  %8192 = select i1 %8191, float 0x4197782600000000, float %8189
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 0
  %8195 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8196 = extractvalue %dx.types.CBufRet.f32 %8193, 2
  %8197 = select i1 %8182, float %8194, float %8115
  %8198 = select i1 %8182, float %8195, float %8116
  %8199 = select i1 %8182, float %8196, float %8117
  %8200 = fmul fast float %8197, %8112
  %8201 = fmul fast float %8198, %8112
  %8202 = fmul fast float %8199, %8112
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.CBufRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8207 = select i1 %8182, float %8204, float %8122
  %8208 = select i1 %8182, float %8205, float %8123
  %8209 = select i1 %8182, float %8206, float %8124
  %8210 = fmul fast float %8207, %8113
  %8211 = fmul fast float %8208, %8113
  %8212 = fmul fast float %8209, %8113
  %8213 = fadd fast float %8210, %8200
  %8214 = fadd fast float %8211, %8201
  %8215 = fadd fast float %8212, %8202
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = select i1 %8182, float %8217, float %8129
  %8221 = select i1 %8182, float %8218, float %8130
  %8222 = select i1 %8182, float %8219, float %8131
  %8223 = fadd fast float %8213, %8220
  %8224 = fadd fast float %8214, %8221
  %8225 = fadd fast float %8215, %8222
  %8226 = fmul fast float %8223, %8192
  %8227 = fmul fast float %8224, %8192
  %8228 = fmul fast float %8225, %8192
  %8229 = fmul fast float %8226, %8226
  %8230 = fmul fast float %8227, %8227
  %8231 = fadd fast float %8229, %8230
  %8232 = fmul fast float %8228, %8228
  %8233 = fadd fast float %8231, %8232
  %8234 = call float @dx.op.unary.f32(i32 24, float %8233)  ; Sqrt(value)
  %8235 = fsub fast float %8234, %8147
  %8236 = fmul fast float %8235, %8149
  %8237 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  br label %8238

; <label>:8238                                    ; preds = %8163, %8159
  %8239 = phi float [ %8237, %8163 ], [ 1.000000e+00, %8159 ]
  %8240 = fmul fast float %8156, 5.000000e-01
  %8241 = fadd fast float %8240, 5.000000e-01
  %8242 = call float @dx.op.unary.f32(i32 22, float %8241)  ; Frc(value)
  %8243 = call float @dx.op.unary.f32(i32 27, float %8242)  ; Round_ni(value)
  %8244 = call float @dx.op.unary.f32(i32 22, float %8242)  ; Frc(value)
  %8245 = fmul fast float %8244, 2.000000e+00
  %8246 = fadd fast float %8245, -1.000000e+00
  %8247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8108, float %8109, float %8243, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8248 = extractvalue %dx.types.ResRet.f32 %8247, 0
  %8249 = extractvalue %dx.types.ResRet.f32 %8247, 1
  %8250 = extractvalue %dx.types.ResRet.f32 %8247, 2
  %8251 = extractvalue %dx.types.ResRet.f32 %8247, 3
  %8252 = fadd fast float %8248, -5.000000e-01
  %8253 = fadd fast float %8250, -5.000000e-01
  %8254 = fmul fast float %8252, 0xBFD5555560000000
  %8255 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8253, float %8254)  ; FMad(a,b,c)
  %8256 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8249, float 0.000000e+00)  ; FMad(a,b,c)
  %8257 = fadd fast float %8256, %8251
  %8258 = fmul fast float %8252, -7.500000e-01
  %8259 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8253, float %8258)  ; FMad(a,b,c)
  %8260 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8249, float 0.000000e+00)  ; FMad(a,b,c)
  %8261 = fadd fast float %8260, %8251
  %8262 = call float @dx.op.binary.f32(i32 35, float %8255, float -1.000000e+00)  ; FMax(a,b)
  %8263 = call float @dx.op.binary.f32(i32 35, float %8257, float -1.000000e+00)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 35, float %8259, float -1.000000e+00)  ; FMax(a,b)
  %8265 = call float @dx.op.binary.f32(i32 35, float %8261, float -1.000000e+00)  ; FMax(a,b)
  %8266 = call float @dx.op.binary.f32(i32 36, float %8262, float 1.000000e+00)  ; FMin(a,b)
  %8267 = call float @dx.op.binary.f32(i32 36, float %8263, float 1.000000e+00)  ; FMin(a,b)
  %8268 = call float @dx.op.binary.f32(i32 36, float %8264, float 1.000000e+00)  ; FMin(a,b)
  %8269 = call float @dx.op.binary.f32(i32 36, float %8265, float 1.000000e+00)  ; FMin(a,b)
  %8270 = fcmp fast olt float %8266, 0x3FEFFF8020000000
  br i1 %8270, label %8271, label %8386, !dx.controlflow.hints !154

; <label>:8271                                    ; preds = %8238
  %8272 = extractvalue %dx.types.CBufRet.f32 %8154, 3
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.CBufRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.CBufRet.f32 %8273, 2
  %8277 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8278 = fsub fast float %8274, %8266
  %8279 = fsub fast float %8275, %8267
  %8280 = fsub fast float %8276, %8268
  %8281 = fsub fast float %8277, %8269
  %8282 = fmul fast float %8278, %8272
  %8283 = fmul fast float %8279, %8272
  %8284 = fmul fast float %8280, %8272
  %8285 = fmul fast float %8281, %8272
  %8286 = fadd fast float %8282, %8266
  %8287 = fadd fast float %8283, %8267
  %8288 = fsub fast float -0.000000e+00, %8287
  %8289 = fadd fast float %8284, %8268
  %8290 = fadd fast float %8285, %8269
  %8291 = fmul fast float %8286, %8286
  %8292 = fsub fast float %8287, %8291
  %8293 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8292)  ; FMax(a,b)
  %8294 = fdiv fast float 1.000000e+00, %8293
  %8295 = fmul fast float %8287, %8286
  %8296 = fsub fast float %8289, %8295
  %8297 = fsub fast float %8246, %8286
  %8298 = fmul fast float %8246, %8246
  %8299 = fsub fast float %8298, %8287
  %8300 = fmul fast float %8297, %8294
  %8301 = fmul fast float %8300, %8296
  %8302 = fsub fast float %8299, %8301
  %8303 = fmul fast float %8287, %8287
  %8304 = fsub fast float %8290, %8303
  %8305 = fmul fast float %8296, %8296
  %8306 = fmul fast float %8305, %8294
  %8307 = fsub fast float %8304, %8306
  %8308 = fdiv fast float %8302, %8307
  %8309 = fmul fast float %8296, %8308
  %8310 = fsub fast float %8297, %8309
  %8311 = fmul fast float %8310, %8294
  %8312 = fmul fast float %8311, %8286
  %8313 = fsub fast float 1.000000e+00, %8312
  %8314 = fmul fast float %8287, %8308
  %8315 = fsub fast float %8313, %8314
  %8316 = fmul fast float %8311, %8311
  %8317 = fmul fast float %8308, 4.000000e+00
  %8318 = fmul fast float %8317, %8315
  %8319 = fsub fast float %8316, %8318
  %8320 = call float @dx.op.unary.f32(i32 24, float %8319)  ; Sqrt(value)
  %8321 = fcmp fast oge float %8311, 0.000000e+00
  %8322 = fsub fast float -0.000000e+00, %8320
  %8323 = select i1 %8321, float %8322, float %8320
  %8324 = fsub fast float %8323, %8311
  %8325 = fdiv fast float %8324, %8308
  %8326 = fdiv fast float %8315, %8324
  %8327 = fmul fast float %8325, 5.000000e-01
  %8328 = fmul fast float %8326, 2.000000e+00
  %8329 = select i1 %8321, float %8327, float %8328
  %8330 = select i1 %8321, float %8328, float %8327
  %8331 = call float @dx.op.binary.f32(i32 35, float %8329, float %8330)  ; FMax(a,b)
  %8332 = call float @dx.op.binary.f32(i32 36, float %8329, float %8330)  ; FMin(a,b)
  %8333 = fcmp fast ogt float %8246, %8332
  br i1 %8333, label %8334, label %8344

; <label>:8334                                    ; preds = %8271
  %8335 = fsub fast float %8246, %8332
  %8336 = fsub fast float %8331, %8332
  %8337 = fmul fast float %8335, %8336
  %8338 = fmul fast float %8331, %8246
  %8339 = fadd fast float %8331, %8246
  %8340 = fmul fast float %8339, %8286
  %8341 = fadd fast float %8338, %8287
  %8342 = fsub fast float %8341, %8340
  %8343 = fdiv fast float %8342, %8337
  br label %8344

; <label>:8344                                    ; preds = %8334, %8271
  %8345 = phi float [ %8343, %8334 ], [ 0.000000e+00, %8271 ]
  %8346 = fcmp fast ogt float %8246, %8331
  %8347 = fsub fast float %8246, %8331
  br i1 %8346, label %8348, label %8358

; <label>:8348                                    ; preds = %8344
  %8349 = fsub fast float %8331, %8332
  %8350 = fmul fast float %8349, %8347
  %8351 = fmul fast float %8332, %8246
  %8352 = fadd fast float %8332, %8246
  %8353 = fmul fast float %8352, %8286
  %8354 = fsub fast float %8288, %8351
  %8355 = fadd fast float %8354, %8353
  %8356 = fdiv fast float %8355, %8350
  %8357 = fadd fast float %8356, %8345
  br label %8358

; <label>:8358                                    ; preds = %8348, %8344
  %8359 = phi float [ %8357, %8348 ], [ %8345, %8344 ]
  %8360 = fsub fast float %8246, %8332
  %8361 = fmul fast float %8360, %8347
  %8362 = fmul fast float %8332, %8331
  %8363 = fadd fast float %8332, %8331
  %8364 = fmul fast float %8363, %8286
  %8365 = fadd fast float %8362, %8287
  %8366 = fsub fast float %8365, %8364
  %8367 = fdiv fast float %8366, %8361
  %8368 = call float @dx.op.unary.f32(i32 7, float %8359)  ; Saturate(value)
  %8369 = fcmp fast oeq float %7037, 0.000000e+00
  %8370 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8371 = fcmp fast oeq float %8370, 0.000000e+00
  %8372 = or i1 %8369, %8371
  %8373 = fmul fast float %8370, 2.000000e+00
  %8374 = fadd fast float %8155, %8156
  %8375 = fdiv fast float %8374, %8373
  %8376 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8377 = fmul fast float %8376, 2.000000e+00
  %8378 = fsub fast float 3.000000e+00, %8377
  %8379 = fmul fast float %8376, %8376
  %8380 = fmul fast float %8379, %8378
  %8381 = select i1 %8372, float 1.000000e+00, float %8380
  %8382 = fmul fast float %8367, %7037
  %8383 = fadd fast float %8368, %8382
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fmul fast float %8381, %8384
  br label %8386

; <label>:8386                                    ; preds = %8358, %8238
  %8387 = phi float [ %8385, %8358 ], [ 0.000000e+00, %8238 ]
  %8388 = fsub fast float 1.000000e+00, %8387
  %8389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8108, float %8109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.i32 %8391, 2
  %8393 = icmp eq i32 %8392, 0
  br i1 %8393, label %8399, label %8394

; <label>:8394                                    ; preds = %8386
  %8395 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8396 = fadd fast float %8390, -1.000000e+00
  %8397 = fmul fast float %8395, %8396
  %8398 = fadd fast float %8397, 1.000000e+00
  br label %8399

; <label>:8399                                    ; preds = %8394, %8386
  %8400 = phi float [ %8398, %8394 ], [ %8388, %8386 ]
  br i1 %8162, label %8401, label %8419

; <label>:8401                                    ; preds = %8399
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8404 = fsub fast float %8239, %8403
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  %8406 = fsub fast float %8239, %8161
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8408 = fsub fast float %8405, %8407
  %8409 = fsub fast float %8241, %8407
  %8410 = fdiv fast float %8409, %8408
  %8411 = call float @dx.op.unary.f32(i32 7, float %8410)  ; Saturate(value)
  %8412 = fmul fast float %8411, 2.000000e+00
  %8413 = fsub fast float 3.000000e+00, %8412
  %8414 = fsub fast float %8390, %8400
  %8415 = fmul fast float %8411, %8411
  %8416 = fmul fast float %8415, %8414
  %8417 = fmul fast float %8416, %8413
  %8418 = fadd fast float %8417, %8400
  br label %8419

; <label>:8419                                    ; preds = %8401, %8399
  %8420 = phi float [ %8418, %8401 ], [ %8400, %8399 ]
  %8421 = call float @dx.op.binary.f32(i32 35, float %8390, float %8420)  ; FMax(a,b)
  %8422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.i32 %8422, 2
  %8424 = and i32 %8423, 1
  %8425 = icmp eq i32 %8424, 0
  %8426 = fcmp fast une float %8421, 1.000000e+00
  %8427 = and i1 %8426, %8425
  br i1 %8427, label %8428, label %8447

; <label>:8428                                    ; preds = %8419
  %8429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8108, float %8109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8430 = extractvalue %dx.types.ResRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.ResRet.f32 %8429, 1
  %8432 = extractvalue %dx.types.ResRet.f32 %8429, 2
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8435 = fmul fast float %8434, %8430
  %8436 = fmul fast float %8434, %8431
  %8437 = fmul fast float %8434, %8432
  %8438 = fcmp fast ogt float %8390, 0x3FEFFF2E40000000
  %8439 = fsub fast float 1.000000e+00, %8421
  %8440 = fsub fast float 1.000000e+00, %8390
  %8441 = fdiv fast float %8439, %8440
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = select i1 %8438, float 0.000000e+00, float %8442
  %8444 = fmul fast float %8435, %8443
  %8445 = fmul fast float %8436, %8443
  %8446 = fmul fast float %8437, %8443
  br label %8447

; <label>:8447                                    ; preds = %8428, %8419
  %8448 = phi float [ 0.000000e+00, %8419 ], [ %8444, %8428 ]
  %8449 = phi float [ 0.000000e+00, %8419 ], [ %8445, %8428 ]
  %8450 = phi float [ 0.000000e+00, %8419 ], [ %8446, %8428 ]
  %8451 = fmul fast float %8448, %7033
  %8452 = fmul fast float %8449, %7034
  %8453 = fmul fast float %8450, %7035
  %8454 = fmul fast float %8421, %8083
  %8455 = call float @dx.op.dot3.f32(i32 55, float %8421, float %8421, float %8421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8456 = call float @dx.op.dot3.f32(i32 55, float %8451, float %8452, float %8453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8457 = select i1 %235, float %8455, float %8421
  %8458 = select i1 %235, float 1.000000e+00, float %8421
  %8459 = select i1 %235, float %8456, float %8451
  %8460 = select i1 %235, float 0.000000e+00, float %8452
  %8461 = select i1 %235, float 0.000000e+00, float %8453
  %8462 = fmul fast float %8457, %8095
  %8463 = fmul fast float %8457, %8096
  %8464 = fmul fast float %8458, %8097
  %8465 = fadd fast float %8462, %8459
  %8466 = fadd fast float %8463, %8460
  %8467 = fadd fast float %8461, %8464
  %8468 = fmul fast float %8457, %8098
  %8469 = fmul fast float %8457, %8099
  %8470 = fmul fast float %8458, %8100
  br label %8471

; <label>:8471                                    ; preds = %8447, %8104, %8073, %7305
  %8472 = phi float [ %7310, %7305 ], [ %8095, %8073 ], [ %8465, %8447 ], [ %8095, %8104 ]
  %8473 = phi float [ %7311, %7305 ], [ %8096, %8073 ], [ %8466, %8447 ], [ %8096, %8104 ]
  %8474 = phi float [ %7312, %7305 ], [ %8097, %8073 ], [ %8467, %8447 ], [ %8097, %8104 ]
  %8475 = phi float [ %7313, %7305 ], [ %8098, %8073 ], [ %8468, %8447 ], [ %8098, %8104 ]
  %8476 = phi float [ %7314, %7305 ], [ %8099, %8073 ], [ %8469, %8447 ], [ %8099, %8104 ]
  %8477 = phi float [ %7315, %7305 ], [ %8100, %8073 ], [ %8470, %8447 ], [ %8100, %8104 ]
  %8478 = phi float [ %7316, %7305 ], [ %8083, %8073 ], [ %8454, %8447 ], [ %8083, %8104 ]
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 2
  %8481 = extractvalue %dx.types.CBufRet.f32 %8479, 3
  %8482 = fmul fast float %8480, %87
  %8483 = fmul fast float %8481, %88
  %8484 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8485 = call float @dx.op.unary.f32(i32 7, float %8483)  ; Saturate(value)
  %8486 = select i1 %7047, i32 2, i32 0
  %8487 = or i32 %8486, 1
  %8488 = uitofp i32 %8487 to float
  %8489 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8484, float %8485, float %8488, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = extractvalue %dx.types.ResRet.f32 %8489, 3
  %8494 = add nuw nsw i32 %8486, 2
  %8495 = uitofp i32 %8494 to float
  %8496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8484, float %8485, float %8495, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8497 = extractvalue %dx.types.ResRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.ResRet.f32 %8496, 1
  %8499 = extractvalue %dx.types.ResRet.f32 %8496, 2
  %8500 = extractvalue %dx.types.ResRet.f32 %8496, 3
  %8501 = call float @dx.op.binary.f32(i32 35, float %8491, float %8492)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 35, float %8490, float %8501)  ; FMax(a,b)
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float %8493)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8498, float %8499)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8497, float %8504)  ; FMin(a,b)
  %8506 = call float @dx.op.binary.f32(i32 36, float %8505, float %8500)  ; FMin(a,b)
  %8507 = fmul fast float %8503, 2.550000e+02
  %8508 = fadd fast float %8507, 0x3F70101020000000
  %8509 = fptoui float %8508 to i32
  %8510 = fmul fast float %8506, 2.550000e+02
  %8511 = fadd fast float %8510, 0x3F70101020000000
  %8512 = fptoui float %8511 to i32
  %8513 = icmp ult i32 %8509, %8512
  br i1 %8513, label %8514, label %8683

; <label>:8514                                    ; preds = %8471
  %8515 = fcmp fast ogt float %77, 9.843750e-01
  %8516 = fadd fast float %7309, -4.000000e+00
  %8517 = select i1 %8515, float -4.000000e+00, float %8516
  %8518 = call float @dx.op.binary.f32(i32 35, float %8517, float 0.000000e+00)  ; FMax(a,b)
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 0
  %8521 = fadd fast float %8520, %8518
  %8522 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8523 = fmul fast float %8521, %8522
  %8524 = call float @dx.op.unary.f32(i32 23, float %8523)  ; Log(value)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8519, 3
  %8526 = fmul fast float %8525, %8524
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = fmul fast float %8526, %8528
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = uitofp i32 %8509 to float
  %8532 = uitofp i32 %8512 to float
  %8533 = fadd fast float %8531, 5.000000e-01
  %8534 = fadd fast float %8532, 5.000000e-01
  %8535 = fmul fast float %8528, %8533
  %8536 = fmul fast float %8528, %8534
  %8537 = fadd fast float %8535, 0x3F0FFB4800000000
  %8538 = fadd fast float %8536, 0xBF0FFB4800000000
  %8539 = call float @dx.op.binary.f32(i32 35, float %8530, float %8537)  ; FMax(a,b)
  %8540 = call float @dx.op.binary.f32(i32 36, float %8539, float %8538)  ; FMin(a,b)
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 1
  %8543 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8544 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8545 = select i1 %7047, float %8544, float 0.000000e+00
  %8546 = fmul fast float %8542, %8540
  %8547 = fadd fast float %8545, %8546
  %8548 = fadd fast float %8545, %8543
  %8549 = fsub fast float %8542, %8543
  %8550 = fadd fast float %8549, %8545
  %8551 = call float @dx.op.binary.f32(i32 35, float %8547, float %8548)  ; FMax(a,b)
  %8552 = call float @dx.op.binary.f32(i32 36, float %8551, float %8550)  ; FMin(a,b)
  %8553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8484, float %8485, float %8552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8554 = extractvalue %dx.types.ResRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.ResRet.f32 %8553, 1
  %8556 = extractvalue %dx.types.ResRet.f32 %8553, 2
  %8557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.i32 %8557, 0
  %8559 = extractvalue %dx.types.CBufRet.i32 %8557, 1
  %8560 = uitofp i32 %8558 to float
  %8561 = uitofp i32 %8559 to float
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.CBufRet.f32 %8562, 1
  %8565 = fmul fast float %8560, %8484
  %8566 = fmul fast float %8561, %8485
  %8567 = fadd fast float %8565, -5.000000e-01
  %8568 = fadd fast float %8566, -5.000000e-01
  %8569 = call float @dx.op.unary.f32(i32 22, float %8567)  ; Frc(value)
  %8570 = call float @dx.op.unary.f32(i32 22, float %8568)  ; Frc(value)
  %8571 = fmul fast float %8569, %8569
  %8572 = fmul fast float %8571, %8569
  %8573 = fsub fast float 3.000000e+00, %8569
  %8574 = fmul fast float %8571, %8573
  %8575 = fmul fast float %8569, 3.000000e+00
  %8576 = fmul fast float %8572, 3.000000e+00
  %8577 = fmul fast float %8571, 6.000000e+00
  %8578 = fsub fast float %8576, %8577
  %8579 = fadd fast float %8578, 4.000000e+00
  %8580 = fmul fast float %8579, 0x3FC5555560000000
  %8581 = fmul fast float %8572, -3.000000e+00
  %8582 = fadd fast float %8571, %8569
  %8583 = fmul fast float %8582, 3.000000e+00
  %8584 = fadd fast float %8581, 1.000000e+00
  %8585 = fadd fast float %8584, %8583
  %8586 = fmul fast float %8572, 0x3FC5555560000000
  %8587 = fmul fast float %8570, %8570
  %8588 = fmul fast float %8587, %8570
  %8589 = fsub fast float 3.000000e+00, %8570
  %8590 = fmul fast float %8587, %8589
  %8591 = fmul fast float %8570, 3.000000e+00
  %8592 = fmul fast float %8588, 3.000000e+00
  %8593 = fmul fast float %8587, 6.000000e+00
  %8594 = fsub fast float %8592, %8593
  %8595 = fadd fast float %8594, 4.000000e+00
  %8596 = fmul fast float %8595, 0x3FC5555560000000
  %8597 = fmul fast float %8588, -3.000000e+00
  %8598 = fadd fast float %8587, %8570
  %8599 = fmul fast float %8598, 3.000000e+00
  %8600 = fadd fast float %8597, 1.000000e+00
  %8601 = fadd fast float %8600, %8599
  %8602 = fmul fast float %8588, 0x3FC5555560000000
  %8603 = fadd fast float %8569, 1.000000e+00
  %8604 = fsub fast float 1.000000e+00, %8575
  %8605 = fadd fast float %8604, %8574
  %8606 = fadd fast float %8605, %8579
  %8607 = fmul fast float %8606, 0x3FC5555560000000
  %8608 = fdiv fast float %8580, %8607
  %8609 = fsub fast float %8603, %8608
  %8610 = fsub fast float 1.000000e+00, %8569
  %8611 = fadd fast float %8585, %8572
  %8612 = fmul fast float %8611, 0x3FC5555560000000
  %8613 = fdiv fast float %8586, %8612
  %8614 = fadd fast float %8610, %8613
  %8615 = fadd fast float %8570, 1.000000e+00
  %8616 = fsub fast float 1.000000e+00, %8591
  %8617 = fadd fast float %8616, %8590
  %8618 = fadd fast float %8617, %8595
  %8619 = fmul fast float %8618, 0x3FC5555560000000
  %8620 = fdiv fast float %8596, %8619
  %8621 = fsub fast float %8615, %8620
  %8622 = fsub fast float 1.000000e+00, %8570
  %8623 = fadd fast float %8601, %8588
  %8624 = fmul fast float %8623, 0x3FC5555560000000
  %8625 = fdiv fast float %8602, %8624
  %8626 = fadd fast float %8625, %8622
  %8627 = fmul fast float %8609, %8563
  %8628 = fsub fast float %8484, %8627
  %8629 = fmul fast float %8614, %8563
  %8630 = fadd fast float %8629, %8484
  %8631 = fmul fast float %8626, %8564
  %8632 = fadd fast float %8631, %8485
  %8633 = fmul fast float %8621, %8564
  %8634 = fsub fast float %8485, %8633
  %8635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8628, float %8634, float %8552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8636 = extractvalue %dx.types.ResRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.ResRet.f32 %8635, 1
  %8638 = extractvalue %dx.types.ResRet.f32 %8635, 2
  %8639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8630, float %8634, float %8552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8642 = extractvalue %dx.types.ResRet.f32 %8639, 2
  %8643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8628, float %8632, float %8552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8644 = extractvalue %dx.types.ResRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.ResRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.ResRet.f32 %8643, 2
  %8647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8630, float %8632, float %8552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8648 = extractvalue %dx.types.ResRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.ResRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.ResRet.f32 %8647, 2
  %8651 = fsub fast float %8644, %8636
  %8652 = fsub fast float %8645, %8637
  %8653 = fsub fast float %8646, %8638
  %8654 = fmul fast float %8651, %8624
  %8655 = fmul fast float %8652, %8624
  %8656 = fmul fast float %8653, %8624
  %8657 = fadd fast float %8654, %8636
  %8658 = fadd fast float %8655, %8637
  %8659 = fadd fast float %8656, %8638
  %8660 = fsub fast float %8648, %8640
  %8661 = fsub fast float %8649, %8641
  %8662 = fsub fast float %8650, %8642
  %8663 = fmul fast float %8660, %8624
  %8664 = fmul fast float %8661, %8624
  %8665 = fmul fast float %8662, %8624
  %8666 = fsub fast float %8640, %8657
  %8667 = fadd fast float %8666, %8663
  %8668 = fsub fast float %8641, %8658
  %8669 = fadd fast float %8668, %8664
  %8670 = fsub fast float %8642, %8659
  %8671 = fadd fast float %8670, %8665
  %8672 = fmul fast float %8667, %8612
  %8673 = fmul fast float %8669, %8612
  %8674 = fmul fast float %8671, %8612
  %8675 = fadd fast float %8672, %8657
  %8676 = fadd fast float %8673, %8658
  %8677 = fadd fast float %8674, %8659
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8680 = fmul fast float %8675, %8679
  %8681 = fmul fast float %8676, %8679
  %8682 = fmul fast float %8677, %8679
  br label %8683

; <label>:8683                                    ; preds = %8514, %8471
  %8684 = phi float [ %8554, %8514 ], [ 1.000000e+00, %8471 ]
  %8685 = phi float [ %8555, %8514 ], [ 1.000000e+00, %8471 ]
  %8686 = phi float [ %8556, %8514 ], [ 1.000000e+00, %8471 ]
  %8687 = phi float [ %8680, %8514 ], [ 0.000000e+00, %8471 ]
  %8688 = phi float [ %8681, %8514 ], [ 0.000000e+00, %8471 ]
  %8689 = phi float [ %8682, %8514 ], [ 0.000000e+00, %8471 ]
  %8690 = fmul fast float %8687, %7033
  %8691 = fmul fast float %8688, %7034
  %8692 = fmul fast float %8689, %7035
  %8693 = fmul fast float %8684, %8478
  %8694 = call float @dx.op.dot3.f32(i32 55, float %8684, float %8685, float %8686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8695 = call float @dx.op.dot3.f32(i32 55, float %8690, float %8691, float %8692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8696 = select i1 %235, float %8694, float %8684
  %8697 = select i1 %235, float %8694, float %8685
  %8698 = select i1 %235, float 1.000000e+00, float %8686
  %8699 = select i1 %235, float %8695, float %8690
  %8700 = select i1 %235, float 0.000000e+00, float %8691
  %8701 = select i1 %235, float 0.000000e+00, float %8692
  %8702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.i32 %8702, 3
  %8704 = and i32 %8703, 3
  %8705 = icmp ne i32 %8704, 0
  %8706 = and i32 %8703, 4
  %8707 = icmp ne i32 %8706, 0
  %8708 = and i1 %8705, %8707
  %8709 = and i1 %235, %8708
  br i1 %8709, label %8710, label %8716

; <label>:8710                                    ; preds = %8683
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8713 = fadd fast float %8693, -1.000000e+00
  %8714 = fmul fast float %8712, %8713
  %8715 = fadd fast float %8714, 1.000000e+00
  br label %8716

; <label>:8716                                    ; preds = %8710, %8683
  %8717 = phi float [ %8715, %8710 ], [ %8693, %8683 ]
  %8718 = fadd fast float %8475, %8472
  %8719 = fmul fast float %8696, %8718
  %8720 = fadd fast float %8719, %8699
  %8721 = fadd fast float %8476, %8473
  %8722 = fmul fast float %8697, %8721
  %8723 = fadd fast float %8722, %8700
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  br i1 %235, label %8726, label %8741

; <label>:8726                                    ; preds = %8716
  %8727 = fadd fast float %8720, %8723
  %8728 = fmul fast float %8725, %8727
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8731 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %8732 = fsub fast float %7022, %7016
  %8733 = fadd fast float %8732, %7023
  %8734 = fsub fast float %8733, %8731
  %8735 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %8736 = fmul fast float %8734, %8735
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = fsub fast float %8737, %8730
  %8739 = fmul fast float %8738, %8717
  %8740 = fadd fast float %8739, %8730
  br label %8767

; <label>:8741                                    ; preds = %8716
  %8742 = fadd fast float %8477, %8474
  %8743 = fmul fast float %8698, %8742
  %8744 = fadd fast float %8743, %8701
  %8745 = fmul fast float %8725, %8720
  %8746 = fmul fast float %8725, %8723
  %8747 = fmul fast float %8725, %8744
  %8748 = call float @dx.op.binary.f32(i32 35, float %8746, float %8747)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 35, float %8745, float %8748)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 35, float %7034, float %7035)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %7033, float %8750)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8749, float %8751)  ; FMax(a,b)
  %8753 = fcmp fast ugt float %8752, 0x3F10000000000000
  br i1 %8753, label %8755, label %8754

; <label>:8754                                    ; preds = %8741
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8755

; <label>:8755                                    ; preds = %8754, %8741
  %8756 = add i32 %41, 356
  %8757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8756, i32 undef)  ; BufferLoad(srv,index,wot)
  %8758 = extractvalue %dx.types.ResRet.i32 %8757, 0
  %8759 = and i32 %8758, 32
  %8760 = icmp eq i32 %8759, 0
  br i1 %8760, label %8767, label %8761

; <label>:8761                                    ; preds = %8755
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = fmul fast float %8763, 0x3FE99999A0000000
  %8765 = fadd fast float %8763, %8745
  %8766 = fadd fast float %8764, %8747
  br label %8767

; <label>:8767                                    ; preds = %8761, %8755, %8726
  %8768 = phi float [ 1.000000e+00, %8726 ], [ %7034, %8761 ], [ %7034, %8755 ]
  %8769 = phi float [ 1.000000e+00, %8726 ], [ %7035, %8761 ], [ %7035, %8755 ]
  %8770 = phi float [ %8728, %8726 ], [ %8765, %8761 ], [ %8745, %8755 ]
  %8771 = phi float [ %8740, %8726 ], [ %8746, %8761 ], [ %8746, %8755 ]
  %8772 = phi float [ 1.000000e+00, %8726 ], [ %8766, %8761 ], [ %8747, %8755 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8770, float 3.225500e+04)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8771, float 3.225500e+04)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8772, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8774)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8775)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8776 = call float @dx.op.binary.f32(i32 36, float %7033, float 3.225500e+04)  ; FMin(a,b)
  %8777 = call float @dx.op.binary.f32(i32 36, float %8768, float 3.225500e+04)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8769, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8776)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8777)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8778)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

