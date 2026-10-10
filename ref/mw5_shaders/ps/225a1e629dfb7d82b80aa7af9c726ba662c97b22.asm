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
; shader hash: 5cc7fc91d3e77d3b1da784b787dd3496
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
;   [192 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t49,space1     1
;                                   texture    byte         r/o      T8     t50,space1     1
;                                   texture    byte         r/o      T9     t51,space1     1
;                                   texture    byte         r/o     T10     t52,space1     1
;                                   texture    byte         r/o     T11     t16,space1     1
;                                   texture    byte         r/o     T12     t17,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fmul fast float %99, %88
  %101 = fmul fast float %99, %89
  %102 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %79
  %108 = fmul fast float %106, %80
  %109 = fmul fast float %106, %81
  %110 = fmul fast float %80, %77
  %111 = fmul fast float %81, %76
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %81, %75
  %114 = fmul fast float %79, %77
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %79, %76
  %117 = fmul fast float %80, %75
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %112, %78
  %120 = fmul fast float %115, %78
  %121 = fmul fast float %118, %78
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %100, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %101, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %129, %132
  %136 = fmul fast float %129, %133
  %137 = fmul fast float %129, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %130, %139
  %143 = fmul fast float %130, %140
  %144 = fmul fast float %130, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %149, %135
  %151 = fadd fast float %143, %147
  %152 = fadd fast float %151, %136
  %153 = fadd fast float %144, %148
  %154 = fadd fast float %153, %137
  %155 = fmul fast float %150, %91
  %156 = fmul fast float %152, %91
  %157 = fmul fast float %154, %91
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fmul fast float %101, 5.000000e-01
  %160 = fptosi float %158 to i32
  %161 = fptosi float %159 to i32
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %160, i32 %161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = lshr i32 %163, 18
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %165, 0x3F4C00EBA0000000
  %167 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %168 = fadd fast float %167, -1.000000e+00
  %169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %170 = extractvalue %dx.types.Dimensions %169, 0
  %171 = sitofp i32 %170 to float
  %172 = extractvalue %dx.types.Dimensions %169, 1
  %173 = sitofp i32 %172 to float
  %174 = fcmp fast oge float %158, %171
  %175 = fcmp fast oge float %159, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %181 = fmul fast float %179, %100
  %182 = fmul fast float %180, %101
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 114688
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float %181, float 0.000000e+00
  %188 = select i1 %186, float %182, float 0.000000e+00
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fmul fast float %190, 2.550000e+02
  %192 = fptoui float %191 to i32
  %193 = select i1 %186, i32 %192, i32 0
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %213

; <label>:202                                     ; preds = %0
  %203 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %204 = fmul fast float %203, %101
  %205 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %206 = fmul fast float %205, %100
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %206, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %199, 0
  %215 = and i1 %198, %214
  br label %216

; <label>:216                                     ; preds = %213, %202
  %217 = phi i1 [ %212, %202 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %100, 2.560000e+02
  %222 = frem fast float %101, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 2
  %228 = fadd fast float %226, %220
  %229 = fadd fast float %227, %220
  %230 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %231 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %232 = add i32 %54, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %54, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %54, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %54, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %54, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %54, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %54, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %54, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %54, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %54, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %54, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %54, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %54, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %54, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %54, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %54, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %54, 348
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %216
  %414 = add i32 %54, 488
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = fmul fast float %423, %84
  %425 = fmul fast float %420, %85
  %426 = fmul fast float %421, %86
  %427 = fmul fast float %422, %87
  br label %428

; <label>:428                                     ; preds = %413, %216
  %429 = phi float [ %87, %216 ], [ %427, %413 ]
  %430 = phi float [ %86, %216 ], [ %426, %413 ]
  %431 = phi float [ %85, %216 ], [ %425, %413 ]
  %432 = phi float [ %84, %216 ], [ %424, %413 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

; <label>:437                                     ; preds = %428
  %438 = add i32 %54, 44
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %431, float 1.000000e+00
  %444 = add i32 %54, 60
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %430, float 1.000000e+00
  %450 = add i32 %54, 76
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %429, float 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %437, %428
  %457 = phi float [ %429, %428 ], [ %455, %437 ]
  %458 = phi float [ %430, %428 ], [ %449, %437 ]
  %459 = phi float [ %431, %428 ], [ %443, %437 ]
  %460 = lshr i32 %434, 20
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 1
  %463 = add i32 %54, 24
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %54, 28
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = or i32 %468, %465
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1231, label %471

; <label>:471                                     ; preds = %456
  %472 = and i32 %465, 262144
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %57, float 1.000000e+00
  %475 = select i1 %473, float %58, float 0.000000e+00
  %476 = select i1 %473, float %59, float 0.000000e+00
  %477 = select i1 %473, float %60, float 1.000000e+00
  %478 = select i1 %473, float %61, float %82
  %479 = select i1 %473, float %62, float %83
  %480 = add i32 %54, 284
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %484, 0x3F50624DE0000000
  %486 = add i32 %54, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = and i32 %489, 255
  %491 = lshr i32 %488, 24
  %492 = add i32 %54, 292
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = add i32 %54, 32
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = shl i32 %501, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fmul fast float %512, 1.000000e+03
  %514 = fmul fast float %272, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %262
  %517 = fmul fast float %273, %513
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %264
  %520 = fmul fast float %485, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x401921FB60000000
  %523 = fadd fast float %522, %504
  %524 = call float @dx.op.unary.f32(i32 13, float %523)  ; Sin(value)
  %525 = call float @dx.op.unary.f32(i32 12, float %523)  ; Cos(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fadd fast float %478, -5.000000e-01
  %528 = fadd fast float %479, -5.000000e-01
  %529 = fmul fast float %496, %527
  %530 = fmul fast float %498, %528
  %531 = fadd fast float %529, 5.000000e-01
  %532 = fadd fast float %530, 5.000000e-01
  %533 = fmul fast float %507, %531
  %534 = fmul fast float %510, %532
  %535 = fmul fast float %525, %533
  %536 = call float @dx.op.tertiary.f32(i32 46, float %526, float %534, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %524, %533
  %538 = call float @dx.op.tertiary.f32(i32 46, float %525, float %534, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %516, %536
  %540 = fadd fast float %519, %538
  %541 = icmp ugt i32 %490, 1
  %542 = icmp ugt i32 %488, 33554431
  %543 = or i1 %542, %541
  br i1 %543, label %544, label %569

; <label>:544                                     ; preds = %471
  %545 = add i32 %54, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fmul fast float %512, %549
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = mul nuw nsw i32 %490, %491
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %551, %553
  %555 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %556 = fptoui float %555 to i32
  %557 = urem i32 %556, %490
  %558 = udiv i32 %556, %491
  %559 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %560 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %561 = uitofp i32 %557 to float
  %562 = uitofp i32 %558 to float
  %563 = fadd fast float %559, %561
  %564 = fadd fast float %560, %562
  %565 = uitofp i32 %490 to float
  %566 = uitofp i32 %491 to float
  %567 = fdiv fast float %563, %565
  %568 = fdiv fast float %564, %566
  br label %569

; <label>:569                                     ; preds = %544, %471
  %570 = phi float [ %567, %544 ], [ %539, %471 ]
  %571 = phi float [ %568, %544 ], [ %540, %471 ]
  %572 = and i32 %465, 16777216
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = fadd fast float %576, %155
  %580 = fadd fast float %577, %156
  %581 = fadd fast float %578, %157
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = icmp eq i32 %55, 65535
  br i1 %585, label %680, label %586

; <label>:586                                     ; preds = %574
  %587 = lshr i32 %55, 1
  %588 = shl i32 %587, 2
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %55, 1
  %592 = icmp ne i32 %591, 0
  %593 = lshr i32 %590, 16
  %594 = and i32 %590, 65535
  %595 = select i1 %592, i32 %593, i32 %594
  %596 = icmp eq i32 %595, 65535
  br i1 %596, label %676, label %597

; <label>:597                                     ; preds = %586
  %598 = mul nuw nsw i32 %595, 40
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add nuw nsw i32 %598, 12
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %598, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %598, 36
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fsub fast float %579, %600
  %617 = fsub fast float %580, %601
  %618 = fsub fast float %581, %602
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fmul fast float %625, %605
  %629 = fmul fast float %626, %606
  %630 = fmul fast float %627, %607
  %631 = shl i32 %55, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %49, float %636, float %637, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fmul fast float %641, 1.023000e+03
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = fsub fast float %619, %622
  %653 = fsub fast float %620, %623
  %654 = fsub fast float %621, %624
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fmul fast float %653, 7.500000e-01
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fadd fast float %622, 1.250000e-01
  %659 = fadd fast float %658, %655
  %660 = fadd fast float %659, %649
  %661 = fadd fast float %623, 1.250000e-01
  %662 = fadd fast float %661, %656
  %663 = fadd fast float %662, %650
  %664 = fadd fast float %624, 1.250000e-01
  %665 = fadd fast float %664, %657
  %666 = fadd fast float %665, %651
  %667 = fmul fast float %660, %610
  %668 = fmul fast float %663, %611
  %669 = fmul fast float %666, %612
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %47, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  br label %676

; <label>:676                                     ; preds = %597, %586
  %677 = phi float [ %675, %597 ], [ -1.000000e+00, %586 ]
  %678 = fadd fast float %677, %584
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %676, %574
  %681 = phi float [ %679, %676 ], [ %584, %574 ]
  %682 = fmul fast float %681, %432
  br label %683

; <label>:683                                     ; preds = %680, %569
  %684 = phi float [ %682, %680 ], [ %432, %569 ]
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 256
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %735, label %689

; <label>:689                                     ; preds = %683
  %690 = add i32 %54, 424
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %97, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = add i32 %54, 100
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float 1.000000e+00, %684
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %708 = bitcast float %684 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %705, %710
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = bitcast float %707 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %714, %702
  %723 = fmul fast float %721, %702
  %724 = fsub fast float %707, %722
  %725 = fadd fast float %723, %707
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fsub fast float %696, %726
  %729 = fsub fast float %727, %726
  %730 = bitcast float %729 to i32
  %731 = sub nsw i32 2129859010, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %689, %683
  %736 = phi float [ %734, %689 ], [ %684, %683 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 128
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %735
  %742 = add i32 %54, 408
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %97, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 524288
  %752 = icmp ne i32 %751, 0
  %753 = fcmp fast ogt float %748, 0x3FE0101020000000
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %755 = select i1 %752, float %754, float %748
  %756 = fmul fast float %755, %736
  br label %757

; <label>:757                                     ; preds = %741, %735
  %758 = phi float [ %756, %741 ], [ %736, %735 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %961, label %763

; <label>:763                                     ; preds = %757
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %54, 360
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %96, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 512
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

; <label>:788                                     ; preds = %763
  %789 = add i32 %54, 440
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %97, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  br label %796

; <label>:796                                     ; preds = %788, %763
  %797 = phi float [ %795, %788 ], [ 1.000000e+00, %763 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 33554432
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %908, label %802

; <label>:802                                     ; preds = %796
  %803 = add i32 %54, 224
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %54, 228
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 24
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = and i32 %816, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %816, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %816, 16
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = add i32 %54, 220
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = and i32 %833, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %833, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %833, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = bitcast float %772 to i32
  %849 = ashr i32 %848, 1
  %850 = sub nsw i32 1597463174, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %772, 5.000000e-01
  %853 = fmul fast float %851, %851
  %854 = fmul fast float %853, %852
  %855 = fsub fast float 1.500000e+00, %854
  %856 = fmul fast float %851, %772
  %857 = fmul fast float %856, %855
  %858 = bitcast float %773 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %773, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %773
  %867 = fmul fast float %866, %865
  %868 = bitcast float %774 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %774, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %774
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %857, %839
  %879 = fsub fast float %867, %843
  %880 = fsub fast float %877, %847
  %881 = fmul fast float %878, %807
  %882 = fmul fast float %879, %809
  %883 = fmul fast float %880, %814
  %884 = fadd fast float %881, %822
  %885 = fadd fast float %882, %826
  %886 = fadd fast float %883, %830
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fsub fast float %890, %772
  %894 = fsub fast float %891, %773
  %895 = fsub fast float %892, %774
  %896 = fmul fast float %893, %797
  %897 = fmul fast float %894, %797
  %898 = fmul fast float %895, %797
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %897, %773
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %819, %783
  %903 = fsub fast float %902, %836
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float %904, %783
  %906 = fmul fast float %905, %797
  %907 = fadd fast float %906, %783
  br label %961

; <label>:908                                     ; preds = %796
  %909 = and i32 %799, 134217728
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %945, label %911

; <label>:911                                     ; preds = %908
  %912 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %913 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fmul fast float %915, %797
  %919 = fmul fast float %916, %797
  %920 = fmul fast float %917, %797
  %921 = fadd fast float %918, 5.000000e-01
  %922 = fadd fast float %919, 5.000000e-01
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = fmul fast float %921, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %928, %924
  %930 = fadd fast float %929, %927
  %931 = fmul fast float %930, %924
  %932 = fmul fast float %922, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %925
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %923, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %926
  %942 = fmul fast float %931, %931
  %943 = fmul fast float %936, %936
  %944 = fmul fast float %941, %941
  br label %961

; <label>:945                                     ; preds = %908
  %946 = fmul fast float %249, %249
  %947 = fmul fast float %253, %253
  %948 = fmul fast float %257, %257
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fadd fast float %947, -1.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fmul fast float %797, %949
  %953 = fmul fast float %797, %950
  %954 = fmul fast float %797, %951
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fadd fast float %953, 1.000000e+00
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fmul fast float %955, %772
  %959 = fmul fast float %956, %773
  %960 = fmul fast float %957, %774
  br label %961

; <label>:961                                     ; preds = %945, %911, %802, %757
  %962 = phi float [ %907, %802 ], [ %783, %911 ], [ %783, %945 ], [ 0x3FA23C0BE0000000, %757 ]
  %963 = phi float [ %899, %802 ], [ %942, %911 ], [ %958, %945 ], [ 1.000000e+00, %757 ]
  %964 = phi float [ %900, %802 ], [ %943, %911 ], [ %959, %945 ], [ 1.000000e+00, %757 ]
  %965 = phi float [ %901, %802 ], [ %944, %911 ], [ %960, %945 ], [ 1.000000e+00, %757 ]
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 1
  %969 = icmp ne i32 %968, 0
  %970 = add i32 %54, 356
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 32
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %969, %974
  %976 = select i1 %975, float 1.000000e+00, float %963
  %977 = select i1 %975, float 0x3FD3333340000000, float %964
  %978 = select i1 %975, float 0x3FD3333340000000, float %965
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1055, label %983

; <label>:983                                     ; preds = %961
  %984 = add i32 %54, 92
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %54, 376
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %96, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = and i32 %986, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %986, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %986, 16
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fmul fast float %993, %998
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fadd fast float %996, -5.000000e-01
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1010, %1005
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 67108864
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %983
  %1036 = add i32 %54, 280
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1038, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fsub fast float %1008, %1046
  %1048 = fmul fast float %1047, %1040
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  br label %1051

; <label>:1051                                    ; preds = %1035, %983
  %1052 = phi float [ %1050, %1035 ], [ %1008, %983 ]
  %1053 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %1054 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  br label %1055

; <label>:1055                                    ; preds = %1051, %961
  %1056 = phi float [ %1052, %1051 ], [ 0x3FD6666660000000, %961 ]
  %1057 = phi float [ %1053, %1051 ], [ 0.000000e+00, %961 ]
  %1058 = phi float [ %1054, %1051 ], [ 0.000000e+00, %961 ]
  %1059 = phi float [ %995, %1051 ], [ 1.000000e+00, %961 ]
  %1060 = add i32 %54, 160
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 22
  %1064 = shl nuw nsw i32 %1063, 5
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 64
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1103, label %1070

; <label>:1070                                    ; preds = %1055
  %1071 = add i32 %54, 392
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 131072
  %1079 = icmp eq i32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %96, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, %237
  %1085 = fmul fast float %1082, %240
  %1086 = fmul fast float %1083, %243
  br i1 %1079, label %1093, label %1087

; <label>:1087                                    ; preds = %1070
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1089, %1085
  %1092 = fmul fast float %1089, %1086
  br label %1093

; <label>:1093                                    ; preds = %1087, %1070
  %1094 = phi float [ %1090, %1087 ], [ %1084, %1070 ]
  %1095 = phi float [ %1091, %1087 ], [ %1085, %1070 ]
  %1096 = phi float [ %1092, %1087 ], [ %1086, %1070 ]
  %1097 = fmul fast float %1094, %1065
  %1098 = select i1 %217, float %1097, float %1094
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %217, float 0.000000e+00, float %1094
  %1101 = select i1 %217, float %1099, float %1095
  %1102 = select i1 %217, float 0.000000e+00, float %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1055
  %1104 = phi float [ %1100, %1093 ], [ 0.000000e+00, %1055 ]
  %1105 = phi float [ %1101, %1093 ], [ 0.000000e+00, %1055 ]
  %1106 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1055 ]
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 1024
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1141, label %1111

; <label>:1111                                    ; preds = %1103
  %1112 = add i32 %54, 152
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1114, 8
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = lshr i32 %1114, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = fmul fast float %1117, %1117
  %1127 = fmul fast float %1121, %1121
  %1128 = fmul fast float %1125, %1125
  %1129 = add i32 %54, 456
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %97, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = fmul fast float %1126, %1135
  %1139 = fmul fast float %1127, %1136
  %1140 = fmul fast float %1128, %1137
  br label %1141

; <label>:1141                                    ; preds = %1111, %1103
  %1142 = phi float [ %1138, %1111 ], [ 0.000000e+00, %1103 ]
  %1143 = phi float [ %1139, %1111 ], [ 0.000000e+00, %1103 ]
  %1144 = phi float [ %1140, %1111 ], [ 0.000000e+00, %1103 ]
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = fcmp fast ogt float %1143, 0.000000e+00
  %1147 = fcmp fast ogt float %1144, 0.000000e+00
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1150 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 7
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fmul fast float %1148, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1155
  %1158 = fmul fast float %1149, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1155
  %1160 = fmul fast float %1150, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1155
  %1162 = select i1 %1145, float %1157, float 1.270000e+02
  %1163 = select i1 %1146, float %1159, float 1.270000e+02
  %1164 = select i1 %1147, float %1161, float 1.270000e+02
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 10240
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1213, label %1169

; <label>:1169                                    ; preds = %1141
  %1170 = add i32 %54, 472
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %97, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 1048576
  %1181 = icmp ne i32 %1180, 0
  %1182 = and i32 %1179, 8192
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1199, label %1184

; <label>:1184                                    ; preds = %1169
  %1185 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1186 = select i1 %1181, float %1185, float %1176
  %1187 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1188 = select i1 %1181, float %1187, float %1176
  %1189 = add i32 %54, 96
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = lshr i32 %1191, 16
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F80101020000000
  %1196 = fmul fast float %1195, %1188
  %1197 = fmul fast float %1195, %1176
  %1198 = fmul fast float %1195, %1186
  br label %1199

; <label>:1199                                    ; preds = %1184, %1169
  %1200 = phi float [ %1196, %1184 ], [ 0.000000e+00, %1169 ]
  %1201 = phi float [ %1197, %1184 ], [ 0.000000e+00, %1169 ]
  %1202 = phi float [ %1198, %1184 ], [ 0.000000e+00, %1169 ]
  %1203 = and i32 %1179, 2048
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1213, label %1205

; <label>:1205                                    ; preds = %1199
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = shl i32 %1207, 4
  %1209 = and i32 %1208, 32752
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = fmul fast float %1210, %1177
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1213

; <label>:1213                                    ; preds = %1205, %1199, %1141
  %1214 = phi float [ %1200, %1205 ], [ %1200, %1199 ], [ 0.000000e+00, %1141 ]
  %1215 = phi float [ %1201, %1205 ], [ %1201, %1199 ], [ 0.000000e+00, %1141 ]
  %1216 = phi float [ %1202, %1205 ], [ %1202, %1199 ], [ 0.000000e+00, %1141 ]
  %1217 = phi float [ %1212, %1205 ], [ 0x3F70101020000000, %1199 ], [ 0x3F70101020000000, %1141 ]
  %1218 = add i32 %54, 96
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = lshr i32 %1220, 8
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = fmul fast float %1225, %1226
  %1228 = fadd fast float %1227, %1222
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br label %1231

; <label>:1231                                    ; preds = %1213, %456
  %1232 = phi float [ 0.000000e+00, %456 ], [ %1057, %1213 ]
  %1233 = phi float [ 0.000000e+00, %456 ], [ %1058, %1213 ]
  %1234 = phi float [ 0.000000e+00, %456 ], [ %1104, %1213 ]
  %1235 = phi float [ 0.000000e+00, %456 ], [ %1105, %1213 ]
  %1236 = phi float [ 0.000000e+00, %456 ], [ %1106, %1213 ]
  %1237 = phi float [ 0.000000e+00, %456 ], [ %976, %1213 ]
  %1238 = phi float [ 0.000000e+00, %456 ], [ %977, %1213 ]
  %1239 = phi float [ 0.000000e+00, %456 ], [ %978, %1213 ]
  %1240 = phi float [ 0.000000e+00, %456 ], [ %1162, %1213 ]
  %1241 = phi float [ 0.000000e+00, %456 ], [ %1163, %1213 ]
  %1242 = phi float [ 0.000000e+00, %456 ], [ %1164, %1213 ]
  %1243 = phi float [ 0.000000e+00, %456 ], [ %1214, %1213 ]
  %1244 = phi float [ 0.000000e+00, %456 ], [ %1215, %1213 ]
  %1245 = phi float [ 0.000000e+00, %456 ], [ %1216, %1213 ]
  %1246 = phi float [ 0.000000e+00, %456 ], [ %962, %1213 ]
  %1247 = phi float [ 0.000000e+00, %456 ], [ %758, %1213 ]
  %1248 = phi float [ 0.000000e+00, %456 ], [ %1056, %1213 ]
  %1249 = phi float [ 0.000000e+00, %456 ], [ %1059, %1213 ]
  %1250 = phi float [ 0.000000e+00, %456 ], [ %1217, %1213 ]
  %1251 = phi float [ 0.000000e+00, %456 ], [ %1230, %1213 ]
  br i1 %404, label %2289, label %1252

; <label>:1252                                    ; preds = %1231
  %1253 = icmp ult i32 %462, 2
  %1254 = add i32 %54, 40
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %54, 44
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = or i32 %1259, %1256
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %2289, label %1262

; <label>:1262                                    ; preds = %1252
  %1263 = and i32 %1256, 262144
  %1264 = icmp ne i32 %1263, 0
  %1265 = select i1 %1264, float %57, float 1.000000e+00
  %1266 = select i1 %1264, float %58, float 0.000000e+00
  %1267 = select i1 %1264, float %59, float 0.000000e+00
  %1268 = select i1 %1264, float %60, float 1.000000e+00
  %1269 = select i1 %1264, float %61, float %82
  %1270 = select i1 %1264, float %62, float %83
  %1271 = add i32 %54, 300
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = lshr i32 %1273, 16
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = fmul fast float %1275, 0x3F50624DE0000000
  %1277 = add i32 %54, 104
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = lshr i32 %1279, 16
  %1281 = and i32 %1280, 255
  %1282 = lshr i32 %1279, 24
  %1283 = add i32 %54, 308
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 65535
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1285, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = add i32 %54, 48
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = lshr i32 %1292, 22
  %1294 = shl nuw nsw i32 %1293, 5
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = shl i32 %1292, 4
  %1297 = and i32 %1296, 32752
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = lshr i32 %1292, 7
  %1300 = and i32 %1299, 32752
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1304 = fmul fast float %1303, 1.000000e+03
  %1305 = fmul fast float %314, %1304
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = fadd fast float %1306, %304
  %1308 = fmul fast float %315, %1304
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fadd fast float %1309, %306
  %1311 = fmul fast float %1276, %1304
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = fmul fast float %1312, 0x401921FB60000000
  %1314 = fadd fast float %1313, %1295
  %1315 = call float @dx.op.unary.f32(i32 13, float %1314)  ; Sin(value)
  %1316 = call float @dx.op.unary.f32(i32 12, float %1314)  ; Cos(value)
  %1317 = fsub fast float -0.000000e+00, %1315
  %1318 = fadd fast float %1269, -5.000000e-01
  %1319 = fadd fast float %1270, -5.000000e-01
  %1320 = fmul fast float %1287, %1318
  %1321 = fmul fast float %1289, %1319
  %1322 = fadd fast float %1320, 5.000000e-01
  %1323 = fadd fast float %1321, 5.000000e-01
  %1324 = fmul fast float %1298, %1322
  %1325 = fmul fast float %1301, %1323
  %1326 = fmul fast float %1316, %1324
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1325, float %1326)  ; FMad(a,b,c)
  %1328 = fmul fast float %1315, %1324
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1325, float %1328)  ; FMad(a,b,c)
  %1330 = fadd fast float %1307, %1327
  %1331 = fadd fast float %1310, %1329
  %1332 = icmp ugt i32 %1281, 1
  %1333 = icmp ugt i32 %1279, 33554431
  %1334 = or i1 %1333, %1332
  br i1 %1334, label %1335, label %1360

; <label>:1335                                    ; preds = %1262
  %1336 = add i32 %54, 244
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 16
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = fmul fast float %1303, %1340
  %1342 = call float @dx.op.unary.f32(i32 22, float %1341)  ; Frc(value)
  %1343 = mul nuw nsw i32 %1281, %1282
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1342, %1344
  %1346 = call float @dx.op.unary.f32(i32 27, float %1345)  ; Round_ni(value)
  %1347 = fptoui float %1346 to i32
  %1348 = urem i32 %1347, %1281
  %1349 = udiv i32 %1347, %1282
  %1350 = call float @dx.op.unary.f32(i32 22, float %1330)  ; Frc(value)
  %1351 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1352 = uitofp i32 %1348 to float
  %1353 = uitofp i32 %1349 to float
  %1354 = fadd fast float %1350, %1352
  %1355 = fadd fast float %1351, %1353
  %1356 = uitofp i32 %1281 to float
  %1357 = uitofp i32 %1282 to float
  %1358 = fdiv fast float %1354, %1356
  %1359 = fdiv fast float %1355, %1357
  br label %1360

; <label>:1360                                    ; preds = %1335, %1262
  %1361 = phi float [ %1358, %1335 ], [ %1330, %1262 ]
  %1362 = phi float [ %1359, %1335 ], [ %1331, %1262 ]
  %1363 = and i32 %1256, 16777216
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1474, label %1365

; <label>:1365                                    ; preds = %1360
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1370 = fadd fast float %1367, %155
  %1371 = fadd fast float %1368, %156
  %1372 = fadd fast float %1369, %157
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = icmp eq i32 %55, 65535
  br i1 %1376, label %1471, label %1377

; <label>:1377                                    ; preds = %1365
  %1378 = lshr i32 %55, 1
  %1379 = shl i32 %1378, 2
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %55, 1
  %1383 = icmp ne i32 %1382, 0
  %1384 = lshr i32 %1381, 16
  %1385 = and i32 %1381, 65535
  %1386 = select i1 %1383, i32 %1384, i32 %1385
  %1387 = icmp eq i32 %1386, 65535
  br i1 %1387, label %1467, label %1388

; <label>:1388                                    ; preds = %1377
  %1389 = mul nuw nsw i32 %1386, 40
  %1390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = add nuw nsw i32 %1389, 12
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = add nuw nsw i32 %1389, 24
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = add nuw nsw i32 %1389, 36
  %1405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = fsub fast float %1370, %1391
  %1408 = fsub fast float %1371, %1392
  %1409 = fsub fast float %1372, %1393
  %1410 = fmul fast float %1406, %1407
  %1411 = fmul fast float %1406, %1408
  %1412 = fmul fast float %1406, %1409
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = call float @dx.op.unary.f32(i32 27, float %1411)  ; Round_ni(value)
  %1415 = call float @dx.op.unary.f32(i32 27, float %1412)  ; Round_ni(value)
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fadd fast float %1414, 5.000000e-01
  %1418 = fadd fast float %1415, 5.000000e-01
  %1419 = fmul fast float %1416, %1396
  %1420 = fmul fast float %1417, %1397
  %1421 = fmul fast float %1418, %1398
  %1422 = shl i32 %55, 2
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %1424, 0
  %1426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1427 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1428 = call float @dx.op.unary.f32(i32 22, float %1420)  ; Frc(value)
  %1429 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1426, %dx.types.Handle %49, float %1427, float %1428, float %1429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = fmul fast float %1431, 1.023000e+03
  %1435 = fmul fast float %1432, 1.023000e+03
  %1436 = fmul fast float %1433, 1.023000e+03
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = fadd fast float %1435, 5.000000e-01
  %1439 = fadd fast float %1436, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = call float @dx.op.unary.f32(i32 27, float %1438)  ; Round_ni(value)
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = fsub fast float %1410, %1413
  %1444 = fsub fast float %1411, %1414
  %1445 = fsub fast float %1412, %1415
  %1446 = fmul fast float %1443, 7.500000e-01
  %1447 = fmul fast float %1444, 7.500000e-01
  %1448 = fmul fast float %1445, 7.500000e-01
  %1449 = fadd fast float %1413, 1.250000e-01
  %1450 = fadd fast float %1449, %1446
  %1451 = fadd fast float %1450, %1440
  %1452 = fadd fast float %1414, 1.250000e-01
  %1453 = fadd fast float %1452, %1447
  %1454 = fadd fast float %1453, %1441
  %1455 = fadd fast float %1415, 1.250000e-01
  %1456 = fadd fast float %1455, %1448
  %1457 = fadd fast float %1456, %1442
  %1458 = fmul fast float %1451, %1401
  %1459 = fmul fast float %1454, %1402
  %1460 = fmul fast float %1457, %1403
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1464, %dx.types.Handle %47, float %1458, float %1459, float %1460, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  br label %1467

; <label>:1467                                    ; preds = %1388, %1377
  %1468 = phi float [ %1466, %1388 ], [ -1.000000e+00, %1377 ]
  %1469 = fadd fast float %1468, %1375
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  br label %1471

; <label>:1471                                    ; preds = %1467, %1365
  %1472 = phi float [ %1470, %1467 ], [ %1375, %1365 ]
  %1473 = fmul fast float %1472, %459
  br label %1474

; <label>:1474                                    ; preds = %1471, %1360
  %1475 = phi float [ %1473, %1471 ], [ %459, %1360 ]
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 256
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1526, label %1480

; <label>:1480                                    ; preds = %1474
  %1481 = add i32 %54, 428
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %97, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = add i32 %54, 116
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = shl i32 %1490, 4
  %1492 = and i32 %1491, 32752
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1490, 7
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = fsub fast float 1.000000e+00, %1475
  %1498 = call float @dx.op.binary.f32(i32 35, float %1497, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1499 = bitcast float %1475 to i32
  %1500 = sitofp i32 %1499 to float
  %1501 = fadd fast float %1500, 0xC1CFBF8940000000
  %1502 = fmul fast float %1496, %1501
  %1503 = fadd fast float %1502, 0x41CFBF8940000000
  %1504 = fptosi float %1503 to i32
  %1505 = bitcast i32 %1504 to float
  %1506 = bitcast float %1498 to i32
  %1507 = sitofp i32 %1506 to float
  %1508 = fadd fast float %1507, 0xC1CFBF8940000000
  %1509 = fmul fast float %1508, %1496
  %1510 = fadd fast float %1509, 0x41CFBF8940000000
  %1511 = fptosi float %1510 to i32
  %1512 = bitcast i32 %1511 to float
  %1513 = fmul fast float %1505, %1493
  %1514 = fmul fast float %1512, %1493
  %1515 = fsub fast float %1498, %1513
  %1516 = fadd fast float %1514, %1498
  %1517 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1519 = fsub fast float %1487, %1517
  %1520 = fsub fast float %1518, %1517
  %1521 = bitcast float %1520 to i32
  %1522 = sub nsw i32 2129859010, %1521
  %1523 = bitcast i32 %1522 to float
  %1524 = fmul fast float %1523, %1519
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  br label %1526

; <label>:1526                                    ; preds = %1480, %1474
  %1527 = phi float [ %1525, %1480 ], [ %1475, %1474 ]
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 128
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1548, label %1532

; <label>:1532                                    ; preds = %1526
  %1533 = add i32 %54, 412
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %1535, 0
  %1537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1537, %dx.types.Handle %97, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 524288
  %1543 = icmp ne i32 %1542, 0
  %1544 = fcmp fast ogt float %1539, 0x3FE0101020000000
  %1545 = select i1 %1544, float 1.000000e+00, float 0.000000e+00
  %1546 = select i1 %1543, float %1545, float %1539
  %1547 = fmul fast float %1546, %1527
  br label %1548

; <label>:1548                                    ; preds = %1532, %1526
  %1549 = phi float [ %1547, %1532 ], [ %1527, %1526 ]
  %1550 = fcmp fast ult float %1549, 0x3F70101020000000
  br i1 %1550, label %2289, label %1551

; <label>:1551                                    ; preds = %1548
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 16
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1754, label %1556

; <label>:1556                                    ; preds = %1551
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %54, 364
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %1561, 0
  %1563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1563, %dx.types.Handle %96, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = extractvalue %dx.types.ResRet.f32 %1564, 3
  %1569 = and i32 %1558, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = lshr i32 %1558, 8
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1568, %1570
  %1575 = fadd fast float %1574, %1573
  %1576 = fmul fast float %1575, 0x3F70101000000000
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = and i32 %1578, 512
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1589, label %1581

; <label>:1581                                    ; preds = %1556
  %1582 = add i32 %54, 444
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = add i32 %1584, 0
  %1586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1586, %dx.types.Handle %97, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  br label %1589

; <label>:1589                                    ; preds = %1581, %1556
  %1590 = phi float [ %1588, %1581 ], [ 1.000000e+00, %1556 ]
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 33554432
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1701, label %1595

; <label>:1595                                    ; preds = %1589
  %1596 = add i32 %54, 240
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 65535
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = lshr i32 %1598, 16
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = add i32 %54, 244
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 65535
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = lshr i32 %1609, 24
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = and i32 %1609, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1609, 8
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = lshr i32 %1609, 16
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = add i32 %54, 236
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = lshr i32 %1626, 24
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = and i32 %1626, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = lshr i32 %1626, 8
  %1634 = and i32 %1633, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = lshr i32 %1626, 16
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = bitcast float %1565 to i32
  %1642 = ashr i32 %1641, 1
  %1643 = sub nsw i32 1597463174, %1642
  %1644 = bitcast i32 %1643 to float
  %1645 = fmul fast float %1565, 5.000000e-01
  %1646 = fmul fast float %1644, %1644
  %1647 = fmul fast float %1646, %1645
  %1648 = fsub fast float 1.500000e+00, %1647
  %1649 = fmul fast float %1644, %1565
  %1650 = fmul fast float %1649, %1648
  %1651 = bitcast float %1566 to i32
  %1652 = ashr i32 %1651, 1
  %1653 = sub nsw i32 1597463174, %1652
  %1654 = bitcast i32 %1653 to float
  %1655 = fmul fast float %1566, 5.000000e-01
  %1656 = fmul fast float %1654, %1654
  %1657 = fmul fast float %1656, %1655
  %1658 = fsub fast float 1.500000e+00, %1657
  %1659 = fmul fast float %1654, %1566
  %1660 = fmul fast float %1659, %1658
  %1661 = bitcast float %1567 to i32
  %1662 = ashr i32 %1661, 1
  %1663 = sub nsw i32 1597463174, %1662
  %1664 = bitcast i32 %1663 to float
  %1665 = fmul fast float %1567, 5.000000e-01
  %1666 = fmul fast float %1664, %1664
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float 1.500000e+00, %1667
  %1669 = fmul fast float %1664, %1567
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float %1650, %1632
  %1672 = fsub fast float %1660, %1636
  %1673 = fsub fast float %1670, %1640
  %1674 = fmul fast float %1671, %1600
  %1675 = fmul fast float %1672, %1602
  %1676 = fmul fast float %1673, %1607
  %1677 = fadd fast float %1674, %1615
  %1678 = fadd fast float %1675, %1619
  %1679 = fadd fast float %1676, %1623
  %1680 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1681 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1682 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1683 = fmul fast float %1680, %1680
  %1684 = fmul fast float %1681, %1681
  %1685 = fmul fast float %1682, %1682
  %1686 = fsub fast float %1683, %1565
  %1687 = fsub fast float %1684, %1566
  %1688 = fsub fast float %1685, %1567
  %1689 = fmul fast float %1686, %1590
  %1690 = fmul fast float %1687, %1590
  %1691 = fmul fast float %1688, %1590
  %1692 = fadd fast float %1689, %1565
  %1693 = fadd fast float %1690, %1566
  %1694 = fadd fast float %1691, %1567
  %1695 = fadd fast float %1612, %1576
  %1696 = fsub fast float %1695, %1629
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fsub fast float %1697, %1576
  %1699 = fmul fast float %1698, %1590
  %1700 = fadd fast float %1699, %1576
  br label %1754

; <label>:1701                                    ; preds = %1589
  %1702 = and i32 %1592, 134217728
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1738, label %1704

; <label>:1704                                    ; preds = %1701
  %1705 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1706 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1707 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1708 = fadd fast float %1705, -5.000000e-01
  %1709 = fadd fast float %1706, -5.000000e-01
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fmul fast float %1708, %1590
  %1712 = fmul fast float %1709, %1590
  %1713 = fmul fast float %1710, %1590
  %1714 = fadd fast float %1711, 5.000000e-01
  %1715 = fadd fast float %1712, 5.000000e-01
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %1566)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1720 = fmul fast float %1714, 2.000000e+00
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = fmul fast float %1721, %1717
  %1723 = fadd fast float %1722, %1720
  %1724 = fmul fast float %1723, %1717
  %1725 = fmul fast float %1715, 2.000000e+00
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1726, %1718
  %1728 = fadd fast float %1727, %1725
  %1729 = fmul fast float %1728, %1718
  %1730 = fmul fast float %1716, 2.000000e+00
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = fmul fast float %1731, %1719
  %1733 = fadd fast float %1732, %1730
  %1734 = fmul fast float %1733, %1719
  %1735 = fmul fast float %1724, %1724
  %1736 = fmul fast float %1729, %1729
  %1737 = fmul fast float %1734, %1734
  br label %1754

; <label>:1738                                    ; preds = %1701
  %1739 = fmul fast float %291, %291
  %1740 = fmul fast float %295, %295
  %1741 = fmul fast float %299, %299
  %1742 = fadd fast float %1739, -1.000000e+00
  %1743 = fadd fast float %1740, -1.000000e+00
  %1744 = fadd fast float %1741, -1.000000e+00
  %1745 = fmul fast float %1590, %1742
  %1746 = fmul fast float %1590, %1743
  %1747 = fmul fast float %1590, %1744
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fadd fast float %1746, 1.000000e+00
  %1750 = fadd fast float %1747, 1.000000e+00
  %1751 = fmul fast float %1748, %1565
  %1752 = fmul fast float %1749, %1566
  %1753 = fmul fast float %1750, %1567
  br label %1754

; <label>:1754                                    ; preds = %1738, %1704, %1595, %1551
  %1755 = phi float [ %1700, %1595 ], [ %1576, %1704 ], [ %1576, %1738 ], [ 0x3FA23C0BE0000000, %1551 ]
  %1756 = phi float [ %1692, %1595 ], [ %1735, %1704 ], [ %1751, %1738 ], [ 1.000000e+00, %1551 ]
  %1757 = phi float [ %1693, %1595 ], [ %1736, %1704 ], [ %1752, %1738 ], [ 1.000000e+00, %1551 ]
  %1758 = phi float [ %1694, %1595 ], [ %1737, %1704 ], [ %1753, %1738 ], [ 1.000000e+00, %1551 ]
  %1759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.i32 %1759, 1
  %1761 = and i32 %1760, 1
  %1762 = icmp ne i32 %1761, 0
  %1763 = add i32 %54, 356
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 32
  %1767 = icmp ne i32 %1766, 0
  %1768 = and i1 %1762, %1767
  %1769 = select i1 %1768, float 1.000000e+00, float %1756
  %1770 = select i1 %1768, float 0x3FD3333340000000, float %1757
  %1771 = select i1 %1768, float 0x3FD3333340000000, float %1758
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 32
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1848, label %1776

; <label>:1776                                    ; preds = %1754
  %1777 = add i32 %54, 108
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %54, 380
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %1782, 0
  %1784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1785 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1784, %dx.types.Handle %96, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1790 = and i32 %1779, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1779, 8
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1779, 16
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = fmul fast float %1797, 0x3F70101000000000
  %1799 = fmul fast float %1786, %1791
  %1800 = fadd fast float %1799, %1794
  %1801 = fmul fast float %1800, 0x3F70101000000000
  %1802 = fadd fast float %1787, -5.000000e-01
  %1803 = fadd fast float %1789, -5.000000e-01
  %1804 = fmul fast float %1802, %1798
  %1805 = fmul fast float %1803, %1798
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fmul fast float %1806, 2.000000e+00
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = fmul fast float %1807, 2.000000e+00
  %1811 = fadd fast float %1810, -1.000000e+00
  %1812 = fadd fast float %1809, %1811
  %1813 = fmul fast float %1812, 5.000000e-01
  %1814 = fsub fast float %1809, %1811
  %1815 = fmul fast float %1814, 5.000000e-01
  %1816 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1817 = fsub fast float 1.000000e+00, %1816
  %1818 = call float @dx.op.unary.f32(i32 6, float %1815)  ; FAbs(value)
  %1819 = fsub fast float %1817, %1818
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1815, float %1819, float %1813, float %1815, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = call float @dx.op.unary.f32(i32 25, float %1820)  ; Rsqrt(value)
  %1822 = fmul fast float %1813, %1821
  %1823 = fmul fast float %1815, %1821
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 67108864
  %1827 = icmp eq i32 %1826, 0
  br i1 %1827, label %1844, label %1828

; <label>:1828                                    ; preds = %1776
  %1829 = add i32 %54, 296
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 65535
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 65535
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = lshr i32 %1831, 16
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = fsub fast float %1801, %1839
  %1841 = fmul fast float %1840, %1833
  %1842 = fadd fast float %1841, %1837
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  br label %1844

; <label>:1844                                    ; preds = %1828, %1776
  %1845 = phi float [ %1843, %1828 ], [ %1801, %1776 ]
  %1846 = call float @dx.op.dot2.f32(i32 54, float %1822, float %1823, float %1265, float %1266)  ; Dot2(ax,ay,bx,by)
  %1847 = call float @dx.op.dot2.f32(i32 54, float %1822, float %1823, float %1267, float %1268)  ; Dot2(ax,ay,bx,by)
  br label %1848

; <label>:1848                                    ; preds = %1844, %1754
  %1849 = phi float [ %1845, %1844 ], [ 0x3FD6666660000000, %1754 ]
  %1850 = phi float [ %1846, %1844 ], [ 0.000000e+00, %1754 ]
  %1851 = phi float [ %1847, %1844 ], [ 0.000000e+00, %1754 ]
  %1852 = phi float [ %1788, %1844 ], [ 1.000000e+00, %1754 ]
  %1853 = add i32 %54, 176
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = lshr i32 %1855, 22
  %1857 = shl nuw nsw i32 %1856, 5
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 64
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1896, label %1863

; <label>:1863                                    ; preds = %1848
  %1864 = add i32 %54, 396
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = add i32 %1866, 0
  %1868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 131072
  %1872 = icmp eq i32 %1871, 0
  %1873 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1868, %dx.types.Handle %96, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = fmul fast float %1874, %279
  %1878 = fmul fast float %1875, %282
  %1879 = fmul fast float %1876, %285
  br i1 %1872, label %1886, label %1880

; <label>:1880                                    ; preds = %1863
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = fmul fast float %1882, %1877
  %1884 = fmul fast float %1882, %1878
  %1885 = fmul fast float %1882, %1879
  br label %1886

; <label>:1886                                    ; preds = %1880, %1863
  %1887 = phi float [ %1883, %1880 ], [ %1877, %1863 ]
  %1888 = phi float [ %1884, %1880 ], [ %1878, %1863 ]
  %1889 = phi float [ %1885, %1880 ], [ %1879, %1863 ]
  %1890 = fmul fast float %1887, %1858
  %1891 = select i1 %217, float %1890, float %1887
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1888, float %1889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = select i1 %217, float 0.000000e+00, float %1887
  %1894 = select i1 %217, float %1892, float %1888
  %1895 = select i1 %217, float 0.000000e+00, float %1889
  br label %1896

; <label>:1896                                    ; preds = %1886, %1848
  %1897 = phi float [ %1893, %1886 ], [ 0.000000e+00, %1848 ]
  %1898 = phi float [ %1894, %1886 ], [ 0.000000e+00, %1848 ]
  %1899 = phi float [ %1895, %1886 ], [ 0.000000e+00, %1848 ]
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 1024
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1934, label %1904

; <label>:1904                                    ; preds = %1896
  %1905 = add i32 %54, 168
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 255
  %1909 = uitofp i32 %1908 to float
  %1910 = fmul fast float %1909, 0x3F70101020000000
  %1911 = lshr i32 %1907, 8
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = lshr i32 %1907, 16
  %1916 = and i32 %1915, 255
  %1917 = uitofp i32 %1916 to float
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = fmul fast float %1910, %1910
  %1920 = fmul fast float %1914, %1914
  %1921 = fmul fast float %1918, %1918
  %1922 = add i32 %54, 460
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = add i32 %1924, 0
  %1926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1926, %dx.types.Handle %97, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = fmul fast float %1919, %1928
  %1932 = fmul fast float %1920, %1929
  %1933 = fmul fast float %1921, %1930
  br label %1934

; <label>:1934                                    ; preds = %1904, %1896
  %1935 = phi float [ %1931, %1904 ], [ 0.000000e+00, %1896 ]
  %1936 = phi float [ %1932, %1904 ], [ 0.000000e+00, %1896 ]
  %1937 = phi float [ %1933, %1904 ], [ 0.000000e+00, %1896 ]
  %1938 = fcmp fast ogt float %1935, 0.000000e+00
  %1939 = fcmp fast ogt float %1936, 0.000000e+00
  %1940 = fcmp fast ogt float %1937, 0.000000e+00
  %1941 = call float @dx.op.unary.f32(i32 23, float %1935)  ; Log(value)
  %1942 = call float @dx.op.unary.f32(i32 23, float %1936)  ; Log(value)
  %1943 = call float @dx.op.unary.f32(i32 23, float %1937)  ; Log(value)
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = lshr i32 %1945, 7
  %1947 = and i32 %1946, 32752
  %1948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1947)  ; LegacyF16ToF32(value)
  %1949 = fmul fast float %1941, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1948
  %1951 = fmul fast float %1942, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1948
  %1953 = fmul fast float %1943, 0xBFE62E4300000000
  %1954 = fmul fast float %1953, %1948
  %1955 = select i1 %1938, float %1950, float 1.270000e+02
  %1956 = select i1 %1939, float %1952, float 1.270000e+02
  %1957 = select i1 %1940, float %1954, float 1.270000e+02
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 10240
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %2006, label %1962

; <label>:1962                                    ; preds = %1934
  %1963 = add i32 %54, 476
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = add i32 %1965, 0
  %1967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1967, %dx.types.Handle %97, float %1361, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 1
  %1970 = extractvalue %dx.types.ResRet.f32 %1968, 3
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 1048576
  %1974 = icmp ne i32 %1973, 0
  %1975 = and i32 %1972, 8192
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %1992, label %1977

; <label>:1977                                    ; preds = %1962
  %1978 = extractvalue %dx.types.ResRet.f32 %1968, 2
  %1979 = select i1 %1974, float %1978, float %1969
  %1980 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1981 = select i1 %1974, float %1980, float %1969
  %1982 = add i32 %54, 112
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = lshr i32 %1984, 16
  %1986 = and i32 %1985, 255
  %1987 = uitofp i32 %1986 to float
  %1988 = fmul fast float %1987, 0x3F80101020000000
  %1989 = fmul fast float %1988, %1981
  %1990 = fmul fast float %1988, %1969
  %1991 = fmul fast float %1988, %1979
  br label %1992

; <label>:1992                                    ; preds = %1977, %1962
  %1993 = phi float [ %1989, %1977 ], [ 0.000000e+00, %1962 ]
  %1994 = phi float [ %1990, %1977 ], [ 0.000000e+00, %1962 ]
  %1995 = phi float [ %1991, %1977 ], [ 0.000000e+00, %1962 ]
  %1996 = and i32 %1972, 2048
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2006, label %1998

; <label>:1998                                    ; preds = %1992
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = shl i32 %2000, 4
  %2002 = and i32 %2001, 32752
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = fmul fast float %2003, %1970
  %2005 = call float @dx.op.binary.f32(i32 35, float %2004, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2006

; <label>:2006                                    ; preds = %1998, %1992, %1934
  %2007 = phi float [ %1993, %1998 ], [ %1993, %1992 ], [ 0.000000e+00, %1934 ]
  %2008 = phi float [ %1994, %1998 ], [ %1994, %1992 ], [ 0.000000e+00, %1934 ]
  %2009 = phi float [ %1995, %1998 ], [ %1995, %1992 ], [ 0.000000e+00, %1934 ]
  %2010 = phi float [ %2005, %1998 ], [ 0x3F70101020000000, %1992 ], [ 0x3F70101020000000, %1934 ]
  %2011 = add i32 %54, 112
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 255
  %2015 = uitofp i32 %2014 to float
  %2016 = lshr i32 %2013, 8
  %2017 = and i32 %2016, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1770, float %1771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2020 = fmul fast float %2018, %2019
  %2021 = fadd fast float %2020, %2015
  %2022 = fmul fast float %2021, 0x3F70101020000000
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  br i1 %1253, label %2024, label %2059

; <label>:2024                                    ; preds = %2006
  %2025 = fmul fast float %2010, 2.000000e+00
  %2026 = fcmp fast olt float %1955, 1.270000e+02
  %2027 = fcmp fast olt float %1956, 1.270000e+02
  %2028 = fcmp fast olt float %1957, 1.270000e+02
  %2029 = fmul fast float %1955, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2025
  %2031 = fmul fast float %1956, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2025
  %2033 = fmul fast float %1957, 0xBFF7154760000000
  %2034 = fmul fast float %2033, %2025
  %2035 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2037 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2039 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = fadd fast float %2038, -1.000000e+00
  %2042 = select i1 %2026, float %2041, float -1.000000e+00
  %2043 = fadd fast float %2039, -1.000000e+00
  %2044 = select i1 %2027, float %2043, float -1.000000e+00
  %2045 = fadd fast float %2040, -1.000000e+00
  %2046 = select i1 %2028, float %2045, float -1.000000e+00
  %2047 = fmul fast float %2042, %1549
  %2048 = fmul fast float %2044, %1549
  %2049 = fmul fast float %2046, %1549
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fadd fast float %2048, 1.000000e+00
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fmul fast float %2050, %1237
  %2054 = fmul fast float %2051, %1238
  %2055 = fmul fast float %2052, %1239
  %2056 = fmul fast float %2050, %1234
  %2057 = fmul fast float %2051, %1235
  %2058 = fmul fast float %2052, %1236
  br label %2059

; <label>:2059                                    ; preds = %2024, %2006
  %2060 = phi float [ %2056, %2024 ], [ %1234, %2006 ]
  %2061 = phi float [ %2057, %2024 ], [ %1235, %2006 ]
  %2062 = phi float [ %2058, %2024 ], [ %1236, %2006 ]
  %2063 = phi float [ %2053, %2024 ], [ %1237, %2006 ]
  %2064 = phi float [ %2054, %2024 ], [ %1238, %2006 ]
  %2065 = phi float [ %2055, %2024 ], [ %1239, %2006 ]
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 3
  %2069 = icmp eq i32 %2068, 3
  br i1 %2069, label %2148, label %2070

; <label>:2070                                    ; preds = %2059
  %2071 = and i32 %2067, 16
  %2072 = icmp ne i32 %2071, 0
  %2073 = select i1 %2072, float %1549, float 0.000000e+00
  %2074 = icmp eq i32 %2068, 0
  br i1 %2074, label %2075, label %2103

; <label>:2075                                    ; preds = %2070
  %2076 = and i32 %2067, 64
  %2077 = icmp ne i32 %2076, 0
  %2078 = select i1 %2077, float %1549, float 0.000000e+00
  %2079 = fsub fast float %1769, %2063
  %2080 = fsub fast float %1770, %2064
  %2081 = fsub fast float %1771, %2065
  %2082 = fmul fast float %2073, %2079
  %2083 = fmul fast float %2073, %2080
  %2084 = fmul fast float %2073, %2081
  %2085 = fadd fast float %2082, %2063
  %2086 = fadd fast float %2083, %2064
  %2087 = fadd fast float %2084, %2065
  %2088 = fsub fast float %1755, %1246
  %2089 = fmul fast float %2073, %2088
  %2090 = fadd fast float %2089, %1246
  %2091 = fsub fast float %1897, %2060
  %2092 = fsub fast float %1898, %2061
  %2093 = fsub fast float %1899, %2062
  %2094 = fmul fast float %2078, %2091
  %2095 = fmul fast float %2078, %2092
  %2096 = fmul fast float %2078, %2093
  %2097 = fadd fast float %2094, %2060
  %2098 = fadd fast float %2095, %2061
  %2099 = fadd fast float %2096, %2062
  %2100 = fsub fast float %2023, %1251
  %2101 = fmul fast float %2073, %2100
  %2102 = fadd fast float %2101, %1251
  br label %2148

; <label>:2103                                    ; preds = %2070
  %2104 = icmp eq i32 %2068, 1
  br i1 %2104, label %2105, label %2118

; <label>:2105                                    ; preds = %2103
  %2106 = fadd fast float %1769, -1.000000e+00
  %2107 = fadd fast float %1770, -1.000000e+00
  %2108 = fadd fast float %1771, -1.000000e+00
  %2109 = fmul fast float %2073, %2106
  %2110 = fmul fast float %2073, %2107
  %2111 = fmul fast float %2073, %2108
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fadd fast float %2110, 1.000000e+00
  %2114 = fadd fast float %2111, 1.000000e+00
  %2115 = fmul fast float %2112, %2063
  %2116 = fmul fast float %2113, %2064
  %2117 = fmul fast float %2114, %2065
  br label %2148

; <label>:2118                                    ; preds = %2103
  %2119 = icmp eq i32 %2068, 2
  br i1 %2119, label %2120, label %2148

; <label>:2120                                    ; preds = %2118
  %2121 = call float @dx.op.unary.f32(i32 24, float %1769)  ; Sqrt(value)
  %2122 = call float @dx.op.unary.f32(i32 24, float %1770)  ; Sqrt(value)
  %2123 = call float @dx.op.unary.f32(i32 24, float %1771)  ; Sqrt(value)
  %2124 = fadd fast float %2121, -5.000000e-01
  %2125 = fadd fast float %2122, -5.000000e-01
  %2126 = fadd fast float %2123, -5.000000e-01
  %2127 = fmul fast float %2124, %2073
  %2128 = fmul fast float %2125, %2073
  %2129 = fmul fast float %2126, %2073
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fadd fast float %2128, 5.000000e-01
  %2132 = fadd fast float %2129, 5.000000e-01
  %2133 = fmul fast float %2130, 2.000000e+00
  %2134 = fsub fast float 1.000000e+00, %2133
  %2135 = fmul fast float %2134, %2063
  %2136 = fadd fast float %2135, %2133
  %2137 = fmul fast float %2136, %2063
  %2138 = fmul fast float %2131, 2.000000e+00
  %2139 = fsub fast float 1.000000e+00, %2138
  %2140 = fmul fast float %2139, %2064
  %2141 = fadd fast float %2140, %2138
  %2142 = fmul fast float %2141, %2064
  %2143 = fmul fast float %2132, 2.000000e+00
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = fmul fast float %2144, %2065
  %2146 = fadd fast float %2145, %2143
  %2147 = fmul fast float %2146, %2065
  br label %2148

; <label>:2148                                    ; preds = %2120, %2118, %2105, %2075, %2059
  %2149 = phi float [ %2060, %2059 ], [ %2060, %2120 ], [ %2060, %2118 ], [ %2060, %2105 ], [ %2097, %2075 ]
  %2150 = phi float [ %2061, %2059 ], [ %2061, %2120 ], [ %2061, %2118 ], [ %2061, %2105 ], [ %2098, %2075 ]
  %2151 = phi float [ %2062, %2059 ], [ %2062, %2120 ], [ %2062, %2118 ], [ %2062, %2105 ], [ %2099, %2075 ]
  %2152 = phi float [ %2063, %2059 ], [ %2137, %2120 ], [ %2063, %2118 ], [ %2115, %2105 ], [ %2085, %2075 ]
  %2153 = phi float [ %2064, %2059 ], [ %2142, %2120 ], [ %2064, %2118 ], [ %2116, %2105 ], [ %2086, %2075 ]
  %2154 = phi float [ %2065, %2059 ], [ %2147, %2120 ], [ %2065, %2118 ], [ %2117, %2105 ], [ %2087, %2075 ]
  %2155 = phi float [ %1246, %2059 ], [ %1246, %2120 ], [ %1246, %2118 ], [ %1246, %2105 ], [ %2090, %2075 ]
  %2156 = phi float [ %1251, %2059 ], [ %1251, %2120 ], [ %1251, %2118 ], [ %1251, %2105 ], [ %2102, %2075 ]
  %2157 = and i32 %2067, 12
  %2158 = icmp eq i32 %2157, 12
  br i1 %2158, label %2289, label %2159

; <label>:2159                                    ; preds = %2148
  %2160 = and i32 %2067, 2097184
  %2161 = icmp eq i32 %2160, 2097184
  %2162 = select i1 %2161, float %1549, float 0.000000e+00
  %2163 = and i32 %2067, 4194336
  %2164 = icmp eq i32 %2163, 4194336
  %2165 = select i1 %2164, float %1549, float 0.000000e+00
  %2166 = and i32 %2067, 8388640
  %2167 = icmp eq i32 %2166, 8388640
  %2168 = select i1 %2167, float %1549, float 0.000000e+00
  %2169 = and i32 %2067, 1024
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %1549, float 0.000000e+00
  %2172 = and i32 %2067, 2048
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1549, float 0.000000e+00
  %2175 = and i32 %2067, 8192
  %2176 = icmp ne i32 %2175, 0
  %2177 = select i1 %2176, float %1549, float 0.000000e+00
  %2178 = icmp eq i32 %2157, 0
  br i1 %2178, label %2179, label %2213

; <label>:2179                                    ; preds = %2159
  %2180 = fsub fast float %1850, %1232
  %2181 = fsub fast float %1851, %1233
  %2182 = fmul fast float %2162, %2180
  %2183 = fmul fast float %2162, %2181
  %2184 = fadd fast float %2182, %1232
  %2185 = fadd fast float %2183, %1233
  %2186 = fsub fast float %1852, %1249
  %2187 = fmul fast float %2165, %2186
  %2188 = fadd fast float %2187, %1249
  %2189 = fsub fast float %1849, %1248
  %2190 = fmul fast float %2168, %2189
  %2191 = fadd fast float %2190, %1248
  %2192 = fsub fast float %1955, %1240
  %2193 = fsub fast float %1956, %1241
  %2194 = fsub fast float %1957, %1242
  %2195 = fmul fast float %2171, %2192
  %2196 = fmul fast float %2171, %2193
  %2197 = fmul fast float %2171, %2194
  %2198 = fadd fast float %2195, %1240
  %2199 = fadd fast float %2196, %1241
  %2200 = fadd fast float %2197, %1242
  %2201 = fsub fast float %2010, %1250
  %2202 = fmul fast float %2174, %2201
  %2203 = fadd fast float %2202, %1250
  %2204 = fsub fast float %2007, %1243
  %2205 = fsub fast float %2008, %1244
  %2206 = fsub fast float %2009, %1245
  %2207 = fmul fast float %2177, %2204
  %2208 = fmul fast float %2177, %2205
  %2209 = fmul fast float %2177, %2206
  %2210 = fadd fast float %2207, %1243
  %2211 = fadd fast float %2208, %1244
  %2212 = fadd fast float %2209, %1245
  br label %2289

; <label>:2213                                    ; preds = %2159
  %2214 = icmp eq i32 %2157, 4
  br i1 %2214, label %2215, label %2261

; <label>:2215                                    ; preds = %2213
  %2216 = fmul fast float %2162, %1850
  %2217 = fmul fast float %2162, %1851
  %2218 = fadd fast float %2216, %1232
  %2219 = fadd fast float %2217, %1233
  %2220 = call float @dx.op.binary.f32(i32 36, float %1249, float %1852)  ; FMin(a,b)
  %2221 = fsub fast float %2220, %1249
  %2222 = fmul fast float %2221, %2165
  %2223 = fadd fast float %2222, %1249
  %2224 = fadd fast float %1849, %1248
  %2225 = fmul fast float %2224, 0x3FF337FAE0000000
  %2226 = fmul fast float %1248, %1248
  %2227 = fmul fast float %1849, %1849
  %2228 = fadd fast float %2227, %2226
  %2229 = fmul fast float %2228, 0x3FE5152B00000000
  %2230 = fmul fast float %1248, 0xBFCC1F85E0000000
  %2231 = fmul fast float %2230, %1849
  %2232 = fadd fast float %2231, 0xBFE1363700000000
  %2233 = fadd fast float %2232, %2225
  %2234 = fsub fast float %2233, %2229
  %2235 = fmul fast float %2224, 0x3FBA6F0D00000000
  %2236 = fmul fast float %2228, 0x3FD0432880000000
  %2237 = fmul fast float %1248, 0xBFEF110800000000
  %2238 = fmul fast float %2237, %1849
  %2239 = fadd fast float %2238, 1.000000e+00
  %2240 = fsub fast float %2239, %2235
  %2241 = fadd fast float %2240, %2236
  %2242 = fdiv fast float %2234, %2241
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = fsub fast float %2243, %1248
  %2245 = fmul fast float %2244, %2168
  %2246 = fadd fast float %2245, %1248
  %2247 = fmul fast float %2171, %1955
  %2248 = fmul fast float %2171, %1956
  %2249 = fmul fast float %2171, %1957
  %2250 = fadd fast float %2247, %1240
  %2251 = fadd fast float %2248, %1241
  %2252 = fadd fast float %2249, %1242
  %2253 = fmul fast float %2174, %2010
  %2254 = fadd fast float %2253, %1250
  %2255 = fmul fast float %2177, %2007
  %2256 = fmul fast float %2177, %2008
  %2257 = fmul fast float %2177, %2009
  %2258 = fadd fast float %2255, %1243
  %2259 = fadd fast float %2256, %1244
  %2260 = fadd fast float %2257, %1245
  br label %2289

; <label>:2261                                    ; preds = %2213
  %2262 = icmp eq i32 %2157, 8
  br i1 %2262, label %2263, label %2289

; <label>:2263                                    ; preds = %2261
  %2264 = fmul fast float %2162, %1850
  %2265 = fmul fast float %2162, %1851
  %2266 = fadd fast float %2264, %1232
  %2267 = fadd fast float %2265, %1233
  %2268 = call float @dx.op.binary.f32(i32 36, float %1249, float %1852)  ; FMin(a,b)
  %2269 = fsub fast float %2268, %1249
  %2270 = fmul fast float %2269, %2165
  %2271 = fadd fast float %2270, %1249
  %2272 = fsub fast float %1849, %1248
  %2273 = fmul fast float %2168, %2272
  %2274 = fadd fast float %2273, %1248
  %2275 = fmul fast float %2171, %1955
  %2276 = fmul fast float %2171, %1956
  %2277 = fmul fast float %2171, %1957
  %2278 = fadd fast float %2275, %1240
  %2279 = fadd fast float %2276, %1241
  %2280 = fadd fast float %2277, %1242
  %2281 = fmul fast float %2174, %2010
  %2282 = fadd fast float %2281, %1250
  %2283 = fmul fast float %2177, %2007
  %2284 = fmul fast float %2177, %2008
  %2285 = fmul fast float %2177, %2009
  %2286 = fadd fast float %2283, %1243
  %2287 = fadd fast float %2284, %1244
  %2288 = fadd fast float %2285, %1245
  br label %2289

; <label>:2289                                    ; preds = %2263, %2261, %2215, %2179, %2148, %1548, %1252, %1231
  %2290 = phi float [ %1232, %2148 ], [ %1232, %1548 ], [ %1232, %1231 ], [ %2266, %2263 ], [ %1232, %2261 ], [ %2218, %2215 ], [ %2184, %2179 ], [ %1232, %1252 ]
  %2291 = phi float [ %1233, %2148 ], [ %1233, %1548 ], [ %1233, %1231 ], [ %2267, %2263 ], [ %1233, %2261 ], [ %2219, %2215 ], [ %2185, %2179 ], [ %1233, %1252 ]
  %2292 = phi float [ %2149, %2148 ], [ %1234, %1548 ], [ %1234, %1231 ], [ %2149, %2263 ], [ %2149, %2261 ], [ %2149, %2215 ], [ %2149, %2179 ], [ %1234, %1252 ]
  %2293 = phi float [ %2150, %2148 ], [ %1235, %1548 ], [ %1235, %1231 ], [ %2150, %2263 ], [ %2150, %2261 ], [ %2150, %2215 ], [ %2150, %2179 ], [ %1235, %1252 ]
  %2294 = phi float [ %2151, %2148 ], [ %1236, %1548 ], [ %1236, %1231 ], [ %2151, %2263 ], [ %2151, %2261 ], [ %2151, %2215 ], [ %2151, %2179 ], [ %1236, %1252 ]
  %2295 = phi float [ %2152, %2148 ], [ %1237, %1548 ], [ %1237, %1231 ], [ %2152, %2263 ], [ %2152, %2261 ], [ %2152, %2215 ], [ %2152, %2179 ], [ %1237, %1252 ]
  %2296 = phi float [ %2153, %2148 ], [ %1238, %1548 ], [ %1238, %1231 ], [ %2153, %2263 ], [ %2153, %2261 ], [ %2153, %2215 ], [ %2153, %2179 ], [ %1238, %1252 ]
  %2297 = phi float [ %2154, %2148 ], [ %1239, %1548 ], [ %1239, %1231 ], [ %2154, %2263 ], [ %2154, %2261 ], [ %2154, %2215 ], [ %2154, %2179 ], [ %1239, %1252 ]
  %2298 = phi float [ %1240, %2148 ], [ %1240, %1548 ], [ %1240, %1231 ], [ %2278, %2263 ], [ %1240, %2261 ], [ %2250, %2215 ], [ %2198, %2179 ], [ %1240, %1252 ]
  %2299 = phi float [ %1241, %2148 ], [ %1241, %1548 ], [ %1241, %1231 ], [ %2279, %2263 ], [ %1241, %2261 ], [ %2251, %2215 ], [ %2199, %2179 ], [ %1241, %1252 ]
  %2300 = phi float [ %1242, %2148 ], [ %1242, %1548 ], [ %1242, %1231 ], [ %2280, %2263 ], [ %1242, %2261 ], [ %2252, %2215 ], [ %2200, %2179 ], [ %1242, %1252 ]
  %2301 = phi float [ %1243, %2148 ], [ %1243, %1548 ], [ %1243, %1231 ], [ %2286, %2263 ], [ %1243, %2261 ], [ %2258, %2215 ], [ %2210, %2179 ], [ %1243, %1252 ]
  %2302 = phi float [ %1244, %2148 ], [ %1244, %1548 ], [ %1244, %1231 ], [ %2287, %2263 ], [ %1244, %2261 ], [ %2259, %2215 ], [ %2211, %2179 ], [ %1244, %1252 ]
  %2303 = phi float [ %1245, %2148 ], [ %1245, %1548 ], [ %1245, %1231 ], [ %2288, %2263 ], [ %1245, %2261 ], [ %2260, %2215 ], [ %2212, %2179 ], [ %1245, %1252 ]
  %2304 = phi float [ %2155, %2148 ], [ %1246, %1548 ], [ %1246, %1231 ], [ %2155, %2263 ], [ %2155, %2261 ], [ %2155, %2215 ], [ %2155, %2179 ], [ %1246, %1252 ]
  %2305 = phi float [ %1248, %2148 ], [ %1248, %1548 ], [ %1248, %1231 ], [ %2274, %2263 ], [ %1248, %2261 ], [ %2246, %2215 ], [ %2191, %2179 ], [ %1248, %1252 ]
  %2306 = phi float [ %1249, %2148 ], [ %1249, %1548 ], [ %1249, %1231 ], [ %2271, %2263 ], [ %1249, %2261 ], [ %2223, %2215 ], [ %2188, %2179 ], [ %1249, %1252 ]
  %2307 = phi float [ %1250, %2148 ], [ %1250, %1548 ], [ %1250, %1231 ], [ %2282, %2263 ], [ %1250, %2261 ], [ %2254, %2215 ], [ %2203, %2179 ], [ %1250, %1252 ]
  %2308 = phi float [ %2156, %2148 ], [ %1251, %1548 ], [ %1251, %1231 ], [ %2156, %2263 ], [ %2156, %2261 ], [ %2156, %2215 ], [ %2156, %2179 ], [ %1251, %1252 ]
  br i1 %406, label %3346, label %2309

; <label>:2309                                    ; preds = %2289
  %2310 = icmp ult i32 %462, 3
  %2311 = add i32 %54, 56
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = add i32 %54, 60
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = or i32 %2316, %2313
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %3346, label %2319

; <label>:2319                                    ; preds = %2309
  %2320 = and i32 %2313, 262144
  %2321 = icmp ne i32 %2320, 0
  %2322 = select i1 %2321, float %57, float 1.000000e+00
  %2323 = select i1 %2321, float %58, float 0.000000e+00
  %2324 = select i1 %2321, float %59, float 0.000000e+00
  %2325 = select i1 %2321, float %60, float 1.000000e+00
  %2326 = select i1 %2321, float %61, float %82
  %2327 = select i1 %2321, float %62, float %83
  %2328 = add i32 %54, 316
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = lshr i32 %2330, 16
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = fmul fast float %2332, 0x3F50624DE0000000
  %2334 = add i32 %54, 120
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = lshr i32 %2336, 16
  %2338 = and i32 %2337, 255
  %2339 = lshr i32 %2336, 24
  %2340 = add i32 %54, 324
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2342, 16
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = add i32 %54, 64
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = lshr i32 %2349, 22
  %2351 = shl nuw nsw i32 %2350, 5
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = shl i32 %2349, 4
  %2354 = and i32 %2353, 32752
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = lshr i32 %2349, 7
  %2357 = and i32 %2356, 32752
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2361 = fmul fast float %2360, 1.000000e+03
  %2362 = fmul fast float %356, %2361
  %2363 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2364 = fadd fast float %2363, %346
  %2365 = fmul fast float %357, %2361
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fadd fast float %2366, %348
  %2368 = fmul fast float %2333, %2361
  %2369 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2370 = fmul fast float %2369, 0x401921FB60000000
  %2371 = fadd fast float %2370, %2352
  %2372 = call float @dx.op.unary.f32(i32 13, float %2371)  ; Sin(value)
  %2373 = call float @dx.op.unary.f32(i32 12, float %2371)  ; Cos(value)
  %2374 = fsub fast float -0.000000e+00, %2372
  %2375 = fadd fast float %2326, -5.000000e-01
  %2376 = fadd fast float %2327, -5.000000e-01
  %2377 = fmul fast float %2344, %2375
  %2378 = fmul fast float %2346, %2376
  %2379 = fadd fast float %2377, 5.000000e-01
  %2380 = fadd fast float %2378, 5.000000e-01
  %2381 = fmul fast float %2355, %2379
  %2382 = fmul fast float %2358, %2380
  %2383 = fmul fast float %2373, %2381
  %2384 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2382, float %2383)  ; FMad(a,b,c)
  %2385 = fmul fast float %2372, %2381
  %2386 = call float @dx.op.tertiary.f32(i32 46, float %2373, float %2382, float %2385)  ; FMad(a,b,c)
  %2387 = fadd fast float %2364, %2384
  %2388 = fadd fast float %2367, %2386
  %2389 = icmp ugt i32 %2338, 1
  %2390 = icmp ugt i32 %2336, 33554431
  %2391 = or i1 %2390, %2389
  br i1 %2391, label %2392, label %2417

; <label>:2392                                    ; preds = %2319
  %2393 = add i32 %54, 260
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = lshr i32 %2395, 16
  %2397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2396)  ; LegacyF16ToF32(value)
  %2398 = fmul fast float %2360, %2397
  %2399 = call float @dx.op.unary.f32(i32 22, float %2398)  ; Frc(value)
  %2400 = mul nuw nsw i32 %2338, %2339
  %2401 = uitofp i32 %2400 to float
  %2402 = fmul fast float %2399, %2401
  %2403 = call float @dx.op.unary.f32(i32 27, float %2402)  ; Round_ni(value)
  %2404 = fptoui float %2403 to i32
  %2405 = urem i32 %2404, %2338
  %2406 = udiv i32 %2404, %2339
  %2407 = call float @dx.op.unary.f32(i32 22, float %2387)  ; Frc(value)
  %2408 = call float @dx.op.unary.f32(i32 22, float %2388)  ; Frc(value)
  %2409 = uitofp i32 %2405 to float
  %2410 = uitofp i32 %2406 to float
  %2411 = fadd fast float %2407, %2409
  %2412 = fadd fast float %2408, %2410
  %2413 = uitofp i32 %2338 to float
  %2414 = uitofp i32 %2339 to float
  %2415 = fdiv fast float %2411, %2413
  %2416 = fdiv fast float %2412, %2414
  br label %2417

; <label>:2417                                    ; preds = %2392, %2319
  %2418 = phi float [ %2415, %2392 ], [ %2387, %2319 ]
  %2419 = phi float [ %2416, %2392 ], [ %2388, %2319 ]
  %2420 = and i32 %2313, 16777216
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2531, label %2422

; <label>:2422                                    ; preds = %2417
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2427 = fadd fast float %2424, %155
  %2428 = fadd fast float %2425, %156
  %2429 = fadd fast float %2426, %157
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2432 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2433 = icmp eq i32 %55, 65535
  br i1 %2433, label %2528, label %2434

; <label>:2434                                    ; preds = %2422
  %2435 = lshr i32 %55, 1
  %2436 = shl i32 %2435, 2
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %55, 1
  %2440 = icmp ne i32 %2439, 0
  %2441 = lshr i32 %2438, 16
  %2442 = and i32 %2438, 65535
  %2443 = select i1 %2440, i32 %2441, i32 %2442
  %2444 = icmp eq i32 %2443, 65535
  br i1 %2444, label %2524, label %2445

; <label>:2445                                    ; preds = %2434
  %2446 = mul nuw nsw i32 %2443, 40
  %2447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.f32 %2447, 0
  %2449 = extractvalue %dx.types.ResRet.f32 %2447, 1
  %2450 = extractvalue %dx.types.ResRet.f32 %2447, 2
  %2451 = add nuw nsw i32 %2446, 12
  %2452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.ResRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.ResRet.f32 %2452, 2
  %2456 = add nuw nsw i32 %2446, 24
  %2457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.ResRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.ResRet.f32 %2457, 2
  %2461 = add nuw nsw i32 %2446, 36
  %2462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.f32 %2462, 0
  %2464 = fsub fast float %2427, %2448
  %2465 = fsub fast float %2428, %2449
  %2466 = fsub fast float %2429, %2450
  %2467 = fmul fast float %2463, %2464
  %2468 = fmul fast float %2463, %2465
  %2469 = fmul fast float %2463, %2466
  %2470 = call float @dx.op.unary.f32(i32 27, float %2467)  ; Round_ni(value)
  %2471 = call float @dx.op.unary.f32(i32 27, float %2468)  ; Round_ni(value)
  %2472 = call float @dx.op.unary.f32(i32 27, float %2469)  ; Round_ni(value)
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fadd fast float %2471, 5.000000e-01
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fmul fast float %2473, %2453
  %2477 = fmul fast float %2474, %2454
  %2478 = fmul fast float %2475, %2455
  %2479 = shl i32 %55, 2
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = add i32 %2481, 0
  %2483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2484 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2485 = call float @dx.op.unary.f32(i32 22, float %2477)  ; Frc(value)
  %2486 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2483, %dx.types.Handle %49, float %2484, float %2485, float %2486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.ResRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.ResRet.f32 %2487, 2
  %2491 = fmul fast float %2488, 1.023000e+03
  %2492 = fmul fast float %2489, 1.023000e+03
  %2493 = fmul fast float %2490, 1.023000e+03
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = fadd fast float %2492, 5.000000e-01
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2498 = call float @dx.op.unary.f32(i32 27, float %2495)  ; Round_ni(value)
  %2499 = call float @dx.op.unary.f32(i32 27, float %2496)  ; Round_ni(value)
  %2500 = fsub fast float %2467, %2470
  %2501 = fsub fast float %2468, %2471
  %2502 = fsub fast float %2469, %2472
  %2503 = fmul fast float %2500, 7.500000e-01
  %2504 = fmul fast float %2501, 7.500000e-01
  %2505 = fmul fast float %2502, 7.500000e-01
  %2506 = fadd fast float %2470, 1.250000e-01
  %2507 = fadd fast float %2506, %2503
  %2508 = fadd fast float %2507, %2497
  %2509 = fadd fast float %2471, 1.250000e-01
  %2510 = fadd fast float %2509, %2504
  %2511 = fadd fast float %2510, %2498
  %2512 = fadd fast float %2472, 1.250000e-01
  %2513 = fadd fast float %2512, %2505
  %2514 = fadd fast float %2513, %2499
  %2515 = fmul fast float %2508, %2458
  %2516 = fmul fast float %2511, %2459
  %2517 = fmul fast float %2514, %2460
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %2519, 0
  %2521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2521, %dx.types.Handle %47, float %2515, float %2516, float %2517, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  br label %2524

; <label>:2524                                    ; preds = %2445, %2434
  %2525 = phi float [ %2523, %2445 ], [ -1.000000e+00, %2434 ]
  %2526 = fadd fast float %2525, %2432
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  br label %2528

; <label>:2528                                    ; preds = %2524, %2422
  %2529 = phi float [ %2527, %2524 ], [ %2432, %2422 ]
  %2530 = fmul fast float %2529, %458
  br label %2531

; <label>:2531                                    ; preds = %2528, %2417
  %2532 = phi float [ %2530, %2528 ], [ %458, %2417 ]
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 256
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2583, label %2537

; <label>:2537                                    ; preds = %2531
  %2538 = add i32 %54, 432
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %2540, 0
  %2542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2542, %dx.types.Handle %97, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = add i32 %54, 132
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = shl i32 %2547, 4
  %2549 = and i32 %2548, 32752
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = lshr i32 %2547, 7
  %2552 = and i32 %2551, 32752
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = fsub fast float 1.000000e+00, %2532
  %2555 = call float @dx.op.binary.f32(i32 35, float %2554, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2556 = bitcast float %2532 to i32
  %2557 = sitofp i32 %2556 to float
  %2558 = fadd fast float %2557, 0xC1CFBF8940000000
  %2559 = fmul fast float %2553, %2558
  %2560 = fadd fast float %2559, 0x41CFBF8940000000
  %2561 = fptosi float %2560 to i32
  %2562 = bitcast i32 %2561 to float
  %2563 = bitcast float %2555 to i32
  %2564 = sitofp i32 %2563 to float
  %2565 = fadd fast float %2564, 0xC1CFBF8940000000
  %2566 = fmul fast float %2565, %2553
  %2567 = fadd fast float %2566, 0x41CFBF8940000000
  %2568 = fptosi float %2567 to i32
  %2569 = bitcast i32 %2568 to float
  %2570 = fmul fast float %2562, %2550
  %2571 = fmul fast float %2569, %2550
  %2572 = fsub fast float %2555, %2570
  %2573 = fadd fast float %2571, %2555
  %2574 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2575 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2576 = fsub fast float %2544, %2574
  %2577 = fsub fast float %2575, %2574
  %2578 = bitcast float %2577 to i32
  %2579 = sub nsw i32 2129859010, %2578
  %2580 = bitcast i32 %2579 to float
  %2581 = fmul fast float %2580, %2576
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  br label %2583

; <label>:2583                                    ; preds = %2537, %2531
  %2584 = phi float [ %2582, %2537 ], [ %2532, %2531 ]
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 128
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2605, label %2589

; <label>:2589                                    ; preds = %2583
  %2590 = add i32 %54, 416
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %2592, 0
  %2594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2594, %dx.types.Handle %97, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = and i32 %2598, 524288
  %2600 = icmp ne i32 %2599, 0
  %2601 = fcmp fast ogt float %2596, 0x3FE0101020000000
  %2602 = select i1 %2601, float 1.000000e+00, float 0.000000e+00
  %2603 = select i1 %2600, float %2602, float %2596
  %2604 = fmul fast float %2603, %2584
  br label %2605

; <label>:2605                                    ; preds = %2589, %2583
  %2606 = phi float [ %2604, %2589 ], [ %2584, %2583 ]
  %2607 = fcmp fast ult float %2606, 0x3F70101020000000
  br i1 %2607, label %3346, label %2608

; <label>:2608                                    ; preds = %2605
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 16
  %2612 = icmp eq i32 %2611, 0
  br i1 %2612, label %2811, label %2613

; <label>:2613                                    ; preds = %2608
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %54, 368
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %2618, 0
  %2620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2620, %dx.types.Handle %96, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2625 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2626 = and i32 %2615, 255
  %2627 = uitofp i32 %2626 to float
  %2628 = lshr i32 %2615, 8
  %2629 = and i32 %2628, 255
  %2630 = uitofp i32 %2629 to float
  %2631 = fmul fast float %2625, %2627
  %2632 = fadd fast float %2631, %2630
  %2633 = fmul fast float %2632, 0x3F70101000000000
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 512
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2646, label %2638

; <label>:2638                                    ; preds = %2613
  %2639 = add i32 %54, 448
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = add i32 %2641, 0
  %2643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2643, %dx.types.Handle %97, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  br label %2646

; <label>:2646                                    ; preds = %2638, %2613
  %2647 = phi float [ %2645, %2638 ], [ 1.000000e+00, %2613 ]
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 33554432
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2758, label %2652

; <label>:2652                                    ; preds = %2646
  %2653 = add i32 %54, 256
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 65535
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = lshr i32 %2655, 16
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = add i32 %54, 260
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 65535
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = lshr i32 %2666, 24
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = and i32 %2666, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = lshr i32 %2666, 8
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = lshr i32 %2666, 16
  %2678 = and i32 %2677, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = add i32 %54, 252
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = lshr i32 %2683, 24
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = and i32 %2683, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = lshr i32 %2683, 8
  %2691 = and i32 %2690, 255
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = lshr i32 %2683, 16
  %2695 = and i32 %2694, 255
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = bitcast float %2622 to i32
  %2699 = ashr i32 %2698, 1
  %2700 = sub nsw i32 1597463174, %2699
  %2701 = bitcast i32 %2700 to float
  %2702 = fmul fast float %2622, 5.000000e-01
  %2703 = fmul fast float %2701, %2701
  %2704 = fmul fast float %2703, %2702
  %2705 = fsub fast float 1.500000e+00, %2704
  %2706 = fmul fast float %2701, %2622
  %2707 = fmul fast float %2706, %2705
  %2708 = bitcast float %2623 to i32
  %2709 = ashr i32 %2708, 1
  %2710 = sub nsw i32 1597463174, %2709
  %2711 = bitcast i32 %2710 to float
  %2712 = fmul fast float %2623, 5.000000e-01
  %2713 = fmul fast float %2711, %2711
  %2714 = fmul fast float %2713, %2712
  %2715 = fsub fast float 1.500000e+00, %2714
  %2716 = fmul fast float %2711, %2623
  %2717 = fmul fast float %2716, %2715
  %2718 = bitcast float %2624 to i32
  %2719 = ashr i32 %2718, 1
  %2720 = sub nsw i32 1597463174, %2719
  %2721 = bitcast i32 %2720 to float
  %2722 = fmul fast float %2624, 5.000000e-01
  %2723 = fmul fast float %2721, %2721
  %2724 = fmul fast float %2723, %2722
  %2725 = fsub fast float 1.500000e+00, %2724
  %2726 = fmul fast float %2721, %2624
  %2727 = fmul fast float %2726, %2725
  %2728 = fsub fast float %2707, %2689
  %2729 = fsub fast float %2717, %2693
  %2730 = fsub fast float %2727, %2697
  %2731 = fmul fast float %2728, %2657
  %2732 = fmul fast float %2729, %2659
  %2733 = fmul fast float %2730, %2664
  %2734 = fadd fast float %2731, %2672
  %2735 = fadd fast float %2732, %2676
  %2736 = fadd fast float %2733, %2680
  %2737 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2738 = call float @dx.op.unary.f32(i32 7, float %2735)  ; Saturate(value)
  %2739 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2740 = fmul fast float %2737, %2737
  %2741 = fmul fast float %2738, %2738
  %2742 = fmul fast float %2739, %2739
  %2743 = fsub fast float %2740, %2622
  %2744 = fsub fast float %2741, %2623
  %2745 = fsub fast float %2742, %2624
  %2746 = fmul fast float %2743, %2647
  %2747 = fmul fast float %2744, %2647
  %2748 = fmul fast float %2745, %2647
  %2749 = fadd fast float %2746, %2622
  %2750 = fadd fast float %2747, %2623
  %2751 = fadd fast float %2748, %2624
  %2752 = fadd fast float %2669, %2633
  %2753 = fsub fast float %2752, %2686
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = fsub fast float %2754, %2633
  %2756 = fmul fast float %2755, %2647
  %2757 = fadd fast float %2756, %2633
  br label %2811

; <label>:2758                                    ; preds = %2646
  %2759 = and i32 %2649, 134217728
  %2760 = icmp eq i32 %2759, 0
  br i1 %2760, label %2795, label %2761

; <label>:2761                                    ; preds = %2758
  %2762 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2763 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fadd fast float %2763, -5.000000e-01
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fmul fast float %2765, %2647
  %2769 = fmul fast float %2766, %2647
  %2770 = fmul fast float %2767, %2647
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fadd fast float %2769, 5.000000e-01
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = call float @dx.op.unary.f32(i32 24, float %2622)  ; Sqrt(value)
  %2775 = call float @dx.op.unary.f32(i32 24, float %2623)  ; Sqrt(value)
  %2776 = call float @dx.op.unary.f32(i32 24, float %2624)  ; Sqrt(value)
  %2777 = fmul fast float %2771, 2.000000e+00
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fmul fast float %2778, %2774
  %2780 = fadd fast float %2779, %2777
  %2781 = fmul fast float %2780, %2774
  %2782 = fmul fast float %2772, 2.000000e+00
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2775
  %2785 = fadd fast float %2784, %2782
  %2786 = fmul fast float %2785, %2775
  %2787 = fmul fast float %2773, 2.000000e+00
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = fmul fast float %2788, %2776
  %2790 = fadd fast float %2789, %2787
  %2791 = fmul fast float %2790, %2776
  %2792 = fmul fast float %2781, %2781
  %2793 = fmul fast float %2786, %2786
  %2794 = fmul fast float %2791, %2791
  br label %2811

; <label>:2795                                    ; preds = %2758
  %2796 = fmul fast float %333, %333
  %2797 = fmul fast float %337, %337
  %2798 = fmul fast float %341, %341
  %2799 = fadd fast float %2796, -1.000000e+00
  %2800 = fadd fast float %2797, -1.000000e+00
  %2801 = fadd fast float %2798, -1.000000e+00
  %2802 = fmul fast float %2647, %2799
  %2803 = fmul fast float %2647, %2800
  %2804 = fmul fast float %2647, %2801
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fadd fast float %2803, 1.000000e+00
  %2807 = fadd fast float %2804, 1.000000e+00
  %2808 = fmul fast float %2805, %2622
  %2809 = fmul fast float %2806, %2623
  %2810 = fmul fast float %2807, %2624
  br label %2811

; <label>:2811                                    ; preds = %2795, %2761, %2652, %2608
  %2812 = phi float [ %2757, %2652 ], [ %2633, %2761 ], [ %2633, %2795 ], [ 0x3FA23C0BE0000000, %2608 ]
  %2813 = phi float [ %2749, %2652 ], [ %2792, %2761 ], [ %2808, %2795 ], [ 1.000000e+00, %2608 ]
  %2814 = phi float [ %2750, %2652 ], [ %2793, %2761 ], [ %2809, %2795 ], [ 1.000000e+00, %2608 ]
  %2815 = phi float [ %2751, %2652 ], [ %2794, %2761 ], [ %2810, %2795 ], [ 1.000000e+00, %2608 ]
  %2816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.i32 %2816, 1
  %2818 = and i32 %2817, 1
  %2819 = icmp ne i32 %2818, 0
  %2820 = add i32 %54, 356
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 32
  %2824 = icmp ne i32 %2823, 0
  %2825 = and i1 %2819, %2824
  %2826 = select i1 %2825, float 1.000000e+00, float %2813
  %2827 = select i1 %2825, float 0x3FD3333340000000, float %2814
  %2828 = select i1 %2825, float 0x3FD3333340000000, float %2815
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 32
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2905, label %2833

; <label>:2833                                    ; preds = %2811
  %2834 = add i32 %54, 124
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %54, 384
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %96, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2847 = and i32 %2836, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2836, 8
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = lshr i32 %2836, 16
  %2853 = and i32 %2852, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = fmul fast float %2854, 0x3F70101000000000
  %2856 = fmul fast float %2843, %2848
  %2857 = fadd fast float %2856, %2851
  %2858 = fmul fast float %2857, 0x3F70101000000000
  %2859 = fadd fast float %2844, -5.000000e-01
  %2860 = fadd fast float %2846, -5.000000e-01
  %2861 = fmul fast float %2859, %2855
  %2862 = fmul fast float %2860, %2855
  %2863 = fadd fast float %2861, 5.000000e-01
  %2864 = fadd fast float %2862, 5.000000e-01
  %2865 = fmul fast float %2863, 2.000000e+00
  %2866 = fadd fast float %2865, -1.000000e+00
  %2867 = fmul fast float %2864, 2.000000e+00
  %2868 = fadd fast float %2867, -1.000000e+00
  %2869 = fadd fast float %2866, %2868
  %2870 = fmul fast float %2869, 5.000000e-01
  %2871 = fsub fast float %2866, %2868
  %2872 = fmul fast float %2871, 5.000000e-01
  %2873 = call float @dx.op.unary.f32(i32 6, float %2870)  ; FAbs(value)
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2876 = fsub fast float %2874, %2875
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2870, float %2872, float %2876, float %2870, float %2872, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = call float @dx.op.unary.f32(i32 25, float %2877)  ; Rsqrt(value)
  %2879 = fmul fast float %2870, %2878
  %2880 = fmul fast float %2872, %2878
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 67108864
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %2901, label %2885

; <label>:2885                                    ; preds = %2833
  %2886 = add i32 %54, 312
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 65535
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = lshr i32 %2888, 16
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = fsub fast float %2858, %2896
  %2898 = fmul fast float %2897, %2890
  %2899 = fadd fast float %2898, %2894
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  br label %2901

; <label>:2901                                    ; preds = %2885, %2833
  %2902 = phi float [ %2900, %2885 ], [ %2858, %2833 ]
  %2903 = call float @dx.op.dot2.f32(i32 54, float %2879, float %2880, float %2322, float %2323)  ; Dot2(ax,ay,bx,by)
  %2904 = call float @dx.op.dot2.f32(i32 54, float %2879, float %2880, float %2324, float %2325)  ; Dot2(ax,ay,bx,by)
  br label %2905

; <label>:2905                                    ; preds = %2901, %2811
  %2906 = phi float [ %2902, %2901 ], [ 0x3FD6666660000000, %2811 ]
  %2907 = phi float [ %2903, %2901 ], [ 0.000000e+00, %2811 ]
  %2908 = phi float [ %2904, %2901 ], [ 0.000000e+00, %2811 ]
  %2909 = phi float [ %2845, %2901 ], [ 1.000000e+00, %2811 ]
  %2910 = add i32 %54, 192
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = lshr i32 %2912, 22
  %2914 = shl nuw nsw i32 %2913, 5
  %2915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2914)  ; LegacyF16ToF32(value)
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 64
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %2953, label %2920

; <label>:2920                                    ; preds = %2905
  %2921 = add i32 %54, 400
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %2923, 0
  %2925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 131072
  %2929 = icmp eq i32 %2928, 0
  %2930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2925, %dx.types.Handle %96, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = fmul fast float %2931, %321
  %2935 = fmul fast float %2932, %324
  %2936 = fmul fast float %2933, %327
  br i1 %2929, label %2943, label %2937

; <label>:2937                                    ; preds = %2920
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = fmul fast float %2939, %2934
  %2941 = fmul fast float %2939, %2935
  %2942 = fmul fast float %2939, %2936
  br label %2943

; <label>:2943                                    ; preds = %2937, %2920
  %2944 = phi float [ %2940, %2937 ], [ %2934, %2920 ]
  %2945 = phi float [ %2941, %2937 ], [ %2935, %2920 ]
  %2946 = phi float [ %2942, %2937 ], [ %2936, %2920 ]
  %2947 = fmul fast float %2944, %2915
  %2948 = select i1 %217, float %2947, float %2944
  %2949 = call float @dx.op.dot3.f32(i32 55, float %2948, float %2945, float %2946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2950 = select i1 %217, float 0.000000e+00, float %2944
  %2951 = select i1 %217, float %2949, float %2945
  %2952 = select i1 %217, float 0.000000e+00, float %2946
  br label %2953

; <label>:2953                                    ; preds = %2943, %2905
  %2954 = phi float [ %2950, %2943 ], [ 0.000000e+00, %2905 ]
  %2955 = phi float [ %2951, %2943 ], [ 0.000000e+00, %2905 ]
  %2956 = phi float [ %2952, %2943 ], [ 0.000000e+00, %2905 ]
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 1024
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %2991, label %2961

; <label>:2961                                    ; preds = %2953
  %2962 = add i32 %54, 184
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = lshr i32 %2964, 8
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2964, 16
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = fmul fast float %2967, %2967
  %2977 = fmul fast float %2971, %2971
  %2978 = fmul fast float %2975, %2975
  %2979 = add i32 %54, 464
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = add i32 %2981, 0
  %2983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2983, %dx.types.Handle %97, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = fmul fast float %2976, %2985
  %2989 = fmul fast float %2977, %2986
  %2990 = fmul fast float %2978, %2987
  br label %2991

; <label>:2991                                    ; preds = %2961, %2953
  %2992 = phi float [ %2988, %2961 ], [ 0.000000e+00, %2953 ]
  %2993 = phi float [ %2989, %2961 ], [ 0.000000e+00, %2953 ]
  %2994 = phi float [ %2990, %2961 ], [ 0.000000e+00, %2953 ]
  %2995 = fcmp fast ogt float %2992, 0.000000e+00
  %2996 = fcmp fast ogt float %2993, 0.000000e+00
  %2997 = fcmp fast ogt float %2994, 0.000000e+00
  %2998 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %2999 = call float @dx.op.unary.f32(i32 23, float %2993)  ; Log(value)
  %3000 = call float @dx.op.unary.f32(i32 23, float %2994)  ; Log(value)
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 7
  %3004 = and i32 %3003, 32752
  %3005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3004)  ; LegacyF16ToF32(value)
  %3006 = fmul fast float %2998, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3005
  %3008 = fmul fast float %2999, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3005
  %3010 = fmul fast float %3000, 0xBFE62E4300000000
  %3011 = fmul fast float %3010, %3005
  %3012 = select i1 %2995, float %3007, float 1.270000e+02
  %3013 = select i1 %2996, float %3009, float 1.270000e+02
  %3014 = select i1 %2997, float %3011, float 1.270000e+02
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 10240
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3063, label %3019

; <label>:3019                                    ; preds = %2991
  %3020 = add i32 %54, 480
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3024, %dx.types.Handle %97, float %2418, float %2419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3025, 3
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 1048576
  %3031 = icmp ne i32 %3030, 0
  %3032 = and i32 %3029, 8192
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3049, label %3034

; <label>:3034                                    ; preds = %3019
  %3035 = extractvalue %dx.types.ResRet.f32 %3025, 2
  %3036 = select i1 %3031, float %3035, float %3026
  %3037 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3038 = select i1 %3031, float %3037, float %3026
  %3039 = add i32 %54, 128
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = lshr i32 %3041, 16
  %3043 = and i32 %3042, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = fmul fast float %3044, 0x3F80101020000000
  %3046 = fmul fast float %3045, %3038
  %3047 = fmul fast float %3045, %3026
  %3048 = fmul fast float %3045, %3036
  br label %3049

; <label>:3049                                    ; preds = %3034, %3019
  %3050 = phi float [ %3046, %3034 ], [ 0.000000e+00, %3019 ]
  %3051 = phi float [ %3047, %3034 ], [ 0.000000e+00, %3019 ]
  %3052 = phi float [ %3048, %3034 ], [ 0.000000e+00, %3019 ]
  %3053 = and i32 %3029, 2048
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3063, label %3055

; <label>:3055                                    ; preds = %3049
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = shl i32 %3057, 4
  %3059 = and i32 %3058, 32752
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = fmul fast float %3060, %3027
  %3062 = call float @dx.op.binary.f32(i32 35, float %3061, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3063

; <label>:3063                                    ; preds = %3055, %3049, %2991
  %3064 = phi float [ %3050, %3055 ], [ %3050, %3049 ], [ 0.000000e+00, %2991 ]
  %3065 = phi float [ %3051, %3055 ], [ %3051, %3049 ], [ 0.000000e+00, %2991 ]
  %3066 = phi float [ %3052, %3055 ], [ %3052, %3049 ], [ 0.000000e+00, %2991 ]
  %3067 = phi float [ %3062, %3055 ], [ 0x3F70101020000000, %3049 ], [ 0x3F70101020000000, %2991 ]
  %3068 = add i32 %54, 128
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = lshr i32 %3070, 8
  %3074 = and i32 %3073, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = call float @dx.op.dot3.f32(i32 55, float %2826, float %2827, float %2828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3077 = fmul fast float %3075, %3076
  %3078 = fadd fast float %3077, %3072
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  br i1 %2310, label %3081, label %3116

; <label>:3081                                    ; preds = %3063
  %3082 = fmul fast float %3067, 2.000000e+00
  %3083 = fcmp fast olt float %3012, 1.270000e+02
  %3084 = fcmp fast olt float %3013, 1.270000e+02
  %3085 = fcmp fast olt float %3014, 1.270000e+02
  %3086 = fmul fast float %3012, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3082
  %3088 = fmul fast float %3013, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3082
  %3090 = fmul fast float %3014, 0xBFF7154760000000
  %3091 = fmul fast float %3090, %3082
  %3092 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3093 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3094 = call float @dx.op.unary.f32(i32 21, float %3091)  ; Exp(value)
  %3095 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3096 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3097 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3098 = fadd fast float %3095, -1.000000e+00
  %3099 = select i1 %3083, float %3098, float -1.000000e+00
  %3100 = fadd fast float %3096, -1.000000e+00
  %3101 = select i1 %3084, float %3100, float -1.000000e+00
  %3102 = fadd fast float %3097, -1.000000e+00
  %3103 = select i1 %3085, float %3102, float -1.000000e+00
  %3104 = fmul fast float %3099, %2606
  %3105 = fmul fast float %3101, %2606
  %3106 = fmul fast float %3103, %2606
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fadd fast float %3105, 1.000000e+00
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fmul fast float %3107, %2295
  %3111 = fmul fast float %3108, %2296
  %3112 = fmul fast float %3109, %2297
  %3113 = fmul fast float %3107, %2292
  %3114 = fmul fast float %3108, %2293
  %3115 = fmul fast float %3109, %2294
  br label %3116

; <label>:3116                                    ; preds = %3081, %3063
  %3117 = phi float [ %3113, %3081 ], [ %2292, %3063 ]
  %3118 = phi float [ %3114, %3081 ], [ %2293, %3063 ]
  %3119 = phi float [ %3115, %3081 ], [ %2294, %3063 ]
  %3120 = phi float [ %3110, %3081 ], [ %2295, %3063 ]
  %3121 = phi float [ %3111, %3081 ], [ %2296, %3063 ]
  %3122 = phi float [ %3112, %3081 ], [ %2297, %3063 ]
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 3
  %3126 = icmp eq i32 %3125, 3
  br i1 %3126, label %3205, label %3127

; <label>:3127                                    ; preds = %3116
  %3128 = and i32 %3124, 16
  %3129 = icmp ne i32 %3128, 0
  %3130 = select i1 %3129, float %2606, float 0.000000e+00
  %3131 = icmp eq i32 %3125, 0
  br i1 %3131, label %3132, label %3160

; <label>:3132                                    ; preds = %3127
  %3133 = and i32 %3124, 64
  %3134 = icmp ne i32 %3133, 0
  %3135 = select i1 %3134, float %2606, float 0.000000e+00
  %3136 = fsub fast float %2826, %3120
  %3137 = fsub fast float %2827, %3121
  %3138 = fsub fast float %2828, %3122
  %3139 = fmul fast float %3130, %3136
  %3140 = fmul fast float %3130, %3137
  %3141 = fmul fast float %3130, %3138
  %3142 = fadd fast float %3139, %3120
  %3143 = fadd fast float %3140, %3121
  %3144 = fadd fast float %3141, %3122
  %3145 = fsub fast float %2812, %2304
  %3146 = fmul fast float %3130, %3145
  %3147 = fadd fast float %3146, %2304
  %3148 = fsub fast float %2954, %3117
  %3149 = fsub fast float %2955, %3118
  %3150 = fsub fast float %2956, %3119
  %3151 = fmul fast float %3135, %3148
  %3152 = fmul fast float %3135, %3149
  %3153 = fmul fast float %3135, %3150
  %3154 = fadd fast float %3151, %3117
  %3155 = fadd fast float %3152, %3118
  %3156 = fadd fast float %3153, %3119
  %3157 = fsub fast float %3080, %2308
  %3158 = fmul fast float %3130, %3157
  %3159 = fadd fast float %3158, %2308
  br label %3205

; <label>:3160                                    ; preds = %3127
  %3161 = icmp eq i32 %3125, 1
  br i1 %3161, label %3162, label %3175

; <label>:3162                                    ; preds = %3160
  %3163 = fadd fast float %2826, -1.000000e+00
  %3164 = fadd fast float %2827, -1.000000e+00
  %3165 = fadd fast float %2828, -1.000000e+00
  %3166 = fmul fast float %3130, %3163
  %3167 = fmul fast float %3130, %3164
  %3168 = fmul fast float %3130, %3165
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fadd fast float %3167, 1.000000e+00
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fmul fast float %3169, %3120
  %3173 = fmul fast float %3170, %3121
  %3174 = fmul fast float %3171, %3122
  br label %3205

; <label>:3175                                    ; preds = %3160
  %3176 = icmp eq i32 %3125, 2
  br i1 %3176, label %3177, label %3205

; <label>:3177                                    ; preds = %3175
  %3178 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %3179 = call float @dx.op.unary.f32(i32 24, float %2827)  ; Sqrt(value)
  %3180 = call float @dx.op.unary.f32(i32 24, float %2828)  ; Sqrt(value)
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fmul fast float %3181, %3130
  %3185 = fmul fast float %3182, %3130
  %3186 = fmul fast float %3183, %3130
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fadd fast float %3185, 5.000000e-01
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fmul fast float %3187, 2.000000e+00
  %3191 = fsub fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3191, %3120
  %3193 = fadd fast float %3192, %3190
  %3194 = fmul fast float %3193, %3120
  %3195 = fmul fast float %3188, 2.000000e+00
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3196, %3121
  %3198 = fadd fast float %3197, %3195
  %3199 = fmul fast float %3198, %3121
  %3200 = fmul fast float %3189, 2.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3201, %3122
  %3203 = fadd fast float %3202, %3200
  %3204 = fmul fast float %3203, %3122
  br label %3205

; <label>:3205                                    ; preds = %3177, %3175, %3162, %3132, %3116
  %3206 = phi float [ %3117, %3116 ], [ %3117, %3177 ], [ %3117, %3175 ], [ %3117, %3162 ], [ %3154, %3132 ]
  %3207 = phi float [ %3118, %3116 ], [ %3118, %3177 ], [ %3118, %3175 ], [ %3118, %3162 ], [ %3155, %3132 ]
  %3208 = phi float [ %3119, %3116 ], [ %3119, %3177 ], [ %3119, %3175 ], [ %3119, %3162 ], [ %3156, %3132 ]
  %3209 = phi float [ %3120, %3116 ], [ %3194, %3177 ], [ %3120, %3175 ], [ %3172, %3162 ], [ %3142, %3132 ]
  %3210 = phi float [ %3121, %3116 ], [ %3199, %3177 ], [ %3121, %3175 ], [ %3173, %3162 ], [ %3143, %3132 ]
  %3211 = phi float [ %3122, %3116 ], [ %3204, %3177 ], [ %3122, %3175 ], [ %3174, %3162 ], [ %3144, %3132 ]
  %3212 = phi float [ %2304, %3116 ], [ %2304, %3177 ], [ %2304, %3175 ], [ %2304, %3162 ], [ %3147, %3132 ]
  %3213 = phi float [ %2308, %3116 ], [ %2308, %3177 ], [ %2308, %3175 ], [ %2308, %3162 ], [ %3159, %3132 ]
  %3214 = and i32 %3124, 12
  %3215 = icmp eq i32 %3214, 12
  br i1 %3215, label %3346, label %3216

; <label>:3216                                    ; preds = %3205
  %3217 = and i32 %3124, 2097184
  %3218 = icmp eq i32 %3217, 2097184
  %3219 = select i1 %3218, float %2606, float 0.000000e+00
  %3220 = and i32 %3124, 4194336
  %3221 = icmp eq i32 %3220, 4194336
  %3222 = select i1 %3221, float %2606, float 0.000000e+00
  %3223 = and i32 %3124, 8388640
  %3224 = icmp eq i32 %3223, 8388640
  %3225 = select i1 %3224, float %2606, float 0.000000e+00
  %3226 = and i32 %3124, 1024
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2606, float 0.000000e+00
  %3229 = and i32 %3124, 2048
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2606, float 0.000000e+00
  %3232 = and i32 %3124, 8192
  %3233 = icmp ne i32 %3232, 0
  %3234 = select i1 %3233, float %2606, float 0.000000e+00
  %3235 = icmp eq i32 %3214, 0
  br i1 %3235, label %3236, label %3270

; <label>:3236                                    ; preds = %3216
  %3237 = fsub fast float %2907, %2290
  %3238 = fsub fast float %2908, %2291
  %3239 = fmul fast float %3219, %3237
  %3240 = fmul fast float %3219, %3238
  %3241 = fadd fast float %3239, %2290
  %3242 = fadd fast float %3240, %2291
  %3243 = fsub fast float %2909, %2306
  %3244 = fmul fast float %3222, %3243
  %3245 = fadd fast float %3244, %2306
  %3246 = fsub fast float %2906, %2305
  %3247 = fmul fast float %3225, %3246
  %3248 = fadd fast float %3247, %2305
  %3249 = fsub fast float %3012, %2298
  %3250 = fsub fast float %3013, %2299
  %3251 = fsub fast float %3014, %2300
  %3252 = fmul fast float %3228, %3249
  %3253 = fmul fast float %3228, %3250
  %3254 = fmul fast float %3228, %3251
  %3255 = fadd fast float %3252, %2298
  %3256 = fadd fast float %3253, %2299
  %3257 = fadd fast float %3254, %2300
  %3258 = fsub fast float %3067, %2307
  %3259 = fmul fast float %3231, %3258
  %3260 = fadd fast float %3259, %2307
  %3261 = fsub fast float %3064, %2301
  %3262 = fsub fast float %3065, %2302
  %3263 = fsub fast float %3066, %2303
  %3264 = fmul fast float %3234, %3261
  %3265 = fmul fast float %3234, %3262
  %3266 = fmul fast float %3234, %3263
  %3267 = fadd fast float %3264, %2301
  %3268 = fadd fast float %3265, %2302
  %3269 = fadd fast float %3266, %2303
  br label %3346

; <label>:3270                                    ; preds = %3216
  %3271 = icmp eq i32 %3214, 4
  br i1 %3271, label %3272, label %3318

; <label>:3272                                    ; preds = %3270
  %3273 = fmul fast float %3219, %2907
  %3274 = fmul fast float %3219, %2908
  %3275 = fadd fast float %3273, %2290
  %3276 = fadd fast float %3274, %2291
  %3277 = call float @dx.op.binary.f32(i32 36, float %2306, float %2909)  ; FMin(a,b)
  %3278 = fsub fast float %3277, %2306
  %3279 = fmul fast float %3278, %3222
  %3280 = fadd fast float %3279, %2306
  %3281 = fadd fast float %2906, %2305
  %3282 = fmul fast float %3281, 0x3FF337FAE0000000
  %3283 = fmul fast float %2305, %2305
  %3284 = fmul fast float %2906, %2906
  %3285 = fadd fast float %3284, %3283
  %3286 = fmul fast float %3285, 0x3FE5152B00000000
  %3287 = fmul fast float %2305, 0xBFCC1F85E0000000
  %3288 = fmul fast float %3287, %2906
  %3289 = fadd fast float %3288, 0xBFE1363700000000
  %3290 = fadd fast float %3289, %3282
  %3291 = fsub fast float %3290, %3286
  %3292 = fmul fast float %3281, 0x3FBA6F0D00000000
  %3293 = fmul fast float %3285, 0x3FD0432880000000
  %3294 = fmul fast float %2305, 0xBFEF110800000000
  %3295 = fmul fast float %3294, %2906
  %3296 = fadd fast float %3295, 1.000000e+00
  %3297 = fsub fast float %3296, %3292
  %3298 = fadd fast float %3297, %3293
  %3299 = fdiv fast float %3291, %3298
  %3300 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3301 = fsub fast float %3300, %2305
  %3302 = fmul fast float %3301, %3225
  %3303 = fadd fast float %3302, %2305
  %3304 = fmul fast float %3228, %3012
  %3305 = fmul fast float %3228, %3013
  %3306 = fmul fast float %3228, %3014
  %3307 = fadd fast float %3304, %2298
  %3308 = fadd fast float %3305, %2299
  %3309 = fadd fast float %3306, %2300
  %3310 = fmul fast float %3231, %3067
  %3311 = fadd fast float %3310, %2307
  %3312 = fmul fast float %3234, %3064
  %3313 = fmul fast float %3234, %3065
  %3314 = fmul fast float %3234, %3066
  %3315 = fadd fast float %3312, %2301
  %3316 = fadd fast float %3313, %2302
  %3317 = fadd fast float %3314, %2303
  br label %3346

; <label>:3318                                    ; preds = %3270
  %3319 = icmp eq i32 %3214, 8
  br i1 %3319, label %3320, label %3346

; <label>:3320                                    ; preds = %3318
  %3321 = fmul fast float %3219, %2907
  %3322 = fmul fast float %3219, %2908
  %3323 = fadd fast float %3321, %2290
  %3324 = fadd fast float %3322, %2291
  %3325 = call float @dx.op.binary.f32(i32 36, float %2306, float %2909)  ; FMin(a,b)
  %3326 = fsub fast float %3325, %2306
  %3327 = fmul fast float %3326, %3222
  %3328 = fadd fast float %3327, %2306
  %3329 = fsub fast float %2906, %2305
  %3330 = fmul fast float %3225, %3329
  %3331 = fadd fast float %3330, %2305
  %3332 = fmul fast float %3228, %3012
  %3333 = fmul fast float %3228, %3013
  %3334 = fmul fast float %3228, %3014
  %3335 = fadd fast float %3332, %2298
  %3336 = fadd fast float %3333, %2299
  %3337 = fadd fast float %3334, %2300
  %3338 = fmul fast float %3231, %3067
  %3339 = fadd fast float %3338, %2307
  %3340 = fmul fast float %3234, %3064
  %3341 = fmul fast float %3234, %3065
  %3342 = fmul fast float %3234, %3066
  %3343 = fadd fast float %3340, %2301
  %3344 = fadd fast float %3341, %2302
  %3345 = fadd fast float %3342, %2303
  br label %3346

; <label>:3346                                    ; preds = %3320, %3318, %3272, %3236, %3205, %2605, %2309, %2289
  %3347 = phi float [ %2290, %3205 ], [ %2290, %2605 ], [ %2290, %2289 ], [ %3323, %3320 ], [ %2290, %3318 ], [ %3275, %3272 ], [ %3241, %3236 ], [ %2290, %2309 ]
  %3348 = phi float [ %2291, %3205 ], [ %2291, %2605 ], [ %2291, %2289 ], [ %3324, %3320 ], [ %2291, %3318 ], [ %3276, %3272 ], [ %3242, %3236 ], [ %2291, %2309 ]
  %3349 = phi float [ %3206, %3205 ], [ %2292, %2605 ], [ %2292, %2289 ], [ %3206, %3320 ], [ %3206, %3318 ], [ %3206, %3272 ], [ %3206, %3236 ], [ %2292, %2309 ]
  %3350 = phi float [ %3207, %3205 ], [ %2293, %2605 ], [ %2293, %2289 ], [ %3207, %3320 ], [ %3207, %3318 ], [ %3207, %3272 ], [ %3207, %3236 ], [ %2293, %2309 ]
  %3351 = phi float [ %3208, %3205 ], [ %2294, %2605 ], [ %2294, %2289 ], [ %3208, %3320 ], [ %3208, %3318 ], [ %3208, %3272 ], [ %3208, %3236 ], [ %2294, %2309 ]
  %3352 = phi float [ %3209, %3205 ], [ %2295, %2605 ], [ %2295, %2289 ], [ %3209, %3320 ], [ %3209, %3318 ], [ %3209, %3272 ], [ %3209, %3236 ], [ %2295, %2309 ]
  %3353 = phi float [ %3210, %3205 ], [ %2296, %2605 ], [ %2296, %2289 ], [ %3210, %3320 ], [ %3210, %3318 ], [ %3210, %3272 ], [ %3210, %3236 ], [ %2296, %2309 ]
  %3354 = phi float [ %3211, %3205 ], [ %2297, %2605 ], [ %2297, %2289 ], [ %3211, %3320 ], [ %3211, %3318 ], [ %3211, %3272 ], [ %3211, %3236 ], [ %2297, %2309 ]
  %3355 = phi float [ %2298, %3205 ], [ %2298, %2605 ], [ %2298, %2289 ], [ %3335, %3320 ], [ %2298, %3318 ], [ %3307, %3272 ], [ %3255, %3236 ], [ %2298, %2309 ]
  %3356 = phi float [ %2299, %3205 ], [ %2299, %2605 ], [ %2299, %2289 ], [ %3336, %3320 ], [ %2299, %3318 ], [ %3308, %3272 ], [ %3256, %3236 ], [ %2299, %2309 ]
  %3357 = phi float [ %2300, %3205 ], [ %2300, %2605 ], [ %2300, %2289 ], [ %3337, %3320 ], [ %2300, %3318 ], [ %3309, %3272 ], [ %3257, %3236 ], [ %2300, %2309 ]
  %3358 = phi float [ %2301, %3205 ], [ %2301, %2605 ], [ %2301, %2289 ], [ %3343, %3320 ], [ %2301, %3318 ], [ %3315, %3272 ], [ %3267, %3236 ], [ %2301, %2309 ]
  %3359 = phi float [ %2302, %3205 ], [ %2302, %2605 ], [ %2302, %2289 ], [ %3344, %3320 ], [ %2302, %3318 ], [ %3316, %3272 ], [ %3268, %3236 ], [ %2302, %2309 ]
  %3360 = phi float [ %2303, %3205 ], [ %2303, %2605 ], [ %2303, %2289 ], [ %3345, %3320 ], [ %2303, %3318 ], [ %3317, %3272 ], [ %3269, %3236 ], [ %2303, %2309 ]
  %3361 = phi float [ %3212, %3205 ], [ %2304, %2605 ], [ %2304, %2289 ], [ %3212, %3320 ], [ %3212, %3318 ], [ %3212, %3272 ], [ %3212, %3236 ], [ %2304, %2309 ]
  %3362 = phi float [ %2305, %3205 ], [ %2305, %2605 ], [ %2305, %2289 ], [ %3331, %3320 ], [ %2305, %3318 ], [ %3303, %3272 ], [ %3248, %3236 ], [ %2305, %2309 ]
  %3363 = phi float [ %2306, %3205 ], [ %2306, %2605 ], [ %2306, %2289 ], [ %3328, %3320 ], [ %2306, %3318 ], [ %3280, %3272 ], [ %3245, %3236 ], [ %2306, %2309 ]
  %3364 = phi float [ %2307, %3205 ], [ %2307, %2605 ], [ %2307, %2289 ], [ %3339, %3320 ], [ %2307, %3318 ], [ %3311, %3272 ], [ %3260, %3236 ], [ %2307, %2309 ]
  %3365 = phi float [ %3213, %3205 ], [ %2308, %2605 ], [ %2308, %2289 ], [ %3213, %3320 ], [ %3213, %3318 ], [ %3213, %3272 ], [ %3213, %3236 ], [ %2308, %2309 ]
  br i1 %408, label %4403, label %3366

; <label>:3366                                    ; preds = %3346
  %3367 = icmp ult i32 %462, 4
  %3368 = add i32 %54, 72
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = add i32 %54, 76
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = or i32 %3373, %3370
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %4403, label %3376

; <label>:3376                                    ; preds = %3366
  %3377 = and i32 %3370, 262144
  %3378 = icmp ne i32 %3377, 0
  %3379 = select i1 %3378, float %57, float 1.000000e+00
  %3380 = select i1 %3378, float %58, float 0.000000e+00
  %3381 = select i1 %3378, float %59, float 0.000000e+00
  %3382 = select i1 %3378, float %60, float 1.000000e+00
  %3383 = select i1 %3378, float %61, float %82
  %3384 = select i1 %3378, float %62, float %83
  %3385 = add i32 %54, 332
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = lshr i32 %3387, 16
  %3389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3388)  ; LegacyF16ToF32(value)
  %3390 = fmul fast float %3389, 0x3F50624DE0000000
  %3391 = add i32 %54, 136
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = lshr i32 %3393, 16
  %3395 = and i32 %3394, 255
  %3396 = lshr i32 %3393, 24
  %3397 = add i32 %54, 340
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 65535
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = lshr i32 %3399, 16
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = add i32 %54, 80
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = lshr i32 %3406, 22
  %3408 = shl nuw nsw i32 %3407, 5
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = shl i32 %3406, 4
  %3411 = and i32 %3410, 32752
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = lshr i32 %3406, 7
  %3414 = and i32 %3413, 32752
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 3
  %3418 = fmul fast float %3417, 1.000000e+03
  %3419 = fmul fast float %398, %3418
  %3420 = call float @dx.op.unary.f32(i32 22, float %3419)  ; Frc(value)
  %3421 = fadd fast float %3420, %388
  %3422 = fmul fast float %399, %3418
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fadd fast float %3423, %390
  %3425 = fmul fast float %3390, %3418
  %3426 = call float @dx.op.unary.f32(i32 22, float %3425)  ; Frc(value)
  %3427 = fmul fast float %3426, 0x401921FB60000000
  %3428 = fadd fast float %3427, %3409
  %3429 = call float @dx.op.unary.f32(i32 13, float %3428)  ; Sin(value)
  %3430 = call float @dx.op.unary.f32(i32 12, float %3428)  ; Cos(value)
  %3431 = fsub fast float -0.000000e+00, %3429
  %3432 = fadd fast float %3383, -5.000000e-01
  %3433 = fadd fast float %3384, -5.000000e-01
  %3434 = fmul fast float %3401, %3432
  %3435 = fmul fast float %3403, %3433
  %3436 = fadd fast float %3434, 5.000000e-01
  %3437 = fadd fast float %3435, 5.000000e-01
  %3438 = fmul fast float %3412, %3436
  %3439 = fmul fast float %3415, %3437
  %3440 = fmul fast float %3430, %3438
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3431, float %3439, float %3440)  ; FMad(a,b,c)
  %3442 = fmul fast float %3429, %3438
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3439, float %3442)  ; FMad(a,b,c)
  %3444 = fadd fast float %3421, %3441
  %3445 = fadd fast float %3424, %3443
  %3446 = icmp ugt i32 %3395, 1
  %3447 = icmp ugt i32 %3393, 33554431
  %3448 = or i1 %3447, %3446
  br i1 %3448, label %3449, label %3474

; <label>:3449                                    ; preds = %3376
  %3450 = add i32 %54, 276
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = lshr i32 %3452, 16
  %3454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3453)  ; LegacyF16ToF32(value)
  %3455 = fmul fast float %3417, %3454
  %3456 = call float @dx.op.unary.f32(i32 22, float %3455)  ; Frc(value)
  %3457 = mul nuw nsw i32 %3395, %3396
  %3458 = uitofp i32 %3457 to float
  %3459 = fmul fast float %3456, %3458
  %3460 = call float @dx.op.unary.f32(i32 27, float %3459)  ; Round_ni(value)
  %3461 = fptoui float %3460 to i32
  %3462 = urem i32 %3461, %3395
  %3463 = udiv i32 %3461, %3396
  %3464 = call float @dx.op.unary.f32(i32 22, float %3444)  ; Frc(value)
  %3465 = call float @dx.op.unary.f32(i32 22, float %3445)  ; Frc(value)
  %3466 = uitofp i32 %3462 to float
  %3467 = uitofp i32 %3463 to float
  %3468 = fadd fast float %3464, %3466
  %3469 = fadd fast float %3465, %3467
  %3470 = uitofp i32 %3395 to float
  %3471 = uitofp i32 %3396 to float
  %3472 = fdiv fast float %3468, %3470
  %3473 = fdiv fast float %3469, %3471
  br label %3474

; <label>:3474                                    ; preds = %3449, %3376
  %3475 = phi float [ %3472, %3449 ], [ %3444, %3376 ]
  %3476 = phi float [ %3473, %3449 ], [ %3445, %3376 ]
  %3477 = and i32 %3370, 16777216
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3588, label %3479

; <label>:3479                                    ; preds = %3474
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3484 = fadd fast float %3481, %155
  %3485 = fadd fast float %3482, %156
  %3486 = fadd fast float %3483, %157
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3490 = icmp eq i32 %55, 65535
  br i1 %3490, label %3585, label %3491

; <label>:3491                                    ; preds = %3479
  %3492 = lshr i32 %55, 1
  %3493 = shl i32 %3492, 2
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %55, 1
  %3497 = icmp ne i32 %3496, 0
  %3498 = lshr i32 %3495, 16
  %3499 = and i32 %3495, 65535
  %3500 = select i1 %3497, i32 %3498, i32 %3499
  %3501 = icmp eq i32 %3500, 65535
  br i1 %3501, label %3581, label %3502

; <label>:3502                                    ; preds = %3491
  %3503 = mul nuw nsw i32 %3500, 40
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = add nuw nsw i32 %3503, 12
  %3509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3513 = add nuw nsw i32 %3503, 24
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = add nuw nsw i32 %3503, 36
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = fsub fast float %3484, %3505
  %3522 = fsub fast float %3485, %3506
  %3523 = fsub fast float %3486, %3507
  %3524 = fmul fast float %3520, %3521
  %3525 = fmul fast float %3520, %3522
  %3526 = fmul fast float %3520, %3523
  %3527 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 27, float %3525)  ; Round_ni(value)
  %3529 = call float @dx.op.unary.f32(i32 27, float %3526)  ; Round_ni(value)
  %3530 = fadd fast float %3527, 5.000000e-01
  %3531 = fadd fast float %3528, 5.000000e-01
  %3532 = fadd fast float %3529, 5.000000e-01
  %3533 = fmul fast float %3530, %3510
  %3534 = fmul fast float %3531, %3511
  %3535 = fmul fast float %3532, %3512
  %3536 = shl i32 %55, 2
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = add i32 %3538, 0
  %3540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3541 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3542 = call float @dx.op.unary.f32(i32 22, float %3534)  ; Frc(value)
  %3543 = call float @dx.op.unary.f32(i32 22, float %3535)  ; Frc(value)
  %3544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3540, %dx.types.Handle %49, float %3541, float %3542, float %3543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = fmul fast float %3545, 1.023000e+03
  %3549 = fmul fast float %3546, 1.023000e+03
  %3550 = fmul fast float %3547, 1.023000e+03
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = fadd fast float %3549, 5.000000e-01
  %3553 = fadd fast float %3550, 5.000000e-01
  %3554 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3555 = call float @dx.op.unary.f32(i32 27, float %3552)  ; Round_ni(value)
  %3556 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3557 = fsub fast float %3524, %3527
  %3558 = fsub fast float %3525, %3528
  %3559 = fsub fast float %3526, %3529
  %3560 = fmul fast float %3557, 7.500000e-01
  %3561 = fmul fast float %3558, 7.500000e-01
  %3562 = fmul fast float %3559, 7.500000e-01
  %3563 = fadd fast float %3527, 1.250000e-01
  %3564 = fadd fast float %3563, %3560
  %3565 = fadd fast float %3564, %3554
  %3566 = fadd fast float %3528, 1.250000e-01
  %3567 = fadd fast float %3566, %3561
  %3568 = fadd fast float %3567, %3555
  %3569 = fadd fast float %3529, 1.250000e-01
  %3570 = fadd fast float %3569, %3562
  %3571 = fadd fast float %3570, %3556
  %3572 = fmul fast float %3565, %3515
  %3573 = fmul fast float %3568, %3516
  %3574 = fmul fast float %3571, %3517
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = add i32 %3576, 0
  %3578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3578, %dx.types.Handle %47, float %3572, float %3573, float %3574, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  br label %3581

; <label>:3581                                    ; preds = %3502, %3491
  %3582 = phi float [ %3580, %3502 ], [ -1.000000e+00, %3491 ]
  %3583 = fadd fast float %3582, %3489
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  br label %3585

; <label>:3585                                    ; preds = %3581, %3479
  %3586 = phi float [ %3584, %3581 ], [ %3489, %3479 ]
  %3587 = fmul fast float %3586, %457
  br label %3588

; <label>:3588                                    ; preds = %3585, %3474
  %3589 = phi float [ %3587, %3585 ], [ %457, %3474 ]
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = and i32 %3591, 256
  %3593 = icmp eq i32 %3592, 0
  br i1 %3593, label %3640, label %3594

; <label>:3594                                    ; preds = %3588
  %3595 = add i32 %54, 436
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = add i32 %3597, 0
  %3599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3599, %dx.types.Handle %97, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = add i32 %54, 148
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = shl i32 %3604, 4
  %3606 = and i32 %3605, 32752
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = lshr i32 %3604, 7
  %3609 = and i32 %3608, 32752
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = fsub fast float 1.000000e+00, %3589
  %3612 = call float @dx.op.binary.f32(i32 35, float %3611, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3613 = bitcast float %3589 to i32
  %3614 = sitofp i32 %3613 to float
  %3615 = fadd fast float %3614, 0xC1CFBF8940000000
  %3616 = fmul fast float %3610, %3615
  %3617 = fadd fast float %3616, 0x41CFBF8940000000
  %3618 = fptosi float %3617 to i32
  %3619 = bitcast i32 %3618 to float
  %3620 = bitcast float %3612 to i32
  %3621 = sitofp i32 %3620 to float
  %3622 = fadd fast float %3621, 0xC1CFBF8940000000
  %3623 = fmul fast float %3622, %3610
  %3624 = fadd fast float %3623, 0x41CFBF8940000000
  %3625 = fptosi float %3624 to i32
  %3626 = bitcast i32 %3625 to float
  %3627 = fmul fast float %3619, %3607
  %3628 = fmul fast float %3626, %3607
  %3629 = fsub fast float %3612, %3627
  %3630 = fadd fast float %3628, %3612
  %3631 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3632 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3633 = fsub fast float %3601, %3631
  %3634 = fsub fast float %3632, %3631
  %3635 = bitcast float %3634 to i32
  %3636 = sub nsw i32 2129859010, %3635
  %3637 = bitcast i32 %3636 to float
  %3638 = fmul fast float %3637, %3633
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  br label %3640

; <label>:3640                                    ; preds = %3594, %3588
  %3641 = phi float [ %3639, %3594 ], [ %3589, %3588 ]
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = and i32 %3643, 128
  %3645 = icmp eq i32 %3644, 0
  br i1 %3645, label %3662, label %3646

; <label>:3646                                    ; preds = %3640
  %3647 = add i32 %54, 420
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = add i32 %3649, 0
  %3651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3651, %dx.types.Handle %97, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = and i32 %3655, 524288
  %3657 = icmp ne i32 %3656, 0
  %3658 = fcmp fast ogt float %3653, 0x3FE0101020000000
  %3659 = select i1 %3658, float 1.000000e+00, float 0.000000e+00
  %3660 = select i1 %3657, float %3659, float %3653
  %3661 = fmul fast float %3660, %3641
  br label %3662

; <label>:3662                                    ; preds = %3646, %3640
  %3663 = phi float [ %3661, %3646 ], [ %3641, %3640 ]
  %3664 = fcmp fast ult float %3663, 0x3F70101020000000
  br i1 %3664, label %4403, label %3665

; <label>:3665                                    ; preds = %3662
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = and i32 %3667, 16
  %3669 = icmp eq i32 %3668, 0
  br i1 %3669, label %3868, label %3670

; <label>:3670                                    ; preds = %3665
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = add i32 %54, 372
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = add i32 %3675, 0
  %3677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3677, %dx.types.Handle %96, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = and i32 %3672, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = lshr i32 %3672, 8
  %3686 = and i32 %3685, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = fmul fast float %3682, %3684
  %3689 = fadd fast float %3688, %3687
  %3690 = fmul fast float %3689, 0x3F70101000000000
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 512
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3703, label %3695

; <label>:3695                                    ; preds = %3670
  %3696 = add i32 %54, 452
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = add i32 %3698, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3700, %dx.types.Handle %97, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  br label %3703

; <label>:3703                                    ; preds = %3695, %3670
  %3704 = phi float [ %3702, %3695 ], [ 1.000000e+00, %3670 ]
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 33554432
  %3708 = icmp eq i32 %3707, 0
  br i1 %3708, label %3815, label %3709

; <label>:3709                                    ; preds = %3703
  %3710 = add i32 %54, 272
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = and i32 %3712, 65535
  %3714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3713)  ; LegacyF16ToF32(value)
  %3715 = lshr i32 %3712, 16
  %3716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3715)  ; LegacyF16ToF32(value)
  %3717 = add i32 %54, 276
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 65535
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = lshr i32 %3723, 24
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = and i32 %3723, 255
  %3728 = uitofp i32 %3727 to float
  %3729 = fmul fast float %3728, 0x3F70101020000000
  %3730 = lshr i32 %3723, 8
  %3731 = and i32 %3730, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101020000000
  %3734 = lshr i32 %3723, 16
  %3735 = and i32 %3734, 255
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3736, 0x3F70101020000000
  %3738 = add i32 %54, 268
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = lshr i32 %3740, 24
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = and i32 %3740, 255
  %3745 = uitofp i32 %3744 to float
  %3746 = fmul fast float %3745, 0x3F70101020000000
  %3747 = lshr i32 %3740, 8
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = lshr i32 %3740, 16
  %3752 = and i32 %3751, 255
  %3753 = uitofp i32 %3752 to float
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = bitcast float %3679 to i32
  %3756 = ashr i32 %3755, 1
  %3757 = sub nsw i32 1597463174, %3756
  %3758 = bitcast i32 %3757 to float
  %3759 = fmul fast float %3679, 5.000000e-01
  %3760 = fmul fast float %3758, %3758
  %3761 = fmul fast float %3760, %3759
  %3762 = fsub fast float 1.500000e+00, %3761
  %3763 = fmul fast float %3758, %3679
  %3764 = fmul fast float %3763, %3762
  %3765 = bitcast float %3680 to i32
  %3766 = ashr i32 %3765, 1
  %3767 = sub nsw i32 1597463174, %3766
  %3768 = bitcast i32 %3767 to float
  %3769 = fmul fast float %3680, 5.000000e-01
  %3770 = fmul fast float %3768, %3768
  %3771 = fmul fast float %3770, %3769
  %3772 = fsub fast float 1.500000e+00, %3771
  %3773 = fmul fast float %3768, %3680
  %3774 = fmul fast float %3773, %3772
  %3775 = bitcast float %3681 to i32
  %3776 = ashr i32 %3775, 1
  %3777 = sub nsw i32 1597463174, %3776
  %3778 = bitcast i32 %3777 to float
  %3779 = fmul fast float %3681, 5.000000e-01
  %3780 = fmul fast float %3778, %3778
  %3781 = fmul fast float %3780, %3779
  %3782 = fsub fast float 1.500000e+00, %3781
  %3783 = fmul fast float %3778, %3681
  %3784 = fmul fast float %3783, %3782
  %3785 = fsub fast float %3764, %3746
  %3786 = fsub fast float %3774, %3750
  %3787 = fsub fast float %3784, %3754
  %3788 = fmul fast float %3785, %3714
  %3789 = fmul fast float %3786, %3716
  %3790 = fmul fast float %3787, %3721
  %3791 = fadd fast float %3788, %3729
  %3792 = fadd fast float %3789, %3733
  %3793 = fadd fast float %3790, %3737
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3797 = fmul fast float %3794, %3794
  %3798 = fmul fast float %3795, %3795
  %3799 = fmul fast float %3796, %3796
  %3800 = fsub fast float %3797, %3679
  %3801 = fsub fast float %3798, %3680
  %3802 = fsub fast float %3799, %3681
  %3803 = fmul fast float %3800, %3704
  %3804 = fmul fast float %3801, %3704
  %3805 = fmul fast float %3802, %3704
  %3806 = fadd fast float %3803, %3679
  %3807 = fadd fast float %3804, %3680
  %3808 = fadd fast float %3805, %3681
  %3809 = fadd fast float %3726, %3690
  %3810 = fsub fast float %3809, %3743
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fsub fast float %3811, %3690
  %3813 = fmul fast float %3812, %3704
  %3814 = fadd fast float %3813, %3690
  br label %3868

; <label>:3815                                    ; preds = %3703
  %3816 = and i32 %3706, 134217728
  %3817 = icmp eq i32 %3816, 0
  br i1 %3817, label %3852, label %3818

; <label>:3818                                    ; preds = %3815
  %3819 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3820 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3821 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fadd fast float %3820, -5.000000e-01
  %3824 = fadd fast float %3821, -5.000000e-01
  %3825 = fmul fast float %3822, %3704
  %3826 = fmul fast float %3823, %3704
  %3827 = fmul fast float %3824, %3704
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = fadd fast float %3826, 5.000000e-01
  %3830 = fadd fast float %3827, 5.000000e-01
  %3831 = call float @dx.op.unary.f32(i32 24, float %3679)  ; Sqrt(value)
  %3832 = call float @dx.op.unary.f32(i32 24, float %3680)  ; Sqrt(value)
  %3833 = call float @dx.op.unary.f32(i32 24, float %3681)  ; Sqrt(value)
  %3834 = fmul fast float %3828, 2.000000e+00
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3835, %3831
  %3837 = fadd fast float %3836, %3834
  %3838 = fmul fast float %3837, %3831
  %3839 = fmul fast float %3829, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3832
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3832
  %3844 = fmul fast float %3830, 2.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3845, %3833
  %3847 = fadd fast float %3846, %3844
  %3848 = fmul fast float %3847, %3833
  %3849 = fmul fast float %3838, %3838
  %3850 = fmul fast float %3843, %3843
  %3851 = fmul fast float %3848, %3848
  br label %3868

; <label>:3852                                    ; preds = %3815
  %3853 = fmul fast float %375, %375
  %3854 = fmul fast float %379, %379
  %3855 = fmul fast float %383, %383
  %3856 = fadd fast float %3853, -1.000000e+00
  %3857 = fadd fast float %3854, -1.000000e+00
  %3858 = fadd fast float %3855, -1.000000e+00
  %3859 = fmul fast float %3704, %3856
  %3860 = fmul fast float %3704, %3857
  %3861 = fmul fast float %3704, %3858
  %3862 = fadd fast float %3859, 1.000000e+00
  %3863 = fadd fast float %3860, 1.000000e+00
  %3864 = fadd fast float %3861, 1.000000e+00
  %3865 = fmul fast float %3862, %3679
  %3866 = fmul fast float %3863, %3680
  %3867 = fmul fast float %3864, %3681
  br label %3868

; <label>:3868                                    ; preds = %3852, %3818, %3709, %3665
  %3869 = phi float [ %3814, %3709 ], [ %3690, %3818 ], [ %3690, %3852 ], [ 0x3FA23C0BE0000000, %3665 ]
  %3870 = phi float [ %3806, %3709 ], [ %3849, %3818 ], [ %3865, %3852 ], [ 1.000000e+00, %3665 ]
  %3871 = phi float [ %3807, %3709 ], [ %3850, %3818 ], [ %3866, %3852 ], [ 1.000000e+00, %3665 ]
  %3872 = phi float [ %3808, %3709 ], [ %3851, %3818 ], [ %3867, %3852 ], [ 1.000000e+00, %3665 ]
  %3873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.i32 %3873, 1
  %3875 = and i32 %3874, 1
  %3876 = icmp ne i32 %3875, 0
  %3877 = add i32 %54, 356
  %3878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.i32 %3878, 0
  %3880 = and i32 %3879, 32
  %3881 = icmp ne i32 %3880, 0
  %3882 = and i1 %3876, %3881
  %3883 = select i1 %3882, float 1.000000e+00, float %3870
  %3884 = select i1 %3882, float 0x3FD3333340000000, float %3871
  %3885 = select i1 %3882, float 0x3FD3333340000000, float %3872
  %3886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.i32 %3886, 0
  %3888 = and i32 %3887, 32
  %3889 = icmp eq i32 %3888, 0
  br i1 %3889, label %3962, label %3890

; <label>:3890                                    ; preds = %3868
  %3891 = add i32 %54, 140
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = add i32 %54, 388
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = add i32 %3896, 0
  %3898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3898, %dx.types.Handle %96, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %3904 = and i32 %3893, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = lshr i32 %3893, 8
  %3907 = and i32 %3906, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = lshr i32 %3893, 16
  %3910 = and i32 %3909, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = fmul fast float %3911, 0x3F70101000000000
  %3913 = fmul fast float %3900, %3905
  %3914 = fadd fast float %3913, %3908
  %3915 = fmul fast float %3914, 0x3F70101000000000
  %3916 = fadd fast float %3901, -5.000000e-01
  %3917 = fadd fast float %3903, -5.000000e-01
  %3918 = fmul fast float %3916, %3912
  %3919 = fmul fast float %3917, %3912
  %3920 = fadd fast float %3918, 5.000000e-01
  %3921 = fadd fast float %3919, 5.000000e-01
  %3922 = fmul fast float %3920, 2.000000e+00
  %3923 = fadd fast float %3922, -1.000000e+00
  %3924 = fmul fast float %3921, 2.000000e+00
  %3925 = fadd fast float %3924, -1.000000e+00
  %3926 = fadd fast float %3923, %3925
  %3927 = fmul fast float %3926, 5.000000e-01
  %3928 = fsub fast float %3923, %3925
  %3929 = fmul fast float %3928, 5.000000e-01
  %3930 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3931 = fsub fast float 1.000000e+00, %3930
  %3932 = call float @dx.op.unary.f32(i32 6, float %3929)  ; FAbs(value)
  %3933 = fsub fast float %3931, %3932
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3927, float %3929, float %3933, float %3927, float %3929, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = call float @dx.op.unary.f32(i32 25, float %3934)  ; Rsqrt(value)
  %3936 = fmul fast float %3927, %3935
  %3937 = fmul fast float %3929, %3935
  %3938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.i32 %3938, 0
  %3940 = and i32 %3939, 67108864
  %3941 = icmp eq i32 %3940, 0
  br i1 %3941, label %3958, label %3942

; <label>:3942                                    ; preds = %3890
  %3943 = add i32 %54, 328
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = and i32 %3945, 65535
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.i32 %3948, 0
  %3950 = and i32 %3949, 65535
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = lshr i32 %3945, 16
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = fsub fast float %3915, %3953
  %3955 = fmul fast float %3954, %3947
  %3956 = fadd fast float %3955, %3951
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  br label %3958

; <label>:3958                                    ; preds = %3942, %3890
  %3959 = phi float [ %3957, %3942 ], [ %3915, %3890 ]
  %3960 = call float @dx.op.dot2.f32(i32 54, float %3936, float %3937, float %3379, float %3380)  ; Dot2(ax,ay,bx,by)
  %3961 = call float @dx.op.dot2.f32(i32 54, float %3936, float %3937, float %3381, float %3382)  ; Dot2(ax,ay,bx,by)
  br label %3962

; <label>:3962                                    ; preds = %3958, %3868
  %3963 = phi float [ %3959, %3958 ], [ 0x3FD6666660000000, %3868 ]
  %3964 = phi float [ %3960, %3958 ], [ 0.000000e+00, %3868 ]
  %3965 = phi float [ %3961, %3958 ], [ 0.000000e+00, %3868 ]
  %3966 = phi float [ %3902, %3958 ], [ 1.000000e+00, %3868 ]
  %3967 = add i32 %54, 208
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = lshr i32 %3969, 22
  %3971 = shl nuw nsw i32 %3970, 5
  %3972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3971)  ; LegacyF16ToF32(value)
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = and i32 %3974, 64
  %3976 = icmp eq i32 %3975, 0
  br i1 %3976, label %4010, label %3977

; <label>:3977                                    ; preds = %3962
  %3978 = add i32 %54, 404
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = add i32 %3980, 0
  %3982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = and i32 %3984, 131072
  %3986 = icmp eq i32 %3985, 0
  %3987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3982, %dx.types.Handle %96, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = fmul fast float %3988, %363
  %3992 = fmul fast float %3989, %366
  %3993 = fmul fast float %3990, %369
  br i1 %3986, label %4000, label %3994

; <label>:3994                                    ; preds = %3977
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = fmul fast float %3996, %3991
  %3998 = fmul fast float %3996, %3992
  %3999 = fmul fast float %3996, %3993
  br label %4000

; <label>:4000                                    ; preds = %3994, %3977
  %4001 = phi float [ %3997, %3994 ], [ %3991, %3977 ]
  %4002 = phi float [ %3998, %3994 ], [ %3992, %3977 ]
  %4003 = phi float [ %3999, %3994 ], [ %3993, %3977 ]
  %4004 = fmul fast float %4001, %3972
  %4005 = select i1 %217, float %4004, float %4001
  %4006 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4002, float %4003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = select i1 %217, float 0.000000e+00, float %4001
  %4008 = select i1 %217, float %4006, float %4002
  %4009 = select i1 %217, float 0.000000e+00, float %4003
  br label %4010

; <label>:4010                                    ; preds = %4000, %3962
  %4011 = phi float [ %4007, %4000 ], [ 0.000000e+00, %3962 ]
  %4012 = phi float [ %4008, %4000 ], [ 0.000000e+00, %3962 ]
  %4013 = phi float [ %4009, %4000 ], [ 0.000000e+00, %3962 ]
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = and i32 %4015, 1024
  %4017 = icmp eq i32 %4016, 0
  br i1 %4017, label %4048, label %4018

; <label>:4018                                    ; preds = %4010
  %4019 = add i32 %54, 200
  %4020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.i32 %4020, 0
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3F70101020000000
  %4025 = lshr i32 %4021, 8
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = fmul fast float %4027, 0x3F70101020000000
  %4029 = lshr i32 %4021, 16
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4031, 0x3F70101020000000
  %4033 = fmul fast float %4024, %4024
  %4034 = fmul fast float %4028, %4028
  %4035 = fmul fast float %4032, %4032
  %4036 = add i32 %54, 468
  %4037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.i32 %4037, 0
  %4039 = add i32 %4038, 0
  %4040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4040, %dx.types.Handle %97, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = fmul fast float %4033, %4042
  %4046 = fmul fast float %4034, %4043
  %4047 = fmul fast float %4035, %4044
  br label %4048

; <label>:4048                                    ; preds = %4018, %4010
  %4049 = phi float [ %4045, %4018 ], [ 0.000000e+00, %4010 ]
  %4050 = phi float [ %4046, %4018 ], [ 0.000000e+00, %4010 ]
  %4051 = phi float [ %4047, %4018 ], [ 0.000000e+00, %4010 ]
  %4052 = fcmp fast ogt float %4049, 0.000000e+00
  %4053 = fcmp fast ogt float %4050, 0.000000e+00
  %4054 = fcmp fast ogt float %4051, 0.000000e+00
  %4055 = call float @dx.op.unary.f32(i32 23, float %4049)  ; Log(value)
  %4056 = call float @dx.op.unary.f32(i32 23, float %4050)  ; Log(value)
  %4057 = call float @dx.op.unary.f32(i32 23, float %4051)  ; Log(value)
  %4058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.i32 %4058, 0
  %4060 = lshr i32 %4059, 7
  %4061 = and i32 %4060, 32752
  %4062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4061)  ; LegacyF16ToF32(value)
  %4063 = fmul fast float %4055, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4062
  %4065 = fmul fast float %4056, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4062
  %4067 = fmul fast float %4057, 0xBFE62E4300000000
  %4068 = fmul fast float %4067, %4062
  %4069 = select i1 %4052, float %4064, float 1.270000e+02
  %4070 = select i1 %4053, float %4066, float 1.270000e+02
  %4071 = select i1 %4054, float %4068, float 1.270000e+02
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = and i32 %4073, 10240
  %4075 = icmp eq i32 %4074, 0
  br i1 %4075, label %4120, label %4076

; <label>:4076                                    ; preds = %4048
  %4077 = add i32 %54, 484
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = add i32 %4079, 0
  %4081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4081, %dx.types.Handle %97, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4082, 3
  %4085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.i32 %4085, 0
  %4087 = and i32 %4086, 1048576
  %4088 = icmp ne i32 %4087, 0
  %4089 = and i32 %4086, 8192
  %4090 = icmp eq i32 %4089, 0
  br i1 %4090, label %4106, label %4091

; <label>:4091                                    ; preds = %4076
  %4092 = extractvalue %dx.types.ResRet.f32 %4082, 2
  %4093 = select i1 %4088, float %4092, float %4083
  %4094 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4095 = select i1 %4088, float %4094, float %4083
  %4096 = add i32 %54, 144
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = lshr i32 %4098, 16
  %4100 = and i32 %4099, 255
  %4101 = uitofp i32 %4100 to float
  %4102 = fmul fast float %4101, 0x3F80101020000000
  %4103 = fmul fast float %4102, %4095
  %4104 = fmul fast float %4102, %4083
  %4105 = fmul fast float %4102, %4093
  br label %4106

; <label>:4106                                    ; preds = %4091, %4076
  %4107 = phi float [ %4103, %4091 ], [ 0.000000e+00, %4076 ]
  %4108 = phi float [ %4104, %4091 ], [ 0.000000e+00, %4076 ]
  %4109 = phi float [ %4105, %4091 ], [ 0.000000e+00, %4076 ]
  %4110 = and i32 %4086, 2048
  %4111 = icmp eq i32 %4110, 0
  br i1 %4111, label %4120, label %4112

; <label>:4112                                    ; preds = %4106
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = shl i32 %4114, 4
  %4116 = and i32 %4115, 32752
  %4117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4116)  ; LegacyF16ToF32(value)
  %4118 = fmul fast float %4117, %4084
  %4119 = call float @dx.op.binary.f32(i32 35, float %4118, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4120

; <label>:4120                                    ; preds = %4112, %4106, %4048
  %4121 = phi float [ %4107, %4112 ], [ %4107, %4106 ], [ 0.000000e+00, %4048 ]
  %4122 = phi float [ %4108, %4112 ], [ %4108, %4106 ], [ 0.000000e+00, %4048 ]
  %4123 = phi float [ %4109, %4112 ], [ %4109, %4106 ], [ 0.000000e+00, %4048 ]
  %4124 = phi float [ %4119, %4112 ], [ 0x3F70101020000000, %4106 ], [ 0x3F70101020000000, %4048 ]
  %4125 = add i32 %54, 144
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = lshr i32 %4127, 8
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4134 = fmul fast float %4132, %4133
  %4135 = fadd fast float %4134, %4129
  %4136 = fmul fast float %4135, 0x3F70101020000000
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  br i1 %3367, label %4138, label %4173

; <label>:4138                                    ; preds = %4120
  %4139 = fmul fast float %4124, 2.000000e+00
  %4140 = fcmp fast olt float %4069, 1.270000e+02
  %4141 = fcmp fast olt float %4070, 1.270000e+02
  %4142 = fcmp fast olt float %4071, 1.270000e+02
  %4143 = fmul fast float %4069, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4139
  %4145 = fmul fast float %4070, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4139
  %4147 = fmul fast float %4071, 0xBFF7154760000000
  %4148 = fmul fast float %4147, %4139
  %4149 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4150 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4151 = call float @dx.op.unary.f32(i32 21, float %4148)  ; Exp(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = fadd fast float %4152, -1.000000e+00
  %4156 = select i1 %4140, float %4155, float -1.000000e+00
  %4157 = fadd fast float %4153, -1.000000e+00
  %4158 = select i1 %4141, float %4157, float -1.000000e+00
  %4159 = fadd fast float %4154, -1.000000e+00
  %4160 = select i1 %4142, float %4159, float -1.000000e+00
  %4161 = fmul fast float %4156, %3663
  %4162 = fmul fast float %4158, %3663
  %4163 = fmul fast float %4160, %3663
  %4164 = fadd fast float %4161, 1.000000e+00
  %4165 = fadd fast float %4162, 1.000000e+00
  %4166 = fadd fast float %4163, 1.000000e+00
  %4167 = fmul fast float %4164, %3352
  %4168 = fmul fast float %4165, %3353
  %4169 = fmul fast float %4166, %3354
  %4170 = fmul fast float %4164, %3349
  %4171 = fmul fast float %4165, %3350
  %4172 = fmul fast float %4166, %3351
  br label %4173

; <label>:4173                                    ; preds = %4138, %4120
  %4174 = phi float [ %4170, %4138 ], [ %3349, %4120 ]
  %4175 = phi float [ %4171, %4138 ], [ %3350, %4120 ]
  %4176 = phi float [ %4172, %4138 ], [ %3351, %4120 ]
  %4177 = phi float [ %4167, %4138 ], [ %3352, %4120 ]
  %4178 = phi float [ %4168, %4138 ], [ %3353, %4120 ]
  %4179 = phi float [ %4169, %4138 ], [ %3354, %4120 ]
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = and i32 %4181, 3
  %4183 = icmp eq i32 %4182, 3
  br i1 %4183, label %4262, label %4184

; <label>:4184                                    ; preds = %4173
  %4185 = and i32 %4181, 16
  %4186 = icmp ne i32 %4185, 0
  %4187 = select i1 %4186, float %3663, float 0.000000e+00
  %4188 = icmp eq i32 %4182, 0
  br i1 %4188, label %4189, label %4217

; <label>:4189                                    ; preds = %4184
  %4190 = and i32 %4181, 64
  %4191 = icmp ne i32 %4190, 0
  %4192 = select i1 %4191, float %3663, float 0.000000e+00
  %4193 = fsub fast float %3883, %4177
  %4194 = fsub fast float %3884, %4178
  %4195 = fsub fast float %3885, %4179
  %4196 = fmul fast float %4187, %4193
  %4197 = fmul fast float %4187, %4194
  %4198 = fmul fast float %4187, %4195
  %4199 = fadd fast float %4196, %4177
  %4200 = fadd fast float %4197, %4178
  %4201 = fadd fast float %4198, %4179
  %4202 = fsub fast float %3869, %3361
  %4203 = fmul fast float %4187, %4202
  %4204 = fadd fast float %4203, %3361
  %4205 = fsub fast float %4011, %4174
  %4206 = fsub fast float %4012, %4175
  %4207 = fsub fast float %4013, %4176
  %4208 = fmul fast float %4192, %4205
  %4209 = fmul fast float %4192, %4206
  %4210 = fmul fast float %4192, %4207
  %4211 = fadd fast float %4208, %4174
  %4212 = fadd fast float %4209, %4175
  %4213 = fadd fast float %4210, %4176
  %4214 = fsub fast float %4137, %3365
  %4215 = fmul fast float %4187, %4214
  %4216 = fadd fast float %4215, %3365
  br label %4262

; <label>:4217                                    ; preds = %4184
  %4218 = icmp eq i32 %4182, 1
  br i1 %4218, label %4219, label %4232

; <label>:4219                                    ; preds = %4217
  %4220 = fadd fast float %3883, -1.000000e+00
  %4221 = fadd fast float %3884, -1.000000e+00
  %4222 = fadd fast float %3885, -1.000000e+00
  %4223 = fmul fast float %4187, %4220
  %4224 = fmul fast float %4187, %4221
  %4225 = fmul fast float %4187, %4222
  %4226 = fadd fast float %4223, 1.000000e+00
  %4227 = fadd fast float %4224, 1.000000e+00
  %4228 = fadd fast float %4225, 1.000000e+00
  %4229 = fmul fast float %4226, %4177
  %4230 = fmul fast float %4227, %4178
  %4231 = fmul fast float %4228, %4179
  br label %4262

; <label>:4232                                    ; preds = %4217
  %4233 = icmp eq i32 %4182, 2
  br i1 %4233, label %4234, label %4262

; <label>:4234                                    ; preds = %4232
  %4235 = call float @dx.op.unary.f32(i32 24, float %3883)  ; Sqrt(value)
  %4236 = call float @dx.op.unary.f32(i32 24, float %3884)  ; Sqrt(value)
  %4237 = call float @dx.op.unary.f32(i32 24, float %3885)  ; Sqrt(value)
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fadd fast float %4236, -5.000000e-01
  %4240 = fadd fast float %4237, -5.000000e-01
  %4241 = fmul fast float %4238, %4187
  %4242 = fmul fast float %4239, %4187
  %4243 = fmul fast float %4240, %4187
  %4244 = fadd fast float %4241, 5.000000e-01
  %4245 = fadd fast float %4242, 5.000000e-01
  %4246 = fadd fast float %4243, 5.000000e-01
  %4247 = fmul fast float %4244, 2.000000e+00
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = fmul fast float %4248, %4177
  %4250 = fadd fast float %4249, %4247
  %4251 = fmul fast float %4250, %4177
  %4252 = fmul fast float %4245, 2.000000e+00
  %4253 = fsub fast float 1.000000e+00, %4252
  %4254 = fmul fast float %4253, %4178
  %4255 = fadd fast float %4254, %4252
  %4256 = fmul fast float %4255, %4178
  %4257 = fmul fast float %4246, 2.000000e+00
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = fmul fast float %4258, %4179
  %4260 = fadd fast float %4259, %4257
  %4261 = fmul fast float %4260, %4179
  br label %4262

; <label>:4262                                    ; preds = %4234, %4232, %4219, %4189, %4173
  %4263 = phi float [ %4174, %4173 ], [ %4174, %4234 ], [ %4174, %4232 ], [ %4174, %4219 ], [ %4211, %4189 ]
  %4264 = phi float [ %4175, %4173 ], [ %4175, %4234 ], [ %4175, %4232 ], [ %4175, %4219 ], [ %4212, %4189 ]
  %4265 = phi float [ %4176, %4173 ], [ %4176, %4234 ], [ %4176, %4232 ], [ %4176, %4219 ], [ %4213, %4189 ]
  %4266 = phi float [ %4177, %4173 ], [ %4251, %4234 ], [ %4177, %4232 ], [ %4229, %4219 ], [ %4199, %4189 ]
  %4267 = phi float [ %4178, %4173 ], [ %4256, %4234 ], [ %4178, %4232 ], [ %4230, %4219 ], [ %4200, %4189 ]
  %4268 = phi float [ %4179, %4173 ], [ %4261, %4234 ], [ %4179, %4232 ], [ %4231, %4219 ], [ %4201, %4189 ]
  %4269 = phi float [ %3361, %4173 ], [ %3361, %4234 ], [ %3361, %4232 ], [ %3361, %4219 ], [ %4204, %4189 ]
  %4270 = phi float [ %3365, %4173 ], [ %3365, %4234 ], [ %3365, %4232 ], [ %3365, %4219 ], [ %4216, %4189 ]
  %4271 = and i32 %4181, 12
  %4272 = icmp eq i32 %4271, 12
  br i1 %4272, label %4403, label %4273

; <label>:4273                                    ; preds = %4262
  %4274 = and i32 %4181, 2097184
  %4275 = icmp eq i32 %4274, 2097184
  %4276 = select i1 %4275, float %3663, float 0.000000e+00
  %4277 = and i32 %4181, 4194336
  %4278 = icmp eq i32 %4277, 4194336
  %4279 = select i1 %4278, float %3663, float 0.000000e+00
  %4280 = and i32 %4181, 8388640
  %4281 = icmp eq i32 %4280, 8388640
  %4282 = select i1 %4281, float %3663, float 0.000000e+00
  %4283 = and i32 %4181, 1024
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %3663, float 0.000000e+00
  %4286 = and i32 %4181, 2048
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3663, float 0.000000e+00
  %4289 = and i32 %4181, 8192
  %4290 = icmp ne i32 %4289, 0
  %4291 = select i1 %4290, float %3663, float 0.000000e+00
  %4292 = icmp eq i32 %4271, 0
  br i1 %4292, label %4293, label %4327

; <label>:4293                                    ; preds = %4273
  %4294 = fsub fast float %3964, %3347
  %4295 = fsub fast float %3965, %3348
  %4296 = fmul fast float %4276, %4294
  %4297 = fmul fast float %4276, %4295
  %4298 = fadd fast float %4296, %3347
  %4299 = fadd fast float %4297, %3348
  %4300 = fsub fast float %3966, %3363
  %4301 = fmul fast float %4279, %4300
  %4302 = fadd fast float %4301, %3363
  %4303 = fsub fast float %3963, %3362
  %4304 = fmul fast float %4282, %4303
  %4305 = fadd fast float %4304, %3362
  %4306 = fsub fast float %4069, %3355
  %4307 = fsub fast float %4070, %3356
  %4308 = fsub fast float %4071, %3357
  %4309 = fmul fast float %4285, %4306
  %4310 = fmul fast float %4285, %4307
  %4311 = fmul fast float %4285, %4308
  %4312 = fadd fast float %4309, %3355
  %4313 = fadd fast float %4310, %3356
  %4314 = fadd fast float %4311, %3357
  %4315 = fsub fast float %4124, %3364
  %4316 = fmul fast float %4288, %4315
  %4317 = fadd fast float %4316, %3364
  %4318 = fsub fast float %4121, %3358
  %4319 = fsub fast float %4122, %3359
  %4320 = fsub fast float %4123, %3360
  %4321 = fmul fast float %4291, %4318
  %4322 = fmul fast float %4291, %4319
  %4323 = fmul fast float %4291, %4320
  %4324 = fadd fast float %4321, %3358
  %4325 = fadd fast float %4322, %3359
  %4326 = fadd fast float %4323, %3360
  br label %4403

; <label>:4327                                    ; preds = %4273
  %4328 = icmp eq i32 %4271, 4
  br i1 %4328, label %4329, label %4375

; <label>:4329                                    ; preds = %4327
  %4330 = fmul fast float %4276, %3964
  %4331 = fmul fast float %4276, %3965
  %4332 = fadd fast float %4330, %3347
  %4333 = fadd fast float %4331, %3348
  %4334 = call float @dx.op.binary.f32(i32 36, float %3363, float %3966)  ; FMin(a,b)
  %4335 = fsub fast float %4334, %3363
  %4336 = fmul fast float %4335, %4279
  %4337 = fadd fast float %4336, %3363
  %4338 = fadd fast float %3963, %3362
  %4339 = fmul fast float %4338, 0x3FF337FAE0000000
  %4340 = fmul fast float %3362, %3362
  %4341 = fmul fast float %3963, %3963
  %4342 = fadd fast float %4341, %4340
  %4343 = fmul fast float %4342, 0x3FE5152B00000000
  %4344 = fmul fast float %3362, 0xBFCC1F85E0000000
  %4345 = fmul fast float %4344, %3963
  %4346 = fadd fast float %4345, 0xBFE1363700000000
  %4347 = fadd fast float %4346, %4339
  %4348 = fsub fast float %4347, %4343
  %4349 = fmul fast float %4338, 0x3FBA6F0D00000000
  %4350 = fmul fast float %4342, 0x3FD0432880000000
  %4351 = fmul fast float %3362, 0xBFEF110800000000
  %4352 = fmul fast float %4351, %3963
  %4353 = fadd fast float %4352, 1.000000e+00
  %4354 = fsub fast float %4353, %4349
  %4355 = fadd fast float %4354, %4350
  %4356 = fdiv fast float %4348, %4355
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fsub fast float %4357, %3362
  %4359 = fmul fast float %4358, %4282
  %4360 = fadd fast float %4359, %3362
  %4361 = fmul fast float %4285, %4069
  %4362 = fmul fast float %4285, %4070
  %4363 = fmul fast float %4285, %4071
  %4364 = fadd fast float %4361, %3355
  %4365 = fadd fast float %4362, %3356
  %4366 = fadd fast float %4363, %3357
  %4367 = fmul fast float %4288, %4124
  %4368 = fadd fast float %4367, %3364
  %4369 = fmul fast float %4291, %4121
  %4370 = fmul fast float %4291, %4122
  %4371 = fmul fast float %4291, %4123
  %4372 = fadd fast float %4369, %3358
  %4373 = fadd fast float %4370, %3359
  %4374 = fadd fast float %4371, %3360
  br label %4403

; <label>:4375                                    ; preds = %4327
  %4376 = icmp eq i32 %4271, 8
  br i1 %4376, label %4377, label %4403

; <label>:4377                                    ; preds = %4375
  %4378 = fmul fast float %4276, %3964
  %4379 = fmul fast float %4276, %3965
  %4380 = fadd fast float %4378, %3347
  %4381 = fadd fast float %4379, %3348
  %4382 = call float @dx.op.binary.f32(i32 36, float %3363, float %3966)  ; FMin(a,b)
  %4383 = fsub fast float %4382, %3363
  %4384 = fmul fast float %4383, %4279
  %4385 = fadd fast float %4384, %3363
  %4386 = fsub fast float %3963, %3362
  %4387 = fmul fast float %4282, %4386
  %4388 = fadd fast float %4387, %3362
  %4389 = fmul fast float %4285, %4069
  %4390 = fmul fast float %4285, %4070
  %4391 = fmul fast float %4285, %4071
  %4392 = fadd fast float %4389, %3355
  %4393 = fadd fast float %4390, %3356
  %4394 = fadd fast float %4391, %3357
  %4395 = fmul fast float %4288, %4124
  %4396 = fadd fast float %4395, %3364
  %4397 = fmul fast float %4291, %4121
  %4398 = fmul fast float %4291, %4122
  %4399 = fmul fast float %4291, %4123
  %4400 = fadd fast float %4397, %3358
  %4401 = fadd fast float %4398, %3359
  %4402 = fadd fast float %4399, %3360
  br label %4403

; <label>:4403                                    ; preds = %4377, %4375, %4329, %4293, %4262, %3662, %3366, %3346
  %4404 = phi float [ %3347, %4262 ], [ %3347, %3662 ], [ %3347, %3346 ], [ %3347, %3366 ], [ %4298, %4293 ], [ %4332, %4329 ], [ %3347, %4375 ], [ %4380, %4377 ]
  %4405 = phi float [ %3348, %4262 ], [ %3348, %3662 ], [ %3348, %3346 ], [ %3348, %3366 ], [ %4299, %4293 ], [ %4333, %4329 ], [ %3348, %4375 ], [ %4381, %4377 ]
  %4406 = phi float [ %4263, %4262 ], [ %3349, %3662 ], [ %3349, %3346 ], [ %3349, %3366 ], [ %4263, %4293 ], [ %4263, %4329 ], [ %4263, %4375 ], [ %4263, %4377 ]
  %4407 = phi float [ %4264, %4262 ], [ %3350, %3662 ], [ %3350, %3346 ], [ %3350, %3366 ], [ %4264, %4293 ], [ %4264, %4329 ], [ %4264, %4375 ], [ %4264, %4377 ]
  %4408 = phi float [ %4265, %4262 ], [ %3351, %3662 ], [ %3351, %3346 ], [ %3351, %3366 ], [ %4265, %4293 ], [ %4265, %4329 ], [ %4265, %4375 ], [ %4265, %4377 ]
  %4409 = phi float [ %4266, %4262 ], [ %3352, %3662 ], [ %3352, %3346 ], [ %3352, %3366 ], [ %4266, %4293 ], [ %4266, %4329 ], [ %4266, %4375 ], [ %4266, %4377 ]
  %4410 = phi float [ %4267, %4262 ], [ %3353, %3662 ], [ %3353, %3346 ], [ %3353, %3366 ], [ %4267, %4293 ], [ %4267, %4329 ], [ %4267, %4375 ], [ %4267, %4377 ]
  %4411 = phi float [ %4268, %4262 ], [ %3354, %3662 ], [ %3354, %3346 ], [ %3354, %3366 ], [ %4268, %4293 ], [ %4268, %4329 ], [ %4268, %4375 ], [ %4268, %4377 ]
  %4412 = phi float [ %3355, %4262 ], [ %3355, %3662 ], [ %3355, %3346 ], [ %3355, %3366 ], [ %4312, %4293 ], [ %4364, %4329 ], [ %3355, %4375 ], [ %4392, %4377 ]
  %4413 = phi float [ %3356, %4262 ], [ %3356, %3662 ], [ %3356, %3346 ], [ %3356, %3366 ], [ %4313, %4293 ], [ %4365, %4329 ], [ %3356, %4375 ], [ %4393, %4377 ]
  %4414 = phi float [ %3357, %4262 ], [ %3357, %3662 ], [ %3357, %3346 ], [ %3357, %3366 ], [ %4314, %4293 ], [ %4366, %4329 ], [ %3357, %4375 ], [ %4394, %4377 ]
  %4415 = phi float [ %3358, %4262 ], [ %3358, %3662 ], [ %3358, %3346 ], [ %3358, %3366 ], [ %4324, %4293 ], [ %4372, %4329 ], [ %3358, %4375 ], [ %4400, %4377 ]
  %4416 = phi float [ %3359, %4262 ], [ %3359, %3662 ], [ %3359, %3346 ], [ %3359, %3366 ], [ %4325, %4293 ], [ %4373, %4329 ], [ %3359, %4375 ], [ %4401, %4377 ]
  %4417 = phi float [ %3360, %4262 ], [ %3360, %3662 ], [ %3360, %3346 ], [ %3360, %3366 ], [ %4326, %4293 ], [ %4374, %4329 ], [ %3360, %4375 ], [ %4402, %4377 ]
  %4418 = phi float [ %4269, %4262 ], [ %3361, %3662 ], [ %3361, %3346 ], [ %3361, %3366 ], [ %4269, %4293 ], [ %4269, %4329 ], [ %4269, %4375 ], [ %4269, %4377 ]
  %4419 = phi float [ %3362, %4262 ], [ %3362, %3662 ], [ %3362, %3346 ], [ %3362, %3366 ], [ %4305, %4293 ], [ %4360, %4329 ], [ %3362, %4375 ], [ %4388, %4377 ]
  %4420 = phi float [ %3363, %4262 ], [ %3363, %3662 ], [ %3363, %3346 ], [ %3363, %3366 ], [ %4302, %4293 ], [ %4337, %4329 ], [ %3363, %4375 ], [ %4385, %4377 ]
  %4421 = phi float [ %3364, %4262 ], [ %3364, %3662 ], [ %3364, %3346 ], [ %3364, %3366 ], [ %4317, %4293 ], [ %4368, %4329 ], [ %3364, %4375 ], [ %4396, %4377 ]
  %4422 = phi float [ %4270, %4262 ], [ %3365, %3662 ], [ %3365, %3346 ], [ %3365, %3366 ], [ %4270, %4293 ], [ %4270, %4329 ], [ %4270, %4375 ], [ %4270, %4377 ]
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = call float @dx.op.dot2.f32(i32 54, float %4404, float %4405, float %4404, float %4405)  ; Dot2(ax,ay,bx,by)
  %4426 = fmul fast float %4425, 0x3FE3333340000000
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4405, float %4427, float %4404, float %4405, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %4429 = call float @dx.op.unary.f32(i32 25, float %4428)  ; Rsqrt(value)
  %4430 = fmul fast float %4429, %4404
  %4431 = fmul fast float %4429, %4405
  %4432 = fmul fast float %4427, %4429
  %4433 = fmul fast float %4432, %107
  %4434 = fmul fast float %4432, %108
  %4435 = fmul fast float %4432, %109
  %4436 = fmul fast float %4430, %75
  %4437 = fmul fast float %4430, %76
  %4438 = fmul fast float %4430, %77
  %4439 = fadd fast float %4433, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = fadd fast float %4435, %4438
  %4442 = fmul fast float %119, %4431
  %4443 = fmul fast float %120, %4431
  %4444 = fmul fast float %121, %4431
  %4445 = fadd fast float %4439, %4442
  %4446 = fadd fast float %4440, %4443
  %4447 = fadd fast float %4441, %4444
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4446, float %4447, float %4445, float %4446, float %4447)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  %4450 = fmul fast float %4445, %4449
  %4451 = fmul fast float %4446, %4449
  %4452 = fmul fast float %4447, %4449
  %4453 = and i32 %56, 1
  %4454 = icmp eq i32 %4453, 0
  br i1 %4454, label %4455, label %5047

; <label>:4455                                    ; preds = %4403
  %4456 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4458 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4460 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4461 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4462 = fadd fast float %4456, %155
  %4463 = fadd fast float %4457, %156
  %4464 = fadd fast float %4458, %157
  %4465 = fadd fast float %4459, %155
  %4466 = fadd fast float %4460, %156
  %4467 = fadd fast float %4461, %157
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 2
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4475 = fmul fast float %4469, %100
  %4476 = fmul fast float %4475, %4473
  %4477 = fmul fast float %4470, %101
  %4478 = fmul fast float %4477, %4474
  %4479 = fptoui float %4476 to i32
  %4480 = fptoui float %4478 to i32
  %4481 = fadd fast float %4469, -1.000000e+00
  %4482 = fadd fast float %4470, -1.000000e+00
  %4483 = fptoui float %4481 to i32
  %4484 = fptoui float %4482 to i32
  %4485 = call i32 @dx.op.binary.i32(i32 40, i32 %4479, i32 %4483)  ; UMin(a,b)
  %4486 = call i32 @dx.op.binary.i32(i32 40, i32 %4480, i32 %4484)  ; UMin(a,b)
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4490 = fmul fast float %4488, %91
  %4491 = fsub fast float %4490, %4489
  %4492 = fadd fast float %4471, -1.000000e+00
  %4493 = call float @dx.op.binary.f32(i32 36, float %4491, float %4492)  ; FMin(a,b)
  %4494 = fptoui float %4493 to i32
  %4495 = fptoui float %4469 to i32
  %4496 = fptoui float %4470 to i32
  %4497 = mul i32 %4494, %4496
  %4498 = add i32 %4497, %4486
  %4499 = mul i32 %4498, %4495
  %4500 = add i32 %4499, %4485
  %4501 = shl i32 %4500, 2
  %4502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.i32 %4502, 0
  %4504 = and i32 %4503, 1023
  %4505 = lshr i32 %4503, 10
  %4506 = icmp eq i32 %4504, 0
  br i1 %4506, label %5010, label %4507

; <label>:4507                                    ; preds = %4455
  %4508 = and i32 %4503, 1023
  br label %4509

; <label>:4509                                    ; preds = %4641, %4507
  %4510 = phi i32 [ %4591, %4641 ], [ 0, %4507 ]
  %4511 = phi float [ %4642, %4641 ], [ 0.000000e+00, %4507 ]
  %4512 = phi float [ %4643, %4641 ], [ %4424, %4507 ]
  %4513 = phi float [ %4644, %4641 ], [ %4422, %4507 ]
  %4514 = phi float [ %4645, %4641 ], [ %4412, %4507 ]
  %4515 = phi float [ %4646, %4641 ], [ %4413, %4507 ]
  %4516 = phi float [ %4647, %4641 ], [ %4414, %4507 ]
  %4517 = phi float [ %4648, %4641 ], [ 0.000000e+00, %4507 ]
  %4518 = phi float [ %4649, %4641 ], [ 0.000000e+00, %4507 ]
  %4519 = phi float [ %4650, %4641 ], [ %4415, %4507 ]
  %4520 = phi float [ %4651, %4641 ], [ %4416, %4507 ]
  %4521 = phi float [ %4652, %4641 ], [ %4417, %4507 ]
  %4522 = phi float [ %4653, %4641 ], [ %4406, %4507 ]
  %4523 = phi float [ %4654, %4641 ], [ %4407, %4507 ]
  %4524 = phi float [ %4655, %4641 ], [ %4408, %4507 ]
  %4525 = phi float [ %4656, %4641 ], [ %4450, %4507 ]
  %4526 = phi float [ %4657, %4641 ], [ %4451, %4507 ]
  %4527 = phi float [ %4658, %4641 ], [ %4452, %4507 ]
  %4528 = phi float [ %4659, %4641 ], [ %4420, %4507 ]
  %4529 = phi float [ %4660, %4641 ], [ %4419, %4507 ]
  %4530 = phi float [ %4661, %4641 ], [ 0.000000e+00, %4507 ]
  %4531 = phi float [ %4662, %4641 ], [ %4418, %4507 ]
  %4532 = phi float [ %4663, %4641 ], [ %4409, %4507 ]
  %4533 = phi float [ %4664, %4641 ], [ %4410, %4507 ]
  %4534 = phi float [ %4665, %4641 ], [ %4411, %4507 ]
  %4535 = add nuw nsw i32 %4510, %4505
  %4536 = shl i32 %4535, 2
  %4537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.i32 %4537, 0
  %4539 = shl i32 %4538, 8
  %4540 = or i32 %4539, 48
  %4541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.ResRet.f32 %4541, 2
  %4545 = extractvalue %dx.types.ResRet.f32 %4541, 3
  %4546 = or i32 %4539, 64
  %4547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.i32 %4547, 0
  %4549 = extractvalue %dx.types.ResRet.i32 %4547, 1
  %4550 = or i32 %4539, 80
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 3
  %4554 = or i32 %4539, 96
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4557 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4558 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4559 = extractvalue %dx.types.ResRet.f32 %4555, 3
  %4560 = or i32 %4539, 112
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4563 = or i32 %4539, 128
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = or i32 %4539, 144
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = or i32 %4539, 160
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4539, 192
  %4582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.i32 %4582, 0
  %4584 = or i32 %4539, 208
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = or i32 %4539, 248
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = add nuw nsw i32 %4510, 1
  %4592 = bitcast float %4545 to i32
  %4593 = and i32 %4592, 512
  %4594 = icmp eq i32 %4593, 0
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4600 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4601 = or i32 %4539, 16
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4608 = or i32 %4539, 32
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4609, 3
  %4614 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4615 = call float @dx.op.unary.f32(i32 27, float %4600)  ; Round_ni(value)
  %4616 = call float @dx.op.unary.f32(i32 6, float %4615)  ; FAbs(value)
  %4617 = call float @dx.op.unary.f32(i32 27, float %4607)  ; Round_ni(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4620 = call float @dx.op.unary.f32(i32 27, float %4619)  ; Round_ni(value)
  %4621 = fadd fast float %4618, %4616
  %4622 = fadd fast float %4621, %4620
  %4623 = fcmp fast oeq float %4622, 0.000000e+00
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = fsub fast float %4624, %4600
  %4629 = fsub fast float %4626, %4600
  %4630 = fsub fast float %4625, %4607
  %4631 = fsub fast float %4627, %4607
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4543, float %4544, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 2
  %4635 = fadd fast float %4634, %4632
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4638 = fcmp fast ogt float %4636, %4637
  %4639 = and i1 %4623, %4638
  %4640 = and i1 %4594, %4639
  br i1 %4640, label %4667, label %4641

; <label>:4641                                    ; preds = %4996, %4748, %4667, %4509
  %4642 = phi float [ %4511, %4667 ], [ %4751, %4748 ], [ %4751, %4996 ], [ %4511, %4509 ]
  %4643 = phi float [ %4512, %4667 ], [ %4512, %4748 ], [ %4972, %4996 ], [ %4512, %4509 ]
  %4644 = phi float [ %4513, %4667 ], [ %4513, %4748 ], [ %4970, %4996 ], [ %4513, %4509 ]
  %4645 = phi float [ %4514, %4667 ], [ %4514, %4748 ], [ %4948, %4996 ], [ %4514, %4509 ]
  %4646 = phi float [ %4515, %4667 ], [ %4515, %4748 ], [ %4949, %4996 ], [ %4515, %4509 ]
  %4647 = phi float [ %4516, %4667 ], [ %4516, %4748 ], [ %4950, %4996 ], [ %4516, %4509 ]
  %4648 = phi float [ %4517, %4667 ], [ %4517, %4748 ], [ %4875, %4996 ], [ %4517, %4509 ]
  %4649 = phi float [ %4518, %4667 ], [ %4518, %4748 ], [ %4873, %4996 ], [ %4518, %4509 ]
  %4650 = phi float [ %4519, %4667 ], [ %4519, %4748 ], [ %4918, %4996 ], [ %4519, %4509 ]
  %4651 = phi float [ %4520, %4667 ], [ %4520, %4748 ], [ %4919, %4996 ], [ %4520, %4509 ]
  %4652 = phi float [ %4521, %4667 ], [ %4521, %4748 ], [ %4920, %4996 ], [ %4521, %4509 ]
  %4653 = phi float [ %4522, %4667 ], [ %4522, %4748 ], [ %5006, %4996 ], [ %4522, %4509 ]
  %4654 = phi float [ %4523, %4667 ], [ %4523, %4748 ], [ %5007, %4996 ], [ %4523, %4509 ]
  %4655 = phi float [ %4524, %4667 ], [ %4524, %4748 ], [ %5008, %4996 ], [ %4524, %4509 ]
  %4656 = phi float [ %4525, %4667 ], [ %4525, %4748 ], [ %4854, %4996 ], [ %4525, %4509 ]
  %4657 = phi float [ %4526, %4667 ], [ %4526, %4748 ], [ %4855, %4996 ], [ %4526, %4509 ]
  %4658 = phi float [ %4527, %4667 ], [ %4527, %4748 ], [ %4856, %4996 ], [ %4527, %4509 ]
  %4659 = phi float [ %4528, %4667 ], [ %4528, %4748 ], [ %4928, %4996 ], [ %4528, %4509 ]
  %4660 = phi float [ %4529, %4667 ], [ %4529, %4748 ], [ %4925, %4996 ], [ %4529, %4509 ]
  %4661 = phi float [ %4530, %4667 ], [ %4530, %4748 ], [ %4922, %4996 ], [ %4530, %4509 ]
  %4662 = phi float [ %4531, %4667 ], [ %4531, %4748 ], [ %4871, %4996 ], [ %4531, %4509 ]
  %4663 = phi float [ %4532, %4667 ], [ %4532, %4748 ], [ %4866, %4996 ], [ %4532, %4509 ]
  %4664 = phi float [ %4533, %4667 ], [ %4533, %4748 ], [ %4867, %4996 ], [ %4533, %4509 ]
  %4665 = phi float [ %4534, %4667 ], [ %4534, %4748 ], [ %4868, %4996 ], [ %4534, %4509 ]
  %4666 = icmp eq i32 %4591, %4508
  br i1 %4666, label %5009, label %4509

; <label>:4667                                    ; preds = %4509
  %4668 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4669 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4673 = extractvalue %dx.types.ResRet.i32 %4547, 3
  %4674 = extractvalue %dx.types.ResRet.i32 %4547, 2
  %4675 = add i32 %4673, 0
  %4676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4676, %dx.types.Handle %4677, float %4600, float %4607, float undef, float undef, i32 0, i32 0, i32 undef, float %4628, float %4630, float undef, float %4629, float %4631, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %4672
  %4681 = fadd fast float %4680, %4671
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4600, %4556
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4607, float %4683)  ; FMad(a,b,c)
  %4685 = fadd fast float %4684, %4670
  %4686 = fmul fast float %4600, %4558
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4607, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4669
  %4689 = fmul fast float %4628, %4556
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4630, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4628, %4558
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4630, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4629, %4556
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4631, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4629, %4558
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4631, float %4695)  ; FMad(a,b,c)
  %4697 = add i32 %4674, 0
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4698, %dx.types.Handle %4677, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = and i32 %4592, 1024
  %4702 = icmp ne i32 %4701, 0
  %4703 = fcmp fast ogt float %4700, 0x3FE0101020000000
  %4704 = uitofp i1 %4703 to float
  %4705 = select i1 %4702, float %4704, float %4700
  %4706 = and i32 %4592, 8192
  %4707 = icmp ne i32 %4706, 0
  %4708 = select i1 %4707, float %4668, float 1.000000e+00
  %4709 = fmul fast float %4600, 2.000000e+00
  %4710 = fadd fast float %4709, -1.000000e+00
  %4711 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4712 = fmul fast float %4711, %4589
  %4713 = fsub fast float %4712, %4589
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4607, 2.000000e+00
  %4716 = fadd fast float %4715, -1.000000e+00
  %4717 = call float @dx.op.unary.f32(i32 6, float %4716)  ; FAbs(value)
  %4718 = fmul fast float %4717, %4590
  %4719 = fsub fast float %4718, %4590
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4619, %4552
  %4722 = fsub fast float %4721, %4552
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4682, %4708
  %4725 = fmul fast float %4724, %4679
  %4726 = fmul fast float %4725, %4714
  %4727 = fmul fast float %4726, %4705
  %4728 = fmul fast float %4727, %4720
  %4729 = fmul fast float %4728, %4723
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4733 = fsub fast float %4636, %4732
  %4734 = fmul fast float %4733, %4731
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4729, %4553
  %4737 = fadd fast float %4729, %4553
  %4738 = fmul fast float %4737, %4562
  %4739 = fsub fast float %4738, %4562
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = and i32 %4592, 128
  %4742 = icmp ne i32 %4741, 0
  %4743 = select i1 %4742, float %4740, float %4736
  %4744 = fmul fast float %4743, %4735
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = fcmp fast ugt float %4744, %4746
  br i1 %4747, label %4748, label %4641

; <label>:4748                                    ; preds = %4667
  %4749 = select i1 %4707, float %4744, float 0.000000e+00
  %4750 = fadd fast float %4749, %4511
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  br i1 %4707, label %4641, label %4752

; <label>:4752                                    ; preds = %4748
  %4753 = and i32 %4592, 4
  %4754 = and i32 %4592, 8
  %4755 = add i32 %4548, 0
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4756, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.ResRet.f32 %4758, 3
  %4763 = bitcast float %4574 to i32
  %4764 = and i32 %4763, 255
  %4765 = uitofp i32 %4764 to float
  %4766 = lshr i32 %4763, 8
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = fmul fast float %4762, %4765
  %4770 = fadd fast float %4769, %4768
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = add i32 %4549, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = extractvalue %dx.types.ResRet.f32 %4774, 3
  %4779 = bitcast float %4568 to i32
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4779, 8
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4779, 16
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fmul fast float %4775, %4781
  %4790 = fadd fast float %4789, %4784
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fadd fast float %4776, -5.000000e-01
  %4793 = fadd fast float %4778, -5.000000e-01
  %4794 = fmul fast float %4792, %4788
  %4795 = fmul fast float %4793, %4788
  %4796 = fadd fast float %4794, 5.000000e-01
  %4797 = fadd fast float %4795, 5.000000e-01
  %4798 = fmul fast float %4759, %4577
  %4799 = fmul fast float %4760, %4578
  %4800 = fmul fast float %4761, %4579
  %4801 = fmul fast float %4796, 2.000000e+00
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = fmul fast float %4797, 2.000000e+00
  %4804 = fadd fast float %4803, -1.000000e+00
  %4805 = fadd fast float %4802, %4804
  %4806 = fmul fast float %4805, 5.000000e-01
  %4807 = fsub fast float %4802, %4804
  %4808 = fmul fast float %4807, 5.000000e-01
  %4809 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float %4810, %4811
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4808, float %4812, float %4806, float %4808, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.unary.f32(i32 25, float %4813)  ; Rsqrt(value)
  %4815 = fmul fast float %4806, %4814
  %4816 = fmul fast float %4808, %4814
  %4817 = fmul fast float %4814, %4812
  %4818 = fmul fast float %4817, %4542
  %4819 = fmul fast float %4817, %4543
  %4820 = fmul fast float %4817, %4544
  %4821 = fmul fast float %4815, %4565
  %4822 = fmul fast float %4815, %4566
  %4823 = fmul fast float %4815, %4567
  %4824 = fadd fast float %4821, %4818
  %4825 = fadd fast float %4822, %4819
  %4826 = fadd fast float %4823, %4820
  %4827 = fmul fast float %4816, %4571
  %4828 = fmul fast float %4816, %4572
  %4829 = fmul fast float %4816, %4573
  %4830 = fadd fast float %4824, %4827
  %4831 = fadd fast float %4825, %4828
  %4832 = fadd fast float %4826, %4829
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %4832, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 25, float %4833)  ; Rsqrt(value)
  %4835 = fmul fast float %4830, %4834
  %4836 = fmul fast float %4831, %4834
  %4837 = fmul fast float %4832, %4834
  %4838 = icmp ne i32 %4754, 0
  %4839 = select i1 %4838, float 1.000000e+00, float 0.000000e+00
  %4840 = fmul fast float %4744, %4839
  %4841 = and i32 %4592, 1
  %4842 = icmp eq i32 %4841, 0
  br i1 %4842, label %4843, label %4847

; <label>:4843                                    ; preds = %4752
  %4844 = fsub fast float %4835, %4525
  %4845 = fsub fast float %4836, %4526
  %4846 = fsub fast float %4837, %4527
  br label %4847

; <label>:4847                                    ; preds = %4843, %4752
  %4848 = phi float [ %4844, %4843 ], [ %4835, %4752 ]
  %4849 = phi float [ %4845, %4843 ], [ %4836, %4752 ]
  %4850 = phi float [ %4846, %4843 ], [ %4837, %4752 ]
  %4851 = fmul float %4850, %4840
  %4852 = fmul float %4849, %4840
  %4853 = fmul float %4848, %4840
  %4854 = fadd fast float %4853, %4525
  %4855 = fadd fast float %4852, %4526
  %4856 = fadd fast float %4851, %4527
  %4857 = icmp ne i32 %4753, 0
  %4858 = select i1 %4857, float 1.000000e+00, float 0.000000e+00
  %4859 = fmul fast float %4744, %4858
  %4860 = fsub fast float %4798, %4532
  %4861 = fsub fast float %4799, %4533
  %4862 = fsub fast float %4800, %4534
  %4863 = fmul fast float %4860, %4859
  %4864 = fmul fast float %4861, %4859
  %4865 = fmul fast float %4862, %4859
  %4866 = fadd fast float %4863, %4532
  %4867 = fadd fast float %4864, %4533
  %4868 = fadd fast float %4865, %4534
  %4869 = fsub fast float %4771, %4531
  %4870 = fmul fast float %4869, %4859
  %4871 = fadd fast float %4870, %4531
  %4872 = fmul fast float %4859, %4518
  %4873 = fsub fast float %4518, %4872
  %4874 = fmul fast float %4859, %4517
  %4875 = fsub fast float %4517, %4874
  %4876 = bitcast float %4586 to i32
  %4877 = lshr i32 %4876, 16
  %4878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4877)  ; LegacyF16ToF32(value)
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = and i32 %4880, 1
  %4882 = icmp eq i32 %4881, 0
  br i1 %4882, label %4883, label %4908

; <label>:4883                                    ; preds = %4847
  %4884 = fadd fast float %4771, 0xBFB99999A0000000
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 0x3FF1C71C80000000
  %4887 = fsub fast float 1.000000e+00, %4886
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, %4798
  %4890 = fmul fast float %4888, %4799
  %4891 = fmul fast float %4888, %4800
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4893, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4892, float %4895)  ; FMax(a,b)
  %4897 = fcmp fast ogt float %4896, 0.000000e+00
  %4898 = bitcast float %4896 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = select i1 %4897, float %4900, float 0.000000e+00
  %4902 = fmul fast float %4892, %4878
  %4903 = fmul fast float %4893, %4878
  %4904 = fmul fast float %4894, %4878
  %4905 = fmul fast float %4902, %4901
  %4906 = fmul fast float %4903, %4901
  %4907 = fmul fast float %4904, %4901
  br label %4908

; <label>:4908                                    ; preds = %4883, %4847
  %4909 = phi float [ %4878, %4847 ], [ %4905, %4883 ]
  %4910 = phi float [ %4878, %4847 ], [ %4906, %4883 ]
  %4911 = phi float [ %4878, %4847 ], [ %4907, %4883 ]
  %4912 = fsub fast float %4909, %4519
  %4913 = fsub fast float %4910, %4520
  %4914 = fsub fast float %4911, %4521
  %4915 = fmul fast float %4912, %4859
  %4916 = fmul fast float %4913, %4859
  %4917 = fmul fast float %4914, %4859
  %4918 = fadd fast float %4915, %4519
  %4919 = fadd fast float %4916, %4520
  %4920 = fadd fast float %4917, %4521
  %4921 = fadd fast float %4744, %4530
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fsub fast float %4791, %4529
  %4924 = fmul fast float %4923, %4840
  %4925 = fadd fast float %4924, %4529
  %4926 = fsub fast float %4777, %4528
  %4927 = fmul fast float %4926, %4840
  %4928 = fadd fast float %4927, %4528
  br i1 %4842, label %4937, label %4929

; <label>:4929                                    ; preds = %4908
  %4930 = and i32 %4592, 32768
  %4931 = icmp eq i32 %4930, 0
  br i1 %4931, label %4947, label %4932

; <label>:4932                                    ; preds = %4929
  %4933 = fmul fast float %4840, 1.270000e+02
  %4934 = fadd fast float %4933, %4514
  %4935 = fadd fast float %4933, %4515
  %4936 = fadd fast float %4933, %4516
  br label %4947

; <label>:4937                                    ; preds = %4908
  %4938 = fsub fast float 1.270000e+02, %4514
  %4939 = fsub fast float 1.270000e+02, %4515
  %4940 = fsub fast float 1.270000e+02, %4516
  %4941 = fmul fast float %4840, %4938
  %4942 = fmul fast float %4840, %4939
  %4943 = fmul fast float %4840, %4940
  %4944 = fadd fast float %4941, %4514
  %4945 = fadd fast float %4942, %4515
  %4946 = fadd fast float %4943, %4516
  br label %4947

; <label>:4947                                    ; preds = %4937, %4932, %4929
  %4948 = phi float [ %4934, %4932 ], [ %4514, %4929 ], [ %4944, %4937 ]
  %4949 = phi float [ %4935, %4932 ], [ %4515, %4929 ], [ %4945, %4937 ]
  %4950 = phi float [ %4936, %4932 ], [ %4516, %4929 ], [ %4946, %4937 ]
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = fmul fast float %4954, %4951
  %4956 = fadd fast float %4955, %4953
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = bitcast float %4580 to i32
  %4959 = and i32 %4958, 65535
  %4960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4959)  ; LegacyF16ToF32(value)
  %4961 = lshr i32 %4958, 16
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = fcmp fast oge float %4960, 0.000000e+00
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = select i1 %4963, float %4960, float %4965
  %4967 = fadd fast float %4966, %4962
  %4968 = fsub fast float %4957, %4513
  %4969 = fmul fast float %4968, %4744
  %4970 = fadd fast float %4969, %4513
  %4971 = fmul fast float %4967, %4744
  %4972 = call float @dx.op.binary.f32(i32 35, float %4512, float %4971)  ; FMax(a,b)
  %4973 = and i32 %4592, 16
  %4974 = icmp eq i32 %4973, 0
  br i1 %4974, label %4996, label %4975

; <label>:4975                                    ; preds = %4947
  %4976 = add i32 %4583, 0
  %4977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4976, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4977, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.ResRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.ResRet.f32 %4978, 2
  %4982 = and i32 %4876, 65535
  %4983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4982)  ; LegacyF16ToF32(value)
  %4984 = fmul fast float %4979, %4577
  %4985 = fmul fast float %4980, %4578
  %4986 = fmul fast float %4981, %4579
  %4987 = and i32 %4592, 16384
  %4988 = icmp ne i32 %4987, 0
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = select i1 %4988, float %4990, float 1.000000e+00
  %4992 = fmul fast float %4991, %4983
  %4993 = fmul fast float %4984, %4992
  %4994 = fmul fast float %4985, %4992
  %4995 = fmul fast float %4986, %4992
  br label %4996

; <label>:4996                                    ; preds = %4975, %4947
  %4997 = phi float [ %4993, %4975 ], [ 0.000000e+00, %4947 ]
  %4998 = phi float [ %4994, %4975 ], [ 0.000000e+00, %4947 ]
  %4999 = phi float [ %4995, %4975 ], [ 0.000000e+00, %4947 ]
  %5000 = fsub fast float %4997, %4522
  %5001 = fsub fast float %4998, %4523
  %5002 = fsub fast float %4999, %4524
  %5003 = fmul fast float %5000, %4744
  %5004 = fmul fast float %5001, %4744
  %5005 = fmul fast float %5002, %4744
  %5006 = fadd fast float %5003, %4522
  %5007 = fadd fast float %5004, %4523
  %5008 = fadd fast float %5005, %4524
  br label %4641

; <label>:5009                                    ; preds = %4641
  br label %5010

; <label>:5010                                    ; preds = %5009, %4455
  %5011 = phi float [ 0.000000e+00, %4455 ], [ %4642, %5009 ]
  %5012 = phi float [ %4424, %4455 ], [ %4643, %5009 ]
  %5013 = phi float [ %4422, %4455 ], [ %4644, %5009 ]
  %5014 = phi float [ %4412, %4455 ], [ %4645, %5009 ]
  %5015 = phi float [ %4413, %4455 ], [ %4646, %5009 ]
  %5016 = phi float [ %4414, %4455 ], [ %4647, %5009 ]
  %5017 = phi float [ 0.000000e+00, %4455 ], [ %4648, %5009 ]
  %5018 = phi float [ 0.000000e+00, %4455 ], [ %4649, %5009 ]
  %5019 = phi float [ %4415, %4455 ], [ %4650, %5009 ]
  %5020 = phi float [ %4416, %4455 ], [ %4651, %5009 ]
  %5021 = phi float [ %4417, %4455 ], [ %4652, %5009 ]
  %5022 = phi float [ %4406, %4455 ], [ %4653, %5009 ]
  %5023 = phi float [ %4407, %4455 ], [ %4654, %5009 ]
  %5024 = phi float [ %4408, %4455 ], [ %4655, %5009 ]
  %5025 = phi float [ %4450, %4455 ], [ %4656, %5009 ]
  %5026 = phi float [ %4451, %4455 ], [ %4657, %5009 ]
  %5027 = phi float [ %4452, %4455 ], [ %4658, %5009 ]
  %5028 = phi float [ %4420, %4455 ], [ %4659, %5009 ]
  %5029 = phi float [ %4419, %4455 ], [ %4660, %5009 ]
  %5030 = phi float [ 0.000000e+00, %4455 ], [ %4661, %5009 ]
  %5031 = phi float [ %4418, %4455 ], [ %4662, %5009 ]
  %5032 = phi float [ %4409, %4455 ], [ %4663, %5009 ]
  %5033 = phi float [ %4410, %4455 ], [ %4664, %5009 ]
  %5034 = phi float [ %4411, %4455 ], [ %4665, %5009 ]
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5036, %5025
  %5038 = fmul fast float %5036, %5026
  %5039 = fmul fast float %5036, %5027
  %5040 = fadd fast float %5030, %1247
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.unary.f32(i32 25, float %5042)  ; Rsqrt(value)
  %5044 = fmul fast float %5043, %5037
  %5045 = fmul fast float %5043, %5038
  %5046 = fmul fast float %5043, %5039
  br label %5047

; <label>:5047                                    ; preds = %5010, %4403
  %5048 = phi float [ %5044, %5010 ], [ %4450, %4403 ]
  %5049 = phi float [ %5045, %5010 ], [ %4451, %4403 ]
  %5050 = phi float [ %5046, %5010 ], [ %4452, %4403 ]
  %5051 = phi float [ %5022, %5010 ], [ %4406, %4403 ]
  %5052 = phi float [ %5023, %5010 ], [ %4407, %4403 ]
  %5053 = phi float [ %5024, %5010 ], [ %4408, %4403 ]
  %5054 = phi float [ %5032, %5010 ], [ %4409, %4403 ]
  %5055 = phi float [ %5033, %5010 ], [ %4410, %4403 ]
  %5056 = phi float [ %5034, %5010 ], [ %4411, %4403 ]
  %5057 = phi float [ %5019, %5010 ], [ %4415, %4403 ]
  %5058 = phi float [ %5020, %5010 ], [ %4416, %4403 ]
  %5059 = phi float [ %5021, %5010 ], [ %4417, %4403 ]
  %5060 = phi float [ %5014, %5010 ], [ %4412, %4403 ]
  %5061 = phi float [ %5015, %5010 ], [ %4413, %4403 ]
  %5062 = phi float [ %5016, %5010 ], [ %4414, %4403 ]
  %5063 = phi float [ %5031, %5010 ], [ %4418, %4403 ]
  %5064 = phi float [ %5041, %5010 ], [ %1247, %4403 ]
  %5065 = phi float [ %5029, %5010 ], [ %4419, %4403 ]
  %5066 = phi float [ %5028, %5010 ], [ %4420, %4403 ]
  %5067 = phi float [ %5018, %5010 ], [ 0.000000e+00, %4403 ]
  %5068 = phi float [ %5017, %5010 ], [ 0.000000e+00, %4403 ]
  %5069 = phi float [ %5011, %5010 ], [ 0.000000e+00, %4403 ]
  %5070 = phi float [ %5012, %5010 ], [ %4424, %4403 ]
  %5071 = phi float [ %5013, %5010 ], [ %4422, %4403 ]
  %5072 = fadd fast float %5063, 0xBFB99999A0000000
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, 0x3FF1C71C80000000
  %5075 = call float @dx.op.binary.f32(i32 36, float %5063, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5076 = fsub fast float 1.000000e+00, %5074
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %5077, %5054
  %5079 = fmul fast float %5077, %5055
  %5080 = fmul fast float %5077, %5056
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = fmul fast float %5074, %5054
  %5085 = fmul fast float %5074, %5055
  %5086 = fmul fast float %5074, %5056
  %5087 = fadd fast float %5084, %5075
  %5088 = fadd fast float %5085, %5075
  %5089 = fadd fast float %5086, %5075
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5095 = extractvalue %dx.types.ResRet.i32 %5094, 0
  %5096 = and i32 %5095, 1
  %5097 = icmp eq i32 %5096, 0
  br i1 %5097, label %5112, label %5098

; <label>:5098                                    ; preds = %5047
  %5099 = call float @dx.op.binary.f32(i32 35, float %5082, float %5083)  ; FMax(a,b)
  %5100 = call float @dx.op.binary.f32(i32 35, float %5081, float %5099)  ; FMax(a,b)
  %5101 = fcmp fast ogt float %5100, 0.000000e+00
  %5102 = bitcast float %5100 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = select i1 %5101, float %5104, float 0.000000e+00
  %5106 = fmul fast float %5081, %5057
  %5107 = fmul fast float %5082, %5058
  %5108 = fmul fast float %5083, %5059
  %5109 = fmul fast float %5106, %5105
  %5110 = fmul fast float %5107, %5105
  %5111 = fmul fast float %5108, %5105
  br label %5112

; <label>:5112                                    ; preds = %5098, %5047
  %5113 = phi float [ %5109, %5098 ], [ %5057, %5047 ]
  %5114 = phi float [ %5110, %5098 ], [ %5058, %5047 ]
  %5115 = phi float [ %5111, %5098 ], [ %5059, %5047 ]
  %5116 = call float @dx.op.binary.f32(i32 36, float %5060, float 1.270000e+02)  ; FMin(a,b)
  %5117 = call float @dx.op.binary.f32(i32 36, float %5061, float 1.270000e+02)  ; FMin(a,b)
  %5118 = call float @dx.op.binary.f32(i32 36, float %5062, float 1.270000e+02)  ; FMin(a,b)
  %5119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.i32 %5119, 3
  %5121 = and i32 %5120, 8
  %5122 = icmp ne i32 %5121, 0
  %5123 = call float @dx.op.binary.f32(i32 35, float %5081, float %5054)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5082, float %5054)  ; FMax(a,b)
  %5125 = call float @dx.op.binary.f32(i32 35, float %5083, float %5054)  ; FMax(a,b)
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = select i1 %217, float %5054, float %5081
  %5128 = select i1 %217, float %5126, float %5082
  %5129 = select i1 %217, float 1.000000e+00, float %5083
  %5130 = select i1 %5122, float %5123, float %5127
  %5131 = select i1 %5122, float %5124, float %5128
  %5132 = select i1 %5122, float %5125, float %5129
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5114, float %5115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = select i1 %217, float %5133, float %5113
  %5135 = select i1 %217, float %5133, float %5114
  %5136 = select i1 %217, float %5133, float %5115
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5141 = fadd fast float %5138, %155
  %5142 = fadd fast float %5139, %156
  %5143 = fadd fast float %5140, %157
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = fsub fast float %5141, %5145
  %5148 = fsub fast float %5142, %5146
  %5149 = fmul fast float %5147, %5147
  %5150 = fmul fast float %5148, %5148
  %5151 = fadd fast float %5149, %5150
  %5152 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5154 = fcmp fast olt float %5152, %5153
  br i1 %5154, label %5155, label %5222

; <label>:5155                                    ; preds = %5112
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5166 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5167 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5168 = fadd fast float %5165, %5141
  %5169 = fadd fast float %5166, %5142
  %5170 = fadd fast float %5167, %5143
  %5171 = fmul fast float %5168, %5157
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5159, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5170, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = fmul fast float %5168, %5162
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5170, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = fsub fast float %5173, %5165
  %5178 = fsub fast float %5176, %5166
  %5179 = fsub fast float %5177, %5145
  %5180 = fadd fast float %5179, %5153
  %5181 = fsub fast float %5178, %5146
  %5182 = fadd fast float %5181, %5153
  %5183 = extractvalue %dx.types.CBufRet.f32 %5144, 3
  %5184 = fmul fast float %5180, %5183
  %5185 = fmul fast float %5182, %5183
  %5186 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5188 = fsub fast float 1.000000e+00, %5186
  %5189 = fsub fast float 1.000000e+00, %5187
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = fcmp fast ugt float %5191, 0.000000e+00
  br i1 %5192, label %5193, label %5496

; <label>:5193                                    ; preds = %5155
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5196 = fmul fast float %5195, %5191
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5198 = fadd fast float %5197, %5196
  %5199 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5200 = fadd fast float %5198, %5167
  %5201 = fmul fast float %5173, %5161
  %5202 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5164, float %5201)  ; FMad(a,b,c)
  %5203 = call float @dx.op.tertiary.f32(i32 46, float %5200, float %5199, float %5202)  ; FMad(a,b,c)
  %5204 = fsub fast float %5203, %5167
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5207 = fsub fast float %5204, %5206
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = fadd fast float %5213, %5209
  %5217 = fmul fast float %5216, 0x3F847AE140000000
  %5218 = fadd fast float %5214, %5210
  %5219 = fmul fast float %5218, 0x3F847AE140000000
  %5220 = fadd fast float %5215, %5211
  %5221 = fmul fast float %5220, 0x3F847AE140000000
  br label %5496

; <label>:5222                                    ; preds = %5112
  %5223 = and i32 %193, 1
  %5224 = icmp eq i32 %5223, 0
  br i1 %5224, label %5496, label %5225

; <label>:5225                                    ; preds = %5222
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5234 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5235 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5236 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5237 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5238 = fadd fast float %5235, %5141
  %5239 = fadd fast float %5236, %5142
  %5240 = fadd fast float %5237, %5143
  %5241 = fmul fast float %5238, %5227
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5229, float %5241)  ; FMad(a,b,c)
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5240, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = fmul fast float %5238, %5232
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5233, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5240, float %5234, float %5245)  ; FMad(a,b,c)
  %5247 = fsub fast float %5243, %5235
  %5248 = fsub fast float %5246, %5236
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5252 = extractvalue %dx.types.CBufRet.f32 %5249, 2
  %5253 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.i32 %5256, 0
  %5258 = extractvalue %dx.types.CBufRet.i32 %5256, 1
  %5259 = udiv i32 %5258, %5257
  %5260 = fsub fast float %5247, %5250
  %5261 = fsub fast float %5248, %5251
  %5262 = call float @dx.op.binary.f32(i32 35, float %5260, float 0.000000e+00)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 35, float %5261, float 0.000000e+00)  ; FMax(a,b)
  %5264 = call float @dx.op.binary.f32(i32 36, float %5262, float %5252)  ; FMin(a,b)
  %5265 = call float @dx.op.binary.f32(i32 36, float %5263, float %5253)  ; FMin(a,b)
  %5266 = add i32 %5257, -1
  %5267 = add i32 %5259, -1
  %5268 = fmul fast float %5264, %5255
  %5269 = fmul fast float %5265, %5255
  %5270 = fptoui float %5268 to i32
  %5271 = fptoui float %5269 to i32
  %5272 = call i32 @dx.op.binary.i32(i32 40, i32 %5270, i32 %5266)  ; UMin(a,b)
  %5273 = call i32 @dx.op.binary.i32(i32 40, i32 %5271, i32 %5267)  ; UMin(a,b)
  %5274 = mul i32 %5273, %5257
  %5275 = add i32 %5274, %5272
  %5276 = shl i32 %5275, 2
  %5277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.i32 %5277, 0
  %5279 = icmp eq i32 %5278, -1
  br i1 %5279, label %5496, label %5280

; <label>:5280                                    ; preds = %5225
  %5281 = mul i32 %5278, 148
  %5282 = add i32 %5281, 4
  %5283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = add i32 %5281, 8
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = add i32 %5281, 36
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = add i32 %5281, 60
  %5292 = add i32 %5281, 92
  %5293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.i32 %5293, 0
  %5295 = add i32 %5281, 116
  %5296 = fsub fast float %5247, %5284
  %5297 = fsub fast float %5248, %5287
  %5298 = fmul fast float %5255, %5296
  %5299 = fmul fast float %5255, %5297
  %5300 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5305 = call float @dx.op.unary.f32(i32 83, float %5300)  ; DerivCoarseX(value)
  %5306 = call float @dx.op.unary.f32(i32 83, float %5302)  ; DerivCoarseX(value)
  %5307 = call float @dx.op.unary.f32(i32 84, float %5300)  ; DerivCoarseY(value)
  %5308 = call float @dx.op.unary.f32(i32 84, float %5302)  ; DerivCoarseY(value)
  %5309 = fmul fast float %5305, %5304
  %5310 = fmul fast float %5306, %5304
  %5311 = fmul fast float %5307, %5304
  %5312 = fmul fast float %5308, %5304
  %5313 = call float @dx.op.dot2.f32(i32 54, float %5311, float %5312, float %5311, float %5312)  ; Dot2(ax,ay,bx,by)
  %5314 = call float @dx.op.dot2.f32(i32 54, float %5309, float %5310, float %5309, float %5310)  ; Dot2(ax,ay,bx,by)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5314, float %5313)  ; FMax(a,b)
  %5316 = call float @dx.op.unary.f32(i32 23, float %5315)  ; Log(value)
  %5317 = fmul fast float %5316, 5.000000e-01
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5320 = fadd fast float %5319, %5317
  %5321 = call float @dx.op.binary.f32(i32 35, float %5320, float 0.000000e+00)  ; FMax(a,b)
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5324 = fadd fast float %5323, %5321
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5327 = fadd fast float %5324, %5326
  %5328 = add i32 %5294, 0
  %5329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5330 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5329, i32 0)  ; GetDimensions(handle,mipLevel)
  %5331 = extractvalue %dx.types.Dimensions %5330, 0
  %5332 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5331)  ; FirstbitLo(value)
  %5333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.i32 %5333, 1
  %5335 = sub nsw i32 %5334, %5332
  %5336 = sitofp i32 %5335 to float
  %5337 = fsub fast float %5327, %5336
  %5338 = call float @dx.op.binary.f32(i32 35, float %5337, float 0.000000e+00)  ; FMax(a,b)
  %5339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5329, %dx.types.Handle %46, float %5300, float %5302, float %5290, float undef, i32 0, i32 0, i32 undef, float %5338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = fcmp ule float %5340, 0x3FE0101020000000
  %5342 = extractvalue %dx.types.CBufRet.i32 %5333, 0
  %5343 = and i32 %5342, 128
  %5344 = icmp ne i32 %5343, 0
  %5345 = and i1 %5341, %5344
  br i1 %5345, label %5496, label %5346

; <label>:5346                                    ; preds = %5280
  %5347 = add i32 %5281, 20
  %5348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5347, i32 undef)  ; BufferLoad(srv,index,wot)
  %5349 = extractvalue %dx.types.ResRet.f32 %5348, 0
  %5350 = add i32 %5281, 24
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5281, 40
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = add i32 %5281, 96
  %5357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.i32 %5357, 0
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5361 = fmul fast float %5360, %5300
  %5362 = fmul fast float %5360, %5302
  %5363 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5364 = fadd fast float %5361, %5363
  %5365 = fadd fast float %5362, %5363
  %5366 = add i32 %5358, 0
  %5367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5368 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5367, i32 0)  ; GetDimensions(handle,mipLevel)
  %5369 = extractvalue %dx.types.Dimensions %5368, 0
  %5370 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5369)  ; FirstbitLo(value)
  %5371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.i32 %5371, 1
  %5373 = sub nsw i32 %5372, %5370
  %5374 = sitofp i32 %5373 to float
  %5375 = fsub fast float %5324, %5374
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0.000000e+00)  ; FMax(a,b)
  %5377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5367, %dx.types.Handle %46, float %5364, float %5365, float %5355, float undef, i32 0, i32 0, i32 undef, float %5376)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = fmul fast float %5378, %5349
  %5380 = fadd fast float %5379, %5352
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 3
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 3
  %5389 = extractvalue %dx.types.CBufRet.f32 %5381, 3
  %5390 = fadd fast float %5386, %5247
  %5391 = fadd fast float %5388, %5248
  %5392 = fadd fast float %5380, %5389
  %5393 = fmul fast float %5390, %5382
  %5394 = call float @dx.op.tertiary.f32(i32 46, float %5391, float %5383, float %5393)  ; FMad(a,b,c)
  %5395 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5384, float %5394)  ; FMad(a,b,c)
  %5396 = fsub fast float %5395, %5389
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 2
  %5399 = fsub fast float %5396, %5398
  %5400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.i32 %5400, 0
  %5402 = call i32 @dx.op.binary.i32(i32 40, i32 %5278, i32 %5401)  ; UMin(a,b)
  %5403 = mul i32 %5402, 36
  %5404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5405 = extractvalue %dx.types.ResRet.i32 %5404, 0
  %5406 = add i32 %5403, 4
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 0
  %5409 = fmul fast float %5408, %5300
  %5410 = fmul fast float %5408, %5302
  %5411 = extractvalue %dx.types.CBufRet.f32 %5407, 1
  %5412 = fadd fast float %5409, %5411
  %5413 = fadd fast float %5410, %5411
  %5414 = icmp eq i32 %5405, 0
  br i1 %5414, label %5483, label %5415

; <label>:5415                                    ; preds = %5346
  br label %5416

; <label>:5416                                    ; preds = %5473, %5415
  %5417 = phi float [ %5474, %5473 ], [ 0.000000e+00, %5415 ]
  %5418 = phi float [ %5475, %5473 ], [ 0.000000e+00, %5415 ]
  %5419 = phi float [ %5476, %5473 ], [ 0.000000e+00, %5415 ]
  %5420 = phi float [ %5477, %5473 ], [ 0.000000e+00, %5415 ]
  %5421 = phi float [ %5478, %5473 ], [ 0.000000e+00, %5415 ]
  %5422 = phi float [ %5479, %5473 ], [ 0.000000e+00, %5415 ]
  %5423 = phi i32 [ %5480, %5473 ], [ 0, %5415 ]
  %5424 = shl i32 %5423, 2
  %5425 = add i32 %5291, %5424
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = add i32 %5295, %5424
  %5429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.i32 %5429, 0
  %5431 = add i32 %5430, 0
  %5432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5433 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5432, i32 0)  ; GetDimensions(handle,mipLevel)
  %5434 = extractvalue %dx.types.Dimensions %5433, 0
  %5435 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5434)  ; FirstbitLo(value)
  %5436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.i32 %5436, 1
  %5438 = sub nsw i32 %5437, %5435
  %5439 = sitofp i32 %5438 to float
  %5440 = fsub fast float %5324, %5439
  %5441 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5432, %dx.types.Handle %46, float %5412, float %5413, float %5427, float undef, i32 0, i32 0, i32 undef, float %5441)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = fcmp fast ogt float %5443, 0.000000e+00
  br i1 %5444, label %5445, label %5473

; <label>:5445                                    ; preds = %5416
  %5446 = add i32 %5406, %5424
  %5447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.i32 %5447, 0
  %5449 = and i32 %5448, 32767
  %5450 = mul nuw nsw i32 %5449, 928
  %5451 = add nuw nsw i32 %5450, 48
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = add nuw nsw i32 %5450, 60
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = fmul fast float %5453, %5443
  %5462 = fmul fast float %5454, %5443
  %5463 = fmul fast float %5455, %5443
  %5464 = fadd fast float %5461, %5417
  %5465 = fadd fast float %5462, %5418
  %5466 = fadd fast float %5463, %5419
  %5467 = fmul fast float %5458, %5443
  %5468 = fmul fast float %5459, %5443
  %5469 = fmul fast float %5460, %5443
  %5470 = fadd fast float %5467, %5420
  %5471 = fadd fast float %5468, %5421
  %5472 = fadd fast float %5469, %5422
  br label %5473

; <label>:5473                                    ; preds = %5445, %5416
  %5474 = phi float [ %5464, %5445 ], [ %5417, %5416 ]
  %5475 = phi float [ %5465, %5445 ], [ %5418, %5416 ]
  %5476 = phi float [ %5466, %5445 ], [ %5419, %5416 ]
  %5477 = phi float [ %5470, %5445 ], [ %5420, %5416 ]
  %5478 = phi float [ %5471, %5445 ], [ %5421, %5416 ]
  %5479 = phi float [ %5472, %5445 ], [ %5422, %5416 ]
  %5480 = add nuw i32 %5423, 1
  %5481 = icmp eq i32 %5480, %5405
  br i1 %5481, label %5482, label %5416

; <label>:5482                                    ; preds = %5473
  br label %5483

; <label>:5483                                    ; preds = %5482, %5346
  %5484 = phi float [ 0.000000e+00, %5346 ], [ %5474, %5482 ]
  %5485 = phi float [ 0.000000e+00, %5346 ], [ %5475, %5482 ]
  %5486 = phi float [ 0.000000e+00, %5346 ], [ %5476, %5482 ]
  %5487 = phi float [ 0.000000e+00, %5346 ], [ %5477, %5482 ]
  %5488 = phi float [ 0.000000e+00, %5346 ], [ %5478, %5482 ]
  %5489 = phi float [ 0.000000e+00, %5346 ], [ %5479, %5482 ]
  %5490 = fadd fast float %5487, %5484
  %5491 = fmul fast float %5490, 0x3F847AE140000000
  %5492 = fadd fast float %5488, %5485
  %5493 = fmul fast float %5492, 0x3F847AE140000000
  %5494 = fadd fast float %5489, %5486
  %5495 = fmul fast float %5494, 0x3F847AE140000000
  br label %5496

; <label>:5496                                    ; preds = %5483, %5280, %5225, %5222, %5193, %5155
  %5497 = phi float [ %5207, %5193 ], [ -1.310720e+05, %5155 ], [ %5399, %5483 ], [ -1.310720e+05, %5225 ], [ -1.310720e+05, %5280 ], [ -1.310720e+05, %5222 ]
  %5498 = phi float [ %5217, %5193 ], [ 0.000000e+00, %5155 ], [ %5491, %5483 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5280 ], [ 0.000000e+00, %5222 ]
  %5499 = phi float [ %5219, %5193 ], [ 0.000000e+00, %5155 ], [ %5493, %5483 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5280 ], [ 0.000000e+00, %5222 ]
  %5500 = phi float [ %5221, %5193 ], [ 0.000000e+00, %5155 ], [ %5495, %5483 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5280 ], [ 0.000000e+00, %5222 ]
  %5501 = phi i1 [ true, %5193 ], [ false, %5155 ], [ true, %5483 ], [ false, %5225 ], [ false, %5280 ], [ false, %5222 ]
  %5502 = and i32 %193, 3
  %5503 = icmp eq i32 %5502, 1
  %5504 = select i1 %5503, float 1.000000e+00, float 0.000000e+00
  %5505 = fsub fast float %5497, %157
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = select i1 %5501, float %5506, float 1.000000e+00
  %5508 = fmul fast float %5507, %5504
  %5509 = icmp eq i32 %5502, 3
  %5510 = select i1 %5509, float 1.000000e+00, float %5508
  %5511 = call float @dx.op.binary.f32(i32 35, float %5069, float %5510)  ; FMax(a,b)
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fcmp fast une float %5512, 0.000000e+00
  %5514 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  br i1 %5513, label %5523, label %5516

; <label>:5516                                    ; preds = %5496
  %5517 = fmul fast float %5515, %155
  %5518 = fmul fast float %5515, %156
  %5519 = fmul fast float %5515, %157
  %5520 = fsub fast float -0.000000e+00, %5517
  %5521 = fsub fast float -0.000000e+00, %5518
  %5522 = fsub fast float -0.000000e+00, %5519
  br label %5691

; <label>:5523                                    ; preds = %5496
  %5524 = fmul fast float %155, %5515
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = fmul fast float %156, %5515
  %5527 = fsub fast float -0.000000e+00, %5526
  %5528 = fmul fast float %157, %5515
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5525, float %5527, float %5529, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %5512, 2.500000e+00
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5512, 0x4013FFFFE0000000
  %5534 = fadd fast float %5533, 0xBFFFFFFFE0000000
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fmul fast float %5512, 0x4004000020000000
  %5537 = fadd fast float %5536, 0xBFF8000040000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5540 = fmul fast float %5072, 1.000000e+01
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5541, 2.000000e+00
  %5543 = fsub fast float 3.000000e+00, %5542
  %5544 = fmul fast float %5541, %5541
  %5545 = fmul fast float %5544, %5543
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = fsub fast float 0x3FE3333340000000, %5093
  %5548 = fmul fast float %5547, 0x400AAAAAA0000000
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5546, %5549
  %5551 = fmul fast float %5130, 0x3FEA2B8620000000
  %5552 = fmul fast float %5131, 0x3FEA2B8620000000
  %5553 = fmul fast float %5132, 0x3FEA2B8620000000
  %5554 = fadd fast float %5551, 0x3FC81DFBA0000000
  %5555 = fmul fast float %5554, %5130
  %5556 = fadd fast float %5555, 0x3F910E6020000000
  %5557 = fadd fast float %5552, 0x3FC81DFBA0000000
  %5558 = fmul fast float %5557, %5131
  %5559 = fadd fast float %5558, 0x3F910E6020000000
  %5560 = fadd fast float %5553, 0x3FC81DFBA0000000
  %5561 = fmul fast float %5560, %5132
  %5562 = fadd fast float %5561, 0x3F910E6020000000
  %5563 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5565 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5566 = fsub fast float %5563, %5130
  %5567 = fsub fast float %5564, %5131
  %5568 = fsub fast float %5565, %5132
  %5569 = fmul fast float %5566, %5539
  %5570 = fmul fast float %5569, %5550
  %5571 = fmul fast float %5567, %5539
  %5572 = fmul fast float %5571, %5550
  %5573 = fmul fast float %5568, %5539
  %5574 = fmul fast float %5573, %5550
  %5575 = fadd fast float %5570, %5130
  %5576 = fadd fast float %5572, %5131
  %5577 = fadd fast float %5574, %5132
  %5578 = fmul fast float %5066, %5066
  %5579 = fmul fast float %5578, %5578
  %5580 = fadd fast float %5535, 1.000000e+00
  %5581 = fsub fast float %5580, %5550
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = fsub fast float 1.000000e+00, %5579
  %5586 = call float @dx.op.binary.f32(i32 36, float %5582, float %5585)  ; FMin(a,b)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5588 = call float @dx.op.binary.f32(i32 35, float %5586, float %5587)  ; FMax(a,b)
  %5589 = fadd fast float %5584, 0xBFE4CCCCC0000000
  %5590 = fmul fast float %5589, 0x4006DB6DA0000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = fmul fast float %5591, 2.000000e+00
  %5593 = fsub fast float 3.000000e+00, %5592
  %5594 = bitcast float %5090 to i32
  %5595 = ashr i32 %5594, 1
  %5596 = add nsw i32 %5595, 532487669
  %5597 = bitcast i32 %5596 to float
  %5598 = fsub fast float 1.000000e+00, %5597
  %5599 = bitcast float %5598 to i32
  %5600 = sub nsw i32 2129859010, %5599
  %5601 = bitcast i32 %5600 to float
  %5602 = fmul fast float %5601, 2.000000e+00
  %5603 = bitcast float %5091 to i32
  %5604 = ashr i32 %5603, 1
  %5605 = add nsw i32 %5604, 532487669
  %5606 = bitcast i32 %5605 to float
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = bitcast float %5607 to i32
  %5609 = sub nsw i32 2129859010, %5608
  %5610 = bitcast i32 %5609 to float
  %5611 = fmul fast float %5610, 2.000000e+00
  %5612 = bitcast float %5092 to i32
  %5613 = ashr i32 %5612, 1
  %5614 = add nsw i32 %5613, 532487669
  %5615 = bitcast i32 %5614 to float
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5619, 2.000000e+00
  %5621 = fsub fast float 0x4002A9FBE0000000, %5602
  %5622 = fadd fast float %5602, 0x3FD54FDF00000000
  %5623 = bitcast float %5622 to i32
  %5624 = sub nsw i32 2129859010, %5623
  %5625 = bitcast i32 %5624 to float
  %5626 = fmul fast float %5625, %5621
  %5627 = fmul fast float %5626, %5626
  %5628 = fsub fast float 0x4002A9FBE0000000, %5611
  %5629 = fadd fast float %5611, 0x3FD54FDF00000000
  %5630 = bitcast float %5629 to i32
  %5631 = sub nsw i32 2129859010, %5630
  %5632 = bitcast i32 %5631 to float
  %5633 = fmul fast float %5632, %5628
  %5634 = fmul fast float %5633, %5633
  %5635 = fsub fast float 0x4002A9FBE0000000, %5620
  %5636 = fadd fast float %5620, 0x3FD54FDF00000000
  %5637 = bitcast float %5636 to i32
  %5638 = sub nsw i32 2129859010, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5639, %5635
  %5641 = fmul fast float %5640, %5640
  %5642 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5627)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5634)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5641)  ; FMax(a,b)
  %5645 = fsub fast float 1.000000e+00, %5530
  %5646 = fadd fast float %5645, %5546
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fsub fast float 1.000000e+00, %5510
  %5649 = fmul fast float %5588, %5648
  %5650 = fmul fast float %5591, %5591
  %5651 = fmul fast float %5650, %5649
  %5652 = fmul fast float %5651, %5593
  %5653 = fmul fast float %5648, 0xBFE99999A0000000
  %5654 = fmul fast float %5653, %5539
  %5655 = fmul fast float %5654, %5550
  %5656 = fadd fast float %5655, 1.000000e+00
  %5657 = fadd fast float %5093, -1.000000e+00
  %5658 = fmul fast float %5656, %5657
  %5659 = fadd fast float %5658, 1.000000e+00
  %5660 = fsub fast float %5642, %5090
  %5661 = fsub fast float %5643, %5091
  %5662 = fsub fast float %5644, %5092
  %5663 = fmul fast float %5652, %5660
  %5664 = fmul fast float %5652, %5661
  %5665 = fmul fast float %5652, %5662
  %5666 = fadd fast float %5663, %5090
  %5667 = fadd fast float %5664, %5091
  %5668 = fadd fast float %5665, %5092
  %5669 = fsub fast float %107, %5048
  %5670 = fsub fast float %108, %5049
  %5671 = fsub fast float %109, %5050
  %5672 = fmul fast float %5652, %5669
  %5673 = fmul fast float %5652, %5670
  %5674 = fmul fast float %5652, %5671
  %5675 = fadd fast float %5672, %5048
  %5676 = fadd fast float %5673, %5049
  %5677 = fadd fast float %5674, %5050
  %5678 = fmul fast float %5652, %5647
  %5679 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5678, %5680
  %5682 = fadd fast float %5681, %5679
  %5683 = fsub fast float 1.000000e+00, %5066
  %5684 = fmul fast float %5652, %5683
  %5685 = fadd fast float %5684, %5066
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.unary.f32(i32 25, float %5686)  ; Rsqrt(value)
  %5688 = fmul fast float %5675, %5687
  %5689 = fmul fast float %5676, %5687
  %5690 = fmul fast float %5677, %5687
  br label %5691

; <label>:5691                                    ; preds = %5523, %5516
  %5692 = phi float [ %5522, %5516 ], [ %5529, %5523 ]
  %5693 = phi float [ %5521, %5516 ], [ %5527, %5523 ]
  %5694 = phi float [ %5520, %5516 ], [ %5525, %5523 ]
  %5695 = phi float [ %5519, %5516 ], [ %5528, %5523 ]
  %5696 = phi float [ %5518, %5516 ], [ %5526, %5523 ]
  %5697 = phi float [ %5517, %5516 ], [ %5524, %5523 ]
  %5698 = phi float [ %5130, %5516 ], [ %5575, %5523 ]
  %5699 = phi float [ %5131, %5516 ], [ %5576, %5523 ]
  %5700 = phi float [ %5132, %5516 ], [ %5577, %5523 ]
  %5701 = phi float [ %5090, %5516 ], [ %5666, %5523 ]
  %5702 = phi float [ %5091, %5516 ], [ %5667, %5523 ]
  %5703 = phi float [ %5092, %5516 ], [ %5668, %5523 ]
  %5704 = phi float [ %5048, %5516 ], [ %5688, %5523 ]
  %5705 = phi float [ %5049, %5516 ], [ %5689, %5523 ]
  %5706 = phi float [ %5050, %5516 ], [ %5690, %5523 ]
  %5707 = phi float [ %5093, %5516 ], [ %5682, %5523 ]
  %5708 = phi float [ %5066, %5516 ], [ %5685, %5523 ]
  %5709 = fsub fast float -0.000000e+00, %157
  %5710 = call float @dx.op.unary.f32(i32 84, float %91)  ; DerivCoarseY(value)
  %5711 = call float @dx.op.unary.f32(i32 6, float %5710)  ; FAbs(value)
  %5712 = call float @dx.op.unary.f32(i32 83, float %91)  ; DerivCoarseX(value)
  %5713 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5714 = call float @dx.op.binary.f32(i32 35, float %5713, float %5711)  ; FMax(a,b)
  %5715 = fcmp fast ogt float %90, 9.843750e-01
  %5716 = select i1 %217, float 0.000000e+00, float %5703
  %5717 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5694, float %5693, float %5692)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = fmul fast float %5719, 2.000000e+00
  %5721 = fmul fast float %5720, %5704
  %5722 = fmul fast float %5720, %5705
  %5723 = fmul fast float %5720, %5706
  %5724 = fsub fast float %5697, %5721
  %5725 = fsub fast float %5696, %5722
  %5726 = fsub fast float %5695, %5723
  %5727 = call float @dx.op.binary.f32(i32 36, float %5708, float 1.000000e+00)  ; FMin(a,b)
  %5728 = fsub fast float 1.000000e+00, %5708
  %5729 = bitcast float %5728 to i32
  %5730 = sub nsw i32 2129859010, %5729
  %5731 = bitcast i32 %5730 to float
  %5732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5733 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fcmp fast oeq float %5733, 0.000000e+00
  %5735 = fcmp fast oeq float %5732, 0.000000e+00
  %5736 = or i1 %5735, %5734
  br i1 %5736, label %5766, label %5737

; <label>:5737                                    ; preds = %5691
  %5738 = fsub fast float -0.000000e+00, %74
  %5739 = fsub fast float -0.000000e+00, %72
  %5740 = call float @dx.op.unary.f32(i32 24, float %5733)  ; Sqrt(value)
  %5741 = fdiv fast float %5740, %5732
  %5742 = fcmp fast ogt float %5741, 0x3FFB6F8900000000
  %5743 = select i1 %5742, float 0x3FFB6F8900000000, float %5741
  %5744 = fmul fast float %5743, 0x3FE8A23460000000
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5743, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5747 = fmul fast float %5745, %5732
  %5748 = fmul fast float %5746, 0x3FF279A740000000
  %5749 = fadd fast float %5748, -1.000000e+00
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %73, float %5738, float %5739, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5751, %5738
  %5753 = fmul fast float %5751, %5739
  %5754 = fmul fast float %5751, %73
  %5755 = fmul fast float %5749, %5749
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %5746, 0x40005F8BE0000000
  %5758 = fsub fast float 0x400C5BF8A0000000, %5757
  %5759 = fdiv fast float %5747, %5758
  %5760 = fmul fast float %5759, 0x3FEE31C3C0000000
  %5761 = fmul fast float %5760, %5756
  %5762 = fmul fast float %5746, 0x3FDACB7480000000
  %5763 = fadd fast float %5762, 0xBFD7347680000000
  %5764 = fmul fast float %5763, %5759
  %5765 = fmul fast float %5764, %5756
  br label %5766

; <label>:5766                                    ; preds = %5737, %5691
  %5767 = phi float [ %5752, %5737 ], [ 0.000000e+00, %5691 ]
  %5768 = phi float [ %5753, %5737 ], [ 0.000000e+00, %5691 ]
  %5769 = phi float [ %5754, %5737 ], [ 0.000000e+00, %5691 ]
  %5770 = phi float [ %5761, %5737 ], [ 0.000000e+00, %5691 ]
  %5771 = phi float [ %5765, %5737 ], [ 0.000000e+00, %5691 ]
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fmul fast float %5772, 0x3FDF454380000000
  %5774 = fmul fast float %5772, %5772
  %5775 = fmul fast float %5774, 0x3FEE471020000000
  %5776 = fadd fast float %5775, 0xBFD42F6020000000
  %5777 = fmul fast float %5732, 0x3FD20DD760000000
  %5778 = fmul fast float %5776, %5771
  %5779 = fadd fast float %5778, %5777
  %5780 = fmul fast float %5773, %5770
  %5781 = fadd fast float %5779, %5780
  %5782 = fsub fast float %5779, %5780
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = fmul fast float %5783, 0x3FDF454380000000
  %5785 = fmul fast float %5783, %5783
  %5786 = fmul fast float %5785, 0x3FEE471020000000
  %5787 = fadd fast float %5786, 0xBFD42F6020000000
  %5788 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5770, float %5771, float 0x3FD20DD760000000, float %5784, float %5787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5790 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fcmp fast oeq float %5790, 0.000000e+00
  %5792 = fcmp fast oeq float %5789, 0.000000e+00
  %5793 = or i1 %5792, %5791
  br i1 %5793, label %5823, label %5794

; <label>:5794                                    ; preds = %5766
  %5795 = fsub fast float -0.000000e+00, %70
  %5796 = fsub fast float -0.000000e+00, %68
  %5797 = call float @dx.op.unary.f32(i32 24, float %5790)  ; Sqrt(value)
  %5798 = fdiv fast float %5797, %5789
  %5799 = fcmp fast ogt float %5798, 0x3FFB6F8900000000
  %5800 = select i1 %5799, float 0x3FFB6F8900000000, float %5798
  %5801 = fmul fast float %5800, 0x3FE8A23460000000
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5804 = fmul fast float %5802, %5789
  %5805 = fmul fast float %5803, 0x3FF279A740000000
  %5806 = fadd fast float %5805, -1.000000e+00
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %69, float %5795, float %5796, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.unary.f32(i32 25, float %5807)  ; Rsqrt(value)
  %5809 = fmul fast float %5808, %5795
  %5810 = fmul fast float %5808, %5796
  %5811 = fmul fast float %5808, %69
  %5812 = fmul fast float %5806, %5806
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5803, 0x40005F8BE0000000
  %5815 = fsub fast float 0x400C5BF8A0000000, %5814
  %5816 = fdiv fast float %5804, %5815
  %5817 = fmul fast float %5816, 0x3FEE31C3C0000000
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %5803, 0x3FDACB7480000000
  %5820 = fadd fast float %5819, 0xBFD7347680000000
  %5821 = fmul fast float %5820, %5816
  %5822 = fmul fast float %5821, %5813
  br label %5823

; <label>:5823                                    ; preds = %5794, %5766
  %5824 = phi float [ %5809, %5794 ], [ 0.000000e+00, %5766 ]
  %5825 = phi float [ %5810, %5794 ], [ 0.000000e+00, %5766 ]
  %5826 = phi float [ %5811, %5794 ], [ 0.000000e+00, %5766 ]
  %5827 = phi float [ %5818, %5794 ], [ 0.000000e+00, %5766 ]
  %5828 = phi float [ %5822, %5794 ], [ 0.000000e+00, %5766 ]
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = fmul fast float %5829, 0x3FDF454380000000
  %5831 = fmul fast float %5829, %5829
  %5832 = fmul fast float %5831, 0x3FEE471020000000
  %5833 = fadd fast float %5832, 0xBFD42F6020000000
  %5834 = fmul fast float %5789, 0x3FD20DD760000000
  %5835 = fmul fast float %5833, %5828
  %5836 = fadd fast float %5835, %5834
  %5837 = fmul fast float %5830, %5827
  %5838 = fadd fast float %5836, %5837
  %5839 = fsub fast float %5836, %5837
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fmul fast float %5840, 0x3FDF454380000000
  %5842 = fmul fast float %5840, %5840
  %5843 = fmul fast float %5842, 0x3FEE471020000000
  %5844 = fadd fast float %5843, 0xBFD42F6020000000
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5827, float %5828, float 0x3FD20DD760000000, float %5841, float %5844)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5847 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fcmp fast oeq float %5847, 0.000000e+00
  %5849 = fcmp fast oeq float %5846, 0.000000e+00
  %5850 = or i1 %5849, %5848
  br i1 %5850, label %5880, label %5851

; <label>:5851                                    ; preds = %5823
  %5852 = fsub fast float -0.000000e+00, %66
  %5853 = fsub fast float -0.000000e+00, %64
  %5854 = call float @dx.op.unary.f32(i32 24, float %5847)  ; Sqrt(value)
  %5855 = fdiv fast float %5854, %5846
  %5856 = fcmp fast ogt float %5855, 0x3FFB6F8900000000
  %5857 = select i1 %5856, float 0x3FFB6F8900000000, float %5855
  %5858 = fmul fast float %5857, 0x3FE8A23460000000
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5857, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5861 = fmul fast float %5859, %5846
  %5862 = fmul fast float %5860, 0x3FF279A740000000
  %5863 = fadd fast float %5862, -1.000000e+00
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %65, float %5852, float %5853, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.unary.f32(i32 25, float %5864)  ; Rsqrt(value)
  %5866 = fmul fast float %5865, %5852
  %5867 = fmul fast float %5865, %5853
  %5868 = fmul fast float %5865, %65
  %5869 = fmul fast float %5863, %5863
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5860, 0x40005F8BE0000000
  %5872 = fsub fast float 0x400C5BF8A0000000, %5871
  %5873 = fdiv fast float %5861, %5872
  %5874 = fmul fast float %5873, 0x3FEE31C3C0000000
  %5875 = fmul fast float %5874, %5870
  %5876 = fmul fast float %5860, 0x3FDACB7480000000
  %5877 = fadd fast float %5876, 0xBFD7347680000000
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %5878, %5870
  br label %5880

; <label>:5880                                    ; preds = %5851, %5823
  %5881 = phi float [ %5866, %5851 ], [ 0.000000e+00, %5823 ]
  %5882 = phi float [ %5867, %5851 ], [ 0.000000e+00, %5823 ]
  %5883 = phi float [ %5868, %5851 ], [ 0.000000e+00, %5823 ]
  %5884 = phi float [ %5875, %5851 ], [ 0.000000e+00, %5823 ]
  %5885 = phi float [ %5879, %5851 ], [ 0.000000e+00, %5823 ]
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = fmul fast float %5886, 0x3FDF454380000000
  %5888 = fmul fast float %5886, %5886
  %5889 = fmul fast float %5888, 0x3FEE471020000000
  %5890 = fadd fast float %5889, 0xBFD42F6020000000
  %5891 = fmul fast float %5846, 0x3FD20DD760000000
  %5892 = fmul fast float %5890, %5885
  %5893 = fadd fast float %5892, %5891
  %5894 = fmul fast float %5887, %5884
  %5895 = fadd fast float %5893, %5894
  %5896 = fsub fast float %5893, %5894
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, 0x3FDF454380000000
  %5899 = fmul fast float %5897, %5897
  %5900 = fmul fast float %5899, 0x3FEE471020000000
  %5901 = fadd fast float %5900, 0xBFD42F6020000000
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5884, float %5885, float 0x3FD20DD760000000, float %5898, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5781, float 0.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5782, float 0.000000e+00)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5839, float 0.000000e+00)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5909 = call float @dx.op.binary.f32(i32 35, float %5788, float 0.000000e+00)  ; FMax(a,b)
  %5910 = call float @dx.op.binary.f32(i32 35, float %5845, float 0.000000e+00)  ; FMax(a,b)
  %5911 = call float @dx.op.binary.f32(i32 35, float %5902, float 0.000000e+00)  ; FMax(a,b)
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = call float @dx.op.binary.f32(i32 36, float %5698, float %5913)  ; FMin(a,b)
  %5915 = fsub fast float 1.000000e+00, %5727
  %5916 = fmul fast float %5914, %5915
  %5917 = fsub fast float 1.000000e+00, %5916
  %5918 = bitcast float %5917 to i32
  %5919 = sub nsw i32 2129859010, %5918
  %5920 = bitcast i32 %5919 to float
  %5921 = call float @dx.op.binary.f32(i32 36, float %5699, float %5913)  ; FMin(a,b)
  %5922 = fmul fast float %5921, %5915
  %5923 = fsub fast float 1.000000e+00, %5922
  %5924 = bitcast float %5923 to i32
  %5925 = sub nsw i32 2129859010, %5924
  %5926 = bitcast i32 %5925 to float
  %5927 = call float @dx.op.binary.f32(i32 36, float %5700, float %5913)  ; FMin(a,b)
  %5928 = fmul fast float %5927, %5915
  %5929 = fsub fast float 1.000000e+00, %5928
  %5930 = bitcast float %5929 to i32
  %5931 = sub nsw i32 2129859010, %5930
  %5932 = bitcast i32 %5931 to float
  %5933 = fmul fast float %5903, %5727
  %5934 = fmul fast float %5933, %5920
  %5935 = fmul fast float %5904, %5727
  %5936 = fmul fast float %5935, %5926
  %5937 = fmul fast float %5905, %5727
  %5938 = fmul fast float %5937, %5932
  %5939 = call float @dx.op.binary.f32(i32 36, float %5701, float %5913)  ; FMin(a,b)
  %5940 = fmul fast float %5939, %5915
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = bitcast float %5941 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = call float @dx.op.binary.f32(i32 36, float %5702, float %5913)  ; FMin(a,b)
  %5946 = fmul fast float %5945, %5915
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = call float @dx.op.binary.f32(i32 36, float %5716, float %5913)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5915
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = fmul fast float %5909, %5727
  %5958 = fmul fast float %5957, %5944
  %5959 = fmul fast float %5910, %5727
  %5960 = fmul fast float %5959, %5950
  %5961 = fmul fast float %5911, %5727
  %5962 = fmul fast float %5961, %5956
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5936, float %5938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = select i1 %217, float 0.000000e+00, float %5934
  %5965 = select i1 %217, float %5963, float %5936
  %5966 = select i1 %217, float 0.000000e+00, float %5938
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5907, float %5908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = select i1 %217, float 0.000000e+00, float %5906
  %5969 = select i1 %217, float %5967, float %5907
  %5970 = select i1 %217, float 0.000000e+00, float %5908
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5958, float %5960, float %5962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = select i1 %217, float 0.000000e+00, float %5958
  %5973 = select i1 %217, float %5971, float %5960
  %5974 = select i1 %217, float 0.000000e+00, float %5962
  %5975 = fmul fast float %4421, %4421
  %5976 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5977 = fmul fast float %5718, 9.843750e-01
  %5978 = fmul fast float %5707, 9.843750e-01
  %5979 = fadd fast float %5977, 7.812500e-03
  %5980 = fadd fast float %5978, 7.812500e-03
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5979, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = extractvalue %dx.types.ResRet.f32 %5981, 3
  %5986 = fsub fast float 1.000000e+00, %5976
  %5987 = fsub fast float %5984, %5982
  %5988 = fsub fast float %5985, %5983
  %5989 = fmul fast float %5987, %5986
  %5990 = fmul fast float %5988, %5986
  %5991 = fadd fast float %5989, %5982
  %5992 = fadd fast float %5990, %5983
  %5993 = fmul fast float %5991, %5701
  %5994 = fmul fast float %5991, %5702
  %5995 = fmul fast float %5991, %5716
  %5996 = fadd fast float %5993, %5992
  %5997 = fadd fast float %5994, %5992
  %5998 = fadd fast float %5995, %5992
  %5999 = fcmp fast ogt float %5067, 0.000000e+00
  br i1 %5999, label %6000, label %6026

; <label>:6000                                    ; preds = %5880
  %6001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %5718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = fadd fast float %6002, -5.000000e-01
  %6006 = fadd fast float %6003, -5.000000e-01
  %6007 = fadd fast float %6004, -5.000000e-01
  %6008 = fsub fast float 1.000000e+00, %5701
  %6009 = fsub fast float 1.000000e+00, %5702
  %6010 = fsub fast float 1.000000e+00, %5716
  %6011 = fmul fast float %5701, 4.000000e+00
  %6012 = fmul fast float %6011, %6008
  %6013 = fmul fast float %6012, %6005
  %6014 = fmul fast float %5702, 4.000000e+00
  %6015 = fmul fast float %6014, %6009
  %6016 = fmul fast float %6015, %6006
  %6017 = fmul fast float %5716, 4.000000e+00
  %6018 = fmul fast float %6017, %6010
  %6019 = fmul fast float %6018, %6007
  %6020 = fadd fast float %6013, %5996
  %6021 = fadd fast float %6016, %5997
  %6022 = fadd fast float %6019, %5998
  %6023 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6024 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  br label %6026

; <label>:6026                                    ; preds = %6000, %5880
  %6027 = phi float [ %6023, %6000 ], [ %5996, %5880 ]
  %6028 = phi float [ %6024, %6000 ], [ %5997, %5880 ]
  %6029 = phi float [ %6025, %6000 ], [ %5998, %5880 ]
  %6030 = call float @dx.op.binary.f32(i32 35, float %6028, float %6029)  ; FMax(a,b)
  %6031 = call float @dx.op.binary.f32(i32 35, float %6027, float %6030)  ; FMax(a,b)
  %6032 = fsub fast float 1.000000e+00, %6031
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fcmp fast ogt float %6033, 0x3E7FF19E20000000
  %6035 = fdiv fast float 1.000000e+00, %6033
  %6036 = select i1 %6034, float %6035, float 0.000000e+00
  %6037 = fmul fast float %6036, %5698
  %6038 = fmul fast float %6036, %5699
  %6039 = fmul fast float %6036, %5700
  %6040 = fadd fast float %6037, -1.000000e+00
  %6041 = fadd fast float %6038, -1.000000e+00
  %6042 = fadd fast float %6039, -1.000000e+00
  %6043 = fmul fast float %6040, 5.000000e-01
  %6044 = fmul fast float %6041, 5.000000e-01
  %6045 = fmul fast float %6042, 5.000000e-01
  %6046 = fadd fast float %6043, 1.000000e+00
  %6047 = fadd fast float %6044, 1.000000e+00
  %6048 = fadd fast float %6045, 1.000000e+00
  %6049 = call float @dx.op.binary.f32(i32 35, float %5718, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6050 = fdiv fast float %4421, %6049
  %6051 = fcmp fast olt float %5116, 1.270000e+02
  %6052 = fcmp fast olt float %5117, 1.270000e+02
  %6053 = fcmp fast olt float %5118, 1.270000e+02
  %6054 = fmul fast float %5116, 0xBFF7154760000000
  %6055 = fmul fast float %6054, %6050
  %6056 = fmul fast float %5117, 0xBFF7154760000000
  %6057 = fmul fast float %6056, %6050
  %6058 = fmul fast float %5118, 0xBFF7154760000000
  %6059 = fmul fast float %6058, %6050
  %6060 = call float @dx.op.unary.f32(i32 21, float %6055)  ; Exp(value)
  %6061 = call float @dx.op.unary.f32(i32 21, float %6057)  ; Exp(value)
  %6062 = call float @dx.op.unary.f32(i32 21, float %6059)  ; Exp(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  %6064 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = select i1 %6051, float %6063, float 0.000000e+00
  %6067 = select i1 %6052, float %6064, float 0.000000e+00
  %6068 = select i1 %6053, float %6065, float 0.000000e+00
  %6069 = fmul fast float %6066, %6032
  %6070 = fmul fast float %6067, %6032
  %6071 = fmul fast float %6068, %6032
  %6072 = fadd fast float %6069, -1.000000e+00
  %6073 = fadd fast float %6070, -1.000000e+00
  %6074 = fadd fast float %6071, -1.000000e+00
  %6075 = fmul fast float %6072, %5064
  %6076 = fmul fast float %6073, %5064
  %6077 = fmul fast float %6074, %5064
  %6078 = fmul fast float %6027, %5972
  %6079 = fmul fast float %6028, %5973
  %6080 = fmul fast float %6029, %5974
  %6081 = fsub fast float 1.000000e+00, %5718
  %6082 = bitcast float %6081 to i32
  %6083 = sitofp i32 %6082 to float
  %6084 = fmul fast float %6083, 5.000000e+00
  %6085 = fadd fast float %6084, 0xC1EFBF8940000000
  %6086 = fptosi float %6085 to i32
  %6087 = bitcast i32 %6086 to float
  %6088 = fmul fast float %6087, %5068
  %6089 = fmul fast float %5964, %6088
  %6090 = fmul fast float %6089, %6032
  %6091 = fmul fast float %6090, %6046
  %6092 = fmul fast float %5965, %6088
  %6093 = fmul fast float %6092, %6032
  %6094 = fmul fast float %6093, %6047
  %6095 = fmul fast float %5966, %6088
  %6096 = fmul fast float %6095, %6032
  %6097 = fmul fast float %6096, %6048
  %6098 = fadd fast float %6078, %5051
  %6099 = fadd fast float %6098, %6091
  %6100 = fmul fast float %6099, %5064
  %6101 = fadd fast float %6079, %5052
  %6102 = fadd fast float %6101, %6094
  %6103 = fmul fast float %6102, %5064
  %6104 = fadd fast float %6080, %5053
  %6105 = fadd fast float %6104, %6097
  %6106 = fmul fast float %6105, %5064
  %6107 = fmul fast float %5702, 0x4012D0A400000000
  %6108 = fadd fast float %6077, 1.000000e+00
  %6109 = fadd fast float %6076, 1.000000e+00
  %6110 = fadd fast float %6075, 1.000000e+00
  %6111 = fmul fast float %6032, %5966
  %6112 = fmul fast float %6032, %5965
  %6113 = fmul fast float %6032, %5964
  %6114 = fsub fast float 1.000000e+00, %5707
  %6115 = fmul fast float %6114, %5064
  %6116 = fsub fast float 1.000000e+00, %6115
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = fadd fast float %6107, 0x3FDB6377A0000000
  %6120 = fmul fast float %6118, %6119
  %6121 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = fadd fast float %6120, %6121
  %6123 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6124 = call float @dx.op.binary.f32(i32 35, float %6123, float 0x3F847AE140000000)  ; FMax(a,b)
  %6125 = fmul fast float %6124, %6124
  %6126 = fmul fast float %6125, %6125
  %6127 = fmul fast float %6126, 0xC00A935000000000
  %6128 = call float @dx.op.unary.f32(i32 21, float %6127)  ; Exp(value)
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = fmul fast float %6110, %5968
  %6131 = fmul fast float %6130, %6129
  %6132 = fmul fast float %6109, %5969
  %6133 = fmul fast float %6132, %6129
  %6134 = fmul fast float %6108, %5970
  %6135 = fmul fast float %6134, %6129
  %6136 = fadd fast float %6131, %6113
  %6137 = fmul fast float %6136, %5064
  %6138 = fadd fast float %6133, %6112
  %6139 = fmul fast float %6138, %5064
  %6140 = fadd fast float %6135, %6111
  %6141 = fmul fast float %6140, %5064
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6144 = fcmp fast oeq float %6143, 0.000000e+00
  br i1 %6144, label %7540, label %6145

; <label>:6145                                    ; preds = %6026
  %6146 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6156 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = select i1 %217, float %6154, float %6150
  %6158 = select i1 %217, float %6156, float %6151
  %6159 = select i1 %217, float %6155, float %6152
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6162 = fmul fast float %6161, %107
  %6163 = fmul fast float %6161, %108
  %6164 = fmul fast float %6161, %109
  %6165 = fadd fast float %6162, %155
  %6166 = fadd fast float %6163, %156
  %6167 = fadd fast float %6164, %157
  %6168 = fcmp fast olt float %6143, 0.000000e+00
  br i1 %6168, label %6793, label %6169

; <label>:6169                                    ; preds = %6145
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6172 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6173 = extractvalue %dx.types.CBufRet.f32 %6170, 2
  %6174 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = extractvalue %dx.types.CBufRet.f32 %6175, 3
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6184 = extractvalue %dx.types.CBufRet.f32 %6180, 3
  %6185 = fmul fast float %6171, %6165
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6172, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6173, float %6186)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6174
  %6189 = fmul fast float %6176, %6165
  %6190 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6177, float %6189)  ; FMad(a,b,c)
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6178, float %6190)  ; FMad(a,b,c)
  %6192 = fadd fast float %6191, %6179
  %6193 = fmul fast float %6181, %6165
  %6194 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6182, float %6193)  ; FMad(a,b,c)
  %6195 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6183, float %6194)  ; FMad(a,b,c)
  %6196 = fadd fast float %6195, %6184
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6201 = fmul fast float %6200, %6188
  %6202 = fmul fast float %6200, %6192
  %6203 = fadd fast float %6201, %6198
  %6204 = fadd fast float %6202, %6199
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6209 = fmul fast float %6208, %6188
  %6210 = fmul fast float %6208, %6192
  %6211 = fadd fast float %6209, %6206
  %6212 = fadd fast float %6210, %6207
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6215 = fsub fast float %6214, %6196
  %6216 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6217 = fmul fast float %6215, %6216
  %6218 = fsub fast float 1.000000e+00, %6217
  %6219 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6223 = fadd fast float %6222, %6220
  %6224 = fcmp fast ogt float %6223, 0.000000e+00
  br i1 %6224, label %6225, label %6249

; <label>:6225                                    ; preds = %6169
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = fsub fast float %6211, %6227
  %6230 = fsub fast float %6212, %6228
  %6231 = fcmp fast olt float %6229, 0.000000e+00
  %6232 = fcmp fast olt float %6230, 0.000000e+00
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6238 = select i1 %6231, float %6234, float %6236
  %6239 = select i1 %6232, float %6235, float %6237
  %6240 = fmul fast float %6238, %6229
  %6241 = fmul fast float %6239, %6230
  %6242 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6243 = call float @dx.op.unary.f32(i32 6, float %6241)  ; FAbs(value)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6245 = call float @dx.op.binary.f32(i32 35, float %6242, float %6243)  ; FMax(a,b)
  %6246 = fsub fast float %6244, %6245
  %6247 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6248 = fmul fast float %6247, %6219
  br label %6249

; <label>:6249                                    ; preds = %6225, %6169
  %6250 = phi float [ %6248, %6225 ], [ 0.000000e+00, %6169 ]
  %6251 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6252 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6253 = fadd fast float %6252, %6251
  %6254 = fcmp fast ogt float %6253, 0.000000e+00
  %6255 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  br i1 %6254, label %6256, label %6279

; <label>:6256                                    ; preds = %6249
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = fsub fast float %6203, %6258
  %6261 = fsub fast float %6204, %6259
  %6262 = fcmp fast olt float %6260, 0.000000e+00
  %6263 = fcmp fast olt float %6261, 0.000000e+00
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = select i1 %6262, float %6265, float %6267
  %6270 = select i1 %6263, float %6266, float %6268
  %6271 = fmul fast float %6269, %6260
  %6272 = fmul fast float %6270, %6261
  %6273 = call float @dx.op.unary.f32(i32 6, float %6271)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6273, float %6274)  ; FMax(a,b)
  %6276 = fsub fast float %6255, %6275
  %6277 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6278 = fmul fast float %6277, %6219
  br label %6279

; <label>:6279                                    ; preds = %6256, %6249
  %6280 = phi float [ %6278, %6256 ], [ 0.000000e+00, %6249 ]
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = fsub fast float %6188, %6285
  %6288 = fsub fast float %6192, %6286
  %6289 = fcmp fast olt float %6287, 0.000000e+00
  %6290 = fcmp fast olt float %6288, 0.000000e+00
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6296 = select i1 %6289, float %6292, float %6294
  %6297 = select i1 %6290, float %6293, float %6295
  %6298 = fmul fast float %6296, %6287
  %6299 = fmul fast float %6297, %6288
  %6300 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6301 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6300, float %6301)  ; FMax(a,b)
  %6303 = fsub fast float %6255, %6302
  %6304 = call float @dx.op.unary.f32(i32 7, float %6303)  ; Saturate(value)
  %6305 = call float @dx.op.binary.f32(i32 36, float %6304, float %6283)  ; FMin(a,b)
  %6306 = fmul fast float %6305, %6219
  %6307 = fsub fast float %6280, %6306
  %6308 = fsub fast float %6250, %6280
  %6309 = fsub fast float %6308, %6306
  %6310 = call float @dx.op.binary.f32(i32 35, float %6306, float %6280)  ; FMax(a,b)
  %6311 = call float @dx.op.binary.f32(i32 35, float %6310, float %6250)  ; FMax(a,b)
  %6312 = fcmp fast olt float %6311, 1.000000e+00
  br i1 %6312, label %6313, label %6711, !dx.controlflow.hints !92

; <label>:6313                                    ; preds = %6279
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = fcmp fast une float %6315, 0.000000e+00
  br i1 %6316, label %6317, label %6711, !dx.controlflow.hints !93

; <label>:6317                                    ; preds = %6313
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6322 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6323, 2
  %6327 = extractvalue %dx.types.CBufRet.f32 %6323, 3
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.CBufRet.f32 %6328, 2
  %6332 = extractvalue %dx.types.CBufRet.f32 %6328, 3
  %6333 = fmul fast float %6319, %6165
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6320, float %6333)  ; FMad(a,b,c)
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6321, float %6334)  ; FMad(a,b,c)
  %6336 = fadd fast float %6335, %6322
  %6337 = fmul fast float %6324, %6165
  %6338 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6325, float %6337)  ; FMad(a,b,c)
  %6339 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6326, float %6338)  ; FMad(a,b,c)
  %6340 = fadd fast float %6339, %6327
  %6341 = fmul fast float %6329, %6165
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6330, float %6341)  ; FMad(a,b,c)
  %6343 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6331, float %6342)  ; FMad(a,b,c)
  %6344 = fadd fast float %6343, %6332
  %6345 = fcmp fast oge float %6336, 1.000000e+00
  %6346 = fcmp fast oge float %6340, 1.000000e+00
  %6347 = or i1 %6345, %6346
  %6348 = fcmp fast olt float %6336, 0.000000e+00
  %6349 = fcmp fast olt float %6340, 0.000000e+00
  %6350 = or i1 %6348, %6349
  %6351 = or i1 %6347, %6350
  br i1 %6351, label %6711, label %6352, !dx.controlflow.hints !94

; <label>:6352                                    ; preds = %6317
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.i32 %6357, 2
  %6359 = uitofp i32 %6358 to float
  %6360 = extractvalue %dx.types.CBufRet.i32 %6357, 3
  %6361 = uitofp i32 %6360 to float
  %6362 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6363 = fmul fast float %6362, 2.000000e+00
  %6364 = fsub fast float %6336, %6354
  %6365 = fsub fast float %6340, %6355
  %6366 = fmul fast float %6363, %6364
  %6367 = fmul fast float %6363, %6365
  %6368 = fdiv fast float 1.000000e+00, %6148
  %6369 = fmul fast float %6367, %6368
  %6370 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6371 = fmul fast float %6356, %6167
  %6372 = fmul fast float %6371, %6363
  %6373 = call float @dx.op.unary.f32(i32 6, float %6372)  ; FAbs(value)
  %6374 = call float @dx.op.unary.f32(i32 6, float %6366)  ; FAbs(value)
  %6375 = call float @dx.op.binary.f32(i32 35, float %6374, float %6373)  ; FMax(a,b)
  %6376 = call float @dx.op.binary.f32(i32 35, float %6375, float %6370)  ; FMax(a,b)
  %6377 = fmul fast float %6376, 2.000000e+00
  %6378 = call float @dx.op.unary.f32(i32 23, float %6377)  ; Log(value)
  %6379 = call float @dx.op.binary.f32(i32 35, float %6378, float %6359)  ; FMax(a,b)
  %6380 = call float @dx.op.unary.f32(i32 22, float %6379)  ; Frc(value)
  %6381 = fadd fast float %6380, 0xBFEA666660000000
  %6382 = fmul fast float %6381, 8.000000e+00
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = call float @dx.op.unary.f32(i32 27, float %6379)  ; Round_ni(value)
  %6385 = fadd fast float %6384, %6383
  %6386 = call float @dx.op.binary.f32(i32 36, float %6385, float %6361)  ; FMin(a,b)
  %6387 = call float @dx.op.unary.f32(i32 27, float %6386)  ; Round_ni(value)
  %6388 = fsub fast float -0.000000e+00, %6387
  %6389 = call float @dx.op.unary.f32(i32 21, float %6388)  ; Exp(value)
  %6390 = fmul fast float %6389, %6363
  %6391 = fmul fast float %6390, %6336
  %6392 = fmul fast float %6390, %6340
  %6393 = fmul fast float %6391, 2.500000e-01
  %6394 = fmul fast float %6392, 2.500000e-01
  %6395 = fadd fast float %6393, 5.000000e-01
  %6396 = fadd fast float %6394, 5.000000e-01
  %6397 = fsub fast float %6361, %6359
  %6398 = fptoui float %6397 to i32
  %6399 = add i32 %6398, 320
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6399)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = fcmp fast une float %6386, %6361
  %6404 = fsub fast float %6336, %6401
  %6405 = fsub fast float %6340, %6402
  %6406 = call float @dx.op.unary.f32(i32 6, float %6404)  ; FAbs(value)
  %6407 = call float @dx.op.unary.f32(i32 6, float %6405)  ; FAbs(value)
  %6408 = fmul fast float %6406, %6390
  %6409 = fmul fast float %6407, %6390
  %6410 = fcmp fast olt float %6408, 1.000000e+00
  %6411 = fcmp fast olt float %6409, 1.000000e+00
  %6412 = and i1 %6410, %6411
  %6413 = or i1 %6403, %6412
  br i1 %6413, label %6414, label %6711, !dx.controlflow.hints !95

; <label>:6414                                    ; preds = %6352
  %6415 = fmul fast float %6392, 5.000000e-01
  %6416 = fmul fast float %6391, 5.000000e-01
  %6417 = fadd fast float %6415, 5.000000e-01
  %6418 = fadd fast float %6416, 5.000000e-01
  %6419 = sitofp i32 %6358 to float
  %6420 = fsub fast float %6386, %6419
  %6421 = call float @dx.op.unary.f32(i32 27, float %6420)  ; Round_ni(value)
  %6422 = call float @dx.op.unary.f32(i32 22, float %6386)  ; Frc(value)
  %6423 = call float @dx.op.unary.f32(i32 22, float %6418)  ; Frc(value)
  %6424 = call float @dx.op.unary.f32(i32 22, float %6417)  ; Frc(value)
  %6425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6423, float %6424, float %6421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6426 = extractvalue %dx.types.ResRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.ResRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.ResRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.ResRet.f32 %6425, 3
  %6430 = fcmp fast ogt float %6422, 0.000000e+00
  br i1 %6430, label %6431, label %6452, !dx.controlflow.hints !96

; <label>:6431                                    ; preds = %6414
  %6432 = fadd fast float %6421, 1.000000e+00
  %6433 = call float @dx.op.unary.f32(i32 22, float %6395)  ; Frc(value)
  %6434 = call float @dx.op.unary.f32(i32 22, float %6396)  ; Frc(value)
  %6435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6433, float %6434, float %6432, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6436 = extractvalue %dx.types.ResRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.ResRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.ResRet.f32 %6435, 2
  %6439 = extractvalue %dx.types.ResRet.f32 %6435, 3
  %6440 = fsub fast float %6436, %6426
  %6441 = fsub fast float %6437, %6427
  %6442 = fsub fast float %6438, %6428
  %6443 = fsub fast float %6439, %6429
  %6444 = fmul fast float %6440, %6422
  %6445 = fmul fast float %6441, %6422
  %6446 = fmul fast float %6442, %6422
  %6447 = fmul fast float %6443, %6422
  %6448 = fadd fast float %6444, %6426
  %6449 = fadd fast float %6445, %6427
  %6450 = fadd fast float %6446, %6428
  %6451 = fadd fast float %6447, %6429
  br label %6452

; <label>:6452                                    ; preds = %6431, %6414
  %6453 = phi float [ %6448, %6431 ], [ %6426, %6414 ]
  %6454 = phi float [ %6449, %6431 ], [ %6427, %6414 ]
  %6455 = phi float [ %6450, %6431 ], [ %6428, %6414 ]
  %6456 = phi float [ %6451, %6431 ], [ %6429, %6414 ]
  %6457 = fadd fast float %6453, -5.000000e-01
  %6458 = fadd fast float %6455, -5.000000e-01
  %6459 = fmul fast float %6457, 0xBFD5555560000000
  %6460 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6458, float %6459)  ; FMad(a,b,c)
  %6461 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6454, float 0.000000e+00)  ; FMad(a,b,c)
  %6462 = fadd fast float %6461, %6456
  %6463 = fmul fast float %6457, -7.500000e-01
  %6464 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6458, float %6463)  ; FMad(a,b,c)
  %6465 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6454, float 0.000000e+00)  ; FMad(a,b,c)
  %6466 = fadd fast float %6465, %6456
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.CBufRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6473 = extractvalue %dx.types.CBufRet.f32 %6469, 3
  %6474 = fsub fast float %6470, %6460
  %6475 = fsub fast float %6471, %6462
  %6476 = fsub fast float %6472, %6464
  %6477 = fsub fast float %6473, %6466
  %6478 = fmul fast float %6474, %6468
  %6479 = fmul fast float %6475, %6468
  %6480 = fmul fast float %6476, %6468
  %6481 = fmul fast float %6477, %6468
  %6482 = fadd fast float %6478, %6460
  %6483 = fadd fast float %6479, %6462
  %6484 = fadd fast float %6480, %6464
  %6485 = fadd fast float %6481, %6466
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = and i32 %6487, 536870911
  %6489 = uitofp i32 %6488 to float
  %6490 = fmul fast float %6489, %6336
  %6491 = fmul fast float %6489, %6340
  %6492 = fptoui float %6490 to i32
  %6493 = fptoui float %6491 to i32
  %6494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6495 = extractvalue %dx.types.ResRet.i32 %6494, 0
  %6496 = and i32 %6495, 31
  %6497 = lshr i32 %6492, %6496
  %6498 = lshr i32 %6493, %6496
  %6499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6500 = extractvalue %dx.types.ResRet.i32 %6499, 0
  %6501 = and i32 %6500, 31
  %6502 = shl i32 1, %6501
  %6503 = call i32 @dx.op.binary.i32(i32 40, i32 %6502, i32 4)  ; UMin(a,b)
  %6504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6505 = extractvalue %dx.types.ResRet.i32 %6504, 0
  %6506 = extractvalue %dx.types.ResRet.i32 %6504, 1
  %6507 = icmp eq i32 %6503, 0
  br i1 %6507, label %6549, label %6508

; <label>:6508                                    ; preds = %6452
  br label %6509

; <label>:6509                                    ; preds = %6537, %6508
  %6510 = phi i32 [ %6540, %6537 ], [ 0, %6508 ]
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = lshr i32 %6512, 16
  %6514 = and i32 %6513, 31
  %6515 = shl i32 %6498, %6514
  %6516 = add i32 %6515, %6497
  %6517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6518 = extractvalue %dx.types.ResRet.i32 %6517, 0
  %6519 = and i32 %6518, 31
  %6520 = shl i32 %6516, %6519
  %6521 = add i32 %6520, %6510
  %6522 = shl i32 %6521, 2
  %6523 = add i32 %6522, 32
  %6524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6523, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.i32 %6524, 0
  %6526 = icmp slt i32 %6525, 0
  %6527 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6510
  %6528 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6510
  %6529 = bitcast float* %6527 to i32*
  %6530 = bitcast float* %6528 to i32*
  br i1 %6526, label %6531, label %6537

; <label>:6531                                    ; preds = %6509
  %6532 = and i32 %6525, 1073741823
  %6533 = add nuw nsw i32 %6532, 20
  %6534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6533, i32 undef)  ; BufferLoad(srv,index,wot)
  %6535 = extractvalue %dx.types.ResRet.i32 %6534, 0
  %6536 = extractvalue %dx.types.ResRet.i32 %6534, 1
  br label %6537

; <label>:6537                                    ; preds = %6531, %6509
  %6538 = phi i32 [ %6535, %6531 ], [ %6505, %6509 ]
  %6539 = phi i32 [ %6536, %6531 ], [ %6506, %6509 ]
  store i32 %6538, i32* %6529, align 4
  store i32 %6539, i32* %6530, align 4
  %6540 = add nuw i32 %6510, 1
  %6541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.i32 %6541, 2
  %6543 = icmp eq i32 %6542, 0
  %6544 = icmp ugt i32 %6525, -1073741825
  %6545 = and i1 %6544, %6543
  %6546 = icmp ult i32 %6540, %6503
  %6547 = and i1 %6545, %6546
  br i1 %6547, label %6509, label %6548

; <label>:6548                                    ; preds = %6537
  br label %6549

; <label>:6549                                    ; preds = %6548, %6452
  %6550 = phi i32 [ 0, %6452 ], [ %6540, %6548 ]
  %6551 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6552 = fptoui float %6551 to i32
  %6553 = icmp eq i32 %6552, 0
  br i1 %6553, label %6605, label %6554

; <label>:6554                                    ; preds = %6549
  br label %6555

; <label>:6555                                    ; preds = %6600, %6554
  %6556 = phi i32 [ %6601, %6600 ], [ %6550, %6554 ]
  %6557 = phi i32 [ %6602, %6600 ], [ 0, %6554 ]
  %6558 = lshr i32 %6557, 2
  %6559 = and i32 %6557, 3
  %6560 = add nuw nsw i32 %6558, 83
  %6561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6560)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.i32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.i32 %6561, 1
  %6564 = extractvalue %dx.types.CBufRet.i32 %6561, 2
  %6565 = extractvalue %dx.types.CBufRet.i32 %6561, 3
  %6566 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6562, i32* %6566, align 4
  %6567 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6563, i32* %6567, align 4
  %6568 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6564, i32* %6568, align 4
  %6569 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6565, i32* %6569, align 4
  %6570 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6559
  %6571 = load i32, i32* %6570, align 4, !tbaa !97, !noalias !101
  %6572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6573 = extractvalue %dx.types.ResRet.i32 %6572, 0
  %6574 = lshr i32 %6573, 16
  %6575 = and i32 %6574, 31
  %6576 = shl i32 %6498, %6575
  %6577 = add i32 %6576, %6497
  %6578 = shl i32 %6577, 2
  %6579 = add i32 %6578, %6571
  %6580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6579, i32 undef)  ; BufferLoad(srv,index,wot)
  %6581 = extractvalue %dx.types.ResRet.i32 %6580, 0
  %6582 = icmp eq i32 %6581, 0
  br i1 %6582, label %6600, label %6583

; <label>:6583                                    ; preds = %6555
  %6584 = icmp slt i32 %6581, 0
  %6585 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6556
  %6586 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6556
  %6587 = bitcast float* %6585 to i32*
  %6588 = bitcast float* %6586 to i32*
  br i1 %6584, label %6589, label %6596

; <label>:6589                                    ; preds = %6583
  %6590 = and i32 %6581, 1073741823
  %6591 = add i32 %6571, 20
  %6592 = add i32 %6591, %6590
  %6593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6592, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.i32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.i32 %6593, 1
  br label %6596

; <label>:6596                                    ; preds = %6589, %6583
  %6597 = phi i32 [ %6594, %6589 ], [ %6505, %6583 ]
  %6598 = phi i32 [ %6595, %6589 ], [ %6506, %6583 ]
  store i32 %6597, i32* %6587, align 4
  store i32 %6598, i32* %6588, align 4
  %6599 = add i32 %6556, 1
  br label %6600

; <label>:6600                                    ; preds = %6596, %6555
  %6601 = phi i32 [ %6556, %6555 ], [ %6599, %6596 ]
  %6602 = add nuw i32 %6557, 1
  %6603 = icmp eq i32 %6602, %6552
  br i1 %6603, label %6604, label %6555

; <label>:6604                                    ; preds = %6600
  br label %6605

; <label>:6605                                    ; preds = %6604, %6549
  %6606 = phi i32 [ %6550, %6549 ], [ %6601, %6604 ]
  %6607 = icmp eq i32 %6606, 1
  %6608 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6609 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6607, label %6610, label %6613

; <label>:6610                                    ; preds = %6605
  %6611 = load float, float* %6608, align 4
  %6612 = load float, float* %6609, align 4
  br label %6640

; <label>:6613                                    ; preds = %6605
  %6614 = load float, float* %6608, align 4
  %6615 = load float, float* %6609, align 4
  %6616 = fdiv fast float 1.000000e+00, %6615
  %6617 = fsub fast float %6614, %6616
  %6618 = icmp ugt i32 %6606, 1
  br i1 %6618, label %6619, label %6635

; <label>:6619                                    ; preds = %6613
  br label %6620

; <label>:6620                                    ; preds = %6620, %6619
  %6621 = phi float [ %6630, %6620 ], [ %6617, %6619 ]
  %6622 = phi float [ %6631, %6620 ], [ %6614, %6619 ]
  %6623 = phi i32 [ %6632, %6620 ], [ 1, %6619 ]
  %6624 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6623
  %6625 = load float, float* %6624, align 4
  %6626 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6623
  %6627 = load float, float* %6626, align 4
  %6628 = fdiv fast float 1.000000e+00, %6627
  %6629 = fsub fast float %6625, %6628
  %6630 = call float @dx.op.binary.f32(i32 36, float %6621, float %6629)  ; FMin(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float %6622, float %6625)  ; FMax(a,b)
  %6632 = add nuw i32 %6623, 1
  %6633 = icmp eq i32 %6632, %6606
  br i1 %6633, label %6634, label %6620

; <label>:6634                                    ; preds = %6620
  br label %6635

; <label>:6635                                    ; preds = %6634, %6613
  %6636 = phi float [ %6617, %6613 ], [ %6630, %6634 ]
  %6637 = phi float [ %6614, %6613 ], [ %6631, %6634 ]
  %6638 = fsub fast float %6637, %6636
  %6639 = fdiv fast float 1.000000e+00, %6638
  br label %6640

; <label>:6640                                    ; preds = %6635, %6610
  %6641 = phi float [ %6611, %6610 ], [ %6637, %6635 ]
  %6642 = phi float [ %6612, %6610 ], [ %6639, %6635 ]
  %6643 = fadd fast float %6344, %6641
  %6644 = fmul fast float %6643, %6642
  %6645 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6646 = fmul fast float %6645, 2.000000e+00
  %6647 = fsub fast float 1.000000e+00, %6646
  %6648 = fmul fast float %6482, %6482
  %6649 = fsub fast float %6483, %6648
  %6650 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6649)  ; FMax(a,b)
  %6651 = fdiv fast float 1.000000e+00, %6650
  %6652 = fmul fast float %6483, %6482
  %6653 = fsub fast float %6484, %6652
  %6654 = fsub fast float %6647, %6482
  %6655 = fmul fast float %6647, %6647
  %6656 = fsub fast float %6655, %6483
  %6657 = fmul fast float %6651, %6653
  %6658 = fmul fast float %6657, %6654
  %6659 = fsub fast float %6656, %6658
  %6660 = fmul fast float %6483, %6483
  %6661 = fsub fast float %6485, %6660
  %6662 = fmul fast float %6653, %6653
  %6663 = fmul fast float %6662, %6651
  %6664 = fsub fast float %6661, %6663
  %6665 = fdiv fast float %6659, %6664
  %6666 = fmul fast float %6665, %6653
  %6667 = fsub fast float %6654, %6666
  %6668 = fmul fast float %6667, %6651
  %6669 = fmul fast float %6668, %6482
  %6670 = fsub fast float 1.000000e+00, %6669
  %6671 = fmul fast float %6665, %6483
  %6672 = fsub fast float %6670, %6671
  %6673 = fmul fast float %6668, %6668
  %6674 = fmul fast float %6665, 4.000000e+00
  %6675 = fmul fast float %6674, %6672
  %6676 = fsub fast float %6673, %6675
  %6677 = call float @dx.op.unary.f32(i32 24, float %6676)  ; Sqrt(value)
  %6678 = fcmp fast oge float %6668, 0.000000e+00
  %6679 = fsub fast float -0.000000e+00, %6677
  %6680 = select i1 %6678, float %6679, float %6677
  %6681 = fsub fast float %6680, %6668
  %6682 = fdiv fast float %6681, %6665
  %6683 = fdiv fast float %6672, %6681
  %6684 = fmul fast float %6682, 5.000000e-01
  %6685 = fmul fast float %6683, 2.000000e+00
  %6686 = select i1 %6678, float %6684, float %6685
  %6687 = select i1 %6678, float %6685, float %6684
  %6688 = call float @dx.op.binary.f32(i32 35, float %6686, float %6687)  ; FMax(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6686, float %6687)  ; FMin(a,b)
  %6690 = fcmp fast ogt float %6647, %6688
  %6691 = fsub fast float %6647, %6689
  %6692 = fsub fast float %6647, %6688
  %6693 = fsub fast float %6688, %6689
  %6694 = select i1 %6690, float %6692, float %6693
  %6695 = fmul float %6691, %6694
  %6696 = select i1 %6690, float %6689, float %6647
  %6697 = fcmp fast ogt float %6647, %6689
  %6698 = fmul fast float %6696, %6688
  %6699 = fadd fast float %6696, %6688
  %6700 = fmul fast float %6699, %6482
  %6701 = fadd fast float %6698, %6483
  %6702 = fsub fast float %6701, %6700
  %6703 = fdiv fast float %6702, %6695
  %6704 = select i1 %6697, float %6703, float 0.000000e+00
  %6705 = fsub fast float 1.000000e+00, %6704
  %6706 = select i1 %6690, float %6705, float %6704
  %6707 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6709 = fmul fast float %6708, %6707
  %6710 = fsub fast float 1.000000e+00, %6709
  br label %6711

; <label>:6711                                    ; preds = %6640, %6352, %6317, %6313, %6279
  %6712 = phi float [ 1.000000e+00, %6279 ], [ %6710, %6640 ], [ 1.000000e+00, %6317 ], [ 1.000000e+00, %6352 ], [ 1.000000e+00, %6313 ]
  %6713 = fcmp fast ogt float %6309, 0.000000e+00
  br i1 %6713, label %6714, label %6720, !dx.controlflow.hints !110

; <label>:6714                                    ; preds = %6711
  %6715 = fadd fast float %6222, %6196
  %6716 = call float @dx.op.binary.f32(i32 35, float %6715, float 0.000000e+00)  ; FMax(a,b)
  %6717 = fadd fast float %6716, 0x3F10000000000000
  %6718 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6211, float %6212, float undef, float undef, i32 0, i32 0, i32 undef, float %6717)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  br label %6720

; <label>:6720                                    ; preds = %6714, %6711
  %6721 = phi float [ %6719, %6714 ], [ 1.000000e+00, %6711 ]
  %6722 = fcmp fast ogt float %6307, 0.000000e+00
  br i1 %6722, label %6723, label %6729, !dx.controlflow.hints !111

; <label>:6723                                    ; preds = %6720
  %6724 = fadd fast float %6252, %6196
  %6725 = call float @dx.op.binary.f32(i32 35, float %6724, float 0.000000e+00)  ; FMax(a,b)
  %6726 = fadd fast float %6725, 0x3F10000000000000
  %6727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6203, float %6204, float undef, float undef, i32 0, i32 0, i32 undef, float %6726)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  br label %6729

; <label>:6729                                    ; preds = %6723, %6720
  %6730 = phi float [ %6728, %6723 ], [ 1.000000e+00, %6720 ]
  %6731 = fcmp fast ogt float %6306, 0.000000e+00
  br i1 %6731, label %6732, label %6739, !dx.controlflow.hints !112

; <label>:6732                                    ; preds = %6729
  %6733 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6734 = fadd fast float %6733, %6196
  %6735 = call float @dx.op.binary.f32(i32 35, float %6734, float 0.000000e+00)  ; FMax(a,b)
  %6736 = fadd fast float %6735, 0x3F10000000000000
  %6737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6188, float %6192, float undef, float undef, i32 0, i32 0, i32 undef, float %6736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  br label %6739

; <label>:6739                                    ; preds = %6732, %6729
  %6740 = phi float [ %6738, %6732 ], [ 1.000000e+00, %6729 ]
  %6741 = fsub fast float %6721, %6712
  %6742 = fmul fast float %6741, %6250
  %6743 = fadd fast float %6742, %6712
  %6744 = fsub fast float %6730, %6743
  %6745 = fmul fast float %6744, %6280
  %6746 = fadd fast float %6745, %6743
  %6747 = fsub fast float %6740, %6746
  %6748 = fmul fast float %6747, %6306
  %6749 = fadd fast float %6748, %6746
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 2
  %6752 = fcmp fast ogt float %6751, 0.000000e+00
  br i1 %6752, label %6753, label %6793, !dx.controlflow.hints !113

; <label>:6753                                    ; preds = %6739
  %6754 = fcmp fast ugt float %6751, 0.000000e+00
  br i1 %6754, label %6755, label %6790

; <label>:6755                                    ; preds = %6753
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6759 = extractvalue %dx.types.CBufRet.f32 %6756, 2
  %6760 = extractvalue %dx.types.CBufRet.f32 %6756, 3
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6765 = extractvalue %dx.types.CBufRet.f32 %6761, 3
  %6766 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6750, 1
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.CBufRet.f32 %6768, 2
  %6772 = fadd fast float %6769, %6165
  %6773 = fadd fast float %6770, %6166
  %6774 = fadd fast float %6771, %6167
  %6775 = fmul fast float %6772, %6757
  %6776 = call float @dx.op.tertiary.f32(i32 46, float %6758, float %6773, float %6775)  ; FMad(a,b,c)
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6759, float %6774, float %6776)  ; FMad(a,b,c)
  %6778 = fadd fast float %6777, %6760
  %6779 = fmul fast float %6772, %6762
  %6780 = call float @dx.op.tertiary.f32(i32 46, float %6763, float %6773, float %6779)  ; FMad(a,b,c)
  %6781 = call float @dx.op.tertiary.f32(i32 46, float %6764, float %6774, float %6780)  ; FMad(a,b,c)
  %6782 = fadd fast float %6781, %6765
  %6783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6778, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 0
  %6785 = fmul fast float %6784, %6767
  %6786 = fadd fast float %6785, %6766
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, %6751
  %6789 = fsub fast float 1.000000e+00, %6788
  br label %6790

; <label>:6790                                    ; preds = %6755, %6753
  %6791 = phi float [ %6789, %6755 ], [ 1.000000e+00, %6753 ]
  %6792 = fmul fast float %6791, %6749
  br label %6793

; <label>:6793                                    ; preds = %6790, %6739, %6145
  %6794 = phi float [ 1.000000e+00, %6145 ], [ %6792, %6790 ], [ %6749, %6739 ]
  %6795 = call float @dx.op.binary.f32(i32 36, float %6794, float %6794)  ; FMin(a,b)
  %6796 = call float @dx.op.binary.f32(i32 36, float %6794, float %6795)  ; FMin(a,b)
  %6797 = fcmp fast ogt float %6796, 0.000000e+00
  br i1 %6797, label %6798, label %7149, !dx.controlflow.hints !114

; <label>:6798                                    ; preds = %6793
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.CBufRet.f32 %6799, 1
  %6802 = extractvalue %dx.types.CBufRet.f32 %6799, 2
  %6803 = extractvalue %dx.types.CBufRet.f32 %6799, 3
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6807 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %6808 = extractvalue %dx.types.CBufRet.f32 %6804, 3
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = fmul fast float %6800, %6165
  %6815 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6801, float %6814)  ; FMad(a,b,c)
  %6816 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6802, float %6815)  ; FMad(a,b,c)
  %6817 = fadd fast float %6816, %6803
  %6818 = fmul fast float %6805, %6165
  %6819 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6806, float %6818)  ; FMad(a,b,c)
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6807, float %6819)  ; FMad(a,b,c)
  %6821 = fadd fast float %6820, %6808
  %6822 = fmul fast float %6810, %6165
  %6823 = call float @dx.op.tertiary.f32(i32 46, float %6166, float %6811, float %6822)  ; FMad(a,b,c)
  %6824 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6812, float %6823)  ; FMad(a,b,c)
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6825, 3
  %6829 = fmul fast float %6828, %6817
  %6830 = fmul fast float %6828, %6821
  %6831 = fadd fast float %6829, %6826
  %6832 = fadd fast float %6830, %6827
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = fsub fast float %6831, %6834
  %6837 = fsub fast float %6832, %6835
  %6838 = fcmp fast olt float %6836, 0.000000e+00
  %6839 = fcmp fast olt float %6837, 0.000000e+00
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 0
  %6842 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %6843 = extractvalue %dx.types.CBufRet.f32 %6840, 2
  %6844 = extractvalue %dx.types.CBufRet.f32 %6840, 3
  %6845 = select i1 %6838, float %6841, float %6843
  %6846 = select i1 %6839, float %6842, float %6844
  %6847 = fmul fast float %6845, %6836
  %6848 = fmul fast float %6846, %6837
  %6849 = call float @dx.op.unary.f32(i32 6, float %6847)  ; FAbs(value)
  %6850 = call float @dx.op.unary.f32(i32 6, float %6848)  ; FAbs(value)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6852 = call float @dx.op.binary.f32(i32 35, float %6849, float %6850)  ; FMax(a,b)
  %6853 = fsub fast float %6851, %6852
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = fcmp fast ogt float %6854, 0.000000e+00
  br i1 %6855, label %6856, label %6897, !dx.controlflow.hints !115

; <label>:6856                                    ; preds = %6798
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6831, float %6832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 1
  %6859 = fcmp fast ogt float %6858, 0.000000e+00
  br i1 %6859, label %6860, label %6892

; <label>:6860                                    ; preds = %6856
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6831, float %6832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  %6865 = extractvalue %dx.types.ResRet.f32 %6861, 3
  %6866 = fsub fast float 1.000000e+00, %6813
  %6867 = fsub fast float %6866, %6824
  %6868 = fmul fast float %6867, 0x400921FB60000000
  %6869 = fadd fast float %6868, 0x3FF921FB60000000
  %6870 = call float @dx.op.unary.f32(i32 13, float %6869)  ; Sin(value)
  %6871 = fadd fast float %6870, -1.000000e+00
  %6872 = fmul fast float %6871, 0x3FD45F3060000000
  %6873 = fmul fast float %6867, 0x401921FB60000000
  %6874 = fadd fast float %6873, 0x400921FB60000000
  %6875 = call float @dx.op.unary.f32(i32 13, float %6874)  ; Sin(value)
  %6876 = fadd fast float %6875, 0x3E7777A5C0000000
  %6877 = fmul fast float %6876, 0x3FC45F3060000000
  %6878 = fmul fast float %6867, 0x4022D97C80000000
  %6879 = fadd fast float %6878, 0x4012D97C80000000
  %6880 = call float @dx.op.unary.f32(i32 13, float %6879)  ; Sin(value)
  %6881 = fadd fast float %6880, 1.000000e+00
  %6882 = fmul fast float %6881, 0x3FBB2995E0000000
  %6883 = fmul fast float %6867, 0x402921FB60000000
  %6884 = fadd fast float %6883, 0x401921FB60000000
  %6885 = call float @dx.op.unary.f32(i32 13, float %6884)  ; Sin(value)
  %6886 = fadd fast float %6885, 0xBE8777A5C0000000
  %6887 = fmul fast float %6886, 0x3FB45F3060000000
  %6888 = call float @dx.op.dot4.f32(i32 56, float %6862, float %6863, float %6864, float %6865, float %6872, float %6877, float %6882, float %6887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6889 = fmul fast float %6888, 0xBFF7154760000000
  %6890 = call float @dx.op.unary.f32(i32 21, float %6889)  ; Exp(value)
  %6891 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  br label %6892

; <label>:6892                                    ; preds = %6860, %6856
  %6893 = phi float [ %6891, %6860 ], [ 1.000000e+00, %6856 ]
  %6894 = fadd fast float %6893, -1.000000e+00
  %6895 = fmul fast float %6894, %6854
  %6896 = fadd fast float %6895, 1.000000e+00
  br label %6897

; <label>:6897                                    ; preds = %6892, %6798
  %6898 = phi float [ %6896, %6892 ], [ 1.000000e+00, %6798 ]
  %6899 = fmul fast float %6898, %6794
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6904 = fadd fast float %6901, %155
  %6905 = fadd fast float %6902, %156
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6908 = fsub fast float -0.000000e+00, %6904
  %6909 = fsub fast float -0.000000e+00, %6905
  %6910 = fsub fast float %5709, %6903
  %6911 = fadd fast float %6910, %6907
  %6912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6908, float %6909, float %6911)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = fdiv fast float 1.000000e+00, %6913
  %6915 = fmul fast float %6914, %6912
  %6916 = fmul fast float %6146, %6915
  %6917 = fmul fast float %6147, %6915
  %6918 = fadd fast float %6916, %6904
  %6919 = fadd fast float %6917, %6905
  %6920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6921 = extractvalue %dx.types.CBufRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.CBufRet.f32 %6920, 1
  %6923 = fsub fast float %6918, %6921
  %6924 = fsub fast float %6919, %6922
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 2
  %6927 = extractvalue %dx.types.CBufRet.f32 %6925, 3
  %6928 = fmul fast float %6923, %6926
  %6929 = fmul fast float %6924, %6927
  %6930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.i32 %6930, 3
  %6932 = icmp eq i32 %6931, 0
  br i1 %6932, label %6938, label %6933

; <label>:6933                                    ; preds = %6897
  %6934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6928, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.ResRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.ResRet.f32 %6934, 2
  br label %6943

; <label>:6938                                    ; preds = %6897
  %6939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6928, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.ResRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.ResRet.f32 %6939, 2
  br label %6943

; <label>:6943                                    ; preds = %6938, %6933
  %6944 = phi float [ %6935, %6933 ], [ %6940, %6938 ]
  %6945 = phi float [ %6936, %6933 ], [ %6941, %6938 ]
  %6946 = phi float [ %6937, %6933 ], [ %6942, %6938 ]
  %6947 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6948 = fmul fast float %6947, %6944
  %6949 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6950 = fsub fast float %6915, %6949
  %6951 = fsub fast float %6950, %6948
  %6952 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6951)  ; FMax(a,b)
  %6953 = fmul fast float %6952, %6945
  %6954 = call float @dx.op.binary.f32(i32 36, float %6946, float %6953)  ; FMin(a,b)
  %6955 = fmul fast float %6954, 0xBFF7154760000000
  %6956 = call float @dx.op.unary.f32(i32 21, float %6955)  ; Exp(value)
  %6957 = fmul fast float %6899, %6956
  %6958 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  br i1 %6959, label %6960, label %7149, !dx.controlflow.hints !116

; <label>:6960                                    ; preds = %6943
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 1
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 1
  %6965 = select i1 %5715, float %6962, float %6964
  %6966 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6967 = extractvalue %dx.types.CBufRet.f32 %6963, 2
  %6968 = select i1 %5715, float %6966, float %6967
  %6969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.i32 %6969, 0
  %6971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.i32 %6971, 0
  %6973 = select i1 %5715, i32 %6970, i32 %6972
  %6974 = fcmp fast olt float %6965, 5.000000e-01
  %6975 = icmp eq i32 %6973, 0
  %6976 = or i1 %6974, %6975
  br i1 %6976, label %7146, label %6977

; <label>:6977                                    ; preds = %6960
  %6978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.i32 %6978, 0
  %6980 = uitofp i32 %6979 to float
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %6985 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 1
  %6989 = extractvalue %dx.types.CBufRet.f32 %6986, 2
  %6990 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.CBufRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6995 = extractvalue %dx.types.CBufRet.f32 %6991, 3
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %7001 = fdiv fast float 1.000000e+00, %91
  %7002 = fmul fast float %6999, %100
  %7003 = fmul fast float %7000, %101
  %7004 = fmul fast float %6965, %6146
  %7005 = fmul fast float %6965, %6147
  %7006 = fmul fast float %6965, %6148
  %7007 = fadd fast float %7004, %155
  %7008 = fadd fast float %7005, %156
  %7009 = fadd fast float %7006, %157
  %7010 = fmul fast float %6982, %7007
  %7011 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %6983, float %7010)  ; FMad(a,b,c)
  %7012 = call float @dx.op.tertiary.f32(i32 46, float %7009, float %6984, float %7011)  ; FMad(a,b,c)
  %7013 = fadd fast float %7012, %6985
  %7014 = fmul fast float %6987, %7007
  %7015 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %6988, float %7014)  ; FMad(a,b,c)
  %7016 = call float @dx.op.tertiary.f32(i32 46, float %7009, float %6989, float %7015)  ; FMad(a,b,c)
  %7017 = fadd fast float %7016, %6990
  %7018 = fmul fast float %6992, %7007
  %7019 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %6993, float %7018)  ; FMad(a,b,c)
  %7020 = call float @dx.op.tertiary.f32(i32 46, float %7009, float %6994, float %7019)  ; FMad(a,b,c)
  %7021 = fadd fast float %7020, %6995
  %7022 = fdiv fast float 1.000000e+00, %7021
  %7023 = fmul fast float %7013, 5.000000e-01
  %7024 = fmul fast float %7017, -5.000000e-01
  %7025 = fmul fast float %7023, %7022
  %7026 = fmul fast float %7024, %7022
  %7027 = fsub fast float 5.000000e-01, %7002
  %7028 = fadd fast float %7027, %7025
  %7029 = fsub fast float 5.000000e-01, %7003
  %7030 = fadd fast float %7029, %7026
  %7031 = fsub fast float %7022, %7001
  %7032 = call float @dx.op.dot2.f32(i32 54, float %7028, float %7030, float %7028, float %7030)  ; Dot2(ax,ay,bx,by)
  %7033 = call float @dx.op.binary.f32(i32 35, float %7032, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %7034 = call float @dx.op.dot2.f32(i32 54, float %6997, float %6998, float %6997, float %6998)  ; Dot2(ax,ay,bx,by)
  %7035 = fmul fast float %7034, %7033
  %7036 = call float @dx.op.unary.f32(i32 25, float %7035)  ; Rsqrt(value)
  %7037 = fmul fast float %7036, %7028
  %7038 = fmul fast float %7036, %7030
  %7039 = fadd fast float %7037, %7002
  %7040 = fadd fast float %7038, %7003
  %7041 = fmul fast float %7028, %6997
  %7042 = fmul fast float %7030, %6998
  %7043 = fmul fast float %7041, %7041
  %7044 = fmul fast float %7042, %7042
  %7045 = fadd fast float %7043, %7044
  %7046 = call float @dx.op.unary.f32(i32 24, float %7045)  ; Sqrt(value)
  %7047 = fdiv fast float 1.000000e+00, %7046
  %7048 = fmul fast float %7046, 3.906250e-03
  %7049 = fmul fast float %5714, 0x3F70624DE0000000
  %7050 = fadd fast float %7049, 0x3F70624DE0000000
  %7051 = icmp sgt i32 %6973, -1
  br i1 %7051, label %7052, label %7111

; <label>:7052                                    ; preds = %6977
  br label %7053

; <label>:7053                                    ; preds = %7107, %7052
  %7054 = phi float [ %7085, %7107 ], [ %91, %7052 ]
  %7055 = phi float [ %7072, %7107 ], [ %91, %7052 ]
  %7056 = phi float [ %7055, %7107 ], [ %91, %7052 ]
  %7057 = phi i32 [ %7108, %7107 ], [ 0, %7052 ]
  %7058 = sitofp i32 %7057 to float
  %7059 = fadd fast float %231, 5.000000e-01
  %7060 = call float @dx.op.unary.f32(i32 22, float %7059)  ; Frc(value)
  %7061 = fadd fast float %7058, %7060
  %7062 = sitofp i32 %6973 to float
  %7063 = fdiv fast float %7061, %7062
  %7064 = fmul fast float %7063, %7063
  %7065 = call float @dx.op.binary.f32(i32 36, float %7064, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %7066 = fmul fast float %7065, %7028
  %7067 = fmul fast float %7065, %7030
  %7068 = fmul fast float %7065, %7031
  %7069 = fadd fast float %7066, %7039
  %7070 = fadd fast float %7067, %7040
  %7071 = fadd fast float %7068, %7001
  %7072 = fdiv fast float 1.000000e+00, %7071
  %7073 = icmp ne i32 %6979, 0
  %7074 = fmul fast float %7048, %7065
  %7075 = call float @dx.op.binary.f32(i32 36, float %7074, float %6980)  ; FMin(a,b)
  %7076 = select i1 %7073, float %7075, float 0.000000e+00
  %7077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %7069, float %7070, float undef, float undef, i32 0, i32 0, i32 undef, float %7076)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7078 = extractvalue %dx.types.ResRet.f32 %7077, 0
  %7079 = fcmp fast ogt float %7078, -1.000000e+00
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 1
  %7082 = select i1 %7079, float %7081, float 1.000000e+00
  %7083 = fadd fast float %7078, 1.000000e+00
  %7084 = fmul fast float %7082, %7083
  %7085 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7086 = fmul fast float %7085, %7050
  %7087 = fsub fast float %7072, %7085
  %7088 = fsub fast float %7087, %7086
  %7089 = fcmp fast ogt float %7088, 0.000000e+00
  %7090 = fcmp fast ogt float %6968, 0.000000e+00
  br i1 %7090, label %7091, label %7094

; <label>:7091                                    ; preds = %7053
  %7092 = fsub fast float %7072, %7056
  %7093 = call float @dx.op.binary.f32(i32 35, float %7092, float %6968)  ; FMax(a,b)
  br label %7094

; <label>:7094                                    ; preds = %7091, %7053
  %7095 = phi float [ %7093, %7091 ], [ %6965, %7053 ]
  %7096 = fcmp fast olt float %7088, %7095
  %7097 = call float @dx.op.unary.f32(i32 7, float %7069)  ; Saturate(value)
  %7098 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7099 = fcmp fast oeq float %7069, %7097
  %7100 = fcmp fast oeq float %7070, %7098
  %7101 = and i1 %7099, %7100
  %7102 = and i1 %7089, %7096
  %7103 = and i1 %7102, %7101
  %7104 = fcmp fast ogt float %7065, %7047
  %7105 = and i1 %7104, %7103
  %7106 = zext i1 %7105 to i32
  br i1 %7105, label %7110, label %7107

; <label>:7107                                    ; preds = %7094
  %7108 = add nuw nsw i32 %7057, 1
  %7109 = icmp slt i32 %7057, %6973
  br i1 %7109, label %7053, label %7110

; <label>:7110                                    ; preds = %7107, %7094
  br label %7111

; <label>:7111                                    ; preds = %7110, %6977
  %7112 = phi i32 [ 0, %6977 ], [ %7106, %7110 ]
  %7113 = phi float [ %91, %6977 ], [ %7085, %7110 ]
  %7114 = phi float [ %91, %6977 ], [ %7054, %7110 ]
  %7115 = phi float [ %91, %6977 ], [ %7072, %7110 ]
  %7116 = phi float [ %91, %6977 ], [ %7055, %7110 ]
  %7117 = fsub fast float %7116, %7114
  %7118 = fsub fast float %7115, %7113
  %7119 = fsub fast float %7117, %7118
  %7120 = fcmp fast une float %7119, 0.000000e+00
  %7121 = fmul fast float %7117, %7115
  %7122 = fmul fast float %7116, %7118
  %7123 = fsub fast float %7121, %7122
  %7124 = fdiv fast float 1.000000e+00, %7119
  %7125 = fmul fast float %7123, %7124
  %7126 = select i1 %7120, float %7125, float %7115
  %7127 = fdiv fast float 1.000000e+00, %7126
  %7128 = fsub fast float %7127, %7001
  %7129 = fdiv fast float %7128, %7031
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = fmul fast float %7130, %7028
  %7132 = fmul fast float %7130, %7030
  %7133 = fadd fast float %7039, -5.000000e-01
  %7134 = fadd fast float %7133, %7131
  %7135 = fadd fast float %7040, -5.000000e-01
  %7136 = fadd fast float %7135, %7132
  %7137 = call float @dx.op.unary.f32(i32 6, float %7134)  ; FAbs(value)
  %7138 = call float @dx.op.unary.f32(i32 6, float %7136)  ; FAbs(value)
  %7139 = fadd fast float %7137, -5.000000e-01
  %7140 = fadd fast float %7138, -5.000000e-01
  %7141 = call float @dx.op.binary.f32(i32 35, float %7139, float %7140)  ; FMax(a,b)
  %7142 = fcmp fast olt float %7141, 0.000000e+00
  %7143 = icmp ne i32 %7112, 0
  %7144 = and i1 %7143, %7142
  %7145 = select i1 %7144, float 0.000000e+00, float 1.000000e+00
  br label %7146

; <label>:7146                                    ; preds = %7111, %6960
  %7147 = phi float [ %7145, %7111 ], [ 1.000000e+00, %6960 ]
  %7148 = fmul fast float %7147, %6957
  br label %7149

; <label>:7149                                    ; preds = %7146, %6943, %6793
  %7150 = phi float [ %7148, %7146 ], [ %6957, %6943 ], [ %6794, %6793 ]
  %7151 = call float @dx.op.binary.f32(i32 36, float %7150, float %7150)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7150, float %7151)  ; FMin(a,b)
  %7153 = fcmp fast ogt float %7152, 0.000000e+00
  br i1 %7153, label %7154, label %7540, !dx.controlflow.hints !117

; <label>:7154                                    ; preds = %7149
  %7155 = fmul fast float %7150, %6157
  %7156 = fmul fast float %7150, %6158
  %7157 = fmul fast float %7150, %6159
  %7158 = fsub fast float %157, %5497
  %7159 = fcmp fast ogt float %7158, 0.000000e+00
  %7160 = fmul fast float %6146, 5.120000e+02
  %7161 = fmul fast float %6147, 5.120000e+02
  %7162 = fmul fast float %6148, 5.120000e+02
  %7163 = fadd fast float %7162, %157
  %7164 = fsub fast float %5497, %7163
  %7165 = fmul fast float %7164, 2.000000e+00
  %7166 = fadd fast float %7165, %7163
  %7167 = select i1 %7159, float %7166, float %7163
  %7168 = fsub fast float %7167, %157
  %7169 = call float @dx.op.dot3.f32(i32 55, float %7160, float %7161, float %7168, float %7160, float %7161, float %7168)  ; Dot3(ax,ay,az,bx,by,bz)
  %7170 = call float @dx.op.unary.f32(i32 25, float %7169)  ; Rsqrt(value)
  %7171 = fmul fast float %7170, %7160
  %7172 = fmul fast float %7170, %7161
  %7173 = fmul fast float %7170, %7168
  %7174 = fsub fast float %5497, %157
  %7175 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7174)  ; Dot3(ax,ay,az,bx,by,bz)
  %7176 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7171, float %7172, float %7173)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = fdiv fast float 1.000000e+00, %7176
  %7178 = fmul fast float %7177, %7175
  %7179 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7158, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7180 = fcmp fast ogt float %7179, 0.000000e+00
  %7181 = fcmp fast olt float %7179, 0.000000e+00
  %7182 = zext i1 %7180 to i32
  %7183 = zext i1 %7181 to i32
  %7184 = sub nsw i32 %7182, %7183
  %7185 = sitofp i32 %7184 to float
  %7186 = fsub fast float %7167, %5497
  %7187 = call float @dx.op.dot3.f32(i32 55, float %7160, float %7161, float %7186, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7188 = fcmp fast ogt float %7187, 0.000000e+00
  %7189 = fcmp fast olt float %7187, 0.000000e+00
  %7190 = zext i1 %7188 to i32
  %7191 = zext i1 %7189 to i32
  %7192 = sub nsw i32 %7190, %7191
  %7193 = sitofp i32 %7192 to float
  %7194 = fcmp fast une float %7185, %7193
  br i1 %7194, label %7195, label %7205

; <label>:7195                                    ; preds = %7154
  %7196 = fmul fast float %7178, %7173
  %7197 = fmul fast float %7178, %7172
  %7198 = fmul fast float %7178, %7171
  %7199 = fmul fast float %7198, %7198
  %7200 = fmul fast float %7197, %7197
  %7201 = fadd fast float %7199, %7200
  %7202 = fmul fast float %7196, %7196
  %7203 = fadd fast float %7201, %7202
  %7204 = call float @dx.op.unary.f32(i32 24, float %7203)  ; Sqrt(value)
  br label %7215

; <label>:7205                                    ; preds = %7154
  %7206 = icmp slt i32 %7184, 0
  br i1 %7206, label %7207, label %7215

; <label>:7207                                    ; preds = %7205
  %7208 = fsub fast float %157, %7167
  %7209 = fmul fast float %7160, %7160
  %7210 = fmul fast float %7161, %7161
  %7211 = fadd fast float %7209, %7210
  %7212 = fmul fast float %7208, %7208
  %7213 = fadd fast float %7211, %7212
  %7214 = call float @dx.op.unary.f32(i32 24, float %7213)  ; Sqrt(value)
  br label %7215

; <label>:7215                                    ; preds = %7207, %7205, %7195
  %7216 = phi float [ %7204, %7195 ], [ %7214, %7207 ], [ 0.000000e+00, %7205 ]
  %7217 = fsub fast float -0.000000e+00, %7216
  %7218 = select i1 %7159, float -0.000000e+00, float %7217
  %7219 = fmul fast float %5498, 0x3FF7154760000000
  %7220 = fmul fast float %7219, %7218
  %7221 = fmul fast float %5499, 0x3FF7154760000000
  %7222 = fmul fast float %7221, %7218
  %7223 = fmul fast float %5500, 0x3FF7154760000000
  %7224 = fmul fast float %7223, %7218
  %7225 = call float @dx.op.unary.f32(i32 21, float %7220)  ; Exp(value)
  %7226 = call float @dx.op.unary.f32(i32 21, float %7222)  ; Exp(value)
  %7227 = call float @dx.op.unary.f32(i32 21, float %7224)  ; Exp(value)
  %7228 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7229 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  %7230 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7231 = fmul fast float %7155, %7228
  %7232 = fmul fast float %7156, %7229
  %7233 = fmul fast float %7157, %7230
  %7234 = fsub fast float %6146, %5697
  %7235 = fsub fast float %6147, %5696
  %7236 = fsub fast float %6148, %5695
  %7237 = call float @dx.op.dot3.f32(i32 55, float %7234, float %7235, float %7236, float %7234, float %7235, float %7236)  ; Dot3(ax,ay,az,bx,by,bz)
  %7238 = call float @dx.op.unary.f32(i32 25, float %7237)  ; Rsqrt(value)
  %7239 = fmul fast float %7238, %7234
  %7240 = fmul fast float %7238, %7235
  %7241 = fmul fast float %7238, %7236
  %7242 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5693, float %5692, float %7239, float %7240, float %7241)  ; Dot3(ax,ay,az,bx,by,bz)
  %7244 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7245 = fmul fast float %7244, %7244
  %7246 = fmul fast float %7245, %5731
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = fmul fast float %7247, %7244
  %7249 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %7239, float %7240, float %7241)  ; Dot3(ax,ay,az,bx,by,bz)
  %7250 = fmul fast float %7249, %7249
  %7251 = call float @dx.op.unary.f32(i32 6, float %7242)  ; FAbs(value)
  %7252 = call float @dx.op.binary.f32(i32 35, float %6114, float 0x3F847AE140000000)  ; FMax(a,b)
  %7253 = fmul fast float %7252, %7252
  %7254 = fmul fast float %7253, %7253
  %7255 = fsub fast float 1.000000e+00, %7254
  %7256 = fmul fast float %5718, %5718
  %7257 = fmul fast float %7256, %7255
  %7258 = fadd fast float %7257, %7254
  %7259 = bitcast float %7258 to i32
  %7260 = ashr i32 %7259, 1
  %7261 = add nsw i32 %7260, 532487669
  %7262 = bitcast i32 %7261 to float
  %7263 = fadd fast float %7262, %5718
  %7264 = fmul fast float %7254, %7250
  %7265 = fsub fast float 1.000000e+00, %7250
  %7266 = fadd fast float %7265, %7264
  %7267 = fmul fast float %7251, %7251
  %7268 = fmul fast float %7267, %7255
  %7269 = fadd fast float %7268, %7254
  %7270 = bitcast float %7269 to i32
  %7271 = ashr i32 %7270, 1
  %7272 = add nsw i32 %7271, 532487669
  %7273 = bitcast i32 %7272 to float
  %7274 = fadd fast float %7273, %7251
  %7275 = fmul fast float %7266, %7266
  %7276 = fmul fast float %7275, %7263
  %7277 = fmul fast float %7276, %7274
  %7278 = fdiv fast float 0x3FF0A00000000000, %7277
  %7279 = fmul fast float %7278, %7254
  %7280 = fmul fast float %5976, 0x3FF9999980000000
  %7281 = fsub fast float 5.000000e+00, %7280
  %7282 = call float @dx.op.unary.f32(i32 6, float %7243)  ; FAbs(value)
  %7283 = fsub fast float 1.000000e+00, %7282
  %7284 = fmul fast float %5976, 0x41D9660740000000
  %7285 = fadd fast float %7284, 0xC1EFBF8940000000
  %7286 = bitcast float %7283 to i32
  %7287 = sitofp i32 %7286 to float
  %7288 = fmul fast float %7287, %7281
  %7289 = fadd fast float %7285, %7288
  %7290 = fptosi float %7289 to i32
  %7291 = bitcast i32 %7290 to float
  %7292 = fsub fast float 1.000000e+00, %5701
  %7293 = fsub fast float 1.000000e+00, %5702
  %7294 = fsub fast float 1.000000e+00, %5716
  %7295 = fmul fast float %7291, %7292
  %7296 = fmul fast float %7291, %7293
  %7297 = fmul fast float %7291, %7294
  %7298 = fadd fast float %7295, %5701
  %7299 = fadd fast float %7296, %5702
  %7300 = fadd fast float %7297, %5716
  br i1 %5999, label %7301, label %7324

; <label>:7301                                    ; preds = %7215
  %7302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %7282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7303 = extractvalue %dx.types.ResRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.ResRet.f32 %7302, 1
  %7305 = extractvalue %dx.types.ResRet.f32 %7302, 2
  %7306 = fadd fast float %7303, -5.000000e-01
  %7307 = fadd fast float %7304, -5.000000e-01
  %7308 = fadd fast float %7305, -5.000000e-01
  %7309 = fmul fast float %5701, 4.000000e+00
  %7310 = fmul fast float %7309, %7292
  %7311 = fmul fast float %7310, %7306
  %7312 = fmul fast float %5702, 4.000000e+00
  %7313 = fmul fast float %7312, %7293
  %7314 = fmul fast float %7313, %7307
  %7315 = fmul fast float %5716, 4.000000e+00
  %7316 = fmul fast float %7315, %7294
  %7317 = fmul fast float %7316, %7308
  %7318 = fadd fast float %7311, %7298
  %7319 = fadd fast float %7314, %7299
  %7320 = fadd fast float %7317, %7300
  %7321 = call float @dx.op.unary.f32(i32 7, float %7318)  ; Saturate(value)
  %7322 = call float @dx.op.unary.f32(i32 7, float %7319)  ; Saturate(value)
  %7323 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  br label %7324

; <label>:7324                                    ; preds = %7301, %7215
  %7325 = phi float [ %7321, %7301 ], [ %7298, %7215 ]
  %7326 = phi float [ %7322, %7301 ], [ %7299, %7215 ]
  %7327 = phi float [ %7323, %7301 ], [ %7300, %7215 ]
  %7328 = fmul fast float %7242, 9.843750e-01
  %7329 = fadd fast float %7328, 7.812500e-03
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7329, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = extractvalue %dx.types.ResRet.f32 %7330, 3
  %7335 = fsub fast float %7333, %7331
  %7336 = fsub fast float %7334, %7332
  %7337 = fmul fast float %7335, %5986
  %7338 = fmul fast float %7336, %5986
  %7339 = fadd fast float %7337, %7331
  %7340 = fadd fast float %7338, %7332
  %7341 = fmul fast float %7339, %5701
  %7342 = fmul fast float %7339, %5702
  %7343 = fmul fast float %7339, %5716
  %7344 = fadd fast float %7341, %7340
  %7345 = fadd fast float %7342, %7340
  %7346 = fadd fast float %7343, %7340
  br i1 %5999, label %7347, label %7370

; <label>:7347                                    ; preds = %7324
  %7348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7349 = extractvalue %dx.types.ResRet.f32 %7348, 0
  %7350 = extractvalue %dx.types.ResRet.f32 %7348, 1
  %7351 = extractvalue %dx.types.ResRet.f32 %7348, 2
  %7352 = fadd fast float %7349, -5.000000e-01
  %7353 = fadd fast float %7350, -5.000000e-01
  %7354 = fadd fast float %7351, -5.000000e-01
  %7355 = fmul fast float %5701, 4.000000e+00
  %7356 = fmul fast float %7355, %7292
  %7357 = fmul fast float %7356, %7352
  %7358 = fmul fast float %5702, 4.000000e+00
  %7359 = fmul fast float %7358, %7293
  %7360 = fmul fast float %7359, %7353
  %7361 = fmul fast float %5716, 4.000000e+00
  %7362 = fmul fast float %7361, %7294
  %7363 = fmul fast float %7362, %7354
  %7364 = fadd fast float %7357, %7344
  %7365 = fadd fast float %7360, %7345
  %7366 = fadd fast float %7363, %7346
  %7367 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7368 = call float @dx.op.unary.f32(i32 7, float %7365)  ; Saturate(value)
  %7369 = call float @dx.op.unary.f32(i32 7, float %7366)  ; Saturate(value)
  br label %7370

; <label>:7370                                    ; preds = %7347, %7324
  %7371 = phi float [ %7367, %7347 ], [ %7344, %7324 ]
  %7372 = phi float [ %7368, %7347 ], [ %7345, %7324 ]
  %7373 = phi float [ %7369, %7347 ], [ %7346, %7324 ]
  %7374 = call float @dx.op.binary.f32(i32 35, float %7372, float %7373)  ; FMax(a,b)
  %7375 = call float @dx.op.binary.f32(i32 35, float %7371, float %7374)  ; FMax(a,b)
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = call float @dx.op.binary.f32(i32 35, float %7251, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7378 = fdiv fast float %4421, %7377
  %7379 = fmul fast float %6054, %7378
  %7380 = fmul fast float %6056, %7378
  %7381 = fmul fast float %6058, %7378
  %7382 = call float @dx.op.unary.f32(i32 21, float %7379)  ; Exp(value)
  %7383 = call float @dx.op.unary.f32(i32 21, float %7380)  ; Exp(value)
  %7384 = call float @dx.op.unary.f32(i32 21, float %7381)  ; Exp(value)
  %7385 = call float @dx.op.unary.f32(i32 7, float %7382)  ; Saturate(value)
  %7386 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7387 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7388 = select i1 %6051, float %7385, float 0.000000e+00
  %7389 = select i1 %6052, float %7386, float 0.000000e+00
  %7390 = select i1 %6053, float %7387, float 0.000000e+00
  %7391 = fsub fast float -0.000000e+00, %5704
  %7392 = fsub fast float -0.000000e+00, %5705
  %7393 = fsub fast float -0.000000e+00, %5706
  %7394 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %7391, float %7392, float %7393)  ; Dot3(ax,ay,az,bx,by,bz)
  %7395 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  %7396 = fmul fast float %7395, 9.843750e-01
  %7397 = fadd fast float %7396, 7.812500e-03
  %7398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7397, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = extractvalue %dx.types.ResRet.f32 %7398, 3
  %7403 = fsub fast float %7401, %7399
  %7404 = fsub fast float %7402, %7400
  %7405 = fmul fast float %7403, %5986
  %7406 = fmul fast float %7404, %5986
  %7407 = fadd fast float %7405, %7399
  %7408 = fadd fast float %7406, %7400
  %7409 = fmul fast float %7407, %5701
  %7410 = fmul fast float %7407, %5702
  %7411 = fmul fast float %7407, %5716
  %7412 = fadd fast float %7409, %7408
  %7413 = fadd fast float %7410, %7408
  %7414 = fadd fast float %7411, %7408
  br i1 %5999, label %7415, label %7438

; <label>:7415                                    ; preds = %7370
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = fadd fast float %7417, -5.000000e-01
  %7421 = fadd fast float %7418, -5.000000e-01
  %7422 = fadd fast float %7419, -5.000000e-01
  %7423 = fmul fast float %5701, 4.000000e+00
  %7424 = fmul fast float %7423, %7292
  %7425 = fmul fast float %7424, %7420
  %7426 = fmul fast float %5702, 4.000000e+00
  %7427 = fmul fast float %7426, %7293
  %7428 = fmul fast float %7427, %7421
  %7429 = fmul fast float %5716, 4.000000e+00
  %7430 = fmul fast float %7429, %7294
  %7431 = fmul fast float %7430, %7422
  %7432 = fadd fast float %7425, %7412
  %7433 = fadd fast float %7428, %7413
  %7434 = fadd fast float %7431, %7414
  %7435 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  br label %7438

; <label>:7438                                    ; preds = %7415, %7370
  %7439 = phi float [ %7435, %7415 ], [ %7412, %7370 ]
  %7440 = phi float [ %7436, %7415 ], [ %7413, %7370 ]
  %7441 = phi float [ %7437, %7415 ], [ %7414, %7370 ]
  %7442 = call float @dx.op.binary.f32(i32 35, float %7440, float %7441)  ; FMax(a,b)
  %7443 = call float @dx.op.binary.f32(i32 35, float %7439, float %7442)  ; FMax(a,b)
  %7444 = fsub fast float 1.000000e+00, %7443
  %7445 = fmul fast float %6114, %6119
  %7446 = fadd fast float %6121, %7445
  %7447 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7448 = fsub fast float %6146, %5724
  %7449 = fsub fast float %6147, %5725
  %7450 = fsub fast float %6148, %5726
  %7451 = call float @dx.op.dot3.f32(i32 55, float %7448, float %7449, float %7450, float %7448, float %7449, float %7450)  ; Dot3(ax,ay,az,bx,by,bz)
  %7452 = call float @dx.op.unary.f32(i32 25, float %7451)  ; Rsqrt(value)
  %7453 = fmul fast float %7452, %7448
  %7454 = fmul fast float %7452, %7449
  %7455 = fmul fast float %7452, %7450
  %7456 = call float @dx.op.dot3.f32(i32 55, float %7391, float %7392, float %7393, float %7453, float %7454, float %7455)  ; Dot3(ax,ay,az,bx,by,bz)
  %7457 = fmul fast float %7456, %7456
  %7458 = call float @dx.op.unary.f32(i32 6, float %7395)  ; FAbs(value)
  %7459 = call float @dx.op.binary.f32(i32 35, float %7447, float 0x3F847AE140000000)  ; FMax(a,b)
  %7460 = fmul fast float %7459, %7459
  %7461 = fmul fast float %7460, %7460
  %7462 = fsub fast float 1.000000e+00, %7461
  %7463 = fmul fast float %7256, %7462
  %7464 = fadd fast float %7463, %7461
  %7465 = bitcast float %7464 to i32
  %7466 = ashr i32 %7465, 1
  %7467 = add nsw i32 %7466, 532487669
  %7468 = bitcast i32 %7467 to float
  %7469 = fadd fast float %7468, %5718
  %7470 = fmul fast float %7461, %7457
  %7471 = fsub fast float 1.000000e+00, %7457
  %7472 = fadd fast float %7471, %7470
  %7473 = fmul fast float %7458, %7458
  %7474 = fmul fast float %7473, %7462
  %7475 = fadd fast float %7474, %7461
  %7476 = bitcast float %7475 to i32
  %7477 = ashr i32 %7476, 1
  %7478 = add nsw i32 %7477, 532487669
  %7479 = bitcast i32 %7478 to float
  %7480 = fadd fast float %7479, %7458
  %7481 = fmul fast float %7472, %7472
  %7482 = fmul fast float %7481, %7469
  %7483 = fmul fast float %7482, %7480
  %7484 = fdiv fast float 0x3FF0A00000000000, %7483
  %7485 = fmul fast float %7484, %7461
  %7486 = fmul fast float %7395, %7388
  %7487 = fmul fast float %7395, %7389
  %7488 = fmul fast float %7395, %7390
  %7489 = fmul fast float %7486, %7444
  %7490 = fmul fast float %7489, %7485
  %7491 = fmul fast float %7487, %7444
  %7492 = fmul fast float %7491, %7485
  %7493 = fmul fast float %7488, %7444
  %7494 = fmul fast float %7493, %7485
  %7495 = fmul fast float %7325, %7279
  %7496 = fmul fast float %7326, %7279
  %7497 = fmul fast float %7327, %7279
  %7498 = fsub fast float 1.000000e+00, %7243
  %7499 = bitcast float %7498 to i32
  %7500 = sitofp i32 %7499 to float
  %7501 = fmul fast float %7500, 5.000000e+00
  %7502 = fadd fast float %7501, 0xC1EFBF8940000000
  %7503 = fptosi float %7502 to i32
  %7504 = bitcast i32 %7503 to float
  %7505 = fmul fast float %7504, %5068
  %7506 = fmul fast float %7376, %7505
  %7507 = fmul fast float %7506, %6046
  %7508 = fmul fast float %7506, %6047
  %7509 = fmul fast float %7506, %6048
  %7510 = fadd fast float %7507, %7495
  %7511 = fadd fast float %7508, %7496
  %7512 = fadd fast float %7509, %7497
  %7513 = fmul fast float %7510, %7248
  %7514 = fmul fast float %7511, %7248
  %7515 = fmul fast float %7512, %7248
  %7516 = fmul fast float %7248, %7231
  %7517 = fmul fast float %7516, %7376
  %7518 = fmul fast float %7248, %7232
  %7519 = fmul fast float %7518, %7376
  %7520 = fmul fast float %7248, %7233
  %7521 = fmul fast float %7520, %7376
  %7522 = fadd fast float %7513, %7490
  %7523 = fadd fast float %7514, %7492
  %7524 = fadd fast float %7515, %7494
  %7525 = fmul fast float %7522, %7231
  %7526 = fmul fast float %7523, %7232
  %7527 = fmul fast float %7524, %7233
  %7528 = fadd fast float %7517, %6136
  %7529 = fmul fast float %7528, %5064
  %7530 = fadd fast float %7519, %6138
  %7531 = fmul fast float %7530, %5064
  %7532 = fadd fast float %7521, %6140
  %7533 = fmul fast float %7532, %5064
  %7534 = fadd fast float %7525, %6099
  %7535 = fmul fast float %7534, %5064
  %7536 = fadd fast float %7526, %6102
  %7537 = fmul fast float %7536, %5064
  %7538 = fadd fast float %7527, %6105
  %7539 = fmul fast float %7538, %5064
  br label %7540

; <label>:7540                                    ; preds = %7438, %7149, %6026
  %7541 = phi float [ %6100, %6026 ], [ %6100, %7149 ], [ %7535, %7438 ]
  %7542 = phi float [ %6103, %6026 ], [ %6103, %7149 ], [ %7537, %7438 ]
  %7543 = phi float [ %6106, %6026 ], [ %6106, %7149 ], [ %7539, %7438 ]
  %7544 = phi float [ %6137, %6026 ], [ %6137, %7149 ], [ %7529, %7438 ]
  %7545 = phi float [ %6139, %6026 ], [ %6139, %7149 ], [ %7531, %7438 ]
  %7546 = phi float [ %6141, %6026 ], [ %6141, %7149 ], [ %7533, %7438 ]
  %7547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.i32 %7547, 0
  %7549 = icmp eq i32 %7548, 0
  br i1 %7549, label %8570, label %7550

; <label>:7550                                    ; preds = %7540
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7554 = fmul fast float %7552, %100
  %7555 = fmul fast float %7553, %101
  %7556 = fptoui float %7554 to i32
  %7557 = fptoui float %7555 to i32
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 0
  %7560 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7561 = extractvalue %dx.types.CBufRet.f32 %7558, 3
  %7562 = fadd fast float %91, -4.000000e+00
  %7563 = call float @dx.op.binary.f32(i32 35, float %7562, float 0.000000e+00)  ; FMax(a,b)
  %7564 = fadd fast float %7563, %7559
  %7565 = fmul fast float %7564, %7560
  %7566 = call float @dx.op.unary.f32(i32 23, float %7565)  ; Log(value)
  %7567 = fmul fast float %7566, %7561
  %7568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7569 = extractvalue %dx.types.CBufRet.f32 %7568, 2
  %7570 = fmul fast float %7567, %7569
  %7571 = call float @dx.op.unary.f32(i32 7, float %7570)  ; Saturate(value)
  %7572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.i32 %7572, 1
  %7574 = add i32 %7573, -1
  %7575 = uitofp i32 %7573 to float
  %7576 = fmul fast float %7575, %7571
  %7577 = fptoui float %7576 to i32
  %7578 = call i32 @dx.op.binary.i32(i32 40, i32 %7577, i32 %7574)  ; UMin(a,b)
  %7579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.i32 %7579, 2
  %7581 = extractvalue %dx.types.CBufRet.i32 %7579, 3
  %7582 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7557, i32 %7580, i32 %7556)  ; UMad(a,b,c)
  %7583 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7578, i32 %7581, i32 %7582)  ; UMad(a,b,c)
  %7584 = add nsw i32 %7548, -1
  %7585 = call i32 @dx.op.binary.i32(i32 37, i32 %7584, i32 0)  ; IMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7587 = fptoui float %7586 to i32
  %7588 = lshr i32 %7587, 5
  %7589 = call i32 @dx.op.binary.i32(i32 40, i32 %7588, i32 8191)  ; UMin(a,b)
  %7590 = shl i32 %7589, 2
  %7591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7590, i32 undef)  ; BufferLoad(srv,index,wot)
  %7592 = extractvalue %dx.types.ResRet.i32 %7591, 0
  %7593 = lshr i32 %7592, 16
  %7594 = and i32 %7592, 65535
  %7595 = lshr i32 %7592, 21
  %7596 = lshr i32 %7594, 5
  %7597 = call i32 @dx.op.binary.i32(i32 40, i32 %7596, i32 %7585)  ; UMin(a,b)
  %7598 = icmp ugt i32 %7595, %7597
  br i1 %7598, label %8570, label %7599

; <label>:7599                                    ; preds = %7550
  br label %7600

; <label>:7600                                    ; preds = %8560, %7599
  %7601 = phi i32 [ %8567, %8560 ], [ %7595, %7599 ]
  %7602 = phi float [ %8561, %8560 ], [ %7541, %7599 ]
  %7603 = phi float [ %8562, %8560 ], [ %7542, %7599 ]
  %7604 = phi float [ %8563, %8560 ], [ %7543, %7599 ]
  %7605 = phi float [ %8564, %8560 ], [ %7544, %7599 ]
  %7606 = phi float [ %8565, %8560 ], [ %7545, %7599 ]
  %7607 = phi float [ %8566, %8560 ], [ %7546, %7599 ]
  %7608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.i32 %7608, 0
  %7610 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7583, i32 %7609, i32 %7601)  ; UMad(a,b,c)
  %7611 = shl i32 %7610, 2
  %7612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7611, i32 undef)  ; BufferLoad(srv,index,wot)
  %7613 = extractvalue %dx.types.ResRet.i32 %7612, 0
  %7614 = shl i32 %7601, 5
  %7615 = sub nsw i32 %7593, %7614
  %7616 = call i32 @dx.op.binary.i32(i32 37, i32 %7615, i32 0)  ; IMax(a,b)
  %7617 = call i32 @dx.op.binary.i32(i32 38, i32 %7616, i32 31)  ; IMin(a,b)
  %7618 = sub nsw i32 1, %7593
  %7619 = add nsw i32 %7618, %7594
  %7620 = call i32 @dx.op.binary.i32(i32 37, i32 %7619, i32 0)  ; IMax(a,b)
  %7621 = call i32 @dx.op.binary.i32(i32 38, i32 %7620, i32 32)  ; IMin(a,b)
  %7622 = and i32 %7621, 31
  %7623 = shl i32 -1, %7622
  %7624 = xor i32 %7623, -1
  %7625 = and i32 %7617, 31
  %7626 = shl i32 %7624, %7625
  %7627 = icmp eq i32 %7621, 32
  %7628 = select i1 %7627, i32 -1, i32 %7626
  %7629 = and i32 %7628, %7613
  %7630 = icmp eq i32 %7629, 0
  br i1 %7630, label %8560, label %7631

; <label>:7631                                    ; preds = %7600
  br label %7632

; <label>:7632                                    ; preds = %7767, %7631
  %7633 = phi i32 [ %7644, %7767 ], [ %7629, %7631 ]
  %7634 = phi float [ %7768, %7767 ], [ %7602, %7631 ]
  %7635 = phi float [ %7769, %7767 ], [ %7603, %7631 ]
  %7636 = phi float [ %7770, %7767 ], [ %7604, %7631 ]
  %7637 = phi float [ %7771, %7767 ], [ %7605, %7631 ]
  %7638 = phi float [ %7772, %7767 ], [ %7606, %7631 ]
  %7639 = phi float [ %7773, %7767 ], [ %7607, %7631 ]
  %7640 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7633)  ; FirstbitLo(value)
  %7641 = add i32 %7640, %7614
  %7642 = and i32 %7640, 31
  %7643 = shl i32 1, %7642
  %7644 = xor i32 %7643, %7633
  %7645 = mul i32 %7641, 112
  %7646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7645, i32 undef)  ; BufferLoad(srv,index,wot)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = or i32 %7645, 12
  %7651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7650, i32 undef)  ; BufferLoad(srv,index,wot)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = add i32 %7645, 16
  %7654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7653, i32 undef)  ; BufferLoad(srv,index,wot)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.ResRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.ResRet.f32 %7654, 2
  %7658 = add i32 %7645, 28
  %7659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7658, i32 undef)  ; BufferLoad(srv,index,wot)
  %7660 = extractvalue %dx.types.ResRet.i32 %7659, 0
  %7661 = add i32 %7645, 44
  %7662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7661, i32 undef)  ; BufferLoad(srv,index,wot)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = add i32 %7645, 48
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.ResRet.f32 %7665, 3
  %7670 = add i32 %7645, 64
  %7671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7670, i32 undef)  ; BufferLoad(srv,index,wot)
  %7672 = extractvalue %dx.types.ResRet.f32 %7671, 0
  %7673 = extractvalue %dx.types.ResRet.f32 %7671, 1
  %7674 = extractvalue %dx.types.ResRet.f32 %7671, 2
  %7675 = extractvalue %dx.types.ResRet.f32 %7671, 3
  %7676 = add i32 %7645, 80
  %7677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7676, i32 undef)  ; BufferLoad(srv,index,wot)
  %7678 = extractvalue %dx.types.ResRet.f32 %7677, 1
  %7679 = extractvalue %dx.types.ResRet.f32 %7677, 2
  %7680 = add i32 %7645, 92
  %7681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7680, i32 undef)  ; BufferLoad(srv,index,wot)
  %7682 = extractvalue %dx.types.ResRet.i32 %7681, 0
  %7683 = call float @dx.op.dot3.f32(i32 55, float %7647, float %7648, float %7649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = select i1 %217, float %7678, float %7647
  %7685 = select i1 %217, float %7683, float %7648
  %7686 = select i1 %217, float %7679, float %7649
  %7687 = and i32 %7682, 65535
  %7688 = uitofp i32 %7687 to float
  %7689 = lshr i32 %7682, 16
  %7690 = uitofp i32 %7689 to float
  %7691 = and i32 %7660, 65535
  %7692 = and i32 %7660, 50331648
  %7693 = icmp slt i32 %7660, 0
  %7694 = icmp eq i32 %7692, 33554432
  %7695 = fsub fast float %7666, %155
  %7696 = fsub fast float %7667, %156
  %7697 = fsub fast float %7668, %157
  %7698 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %7697, float %7695, float %7696, float %7697)  ; Dot3(ax,ay,az,bx,by,bz)
  %7699 = call float @dx.op.unary.f32(i32 24, float %7698)  ; Sqrt(value)
  %7700 = fdiv fast float 1.000000e+00, %7699
  %7701 = fmul fast float %7700, %7695
  %7702 = fmul fast float %7700, %7696
  %7703 = fmul fast float %7700, %7697
  %7704 = fadd fast float %7699, %7652
  %7705 = fdiv fast float 1.000000e+00, %7704
  %7706 = fmul float %7663, %7705
  %7707 = fmul float %7706, %7706
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  br i1 %7694, label %7709, label %7730

; <label>:7709                                    ; preds = %7632
  %7710 = fmul fast float %7674, %7655
  %7711 = fmul fast float %7674, %7656
  %7712 = fmul fast float %7674, %7657
  %7713 = fadd fast float %7695, %7710
  %7714 = fadd fast float %7696, %7711
  %7715 = fadd fast float %7697, %7712
  %7716 = call float @dx.op.dot3.f32(i32 55, float %7713, float %7714, float %7715, float %7713, float %7714, float %7715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.unary.f32(i32 25, float %7716)  ; Rsqrt(value)
  %7718 = fmul fast float %7717, %7713
  %7719 = fmul fast float %7717, %7714
  %7720 = fmul fast float %7717, %7715
  %7721 = fsub fast float %155, %7666
  %7722 = fsub fast float %156, %7667
  %7723 = fsub fast float %157, %7668
  %7724 = fsub fast float -0.000000e+00, %7721
  %7725 = fsub fast float -0.000000e+00, %7722
  %7726 = fsub fast float -0.000000e+00, %7723
  %7727 = call float @dx.op.dot3.f32(i32 55, float %7724, float %7725, float %7726, float %7655, float %7656, float %7657)  ; Dot3(ax,ay,az,bx,by,bz)
  %7728 = fcmp fast ogt float %7727, 0.000000e+00
  %7729 = uitofp i1 %7728 to float
  br label %7730

; <label>:7730                                    ; preds = %7709, %7632
  %7731 = phi float [ %7729, %7709 ], [ 1.000000e+00, %7632 ]
  %7732 = phi float [ %7718, %7709 ], [ %7701, %7632 ]
  %7733 = phi float [ %7719, %7709 ], [ %7702, %7632 ]
  %7734 = phi float [ %7720, %7709 ], [ %7703, %7632 ]
  %7735 = call float @dx.op.dot3.f32(i32 55, float %7655, float %7656, float %7657, float %7732, float %7733, float %7734)  ; Dot3(ax,ay,az,bx,by,bz)
  %7736 = fmul fast float %7735, %7735
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = fsub fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7738, 5.000000e-01
  %7740 = fcmp fast ogt float %7735, 0.000000e+00
  %7741 = fsub fast float 1.000000e+00, %7739
  %7742 = select i1 %7740, float %7739, float %7741
  %7743 = fmul fast float %7742, %7690
  %7744 = fadd fast float %7743, %7688
  %7745 = fmul fast float %7744, 0x3EF0001000000000
  %7746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7745, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = fmul fast float %7735, %7672
  %7749 = fadd fast float %7748, %7673
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = select i1 %7694, float 1.000000e+00, float %7750
  %7752 = select i1 %7694, float %7750, float 1.000000e+00
  %7753 = fmul fast float %7699, %7669
  %7754 = fsub fast float 1.000000e+00, %7753
  %7755 = fmul fast float %7754, %7675
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7757 = fmul fast float %7756, %7752
  %7758 = fmul fast float %7757, 2.000000e+00
  %7759 = fsub fast float 3.000000e+00, %7758
  %7760 = fmul fast float %7747, %7731
  %7761 = fmul fast float %7757, %7757
  %7762 = fmul fast float %7761, %7760
  %7763 = fmul fast float %7762, %7759
  %7764 = call float @dx.op.binary.f32(i32 36, float %7763, float %7763)  ; FMin(a,b)
  %7765 = call float @dx.op.binary.f32(i32 36, float %7763, float %7764)  ; FMin(a,b)
  %7766 = fcmp fast ogt float %7765, 0.000000e+00
  br i1 %7766, label %7775, label %7767, !dx.controlflow.hints !118

; <label>:7767                                    ; preds = %8513, %8119, %7730
  %7768 = phi float [ %7634, %8119 ], [ %7634, %7730 ], [ %8556, %8513 ]
  %7769 = phi float [ %7635, %8119 ], [ %7635, %7730 ], [ %8557, %8513 ]
  %7770 = phi float [ %7636, %8119 ], [ %7636, %7730 ], [ %8558, %8513 ]
  %7771 = phi float [ %7637, %8119 ], [ %7637, %7730 ], [ %8550, %8513 ]
  %7772 = phi float [ %7638, %8119 ], [ %7638, %7730 ], [ %8551, %8513 ]
  %7773 = phi float [ %7639, %8119 ], [ %7639, %7730 ], [ %8552, %8513 ]
  %7774 = icmp eq i32 %7633, %7643
  br i1 %7774, label %8559, label %7632

; <label>:7775                                    ; preds = %7730
  %7776 = icmp eq i32 %7691, 255
  br i1 %7776, label %7875, label %7777, !dx.controlflow.hints !119

; <label>:7777                                    ; preds = %7775
  %7778 = mul nuw nsw i32 %7691, 176
  %7779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7778, i32 undef)  ; BufferLoad(srv,index,wot)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.ResRet.f32 %7779, 3
  %7784 = add nuw nsw i32 %7778, 16
  %7785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7784, i32 undef)  ; BufferLoad(srv,index,wot)
  %7786 = extractvalue %dx.types.ResRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.ResRet.f32 %7785, 1
  %7788 = add nuw nsw i32 %7778, 32
  %7789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7788, i32 undef)  ; BufferLoad(srv,index,wot)
  %7790 = extractvalue %dx.types.ResRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.ResRet.f32 %7789, 1
  %7792 = extractvalue %dx.types.ResRet.f32 %7789, 2
  %7793 = add nuw nsw i32 %7778, 48
  %7794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7793, i32 undef)  ; BufferLoad(srv,index,wot)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.ResRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.ResRet.f32 %7794, 2
  %7798 = extractvalue %dx.types.ResRet.f32 %7794, 3
  %7799 = add nuw nsw i32 %7778, 64
  %7800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7799, i32 undef)  ; BufferLoad(srv,index,wot)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  %7804 = extractvalue %dx.types.ResRet.f32 %7800, 3
  %7805 = add nuw nsw i32 %7778, 80
  %7806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7805, i32 undef)  ; BufferLoad(srv,index,wot)
  %7807 = extractvalue %dx.types.ResRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.ResRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.ResRet.f32 %7806, 2
  %7810 = extractvalue %dx.types.ResRet.f32 %7806, 3
  %7811 = add nuw nsw i32 %7778, 96
  %7812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7811, i32 undef)  ; BufferLoad(srv,index,wot)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = extractvalue %dx.types.ResRet.f32 %7812, 3
  %7817 = bitcast float %7787 to i32
  %7818 = fmul fast float %7792, %107
  %7819 = fmul fast float %7792, %108
  %7820 = fmul fast float %7792, %109
  %7821 = fadd fast float %7818, %155
  %7822 = fadd fast float %7819, %156
  %7823 = fadd fast float %7820, %157
  %7824 = fmul fast float %7821, %7795
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7822, float %7801, float %7824)  ; FMad(a,b,c)
  %7826 = call float @dx.op.tertiary.f32(i32 46, float %7823, float %7807, float %7825)  ; FMad(a,b,c)
  %7827 = fadd fast float %7826, %7813
  %7828 = fmul fast float %7821, %7796
  %7829 = call float @dx.op.tertiary.f32(i32 46, float %7822, float %7802, float %7828)  ; FMad(a,b,c)
  %7830 = call float @dx.op.tertiary.f32(i32 46, float %7823, float %7808, float %7829)  ; FMad(a,b,c)
  %7831 = fadd fast float %7830, %7814
  %7832 = fmul fast float %7821, %7797
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %7822, float %7803, float %7832)  ; FMad(a,b,c)
  %7834 = call float @dx.op.tertiary.f32(i32 46, float %7823, float %7809, float %7833)  ; FMad(a,b,c)
  %7835 = fadd fast float %7834, %7815
  %7836 = fmul fast float %7821, %7798
  %7837 = call float @dx.op.tertiary.f32(i32 46, float %7822, float %7804, float %7836)  ; FMad(a,b,c)
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %7823, float %7810, float %7837)  ; FMad(a,b,c)
  %7839 = fadd fast float %7838, %7816
  %7840 = fdiv fast float %7827, %7839
  %7841 = fdiv fast float %7831, %7839
  %7842 = fdiv fast float %7835, %7839
  %7843 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7842)  ; FMax(a,b)
  %7844 = fmul fast float %230, 0x401921FB60000000
  %7845 = call float @dx.op.unary.f32(i32 13, float %7844)  ; Sin(value)
  %7846 = call float @dx.op.unary.f32(i32 12, float %7844)  ; Cos(value)
  %7847 = fsub fast float -0.000000e+00, %7845
  %7848 = fmul fast float %7782, 5.000000e-01
  %7849 = call float @dx.op.dot2.f32(i32 54, float %230, float %230, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7850 = call float @dx.op.unary.f32(i32 22, float %7849)  ; Frc(value)
  %7851 = fmul fast float %7850, 0x404A7DD040000000
  %7852 = call float @dx.op.unary.f32(i32 22, float %7851)  ; Frc(value)
  %7853 = fmul fast float %7852, %7791
  %7854 = fadd fast float %7853, %7848
  %7855 = call float @dx.op.tertiary.f32(i32 46, float %7854, float %7847, float 0.000000e+00)  ; FMad(a,b,c)
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %7854, float %7846, float 0.000000e+00)  ; FMad(a,b,c)
  %7857 = fadd fast float %7855, %7840
  %7858 = fadd fast float %7856, %7841
  %7859 = fmul fast float %7857, %7786
  %7860 = fmul fast float %7858, %7786
  %7861 = call float @dx.op.binary.f32(i32 35, float %7859, float %7782)  ; FMax(a,b)
  %7862 = call float @dx.op.binary.f32(i32 35, float %7860, float %7782)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 36, float %7861, float %7783)  ; FMin(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7862, float %7783)  ; FMin(a,b)
  %7865 = fadd fast float %7863, %7780
  %7866 = fadd fast float %7864, %7781
  %7867 = uitofp i32 %7817 to float
  %7868 = fadd fast float %7843, %7790
  %7869 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7865, float %7866, float %7867, float undef, i32 0, i32 0, i32 undef, float %7868)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 0
  %7871 = fadd fast float %7870, -1.000000e+00
  %7872 = fmul fast float %7871, %7751
  %7873 = fadd fast float %7872, 1.000000e+00
  %7874 = fmul fast float %7873, %7763
  br label %7875

; <label>:7875                                    ; preds = %7777, %7775
  %7876 = phi float [ %7874, %7777 ], [ %7763, %7775 ]
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7876)  ; FMin(a,b)
  %7878 = call float @dx.op.binary.f32(i32 36, float %7876, float %7877)  ; FMin(a,b)
  %7879 = fcmp fast ogt float %7878, 0.000000e+00
  %7880 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %7701, float %7702, float %7703)  ; Dot3(ax,ay,az,bx,by,bz)
  %7881 = fcmp fast ogt float %7880, 0.000000e+00
  %7882 = and i1 %7879, %7881
  br i1 %7882, label %7883, label %8119, !dx.controlflow.hints !120

; <label>:7883                                    ; preds = %7875
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 1
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7888 = select i1 %5715, float %7885, float %7887
  %7889 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7890 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7891 = select i1 %5715, float %7889, float %7890
  %7892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.i32 %7892, 0
  %7894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.i32 %7894, 0
  %7896 = select i1 %5715, i32 %7893, i32 %7895
  %7897 = fcmp fast olt float %7888, 5.000000e-01
  %7898 = icmp eq i32 %7896, 0
  %7899 = or i1 %7897, %7898
  br i1 %7899, label %8114, label %7900

; <label>:7900                                    ; preds = %7883
  %7901 = fmul fast float %7695, %7695
  %7902 = fmul fast float %7696, %7696
  %7903 = fadd fast float %7901, %7902
  %7904 = fmul fast float %7697, %7697
  %7905 = fadd fast float %7903, %7904
  %7906 = call float @dx.op.unary.f32(i32 24, float %7905)  ; Sqrt(value)
  %7907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.i32 %7907, 0
  %7909 = uitofp i32 %7908 to float
  %7910 = fmul fast float %7888, %7663
  %7911 = fdiv fast float %7910, %7906
  %7912 = call float @dx.op.binary.f32(i32 36, float %7911, float 1.000000e+01)  ; FMin(a,b)
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %7915 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7916 = extractvalue %dx.types.CBufRet.f32 %7913, 2
  %7917 = extractvalue %dx.types.CBufRet.f32 %7913, 3
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7921 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7922 = extractvalue %dx.types.CBufRet.f32 %7918, 3
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.CBufRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %7927 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7928 = fmul fast float %231, 0x401061CAC0000000
  %7929 = fmul fast float %231, 0x4023E1D7E0000000
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7932 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7933 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %7934 = extractvalue %dx.types.CBufRet.f32 %7930, 3
  %7935 = fsub fast float -0.000000e+00, %7701
  %7936 = fmul fast float %7703, %7935
  %7937 = fmul fast float %7701, %7935
  %7938 = fmul fast float %7702, %7702
  %7939 = fsub fast float %7937, %7938
  %7940 = fdiv fast float 1.000000e+00, %91
  %7941 = fmul fast float %7933, %100
  %7942 = fmul fast float %7934, %101
  %7943 = fmul fast float %7888, %7701
  %7944 = fmul fast float %7888, %7703
  %7945 = fadd fast float %7943, %155
  %7946 = fadd fast float %7944, %157
  %7947 = fadd fast float %7929, 5.000000e-01
  %7948 = call float @dx.op.unary.f32(i32 22, float %7947)  ; Frc(value)
  %7949 = bitcast float %7948 to i32
  %7950 = ashr i32 %7949, 1
  %7951 = add nsw i32 %7950, 532487669
  %7952 = bitcast i32 %7951 to float
  %7953 = fmul fast float %7952, %7912
  %7954 = fadd fast float %7928, 5.000000e-01
  %7955 = call float @dx.op.unary.f32(i32 22, float %7954)  ; Frc(value)
  %7956 = fmul fast float %7955, 0x401921FB60000000
  %7957 = call float @dx.op.unary.f32(i32 12, float %7956)  ; Cos(value)
  %7958 = fmul fast float %7957, %7957
  %7959 = fsub fast float 1.000000e+00, %7958
  %7960 = bitcast float %7959 to i32
  %7961 = ashr i32 %7960, 1
  %7962 = add nsw i32 %7961, 532487669
  %7963 = bitcast i32 %7962 to float
  %7964 = fmul fast float %7953, %7957
  %7965 = fmul fast float %7964, %7702
  %7966 = fmul fast float %7964, %7935
  %7967 = fadd fast float %7945, %7965
  %7968 = fmul fast float %7963, %7953
  %7969 = fmul fast float %7936, %7968
  %7970 = fmul fast float %7968, %7703
  %7971 = fmul fast float %7968, %7939
  %7972 = fsub fast float %7967, %7969
  %7973 = fadd fast float %7970, %7888
  %7974 = fmul fast float %7973, %7702
  %7975 = fadd fast float %7966, %156
  %7976 = fadd fast float %7975, %7974
  %7977 = fadd fast float %7946, %7971
  %7978 = fmul fast float %7972, %7914
  %7979 = call float @dx.op.tertiary.f32(i32 46, float %7976, float %7915, float %7978)  ; FMad(a,b,c)
  %7980 = call float @dx.op.tertiary.f32(i32 46, float %7977, float %7916, float %7979)  ; FMad(a,b,c)
  %7981 = fadd fast float %7980, %7917
  %7982 = fmul fast float %7972, %7919
  %7983 = call float @dx.op.tertiary.f32(i32 46, float %7976, float %7920, float %7982)  ; FMad(a,b,c)
  %7984 = call float @dx.op.tertiary.f32(i32 46, float %7977, float %7921, float %7983)  ; FMad(a,b,c)
  %7985 = fadd fast float %7984, %7922
  %7986 = fmul fast float %7972, %7924
  %7987 = call float @dx.op.tertiary.f32(i32 46, float %7976, float %7925, float %7986)  ; FMad(a,b,c)
  %7988 = call float @dx.op.tertiary.f32(i32 46, float %7977, float %7926, float %7987)  ; FMad(a,b,c)
  %7989 = fadd fast float %7988, %7927
  %7990 = fdiv fast float 1.000000e+00, %7989
  %7991 = fmul fast float %7981, 5.000000e-01
  %7992 = fmul fast float %7985, -5.000000e-01
  %7993 = fmul fast float %7991, %7990
  %7994 = fmul fast float %7992, %7990
  %7995 = fsub fast float 5.000000e-01, %7941
  %7996 = fadd fast float %7995, %7993
  %7997 = fsub fast float 5.000000e-01, %7942
  %7998 = fadd fast float %7997, %7994
  %7999 = fsub fast float %7990, %7940
  %8000 = call float @dx.op.dot2.f32(i32 54, float %7996, float %7998, float %7996, float %7998)  ; Dot2(ax,ay,bx,by)
  %8001 = call float @dx.op.binary.f32(i32 35, float %8000, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %8002 = call float @dx.op.dot2.f32(i32 54, float %7931, float %7932, float %7931, float %7932)  ; Dot2(ax,ay,bx,by)
  %8003 = fmul fast float %8002, %8001
  %8004 = call float @dx.op.unary.f32(i32 25, float %8003)  ; Rsqrt(value)
  %8005 = fmul fast float %8004, %7996
  %8006 = fmul fast float %8004, %7998
  %8007 = fadd fast float %8005, %7941
  %8008 = fadd fast float %8006, %7942
  %8009 = fmul fast float %7996, %7931
  %8010 = fmul fast float %7998, %7932
  %8011 = fmul fast float %8009, %8009
  %8012 = fmul fast float %8010, %8010
  %8013 = fadd fast float %8011, %8012
  %8014 = call float @dx.op.unary.f32(i32 24, float %8013)  ; Sqrt(value)
  %8015 = fdiv fast float 1.000000e+00, %8014
  %8016 = fmul fast float %8014, 3.906250e-03
  %8017 = fmul fast float %5714, 0x3F70624DE0000000
  %8018 = fadd fast float %8017, 0x3F70624DE0000000
  %8019 = icmp sgt i32 %7896, -1
  br i1 %8019, label %8020, label %8079

; <label>:8020                                    ; preds = %7900
  br label %8021

; <label>:8021                                    ; preds = %8075, %8020
  %8022 = phi float [ %8053, %8075 ], [ %91, %8020 ]
  %8023 = phi float [ %8040, %8075 ], [ %91, %8020 ]
  %8024 = phi float [ %8023, %8075 ], [ %91, %8020 ]
  %8025 = phi i32 [ %8076, %8075 ], [ 0, %8020 ]
  %8026 = sitofp i32 %8025 to float
  %8027 = fadd fast float %231, 5.000000e-01
  %8028 = call float @dx.op.unary.f32(i32 22, float %8027)  ; Frc(value)
  %8029 = fadd fast float %8026, %8028
  %8030 = sitofp i32 %7896 to float
  %8031 = fdiv fast float %8029, %8030
  %8032 = fmul fast float %8031, %8031
  %8033 = call float @dx.op.binary.f32(i32 36, float %8032, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %8034 = fmul fast float %8033, %7996
  %8035 = fmul fast float %8033, %7998
  %8036 = fmul fast float %8033, %7999
  %8037 = fadd fast float %8034, %8007
  %8038 = fadd fast float %8035, %8008
  %8039 = fadd fast float %8036, %7940
  %8040 = fdiv fast float 1.000000e+00, %8039
  %8041 = icmp ne i32 %7908, 0
  %8042 = fmul fast float %8016, %8033
  %8043 = call float @dx.op.binary.f32(i32 36, float %8042, float %7909)  ; FMin(a,b)
  %8044 = select i1 %8041, float %8043, float 0.000000e+00
  %8045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %8037, float %8038, float undef, float undef, i32 0, i32 0, i32 undef, float %8044)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8046 = extractvalue %dx.types.ResRet.f32 %8045, 0
  %8047 = fcmp fast ogt float %8046, -1.000000e+00
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8050 = select i1 %8047, float %8049, float 1.000000e+00
  %8051 = fadd fast float %8046, 1.000000e+00
  %8052 = fmul fast float %8050, %8051
  %8053 = call float @dx.op.unary.f32(i32 6, float %8052)  ; FAbs(value)
  %8054 = fmul fast float %8053, %8018
  %8055 = fsub fast float %8040, %8053
  %8056 = fsub fast float %8055, %8054
  %8057 = fcmp fast ogt float %8056, 0.000000e+00
  %8058 = fcmp fast ogt float %7891, 0.000000e+00
  br i1 %8058, label %8059, label %8062

; <label>:8059                                    ; preds = %8021
  %8060 = fsub fast float %8040, %8024
  %8061 = call float @dx.op.binary.f32(i32 35, float %8060, float %7891)  ; FMax(a,b)
  br label %8062

; <label>:8062                                    ; preds = %8059, %8021
  %8063 = phi float [ %8061, %8059 ], [ %7888, %8021 ]
  %8064 = fcmp fast olt float %8056, %8063
  %8065 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8066 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8067 = fcmp fast oeq float %8037, %8065
  %8068 = fcmp fast oeq float %8038, %8066
  %8069 = and i1 %8067, %8068
  %8070 = and i1 %8057, %8064
  %8071 = and i1 %8070, %8069
  %8072 = fcmp fast ogt float %8033, %8015
  %8073 = and i1 %8072, %8071
  %8074 = zext i1 %8073 to i32
  br i1 %8073, label %8078, label %8075

; <label>:8075                                    ; preds = %8062
  %8076 = add nuw nsw i32 %8025, 1
  %8077 = icmp slt i32 %8025, %7896
  br i1 %8077, label %8021, label %8078

; <label>:8078                                    ; preds = %8075, %8062
  br label %8079

; <label>:8079                                    ; preds = %8078, %7900
  %8080 = phi i32 [ 0, %7900 ], [ %8074, %8078 ]
  %8081 = phi float [ %91, %7900 ], [ %8053, %8078 ]
  %8082 = phi float [ %91, %7900 ], [ %8022, %8078 ]
  %8083 = phi float [ %91, %7900 ], [ %8040, %8078 ]
  %8084 = phi float [ %91, %7900 ], [ %8023, %8078 ]
  %8085 = fsub fast float %8084, %8082
  %8086 = fsub fast float %8083, %8081
  %8087 = fsub fast float %8085, %8086
  %8088 = fcmp fast une float %8087, 0.000000e+00
  %8089 = fmul fast float %8085, %8083
  %8090 = fmul fast float %8084, %8086
  %8091 = fsub fast float %8089, %8090
  %8092 = fdiv fast float 1.000000e+00, %8087
  %8093 = fmul fast float %8091, %8092
  %8094 = select i1 %8088, float %8093, float %8083
  %8095 = fdiv fast float 1.000000e+00, %8094
  %8096 = fsub fast float %8095, %7940
  %8097 = fdiv fast float %8096, %7999
  %8098 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8099 = fmul fast float %8098, %7996
  %8100 = fmul fast float %8098, %7998
  %8101 = fadd fast float %8099, %8007
  %8102 = fadd fast float %8100, %8008
  %8103 = fadd fast float %8101, -5.000000e-01
  %8104 = fadd fast float %8102, -5.000000e-01
  %8105 = call float @dx.op.unary.f32(i32 6, float %8103)  ; FAbs(value)
  %8106 = call float @dx.op.unary.f32(i32 6, float %8104)  ; FAbs(value)
  %8107 = fadd fast float %8105, -5.000000e-01
  %8108 = fadd fast float %8106, -5.000000e-01
  %8109 = call float @dx.op.binary.f32(i32 35, float %8107, float %8108)  ; FMax(a,b)
  %8110 = fcmp fast olt float %8109, 0.000000e+00
  %8111 = icmp ne i32 %8080, 0
  %8112 = and i1 %8111, %8110
  %8113 = select i1 %8112, float 0.000000e+00, float 1.000000e+00
  br label %8114

; <label>:8114                                    ; preds = %8079, %7883
  %8115 = phi float [ %8113, %8079 ], [ 1.000000e+00, %7883 ]
  %8116 = fmul fast float %8115, %7876
  %8117 = fmul fast float %8115, %7876
  %8118 = fmul fast float %8115, %7876
  br label %8119

; <label>:8119                                    ; preds = %8114, %7875
  %8120 = phi float [ %8116, %8114 ], [ %7876, %7875 ]
  %8121 = phi float [ %8117, %8114 ], [ %7876, %7875 ]
  %8122 = phi float [ %8118, %8114 ], [ %7876, %7875 ]
  %8123 = call float @dx.op.binary.f32(i32 36, float %8121, float %8122)  ; FMin(a,b)
  %8124 = call float @dx.op.binary.f32(i32 36, float %8120, float %8123)  ; FMin(a,b)
  %8125 = fcmp fast ogt float %8124, 0.000000e+00
  br i1 %8125, label %8126, label %7767, !dx.controlflow.hints !121

; <label>:8126                                    ; preds = %8119
  %8127 = fmul fast float %8120, %7684
  %8128 = fmul fast float %8120, %7685
  %8129 = fmul fast float %8120, %7686
  %8130 = fsub fast float %7668, %5497
  %8131 = fcmp fast ogt float %8130, 0.000000e+00
  %8132 = fsub fast float %157, %5497
  %8133 = fcmp fast ogt float %8132, 0.000000e+00
  %8134 = xor i1 %8133, %8131
  %8135 = fsub fast float %5497, %7668
  %8136 = fmul fast float %8135, 2.000000e+00
  %8137 = fadd fast float %8136, %7668
  %8138 = select i1 %8134, float %7668, float %8137
  %8139 = fsub fast float %8138, %157
  %8140 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %8139, float %7695, float %7696, float %8139)  ; Dot3(ax,ay,az,bx,by,bz)
  %8141 = call float @dx.op.unary.f32(i32 25, float %8140)  ; Rsqrt(value)
  %8142 = fmul fast float %8141, %7695
  %8143 = fmul fast float %8141, %7696
  %8144 = fmul fast float %8141, %8139
  %8145 = fsub fast float %5497, %157
  %8146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8145)  ; Dot3(ax,ay,az,bx,by,bz)
  %8147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8142, float %8143, float %8144)  ; Dot3(ax,ay,az,bx,by,bz)
  %8148 = fdiv fast float 1.000000e+00, %8147
  %8149 = fmul fast float %8148, %8146
  %8150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8132, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8151 = fcmp fast ogt float %8150, 0.000000e+00
  %8152 = fcmp fast olt float %8150, 0.000000e+00
  %8153 = zext i1 %8151 to i32
  %8154 = zext i1 %8152 to i32
  %8155 = sub nsw i32 %8153, %8154
  %8156 = sitofp i32 %8155 to float
  %8157 = fsub fast float %8138, %5497
  %8158 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %8157, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8159 = fcmp fast ogt float %8158, 0.000000e+00
  %8160 = fcmp fast olt float %8158, 0.000000e+00
  %8161 = zext i1 %8159 to i32
  %8162 = zext i1 %8160 to i32
  %8163 = sub nsw i32 %8161, %8162
  %8164 = sitofp i32 %8163 to float
  %8165 = fcmp fast une float %8156, %8164
  br i1 %8165, label %8166, label %8176

; <label>:8166                                    ; preds = %8126
  %8167 = fmul fast float %8149, %8144
  %8168 = fmul fast float %8149, %8143
  %8169 = fmul fast float %8149, %8142
  %8170 = fmul fast float %8169, %8169
  %8171 = fmul fast float %8168, %8168
  %8172 = fadd fast float %8170, %8171
  %8173 = fmul fast float %8167, %8167
  %8174 = fadd fast float %8172, %8173
  %8175 = call float @dx.op.unary.f32(i32 24, float %8174)  ; Sqrt(value)
  br label %8188

; <label>:8176                                    ; preds = %8126
  %8177 = icmp slt i32 %8155, 0
  br i1 %8177, label %8178, label %8188

; <label>:8178                                    ; preds = %8176
  %8179 = fsub fast float %155, %7666
  %8180 = fsub fast float %156, %7667
  %8181 = fsub fast float %157, %8138
  %8182 = fmul fast float %8179, %8179
  %8183 = fmul fast float %8180, %8180
  %8184 = fadd fast float %8182, %8183
  %8185 = fmul fast float %8181, %8181
  %8186 = fadd fast float %8184, %8185
  %8187 = call float @dx.op.unary.f32(i32 24, float %8186)  ; Sqrt(value)
  br label %8188

; <label>:8188                                    ; preds = %8178, %8176, %8166
  %8189 = phi float [ %8175, %8166 ], [ %8187, %8178 ], [ 0.000000e+00, %8176 ]
  %8190 = and i1 %8133, %8131
  %8191 = fsub fast float -0.000000e+00, %8189
  %8192 = select i1 %8190, float -0.000000e+00, float %8191
  %8193 = fmul fast float %5498, 0x3FF7154760000000
  %8194 = fmul fast float %8193, %8192
  %8195 = fmul fast float %5499, 0x3FF7154760000000
  %8196 = fmul fast float %8195, %8192
  %8197 = fmul fast float %5500, 0x3FF7154760000000
  %8198 = fmul fast float %8197, %8192
  %8199 = call float @dx.op.unary.f32(i32 21, float %8194)  ; Exp(value)
  %8200 = call float @dx.op.unary.f32(i32 21, float %8196)  ; Exp(value)
  %8201 = call float @dx.op.unary.f32(i32 21, float %8198)  ; Exp(value)
  %8202 = call float @dx.op.unary.f32(i32 7, float %8199)  ; Saturate(value)
  %8203 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8204 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8205 = fmul fast float %8127, %8202
  %8206 = fmul fast float %8128, %8203
  %8207 = fmul fast float %8129, %8204
  %8208 = fsub fast float %7701, %5697
  %8209 = fsub fast float %7702, %5696
  %8210 = fsub fast float %7703, %5695
  %8211 = call float @dx.op.dot3.f32(i32 55, float %8208, float %8209, float %8210, float %8208, float %8209, float %8210)  ; Dot3(ax,ay,az,bx,by,bz)
  %8212 = call float @dx.op.unary.f32(i32 25, float %8211)  ; Rsqrt(value)
  %8213 = fmul fast float %8212, %8208
  %8214 = fmul fast float %8212, %8209
  %8215 = fmul fast float %8212, %8210
  %8216 = call float @dx.op.dot3.f32(i32 55, float %7701, float %7702, float %7703, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %8217 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5693, float %5692, float %8213, float %8214, float %8215)  ; Dot3(ax,ay,az,bx,by,bz)
  %8218 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8219 = fmul fast float %8218, %7708
  %8220 = fmul fast float %8218, %8218
  %8221 = fmul fast float %8220, %5731
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = fmul fast float %8219, %8222
  %8224 = bitcast float %7698 to i32
  %8225 = ashr i32 %8224, 1
  %8226 = sub nsw i32 1597463007, %8225
  %8227 = bitcast i32 %8226 to float
  %8228 = fmul fast float %8227, %7695
  %8229 = fmul fast float %8227, %7696
  %8230 = fmul fast float %8227, %7697
  %8231 = fsub fast float %8228, %5697
  %8232 = fsub fast float %8229, %5696
  %8233 = fsub fast float %8230, %5695
  %8234 = call float @dx.op.dot3.f32(i32 55, float %8231, float %8232, float %8233, float %8231, float %8232, float %8233)  ; Dot3(ax,ay,az,bx,by,bz)
  %8235 = call float @dx.op.unary.f32(i32 25, float %8234)  ; Rsqrt(value)
  %8236 = fmul fast float %8231, %8235
  %8237 = fmul fast float %8232, %8235
  %8238 = fmul fast float %8233, %8235
  %8239 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %8236, float %8237, float %8238)  ; Dot3(ax,ay,az,bx,by,bz)
  %8240 = fmul fast float %8239, %8239
  %8241 = call float @dx.op.unary.f32(i32 6, float %8216)  ; FAbs(value)
  %8242 = call float @dx.op.binary.f32(i32 35, float %6114, float 0x3F847AE140000000)  ; FMax(a,b)
  %8243 = fmul fast float %8242, %8242
  %8244 = fmul fast float %8243, %8243
  %8245 = fsub fast float 1.000000e+00, %8244
  %8246 = fmul fast float %5718, %5718
  %8247 = fmul fast float %8246, %8245
  %8248 = fadd fast float %8247, %8244
  %8249 = bitcast float %8248 to i32
  %8250 = ashr i32 %8249, 1
  %8251 = add nsw i32 %8250, 532487669
  %8252 = bitcast i32 %8251 to float
  %8253 = fadd fast float %8252, %5718
  %8254 = fmul fast float %8244, %8240
  %8255 = fsub fast float 1.000000e+00, %8240
  %8256 = fadd fast float %8255, %8254
  %8257 = fmul fast float %8241, %8241
  %8258 = fmul fast float %8257, %8245
  %8259 = fadd fast float %8258, %8244
  %8260 = bitcast float %8259 to i32
  %8261 = ashr i32 %8260, 1
  %8262 = add nsw i32 %8261, 532487669
  %8263 = bitcast i32 %8262 to float
  %8264 = fadd fast float %8263, %8241
  %8265 = fmul fast float %8256, %8256
  %8266 = fmul fast float %8265, %8253
  %8267 = fmul fast float %8266, %8264
  %8268 = fdiv fast float 1.000000e+00, %8267
  %8269 = bitcast float %8244 to i32
  %8270 = sitofp i32 %8269 to float
  %8271 = fmul fast float %8270, 0x3FE7F73180000000
  %8272 = fadd fast float %8271, 0x41AFE27C40000000
  %8273 = fptosi float %8272 to i32
  %8274 = bitcast i32 %8273 to float
  %8275 = fmul fast float %7663, 0x3FD80E9D60000000
  %8276 = fmul fast float %8275, %8227
  %8277 = fadd fast float %8274, %8276
  %8278 = bitcast float %8277 to i32
  %8279 = sub nsw i32 2129859010, %8278
  %8280 = bitcast i32 %8279 to float
  %8281 = fmul fast float %8244, %8268
  %8282 = fmul fast float %8281, %8274
  %8283 = fmul fast float %8282, %8280
  %8284 = fmul fast float %5976, 0x3FF9999980000000
  %8285 = fsub fast float 5.000000e+00, %8284
  %8286 = call float @dx.op.unary.f32(i32 6, float %8217)  ; FAbs(value)
  %8287 = fsub fast float 1.000000e+00, %8286
  %8288 = fmul fast float %5976, 0x41D9660740000000
  %8289 = fadd fast float %8288, 0xC1EFBF8940000000
  %8290 = bitcast float %8287 to i32
  %8291 = sitofp i32 %8290 to float
  %8292 = fmul fast float %8291, %8285
  %8293 = fadd fast float %8289, %8292
  %8294 = fptosi float %8293 to i32
  %8295 = bitcast i32 %8294 to float
  %8296 = fsub fast float 1.000000e+00, %5701
  %8297 = fsub fast float 1.000000e+00, %5702
  %8298 = fsub fast float 1.000000e+00, %5716
  %8299 = fmul fast float %8295, %8296
  %8300 = fmul fast float %8295, %8297
  %8301 = fmul fast float %8295, %8298
  %8302 = fadd fast float %8299, %5701
  %8303 = fadd fast float %8300, %5702
  %8304 = fadd fast float %8301, %5716
  br i1 %5999, label %8305, label %8328

; <label>:8305                                    ; preds = %8188
  %8306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %8286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8307 = extractvalue %dx.types.ResRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.ResRet.f32 %8306, 1
  %8309 = extractvalue %dx.types.ResRet.f32 %8306, 2
  %8310 = fadd fast float %8307, -5.000000e-01
  %8311 = fadd fast float %8308, -5.000000e-01
  %8312 = fadd fast float %8309, -5.000000e-01
  %8313 = fmul fast float %5701, 4.000000e+00
  %8314 = fmul fast float %8313, %8296
  %8315 = fmul fast float %8314, %8310
  %8316 = fmul fast float %5702, 4.000000e+00
  %8317 = fmul fast float %8316, %8297
  %8318 = fmul fast float %8317, %8311
  %8319 = fmul fast float %5716, 4.000000e+00
  %8320 = fmul fast float %8319, %8298
  %8321 = fmul fast float %8320, %8312
  %8322 = fadd fast float %8315, %8302
  %8323 = fadd fast float %8318, %8303
  %8324 = fadd fast float %8321, %8304
  %8325 = call float @dx.op.unary.f32(i32 7, float %8322)  ; Saturate(value)
  %8326 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8327 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  br label %8328

; <label>:8328                                    ; preds = %8305, %8188
  %8329 = phi float [ %8325, %8305 ], [ %8302, %8188 ]
  %8330 = phi float [ %8326, %8305 ], [ %8303, %8188 ]
  %8331 = phi float [ %8327, %8305 ], [ %8304, %8188 ]
  %8332 = fmul fast float %8216, 9.843750e-01
  %8333 = fadd fast float %8332, 7.812500e-03
  %8334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8333, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.ResRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.ResRet.f32 %8334, 2
  %8338 = extractvalue %dx.types.ResRet.f32 %8334, 3
  %8339 = fsub fast float %8337, %8335
  %8340 = fsub fast float %8338, %8336
  %8341 = fmul fast float %8339, %5986
  %8342 = fmul fast float %8340, %5986
  %8343 = fadd fast float %8341, %8335
  %8344 = fadd fast float %8342, %8336
  %8345 = fmul fast float %8343, %5701
  %8346 = fmul fast float %8343, %5702
  %8347 = fmul fast float %8343, %5716
  %8348 = fadd fast float %8345, %8344
  %8349 = fadd fast float %8346, %8344
  %8350 = fadd fast float %8347, %8344
  br i1 %5999, label %8351, label %8374

; <label>:8351                                    ; preds = %8328
  %8352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %8216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8353 = extractvalue %dx.types.ResRet.f32 %8352, 0
  %8354 = extractvalue %dx.types.ResRet.f32 %8352, 1
  %8355 = extractvalue %dx.types.ResRet.f32 %8352, 2
  %8356 = fadd fast float %8353, -5.000000e-01
  %8357 = fadd fast float %8354, -5.000000e-01
  %8358 = fadd fast float %8355, -5.000000e-01
  %8359 = fmul fast float %5701, 4.000000e+00
  %8360 = fmul fast float %8359, %8296
  %8361 = fmul fast float %8360, %8356
  %8362 = fmul fast float %5702, 4.000000e+00
  %8363 = fmul fast float %8362, %8297
  %8364 = fmul fast float %8363, %8357
  %8365 = fmul fast float %5716, 4.000000e+00
  %8366 = fmul fast float %8365, %8298
  %8367 = fmul fast float %8366, %8358
  %8368 = fadd fast float %8361, %8348
  %8369 = fadd fast float %8364, %8349
  %8370 = fadd fast float %8367, %8350
  %8371 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8372 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8373 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  br label %8374

; <label>:8374                                    ; preds = %8351, %8328
  %8375 = phi float [ %8371, %8351 ], [ %8348, %8328 ]
  %8376 = phi float [ %8372, %8351 ], [ %8349, %8328 ]
  %8377 = phi float [ %8373, %8351 ], [ %8350, %8328 ]
  %8378 = call float @dx.op.binary.f32(i32 35, float %8376, float %8377)  ; FMax(a,b)
  %8379 = call float @dx.op.binary.f32(i32 35, float %8375, float %8378)  ; FMax(a,b)
  %8380 = fsub fast float 1.000000e+00, %8379
  %8381 = call float @dx.op.binary.f32(i32 35, float %8241, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8382 = fdiv fast float %4421, %8381
  %8383 = fmul fast float %6054, %8382
  %8384 = fmul fast float %6056, %8382
  %8385 = fmul fast float %6058, %8382
  %8386 = call float @dx.op.unary.f32(i32 21, float %8383)  ; Exp(value)
  %8387 = call float @dx.op.unary.f32(i32 21, float %8384)  ; Exp(value)
  %8388 = call float @dx.op.unary.f32(i32 21, float %8385)  ; Exp(value)
  %8389 = call float @dx.op.unary.f32(i32 7, float %8386)  ; Saturate(value)
  %8390 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8391 = call float @dx.op.unary.f32(i32 7, float %8388)  ; Saturate(value)
  %8392 = select i1 %6051, float %8389, float 0.000000e+00
  %8393 = select i1 %6052, float %8390, float 0.000000e+00
  %8394 = select i1 %6053, float %8391, float 0.000000e+00
  %8395 = fsub fast float -0.000000e+00, %5704
  %8396 = fsub fast float -0.000000e+00, %5705
  %8397 = fsub fast float -0.000000e+00, %5706
  %8398 = call float @dx.op.dot3.f32(i32 55, float %7701, float %7702, float %7703, float %8395, float %8396, float %8397)  ; Dot3(ax,ay,az,bx,by,bz)
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = fmul fast float %8399, %7708
  %8401 = fmul fast float %8399, 9.843750e-01
  %8402 = fadd fast float %8401, 7.812500e-03
  %8403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8402, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8404 = extractvalue %dx.types.ResRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.ResRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.ResRet.f32 %8403, 2
  %8407 = extractvalue %dx.types.ResRet.f32 %8403, 3
  %8408 = fsub fast float %8406, %8404
  %8409 = fsub fast float %8407, %8405
  %8410 = fmul fast float %8408, %5986
  %8411 = fmul fast float %8409, %5986
  %8412 = fadd fast float %8410, %8404
  %8413 = fadd fast float %8411, %8405
  %8414 = fmul fast float %8412, %5701
  %8415 = fmul fast float %8412, %5702
  %8416 = fmul fast float %8412, %5716
  %8417 = fadd fast float %8414, %8413
  %8418 = fadd fast float %8415, %8413
  %8419 = fadd fast float %8416, %8413
  br i1 %5999, label %8420, label %8443

; <label>:8420                                    ; preds = %8374
  %8421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5067, float %8399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8422 = extractvalue %dx.types.ResRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.ResRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.ResRet.f32 %8421, 2
  %8425 = fadd fast float %8422, -5.000000e-01
  %8426 = fadd fast float %8423, -5.000000e-01
  %8427 = fadd fast float %8424, -5.000000e-01
  %8428 = fmul fast float %5701, 4.000000e+00
  %8429 = fmul fast float %8428, %8296
  %8430 = fmul fast float %8429, %8425
  %8431 = fmul fast float %5702, 4.000000e+00
  %8432 = fmul fast float %8431, %8297
  %8433 = fmul fast float %8432, %8426
  %8434 = fmul fast float %5716, 4.000000e+00
  %8435 = fmul fast float %8434, %8298
  %8436 = fmul fast float %8435, %8427
  %8437 = fadd fast float %8430, %8417
  %8438 = fadd fast float %8433, %8418
  %8439 = fadd fast float %8436, %8419
  %8440 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8441 = call float @dx.op.unary.f32(i32 7, float %8438)  ; Saturate(value)
  %8442 = call float @dx.op.unary.f32(i32 7, float %8439)  ; Saturate(value)
  br label %8443

; <label>:8443                                    ; preds = %8420, %8374
  %8444 = phi float [ %8440, %8420 ], [ %8417, %8374 ]
  %8445 = phi float [ %8441, %8420 ], [ %8418, %8374 ]
  %8446 = phi float [ %8442, %8420 ], [ %8419, %8374 ]
  %8447 = call float @dx.op.binary.f32(i32 35, float %8445, float %8446)  ; FMax(a,b)
  %8448 = call float @dx.op.binary.f32(i32 35, float %8444, float %8447)  ; FMax(a,b)
  %8449 = fsub fast float 1.000000e+00, %8448
  %8450 = fmul fast float %6114, %6119
  %8451 = fadd fast float %6121, %8450
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fsub fast float %8228, %5724
  %8454 = fsub fast float %8229, %5725
  %8455 = fsub fast float %8230, %5726
  %8456 = call float @dx.op.dot3.f32(i32 55, float %8453, float %8454, float %8455, float %8453, float %8454, float %8455)  ; Dot3(ax,ay,az,bx,by,bz)
  %8457 = call float @dx.op.unary.f32(i32 25, float %8456)  ; Rsqrt(value)
  %8458 = fmul fast float %8453, %8457
  %8459 = fmul fast float %8454, %8457
  %8460 = fmul fast float %8455, %8457
  %8461 = call float @dx.op.dot3.f32(i32 55, float %8395, float %8396, float %8397, float %8458, float %8459, float %8460)  ; Dot3(ax,ay,az,bx,by,bz)
  %8462 = fmul fast float %8461, %8461
  %8463 = call float @dx.op.unary.f32(i32 6, float %8399)  ; FAbs(value)
  %8464 = call float @dx.op.binary.f32(i32 35, float %8452, float 0x3F847AE140000000)  ; FMax(a,b)
  %8465 = fmul fast float %8464, %8464
  %8466 = fmul fast float %8465, %8465
  %8467 = fsub fast float 1.000000e+00, %8466
  %8468 = fmul fast float %8246, %8467
  %8469 = fadd fast float %8468, %8466
  %8470 = bitcast float %8469 to i32
  %8471 = ashr i32 %8470, 1
  %8472 = add nsw i32 %8471, 532487669
  %8473 = bitcast i32 %8472 to float
  %8474 = fadd fast float %8473, %5718
  %8475 = fmul fast float %8466, %8462
  %8476 = fsub fast float 1.000000e+00, %8462
  %8477 = fadd fast float %8476, %8475
  %8478 = fmul fast float %8463, %8463
  %8479 = fmul fast float %8478, %8467
  %8480 = fadd fast float %8479, %8466
  %8481 = bitcast float %8480 to i32
  %8482 = ashr i32 %8481, 1
  %8483 = add nsw i32 %8482, 532487669
  %8484 = bitcast i32 %8483 to float
  %8485 = fadd fast float %8484, %8463
  %8486 = fmul fast float %8477, %8477
  %8487 = fmul fast float %8486, %8474
  %8488 = fmul fast float %8487, %8485
  %8489 = fdiv fast float 1.000000e+00, %8488
  %8490 = bitcast float %8466 to i32
  %8491 = sitofp i32 %8490 to float
  %8492 = fmul fast float %8491, 0x3FE7F73180000000
  %8493 = fadd fast float %8492, 0x41AFE27C40000000
  %8494 = fptosi float %8493 to i32
  %8495 = bitcast i32 %8494 to float
  %8496 = fadd fast float %8495, %8276
  %8497 = bitcast float %8496 to i32
  %8498 = sub nsw i32 2129859010, %8497
  %8499 = bitcast i32 %8498 to float
  %8500 = fmul fast float %8466, %8489
  %8501 = fmul fast float %8500, %8495
  %8502 = fmul fast float %8501, %8499
  br i1 %7693, label %8503, label %8513

; <label>:8503                                    ; preds = %8443
  %8504 = fmul fast float %8400, %8392
  %8505 = fmul fast float %8400, %8393
  %8506 = fmul fast float %8400, %8394
  %8507 = fmul fast float %8504, %8449
  %8508 = fmul fast float %8507, %8502
  %8509 = fmul fast float %8505, %8449
  %8510 = fmul fast float %8509, %8502
  %8511 = fmul fast float %8506, %8449
  %8512 = fmul fast float %8511, %8502
  br label %8513

; <label>:8513                                    ; preds = %8503, %8443
  %8514 = phi float [ %8508, %8503 ], [ 0.000000e+00, %8443 ]
  %8515 = phi float [ %8510, %8503 ], [ 0.000000e+00, %8443 ]
  %8516 = phi float [ %8512, %8503 ], [ 0.000000e+00, %8443 ]
  %8517 = fmul fast float %8329, %8283
  %8518 = fmul fast float %8330, %8283
  %8519 = fmul fast float %8331, %8283
  %8520 = fsub fast float 1.000000e+00, %8217
  %8521 = bitcast float %8520 to i32
  %8522 = sitofp i32 %8521 to float
  %8523 = fmul fast float %8522, 5.000000e+00
  %8524 = fadd fast float %8523, 0xC1EFBF8940000000
  %8525 = fptosi float %8524 to i32
  %8526 = bitcast i32 %8525 to float
  %8527 = fmul fast float %8526, %5068
  %8528 = fmul fast float %8380, %8527
  %8529 = fmul fast float %8528, %6046
  %8530 = fmul fast float %8528, %6047
  %8531 = fmul fast float %8528, %6048
  %8532 = fadd fast float %8529, %8517
  %8533 = fadd fast float %8530, %8518
  %8534 = fadd fast float %8531, %8519
  %8535 = fmul fast float %8532, %8223
  %8536 = fmul fast float %8533, %8223
  %8537 = fmul fast float %8534, %8223
  %8538 = fadd fast float %8535, %8514
  %8539 = fadd fast float %8536, %8515
  %8540 = fadd fast float %8537, %8516
  %8541 = fmul fast float %8205, %5064
  %8542 = fmul fast float %8541, %8223
  %8543 = fmul fast float %8542, %8380
  %8544 = fmul fast float %8206, %5064
  %8545 = fmul fast float %8544, %8223
  %8546 = fmul fast float %8545, %8380
  %8547 = fmul fast float %8207, %5064
  %8548 = fmul fast float %8547, %8223
  %8549 = fmul fast float %8548, %8380
  %8550 = fadd fast float %8543, %7637
  %8551 = fadd fast float %8546, %7638
  %8552 = fadd fast float %8549, %7639
  %8553 = fmul fast float %8541, %8538
  %8554 = fmul fast float %8544, %8539
  %8555 = fmul fast float %8547, %8540
  %8556 = fadd fast float %8553, %7634
  %8557 = fadd fast float %8554, %7635
  %8558 = fadd fast float %8555, %7636
  br label %7767

; <label>:8559                                    ; preds = %7767
  br label %8560

; <label>:8560                                    ; preds = %8559, %7600
  %8561 = phi float [ %7602, %7600 ], [ %7768, %8559 ]
  %8562 = phi float [ %7603, %7600 ], [ %7769, %8559 ]
  %8563 = phi float [ %7604, %7600 ], [ %7770, %8559 ]
  %8564 = phi float [ %7605, %7600 ], [ %7771, %8559 ]
  %8565 = phi float [ %7606, %7600 ], [ %7772, %8559 ]
  %8566 = phi float [ %7607, %7600 ], [ %7773, %8559 ]
  %8567 = add i32 %7601, 1
  %8568 = icmp ugt i32 %8567, %7597
  br i1 %8568, label %8569, label %7600

; <label>:8569                                    ; preds = %8560
  br label %8570

; <label>:8570                                    ; preds = %8569, %7550, %7540
  %8571 = phi float [ %7541, %7540 ], [ %7541, %7550 ], [ %8561, %8569 ]
  %8572 = phi float [ %7542, %7540 ], [ %7542, %7550 ], [ %8562, %8569 ]
  %8573 = phi float [ %7543, %7540 ], [ %7543, %7550 ], [ %8563, %8569 ]
  %8574 = phi float [ %7544, %7540 ], [ %7544, %7550 ], [ %8564, %8569 ]
  %8575 = phi float [ %7545, %7540 ], [ %7545, %7550 ], [ %8565, %8569 ]
  %8576 = phi float [ %7546, %7540 ], [ %7546, %7550 ], [ %8566, %8569 ]
  %8577 = fmul fast float %6075, %5064
  %8578 = fmul fast float %6076, %5064
  %8579 = fmul fast float %6077, %5064
  %8580 = fadd fast float %8577, 1.000000e+00
  %8581 = fadd fast float %8578, 1.000000e+00
  %8582 = fadd fast float %8579, 1.000000e+00
  %8583 = call float @dx.op.dot3.f32(i32 55, float %8580, float %8581, float %8582, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = fsub fast float 1.000000e+00, %8583
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = fmul fast float %8586, %6081
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 3
  %8590 = fsub fast float 1.000000e+00, %5071
  %8591 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8592 = fadd fast float %8576, %5070
  %8593 = fmul fast float %8592, %5071
  %8594 = fmul fast float %8591, %8589
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 3
  %8597 = fmul fast float %8574, %5698
  %8598 = fmul fast float %8575, %5699
  %8599 = fmul fast float %8576, %5700
  %8600 = fcmp fast ogt float %91, %177
  %8601 = and i1 %8600, %5503
  %8602 = or i1 %5509, %8601
  %8603 = icmp eq i32 %5502, 2
  %8604 = fcmp fast ole float %91, %177
  %8605 = and i1 %8604, %8603
  %8606 = or i1 %8605, %8602
  br i1 %8601, label %8607, label %8863

; <label>:8607                                    ; preds = %8570
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 3
  %8611 = fmul fast float %8609, %100
  %8612 = fmul fast float %8610, %101
  %8613 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8614 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8615 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8613, float %8614, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8616 = extractvalue %dx.types.ResRet.f32 %8615, 0
  %8617 = extractvalue %dx.types.ResRet.f32 %8615, 1
  %8618 = extractvalue %dx.types.ResRet.f32 %8615, 2
  %8619 = extractvalue %dx.types.ResRet.f32 %8615, 3
  %8620 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8613, float %8614, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8621 = extractvalue %dx.types.ResRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.ResRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.ResRet.f32 %8620, 2
  %8624 = extractvalue %dx.types.ResRet.f32 %8620, 3
  %8625 = call float @dx.op.binary.f32(i32 35, float %8617, float %8618)  ; FMax(a,b)
  %8626 = call float @dx.op.binary.f32(i32 35, float %8616, float %8625)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 35, float %8626, float %8619)  ; FMax(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8622, float %8623)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 36, float %8621, float %8628)  ; FMin(a,b)
  %8630 = call float @dx.op.binary.f32(i32 36, float %8629, float %8624)  ; FMin(a,b)
  %8631 = fmul fast float %8627, 2.550000e+02
  %8632 = fadd fast float %8631, 0x3F70101020000000
  %8633 = fptoui float %8632 to i32
  %8634 = fmul fast float %8630, 2.550000e+02
  %8635 = fadd fast float %8634, 0x3F70101020000000
  %8636 = fptoui float %8635 to i32
  %8637 = icmp ult i32 %8633, %8636
  br i1 %8637, label %8638, label %8805

; <label>:8638                                    ; preds = %8607
  %8639 = fadd fast float %91, -4.000000e+00
  %8640 = select i1 %5715, float -4.000000e+00, float %8639
  %8641 = call float @dx.op.binary.f32(i32 35, float %8640, float 0.000000e+00)  ; FMax(a,b)
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = fadd fast float %8643, %8641
  %8645 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8646 = fmul fast float %8644, %8645
  %8647 = call float @dx.op.unary.f32(i32 23, float %8646)  ; Log(value)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8649 = fmul fast float %8648, %8647
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8652 = fmul fast float %8649, %8651
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = uitofp i32 %8633 to float
  %8655 = uitofp i32 %8636 to float
  %8656 = fadd fast float %8654, 5.000000e-01
  %8657 = fadd fast float %8655, 5.000000e-01
  %8658 = fmul fast float %8651, %8656
  %8659 = fmul fast float %8651, %8657
  %8660 = fadd fast float %8658, 0x3F0FFB4800000000
  %8661 = fadd fast float %8659, 0xBF0FFB4800000000
  %8662 = call float @dx.op.binary.f32(i32 35, float %8653, float %8660)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8662, float %8661)  ; FMin(a,b)
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8668 = fmul fast float %8665, %8663
  %8669 = fadd fast float %8667, %8668
  %8670 = fadd fast float %8667, %8666
  %8671 = fsub fast float %8665, %8666
  %8672 = fadd fast float %8671, %8667
  %8673 = call float @dx.op.binary.f32(i32 35, float %8669, float %8670)  ; FMax(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8673, float %8672)  ; FMin(a,b)
  %8675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8613, float %8614, float %8674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8676 = extractvalue %dx.types.ResRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.ResRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.ResRet.f32 %8675, 2
  %8679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.i32 %8679, 0
  %8681 = extractvalue %dx.types.CBufRet.i32 %8679, 1
  %8682 = uitofp i32 %8680 to float
  %8683 = uitofp i32 %8681 to float
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  %8686 = extractvalue %dx.types.CBufRet.f32 %8684, 1
  %8687 = fmul fast float %8682, %8613
  %8688 = fmul fast float %8683, %8614
  %8689 = fadd fast float %8687, -5.000000e-01
  %8690 = fadd fast float %8688, -5.000000e-01
  %8691 = call float @dx.op.unary.f32(i32 22, float %8689)  ; Frc(value)
  %8692 = call float @dx.op.unary.f32(i32 22, float %8690)  ; Frc(value)
  %8693 = fmul fast float %8691, %8691
  %8694 = fmul fast float %8693, %8691
  %8695 = fsub fast float 3.000000e+00, %8691
  %8696 = fmul fast float %8693, %8695
  %8697 = fmul fast float %8691, 3.000000e+00
  %8698 = fmul fast float %8694, 3.000000e+00
  %8699 = fmul fast float %8693, 6.000000e+00
  %8700 = fsub fast float %8698, %8699
  %8701 = fadd fast float %8700, 4.000000e+00
  %8702 = fmul fast float %8701, 0x3FC5555560000000
  %8703 = fmul fast float %8694, -3.000000e+00
  %8704 = fadd fast float %8693, %8691
  %8705 = fmul fast float %8704, 3.000000e+00
  %8706 = fadd fast float %8703, 1.000000e+00
  %8707 = fadd fast float %8706, %8705
  %8708 = fmul fast float %8694, 0x3FC5555560000000
  %8709 = fmul fast float %8692, %8692
  %8710 = fmul fast float %8709, %8692
  %8711 = fsub fast float 3.000000e+00, %8692
  %8712 = fmul fast float %8709, %8711
  %8713 = fmul fast float %8692, 3.000000e+00
  %8714 = fmul fast float %8710, 3.000000e+00
  %8715 = fmul fast float %8709, 6.000000e+00
  %8716 = fsub fast float %8714, %8715
  %8717 = fadd fast float %8716, 4.000000e+00
  %8718 = fmul fast float %8717, 0x3FC5555560000000
  %8719 = fmul fast float %8710, -3.000000e+00
  %8720 = fadd fast float %8709, %8692
  %8721 = fmul fast float %8720, 3.000000e+00
  %8722 = fadd fast float %8719, 1.000000e+00
  %8723 = fadd fast float %8722, %8721
  %8724 = fmul fast float %8710, 0x3FC5555560000000
  %8725 = fadd fast float %8691, 1.000000e+00
  %8726 = fsub fast float 1.000000e+00, %8697
  %8727 = fadd fast float %8726, %8696
  %8728 = fadd fast float %8727, %8701
  %8729 = fmul fast float %8728, 0x3FC5555560000000
  %8730 = fdiv fast float %8702, %8729
  %8731 = fsub fast float %8725, %8730
  %8732 = fsub fast float 1.000000e+00, %8691
  %8733 = fadd fast float %8707, %8694
  %8734 = fmul fast float %8733, 0x3FC5555560000000
  %8735 = fdiv fast float %8708, %8734
  %8736 = fadd fast float %8732, %8735
  %8737 = fadd fast float %8692, 1.000000e+00
  %8738 = fsub fast float 1.000000e+00, %8713
  %8739 = fadd fast float %8738, %8712
  %8740 = fadd fast float %8739, %8717
  %8741 = fmul fast float %8740, 0x3FC5555560000000
  %8742 = fdiv fast float %8718, %8741
  %8743 = fsub fast float %8737, %8742
  %8744 = fsub fast float 1.000000e+00, %8692
  %8745 = fadd fast float %8723, %8710
  %8746 = fmul fast float %8745, 0x3FC5555560000000
  %8747 = fdiv fast float %8724, %8746
  %8748 = fadd fast float %8747, %8744
  %8749 = fmul fast float %8731, %8685
  %8750 = fsub fast float %8613, %8749
  %8751 = fmul fast float %8736, %8685
  %8752 = fadd fast float %8751, %8613
  %8753 = fmul fast float %8748, %8686
  %8754 = fadd fast float %8753, %8614
  %8755 = fmul fast float %8743, %8686
  %8756 = fsub fast float %8614, %8755
  %8757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8750, float %8756, float %8674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8758 = extractvalue %dx.types.ResRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.ResRet.f32 %8757, 1
  %8760 = extractvalue %dx.types.ResRet.f32 %8757, 2
  %8761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8752, float %8756, float %8674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8762 = extractvalue %dx.types.ResRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.ResRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.ResRet.f32 %8761, 2
  %8765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8750, float %8754, float %8674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8766 = extractvalue %dx.types.ResRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.ResRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.ResRet.f32 %8765, 2
  %8769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8752, float %8754, float %8674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.ResRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.ResRet.f32 %8769, 2
  %8773 = fsub fast float %8766, %8758
  %8774 = fsub fast float %8767, %8759
  %8775 = fsub fast float %8768, %8760
  %8776 = fmul fast float %8773, %8746
  %8777 = fmul fast float %8774, %8746
  %8778 = fmul fast float %8775, %8746
  %8779 = fadd fast float %8776, %8758
  %8780 = fadd fast float %8777, %8759
  %8781 = fadd fast float %8778, %8760
  %8782 = fsub fast float %8770, %8762
  %8783 = fsub fast float %8771, %8763
  %8784 = fsub fast float %8772, %8764
  %8785 = fmul fast float %8782, %8746
  %8786 = fmul fast float %8783, %8746
  %8787 = fmul fast float %8784, %8746
  %8788 = fsub fast float %8762, %8779
  %8789 = fadd fast float %8788, %8785
  %8790 = fsub fast float %8763, %8780
  %8791 = fadd fast float %8790, %8786
  %8792 = fsub fast float %8764, %8781
  %8793 = fadd fast float %8792, %8787
  %8794 = fmul fast float %8789, %8734
  %8795 = fmul fast float %8791, %8734
  %8796 = fmul fast float %8793, %8734
  %8797 = fadd fast float %8794, %8779
  %8798 = fadd fast float %8795, %8780
  %8799 = fadd fast float %8796, %8781
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8802 = fmul fast float %8797, %8801
  %8803 = fmul fast float %8798, %8801
  %8804 = fmul fast float %8799, %8801
  br label %8805

; <label>:8805                                    ; preds = %8638, %8607
  %8806 = phi float [ %8676, %8638 ], [ 1.000000e+00, %8607 ]
  %8807 = phi float [ %8677, %8638 ], [ 1.000000e+00, %8607 ]
  %8808 = phi float [ %8678, %8638 ], [ 1.000000e+00, %8607 ]
  %8809 = phi float [ %8802, %8638 ], [ 0.000000e+00, %8607 ]
  %8810 = phi float [ %8803, %8638 ], [ 0.000000e+00, %8607 ]
  %8811 = phi float [ %8804, %8638 ], [ 0.000000e+00, %8607 ]
  %8812 = fmul fast float %8809, %8584
  %8813 = fmul fast float %8810, %8584
  %8814 = fmul fast float %8811, %8584
  %8815 = call float @dx.op.dot3.f32(i32 55, float %8806, float %8807, float %8808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8816 = call float @dx.op.dot3.f32(i32 55, float %8812, float %8813, float %8814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8817 = select i1 %217, float %8815, float %8806
  %8818 = select i1 %217, float %8815, float %8807
  %8819 = select i1 %217, float 1.000000e+00, float %8808
  %8820 = select i1 %217, float %8816, float %8812
  %8821 = select i1 %217, float 0.000000e+00, float %8813
  %8822 = select i1 %217, float 0.000000e+00, float %8814
  %8823 = fmul fast float %8817, %8597
  %8824 = fmul fast float %8818, %8598
  %8825 = fmul fast float %8819, %8599
  %8826 = fadd fast float %8823, %8820
  %8827 = fadd fast float %8824, %8821
  %8828 = fadd fast float %8822, %8825
  %8829 = fmul fast float %8817, %8571
  %8830 = fmul fast float %8818, %8572
  %8831 = fmul fast float %8819, %8573
  %8832 = fmul fast float %125, %8609
  %8833 = fmul fast float %127, %8610
  %8834 = fsub fast float 1.000000e+00, %8832
  %8835 = fsub fast float 1.000000e+00, %8833
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 0
  %8838 = extractvalue %dx.types.CBufRet.f32 %8836, 1
  %8839 = extractvalue %dx.types.CBufRet.f32 %8836, 2
  %8840 = fmul fast float %8834, %8837
  %8841 = fmul fast float %8834, %8838
  %8842 = fmul fast float %8834, %8839
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 0
  %8845 = extractvalue %dx.types.CBufRet.f32 %8843, 1
  %8846 = extractvalue %dx.types.CBufRet.f32 %8843, 2
  %8847 = fmul fast float %8835, %8844
  %8848 = fmul fast float %8835, %8845
  %8849 = fmul fast float %8835, %8846
  %8850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.f32 %8850, 0
  %8852 = extractvalue %dx.types.CBufRet.f32 %8850, 1
  %8853 = extractvalue %dx.types.CBufRet.f32 %8850, 2
  %8854 = fadd fast float %8847, %8851
  %8855 = fadd fast float %8854, %8840
  %8856 = fadd fast float %8848, %8852
  %8857 = fadd fast float %8856, %8841
  %8858 = fadd fast float %8849, %8853
  %8859 = fadd fast float %8858, %8842
  %8860 = fmul fast float %8855, %177
  %8861 = fmul fast float %8857, %177
  %8862 = fmul fast float %8859, %177
  br label %8863

; <label>:8863                                    ; preds = %8805, %8570
  %8864 = phi float [ %8860, %8805 ], [ %155, %8570 ]
  %8865 = phi float [ %8861, %8805 ], [ %156, %8570 ]
  %8866 = phi float [ %8862, %8805 ], [ %157, %8570 ]
  %8867 = phi float [ %177, %8805 ], [ %91, %8570 ]
  %8868 = phi float [ %8826, %8805 ], [ %8597, %8570 ]
  %8869 = phi float [ %8827, %8805 ], [ %8598, %8570 ]
  %8870 = phi float [ %8828, %8805 ], [ %8599, %8570 ]
  %8871 = phi float [ %8829, %8805 ], [ %8571, %8570 ]
  %8872 = phi float [ %8830, %8805 ], [ %8572, %8570 ]
  %8873 = phi float [ %8831, %8805 ], [ %8573, %8570 ]
  %8874 = phi float [ %8806, %8805 ], [ 1.000000e+00, %8570 ]
  br i1 %8606, label %10025, label %8875

; <label>:8875                                    ; preds = %8863
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 0
  %8883 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8884 = extractvalue %dx.types.CBufRet.f32 %8881, 2
  %8885 = extractvalue %dx.types.CBufRet.f32 %8881, 3
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8890 = extractvalue %dx.types.CBufRet.f32 %8886, 3
  %8891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8891, 0
  %8893 = extractvalue %dx.types.CBufRet.f32 %8891, 1
  %8894 = extractvalue %dx.types.CBufRet.f32 %8891, 2
  %8895 = extractvalue %dx.types.CBufRet.f32 %8891, 3
  %8896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.f32 %8896, 3
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 3
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 0
  %8901 = extractvalue %dx.types.CBufRet.f32 %8898, 1
  %8902 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8903 = fcmp fast olt float %8902, -5.000000e-01
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8864, float %8865, float %8866, float %8864, float %8865, float %8866)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = call float @dx.op.unary.f32(i32 25, float %8904)  ; Rsqrt(value)
  %8906 = fmul fast float %8905, %8904
  %8907 = fmul fast float %8905, %8864
  %8908 = fmul fast float %8905, %8865
  %8909 = fmul fast float %8905, %8866
  %8910 = fadd fast float %8906, %8880
  %8911 = call float @dx.op.dot3.f32(i32 55, float %8907, float %8908, float %8909, float %8877, float %8878, float %8879)  ; Dot3(ax,ay,az,bx,by,bz)
  %8912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.i32 %8912, 1
  %8914 = and i32 %8913, 1
  %8915 = icmp ne i32 %8914, 0
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 2
  %8918 = fcmp fast ogt float %8917, 0.000000e+00
  %8919 = and i1 %8915, %8918
  br i1 %8919, label %8920, label %9322, !dx.controlflow.hints !122

; <label>:8920                                    ; preds = %8875
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 3
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8927 = fsub fast float %8924, %8926
  %8928 = and i32 %8913, 2
  %8929 = extractvalue %dx.types.CBufRet.i32 %8912, 0
  %8930 = call i32 @dx.op.binary.i32(i32 40, i32 %8929, i32 3)  ; UMin(a,b)
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 0
  %8933 = extractvalue %dx.types.CBufRet.f32 %8931, 1
  %8934 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8935 = extractvalue %dx.types.CBufRet.f32 %8925, 1
  %8936 = fsub fast float %8932, %8934
  %8937 = fsub fast float %8933, %8935
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = fcmp fast ogt float %8939, 0.000000e+00
  %8941 = fsub fast float -0.000000e+00, %8936
  %8942 = fsub fast float -0.000000e+00, %8937
  %8943 = call float @dx.op.dot2.f32(i32 54, float %8907, float %8908, float %8907, float %8908)  ; Dot2(ax,ay,bx,by)
  %8944 = call float @dx.op.dot2.f32(i32 54, float %8907, float %8908, float %8941, float %8942)  ; Dot2(ax,ay,bx,by)
  %8945 = fmul fast float %8944, 2.000000e+00
  %8946 = call float @dx.op.dot2.f32(i32 54, float %8941, float %8942, float %8941, float %8942)  ; Dot2(ax,ay,bx,by)
  %8947 = fmul fast float %8939, %8939
  %8948 = fsub fast float %8946, %8947
  %8949 = fmul fast float %8945, %8945
  %8950 = fmul fast float %8943, 4.000000e+00
  %8951 = fmul fast float %8950, %8948
  %8952 = fsub fast float %8949, %8951
  %8953 = fcmp fast ogt float %8952, 0.000000e+00
  br i1 %8953, label %8954, label %8969

; <label>:8954                                    ; preds = %8920
  %8955 = fcmp fast ogt float %8945, 0.000000e+00
  %8956 = call float @dx.op.unary.f32(i32 24, float %8952)  ; Sqrt(value)
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = select i1 %8955, float %8956, float %8957
  %8959 = fadd fast float %8958, %8945
  %8960 = fmul float %8959, -5.000000e-01
  %8961 = fdiv fast float %8960, %8943
  %8962 = call float @dx.op.binary.f32(i32 35, float %8961, float 0.000000e+00)  ; FMax(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8906, float %8962)  ; FMin(a,b)
  %8964 = fdiv fast float %8948, %8960
  %8965 = call float @dx.op.binary.f32(i32 35, float %8964, float 0.000000e+00)  ; FMax(a,b)
  %8966 = call float @dx.op.binary.f32(i32 36, float %8906, float %8965)  ; FMin(a,b)
  %8967 = call float @dx.op.binary.f32(i32 36, float %8963, float %8966)  ; FMin(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8963, float %8966)  ; FMax(a,b)
  br label %8969

; <label>:8969                                    ; preds = %8954, %8920
  %8970 = phi float [ %8968, %8954 ], [ -1.000000e+00, %8920 ]
  %8971 = phi float [ %8967, %8954 ], [ -1.000000e+00, %8920 ]
  %8972 = phi i1 [ true, %8954 ], [ false, %8920 ]
  %8973 = and i1 %8940, %8972
  br i1 %8973, label %8974, label %8976

; <label>:8974                                    ; preds = %8969
  %8975 = fcmp fast oeq float %8971, %8970
  br i1 %8975, label %9275, label %8977

; <label>:8976                                    ; preds = %8969
  br i1 %8940, label %9275, label %8977

; <label>:8977                                    ; preds = %8976, %8974
  %8978 = phi float [ %8906, %8976 ], [ %8970, %8974 ]
  %8979 = phi float [ 0.000000e+00, %8976 ], [ %8971, %8974 ]
  %8980 = icmp ne i32 %8928, 0
  %8981 = fmul fast float %8978, %8909
  %8982 = fadd fast float %8981, %8922
  %8983 = fmul fast float %8982, %8978
  %8984 = select i1 %8980, float 0.000000e+00, float %8983
  %8985 = fcmp fast oeq float %8909, 0.000000e+00
  %8986 = fdiv fast float %8927, %8909
  %8987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8986)  ; FMax(a,b)
  %8988 = select i1 %8985, float %8978, float %8987
  %8989 = call float @dx.op.binary.f32(i32 36, float %8978, float %8988)  ; FMin(a,b)
  %8990 = fcmp fast ogt float %8909, 0.000000e+00
  %8991 = fcmp fast olt float %8927, 0.000000e+00
  br i1 %8990, label %8992, label %9049

; <label>:8992                                    ; preds = %8977
  %8993 = icmp eq i32 %8928, 0
  br i1 %8991, label %8994, label %9038

; <label>:8994                                    ; preds = %8992
  %8995 = select i1 %8993, float %8978, float 0.000000e+00
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = call float @dx.op.unary.f32(i32 6, float %8996)  ; FAbs(value)
  %8998 = fmul fast float %8995, %8909
  %8999 = fadd fast float %8998, %8922
  %9000 = fmul fast float %8997, %8999
  %9001 = fsub fast float %8984, %9000
  %9002 = fsub fast float %8978, %8997
  %9003 = select i1 %8993, float %9002, float 0.000000e+00
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 0
  %9006 = extractvalue %dx.types.CBufRet.f32 %9004, 1
  %9007 = extractvalue %dx.types.CBufRet.f32 %9004, 2
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9015 = call float @dx.op.binary.f32(i32 36, float %9001, float %9014)  ; FMin(a,b)
  %9016 = fmul fast float %9012, %9003
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = fsub fast float %9009, %9005
  %9019 = fsub fast float %9010, %9006
  %9020 = fsub fast float %9011, %9007
  %9021 = fmul fast float %9017, %9018
  %9022 = fmul fast float %9017, %9019
  %9023 = fmul fast float %9017, %9020
  %9024 = fadd fast float %9021, %9005
  %9025 = fadd fast float %9022, %9006
  %9026 = fadd fast float %9023, %9007
  %9027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.f32 %9027, 0
  %9029 = extractvalue %dx.types.CBufRet.f32 %9027, 1
  %9030 = fadd fast float %9029, %9028
  %9031 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9032 = extractvalue %dx.types.CBufRet.f32 %9027, 2
  %9033 = extractvalue %dx.types.CBufRet.f32 %9027, 3
  %9034 = fadd fast float %9033, %9032
  %9035 = call float @dx.op.unary.f32(i32 7, float %9034)  ; Saturate(value)
  %9036 = fmul fast float %9031, %9015
  %9037 = fmul fast float %9036, %9035
  br label %9275

; <label>:9038                                    ; preds = %8992
  br i1 %8993, label %9039, label %9060

; <label>:9039                                    ; preds = %9038
  %9040 = call float @dx.op.binary.f32(i32 36, float %8989, float %8979)  ; FMin(a,b)
  %9041 = fsub fast float %8989, %9040
  %9042 = fsub fast float %9041, %8978
  %9043 = call float @dx.op.unary.f32(i32 6, float %9042)  ; FAbs(value)
  %9044 = fadd fast float %9041, %8978
  %9045 = fmul fast float %9044, %8909
  %9046 = fadd fast float %9045, %8922
  %9047 = fmul fast float %9046, %9043
  %9048 = fsub fast float %8984, %9047
  br label %9060

; <label>:9049                                    ; preds = %8977
  br i1 %8991, label %9050, label %9060

; <label>:9050                                    ; preds = %9049
  %9051 = call float @dx.op.binary.f32(i32 35, float %8979, float %8989)  ; FMax(a,b)
  %9052 = icmp eq i32 %8928, 0
  %9053 = select i1 %9052, float %8989, float 0.000000e+00
  %9054 = fsub fast float -0.000000e+00, %9053
  %9055 = call float @dx.op.unary.f32(i32 6, float %9054)  ; FAbs(value)
  %9056 = fmul fast float %9053, %8909
  %9057 = fadd fast float %9056, %8922
  %9058 = fmul fast float %9055, %9057
  %9059 = fsub fast float %8984, %9058
  br label %9060

; <label>:9060                                    ; preds = %9050, %9049, %9039, %9038
  %9061 = phi float [ %8979, %9038 ], [ %8979, %9039 ], [ %9051, %9050 ], [ %8979, %9049 ]
  %9062 = phi float [ 0.000000e+00, %9038 ], [ %9043, %9039 ], [ %9055, %9050 ], [ 0.000000e+00, %9049 ]
  %9063 = phi float [ %8984, %9038 ], [ %9048, %9039 ], [ %9059, %9050 ], [ %8984, %9049 ]
  %9064 = phi float [ %8989, %9038 ], [ %8989, %9039 ], [ %8978, %9050 ], [ %8978, %9049 ]
  %9065 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %9065, align 4, !tbaa !123, !noalias !125
  %9066 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %9066, align 4, !tbaa !123, !noalias !125
  %9067 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %9067, align 4, !tbaa !123, !noalias !125
  %9068 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %9068, align 4, !tbaa !123, !noalias !125
  %9069 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %9069, align 4, !tbaa !123, !noalias !125
  %9070 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %9070, align 4, !tbaa !123, !noalias !125
  %9071 = icmp sgt i32 %8930, 0
  br i1 %9071, label %9072, label %9133

; <label>:9072                                    ; preds = %9060
  br label %9073

; <label>:9073                                    ; preds = %9122, %9072
  %9074 = phi i32 [ %9123, %9122 ], [ 0, %9072 ]
  %9075 = phi i32 [ %9124, %9122 ], [ 0, %9072 ]
  %9076 = add nuw i32 %9075, 171
  %9077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %9076)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.CBufRet.f32 %9077, 1
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = extractvalue %dx.types.CBufRet.f32 %9080, 1
  %9083 = fsub fast float %9078, %9081
  %9084 = fsub fast float %9079, %9082
  %9085 = extractvalue %dx.types.CBufRet.f32 %9077, 2
  %9086 = fsub fast float -0.000000e+00, %9083
  %9087 = fsub fast float -0.000000e+00, %9084
  %9088 = call float @dx.op.dot2.f32(i32 54, float %8907, float %8908, float %9086, float %9087)  ; Dot2(ax,ay,bx,by)
  %9089 = fmul fast float %9088, 2.000000e+00
  %9090 = call float @dx.op.dot2.f32(i32 54, float %9086, float %9087, float %9086, float %9087)  ; Dot2(ax,ay,bx,by)
  %9091 = fmul fast float %9085, %9085
  %9092 = fsub fast float %9090, %9091
  %9093 = fmul fast float %9089, %9089
  %9094 = fmul fast float %8950, %9092
  %9095 = fsub fast float %9093, %9094
  %9096 = fcmp fast ogt float %9095, 0.000000e+00
  br i1 %9096, label %9097, label %9112

; <label>:9097                                    ; preds = %9073
  %9098 = fcmp fast ogt float %9089, 0.000000e+00
  %9099 = call float @dx.op.unary.f32(i32 24, float %9095)  ; Sqrt(value)
  %9100 = fsub fast float -0.000000e+00, %9099
  %9101 = select i1 %9098, float %9099, float %9100
  %9102 = fadd fast float %9101, %9089
  %9103 = fmul float %9102, -5.000000e-01
  %9104 = fdiv fast float %9103, %8943
  %9105 = call float @dx.op.binary.f32(i32 35, float %9104, float 0.000000e+00)  ; FMax(a,b)
  %9106 = call float @dx.op.binary.f32(i32 36, float %8978, float %9105)  ; FMin(a,b)
  %9107 = fdiv fast float %9092, %9103
  %9108 = call float @dx.op.binary.f32(i32 35, float %9107, float 0.000000e+00)  ; FMax(a,b)
  %9109 = call float @dx.op.binary.f32(i32 36, float %8978, float %9108)  ; FMin(a,b)
  %9110 = call float @dx.op.binary.f32(i32 36, float %9106, float %9109)  ; FMin(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %9106, float %9109)  ; FMax(a,b)
  br label %9112

; <label>:9112                                    ; preds = %9097, %9073
  %9113 = phi float [ %9111, %9097 ], [ -1.000000e+00, %9073 ]
  %9114 = phi float [ %9110, %9097 ], [ -1.000000e+00, %9073 ]
  %9115 = phi i1 [ true, %9097 ], [ false, %9073 ]
  br i1 %9115, label %9116, label %9122

; <label>:9116                                    ; preds = %9112
  %9117 = call float @dx.op.binary.f32(i32 35, float %9061, float %9114)  ; FMax(a,b)
  %9118 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %9075
  store float %9117, float* %9118, align 4, !tbaa !123, !noalias !125
  %9119 = call float @dx.op.binary.f32(i32 35, float %9061, float %9113)  ; FMax(a,b)
  %9120 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %9075
  store float %9119, float* %9120, align 4, !tbaa !123, !noalias !125
  %9121 = add nsw i32 %9074, 1
  br label %9122

; <label>:9122                                    ; preds = %9116, %9112
  %9123 = phi i32 [ %9121, %9116 ], [ %9074, %9112 ]
  %9124 = add nuw nsw i32 %9075, 1
  %9125 = icmp eq i32 %9124, %8930
  br i1 %9125, label %9126, label %9073

; <label>:9126                                    ; preds = %9122
  %9127 = load float, float* %9067, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %9128 = load float, float* %9066, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %9129 = load float, float* %9065, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %9130 = load float, float* %9070, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %9131 = load float, float* %9069, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %9132 = load float, float* %9068, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %9133

; <label>:9133                                    ; preds = %9126, %9060
  %9134 = phi float [ -1.000000e+00, %9060 ], [ %9132, %9126 ]
  %9135 = phi float [ -1.000000e+00, %9060 ], [ %9131, %9126 ]
  %9136 = phi float [ -1.000000e+00, %9060 ], [ %9130, %9126 ]
  %9137 = phi float [ -1.000000e+00, %9060 ], [ %9129, %9126 ]
  %9138 = phi float [ -1.000000e+00, %9060 ], [ %9128, %9126 ]
  %9139 = phi float [ -1.000000e+00, %9060 ], [ %9127, %9126 ]
  %9140 = phi i32 [ 0, %9060 ], [ %9123, %9126 ]
  %9141 = call float @dx.op.binary.f32(i32 36, float %9137, float %9138)  ; FMin(a,b)
  %9142 = call float @dx.op.binary.f32(i32 36, float %9141, float %9139)  ; FMin(a,b)
  %9143 = call float @dx.op.binary.f32(i32 35, float %9137, float %9138)  ; FMax(a,b)
  %9144 = call float @dx.op.binary.f32(i32 36, float %9143, float %9139)  ; FMin(a,b)
  %9145 = call float @dx.op.binary.f32(i32 35, float %9141, float %9144)  ; FMax(a,b)
  %9146 = call float @dx.op.binary.f32(i32 35, float %9143, float %9139)  ; FMax(a,b)
  store float %9142, float* %9065, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %9145, float* %9066, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %9146, float* %9067, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %9147 = call float @dx.op.binary.f32(i32 36, float %9134, float %9135)  ; FMin(a,b)
  %9148 = call float @dx.op.binary.f32(i32 36, float %9147, float %9136)  ; FMin(a,b)
  %9149 = call float @dx.op.binary.f32(i32 35, float %9134, float %9135)  ; FMax(a,b)
  %9150 = call float @dx.op.binary.f32(i32 36, float %9149, float %9136)  ; FMin(a,b)
  %9151 = call float @dx.op.binary.f32(i32 35, float %9147, float %9150)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 35, float %9149, float %9136)  ; FMax(a,b)
  store float %9148, float* %9068, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %9151, float* %9069, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %9152, float* %9070, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %9153 = sub nsw i32 3, %9140
  %9154 = icmp sgt i32 %9153, 2
  br i1 %9154, label %9155, label %9193

; <label>:9155                                    ; preds = %9133
  %9156 = icmp eq i32 %8928, 0
  %9157 = fsub fast float %8978, %9062
  %9158 = select i1 %9156, float %9157, float %9062
  %9159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.CBufRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.CBufRet.f32 %9159, 2
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 0
  %9165 = extractvalue %dx.types.CBufRet.f32 %9163, 1
  %9166 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9167 = extractvalue %dx.types.CBufRet.f32 %9163, 3
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 3
  %9170 = call float @dx.op.binary.f32(i32 36, float %9063, float %9169)  ; FMin(a,b)
  %9171 = fmul fast float %9167, %9158
  %9172 = call float @dx.op.unary.f32(i32 7, float %9171)  ; Saturate(value)
  %9173 = fsub fast float %9164, %9160
  %9174 = fsub fast float %9165, %9161
  %9175 = fsub fast float %9166, %9162
  %9176 = fmul fast float %9172, %9173
  %9177 = fmul fast float %9172, %9174
  %9178 = fmul fast float %9172, %9175
  %9179 = fadd fast float %9176, %9160
  %9180 = fadd fast float %9177, %9161
  %9181 = fadd fast float %9178, %9162
  %9182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9182, 0
  %9184 = extractvalue %dx.types.CBufRet.f32 %9182, 1
  %9185 = fadd fast float %9184, %9183
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9182, 2
  %9188 = extractvalue %dx.types.CBufRet.f32 %9182, 3
  %9189 = fadd fast float %9188, %9187
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  %9191 = fmul fast float %9186, %9170
  %9192 = fmul fast float %9191, %9190
  br label %9275

; <label>:9193                                    ; preds = %9133
  %9194 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %9153
  %9195 = load float, float* %9194, align 4, !tbaa !123, !noalias !125
  %9196 = fcmp fast olt float %9195, %9064
  %9197 = icmp sgt i32 %9140, 0
  %9198 = and i1 %9197, %9196
  br i1 %9198, label %9199, label %9236

; <label>:9199                                    ; preds = %9193
  br label %9200

; <label>:9200                                    ; preds = %9229, %9199
  %9201 = phi float [ %9230, %9229 ], [ %9062, %9199 ]
  %9202 = phi float [ %9231, %9229 ], [ %9063, %9199 ]
  %9203 = phi float [ %9211, %9229 ], [ %9195, %9199 ]
  %9204 = phi i32 [ %9208, %9229 ], [ %9153, %9199 ]
  %9205 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %9204
  %9206 = load float, float* %9205, align 4, !tbaa !123, !noalias !125
  %9207 = icmp slt i32 %9204, 2
  %9208 = add nsw i32 %9204, 1
  %9209 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %9208
  %9210 = load float, float* %9209, align 4, !tbaa !123, !noalias !125
  %9211 = select i1 %9207, float %9210, float %8978
  %9212 = call float @dx.op.binary.f32(i32 36, float %9211, float %9206)  ; FMin(a,b)
  %9213 = call float @dx.op.binary.f32(i32 36, float %9064, float %9212)  ; FMin(a,b)
  %9214 = icmp eq i32 %8928, 0
  %9215 = fadd fast float %9213, %9203
  %9216 = fmul fast float %9215, %8909
  %9217 = fadd fast float %9216, %8922
  br i1 %9214, label %9223, label %9218

; <label>:9218                                    ; preds = %9200
  %9219 = fsub fast float %9213, %9203
  %9220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9219)  ; FMax(a,b)
  %9221 = fmul fast float %9220, %9217
  %9222 = fadd fast float %9221, %9202
  br label %9229

; <label>:9223                                    ; preds = %9200
  %9224 = fsub fast float %9203, %9213
  %9225 = call float @dx.op.unary.f32(i32 6, float %9224)  ; FAbs(value)
  %9226 = fadd fast float %9225, %9201
  %9227 = fmul fast float %9225, %9217
  %9228 = fsub fast float %9202, %9227
  br label %9229

; <label>:9229                                    ; preds = %9223, %9218
  %9230 = phi float [ %9220, %9218 ], [ %9226, %9223 ]
  %9231 = phi float [ %9222, %9218 ], [ %9228, %9223 ]
  %9232 = fcmp fast olt float %9211, %9064
  %9233 = icmp slt i32 %9208, 3
  %9234 = and i1 %9233, %9232
  br i1 %9234, label %9200, label %9235

; <label>:9235                                    ; preds = %9229
  br label %9236

; <label>:9236                                    ; preds = %9235, %9193
  %9237 = phi float [ %9062, %9193 ], [ %9230, %9235 ]
  %9238 = phi float [ %9063, %9193 ], [ %9231, %9235 ]
  %9239 = fsub fast float %8978, %9237
  %9240 = select i1 %8980, float %9237, float %9239
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %9243 = extractvalue %dx.types.CBufRet.f32 %9241, 1
  %9244 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 0
  %9247 = extractvalue %dx.types.CBufRet.f32 %9245, 1
  %9248 = extractvalue %dx.types.CBufRet.f32 %9245, 2
  %9249 = extractvalue %dx.types.CBufRet.f32 %9245, 3
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 3
  %9252 = call float @dx.op.binary.f32(i32 36, float %9238, float %9251)  ; FMin(a,b)
  %9253 = fmul fast float %9249, %9240
  %9254 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9255 = fsub fast float %9246, %9242
  %9256 = fsub fast float %9247, %9243
  %9257 = fsub fast float %9248, %9244
  %9258 = fmul fast float %9254, %9255
  %9259 = fmul fast float %9254, %9256
  %9260 = fmul fast float %9254, %9257
  %9261 = fadd fast float %9258, %9242
  %9262 = fadd fast float %9259, %9243
  %9263 = fadd fast float %9260, %9244
  %9264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9265 = extractvalue %dx.types.CBufRet.f32 %9264, 0
  %9266 = extractvalue %dx.types.CBufRet.f32 %9264, 1
  %9267 = fadd fast float %9266, %9265
  %9268 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9269 = extractvalue %dx.types.CBufRet.f32 %9264, 2
  %9270 = extractvalue %dx.types.CBufRet.f32 %9264, 3
  %9271 = fadd fast float %9270, %9269
  %9272 = call float @dx.op.unary.f32(i32 7, float %9271)  ; Saturate(value)
  %9273 = fmul fast float %9268, %9252
  %9274 = fmul fast float %9273, %9272
  br label %9275

; <label>:9275                                    ; preds = %9236, %9155, %8994, %8976, %8974
  %9276 = phi float [ %9003, %8994 ], [ %9158, %9155 ], [ %9240, %9236 ], [ 0.000000e+00, %8974 ], [ 0.000000e+00, %8976 ]
  %9277 = phi float [ %9037, %8994 ], [ %9192, %9155 ], [ %9274, %9236 ], [ 0.000000e+00, %8974 ], [ 0.000000e+00, %8976 ]
  %9278 = phi float [ %9024, %8994 ], [ %9179, %9155 ], [ %9261, %9236 ], [ 0.000000e+00, %8974 ], [ 0.000000e+00, %8976 ]
  %9279 = phi float [ %9025, %8994 ], [ %9180, %9155 ], [ %9262, %9236 ], [ 0.000000e+00, %8974 ], [ 0.000000e+00, %8976 ]
  %9280 = phi float [ %9026, %8994 ], [ %9181, %9155 ], [ %9263, %9236 ], [ 0.000000e+00, %8974 ], [ 0.000000e+00, %8976 ]
  %9281 = fmul fast float %8917, %9277
  %9282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9283 = extractvalue %dx.types.CBufRet.f32 %9282, 2
  %9284 = fsub fast float %8924, %9283
  %9285 = fcmp fast olt float %9281, -2.000000e+01
  %9286 = call float @dx.op.unary.f32(i32 21, float %9281)  ; Exp(value)
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 3
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9292 = fmul fast float %9289, %9284
  %9293 = call float @dx.op.unary.f32(i32 7, float %9292)  ; Saturate(value)
  %9294 = fsub fast float 1.000000e+00, %9293
  %9295 = fmul fast float %8909, 5.000000e-01
  %9296 = fadd fast float %9295, 5.000000e-01
  %9297 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9298 = fsub fast float 1.000000e+00, %9297
  %9299 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9294)  ; FMax(a,b)
  %9300 = fdiv fast float %9298, %9299
  %9301 = fsub fast float %9284, %8866
  %9302 = call float @dx.op.unary.f32(i32 6, float %9301)  ; FAbs(value)
  %9303 = fmul fast float %9302, %9288
  %9304 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9305 = fsub fast float 1.000000e+00, %9303
  %9306 = fmul fast float %9305, %9304
  %9307 = fadd fast float %9306, %9303
  %9308 = fmul fast float %9291, %9284
  %9309 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9310 = fsub fast float 1.000000e+00, %9307
  %9311 = fmul fast float %9310, %9309
  %9312 = fadd fast float %9311, %9307
  %9313 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9314 = fadd fast float %9286, -1.000000e+00
  %9315 = select i1 %9285, float -1.000000e+00, float %9314
  %9316 = fmul fast float %9313, %9315
  %9317 = fadd fast float %9316, 1.000000e+00
  %9318 = fsub fast float -0.000000e+00, %9316
  %9319 = fmul fast float %9278, %9318
  %9320 = fmul fast float %9279, %9318
  %9321 = fmul fast float %9280, %9318
  br label %9322

; <label>:9322                                    ; preds = %9275, %8875
  %9323 = phi float [ %9276, %9275 ], [ 0.000000e+00, %8875 ]
  %9324 = phi float [ %9317, %9275 ], [ 1.000000e+00, %8875 ]
  %9325 = phi float [ %9319, %9275 ], [ 0.000000e+00, %8875 ]
  %9326 = phi float [ %9320, %9275 ], [ 0.000000e+00, %8875 ]
  %9327 = phi float [ %9321, %9275 ], [ 0.000000e+00, %8875 ]
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9330 = fsub fast float 1.000000e+00, %9324
  %9331 = fmul fast float %9330, %8910
  %9332 = fmul fast float %9331, %9329
  %9333 = fsub fast float %8910, %9332
  br i1 %8903, label %9334, label %9363, !dx.controlflow.hints !161

; <label>:9334                                    ; preds = %9322
  %9335 = fmul fast float %8911, %8900
  %9336 = fadd fast float %9335, %8901
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = fmul fast float %8882, %9333
  %9339 = fsub fast float -0.000000e+00, %9338
  %9340 = fmul fast float %8883, %9333
  %9341 = fsub fast float -0.000000e+00, %9340
  %9342 = call float @dx.op.unary.f32(i32 21, float %9339)  ; Exp(value)
  %9343 = call float @dx.op.unary.f32(i32 21, float %9341)  ; Exp(value)
  %9344 = call float @dx.op.binary.f32(i32 35, float %8890, float %9342)  ; FMax(a,b)
  %9345 = call float @dx.op.binary.f32(i32 35, float %8890, float %9343)  ; FMax(a,b)
  %9346 = fsub fast float %9345, %9344
  %9347 = fmul fast float %9346, %9337
  %9348 = fadd fast float %9347, %9344
  %9349 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9350 = fsub fast float %8887, %8892
  %9351 = fsub fast float %8888, %8893
  %9352 = fsub fast float %8889, %8894
  %9353 = fmul fast float %9337, %9350
  %9354 = fmul fast float %9337, %9351
  %9355 = fmul fast float %9337, %9352
  %9356 = fadd fast float %9353, %8892
  %9357 = fadd fast float %9354, %8893
  %9358 = fadd fast float %9355, %8894
  %9359 = fsub fast float 1.000000e+00, %9349
  %9360 = fmul fast float %9359, %9356
  %9361 = fmul fast float %9359, %9357
  %9362 = fmul fast float %9359, %9358
  br label %9422

; <label>:9363                                    ; preds = %9322
  %9364 = fmul fast float %9333, %8899
  %9365 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9366 = fsub fast float 2.000000e+00, %9365
  %9367 = fmul fast float %9365, 9.921875e-01
  %9368 = fmul fast float %9367, %9366
  %9369 = fadd fast float %9368, 3.906250e-03
  %9370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %9369, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9371 = extractvalue %dx.types.ResRet.f32 %9370, 0
  %9372 = fsub fast float %9365, %9371
  %9373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9372)  ; FMax(a,b)
  %9374 = fmul fast float %8885, %8866
  %9375 = call float @dx.op.unary.f32(i32 6, float %9374)  ; FAbs(value)
  %9376 = fcmp fast ogt float %9375, 0x3EB0C6F7A0000000
  br i1 %9376, label %9377, label %9383, !dx.controlflow.hints !162

; <label>:9377                                    ; preds = %9363
  %9378 = fmul fast float %9374, 0xBFF7154760000000
  %9379 = call float @dx.op.unary.f32(i32 21, float %9378)  ; Exp(value)
  %9380 = fsub fast float 1.000000e+00, %9379
  %9381 = fdiv fast float %9380, %9374
  %9382 = fmul fast float %9381, %8895
  br label %9383

; <label>:9383                                    ; preds = %9377, %9363
  %9384 = phi float [ %9382, %9377 ], [ %8895, %9363 ]
  %9385 = fadd fast float %9384, %8897
  %9386 = fmul fast float %9385, %9373
  %9387 = fmul fast float %8882, %9386
  %9388 = fsub fast float -0.000000e+00, %9387
  %9389 = fmul fast float %8883, %9386
  %9390 = fsub fast float -0.000000e+00, %9389
  %9391 = fmul fast float %8884, %9386
  %9392 = fsub fast float -0.000000e+00, %9391
  %9393 = call float @dx.op.unary.f32(i32 21, float %9388)  ; Exp(value)
  %9394 = call float @dx.op.unary.f32(i32 21, float %9390)  ; Exp(value)
  %9395 = call float @dx.op.unary.f32(i32 21, float %9392)  ; Exp(value)
  %9396 = fmul fast float %8911, %8911
  %9397 = fadd fast float %9396, 1.000000e+00
  %9398 = fmul fast float %9397, 0x3FAE8EC8A0000000
  %9399 = fmul fast float %9398, %8892
  %9400 = fmul fast float %9398, %8893
  %9401 = fmul fast float %9398, %8894
  %9402 = fmul fast float %8911, %8890
  %9403 = fsub fast float 1.000000e+00, %9402
  %9404 = fmul fast float %8890, %8890
  %9405 = fsub fast float 1.000000e+00, %9404
  %9406 = fmul fast float %9405, 0x3FB45F3060000000
  %9407 = fmul fast float %9403, %9403
  %9408 = fdiv fast float 1.000000e+00, %9407
  %9409 = fmul fast float %9406, %9408
  %9410 = fmul fast float %9409, %8887
  %9411 = fmul fast float %9409, %8888
  %9412 = fmul fast float %9409, %8889
  %9413 = fadd fast float %9410, %9399
  %9414 = fadd fast float %9411, %9400
  %9415 = fadd fast float %9412, %9401
  %9416 = fsub fast float 1.000000e+00, %9393
  %9417 = fsub fast float 1.000000e+00, %9394
  %9418 = fsub fast float 1.000000e+00, %9395
  %9419 = fmul fast float %9413, %9416
  %9420 = fmul fast float %9414, %9417
  %9421 = fmul fast float %9415, %9418
  br label %9422

; <label>:9422                                    ; preds = %9383, %9334
  %9423 = phi float [ %9360, %9334 ], [ %9419, %9383 ]
  %9424 = phi float [ %9361, %9334 ], [ %9420, %9383 ]
  %9425 = phi float [ %9362, %9334 ], [ %9421, %9383 ]
  %9426 = phi float [ %9349, %9334 ], [ %9393, %9383 ]
  %9427 = phi float [ %9349, %9334 ], [ %9394, %9383 ]
  %9428 = phi float [ %9349, %9334 ], [ %9395, %9383 ]
  br i1 %8919, label %9429, label %9627, !dx.controlflow.hints !163

; <label>:9429                                    ; preds = %9422
  %9430 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9431 = fmul fast float %9430, %9330
  %9432 = fsub fast float %9325, %9423
  %9433 = fsub fast float %9326, %9424
  %9434 = fsub fast float %9327, %9425
  %9435 = fmul fast float %9431, %9432
  %9436 = fmul fast float %9431, %9433
  %9437 = fmul fast float %9431, %9434
  %9438 = fadd fast float %9435, %9423
  %9439 = fadd fast float %9436, %9424
  %9440 = fadd fast float %9437, %9425
  %9441 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9426)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9427)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9428)  ; FMax(a,b)
  %9444 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9324)  ; FMax(a,b)
  %9445 = call float @dx.op.binary.f32(i32 35, float %9323, float %9333)  ; FMax(a,b)
  %9446 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9445)  ; FMax(a,b)
  %9447 = fdiv fast float %9323, %9446
  %9448 = call float @dx.op.unary.f32(i32 7, float %9447)  ; Saturate(value)
  %9449 = fdiv fast float %9333, %9446
  %9450 = call float @dx.op.unary.f32(i32 7, float %9449)  ; Saturate(value)
  %9451 = fcmp fast une float %9444, 1.000000e+00
  br i1 %9451, label %9452, label %9465, !dx.controlflow.hints !164

; <label>:9452                                    ; preds = %9429
  %9453 = call float @dx.op.unary.f32(i32 23, float %9444)  ; Log(value)
  %9454 = fmul fast float %9453, 0x3FE62E4300000000
  %9455 = fmul fast float %9325, %9454
  %9456 = fsub fast float -0.000000e+00, %9455
  %9457 = fmul fast float %9326, %9454
  %9458 = fsub fast float -0.000000e+00, %9457
  %9459 = fmul fast float %9327, %9454
  %9460 = fsub fast float -0.000000e+00, %9459
  %9461 = fsub fast float 1.000000e+00, %9444
  %9462 = fdiv fast float %9456, %9461
  %9463 = fdiv fast float %9458, %9461
  %9464 = fdiv fast float %9460, %9461
  br label %9465

; <label>:9465                                    ; preds = %9452, %9429
  %9466 = phi float [ %9462, %9452 ], [ %9325, %9429 ]
  %9467 = phi float [ %9463, %9452 ], [ %9326, %9429 ]
  %9468 = phi float [ %9464, %9452 ], [ %9327, %9429 ]
  %9469 = phi float [ %9454, %9452 ], [ 0.000000e+00, %9429 ]
  %9470 = fcmp fast une float %9441, 1.000000e+00
  br i1 %9470, label %9471, label %9478, !dx.controlflow.hints !165

; <label>:9471                                    ; preds = %9465
  %9472 = call float @dx.op.unary.f32(i32 23, float %9441)  ; Log(value)
  %9473 = fmul fast float %9472, 0x3FE62E4300000000
  %9474 = fmul fast float %9438, %9473
  %9475 = fsub fast float -0.000000e+00, %9474
  %9476 = fsub fast float 1.000000e+00, %9441
  %9477 = fdiv fast float %9475, %9476
  br label %9478

; <label>:9478                                    ; preds = %9471, %9465
  %9479 = phi float [ %9477, %9471 ], [ %9438, %9465 ]
  %9480 = phi float [ %9473, %9471 ], [ 0.000000e+00, %9465 ]
  %9481 = fcmp fast une float %9442, 1.000000e+00
  br i1 %9481, label %9482, label %9489, !dx.controlflow.hints !165

; <label>:9482                                    ; preds = %9478
  %9483 = call float @dx.op.unary.f32(i32 23, float %9442)  ; Log(value)
  %9484 = fmul fast float %9483, 0x3FE62E4300000000
  %9485 = fmul fast float %9439, %9484
  %9486 = fsub fast float -0.000000e+00, %9485
  %9487 = fsub fast float 1.000000e+00, %9442
  %9488 = fdiv fast float %9486, %9487
  br label %9489

; <label>:9489                                    ; preds = %9482, %9478
  %9490 = phi float [ %9488, %9482 ], [ %9439, %9478 ]
  %9491 = phi float [ %9484, %9482 ], [ 0.000000e+00, %9478 ]
  %9492 = fcmp fast une float %9443, 1.000000e+00
  br i1 %9492, label %9493, label %9500, !dx.controlflow.hints !165

; <label>:9493                                    ; preds = %9489
  %9494 = call float @dx.op.unary.f32(i32 23, float %9443)  ; Log(value)
  %9495 = fmul fast float %9494, 0x3FE62E4300000000
  %9496 = fmul fast float %9440, %9495
  %9497 = fsub fast float -0.000000e+00, %9496
  %9498 = fsub fast float 1.000000e+00, %9443
  %9499 = fdiv fast float %9497, %9498
  br label %9500

; <label>:9500                                    ; preds = %9493, %9489
  %9501 = phi float [ %9499, %9493 ], [ %9440, %9489 ]
  %9502 = phi float [ %9495, %9493 ], [ 0.000000e+00, %9489 ]
  %9503 = fmul fast float %9466, %9450
  %9504 = fmul fast float %9467, %9450
  %9505 = fmul fast float %9468, %9450
  %9506 = fmul fast float %9469, %9450
  %9507 = fmul fast float %9479, %9448
  %9508 = fmul fast float %9490, %9448
  %9509 = fmul fast float %9501, %9448
  %9510 = fmul fast float %9480, %9448
  %9511 = fmul fast float %9491, %9448
  %9512 = fmul fast float %9502, %9448
  %9513 = fadd fast float %9507, %9503
  %9514 = fadd fast float %9508, %9504
  %9515 = fadd fast float %9509, %9505
  %9516 = fadd fast float %9510, %9506
  %9517 = fadd fast float %9511, %9506
  %9518 = fadd fast float %9512, %9506
  %9519 = fcmp fast une float %9516, 0.000000e+00
  br i1 %9519, label %9520, label %9527, !dx.controlflow.hints !166

; <label>:9520                                    ; preds = %9500
  %9521 = fmul fast float %9516, 0x3FF7154760000000
  %9522 = call float @dx.op.unary.f32(i32 21, float %9521)  ; Exp(value)
  %9523 = fsub fast float 1.000000e+00, %9522
  %9524 = fmul fast float %9513, %9523
  %9525 = fsub fast float -0.000000e+00, %9524
  %9526 = fdiv fast float %9525, %9516
  br label %9527

; <label>:9527                                    ; preds = %9520, %9500
  %9528 = phi float [ %9522, %9520 ], [ 1.000000e+00, %9500 ]
  %9529 = phi float [ %9526, %9520 ], [ %9513, %9500 ]
  %9530 = fcmp fast une float %9517, 0.000000e+00
  br i1 %9530, label %9531, label %9538, !dx.controlflow.hints !166

; <label>:9531                                    ; preds = %9527
  %9532 = fmul fast float %9517, 0x3FF7154760000000
  %9533 = call float @dx.op.unary.f32(i32 21, float %9532)  ; Exp(value)
  %9534 = fsub fast float 1.000000e+00, %9533
  %9535 = fmul fast float %9514, %9534
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fdiv fast float %9536, %9517
  br label %9538

; <label>:9538                                    ; preds = %9531, %9527
  %9539 = phi float [ %9533, %9531 ], [ 1.000000e+00, %9527 ]
  %9540 = phi float [ %9537, %9531 ], [ %9514, %9527 ]
  %9541 = fcmp fast une float %9518, 0.000000e+00
  br i1 %9541, label %9542, label %9549, !dx.controlflow.hints !166

; <label>:9542                                    ; preds = %9538
  %9543 = fmul fast float %9518, 0x3FF7154760000000
  %9544 = call float @dx.op.unary.f32(i32 21, float %9543)  ; Exp(value)
  %9545 = fsub fast float 1.000000e+00, %9544
  %9546 = fmul fast float %9515, %9545
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = fdiv fast float %9547, %9518
  br label %9549

; <label>:9549                                    ; preds = %9542, %9538
  %9550 = phi float [ %9544, %9542 ], [ 1.000000e+00, %9538 ]
  %9551 = phi float [ %9548, %9542 ], [ %9515, %9538 ]
  %9552 = fcmp fast ogt float %9448, %9450
  br i1 %9552, label %9553, label %9573

; <label>:9553                                    ; preds = %9549
  %9554 = fsub fast float 1.000000e+00, %9450
  %9555 = fmul fast float %9466, %9554
  %9556 = fmul fast float %9467, %9554
  %9557 = fmul fast float %9468, %9554
  %9558 = fmul fast float %9469, %9554
  %9559 = fcmp fast une float %9558, 0.000000e+00
  br i1 %9559, label %9560, label %9611, !dx.controlflow.hints !167

; <label>:9560                                    ; preds = %9553
  %9561 = fmul fast float %9558, 0x3FF7154760000000
  %9562 = call float @dx.op.unary.f32(i32 21, float %9561)  ; Exp(value)
  %9563 = fsub fast float 1.000000e+00, %9562
  %9564 = fmul fast float %9555, %9563
  %9565 = fsub fast float -0.000000e+00, %9564
  %9566 = fmul fast float %9556, %9563
  %9567 = fsub fast float -0.000000e+00, %9566
  %9568 = fmul fast float %9557, %9563
  %9569 = fsub fast float -0.000000e+00, %9568
  %9570 = fdiv fast float %9565, %9558
  %9571 = fdiv fast float %9567, %9558
  %9572 = fdiv fast float %9569, %9558
  br label %9611

; <label>:9573                                    ; preds = %9549
  %9574 = fsub fast float 1.000000e+00, %9448
  %9575 = fmul fast float %9479, %9574
  %9576 = fmul fast float %9490, %9574
  %9577 = fmul fast float %9501, %9574
  %9578 = fmul fast float %9480, %9574
  %9579 = fmul fast float %9491, %9574
  %9580 = fmul fast float %9502, %9574
  %9581 = fcmp fast une float %9578, 0.000000e+00
  br i1 %9581, label %9582, label %9589, !dx.controlflow.hints !166

; <label>:9582                                    ; preds = %9573
  %9583 = fmul fast float %9578, 0x3FF7154760000000
  %9584 = call float @dx.op.unary.f32(i32 21, float %9583)  ; Exp(value)
  %9585 = fsub fast float 1.000000e+00, %9584
  %9586 = fmul fast float %9575, %9585
  %9587 = fsub fast float -0.000000e+00, %9586
  %9588 = fdiv fast float %9587, %9578
  br label %9589

; <label>:9589                                    ; preds = %9582, %9573
  %9590 = phi float [ %9588, %9582 ], [ %9575, %9573 ]
  %9591 = phi float [ %9584, %9582 ], [ 1.000000e+00, %9573 ]
  %9592 = fcmp fast une float %9579, 0.000000e+00
  br i1 %9592, label %9593, label %9600, !dx.controlflow.hints !166

; <label>:9593                                    ; preds = %9589
  %9594 = fmul fast float %9579, 0x3FF7154760000000
  %9595 = call float @dx.op.unary.f32(i32 21, float %9594)  ; Exp(value)
  %9596 = fsub fast float 1.000000e+00, %9595
  %9597 = fmul fast float %9576, %9596
  %9598 = fsub fast float -0.000000e+00, %9597
  %9599 = fdiv fast float %9598, %9579
  br label %9600

; <label>:9600                                    ; preds = %9593, %9589
  %9601 = phi float [ %9599, %9593 ], [ %9576, %9589 ]
  %9602 = phi float [ %9595, %9593 ], [ 1.000000e+00, %9589 ]
  %9603 = fcmp fast une float %9580, 0.000000e+00
  br i1 %9603, label %9604, label %9611, !dx.controlflow.hints !166

; <label>:9604                                    ; preds = %9600
  %9605 = fmul fast float %9580, 0x3FF7154760000000
  %9606 = call float @dx.op.unary.f32(i32 21, float %9605)  ; Exp(value)
  %9607 = fsub fast float 1.000000e+00, %9606
  %9608 = fmul fast float %9577, %9607
  %9609 = fsub fast float -0.000000e+00, %9608
  %9610 = fdiv fast float %9609, %9580
  br label %9611

; <label>:9611                                    ; preds = %9604, %9600, %9560, %9553
  %9612 = phi float [ %9610, %9604 ], [ %9572, %9560 ], [ %9557, %9553 ], [ %9577, %9600 ]
  %9613 = phi float [ %9601, %9604 ], [ %9571, %9560 ], [ %9556, %9553 ], [ %9601, %9600 ]
  %9614 = phi float [ %9590, %9604 ], [ %9570, %9560 ], [ %9555, %9553 ], [ %9590, %9600 ]
  %9615 = phi float [ %9606, %9604 ], [ %9562, %9560 ], [ 1.000000e+00, %9553 ], [ 1.000000e+00, %9600 ]
  %9616 = phi float [ %9602, %9604 ], [ %9562, %9560 ], [ 1.000000e+00, %9553 ], [ %9602, %9600 ]
  %9617 = phi float [ %9591, %9604 ], [ %9562, %9560 ], [ 1.000000e+00, %9553 ], [ %9591, %9600 ]
  %9618 = fmul fast float %9617, %9529
  %9619 = fmul fast float %9616, %9540
  %9620 = fmul fast float %9615, %9551
  %9621 = fadd fast float %9618, %9614
  %9622 = fadd fast float %9619, %9613
  %9623 = fadd fast float %9620, %9612
  %9624 = fmul fast float %9617, %9528
  %9625 = fmul fast float %9616, %9539
  %9626 = fmul fast float %9615, %9550
  br label %9627

; <label>:9627                                    ; preds = %9611, %9422
  %9628 = phi float [ %9626, %9611 ], [ %9428, %9422 ]
  %9629 = phi float [ %9625, %9611 ], [ %9427, %9422 ]
  %9630 = phi float [ %9624, %9611 ], [ %9426, %9422 ]
  %9631 = phi float [ %9623, %9611 ], [ %9425, %9422 ]
  %9632 = phi float [ %9622, %9611 ], [ %9424, %9422 ]
  %9633 = phi float [ %9621, %9611 ], [ %9423, %9422 ]
  %9634 = fmul fast float %9633, %8584
  %9635 = fmul fast float %9632, %8584
  %9636 = fmul fast float %9631, %8584
  %9637 = fmul fast float %9630, %8874
  %9638 = call float @dx.op.dot3.f32(i32 55, float %9630, float %9629, float %9628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9639 = call float @dx.op.dot3.f32(i32 55, float %9634, float %9635, float %9636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9640 = select i1 %217, float %9638, float %9630
  %9641 = select i1 %217, float %9638, float %9629
  %9642 = select i1 %217, float 1.000000e+00, float %9628
  %9643 = select i1 %217, float %9639, float %9634
  %9644 = select i1 %217, float 0.000000e+00, float %9635
  %9645 = select i1 %217, float 0.000000e+00, float %9636
  %9646 = fmul fast float %9640, %8868
  %9647 = fmul fast float %9641, %8869
  %9648 = fmul fast float %9642, %8870
  %9649 = fadd fast float %9646, %9643
  %9650 = fadd fast float %9647, %9644
  %9651 = fadd fast float %9645, %9648
  %9652 = fmul fast float %9640, %8871
  %9653 = fmul fast float %9641, %8872
  %9654 = fmul fast float %9642, %8873
  %9655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.i32 %9655, 0
  %9657 = icmp eq i32 %9656, 0
  br i1 %9657, label %10025, label %9658, !dx.controlflow.hints !168

; <label>:9658                                    ; preds = %9627
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 2
  %9661 = extractvalue %dx.types.CBufRet.f32 %9659, 3
  %9662 = fmul fast float %9660, %100
  %9663 = fmul fast float %9661, %101
  %9664 = fmul fast float %9662, 2.000000e+00
  %9665 = fmul fast float %9663, 2.000000e+00
  %9666 = fsub fast float 1.000000e+00, %9664
  %9667 = fsub fast float 1.000000e+00, %9665
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.f32 %9668, 1
  %9671 = extractvalue %dx.types.CBufRet.f32 %9668, 2
  %9672 = fmul fast float %9666, %9669
  %9673 = fmul fast float %9666, %9670
  %9674 = fmul fast float %9666, %9671
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 0
  %9677 = extractvalue %dx.types.CBufRet.f32 %9675, 1
  %9678 = extractvalue %dx.types.CBufRet.f32 %9675, 2
  %9679 = fmul fast float %9667, %9676
  %9680 = fmul fast float %9667, %9677
  %9681 = fmul fast float %9667, %9678
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 0
  %9684 = extractvalue %dx.types.CBufRet.f32 %9682, 1
  %9685 = extractvalue %dx.types.CBufRet.f32 %9682, 2
  %9686 = fadd fast float %9679, %9683
  %9687 = fadd fast float %9686, %9672
  %9688 = fadd fast float %9680, %9684
  %9689 = fadd fast float %9688, %9673
  %9690 = fadd fast float %9681, %9685
  %9691 = fadd fast float %9690, %9674
  %9692 = fmul fast float %9687, %8867
  %9693 = fmul fast float %9689, %8867
  %9694 = fmul fast float %9691, %8867
  %9695 = fmul fast float %9692, %9692
  %9696 = fmul fast float %9693, %9693
  %9697 = fadd fast float %9695, %9696
  %9698 = fmul fast float %9694, %9694
  %9699 = fadd fast float %9697, %9698
  %9700 = call float @dx.op.unary.f32(i32 24, float %9699)  ; Sqrt(value)
  %9701 = extractvalue %dx.types.CBufRet.f32 %8595, 0
  %9702 = fsub fast float %9700, %9701
  %9703 = extractvalue %dx.types.CBufRet.f32 %8595, 2
  %9704 = fmul fast float %9702, %9703
  %9705 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9706 = fadd fast float %9705, -5.000000e-01
  %9707 = fmul fast float %9706, 2.000000e+00
  %9708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9709 = extractvalue %dx.types.CBufRet.f32 %9708, 2
  %9710 = call float @dx.op.binary.f32(i32 36, float %9709, float %9707)  ; FMin(a,b)
  %9711 = fsub fast float -0.000000e+00, %9709
  %9712 = fcmp fast ogt float %9710, %9711
  br i1 %9712, label %9713, label %10025, !dx.controlflow.hints !169

; <label>:9713                                    ; preds = %9658
  %9714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9715 = extractvalue %dx.types.CBufRet.f32 %9714, 3
  %9716 = fcmp fast ogt float %9715, 0.000000e+00
  br i1 %9716, label %9717, label %9792, !dx.controlflow.hints !170

; <label>:9717                                    ; preds = %9713
  %9718 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9719 = extractvalue %dx.types.Dimensions %9718, 0
  %9720 = sitofp i32 %9719 to float
  %9721 = extractvalue %dx.types.Dimensions %9718, 1
  %9722 = sitofp i32 %9721 to float
  %9723 = fmul fast float %9662, %9720
  %9724 = fmul fast float %9663, %9722
  %9725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9726 = extractvalue %dx.types.CBufRet.f32 %9725, 1
  %9727 = fsub fast float -0.000000e+00, %9726
  %9728 = fptoui float %9727 to i32
  %9729 = fptoui float %9723 to i32
  %9730 = fptoui float %9724 to i32
  %9731 = and i32 %9728, 31
  %9732 = lshr i32 %9729, %9731
  %9733 = lshr i32 %9730, %9731
  %9734 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9728, i32 %9732, i32 %9733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9735 = extractvalue %dx.types.ResRet.f32 %9734, 0
  %9736 = fcmp fast olt float %9735, -1.000000e+00
  %9737 = fcmp fast ogt float %9735, -1.000000e+00
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9740 = select i1 %9737, float %9739, float 1.000000e+00
  %9741 = fadd fast float %9735, 1.000000e+00
  %9742 = fmul fast float %9740, %9741
  %9743 = call float @dx.op.unary.f32(i32 6, float %9742)  ; FAbs(value)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9738, 3
  %9745 = fcmp fast oge float %9743, %9744
  %9746 = select i1 %9745, float 0x4197782600000000, float %9743
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 0
  %9749 = extractvalue %dx.types.CBufRet.f32 %9747, 1
  %9750 = extractvalue %dx.types.CBufRet.f32 %9747, 2
  %9751 = select i1 %9736, float %9748, float %9669
  %9752 = select i1 %9736, float %9749, float %9670
  %9753 = select i1 %9736, float %9750, float %9671
  %9754 = fmul fast float %9751, %9666
  %9755 = fmul fast float %9752, %9666
  %9756 = fmul fast float %9753, %9666
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.CBufRet.f32 %9757, 2
  %9761 = select i1 %9736, float %9758, float %9676
  %9762 = select i1 %9736, float %9759, float %9677
  %9763 = select i1 %9736, float %9760, float %9678
  %9764 = fmul fast float %9761, %9667
  %9765 = fmul fast float %9762, %9667
  %9766 = fmul fast float %9763, %9667
  %9767 = fadd fast float %9764, %9754
  %9768 = fadd fast float %9765, %9755
  %9769 = fadd fast float %9766, %9756
  %9770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9771 = extractvalue %dx.types.CBufRet.f32 %9770, 0
  %9772 = extractvalue %dx.types.CBufRet.f32 %9770, 1
  %9773 = extractvalue %dx.types.CBufRet.f32 %9770, 2
  %9774 = select i1 %9736, float %9771, float %9683
  %9775 = select i1 %9736, float %9772, float %9684
  %9776 = select i1 %9736, float %9773, float %9685
  %9777 = fadd fast float %9767, %9774
  %9778 = fadd fast float %9768, %9775
  %9779 = fadd fast float %9769, %9776
  %9780 = fmul fast float %9777, %9746
  %9781 = fmul fast float %9778, %9746
  %9782 = fmul fast float %9779, %9746
  %9783 = fmul fast float %9780, %9780
  %9784 = fmul fast float %9781, %9781
  %9785 = fadd fast float %9783, %9784
  %9786 = fmul fast float %9782, %9782
  %9787 = fadd fast float %9785, %9786
  %9788 = call float @dx.op.unary.f32(i32 24, float %9787)  ; Sqrt(value)
  %9789 = fsub fast float %9788, %9701
  %9790 = fmul fast float %9789, %9703
  %9791 = call float @dx.op.unary.f32(i32 7, float %9790)  ; Saturate(value)
  br label %9792

; <label>:9792                                    ; preds = %9717, %9713
  %9793 = phi float [ %9791, %9717 ], [ 1.000000e+00, %9713 ]
  %9794 = fmul fast float %9710, 5.000000e-01
  %9795 = fadd fast float %9794, 5.000000e-01
  %9796 = call float @dx.op.unary.f32(i32 22, float %9795)  ; Frc(value)
  %9797 = call float @dx.op.unary.f32(i32 27, float %9796)  ; Round_ni(value)
  %9798 = call float @dx.op.unary.f32(i32 22, float %9796)  ; Frc(value)
  %9799 = fmul fast float %9798, 2.000000e+00
  %9800 = fadd fast float %9799, -1.000000e+00
  %9801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9662, float %9663, float %9797, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9802 = extractvalue %dx.types.ResRet.f32 %9801, 0
  %9803 = extractvalue %dx.types.ResRet.f32 %9801, 1
  %9804 = extractvalue %dx.types.ResRet.f32 %9801, 2
  %9805 = extractvalue %dx.types.ResRet.f32 %9801, 3
  %9806 = fadd fast float %9802, -5.000000e-01
  %9807 = fadd fast float %9804, -5.000000e-01
  %9808 = fmul fast float %9806, 0xBFD5555560000000
  %9809 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9807, float %9808)  ; FMad(a,b,c)
  %9810 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9803, float 0.000000e+00)  ; FMad(a,b,c)
  %9811 = fadd fast float %9810, %9805
  %9812 = fmul fast float %9806, -7.500000e-01
  %9813 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9807, float %9812)  ; FMad(a,b,c)
  %9814 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9803, float 0.000000e+00)  ; FMad(a,b,c)
  %9815 = fadd fast float %9814, %9805
  %9816 = call float @dx.op.binary.f32(i32 35, float %9809, float -1.000000e+00)  ; FMax(a,b)
  %9817 = call float @dx.op.binary.f32(i32 35, float %9811, float -1.000000e+00)  ; FMax(a,b)
  %9818 = call float @dx.op.binary.f32(i32 35, float %9813, float -1.000000e+00)  ; FMax(a,b)
  %9819 = call float @dx.op.binary.f32(i32 35, float %9815, float -1.000000e+00)  ; FMax(a,b)
  %9820 = call float @dx.op.binary.f32(i32 36, float %9816, float 1.000000e+00)  ; FMin(a,b)
  %9821 = call float @dx.op.binary.f32(i32 36, float %9817, float 1.000000e+00)  ; FMin(a,b)
  %9822 = call float @dx.op.binary.f32(i32 36, float %9818, float 1.000000e+00)  ; FMin(a,b)
  %9823 = call float @dx.op.binary.f32(i32 36, float %9819, float 1.000000e+00)  ; FMin(a,b)
  %9824 = fcmp fast olt float %9820, 0x3FEFFF8020000000
  br i1 %9824, label %9825, label %9940, !dx.controlflow.hints !171

; <label>:9825                                    ; preds = %9792
  %9826 = extractvalue %dx.types.CBufRet.f32 %9708, 3
  %9827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9828 = extractvalue %dx.types.CBufRet.f32 %9827, 0
  %9829 = extractvalue %dx.types.CBufRet.f32 %9827, 1
  %9830 = extractvalue %dx.types.CBufRet.f32 %9827, 2
  %9831 = extractvalue %dx.types.CBufRet.f32 %9827, 3
  %9832 = fsub fast float %9828, %9820
  %9833 = fsub fast float %9829, %9821
  %9834 = fsub fast float %9830, %9822
  %9835 = fsub fast float %9831, %9823
  %9836 = fmul fast float %9832, %9826
  %9837 = fmul fast float %9833, %9826
  %9838 = fmul fast float %9834, %9826
  %9839 = fmul fast float %9835, %9826
  %9840 = fadd fast float %9836, %9820
  %9841 = fadd fast float %9837, %9821
  %9842 = fsub fast float -0.000000e+00, %9841
  %9843 = fadd fast float %9838, %9822
  %9844 = fadd fast float %9839, %9823
  %9845 = fmul fast float %9840, %9840
  %9846 = fsub fast float %9841, %9845
  %9847 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9846)  ; FMax(a,b)
  %9848 = fdiv fast float 1.000000e+00, %9847
  %9849 = fmul fast float %9841, %9840
  %9850 = fsub fast float %9843, %9849
  %9851 = fsub fast float %9800, %9840
  %9852 = fmul fast float %9800, %9800
  %9853 = fsub fast float %9852, %9841
  %9854 = fmul fast float %9851, %9848
  %9855 = fmul fast float %9854, %9850
  %9856 = fsub fast float %9853, %9855
  %9857 = fmul fast float %9841, %9841
  %9858 = fsub fast float %9844, %9857
  %9859 = fmul fast float %9850, %9850
  %9860 = fmul fast float %9859, %9848
  %9861 = fsub fast float %9858, %9860
  %9862 = fdiv fast float %9856, %9861
  %9863 = fmul fast float %9850, %9862
  %9864 = fsub fast float %9851, %9863
  %9865 = fmul fast float %9864, %9848
  %9866 = fmul fast float %9865, %9840
  %9867 = fsub fast float 1.000000e+00, %9866
  %9868 = fmul fast float %9841, %9862
  %9869 = fsub fast float %9867, %9868
  %9870 = fmul fast float %9865, %9865
  %9871 = fmul fast float %9862, 4.000000e+00
  %9872 = fmul fast float %9871, %9869
  %9873 = fsub fast float %9870, %9872
  %9874 = call float @dx.op.unary.f32(i32 24, float %9873)  ; Sqrt(value)
  %9875 = fcmp fast oge float %9865, 0.000000e+00
  %9876 = fsub fast float -0.000000e+00, %9874
  %9877 = select i1 %9875, float %9876, float %9874
  %9878 = fsub fast float %9877, %9865
  %9879 = fdiv fast float %9878, %9862
  %9880 = fdiv fast float %9869, %9878
  %9881 = fmul fast float %9879, 5.000000e-01
  %9882 = fmul fast float %9880, 2.000000e+00
  %9883 = select i1 %9875, float %9881, float %9882
  %9884 = select i1 %9875, float %9882, float %9881
  %9885 = call float @dx.op.binary.f32(i32 35, float %9883, float %9884)  ; FMax(a,b)
  %9886 = call float @dx.op.binary.f32(i32 36, float %9883, float %9884)  ; FMin(a,b)
  %9887 = fcmp fast ogt float %9800, %9886
  br i1 %9887, label %9888, label %9898

; <label>:9888                                    ; preds = %9825
  %9889 = fsub fast float %9800, %9886
  %9890 = fsub fast float %9885, %9886
  %9891 = fmul fast float %9889, %9890
  %9892 = fmul fast float %9885, %9800
  %9893 = fadd fast float %9885, %9800
  %9894 = fmul fast float %9893, %9840
  %9895 = fadd fast float %9892, %9841
  %9896 = fsub fast float %9895, %9894
  %9897 = fdiv fast float %9896, %9891
  br label %9898

; <label>:9898                                    ; preds = %9888, %9825
  %9899 = phi float [ %9897, %9888 ], [ 0.000000e+00, %9825 ]
  %9900 = fcmp fast ogt float %9800, %9885
  %9901 = fsub fast float %9800, %9885
  br i1 %9900, label %9902, label %9912

; <label>:9902                                    ; preds = %9898
  %9903 = fsub fast float %9885, %9886
  %9904 = fmul fast float %9903, %9901
  %9905 = fmul fast float %9886, %9800
  %9906 = fadd fast float %9886, %9800
  %9907 = fmul fast float %9906, %9840
  %9908 = fsub fast float %9842, %9905
  %9909 = fadd fast float %9908, %9907
  %9910 = fdiv fast float %9909, %9904
  %9911 = fadd fast float %9910, %9899
  br label %9912

; <label>:9912                                    ; preds = %9902, %9898
  %9913 = phi float [ %9911, %9902 ], [ %9899, %9898 ]
  %9914 = fsub fast float %9800, %9886
  %9915 = fmul fast float %9914, %9901
  %9916 = fmul fast float %9886, %9885
  %9917 = fadd fast float %9886, %9885
  %9918 = fmul fast float %9917, %9840
  %9919 = fadd fast float %9916, %9841
  %9920 = fsub fast float %9919, %9918
  %9921 = fdiv fast float %9920, %9915
  %9922 = call float @dx.op.unary.f32(i32 7, float %9913)  ; Saturate(value)
  %9923 = fcmp fast oeq float %8596, 0.000000e+00
  %9924 = extractvalue %dx.types.CBufRet.f32 %9708, 0
  %9925 = fcmp fast oeq float %9924, 0.000000e+00
  %9926 = or i1 %9923, %9925
  %9927 = fmul fast float %9924, 2.000000e+00
  %9928 = fadd fast float %9709, %9710
  %9929 = fdiv fast float %9928, %9927
  %9930 = call float @dx.op.unary.f32(i32 7, float %9929)  ; Saturate(value)
  %9931 = fmul fast float %9930, 2.000000e+00
  %9932 = fsub fast float 3.000000e+00, %9931
  %9933 = fmul fast float %9930, %9930
  %9934 = fmul fast float %9933, %9932
  %9935 = select i1 %9926, float 1.000000e+00, float %9934
  %9936 = fmul fast float %9921, %8596
  %9937 = fadd fast float %9922, %9936
  %9938 = call float @dx.op.unary.f32(i32 7, float %9937)  ; Saturate(value)
  %9939 = fmul fast float %9935, %9938
  br label %9940

; <label>:9940                                    ; preds = %9912, %9792
  %9941 = phi float [ %9939, %9912 ], [ 0.000000e+00, %9792 ]
  %9942 = fsub fast float 1.000000e+00, %9941
  %9943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9662, float %9663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9944 = extractvalue %dx.types.ResRet.f32 %9943, 0
  %9945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9946 = extractvalue %dx.types.CBufRet.i32 %9945, 2
  %9947 = icmp eq i32 %9946, 0
  br i1 %9947, label %9953, label %9948

; <label>:9948                                    ; preds = %9940
  %9949 = call float @dx.op.unary.f32(i32 7, float %9941)  ; Saturate(value)
  %9950 = fadd fast float %9944, -1.000000e+00
  %9951 = fmul fast float %9949, %9950
  %9952 = fadd fast float %9951, 1.000000e+00
  br label %9953

; <label>:9953                                    ; preds = %9948, %9940
  %9954 = phi float [ %9952, %9948 ], [ %9942, %9940 ]
  br i1 %9716, label %9955, label %9973

; <label>:9955                                    ; preds = %9953
  %9956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9957 = extractvalue %dx.types.CBufRet.f32 %9956, 1
  %9958 = fsub fast float %9793, %9957
  %9959 = call float @dx.op.unary.f32(i32 7, float %9958)  ; Saturate(value)
  %9960 = fsub fast float %9793, %9715
  %9961 = call float @dx.op.unary.f32(i32 7, float %9960)  ; Saturate(value)
  %9962 = fsub fast float %9959, %9961
  %9963 = fsub fast float %9795, %9961
  %9964 = fdiv fast float %9963, %9962
  %9965 = call float @dx.op.unary.f32(i32 7, float %9964)  ; Saturate(value)
  %9966 = fmul fast float %9965, 2.000000e+00
  %9967 = fsub fast float 3.000000e+00, %9966
  %9968 = fsub fast float %9944, %9954
  %9969 = fmul fast float %9965, %9965
  %9970 = fmul fast float %9969, %9968
  %9971 = fmul fast float %9970, %9967
  %9972 = fadd fast float %9971, %9954
  br label %9973

; <label>:9973                                    ; preds = %9955, %9953
  %9974 = phi float [ %9972, %9955 ], [ %9954, %9953 ]
  %9975 = call float @dx.op.binary.f32(i32 35, float %9944, float %9974)  ; FMax(a,b)
  %9976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9977 = extractvalue %dx.types.CBufRet.i32 %9976, 2
  %9978 = and i32 %9977, 1
  %9979 = icmp eq i32 %9978, 0
  %9980 = fcmp fast une float %9975, 1.000000e+00
  %9981 = and i1 %9980, %9979
  br i1 %9981, label %9982, label %10001

; <label>:9982                                    ; preds = %9973
  %9983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9662, float %9663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9984 = extractvalue %dx.types.ResRet.f32 %9983, 0
  %9985 = extractvalue %dx.types.ResRet.f32 %9983, 1
  %9986 = extractvalue %dx.types.ResRet.f32 %9983, 2
  %9987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9988 = extractvalue %dx.types.CBufRet.f32 %9987, 1
  %9989 = fmul fast float %9988, %9984
  %9990 = fmul fast float %9988, %9985
  %9991 = fmul fast float %9988, %9986
  %9992 = fcmp fast ogt float %9944, 0x3FEFFF2E40000000
  %9993 = fsub fast float 1.000000e+00, %9975
  %9994 = fsub fast float 1.000000e+00, %9944
  %9995 = fdiv fast float %9993, %9994
  %9996 = call float @dx.op.unary.f32(i32 7, float %9995)  ; Saturate(value)
  %9997 = select i1 %9992, float 0.000000e+00, float %9996
  %9998 = fmul fast float %9989, %9997
  %9999 = fmul fast float %9990, %9997
  %10000 = fmul fast float %9991, %9997
  br label %10001

; <label>:10001                                   ; preds = %9982, %9973
  %10002 = phi float [ 0.000000e+00, %9973 ], [ %9998, %9982 ]
  %10003 = phi float [ 0.000000e+00, %9973 ], [ %9999, %9982 ]
  %10004 = phi float [ 0.000000e+00, %9973 ], [ %10000, %9982 ]
  %10005 = fmul fast float %10002, %8584
  %10006 = fmul fast float %10003, %8584
  %10007 = fmul fast float %10004, %8584
  %10008 = fmul fast float %9975, %9637
  %10009 = call float @dx.op.dot3.f32(i32 55, float %9975, float %9975, float %9975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10010 = call float @dx.op.dot3.f32(i32 55, float %10005, float %10006, float %10007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10011 = select i1 %217, float %10009, float %9975
  %10012 = select i1 %217, float 1.000000e+00, float %9975
  %10013 = select i1 %217, float %10010, float %10005
  %10014 = select i1 %217, float 0.000000e+00, float %10006
  %10015 = select i1 %217, float 0.000000e+00, float %10007
  %10016 = fmul fast float %10011, %9649
  %10017 = fmul fast float %10011, %9650
  %10018 = fmul fast float %10012, %9651
  %10019 = fadd fast float %10016, %10013
  %10020 = fadd fast float %10017, %10014
  %10021 = fadd fast float %10015, %10018
  %10022 = fmul fast float %10011, %9652
  %10023 = fmul fast float %10011, %9653
  %10024 = fmul fast float %10012, %9654
  br label %10025

; <label>:10025                                   ; preds = %10001, %9658, %9627, %8863
  %10026 = phi float [ %8868, %8863 ], [ %9649, %9627 ], [ %10019, %10001 ], [ %9649, %9658 ]
  %10027 = phi float [ %8869, %8863 ], [ %9650, %9627 ], [ %10020, %10001 ], [ %9650, %9658 ]
  %10028 = phi float [ %8870, %8863 ], [ %9651, %9627 ], [ %10021, %10001 ], [ %9651, %9658 ]
  %10029 = phi float [ %8871, %8863 ], [ %9652, %9627 ], [ %10022, %10001 ], [ %9652, %9658 ]
  %10030 = phi float [ %8872, %8863 ], [ %9653, %9627 ], [ %10023, %10001 ], [ %9653, %9658 ]
  %10031 = phi float [ %8873, %8863 ], [ %9654, %9627 ], [ %10024, %10001 ], [ %9654, %9658 ]
  %10032 = phi float [ %8874, %8863 ], [ %9637, %9627 ], [ %10008, %10001 ], [ %9637, %9658 ]
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 2
  %10035 = extractvalue %dx.types.CBufRet.f32 %10033, 3
  %10036 = fmul fast float %10034, %100
  %10037 = fmul fast float %10035, %101
  %10038 = call float @dx.op.unary.f32(i32 7, float %10036)  ; Saturate(value)
  %10039 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10040 = select i1 %8606, i32 2, i32 0
  %10041 = or i32 %10040, 1
  %10042 = uitofp i32 %10041 to float
  %10043 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %10038, float %10039, float %10042, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10044 = extractvalue %dx.types.ResRet.f32 %10043, 0
  %10045 = extractvalue %dx.types.ResRet.f32 %10043, 1
  %10046 = extractvalue %dx.types.ResRet.f32 %10043, 2
  %10047 = extractvalue %dx.types.ResRet.f32 %10043, 3
  %10048 = add nuw nsw i32 %10040, 2
  %10049 = uitofp i32 %10048 to float
  %10050 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %10038, float %10039, float %10049, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10051 = extractvalue %dx.types.ResRet.f32 %10050, 0
  %10052 = extractvalue %dx.types.ResRet.f32 %10050, 1
  %10053 = extractvalue %dx.types.ResRet.f32 %10050, 2
  %10054 = extractvalue %dx.types.ResRet.f32 %10050, 3
  %10055 = call float @dx.op.binary.f32(i32 35, float %10045, float %10046)  ; FMax(a,b)
  %10056 = call float @dx.op.binary.f32(i32 35, float %10044, float %10055)  ; FMax(a,b)
  %10057 = call float @dx.op.binary.f32(i32 35, float %10056, float %10047)  ; FMax(a,b)
  %10058 = call float @dx.op.binary.f32(i32 36, float %10052, float %10053)  ; FMin(a,b)
  %10059 = call float @dx.op.binary.f32(i32 36, float %10051, float %10058)  ; FMin(a,b)
  %10060 = call float @dx.op.binary.f32(i32 36, float %10059, float %10054)  ; FMin(a,b)
  %10061 = fmul fast float %10057, 2.550000e+02
  %10062 = fadd fast float %10061, 0x3F70101020000000
  %10063 = fptoui float %10062 to i32
  %10064 = fmul fast float %10060, 2.550000e+02
  %10065 = fadd fast float %10064, 0x3F70101020000000
  %10066 = fptoui float %10065 to i32
  %10067 = icmp ult i32 %10063, %10066
  br i1 %10067, label %10068, label %10236

; <label>:10068                                   ; preds = %10025
  %10069 = fadd fast float %8867, -4.000000e+00
  %10070 = select i1 %5715, float -4.000000e+00, float %10069
  %10071 = call float @dx.op.binary.f32(i32 35, float %10070, float 0.000000e+00)  ; FMax(a,b)
  %10072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10073 = extractvalue %dx.types.CBufRet.f32 %10072, 0
  %10074 = fadd fast float %10073, %10071
  %10075 = extractvalue %dx.types.CBufRet.f32 %10072, 2
  %10076 = fmul fast float %10074, %10075
  %10077 = call float @dx.op.unary.f32(i32 23, float %10076)  ; Log(value)
  %10078 = extractvalue %dx.types.CBufRet.f32 %10072, 3
  %10079 = fmul fast float %10078, %10077
  %10080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10081 = extractvalue %dx.types.CBufRet.f32 %10080, 2
  %10082 = fmul fast float %10079, %10081
  %10083 = call float @dx.op.unary.f32(i32 7, float %10082)  ; Saturate(value)
  %10084 = uitofp i32 %10063 to float
  %10085 = uitofp i32 %10066 to float
  %10086 = fadd fast float %10084, 5.000000e-01
  %10087 = fadd fast float %10085, 5.000000e-01
  %10088 = fmul fast float %10081, %10086
  %10089 = fmul fast float %10081, %10087
  %10090 = fadd fast float %10088, 0x3F0FFB4800000000
  %10091 = fadd fast float %10089, 0xBF0FFB4800000000
  %10092 = call float @dx.op.binary.f32(i32 35, float %10083, float %10090)  ; FMax(a,b)
  %10093 = call float @dx.op.binary.f32(i32 36, float %10092, float %10091)  ; FMin(a,b)
  %10094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10095 = extractvalue %dx.types.CBufRet.f32 %10094, 1
  %10096 = extractvalue %dx.types.CBufRet.f32 %10094, 2
  %10097 = extractvalue %dx.types.CBufRet.f32 %10094, 0
  %10098 = select i1 %8606, float %10097, float 0.000000e+00
  %10099 = fmul fast float %10095, %10093
  %10100 = fadd fast float %10098, %10099
  %10101 = fadd fast float %10098, %10096
  %10102 = fsub fast float %10095, %10096
  %10103 = fadd fast float %10102, %10098
  %10104 = call float @dx.op.binary.f32(i32 35, float %10100, float %10101)  ; FMax(a,b)
  %10105 = call float @dx.op.binary.f32(i32 36, float %10104, float %10103)  ; FMin(a,b)
  %10106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %10038, float %10039, float %10105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10107 = extractvalue %dx.types.ResRet.f32 %10106, 0
  %10108 = extractvalue %dx.types.ResRet.f32 %10106, 1
  %10109 = extractvalue %dx.types.ResRet.f32 %10106, 2
  %10110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10111 = extractvalue %dx.types.CBufRet.i32 %10110, 0
  %10112 = extractvalue %dx.types.CBufRet.i32 %10110, 1
  %10113 = uitofp i32 %10111 to float
  %10114 = uitofp i32 %10112 to float
  %10115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10116 = extractvalue %dx.types.CBufRet.f32 %10115, 0
  %10117 = extractvalue %dx.types.CBufRet.f32 %10115, 1
  %10118 = fmul fast float %10113, %10038
  %10119 = fmul fast float %10114, %10039
  %10120 = fadd fast float %10118, -5.000000e-01
  %10121 = fadd fast float %10119, -5.000000e-01
  %10122 = call float @dx.op.unary.f32(i32 22, float %10120)  ; Frc(value)
  %10123 = call float @dx.op.unary.f32(i32 22, float %10121)  ; Frc(value)
  %10124 = fmul fast float %10122, %10122
  %10125 = fmul fast float %10124, %10122
  %10126 = fsub fast float 3.000000e+00, %10122
  %10127 = fmul fast float %10124, %10126
  %10128 = fmul fast float %10122, 3.000000e+00
  %10129 = fmul fast float %10125, 3.000000e+00
  %10130 = fmul fast float %10124, 6.000000e+00
  %10131 = fsub fast float %10129, %10130
  %10132 = fadd fast float %10131, 4.000000e+00
  %10133 = fmul fast float %10132, 0x3FC5555560000000
  %10134 = fmul fast float %10125, -3.000000e+00
  %10135 = fadd fast float %10124, %10122
  %10136 = fmul fast float %10135, 3.000000e+00
  %10137 = fadd fast float %10134, 1.000000e+00
  %10138 = fadd fast float %10137, %10136
  %10139 = fmul fast float %10125, 0x3FC5555560000000
  %10140 = fmul fast float %10123, %10123
  %10141 = fmul fast float %10140, %10123
  %10142 = fsub fast float 3.000000e+00, %10123
  %10143 = fmul fast float %10140, %10142
  %10144 = fmul fast float %10123, 3.000000e+00
  %10145 = fmul fast float %10141, 3.000000e+00
  %10146 = fmul fast float %10140, 6.000000e+00
  %10147 = fsub fast float %10145, %10146
  %10148 = fadd fast float %10147, 4.000000e+00
  %10149 = fmul fast float %10148, 0x3FC5555560000000
  %10150 = fmul fast float %10141, -3.000000e+00
  %10151 = fadd fast float %10140, %10123
  %10152 = fmul fast float %10151, 3.000000e+00
  %10153 = fadd fast float %10150, 1.000000e+00
  %10154 = fadd fast float %10153, %10152
  %10155 = fmul fast float %10141, 0x3FC5555560000000
  %10156 = fadd fast float %10122, 1.000000e+00
  %10157 = fsub fast float 1.000000e+00, %10128
  %10158 = fadd fast float %10157, %10127
  %10159 = fadd fast float %10158, %10132
  %10160 = fmul fast float %10159, 0x3FC5555560000000
  %10161 = fdiv fast float %10133, %10160
  %10162 = fsub fast float %10156, %10161
  %10163 = fsub fast float 1.000000e+00, %10122
  %10164 = fadd fast float %10138, %10125
  %10165 = fmul fast float %10164, 0x3FC5555560000000
  %10166 = fdiv fast float %10139, %10165
  %10167 = fadd fast float %10163, %10166
  %10168 = fadd fast float %10123, 1.000000e+00
  %10169 = fsub fast float 1.000000e+00, %10144
  %10170 = fadd fast float %10169, %10143
  %10171 = fadd fast float %10170, %10148
  %10172 = fmul fast float %10171, 0x3FC5555560000000
  %10173 = fdiv fast float %10149, %10172
  %10174 = fsub fast float %10168, %10173
  %10175 = fsub fast float 1.000000e+00, %10123
  %10176 = fadd fast float %10154, %10141
  %10177 = fmul fast float %10176, 0x3FC5555560000000
  %10178 = fdiv fast float %10155, %10177
  %10179 = fadd fast float %10178, %10175
  %10180 = fmul fast float %10162, %10116
  %10181 = fsub fast float %10038, %10180
  %10182 = fmul fast float %10167, %10116
  %10183 = fadd fast float %10182, %10038
  %10184 = fmul fast float %10179, %10117
  %10185 = fadd fast float %10184, %10039
  %10186 = fmul fast float %10174, %10117
  %10187 = fsub fast float %10039, %10186
  %10188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %10181, float %10187, float %10105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10189 = extractvalue %dx.types.ResRet.f32 %10188, 0
  %10190 = extractvalue %dx.types.ResRet.f32 %10188, 1
  %10191 = extractvalue %dx.types.ResRet.f32 %10188, 2
  %10192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %10183, float %10187, float %10105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10193 = extractvalue %dx.types.ResRet.f32 %10192, 0
  %10194 = extractvalue %dx.types.ResRet.f32 %10192, 1
  %10195 = extractvalue %dx.types.ResRet.f32 %10192, 2
  %10196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %10181, float %10185, float %10105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10197 = extractvalue %dx.types.ResRet.f32 %10196, 0
  %10198 = extractvalue %dx.types.ResRet.f32 %10196, 1
  %10199 = extractvalue %dx.types.ResRet.f32 %10196, 2
  %10200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %10183, float %10185, float %10105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10201 = extractvalue %dx.types.ResRet.f32 %10200, 0
  %10202 = extractvalue %dx.types.ResRet.f32 %10200, 1
  %10203 = extractvalue %dx.types.ResRet.f32 %10200, 2
  %10204 = fsub fast float %10197, %10189
  %10205 = fsub fast float %10198, %10190
  %10206 = fsub fast float %10199, %10191
  %10207 = fmul fast float %10204, %10177
  %10208 = fmul fast float %10205, %10177
  %10209 = fmul fast float %10206, %10177
  %10210 = fadd fast float %10207, %10189
  %10211 = fadd fast float %10208, %10190
  %10212 = fadd fast float %10209, %10191
  %10213 = fsub fast float %10201, %10193
  %10214 = fsub fast float %10202, %10194
  %10215 = fsub fast float %10203, %10195
  %10216 = fmul fast float %10213, %10177
  %10217 = fmul fast float %10214, %10177
  %10218 = fmul fast float %10215, %10177
  %10219 = fsub fast float %10193, %10210
  %10220 = fadd fast float %10219, %10216
  %10221 = fsub fast float %10194, %10211
  %10222 = fadd fast float %10221, %10217
  %10223 = fsub fast float %10195, %10212
  %10224 = fadd fast float %10223, %10218
  %10225 = fmul fast float %10220, %10165
  %10226 = fmul fast float %10222, %10165
  %10227 = fmul fast float %10224, %10165
  %10228 = fadd fast float %10225, %10210
  %10229 = fadd fast float %10226, %10211
  %10230 = fadd fast float %10227, %10212
  %10231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10232 = extractvalue %dx.types.CBufRet.f32 %10231, 1
  %10233 = fmul fast float %10228, %10232
  %10234 = fmul fast float %10229, %10232
  %10235 = fmul fast float %10230, %10232
  br label %10236

; <label>:10236                                   ; preds = %10068, %10025
  %10237 = phi float [ %10107, %10068 ], [ 1.000000e+00, %10025 ]
  %10238 = phi float [ %10108, %10068 ], [ 1.000000e+00, %10025 ]
  %10239 = phi float [ %10109, %10068 ], [ 1.000000e+00, %10025 ]
  %10240 = phi float [ %10233, %10068 ], [ 0.000000e+00, %10025 ]
  %10241 = phi float [ %10234, %10068 ], [ 0.000000e+00, %10025 ]
  %10242 = phi float [ %10235, %10068 ], [ 0.000000e+00, %10025 ]
  %10243 = fmul fast float %10240, %8584
  %10244 = fmul fast float %10241, %8584
  %10245 = fmul fast float %10242, %8584
  %10246 = fmul fast float %10237, %10032
  %10247 = call float @dx.op.dot3.f32(i32 55, float %10237, float %10238, float %10239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10248 = call float @dx.op.dot3.f32(i32 55, float %10243, float %10244, float %10245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10249 = select i1 %217, float %10247, float %10237
  %10250 = select i1 %217, float %10247, float %10238
  %10251 = select i1 %217, float 1.000000e+00, float %10239
  %10252 = select i1 %217, float %10248, float %10243
  %10253 = select i1 %217, float 0.000000e+00, float %10244
  %10254 = select i1 %217, float 0.000000e+00, float %10245
  %10255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10256 = extractvalue %dx.types.CBufRet.i32 %10255, 3
  %10257 = and i32 %10256, 3
  %10258 = icmp ne i32 %10257, 0
  %10259 = and i32 %10256, 4
  %10260 = icmp ne i32 %10259, 0
  %10261 = and i1 %10258, %10260
  %10262 = and i1 %217, %10261
  br i1 %10262, label %10263, label %10269

; <label>:10263                                   ; preds = %10236
  %10264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10265 = extractvalue %dx.types.CBufRet.f32 %10264, 1
  %10266 = fadd fast float %10246, -1.000000e+00
  %10267 = fmul fast float %10265, %10266
  %10268 = fadd fast float %10267, 1.000000e+00
  br label %10269

; <label>:10269                                   ; preds = %10263, %10236
  %10270 = phi float [ %10268, %10263 ], [ %10246, %10236 ]
  %10271 = fadd fast float %10029, %10026
  %10272 = fmul fast float %10249, %10271
  %10273 = fadd fast float %10272, %10252
  %10274 = fadd fast float %10030, %10027
  %10275 = fmul fast float %10250, %10274
  %10276 = fadd fast float %10275, %10253
  %10277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10278 = extractvalue %dx.types.CBufRet.f32 %10277, 0
  br i1 %217, label %10279, label %10302

; <label>:10279                                   ; preds = %10269
  %10280 = fadd fast float %10273, %10276
  %10281 = fmul fast float %10278, %10280
  %10282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10283 = extractvalue %dx.types.CBufRet.f32 %10282, 3
  %10284 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %10285 = fsub fast float %8593, %8587
  %10286 = fadd fast float %10285, %8594
  %10287 = fsub fast float %10286, %10284
  %10288 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %10289 = fmul fast float %10287, %10288
  %10290 = call float @dx.op.unary.f32(i32 7, float %10289)  ; Saturate(value)
  %10291 = fsub fast float %10290, %10283
  %10292 = fmul fast float %10291, %10270
  %10293 = fadd fast float %10292, %10283
  %10294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10295 = extractvalue %dx.types.CBufRet.f32 %10294, 0
  %10296 = fsub fast float %10293, %10295
  %10297 = fmul fast float %10296, 1.000000e+01
  %10298 = call float @dx.op.unary.f32(i32 7, float %10297)  ; Saturate(value)
  %10299 = fmul fast float %10298, %8583
  %10300 = fadd fast float %10299, %8584
  %10301 = fmul fast float %10300, %10293
  br label %10326

; <label>:10302                                   ; preds = %10269
  %10303 = fadd fast float %10031, %10028
  %10304 = fmul fast float %10251, %10303
  %10305 = fadd fast float %10304, %10254
  %10306 = fmul fast float %10278, %10273
  %10307 = fmul fast float %10278, %10276
  %10308 = fmul fast float %10278, %10305
  %10309 = call float @dx.op.binary.f32(i32 35, float %10306, float %10307)  ; FMax(a,b)
  %10310 = call float @dx.op.binary.f32(i32 35, float %10309, float %10308)  ; FMax(a,b)
  %10311 = call float @dx.op.binary.f32(i32 35, float %10310, float %8584)  ; FMax(a,b)
  %10312 = fcmp fast ugt float %10311, 0x3F10000000000000
  br i1 %10312, label %10314, label %10313

; <label>:10313                                   ; preds = %10302
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10314

; <label>:10314                                   ; preds = %10313, %10302
  %10315 = add i32 %54, 356
  %10316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %10315, i32 undef)  ; BufferLoad(srv,index,wot)
  %10317 = extractvalue %dx.types.ResRet.i32 %10316, 0
  %10318 = and i32 %10317, 32
  %10319 = icmp eq i32 %10318, 0
  br i1 %10319, label %10326, label %10320

; <label>:10320                                   ; preds = %10314
  %10321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10322 = extractvalue %dx.types.CBufRet.f32 %10321, 0
  %10323 = fmul fast float %10322, 0x3FE99999A0000000
  %10324 = fadd fast float %10322, %10306
  %10325 = fadd fast float %10323, %10308
  br label %10326

; <label>:10326                                   ; preds = %10320, %10314, %10279
  %10327 = phi float [ %10281, %10279 ], [ %10324, %10320 ], [ %10306, %10314 ]
  %10328 = phi float [ %10301, %10279 ], [ %10307, %10320 ], [ %10307, %10314 ]
  %10329 = phi float [ %10300, %10279 ], [ %10325, %10320 ], [ %10308, %10314 ]
  %10330 = phi float [ %10300, %10279 ], [ %8584, %10320 ], [ %8584, %10314 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10331 = call float @dx.op.binary.f32(i32 36, float %10327, float 3.225500e+04)  ; FMin(a,b)
  %10332 = call float @dx.op.binary.f32(i32 36, float %10328, float 3.225500e+04)  ; FMin(a,b)
  %10333 = call float @dx.op.binary.f32(i32 36, float %10329, float 3.225500e+04)  ; FMin(a,b)
  %10334 = call float @dx.op.binary.f32(i32 36, float %10330, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !91}
!70 = !{!71, !89, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"SH_RED", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!82 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 7, i8 0, !74}
!84 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 8, i8 0, !77}
!85 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 13}
!88 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!91 = !{i32 0, i64 16}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
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
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !99, i64 0}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

