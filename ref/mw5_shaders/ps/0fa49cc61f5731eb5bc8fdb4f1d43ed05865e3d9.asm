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
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7b4e86475aef31d790b1174148774137
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
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = icmp ne i32 %41, 0
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = alloca [12 x float], align 4
  %82 = alloca [12 x float], align 4
  %83 = alloca [3 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fmul fast float %88, %77
  %90 = fmul fast float %88, %78
  %91 = select i1 %42, float 1.000000e+00, float -1.000000e+00
  %92 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %68, %91
  %98 = fmul fast float %97, %96
  %99 = fmul fast float %69, %91
  %100 = fmul fast float %99, %96
  %101 = fmul fast float %70, %91
  %102 = fmul fast float %101, %96
  %103 = fmul fast float %69, %66
  %104 = fmul fast float %70, %65
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %70, %64
  %107 = fmul fast float %68, %66
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %68, %65
  %110 = fmul fast float %69, %64
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %105, %67
  %113 = fmul fast float %108, %67
  %114 = fmul fast float %111, %67
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %89, 2.000000e+00
  %119 = fmul fast float %118, %116
  %120 = fmul fast float %90, 2.000000e+00
  %121 = fmul fast float %120, %117
  %122 = fsub fast float 1.000000e+00, %119
  %123 = fsub fast float 1.000000e+00, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %122, %125
  %129 = fmul fast float %122, %126
  %130 = fmul fast float %122, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %123, %132
  %136 = fmul fast float %123, %133
  %137 = fmul fast float %123, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fadd fast float %135, %139
  %143 = fadd fast float %142, %128
  %144 = fadd fast float %136, %140
  %145 = fadd fast float %144, %129
  %146 = fadd fast float %137, %141
  %147 = fadd fast float %146, %130
  %148 = fmul fast float %143, %80
  %149 = fmul fast float %145, %80
  %150 = fmul fast float %147, %80
  %151 = fmul fast float %89, 5.000000e-01
  %152 = fmul fast float %90, 5.000000e-01
  %153 = fptosi float %151 to i32
  %154 = fptosi float %152 to i32
  %155 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = lshr i32 %156, 18
  %158 = uitofp i32 %157 to float
  %159 = fmul fast float %158, 0x3F4C00EBA0000000
  %160 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %161 = fadd fast float %160, -1.000000e+00
  %162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %163 = extractvalue %dx.types.Dimensions %162, 0
  %164 = sitofp i32 %163 to float
  %165 = extractvalue %dx.types.Dimensions %162, 1
  %166 = sitofp i32 %165 to float
  %167 = fcmp fast oge float %151, %164
  %168 = fcmp fast oge float %152, %166
  %169 = or i1 %167, %168
  %170 = select i1 %169, float 0x4197782600000000, float %161
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %174 = fmul fast float %172, %89
  %175 = fmul fast float %173, %90
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = and i32 %177, 114688
  %179 = icmp ne i32 %178, 0
  %180 = select i1 %179, float %174, float 0.000000e+00
  %181 = select i1 %179, float %175, float 0.000000e+00
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fmul fast float %183, 2.550000e+02
  %185 = fptoui float %184 to i32
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 3
  %189 = and i32 %188, 3
  %190 = icmp ne i32 %189, 0
  %191 = and i32 %188, 4
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %190, %192
  br i1 %193, label %194, label %205

; <label>:194                                     ; preds = %0
  %195 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %196 = fmul fast float %195, %90
  %197 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %198 = fmul fast float %197, %89
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %198, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fsub fast float 1.000000e+00, %200
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fcmp fast olt float %201, %203
  br label %208

; <label>:205                                     ; preds = %0
  %206 = icmp eq i32 %191, 0
  %207 = and i1 %190, %206
  br label %208

; <label>:208                                     ; preds = %205, %194
  %209 = phi i1 [ %204, %194 ], [ %207, %205 ]
  %210 = add i32 %43, 156
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = shl i32 %212, 4
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %212, 7
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %212, 22
  %220 = shl nuw nsw i32 %219, 5
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %43, 216
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %224, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %224, 16
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = add i32 %43, 36
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %43, 288
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = add i32 %43, 172
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %254, 7
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %254, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %43, 232
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %43, 52
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %43, 304
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %43, 188
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %43, 248
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %308, 8
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %308, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = add i32 %43, 68
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %43, 320
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %43, 204
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %338, 4
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %338, 7
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 22
  %346 = shl nuw nsw i32 %345, 5
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %43, 264
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %350, 8
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %350, 16
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = add i32 %43, 84
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %43, 336
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %373, 0x3F50624DE0000000
  %377 = fmul fast float %375, 0x3F50624DE0000000
  %378 = add i32 %43, 348
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 32
  %382 = icmp eq i32 %381, 0
  %383 = and i32 %380, 64
  %384 = icmp eq i32 %383, 0
  %385 = and i32 %380, 128
  %386 = icmp eq i32 %385, 0
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %406, label %391

; <label>:391                                     ; preds = %208
  %392 = add i32 %43, 472
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = add i32 %394, 0
  %396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %397 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %396, %dx.types.Handle %86, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = extractvalue %dx.types.ResRet.f32 %397, 3
  %402 = fmul fast float %401, %73
  %403 = fmul fast float %398, %74
  %404 = fmul fast float %399, %75
  %405 = fmul fast float %400, %76
  br label %406

; <label>:406                                     ; preds = %391, %208
  %407 = phi float [ %76, %208 ], [ %405, %391 ]
  %408 = phi float [ %75, %208 ], [ %404, %391 ]
  %409 = phi float [ %74, %208 ], [ %403, %391 ]
  %410 = phi float [ %73, %208 ], [ %402, %391 ]
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %434, label %415

; <label>:415                                     ; preds = %406
  %416 = add i32 %43, 44
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %409, float 1.000000e+00
  %422 = add i32 %43, 60
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 1
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %408, float 1.000000e+00
  %428 = add i32 %43, 76
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 1
  %432 = icmp ne i32 %431, 0
  %433 = select i1 %432, float %407, float 1.000000e+00
  br label %434

; <label>:434                                     ; preds = %415, %406
  %435 = phi float [ %407, %406 ], [ %433, %415 ]
  %436 = phi float [ %408, %406 ], [ %427, %415 ]
  %437 = phi float [ %409, %406 ], [ %421, %415 ]
  %438 = lshr i32 %412, 20
  %439 = and i32 %438, 3
  %440 = add nuw nsw i32 %439, 1
  %441 = add i32 %43, 24
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = add i32 %43, 28
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = or i32 %446, %443
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %1098, label %449

; <label>:449                                     ; preds = %434
  %450 = and i32 %443, 262144
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %46, float 1.000000e+00
  %453 = select i1 %451, float %47, float 0.000000e+00
  %454 = select i1 %451, float %48, float 0.000000e+00
  %455 = select i1 %451, float %49, float 1.000000e+00
  %456 = select i1 %451, float %50, float %71
  %457 = select i1 %451, float %51, float %72
  %458 = add i32 %43, 284
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = lshr i32 %460, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = fmul fast float %462, 0x3F50624DE0000000
  %464 = add i32 %43, 88
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  %469 = lshr i32 %466, 24
  %470 = add i32 %43, 292
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = add i32 %43, 32
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 22
  %481 = shl nuw nsw i32 %480, 5
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = shl i32 %479, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %479, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 3
  %491 = fmul fast float %490, 1.000000e+03
  %492 = fmul fast float %250, %491
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = fadd fast float %493, %240
  %495 = fmul fast float %251, %491
  %496 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %497 = fadd fast float %496, %242
  %498 = fmul fast float %463, %491
  %499 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %500 = fmul fast float %499, 0x401921FB60000000
  %501 = fadd fast float %500, %482
  %502 = call float @dx.op.unary.f32(i32 13, float %501)  ; Sin(value)
  %503 = call float @dx.op.unary.f32(i32 12, float %501)  ; Cos(value)
  %504 = fsub fast float -0.000000e+00, %502
  %505 = fadd fast float %456, -5.000000e-01
  %506 = fadd fast float %457, -5.000000e-01
  %507 = fmul fast float %474, %505
  %508 = fmul fast float %476, %506
  %509 = fadd fast float %507, 5.000000e-01
  %510 = fadd fast float %508, 5.000000e-01
  %511 = fmul fast float %485, %509
  %512 = fmul fast float %488, %510
  %513 = fmul fast float %503, %511
  %514 = call float @dx.op.tertiary.f32(i32 46, float %504, float %512, float %513)  ; FMad(a,b,c)
  %515 = fmul fast float %502, %511
  %516 = call float @dx.op.tertiary.f32(i32 46, float %503, float %512, float %515)  ; FMad(a,b,c)
  %517 = fadd fast float %494, %514
  %518 = fadd fast float %497, %516
  %519 = icmp ugt i32 %468, 1
  %520 = icmp ugt i32 %466, 33554431
  %521 = or i1 %520, %519
  br i1 %521, label %522, label %547

; <label>:522                                     ; preds = %449
  %523 = add i32 %43, 228
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = lshr i32 %525, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = fmul fast float %490, %527
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = mul nuw nsw i32 %468, %469
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %529, %531
  %533 = call float @dx.op.unary.f32(i32 27, float %532)  ; Round_ni(value)
  %534 = fptoui float %533 to i32
  %535 = urem i32 %534, %468
  %536 = udiv i32 %534, %469
  %537 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %538 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %539 = uitofp i32 %535 to float
  %540 = uitofp i32 %536 to float
  %541 = fadd fast float %537, %539
  %542 = fadd fast float %538, %540
  %543 = uitofp i32 %468 to float
  %544 = uitofp i32 %469 to float
  %545 = fdiv fast float %541, %543
  %546 = fdiv fast float %542, %544
  br label %547

; <label>:547                                     ; preds = %522, %449
  %548 = phi float [ %545, %522 ], [ %517, %449 ]
  %549 = phi float [ %546, %522 ], [ %518, %449 ]
  %550 = and i32 %443, 16777216
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %661, label %552

; <label>:552                                     ; preds = %547
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = fadd fast float %554, %148
  %558 = fadd fast float %555, %149
  %559 = fadd fast float %556, %150
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = icmp eq i32 %44, 65535
  br i1 %563, label %658, label %564

; <label>:564                                     ; preds = %552
  %565 = lshr i32 %44, 1
  %566 = shl i32 %565, 2
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %44, 1
  %570 = icmp ne i32 %569, 0
  %571 = lshr i32 %568, 16
  %572 = and i32 %568, 65535
  %573 = select i1 %570, i32 %571, i32 %572
  %574 = icmp eq i32 %573, 65535
  br i1 %574, label %654, label %575

; <label>:575                                     ; preds = %564
  %576 = mul nuw nsw i32 %573, 40
  %577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = add nuw nsw i32 %576, 12
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = add nuw nsw i32 %576, 24
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = add nuw nsw i32 %576, 36
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = fsub fast float %557, %578
  %595 = fsub fast float %558, %579
  %596 = fsub fast float %559, %580
  %597 = fmul fast float %593, %594
  %598 = fmul fast float %593, %595
  %599 = fmul fast float %593, %596
  %600 = call float @dx.op.unary.f32(i32 27, float %597)  ; Round_ni(value)
  %601 = call float @dx.op.unary.f32(i32 27, float %598)  ; Round_ni(value)
  %602 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %603 = fadd fast float %600, 5.000000e-01
  %604 = fadd fast float %601, 5.000000e-01
  %605 = fadd fast float %602, 5.000000e-01
  %606 = fmul fast float %603, %583
  %607 = fmul fast float %604, %584
  %608 = fmul fast float %605, %585
  %609 = shl i32 %44, 2
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %615 = call float @dx.op.unary.f32(i32 22, float %607)  ; Frc(value)
  %616 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %613, %dx.types.Handle %36, float %614, float %615, float %616, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = fmul fast float %618, 1.023000e+03
  %622 = fmul fast float %619, 1.023000e+03
  %623 = fmul fast float %620, 1.023000e+03
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %629 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %630 = fsub fast float %597, %600
  %631 = fsub fast float %598, %601
  %632 = fsub fast float %599, %602
  %633 = fmul fast float %630, 7.500000e-01
  %634 = fmul fast float %631, 7.500000e-01
  %635 = fmul fast float %632, 7.500000e-01
  %636 = fadd fast float %600, 1.250000e-01
  %637 = fadd fast float %636, %633
  %638 = fadd fast float %637, %627
  %639 = fadd fast float %601, 1.250000e-01
  %640 = fadd fast float %639, %634
  %641 = fadd fast float %640, %628
  %642 = fadd fast float %602, 1.250000e-01
  %643 = fadd fast float %642, %635
  %644 = fadd fast float %643, %629
  %645 = fmul fast float %638, %588
  %646 = fmul fast float %641, %589
  %647 = fmul fast float %644, %590
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %651, %dx.types.Handle %34, float %645, float %646, float %647, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  br label %654

; <label>:654                                     ; preds = %575, %564
  %655 = phi float [ %653, %575 ], [ -1.000000e+00, %564 ]
  %656 = fadd fast float %655, %562
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  br label %658

; <label>:658                                     ; preds = %654, %552
  %659 = phi float [ %657, %654 ], [ %562, %552 ]
  %660 = fmul fast float %659, %410
  br label %661

; <label>:661                                     ; preds = %658, %547
  %662 = phi float [ %660, %658 ], [ %410, %547 ]
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = and i32 %664, 256
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %713, label %667

; <label>:667                                     ; preds = %661
  %668 = add i32 %43, 424
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %86, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = add i32 %43, 100
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = shl i32 %677, 4
  %679 = and i32 %678, 32752
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = lshr i32 %677, 7
  %682 = and i32 %681, 32752
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = fsub fast float 1.000000e+00, %662
  %685 = call float @dx.op.binary.f32(i32 35, float %684, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %686 = bitcast float %662 to i32
  %687 = sitofp i32 %686 to float
  %688 = fadd fast float %687, 0xC1CFBF8940000000
  %689 = fmul fast float %683, %688
  %690 = fadd fast float %689, 0x41CFBF8940000000
  %691 = fptosi float %690 to i32
  %692 = bitcast i32 %691 to float
  %693 = bitcast float %685 to i32
  %694 = sitofp i32 %693 to float
  %695 = fadd fast float %694, 0xC1CFBF8940000000
  %696 = fmul fast float %695, %683
  %697 = fadd fast float %696, 0x41CFBF8940000000
  %698 = fptosi float %697 to i32
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %692, %680
  %701 = fmul fast float %699, %680
  %702 = fsub fast float %685, %700
  %703 = fadd fast float %701, %685
  %704 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %705 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %706 = fsub fast float %674, %704
  %707 = fsub fast float %705, %704
  %708 = bitcast float %707 to i32
  %709 = sub nsw i32 2129859010, %708
  %710 = bitcast i32 %709 to float
  %711 = fmul fast float %710, %706
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  br label %713

; <label>:713                                     ; preds = %667, %661
  %714 = phi float [ %712, %667 ], [ %662, %661 ]
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 128
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %735, label %719

; <label>:719                                     ; preds = %713
  %720 = add i32 %43, 408
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %86, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 524288
  %730 = icmp ne i32 %729, 0
  %731 = fcmp fast ogt float %726, 0x3FE0101020000000
  %732 = select i1 %731, float 1.000000e+00, float 0.000000e+00
  %733 = select i1 %730, float %732, float %726
  %734 = fmul fast float %733, %714
  br label %735

; <label>:735                                     ; preds = %719, %713
  %736 = phi float [ %734, %719 ], [ %714, %713 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 16
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %939, label %741

; <label>:741                                     ; preds = %735
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = add i32 %43, 360
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %85, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = and i32 %743, 255
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %743, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %753, %755
  %760 = fadd fast float %759, %758
  %761 = fmul fast float %760, 0x3F70101000000000
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 512
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %774, label %766

; <label>:766                                     ; preds = %741
  %767 = add i32 %43, 440
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %769, 0
  %771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %771, %dx.types.Handle %86, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  br label %774

; <label>:774                                     ; preds = %766, %741
  %775 = phi float [ %773, %766 ], [ 1.000000e+00, %741 ]
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 33554432
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %886, label %780

; <label>:780                                     ; preds = %774
  %781 = add i32 %43, 224
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 65535
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = lshr i32 %783, 16
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = add i32 %43, 228
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 24
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = and i32 %794, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %794, 8
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = lshr i32 %794, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = add i32 %43, 220
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = lshr i32 %811, 24
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101020000000
  %815 = and i32 %811, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = lshr i32 %811, 8
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = lshr i32 %811, 16
  %823 = and i32 %822, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = bitcast float %750 to i32
  %827 = ashr i32 %826, 1
  %828 = sub nsw i32 1597463174, %827
  %829 = bitcast i32 %828 to float
  %830 = fmul fast float %750, 5.000000e-01
  %831 = fmul fast float %829, %829
  %832 = fmul fast float %831, %830
  %833 = fsub fast float 1.500000e+00, %832
  %834 = fmul fast float %829, %750
  %835 = fmul fast float %834, %833
  %836 = bitcast float %751 to i32
  %837 = ashr i32 %836, 1
  %838 = sub nsw i32 1597463174, %837
  %839 = bitcast i32 %838 to float
  %840 = fmul fast float %751, 5.000000e-01
  %841 = fmul fast float %839, %839
  %842 = fmul fast float %841, %840
  %843 = fsub fast float 1.500000e+00, %842
  %844 = fmul fast float %839, %751
  %845 = fmul fast float %844, %843
  %846 = bitcast float %752 to i32
  %847 = ashr i32 %846, 1
  %848 = sub nsw i32 1597463174, %847
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %752, 5.000000e-01
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %851, %850
  %853 = fsub fast float 1.500000e+00, %852
  %854 = fmul fast float %849, %752
  %855 = fmul fast float %854, %853
  %856 = fsub fast float %835, %817
  %857 = fsub fast float %845, %821
  %858 = fsub fast float %855, %825
  %859 = fmul fast float %856, %785
  %860 = fmul fast float %857, %787
  %861 = fmul fast float %858, %792
  %862 = fadd fast float %859, %800
  %863 = fadd fast float %860, %804
  %864 = fadd fast float %861, %808
  %865 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %866 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %867 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %868 = fmul fast float %865, %865
  %869 = fmul fast float %866, %866
  %870 = fmul fast float %867, %867
  %871 = fsub fast float %868, %750
  %872 = fsub fast float %869, %751
  %873 = fsub fast float %870, %752
  %874 = fmul fast float %871, %775
  %875 = fmul fast float %872, %775
  %876 = fmul fast float %873, %775
  %877 = fadd fast float %874, %750
  %878 = fadd fast float %875, %751
  %879 = fadd fast float %876, %752
  %880 = fadd fast float %797, %761
  %881 = fsub fast float %880, %814
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fsub fast float %882, %761
  %884 = fmul fast float %883, %775
  %885 = fadd fast float %884, %761
  br label %939

; <label>:886                                     ; preds = %774
  %887 = and i32 %777, 134217728
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %923, label %889

; <label>:889                                     ; preds = %886
  %890 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %891 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %892 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %893 = fadd fast float %890, -5.000000e-01
  %894 = fadd fast float %891, -5.000000e-01
  %895 = fadd fast float %892, -5.000000e-01
  %896 = fmul fast float %893, %775
  %897 = fmul fast float %894, %775
  %898 = fmul fast float %895, %775
  %899 = fadd fast float %896, 5.000000e-01
  %900 = fadd fast float %897, 5.000000e-01
  %901 = fadd fast float %898, 5.000000e-01
  %902 = call float @dx.op.unary.f32(i32 24, float %750)  ; Sqrt(value)
  %903 = call float @dx.op.unary.f32(i32 24, float %751)  ; Sqrt(value)
  %904 = call float @dx.op.unary.f32(i32 24, float %752)  ; Sqrt(value)
  %905 = fmul fast float %899, 2.000000e+00
  %906 = fsub fast float 1.000000e+00, %905
  %907 = fmul fast float %906, %902
  %908 = fadd fast float %907, %905
  %909 = fmul fast float %908, %902
  %910 = fmul fast float %900, 2.000000e+00
  %911 = fsub fast float 1.000000e+00, %910
  %912 = fmul fast float %911, %903
  %913 = fadd fast float %912, %910
  %914 = fmul fast float %913, %903
  %915 = fmul fast float %901, 2.000000e+00
  %916 = fsub fast float 1.000000e+00, %915
  %917 = fmul fast float %916, %904
  %918 = fadd fast float %917, %915
  %919 = fmul fast float %918, %904
  %920 = fmul fast float %909, %909
  %921 = fmul fast float %914, %914
  %922 = fmul fast float %919, %919
  br label %939

; <label>:923                                     ; preds = %886
  %924 = fmul fast float %227, %227
  %925 = fmul fast float %231, %231
  %926 = fmul fast float %235, %235
  %927 = fadd fast float %924, -1.000000e+00
  %928 = fadd fast float %925, -1.000000e+00
  %929 = fadd fast float %926, -1.000000e+00
  %930 = fmul fast float %775, %927
  %931 = fmul fast float %775, %928
  %932 = fmul fast float %775, %929
  %933 = fadd fast float %930, 1.000000e+00
  %934 = fadd fast float %931, 1.000000e+00
  %935 = fadd fast float %932, 1.000000e+00
  %936 = fmul fast float %933, %750
  %937 = fmul fast float %934, %751
  %938 = fmul fast float %935, %752
  br label %939

; <label>:939                                     ; preds = %923, %889, %780, %735
  %940 = phi float [ %885, %780 ], [ %761, %889 ], [ %761, %923 ], [ 0x3FA23C0BE0000000, %735 ]
  %941 = phi float [ %877, %780 ], [ %920, %889 ], [ %936, %923 ], [ 1.000000e+00, %735 ]
  %942 = phi float [ %878, %780 ], [ %921, %889 ], [ %937, %923 ], [ 1.000000e+00, %735 ]
  %943 = phi float [ %879, %780 ], [ %922, %889 ], [ %938, %923 ], [ 1.000000e+00, %735 ]
  %944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.i32 %944, 1
  %946 = and i32 %945, 1
  %947 = icmp ne i32 %946, 0
  %948 = add i32 %43, 356
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 32
  %952 = icmp ne i32 %951, 0
  %953 = and i1 %947, %952
  %954 = select i1 %953, float 1.000000e+00, float %941
  %955 = select i1 %953, float 0x3FD3333340000000, float %942
  %956 = select i1 %953, float 0x3FD3333340000000, float %943
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 32
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %1033, label %961

; <label>:961                                     ; preds = %939
  %962 = add i32 %43, 92
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = add i32 %43, 376
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = add i32 %967, 0
  %969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %969, %dx.types.Handle %85, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = extractvalue %dx.types.ResRet.f32 %970, 3
  %975 = and i32 %964, 255
  %976 = uitofp i32 %975 to float
  %977 = lshr i32 %964, 8
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = lshr i32 %964, 16
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101000000000
  %984 = fmul fast float %971, %976
  %985 = fadd fast float %984, %979
  %986 = fmul fast float %985, 0x3F70101000000000
  %987 = fadd fast float %972, -5.000000e-01
  %988 = fadd fast float %974, -5.000000e-01
  %989 = fmul fast float %987, %983
  %990 = fmul fast float %988, %983
  %991 = fadd fast float %989, 5.000000e-01
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fmul fast float %991, 2.000000e+00
  %994 = fadd fast float %993, -1.000000e+00
  %995 = fmul fast float %992, 2.000000e+00
  %996 = fadd fast float %995, -1.000000e+00
  %997 = fadd fast float %994, %996
  %998 = fmul fast float %997, 5.000000e-01
  %999 = fsub fast float %994, %996
  %1000 = fmul fast float %999, 5.000000e-01
  %1001 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1002 = fsub fast float 1.000000e+00, %1001
  %1003 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1004 = fsub fast float %1002, %1003
  %1005 = call float @dx.op.dot3.f32(i32 55, float %998, float %1000, float %1004, float %998, float %1000, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.unary.f32(i32 25, float %1005)  ; Rsqrt(value)
  %1007 = fmul fast float %998, %1006
  %1008 = fmul fast float %1000, %1006
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 67108864
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1029, label %1013

; <label>:1013                                    ; preds = %961
  %1014 = add i32 %43, 280
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 65535
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 65535
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = lshr i32 %1016, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fsub fast float %986, %1024
  %1026 = fmul fast float %1025, %1018
  %1027 = fadd fast float %1026, %1022
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  br label %1029

; <label>:1029                                    ; preds = %1013, %961
  %1030 = phi float [ %1028, %1013 ], [ %986, %961 ]
  %1031 = call float @dx.op.dot2.f32(i32 54, float %1007, float %1008, float %452, float %453)  ; Dot2(ax,ay,bx,by)
  %1032 = call float @dx.op.dot2.f32(i32 54, float %1007, float %1008, float %454, float %455)  ; Dot2(ax,ay,bx,by)
  br label %1033

; <label>:1033                                    ; preds = %1029, %939
  %1034 = phi float [ %1030, %1029 ], [ 0x3FD6666660000000, %939 ]
  %1035 = phi float [ %1031, %1029 ], [ 0.000000e+00, %939 ]
  %1036 = phi float [ %1032, %1029 ], [ 0.000000e+00, %939 ]
  %1037 = phi float [ %973, %1029 ], [ 1.000000e+00, %939 ]
  %1038 = add i32 %43, 160
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = lshr i32 %1040, 22
  %1042 = shl nuw nsw i32 %1041, 5
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 64
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1081, label %1048

; <label>:1048                                    ; preds = %1033
  %1049 = add i32 %43, 392
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = add i32 %1051, 0
  %1053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = and i32 %1055, 131072
  %1057 = icmp eq i32 %1056, 0
  %1058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1053, %dx.types.Handle %85, float %548, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = fmul fast float %1059, %215
  %1063 = fmul fast float %1060, %218
  %1064 = fmul fast float %1061, %221
  br i1 %1057, label %1071, label %1065

; <label>:1065                                    ; preds = %1048
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = fmul fast float %1067, %1062
  %1069 = fmul fast float %1067, %1063
  %1070 = fmul fast float %1067, %1064
  br label %1071

; <label>:1071                                    ; preds = %1065, %1048
  %1072 = phi float [ %1068, %1065 ], [ %1062, %1048 ]
  %1073 = phi float [ %1069, %1065 ], [ %1063, %1048 ]
  %1074 = phi float [ %1070, %1065 ], [ %1064, %1048 ]
  %1075 = fmul fast float %1072, %1043
  %1076 = select i1 %209, float %1075, float %1072
  %1077 = call float @dx.op.dot3.f32(i32 55, float %1076, float %1073, float %1074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = select i1 %209, float 0.000000e+00, float %1072
  %1079 = select i1 %209, float %1077, float %1073
  %1080 = select i1 %209, float 0.000000e+00, float %1074
  br label %1081

; <label>:1081                                    ; preds = %1071, %1033
  %1082 = phi float [ %1078, %1071 ], [ 0.000000e+00, %1033 ]
  %1083 = phi float [ %1079, %1071 ], [ 0.000000e+00, %1033 ]
  %1084 = phi float [ %1080, %1071 ], [ 0.000000e+00, %1033 ]
  %1085 = add i32 %43, 96
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = lshr i32 %1087, 8
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fmul fast float %1092, %1093
  %1095 = fadd fast float %1094, %1089
  %1096 = fmul fast float %1095, 0x3F70101020000000
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  br label %1098

; <label>:1098                                    ; preds = %1081, %434
  %1099 = phi float [ 0.000000e+00, %434 ], [ %1035, %1081 ]
  %1100 = phi float [ 0.000000e+00, %434 ], [ %1036, %1081 ]
  %1101 = phi float [ 0.000000e+00, %434 ], [ %954, %1081 ]
  %1102 = phi float [ 0.000000e+00, %434 ], [ %955, %1081 ]
  %1103 = phi float [ 0.000000e+00, %434 ], [ %956, %1081 ]
  %1104 = phi float [ 0.000000e+00, %434 ], [ %1082, %1081 ]
  %1105 = phi float [ 0.000000e+00, %434 ], [ %1083, %1081 ]
  %1106 = phi float [ 0.000000e+00, %434 ], [ %1084, %1081 ]
  %1107 = phi float [ 0.000000e+00, %434 ], [ %940, %1081 ]
  %1108 = phi float [ 0.000000e+00, %434 ], [ %736, %1081 ]
  %1109 = phi float [ 0.000000e+00, %434 ], [ %1034, %1081 ]
  %1110 = phi float [ 0.000000e+00, %434 ], [ %1037, %1081 ]
  %1111 = phi float [ 0.000000e+00, %434 ], [ %1097, %1081 ]
  br i1 %382, label %1953, label %1112

; <label>:1112                                    ; preds = %1098
  %1113 = icmp ult i32 %440, 2
  %1114 = add i32 %43, 40
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %43, 44
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = or i32 %1119, %1116
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1953, label %1122

; <label>:1122                                    ; preds = %1112
  %1123 = and i32 %1116, 262144
  %1124 = icmp ne i32 %1123, 0
  %1125 = select i1 %1124, float %46, float 1.000000e+00
  %1126 = select i1 %1124, float %47, float 0.000000e+00
  %1127 = select i1 %1124, float %48, float 0.000000e+00
  %1128 = select i1 %1124, float %49, float 1.000000e+00
  %1129 = select i1 %1124, float %50, float %71
  %1130 = select i1 %1124, float %51, float %72
  %1131 = add i32 %43, 300
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = lshr i32 %1133, 16
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = fmul fast float %1135, 0x3F50624DE0000000
  %1137 = add i32 %43, 104
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = lshr i32 %1139, 16
  %1141 = and i32 %1140, 255
  %1142 = lshr i32 %1139, 24
  %1143 = add i32 %43, 308
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 65535
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = lshr i32 %1145, 16
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = add i32 %43, 48
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 22
  %1154 = shl nuw nsw i32 %1153, 5
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = shl i32 %1152, 4
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = lshr i32 %1152, 7
  %1160 = and i32 %1159, 32752
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1164 = fmul fast float %1163, 1.000000e+03
  %1165 = fmul fast float %292, %1164
  %1166 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1167 = fadd fast float %1166, %282
  %1168 = fmul fast float %293, %1164
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = fadd fast float %1169, %284
  %1171 = fmul fast float %1136, %1164
  %1172 = call float @dx.op.unary.f32(i32 22, float %1171)  ; Frc(value)
  %1173 = fmul fast float %1172, 0x401921FB60000000
  %1174 = fadd fast float %1173, %1155
  %1175 = call float @dx.op.unary.f32(i32 13, float %1174)  ; Sin(value)
  %1176 = call float @dx.op.unary.f32(i32 12, float %1174)  ; Cos(value)
  %1177 = fsub fast float -0.000000e+00, %1175
  %1178 = fadd fast float %1129, -5.000000e-01
  %1179 = fadd fast float %1130, -5.000000e-01
  %1180 = fmul fast float %1147, %1178
  %1181 = fmul fast float %1149, %1179
  %1182 = fadd fast float %1180, 5.000000e-01
  %1183 = fadd fast float %1181, 5.000000e-01
  %1184 = fmul fast float %1158, %1182
  %1185 = fmul fast float %1161, %1183
  %1186 = fmul fast float %1176, %1184
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1177, float %1185, float %1186)  ; FMad(a,b,c)
  %1188 = fmul fast float %1175, %1184
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %1176, float %1185, float %1188)  ; FMad(a,b,c)
  %1190 = fadd fast float %1167, %1187
  %1191 = fadd fast float %1170, %1189
  %1192 = icmp ugt i32 %1141, 1
  %1193 = icmp ugt i32 %1139, 33554431
  %1194 = or i1 %1193, %1192
  br i1 %1194, label %1195, label %1220

; <label>:1195                                    ; preds = %1122
  %1196 = add i32 %43, 244
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = lshr i32 %1198, 16
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = fmul fast float %1163, %1200
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = mul nuw nsw i32 %1141, %1142
  %1204 = uitofp i32 %1203 to float
  %1205 = fmul fast float %1202, %1204
  %1206 = call float @dx.op.unary.f32(i32 27, float %1205)  ; Round_ni(value)
  %1207 = fptoui float %1206 to i32
  %1208 = urem i32 %1207, %1141
  %1209 = udiv i32 %1207, %1142
  %1210 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1211 = call float @dx.op.unary.f32(i32 22, float %1191)  ; Frc(value)
  %1212 = uitofp i32 %1208 to float
  %1213 = uitofp i32 %1209 to float
  %1214 = fadd fast float %1210, %1212
  %1215 = fadd fast float %1211, %1213
  %1216 = uitofp i32 %1141 to float
  %1217 = uitofp i32 %1142 to float
  %1218 = fdiv fast float %1214, %1216
  %1219 = fdiv fast float %1215, %1217
  br label %1220

; <label>:1220                                    ; preds = %1195, %1122
  %1221 = phi float [ %1218, %1195 ], [ %1190, %1122 ]
  %1222 = phi float [ %1219, %1195 ], [ %1191, %1122 ]
  %1223 = and i32 %1116, 16777216
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1334, label %1225

; <label>:1225                                    ; preds = %1220
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1230 = fadd fast float %1227, %148
  %1231 = fadd fast float %1228, %149
  %1232 = fadd fast float %1229, %150
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = icmp eq i32 %44, 65535
  br i1 %1236, label %1331, label %1237

; <label>:1237                                    ; preds = %1225
  %1238 = lshr i32 %44, 1
  %1239 = shl i32 %1238, 2
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %44, 1
  %1243 = icmp ne i32 %1242, 0
  %1244 = lshr i32 %1241, 16
  %1245 = and i32 %1241, 65535
  %1246 = select i1 %1243, i32 %1244, i32 %1245
  %1247 = icmp eq i32 %1246, 65535
  br i1 %1247, label %1327, label %1248

; <label>:1248                                    ; preds = %1237
  %1249 = mul nuw nsw i32 %1246, 40
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = add nuw nsw i32 %1249, 12
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = add nuw nsw i32 %1249, 24
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = add nuw nsw i32 %1249, 36
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = fsub fast float %1230, %1251
  %1268 = fsub fast float %1231, %1252
  %1269 = fsub fast float %1232, %1253
  %1270 = fmul fast float %1266, %1267
  %1271 = fmul fast float %1266, %1268
  %1272 = fmul fast float %1266, %1269
  %1273 = call float @dx.op.unary.f32(i32 27, float %1270)  ; Round_ni(value)
  %1274 = call float @dx.op.unary.f32(i32 27, float %1271)  ; Round_ni(value)
  %1275 = call float @dx.op.unary.f32(i32 27, float %1272)  ; Round_ni(value)
  %1276 = fadd fast float %1273, 5.000000e-01
  %1277 = fadd fast float %1274, 5.000000e-01
  %1278 = fadd fast float %1275, 5.000000e-01
  %1279 = fmul fast float %1276, %1256
  %1280 = fmul fast float %1277, %1257
  %1281 = fmul fast float %1278, %1258
  %1282 = shl i32 %44, 2
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  %1288 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1289 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1286, %dx.types.Handle %36, float %1287, float %1288, float %1289, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = fmul fast float %1291, 1.023000e+03
  %1295 = fmul fast float %1292, 1.023000e+03
  %1296 = fmul fast float %1293, 1.023000e+03
  %1297 = fadd fast float %1294, 5.000000e-01
  %1298 = fadd fast float %1295, 5.000000e-01
  %1299 = fadd fast float %1296, 5.000000e-01
  %1300 = call float @dx.op.unary.f32(i32 27, float %1297)  ; Round_ni(value)
  %1301 = call float @dx.op.unary.f32(i32 27, float %1298)  ; Round_ni(value)
  %1302 = call float @dx.op.unary.f32(i32 27, float %1299)  ; Round_ni(value)
  %1303 = fsub fast float %1270, %1273
  %1304 = fsub fast float %1271, %1274
  %1305 = fsub fast float %1272, %1275
  %1306 = fmul fast float %1303, 7.500000e-01
  %1307 = fmul fast float %1304, 7.500000e-01
  %1308 = fmul fast float %1305, 7.500000e-01
  %1309 = fadd fast float %1273, 1.250000e-01
  %1310 = fadd fast float %1309, %1306
  %1311 = fadd fast float %1310, %1300
  %1312 = fadd fast float %1274, 1.250000e-01
  %1313 = fadd fast float %1312, %1307
  %1314 = fadd fast float %1313, %1301
  %1315 = fadd fast float %1275, 1.250000e-01
  %1316 = fadd fast float %1315, %1308
  %1317 = fadd fast float %1316, %1302
  %1318 = fmul fast float %1311, %1261
  %1319 = fmul fast float %1314, %1262
  %1320 = fmul fast float %1317, %1263
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = add i32 %1322, 0
  %1324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1324, %dx.types.Handle %34, float %1318, float %1319, float %1320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  br label %1327

; <label>:1327                                    ; preds = %1248, %1237
  %1328 = phi float [ %1326, %1248 ], [ -1.000000e+00, %1237 ]
  %1329 = fadd fast float %1328, %1235
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  br label %1331

; <label>:1331                                    ; preds = %1327, %1225
  %1332 = phi float [ %1330, %1327 ], [ %1235, %1225 ]
  %1333 = fmul fast float %1332, %437
  br label %1334

; <label>:1334                                    ; preds = %1331, %1220
  %1335 = phi float [ %1333, %1331 ], [ %437, %1220 ]
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 256
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1386, label %1340

; <label>:1340                                    ; preds = %1334
  %1341 = add i32 %43, 428
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %1343, 0
  %1345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1345, %dx.types.Handle %86, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = add i32 %43, 116
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = shl i32 %1350, 4
  %1352 = and i32 %1351, 32752
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = lshr i32 %1350, 7
  %1355 = and i32 %1354, 32752
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = fsub fast float 1.000000e+00, %1335
  %1358 = call float @dx.op.binary.f32(i32 35, float %1357, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1359 = bitcast float %1335 to i32
  %1360 = sitofp i32 %1359 to float
  %1361 = fadd fast float %1360, 0xC1CFBF8940000000
  %1362 = fmul fast float %1356, %1361
  %1363 = fadd fast float %1362, 0x41CFBF8940000000
  %1364 = fptosi float %1363 to i32
  %1365 = bitcast i32 %1364 to float
  %1366 = bitcast float %1358 to i32
  %1367 = sitofp i32 %1366 to float
  %1368 = fadd fast float %1367, 0xC1CFBF8940000000
  %1369 = fmul fast float %1368, %1356
  %1370 = fadd fast float %1369, 0x41CFBF8940000000
  %1371 = fptosi float %1370 to i32
  %1372 = bitcast i32 %1371 to float
  %1373 = fmul fast float %1365, %1353
  %1374 = fmul fast float %1372, %1353
  %1375 = fsub fast float %1358, %1373
  %1376 = fadd fast float %1374, %1358
  %1377 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1379 = fsub fast float %1347, %1377
  %1380 = fsub fast float %1378, %1377
  %1381 = bitcast float %1380 to i32
  %1382 = sub nsw i32 2129859010, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = fmul fast float %1383, %1379
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  br label %1386

; <label>:1386                                    ; preds = %1340, %1334
  %1387 = phi float [ %1385, %1340 ], [ %1335, %1334 ]
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 128
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1408, label %1392

; <label>:1392                                    ; preds = %1386
  %1393 = add i32 %43, 412
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = add i32 %1395, 0
  %1397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1397, %dx.types.Handle %86, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 524288
  %1403 = icmp ne i32 %1402, 0
  %1404 = fcmp fast ogt float %1399, 0x3FE0101020000000
  %1405 = select i1 %1404, float 1.000000e+00, float 0.000000e+00
  %1406 = select i1 %1403, float %1405, float %1399
  %1407 = fmul fast float %1406, %1387
  br label %1408

; <label>:1408                                    ; preds = %1392, %1386
  %1409 = phi float [ %1407, %1392 ], [ %1387, %1386 ]
  %1410 = fcmp fast ult float %1409, 0x3F70101020000000
  br i1 %1410, label %1953, label %1411

; <label>:1411                                    ; preds = %1408
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 16
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1614, label %1416

; <label>:1416                                    ; preds = %1411
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %43, 364
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %85, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = and i32 %1418, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = lshr i32 %1418, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1428, %1430
  %1435 = fadd fast float %1434, %1433
  %1436 = fmul fast float %1435, 0x3F70101000000000
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 512
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1449, label %1441

; <label>:1441                                    ; preds = %1416
  %1442 = add i32 %43, 444
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %1444, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %86, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  br label %1449

; <label>:1449                                    ; preds = %1441, %1416
  %1450 = phi float [ %1448, %1441 ], [ 1.000000e+00, %1416 ]
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 33554432
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1561, label %1455

; <label>:1455                                    ; preds = %1449
  %1456 = add i32 %43, 240
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 65535
  %1460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1459)  ; LegacyF16ToF32(value)
  %1461 = lshr i32 %1458, 16
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = add i32 %43, 244
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = lshr i32 %1469, 24
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = and i32 %1469, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1474, 0x3F70101020000000
  %1476 = lshr i32 %1469, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = lshr i32 %1469, 16
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = fmul fast float %1482, 0x3F70101020000000
  %1484 = add i32 %43, 236
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = lshr i32 %1486, 24
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1488, 0x3F70101020000000
  %1490 = and i32 %1486, 255
  %1491 = uitofp i32 %1490 to float
  %1492 = fmul fast float %1491, 0x3F70101020000000
  %1493 = lshr i32 %1486, 8
  %1494 = and i32 %1493, 255
  %1495 = uitofp i32 %1494 to float
  %1496 = fmul fast float %1495, 0x3F70101020000000
  %1497 = lshr i32 %1486, 16
  %1498 = and i32 %1497, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = fmul fast float %1499, 0x3F70101020000000
  %1501 = bitcast float %1425 to i32
  %1502 = ashr i32 %1501, 1
  %1503 = sub nsw i32 1597463174, %1502
  %1504 = bitcast i32 %1503 to float
  %1505 = fmul fast float %1425, 5.000000e-01
  %1506 = fmul fast float %1504, %1504
  %1507 = fmul fast float %1506, %1505
  %1508 = fsub fast float 1.500000e+00, %1507
  %1509 = fmul fast float %1504, %1425
  %1510 = fmul fast float %1509, %1508
  %1511 = bitcast float %1426 to i32
  %1512 = ashr i32 %1511, 1
  %1513 = sub nsw i32 1597463174, %1512
  %1514 = bitcast i32 %1513 to float
  %1515 = fmul fast float %1426, 5.000000e-01
  %1516 = fmul fast float %1514, %1514
  %1517 = fmul fast float %1516, %1515
  %1518 = fsub fast float 1.500000e+00, %1517
  %1519 = fmul fast float %1514, %1426
  %1520 = fmul fast float %1519, %1518
  %1521 = bitcast float %1427 to i32
  %1522 = ashr i32 %1521, 1
  %1523 = sub nsw i32 1597463174, %1522
  %1524 = bitcast i32 %1523 to float
  %1525 = fmul fast float %1427, 5.000000e-01
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1526, %1525
  %1528 = fsub fast float 1.500000e+00, %1527
  %1529 = fmul fast float %1524, %1427
  %1530 = fmul fast float %1529, %1528
  %1531 = fsub fast float %1510, %1492
  %1532 = fsub fast float %1520, %1496
  %1533 = fsub fast float %1530, %1500
  %1534 = fmul fast float %1531, %1460
  %1535 = fmul fast float %1532, %1462
  %1536 = fmul fast float %1533, %1467
  %1537 = fadd fast float %1534, %1475
  %1538 = fadd fast float %1535, %1479
  %1539 = fadd fast float %1536, %1483
  %1540 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1543 = fmul fast float %1540, %1540
  %1544 = fmul fast float %1541, %1541
  %1545 = fmul fast float %1542, %1542
  %1546 = fsub fast float %1543, %1425
  %1547 = fsub fast float %1544, %1426
  %1548 = fsub fast float %1545, %1427
  %1549 = fmul fast float %1546, %1450
  %1550 = fmul fast float %1547, %1450
  %1551 = fmul fast float %1548, %1450
  %1552 = fadd fast float %1549, %1425
  %1553 = fadd fast float %1550, %1426
  %1554 = fadd fast float %1551, %1427
  %1555 = fadd fast float %1472, %1436
  %1556 = fsub fast float %1555, %1489
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fsub fast float %1557, %1436
  %1559 = fmul fast float %1558, %1450
  %1560 = fadd fast float %1559, %1436
  br label %1614

; <label>:1561                                    ; preds = %1449
  %1562 = and i32 %1452, 134217728
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1598, label %1564

; <label>:1564                                    ; preds = %1561
  %1565 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %1566 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1567 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1568 = fadd fast float %1565, -5.000000e-01
  %1569 = fadd fast float %1566, -5.000000e-01
  %1570 = fadd fast float %1567, -5.000000e-01
  %1571 = fmul fast float %1568, %1450
  %1572 = fmul fast float %1569, %1450
  %1573 = fmul fast float %1570, %1450
  %1574 = fadd fast float %1571, 5.000000e-01
  %1575 = fadd fast float %1572, 5.000000e-01
  %1576 = fadd fast float %1573, 5.000000e-01
  %1577 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1578 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1579 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1580 = fmul fast float %1574, 2.000000e+00
  %1581 = fsub fast float 1.000000e+00, %1580
  %1582 = fmul fast float %1581, %1577
  %1583 = fadd fast float %1582, %1580
  %1584 = fmul fast float %1583, %1577
  %1585 = fmul fast float %1575, 2.000000e+00
  %1586 = fsub fast float 1.000000e+00, %1585
  %1587 = fmul fast float %1586, %1578
  %1588 = fadd fast float %1587, %1585
  %1589 = fmul fast float %1588, %1578
  %1590 = fmul fast float %1576, 2.000000e+00
  %1591 = fsub fast float 1.000000e+00, %1590
  %1592 = fmul fast float %1591, %1579
  %1593 = fadd fast float %1592, %1590
  %1594 = fmul fast float %1593, %1579
  %1595 = fmul fast float %1584, %1584
  %1596 = fmul fast float %1589, %1589
  %1597 = fmul fast float %1594, %1594
  br label %1614

; <label>:1598                                    ; preds = %1561
  %1599 = fmul fast float %269, %269
  %1600 = fmul fast float %273, %273
  %1601 = fmul fast float %277, %277
  %1602 = fadd fast float %1599, -1.000000e+00
  %1603 = fadd fast float %1600, -1.000000e+00
  %1604 = fadd fast float %1601, -1.000000e+00
  %1605 = fmul fast float %1450, %1602
  %1606 = fmul fast float %1450, %1603
  %1607 = fmul fast float %1450, %1604
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fadd fast float %1607, 1.000000e+00
  %1611 = fmul fast float %1608, %1425
  %1612 = fmul fast float %1609, %1426
  %1613 = fmul fast float %1610, %1427
  br label %1614

; <label>:1614                                    ; preds = %1598, %1564, %1455, %1411
  %1615 = phi float [ %1560, %1455 ], [ %1436, %1564 ], [ %1436, %1598 ], [ 0x3FA23C0BE0000000, %1411 ]
  %1616 = phi float [ %1552, %1455 ], [ %1595, %1564 ], [ %1611, %1598 ], [ 1.000000e+00, %1411 ]
  %1617 = phi float [ %1553, %1455 ], [ %1596, %1564 ], [ %1612, %1598 ], [ 1.000000e+00, %1411 ]
  %1618 = phi float [ %1554, %1455 ], [ %1597, %1564 ], [ %1613, %1598 ], [ 1.000000e+00, %1411 ]
  %1619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.i32 %1619, 1
  %1621 = and i32 %1620, 1
  %1622 = icmp ne i32 %1621, 0
  %1623 = add i32 %43, 356
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = and i32 %1625, 32
  %1627 = icmp ne i32 %1626, 0
  %1628 = and i1 %1622, %1627
  %1629 = select i1 %1628, float 1.000000e+00, float %1616
  %1630 = select i1 %1628, float 0x3FD3333340000000, float %1617
  %1631 = select i1 %1628, float 0x3FD3333340000000, float %1618
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = and i32 %1633, 32
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1708, label %1636

; <label>:1636                                    ; preds = %1614
  %1637 = add i32 %43, 108
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = add i32 %43, 380
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = add i32 %1642, 0
  %1644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1644, %dx.types.Handle %85, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.ResRet.f32 %1645, 3
  %1650 = and i32 %1639, 255
  %1651 = uitofp i32 %1650 to float
  %1652 = lshr i32 %1639, 8
  %1653 = and i32 %1652, 255
  %1654 = uitofp i32 %1653 to float
  %1655 = lshr i32 %1639, 16
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101000000000
  %1659 = fmul fast float %1646, %1651
  %1660 = fadd fast float %1659, %1654
  %1661 = fmul fast float %1660, 0x3F70101000000000
  %1662 = fadd fast float %1647, -5.000000e-01
  %1663 = fadd fast float %1649, -5.000000e-01
  %1664 = fmul fast float %1662, %1658
  %1665 = fmul fast float %1663, %1658
  %1666 = fadd fast float %1664, 5.000000e-01
  %1667 = fadd fast float %1665, 5.000000e-01
  %1668 = fmul fast float %1666, 2.000000e+00
  %1669 = fadd fast float %1668, -1.000000e+00
  %1670 = fmul fast float %1667, 2.000000e+00
  %1671 = fadd fast float %1670, -1.000000e+00
  %1672 = fadd fast float %1669, %1671
  %1673 = fmul fast float %1672, 5.000000e-01
  %1674 = fsub fast float %1669, %1671
  %1675 = fmul fast float %1674, 5.000000e-01
  %1676 = call float @dx.op.unary.f32(i32 6, float %1673)  ; FAbs(value)
  %1677 = fsub fast float 1.000000e+00, %1676
  %1678 = call float @dx.op.unary.f32(i32 6, float %1675)  ; FAbs(value)
  %1679 = fsub fast float %1677, %1678
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1673, float %1675, float %1679, float %1673, float %1675, float %1679)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = call float @dx.op.unary.f32(i32 25, float %1680)  ; Rsqrt(value)
  %1682 = fmul fast float %1673, %1681
  %1683 = fmul fast float %1675, %1681
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = and i32 %1685, 67108864
  %1687 = icmp eq i32 %1686, 0
  br i1 %1687, label %1704, label %1688

; <label>:1688                                    ; preds = %1636
  %1689 = add i32 %43, 296
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 65535
  %1693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1692)  ; LegacyF16ToF32(value)
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 65535
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = lshr i32 %1691, 16
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = fsub fast float %1661, %1699
  %1701 = fmul fast float %1700, %1693
  %1702 = fadd fast float %1701, %1697
  %1703 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  br label %1704

; <label>:1704                                    ; preds = %1688, %1636
  %1705 = phi float [ %1703, %1688 ], [ %1661, %1636 ]
  %1706 = call float @dx.op.dot2.f32(i32 54, float %1682, float %1683, float %1125, float %1126)  ; Dot2(ax,ay,bx,by)
  %1707 = call float @dx.op.dot2.f32(i32 54, float %1682, float %1683, float %1127, float %1128)  ; Dot2(ax,ay,bx,by)
  br label %1708

; <label>:1708                                    ; preds = %1704, %1614
  %1709 = phi float [ %1705, %1704 ], [ 0x3FD6666660000000, %1614 ]
  %1710 = phi float [ %1706, %1704 ], [ 0.000000e+00, %1614 ]
  %1711 = phi float [ %1707, %1704 ], [ 0.000000e+00, %1614 ]
  %1712 = phi float [ %1648, %1704 ], [ 1.000000e+00, %1614 ]
  %1713 = add i32 %43, 176
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = lshr i32 %1715, 22
  %1717 = shl nuw nsw i32 %1716, 5
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 64
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1756, label %1723

; <label>:1723                                    ; preds = %1708
  %1724 = add i32 %43, 396
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = add i32 %1726, 0
  %1728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 131072
  %1732 = icmp eq i32 %1731, 0
  %1733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1728, %dx.types.Handle %85, float %1221, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1737 = fmul fast float %1734, %257
  %1738 = fmul fast float %1735, %260
  %1739 = fmul fast float %1736, %263
  br i1 %1732, label %1746, label %1740

; <label>:1740                                    ; preds = %1723
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = fmul fast float %1742, %1737
  %1744 = fmul fast float %1742, %1738
  %1745 = fmul fast float %1742, %1739
  br label %1746

; <label>:1746                                    ; preds = %1740, %1723
  %1747 = phi float [ %1743, %1740 ], [ %1737, %1723 ]
  %1748 = phi float [ %1744, %1740 ], [ %1738, %1723 ]
  %1749 = phi float [ %1745, %1740 ], [ %1739, %1723 ]
  %1750 = fmul fast float %1747, %1718
  %1751 = select i1 %209, float %1750, float %1747
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1748, float %1749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = select i1 %209, float 0.000000e+00, float %1747
  %1754 = select i1 %209, float %1752, float %1748
  %1755 = select i1 %209, float 0.000000e+00, float %1749
  br label %1756

; <label>:1756                                    ; preds = %1746, %1708
  %1757 = phi float [ %1753, %1746 ], [ 0.000000e+00, %1708 ]
  %1758 = phi float [ %1754, %1746 ], [ 0.000000e+00, %1708 ]
  %1759 = phi float [ %1755, %1746 ], [ 0.000000e+00, %1708 ]
  %1760 = add i32 %43, 112
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = lshr i32 %1762, 8
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1630, float %1631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = fmul fast float %1767, %1768
  %1770 = fadd fast float %1769, %1764
  %1771 = fmul fast float %1770, 0x3F70101020000000
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  br i1 %1113, label %1773, label %1781

; <label>:1773                                    ; preds = %1756
  %1774 = fsub fast float 1.000000e+00, %1409
  %1775 = fmul fast float %1774, %1101
  %1776 = fmul fast float %1774, %1102
  %1777 = fmul fast float %1774, %1103
  %1778 = fmul fast float %1774, %1104
  %1779 = fmul fast float %1774, %1105
  %1780 = fmul fast float %1774, %1106
  br label %1781

; <label>:1781                                    ; preds = %1773, %1756
  %1782 = phi float [ %1775, %1773 ], [ %1101, %1756 ]
  %1783 = phi float [ %1776, %1773 ], [ %1102, %1756 ]
  %1784 = phi float [ %1777, %1773 ], [ %1103, %1756 ]
  %1785 = phi float [ %1778, %1773 ], [ %1104, %1756 ]
  %1786 = phi float [ %1779, %1773 ], [ %1105, %1756 ]
  %1787 = phi float [ %1780, %1773 ], [ %1106, %1756 ]
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 3
  %1791 = icmp eq i32 %1790, 3
  br i1 %1791, label %1870, label %1792

; <label>:1792                                    ; preds = %1781
  %1793 = and i32 %1789, 16
  %1794 = icmp ne i32 %1793, 0
  %1795 = select i1 %1794, float %1409, float 0.000000e+00
  %1796 = icmp eq i32 %1790, 0
  br i1 %1796, label %1797, label %1825

; <label>:1797                                    ; preds = %1792
  %1798 = and i32 %1789, 64
  %1799 = icmp ne i32 %1798, 0
  %1800 = select i1 %1799, float %1409, float 0.000000e+00
  %1801 = fsub fast float %1629, %1782
  %1802 = fsub fast float %1630, %1783
  %1803 = fsub fast float %1631, %1784
  %1804 = fmul fast float %1795, %1801
  %1805 = fmul fast float %1795, %1802
  %1806 = fmul fast float %1795, %1803
  %1807 = fadd fast float %1804, %1782
  %1808 = fadd fast float %1805, %1783
  %1809 = fadd fast float %1806, %1784
  %1810 = fsub fast float %1615, %1107
  %1811 = fmul fast float %1795, %1810
  %1812 = fadd fast float %1811, %1107
  %1813 = fsub fast float %1757, %1785
  %1814 = fsub fast float %1758, %1786
  %1815 = fsub fast float %1759, %1787
  %1816 = fmul fast float %1800, %1813
  %1817 = fmul fast float %1800, %1814
  %1818 = fmul fast float %1800, %1815
  %1819 = fadd fast float %1816, %1785
  %1820 = fadd fast float %1817, %1786
  %1821 = fadd fast float %1818, %1787
  %1822 = fsub fast float %1772, %1111
  %1823 = fmul fast float %1795, %1822
  %1824 = fadd fast float %1823, %1111
  br label %1870

; <label>:1825                                    ; preds = %1792
  %1826 = icmp eq i32 %1790, 1
  br i1 %1826, label %1827, label %1840

; <label>:1827                                    ; preds = %1825
  %1828 = fadd fast float %1629, -1.000000e+00
  %1829 = fadd fast float %1630, -1.000000e+00
  %1830 = fadd fast float %1631, -1.000000e+00
  %1831 = fmul fast float %1795, %1828
  %1832 = fmul fast float %1795, %1829
  %1833 = fmul fast float %1795, %1830
  %1834 = fadd fast float %1831, 1.000000e+00
  %1835 = fadd fast float %1832, 1.000000e+00
  %1836 = fadd fast float %1833, 1.000000e+00
  %1837 = fmul fast float %1834, %1782
  %1838 = fmul fast float %1835, %1783
  %1839 = fmul fast float %1836, %1784
  br label %1870

; <label>:1840                                    ; preds = %1825
  %1841 = icmp eq i32 %1790, 2
  br i1 %1841, label %1842, label %1870

; <label>:1842                                    ; preds = %1840
  %1843 = call float @dx.op.unary.f32(i32 24, float %1629)  ; Sqrt(value)
  %1844 = call float @dx.op.unary.f32(i32 24, float %1630)  ; Sqrt(value)
  %1845 = call float @dx.op.unary.f32(i32 24, float %1631)  ; Sqrt(value)
  %1846 = fadd fast float %1843, -5.000000e-01
  %1847 = fadd fast float %1844, -5.000000e-01
  %1848 = fadd fast float %1845, -5.000000e-01
  %1849 = fmul fast float %1846, %1795
  %1850 = fmul fast float %1847, %1795
  %1851 = fmul fast float %1848, %1795
  %1852 = fadd fast float %1849, 5.000000e-01
  %1853 = fadd fast float %1850, 5.000000e-01
  %1854 = fadd fast float %1851, 5.000000e-01
  %1855 = fmul fast float %1852, 2.000000e+00
  %1856 = fsub fast float 1.000000e+00, %1855
  %1857 = fmul fast float %1856, %1782
  %1858 = fadd fast float %1857, %1855
  %1859 = fmul fast float %1858, %1782
  %1860 = fmul fast float %1853, 2.000000e+00
  %1861 = fsub fast float 1.000000e+00, %1860
  %1862 = fmul fast float %1861, %1783
  %1863 = fadd fast float %1862, %1860
  %1864 = fmul fast float %1863, %1783
  %1865 = fmul fast float %1854, 2.000000e+00
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = fmul fast float %1866, %1784
  %1868 = fadd fast float %1867, %1865
  %1869 = fmul fast float %1868, %1784
  br label %1870

; <label>:1870                                    ; preds = %1842, %1840, %1827, %1797, %1781
  %1871 = phi float [ %1782, %1781 ], [ %1859, %1842 ], [ %1782, %1840 ], [ %1837, %1827 ], [ %1807, %1797 ]
  %1872 = phi float [ %1783, %1781 ], [ %1864, %1842 ], [ %1783, %1840 ], [ %1838, %1827 ], [ %1808, %1797 ]
  %1873 = phi float [ %1784, %1781 ], [ %1869, %1842 ], [ %1784, %1840 ], [ %1839, %1827 ], [ %1809, %1797 ]
  %1874 = phi float [ %1785, %1781 ], [ %1785, %1842 ], [ %1785, %1840 ], [ %1785, %1827 ], [ %1819, %1797 ]
  %1875 = phi float [ %1786, %1781 ], [ %1786, %1842 ], [ %1786, %1840 ], [ %1786, %1827 ], [ %1820, %1797 ]
  %1876 = phi float [ %1787, %1781 ], [ %1787, %1842 ], [ %1787, %1840 ], [ %1787, %1827 ], [ %1821, %1797 ]
  %1877 = phi float [ %1107, %1781 ], [ %1107, %1842 ], [ %1107, %1840 ], [ %1107, %1827 ], [ %1812, %1797 ]
  %1878 = phi float [ %1111, %1781 ], [ %1111, %1842 ], [ %1111, %1840 ], [ %1111, %1827 ], [ %1824, %1797 ]
  %1879 = and i32 %1789, 12
  %1880 = icmp eq i32 %1879, 12
  br i1 %1880, label %1953, label %1881

; <label>:1881                                    ; preds = %1870
  %1882 = and i32 %1789, 2097184
  %1883 = icmp eq i32 %1882, 2097184
  %1884 = select i1 %1883, float %1409, float 0.000000e+00
  %1885 = and i32 %1789, 4194336
  %1886 = icmp eq i32 %1885, 4194336
  %1887 = select i1 %1886, float %1409, float 0.000000e+00
  %1888 = and i32 %1789, 8388640
  %1889 = icmp eq i32 %1888, 8388640
  %1890 = select i1 %1889, float %1409, float 0.000000e+00
  %1891 = icmp eq i32 %1879, 0
  br i1 %1891, label %1892, label %1905

; <label>:1892                                    ; preds = %1881
  %1893 = fsub fast float %1710, %1099
  %1894 = fsub fast float %1711, %1100
  %1895 = fmul fast float %1884, %1893
  %1896 = fmul fast float %1884, %1894
  %1897 = fadd fast float %1895, %1099
  %1898 = fadd fast float %1896, %1100
  %1899 = fsub fast float %1712, %1110
  %1900 = fmul fast float %1887, %1899
  %1901 = fadd fast float %1900, %1110
  %1902 = fsub fast float %1709, %1109
  %1903 = fmul fast float %1890, %1902
  %1904 = fadd fast float %1903, %1109
  br label %1953

; <label>:1905                                    ; preds = %1881
  %1906 = icmp eq i32 %1879, 4
  br i1 %1906, label %1907, label %1939

; <label>:1907                                    ; preds = %1905
  %1908 = fmul fast float %1884, %1710
  %1909 = fmul fast float %1884, %1711
  %1910 = fadd fast float %1908, %1099
  %1911 = fadd fast float %1909, %1100
  %1912 = call float @dx.op.binary.f32(i32 36, float %1110, float %1712)  ; FMin(a,b)
  %1913 = fsub fast float %1912, %1110
  %1914 = fmul fast float %1913, %1887
  %1915 = fadd fast float %1914, %1110
  %1916 = fadd fast float %1709, %1109
  %1917 = fmul fast float %1916, 0x3FF337FAE0000000
  %1918 = fmul fast float %1109, %1109
  %1919 = fmul fast float %1709, %1709
  %1920 = fadd fast float %1919, %1918
  %1921 = fmul fast float %1920, 0x3FE5152B00000000
  %1922 = fmul fast float %1109, 0xBFCC1F85E0000000
  %1923 = fmul fast float %1922, %1709
  %1924 = fadd fast float %1923, 0xBFE1363700000000
  %1925 = fadd fast float %1924, %1917
  %1926 = fsub fast float %1925, %1921
  %1927 = fmul fast float %1916, 0x3FBA6F0D00000000
  %1928 = fmul fast float %1920, 0x3FD0432880000000
  %1929 = fmul fast float %1109, 0xBFEF110800000000
  %1930 = fmul fast float %1929, %1709
  %1931 = fadd fast float %1930, 1.000000e+00
  %1932 = fsub fast float %1931, %1927
  %1933 = fadd fast float %1932, %1928
  %1934 = fdiv fast float %1926, %1933
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = fsub fast float %1935, %1109
  %1937 = fmul fast float %1936, %1890
  %1938 = fadd fast float %1937, %1109
  br label %1953

; <label>:1939                                    ; preds = %1905
  %1940 = icmp eq i32 %1879, 8
  br i1 %1940, label %1941, label %1953

; <label>:1941                                    ; preds = %1939
  %1942 = fmul fast float %1884, %1710
  %1943 = fmul fast float %1884, %1711
  %1944 = fadd fast float %1942, %1099
  %1945 = fadd fast float %1943, %1100
  %1946 = call float @dx.op.binary.f32(i32 36, float %1110, float %1712)  ; FMin(a,b)
  %1947 = fsub fast float %1946, %1110
  %1948 = fmul fast float %1947, %1887
  %1949 = fadd fast float %1948, %1110
  %1950 = fsub fast float %1709, %1109
  %1951 = fmul fast float %1890, %1950
  %1952 = fadd fast float %1951, %1109
  br label %1953

; <label>:1953                                    ; preds = %1941, %1939, %1907, %1892, %1870, %1408, %1112, %1098
  %1954 = phi float [ %1099, %1870 ], [ %1099, %1408 ], [ %1099, %1098 ], [ %1944, %1941 ], [ %1099, %1939 ], [ %1910, %1907 ], [ %1897, %1892 ], [ %1099, %1112 ]
  %1955 = phi float [ %1100, %1870 ], [ %1100, %1408 ], [ %1100, %1098 ], [ %1945, %1941 ], [ %1100, %1939 ], [ %1911, %1907 ], [ %1898, %1892 ], [ %1100, %1112 ]
  %1956 = phi float [ %1871, %1870 ], [ %1101, %1408 ], [ %1101, %1098 ], [ %1871, %1941 ], [ %1871, %1939 ], [ %1871, %1907 ], [ %1871, %1892 ], [ %1101, %1112 ]
  %1957 = phi float [ %1872, %1870 ], [ %1102, %1408 ], [ %1102, %1098 ], [ %1872, %1941 ], [ %1872, %1939 ], [ %1872, %1907 ], [ %1872, %1892 ], [ %1102, %1112 ]
  %1958 = phi float [ %1873, %1870 ], [ %1103, %1408 ], [ %1103, %1098 ], [ %1873, %1941 ], [ %1873, %1939 ], [ %1873, %1907 ], [ %1873, %1892 ], [ %1103, %1112 ]
  %1959 = phi float [ %1874, %1870 ], [ %1104, %1408 ], [ %1104, %1098 ], [ %1874, %1941 ], [ %1874, %1939 ], [ %1874, %1907 ], [ %1874, %1892 ], [ %1104, %1112 ]
  %1960 = phi float [ %1875, %1870 ], [ %1105, %1408 ], [ %1105, %1098 ], [ %1875, %1941 ], [ %1875, %1939 ], [ %1875, %1907 ], [ %1875, %1892 ], [ %1105, %1112 ]
  %1961 = phi float [ %1876, %1870 ], [ %1106, %1408 ], [ %1106, %1098 ], [ %1876, %1941 ], [ %1876, %1939 ], [ %1876, %1907 ], [ %1876, %1892 ], [ %1106, %1112 ]
  %1962 = phi float [ %1877, %1870 ], [ %1107, %1408 ], [ %1107, %1098 ], [ %1877, %1941 ], [ %1877, %1939 ], [ %1877, %1907 ], [ %1877, %1892 ], [ %1107, %1112 ]
  %1963 = phi float [ %1109, %1870 ], [ %1109, %1408 ], [ %1109, %1098 ], [ %1952, %1941 ], [ %1109, %1939 ], [ %1938, %1907 ], [ %1904, %1892 ], [ %1109, %1112 ]
  %1964 = phi float [ %1110, %1870 ], [ %1110, %1408 ], [ %1110, %1098 ], [ %1949, %1941 ], [ %1110, %1939 ], [ %1915, %1907 ], [ %1901, %1892 ], [ %1110, %1112 ]
  %1965 = phi float [ %1878, %1870 ], [ %1111, %1408 ], [ %1111, %1098 ], [ %1878, %1941 ], [ %1878, %1939 ], [ %1878, %1907 ], [ %1878, %1892 ], [ %1111, %1112 ]
  br i1 %384, label %2807, label %1966

; <label>:1966                                    ; preds = %1953
  %1967 = icmp ult i32 %440, 3
  %1968 = add i32 %43, 56
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %43, 60
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = or i32 %1973, %1970
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %2807, label %1976

; <label>:1976                                    ; preds = %1966
  %1977 = and i32 %1970, 262144
  %1978 = icmp ne i32 %1977, 0
  %1979 = select i1 %1978, float %46, float 1.000000e+00
  %1980 = select i1 %1978, float %47, float 0.000000e+00
  %1981 = select i1 %1978, float %48, float 0.000000e+00
  %1982 = select i1 %1978, float %49, float 1.000000e+00
  %1983 = select i1 %1978, float %50, float %71
  %1984 = select i1 %1978, float %51, float %72
  %1985 = add i32 %43, 316
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = lshr i32 %1987, 16
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = fmul fast float %1989, 0x3F50624DE0000000
  %1991 = add i32 %43, 120
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = lshr i32 %1993, 16
  %1995 = and i32 %1994, 255
  %1996 = lshr i32 %1993, 24
  %1997 = add i32 %43, 324
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = and i32 %1999, 65535
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1999, 16
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = add i32 %43, 64
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = lshr i32 %2006, 22
  %2008 = shl nuw nsw i32 %2007, 5
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = shl i32 %2006, 4
  %2011 = and i32 %2010, 32752
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = lshr i32 %2006, 7
  %2014 = and i32 %2013, 32752
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 3
  %2018 = fmul fast float %2017, 1.000000e+03
  %2019 = fmul fast float %334, %2018
  %2020 = call float @dx.op.unary.f32(i32 22, float %2019)  ; Frc(value)
  %2021 = fadd fast float %2020, %324
  %2022 = fmul fast float %335, %2018
  %2023 = call float @dx.op.unary.f32(i32 22, float %2022)  ; Frc(value)
  %2024 = fadd fast float %2023, %326
  %2025 = fmul fast float %1990, %2018
  %2026 = call float @dx.op.unary.f32(i32 22, float %2025)  ; Frc(value)
  %2027 = fmul fast float %2026, 0x401921FB60000000
  %2028 = fadd fast float %2027, %2009
  %2029 = call float @dx.op.unary.f32(i32 13, float %2028)  ; Sin(value)
  %2030 = call float @dx.op.unary.f32(i32 12, float %2028)  ; Cos(value)
  %2031 = fsub fast float -0.000000e+00, %2029
  %2032 = fadd fast float %1983, -5.000000e-01
  %2033 = fadd fast float %1984, -5.000000e-01
  %2034 = fmul fast float %2001, %2032
  %2035 = fmul fast float %2003, %2033
  %2036 = fadd fast float %2034, 5.000000e-01
  %2037 = fadd fast float %2035, 5.000000e-01
  %2038 = fmul fast float %2012, %2036
  %2039 = fmul fast float %2015, %2037
  %2040 = fmul fast float %2030, %2038
  %2041 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2039, float %2040)  ; FMad(a,b,c)
  %2042 = fmul fast float %2029, %2038
  %2043 = call float @dx.op.tertiary.f32(i32 46, float %2030, float %2039, float %2042)  ; FMad(a,b,c)
  %2044 = fadd fast float %2021, %2041
  %2045 = fadd fast float %2024, %2043
  %2046 = icmp ugt i32 %1995, 1
  %2047 = icmp ugt i32 %1993, 33554431
  %2048 = or i1 %2047, %2046
  br i1 %2048, label %2049, label %2074

; <label>:2049                                    ; preds = %1976
  %2050 = add i32 %43, 260
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = lshr i32 %2052, 16
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = fmul fast float %2017, %2054
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = mul nuw nsw i32 %1995, %1996
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2056, %2058
  %2060 = call float @dx.op.unary.f32(i32 27, float %2059)  ; Round_ni(value)
  %2061 = fptoui float %2060 to i32
  %2062 = urem i32 %2061, %1995
  %2063 = udiv i32 %2061, %1996
  %2064 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2065 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2066 = uitofp i32 %2062 to float
  %2067 = uitofp i32 %2063 to float
  %2068 = fadd fast float %2064, %2066
  %2069 = fadd fast float %2065, %2067
  %2070 = uitofp i32 %1995 to float
  %2071 = uitofp i32 %1996 to float
  %2072 = fdiv fast float %2068, %2070
  %2073 = fdiv fast float %2069, %2071
  br label %2074

; <label>:2074                                    ; preds = %2049, %1976
  %2075 = phi float [ %2072, %2049 ], [ %2044, %1976 ]
  %2076 = phi float [ %2073, %2049 ], [ %2045, %1976 ]
  %2077 = and i32 %1970, 16777216
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2188, label %2079

; <label>:2079                                    ; preds = %2074
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2084 = fadd fast float %2081, %148
  %2085 = fadd fast float %2082, %149
  %2086 = fadd fast float %2083, %150
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  %2090 = icmp eq i32 %44, 65535
  br i1 %2090, label %2185, label %2091

; <label>:2091                                    ; preds = %2079
  %2092 = lshr i32 %44, 1
  %2093 = shl i32 %2092, 2
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = and i32 %44, 1
  %2097 = icmp ne i32 %2096, 0
  %2098 = lshr i32 %2095, 16
  %2099 = and i32 %2095, 65535
  %2100 = select i1 %2097, i32 %2098, i32 %2099
  %2101 = icmp eq i32 %2100, 65535
  br i1 %2101, label %2181, label %2102

; <label>:2102                                    ; preds = %2091
  %2103 = mul nuw nsw i32 %2100, 40
  %2104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.ResRet.f32 %2104, 2
  %2108 = add nuw nsw i32 %2103, 12
  %2109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.ResRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.ResRet.f32 %2109, 2
  %2113 = add nuw nsw i32 %2103, 24
  %2114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = extractvalue %dx.types.ResRet.f32 %2114, 1
  %2117 = extractvalue %dx.types.ResRet.f32 %2114, 2
  %2118 = add nuw nsw i32 %2103, 36
  %2119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = fsub fast float %2084, %2105
  %2122 = fsub fast float %2085, %2106
  %2123 = fsub fast float %2086, %2107
  %2124 = fmul fast float %2120, %2121
  %2125 = fmul fast float %2120, %2122
  %2126 = fmul fast float %2120, %2123
  %2127 = call float @dx.op.unary.f32(i32 27, float %2124)  ; Round_ni(value)
  %2128 = call float @dx.op.unary.f32(i32 27, float %2125)  ; Round_ni(value)
  %2129 = call float @dx.op.unary.f32(i32 27, float %2126)  ; Round_ni(value)
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fadd fast float %2128, 5.000000e-01
  %2132 = fadd fast float %2129, 5.000000e-01
  %2133 = fmul fast float %2130, %2110
  %2134 = fmul fast float %2131, %2111
  %2135 = fmul fast float %2132, %2112
  %2136 = shl i32 %44, 2
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %2138, 0
  %2140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2141 = call float @dx.op.unary.f32(i32 22, float %2133)  ; Frc(value)
  %2142 = call float @dx.op.unary.f32(i32 22, float %2134)  ; Frc(value)
  %2143 = call float @dx.op.unary.f32(i32 22, float %2135)  ; Frc(value)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2140, %dx.types.Handle %36, float %2141, float %2142, float %2143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = fmul fast float %2145, 1.023000e+03
  %2149 = fmul fast float %2146, 1.023000e+03
  %2150 = fmul fast float %2147, 1.023000e+03
  %2151 = fadd fast float %2148, 5.000000e-01
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2155 = call float @dx.op.unary.f32(i32 27, float %2152)  ; Round_ni(value)
  %2156 = call float @dx.op.unary.f32(i32 27, float %2153)  ; Round_ni(value)
  %2157 = fsub fast float %2124, %2127
  %2158 = fsub fast float %2125, %2128
  %2159 = fsub fast float %2126, %2129
  %2160 = fmul fast float %2157, 7.500000e-01
  %2161 = fmul fast float %2158, 7.500000e-01
  %2162 = fmul fast float %2159, 7.500000e-01
  %2163 = fadd fast float %2127, 1.250000e-01
  %2164 = fadd fast float %2163, %2160
  %2165 = fadd fast float %2164, %2154
  %2166 = fadd fast float %2128, 1.250000e-01
  %2167 = fadd fast float %2166, %2161
  %2168 = fadd fast float %2167, %2155
  %2169 = fadd fast float %2129, 1.250000e-01
  %2170 = fadd fast float %2169, %2162
  %2171 = fadd fast float %2170, %2156
  %2172 = fmul fast float %2165, %2115
  %2173 = fmul fast float %2168, %2116
  %2174 = fmul fast float %2171, %2117
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = add i32 %2176, 0
  %2178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2178, %dx.types.Handle %34, float %2172, float %2173, float %2174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  br label %2181

; <label>:2181                                    ; preds = %2102, %2091
  %2182 = phi float [ %2180, %2102 ], [ -1.000000e+00, %2091 ]
  %2183 = fadd fast float %2182, %2089
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  br label %2185

; <label>:2185                                    ; preds = %2181, %2079
  %2186 = phi float [ %2184, %2181 ], [ %2089, %2079 ]
  %2187 = fmul fast float %2186, %436
  br label %2188

; <label>:2188                                    ; preds = %2185, %2074
  %2189 = phi float [ %2187, %2185 ], [ %436, %2074 ]
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 256
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2240, label %2194

; <label>:2194                                    ; preds = %2188
  %2195 = add i32 %43, 432
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2197, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2199, %dx.types.Handle %86, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = add i32 %43, 132
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = shl i32 %2204, 4
  %2206 = and i32 %2205, 32752
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = lshr i32 %2204, 7
  %2209 = and i32 %2208, 32752
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = fsub fast float 1.000000e+00, %2189
  %2212 = call float @dx.op.binary.f32(i32 35, float %2211, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2213 = bitcast float %2189 to i32
  %2214 = sitofp i32 %2213 to float
  %2215 = fadd fast float %2214, 0xC1CFBF8940000000
  %2216 = fmul fast float %2210, %2215
  %2217 = fadd fast float %2216, 0x41CFBF8940000000
  %2218 = fptosi float %2217 to i32
  %2219 = bitcast i32 %2218 to float
  %2220 = bitcast float %2212 to i32
  %2221 = sitofp i32 %2220 to float
  %2222 = fadd fast float %2221, 0xC1CFBF8940000000
  %2223 = fmul fast float %2222, %2210
  %2224 = fadd fast float %2223, 0x41CFBF8940000000
  %2225 = fptosi float %2224 to i32
  %2226 = bitcast i32 %2225 to float
  %2227 = fmul fast float %2219, %2207
  %2228 = fmul fast float %2226, %2207
  %2229 = fsub fast float %2212, %2227
  %2230 = fadd fast float %2228, %2212
  %2231 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2232 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2233 = fsub fast float %2201, %2231
  %2234 = fsub fast float %2232, %2231
  %2235 = bitcast float %2234 to i32
  %2236 = sub nsw i32 2129859010, %2235
  %2237 = bitcast i32 %2236 to float
  %2238 = fmul fast float %2237, %2233
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  br label %2240

; <label>:2240                                    ; preds = %2194, %2188
  %2241 = phi float [ %2239, %2194 ], [ %2189, %2188 ]
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 128
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2262, label %2246

; <label>:2246                                    ; preds = %2240
  %2247 = add i32 %43, 416
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = add i32 %2249, 0
  %2251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2251, %dx.types.Handle %86, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2253 = extractvalue %dx.types.ResRet.f32 %2252, 0
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 524288
  %2257 = icmp ne i32 %2256, 0
  %2258 = fcmp fast ogt float %2253, 0x3FE0101020000000
  %2259 = select i1 %2258, float 1.000000e+00, float 0.000000e+00
  %2260 = select i1 %2257, float %2259, float %2253
  %2261 = fmul fast float %2260, %2241
  br label %2262

; <label>:2262                                    ; preds = %2246, %2240
  %2263 = phi float [ %2261, %2246 ], [ %2241, %2240 ]
  %2264 = fcmp fast ult float %2263, 0x3F70101020000000
  br i1 %2264, label %2807, label %2265

; <label>:2265                                    ; preds = %2262
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 16
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2468, label %2270

; <label>:2270                                    ; preds = %2265
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %43, 368
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %2275, 0
  %2277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2277, %dx.types.Handle %85, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.ResRet.f32 %2278, 3
  %2283 = and i32 %2272, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = lshr i32 %2272, 8
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2282, %2284
  %2289 = fadd fast float %2288, %2287
  %2290 = fmul fast float %2289, 0x3F70101000000000
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = and i32 %2292, 512
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2303, label %2295

; <label>:2295                                    ; preds = %2270
  %2296 = add i32 %43, 448
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = add i32 %2298, 0
  %2300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2300, %dx.types.Handle %86, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  br label %2303

; <label>:2303                                    ; preds = %2295, %2270
  %2304 = phi float [ %2302, %2295 ], [ 1.000000e+00, %2270 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 33554432
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2415, label %2309

; <label>:2309                                    ; preds = %2303
  %2310 = add i32 %43, 256
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 65535
  %2314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2313)  ; LegacyF16ToF32(value)
  %2315 = lshr i32 %2312, 16
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = add i32 %43, 260
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = lshr i32 %2323, 24
  %2325 = uitofp i32 %2324 to float
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = and i32 %2323, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = fmul fast float %2328, 0x3F70101020000000
  %2330 = lshr i32 %2323, 8
  %2331 = and i32 %2330, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2332, 0x3F70101020000000
  %2334 = lshr i32 %2323, 16
  %2335 = and i32 %2334, 255
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = add i32 %43, 252
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = lshr i32 %2340, 24
  %2342 = uitofp i32 %2341 to float
  %2343 = fmul fast float %2342, 0x3F70101020000000
  %2344 = and i32 %2340, 255
  %2345 = uitofp i32 %2344 to float
  %2346 = fmul fast float %2345, 0x3F70101020000000
  %2347 = lshr i32 %2340, 8
  %2348 = and i32 %2347, 255
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2349, 0x3F70101020000000
  %2351 = lshr i32 %2340, 16
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = bitcast float %2279 to i32
  %2356 = ashr i32 %2355, 1
  %2357 = sub nsw i32 1597463174, %2356
  %2358 = bitcast i32 %2357 to float
  %2359 = fmul fast float %2279, 5.000000e-01
  %2360 = fmul fast float %2358, %2358
  %2361 = fmul fast float %2360, %2359
  %2362 = fsub fast float 1.500000e+00, %2361
  %2363 = fmul fast float %2358, %2279
  %2364 = fmul fast float %2363, %2362
  %2365 = bitcast float %2280 to i32
  %2366 = ashr i32 %2365, 1
  %2367 = sub nsw i32 1597463174, %2366
  %2368 = bitcast i32 %2367 to float
  %2369 = fmul fast float %2280, 5.000000e-01
  %2370 = fmul fast float %2368, %2368
  %2371 = fmul fast float %2370, %2369
  %2372 = fsub fast float 1.500000e+00, %2371
  %2373 = fmul fast float %2368, %2280
  %2374 = fmul fast float %2373, %2372
  %2375 = bitcast float %2281 to i32
  %2376 = ashr i32 %2375, 1
  %2377 = sub nsw i32 1597463174, %2376
  %2378 = bitcast i32 %2377 to float
  %2379 = fmul fast float %2281, 5.000000e-01
  %2380 = fmul fast float %2378, %2378
  %2381 = fmul fast float %2380, %2379
  %2382 = fsub fast float 1.500000e+00, %2381
  %2383 = fmul fast float %2378, %2281
  %2384 = fmul fast float %2383, %2382
  %2385 = fsub fast float %2364, %2346
  %2386 = fsub fast float %2374, %2350
  %2387 = fsub fast float %2384, %2354
  %2388 = fmul fast float %2385, %2314
  %2389 = fmul fast float %2386, %2316
  %2390 = fmul fast float %2387, %2321
  %2391 = fadd fast float %2388, %2329
  %2392 = fadd fast float %2389, %2333
  %2393 = fadd fast float %2390, %2337
  %2394 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2395 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2396 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2397 = fmul fast float %2394, %2394
  %2398 = fmul fast float %2395, %2395
  %2399 = fmul fast float %2396, %2396
  %2400 = fsub fast float %2397, %2279
  %2401 = fsub fast float %2398, %2280
  %2402 = fsub fast float %2399, %2281
  %2403 = fmul fast float %2400, %2304
  %2404 = fmul fast float %2401, %2304
  %2405 = fmul fast float %2402, %2304
  %2406 = fadd fast float %2403, %2279
  %2407 = fadd fast float %2404, %2280
  %2408 = fadd fast float %2405, %2281
  %2409 = fadd fast float %2326, %2290
  %2410 = fsub fast float %2409, %2343
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2412 = fsub fast float %2411, %2290
  %2413 = fmul fast float %2412, %2304
  %2414 = fadd fast float %2413, %2290
  br label %2468

; <label>:2415                                    ; preds = %2303
  %2416 = and i32 %2306, 134217728
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2452, label %2418

; <label>:2418                                    ; preds = %2415
  %2419 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2420 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2421 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2422 = fadd fast float %2419, -5.000000e-01
  %2423 = fadd fast float %2420, -5.000000e-01
  %2424 = fadd fast float %2421, -5.000000e-01
  %2425 = fmul fast float %2422, %2304
  %2426 = fmul fast float %2423, %2304
  %2427 = fmul fast float %2424, %2304
  %2428 = fadd fast float %2425, 5.000000e-01
  %2429 = fadd fast float %2426, 5.000000e-01
  %2430 = fadd fast float %2427, 5.000000e-01
  %2431 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2432 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2433 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2434 = fmul fast float %2428, 2.000000e+00
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fmul fast float %2435, %2431
  %2437 = fadd fast float %2436, %2434
  %2438 = fmul fast float %2437, %2431
  %2439 = fmul fast float %2429, 2.000000e+00
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2432
  %2442 = fadd fast float %2441, %2439
  %2443 = fmul fast float %2442, %2432
  %2444 = fmul fast float %2430, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2433
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2433
  %2449 = fmul fast float %2438, %2438
  %2450 = fmul fast float %2443, %2443
  %2451 = fmul fast float %2448, %2448
  br label %2468

; <label>:2452                                    ; preds = %2415
  %2453 = fmul fast float %311, %311
  %2454 = fmul fast float %315, %315
  %2455 = fmul fast float %319, %319
  %2456 = fadd fast float %2453, -1.000000e+00
  %2457 = fadd fast float %2454, -1.000000e+00
  %2458 = fadd fast float %2455, -1.000000e+00
  %2459 = fmul fast float %2304, %2456
  %2460 = fmul fast float %2304, %2457
  %2461 = fmul fast float %2304, %2458
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fadd fast float %2461, 1.000000e+00
  %2465 = fmul fast float %2462, %2279
  %2466 = fmul fast float %2463, %2280
  %2467 = fmul fast float %2464, %2281
  br label %2468

; <label>:2468                                    ; preds = %2452, %2418, %2309, %2265
  %2469 = phi float [ %2414, %2309 ], [ %2290, %2418 ], [ %2290, %2452 ], [ 0x3FA23C0BE0000000, %2265 ]
  %2470 = phi float [ %2406, %2309 ], [ %2449, %2418 ], [ %2465, %2452 ], [ 1.000000e+00, %2265 ]
  %2471 = phi float [ %2407, %2309 ], [ %2450, %2418 ], [ %2466, %2452 ], [ 1.000000e+00, %2265 ]
  %2472 = phi float [ %2408, %2309 ], [ %2451, %2418 ], [ %2467, %2452 ], [ 1.000000e+00, %2265 ]
  %2473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.i32 %2473, 1
  %2475 = and i32 %2474, 1
  %2476 = icmp ne i32 %2475, 0
  %2477 = add i32 %43, 356
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 32
  %2481 = icmp ne i32 %2480, 0
  %2482 = and i1 %2476, %2481
  %2483 = select i1 %2482, float 1.000000e+00, float %2470
  %2484 = select i1 %2482, float 0x3FD3333340000000, float %2471
  %2485 = select i1 %2482, float 0x3FD3333340000000, float %2472
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 32
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2562, label %2490

; <label>:2490                                    ; preds = %2468
  %2491 = add i32 %43, 124
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %43, 384
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = add i32 %2496, 0
  %2498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2498, %dx.types.Handle %85, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = extractvalue %dx.types.ResRet.f32 %2499, 3
  %2504 = and i32 %2493, 255
  %2505 = uitofp i32 %2504 to float
  %2506 = lshr i32 %2493, 8
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = lshr i32 %2493, 16
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = fmul fast float %2511, 0x3F70101000000000
  %2513 = fmul fast float %2500, %2505
  %2514 = fadd fast float %2513, %2508
  %2515 = fmul fast float %2514, 0x3F70101000000000
  %2516 = fadd fast float %2501, -5.000000e-01
  %2517 = fadd fast float %2503, -5.000000e-01
  %2518 = fmul fast float %2516, %2512
  %2519 = fmul fast float %2517, %2512
  %2520 = fadd fast float %2518, 5.000000e-01
  %2521 = fadd fast float %2519, 5.000000e-01
  %2522 = fmul fast float %2520, 2.000000e+00
  %2523 = fadd fast float %2522, -1.000000e+00
  %2524 = fmul fast float %2521, 2.000000e+00
  %2525 = fadd fast float %2524, -1.000000e+00
  %2526 = fadd fast float %2523, %2525
  %2527 = fmul fast float %2526, 5.000000e-01
  %2528 = fsub fast float %2523, %2525
  %2529 = fmul fast float %2528, 5.000000e-01
  %2530 = call float @dx.op.unary.f32(i32 6, float %2527)  ; FAbs(value)
  %2531 = fsub fast float 1.000000e+00, %2530
  %2532 = call float @dx.op.unary.f32(i32 6, float %2529)  ; FAbs(value)
  %2533 = fsub fast float %2531, %2532
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2527, float %2529, float %2533, float %2527, float %2529, float %2533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = call float @dx.op.unary.f32(i32 25, float %2534)  ; Rsqrt(value)
  %2536 = fmul fast float %2527, %2535
  %2537 = fmul fast float %2529, %2535
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 67108864
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %2558, label %2542

; <label>:2542                                    ; preds = %2490
  %2543 = add i32 %43, 312
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, 65535
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 65535
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = lshr i32 %2545, 16
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = fsub fast float %2515, %2553
  %2555 = fmul fast float %2554, %2547
  %2556 = fadd fast float %2555, %2551
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  br label %2558

; <label>:2558                                    ; preds = %2542, %2490
  %2559 = phi float [ %2557, %2542 ], [ %2515, %2490 ]
  %2560 = call float @dx.op.dot2.f32(i32 54, float %2536, float %2537, float %1979, float %1980)  ; Dot2(ax,ay,bx,by)
  %2561 = call float @dx.op.dot2.f32(i32 54, float %2536, float %2537, float %1981, float %1982)  ; Dot2(ax,ay,bx,by)
  br label %2562

; <label>:2562                                    ; preds = %2558, %2468
  %2563 = phi float [ %2559, %2558 ], [ 0x3FD6666660000000, %2468 ]
  %2564 = phi float [ %2560, %2558 ], [ 0.000000e+00, %2468 ]
  %2565 = phi float [ %2561, %2558 ], [ 0.000000e+00, %2468 ]
  %2566 = phi float [ %2502, %2558 ], [ 1.000000e+00, %2468 ]
  %2567 = add i32 %43, 192
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = lshr i32 %2569, 22
  %2571 = shl nuw nsw i32 %2570, 5
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 64
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2610, label %2577

; <label>:2577                                    ; preds = %2562
  %2578 = add i32 %43, 400
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = add i32 %2580, 0
  %2582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 131072
  %2586 = icmp eq i32 %2585, 0
  %2587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2582, %dx.types.Handle %85, float %2075, float %2076, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.ResRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.ResRet.f32 %2587, 2
  %2591 = fmul fast float %2588, %299
  %2592 = fmul fast float %2589, %302
  %2593 = fmul fast float %2590, %305
  br i1 %2586, label %2600, label %2594

; <label>:2594                                    ; preds = %2577
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2597 = fmul fast float %2596, %2591
  %2598 = fmul fast float %2596, %2592
  %2599 = fmul fast float %2596, %2593
  br label %2600

; <label>:2600                                    ; preds = %2594, %2577
  %2601 = phi float [ %2597, %2594 ], [ %2591, %2577 ]
  %2602 = phi float [ %2598, %2594 ], [ %2592, %2577 ]
  %2603 = phi float [ %2599, %2594 ], [ %2593, %2577 ]
  %2604 = fmul fast float %2601, %2572
  %2605 = select i1 %209, float %2604, float %2601
  %2606 = call float @dx.op.dot3.f32(i32 55, float %2605, float %2602, float %2603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = select i1 %209, float 0.000000e+00, float %2601
  %2608 = select i1 %209, float %2606, float %2602
  %2609 = select i1 %209, float 0.000000e+00, float %2603
  br label %2610

; <label>:2610                                    ; preds = %2600, %2562
  %2611 = phi float [ %2607, %2600 ], [ 0.000000e+00, %2562 ]
  %2612 = phi float [ %2608, %2600 ], [ 0.000000e+00, %2562 ]
  %2613 = phi float [ %2609, %2600 ], [ 0.000000e+00, %2562 ]
  %2614 = add i32 %43, 128
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = lshr i32 %2616, 8
  %2620 = and i32 %2619, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2483, float %2484, float %2485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = fmul fast float %2621, %2622
  %2624 = fadd fast float %2623, %2618
  %2625 = fmul fast float %2624, 0x3F70101020000000
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  br i1 %1967, label %2627, label %2635

; <label>:2627                                    ; preds = %2610
  %2628 = fsub fast float 1.000000e+00, %2263
  %2629 = fmul fast float %2628, %1956
  %2630 = fmul fast float %2628, %1957
  %2631 = fmul fast float %2628, %1958
  %2632 = fmul fast float %2628, %1959
  %2633 = fmul fast float %2628, %1960
  %2634 = fmul fast float %2628, %1961
  br label %2635

; <label>:2635                                    ; preds = %2627, %2610
  %2636 = phi float [ %2629, %2627 ], [ %1956, %2610 ]
  %2637 = phi float [ %2630, %2627 ], [ %1957, %2610 ]
  %2638 = phi float [ %2631, %2627 ], [ %1958, %2610 ]
  %2639 = phi float [ %2632, %2627 ], [ %1959, %2610 ]
  %2640 = phi float [ %2633, %2627 ], [ %1960, %2610 ]
  %2641 = phi float [ %2634, %2627 ], [ %1961, %2610 ]
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 3
  %2645 = icmp eq i32 %2644, 3
  br i1 %2645, label %2724, label %2646

; <label>:2646                                    ; preds = %2635
  %2647 = and i32 %2643, 16
  %2648 = icmp ne i32 %2647, 0
  %2649 = select i1 %2648, float %2263, float 0.000000e+00
  %2650 = icmp eq i32 %2644, 0
  br i1 %2650, label %2651, label %2679

; <label>:2651                                    ; preds = %2646
  %2652 = and i32 %2643, 64
  %2653 = icmp ne i32 %2652, 0
  %2654 = select i1 %2653, float %2263, float 0.000000e+00
  %2655 = fsub fast float %2483, %2636
  %2656 = fsub fast float %2484, %2637
  %2657 = fsub fast float %2485, %2638
  %2658 = fmul fast float %2649, %2655
  %2659 = fmul fast float %2649, %2656
  %2660 = fmul fast float %2649, %2657
  %2661 = fadd fast float %2658, %2636
  %2662 = fadd fast float %2659, %2637
  %2663 = fadd fast float %2660, %2638
  %2664 = fsub fast float %2469, %1962
  %2665 = fmul fast float %2649, %2664
  %2666 = fadd fast float %2665, %1962
  %2667 = fsub fast float %2611, %2639
  %2668 = fsub fast float %2612, %2640
  %2669 = fsub fast float %2613, %2641
  %2670 = fmul fast float %2654, %2667
  %2671 = fmul fast float %2654, %2668
  %2672 = fmul fast float %2654, %2669
  %2673 = fadd fast float %2670, %2639
  %2674 = fadd fast float %2671, %2640
  %2675 = fadd fast float %2672, %2641
  %2676 = fsub fast float %2626, %1965
  %2677 = fmul fast float %2649, %2676
  %2678 = fadd fast float %2677, %1965
  br label %2724

; <label>:2679                                    ; preds = %2646
  %2680 = icmp eq i32 %2644, 1
  br i1 %2680, label %2681, label %2694

; <label>:2681                                    ; preds = %2679
  %2682 = fadd fast float %2483, -1.000000e+00
  %2683 = fadd fast float %2484, -1.000000e+00
  %2684 = fadd fast float %2485, -1.000000e+00
  %2685 = fmul fast float %2649, %2682
  %2686 = fmul fast float %2649, %2683
  %2687 = fmul fast float %2649, %2684
  %2688 = fadd fast float %2685, 1.000000e+00
  %2689 = fadd fast float %2686, 1.000000e+00
  %2690 = fadd fast float %2687, 1.000000e+00
  %2691 = fmul fast float %2688, %2636
  %2692 = fmul fast float %2689, %2637
  %2693 = fmul fast float %2690, %2638
  br label %2724

; <label>:2694                                    ; preds = %2679
  %2695 = icmp eq i32 %2644, 2
  br i1 %2695, label %2696, label %2724

; <label>:2696                                    ; preds = %2694
  %2697 = call float @dx.op.unary.f32(i32 24, float %2483)  ; Sqrt(value)
  %2698 = call float @dx.op.unary.f32(i32 24, float %2484)  ; Sqrt(value)
  %2699 = call float @dx.op.unary.f32(i32 24, float %2485)  ; Sqrt(value)
  %2700 = fadd fast float %2697, -5.000000e-01
  %2701 = fadd fast float %2698, -5.000000e-01
  %2702 = fadd fast float %2699, -5.000000e-01
  %2703 = fmul fast float %2700, %2649
  %2704 = fmul fast float %2701, %2649
  %2705 = fmul fast float %2702, %2649
  %2706 = fadd fast float %2703, 5.000000e-01
  %2707 = fadd fast float %2704, 5.000000e-01
  %2708 = fadd fast float %2705, 5.000000e-01
  %2709 = fmul fast float %2706, 2.000000e+00
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = fmul fast float %2710, %2636
  %2712 = fadd fast float %2711, %2709
  %2713 = fmul fast float %2712, %2636
  %2714 = fmul fast float %2707, 2.000000e+00
  %2715 = fsub fast float 1.000000e+00, %2714
  %2716 = fmul fast float %2715, %2637
  %2717 = fadd fast float %2716, %2714
  %2718 = fmul fast float %2717, %2637
  %2719 = fmul fast float %2708, 2.000000e+00
  %2720 = fsub fast float 1.000000e+00, %2719
  %2721 = fmul fast float %2720, %2638
  %2722 = fadd fast float %2721, %2719
  %2723 = fmul fast float %2722, %2638
  br label %2724

; <label>:2724                                    ; preds = %2696, %2694, %2681, %2651, %2635
  %2725 = phi float [ %2636, %2635 ], [ %2713, %2696 ], [ %2636, %2694 ], [ %2691, %2681 ], [ %2661, %2651 ]
  %2726 = phi float [ %2637, %2635 ], [ %2718, %2696 ], [ %2637, %2694 ], [ %2692, %2681 ], [ %2662, %2651 ]
  %2727 = phi float [ %2638, %2635 ], [ %2723, %2696 ], [ %2638, %2694 ], [ %2693, %2681 ], [ %2663, %2651 ]
  %2728 = phi float [ %2639, %2635 ], [ %2639, %2696 ], [ %2639, %2694 ], [ %2639, %2681 ], [ %2673, %2651 ]
  %2729 = phi float [ %2640, %2635 ], [ %2640, %2696 ], [ %2640, %2694 ], [ %2640, %2681 ], [ %2674, %2651 ]
  %2730 = phi float [ %2641, %2635 ], [ %2641, %2696 ], [ %2641, %2694 ], [ %2641, %2681 ], [ %2675, %2651 ]
  %2731 = phi float [ %1962, %2635 ], [ %1962, %2696 ], [ %1962, %2694 ], [ %1962, %2681 ], [ %2666, %2651 ]
  %2732 = phi float [ %1965, %2635 ], [ %1965, %2696 ], [ %1965, %2694 ], [ %1965, %2681 ], [ %2678, %2651 ]
  %2733 = and i32 %2643, 12
  %2734 = icmp eq i32 %2733, 12
  br i1 %2734, label %2807, label %2735

; <label>:2735                                    ; preds = %2724
  %2736 = and i32 %2643, 2097184
  %2737 = icmp eq i32 %2736, 2097184
  %2738 = select i1 %2737, float %2263, float 0.000000e+00
  %2739 = and i32 %2643, 4194336
  %2740 = icmp eq i32 %2739, 4194336
  %2741 = select i1 %2740, float %2263, float 0.000000e+00
  %2742 = and i32 %2643, 8388640
  %2743 = icmp eq i32 %2742, 8388640
  %2744 = select i1 %2743, float %2263, float 0.000000e+00
  %2745 = icmp eq i32 %2733, 0
  br i1 %2745, label %2746, label %2759

; <label>:2746                                    ; preds = %2735
  %2747 = fsub fast float %2564, %1954
  %2748 = fsub fast float %2565, %1955
  %2749 = fmul fast float %2738, %2747
  %2750 = fmul fast float %2738, %2748
  %2751 = fadd fast float %2749, %1954
  %2752 = fadd fast float %2750, %1955
  %2753 = fsub fast float %2566, %1964
  %2754 = fmul fast float %2741, %2753
  %2755 = fadd fast float %2754, %1964
  %2756 = fsub fast float %2563, %1963
  %2757 = fmul fast float %2744, %2756
  %2758 = fadd fast float %2757, %1963
  br label %2807

; <label>:2759                                    ; preds = %2735
  %2760 = icmp eq i32 %2733, 4
  br i1 %2760, label %2761, label %2793

; <label>:2761                                    ; preds = %2759
  %2762 = fmul fast float %2738, %2564
  %2763 = fmul fast float %2738, %2565
  %2764 = fadd fast float %2762, %1954
  %2765 = fadd fast float %2763, %1955
  %2766 = call float @dx.op.binary.f32(i32 36, float %1964, float %2566)  ; FMin(a,b)
  %2767 = fsub fast float %2766, %1964
  %2768 = fmul fast float %2767, %2741
  %2769 = fadd fast float %2768, %1964
  %2770 = fadd fast float %2563, %1963
  %2771 = fmul fast float %2770, 0x3FF337FAE0000000
  %2772 = fmul fast float %1963, %1963
  %2773 = fmul fast float %2563, %2563
  %2774 = fadd fast float %2773, %2772
  %2775 = fmul fast float %2774, 0x3FE5152B00000000
  %2776 = fmul fast float %1963, 0xBFCC1F85E0000000
  %2777 = fmul fast float %2776, %2563
  %2778 = fadd fast float %2777, 0xBFE1363700000000
  %2779 = fadd fast float %2778, %2771
  %2780 = fsub fast float %2779, %2775
  %2781 = fmul fast float %2770, 0x3FBA6F0D00000000
  %2782 = fmul fast float %2774, 0x3FD0432880000000
  %2783 = fmul fast float %1963, 0xBFEF110800000000
  %2784 = fmul fast float %2783, %2563
  %2785 = fadd fast float %2784, 1.000000e+00
  %2786 = fsub fast float %2785, %2781
  %2787 = fadd fast float %2786, %2782
  %2788 = fdiv fast float %2780, %2787
  %2789 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2790 = fsub fast float %2789, %1963
  %2791 = fmul fast float %2790, %2744
  %2792 = fadd fast float %2791, %1963
  br label %2807

; <label>:2793                                    ; preds = %2759
  %2794 = icmp eq i32 %2733, 8
  br i1 %2794, label %2795, label %2807

; <label>:2795                                    ; preds = %2793
  %2796 = fmul fast float %2738, %2564
  %2797 = fmul fast float %2738, %2565
  %2798 = fadd fast float %2796, %1954
  %2799 = fadd fast float %2797, %1955
  %2800 = call float @dx.op.binary.f32(i32 36, float %1964, float %2566)  ; FMin(a,b)
  %2801 = fsub fast float %2800, %1964
  %2802 = fmul fast float %2801, %2741
  %2803 = fadd fast float %2802, %1964
  %2804 = fsub fast float %2563, %1963
  %2805 = fmul fast float %2744, %2804
  %2806 = fadd fast float %2805, %1963
  br label %2807

; <label>:2807                                    ; preds = %2795, %2793, %2761, %2746, %2724, %2262, %1966, %1953
  %2808 = phi float [ %1954, %2724 ], [ %1954, %2262 ], [ %1954, %1953 ], [ %2798, %2795 ], [ %1954, %2793 ], [ %2764, %2761 ], [ %2751, %2746 ], [ %1954, %1966 ]
  %2809 = phi float [ %1955, %2724 ], [ %1955, %2262 ], [ %1955, %1953 ], [ %2799, %2795 ], [ %1955, %2793 ], [ %2765, %2761 ], [ %2752, %2746 ], [ %1955, %1966 ]
  %2810 = phi float [ %2725, %2724 ], [ %1956, %2262 ], [ %1956, %1953 ], [ %2725, %2795 ], [ %2725, %2793 ], [ %2725, %2761 ], [ %2725, %2746 ], [ %1956, %1966 ]
  %2811 = phi float [ %2726, %2724 ], [ %1957, %2262 ], [ %1957, %1953 ], [ %2726, %2795 ], [ %2726, %2793 ], [ %2726, %2761 ], [ %2726, %2746 ], [ %1957, %1966 ]
  %2812 = phi float [ %2727, %2724 ], [ %1958, %2262 ], [ %1958, %1953 ], [ %2727, %2795 ], [ %2727, %2793 ], [ %2727, %2761 ], [ %2727, %2746 ], [ %1958, %1966 ]
  %2813 = phi float [ %2728, %2724 ], [ %1959, %2262 ], [ %1959, %1953 ], [ %2728, %2795 ], [ %2728, %2793 ], [ %2728, %2761 ], [ %2728, %2746 ], [ %1959, %1966 ]
  %2814 = phi float [ %2729, %2724 ], [ %1960, %2262 ], [ %1960, %1953 ], [ %2729, %2795 ], [ %2729, %2793 ], [ %2729, %2761 ], [ %2729, %2746 ], [ %1960, %1966 ]
  %2815 = phi float [ %2730, %2724 ], [ %1961, %2262 ], [ %1961, %1953 ], [ %2730, %2795 ], [ %2730, %2793 ], [ %2730, %2761 ], [ %2730, %2746 ], [ %1961, %1966 ]
  %2816 = phi float [ %2731, %2724 ], [ %1962, %2262 ], [ %1962, %1953 ], [ %2731, %2795 ], [ %2731, %2793 ], [ %2731, %2761 ], [ %2731, %2746 ], [ %1962, %1966 ]
  %2817 = phi float [ %1963, %2724 ], [ %1963, %2262 ], [ %1963, %1953 ], [ %2806, %2795 ], [ %1963, %2793 ], [ %2792, %2761 ], [ %2758, %2746 ], [ %1963, %1966 ]
  %2818 = phi float [ %1964, %2724 ], [ %1964, %2262 ], [ %1964, %1953 ], [ %2803, %2795 ], [ %1964, %2793 ], [ %2769, %2761 ], [ %2755, %2746 ], [ %1964, %1966 ]
  %2819 = phi float [ %2732, %2724 ], [ %1965, %2262 ], [ %1965, %1953 ], [ %2732, %2795 ], [ %2732, %2793 ], [ %2732, %2761 ], [ %2732, %2746 ], [ %1965, %1966 ]
  br i1 %386, label %3661, label %2820

; <label>:2820                                    ; preds = %2807
  %2821 = icmp ult i32 %440, 4
  %2822 = add i32 %43, 72
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %43, 76
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = or i32 %2827, %2824
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %3661, label %2830

; <label>:2830                                    ; preds = %2820
  %2831 = and i32 %2824, 262144
  %2832 = icmp ne i32 %2831, 0
  %2833 = select i1 %2832, float %46, float 1.000000e+00
  %2834 = select i1 %2832, float %47, float 0.000000e+00
  %2835 = select i1 %2832, float %48, float 0.000000e+00
  %2836 = select i1 %2832, float %49, float 1.000000e+00
  %2837 = select i1 %2832, float %50, float %71
  %2838 = select i1 %2832, float %51, float %72
  %2839 = add i32 %43, 332
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = lshr i32 %2841, 16
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = fmul fast float %2843, 0x3F50624DE0000000
  %2845 = add i32 %43, 136
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = lshr i32 %2847, 16
  %2849 = and i32 %2848, 255
  %2850 = lshr i32 %2847, 24
  %2851 = add i32 %43, 340
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 65535
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = lshr i32 %2853, 16
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = add i32 %43, 80
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = lshr i32 %2860, 22
  %2862 = shl nuw nsw i32 %2861, 5
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = shl i32 %2860, 4
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = lshr i32 %2860, 7
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 3
  %2872 = fmul fast float %2871, 1.000000e+03
  %2873 = fmul fast float %376, %2872
  %2874 = call float @dx.op.unary.f32(i32 22, float %2873)  ; Frc(value)
  %2875 = fadd fast float %2874, %366
  %2876 = fmul fast float %377, %2872
  %2877 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2878 = fadd fast float %2877, %368
  %2879 = fmul fast float %2844, %2872
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = fmul fast float %2880, 0x401921FB60000000
  %2882 = fadd fast float %2881, %2863
  %2883 = call float @dx.op.unary.f32(i32 13, float %2882)  ; Sin(value)
  %2884 = call float @dx.op.unary.f32(i32 12, float %2882)  ; Cos(value)
  %2885 = fsub fast float -0.000000e+00, %2883
  %2886 = fadd fast float %2837, -5.000000e-01
  %2887 = fadd fast float %2838, -5.000000e-01
  %2888 = fmul fast float %2855, %2886
  %2889 = fmul fast float %2857, %2887
  %2890 = fadd fast float %2888, 5.000000e-01
  %2891 = fadd fast float %2889, 5.000000e-01
  %2892 = fmul fast float %2866, %2890
  %2893 = fmul fast float %2869, %2891
  %2894 = fmul fast float %2884, %2892
  %2895 = call float @dx.op.tertiary.f32(i32 46, float %2885, float %2893, float %2894)  ; FMad(a,b,c)
  %2896 = fmul fast float %2883, %2892
  %2897 = call float @dx.op.tertiary.f32(i32 46, float %2884, float %2893, float %2896)  ; FMad(a,b,c)
  %2898 = fadd fast float %2875, %2895
  %2899 = fadd fast float %2878, %2897
  %2900 = icmp ugt i32 %2849, 1
  %2901 = icmp ugt i32 %2847, 33554431
  %2902 = or i1 %2901, %2900
  br i1 %2902, label %2903, label %2928

; <label>:2903                                    ; preds = %2830
  %2904 = add i32 %43, 276
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = lshr i32 %2906, 16
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = fmul fast float %2871, %2908
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = mul nuw nsw i32 %2849, %2850
  %2912 = uitofp i32 %2911 to float
  %2913 = fmul fast float %2910, %2912
  %2914 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2915 = fptoui float %2914 to i32
  %2916 = urem i32 %2915, %2849
  %2917 = udiv i32 %2915, %2850
  %2918 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2919 = call float @dx.op.unary.f32(i32 22, float %2899)  ; Frc(value)
  %2920 = uitofp i32 %2916 to float
  %2921 = uitofp i32 %2917 to float
  %2922 = fadd fast float %2918, %2920
  %2923 = fadd fast float %2919, %2921
  %2924 = uitofp i32 %2849 to float
  %2925 = uitofp i32 %2850 to float
  %2926 = fdiv fast float %2922, %2924
  %2927 = fdiv fast float %2923, %2925
  br label %2928

; <label>:2928                                    ; preds = %2903, %2830
  %2929 = phi float [ %2926, %2903 ], [ %2898, %2830 ]
  %2930 = phi float [ %2927, %2903 ], [ %2899, %2830 ]
  %2931 = and i32 %2824, 16777216
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3042, label %2933

; <label>:2933                                    ; preds = %2928
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.CBufRet.f32 %2934, 2
  %2938 = fadd fast float %2935, %148
  %2939 = fadd fast float %2936, %149
  %2940 = fadd fast float %2937, %150
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = icmp eq i32 %44, 65535
  br i1 %2944, label %3039, label %2945

; <label>:2945                                    ; preds = %2933
  %2946 = lshr i32 %44, 1
  %2947 = shl i32 %2946, 2
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %44, 1
  %2951 = icmp ne i32 %2950, 0
  %2952 = lshr i32 %2949, 16
  %2953 = and i32 %2949, 65535
  %2954 = select i1 %2951, i32 %2952, i32 %2953
  %2955 = icmp eq i32 %2954, 65535
  br i1 %2955, label %3035, label %2956

; <label>:2956                                    ; preds = %2945
  %2957 = mul nuw nsw i32 %2954, 40
  %2958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = add nuw nsw i32 %2957, 12
  %2963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = add nuw nsw i32 %2957, 24
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = add nuw nsw i32 %2957, 36
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = fsub fast float %2938, %2959
  %2976 = fsub fast float %2939, %2960
  %2977 = fsub fast float %2940, %2961
  %2978 = fmul fast float %2974, %2975
  %2979 = fmul fast float %2974, %2976
  %2980 = fmul fast float %2974, %2977
  %2981 = call float @dx.op.unary.f32(i32 27, float %2978)  ; Round_ni(value)
  %2982 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2983 = call float @dx.op.unary.f32(i32 27, float %2980)  ; Round_ni(value)
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = fadd fast float %2983, 5.000000e-01
  %2987 = fmul fast float %2984, %2964
  %2988 = fmul fast float %2985, %2965
  %2989 = fmul fast float %2986, %2966
  %2990 = shl i32 %44, 2
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = add i32 %2992, 0
  %2994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2995 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2996 = call float @dx.op.unary.f32(i32 22, float %2988)  ; Frc(value)
  %2997 = call float @dx.op.unary.f32(i32 22, float %2989)  ; Frc(value)
  %2998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2994, %dx.types.Handle %36, float %2995, float %2996, float %2997, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = fmul fast float %2999, 1.023000e+03
  %3003 = fmul fast float %3000, 1.023000e+03
  %3004 = fmul fast float %3001, 1.023000e+03
  %3005 = fadd fast float %3002, 5.000000e-01
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = fadd fast float %3004, 5.000000e-01
  %3008 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3009 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3010 = call float @dx.op.unary.f32(i32 27, float %3007)  ; Round_ni(value)
  %3011 = fsub fast float %2978, %2981
  %3012 = fsub fast float %2979, %2982
  %3013 = fsub fast float %2980, %2983
  %3014 = fmul fast float %3011, 7.500000e-01
  %3015 = fmul fast float %3012, 7.500000e-01
  %3016 = fmul fast float %3013, 7.500000e-01
  %3017 = fadd fast float %2981, 1.250000e-01
  %3018 = fadd fast float %3017, %3014
  %3019 = fadd fast float %3018, %3008
  %3020 = fadd fast float %2982, 1.250000e-01
  %3021 = fadd fast float %3020, %3015
  %3022 = fadd fast float %3021, %3009
  %3023 = fadd fast float %2983, 1.250000e-01
  %3024 = fadd fast float %3023, %3016
  %3025 = fadd fast float %3024, %3010
  %3026 = fmul fast float %3019, %2969
  %3027 = fmul fast float %3022, %2970
  %3028 = fmul fast float %3025, %2971
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %3030, 0
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3032, %dx.types.Handle %34, float %3026, float %3027, float %3028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  br label %3035

; <label>:3035                                    ; preds = %2956, %2945
  %3036 = phi float [ %3034, %2956 ], [ -1.000000e+00, %2945 ]
  %3037 = fadd fast float %3036, %2943
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  br label %3039

; <label>:3039                                    ; preds = %3035, %2933
  %3040 = phi float [ %3038, %3035 ], [ %2943, %2933 ]
  %3041 = fmul fast float %3040, %435
  br label %3042

; <label>:3042                                    ; preds = %3039, %2928
  %3043 = phi float [ %3041, %3039 ], [ %435, %2928 ]
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 256
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3094, label %3048

; <label>:3048                                    ; preds = %3042
  %3049 = add i32 %43, 436
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %86, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = add i32 %43, 148
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = shl i32 %3058, 4
  %3060 = and i32 %3059, 32752
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = lshr i32 %3058, 7
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = fsub fast float 1.000000e+00, %3043
  %3066 = call float @dx.op.binary.f32(i32 35, float %3065, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3067 = bitcast float %3043 to i32
  %3068 = sitofp i32 %3067 to float
  %3069 = fadd fast float %3068, 0xC1CFBF8940000000
  %3070 = fmul fast float %3064, %3069
  %3071 = fadd fast float %3070, 0x41CFBF8940000000
  %3072 = fptosi float %3071 to i32
  %3073 = bitcast i32 %3072 to float
  %3074 = bitcast float %3066 to i32
  %3075 = sitofp i32 %3074 to float
  %3076 = fadd fast float %3075, 0xC1CFBF8940000000
  %3077 = fmul fast float %3076, %3064
  %3078 = fadd fast float %3077, 0x41CFBF8940000000
  %3079 = fptosi float %3078 to i32
  %3080 = bitcast i32 %3079 to float
  %3081 = fmul fast float %3073, %3061
  %3082 = fmul fast float %3080, %3061
  %3083 = fsub fast float %3066, %3081
  %3084 = fadd fast float %3082, %3066
  %3085 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3086 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3087 = fsub fast float %3055, %3085
  %3088 = fsub fast float %3086, %3085
  %3089 = bitcast float %3088 to i32
  %3090 = sub nsw i32 2129859010, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = fmul fast float %3091, %3087
  %3093 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  br label %3094

; <label>:3094                                    ; preds = %3048, %3042
  %3095 = phi float [ %3093, %3048 ], [ %3043, %3042 ]
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 128
  %3099 = icmp eq i32 %3098, 0
  br i1 %3099, label %3116, label %3100

; <label>:3100                                    ; preds = %3094
  %3101 = add i32 %43, 420
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = add i32 %3103, 0
  %3105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3105, %dx.types.Handle %86, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 0
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 524288
  %3111 = icmp ne i32 %3110, 0
  %3112 = fcmp fast ogt float %3107, 0x3FE0101020000000
  %3113 = select i1 %3112, float 1.000000e+00, float 0.000000e+00
  %3114 = select i1 %3111, float %3113, float %3107
  %3115 = fmul fast float %3114, %3095
  br label %3116

; <label>:3116                                    ; preds = %3100, %3094
  %3117 = phi float [ %3115, %3100 ], [ %3095, %3094 ]
  %3118 = fcmp fast ult float %3117, 0x3F70101020000000
  br i1 %3118, label %3661, label %3119

; <label>:3119                                    ; preds = %3116
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 16
  %3123 = icmp eq i32 %3122, 0
  br i1 %3123, label %3322, label %3124

; <label>:3124                                    ; preds = %3119
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %43, 372
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %85, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = extractvalue %dx.types.ResRet.f32 %3132, 1
  %3135 = extractvalue %dx.types.ResRet.f32 %3132, 2
  %3136 = extractvalue %dx.types.ResRet.f32 %3132, 3
  %3137 = and i32 %3126, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = lshr i32 %3126, 8
  %3140 = and i32 %3139, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = fmul fast float %3136, %3138
  %3143 = fadd fast float %3142, %3141
  %3144 = fmul fast float %3143, 0x3F70101000000000
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 512
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3157, label %3149

; <label>:3149                                    ; preds = %3124
  %3150 = add i32 %43, 452
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3152, 0
  %3154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3154, %dx.types.Handle %86, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  br label %3157

; <label>:3157                                    ; preds = %3149, %3124
  %3158 = phi float [ %3156, %3149 ], [ 1.000000e+00, %3124 ]
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 33554432
  %3162 = icmp eq i32 %3161, 0
  br i1 %3162, label %3269, label %3163

; <label>:3163                                    ; preds = %3157
  %3164 = add i32 %43, 272
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = lshr i32 %3166, 16
  %3170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3169)  ; LegacyF16ToF32(value)
  %3171 = add i32 %43, 276
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = lshr i32 %3177, 24
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = and i32 %3177, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = lshr i32 %3177, 8
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = lshr i32 %3177, 16
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = add i32 %43, 268
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = lshr i32 %3194, 24
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = and i32 %3194, 255
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = lshr i32 %3194, 8
  %3202 = and i32 %3201, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = lshr i32 %3194, 16
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = bitcast float %3133 to i32
  %3210 = ashr i32 %3209, 1
  %3211 = sub nsw i32 1597463174, %3210
  %3212 = bitcast i32 %3211 to float
  %3213 = fmul fast float %3133, 5.000000e-01
  %3214 = fmul fast float %3212, %3212
  %3215 = fmul fast float %3214, %3213
  %3216 = fsub fast float 1.500000e+00, %3215
  %3217 = fmul fast float %3212, %3133
  %3218 = fmul fast float %3217, %3216
  %3219 = bitcast float %3134 to i32
  %3220 = ashr i32 %3219, 1
  %3221 = sub nsw i32 1597463174, %3220
  %3222 = bitcast i32 %3221 to float
  %3223 = fmul fast float %3134, 5.000000e-01
  %3224 = fmul fast float %3222, %3222
  %3225 = fmul fast float %3224, %3223
  %3226 = fsub fast float 1.500000e+00, %3225
  %3227 = fmul fast float %3222, %3134
  %3228 = fmul fast float %3227, %3226
  %3229 = bitcast float %3135 to i32
  %3230 = ashr i32 %3229, 1
  %3231 = sub nsw i32 1597463174, %3230
  %3232 = bitcast i32 %3231 to float
  %3233 = fmul fast float %3135, 5.000000e-01
  %3234 = fmul fast float %3232, %3232
  %3235 = fmul fast float %3234, %3233
  %3236 = fsub fast float 1.500000e+00, %3235
  %3237 = fmul fast float %3232, %3135
  %3238 = fmul fast float %3237, %3236
  %3239 = fsub fast float %3218, %3200
  %3240 = fsub fast float %3228, %3204
  %3241 = fsub fast float %3238, %3208
  %3242 = fmul fast float %3239, %3168
  %3243 = fmul fast float %3240, %3170
  %3244 = fmul fast float %3241, %3175
  %3245 = fadd fast float %3242, %3183
  %3246 = fadd fast float %3243, %3187
  %3247 = fadd fast float %3244, %3191
  %3248 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3249 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3250 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3251 = fmul fast float %3248, %3248
  %3252 = fmul fast float %3249, %3249
  %3253 = fmul fast float %3250, %3250
  %3254 = fsub fast float %3251, %3133
  %3255 = fsub fast float %3252, %3134
  %3256 = fsub fast float %3253, %3135
  %3257 = fmul fast float %3254, %3158
  %3258 = fmul fast float %3255, %3158
  %3259 = fmul fast float %3256, %3158
  %3260 = fadd fast float %3257, %3133
  %3261 = fadd fast float %3258, %3134
  %3262 = fadd fast float %3259, %3135
  %3263 = fadd fast float %3180, %3144
  %3264 = fsub fast float %3263, %3197
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3266 = fsub fast float %3265, %3144
  %3267 = fmul fast float %3266, %3158
  %3268 = fadd fast float %3267, %3144
  br label %3322

; <label>:3269                                    ; preds = %3157
  %3270 = and i32 %3160, 134217728
  %3271 = icmp eq i32 %3270, 0
  br i1 %3271, label %3306, label %3272

; <label>:3272                                    ; preds = %3269
  %3273 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %3274 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %3275 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %3276 = fadd fast float %3273, -5.000000e-01
  %3277 = fadd fast float %3274, -5.000000e-01
  %3278 = fadd fast float %3275, -5.000000e-01
  %3279 = fmul fast float %3276, %3158
  %3280 = fmul fast float %3277, %3158
  %3281 = fmul fast float %3278, %3158
  %3282 = fadd fast float %3279, 5.000000e-01
  %3283 = fadd fast float %3280, 5.000000e-01
  %3284 = fadd fast float %3281, 5.000000e-01
  %3285 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3286 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3287 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3288 = fmul fast float %3282, 2.000000e+00
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3289, %3285
  %3291 = fadd fast float %3290, %3288
  %3292 = fmul fast float %3291, %3285
  %3293 = fmul fast float %3283, 2.000000e+00
  %3294 = fsub fast float 1.000000e+00, %3293
  %3295 = fmul fast float %3294, %3286
  %3296 = fadd fast float %3295, %3293
  %3297 = fmul fast float %3296, %3286
  %3298 = fmul fast float %3284, 2.000000e+00
  %3299 = fsub fast float 1.000000e+00, %3298
  %3300 = fmul fast float %3299, %3287
  %3301 = fadd fast float %3300, %3298
  %3302 = fmul fast float %3301, %3287
  %3303 = fmul fast float %3292, %3292
  %3304 = fmul fast float %3297, %3297
  %3305 = fmul fast float %3302, %3302
  br label %3322

; <label>:3306                                    ; preds = %3269
  %3307 = fmul fast float %353, %353
  %3308 = fmul fast float %357, %357
  %3309 = fmul fast float %361, %361
  %3310 = fadd fast float %3307, -1.000000e+00
  %3311 = fadd fast float %3308, -1.000000e+00
  %3312 = fadd fast float %3309, -1.000000e+00
  %3313 = fmul fast float %3158, %3310
  %3314 = fmul fast float %3158, %3311
  %3315 = fmul fast float %3158, %3312
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fadd fast float %3314, 1.000000e+00
  %3318 = fadd fast float %3315, 1.000000e+00
  %3319 = fmul fast float %3316, %3133
  %3320 = fmul fast float %3317, %3134
  %3321 = fmul fast float %3318, %3135
  br label %3322

; <label>:3322                                    ; preds = %3306, %3272, %3163, %3119
  %3323 = phi float [ %3268, %3163 ], [ %3144, %3272 ], [ %3144, %3306 ], [ 0x3FA23C0BE0000000, %3119 ]
  %3324 = phi float [ %3260, %3163 ], [ %3303, %3272 ], [ %3319, %3306 ], [ 1.000000e+00, %3119 ]
  %3325 = phi float [ %3261, %3163 ], [ %3304, %3272 ], [ %3320, %3306 ], [ 1.000000e+00, %3119 ]
  %3326 = phi float [ %3262, %3163 ], [ %3305, %3272 ], [ %3321, %3306 ], [ 1.000000e+00, %3119 ]
  %3327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.i32 %3327, 1
  %3329 = and i32 %3328, 1
  %3330 = icmp ne i32 %3329, 0
  %3331 = add i32 %43, 356
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = and i32 %3333, 32
  %3335 = icmp ne i32 %3334, 0
  %3336 = and i1 %3330, %3335
  %3337 = select i1 %3336, float 1.000000e+00, float %3324
  %3338 = select i1 %3336, float 0x3FD3333340000000, float %3325
  %3339 = select i1 %3336, float 0x3FD3333340000000, float %3326
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = and i32 %3341, 32
  %3343 = icmp eq i32 %3342, 0
  br i1 %3343, label %3416, label %3344

; <label>:3344                                    ; preds = %3322
  %3345 = add i32 %43, 140
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = add i32 %43, 388
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %3350, 0
  %3352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3352, %dx.types.Handle %85, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3358 = and i32 %3347, 255
  %3359 = uitofp i32 %3358 to float
  %3360 = lshr i32 %3347, 8
  %3361 = and i32 %3360, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = lshr i32 %3347, 16
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = fmul fast float %3365, 0x3F70101000000000
  %3367 = fmul fast float %3354, %3359
  %3368 = fadd fast float %3367, %3362
  %3369 = fmul fast float %3368, 0x3F70101000000000
  %3370 = fadd fast float %3355, -5.000000e-01
  %3371 = fadd fast float %3357, -5.000000e-01
  %3372 = fmul fast float %3370, %3366
  %3373 = fmul fast float %3371, %3366
  %3374 = fadd fast float %3372, 5.000000e-01
  %3375 = fadd fast float %3373, 5.000000e-01
  %3376 = fmul fast float %3374, 2.000000e+00
  %3377 = fadd fast float %3376, -1.000000e+00
  %3378 = fmul fast float %3375, 2.000000e+00
  %3379 = fadd fast float %3378, -1.000000e+00
  %3380 = fadd fast float %3377, %3379
  %3381 = fmul fast float %3380, 5.000000e-01
  %3382 = fsub fast float %3377, %3379
  %3383 = fmul fast float %3382, 5.000000e-01
  %3384 = call float @dx.op.unary.f32(i32 6, float %3381)  ; FAbs(value)
  %3385 = fsub fast float 1.000000e+00, %3384
  %3386 = call float @dx.op.unary.f32(i32 6, float %3383)  ; FAbs(value)
  %3387 = fsub fast float %3385, %3386
  %3388 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3383, float %3387, float %3381, float %3383, float %3387)  ; Dot3(ax,ay,az,bx,by,bz)
  %3389 = call float @dx.op.unary.f32(i32 25, float %3388)  ; Rsqrt(value)
  %3390 = fmul fast float %3381, %3389
  %3391 = fmul fast float %3383, %3389
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 67108864
  %3395 = icmp eq i32 %3394, 0
  br i1 %3395, label %3412, label %3396

; <label>:3396                                    ; preds = %3344
  %3397 = add i32 %43, 328
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 65535
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 65535
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = lshr i32 %3399, 16
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = fsub fast float %3369, %3407
  %3409 = fmul fast float %3408, %3401
  %3410 = fadd fast float %3409, %3405
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  br label %3412

; <label>:3412                                    ; preds = %3396, %3344
  %3413 = phi float [ %3411, %3396 ], [ %3369, %3344 ]
  %3414 = call float @dx.op.dot2.f32(i32 54, float %3390, float %3391, float %2833, float %2834)  ; Dot2(ax,ay,bx,by)
  %3415 = call float @dx.op.dot2.f32(i32 54, float %3390, float %3391, float %2835, float %2836)  ; Dot2(ax,ay,bx,by)
  br label %3416

; <label>:3416                                    ; preds = %3412, %3322
  %3417 = phi float [ %3413, %3412 ], [ 0x3FD6666660000000, %3322 ]
  %3418 = phi float [ %3414, %3412 ], [ 0.000000e+00, %3322 ]
  %3419 = phi float [ %3415, %3412 ], [ 0.000000e+00, %3322 ]
  %3420 = phi float [ %3356, %3412 ], [ 1.000000e+00, %3322 ]
  %3421 = add i32 %43, 208
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = lshr i32 %3423, 22
  %3425 = shl nuw nsw i32 %3424, 5
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 64
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3464, label %3431

; <label>:3431                                    ; preds = %3416
  %3432 = add i32 %43, 404
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = add i32 %3434, 0
  %3436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 131072
  %3440 = icmp eq i32 %3439, 0
  %3441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3436, %dx.types.Handle %85, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.ResRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.ResRet.f32 %3441, 2
  %3445 = fmul fast float %3442, %341
  %3446 = fmul fast float %3443, %344
  %3447 = fmul fast float %3444, %347
  br i1 %3440, label %3454, label %3448

; <label>:3448                                    ; preds = %3431
  %3449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3450 = extractvalue %dx.types.CBufRet.f32 %3449, 0
  %3451 = fmul fast float %3450, %3445
  %3452 = fmul fast float %3450, %3446
  %3453 = fmul fast float %3450, %3447
  br label %3454

; <label>:3454                                    ; preds = %3448, %3431
  %3455 = phi float [ %3451, %3448 ], [ %3445, %3431 ]
  %3456 = phi float [ %3452, %3448 ], [ %3446, %3431 ]
  %3457 = phi float [ %3453, %3448 ], [ %3447, %3431 ]
  %3458 = fmul fast float %3455, %3426
  %3459 = select i1 %209, float %3458, float %3455
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3456, float %3457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = select i1 %209, float 0.000000e+00, float %3455
  %3462 = select i1 %209, float %3460, float %3456
  %3463 = select i1 %209, float 0.000000e+00, float %3457
  br label %3464

; <label>:3464                                    ; preds = %3454, %3416
  %3465 = phi float [ %3461, %3454 ], [ 0.000000e+00, %3416 ]
  %3466 = phi float [ %3462, %3454 ], [ 0.000000e+00, %3416 ]
  %3467 = phi float [ %3463, %3454 ], [ 0.000000e+00, %3416 ]
  %3468 = add i32 %43, 144
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = lshr i32 %3470, 8
  %3474 = and i32 %3473, 255
  %3475 = uitofp i32 %3474 to float
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3337, float %3338, float %3339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = fmul fast float %3475, %3476
  %3478 = fadd fast float %3477, %3472
  %3479 = fmul fast float %3478, 0x3F70101020000000
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  br i1 %2821, label %3481, label %3489

; <label>:3481                                    ; preds = %3464
  %3482 = fsub fast float 1.000000e+00, %3117
  %3483 = fmul fast float %3482, %2810
  %3484 = fmul fast float %3482, %2811
  %3485 = fmul fast float %3482, %2812
  %3486 = fmul fast float %3482, %2813
  %3487 = fmul fast float %3482, %2814
  %3488 = fmul fast float %3482, %2815
  br label %3489

; <label>:3489                                    ; preds = %3481, %3464
  %3490 = phi float [ %3483, %3481 ], [ %2810, %3464 ]
  %3491 = phi float [ %3484, %3481 ], [ %2811, %3464 ]
  %3492 = phi float [ %3485, %3481 ], [ %2812, %3464 ]
  %3493 = phi float [ %3486, %3481 ], [ %2813, %3464 ]
  %3494 = phi float [ %3487, %3481 ], [ %2814, %3464 ]
  %3495 = phi float [ %3488, %3481 ], [ %2815, %3464 ]
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, 3
  %3499 = icmp eq i32 %3498, 3
  br i1 %3499, label %3578, label %3500

; <label>:3500                                    ; preds = %3489
  %3501 = and i32 %3497, 16
  %3502 = icmp ne i32 %3501, 0
  %3503 = select i1 %3502, float %3117, float 0.000000e+00
  %3504 = icmp eq i32 %3498, 0
  br i1 %3504, label %3505, label %3533

; <label>:3505                                    ; preds = %3500
  %3506 = and i32 %3497, 64
  %3507 = icmp ne i32 %3506, 0
  %3508 = select i1 %3507, float %3117, float 0.000000e+00
  %3509 = fsub fast float %3337, %3490
  %3510 = fsub fast float %3338, %3491
  %3511 = fsub fast float %3339, %3492
  %3512 = fmul fast float %3503, %3509
  %3513 = fmul fast float %3503, %3510
  %3514 = fmul fast float %3503, %3511
  %3515 = fadd fast float %3512, %3490
  %3516 = fadd fast float %3513, %3491
  %3517 = fadd fast float %3514, %3492
  %3518 = fsub fast float %3323, %2816
  %3519 = fmul fast float %3503, %3518
  %3520 = fadd fast float %3519, %2816
  %3521 = fsub fast float %3465, %3493
  %3522 = fsub fast float %3466, %3494
  %3523 = fsub fast float %3467, %3495
  %3524 = fmul fast float %3508, %3521
  %3525 = fmul fast float %3508, %3522
  %3526 = fmul fast float %3508, %3523
  %3527 = fadd fast float %3524, %3493
  %3528 = fadd fast float %3525, %3494
  %3529 = fadd fast float %3526, %3495
  %3530 = fsub fast float %3480, %2819
  %3531 = fmul fast float %3503, %3530
  %3532 = fadd fast float %3531, %2819
  br label %3578

; <label>:3533                                    ; preds = %3500
  %3534 = icmp eq i32 %3498, 1
  br i1 %3534, label %3535, label %3548

; <label>:3535                                    ; preds = %3533
  %3536 = fadd fast float %3337, -1.000000e+00
  %3537 = fadd fast float %3338, -1.000000e+00
  %3538 = fadd fast float %3339, -1.000000e+00
  %3539 = fmul fast float %3503, %3536
  %3540 = fmul fast float %3503, %3537
  %3541 = fmul fast float %3503, %3538
  %3542 = fadd fast float %3539, 1.000000e+00
  %3543 = fadd fast float %3540, 1.000000e+00
  %3544 = fadd fast float %3541, 1.000000e+00
  %3545 = fmul fast float %3542, %3490
  %3546 = fmul fast float %3543, %3491
  %3547 = fmul fast float %3544, %3492
  br label %3578

; <label>:3548                                    ; preds = %3533
  %3549 = icmp eq i32 %3498, 2
  br i1 %3549, label %3550, label %3578

; <label>:3550                                    ; preds = %3548
  %3551 = call float @dx.op.unary.f32(i32 24, float %3337)  ; Sqrt(value)
  %3552 = call float @dx.op.unary.f32(i32 24, float %3338)  ; Sqrt(value)
  %3553 = call float @dx.op.unary.f32(i32 24, float %3339)  ; Sqrt(value)
  %3554 = fadd fast float %3551, -5.000000e-01
  %3555 = fadd fast float %3552, -5.000000e-01
  %3556 = fadd fast float %3553, -5.000000e-01
  %3557 = fmul fast float %3554, %3503
  %3558 = fmul fast float %3555, %3503
  %3559 = fmul fast float %3556, %3503
  %3560 = fadd fast float %3557, 5.000000e-01
  %3561 = fadd fast float %3558, 5.000000e-01
  %3562 = fadd fast float %3559, 5.000000e-01
  %3563 = fmul fast float %3560, 2.000000e+00
  %3564 = fsub fast float 1.000000e+00, %3563
  %3565 = fmul fast float %3564, %3490
  %3566 = fadd fast float %3565, %3563
  %3567 = fmul fast float %3566, %3490
  %3568 = fmul fast float %3561, 2.000000e+00
  %3569 = fsub fast float 1.000000e+00, %3568
  %3570 = fmul fast float %3569, %3491
  %3571 = fadd fast float %3570, %3568
  %3572 = fmul fast float %3571, %3491
  %3573 = fmul fast float %3562, 2.000000e+00
  %3574 = fsub fast float 1.000000e+00, %3573
  %3575 = fmul fast float %3574, %3492
  %3576 = fadd fast float %3575, %3573
  %3577 = fmul fast float %3576, %3492
  br label %3578

; <label>:3578                                    ; preds = %3550, %3548, %3535, %3505, %3489
  %3579 = phi float [ %3490, %3489 ], [ %3567, %3550 ], [ %3490, %3548 ], [ %3545, %3535 ], [ %3515, %3505 ]
  %3580 = phi float [ %3491, %3489 ], [ %3572, %3550 ], [ %3491, %3548 ], [ %3546, %3535 ], [ %3516, %3505 ]
  %3581 = phi float [ %3492, %3489 ], [ %3577, %3550 ], [ %3492, %3548 ], [ %3547, %3535 ], [ %3517, %3505 ]
  %3582 = phi float [ %3493, %3489 ], [ %3493, %3550 ], [ %3493, %3548 ], [ %3493, %3535 ], [ %3527, %3505 ]
  %3583 = phi float [ %3494, %3489 ], [ %3494, %3550 ], [ %3494, %3548 ], [ %3494, %3535 ], [ %3528, %3505 ]
  %3584 = phi float [ %3495, %3489 ], [ %3495, %3550 ], [ %3495, %3548 ], [ %3495, %3535 ], [ %3529, %3505 ]
  %3585 = phi float [ %2816, %3489 ], [ %2816, %3550 ], [ %2816, %3548 ], [ %2816, %3535 ], [ %3520, %3505 ]
  %3586 = phi float [ %2819, %3489 ], [ %2819, %3550 ], [ %2819, %3548 ], [ %2819, %3535 ], [ %3532, %3505 ]
  %3587 = and i32 %3497, 12
  %3588 = icmp eq i32 %3587, 12
  br i1 %3588, label %3661, label %3589

; <label>:3589                                    ; preds = %3578
  %3590 = and i32 %3497, 2097184
  %3591 = icmp eq i32 %3590, 2097184
  %3592 = select i1 %3591, float %3117, float 0.000000e+00
  %3593 = and i32 %3497, 4194336
  %3594 = icmp eq i32 %3593, 4194336
  %3595 = select i1 %3594, float %3117, float 0.000000e+00
  %3596 = and i32 %3497, 8388640
  %3597 = icmp eq i32 %3596, 8388640
  %3598 = select i1 %3597, float %3117, float 0.000000e+00
  %3599 = icmp eq i32 %3587, 0
  br i1 %3599, label %3600, label %3613

; <label>:3600                                    ; preds = %3589
  %3601 = fsub fast float %3418, %2808
  %3602 = fsub fast float %3419, %2809
  %3603 = fmul fast float %3592, %3601
  %3604 = fmul fast float %3592, %3602
  %3605 = fadd fast float %3603, %2808
  %3606 = fadd fast float %3604, %2809
  %3607 = fsub fast float %3420, %2818
  %3608 = fmul fast float %3595, %3607
  %3609 = fadd fast float %3608, %2818
  %3610 = fsub fast float %3417, %2817
  %3611 = fmul fast float %3598, %3610
  %3612 = fadd fast float %3611, %2817
  br label %3661

; <label>:3613                                    ; preds = %3589
  %3614 = icmp eq i32 %3587, 4
  br i1 %3614, label %3615, label %3647

; <label>:3615                                    ; preds = %3613
  %3616 = fmul fast float %3592, %3418
  %3617 = fmul fast float %3592, %3419
  %3618 = fadd fast float %3616, %2808
  %3619 = fadd fast float %3617, %2809
  %3620 = call float @dx.op.binary.f32(i32 36, float %2818, float %3420)  ; FMin(a,b)
  %3621 = fsub fast float %3620, %2818
  %3622 = fmul fast float %3621, %3595
  %3623 = fadd fast float %3622, %2818
  %3624 = fadd fast float %3417, %2817
  %3625 = fmul fast float %3624, 0x3FF337FAE0000000
  %3626 = fmul fast float %2817, %2817
  %3627 = fmul fast float %3417, %3417
  %3628 = fadd fast float %3627, %3626
  %3629 = fmul fast float %3628, 0x3FE5152B00000000
  %3630 = fmul fast float %2817, 0xBFCC1F85E0000000
  %3631 = fmul fast float %3630, %3417
  %3632 = fadd fast float %3631, 0xBFE1363700000000
  %3633 = fadd fast float %3632, %3625
  %3634 = fsub fast float %3633, %3629
  %3635 = fmul fast float %3624, 0x3FBA6F0D00000000
  %3636 = fmul fast float %3628, 0x3FD0432880000000
  %3637 = fmul fast float %2817, 0xBFEF110800000000
  %3638 = fmul fast float %3637, %3417
  %3639 = fadd fast float %3638, 1.000000e+00
  %3640 = fsub fast float %3639, %3635
  %3641 = fadd fast float %3640, %3636
  %3642 = fdiv fast float %3634, %3641
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3644 = fsub fast float %3643, %2817
  %3645 = fmul fast float %3644, %3598
  %3646 = fadd fast float %3645, %2817
  br label %3661

; <label>:3647                                    ; preds = %3613
  %3648 = icmp eq i32 %3587, 8
  br i1 %3648, label %3649, label %3661

; <label>:3649                                    ; preds = %3647
  %3650 = fmul fast float %3592, %3418
  %3651 = fmul fast float %3592, %3419
  %3652 = fadd fast float %3650, %2808
  %3653 = fadd fast float %3651, %2809
  %3654 = call float @dx.op.binary.f32(i32 36, float %2818, float %3420)  ; FMin(a,b)
  %3655 = fsub fast float %3654, %2818
  %3656 = fmul fast float %3655, %3595
  %3657 = fadd fast float %3656, %2818
  %3658 = fsub fast float %3417, %2817
  %3659 = fmul fast float %3598, %3658
  %3660 = fadd fast float %3659, %2817
  br label %3661

; <label>:3661                                    ; preds = %3649, %3647, %3615, %3600, %3578, %3116, %2820, %2807
  %3662 = phi float [ %2808, %3578 ], [ %2808, %3116 ], [ %2808, %2807 ], [ %2808, %2820 ], [ %3605, %3600 ], [ %3618, %3615 ], [ %2808, %3647 ], [ %3652, %3649 ]
  %3663 = phi float [ %2809, %3578 ], [ %2809, %3116 ], [ %2809, %2807 ], [ %2809, %2820 ], [ %3606, %3600 ], [ %3619, %3615 ], [ %2809, %3647 ], [ %3653, %3649 ]
  %3664 = phi float [ %3579, %3578 ], [ %2810, %3116 ], [ %2810, %2807 ], [ %2810, %2820 ], [ %3579, %3600 ], [ %3579, %3615 ], [ %3579, %3647 ], [ %3579, %3649 ]
  %3665 = phi float [ %3580, %3578 ], [ %2811, %3116 ], [ %2811, %2807 ], [ %2811, %2820 ], [ %3580, %3600 ], [ %3580, %3615 ], [ %3580, %3647 ], [ %3580, %3649 ]
  %3666 = phi float [ %3581, %3578 ], [ %2812, %3116 ], [ %2812, %2807 ], [ %2812, %2820 ], [ %3581, %3600 ], [ %3581, %3615 ], [ %3581, %3647 ], [ %3581, %3649 ]
  %3667 = phi float [ %3582, %3578 ], [ %2813, %3116 ], [ %2813, %2807 ], [ %2813, %2820 ], [ %3582, %3600 ], [ %3582, %3615 ], [ %3582, %3647 ], [ %3582, %3649 ]
  %3668 = phi float [ %3583, %3578 ], [ %2814, %3116 ], [ %2814, %2807 ], [ %2814, %2820 ], [ %3583, %3600 ], [ %3583, %3615 ], [ %3583, %3647 ], [ %3583, %3649 ]
  %3669 = phi float [ %3584, %3578 ], [ %2815, %3116 ], [ %2815, %2807 ], [ %2815, %2820 ], [ %3584, %3600 ], [ %3584, %3615 ], [ %3584, %3647 ], [ %3584, %3649 ]
  %3670 = phi float [ %3585, %3578 ], [ %2816, %3116 ], [ %2816, %2807 ], [ %2816, %2820 ], [ %3585, %3600 ], [ %3585, %3615 ], [ %3585, %3647 ], [ %3585, %3649 ]
  %3671 = phi float [ %2817, %3578 ], [ %2817, %3116 ], [ %2817, %2807 ], [ %2817, %2820 ], [ %3612, %3600 ], [ %3646, %3615 ], [ %2817, %3647 ], [ %3660, %3649 ]
  %3672 = phi float [ %2818, %3578 ], [ %2818, %3116 ], [ %2818, %2807 ], [ %2818, %2820 ], [ %3609, %3600 ], [ %3623, %3615 ], [ %2818, %3647 ], [ %3657, %3649 ]
  %3673 = phi float [ %3586, %3578 ], [ %2819, %3116 ], [ %2819, %2807 ], [ %2819, %2820 ], [ %3586, %3600 ], [ %3586, %3615 ], [ %3586, %3647 ], [ %3586, %3649 ]
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = call float @dx.op.dot2.f32(i32 54, float %3662, float %3663, float %3662, float %3663)  ; Dot2(ax,ay,bx,by)
  %3677 = fmul fast float %3676, 0x3FE3333340000000
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3678, float %3662, float %3663, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 25, float %3679)  ; Rsqrt(value)
  %3681 = fmul fast float %3680, %3662
  %3682 = fmul fast float %3680, %3663
  %3683 = fmul fast float %3678, %3680
  %3684 = fmul fast float %3683, %98
  %3685 = fmul fast float %3683, %100
  %3686 = fmul fast float %3683, %102
  %3687 = fmul fast float %3681, %64
  %3688 = fmul fast float %3681, %65
  %3689 = fmul fast float %3681, %66
  %3690 = fadd fast float %3684, %3687
  %3691 = fadd fast float %3685, %3688
  %3692 = fadd fast float %3686, %3689
  %3693 = fmul fast float %112, %3682
  %3694 = fmul fast float %113, %3682
  %3695 = fmul fast float %114, %3682
  %3696 = fadd fast float %3690, %3693
  %3697 = fadd fast float %3691, %3694
  %3698 = fadd fast float %3692, %3695
  %3699 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3697, float %3698, float %3696, float %3697, float %3698)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = call float @dx.op.unary.f32(i32 25, float %3699)  ; Rsqrt(value)
  %3701 = fmul fast float %3696, %3700
  %3702 = fmul fast float %3697, %3700
  %3703 = fmul fast float %3698, %3700
  %3704 = and i32 %45, 1
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3706, label %4214

; <label>:3706                                    ; preds = %3661
  %3707 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %3708 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %3709 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %3710 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %3711 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %3712 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %3713 = fadd fast float %3707, %148
  %3714 = fadd fast float %3708, %149
  %3715 = fadd fast float %3709, %150
  %3716 = fadd fast float %3710, %148
  %3717 = fadd fast float %3711, %149
  %3718 = fadd fast float %3712, %150
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.CBufRet.f32 %3719, 2
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 2
  %3725 = extractvalue %dx.types.CBufRet.f32 %3723, 3
  %3726 = fmul fast float %3720, %89
  %3727 = fmul fast float %3726, %3724
  %3728 = fmul fast float %3721, %90
  %3729 = fmul fast float %3728, %3725
  %3730 = fptoui float %3727 to i32
  %3731 = fptoui float %3729 to i32
  %3732 = fadd fast float %3720, -1.000000e+00
  %3733 = fadd fast float %3721, -1.000000e+00
  %3734 = fptoui float %3732 to i32
  %3735 = fptoui float %3733 to i32
  %3736 = call i32 @dx.op.binary.i32(i32 40, i32 %3730, i32 %3734)  ; UMin(a,b)
  %3737 = call i32 @dx.op.binary.i32(i32 40, i32 %3731, i32 %3735)  ; UMin(a,b)
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 3
  %3741 = fmul fast float %3739, %80
  %3742 = fsub fast float %3741, %3740
  %3743 = fadd fast float %3722, -1.000000e+00
  %3744 = call float @dx.op.binary.f32(i32 36, float %3742, float %3743)  ; FMin(a,b)
  %3745 = fptoui float %3744 to i32
  %3746 = fptoui float %3720 to i32
  %3747 = fptoui float %3721 to i32
  %3748 = mul i32 %3745, %3747
  %3749 = add i32 %3748, %3737
  %3750 = mul i32 %3749, %3746
  %3751 = add i32 %3750, %3736
  %3752 = shl i32 %3751, 2
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = and i32 %3754, 1023
  %3756 = lshr i32 %3754, 10
  %3757 = icmp eq i32 %3755, 0
  br i1 %3757, label %4183, label %3758

; <label>:3758                                    ; preds = %3706
  %3759 = and i32 %3754, 1023
  br label %3760

; <label>:3760                                    ; preds = %3886, %3758
  %3761 = phi i32 [ %3836, %3886 ], [ 0, %3758 ]
  %3762 = phi float [ %3887, %3886 ], [ 0.000000e+00, %3758 ]
  %3763 = phi float [ %3888, %3886 ], [ %3675, %3758 ]
  %3764 = phi float [ %3889, %3886 ], [ %3673, %3758 ]
  %3765 = phi float [ %3890, %3886 ], [ 0.000000e+00, %3758 ]
  %3766 = phi float [ %3891, %3886 ], [ 0.000000e+00, %3758 ]
  %3767 = phi float [ %3892, %3886 ], [ %3667, %3758 ]
  %3768 = phi float [ %3893, %3886 ], [ %3668, %3758 ]
  %3769 = phi float [ %3894, %3886 ], [ %3669, %3758 ]
  %3770 = phi float [ %3895, %3886 ], [ %3701, %3758 ]
  %3771 = phi float [ %3896, %3886 ], [ %3702, %3758 ]
  %3772 = phi float [ %3897, %3886 ], [ %3703, %3758 ]
  %3773 = phi float [ %3898, %3886 ], [ %3672, %3758 ]
  %3774 = phi float [ %3899, %3886 ], [ %3671, %3758 ]
  %3775 = phi float [ %3900, %3886 ], [ 0.000000e+00, %3758 ]
  %3776 = phi float [ %3901, %3886 ], [ %3670, %3758 ]
  %3777 = phi float [ %3902, %3886 ], [ %3664, %3758 ]
  %3778 = phi float [ %3903, %3886 ], [ %3665, %3758 ]
  %3779 = phi float [ %3904, %3886 ], [ %3666, %3758 ]
  %3780 = add nuw nsw i32 %3761, %3756
  %3781 = shl i32 %3780, 2
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = shl i32 %3783, 8
  %3785 = or i32 %3784, 48
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = or i32 %3784, 64
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.i32 %3792, 1
  %3795 = or i32 %3784, 80
  %3796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3799 = or i32 %3784, 96
  %3800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = or i32 %3784, 112
  %3806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3808 = or i32 %3784, 128
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3814 = or i32 %3784, 144
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = or i32 %3784, 160
  %3821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3821, 3
  %3826 = or i32 %3784, 192
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = or i32 %3784, 208
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = or i32 %3784, 248
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = add nuw nsw i32 %3761, 1
  %3837 = bitcast float %3790 to i32
  %3838 = and i32 %3837, 512
  %3839 = icmp eq i32 %3838, 0
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = call float @dx.op.dot4.f32(i32 56, float %3841, float %3842, float %3843, float %3844, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3846 = or i32 %3784, 16
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3853 = or i32 %3784, 32
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = call float @dx.op.dot4.f32(i32 56, float %3855, float %3856, float %3857, float %3858, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3860 = call float @dx.op.unary.f32(i32 27, float %3845)  ; Round_ni(value)
  %3861 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3862 = call float @dx.op.unary.f32(i32 27, float %3852)  ; Round_ni(value)
  %3863 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3864 = call float @dx.op.unary.f32(i32 6, float %3859)  ; FAbs(value)
  %3865 = call float @dx.op.unary.f32(i32 27, float %3864)  ; Round_ni(value)
  %3866 = fadd fast float %3863, %3861
  %3867 = fadd fast float %3866, %3865
  %3868 = fcmp fast oeq float %3867, 0.000000e+00
  %3869 = call float @dx.op.dot4.f32(i32 56, float %3841, float %3842, float %3843, float %3844, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3870 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3871 = call float @dx.op.dot4.f32(i32 56, float %3841, float %3842, float %3843, float %3844, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3872 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3873 = fsub fast float %3869, %3845
  %3874 = fsub fast float %3871, %3845
  %3875 = fsub fast float %3870, %3852
  %3876 = fsub fast float %3872, %3852
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %98, float %100, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 2
  %3880 = fadd fast float %3879, %3877
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3883 = fcmp fast ogt float %3881, %3882
  %3884 = and i1 %3868, %3883
  %3885 = and i1 %3839, %3884
  br i1 %3885, label %3906, label %3886

; <label>:3886                                    ; preds = %4169, %3987, %3906, %3760
  %3887 = phi float [ %3762, %3906 ], [ %3990, %3987 ], [ %3990, %4169 ], [ %3762, %3760 ]
  %3888 = phi float [ %3763, %3906 ], [ %3763, %3987 ], [ %4144, %4169 ], [ %3763, %3760 ]
  %3889 = phi float [ %3764, %3906 ], [ %3764, %3987 ], [ %4142, %4169 ], [ %3764, %3760 ]
  %3890 = phi float [ %3765, %3906 ], [ %3765, %3987 ], [ %4114, %4169 ], [ %3765, %3760 ]
  %3891 = phi float [ %3766, %3906 ], [ %3766, %3987 ], [ %4112, %4169 ], [ %3766, %3760 ]
  %3892 = phi float [ %3767, %3906 ], [ %3767, %3987 ], [ %4179, %4169 ], [ %3767, %3760 ]
  %3893 = phi float [ %3768, %3906 ], [ %3768, %3987 ], [ %4180, %4169 ], [ %3768, %3760 ]
  %3894 = phi float [ %3769, %3906 ], [ %3769, %3987 ], [ %4181, %4169 ], [ %3769, %3760 ]
  %3895 = phi float [ %3770, %3906 ], [ %3770, %3987 ], [ %4093, %4169 ], [ %3770, %3760 ]
  %3896 = phi float [ %3771, %3906 ], [ %3771, %3987 ], [ %4094, %4169 ], [ %3771, %3760 ]
  %3897 = phi float [ %3772, %3906 ], [ %3772, %3987 ], [ %4095, %4169 ], [ %3772, %3760 ]
  %3898 = phi float [ %3773, %3906 ], [ %3773, %3987 ], [ %4122, %4169 ], [ %3773, %3760 ]
  %3899 = phi float [ %3774, %3906 ], [ %3774, %3987 ], [ %4119, %4169 ], [ %3774, %3760 ]
  %3900 = phi float [ %3775, %3906 ], [ %3775, %3987 ], [ %4116, %4169 ], [ %3775, %3760 ]
  %3901 = phi float [ %3776, %3906 ], [ %3776, %3987 ], [ %4110, %4169 ], [ %3776, %3760 ]
  %3902 = phi float [ %3777, %3906 ], [ %3777, %3987 ], [ %4105, %4169 ], [ %3777, %3760 ]
  %3903 = phi float [ %3778, %3906 ], [ %3778, %3987 ], [ %4106, %4169 ], [ %3778, %3760 ]
  %3904 = phi float [ %3779, %3906 ], [ %3779, %3987 ], [ %4107, %4169 ], [ %3779, %3760 ]
  %3905 = icmp eq i32 %3836, %3759
  br i1 %3905, label %4182, label %3760

; <label>:3906                                    ; preds = %3760
  %3907 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3908 = extractvalue %dx.types.ResRet.f32 %3806, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3806, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3912 = extractvalue %dx.types.ResRet.i32 %3792, 3
  %3913 = extractvalue %dx.types.ResRet.i32 %3792, 2
  %3914 = add i32 %3912, 0
  %3915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3914, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3915, %dx.types.Handle %3916, float %3845, float %3852, float undef, float undef, i32 0, i32 0, i32 undef, float %3873, float %3875, float undef, float %3874, float %3876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = fmul fast float %3918, %3911
  %3920 = fadd fast float %3919, %3910
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fmul fast float %3845, %3801
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3852, float %3922)  ; FMad(a,b,c)
  %3924 = fadd fast float %3923, %3909
  %3925 = fmul fast float %3845, %3803
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3804, float %3852, float %3925)  ; FMad(a,b,c)
  %3927 = fadd fast float %3926, %3908
  %3928 = fmul fast float %3873, %3801
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3875, float %3928)  ; FMad(a,b,c)
  %3930 = fmul fast float %3873, %3803
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3804, float %3875, float %3930)  ; FMad(a,b,c)
  %3932 = fmul fast float %3874, %3801
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3876, float %3932)  ; FMad(a,b,c)
  %3934 = fmul fast float %3874, %3803
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3804, float %3876, float %3934)  ; FMad(a,b,c)
  %3936 = add i32 %3913, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3937, %dx.types.Handle %3916, float %3924, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3929, float %3931, float undef, float %3933, float %3935, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = and i32 %3837, 1024
  %3941 = icmp ne i32 %3940, 0
  %3942 = fcmp fast ogt float %3939, 0x3FE0101020000000
  %3943 = uitofp i1 %3942 to float
  %3944 = select i1 %3941, float %3943, float %3939
  %3945 = and i32 %3837, 8192
  %3946 = icmp ne i32 %3945, 0
  %3947 = select i1 %3946, float %3907, float 1.000000e+00
  %3948 = fmul fast float %3845, 2.000000e+00
  %3949 = fadd fast float %3948, -1.000000e+00
  %3950 = call float @dx.op.unary.f32(i32 6, float %3949)  ; FAbs(value)
  %3951 = fmul fast float %3950, %3834
  %3952 = fsub fast float %3951, %3834
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3852, 2.000000e+00
  %3955 = fadd fast float %3954, -1.000000e+00
  %3956 = call float @dx.op.unary.f32(i32 6, float %3955)  ; FAbs(value)
  %3957 = fmul fast float %3956, %3835
  %3958 = fsub fast float %3957, %3835
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3960 = fmul fast float %3864, %3797
  %3961 = fsub fast float %3960, %3797
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3921, %3947
  %3964 = fmul fast float %3963, %3918
  %3965 = fmul fast float %3964, %3953
  %3966 = fmul fast float %3965, %3944
  %3967 = fmul fast float %3966, %3959
  %3968 = fmul fast float %3967, %3962
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 1
  %3971 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3972 = fsub fast float %3881, %3971
  %3973 = fmul fast float %3972, %3970
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3968, %3798
  %3976 = fadd fast float %3968, %3798
  %3977 = fmul fast float %3976, %3807
  %3978 = fsub fast float %3977, %3807
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = and i32 %3837, 128
  %3981 = icmp ne i32 %3980, 0
  %3982 = select i1 %3981, float %3979, float %3975
  %3983 = fmul fast float %3982, %3974
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = fcmp fast ugt float %3983, %3985
  br i1 %3986, label %3987, label %3886

; <label>:3987                                    ; preds = %3906
  %3988 = select i1 %3946, float %3983, float 0.000000e+00
  %3989 = fadd fast float %3988, %3762
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  br i1 %3946, label %3886, label %3991

; <label>:3991                                    ; preds = %3987
  %3992 = and i32 %3837, 4
  %3993 = and i32 %3837, 8
  %3994 = add i32 %3793, 0
  %3995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3994, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3995, %dx.types.Handle %3996, float %3924, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3929, float %3931, float undef, float %3933, float %3935, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %4001 = extractvalue %dx.types.ResRet.f32 %3997, 3
  %4002 = bitcast float %3819 to i32
  %4003 = and i32 %4002, 255
  %4004 = uitofp i32 %4003 to float
  %4005 = lshr i32 %4002, 8
  %4006 = and i32 %4005, 255
  %4007 = uitofp i32 %4006 to float
  %4008 = fmul fast float %4001, %4004
  %4009 = fadd fast float %4008, %4007
  %4010 = fmul fast float %4009, 0x3F70101000000000
  %4011 = add i32 %3794, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4011, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4012, %dx.types.Handle %3996, float %3924, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3929, float %3931, float undef, float %3933, float %3935, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = extractvalue %dx.types.ResRet.f32 %4013, 3
  %4018 = bitcast float %3813 to i32
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = lshr i32 %4018, 8
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = lshr i32 %4018, 16
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = fmul fast float %4026, 0x3F70101000000000
  %4028 = fmul fast float %4014, %4020
  %4029 = fadd fast float %4028, %4023
  %4030 = fmul fast float %4029, 0x3F70101000000000
  %4031 = fadd fast float %4015, -5.000000e-01
  %4032 = fadd fast float %4017, -5.000000e-01
  %4033 = fmul fast float %4031, %4027
  %4034 = fmul fast float %4032, %4027
  %4035 = fadd fast float %4033, 5.000000e-01
  %4036 = fadd fast float %4034, 5.000000e-01
  %4037 = fmul fast float %3998, %3822
  %4038 = fmul fast float %3999, %3823
  %4039 = fmul fast float %4000, %3824
  %4040 = fmul fast float %4035, 2.000000e+00
  %4041 = fadd fast float %4040, -1.000000e+00
  %4042 = fmul fast float %4036, 2.000000e+00
  %4043 = fadd fast float %4042, -1.000000e+00
  %4044 = fadd fast float %4041, %4043
  %4045 = fmul fast float %4044, 5.000000e-01
  %4046 = fsub fast float %4041, %4043
  %4047 = fmul fast float %4046, 5.000000e-01
  %4048 = call float @dx.op.unary.f32(i32 6, float %4045)  ; FAbs(value)
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = call float @dx.op.unary.f32(i32 6, float %4047)  ; FAbs(value)
  %4051 = fsub fast float %4049, %4050
  %4052 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4047, float %4051, float %4045, float %4047, float %4051)  ; Dot3(ax,ay,az,bx,by,bz)
  %4053 = call float @dx.op.unary.f32(i32 25, float %4052)  ; Rsqrt(value)
  %4054 = fmul fast float %4045, %4053
  %4055 = fmul fast float %4047, %4053
  %4056 = fmul fast float %4053, %4051
  %4057 = fmul fast float %4056, %3787
  %4058 = fmul fast float %4056, %3788
  %4059 = fmul fast float %4056, %3789
  %4060 = fmul fast float %4054, %3810
  %4061 = fmul fast float %4054, %3811
  %4062 = fmul fast float %4054, %3812
  %4063 = fadd fast float %4060, %4057
  %4064 = fadd fast float %4061, %4058
  %4065 = fadd fast float %4062, %4059
  %4066 = fmul fast float %4055, %3816
  %4067 = fmul fast float %4055, %3817
  %4068 = fmul fast float %4055, %3818
  %4069 = fadd fast float %4063, %4066
  %4070 = fadd fast float %4064, %4067
  %4071 = fadd fast float %4065, %4068
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4070, float %4071, float %4069, float %4070, float %4071)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call float @dx.op.unary.f32(i32 25, float %4072)  ; Rsqrt(value)
  %4074 = fmul fast float %4069, %4073
  %4075 = fmul fast float %4070, %4073
  %4076 = fmul fast float %4071, %4073
  %4077 = icmp ne i32 %3993, 0
  %4078 = select i1 %4077, float 1.000000e+00, float 0.000000e+00
  %4079 = fmul fast float %3983, %4078
  %4080 = and i32 %3837, 1
  %4081 = icmp eq i32 %4080, 0
  br i1 %4081, label %4082, label %4086

; <label>:4082                                    ; preds = %3991
  %4083 = fsub fast float %4074, %3770
  %4084 = fsub fast float %4075, %3771
  %4085 = fsub fast float %4076, %3772
  br label %4086

; <label>:4086                                    ; preds = %4082, %3991
  %4087 = phi float [ %4083, %4082 ], [ %4074, %3991 ]
  %4088 = phi float [ %4084, %4082 ], [ %4075, %3991 ]
  %4089 = phi float [ %4085, %4082 ], [ %4076, %3991 ]
  %4090 = fmul float %4089, %4079
  %4091 = fmul float %4088, %4079
  %4092 = fmul float %4087, %4079
  %4093 = fadd fast float %4092, %3770
  %4094 = fadd fast float %4091, %3771
  %4095 = fadd fast float %4090, %3772
  %4096 = icmp ne i32 %3992, 0
  %4097 = select i1 %4096, float 1.000000e+00, float 0.000000e+00
  %4098 = fmul fast float %3983, %4097
  %4099 = fsub fast float %4037, %3777
  %4100 = fsub fast float %4038, %3778
  %4101 = fsub fast float %4039, %3779
  %4102 = fmul fast float %4099, %4098
  %4103 = fmul fast float %4100, %4098
  %4104 = fmul fast float %4101, %4098
  %4105 = fadd fast float %4102, %3777
  %4106 = fadd fast float %4103, %3778
  %4107 = fadd fast float %4104, %3779
  %4108 = fsub fast float %4010, %3776
  %4109 = fmul fast float %4108, %4098
  %4110 = fadd fast float %4109, %3776
  %4111 = fmul fast float %4098, %3766
  %4112 = fsub fast float %3766, %4111
  %4113 = fmul fast float %4098, %3765
  %4114 = fsub fast float %3765, %4113
  %4115 = fadd fast float %3983, %3775
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = fsub fast float %4030, %3774
  %4118 = fmul fast float %4117, %4079
  %4119 = fadd fast float %4118, %3774
  %4120 = fsub fast float %4016, %3773
  %4121 = fmul fast float %4120, %4079
  %4122 = fadd fast float %4121, %3773
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4038, float %4039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4127 = fmul fast float %4126, %4123
  %4128 = fadd fast float %4127, %4125
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = bitcast float %3825 to i32
  %4131 = and i32 %4130, 65535
  %4132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4131)  ; LegacyF16ToF32(value)
  %4133 = lshr i32 %4130, 16
  %4134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4133)  ; LegacyF16ToF32(value)
  %4135 = fcmp fast oge float %4132, 0.000000e+00
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = select i1 %4135, float %4132, float %4137
  %4139 = fadd fast float %4138, %4134
  %4140 = fsub fast float %4129, %3764
  %4141 = fmul fast float %4140, %3983
  %4142 = fadd fast float %4141, %3764
  %4143 = fmul fast float %4139, %3983
  %4144 = call float @dx.op.binary.f32(i32 35, float %3763, float %4143)  ; FMax(a,b)
  %4145 = and i32 %3837, 16
  %4146 = icmp eq i32 %4145, 0
  br i1 %4146, label %4169, label %4147

; <label>:4147                                    ; preds = %4086
  %4148 = bitcast float %3831 to i32
  %4149 = add i32 %3828, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %3996, float %3924, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3929, float %3931, float undef, float %3933, float %3935, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = and i32 %4148, 65535
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = fmul fast float %4152, %3822
  %4158 = fmul fast float %4153, %3823
  %4159 = fmul fast float %4154, %3824
  %4160 = and i32 %3837, 16384
  %4161 = icmp ne i32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = select i1 %4161, float %4163, float 1.000000e+00
  %4165 = fmul fast float %4164, %4156
  %4166 = fmul fast float %4157, %4165
  %4167 = fmul fast float %4158, %4165
  %4168 = fmul fast float %4159, %4165
  br label %4169

; <label>:4169                                    ; preds = %4147, %4086
  %4170 = phi float [ %4166, %4147 ], [ 0.000000e+00, %4086 ]
  %4171 = phi float [ %4167, %4147 ], [ 0.000000e+00, %4086 ]
  %4172 = phi float [ %4168, %4147 ], [ 0.000000e+00, %4086 ]
  %4173 = fsub fast float %4170, %3767
  %4174 = fsub fast float %4171, %3768
  %4175 = fsub fast float %4172, %3769
  %4176 = fmul fast float %4173, %3983
  %4177 = fmul fast float %4174, %3983
  %4178 = fmul fast float %4175, %3983
  %4179 = fadd fast float %4176, %3767
  %4180 = fadd fast float %4177, %3768
  %4181 = fadd fast float %4178, %3769
  br label %3886

; <label>:4182                                    ; preds = %3886
  br label %4183

; <label>:4183                                    ; preds = %4182, %3706
  %4184 = phi float [ 0.000000e+00, %3706 ], [ %3887, %4182 ]
  %4185 = phi float [ %3675, %3706 ], [ %3888, %4182 ]
  %4186 = phi float [ %3673, %3706 ], [ %3889, %4182 ]
  %4187 = phi float [ 0.000000e+00, %3706 ], [ %3890, %4182 ]
  %4188 = phi float [ 0.000000e+00, %3706 ], [ %3891, %4182 ]
  %4189 = phi float [ %3667, %3706 ], [ %3892, %4182 ]
  %4190 = phi float [ %3668, %3706 ], [ %3893, %4182 ]
  %4191 = phi float [ %3669, %3706 ], [ %3894, %4182 ]
  %4192 = phi float [ %3701, %3706 ], [ %3895, %4182 ]
  %4193 = phi float [ %3702, %3706 ], [ %3896, %4182 ]
  %4194 = phi float [ %3703, %3706 ], [ %3897, %4182 ]
  %4195 = phi float [ %3672, %3706 ], [ %3898, %4182 ]
  %4196 = phi float [ %3671, %3706 ], [ %3899, %4182 ]
  %4197 = phi float [ 0.000000e+00, %3706 ], [ %3900, %4182 ]
  %4198 = phi float [ %3670, %3706 ], [ %3901, %4182 ]
  %4199 = phi float [ %3664, %3706 ], [ %3902, %4182 ]
  %4200 = phi float [ %3665, %3706 ], [ %3903, %4182 ]
  %4201 = phi float [ %3666, %3706 ], [ %3904, %4182 ]
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4193, float %4194, float %4192, float %4193, float %4194)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = call float @dx.op.unary.f32(i32 25, float %4202)  ; Rsqrt(value)
  %4204 = fmul fast float %4203, %4192
  %4205 = fmul fast float %4203, %4193
  %4206 = fmul fast float %4203, %4194
  %4207 = fadd fast float %4197, %1108
  %4208 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4209 = call float @dx.op.dot3.f32(i32 55, float %4204, float %4205, float %4206, float %4204, float %4205, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = call float @dx.op.unary.f32(i32 25, float %4209)  ; Rsqrt(value)
  %4211 = fmul fast float %4210, %4204
  %4212 = fmul fast float %4210, %4205
  %4213 = fmul fast float %4210, %4206
  br label %4214

; <label>:4214                                    ; preds = %4183, %3661
  %4215 = phi float [ %4211, %4183 ], [ %3701, %3661 ]
  %4216 = phi float [ %4212, %4183 ], [ %3702, %3661 ]
  %4217 = phi float [ %4213, %4183 ], [ %3703, %3661 ]
  %4218 = phi float [ %4199, %4183 ], [ %3664, %3661 ]
  %4219 = phi float [ %4200, %4183 ], [ %3665, %3661 ]
  %4220 = phi float [ %4201, %4183 ], [ %3666, %3661 ]
  %4221 = phi float [ %4189, %4183 ], [ %3667, %3661 ]
  %4222 = phi float [ %4190, %4183 ], [ %3668, %3661 ]
  %4223 = phi float [ %4191, %4183 ], [ %3669, %3661 ]
  %4224 = phi float [ %4198, %4183 ], [ %3670, %3661 ]
  %4225 = phi float [ %4208, %4183 ], [ %1108, %3661 ]
  %4226 = phi float [ %4196, %4183 ], [ %3671, %3661 ]
  %4227 = phi float [ %4195, %4183 ], [ %3672, %3661 ]
  %4228 = phi float [ %4188, %4183 ], [ 0.000000e+00, %3661 ]
  %4229 = phi float [ %4187, %4183 ], [ 0.000000e+00, %3661 ]
  %4230 = phi float [ %4184, %4183 ], [ 0.000000e+00, %3661 ]
  %4231 = phi float [ %4185, %4183 ], [ %3675, %3661 ]
  %4232 = phi float [ %4186, %4183 ], [ %3673, %3661 ]
  %4233 = fadd fast float %4224, 0xBFB99999A0000000
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fmul fast float %4234, 0x3FF1C71C80000000
  %4236 = call float @dx.op.binary.f32(i32 36, float %4224, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4237 = fsub fast float 1.000000e+00, %4235
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = fmul fast float %4238, %4218
  %4240 = fmul fast float %4238, %4219
  %4241 = fmul fast float %4238, %4220
  %4242 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = fmul fast float %4235, %4218
  %4246 = fmul fast float %4235, %4219
  %4247 = fmul fast float %4235, %4220
  %4248 = fadd fast float %4245, %4236
  %4249 = fadd fast float %4246, %4236
  %4250 = fadd fast float %4247, %4236
  %4251 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.i32 %4255, 3
  %4257 = and i32 %4256, 8
  %4258 = icmp ne i32 %4257, 0
  %4259 = call float @dx.op.binary.f32(i32 35, float %4242, float %4218)  ; FMax(a,b)
  %4260 = call float @dx.op.binary.f32(i32 35, float %4243, float %4218)  ; FMax(a,b)
  %4261 = call float @dx.op.binary.f32(i32 35, float %4244, float %4218)  ; FMax(a,b)
  %4262 = call float @dx.op.dot3.f32(i32 55, float %4242, float %4243, float %4244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4263 = select i1 %209, float %4218, float %4242
  %4264 = select i1 %209, float %4262, float %4243
  %4265 = select i1 %209, float 1.000000e+00, float %4244
  %4266 = select i1 %4258, float %4259, float %4263
  %4267 = select i1 %4258, float %4260, float %4264
  %4268 = select i1 %4258, float %4261, float %4265
  %4269 = and i32 %185, 3
  %4270 = select i1 %179, i32 %4269, i32 0
  %4271 = icmp eq i32 %4270, 1
  br i1 %4271, label %4272, label %4348

; <label>:4272                                    ; preds = %4214
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4276 = fadd fast float %4274, %148
  %4277 = fadd fast float %4275, %149
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = fsub fast float %4276, %4279
  %4282 = fsub fast float %4277, %4280
  %4283 = fmul fast float %4281, %4281
  %4284 = fmul fast float %4282, %4282
  %4285 = fadd fast float %4283, %4284
  %4286 = call float @dx.op.unary.f32(i32 24, float %4285)  ; Sqrt(value)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4288 = fcmp fast olt float %4286, %4287
  br i1 %4288, label %4289, label %4342

; <label>:4289                                    ; preds = %4272
  %4290 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4291 = fadd fast float %4290, %150
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 0
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4292, 1
  %4299 = extractvalue %dx.types.CBufRet.f32 %4294, 1
  %4300 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4302 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4303 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4304 = fadd fast float %4301, %4276
  %4305 = fadd fast float %4302, %4277
  %4306 = fadd fast float %4291, %4303
  %4307 = fmul fast float %4304, %4293
  %4308 = call float @dx.op.tertiary.f32(i32 46, float %4305, float %4295, float %4307)  ; FMad(a,b,c)
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4306, float %4297, float %4308)  ; FMad(a,b,c)
  %4310 = fmul fast float %4304, %4298
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4305, float %4299, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4306, float %4300, float %4311)  ; FMad(a,b,c)
  %4313 = fsub fast float %4309, %4301
  %4314 = fsub fast float %4312, %4302
  %4315 = fsub fast float %4313, %4279
  %4316 = fadd fast float %4315, %4287
  %4317 = fsub fast float %4314, %4280
  %4318 = fadd fast float %4317, %4287
  %4319 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4320 = fmul fast float %4316, %4319
  %4321 = fmul fast float %4318, %4319
  %4322 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4324 = fsub fast float 1.000000e+00, %4322
  %4325 = fsub fast float 1.000000e+00, %4323
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %4324, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = fcmp fast ugt float %4327, 0.000000e+00
  br i1 %4328, label %4329, label %4342

; <label>:4329                                    ; preds = %4289
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4332 = fmul fast float %4331, %4327
  %4333 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4334 = fadd fast float %4333, %4332
  %4335 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4336 = fadd fast float %4334, %4303
  %4337 = fmul fast float %4309, %4297
  %4338 = call float @dx.op.tertiary.f32(i32 46, float %4312, float %4300, float %4337)  ; FMad(a,b,c)
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4335, float %4338)  ; FMad(a,b,c)
  %4340 = fsub fast float %4339, %4303
  %4341 = fsub fast float %4340, %4290
  br label %4342

; <label>:4342                                    ; preds = %4329, %4289, %4272
  %4343 = phi i1 [ true, %4329 ], [ false, %4289 ], [ false, %4272 ]
  %4344 = phi float [ %4341, %4329 ], [ -1.310720e+05, %4289 ], [ -1.310720e+05, %4272 ]
  %4345 = fsub fast float %4344, %150
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = select i1 %4343, float %4346, float 1.000000e+00
  br label %4348

; <label>:4348                                    ; preds = %4342, %4214
  %4349 = phi float [ %4347, %4342 ], [ 0.000000e+00, %4214 ]
  %4350 = icmp eq i32 %4270, 3
  %4351 = select i1 %4350, float 1.000000e+00, float %4349
  %4352 = call float @dx.op.binary.f32(i32 35, float %4230, float %4351)  ; FMax(a,b)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fcmp fast une float %4353, 0.000000e+00
  %4355 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = call float @dx.op.unary.f32(i32 25, float %4355)  ; Rsqrt(value)
  br i1 %4354, label %4364, label %4357

; <label>:4357                                    ; preds = %4348
  %4358 = fmul fast float %4356, %148
  %4359 = fmul fast float %4356, %149
  %4360 = fmul fast float %4356, %150
  %4361 = fsub fast float -0.000000e+00, %4358
  %4362 = fsub fast float -0.000000e+00, %4359
  %4363 = fsub fast float -0.000000e+00, %4360
  br label %4532

; <label>:4364                                    ; preds = %4348
  %4365 = fmul fast float %148, %4356
  %4366 = fsub fast float -0.000000e+00, %4365
  %4367 = fmul fast float %149, %4356
  %4368 = fsub fast float -0.000000e+00, %4367
  %4369 = fmul fast float %150, %4356
  %4370 = fsub fast float -0.000000e+00, %4369
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4366, float %4368, float %4370, float %98, float %100, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = fmul fast float %4353, 2.500000e+00
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fmul fast float %4353, 0x4013FFFFE0000000
  %4375 = fadd fast float %4374, 0xBFFFFFFFE0000000
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4353, 0x4004000020000000
  %4378 = fadd fast float %4377, 0xBFF8000040000000
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4381 = fmul fast float %4233, 1.000000e+01
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fmul fast float %4382, 2.000000e+00
  %4384 = fsub fast float 3.000000e+00, %4383
  %4385 = fmul fast float %4382, %4382
  %4386 = fmul fast float %4385, %4384
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = fsub fast float 0x3FE3333340000000, %4254
  %4389 = fmul fast float %4388, 0x400AAAAAA0000000
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %4387, %4390
  %4392 = fmul fast float %4266, 0x3FEA2B8620000000
  %4393 = fmul fast float %4267, 0x3FEA2B8620000000
  %4394 = fmul fast float %4268, 0x3FEA2B8620000000
  %4395 = fadd fast float %4392, 0x3FC81DFBA0000000
  %4396 = fmul fast float %4395, %4266
  %4397 = fadd fast float %4396, 0x3F910E6020000000
  %4398 = fadd fast float %4393, 0x3FC81DFBA0000000
  %4399 = fmul fast float %4398, %4267
  %4400 = fadd fast float %4399, 0x3F910E6020000000
  %4401 = fadd fast float %4394, 0x3FC81DFBA0000000
  %4402 = fmul fast float %4401, %4268
  %4403 = fadd fast float %4402, 0x3F910E6020000000
  %4404 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4407 = fsub fast float %4404, %4266
  %4408 = fsub fast float %4405, %4267
  %4409 = fsub fast float %4406, %4268
  %4410 = fmul fast float %4407, %4380
  %4411 = fmul fast float %4410, %4391
  %4412 = fmul fast float %4408, %4380
  %4413 = fmul fast float %4412, %4391
  %4414 = fmul fast float %4409, %4380
  %4415 = fmul fast float %4414, %4391
  %4416 = fadd fast float %4411, %4266
  %4417 = fadd fast float %4413, %4267
  %4418 = fadd fast float %4415, %4268
  %4419 = fmul fast float %4227, %4227
  %4420 = fmul fast float %4419, %4419
  %4421 = fadd fast float %4376, 1.000000e+00
  %4422 = fsub fast float %4421, %4391
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = call float @dx.op.dot3.f32(i32 55, float %98, float %100, float %102, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fsub fast float 1.000000e+00, %4420
  %4427 = call float @dx.op.binary.f32(i32 36, float %4423, float %4426)  ; FMin(a,b)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4429 = call float @dx.op.binary.f32(i32 35, float %4427, float %4428)  ; FMax(a,b)
  %4430 = fadd fast float %4425, 0xBFE4CCCCC0000000
  %4431 = fmul fast float %4430, 0x4006DB6DA0000000
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fmul fast float %4432, 2.000000e+00
  %4434 = fsub fast float 3.000000e+00, %4433
  %4435 = bitcast float %4251 to i32
  %4436 = ashr i32 %4435, 1
  %4437 = add nsw i32 %4436, 532487669
  %4438 = bitcast i32 %4437 to float
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = bitcast float %4439 to i32
  %4441 = sub nsw i32 2129859010, %4440
  %4442 = bitcast i32 %4441 to float
  %4443 = fmul fast float %4442, 2.000000e+00
  %4444 = bitcast float %4252 to i32
  %4445 = ashr i32 %4444, 1
  %4446 = add nsw i32 %4445, 532487669
  %4447 = bitcast i32 %4446 to float
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = bitcast float %4448 to i32
  %4450 = sub nsw i32 2129859010, %4449
  %4451 = bitcast i32 %4450 to float
  %4452 = fmul fast float %4451, 2.000000e+00
  %4453 = bitcast float %4253 to i32
  %4454 = ashr i32 %4453, 1
  %4455 = add nsw i32 %4454, 532487669
  %4456 = bitcast i32 %4455 to float
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = bitcast float %4457 to i32
  %4459 = sub nsw i32 2129859010, %4458
  %4460 = bitcast i32 %4459 to float
  %4461 = fmul fast float %4460, 2.000000e+00
  %4462 = fsub fast float 0x4002A9FBE0000000, %4443
  %4463 = fadd fast float %4443, 0x3FD54FDF00000000
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = bitcast i32 %4465 to float
  %4467 = fmul fast float %4466, %4462
  %4468 = fmul fast float %4467, %4467
  %4469 = fsub fast float 0x4002A9FBE0000000, %4452
  %4470 = fadd fast float %4452, 0x3FD54FDF00000000
  %4471 = bitcast float %4470 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, %4469
  %4475 = fmul fast float %4474, %4474
  %4476 = fsub fast float 0x4002A9FBE0000000, %4461
  %4477 = fadd fast float %4461, 0x3FD54FDF00000000
  %4478 = bitcast float %4477 to i32
  %4479 = sub nsw i32 2129859010, %4478
  %4480 = bitcast i32 %4479 to float
  %4481 = fmul fast float %4480, %4476
  %4482 = fmul fast float %4481, %4481
  %4483 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4468)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4475)  ; FMax(a,b)
  %4485 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4482)  ; FMax(a,b)
  %4486 = fsub fast float 1.000000e+00, %4371
  %4487 = fadd fast float %4486, %4387
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fsub fast float 1.000000e+00, %4351
  %4490 = fmul fast float %4429, %4489
  %4491 = fmul fast float %4432, %4432
  %4492 = fmul fast float %4491, %4490
  %4493 = fmul fast float %4492, %4434
  %4494 = fmul fast float %4489, 0xBFE99999A0000000
  %4495 = fmul fast float %4494, %4380
  %4496 = fmul fast float %4495, %4391
  %4497 = fadd fast float %4496, 1.000000e+00
  %4498 = fadd fast float %4254, -1.000000e+00
  %4499 = fmul fast float %4497, %4498
  %4500 = fadd fast float %4499, 1.000000e+00
  %4501 = fsub fast float %4483, %4251
  %4502 = fsub fast float %4484, %4252
  %4503 = fsub fast float %4485, %4253
  %4504 = fmul fast float %4493, %4501
  %4505 = fmul fast float %4493, %4502
  %4506 = fmul fast float %4493, %4503
  %4507 = fadd fast float %4504, %4251
  %4508 = fadd fast float %4505, %4252
  %4509 = fadd fast float %4506, %4253
  %4510 = fsub fast float %98, %4215
  %4511 = fsub fast float %100, %4216
  %4512 = fsub fast float %102, %4217
  %4513 = fmul fast float %4493, %4510
  %4514 = fmul fast float %4493, %4511
  %4515 = fmul fast float %4493, %4512
  %4516 = fadd fast float %4513, %4215
  %4517 = fadd fast float %4514, %4216
  %4518 = fadd fast float %4515, %4217
  %4519 = fmul fast float %4493, %4488
  %4520 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4521 = fsub fast float 1.000000e+00, %4520
  %4522 = fmul fast float %4519, %4521
  %4523 = fadd fast float %4522, %4520
  %4524 = fsub fast float 1.000000e+00, %4227
  %4525 = fmul fast float %4493, %4524
  %4526 = fadd fast float %4525, %4227
  %4527 = call float @dx.op.dot3.f32(i32 55, float %4516, float %4517, float %4518, float %4516, float %4517, float %4518)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = call float @dx.op.unary.f32(i32 25, float %4527)  ; Rsqrt(value)
  %4529 = fmul fast float %4516, %4528
  %4530 = fmul fast float %4517, %4528
  %4531 = fmul fast float %4518, %4528
  br label %4532

; <label>:4532                                    ; preds = %4364, %4357
  %4533 = phi float [ %4363, %4357 ], [ %4370, %4364 ]
  %4534 = phi float [ %4362, %4357 ], [ %4368, %4364 ]
  %4535 = phi float [ %4361, %4357 ], [ %4366, %4364 ]
  %4536 = phi float [ %4360, %4357 ], [ %4369, %4364 ]
  %4537 = phi float [ %4359, %4357 ], [ %4367, %4364 ]
  %4538 = phi float [ %4358, %4357 ], [ %4365, %4364 ]
  %4539 = phi float [ %4251, %4357 ], [ %4507, %4364 ]
  %4540 = phi float [ %4252, %4357 ], [ %4508, %4364 ]
  %4541 = phi float [ %4253, %4357 ], [ %4509, %4364 ]
  %4542 = phi float [ %4266, %4357 ], [ %4416, %4364 ]
  %4543 = phi float [ %4267, %4357 ], [ %4417, %4364 ]
  %4544 = phi float [ %4268, %4357 ], [ %4418, %4364 ]
  %4545 = phi float [ %4215, %4357 ], [ %4529, %4364 ]
  %4546 = phi float [ %4216, %4357 ], [ %4530, %4364 ]
  %4547 = phi float [ %4217, %4357 ], [ %4531, %4364 ]
  %4548 = phi float [ %4254, %4357 ], [ %4523, %4364 ]
  %4549 = phi float [ %4227, %4357 ], [ %4526, %4364 ]
  %4550 = select i1 %209, float 0.000000e+00, float %4541
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %4535, float %4534, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4537, float %4536, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = fmul fast float %4553, 2.000000e+00
  %4555 = fmul fast float %4554, %4545
  %4556 = fmul fast float %4554, %4546
  %4557 = fmul fast float %4554, %4547
  %4558 = fsub fast float %4538, %4555
  %4559 = fsub fast float %4537, %4556
  %4560 = fsub fast float %4536, %4557
  %4561 = call float @dx.op.binary.f32(i32 36, float %4549, float 1.000000e+00)  ; FMin(a,b)
  %4562 = fsub fast float 1.000000e+00, %4549
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %4567 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = fcmp fast oeq float %4567, 0.000000e+00
  %4569 = fcmp fast oeq float %4566, 0.000000e+00
  %4570 = or i1 %4569, %4568
  br i1 %4570, label %4600, label %4571

; <label>:4571                                    ; preds = %4532
  %4572 = fsub fast float -0.000000e+00, %63
  %4573 = fsub fast float -0.000000e+00, %61
  %4574 = call float @dx.op.unary.f32(i32 24, float %4567)  ; Sqrt(value)
  %4575 = fdiv fast float %4574, %4566
  %4576 = fcmp fast ogt float %4575, 0x3FFB6F8900000000
  %4577 = select i1 %4576, float 0x3FFB6F8900000000, float %4575
  %4578 = fmul fast float %4577, 0x3FE8A23460000000
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = call float @dx.op.binary.f32(i32 35, float %4577, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4581 = fmul fast float %4579, %4566
  %4582 = fmul fast float %4580, 0x3FF279A740000000
  %4583 = fadd fast float %4582, -1.000000e+00
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4572, float %4573, float %62, float %4572, float %4573, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = call float @dx.op.unary.f32(i32 25, float %4584)  ; Rsqrt(value)
  %4586 = fmul fast float %4585, %4572
  %4587 = fmul fast float %4585, %4573
  %4588 = fmul fast float %4585, %62
  %4589 = fmul fast float %4583, %4583
  %4590 = fsub fast float 1.000000e+00, %4589
  %4591 = fmul fast float %4580, 0x40005F8BE0000000
  %4592 = fsub fast float 0x400C5BF8A0000000, %4591
  %4593 = fdiv fast float %4581, %4592
  %4594 = fmul fast float %4593, 0x3FEE31C3C0000000
  %4595 = fmul fast float %4594, %4590
  %4596 = fmul fast float %4580, 0x3FDACB7480000000
  %4597 = fadd fast float %4596, 0xBFD7347680000000
  %4598 = fmul fast float %4597, %4593
  %4599 = fmul fast float %4598, %4590
  br label %4600

; <label>:4600                                    ; preds = %4571, %4532
  %4601 = phi float [ %4586, %4571 ], [ 0.000000e+00, %4532 ]
  %4602 = phi float [ %4587, %4571 ], [ 0.000000e+00, %4532 ]
  %4603 = phi float [ %4588, %4571 ], [ 0.000000e+00, %4532 ]
  %4604 = phi float [ %4595, %4571 ], [ 0.000000e+00, %4532 ]
  %4605 = phi float [ %4599, %4571 ], [ 0.000000e+00, %4532 ]
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = fmul fast float %4606, %4606
  %4608 = fmul fast float %4607, 0x3FEE471020000000
  %4609 = fadd fast float %4608, 0xBFD42F6020000000
  %4610 = fmul fast float %4566, 0x3FD20DD760000000
  %4611 = fmul fast float %4609, %4605
  %4612 = fmul fast float %4604, 0x3FDF454380000000
  %4613 = fmul fast float %4612, %4606
  %4614 = fadd fast float %4613, %4610
  %4615 = fadd fast float %4614, %4611
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = fmul fast float %4616, 0x3FDF454380000000
  %4618 = fmul fast float %4616, %4616
  %4619 = fmul fast float %4618, 0x3FEE471020000000
  %4620 = fadd fast float %4619, 0xBFD42F6020000000
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4604, float %4605, float 0x3FD20DD760000000, float %4617, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4623 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fcmp fast oeq float %4623, 0.000000e+00
  %4625 = fcmp fast oeq float %4622, 0.000000e+00
  %4626 = or i1 %4625, %4624
  br i1 %4626, label %4656, label %4627

; <label>:4627                                    ; preds = %4600
  %4628 = fsub fast float -0.000000e+00, %59
  %4629 = fsub fast float -0.000000e+00, %57
  %4630 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %4631 = fdiv fast float %4630, %4622
  %4632 = fcmp fast ogt float %4631, 0x3FFB6F8900000000
  %4633 = select i1 %4632, float 0x3FFB6F8900000000, float %4631
  %4634 = fmul fast float %4633, 0x3FE8A23460000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4633, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4637 = fmul fast float %4635, %4622
  %4638 = fmul fast float %4636, 0x3FF279A740000000
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %58, float %4628, float %4629, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4641, %4628
  %4643 = fmul fast float %4641, %4629
  %4644 = fmul fast float %4641, %58
  %4645 = fmul fast float %4639, %4639
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4636, 0x40005F8BE0000000
  %4648 = fsub fast float 0x400C5BF8A0000000, %4647
  %4649 = fdiv fast float %4637, %4648
  %4650 = fmul fast float %4649, 0x3FEE31C3C0000000
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4636, 0x3FDACB7480000000
  %4653 = fadd fast float %4652, 0xBFD7347680000000
  %4654 = fmul fast float %4653, %4649
  %4655 = fmul fast float %4654, %4646
  br label %4656

; <label>:4656                                    ; preds = %4627, %4600
  %4657 = phi float [ %4642, %4627 ], [ 0.000000e+00, %4600 ]
  %4658 = phi float [ %4643, %4627 ], [ 0.000000e+00, %4600 ]
  %4659 = phi float [ %4644, %4627 ], [ 0.000000e+00, %4600 ]
  %4660 = phi float [ %4651, %4627 ], [ 0.000000e+00, %4600 ]
  %4661 = phi float [ %4655, %4627 ], [ 0.000000e+00, %4600 ]
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = fmul fast float %4662, %4662
  %4664 = fmul fast float %4663, 0x3FEE471020000000
  %4665 = fadd fast float %4664, 0xBFD42F6020000000
  %4666 = fmul fast float %4622, 0x3FD20DD760000000
  %4667 = fmul fast float %4665, %4661
  %4668 = fmul fast float %4660, 0x3FDF454380000000
  %4669 = fmul fast float %4668, %4662
  %4670 = fadd fast float %4669, %4666
  %4671 = fadd fast float %4670, %4667
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = fmul fast float %4672, 0x3FDF454380000000
  %4674 = fmul fast float %4672, %4672
  %4675 = fmul fast float %4674, 0x3FEE471020000000
  %4676 = fadd fast float %4675, 0xBFD42F6020000000
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4660, float %4661, float 0x3FD20DD760000000, float %4673, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4679 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = fcmp fast oeq float %4679, 0.000000e+00
  %4681 = fcmp fast oeq float %4678, 0.000000e+00
  %4682 = or i1 %4681, %4680
  br i1 %4682, label %4712, label %4683

; <label>:4683                                    ; preds = %4656
  %4684 = fsub fast float -0.000000e+00, %55
  %4685 = fsub fast float -0.000000e+00, %53
  %4686 = call float @dx.op.unary.f32(i32 24, float %4679)  ; Sqrt(value)
  %4687 = fdiv fast float %4686, %4678
  %4688 = fcmp fast ogt float %4687, 0x3FFB6F8900000000
  %4689 = select i1 %4688, float 0x3FFB6F8900000000, float %4687
  %4690 = fmul fast float %4689, 0x3FE8A23460000000
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4693 = fmul fast float %4691, %4678
  %4694 = fmul fast float %4692, 0x3FF279A740000000
  %4695 = fadd fast float %4694, -1.000000e+00
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4685, float %54, float %4684, float %4685, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 25, float %4696)  ; Rsqrt(value)
  %4698 = fmul fast float %4697, %4684
  %4699 = fmul fast float %4697, %4685
  %4700 = fmul fast float %4697, %54
  %4701 = fmul fast float %4695, %4695
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = fmul fast float %4692, 0x40005F8BE0000000
  %4704 = fsub fast float 0x400C5BF8A0000000, %4703
  %4705 = fdiv fast float %4693, %4704
  %4706 = fmul fast float %4705, 0x3FEE31C3C0000000
  %4707 = fmul fast float %4706, %4702
  %4708 = fmul fast float %4692, 0x3FDACB7480000000
  %4709 = fadd fast float %4708, 0xBFD7347680000000
  %4710 = fmul fast float %4709, %4705
  %4711 = fmul fast float %4710, %4702
  br label %4712

; <label>:4712                                    ; preds = %4683, %4656
  %4713 = phi float [ %4698, %4683 ], [ 0.000000e+00, %4656 ]
  %4714 = phi float [ %4699, %4683 ], [ 0.000000e+00, %4656 ]
  %4715 = phi float [ %4700, %4683 ], [ 0.000000e+00, %4656 ]
  %4716 = phi float [ %4707, %4683 ], [ 0.000000e+00, %4656 ]
  %4717 = phi float [ %4711, %4683 ], [ 0.000000e+00, %4656 ]
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = fmul fast float %4718, %4718
  %4720 = fmul fast float %4719, 0x3FEE471020000000
  %4721 = fadd fast float %4720, 0xBFD42F6020000000
  %4722 = fmul fast float %4678, 0x3FD20DD760000000
  %4723 = fmul fast float %4721, %4717
  %4724 = fmul fast float %4716, 0x3FDF454380000000
  %4725 = fmul fast float %4724, %4718
  %4726 = fadd fast float %4725, %4722
  %4727 = fadd fast float %4726, %4723
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4728, 0x3FDF454380000000
  %4730 = fmul fast float %4728, %4728
  %4731 = fmul fast float %4730, 0x3FEE471020000000
  %4732 = fadd fast float %4731, 0xBFD42F6020000000
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4716, float %4717, float 0x3FD20DD760000000, float %4729, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4615, float 0.000000e+00)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 35, float %4671, float 0.000000e+00)  ; FMax(a,b)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float %4677, float 0.000000e+00)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4733, float 0.000000e+00)  ; FMax(a,b)
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = call float @dx.op.binary.f32(i32 36, float %4542, float %4741)  ; FMin(a,b)
  %4743 = fsub fast float 1.000000e+00, %4561
  %4744 = fmul fast float %4742, %4743
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = bitcast float %4745 to i32
  %4747 = sub nsw i32 2129859010, %4746
  %4748 = bitcast i32 %4747 to float
  %4749 = call float @dx.op.binary.f32(i32 36, float %4543, float %4741)  ; FMin(a,b)
  %4750 = fmul fast float %4749, %4743
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = bitcast float %4751 to i32
  %4753 = sub nsw i32 2129859010, %4752
  %4754 = bitcast i32 %4753 to float
  %4755 = call float @dx.op.binary.f32(i32 36, float %4544, float %4741)  ; FMin(a,b)
  %4756 = fmul fast float %4755, %4743
  %4757 = fsub fast float 1.000000e+00, %4756
  %4758 = bitcast float %4757 to i32
  %4759 = sub nsw i32 2129859010, %4758
  %4760 = bitcast i32 %4759 to float
  %4761 = fmul fast float %4734, %4561
  %4762 = fmul fast float %4761, %4748
  %4763 = fmul fast float %4735, %4561
  %4764 = fmul fast float %4763, %4754
  %4765 = fmul fast float %4736, %4561
  %4766 = fmul fast float %4765, %4760
  %4767 = call float @dx.op.binary.f32(i32 36, float %4539, float %4741)  ; FMin(a,b)
  %4768 = fmul fast float %4767, %4743
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = bitcast float %4769 to i32
  %4771 = sub nsw i32 2129859010, %4770
  %4772 = bitcast i32 %4771 to float
  %4773 = call float @dx.op.binary.f32(i32 36, float %4540, float %4741)  ; FMin(a,b)
  %4774 = fmul fast float %4773, %4743
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = call float @dx.op.binary.f32(i32 36, float %4550, float %4741)  ; FMin(a,b)
  %4780 = fmul fast float %4779, %4743
  %4781 = fsub fast float 1.000000e+00, %4780
  %4782 = bitcast float %4781 to i32
  %4783 = sub nsw i32 2129859010, %4782
  %4784 = bitcast i32 %4783 to float
  %4785 = fmul fast float %4737, %4561
  %4786 = fmul fast float %4785, %4772
  %4787 = fmul fast float %4738, %4561
  %4788 = fmul fast float %4787, %4778
  %4789 = fmul fast float %4739, %4561
  %4790 = fmul fast float %4789, %4784
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4764, float %4766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = select i1 %209, float 0.000000e+00, float %4762
  %4793 = select i1 %209, float %4791, float %4764
  %4794 = select i1 %209, float 0.000000e+00, float %4766
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4788, float %4790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = select i1 %209, float 0.000000e+00, float %4786
  %4797 = select i1 %209, float %4795, float %4788
  %4798 = select i1 %209, float 0.000000e+00, float %4790
  %4799 = fmul fast float %4552, 9.843750e-01
  %4800 = fmul fast float %4548, 9.843750e-01
  %4801 = fadd fast float %4799, 7.812500e-03
  %4802 = fadd fast float %4800, 7.812500e-03
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 3
  %4806 = fmul fast float %4804, %4539
  %4807 = fmul fast float %4804, %4540
  %4808 = fmul fast float %4804, %4550
  %4809 = fadd fast float %4806, %4805
  %4810 = fadd fast float %4807, %4805
  %4811 = fadd fast float %4808, %4805
  %4812 = fcmp fast ogt float %4228, 0.000000e+00
  br i1 %4812, label %4813, label %4839

; <label>:4813                                    ; preds = %4712
  %4814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4228, float %4552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = fadd fast float %4815, -5.000000e-01
  %4819 = fadd fast float %4816, -5.000000e-01
  %4820 = fadd fast float %4817, -5.000000e-01
  %4821 = fsub fast float 1.000000e+00, %4539
  %4822 = fsub fast float 1.000000e+00, %4540
  %4823 = fsub fast float 1.000000e+00, %4550
  %4824 = fmul fast float %4539, 4.000000e+00
  %4825 = fmul fast float %4824, %4821
  %4826 = fmul fast float %4825, %4818
  %4827 = fmul fast float %4540, 4.000000e+00
  %4828 = fmul fast float %4827, %4822
  %4829 = fmul fast float %4828, %4819
  %4830 = fmul fast float %4550, 4.000000e+00
  %4831 = fmul fast float %4830, %4823
  %4832 = fmul fast float %4831, %4820
  %4833 = fadd fast float %4826, %4809
  %4834 = fadd fast float %4829, %4810
  %4835 = fadd fast float %4832, %4811
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  br label %4839

; <label>:4839                                    ; preds = %4813, %4712
  %4840 = phi float [ %4836, %4813 ], [ %4809, %4712 ]
  %4841 = phi float [ %4837, %4813 ], [ %4810, %4712 ]
  %4842 = phi float [ %4838, %4813 ], [ %4811, %4712 ]
  %4843 = call float @dx.op.binary.f32(i32 35, float %4841, float %4842)  ; FMax(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float %4840, float %4843)  ; FMax(a,b)
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4845, %4792
  %4847 = fmul fast float %4845, %4793
  %4848 = fmul fast float %4845, %4794
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4543, float %4544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = fcmp fast ogt float %4849, 0x3E7FF19E20000000
  %4851 = fdiv fast float 1.000000e+00, %4849
  %4852 = select i1 %4850, float %4851, float 0.000000e+00
  %4853 = fmul fast float %4852, %4542
  %4854 = fmul fast float %4852, %4543
  %4855 = fmul fast float %4852, %4544
  %4856 = fadd fast float %4853, -1.000000e+00
  %4857 = fadd fast float %4854, -1.000000e+00
  %4858 = fadd fast float %4855, -1.000000e+00
  %4859 = fmul fast float %4856, 5.000000e-01
  %4860 = fmul fast float %4857, 5.000000e-01
  %4861 = fmul fast float %4858, 5.000000e-01
  %4862 = fadd fast float %4859, 1.000000e+00
  %4863 = fadd fast float %4860, 1.000000e+00
  %4864 = fadd fast float %4861, 1.000000e+00
  %4865 = fmul fast float %4840, %4796
  %4866 = fmul fast float %4841, %4797
  %4867 = fmul fast float %4842, %4798
  %4868 = fsub fast float 1.000000e+00, %4552
  %4869 = bitcast float %4868 to i32
  %4870 = sitofp i32 %4869 to float
  %4871 = fmul fast float %4870, 5.000000e+00
  %4872 = fadd fast float %4871, 0xC1EFBF8940000000
  %4873 = fptosi float %4872 to i32
  %4874 = bitcast i32 %4873 to float
  %4875 = fmul fast float %4874, %4229
  %4876 = fmul fast float %4792, %4875
  %4877 = fmul fast float %4876, %4845
  %4878 = fmul fast float %4877, %4862
  %4879 = fmul fast float %4793, %4875
  %4880 = fmul fast float %4879, %4845
  %4881 = fmul fast float %4880, %4863
  %4882 = fmul fast float %4794, %4875
  %4883 = fmul fast float %4882, %4845
  %4884 = fmul fast float %4883, %4864
  %4885 = fmul fast float %4846, %4225
  %4886 = fmul fast float %4847, %4225
  %4887 = fmul fast float %4848, %4225
  %4888 = fadd fast float %4865, %4221
  %4889 = fadd fast float %4888, %4878
  %4890 = fmul fast float %4889, %4225
  %4891 = fadd fast float %4866, %4222
  %4892 = fadd fast float %4891, %4881
  %4893 = fmul fast float %4892, %4225
  %4894 = fadd fast float %4867, %4223
  %4895 = fadd fast float %4894, %4884
  %4896 = fmul fast float %4895, %4225
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 3
  %4899 = fcmp fast oeq float %4898, 0.000000e+00
  br i1 %4899, label %5894, label %4900

; <label>:4900                                    ; preds = %4839
  %4901 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4902 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4903 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = select i1 %209, float %4909, float %4905
  %4913 = select i1 %209, float %4911, float %4906
  %4914 = select i1 %209, float %4910, float %4907
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4917 = fmul fast float %4916, %98
  %4918 = fmul fast float %4916, %100
  %4919 = fmul fast float %4916, %102
  %4920 = fadd fast float %4917, %148
  %4921 = fadd fast float %4918, %149
  %4922 = fadd fast float %4919, %150
  %4923 = fcmp fast olt float %4898, 0.000000e+00
  br i1 %4923, label %5548, label %4924

; <label>:4924                                    ; preds = %4900
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.CBufRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.CBufRet.f32 %4925, 2
  %4929 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4934 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4940 = fmul fast float %4926, %4920
  %4941 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4927, float %4940)  ; FMad(a,b,c)
  %4942 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4928, float %4941)  ; FMad(a,b,c)
  %4943 = fadd fast float %4942, %4929
  %4944 = fmul fast float %4931, %4920
  %4945 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4932, float %4944)  ; FMad(a,b,c)
  %4946 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4933, float %4945)  ; FMad(a,b,c)
  %4947 = fadd fast float %4946, %4934
  %4948 = fmul fast float %4936, %4920
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4937, float %4948)  ; FMad(a,b,c)
  %4950 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4938, float %4949)  ; FMad(a,b,c)
  %4951 = fadd fast float %4950, %4939
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.CBufRet.f32 %4952, 3
  %4956 = fmul fast float %4955, %4943
  %4957 = fmul fast float %4955, %4947
  %4958 = fadd fast float %4956, %4953
  %4959 = fadd fast float %4957, %4954
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.CBufRet.f32 %4960, 3
  %4964 = fmul fast float %4963, %4943
  %4965 = fmul fast float %4963, %4947
  %4966 = fadd fast float %4964, %4961
  %4967 = fadd fast float %4965, %4962
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4970 = fsub fast float %4969, %4951
  %4971 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4972 = fmul fast float %4970, %4971
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4978 = fadd fast float %4977, %4975
  %4979 = fcmp fast ogt float %4978, 0.000000e+00
  br i1 %4979, label %4980, label %5004

; <label>:4980                                    ; preds = %4924
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = fsub fast float %4966, %4982
  %4985 = fsub fast float %4967, %4983
  %4986 = fcmp fast olt float %4984, 0.000000e+00
  %4987 = fcmp fast olt float %4985, 0.000000e+00
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %4992 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4993 = select i1 %4986, float %4989, float %4991
  %4994 = select i1 %4987, float %4990, float %4992
  %4995 = fmul fast float %4993, %4984
  %4996 = fmul fast float %4994, %4985
  %4997 = call float @dx.op.unary.f32(i32 6, float %4995)  ; FAbs(value)
  %4998 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %5000 = call float @dx.op.binary.f32(i32 35, float %4997, float %4998)  ; FMax(a,b)
  %5001 = fsub fast float %4999, %5000
  %5002 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5003 = fmul fast float %5002, %4974
  br label %5004

; <label>:5004                                    ; preds = %4980, %4924
  %5005 = phi float [ %5003, %4980 ], [ 0.000000e+00, %4924 ]
  %5006 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %5007 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %5008 = fadd fast float %5007, %5006
  %5009 = fcmp fast ogt float %5008, 0.000000e+00
  %5010 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  br i1 %5009, label %5011, label %5034

; <label>:5011                                    ; preds = %5004
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = fsub fast float %4958, %5013
  %5016 = fsub fast float %4959, %5014
  %5017 = fcmp fast olt float %5015, 0.000000e+00
  %5018 = fcmp fast olt float %5016, 0.000000e+00
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5024 = select i1 %5017, float %5020, float %5022
  %5025 = select i1 %5018, float %5021, float %5023
  %5026 = fmul fast float %5024, %5015
  %5027 = fmul fast float %5025, %5016
  %5028 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5029 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5030 = call float @dx.op.binary.f32(i32 35, float %5028, float %5029)  ; FMax(a,b)
  %5031 = fsub fast float %5010, %5030
  %5032 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5033 = fmul fast float %5032, %4974
  br label %5034

; <label>:5034                                    ; preds = %5011, %5004
  %5035 = phi float [ %5033, %5011 ], [ 0.000000e+00, %5004 ]
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 1
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5039, 1
  %5042 = fsub fast float %4943, %5040
  %5043 = fsub fast float %4947, %5041
  %5044 = fcmp fast olt float %5042, 0.000000e+00
  %5045 = fcmp fast olt float %5043, 0.000000e+00
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5051 = select i1 %5044, float %5047, float %5049
  %5052 = select i1 %5045, float %5048, float %5050
  %5053 = fmul fast float %5051, %5042
  %5054 = fmul fast float %5052, %5043
  %5055 = call float @dx.op.unary.f32(i32 6, float %5053)  ; FAbs(value)
  %5056 = call float @dx.op.unary.f32(i32 6, float %5054)  ; FAbs(value)
  %5057 = call float @dx.op.binary.f32(i32 35, float %5055, float %5056)  ; FMax(a,b)
  %5058 = fsub fast float %5010, %5057
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = call float @dx.op.binary.f32(i32 36, float %5059, float %5038)  ; FMin(a,b)
  %5061 = fmul fast float %5060, %4974
  %5062 = fsub fast float %5035, %5061
  %5063 = fsub fast float %5005, %5035
  %5064 = fsub fast float %5063, %5061
  %5065 = call float @dx.op.binary.f32(i32 35, float %5035, float %5005)  ; FMax(a,b)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5061, float %5065)  ; FMax(a,b)
  %5067 = fcmp fast olt float %5066, 1.000000e+00
  br i1 %5067, label %5068, label %5466, !dx.controlflow.hints !80

; <label>:5068                                    ; preds = %5034
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = fcmp fast une float %5070, 0.000000e+00
  br i1 %5071, label %5072, label %5466, !dx.controlflow.hints !81

; <label>:5072                                    ; preds = %5068
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5077 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5082 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5087 = extractvalue %dx.types.CBufRet.f32 %5083, 3
  %5088 = fmul fast float %5074, %4920
  %5089 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5075, float %5088)  ; FMad(a,b,c)
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5076, float %5089)  ; FMad(a,b,c)
  %5091 = fadd fast float %5090, %5077
  %5092 = fmul fast float %5079, %4920
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5080, float %5092)  ; FMad(a,b,c)
  %5094 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5081, float %5093)  ; FMad(a,b,c)
  %5095 = fadd fast float %5094, %5082
  %5096 = fmul fast float %5084, %4920
  %5097 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5085, float %5096)  ; FMad(a,b,c)
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5086, float %5097)  ; FMad(a,b,c)
  %5099 = fadd fast float %5098, %5087
  %5100 = fcmp fast oge float %5091, 1.000000e+00
  %5101 = fcmp fast oge float %5095, 1.000000e+00
  %5102 = or i1 %5100, %5101
  %5103 = fcmp fast olt float %5091, 0.000000e+00
  %5104 = fcmp fast olt float %5095, 0.000000e+00
  %5105 = or i1 %5103, %5104
  %5106 = or i1 %5102, %5105
  br i1 %5106, label %5466, label %5107, !dx.controlflow.hints !82

; <label>:5107                                    ; preds = %5072
  %5108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5109 = extractvalue %dx.types.CBufRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.CBufRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.CBufRet.f32 %5108, 2
  %5112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.i32 %5112, 2
  %5114 = uitofp i32 %5113 to float
  %5115 = extractvalue %dx.types.CBufRet.i32 %5112, 3
  %5116 = uitofp i32 %5115 to float
  %5117 = extractvalue %dx.types.CBufRet.f32 %5108, 3
  %5118 = fmul fast float %5117, 2.000000e+00
  %5119 = fsub fast float %5091, %5109
  %5120 = fsub fast float %5095, %5110
  %5121 = fmul fast float %5118, %5119
  %5122 = fmul fast float %5118, %5120
  %5123 = fdiv fast float 1.000000e+00, %4903
  %5124 = fmul fast float %5122, %5123
  %5125 = call float @dx.op.unary.f32(i32 6, float %5124)  ; FAbs(value)
  %5126 = fmul fast float %5111, %4922
  %5127 = fmul fast float %5126, %5118
  %5128 = call float @dx.op.unary.f32(i32 6, float %5127)  ; FAbs(value)
  %5129 = call float @dx.op.unary.f32(i32 6, float %5121)  ; FAbs(value)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5128, float %5125)  ; FMax(a,b)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5129, float %5130)  ; FMax(a,b)
  %5132 = fmul fast float %5131, 2.000000e+00
  %5133 = call float @dx.op.unary.f32(i32 23, float %5132)  ; Log(value)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5133, float %5114)  ; FMax(a,b)
  %5135 = call float @dx.op.unary.f32(i32 22, float %5134)  ; Frc(value)
  %5136 = fadd fast float %5135, 0xBFEA666660000000
  %5137 = fmul fast float %5136, 8.000000e+00
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = call float @dx.op.unary.f32(i32 27, float %5134)  ; Round_ni(value)
  %5140 = fadd fast float %5139, %5138
  %5141 = call float @dx.op.binary.f32(i32 36, float %5140, float %5116)  ; FMin(a,b)
  %5142 = call float @dx.op.unary.f32(i32 27, float %5141)  ; Round_ni(value)
  %5143 = fsub fast float -0.000000e+00, %5142
  %5144 = call float @dx.op.unary.f32(i32 21, float %5143)  ; Exp(value)
  %5145 = fmul fast float %5144, %5118
  %5146 = fmul fast float %5145, %5091
  %5147 = fmul fast float %5145, %5095
  %5148 = fmul fast float %5146, 2.500000e-01
  %5149 = fmul fast float %5147, 2.500000e-01
  %5150 = fadd fast float %5148, 5.000000e-01
  %5151 = fadd fast float %5149, 5.000000e-01
  %5152 = fsub fast float %5116, %5114
  %5153 = fptoui float %5152 to i32
  %5154 = add i32 %5153, 320
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %5154)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = fcmp fast une float %5141, %5116
  %5159 = fsub fast float %5091, %5156
  %5160 = fsub fast float %5095, %5157
  %5161 = call float @dx.op.unary.f32(i32 6, float %5159)  ; FAbs(value)
  %5162 = call float @dx.op.unary.f32(i32 6, float %5160)  ; FAbs(value)
  %5163 = fmul fast float %5161, %5145
  %5164 = fmul fast float %5162, %5145
  %5165 = fcmp fast olt float %5163, 1.000000e+00
  %5166 = fcmp fast olt float %5164, 1.000000e+00
  %5167 = and i1 %5165, %5166
  %5168 = or i1 %5158, %5167
  br i1 %5168, label %5169, label %5466, !dx.controlflow.hints !83

; <label>:5169                                    ; preds = %5107
  %5170 = fmul fast float %5147, 5.000000e-01
  %5171 = fmul fast float %5146, 5.000000e-01
  %5172 = fadd fast float %5170, 5.000000e-01
  %5173 = fadd fast float %5171, 5.000000e-01
  %5174 = sitofp i32 %5113 to float
  %5175 = fsub fast float %5141, %5174
  %5176 = call float @dx.op.unary.f32(i32 27, float %5175)  ; Round_ni(value)
  %5177 = call float @dx.op.unary.f32(i32 22, float %5141)  ; Frc(value)
  %5178 = call float @dx.op.unary.f32(i32 22, float %5173)  ; Frc(value)
  %5179 = call float @dx.op.unary.f32(i32 22, float %5172)  ; Frc(value)
  %5180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5178, float %5179, float %5176, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5184 = extractvalue %dx.types.ResRet.f32 %5180, 3
  %5185 = fcmp fast ogt float %5177, 0.000000e+00
  br i1 %5185, label %5186, label %5207, !dx.controlflow.hints !84

; <label>:5186                                    ; preds = %5169
  %5187 = fadd fast float %5176, 1.000000e+00
  %5188 = call float @dx.op.unary.f32(i32 22, float %5150)  ; Frc(value)
  %5189 = call float @dx.op.unary.f32(i32 22, float %5151)  ; Frc(value)
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5188, float %5189, float %5187, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = extractvalue %dx.types.ResRet.f32 %5190, 3
  %5195 = fsub fast float %5191, %5181
  %5196 = fsub fast float %5192, %5182
  %5197 = fsub fast float %5193, %5183
  %5198 = fsub fast float %5194, %5184
  %5199 = fmul fast float %5195, %5177
  %5200 = fmul fast float %5196, %5177
  %5201 = fmul fast float %5197, %5177
  %5202 = fmul fast float %5198, %5177
  %5203 = fadd fast float %5199, %5181
  %5204 = fadd fast float %5200, %5182
  %5205 = fadd fast float %5201, %5183
  %5206 = fadd fast float %5202, %5184
  br label %5207

; <label>:5207                                    ; preds = %5186, %5169
  %5208 = phi float [ %5203, %5186 ], [ %5181, %5169 ]
  %5209 = phi float [ %5204, %5186 ], [ %5182, %5169 ]
  %5210 = phi float [ %5205, %5186 ], [ %5183, %5169 ]
  %5211 = phi float [ %5206, %5186 ], [ %5184, %5169 ]
  %5212 = fadd fast float %5208, -5.000000e-01
  %5213 = fadd fast float %5210, -5.000000e-01
  %5214 = fmul fast float %5212, 0xBFD5555560000000
  %5215 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5213, float %5214)  ; FMad(a,b,c)
  %5216 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5209, float 0.000000e+00)  ; FMad(a,b,c)
  %5217 = fadd fast float %5216, %5211
  %5218 = fmul fast float %5212, -7.500000e-01
  %5219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5213, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5209, float 0.000000e+00)  ; FMad(a,b,c)
  %5221 = fadd fast float %5220, %5211
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5229 = fsub fast float %5225, %5215
  %5230 = fsub fast float %5226, %5217
  %5231 = fsub fast float %5227, %5219
  %5232 = fsub fast float %5228, %5221
  %5233 = fmul fast float %5229, %5223
  %5234 = fmul fast float %5230, %5223
  %5235 = fmul fast float %5231, %5223
  %5236 = fmul fast float %5232, %5223
  %5237 = fadd fast float %5233, %5215
  %5238 = fadd fast float %5234, %5217
  %5239 = fadd fast float %5235, %5219
  %5240 = fadd fast float %5236, %5221
  %5241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.i32 %5241, 0
  %5243 = and i32 %5242, 536870911
  %5244 = uitofp i32 %5243 to float
  %5245 = fmul fast float %5244, %5091
  %5246 = fmul fast float %5244, %5095
  %5247 = fptoui float %5245 to i32
  %5248 = fptoui float %5246 to i32
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = and i32 %5250, 31
  %5252 = lshr i32 %5247, %5251
  %5253 = lshr i32 %5248, %5251
  %5254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.i32 %5254, 0
  %5256 = and i32 %5255, 31
  %5257 = shl i32 1, %5256
  %5258 = call i32 @dx.op.binary.i32(i32 40, i32 %5257, i32 4)  ; UMin(a,b)
  %5259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.i32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.i32 %5259, 1
  %5262 = icmp eq i32 %5258, 0
  br i1 %5262, label %5304, label %5263

; <label>:5263                                    ; preds = %5207
  br label %5264

; <label>:5264                                    ; preds = %5292, %5263
  %5265 = phi i32 [ %5295, %5292 ], [ 0, %5263 ]
  %5266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.i32 %5266, 0
  %5268 = lshr i32 %5267, 16
  %5269 = and i32 %5268, 31
  %5270 = shl i32 %5253, %5269
  %5271 = add i32 %5270, %5252
  %5272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.i32 %5272, 0
  %5274 = and i32 %5273, 31
  %5275 = shl i32 %5271, %5274
  %5276 = add i32 %5275, %5265
  %5277 = shl i32 %5276, 2
  %5278 = add i32 %5277, 32
  %5279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.i32 %5279, 0
  %5281 = icmp slt i32 %5280, 0
  %5282 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5265
  %5283 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5265
  %5284 = bitcast float* %5282 to i32*
  %5285 = bitcast float* %5283 to i32*
  br i1 %5281, label %5286, label %5292

; <label>:5286                                    ; preds = %5264
  %5287 = and i32 %5280, 1073741823
  %5288 = add nuw nsw i32 %5287, 20
  %5289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.i32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.i32 %5289, 1
  br label %5292

; <label>:5292                                    ; preds = %5286, %5264
  %5293 = phi i32 [ %5290, %5286 ], [ %5260, %5264 ]
  %5294 = phi i32 [ %5291, %5286 ], [ %5261, %5264 ]
  store i32 %5293, i32* %5284, align 4
  store i32 %5294, i32* %5285, align 4
  %5295 = add nuw i32 %5265, 1
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 2
  %5298 = icmp eq i32 %5297, 0
  %5299 = icmp ugt i32 %5280, -1073741825
  %5300 = and i1 %5299, %5298
  %5301 = icmp ult i32 %5295, %5258
  %5302 = and i1 %5300, %5301
  br i1 %5302, label %5264, label %5303

; <label>:5303                                    ; preds = %5292
  br label %5304

; <label>:5304                                    ; preds = %5303, %5207
  %5305 = phi i32 [ 0, %5207 ], [ %5295, %5303 ]
  %5306 = extractvalue %dx.types.CBufRet.f32 %5069, 2
  %5307 = fptoui float %5306 to i32
  %5308 = icmp eq i32 %5307, 0
  br i1 %5308, label %5360, label %5309

; <label>:5309                                    ; preds = %5304
  br label %5310

; <label>:5310                                    ; preds = %5355, %5309
  %5311 = phi i32 [ %5356, %5355 ], [ %5305, %5309 ]
  %5312 = phi i32 [ %5357, %5355 ], [ 0, %5309 ]
  %5313 = lshr i32 %5312, 2
  %5314 = and i32 %5312, 3
  %5315 = add nuw nsw i32 %5313, 83
  %5316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %5315)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.i32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.i32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.i32 %5316, 2
  %5320 = extractvalue %dx.types.CBufRet.i32 %5316, 3
  %5321 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %5317, i32* %5321, align 4
  %5322 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %5318, i32* %5322, align 4
  %5323 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %5319, i32* %5323, align 4
  %5324 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %5320, i32* %5324, align 4
  %5325 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %5314
  %5326 = load i32, i32* %5325, align 4, !tbaa !85, !noalias !89
  %5327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5328 = extractvalue %dx.types.ResRet.i32 %5327, 0
  %5329 = lshr i32 %5328, 16
  %5330 = and i32 %5329, 31
  %5331 = shl i32 %5253, %5330
  %5332 = add i32 %5331, %5252
  %5333 = shl i32 %5332, 2
  %5334 = add i32 %5333, %5326
  %5335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5334, i32 undef)  ; BufferLoad(srv,index,wot)
  %5336 = extractvalue %dx.types.ResRet.i32 %5335, 0
  %5337 = icmp eq i32 %5336, 0
  br i1 %5337, label %5355, label %5338

; <label>:5338                                    ; preds = %5310
  %5339 = icmp slt i32 %5336, 0
  %5340 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5311
  %5341 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5311
  %5342 = bitcast float* %5340 to i32*
  %5343 = bitcast float* %5341 to i32*
  br i1 %5339, label %5344, label %5351

; <label>:5344                                    ; preds = %5338
  %5345 = and i32 %5336, 1073741823
  %5346 = add i32 %5326, 20
  %5347 = add i32 %5346, %5345
  %5348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5347, i32 undef)  ; BufferLoad(srv,index,wot)
  %5349 = extractvalue %dx.types.ResRet.i32 %5348, 0
  %5350 = extractvalue %dx.types.ResRet.i32 %5348, 1
  br label %5351

; <label>:5351                                    ; preds = %5344, %5338
  %5352 = phi i32 [ %5349, %5344 ], [ %5260, %5338 ]
  %5353 = phi i32 [ %5350, %5344 ], [ %5261, %5338 ]
  store i32 %5352, i32* %5342, align 4
  store i32 %5353, i32* %5343, align 4
  %5354 = add i32 %5311, 1
  br label %5355

; <label>:5355                                    ; preds = %5351, %5310
  %5356 = phi i32 [ %5311, %5310 ], [ %5354, %5351 ]
  %5357 = add nuw i32 %5312, 1
  %5358 = icmp eq i32 %5357, %5307
  br i1 %5358, label %5359, label %5310

; <label>:5359                                    ; preds = %5355
  br label %5360

; <label>:5360                                    ; preds = %5359, %5304
  %5361 = phi i32 [ %5305, %5304 ], [ %5356, %5359 ]
  %5362 = icmp eq i32 %5361, 1
  %5363 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  %5364 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  br i1 %5362, label %5365, label %5368

; <label>:5365                                    ; preds = %5360
  %5366 = load float, float* %5363, align 4
  %5367 = load float, float* %5364, align 4
  br label %5395

; <label>:5368                                    ; preds = %5360
  %5369 = load float, float* %5363, align 4
  %5370 = load float, float* %5364, align 4
  %5371 = fdiv fast float 1.000000e+00, %5370
  %5372 = fsub fast float %5369, %5371
  %5373 = icmp ugt i32 %5361, 1
  br i1 %5373, label %5374, label %5390

; <label>:5374                                    ; preds = %5368
  br label %5375

; <label>:5375                                    ; preds = %5375, %5374
  %5376 = phi float [ %5385, %5375 ], [ %5372, %5374 ]
  %5377 = phi float [ %5386, %5375 ], [ %5369, %5374 ]
  %5378 = phi i32 [ %5387, %5375 ], [ 1, %5374 ]
  %5379 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5378
  %5380 = load float, float* %5379, align 4
  %5381 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5378
  %5382 = load float, float* %5381, align 4
  %5383 = fdiv fast float 1.000000e+00, %5382
  %5384 = fsub fast float %5380, %5383
  %5385 = call float @dx.op.binary.f32(i32 36, float %5376, float %5384)  ; FMin(a,b)
  %5386 = call float @dx.op.binary.f32(i32 35, float %5377, float %5380)  ; FMax(a,b)
  %5387 = add nuw i32 %5378, 1
  %5388 = icmp eq i32 %5387, %5361
  br i1 %5388, label %5389, label %5375

; <label>:5389                                    ; preds = %5375
  br label %5390

; <label>:5390                                    ; preds = %5389, %5368
  %5391 = phi float [ %5372, %5368 ], [ %5385, %5389 ]
  %5392 = phi float [ %5369, %5368 ], [ %5386, %5389 ]
  %5393 = fsub fast float %5392, %5391
  %5394 = fdiv fast float 1.000000e+00, %5393
  br label %5395

; <label>:5395                                    ; preds = %5390, %5365
  %5396 = phi float [ %5366, %5365 ], [ %5392, %5390 ]
  %5397 = phi float [ %5367, %5365 ], [ %5394, %5390 ]
  %5398 = fadd fast float %5099, %5396
  %5399 = fmul fast float %5398, %5397
  %5400 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5401 = fmul fast float %5400, 2.000000e+00
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = fmul fast float %5237, %5237
  %5404 = fsub fast float %5238, %5403
  %5405 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5404)  ; FMax(a,b)
  %5406 = fdiv fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5238, %5237
  %5408 = fsub fast float %5239, %5407
  %5409 = fsub fast float %5402, %5237
  %5410 = fmul fast float %5402, %5402
  %5411 = fsub fast float %5410, %5238
  %5412 = fmul fast float %5406, %5408
  %5413 = fmul fast float %5412, %5409
  %5414 = fsub fast float %5411, %5413
  %5415 = fmul fast float %5238, %5238
  %5416 = fsub fast float %5240, %5415
  %5417 = fmul fast float %5408, %5408
  %5418 = fmul fast float %5417, %5406
  %5419 = fsub fast float %5416, %5418
  %5420 = fdiv fast float %5414, %5419
  %5421 = fmul fast float %5420, %5408
  %5422 = fsub fast float %5409, %5421
  %5423 = fmul fast float %5422, %5406
  %5424 = fmul fast float %5423, %5237
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = fmul fast float %5420, %5238
  %5427 = fsub fast float %5425, %5426
  %5428 = fmul fast float %5423, %5423
  %5429 = fmul fast float %5420, 4.000000e+00
  %5430 = fmul fast float %5429, %5427
  %5431 = fsub fast float %5428, %5430
  %5432 = call float @dx.op.unary.f32(i32 24, float %5431)  ; Sqrt(value)
  %5433 = fcmp fast oge float %5423, 0.000000e+00
  %5434 = fsub fast float -0.000000e+00, %5432
  %5435 = select i1 %5433, float %5434, float %5432
  %5436 = fsub fast float %5435, %5423
  %5437 = fdiv fast float %5436, %5420
  %5438 = fdiv fast float %5427, %5436
  %5439 = fmul fast float %5437, 5.000000e-01
  %5440 = fmul fast float %5438, 2.000000e+00
  %5441 = select i1 %5433, float %5439, float %5440
  %5442 = select i1 %5433, float %5440, float %5439
  %5443 = call float @dx.op.binary.f32(i32 35, float %5441, float %5442)  ; FMax(a,b)
  %5444 = call float @dx.op.binary.f32(i32 36, float %5441, float %5442)  ; FMin(a,b)
  %5445 = fcmp fast ogt float %5402, %5443
  %5446 = fsub fast float %5402, %5444
  %5447 = fsub fast float %5402, %5443
  %5448 = fsub fast float %5443, %5444
  %5449 = select i1 %5445, float %5447, float %5448
  %5450 = fmul float %5446, %5449
  %5451 = select i1 %5445, float %5444, float %5402
  %5452 = fcmp fast ogt float %5402, %5444
  %5453 = fmul fast float %5451, %5443
  %5454 = fadd fast float %5451, %5443
  %5455 = fmul fast float %5454, %5237
  %5456 = fadd fast float %5453, %5238
  %5457 = fsub fast float %5456, %5455
  %5458 = fdiv fast float %5457, %5450
  %5459 = select i1 %5452, float %5458, float 0.000000e+00
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = select i1 %5445, float %5460, float %5459
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5464 = fmul fast float %5463, %5462
  %5465 = fsub fast float 1.000000e+00, %5464
  br label %5466

; <label>:5466                                    ; preds = %5395, %5107, %5072, %5068, %5034
  %5467 = phi float [ 1.000000e+00, %5034 ], [ %5465, %5395 ], [ 1.000000e+00, %5072 ], [ 1.000000e+00, %5107 ], [ 1.000000e+00, %5068 ]
  %5468 = fcmp fast ogt float %5064, 0.000000e+00
  br i1 %5468, label %5469, label %5475, !dx.controlflow.hints !98

; <label>:5469                                    ; preds = %5466
  %5470 = fadd fast float %4977, %4951
  %5471 = call float @dx.op.binary.f32(i32 35, float %5470, float 0.000000e+00)  ; FMax(a,b)
  %5472 = fadd fast float %5471, 0x3F10000000000000
  %5473 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %4966, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float %5472)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5474 = extractvalue %dx.types.ResRet.f32 %5473, 0
  br label %5475

; <label>:5475                                    ; preds = %5469, %5466
  %5476 = phi float [ %5474, %5469 ], [ 1.000000e+00, %5466 ]
  %5477 = fcmp fast ogt float %5062, 0.000000e+00
  br i1 %5477, label %5478, label %5484, !dx.controlflow.hints !99

; <label>:5478                                    ; preds = %5475
  %5479 = fadd fast float %5007, %4951
  %5480 = call float @dx.op.binary.f32(i32 35, float %5479, float 0.000000e+00)  ; FMax(a,b)
  %5481 = fadd fast float %5480, 0x3F10000000000000
  %5482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %4958, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %5481)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  br label %5484

; <label>:5484                                    ; preds = %5478, %5475
  %5485 = phi float [ %5483, %5478 ], [ 1.000000e+00, %5475 ]
  %5486 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5486, label %5487, label %5494, !dx.controlflow.hints !100

; <label>:5487                                    ; preds = %5484
  %5488 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %5489 = fadd fast float %5488, %4951
  %5490 = call float @dx.op.binary.f32(i32 35, float %5489, float 0.000000e+00)  ; FMax(a,b)
  %5491 = fadd fast float %5490, 0x3F10000000000000
  %5492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %4943, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float %5491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  br label %5494

; <label>:5494                                    ; preds = %5487, %5484
  %5495 = phi float [ %5493, %5487 ], [ 1.000000e+00, %5484 ]
  %5496 = fsub fast float %5476, %5467
  %5497 = fmul fast float %5496, %5005
  %5498 = fadd fast float %5497, %5467
  %5499 = fsub fast float %5485, %5498
  %5500 = fmul fast float %5499, %5035
  %5501 = fadd fast float %5500, %5498
  %5502 = fsub fast float %5495, %5501
  %5503 = fmul fast float %5502, %5061
  %5504 = fadd fast float %5503, %5501
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 2
  %5507 = fcmp fast ogt float %5506, 0.000000e+00
  br i1 %5507, label %5508, label %5548, !dx.controlflow.hints !101

; <label>:5508                                    ; preds = %5494
  %5509 = fcmp fast ugt float %5506, 0.000000e+00
  br i1 %5509, label %5510, label %5545

; <label>:5510                                    ; preds = %5508
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 2
  %5515 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.CBufRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5520 = extractvalue %dx.types.CBufRet.f32 %5516, 3
  %5521 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5522 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5527 = fadd fast float %5524, %4920
  %5528 = fadd fast float %5525, %4921
  %5529 = fadd fast float %5526, %4922
  %5530 = fmul fast float %5527, %5512
  %5531 = call float @dx.op.tertiary.f32(i32 46, float %5513, float %5528, float %5530)  ; FMad(a,b,c)
  %5532 = call float @dx.op.tertiary.f32(i32 46, float %5514, float %5529, float %5531)  ; FMad(a,b,c)
  %5533 = fadd fast float %5532, %5515
  %5534 = fmul fast float %5527, %5517
  %5535 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5528, float %5534)  ; FMad(a,b,c)
  %5536 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5529, float %5535)  ; FMad(a,b,c)
  %5537 = fadd fast float %5536, %5520
  %5538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %5533, float %5537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = fmul fast float %5539, %5522
  %5541 = fadd fast float %5540, %5521
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fmul fast float %5542, %5506
  %5544 = fsub fast float 1.000000e+00, %5543
  br label %5545

; <label>:5545                                    ; preds = %5510, %5508
  %5546 = phi float [ %5544, %5510 ], [ 1.000000e+00, %5508 ]
  %5547 = fmul fast float %5546, %5504
  br label %5548

; <label>:5548                                    ; preds = %5545, %5494, %4900
  %5549 = phi float [ 1.000000e+00, %4900 ], [ %5547, %5545 ], [ %5504, %5494 ]
  %5550 = call float @dx.op.binary.f32(i32 36, float %5549, float %5549)  ; FMin(a,b)
  %5551 = call float @dx.op.binary.f32(i32 36, float %5549, float %5550)  ; FMin(a,b)
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5552, label %5553, label %5714, !dx.controlflow.hints !102

; <label>:5553                                    ; preds = %5548
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.CBufRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.CBufRet.f32 %5554, 2
  %5558 = extractvalue %dx.types.CBufRet.f32 %5554, 3
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.CBufRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5563 = extractvalue %dx.types.CBufRet.f32 %5559, 3
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5568 = extractvalue %dx.types.CBufRet.f32 %5564, 3
  %5569 = fmul fast float %5555, %4920
  %5570 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5556, float %5569)  ; FMad(a,b,c)
  %5571 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5557, float %5570)  ; FMad(a,b,c)
  %5572 = fadd fast float %5571, %5558
  %5573 = fmul fast float %5560, %4920
  %5574 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5561, float %5573)  ; FMad(a,b,c)
  %5575 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5562, float %5574)  ; FMad(a,b,c)
  %5576 = fadd fast float %5575, %5563
  %5577 = fmul fast float %5565, %4920
  %5578 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5566, float %5577)  ; FMad(a,b,c)
  %5579 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %5567, float %5578)  ; FMad(a,b,c)
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.CBufRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5580, 3
  %5584 = fmul fast float %5583, %5572
  %5585 = fmul fast float %5583, %5576
  %5586 = fadd fast float %5584, %5581
  %5587 = fadd fast float %5585, %5582
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = fsub fast float %5586, %5589
  %5592 = fsub fast float %5587, %5590
  %5593 = fcmp fast olt float %5591, 0.000000e+00
  %5594 = fcmp fast olt float %5592, 0.000000e+00
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5599 = extractvalue %dx.types.CBufRet.f32 %5595, 3
  %5600 = select i1 %5593, float %5596, float %5598
  %5601 = select i1 %5594, float %5597, float %5599
  %5602 = fmul fast float %5600, %5591
  %5603 = fmul fast float %5601, %5592
  %5604 = call float @dx.op.unary.f32(i32 6, float %5602)  ; FAbs(value)
  %5605 = call float @dx.op.unary.f32(i32 6, float %5603)  ; FAbs(value)
  %5606 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %5607 = call float @dx.op.binary.f32(i32 35, float %5604, float %5605)  ; FMax(a,b)
  %5608 = fsub fast float %5606, %5607
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fcmp fast ogt float %5609, 0.000000e+00
  br i1 %5610, label %5611, label %5652, !dx.controlflow.hints !103

; <label>:5611                                    ; preds = %5553
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %5586, float %5587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5614 = fcmp fast ogt float %5613, 0.000000e+00
  br i1 %5614, label %5615, label %5647

; <label>:5615                                    ; preds = %5611
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %5586, float %5587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = extractvalue %dx.types.ResRet.f32 %5616, 3
  %5621 = fsub fast float 1.000000e+00, %5568
  %5622 = fsub fast float %5621, %5579
  %5623 = fmul fast float %5622, 0x400921FB60000000
  %5624 = fadd fast float %5623, 0x3FF921FB60000000
  %5625 = call float @dx.op.unary.f32(i32 13, float %5624)  ; Sin(value)
  %5626 = fadd fast float %5625, -1.000000e+00
  %5627 = fmul fast float %5626, 0x3FD45F3060000000
  %5628 = fmul fast float %5622, 0x401921FB60000000
  %5629 = fadd fast float %5628, 0x400921FB60000000
  %5630 = call float @dx.op.unary.f32(i32 13, float %5629)  ; Sin(value)
  %5631 = fadd fast float %5630, 0x3E7777A5C0000000
  %5632 = fmul fast float %5631, 0x3FC45F3060000000
  %5633 = fmul fast float %5622, 0x4022D97C80000000
  %5634 = fadd fast float %5633, 0x4012D97C80000000
  %5635 = call float @dx.op.unary.f32(i32 13, float %5634)  ; Sin(value)
  %5636 = fadd fast float %5635, 1.000000e+00
  %5637 = fmul fast float %5636, 0x3FBB2995E0000000
  %5638 = fmul fast float %5622, 0x402921FB60000000
  %5639 = fadd fast float %5638, 0x401921FB60000000
  %5640 = call float @dx.op.unary.f32(i32 13, float %5639)  ; Sin(value)
  %5641 = fadd fast float %5640, 0xBE8777A5C0000000
  %5642 = fmul fast float %5641, 0x3FB45F3060000000
  %5643 = call float @dx.op.dot4.f32(i32 56, float %5617, float %5618, float %5619, float %5620, float %5627, float %5632, float %5637, float %5642)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5644 = fmul fast float %5643, 0xBFF7154760000000
  %5645 = call float @dx.op.unary.f32(i32 21, float %5644)  ; Exp(value)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  br label %5647

; <label>:5647                                    ; preds = %5615, %5611
  %5648 = phi float [ %5646, %5615 ], [ 1.000000e+00, %5611 ]
  %5649 = fadd fast float %5648, -1.000000e+00
  %5650 = fmul fast float %5649, %5609
  %5651 = fadd fast float %5650, 1.000000e+00
  br label %5652

; <label>:5652                                    ; preds = %5647, %5553
  %5653 = phi float [ %5651, %5647 ], [ 1.000000e+00, %5553 ]
  %5654 = fmul fast float %5653, %5549
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5659 = fadd fast float %5656, %148
  %5660 = fadd fast float %5657, %149
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5663 = fsub fast float -0.000000e+00, %5659
  %5664 = fsub fast float -0.000000e+00, %5660
  %5665 = fsub fast float -0.000000e+00, %150
  %5666 = fsub fast float %5665, %5658
  %5667 = fadd fast float %5666, %5662
  %5668 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5663, float %5664, float %5667)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fdiv fast float 1.000000e+00, %5669
  %5671 = fmul fast float %5670, %5668
  %5672 = fmul fast float %4901, %5671
  %5673 = fmul fast float %4902, %5671
  %5674 = fadd fast float %5672, %5659
  %5675 = fadd fast float %5673, %5660
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.CBufRet.f32 %5676, 1
  %5679 = fsub fast float %5674, %5677
  %5680 = fsub fast float %5675, %5678
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5683 = extractvalue %dx.types.CBufRet.f32 %5681, 3
  %5684 = fmul fast float %5679, %5682
  %5685 = fmul fast float %5680, %5683
  %5686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.i32 %5686, 3
  %5688 = icmp eq i32 %5687, 0
  br i1 %5688, label %5694, label %5689

; <label>:5689                                    ; preds = %5652
  %5690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5684, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5691 = extractvalue %dx.types.ResRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.ResRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.ResRet.f32 %5690, 2
  br label %5699

; <label>:5694                                    ; preds = %5652
  %5695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %5684, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5696 = extractvalue %dx.types.ResRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.ResRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.ResRet.f32 %5695, 2
  br label %5699

; <label>:5699                                    ; preds = %5694, %5689
  %5700 = phi float [ %5691, %5689 ], [ %5696, %5694 ]
  %5701 = phi float [ %5692, %5689 ], [ %5697, %5694 ]
  %5702 = phi float [ %5693, %5689 ], [ %5698, %5694 ]
  %5703 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5704 = fmul fast float %5703, %5700
  %5705 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5706 = fsub fast float %5671, %5705
  %5707 = fsub fast float %5706, %5704
  %5708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5707)  ; FMax(a,b)
  %5709 = fmul fast float %5708, %5701
  %5710 = call float @dx.op.binary.f32(i32 36, float %5702, float %5709)  ; FMin(a,b)
  %5711 = fmul fast float %5710, 0xBFF7154760000000
  %5712 = call float @dx.op.unary.f32(i32 21, float %5711)  ; Exp(value)
  %5713 = fmul fast float %5654, %5712
  br label %5714

; <label>:5714                                    ; preds = %5699, %5548
  %5715 = phi float [ %5713, %5699 ], [ %5549, %5548 ]
  %5716 = call float @dx.op.binary.f32(i32 36, float %5715, float %5715)  ; FMin(a,b)
  %5717 = call float @dx.op.binary.f32(i32 36, float %5715, float %5716)  ; FMin(a,b)
  %5718 = fcmp fast ogt float %5717, 0.000000e+00
  br i1 %5718, label %5719, label %5894, !dx.controlflow.hints !104

; <label>:5719                                    ; preds = %5714
  %5720 = fmul fast float %5715, %4912
  %5721 = fmul fast float %5715, %4913
  %5722 = fmul fast float %5715, %4914
  %5723 = fsub fast float %4901, %4538
  %5724 = fsub fast float %4902, %4537
  %5725 = fsub fast float %4903, %4536
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.unary.f32(i32 25, float %5726)  ; Rsqrt(value)
  %5728 = fmul fast float %5727, %5723
  %5729 = fmul fast float %5727, %5724
  %5730 = fmul fast float %5727, %5725
  %5731 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4534, float %4533, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5734 = fmul fast float %5733, %5733
  %5735 = fmul fast float %5734, %4565
  %5736 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5737 = fmul fast float %5736, %5733
  %5738 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = fmul fast float %5738, %5738
  %5740 = call float @dx.op.unary.f32(i32 6, float %5731)  ; FAbs(value)
  %5741 = fsub fast float 1.000000e+00, %4548
  %5742 = call float @dx.op.binary.f32(i32 35, float %5741, float 0x3F847AE140000000)  ; FMax(a,b)
  %5743 = fmul fast float %5742, %5742
  %5744 = fmul fast float %5743, %5743
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = fmul fast float %4552, %4552
  %5747 = fmul fast float %5746, %5745
  %5748 = fadd fast float %5747, %5744
  %5749 = bitcast float %5748 to i32
  %5750 = ashr i32 %5749, 1
  %5751 = add nsw i32 %5750, 532487669
  %5752 = bitcast i32 %5751 to float
  %5753 = fadd fast float %5752, %4552
  %5754 = fmul fast float %5744, %5739
  %5755 = fsub fast float 1.000000e+00, %5739
  %5756 = fadd fast float %5755, %5754
  %5757 = fmul fast float %5740, %5740
  %5758 = fmul fast float %5757, %5745
  %5759 = fadd fast float %5758, %5744
  %5760 = bitcast float %5759 to i32
  %5761 = ashr i32 %5760, 1
  %5762 = add nsw i32 %5761, 532487669
  %5763 = bitcast i32 %5762 to float
  %5764 = fadd fast float %5763, %5740
  %5765 = fmul fast float %5756, %5756
  %5766 = fmul fast float %5765, %5753
  %5767 = fmul fast float %5766, %5764
  %5768 = fdiv fast float 0x3FF0A00000000000, %5767
  %5769 = fmul fast float %5768, %5744
  %5770 = call float @dx.op.unary.f32(i32 6, float %5732)  ; FAbs(value)
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = bitcast float %5771 to i32
  %5773 = sitofp i32 %5772 to float
  %5774 = fmul fast float %5773, 5.000000e+00
  %5775 = fadd fast float %5774, 0xC1EFBF8940000000
  %5776 = fptosi float %5775 to i32
  %5777 = bitcast i32 %5776 to float
  %5778 = fsub fast float 1.000000e+00, %4539
  %5779 = fsub fast float 1.000000e+00, %4540
  %5780 = fsub fast float 1.000000e+00, %4550
  %5781 = fmul fast float %5777, %5778
  %5782 = fmul fast float %5777, %5779
  %5783 = fmul fast float %5777, %5780
  %5784 = fadd fast float %5781, %4539
  %5785 = fadd fast float %5782, %4540
  %5786 = fadd fast float %5783, %4550
  br i1 %4812, label %5787, label %5810

; <label>:5787                                    ; preds = %5719
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4228, float %5770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = fadd fast float %5789, -5.000000e-01
  %5793 = fadd fast float %5790, -5.000000e-01
  %5794 = fadd fast float %5791, -5.000000e-01
  %5795 = fmul fast float %4539, 4.000000e+00
  %5796 = fmul fast float %5795, %5778
  %5797 = fmul fast float %5796, %5792
  %5798 = fmul fast float %4540, 4.000000e+00
  %5799 = fmul fast float %5798, %5779
  %5800 = fmul fast float %5799, %5793
  %5801 = fmul fast float %4550, 4.000000e+00
  %5802 = fmul fast float %5801, %5780
  %5803 = fmul fast float %5802, %5794
  %5804 = fadd fast float %5797, %5784
  %5805 = fadd fast float %5800, %5785
  %5806 = fadd fast float %5803, %5786
  %5807 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5808 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5809 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  br label %5810

; <label>:5810                                    ; preds = %5787, %5719
  %5811 = phi float [ %5807, %5787 ], [ %5784, %5719 ]
  %5812 = phi float [ %5808, %5787 ], [ %5785, %5719 ]
  %5813 = phi float [ %5809, %5787 ], [ %5786, %5719 ]
  %5814 = fmul fast float %5731, 9.843750e-01
  %5815 = fadd fast float %5814, 7.812500e-03
  %5816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5815, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 3
  %5819 = fmul fast float %5817, %4539
  %5820 = fmul fast float %5817, %4540
  %5821 = fmul fast float %5817, %4550
  %5822 = fadd fast float %5819, %5818
  %5823 = fadd fast float %5820, %5818
  %5824 = fadd fast float %5821, %5818
  br i1 %4812, label %5825, label %5848

; <label>:5825                                    ; preds = %5810
  %5826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4228, float %5731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fadd fast float %5828, -5.000000e-01
  %5832 = fadd fast float %5829, -5.000000e-01
  %5833 = fmul fast float %4539, 4.000000e+00
  %5834 = fmul fast float %5833, %5778
  %5835 = fmul fast float %5834, %5830
  %5836 = fmul fast float %4540, 4.000000e+00
  %5837 = fmul fast float %5836, %5779
  %5838 = fmul fast float %5837, %5831
  %5839 = fmul fast float %4550, 4.000000e+00
  %5840 = fmul fast float %5839, %5780
  %5841 = fmul fast float %5840, %5832
  %5842 = fadd fast float %5835, %5822
  %5843 = fadd fast float %5838, %5823
  %5844 = fadd fast float %5841, %5824
  %5845 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5846 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  br label %5848

; <label>:5848                                    ; preds = %5825, %5810
  %5849 = phi float [ %5845, %5825 ], [ %5822, %5810 ]
  %5850 = phi float [ %5846, %5825 ], [ %5823, %5810 ]
  %5851 = phi float [ %5847, %5825 ], [ %5824, %5810 ]
  %5852 = call float @dx.op.binary.f32(i32 35, float %5850, float %5851)  ; FMax(a,b)
  %5853 = call float @dx.op.binary.f32(i32 35, float %5849, float %5852)  ; FMax(a,b)
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5811, %5769
  %5856 = fmul fast float %5812, %5769
  %5857 = fmul fast float %5813, %5769
  %5858 = fsub fast float 1.000000e+00, %5732
  %5859 = bitcast float %5858 to i32
  %5860 = sitofp i32 %5859 to float
  %5861 = fmul fast float %5860, 5.000000e+00
  %5862 = fadd fast float %5861, 0xC1EFBF8940000000
  %5863 = fptosi float %5862 to i32
  %5864 = bitcast i32 %5863 to float
  %5865 = fmul fast float %5864, %4229
  %5866 = fmul fast float %5854, %5865
  %5867 = fmul fast float %5866, %4862
  %5868 = fmul fast float %5866, %4863
  %5869 = fmul fast float %5866, %4864
  %5870 = fadd fast float %5867, %5855
  %5871 = fadd fast float %5868, %5856
  %5872 = fadd fast float %5869, %5857
  %5873 = fmul fast float %5737, %5720
  %5874 = fmul fast float %5873, %5854
  %5875 = fmul fast float %5737, %5721
  %5876 = fmul fast float %5875, %5854
  %5877 = fmul fast float %5737, %5722
  %5878 = fmul fast float %5877, %5854
  %5879 = fmul fast float %5873, %5870
  %5880 = fmul fast float %5875, %5871
  %5881 = fmul fast float %5877, %5872
  %5882 = fadd fast float %5874, %4846
  %5883 = fmul fast float %5882, %4225
  %5884 = fadd fast float %5876, %4847
  %5885 = fmul fast float %5884, %4225
  %5886 = fadd fast float %5878, %4848
  %5887 = fmul fast float %5886, %4225
  %5888 = fadd fast float %5879, %4889
  %5889 = fmul fast float %5888, %4225
  %5890 = fadd fast float %5880, %4892
  %5891 = fmul fast float %5890, %4225
  %5892 = fadd fast float %5881, %4895
  %5893 = fmul fast float %5892, %4225
  br label %5894

; <label>:5894                                    ; preds = %5848, %5714, %4839
  %5895 = phi float [ %4890, %4839 ], [ %4890, %5714 ], [ %5889, %5848 ]
  %5896 = phi float [ %4893, %4839 ], [ %4893, %5714 ], [ %5891, %5848 ]
  %5897 = phi float [ %4896, %4839 ], [ %4896, %5714 ], [ %5893, %5848 ]
  %5898 = phi float [ %4885, %4839 ], [ %4885, %5714 ], [ %5883, %5848 ]
  %5899 = phi float [ %4886, %4839 ], [ %4886, %5714 ], [ %5885, %5848 ]
  %5900 = phi float [ %4887, %4839 ], [ %4887, %5714 ], [ %5887, %5848 ]
  %5901 = fmul fast float %4225, %4225
  %5902 = fsub fast float 1.000000e+00, %5901
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5902, float %5902, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = fmul fast float %5906, %4868
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5910 = fsub fast float 1.000000e+00, %4232
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = fadd fast float %5900, %4231
  %5913 = fmul fast float %5912, %4232
  %5914 = fmul fast float %5911, %5909
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 3
  %5917 = fmul fast float %5898, %4542
  %5918 = fmul fast float %5899, %4543
  %5919 = fmul fast float %5900, %4544
  %5920 = fcmp fast ogt float %80, %170
  %5921 = and i1 %5920, %4271
  %5922 = or i1 %4350, %5921
  %5923 = icmp eq i32 %4270, 2
  %5924 = fcmp fast ole float %80, %170
  %5925 = and i1 %5924, %5923
  %5926 = or i1 %5925, %5922
  br i1 %5921, label %5927, label %6184

; <label>:5927                                    ; preds = %5894
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5931 = fmul fast float %5929, %89
  %5932 = fmul fast float %5930, %90
  %5933 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5934 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5935 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5933, float %5934, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.ResRet.f32 %5935, 3
  %5940 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5933, float %5934, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.ResRet.f32 %5940, 3
  %5945 = call float @dx.op.binary.f32(i32 35, float %5937, float %5938)  ; FMax(a,b)
  %5946 = call float @dx.op.binary.f32(i32 35, float %5936, float %5945)  ; FMax(a,b)
  %5947 = call float @dx.op.binary.f32(i32 35, float %5946, float %5939)  ; FMax(a,b)
  %5948 = call float @dx.op.binary.f32(i32 36, float %5942, float %5943)  ; FMin(a,b)
  %5949 = call float @dx.op.binary.f32(i32 36, float %5941, float %5948)  ; FMin(a,b)
  %5950 = call float @dx.op.binary.f32(i32 36, float %5949, float %5944)  ; FMin(a,b)
  %5951 = fmul fast float %5947, 2.550000e+02
  %5952 = fadd fast float %5951, 0x3F70101020000000
  %5953 = fptoui float %5952 to i32
  %5954 = fmul fast float %5950, 2.550000e+02
  %5955 = fadd fast float %5954, 0x3F70101020000000
  %5956 = fptoui float %5955 to i32
  %5957 = icmp ult i32 %5953, %5956
  br i1 %5957, label %5958, label %6126

; <label>:5958                                    ; preds = %5927
  %5959 = fcmp fast ogt float %79, 9.843750e-01
  %5960 = fadd fast float %80, -4.000000e+00
  %5961 = select i1 %5959, float -4.000000e+00, float %5960
  %5962 = call float @dx.op.binary.f32(i32 35, float %5961, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = fadd fast float %5964, %5962
  %5966 = extractvalue %dx.types.CBufRet.f32 %5963, 2
  %5967 = fmul fast float %5965, %5966
  %5968 = call float @dx.op.unary.f32(i32 23, float %5967)  ; Log(value)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5970 = fmul fast float %5969, %5968
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5973 = fmul fast float %5970, %5972
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = uitofp i32 %5953 to float
  %5976 = uitofp i32 %5956 to float
  %5977 = fadd fast float %5975, 5.000000e-01
  %5978 = fadd fast float %5976, 5.000000e-01
  %5979 = fmul fast float %5972, %5977
  %5980 = fmul fast float %5972, %5978
  %5981 = fadd fast float %5979, 0x3F0FFB4800000000
  %5982 = fadd fast float %5980, 0xBF0FFB4800000000
  %5983 = call float @dx.op.binary.f32(i32 35, float %5974, float %5981)  ; FMax(a,b)
  %5984 = call float @dx.op.binary.f32(i32 36, float %5983, float %5982)  ; FMin(a,b)
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5989 = fmul fast float %5986, %5984
  %5990 = fadd fast float %5988, %5989
  %5991 = fadd fast float %5988, %5987
  %5992 = fsub fast float %5986, %5987
  %5993 = fadd fast float %5992, %5988
  %5994 = call float @dx.op.binary.f32(i32 35, float %5990, float %5991)  ; FMax(a,b)
  %5995 = call float @dx.op.binary.f32(i32 36, float %5994, float %5993)  ; FMin(a,b)
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %5933, float %5934, float %5995, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.ResRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.ResRet.f32 %5996, 2
  %6000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.i32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.i32 %6000, 1
  %6003 = uitofp i32 %6001 to float
  %6004 = uitofp i32 %6002 to float
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6008 = fmul fast float %6003, %5933
  %6009 = fmul fast float %6004, %5934
  %6010 = fadd fast float %6008, -5.000000e-01
  %6011 = fadd fast float %6009, -5.000000e-01
  %6012 = call float @dx.op.unary.f32(i32 22, float %6010)  ; Frc(value)
  %6013 = call float @dx.op.unary.f32(i32 22, float %6011)  ; Frc(value)
  %6014 = fmul fast float %6012, %6012
  %6015 = fmul fast float %6014, %6012
  %6016 = fsub fast float 3.000000e+00, %6012
  %6017 = fmul fast float %6014, %6016
  %6018 = fmul fast float %6012, 3.000000e+00
  %6019 = fmul fast float %6015, 3.000000e+00
  %6020 = fmul fast float %6014, 6.000000e+00
  %6021 = fsub fast float %6019, %6020
  %6022 = fadd fast float %6021, 4.000000e+00
  %6023 = fmul fast float %6022, 0x3FC5555560000000
  %6024 = fmul fast float %6015, -3.000000e+00
  %6025 = fadd fast float %6014, %6012
  %6026 = fmul fast float %6025, 3.000000e+00
  %6027 = fadd fast float %6024, 1.000000e+00
  %6028 = fadd fast float %6027, %6026
  %6029 = fmul fast float %6015, 0x3FC5555560000000
  %6030 = fmul fast float %6013, %6013
  %6031 = fmul fast float %6030, %6013
  %6032 = fsub fast float 3.000000e+00, %6013
  %6033 = fmul fast float %6030, %6032
  %6034 = fmul fast float %6013, 3.000000e+00
  %6035 = fmul fast float %6031, 3.000000e+00
  %6036 = fmul fast float %6030, 6.000000e+00
  %6037 = fsub fast float %6035, %6036
  %6038 = fadd fast float %6037, 4.000000e+00
  %6039 = fmul fast float %6038, 0x3FC5555560000000
  %6040 = fmul fast float %6031, -3.000000e+00
  %6041 = fadd fast float %6030, %6013
  %6042 = fmul fast float %6041, 3.000000e+00
  %6043 = fadd fast float %6040, 1.000000e+00
  %6044 = fadd fast float %6043, %6042
  %6045 = fmul fast float %6031, 0x3FC5555560000000
  %6046 = fadd fast float %6012, 1.000000e+00
  %6047 = fsub fast float 1.000000e+00, %6018
  %6048 = fadd fast float %6047, %6017
  %6049 = fadd fast float %6048, %6022
  %6050 = fmul fast float %6049, 0x3FC5555560000000
  %6051 = fdiv fast float %6023, %6050
  %6052 = fsub fast float %6046, %6051
  %6053 = fsub fast float 1.000000e+00, %6012
  %6054 = fadd fast float %6028, %6015
  %6055 = fmul fast float %6054, 0x3FC5555560000000
  %6056 = fdiv fast float %6029, %6055
  %6057 = fadd fast float %6053, %6056
  %6058 = fadd fast float %6013, 1.000000e+00
  %6059 = fsub fast float 1.000000e+00, %6034
  %6060 = fadd fast float %6059, %6033
  %6061 = fadd fast float %6060, %6038
  %6062 = fmul fast float %6061, 0x3FC5555560000000
  %6063 = fdiv fast float %6039, %6062
  %6064 = fsub fast float %6058, %6063
  %6065 = fsub fast float 1.000000e+00, %6013
  %6066 = fadd fast float %6044, %6031
  %6067 = fmul fast float %6066, 0x3FC5555560000000
  %6068 = fdiv fast float %6045, %6067
  %6069 = fadd fast float %6068, %6065
  %6070 = fmul fast float %6052, %6006
  %6071 = fsub fast float %5933, %6070
  %6072 = fmul fast float %6057, %6006
  %6073 = fadd fast float %6072, %5933
  %6074 = fmul fast float %6069, %6007
  %6075 = fadd fast float %6074, %5934
  %6076 = fmul fast float %6064, %6007
  %6077 = fsub fast float %5934, %6076
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6071, float %6077, float %5995, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6073, float %6077, float %5995, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6071, float %6075, float %5995, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.ResRet.f32 %6086, 2
  %6090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6073, float %6075, float %5995, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.ResRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.ResRet.f32 %6090, 2
  %6094 = fsub fast float %6087, %6079
  %6095 = fsub fast float %6088, %6080
  %6096 = fsub fast float %6089, %6081
  %6097 = fmul fast float %6094, %6067
  %6098 = fmul fast float %6095, %6067
  %6099 = fmul fast float %6096, %6067
  %6100 = fadd fast float %6097, %6079
  %6101 = fadd fast float %6098, %6080
  %6102 = fadd fast float %6099, %6081
  %6103 = fsub fast float %6091, %6083
  %6104 = fsub fast float %6092, %6084
  %6105 = fsub fast float %6093, %6085
  %6106 = fmul fast float %6103, %6067
  %6107 = fmul fast float %6104, %6067
  %6108 = fmul fast float %6105, %6067
  %6109 = fsub fast float %6083, %6100
  %6110 = fadd fast float %6109, %6106
  %6111 = fsub fast float %6084, %6101
  %6112 = fadd fast float %6111, %6107
  %6113 = fsub fast float %6085, %6102
  %6114 = fadd fast float %6113, %6108
  %6115 = fmul fast float %6110, %6055
  %6116 = fmul fast float %6112, %6055
  %6117 = fmul fast float %6114, %6055
  %6118 = fadd fast float %6115, %6100
  %6119 = fadd fast float %6116, %6101
  %6120 = fadd fast float %6117, %6102
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6123 = fmul fast float %6118, %6122
  %6124 = fmul fast float %6119, %6122
  %6125 = fmul fast float %6120, %6122
  br label %6126

; <label>:6126                                    ; preds = %5958, %5927
  %6127 = phi float [ %5997, %5958 ], [ 1.000000e+00, %5927 ]
  %6128 = phi float [ %5998, %5958 ], [ 1.000000e+00, %5927 ]
  %6129 = phi float [ %5999, %5958 ], [ 1.000000e+00, %5927 ]
  %6130 = phi float [ %6123, %5958 ], [ 0.000000e+00, %5927 ]
  %6131 = phi float [ %6124, %5958 ], [ 0.000000e+00, %5927 ]
  %6132 = phi float [ %6125, %5958 ], [ 0.000000e+00, %5927 ]
  %6133 = fmul fast float %6130, %5904
  %6134 = fmul fast float %6131, %5904
  %6135 = fmul fast float %6132, %5904
  %6136 = call float @dx.op.dot3.f32(i32 55, float %6127, float %6128, float %6129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = call float @dx.op.dot3.f32(i32 55, float %6133, float %6134, float %6135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = select i1 %209, float %6136, float %6127
  %6139 = select i1 %209, float %6136, float %6128
  %6140 = select i1 %209, float 1.000000e+00, float %6129
  %6141 = select i1 %209, float %6137, float %6133
  %6142 = select i1 %209, float 0.000000e+00, float %6134
  %6143 = select i1 %209, float 0.000000e+00, float %6135
  %6144 = fmul fast float %6138, %5917
  %6145 = fmul fast float %6139, %5918
  %6146 = fmul fast float %6140, %5919
  %6147 = fadd fast float %6144, %6141
  %6148 = fadd fast float %6145, %6142
  %6149 = fadd fast float %6143, %6146
  %6150 = fmul fast float %6138, %5895
  %6151 = fmul fast float %6139, %5896
  %6152 = fmul fast float %6140, %5897
  %6153 = fmul fast float %118, %5929
  %6154 = fmul fast float %120, %5930
  %6155 = fsub fast float 1.000000e+00, %6153
  %6156 = fsub fast float 1.000000e+00, %6154
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = fmul fast float %6155, %6158
  %6162 = fmul fast float %6155, %6159
  %6163 = fmul fast float %6155, %6160
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6168 = fmul fast float %6156, %6165
  %6169 = fmul fast float %6156, %6166
  %6170 = fmul fast float %6156, %6167
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = fadd fast float %6168, %6172
  %6176 = fadd fast float %6175, %6161
  %6177 = fadd fast float %6169, %6173
  %6178 = fadd fast float %6177, %6162
  %6179 = fadd fast float %6170, %6174
  %6180 = fadd fast float %6179, %6163
  %6181 = fmul fast float %6176, %170
  %6182 = fmul fast float %6178, %170
  %6183 = fmul fast float %6180, %170
  br label %6184

; <label>:6184                                    ; preds = %6126, %5894
  %6185 = phi float [ %6181, %6126 ], [ %148, %5894 ]
  %6186 = phi float [ %6182, %6126 ], [ %149, %5894 ]
  %6187 = phi float [ %6183, %6126 ], [ %150, %5894 ]
  %6188 = phi float [ %170, %6126 ], [ %80, %5894 ]
  %6189 = phi float [ %6147, %6126 ], [ %5917, %5894 ]
  %6190 = phi float [ %6148, %6126 ], [ %5918, %5894 ]
  %6191 = phi float [ %6149, %6126 ], [ %5919, %5894 ]
  %6192 = phi float [ %6150, %6126 ], [ %5895, %5894 ]
  %6193 = phi float [ %6151, %6126 ], [ %5896, %5894 ]
  %6194 = phi float [ %6152, %6126 ], [ %5897, %5894 ]
  %6195 = phi float [ %6127, %6126 ], [ 1.000000e+00, %5894 ]
  br i1 %5926, label %7350, label %6196

; <label>:6196                                    ; preds = %6184
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.CBufRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6216 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 3
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 3
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6224 = fcmp fast olt float %6223, -5.000000e-01
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6185, float %6186, float %6187)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = call float @dx.op.unary.f32(i32 25, float %6225)  ; Rsqrt(value)
  %6227 = fmul fast float %6226, %6225
  %6228 = fmul fast float %6226, %6185
  %6229 = fmul fast float %6226, %6186
  %6230 = fmul fast float %6226, %6187
  %6231 = fadd fast float %6227, %6201
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6230, float %6198, float %6199, float %6200)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.i32 %6233, 1
  %6235 = and i32 %6234, 1
  %6236 = icmp ne i32 %6235, 0
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6239 = fcmp fast ogt float %6238, 0.000000e+00
  %6240 = and i1 %6236, %6239
  br i1 %6240, label %6241, label %6647, !dx.controlflow.hints !105

; <label>:6241                                    ; preds = %6196
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6248 = fsub fast float %6245, %6247
  %6249 = and i32 %6234, 2
  %6250 = extractvalue %dx.types.CBufRet.i32 %6233, 0
  %6251 = call i32 @dx.op.binary.i32(i32 40, i32 %6250, i32 3)  ; UMin(a,b)
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6255 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6257 = fsub fast float %6253, %6255
  %6258 = fsub fast float %6254, %6256
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = fcmp fast ogt float %6260, 0.000000e+00
  %6262 = fsub fast float -0.000000e+00, %6257
  %6263 = fsub fast float -0.000000e+00, %6258
  %6264 = call float @dx.op.dot2.f32(i32 54, float %6228, float %6229, float %6228, float %6229)  ; Dot2(ax,ay,bx,by)
  %6265 = call float @dx.op.dot2.f32(i32 54, float %6228, float %6229, float %6262, float %6263)  ; Dot2(ax,ay,bx,by)
  %6266 = fmul fast float %6265, 2.000000e+00
  %6267 = call float @dx.op.dot2.f32(i32 54, float %6262, float %6263, float %6262, float %6263)  ; Dot2(ax,ay,bx,by)
  %6268 = fmul fast float %6260, %6260
  %6269 = fsub fast float %6267, %6268
  %6270 = fmul fast float %6266, %6266
  %6271 = fmul fast float %6264, 4.000000e+00
  %6272 = fmul fast float %6271, %6269
  %6273 = fsub fast float %6270, %6272
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  br i1 %6274, label %6275, label %6290

; <label>:6275                                    ; preds = %6241
  %6276 = fcmp fast ogt float %6266, 0.000000e+00
  %6277 = call float @dx.op.unary.f32(i32 24, float %6273)  ; Sqrt(value)
  %6278 = fsub fast float -0.000000e+00, %6277
  %6279 = select i1 %6276, float %6277, float %6278
  %6280 = fadd fast float %6279, %6266
  %6281 = fmul float %6280, -5.000000e-01
  %6282 = fdiv fast float %6281, %6264
  %6283 = call float @dx.op.binary.f32(i32 35, float %6282, float 0.000000e+00)  ; FMax(a,b)
  %6284 = call float @dx.op.binary.f32(i32 36, float %6227, float %6283)  ; FMin(a,b)
  %6285 = fdiv fast float %6269, %6281
  %6286 = call float @dx.op.binary.f32(i32 35, float %6285, float 0.000000e+00)  ; FMax(a,b)
  %6287 = call float @dx.op.binary.f32(i32 36, float %6227, float %6286)  ; FMin(a,b)
  %6288 = call float @dx.op.binary.f32(i32 36, float %6284, float %6287)  ; FMin(a,b)
  %6289 = call float @dx.op.binary.f32(i32 35, float %6284, float %6287)  ; FMax(a,b)
  br label %6290

; <label>:6290                                    ; preds = %6275, %6241
  %6291 = phi float [ %6289, %6275 ], [ -1.000000e+00, %6241 ]
  %6292 = phi float [ %6288, %6275 ], [ -1.000000e+00, %6241 ]
  %6293 = phi i1 [ true, %6275 ], [ false, %6241 ]
  %6294 = and i1 %6261, %6293
  br i1 %6294, label %6295, label %6297

; <label>:6295                                    ; preds = %6290
  %6296 = fcmp fast oeq float %6292, %6291
  br i1 %6296, label %6600, label %6298

; <label>:6297                                    ; preds = %6290
  br i1 %6261, label %6600, label %6298

; <label>:6298                                    ; preds = %6297, %6295
  %6299 = phi float [ %6227, %6297 ], [ %6291, %6295 ]
  %6300 = phi float [ 0.000000e+00, %6297 ], [ %6292, %6295 ]
  %6301 = icmp ne i32 %6249, 0
  %6302 = fmul fast float %6299, %6230
  %6303 = fadd fast float %6302, %6243
  %6304 = fmul fast float %6303, %6299
  %6305 = select i1 %6301, float 0.000000e+00, float %6304
  %6306 = fcmp fast oeq float %6230, 0.000000e+00
  %6307 = fdiv fast float %6248, %6230
  %6308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6307)  ; FMax(a,b)
  %6309 = select i1 %6306, float %6299, float %6308
  %6310 = call float @dx.op.binary.f32(i32 36, float %6299, float %6309)  ; FMin(a,b)
  %6311 = fcmp fast ogt float %6230, 0.000000e+00
  %6312 = fcmp fast olt float %6248, 0.000000e+00
  br i1 %6311, label %6313, label %6370

; <label>:6313                                    ; preds = %6298
  %6314 = icmp eq i32 %6249, 0
  br i1 %6312, label %6315, label %6359

; <label>:6315                                    ; preds = %6313
  %6316 = select i1 %6314, float %6299, float 0.000000e+00
  %6317 = fsub fast float -0.000000e+00, %6316
  %6318 = call float @dx.op.unary.f32(i32 6, float %6317)  ; FAbs(value)
  %6319 = fmul fast float %6316, %6230
  %6320 = fadd fast float %6319, %6243
  %6321 = fmul fast float %6318, %6320
  %6322 = fsub fast float %6305, %6321
  %6323 = fsub fast float %6299, %6318
  %6324 = select i1 %6314, float %6323, float 0.000000e+00
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6332 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6333 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 3
  %6336 = call float @dx.op.binary.f32(i32 36, float %6322, float %6335)  ; FMin(a,b)
  %6337 = fmul fast float %6333, %6324
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = fsub fast float %6330, %6326
  %6340 = fsub fast float %6331, %6327
  %6341 = fsub fast float %6332, %6328
  %6342 = fmul fast float %6338, %6339
  %6343 = fmul fast float %6338, %6340
  %6344 = fmul fast float %6338, %6341
  %6345 = fadd fast float %6342, %6326
  %6346 = fadd fast float %6343, %6327
  %6347 = fadd fast float %6344, %6328
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = fadd fast float %6350, %6349
  %6352 = call float @dx.op.unary.f32(i32 7, float %6351)  ; Saturate(value)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6355 = fadd fast float %6354, %6353
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6352, %6336
  %6358 = fmul fast float %6357, %6356
  br label %6600

; <label>:6359                                    ; preds = %6313
  br i1 %6314, label %6360, label %6381

; <label>:6360                                    ; preds = %6359
  %6361 = call float @dx.op.binary.f32(i32 36, float %6310, float %6300)  ; FMin(a,b)
  %6362 = fsub fast float %6310, %6361
  %6363 = fsub fast float %6362, %6299
  %6364 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6365 = fadd fast float %6362, %6299
  %6366 = fmul fast float %6365, %6230
  %6367 = fadd fast float %6366, %6243
  %6368 = fmul fast float %6367, %6364
  %6369 = fsub fast float %6305, %6368
  br label %6381

; <label>:6370                                    ; preds = %6298
  br i1 %6312, label %6371, label %6381

; <label>:6371                                    ; preds = %6370
  %6372 = call float @dx.op.binary.f32(i32 35, float %6300, float %6310)  ; FMax(a,b)
  %6373 = icmp eq i32 %6249, 0
  %6374 = select i1 %6373, float %6310, float 0.000000e+00
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = call float @dx.op.unary.f32(i32 6, float %6375)  ; FAbs(value)
  %6377 = fmul fast float %6374, %6230
  %6378 = fadd fast float %6377, %6243
  %6379 = fmul fast float %6376, %6378
  %6380 = fsub fast float %6305, %6379
  br label %6381

; <label>:6381                                    ; preds = %6371, %6370, %6360, %6359
  %6382 = phi float [ %6300, %6359 ], [ %6300, %6360 ], [ %6372, %6371 ], [ %6300, %6370 ]
  %6383 = phi float [ 0.000000e+00, %6359 ], [ %6364, %6360 ], [ %6376, %6371 ], [ 0.000000e+00, %6370 ]
  %6384 = phi float [ %6305, %6359 ], [ %6369, %6360 ], [ %6380, %6371 ], [ %6305, %6370 ]
  %6385 = phi float [ %6310, %6359 ], [ %6310, %6360 ], [ %6299, %6371 ], [ %6299, %6370 ]
  %6386 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  store float -1.000000e+00, float* %6386, align 4, !tbaa !106, !noalias !108
  %6387 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 1
  store float -1.000000e+00, float* %6387, align 4, !tbaa !106, !noalias !108
  %6388 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 2
  store float -1.000000e+00, float* %6388, align 4, !tbaa !106, !noalias !108
  %6389 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %6389, align 4, !tbaa !106, !noalias !108
  %6390 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %6390, align 4, !tbaa !106, !noalias !108
  %6391 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %6391, align 4, !tbaa !106, !noalias !108
  %6392 = icmp sgt i32 %6251, 0
  br i1 %6392, label %6393, label %6454

; <label>:6393                                    ; preds = %6381
  br label %6394

; <label>:6394                                    ; preds = %6443, %6393
  %6395 = phi i32 [ %6444, %6443 ], [ 0, %6393 ]
  %6396 = phi i32 [ %6445, %6443 ], [ 0, %6393 ]
  %6397 = add nuw i32 %6396, 171
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6397)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = fsub fast float %6399, %6402
  %6405 = fsub fast float %6400, %6403
  %6406 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6407 = fsub fast float -0.000000e+00, %6404
  %6408 = fsub fast float -0.000000e+00, %6405
  %6409 = call float @dx.op.dot2.f32(i32 54, float %6228, float %6229, float %6407, float %6408)  ; Dot2(ax,ay,bx,by)
  %6410 = fmul fast float %6409, 2.000000e+00
  %6411 = call float @dx.op.dot2.f32(i32 54, float %6407, float %6408, float %6407, float %6408)  ; Dot2(ax,ay,bx,by)
  %6412 = fmul fast float %6406, %6406
  %6413 = fsub fast float %6411, %6412
  %6414 = fmul fast float %6410, %6410
  %6415 = fmul fast float %6271, %6413
  %6416 = fsub fast float %6414, %6415
  %6417 = fcmp fast ogt float %6416, 0.000000e+00
  br i1 %6417, label %6418, label %6433

; <label>:6418                                    ; preds = %6394
  %6419 = fcmp fast ogt float %6410, 0.000000e+00
  %6420 = call float @dx.op.unary.f32(i32 24, float %6416)  ; Sqrt(value)
  %6421 = fsub fast float -0.000000e+00, %6420
  %6422 = select i1 %6419, float %6420, float %6421
  %6423 = fadd fast float %6422, %6410
  %6424 = fmul float %6423, -5.000000e-01
  %6425 = fdiv fast float %6424, %6264
  %6426 = call float @dx.op.binary.f32(i32 35, float %6425, float 0.000000e+00)  ; FMax(a,b)
  %6427 = call float @dx.op.binary.f32(i32 36, float %6299, float %6426)  ; FMin(a,b)
  %6428 = fdiv fast float %6413, %6424
  %6429 = call float @dx.op.binary.f32(i32 35, float %6428, float 0.000000e+00)  ; FMax(a,b)
  %6430 = call float @dx.op.binary.f32(i32 36, float %6299, float %6429)  ; FMin(a,b)
  %6431 = call float @dx.op.binary.f32(i32 36, float %6427, float %6430)  ; FMin(a,b)
  %6432 = call float @dx.op.binary.f32(i32 35, float %6427, float %6430)  ; FMax(a,b)
  br label %6433

; <label>:6433                                    ; preds = %6418, %6394
  %6434 = phi float [ %6432, %6418 ], [ -1.000000e+00, %6394 ]
  %6435 = phi float [ %6431, %6418 ], [ -1.000000e+00, %6394 ]
  %6436 = phi i1 [ true, %6418 ], [ false, %6394 ]
  br i1 %6436, label %6437, label %6443

; <label>:6437                                    ; preds = %6433
  %6438 = call float @dx.op.binary.f32(i32 35, float %6382, float %6435)  ; FMax(a,b)
  %6439 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6396
  store float %6438, float* %6439, align 4, !tbaa !106, !noalias !108
  %6440 = call float @dx.op.binary.f32(i32 35, float %6382, float %6434)  ; FMax(a,b)
  %6441 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6396
  store float %6440, float* %6441, align 4, !tbaa !106, !noalias !108
  %6442 = add nsw i32 %6395, 1
  br label %6443

; <label>:6443                                    ; preds = %6437, %6433
  %6444 = phi i32 [ %6442, %6437 ], [ %6395, %6433 ]
  %6445 = add nuw nsw i32 %6396, 1
  %6446 = icmp eq i32 %6445, %6251
  br i1 %6446, label %6447, label %6394

; <label>:6447                                    ; preds = %6443
  %6448 = load float, float* %6388, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %6449 = load float, float* %6387, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %6450 = load float, float* %6386, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %6451 = load float, float* %6391, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %6452 = load float, float* %6390, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %6453 = load float, float* %6389, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %6454

; <label>:6454                                    ; preds = %6447, %6381
  %6455 = phi float [ -1.000000e+00, %6381 ], [ %6453, %6447 ]
  %6456 = phi float [ -1.000000e+00, %6381 ], [ %6452, %6447 ]
  %6457 = phi float [ -1.000000e+00, %6381 ], [ %6451, %6447 ]
  %6458 = phi float [ -1.000000e+00, %6381 ], [ %6450, %6447 ]
  %6459 = phi float [ -1.000000e+00, %6381 ], [ %6449, %6447 ]
  %6460 = phi float [ -1.000000e+00, %6381 ], [ %6448, %6447 ]
  %6461 = phi i32 [ 0, %6381 ], [ %6444, %6447 ]
  %6462 = call float @dx.op.binary.f32(i32 36, float %6459, float %6460)  ; FMin(a,b)
  %6463 = call float @dx.op.binary.f32(i32 36, float %6458, float %6462)  ; FMin(a,b)
  %6464 = call float @dx.op.binary.f32(i32 35, float %6458, float %6459)  ; FMax(a,b)
  %6465 = call float @dx.op.binary.f32(i32 36, float %6464, float %6460)  ; FMin(a,b)
  %6466 = call float @dx.op.binary.f32(i32 36, float %6458, float %6459)  ; FMin(a,b)
  %6467 = call float @dx.op.binary.f32(i32 35, float %6466, float %6465)  ; FMax(a,b)
  %6468 = call float @dx.op.binary.f32(i32 35, float %6459, float %6460)  ; FMax(a,b)
  %6469 = call float @dx.op.binary.f32(i32 35, float %6458, float %6468)  ; FMax(a,b)
  store float %6463, float* %6386, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %6467, float* %6387, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %6469, float* %6388, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %6470 = call float @dx.op.binary.f32(i32 36, float %6456, float %6457)  ; FMin(a,b)
  %6471 = call float @dx.op.binary.f32(i32 36, float %6455, float %6470)  ; FMin(a,b)
  %6472 = call float @dx.op.binary.f32(i32 35, float %6455, float %6456)  ; FMax(a,b)
  %6473 = call float @dx.op.binary.f32(i32 36, float %6472, float %6457)  ; FMin(a,b)
  %6474 = call float @dx.op.binary.f32(i32 36, float %6455, float %6456)  ; FMin(a,b)
  %6475 = call float @dx.op.binary.f32(i32 35, float %6474, float %6473)  ; FMax(a,b)
  %6476 = call float @dx.op.binary.f32(i32 35, float %6456, float %6457)  ; FMax(a,b)
  %6477 = call float @dx.op.binary.f32(i32 35, float %6455, float %6476)  ; FMax(a,b)
  store float %6471, float* %6389, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %6475, float* %6390, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %6477, float* %6391, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %6478 = sub nsw i32 3, %6461
  %6479 = icmp sgt i32 %6478, 2
  br i1 %6479, label %6480, label %6518

; <label>:6480                                    ; preds = %6454
  %6481 = icmp eq i32 %6249, 0
  %6482 = fsub fast float %6299, %6383
  %6483 = select i1 %6481, float %6482, float %6383
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6488, 3
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 3
  %6495 = call float @dx.op.binary.f32(i32 36, float %6384, float %6494)  ; FMin(a,b)
  %6496 = fmul fast float %6492, %6483
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = fsub fast float %6489, %6485
  %6499 = fsub fast float %6490, %6486
  %6500 = fsub fast float %6491, %6487
  %6501 = fmul fast float %6497, %6498
  %6502 = fmul fast float %6497, %6499
  %6503 = fmul fast float %6497, %6500
  %6504 = fadd fast float %6501, %6485
  %6505 = fadd fast float %6502, %6486
  %6506 = fadd fast float %6503, %6487
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = fadd fast float %6509, %6508
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6513 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6514 = fadd fast float %6513, %6512
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6511, %6495
  %6517 = fmul fast float %6516, %6515
  br label %6600

; <label>:6518                                    ; preds = %6454
  %6519 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6478
  %6520 = load float, float* %6519, align 4, !tbaa !106, !noalias !108
  %6521 = fcmp fast olt float %6520, %6385
  %6522 = icmp sgt i32 %6461, 0
  %6523 = and i1 %6522, %6521
  br i1 %6523, label %6524, label %6561

; <label>:6524                                    ; preds = %6518
  br label %6525

; <label>:6525                                    ; preds = %6554, %6524
  %6526 = phi float [ %6555, %6554 ], [ %6383, %6524 ]
  %6527 = phi float [ %6556, %6554 ], [ %6384, %6524 ]
  %6528 = phi float [ %6536, %6554 ], [ %6520, %6524 ]
  %6529 = phi i32 [ %6533, %6554 ], [ %6478, %6524 ]
  %6530 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6529
  %6531 = load float, float* %6530, align 4, !tbaa !106, !noalias !108
  %6532 = icmp slt i32 %6529, 2
  %6533 = add nsw i32 %6529, 1
  %6534 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %6533
  %6535 = load float, float* %6534, align 4, !tbaa !106, !noalias !108
  %6536 = select i1 %6532, float %6535, float %6299
  %6537 = call float @dx.op.binary.f32(i32 36, float %6536, float %6531)  ; FMin(a,b)
  %6538 = call float @dx.op.binary.f32(i32 36, float %6385, float %6537)  ; FMin(a,b)
  %6539 = icmp eq i32 %6249, 0
  %6540 = fadd fast float %6538, %6528
  %6541 = fmul fast float %6540, %6230
  %6542 = fadd fast float %6541, %6243
  br i1 %6539, label %6548, label %6543

; <label>:6543                                    ; preds = %6525
  %6544 = fsub fast float %6538, %6528
  %6545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6544)  ; FMax(a,b)
  %6546 = fmul fast float %6545, %6542
  %6547 = fadd fast float %6546, %6527
  br label %6554

; <label>:6548                                    ; preds = %6525
  %6549 = fsub fast float %6528, %6538
  %6550 = call float @dx.op.unary.f32(i32 6, float %6549)  ; FAbs(value)
  %6551 = fadd fast float %6550, %6526
  %6552 = fmul fast float %6550, %6542
  %6553 = fsub fast float %6527, %6552
  br label %6554

; <label>:6554                                    ; preds = %6548, %6543
  %6555 = phi float [ %6545, %6543 ], [ %6551, %6548 ]
  %6556 = phi float [ %6547, %6543 ], [ %6553, %6548 ]
  %6557 = fcmp fast olt float %6536, %6385
  %6558 = icmp slt i32 %6533, 3
  %6559 = and i1 %6558, %6557
  br i1 %6559, label %6525, label %6560

; <label>:6560                                    ; preds = %6554
  br label %6561

; <label>:6561                                    ; preds = %6560, %6518
  %6562 = phi float [ %6383, %6518 ], [ %6555, %6560 ]
  %6563 = phi float [ %6384, %6518 ], [ %6556, %6560 ]
  %6564 = fsub fast float %6299, %6562
  %6565 = select i1 %6301, float %6562, float %6564
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6569 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = extractvalue %dx.types.CBufRet.f32 %6570, 1
  %6573 = extractvalue %dx.types.CBufRet.f32 %6570, 2
  %6574 = extractvalue %dx.types.CBufRet.f32 %6570, 3
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 3
  %6577 = call float @dx.op.binary.f32(i32 36, float %6563, float %6576)  ; FMin(a,b)
  %6578 = fmul fast float %6574, %6565
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fsub fast float %6571, %6567
  %6581 = fsub fast float %6572, %6568
  %6582 = fsub fast float %6573, %6569
  %6583 = fmul fast float %6579, %6580
  %6584 = fmul fast float %6579, %6581
  %6585 = fmul fast float %6579, %6582
  %6586 = fadd fast float %6583, %6567
  %6587 = fadd fast float %6584, %6568
  %6588 = fadd fast float %6585, %6569
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6592 = fadd fast float %6591, %6590
  %6593 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6595 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6596 = fadd fast float %6595, %6594
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6598 = fmul fast float %6593, %6577
  %6599 = fmul fast float %6598, %6597
  br label %6600

; <label>:6600                                    ; preds = %6561, %6480, %6315, %6297, %6295
  %6601 = phi float [ %6324, %6315 ], [ %6483, %6480 ], [ %6565, %6561 ], [ 0.000000e+00, %6295 ], [ 0.000000e+00, %6297 ]
  %6602 = phi float [ %6358, %6315 ], [ %6517, %6480 ], [ %6599, %6561 ], [ 0.000000e+00, %6295 ], [ 0.000000e+00, %6297 ]
  %6603 = phi float [ %6345, %6315 ], [ %6504, %6480 ], [ %6586, %6561 ], [ 0.000000e+00, %6295 ], [ 0.000000e+00, %6297 ]
  %6604 = phi float [ %6346, %6315 ], [ %6505, %6480 ], [ %6587, %6561 ], [ 0.000000e+00, %6295 ], [ 0.000000e+00, %6297 ]
  %6605 = phi float [ %6347, %6315 ], [ %6506, %6480 ], [ %6588, %6561 ], [ 0.000000e+00, %6295 ], [ 0.000000e+00, %6297 ]
  %6606 = fmul fast float %6238, %6602
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 2
  %6609 = fsub fast float %6245, %6608
  %6610 = fcmp fast olt float %6606, -2.000000e+01
  %6611 = call float @dx.op.unary.f32(i32 21, float %6606)  ; Exp(value)
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 3
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6617 = fmul fast float %6614, %6609
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = fmul fast float %6230, 5.000000e-01
  %6621 = fadd fast float %6620, 5.000000e-01
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6623 = fsub fast float 1.000000e+00, %6622
  %6624 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6619)  ; FMax(a,b)
  %6625 = fdiv fast float %6623, %6624
  %6626 = fsub fast float %6609, %6187
  %6627 = call float @dx.op.unary.f32(i32 6, float %6626)  ; FAbs(value)
  %6628 = fmul fast float %6627, %6613
  %6629 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6630 = fsub fast float 1.000000e+00, %6628
  %6631 = fmul fast float %6630, %6629
  %6632 = fadd fast float %6631, %6628
  %6633 = fmul fast float %6616, %6609
  %6634 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6635 = fsub fast float 1.000000e+00, %6632
  %6636 = fmul fast float %6635, %6634
  %6637 = fadd fast float %6636, %6632
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fadd fast float %6611, -1.000000e+00
  %6640 = select i1 %6610, float -1.000000e+00, float %6639
  %6641 = fmul fast float %6638, %6640
  %6642 = fadd fast float %6641, 1.000000e+00
  %6643 = fsub fast float -0.000000e+00, %6641
  %6644 = fmul fast float %6603, %6643
  %6645 = fmul fast float %6604, %6643
  %6646 = fmul fast float %6605, %6643
  br label %6647

; <label>:6647                                    ; preds = %6600, %6196
  %6648 = phi float [ %6601, %6600 ], [ 0.000000e+00, %6196 ]
  %6649 = phi float [ %6642, %6600 ], [ 1.000000e+00, %6196 ]
  %6650 = phi float [ %6644, %6600 ], [ 0.000000e+00, %6196 ]
  %6651 = phi float [ %6645, %6600 ], [ 0.000000e+00, %6196 ]
  %6652 = phi float [ %6646, %6600 ], [ 0.000000e+00, %6196 ]
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6655 = fsub fast float 1.000000e+00, %6649
  %6656 = fmul fast float %6655, %6231
  %6657 = fmul fast float %6656, %6654
  %6658 = fsub fast float %6231, %6657
  br i1 %6224, label %6659, label %6688, !dx.controlflow.hints !144

; <label>:6659                                    ; preds = %6647
  %6660 = fmul fast float %6232, %6221
  %6661 = fadd fast float %6660, %6222
  %6662 = call float @dx.op.unary.f32(i32 7, float %6661)  ; Saturate(value)
  %6663 = fmul fast float %6203, %6658
  %6664 = fsub fast float -0.000000e+00, %6663
  %6665 = fmul fast float %6204, %6658
  %6666 = fsub fast float -0.000000e+00, %6665
  %6667 = call float @dx.op.unary.f32(i32 21, float %6664)  ; Exp(value)
  %6668 = call float @dx.op.unary.f32(i32 21, float %6666)  ; Exp(value)
  %6669 = call float @dx.op.binary.f32(i32 35, float %6211, float %6667)  ; FMax(a,b)
  %6670 = call float @dx.op.binary.f32(i32 35, float %6211, float %6668)  ; FMax(a,b)
  %6671 = fsub fast float %6670, %6669
  %6672 = fmul fast float %6671, %6662
  %6673 = fadd fast float %6672, %6669
  %6674 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6675 = fsub fast float %6208, %6213
  %6676 = fsub fast float %6209, %6214
  %6677 = fsub fast float %6210, %6215
  %6678 = fmul fast float %6662, %6675
  %6679 = fmul fast float %6662, %6676
  %6680 = fmul fast float %6662, %6677
  %6681 = fadd fast float %6678, %6213
  %6682 = fadd fast float %6679, %6214
  %6683 = fadd fast float %6680, %6215
  %6684 = fsub fast float 1.000000e+00, %6674
  %6685 = fmul fast float %6684, %6681
  %6686 = fmul fast float %6684, %6682
  %6687 = fmul fast float %6684, %6683
  br label %6747

; <label>:6688                                    ; preds = %6647
  %6689 = fmul fast float %6658, %6220
  %6690 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6691 = fsub fast float 2.000000e+00, %6690
  %6692 = fmul fast float %6690, 9.921875e-01
  %6693 = fmul fast float %6692, %6691
  %6694 = fadd fast float %6693, 3.906250e-03
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %6694, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = fsub fast float %6690, %6696
  %6698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6697)  ; FMax(a,b)
  %6699 = fmul fast float %6206, %6187
  %6700 = call float @dx.op.unary.f32(i32 6, float %6699)  ; FAbs(value)
  %6701 = fcmp fast ogt float %6700, 0x3EB0C6F7A0000000
  br i1 %6701, label %6702, label %6708, !dx.controlflow.hints !145

; <label>:6702                                    ; preds = %6688
  %6703 = fmul fast float %6699, 0xBFF7154760000000
  %6704 = call float @dx.op.unary.f32(i32 21, float %6703)  ; Exp(value)
  %6705 = fsub fast float 1.000000e+00, %6704
  %6706 = fdiv fast float %6705, %6699
  %6707 = fmul fast float %6706, %6216
  br label %6708

; <label>:6708                                    ; preds = %6702, %6688
  %6709 = phi float [ %6707, %6702 ], [ %6216, %6688 ]
  %6710 = fadd fast float %6709, %6218
  %6711 = fmul fast float %6710, %6698
  %6712 = fmul fast float %6203, %6711
  %6713 = fsub fast float -0.000000e+00, %6712
  %6714 = fmul fast float %6204, %6711
  %6715 = fsub fast float -0.000000e+00, %6714
  %6716 = fmul fast float %6205, %6711
  %6717 = fsub fast float -0.000000e+00, %6716
  %6718 = call float @dx.op.unary.f32(i32 21, float %6713)  ; Exp(value)
  %6719 = call float @dx.op.unary.f32(i32 21, float %6715)  ; Exp(value)
  %6720 = call float @dx.op.unary.f32(i32 21, float %6717)  ; Exp(value)
  %6721 = fmul fast float %6232, %6232
  %6722 = fadd fast float %6721, 1.000000e+00
  %6723 = fmul fast float %6722, 0x3FAE8EC8A0000000
  %6724 = fmul fast float %6723, %6213
  %6725 = fmul fast float %6723, %6214
  %6726 = fmul fast float %6723, %6215
  %6727 = fmul fast float %6232, %6211
  %6728 = fsub fast float 1.000000e+00, %6727
  %6729 = fmul fast float %6211, %6211
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = fmul fast float %6730, 0x3FB45F3060000000
  %6732 = fmul fast float %6728, %6728
  %6733 = fdiv fast float 1.000000e+00, %6732
  %6734 = fmul fast float %6731, %6733
  %6735 = fmul fast float %6734, %6208
  %6736 = fmul fast float %6734, %6209
  %6737 = fmul fast float %6734, %6210
  %6738 = fadd fast float %6735, %6724
  %6739 = fadd fast float %6736, %6725
  %6740 = fadd fast float %6737, %6726
  %6741 = fsub fast float 1.000000e+00, %6718
  %6742 = fsub fast float 1.000000e+00, %6719
  %6743 = fsub fast float 1.000000e+00, %6720
  %6744 = fmul fast float %6738, %6741
  %6745 = fmul fast float %6739, %6742
  %6746 = fmul fast float %6740, %6743
  br label %6747

; <label>:6747                                    ; preds = %6708, %6659
  %6748 = phi float [ %6685, %6659 ], [ %6744, %6708 ]
  %6749 = phi float [ %6686, %6659 ], [ %6745, %6708 ]
  %6750 = phi float [ %6687, %6659 ], [ %6746, %6708 ]
  %6751 = phi float [ %6674, %6659 ], [ %6718, %6708 ]
  %6752 = phi float [ %6674, %6659 ], [ %6719, %6708 ]
  %6753 = phi float [ %6674, %6659 ], [ %6720, %6708 ]
  br i1 %6240, label %6754, label %6952, !dx.controlflow.hints !146

; <label>:6754                                    ; preds = %6747
  %6755 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6756 = fmul fast float %6755, %6655
  %6757 = fsub fast float %6650, %6748
  %6758 = fsub fast float %6651, %6749
  %6759 = fsub fast float %6652, %6750
  %6760 = fmul fast float %6756, %6757
  %6761 = fmul fast float %6756, %6758
  %6762 = fmul fast float %6756, %6759
  %6763 = fadd fast float %6760, %6748
  %6764 = fadd fast float %6761, %6749
  %6765 = fadd fast float %6762, %6750
  %6766 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6751)  ; FMax(a,b)
  %6767 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6752)  ; FMax(a,b)
  %6768 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6753)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6649)  ; FMax(a,b)
  %6770 = call float @dx.op.binary.f32(i32 35, float %6648, float %6658)  ; FMax(a,b)
  %6771 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6770)  ; FMax(a,b)
  %6772 = fdiv fast float %6648, %6771
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = fdiv fast float %6658, %6771
  %6775 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6776 = fcmp fast une float %6769, 1.000000e+00
  br i1 %6776, label %6777, label %6790, !dx.controlflow.hints !147

; <label>:6777                                    ; preds = %6754
  %6778 = call float @dx.op.unary.f32(i32 23, float %6769)  ; Log(value)
  %6779 = fmul fast float %6778, 0x3FE62E4300000000
  %6780 = fmul fast float %6650, %6779
  %6781 = fsub fast float -0.000000e+00, %6780
  %6782 = fmul fast float %6651, %6779
  %6783 = fsub fast float -0.000000e+00, %6782
  %6784 = fmul fast float %6652, %6779
  %6785 = fsub fast float -0.000000e+00, %6784
  %6786 = fsub fast float 1.000000e+00, %6769
  %6787 = fdiv fast float %6781, %6786
  %6788 = fdiv fast float %6783, %6786
  %6789 = fdiv fast float %6785, %6786
  br label %6790

; <label>:6790                                    ; preds = %6777, %6754
  %6791 = phi float [ %6787, %6777 ], [ %6650, %6754 ]
  %6792 = phi float [ %6788, %6777 ], [ %6651, %6754 ]
  %6793 = phi float [ %6789, %6777 ], [ %6652, %6754 ]
  %6794 = phi float [ %6779, %6777 ], [ 0.000000e+00, %6754 ]
  %6795 = fcmp fast une float %6766, 1.000000e+00
  br i1 %6795, label %6796, label %6803, !dx.controlflow.hints !148

; <label>:6796                                    ; preds = %6790
  %6797 = call float @dx.op.unary.f32(i32 23, float %6766)  ; Log(value)
  %6798 = fmul fast float %6797, 0x3FE62E4300000000
  %6799 = fmul fast float %6763, %6798
  %6800 = fsub fast float -0.000000e+00, %6799
  %6801 = fsub fast float 1.000000e+00, %6766
  %6802 = fdiv fast float %6800, %6801
  br label %6803

; <label>:6803                                    ; preds = %6796, %6790
  %6804 = phi float [ %6802, %6796 ], [ %6763, %6790 ]
  %6805 = phi float [ %6798, %6796 ], [ 0.000000e+00, %6790 ]
  %6806 = fcmp fast une float %6767, 1.000000e+00
  br i1 %6806, label %6807, label %6814, !dx.controlflow.hints !148

; <label>:6807                                    ; preds = %6803
  %6808 = call float @dx.op.unary.f32(i32 23, float %6767)  ; Log(value)
  %6809 = fmul fast float %6808, 0x3FE62E4300000000
  %6810 = fmul fast float %6764, %6809
  %6811 = fsub fast float -0.000000e+00, %6810
  %6812 = fsub fast float 1.000000e+00, %6767
  %6813 = fdiv fast float %6811, %6812
  br label %6814

; <label>:6814                                    ; preds = %6807, %6803
  %6815 = phi float [ %6813, %6807 ], [ %6764, %6803 ]
  %6816 = phi float [ %6809, %6807 ], [ 0.000000e+00, %6803 ]
  %6817 = fcmp fast une float %6768, 1.000000e+00
  br i1 %6817, label %6818, label %6825, !dx.controlflow.hints !148

; <label>:6818                                    ; preds = %6814
  %6819 = call float @dx.op.unary.f32(i32 23, float %6768)  ; Log(value)
  %6820 = fmul fast float %6819, 0x3FE62E4300000000
  %6821 = fmul fast float %6765, %6820
  %6822 = fsub fast float -0.000000e+00, %6821
  %6823 = fsub fast float 1.000000e+00, %6768
  %6824 = fdiv fast float %6822, %6823
  br label %6825

; <label>:6825                                    ; preds = %6818, %6814
  %6826 = phi float [ %6824, %6818 ], [ %6765, %6814 ]
  %6827 = phi float [ %6820, %6818 ], [ 0.000000e+00, %6814 ]
  %6828 = fmul fast float %6791, %6775
  %6829 = fmul fast float %6792, %6775
  %6830 = fmul fast float %6793, %6775
  %6831 = fmul fast float %6794, %6775
  %6832 = fmul fast float %6804, %6773
  %6833 = fmul fast float %6815, %6773
  %6834 = fmul fast float %6826, %6773
  %6835 = fmul fast float %6805, %6773
  %6836 = fmul fast float %6816, %6773
  %6837 = fmul fast float %6827, %6773
  %6838 = fadd fast float %6832, %6828
  %6839 = fadd fast float %6833, %6829
  %6840 = fadd fast float %6834, %6830
  %6841 = fadd fast float %6835, %6831
  %6842 = fadd fast float %6836, %6831
  %6843 = fadd fast float %6837, %6831
  %6844 = fcmp fast une float %6841, 0.000000e+00
  br i1 %6844, label %6845, label %6852, !dx.controlflow.hints !149

; <label>:6845                                    ; preds = %6825
  %6846 = fmul fast float %6841, 0x3FF7154760000000
  %6847 = call float @dx.op.unary.f32(i32 21, float %6846)  ; Exp(value)
  %6848 = fsub fast float 1.000000e+00, %6847
  %6849 = fmul fast float %6838, %6848
  %6850 = fsub fast float -0.000000e+00, %6849
  %6851 = fdiv fast float %6850, %6841
  br label %6852

; <label>:6852                                    ; preds = %6845, %6825
  %6853 = phi float [ %6847, %6845 ], [ 1.000000e+00, %6825 ]
  %6854 = phi float [ %6851, %6845 ], [ %6838, %6825 ]
  %6855 = fcmp fast une float %6842, 0.000000e+00
  br i1 %6855, label %6856, label %6863, !dx.controlflow.hints !149

; <label>:6856                                    ; preds = %6852
  %6857 = fmul fast float %6842, 0x3FF7154760000000
  %6858 = call float @dx.op.unary.f32(i32 21, float %6857)  ; Exp(value)
  %6859 = fsub fast float 1.000000e+00, %6858
  %6860 = fmul fast float %6839, %6859
  %6861 = fsub fast float -0.000000e+00, %6860
  %6862 = fdiv fast float %6861, %6842
  br label %6863

; <label>:6863                                    ; preds = %6856, %6852
  %6864 = phi float [ %6858, %6856 ], [ 1.000000e+00, %6852 ]
  %6865 = phi float [ %6862, %6856 ], [ %6839, %6852 ]
  %6866 = fcmp fast une float %6843, 0.000000e+00
  br i1 %6866, label %6867, label %6874, !dx.controlflow.hints !149

; <label>:6867                                    ; preds = %6863
  %6868 = fmul fast float %6843, 0x3FF7154760000000
  %6869 = call float @dx.op.unary.f32(i32 21, float %6868)  ; Exp(value)
  %6870 = fsub fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6840, %6870
  %6872 = fsub fast float -0.000000e+00, %6871
  %6873 = fdiv fast float %6872, %6843
  br label %6874

; <label>:6874                                    ; preds = %6867, %6863
  %6875 = phi float [ %6869, %6867 ], [ 1.000000e+00, %6863 ]
  %6876 = phi float [ %6873, %6867 ], [ %6840, %6863 ]
  %6877 = fcmp fast ogt float %6773, %6775
  br i1 %6877, label %6878, label %6898

; <label>:6878                                    ; preds = %6874
  %6879 = fsub fast float 1.000000e+00, %6775
  %6880 = fmul fast float %6791, %6879
  %6881 = fmul fast float %6792, %6879
  %6882 = fmul fast float %6793, %6879
  %6883 = fmul fast float %6794, %6879
  %6884 = fcmp fast une float %6883, 0.000000e+00
  br i1 %6884, label %6885, label %6936, !dx.controlflow.hints !150

; <label>:6885                                    ; preds = %6878
  %6886 = fmul fast float %6883, 0x3FF7154760000000
  %6887 = call float @dx.op.unary.f32(i32 21, float %6886)  ; Exp(value)
  %6888 = fsub fast float 1.000000e+00, %6887
  %6889 = fmul fast float %6880, %6888
  %6890 = fsub fast float -0.000000e+00, %6889
  %6891 = fmul fast float %6881, %6888
  %6892 = fsub fast float -0.000000e+00, %6891
  %6893 = fmul fast float %6882, %6888
  %6894 = fsub fast float -0.000000e+00, %6893
  %6895 = fdiv fast float %6890, %6883
  %6896 = fdiv fast float %6892, %6883
  %6897 = fdiv fast float %6894, %6883
  br label %6936

; <label>:6898                                    ; preds = %6874
  %6899 = fsub fast float 1.000000e+00, %6773
  %6900 = fmul fast float %6804, %6899
  %6901 = fmul fast float %6815, %6899
  %6902 = fmul fast float %6826, %6899
  %6903 = fmul fast float %6805, %6899
  %6904 = fmul fast float %6816, %6899
  %6905 = fmul fast float %6827, %6899
  %6906 = fcmp fast une float %6903, 0.000000e+00
  br i1 %6906, label %6907, label %6914, !dx.controlflow.hints !149

; <label>:6907                                    ; preds = %6898
  %6908 = fmul fast float %6903, 0x3FF7154760000000
  %6909 = call float @dx.op.unary.f32(i32 21, float %6908)  ; Exp(value)
  %6910 = fsub fast float 1.000000e+00, %6909
  %6911 = fmul fast float %6900, %6910
  %6912 = fsub fast float -0.000000e+00, %6911
  %6913 = fdiv fast float %6912, %6903
  br label %6914

; <label>:6914                                    ; preds = %6907, %6898
  %6915 = phi float [ %6913, %6907 ], [ %6900, %6898 ]
  %6916 = phi float [ %6909, %6907 ], [ 1.000000e+00, %6898 ]
  %6917 = fcmp fast une float %6904, 0.000000e+00
  br i1 %6917, label %6918, label %6925, !dx.controlflow.hints !149

; <label>:6918                                    ; preds = %6914
  %6919 = fmul fast float %6904, 0x3FF7154760000000
  %6920 = call float @dx.op.unary.f32(i32 21, float %6919)  ; Exp(value)
  %6921 = fsub fast float 1.000000e+00, %6920
  %6922 = fmul fast float %6901, %6921
  %6923 = fsub fast float -0.000000e+00, %6922
  %6924 = fdiv fast float %6923, %6904
  br label %6925

; <label>:6925                                    ; preds = %6918, %6914
  %6926 = phi float [ %6924, %6918 ], [ %6901, %6914 ]
  %6927 = phi float [ %6920, %6918 ], [ 1.000000e+00, %6914 ]
  %6928 = fcmp fast une float %6905, 0.000000e+00
  br i1 %6928, label %6929, label %6936, !dx.controlflow.hints !149

; <label>:6929                                    ; preds = %6925
  %6930 = fmul fast float %6905, 0x3FF7154760000000
  %6931 = call float @dx.op.unary.f32(i32 21, float %6930)  ; Exp(value)
  %6932 = fsub fast float 1.000000e+00, %6931
  %6933 = fmul fast float %6902, %6932
  %6934 = fsub fast float -0.000000e+00, %6933
  %6935 = fdiv fast float %6934, %6905
  br label %6936

; <label>:6936                                    ; preds = %6929, %6925, %6885, %6878
  %6937 = phi float [ %6935, %6929 ], [ %6897, %6885 ], [ %6882, %6878 ], [ %6902, %6925 ]
  %6938 = phi float [ %6926, %6929 ], [ %6896, %6885 ], [ %6881, %6878 ], [ %6926, %6925 ]
  %6939 = phi float [ %6915, %6929 ], [ %6895, %6885 ], [ %6880, %6878 ], [ %6915, %6925 ]
  %6940 = phi float [ %6931, %6929 ], [ %6887, %6885 ], [ 1.000000e+00, %6878 ], [ 1.000000e+00, %6925 ]
  %6941 = phi float [ %6927, %6929 ], [ %6887, %6885 ], [ 1.000000e+00, %6878 ], [ %6927, %6925 ]
  %6942 = phi float [ %6916, %6929 ], [ %6887, %6885 ], [ 1.000000e+00, %6878 ], [ %6916, %6925 ]
  %6943 = fmul fast float %6942, %6854
  %6944 = fmul fast float %6941, %6865
  %6945 = fmul fast float %6940, %6876
  %6946 = fadd fast float %6943, %6939
  %6947 = fadd fast float %6944, %6938
  %6948 = fadd fast float %6945, %6937
  %6949 = fmul fast float %6942, %6853
  %6950 = fmul fast float %6941, %6864
  %6951 = fmul fast float %6940, %6875
  br label %6952

; <label>:6952                                    ; preds = %6936, %6747
  %6953 = phi float [ %6951, %6936 ], [ %6753, %6747 ]
  %6954 = phi float [ %6950, %6936 ], [ %6752, %6747 ]
  %6955 = phi float [ %6949, %6936 ], [ %6751, %6747 ]
  %6956 = phi float [ %6948, %6936 ], [ %6750, %6747 ]
  %6957 = phi float [ %6947, %6936 ], [ %6749, %6747 ]
  %6958 = phi float [ %6946, %6936 ], [ %6748, %6747 ]
  %6959 = fmul fast float %6958, %5904
  %6960 = fmul fast float %6957, %5904
  %6961 = fmul fast float %6956, %5904
  %6962 = fmul fast float %6955, %6195
  %6963 = call float @dx.op.dot3.f32(i32 55, float %6955, float %6954, float %6953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6964 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %6961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6965 = select i1 %209, float %6963, float %6955
  %6966 = select i1 %209, float %6963, float %6954
  %6967 = select i1 %209, float 1.000000e+00, float %6953
  %6968 = select i1 %209, float %6964, float %6959
  %6969 = select i1 %209, float 0.000000e+00, float %6960
  %6970 = select i1 %209, float 0.000000e+00, float %6961
  %6971 = fmul fast float %6965, %6189
  %6972 = fmul fast float %6966, %6190
  %6973 = fmul fast float %6967, %6191
  %6974 = fadd fast float %6971, %6968
  %6975 = fadd fast float %6972, %6969
  %6976 = fadd fast float %6970, %6973
  %6977 = fmul fast float %6965, %6192
  %6978 = fmul fast float %6966, %6193
  %6979 = fmul fast float %6967, %6194
  %6980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.i32 %6980, 0
  %6982 = icmp eq i32 %6981, 0
  br i1 %6982, label %7350, label %6983, !dx.controlflow.hints !151

; <label>:6983                                    ; preds = %6952
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 2
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 3
  %6987 = fmul fast float %6985, %89
  %6988 = fmul fast float %6986, %90
  %6989 = fmul fast float %6987, 2.000000e+00
  %6990 = fmul fast float %6988, 2.000000e+00
  %6991 = fsub fast float 1.000000e+00, %6989
  %6992 = fsub fast float 1.000000e+00, %6990
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %6997 = fmul fast float %6991, %6994
  %6998 = fmul fast float %6991, %6995
  %6999 = fmul fast float %6991, %6996
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 0
  %7002 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %7003 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %7004 = fmul fast float %6992, %7001
  %7005 = fmul fast float %6992, %7002
  %7006 = fmul fast float %6992, %7003
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.CBufRet.f32 %7007, 2
  %7011 = fadd fast float %7004, %7008
  %7012 = fadd fast float %7011, %6997
  %7013 = fadd fast float %7005, %7009
  %7014 = fadd fast float %7013, %6998
  %7015 = fadd fast float %7006, %7010
  %7016 = fadd fast float %7015, %6999
  %7017 = fmul fast float %7012, %6188
  %7018 = fmul fast float %7014, %6188
  %7019 = fmul fast float %7016, %6188
  %7020 = fmul fast float %7017, %7017
  %7021 = fmul fast float %7018, %7018
  %7022 = fadd fast float %7020, %7021
  %7023 = fmul fast float %7019, %7019
  %7024 = fadd fast float %7022, %7023
  %7025 = call float @dx.op.unary.f32(i32 24, float %7024)  ; Sqrt(value)
  %7026 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %7027 = fsub fast float %7025, %7026
  %7028 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %7029 = fmul fast float %7027, %7028
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = fadd fast float %7030, -5.000000e-01
  %7032 = fmul fast float %7031, 2.000000e+00
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7035 = call float @dx.op.binary.f32(i32 36, float %7034, float %7032)  ; FMin(a,b)
  %7036 = fsub fast float -0.000000e+00, %7034
  %7037 = fcmp fast ogt float %7035, %7036
  br i1 %7037, label %7038, label %7350, !dx.controlflow.hints !152

; <label>:7038                                    ; preds = %6983
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 3
  %7041 = fcmp fast ogt float %7040, 0.000000e+00
  br i1 %7041, label %7042, label %7117, !dx.controlflow.hints !153

; <label>:7042                                    ; preds = %7038
  %7043 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %7044 = extractvalue %dx.types.Dimensions %7043, 0
  %7045 = sitofp i32 %7044 to float
  %7046 = extractvalue %dx.types.Dimensions %7043, 1
  %7047 = sitofp i32 %7046 to float
  %7048 = fmul fast float %6987, %7045
  %7049 = fmul fast float %6988, %7047
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7052 = fsub fast float -0.000000e+00, %7051
  %7053 = fptoui float %7052 to i32
  %7054 = fptoui float %7048 to i32
  %7055 = fptoui float %7049 to i32
  %7056 = and i32 %7053, 31
  %7057 = lshr i32 %7054, %7056
  %7058 = lshr i32 %7055, %7056
  %7059 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %7053, i32 %7057, i32 %7058, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = fcmp fast olt float %7060, -1.000000e+00
  %7062 = fcmp fast ogt float %7060, -1.000000e+00
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 1
  %7065 = select i1 %7062, float %7064, float 1.000000e+00
  %7066 = fadd fast float %7060, 1.000000e+00
  %7067 = fmul fast float %7065, %7066
  %7068 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7069 = extractvalue %dx.types.CBufRet.f32 %7063, 3
  %7070 = fcmp fast oge float %7068, %7069
  %7071 = select i1 %7070, float 0x4197782600000000, float %7068
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.CBufRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.CBufRet.f32 %7072, 2
  %7076 = select i1 %7061, float %7073, float %6994
  %7077 = select i1 %7061, float %7074, float %6995
  %7078 = select i1 %7061, float %7075, float %6996
  %7079 = fmul fast float %7076, %6991
  %7080 = fmul fast float %7077, %6991
  %7081 = fmul fast float %7078, %6991
  %7082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.CBufRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.CBufRet.f32 %7082, 2
  %7086 = select i1 %7061, float %7083, float %7001
  %7087 = select i1 %7061, float %7084, float %7002
  %7088 = select i1 %7061, float %7085, float %7003
  %7089 = fmul fast float %7086, %6992
  %7090 = fmul fast float %7087, %6992
  %7091 = fmul fast float %7088, %6992
  %7092 = fadd fast float %7089, %7079
  %7093 = fadd fast float %7090, %7080
  %7094 = fadd fast float %7091, %7081
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = select i1 %7061, float %7096, float %7008
  %7100 = select i1 %7061, float %7097, float %7009
  %7101 = select i1 %7061, float %7098, float %7010
  %7102 = fadd fast float %7092, %7099
  %7103 = fadd fast float %7093, %7100
  %7104 = fadd fast float %7094, %7101
  %7105 = fmul fast float %7102, %7071
  %7106 = fmul fast float %7103, %7071
  %7107 = fmul fast float %7104, %7071
  %7108 = fmul fast float %7105, %7105
  %7109 = fmul fast float %7106, %7106
  %7110 = fadd fast float %7108, %7109
  %7111 = fmul fast float %7107, %7107
  %7112 = fadd fast float %7110, %7111
  %7113 = call float @dx.op.unary.f32(i32 24, float %7112)  ; Sqrt(value)
  %7114 = fsub fast float %7113, %7026
  %7115 = fmul fast float %7114, %7028
  %7116 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  br label %7117

; <label>:7117                                    ; preds = %7042, %7038
  %7118 = phi float [ %7116, %7042 ], [ 1.000000e+00, %7038 ]
  %7119 = fmul fast float %7035, 5.000000e-01
  %7120 = fadd fast float %7119, 5.000000e-01
  %7121 = call float @dx.op.unary.f32(i32 22, float %7120)  ; Frc(value)
  %7122 = call float @dx.op.unary.f32(i32 27, float %7121)  ; Round_ni(value)
  %7123 = call float @dx.op.unary.f32(i32 22, float %7121)  ; Frc(value)
  %7124 = fmul fast float %7123, 2.000000e+00
  %7125 = fadd fast float %7124, -1.000000e+00
  %7126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6987, float %6988, float %7122, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7127 = extractvalue %dx.types.ResRet.f32 %7126, 0
  %7128 = extractvalue %dx.types.ResRet.f32 %7126, 1
  %7129 = extractvalue %dx.types.ResRet.f32 %7126, 2
  %7130 = extractvalue %dx.types.ResRet.f32 %7126, 3
  %7131 = fadd fast float %7127, -5.000000e-01
  %7132 = fadd fast float %7129, -5.000000e-01
  %7133 = fmul fast float %7131, 0xBFD5555560000000
  %7134 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7132, float %7133)  ; FMad(a,b,c)
  %7135 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7128, float 0.000000e+00)  ; FMad(a,b,c)
  %7136 = fadd fast float %7135, %7130
  %7137 = fmul fast float %7131, -7.500000e-01
  %7138 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7132, float %7137)  ; FMad(a,b,c)
  %7139 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7128, float 0.000000e+00)  ; FMad(a,b,c)
  %7140 = fadd fast float %7139, %7130
  %7141 = call float @dx.op.binary.f32(i32 35, float %7134, float -1.000000e+00)  ; FMax(a,b)
  %7142 = call float @dx.op.binary.f32(i32 35, float %7136, float -1.000000e+00)  ; FMax(a,b)
  %7143 = call float @dx.op.binary.f32(i32 35, float %7138, float -1.000000e+00)  ; FMax(a,b)
  %7144 = call float @dx.op.binary.f32(i32 35, float %7140, float -1.000000e+00)  ; FMax(a,b)
  %7145 = call float @dx.op.binary.f32(i32 36, float %7141, float 1.000000e+00)  ; FMin(a,b)
  %7146 = call float @dx.op.binary.f32(i32 36, float %7142, float 1.000000e+00)  ; FMin(a,b)
  %7147 = call float @dx.op.binary.f32(i32 36, float %7143, float 1.000000e+00)  ; FMin(a,b)
  %7148 = call float @dx.op.binary.f32(i32 36, float %7144, float 1.000000e+00)  ; FMin(a,b)
  %7149 = fcmp fast olt float %7145, 0x3FEFFF8020000000
  br i1 %7149, label %7150, label %7265, !dx.controlflow.hints !154

; <label>:7150                                    ; preds = %7117
  %7151 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.CBufRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.CBufRet.f32 %7152, 3
  %7157 = fsub fast float %7153, %7145
  %7158 = fsub fast float %7154, %7146
  %7159 = fsub fast float %7155, %7147
  %7160 = fsub fast float %7156, %7148
  %7161 = fmul fast float %7157, %7151
  %7162 = fmul fast float %7158, %7151
  %7163 = fmul fast float %7159, %7151
  %7164 = fmul fast float %7160, %7151
  %7165 = fadd fast float %7161, %7145
  %7166 = fadd fast float %7162, %7146
  %7167 = fsub fast float -0.000000e+00, %7166
  %7168 = fadd fast float %7163, %7147
  %7169 = fadd fast float %7164, %7148
  %7170 = fmul fast float %7165, %7165
  %7171 = fsub fast float %7166, %7170
  %7172 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7171)  ; FMax(a,b)
  %7173 = fdiv fast float 1.000000e+00, %7172
  %7174 = fmul fast float %7166, %7165
  %7175 = fsub fast float %7168, %7174
  %7176 = fsub fast float %7125, %7165
  %7177 = fmul fast float %7125, %7125
  %7178 = fsub fast float %7177, %7166
  %7179 = fmul fast float %7176, %7173
  %7180 = fmul fast float %7179, %7175
  %7181 = fsub fast float %7178, %7180
  %7182 = fmul fast float %7166, %7166
  %7183 = fsub fast float %7169, %7182
  %7184 = fmul fast float %7175, %7175
  %7185 = fmul fast float %7184, %7173
  %7186 = fsub fast float %7183, %7185
  %7187 = fdiv fast float %7181, %7186
  %7188 = fmul fast float %7175, %7187
  %7189 = fsub fast float %7176, %7188
  %7190 = fmul fast float %7189, %7173
  %7191 = fmul fast float %7190, %7165
  %7192 = fsub fast float 1.000000e+00, %7191
  %7193 = fmul fast float %7166, %7187
  %7194 = fsub fast float %7192, %7193
  %7195 = fmul fast float %7190, %7190
  %7196 = fmul fast float %7187, 4.000000e+00
  %7197 = fmul fast float %7196, %7194
  %7198 = fsub fast float %7195, %7197
  %7199 = call float @dx.op.unary.f32(i32 24, float %7198)  ; Sqrt(value)
  %7200 = fcmp fast oge float %7190, 0.000000e+00
  %7201 = fsub fast float -0.000000e+00, %7199
  %7202 = select i1 %7200, float %7201, float %7199
  %7203 = fsub fast float %7202, %7190
  %7204 = fdiv fast float %7203, %7187
  %7205 = fdiv fast float %7194, %7203
  %7206 = fmul fast float %7204, 5.000000e-01
  %7207 = fmul fast float %7205, 2.000000e+00
  %7208 = select i1 %7200, float %7206, float %7207
  %7209 = select i1 %7200, float %7207, float %7206
  %7210 = call float @dx.op.binary.f32(i32 35, float %7208, float %7209)  ; FMax(a,b)
  %7211 = call float @dx.op.binary.f32(i32 36, float %7208, float %7209)  ; FMin(a,b)
  %7212 = fcmp fast ogt float %7125, %7211
  br i1 %7212, label %7213, label %7223

; <label>:7213                                    ; preds = %7150
  %7214 = fsub fast float %7125, %7211
  %7215 = fsub fast float %7210, %7211
  %7216 = fmul fast float %7214, %7215
  %7217 = fmul fast float %7210, %7125
  %7218 = fadd fast float %7210, %7125
  %7219 = fmul fast float %7218, %7165
  %7220 = fadd fast float %7217, %7166
  %7221 = fsub fast float %7220, %7219
  %7222 = fdiv fast float %7221, %7216
  br label %7223

; <label>:7223                                    ; preds = %7213, %7150
  %7224 = phi float [ %7222, %7213 ], [ 0.000000e+00, %7150 ]
  %7225 = fcmp fast ogt float %7125, %7210
  %7226 = fsub fast float %7125, %7210
  br i1 %7225, label %7227, label %7237

; <label>:7227                                    ; preds = %7223
  %7228 = fsub fast float %7210, %7211
  %7229 = fmul fast float %7228, %7226
  %7230 = fmul fast float %7211, %7125
  %7231 = fadd fast float %7211, %7125
  %7232 = fmul fast float %7231, %7165
  %7233 = fsub fast float %7167, %7230
  %7234 = fadd fast float %7233, %7232
  %7235 = fdiv fast float %7234, %7229
  %7236 = fadd fast float %7235, %7224
  br label %7237

; <label>:7237                                    ; preds = %7227, %7223
  %7238 = phi float [ %7236, %7227 ], [ %7224, %7223 ]
  %7239 = fsub fast float %7125, %7211
  %7240 = fmul fast float %7239, %7226
  %7241 = fmul fast float %7211, %7210
  %7242 = fadd fast float %7211, %7210
  %7243 = fmul fast float %7242, %7165
  %7244 = fadd fast float %7241, %7166
  %7245 = fsub fast float %7244, %7243
  %7246 = fdiv fast float %7245, %7240
  %7247 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7248 = fcmp fast oeq float %5916, 0.000000e+00
  %7249 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7250 = fcmp fast oeq float %7249, 0.000000e+00
  %7251 = or i1 %7248, %7250
  %7252 = fmul fast float %7249, 2.000000e+00
  %7253 = fadd fast float %7034, %7035
  %7254 = fdiv fast float %7253, %7252
  %7255 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7256 = fmul fast float %7255, 2.000000e+00
  %7257 = fsub fast float 3.000000e+00, %7256
  %7258 = fmul fast float %7255, %7255
  %7259 = fmul fast float %7258, %7257
  %7260 = select i1 %7251, float 1.000000e+00, float %7259
  %7261 = fmul fast float %7246, %5916
  %7262 = fadd fast float %7247, %7261
  %7263 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7264 = fmul fast float %7260, %7263
  br label %7265

; <label>:7265                                    ; preds = %7237, %7117
  %7266 = phi float [ %7264, %7237 ], [ 0.000000e+00, %7117 ]
  %7267 = fsub fast float 1.000000e+00, %7266
  %7268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.i32 %7270, 2
  %7272 = icmp eq i32 %7271, 0
  br i1 %7272, label %7278, label %7273

; <label>:7273                                    ; preds = %7265
  %7274 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7275 = fadd fast float %7269, -1.000000e+00
  %7276 = fmul fast float %7274, %7275
  %7277 = fadd fast float %7276, 1.000000e+00
  br label %7278

; <label>:7278                                    ; preds = %7273, %7265
  %7279 = phi float [ %7277, %7273 ], [ %7267, %7265 ]
  br i1 %7041, label %7280, label %7298

; <label>:7280                                    ; preds = %7278
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7283 = fsub fast float %7118, %7282
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = fsub fast float %7118, %7040
  %7286 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7287 = fsub fast float %7284, %7286
  %7288 = fsub fast float %7120, %7286
  %7289 = fdiv fast float %7288, %7287
  %7290 = call float @dx.op.unary.f32(i32 7, float %7289)  ; Saturate(value)
  %7291 = fmul fast float %7290, 2.000000e+00
  %7292 = fsub fast float 3.000000e+00, %7291
  %7293 = fsub fast float %7269, %7279
  %7294 = fmul fast float %7290, %7290
  %7295 = fmul fast float %7294, %7293
  %7296 = fmul fast float %7295, %7292
  %7297 = fadd fast float %7296, %7279
  br label %7298

; <label>:7298                                    ; preds = %7280, %7278
  %7299 = phi float [ %7297, %7280 ], [ %7279, %7278 ]
  %7300 = call float @dx.op.binary.f32(i32 35, float %7269, float %7299)  ; FMax(a,b)
  %7301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.i32 %7301, 2
  %7303 = and i32 %7302, 1
  %7304 = icmp eq i32 %7303, 0
  %7305 = fcmp fast une float %7300, 1.000000e+00
  %7306 = and i1 %7305, %7304
  br i1 %7306, label %7307, label %7326

; <label>:7307                                    ; preds = %7298
  %7308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7309 = extractvalue %dx.types.ResRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.ResRet.f32 %7308, 1
  %7311 = extractvalue %dx.types.ResRet.f32 %7308, 2
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7314 = fmul fast float %7313, %7309
  %7315 = fmul fast float %7313, %7310
  %7316 = fmul fast float %7313, %7311
  %7317 = fcmp fast ogt float %7269, 0x3FEFFF2E40000000
  %7318 = fsub fast float 1.000000e+00, %7300
  %7319 = fsub fast float 1.000000e+00, %7269
  %7320 = fdiv fast float %7318, %7319
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  %7322 = select i1 %7317, float 0.000000e+00, float %7321
  %7323 = fmul fast float %7314, %7322
  %7324 = fmul fast float %7315, %7322
  %7325 = fmul fast float %7316, %7322
  br label %7326

; <label>:7326                                    ; preds = %7307, %7298
  %7327 = phi float [ 0.000000e+00, %7298 ], [ %7323, %7307 ]
  %7328 = phi float [ 0.000000e+00, %7298 ], [ %7324, %7307 ]
  %7329 = phi float [ 0.000000e+00, %7298 ], [ %7325, %7307 ]
  %7330 = fmul fast float %7327, %5904
  %7331 = fmul fast float %7328, %5904
  %7332 = fmul fast float %7329, %5904
  %7333 = fmul fast float %7300, %6962
  %7334 = call float @dx.op.dot3.f32(i32 55, float %7300, float %7300, float %7300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7335 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7336 = select i1 %209, float %7334, float %7300
  %7337 = select i1 %209, float 1.000000e+00, float %7300
  %7338 = select i1 %209, float %7335, float %7330
  %7339 = select i1 %209, float 0.000000e+00, float %7331
  %7340 = select i1 %209, float 0.000000e+00, float %7332
  %7341 = fmul fast float %7336, %6974
  %7342 = fmul fast float %7336, %6975
  %7343 = fmul fast float %7337, %6976
  %7344 = fadd fast float %7341, %7338
  %7345 = fadd fast float %7342, %7339
  %7346 = fadd fast float %7340, %7343
  %7347 = fmul fast float %7336, %6977
  %7348 = fmul fast float %7336, %6978
  %7349 = fmul fast float %7337, %6979
  br label %7350

; <label>:7350                                    ; preds = %7326, %6983, %6952, %6184
  %7351 = phi float [ %6189, %6184 ], [ %6974, %6952 ], [ %7344, %7326 ], [ %6974, %6983 ]
  %7352 = phi float [ %6190, %6184 ], [ %6975, %6952 ], [ %7345, %7326 ], [ %6975, %6983 ]
  %7353 = phi float [ %6191, %6184 ], [ %6976, %6952 ], [ %7346, %7326 ], [ %6976, %6983 ]
  %7354 = phi float [ %6192, %6184 ], [ %6977, %6952 ], [ %7347, %7326 ], [ %6977, %6983 ]
  %7355 = phi float [ %6193, %6184 ], [ %6978, %6952 ], [ %7348, %7326 ], [ %6978, %6983 ]
  %7356 = phi float [ %6194, %6184 ], [ %6979, %6952 ], [ %7349, %7326 ], [ %6979, %6983 ]
  %7357 = phi float [ %6195, %6184 ], [ %6962, %6952 ], [ %7333, %7326 ], [ %6962, %6983 ]
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7361 = fmul fast float %7359, %89
  %7362 = fmul fast float %7360, %90
  %7363 = call float @dx.op.unary.f32(i32 7, float %7361)  ; Saturate(value)
  %7364 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7365 = select i1 %5926, i32 2, i32 0
  %7366 = or i32 %7365, 1
  %7367 = uitofp i32 %7366 to float
  %7368 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7363, float %7364, float %7367, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7369 = extractvalue %dx.types.ResRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.ResRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.ResRet.f32 %7368, 2
  %7372 = extractvalue %dx.types.ResRet.f32 %7368, 3
  %7373 = add nuw nsw i32 %7365, 2
  %7374 = uitofp i32 %7373 to float
  %7375 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7363, float %7364, float %7374, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = extractvalue %dx.types.ResRet.f32 %7375, 3
  %7380 = call float @dx.op.binary.f32(i32 35, float %7370, float %7371)  ; FMax(a,b)
  %7381 = call float @dx.op.binary.f32(i32 35, float %7369, float %7380)  ; FMax(a,b)
  %7382 = call float @dx.op.binary.f32(i32 35, float %7381, float %7372)  ; FMax(a,b)
  %7383 = call float @dx.op.binary.f32(i32 36, float %7377, float %7378)  ; FMin(a,b)
  %7384 = call float @dx.op.binary.f32(i32 36, float %7376, float %7383)  ; FMin(a,b)
  %7385 = call float @dx.op.binary.f32(i32 36, float %7384, float %7379)  ; FMin(a,b)
  %7386 = fmul fast float %7382, 2.550000e+02
  %7387 = fadd fast float %7386, 0x3F70101020000000
  %7388 = fptoui float %7387 to i32
  %7389 = fmul fast float %7385, 2.550000e+02
  %7390 = fadd fast float %7389, 0x3F70101020000000
  %7391 = fptoui float %7390 to i32
  %7392 = icmp ult i32 %7388, %7391
  br i1 %7392, label %7393, label %7562

; <label>:7393                                    ; preds = %7350
  %7394 = fcmp fast ogt float %79, 9.843750e-01
  %7395 = fadd fast float %6188, -4.000000e+00
  %7396 = select i1 %7394, float -4.000000e+00, float %7395
  %7397 = call float @dx.op.binary.f32(i32 35, float %7396, float 0.000000e+00)  ; FMax(a,b)
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = fadd fast float %7399, %7397
  %7401 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7402 = fmul fast float %7400, %7401
  %7403 = call float @dx.op.unary.f32(i32 23, float %7402)  ; Log(value)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7398, 3
  %7405 = fmul fast float %7404, %7403
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 2
  %7408 = fmul fast float %7405, %7407
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7410 = uitofp i32 %7388 to float
  %7411 = uitofp i32 %7391 to float
  %7412 = fadd fast float %7410, 5.000000e-01
  %7413 = fadd fast float %7411, 5.000000e-01
  %7414 = fmul fast float %7407, %7412
  %7415 = fmul fast float %7407, %7413
  %7416 = fadd fast float %7414, 0x3F0FFB4800000000
  %7417 = fadd fast float %7415, 0xBF0FFB4800000000
  %7418 = call float @dx.op.binary.f32(i32 35, float %7409, float %7416)  ; FMax(a,b)
  %7419 = call float @dx.op.binary.f32(i32 36, float %7418, float %7417)  ; FMin(a,b)
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7423 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7424 = select i1 %5926, float %7423, float 0.000000e+00
  %7425 = fmul fast float %7421, %7419
  %7426 = fadd fast float %7424, %7425
  %7427 = fadd fast float %7424, %7422
  %7428 = fsub fast float %7421, %7422
  %7429 = fadd fast float %7428, %7424
  %7430 = call float @dx.op.binary.f32(i32 35, float %7426, float %7427)  ; FMax(a,b)
  %7431 = call float @dx.op.binary.f32(i32 36, float %7430, float %7429)  ; FMin(a,b)
  %7432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7363, float %7364, float %7431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7433 = extractvalue %dx.types.ResRet.f32 %7432, 0
  %7434 = extractvalue %dx.types.ResRet.f32 %7432, 1
  %7435 = extractvalue %dx.types.ResRet.f32 %7432, 2
  %7436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.i32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.i32 %7436, 1
  %7439 = uitofp i32 %7437 to float
  %7440 = uitofp i32 %7438 to float
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7444 = fmul fast float %7439, %7363
  %7445 = fmul fast float %7440, %7364
  %7446 = fadd fast float %7444, -5.000000e-01
  %7447 = fadd fast float %7445, -5.000000e-01
  %7448 = call float @dx.op.unary.f32(i32 22, float %7446)  ; Frc(value)
  %7449 = call float @dx.op.unary.f32(i32 22, float %7447)  ; Frc(value)
  %7450 = fmul fast float %7448, %7448
  %7451 = fmul fast float %7450, %7448
  %7452 = fsub fast float 3.000000e+00, %7448
  %7453 = fmul fast float %7450, %7452
  %7454 = fmul fast float %7448, 3.000000e+00
  %7455 = fmul fast float %7451, 3.000000e+00
  %7456 = fmul fast float %7450, 6.000000e+00
  %7457 = fsub fast float %7455, %7456
  %7458 = fadd fast float %7457, 4.000000e+00
  %7459 = fmul fast float %7458, 0x3FC5555560000000
  %7460 = fmul fast float %7451, -3.000000e+00
  %7461 = fadd fast float %7450, %7448
  %7462 = fmul fast float %7461, 3.000000e+00
  %7463 = fadd fast float %7460, 1.000000e+00
  %7464 = fadd fast float %7463, %7462
  %7465 = fmul fast float %7451, 0x3FC5555560000000
  %7466 = fmul fast float %7449, %7449
  %7467 = fmul fast float %7466, %7449
  %7468 = fsub fast float 3.000000e+00, %7449
  %7469 = fmul fast float %7466, %7468
  %7470 = fmul fast float %7449, 3.000000e+00
  %7471 = fmul fast float %7467, 3.000000e+00
  %7472 = fmul fast float %7466, 6.000000e+00
  %7473 = fsub fast float %7471, %7472
  %7474 = fadd fast float %7473, 4.000000e+00
  %7475 = fmul fast float %7474, 0x3FC5555560000000
  %7476 = fmul fast float %7467, -3.000000e+00
  %7477 = fadd fast float %7466, %7449
  %7478 = fmul fast float %7477, 3.000000e+00
  %7479 = fadd fast float %7476, 1.000000e+00
  %7480 = fadd fast float %7479, %7478
  %7481 = fmul fast float %7467, 0x3FC5555560000000
  %7482 = fadd fast float %7448, 1.000000e+00
  %7483 = fsub fast float 1.000000e+00, %7454
  %7484 = fadd fast float %7483, %7453
  %7485 = fadd fast float %7484, %7458
  %7486 = fmul fast float %7485, 0x3FC5555560000000
  %7487 = fdiv fast float %7459, %7486
  %7488 = fsub fast float %7482, %7487
  %7489 = fsub fast float 1.000000e+00, %7448
  %7490 = fadd fast float %7464, %7451
  %7491 = fmul fast float %7490, 0x3FC5555560000000
  %7492 = fdiv fast float %7465, %7491
  %7493 = fadd fast float %7489, %7492
  %7494 = fadd fast float %7449, 1.000000e+00
  %7495 = fsub fast float 1.000000e+00, %7470
  %7496 = fadd fast float %7495, %7469
  %7497 = fadd fast float %7496, %7474
  %7498 = fmul fast float %7497, 0x3FC5555560000000
  %7499 = fdiv fast float %7475, %7498
  %7500 = fsub fast float %7494, %7499
  %7501 = fsub fast float 1.000000e+00, %7449
  %7502 = fadd fast float %7480, %7467
  %7503 = fmul fast float %7502, 0x3FC5555560000000
  %7504 = fdiv fast float %7481, %7503
  %7505 = fadd fast float %7504, %7501
  %7506 = fmul fast float %7488, %7442
  %7507 = fsub fast float %7363, %7506
  %7508 = fmul fast float %7493, %7442
  %7509 = fadd fast float %7508, %7363
  %7510 = fmul fast float %7505, %7443
  %7511 = fadd fast float %7510, %7364
  %7512 = fmul fast float %7500, %7443
  %7513 = fsub fast float %7364, %7512
  %7514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7507, float %7513, float %7431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7515 = extractvalue %dx.types.ResRet.f32 %7514, 0
  %7516 = extractvalue %dx.types.ResRet.f32 %7514, 1
  %7517 = extractvalue %dx.types.ResRet.f32 %7514, 2
  %7518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7509, float %7513, float %7431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7507, float %7511, float %7431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7523 = extractvalue %dx.types.ResRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.ResRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.ResRet.f32 %7522, 2
  %7526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7509, float %7511, float %7431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.ResRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.ResRet.f32 %7526, 2
  %7530 = fsub fast float %7523, %7515
  %7531 = fsub fast float %7524, %7516
  %7532 = fsub fast float %7525, %7517
  %7533 = fmul fast float %7530, %7503
  %7534 = fmul fast float %7531, %7503
  %7535 = fmul fast float %7532, %7503
  %7536 = fadd fast float %7533, %7515
  %7537 = fadd fast float %7534, %7516
  %7538 = fadd fast float %7535, %7517
  %7539 = fsub fast float %7527, %7519
  %7540 = fsub fast float %7528, %7520
  %7541 = fsub fast float %7529, %7521
  %7542 = fmul fast float %7539, %7503
  %7543 = fmul fast float %7540, %7503
  %7544 = fmul fast float %7541, %7503
  %7545 = fsub fast float %7519, %7536
  %7546 = fadd fast float %7545, %7542
  %7547 = fsub fast float %7520, %7537
  %7548 = fadd fast float %7547, %7543
  %7549 = fsub fast float %7521, %7538
  %7550 = fadd fast float %7549, %7544
  %7551 = fmul fast float %7546, %7491
  %7552 = fmul fast float %7548, %7491
  %7553 = fmul fast float %7550, %7491
  %7554 = fadd fast float %7551, %7536
  %7555 = fadd fast float %7552, %7537
  %7556 = fadd fast float %7553, %7538
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7559 = fmul fast float %7554, %7558
  %7560 = fmul fast float %7555, %7558
  %7561 = fmul fast float %7556, %7558
  br label %7562

; <label>:7562                                    ; preds = %7393, %7350
  %7563 = phi float [ %7433, %7393 ], [ 1.000000e+00, %7350 ]
  %7564 = phi float [ %7434, %7393 ], [ 1.000000e+00, %7350 ]
  %7565 = phi float [ %7435, %7393 ], [ 1.000000e+00, %7350 ]
  %7566 = phi float [ %7559, %7393 ], [ 0.000000e+00, %7350 ]
  %7567 = phi float [ %7560, %7393 ], [ 0.000000e+00, %7350 ]
  %7568 = phi float [ %7561, %7393 ], [ 0.000000e+00, %7350 ]
  %7569 = fmul fast float %7566, %5904
  %7570 = fmul fast float %7567, %5904
  %7571 = fmul fast float %7568, %5904
  %7572 = fmul fast float %7563, %7357
  %7573 = call float @dx.op.dot3.f32(i32 55, float %7563, float %7564, float %7565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7574 = call float @dx.op.dot3.f32(i32 55, float %7569, float %7570, float %7571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7575 = select i1 %209, float %7573, float %7563
  %7576 = select i1 %209, float %7573, float %7564
  %7577 = select i1 %209, float 1.000000e+00, float %7565
  %7578 = select i1 %209, float %7574, float %7569
  %7579 = select i1 %209, float 0.000000e+00, float %7570
  %7580 = select i1 %209, float 0.000000e+00, float %7571
  %7581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.i32 %7581, 3
  %7583 = and i32 %7582, 3
  %7584 = icmp ne i32 %7583, 0
  %7585 = and i32 %7582, 4
  %7586 = icmp ne i32 %7585, 0
  %7587 = and i1 %7584, %7586
  %7588 = and i1 %209, %7587
  br i1 %7588, label %7589, label %7595

; <label>:7589                                    ; preds = %7562
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 1
  %7592 = fadd fast float %7572, -1.000000e+00
  %7593 = fmul fast float %7591, %7592
  %7594 = fadd fast float %7593, 1.000000e+00
  br label %7595

; <label>:7595                                    ; preds = %7589, %7562
  %7596 = phi float [ %7594, %7589 ], [ %7572, %7562 ]
  %7597 = fadd fast float %7354, %7351
  %7598 = fmul fast float %7575, %7597
  %7599 = fadd fast float %7598, %7578
  %7600 = fadd fast float %7355, %7352
  %7601 = fmul fast float %7576, %7600
  %7602 = fadd fast float %7601, %7579
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  br i1 %209, label %7605, label %7628

; <label>:7605                                    ; preds = %7595
  %7606 = fadd fast float %7599, %7602
  %7607 = fmul fast float %7604, %7606
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 3
  %7610 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %7611 = fsub fast float %5913, %5907
  %7612 = fadd fast float %7611, %5914
  %7613 = fsub fast float %7612, %7610
  %7614 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %7615 = fmul fast float %7613, %7614
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = fsub fast float %7616, %7609
  %7618 = fmul fast float %7617, %7596
  %7619 = fadd fast float %7618, %7609
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = fsub fast float %7619, %7621
  %7623 = fmul fast float %7622, 1.000000e+01
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = fmul fast float %7624, %5903
  %7626 = fadd fast float %7625, %5904
  %7627 = fmul fast float %7626, %7619
  br label %7652

; <label>:7628                                    ; preds = %7595
  %7629 = fadd fast float %7356, %7353
  %7630 = fmul fast float %7577, %7629
  %7631 = fadd fast float %7630, %7580
  %7632 = fmul fast float %7604, %7599
  %7633 = fmul fast float %7604, %7602
  %7634 = fmul fast float %7604, %7631
  %7635 = call float @dx.op.binary.f32(i32 35, float %7633, float %7634)  ; FMax(a,b)
  %7636 = call float @dx.op.binary.f32(i32 35, float %7632, float %7635)  ; FMax(a,b)
  %7637 = call float @dx.op.binary.f32(i32 35, float %7636, float %5904)  ; FMax(a,b)
  %7638 = fcmp fast ugt float %7637, 0x3F10000000000000
  br i1 %7638, label %7640, label %7639

; <label>:7639                                    ; preds = %7628
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7640

; <label>:7640                                    ; preds = %7639, %7628
  %7641 = add i32 %43, 356
  %7642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.i32 %7642, 0
  %7644 = and i32 %7643, 32
  %7645 = icmp eq i32 %7644, 0
  br i1 %7645, label %7652, label %7646

; <label>:7646                                    ; preds = %7640
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7649 = fmul fast float %7648, 0x3FE99999A0000000
  %7650 = fadd fast float %7648, %7632
  %7651 = fadd fast float %7649, %7634
  br label %7652

; <label>:7652                                    ; preds = %7646, %7640, %7605
  %7653 = phi float [ %7607, %7605 ], [ %7650, %7646 ], [ %7632, %7640 ]
  %7654 = phi float [ %7627, %7605 ], [ %7633, %7646 ], [ %7633, %7640 ]
  %7655 = phi float [ %7626, %7605 ], [ %7651, %7646 ], [ %7634, %7640 ]
  %7656 = phi float [ %7626, %7605 ], [ %5904, %7646 ], [ %5904, %7640 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7657 = call float @dx.op.binary.f32(i32 36, float %7653, float 3.225500e+04)  ; FMin(a,b)
  %7658 = call float @dx.op.binary.f32(i32 36, float %7654, float 3.225500e+04)  ; FMin(a,b)
  %7659 = call float @dx.op.binary.f32(i32 36, float %7655, float 3.225500e+04)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7656, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7657)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7658)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7659)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7660)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !79}
!56 = !{!57, !77, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !72, !74, !76}
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
!74 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !59, i8 1, i32 1, i8 1, i32 11, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
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
!114 = distinct !{!114, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!115 = distinct !{!115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!116 = distinct !{!116, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!117 = distinct !{!117, !115, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

